﻿
CREATE DATABASE QUANLYDETAI

-- QUESTION 01 --

GO
USE QUANLYDETAI

GO
CREATE TABLE BOMON(
	MABM nvarchar(10) NOT NULL,
	TENBM nvarchar(50) NULL,
	PHONG nvarchar(10) NULL,
	DIENTHOAI nvarchar(10) NULL,
	TRUONGBM nvarchar(10) NULL,
	MAKHOA nvarchar(10) NULL,
	NGAYNHANCHUC date NULL,
	PRIMARY KEY (MABM)
) 


GO
CREATE TABLE CHUDE(
	MACD nvarchar(10) NOT NULL,
	TENCD nvarchar(50) NULL,
	PRIMARY KEY (MACD)
) 



GO
CREATE TABLE CONGVIEC(
	MADT nvarchar(10) NOT NULL,
	STT int NOT NULL,
	TENCV nvarchar(50) NULL,
	NGAYBD date NULL,
	NGAYKT date NULL,
	PRIMARY KEY (MADT, STT)
) 


GO
CREATE TABLE DETAI(
	MADT nvarchar(10) NOT NULL,
	TENDT nvarchar(50) NULL,
	KINHPHI decimal(5, 1) NULL,
	CAPQL nvarchar(50) NULL,
	NGAYBD date NULL,
	NGAYKT date NULL,
	MACD nvarchar(10) NULL,
	GVCNDT nvarchar(10) NULL,
	PRIMARY KEY (MADT)
)

GO
CREATE TABLE GIAOVIEN(
	MAGV nvarchar(10) NOT NULL,
	HOTEN nvarchar(50) NULL,
	LUONG decimal(5, 1) NULL,
	PHAI nvarchar(10) NULL,
	NGAYSINH date NULL,
	DIACHI nvarchar(50) NULL,
	GVQLCM nvarchar(10) NULL,
	MABM nvarchar(10) NULL,
	PRIMARY KEY (MAGV)
)


GO
CREATE TABLE GV_DT(
	MAGV nvarchar(10) NOT NULL,
	DIENTHOAI nvarchar(10) NOT NULL,
	PRIMARY KEY (MAGV, DIENTHOAI)
)

GO
CREATE TABLE KHOA(
	MAKHOA nvarchar(10) NOT NULL,
	TENKHOA nvarchar(50) NULL,
	NAMTL nvarchar(10) NULL,
	PHONG nvarchar(10) NULL,
	DIENTHOAI nvarchar(10) NULL,
	TRUONGKHOA nvarchar(10) NULL,
	NGAYNHANCHUC date NULL,
	PRIMARY KEY (MAKHOA)
)


GO
CREATE TABLE NGUOI_THAN(
	MAGV nvarchar(10) NOT NULL,
	TEN nvarchar(50) NOT NULL,
	NGSINH date NULL,
	PHAI nvarchar(10) NULL,
	PRIMARY KEY (MAGV, TEN)
)


GO
CREATE TABLE THAMGIADT(
	MAGV nvarchar(10) NOT NULL,
	MADT nvarchar(10) NOT NULL,
	STT int NOT NULL,
	PHUCAP decimal(2, 1) NULL,
	KETQUA nvarchar(10) NULL,
	PRIMARY KEY (MAGV, MADT, STT)
)

-- QUESTION 02 --

