USE [Small_Library]
GO

INSERT INTO [dbo].[Authors]
           ([AuthorName]
           ,[BirthDay]
           ,[Nationality])
     VALUES
           (<AuthorName, nvarchar(100),>
           ,<BirthDay, date,>
           ,<Nationality, nvarchar(50),>)
GO


