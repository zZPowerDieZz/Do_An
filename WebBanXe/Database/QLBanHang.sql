USE [master]
GO
/****** Object:  Database [QLBanHang]    Script Date: 4/7/2024 10:57:48 AM ******/
CREATE DATABASE [QLBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBanHang', FILENAME = N'D:\bài báo cáo\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBanHang_log', FILENAME = N'D:\bài báo cáo\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLBanHang] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBanHang] SET RECOVERY FULL 
GO
ALTER DATABASE [QLBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [QLBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLBanHang', N'ON'
GO
ALTER DATABASE [QLBanHang] SET QUERY_STORE = OFF
GO
USE [QLBanHang]
GO
/****** Object:  Table [dbo].[CTDonHang]    Script Date: 4/7/2024 10:57:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDonHang](
	[MaXe] [int] IDENTITY(1,1) NOT NULL,
	[SoDH] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](30, 0) NULL,
	[ThanhTien] [decimal](30, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/7/2024 10:57:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[SoDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDH] [datetime] NULL,
	[TriGia] [numeric](30, 0) NULL,
	[DaGiao] [bit] NULL,
	[NgayGiao] [datetime] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangXe]    Script Date: 4/7/2024 10:57:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangXe](
	[MaHX] [int] IDENTITY(1,1) NOT NULL,
	[TenHX] [nvarchar](50) NULL,
	[Logo] [nvarchar](50) NULL,
	[XuatXu] [nvarchar](50) NULL,
 CONSTRAINT [PK_HangXe] PRIMARY KEY CLUSTERED 
(
	[MaHX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/7/2024 10:57:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[DienThoai] [nvarchar](15) NULL,
	[TenDN] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 4/7/2024 10:57:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[MaXe] [int] IDENTITY(1,1) NOT NULL,
	[TenXe] [nvarchar](50) NULL,
	[MaHX] [int] NULL,
	[DonGia] [decimal](30, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhXe] [nvarchar](100) NULL,
 CONSTRAINT [PK_Xe] PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HangXe] ON 

INSERT [dbo].[HangXe] ([MaHX], [TenHX], [Logo], [XuatXu]) VALUES (1, N'Porsche', N'Porsche.jpg', N'Germany')
INSERT [dbo].[HangXe] ([MaHX], [TenHX], [Logo], [XuatXu]) VALUES (2, N'Bentley', N'Bentley.jpg', N'United Kingdom')
INSERT [dbo].[HangXe] ([MaHX], [TenHX], [Logo], [XuatXu]) VALUES (3, N'BMW', N'BMW.jpg', N'Germany')
INSERT [dbo].[HangXe] ([MaHX], [TenHX], [Logo], [XuatXu]) VALUES (4, N'Ford', N'Ford.jpg', N'America')
INSERT [dbo].[HangXe] ([MaHX], [TenHX], [Logo], [XuatXu]) VALUES (5, N'Honda', N'Honda.jpg', N'Japan')
INSERT [dbo].[HangXe] ([MaHX], [TenHX], [Logo], [XuatXu]) VALUES (6, N'Lamborghini', N'Lamborghini.jpg', N'Italy')
INSERT [dbo].[HangXe] ([MaHX], [TenHX], [Logo], [XuatXu]) VALUES (7, N'Maserati', N'Maserati.jpg', N'Italy')
INSERT [dbo].[HangXe] ([MaHX], [TenHX], [Logo], [XuatXu]) VALUES (8, N'Mercedes', N'Mercedes.jpg', N'Germany')
INSERT [dbo].[HangXe] ([MaHX], [TenHX], [Logo], [XuatXu]) VALUES (12, N'Ferrari', N'Ferrari.jpg', N'Italy')
INSERT [dbo].[HangXe] ([MaHX], [TenHX], [Logo], [XuatXu]) VALUES (13, N'Aston Martin', N'AstonMartin.jpg', N' England')
SET IDENTITY_INSERT [dbo].[HangXe] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [DiaChi], [DienThoai], [TenDN], [MatKhau], [NgaySinh], [Email]) VALUES (1, N'Phạm Huỳnh Tấn Phúc', N'Hóc Môn, TP.HCm', N'0924557482', N'phuc0403', N'phuc0403', CAST(N'2004-03-20T00:00:00.000' AS DateTime), N'tanphuc123@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [DiaChi], [DienThoai], [TenDN], [MatKhau], [NgaySinh], [Email]) VALUES (2, N'Đoàn Nguyễn Huy', N'Củ Chi, TP.HCM', N'0953451116', N'huy123', N'huy123', CAST(N'2004-03-07T00:00:00.000' AS DateTime), N'huydoan123@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [DiaChi], [DienThoai], [TenDN], [MatKhau], [NgaySinh], [Email]) VALUES (3, N'Nguyễn Hoàng Nam', N'Hóc Môn, TP.HCM', N'0982566721', N'namc4', N'namc4', CAST(N'2004-09-18T00:00:00.000' AS DateTime), N'namc4@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Xe] ON 

INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (1, N'Porsche Macan ', 1, CAST(135000 AS Decimal(30, 0)), N'Macan là dòng SUV bán chạy nhất của Porsche trong những năm gần đây. Ra mắt lần đầu từ năm 2014 và có bản nâng cấp lần thứ nhất vào tháng 7/2018. Ngày 23-04-2022, Porsche cho ra mắt Macan facelift tại Việt Nam với nhiều thay đổi về ngoại thất, động cơ với 4 phiên bản: Macan, Macan T, Macan S và Macan GTS. So với phiên bản cũ, Porsche Macan facelift không có phiên bản Turbo nhưng đã được thay thế bởi phiên bản Macan tiêu chuẩn. Tùy chọn cấu hình động cơ 2.0L, I4 hoặc 2.9L V6 ', N'porsche_macan.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (2, N'Porsche Panamera Turbo S', 1, CAST(490000 AS Decimal(30, 0)), N'Porsche Panamera là dòng xe hạng sang cỡ trung/lớn (mid/full-sized luxury vehicle) của nhà sản xuất xe hơi Porsche, Đức. Porsche Panamera hiện đã bước vào thế hệ thứ 3 (tháng 11-2023 đến nay). Tuy nhiên bản Panamera đang bán tại Việt Nam vẫn thuộc thế hệ thứ 2 và được nâng cấp giữa vòng đời vào năm 2021. Tùy chọn 3 cấu hình động cơ gồm Panamera tiêu chuẩn (3.0L, 6 xy lanh, 330 mã lực, 450 Nm), GTS (4.0L, 8 xy lanh, 480 mã lực, 620 Nm) và turbo S (4.0 lít, 8 xy lanh, 630 mã lực, 820 Nm)', N'PorschePanameraTurboS.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (3, N'Porsche 911 Targa 4S', 1, CAST(395000 AS Decimal(30, 0)), N'Porsche 911 Targa được ra mắt vào tháng 08/2020 và hiện được bán ra với 03 phiên bản Targa 4, Targa 4S và Targa 4 GTS. Về cơ bản ngoại thất và nội thất của Porsche  911 Targa tương đối giống với Porsche 911 Carrera và Porsche 911 Carrera S. Targa có nhiều cải tiến so với phiên bản trước nhưng phần mui trần được giữ lại một phần khung chữ U hoặc toàn bộ vòm mui cứng nằm phía sau ghế ngồi. Phần mui xe đã tạo nên phong cách cho chiếc xe Porsche 911 Targa. Kích thước tổng thể DxRxC là 4519 x 1852 x 1297/1299 (mm) ngắn hơn Carrera một chút, khối lượng lại nặng hơn 20kg.', N'Porsche 911Targa4S.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (4, N'Bentley Mulsanne', 2, CAST(306000 AS Decimal(30, 0)), N'Bentley Mulsanne là mẫu sedan siêu sang, từng là mẫu ô tô danh giá nhất, đứng đầu bảng của hãng xe Bentley từ 2009 - nay. Đầu năm 2020, Bentley quyết định ngừng sản xuất dòng xe Mulsanne này. Để đáp lại tình cảm của khách hàng dành cho dòng xe sedan hạng sang này, Bentley cho ra phiên bản đặc biệt mang tên Bentley Mulsanne Speed 6.75 Edition by Mulliner với số lượng giới hạn 30 chiếc. Tháng 06/2020, mẫu xe sedan Mulsanne hoàn thành chiếc xe cuối cùng, khép lại chù kỳ sản phẩm Mulsanne 11 năm cũng cũng là kết thúc cho hơn 60 năm dòng động cơ huyền thoại 6.75 lít của hạng xe sang Bentley. Tổng cộng hơn 7.300 chiếc siêu xe Bentley Mulsanne được bán cho khách hàng trên toàn thế giới.', N'bentley-mulsanne.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (5, N'Bentley Continental GT Speed', 2, CAST(257000 AS Decimal(30, 0)), N'Ngày 23/03/2021, Bentley Motors đã chính thức ra mắt mẫu xe Bentley Continental GT Speed thế hệ mới. Bentley Continental GT Speed thế hệ mới sẽ trở thành mẫu xe thông dụng có hiệu suất cao nhất trong 101 năm lịch sử của hãng xe siêu sang đến từ Anh Quốc. Continental GT Speed mới được phát triển dựa trên dòng Continental GT thế hệ mới - thế hệ thứ 3 đang bán ra trên thị trường quốc tế.

Continental GT Speed thế hệ mới sử dụng động cơ 6.0 lít, W12 TSI, tăng nhẹ về hiệu suất so với phiên bản Continental GT W12 hiện tại. Công suất tối đa của GT Speed thế hệ mới đạt 659 PS tăng 14PS so với tiền nhiệm, mô men xớn cực đại giữ nguyên ở mức 900 Nm. Tăng tốc từ 0-100km/h trong 3.6s, giảm 0.1s so với bản W12, vận tốc tối đa đạt 335 km/h. Đi kèm là hộp số ly hợp kép 08 cấp và hệ dẫn động 4 bánh chủ động Active AWD.', N'Bentley-continental-gt.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (6, N'Bentley Mulliner Bacalar', 2, CAST(1764000 AS Decimal(30, 0)), N'Siêu xe thể thao mui trần Bentley Mulliner Bacalar chính thức ra mắt đầu năm 2020. Xe chỉ có số lượng 12 chiếc. Được lấy cảm hứng từ mẫu xe concept đep nhất năm 2019 là Bentley EXP 100 GT, Bentley Mulliner Bacalar có thân xe từ hợp kim nhôm, cửa và các chi tiết khí động học từ sợi carbon. Bên trong nội thất Mulliner Bacalar sở hữu thiết kế 2 chỗ ngồi, hiếm thấy trên những mẫu xe của Bentley. Tiện nghi trong cabin gồm tất cả những tinh hoa của một chiếc Grand Tourer của thế kỷ 21. Ngay cả ốp nội thất trên Bentley Mulliner Bacalar cũng dùng chất liệu gỗ quý Riverwood 5.000 năm tuổi. Mỗi ghế gồm hơn 148.199 đường chỉ may thể hiện độ tinh xảo. Bentley Mulliner Bacalar trang bị động cơ W12 TSI twin turbo dung tích 6.0L, công suất 660 mã lực đi kèm hộp số ly hợp kép 8 cấp', N'bentley-mulliner-bacalar.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (7, N'BMW 330i', 3, CAST(73000 AS Decimal(30, 0)), N'Phiên bản 330i M Sport được trang bị động cơ xăng, 2.0L, i4 TwinPower Turbo sản sinh ra công suất tối đa 258 mã lực tại 5000 - 6500 vòng/ phút và mô men xoắn cực đại 400 Nm tại 1600-4000 vòng/ phút. Động cơ kết hợp với hộp số tự động 8 cấp, dẫn động cầu sau.', N'BMW-330i.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (8, N'BMW i7', 3, CAST(289000 AS Decimal(30, 0)), N'BMW i7 được ra mắt tại Việt Nam từ tháng 03-2023 với 1 phiên bản duy nhất BMW i7 xDrive60 Pure Excellence. Xe sử dụng động cơ điện cho công suất tối đa 544 mã lực, mô men xoắn đạt 745 Nm. Bộ pin 101,7 kWh giúp xe đi được quãng đường 591-625 km cho mỗi lần sạc đầy. Thời gian sạc đầy 10.5h với nguồn điện 11kW và 5.5h với nguồn điện 22kW. Thời gian sạc pin từ 10-80% trong 34 phút với sạc DC (500A).', N'BMW-i7.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (9, N'BMW i8', 3, CAST(281000 AS Decimal(30, 0)), N'BMW i8, mẫu xe đầy ấn tượng của BMW được ra mắt vào năm 2013. Xe sử dụng động cơ 1.5l Hybrid sức mạnh tổng hợp 356Hp, hộp số tự động 6 cấp. Với thiết kế được coi là "đi trước thời đại", BMW i8 rất được các đại gia trẻ ưa thích trên thế giới và cả Việt nam. Đối thủ của BMW i8 là Audi R8, Aston Martin Vantage, Acura NSX, Porsche 911, Nissan GTR, McLaren 570s

', N'BMW-i8.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (10, N'Ford Explorer', 4, CAST(98000 AS Decimal(30, 0)), N'Ford Explorer là mẫu xe SUV/Crossover 3 hàng ghế cỡ trung cạnh tranh với các đối thủ như Toyota Prado, Hyundai Palisade, Kia Telluride... Xe được trang bị động cơ EcoBoost tăng áp 2.3 lít, I4 sản sinh ra công suất tối đa 301 mã lực và mô men xoắn cực đại đạt 432 Nm. Đi kèm là hộp số tự động 10 cấp và dẫn động 04 bánh toàn thời gian. Ford Explorer có 7 chế độ lái gồm Eco, Normal, Deep Sand, Slippery, Sport, Trail và Tow Haul', N'ford-explorer.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (11, N'Ford Transit', 4, CAST(34000 AS Decimal(30, 0)), N'Dòng xe 16 chỗ của Ford Việt Nam hiện đang bán chạy nhất trong phân khúc này với thị phần trên 60%. Đối thủ chính của Ford Transit là Toyota Hiace và Hyundai Solati nhưng 2 dòng sản phẩm này có giá khá đắt, không thể cạnh tranh được với Transit. Ngày 28-12-2021, Ford ra mắt Ford Transit 2022 tại thị trường Việt Nam với duy nhất một phiên bản. Xe được nâng cấp nhiều trang bị, tính năng nổi bật có cân bằng điện tử, ga tự động và màn hình giải trí 10.1 inch.', N'ford-transit.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (12, N'Ford Territory Titanium X', 4, CAST(39000 AS Decimal(30, 0)), N'Ford Territory là dòng xe SUV/Crossover hạng C, 5 chỗ ngồi, ra mắt tại Việt Nam trong tháng 10-2022. Đối thủ cạnh tranh trên thị trường là Hyundai Tucson, Mazda CX5, Toyota Cross... Xe sử dụng động cơ Ecoboost 1.5 lít, tăng áp sản sinh ra công suất tối đa 168 mã lực và mô men xoắn cực đại 260 Nm. Kết hợp hộp số ly hợp kép 7 cấp ly hợp ướt và hệ dẫn động cầu trước. Tốc độ tối đa của xe đạt 180 km/h.', N'ford-territory.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (13, N'Honda Civic RS', 5, CAST(35000 AS Decimal(30, 0)), N'Honda Civic là mẫu ô tô đầu tiên được Honda Việt Nam xuất xưởng. Đây cũng là mẫu xe khởi đầu cho mảng ô tô của Honda tại Việt Nam vào năm 2006. Ngay sau mở bán, Civic nhanh chóng chiếm thị phần lớn và rất được lòng khách hàng Việt.

Vào năm 2016, thế hệ thứ 10 của mẫu xe này chính thức ra mắt với sự thay đổi ngoạn mục về kiểu dang, sang trọng, trẻ trung hơn. Song cũng từ đây, Civic không còn được lắp ráp mà đã chuyển sang nhập khẩu nguyên chiếc. Điều này khiến giá bán xe cũng tăng lên đáng kể.', N'honda-civic.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (14, N'Honda CR-V ', 5, CAST(45000 AS Decimal(30, 0)), N'Cuối năm 2008, Honda CR-V lần đầu tiên được giới thiệu tới người tiêu dùng Việt Nam. Tại thời điểm này, CR-V dường như độc tôn trong cuộc chiến giành thị phần tại phân khúc Crossover cỡ trung vốn rất ít đối thủ cạnh tranh. Tổng doanh số Honda CR-V sau hơn 10 năm gia nhập thị trường là 23.000 xe, một con số rất đáng mơ ước.

Năm 2017, khi thế hệ thứ 5 được cập nhật, CR-V có thêm phiên bản 7 chỗ ngồi với thiết kế ngoại thất hoàn toàn khác biệt, trẻ trung, mạnh mẽ, có phần hầm hố hơn trước. Từ đầu năm 2018 cho đến năm 2019, Honda CR-V thế hệ mới nhanh chóng gặt hái được thành công và không ít lần dẫn đầu phân khúc.', N'honda-crv.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (15, N'Honda Brio RS', 5, CAST(21000 AS Decimal(30, 0)), N'Có giá thành cao hơn bản G 30 triệu đồng. Brio RS được đánh giá cao với bề ngoài cá tính, thể thao cùng các tính năng tiêu chuẩn được bổ sung như: Màn hình giải trí cảm ứng 6.2 inch, kết nối Apple CarPlay, chìa khoá thông minh, gương chiếu hậu gập điện, vô lăng bọc da, dàn âm thanh 6 loa. Nhằm đa dạng sự lựa chọn, phiên bản RS ra thêm màu ngoại thất Vàng và Cam mà bản G không có.', N'honda-brio-rs.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (16, N'Lamborghini Aventador SVJ', 6, CAST(2405000 AS Decimal(30, 0)), N'Lamborghini Aventador SVJ hiện là siêu xe mạnh mẽ nhất của Lamborghini từng sản sinh. Được giới thiệu lần đầu vào tháng 08/2018, SVJ chỉ sản xuất giới hạn 963 chiếc (1 trong số đó đã về Việt Nam). Xe trang bị khối động cơ V12 hút khí tự nhiên, dung tích 6.5L, sản sinh công suất 770 mã lực và mô-men xoắn 720 Nm. Aventador SVJ sử dụng hộp số ISR 7 cấp được tinh chỉnh, trang bị hệ dẫn động bốn bánh với tính năng lái cả hai bánh sau (LRS) giống 2 bánh trước. Trọng lượng khô của xe được giảm xuống còn 1.525 kg. Khả năng tăng tốc lên 100km/h trong 2,8s. Tốc độ tối đa 350km/h', N'Lamborghini-Aventador-SVJ.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (17, N'Lamborghini Aventador LP700-4', 6, CAST(1043000 AS Decimal(30, 0)), N'Lamborghini Aventador LP700-4 trang bị động cơ V12 dung tích 6,5L, công suất tối đa 691Hp/8250rpm, mô men xoắn tối đa 690NM/5500rpm. Xe vọt lên tốc độ 100km/h trong 2,9s, có thể gọi là "bay như gió". Tốc độ tối đa theo công bố là 350km/h nhưng trên đường thử xe đã từng đạt 370km/h. Mức tiêu hao nhiên liệu trong thành phố và cao tốc tương ứng là 21,4L và 13,8L/100km. Lamborghini Aventador LP700-4 cùng với xe Porsche 911 Turbo S là 2 trong số 10 mẫu xe nhanh nhất thế giới đã được phân phối chính hãng tại Việt nam', N'Lamborghini-Aventador-LP-700-4.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (18, N'Lamborghini Urus Performante', 6, CAST(662000 AS Decimal(30, 0)), N'Trong chuỗi sự kiện Monterey Car Week 2022 vào tháng 09-2022, hãng xe Italia đã giới thiệu bản facelift mẫu xe SUV này, và đến tháng 03-2023, Lamborghini Urus facelift chính thức ra mắt thị trường Việt...Lamborghini Urus sử dụng động cơ V8, 4.0 lít tăng áp kép sản sinh ra công suất tối đa 657 mã lực, mô men xoắn cực đại 850 Nm. Hộp số tự động 8 cấp kết hợp với hệ dẫn động 4 bánh toàn cầu. Đối thủ của Urus là Range Rover Supercharged, Mercedes AMG GLS63 4Matic, Bentley Bentayga...

', N'Lamborghini-Urus-Performante.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (19, N'Maserati Grecale', 7, CAST(169000 AS Decimal(30, 0)), N'Maserati Grecale là mẫu SUV cỡ trung hoàn toàn mới được ra mắt toàn cầu vào ngày 22-03-2022 và chính thức bán tại Việt Nam vào tháng 06-2023 với 3 phiên bản GT, Modena và Trofeo. Xe có kích thước tổng thể DxRxC lần lượt 4859x1979x1659 mm, chiều dài cơ sở đạt 2901 mm. Tùy chọn động cơ 2.0L, 4 xy lanh hoặc động cơ 3.0L, V6 kết hợp với hộp số tự động 8 cấp.', N'Maserati-Grecale.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (20, N'Maserati Ghibli Hybrid', 7, CAST(240000 AS Decimal(30, 0)), N'Maserati Ghibli Hybrid là mẫu xe "lai" điện đầu tiên của hãng xe sang Maserati - Italy, được ra mắt toàn cầu vào tháng 07/2020. Đây là mẫu xe hybrid đánh dấu "bước ngoặt" quan trọng trong lịch sử hơn 100 năm của hãng xe thể thao Italy. Tháng 10-2021, những chiếc Maserati Ghibli Hybrid đầu tiên đã về Việt Nam chuẩn bị giao đến tay khách hàng. Chiếc xe Ghibli Hybrid được trưng bày tại showroom là phiên bản GranSport. 

Ghibli Hybrid sử dụng động cơ xăng tăng áp I4, 2.0 lít sản sinh ra công suất tối đa 330 mã lực và mô men xoắn cực đại 450 Nm kết hợp hệ thống mô tơ điện 48 V eBooster, đóng vai trò kép vừa là động cơ bổ sung thêm sức mạnh cho động cơ xăng, vừa là máy phát để có thể sạc lại điện cho bộ pin được bố trí dưới khoang hành lý sau xe. Hộp số tự động 08 cấp ZF, hệ dẫn động cầu sau. Tăng tốc từ 0-100km/h trong 5.7s, tốc độ tối đa 255 km/h.', N'Maserati-Ghibli-Hybrid.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (21, N'Maserati MC20', 7, CAST(642000 AS Decimal(30, 0)), N'Maserati MC20 là một chiếc siêu xe thể thao 2 cửa, 2 chỗ ngồi (Super Sports Car). Được ra mắt vào tháng 9 năm 2020, cửa hứa hẹn đánh dấu sự khởi đầu kỷ nguyên mới cho Maserati. Xe có thiết kế đặc trưng siêu xe nhưng cũng không quá cầu kỳ, đặc biệt là động cơ 3.0L do chính Maserati nghiên cứu. Động cơ này cho công suất lên tới 620 mã lực; khả năng tăng tốc 0-100km/h trong 2,9s và tốc độ tối đa 325km/h.', N'maserati-mc20.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (22, N'Mercedes AMG A35 4MATIC', 8, CAST(97400 AS Decimal(30, 0)), N'A-Class là dòng xe hạng sang cỡ nhỏ (subcompact). Thế hệ thứ 4 của A-Class ra mắt trong năm 2018 và chính thức có mặt tại Việt Nam từ tháng 5 năm 2020. Thiết kế của chiếc A-Class mới vẫn toát lên vẻ trẻ trung và hiện đại, thậm chí gợi nhiều cảm xúc, cản trước và cản sau mạnh mẽ, ba dòng trang bị và thiết kế khác nhau, một gói thiết kế tùy chọn cũng như các chất liệu, màu sắc và bánh xe hợp kim mới đều cuốn hút. Phiên bản AMG A35 với động cơ chỉ 2.0L nhưng công suất lên đến 306Hp. Đối thủ trực tiếp của Mercedes A – Class là Infiniti Q30.', N'mercedes-amg-a35-4matic.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (23, N'Mercedes AMG G63', 8, CAST(471000 AS Decimal(30, 0)), N'Mercedes AMG G-Class thế hệ mới chính thức trình làng trong tháng 2/2018. Tất cả các phiên bản G-Class mới, từ bản G 350 CDI Professional, G 500 Edition 35 đến AMG G 63 và AMG G 65, đều được Mercedes gia tăng 16% về công suất và giảm lượng tiêu hao nhiên liệu. G 500 được trang bị động cơ V8 4.0L Biturbo mới và các động cơ đáp ứng tiêu chuẩn khí thải Euro 6. Những cải tiến khác là hệ thống treo mới, cùng với hệ thống điều khiển ESP nhanh nhạy hơn giúp gia tăng độ ổn định, an toàn và tiện nghi khi vận hành. Ngoại thất và nội thất xe được điều chỉnh nhưng không nhiều khác biệt.', N'mercedes-amg-g63.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (24, N'Mercedes Benz EQB', 8, CAST(92000 AS Decimal(30, 0)), N'Mercedes Benz EQB có thể được coi là phiên bản chạy điện của Mercedes Benz GLB. Về tổng thể thiết kế ngoại thất, nội thất thì EQB tương tự với GLB. Tại Việt Nam thì Mercedes Benz EQB được bán ra với một phiên bản EQB 250 duy nhất. Xe được trang bị động cơ điện có dung lượng pin 66.5 kWh sản sinh ra công suất tối đa 190 mã lực, mô men xoắn cực đại 385 Nm. Thời gian tăng tốc từ 0-100km/h trong 8.9s. EQB đi được quãng đường 422-473 km/h cho mỗi lần sạc đầy.

Thời gian sạc 10% - 80% trong thời gian 32 phút khi cắm sạc nhanh dòng điện một chiều DC và sạc tiêu chuẩn 11kW trong vòng 6,5 giờ với dòng điện xoay chiều AC.', N'Mercedes-Benz-EQB.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (25, N'Ferrari 812 GTS', 12, CAST(342000 AS Decimal(30, 0)), N'Ferrari 812 GTS là phiên bản mui trần của chiếc 812 Superfast. Ra đời từ tháng 12/2019, 812 GTS là đối thủ trên thị trường là Mclaren 720s Spider, Lamborghini Aventador SVJ Roadster, Aston Martin DBS Superleggera Volante...Sử dụng hệ vận hành của chiếc Coupe 812 Superfast, chiếc spider 812 GTS là chiếc mui trần thương mại mạnh mẽ nhất thế giới hiện nay.', N'ferrari-812-gts.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (26, N'Ferrari F8 Tributo', 12, CAST(241000 AS Decimal(30, 0)), N'Siêu xe mới nhất của hãng xe Italy là Ferrari F8 Tributo ra mắt tại Triển lãm ô tô Geneva 2019. Được biết đây là phiên bản thay thế cho 488GTB, Ferrari F8 Tributo có kích thước 4.611 x 1.979 x 1.206 mm, dài hơn 43mm, rộng hơn 27mm và thấp hơn 7mm so với 488 GTB. Đặc biệt, nhờ áp dụng công nghệ tiên tiến và các vật liệu hiện đại mà F8 Tributo chỉ nặng 1.330kg, nhẹ hơn 55kg so với 488 Pista. F8 Tributo cũng mang thiết kế S-Duct tương tự 488 Pista, và động cơ cũng tương tự, là F154, V8 tăng áp kép, dung tích 3.9L', N'ferrari-f8-tributo.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (27, N'Ferrari Purosangue', 12, CAST(1604000 AS Decimal(30, 0)), N'Ferrari Purosangue là mẫu xe siêu SUV đầu tiên của hãng xe nổi tiếng Ferrari phát triển. Purosangue sẽ đưa Ferrari vào một "vùng đất mới". Ferrari Purosangue được trang bị động cơ 6.5 lít, V12 hút khí tự nhiên sản sinh ra công suất tối đa 715 mã lực và mô men xoắn cực đại 716 Nm. Kết hợp với hộp số ly hợp kép tự động 8 cấp và dẫn động 2 cầu. Thời gian tăng tốc từ 0-100km/h trong 3.3s và đạt tốc độ tối đa 310 km/h.', N'Ferrari-Purosangue.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (28, N'Aston Martin Vantage', 13, CAST(600800 AS Decimal(30, 0)), N'Thế hệ 2 của mẫu Vantage được ra mắt trong tháng 11/2017. Sử dụng động cơ thế hệ mới do AMG nâng cấp, với chỉ dung tích 4.0L nhưng sức mạnh mang lại là 510Ps. Hộp số tự động 8 ấp. Hệ dẫn động cầu sau. Khả năng tăng tốc lên 100km/h trong 3,6s. Điểm mới ở Aston Martin Vantage thế hệ mới nữa là hệ thống khung sườn mới. Vantage cũng đã chính thức ra mắt tại Việt Nam trong tháng 03/2019.

', N'aston-martin-vantage.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (29, N'Aston Martin DB11 V8 Coupe', 13, CAST(630000 AS Decimal(30, 0)), N'DB11 có 2 phiên bản là Coupe ra mắt năm 2016 và bản Volante DB11 Roadster mui mềm vừa ra mắt trong tháng 10/2017. Phiên bản Aston Martin DB11 V8 vừa về Việt Nam đầu năm 2019 dùng  động cơ V8 4.0 Twin-Turbo do Mercedes-AMG hợp tác phát triển. Phiên bản DB11 V12 Coupe sử dụng khối động cơ V12 dung tích 5,2l công suất 600Hp, hộp số tự động 8 cấp cùng hệ dẫn động cầu sau. Phiên bản DB11 Roadster lại chỉ dùng động cơ dung tích 4.0L với công suất 512Hp. Ngoài ra còn có thêm bản DB11 AMR (do bộ phận Aston Martin Racing phát triển) ra mắt trong tháng 5/2018 với động cơ tăng lên 630Hp, khiến cho DB11 AMR trở thành một trong những chiếc GT tốc độ nhất thế giới và cũng là mẫu xe nhanh nhất hiện nay của Aston Martin.', N'aston-martin-db11-v8-coupe.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (30, N'Aston Martin DBS Superleggera Volante', 13, CAST(314000 AS Decimal(30, 0)), N'Aston Martin DBS Superleggera là dòng siêu xe ra mắt nhằm thay thế cho chiếc Vanquish S. Được phát triển dựa trên bản DB11, DBS Superleggera có 2 phiên bản là Coupe và Volante (mui trần). Động cơ V12 5.2L công suất 715 mã lực, tốc độ tối đa 339,5km/h và khả năng tăng tốc 0-100km/h trong 3,4s (bản Coupe); 3,6s (bản Volante).', N'aston-martin-dbs-superleggera-volante.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (31, N'Aston Martin DBX', 13, CAST(642000 AS Decimal(30, 0)), N'Aston Martin DBX là dòng SUV đầu tiên của thương hiệu xe Anh Quốc. Ra đời vào tháng 03-2020 và chính thức bán ra vào mùa hè cùng năm. DBX là đối thủ của Lamborghini Urus, Bentley Bentayga. DBX được trang bị động cơ tăng áp kép V8 4.0L, sản sinh công suất 550Ps và mô-men xoắn 700 Nm. Đi kèm với hộp số tự động 9 cấp và hệ dẫn động 4 bánh. Khả năng tăng tốc 0-100 km/h trong 4,5 giây, tốc độ tối đa 291 km/h.', N'aston-martin-dbx.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (32, N'Lamborghini Huracan LP580-2', 6, CAST(562000 AS Decimal(30, 0)), N'Hay được dân chơi Việt nam gọi là siêu xe Lamborghini giá rẻ, Huracan LP580-2 sở hữu khối động cơ V10 5,2 lít cho công suất cực đại 580Hp và mô men xoắn cực đại 540Nm. Ước tính tại Việt nam đã có trên 10 xe Huracan LP580-2 đã có chủ.', N'lamborghini-huracan-lp580-2.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (33, N'Lamborghini Huracan STO', 6, CAST(305000 AS Decimal(30, 0)), N'Phiên bản siêu xe đua đường phố Huracan STO (Super Trofeo Omologata) được ra mắt trong tháng 11-2020. Xe vẫn dùng động cơ 5.2L hút khí tự nhiên công suất 640Ps (631Hp) giống với bản Huracan Evo nhưng momen xoắn chỉ 565Nm. Khả năng tăng tốc 0-100km/h trong 3s và tốc độ tối đa 310km/h.', N'lamborghini-huracan-sto.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (34, N'Porsche Taycan', 1, CAST(171000 AS Decimal(30, 0)), N'Porsche Taycan là dòng xe Sedan lai Coupe 4 cửa chạy điện hoàn toàn của nhà sản xuất ô tô Porsche, Đức. Taycan hiện bán tại Việt Nam được ra mắt vào tháng 10-2020 và bản Taycan Cross Turismo được ra mắt vào tháng 11-2021. Taycan sẽ cạnh tranh với đối thủ Tesla Model S. Taycan bao gồm 8 phiên bản là Taycan, Taycan 4S, Taycan GTS, Taycan Turbo, Taycan Turbo S, Taycan 4 Cross Turismo,Taycan 4S Cross Turismo, Taycan Turbo Cross Turismo.', N'porsche-taycan.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (35, N'Porsche 718 Boxster', 1, CAST(159000 AS Decimal(30, 0)), N'Mẫu xe Porsche 718 Boxster Roadster "thể thao thuần khiết" có 2 bản động cơ là 2.0 và 2.5 cùng hộp số tự động 7 cấp ly hợp kép. Bản động cơ 2.0L dành cho bản thường cho công suất tối đa 300Hp/6500rpm và mô men xoắn tối đa 380Nm/1950-4500rpm, khả năng tăng tốc lên 100km/h trong 4.7s. Còn bản 718 Boxster S dùng động cơ 2.5L, công suất cực đại 350Hp/6500rpm, mô men xoắn cực đại 420Nm/1900-4500rpm, mãnh lực tăng tốc là 4,2s, tốc độ tối đa 285km/h.', N'porsche-718-boxster.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (36, N'BMW X3 xDrive20i Msport', 3, CAST(85000 AS Decimal(30, 0)), N'BMW X3 hiện đang bán tại Việt Nam là bản facelift nâng cấp giữa vòng đời thế hệ thứ 3 được ra mắt thị trường Việt Nam vào cuối năm 2022 và xe được lắp ráp thay vì nhập khẩu nguyên chiếc. X3 bán ra với 3 phiên bản xDrive20i, xDrive20i M Sport và xDrive30i M Sport.', N'BMW-X3-sDrive20i-M-Sport.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [MaHX], [DonGia], [MoTa], [AnhXe]) VALUES (37, N'BMW XM', 3, CAST(441000 AS Decimal(30, 0)), N'BMW XM là mẫu xe SUV hiệu suất cao cỡ lớn 5 chỗ lần đầu tiên được ra mắt công chúng toàn cầu vào quý IV 2022 và chính thức được THACO cho ra mắt tại Việt Nam vào ngày 11-11-2023. BMW XM được phát triển độc lập không dựa trên một mẫu xe nào hiện có của BMW. Dưới nắp ca pô, BMW đã trang bị động cơ S68 V8, 4.4 lít tăng áp kép với công nghệ PHEV mới nhất cho ra tổng công suất lên đến 644 mã lực và mô men xoắn 800 Nm. ', N'BWM-XM.jpg')
SET IDENTITY_INSERT [dbo].[Xe] OFF
GO
ALTER TABLE [dbo].[CTDonHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_DonHang] FOREIGN KEY([SoDH])
REFERENCES [dbo].[DonHang] ([SoDH])
GO
ALTER TABLE [dbo].[CTDonHang] CHECK CONSTRAINT [FK_CTDonHang_DonHang]
GO
ALTER TABLE [dbo].[CTDonHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_Xe] FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[CTDonHang] CHECK CONSTRAINT [FK_CTDonHang_Xe]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [FK_Xe_HangXe] FOREIGN KEY([MaHX])
REFERENCES [dbo].[HangXe] ([MaHX])
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [FK_Xe_HangXe]
GO
USE [master]
GO
ALTER DATABASE [QLBanHang] SET  READ_WRITE 
GO
