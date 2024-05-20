USE
[master]
CREATE 
DATABASE [WEB_BAN_GIAY]
GO

USE [WEB_BAN_GIAY]
GO
-- WEB_BAN_GIAY.dbo.chat_lieu definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.chat_lieu;

CREATE TABLE chat_lieu (
	id_chat_lieu uniqueidentifier DEFAULT newid() NOT NULL,
	ma varchar(50) NULL,
	ten_chat_lieu nvarchar(255) NOT NULL,
	ngay_tao date DEFAULT getdate() NULL,
	ngay_cap_nhat date NULL,
	mo_ta nvarchar(255) NULL,
	trang_thai int NULL,
	CONSTRAINT PK__chat_lie__B66D25F390F59602 PRIMARY KEY (id_chat_lieu)
);


GO
-- WEB_BAN_GIAY.dbo.chuc_vu definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.chuc_vu;

CREATE TABLE chuc_vu (
	id_chuc_vu uniqueidentifier DEFAULT newid() NOT NULL,
	ma varchar(50) NULL,
	ten_chuc_vu nvarchar(255) NOT NULL,
	ngay_tao date DEFAULT getdate() NULL,
	ngay_cap_nhat date NULL,
	mo_ta nvarchar(255) NULL,
	trang_thai int NULL,
	CONSTRAINT PK__chuc_vu__C3C6BB2D414C6F05 PRIMARY KEY (id_chuc_vu)
);


GO
-- WEB_BAN_GIAY.dbo.hinh_anh definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.hinh_anh;

CREATE TABLE hinh_anh (
	id_hinh_anh uniqueidentifier DEFAULT newid() NOT NULL,
	ma varchar(50) NULL,
	ten_hinh_anh nvarchar(255) NOT NULL,
	url_anh nvarchar(255) NOT NULL,
	url_anh1 nvarchar(255) NOT NULL,
	url_anh2 nvarchar(255) NOT NULL,
	ngay_tao date DEFAULT getdate() NULL,
	ngay_cap_nhat date NULL,
	mo_ta nvarchar(255) NULL,
	trang_thai int NULL,
	CONSTRAINT PK__hinh_anh__B62B4243FF3B7A7A PRIMARY KEY (id_hinh_anh)
);


GO
-- WEB_BAN_GIAY.dbo.khach_hang definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.khach_hang;

CREATE TABLE khach_hang (
	id_khach_hang uniqueidentifier DEFAULT newid() NOT NULL,
	ma varchar(50) NULL,
	ten_khach_hang nvarchar(50) NOT NULL,
	email varchar(255) NULL,
	sdt varchar(255) NULL,
	ngay_sinh date NULL,
	gioi_tinh bit NULL,
	ngay_tao date DEFAULT getdate() NULL,
	ngay_cap_nhat date NULL,
	trang_thai nvarchar(50) NULL,
	tai_khoan nvarchar(50) NULL,
	mat_khau nvarchar(32) NULL,
	reset_code VARCHAR(50)
	CONSTRAINT PK__khach_ha__9B2CAEF3A03F8914 PRIMARY KEY (id_khach_hang)
);

GO


-- WEB_BAN_GIAY.dbo.khuyen_mai definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.khuyen_mai;

CREATE TABLE khuyen_mai (
	id_khuyen_mai uniqueidentifier DEFAULT newid() NOT NULL,
	ma varchar(50) NULL,
	ten_khuyen_mai nvarchar(100) NOT NULL,
	gia_tri_giam decimal(10,2) NOT NULL,
	loai_khuyen_mai int NULL,
	ngay_tao date DEFAULT getdate() NULL,
	ngay_cap_nhat date NULL,
	mo_ta nvarchar(255) NULL,
	trang_thai int NULL,
	ngay_bat_dau bigint NULL,
	ngay_ket_thuc bigint NULL,
	dieu_kien_gia decimal(38,0) NULL,
	CONSTRAINT PK__khuyen_m__E5173E98F09D7DD3 PRIMARY KEY (id_khuyen_mai)
);


