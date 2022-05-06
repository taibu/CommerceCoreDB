/****** Object:  Table [dbo].[Products]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Products](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [nvarchar](max) NULL,
	[SubCategoryId] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[Discount] [float] NOT NULL,
	[QuantityInStock] [int] NOT NULL,
	[SKU] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CartId] [int] NULL,
	[OrderId] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Products_CartId] ON [dbo].[Products]
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Products_OrderId] ON [dbo].[Products]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Carts_CartId] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([Id])
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Carts_CartId]
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Orders_OrderId]
