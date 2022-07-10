-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 10, 2022 lúc 08:03 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nienluan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc_sanpham`
--

CREATE TABLE `danhmuc_sanpham` (
  `ma_dm` int(10) NOT NULL,
  `ten_dm` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mamau_dm` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_dm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc_tintuc`
--

CREATE TABLE `danhmuc_tintuc` (
  `ma_dmtt` int(11) NOT NULL,
  `ten_dmtt` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc_tintuc`
--

INSERT INTO `danhmuc_tintuc` (`ma_dmtt`, `ten_dmtt`) VALUES
(1, 'Đánh giá'),
(2, 'Tư vấn'),
(3, 'Stories'),
(4, 'Laptop');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau`
--

CREATE TABLE `mau` (
  `ma_m` int(10) NOT NULL,
  `ten_m` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`ma_m`, `ten_m`) VALUES
(1, 'Trắng'),
(2, 'Đen'),
(3, 'Tím'),
(4, 'Xanh Lá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `ma_ncc` int(11) NOT NULL,
  `ten_ncc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi_ncc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt_ncc` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_ncc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`ma_ncc`, `ten_ncc`, `diachi_ncc`, `sdt_ncc`, `email_ncc`) VALUES
(1, 'Thế giới di động', 'Lô 1A, Khu Đô Thị, Ấp Phú Ninh, X, Tam Bình, Vĩnh Long', '0124512456', 'tgdd@gmail.com'),
(2, 'FPT Shop', 'Số 037 Tổ 3, Khóm 5, Cái Vồn, Bình Minh, Vĩnh Long', '014789546', 'fptshop@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `ma_nv` int(11) NOT NULL,
  `ten_nv` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nv` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass_nv` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt_nv` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi_nv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`ma_nv`, `ten_nv`, `user_nv`, `pass_nv`, `sdt_nv`, `diachi_nv`) VALUES
(1, 'Lê Diểm Trinh', 'ldtrinh', '6141bcafae02e2b1e6110f7f0c238ce7', '0824955654', 'Tam Bình, Vĩnh Long');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc_sanpham`
--
ALTER TABLE `danhmuc_sanpham`
  ADD PRIMARY KEY (`ma_dm`);

--
-- Chỉ mục cho bảng `danhmuc_tintuc`
--
ALTER TABLE `danhmuc_tintuc`
  ADD PRIMARY KEY (`ma_dmtt`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`ma_m`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`ma_ncc`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`ma_nv`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc_sanpham`
--
ALTER TABLE `danhmuc_sanpham`
  MODIFY `ma_dm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `danhmuc_tintuc`
--
ALTER TABLE `danhmuc_tintuc`
  MODIFY `ma_dmtt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `mau`
--
ALTER TABLE `mau`
  MODIFY `ma_m` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `ma_ncc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `ma_nv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