GO
-- WEB_BAN_GIAY.dbo.kich_thuoc definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.kich_thuoc;

CREATE TABLE kich_thuoc (
	id_kich_thuoc uniqueidentifier DEFAULT newid() NOT NULL,
	ma varchar(50) NULL,
	ten_kich_thuoc nvarchar(255) NOT NULL,
	ngay_tao date DEFAULT getdate() NULL,
	ngay_cap_nhat date NULL,
	mo_ta nvarchar(255) NULL,
	trang_thai int NULL,
	CONSTRAINT PK__kich_thu__CA778371C373824E PRIMARY KEY (id_kich_thuoc)
);

GO

-- WEB_BAN_GIAY.dbo.loai definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.loai;

CREATE TABLE loai (
	id_loai uniqueidentifier DEFAULT newid() NOT NULL,
	ma varchar(50) NULL,
	ten_loai nvarchar(255) NOT NULL,
	ngay_tao date DEFAULT getdate() NULL,
	ngay_cap_nhat date NULL,
	mo_ta nvarchar(255) NULL,
	trang_thai int NULL,
	CONSTRAINT PK__loai__9A03AA7255AE0E46 PRIMARY KEY (id_loai)
);

GO

-- WEB_BAN_GIAY.dbo.mau_sac definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.mau_sac;

CREATE TABLE mau_sac (
	id_mau_sac uniqueidentifier DEFAULT newid() NOT NULL,
	ma varchar(50) NULL,
	ten_mau_sac nvarchar(255) NOT NULL,
	ngay_tao date DEFAULT getdate() NULL,
	ngay_cap_nhat date NULL,
	mo_ta nvarchar(255) NULL,
	trang_thai int NULL,
	CONSTRAINT PK__mau_sac__5D8EF426D174C13F PRIMARY KEY (id_mau_sac)
);


GO
-- WEB_BAN_GIAY.dbo.thuong_hieu definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.thuong_hieu;

CREATE TABLE thuong_hieu (
	id_thuong_hieu uniqueidentifier DEFAULT newid() NOT NULL,
	ma varchar(50) NULL,
	ten_thuong_hieu nvarchar(255) NOT NULL,
	xuat_su nvarchar(50) NULL,
	ngay_tao date DEFAULT getdate() NULL,
	ngay_cap_nhat date NULL,
	mo_ta nvarchar(255) NULL,
	CONSTRAINT PK__thuong_h__37E13EF3118F64B7 PRIMARY KEY (id_thuong_hieu)
);


GO
-- WEB_BAN_GIAY.dbo.dia_chi definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.dia_chi;



-- WEB_BAN_GIAY.dbo.hoa_don definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.hoa_don;

CREATE TABLE hoa_don (
	id_hoa_don uniqueidentifier DEFAULT newid() NOT NULL,
	ma_hoa_don varchar(50) NULL,
	ngay_tao datetime DEFAULT getdate(),
	ngay_cap_nhat datetime NULL,
	nhan_vien_id uniqueidentifier NULL,
	khach_hang_id uniqueidentifier NULL,
	khuyen_mai_id uniqueidentifier NULL,
	ten_nguoi_nhan nvarchar(100) NULL,
	sdt varchar(50) NULL,
	dia_chi nvarchar(50) NULL,
	tong_tien money NULL,
	phuong_thuc_thanh_toan int NULL,
	loai int NULL,
	ghi_chu nvarchar(MAX) NULL,
	trang_thai int NULL,
	tien_mat money NULL,
	chuyen_khoan money NULL,
	tien_giam money NULL,
	tien_ship money NULL,
	CONSTRAINT PK__hoa_don__342B812A66836C5A PRIMARY KEY (id_hoa_don),
	CONSTRAINT FK__hoa_don__khach_h__7F2BE32F FOREIGN KEY (khach_hang_id) REFERENCES khach_hang(id_khach_hang),
	CONSTRAINT FK__hoa_don__khuyen___00200768 FOREIGN KEY (khuyen_mai_id) REFERENCES khuyen_mai(id_khuyen_mai),
	CONSTRAINT hoa_don_nhan_vien_FK FOREIGN KEY (nhan_vien_id) REFERENCES nhan_vien(id_nhan_vien)
);

