USE [master]
GO
/****** Object:  Database [WebBanHang]    Script Date: 07/04/2020 16:50:05 ******/
CREATE DATABASE [WebBanHang]
GO
ALTER DATABASE [WebBanHang] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [WebBanHang] SET ANSI_NULLS OFF
GO
ALTER DATABASE [WebBanHang] SET ANSI_PADDING OFF
GO
ALTER DATABASE [WebBanHang] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [WebBanHang] SET ARITHABORT OFF
GO
ALTER DATABASE [WebBanHang] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [WebBanHang] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [WebBanHang] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [WebBanHang] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [WebBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [WebBanHang] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [WebBanHang] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [WebBanHang] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [WebBanHang] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [WebBanHang] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [WebBanHang] SET  ENABLE_BROKER
GO
ALTER DATABASE [WebBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [WebBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [WebBanHang] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [WebBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [WebBanHang] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [WebBanHang] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [WebBanHang] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [WebBanHang] SET  READ_WRITE
GO
ALTER DATABASE [WebBanHang] SET RECOVERY FULL
GO
ALTER DATABASE [WebBanHang] SET  MULTI_USER
GO
ALTER DATABASE [WebBanHang] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [WebBanHang] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebBanHang', N'ON'
GO
USE [WebBanHang]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 07/04/2020 16:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MADANHMUC] [int] IDENTITY(1,1) NOT NULL,
	[TENDANHMUC] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MADANHMUC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON
INSERT [dbo].[DanhMuc] ([MADANHMUC], [TENDANHMUC]) VALUES (1, N'Áo Phông Nam')
INSERT [dbo].[DanhMuc] ([MADANHMUC], [TENDANHMUC]) VALUES (2, N'Áo Thun')
INSERT [dbo].[DanhMuc] ([MADANHMUC], [TENDANHMUC]) VALUES (3, N'Áo Sơ Mi')
INSERT [dbo].[DanhMuc] ([MADANHMUC], [TENDANHMUC]) VALUES (4, N'Áo Cộc Tay')
INSERT [dbo].[DanhMuc] ([MADANHMUC], [TENDANHMUC]) VALUES (5, N'Quần Jean Nam')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 07/04/2020 16:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MANHACUNGCAP] [int] IDENTITY(1,1) NOT NULL,
	[DIACHI] [nvarchar](255) NULL,
	[TENNHACUNGCAP] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANHACUNGCAP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON
INSERT [dbo].[NhaCungCap] ([MANHACUNGCAP], [DIACHI], [TENNHACUNGCAP]) VALUES (1, N'Số 3 phường 12,Ninh Hòa,Khánh Hòa,Việt Nam', N'Shop Quần Áo Nam KH')
INSERT [dbo].[NhaCungCap] ([MANHACUNGCAP], [DIACHI], [TENNHACUNGCAP]) VALUES (2, N'Số 12 phường 7,Ninh Hòa,Khánh Hòa,Việt Nam', N'Trung Tâm Quần Áo Nam KH')
INSERT [dbo].[NhaCungCap] ([MANHACUNGCAP], [DIACHI], [TENNHACUNGCAP]) VALUES (3, N'Số 9 phường 11,Ninh Hòa,Khánh Hòa,Việt Nam', N'Nhà Phân Phối Quần Áo')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 07/04/2020 16:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [varchar](255) NOT NULL,
	[MATKHAU] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MATKHAU]) VALUES (N'hoang', N'123')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MATKHAU]) VALUES (N'khachhang', N'123')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MATKHAU]) VALUES (N'nhat', N'123')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MATKHAU]) VALUES (N'quoc', N'123')
