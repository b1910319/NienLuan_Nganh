-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 12, 2022 lúc 09:10 AM
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
  `ghichu_dm` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `mamau_dm` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_dm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc_sanpham`
--

INSERT INTO `danhmuc_sanpham` (`ma_dm`, `ten_dm`, `ghichu_dm`, `mamau_dm`, `hinh_dm`) VALUES
(8, 'Điện thoại', ' dienthoai', '#ffa3a3', '9937ae7311 . dienthoai.png'),
(9, 'Laptop', ' laptop', '#fda363', '4567f6c00d . laptop.png'),
(10, 'Table', ' table', '#efc2ff', '0c54023865 . tablet.png'),
(11, 'Smartwatch', 'smartwatch', '#f5d63d', '1c434f6ece . dongho_thongminh.png'),
(12, 'Đồng hồ', ' dongho', '#4d91ff', '5dc2572585 . dongho_thoitrang.png'),
(13, 'Máy tính để bàn', ' maytinhdeban', '#ffadb6', 'e575b5c338 . maytinh_bo.png'),
(14, 'Bàn phím', ' banphim', '#ff94eb', '2ed97c14cb . banphim.png'),
(15, 'Cáp sạc', ' capsac', '#e0b3ff', '3a2da9b676 . capsac.png'),
(16, 'Chuột máy tính', ' chuot', '#c6d8fb', 'd828debf5e . chuot_maytinh.png'),
(17, 'Loa', ' loa', '#ff6666', '7416d9faf4 . loa.png'),
(18, 'Màn hình máy tính', ' manhinhmaytinh', '#d6d6d6', '2a3959c2ad . manghinh_maytinh.png'),
(19, 'Sạc dự phòng', ' sacduphong', '#d8a8ff', '0766e0c0c4 . sac_duphong.png'),
(20, 'Tai nghe', 'tainghe', '#ff85c0', '5b11cf922b . tainghe.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc_thuonghieu`
--

CREATE TABLE `danhmuc_thuonghieu` (
  `ma_dm` int(10) NOT NULL,
  `ma_th` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc_thuonghieu`
--

INSERT INTO `danhmuc_thuonghieu` (`ma_dm`, `ma_th`) VALUES
(8, 7),
(8, 8),
(8, 11),
(8, 12),
(8, 13),
(8, 14),
(8, 15),
(8, 24),
(8, 27),
(9, 16),
(9, 17),
(9, 18),
(9, 10),
(9, 19),
(9, 20),
(9, 22),
(9, 23),
(9, 24),
(9, 25),
(10, 26),
(10, 8),
(10, 12),
(10, 10),
(10, 27),
(10, 15),
(10, 28),
(18, 18),
(18, 34),
(18, 17),
(18, 10);

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
-- Cấu trúc bảng cho bảng `loai_sanpham`
--

CREATE TABLE `loai_sanpham` (
  `ma_lsp` int(10) NOT NULL,
  `ma_dm` int(10) NOT NULL,
  `ten_lsp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_lsp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_sanpham`
--

INSERT INTO `loai_sanpham` (`ma_lsp`, `ma_dm`, `ten_lsp`, `icon_lsp`) VALUES
(11, 9, 'Deal sốc', '<i class=\"fas fa-solid fa-fire\"></i>'),
(12, 9, 'Gaming', '<i class=\"fas fa-solid fa-gamepad\"></i>'),
(15, 9, 'Học tập, Văn phòng', '<i class=\"fa-solid fa-chalkboard-user\"></i>'),
(16, 9, 'Đồ hoạ, Kỹ thuật', '<i class=\"fa-solid fa-compass-drafting\"></i>'),
(17, 9, 'Mỏng, Nhẹ', '<i class=\"fa-solid fa-feather\"></i>'),
(18, 9, 'Cao cấp, Sang trọng', '<i class=\"fa-solid fa-gem\"></i>'),
(19, 11, 'Thời trang', '<i class=\"fa-solid fa-wand-magic-sparkles\"></i>'),
(20, 11, 'Tiện ích', '<i class=\"fa-solid fa-heart-pulse\"></i>'),
(21, 11, 'Thể thao', '<i class=\"fa-solid fa-person-biking\"></i>'),
(22, 11, 'Trẻ em', '<i class=\"fa-solid fa-children\"></i>'),
(23, 11, 'Phụ kiện', '<i class=\"fa-solid fa-paperclip\"></i>');

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
(3, 'Tím');

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `ma_th` int(10) NOT NULL,
  `ten_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_th` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_th` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`ma_th`, `ten_th`, `logo_th`, `hinh_th`) VALUES
