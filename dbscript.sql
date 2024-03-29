USE [master]
GO
/****** Object:  Database [express1]    Script Date: 03-Jul-17 12:24:23 AM ******/
CREATE DATABASE [express1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'express1', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\express1.mdf' , SIZE = 3392KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'express1_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\express1_log.ldf' , SIZE = 896KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [express1] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [express1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [express1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [express1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [express1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [express1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [express1] SET ARITHABORT OFF 
GO
ALTER DATABASE [express1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [express1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [express1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [express1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [express1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [express1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [express1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [express1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [express1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [express1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [express1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [express1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [express1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [express1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [express1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [express1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [express1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [express1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [express1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [express1] SET  MULTI_USER 
GO
ALTER DATABASE [express1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [express1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [express1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [express1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [express1]
GO
/****** Object:  Table [dbo].[City]    Script Date: 03-Jul-17 12:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NOT NULL,
	[StateName] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Details]    Script Date: 03-Jul-17 12:24:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Contact] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemName]    Script Date: 03-Jul-17 12:24:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemName](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03-Jul-17 12:24:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [varchar](50) NOT NULL,
	[OrderDate] [varchar](50) NOT NULL,
	[ExpectedDeliveryDate] [varchar](50) NOT NULL,
	[CustomerName] [varchar](50) NOT NULL,
	[CustomerAddress] [varchar](50) NOT NULL,
	[CustomerState] [varchar](50) NOT NULL,
	[CustomerCity] [varchar](50) NOT NULL,
	[CustomerPhone] [varchar](50) NOT NULL,
	[CustomerEmail] [varchar](50) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[ItemDescription] [varchar](500) NOT NULL,
	[ItemUnitPrice] [varchar](50) NOT NULL,
	[ItemQuantity] [varchar](50) NOT NULL,
	[ItemTotalPrice] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[OTP] [varchar](10) NOT NULL,
	[OrderStatus] [varchar](50) NOT NULL,
	[Tax] [varchar](50) NOT NULL,
	[SalesPerson] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 03-Jul-17 12:24:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[OrderID] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](50) NULL,
	[PaymentSatus] [varchar](250) NULL,
	[PaymentMode] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesPerson]    Script Date: 03-Jul-17 12:24:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesPerson](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SalesPersonName] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State]    Script Date: 03-Jul-17 12:24:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblcompanyLogoAddress]    Script Date: 03-Jul-17 12:24:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblcompanyLogoAddress](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](max) NOT NULL,
	[logoPath] [varchar](max) NOT NULL,
	[logoName] [varchar](max) NOT NULL,
	[BillingAddress] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tblcompanyLogoAddress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

GO
INSERT [dbo].[City] ([ID], [CityName], [StateName]) VALUES (1, N'Gurgaon', N'Haryana')
GO
INSERT [dbo].[City] ([ID], [CityName], [StateName]) VALUES (2, N'Patna', N'Bihar')
GO
INSERT [dbo].[City] ([ID], [CityName], [StateName]) VALUES (3, N'Patna', N'Bihar')
GO
INSERT [dbo].[City] ([ID], [CityName], [StateName]) VALUES (1002, N'Hyderabad', N'Andhra Pradesh')
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Details] ON 

GO
INSERT [dbo].[Details] ([ID], [UserName], [Email], [Password], [Contact]) VALUES (1, N'Admin', N'admin', N'admin123', N'1234567890')
GO
INSERT [dbo].[Details] ([ID], [UserName], [Email], [Password], [Contact]) VALUES (2, N'SHIVAM', N'shivam', N'shivam123', N'7905277359')
GO
SET IDENTITY_INSERT [dbo].[Details] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemName] ON 

GO
INSERT [dbo].[ItemName] ([ID], [ItemName]) VALUES (1, N'test')
GO
INSERT [dbo].[ItemName] ([ID], [ItemName]) VALUES (2, N'hello')
GO
INSERT [dbo].[ItemName] ([ID], [ItemName]) VALUES (3, N'anmol1')
GO
INSERT [dbo].[ItemName] ([ID], [ItemName]) VALUES (4, N'S4')
GO
SET IDENTITY_INSERT [dbo].[ItemName] OFF
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_9311', N'2017-05-18', N'2017-05-18', N'cgbngf', N'vbjkg', N'Bihar', N'Patna', N'8736025177', N'shivam1521.ss@gmail.com', N'Bag', N'testing Email', N'46', N'456', N'24122.4', N'Processing', N'CON738345', N'Pending', N'15%', NULL)
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_5678', N'2017-10-05', N'2017-12-05', N'parvin ', N'rz 501 hhh manjn', N'Bihar', N'Patna', N'9999047761', N'saienterprises6565@gmail.com', N'utin', N'8mm', N'2500', N'1', N'2500', N'Processing', N'CON681362', N'Pending', N'NA', NULL)
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_5678', N'2017-10-05', N'2017-12-05', N'parvin ', N'rz 501 hhh manjn', N'Bihar', N'Patna', N'9999047906', N'saienterprises6565@gmail.com', N'utin', N'8mm', N'2500', N'1', N'2500', N'Processing', N'CON123978', N'Pending', N'NA', NULL)
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_6728', N'2017-05-18', N'2017-05-18', N'shiv', N'e-123', N'Haryana', N'Gurgaon', N'7905277359', N'shivam1521.ss@gmail.com', N'laptop', N'testing Email', N'546233', N'3', N'1638699', N'Processing', N'NULL', N'Confirmed', N'NA', NULL)
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_6450', N'2017-05-18', N'2017-05-18', N'shashank', N'bbbbb', N'Bihar', N'Patna', N'8736025177', N'shivam1521.ss@gmail.com', N'Bag', N'testing Email', N'45', N'546', N'24570', N'Processing', N'NULL', N'Confirmed', N'NA', NULL)
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_5764', N'2017-05-24', N'2017-05-26', N'Maher Singh', N'West Rajiv Nagar', N'Haryana', N'Gurgaon', N'9821523246', N'shivam1521.ss@gmail.com', N'Bag', N'testing Email', N'45678', N'2', N'91356', N'Processing', N'CON191607', N'Pending', N'NA', NULL)
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_1735', N'', N'', N'aaaa', N'bbbbb', N'Bihar', N'Patna', N'9821523246', N'shivam1521.ss@gmail.com', N'Bag', N'testing Email', N'17', N'2', N'34', N'Delivered', N'CON718258', N'Pending', N'NA', NULL)
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_9707', N'', N'', N'rgdf', N'kbjhv', N'Bihar', N'Patna', N'8736025177', N'shivam1521.ss@gmail.com', N'Bag', N'testing Email', N'32', N'234', N'7488', N'Processing', N'CON51957', N'Pending', N'NA', NULL)
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_4572', N'2017-02-05', N'2017-01-06', N'manoj kumar', N'rz -50a laxmi vihar najafgarh  ', N'Haryana', N'Gurgaon', N'9999092658', N'manoj.chhikara9@gmail.com', N'uim77', N'6s', N'7500', N'1', N'7500', N'Processing', N'CON97630', N'Pending', N'NA', NULL)
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_4572', N'2017-02-05', N'2017-01-06', N'manoj kumar', N'rz -50a laxmi vihar najafgarh  ', N'Haryana', N'Gurgaon', N'9999092658', N'manoj.chhikara9@gmail.com', N'uim77', N'6s', N'7500', N'1', N'7500', N'Processing', N'CON593195', N'Pending', N'NA', NULL)
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_5749', N'2017-06-23', N'2017-06-05', N'reasrds', N'ftyrytgui', N'Andhra Pradesh', N'Hyderabad', N'6554467787', N'anmchaudhary@gmail.com', N'hello', N'any thig', N'4324', N'24', N'543', N'Processing', N'CON26871', N'Pending', N'', N'Maher')
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_4388', N'2017-06-14', N'2017-06-21', N'Vineet Mawandia', N'Plot 340 udyog vihar Sec - 37', N'Haryana', N'Gurgaon', N'9811699967', N'seotug@hotmail.com', N'S4', N'Gsgsgs', N'100', N'10', N'1150', N'Processing', N'CON223454', N'Pending', N'15%', N'Maher')
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_5168', N'2017-06-14', N'2017-06-21', N'Soni singh', N'Plot 37', N'Haryana', N'Gurgaon', N'7840070004', N'Hr@seotug.in', N'S4', N'Hshaggs hshaha', N'100', N'19', N'2185', N'Processing', N'NULL', N'Confirmed', N'15%', N'Maher')
GO
INSERT [dbo].[OrderDetail] ([OrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerName], [CustomerAddress], [CustomerState], [CustomerCity], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription], [ItemUnitPrice], [ItemQuantity], [ItemTotalPrice], [Status], [OTP], [OrderStatus], [Tax], [SalesPerson]) VALUES (N'ORDER_2228', N'2017-06-14', N'2017-06-16', N'prashant kumar ', N'house no23 plot no 6 dwarka ', N'Bihar', N'Patna', N'9999284965', N'saienterprises6565@gmail.com', N'S4', N'7s ', N'6000', N'1', N'6000', N'Processing', N'NULL', N'Confirmed', N'NA', N'anmol')
GO
INSERT [dbo].[OrderStatus] ([OrderID], [State], [City], [Status], [Date], [Time], [PaymentSatus], [PaymentMode]) VALUES (N'ORDER_5727', N'Bihar', N'Patna', N'Delivered', N'May 12 2017 12:00AM', N'09:54:27.4579717', NULL, NULL)
GO
INSERT [dbo].[OrderStatus] ([OrderID], [State], [City], [Status], [Date], [Time], [PaymentSatus], [PaymentMode]) VALUES (N'ORDER_1735', N'Haryana', N'Gurgaon', N'Delivered', N'Jun 11 2017 12:00AM', N'13:15:05.0487500', NULL, NULL)
GO
INSERT [dbo].[OrderStatus] ([OrderID], [State], [City], [Status], [Date], [Time], [PaymentSatus], [PaymentMode]) VALUES (N'ORDER_4572', N'Andhra Pradesh', N'Hyderabad', N'Processing', N'Jun 11 2017 12:00AM', N'09:26:28.0535113', N'Done', N'COD')
GO
INSERT [dbo].[OrderStatus] ([OrderID], [State], [City], [Status], [Date], [Time], [PaymentSatus], [PaymentMode]) VALUES (N'ORDER_4572', N'Andhra Pradesh', N'Hyderabad', N'Processing', N'Jun 12 2017 12:00AM', N'02:48:59.0203089', N'Done', N'IMPS')
GO
INSERT [dbo].[OrderStatus] ([OrderID], [State], [City], [Status], [Date], [Time], [PaymentSatus], [PaymentMode]) VALUES (N'ORDER_4572', N'Andhra Pradesh', N'Hyderabad', N'Processing', N'Jun 14 2017 12:00AM', N'00:53:47.1642248', N'Done', N'COD')
GO
SET IDENTITY_INSERT [dbo].[SalesPerson] ON 

GO
INSERT [dbo].[SalesPerson] ([ID], [SalesPersonName]) VALUES (1, N'test')
GO
INSERT [dbo].[SalesPerson] ([ID], [SalesPersonName]) VALUES (2, N'test1')
GO
INSERT [dbo].[SalesPerson] ([ID], [SalesPersonName]) VALUES (3, N'anmol')
GO
INSERT [dbo].[SalesPerson] ([ID], [SalesPersonName]) VALUES (4, N'Maher')
GO
SET IDENTITY_INSERT [dbo].[SalesPerson] OFF
GO
SET IDENTITY_INSERT [dbo].[State] ON 

GO
INSERT [dbo].[State] ([ID], [StateName]) VALUES (1, N'Uttar Pradesh')
GO
INSERT [dbo].[State] ([ID], [StateName]) VALUES (2, N'Haryana')
GO
INSERT [dbo].[State] ([ID], [StateName]) VALUES (3, N'Bihar')
GO
INSERT [dbo].[State] ([ID], [StateName]) VALUES (4, N'Delhi')
GO
INSERT [dbo].[State] ([ID], [StateName]) VALUES (5, N'new delhi')
GO
INSERT [dbo].[State] ([ID], [StateName]) VALUES (6, N'new delhi ')
GO
INSERT [dbo].[State] ([ID], [StateName]) VALUES (7, N'Andhra Pradesh')
GO
INSERT [dbo].[State] ([ID], [StateName]) VALUES (8, N'new delhi')
GO
SET IDENTITY_INSERT [dbo].[State] OFF
GO
SET IDENTITY_INSERT [dbo].[tblcompanyLogoAddress] ON 

GO
INSERT [dbo].[tblcompanyLogoAddress] ([ID], [CompanyName], [logoPath], [logoName], [BillingAddress]) VALUES (1, N'test', N'http://www.expressbull.com/Logo/17800373_10155198755353482_8181780776775765510_n_201706140229.jpg', N'17800373_10155198755353482_8181780776775765510_n_201706140229.jpg', N'Jonathan Smith 
44 Dreamland Tower, Suite 566 
ABC, Dreamland 1230
Tel: +12 (012) 345-67-89

')
GO
INSERT [dbo].[tblcompanyLogoAddress] ([ID], [CompanyName], [logoPath], [logoName], [BillingAddress]) VALUES (2, N'seotug', N'http://www.expressbull.com/Logo/239c87a_201706140044.jpg', N'239c87a_201706140044.jpg', N'Address: N-122, New Palam Vihar, Phase-1, Sector 110, Gurugram, Haryana 122017')
GO
SET IDENTITY_INSERT [dbo].[tblcompanyLogoAddress] OFF
GO
USE [master]
GO
ALTER DATABASE [express1] SET  READ_WRITE 
GO
