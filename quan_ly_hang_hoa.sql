-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 19, 2022 at 02:53 PM
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
  `ho_ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gioi_tinh` bit(1) NOT NULL,
  `luong` int(11) DEFAULT NULL,
  `id_tai_khoan` int(11) NOT NULL,
  PRIMARY KEY (`ma`),
  UNIQUE KEY `email` (`email`,`sdt`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhan_vien`
--

INSERT INTO `nhan_vien` (`ma`, `ho_ten`, `sdt`, `email`, `ngay_sinh`, `dia_chi`, `gioi_tinh`, `luong`, `id_tai_khoan`) VALUES
(4, 'Hoàng Tiến Trường', '0123912523', 'tientruong@gmail.com', '2004-01-01', 'Hà Nội', b'1', 1000, 0),
(5, 'Đặng Minh Tú', '0123471233', 'minhtu@gmail.com', '2001-12-12', 'Hà Nội', b'1', 1000, 0),
(6, 'Lê Long Vũ', '01239125231', 'vu@gmail.com', '2001-12-12', 'Hà Nội', b'1', 1000, 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

DROP TABLE IF EXISTS `tai_khoan`;
CREATE TABLE IF NOT EXISTS `tai_khoan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `user_name`, `password`, `quyen`) VALUES
(1, 'tung_dang', 'tung_dang', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `hang_hoa_ibfk_1` FOREIGN KEY (`ma_loai_hang`) REFERENCES `loai_hang` (`ma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
