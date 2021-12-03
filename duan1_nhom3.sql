-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 03, 2021 lúc 06:33 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1_nhom3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `id_binh_luan` int(11) NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_tin_tuc` int(11) DEFAULT NULL,
  `id_sanpham` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_up` datetime NOT NULL,
  `so_sao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`id_binh_luan`, `ten_dang_nhap`, `id_tin_tuc`, `id_sanpham`, `noi_dung`, `ngay_up`, `so_sao`) VALUES
(1, 'phanvan123', NULL, 'sp274', 'heloo', '2021-11-30 08:25:47', 4),
(2, 'phanvan123', NULL, 'sp274', 'heklokfakf', '2021-11-30 08:30:18', 5),
(3, 'phanvan123', NULL, 'sp274', 'tốt', '2021-11-30 08:31:04', 3),
(4, 'phanvan123', NULL, 'sp274', 'ok', '2021-11-30 08:37:01', 4),
(5, 'phanvan123', NULL, 'sp274', 'bad', '2021-11-30 08:50:13', 2),
(6, 'phanvan123', NULL, 'sp274', 'hay', '2021-11-30 08:57:00', 5),
(7, 'phanvan123', NULL, 'sp274', 'ok', '2021-11-30 08:59:50', 5),
(8, 'phanvan123', NULL, 'sp274', 'kkk', '2021-11-30 09:00:10', 1),
(9, 'phanvan123', NULL, 'sp274', 'pp', '2021-11-30 09:00:15', 1),
(10, 'phanvan123', NULL, 'sp301768', 'kkkk', '2021-11-30 09:00:40', 2),
(11, 'phanvan123', NULL, 'sp301768', 'láiof', '2021-11-30 09:01:09', 5),
(12, 'phanvan123', NULL, 'sp71128', 'ok', '2021-11-30 09:11:52', 3),
(13, 'phanvan123', NULL, 'sp71128', 'Cũng dc', '2021-11-30 09:13:14', 1),
(14, 'phanvan123', NULL, 'sp71128', 'ok', '2021-11-30 14:27:24', 5),
(15, 'phanvan555', NULL, 'sp158332', 'hay', '2021-12-01 03:28:19', 4),
(16, 'phanvan555', NULL, 'sp158332', 'aksfklas', '2021-12-01 03:29:31', 1),
(17, 'phanvan123', NULL, 'sp388278', 'fsgsdg', '2021-12-01 05:18:22', 5),
(19, 'huycute', NULL, 'sp274', 'sản phẩm như con cac, hàng fake vcl, ditme nghỉ bán đi duma', '2021-12-01 06:39:12', 1),
(20, 'huycute', NULL, 'sp274', 'sản phẩm như con cac', '2021-12-01 06:39:44', 2),
(21, 'huycute', NULL, 'sp274', 'ggg', '2021-12-01 06:39:53', 2),
(22, 'huycute', NULL, 'sp274', 'sdfgsdgdsfgsdfg', '2021-12-01 06:39:58', 2),
(23, 'huycute', NULL, 'sp274', 'ggg', '2021-12-01 06:40:12', 1),
(24, 'huycute', NULL, 'sp71128', 'gà', '2021-12-01 06:41:30', 1),
(25, 'huycute', NULL, 'sp71128', 'gà', '2021-12-01 06:41:35', 1),
(26, 'huycute', NULL, 'sp71128', 'đánh giá 1 sao', '2021-12-01 06:41:40', 1),
(27, 'huycute', NULL, 'sp71128', 'dỏm', '2021-12-01 06:41:54', 1),
(28, 'huycute', NULL, 'sp71128', 'hh', '2021-12-01 06:42:26', 1),
(29, 'huycute', NULL, 'sp71128', 'jjjjj', '2021-12-01 06:42:31', 1),
(30, 'huycute', NULL, 'sp71128', 'sap1', '2021-12-01 06:44:17', 5),
(31, 'huycute', NULL, 'sp301768', 'gà', '2021-12-01 06:50:36', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc_sp`
--

