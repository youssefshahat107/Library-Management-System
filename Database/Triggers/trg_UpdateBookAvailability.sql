USE [Small_Library]
GO

/****** Object:  Trigger [dbo].[trg_UpdateBookAvailability]    Script Date: 3/29/2026 3:18:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[trg_UpdateBookAvailability]
ON [dbo].[Borrow]
AFTER INSERT, UPDATE
AS
BEGIN

-- لو الكتاب اتستعار
UPDATE Books
SET Availability = 'Borrowed'
WHERE Book_ID IN
(
SELECT Book_ID FROM inserted
WHERE Status = 'Borrowed'
)

-- لو الكتاب اتعمله Return
UPDATE Books
SET Availability = 'Available'
WHERE Book_ID IN
(
SELECT Book_ID FROM inserted
WHERE Status = 'Returned'
)

END
GO

ALTER TABLE [dbo].[Borrow] ENABLE TRIGGER [trg_UpdateBookAvailability]
GO

