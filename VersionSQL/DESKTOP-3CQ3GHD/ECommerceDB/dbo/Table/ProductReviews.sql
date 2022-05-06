/****** Object:  Table [dbo].[ProductReviews]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ProductReviews](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Rating] [float] NOT NULL,
	[ReviewMessage] [nvarchar](max) NULL,
	[Reviewer] [nvarchar](max) NULL,
	[ProductAttributesId] [bigint] NULL,
 CONSTRAINT [PK_ProductReviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_ProductReviews_ProductAttributesId] ON [dbo].[ProductReviews]
(
	[ProductAttributesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[ProductReviews]  WITH CHECK ADD  CONSTRAINT [FK_ProductReviews_ProductAttributes_ProductAttributesId] FOREIGN KEY([ProductAttributesId])
REFERENCES [dbo].[ProductAttributes] ([Id])
ALTER TABLE [dbo].[ProductReviews] CHECK CONSTRAINT [FK_ProductReviews_ProductAttributes_ProductAttributesId]
