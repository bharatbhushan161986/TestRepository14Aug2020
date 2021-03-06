USE [Test]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 8/14/2020 9:06:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [nvarchar](100) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (1, 1, N'Item1', N'ItemDesc1')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (2, 1, N'Item2', N'ItemDesc2')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (3, 2, N'Item3', N'ItemDesc3')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (4, 3, N'Item4', N'ItemDesc4')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (5, 3, N'Item5', N'ItemDesc5')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (6, 3, N'Item6', N'ItemDesc6')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (7, 4, N'Item7', N'ItemDesc7')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (8, 5, N'Item8', N'ItemDesc8')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (9, 5, N'Item9', N'ItemDesc9')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (10, 6, N'Item10', N'ItemDesc10')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (11, 6, N'Item11', N'ItemDesc11')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (12, 6, N'Item12', N'ItemDesc12')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (13, 7, N'Item13', N'ItemDesc13')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (17, 7, N'Item12', N'ItemDesc12')
SET IDENTITY_INSERT [dbo].[Item] OFF
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategory] ([Id])
GO
