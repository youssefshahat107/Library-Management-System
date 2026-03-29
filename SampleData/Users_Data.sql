USE [Small_Library]
GO

INSERT INTO [dbo].[Users]
           ([UserName]
           ,[Email]
           ,[Password]
           ,[UserRole]
           ,[CreatedAt])
     VALUES
           (<UserName, nvarchar(50),>
           ,<Email, nvarchar(100),>
           ,<Password, nvarchar(255),>
           ,<UserRole, nvarchar(20),>
           ,<CreatedAt, datetime,>)
GO


