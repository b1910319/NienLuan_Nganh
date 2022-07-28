-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 28, 2022 lúc 04:55 AM
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
-- Cấu trúc bảng cho bảng `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `ma_sp` int(10) NOT NULL,
  `ma_dh` int(10) NOT NULL,
  `soluong_dat` int(10) NOT NULL,
  `thoigian_bh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_m` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`ma_sp`, `ma_dh`, `soluong_dat`, `thoigian_bh`, `ma_m`) VALUES
(20, 245081, 2, '2023-07-26 13:42:05', 7),
(20, 576606, 4, '2023-07-23 13:04:39', 7),
(20, 630214, 2, '2023-07-25 12:42:49', 10),
(22, 935073, 1, '2023-07-28 08:59:42', 13),
(26, 541602, 1, '2023-07-27 11:58:33', 13),
(26, 729203, 4, '2023-07-25 09:00:50', 13),
(27, 249249, 2, '2023-07-25 13:49:14', 8),
(28, 99989, 1, '2023-07-28 08:44:49', 8),
(28, 150981, 1, '2023-07-25 12:05:26', 8),
(28, 246368, 6, '2023-07-25 09:00:09', 12),
(28, 576606, 2, '2023-07-23 13:04:39', 12),
(28, 697864, 3, '2023-07-22 13:12:33', 12),
(28, 755883, 2, '2023-07-25 12:05:09', 12),
(29, 74239, 1, '2023-07-26 09:17:38', 11),
(29, 249249, 1, '2023-07-25 13:49:14', 11),
(29, 368649, 2, '2023-07-27 16:31:00', 8),
(29, 630214, 2, '2023-07-25 12:42:49', 11),
(30, 99989, 2, '2023-07-28 08:44:49', 7),
(30, 157982, 3, '2023-07-25 08:04:02', 14),
(30, 245081, 1, '2023-07-26 13:42:05', 14),
(30, 373800, 1, '2023-07-27 16:24:45', 7),
(30, 413345, 2, '2023-07-25 08:55:21', 7),
(32, 3178, 2, '2023-06-20 08:56:58', 17),
(32, 74239, 2, '2023-07-26 09:17:38', 8),
(32, 270148, 1, '2023-06-19 12:59:31', 17),
(32, 630214, 1, '2023-07-25 12:42:49', 17),
(32, 682053, 1, '2023-07-25 08:56:05', 17);

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
  `tinhnang_suckhoe` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `bo_sanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_sanpham`
--

INSERT INTO `chitiet_sanpham` (`ma_ctsp`, `ma_sp`, `camera_truoc`, `camera_sau`, `card_manhinh`, `chatlieu_day`, `chatlieu_kinh`, `chip`, `chongnuoc`, `cong_ketnoi`, `congnghe_cpu`, `cpu`, `dat_biet`, `doituong_sudung`, `duongkinh_mat`, `hedieuhanh`, `kichthuoc`, `manhinh`, `mat`, `rom`, `pin`, `ram`, `sim`, `thietke`, `thoidiem_ramat`, `thoiluong_pin`, `tinhnang_suckhoe`, `bo_sanpham`) VALUES
(15, 20, '12 MP', '2 camera 12 MP', ' ', 0, 0, 'Apple A13 Bionic', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'iOS 15', ' ', 'IPS LCD6.1', ' ', '64', '3110 mAh18 W', '4', '1 Nano SIM & 1 eSIMHỗ trợ 4G', ' ', ' ', ' ', ' ', 'Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Lightning - Type C'),
(16, 21, ' ', ' ', 'Card tích hợpIntel UHD', 0, 0, ' ', ' ', '1 x USB 2.02 x USB 3.2HDMIJack tai nghe 3.5 mm', ' ', 'i310110U2.1GHz', ' ', 0, ' ', 'Windows 11 Home SL', 'Dài 362.2 mm - Rộng 253.4 mm - Dày 19.9 mm - Nặng 1.7 kg', '15.6\"Full HD (1920 x 1080)', ' ', '256 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1TB (2280) / 512GB (2242))Hỗ trợ thêm 1 khe cắm HDD SATA (nâng cấp tối đa 1TB)', ' ', '4 GBDDR4 (On board 4GB +1 khe rời)2666 MHz', ' ', 'Vỏ nhựa', '2022', ' ', ' ', 'Sách hướng dẫn, Sạc Laptop Lenovo, Thùng máy'),
(17, 22, '12 MP', 'Chính 13 MP & Phụ 6 MP', ' ', 0, 0, 'Snapdragon 8 Gen 1', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'Android 12', ' ', '11\"LTPS', ' ', '128', '8000 mAh45 W', '8', '1 Nano SIM', ' ', ' ', ' ', ' ', 'Sách hướng dẫn, Bút cảm ứng, Cây lấy sim, Hộp máy, Cáp Type C - Type C'),
(18, 23, ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'Android dùng Google Mobile Service', ' ', 'SUPER AMOLED1.2 inch', 'Kính cường lực Gorrilla Glass Dx+40 mm', '0', ' ', '0', ' ', ' ', ' ', 'Khoảng 1.5 ngày', 'Theo dõi giấc ngủĐiện tâm đồĐo huyết ápĐo nhịp timĐo nồng độ oxy (SpO2)Đếm số bước chân', 'Hộp, Đồng hồ, Sách hướng dẫn, Đế sạc rời'),
(19, 24, ' ', ' ', ' ', 2, 1, ' ', '5 ATM - Đi mưa, tắm', ' ', ' ', ' ', ' ', 2, '42 mm', ' ', ' ', ' ', ' ', '0', ' ', '0', ' ', ' ', ' ', ' ', ' ', ''),
(20, 25, ' ', ' ', 'Intel Iris Xe', 0, 0, ' ', ' ', '2 x USB 2.02 x USB 3.2HDMILAN (RJ45)', 'i51135G72.40 GHz', ' ', ' ', 0, ' ', 'Windows 10 Home SL', 'Dài 541 mm - Rộng 185 mm - Dày 433 mm - Nặng 6.81 kg', '23.8 inchFull HD', ' ', '256', ' ', '8', ' ', ' ', ' ', ' ', ' ', 'Chuột ( Không dây ) , Bàn phím ( Không dây ) , Adapter sạc, Dây nguồn, Sách hướng dẫn'),
(21, 26, '12 MP', '3 camera 12 MP', ' ', 0, 0, 'Apple A15 Bionic', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'iOS 15', ' ', 'OLED6.7\"Super Retina XDR', ' ', '128', '4352 mAh20 W', '6', '1 Nano SIM & 1 eSIMHỗ trợ 5G', ' ', ' ', ' ', ' ', 'Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Lightning - Type C'),
(22, 27, '12 MP', '3 camera 12 MP', ' ', 0, 0, 'Apple A15 Bionic', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'iOS 15', ' ', 'OLED6.1\"Super Retina XDR', ' ', '128', '3095 mAh20 W', '6', '1 Nano SIM & 1 eSIMHỗ trợ 5G', ' ', ' ', ' ', ' ', 'Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Lightning - Type C'),
(23, 28, ' 12 MP', ' 2 camera 12 MP', ' ', 0, 0, 'Apple A14 Bionic', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'iOS 15', ' ', 'OLED6.1\"Super Retina XDR', ' ', '64', '2815 mAh20 W', '4', '1 Nano SIM & 1 eSIMHỗ trợ 5G', ' ', ' ', ' ', ' ', 'Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Lightning - Type C'),
(24, 29, '40 MP', 'Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP', ' ', 0, 0, 'Snapdragon 8 Gen 1', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'Android 12', ' ', 'Dynamic AMOLED 2X6.8', ' ', '128', '5000 mAh45 W', '8', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G', ' ', ' ', ' ', ' ', 'Hộp, Sách hướng dẫn, Bút cảm ứng, Cây lấy sim, Cáp Type C'),
(25, 30, '10 MP & 4 MP', '3 camera 12 MP', ' ', 0, 0, 'Snapdragon 888', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'Android 11', ' ', 'Dynamic AMOLED 2XChính 7.6\" & Phụ 6.2\"Full HD+', ' ', '256', '4400 mAh25 W', '12', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G', ' ', ' ', ' ', ' ', 'Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Type C '),
(26, 0, '10 MP', ' Chính 50 MP & Phụ 12 MP, 10 MP', ' ', 0, 0, 'Snapdragon 8 Gen 1', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'Android 12', ' ', 'Dynamic AMOLED 2X6.1\"Full HD+', ' ', '128', '3700 mAh25 W', '8', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G', ' ', ' ', ' ', ' ', 'Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Type C'),
(27, 32, '8 MP', 'Chính 50 MP & Phụ 5 MP, 2 MP, 2 MP', ' ', 0, 0, ' Exynos 1280', ' ', ' ', ' ', ' ', ' ', 0, ' ', 'Android 12', ' ', 'TFT LCD6.6\"Full HD+', ' ', '128', '5000 mAh25 W', '6', '2 Nano SIMHỗ trợ 5G', ' ', ' ', ' ', ' ', 'Cáp Type C, Cây lấy sim, Hộp, Sách hướng dẫn');

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
(8, 'Điện thoại', 'dienthoai', '#ffa3a3', '9937ae7311 . dienthoai.png'),
(9, 'Laptop', 'laptop', '#fda363', '4567f6c00d . laptop.png'),
(10, 'Table', 'table', '#efc2ff', '0c54023865 . tablet.png'),
(11, 'Smartwatch', 'smartwatch', '#f5d63d', '1c434f6ece . dongho_thongminh.png'),
(12, 'Đồng hồ', 'dongho', '#4d91ff', '5dc2572585 . dongho_thoitrang.png'),
(13, 'Máy tính để bàn', 'maytinhdeban', '#ffadb6', 'e575b5c338 . maytinh_bo.png'),
(14, 'Bàn phím', 'banphim', '#ff94eb', '2ed97c14cb . banphim.png'),
(15, 'Cáp sạc', 'capsac', '#e0b3ff', '3a2da9b676 . capsac.png'),
(16, 'Chuột máy tính', 'chuot', '#c6d8fb', 'd828debf5e . chuot_maytinh.png'),
(17, 'Loa', 'loa', '#ff6666', '7416d9faf4 . loa.png'),
(18, 'Màn hình máy tính', 'manhinhmaytinh', '#d6d6d6', '2a3959c2ad . manghinh_maytinh.png'),
(19, 'Sạc dự phòng', 'sacduphong', '#d8a8ff', '0766e0c0c4 . sac_duphong.png'),
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
(18, 10),
(11, 29),
(11, 8),
(11, 30),
(11, 31),
(11, 12),
(11, 32),
(11, 33),
(11, 16);

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
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ma_dh` int(11) NOT NULL,
  `ten_k` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt_k` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh_k` int(2) NOT NULL,
  `diachi_k` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tonggia_dh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaylap_dh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giolap_dh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thanglap_dh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namlap_dh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang_dh` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`ma_dh`, `ten_k`, `sdt_k`, `gioitinh_k`, `diachi_k`, `tonggia_dh`, `ngaylap_dh`, `giolap_dh`, `thanglap_dh`, `namlap_dh`, `tinhtrang_dh`) VALUES
(3178, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '15380000', '20/06/2022', '08:56:58am', '6/2022', '2022', 1),
(74239, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '43370000', '26/07/2022', '09:17:37am', '7/2022', '2022', 2),
(99989, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '83970000', '28/07/2022', '08:44:49am', '7/2022', '2022', 0),
(150981, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '17990000', '25/07/2022', '12:05:26pm', '7/2022', '2022', 2),
(157982, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '98970000', '25/07/2022', '08:04:01am', '7/2022', '2022', 2),
(245081, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '58570000', '26/07/2022', '01:42:05pm', '7/2022', '2022', 0),
(246368, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '107940000', '25/07/2022', '09:00:09am', '7/2022', '2022', 2),
(249249, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '83170000', '25/07/2022', '01:49:14pm', '7/2022', '2022', 0),
(368649, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '55980000', '27/07/2022', '04:31:00pm', '7/2022', '2022', 0),
(373800, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '32990000', '27/07/2022', '04:24:45pm', '7/2022', '2022', 0),
(413345, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '65980000', '25/07/2022', '08:55:21am', '7/2022', '2022', 2),
(541602, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '30290000', '27/07/2022', '11:58:32am', '7/2022', '2022', 0),
(576606, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '87140000', '23/07/2022', '01:04:39pm', '7/2022', '2022', 0),
(630214, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '89250000', '25/07/2022', '12:42:49pm', '7/2022', '2022', 0),
(682053, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '7690000', '25/07/2022', '08:56:05am', '7/2022', '2022', 0),
(697864, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '53970000', '22/07/2022', '01:12:33pm', '7/2022', '2022', 2),
(729203, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '121160000', '25/07/2022', '09:00:50am', '7/2022', '2022', 2),
(755883, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '35980000', '25/07/2022', '12:05:09pm', '7/2022', '2022', 2),
(935073, 'Lê Diểm Trinh', '0824955654', 2, 'Phú Lộc, Tam Bình, Vĩnh Long', '20990000', '28/07/2022', '08:59:42am', '7/2022', '2022', 0);

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
(4, 20, 'd128e4f201 . 3.jpg'),
(5, 20, '01eef4865c . 4.jpg'),
(6, 20, '5c9e6cc11a . 5.jpg'),
(7, 20, '446c9689e1 . 6.jpg'),
(8, 20, '4608e744d7 . 7.jpg'),
(9, 20, '4afb659ee4 . 8.jpg'),
(10, 20, 'fbd3779634 . 9.jpg'),
(11, 20, '53bcf2f24b . 10.jpg'),
(12, 20, '475b61bc74 . 11.jpg'),
(13, 20, 'ae31ff625b . 12.jpg'),
(14, 20, '8cf0f85569 . 13.jpg'),
(15, 20, '03ea1f83c8 . 14.jpg'),
(16, 20, '50f40c278f . 15.jpg'),
(17, 20, 'fb384dceeb . 16.jpg'),
(18, 20, 'd495ff60fe . 17.jpg'),
(19, 20, 'ea30604664 . 18.jpg'),
(20, 20, '6ef01af39a . 19.jpg'),
(21, 20, 'c8841dd0e0 . 20.jpg'),
(22, 20, 'c556accc5f . 21.jpg'),
(23, 20, 'b9944dec08 . 22.jpg'),
(24, 20, '30c79ae3d5 . 23.jpg'),
(25, 20, '592e9b243b . 24.jpg'),
(26, 20, '49915d1412 . 25.jpg'),
(27, 20, '9f38b848bb . 26.jpg'),
(28, 20, '37e4a7c9f7 . 27.jpg'),
(29, 20, '6d20988121 . 28.jpg'),
(30, 20, 'f148d1713e . 29.jpg'),
(31, 20, '69e3f79f4b . 30.jpg'),
(32, 20, '6eec24b25e . 31.jpg'),
(33, 20, '6bd97d3c1b . 32.jpg'),
(34, 20, '0d50b0165e . 33.jpg'),
(35, 20, '8156b06f73 . 34.jpg'),
(36, 20, 'f0054da817 . 35.jpg'),
(37, 20, '2759c51d4c . 36.jpg'),
(38, 20, '408aadef7d . 37.jpg'),
(39, 20, 'aaec6b157c . 38.jpg'),
(40, 20, '07a71417c8 . ă.jpg'),
(41, 20, 'f1ef7a2237 . 2.jpg'),
(42, 20, '66d430e0c3 . 3.jpg'),
(43, 20, 'e41a9899a0 . 4.jpg'),
(44, 20, 'ed480290a7 . 5.jpg'),
(45, 20, '7d4171e134 . 6.jpg'),
(46, 20, '3e37352f97 . 7.jpg'),
(47, 20, '9fa90933e6 . 8.jpg'),
(48, 20, 'a5d2a994d8 . 9.jpg'),
(49, 20, 'a322c0a4c7 . 10.jpg'),
(50, 20, 'b6027a55a0 . 11.jpg'),
(51, 20, '25ecebe5ac . 12.jpg'),
(52, 21, 'cc3b9d9cb4 . 1.jpg'),
(53, 21, 'fdcca876f6 . 2.jpg'),
(54, 21, '7e9d34a4ef . 3.jpg'),
(55, 21, 'c9bb86f362 . 4.jpg'),
(56, 21, '87ed051fa3 . 5.jpg'),
(57, 21, 'b73de003ea . 6.jpg'),
(58, 21, 'ba105e490c . 7.jpg'),
(59, 21, '04fc539cbf . 8.jpg'),
(60, 21, 'ffa1e42531 . 9.jpg'),
(61, 21, 'fa6e5e5c88 . 10.jpg'),
(62, 21, 'a3fd9c30c9 . 11.jpg'),
(63, 21, '6a7a53459f . 12.jpg'),
(64, 21, '20c408b9eb . 13.jpg'),
(65, 21, 'd0e43ee0b9 . 14.jpg'),
(66, 21, '2129519c48 . 15.jpg'),
(67, 21, '2c28373696 . 16.jpg'),
(68, 21, '92d26a04b1 . 17.jpg'),
(69, 21, 'cd239ffad0 . 18.jpg'),
(70, 21, '6c2c065c79 . 19.jpg'),
(71, 21, '924c1dc7e7 . 20.jpg'),
(72, 21, 'd67c278552 . 21.jpg'),
(73, 22, '5620672330 . 3.jpg'),
(74, 22, 'c66729ae85 . 4.jpg'),
(75, 22, '64736647c6 . 5.jpg'),
(76, 22, '8b033ee820 . 6.jpg'),
(77, 22, 'cf26d3cafc . 7.jpg'),
(78, 22, '0e4814f4a7 . 8.jpg'),
(79, 22, 'ecf4e41469 . 9.jpg'),
(80, 22, 'e5002feaee . 10.jpg'),
(81, 22, '0a5011c9d5 . 11.jpg'),
(82, 22, '28765d8b81 . 12.jpg'),
(83, 22, 'b7d17db81a . 13.jpg'),
(84, 22, 'dd8ff5daad . 14.jpg'),
(85, 22, '2266a946b2 . 15.jpg'),
(86, 22, 'fd9d0a2cb5 . 16.jpg'),
(87, 22, '328199f6a5 . 17.jpg'),
(88, 22, 'fd7e95f1af . 18.jpg'),
(89, 22, 'e3d10024fc . 19.jpg'),
(90, 22, 'dccf0375fd . 20.jpg'),
(91, 22, '9b5d2ea5f9 . 21.jpg'),
(92, 22, '9bc4fe465f . 22.jpg'),
(93, 22, '71094bf8e6 . 23.jpg'),
(94, 22, 'cd2dd44077 . 24.jpg'),
(95, 22, 'a3d9880d38 . 25.jpg'),
(96, 22, 'cc19b4eff8 . 26.jpg'),
(97, 22, '8a9f2f0e82 . 27.jpg'),
(98, 23, 'f4a518ff73 . 3.jpg'),
(99, 23, '19f88310b0 . 4.jpg'),
(100, 23, '4406826a71 . 5.jpg'),
(101, 23, '8407140a21 . 6.jpg'),
(102, 23, '231e58e955 . 7.jpg'),
(103, 23, '376f89cbb5 . 8.jpg'),
(104, 23, '4fd68bc2f8 . 9.jpg'),
(105, 23, 'e03fc1637f . 10.jpg'),
(106, 23, '4b892484de . 11.jpg'),
(107, 23, '4747f6a5e6 . 12.jpg'),
(108, 23, 'b9d1440155 . 13.jpg'),
(109, 23, 'c0ed01b270 . 14.jpg'),
(110, 23, '809e06e7a2 . 15.jpg'),
(111, 23, 'fca7b71cfb . 16.jpg'),
(112, 23, 'ae6041082a . 17.jpg'),
(113, 23, '1e9a0737df . 18.jpg'),
(114, 23, 'f14f2379d3 . 19.jpg'),
(115, 23, '626d585116 . 20.jpg'),
(116, 24, '12a3738e3f . 2.jpg'),
(117, 24, '3f1ae4ba01 . 3.jpg'),
(118, 24, '7d69c86a03 . 4.jpg'),
(119, 24, '9063b3e9ae . 5.jpg'),
(120, 24, '84a7793712 . 6.jpg'),
(121, 24, '3eb7461baa . 7.jpg'),
(122, 24, '63901a6af5 . 8.jpg'),
(123, 24, 'bc686065bf . 9.jpg'),
(124, 24, '45f9f3dc0f . 10.jpg'),
(125, 25, '4aca8d6999 . ê.jpg'),
(126, 25, '4157688474 . 3.jpg'),
(127, 25, '0c70630ea6 . 4.jpg'),
(128, 25, '7c510d79d7 . 5.jpg'),
(129, 25, '7438622a7c . 6.jpg'),
(130, 25, 'f04b8fa6c5 . 7.jpg'),
(131, 25, '7d53bf0742 . 8.jpg'),
(132, 25, '60053066b7 . 9.jpg'),
(133, 25, 'a2008b38fc . 10.jpg'),
(134, 25, '3fa732d650 . 11.jpg'),
(135, 25, '776d80218b . 12.jpg'),
(136, 25, 'bf201814c8 . 13.jpg'),
(137, 25, '62d68b198a . 14.jpg'),
(138, 25, '72ee6faad4 . 15.jpg'),
(139, 25, 'e6e83837ba . 16.jpg'),
(140, 24, 'd9de223f3e . 17.jpg'),
(141, 25, '280ef24e5c . 18.jpg'),
(142, 25, '5f4ea7cce8 . 19.jpg'),
(143, 25, '8e6b55736f . 20.jpg'),
(144, 25, '82aebfbed3 . 21.jpg'),
(145, 25, '37721e6f51 . 22.jpg'),
(146, 25, '071f8c5830 . 23.jpg'),
(147, 26, '5bf8712eb1 . 2.jpg'),
(148, 26, '4f05d27504 . 3.jpg'),
(149, 26, '5caedc2498 . 4.jpg'),
(150, 26, '166ad0bc05 . 5.jpg'),
(151, 26, '4aaa7033ad . 6.jpg'),
(152, 26, '9a1c912f09 . 7.jpg'),
(153, 26, '4b361d5be6 . 8.jpg'),
(154, 26, 'b3630d8c20 . 9.jpg'),
(155, 26, '19de15d095 . 10.jpg'),
(156, 26, 'b18bb0ee38 . 11.jpg'),
(157, 26, '72151bb689 . 12.jpg'),
(158, 26, 'ae962cbad8 . 13.jpg'),
(159, 26, '31e79b2de4 . 14.jpg'),
(160, 26, '5b6036e72e . 15.jpg'),
(161, 26, '1605448f84 . 16.jpg'),
(162, 26, '3c6b99853f . 17.jpg'),
(163, 26, 'dd0c1776bf . 18.jpg'),
(164, 26, '4acb7aa608 . 19.jpg'),
(165, 26, 'f6ecf16f36 . 20.jpg'),
(166, 26, '259dbf312f . 21.jpg'),
(167, 26, 'cb4182ce58 . 22.jpg'),
(168, 26, 'b9e4fd8e26 . 23.jpg'),
(169, 26, 'd1c37aa793 . 24.jpg'),
(170, 26, '61c0da41c3 . 25.jpg'),
(171, 26, '289714ab1f . 26.jpg'),
(172, 26, '0254312e20 . 27.jpg'),
(173, 26, '7e37191c43 . 28.jpg'),
(174, 26, 'f35968a1e7 . 29.jpg'),
(175, 26, '53bcfdd748 . 30.jpg'),
(176, 26, '6a20ab96d6 . 31.jpg'),
(177, 26, 'da6e0511a3 . 32.jpg'),
(178, 26, 'b534e04360 . 33.jpg'),
(179, 26, 'bec7ea7869 . 34.jpg'),
(180, 26, 'b5e9c2d545 . 35.jpg'),
(181, 26, '8abafaa8ca . 36.jpg'),
(182, 26, 'a6e7d62c0f . 37.jpg'),
(183, 26, '34b5aee1db . 38.jpg'),
(184, 26, '48f4055683 . 39.jpg'),
(185, 26, '7ff510c053 . 40.jpg'),
(186, 26, '9a41852106 . 41.jpg'),
(187, 26, '2742c366fa . 42.jpg'),
(188, 26, 'f985e8a0a8 . 43.jpg'),
(189, 26, 'a97f849892 . 44.jpg'),
(190, 26, '1ac01b00f0 . 45.jpg'),
(191, 26, 'badf1f54c3 . 46.jpg'),
(192, 26, '357e8576be . 47.jpg'),
(193, 27, '586cead6ff . 3.jpg'),
(194, 27, 'b51edbd05d . 4.jpg'),
(195, 27, '840a86d420 . 5.jpg'),
(196, 27, '4543167e65 . 6.jpg'),
(197, 27, 'bd047db085 . 7.jpg'),
(198, 27, '28da176273 . 8.jpg'),
(199, 27, '84f3957d35 . 9.jpg'),
(200, 27, '34d53f11c1 . 10.jpg'),
(201, 27, '8c6372a06d . 11.jpg'),
(202, 27, '980a2bd452 . 12.jpg'),
(203, 27, '023c2af938 . 13.jpg'),
(204, 27, 'db649f41a0 . 14.jpg'),
(205, 27, '7f7535d156 . 15.jpg'),
(206, 27, '5564a49006 . 16.jpg'),
(207, 27, '7641fc5c77 . 17.jpg'),
(208, 27, '5d4eeed8d7 . 18.jpg'),
(209, 27, '084b28cfff . 19.jpg'),
(210, 27, 'a89da453af . 20.jpg'),
(211, 27, '048ab8d584 . 21.jpg'),
(212, 27, 'c26f3fa2b4 . 22.jpg'),
(213, 27, '4601fcce85 . 23.jpg'),
(214, 27, '4516fe44b8 . 24.jpg'),
(215, 27, '3e5422f8e6 . 25.jpg'),
(216, 27, '4d420e4267 . 26.jpg'),
(217, 27, '922b870824 . 27.jpg'),
(218, 27, 'e00533fb38 . 28.jpg'),
(219, 27, '0cc119c2f9 . 29.jpg'),
(220, 27, 'c6f75bb362 . 30.jpg'),
(221, 27, 'a0c51d8670 . 31.jpg'),
(222, 27, 'a838c5e40f . 32.jpg'),
(223, 27, 'bb725a4a89 . 33.jpg'),
(224, 27, '4e6e75b56a . 34.jpg'),
(225, 27, '1d014f19f9 . 35.jpg'),
(226, 27, '974643a703 . 36.jpg'),
(227, 27, 'adaaa7bf4f . 37.jpg'),
(228, 27, 'ba4ded8f8b . 38.jpg'),
(229, 27, '8f03fc0c0e . 39.jpg'),
(230, 27, '4f11aaaa37 . 40.jpg'),
(231, 27, 'f34d1655fc . 41.jpg'),
(232, 27, '4499fb7d98 . 42.jpg'),
(233, 27, 'c6e3b0aaba . 43.jpg'),
(234, 28, '8b114e8e6b . 3.jpg'),
(235, 28, '2e6dbe04e2 . 4.jpg'),
(236, 28, 'beea4604f2 . 5.jpg'),
(237, 28, '73ed5c444c . 6.jpg'),
(238, 28, '5b4575de73 . 7.jpg'),
(239, 28, 'fb47d893f6 . 8.jpg'),
(240, 28, '99a64e334c . 9.jpg'),
(241, 28, '09bc37b7cb . 10.jpg'),
(242, 28, '521adcb215 . 11.jpg'),
(243, 28, 'f3f9183f7d . 12.jpg'),
(244, 28, '4154ec975a . 13.jpg'),
(245, 28, '0ca2b9a6ec . 14.jpg'),
(246, 28, '539be1d1ad . 15.jpg'),
(247, 28, 'bbc3f1daeb . 16.jpg'),
(248, 28, 'f04ad72e09 . 17.jpg'),
(249, 28, 'ffb502a017 . 18.jpg'),
(250, 28, 'c6d17f4703 . 19.jpg'),
(251, 28, '241c39a5d3 . 20.jpg'),
(252, 28, 'a78325b255 . 21.jpg'),
(253, 28, '559d94a0d9 . 22.jpg'),
(254, 28, 'd140dbef73 . 23.jpg'),
(255, 28, '29b7e156a2 . 24.jpg'),
(256, 28, '3b4901eb69 . 25.jpg'),
(257, 28, '8c012afb5c . 26.jpg'),
(258, 28, '4b865165d1 . 27.jpg'),
(259, 28, 'fde1c4552b . 28.jpg'),
(260, 28, '2bbc288461 . 29.jpg'),
(261, 28, '84b7528347 . 30.jpg'),
(262, 28, 'ef8b33874e . 31.jpg'),
(263, 28, '035d630b39 . 32.jpg'),
(264, 28, '816e3bf0fb . 33.jpg'),
(265, 28, 'e7ff0391ee . 34.jpg'),
(266, 28, '29a2ba3e21 . 35.jpg'),
(267, 28, '2d0c560ecf . 36.jpg'),
(268, 28, 'e40700daed . 37.jpg'),
(269, 28, '5451b010b2 . 38.jpg'),
(270, 28, '62f102b5a3 . 39.jpg'),
(271, 28, 'fccc54eba9 . 40.jpg'),
(272, 28, 'a7336c93d6 . 41.jpg'),
(273, 28, 'ec6a63c42b . 42.jpg'),
(274, 28, 'faef197339 . 43.jpg'),
(275, 28, '7e3cc3e3b5 . 44.jpg'),
(276, 28, 'be1fe26507 . 45.jpg'),
(277, 28, '16707d30d6 . 46.jpg'),
(278, 28, '195862a7ec . 47.jpg'),
(279, 29, '0007a98041 . 3.jpg'),
(280, 29, '913d67d9d6 . 4.jpg'),
(281, 29, '17478a2800 . 5.jpg'),
(282, 29, 'f11d5af59a . 6.jpg'),
(283, 29, 'db0c785fe1 . 7.jpg'),
(284, 29, 'ccddbc9c5b . 8.jpg'),
(285, 29, 'dd509c6113 . 9.jpg'),
(286, 29, '5fced6c93d . 10.jpg'),
(287, 29, 'c1d67e3dd7 . 11.jpg'),
(288, 29, '5797e84656 . 12.jpg'),
(289, 29, '7b2d6a41da . 13.jpg'),
(290, 29, '49b29a3a4a . 14.jpg'),
(291, 29, '5fcaccfcac . 15.jpg'),
(292, 29, '1866a02cc7 . 16.jpg'),
(293, 29, 'd3e1658a4c . 17.jpg'),
(294, 29, 'bb03938ff2 . 18.jpg'),
(295, 29, '4ed2511d0c . 19.jpg'),
(296, 29, '204bbe4c4b . 20.jpg'),
(297, 29, 'bd10c2f434 . 21.jpg'),
(298, 29, '7fa4eafbf8 . 22.jpg'),
(299, 29, 'b07e9eb273 . 23.jpg'),
(300, 29, 'ea9b4dfb99 . 24.jpg'),
(301, 29, '650d0685f8 . 25.jpg'),
(302, 29, '27aa26caa4 . 26.jpg'),
(303, 29, '4244eb1a07 . 27.jpg'),
(304, 29, '5ad72fd708 . 28.jpg'),
(305, 29, 'c6f6698937 . 29.jpg'),
(306, 29, '94a1e5e6e9 . 30.jpg'),
(307, 29, '422837571c . 31.jpg'),
(308, 29, '85fadeff56 . 32.jpg'),
(309, 29, 'c6a92d860f . 33.jpg'),
(310, 29, '3cae2faf25 . 34.jpg'),
(311, 29, '4236b7bd9d . 35.jpg'),
(312, 29, 'f487a9fe90 . 36.jpg'),
(313, 29, 'b00d670ba7 . 37.jpg'),
(314, 29, '0a0a3d838f . 38.jpg'),
(315, 29, '4a06142761 . 39.jpg'),
(316, 29, '2bf889c549 . 40.jpg'),
(317, 29, '88821f4e64 . 41.jpg'),
(318, 29, 'c42d99f4b1 . 42.jpg'),
(319, 29, '561b1b76cb . 43.jpg'),
(320, 29, 'c247c33267 . 44.jpg'),
(321, 29, 'b4eb3caadf . 45.jpg'),
(322, 29, '1123525c49 . 46.jpg'),
(323, 29, 'aefd617c8d . 47.jpg'),
(324, 29, '121c664ce9 . 48.jpg'),
(325, 29, 'e6e4e4979e . 49.jpg'),
(326, 29, 'd1d5701099 . 50.jpg'),
(327, 29, '8526792945 . 51.jpg'),
(328, 29, 'debc2dea88 . 52.jpg'),
(329, 29, '6e6b3feb12 . 53.jpg'),
(330, 29, '129108dd3a . 54.jpg'),
(331, 30, 'a2b0c47679 . 3.jpg'),
(332, 30, '2c4aa0c4fc . 4.jpg'),
(333, 30, 'd35ae11621 . 5.jpg'),
(334, 30, '9d5cffa634 . 6.jpg'),
(335, 30, '4b7d7c12ac . 7.jpg'),
(336, 30, '34d6f22ebc . 8.jpg'),
(337, 30, '53d6bdd5c1 . 9.jpg'),
(338, 30, '790e632ca1 . 10.jpg'),
(339, 30, 'a383b9b170 . 11.jpg'),
(340, 30, '05d33121dc . 12.jpg'),
(341, 30, '43ad6891c8 . 13.jpg'),
(342, 30, 'aac4e2c0ad . 14.jpg'),
(343, 30, 'b8eae97465 . 15.jpg'),
(344, 30, '97c3fe74a4 . 16.jpg'),
(345, 30, '4ea8c10394 . 17.jpg'),
(346, 30, '2b15a1a4c9 . 18.jpg'),
(347, 30, 'be3eeabd68 . 19.jpg'),
(348, 30, '12346bba02 . 20.jpg'),
(349, 30, 'c898030cf2 . 21.jpg'),
(350, 30, 'c0770c3e34 . 22.jpg'),
(351, 30, 'e005b54a60 . 23.jpg'),
(352, 30, '2d27f1c387 . 24.jpg'),
(353, 30, 'cf51c0828e . 25.jpg'),
(354, 30, '6fa8b7b3d0 . 26.jpg'),
(355, 30, '6695a120ed . 27.jpg'),
(356, 30, '0ef265e4a4 . 28.jpg'),
(357, 30, 'c85147af82 . 29.jpg'),
(358, 30, '6a3a6bb704 . 30.jpg'),
(359, 30, 'd3f5dcb225 . 31.jpg'),
(360, 30, 'd4b946826c . 32.jpg'),
(361, 30, '4e6fa4f66f . 33.jpg'),
(362, 30, '6ea2fcc6b5 . 34.jpg'),
(363, 30, '547a7f7062 . 35.jpg'),
(364, 30, '133c6fc9a8 . 36.jpg'),
(365, 30, 'fbe84cdb49 . 37.jpg'),
(366, 30, 'f0415a0367 . 38.jpg'),
(367, 30, '8b5d79b44f . 39.jpg'),
(368, 30, '8eadbec102 . 40.jpg'),
(369, 30, 'f7a43c3cf3 . 41.jpg'),
(370, 30, '7c05ded2e4 . 42.jpg'),
(371, 30, '3e1d761215 . 43.jpg'),
(372, 30, 'dda418e90b . 44.jpg'),
(373, 30, 'd4b10c301d . 45.jpg'),
(374, 30, 'fee51f846b . 46.jpg'),
(375, 30, '22c30dac3f . 47.jpg'),
(376, 30, '6cc67a9f64 . 48.jpg'),
(377, 30, '4f6fb55a30 . 49.jpg'),
(378, 30, '9999a83810 . 50.jpg'),
(379, 30, '81bac30fdc . 51.jpg'),
(380, 30, '54725cee65 . 52.jpg'),
(381, 30, '0c7431694f . 53.jpg'),
(382, 30, '6c2ea2a6b1 . 54.jpg'),
(383, 30, '20b0b711f8 . 55.jpg'),
(384, 30, 'f1fca82c50 . 56.jpg'),
(385, 30, 'ed91216ca3 . 57.jpg'),
(386, 31, '06be6873f5 . 3.jpg'),
(387, 31, 'e02990f115 . 4.jpg'),
(388, 31, '81d6ce7354 . 5.jpg'),
(389, 31, 'ecff41fb37 . 6.jpg'),
(390, 31, '4913100f6a . 7.jpg'),
(391, 31, 'a8de54123e . 8.jpg'),
(392, 31, '5ffd64ec66 . 9.jpg'),
(393, 31, '57282cb3f9 . 10.jpg'),
(394, 31, 'e1ba17de4a . 11.jpg'),
(395, 31, '13d241a4b1 . 12.jpg'),
(396, 31, '87fa1468fa . 13.jpg'),
(397, 31, '8da095bff8 . 14.jpg'),
(398, 31, 'f7ad930318 . 15.jpg'),
(399, 31, 'e8fa34cab2 . 16.jpg'),
(400, 31, 'ad00a2afba . 17.jpg'),
(401, 31, 'caf2a04723 . 18.jpg'),
(402, 31, 'b8fcb4f57d . 19.jpg'),
(403, 31, 'f81c7206e3 . 20.jpg'),
(404, 31, '6a199574be . 21.jpg'),
(405, 31, 'd4b784a4a5 . 22.jpg'),
(406, 31, '1cb907959f . 23.jpg'),
(407, 31, '17f035a5f3 . 24.jpg'),
(408, 31, '61a53c7bc0 . 25.jpg'),
(409, 31, 'd7de58fe3d . 26.jpg'),
(410, 31, '1688f42774 . 27.jpg'),
(411, 31, '889036cda3 . 28.jpg'),
(412, 32, '34e0c29b4b . 3.jpg'),
(413, 32, '24d80181e0 . 4.jpg'),
(414, 32, '4867b68702 . 5.jpg'),
(415, 32, 'c069778c78 . 6.jpg'),
(416, 32, '37ce746c2e . 7.jpg'),
(417, 32, '25b30fc314 . 8.jpg'),
(418, 32, 'ffcf9d1397 . 9.jpg'),
(419, 32, '39464fef32 . 10.jpg'),
(420, 32, 'd38112e507 . 11.jpg'),
(421, 32, '40363d4451 . 12.jpg'),
(422, 32, 'a3037cf43c . 13.jpg'),
(423, 32, 'fed769ed58 . 14.jpg'),
(424, 32, '7f322c3ec7 . 15.jpg'),
(425, 32, '5193613a69 . 16.jpg'),
(426, 32, 'c9886e4fee . 17.jpg'),
(427, 32, '26e680a080 . 18.jpg'),
(428, 32, '8cb7ea2a33 . 19.jpg'),
(429, 32, '00f03716ca . 20.jpg'),
(430, 32, 'adcc78dbf3 . 21.jpg'),
(431, 32, 'e9c20f4e07 . 22.jpg'),
(432, 32, 'b45c954109 . 23.jpg'),
(433, 32, '40d517d85d . 24.jpg'),
(434, 32, '4e12177373 . 25.jpg'),
(435, 32, '089db1d715 . 26.jpg'),
(436, 32, 'e59a03652c . 27.jpg'),
(437, 32, 'b780ffdcd6 . 28.jpg'),
(438, 32, '1ade9b166f . 29.jpg'),
(439, 32, 'e5612e2d1a . 30.jpg');

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
  `ten_m` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mau` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`ma_m`, `ten_m`, `mau`) VALUES