GO
-- WEB_BAN_GIAY.dbo.nhan_vien definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.nhan_vien;

CREATE TABLE nhan_vien (
	id_nhan_vien uniqueidentifier DEFAULT newid() NOT NULL,
	ma varchar(50) NULL,
	ten_nhan_vien nvarchar(50) NOT NULL,
	email varchar(255) NULL,
	sdt int NULL,
	ngay_sinh date NULL,
	gioi_tinh bit NULL,
	dia_chi nvarchar(150) NULL,
	cccd varchar(20) NULL,
	hinh_anh nvarchar(255) NULL,
	tai_khoan nvarchar(50) NULL,
	mat_khau nvarchar(32) NULL,
	ngay_tao date DEFAULT getdate() NULL,
	ngay_cap_nhat date NULL,
	trang_thai int NULL,
	chuc_vu_id uniqueidentifier NOT NULL,
	CONSTRAINT PK__nhan_vie__2BE021006972A3F3 PRIMARY KEY (id_nhan_vien),
	CONSTRAINT FK__nhan_vien__chuc___797309D9 FOREIGN KEY (chuc_vu_id) REFERENCES chuc_vu(id_chuc_vu)
);


GO
-- WEB_BAN_GIAY.dbo.san_pham definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.san_pham;

CREATE TABLE san_pham (
	id_san_pham uniqueidentifier DEFAULT newid() NOT NULL,
	ma_san_pham nvarchar(20) NOT NULL,
	ten_san_pham nvarchar(150) NOT NULL,
	id_hinh_anh uniqueidentifier NOT NULL,
	id_loai uniqueidentifier NULL,
	id_thuong_hieu uniqueidentifier NULL,
	ngay_tao date DEFAULT getdate() NULL,
	ngay_cap_nhat date NULL,
	mo_ta nvarchar(255) NULL,
	trang_thai int NULL,
	CONSTRAINT PK__san_pham__5776A5292C97CB24 PRIMARY KEY (id_san_pham),
	CONSTRAINT FK__san_pham__id_hin__5629CD9C FOREIGN KEY (id_hinh_anh) REFERENCES hinh_anh(id_hinh_anh),
	CONSTRAINT FK__san_pham__id_loa__571DF1D5 FOREIGN KEY (id_loai) REFERENCES loai(id_loai),
	CONSTRAINT FK__san_pham__id_thu__5812160E FOREIGN KEY (id_thuong_hieu) REFERENCES thuong_hieu(id_thuong_hieu)
);


GO
-- WEB_BAN_GIAY.dbo.chi_tiet_san_pham definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.chi_tiet_san_pham;

CREATE TABLE chi_tiet_san_pham (
	id_chi_tiet_san_pham uniqueidentifier DEFAULT newid() NOT NULL,
	ma_chi_tiet_san_pham nvarchar(20) NOT NULL,
	san_pham_id uniqueidentifier NOT NULL,
	kich_thuoc_id uniqueidentifier NOT NULL,
	mau_sac_id uniqueidentifier NOT NULL,
	chat_lieu_id uniqueidentifier NOT NULL,
	ngay_tao date DEFAULT getdate() NULL,
	ngay_cap_nhat date NULL,
	so_luong_ton int NULL,
	don_gia decimal(10,2) NULL,
	trang_thai int NULL,
	mo_ta nvarchar(255) NULL,
	hinh_anh_id uniqueidentifier NULL,
	is_delete int DEFAULT 1 NULL,
	CONSTRAINT PK__chi_tiet__F5455242EB8CB334 PRIMARY KEY (id_chi_tiet_san_pham),
	CONSTRAINT FK__chi_tiet___chat___73BA3083 FOREIGN KEY (chat_lieu_id) REFERENCES chat_lieu(id_chat_lieu),
	CONSTRAINT FK__chi_tiet___kich___71D1E811 FOREIGN KEY (kich_thuoc_id) REFERENCES kich_thuoc(id_kich_thuoc),
	CONSTRAINT FK__chi_tiet___mau_s__72C60C4A FOREIGN KEY (mau_sac_id) REFERENCES mau_sac(id_mau_sac),
	CONSTRAINT FK__chi_tiet___san_p__70DDC3D8 FOREIGN KEY (san_pham_id) REFERENCES san_pham(id_san_pham)
);

