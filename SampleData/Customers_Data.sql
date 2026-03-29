USE [Small_Library]
GO

INSERT INTO [dbo].[Costumers]
           ([MemberName]
           ,[Phone]
           ,[Email]
           ,[JoinDate])
     VALUES
           (<MemberName, nvarchar(50),>
           ,<Phone, nvarchar(20),>
           ,<Email, nvarchar(50),>
           ,<JoinDate, date,>)
GO