(7, 'Iphone', '3547225908 . logo_iphone.png', '3547225908 . iphone.png'),
(8, 'Samsung', 'e8e30de4b4 . logo_samsung.png', 'e8e30de4b4 . samsung.png'),
(10, 'Lenove', '46fda4ebf9 . logo_lenovo.png', '46fda4ebf9 . lenovo.png'),
(11, 'Macbook', 'be01c71a97 . logo_macbook.png', 'e9596252ae . macbook.jpg'),
(12, 'Xiaomi', '0d02b17674 . logo_xiaomi.png', '0d02b17674 . '),
(13, 'Vivo', 'cfc0bdc6d5 . logo_vivo.png', 'cfc0bdc6d5 . '),
(14, 'Realme', 'c92d970e28 . logo_realme.png', 'c92d970e28 . '),
(15, 'Nokia', '65a47a420a . logo_nokia.jpg', '65a47a420a . '),
(16, 'Oppo', '87f961a74a . logo_oppo.jpg', '87f961a74a . '),
(17, 'Asus', '7bc56fd131 . logo_asus.png', '7bc56fd131 . '),
(18, 'Hp', '06f57abbca . logo_hp.png', '53f1be4e7d . hp.jpg'),
(19, 'Acer', '2e521ea9f8 . logo_acer.png', '2e521ea9f8 . '),
(20, 'Dell', '9dd98d6f79 . logo_dell.png', '9dd98d6f79 . '),
(21, 'MSI', 'e0b06e5483 . logo_msi.png', 'e0b06e5483 . '),
(22, 'LG', '58b19a15b5 . logo_lg.png', '58b19a15b5 . '),
(23, 'Gigabyte', 'd8a7071dbc . logo_gigabyte.png', 'd8a7071dbc . '),
(24, 'Intel', 'ba031f3f10 . logo_itel.jpg', 'ba031f3f10 . '),
(25, 'Chuwi', 'b58673a34b . logo_chuwi.png', 'b58673a34b . '),
(26, 'Ipad', '9d5d8a3de2 . logo_ipad.jpg', '9d5d8a3de2 . '),
(27, 'Masstel', '2502a833ca . logo_masstel.png', '2502a833ca . '),
(28, 'Huawei', '6a61cf1e12 . logo_huawei.jpg', '6a61cf1e12 . '),
(29, 'Watch', '9b3af1fcec . logo_watch.png', '9b3af1fcec . '),
(30, 'Garmin', '91a1cbac40 . logo_garmin.png', '91a1cbac40 . '),
(31, 'Befit', 'fa7ca4fe81 . logo_befit.png', 'fa7ca4fe81 . '),
(32, 'Kiddcare', '906975fb61 . logo_kidcare.png', '906975fb61 . '),
(33, 'Amazfit', '807237f61f . logo_amazfit.png', '807237f61f . '),
(34, 'Apple', 'ad2e9926e6 . logo_apple.png', 'ad2e9926e6 . ');

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
-- Chỉ mục cho bảng `loai_sanpham`
--
ALTER TABLE `loai_sanpham`
  ADD PRIMARY KEY (`ma_lsp`);

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
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`ma_th`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc_sanpham`
--
ALTER TABLE `danhmuc_sanpham`
  MODIFY `ma_dm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `danhmuc_tintuc`
--
ALTER TABLE `danhmuc_tintuc`
  MODIFY `ma_dmtt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loai_sanpham`
--
ALTER TABLE `loai_sanpham`
  MODIFY `ma_lsp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `mau`
--
ALTER TABLE `mau`
  MODIFY `ma_m` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `ma_ncc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `ma_nv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `ma_th` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