GO
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, TRUONGBM, MAKHOA, NGAYNHANCHUC) VALUES (N'CNTT', N'Công nghệ tri thức', N'B15', N'0838126126', NULL, N'CNTT', NULL)
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, TRUONGBM, MAKHOA, NGAYNHANCHUC) VALUES (N'HHC', N'Hóa hữu cơ', N'B44', N'8382222222', NULL, N'HH', NULL)
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, TRUONGBM, MAKHOA, NGAYNHANCHUC) VALUES (N'HL', N'Hóa lý', N'B42', N'0838878787', NULL, N'HH', NULL)
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, TRUONGBM, MAKHOA, NGAYNHANCHUC) VALUES (N'HPT', N'Hóa phân tích', N'B43', N'0838777777', N'007', N'HH', N'2007-10-15')
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, TRUONGBM, MAKHOA, NGAYNHANCHUC) VALUES (N'HTTT', N'Hệ thống thông tin', N'B13', N'0838125125', N'002', N'CNTT', N'2004-09-20')
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, TRUONGBM, MAKHOA, NGAYNHANCHUC) VALUES (N'MMT', N'Mạng máy tính', N'B16', N'0838676767', N'001', N'CNTT', N'2005-05-15')
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, TRUONGBM, MAKHOA, NGAYNHANCHUC) VALUES (N'SH', N'Sinh hóa', N'B33', N'0838989898', NULL, N'SH', NULL)
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, TRUONGBM, MAKHOA, NGAYNHANCHUC) VALUES (N'VLĐT', N'Vật lý điện tử', N'B23', N'0838234234', NULL, N'VL', NULL)
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, TRUONGBM, MAKHOA, NGAYNHANCHUC) VALUES (N'VLUD', N'Vật lý ứng dụng', N'B24', N'0838454545', N'005', N'VL', N'2006-02-18')
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, TRUONGBM, MAKHOA, NGAYNHANCHUC) VALUES (N'VS', N'Vi sinh', N'B32', N'0838909090', N'004', N'SH', N'2007-01-01')
GO
INSERT INTO CHUDE (MACD, TENCD) VALUES (N'NCPT', N'Nghiên cứu phát triển')
INSERT INTO CHUDE (MACD, TENCD) VALUES (N'QLGD', N'Quản lý giáo dục')
INSERT INTO CHUDE (MACD, TENCD) VALUES (N'UDCN', N'Ứng dụng công nghệ')
GO
INSERT INTO CONGVIEC (MADT, STT, TENCV, NGAYBD, NGAYKT) VALUES (N'001', 1, N'Khởi tạo và Lập kế hoạch', N'2007-10-20', N'2008-12-20' )
INSERT INTO CONGVIEC (MADT, STT, TENCV, NGAYBD, NGAYKT) VALUES (N'001', 2, N'Xác định yêu cầu', N'2008-12-21', N'2008-03-21')
INSERT INTO CONGVIEC (MADT, STT, TENCV, NGAYBD, NGAYKT) VALUES (N'001', 3, N'Phân tích hệ thống', N'2008-03-22', N'2008-05-22'  )
INSERT INTO CONGVIEC (MADT, STT, TENCV, NGAYBD, NGAYKT) VALUES (N'001', 4, N'Thiết kế hệ thống', N'2008-05-23'  , N'2008-06-23'  )
INSERT INTO CONGVIEC (MADT, STT, TENCV, NGAYBD, NGAYKT) VALUES (N'001', 5, N'Cài đặt thử nghiệm', N'2008-06-24'  , N'2008-10-20'  )
INSERT INTO CONGVIEC (MADT, STT, TENCV, NGAYBD, NGAYKT) VALUES (N'002', 1, N'Khởi tạo và Lập kế hoạch', N'2009-05-10'  , N'2009-07-10'  )
INSERT INTO CONGVIEC (MADT, STT, TENCV, NGAYBD, NGAYKT) VALUES (N'002', 2, N'Xác định yêu cầu', N'2009-07-11'  , N'2009-10-10'  )
INSERT INTO CONGVIEC (MADT, STT, TENCV, NGAYBD, NGAYKT) VALUES (N'002', 3, N'Phân tích hệ thống', N'2009-10-12'  , N'2009-12-20'  )
INSERT INTO CONGVIEC (MADT, STT, TENCV, NGAYBD, NGAYKT) VALUES (N'002', 4, N'Thiết kế hệ thống', N'2009-12-21'  , N'2010-03-22'  )
INSERT INTO CONGVIEC (MADT, STT, TENCV, NGAYBD, NGAYKT) VALUES (N'002', 5, N'Cài đặt thử nghiệm', N'2010-10-23'  , N'2010-05-10'  )
INSERT INTO CONGVIEC (MADT, STT, TENCV, NGAYBD, NGAYKT) VALUES (N'006', 1, N'Lấy mẫu', N'2006-10-20'  , N'2007-02-20'  )
INSERT INTO CONGVIEC (MADT, STT, TENCV, NGAYBD, NGAYKT) VALUES (N'006', 2, N'Nuôi cấy', N'2007-02-21'  , N'2008-08-21' )

