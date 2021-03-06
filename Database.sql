/****** Object:  Table [dbo].[Category]    Script Date: 4/14/2017 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comment]    Script Date: 4/14/2017 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[EmailAddress] [nvarchar](50) NOT NULL,
	[Content] [nvarchar](250) NOT NULL,
	[IsAccept] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[PostId] [int] NOT NULL,
	[ParentId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LocalString]    Script Date: 4/14/2017 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalString](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LocalString] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post]    Script Date: 4/14/2017 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PicturePath] [nvarchar](250) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](200) NULL,
	[ShortContent] [nvarchar](max) NULL,
	[FullContent] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[ViewCount] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[AllowComment] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostTag]    Script Date: 4/14/2017 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostTag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PostTag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project]    Script Date: 4/14/2017 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Description] [nvarchar](max) NULL,
	[Url] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Setting]    Script Date: 4/14/2017 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Value] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
	[InputType] [int] NOT NULL,
	[Description] [nvarchar](250) NULL,
	[SelectedValue] [nvarchar](500) NULL,
 CONSTRAINT [PK_dbo.Setting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SystemError]    Script Date: 4/14/2017 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemError](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShortMessage] [nvarchar](max) NULL,
	[FullMessage] [nvarchar](max) NULL,
	[IpAddress] [nvarchar](max) NULL,
	[PageUrl] [nvarchar](max) NULL,
	[ReferrerUrl] [nvarchar](max) NULL,
	[ErrorDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.SystemError] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tag]    Script Date: 4/14/2017 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UrlRecord]    Script Date: 4/14/2017 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrlRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UniqueUrl] [nvarchar](500) NULL,
	[EntityType] [int] NOT NULL,
	[EntityId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.UrlRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 4/14/2017 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[LastActivityDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Setting] ON 

INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (1, N'general.meta.title', N'Sefa Can - .Net dersleri, Android Dersleri', 1, 10, N'Site Başlığı', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (2, N'general.editor.name', N'Sefa Can', 0, 10, N'Yazar', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (3, N'general.slogan', N'.Net & Mobile Developer', 0, 10, N'Slogan', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (4, N'general.copyright', N'Copyright © 2014 Sefacan.Net', 0, 10, N'Copyright Metni', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (5, N'category.postcount.enabled', N'true', 3, 20, N'Makale Sayısını Göster', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (6, N'general.editor.picture', N'/Content/img/sefacan.jpg', 0, 10, N'Yazar Görseli', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (7, N'general.pagesize', N'15', 0, 10, N'Sayfa Başına Yazı', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (8, N'general.use.www', N'true', 0, 20, N'Www Kullan', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (9, N'general.use.ssl', N'false', 0, 20, N'SSL Kullan', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (10, N'general.meta.description', N'.Net dersleri, Android dersleri, Asp.Net Mvc', 1, 10, N'Site Açıklaması', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (11, N'mail.sender.address', N'', 2, 10, N'Gönderen', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (12, N'mail.sender.password', N'', 2, 10, N'Şifre', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (13, N'mail.smtp.ssl', N'true', 2, 20, N'SSL ile gönder', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (14, N'mail.smtp.host', N'', 2, 10, N'SMTP Adresi', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (15, N'mail.smtp.port', N'587', 2, 10, N'SMTP Portu', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (16, N'mail.message.title', N'Sefacan.net İletişim', 2, 10, N'Mail Başlığı', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (17, N'post.comment.enabled', N'true', 3, 20, N'Yorumlar', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (18, N'post.comment.confirm', N'true', 3, 20, N'Yorum onay sistemi', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (19, N'post.comment.count', N'true', 3, 20, N'Yorum sayısını göster', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (20, N'post.view.count', N'true', 3, 20, N'Okunma sayısını göster', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (21, N'post.recentcomment', N'true', 3, 20, N'Son yorumları göster', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (22, N'general.socialmedia.enabled', N'true', 4, 20, N'Sosyal medya aktif', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (23, N'general.socialmedia.code', N'', 4, 50, N'Kod alanı', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (24, N'post.related.view', N'true', 3, 20, N'Benzer yazıları göster', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (25, N'general.analytics.code', N'', 1, 50, N'Analiz Kodu', NULL)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [Type], [InputType], [Description], [SelectedValue]) VALUES (26, N'general.facebook.appid', N'', 4, 10, N'Facebook AppId', NULL)
SET IDENTITY_INSERT [dbo].[Setting] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [UserName], [Password], [LastActivityDate]) VALUES (5, N'admin', N'123456', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF__Comment__ParentI__2E1BDC42]  DEFAULT ((0)) FOR [ParentId]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT ((0)) FOR [AllowComment]
GO
ALTER TABLE [dbo].[Setting] ADD  CONSTRAINT [DF__Setting__Type__276EDEB3]  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[Setting] ADD  CONSTRAINT [DF__Setting__InputTy__2A4B4B5E]  DEFAULT ((0)) FOR [InputType]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comment_dbo.Post_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_dbo.Comment_dbo.Post_PostId]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_dbo.Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_dbo.Post_dbo.Category_CategoryId]
GO
ALTER TABLE [dbo].[PostTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PostTag_dbo.Post_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[PostTag] CHECK CONSTRAINT [FK_dbo.PostTag_dbo.Post_PostId]
GO
ALTER TABLE [dbo].[PostTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PostTag_dbo.Tag_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tag] ([Id])
GO
ALTER TABLE [dbo].[PostTag] CHECK CONSTRAINT [FK_dbo.PostTag_dbo.Tag_TagId]
GO
