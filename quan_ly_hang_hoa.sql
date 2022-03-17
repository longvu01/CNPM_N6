-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2022 at 02:42 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quan_ly_hang_hoa`
--
CREATE DATABASE IF NOT EXISTS `quan_ly_hang_hoa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `quan_ly_hang_hoa`;

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hoa_don_nhap_kho`
--

DROP TABLE IF EXISTS `chi_tiet_hoa_don_nhap_kho`;
CREATE TABLE IF NOT EXISTS `chi_tiet_hoa_don_nhap_kho` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ma_hoa_don_nhap_kho` int(11) NOT NULL,
  `ma_hang_hoa` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `vi_tri_kho` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma`),
  KEY `ma_hoa_don_nhap_kho` (`ma_hoa_don_nhap_kho`),
  KEY `ma_hang_hoa` (`ma_hang_hoa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_hoa_don_nhap_kho`
--

INSERT INTO `chi_tiet_hoa_don_nhap_kho` (`ma`, `ma_hoa_don_nhap_kho`, `ma_hang_hoa`, `so_luong`, `don_gia`, `vi_tri_kho`) VALUES
(1, 1, 3, 10, 20000000, 'Thái Hà'),
(2, 2, 5, 20, 70000, 'Cảng'),
(3, 3, 6, 1, 10000, 'Cảng'),
(4, 4, 8, 2, 100000, 'Củ chi'),
(5, 5, 4, 5, 450000, 'Cảng');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hoa_don_xuat_kho`
--

