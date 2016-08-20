Framework '4.5.2'

properties {
    $name = "FlyBuysRewards"
    $birthYear = 2016
    $company = "Headspring"
    $configuration = 'Release'
    $src = resolve-path '.\src'
    $projects = @(gci $src -rec -filter *.csproj)

    if ($env:APPVEYOR -eq "True") {
        $version = $env:APPVEYOR_BUILD_VERSION
        $dev_connection_string = $null
        $test_connection_string = $env:CI_TEST_CONNECTION_STRING
    } else {
        $version = '0.0.0.0'
        $dev_connection_string = get-connection-string "$src\FlyBuysRewards.WebUI\Web.config" "DefaultConnection"
        $test_connection_string = get-connection-string "$src\FlyBuysRewards.WebUI\Web.config" "DefaultConnection"
    }
    Write-Host "Building Version $version"

    $roundhouse_dir = "$src\packages\roundhouse.0.8.6\bin"
    $roundhouse_output_dir = "$roundhouse_dir\output"
    $roundhouse_exe_path = "$roundhouse_dir\rh.exe"
    $db_scripts_dir = "$src\Database"
    $roundhouse_version_file = "$src\FlyBuysRewards.Core\bin\$configuration\FlyBuysRewards.Core.dll"
}

task default -depends Compile, RebuildDevDatabase, RebuildTestDatabase, Test
task dev -depends Compile, UpdateDevDatabase, UpdateTestDatabase, Test
task ci -depends Compile, RebuildTestDatabase, Test
task udb -depends UpdateDevDatabase

########
# Help #
########

task help {
    Write-Host ""
    Write-Help-For-Task "(default)" "Builds a clean local copy."
    Write-Help-For-Task "dev" "Optimized for local dev: updates databases instead of rebuilding."
    Write-Help-For-Task "ci" "Continuous Integration build."
    Write-Host ""
    Write-Host "For a complete list of build tasks, view build.ps1."
    Write-Host ""
    exit 0
}

function Write-Help-For-Task($task, $description) {
    Write-Host "build $task" -foregroundcolor Green -nonewline;
    Write-Host " = " -nonewline;
    Write-Host "$description"
}

####################
# Compile and Test #
####################

task Test -depends Compile {
#    $testRunners = @(gci $src\packages -rec -filter Fixie.Console.exe)

#    if ($testRunners.Length -ne 1)
#    {
#        throw "Expected to find 1 Fixie.Console.exe, but found $($testRunners.Length)."
#    }

#    $testRunner = $testRunners[0].FullName

#    foreach ($project in $projects)
#    {
#        $projectName = [System.IO.Path]::GetFileNameWithoutExtension($project)

#        if ($projectName.EndsWith("Tests"))
#        {
#            $testAssembly = "$($project.Directory)\bin\$configuration\$projectName.dll"
#            exec { & $testRunner $testAssembly }
#        }
#    }
}

task Compile -depends ConnectionStrings, AssemblyInfo {
    exec { msbuild /t:clean /v:q /nologo /p:Configuration=$configuration $src\$name.sln }
    exec { msbuild /t:build /v:q /nologo /p:Configuration=$configuration $src\$name.sln }
}

#######################
# Database Management #
#######################

task RebuildDevDatabase {
    deploy-database "Rebuild" $dev_connection_string "DEV"
}

task RebuildTestDatabase {
    deploy-database "Rebuild" $test_connection_string "TEST"
}

task UpdateDevDatabase {
    deploy-database "Update" $dev_connection_string "DEV"
}

task UpdateTestDatabase {
    deploy-database "Update" $test_connection_string "TEST"
}

function deploy-database($action, $connection_string, $env) {
    Write-Host "Executing RoundhousE for environment:" $env

    if ($action -eq "Update") {
        exec { & $roundhouse_exe_path --connectionstring $connection_string `
                                      --commandtimeout 300 `
                                      --env $env `
                                      --output $roundhouse_output_dir `
                                      --sqlfilesdirectory $db_scripts_dir `
                                      --silent }
        }

    if ($action -eq "Rebuild") {
        exec { & $roundhouse_exe_path --connectionstring $connection_string `
                                      --commandtimeout 300 `
                                      --env $env `
                                      --output $roundhouse_output_dir `
                                      --silent `
                                      --drop }

        exec { & $roundhouse_exe_path --connectionstring $connection_string `
                                      --commandtimeout 300 `
                                      --env $env `
                                      --output $roundhouse_output_dir `
                                      --sqlfilesdirectory $db_scripts_dir `
                                      --versionfile $roundhouse_version_file `
                                      --transaction `
                                      --silent `
                                      --simple }
        }
}