CREATE TABLE `danhmuc_sp` (
  `Id_dm_sp` int(11) NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc_sp`
--

INSERT INTO `danhmuc_sp` (`Id_dm_sp`, `tieu_de`, `noi_dung`, `img`) VALUES
(2, 'Điện thoại', 'Danh mục sản phẩm điện thoại', 'iphone-13-pro-gold-1-600x600.jpg'),
(4, 'Laptop', 'sdfsdfsdfdsgsgrg', 'msi-gf65-10ue-i7-228vn-600x600.jpg'),
(6, 'Tablet', 'Máy tính bảng, tablet giá rẻ chất lượng', 'ipad-pro-2021-129-inch-gray-thumb-600x600.jpg'),
(7, 'Balo', 'Mua balo online giá rẻ chất lượng', '73fee7270af6d790161812efbd3be7be.jpg.webp'),
(8, 'Tiểu thuyết', 'Mua sách online giá rẻ, chất lượng', '2a6154ba08df6ce6161c13f4303fa19e.jpg.webp'),
(9, 'Bình giữ nhiệt', 'Mua bình giữ nhiệt online giá rẻ chất lượng', 'binhgiunhiet.jpg'),
(10, 'Sách tư duy - Kỹ năng sống', 'Mua online sách tư duy - kỹ năng sống giá rẻ', '524a27dcd45e8a13ae6eecb3dfacba7c.jpg.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc_tin`
--

CREATE TABLE `danh_muc_tin` (
  `id_dm_tin` int(11) NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id_gio_hang` int(11) NOT NULL,
  `id_sanpham` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_luong` int(11) NOT NULL,
  `tong_tien` float NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id_hoa_don` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tong_tien` float NOT NULL,
  `ngay_mua` datetime NOT NULL,
  `id_ma_giam_gia` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trang_thai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`id_hoa_don`, `ten_dang_nhap`, `tong_tien`, `ngay_mua`, `id_ma_giam_gia`, `trang_thai`) VALUES
('hd420864', 'huycute', 27140000, '2021-12-03 06:30:02', NULL, '0'),
('hd504539', 'huycute', 74980000, '2021-12-03 06:26:40', NULL, '0'),
('hd558393', 'huycute', 27140000, '2021-12-03 06:26:40', NULL, '0'),
('hd642582', 'huycute', 74980000, '2021-12-03 06:30:02', NULL, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don_chi_tiet`
--

CREATE TABLE `hoa_don_chi_tiet` (
  `id_cthd` int(11) NOT NULL,
  `id_sanpham` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `id_hoa_don` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `so_luong` int(11) NOT NULL,
  `id_ma_giam_gia` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tong_tien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don_chi_tiet`
--

INSERT INTO `hoa_don_chi_tiet` (`id_cthd`, `id_sanpham`, `id_hoa_don`, `so_luong`, `id_ma_giam_gia`, `tong_tien`) VALUES
(1, 'sp274', 'hd558393', 1, NULL, 26990000),
(2, 'sp388278', 'hd558393', 1, NULL, 150000),
(3, 'sp301768', 'hd504539', 1, NULL, 10000000),
(4, 'sp158332', 'hd504539', 1, NULL, 36990000),
(5, 'sp71128', 'hd504539', 1, NULL, 27990000),
(6, 'sp274', 'hd420864', 1, NULL, 26990000),
(7, 'sp388278', 'hd420864', 1, NULL, 150000),
(8, 'sp301768', 'hd642582', 1, NULL, 10000000),
(9, 'sp158332', 'hd642582', 1, NULL, 36990000),
(10, 'sp71128', 'hd642582', 1, NULL, 27990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hop_dong`
--

CREATE TABLE `hop_dong` (
  `id_hop_dong` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_ket_thuc` date NOT NULL,
  `id_sanpham` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_qc_sp` int(11) NOT NULL,
  `tinh_trang` tinyint(1) NOT NULL,
  `tong_tien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imgs`
--

CREATE TABLE `imgs` (
  `id_img` int(11) NOT NULL,
  `link_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_tin_tuc` int(11) DEFAULT NULL,
  `id_sanpham` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `imgs`
--

INSERT INTO `imgs` (`id_img`, `link_img`, `id_tin_tuc`, `id_sanpham`, `ten_dang_nhap`) VALUES
(2, 'pin-polymer-20000-mah-type-c-30w-pd-belkin-pocket-power-bpb002-ava-600x600.jpg', NULL, NULL, 'phanvan123'),
(3, 'redmi-10-gray-600x600.jpg', NULL, NULL, 'phanvan123'),
(4, 'iphone-13-white-1.jpg', NULL, 'sp71128', 'phanvan123'),
(5, 'iphone-13-white-2.jpg', NULL, 'sp71128', 'phanvan123'),
(6, 'iphone-13-white-3.jpg', NULL, 'sp71128', 'phanvan123'),
(7, '61b54964-ae6b-46a0-8ff8-b2eba54672ac.webp', NULL, NULL, 'phanvan123'),
(8, 'iphone-13-white-1.jpg', NULL, NULL, 'phanvan0322'),
(9, 'iphone-13-white-2.jpg', NULL, NULL, 'phanvan0322'),
(10, 'xiaomi-11t-1-1.jpg', NULL, 'sp301768', 'phanvan123'),
(11, 'xiaomi-11t-2-1.jpg', NULL, 'sp301768', 'phanvan123'),
(12, 'samsung-galaxy-z-flip-3-kem-1-org.jpg', NULL, 'sp274', 'phanvan0322'),
(13, 'samsung-galaxy-z-flip-3-kem-2-org.jpg', NULL, 'sp274', 'phanvan0322'),
(14, 'samsung-galaxy-z-flip-3-kem-3-org.jpg', NULL, 'sp274', 'phanvan0322'),
(15, 'samsung-galaxy-z-flip-3-kem-4-org.jpg', NULL, 'sp274', 'phanvan0322'),
(16, 'iaomi-11t-xanh-duong-1.jpg', NULL, 'sp301768', 'phanvan123'),
(17, 'space-1-org.jpg', NULL, 'sp158332', 'phanvan123'),
(18, 'space-2-org.jpg', NULL, 'sp158332', 'phanvan123'),
(19, 'space-3-org.jpg', NULL, NULL, 'phanvan123'),
(20, 'space-4-org.jpg', NULL, NULL, 'phanvan123'),
(21, '2dbca45d42ed269d1073a2a5121f5464.jpg.webp', NULL, 'sp388278', 'phanvan0322'),
(22, '9d87e8678ad0cdd454a1755ba926ea97.jpg.webp', NULL, 'sp388278', 'phanvan0322'),
(23, 'bd04f0946bed192d8cf7875167b0e3bd.jpg.webp', NULL, 'sp388278', 'phanvan0322'),
(24, 'bc10734989977da424642a1c4750eee2.jpg.webp', NULL, 'sp388278', 'phanvan0322');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ma_giam_gia`
--

CREATE TABLE `ma_giam_gia` (
  `id_ma_giam_gia` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phan_tram_giam` int(11) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_ket_thuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- Error reading data for table duan1_nhom3.ma_giam_gia: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `duan1_nhom3`.`ma_giam_gia`' at line 1

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `ten_dang_nhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmnd` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `gioi_tinh` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vai_tro` int(11) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- Error reading data for table duan1_nhom3.nguoi_dung: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `duan1_nhom3`.`nguoi_dung`' at line 1

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_cao_sp`
--

CREATE TABLE `quang_cao_sp` (
  `id_qc_sp` int(11) NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `bang_gia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id_sanpham` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `id_dm_sp` int(11) NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia_goc` float NOT NULL,
  `gia_giam` float DEFAULT NULL,
  `ngay_dang` datetime NOT NULL,
  `danh_gia` float NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `so_luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id_sanpham`, `id_dm_sp`, `ten_dang_nhap`, `tieu_de`, `noi_dung`, `img`, `gia_goc`, `gia_giam`, `ngay_dang`, `danh_gia`, `trang_thai`, `so_luong`) VALUES
('sp158332', 4, 'phanvan123', 'Apple MacBook Pro M1 2020 8GB/512GB', '<h3><a href=\"https://www.thegioididong.com/laptop/apple-macbook-pro-2020-myd92saa\" target=\"_blank\">Apple Macbook Pro M1 2020</a>&nbsp;với hiệu năng cực kỳ mạnh mẽ t&iacute;ch hợp chip Apple M1 lần đầu xuất hiện tr&ecirc;n d&ograve;ng Mac, con laptop n&agrave;y hứa hẹn sẽ mang đến cho bạn một sản phẩm &ldquo;Pro&rdquo; chưa từng thấy.</h3>\r\n\r\n<h3>Sức mạnh kinh ngạc đến từ con chip M1 độc quyền của Apple</h3>\r\n\r\n<p>Với sự ra mắt lần đầu t&iacute;ch hợp tr&ecirc;n MacBook, chip&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-m1-con-chip-arm-5nm-dau-tien-danh-1305955\" target=\"_blank\">Apple M1</a>&nbsp;mang đến lợi &iacute;ch nhiều hơn r&otilde; r&agrave;ng so với chip Intel. Sở hữu thiết kế phần cứng nhỏ gọn v&agrave; đẹp mắt cộng với&nbsp;<strong>CPU 8 l&otilde;i</strong>&nbsp;đem lại tốc độ xử l&yacute; nhanh gấp&nbsp;<strong>2.8 lần</strong>&nbsp;so với thế hệ trước v&agrave; k&eacute;o d&agrave;i thời lượng pin l&ecirc;n đến 10 giờ đồng hồ.</p>\r\n\r\n<p>Card đồ họa t&iacute;ch hợp&nbsp;<strong>8 nh&acirc;n GPU</strong>&nbsp;đem lại năng suất cao, tốc độ thao t&aacute;c thiết kết đồ họa gấp 5 lần c&aacute;c thế hệ trước đ&oacute;, gi&uacute;p bạn thao t&aacute;c mượt m&agrave; c&aacute;c t&aacute;c vụ văn ph&ograve;ng Word, Excel, Power Point,... cũng như chỉnh sửa ảnh 3D bằng Photoshop, AI,... hay render video bằng Pr.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/231254/apple-macbook-pro-2020-myd92saa-045520-095536.jpg\" onclick=\"return false;\"><img alt=\"Apple Macbook Pro 2020 (MYD92SA/A) - Cấu hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/231254/apple-macbook-pro-2020-myd92saa-045520-095536.jpg\" /></a></p>\r\n\r\n<p>Macbook Pro c&oacute; ổ cứng&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=ssd-512-gb\" target=\"_blank\">SSD 512 GB</a>&nbsp;đem lại một kh&ocirc;ng gian lưu trữ lớn, thoải m&aacute;i cho người d&ugrave;ng lưu trữ cả một thư viện ảnh, video, t&agrave;i liệu c&aacute; nh&acirc;n, phim ảnh,... Ngo&agrave;i ra, ổ cứng SSD c&ograve;n cho một tốc độ đọc ghi dữ liệu đ&aacute;ng kinh ngạc l&ecirc;n tới&nbsp;<strong>40 GB/s,&nbsp;</strong>gi&uacute;p bạn dễ d&agrave;ng thực hiện c&aacute;c thao t&aacute;c khởi động, sao ch&eacute;p dữ liệu hay sử dụng c&aacute;c phần mềm đồ họa mượt m&agrave; hơn bao giờ hết.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/231254/apple-macbook-pro-2020-myd92saa-041220-0948550.jpg\" onclick=\"return false;\"><img alt=\"MacBook Pro M1 2020 Space Grey (MYD92SA/A) - SSD\" src=\"https://cdn.tgdd.vn/Products/Images/44/231254/apple-macbook-pro-2020-myd92saa-041220-0948550.jpg\" /></a></p>\r\n\r\n<p>Hơn nữa, với&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop?g=8-gb\" target=\"_blank\">RAM 8 GB</a>&nbsp;</strong>th&igrave;&nbsp;laptop đủ sức để c&oacute; thể đ&aacute;p ứng tốt nhu cầu đa nhiệm của người d&ugrave;ng như chạy nhiều chương tr&igrave;nh c&ugrave;ng một l&uacute;c hay mở những tập tin nặng tr&ecirc;n m&aacute;y nhanh ch&oacute;ng m&agrave; kh&ocirc;ng bị giật lag.</p>\r\n\r\n<p>Ngo&agrave;i ra, hệ điều h&agrave;nh macOS cũng được n&acirc;ng cấp về giao diện đẹp mắt, số lượng ứng dụng lớn hơn. C&oacute; thể xem th&ecirc;m c&aacute;c&nbsp;<a href=\"https://www.thegioididong.com/game-app/danh-sach-ung-dung-chay-duoc-tren-macbook-chip-apple-m1-1310311\" target=\"_blank\">ứng dụng tương th&iacute;ch chạy được tr&ecirc;n Macbook t&iacute;ch hợp chip M1</a>&nbsp;mới.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/231254/apple-macbook-pro-2020-myd92saa-191021-021033.png\" onclick=\"return false;\"><img alt=\"Apple Macbook Pro 2020 (MYD92SA/A) - Hệ điều hành\" src=\"https://cdn.tgdd.vn/Products/Images/44/231254/apple-macbook-pro-2020-myd92saa-191021-021033.png\" /></a></p>\r\n\r\n<h3>Thiết kế sang trọng, đẳng cấp</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-apple-macbook-pro\" target=\"_blank\">Macbook Pro</a>&nbsp;2020 được thiết kế rất sang trọng, bền bỉ nhờ vỏ kim loại nguy&ecirc;n khối nhưng khối lượng chỉ c&oacute;&nbsp;<strong>1.4 kg</strong>&nbsp;v&agrave; mỏng&nbsp;<strong>15.6 mm</strong>. V&igrave; vậy laptop n&agrave;y sẽ dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh mọi l&uacute;c mọi nơi bởi độ gọn nhẹ, đậm t&iacute;nh di động của n&oacute;.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/231254/apple-macbook-pro-2020-myd92saa-045920-095915.jpg\" onclick=\"return false;\"><img alt=\"Apple Macbook Pro 2020 (MYD92SA/A) - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/44/231254/apple-macbook-pro-2020-myd92saa-045920-095915.jpg\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, với sự t&iacute;ch hợp b&agrave;n ph&iacute;m&nbsp;<strong>Magic Keyboard</strong>&nbsp;với cơ chế cắt k&eacute;o tinh tế, bạn sẽ c&oacute; trải nghiệm g&otilde; ph&iacute;m tốt nhất với tốc độ đ&aacute;nh m&aacute;y nhanh, &ecirc;m v&agrave; mượt. Hơn nữa,&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a>&nbsp;c&ograve;n được gắn th&ecirc;m đ&egrave;n nền gi&uacute;p bạn dễ d&agrave;ng l&agrave;m việc ngay cả khi dưới điều kiện &aacute;nh s&aacute;ng yếu.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/231254/apple-macbook-pro-2020-myd92saa-040020-100013.jpg\" onclick=\"return false;\"><img alt=\"Apple Macbook Pro 2020 (MYD92SA/A) - Bàn phím\" src=\"https://cdn.tgdd.vn/Products/Images/44/231254/apple-macbook-pro-2020-myd92saa-040020-100013.jpg\" /></a></p>\r\n\r\n<p>Hai cổng Thunderbolt 3 tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\">MacBook</a>&nbsp;cho một tốc độ băng th&ocirc;ng cực cao v&agrave; t&iacute;nh linh hoạt của chuẩn USB Type-C, cho ph&eacute;p bạn thoải m&aacute;i kết nối với nhiều vai tr&ograve; kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, để tăng t&iacute;nh phong ph&uacute; cũng như đa dạng cho sự kết nối, chiếc laptop n&agrave;y đ&atilde; được trang bị th&ecirc;m những chuẩn kết nối kh&ocirc;ng d&acirc;y kh&aacute;c như&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/wi-fi-chuan-80211ax-la-gi-tim-hieu-ve-wi-fi-the-he-thu-6-1187524\" target=\"_blank\">Wi-Fi 6 802.11ax</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/bluetooth-50-chuan-bluetooth-danh-cho-thoi-dai-kho-1113891\" target=\"_blank\">Bluetooth v5.0.</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/231254/apple-macbook-pro-2020-myd92saa-040020-100045.jpg\" onclick=\"return false;\"><img alt=\"Apple Macbook Pro 2020 (MYD92SA/A) - Kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/44/231254/apple-macbook-pro-2020-myd92saa-040020-100045.jpg\" /></a></p>\r\n\r\n<h3>Trải nghiệm h&igrave;nh ảnh sắc n&eacute;t, sống động</h3>\r\n\r\n<p>Bạn sẽ được tận hưởng&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-retina-la-gi-905780\" target=\"_blank\">m&agrave;n h&igrave;nh Retina</a>&nbsp;<a href=\"https://www.thegioididong.com/laptop-13-3-inch\" target=\"_blank\">13.3 inch</a>&nbsp;tuyệt đẹp với độ ph&acirc;n giải&nbsp;<strong>2560 x 1600</strong>, độ s&aacute;ng m&agrave;n h&igrave;nh l&ecirc;n đến&nbsp;<strong>500 nits</strong>&nbsp;gi&uacute;p bạn dễ d&agrave;ng l&agrave;m việc với độ s&aacute;ng vừa phải v&agrave; h&igrave;nh ảnh cực kỳ ch&acirc;n thực, sắc n&eacute;t.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;,&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook-m1\" target=\"_blank\">Macbook M1</a>&nbsp;c&ograve;n trang bị th&ecirc;m&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-ips-lcd-la-gi-905752\" target=\"_blank\">tấm nền IPS</a>&nbsp;đem lại m&agrave;u sắc rực rỡ v&agrave; cho một g&oacute;c nh&igrave;n rộng, tăng trải nghiệm cho người sử dụng ch&uacute;ng v&agrave; c&ocirc;ng nghệ LED Backlit&nbsp;cho m&agrave;n h&igrave;nh mỏng hơn, &iacute;t ti&ecirc;u thụ điện năng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/231254/apple-macbook-pro-2020-myd92saa-041220-0942190.jpg\" onclick=\"return false;\"><img alt=\"MacBook Pro M1 2020 Space Grey (MYD92SA/A) - Màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/44/231254/apple-macbook-pro-2020-myd92saa-041220-0942190.jpg\" /></a></p>\r\n\r\n<p>Nhờ được trang bị&nbsp;<strong>webcam HD</strong>&nbsp;n&ecirc;n mỗi khi sử dụng FaceTime camera, h&igrave;nh ảnh thu được sẽ trở n&ecirc;n r&otilde; hơn, ch&acirc;n thật hơn. Cộng với 3 micro, &acirc;m thanh thu lại sẽ được ổn định v&agrave; r&otilde; r&agrave;ng trong mọi cuộc gọi trực tuyến.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/231254/apple-macbook-pro-2020-myd92saa-040220-100246.jpg\" onclick=\"return false;\"><img alt=\"Apple Macbook Pro 2020 (MYD92SA/A) - Camera\" src=\"https://cdn.tgdd.vn/Products/Images/44/231254/apple-macbook-pro-2020-myd92saa-040220-100246.jpg\" /></a></p>\r\n\r\n<p>Hơn nữa hệ thống&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/fingerprint-sensor-la-gi-va-co-tac-dung-gi-904389\" target=\"_blank\">cảm biến v&acirc;n tay</a>&nbsp;gi&uacute;p n&acirc;ng cao t&iacute;nh bảo mật, kh&ocirc;ng lo người ngo&agrave;i đột nhập v&agrave;o v&agrave; nhanh ch&oacute;ng đăng nhập hay thanh to&aacute;n online dễ d&agrave;ng chỉ với 1 chạm.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/231254/apple-macbook-pro-2020-myd92saa-100420-110440.jpg\" onclick=\"return false;\"><img alt=\"Apple Macbook Pro 2020 (MYD92SA/A) - Cảm biến vân tay\" src=\"https://cdn.tgdd.vn/Products/Images/44/231254/apple-macbook-pro-2020-myd92saa-100420-110440.jpg\" /></a></p>\r\n\r\n<p>Tuy l&agrave; một chiếc laptop mỏng nhẹ nhưng Macbook vẫn được t&iacute;ch hợp c&ocirc;ng nghệ &acirc;m thanh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-am-thanh-dolby-altmos-la-gi-co-nhung-gi-noi-bat-1280672\" target=\"_blank\">Dolby Altmos</a>, đem lại một &acirc;m thanh ch&acirc;n thật đến từng chi tiết.</p>\r\n\r\n<p>Ngo&agrave;i ra, với hệ thống&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-am-thanh-stereo-am-thanh-kep-dual-spea-920547\" target=\"_blank\">loa k&eacute;p (2 k&ecirc;nh)</a>, chiếc laptop n&agrave;y thật sự đem đến cho người d&ugrave;ng những trải nghiệm th&uacute; vị với d&agrave;n &acirc;m thanh v&ograve;m 3D sống động như trong rạp chiếu phim.</p>\r\n\r\n<p>Với thiết kế mỏng nhẹ cộng th&ecirc;m chip Apple M1,&nbsp;Macbook Pro 2020 thật sự đem đến cho người d&ugrave;ng một hiệu năng cực kỳ mạnh mẽ nhưng kh&ocirc;ng k&eacute;m phần&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=cao-cap-sang-trong\" target=\"_blank\">sang trọng, đẳng cấp</a>.</p>\r\n', 'macbook-pro-m1-2020-gray-1-600x600.jpg', 40000000, 36990000, '2021-11-28 11:32:30', 2.5, 0, 9),
('sp274', 2, 'phanvan0322', 'Samsung Galaxy Z Flip3 5G', 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsung-galaxy-z-flip-3-cream-1-600x600.jpg', 30000000, 26990000, '2021-11-26 11:33:58', 2.7143, 0, 9),
('sp301768', 2, 'phanvan123', 'Xiaomi 11T 5G 128GB', 'Xiaomi 11T đầy nổi bật với thiết kế vô cùng trẻ trung, màn hình AMOLED, bộ 3 camera sắc nét và viên pin lớn đây sẽ là mẫu smartphone của Xiaomi thỏa mãn mọi nhu cầu giải trí, làm việc và là niềm đam mê sáng tạo của bạn. \r\n', 'xiaomi-11t-white-1-2-600x600.jpg', 10990000, 10000000, '2021-11-24 21:55:45', 2.3333, 0, 6),
('sp388278', 10, 'phanvan0322', 'Đàn Ông Sao Hỏa Đàn Bà Sao Kim', '<p><strong>Ng&agrave;y xửa ng&agrave;y xưa, những người sao Hỏa v&agrave; sao Kim đ&atilde; gặp gỡ, y&ecirc;u nhau v&agrave; sống hạnh ph&uacute;c bởi họ t&ocirc;n trọng v&agrave; chấp nhận mọi điều kh&aacute;c biệt. Rồi họ đến Tr&aacute;i Đất v&agrave; chứng l&atilde;ng qu&ecirc;n đ&atilde; xảy ra: Họ qu&ecirc;n rằng họ đến từ những h&agrave;nh tinh kh&aacute;c</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hiểu biết về giới t&iacute;nh gi&uacute;p ch&uacute;ng ta th&ecirc;m khoan dung v&agrave; biết tha thứ khi ai đ&oacute; kh&ocirc;ng đ&aacute;p lại theo c&aacute;ch m&agrave; ta mong đợi</strong></p>\r\n\r\n<p><strong>T&igrave;nh chỉ đẹp khi c&ograve;n dang dở</strong><br />\r\n<strong>Cưới nhau về nham nhở lắm em ơ&nbsp;</strong></p>\r\n\r\n<p>Bởi kết h&ocirc;n kh&ocirc;ng phải l&agrave; kết th&uacute;c một cuộc t&igrave;nh, m&agrave; n&oacute; mới l&agrave; mở đầu cho rất nhiều những giai đoạn kh&oacute; khăn m&agrave; cặp vợ chồng n&agrave;o cũng phải trải qua. Bạn phải biết c&aacute;ch th&iacute;ch ứng v&agrave; đối ph&oacute; với n&oacute; để kh&ocirc;ng rơi v&agrave;o t&igrave;nh cảnh h&ocirc;n nh&acirc;n đổ vỡ.</p>\r\n\r\n<p><img alt=\"Đàn Ông Sao Hỏa Đàn Bà Sao Kim\" src=\"https://salt.tikicdn.com/ts/tmp/c3/61/e5/a2683e21f4854f3b0d9f1621f4724653.jpg\" style=\"border-style:none; height:499px; width:750px\" /></p>\r\n\r\n<p><strong>Bạn sẽ rất dễ &#39;VỠ MỘNG&#39; sau khi kết h&ocirc;n</strong></p>\r\n\r\n<p>Cả hai sẽ bắt đầu ph&aacute;t hiện ra nhiều thứ ở người kia sau khi về sống chung một nh&agrave;. Nếu kh&ocirc;ng chuẩn bị cho m&igrave;nh t&acirc;m thế tốt v&agrave; sự th&iacute;ch ứng nhanh, rất c&oacute; thể cả hai sẽ tạo ra sự&hellip; thất vọng v&agrave; vỡ mộng trong nhau.</p>\r\n\r\n<p><strong>Cuộc sống h&ocirc;n nh&acirc;n trở n&ecirc;n nh&agrave;m ch&aacute;n</strong></p>\r\n\r\n<p>Khi đ&atilde; qu&aacute; hiểu nhau về t&iacute;nh c&aacute;ch, ch&iacute;nh th&oacute;i quen h&agrave;ng ng&agrave;y, lặp đi lặp lại tạo ra sự nh&agrave;m ch&aacute;n. Trong mối quan hệ vợ chồng c&oacute; thể gia tăng nhiều vụ c&atilde;i v&atilde; v&igrave; những l&iacute; do như khủng hoảng kinh tế, c&aacute;ch chăm s&oacute;c nu&ocirc;i dạy con c&aacute;i, c&ocirc;ng việc v&agrave; đặc biệt l&agrave; chuyện cảm thấy&hellip; t&igrave;nh y&ecirc;u phai nhạt.</p>\r\n\r\n<p><strong>Kh&ocirc;ng hiểu, kỳ vọng th&aacute;i qu&aacute; v&agrave;o&nbsp; bạn đời</strong></p>\r\n\r\n<p>Ai cũng c&oacute; những mong muốn ri&ecirc;ng về một nửa của m&igrave;nh nhưng đ&ocirc;i khi ch&iacute;nh sự k&igrave; vọng th&aacute;i qu&aacute; l&agrave;m họ dễ rơi v&agrave;o trạng th&aacute;i thất vọng, ch&aacute;n chường. Bạn cảm thấy kh&ocirc;ng hiểu đối phương, cảm thấy họ kh&ocirc;ng được như m&igrave;nh mong muốn, v&agrave; những cuộc c&atilde;i v&atilde; bắt đầu diễn ra thường xuy&ecirc;n hơn.</p>\r\n\r\n<p><img alt=\"Đàn Ông Sao Hỏa Đàn Bà Sao Kim\" src=\"https://salt.tikicdn.com/ts/tmp/1c/58/3e/56a19f84f1b3131292b3b5a91bbd2950.jpg\" style=\"border-style:none; height:499px; width:750px\" /></p>\r\n\r\n<p><strong>Muốn g&igrave;n giữ hạnh ph&uacute;c trọn vẹn, cần lắm những sự thấu hiểu, cảm th&ocirc;ng, chia sẻ v&agrave; y&ecirc;u thương nhau</strong></p>\r\n\r\n<ul>\r\n	<li>V&igrave; đ&agrave;n &ocirc;ng v&agrave; đ&agrave;n b&agrave; đến từ hai h&agrave;nh tinh kh&aacute;c nhau, h&atilde;y t&ocirc;n trọng v&agrave; chấp nhận mọi điều kh&aacute;c biệt.</li>\r\n	<li>Bạn kh&ocirc;ng thể v&agrave; cũng kh&ocirc;ng n&ecirc;n cố thay đổi người bạn đời của m&igrave;nh. Thay đổi l&agrave; việc của họ, c&ograve;n việc của bạn l&agrave; thay đổi c&aacute;ch giao tiếp, phản ứng v&agrave; đối đ&aacute;p với người bạn đời của m&igrave;nh.</li>\r\n	<li>Ch&uacute;ng ta dễ d&agrave;ng đổ lỗi của m&igrave;nh l&ecirc;n đầu bạn đời hơn l&agrave; nhận thấy sai lầm của ch&iacute;nh m&igrave;nh. V&igrave; vậy, h&atilde;y lắng nghe để tận hưởng cuộc sống h&ocirc;n nh&acirc;n ngọt ng&agrave;o như l&uacute;c mới y&ecirc;u<img alt=\"Đàn Ông Sao Hỏa Đàn Bà Sao Kim\" src=\"https://salt.tikicdn.com/ts/tmp/aa/18/9b/b5a9ab2f3a08f9a71e5e3ce86ef4f060.jpg\" style=\"border-style:none; height:499px; width:750px\" /></li>\r\n</ul>\r\n\r\n<p><strong>Đ&Agrave;N &Ocirc;NG SAO HỎA - Đ&Agrave;N B&Agrave; SAO KIM</strong></p>\r\n\r\n<p>Để cảm thấy dễ chịu hơn, người sao Hỏa n&aacute;u m&igrave;nh trong k&eacute;n để tự vấn về rắc rối của m&igrave;nh. Người sao Kim lại cảm thấy nhẹ nh&otilde;m hơn khi ai đ&oacute; sẻ chia những vấn đề c&ugrave;ng họ. Đ&agrave;n &ocirc;ng giữ k&iacute;n những b&iacute; mật trong khi phụ nữ lại rất th&iacute;ch b&agrave;y tỏ</p>\r\n\r\n<p>Đ&agrave;n &ocirc;ng c&oacute; động lực v&agrave; tr&agrave;n đầy sức mạnh khi họ cảm thấy được cần đến. C&ograve;n phụ nữ th&igrave; c&oacute; động lực v&agrave; sẵn s&agrave;ng h&agrave;nh động khi họ cảm thấy được y&ecirc;u thương. L&agrave;m thế n&agrave;o để động vi&ecirc;n người kh&aacute;c giới? Cuốn s&aacute;ch HAY NHẤT MỌI THỜI ĐẠI về thấu hiểu người kh&aacute;c giới v&agrave; tạo hạnh ph&uacute;c trong h&ocirc;n nh&acirc;n, gia đ&igrave;nh.</p>\r\n\r\n<p>Ng&ocirc;n ngữ của đ&agrave;n &ocirc;ng sao Hỏa v&agrave; đ&agrave;n b&agrave; sao Kim c&oacute; từ ngữ giống nhau nhưng c&aacute;ch sử dụng lại mang tới những &yacute; nghĩa kh&aacute;c nhau. Với phụ nữ, để diễn đạt trọn vẹn cảm x&uacute;c của m&igrave;nh họ thường sử dụng lối n&oacute;i cường điệu, ẩn dụ v&agrave; kh&aacute;i qu&aacute;t. Giải quyết những bất đồng ng&ocirc;n ngữ</p>\r\n\r\n<p>Khi đ&agrave;n &ocirc;ng y&ecirc;u phụ nữ, nhưng theo định kỳ, anh ấy cần xa c&aacute;ch trước khi c&oacute; thể gần gũi hơn. C&ograve;n với phụ nữ, l&ograve;ng tự t&ocirc;n của họ d&acirc;ng l&ecirc;n v&agrave; hạ xuống giống như một con s&oacute;ng. Khi đến tận c&ugrave;ng, n&oacute; l&agrave; sắp xếp lại cảm x&uacute;c. Đ&agrave;n &ocirc;ng giống như d&acirc;y cao su, đ&agrave;n b&agrave; lại như những con s&oacute;ng</p>\r\n\r\n<p>101 c&aacute;ch để thấu hiểu v&agrave; ghi được những điểm số cao trong mắt người kh&aacute;c giới. Rất dễ d&agrave;ng nếu bạn sở hữu cuốn s&aacute;ch &quot;Đ&agrave;n &ocirc;ng sao Hỏa đ&agrave;n b&agrave; sao Kim&quot; trong tay. C&aacute;ch để d&agrave;nh được thiện cảm với người kh&aacute;c giới</p>\r\n\r\n<p>Một mối quan hệ cũng giống như một khu vườn, để ph&aacute;t triển, n&oacute; phải được tưới nước thường xuy&ecirc;n. Cũng tương tự như thế, để g&igrave;n giữ sự kỳ diệu của t&igrave;nh y&ecirc;u tồn tại, ch&uacute;ng ta hiểu biết v&agrave; nu&ocirc;i dưỡng những nhu cầu đặt biệt của t&igrave;nh y&ecirc;u.</p>\r\n\r\n<p><strong>&quot;Đ&Agrave;N &Ocirc;NG SAO HỎA - Đ&Agrave;N B&Agrave; SAO KIM&quot;&nbsp; Đ&Atilde; ĐẾN TAY H&Agrave;NG NG&Agrave;N ĐỘC GIẢ V&Agrave; NHẬN ĐƯỢC V&Ocirc; SỐ NHỮNG PHẢN HỒI T&Iacute;CH CỰC, KHEN NGỢI CUỐN S&Aacute;CH</strong></p>\r\n\r\n<p><strong><img alt=\"Đàn Ông Sao Hỏa Đàn Bà Sao Kim\" src=\"https://salt.tikicdn.com/ts/tmp/f6/2c/bd/c3543c64dc6fd70549ec31f9ddcb7867.jpg\" style=\"border-style:none; height:355px; width:750px\" /></strong></p>\r\n', 'bc10734989977da424642a1c4750eee2.jpg.webp', 188000, 150000, '2021-11-28 11:46:14', 5, 0, 6),
('sp617763', 10, 'huycute', 'Sản Phẩm đăng bán thử tính năng hóa đơn của khách hàng', '', '', 100000, 50000, '2021-12-02 13:35:20', 0, 0, 0),
('sp71128', 2, 'phanvan123', 'Iphone 13', '<p>Apple thỏa m&atilde;n sự chờ đ&oacute;n của iFan v&agrave; người d&ugrave;ng với sự ra mắt của iPhone 13. D&ugrave; ngoại h&igrave;nh kh&ocirc;ng c&oacute; nhiều thay đổi so với iPhone 12 nhưng với cấu h&igrave;nh mạnh mẽ hơn, đặc biệt pin &ldquo;tr&acirc;u&rdquo; hơn v&agrave; khả năng quay phim chụp ảnh cũng ấn tượng hơn, hứa hẹn mang đến những trải nghiệm th&uacute; vị tr&ecirc;n phi&ecirc;n bản mới n&agrave;y.</p>\r\n', 'iphone-13-starlight-1-600x600.jpg', 30000000, 27990000, '2021-11-24 20:37:22', 2, 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `id_tin_tuc` int(11) NOT NULL,
  `id_dm_tin` int(11) NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `luot_xem` int(11) NOT NULL,
  `ngay_dang` datetime NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`id_binh_luan`),
  ADD KEY `fk_binh-luan_nguoi-dung` (`ten_dang_nhap`),
  ADD KEY `fk_binh-luan_tin-tuc` (`id_tin_tuc`),
  ADD KEY `fk_binh-luan_san-pham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `danhmuc_sp`
--
ALTER TABLE `danhmuc_sp`
  ADD PRIMARY KEY (`Id_dm_sp`);

--
-- Chỉ mục cho bảng `danh_muc_tin`
--
ALTER TABLE `danh_muc_tin`
  ADD PRIMARY KEY (`id_dm_tin`);

--
-- Chỉ mục cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id_gio_hang`),
  ADD KEY `FK_ID_SP` (`id_sanpham`),
  ADD KEY `FK_ID_NGUOI_DUNG` (`ten_dang_nhap`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id_hoa_don`),
  ADD KEY `fk_hoa-don_nguoi-dung` (`ten_dang_nhap`),
  ADD KEY `fk_hoa-don_mgg` (`id_ma_giam_gia`);

--
-- Chỉ mục cho bảng `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  ADD PRIMARY KEY (`id_cthd`),
  ADD KEY `fk_hdct_hoa-don` (`id_hoa_don`),
  ADD KEY `fk_hdct_mgg` (`id_ma_giam_gia`),
  ADD KEY `fk_hdct_san-pham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `hop_dong`
--
ALTER TABLE `hop_dong`
  ADD PRIMARY KEY (`id_hop_dong`),
  ADD KEY `fk_hop-dong_nguoi-dung` (`ten_dang_nhap`),
  ADD KEY `fk_hop-dong_san-pham` (`id_sanpham`),
  ADD KEY `fk_hop-dong_qcsp` (`id_qc_sp`);

--
-- Chỉ mục cho bảng `imgs`
--
ALTER TABLE `imgs`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `fk_imgs_nguoi-dung` (`ten_dang_nhap`),
  ADD KEY `fk_imgs_san-pham` (`id_sanpham`),
  ADD KEY `fk_imgs_tin-tuc` (`id_tin_tuc`);

--
-- Chỉ mục cho bảng `ma_giam_gia`
--
ALTER TABLE `ma_giam_gia`
  ADD PRIMARY KEY (`id_ma_giam_gia`),
  ADD KEY `fk_magg_nguoi-dung` (`ten_dang_nhap`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`ten_dang_nhap`);

--
-- Chỉ mục cho bảng `quang_cao_sp`
--
ALTER TABLE `quang_cao_sp`
  ADD PRIMARY KEY (`id_qc_sp`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD KEY `fk_san-pham_dmsp` (`id_dm_sp`),
  ADD KEY `fk_san-pham_nguoi-dung` (`ten_dang_nhap`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`id_tin_tuc`),
  ADD KEY `fk_tin-tuc_danh-muc-tin` (`id_dm_tin`),
  ADD KEY `fk_tin-tuc_nguoi-dung` (`ten_dang_nhap`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `id_binh_luan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `danhmuc_sp`
--
ALTER TABLE `danhmuc_sp`
  MODIFY `Id_dm_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `danh_muc_tin`
--
ALTER TABLE `danh_muc_tin`
  MODIFY `id_dm_tin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id_gio_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  MODIFY `id_cthd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `imgs`
--
ALTER TABLE `imgs`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `quang_cao_sp`
--
ALTER TABLE `quang_cao_sp`
  MODIFY `id_qc_sp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `id_tin_tuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `fk_binh-luan_nguoi-dung` FOREIGN KEY (`ten_dang_nhap`) REFERENCES `nguoi_dung` (`ten_dang_nhap`),
  ADD CONSTRAINT `fk_binh-luan_san-pham` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id_sanpham`),
  ADD CONSTRAINT `fk_binh-luan_tin-tuc` FOREIGN KEY (`id_tin_tuc`) REFERENCES `tin_tuc` (`id_tin_tuc`);

--
-- Các ràng buộc cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `FK_ID_NGUOI_DUNG` FOREIGN KEY (`ten_dang_nhap`) REFERENCES `nguoi_dung` (`ten_dang_nhap`),
  ADD CONSTRAINT `FK_ID_SP` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id_sanpham`);

--
-- Các ràng buộc cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `fk_hoa-don_mgg` FOREIGN KEY (`id_ma_giam_gia`) REFERENCES `ma_giam_gia` (`id_ma_giam_gia`),
  ADD CONSTRAINT `fk_hoa-don_nguoi-dung` FOREIGN KEY (`ten_dang_nhap`) REFERENCES `nguoi_dung` (`ten_dang_nhap`);

--
-- Các ràng buộc cho bảng `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  ADD CONSTRAINT `fk_hdct_hoa-don` FOREIGN KEY (`id_hoa_don`) REFERENCES `hoa_don` (`id_hoa_don`),
  ADD CONSTRAINT `fk_hdct_mgg` FOREIGN KEY (`id_ma_giam_gia`) REFERENCES `ma_giam_gia` (`id_ma_giam_gia`),
  ADD CONSTRAINT `fk_hdct_san-pham` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id_sanpham`);

--
-- Các ràng buộc cho bảng `hop_dong`
--
ALTER TABLE `hop_dong`
  ADD CONSTRAINT `fk_hop-dong_nguoi-dung` FOREIGN KEY (`ten_dang_nhap`) REFERENCES `nguoi_dung` (`ten_dang_nhap`),
  ADD CONSTRAINT `fk_hop-dong_qcsp` FOREIGN KEY (`id_qc_sp`) REFERENCES `quang_cao_sp` (`id_qc_sp`),
  ADD CONSTRAINT `fk_hop-dong_san-pham` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id_sanpham`);

--
-- Các ràng buộc cho bảng `imgs`
--
ALTER TABLE `imgs`
  ADD CONSTRAINT `fk_imgs_nguoi-dung` FOREIGN KEY (`ten_dang_nhap`) REFERENCES `nguoi_dung` (`ten_dang_nhap`),
  ADD CONSTRAINT `fk_imgs_san-pham` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id_sanpham`),
  ADD CONSTRAINT `fk_imgs_tin-tuc` FOREIGN KEY (`id_tin_tuc`) REFERENCES `tin_tuc` (`id_tin_tuc`);

--
-- Các ràng buộc cho bảng `ma_giam_gia`
--
ALTER TABLE `ma_giam_gia`
  ADD CONSTRAINT `fk_magg_nguoi-dung` FOREIGN KEY (`ten_dang_nhap`) REFERENCES `nguoi_dung` (`ten_dang_nhap`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `fk_san-pham_dmsp` FOREIGN KEY (`id_dm_sp`) REFERENCES `danhmuc_sp` (`Id_dm_sp`),
  ADD CONSTRAINT `fk_san-pham_nguoi-dung` FOREIGN KEY (`ten_dang_nhap`) REFERENCES `nguoi_dung` (`ten_dang_nhap`);

--
-- Các ràng buộc cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD CONSTRAINT `fk_tin-tuc_danh-muc-tin` FOREIGN KEY (`id_dm_tin`) REFERENCES `danh_muc_tin` (`id_dm_tin`),
  ADD CONSTRAINT `fk_tin-tuc_nguoi-dung` FOREIGN KEY (`ten_dang_nhap`) REFERENCES `nguoi_dung` (`ten_dang_nhap`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