(7, 'Đen', '#000'),
(8, 'Xanh lá', '#2f6b05'),
(9, 'Tím', '#6302ee'),
(10, 'Vàng', '#fffa22'),
(11, 'Trắng', '#fff'),
(12, 'Đỏ', '#e00'),
(13, 'Xám', '#8cbea2'),
(14, 'Bạc', '#eef5f1'),
(15, 'Xanh đen', '#172a00'),
(16, 'Vàng đồng', '#dcd073'),
(17, 'Xanh dương', '#000048'),
(18, 'Xanh rêu', '#399c10'),
(19, 'Hồng', '#fd55ac'),
(20, 'Nâu', '#8a2300');

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
(20, 7),
(20, 8),
(20, 9),
(20, 10),
(21, 13),
(22, 14),
(22, 13),
(23, 7),
(24, 15),
(25, 7),
(26, 13),
(26, 16),
(26, 14),
(26, 8),
(26, 17),
(27, 17),
(27, 8),
(27, 16),
(27, 13),
(27, 14),
(28, 12),
(28, 8),
(28, 9),
(29, 11),
(29, 12),
(29, 8),
(29, 7),
(30, 14),
(30, 7),
(30, 18),
(31, 7),
(31, 8),
(31, 19),
(31, 11),
(32, 17),
(32, 8),
(32, 20);

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
  `ten_sp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_sp` int(20) NOT NULL,
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
(20, 7, 11, 1, 8, 4, 'iPhone 11 64GB', 12790000, 87, '4aaa05bed7 . 24-removebg-preview.png', 'cd7974a066 . 1.jpg', '<h3><strong>Apple đ&atilde; ch&iacute;nh thức tr&igrave;nh l&agrave;ng bộ 3 si&ecirc;u phẩm iPhone 11, trong đ&oacute; phi&ecirc;n bản&nbsp;<a href=\"https://www.topzone.vn/iphone/iphone-11\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại TopZone.vn\">iPhone 11 64GB</a>&nbsp;c&oacute; mức gi&aacute; rẻ nhất nhưng vẫn được n&acirc;ng cấp mạnh mẽ như&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-xr-128gb\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone Xr chính hãng\">iPhone Xr</a>&nbsp;ra mắt&nbsp;trước đ&oacute;.</strong></h3>\r\n\r\n<h3><strong>N&acirc;ng cấp mạnh mẽ về camera</strong></h3>\r\n\r\n<p>N&oacute;i về n&acirc;ng cấp th&igrave; camera ch&iacute;nh l&agrave; điểm c&oacute; nhiều cải tiến nhất tr&ecirc;n thế hệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone iPhone chính hãng\">iPhone</a>&nbsp;mới.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd42.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thiết kế nhiều màu sắc\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd42.jpg\" title=\"Điện thoại iPhone 11 64GB | Thiết kế nhiều màu sắc\" /></a></p>\r\n\r\n<p>Nếu như trước đ&acirc;y iPhone Xr chỉ c&oacute; một camera th&igrave; nay với&nbsp;<a href=\"https://www.topzone.vn/iphone-11\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 11 đang kinh doanh tại TopZone thương hiệu của Thế Giới Di Động\">iPhone 11</a>&nbsp;ch&uacute;ng ta sẽ c&oacute; tới hai camera ở mặt sau.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-114-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-114-1.jpg\" title=\"Điện thoại iPhone 11 64GB | Camera sau\" /></a></p>\r\n\r\n<p>Ngo&agrave;i camera ch&iacute;nh vẫn c&oacute; độ ph&acirc;n giải 12 MP th&igrave; ch&uacute;ng ta sẽ c&oacute; th&ecirc;m một camera g&oacute;c si&ecirc;u rộng v&agrave; cũng với độ ph&acirc;n giải tương tự.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-116.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-116.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><em>Ảnh chụp ch&acirc;n dung với iPhone 11</em></p>\r\n\r\n<p>Theo Apple th&igrave; việc chuyển đổi qua lại giữa hai ống k&iacute;nh th&igrave; sẽ kh&ocirc;ng l&agrave;m thay đổi m&agrave;u sắc của bức ảnh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-2-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-2-1.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><em>Ảnh chụp chế độ ch&acirc;n dung với iPhone 11</em></p>\r\n\r\n<p>Đ&acirc;y l&agrave; một điều được xem l&agrave; bước ngoặt bởi những chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone chính hãng\">smartphone</a>&nbsp;Android c&oacute; nhiều camera hiện nay sẽ thường bị sai lệch về m&agrave;u sắc khi chuyển đổi qua lại giữa c&aacute;c ống k&iacute;nh g&acirc;y cảm gi&aacute;c kh&aacute; kh&oacute; chịu cho người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd7.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp với Deep Fusion\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd7.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp với Deep Fusion\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><em>Ảnh chụp với&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/deep-fusion-tren-dong-iphone-11-pro-la-gi-tinh-nan-1197418\" target=\"_blank\" title=\"Tìm hiểu tính năng Deel Fusion\" type=\"Tìm hiểu tính năng Deel Fusion\">Deep Fusion</a></em></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; với iPhone 11 th&igrave; đ&acirc;y sẽ l&agrave; lần đầu ti&ecirc;n Apple trang bị khả năng chụp đ&ecirc;m l&ecirc;n chiếc iPhone của m&igrave;nh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-113.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp với chế độ Night Mode Ảnh chụp với chế độ Night Mode\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-113.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp với chế độ Night Mode Ảnh chụp với chế độ Night Mode\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><em>Ảnh chụp với&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/night-mode-la-gi-diem-khac-nhau-giu-night-mode-va-1197122\" target=\"_blank\" title=\"Tìm hiểu chế độ Night Mode\" type=\"Tìm hiểu chế độ Night Mode\">chế độ Night Mode</a></em></p>\r\n\r\n<p>Theo trải nghiệm th&igrave; t&iacute;nh năng n&agrave;y hoạt động rất hiệu quả đặc biệt trong những m&ocirc;i trường cực kỳ thiếu s&aacute;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-112.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp bằng camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-112.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp bằng camera sau\" /></a></p>\r\n\r\n<p>K&iacute;ch hoạt chế độ chụp đ&ecirc;m sẽ do iPhone tự quyết định việc của bạn chỉ cần đưa m&aacute;y l&ecirc;n v&agrave; chụp, rất đơn giản.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ góc siêu rộng\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ góc siêu rộng\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><em>Ảnh chụp chế độ g&oacute;c si&ecirc;u rộng</em></p>\r\n\r\n<p>Năm nay Apple cũng đ&atilde; n&acirc;ng cấp độ ph&acirc;n giải camera trước n&ecirc;n 12 MP thay v&igrave; 7 MP như thế hệ trước đ&oacute;.</p>\r\n\r\n<p>Camera trước cũng c&oacute; một t&iacute;nh năng th&ocirc;ng minh, khi bạn xoay ngang điện thoại n&oacute; sẽ tự k&iacute;ch hoạt chế độ selfie g&oacute;c rộng để bạn c&oacute; thể chụp với nhiều người hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-111.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh selfie bằng camera trước\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-111.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh selfie bằng camera trước\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra Apple cũng giới thiệu t&iacute;nh năng quay video slow motion d&agrave;nh cho camera trước, điều m&agrave; Apple chưa từng trang bị cho những chiếc iPhone trước đ&acirc;y.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/danh-gia-chi-tiet-apple-iphone-11-iphone-2019-1191805\" target=\"_blank\" title=\"Đánh giá chi tiết iPhone 11\" type=\"Đánh giá chi tiết iPhone 11\">Đ&aacute;nh gi&aacute; chi tiết iPhone 11: H&oacute;a &#39;b&atilde;o tố&#39; hay th&agrave;nh &#39;bom xịt&#39;?</a></p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ h&agrave;ng đầu thế giới</strong></h3>\r\n\r\n<p>Mỗi lần ra&nbsp;<a href=\"https://www.topzone.vn/iphone\" target=\"_blank\" title=\"Tham khảo iPhone kinh doanh tại TopZone thành viên của Thế Giới Di Động\">iPhone</a>&nbsp;mới l&agrave; mỗi lần Apple mang đến cho người d&ugrave;ng một trải nghiệm về hiệu năng &quot;chưa từng c&oacute;&quot;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd45.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Trải nghiệm chơi game trên iPhone 11\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd45.jpg\" title=\"Điện thoại iPhone 11 64GB | Trải nghiệm chơi game trên iPhone 11\" /></a></p>\r\n\r\n<p>Tr&ecirc;n iPhone 11 mới Apple n&acirc;ng cấp con chip của m&igrave;nh l&ecirc;n thế hệ&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a13-bionic-tren-iphone-11-n-1197492\" target=\"_blank\" title=\"Tìm hiểu về chip Apple A13 Bionic\" type=\"Tìm hiểu về chip Apple A13 Bionic\">Apple A13 Bionic</a>&nbsp;rất mạnh mẽ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-dmx18.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Điểm hiệu năng Antutu Benchmark\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-dmx18.jpg\" title=\"Điện thoại iPhone 11 64GB | Điểm hiệu năng Antutu Benchmark\" /></a></p>\r\n\r\n<p>Chiếc iPhone n&agrave;y cũng được n&acirc;ng cấp dung lượng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-ram-4gb\" target=\"_blank\" title=\"Tham khảo điện thoại có RAM 4 GB tại Thegioididong.com\">RAM 4 GB</a>&nbsp;thay v&igrave; 3 GB như thế hệ trước đ&oacute;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-119.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Trải nghiệm thao tác\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-119.jpg\" title=\"Điện thoại iPhone 11 64GB | Trải nghiệm thao tác\" /></a></p>\r\n\r\n<p>Ở mức cấu h&igrave;nh tr&ecirc;n gi&uacute;p&nbsp;<a href=\"https://www.thegioididong.com/dtdd-choi-game\" target=\"_blank\" title=\"Tham khảo các mẫu điện thoại chơi game tại Thế Giới Di Động\">điện thoại chơi game</a>&nbsp;tốt với c&aacute;c tựa game phổ biến hiện nay một c&aacute;ch mượt m&agrave;, ổn định. Mọi thao t&aacute;c tr&ecirc;n iPhone mới cũng cho tốc độ phản hồi nhanh m&agrave; bạn gần như sẽ kh&ocirc;ng cảm nhận được sự giật lag cho d&ugrave; c&oacute; sử dụng trong một thời gian d&agrave;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/thu-nghiem-do-ben-iphone-11-cao-xuoc-nung-nong-va-be-cong-1203631\" target=\"_blank\" title=\"Thử nghiệm độ bền iPhone 11\" type=\"Thử nghiệm độ bền iPhone 11\">Thử nghiệm độ bền iPhone 11: C&agrave;o xước, nung n&oacute;ng v&agrave; bẻ cong</a></p>\r\n\r\n<p>Phi&ecirc;n bản iOS 15 (12/2021) đi k&egrave;m với chiếc iPhone n&agrave;y cũng được trang bị nhiều t&iacute;nh năng hơn gi&uacute;p bạn sử dụng chiếc iPhone hiệu quả hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Face ID tr&ecirc;n iPhone 11 cũng được cải tiến để c&oacute; thể nhận diện ở nhiều g&oacute;c độ hơn v&agrave; tốc độ phản hồi nhanh hơn.</p>\r\n\r\n<h3><strong>Những thay đổi về thiết kế theo hướng t&iacute;ch cực</strong></h3>\r\n\r\n<p>Ch&uacute;ng ta sẽ c&oacute; một mặt lưng ho&agrave;n thiện dưới dạng k&iacute;nh v&agrave; Apple n&oacute;i rằng họ đ&atilde; sử dụng loại k&iacute;nh bền nhất từ trước tới nay cho chiếc iPhone n&agrave;y.</p>\r\n\r\n<p>Camera k&eacute;p tr&ecirc;n iPhone mới cũng được thiết kế lại v&agrave; tin vui l&agrave; n&oacute; sẽ bớt lồi hơn so với tr&ecirc;n tr&ecirc;n iPhone Xr trước đ&acirc;y.</p>\r\n\r\n<p>Điểm nhấn về cụm camera to bản ở mặt sau sẽ gi&uacute;p người kh&aacute;c dễ d&agrave;ng nhận biết bạn đang sử dụng một chiếc iPhone 11 tr&ecirc;n tay.</p>\r\n\r\n<p>Logo quả t&aacute;o truyền thống của Apple nay đ&atilde; được di chuyển về phần ch&iacute;nh giữa của mặt lớn thay v&igrave; đặt lệch về ph&iacute;a cạnh tr&ecirc;n như những đời iPhone trước đ&oacute;.</p>\r\n\r\n<p>Apple cho biết họ đ&atilde; ho&agrave;n thiện tr&ecirc;n iPhone mới để n&oacute; cho khả năng&nbsp;<a href=\"https://www.thegioididong.com/dtdd?f=chong-nuoc-bui\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone chống nước chống bụi\">chống nước</a>&nbsp;tốt hơn v&agrave; người d&ugrave;ng c&oacute; thể y&ecirc;n t&acirc;m về điều đ&oacute;.&nbsp;</p>\r\n\r\n<h3><strong>Thời lượng pin tốt nhất từ trước tới nay</strong></h3>\r\n\r\n<p>Khi n&oacute;i đến thời lượng pin iPhone 11, hẳn nhiều người đ&atilde; ước ao rằng m&aacute;y sẽ c&oacute; vi&ecirc;n pin tốt giống như iPhone Xr (c&oacute; thời lượng pin tốt nhất so với bất kỳ iPhone hiện đại n&agrave;o).</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd46.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thời lượng pin\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd46.jpg\" title=\"Điện thoại iPhone 11 64GB | Thời lượng pin\" /></a></p>\r\n\r\n<p>Tuy nhi&ecirc;n bạn sẽ c&ograve;n c&oacute; một chiếc m&aacute;y thậm ch&iacute; c&ograve;n tốt hơn nữa.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-116-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thiết kế hiện đại\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-116-1.jpg\" title=\"Điện thoại iPhone 11 64GB | Thiết kế hiện đại\" /></a></p>\r\n\r\n<p>Theo Apple th&igrave; chiếc iPhone mới sẽ c&oacute; thời lượng pin tr&acirc;u hơn 1 giờ so với chiếc iPhone Xr.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd40.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Giao diện Dark Mode\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd40.jpg\" title=\"Điện thoại iPhone 11 64GB | Giao diện Dark Mode\" /></a></p>\r\n\r\n<p>Như vậy với iPhone mới bạn ho&agrave;n to&agrave;n c&oacute; thể sử dụng m&aacute;y l&ecirc;n tới 2 ng&agrave;y m&agrave; kh&ocirc;ng cần lo lắng việc thiết bị sẽ hết pin giữa chừng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd39.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thời lượng pin\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd39.jpg\" title=\"Điện thoại iPhone 11 64GB | Thời lượng pin\" /></a></p>\r\n\r\n<p>Tất nhi&ecirc;n m&aacute;y cũng sẽ hỗ trợ c&ocirc;ng nghệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd?f=sac-pin-nhanh\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone sạc pin nhanh\">sạc nhanh</a>&nbsp;nhưng bạn phải mua th&ecirc;m củ sạc b&ecirc;n ngo&agrave;i để c&oacute; thể sử dụng t&iacute;nh năng n&agrave;y.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-117.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thời lượng sử dụng dài\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-117.jpg\" title=\"Điện thoại iPhone 11 64GB | Thời lượng sử dụng dài\" /></a></p>\r\n\r\n<p>Với chừng đ&oacute; t&iacute;nh năng, chừng đ&oacute; cải tiến th&igrave; chiếc iPhone 11 n&agrave;y tự tin sẽ l&agrave; một đối thủ đ&aacute;ng gờm với những chiếc flagship đến từ c&aacute;c h&atilde;ng Android đang c&oacute; mặt tr&ecirc;n thị trường.</p>\r\n', 0),
(21, 10, 11, 2, 9, 4, 'Lenovo IdeaPad 3', 9190000, 200, 'ab0990a54f . 25-removebg-preview.png', 'e4661b54d8 . 13.jpg', '<h3><strong>Thiết kế hiện đại, thanh lịch c&ugrave;ng những th&ocirc;ng số kỹ thuật ổn định sẽ l&agrave; c&aacute;c ưu điểm m&agrave;&nbsp;<a href=\"https://www.thegioididong.com/laptop/lenovo-ideapad-3-15iml05-i3-81wb01dyvn\" target=\"_blank\" title=\"Laptop Lenovo IdeaPad 3 15IML05 i3 (81WB01DYVN)\">laptop&nbsp;Lenovo IdeaPad 3 15IML05 i3 (81WB01DYVN)</a>&nbsp;sở hữu nhằm đ&aacute;p ứng tốt mọi t&aacute;c vụ&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\" target=\"_blank\" title=\"Xem thêm các mẫu Laptop học tập - văn phòng hiện đang kinh doanh tại thegioididong.com\">học tập - văn ph&ograve;ng</a>&nbsp;cơ bản cho học sinh, sinh vi&ecirc;n hay nh&acirc;n vi&ecirc;n văn ph&ograve;ng.&nbsp;</strong></h3>\r\n\r\n<p>&bull; Bộ vi xử l&yacute;&nbsp;<strong>Intel Core i3 10110U</strong>&nbsp;c&ugrave;ng card t&iacute;ch hợp&nbsp;<strong>Intel UHD Graphics</strong>&nbsp;giải quyết mượt m&agrave; c&aacute;c t&aacute;c vụ văn ph&ograve;ng nhẹ nh&agrave;ng tr&ecirc;n Microsoft Office.</p>\r\n\r\n<p>&bull;&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=4-gb\" target=\"_blank\" title=\"Xem thêm những mẫu Laptop có RAM 4 GB hiện đang kinh doanh tại thegioididong.com\">Laptop RAM 4 GB</a>&nbsp;hỗ trợ n&acirc;ng cấp tối đa&nbsp;<strong>12 GB RAM</strong>&nbsp;mang đến khả năng đa nhiệm ổn định. Cải thiện tốc độ đọc, ghi nhờ ổ cứng&nbsp;<strong>256 GB SSD</strong>.</p>\r\n\r\n<p>&bull;&nbsp;<a href=\"https://www.thegioididong.com/laptop-lenovo-ideapad\" target=\"_blank\" title=\"Xem thêm các mẫu Laptop Lenovo IdeaPad hiện đang kinh doanh tại thegioididong.com\">Laptop Lenovo IdeaPad</a>&nbsp;m&agrave;n h&igrave;nh&nbsp;<strong>15.6 inch</strong>&nbsp;c&ugrave;ng tấm nền&nbsp;<strong>IPS</strong>&nbsp;cho g&oacute;c nh&igrave;n rộng r&atilde;i. C&ocirc;ng nghệ&nbsp;<strong>Anti Glare</strong>&nbsp;cho chất lượng hiển thị h&igrave;nh ảnh r&otilde; n&eacute;t, giảm thiểu hiện tượng bị ch&oacute;i.</p>\r\n\r\n<p>&bull; Dữ liệu c&aacute; nh&acirc;n được bảo mật an to&agrave;n hơn nhờ&nbsp;<strong>c&ocirc;ng tắc kh&oacute;a camera</strong>&nbsp;hiện đại c&ugrave;ng con chip&nbsp;<strong>TPM 2.0</strong>&nbsp;được trang bị tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\" title=\"Xem thêm các mẫu Laptop hiện đang kinh doanh tại thegioididong.com\">laptop</a>.</p>\r\n\r\n<p>&bull; Đắm ch&igrave;m v&agrave;o kh&ocirc;ng gian giải tr&iacute; sống động tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/laptop-lenovo\" target=\"_blank\" title=\"Xem thêm các mẫu Laptop Lenovo hiện đang kinh doanh tại thegioididong.com\">laptop Lenovo</a>&nbsp;với hệ thống &acirc;m thanh đa chiều từ c&ocirc;ng nghệ&nbsp;<strong>Dolby Audio</strong>.&nbsp;</p>\r\n', 0),
(22, 8, 11, 2, 10, 4, 'Samsung Galaxy Tab S8', 20990000, 149, '94fed7f380 . 26-removebg-preview.png', '2795a81675 . 2.jpg', '<h3><strong>Samsung Galaxy Tab S8 ra mắt v&agrave; vẫn giữ được đặc trưng của d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang-samsung-galaxy-tab-s\" target=\"_blank\" title=\"Tham khảo một số mẫu máy tính bảng Galaxy Tab S đang kinh doanh tại Thế Giới Di Động \">m&aacute;y t&iacute;nh bảng&nbsp;Galaxy Tab S</a>&nbsp;với cấu h&igrave;nh mạnh mẽ, m&agrave;n h&igrave;nh hiển thị ổn c&ugrave;ng khả năng hỗ trợ b&uacute;t S Pen hỗ trợ học tập l&agrave;m việc tốt hơn.</strong></h3>\r\n\r\n<h3><strong>Thiết kế đặc trưng Galaxy Tab S</strong></h3>\r\n\r\n<p>X&eacute;t về mặt ngoại h&igrave;nh th&igrave;&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang/samsung-galaxy-tab-s8\" target=\"_blank\" title=\"Tham khảo một số mẫu máy tính bảng Samsung Galaxy Tab S8 đang kinh doanh tại Thế Giới Di Động \">m&aacute;y t&iacute;nh bảng&nbsp;Samsung Galaxy Tab S8</a>&nbsp;thừa hưởng những thiết kế nổi bật của&nbsp;Tab S7, về tổng thể th&igrave; Tab S8 l&agrave; phi&ecirc;n bản n&acirc;ng cấp phần cứng b&ecirc;n trong so với Tab S7.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/522/247510/samsung-galaxy-tab-s8-040322-113835.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế đặc trưng - Samsung Galaxy Tab S8\" src=\"https://cdn.tgdd.vn/Products/Images/522/247510/samsung-galaxy-tab-s8-040322-113835.jpg\" title=\"Thiết kế đặc trưng - Samsung Galaxy Tab S8\" /></a></p>\r\n\r\n<p>To&agrave;n bộ phần th&acirc;n m&aacute;y vẫn được l&agrave;m từ kim loại nguy&ecirc;n khối sang trọng, đi c&ugrave;ng với viền m&agrave;n h&igrave;nh mỏng, đem lại cảm gi&aacute;c hiện đại cũng như rộng r&atilde;i trong qu&aacute; tr&igrave;nh sử dụng.<br />\r\nGalaxy Tab S8 cũng được trang bị b&uacute;t S Pen cải tiến mới, c&oacute; độ nhạy 6.2 ms cho cảm gi&aacute;c giống như đang viết tr&ecirc;n giấy.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/522/247510/samsung-galaxy-tab-s8-040322-113841.jpg\" onclick=\"return false;\"><img alt=\"Hỗ trợ bút S Pen - Samsung Galaxy Tab S8\" src=\"https://cdn.tgdd.vn/Products/Images/522/247510/samsung-galaxy-tab-s8-040322-113841.jpg\" title=\"Hỗ trợ bút S Pen - Samsung Galaxy Tab S8\" /></a></p>\r\n\r\n<h3><strong>Mạnh sẽ với chip Snapdragon</strong></h3>\r\n\r\n<p>Tab S8 sử dụng CPU Snapdragon 8 Gen1 mới, mang lại hiệu năng cực kỳ ổn định v&agrave; vấn đề nhiệt độ đ&atilde; được giải quyết v&agrave; được kiểm so&aacute;t hơn v&igrave; k&iacute;ch thước m&aacute;y t&iacute;nh bảng kh&aacute; lớn khi so với điện thoại, gi&uacute;p khả năng tản nhiệt được tốt hơn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/may-tinh-bang-ram-8gb\" target=\"_blank\" title=\"Tham khảo một số mẫu máy tính bảng có RAM 8 GB đang kinh doanh tại Thế Giới Di Động \">M&aacute;y t&iacute;nh bảng c&oacute;&nbsp;RAM 8 GB</a>&nbsp;n&ecirc;n mọi t&aacute;c vụ của bạn sẽ được khởi chạy mượt m&agrave;, đa nhiệm tốt hơn. Bộ nhớ trong 128 GB c&oacute; hỗ trợ mở rộng qua thẻ MicroSD.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/522/247510/samsung-galaxy-tab-s8-1-1.jpg\" onclick=\"return false;\"><img alt=\"Hiệu năng mạnh mẽ - Samsung Galaxy Tab S8\" src=\"https://cdn.tgdd.vn/Products/Images/522/247510/samsung-galaxy-tab-s8-1-1.jpg\" title=\"Hiệu năng mạnh mẽ - Samsung Galaxy Tab S8\" /></a></p>\r\n\r\n<p>Snapdragon 8 Gen 1 c&ograve;n hỗ trợ kết nối 5G ti&ecirc;n tiến bật nhất hiện nay, cho mọi trải nghiệm tải l&ecirc;n, xuống của bạn tr&ecirc;n kh&ocirc;ng gian mạng được trơn tru nhất.</p>\r\n\r\n<p>Với hệ điều h&agrave;nh Android 12 bạn c&oacute; thể c&oacute; chọn k&iacute;ch thước, vị tr&iacute; v&agrave; số lượng cửa sổ bật l&ecirc;n để bạn thực hiện nhiều t&aacute;c vụ c&ugrave;ng 1 l&uacute;c, đa nhiệm tốt hơn.</p>\r\n\r\n<p>C&ugrave;ng với đ&oacute; l&agrave; giao diện Samsung Dex cải tiến cho ph&eacute;p bạn l&agrave;m việc với Galaxy Tab S8 như với một chiếc m&aacute;y t&iacute;nh thực thụ.</p>\r\n\r\n<h3><strong>Khả năng quay, chụp tốt</strong></h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/may-tinh-bang\" target=\"_blank\" title=\"Tham khảo một số mẫu máy tính bảng đang kinh doanh tại Thế Giới Di Động \">M&aacute;y t&iacute;nh bảng</a>&nbsp;c&oacute; cụm 2 camera với camera ch&iacute;nh 13 MP v&agrave; camera phụ 6 MP, hỗ trợ quay video độ ph&acirc;n giải 4K. Camera trước g&oacute;c si&ecirc;u rộng 12 MP với t&iacute;nh năng Auto Framing lu&ocirc;n đặt bạn v&agrave;o trung t&acirc;m khung h&igrave;nh trong mọi t&igrave;nh huống.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/522/247510/samsung-galaxy-tab-s8-2.jpg\" onclick=\"return false;\"><img alt=\"Camera Samsung Galaxy Tab S8\" src=\"https://cdn.tgdd.vn/Products/Images/522/247510/samsung-galaxy-tab-s8-2.jpg\" title=\"Camera Samsung Galaxy Tab S8\" /></a></p>\r\n\r\n<h3><strong>Th&ecirc;m kh&ocirc;ng gian hiển thị</strong></h3>\r\n\r\n<p>Galaxy Tab S8 c&oacute; m&agrave;n h&igrave;nh 11 inch, độ ph&acirc;n giải đến 2K cho bạn trải nghiệm cực m&atilde;n nh&atilde;n, c&ugrave;ng với tần số qu&eacute;t 120 Hz mọi chuyển động tr&ecirc;n m&agrave;n h&igrave;nh đều trở n&ecirc;n mượt m&agrave;.</p>\r\n\r\n<p>M&agrave;u sắc được hiển thị tr&ecirc;n m&agrave;n h&igrave;nh một c&aacute;ch tươi s&aacute;ng, h&igrave;nh ảnh r&otilde; n&eacute;t mang lại trải nghiệm tuyệt vời về phần nh&igrave;n.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/522/247510/samsung-galaxy-tab-s8-040322-113839.jpg\" onclick=\"return false;\"><img alt=\"Màn hình hiển thị tốt - Samsung Galaxy Tab S8\" src=\"https://cdn.tgdd.vn/Products/Images/522/247510/samsung-galaxy-tab-s8-040322-113839.jpg\" title=\"Màn hình hiển thị tốt - Samsung Galaxy Tab S8\" /></a></p>\r\n\r\n<h3><strong>Pin dung lượng lớn, c&ocirc;ng suất sạc được n&acirc;ng cấp</strong></h3>\r\n\r\n<p>Ngo&agrave;i việc được trang bị một con chip khủng, m&agrave;n h&igrave;nh c&oacute; tần số qu&eacute;t cao&nbsp;<a href=\"https://www.thegioididong.com/samsung\" target=\"_blank\" title=\"Tham khảo một số sản phẩm Samsung  đang kinh doanh tại Thế Giới Di Động \">Samsung</a>&nbsp;đ&atilde; trang bị tr&ecirc;n chiếc m&aacute;y t&iacute;nh bảng thế hệ mới vi&ecirc;n pin c&oacute; dung lượng l&ecirc;n đến 8000 mAh, c&ugrave;ng với đ&oacute; l&agrave; c&ocirc;ng nghệ sạc nhanh 45 W.</p>\r\n\r\n<p>Bạn c&oacute; thể y&ecirc;n t&acirc;m sử dụng Tab S8 cho c&aacute;c nhu cầu học h&agrave;nh, l&agrave;m việc, giải tr&iacute; suốt cả một ng&agrave;y d&agrave;i v&agrave; sạc đầy pin một c&aacute;ch nhanh ch&oacute;ng với c&ocirc;ng nghệ sạc nhanh.&nbsp;</p>\r\n\r\n<p>Nếu bạn đang cần một chiếc tablet c&oacute; một thiết kế tinh tế, nhỏ gọn, thường xuy&ecirc;n di chuyển v&agrave; mang m&aacute;y t&iacute;nh bảng b&ecirc;n m&igrave;nh để học tập v&agrave; l&agrave;m việc th&igrave; chắc chắn Galaxy Tab S8 sẽ l&agrave; một lựa chọn ph&ugrave; hợp.</p>\r\n', 2),
(23, 8, 11, 1, 11, 4, 'Samsung Galaxy Watch 4 LTE', 4890000, 342, '9db8c7c5a5 . 27-removebg-preview.png', '6a0d23aeef . 2.jpg', '<h3><strong>Kiểu d&aacute;ng trang nh&atilde;, thanh lịch c&ugrave;ng c&ocirc;ng nghệ ti&ecirc;n tiến đ&aacute;nh dấu kỷ nguy&ecirc;n mới của Samsung</strong></h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dong-ho-thong-minh/samsung-galaxy-watch-4-lte-40mm\" target=\"_blank\" title=\"Samsung Galaxy Watch 4 LTE 40mm đang kinh doanh tại Thế Giới Di Động \" type=\"Samsung Galaxy Watch 4 LTE 40mm đang kinh doanh tại Thế Giới Di Động \">Samsung Galaxy Watch 4 LTE</a>&nbsp;nổi bật bởi thiết kế thời trang với khung viền nh&ocirc;m cứng c&aacute;p,&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh?g=silicone\" target=\"_blank\" title=\"Xem thêm một số mẫu đồng hồ có dây đeo silicone đang kinh doanh tại Thế Giới Di Động \" type=\"Xem thêm một số mẫu đồng hồ có dây đeo silicone đang kinh doanh tại Thế Giới Di Động \">d&acirc;y đeo silicone</a>&nbsp;chắc chắn c&ugrave;ng viền xoay cảm ứng đặc trưng của thương hiệu điện tử Samsung. Phi&ecirc;n bản 40mm n&agrave;y ph&ugrave; hợp với c&aacute;c bạn bạn trẻ năng động, ưa th&iacute;ch mang đồng hồ ngay cả khi hoạt động thể thao m&agrave; vẫn giữ được vẻ thanh lịch nhờ thiết kế nhỏ gọn c&ugrave;ng mặt đồng hồ tr&ograve;n cổ điển.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-2-1.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ Samsung Galaxy Watch 4 LTE - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-2-1.jpg\" title=\"Đồng hồ Samsung Galaxy Watch 4 LTE - Thiết kế\" /></a></p>\r\n\r\n<p>Đ&acirc;y được xem l&agrave; bước đột ph&aacute; lớn của Samsung trong lĩnh vực c&ocirc;ng nghệ tr&ecirc;n thế giới n&oacute;i chung cũng như Việt Nam n&oacute;i ri&ecirc;ng, khi cho ra mắt&nbsp;<strong>chiếc đồng hồ th&ocirc;ng minh đầu ti&ecirc;n sử dụng hệ điều h&agrave;nh Wear OS - giao diện One UI Watch</strong>, gi&uacute;p người d&ugrave;ng c&oacute; một trải nghiệm liền mạch v&agrave; gắn kết hơn với hệ sinh th&aacute;i Samsung.</p>\r\n\r\n<h3><strong>Sử dụng chip Exynos W920 c&oacute; khả năng xử l&yacute; th&ocirc;ng tin mạnh mẽ&nbsp;</strong></h3>\r\n\r\n<p>Ng&agrave;y 10/08, Samsung đ&atilde; cho ra mắt con chip Exynos W920 được sản xuất bằng quy tr&igrave;nh 5 nm mới nhất từ Samsung Foundry.&nbsp;<strong>Bộ vi xử l&yacute; n&agrave;y được n&acirc;ng cấp v&agrave; c&oacute; tốc độ nhanh hơn 20% so với thế hệ tiền nhiệm l&agrave; Exynos 9110 (Samsung Galaxy Watch 3)</strong>. Điều n&agrave;y đồng nghĩa với việc thao t&aacute;c cuộn v&agrave; đa nhiệm tr&ecirc;n mẫu đồng hồ th&ocirc;ng minh n&agrave;y sẽ mượt m&agrave; v&agrave; dễ d&agrave;ng hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-13.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ Samsung Galaxy Watch 4 LTE có chip Exynos W920 cho khả năng xử lý thông tin mạnh mẽ \" src=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-13.jpg\" title=\"Đồng hồ Samsung Galaxy Watch 4 LTE có chip Exynos W920 cho khả năng xử lý thông tin mạnh mẽ \" /></a></p>\r\n\r\n<h3><strong>Hệ điều h&agrave;nh Wear OS cải tiến v&agrave; giao diện One UI Watch tiện nghi&nbsp;</strong></h3>\r\n\r\n<p>Galaxy Watch 4 LTE sẽ l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh\" target=\"_blank\" title=\"Xem thêm một số mẫu đồng hồ thông minh đang kinh doanh tại Thế Giới Di Động \" type=\"Xem thêm một số mẫu đồng hồ thông minh đang kinh doanh tại Thế Giới Di Động \">đồng hồ th&ocirc;ng minh</a>&nbsp;đầu ti&ecirc;n tương th&iacute;ch với hệ điều h&agrave;nh One UI Watch 3.5 - một hệ điều h&agrave;nh được ph&aacute;t triển bởi Samsung v&agrave; Google - cho ph&eacute;p người d&ugrave;ng c&oacute; những trải nghiệm mượt m&agrave;, tiện nghi khi c&aacute;c ứng dụng được tải tr&ecirc;n điện thoại sẽ tự động tải xuống tr&ecirc;n đồng hồ hay c&aacute;c c&agrave;i đặt quan trọng cũng được đồng bộ h&oacute;a ngay lập tức.&nbsp;</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/mwc-2021-samsung-gioi-thieu-one-ui-watch-1364116\" target=\"_blank\" title=\"Tìm hiểu thêm về hệ điều hành One UI Watch \" type=\"Tìm hiểu thêm về hệ điều hành One UI Watch \">Hệ điều h&agrave;nh One UI Watch</a></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-5.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ Samsung Galaxy Watch 4 LTE có hệ điều hành Wear OS cải tiến và giao diện One UI Watch tiện nghi \" src=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-5.jpg\" title=\"Đồng hồ Samsung Galaxy Watch 4 LTE có hệ điều hành Wear OS cải tiến và giao diện One UI Watch tiện nghi \" /></a></p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-loai-man-hinh-thong-dung-tren-smartwatch-1169187#subhmenuid4\" target=\"_blank\" title=\"Tìm hiểu thêm về màn hình Super AMOLED\" type=\"Tìm hiểu thêm về màn hình Super AMOLED\">Super AMOLED</a>&nbsp;cho khả năng hiển thị sắc n&eacute;t&nbsp;</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh đồng hồ c&oacute; k&iacute;ch thước nhỏ gọn, chỉ 1.2 inch nhưng vẫn hiển thị đầy đủ th&ocirc;ng tin, độ ph&acirc;n giải 396 x 396 pixels c&ugrave;ng lớp k&iacute;nh cường lực Gorilla Glass DX+ bảo vệ m&agrave;n h&igrave;nh khỏi c&aacute;c vết trầy xước.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-7.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ Samsung Galaxy Watch 4 LTE có màn hình Super AMOLED cho khả năng hiển thị sắc nét \" src=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-7.jpg\" title=\"Đồng hồ Samsung Galaxy Watch 4 LTE có màn hình Super AMOLED cho khả năng hiển thị sắc nét \" /></a></p>\r\n\r\n<h3><strong>Thoải m&aacute;i kết nối Bluetooth v5.0</strong></h3>\r\n\r\n<p>Mẫu&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh-samsung\" target=\"_blank\" title=\"Xem thêm một số mẫu đồng hồ thông minh Samsung đang kinh doanh tại Thế Giới Di Động \" type=\"Xem thêm một số mẫu đồng hồ thông minh Samsung đang kinh doanh tại Thế Giới Di Động \">đồng hồ th&ocirc;ng minh Samsung</a>&nbsp;n&agrave;y c&oacute; thể kết nối bluetooth dễ d&agrave;ng với c&aacute;c thiết bị sử dụng hệ điều h&agrave;nh Android. Khi kết nối th&agrave;nh c&ocirc;ng với đồng hồ, người d&ugrave;ng c&oacute; thể nhận được th&ocirc;ng b&aacute;o mọi l&uacute;c mọi nơi cũng như theo d&otilde;i c&aacute;c chỉ số sức khỏe, luyện tập thể thao,...</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-14.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ Samsung Galaxy Watch 4 LTE có thể nghe gọi trực tiếp \" src=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-14.jpg\" title=\"Đồng hồ Samsung Galaxy Watch 4 LTE có thể nghe gọi trực tiếp \" /></a></p>\r\n\r\n<h3><strong>Thời lượng pin 1.5 ng&agrave;y c&ugrave;ng cổng sạc kh&ocirc;ng d&acirc;y tiện lợi</strong></h3>\r\n\r\n<p>Bạn c&oacute; thể sử dụng đồng hồ trong khoảng 1.5 ng&agrave;y với dung lượng pin&nbsp;247 mAh v&agrave; sạc đồng hồ th&ocirc;ng qua cổng sạc kh&ocirc;ng d&acirc;y tiện lợi. Lượng pin của mẫu đồng hồ n&agrave;y tuy kh&ocirc;ng lớn nhưng đủ để bạn sử dụng thoải m&aacute;i cả ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng phải sạc hay lo sợ hết pin giữa chừng.&nbsp;</p>\r\n\r\n<p>Lưu &yacute;, thời gian sử dụng n&agrave;y c&oacute; thể thay đổi t&ugrave;y theo c&aacute;ch sử dụng của người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-10.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ Samsung Galaxy Watch 4 LTE có thời lượng pin 1.5 ngày cùng cổng sạc không dây tiện lợi\" src=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-10.jpg\" title=\"Đồng hồ Samsung Galaxy Watch 4 LTE có thời lượng pin 1.5 ngày cùng cổng sạc không dây tiện lợi\" /></a></p>\r\n\r\n<h3><strong>Bộ sưu tập mặt đồng hồ đa dạng, cho ph&eacute;p người d&ugrave;ng thay đổi theo sở th&iacute;ch&nbsp;</strong></h3>\r\n\r\n<p>Người d&ugrave;ng c&oacute; thể thoải m&aacute;i thay đổi mặt đồng hồ t&ugrave;y theo sở th&iacute;ch từ mặt đồng hồ kim hay đồng hồ kỹ thuật số với nhiều h&igrave;nh nền, ph&ocirc;ng chữ v&agrave; m&agrave;u sắc kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-6.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ Samsung Galaxy Watch 4 LTE có bộ sưu tập mặt đồng hồ đa dạng, cho phép người dùng thay đổi theo sở thích \" src=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-6.jpg\" title=\"Đồng hồ Samsung Galaxy Watch 4 LTE có bộ sưu tập mặt đồng hồ đa dạng, cho phép người dùng thay đổi theo sở thích \" /></a></p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ theo d&otilde;i sức khỏe hiện đại, t&acirc;n tiến&nbsp;</strong></h3>\r\n\r\n<p>Đồng hồ được trang bị c&aacute;c cảm biến &aacute;nh s&aacute;ng, địa từ, gia tốc kế,... đặc biệt l&agrave; bộ cảm biến BioActive đột ph&aacute; của Samsung. Nhờ bộ cảm biến hiện đại n&agrave;y, người d&ugrave;ng c&oacute; thể nhận kết quả ph&acirc;n t&iacute;ch th&agrave;nh phần cơ thể như tỷ lệ chất b&eacute;o, cơ xương, lượng nước trong cơ thể (qua phương ph&aacute;p đo BIA) theo thời gian thực mọi l&uacute;c, mọi nơi chỉ với hai ng&oacute;n tay trong 15 gi&acirc;y.</p>\r\n\r\n<p>Ngo&agrave;i ra, đồng hồ c&ograve;n&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh-theo-doi-giac-ngu\" target=\"_blank\" title=\"Xem thêm một số mẫu đồng hồ có chức năng theo dõi giấc ngủ đang kinh doanh tại Thế Giới Di Động \" type=\"Xem thêm một số mẫu đồng hồ có chức năng theo dõi giấc ngủ đang kinh doanh tại Thế Giới Di Động \">theo d&otilde;i giấc ngủ</a>&nbsp;của bạn, ph&acirc;n t&iacute;ch v&agrave; đ&aacute;nh gi&aacute; n&acirc;ng cao th&ocirc;ng qua việc đo nồng độ oxy trong m&aacute;u, ph&aacute;t hiện tiếng ng&aacute;y gi&uacute;p cải thiện chất lượng nghỉ ngơi của bạn. Samsung hợp t&aacute;c với Tổ chức National Sleep Foundation để cung cấp c&aacute;c th&ocirc;ng tin chuy&ecirc;n s&acirc;u về giấc ngủ, gi&uacute;p bạn hiểu r&otilde; v&agrave; cải thiện giấc ngủ của ch&iacute;nh m&igrave;nh.</p>\r\n\r\n<p>Lưu &yacute;, chức năng quản l&yacute; giấc ngủ chỉ khả dụng khi được gh&eacute;p nối với điện thoại th&ocirc;ng minh.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tinh-nang-do-chi-so-spo2-va-vo2-max-tren-smartwatch-la-gi-1279892#hmenuid1\" target=\"_blank\" title=\"Tìm hiểu thêm về SpO2\" type=\"Tìm hiểu thêm về SpO2\">SpO2 l&agrave; g&igrave;?</a></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-8.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ Samsung Galaxy Watch 4 LTE có công nghệ theo dõi sức khỏe hiện đại, tân tiến \" src=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-8.jpg\" title=\"Đồng hồ Samsung Galaxy Watch 4 LTE có công nghệ theo dõi sức khỏe hiện đại, tân tiến \" /></a></p>\r\n\r\n<p>Với bản cập nhật mới v&agrave;o th&aacute;ng 4/2022, người d&ugrave;ng Việt Nam đ&atilde; c&oacute; thể sử dụng t&iacute;nh 2 t&iacute;nh năng&nbsp;<strong>đo huyết &aacute;p</strong>&nbsp;v&agrave;&nbsp;<strong>điện t&acirc;m đồ ECG</strong>. Để k&iacute;ch hoạt, bạn cần tải ứng dụng&nbsp;<a href=\"https://galaxystore.samsung.com/detail/com.samsung.android.shealthmonitor\" target=\"_blank\" title=\"Ứng dụng Samsung Health Monitor\">Samsung Health Monitor</a>&nbsp;v&agrave; cập nhật phi&ecirc;n bản phần mềm mới nhất d&agrave;nh cho Galaxy Watch 4. Giờ đ&acirc;y bạn đ&atilde; c&oacute; thể theo d&otilde;i th&ocirc;ng tin sức khỏe bản th&acirc;n mọi l&uacute;c mọi nơi chỉ với chiếc đồng hồ tr&ecirc;n cổ tay của m&igrave;nh.</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết về bản cập nhật n&agrave;y bạn c&oacute; thể xem tại đ&acirc;y:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/ra-mat-tinh-nang-do-huyet-ap-va-dien-tam-do-tren-galaxy-watch-4-1426241\" target=\"_blank\" title=\"Ra mắt tính năng Đo Huyết Áp và Điện tâm đồ trên Galaxy Watch 4 tại Việt Nam giúp người dùng chăm sóc sức khỏe toàn diện\">Ra mắt t&iacute;nh năng Đo Huyết &Aacute;p v&agrave; Điện t&acirc;m đồ tr&ecirc;n Galaxy Watch 4 tại Việt Nam</a>.</p>\r\n\r\n<h3><strong>N&acirc;ng cao sức đề kh&aacute;ng mỗi ng&agrave;y với hơn 90 chế độ luyện tập&nbsp;</strong></h3>\r\n\r\n<p>Người d&ugrave;ng c&oacute; thể chơi c&aacute;c bộ m&ocirc;n thể thao ngo&agrave;i trời như đi bộ, chạy bền hay đạp xe dễ d&agrave;ng hơn với hệ thống định vị h&agrave;ng đầu GPS. Ngo&agrave;i ra, đối với người d&ugrave;ng kh&ocirc;ng c&oacute; thời gian đến những nơi tập luyện chuy&ecirc;n nghiệp cũng c&oacute; thể tập luyện tại nh&agrave; với Samsung Galaxy Watch 4 LTE được t&iacute;ch hợp hơn 90 chế độ luyện tập kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-4.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ Samsung Galaxy Watch 4 LTE có hơn 90 chế độ luyện tập \" src=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-4.jpg\" title=\"Đồng hồ Samsung Galaxy Watch 4 LTE có hơn 90 chế độ luyện tập \" /></a></p>\r\n\r\n<h3><strong>Thoải m&aacute;i mang đồng hồ khi bơi lội, tắm hay đi mưa với chỉ số chống nước 5 TAM</strong></h3>\r\n\r\n<p>Mẫu&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-deo-tay\" target=\"_blank\" title=\"Xem thêm một số mẫu đồng hồ đang kinh doanh tại Thế Giới Di Động \" type=\"Xem thêm một số mẫu đồng hồ đang kinh doanh tại Thế Giới Di Động \">đồng hồ</a>&nbsp;c&oacute; chỉ số kh&aacute;ng nước l&agrave; 5 ATM n&ecirc;n c&oacute; thể hoạt động b&igrave;nh thường khi bơi lội, tắm hay đi mưa m&agrave; kh&ocirc;ng gặp trở ngại n&agrave;o. B&ecirc;n cạnh đ&oacute;, đồng hồ c&ograve;n c&oacute; chứng nhận độ bền MIL-STD-810G cho khả năng chịu va đập cũng như an to&agrave;n khi rơi rớt ở độ cao vừa phải.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-01.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Watch 4 LTE 40mm - Chống nước\" src=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-01.jpg\" title=\"Samsung Galaxy Watch 4 LTE 40mm - Chống nước\" /></a></p>\r\n\r\n<h3><strong>Nhiều t&iacute;nh năng tiện lợi, hỗ trợ người d&ugrave;ng trong sinh hoạt hằng ng&agrave;y</strong></h3>\r\n\r\n<p>Được t&iacute;ch hợp nhiều t&iacute;nh năng tiện dụng như: B&aacute;o thức, rung th&ocirc;ng b&aacute;o, đếm bước ch&acirc;n, dự b&aacute;o thời tiết,&hellip; hỗ trợ người d&ugrave;ng nhiều việc trong cuộc sống h&agrave;ng ng&agrave;y.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-12.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ Samsung Galaxy Watch 4 LTE có nhiều tính năng tiện lợi, hỗ trợ người dùng trong sinh hoạt hằng ngày\" src=\"https://cdn.tgdd.vn/Products/Images/7077/248754/samsung-galaxy-watch-4-lte-40mm-12.jpg\" title=\"Đồng hồ Samsung Galaxy Watch 4 LTE có nhiều tính năng tiện lợi, hỗ trợ người dùng trong sinh hoạt hằng ngày\" /></a></p>\r\n\r\n<p>Samsung Galaxy Watch 4 LTE 40mm l&agrave; một d&ograve;ng đồng hồ mới nhất của SamSung với bộ vi xử l&yacute; mạnh mẽ c&ugrave;ng hệ điều h&agrave;nh Wear OS v&agrave; giao diện One UI Watch được n&acirc;ng cấp t&acirc;n tiến nhằm mang đến một trải nghiệm tốt nhất d&agrave;nh cho người d&ugrave;ng. Với c&aacute;c t&iacute;nh năng theo d&otilde;i sức khỏe hiện đại như đo SpO2, đo nhịp tim hay theo d&otilde;i giấc ngủ, chiếc đồng hồ n&agrave;y chắc chắn sẽ được săn đ&oacute;n rất nhiều bởi c&aacute;c t&iacute;n đồ y&ecirc;u c&ocirc;ng nghệ v&agrave; thể thao.</p>\r\n', 1),
(24, 122, 11, 1, 12, 4, 'MVW 42 mm Nam ML064-01', 1034000, 390, 'c304e65a0a . 28-removebg-preview.png', '5e9317fc2f . 1.jpg', '<p>-&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-deo-tay-mvw\" target=\"_blank\" title=\"Đồng hồ MVW chính hãng, giá rẻ, bán tại Thế Giới Di Động\">Đồng hồ MVW</a>&nbsp;l&agrave; thương hiệu độc quyền của Thế Giới Di Động, sở hữu những thiết kế mang phong c&aacute;ch hiện đại, sang trọng</p>\r\n\r\n<p>- Đường k&iacute;nh mặt&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-deo-tay\" target=\"_blank\" title=\"Đồng hồ chính hãng, giá rẻ, bán tại Thế Giới Di Động\">đồng hồ</a>&nbsp;l&agrave; 42 mm, độ rộng d&acirc;y 20 mm</p>\r\n\r\n<p>- Khung viền th&eacute;p kh&ocirc;ng gỉ bền chắc, chịu lực tốt, dễ lau ch&ugrave;i khi b&aacute;m bẩn, d&acirc;y da tổng hợp &ecirc;m nhẹ, mềm mại, kh&ocirc;ng g&acirc;y kh&oacute; chịu khi sử dụng</p>\r\n\r\n<p>- Đồng hồ được đảm bảo an to&agrave;n với độ chống nước 5 ATM, bạn thoải m&aacute;i đeo khi tắm, rửa tay hay đi mưa, kh&ocirc;ng mang khi bơi, lặn</p>\r\n\r\n<p>-&nbsp;Chiếc&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-deo-tay-nam\" target=\"_blank\" title=\"Đồng hồ nam chính hãng, giá rẻ, bán tại Thế Giới Di Động\">đồng hồ nam</a>&nbsp;n&agrave;y c&oacute; kim dạ quang hỗ trợ xem giờ trong b&oacute;ng tối, c&ugrave;ng với đ&oacute; l&agrave; lịch ng&agrave;y, đồng hồ 24h v&agrave; t&iacute;nh năng bấm giờ thể thao (Chronograph) tiện dụng</p>\r\n', 2);
INSERT INTO `sanpham` (`ma_sp`, `ma_th`, `ma_lsp`, `ma_ncc`, `ma_dm`, `ma_nv`, `ten_sp`, `gia_sp`, `soluong_sp`, `hinh_sp`, `hinhchitiet_sp`, `thongtin_sp`, `tinhtrang_sp`) VALUES
(25, 10, 11, 2, 13, 4, 'Lenovo IdeaCentre AIO 3 24ITL6', 15590000, 342, '5916450028 . 29-removebg-preview.png', 'e26cec42dd . 2.jpg', '<h3><strong>Lenovo IdeaCentre AIO 3 24ITL6 (F0G0009AVN) l&agrave; phi&ecirc;n bản m&aacute;y t&iacute;nh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/may-tinh-bo-all-in-one-la-gi-uu-nhuoc-diem-ra-sao-co-nen-1316548\" target=\"_blank\" title=\"Tìm hiểu thêm về máy tính All-in-one\">All-in-one</a>&nbsp;khi được t&iacute;ch hợp đầy đủ c&aacute;c linh kiện đa năng như loa, CPU, camera,... v&agrave;o chung một m&agrave;n h&igrave;nh lớn nhưng vẫn sở hữu lối thiết kế gọn g&agrave;ng, thời thượng c&ugrave;ng cấu h&igrave;nh mạnh mẽ đa t&aacute;c vụ.</strong></h3>\r\n\r\n<h3><strong>Thu h&uacute;t mọi &aacute;nh nh&igrave;n với kiểu d&aacute;ng đậm t&iacute;nh thời trang</strong></h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/may-tinh-de-ban-aio\" target=\"_blank\" title=\"Xem thêm máy tính AIO đang bán tại thegioidiong.com\">M&aacute;y t&iacute;nh AIO</a>&nbsp;Lenovo IdeaCentre l&agrave; d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-de-ban\" target=\"_blank\" title=\"Xem thêm các mẫu máy tính để bàn hiện đang kinh doanh tại thegioididong.com\">m&aacute;y t&iacute;nh để b&agrave;n</a>&nbsp;với thiết kế to&aacute;t l&ecirc;n vẻ thời thượng, sang trọng trong mọi kh&ocirc;ng gian văn ph&ograve;ng hay c&aacute;c quầy lễ t&acirc;n của kh&aacute;ch sạn, nh&agrave; h&agrave;ng,... với sắc đen hiện đại c&ugrave;ng những g&oacute;c cạnh cắt v&aacute;t tinh to. Ch&acirc;n đế được thiết kế theo phong c&aacute;ch lệch t&acirc;m ấn tượng, tăng th&ecirc;m phần độc đ&aacute;o cho m&aacute;y.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-6.jpg\" onclick=\"return false;\"><img alt=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Chân đế\" src=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-6.jpg\" title=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Chân đế\" /></a></p>\r\n\r\n<p>Bề d&agrave;y<strong>&nbsp;185&nbsp;mm&nbsp;</strong>v&agrave; trọng lượng&nbsp;<strong>6.81 kg&nbsp;</strong>mang đến khả năng di động cao, cho ph&eacute;p người d&ugrave;ng linh hoạt di chuyển m&aacute;y ở nhiều vị tr&iacute; kh&aacute;c nhau trong việc b&agrave;y tr&iacute; văn ph&ograve;ng hay dọn dẹp vệ sinh. Đi k&egrave;m với m&aacute;y l&agrave; chuột v&agrave; b&agrave;n ph&iacute;m c&ugrave;ng tone m&agrave;u tạo n&ecirc;n sự đồng bộ, chỉnh chu nhất định, gi&uacute;p người d&ugrave;ng lắp r&aacute;p thuận tiện v&agrave; dễ d&agrave;ng hơn m&agrave; kh&ocirc;ng cần đến d&acirc;y c&aacute;p rườm r&agrave;, phức tạp.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-2.jpg\" onclick=\"return false;\"><img alt=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-2.jpg\" title=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Thiết kế\" /></a></p>\r\n\r\n<p>Đặc biệt hơn hết,<strong>&nbsp;IR Camera&nbsp;</strong>hồng ngoại gi&uacute;p bạn đăng nhập m&aacute;y, khởi động ứng dụng bằng t&iacute;nh năng&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-nhan-dien-guong-mat-windows-hello-face-t-1192377\" target=\"_blank\" title=\"Tìm hiểu thêm về công nghệ nhận diện gương mặt\">mở kh&oacute;a khu&ocirc;n mặt</a>&nbsp;tiện lợi v&agrave; dễ d&agrave;ng hơn nhưng vẫn đảm bảo độ bảo mật dữ liệu c&aacute; nh&acirc;n cho người d&ugrave;ng, hạn chế tối đa việc bị đ&aacute;nh cắp th&ocirc;ng tin từ c&aacute;c hacker, tin tặc,... th&ocirc;ng qua camera.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-7.jpg\" onclick=\"return false;\"><img alt=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Camera IR\" src=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-7.jpg\" title=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Camera IR\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/may-tinh-de-ban-lenovo\" target=\"_blank\" title=\"Xem thêm các mẫu máy tính để bàn Lenovo hiện đang kinh doanh tại thegioididong.com\">M&aacute;y t&iacute;nh để b&agrave;n Lenovo</a>&nbsp;được trang bị đa dạng c&aacute;c cổng kết nối phổ biến hiện nay như 2 cổng USB 2.0, 2 cổng USB 3.2, HDMI v&agrave; LAN (RJ45) hỗ trợ bạn li&ecirc;n kết với c&aacute;c thiết bị ngoại vi tương th&iacute;ch kh&aacute;c một c&aacute;ch nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng. Chiếc&nbsp;<strong>Webcam 720p HD</strong>&nbsp;gi&uacute;p cho việc học online hay c&aacute;c cuộc họp trực tuyến được diễn ra su&ocirc;n sẻ với chất lượng h&igrave;nh ảnh thu v&agrave;o sắc n&eacute;t hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-11.jpg\" onclick=\"return false;\"><img alt=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Cổng kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-11.jpg\" title=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Cổng kết nối\" /></a></p>\r\n\r\n<p>Đảm bảo đường truyền lu&ocirc;n trong trạng th&aacute;ng ổn định nhờ v&agrave;o chuẩn&nbsp;<strong>Bluetooth 5.0</strong>&nbsp;hoạt động ở băng tần&nbsp;<strong>5.0 GHz</strong>&nbsp;v&agrave; kết nối kh&ocirc;ng d&acirc;y&nbsp;<strong>Wi-Fi 6 AX201</strong>&nbsp;với băng th&ocirc;ng l&ecirc;n đến<strong>&nbsp;10.000 Mbps</strong>, cho ph&eacute;p người d&ugrave;ng n&acirc;ng cao năng suất l&agrave;m việc li&ecirc;n tục m&agrave; kh&ocirc;ng xảy ra hiện tượng ngắt qu&atilde;ng giữa chừng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-10.jpg\" onclick=\"return false;\"><img alt=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Đường truyền\" src=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-10.jpg\" title=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Đường truyền\" /></a></p>\r\n\r\n<h3><strong>Hiệu năng vượt trội, mượt m&agrave; đa t&aacute;c vụ</strong></h3>\r\n\r\n<p>M&aacute;y được trang bị bộ vi xử l&yacute;&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-bo-xu-ly-intel-core-the-he-thu-11-1304404\" target=\"_blank\" title=\"Tìm hiểu về bộ vi xử lý thế hệ 11\">Intel Core i5 Tiger Lake</a><strong>&nbsp;1135G7</strong>&nbsp;mạnh mẽ đạt tốc độ tối thiểu<strong>&nbsp;2.40 GHz&nbsp;</strong>v&agrave; &eacute;p xung l&ecirc;n đến<strong>&nbsp;4.2 GHz Turbo Boost</strong>&nbsp;cung cấp hiệu năng ổn định gi&uacute;p bạn đ&aacute;p ứng đầy đủ mọi nhu cầu học tập, văn ph&ograve;ng cần thiết tr&ecirc;n c&aacute;c phần mềm của Office như Word, Excel, Powerpoint,... hay lướt web, xem phim, nghe nhạc sau những giờ l&agrave;m việc mệt mỏi.</p>\r\n\r\n<p>Đảm bảo độ đa nhiệm ổn định với bộ nhớ&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-de-ban-ram-8-gb\" target=\"_blank\" title=\"Xem thêm máy tính AIO đang bán tại thegioidiong.com\">RAM 8 GB</a>&nbsp;chuẩn&nbsp;<strong>DDR4 2 khe</strong>&nbsp;(1 khe&nbsp;<strong>4 GB</strong>&nbsp;+ 1 khe&nbsp;<strong>4 GB</strong>) cho c&aacute;c thao t&aacute;c chuyển đổi qua lại giữa nhiều ứng dụng c&ugrave;ng l&uacute;c được diễn ra trơn tru hơn, hạn chế t&igrave;nh trạng lag giật nhờ tốc độ Bus RAM&nbsp;<strong>3200 MHz</strong>. M&aacute;y c&ograve;n hỗ trợ n&acirc;ng cấp tối đa&nbsp;<strong>16 GB</strong>&nbsp;gi&uacute;p bạn tải th&ecirc;m được nhiều tập tin quan trọng m&agrave; kh&ocirc;ng lo hết dung lượng.</p>\r\n\r\n<p>Card đồ họa t&iacute;ch hợp&nbsp;<strong>Intel Iris Xe Graphics</strong>&nbsp;cải thiện th&ecirc;m hiệu suất đồ họa cho m&aacute;y, gi&uacute;p bạn chỉnh sửa h&igrave;nh ảnh, thiết kế c&aacute;c video đơn giản tr&ecirc;n c&aacute;c ứng dụng của nh&agrave; Adobe với c&aacute;c thao t&aacute;c nhuần nhuyễn như d&acirc;n chuy&ecirc;n nghiệp hay thậm ch&iacute; l&agrave; giải tr&iacute; với c&aacute;c tựa game trung b&igrave;nh nhẹ như LOL, Township, Among us,...</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-4.jpg\" onclick=\"return false;\"><img alt=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Cấu hình\" src=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-4.jpg\" title=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Cấu hình\" /></a></p>\r\n\r\n<p>Ổ cứng&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-de-ban-ssd-256-gb\" target=\"_blank\" title=\"Xem thêm máy tính có SSD 256 GB đang bán tại thegioidiong.com\">SSD 256 GB</a><strong>&nbsp;PCIe/NVMe</strong>&nbsp;cung cấp kh&ocirc;ng gian lưu trữ vừa đủ để người d&ugrave;ng tải c&aacute;c dữ liệu quan trọng về m&aacute;y hay những phần mềm c&oacute; dung lượng nhẹ, đồng thời r&uacute;t ngắn thời gian đăng nhập m&aacute;y, khởi động ứng dụng v&agrave; gi&uacute;p thiết bị tiết kiệm nguồn năng lượng đ&aacute;ng kể.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-5.jpg\" onclick=\"return false;\"><img alt=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - SSD\" src=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-5.jpg\" title=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - SSD\" /></a></p>\r\n\r\n<h3><strong>Hiển thị h&igrave;nh ảnh ch&acirc;n thực tr&ecirc;n m&agrave;n h&igrave;nh lớn sắc n&eacute;t</strong></h3>\r\n\r\n<p>Mang đến những trải nghiệm đặc sắc với khung h&igrave;nh sắc n&eacute;t đến từng chi tiết phim hay trong bối cảnh game tr&ecirc;n kh&ocirc;ng gian hiển thị rộng lớn với k&iacute;ch thước<a href=\"https://www.thegioididong.com/may-tinh-de-ban-23-8-inch\" target=\"_blank\" title=\"Xem thêm các mẫu máy tính để bàn có kích thước màn hình 23.8 inch hiện đang kinh doanh tại thegioididong.com\">&nbsp;m&agrave;n h&igrave;nh 23.8 inch</a>&nbsp;c&ugrave;ng độ ph&acirc;n giải<strong>&nbsp;Full HD (1920 x 1080)</strong>, đảm bảo chất lượng h&igrave;nh ảnh được nguy&ecirc;n vẹn d&ugrave; bạn nh&igrave;n trực diện hay nh&igrave;n nghi&ecirc;ng với g&oacute;c rộng<strong>&nbsp;178 độ</strong>&nbsp;nhờ v&agrave;o&nbsp;<strong>tấm nền IPS</strong>&nbsp;hiện đại.</p>\r\n\r\n<p>Độ s&aacute;ng&nbsp;<strong>250 nits</strong>&nbsp;đảm bảo cung cấp đủ lượng &aacute;nh s&aacute;ng cần thiết để bạn l&agrave;m tốt c&aacute;c c&ocirc;ng việc thường ng&agrave;y hay giải tr&iacute; nhẹ nh&agrave;ng với những mảng m&agrave;u sắc tươi mới. B&ecirc;n cạnh đ&oacute;, m&aacute;y c&ograve;n trang bị th&ecirc;m m&agrave;n h&igrave;nh chống ch&oacute;i&nbsp;<strong>Anti Glare</strong>&nbsp;bảo vệ tối đa thị gi&aacute;c người xem, giảm thiểu hiện tượng bị ch&oacute;i ở những nơi c&oacute; cường độ &aacute;nh s&aacute;ng mạnh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-8.jpg\" onclick=\"return false;\"><img alt=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-8.jpg\" title=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Màn hình\" /></a></p>\r\n\r\n<p>Trọn vẹn khoảnh khắc giải tr&iacute; với chất &acirc;m trong trẻo nhờ c&ocirc;ng nghệ&nbsp;<strong>High Definition (HD) Audio&nbsp;</strong>cho<strong>&nbsp;</strong>ch&acirc;n thực đến từng chi tiết, khả năng lọc khử tiếng ồn tốt c&ugrave;ng độ khuếch đại cao lan tỏa khắp mọi nơi trong căn ph&ograve;ng, l&ocirc;i cuốn bạn v&agrave;o những thước phim hấp dẫn hay những bản nhạc du dương như tr&ecirc;n c&aacute;c s&acirc;n khấu chuy&ecirc;n nghiệp.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-9.jpg\" onclick=\"return false;\"><img alt=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Âm thanh\" src=\"https://cdn.tgdd.vn/Products/Images/5698/252972/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn-9.jpg\" title=\"Lenovo IdeaCentre AIO 3 24ITL6 i5 1135G7 (F0G0009AVN) - Âm thanh\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/may-tinh-de-ban/lenovo-ideacentre-aio-3-24itl6-i5-f0g0009avn\" target=\"_blank\" title=\"Lenovo IdeaCentre AIO 3 24ITL6\">Lenovo IdeaCentre AIO 3 24ITL6</a>&nbsp;với phong c&aacute;ch thiết kế trẻ trung, năng động c&ugrave;ng những th&ocirc;ng số kỹ thuật ổn định, sẽ l&agrave; một sự lựa chọn th&iacute;ch hợp cho người d&ugrave;ng nếu muốn sở hữu một chiếc m&aacute;y t&iacute;nh để b&agrave;n đ&aacute;p ứng cho c&aacute;c t&aacute;c vụ văn ph&ograve;ng của m&igrave;nh.</p>\r\n', 0),
(26, 7, 11, 2, 8, 4, 'iPhone 13 Pro Max 128GB', 30290000, 334, '5ec042a393 . ă-removebg-preview.png', '5ec042a393 . 1.jpg', '<h3><strong><a href=\"https://www.thegioididong.com/dtdd/iphone-13-pro-max\">Điện thoại&nbsp;iPhone 13 Pro Max 128 GB</a>&nbsp;- si&ecirc;u phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone iPhone chính hãng\">Apple</a>. M&aacute;y c&oacute; thiết kế kh&ocirc;ng mấy đột ph&aacute; khi so với người tiền nhiệm, b&ecirc;n trong đ&acirc;y vẫn l&agrave; một sản phẩm c&oacute; m&agrave;n h&igrave;nh si&ecirc;u đẹp, tần số qu&eacute;t được n&acirc;ng cấp l&ecirc;n 120 Hz mượt m&agrave;, cảm biến camera c&oacute; k&iacute;ch thước lớn hơn, c&ugrave;ng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn s&agrave;ng c&ugrave;ng bạn chinh phục mọi thử th&aacute;ch.</strong></h3>\r\n\r\n<h3><strong>Thiết kế đẳng cấp h&agrave;ng đầu</strong></h3>\r\n\r\n<p>iPhone mới kế thừa thiết kế đặc trưng từ&nbsp;iPhone 12 Pro Max khi sở hữu khung viền vu&ocirc;ng vức, mặt lưng k&iacute;nh c&ugrave;ng m&agrave;n h&igrave;nh tai thỏ tr&agrave;n viền nằm ở ph&iacute;a trước.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-3.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế vuông vức đặc trưng - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-3.jpg\" title=\"Thiết kế vuông vức đặc trưng - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>Với iPhone 13 Pro Max phần tai thỏ đ&atilde; được thu gọn lại 20% so với thế hệ trước, kh&ocirc;ng chỉ giải ph&oacute;ng nhiều kh&ocirc;ng gian hiển thị hơn m&agrave; c&ograve;n gi&uacute;p mặt trước chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại kinh doanh tại Thế Giới Di Động\">điện thoại</a>&nbsp;trở n&ecirc;n hấp dẫn hơn m&agrave; vẫn đảm bảo được hoạt động của c&aacute;c cảm biến.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-2.jpg\" onclick=\"return false;\"><img alt=\"Màn hình tai thỏ được tinh giản - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-2.jpg\" title=\"Màn hình tai thỏ được tinh giản - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>Điểm thay đổi dễ d&agrave;ng nhận biết tr&ecirc;n iPhone 13 Pro Max ch&iacute;nh l&agrave; k&iacute;ch thước của cảm biến camera sau được l&agrave;m to hơn v&agrave; để tăng độ nhận diện cho sản phẩm mới th&igrave; Apple cũng đ&atilde; bổ sung một t&ugrave;y chọn m&agrave;u sắc&nbsp;Sierra Blue (m&agrave;u xanh dương nhạt hơn so với Pacific Blue của iPhone 12 Pro Max).</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-9.jpg\" onclick=\"return false;\"><img alt=\"Sierra Blue trẻ trung, thanh lịch - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-9.jpg\" title=\"Sierra Blue trẻ trung, thanh lịch - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>M&aacute;y vẫn tiếp tục sử dụng khung viền th&eacute;p cao cấp cho khả năng chống trầy xước v&agrave; va đập một c&aacute;ch vượt trội, kết hợp với khả năng kh&aacute;ng bụi, nước&nbsp;chuẩn IP68.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tieu-chuan-chong-nuoc-ip68-tren-smartphone-la-gi-co-cong-1396848\" target=\"_blank\">Ti&ecirc;u chuẩn chống nước IP68 tr&ecirc;n smartphone l&agrave; g&igrave;? C&oacute; c&ocirc;ng dụng g&igrave;?</a></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-4.jpg\" onclick=\"return false;\"><img alt=\"Viền thép cao cấp - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-4.jpg\" title=\"Viền thép cao cấp - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh giải tr&iacute; si&ecirc;u mượt c&ugrave;ng tần số qu&eacute;t 120 Hz</strong></h3>\r\n\r\n<p>iPhone 13 Pro Max được trang bị m&agrave;n h&igrave;nh k&iacute;ch thước 6.7 inch c&ugrave;ng độ ph&acirc;n giải 1284 x 2778 Pixels, sử dụng tấm nền OLED c&ugrave;ng c&ocirc;ng nghệ Super Retina XDR cho khả năng tiết kiệm năng lượng vượt trội nhưng vẫn đảm bảo hiển thị sắc n&eacute;t sống động ch&acirc;n thực.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-5.jpg\" onclick=\"return false;\"><img alt=\"Màn hình kích thước 6.7 inch - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-5.jpg\" title=\"Màn hình kích thước 6.7 inch - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>iPhone Pro Max năm nay đ&atilde; được n&acirc;ng cấp l&ecirc;n tần số qu&eacute;t 120 Hz, mọi thao t&aacute;c chuyển cảnh khi lướt ng&oacute;n tay tr&ecirc;n m&agrave;n h&igrave;nh trở n&ecirc;n mượt m&agrave; hơn đồng thời hiệu ứng thị gi&aacute;c khi ch&uacute;ng ta chơi game hoặc xem video cũng cực kỳ m&atilde;n nh&atilde;n.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-6.jpg\" onclick=\"return false;\"><img alt=\"Tốc độ làm tươi màn hình - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-6.jpg\" title=\"Tốc độ làm tươi màn hình - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>C&ugrave;ng c&ocirc;ng nghệ ProMotion th&ocirc;ng minh c&oacute; thể thay đổi tần số qu&eacute;t từ 10 đến 120 lần mỗi gi&acirc;y t&ugrave;y thuộc v&agrave;o ứng dụng, thao t&aacute;c bạn đang sử dụng, nhằm tối ưu thời lượng sử dụng pin v&agrave; trải nghiệm của bạn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-1.jpg\" onclick=\"return false;\"><img alt=\"Công nghệ ProMotion thông minh - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-1.jpg\" title=\"Công nghệ ProMotion thông minh - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>Nếu bạn d&ugrave;ng iPhone 13 Pro Max để chơi game, tần số qu&eacute;t 120 Hz kết hợp hiệu suất đồ họa tuyệt vời của GPU sẽ khiến m&aacute;y trở n&ecirc;n v&ocirc; c&ugrave;ng ho&agrave;n hảo khi trải nghiệm.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-8.jpg\" onclick=\"return false;\"><img alt=\"Mang đến trải nghiệm mượt mà - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-8.jpg\" title=\"Mang đến trải nghiệm mượt mà - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra m&aacute;y cũng hỗ trợ c&ocirc;ng nghệ True Tone, dải m&agrave;u rộng chuẩn điện ảnh P3 sẽ cho mọi trải nghiệm của bạn tr&ecirc;n m&aacute;y trở n&ecirc;n ấn tượng hơn bao giờ hết.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-20.jpg\" onclick=\"return false;\"><img alt=\"Dải màu chuẩn điện ảnh P3 - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-20.jpg\" title=\"Dải màu chuẩn điện ảnh P3 - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<h3><strong>Cụm camera được n&acirc;ng cấp to&agrave;n diện</strong></h3>\r\n\r\n<p>iPhone 13 Pro Max vẫn sẽ c&oacute; bộ camera 3 ống k&iacute;nh xếp xen kẽ th&agrave;nh một cụm vu&ocirc;ng, đặt ở g&oacute;c tr&ecirc;n b&ecirc;n tr&aacute;i của lưng m&aacute;y gồm camera telephoto, camera g&oacute;c si&ecirc;u rộng&nbsp;v&agrave; camera ch&iacute;nh g&oacute;c rộng với khẩu độ f/1.5 si&ecirc;u lớn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-21.jpg\" onclick=\"return false;\"><img alt=\"Cụm camera chuyên nghiệp - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-21.jpg\" title=\"Cụm camera chuyên nghiệp - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>Camera g&oacute;c si&ecirc;u rộng cũng được n&acirc;ng cấp với khẩu độ f/1.8, cảm biến nhanh hơn, mang tới những bức ảnh g&oacute;c si&ecirc;u rộng tự nhi&ecirc;n v&agrave; ch&acirc;n thực v&agrave; c&ograve;n tăng cường c&oacute; khả năng lấy n&eacute;t ở khoảng c&aacute;ch chỉ 2 cm, mang đến t&iacute;nh năng chụp ảnh quay phim macro đầy th&uacute; vị.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-10.jpg\" onclick=\"return false;\"><img alt=\"Lấy nét ở khoảng cách 2cm - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-10.jpg\" title=\"Lấy nét ở khoảng cách 2cm - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>Camera tele tr&ecirc;n iPhone 13 Pro Max c&oacute; thể zoom quang học 3x, ph&oacute;ng to h&igrave;nh ảnh v&agrave; video gấp 3 lần nhưng vẫn giữ nguy&ecirc;n chất lượng, hỗ trợ chụp ảnh ch&acirc;n dung&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-xoa-phong\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone camera chụp hình xoá phông\">x&oacute;a ph&ocirc;ng</a>, t&iacute;ch hợp sẵn rất nhiều bộ lọc m&agrave;u tự nhi&ecirc;n gi&uacute;p c&oacute; được bức ảnh đ&uacute;ng như &yacute; muốn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-11.jpg\" onclick=\"return false;\"><img alt=\"Khả năng zoom quang học - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-11.jpg\" title=\"Khả năng zoom quang học - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, cảm biến LiDAR vẫn sẽ hiện diện tr&ecirc;n iPhone 13 Pro Max nhằm mang đến trải nghiệm thực tế tăng cường (AR) tốt nhất cho tất cả người d&ugrave;ng cũng như hỗ trợ cho cụm camera lấy n&eacute;t trong m&ocirc;i trường &aacute;nh s&aacute;ng yếu.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-12.jpg\" onclick=\"return false;\"><img alt=\"Lấy nét trong môi trường anh sáng yếu - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-12.jpg\" title=\"Lấy nét trong môi trường anh sáng yếu - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>Apple c&ograve;n tăng cường khả năng nhiếp ảnh tr&ecirc;n iPhone 13 Pro Max với chế độ quay phim chuẩn điện ảnh Cinematic&nbsp;gi&uacute;p người d&ugrave;ng c&oacute; thể dễ d&agrave;ng lấy n&eacute;t v&agrave;o chủ thể cả trong v&agrave; sau khi quay, đồng thời l&agrave;m mờ hậu cảnh v&agrave; những nh&acirc;n vật kh&aacute;c trong khung h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-13.jpg\" onclick=\"return false;\"><img alt=\"Chế độ quay Cinematic - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-13.jpg\" title=\"Chế độ quay Cinematic - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>Đ&acirc;y cũng l&agrave; chiếc điện thoại th&ocirc;ng minh đầu ti&ecirc;n cung cấp quy tr&igrave;nh l&agrave;m việc chuy&ecirc;n nghiệp &quot;end-to-end&quot;&nbsp;cho ph&eacute;p bạn ghi v&agrave; chỉnh sửa video ở định dạng n&eacute;n ProRes hoặc Dolby Vision với nhiều thiết lập chuy&ecirc;n s&acirc;u&nbsp;tạo&nbsp;gi&uacute;p r&uacute;t ngắn đ&aacute;ng kể qu&aacute; tr&igrave;nh hậu kỳ tạo n&ecirc;n những thước phim chất lượng đ&aacute;ng kinh ngạc ngay tr&ecirc;n ch&iacute;nh chiếc điện thoại của m&igrave;nh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-14.jpg\" onclick=\"return false;\"><img alt=\"Khả năng quay video chuyên nghiệp - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-14.jpg\" title=\"Khả năng quay video chuyên nghiệp - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<h3><strong>Hiệu năng đầy hứa hẹn với Apple A15 Bionic&nbsp;</strong></h3>\r\n\r\n<p>iPhone 13 Pro Max sẽ được trang bị bộ vi xử l&yacute; Apple A15 Bionic mới nhất của h&atilde;ng, được sản xuất tr&ecirc;n tiến tr&igrave;nh 5 nm, đảm bảo mang lại hiệu năng vận h&agrave;nh ấn tượng m&agrave; vẫn tiết kiệm điện tốt nhất c&ugrave;ng khả năng hỗ trợ mạng 5G tốc độ si&ecirc;u cao.</p>\r\n\r\n<p>Theo Apple c&ocirc;ng bố, A15 Bionic l&agrave; chipset nhanh nhất trong thế giới smartphone (9/2021), c&oacute;&nbsp;tốc độ nhanh hơn 50% so với c&aacute;c chip kh&aacute;c tr&ecirc;n thị trường, c&oacute; thể thực hiện 15.8 ngh&igrave;n tỷ ph&eacute;p t&iacute;nh mỗi gi&acirc;y, gi&uacute;p hiệu năng CPU nhanh hơn bao giờ hết.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-15.jpg\" onclick=\"return false;\"><img alt=\"Vi xử lý Apple A15 Bionic - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-15.jpg\" title=\"Vi xử lý Apple A15 Bionic - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>M&aacute;y sở hữu bộ nhớ trong 128 GB, vừa đủ với nhu cầu sử dụng của một người d&ugrave;ng cơ bản, kh&ocirc;ng c&oacute; nhu cầu quay video qu&aacute; nhiều, ngo&agrave;i ra năm nay cũng c&oacute; th&ecirc;m phi&ecirc;n bản bộ nhớ trong l&ecirc;n đến 1TB, bạn c&oacute; thể c&acirc;n nhắc nếu c&oacute; nhu cầu lưu trữ cao.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-16.jpg\" onclick=\"return false;\"><img alt=\"Dung lượng bộ nhớ - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-16.jpg\" title=\"Dung lượng bộ nhớ - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, m&aacute;y c&ograve;n được t&iacute;ch hợp c&ocirc;ng nghệ Wi-Fi 6, chuẩn kết nối kh&ocirc;ng d&acirc;y mới với việc trang bị nhiều băng tần 5G, tương th&iacute;ch với nhiều nh&agrave; mạng ở c&aacute;c quốc gia kh&aacute;c nhau, iPhone 13 Pro Max lu&ocirc;n cho tốc độ mạng tối đa, cho trải nghiệm xem phim 4K mượt m&agrave;, tải tệp tin trong chớp mắt, chơi game online kh&ocirc;ng độ trễ ở bất cứ đ&acirc;u.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-17.jpg\" onclick=\"return false;\"><img alt=\"Kết nối nhanh chóng - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-17.jpg\" title=\"Kết nối nhanh chóng - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<h3><strong>Bước nhảy vọt về thời lượng pin</strong></h3>\r\n\r\n<p>iPhone Pro Max đ&aacute;nh dấu bước ngoặt mới trong thời lượng pin sử dụng. Với vi&ecirc;n pin dung lượng pin lớn kết hợp c&ugrave;ng m&agrave;n h&igrave;nh mới v&agrave; bộ vi xử l&yacute; Apple A15 Bionic tiết kiệm điện, gi&uacute;p iPhone 13 Pro Max trở th&agrave;nh chiếc iPhone c&oacute; thời lượng pin tốt nhất từ trước đến nay, d&agrave;i hơn 2.5 giờ so với người tiền nhiệm.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-18.jpg\" onclick=\"return false;\"><img alt=\"Chip A15 giúp tối ưu hóa năng lượng - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-18.jpg\" title=\"Chip A15 giúp tối ưu hóa năng lượng - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>Đ&aacute;ng tiếc l&agrave; dung lượng pin của c&aacute;c mẫu iPhone mới được cải thiện nhưng tốc độ sạc nhanh của ch&uacute;ng vẫn chỉ dừng ở mức 20 W qua kết nối c&oacute; d&acirc;y v&agrave; sạc qua MagSafe ở mức tối đa 15 W hoặc c&oacute; thể qua bộ sạc kh&ocirc;ng d&acirc;y dựa tr&ecirc;n Qi với c&ocirc;ng suất 7.5 W.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-19.jpg\" onclick=\"return false;\"><img alt=\"Sạc MagSafe - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-19.jpg\" title=\"Sạc MagSafe - iPhone 13 Pro Max 128GB\" /></a></p>\r\n\r\n<p>Apple đ&atilde; kh&ocirc;ng ngừng cải tiến đem đến cho người d&ugrave;ng sản phẩm tốt nhất, iPhone 13 Pro Max 128GB vẫn giữ được c&aacute;c điểm nổi bật của người tiền nhiệm, nổi bật với cải tiến về cấu h&igrave;nh, thời lượng pin cũng như camera v&agrave; nhiều điều c&ograve;n chờ bạn kh&aacute;m ph&aacute;.</p>\r\n', 2),
(27, 7, 11, 1, 8, 4, 'iPhone 13 Pro 128GB', 27590000, 312, '5735f9413d . 1-removebg-preview.png', '5735f9413d . 2.jpg', '<h3><strong>Mỗi lần ra mắt phi&ecirc;n bản mới l&agrave; mỗi lần iPhone chiếm s&oacute;ng tr&ecirc;n khắp c&aacute;c mặt trận v&agrave; lần n&agrave;y c&aacute;i t&ecirc;n khiến v&ocirc; số người &quot;sục s&ocirc;i&quot; l&agrave;&nbsp;iPhone 13 Pro, chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Điện thoại thông minh đang bán tại Thegioididong.com\">điện thoại th&ocirc;ng minh</a>&nbsp;vẫn giữ nguy&ecirc;n thiết kế cao cấp, cụm 3 camera được n&acirc;ng cấp, cấu h&igrave;nh mạnh mẽ c&ugrave;ng thời lượng pin lớn ấn tượng.&nbsp;</strong></h3>\r\n\r\n<h3><strong>Thiết kế đặc trưng với m&agrave;u sắc thời thượng</strong></h3>\r\n\r\n<p>iPhone 13 Pro kh&ocirc;ng c&oacute; nhiều sự thay đổi về thiết kế, khi m&aacute;y vẫn sở hữu kiểu d&aacute;ng tương tự như&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-12-pro\">điện thoại&nbsp;iPhone 12 Pro</a>&nbsp;với c&aacute;c cạnh viền vu&ocirc;ng vắn v&agrave; hai mặt k&iacute;nh cường lực cao cấp. Sở hữu 4 phi&ecirc;n bản m&agrave;u gồm xanh dương, bạc, v&agrave;ng đồng v&agrave; x&aacute;m cho bạn t&ugrave;y chọn theo sở th&iacute;ch của m&igrave;nh.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-1.jpg\" onclick=\"return false;\"><img alt=\"Sở hữu 4 phiên bản màu sắc trẻ trung - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-1.jpg\" title=\"Sở hữu 4 phiên bản màu sắc trẻ trung - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>M&aacute;y đạt ti&ecirc;u chuẩn&nbsp;kh&aacute;ng nước và bụi&nbsp;IP68 c&oacute; khả năng chống lại một số hạt bụi, v&agrave; được bảo vệ khi rơi xuống nước ở độ s&acirc;u đến 6 m&eacute;t trong 30 ph&uacute;t&nbsp;theo chuẩn IEC 60529, thoải m&aacute;i nhắn tin khi lỡ ra ngo&agrave;i gặp mưa, chụp ảnh tự tin khi đi hồ bơi, b&atilde;i biển,...</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-2.jpg\" onclick=\"return false;\"><img alt=\"Khả năng kháng bụi, nước - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-2.jpg\" title=\"Khả năng kháng bụi, nước - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<h3><strong>N&acirc;ng cấp m&agrave;n h&igrave;nh với tần số qu&eacute;t 120 Hz</strong></h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd/iphone-13-pro\" target=\"_blank\">Điện thoại iPhone 13 Pro</a>&nbsp;vẫn được trang bị m&agrave;n h&igrave;nh k&iacute;ch thước 6.1 inch, với phần tai thỏ được l&agrave;m nhỏ hơn gi&uacute;p hiển thị th&ecirc;m nhiều th&ocirc;ng tin cũng như tăng cường cảm gi&aacute;c trải nghiệm. Bề mặt c&oacute; lớp phủ oleophobic chống b&aacute;m v&acirc;n tay, giữ cho m&agrave;n h&igrave;nh lu&ocirc;n được sạch mới.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-man-hinh.jpg\" onclick=\"return false;\"><img alt=\"Trang bị màn hình 6.1 inch - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-man-hinh.jpg\" title=\"Trang bị màn hình 6.1 inch - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>iPhone 13 Pro đ&atilde; được n&acirc;ng cấp l&ecirc;n tần số qu&eacute;t 120 Hz, với ProMotion c&oacute; thể l&agrave;m mới từ 10 đến 120 khung h&igrave;nh/gi&acirc;y. Với tần số qu&eacute;t cao, mọi thao t&aacute;c chuyển cảnh khi lướt ng&oacute;n tay tr&ecirc;n m&agrave;n h&igrave;nh trở n&ecirc;n mượt m&agrave; hơn đồng thời hiệu ứng thị gi&aacute;c khi ch&uacute;ng ta d&ugrave;ng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-choi-game\" target=\"_blank\" title=\"Tham khảo các mẫu điện thoại chơi game tại Thế Giới Di Động\">điện thoại chơi game</a>&nbsp;hoặc xem video cũng cực kỳ m&atilde;n nh&atilde;n.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-5.jpg\" onclick=\"return false;\"><img alt=\"Chuyển động mượt mà nhờ tần số 120 Hz - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-5.jpg\" title=\"Chuyển động mượt mà nhờ tần số 120 Hz - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>Tốc độ l&agrave;m tươi tự động tăng l&ecirc;n để hiển thị hiệu suất đồ họa, tự động giảm xuống khi kh&ocirc;ng sử dụng để tiết kiệm năng lượng v&agrave; tốc độ l&agrave;m mới cũng được tự tinh chỉnh linh động để ph&ugrave; hợp hơn tốc độ lướt của ng&oacute;n tay bạn.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-4.jpg\" onclick=\"return false;\"><img alt=\"Tốc độ làm tươi được tự động hóa - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-4.jpg\" title=\"Tốc độ làm tươi được tự động hóa - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>Sử dụng tấm nền OLED c&oacute; số điểm ảnh l&ecirc;n đến 1170 x 2532 Pixels, độ s&aacute;ng điển h&igrave;nh 1000 nits, khi hiển thị video HDR 1200 nits, tăng l&ecirc;n 25% khi đặt dưới &aacute;nh mặt trời, sắc đen hiển thị s&acirc;u, sắc s&aacute;ng tươi tắn, khung h&igrave;nh sinh động như thực.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-6.jpg\" onclick=\"return false;\"><img alt=\"Độ sáng đạt 1200 nits - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-6.jpg\" title=\"Độ sáng đạt 1200 nits - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<h3><strong>Quay chụp đỉnh cao với camera Pro</strong></h3>\r\n\r\n<p>iPhone 13 Pro có b&ocirc;̣ camera 3 &ocirc;́ng kính 12 MP x&ecirc;́p xen kẽ thành m&ocirc;̣t cụm vu&ocirc;ng, đặt ở góc tr&ecirc;n b&ecirc;n trái của lưng máy gồm camera tele, camera góc si&ecirc;u r&ocirc;̣ng (Ultra&nbsp;Wide) khẩu độ f/1.8, g&oacute;c nh&igrave;n đến 120 độ v&agrave; camera ch&iacute;nh g&oacute;c rộng (Wide) với khẩu độ f/1.5.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-7.jpg\" onclick=\"return false;\"><img alt=\"Bộ ba ống kính chuyên nghiệp - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-7.jpg\" title=\"Bộ ba ống kính chuyên nghiệp - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>Camera Ultra Wide được l&agrave;m mới c&oacute; thể lấy n&eacute;t tự động trong khoảng c&aacute;ch 2 cm, gi&uacute;p ph&oacute;ng to h&igrave;nh ảnh của giọt sương, l&ocirc;ng chim, c&aacute;t v&agrave;ng,... tạo n&ecirc;n những tuyệt t&aacute;c nghệ thuật chỉ bằng một thao t&aacute;c chụp đơn giản. Camera n&agrave;y cũng cho khả năng quay cảnh chuyển động tua nhanh thời gian hoặc chuyển động chậm linh hoạt để bạn l&agrave;m video giải tr&iacute; cực đẹp.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-8.jpg\" onclick=\"return false;\"><img alt=\"Camera Ultra Wide lấy nét cực ấn tượng - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-8.jpg\" title=\"Camera Ultra Wide lấy nét cực ấn tượng - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>Apple gọi iPhone 13 Pro l&agrave; thiết bị được tạo ra cho &aacute;nh s&aacute;ng yếu, bởi hệ thống camera được hỗ trợ chế độ ban đ&ecirc;m Night Mode, trang bị&nbsp;m&aacute;y qu&eacute;t LiDAR (khả dụng cho chế độ chụp ch&acirc;n dung ban đ&ecirc;m), camera Wide n&acirc;ng cao độ s&aacute;ng đến 2.2 lần, camera Ultra Wide tăng 92% độ s&aacute;ng cho ph&eacute;p quay chụp lại c&aacute;c h&igrave;nh ảnh, thước phim ban đ&ecirc;m cực kỳ chi tiết, sắc n&eacute;t.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-9.jpg\" onclick=\"return false;\"><img alt=\"Chế độ đêm Night Mode - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-9.jpg\" title=\"Chế độ đêm Night Mode - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>Hệ thống camera zoom quang học 6x, ri&ecirc;ng camera&nbsp;telephoto c&oacute; thể zoom quang 3x rất tuyệt khi chụp ảnh v&agrave; quay video ở xa. Kết hợp nhiều t&ugrave;y chọn hiệu ứng bokeh v&agrave; c&aacute;c hiệu ứng &aacute;nh s&aacute;ng chất lượng để bạn tạo n&ecirc;n những bức ảnh lung linh như nhiếp ảnh gia chuy&ecirc;n nghiệp.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-10.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp trên camera - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-10.jpg\" title=\"Ảnh chụp trên camera - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>Một chế độ nổi bật kh&aacute;c hỗ trợ tr&ecirc;n camera Pro n&agrave;y l&agrave; chế độ&nbsp;điện ảnh Cinematic cho ph&eacute;p quay&nbsp;với độ s&acirc;u trường ảnh n&ocirc;ng, tự động th&ecirc;m c&aacute;c chuyển đổi lấy n&eacute;t giữa c&aacute;c đối tượng, đo&aacute;n trước chủ thể mới v&agrave;o khung h&igrave;nh v&agrave; đưa họ v&agrave;o ti&ecirc;u điểm, đổi ti&ecirc;u điểm, chỉnh hiệu ứng&nbsp;bokeh dễ d&agrave;ng kể cả sau khi quay.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-11.jpg\" onclick=\"return false;\"><img alt=\"Chế độ điện ảnh độc đáo - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-11.jpg\" title=\"Chế độ điện ảnh độc đáo - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>C&oacute; chế độ chụp phong cảnh Photographic Styles dễ d&agrave;ng điều chỉnh độ ấm, t&ocirc;ng m&agrave;u ph&ugrave; hợp với &yacute; tưởng chụp của bạn, tuy vậy kh&aacute;c với c&aacute;c bộ lọc th&ocirc;ng thường, với chế độ n&agrave;y c&aacute;c chi tiết như bầu trời, m&agrave;u da sẽ được giữ lại độ ch&acirc;n thật, tự nhi&ecirc;n nhất c&oacute; thể.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-12.jpg\" onclick=\"return false;\"><img alt=\"Chế độ chụp phong cảnh Photographic Styles - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-12.jpg\" title=\"Chế độ chụp phong cảnh Photographic Styles - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>Ở mặt trước điện thoại c&oacute; camera TrueDepth độ ph&acirc;n giải&nbsp;12 MP cho bạn tự selfie tuyệt đẹp, đi k&egrave;m nhiều chế độ chụp tiện &iacute;ch như chế độ ch&acirc;n dung t&iacute;ch hợp hiệu ứng bokeh n&acirc;ng cao v&agrave; kiểm so&aacute;t độ s&acirc;u&nbsp;mạnh mẽ, th&ecirc;m Animoji v&agrave; Memoji, chế độ Night Mode,&nbsp;Burst,&nbsp;Cinematic,...</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-13.jpg\" onclick=\"return false;\"><img alt=\"Camera TrueDepth - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-13.jpg\" title=\"Camera TrueDepth - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>Hơn nữa, camera TrueDepth v&agrave; chip&nbsp;A15 Bionic hỗ trợ Face ID để x&aacute;c minh khu&ocirc;n mặt, gi&uacute;p mở m&aacute;y nhanh v&agrave; an to&agrave;n hơn.&nbsp;</p>\r\n\r\n<p>Cả camera trước v&agrave; sau đều quay được video&nbsp;HDR hỗ trợ Dolby Vision đạt chuẩn chất lượng l&ecirc;n đến 4K với tốc độ khung h&igrave;nh 60&nbsp;fps, quay video&nbsp;ProRes l&ecirc;n đến 1080p ở tốc độ 30&nbsp;fps,&nbsp;c&ugrave;ng nhiều chế độ quay kh&aacute;c gi&uacute;p bạn c&oacute; nhiều sự thay đổi kh&aacute;c nhau khi quay.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-14.jpg\" onclick=\"return false;\"><img alt=\"Hỗ trợ quay video đạt chất lượng 4K - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-14.jpg\" title=\"Hỗ trợ quay video đạt chất lượng 4K - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<h3><strong>Hiệu năng đột ph&aacute; với Apple A15 Bionic</strong></h3>\r\n\r\n<p>iPhone 13 Pro được trang bị bộ vi xử l&yacute; Apple A15 Bionic, sản xuất tr&ecirc;n tiến tr&igrave;nh 5 nm cải tiến, theo Apple c&ocirc;ng bố th&igrave; đ&acirc;y&nbsp;l&agrave; chipset nhanh nhất trong thế giới smartphone tại thời điểm 09/2021.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-15.jpg\" onclick=\"return false;\"><img alt=\"Vi xử lý Apple A15 Bionic - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-15.jpg\" title=\"Vi xử lý Apple A15 Bionic - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>T&iacute;ch hợp chip đồ họa GPU 5 l&otilde;i hiệu suất tăng l&ecirc;n 50%,&nbsp;CPU đ&aacute;p ứng đa dạng t&aacute;c vụ, n&acirc;ng cao tuổi thọ pin. Đặc biệt, c&ocirc;ng nghệ tr&iacute; tuệ nh&acirc;n tạo Neural Engine tăng tốc c&aacute;c t&aacute;c vụ m&aacute;y học, thực hiện được đến 15.8 ngh&igrave;n tỷ hoạt động mỗi gi&acirc;y, cho qu&aacute; tr&igrave;nh sử dụng thiết bị mượt m&agrave;, ổn định.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-16.jpg\" onclick=\"return false;\"><img alt=\"Đồ họa mượt mà - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-16.jpg\" title=\"Đồ họa mượt mà - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>M&aacute;y sở hữu con&nbsp;RAM 6 GB, bộ nhớ trong 128 GB, vừa đủ với nhu cầu sử dụng của một người d&ugrave;ng cơ bản kh&ocirc;ng c&oacute; nhu cầu quay video qu&aacute; nhiều, m&aacute;y cũng c&oacute; th&ecirc;m phi&ecirc;n bản&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-13-pro-1tb\">điện thoại&nbsp;iPhone 13 Pro 1 TB</a>, bạn c&oacute; thể c&acirc;n nhắc nếu c&oacute; nhu cầu lưu trữ cao.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-17.jpg\" onclick=\"return false;\"><img alt=\"Dung lượng bộ nhớ - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-17.jpg\" title=\"Dung lượng bộ nhớ - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, m&aacute;y c&ograve;n được hỗ trợ mạng di động 5G&nbsp;chất lượng cao, c&oacute; khả năng phản hồi tức th&igrave;, việc tải xem, xem phim 4K,... sẽ v&ocirc; c&ugrave;ng nhanh ch&oacute;ng, đưa trải nghiệm internet của người d&ugrave;ng l&ecirc;n tầm cao mới.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-2021-pro-01.jpg\" onclick=\"return false;\"><img alt=\"Hỗ trợ kết nối 5G - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-2021-pro-01.jpg\" title=\"Hỗ trợ kết nối 5G - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>Thiết bị được c&agrave;i đặt nền tảng iOS 15 cho bạn vừa giao tiếp qua FaceTime vừa chia sẻ b&agrave;i h&aacute;t, t&agrave;i liệu với mọi người tiện lợi, dễ d&agrave;ng tương t&aacute;c với văn bản trong h&igrave;nh ảnh để gửi email, nhận chỉ đường, thực hiện cuộc gọi,...&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-18.jpg\" onclick=\"return false;\"><img alt=\"Nền tảng IOS 15 - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-18.jpg\" title=\"Nền tảng IOS 15 - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<h3><strong>N&acirc;ng cấp thời lượng pin</strong></h3>\r\n\r\n<p>iPhone 13 Pro sẽ c&oacute; thời lượng pin sử dụng tốt hơn 1.5 tiếng khi so với iPhone 12 Pro, m&aacute;y c&oacute; thể ph&aacute;t video li&ecirc;n tục trong 22 tiếng, nghe nhạc trong 75 tiếng v&agrave; hỗ trợ sạc nhanh 20 W qua c&aacute;p.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-19.jpg\" onclick=\"return false;\"><img alt=\"Tối ưu hóa năng lượng - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-19.jpg\" title=\"Tối ưu hóa năng lượng - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p style=\"text-align:center\">Lưu &yacute;: Củ sạc 20 W sẽ kh&ocirc;ng đi k&egrave;m trong hộp khi mua m&aacute;y.</p>\r\n\r\n<p>Ngo&agrave;i ra c&ograve;n hỗ trợ sạc kh&ocirc;ng d&acirc;y chuẩn Qi 7.5 W, sạc kh&ocirc;ng d&acirc;y&nbsp;MagSafe 15 W bạn c&oacute; thể lựa chọn phương ph&aacute;p sạc ph&ugrave; hợp v&agrave; tiện lợi nhất trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-20.jpg\" onclick=\"return false;\"><img alt=\"Sạc không dây với MagSafe - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-20.jpg\" title=\"Sạc không dây với MagSafe - iPhone 13 Pro 128GB\" /></a></p>\r\n\r\n<p>Dung lượng pin tr&ecirc;n iPhone lu&ocirc;n thấp hơn khi so với c&aacute;c d&ograve;ng m&aacute;y Android nhưng việc trang bị chipset mới c&ugrave;ng sự tối ưu ho&aacute; của hệ điều h&agrave;nh sẽ đảm bảo thời lượng sử dụng kh&ocirc;ng hề thua k&eacute;m tr&ecirc;n sản phẩm Android, thậm ch&iacute; c&ograve;n c&oacute; thể vượt trội hơn.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.topzone.vn/iphone/iphone-13-pro\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại TopZone.vn\">iPhone 13 Pro 128GB</a>&nbsp;với thiết kế cứng c&aacute;p, sang trọng c&ugrave;ng khả năng nhiếp ảnh ấn tượng, sẽ l&agrave; một sản phẩm phục vụ tốt c&aacute;c nhu cầu của bạn cũng như l&agrave; một m&oacute;n đồ thời trang hiện đại.</p>\r\n', 1);
INSERT INTO `sanpham` (`ma_sp`, `ma_th`, `ma_lsp`, `ma_ncc`, `ma_dm`, `ma_nv`, `ten_sp`, `gia_sp`, `soluong_sp`, `hinh_sp`, `hinhchitiet_sp`, `thongtin_sp`, `tinhtrang_sp`) VALUES
(28, 7, 11, 1, 8, 4, 'iPhone 12 64GB', 17990000, 28, '820813c665 . 1-removebg-preview.png', '820813c665 . 2.jpg', '<h3><strong>Trong những th&aacute;ng cuối năm 2020,&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\" title=\"Tham khảo sản phẩm chính hãng của Apple tại Thế Giới Di Động\">Apple</a>&nbsp;đ&atilde; ch&iacute;nh thức giới thiệu đến người d&ugrave;ng cũng như iFan thế hệ iPhone&nbsp;12&nbsp;series&nbsp;mới với h&agrave;ng loạt t&iacute;nh năng bứt ph&aacute;, thiết kế được lột x&aacute;c ho&agrave;n to&agrave;n, hiệu năng đầy mạnh mẽ v&agrave; một trong số đ&oacute; ch&iacute;nh l&agrave;&nbsp;<a href=\"https://www.topzone.vn/iphone/iphone-12\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại TopZone.vn\">iPhone 12 64GB</a>.</strong></h3>\r\n\r\n<h3><strong>Hiệu năng vượt xa mọi giới hạn</strong></h3>\r\n\r\n<p>Apple đ&atilde; trang bị con chip mới nhất của h&atilde;ng (t&iacute;nh đến 11/2020) cho iPhone 12 đ&oacute; l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a14-bionic-tren-iphone-12-va-ipad-1290695\" target=\"_blank\" title=\"Tìm hiểu chip A14 Bionic là gì?\">A14 Bionic</a>, được sản xuất tr&ecirc;n tiến tr&igrave;nh 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị tr&ecirc;n phi&ecirc;n bản tiền nhiệm&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-11\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 11 chính hãng tại Thế Giới Di Động\">iPhone 11</a>.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-144220-044259.jpg\" onclick=\"return false;\"><img alt=\"Chip A14 Bionic mạnh mẽ | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-144220-044259.jpg\" title=\"Chip A14 Bionic mạnh mẽ | iPhone 12\" /></a></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a14-bionic-tren-iphone-12-va-ipad-1290695\" target=\"_blank\" title=\"Tìm hiểu về chip Apple A14 Bionic trên iPhone 12 và iPad Air 2020\">T&igrave;m hiểu về chip Apple A14 Bionic tr&ecirc;n iPhone 12 v&agrave; iPad Air 2020</a></p>\r\n\r\n<p>Với CPU Apple A14 Bionic, bạn c&oacute; thể dễ d&agrave;ng trải nghiệm mọi tựa game với những pha chuyển cảnh mượt m&agrave; hay h&agrave;ng loạt hiệu ứng đồ họa tuyệt đẹp ở mức đồ họa cao m&agrave; kh&ocirc;ng lo t&igrave;nh trạng giật lag.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-18.jpg\" onclick=\"return false;\"><img alt=\"Chiến game siêu mượt, đồ họa tuyệt đẹp | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-18.jpg\" title=\"Chiến game siêu mượt, đồ họa tuyệt đẹp | iPhone 12\" /></a></p>\r\n\r\n<p>Chưa hết, Apple c&ograve;n g&acirc;y bất ngờ đến người d&ugrave;ng với hệ thống 5G lần đầu ti&ecirc;n được trang bị tr&ecirc;n những chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" title=\"Tham khảo iPhone kinh doanh tại thegioididong.com\">iPhone</a>, cho tốc độ truyền tải dữ liệu nhanh hơn, ổn định hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-20.jpg\" onclick=\"return false;\"><img alt=\"Kết nối 5G truyền tải dữ liệu nhanh chóng | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-20.jpg\" title=\"Kết nối 5G truyền tải dữ liệu nhanh chóng | iPhone 12\" /></a></p>\r\n\r\n<p>iPhone 12 sẽ chạy tr&ecirc;n hệ điều h&agrave;nh iOS 15 (12/2021)&nbsp;với nhiều t&iacute;nh năng hấp dẫn như hỗ trợ Widget cũng như những n&acirc;ng cấp tối ưu phần mềm đ&aacute;ng kể mang lại những trải nghiệm th&uacute; vị mới lạ đến người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-13.jpg\" onclick=\"return false;\"><img alt=\"Khám phá những tính năng mới hấp dẫn trên iOS 14 | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-13.jpg\" title=\"Khám phá những tính năng mới hấp dẫn trên iOS 14 | iPhone 12\" /></a></p>\r\n\r\n<h3><strong>Cụm camera kh&ocirc;ng ngừng cải tiến</strong></h3>\r\n\r\n<p>iPhone 12 được trang bị hệ thống camera k&eacute;p bao gồm&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" title=\"Tham khảo điện thoại có camera góc rộng tại Thế Giới Di Động\">camera g&oacute;c rộng</a>&nbsp;v&agrave; camera si&ecirc;u rộng c&oacute; c&ugrave;ng độ ph&acirc;n giải l&agrave; 12 MP, chế độ ban đ&ecirc;m (<a href=\"https://www.thegioididong.com/hoi-dap/che-do-chup-dem-night-mode-la-gi-907873\" target=\"_blank\" title=\"Tìm hiểu chế độ chụp đêm Night Mode là gì?\">Night Mode</a>) tr&ecirc;n bộ đ&ocirc;i camera n&agrave;y cũng đ&atilde; được n&acirc;ng cấp về phần cứng lẫn thuật to&aacute;n xử l&yacute;, khi chụp những bức ảnh thiếu s&aacute;ng bạn sẽ nhận được kết quả ấn tượng với m&agrave;u sắc, độ chi tiết r&otilde; n&eacute;t đ&aacute;ng kinh ngạc.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-040321-030344.jpg\" onclick=\"return false;\"><img alt=\"Cụm camera sau| iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-040321-030344.jpg\" title=\"Cụm camera sau| iPhone 12\" /></a></p>\r\n\r\n<p>Bạn c&oacute; thể kh&aacute;m ph&aacute; th&ecirc;m những t&iacute;nh năng của camera tr&ecirc;n iPhone 12 như chế độ smart HDR 3 gi&uacute;p c&acirc;n bằng yếu tố &aacute;nh s&aacute;ng trong ảnh, l&agrave;m nổi bật chi tiết đối tượng v&agrave; c&acirc;y cối trong khi vẫn giữ được m&agrave;u sắc phong ph&uacute; của bầu trời ngay cả v&agrave;o buổi trưa nắng gắt.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-9.jpg\" onclick=\"return false;\"><img alt=\"Chụp ảnh với tính năng smart HDR 3 sắc nét, chất lượng | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-9.jpg\" title=\"Chụp ảnh với tính năng smart HDR 3 sắc nét, chất lượng | iPhone 12\" /></a></p>\r\n\r\n<p>Chế độ chụp ch&acirc;n dung đ&atilde; tốt nay c&ograve;n tốt hơn trong việc l&agrave;m mờ hậu cảnh một c&aacute;ch nghệ thuật để dồn hết sự tập trung v&agrave;o đối tượng m&agrave; bạn muốn chụp.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-10.jpg\" onclick=\"return false;\"><img alt=\"Nổi bật chủ thể với tính năng chụp chân dung độc đáo | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-10.jpg\" title=\"Nổi bật chủ thể với tính năng chụp chân dung độc đáo | iPhone 12\" /></a></p>\r\n\r\n<p>Bạn sẽ dễ d&agrave;ng quay video 4K HDR với chuẩn điện ảnh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/dolby-vision-la-gi-cac-ung-dung-noi-bat-va-nhung-loai-1226284\" target=\"_blank\" title=\"Tìm hiểu Dolby Vision là gì?\">Dolby Vision</a>&nbsp;v&agrave; chỉnh sửa ngay tr&ecirc;n chiếc điện thoại của m&igrave;nh, bạn c&oacute; thể đưa video l&ecirc;n TV của bạn để thưởng thức thước phim sắc n&eacute;t chất lượng cao.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-11.jpg\" onclick=\"return false;\"><img alt=\"Quay video chất lượng ngay cả trong điều kiện ánh sáng yếu | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-11.jpg\" title=\"Quay video chất lượng ngay cả trong điều kiện ánh sáng yếu | iPhone 12\" /></a></p>\r\n\r\n<p>Sự kết hợp của 2 cảm biến chất lượng n&agrave;y đ&atilde; tạo n&ecirc;n một hệ thống camera chuy&ecirc;n nghiệp kh&ocirc;ng kh&aacute;c g&igrave; những chiếc m&aacute;y ảnh thực thụ, dễ d&agrave;ng đem lại những bức h&igrave;nh sắc n&eacute;t tuyệt đối, độ chi tiết cao v&agrave; đa dạng chế độ chụp cho người d&ugrave;ng linh hoạt sử dụng.</p>\r\n\r\n<h3><strong>Ghi dấu ấn về mặt thiết kế</strong></h3>\r\n\r\n<p>Về ngoại h&igrave;nh iPhone 12 c&oacute; thiết kế ho&agrave;i niệm với phần cạnh được l&agrave;m vu&ocirc;ng vức tương tự tr&ecirc;n mẫu iPhone 4 thay v&igrave; bo cong như iPhone 11.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-040321-030352.jpg\" onclick=\"return false;\"><img alt=\" iPhone 12 có thiết kế hoài niệm tương tự iPhone 4 series\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-040321-030352.jpg\" title=\" iPhone 12 có thiết kế hoài niệm tương tự iPhone 4 series\" /></a></p>\r\n\r\n<p>Ở mặt trước iPhone 12 phần tai thỏ được l&agrave;m nhỏ gọn hơn v&agrave; cũng l&agrave; nơi chứa cảm biến Face ID c&oacute; thể nhận diện khu&ocirc;n mặt một c&aacute;ch nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p>Apple c&ograve;n mang đến cho người một loạt gam m&agrave;u c&aacute; t&iacute;nh, độc đ&aacute;o tr&ecirc;n những chiếc iPhone của m&igrave;nh để người d&ugrave;ng c&oacute; sự lựa chọn ph&ugrave; hợp với những phong c&aacute;ch kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-17.jpg\" onclick=\"return false;\"><img alt=\"Sở hữu loạt gam màu cá tính | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-17.jpg\" title=\"Sở hữu loạt gam màu cá tính | iPhone 12\" /></a></p>\r\n\r\n<p>iPhone 12 được trang bị m&agrave;n h&igrave;nh Super Retina XDR OLED tr&agrave;n viền c&oacute; k&iacute;ch thước 6.1 inch, cho bạn kh&ocirc;ng gian trải nghiệm lớn cũng như những gi&acirc;y ph&uacute;t giải tr&iacute; hấp dẫn tr&ecirc;n một m&agrave;n ảnh v&ocirc; c&ugrave;ng chất lượng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-040421-030410.jpg\" onclick=\"return false;\"><img alt=\"Màn hình Super Retina XDR OLED 6.1 inch | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-040421-030410.jpg\" title=\"Màn hình Super Retina XDR OLED 6.1 inch | iPhone 12\" /></a></p>\r\n\r\n<p>M&aacute;y được chế t&aacute;c c&oacute; độ ho&agrave;n thiện cực cao với thiết kế nguy&ecirc;n khối, khung nh&ocirc;m v&agrave; mặt sau l&agrave; k&iacute;nh cường lực cao cấp to&aacute;t l&ecirc;n vẻ ngo&agrave;i sang chảnh cũng như mang lại độ hiệu quả an to&agrave;n cao mỗi khi sử dụng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-041521-031513.jpg\" onclick=\"return false;\"><img alt=\"Độ hoàn thiện cao, chắc chắn cho thiết bị | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-041521-031513.jpg\" title=\"Độ hoàn thiện cao, chắc chắn cho thiết bị | iPhone 12\" /></a></p>\r\n\r\n<p>Mặt trước của iPhone 12 được phủ ho&agrave;n to&agrave;n bởi lớp k&iacute;nh cường lực Ceramic Shield cứng c&aacute;p, được đ&aacute;nh gi&aacute; l&agrave; c&oacute; độ bền cao v&agrave; cứng c&aacute;p hơn hầu hết c&aacute;c loại mặt k&iacute;nh c&oacute; tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại chính hãng tại Thế Giới Di Động\">điện thoại th&ocirc;ng minh</a>&nbsp;kh&aacute;c c&oacute; mặt tr&ecirc;n thị trường.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-040321-030328.jpg\" onclick=\"return false;\"><img alt=\"Lớp kính cường lực Ceramic Shield | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-040321-030328.jpg\" title=\"Lớp kính cường lực Ceramic Shield | iPhone 12\" /></a></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/mat-kinh-ceramic-shield-tren-iphone-12-la-gi-co-xin-so-nhu-1298900\" target=\"_blank\" title=\"Mặt kính Ceramic Shield trên iPhone 12 là gì? Có xịn sò như quảng cáo?\">Mặt k&iacute;nh Ceramic Shield tr&ecirc;n iPhone 12 l&agrave; g&igrave;? C&oacute; xịn s&ograve; như quảng c&aacute;o?</a></p>\r\n\r\n<p>V&agrave; để cho thiết bị trở n&ecirc;n ho&agrave;n hảo hơn n&ecirc;n kh&ocirc;ng thể thiếu khả năng kh&aacute;ng nước, bụi chuẩn IP68 gi&uacute;p người d&ugrave;ng y&ecirc;n t&acirc;m sử dụng với những buổi đi chơi biển m&agrave; kh&ocirc;ng hề lo chiếc m&aacute;y bị v&ocirc; nước.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-2.jpg\" onclick=\"return false;\"><img alt=\"Kháng nước bụi chuẩn IP68 | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-2.jpg\" title=\"Kháng nước bụi chuẩn IP68 | iPhone 12\" /></a></p>\r\n\r\n<h3><strong>Trải nghiệm xuy&ecirc;n suốt, liền mạch cả ng&agrave;y d&agrave;i</strong></h3>\r\n\r\n<p>Để bạn c&oacute; những gi&acirc;y ph&uacute;t trải nghiệm liền mạch, Apple đ&atilde; trang bị một vi&ecirc;n pin c&oacute; dung lượng 2815 mAh, t&iacute;ch hợp cho khả năng tiết kiệm pin gi&uacute;p người d&ugrave;ng c&oacute; thể giải tr&iacute; đa phương tiện l&ecirc;n đến 17 giờ v&agrave; nghe nhạc li&ecirc;n tục l&ecirc;n đến 65 giờ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-040321-030358.jpg\" onclick=\"return false;\"><img alt=\"Dung lượng pin sử dụng đáp ứng đủ một ngày | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-040321-030358.jpg\" title=\"Dung lượng pin sử dụng đáp ứng đủ một ngày | iPhone 12\" /></a></p>\r\n\r\n<p>V&agrave; kh&ocirc;ng thể thiếu đ&oacute; ch&iacute;nh l&agrave; t&iacute;nh năng sạc nhanh, iPhone 12 c&oacute; khả năng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-sac-pin-nhanh\" target=\"_blank\" title=\"Tham khảo điện thoại có sạc pin nhanh tại Thế Giới Di Động\">sạc pin nhanh</a>&nbsp;qua c&aacute;p c&ocirc;ng suất 20 W, chỉ trong v&ograve;ng 30 ph&uacute;t th&igrave; chiếc m&aacute;y đ&atilde; c&oacute; thế sạc được 50% pin. Th&ecirc;m v&agrave;o đ&oacute; l&agrave; khả năng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-sac-khong-day\" target=\"_blank\" title=\"Tham khảo điện thoại có sạc không dây tại Thế Giới Di Động\">sạc kh&ocirc;ng d&acirc;y</a>&nbsp;MagSafe v&ocirc; c&ugrave;ng tiện dụng.</p>\r\n\r\n<p>Lưu &yacute;: Củ sạc kh&ocirc;ng k&egrave;m theo m&aacute;y m&agrave; phải mua ri&ecirc;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-16.jpg\" onclick=\"return false;\"><img alt=\"Sạc nhanh và sạc không dây tiện lợi hữu ích | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-16.jpg\" title=\"Sạc nhanh và sạc không dây tiện lợi hữu ích | iPhone 12\" /></a></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-magsafe-magsafe-2-la-gi-co-tren-thiet-bi-nao-cua-1241888\" target=\"_blank\" title=\"MagSafe trên iPhone 12 là gì? Dùng để làm gì trên các thiết bị Apple?\">MagSafe tr&ecirc;n iPhone 12 l&agrave; g&igrave;? D&ugrave;ng để l&agrave;m g&igrave; tr&ecirc;n c&aacute;c thiết bị Apple?</a></p>\r\n\r\n<p>Sự lột x&aacute;c đầy mạnh mẽ lần n&agrave;y của Apple kh&ocirc;ng chỉ g&acirc;y bất ngờ đến người d&ugrave;ng m&agrave; c&ograve;n đ&aacute;nh dấu một kỷ nguy&ecirc;n mới trong nền ph&aacute;t triển smartphone Apple. V&agrave; đ&acirc;y cũng được xem l&agrave; một trong những bộ series iPhone m&agrave; Apple đặt nhiều t&acirc;m huyết, mục đ&iacute;ch v&agrave; đầy t&iacute;nh năng mạnh mẽ chưa từng thấy.</p>\r\n', 0),
(29, 8, 11, 2, 8, 4, 'Samsung Galaxy S22 Ultra 5G', 27990000, 829, 'f9005c8fd4 . 1-removebg-preview.png', 'f9005c8fd4 . 2.jpg', '<h3><strong><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s22-ultra\" target=\"_blank\" title=\"Tham khảo điện thoại Samsung Galaxy S22 Ultra 5G kinh doanh tại Thegioididong.com\">Galaxy S22 Ultra 5G</a>&nbsp;chiếc smartphone cao cấp nhất trong bộ 3 Galaxy S22 series m&agrave;&nbsp;<a href=\"https://www.thegioididong.com/samsung\" target=\"_blank\" title=\"Tham khảo sản phẩm Samsung kinh doanh tại Thegioididong.com\">Samsung</a>&nbsp;đ&atilde; cho ra mắt. T&iacute;ch hợp b&uacute;t S Pen ho&agrave;n hảo trong th&acirc;n m&aacute;y, trang bị vi xử l&yacute; mạnh mẽ cho c&aacute;c t&aacute;c vụ sử dụng v&ocirc; c&ugrave;ng mượt m&agrave; v&agrave; nổi bật hơn với cụm camera kh&ocirc;ng viền độc đ&aacute;o mang đậm dấu ấn ri&ecirc;ng.</strong></h3>\r\n\r\n<h3><strong>Sở hữu một diện mạo đầy nổi bật</strong></h3>\r\n\r\n<p>Galaxy S22 Ultra 5G được kế thừa form thiết kế từ những d&ograve;ng Note trước đ&acirc;y của h&atilde;ng đem đến cho bạn c&oacute; cảm gi&aacute;c vừa mới lạ vừa ho&agrave;i niệm. Trọng lượng của m&aacute;y khoảng 228 g cho cảm gi&aacute;c cầm nắm đầm tay, khi cầm m&aacute;y trần th&igrave; hơi c&oacute; cảm gi&aacute;c dễ trượt.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-10-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-10-2.jpg\" title=\"Galaxy S22 Ultra 5G - Thiết kế\" /></a></p>\r\n\r\n<p>Phần mặt lưng&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">điện thoại</a>&nbsp;được l&agrave;m nh&aacute;m n&ecirc;n hạn chế tốt việc b&aacute;m dấu v&acirc;n tay, c&oacute; thiết kế cũng kh&aacute; đơn giản nhưng vẫn to&aacute;t l&ecirc;n vẻ sang trọng v&agrave; cao cấp của chiếc m&aacute;y. Cụm camera sau tr&ecirc;n Galaxy S22 Ultra 5G được thiết kế trần tạo cảm gi&aacute;c gọn g&agrave;ng v&agrave; cũng tạo n&ecirc;n một điểm nhấn độc đ&aacute;o cho chiếc m&aacute;y.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-11-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Mặt lưng\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-11-2.jpg\" title=\"Galaxy S22 Ultra 5G - Mặt lưng\" /></a></p>\r\n\r\n<p>C&oacute; thể n&oacute;i Galaxy S22 Ultra 5G ch&iacute;nh l&agrave; chiếc m&aacute;y đầu ti&ecirc;n được t&iacute;ch hợp b&uacute;t S Pen ho&agrave;n hảo trong một th&acirc;n m&aacute;y của&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung-galaxy-s\" target=\"_blank\" title=\"Tham khảo một số mẫu điện thoại Samsung Galaxy S đang kinh doanh tại Thế Giới Di Động \">d&ograve;ng Galaxy S</a>. Giờ đ&acirc;y, bạn c&oacute; thể dễ d&agrave;ng ph&aacute;c thảo, ghi ch&uacute; lại những &yacute; tưởng v&ocirc; c&ugrave;ng nhanh ch&oacute;ng với độ trễ đ&atilde; được cải thiện cho cảm gi&aacute;c viết vẽ v&ocirc; c&ugrave;ng ch&acirc;n thật.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-7-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Thao tác viết bằng bút S Pen\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-7-2.jpg\" title=\"Galaxy S22 Ultra 5G - Thao tác viết bằng bút S Pen\" /></a></p>\r\n\r\n<h3><strong>Cấu h&igrave;nh mạnh mẽ với Snapdragon 8 Gen 1</strong></h3>\r\n\r\n<p>Hiệu năng tr&ecirc;n Galaxy S22 Ultra 5G l&agrave; điều khỏi b&agrave;n c&atilde;i khi m&aacute;y sử dụng chip Snapdragon 8 Gen 1 v&ocirc; c&ugrave;ng mạnh mẽ với tiến tr&igrave;nh sản xuất 4 nm. Khi m&aacute;y chơi game cũng chỉ ấm l&ecirc;n một ch&uacute;t ở vị tr&iacute; cụm camera chứ kh&ocirc;ng ho&agrave;n to&agrave;n qu&aacute; n&oacute;ng như những sản phẩm kh&aacute;c khi d&ugrave;ng c&ugrave;ng con chip n&agrave;y.</p>\r\n\r\n<p>M&aacute;y dễ d&agrave;ng vượt qua được c&aacute;c tựa game Li&ecirc;n Qu&acirc;n, PUBG Mobile, c&agrave;i đặt cấu h&igrave;nh tối đa th&igrave; biểu đồ FPS tr&ecirc;n Galaxy S22 Ultra 5G vẫn kh&aacute; ổn định, kh&ocirc;ng bị drop qu&aacute; nhiều. Kể cả tựa game Genshin Impact ở mức đồ họa mặc định th&igrave; m&aacute;y chơi vẫn mượt m&agrave;, đồ họa hiển thị đẹp mắt.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-1-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Trải nghiệm chơi game\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-1-2.jpg\" title=\"Galaxy S22 Ultra 5G - Trải nghiệm chơi game\" /></a></p>\r\n\r\n<p>C&ograve;n n&oacute;i về c&aacute;c t&aacute;c vụ cơ bản như lướt web, đọc b&aacute;o, xem YouTube,... th&igrave; m&aacute;y ho&agrave;n th&agrave;nh một c&aacute;ch dễ d&agrave;ng, sử dụng mượt m&agrave;, khả năng đa nhiệm thoải m&aacute;i với&nbsp;<a href=\"https://www.thegioididong.com/dtdd-ram-8gb\" target=\"_blank\" title=\"Tham khảo điện thoại có RAM 8 GB kinh doanh tại Thegioididong.com\">RAM 8 GB</a>.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-3-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Trải nghiệm lướt web\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-3-2.jpg\" title=\"Galaxy S22 Ultra 5G - Trải nghiệm lướt web\" /></a></p>\r\n\r\n<h3><strong>Mang đến những bức ảnh đầy chất lượng</strong></h3>\r\n\r\n<p>M&aacute;y trang bị 4 camera với camera ch&iacute;nh l&ecirc;n đến 108 MP,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" title=\"Tham khảo điện thoại có camera góc rộng tại Thegioididong.com\">camera g&oacute;c si&ecirc;u rộng</a>&nbsp;12 MP, 2&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-zoom\" target=\"_blank\" title=\"Tham khảo điện thoại có camera tele kinh doanh tại Thegioididong.com\">camera tele</a>&nbsp;10 MP hỗ trợ thu ph&oacute;ng quang học 10x. Nổi bật nhất l&agrave; camera ch&iacute;nh với khả năng chụp đ&ecirc;m v&ocirc; c&ugrave;ng ấn tượng như c&acirc;u m&agrave; h&atilde;ng đ&atilde; đưa ra &quot;Nightography Camera - Mắt thần b&oacute;ng đ&ecirc;m&quot;. Sở hữu cảm biến điểm ảnh lớn n&ecirc;n thu được nhiều &aacute;nh s&aacute;ng hơn, khi chụp đ&ecirc;m những bức ảnh cực kỳ s&aacute;ng, hiện tượng nhiễu hạt được cải thiện đ&aacute;ng kể.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-8-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Ảnh chụp trên camera\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-8-2.jpg\" title=\"Galaxy S22 Ultra 5G - Ảnh chụp trên camera\" /></a></p>\r\n\r\n<p>Chế độ zoom 100x hoạt động kh&aacute; l&agrave; ổn định, khả năng zoom xa v&agrave; bắt n&eacute;t ảnh nhanh. Tất nhi&ecirc;n khi bạn zoom tới 100x th&igrave; ảnh kh&aacute; mờ, khoảng c&aacute;ch zoom để cho ra chất lượng ảnh tốt l&agrave; khoảng 30-40x.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-6-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Chế độ zoom 30x trên máy\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-6-2.jpg\" title=\"Galaxy S22 Ultra 5G - Chế độ zoom 30x trên máy\" /></a></p>\r\n\r\n<p>Chế độ chụp ch&acirc;n dung cũng đ&atilde; được h&atilde;ng cải thiện kh&aacute; nhiều so với thế hệ trước.&nbsp;Ảnh chụp x&oacute;a ph&ocirc;ng s&acirc;u, &iacute;t bị lẹm kể cả phần kh&oacute; như t&oacute;c, độ chi tiết cao, ảnh tươi s&aacute;ng v&agrave; m&agrave;u sắc kh&aacute; ch&acirc;n thật. Bạn muốn chụp ảnh phong cảnh, khu phố hay đơn giản l&agrave; chụp nh&oacute;m th&igrave; tr&ecirc;n Galaxy S22 Ultra 5G ho&agrave;n to&agrave;n l&agrave;m được với camera g&oacute;c si&ecirc;u rộng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-9-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Ảnh chụp trên camera\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-9-2.jpg\" title=\"Galaxy S22 Ultra 5G - Ảnh chụp trên camera\" /></a></p>\r\n\r\n<p>Galaxy S22 Ultra 5G hỗ trợ quay video 8K tuy nhi&ecirc;n kh&ocirc;ng đi k&egrave;m chống rung, nếu như bật chế độ Si&ecirc;u ổn định l&ecirc;n th&igrave; độ ph&acirc;n giải sẽ bị giới hạn xuống Full HD 60 FPS. Bao nhi&ecirc;u đ&oacute; cũng kh&aacute; đủ rồi, khung h&igrave;nh ổn định, &iacute;t bị giật, độ chi tiết cao v&agrave; m&agrave;u sắc cũng kh&aacute; ch&acirc;n thật để ch&uacute;ng ta dễ d&agrave;ng chỉnh sửa.</p>\r\n\r\n<p>Camera trước l&ecirc;n đến 40 MP cho n&ecirc;n h&igrave;nh sống ảo của ch&uacute;ng ta sẽ ch&acirc;n thật hơn bao giờ hết, da vẫn được l&agrave;m mịn nhẹ nhưng c&aacute;c chi tiết tr&ecirc;n da đều sẽ được t&aacute;i tạo rất r&otilde; n&eacute;t. M&agrave;u sắc kh&aacute; rực rỡ n&ecirc;n kh&ocirc;ng cần &aacute;p dụng th&ecirc;m bộ lọc m&agrave;u nữa.</p>\r\n\r\n<h3><strong>Trải nghiệm xem nh&igrave;n ho&agrave;n hảo</strong></h3>\r\n\r\n<p>Galaxy S22 Ultra 5G&nbsp;trang bị một m&agrave;n h&igrave;nh kh&aacute; xuất sắc với độ phần 2K+, rộng 6.8 inch c&ugrave;ng với đ&oacute; l&agrave; tấm nền&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-man-hinh-dynamic-amoled-2x-tren-smartphone-1245213\" target=\"_blank\" title=\"Tìm hiểu màn hình Dynamic AMOLED 2X tại Thegioididong.com\">Dynamic AMOLED 2X</a>&nbsp;đem đến một m&agrave;u sắc hiển thị rực rỡ, m&agrave;u đen s&acirc;u cho cảm gi&aacute;c xem nh&igrave;n ch&acirc;n thật. Hỗ trợ tần số qu&eacute;t 120 Hz n&ecirc;n khả năng vuốt chạm mượt m&agrave;, nhanh ch&oacute;ng. M&agrave;n h&igrave;nh c&oacute; độ s&aacute;ng cao 1750 nits n&ecirc;n việc khi d&ugrave;ng ngo&agrave;i trời chất lượng hiển thị vẫn rất r&otilde; r&agrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-5-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Màn hình cong tràn sang 2 cạnh\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-5-2.jpg\" title=\"Galaxy S22 Ultra 5G - Màn hình cong tràn sang 2 cạnh\" /></a></p>\r\n\r\n<p>Mặt k&iacute;nh cong tr&agrave;n sang 2 cạnh kh&aacute; sang trọng v&agrave; cũng l&agrave; đặc trưng của d&ograve;ng Note, được trang bị k&iacute;nh cường lực Corning Gorilla Glass Victus+ gia tăng khả năng chống trầy xước rất tốt, cho bạn y&ecirc;n t&acirc;m hơn khi sử dụng m&aacute;y.</p>\r\n\r\n<h3>Thời lượng sử dụng cả ng&agrave;y với vi&ecirc;n pin 5000 mAh</h3>\r\n\r\n<p>Vi&ecirc;n pin tr&ecirc;n Galaxy S22 Ultra 5G được hỗ trợ l&agrave; 5000 mAh tương tự như&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s21-ultra\" target=\"_blank\" title=\"Tham khảo điện thoại Samsung Galaxy S21 Ultra tại Thegioididong.com\">Galaxy S21 Ultra 5G</a>&nbsp;nhưng c&ocirc;ng suất sạc th&igrave; đ&atilde; được n&acirc;ng l&ecirc;n th&agrave;nh 45 W thay v&igrave; 25 W. Khả năng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-sac-pin-nhanh\" target=\"_blank\" title=\"Tham khảo điện thoại có sạc nhanh kinh doanh tại Thegioididong.com\">sạc nhanh</a>&nbsp;ấn tượng với 30 ph&uacute;t được hơn 50% dung lượng v&agrave; mất khoảng 1 giờ 10 ph&uacute;t l&agrave; đầy.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-12-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Thời gian sạc\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-12-2.jpg\" title=\"Galaxy S22 Ultra 5G - Thời gian sạc\" /></a></p>\r\n\r\n<p>V&igrave; thế với dung lượng pin cao c&ugrave;ng khả năng sạc nhanh, th&igrave; Galaxy S22 Ultra 5G ho&agrave;n to&agrave;n c&oacute; thể c&ugrave;ng bạn chinh phục c&aacute;c tựa game, những bộ phim y&ecirc;u th&iacute;ch hoặc đ&aacute;p ứng tốt nhu cầu l&agrave;m việc cả một ng&agrave;y d&agrave;i.</p>\r\n\r\n<h3><strong>Chuyển đổi dữ liệu nhanh ch&oacute;ng v&agrave; tiện lợi</strong></h3>\r\n\r\n<p>Ngo&agrave;i ra, để trải nghiệm sử dụng của kh&aacute;ch h&agrave;ng được liền mạch hơn, Samsung c&oacute; cung cấp một c&aacute;ch chuyển đổi dữ liệu an to&agrave;n, bảo mật với t&iacute;nh năng&nbsp;<strong>Smart Witch.&nbsp;</strong>Hỗ trợ người d&ugrave;ng truyền dữ liệu như ảnh, video, danh bạ, sự kiện lịch, ghi ch&uacute;,... từ nhiều thiết bị&nbsp;<strong>kể cả kh&aacute;c hệ điều h&agrave;nh</strong>&nbsp;đến Samsung Galaxy S22 Ultra.</p>\r\n\r\n<p>Bạn c&oacute; thể tham khảo chi tiết b&agrave;i hướng dẫn tại:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/huong-dan-chuyen-du-lieu-tu-iphone-sang-dien-thoai-927670\" target=\"_blank\" title=\"Chuyển dữ liệu sang điện thoại Samsung bằng Smart Switch\">Chuyển dữ liệu sang điện thoại Samsung bằng Smart Switch.</a></p>\r\n\r\n<p>T&oacute;m lại, với những ưu điểm như thiết kế sang trọng, camera chụp đ&ecirc;m ấn tượng, hiệu năng vượt trội th&igrave; Galaxy S22 Ultra 5G ho&agrave;n to&agrave;n xứng đ&aacute;ng để bạn bỏ tiền ra sở hữu em n&oacute; để phục vụ nhiều cầu sử dụng của bản th&acirc;n.</p>\r\n', 2),
(30, 8, 11, 1, 8, 4, 'Samsung Galaxy Z Fold3 5G', 32990000, 836, 'd302763422 . 1-removebg-preview.png', 'd302763422 . 2.jpg', '<h3><strong><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-z-fold-3\" target=\"_blank\" title=\"Tham khảo giá điện thoại Samsung Galaxy Z Fold3 5G 256GB chính hãng\">Samsung Galaxy Z Fold3 5G</a>, chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone chính hãng\">điện thoại</a>&nbsp;được n&acirc;ng cấp to&agrave;n diện về nhiều mặt, đặc biệt đ&acirc;y l&agrave; điện thoại m&agrave;n h&igrave;nh gập đầu ti&ecirc;n tr&ecirc;n thế giới c&oacute; camera ẩn (08/2021). Sản phẩm sẽ l&agrave; một &ldquo;c&uacute; hit&rdquo; của&nbsp;Samsung&nbsp;g&oacute;p phần mang đến những trải nghiệm mới cho người d&ugrave;ng.</strong></h3>\r\n\r\n<h3><strong>Thiết kế n&acirc;ng tầm smartphone m&agrave;n h&igrave;nh gập</strong></h3>\r\n\r\n<p>C&oacute; thể thấy mẫu smartphone Galaxy Z Fold3 lần n&agrave;y vẫn giữ nguy&ecirc;n ngoại h&igrave;nh c&ugrave;ng cơ chế m&agrave;n h&igrave;nh gập mở dạng quyển s&aacute;ch như của tiền nhiệm, &quot;h&ocirc; biến&quot; chiếc smartphone th&agrave;nh một chiếc m&aacute;y t&iacute;nh bảng mini một c&aacute;ch dễ d&agrave;ng v&agrave; ngược lại.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-25.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Thiết kế nâng tầm smartphone màn hình gập\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-25.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Thiết kế nâng tầm smartphone màn hình gập\" /></a></p>\r\n\r\n<p>Khung viền sử dụng hợp kim nh&ocirc;m Armor Aluminum cứng c&aacute;p, bền bỉ hơn 10% so với c&aacute;c vật liệu trước đ&acirc;y&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\">Samsung</a>&nbsp;từng sản xuất. Với cấu tạo chắc chắn sẽ gi&uacute;p bạn y&ecirc;n t&acirc;m tận hưởng c&aacute;c hoạt động y&ecirc;u th&iacute;ch một c&aacute;ch trọn vẹn nhất.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-9.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Khung viền cao cấp, độ bền cao\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-9.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Khung viền cao cấp, độ bền cao\" /></a></p>\r\n\r\n<p>Bộ khớp nối bản lề được thiết kế mới gi&uacute;p kết nối bộ khung của Galaxy Z Fold3 ho&agrave;n hảo hơn, tăng cao độ bền khi đ&oacute;ng mở li&ecirc;n tục v&agrave; cố định cực kỳ chắc chắn cho bạn trải nghiệm sử dụng thoải m&aacute;i nhất.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-30.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Kết cấu khung viền chắc chắn\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-30.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Kết cấu khung viền chắc chắn\" /></a></p>\r\n\r\n<p>Mặt lưng của Z Fold3 5G được l&agrave;m nh&aacute;m hơn so với mặt lưng tr&ecirc;n Z Fold2 5G, điều n&agrave;y gi&uacute;p hạn chế b&aacute;m bẩn, mồ h&ocirc;i hay dấu v&acirc;n tay trong qu&aacute; tr&igrave;nh ch&uacute;ng ta sử dụng m&aacute;y.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-18.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Thiết kế mặt lưng\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-18.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Thiết kế mặt lưng\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Samsung cho biết họ sử dụng k&iacute;nh Gorilla Glass Victus cho phần m&agrave;n h&igrave;nh ngo&agrave;i nhằm tăng cường độ bền cho Galaxy Z Fold3 5G, gi&uacute;p m&aacute;y c&oacute; khả năng chống va đập khi rơi từ độ cao 2m, đồng thời chống xước tới 4 lần.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-24.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Màn hình ngoài trang bị kính Gorilla Glass Victus\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-24.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Màn hình ngoài trang bị kính Gorilla Glass Victus\" /></a></p>\r\n\r\n<p>Hệ thống loa k&eacute;p stereo k&iacute;ch thước lớn ở 2 cạnh tr&ecirc;n dưới, t&iacute;ch hợp c&ocirc;ng nghệ Dolby Atmos, Z Fold3 5G cho trải nghiệm chơi game, xem phim đ&atilde; tai với &acirc;m lượng lớn, hiệu ứng đa k&ecirc;nh r&otilde; r&agrave;ng ch&acirc;n thực.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-23.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G  | Hệ thống loa kép hỗ trợ khả năng giải trí ấn tượng\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-23.jpg\" title=\"Samsung Galaxy Z Fold3 5G  | Hệ thống loa kép hỗ trợ khả năng giải trí ấn tượng\" /></a></p>\r\n\r\n<p>Với&nbsp;<a href=\"https://www.thegioididong.com/dtdd-bao-mat-van-tay\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone có bảo mật cảm biến vân tay\">cảm biến v&acirc;n tay</a>&nbsp;ở cạnh b&ecirc;n, việc mở kh&oacute;a m&agrave;n h&igrave;nh tr&ecirc;n Z Fold3 5G giờ đ&acirc;y đ&atilde; được thực hiện một c&aacute;ch nhanh ch&oacute;ng v&agrave; an to&agrave;n chỉ trong một nốt nhạc.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-21.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G  | Cảm biến vân tay cạnh viền\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-21.jpg\" title=\"Samsung Galaxy Z Fold3 5G  | Cảm biến vân tay cạnh viền\" /></a></p>\r\n\r\n<h3><strong>Đột ph&aacute; m&agrave;n h&igrave;nh gập với camera ẩn&nbsp;</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh Samsung sử dụng tấm nền Dynamic AMOLED 2X, phần viền của m&agrave;n h&igrave;nh ch&iacute;nh cũng được h&atilde;ng tối ưu tinh giản lại, thiết kế mang đến phần viền si&ecirc;u mỏng cho cảm gi&aacute;c tr&agrave;n viền tinh tế hơn nh&igrave;n rất đẹp v&agrave; bắt mắt.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-19.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Đột phá màn hình gập siêu tràn viền\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-19.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Đột phá màn hình gập siêu tràn viền\" /></a></p>\r\n\r\n<p>Đặc biệt, Z Fold3 c&ograve;n l&agrave; chiếc điện thoại gập đầu ti&ecirc;n tr&ecirc;n thế giới c&oacute; camera ẩn dưới m&agrave;n h&igrave;nh mang đến những trải nghiệm liền mạch, đ&atilde; mắt hơn.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh trong được phủ lớp k&iacute;nh Ultra Thin Glass (UTG) mỏng vượt trội gi&uacute;p tăng độ bền hơn 80% so với tiền nhiệm, mang đến độ bền cực cao khi c&oacute; thể đ&oacute;ng mở dễ d&agrave;ng m&agrave; kh&ocirc;ng l&agrave;m ảnh hưởng đến khả năng hiển thị v&agrave; cảm ứng của m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-11.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Màn hình chứa camera selfie ẩn\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-11.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Màn hình chứa camera selfie ẩn\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, m&agrave;n h&igrave;nh phụ cũng được trang bị k&iacute;ch thước kh&aacute; lớn l&ecirc;n đến 6.2 inch, độ ph&acirc;n giải của m&agrave;n h&igrave;nh n&agrave;y cũng nằm ở mức kh&aacute; cao c&ugrave;ng khả năng hiển thị cực kỳ sắc n&eacute;t mượt m&agrave; như m&agrave;n h&igrave;nh ch&iacute;nh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-17.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Màn hình phụ 6.2 inch\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-17.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Màn hình phụ 6.2 inch\" /></a></p>\r\n\r\n<p>Cả 2 m&agrave;n h&igrave;nh cũng được Samsung n&acirc;ng cấp tần số qu&eacute;t 120 Hz để gi&uacute;p mọi thao t&aacute;c chạm vuốt, chuyển động h&igrave;nh ảnh đều được xử l&yacute; cực kỳ mượt m&agrave;, mang đến trải nghiệm m&atilde;n nh&atilde;n, gi&uacute;p bạn thực sự đắm ch&igrave;m trong kh&ocirc;ng gian giải tr&iacute; chơi game bất tận.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-7.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Màn hình giải trí 120 Hz\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-7.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Màn hình giải trí 120 Hz\" /></a></p>\r\n\r\n<p>Galaxy Z Fold3 5G được hỗ trợ th&ecirc;m b&uacute;t S-Pen thần th&aacute;nh, một điểm cải tiến lớn so với thế hệ tiền nhiệm cho bạn thực hiện thoải m&aacute;i nhiều t&aacute;c vụ tr&ecirc;n một m&agrave;n h&igrave;nh lớn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-6.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Tích hợp bút S-Pen thông minh\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-6.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Tích hợp bút S-Pen thông minh\" /></a></p>\r\n\r\n<h3><strong>Cụm camera chụp ảnh chất lượng cao</strong></h3>\r\n\r\n<p>Về camera, Z Fold3 sử dụng hệ thống 3 camera 12 MP ho&agrave;n to&agrave;n giống hệt với Z Fold2 bao gồm camera ch&iacute;nh,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone camera chụp hình góc rộng\">camera g&oacute;c si&ecirc;u rộng</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-zoom\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone camera zoom\">camera tele</a>&nbsp;tất cả được đặt trong module h&igrave;nh chữ nhật bo tr&ograve;n 2 đầu tr&ocirc;ng kh&aacute; gọn g&agrave;ng v&agrave; tinh tế.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-20.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Cụm camera chất lượng cao\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-20.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Cụm camera chất lượng cao\" /></a></p>\r\n\r\n<p>Nh&igrave;n chung hệ thống camera của những chiếc điện thoại cao cấp từ Samsung lu&ocirc;n c&oacute; chất lượng h&agrave;ng đầu, chắc chắn sẽ cho bạn trải nghiệm chụp ảnh, quay phim v&ocirc; c&ugrave;ng xuất sắc.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-2.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Giao diện camera\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-2.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Giao diện camera\" /></a></p>\r\n\r\n<p>Bạn c&oacute; thể dễ d&agrave;ng l&agrave;m mờ hậu cảnh, chống rung v&agrave; l&agrave;m đẹp bằng AI, tự động hiệu chỉnh m&agrave;u sắc, l&agrave;m chủ m&agrave;n đ&ecirc;m để đem tới những khung h&igrave;nh đẹp mắt chỉ bằng một n&uacute;t bấm. Đồng thời m&agrave;n h&igrave;nh ch&iacute;nh cũng cho ph&eacute;p bạn chia đ&ocirc;i m&agrave;n h&igrave;nh để vừa chụp vừa xem lại ảnh c&ugrave;ng l&uacute;c.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-14.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Khả năng nhiếp ảnh chất lượng\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-14.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Khả năng nhiếp ảnh chất lượng\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, bộ đ&ocirc;i camera selfie ở hai m&agrave;n h&igrave;nh đều cho chất lượng ảnh kh&aacute; tốt, nhưng khi cần chụp ảnh selfie c&oacute; chất lượng cao người d&ugrave;ng c&oacute; thể sử dụng 3 camera sau v&agrave; m&agrave;n h&igrave;nh ngo&agrave;i l&agrave;m k&iacute;nh ngắm để c&oacute; được những bức ảnh tốt nhất.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-12.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Khả năng chụp ảnh selfie\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-12.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Khả năng chụp ảnh selfie\" /></a></p>\r\n\r\n<h3><strong>Cấu h&igrave;nh khủng với Snapdragon 888&nbsp;</strong></h3>\r\n\r\n<p>Galaxy Z Fold3 sử dụng con chip Snapdragon 888 một trong những bộ vi xử l&yacute; mạnh mẽ nhất đến từ nh&agrave; Qualcomm, gi&uacute;p mọi thao t&aacute;c, mọi ứng dụng đều được xử l&yacute; nhanh ch&oacute;ng tr&ecirc;n cả 2 m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-13.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Hiệu năng khủng với Snapdragon 888\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-13.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Hiệu năng khủng với Snapdragon 888\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Galaxy Z Fold3 sẽ được cải thiện khả năng tản nhiệt khi chơi game, thậm ch&iacute; c&oacute; thể m&aacute;t hơn cả Galaxy S21 Ultra 5G.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-5.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Hiệu năng mượt mà ở cả 2 màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-5.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Hiệu năng mượt mà ở cả 2 màn hình\" /></a></p>\r\n\r\n<p>Bộ nhớ RAM của Z Fold3 cũng được n&acirc;ng cấp dung lượng l&ecirc;n đến&nbsp;12 GB&nbsp;cho khả năng tối ưu đa nhiệm xử l&yacute; cực tốt, gi&uacute;p mọi ứng dụng nặng nhất đều c&oacute; thể vận h&agrave;nh c&ugrave;ng l&uacute;c mượt m&agrave;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-15.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Hiệu năng mạnh mẽ, xử lý mượt mà các tác vụ\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-15.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Hiệu năng mạnh mẽ, xử lý mượt mà các tác vụ\" /></a></p>\r\n\r\n<p>Samsung cũng cung cấp khả năng lưu trữ rộng r&atilde;i với dung lượng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-rom-256gb\" target=\"_blank\" title=\"Tham khảo điện thoại có bộ nhớ trong 256 GB đang bán tại TGDĐ\">bộ nhớ trong 256 GB</a>&nbsp;cho người d&ugrave;ng thoải m&aacute;i sử dụng, kh&ocirc;ng qu&aacute; lo về dung lượng nhanh hết.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-10.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Khả năng lưu trữ rộng rãi\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-10.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Khả năng lưu trữ rộng rãi\" /></a></p>\r\n\r\n<p>Hệ điều h&agrave;nh Android 11 cũng tối ưu tr&ecirc;n giao diện One UI mang đến trải nghiệm tương t&aacute;c trực quan như tr&ecirc;n m&aacute;y t&iacute;nh đồng thời cho ph&eacute;p chuyển đổi mượt m&agrave; nội dung giữa m&agrave;n h&igrave;nh ch&iacute;nh v&agrave; m&agrave;n h&igrave;nh phụ m&agrave; kh&ocirc;ng phải tải lại ứng dụng hay load lại game.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-8.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Giao diện màn hình chính\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-8.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Giao diện màn hình chính\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, Samsung Galaxy Z Fold3 cũng được trang bị chuẩn kết nối internet 5G cho khả năng kết nối internet si&ecirc;u nhanh gi&uacute;p bạn c&oacute; thể sử dụng internet mọi nơi với tốc độ sử dụng si&ecirc;u cao.</p>\r\n\r\n<h3><strong>Thời lượng pin đủ d&ugrave;ng</strong></h3>\r\n\r\n<p>Samsung Galaxy Z Fold3 5G c&oacute; dung lượng pin 4.400 mAh vừa đủ để bạn c&oacute; thể sử dụng trong khoảng một ng&agrave;y với c&aacute;c t&aacute;c vụ l&agrave;m việc giải tr&iacute; th&ocirc;ng thường.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-4.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G  | Thời lượng pin đủ dùng\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-4.jpg\" title=\"Samsung Galaxy Z Fold3 5G  | Thời lượng pin đủ dùng\" /></a></p>\r\n\r\n<p>B&ecirc;n canh đ&oacute;, điện thoại cũng c&oacute; t&iacute;nh năng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-sac-pin-nhanh\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone sạc pin nhanh\">sạc pin nhanh</a>&nbsp;25 W,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-sac-khong-day\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone hỗ trợ sạc pin không dây\">sạc kh&ocirc;ng d&acirc;y</a>&nbsp;hay chia sẻ pin kh&ocirc;ng d&acirc;y cho c&aacute;c thiết bị hỗ trợ chuẩn Qi kh&aacute;c như smartphone hay tai nghe Galaxy Buds.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-22.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Khả năng sạc nhanh 25 W và sạc không dây\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-22.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Khả năng sạc nhanh 25 W và sạc không dây\" /></a></p>\r\n\r\n<p>Nh&igrave;n chung, Samsung Galaxy Z Fold3 5G đ&atilde; được n&acirc;ng cấp rất nhiều so với người tiền nhiệm từ thiết kế, m&agrave;n h&igrave;nh đến hiệu năng, sản phẩm gi&uacute;p Samsung tiếp tục khẳng định vị thế đẳng cấp của m&igrave;nh tr&ecirc;n thị trường smartphone m&agrave;n h&igrave;nh gập.&nbsp;</p>\r\n', 1);
INSERT INTO `sanpham` (`ma_sp`, `ma_th`, `ma_lsp`, `ma_ncc`, `ma_dm`, `ma_nv`, `ten_sp`, `gia_sp`, `soluong_sp`, `hinh_sp`, `hinhchitiet_sp`, `thongtin_sp`, `tinhtrang_sp`) VALUES
(31, 8, 11, 1, 8, 4, 'Samsung Galaxy S22 5G', 18990000, 214, '133c15270c . 1-removebg-preview.png', '133c15270c . 2.jpg', '<h3><strong><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s22\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại Thế Giới Di Động\">Samsung Galaxy S22</a>&nbsp;ra mắt với diện mạo v&ocirc; c&ugrave;ng tinh tế v&agrave; trẻ trung, mang trong m&igrave;nh thiết kế phẳng theo xu hướng thịnh h&agrave;nh, m&agrave;n h&igrave;nh 120 Hz mượt m&agrave;, cụm camera AI 50 MP v&agrave; bộ xử l&yacute; đến từ Qualcomm.</strong></h3>\r\n\r\n<h3><strong>Thiết kế thu h&uacute;t mọi &aacute;nh nh&igrave;n&nbsp;</strong></h3>\r\n\r\n<p>Cảm gi&aacute;c đầu ti&ecirc;n Samsung Galaxy S22 mang lại cho m&igrave;nh khi sử dụng l&agrave; m&aacute;y cho cảm gi&aacute;c cầm nắm cực kỳ chắc chắn v&agrave; đằm tay với thiết kế nhỏ gọn của m&igrave;nh.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; một chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại kinh doanh tại Thế Giới Di Động\">điện thoại</a>&nbsp;v&ocirc; c&ugrave;ng bền bỉ khi khung viền được cấu th&agrave;nh từ Armor Aluminum cứng c&aacute;p, được trang bị k&iacute;nh cường lực Corning&nbsp;Gorilla Glass Victus+ đầu ti&ecirc;n tr&ecirc;n thị trường.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-1-1.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế thu hút - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-1-1.jpg\" title=\"Thiết kế thu hút - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p>Mặt lưng cũng được ho&agrave;n thiện từ k&iacute;nh với thiết kế phẳng, viền m&agrave;n h&igrave;nh của Galaxy S22 được l&agrave;m mỏng ở cả 4 cạnh tr&ocirc;ng rất c&acirc;n đối v&agrave; gọn g&agrave;ng. Tất cả những điều tr&ecirc;n tạo n&ecirc;n một cảm gi&aacute;c cầm nắm, sử dụng rất tốt.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-2-1.jpg\" onclick=\"return false;\"><img alt=\"Mạnh mẽ và sang trọng - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-2-1.jpg\" title=\"Mạnh mẽ và sang trọng - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p>Cụm camera ph&iacute;a sau c&oacute; lồi hơn mặt lưng một ch&uacute;t, c&oacute; m&agrave;u sắc tương đồng với m&agrave;u sản phẩm&nbsp;tương tự với d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s21\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại Thế Giới Di Động\">Galaxy S21</a>&nbsp;đ&atilde; ra mắt trước đ&oacute;. Nh&igrave;n chung phần thiết kế m&igrave;nh thấy rằng Galaxy S22 kh&ocirc;ng c&oacute; sự thay đổi qu&aacute; nhiều khi so với thế hệ S21, tuy nhi&ecirc;n theo c&aacute; nh&acirc;n m&igrave;nh S22 đ&atilde; được tối ưu v&agrave; gọn g&agrave;ng hơn thế hệ trước.</p>\r\n\r\n<h3><strong>Trải nghiệm thị gi&aacute;c được n&acirc;ng tầm</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh 6.1 inch cực kỳ nhỏ gọn, độ ph&acirc;n giải Full HD+ c&ugrave;ng tấm nền Dynamic AMOLED 2X cho khả năng hiển thị v&ocirc; c&ugrave;ng chi tiết, m&agrave;u đen s&acirc;u, m&agrave;u sắc h&agrave;i h&ograve;a, hỗ trợ dải m&agrave;u rộng DCI-P3 gi&uacute;p cho ch&uacute;ng ta c&oacute; trải nghiệm sử dụng l&agrave;m việc, giải tr&iacute; một c&aacute;ch sinh động hơn.&nbsp;</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/do-bao-phu-mau-dci-p3-la-gi-dci-p3-dem-lai-loi-ich-gi-cho-1396446\" target=\"_blank\" title=\"DCI-P3 là gì?\">Dải m&agrave;u rộng DCI-P3 l&agrave; g&igrave;?</a></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-3-1.jpg\" onclick=\"return false;\"><img alt=\"Hiển thị màu sắc tuyệt vời - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-3-1.jpg\" title=\"Hiển thị màu sắc tuyệt vời - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p>Với tần số qu&eacute;t 120 Hz m&aacute;y cho trải nghiệm vuốt chạm cực k&igrave; mượt m&agrave;, hiệu ứng chuyển cảnh hay hiệu ứng khi mở ứng dụng rất l&agrave; trơn tru v&agrave; hầu như kh&ocirc;ng c&oacute; hiện tượng khựng.</p>\r\n\r\n<p>Galaxy S22 c&oacute; độ s&aacute;ng tối đa đến 1300 nits cho hiển thị nội dung tốt cho d&ugrave; bạn xem ở ngo&agrave;i trời nắng ch&oacute;i. Chế độ bảo vệ mắt được trang bị gi&uacute;p đ&ocirc;i mắt hạn chế tiếp x&uacute;c với &aacute;nh s&aacute;ng xanh cho qu&aacute; tr&igrave;nh sử dụng điện thoại của bạn trở n&ecirc;n thoải m&aacute;i hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-4-1.jpg\" onclick=\"return false;\"><img alt=\"Cảm biến vân tay dưới màn hình - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-4-1.jpg\" title=\"Cảm biến vân tay dưới màn hình - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, cảm biến v&acirc;n tay cũng được&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">Samsung</a>&nbsp;t&iacute;ch hợp trong m&agrave;n h&igrave;nh với tốc độ nhận diện nhanh, gi&uacute;p dữ liệu của bạn lu&ocirc;n an to&agrave;n v&agrave; tiện lợi hơn trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<h3><strong>Vi xử l&yacute; mạnh mẽ nhất Galaxy</strong></h3>\r\n\r\n<p>Samsung Galaxy S22 năm nay đ&atilde; sử dụng CPU đến từ Qualcomm, chiếc flagship n&agrave;y trang bị con chip Snapdragon 8 Gen 1 mới nhất với một hiệu năng cực k&igrave; mạnh mẽ trong giới smartphone hiện nay (2/2022).</p>\r\n\r\n<p>M&igrave;nh c&oacute; sử dụng phần mềm chấm điểm hiệu năng v&agrave; c&oacute; kết quả sau, phần mềm PCMark với số điểm 13440 (b&ecirc;n tr&aacute;i), Benchmark số điểm đơn nh&acirc;n 1212 v&agrave; đa nh&acirc;n 3107 (b&ecirc;n phải) kh&aacute; ấn tượng.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-5-1.jpg\" onclick=\"return false;\"><img alt=\"Điểm hiệu năng - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-5-1.jpg\" title=\"Điểm hiệu năng - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p>Với những t&aacute;c vụ h&agrave;ng ng&agrave;y th&igrave; kh&ocirc;ng c&oacute; g&igrave; phải b&agrave;n c&atilde;i, m&aacute;y đ&atilde; ho&agrave;n th&agrave;nh tốt vai tr&ograve; của m&igrave;nh. C&acirc;n hết c&aacute;c t&aacute;c vụ cơ bản h&agrave;ng ng&agrave;y một c&aacute;ch mượt m&agrave; v&agrave; trơn tru. Thao t&aacute;c vuốt chạm qua lại, đa nhiệm một l&uacute;c nhiều ứng dụng m&aacute;y kh&ocirc;ng c&oacute; t&igrave;nh trạng load lại với&nbsp;<a href=\"https://www.thegioididong.com/dtdd-ram-8gb\" target=\"_blank\" title=\"Tham khảo điện thoại 8 GB RAM kinh doanh tại Thế Giới Di Động\">8 GB RAM</a>.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd-rom-128gb\" target=\"_blank\" title=\"Tham khảo điện thoại bộ nhớ trong 128 GB tại Thế Giới Di Động\">Bộ nhớ trong 128 GB</a>&nbsp;kh&ocirc;ng hỗ trợ mở rộng qua thẻ nhớ, nếu bạn c&oacute; nhu cầu lưu trữ cao hơn c&oacute; thể chọn phi&ecirc;n bản&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s22-256gb\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại Thế Giới Di Động\">Samsung Galaxy S22 (8/256GB)</a>.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-6-1.jpg\" onclick=\"return false;\"><img alt=\"Bộ nhớ trong 128GB - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-6-1.jpg\" title=\"Bộ nhớ trong 128GB - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p>C&ograve;n về trải nghiệm chơi game tr&ecirc;n Galaxy S22, với game đầu ti&ecirc;n l&agrave; Li&ecirc;n Qu&acirc;n Mobile m&aacute;y cho ra chất lượng hiển thị tốt, đồ họa đẹp, m&agrave;u sắc trong game rất l&agrave; nịnh mắt v&agrave; khi m&igrave;nh di chuyển nh&acirc;n vật đều mượt m&agrave; trơn tru, kh&ocirc;ng c&oacute; t&igrave;nh trạng chậm, khựng. Khi giao tranh m&aacute;y kh&ocirc;ng c&oacute; hiện tượng giật lag, chơi ổn định ở mức max setting 60 FPS th&igrave; m&aacute;y kh&aacute; n&oacute;ng khi chơi tầm từ 15 ph&uacute;t.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-8-1.jpg\" onclick=\"return false;\"><img alt=\"Liên Quân Mobile - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-8-1.jpg\" title=\"Liên Quân Mobile - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p>Với tựa game PUBG Mobile ở mức<strong>&nbsp;đồ họa Ultra HD, tốc độ khung h&igrave;nh cực cao&nbsp;</strong>m&aacute;y cho trải nghiệm tốt ở mức 40 FPS, đồ họa đẹp, di chuyển nh&acirc;n vật hay l&agrave; đấu s&uacute;ng, nhặt đồ đều ổn định.</p>\r\n\r\n<p>C&ograve;n với cấu h&igrave;nh cao hơn l&agrave;&nbsp;<strong>đồ họa HDR, tốc độ khung h&igrave;nh cực độ</strong>&nbsp;ch&uacute;ng ta sẽ c&oacute; đồ họa đẹp hơn, tối ưu hơn, di chuyển mượt m&agrave; hơn v&agrave; chơi ổn định ở mức 60 FPS, &iacute;t xảy ra hiện tượng drop FPS, tuy nhi&ecirc;n khi chơi khoảng 15 ph&uacute;t m&aacute;y cũng kh&aacute; l&agrave; n&oacute;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-7-1.jpg\" onclick=\"return false;\"><img alt=\"PUBG Mobile - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-7-1.jpg\" title=\"PUBG Mobile - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p>Để chơi mượt m&agrave; v&agrave; tiết kiệm pin nhất th&igrave; bạn c&oacute; thể c&agrave;i đặt đồ họa ở mức trung b&igrave;nh, cho m&aacute;y m&aacute;t mẻ v&agrave; tiết kiệm pin hơn trong qu&aacute; tr&igrave;nh chơi.</p>\r\n\r\n<h3><strong>Camera đ&atilde; tốt nay c&ograve;n tốt hơn</strong></h3>\r\n\r\n<p>Camera của Galaxy S22 l&agrave; một sự cải tiến v&ocirc; c&ugrave;ng đắt gi&aacute;, m&aacute;y được trang bị camera selfie đục lỗ độ ph&acirc;n giải 10 MP, cho ra những bức ảnh chụp selfie cực k&igrave; đẹp v&agrave; nổi bật chủ thể l&ecirc;n hẳn, m&agrave;u da được t&aacute;i hiện ch&acirc;n thực.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-15-selfie.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera trước - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-15-selfie.jpg\" title=\"Ảnh chụp từ camera trước - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p>Camera sau với cảm biến ch&iacute;nh ch&iacute;nh 50 MP,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" title=\"Tham khảo điện thoại có camera góc rộng kinh doanh tại Thế Giới Di Động\">camera g&oacute;c si&ecirc;u rộng</a>&nbsp;12 MP, camera tele 10 MP gi&uacute;p cho ch&uacute;ng ta c&oacute; nhiều bức ảnh trong nhiều điều kiện kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-10-1-1.jpg\" onclick=\"return false;\"><img alt=\"Cụm camera sau - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-10-1-1.jpg\" title=\"Cụm camera sau - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p>Với điều kiện đủ s&aacute;ng m&aacute;y cho ra chất lượng ảnh sắc n&eacute;t, độ chi tiết cao, m&agrave;u sắc t&aacute;i hiện đầy đủ, kh&ocirc;ng bị bệt, kh&ocirc;ng c&oacute; hiện tượng l&agrave; bị vỡ n&eacute;t hay l&agrave; nhiễu hạt n&agrave;o. Điều n&agrave;y cũng tương tự cho c&aacute;c bức ảnh g&oacute;c si&ecirc;u rộng.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-14-camera-thuong.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera thường - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-14-camera-thuong.jpg\" title=\"Ảnh chụp từ camera thường - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><em>Ảnh chụp từ camera g&oacute;c thường</em></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-14-camera-rong.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera góc siêu rộng - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-14-camera-rong.jpg\" title=\"Ảnh chụp từ camera góc siêu rộng - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><em>Ảnh chụp từ camera g&oacute;c si&ecirc;u rộng</em></p>\r\n\r\n<p>Trong điều kiện chụp đ&ecirc;m m&aacute;y xử l&yacute; tốt, t&aacute;i hiện được đầy đủ chi tiết, kh&ocirc;ng bị nh&ograve;e v&agrave; vỡ hạt, m&agrave;u sắc vẫn đảm bảo t&aacute;i hiện đ&uacute;ng m&agrave;u cho ra những c&aacute;i bức ảnh kh&aacute; l&agrave; chất lượng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-15-chup-dem.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp đêm - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-15-chup-dem.jpg\" title=\"Ảnh chụp đêm - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p>Ảnh ch&acirc;n dung, chủ thể được thể hiện r&otilde;, nổi bật, x&oacute;a ph&ocirc;ng kh&ocirc;ng bị lẹm v&agrave;o chủ thể v&agrave; Galaxy S22 xử l&yacute; phần n&agrave;y rất l&agrave; tốt. Với camera tele th&igrave; c&oacute; thể zoom tối đa 30x để bạn c&oacute; thể chụp những chủ thể ở khoảng c&aacute;ch xa hơn, tuy nhi&ecirc;n zoom c&agrave;ng xa th&igrave; h&igrave;nh sẽ mờ hơn.</p>\r\n\r\n<p>Galaxy S22 video đạt độ ph&acirc;n giải 8K 24 FPS si&ecirc;u cao. Hỗ trợ chế độ si&ecirc;u chống rung gi&uacute;p những thước phim của bạn trở n&ecirc;n mượt m&agrave; hơn, tuy nhi&ecirc;n khi bật chế độ n&agrave;y chất lượng video chỉ dừng lại ở mức 1080p.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-11-1.jpg\" onclick=\"return false;\"><img alt=\"Quay video đến 8K - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-11-1.jpg\" title=\"Quay video đến 8K - Samsung Galaxy S22\" /></a></p>\r\n\r\n<h3><strong>Pin ổn cho c&aacute;c t&aacute;c vụ nhẹ nh&agrave;ng</strong></h3>\r\n\r\n<p>Galaxy S22 được trang bị vi&ecirc;n pin c&oacute; dung lượng kh&aacute; l&agrave; khi&ecirc;m tốn chỉ 3700 mAh ở thời điểm hiện tại, với những c&aacute;i t&aacute;c vụ h&agrave;ng ng&agrave;y v&agrave; thời gian sử dụng li&ecirc;n tục khoảng gần 7 tiếng.*</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-12-1.jpg\" onclick=\"return false;\"><img alt=\"Thời gian sử dụng pin - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-12-1.jpg\" title=\"Thời gian sử dụng pin - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p>M&aacute;y hỗ trợ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-sac-pin-nhanh\" target=\"_blank\" title=\"Tham khảo một số mẫu điện thoại sạc pin nhanh đang kinh doanh tại Thế Giới Di Động \">sạc nhanh</a>&nbsp;25 W qua cổng Type-C, để sạc từ 0-100% pin sẽ mất khoảng 1 tiếng 32 ph&uacute;t.* Ngo&agrave;i ra S22 c&ograve;n hỗ trợ một số c&ocirc;ng nghệ sạc như: Sạc nhanh kh&ocirc;ng d&acirc;y 15 W, sạc ngược kh&ocirc;ng d&acirc;y 4.5 W để bạn đa dạng phương thức sạc cho ph&ugrave; hợp với nhu cầu sử dụng của bản th&acirc;n.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-13.jpg\" onclick=\"return false;\"><img alt=\"Thời gian sạc đầy - Samsung Galaxy S22\" src=\"https://cdn.tgdd.vn/Products/Images/42/231110/samsung-galaxy-s22-13.jpg\" title=\"Thời gian sạc đầy - Samsung Galaxy S22\" /></a></p>\r\n\r\n<p style=\"text-align:center\">*Lưu &yacute;: Thời gian sạc, sử dụng c&oacute; thể thay đổi t&ugrave;y theo nhu cầu/t&aacute;c vụ sử dụng.</p>\r\n\r\n<p>Samsung Galaxy S22 l&agrave; một sản phẩm đ&aacute;ng ch&uacute; &yacute; với những c&aacute;c t&iacute;nh năng cực kỳ nổi bật của một chiếc flagship với: M&agrave;n h&igrave;nh đẹp, camera tốt, hiệu năng mạnh mẽ, thiết kế sang trọng hiện đại v&agrave; nhỏ gọn rất ph&ugrave; hợp cho những bạn th&iacute;ch một chiếc m&aacute;y c&oacute; k&iacute;ch thước vừa đủ. Bạn c&oacute; thể đến với Thế Giới Di Động gần nhất để trải nghiệm được si&ecirc;u phẩm mới của nh&agrave; Samsung nh&eacute;!</p>\r\n', 2),
(32, 8, 11, 1, 8, 4, 'Samsung Galaxy M33 5G', 7690000, 253, '75582f3ed5 . 1-removebg-preview.png', '75582f3ed5 . 2.jpg', '<h3><strong>Kh&ocirc;ng chỉ g&acirc;y ấn tượng với cộng đồng người d&ugrave;ng&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung\" target=\"_blank\">smartphone</a>&nbsp;bởi mức gi&aacute; b&aacute;n,&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-m33-5g\" target=\"_blank\">Samsung Galaxy M33 5G</a>&nbsp;c&ograve;n mang đến cho người d&ugrave;ng một bộ th&ocirc;ng số kỹ thuật ấn tượng, camera độ ph&acirc;n giải cao c&ugrave;ng một thiết kế v&ocirc; c&ugrave;ng bắt mắt, hứa hẹn mang đến những trải nghiệm sử dụng tốt nhất d&agrave;nh cho bạn.</strong></h3>\r\n\r\n<h3><strong>Kiểu d&aacute;ng thiết kế đặc trưng</strong></h3>\r\n\r\n<p>Ấn tượng đầu ti&ecirc;n khi nh&igrave;n thấy Galaxy M33 l&agrave; chiếc m&aacute;y n&agrave;y c&oacute; một mặt lưng tuy l&agrave; ho&agrave;n thiện từ nhựa nhưng lại c&oacute; hiệu ứng giả kim loại l&agrave;m m&igrave;nh li&ecirc;n tưởng đến thiết bị được l&agrave;m từ nh&ocirc;m nguy&ecirc;n khối tr&ocirc;ng rất bắt mắt.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024635.jpg\" onclick=\"return false;\"><img alt=\"Diện mạo nổi bật - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024635.jpg\" title=\"Diện mạo nổi bật - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p>Nhờ sử dụng thiết kế mặt lưng nh&aacute;m nhẹ, Galaxy M33 mang đến ưu điểm hạn chế lưu lại vết b&aacute;m mồ h&ocirc;i v&agrave; dấu v&acirc;n tay kh&aacute; tốt, kh&ocirc;ng những thế n&oacute; c&ograve;n cho ra cảm gi&aacute;c sờ rất th&iacute;ch hay tăng độ ma s&aacute;t l&agrave;m cho m&igrave;nh cầm nắm chắc chắn hơn m&agrave; kh&ocirc;ng cảm thấy trơn tuột.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024637.jpg\" onclick=\"return false;\"><img alt=\"Mặt lưng hoàn thiện nhám - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024637.jpg\" title=\"Mặt lưng hoàn thiện nhám - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p>Cạnh viền b&ecirc;n phải bố tr&iacute; ph&iacute;m tăng/giảm &acirc;m lượng c&ugrave;ng n&uacute;t nguồn t&iacute;ch hợp cảm biến v&acirc;n tay, gi&uacute;p m&igrave;nh dễ d&agrave;ng mở kh&oacute;a thiết bị chỉ bằng một tay cực kỳ tiện lợi v&agrave; nhanh ch&oacute;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024639.jpg\" onclick=\"return false;\"><img alt=\"Cảm biến vân tay cạnh viền - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024639.jpg\" title=\"Cảm biến vân tay cạnh viền - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p>Mặt trước m&aacute;y được trang bị tấm nền TFT LCD, được mọi người đ&aacute;nh gi&aacute; kh&ocirc;ng cao về phần khả năng hiển thị, nhưng sau khi trải nghiệm thực tế th&igrave; m&igrave;nh thấy chất lượng ảnh tr&ecirc;n m&agrave;n h&igrave;nh vẫn rất ổn, độ tương phản cao, g&oacute;c nh&igrave;n rộng, với mức gi&aacute; phải chăng th&igrave; chất lượng cho ra như vậy l&agrave; ho&agrave;n to&agrave;n hợp l&yacute;.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-tft-lcd-la-gi-co-uu-diem-gi-thiet-bi-nao-905743\" target=\"_blank\">M&agrave;n h&igrave;nh TFT LCD l&agrave; g&igrave;? C&oacute; ưu điểm g&igrave;? Thiết bị n&agrave;o d&ugrave;ng m&agrave;n h&igrave;nh TFT?</a></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024641.jpg\" onclick=\"return false;\"><img alt=\"Màn hình hiển thị đẹp mắt - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024641.jpg\" title=\"Màn hình hiển thị đẹp mắt - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p>Galaxy M33 sử dụng thiết kế m&agrave;n h&igrave;nh giọt nước c&oacute; k&iacute;ch thước 6.6 inch v&agrave; độ ph&acirc;n giải Full HD+ (1080 x 2408 Pixels), mang đến cho m&igrave;nh những khung h&igrave;nh c&oacute; độ chi tiết cao, t&aacute;i hiện h&igrave;nh ảnh sống động c&ugrave;ng một kh&ocirc;ng gian hiển thị rộng lớn hỗ trợ rất tốt cho c&aacute;c c&ocirc;ng việc đọc tin tức, lướt mạng x&atilde; hội.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024643.jpg\" onclick=\"return false;\"><img alt=\"Màn hình giọt nước - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024643.jpg\" title=\"Màn hình giọt nước - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p>Điều m&agrave; rất &iacute;t sản phẩm c&ugrave;ng ph&acirc;n kh&uacute;c gi&aacute; c&oacute; thể l&agrave;m được như Galaxy M33 đ&oacute; ch&iacute;nh l&agrave; hỗ trợ tần số qu&eacute;t 120 Hz, những thao t&aacute;c vuốt chạm được diễn ra một c&aacute;ch mượt m&agrave;, chơi game FPS cao đ&atilde; mắt hơn rất nhiều so với m&agrave;n h&igrave;nh th&ocirc;ng thường (60 Hz).</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tan-so-quet-tren-dien-thoai-la-gi-co-phai-la-xu-hu-1343818\" target=\"_blank\">Tần số qu&eacute;t tr&ecirc;n điện thoại l&agrave; g&igrave;? C&oacute; phải l&agrave; xu hướng tương lai?</a></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024645.jpg\" onclick=\"return false;\"><img alt=\"Hỗ trợ tần số quét cao - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024645.jpg\" title=\"Hỗ trợ tần số quét cao - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<h3><strong>Sử dụng mượt m&agrave; nhờ chipset đến từ Samsung</strong></h3>\r\n\r\n<p>Điểm nổi bật nhất tr&ecirc;n Galaxy M33 l&agrave; về khả năng xử l&yacute; ổn định tr&ecirc;n c&aacute;c t&aacute;c vụ cơ bản h&agrave;ng ng&agrave;y như l&agrave; lướt web, lướt facebook, tiktok, nghe gọi, nhắn tin, đọc b&aacute;o nhờ trang bị chipset được ch&iacute;nh&nbsp;<a href=\"https://www.thegioididong.com/samsung\">Samsung</a>&nbsp;nghi&ecirc;n cứu v&agrave; ph&aacute;t triển mang t&ecirc;n Exynos 1280 8 nh&acirc;n c&oacute; hiệu suất tối đa 2.4 GHz.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024647.jpg\" onclick=\"return false;\"><img alt=\"Trải nghiệm mượt mà - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024647.jpg\" title=\"Trải nghiệm mượt mà - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p>M&igrave;nh c&oacute; d&ugrave;ng qua ứng dụng đ&aacute;nh gi&aacute; hiệu năng để kiểm tra xem Galaxy M33 c&oacute; thực sự khai th&aacute;c tối đa sức mạnh tr&ecirc;n chip hay kh&ocirc;ng v&agrave; kết quả c&oacute; được như sau: 739 (đơn nh&acirc;n), 1876 (đa nh&acirc;n) tr&ecirc;n BenchMark v&agrave; 10390 điểm tr&ecirc;n PCMark.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024648.jpg\" onclick=\"return false;\"><img alt=\"Điểm đánh giá hiệu năng - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024648.jpg\" title=\"Điểm đánh giá hiệu năng - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><em>*BenchMark b&ecirc;n tr&aacute;i v&agrave; PCMark b&ecirc;n phải</em></p>\r\n\r\n<p>Để mang đến cho người d&ugrave;ng một c&aacute;i nh&igrave;n trực quan nhất về khả năng chơi game tr&ecirc;n Galaxy M33 5G, th&igrave; m&igrave;nh đ&atilde; chơi qua hai tựa game hiện đang rất thịnh h&agrave;nh l&agrave; Li&ecirc;n Qu&acirc;n Mobile v&agrave; PUBG Mobile.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024650.jpg\" onclick=\"return false;\"><img alt=\"Trải nghiệm chơi game - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024650.jpg\" title=\"Trải nghiệm chơi game - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p>Đầu li&ecirc;n l&agrave; Li&ecirc;n Qu&acirc;n Mobile ở mức c&agrave;i đặt cấu h&igrave;nh cao nhất m&agrave; m&aacute;y đạt được, m&aacute;y vận h&agrave;nh kh&aacute; l&agrave; trơn tru từ giai đoạn chọn tướng cho đến đi đường, nh&acirc;n vật di chuyển mượt m&agrave; v&agrave; kh&ocirc;ng thấy t&igrave;nh trạng giật lag khi tung skill, những pha giao tranh tổng cũng được xử l&yacute; một c&aacute;ch ổn định với tốc độ khung h&igrave;nh dao động loanh quanh 55 - 60 PFS.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024652.jpg\" onclick=\"return false;\"><img alt=\"Cấu hình Liên Quân Mobile - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024652.jpg\" title=\"Cấu hình Liên Quân Mobile - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><em>*Cấu h&igrave;nh (b&ecirc;n tr&ecirc;n) v&agrave; mức FPS đo được (b&ecirc;n dưới)</em></p>\r\n\r\n<p>Tiếp đến l&agrave; PUBG Mobile ở mức đồ họa HD v&agrave; tốc độ khung h&igrave;nh cao, h&igrave;nh ảnh game cho ra tr&ocirc;ng kh&aacute; ch&acirc;n thực, quang cảnh được t&aacute;i hiện r&otilde; r&agrave;ng gi&uacute;p m&igrave;nh nhận diện kẻ địch ch&iacute;nh x&aacute;c hơn, t&igrave;nh trạng khựng nhẹ đ&ocirc;i l&uacute;c vẫn c&ograve;n diễn ra nhưng kh&ocirc;ng đến mức kh&oacute; chịu, FPS dao động loanh quanh mức 28 - 30.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024654.jpg\" onclick=\"return false;\"><img alt=\"Cấu hình PUBG Mobile - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024654.jpg\" title=\"Cấu hình PUBG Mobile - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><em>*Cấu h&igrave;nh (b&ecirc;n tr&ecirc;n) v&agrave; mức FPS đo được (b&ecirc;n dưới)</em></p>\r\n\r\n<p>Về phần đ&oacute;ng/mở ứng dụng hay thao t&aacute;c đa nhiệm đều được Galaxy M33 5G xử l&yacute; su&ocirc;n sẻ v&agrave; cực kỳ nhanh ch&oacute;ng m&agrave; kh&ocirc;ng gặp phải t&igrave;nh trạng tải lại từ đầu, bởi được hỗ trợ t&iacute;nh năng &ldquo;RAM Plus&rdquo; gi&uacute;p n&acirc;ng tổng số RAM l&ecirc;n đến 12 GB (6 GB mặc định + 6 GB mở rộng).</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/virtual-ram-tren-smartphone-la-gi-day-la-xu-huong-tuong-lai-1337924\" target=\"_blank\">RAM ảo (Virtual RAM) tr&ecirc;n smartphone l&agrave; g&igrave;?</a></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024656.jpg\" onclick=\"return false;\"><img alt=\"Đa nhiệm mượt mà - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024656.jpg\" title=\"Đa nhiệm mượt mà - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<h3><strong>Kh&aacute;m ph&aacute; thế giới xung quanh một c&aacute;ch r&otilde; n&eacute;t</strong></h3>\r\n\r\n<p>Galaxy M33 5G sở hữu 4 camera được đặt đối xứng trong một cụm ở phần mặt lưng với th&ocirc;ng số kỹ thuật lần lượt: Camera ch&iacute;nh 50 MP, camera g&oacute;c si&ecirc;u rộng 5 MP, v&agrave; hai cảm biến x&oacute;a ph&ocirc;ng, macro c&oacute; c&ugrave;ng độ ph&acirc;n giải 2 MP.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024658.jpg\" onclick=\"return false;\"><img alt=\"Trang bị 4 ống kính - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024658.jpg\" title=\"Trang bị 4 ống kính - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p>Với c&aacute;c bức ảnh chụp đủ s&aacute;ng m&aacute;y mang lại bức ảnh c&oacute; độ chi tiết cao, m&agrave;u sắc được t&aacute;i hiện kh&aacute; ch&iacute;nh x&aacute;c v&agrave; gần như kh&ocirc;ng bị lệch m&agrave;u, hỗ trợ cho c&aacute;c c&ocirc;ng việc chỉnh sửa - in ấn kh&aacute; tốt.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024700.jpg\" onclick=\"return false;\"><img alt=\"Chính xác về màu sắc - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024700.jpg\" title=\"Chính xác về màu sắc - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p>Chất lượng chụp đ&ecirc;m th&igrave; Galaxy M33 cho ra kết quả kh&aacute; tốt tuy nhi&ecirc;n vẫn c&ograve;n một số chi tiết được t&aacute;i hiện chưa tốt, c&ograve;n nh&ograve;e ở những v&ugrave;ng c&oacute; độ s&aacute;ng cao, khi m&igrave;nh c&oacute; bật t&iacute;nh năng &ldquo;Ban đ&ecirc;m (Night Mode)&rdquo; th&igrave; thấy t&igrave;nh trạng n&agrave;y được cải thiện đi đ&ocirc;i ch&uacute;t.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024702.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp đêm - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024702.jpg\" title=\"Ảnh chụp đêm - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p>Ở chế độ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-xoa-phong\" target=\"_blank\">x&oacute;a ph&ocirc;ng</a>&nbsp;th&igrave; bức ảnh mang lại tr&ocirc;ng c&oacute; chiều s&acirc;u, phần l&agrave;m mờ kh&ocirc;ng bị lẹm v&agrave;o chủ thể qu&aacute; nhiều, độ chi tiết ở mức ổn trong ph&acirc;n kh&uacute;c gi&aacute;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024703.jpg\" onclick=\"return false;\"><img alt=\"Chụp ảnh xóa phông - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024703.jpg\" title=\"Chụp ảnh xóa phông - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p>Về khả năng chụp ảnh&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-macro\" target=\"_blank\">Macro</a>&nbsp;th&igrave; m&agrave;u sắc mang lại c&oacute; độ tương phản tương đối cao v&agrave; tốc độ bắt n&eacute;t ổn, gi&uacute;p m&igrave;nh c&oacute; được những bức ảnh nghệ thuật một c&aacute;ch nhanh ch&oacute;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-025947.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp macro - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-025947.jpg\" title=\"Ảnh chụp macro - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<h3><strong>Sử dụng thoải m&aacute;i với vi&ecirc;n pin tr&acirc;u</strong></h3>\r\n\r\n<p>Cung cấp năng lượng cho Galaxy M33 l&agrave; vi&ecirc;n pin 5000 mAh mang đến thời lượng sử dụng hơn 8 tiếng* khi m&agrave; m&igrave;nh d&ugrave;ng thiết bị để l&agrave;m việc, giải tr&iacute;. Với thời gian sử dụng l&acirc;u như vậy l&agrave;m m&igrave;nh kh&aacute; l&agrave; an t&acirc;m, kh&ocirc;ng qu&aacute; lo lắng đến việc hết pin giữa chừng l&agrave;m gi&aacute;n đoạn trải nghiệm.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024708.jpg\" onclick=\"return false;\"><img alt=\"Thời lượng sử dụng - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024708.jpg\" title=\"Thời lượng sử dụng - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p>Thời gian sạc l&agrave;m m&igrave;nh hơi bất ngờ khi chỉ mất 1 giờ 36 ph&uacute;t* để lấp đầy vi&ecirc;n pin từ 0 - 100%, được biết đ&acirc;y l&agrave; th&agrave;nh quả của việc t&iacute;ch hợp c&ocirc;ng nghệ sạc nhanh 25 W do Samsung hỗ trợ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024710.jpg\" onclick=\"return false;\"><img alt=\"Thời gian sạc - Samsung Galaxy M33 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/256197/samsung-galaxy-m33-5g-200422-024710.jpg\" title=\"Thời gian sạc - Samsung Galaxy M33 5G\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><em>*Thời gian sử dụng/sạc c&oacute; thể thay đổi t&ugrave;y v&agrave;o t&aacute;c vụ v&agrave; nhiệt độ của m&aacute;y</em></p>\r\n\r\n<p>Samsung Galaxy M33 5G với khả năng xử l&yacute; c&aacute;c t&aacute;c vụ h&agrave;ng ng&agrave;y hay chơi game ổn định, chụp ảnh sắc n&eacute;t đến từng chi tiết nhỏ nhờ camera 50 MP c&ugrave;ng một diện mạo v&ocirc; c&ugrave;ng bắt mắt v&agrave; thời thượng, xứng đ&aacute;ng l&agrave; một sự lựa chọn ưu ti&ecirc;n h&agrave;ng đầu trong ph&acirc;n kh&uacute;c điện thoại tầm trung - gi&aacute; rẻ.</p>\r\n', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `ma_th` int(10) NOT NULL,
  `ten_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghichu_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_th` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_th` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`ma_th`, `ten_th`, `ghichu_th`, `logo_th`, `hinh_th`) VALUES
(7, 'Iphone', 'iphone', '3547225908 . logo_iphone.png', '3547225908 . iphone.png'),
(8, 'Samsung', 'samsung', 'e8e30de4b4 . logo_samsung.png', 'e8e30de4b4 . samsung.png'),
(10, 'Lenove', 'lenove', '46fda4ebf9 . logo_lenovo.png', '46fda4ebf9 . lenovo.png'),
(11, 'Macbook', 'macbook', 'be01c71a97 . logo_macbook.png', 'e9596252ae . macbook.jpg'),
(12, 'Xiaomi', 'xiaomi', '0d02b17674 . logo_xiaomi.png', '0d02b17674 . '),
(13, 'Vivo', 'vivo', 'cfc0bdc6d5 . logo_vivo.png', 'cfc0bdc6d5 . '),
(14, 'Realme', 'realme', 'c92d970e28 . logo_realme.png', 'c92d970e28 . '),
(15, 'Nokia', 'nokia', '65a47a420a . logo_nokia.jpg', '65a47a420a . '),
(16, 'Oppo', 'oppo', '87f961a74a . logo_oppo.jpg', '87f961a74a . '),
(17, 'Asus', 'asus', '7bc56fd131 . logo_asus.png', '7bc56fd131 . '),
(18, 'Hp', 'hp', '06f57abbca . logo_hp.png', '53f1be4e7d . hp.jpg'),
(19, 'Acer', 'acer', '2e521ea9f8 . logo_acer.png', '2e521ea9f8 . '),
(20, 'Dell', 'dell', '9dd98d6f79 . logo_dell.png', '9dd98d6f79 . '),
(21, 'MSI', 'msi', 'e0b06e5483 . logo_msi.png', 'e0b06e5483 . '),
(22, 'LG', 'lg', '58b19a15b5 . logo_lg.png', '58b19a15b5 . '),
(23, 'Gigabyte', 'gigabyte', 'd8a7071dbc . logo_gigabyte.png', 'd8a7071dbc . '),
(24, 'Intel', 'intel', 'ba031f3f10 . logo_itel.jpg', 'ba031f3f10 . '),
(25, 'Chuwi', 'chuwi', 'b58673a34b . logo_chuwi.png', 'b58673a34b . '),
(26, 'Ipad', 'ipad', '9d5d8a3de2 . logo_ipad.jpg', '9d5d8a3de2 . '),
(27, 'Masstel', 'masstel', '2502a833ca . logo_masstel.png', '2502a833ca . '),
(28, 'Huawei', 'huawei', '6a61cf1e12 . logo_huawei.jpg', '6a61cf1e12 . '),
(29, 'Watch', 'watch', '9b3af1fcec . logo_watch.png', '9b3af1fcec . '),
(30, 'Garmin', 'garmin', '91a1cbac40 . logo_garmin.png', '91a1cbac40 . '),
(31, 'Befit', 'befit', 'fa7ca4fe81 . logo_befit.png', 'fa7ca4fe81 . '),
(32, 'Kiddcare', 'kiddcare', '906975fb61 . logo_kidcare.png', '906975fb61 . '),
(33, 'Amazfit', 'amazfit', '807237f61f . logo_amazfit.png', '807237f61f . '),
(34, 'Apple', 'apple', 'ad2e9926e6 . logo_apple.png', 'ad2e9926e6 . '),
(122, 'MVW', 'mvw', 'ff46b3f204 . ', 'ff46b3f204 . ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD PRIMARY KEY (`ma_sp`,`ma_dh`);

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
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ma_dh`);

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
  MODIFY `ma_ctsp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `ma_h` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT cho bảng `loai_sanpham`
--
ALTER TABLE `loai_sanpham`
  MODIFY `ma_lsp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `mau`
--
ALTER TABLE `mau`
  MODIFY `ma_m` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `ma_sp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `ma_th` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