#################
# Configuration #
#################

task ConnectionStrings {
    foreach ($project in $projects)
    {
        $projectName = [System.IO.Path]::GetFileNameWithoutExtension($project)

        if ($projectName.EndsWith("Tests"))
        {
            $configFile = "$($project.Directory)\App.config"
            set-connection-string $configFile "FlyBuysRewards" $test_connection_string
        }
    }
}

function try-poke-xml($filePath, $xpath, $value, $namespaces = @{}) {
    [xml] $fileXml = Get-Content $filePath

    if($namespaces -ne $null -and $namespaces.Count -gt 0) {
        $ns = New-Object Xml.XmlNamespaceManager $fileXml.NameTable
        $namespaces.GetEnumerator() | %{ $ns.AddNamespace($_.Key,$_.Value) }
        $node = $fileXml.SelectSingleNode($xpath,$ns)
    } else {
        $node = $fileXml.SelectSingleNode($xpath)
    }

    if ($node -ne $null) {
        if($node.NodeType -eq "Element") {
            if ($node.InnerText -ne $value) {
                Write-Host "Updating $filePath"
                $node.InnerText = $value
                $fileXml.Save($filePath)
            }
        } else {
            if ($node.Value -ne $value) {
                Write-Host "Updating $filePath"
                $node.Value = $value
                $fileXml.Save($filePath)
            }
        }
    }
}

function read-xml($filePath, $xpath, $namespaces = @{}) {
    [xml] $fileXml = Get-Content $filePath

    if($namespaces -ne $null -and $namespaces.Count -gt 0) {
        $ns = New-Object Xml.XmlNamespaceManager $fileXml.NameTable
        $namespaces.GetEnumerator() | %{ $ns.AddNamespace($_.Key,$_.Value) }
        $node = $fileXml.SelectSingleNode($xpath,$ns)
    } else {
        $node = $fileXml.SelectSingleNode($xpath)
    }

    if ($node -ne $null) {
        if($node.NodeType -eq "Element") {
            return $node.InnerText
        } else {
            return $node.Value
        }
    }
}

function get-connection-string($filePath, $connectionStringName) {
    return read-xml $filePath "/configuration/connectionStrings/add[@name = '$connectionStringName']/@connectionString"
}

function set-connection-string($filePath, $connectionStringName, $connectionString) {
    try-poke-xml $filePath "/configuration/connectionStrings/add[@name = '$connectionStringName']/@connectionString" $connectionString
}

##############
# Versioning #
##############

task AssemblyInfo {
    $copyright = get-copyright

    foreach ($project in $projects) {
        $projectName = [System.IO.Path]::GetFileNameWithoutExtension($project)
        $assemblyInfoPath = "$($project.DirectoryName)\Properties\AssemblyInfo.cs"

        if (Test-Path $assemblyInfoPath)
        {
            regenerate-file $assemblyInfoPath @"
using System.Reflection;
using System.Runtime.InteropServices;

[assembly: ComVisible(false)]
[assembly: AssemblyProduct("$name")]
[assembly: AssemblyTitle("$projectName")]
[assembly: AssemblyVersion("$version")]
[assembly: AssemblyFileVersion("$version")]
[assembly: AssemblyCopyright("$copyright")]
[assembly: AssemblyCompany("$company")]
[assembly: AssemblyConfiguration("$configuration")]
"@
        }
    }
}

function get-copyright {
    $date = Get-Date
    $year = $date.Year
    $copyrightSpan = if ($year -eq $birthYear) { $year } else { "$birthYear-$year" }
    return "Copyright © $copyrightSpan $company"
}

function regenerate-file($path, $newContent) {
    $oldContent = [IO.File]::ReadAllText($path)

    if ($newContent -ne $oldContent) {
        $relativePath = Resolve-Path -Relative $path
        write-host "Generating $relativePath"
        [System.IO.File]::WriteAllText($path, $newContent, [System.Text.Encoding]::UTF8)
    }
}