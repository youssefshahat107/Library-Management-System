USE [Small_Library]
GO

/****** Object:  StoredProcedure [dbo].[ReturnBook]    Script Date: 3/29/2026 1:03:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReturnBook]
    @UserID INT,
    @BookID INT
AS
BEGIN
    UPDATE Borrow
    SET Status = 'Returned',
        Return_Date = GETDATE()
    WHERE User_ID = @UserID
      AND Book_ID = @BookID
      AND Status = 'Borrowed'
END
GO

