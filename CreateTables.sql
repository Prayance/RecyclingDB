-- Create a new database called 'DatabaseName'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
	SELECT name
		FROM sys.databases
		WHERE name = N'RecyclingDB'
)
CREATE DATABASE [RecyclingDB]
GO

-- Use the recycling database
USE RecyclingDB
GO

-- Create a new table called 'WasteTypeDim'
-- Drop the table if it already exists
IF OBJECT_ID('WasteTypeDim', 'U') IS NOT NULL
DROP TABLE WasteTypeDim
GO
CREATE TABLE WasteTypeDim
(
	WasteTypeID INT NOT NULL PRIMARY KEY, -- primary key column
	Restriction [NVARCHAR](50),
	WasteName [NVARCHAR](50)
);
GO


-- Create a new table called 'CollectionCentreDim'
-- Drop the table if it already exists
IF OBJECT_ID('CollectionCentreDim', 'U') IS NOT NULL
DROP TABLE CollectionCentreDim
GO
CREATE TABLE CollectionCentreDim
(
	CentreID INT NOT NULL PRIMARY KEY, -- primary key column
	CentreName [NVARCHAR](20) NOT NULL,
	FirstLine [NVARCHAR](50),
	SecondLine [NVARCHAR](50),
	City [NVARCHAR](30),
	PostCode [NVARCHAR](9)
);
GO

