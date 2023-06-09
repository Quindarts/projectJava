USE [master]
GO
/****** Object:  Database [QuanLyLinhKien]    Script Date: 4/22/2023 4:25:17 PM ******/
CREATE DATABASE [QuanLyLinhKien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyLinhKien', FILENAME = N'C:\Data\QuanLyLinhKien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyLinhKien_log', FILENAME = N'C:\Data\QuanLyLinhKien_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyLinhKien] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyLinhKien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyLinhKien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyLinhKien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyLinhKien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyLinhKien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyLinhKien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyLinhKien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyLinhKien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyLinhKien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyLinhKien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyLinhKien] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyLinhKien', N'ON'
GO
ALTER DATABASE [QuanLyLinhKien] SET QUERY_STORE = OFF
GO
USE [QuanLyLinhKien]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QuanLyLinhKien]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 4/22/2023 4:25:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[maLinhKien] [varchar](10) NOT NULL,
	[maHoaDon] [varchar](10) NOT NULL,
	[soLuong] [int] NOT NULL,
	[mucGiamGia] [int] NOT NULL,
 CONSTRAINT [PK__ChiTietH__5B9539F40E234FEE] PRIMARY KEY CLUSTERED 
(
	[maLinhKien] ASC,
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/22/2023 4:25:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHoaDon] [varchar](10) NOT NULL,
	[maKhachHang] [varchar](10) NOT NULL,
	[maNhanVien] [varchar](10) NOT NULL,
	[ngayDatHang] [date] NOT NULL,
	[ngayChuyenHang] [date] NOT NULL,
	[ngayGiaoHang] [date] NOT NULL,
	[noiNhanGiaoHang] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__HoaDon__026B4D9A763F5BB1] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/22/2023 4:25:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKhachHang] [varchar](10) NOT NULL,
	[tenKhachHang] [nvarchar](30) NOT NULL,
	[diaChi] [nvarchar](100) NOT NULL,
	[sDT] [varchar](10) NOT NULL,
	[email] [varchar](30) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinhKien]    Script Date: 4/22/2023 4:25:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinhKien](
	[maNCC] [varchar](10) NOT NULL,
	[maLinhKien] [varchar](10) NOT NULL,
	[tenLinhKien] [nvarchar](200) NOT NULL,
	[loaiLinhKien] [nvarchar](20) NOT NULL,
	[soLuongTon] [int] NOT NULL,
	[giaBan] [money] NOT NULL,
	[baoHanh] [int] NOT NULL,
	[moTa] [ntext] NOT NULL,
	[ngayNhap] [date] NOT NULL,
 CONSTRAINT [PK__LinhKien__EBB38D2D2B4E155F] PRIMARY KEY CLUSTERED 
(
	[maLinhKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 4/22/2023 4:25:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[maNCC] [varchar](10) NOT NULL,
	[tenNCC] [nvarchar](30) NOT NULL,
	[diaChi] [nvarchar](50) NOT NULL,
	[sDT] [varchar](10) NOT NULL,
	[email] [varchar](30) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[maNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/22/2023 4:25:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [varchar](10) NOT NULL,
	[tenNhanVien] [nvarchar](30) NULL,
	[chucVu] [nvarchar](20) NULL,
	[luong] [money] NULL,
	[diaChi] [nvarchar](100) NULL,
	[gioiTinh] [bit] NULL,
	[sDT] [varchar](10) NULL,
	[cMND] [varchar](9) NULL,
	[matKhau] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK101', N'HD10000000', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK101', N'HD10000002', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK101', N'HD10000003', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK102', N'HD10000002', 3, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK103', N'HD10000002', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK103', N'HD10000007', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK104', N'HD10000001', 1, 10)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK104', N'HD10000002', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK106', N'HD10000004', 1, 12)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK107', N'HD10000000', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK109', N'HD10000001', 1, 10)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK110', N'HD10000000', 3, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK110', N'HD10000001', 1, 10)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK110', N'HD10000005', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK111', N'HD10000000', 5, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK111', N'HD10000001', 1, 10)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK111', N'HD10000002', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK111', N'HD10000004', 1, 12)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK112', N'HD10000003', 5, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK113', N'HD10000003', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK114', N'HD10000001', 5, 10)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK114', N'HD10000003', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK115', N'HD10000003', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK118', N'HD10000004', 1, 12)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK123', N'HD10000006', 2, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK124', N'HD10000004', 6, 12)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK125', N'HD10000004', 4, 12)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK125', N'HD10000006', 4, 0)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayDatHang], [ngayChuyenHang], [ngayGiaoHang], [noiNhanGiaoHang]) VALUES (N'HD10000000', N'KH10000002', N'NV10000002', CAST(N'2023-04-17' AS Date), CAST(N'2023-04-17' AS Date), CAST(N'2023-04-18' AS Date), N'Phuong Phu Bai. Tinh Thua Thien Hue')
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayDatHang], [ngayChuyenHang], [ngayGiaoHang], [noiNhanGiaoHang]) VALUES (N'HD10000001', N'KH10000003', N'NV10000002', CAST(N'2023-04-17' AS Date), CAST(N'2023-04-17' AS Date), CAST(N'2023-04-18' AS Date), N'Đức Hòa, Long An')
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayDatHang], [ngayChuyenHang], [ngayGiaoHang], [noiNhanGiaoHang]) VALUES (N'HD10000002', N'KH10000004', N'NV10000002', CAST(N'2023-04-17' AS Date), CAST(N'2023-04-17' AS Date), CAST(N'2023-04-17' AS Date), N'Hooc Mon, HCM')
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayDatHang], [ngayChuyenHang], [ngayGiaoHang], [noiNhanGiaoHang]) VALUES (N'HD10000003', N'KH10000005', N'NV10000003', CAST(N'2023-04-17' AS Date), CAST(N'2023-04-17' AS Date), CAST(N'2023-04-17' AS Date), N'Binh Thanh,HCM')
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayDatHang], [ngayChuyenHang], [ngayGiaoHang], [noiNhanGiaoHang]) VALUES (N'HD10000004', N'KH10000006', N'NV10000003', CAST(N'2023-04-17' AS Date), CAST(N'2023-04-17' AS Date), CAST(N'2023-04-17' AS Date), N'Q5, TP HCM')
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayDatHang], [ngayChuyenHang], [ngayGiaoHang], [noiNhanGiaoHang]) VALUES (N'HD10000005', N'KH10000007', N'NV10000002', CAST(N'2023-04-18' AS Date), CAST(N'2023-04-18' AS Date), CAST(N'2023-04-18' AS Date), N'Go Vap')
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayDatHang], [ngayChuyenHang], [ngayGiaoHang], [noiNhanGiaoHang]) VALUES (N'HD10000006', N'KH10000008', N'NV10000002', CAST(N'2023-04-22' AS Date), CAST(N'2023-04-22' AS Date), CAST(N'2023-04-22' AS Date), N'Bình Dương')
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayDatHang], [ngayChuyenHang], [ngayGiaoHang], [noiNhanGiaoHang]) VALUES (N'HD10000007', N'KH10000009', N'NV10000002', CAST(N'2023-04-22' AS Date), CAST(N'2023-04-22' AS Date), CAST(N'2023-04-22' AS Date), N'123qq')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [sDT], [email]) VALUES (N'KH10000000', N'Lê Anh', N'Hồ Chí Minh', N'0982345716', N'anh@gmail.com')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [sDT], [email]) VALUES (N'KH10000001', N'Nguyễn Văn Bách', N'Hồ Chí Minh', N'0876453213', N'bach123@gmail.com')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [sDT], [email]) VALUES (N'KH10000002', N'Le Quang', N'Hue', N'0987123456', N'quang@gmail.com')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [sDT], [email]) VALUES (N'KH10000003', N'Phan Nam', N'Long An', N'0765456456', N'nam12@gmail.com')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [sDT], [email]) VALUES (N'KH10000004', N'Le Huy', N'Hooc Mon, HCM', N'0965456435', N'huyquang@gmail.com')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [sDT], [email]) VALUES (N'KH10000005', N'Nguyen Long', N'Binh Thanh,HCM', N'0981234532', N'long123@gmail.com')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [sDT], [email]) VALUES (N'KH10000006', N'Huynh Van Nam', N'Q5, TP HCM', N'0765434567', N'namquang@gmail.com')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [sDT], [email]) VALUES (N'KH10000007', N'Le minh Quang', N'Go Vap', N'0982910189', N'quang@gmail.com')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [sDT], [email]) VALUES (N'KH10000008', N'Lê Văn Ba', N'Bình Dương', N'0982910176', N'vanba123@gmail.com')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [sDT], [email]) VALUES (N'KH10000009', N'test', N'quangqq', N'0982910178', N'quang@gmail.com')
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC01', N'LK101', N'Chuột Magic Mouse 2 2021', N'chuột', 47, 2500000.0000, 12, N'-Tên sản phẩm: Chuột Magic Mouse 2 2021
- Kích thước  : 2.16 x 5.71 x 11.35 mm 
- Trọng lượng : 99g
- Màu sắc     : Trắng
- Loại chuột  : Chuột không dây', CAST(N'2020-11-23' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC01', N'LK102', N'Chuột Magic Mouse 2 2022', N'Chuột', 39, 3100000.0000, 12, N'Kích thước	2.16 x 5.71 x 11.35 mm
Trọng lượng sản phẩm	99 g
Màu sắc	Đen
Loại chuột	Chuột không dây
Kiểu kết nối	Bluetooth
Phụ kiện đi kèm	Dây cáp sạc', CAST(N'2023-01-23' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC02', N'LK103', N'Chuột Gaming Logitech G502 Hero High Performance', N'Chuột', 29, 1759000.0000, 12, N'Kích thước	132 x 75 x 40 mm
Trọng lượng sản phẩm	239.5 g
Độ dài dây bàn phím	2.1 m
Màu sắc	Đen
Loại chuột	Chuột Gaming
Kiểu kết nối	USB', CAST(N'2023-02-14' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC01', N'LK104', N'Cáp chuyển đổi Apple Lightning to 3.5mm', N'Cáp', 41, 290000.0000, 12, N'Trọng lượng sản phẩm	40 g
Màu sắc	Trắng
Thông số cơ bản
Loại Sạc - Cáp	Cáp chuyển đổi
Cổng cáp kết nối	Đầu vào: Lightning             Đầu ra: Jack 3.5 mm  Sử dụng cho thiết bị 
Điện thoại
Máy tính bảng
', CAST(N'2023-02-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC03', N'LK105', N'Chuột không dây Prolink PMW5008', N'Chuột', 122, 200000.0000, 12, N'Kích thước	103 x 64 x 31 mm
Trọng lượng sản phẩm	48 g
Màu sắc	Đen
Độ phân giải chuột	1600 dpi
Độ bền nút nhấn	3 triệu lần nhấn', CAST(N'2023-02-28' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC03', N'LK106', N'Chuột có dây Prolink PMC1006', N'Chuột', 30, 110000.0000, 12, N'Kích thước	100.8 x 60 x 36 mm
Trọng lượng sản phẩm	69 g
Độ dài dây bàn phím	1.6 m
Màu sắc	Đa sắc', CAST(N'2023-02-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC04', N'LK107', N'Chuột Gaming Asus CERBERUS', N'Chuột', 122, 499000.0000, 12, N'Trọng lượng sản phẩm	300 g
Màu sắc	Đen
Thông số cơ bản
Loại chuột	Chuột Gaming
Kiểu kết nối	USB', CAST(N'2023-02-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC05', N'LK108', N'Chuột Gaming không dây MSI Multi-connect GM41 Lightweight', N'Chuột', 54, 1790000.0000, 12, N'Model	Clutch GM41 Wireless
Thương hiệu	MSI
Thông số cơ bản
Loại chuột	Chuột Gaming Chuột có dây', CAST(N'2023-03-14' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC10', N'LK109', N'Cáp USB-C to Lightning Anker PowerLine Select A8612 0.9m ', N'Cáp', 42, 450000.0000, 12, N'Kích thước	1800 x 16 x 8 mm
Trọng lượng sản phẩm	50 g
Độ dài dây cáp	180 mm
Màu sắc	Đen
Chất liệu	Nhựa', CAST(N'2023-02-20' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC05', N'LK110', N'Chuột Gaming MSI Clutch GM08', N'Chuột', 26, 469000.0000, 12, N'Model	Clutch GM08
Thương hiệu	MSI
Thông số cơ bản
Loại chuột	Chuột có dây Chuột Gaming', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC06', N'LK111', N'Cáp USB-C to Lightning Anker PowerLine Select A8613 1.8m', N'Cáp', 46, 500000.0000, 12, N'Kích thước	1800 x 16 x 8 mm
Trọng lượng sản phẩm	50 g
Độ dài dây cáp	180 mm
Màu sắc	Đen
Chất liệu	Nhựa', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC06', N'LK112', N'Chuột Bluetooth Microsoft ARC', N'Chuột', 49, 2450000.0000, 12, N'
Kích thước	13 x 5.4 x 1.1 cm
Trọng lượng sản phẩm	60 g
Chất liệu	Nhựa cao cấp
Màu sắc	Hồng', CAST(N'2023-02-28' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC06', N'LK113', N'Microsoft Chuột Bluetooth Microsoft Modern', N'Chuột', 42, 810000.0000, 12, N'Kích thước	14 x 13 x 6 cm
Trọng lượng sản phẩm	78 g
Màu sắc	Đen
Thông số cơ bản
Loại chuột	Chuột không dây
Kiểu kết nối	Bluetooth', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC08', N'LK114', N'Chuột Gaming Zadez G156M', N'Chuột', 36, 287000.0000, 12, N'
Kích thước	124 x 65,3 x 39,5 mm
Trọng lượng sản phẩm	119 g
Độ dài dây bàn phím	1.5 m
Màu sắc	Đen', CAST(N'2023-04-09' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC08', N'LK115', N'Chuột Gaming Zadez GT616M', N'Chuột', 32, 585000.0000, 12, N'
Kích thước	125 x 75,5 x 43 mm
Trọng lượng sản phẩm	124 g
Độ dài dây bàn phím	1.8 m
Màu sắc	Đen', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC01', N'LK116', N'Tai nghe Beats Fit Pro True Wireless Earbuds', N'HDD', 23, 4490000.0000, 12, N'Thương hiệu	Apple
Thông số cơ bản
Loại tai nghe	Tai nghe nhét tai    Tai nghe không dây
Kiểu kết nối	Bluetooth', CAST(N'2023-02-28' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC01', N'LK117', N'Tai nghe Beats Studio Buds', N'HDD', 45, 3999000.0000, 12, N'Trọng lượng sản phẩm	58 g
Màu sắc	Trắng
Thông số cơ bản
Loại tai nghe	Tai nghe không dây
Kiểu kết nối	Bluetooth
Tính năng	Chống ồn   Chống nước', CAST(N'2023-03-08' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC01', N'LK118', N'Tai nghe EarPods with 3.5 mm Headphone Plug', N'HDD', 44, 599000.0000, 12, N'Màu sắc	Trắng
Loại tai nghe	Tai nghe nhét tai
Cổng giao tiếp	Jack 3.5 mm
Hệ điều hành tương thích	iOS  iPadOS   macOS', CAST(N'2023-02-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC09', N'LK119', N'Tai nghe Samsung Galaxy Buds2', N'HDD', 31, 2990000.0000, 12, N'Trọng lượng sản phẩm	50 g
Màu sắc	Đen
Loại tai nghe	Tai nghe không dây
Khoảng cách kết nối	10 m
Kiểu kết nối	Bluetooth', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC09', N'LK120', N'Tai nghe có dây AKG USB-C', N'HDD', 42, 440000.0000, 12, N'Trọng lượng sản phẩm	25 g
Chất liệu	Nhựa
Màu sắc	Đen
Loại tai nghe	Tai nghe nhét tai
Khoảng cách kết nối	1 m', CAST(N'2023-02-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC10', N'LK121', N'Tai nghe bluetooth TWS Anker Soundcore Liberty Air 2 - A3910 ', N'HDD', 54, 1500000.0000, 12, N'
Kích thước	173 x 121 x 62 mm
Trọng lượng sản phẩm	60 g
Chất liệu	Nhựa
Màu sắc	Đen', CAST(N'2023-02-20' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC11', N'LK122', N'Tai nghe gaming Sony MDR - ZX110AP có mic', N'HDD', 43, 486000.0000, 12, N'Loại tai nghe	Tai nghe chụp tai
Dải tần số	12 Hz - 22 kHz
Độ nhạy	90 dB/mW
Trở kháng	24 Ohm
Cổng giao tiếp	Jack 3.5 mm
Kiểu kết nối	Jack 3.5 mm', CAST(N'2023-02-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC11', N'LK123', N'Tai nghe Bluetooth nhét tai Sony WF-C500 ', N'HDD', 41, 2050000.0000, 12, N'Trọng lượng sản phẩm	45 g
Chất liệu	Nhôm + Nhựa cao cấp
Màu sắc	Đen
Loại tai nghe	Tai nghe không dây
Dung lượng pin	10 Giờ
Thời gian sạc đầy	1.5 - 2 giờ Hộp sạc', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC03', N'LK124', N'Bộ bàn phím chuột Gaming Prolink GMK-6001M', N'Bàn phím', 48, 600000.0000, 12, N'
Model	GMK-6001M
Thương hiệu	Prolink
Thông số cơ bản
Loại bàn phím	Bàn phím có dây', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC02', N'LK125', N'Logitech Bàn phím Bluetooth Logitech K380', N'Bàn phím', 15, 790000.0000, 12, N'
Model	BP Bluetooth K380
Thương hiệu	Logitech
Thông số cơ bản
Loại bàn phím	Bàn phím không dâ', CAST(N'2023-02-14' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC08', N'LK126', N'Bàn phím giả cơ có dây Zadez G-852K', N'Bàn phím', 31, 599000.0000, 12, N'
Model	BP Game G852K
Thương hiệu	Zadez
Thông số cơ bản
Loại bàn phím	Bàn phím có dây', CAST(N'2023-03-14' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC08', N'LK127', N'Bàn phím cơ không dây Zadez GT-015DK', N'Bàn phím', 43, 1490000.0000, 12, N'Model	GT-015DK
Thương hiệu	Zadez
Thông số cơ bản
Loại bàn phím	Bàn phím cơ
Loại bàn phím	Bàn phím không dây', CAST(N'2023-03-22' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC01', N'LK128', N'Bàn phím không dây Magic Keyboard 2021 Touch ID', N'Bàn phím', 31, 4299000.0000, 12, N'
Thương hiệu	Apple
Thông số cơ bản
Loại bàn phím	Bàn phím không dây', CAST(N'2023-02-20' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC01', N'LK129', N'Ổ cứng trong WD SSD 240GB Sata III M.2-2280 Xanh (WDS240G2G0B)', N'SSD', 23, 798000.0000, 12, N'
Model	WDS240G2G0B
Thương hiệu	Western Digital
Cấu hình chi tiết
Dung lượng ổ cứng	240 GB', CAST(N'2023-03-13' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC12', N'LK130', N'Ổ cứng trong WD SSD 250GB PCIe SN750 M.2-2280 Đen (WDS250G3X0C)', N'SSD', 54, 1225000.0000, 12, N'
Model	WDS250G3X0C
Thương hiệu	Western Digital
Cấu hình chi tiết
Dung lượng ổ cứng	250 GB', CAST(N'2023-03-20' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC12', N'LK131', N'Ổ cứng trong WD SSD 480GB Sata III M.2-2280 Xanh (WDS480G2G0B)', N'SSD', 23, 1141000.0000, 12, N'
Model	WDS480G2G0B
Thương hiệu	Western Digital
Cấu hình chi tiết
Dung lượng ổ cứng	480 GB', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC09', N'LK132', N'RAM Laptop Samsung 8GB DDR4 3200MHz ', N'RAM', 43, 790000.0000, 12, N'Dung lượng   8GB
Loại RAM      DDR4
Bus RAM      3200MHz
Hỗ trợ           SO-DIMM (Laptop)
Voltage         1.2v', CAST(N'2023-03-20' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC09', N'LK133', N'RAM Laptop Samsung 8GB DDR5 4800MT/S', N'RAM', 123, 1250000.0000, 12, N'Dung lượng	8GB
Loại RAM	DDR5
Bus RAM	4800MT/s
Hỗ trợ	SO-DIMM (Laptop)
Timing	CL40
Voltage	1.1v', CAST(N'2023-03-13' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC04', N'LK134', N'Card màn hình Asus GT730 SL 2GD5 BRK', N'Card đồ họa', 45, 1420000.0000, 12, N'Chipset	NVIDIA
Dung lượng	2GB
Kiểu bộ nhớ	GDDR5
Giao diện bộ nhớ	64-bit
GPU	NVIDIA GT 730
GPU clock	902 MHz', CAST(N'2023-03-20' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC04', N'LK135', N'Card màn hình Asus TUF GTX 1660 Super 6G GDDR6 OC Edition', N'Card đồ họa', 54, 5400000.0000, 12, N'Dung lượng	6GB
Kiểu bộ nhớ	GDDR6
Giao diện bộ nhớ	192 bit
GPU	NVIDIA GTX 1660 Super', CAST(N'2023-03-20' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC05', N'LK136', N'Card màn hình MSI Geforce GTX 1650 D6 Ventus XS OC', N'Card đồ họa', 12, 7990000.0000, 12, N'Chipset	NVIDIA
Dung lượng	4GB
Kiểu bộ nhớ	GDDR6
GPU	NVIDIA GTX 1650
GPU clock	Boots : 1620 MHz', CAST(N'2023-03-20' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC13', N'LK137', N'Card màn hình Gigabyte Geforce RTX 3060 Gaming OC 12GB', N'Card đồ họa', 43, 9650000.0000, 12, N'Chipset	NVIDIA
Dung lượng	12GB
Kiểu bộ nhớ	GDDR6
Giao diện bộ nhớ	64 bit
GPU	NVIDIA RTX 3060', CAST(N'2023-03-13' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC13', N'LK138', N'Ổ cứng SSD Gigabyte 120GB SATA III', N'SSD', 34, 390000.0000, 12, N'Loại ổ cứng	SSD
Kết nối	SATA III
Dung lượng	120GB
Tốc độ đọc	500 MBps
Tốc độ ghi	380 MBps', CAST(N'2023-03-13' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC13', N'LK139', N'Ổ cứng SSD Gigabyte 128 GB M.2 2280', N'SSD', 45, 690000.0000, 12, N'Loại ổ cứng	SSD
Kết nối	M2 NVMe
Dung lượng	128GB
Tốc độ đọc	1550MB/s
Tốc độ ghi	550MB/s', CAST(N'2023-03-20' AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC13', N'LK140', N'Card màn hình Gigabyte GeForce RTX 3070 GAMING OC 8G ', N'Card đồ họa', 43, 21490000.0000, 12, N'Chipset	NVIDIA
Dung lượng	8GB
Kiểu bộ nhớ	GDDR6
Giao diện bộ nhớ	2‎56 bit
GPU	NVIDIA RTX 3070
Giao tiếp PCI		PCI-E 4.0 x 16', CAST(N'2023-02-13' AS Date))
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC01', N'Apple', N'TPHCM', N'0888123555', N'apple@gmail.com')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC02', N'Logitech', N'TPHCM', N'0984312332', N'logitech@gmail.com')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC03', N'Prolink', N'Hà Nội', N'0886123321', N'Prolink@gmail.com')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC04', N'Asus', N'TPHCM', N'0823415352', N'Asustv@gmail.com')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC05', N'MSI', N'Hà Nội', N'0832154212', N'MSI@gmail.com')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC06', N'Microsoft', N'Đà Nẵng', N'0712354312', N'microsoft@gmail.com')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC07', N'Rapoo', N'Hà Nội', N'0154823423', N'Rapoo@gmail.com')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC08', N'Radez', N'Hà Nội', N'0622314124', N'Zadez@gmail.com')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC09', N'SamSung', N'Hà Nội', N'0331123124', N'Sangsung@gmail.com')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC10', N'Anker', N'Tp HCM', N'0941231123', N'Anker@gmail.com')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC11', N'Sony', N'Tp HCM', N'0378304124', N'Sony@gmail.com')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC12', N'Western Digital', N'Tp HCM', N'0812424164', N'WesternDigital@gmail.com')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC13', N'Gigabyte', N'Tp HCM', N'0856432344', N'Gigabyte@gmail.com')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [chucVu], [luong], [diaChi], [gioiTinh], [sDT], [cMND], [matKhau]) VALUES (N'NV10000001', N'Phan Thanh Nam', N'Quản Lý', 43.0000, N'Long An', 1, N'0326031916', N'123456789', N'123456')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [chucVu], [luong], [diaChi], [gioiTinh], [sDT], [cMND], [matKhau]) VALUES (N'NV10000002', N'Lê Văn Duy', N'Bán Hàng', 2.0000, N'Đà Lạt', 1, N'0971212673', N'784367123', N'123456')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [chucVu], [luong], [diaChi], [gioiTinh], [sDT], [cMND], [matKhau]) VALUES (N'NV10000003', N'Lê Quang Huy', N'Bán Hàng', 30.0000, N'Hồ Chí Minh ', 1, N'0364122348', N'123456783', N'123456')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [chucVu], [luong], [diaChi], [gioiTinh], [sDT], [cMND], [matKhau]) VALUES (N'NV10000004', N'Lê Minh Quang', N'Bán Hàng', 23.0000, N'Thừa Thiên Huế', 1, N'0364835692', N'456789012', N'123456')
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  CONSTRAINT [DF_ChiTietHoaDon_mucGiamGia]  DEFAULT ((0)) FOR [mucGiamGia]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHo__maHoa__29572725] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK__ChiTietHo__maHoa__29572725]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHo__maLin__286302EC] FOREIGN KEY([maLinhKien])
REFERENCES [dbo].[LinhKien] ([maLinhKien])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK__ChiTietHo__maLin__286302EC]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__maKhachH__20C1E124] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[KhachHang] ([maKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__maKhachH__20C1E124]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__maNhanVi__21B6055D] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__maNhanVi__21B6055D]
GO
ALTER TABLE [dbo].[LinhKien]  WITH CHECK ADD  CONSTRAINT [FK__LinhKien__maNCC__1BFD2C07] FOREIGN KEY([maNCC])
REFERENCES [dbo].[NhaCungCap] ([maNCC])
GO
ALTER TABLE [dbo].[LinhKien] CHECK CONSTRAINT [FK__LinhKien__maNCC__1BFD2C07]
GO
USE [master]
GO
ALTER DATABASE [QuanLyLinhKien] SET  READ_WRITE 
GO
