  USE
[master]
CREATE 
DATABASE [WEB_BAN_GIAY]
GO

USE [WEB_BAN_GIAY]
GO

--Khách Hàng

CREATE TABLE khach_hang
(
	id_khach_hang   UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	ma				 VARCHAR(50) Null,
	ten_khach_hang	 NVARCHAR(50) Not Null,
    email          VARCHAR(255) Null,
	sdt			   VARCHAR Null,
	ngay_sinh       DATE Null,
    gioi_tinh       BIT Null,
	ngay_tao     DATE Default GetDATE(),
	ngay_cap_nhat     DATE Null,
	trang_thai		NVARCHAR(50)Null,
    tai_khoan		NVARCHAR(50)Null,
    mat_khau		NVARCHAR(32)Null,
) 
Go

--Địa Chỉ
CREATE TABLE dia_chi
(
    id_dia_chi UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	ma				 VARCHAR(50) Null,
    dia_chi_chi_tiet NVARCHAR(50) Null,
    quan_huyen  NVARCHAR( MAX) Null,
    phuong_xa NVARCHAR(50) Null,
    thanh_pho    NVARCHAR(50) Null,
	khach_hang_id    UNIQUEIDENTIFIER
        REFERENCES khach_hang (id_khach_hang),
	ngay_tao     DATE Default GetDATE(),
	ngay_cap_nhat     DATE Null,
	trang_thai  INT null 

    --ngay_tao		DATE Default GetDATE(),
    --ngay_cap_nhat   DATE Null,
	--tinh_trang      INT Null,
	--mo_ta  NVARCHAR( MAX)  
)
Go

--Giỏ Hàng
Go
CREATE TABLE gio_hang
(
	id_gio_hang UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	id_khach_hang   UNIQUEIDENTIFIER
        REFERENCES khach_hang (id_khach_hang),
	ma				 VARCHAR(50) Null,
	ngay_tao	DATE Default GetDATE(),
	ghi_chu NVARCHAR(50) Null,
	trang_thai INT Null,
) 
Go

--Giỏ Hàng Chi Tiết 
CREATE TABLE gio_hang_chi_tiet
(
	id_gio_hang_chi_tiet UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	id_gio_hang   UNIQUEIDENTIFIER
        REFERENCES gio_hang (id_gio_hang),
	id_chi_tiet_san_pham   UNIQUEIDENTIFIER
        REFERENCES chi_tiet_san_pham (id_chi_tiet_san_pham),
	so_luong INT Null,
	don_gia DECIMAL(10, 2),
	trang_thai INT Null,
)
Go

--Hình Ảnh
CREATE TABLE hinh_anh
(
	id_hinh_anh UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	ma				 VARCHAR(50) Null,
	ten_hinh_anh NVarchar(255) Not Null,
	url_anh NVarchar(255) Not Null,
	url_anh1  NVarchar(255) Not Null,
	url_anh2 NVarchar(255) Not Null,
	ngay_tao	DATE Default GetDATE(),
	ngay_cap_nhat DATE Null,
	mo_ta NVarchar(255)  Null,
	trang_thai INT Null,
)
Go

--Loại Sản Phẩm
CREATE TABLE loai
(
	id_loai UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	ma				 VARCHAR(50) Null,
	ten_loai NVarchar(255) Not Null,
	ngay_tao	DATE Default GetDATE(),
	ngay_cap_nhat DATE Null,
	mo_ta NVarchar(255)  Null,
	trang_thai INT Null,
)
Go

--Thương Hiệu
CREATE TABLE thuong_hieu
(
	id_thuong_hieu UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	ma				 VARCHAR(50) Null,
	ten_thuong_hieu NVarchar(255) Not Null,
	xuat_su		NVarchar(50)  Null,
	ngay_tao	DATE Default GetDATE(),
	ngay_cap_nhat DATE Null,
	mo_ta NVarchar(255) Null,
)
Go

--Sản Phẩm
CREATE TABLE san_pham
(
	id_san_pham UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
    ma_san_pham NVARCHAR(20) Not Null,
	ten_san_pham NVARCHAR(150) Not Null,
	id_hinh_anh	UNIQUEIDENTIFIER
        REFERENCES hinh_anh (id_hinh_anh)Not Null,
	id_loai	UNIQUEIDENTIFIER
        REFERENCES loai (id_loai) Null,
	id_thuong_hieu	UNIQUEIDENTIFIER
        REFERENCES thuong_hieu (id_thuong_hieu) Null,
	ngay_tao	DATE Default GetDATE(),
	ngay_cap_nhat DATE Null,
	mo_ta  NVARCHAR(255) Null,
	trang_thai INT Null
)

--Kích Thước
Go
CREATE TABLE kich_thuoc
(
	id_kich_thuoc UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	ma				 VARCHAR(50) Null,
	ten_kich_thuoc NVarchar(255) Not Null,
	ngay_tao	DATE Default GetDATE(),
	ngay_cap_nhat DATE Null,
	mo_ta  NVARCHAR(255) Null,
	trang_thai INT Null,
)
--Màu Sắc
Go
CREATE TABLE mau_sac
(
	id_mau_sac UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	ma				 VARCHAR(50) Null,
	ten_mau_sac NVarchar(255) Not Null,
	ngay_tao	DATE Default GetDATE(),
	ngay_cap_nhat DATE Null,
	mo_ta  NVARCHAR(255) Null,
	trang_thai INT Null,
)
--Chất Liệu
Go
CREATE TABLE chat_lieu
(
	id_chat_lieu UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	ma				 VARCHAR(50) Null,
	ten_chat_lieu NVarchar(255) Not Null,
	ngay_tao	DATE Default GetDATE(),
	ngay_cap_nhat DATE Null,
	mo_ta  NVARCHAR(255) Null,
	trang_thai INT Null,
)
--Chức Vụ
Go
CREATE TABLE chuc_vu
(
	id_chuc_vu UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	ma				 VARCHAR(50) Null,
	ten_chuc_vu NVarchar(255) Not Null,
	ngay_tao	DATE Default GetDATE(),
	ngay_cap_nhat DATE Null,
	mo_ta  NVARCHAR(255) Null,
	trang_thai INT Null,
)


