-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 15, 2022 lúc 09:39 AM
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
-- Cấu trúc bảng cho bảng `chitiet_sanpham`
--

CREATE TABLE `chitiet_sanpham` (
  `ma_ctsp` int(10) NOT NULL,
  `ma_sp` int(10) NOT NULL,
  `camera_truoc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `camera_sau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `card_manhinh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `chatlieu_day` int(10) NOT NULL DEFAULT 0,
  `chatlieu_kinh` int(10) NOT NULL DEFAULT 0,
  `chip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `chongnuoc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `cong_ketnoi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `congnghe_cpu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `cpu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `dat_biet` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `doituong_sudung` int(10) NOT NULL DEFAULT 0,
  `duongkinh_mat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `hedieuhanh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `kichthuoc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `manhinh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `mat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `rom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `pin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ram` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sim` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `thietke` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `thoidiem_ramat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `thoiluong_pin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `tinhnang_suckhoe` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_sanpham`
--

INSERT INTO `chitiet_sanpham` (`ma_ctsp`, `ma_sp`, `camera_truoc`, `camera_sau`, `card_manhinh`, `chatlieu_day`, `chatlieu_kinh`, `chip`, `chongnuoc`, `cong_ketnoi`, `congnghe_cpu`, `cpu`, `dat_biet`, `doituong_sudung`, `duongkinh_mat`, `hedieuhanh`, `kichthuoc`, `manhinh`, `mat`, `rom`, `pin`, `ram`, `sim`, `thietke`, `thoidiem_ramat`, `thoiluong_pin`, `tinhnang_suckhoe`) VALUES
(2, 6, 'dffff', 'ffffffgh', ' ', 0, 0, 'ghjh', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'ssss', ' ', 'dđ', ' ', '256', 'hhhh', '3', 'ffff', ' ', ' ', ' ', ' '),
(3, 7, 'yiuiu', 'yuyu', ' ', 0, 0, 'etrrtry', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'lklk;', ' ', 'ghgkj', ' ', '256', 'rtry', '3', 'trytu', ' ', ' ', ' ', ' '),
(5, 8, ' ', ' ', 'Card tích hợpIntel UHD', 0, 0, ' ', ' ', '1 x USB 2.02 x USB 3.2HDMIJack tai nghe 3.5 mm', ' ', 'i310110U2.1GHz', ' ', 0, ' ', 'Windows 11 Home SL', 'Dài 362.2 mm - Rộng 253.4 mm - Dày 19.9 mm - Nặng 1.7 kg', '15.6', ' ', '256 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1TB (2280) / 512GB (2242))Hỗ trợ thêm 1 khe cắm HDD SATA (nâng cấp tối đa 1TB)', ' ', '4 GBDDR4 (On board 4GB +1 khe rời)2666 MHz', ' ', 'Vỏ nhựa', '2001', ' ', ' '),
(7, 9, ' ', ' ', 'asfd', 0, 0, ' ', ' ', 'sdfd', ' ', 'cgbv', ' ', 0, ' ', 'asfd', 'gfghg', 'dfgd', ' ', 'dgfdg', ' ', 'fhfgh', ' ', 'sdf', 'tytu', ' ', ' '),
(8, 10, ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'dfg', ' ', 'fg', 'sdg', '0', ' ', '0', ' ', ' ', ' ', 'fg', 'sdfg'),
(10, 11, ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'trinh', ' ', 'trinhle', 'trinh', '0', ' ', '0', ' ', ' ', ' ', 'trinh', 'trinhle'),
(13, 12, ' ', ' ', 'Intel Iris Xe', 0, 0, ' ', ' ', '2 x USB 2.02 x USB 3.2HDMILAN (RJ45)', 'i51135G72.40 GHz', ' ', ' ', 0, ' ', 'Windows 10 Home SL', 'Dài 541 mm - Rộng 185 mm - Dày 433 mm - Nặng 6.81 kg', '23.8 inchFull HD', ' ', '256', ' ', '8', ' ', ' ', ' ', ' ', ' ');

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
-- Cấu trúc bảng cho bảng `hinh`
--

CREATE TABLE `hinh` (
  `ma_h` int(10) NOT NULL,
  `ma_sp` int(10) NOT NULL,
  `hinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinh`
--

INSERT INTO `hinh` (`ma_h`, `ma_sp`, `hinh`) VALUES
(1, 6, '66a237d4d1 . banner_laptop_dohoa.jpg'),
(3, 8, '97597cdbcf . banner_laptop_caocap.jpg');

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
-- Cấu trúc bảng cho bảng `mau_sanpham`
--

CREATE TABLE `mau_sanpham` (
  `ma_sp` int(10) NOT NULL,
  `ma_m` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mau_sanpham`
--

INSERT INTO `mau_sanpham` (`ma_sp`, `ma_m`) VALUES
(11, 3),
(6, 2),
(10, 2);

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
  `diachi_nv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayvao` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`ma_nv`, `ten_nv`, `user_nv`, `pass_nv`, `sdt_nv`, `diachi_nv`, `ngayvao`) VALUES
(4, 'Lê Diểm Trinh', 'ldtrinh', '6141bcafae02e2b1e6110f7f0c238ce7', '0124512457', 'Phú Lộc, Tam Bình, Vĩnh Long', '2022-07-13'),
(5, 'Lê Thị Diễm Hằng', 'ltdhang', 'a1bc3146fd531764ef30961866aa53f9', '0124575135', 'Phú Lộc, Tam Bình, Vĩnh Long', '2022-07-13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ma_sp` int(10) NOT NULL,
  `ma_th` int(10) NOT NULL,
  `ma_lsp` int(10) NOT NULL,
  `ma_ncc` int(10) NOT NULL,
  `ma_dm` int(10) NOT NULL,
  `ma_nv` int(10) NOT NULL,
  `ten_sp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_sp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong_sp` int(11) NOT NULL,
  `hinh_sp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhchitiet_sp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thongtin_sp` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang_sp` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ma_sp`, `ma_th`, `ma_lsp`, `ma_ncc`, `ma_dm`, `ma_nv`, `ten_sp`, `gia_sp`, `soluong_sp`, `hinh_sp`, `hinhchitiet_sp`, `thongtin_sp`, `tinhtrang_sp`) VALUES
(6, 17, 21, 2, 8, 4, 'trinhle', '555555555', 7777, '781d66fc10 . banner_dongho_treem.jpg', '4d06ca1589 . banner_3.png', '<p>hhhhhhhhhhhh</p>\r\n', 2),
(7, 18, 15, 2, 8, 4, 'ggggg', '5555', 777, '08b5a43b51 . banner_smartwatch_thethao.png', '08b5a43b51 . banner_smartwatch_tienich.png', '<p>uuuuuuuuuuuuu</p>\r\n', 1),
(8, 17, 18, 2, 9, 4, 'hang', '555555', 222, '6338046d1f . banner_laptop_caocap.jpg', '6338046d1f . banner_smartwatch_treem.png', '<p>ffffffffff</p>\r\n', 2),
(9, 16, 22, 2, 9, 4, 'a', '4556', 86898, '2a0458a819 . banner_smartwatch_phukien.png', '2a0458a819 . banner_smartwatch_thethao.png', '<p>tyhtg</p>\r\n', 2),
(10, 18, 15, 2, 11, 4, 'b', '5', 46, 'abc57d8786 . banner_laptop_caocap.jpg', 'abc57d8786 . banner_laptop_dohoa.jpg', '<p>tty</p>\r\n', 2),
(11, 18, 21, 1, 11, 4, 'c', '555', 444, 'e1e7c78edc . banner_laptop_dohoa.jpg', 'e1e7c78edc . banner_laptop_gaming.jpg', '<p>cbfhg</p>\r\n', 1),
(12, 18, 22, 2, 13, 4, 'd', '6767', 565, '922081f5e0 . banner_laptop_mong.jpg', '922081f5e0 . banner_smartwatch_thoitrang.png', '<p>4fhfg</p>\r\n', 1),
(13, 15, 21, 2, 13, 4, 'f', '67', 57, '3323717e85 . banner_dongho_docquyen.jpg', '3323717e85 . banner_dongho_phaidep.png', '<p>dfgfhfg</p>\r\n', 1);

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
-- Chỉ mục cho bảng `chitiet_sanpham`
--
ALTER TABLE `chitiet_sanpham`
  ADD PRIMARY KEY (`ma_ctsp`);

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
-- Chỉ mục cho bảng `hinh`
--
ALTER TABLE `hinh`
  ADD PRIMARY KEY (`ma_h`);

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
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ma_sp`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`ma_th`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiet_sanpham`
--
ALTER TABLE `chitiet_sanpham`
  MODIFY `ma_ctsp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- AUTO_INCREMENT cho bảng `hinh`
--
ALTER TABLE `hinh`
  MODIFY `ma_h` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `loai_sanpham`
--
ALTER TABLE `loai_sanpham`
  MODIFY `ma_lsp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `ma_nv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ma_sp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `ma_th` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
