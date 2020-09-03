-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2020 at 01:37 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop_shoes`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE `tbl_account` (
  `id_account` int(11) NOT NULL,
  `display_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addres` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `points` int(9) NOT NULL DEFAULT 0,
  `img_avarta` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'img_avarta.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_account`
--

INSERT INTO `tbl_account` (`id_account`, `display_name`, `user_name`, `password`, `phone`, `email`, `addres`, `type`, `status`, `points`, `img_avarta`) VALUES
(10, 'Nguyễn Thành Nam', 'namnt721', '8713a951e6491ed5aeb7abb7b0a78d2e', '0904392248', 'namviptl@gmail.com', 'Số 18, ngõ 105 Phố Thúy Lĩnh, Lĩnh Nam Hoàng Mai, Hà Nội', 'Quản lý', 1, 999, 'img.jpg'),
(33, 'Nguyễn Thành Nam', 'namvp@gmail.com', '8575a414e7aa225bed1f6d044d3ce699', '0347173569', 'namvp@gmail.com', 'Số 18, ngõ 105 Phố Thúy Lĩnh, Lĩnh Nam Hoàng Mai, Hà Nội', 'Khách hàng', 1, 400000, 'img_avarta.png'),
(34, 'pham dang nam', 'pdnam2599@gmail.com', '8575a414e7aa225bed1f6d044d3ce699', '05242424213', 'pdnam2599@gmail.com', 'Hưng Yên', 'Khách hàng', 1, 100000, 'img_avarta.png'),
(60, 'Nguyễn Thành Nam', 'namviptl4@gmail.com', 'd1839387e159820509181dfd1baf761a', '0563054233', 'namviptl4@gmail.com', 'Lĩnh Nam', 'Khách hàng', 1, 0, 'img_avarta.png'),
(64, 'Nguyễn Thành Nam', 'namviptl1@gmail.com', '8713a951e6491ed5aeb7abb7b0a78d2e', NULL, 'namviptl1@gmail.com', NULL, 'Khách hàng', 1, 0, 'img_avarta.png'),
(70, 'Nguyễn Thành Nam', 'namvp1@gmail.com', '8575a414e7aa225bed1f6d044d3ce699', '0563054231', 'namvp1@gmail.com', 'hà nội', 'Khách hàng', 1, 0, 'img_avarta.png'),
(74, 'Nguyễn Thành Nam', 'namviptl2x@gmail.com', '8575a414e7aa225bed1f6d044d3ce699', '0563054243', 'namviptl2x@gmail.com', 'Hà Nội', 'Khách hàng', 1, 100000, 'img_avarta.png'),
(83, 'Nguyễn Thành Nam', 'namviptl2@gmail.com', '8713a951e6491ed5aeb7abb7b0a78d2e', '0563054211', 'namviptl2@gmail.com', 'Số 18, ngõ 105 Phố Thúy Lĩnh, Lĩnh Nam Hoàng Mai, Hà Nội', 'Khách hàng', 1, 700000, 'img_avarta.png'),
(84, 'Nguyễn Thành Nam', 'namvp123@gmail.com', '8713a951e6491ed5aeb7abb7b0a78d2e', '0563054441', 'namvp123@gmail.com', 'Lĩnh Nam', 'Khách hàng', 1, 400000, 'img_avarta.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id_cate` int(11) NOT NULL,
  `cate_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_cate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id_cate`, `cate_name`, `date_cate`) VALUES