DROP TABLE IF EXISTS `chi_tiet_hoa_don_xuat_kho`;
CREATE TABLE IF NOT EXISTS `chi_tiet_hoa_don_xuat_kho` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ma_hoa_don_xuat_kho` int(11) NOT NULL,
  `ma_hang_hoa` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `vi_tri_kho` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma`),
  KEY `ma_hoa_don_xuat_kho` (`ma_hoa_don_xuat_kho`),
  KEY `ma_hang_hoa` (`ma_hang_hoa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_hoa_don_xuat_kho`
--

INSERT INTO `chi_tiet_hoa_don_xuat_kho` (`ma`, `ma_hoa_don_xuat_kho`, `ma_hang_hoa`, `so_luong`, `vi_tri_kho`) VALUES
(1, 1, 7, 10, 'Củ chi'),
(2, 2, 3, 50, 'Thái Hà'),
(3, 3, 6, 10, 'Cảng'),
(4, 4, 10, 2, 'Thái Hà'),
(5, 5, 5, 30, 'Cảng');

-- --------------------------------------------------------

--
-- Table structure for table `hang_hoa`
--

DROP TABLE IF EXISTS `hang_hoa`;
CREATE TABLE IF NOT EXISTS `hang_hoa` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten_hang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_nhap` int(11) NOT NULL,
  `gia_ban` int(11) NOT NULL,
  `img_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_luong_da_ban` int(11) NOT NULL,
  `so_luong_ton` int(11) NOT NULL,
  `ma_nha_cung_cap` int(11) NOT NULL,
  `ma_loai_hang` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ma`),
  KEY `ma_loai_hang` (`ma_loai_hang`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hang_hoa`
--

INSERT INTO `hang_hoa` (`ma`, `ten_hang`, `gia_nhap`, `gia_ban`, `img_link`, `so_luong_da_ban`, `so_luong_ton`, `ma_nha_cung_cap`, `ma_loai_hang`, `create_at`) VALUES
(2, 'Laptop', 500, 700, '', 2, 28, 1, 1, '2022-03-13 16:53:05'),
(3, 'Camera', 500000, 2000000, '', 2, 10, 3, 1, '2022-03-12 16:53:05'),
(4, 'Thịt lợn', 50000, 90000, '', 100, 1000, 2, 2, '2022-03-11 16:53:05'),
(5, 'Trứng', 500, 3500, '', 20, 50, 2, 2, '2022-03-14 16:53:05'),
(6, 'Rau sạch', 1000, 10000, '', 100, 50, 2, 2, '2022-03-14 16:53:05'),
(7, 'Cây lau nhà', 10000, 50000, '', 20, 30, 1, 3, '2022-03-10 16:53:05'),
(8, 'Chổi lúa', 10000, 50000, '', 20, 5, 1, 3, '2022-03-01 16:53:05'),
(9, 'Sọt rác', 5000, 15000, '', 5, 10, 1, 3, '2022-03-14 16:53:05'),
(10, 'Nồi cơm', 100000, 1000000, '', 10, 10, 3, 1, '2022-03-02 16:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don_nhap_kho`
--

DROP TABLE IF EXISTS `hoa_don_nhap_kho`;
CREATE TABLE IF NOT EXISTS `hoa_don_nhap_kho` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ma_nhan_vien` int(11) NOT NULL,
  `ngay_nhap` date NOT NULL,
  `ma_nha_cung_cap` int(11) NOT NULL,
  PRIMARY KEY (`ma`),
  KEY `ma_nha_cung_cap` (`ma_nha_cung_cap`),
  KEY `ma_nhan_vien` (`ma_nhan_vien`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hoa_don_nhap_kho`
--

INSERT INTO `hoa_don_nhap_kho` (`ma`, `ma_nhan_vien`, `ngay_nhap`, `ma_nha_cung_cap`) VALUES
(1, 1, '2022-02-11', 1),
(2, 3, '2022-03-01', 1),
(3, 1, '2022-01-08', 2),
(4, 4, '2022-02-23', 3),
(5, 3, '2022-02-05', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don_xuat_kho`
--

DROP TABLE IF EXISTS `hoa_don_xuat_kho`;
CREATE TABLE IF NOT EXISTS `hoa_don_xuat_kho` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ma_nhan_vien` int(11) NOT NULL,
  `ngay_xuat` date NOT NULL,
  PRIMARY KEY (`ma`),
  KEY `ma_nhan_vien` (`ma_nhan_vien`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hoa_don_xuat_kho`
--

INSERT INTO `hoa_don_xuat_kho` (`ma`, `ma_nhan_vien`, `ngay_xuat`) VALUES
(1, 1, '2022-03-14'),
(2, 3, '2022-03-14'),
(3, 4, '2022-03-14'),
(4, 1, '2022-03-14'),
(5, 3, '2022-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `loai_hang`
--

DROP TABLE IF EXISTS `loai_hang`;
CREATE TABLE IF NOT EXISTS `loai_hang` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten_loai_hang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai_hang`
--

INSERT INTO `loai_hang` (`ma`, `ten_loai_hang`) VALUES
(1, 'Điện tử'),
(2, 'Thực phẩm'),
(3, 'Gia dụng');

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
CREATE TABLE IF NOT EXISTS `nhan_vien` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten_dang_nhap` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ho_ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quyen` bit(1) NOT NULL DEFAULT b'0',
  `gioi_tinh` bit(1) NOT NULL,
  `luong` int(11) DEFAULT NULL,
  PRIMARY KEY (`ma`),
  UNIQUE KEY `email` (`email`,`sdt`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhan_vien`
--

INSERT INTO `nhan_vien` (`ma`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `sdt`, `email`, `ngay_sinh`, `dia_chi`, `quyen`, `gioi_tinh`, `luong`) VALUES
(1, 'admin', 'admin', 'Đặng Thanh Tùng', '099898989', 'thanhtung@gmail.com', '2004-03-01', 'Thanh Trì, Hà Nội', b'1', b'0', 2000),
(3, 'tendn', 'matkhau', 'hoten', 'sdt', 'a@b.com', '2018-12-23', 'diachi', b'0', b'1', 0),
(4, 'admin1', 'admin1', 'Hoàng Tiến Trường', '0123912523', 'tientruong@gmail.com', '2004-01-01', 'Hà Nội', b'0', b'1', 1000),
(5, 'minhtu', 'minh01', 'Đặng Minh Tú', '0123471233', 'minhtu@gmail.com', '2001-12-12', 'Hà Nội', b'0', b'1', 1000),
(6, 'longvu', 'longvu01', 'Lê Long Vũ', '01239125231', 'vu@gmail.com', '2001-12-12', 'Hà Nội', b'0', b'1', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `nha_cung_cap`
--

DROP TABLE IF EXISTS `nha_cung_cap`;
CREATE TABLE IF NOT EXISTS `nha_cung_cap` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten_nha_cung_cap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tri_kho` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nha_cung_cap`
--

INSERT INTO `nha_cung_cap` (`ma`, `ten_nha_cung_cap`, `sdt`, `email`, `dia_chi`, `vi_tri_kho`) VALUES
(1, 'Masan', 666888444, 'masan@gmail.com', 'TP.HCM', 'Củ Chi'),
(2, 'Winmart', 555666999, 'winmart@gmail.com', 'Hải Phòng', 'Cảng'),
(3, 'Phong Vũ', 231321253, 'phongvu@gmail.com', 'Hà Nội', 'Thái Hà');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chi_tiet_hoa_don_nhap_kho`
--
ALTER TABLE `chi_tiet_hoa_don_nhap_kho`
  ADD CONSTRAINT `chi_tiet_hoa_don_nhap_kho_ibfk_1` FOREIGN KEY (`ma_hoa_don_nhap_kho`) REFERENCES `hoa_don_nhap_kho` (`ma`),
  ADD CONSTRAINT `chi_tiet_hoa_don_nhap_kho_ibfk_2` FOREIGN KEY (`ma_hang_hoa`) REFERENCES `hang_hoa` (`ma`);

--
-- Constraints for table `chi_tiet_hoa_don_xuat_kho`
--
ALTER TABLE `chi_tiet_hoa_don_xuat_kho`
  ADD CONSTRAINT `chi_tiet_hoa_don_xuat_kho_ibfk_1` FOREIGN KEY (`ma_hoa_don_xuat_kho`) REFERENCES `hoa_don_xuat_kho` (`ma`),
  ADD CONSTRAINT `chi_tiet_hoa_don_xuat_kho_ibfk_2` FOREIGN KEY (`ma_hang_hoa`) REFERENCES `hang_hoa` (`ma`);

--
-- Constraints for table `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `hang_hoa_ibfk_1` FOREIGN KEY (`ma_loai_hang`) REFERENCES `loai_hang` (`ma`);

--
-- Constraints for table `hoa_don_nhap_kho`
--
ALTER TABLE `hoa_don_nhap_kho`
  ADD CONSTRAINT `hoa_don_nhap_kho_ibfk_1` FOREIGN KEY (`ma_nha_cung_cap`) REFERENCES `nha_cung_cap` (`ma`),
  ADD CONSTRAINT `hoa_don_nhap_kho_ibfk_2` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nhan_vien` (`ma`);

--
-- Constraints for table `hoa_don_xuat_kho`
--
ALTER TABLE `hoa_don_xuat_kho`
  ADD CONSTRAINT `hoa_don_xuat_kho_ibfk_1` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nhan_vien` (`ma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
