/****** Object:  Table [dbo].[Transactions]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Transactions](
	[TransactionID] [nvarchar](450) NOT NULL,
	[Narration] [nvarchar](max) NOT NULL,
	[CustRef] [nvarchar](max) NOT NULL,
	[CustName] [nvarchar](max) NOT NULL,
	[CustomerTel] [nvarchar](max) NOT NULL,
	[VendorTransactionRef] [nvarchar](max) NOT NULL,
	[TransactionType] [nvarchar](max) NOT NULL,
	[VendorCode] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Teller] [nvarchar](max) NOT NULL,
	[Reversal] [nvarchar](max) NOT NULL,
	[TeversedTrans] [nvarchar](max) NOT NULL,
	[Offline] [nvarchar](max) NOT NULL,
	[UtilityCode] [nvarchar](max) NOT NULL,
	[PaymentDate] [nvarchar](max) NOT NULL,
	[TransactionAmount] [nvarchar](max) NOT NULL,
	[DigitalSignature] [nvarchar](max) NOT NULL,
	[Telephone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Tin] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
