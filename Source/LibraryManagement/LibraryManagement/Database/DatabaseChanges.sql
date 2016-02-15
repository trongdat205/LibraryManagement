/*
SQLyog Ultimate v9.02 
MySQL - 5.5.13 : Database - library_management
*********************************************************************
*/
CREATE DATABASE /*!32312 IF NOT EXISTS*/`library_management` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `library_management`;
/*Table structure for table `cau_hinh` */
DROP TABLE IF EXISTS `muon_tra`;
DROP TABLE IF EXISTS `sach`;
DROP TABLE IF EXISTS `cau_hinh`;
DROP TABLE IF EXISTS `doc_gia`;
DROP TABLE IF EXISTS `loai_sach`;
DROP TABLE IF EXISTS `ma`;
DROP TABLE IF EXISTS `nguoi_su_dung`;
DROP TABLE IF EXISTS `nha_xuat_ban`;
DROP TABLE IF EXISTS `tac_gia`;
DROP TABLE IF EXISTS `tinh_trang_sach`;
DROP TABLE IF EXISTS `tinh_trang_muon_tra`;

CREATE TABLE `cau_hinh` (
  `MaCauHinh` int(11) NOT NULL AUTO_INCREMENT,
  `TenCauHinh` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTri` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTriMoRong` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaCauHinh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cau_hinh` */

/*Table structure for table `doc_gia` */
CREATE TABLE `doc_gia` (
  `DocGiaID` int(128) NOT NULL AUTO_INCREMENT,
  `TenDocGia` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamSinh` int(11) DEFAULT NULL,
  `DiaChi` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` text COLLATE utf8_unicode_ci,
  `NgayTao` datetime NOT NULL,
  PRIMARY KEY (`DocGiaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `doc_gia` */

/*Table structure for table `loai_sach` */
CREATE TABLE `loai_sach` (
  `LoaiSachID` int(11) NOT NULL AUTO_INCREMENT,
  `TenLoaiSach` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(1028) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayTao` datetime NOT NULL,
  PRIMARY KEY (`LoaiSachID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `loai_sach` */

/*Table structure for table `ma` */
CREATE TABLE `ma` (
  `MaID` int(11) NOT NULL,
  `TenMa` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ma` */



/*Table structure for table `nguoi_su_dung` */
CREATE TABLE `nguoi_su_dung` (
  `NguoiSuDungID` int(11) NOT NULL AUTO_INCREMENT,
  `TenDangNhap` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayTao` datetime NOT NULL,
  `NgayHoatDongCuoi` datetime NOT NULL,
  PRIMARY KEY (`NguoiSuDungID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `nguoi_su_dung` */

/*Table structure for table `nha_xuat_ban` */
CREATE TABLE `nha_xuat_ban` (
  `NhaXuatBanID` int(11) NOT NULL AUTO_INCREMENT,
  `TenNhaXuatBan` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(1028) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayTao` datetime NOT NULL,
  PRIMARY KEY (`NhaXuatBanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `nha_xuat_ban` */

/*Table structure for table `tac_gia` */
CREATE TABLE `tac_gia` (
  `TacGiaID` int(11) NOT NULL AUTO_INCREMENT,
  `TenTacGia` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(1028) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayTao` datetime NOT NULL,
  PRIMARY KEY (`TacGiaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tac_gia` */

/*Table structure for table `tinh_trang_muon_tra` */

CREATE TABLE `tinh_trang_muon_tra` (
  `TinhTrangMuonTraID` int(11) NOT NULL,
  `TenTinhTrang` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`TinhTrangMuonTraID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*Data for the table `tinh_trang_muon_tra` */

insert  into `tinh_trang_muon_tra`(`TinhTrangMuonTraID`,`TenTinhTrang`) values (1,'Đang Mượn'),(2,'Đã Trả'),(3,'Trễ Hạn'),(4,'Đã Mất');

/*Table structure for table `tinh_trang_sach` */
CREATE TABLE `tinh_trang_sach` (
  `TinhTrangSachID` int(11) NOT NULL,
  `TenTinhTrang` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`TinhTrangSachID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tinh_trang_sach` */

insert  into `tinh_trang_sach`(`TinhTrangSachID`,`TenTinhTrang`) values (1,'Đang Mượn'),(2,'Trong Kho'),(3,'Đã Mất'),(4,'Xuất Kho');

/*Table structure for table `sach` */
CREATE TABLE `sach` (
  `SachID` int(11) NOT NULL AUTO_INCREMENT,
  `TenSach` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiSachID` int(11) NOT NULL,
  `TacGiaID` int(11) NOT NULL,
  `TacGiaDichID` int(11) NOT NULL,
  `NhaXuatBanID` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `TinhTrangID` int(11) NOT NULL,
  `NamXuatBan` int(11) DEFAULT NULL,
  `NoiXuatBan` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoVaoSoTongQuat` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayVaoSoTongQuat` datetime DEFAULT NULL,
  `NguonNhap` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `NguonXuat` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayXuat` datetime DEFAULT NULL,
  `MaVach` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(1028) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TomTatNoiDung` text COLLATE utf8_unicode_ci,
  `NgayTao` datetime NOT NULL,
  PRIMARY KEY (`SachID`),
  KEY `FK_sach_loai_sach` (`LoaiSachID`),
  KEY `FK_sach_tac_gia` (`TacGiaID`),
  KEY `FK_sach` (`TacGiaDichID`),
  KEY `FK_sach_nha_xuat_ban` (`NhaXuatBanID`),
  CONSTRAINT `FK_sach` FOREIGN KEY (`TacGiaDichID`) REFERENCES `tac_gia` (`TacGiaID`),
  CONSTRAINT `FK_sach_loai_sach` FOREIGN KEY (`LoaiSachID`) REFERENCES `loai_sach` (`LoaiSachId`),
  CONSTRAINT `FK_sach_nha_xuat_ban` FOREIGN KEY (`NhaXuatBanID`) REFERENCES `nha_xuat_ban` (`NhaXuatBanID`),
  CONSTRAINT `FK_sach_tac_gia` FOREIGN KEY (`TacGiaID`) REFERENCES `tac_gia` (`TacGiaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sach` */

/*Table structure for table `muon_tra` */
CREATE TABLE `muon_tra` (
  `MuonTraID` int(11) NOT NULL AUTO_INCREMENT,
  `SachID` int(11) NOT NULL,
  `DocGiaID` int(11) NOT NULL,
  `NgayMuon` datetime NOT NULL,
  `NgayHenTra` datetime NOT NULL,
  `GiaHan` tinyint(1) DEFAULT NULL,
  `NgayGiaHan` datetime DEFAULT NULL,
  `TinhTrangMuonTraID` int(11) NOT NULL,
  PRIMARY KEY (`MuonTraID`),
  KEY `FK_muon_tra_sach` (`SachID`),
  KEY `FK_muon_tra_doc_gia` (`DocGiaID`),
  CONSTRAINT `FK_muon_tra_doc_gia` FOREIGN KEY (`DocGiaID`) REFERENCES `doc_gia` (`DocGiaID`),
  CONSTRAINT `FK_muon_tra_sach` FOREIGN KEY (`SachID`) REFERENCES `sach` (`SachID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `muon_tra` */