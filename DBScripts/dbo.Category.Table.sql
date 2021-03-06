USE [Test]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/14/2020 9:06:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Category1')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Category2')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Category3')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Category4')
SET IDENTITY_INSERT [dbo].[Category] OFF
