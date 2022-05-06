/****** Object:  Table [dbo].[Vendors]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Vendors](
	[VendorId] [int] IDENTITY(1,1) NOT NULL,
	[VendorCode] [nvarchar](max) NULL,
	[VendorName] [nvarchar](max) NULL,
	[Publickey] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[TinNumber] [nvarchar](max) NULL,
	[RegistrationNumber] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[VendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
