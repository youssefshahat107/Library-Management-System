USE [Small_Library]
GO

INSERT INTO [dbo].[Borrow]
           ([User_ID]
           ,[Book_ID]
           ,[Borrow_Date]
           ,[Return_Date]
           ,[Status])
     VALUES
           (<User_ID, int,>
           ,<Book_ID, int,>
           ,<Borrow_Date, date,>
           ,<Return_Date, date,>
           ,<Status, nvarchar(50),>)
GO


