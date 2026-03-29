USE [Small_Library]
GO

/****** Object:  Table [dbo].[Costumers]    Script Date: 3/29/2026 1:44:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Costumers](
	[Member_ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberName] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[JoinDate] [date] NOT NULL,
 CONSTRAINT [PK_Costumers] PRIMARY KEY CLUSTERED 
(
	[Member_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