GO
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGAYSINH, DIACHI, GVQLCM, MABM) VALUES (N'001', N'Nguyễn Hoài An ', 2000.0  , N'Nam', N'1973-02-15'  , N'25/3 Lạc Long Quân, Q.10, TP HCM', NULL, N'MMT')
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGAYSINH, DIACHI, GVQLCM, MABM) VALUES (N'002', N'Trần Trà Hương', 2500.0  , N'Nữ', N'1960-06-20'  , N'125 Trần Hưng Đạo, Q.1, TP HCM', NULL, N'HTTT')
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGAYSINH, DIACHI, GVQLCM, MABM) VALUES (N'003', N'Nguyễn Ngọc Ánh', 2200.0  , N'Nữ', N'1975-05-11'  , N'12/21 Võ Văn Ngân Thủ Đức, TP HCM', N'002', N'HTTT')
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGAYSINH, DIACHI, GVQLCM, MABM) VALUES (N'004', N'Trương Nam Sơn', 2300.0  , N'Nam', N'1959-06-20'  , N'215 Lý Thường Kiệt, TP Biên Hòa', NULL, N'VS')
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGAYSINH, DIACHI, GVQLCM, MABM) VALUES (N'005', N'Lý Hoàng Hà', 2500.0  , N'Nam', N'1954-10-23'  , N'22/5 Nguyễn Xí, Q.Bình Thạnh, TP HCM', NULL, N'VLĐT')
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGAYSINH, DIACHI, GVQLCM, MABM) VALUES (N'006', N'Trần Bạch Tuyết', 1500.0  , N'Nữ', N'1980-05-20'  , N'127 Hùng Vuongq, TP Mỹ Tho', N'004', N'VS')
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGAYSINH, DIACHI, GVQLCM, MABM) VALUES (N'007', N'Nguyễn An Trung', 2100.0  , N'Nam', N'1976-06-05'  , N'234 3/2, TP Biên Hòa', NULL, N'HPT')
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGAYSINH, DIACHI, GVQLCM, MABM) VALUES (N'008', N'Trần Trung Hiếu', 1800.0  , N'Nam', N'1977-08-06'  , N'22/11 Lý Thường Kiệt, TP Mỹ Tho', N'007', N'HPT')
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGAYSINH, DIACHI, GVQLCM, MABM) VALUES (N'009', N'Trần Hoàng Nam', 2000.0  , N'Nam', N'1975-11-12'  , N'234 Trần Não, An Phú, TP HCM', N'001', N'MMT')
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGAYSINH, DIACHI, GVQLCM, MABM) VALUES (N'010', N'Phạm Nam Thanh', 1500.0  , N'Nam', N'1980-12-12'  , N'221 Hùng Vương, Q.5, TP HCM', N'007', N'HPT')
GO
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES (N'001', N'0838912112')
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES (N'001', N'0903123123')
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES (N'002', N'0913454545')
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES (N'003', N'0838121212')
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES (N'003', N'0903656565')
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES (N'003', N'0937125125')
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES (N'006', N'0937888888')
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES (N'008', N'0653177171')
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES (N'008', N'0913232323')
GO
INSERT INTO KHOA (MAKHOA, TENKHOA, NAMTL, PHONG, DIENTHOAI, TRUONGKHOA, NGAYNHANCHUC) VALUES (N'CNTT', N'Công nghệ thông tin', N'1995', N'B11', N'0838123456', N'002', N'2005-02-20'  )
INSERT INTO KHOA (MAKHOA, TENKHOA, NAMTL, PHONG, DIENTHOAI, TRUONGKHOA, NGAYNHANCHUC) VALUES (N'HH', N'Hóa học', N'1980', N'B41', N'0838456456', N'007', N'2001-10-15'  )
INSERT INTO KHOA (MAKHOA, TENKHOA, NAMTL, PHONG, DIENTHOAI, TRUONGKHOA, NGAYNHANCHUC) VALUES (N'SH', N'Sinh học', N'1980', N'B31', N'0838454545', N'004', N'2000-10-11'  )
INSERT INTO KHOA (MAKHOA, TENKHOA, NAMTL, PHONG, DIENTHOAI, TRUONGKHOA, NGAYNHANCHUC) VALUES (N'VL', N'Vật lý', N'1976', N'B21', N'0838223223', N'005', N'2003-09-18'  )



