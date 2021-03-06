USE [master]
GO
/****** Object:  Database [LiquorStores]    Script Date: 12/27/2021 8:40:38 PM ******/
CREATE DATABASE [LiquorStores]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LiquorStores', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\LiquorStores.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LiquorStores_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\LiquorStores_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LiquorStores] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LiquorStores].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LiquorStores] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LiquorStores] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LiquorStores] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LiquorStores] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LiquorStores] SET ARITHABORT OFF 
GO
ALTER DATABASE [LiquorStores] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LiquorStores] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LiquorStores] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LiquorStores] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LiquorStores] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LiquorStores] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LiquorStores] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LiquorStores] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LiquorStores] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LiquorStores] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LiquorStores] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LiquorStores] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LiquorStores] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LiquorStores] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LiquorStores] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LiquorStores] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LiquorStores] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LiquorStores] SET RECOVERY FULL 
GO
ALTER DATABASE [LiquorStores] SET  MULTI_USER 
GO
ALTER DATABASE [LiquorStores] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LiquorStores] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LiquorStores] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LiquorStores] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LiquorStores] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LiquorStores] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LiquorStores', N'ON'
GO
ALTER DATABASE [LiquorStores] SET QUERY_STORE = OFF
GO
USE [LiquorStores]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/27/2021 8:40:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatHang]    Script Date: 12/27/2021 8:40:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan_ID] [int] NULL,
	[KhachHang_ID] [int] NULL,
	[DienThoaiGiaoHang] [nvarchar](255) NULL,
	[DiaChiGiaoHang] [nvarchar](255) NULL,
	[NgayDatHang] [datetime] NULL,
	[TinhTrang] [smallint] NULL,
	[NgayXacNhan] [datetime] NULL,
	[DuKienNgayNhan] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatHang_ChiTiet]    Script Date: 12/27/2021 8:40:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang_ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DatHang_ID] [int] NULL,
	[SanPham_ID] [int] NULL,
	[SoLuong] [smallint] NULL,
	[DonGia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 12/27/2021 8:40:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/27/2021 8:40:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](255) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SoDienThoai] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[TenDangNhap] [nvarchar](255) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[Mail] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 12/27/2021 8:40:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiSanXuat]    Script Date: 12/27/2021 8:40:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiSanXuat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[XuatXu] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/27/2021 8:40:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Loai_ID] [int] NULL,
	[Hang_ID] [int] NULL,
	[NoiSanXuat_ID] [int] NULL,
	[TenSanPham] [nvarchar](255) NULL,
	[NongDoCon] [text] NULL,
	[TheTich] [text] NULL,
	[NgayNhap] [datetime] NULL,
	[DonGia] [int] NULL,
	[SoLuong] [int] NULL,
	[MoTa] [nvarchar](255) NULL,
	[HinhAnhBia] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/27/2021 8:40:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ChucVu] [int] NOT NULL,
	[HoTen] [nvarchar](255) NOT NULL,
	[TenDangNhap] [nvarchar](255) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[SoDienThoai] [nvarchar](255) NOT NULL,
	[HinhAnhBia] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DatHang] ON 

INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (1, NULL, 1, N'0944444444', N'Long Xuyên', CAST(N'2021-06-06T23:00:38.363' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (2, NULL, 1, N'0944444444', N'Long Xuyên', CAST(N'2021-06-06T23:43:56.877' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (3, NULL, 1, N'0944444444', N'Long Xuyên', CAST(N'2021-06-08T12:59:07.540' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (4, NULL, 4, N'0944444444', N'Long Xuyên', CAST(N'2021-06-08T13:53:26.170' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (5, NULL, 1, N'0944444444', N'Long Xuyên', CAST(N'2021-06-08T14:03:52.280' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (6, NULL, 1, N'0796645799', N'An Giang', CAST(N'2021-12-15T20:06:40.967' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (7, NULL, 1, N'0796645799', N'An Giang', CAST(N'2021-12-15T20:08:16.173' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (8, NULL, 1, N'0796645799', N'An Giang', CAST(N'2021-12-15T20:14:38.870' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (9, NULL, 1, N'0796645799', N'Long Xuyên', CAST(N'2021-12-15T20:20:15.527' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (10, NULL, 1, N'0796645798', N'Long Xuyên', CAST(N'2021-12-15T20:36:54.180' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (11, NULL, 1, N'0796645797', N'Đồng Tháp', CAST(N'2021-12-15T20:40:37.317' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (12, NULL, 1, N'0796645796', N'Cam Pu Chia', CAST(N'2021-12-15T20:42:17.113' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (13, NULL, 1, N'0796645789', N'Cà Mau', CAST(N'2021-12-15T20:44:38.373' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (14, NULL, 1, N'0796645733', N'LA', CAST(N'2021-12-15T20:47:18.730' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (15, 1, 1, N'0796643456', N'Cần Thơ', CAST(N'2021-12-15T20:52:58.493' AS DateTime), 2, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (16, NULL, 1, N'0796645722', N'An Giang', CAST(N'2021-12-15T21:12:17.023' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (17, NULL, 1006, N'0796645799', N'Long Xuyên', CAST(N'2021-12-23T17:42:31.767' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (18, NULL, 1, N'0796645799', N'Cần Thơ', CAST(N'2021-12-25T13:23:29.093' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (19, NULL, 1, N'0796645798', N'Cần Thơ', CAST(N'2021-12-25T13:35:37.363' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (20, NULL, 1, N'0796645798', N'Cần Thơ', CAST(N'2021-12-25T13:37:23.463' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (21, NULL, 1, N'0373856186', N'Long Xuyên', CAST(N'2021-12-25T13:39:11.777' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (22, NULL, 1, N'0373856186', N'Long Xuyên', CAST(N'2021-12-25T13:40:31.353' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (23, NULL, 1, N'0373856186', N'Long Xuyên', CAST(N'2021-12-25T13:41:08.693' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (24, NULL, 1, N'0373856186', N'Long Xuyên', CAST(N'2021-12-25T13:41:40.543' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DatHang] ([ID], [TaiKhoan_ID], [KhachHang_ID], [DienThoaiGiaoHang], [DiaChiGiaoHang], [NgayDatHang], [TinhTrang], [NgayXacNhan], [DuKienNgayNhan]) VALUES (25, NULL, 1, N'0373856186', N'Long Xuyên', CAST(N'2021-12-25T13:42:47.727' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DatHang_ChiTiet] ON 

INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (1, 6, 2, 1, 3000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (2, 7, 2, 1, 3000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (3, 8, 2, 1, 3000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (4, 9, 2, 1, 3000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (5, 10, 2, 2, 3000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (6, 11, 4, 1, 1000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (7, 12, 4, 1, 1000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (8, 13, 6, 1, 1200000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (9, 14, 6, 1, 1200000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (10, 15, 4, 1, 1000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (11, 15, 6, 1, 1200000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (12, 16, 4, 1, 1000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (13, 17, 3, 1, 1000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (14, 18, 4, 1, 1000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (15, 18, 3, 1, 1000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (16, 19, 4, 1, 1000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (17, 20, 2, 1, 3000000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (18, 21, 6, 1, 1200000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (19, 22, 6, 1, 1200000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (20, 23, 1002, 1, 2500000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (21, 24, 7, 1, 1400000)
INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [SanPham_ID], [SoLuong], [DonGia]) VALUES (22, 25, 1002, 1, 2500000)
SET IDENTITY_INSERT [dbo].[DatHang_ChiTiet] OFF
GO
SET IDENTITY_INSERT [dbo].[Hang] ON 

INSERT [dbo].[Hang] ([id], [TenHang]) VALUES (1, N'Wishkey Scotland')
INSERT [dbo].[Hang] ([id], [TenHang]) VALUES (2, N'Chateau')
INSERT [dbo].[Hang] ([id], [TenHang]) VALUES (3, N'Cognac')
INSERT [dbo].[Hang] ([id], [TenHang]) VALUES (4, N'Gin')
INSERT [dbo].[Hang] ([id], [TenHang]) VALUES (5, N'Sake')
INSERT [dbo].[Hang] ([id], [TenHang]) VALUES (6, N'Sherry')
INSERT [dbo].[Hang] ([id], [TenHang]) VALUES (7, N'Gò Công')
SET IDENTITY_INSERT [dbo].[Hang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([ID], [HoTen], [NgaySinh], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [Mail]) VALUES (1, N'Trần Quốc Đạt', CAST(N'2021-06-06' AS Date), N'0373856186', N'Long Xuyên', N'user', N'da4b9237bacccdf19c0760cab7aec4a8359010b0', N'a@gmail.com')
INSERT [dbo].[KhachHang] ([ID], [HoTen], [NgaySinh], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [Mail]) VALUES (4, N'Trương Quốc Duy', CAST(N'2021-06-06' AS Date), N'0373856186', N'Long Xuyên', N'user1', N'7110eda4d09e062aa5e4a390b0a572ac0d2c0220', N'a@gmail.com')
INSERT [dbo].[KhachHang] ([ID], [HoTen], [NgaySinh], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [Mail]) VALUES (5, N'Nguyễn Hoàng Long', CAST(N'2021-06-06' AS Date), N'0373856186', N'Long Xuyên', N'user2', N'7110eda4d09e062aa5e4a390b0a572ac0d2c0220', N'a@gmail.com')
INSERT [dbo].[KhachHang] ([ID], [HoTen], [NgaySinh], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [Mail]) VALUES (1006, N'Trương Quốc Duy', CAST(N'0001-01-01' AS Date), N'0796645799', N'Long Xiên', N'Duy3', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'a@gmail.com')
INSERT [dbo].[KhachHang] ([ID], [HoTen], [NgaySinh], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [Mail]) VALUES (1007, N'Trương Quốc Duy 2', CAST(N'0001-01-01' AS Date), N'0796645799', N'Long Xiên', N'user4', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'b@gmail.com')
INSERT [dbo].[KhachHang] ([ID], [HoTen], [NgaySinh], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [Mail]) VALUES (1008, N'Trương Quốc Duy', CAST(N'2000-07-25' AS Date), N'0796645799', N'Long Xiên', N'user6', N'7110eda4d09e062aa5e4a390b0a572ac0d2c0220', N'c@gmail.com')
INSERT [dbo].[KhachHang] ([ID], [HoTen], [NgaySinh], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [Mail]) VALUES (1009, N'Trương Quốc Duy', CAST(N'2000-07-25' AS Date), N'0796645799', N'Long Xiên', N'user7', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'd@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([ID], [TenLoai]) VALUES (1, N'Rượu vang')
INSERT [dbo].[Loai] ([ID], [TenLoai]) VALUES (2, N'Wishke')
INSERT [dbo].[Loai] ([ID], [TenLoai]) VALUES (3, N'Rượu nhẹ')
SET IDENTITY_INSERT [dbo].[Loai] OFF
GO
SET IDENTITY_INSERT [dbo].[NoiSanXuat] ON 

INSERT [dbo].[NoiSanXuat] ([id], [XuatXu]) VALUES (1, N'Mỹ')
INSERT [dbo].[NoiSanXuat] ([id], [XuatXu]) VALUES (2, N'Hàn Quốc')
INSERT [dbo].[NoiSanXuat] ([id], [XuatXu]) VALUES (3, N'Việt Nam')
INSERT [dbo].[NoiSanXuat] ([id], [XuatXu]) VALUES (4, N'Trung Quốc')
SET IDENTITY_INSERT [dbo].[NoiSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([ID], [Loai_ID], [Hang_ID], [NoiSanXuat_ID], [TenSanPham], [NongDoCon], [TheTich], [NgayNhap], [DonGia], [SoLuong], [MoTa], [HinhAnhBia]) VALUES (2, 1, 2, 1, N'WHISHKEY Kangoru1', N'35%', N'2L', CAST(N'2021-11-20T16:03:00.000' AS DateTime), 3000000, 14, N'Thơm ngon', N'Images\prod-2.jpg')
INSERT [dbo].[SanPham] ([ID], [Loai_ID], [Hang_ID], [NoiSanXuat_ID], [TenSanPham], [NongDoCon], [TheTich], [NgayNhap], [DonGia], [SoLuong], [MoTa], [HinhAnhBia]) VALUES (3, 1, 1, 1, N'WHISHKEY Kangoru2', N'35%', N'2L', CAST(N'2021-11-21T16:13:00.000' AS DateTime), 1000000, 1, N'Thơm ngon', N'Images\prod-3.jpg')
INSERT [dbo].[SanPham] ([ID], [Loai_ID], [Hang_ID], [NoiSanXuat_ID], [TenSanPham], [NongDoCon], [TheTich], [NgayNhap], [DonGia], [SoLuong], [MoTa], [HinhAnhBia]) VALUES (4, 1, 3, 1, N'WHISHKEY Kangoru4', N'45%', N'2.5L', CAST(N'2021-11-28T16:40:00.000' AS DateTime), 1000000, 6, N'Thơm ngon', N'Images\prod-4.jpg')
INSERT [dbo].[SanPham] ([ID], [Loai_ID], [Hang_ID], [NoiSanXuat_ID], [TenSanPham], [NongDoCon], [TheTich], [NgayNhap], [DonGia], [SoLuong], [MoTa], [HinhAnhBia]) VALUES (6, 1, 6, 1, N'WHISHKEY Kangoru6', N'35%', N'2.5L', CAST(N'2021-11-21T16:42:00.000' AS DateTime), 1200000, 8, N'Thơm ngon', N'Images\prod-9.jpg')
INSERT [dbo].[SanPham] ([ID], [Loai_ID], [Hang_ID], [NoiSanXuat_ID], [TenSanPham], [NongDoCon], [TheTich], [NgayNhap], [DonGia], [SoLuong], [MoTa], [HinhAnhBia]) VALUES (7, 3, 5, 1, N'WHISHKEY Kangoru7', N'15%', N'2L', CAST(N'2021-11-21T16:43:00.000' AS DateTime), 1400000, 11, N'Thơm ngon', N'Images\prod-7.jpg')
INSERT [dbo].[SanPham] ([ID], [Loai_ID], [Hang_ID], [NoiSanXuat_ID], [TenSanPham], [NongDoCon], [TheTich], [NgayNhap], [DonGia], [SoLuong], [MoTa], [HinhAnhBia]) VALUES (8, 1, 1, 1, N'WHISHKEY Kangoru7', N'55%', N'2L', CAST(N'2021-11-25T23:49:00.000' AS DateTime), 2000000, 12, NULL, N'Images\51e91d32-6e53-4d13-8593-fc695dcebad1_f0c489e2-e8f5-45ca-9c5c-5adf2b737809_prod-8.jpg')
INSERT [dbo].[SanPham] ([ID], [Loai_ID], [Hang_ID], [NoiSanXuat_ID], [TenSanPham], [NongDoCon], [TheTich], [NgayNhap], [DonGia], [SoLuong], [MoTa], [HinhAnhBia]) VALUES (1002, 2, 3, 1, N'WHISHKEY Angel 8', N'35%', N'2L', CAST(N'2021-12-15T21:29:00.000' AS DateTime), 2500000, 13, NULL, N'Images\fd0df68d-95f1-4a5a-89e5-c5ae5d02b78a_prod-8.jpg')
INSERT [dbo].[SanPham] ([ID], [Loai_ID], [Hang_ID], [NoiSanXuat_ID], [TenSanPham], [NongDoCon], [TheTich], [NgayNhap], [DonGia], [SoLuong], [MoTa], [HinhAnhBia]) VALUES (1003, 1, 1, 1, N'WHISHKEY Angel Beast', N'45%', N'2L', NULL, 3500000, 20, NULL, N'Images\f0c489e2-e8f5-45ca-9c5c-5adf2b737809_prod-8.jpg')
INSERT [dbo].[SanPham] ([ID], [Loai_ID], [Hang_ID], [NoiSanXuat_ID], [TenSanPham], [NongDoCon], [TheTich], [NgayNhap], [DonGia], [SoLuong], [MoTa], [HinhAnhBia]) VALUES (1004, 1, 2, 1, N'WHISHKEY Kangoru 8', N'35%', N'2L', CAST(N'2021-12-16T20:37:00.000' AS DateTime), 1200000, 12, NULL, N'Images\bcb15bcd-4412-4bd0-a78b-083e2297cd42_d172aa03-215a-46ae-a901-eb57245a9ec5_prod-1.jpg')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([ID], [ChucVu], [HoTen], [TenDangNhap], [MatKhau], [SoDienThoai], [HinhAnhBia]) VALUES (1, 1, N'Trần Quốc Đạt', N'admin', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'0373856186', N'Images\e462a500-c2b7-4fbc-9c3a-e0b1d3f59d45_est2021.png')
INSERT [dbo].[TaiKhoan] ([ID], [ChucVu], [HoTen], [TenDangNhap], [MatKhau], [SoDienThoai], [HinhAnhBia]) VALUES (2, 1, N'Trương Quốc Duy', N'admin3', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'0373856186', N'Images\e462a500-c2b7-4fbc-9c3a-e0b1d3f59d45_est2021.png')
INSERT [dbo].[TaiKhoan] ([ID], [ChucVu], [HoTen], [TenDangNhap], [MatKhau], [SoDienThoai], [HinhAnhBia]) VALUES (3, 0, N'Nguyễn Hoàng Long', N'staff', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'0373856186', N'Images\e462a500-c2b7-4fbc-9c3a-e0b1d3f59d45_est2021.png')
INSERT [dbo].[TaiKhoan] ([ID], [ChucVu], [HoTen], [TenDangNhap], [MatKhau], [SoDienThoai], [HinhAnhBia]) VALUES (1004, 0, N'Trương Quốc Duy', N'staff1', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'0796645799', N'Images\e462a500-c2b7-4fbc-9c3a-e0b1d3f59d45_est2021.png')
INSERT [dbo].[TaiKhoan] ([ID], [ChucVu], [HoTen], [TenDangNhap], [MatKhau], [SoDienThoai], [HinhAnhBia]) VALUES (1005, 0, N'Trương Quốc Duy 1', N'staff2', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'0796645799', N'Images\bd60ec74-4ed2-4f8d-ba55-d8adde2c5e4b_background-3-1.jpg')
INSERT [dbo].[TaiKhoan] ([ID], [ChucVu], [HoTen], [TenDangNhap], [MatKhau], [SoDienThoai], [HinhAnhBia]) VALUES (1006, 1, N'Hưng', N'hung', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'0796645799', N'Images\8e0f943d-368d-467c-a8d4-e4e27535aa06_background-3-1.jpg')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD FOREIGN KEY([KhachHang_ID])
REFERENCES [dbo].[KhachHang] ([ID])
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD FOREIGN KEY([TaiKhoan_ID])
REFERENCES [dbo].[TaiKhoan] ([ID])
GO
ALTER TABLE [dbo].[DatHang_ChiTiet]  WITH CHECK ADD FOREIGN KEY([DatHang_ID])
REFERENCES [dbo].[DatHang] ([ID])
GO
ALTER TABLE [dbo].[DatHang_ChiTiet]  WITH CHECK ADD FOREIGN KEY([SanPham_ID])
REFERENCES [dbo].[SanPham] ([ID])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([Hang_ID])
REFERENCES [dbo].[Hang] ([id])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([Loai_ID])
REFERENCES [dbo].[Loai] ([ID])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([NoiSanXuat_ID])
REFERENCES [dbo].[NoiSanXuat] ([id])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [CHK_POSITION] CHECK  (([ChucVu]=(1) OR [ChucVu]=(0)))
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [CHK_POSITION]
GO
USE [master]
GO
ALTER DATABASE [LiquorStores] SET  READ_WRITE 
GO
