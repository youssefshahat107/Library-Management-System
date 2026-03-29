USE [Small_Library]
GO

/****** Object:  View [dbo].[VW_Current_Borrowed_Books]    Script Date: 3/29/2026 2:13:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_Current_Borrowed_Books]
AS
SELECT *
FROM Borrow
WHERE Status='Borrowed'
GO


