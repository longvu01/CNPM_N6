-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 06, 2022 at 10:33 AM
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
  `so_luong` int(11) NOT NULL,
  `ma_hang` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `vi_tri_kho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hoa_don_xuat_kho`
--

DROP TABLE IF EXISTS `chi_tiet_hoa_don_xuat_kho`;
CREATE TABLE IF NOT EXISTS `chi_tiet_hoa_don_xuat_kho` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `so_luong` int(11) NOT NULL,
  `ma_hang` int(11) NOT NULL,
  `vi_tri_kho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hang_hoa`
--

DROP TABLE IF EXISTS `hang_hoa`;
CREATE TABLE IF NOT EXISTS `hang_hoa` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten_hang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_nhap` int(11) NOT NULL,
  `gia_ban` int(11) NOT NULL,
  `so_luong_da_ban` int(11) NOT NULL,
  `so_luong_ton` int(11) NOT NULL,
  `ma_nha_cung_cap` int(11) NOT NULL,
  `ma_loai_hang` int(11) NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don_xuat_kho`
--

DROP TABLE IF EXISTS `hoa_don_xuat_kho`;
CREATE TABLE IF NOT EXISTS `hoa_don_xuat_kho` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ma_nhan_vien` int(11) NOT NULL,
  `ngay_xuat` date NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loai_hang`
--

DROP TABLE IF EXISTS `loai_hang`;
CREATE TABLE IF NOT EXISTS `loai_hang` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten_loai_hang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
CREATE TABLE IF NOT EXISTS `nhan_vien` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten_dang_nhap` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ho_ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_sinh` date NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` bit(1) NOT NULL DEFAULT b'0',
  `gioi_tinh` bit(1) NOT NULL,
  `luong` int(11) NOT NULL,
  PRIMARY KEY (`ma`),
  UNIQUE KEY `email` (`email`,`sdt`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhan_vien`
--

INSERT INTO `nhan_vien` (`ma`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `sdt`, `email`, `ngay_sinh`, `dia_chi`, `quyen`, `gioi_tinh`, `luong`) VALUES
(1, 'admin', 'admin', 'Đặng Thanh Tùng', '099898989', 'thanhtung@gmail.com', '2004-03-01', 'Thanh Trì, Hà Nội', b'1', b'0', 2000),
(3, 'tendn', 'matkhau', 'hoten', 'sdt', 'a@b.com', '2018-12-23', 'diachi', b'0', b'1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nha_cung_cap`
--

DROP TABLE IF EXISTS `nha_cung_cap`;
CREATE TABLE IF NOT EXISTS `nha_cung_cap` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten_nha_cung_cap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tri_kho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
