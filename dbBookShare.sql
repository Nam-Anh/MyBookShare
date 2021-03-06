CREATE DATABASE [DBBookShare]
GO
USE [DBBookShare]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/15/2018 10:44:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] NOT NULL,
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/15/2018 10:44:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] NOT NULL,
	[fullName] [nvarchar](200) NOT NULL,
	[dob] [date] NOT NULL,
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[address] [text] NULL,
	[phoneNum] [nvarchar](50) NULL,
	[linkFacebook] [nvarchar](200) NULL,
	[avatar] [nvarchar](100) NULL,
	[userPoint] [real] NOT NULL,
	[createdTime] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/15/2018 10:44:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] NOT NULL,
	[name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 11/15/2018 10:44:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[id] [int] NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[author] [nvarchar](200) NOT NULL,
	[ISBN] [nvarchar](100) NOT NULL,
	[language] [nvarchar](100) NOT NULL,
	[description] [text] NOT NULL,
	[deleted] [bit] NOT NULL,
	[coverImg] [nvarchar](100) NOT NULL,
	[createdTime] [datetime] NOT NULL,
	[creatorID] [int] NOT NULL,
	[categoryID] [int] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookReview]    Script Date: 11/15/2018 10:44:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookReview](
	[id] [int] NOT NULL,
	[content] [text] NOT NULL,
	[createdTime] [datetime] NOT NULL,
	[userID] [int] NOT NULL,
	[bookID] [int] NOT NULL,
 CONSTRAINT [PK_BookReview] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookRating]    Script Date: 11/15/2018 10:44:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookRating](
	[id] [int] NOT NULL,
	[ratePoint] [real] NOT NULL,
	[userID] [int] NOT NULL,
	[bookID] [int] NOT NULL,
 CONSTRAINT [PK_BookRating] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trading]    Script Date: 11/15/2018 10:44:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trading](
	[id] [int] NOT NULL,
	[description] [text] NOT NULL,
	[tradingStatus] [int] NOT NULL,
	[completedTime] [datetime] NULL,
	[lenderRatePoint] [real] NULL,
	[borrowerRatePoint] [real] NULL,
	[bookID] [int] NOT NULL,
	[lenderID] [int] NULL,
	[borrowerID] [int] NULL,
 CONSTRAINT [PK_Trading] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TradedBookImage]    Script Date: 11/15/2018 10:44:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TradedBookImage](
	[id] [int] NOT NULL,
	[image] [nvarchar](100) NOT NULL,
	[tradingID] [int] NOT NULL,
 CONSTRAINT [PK_TradedBookImage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Book_Category]    Script Date: 11/15/2018 10:44:47 ******/
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category]
GO
/****** Object:  ForeignKey [FK_Book_User]    Script Date: 11/15/2018 10:44:47 ******/
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_User] FOREIGN KEY([creatorID])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_User]
GO
/****** Object:  ForeignKey [FK_BookRating_Book]    Script Date: 11/15/2018 10:44:47 ******/
ALTER TABLE [dbo].[BookRating]  WITH CHECK ADD  CONSTRAINT [FK_BookRating_Book] FOREIGN KEY([bookID])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[BookRating] CHECK CONSTRAINT [FK_BookRating_Book]
GO
/****** Object:  ForeignKey [FK_BookRating_User]    Script Date: 11/15/2018 10:44:47 ******/
ALTER TABLE [dbo].[BookRating]  WITH CHECK ADD  CONSTRAINT [FK_BookRating_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[BookRating] CHECK CONSTRAINT [FK_BookRating_User]
GO
/****** Object:  ForeignKey [FK_BookReview_Book]    Script Date: 11/15/2018 10:44:47 ******/
ALTER TABLE [dbo].[BookReview]  WITH CHECK ADD  CONSTRAINT [FK_BookReview_Book] FOREIGN KEY([bookID])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[BookReview] CHECK CONSTRAINT [FK_BookReview_Book]
GO
/****** Object:  ForeignKey [FK_BookReview_User]    Script Date: 11/15/2018 10:44:47 ******/
ALTER TABLE [dbo].[BookReview]  WITH CHECK ADD  CONSTRAINT [FK_BookReview_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[BookReview] CHECK CONSTRAINT [FK_BookReview_User]
GO
/****** Object:  ForeignKey [FK_TradedBookImage_Trading]    Script Date: 11/15/2018 10:44:47 ******/
ALTER TABLE [dbo].[TradedBookImage]  WITH CHECK ADD  CONSTRAINT [FK_TradedBookImage_Trading] FOREIGN KEY([tradingID])
REFERENCES [dbo].[Trading] ([id])
GO
ALTER TABLE [dbo].[TradedBookImage] CHECK CONSTRAINT [FK_TradedBookImage_Trading]
GO
/****** Object:  ForeignKey [FK_Trading_Book]    Script Date: 11/15/2018 10:44:47 ******/
ALTER TABLE [dbo].[Trading]  WITH CHECK ADD  CONSTRAINT [FK_Trading_Book] FOREIGN KEY([bookID])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[Trading] CHECK CONSTRAINT [FK_Trading_Book]
GO
/****** Object:  ForeignKey [FK_Trading_User]    Script Date: 11/15/2018 10:44:47 ******/
ALTER TABLE [dbo].[Trading]  WITH CHECK ADD  CONSTRAINT [FK_Trading_User] FOREIGN KEY([lenderID])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Trading] CHECK CONSTRAINT [FK_Trading_User]
GO
/****** Object:  ForeignKey [FK_Trading_User1]    Script Date: 11/15/2018 10:44:47 ******/
ALTER TABLE [dbo].[Trading]  WITH CHECK ADD  CONSTRAINT [FK_Trading_User1] FOREIGN KEY([borrowerID])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Trading] CHECK CONSTRAINT [FK_Trading_User1]
GO
