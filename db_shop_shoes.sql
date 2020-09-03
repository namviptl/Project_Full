-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 03, 2020 lúc 01:55 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_shop_shoes`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_account`
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
-- Đang đổ dữ liệu cho bảng `tbl_account`
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
-- Cấu trúc bảng cho bảng `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id_post` int(11) NOT NULL,
  `post_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateTime` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_blog`
--

INSERT INTO `tbl_blog` (`id_post`, `post_avatar`, `post_name`, `description`, `content`, `dateTime`, `created`, `updated`) VALUES
(1, '1.jpg', 'VỆ SINH GIÀY VANS TRẮNG TINH NHƯ MỚI MUA CHỈ TRONG 4 BƯỚC ĐƠN GIẢN\r\n', 'Một đôi giày Vans trắng là lựa chọn tuyệt vời cho những bộ trang phục dạo phố cuối tuần, nhưng đồng thời đây cũng là đối tượng dễ dàng bị bám bẩn. Làm thế nào để làm sạch đôi giày Vans trắng cho kế hoạch đi chơi tuần này và phải làm thật nhanh để đôi giày', '<p>Một đ&ocirc;i gi&agrave;y&nbsp;<strong>Vans</strong>&nbsp;trắng l&agrave; lựa chọn tuyệt vời cho những bộ trang phục dạo phố cuối tuần, nhưng đồng thời đ&acirc;y cũng l&agrave; đối tượng dễ d&agrave;ng bị b&aacute;m bẩn. L&agrave;m thế n&agrave;o để l&agrave;m sạch đ&ocirc;i gi&agrave;y&nbsp;<strong>Vans&nbsp;</strong>trắng cho kế hoạch đi chơi tuần n&agrave;y? Dưới đ&acirc;y l&agrave; 4 bước cực đơn giản m&agrave; bất kỳ ai cũng c&oacute; thể thực hiện.</p>\r\n\r\n<ol>\r\n	<li><strong>Chuẩn bị nguy&ecirc;n liệu</strong></li>\r\n</ol>\r\n\r\n<p>Để bắt đầu, tất cả những g&igrave; bạn cần l&agrave;:</p>\r\n\r\n<ul>\r\n	<li>2 c&aacute;i b&aacute;t.</li>\r\n	<li>Nước sạch, bột giặt.</li>\r\n	<li>Một c&aacute;i b&agrave;n chải ch&agrave; chắc chắn.</li>\r\n	<li>V&agrave; một chiếc khăn sạch.</li>\r\n</ul>\r\n\r\n<p>Bước 1 trong chuỗi thao t&aacute;c vệ sinh gi&agrave;y&nbsp;<strong>Vans&nbsp;</strong>trắng đ&atilde; ho&agrave;n th&agrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://bizweb.dktcdn.net/100/140/774/files/white-vans-1.jpg?v=1594969922520\" style=\"height:464px; width:700px\" /></p>\r\n\r\n<ol start=\"2\">\r\n	<li><strong>Trộn nguy&ecirc;n liệu vệ sinh gi&agrave;y</strong></li>\r\n</ol>\r\n\r\n<p>Đầu ti&ecirc;n, h&atilde;y trộn hai cốc nước ấm với &frac14; ch&eacute;n bột giặt.</p>\r\n\r\n<p>Tiếp đến, nh&uacute;ng b&agrave;n chải ch&agrave; v&agrave;o phần dung dịch lỏng đ&atilde; pha, nhẹ nh&agrave;ng ch&agrave; l&ecirc;n bền mặt của gi&agrave;y. Bạn c&oacute; thể sử dụng một chiếc b&agrave;n chải đ&aacute;nh răng cũ để l&agrave;m sạch bề mặt cao su.</p>\r\n\r\n<p>Bạn n&ecirc;n đặt một b&aacute;t nước sạch, ấm kh&aacute;c, qu&aacute; tr&igrave;nh vệ sinh&nbsp;<strong>Vans&nbsp;</strong>trắng sẽ xen kẽ giữa 2 thao t&aacute;c: ch&agrave; tr&ecirc;n gi&agrave;y v&agrave; nhung b&agrave;n chải v&agrave;o nước ấm định kỳ. Việc n&agrave;y sẽ hạn chế t&igrave;nh trạng bụi bẩn lan rộng tr&ecirc;n vải gi&agrave;y.</p>\r\n\r\n<ol start=\"3\">\r\n	<li><strong>Lau sạch gi&agrave;y Vans</strong></li>\r\n</ol>\r\n\r\n<p>Sau khi đ&atilde; được l&agrave;m sạch bằng chiếc b&agrave;n chải, bạn cần thấm ướt chiếc khăn sạch đ&atilde; chuẩn bị trước đ&oacute; v&agrave; lau nhẹ nh&agrave;ng quanh bề mặt gi&agrave;y.</p>\r\n\r\n<p>Một lựa chọn kh&aacute;c cho bạn l&agrave; sử dụng chất tẩy vết bẩn thấm v&agrave;o khăn, lau quanh gi&agrave;y đến khi cảm thấy &ldquo;kh&ocirc;ng thể trắng hơn&rdquo;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://bizweb.dktcdn.net/100/140/774/files/white-vans-3.jpg?v=1594969946994\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<ol start=\"4\">\r\n	<li><strong>Sấy kh&ocirc; gi&agrave;y Vans trắng</strong></li>\r\n</ol>\r\n\r\n<p>Cuối c&ugrave;ng, đ&acirc;y l&agrave; thao t&aacute;c &ldquo;t&ugrave;y chọn&rdquo;: bạn c&oacute; thể thực hiện hoặc kh&ocirc;ng. Tất nhi&ecirc;n, gi&agrave;y vẫn c&oacute; thể kh&ocirc; tự nhi&ecirc;n, nhưng để gi&uacute;p ch&uacute;ng kh&ocirc; nhanh hơn, bạn c&oacute; thể sử dụng m&aacute;y sấy.</p>\r\n\r\n<p>Nếu bạn kh&ocirc;ng c&oacute; thời gian cho việc đợi chờ những đ&ocirc;i gi&agrave;y của m&igrave;nh kh&ocirc; bằng việc sấy kh&ocirc;, việc tận dụng &aacute;nh s&aacute;ng mặt trời cũng l&agrave; một điều đ&aacute;ng để thử. Tuy nhi&ecirc;n &aacute;nh s&aacute;ng mặt trời trực tiếp c&oacute; thể khiến việc ố v&agrave;ng cho đ&ocirc;i gi&agrave;y trở n&ecirc;n dễ d&agrave;ng hơn. V&igrave; vậy khi quyết định d&ugrave;ng &aacute;nh s&aacute;ng cho việc l&agrave;m kh&ocirc; đ&ocirc;i gi&agrave;y, bạn h&atilde;y:</p>\r\n\r\n<ul>\r\n	<li>D&ugrave;ng giấy vệ sinh bọc to&agrave;n bộ đ&ocirc;i gi&agrave;y tạo th&agrave;nh một lớp cản ngăn tia s&aacute;ng trực tiếp đến gi&agrave;y</li>\r\n	<li>Một lưu &yacute; d&agrave;nh cho bạn l&agrave; khi sấy&nbsp;<strong>Vans&nbsp;</strong>sẽ khiến ch&uacute;ng c&oacute; một số biến đổi về h&igrave;nh d&aacute;ng. Do đ&oacute;, bạn n&ecirc;n đặt một miếng giấy b&ocirc;ng b&ecirc;n trong gi&agrave;y để giữ d&aacute;ng của n&oacute;.</li>\r\n</ul>\r\n\r\n<p>Việc vệ sinh một đ&ocirc;i gi&agrave;y&nbsp;<strong>Vans&nbsp;</strong>trắng v&ocirc; c&ugrave;ng dễ d&agrave;ng phải kh&ocirc;ng? Bằng c&aacute;ch n&agrave;y, bạn c&oacute; thể l&agrave;m mới gi&agrave;y bất kỳ l&uacute;c n&agrave;o. Đừng qu&ecirc;n bảo quản để giữ đ&ocirc;i gi&agrave;y&nbsp;<strong>Vans&nbsp;</strong>của bạn bền hơn v&agrave; lu&ocirc;n giữ được sự tinh tươm tươi mới như ng&agrave;y đầu nh&eacute;!</p>\r\n', '18/08/2020', '2020-08-18 14:01:10', '2020-08-31 15:23:41'),
(9, '2.jpg', 'VÌ SAO GIÀY NIKE AIR FORCE 1 TRẮNG ĐƯỢC CÁC BẠN HỌC SINH LỰA CHỌN', 'Thiết kế gọn gàng, đẹp mắt & cá tính là những đặc tính cơ bản của mẫu giày Nike Air Force 1 Trắng & \"siêu phẩm\" này đang nhận được những phản hồi tích cực từ các tín đồ thời trang. Nếu bạn đam mê loại giày sneaker, yêu thích sự trẻ trung năng động và cá t', '<p>Hiện nay để mua được một đ&ocirc;i gi&agrave;y sneaker đạt đủ 3 ti&ecirc;u ch&iacute;:&nbsp;<strong>rẻ, đẹp v&agrave; chất lượng</strong>&nbsp;th&igrave; v&ocirc; c&ugrave;ng kh&oacute; khăn cho giới trẻ. V&agrave; để đ&aacute;p ứng được nhu cầu đ&oacute; n&ecirc;n thương hiệu&nbsp;<a href=\"https://giaygiare.vn/giay-nike\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"giày Nike\">gi&agrave;y Nike</a>&nbsp;đ&atilde; cho ra đời đ&ocirc;i sneaker Air Force 1 Trắng nhận được rất nhiều sự đ&oacute;n ch&agrave;o của c&aacute;c bạn học sinh. L&yacute; do tại sao m&agrave; đ&ocirc;i gi&agrave;y n&agrave;y lại được y&ecirc;u th&iacute;ch đến thế? H&atilde;y c&ugrave;ng t&igrave;m hiểu nh&eacute;.</p>\r\n\r\n<h2>Một ch&uacute;t th&ocirc;ng tin về Af1 Trắng Full</h2>\r\n\r\n<p><img alt=\"\" src=\"https://product.hstatic.net/200000042104/product/__ci0919-102___nike_air_force_1_shadow__white_magic_flamingo__44b619458adb4aa4a36c6fe197792997_master.jpg\" style=\"height:539px; width:898px\" /></p>\r\n\r\n<p>Sở dĩ đ&ocirc;i gi&agrave;y n&agrave;y được gọi l&agrave; một huyền thoại c&aacute;ch mạng trong giới Sneaker bởi v&igrave; n&oacute; được xem l&agrave; một trong những đ&ocirc;i gi&agrave;y đầu ti&ecirc;n sử dụng c&ocirc;ng nghệ ti&ecirc;n tiến nhất để tăng cường khả năng vận h&agrave;nh trong qu&aacute; tr&igrave;nh sử dụng&nbsp;<a href=\"https://giaygiare.vn/giay-air-force\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"Nike Air Force 1\">Nike Air Force 1</a>.<br />\r\nViệc &aacute;p dụng c&ocirc;ng nghệ cao v&agrave;o qu&aacute; tr&igrave;nh sản xuất đ&ocirc;i gi&agrave;y n&agrave;y bởi v&igrave; mục đ&iacute;ch ban đầu của n&oacute; l&agrave; được chế tạo cho người chơi thể thao, đặc biệt l&agrave; b&oacute;ng rổ. V&agrave; cũng ch&iacute;nh v&igrave; l&yacute; do n&agrave;y m&agrave; n&oacute; được nhiều người trong giới thể thao c&oacute; tầm ảnh hưởng nhất định đặc biệt quan t&acirc;m v&agrave; lan rộng n&oacute; đến to&agrave;n thế giới.</p>\r\n\r\n<h2>Ưu điểm giới trẻ chọn Nike Air Force 1 l&agrave; sự lựa chọn h&agrave;ng đầu</h2>\r\n\r\n<p><img alt=\"\" src=\"https://giaysneaker.com.vn/public/media//thumb/nike-air-force-1-shadow-vien-do3-570x570.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<h3>Mức gi&aacute; hợp l&yacute;, ph&ugrave; hợp với t&uacute;i tiền</h3>\r\n\r\n<p>Tất nhi&ecirc;n hiện nay học sinh hoặc sinh vi&ecirc;n kh&ocirc;ng thể c&oacute; qu&aacute; nhiều tiền để mua được một đ&ocirc;i gi&agrave;y qu&aacute; mắc cho n&ecirc;n Nike Air Force 1 với mức gi&aacute; trung b&igrave;nh m&agrave; c&ograve;n c&oacute; thể gọi l&agrave; kh&aacute; rẻ so với chất lượng của n&oacute; l&agrave; sự lựa chọn h&agrave;ng đầu.</p>\r\n\r\n<h3>M&agrave;u trắng gi&uacute;p dễ d&agrave;ng mix c&aacute;c bộ trang phục</h3>\r\n\r\n<p>Nếu c&oacute; một m&agrave;u n&agrave;o tr&ecirc;n thế giới c&oacute; thể phối hợp ho&agrave;n hảo với bất cứ một m&agrave;u sắc n&agrave;o kh&aacute;c th&igrave; đ&oacute; ch&iacute;nh l&agrave; m&agrave;u trắng. Ch&iacute;nh v&igrave; vậy ri&ecirc;ng về gi&agrave;y Nike Air Force 1 th&igrave; m&agrave;u trắng lại được rất nhiều bạn trẻ quan t&acirc;m bởi v&igrave; t&iacute;nh khả dụng của n&oacute; trong bất cứ loại trang phục n&agrave;o.</p>\r\n\r\n<p>V&igrave; nếu bạn l&agrave; một học sinh th&igrave; nhiều nh&agrave; trường sẽ c&oacute; quy định bắt buộc phải mang gi&agrave;y m&agrave;u trắng v&agrave; điều đ&oacute; thuận tiện với m&agrave;u sắc của đ&ocirc;i gi&agrave;y n&agrave;y. Bạn ho&agrave;n to&agrave;n c&oacute; thể tự tin diện Nike Air Force ở bất cứ nơi n&agrave;o, bất cứ nơi đ&acirc;u m&agrave; vẫn c&oacute; thể hợp thời trang v&agrave; v&ocirc; c&ugrave;ng thời thượng.</p>\r\n\r\n<p>H&atilde;y thử tưởng tượng bạn c&oacute; thể mix bất cứ loại trang phục từ đơn giản cho đến kh&oacute; nhằn với đ&ocirc;i gi&agrave;y thể thao m&agrave;u trắng n&agrave;y sẽ v&ocirc; c&ugrave;ng đơn giản biết bao.</p>\r\n\r\n<p>Nếu l&agrave; một buổi hẹn h&ograve; th&igrave; chỉ cần một chiếc quần Jean c&ugrave;ng với một đ&ocirc;i gi&agrave;y trắng tinh sẽ gi&uacute;p bạn c&oacute; thể g&acirc;y ấn tượng được với người ấy.<br />\r\nHoặc nếu l&agrave; một buổi tiệc c&ugrave;ng với bạn b&egrave; th&acirc;n thiết th&igrave; mix một chiếc v&aacute;y s&agrave;nh điệu c&ugrave;ng đ&ocirc;i gi&agrave;y Sneaker n&agrave;y c&oacute; thể l&agrave;m bạn trở n&ecirc;n c&aacute; t&iacute;nh nhưng vẫn c&oacute; thể thoải m&aacute;i bay nhảy trong suốt cả một buổi tiệc d&agrave;i.</p>\r\n\r\n<h3>Kh&ocirc;ng dễ bị dơ như những đ&ocirc;i gi&agrave;y trắng kh&aacute;c</h3>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/lqmctqvp/2020_04_07/af5.jpg\" style=\"height:440px; width:660px\" /></p>\r\n\r\n<p>Nếu bạn đang sợ gi&agrave;y&nbsp;<a href=\"https://giaygiare.vn/giay-nike-air-force-1-trang-full-nam-nu.html\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"Air Force 1 trắng\">Air Force 1 trắng</a>&nbsp;c&oacute; thể sẽ dễ bị dơ hoặc bị ố m&agrave;u trong qu&aacute; tr&igrave;nh sử dụng th&igrave; ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m th&igrave; đ&ocirc;i gi&agrave;y n&agrave;y được l&agrave;m bằng chất liệu cao cấp c&ugrave;ng m&agrave;u sơn c&oacute; thể khiến t&igrave;nh trạng gi&agrave;y l&uacute;c n&agrave;o cũng tr&ocirc;ng như mới.<br />\r\nNgo&agrave;i ra, nếu bạn lo lắng v&igrave; vấn đề gi&agrave;y trắng c&oacute; thể bị dơ th&igrave; ho&agrave;n to&agrave;n c&oacute; thể mua những dung dịch l&agrave;m sạch chỉ chuy&ecirc;n dụng cho gi&agrave;y thể thao để lau sau mỗi lần sử dụng. Việc n&agrave;y rất đơn giản m&agrave; lại c&oacute; thể gi&uacute;p bảo quản những đ&ocirc;i gi&agrave;y của bạn c&oacute; tuổi thọ l&acirc;u hơn cũng như s&aacute;ng m&agrave;u hơn rất nhiều.</p>\r\n\r\n<h2>Chất lượng l&agrave;m n&ecirc;n thương hiệu</h2>\r\n\r\n<p>Chắc hẳn c&aacute;c bạn sẽ kh&ocirc;ng phải &iacute;t nhất một lần nghe đến c&aacute;i t&ecirc;n Nike trong l&agrave;ng c&aacute;c &ocirc;ng lớn m&aacute;u mặt ở thị trường gi&agrave;y rồi đ&uacute;ng kh&ocirc;ng? Ch&iacute;nh v&igrave; vậy những đ&ocirc;i gi&agrave;y được thương hiệu n&agrave;y thiết kế chắc chắn sẽ rất chất lượng v&agrave; được đầu tư kỹ lưỡng rồi.<br />\r\nCho n&ecirc;n, bạn sẽ kh&ocirc;ng cần qu&aacute; lo lắng khi chọn mua Nike Air Force d&ugrave; nh&igrave;n rất thời trang nhưng lại kh&ocirc;ng hề mau hư hỏng đ&acirc;u nh&eacute;.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i tự h&agrave;o l&agrave; một nơi cung cấp những đ&ocirc;i gi&agrave;y từ nhiều thương hiệu lớn, đa dạng mẫu m&atilde; với chất lượng Replica &amp; Super Fake c&ugrave;ng với gi&aacute; cả phải chăng nhất tr&ecirc;n thị trường hiện nay.<br />\r\nH&atilde;y để ch&uacute;ng t&ocirc;i mang lại cho bạn một sản phẩm chất lượng nhất khi chọn mua gi&agrave;y thể thao n&oacute;i chung hoặc Nike Air Force 1 Trắng n&oacute;i ri&ecirc;ng.</p>\r\n', '31/08/2020', '2020-08-31 14:33:00', '2020-09-03 11:50:12'),
(10, '3.jpg', 'CÁCH LÀM TRẮNG ĐẾ GIÀY BỊ Ố VÀNG CHUẨN CHỈ - 5 CÁCH VỆ SINH AN TOÀN NHẤT', 'Adidas là một trong những hàng thời trang sneaker lớn nhất hiện nay của thế giới vì vậy hãng này luôn nghiên cứu và phát minh những công nghệ mới.. Năm 2014, adidas mang đến cho người dùng một trong những công nghệ tiên tiến lần đầu tiên được áp dụng tron', '<h3>C&aacute;ch 1: D&ugrave;ng kem đ&aacute;nh răng</h3>\r\n\r\n<p>Để thực hiện phương ph&aacute;p n&agrave;y bạn cần kem đ&aacute;nh răng v&agrave; một chiếc b&agrave;n chải. Kem đ&aacute;nh răng th&igrave; nh&agrave; n&agrave;o cũng c&oacute; rồi, đừng n&oacute;i l&agrave; nh&agrave; bạn kh&ocirc;ng c&oacute; nh&eacute;. B&agrave;n chải th&igrave; sử dụng b&agrave;n chải đ&aacute;nh răng l&agrave; tốt nhất v&igrave; độ lớn của n&oacute; cũng vừa bằng độ rộng của đế gi&agrave;y n&ecirc;n rất dễ ch&agrave;. Nếu kh&ocirc;ng c&oacute; c&aacute;i b&agrave;n chải đ&aacute;nh răng cũ n&agrave;o th&igrave; bạn sử dụng b&agrave;n chải b&igrave;nh thường cũng được.</p>\r\n\r\n<p><a href=\"https://bountysneakers.com/wp-content/uploads/2019/10/2.jpg\"><img alt=\"Bàn chải đánh răng và kem đánh răng, hoặc dung dịch vệ sinh giày\" src=\"https://bountysneakers.com/wp-content/uploads/2019/10/2.jpg\" style=\"height:570px; width:760px\" /></a></p>\r\n\r\n<p>B&agrave;n chải đ&aacute;nh răng v&agrave; kem đ&aacute;nh răng, hoặc dung dịch vệ sinh gi&agrave;y</p>\r\n\r\n<p><a href=\"https://bountysneakers.com/wp-content/uploads/2019/10/cach-lam-trang-de-giay-2.jpg\"><img alt=\"cach-lam-trang-de-giay-2\" src=\"https://bountysneakers.com/wp-content/uploads/2019/10/cach-lam-trang-de-giay-2.jpg\" style=\"height:366px; width:650px\" /></a></p>\r\n\r\n<p dir=\"ltr\">Dù tính t&acirc;̉y rửa của kem đánh răng kh&ocirc;ng mạnh nhưng v&acirc;̃n có th&ecirc;̉ t&acirc;̉y đ&ecirc;́ giày màu trắng khi chúng mới bị những v&ecirc;́t b&acirc;̉n đeo bám.</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Sau khi làm sạch bùn đ&acirc;́t tr&ecirc;n đ&ecirc;́ giày, bạn thoa trực ti&ecirc;́p kem đánh răng l&ecirc;n đ&ecirc;́ r&ocirc;̀i dùng bàn chải đánh răng đã cũ đ&ecirc;̉ chà mạnh.</strong></p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Thực hi&ecirc;̣n thao tác nhi&ecirc;̀u l&acirc;̀n cho đ&ecirc;́n khi đ&ecirc;́ giày trắng lại như lúc ban đ&acirc;̀u.</strong></p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Bước cu&ocirc;́i cùng bạn xả đ&ecirc;́ giày với nước sạch r&ocirc;̀i đ&ecirc;̉ kh&ocirc; tự nhi&ecirc;n.</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;C&aacute;ch tẩy trắng n&agrave;y chỉ n&ecirc;n d&ugrave;ng cho những đ&ocirc;i gi&agrave;y bị ố mới. Với những vết ố l&acirc;u ng&agrave;y th&igrave; kem đ&aacute;nh răng sẽ kh&ocirc;ng c&oacute; t&aacute;c dụng đ&acirc;u. Bởi vậy, nếu gi&agrave;y của bạn đ&atilde; bị ố v&agrave;ng qu&aacute; 3 th&aacute;ng th&igrave; h&atilde;y lựa chọn c&aacute;ch l&agrave;m trắng đế gi&agrave;y kh&aacute;c nh&eacute;.</p>\r\n\r\n<h3>C&aacute;ch 2: D&ugrave;ng chanh tươi</h3>\r\n\r\n<p dir=\"ltr\">Kh&ocirc;ng m&acirc;́y b&acirc;́t ngờ khi chanh tươi lu&ocirc;n có mặt trong danh sách những c&aacute;ch&nbsp;<em>l&agrave;m sạch đế gi&agrave;y m&agrave;u trắng</em>. Như đ&atilde; biết, chanh chứa h&agrave;m lượng axit rất cao n&ecirc;n nếu bạn muốn l&agrave;m trắng đế gi&agrave;y, bạn c&oacute; thể sử dụng chanh tươi để đ&aacute;nh bay&nbsp; c&aacute;c vết ố v&agrave;ng.</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Cách thức thực hi&ecirc;̣n v&ocirc; cùng đơn giản, bạn vắt chanh tươi đ&ecirc;̉ l&acirc;́y nước, đựng trong m&ocirc;̣t chén nhỏ.</strong></p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Dùng khăn m&ecirc;̀m nhúng vào nước chanh r&ocirc;̀i chà l&ecirc;n đ&ecirc;́ giày, sau đó dùng bàn chải chà th&acirc;̣t mạnh cho đ&ecirc;́n khi đ&ecirc;́ trắng trở lại. Cách làm này áp dụng với đ&ecirc;́ giày mới bị &ocirc;́ vàng, v&ecirc;́t b&acirc;̉n cứng đ&acirc;̀u có th&ecirc;̉ sẽ khó khăn hơn.</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><a href=\"https://bountysneakers.com/wp-content/uploads/2019/10/cach_lam_sach_de_giay_bi_o_vang_3.jpg\"><img alt=\"cach_lam_sach_de_giay_bi_o_vang_3\" src=\"https://bountysneakers.com/wp-content/uploads/2019/10/cach_lam_sach_de_giay_bi_o_vang_3.jpg\" style=\"height:266px; width:500px\" /></a></p>\r\n\r\n<h3>C&aacute;ch 3: D&ugrave;ng nước cốt chanh kết hợp baking soda l&agrave;m trắng đế gi&agrave;y</h3>\r\n\r\n<p><a href=\"https://bountysneakers.com/wp-content/uploads/2019/10/cach-lam-trang-de-giay-1.jpg\"><img alt=\"cach-lam-trang-de-giay-1\" src=\"https://bountysneakers.com/wp-content/uploads/2019/10/cach-lam-trang-de-giay-1.jpg\" style=\"height:418px; width:650px\" /></a></p>\r\n\r\n<p>Baking soda c&oacute; rất nhiều c&ocirc;ng dụng. Một trong những c&ocirc;ng dụng m&agrave; mọi người hay d&ugrave;ng baking soda l&agrave; tẩy trắng. Ch&iacute;nh v&igrave; vậy, nếu nh&agrave; bạn c&oacute; baking soda th&igrave; c&oacute; thể h&ograve;a baking soda với nước cốt chanh. Sau đ&oacute; nh&uacute;ng b&agrave;n chải đ&aacute;nh răng v&agrave;o hỗn hợp n&agrave;y rồi ch&agrave; nhẹ b&agrave;n chải l&ecirc;n phần đề gi&agrave;y. Ch&agrave; khoảng 2 &ndash; 3 lần, bạn sẽ thấy đế gi&agrave;y của bạn sạch hơn, trắng hơn so với trước.</p>\r\n\r\n<h3>C&aacute;ch 3: D&ugrave;ng nước lau đồ gỗ hoặc chất tẩy m&oacute;ng tay Acetone</h3>\r\n\r\n<p dir=\"ltr\">Trong nước lau đ&ocirc;̀ g&ocirc;̃ có chứa ch&acirc;́t giúp t&acirc;̉y rửa v&ecirc;́t b&acirc;̉n và làm đ&ecirc;́ giày sáng bóng hơn. N&ecirc;́u giày dính v&ecirc;́t &ocirc;́ l&acirc;u ngày, bạn hoàn toàn có th&ecirc;̉ sử dụng dung dịch này đ&ecirc;̉ giặt rửa.</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Sau khi loại bùn đ&acirc;́t khỏi đ&ecirc;́ giày, bạn dùng m&ocirc;̣t chi&ecirc;́c khăn m&ecirc;̀m nhúng vào nước lau đ&ocirc;̀ g&ocirc;̃ r&ocirc;̀i chà l&ecirc;n ph&acirc;̀n đ&ecirc;́ giày, nh&acirc;́t là ph&acirc;̀n đ&ecirc;́ bị &ocirc;́ vàng.</strong></p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Ti&ecirc;́p tục chà cho đ&ecirc;́n khi đ&ecirc;́ giày trắng trở lại.</strong></p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Dùng m&ocirc;̣t chi&ecirc;́c khăn sạch khác đ&ecirc;̉ lau lại ph&acirc;̀n đ&ecirc;́ r&ocirc;̀i đặt giày ở nơi thoáng gió đ&ecirc;̉ giày kh&ocirc; là bạn có th&ecirc;̉ sử dụng được.</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><a href=\"https://bountysneakers.com/wp-content/uploads/2019/10/giat_giay_bang_nuoc_tay_rua_mong_tay.jpg\"><img alt=\"giat_giay_bang_nuoc_tay_rua_mong_tay\" src=\"https://bountysneakers.com/wp-content/uploads/2019/10/giat_giay_bang_nuoc_tay_rua_mong_tay.jpg\" style=\"height:450px; width:800px\" /></a></p>\r\n\r\n<h3>C&aacute;ch 4: D&ugrave;ng dấm ăn</h3>\r\n\r\n<p dir=\"ltr\">D&acirc;́m trắng cũng là nguy&ecirc;n li&ecirc;̣u quen thu&ocirc;̣c có mặt ngay trong gian b&ecirc;́p m&agrave; bạn c&oacute; thể d&ugrave;ng để l&agrave;m sạch đế gi&agrave;y cực kỳ hiệu quả.</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Bạn sử dụng khăn m&ecirc;̀m th&acirc;́m d&acirc;́m vào đ&ecirc;́ giày, dùng bàn chải đánh răng l&ocirc;ng m&ecirc;̀m chà l&ecirc;n đ&ecirc;́, thao tác mạnh với đ&ecirc;́ cao su, nhẹ nhàng với đ&ecirc;́ nhựa.</strong></p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Sau khi làm sạch đ&ecirc;́ giày bằng d&acirc;́m, bạn giặt lại giày bằng b&ocirc;̣t giặt có tính t&acirc;̉y rửa nhẹ, phơi giày ở nơi thoáng mát đ&ecirc;̉ giày kh&ocirc; tự nhi&ecirc;n.</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><a href=\"https://bountysneakers.com/wp-content/uploads/2019/10/cach_giat_giay_bi_moc_bang_giam_an.jpg\"><img alt=\"cach_giat_giay_bi_moc_bang_giam_an\" src=\"https://bountysneakers.com/wp-content/uploads/2019/10/cach_giat_giay_bi_moc_bang_giam_an.jpg\" style=\"height:364px; width:600px\" /></a>C&aacute;ch 5: D&ugrave;ng dầu gội v&agrave; nước n&oacute;ng</p>\r\n\r\n<ul dir=\"ltr\">\r\n	<li>Nhi&ecirc;̀u bạn còn bán tín bán nghi vì kh&ocirc;ng nghĩ rằng d&acirc;̀u g&ocirc;̣i có th&ecirc;̉&nbsp;<em>làm sạch đ&ecirc;́ giày màu trắng</em>. Nhưng chỉ khi áp dụng bạn mới thực sự th&acirc;́y hi&ecirc;̣u quả của phương pháp này.</li>\r\n	<li>Bạn cho m&ocirc;̣t chút d&acirc;̀u g&ocirc;̣i vào nước nóng, tạo bọt r&ocirc;̀i dùng khăn th&acirc;́m dung dịch l&ecirc;n giày, chà mạnh bằng chính chi&ecirc;́c khăn đó hoặc dùng m&ocirc;̣t chi&ecirc;́c bàn chải khác.</li>\r\n	<li>Sau khi chà sạch đ&ecirc;́, xả giày với nước sạch cho đ&ecirc;́n khi đ&ecirc;́ h&ecirc;́t nhờn và đem phơi giày ở nơi thoáng gió.</li>\r\n</ul>\r\n\r\n<p><a href=\"https://bountysneakers.com/wp-content/uploads/2019/10/lam_sach_de_giay_trang_bang_dau_goi.jpg\"><img alt=\"lam_sach_de_giay_trang_bang_dau_goi\" src=\"https://bountysneakers.com/wp-content/uploads/2019/10/lam_sach_de_giay_trang_bang_dau_goi.jpg\" style=\"height:576px; width:960px\" /></a></p>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; c&aacute;c&nbsp;<a href=\"https://bountysneakers.com/huong-dan-cach-lam-trang-de-giay-bi-o-vang-chuan-chi-5-cach-ve-sinh/\"><strong>c&aacute;ch&nbsp;</strong></a><strong><a href=\"https://bountysneakers.com/huong-dan-cach-lam-trang-de-giay-bi-o-vang-chuan-chi-5-cach-ve-sinh/\">l&agrave;m trắng đế gi&agrave;y</a>&nbsp;bị ố v&agrave;ng</strong>&nbsp;kh&aacute; hữu hiệu m&agrave; kh&ocirc;ng hề g&acirc;y độc hại.</p>\r\n\r\n<p>C&aacute;ch 5: D&ugrave;ng thuốc tẩy</p>\r\n\r\n<p>Nếu như vết ố bẩn tr&ecirc;n đế gi&agrave;y trở n&ecirc;n qu&aacute; kh&oacute; chịu v&agrave; cứng đầu d&ugrave; bạn đ&atilde; thử một trong những c&aacute;ch tr&ecirc;n cũng kh&ocirc;ng t&agrave;i n&agrave;o tẩy sạch được. L&uacute;c n&agrave;y c&oacute; lẽ bạn cần một sức mạnh thật sự, đ&oacute; ch&iacute;nh l&agrave; thuốc tẩy. C&aacute;c loại thuốc tẩy trắng được b&aacute;n nhiều ở c&aacute;c tiệm tạp h&oacute;a, bạn ho&agrave;n to&agrave;n c&oacute; thể dễ d&agrave;ng mua được.</p>\r\n\r\n<p>Đầu ti&ecirc;n bạn pha thuốc tẩy v&agrave;o một x&ocirc; nước, d&ugrave;ng b&agrave;n chải đ&aacute;nh răng nh&uacute;ng v&agrave;o rồi ch&agrave; l&ecirc;n khu vực đế gi&agrave;y bị ố v&agrave;ng. Ch&agrave; xong giữ nguy&ecirc;n th&ecirc;m 15 ph&uacute;t để thuốc tẩy ph&aacute;t huy t&aacute;c dụng. Cuối c&ugrave;ng lau sạch lại l&agrave; đế gi&agrave;y trở n&ecirc;n sạch b&oacute;ng trở lại.</p>\r\n\r\n<p><a href=\"https://bountysneakers.com/wp-content/uploads/2019/10/cach-lam-sach-de-giay-bi-o-vang-1.jpg\"><img alt=\"cach-lam-sach-de-giay-bi-o-vang-1\" src=\"https://bountysneakers.com/wp-content/uploads/2019/10/cach-lam-sach-de-giay-bi-o-vang-1.jpg\" style=\"height:281px; width:500px\" /></a></p>\r\n\r\n<p><strong>Lưu &yacute;</strong>&nbsp;đối với c&aacute;c loại gi&agrave;y vải m&agrave;u kh&aacute;c m&agrave;u trắng, bạn cần cẩn thận tr&aacute;nh thuốc tẩy d&iacute;nh v&agrave;o l&agrave;m mất m&agrave;u khiến cho chiếc gi&agrave;y trở n&ecirc;n xấu x&iacute;, mất thẩm mỹ.</p>\r\n\r\n<h2 dir=\"ltr\">Lưu ý khi l&agrave;m sạch đế giày màu trắng</h2>\r\n\r\n<p dir=\"ltr\">C&ocirc;ng thức&nbsp;làm sạch đ&ecirc;́ giày màu trắng&nbsp;thì đơn giản như v&acirc;̣y nhưng n&ecirc;́u kh&ocirc;ng thực hi&ecirc;̣n c&acirc;̉n th&acirc;̣n, chúng ta v&acirc;̃n có th&ecirc;̉ phạm sai l&acirc;̀m khi&ecirc;́n đ&ocirc;i giày càng ngày càng bị b&acirc;̉n th&ecirc;m đ&acirc;́y. Dưới đ&acirc;y là m&ocirc;̣t s&ocirc;́ lưu ý quan trọng khi bạn&nbsp;<em>làm sạch đ&ecirc;́ giày trắng</em>.</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Ở bước giặt với xà phòng, bạn phải giặt th&acirc;̣t sạch, đảm bảo kh&ocirc;ng còn cặn xà phòng dính tr&ecirc;n giày bởi sau khi phơi nắng, chính v&ecirc;́t cặn này sẽ tạo thành v&ecirc;̣t &ocirc;́ vàng tr&ecirc;n giày.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">N&ecirc;́u đ&ecirc;́ giày còn nhờn vì chưa được xả sạch, hãy ng&acirc;m đ&ecirc;́ trong nước 5 phút r&ocirc;̀i đem phơi.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">N&ecirc;n bọc ph&acirc;̀n th&acirc;n giày bằng m&ocirc;̣t túi nilon đ&ecirc;̉ khi làm sạch đ&ecirc;́ giày, ph&acirc;̀n th&acirc;n kh&ocirc;ng bị ảnh hưởng.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Kh&ocirc;ng phơi giày ở nơi có nắng to vì đ&ecirc;́ sẽ d&ecirc;̃ bị nhũn m&ecirc;̀m, nh&acirc;́t là đ&ecirc;́ nhựa.</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">N&ecirc;́u giày chỉ bị b&acirc;̉n ph&acirc;̀n đ&ecirc;́, chúng ta kh&ocirc;ng nh&acirc;́t thi&ecirc;́t phải đem cả đ&ocirc;i giày đi giặt nữa bởi đã có những c&ocirc;ng thức chuy&ecirc;n làm sạch đ&ecirc;́ giày r&ocirc;̀i. Những c&ocirc;ng thức&nbsp;l&agrave;m sạch đế gi&agrave;y trắng&nbsp;d&ecirc;̃ thực hi&ecirc;̣n tr&ecirc;n chắc chắn sẽ giúp bạn ti&ecirc;́t ki&ecirc;̣m rất nhiều thời gian v&agrave; c&ocirc;ng sức đấy!</p>\r\n\r\n<p>&nbsp;</p>\r\n', '31/08/2020', '2020-08-31 14:39:29', '2020-09-03 11:53:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id_cate` int(11) NOT NULL,
  `cate_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_cate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id_cate`, `cate_name`, `date_cate`) VALUES