GO


-- WEB_BAN_GIAY.dbo.gio_hang_chi_tiet definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.gio_hang_chi_tiet;

CREATE TABLE gio_hang_chi_tiet (
	id_gio_hang_chi_tiet uniqueidentifier DEFAULT newid() NOT NULL,
	id_chi_tiet_san_pham uniqueidentifier NULL,
	so_luong int NULL,
	don_gia decimal(10,2) NULL,
	trang_thai int NULL,
	id_khach_hang uniqueidentifier NULL,
	CONSTRAINT PK__gio_hang__67D9D8DB43C11199 PRIMARY KEY (id_gio_hang_chi_tiet),
	CONSTRAINT FK__gio_hang___id_ch__0E6E26BF FOREIGN KEY (id_chi_tiet_san_pham) REFERENCES chi_tiet_san_pham(id_chi_tiet_san_pham),
	CONSTRAINT gio_hang_chi_tiet_khach_hang_FK FOREIGN KEY (id_khach_hang) REFERENCES khach_hang(id_khach_hang)
);

GO

-- WEB_BAN_GIAY.dbo.hoa_don_chi_tiet definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.hoa_don_chi_tiet;

CREATE TABLE hoa_don_chi_tiet (
	id_hoa_don_chi_tiet uniqueidentifier DEFAULT newid() NOT NULL,
	hoa_don_id uniqueidentifier NOT NULL,
	chi_tiet_san_pham_id uniqueidentifier NULL,
	so_luong int NOT NULL,
	don_gia decimal(10,2) NOT NULL,
	trang_thai int NULL,
	CONSTRAINT PK__hoa_don___683F56944BFE0BE2 PRIMARY KEY (id_hoa_don_chi_tiet),
	CONSTRAINT FK__hoa_don_c__chi_t__04E4BC85 FOREIGN KEY (chi_tiet_san_pham_id) REFERENCES chi_tiet_san_pham(id_chi_tiet_san_pham),
	CONSTRAINT FK__hoa_don_c__hoa_d__03F0984C FOREIGN KEY (hoa_don_id) REFERENCES hoa_don(id_hoa_don)
);

GO

 --WEB_BAN_GIAY.dbo.lich_su_trang_thai definition

-- Drop table

-- DROP TABLE WEB_BAN_GIAY.dbo.lich_su_trang_thai;

CREATE TABLE WEB_BAN_GIAY.dbo.lich_su_trang_thai (
	id uniqueidentifier NOT NULL,
	ngay_tao datetime NULL,
	ngay_cap_nhat datetime NULL,
	trang_thai int NULL,
	hoa_don_id uniqueidentifier NULL,
	is_delete int NULL,
	CONSTRAINT lich_su_trang_thai_pk PRIMARY KEY (id)
);


-- WEB_BAN_GIAY.dbo.lich_su_trang_thai foreign keys

ALTER TABLE WEB_BAN_GIAY.dbo.lich_su_trang_thai ADD CONSTRAINT lich_su_trang_thai_hoa_don_FK FOREIGN KEY (hoa_don_id) REFERENCES WEB_BAN_GIAY.dbo.hoa_don(id_hoa_don);

