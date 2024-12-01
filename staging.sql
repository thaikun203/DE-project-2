USE [DW_STAGGING]
GO
/****** Object:  Schema [lesson3]    Script Date: 6/21/2022 7:05:19 PM ******/
CREATE SCHEMA [lesson3]
GO
/****** Object:  Table [lesson3].[Dim_Date]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[Dim_Date](
	[OrderDate] [date] NULL,
	[Month] [int] NULL,
	[Year] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[Dim_Product]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[Dim_Product](
	[ProductCategoryID] [int] NULL,
	[ProductID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ProductNumber] [nvarchar](25) NULL,
	[StandardCost] [money] NULL,
	[ListPrice] [money] NULL,
	[Weight] [numeric](8, 2) NULL,
	[ProductSubcategoryID] [int] NULL,
	[ProductSubcategoryName] [nvarchar](50) NULL,
	[ProductCategoryName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[Dim_SalesPerson]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[Dim_SalesPerson](
	[SalesPersonID] [int] NULL,
	[HireDate] [date] NULL,
	[Gender] [nvarchar](1) NULL,
	[NationalIDNumber] [nvarchar](15) NULL,
	[FullName] [nvarchar](308) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[Dim_Territory]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[Dim_Territory](
	[TerritoryID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[CountryRegionCode] [nvarchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[Employee]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[Employee](
	[BusinessEntityID] [int] NULL,
	[Gender] [nvarchar](1) NULL,
	[HireDate] [date] NULL,
	[NationalIDNumber] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[Fact_Product]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[Fact_Product](
	[OrderDate] [date] NULL,
	[TerritoryID] [int] NULL,
	[ProductID] [int] NULL,
	[Qty] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[Fact_SalesOrder]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[Fact_SalesOrder](
	[OrderDate] [date] NULL,
	[SalesPersonID] [int] NULL,
	[TerritoryID] [int] NULL,
	[Revenue] [money] NULL,
	[NumberOrder] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[OrderDetail]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[OrderDetail](
	[SalesOrderID] [int] NULL,
	[SalesOrderDetailID] [int] NULL,
	[OrderQty] [smallint] NULL,
	[ProductID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[OrderHeader]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[OrderHeader](
	[SalesOrderID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[TerritoryID] [int] NULL,
	[TotalDue] [money] NULL,
	[Status] [tinyint] NULL,
	[SalesPersonID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[OrderSummary]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[OrderSummary](
	[SalesPersonID] [int] NULL,
	[TerritoryID] [int] NULL,
	[Revenue] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[Person]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[Person](
	[BusinessEntityID] [int] NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[Product]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[Product](
	[ProductID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ProductNumber] [nvarchar](25) NULL,
	[StandardCost] [money] NULL,
	[ListPrice] [money] NULL,
	[Weight] [numeric](8, 2) NULL,
	[ProductSubcategoryID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[ProductCategory]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[ProductCategory](
	[ProductCategoryID] [int] NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[ProductSubCategory]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[ProductSubCategory](
	[ProductCategoryID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ProductSubcategoryID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [lesson3].[Territory]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lesson3].[Territory](
	[TerritoryID] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CountryRegionCode] [nvarchar](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [lesson3].[truncate_stag3]    Script Date: 6/21/2022 7:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [lesson3].[truncate_stag3]
as
begin
	--truncate table lesson3.Product
	--truncate table lesson3.ProductCategory
	--truncate table lesson3.ProductSubCategory
	--truncate table lesson3.Territory
	--truncate table lesson3.Person
	--truncate table lesson3.Employee
	--truncate table lesson3.OrderHeader
	--truncate table lesson3.OrderDetail
	

	truncate table lesson3.Dim_Date
	truncate table lesson3.Dim_SalesPerson
	truncate table lesson3.Dim_Territory
	truncate table lesson3.Fact_SalesOrder
	truncate table lesson3.Dim_Product
    truncate table lesson3.Fact_Product

end
GO