(2, 'ADIDAS', '2020-08-04 22:16:27'),
(3, 'NIKE', '2020-08-04 22:16:31'),
(18, 'VANS', '2020-08-05 14:08:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_detail_order`
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
-- Đang đổ dữ liệu cho bảng `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id_order`, `id_product`, `size`, `quantity_order`, `price_detail`, `total`, `status`) VALUES
(69, 45, 37, 1, 2500000, 2500000, 1),
(70, 44, 37, 1, 1900000, 1900000, 1),
(70, 45, 37, 1, 2500000, 2500000, 1),
(71, 45, 37, 1, 2500000, 2500000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `id_discount` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `percent` tinyint(3) NOT NULL DEFAULT 0,
  `day_create` datetime NOT NULL DEFAULT current_timestamp(),
  `end_day` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_discount`
--

INSERT INTO `tbl_discount` (`id_discount`, `code`, `percent`, `day_create`, `end_day`) VALUES
(1, '0', 0, '2020-08-13 19:49:00', '0000-00-00 00:00:00'),
(2, 'FREESHIP', 20, '2020-08-20 14:16:37', '2020-08-23 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_img_product`
--

CREATE TABLE `tbl_img_product` (
  `id_product` int(11) NOT NULL,
  `name_img_1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_img_2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_img_3` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_img_product`
--

INSERT INTO `tbl_img_product` (`id_product`, `name_img_1`, `name_img_2`, `name_img_3`) VALUES
(1, '1_1.jpg', '1_2.jpg', '1_3.jpg'),
(2, '2_1.jpg', '2_2.jpg', '2_3.jpg'),
(7, '7_1.jpg', '7_2.jpg', '7_3.jpg'),
(10, '10_1.jpg', '10_2.jpg', '10_3.jpg'),
(20, '20_giay-adidas-nmd-r113.jpg', '20_giay-adidas-nmd-r115.jpg', '20_giay-adidas-nmd-r1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
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
-- Đang đổ dữ liệu cho bảng `tbl_order`
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
-- Cấu trúc bảng cho bảng `tbl_product`
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
-- Đang đổ dữ liệu cho bảng `tbl_product`
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
-- Cấu trúc bảng cho bảng `tbl_size_shoes`
--

CREATE TABLE `tbl_size_shoes` (
  `id_size` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `size` tinyint(2) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_star_rating`
--

CREATE TABLE `tbl_star_rating` (
  `id_product` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `rating_proc` text COLLATE utf8_unicode_ci NOT NULL,
  `day_create` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_star_rating`
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
-- Cấu trúc bảng cho bảng `tbl_status_order`
--

CREATE TABLE `tbl_status_order` (
  `id_order` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`id_account`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id_post`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id_cate`);

--
-- Chỉ mục cho bảng `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id_order`,`id_product`,`size`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`id_discount`);

--
-- Chỉ mục cho bảng `tbl_img_product`
--
ALTER TABLE `tbl_img_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_customer` (`id_account`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_cate` (`id_cate`);

--
-- Chỉ mục cho bảng `tbl_size_shoes`
--
ALTER TABLE `tbl_size_shoes`
  ADD PRIMARY KEY (`id_size`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `tbl_star_rating`
--
ALTER TABLE `tbl_star_rating`
  ADD PRIMARY KEY (`id_product`,`id_account`),
  ADD KEY `id_account` (`id_account`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `tbl_status_order`
--
ALTER TABLE `tbl_status_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_order` (`id_order`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `id_discount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `tbl_size_shoes`
--
ALTER TABLE `tbl_size_shoes`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD CONSTRAINT `fk_id_order_tbl_detail_order_tbl_order` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_product_tbl_detail_order_tbl_product` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_img_product`
--
ALTER TABLE `tbl_img_product`
  ADD CONSTRAINT `fk_id_product_tbl_img_product_tbl_product` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`);

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `fk_id_customer_tbl_order_tbl_customer` FOREIGN KEY (`id_account`) REFERENCES `tbl_account` (`id_account`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `fk_id_cate_tbl_product_tbl_category` FOREIGN KEY (`id_cate`) REFERENCES `tbl_category` (`id_cate`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_size_shoes`
--
ALTER TABLE `tbl_size_shoes`
  ADD CONSTRAINT `fk_id_product_tbl_size_shoes_tbl_product` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_star_rating`
--
ALTER TABLE `tbl_star_rating`
  ADD CONSTRAINT `fk_id_account_tbl_star_rating_tbl_account` FOREIGN KEY (`id_account`) REFERENCES `tbl_account` (`id_account`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_product_tbl_star_rating_tbl_product` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_status_order`
--
ALTER TABLE `tbl_status_order`
  ADD CONSTRAINT `fk_id_order_tbl_status_order_tbl_order` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
