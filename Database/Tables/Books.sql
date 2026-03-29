USE [Small_Library]
GO

/****** Object:  Table [dbo].[Books]    Script Date: 3/29/2026 1:41:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Books](
	[Book_ID] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](50) NULL,
	[Author ID] [int] NOT NULL,
	[Category ID] [int] NOT NULL,
	[Availability] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Book_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Books] ADD  CONSTRAINT [DF_Books_Availability]  DEFAULT ('Available') FOR [Availability]
GO

ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([Author ID])
REFERENCES [dbo].[Authors] ([Author ID])
GO

ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO

ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categoies] FOREIGN KEY([Category ID])
REFERENCES [dbo].[Categoies] ([Category ID])
GO

ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categoies]
GO
