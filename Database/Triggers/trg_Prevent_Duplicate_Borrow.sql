USE [Small_Library]
GO

/****** Object:  Trigger [dbo].[trg_Prevent_Duplicate_Borrow]    Script Date: 3/29/2026 3:17:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[trg_Prevent_Duplicate_Borrow]
ON [dbo].[Borrow]
INSTEAD OF INSERT
AS
BEGIN

IF EXISTS (
SELECT 1
FROM Borrow b
JOIN inserted i
ON b.Book_ID = i.Book_ID
WHERE b.Status = 'Borrowed'
)

BEGIN
PRINT 'Book already borrowed'
RETURN
END

INSERT INTO Borrow
(User_ID, Book_ID)
SELECT User_ID, Book_ID
FROM inserted

END
GO

ALTER TABLE [dbo].[Borrow] ENABLE TRIGGER [trg_Prevent_Duplicate_Borrow]
GO

