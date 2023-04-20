CREATE DATABASE [AnimalShop]
GO

USE [AnimalShop]
GO

CREATE TABLE [Role]
(
	ID INT PRIMARY KEY IDENTITY,
	[Name] CHAR (20),
)
GO

CREATE TABLE [User]
(
	ID INT PRIMARY KEY IDENTITY,
	[LastName] CHAR (50),
	[FirstName] CHAR (50),
	[SecondName] CHAR (50),
	[Login] NVARCHAR (30),
	[Password] NVARCHAR (30),
	RoleID INT FOREIGN KEY REFERENCES [Role](ID),
)
GO

CREATE TABLE [Order]
(
	ID INT PRIMARY KEY IDENTITY,
	[Status] CHAR (30),
	[DeliveryDate] DATETIME,
	[PickupPoint] NVARCHAR (60),
	UserID INT FOREIGN KEY REFERENCES [User](ID),
)
GO

CREATE TABLE [Product]
(
	ID INT PRIMARY KEY IDENTITY,
	[ArticleNumber] NVARCHAR (50) NOT NULL,
	[Name] CHAR (100) NOT NULL,
	[Cost] INT NOT NULL ,
	[DiscountAmount] INT NOT NULL,
	[Manufacturer] NVARCHAR (50) NOT NULL,
	[Category] CHAR (60) NOT NULL,
	[QuantityInStock] INT NOT NULL,
	[Description] NVARCHAR (150) NOT NULL,
	[Photo] IMAGE,
	[Status] CHAR (30),
	OrderID INT FOREIGN KEY REFERENCES [Order](ID),
)
GO