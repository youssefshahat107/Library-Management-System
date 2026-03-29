USE [Small_Library]
GO

/****** Object:  Trigger [dbo].[trg_ReturnBook]    Script Date: 3/29/2026 3:18:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[trg_ReturnBook]
ON [dbo].[Borrow]
AFTER UPDATE
AS
BEGIN

UPDATE Borrow
SET Return_Date = GETDATE()
WHERE Borrow_ID IN
(
SELECT Borrow_ID
FROM inserted
WHERE Status = 'Returned'
)

END
GO

ALTER TABLE [dbo].[Borrow] ENABLE TRIGGER [trg_ReturnBook]
GO

