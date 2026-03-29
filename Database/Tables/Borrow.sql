USE [Small_Library]
GO

/****** Object:  Table [dbo].[Borrow]    Script Date: 3/29/2026 1:46:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Borrow](
	[Borrow_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Book_ID] [int] NOT NULL,
	[Borrow_Date] [date] NOT NULL,
	[Return_Date] [date] NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Due_Date]  AS (dateadd(day,(7),[Borrow_Date])),
 CONSTRAINT [PK_Borrow] PRIMARY KEY CLUSTERED 
(
	[Borrow_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Borrow] ADD  CONSTRAINT [DF_BorrowDate]  DEFAULT (getdate()) FOR [Borrow_Date]
GO

ALTER TABLE [dbo].[Borrow] ADD  CONSTRAINT [DF_Borrow_Status]  DEFAULT (N'Borrowed') FOR [Status]
GO

ALTER TABLE [dbo].[Borrow]  WITH CHECK ADD  CONSTRAINT [FK_Borrow_Books] FOREIGN KEY([Book_ID])
REFERENCES [dbo].[Books] ([Book_ID])
GO

ALTER TABLE [dbo].[Borrow] CHECK CONSTRAINT [FK_Borrow_Books]
GO

ALTER TABLE [dbo].[Borrow]  WITH CHECK ADD  CONSTRAINT [FK_Borrow_Costumers] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Costumers] ([Member_ID])
GO

ALTER TABLE [dbo].[Borrow] CHECK CONSTRAINT [FK_Borrow_Costumers]
GO

ALTER TABLE [dbo].[Borrow]  WITH CHECK ADD  CONSTRAINT [CHK_Borrow_Status] CHECK  (([Status]='Returned' OR [Status]='Borrowed'))
GO

ALTER TABLE [dbo].[Borrow] CHECK CONSTRAINT [CHK_Borrow_Status]
GO

