USE [Small_Library]
GO

/****** Object:  UserDefinedFunction [dbo].[CalculateFine]    Script Date: 3/29/2026 12:49:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[CalculateFine]
(
@DueDate DATE
)
RETURNS INT
AS
BEGIN

DECLARE @Fine INT

IF GETDATE() > @DueDate
SET @Fine =
DATEDIFF(DAY,@DueDate,GETDATE()) * 5
ELSE
SET @Fine = 0

RETURN @Fine

END
GO