GO
INSERT INTO NGUOI_THAN (MAGV, TEN, NGSINH, PHAI) VALUES (N'001', N'Hùng', N'1990-01-14'  , N'Nam')
INSERT INTO NGUOI_THAN (MAGV, TEN, NGSINH, PHAI) VALUES (N'001', N'Thủy', N'1994-12-08'  , N'Nữ')
INSERT INTO NGUOI_THAN (MAGV, TEN, NGSINH, PHAI) VALUES (N'003', N'Hà', N'1998-09-03'  , N'Nữ')
INSERT INTO NGUOI_THAN (MAGV, TEN, NGSINH, PHAI) VALUES (N'003', N'Thu', N'1998-09-03'  , N'Nữ')
INSERT INTO NGUOI_THAN (MAGV, TEN, NGSINH, PHAI) VALUES (N'007', N'Mai', N'2003-03-26'  , N'Nữ')
INSERT INTO NGUOI_THAN (MAGV, TEN, NGSINH, PHAI) VALUES (N'007', N'Vy', N'2000-02-14'  , N'Nữ')
INSERT INTO NGUOI_THAN (MAGV, TEN, NGSINH, PHAI) VALUES (N'008', N'Nam', N'1991-05-06'  , N'Nam')
INSERT INTO NGUOI_THAN (MAGV, TEN, NGSINH, PHAI) VALUES (N'009', N'An', N'1996-08-19', N'Nam')
INSERT INTO NGUOI_THAN (MAGV, TEN, NGSINH, PHAI) VALUES (N'010', N'Nguyệt', N'2006-01-14', N'Nữ')
GO
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES (N'001', N'002', 1, 0.0, NULL)
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES (N'001', N'002', 2, 2.0, NULL)
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES (N'002', N'001', 4, 2.0, N'Đạt')
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES (N'003', N'001', 1, 1.0, N'Đạt')
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES (N'003', N'001', 2, 0.0, N'Đạt')
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES (N'003', N'001', 4, 1.0, N'Đạt')
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES (N'003', N'002', 2, 0.0, NULL)
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES (N'004', N'006', 1, 0.0, N'Đạt')
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES (N'004', N'006', 2, 1.0, N'Đạt')
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES (N'006', N'006', 2, 1.5, N'Đạt')
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES (N'009', N'002', 3, 0.5, NULL)
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES (N'009', N'002', 4, 1.5, NULL)


-- QUESTION 01 --
-- Thưa thầy, cô, em đặt khóa ngoại(Q1) sau khi nhập data(Q2) bởi vì theo như em thử nghiệm : nếu mình tạo khóa ngoại trước và insert data sau thì máy sẽ 
-- báo lỗi do có nhiều bảng tạo thành 1 vòng tròn khép kín. Do đó, em làm yêu cầu Q2(nhập data) rồi mới thực hiện Q1 như vậy sẽ không bị lỗi. Mong thầy(cô) --
-- chấp nhận bài làm của em ạ --
GO
ALTER TABLE BOMON  WITH CHECK 
ADD  CONSTRAINT FK_BOMON_GIAOVIEN 
FOREIGN KEY(TRUONGBM)
REFERENCES GIAOVIEN (MAGV)

