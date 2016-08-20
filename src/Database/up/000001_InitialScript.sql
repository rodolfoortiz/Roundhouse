/****** Object:  Table [dbo].[Address]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address1] [nvarchar](max) NOT NULL,
	[Address2] [nvarchar](max) NULL,
	[City] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[Landmark] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[Region] [nvarchar](max) NULL,
	[State] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AhtSubmission]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AhtSubmission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Avcard] [nvarchar](max) NULL,
	[CustomerName] [nvarchar](max) NULL,
	[CustomerSite] [nvarchar](max) NULL,
	[FboId] [nvarchar](max) NULL,
	[FboName] [nvarchar](max) NULL,
	[FuelItem] [nvarchar](max) NULL,
	[FuelTicketNumber] [nvarchar](max) NULL,
	[Iata] [nvarchar](max) NULL,
	[Icao] [nvarchar](max) NULL,
	[InvoiceType] [nvarchar](max) NULL,
	[ItemCode] [nvarchar](max) NULL,
	[ItemDescription] [nvarchar](max) NULL,
	[MerchantType] [nvarchar](max) NULL,
	[Networkidentifier] [nvarchar](max) NULL,
	[Source] [nvarchar](max) NULL,
	[TailNumber] [nvarchar](max) NULL,
	[TransactionNumber] [nvarchar](max) NULL,
	[TransactionQuantity] [nvarchar](max) NULL,
	[UpliftTransactionDate] [nvarchar](max) NULL,
	[WfsAccountNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_AhtSubmission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Announcement]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnnouncementCategoryId] [int] NOT NULL,
	[Body] [nvarchar](max) NULL,
	[Category] [nvarchar](max) NULL,
	[CompanyId] [int] NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[Header] [nvarchar](max) NULL,
	[ImageName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Announcement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnnouncementCategory]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnnouncementCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_AnnouncementCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BankAccount]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [nvarchar](max) NULL,
	[BankName] [nvarchar](max) NULL,
	[RoutingNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_BankAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AddressId] [int] NULL,
	[BankAccountId] [int] NULL,
	[CompanyTagline] [nvarchar](max) NULL,
	[CreditCardId] [int] NULL,
	[FboId] [nvarchar](max) NULL,
	[FeaturedImage] [nvarchar](max) NULL,
	[IataCode] [nvarchar](max) NULL,
	[IcaoCode] [nvarchar](max) NULL,
	[IsFboMerchant] [bit] NOT NULL,
	[IsFeaturedLocation] [bit] NOT NULL,
	[LogoImage] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[PointConfirmationMessage] [nvarchar](max) NULL,
	[PointCost] [float] NOT NULL,
	[PointOfSaleId] [int] NULL,
	[WebsiteUrl] [nvarchar](max) NULL,
	[WfsAccountId] [int] NULL,
	[IsCreditCardPrimary] [bit] NOT NULL,
	[NetworkIdentifierId] [int] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CorpAllocation]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorpAllocation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NULL,
	[PercentAllocated] [int] NOT NULL,
	[WfsAccountId] [int] NULL,
 CONSTRAINT [PK_CorpAllocation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCard]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Token] [nvarchar](max) NULL,
 CONSTRAINT [PK_CreditCard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCardExpirationMonth]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCardExpirationMonth](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_CreditCardExpirationMonth] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCardExpirationYear]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCardExpirationYear](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_CreditCardExpirationYear] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCardType]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCardType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_CreditCardType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELMAH_Error](
	[ErrorId] [uniqueidentifier] NOT NULL,
	[AllXml] [nvarchar](max) NULL,
	[Application] [nvarchar](max) NULL,
	[Host] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Sequence] [int] NOT NULL,
	[Source] [nvarchar](max) NULL,
	[StatusCode] [int] NOT NULL,
	[TimeUtc] [datetime2](7) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[User] [nvarchar](max) NULL,
 CONSTRAINT [PK_ELMAH_Error] PRIMARY KEY CLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FBOInfo]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FBOInfo](
	[FBOID] [int] NULL,
	[Status] [varchar](32) NULL,
	[FBOType] [varchar](32) NULL,
	[DynamicsNumber] [varchar](16) NULL,
	[MerchantNumber] [int] NULL,
	[IATA] [varchar](64) NULL,
	[POSMethod] [varchar](16) NULL,
	[FeaturedFBOFlag] [bit] NULL,
	[LogoApproved] [bit] NULL,
	[TestFBOFlag] [bit] NULL,
	[CompanyName] [varchar](64) NULL,
	[ManagerName] [varchar](128) NULL,
	[Username] [varchar](64) NULL,
	[Password] [varchar](64) NULL,
	[Address1] [varchar](128) NULL,
	[Address2] [varchar](128) NULL,
	[City] [varchar](64) NULL,
	[State] [varchar](32) NULL,
	[Postal] [varchar](32) NULL,
	[Country] [varchar](64) NULL,
	[PhoneNumber] [varchar](32) NULL,
	[FaxNumber] [varchar](32) NULL,
	[EmailAddress] [varchar](128) NULL,
	[WebsiteURL] [varchar](128) NULL,
	[LogoFileName] [varchar](64) NULL,
	[FBOQuote] [varchar](128) NULL,
	[AutoResponseText] [varchar](1024) NULL,
	[MembershipPaymentType] [varchar](32) NULL,
	[BankName] [varchar](32) NULL,
	[AccountNumber] [varchar](32) NULL,
	[RoutingNumber] [varchar](32) NULL,
	[ExpirationDate] [varchar](32) NULL,
	[KitSentDate] [datetime] NULL,
	[DateAdded] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[AddedBy] [varchar](32) NULL,
	[ModifiedBy] [varchar](32) NULL,
	[ICAO] [varchar](64) NULL,
	[WFSFBONumber] [varchar](64) NULL,
	[Concat] [varchar](64) NULL,
	[PowerPointBalance] [int] NULL,
	[StartingBalance] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FboMerchant]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FboMerchant](
	[Id] [int] IDENTITY(202325738,1) NOT NULL,
	[PowerPointBalance] [int] NOT NULL,
	[PromotionMatchingAmount] [int] NOT NULL,
	[PromotionMatchingEnabled] [bit] NOT NULL,
	[TransactionMatchingAmount] [int] NOT NULL,
	[TransactionMatchingEnabled] [bit] NOT NULL,
	[WfsFboId] [nvarchar](max) NULL,
 CONSTRAINT [PK_FboMerchant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FboMerchantStatement]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FboMerchantStatement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FboMerchantId] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_FboMerchantStatement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FBOTransactions]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FBOTransactions](
	[FBOTransactionID] [int] IDENTITY(1,1) NOT NULL,
	[MerchantNumber] [varchar](32) NOT NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsProcessed] [bit] NOT NULL,
	[FBOID] [int] NOT NULL,
 CONSTRAINT [PK_FBOTransactions] PRIMARY KEY CLUSTERED 
(
	[FBOTransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MarketingSupportItemSubmitted]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketingSupportItemSubmitted](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MarketingSupportProductsId] [int] NOT NULL,
 CONSTRAINT [PK_MarketingSupportItemSubmitted] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MarketingSupportOrdersSubmitted]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketingSupportOrdersSubmitted](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FboMerchantId] [int] NOT NULL,
	[MarketingSupportOrderStatuId] [int] NULL,
	[MarketingSupportOrderStatus] [int] NOT NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_MarketingSupportOrdersSubmitted] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MarketingSupportOrderStatus]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketingSupportOrderStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_MarketingSupportOrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MarketingSupportProduct]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketingSupportProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageName] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_MarketingSupportProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Member]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Id] [int] IDENTITY(236000000,1) NOT NULL,
	[GRSPIN] [nvarchar](max) NULL,
	[JobTitle] [nvarchar](max) NULL,
	[MemberTypeId] [int] NULL,
	[PointsConfirmationEmail] [bit] NOT NULL,
	[SignUpFboMerchantNewsletter] [bit] NOT NULL,
	[SignUpFlybuysNewsletter] [bit] NOT NULL,
	[TailNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberInfo]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberInfo](
	[MemberInfoId] [int] IDENTITY(1,1) NOT NULL,
	[AddedBy] [nvarchar](max) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[Allocation] [int] NULL,
	[City] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[CustomerNumber] [int] NOT NULL,
	[DateADded] [datetime2](7) NULL,
	[DateModified] [datetime2](7) NULL,
	[DoNotSend] [bit] NOT NULL,
	[EmailAddress] [nvarchar](max) NULL,
	[EmailPts] [bit] NOT NULL,
	[EndingBalance] [int] NOT NULL,
	[FBONumber] [nvarchar](max) NULL,
	[FBOPromos] [bit] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[IsCorporateAccount] [bit] NULL,
	[KitSentDate] [datetime2](7) NULL,
	[LastName] [nvarchar](max) NULL,
	[LifetimePointsEarned] [int] NOT NULL,
	[LifetimePointsRedeemed] [int] NOT NULL,
	[MemberType] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[OptIn] [bit] NOT NULL,
	[ParticipantID] [int] NOT NULL,
	[Password] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Postal] [nvarchar](max) NULL,
	[PrimaryAccountOwner] [bit] NULL,
	[State] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[WFSID] [int] NULL,
 CONSTRAINT [PK_MemberInfo] PRIMARY KEY CLUSTERED 
(
	[MemberInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberOrder]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[MemberId] [int] NULL,
	[OrderNumber] [nvarchar](max) NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_MemberOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberStatement]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberStatement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
 CONSTRAINT [PK_MemberStatement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberTransactions]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberTransactions](
	[MemberTransactionID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[IsProcessed] [bit] NOT NULL,
	[CustomerNumber] [varchar](32) NOT NULL,
 CONSTRAINT [PK_MemberTransactions] PRIMARY KEY CLUSTERED 
(
	[MemberTransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberType]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_MemberType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetworkIdentifier]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetworkIdentifier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_NetworkIdentifier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PointOfSale]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointOfSale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_PointOfSale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AvCardMultiplier] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[ContractFuelMultiplier] [int] NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
	[Information] [nvarchar](max) NULL,
	[ModifyDate] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PromotionLocationTypeId] [int] NOT NULL,
	[PromotionStatusId] [int] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[TripPlanningMultiplier] [int] NOT NULL,
	[UserLastUpdatedId] [int] NOT NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PromotionLocationType]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionLocationType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_PromotionLocationType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PromotionStatus]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_PromotionStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ranking]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ranking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PointMultiplier] [nvarchar](max) NULL,
 CONSTRAINT [PK_Ranking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_ApplicationRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleClaim]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_IdentityRoleClaim<int>] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AhtSubmissionId] [int] NULL,
	[Amount] [int] NOT NULL,
	[Avcard] [nvarchar](max) NULL,
	[Balance] [int] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[CompanyId] [int] NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[EarnedTotal] [int] NOT NULL,
	[FboId] [nvarchar](max) NULL,
	[FboMerchantFromId] [int] NULL,
	[FboMerchantToId] [int] NULL,
	[FboName] [nvarchar](max) NULL,
	[Iata] [nvarchar](max) NULL,
	[Icao] [nvarchar](max) NULL,
	[IssuedTotal] [int] NOT NULL,
	[MemberFromId] [int] NULL,
	[MemberToId] [int] NULL,
	[PromotionLocationTypeId] [int] NULL,
	[PurchasedTotal] [int] NOT NULL,
	[RedeemedTotal] [int] NOT NULL,
	[TailNumber] [nvarchar](max) NULL,
	[TransactionCodeId] [int] NULL,
	[WfsNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransactionCode]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionCode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_TransactionCode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransactionPointDetail]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionPointDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NOT NULL,
	[CodeId] [int] NULL,
	[TransactionId] [int] NULL,
 CONSTRAINT [PK_TransactionPointDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransactionPointDetailQueue]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionPointDetailQueue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NOT NULL,
	[CodeId] [int] NULL,
	[TransactionQueueId] [int] NULL,
 CONSTRAINT [PK_TransactionPointDetailQueue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransactionPromtionDetail]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionPromtionDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NOT NULL,
	[CodeId] [int] NULL,
	[PromotionId] [int] NULL,
	[TransactionId] [int] NULL,
 CONSTRAINT [PK_TransactionPromtionDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransactionPromtionDetailQueue]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionPromtionDetailQueue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NOT NULL,
	[CodeId] [int] NULL,
	[PromotionId] [int] NULL,
	[TransactionQueueId] [int] NULL,
 CONSTRAINT [PK_TransactionPromtionDetailQueue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransactionQueue]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionQueue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AhtSubmissionId] [int] NULL,
	[Amount] [int] NOT NULL,
	[Avcard] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[CompanyId] [int] NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateProcessed] [datetime2](7) NULL,
	[FboId] [nvarchar](max) NULL,
	[FboMerchantFromId] [int] NULL,
	[FboMerchantToId] [int] NULL,
	[FboName] [nvarchar](max) NULL,
	[Iata] [nvarchar](max) NULL,
	[Icao] [nvarchar](max) NULL,
	[MemberFromId] [int] NULL,
	[MemberToId] [int] NULL,
	[PromotionLocationTypeId] [int] NULL,
	[TailNumber] [nvarchar](max) NULL,
	[TransactionCodeId] [int] NULL,
	[WfsNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_TransactionQueue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransactionSummary]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionSummary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Balance] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[Earned] [int] NOT NULL,
	[IsFboMerchant] [bit] NOT NULL,
	[Issued] [int] NOT NULL,
	[Purchased] [int] NOT NULL,
	[Redeemed] [int] NOT NULL,
	[UserId] [int] NULL,
	[WfsAccountId] [int] NULL,
 CONSTRAINT [PK_TransactionSummary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[AddressId] [int] NULL,
	[CompanyId] [int] NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[FboMerchantId] [int] NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[MemberId] [int] NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_ApplicationUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserClaim]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_IdentityUserClaim<int>] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_IdentityUserLogin<int>] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_IdentityUserRole<int>] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WfsAccount]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WfsAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [int] NOT NULL,
	[AvcardMsAeroCard] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[IsCustomSplitAllocation] [bit] NOT NULL,
	[TailNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_WfsAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WfsPromotion]    Script Date: 5/19/2016 9:42:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WfsPromotion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
	[Information] [nvarchar](max) NULL,
	[ModifyDate] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PromotionLocationTypeId] [int] NOT NULL,
	[PointMultiplier] [int] NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[PromotionStatusId] [int] NOT NULL,
	[UserLastUpdatedId] [int] NOT NULL,
	[IsEnrollmentPromo] [bit] NOT NULL,
	[PromoCode] [nvarchar](max) NULL,
	[EnrollmentBonus] [int] NULL,
 CONSTRAINT [PK_WfsPromotion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [Address1], [Address2], [City], [Country], [Landmark], [PostalCode], [Region], [State]) VALUES (1, N'123 Test St', N'#130', N'Houston', N'US', NULL, N'77004', NULL, N'TX')
INSERT [dbo].[Address] ([Id], [Address1], [Address2], [City], [Country], [Landmark], [PostalCode], [Region], [State]) VALUES (2, N'123 Test St', N'#130', N'Houston', N'US', NULL, N'77004', NULL, N'TX')
INSERT [dbo].[Address] ([Id], [Address1], [Address2], [City], [Country], [Landmark], [PostalCode], [Region], [State]) VALUES (3, N'123 Test St', N'#130', N'Houston', N'US', NULL, N'77004', NULL, N'TX')
INSERT [dbo].[Address] ([Id], [Address1], [Address2], [City], [Country], [Landmark], [PostalCode], [Region], [State]) VALUES (4, N'123 Test St', N'#130', N'Houston', N'US', NULL, N'77004', NULL, N'TX')
INSERT [dbo].[Address] ([Id], [Address1], [Address2], [City], [Country], [Landmark], [PostalCode], [Region], [State]) VALUES (5, N'123 Test St', N'#130', N'Houston', N'US', NULL, N'77004', NULL, N'TX')
INSERT [dbo].[Address] ([Id], [Address1], [Address2], [City], [Country], [Landmark], [PostalCode], [Region], [State]) VALUES (6, N'123 Test St', N'#130', N'Houston', N'US', NULL, N'77004', NULL, N'TX')
INSERT [dbo].[Address] ([Id], [Address1], [Address2], [City], [Country], [Landmark], [PostalCode], [Region], [State]) VALUES (7, N'123 Test St', N'#130', N'Houston', N'US', NULL, N'77004', NULL, N'TX')
SET IDENTITY_INSERT [dbo].[Address] OFF
SET IDENTITY_INSERT [dbo].[AnnouncementCategory] ON 

INSERT [dbo].[AnnouncementCategory] ([Id], [DisplayOrder], [Name]) VALUES (1, 1, N'World Fuel Services')
INSERT [dbo].[AnnouncementCategory] ([Id], [DisplayOrder], [Name]) VALUES (2, 2, N'Company')
INSERT [dbo].[AnnouncementCategory] ([Id], [DisplayOrder], [Name]) VALUES (3, 3, N'General')
SET IDENTITY_INSERT [dbo].[AnnouncementCategory] OFF
SET IDENTITY_INSERT [dbo].[BankAccount] ON 

INSERT [dbo].[BankAccount] ([Id], [AccountNumber], [BankName], [RoutingNumber]) VALUES (1, NULL, NULL, NULL)
INSERT [dbo].[BankAccount] ([Id], [AccountNumber], [BankName], [RoutingNumber]) VALUES (2, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[BankAccount] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([Id], [AddressId], [BankAccountId], [CompanyTagline], [CreditCardId], [FboId], [FeaturedImage], [IataCode], [IcaoCode], [IsFboMerchant], [IsFeaturedLocation], [LogoImage], [Name], [PhoneNumber], [PointConfirmationMessage], [PointCost], [PointOfSaleId], [WebsiteUrl], [WfsAccountId], [IsCreditCardPrimary], [NetworkIdentifierId]) VALUES (1, 1, 1, NULL, 1, NULL, NULL, N'TTTT', N'UUUU', 1, 0, NULL, N'Unified Resources', N'(999) 999-9999', NULL, 0.02, 1, NULL, NULL, 1, NULL)
INSERT [dbo].[Company] ([Id], [AddressId], [BankAccountId], [CompanyTagline], [CreditCardId], [FboId], [FeaturedImage], [IataCode], [IcaoCode], [IsFboMerchant], [IsFeaturedLocation], [LogoImage], [Name], [PhoneNumber], [PointConfirmationMessage], [PointCost], [PointOfSaleId], [WebsiteUrl], [WfsAccountId], [IsCreditCardPrimary], [NetworkIdentifierId]) VALUES (2, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, N'Unified Resources 2', N'(999) 999-9999', NULL, 0.02, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Company] ([Id], [AddressId], [BankAccountId], [CompanyTagline], [CreditCardId], [FboId], [FeaturedImage], [IataCode], [IcaoCode], [IsFboMerchant], [IsFeaturedLocation], [LogoImage], [Name], [PhoneNumber], [PointConfirmationMessage], [PointCost], [PointOfSaleId], [WebsiteUrl], [WfsAccountId], [IsCreditCardPrimary], [NetworkIdentifierId]) VALUES (3, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, N'Unified Resources 3', N'(999) 999-9999', NULL, 0, NULL, NULL, 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[CorpAllocation] ON 

INSERT [dbo].[CorpAllocation] ([Id], [MemberId], [PercentAllocated], [WfsAccountId]) VALUES (1, 236000000, 0, NULL)
INSERT [dbo].[CorpAllocation] ([Id], [MemberId], [PercentAllocated], [WfsAccountId]) VALUES (2, 236000001, 0, NULL)
INSERT [dbo].[CorpAllocation] ([Id], [MemberId], [PercentAllocated], [WfsAccountId]) VALUES (3, 236000002, 100, 1)
INSERT [dbo].[CorpAllocation] ([Id], [MemberId], [PercentAllocated], [WfsAccountId]) VALUES (4, NULL, 0, 1)
INSERT [dbo].[CorpAllocation] ([Id], [MemberId], [PercentAllocated], [WfsAccountId]) VALUES (5, 236000003, 0, NULL)
SET IDENTITY_INSERT [dbo].[CorpAllocation] OFF
SET IDENTITY_INSERT [dbo].[CreditCard] ON 

INSERT [dbo].[CreditCard] ([Id], [Token]) VALUES (1, N'26735740442212974998')
SET IDENTITY_INSERT [dbo].[CreditCard] OFF
SET IDENTITY_INSERT [dbo].[CreditCardExpirationMonth] ON 

INSERT [dbo].[CreditCardExpirationMonth] ([Id], [DisplayOrder], [Name]) VALUES (1, 8, N'August')
INSERT [dbo].[CreditCardExpirationMonth] ([Id], [DisplayOrder], [Name]) VALUES (2, 3, N'March')
INSERT [dbo].[CreditCardExpirationMonth] ([Id], [DisplayOrder], [Name]) VALUES (3, 4, N'April')
INSERT [dbo].[CreditCardExpirationMonth] ([Id], [DisplayOrder], [Name]) VALUES (4, 5, N'May')
INSERT [dbo].[CreditCardExpirationMonth] ([Id], [DisplayOrder], [Name]) VALUES (5, 6, N'June')
INSERT [dbo].[CreditCardExpirationMonth] ([Id], [DisplayOrder], [Name]) VALUES (6, 7, N'July')
INSERT [dbo].[CreditCardExpirationMonth] ([Id], [DisplayOrder], [Name]) VALUES (7, 9, N'September')
INSERT [dbo].[CreditCardExpirationMonth] ([Id], [DisplayOrder], [Name]) VALUES (8, 2, N'February')
INSERT [dbo].[CreditCardExpirationMonth] ([Id], [DisplayOrder], [Name]) VALUES (9, 10, N'October')
INSERT [dbo].[CreditCardExpirationMonth] ([Id], [DisplayOrder], [Name]) VALUES (10, 11, N'November')
INSERT [dbo].[CreditCardExpirationMonth] ([Id], [DisplayOrder], [Name]) VALUES (11, 12, N'December')
INSERT [dbo].[CreditCardExpirationMonth] ([Id], [DisplayOrder], [Name]) VALUES (12, 1, N'January')
SET IDENTITY_INSERT [dbo].[CreditCardExpirationMonth] OFF
SET IDENTITY_INSERT [dbo].[CreditCardExpirationYear] ON 

INSERT [dbo].[CreditCardExpirationYear] ([Id], [DisplayOrder], [Name]) VALUES (1, 1, N'2016')
INSERT [dbo].[CreditCardExpirationYear] ([Id], [DisplayOrder], [Name]) VALUES (2, 4, N'2019')
INSERT [dbo].[CreditCardExpirationYear] ([Id], [DisplayOrder], [Name]) VALUES (3, 3, N'2018')
INSERT [dbo].[CreditCardExpirationYear] ([Id], [DisplayOrder], [Name]) VALUES (4, 5, N'2020')
INSERT [dbo].[CreditCardExpirationYear] ([Id], [DisplayOrder], [Name]) VALUES (5, 6, N'2021')
INSERT [dbo].[CreditCardExpirationYear] ([Id], [DisplayOrder], [Name]) VALUES (6, 7, N'2022')
INSERT [dbo].[CreditCardExpirationYear] ([Id], [DisplayOrder], [Name]) VALUES (7, 8, N'2023')
INSERT [dbo].[CreditCardExpirationYear] ([Id], [DisplayOrder], [Name]) VALUES (8, 9, N'2024')
INSERT [dbo].[CreditCardExpirationYear] ([Id], [DisplayOrder], [Name]) VALUES (9, 10, N'2025')
INSERT [dbo].[CreditCardExpirationYear] ([Id], [DisplayOrder], [Name]) VALUES (10, 11, N'2026')
INSERT [dbo].[CreditCardExpirationYear] ([Id], [DisplayOrder], [Name]) VALUES (11, 2, N'2017')
SET IDENTITY_INSERT [dbo].[CreditCardExpirationYear] OFF
SET IDENTITY_INSERT [dbo].[CreditCardType] ON 

INSERT [dbo].[CreditCardType] ([Id], [Code], [DisplayOrder], [Name]) VALUES (1, 10, 4, N'Visa')
INSERT [dbo].[CreditCardType] ([Id], [Code], [DisplayOrder], [Name]) VALUES (2, 20, 3, N'Master Card')
INSERT [dbo].[CreditCardType] ([Id], [Code], [DisplayOrder], [Name]) VALUES (3, 50, 2, N'AVCARD')
INSERT [dbo].[CreditCardType] ([Id], [Code], [DisplayOrder], [Name]) VALUES (4, 40, 1, N'American Express')
INSERT [dbo].[CreditCardType] ([Id], [Code], [DisplayOrder], [Name]) VALUES (5, 30, 5, N'Discover')
SET IDENTITY_INSERT [dbo].[CreditCardType] OFF
SET IDENTITY_INSERT [dbo].[FboMerchant] ON 

INSERT [dbo].[FboMerchant] ([Id], [PowerPointBalance], [PromotionMatchingAmount], [PromotionMatchingEnabled], [TransactionMatchingAmount], [TransactionMatchingEnabled], [WfsFboId]) VALUES (202325738, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[FboMerchant] ([Id], [PowerPointBalance], [PromotionMatchingAmount], [PromotionMatchingEnabled], [TransactionMatchingAmount], [TransactionMatchingEnabled], [WfsFboId]) VALUES (202325739, 0, 0, 0, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[FboMerchant] OFF
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([Id], [GRSPIN], [JobTitle], [MemberTypeId], [PointsConfirmationEmail], [SignUpFboMerchantNewsletter], [SignUpFlybuysNewsletter], [TailNumber]) VALUES (236000000, NULL, NULL, 1, 0, 0, 0, NULL)
INSERT [dbo].[Member] ([Id], [GRSPIN], [JobTitle], [MemberTypeId], [PointsConfirmationEmail], [SignUpFboMerchantNewsletter], [SignUpFlybuysNewsletter], [TailNumber]) VALUES (236000001, NULL, NULL, 1, 0, 0, 0, NULL)
INSERT [dbo].[Member] ([Id], [GRSPIN], [JobTitle], [MemberTypeId], [PointsConfirmationEmail], [SignUpFboMerchantNewsletter], [SignUpFlybuysNewsletter], [TailNumber]) VALUES (236000002, NULL, N'Web Developer', 2, 0, 0, 0, NULL)
INSERT [dbo].[Member] ([Id], [GRSPIN], [JobTitle], [MemberTypeId], [PointsConfirmationEmail], [SignUpFboMerchantNewsletter], [SignUpFlybuysNewsletter], [TailNumber]) VALUES (236000003, NULL, NULL, 1, 0, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[Member] OFF
SET IDENTITY_INSERT [dbo].[MemberType] ON 

INSERT [dbo].[MemberType] ([Id], [DisplayOrder], [Name]) VALUES (1, 1, N'Individual')
INSERT [dbo].[MemberType] ([Id], [DisplayOrder], [Name]) VALUES (2, 2, N'Corporate')
SET IDENTITY_INSERT [dbo].[MemberType] OFF
SET IDENTITY_INSERT [dbo].[PointOfSale] ON 

INSERT [dbo].[PointOfSale] ([Id], [DisplayOrder], [Name]) VALUES (1, 6, N'Unknown/Other')
INSERT [dbo].[PointOfSale] ([Id], [DisplayOrder], [Name]) VALUES (2, 5, N'Other POS method ')
INSERT [dbo].[PointOfSale] ([Id], [DisplayOrder], [Name]) VALUES (3, 4, N'Other web-based method')
INSERT [dbo].[PointOfSale] ([Id], [DisplayOrder], [Name]) VALUES (4, 3, N'FBO Manager')
INSERT [dbo].[PointOfSale] ([Id], [DisplayOrder], [Name]) VALUES (5, 2, N'Total FBO')
INSERT [dbo].[PointOfSale] ([Id], [DisplayOrder], [Name]) VALUES (6, 1, N'AvPOS')
SET IDENTITY_INSERT [dbo].[PointOfSale] OFF
SET IDENTITY_INSERT [dbo].[PromotionLocationType] ON 

INSERT [dbo].[PromotionLocationType] ([Id], [DisplayOrder], [Name]) VALUES (1, 1, N'All')
INSERT [dbo].[PromotionLocationType] ([Id], [DisplayOrder], [Name]) VALUES (2, 2, N'Air Elite Network')
INSERT [dbo].[PromotionLocationType] ([Id], [DisplayOrder], [Name]) VALUES (3, 3, N'WFS Network')
INSERT [dbo].[PromotionLocationType] ([Id], [DisplayOrder], [Name]) VALUES (4, 4, N'Out of Network')
SET IDENTITY_INSERT [dbo].[PromotionLocationType] OFF
SET IDENTITY_INSERT [dbo].[PromotionStatus] ON 

INSERT [dbo].[PromotionStatus] ([Id], [DisplayOrder], [Name]) VALUES (1, 1, N'Active')
INSERT [dbo].[PromotionStatus] ([Id], [DisplayOrder], [Name]) VALUES (2, 2, N'Inactive')
INSERT [dbo].[PromotionStatus] ([Id], [DisplayOrder], [Name]) VALUES (3, 3, N'Remove')
SET IDENTITY_INSERT [dbo].[PromotionStatus] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (1, N'17b27d52-81ed-4db9-89b6-3eccbb0be1ae', N'MemberAdmin', N'MEMBERADMIN')
INSERT [dbo].[Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (2, N'e6512ebd-f654-4cb6-b809-9bc12b772b33', N'MemberUser', N'MEMBERUSER')
INSERT [dbo].[Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (3, N'46ac0b18-8249-4cfc-b361-6e359b88898a', N'FboMerchantAdmin', N'FBOMERCHANTADMIN')
INSERT [dbo].[Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (4, N'd30cb7e0-fef0-4120-b7cc-f73df4eb67c9', N'FboMerchantUser', N'FBOMERCHANTUSER')
INSERT [dbo].[Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (5, N'0bb835ba-2366-4e57-b392-2d89025fa05b', N'WfsAdmin', N'WFSADMIN')
INSERT [dbo].[Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (6, N'4012ebd3-1c62-4a70-bd47-1627c57e2328', N'WfsUser', N'WFSUSER')
INSERT [dbo].[Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (7, N'1c6c8037-953e-429c-9c4d-7666e9ee135b', N'UriAdmin', N'URIADMIN')
INSERT [dbo].[Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (8, N'42aff68a-c69c-454a-b779-f0eb6c52465c', N'UriUser', N'URIUSER')
INSERT [dbo].[Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (9, N'258ebc72-026c-4b24-a721-a955cc1992e1', N'CanPurchasePoints', N'CANPURCHASEPOINTS')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[TransactionCode] ON 

INSERT [dbo].[TransactionCode] ([Id], [Code], [DisplayOrder], [Name]) VALUES (1, N'RE', 1, N'Redeemed')
INSERT [dbo].[TransactionCode] ([Id], [Code], [DisplayOrder], [Name]) VALUES (2, N'EA', 2, N'Earned')
INSERT [dbo].[TransactionCode] ([Id], [Code], [DisplayOrder], [Name]) VALUES (3, N'PU', 3, N'Purchased')
INSERT [dbo].[TransactionCode] ([Id], [Code], [DisplayOrder], [Name]) VALUES (4, N'IS', 4, N'Issued')
INSERT [dbo].[TransactionCode] ([Id], [Code], [DisplayOrder], [Name]) VALUES (5, N'DE', 5, N'Deducted')
INSERT [dbo].[TransactionCode] ([Id], [Code], [DisplayOrder], [Name]) VALUES (6, N'WD', 6, N'WfsDistributed')
INSERT [dbo].[TransactionCode] ([Id], [Code], [DisplayOrder], [Name]) VALUES (7, N'UD', 7, N'UriDistributed')
INSERT [dbo].[TransactionCode] ([Id], [Code], [DisplayOrder], [Name]) VALUES (8, N'FD', 8, N'FboDistributed')
SET IDENTITY_INSERT [dbo].[TransactionCode] OFF
SET IDENTITY_INSERT [dbo].[TransactionSummary] ON 

INSERT [dbo].[TransactionSummary] ([Id], [Balance], [DateCreated], [Earned], [IsFboMerchant], [Issued], [Purchased], [Redeemed], [UserId], [WfsAccountId]) VALUES (1, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, 0, 0, 0, 0, 1, NULL)
INSERT [dbo].[TransactionSummary] ([Id], [Balance], [DateCreated], [Earned], [IsFboMerchant], [Issued], [Purchased], [Redeemed], [UserId], [WfsAccountId]) VALUES (2, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, 0, 0, 0, 0, 2, NULL)
INSERT [dbo].[TransactionSummary] ([Id], [Balance], [DateCreated], [Earned], [IsFboMerchant], [Issued], [Purchased], [Redeemed], [UserId], [WfsAccountId]) VALUES (3, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, 0, 0, 0, 0, 3, 1)
INSERT [dbo].[TransactionSummary] ([Id], [Balance], [DateCreated], [Earned], [IsFboMerchant], [Issued], [Purchased], [Redeemed], [UserId], [WfsAccountId]) VALUES (4, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, 0, 0, 0, 0, 4, NULL)
SET IDENTITY_INSERT [dbo].[TransactionSummary] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [AccessFailedCount], [AddressId], [CompanyId], [ConcurrencyStamp], [Email], [EmailConfirmed], [FboMerchantId], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [MemberId], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (1, 0, 2, 1, N'18559af3-56af-4083-a2eb-c03fc9d00c7a', N'gcastro@uritechnology.com', 0, 202325738, N'Genaro', N'Castro', 1, NULL, 236000000, N'GCASTRO@URITECHNOLOGY.COM', N'FBOADMIN', N'AQAAAAEAACcQAAAAEOgu8yTlTGc+wTht3HRfrkb17wGSguXBAomGbE50IxcpNmT2OS4+ZHKwLMaNt24a0A==', N'(999) 999-9999', 0, N'51431856-9d15-49f8-ab01-bb24e0134e15', 0, N'fboadmin')
INSERT [dbo].[User] ([Id], [AccessFailedCount], [AddressId], [CompanyId], [ConcurrencyStamp], [Email], [EmailConfirmed], [FboMerchantId], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [MemberId], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (2, 0, 4, 2, N'8dfe414b-1c96-4442-9dbf-9a4ae69d2223', N'genaro_castro@live.com', 0, 202325739, N'Genaro', N'Castro', 1, NULL, 236000001, N'GENARO_CASTRO@LIVE.COM', N'FBOADMIN2', N'AQAAAAEAACcQAAAAEGtLizHRGnPpViMTnttWBWdRjMzf79Cmwpi8nxQ0Hb1DrG1t4gfSECdkx2PQM94OeA==', N'(999) 999-9999', 0, N'eaed4cd2-476c-4a28-a3a5-4c5074121985', 0, N'fboadmin2')
INSERT [dbo].[User] ([Id], [AccessFailedCount], [AddressId], [CompanyId], [ConcurrencyStamp], [Email], [EmailConfirmed], [FboMerchantId], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [MemberId], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (3, 0, 5, 3, N'd9ee34e5-bb65-4bf4-9f6d-5f6d5102eb19', N'gcastro123@test.com', 0, NULL, N'Genaro', N'Castro', 1, NULL, 236000002, N'GCASTRO123@TEST.COM', N'GCASTRO123', N'AQAAAAEAACcQAAAAED0jARDKMgC+sML8mjsYekVBB4clSwve2ksgKB/TTnmalpZtxuqansXc42USu+CyVQ==', N'(999) 999-9999', 0, N'2dcd436d-290a-4cfa-af1d-ddf3e3267f51', 0, N'gcastro123')
INSERT [dbo].[User] ([Id], [AccessFailedCount], [AddressId], [CompanyId], [ConcurrencyStamp], [Email], [EmailConfirmed], [FboMerchantId], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [MemberId], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (4, 0, 7, 1, N'4cacb3d4-afd9-4858-b7b6-438e8592f9c6', N'gcastro@uritechnology.com', 0, 202325738, N'Genaro', N'Castro', 1, NULL, 236000003, N'GCASTRO@URITECHNOLOGY.COM', N'GCASTRO1212', N'AQAAAAEAACcQAAAAEC5jY8f4YASQ4GNCHq9+YNUa3MzRq0/mG7Zr7LL0y6nuOlYJcgBD0eZ2G428EGlYyg==', N'(999) 999-9999', 0, N'619bcca4-98b3-49ca-9421-4f9ed6d48c95', 0, N'gcastro1212')
SET IDENTITY_INSERT [dbo].[User] OFF
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (1, 2)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (1, 3)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (1, 4)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (1, 5)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (1, 9)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (2, 2)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (2, 3)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (2, 4)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (2, 9)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (3, 1)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (3, 2)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (4, 2)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (4, 4)
SET IDENTITY_INSERT [dbo].[WfsAccount] ON 

INSERT [dbo].[WfsAccount] ([Id], [AccountNumber], [AvcardMsAeroCard], [Comment], [IsCustomSplitAllocation], [TailNumber]) VALUES (1, 12345, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[WfsAccount] OFF
SET IDENTITY_INSERT [dbo].[WfsPromotion] ON 

INSERT [dbo].[WfsPromotion] ([Id], [CreateDate], [EndDate], [ImagePath], [Information], [ModifyDate], [Name], [PromotionLocationTypeId], [PointMultiplier], [StartDate], [PromotionStatusId], [UserLastUpdatedId], [IsEnrollmentPromo], [PromoCode], [EnrollmentBonus]) VALUES (1, CAST(N'2016-04-25 21:40:23.2365514' AS DateTime2), CAST(N'2016-05-02 00:00:00.0000000' AS DateTime2), N'a1af1e9d-3369-4b07-840e-fd00310440d9.jpg', N'&lt;p&gt;TEST&lt;/p&gt;', CAST(N'2016-04-25 21:40:23.2365514' AS DateTime2), N'TEST', 1, NULL, CAST(N'2016-04-25 00:00:00.0000000' AS DateTime2), 1, 0, 1, N'TEST', 123)
INSERT [dbo].[WfsPromotion] ([Id], [CreateDate], [EndDate], [ImagePath], [Information], [ModifyDate], [Name], [PromotionLocationTypeId], [PointMultiplier], [StartDate], [PromotionStatusId], [UserLastUpdatedId], [IsEnrollmentPromo], [PromoCode], [EnrollmentBonus]) VALUES (2, CAST(N'2016-04-26 16:12:44.4926872' AS DateTime2), CAST(N'2016-05-03 00:00:00.0000000' AS DateTime2), N'3be453f4-b4b4-469c-8fad-cd2347950dd6.jpg', N'&lt;p&gt;test&lt;/p&gt;', CAST(N'2016-04-26 16:12:44.4926872' AS DateTime2), N'TEST PROMO 123', 2, 100, CAST(N'2016-04-26 00:00:00.0000000' AS DateTime2), 1, 0, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[WfsPromotion] OFF
ALTER TABLE [dbo].[Announcement]  WITH CHECK ADD  CONSTRAINT [FK_Announcement_AnnouncementCategory_AnnouncementCategoryId] FOREIGN KEY([AnnouncementCategoryId])
REFERENCES [dbo].[AnnouncementCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Announcement] CHECK CONSTRAINT [FK_Announcement_AnnouncementCategory_AnnouncementCategoryId]
GO
ALTER TABLE [dbo].[Announcement]  WITH CHECK ADD  CONSTRAINT [FK_Announcement_Company_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Announcement] CHECK CONSTRAINT [FK_Announcement_Company_CompanyId]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_Address_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_Address_AddressId]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_BankAccount_BankAccountId] FOREIGN KEY([BankAccountId])
REFERENCES [dbo].[BankAccount] ([Id])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_BankAccount_BankAccountId]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_CreditCard_CreditCardId] FOREIGN KEY([CreditCardId])
REFERENCES [dbo].[CreditCard] ([Id])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_CreditCard_CreditCardId]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_NetworkIdentifier] FOREIGN KEY([NetworkIdentifierId])
REFERENCES [dbo].[NetworkIdentifier] ([Id])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_NetworkIdentifier]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_PointOfSale_PointOfSaleId] FOREIGN KEY([PointOfSaleId])
REFERENCES [dbo].[PointOfSale] ([Id])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_PointOfSale_PointOfSaleId]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_WfsAccount_WfsAccountId] FOREIGN KEY([WfsAccountId])
REFERENCES [dbo].[WfsAccount] ([Id])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_WfsAccount_WfsAccountId]
GO
ALTER TABLE [dbo].[CorpAllocation]  WITH CHECK ADD  CONSTRAINT [FK_CorpAllocation_Member_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[CorpAllocation] CHECK CONSTRAINT [FK_CorpAllocation_Member_MemberId]
GO
ALTER TABLE [dbo].[CorpAllocation]  WITH CHECK ADD  CONSTRAINT [FK_CorpAllocation_WfsAccount_WfsAccountId] FOREIGN KEY([WfsAccountId])
REFERENCES [dbo].[WfsAccount] ([Id])
GO
ALTER TABLE [dbo].[CorpAllocation] CHECK CONSTRAINT [FK_CorpAllocation_WfsAccount_WfsAccountId]
GO
ALTER TABLE [dbo].[FboMerchantStatement]  WITH CHECK ADD  CONSTRAINT [FK_FboMerchantStatement_FboMerchant_FboMerchantId] FOREIGN KEY([FboMerchantId])
REFERENCES [dbo].[FboMerchant] ([Id])
GO
ALTER TABLE [dbo].[FboMerchantStatement] CHECK CONSTRAINT [FK_FboMerchantStatement_FboMerchant_FboMerchantId]
GO
ALTER TABLE [dbo].[MarketingSupportOrdersSubmitted]  WITH CHECK ADD  CONSTRAINT [FK_MarketingSupportOrdersSubmitted_FboMerchant_FboMerchantId] FOREIGN KEY([FboMerchantId])
REFERENCES [dbo].[FboMerchant] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MarketingSupportOrdersSubmitted] CHECK CONSTRAINT [FK_MarketingSupportOrdersSubmitted_FboMerchant_FboMerchantId]
GO
ALTER TABLE [dbo].[MarketingSupportOrdersSubmitted]  WITH CHECK ADD  CONSTRAINT [FK_MarketingSupportOrdersSubmitted_MarketingSupportOrderStatus_MarketingSupportOrderStatuId] FOREIGN KEY([MarketingSupportOrderStatuId])
REFERENCES [dbo].[MarketingSupportOrderStatus] ([Id])
GO
ALTER TABLE [dbo].[MarketingSupportOrdersSubmitted] CHECK CONSTRAINT [FK_MarketingSupportOrdersSubmitted_MarketingSupportOrderStatus_MarketingSupportOrderStatuId]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_MemberType_MemberTypeId] FOREIGN KEY([MemberTypeId])
REFERENCES [dbo].[MemberType] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_MemberType_MemberTypeId]
GO
ALTER TABLE [dbo].[MemberOrder]  WITH CHECK ADD  CONSTRAINT [FK_MemberOrder_Member_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[MemberOrder] CHECK CONSTRAINT [FK_MemberOrder_Member_MemberId]
GO
ALTER TABLE [dbo].[MemberStatement]  WITH CHECK ADD  CONSTRAINT [FK_MemberStatement_Member] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[MemberStatement] CHECK CONSTRAINT [FK_MemberStatement_Member]
GO
ALTER TABLE [dbo].[Promotion]  WITH CHECK ADD  CONSTRAINT [FK_Promotion_Company_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Promotion] CHECK CONSTRAINT [FK_Promotion_Company_CompanyId]
GO
ALTER TABLE [dbo].[Promotion]  WITH CHECK ADD  CONSTRAINT [FK_Promotion_PromotionLocationType_PromotionLocationTypeId] FOREIGN KEY([PromotionLocationTypeId])
REFERENCES [dbo].[PromotionLocationType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Promotion] CHECK CONSTRAINT [FK_Promotion_PromotionLocationType_PromotionLocationTypeId]
GO
ALTER TABLE [dbo].[Promotion]  WITH CHECK ADD  CONSTRAINT [FK_Promotion_PromotionStatus_PromotionStatusId] FOREIGN KEY([PromotionStatusId])
REFERENCES [dbo].[PromotionStatus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Promotion] CHECK CONSTRAINT [FK_Promotion_PromotionStatus_PromotionStatusId]
GO
ALTER TABLE [dbo].[RoleClaim]  WITH CHECK ADD  CONSTRAINT [FK_IdentityRoleClaim<int>_ApplicationRole_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaim] CHECK CONSTRAINT [FK_IdentityRoleClaim<int>_ApplicationRole_RoleId]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Company_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_Company_CompanyId]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_FboMerchant_FboMerchantFromId] FOREIGN KEY([FboMerchantFromId])
REFERENCES [dbo].[FboMerchant] ([Id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_FboMerchant_FboMerchantFromId]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_FboMerchant_FboMerchantToId] FOREIGN KEY([FboMerchantToId])
REFERENCES [dbo].[FboMerchant] ([Id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_FboMerchant_FboMerchantToId]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Member_MemberFromId] FOREIGN KEY([MemberFromId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_Member_MemberFromId]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Member_MemberToId] FOREIGN KEY([MemberToId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_Member_MemberToId]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_PromotionLocationType_PromotionLocationTypeId] FOREIGN KEY([PromotionLocationTypeId])
REFERENCES [dbo].[PromotionLocationType] ([Id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_PromotionLocationType_PromotionLocationTypeId]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_TransactionCode_TransactionCodeId] FOREIGN KEY([TransactionCodeId])
REFERENCES [dbo].[TransactionCode] ([Id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_TransactionCode_TransactionCodeId]
GO
ALTER TABLE [dbo].[TransactionPointDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionPointDetail_Transaction_TransactionId] FOREIGN KEY([TransactionId])
REFERENCES [dbo].[Transaction] ([Id])
GO
ALTER TABLE [dbo].[TransactionPointDetail] CHECK CONSTRAINT [FK_TransactionPointDetail_Transaction_TransactionId]
GO
ALTER TABLE [dbo].[TransactionPointDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionPointDetail_TransactionCode_CodeId] FOREIGN KEY([CodeId])
REFERENCES [dbo].[TransactionCode] ([Id])
GO
ALTER TABLE [dbo].[TransactionPointDetail] CHECK CONSTRAINT [FK_TransactionPointDetail_TransactionCode_CodeId]
GO
ALTER TABLE [dbo].[TransactionPointDetailQueue]  WITH CHECK ADD  CONSTRAINT [FK_TransactionPointDetailQueue_TransactionCode_CodeId] FOREIGN KEY([CodeId])
REFERENCES [dbo].[TransactionCode] ([Id])
GO
ALTER TABLE [dbo].[TransactionPointDetailQueue] CHECK CONSTRAINT [FK_TransactionPointDetailQueue_TransactionCode_CodeId]
GO
ALTER TABLE [dbo].[TransactionPointDetailQueue]  WITH CHECK ADD  CONSTRAINT [FK_TransactionPointDetailQueue_TransactionQueue_TransactionQueueId] FOREIGN KEY([TransactionQueueId])
REFERENCES [dbo].[TransactionQueue] ([Id])
GO
ALTER TABLE [dbo].[TransactionPointDetailQueue] CHECK CONSTRAINT [FK_TransactionPointDetailQueue_TransactionQueue_TransactionQueueId]
GO
ALTER TABLE [dbo].[TransactionPromtionDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionPromtionDetail_Promotion_PromotionId] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotion] ([Id])
GO
ALTER TABLE [dbo].[TransactionPromtionDetail] CHECK CONSTRAINT [FK_TransactionPromtionDetail_Promotion_PromotionId]
GO
ALTER TABLE [dbo].[TransactionPromtionDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionPromtionDetail_Transaction_TransactionId] FOREIGN KEY([TransactionId])
REFERENCES [dbo].[Transaction] ([Id])
GO
ALTER TABLE [dbo].[TransactionPromtionDetail] CHECK CONSTRAINT [FK_TransactionPromtionDetail_Transaction_TransactionId]
GO
ALTER TABLE [dbo].[TransactionPromtionDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionPromtionDetail_TransactionCode_CodeId] FOREIGN KEY([CodeId])
REFERENCES [dbo].[TransactionCode] ([Id])
GO
ALTER TABLE [dbo].[TransactionPromtionDetail] CHECK CONSTRAINT [FK_TransactionPromtionDetail_TransactionCode_CodeId]
GO
ALTER TABLE [dbo].[TransactionPromtionDetailQueue]  WITH CHECK ADD  CONSTRAINT [FK_TransactionPromtionDetailQueue_Promotion_PromotionId] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotion] ([Id])
GO
ALTER TABLE [dbo].[TransactionPromtionDetailQueue] CHECK CONSTRAINT [FK_TransactionPromtionDetailQueue_Promotion_PromotionId]
GO
ALTER TABLE [dbo].[TransactionPromtionDetailQueue]  WITH CHECK ADD  CONSTRAINT [FK_TransactionPromtionDetailQueue_TransactionCode_CodeId] FOREIGN KEY([CodeId])
REFERENCES [dbo].[TransactionCode] ([Id])
GO
ALTER TABLE [dbo].[TransactionPromtionDetailQueue] CHECK CONSTRAINT [FK_TransactionPromtionDetailQueue_TransactionCode_CodeId]
GO
ALTER TABLE [dbo].[TransactionPromtionDetailQueue]  WITH CHECK ADD  CONSTRAINT [FK_TransactionPromtionDetailQueue_TransactionQueue_TransactionQueueId] FOREIGN KEY([TransactionQueueId])
REFERENCES [dbo].[TransactionQueue] ([Id])
GO
ALTER TABLE [dbo].[TransactionPromtionDetailQueue] CHECK CONSTRAINT [FK_TransactionPromtionDetailQueue_TransactionQueue_TransactionQueueId]
GO
ALTER TABLE [dbo].[TransactionQueue]  WITH CHECK ADD  CONSTRAINT [FK_TransactionQueue_Company_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[TransactionQueue] CHECK CONSTRAINT [FK_TransactionQueue_Company_CompanyId]
GO
ALTER TABLE [dbo].[TransactionQueue]  WITH CHECK ADD  CONSTRAINT [FK_TransactionQueue_FboMerchant_FboMerchantFromId] FOREIGN KEY([FboMerchantFromId])
REFERENCES [dbo].[FboMerchant] ([Id])
GO
ALTER TABLE [dbo].[TransactionQueue] CHECK CONSTRAINT [FK_TransactionQueue_FboMerchant_FboMerchantFromId]
GO
ALTER TABLE [dbo].[TransactionQueue]  WITH CHECK ADD  CONSTRAINT [FK_TransactionQueue_FboMerchant_FboMerchantToId] FOREIGN KEY([FboMerchantToId])
REFERENCES [dbo].[FboMerchant] ([Id])
GO
ALTER TABLE [dbo].[TransactionQueue] CHECK CONSTRAINT [FK_TransactionQueue_FboMerchant_FboMerchantToId]
GO
ALTER TABLE [dbo].[TransactionQueue]  WITH CHECK ADD  CONSTRAINT [FK_TransactionQueue_Member_MemberFromId] FOREIGN KEY([MemberFromId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[TransactionQueue] CHECK CONSTRAINT [FK_TransactionQueue_Member_MemberFromId]
GO
ALTER TABLE [dbo].[TransactionQueue]  WITH CHECK ADD  CONSTRAINT [FK_TransactionQueue_Member_MemberToId] FOREIGN KEY([MemberToId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[TransactionQueue] CHECK CONSTRAINT [FK_TransactionQueue_Member_MemberToId]
GO
ALTER TABLE [dbo].[TransactionQueue]  WITH CHECK ADD  CONSTRAINT [FK_TransactionQueue_PromotionLocationType_PromotionLocationTypeId] FOREIGN KEY([PromotionLocationTypeId])
REFERENCES [dbo].[PromotionLocationType] ([Id])
GO
ALTER TABLE [dbo].[TransactionQueue] CHECK CONSTRAINT [FK_TransactionQueue_PromotionLocationType_PromotionLocationTypeId]
GO
ALTER TABLE [dbo].[TransactionQueue]  WITH CHECK ADD  CONSTRAINT [FK_TransactionQueue_TransactionCode_TransactionCodeId] FOREIGN KEY([TransactionCodeId])
REFERENCES [dbo].[TransactionCode] ([Id])
GO
ALTER TABLE [dbo].[TransactionQueue] CHECK CONSTRAINT [FK_TransactionQueue_TransactionCode_TransactionCodeId]
GO
ALTER TABLE [dbo].[TransactionSummary]  WITH CHECK ADD  CONSTRAINT [FK_TransactionSummary_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[TransactionSummary] CHECK CONSTRAINT [FK_TransactionSummary_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[TransactionSummary]  WITH CHECK ADD  CONSTRAINT [FK_TransactionSummary_WfsAccount_WfsAccountId] FOREIGN KEY([WfsAccountId])
REFERENCES [dbo].[WfsAccount] ([Id])
GO
ALTER TABLE [dbo].[TransactionSummary] CHECK CONSTRAINT [FK_TransactionSummary_WfsAccount_WfsAccountId]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationUser_Address_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_ApplicationUser_Address_AddressId]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationUser_Company_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_ApplicationUser_Company_CompanyId]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationUser_FboMerchant_FboMerchantId] FOREIGN KEY([FboMerchantId])
REFERENCES [dbo].[FboMerchant] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_ApplicationUser_FboMerchant_FboMerchantId]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationUser_Member_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_ApplicationUser_Member_MemberId]
GO
ALTER TABLE [dbo].[UserClaim]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserClaim<int>_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaim] CHECK CONSTRAINT [FK_IdentityUserClaim<int>_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserLogin<int>_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogin] CHECK CONSTRAINT [FK_IdentityUserLogin<int>_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserRole<int>_ApplicationRole_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_IdentityUserRole<int>_ApplicationRole_RoleId]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserRole<int>_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_IdentityUserRole<int>_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[WfsPromotion]  WITH CHECK ADD  CONSTRAINT [FK_WfsPromotion_PromotionLocationType_PromotionLocationTypeId] FOREIGN KEY([PromotionLocationTypeId])
REFERENCES [dbo].[PromotionLocationType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WfsPromotion] CHECK CONSTRAINT [FK_WfsPromotion_PromotionLocationType_PromotionLocationTypeId]
GO
ALTER TABLE [dbo].[WfsPromotion]  WITH CHECK ADD  CONSTRAINT [FK_WfsPromotion_PromotionStatus_PromotionStatusId] FOREIGN KEY([PromotionStatusId])
REFERENCES [dbo].[PromotionStatus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WfsPromotion] CHECK CONSTRAINT [FK_WfsPromotion_PromotionStatus_PromotionStatusId]
GO