/****** Object:  Table [dbo].[SanPham]    Script Date: 07/04/2020 16:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MASANPHAM] [int] IDENTITY(1,1) NOT NULL,
	[DONGIA] [real] NULL,
	[DONVITINH] [nvarchar](255) NULL,
	[MOTA] [nvarchar](255) NULL,
	[NGAYSANXUAT] [varchar](255) NULL,
	[SOLUONGNHAP] [int] NULL,
	[TENSANPHAM] [nvarchar](255) NULL,
	[TRANGTHAI] [varchar](255) NULL,
	[URLHINH] [varchar](255) NULL,
	[MADANHMUC] [int] NULL,
	[MANHACUNGCAP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASANPHAM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (1, 250000, N'Chiếc', N'Áo phông dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 0, N'Áo Phông Nam AP1', N'true', N'./img/AP1.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (2, 250000, N'Chiếc', N'Áo phông dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Phông Nam AP2', N'true', N'./img/AP2.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (3, 250000, N'Chiếc', N'Áo phông dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Phông Nam AP3', N'true', N'./img/AP3.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (4, 250000, N'Chiếc', N'Áo phông dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Phông Nam AP4', N'true', N'./img/AP4.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (5, 250000, N'Chiếc', N'Áo phông dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Phông Nam AP5', N'true', N'./img/AP5.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (6, 250000, N'Chiếc', N'Áo phông dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Phông Nam AP6', N'true', N'./img/AP6.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (7, 250000, N'Chiếc', N'Áo phông dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Phông Nam AP7', N'true', N'./img/AP7.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (8, 250000, N'Chiếc', N'Áo phông dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Phông Nam AP8', N'true', N'./img/AP8.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (9, 250000, N'Chiếc', N'Áo phông dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Phông Nam AP9', N'true', N'./img/AP9.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (10, 250000, N'Chiếc', N'Áo phông dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Phông Nam AP10', N'true', N'./img/AP10.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (11, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT1', N'true', N'./img/AT1.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (12, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT2', N'true', N'./img/AT2.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (13, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT3', N'true', N'./img/AT3.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (14, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT4', N'true', N'./img/AT4.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (15, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT5', N'true', N'./img/AT5.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (16, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT6', N'true', N'./img/AT6.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (17, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT7', N'true', N'./img/AT7.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (18, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT8', N'true', N'./img/AT8.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (19, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT9', N'true', N'./img/AT9.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (20, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT10', N'true', N'./img/AT10.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (21, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT11', N'true', N'./img/AT11.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (22, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT12', N'true', N'./img/AT12.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (23, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT13', N'true', N'./img/AT13.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (24, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT14', N'true', N'./img/AT14.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (25, 398000, N'Chiếc', N'Áo thun dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-07', 300, N'Áo Thun Nam AT15', N'true', N'./img/AT15.jpg', 2, 2)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (26, 120000, N'Chiếc', N'Áo sơ mi dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Sơ Mi Nam ASM1', N'true', N'./img/ASM1.jpg', 3, 3)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (27, 120000, N'Chiếc', N'Áo sơ mi dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Sơ Mi Nam ASM2', N'true', N'./img/ASM2.jpg', 3, 3)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (28, 120000, N'Chiếc', N'Áo sơ mi dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Sơ Mi Nam ASM3', N'true', N'./img/ASM3.jpg', 3, 3)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (29, 120000, N'Chiếc', N'Áo sơ mi dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Sơ Mi Nam ASM4', N'true', N'./img/ASM4.jpg', 3, 3)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (30, 120000, N'Chiếc', N'Áo sơ mi dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Sơ Mi Nam ASM5', N'true', N'./img/ASM5.jpg', 3, 3)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (31, 120000, N'Chiếc', N'Áo sơ mi dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Sơ Mi Nam ASM6', N'true', N'./img/ASM6.jpg', 3, 3)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (32, 120000, N'Chiếc', N'Áo sơ mi dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Áo Sơ Mi Nam ASM7', N'true', N'./img/ASM7.jpg', 3, 3)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (33, 560000, N'Chiếc', N'Áo cộc tay dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-11', 300, N'Áo Cộc Tay Nam ACT1', N'true', N'./img/ACT1.jpg', 4, 3)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (34, 560000, N'Chiếc', N'Áo cộc tay dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-11', 300, N'Áo Cộc Tay Nam ACT2', N'true', N'./img/ACT2.jpg', 4, 3)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (35, 560000, N'Chiếc', N'Áo cộc tay dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-11', 300, N'Áo Cộc Tay Nam ACT3', N'true', N'./img/ACT3.jpg', 4, 3)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (36, 560000, N'Chiếc', N'Áo cộc tay dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-11', 300, N'Áo Cộc Tay Nam ACT4', N'true', N'./img/ACT4.jpg', 4, 3)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (37, 560000, N'Chiếc', N'Áo cộc tay dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-11', 300, N'Áo Cộc Tay Nam ACT5', N'true', N'./img/ACT5.jpg', 4, 3)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (38, 560000, N'Chiếc', N'Áo cộc tay dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-11', 300, N'Áo Cộc Tay Nam ACT6', N'true', N'./img/ACT6.jpg', 4, 3)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (39, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J1', N'true', N'./img/J1.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (40, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J2', N'true', N'./img/J2.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (41, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J3', N'true', N'./img/J3.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (42, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J4', N'true', N'./img/J4.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (43, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J5', N'true', N'./img/J5.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (44, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J6', N'true', N'./img/J6.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (45, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J7', N'true', N'./img/J7.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (46, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J8', N'true', N'./img/J8.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (47, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J9', N'true', N'./img/J9.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (48, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J10', N'true', N'./img/J10.png', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (49, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J11', N'true', N'./img/J11.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (50, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J12', N'true', N'./img/J12.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (51, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J13', N'true', N'./img/J13.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (52, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J14', N'true', N'./img/J14.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (53, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J15', N'true', N'./img/J15.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (54, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J16', N'true', N'./img/J16.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (55, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J17', N'true', N'./img/J17.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (56, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J18', N'true', N'./img/J18.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (57, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J19', N'true', N'./img/J19.jpg', 5, 1)
INSERT [dbo].[SanPham] ([MASANPHAM], [DONGIA], [DONVITINH], [MOTA], [NGAYSANXUAT], [SOLUONGNHAP], [TENSANPHAM], [TRANGTHAI], [URLHINH], [MADANHMUC], [MANHACUNGCAP]) VALUES (58, 550000, N'Chiếc', N'Quần Jean Nam dành cho nam tuyệt đẹp giá siêu rẻ', N'2019-12-12', 300, N'Quần Jean Nam J20', N'true', N'./img/J20.jpg', 5, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
/****** Object:  Table [dbo].[NguoiQuanLy]    Script Date: 07/04/2020 16:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiQuanLy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DIACHI] [nvarchar](255) NULL,
	[EMAIL] [nvarchar](255) NULL,
	[NGAYSINH] [varchar](255) NULL,
	[SOCMND] [nvarchar](255) NULL,
	[SODIENTHOAI] [nvarchar](255) NULL,
	[TENQUANLY] [nvarchar](255) NULL,
	[TRANGTHAI] [nvarchar](255) NULL,
	[TENTAIKHOAN] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TENTAIKHOAN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 07/04/2020 16:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MAKHACHHANG] [int] IDENTITY(1,1) NOT NULL,
	[DIACHI] [nvarchar](255) NULL,
	[EMAIL] [nvarchar](255) NULL,
	[NGAYSINH] [varchar](255) NULL,
	[SOCMND] [nvarchar](255) NULL,
	[SODIENTHOAI] [nvarchar](255) NULL,
	[TENKHACHHANG] [nvarchar](255) NULL,
	[TRANGTHAI] [nvarchar](255) NULL,
	[TENTAIKHOAN] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKHACHHANG] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TENTAIKHOAN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON
INSERT [dbo].[KhachHang] ([MAKHACHHANG], [DIACHI], [EMAIL], [NGAYSINH], [SOCMND], [SODIENTHOAI], [TENKHACHHANG], [TRANGTHAI], [TENTAIKHOAN]) VALUES (1, N'TDP 2 Đông Hải,Phường Ninh Hải,Ninh Hòa,Khánh Hòa,Việt Nam', N'nguyenvanhoang34iuh@gmail.com', N'1999-11-21', N'225684567', N'0898136956', N'Nguyễn Văn Hoàng', N'true', N'hoang')
INSERT [dbo].[KhachHang] ([MAKHACHHANG], [DIACHI], [EMAIL], [NGAYSINH], [SOCMND], [SODIENTHOAI], [TENKHACHHANG], [TRANGTHAI], [TENTAIKHOAN]) VALUES (2, N'TDP 2 Đông Hải,Phường Ninh Hải,Ninh Hòa,Khánh Hòa,Việt Nam', N'quocnguyeniuh@gmail.com', N'1999-11-21', N'225684567', N'0898136958', N'Nguyễn Đình Quốc', N'true', N'quoc')
INSERT [dbo].[KhachHang] ([MAKHACHHANG], [DIACHI], [EMAIL], [NGAYSINH], [SOCMND], [SODIENTHOAI], [TENKHACHHANG], [TRANGTHAI], [TENTAIKHOAN]) VALUES (3, N'TDP 2 Đông Hải,Phường Ninh Hải,Ninh Hòa,Khánh Hòa,Việt Nam', N'nhatiuh@gmail.com', N'1999-11-21', N'225684567', N'0898136956', N'Nguyễn Văn Hoàng', N'true', N'nhat')
INSERT [dbo].[KhachHang] ([MAKHACHHANG], [DIACHI], [EMAIL], [NGAYSINH], [SOCMND], [SODIENTHOAI], [TENKHACHHANG], [TRANGTHAI], [TENTAIKHOAN]) VALUES (4, N'TDP 2 Đông Hải,Phường Ninh Hải,Ninh Hòa,Khánh Hòa,Việt Nam', N'khachang34iuh@gmail.com', N'1999-11-21', N'225684567', N'0898136956', N'Nguyễn Khách Hàng', N'true', N'khachhang')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
/****** Object:  Table [dbo].[DonHang]    Script Date: 07/04/2020 16:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonHang](
	[MADONHANG] [int] IDENTITY(1,1) NOT NULL,
	[NGAYLAP] [varchar](255) NULL,
	[MAKHACHHANG] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MADONHANG] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 07/04/2020 16:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[DONGIA] [real] NULL,
	[SOLUONG] [int] NULL,
	[MADONHANG] [int] NOT NULL,
	[MASANPHAM] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MADONHANG] ASC,
	[MASANPHAM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_SanPham_MADANHMUC]    Script Date: 07/04/2020 16:50:06 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_MADANHMUC] FOREIGN KEY([MADANHMUC])
REFERENCES [dbo].[DanhMuc] ([MADANHMUC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_MADANHMUC]
GO
/****** Object:  ForeignKey [SanPham_MANHACUNGCAP]    Script Date: 07/04/2020 16:50:06 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [SanPham_MANHACUNGCAP] FOREIGN KEY([MANHACUNGCAP])
REFERENCES [dbo].[NhaCungCap] ([MANHACUNGCAP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [SanPham_MANHACUNGCAP]
GO
/****** Object:  ForeignKey [NguoiQuanLyTENTAIKHOAN]    Script Date: 07/04/2020 16:50:06 ******/
ALTER TABLE [dbo].[NguoiQuanLy]  WITH CHECK ADD  CONSTRAINT [NguoiQuanLyTENTAIKHOAN] FOREIGN KEY([TENTAIKHOAN])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[NguoiQuanLy] CHECK CONSTRAINT [NguoiQuanLyTENTAIKHOAN]
GO
/****** Object:  ForeignKey [KhachHang_TENTAIKHOAN]    Script Date: 07/04/2020 16:50:06 ******/
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [KhachHang_TENTAIKHOAN] FOREIGN KEY([TENTAIKHOAN])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [KhachHang_TENTAIKHOAN]
GO
/****** Object:  ForeignKey [FK_DonHang_MAKHACHHANG]    Script Date: 07/04/2020 16:50:06 ******/
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_MAKHACHHANG] FOREIGN KEY([MAKHACHHANG])
REFERENCES [dbo].[KhachHang] ([MAKHACHHANG])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_MAKHACHHANG]
GO
/****** Object:  ForeignKey [ChiTietDonHangMDONHANG]    Script Date: 07/04/2020 16:50:06 ******/
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [ChiTietDonHangMDONHANG] FOREIGN KEY([MADONHANG])
REFERENCES [dbo].[DonHang] ([MADONHANG])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [ChiTietDonHangMDONHANG]
GO
/****** Object:  ForeignKey [ChiTietDonHangMSANPHAM]    Script Date: 07/04/2020 16:50:06 ******/
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [ChiTietDonHangMSANPHAM] FOREIGN KEY([MASANPHAM])
REFERENCES [dbo].[SanPham] ([MASANPHAM])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [ChiTietDonHangMSANPHAM]
GO