GO
ALTER TABLE BOMON CHECK CONSTRAINT FK_BOMON_GIAOVIEN

GO
ALTER TABLE BOMON  WITH CHECK 
ADD  CONSTRAINT FK_BOMON_KHOA 
FOREIGN KEY(MAKHOA)
REFERENCES KHOA (MAKHOA)

GO
ALTER TABLE BOMON CHECK CONSTRAINT FK_BOMON_KHOA

GO
ALTER TABLE CONGVIEC  WITH CHECK 
ADD  CONSTRAINT FK_CONGVIEC_DETAI 
FOREIGN KEY(MADT)
REFERENCES DETAI (MADT)

GO
ALTER TABLE CONGVIEC CHECK CONSTRAINT FK_CONGVIEC_DETAI

GO
ALTER TABLE DETAI  WITH CHECK 
ADD  CONSTRAINT FK_DETAI_CHUDE 
FOREIGN KEY(MACD)
REFERENCES CHUDE (MACD)

GO
ALTER TABLE DETAI CHECK CONSTRAINT FK_DETAI_CHUDE

GO
ALTER TABLE DETAI  WITH CHECK 
ADD  CONSTRAINT FK_DETAI_GIAOVIEN 
FOREIGN KEY(GVCNDT)
REFERENCES GIAOVIEN (MAGV)

GO
ALTER TABLE DETAI CHECK CONSTRAINT FK_DETAI_GIAOVIEN

GO
ALTER TABLE GIAOVIEN  WITH CHECK
ADD  CONSTRAINT FK_GIAOVIEN_BOMON
FOREIGN KEY(MABM)
REFERENCES BOMON (MABM)

GO
ALTER TABLE GIAOVIEN CHECK CONSTRAINT FK_GIAOVIEN_BOMON

GO
ALTER TABLE GIAOVIEN  WITH CHECK 
ADD  CONSTRAINT FK_GIAOVIEN_GIAOVIEN 
FOREIGN KEY(GVQLCM)
REFERENCES GIAOVIEN (MAGV)

GO
ALTER TABLE GIAOVIEN CHECK CONSTRAINT FK_GIAOVIEN_GIAOVIEN

GO
ALTER TABLE GV_DT  WITH CHECK
ADD  CONSTRAINT FK_GV_DT_GIAOVIEN 
FOREIGN KEY(MAGV)
REFERENCES GIAOVIEN (MAGV)

GO
ALTER TABLE GV_DT CHECK CONSTRAINT FK_GV_DT_GIAOVIEN

GO
ALTER TABLE KHOA  WITH CHECK 
ADD  CONSTRAINT FK_KHOA_GIAOVIEN 
FOREIGN KEY(TRUONGKHOA)
REFERENCES GIAOVIEN (MAGV)

GO
ALTER TABLE KHOA CHECK CONSTRAINT FK_KHOA_GIAOVIEN

GO
ALTER TABLE NGUOI_THAN  WITH CHECK
ADD  CONSTRAINT FK_NGUOI_THAN_GIAOVIEN 
FOREIGN KEY(MAGV)
REFERENCES GIAOVIEN (MAGV)

GO
ALTER TABLE NGUOI_THAN CHECK CONSTRAINT FK_NGUOI_THAN_GIAOVIEN

GO
ALTER TABLE THAMGIADT  WITH CHECK 
ADD  CONSTRAINT FK_THAMGIADT_CONGVIEC 
FOREIGN KEY(MADT, STT)
REFERENCES CONGVIEC (MADT, STT)

GO
ALTER TABLE THAMGIADT CHECK CONSTRAINT FK_THAMGIADT_CONGVIEC

GO
ALTER TABLE THAMGIADT  WITH CHECK 
ADD  CONSTRAINT FK_THAMGIADT_GIAOVIEN 
FOREIGN KEY(MAGV)
REFERENCES GIAOVIEN (MAGV)

GO
ALTER TABLE THAMGIADT CHECK CONSTRAINT FK_THAMGIADT_GIAOVIEN
GO
