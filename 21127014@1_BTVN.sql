USE [QLLopHoc]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 2/18/2023 9:53:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MaGV] [nchar](50) NOT NULL,
	[HoTen] [nchar](50) NULL,
	[GioiTinh] [nchar](10) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nchar](50) NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 2/18/2023 9:53:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[MaHS] [nchar](10) NOT NULL,
	[HoTen] [nchar](50) NULL,
	[GioiTinh] [nchar](10) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nchar](50) NULL,
	[MaLop] [nchar](10) NULL,
 CONSTRAINT [PK_HOCSINH] PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOPHOC]    Script Date: 2/18/2023 9:53:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOPHOC](
	[MaLop] [nchar](10) NOT NULL,
	[TenLop] [nchar](10) NULL,
	[Nam] [int] NULL,
	[GVCN] [nchar](50) NULL,
	[LopTr] [nchar](50) NULL,
 CONSTRAINT [PK_LOPHOC] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GIAOVIEN] ([MaGV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (N'10001                                             ', N'Nguyễn Văn A                                      ', N'Nam       ', CAST(N'1990-12-14' AS Date), N'HCM                                               ')
INSERT [dbo].[GIAOVIEN] ([MaGV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (N'10002                                             ', N'Trần Thị Chi                                      ', N'Nữ        ', CAST(N'1980-03-06' AS Date), N'Long An                                           ')
INSERT [dbo].[GIAOVIEN] ([MaGV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (N'10003                                             ', N'Trần Văn Cẩm                                      ', N'Nam       ', CAST(N'1990-01-04' AS Date), N'Quảng Ngãi                                        ')
INSERT [dbo].[GIAOVIEN] ([MaGV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (N'10004                                             ', N'Lê Thị Hồng Vân                                   ', N'Nữ        ', CAST(N'1979-08-07' AS Date), N'Quảng Ngãi                                        ')
INSERT [dbo].[GIAOVIEN] ([MaGV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (N'10005                                             ', N'Lê Viết Nha                                       ', N'Nam       ', CAST(N'1993-07-04' AS Date), N'An Giang                                          ')
GO
INSERT [dbo].[HOCSINH] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaLop]) VALUES (N'21127003  ', N'Phan Thanh An                                     ', N'Nam       ', CAST(N'2003-09-07' AS Date), N'Cần Thơ                                           ', N'CS1005    ')
INSERT [dbo].[HOCSINH] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaLop]) VALUES (N'21127014  ', N'Phạm Hồng Gia Bảo                                 ', N'Nam       ', CAST(N'2003-04-09' AS Date), N'Quảng Ngãi                                        ', N'CS101     ')
INSERT [dbo].[HOCSINH] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaLop]) VALUES (N'21127041  ', N'Lý Nhật Hào                                       ', N'Nam       ', CAST(N'2003-05-11' AS Date), N'An Giang                                          ', N'CS104     ')
INSERT [dbo].[HOCSINH] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaLop]) VALUES (N'21127168  ', N'Lê Nguyên Thái                                    ', N'Nam       ', CAST(N'2003-01-08' AS Date), N'Cam Ranh                                          ', N'CS102     ')
INSERT [dbo].[HOCSINH] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaLop]) VALUES (N'21127430  ', N'Nguyễn Huy Thành                                  ', N'Nam       ', CAST(N'2003-02-12' AS Date), N'Long An                                           ', N'CS103     ')
GO
INSERT [dbo].[LOPHOC] ([MaLop], [TenLop], [Nam], [GVCN], [LopTr]) VALUES (N'CS1005    ', N'OS        ', 2023, N'10003                                             ', N'21127430                                          ')
INSERT [dbo].[LOPHOC] ([MaLop], [TenLop], [Nam], [GVCN], [LopTr]) VALUES (N'CS101     ', N'Tổ hợp    ', 2023, N'10001                                             ', N'21127014                                          ')
INSERT [dbo].[LOPHOC] ([MaLop], [TenLop], [Nam], [GVCN], [LopTr]) VALUES (N'CS102     ', N'OOP       ', 2022, N'10001                                             ', N'21127003                                          ')
INSERT [dbo].[LOPHOC] ([MaLop], [TenLop], [Nam], [GVCN], [LopTr]) VALUES (N'CS103     ', N'DSA       ', 2021, N'10004                                             ', N'21127014                                          ')
INSERT [dbo].[LOPHOC] ([MaLop], [TenLop], [Nam], [GVCN], [LopTr]) VALUES (N'CS104     ', N'Vật Lý    ', 2021, N'10005                                             ', N'21127041                                          ')
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [FK_HOCSINH_LOPHOC] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOPHOC] ([MaLop])
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [FK_HOCSINH_LOPHOC]
GO
ALTER TABLE [dbo].[LOPHOC]  WITH CHECK ADD  CONSTRAINT [FK_LOPHOC_GIAOVIEN] FOREIGN KEY([GVCN])
REFERENCES [dbo].[GIAOVIEN] ([MaGV])
GO
ALTER TABLE [dbo].[LOPHOC] CHECK CONSTRAINT [FK_LOPHOC_GIAOVIEN]
GO
