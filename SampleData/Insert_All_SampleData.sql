USE Small_Library
GO

PRINT 'Inserting Authors...'
:r .\Authors_Data.sql
GO

PRINT 'Inserting Categories...'
:r .\Categories_Data.sql
GO

PRINT 'Inserting Books...'
:r .\Books_Data.sql
GO

PRINT 'Inserting Customers...'
:r .\Customers_Data.sql
GO

PRINT 'Inserting Users...'
:r .\Users_Data.sql
GO

PRINT 'Inserting Borrow Records...'
:r .\Borrow_Data.sql
GO

PRINT 'Sample Data Inserted Successfully!'