(2, 'ADIDAS', '2020-08-04 22:16:27'),
(3, 'NIKE', '2020-08-04 22:16:31'),
(18, 'VANS', '2020-08-05 14:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `size` tinyint(2) NOT NULL,
  `quantity_order` tinyint(3) NOT NULL,
  `price_detail` float NOT NULL,
  `total` float NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id_order`, `id_product`, `size`, `quantity_order`, `price_detail`, `total`, `status`) VALUES
(69, 45, 37, 1, 2500000, 2500000, 1),
(70, 44, 37, 1, 1900000, 1900000, 1),
(70, 45, 37, 1, 2500000, 2500000, 1),
(71, 45, 37, 1, 2500000, 2500000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `id_discount` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `percent` tinyint(3) NOT NULL DEFAULT 0,
  `day_create` datetime NOT NULL DEFAULT current_timestamp(),
  `end_day` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_discount`
--

INSERT INTO `tbl_discount` (`id_discount`, `code`, `percent`, `day_create`, `end_day`) VALUES
(1, '0', 0, '2020-08-13 19:49:00', '0000-00-00 00:00:00'),
(2, 'FREESHIP', 20, '2020-08-20 14:16:37', '2020-08-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_img_product`
--

CREATE TABLE `tbl_img_product` (
  `id_product` int(11) NOT NULL,
  `name_img_1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_img_2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_img_3` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_img_product`
--

INSERT INTO `tbl_img_product` (`id_product`, `name_img_1`, `name_img_2`, `name_img_3`) VALUES
(1, '1_1.jpg', '1_2.jpg', '1_3.jpg'),
(2, '2_1.jpg', '2_2.jpg', '2_3.jpg'),
(7, '7_1.jpg', '7_2.jpg', '7_3.jpg'),
(10, '10_1.jpg', '10_2.jpg', '10_3.jpg'),
(20, '20_giay-adidas-nmd-r113.jpg', '20_giay-adidas-nmd-r115.jpg', '20_giay-adidas-nmd-r1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `note` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `minus_points` int(11) NOT NULL,
  `percent` tinyint(3) NOT NULL,
  `sum_total` float NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Đang xử lý',
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `id_account`, `note`, `minus_points`, `percent`, `sum_total`, `status`, `date_order`) VALUES
(60, 83, 'Không dùng gì cả', 0, 0, 2500000, 'Đang xử lý', '2020-08-31 04:51:55'),
(61, 83, 'dùng điểm', 100000, 0, 1800000, 'Đang giao', '2020-08-31 04:52:19'),
(62, 83, 'dùng mã giảm giá', 0, 20, 1840000, 'Đã hủy', '2020-08-31 04:53:01'),
(63, 83, 'Dùng cả 2', 3000000, 20, 0, 'Hoàn thành', '2020-08-31 05:00:28'),
(69, 83, '', 0, 0, 2500000, 'Đang xử lý', '2020-09-01 16:58:57'),
(70, 83, '', 0, 0, 4400000, 'Hoàng thành', '2020-09-01 17:01:37'),
(71, 84, '', 0, 0, 2500000, 'Đang xử lý', '2020-09-03 15:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int(11) NOT NULL,
  `id_cate` int(11) NOT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(5) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mô tả sản phẩm',
  `date_creat` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `percent` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `id_cate`, `product_name`, `quantity`, `price`, `img`, `description`, `date_creat`, `status`, `percent`) VALUES
(1, 3, 'Giày Nike M2K Tekno trắng bạc', 100, 1500000, 'Nike-M2K-Tekno-Cool-White-300x300.jpg', 'Nike M2K Tekno trắng bạc', '2020-08-08 21:19:48', 'new', 0),
(2, 3, 'Giày Nike M2K Tekno trắng cam', 100, 1500000, 'Nike-M2K-Tekno-White-Black-Orange-Replica-300x300.jpg', 'Nike M2K Tekno trắng cam', '2020-08-08 22:33:34', 'sale', 20),
(7, 2, 'Giày Adidas Prophere đen đế trắng', 100, 1200000, '2_giay-adidas-prophere-den-de-trang-replica-300x300.jpg', 'Adidas Prophere đen đế trắng', '2020-08-18 22:10:56', 'sale', 35),
(8, 2, 'Giày Adidas Yeezy 700 V3 Alvah', 100, 2500000, '2_giay-adidas-Yeezy-Boost-700-V3-Alvah-replica-1-300x300.jpeg', 'Adidas Yeezy 700 V3 Alvah', '2020-08-18 22:14:17', 'sale', 33),
(9, 2, 'Giày Adidas Yeezy 700 Utility Black', 100, 2500000, '2_Giay-adidas-yeezy-700-utility-black-replica-2-300x300.jpg', 'Adidas Yeezy 700 Utility Black', '2020-08-18 22:14:55', 'new', 0),
(10, 18, 'Giày Vans Vault Old Skool Black White', 100, 1200000, 'vans-vault-old-skool-black-white-replica-300x300.jpeg', 'Vans Vault Old Skool Black White', '2020-08-24 00:10:06', 'sale', 34),
(11, 2, 'Giày Adidas Prophere đen sọc trắng', 100, 1200000, '2_adidas-prophere-den-trang-replica-300x300.jpg', 'Giày Adidas Prophere đen sọc trắng', '2020-08-30 23:24:29', 'old', 25),
(12, 2, 'Giày Adidas Prophere đỏ mận', 100, 1200000, '2_adidas-prophere-do-man-replica-1-300x300.jpg', 'Adidas Prophere đỏ mận', '2020-08-30 23:26:10', 'new', 0),
(13, 2, 'Giày Adidas Prophere xanh đậm', 100, 1200000, '2_adidas-prophere-xanh-dam-replica-300x300.jpg', 'Giày Adidas Prophere xanh đậm', '2020-08-30 23:26:56', 'new', 0),
(14, 2, 'Giày Adidas Alphabounce Instinct M xám đỏ', 100, 2000000, '2_Giay-Adidas-Alphabounce-Instinct-M-xam-do-replica1-300x300.jpg', 'Giày Adidas Alphabounce Instinct M xám đỏ', '2020-08-30 23:27:38', 'sale', 10),
(15, 2, 'Giày Adidas Alphabounce Instinct M full đen', 100, 2000000, '2_giay-adidas-alphabounce-instinct-m-full-den-replica-5-300x300.jpg', 'Giày Adidas Alphabounce Instinct M full đen', '2020-08-30 23:28:18', 'new', 0),
(16, 2, 'Giày Adidas Alphabounce Instinct M xám xanh', 100, 2000000, '2_Giay-Adidas-Alphabounce-Instinct-M-xam-xanh-300x300.jpg', 'Giày Adidas Alphabounce Instinct M xám xanh', '2020-08-30 23:28:47', 'sale', 45),
(17, 2, 'Giày Adidas Alphabounce Instinct M đen trắng', 100, 2000000, '2_Giay-Adidas-Alphabounce-Instinct-M-trang-do-300x300.jpg', 'Giày Adidas Alphabounce Instinct M đen trắng', '2020-08-30 23:29:14', 'new', 0),
(18, 2, 'Giày Adidas Alphabounce Beyond hồng xám', 100, 1400000, '2_giay-adidas-alphabounce-hong-cat-replica-300x300.jpg', 'Giày Adidas Alphabounce Beyond hồng xám', '2020-08-30 23:31:14', 'sale', 37),
(19, 2, 'Giày Adidas EQT Bask ADV đen trắng phản quang', 100, 1300000, '2_adidas-eqt-trang-den-phan-quang-replica-300x300.jpg', 'Giày Adidas EQT Bask ADV đen trắng phản quang', '2020-08-30 23:33:41', 'sale', 39),
(20, 2, 'Giày Adidas NMD R1 Japan White', 100, 1350000, '2_giay-adidas-nmd-r113.jpg', 'Giày Adidas NMD R1 Japan White', '2020-08-30 23:36:10', 'new', 0),
(21, 3, 'Giày Nike Air Jordan 1 Low SB UNC', 100, 2000000, '3_giay-nike-air-jordan-low-sb-unc-300x300.jpg', 'Giày Nike Air Jordan 1 Low SB UNC', '2020-08-30 23:44:27', 'new', 0),
(22, 3, 'Giày Nike Air Force 1 Shadow Beige Pale Ivory', 100, 1300000, '3_Nike-Air-Force-1-Shadow-Beige-Pale-Ivory-replica-300x300.jpg', 'Giày Nike Air Force 1 Shadow Beige Pale Ivory', '2020-08-30 23:45:22', 'new', 0),
(23, 3, 'Giày Nike Air Force 1 Shadow White Magic Flamingo', 100, 1300000, '3_nike-air-force-1-shadow-white-magic-flamingo-replica-300x300.jpg', 'Giày Nike Air Force 1 Shadow White Magic Flamingo', '2020-08-30 23:45:49', 'sale', 15),
(24, 3, 'Giày Nike Air Force 1 Shadow Triple White', 100, 1300000, '3_nike-air-force-1-shadow-triple-white-replica-300x300.jpg', 'Giày Nike Air Force 1 Shadow Triple White', '2020-08-30 23:46:28', 'old', 0),
(25, 3, 'Giày Nike Air Jordan 1 Low White', 100, 2000000, '3_Air-Jordan-1-Low-Triple-White-Replica-300x300.jpg', 'Giày Nike Air Jordan 1 Low White', '2020-08-30 23:48:08', 'old', 0),
(26, 3, 'Giày Nike SB Dunk Low Ben & Jerry’s Chunky Dunky', 100, 2000000, '3_nike-sb-dunk-low-ben-jerrys-chunky-dunky-replica-300x300.jpg', 'Giày Nike SB Dunk Low Ben & Jerry’s Chunky Dunky', '2020-08-30 23:48:46', 'sale', 27),
(27, 3, 'Giày Nike Air Max 270 hồng', 100, 2000000, '3_giay-nike-air-max-270-hong-replica-300x300.jpg', 'Giày Nike Air Max 270 hồng', '2020-08-30 23:49:18', 'sale', 29),
(28, 3, 'Giày Nike Air Max 97 full đen', 100, 1500000, '3_giay-nike-air-max-97-full-den-replica-300x300.jpg', 'Giày Nike Air Max 97 full đen', '2020-08-30 23:49:52', 'old', 0),
(29, 3, 'Giày Nike Air Jordan 1 Retro High Dior', 100, 3000000, '3_giay-nike-air-jordan-1-dior-replica-300x300.jpg', 'Giày Nike Air Jordan 1 Retro High Dior', '2020-08-30 23:52:07', 'new', 0),
(30, 3, 'Giày Nike Air Uptempo xanh trắng', 100, 1600000, '2_nike-air-uptempo-trang-xanh-replica-300x300.jpg', 'Giày Nike Air Uptempo xanh trắng', '2020-08-30 23:52:51', 'new', 0),
(31, 3, 'Giày Nike Air Uptempo trắng đỏ', 100, 1600000, '3_nike-air-uptempo-trang-do-replica-300x300.jpg', 'Giày Nike Air Uptempo trắng đỏ', '2020-08-30 23:53:23', 'new', 0),
(34, 18, 'Giày Vans UA Authentuc Packing Tape', 100, 1350000, '18_VN0A2Z5IWN4-300x300.jpg', 'Giày Vans UA Authentuc Packing Tape', '2020-08-31 00:08:56', 'sale', 12),
(35, 18, 'Giày Vans Authentic National Geographic', 100, 1450000, '18_VN0A2Z5I002-300x300.jpg', 'Vans Authentic National Geographic', '2020-08-31 00:10:56', 'old', 0),
(36, 18, 'Giày Vans UA Authentic SF KIDE', 100, 1600000, '18_VN0A3MU6WOK-300x300.jpg', 'Vans UA Authentic SF KIDE', '2020-08-31 00:11:52', 'sale', 23),
(37, 18, 'Giày Vans UA Authentic Iridescent Check', 100, 1450000, '18_VN0A2Z5ISRY-2-300x300.jpg', 'Vans UA Authentic Iridescent Check', '2020-08-31 00:13:06', 'sale', 13),
(38, 18, 'Giày Vans Authentic Pig Suede', 100, 1900000, '18_VN0A2Z5IV77-1-300x300.jpg', 'Vans Authentic Pig Suede', '2020-08-31 00:13:54', 'sale', 11),
(39, 18, 'Giày Vans Authentic 44 DX Anaheim Factory', 100, 1900000, '18_VN0A38ENMR9-DRAKE-300x300.jpg', 'Vans Authentic 44 DX Anaheim Factory', '2020-08-31 00:15:06', 'old', 0),
(40, 18, 'Giày Vans Authentic OTW Repeat', 100, 1400000, '2_VN0A38EMUKL-DRAKE-300x300.jpg', '<p>Vans Authentic OTW Repeat</p>\r\n', '2020-08-31 00:16:00', 'sale', 29),
(41, 18, 'Giày Vans UA Authentic Patchwork Denim', 100, 1500000, '18_VN0A38EMQ9H-DRAKE-300x300.jpg', 'Vans UA Authentic Patchwork Denim', '2020-08-31 00:17:29', 'new', 0),
(42, 18, 'Giày Vans Anaheim Factory Sid DX Red', 100, 2300000, '18_VN0A4BTXVTM-300x300.jpg', 'VANS ANAHEIM FACTORY SID DX', '2020-08-31 00:18:55', 'new', 0),
(43, 18, 'Giày Vans UA SK8-HI 38 DX Anaheim Factory', 100, 2400000, '18_VN0A38GFTIO-300x300.jpg', 'Vans UA SK8-HI 38 DX Anaheim Factory', '2020-08-31 00:21:02', 'old', 0),
(44, 18, 'Giày Vans UA Era Mother Earth', 100, 1900000, '18_VN0A4U39WZ2-300x300.jpg', '<p>Vans UA Era Mother Earths</p>\r\n', '2020-08-31 00:22:02', 'new', 0),
(45, 18, 'Vans UA Style 238 Mother earth', 100, 2500000, '18_VN0A3JFIWZ2-300x300.jpg', 'Vans UA Style 238 Mother earth', '2020-08-31 00:22:43', 'new', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size_shoes`
--

CREATE TABLE `tbl_size_shoes` (
  `id_size` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `size` tinyint(2) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_star_rating`
--

CREATE TABLE `tbl_star_rating` (
  `id_product` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `rating_proc` text COLLATE utf8_unicode_ci NOT NULL,
  `day_create` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_star_rating`
--

INSERT INTO `tbl_star_rating` (`id_product`, `id_account`, `rating`, `rating_proc`, `day_create`) VALUES
(1, 10, 4, 'ewqq', '2020-08-23 21:16:32'),
(1, 33, 5, 'tuyệt', '2020-08-23 21:16:32'),
(1, 34, 3, 'sản phẩm oke', '2020-08-23 21:16:32'),
(1, 60, 5, 'oke', '2020-08-30 10:04:22'),
(2, 33, 5, 'sản phẩm tốt', '2020-08-25 13:31:12'),
(7, 33, 5, 'd', '2020-08-23 21:16:32'),
(7, 34, 5, 'Sản phẩm rất tốt', '2020-08-24 12:42:33'),
(8, 33, 1, 'sơn ngu', '2020-08-23 21:16:32'),
(8, 34, 5, 'oke', '2020-08-27 19:57:40'),
(9, 33, 5, 'sản phẩm tốt', '2020-08-23 21:16:32'),
(9, 34, 1, 'sơn ngu', '2020-08-27 19:57:15'),
(9, 60, 5, 'sản phẩm tốt', '2020-08-30 10:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status_order`
--

CREATE TABLE `tbl_status_order` (
  `id_order` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`id_account`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id_cate`);

--
-- Indexes for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id_order`,`id_product`,`size`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`id_discount`);

--
-- Indexes for table `tbl_img_product`
--
ALTER TABLE `tbl_img_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_customer` (`id_account`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_cate` (`id_cate`);

--
-- Indexes for table `tbl_size_shoes`
--
ALTER TABLE `tbl_size_shoes`
  ADD PRIMARY KEY (`id_size`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `tbl_star_rating`
--
ALTER TABLE `tbl_star_rating`
  ADD PRIMARY KEY (`id_product`,`id_account`),
  ADD KEY `id_account` (`id_account`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `tbl_status_order`
--
ALTER TABLE `tbl_status_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_order` (`id_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `id_discount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_size_shoes`
--
ALTER TABLE `tbl_size_shoes`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD CONSTRAINT `fk_id_order_tbl_detail_order_tbl_order` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_product_tbl_detail_order_tbl_product` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_img_product`
--
ALTER TABLE `tbl_img_product`
  ADD CONSTRAINT `fk_id_product_tbl_img_product_tbl_product` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`);

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `fk_id_customer_tbl_order_tbl_customer` FOREIGN KEY (`id_account`) REFERENCES `tbl_account` (`id_account`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `fk_id_cate_tbl_product_tbl_category` FOREIGN KEY (`id_cate`) REFERENCES `tbl_category` (`id_cate`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_size_shoes`
--
ALTER TABLE `tbl_size_shoes`
  ADD CONSTRAINT `fk_id_product_tbl_size_shoes_tbl_product` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_star_rating`
--
ALTER TABLE `tbl_star_rating`
  ADD CONSTRAINT `fk_id_account_tbl_star_rating_tbl_account` FOREIGN KEY (`id_account`) REFERENCES `tbl_account` (`id_account`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_product_tbl_star_rating_tbl_product` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_status_order`
--
ALTER TABLE `tbl_status_order`
  ADD CONSTRAINT `fk_id_order_tbl_status_order_tbl_order` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