Go


--Khuyễn Mãi
CREATE TABLE khuyen_mai
(
    id_khuyen_mai UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	ma				 VARCHAR(50) Null,
    ten_khuyen_mai NVARCHAR(100) Not Null,
    gia_tri_giam DECIMAL(10, 2) Not Null,
    loai_khuyen_mai INT Null,
    ngay_bat_dau DATE Default GetDATE(),
    ngay_ket_thuc DATE Null,
    ngay_tao DATE Default GetDATE(),
	ngay_cap_nhat DATE Null,
    mo_ta NVARCHAR(255)  Null,
    trang_thai INT Null,
)
Go

/*
--bảng chi tiết sản phẩm chưa xong 
-- ==> chưa làm bảng nhân viên

-- done các bảng Khách Hàng , Đánh Giá , Địa Chỉ , Giỏ Hàng , Giỏ Hàng Chi Tiết ,
Loại Sản Phẩm , Hình Ảnh , THương Hiệu , Sản Phẩm , Kích Thước , Màu Sắc ,Chất Liệu , 
Chức Vụ , Hóa Đơn  , Hóa Đơn Chi Tiết , Khuyễn Mãi
*/
-- ChiTietSP
CREATE TABLE chi_tiet_san_pham
(
	id_chi_tiet_san_pham UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
    ma_chi_tiet_san_pham NVARCHAR(20) Not Null,
	san_pham_id UNIQUEIDENTIFIER 
		REFERENCES san_pham (id_san_pham) Not Null,
	kich_thuoc_id  UNIQUEIDENTIFIER 
		REFERENCES kich_thuoc (id_kich_thuoc) Not Null,
	mau_sac_id  UNIQUEIDENTIFIER 
		REFERENCES mau_sac (id_mau_sac) Not Null,
	chat_lieu_id  UNIQUEIDENTIFIER 
		REFERENCES chat_lieu (id_chat_lieu) Not Null,
	ngay_tao	DATE Default GetDATE(),
	ngay_cap_nhat DATE Null,
	so_luong_ton INT NULL,
	don_gia DECIMAL(10, 2) null,
	trang_thai INT NULL,
	mo_ta NVARCHAR(255)  Null,
)
GO


CREATE TABLE danh_gia
(
	id_danh_gia UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	ma				 VARCHAR(50) Null,
    chi_tiet_san_pham_id   UNIQUEIDENTIFIER
        REFERENCES chi_tiet_san_pham (id_chi_tiet_san_pham),

	khach_hang_id   UNIQUEIDENTIFIER
        REFERENCES khach_hang (id_khach_hang),
	ghi_chu NVARCHAR(50)  Null,
)
GO

CREATE TABLE nhan_vien
(
	id_nhan_vien   UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	ma				 VARCHAR(50) Null,
	ten_nhan_vien		   NVARCHAR(50) Not Null,
    email          VARCHAR(255) Null,
	sdt			   INT Null,
	ngay_sinh       DATE Null,
    gioi_tinh       BIT Null,
	dia_chi			NVARCHAR(150)Null,
	cccd			VARCHAR(20) NULL,
	hinh_anh		NVARCHAR(255)Null,
    tai_khoan		NVARCHAR(50)Null,
    mat_khau		NVARCHAR(32)Null,
	ngay_tao	DATE Default GetDATE(),
	ngay_cap_nhat DATE Null,
	trang_thai		int Null,
	chuc_vu_id		UNIQUEIDENTIFIER 
		REFERENCES chuc_vu (id_chuc_vu) Not Null,
)
GO

--Hóa Đơn
CREATE TABLE hoa_don(
	id_hoa_don   UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	ma_hoa_don	varchar(50) Not Null,
	ngay_tao		DATE Default GetDATE(),
	nhan_vien_id  UNIQUEIDENTIFIER
        REFERENCES nhan_vien (id_nhan_vien) Not Null,
    khach_hang_id  UNIQUEIDENTIFIER
        REFERENCES khach_hang (id_khach_hang)Not Null,
	khuyen_mai_id  UNIQUEIDENTIFIER
        REFERENCES khuyen_mai (id_khuyen_mai) Not Null,
	ten_nguoi_nhan NVARCHAR(100) Null,
	sdt varchar(50) Null,
	dia_chi nvarchar(50) Null,
	tong_tien Money Not Null,
	phuong_thuc_thanh_toan INT Null,
	loai int null,
	ghi_chu  NVARCHAR( MAX) Null,
	trang_thai INT Null
)
Go

--Hóa Đơn Chi Tiết
CREATE TABLE hoa_don_chi_tiet(
	id_hoa_don_chi_tiet   UNIQUEIDENTIFIER
        DEFAULT NEWID() PRIMARY KEY,
	hoa_don_id  UNIQUEIDENTIFIER
        REFERENCES hoa_don (id_hoa_don) Not Null,
	chi_tiet_san_pham_id   UNIQUEIDENTIFIER
        REFERENCES chi_tiet_san_pham (id_chi_tiet_san_pham),
	so_luong	INT Not Null,
	don_gia Decimal (10,2) Not Null,
	trang_thai INT Null,
)
Go