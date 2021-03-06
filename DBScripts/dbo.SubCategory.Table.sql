USE [Test]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 8/14/2020 9:06:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

INSERT [dbo].[SubCategory] ([Id], [CategoryId], [Name]) VALUES (1, 1, N'SubCategory1')
INSERT [dbo].[SubCategory] ([Id], [CategoryId], [Name]) VALUES (2, 1, N'SubCategory2')
INSERT [dbo].[SubCategory] ([Id], [CategoryId], [Name]) VALUES (3, 1, N'SubCategory3')
INSERT [dbo].[SubCategory] ([Id], [CategoryId], [Name]) VALUES (4, 2, N'SubCategory4')
INSERT [dbo].[SubCategory] ([Id], [CategoryId], [Name]) VALUES (5, 3, N'SubCategory5')
INSERT [dbo].[SubCategory] ([Id], [CategoryId], [Name]) VALUES (6, 4, N'SubCategory6')
INSERT [dbo].[SubCategory] ([Id], [CategoryId], [Name]) VALUES (7, 4, N'SubCategory7')
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_SubCategory] FOREIGN KEY([Id])
REFERENCES [dbo].[SubCategory] ([Id])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_SubCategory]
GO
