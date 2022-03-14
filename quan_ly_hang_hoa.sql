-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 13, 2022 lúc 05:31 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quan_ly_hang_hoa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_don_nhap_kho`
--

CREATE TABLE `chi_tiet_hoa_don_nhap_kho` (
  `ma` int(11) NOT NULL,
  `ma_hoa_don_nhap_kho` int(11) NOT NULL,
  `ma_hang_hoa` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `vi_tri_kho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_hoa_don_nhap_kho`
--

INSERT INTO `chi_tiet_hoa_don_nhap_kho` (`ma`, `ma_hoa_don_nhap_kho`, `ma_hang_hoa`, `so_luong`, `don_gia`, `vi_tri_kho`) VALUES
(1, 1, 3, 10, 20000000, 'Thái Hà'),
(2, 2, 5, 20, 70000, 'Cảng'),
(3, 3, 6, 1, 10000, 'Cảng'),
(4, 4, 8, 2, 100000, 'Củ chi'),
(5, 5, 4, 5, 450000, 'Cảng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_don_xuat_kho`
--

CREATE TABLE `chi_tiet_hoa_don_xuat_kho` (
  `ma` int(11) NOT NULL,
  `ma_hoa_don_xuat_kho` int(11) NOT NULL,
  `ma_hang_hoa` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `vi_tri_kho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_hoa_don_xuat_kho`
--

INSERT INTO `chi_tiet_hoa_don_xuat_kho` (`ma`, `ma_hoa_don_xuat_kho`, `ma_hang_hoa`, `so_luong`, `vi_tri_kho`) VALUES
(1, 1, 7, 10, 'Củ chi'),
(2, 2, 3, 50, 'Thái Hà'),
(3, 3, 6, 10, 'Cảng'),
(4, 4, 10, 2, 'Thái Hà'),
(5, 5, 5, 30, 'Cảng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_hoa`
--

CREATE TABLE `hang_hoa` (
  `ma` int(11) NOT NULL,
  `ten_hang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_nhap` int(11) NOT NULL,
  `gia_ban` int(11) NOT NULL,
  `img_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_luong_da_ban` int(11) NOT NULL,
  `so_luong_ton` int(11) NOT NULL,
  `ma_nha_cung_cap` int(11) NOT NULL,
  `ma_loai_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hang_hoa`
--

INSERT INTO `hang_hoa` (`ma`, `ten_hang`, `gia_nhap`, `gia_ban`, `img_link`, `so_luong_da_ban`, `so_luong_ton`, `ma_nha_cung_cap`, `ma_loai_hang`) VALUES
(2, 'Laptop', 500, 700, '', 2, 28, 1, 1),
(3, 'Camera', 500000, 2000000, '', 2, 10, 3, 1),
(4, 'Thịt lợn', 50000, 90000, '', 100, 1000, 2, 2),
(5, 'Trứng', 500, 3500, '', 20, 50, 2, 2),
(6, 'Rau sạch', 1000, 10000, '', 100, 50, 2, 2),
(7, 'Cây lau nhà', 10000, 50000, '', 20, 30, 1, 3),
(8, 'Chổi lúa', 10000, 50000, '', 20, 5, 1, 3),
(9, 'Sọt rác', 5000, 15000, '', 5, 10, 1, 3),
(10, 'Nồi cơm', 100000, 1000000, '', 10, 100, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don_nhap_kho`
--

CREATE TABLE `hoa_don_nhap_kho` (
  `ma` int(11) NOT NULL,
  `ma_nhan_vien` int(11) NOT NULL,
  `ngay_nhap` date NOT NULL,
  `ma_nha_cung_cap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don_nhap_kho`
--

INSERT INTO `hoa_don_nhap_kho` (`ma`, `ma_nhan_vien`, `ngay_nhap`, `ma_nha_cung_cap`) VALUES
(1, 1, '2022-02-11', 1),
(2, 3, '2022-03-01', 1),
(3, 1, '2022-01-08', 2),
(4, 4, '2022-02-23', 3),
(5, 3, '2022-02-05', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don_xuat_kho`
--

CREATE TABLE `hoa_don_xuat_kho` (
  `ma` int(11) NOT NULL,
  `ma_nhan_vien` int(11) NOT NULL,
  `ngay_xuat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don_xuat_kho`
--

INSERT INTO `hoa_don_xuat_kho` (`ma`, `ma_nhan_vien`, `ngay_xuat`) VALUES
(1, 1, '2022-03-14'),
(2, 3, '2022-03-14'),
(3, 4, '2022-03-14'),
(4, 1, '2022-03-14'),
(5, 3, '2022-03-14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_hang`
--

CREATE TABLE `loai_hang` (
  `ma` int(11) NOT NULL,
  `ten_loai_hang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_hang`
--

INSERT INTO `loai_hang` (`ma`, `ten_loai_hang`) VALUES
(1, 'Điện tử'),
(2, 'Thực phẩm'),
(3, 'Gia dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `ma` int(11) NOT NULL,
  `ten_dang_nhap` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ho_ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_sinh` date NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` bit(1) NOT NULL DEFAULT b'0',
  `gioi_tinh` bit(1) NOT NULL,
  `luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien`
--

INSERT INTO `nhan_vien` (`ma`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `sdt`, `email`, `ngay_sinh`, `dia_chi`, `quyen`, `gioi_tinh`, `luong`) VALUES
(1, 'admin', 'admin', 'Đặng Thanh Tùng', '099898989', 'thanhtung@gmail.com', '2004-03-01', 'Thanh Trì, Hà Nội', b'1', b'0', 2000),
(3, 'tendn', 'matkhau', 'hoten', 'sdt', 'a@b.com', '2018-12-23', 'diachi', b'0', b'1', 0),
(4, 'admin1', 'admin1', 'Hoàng Tiến Trường', '0123912523', 'tientruong@gmail.com', '2004-01-01', 'Hà Nội', b'0', b'1', 1000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_cung_cap`
--

CREATE TABLE `nha_cung_cap` (
  `ma` int(11) NOT NULL,
  `ten_nha_cung_cap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tri_kho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nha_cung_cap`
--

INSERT INTO `nha_cung_cap` (`ma`, `ten_nha_cung_cap`, `sdt`, `email`, `dia_chi`, `vi_tri_kho`) VALUES
(1, 'Masan', 666888444, 'masan@gmail.com', 'TP.HCM', 'Củ Chi'),
(2, 'Winmart', 555666999, 'winmart@gmail.com', 'Hải Phòng', 'Cảng'),
(3, 'Phong Vũ', 231321253, 'phongvu@gmail.com', 'Hà Nội', 'Thái Hà');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_tiet_hoa_don_nhap_kho`
--
ALTER TABLE `chi_tiet_hoa_don_nhap_kho`
  ADD PRIMARY KEY (`ma`),
  ADD KEY `ma_hoa_don_nhap_kho` (`ma_hoa_don_nhap_kho`),
  ADD KEY `ma_hang_hoa` (`ma_hang_hoa`);

--
-- Chỉ mục cho bảng `chi_tiet_hoa_don_xuat_kho`
--
ALTER TABLE `chi_tiet_hoa_don_xuat_kho`
  ADD PRIMARY KEY (`ma`),
  ADD KEY `ma_hoa_don_xuat_kho` (`ma_hoa_don_xuat_kho`),
  ADD KEY `ma_hang_hoa` (`ma_hang_hoa`);

--
-- Chỉ mục cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD PRIMARY KEY (`ma`),
  ADD KEY `ma_loai_hang` (`ma_loai_hang`);

--
-- Chỉ mục cho bảng `hoa_don_nhap_kho`
--
ALTER TABLE `hoa_don_nhap_kho`
  ADD PRIMARY KEY (`ma`),
  ADD KEY `ma_nha_cung_cap` (`ma_nha_cung_cap`),
  ADD KEY `ma_nhan_vien` (`ma_nhan_vien`);

--
-- Chỉ mục cho bảng `hoa_don_xuat_kho`
--
ALTER TABLE `hoa_don_xuat_kho`
  ADD PRIMARY KEY (`ma`),
  ADD KEY `ma_nhan_vien` (`ma_nhan_vien`);

--
-- Chỉ mục cho bảng `loai_hang`
--
ALTER TABLE `loai_hang`
  ADD PRIMARY KEY (`ma`);

--
-- Chỉ mục cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`ma`),
  ADD UNIQUE KEY `email` (`email`,`sdt`);

--
-- Chỉ mục cho bảng `nha_cung_cap`
--
ALTER TABLE `nha_cung_cap`
  ADD PRIMARY KEY (`ma`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_tiet_hoa_don_nhap_kho`
--
ALTER TABLE `chi_tiet_hoa_don_nhap_kho`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_hoa_don_xuat_kho`
--
ALTER TABLE `chi_tiet_hoa_don_xuat_kho`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `hoa_don_nhap_kho`
--
ALTER TABLE `hoa_don_nhap_kho`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hoa_don_xuat_kho`
--
ALTER TABLE `hoa_don_xuat_kho`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loai_hang`
--
ALTER TABLE `loai_hang`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nha_cung_cap`
--
ALTER TABLE `nha_cung_cap`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_hoa_don_nhap_kho`
--
ALTER TABLE `chi_tiet_hoa_don_nhap_kho`
  ADD CONSTRAINT `chi_tiet_hoa_don_nhap_kho_ibfk_1` FOREIGN KEY (`ma_hoa_don_nhap_kho`) REFERENCES `hoa_don_nhap_kho` (`ma`),
  ADD CONSTRAINT `chi_tiet_hoa_don_nhap_kho_ibfk_2` FOREIGN KEY (`ma_hang_hoa`) REFERENCES `hang_hoa` (`ma`);

--
-- Các ràng buộc cho bảng `chi_tiet_hoa_don_xuat_kho`
--
ALTER TABLE `chi_tiet_hoa_don_xuat_kho`
  ADD CONSTRAINT `chi_tiet_hoa_don_xuat_kho_ibfk_1` FOREIGN KEY (`ma_hoa_don_xuat_kho`) REFERENCES `hoa_don_xuat_kho` (`ma`),
  ADD CONSTRAINT `chi_tiet_hoa_don_xuat_kho_ibfk_2` FOREIGN KEY (`ma_hang_hoa`) REFERENCES `hang_hoa` (`ma`);

--
-- Các ràng buộc cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `hang_hoa_ibfk_1` FOREIGN KEY (`ma_loai_hang`) REFERENCES `loai_hang` (`ma`);

--
-- Các ràng buộc cho bảng `hoa_don_nhap_kho`
--
ALTER TABLE `hoa_don_nhap_kho`
  ADD CONSTRAINT `hoa_don_nhap_kho_ibfk_1` FOREIGN KEY (`ma_nha_cung_cap`) REFERENCES `nha_cung_cap` (`ma`),
  ADD CONSTRAINT `hoa_don_nhap_kho_ibfk_2` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nhan_vien` (`ma`);

--
-- Các ràng buộc cho bảng `hoa_don_xuat_kho`
--
ALTER TABLE `hoa_don_xuat_kho`
  ADD CONSTRAINT `hoa_don_xuat_kho_ibfk_1` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nhan_vien` (`ma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
