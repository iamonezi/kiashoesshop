USE [master]
GO
/****** Object:  Database [Project_KiAShop5]    Script Date: 3/17/2024 7:25:11 PM ******/
CREATE DATABASE [Project_KiAShop5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_KiAShop5', FILENAME = N'D:\SQLdownloads\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_KiAShop5.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_KiAShop5_log', FILENAME = N'D:\SQLdownloads\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_KiAShop5_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Project_KiAShop5] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_KiAShop5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project_KiAShop5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project_KiAShop5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project_KiAShop5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Project_KiAShop5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project_KiAShop5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET RECOVERY FULL 
GO
ALTER DATABASE [Project_KiAShop5] SET  MULTI_USER 
GO
ALTER DATABASE [Project_KiAShop5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project_KiAShop5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project_KiAShop5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project_KiAShop5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project_KiAShop5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project_KiAShop5] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Project_KiAShop5', N'ON'
GO
ALTER DATABASE [Project_KiAShop5] SET QUERY_STORE = ON
GO
ALTER DATABASE [Project_KiAShop5] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Project_KiAShop5]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/17/2024 7:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](255) NULL,
	[email] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[role] [int] NOT NULL,
	[pin] [int] NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 3/17/2024 7:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[brandID] [int] NOT NULL,
	[namebrand] [nvarchar](255) NOT NULL,
	[status] [int] NOT NULL,
	[productID] [int] NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[brandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/17/2024 7:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cartID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[accountID] [int] NOT NULL,
	[sizeID] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[cartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/17/2024 7:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cID] [int] IDENTITY(1,1) NOT NULL,
	[cName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorite]    Script Date: 3/17/2024 7:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorite](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_Favorite] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/17/2024 7:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [date] NOT NULL,
	[accountID] [int] NOT NULL,
	[addressReceive] [nvarchar](max) NULL,
	[sdt] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[totalPrice] [money] NULL,
	[status] [nvarchar](max) NULL,
	[reason] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/17/2024 7:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[sizeID] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/17/2024 7:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[pID] [int] IDENTITY(1,1) NOT NULL,
	[pName] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cID] [int] NULL,
	[pAmount] [int] NULL,
	[isDeleted] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[pID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 3/17/2024 7:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[sizeID] [int] NOT NULL,
	[sizevalue] [float] NOT NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[sizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SizeDetail]    Script Date: 3/17/2024 7:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeDetail](
	[sizeID] [int] NOT NULL,
	[pID] [int] NOT NULL,
	[quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubImage]    Script Date: 3/17/2024 7:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubImage](
	[subImageID] [int] IDENTITY(1,1) NOT NULL,
	[pID] [int] NULL,
	[SImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_SubImage] PRIMARY KEY CLUSTERED 
(
	[subImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 3/17/2024 7:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[typeID] [int] NOT NULL,
	[typename] [nvarchar](255) NOT NULL,
	[brandID] [int] NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [fullname], [email], [password], [phone], [address], [role], [pin], [date]) VALUES (1, N'Phan Hoàng Phúc', N'Php3002@gmail.com', N'6dd544e6b7ab3369a62d4c994362a3cc', N'0382247620', N'Cần Thơ', 0, 53465, CAST(N'2024-01-02' AS Date))
INSERT [dbo].[Account] ([uID], [fullname], [email], [password], [phone], [address], [role], [pin], [date]) VALUES (2, N'Admin', N'kiashop2024@gmail.com', N'cbf260c077bab9519328e29ce020979f ', N'0457387455', N'Cần Thơ', 1, 68448, CAST(N'2024-01-02' AS Date))
INSERT [dbo].[Account] ([uID], [fullname], [email], [password], [phone], [address], [role], [pin], [date]) VALUES (3, N'Thái Như', N'thainhu64727@gmail.com', N'2a93a82442ebe44fce901cffe6c4c6b1', N'0934564344', N'Cần Thơ', 0, 91625, CAST(N'2024-02-22' AS Date))
INSERT [dbo].[Account] ([uID], [fullname], [email], [password], [phone], [address], [role], [pin], [date]) VALUES (7, N'Văn Hòa', N'vanhoa23987@gmail.com', N'e034fb6b66aacc1d48f445ddfb08da98', N'0243466438', N'Vĩnh Long', 0, 17349, CAST(N'2024-02-23' AS Date))
INSERT [dbo].[Account] ([uID], [fullname], [email], [password], [phone], [address], [role], [pin], [date]) VALUES (8, N'văn toàn', N'hp3002@gmail.com', N'6dd544e6b7ab3369a62d4c994362a3cc', N'0987434643', N'Đà Lạt', 0, 54217, CAST(N'2024-03-02' AS Date))
INSERT [dbo].[Account] ([uID], [fullname], [email], [password], [phone], [address], [role], [pin], [date]) VALUES (9, N'Văn Hòa', N'de23@gmail.com', N'6dd544e6b7ab3369a62d4c994362a3cc', N'0911015846', N'cần thơ', 0, 66035, CAST(N'2024-03-02' AS Date))
INSERT [dbo].[Account] ([uID], [fullname], [email], [password], [phone], [address], [role], [pin], [date]) VALUES (15, N'Nguyễn Văn Toàn', N'Nguyenvantoan@gmail.com', N'6dd544e6b7ab3369a62d4c994362a3cc', N'0923576733', N'Hà Nội', 0, 35645, CAST(N'2024-03-12' AS Date))
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cID], [cName]) VALUES (1, N'Giày Nike')
INSERT [dbo].[Category] ([cID], [cName]) VALUES (8, N'Giày Adidas')
INSERT [dbo].[Category] ([cID], [cName]) VALUES (9, N'Giày Jordan')
INSERT [dbo].[Category] ([cID], [cName]) VALUES (10, N'Giày Vans')
INSERT [dbo].[Category] ([cID], [cName]) VALUES (11, N'Giày Converse')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [orderDate], [accountID], [addressReceive], [sdt], [name], [totalPrice], [status], [reason]) VALUES (20, CAST(N'2024-03-08' AS Date), 1, N'HN', N'0919721077', N'Kim Anh', 450.0000, N'Canceled', NULL)
INSERT [dbo].[Order] ([id], [orderDate], [accountID], [addressReceive], [sdt], [name], [totalPrice], [status], [reason]) VALUES (21, CAST(N'2024-03-08' AS Date), 1, N'HN', N'0919721077', N'Minh Tien', 2390.0000, N'Canceled', N'đổi địa chỉ')
INSERT [dbo].[Order] ([id], [orderDate], [accountID], [addressReceive], [sdt], [name], [totalPrice], [status], [reason]) VALUES (22, CAST(N'2024-03-09' AS Date), 1, N'HN', N'0123456789', N'hihi haha', 880.0000, N'Canceled', N'Đổi Địa Chỉ')
INSERT [dbo].[Order] ([id], [orderDate], [accountID], [addressReceive], [sdt], [name], [totalPrice], [status], [reason]) VALUES (23, CAST(N'2024-03-12' AS Date), 1, N'Cần Thơ', N'0956545520', N'Nguyễn Thị Như', 450.0000, N'Accepted', NULL)
INSERT [dbo].[Order] ([id], [orderDate], [accountID], [addressReceive], [sdt], [name], [totalPrice], [status], [reason]) VALUES (24, CAST(N'2024-03-12' AS Date), 1, N'Cần Thơ', N'0555864984', N'Phan Hoàng Phúc', 880.0000, N'Waiting', NULL)
INSERT [dbo].[Order] ([id], [orderDate], [accountID], [addressReceive], [sdt], [name], [totalPrice], [status], [reason]) VALUES (25, CAST(N'2024-03-12' AS Date), 1, N'Cần Thơ', N'0857648755', N'Phan Hoàng Phúc', 900.0000, N'Canceled', N'đổi địa chỉ')
INSERT [dbo].[Order] ([id], [orderDate], [accountID], [addressReceive], [sdt], [name], [totalPrice], [status], [reason]) VALUES (1027, CAST(N'2024-03-13' AS Date), 3, N'Cần Thơ', N'0344559762', N'Nguyễn Thị Như', 1260.0000, N'Waiting', NULL)
INSERT [dbo].[Order] ([id], [orderDate], [accountID], [addressReceive], [sdt], [name], [totalPrice], [status], [reason]) VALUES (1028, CAST(N'2024-03-14' AS Date), 1, N'Cần Thơ', N'0382244550', N'Phan Phúc Hậu', 1000.0000, N'Waiting', NULL)
INSERT [dbo].[Order] ([id], [orderDate], [accountID], [addressReceive], [sdt], [name], [totalPrice], [status], [reason]) VALUES (1029, CAST(N'2024-03-14' AS Date), 9, N'Cần Thơ', N'0382247620', N'Nguyễn Hậu', 900.0000, N'Waiting', NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [sizeID], [id]) VALUES (20, 6, 450.0000, 1, 3, 16)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [sizeID], [id]) VALUES (21, 2, 630.0000, 1, 2, 17)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [sizeID], [id]) VALUES (21, 7, 880.0000, 2, 6, 18)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [sizeID], [id]) VALUES (22, 7, 880.0000, 1, 4, 19)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [sizeID], [id]) VALUES (23, 6, 450.0000, 1, 7, 20)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [sizeID], [id]) VALUES (24, 7, 880.0000, 1, 7, 21)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [sizeID], [id]) VALUES (25, 6, 450.0000, 2, 5, 22)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [sizeID], [id]) VALUES (1027, 2, 630.0000, 2, 4, 1024)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [sizeID], [id]) VALUES (1028, 14, 500.0000, 2, 6, 1025)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [sizeID], [id]) VALUES (1029, 6, 450.0000, 2, 2, 1026)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (1, N'Jordan 1 Retro High Dark Mocha', N'https://saigonsneaker.com/wp-content/uploads/2022/12/air-jordan-1-hi-og-retro-555088-105-1_1.jpg', 320.0000, NULL, N'Jordan 1 Retro High Dark Mocha is a special version of the classic sports shoe line from famous brand Nike. Released in a sophisticated combination of black, brown and white, these shoes exude luxury and modern style.
With a shoe upper made of high-quality leather and artificial materials, the Jordan 1 Retro High Dark Mocha offers high comfort and durability, suitable for both sports activities and everyday use. The product is also equipped with Nike''s advanced Air-Sole technology in the shoe sole, helping to improve elasticity and cushioning for the foot.
With a simple yet personal design, the Jordan 1 Retro High Dark Mocha is a perfect choice to express your personal style and preferences, and is also an indispensable fashion icon in your collection. Collection of shoes for every fashion-loving man and woman.', 9, 0, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (2, N'Jordan 5 Retro Alternate Bel-Air', N'https://i.ebayimg.com/images/g/ccEAAOSwPJRfkfLs/s-l1200.webp', 630.0000, NULL, N'Jordan 5 Retro Alternate Bel-Air is a special version of the legendary sports shoe line from the Nike brand, inspired by the famous television series "The Fresh Prince of Bel-Air".
With bold and unique colors, these shoes combine contrasting shades of purple, green and pink, creating a distinctive and stylish look. The shoe body is made from high-quality leather, combined with mesh and artificial materials, providing good comfort and durability.
The Jordan 5 Retro Alternate Bel-Air is also equipped with advanced features such as Air-Sole technology in the shoe sole, which helps provide good elasticity and cushioning for the foot, while creating a light feeling when walking. transfer. The unique design and versatile combination of colors make these shoes a standout highlight in any footwear collection.', 9, 15, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (3, N'Jordan 4 Retro SE 95 Neon', N'https://cdn.authentic-shoes.com/wp-content/uploads/2023/04/shekoi_1041ab353258404694aeb4b095850902.jpg', 455.0000, NULL, N'Jordan 4 Retro SE 95 Neon is a special version of the classic sports shoe line from the Nike brand, with a strong retro feel and inspiration from the 90s.
With a bold and sophisticated color combination, these shoes use signature neon colors, combined with bold details such as the Jumpman logo and breathable mesh on the upper. High quality leather combined with artificial materials creates comfort and durability for the wearer.
The Jordan 4 Retro SE 95 Neon is also equipped with Nike''s advanced Air-Sole technology in the sole, helping to provide optimal elasticity and cushioning. The unique design and dynamic style make these shoes a perfect choice for those who love sports and unique style.', 9, 34, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (4, N'Jordan 11 Retro Concord (2018)', N'https://upperdeckstore.com/media/catalog/product/cache/cca31960a2955b031df57569d9e7c7f0/1/0/100171-mj-aj-sho-11-concord-wht-sgfg.jpg', 700.0000, NULL, N'Jordan 11 Retro Concord (2018) is a special version of the classic sneaker line from the Nike brand, re-released to commemorate and honor one of the most beloved Air Jordan 11 shoe models of all time. .
With Michael Jordan''s signature design, these shoes use the Concord color scheme - a traditional charcoal purple color in the Air Jordan 11 product line. The shoe body is made from high-quality leather combined with breathable mesh. air, creating comfort and durability.
Jordan 11 Retro Concord (2018) is also equipped with Nike''s advanced Air-Sole technology in the shoe sole, helping to provide optimal elasticity and cushioning for the foot. The design features laces and a rubber outsole that provides exceptional stability and grip, making it suitable for both sports and everyday use. Jordan 11 Retro Concord (2018) is not only a fashion icon but also a cultural icon in the sneaker-loving community.', 9, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (5, N'Jordan 3 Retro Laser Orange (W)', N'https://www.dhresource.com/webp/m/0x0/f2/albu/g21/M00/FC/A4/rBVaqmD2n9mAPUvTAAXE6mzJR2I987.jpg', 250.0000, NULL, N'Jordan 3 Retro Laser Orange (W) is a special version of the legendary sports shoe line from the Nike brand, designed specifically for women.
With a sophisticated combination of white and bright orange, these shoes create a bright and striking appearance. The shoe body is made from high-quality leather combined with breathable mesh, bringing comfort and durability to the wearer.
Jordan 3 Retro Laser Orange (W) is also equipped with Nike''s advanced Air-Sole technology in the shoe sole, helping to provide optimal elasticity and cushioning for the foot. The design features laces and a rubber outsole that provides exceptional stability and grip, making it suitable for both sports and everyday use. The Jordan 3 Retro Laser Orange (W) shoes are not only part of the sneaker collection, but also a symbol of women''s style and individuality.', 9, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (6, N'Nike LD Waffle Sacai White Nylon', N'https://img.fril.jp/img/305939341/l/863093458.jpg', 450.0000, NULL, N'Nike LD Waffle Sacai White Nylon is a special edition in the collaborative shoe line between Nike and Japanese designer Chitose Abe of the Sacai fashion brand.
With a unique combination of design elements from traditional Nike shoe lines and Sacai''s innovative style, these shoes deliver a fresh and unique look.
The upper of the shoe is a combination of high-quality nylon and leather, creating a unique combination of sporty and classy looks. This not only brings comfort but also adds beauty and uniqueness to the shoes.
Nike LD Waffle Sacai White Nylon is also equipped with advanced cushioning technology, providing optimal comfort and support for the foot during use. Designed with two layers of shoe sole and two logos of Nike and Sacai on the sole, creating a modern and unique style. This is a perfect choice for those who love creativity and personalization in the world of fashion footwear.', 1, 27, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (7, N'Nike Air Presto Off-White White (2018)', N'https://www.cruizeer.com/cdn/shop/products/IMG_1045.jpg?v=1618009410&width=1445', 880.0000, NULL, N'Nike Air Presto Off-White White (2018) is a special edition of the Air Presto sneaker line designed by designer Virgil Abloh of the Off-White fashion brand.
These shoes combine Off-White''s modern style with Nike''s signature Air Presto design, creating a unique and stylish product.
With pure white color, these shoes bring sophistication and elegance, easily combined with many different outfits. High-quality fabric and plastic are used in the upper of the shoe, providing comfort and durability throughout use.
Nike Air Presto Off-White White (2018) is also equipped with Nike''s advanced cushioning technology, bringing a smooth and comfortable feeling to the feet. Virgil Abloh''s design with details like laces, logos and materials make this shoe an icon of style and luxury in the sneaker world.', 1, 27, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (8, N'Nike Air Fear of God 1 Oatmeal', N'https://static.nike.com/a/images/t_prod_ss/w_960,c_limit,f_auto/mtjcskq3kqjjdfq0bkrr/air-fear-of-god-1-oatmeal-release-date.jpg', 400.0000, NULL, N'Nike Air Fear of God 1 Oatmeal is a special edition of the collaborative sports shoe line between Nike and designer Jerry Lorenzo of the Fear of God brand. Launched as part of "The Lifestyle Collection", these shoes are full of streetwear and modern style.
The main color of the Nike Air Fear of God 1 Oatmeal is Oatmeal, a gentle and luxurious beige white color. The shoe''s design is often described as simple yet impressive, with a rubber upper and high-quality materials.
The sole of the shoe is designed with advanced cushioning technology, providing comfort and support for the foot. In particular, the laces and intricately designed details create the unique beauty and prominence of the shoes.
The Nike Air Fear of God 1 Oatmeal is not just a sneaker, but also a symbol of style and individuality, reflecting the perfect combination of contemporary design and practicality in everyday life. .', 1, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (9, N'Nike Air Force 1 Low Off-White Volt', N'https://laced.imgix.net/products/5bb44ce4-de81-40eb-a796-184293f96d99.jpg?auto=format&fit=crop&w=1200', 500.0000, NULL, N'The Nike Air Force 1 Low Off-White Volt is a special version of the classic Air Force 1 sports shoe line, a collaboration between Nike and designer Virgil Abloh of the Off-White fashion brand.
With the standout color Volt - a vibrant neon green, these shoes bring a bold and modern look. The shoe body is made from high-quality leather combined with artificial materials, creating diversity and innovation in design.
The Nike Air Force 1 Low Off-White Volt is designed with signature Off-White details such as white laces and insoles with the signature "AIR" and "Off-White for Nike" text. These are symbolic highlights of the cooperation between the two brands.
These shoes are also equipped with Nike''s advanced Air-Sole cushioning technology, which helps provide comfort and good support for the feet. Nike Air Force 1 Low Off-White Volt is not only a pair of sports shoes, but also a symbol of creativity and style among sneakerheads and fashion lovers.', 1, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (10, N'Nike MAG Back to the Future (2011)', N'https://www.christies.com/img/LotImages/2022/NYR/2022_NYR_21784_0012_000(nike_mag_back_to_the_future_2011_nike_2011120726).jpg?mode=max', 930.0000, NULL, N'Nike MAG Back to the Future (2011) is a special and exclusive edition of the Nike MAG sneaker line, created to commemorate the famous movie "Back to the Future II" and its main character Marty McFly. This is one of the sneaker versions with great historical value with a combination of technology and culture.
The Nike MAG Back to the Future (2011) shoes are designed with a special sole, equipped with super powerful automatic technology (Power Laces), like in the movie, making them iconic. Additionally, the shoes feature a reflective design and digital details, accurately recreating the look of the shoe in the film.
Nike produced only a limited number of the Nike MAG Back to the Future (2011), and the auction of these pairs created a huge stir in the sneakerhead community. All proceeds from the auction were donated to Parkinson''s research, an effort honored by Michael J. Fox, who plays Marty McFly, who suffers from the disease. Therefore, Nike MAG Back to the Future (2011) is not just a sneaker, but also a symbol of culture and humanity.', 1, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (11, N'Adidas Yeezy Boost 350 V2 Black Red', N'https://sneakerrequest.com/cdn/shop/products/adidas-yeezy-boost-350-v2-black-red-sneaker-request-sneaker-request-768706.jpg?v=1694611858&width=1080', 200.0000, NULL, N'Adidas Yeezy Boost 350 V2 Black Red is a special version of the Yeezy Boost sports shoe line, a collaboration between Adidas and famous rapper Kanye West.
These shoes are designed with a black upper with red details on the sole and laces, creating a striking contrast. High-quality Primeknit material is used for the upper of the shoe, providing comfort and durability to the wearer.
The Adidas Yeezy Boost 350 V2 Black Red is also equipped with Adidas'' advanced Boost technology in the sole, helping to provide optimal elasticity and cushioning. The simple yet personal and modern design makes this shoe a popular choice among the sneakerhead community and fashion fans.
With the combination of Kanye West''s unique style and Adidas'' advanced technology, the Adidas Yeezy Boost 350 V2 Black Red is not only a fashion product, but also a symbol of luxury and contemporary style. .', 8, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (12, N'Adidas Yeezy 700 Mauve', N'https://sneakerdaily.vn/wp-content/uploads/2024/01/5-388.jpg', 450.0000, NULL, N'Adidas Yeezy 700 Mauve is a special version of the Yeezy 700 sports shoe line, designed by Adidas and famous rapper Kanye West.
These shoes have the Mauve color scheme, a characteristic pale pink purple color, creating a unique and attractive look. The shoe body is made from high-quality suede leather combined with mesh and artificial materials, providing comfort and durability.
The Adidas Yeezy 700 Mauve is equipped with Adidas'' advanced Boost technology in the sole, creating a smooth and comfortable experience for the foot. The design of these shoes with reflective details and distinctive lines makes them very special and easy to identify.
With the combination of Kanye West''s modern style and Adidas'' cutting-edge technology, the Adidas Yeezy 700 Mauve is not only a fashion product, but also a symbol of style and individuality. These shoes are often sought after and highly appreciated among the sneakerhead community and fashion fans.', 8, 34, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (13, N'Adidas Yeezy 700 V3 Azael', N'https://i.ebayimg.com/images/g/uqcAAOSwI7tju8q9/s-l1600.jpg', 300.0000, NULL, N'Adidas Yeezy 700 V3 Azael is a unique and outstanding version of the Yeezy 700 sports shoe line, developed by Adidas and Kanye West.
These shoes have a modern and unique design, with a completely special upper made of transparent mesh material, creating a hi-tech and futurism look. The main color is Azael white, with black and light gray details creating unique highlights.
The Adidas Yeezy 700 V3 Azael has a newly designed sole with EVA technology and Boost cushioning, providing comfort and stability to the wearer. This technology also provides high elasticity and durability throughout use.
These shoes are not only a symbol of style and individuality, but also a prime example of innovation in sneaker design. The Adidas Yeezy 700 V3 Azael is often admired and sought after by both sneaker fans and fashion lovers.', 8, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (14, N'Adidas ZX 10000 C Meissen', N'https://dasbui.com/wp-content/uploads/2021/01/meissen-adidas-originals-zx-10000-c-porcelain-vase-a-zx-series-limited-edition-collaboration-1.jpg', 500.0000, NULL, N'The Adidas ZX 10000 C Meissen is a special edition of the Adidas ZX 10000 C sports shoe line, the result of a collaboration between Adidas and the famous ceramic manufacturer Meissen.
These shoes are equipped with unique and premium details, representing a fusion between the worlds of sneakers and ceramic art. The shoe body is made from high quality materials, with sophisticated pattern details printed or embroidered on the surface.
Adidas ZX 10000 C Meissen often has a rich and sophisticated color, combined with unique details and patterns, creating a luxurious and classy appearance. The sole of the shoe is often designed with Adidas'' advanced cushioning technology, providing comfort and stability to the wearer.
These shoes are not only a fashion product, but also a symbol of the combination of art and sports design. Adidas ZX 10000 C Meissen are often appreciated by fashion lovers and shoe collectors for their uniqueness and quality.', 8, 33, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (15, N'Adidas Superstar Sean Wotherspoon', N'https://cdn.authentic-shoes.com/wp-content/uploads/2023/04/fz4724_71580a0083da4a1a906801316d2a4e31.jpg', 200.0000, NULL, N'Adidas Superstar Sean Wotherspoon released in December 2021. These shoes reflect Sean Wotherspoon''s personal style, with creative details and rich colors. Its design combines uniqueness and practicality, creating a new look for the traditional Superstar product line.
Highlights of the Adidas Superstar Sean Wotherspoon include the use of recycled materials and details like his previous shoes. The combination of sustainable ideas and unique style has created a special and highly anticipated release among sneaker fans.', 8, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (16, N'Vans Old Skool Yacht Club', N'https://vn-test-11.slatic.net/p/334fd22f7166fc5b1c77bd20d1f29704.jpg', 347.0000, NULL, N'Vans Old Skool Yacht Club is a special edition of the classic Vans Old Skool sneaker line, imbued with personal and creative style.
These shoes are designed with a unique combination of bright and fun colors, including blue, yellow, red, and green. The shoe body is made from high quality canvas material, along with suede leather on the toe box and back, creating diversity and personality for the shoe''s appearance.
The Vans Old Skool Yacht Club retains the traditional Vans waffle sole, providing good grip and durability. This is a popular pair of sports shoes, easy to combine with many different types of outfits, from casual to streetwear.
With its unique combination of colors and styles, Vans Old Skool Yacht Club is a perfect choice for those who love creativity and personalization in the world of sports footwear.', 10, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (17, N'Vans Old Skool Notre Blue', N'https://sneakerdaily.vn/wp-content/uploads/2022/12/giay-vans-notre-x-og-style-36-lx-blue-vn0a4bveblu-1.jpg.webp', 283.0000, NULL, N'Vans Old Skool Notre Blue can be described as a unique version of Vans Old Skool shoes with the main color being blue. The shoe body can be made from canvas or suede, depending on the specific version. The "Vans" logo is printed or embroidered on the surface of both sides of the shoe.
As for the shoe''s sole, it can be made from rubber and has Vans'' signature waffle pattern, providing good grip and durability on many surfaces.
The outside of the shoe can have details such as laces, tongue placement, and the toe box can have special details or be made from different materials, creating variety and applicability for the design. next.', 10, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (18, N'Vans Sk8-Hi MoMA Lyubov Popova', N'https://images.vegnonveg.com/resized/700X573/3941/ua-sk8-hi-moma-lyubov-popova-6077b77e2d400.jpg', 100.0000, NULL, N'The identifying feature of the Vans SK8-Hi lies in the signature Jazz stripes and three white lines appearing on the shoe collar to help increase aesthetics. The shoe collar is also integrated with soft padding to help limit impact during exercise. The shoe body is made from soft, lightweight Canvas fabric with an extremely dynamic ankle-hugging form.', 10, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (19, N'Vans Era U-Color Floral', N'https://i5.walmartimages.com/asr/13ac360c-81c1-405d-85c8-305342f8bf21.84cfa0818793f1154e430b6a367d0745.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF', 50.0000, NULL, N'The "Vans Era U-Color Floral" version could be a special edition of the Vans Era shoe line. Often, Vans'' "U-Color" releases allow users to create their own colors and patterns for their shoes, providing a customized and creative experience.
The "Floral" in the name may refer to floral patterns, motifs, or floral-related designs. This can be part of the shoe''s upper design, giving it a vibrant and fashionable look', 10, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (20, N'Vans Old Skool Sandy Liang', N'https://bizweb.dktcdn.net/100/140/774/files/vans-x-sandy-liang-12.jpg?v=1582608425511', 130.0000, NULL, N'Vans Old Skool Sandy Liang is a special edition of the classic Vans Old Skool sneaker line, a collaboration between Vans and famous fashion designer Sandy Liang.
These shoes feature Sandy Liang''s creative and unique style, combined with the classic Vans Old Skool look. Designs can include special details such as fur panels, patterns or logos recreated in Sandy Liang''s style.
The colors and patterns of the Vans Old Skool Sandy Liang can be tweaked to reflect the designer''s style and creativity, creating a unique and striking look for the shoe.
The Vans Old Skool Sandy Liang is often one of the sought-after shoe releases, especially by those who love fashion and creative personal style. This is a perfect choice for those who want to own a pair of shoes that are both classic and unique.', 10, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (21, N'Converse Hi Comme des Garcons PLAY White', N'https://censor.vn/wp-content/uploads/2022/01/5-giay-converse-comme-des-garcons-x-chuck-taylor-all-star-hi-play-150204c.jpeg', 198.0000, NULL, N'Converse Hi Comme des Garcons PLAY White is a special version of the Converse Chuck Taylor All Star shoe line, a collaboration between Converse and fashion brand Comme des Garcons PLAY.
These shoes are usually pure white and simple, but are enhanced with uniqueness by Comme des Garcons PLAY''s signature heart logo, printed or embroidered on the surface of both sides of the shoe.
Converse Hi Comme des Garcons PLAY White usually has a shoe upper made from high-quality canvas material, along with Converse''s traditional rubber sole, providing comfort and durability throughout the period of use.
These shoes are often a popular choice among the fashion community, especially fans of the Comme des Garcons PLAY brand. The combination of Converse''s classic style and Comme des Garcons PLAY''s personal style creates a rich and unique product in the world of footwear.', 11, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (22, N'Converse Hi Fear Of God Black Natural', N'https://vn-test-11.slatic.net/p/b859fcd1c9074853c7c50362edab8b46.jpg', 216.0000, NULL, N'Converse Hi Fear Of God Black Natural is a special edition of the Converse Chuck Taylor All Star shoe line, the result of a collaboration between Converse and fashion brand Fear Of God.
These shoes typically come in a basic black colorway, combined with light natural or white details, creating a minimalist yet chic look. The shoe body is often made from high-quality materials such as leather or canvas, along with Fear Of God brand details delicately integrated on the shoe surface.
The Converse Hi Fear Of God Black Natural typically features a modern and stylish design, representing a fusion of Converse''s sporty style and the high-end streetwear style of Fear Of God. These shoes are often highly appreciated for both their fashion and applicability in many different situations.', 11, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (23, N'Converse Hi Lay Zhang', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/170624c-3.jpg', 101.0000, NULL, N'Converse is a famous shoe brand that offers a variety of footwear, including sneakers, boots, and sandals. The brand is best known for Chuck Taylors, a classic pair of sneakers produced since the 1920s. Lay Zhang is a Chinese rapper and singer known for his catchy songs. and the performance was full of energy. The description refers to a style of Vietnamese brushwork often made of natural materials such as bamboo, jute or silk. It is often used for calligraphy and other traditional art forms.', 11, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (24, N'Converse Hi Offspring Paisley Black', N'https://cdn.modesens.com/media/98163004?w=400', 170.0000, NULL, N'Converse Hi Offspring Paisley Black is a special edition of the Converse Chuck Taylor All Star shoe line, created through a collaboration between Converse and Offspring shoe store.
These shoes come in a basic black colorway, with an intricate Paisley pattern printed across the entire upper, creating a unique and interesting look.
The upper of the shoe is made from high-quality canvas material, providing comfort and durability. The classic Converse logo is placed on the side and upper of the shoe.
The Converse Hi Offspring Paisley Black typically has a modern and stylish design, representing a combination of the traditional beauty of Converse and the creative element of the Offspring store. This is a popular choice for those who love personal and unique style.', 11, 35, 0)
INSERT [dbo].[Product] ([pID], [pName], [image], [price], [title], [description], [cID], [pAmount], [isDeleted]) VALUES (25, N'Converse Run Star Hike Hi JW Anderson Black', N'https://tyhisneaker.com/wp-content/uploads/2022/10/giay-converse-run-star-hike-hi-jw-anderson-black-dep-chat.jpeg', 335.0000, NULL, N'Converse Run Star Hike Hi JW Anderson Black is a special edition of the Converse Run Star Hike shoe line, developed through a collaboration between Converse and famous fashion designer JW Anderson.
These shoes often have a unique and modern design, with the shoe body made from high-quality black leather or fabric. The special thing is that the sole of the shoe is designed with increased height, creating a strong and personal appearance.
The sole of the shoe is designed with spikes and spikes, creating a wild and unique style. The logos of both brands, Converse and JW Anderson, are often placed in a special position on the shoe, further highlighting the uniqueness of this release.
The Converse Run Star Hike Hi JW Anderson Black is often admired by fashion fans and is a popular choice among the sneakerhead community, thanks to its combination of personal style and groundbreaking design.', 11, 26, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Size] ([sizeID], [sizevalue]) VALUES (1, 37)
INSERT [dbo].[Size] ([sizeID], [sizevalue]) VALUES (2, 38)
INSERT [dbo].[Size] ([sizeID], [sizevalue]) VALUES (3, 39)
INSERT [dbo].[Size] ([sizeID], [sizevalue]) VALUES (4, 40)
INSERT [dbo].[Size] ([sizeID], [sizevalue]) VALUES (5, 41)
INSERT [dbo].[Size] ([sizeID], [sizevalue]) VALUES (6, 42)
INSERT [dbo].[Size] ([sizeID], [sizevalue]) VALUES (7, 43)
GO
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 1, 0)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 1, 0)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 1, 0)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 1, 0)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 1, 0)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 1, 0)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 1, 0)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 2, 3)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 2, 2)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 2, 2)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 2, 0)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 2, 3)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 2, 2)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 2, 3)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 3, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 3, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 3, 4)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 3, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 3, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 3, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 3, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 4, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 4, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 4, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 4, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 4, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 4, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 4, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 5, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 5, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 5, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 5, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 5, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 5, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 5, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 6, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 6, 3)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 6, 2)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 6, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 6, 3)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 6, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 6, 4)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 7, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 7, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 7, 4)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 7, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 7, 3)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 7, 2)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 8, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 8, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 8, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 8, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 8, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 8, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 8, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 9, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 9, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 9, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 9, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 9, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 9, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 9, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 10, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 10, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 10, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 10, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 10, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 10, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 10, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 11, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 11, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 11, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 11, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 11, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 11, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 11, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 12, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 12, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 12, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 12, 4)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 12, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 12, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 12, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 13, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 13, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 13, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 13, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 13, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 13, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 13, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 14, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 14, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 14, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 14, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 14, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 14, 3)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 14, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 15, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 15, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 15, 5)
GO
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 15, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 15, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 15, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 15, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 16, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 16, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 16, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 16, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 16, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 16, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 16, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 17, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 17, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 17, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 17, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 17, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 17, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 17, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 18, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 18, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 18, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 18, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 18, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 18, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 18, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 19, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 19, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 19, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 19, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 19, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 19, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 19, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 20, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 20, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 20, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 20, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 20, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 20, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 20, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 21, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 21, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 21, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 21, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 21, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 21, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 21, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 22, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 22, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 22, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 22, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 22, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 22, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 22, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 23, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 23, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 23, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 23, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 23, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 23, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 23, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 24, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 24, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 24, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 24, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 24, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 24, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 24, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (1, 25, 1)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (2, 25, 2)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (3, 25, 3)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (4, 25, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (5, 25, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (6, 25, 5)
INSERT [dbo].[SizeDetail] ([sizeID], [pID], [quantity]) VALUES (7, 25, 5)
GO
SET IDENTITY_INSERT [dbo].[SubImage] ON 

INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (5, 2, N'https://sneakerdaily.vn/wp-content/uploads/2021/03/Giay-nam-Air-Jordan-5-Retro-Alternate-Bel-Air-DB3335-100.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (6, 2, N'https://theseeker.vn/storage/products/jordan-5-retro-alternate-bel-air-ps-0.png')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (7, 2, N'https://m.media-amazon.com/images/I/71pc5PBnTBS._AC_UY300_.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (8, 2, N'https://dropinblog.net/34240971/files/featured/Jordan_5_Retro_Alternate_Bel_Air_1.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (9, 3, N'https://sneakerdaily.vn/wp-content/uploads/2021/06/Giay-nu-Air-Jordan-4-Retro-SE-Neon-95-GS-CT5343-007.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (10, 3, N'https://cdn.authentic-shoes.com/wp-content/uploads/2023/04/529864_01.jpg_a96ad48b7b914b759818c5598605d978.jpeg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (11, 3, N'https://sneakerdaily.vn/wp-content/uploads/2021/06/Giay-nu-Air-Jordan-4-Retro-SE-Neon-95-GS-CT5343-007..jpg.webp')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (12, 3, N'https://whatsyoursize.co.uk/cdn/shop/products/air-jordan-4-retro-se-neon-ct5342-007_3_1000x1000_31c60440-f39d-42e9-b757-dfadf2cb2fec-953190_800x.jpg?v=1705080481')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (13, 4, N'https://cdn.authentic-shoes.com/wp-content/uploads/2023/04/351614_01.jpg_cef4cc8e67bc4f64b276fe060c40f395.jpeg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (14, 4, N'https://m.media-amazon.com/images/I/412z1+pyISL._AC_SY300_.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (15, 4, N'https://cdn-images.farfetch-contents.com/13/55/56/67/13555667_21559181_600.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (16, 4, N'https://i.pinimg.com/736x/9e/dc/08/9edc082b866ca383ba17c7fcad2eb45f.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (17, 5, N'https://images.stockx.com/images/Air-Jordan-3-Retro-Laser-Orange-W-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1606316857')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (18, 5, N'https://kickclusivenj.com/cdn/shop/products/yellow.png?v=1594927936')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (19, 5, N'https://sneakerdaily.vn/wp-content/uploads/2021/05/giay-wmns-air-jordan-3-retro-laser-orange-ck9246-108-9.jpg.webp')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (20, 5, N'https://sneakernews.com/wp-content/uploads/2020/06/air-jordan-3-retro-womens-white-laser-orange-CK9246-108-1.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (21, 6, N'https://cdn.authentic-shoes.com/wp-content/uploads/2023/05/Nike-LD-Waffle-Sacai-White-Nylon.png')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (22, 6, N'https://bizweb.dktcdn.net/thumb/grande/100/453/999/products/12a1.jpg?v=1653077771593')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (23, 6, N'https://www.favsole.com/images/2019/12/Buy-sacai-x-Nike-LDWaffle-White-Nylon-BV0073-101-Online-5.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (24, 6, N'https://justshopyourshoes.nl/cdn/shop/products/Nike_LD_Waffle_Sacai_White_Nylon_Request_706x.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (25, 9, N'https://cdn.authentic-shoes.com/wp-content/uploads/2023/04/465737_01.jpg_3b65c5b28b7d441db769bd748d223c4c.jpeg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (26, 9, N'https://product.hstatic.net/200000456445/product/xity.vn_products_giay-nike-air-force-1-low-off-white-volt-a04606-700-1_4e4fce12c3c0441f8e1d57d06b21080c_master.jpeg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (27, 9, N'https://images.prom.ua/3232343695_w640_h640_nike-air-force.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (28, 9, N'https://product.hstatic.net/200000456445/product/xity.vn_products_giay-nike-air-force-1-low-off-white-volt-a04606-700-6_d7c3a568a2f94ac8bbf0d92121904f41.jpeg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (29, 10, N'https://images.stockx.com/images/Nike-Air-Mag-Back-To-The-Future-BTTF-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1648065975')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (30, 10, N'https://shezamme.com/wp-content/uploads/2023/10/IMG_5847.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (31, 10, N'https://www.dhresource.com/webp/m/0x0/f2/albu/g18/M01/54/45/rBVapWAw2l-AHtH6AANqMh86Jcs965.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (32, 10, N'https://lh3.googleusercontent.com/proxy/Xn9oWxcvTFNPyuX88HsBblIIjfjd_FfCL2uMvGY8_jLGNQM3oNKHJ7wxsFQOxB8zE3vZy6oeFJQuLfgkVoPkjfYS6ocucz49sTGSll1nog')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (33, 11, N'https://cdn.authentic-shoes.com/wp-content/uploads/2023/04/adidas-yeezy-boost-350-v2-core-black-red-product_771a3e918a904825985a0f128d577519.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (34, 11, N'https://sneakerdaily.vn/wp-content/uploads/2020/12/Giay-Yeezy-Boost-350-V2-%E2%80%98Bred-CP9652.jpg.webp')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (35, 11, N'https://sneakerdaily.vn/wp-content/uploads/2022/09/2039fcb2ff3a5cebc6ced7a64be1d82b.png')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (36, 11, N'https://giaygiare.vn/upload/sanpham/large/su-tro-lai-cua-adidas-yeezy-350-black-red-tai-viet-nam.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (37, 12, N'https://authentic-shoes.com/wp-content/uploads/2023/04/386481_01.jpg_565ea4c5642b4af89b99049cbc0cb93c.jpeg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (38, 12, N'https://theseeker.vn/storage/products/adidas-yeezy-boost-700-mauve-1.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (39, 12, N'https://i.ebayimg.com/images/g/KcgAAOSwFsVkMg8Z/s-l1200.webp')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (40, 12, N'https://i.pinimg.com/1200x/5b/4e/59/5b4e5993abf425f09c0eef2d133c3838.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (41, 13, N'https://giayrep.vn/wp-content/uploads/2020/04/adidas-Yeezy-700-V3-Azael.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (42, 13, N'https://giaysneakerhcm.com/wp-content/uploads/2021/07/giay-yeezy-700-v3-azael-trang.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (43, 13, N'https://i.ebayimg.com/images/g/gM8AAOSwVNdk-Msj/s-l1200.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (44, 13, N'https://dropinblog.net/34240971/files/featured/Adidas_Yeezy_700_V3_Azael.png')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (45, 14, N'https://cdn-images.farfetch-contents.com/16/61/55/04/16615504_32504206_300.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (46, 14, N'https://cdn.shopify.com/s/files/1/0473/6965/0340/products/95f70019051dd6c96ce77a49c375f45a5752ab92_Adidas_ZX_10_000_C_Meissen_Footwear_White_Footweat_White_Footweat_White_FZ4888_1_neu_768x768.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (47, 14, N'https://www.kicksonfire.com/wp-content/uploads/2020/11/meissen-adidas-zx-10000-c-6.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (48, 14, N'https://www.sneakers-actus.fr/wp-content/uploads/2020/12/Adidas-x-Meissen-ZX-10000C-AZX-Floral-MIG-FZ4888.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (49, 15, N'https://bizweb.dktcdn.net/thumb/1024x1024/100/413/335/products/duyet-fashion-sean-wotherspoon-x-adidas-superstar-super-earth-fz4724-1.jpg?v=1623107673653')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (50, 15, N'https://cdn.snkrdunk.com/uploads/media/20200819014013-0.jpeg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (51, 15, N'https://image.sneakerwars.jp/images/11870/larges/Sean-Wotherspoon-adidas-SuperEarth-FZ4724-top.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (52, 15, N'https://cdn.snkrdunk.com/uploads/230917/20201101083159-0.jpeg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (53, 16, N'https://theseeker.vn/storage/products/vans-old-skool-yacht-club-0.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (54, 16, N'https://theseeker.vn/storage/products/vans-old-skool-yacht-club-1.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (55, 16, N'https://down-vn.img.susercontent.com/file/9a3987eeb3a32f6902ceddddf7ef5b0c')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (56, 16, N'https://i.ebayimg.com/images/g/jYIAAOSwB8BfxILd/s-l400.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (57, 17, N'https://images.stockx.com/images/Vans-Old-Skool-Notre-Blue-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1607013288')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (58, 17, N'https://img.stadiumgoods.com/16/15/79/85/16157985_43107380_800.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (59, 17, N'https://bizweb.dktcdn.net/100/140/774/files/su-gan-bo-cua-the-vault-va-notre-duoc-the-hien-dac-sac-cua-vans-og-old-skool-lx-2.jpg?v=1611125947062')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (60, 17, N'https://pbs.twimg.com/media/E9lj_QoXEAQvHf7.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (61, 18, N'https://orchardshop.com/cdn/shop/products/Vans-Sk8-Hi-Skate_1500x.jpg?v=1627498514')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (62, 18, N'https://media.karousell.com/media/photos/products/2021/10/21/vans_x_moma_sk8hi_lyubov_popov_1634817295_aa7f588b_progressive.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (63, 18, N'https://static.wixstatic.com/media/f7c871_011bce4bf72f4765890666a674711cde~mv2.png/v1/fill/w_520,h_624,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/f7c871_011bce4bf72f4765890666a674711cde~mv2.png')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (64, 18, N'https://cdn.shopify.com/s/files/1/1374/2665/products/detail_1548205_48_500.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (65, 19, N'https://images.stockx.com/images/Vans-Era-U-Color-Floral.png?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1626898129')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (66, 19, N'https://img.stadiumgoods.com/vans-era-u-color_15823045_43115441_1000.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (67, 19, N'https://media.karousell.com/media/photos/products/2023/2/28/vans_era_ucolor_floral_1677558925_1af803ad_progressive.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (68, 19, N'https://cdn.authentic-shoes.com/wp-content/uploads/2023/04/eng_pl_vans-ua-era-vn0a4u391uh-32549_1_c89d66ba931645e39f51560a7f517b95.png')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (69, 20, N'https://bizweb.dktcdn.net/thumb/1024x1024/100/140/774/products/vans-x-sandy-liang-old-skool-delancey-true-white-vn0a4u3bxf5-1.jpg?v=1590758870510')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (70, 20, N'https://i.ebayimg.com/images/g/tUMAAOSwn3hkSzkt/s-l1200.webp')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (71, 20, N'https://static.ftshp.digital/img/p/2/4/9/4/0/1/249401-full_product.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (72, 20, N'https://assets.vogue.com/photos/5e272f746a5c9e0008ecde87/16:9/w_2580,c_limit/69_SP20_SandyLiang_Lifestyle_19_005.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (73, 21, N'https://conversestore.vn/wp-content/uploads/2021/08/1-25.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (74, 21, N'https://www.aphrodite1994.com/media/catalog/product/cache/3423d07ab76478e1296bbfab2f5b7c2e/c/d/cdg-converse-white-25440-01-dl_1.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (75, 21, N'https://www.comme-des-garcons.de/cdn/shop/products/P1K112-2-PLAYCDGCONVERSEHIGHTOPWHITE-ViewBAerial_1200x1200.jpg?v=1584832905')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (76, 21, N'https://saigonsneaker.com/wp-content/uploads/2019/11/converse-1970s-saigonsneaker-53.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (77, 22, N'https://theseeker.vn/storage/products/converse-chuck-taylor-all-star-70-hi-fear-of-god-black-natural-0.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (78, 22, N'https://theseeker.vn/storage/products/converse-chuck-taylor-all-star-70-hi-fear-of-god-black-natural-1.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (79, 22, N'https://www.jordan1.vn/wp-content/uploads/2023/09/8d7090b4-2eb4-40de-b5f9-3fea4fac110b-4d309cb5072f2bc364fe0a1524f1f9e6_b452f0cf285a48608251b47cfe2064fc.png')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (80, 22, N'https://ph-live-01.slatic.net/p/0ec6a83d78be7d74fe471d4c2ba54b37.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (81, 23, N'https://cdn.authentic-shoes.com/wp-content/uploads/2023/04/lay-zhang-chuck-70-1_963585d5f67c42729c9f2e7144bbb28a_1024x1024_6fd68262e0804d8e8d8c32f8c46b3401.png')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (82, 23, N'https://www.kickscrew.com/cdn/shop/products/main-square_4c458393-6fca-4c97-8b91-c12a7ec991f2_grande.jpg?v=1695613486')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (83, 23, N'https://down-id.img.susercontent.com/file/461896e737c3207ad4f612014b9b2ac5')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (84, 23, N'https://cdn.authentic-shoes.com/wp-content/uploads/2023/04/image_-_2021-11-06t141449.360_e5e267943359464f89a3d0fbe35f0a93.png')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (85, 24, N'https://theseeker.vn/storage/products/converse-chuck-taylor-all-star-70-hi-offspring-paisley-black-0.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (86, 24, N'https://theseeker.vn/storage/products/converse-chuck-taylor-all-star-70-hi-offspring-paisley-black-1.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (87, 24, N'https://cdn.authentic-shoes.com/wp-content/uploads/2023/04/offspring-x-convere-chuck-70-high-paisley-patchwork-black-multi-color_3bcae5563b754bc88adb04924a5eb779.png')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (88, 24, N'https://i.ebayimg.com/images/g/JxEAAOSw-hliG8Bc/s-l400.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (89, 25, N'https://product.hstatic.net/200000265619/product/166800c-01-web_9800680a392c4d86888f6a784b3fc7ed_grande.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (90, 25, N'https://www.snipes.es/dw/image/v2/BDCB_PRD/on/demandware.static/-/Sites-snse-master-eu/default/dwe8deefbf/2140038_P.jpg?sw=780&sh=780&sm=fit&sfrm=png')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (91, 25, N'https://1sneaker.vn/wp-content/uploads/2022/06/giay-converse-run-star-hike-hi-Jw-anderson-black-ban-dep-scaled.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (92, 25, N'https://i.ebayimg.com/images/g/NNUAAOSwUtJiNb5X/s-l1200.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (93, 7, N'https://images.stockx.com/images/Nike-Air-Presto-Off-White-White-2018-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1606325159')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (94, 7, N'https://cdn.filestackcontent.com/1RqcXysNQziRu0Y5lXIR')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (95, 7, N'https://i.ebayimg.com/images/g/-~oAAOSwpKFlE21E/s-l1600.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (96, 7, N'https://ofour.com/wp-content/uploads/2018/08/off-white-1.jpg')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (97, 8, N'https://cdn.authentic-shoes.com/wp-content/uploads/2023/04/554256_01.jpg_1bf7c9c81c3a40029683caa9aa75ef62.png')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (98, 8, N'https://sneakerdaily.vn/wp-content/uploads/2021/05/giay-nam-nike-air-fear-of-god-1-oatmeal-ar4237-900-11.png')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (99, 8, N'https://img.buzzfeed.com/buzzfeed-static/complex/images/Y19jcm9wLGhfMTEyNSx3XzIwMDAseF8wLHlfNDk5/vycds8yvpa23txei53oo/nike-air-fear-of-god-sa-light-bone-black-at9915-002-pair.jpg?output-format=jpg&output-quality=auto')
INSERT [dbo].[SubImage] ([subImageID], [pID], [SImage]) VALUES (100, 8, N'https://5.imimg.com/data5/ANDROID/Default/2021/3/IW/NV/JM/16516658/product-jpeg-250x250.jpg')
SET IDENTITY_INSERT [dbo].[SubImage] OFF
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD  CONSTRAINT [FK_Brand_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[Brand] CHECK CONSTRAINT [FK_Brand_Product]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Size] FOREIGN KEY([sizeID])
REFERENCES [dbo].[Size] ([sizeID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Size]
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Favorite] CHECK CONSTRAINT [FK_Favorite_Account]
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[Favorite] CHECK CONSTRAINT [FK_Favorite_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Size] FOREIGN KEY([sizeID])
REFERENCES [dbo].[Size] ([sizeID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Size]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([cID])
REFERENCES [dbo].[Category] ([cID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[SizeDetail]  WITH CHECK ADD  CONSTRAINT [FK_sizeDetail_Product] FOREIGN KEY([pID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[SizeDetail] CHECK CONSTRAINT [FK_sizeDetail_Product]
GO
ALTER TABLE [dbo].[SizeDetail]  WITH CHECK ADD  CONSTRAINT [FK_sizeDetail_Size] FOREIGN KEY([sizeID])
REFERENCES [dbo].[Size] ([sizeID])
GO
ALTER TABLE [dbo].[SizeDetail] CHECK CONSTRAINT [FK_sizeDetail_Size]
GO
ALTER TABLE [dbo].[SubImage]  WITH CHECK ADD  CONSTRAINT [FK_SubImage_Product] FOREIGN KEY([pID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[SubImage] CHECK CONSTRAINT [FK_SubImage_Product]
GO
ALTER TABLE [dbo].[Type]  WITH CHECK ADD  CONSTRAINT [FK_Type_Brand] FOREIGN KEY([brandID])
REFERENCES [dbo].[Brand] ([brandID])
GO
ALTER TABLE [dbo].[Type] CHECK CONSTRAINT [FK_Type_Brand]
GO
USE [master]
GO
ALTER DATABASE [Project_KiAShop5] SET  READ_WRITE 
GO
