-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 15, 2021 lúc 07:17 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

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
(18, 'phanvan123', NULL, 'sp158332', 'ksaksa', '2021-12-01 06:25:38', 5),
(19, 'phanvan123', NULL, 'sp274', 'ok', '2021-12-01 06:44:13', 2),
(20, 'phanvan123', NULL, 'sp274', 'koikj', '2021-12-01 06:44:18', 4),
(21, 'phanvan123', NULL, 'sp274', ';lrgklslkg', '2021-12-01 06:44:23', 1),
(22, 'phanvan123', NULL, 'sp274', 'álflkaslkgaskl', '2021-12-01 06:44:29', 5),
(23, 'phanvan123', NULL, 'sp158332', 'ok', '2021-12-01 14:42:04', 1),
(24, 'phanvan123', NULL, 'sp158332', 'afasf', '2021-12-01 14:42:08', 1),
(25, 'phanvan123', NULL, 'sp158332', 'ckakjck', '2021-12-01 14:42:12', 1),
(26, 'phanvan123', NULL, 'sp388278', '', '2021-12-02 14:26:35', 4),
(32, 'phanvan123', NULL, 'sp158332', 'hdsio', '2021-12-05 09:48:24', 1),
(33, 'phanvan0322', NULL, 'sp521557', 'ok', '2021-12-06 06:14:41', 3),
(34, 'phanvan123', NULL, 'sp576156', 'ok', '2021-12-15 05:25:18', 4);

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
(10, 'Sách tư duy - Kỹ năng sống 2', 'Mua online sách tư duy - kỹ năng sống giá rẻ', '524a27dcd45e8a13ae6eecb3dfacba7c.jpg.webp'),
(11, 'Đầm, váy', 'Danh mục sản phẩm đầm váy', '809cd640841f14864e3f4e9c0cb15b01.jpg.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc_tin`
--

CREATE TABLE `danh_muc_tin` (
  `id_dm_tin` int(11) NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc_tin`
--

INSERT INTO `danh_muc_tin` (`id_dm_tin`, `tieu_de`, `mo_ta`) VALUES
(1, 'Tin công nghệ', 'Danh mục công nghệ nổi tiếng');

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

--
-- Đang đổ dữ liệu cho bảng `gio_hang`
--

INSERT INTO `gio_hang` (`id_gio_hang`, `id_sanpham`, `so_luong`, `tong_tien`, `ten_dang_nhap`) VALUES
(24, 'sp388278', 1, 150000, 'phanvan0322'),
(25, 'sp301768', 2, 20000000, 'phanvan0322');

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
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`id_hoa_don`, `ten_dang_nhap`, `tong_tien`, `ngay_mua`, `id_ma_giam_gia`, `trang_thai`) VALUES
('hd255839', 'phanvan123', 70980000, '2021-12-15 06:10:50', NULL, 0),
('hd378365', 'phanvan123', 447000, '2021-12-15 06:16:24', NULL, 0),
('hd499098', 'phanvan123', 298000, '2021-12-15 06:12:09', NULL, 0),
('hd792636', 'phanvan123', 149000, '2021-12-15 06:11:41', NULL, 0),
('hd824741', 'phanvan123', 447000, '2021-12-15 06:15:45', NULL, 0);

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
  `tong_tien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don_chi_tiet`
--

INSERT INTO `hoa_don_chi_tiet` (`id_cthd`, `id_sanpham`, `id_hoa_don`, `so_luong`, `id_ma_giam_gia`, `tong_tien`) VALUES
(1, 'sp853838', 'hd255839', 2, NULL, 141960000),
(2, 'sp576156', 'hd792636', 1, NULL, 149000),
(3, 'sp576156', 'hd499098', 2, NULL, 596000),
(4, 'sp576156', 'hd824741', 3, NULL, 3),
(5, 'sp576156', 'hd378365', 3, NULL, 447000);

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
(8, 'iphone-13-white-1.jpg', NULL, 'sp521557', 'phanvan0322'),
(9, 'iphone-13-white-2.jpg', NULL, 'sp521557', 'phanvan0322'),
(10, 'xiaomi-11t-1-1.jpg', NULL, NULL, 'phanvan123'),
(11, 'xiaomi-11t-2-1.jpg', NULL, NULL, 'phanvan123'),
(12, 'samsung-galaxy-z-flip-3-kem-1-org.jpg', NULL, 'sp274', 'phanvan0322'),
(13, 'samsung-galaxy-z-flip-3-kem-2-org.jpg', NULL, 'sp274', 'phanvan0322'),
(14, 'samsung-galaxy-z-flip-3-kem-3-org.jpg', NULL, 'sp274', 'phanvan0322'),
(15, 'samsung-galaxy-z-flip-3-kem-4-org.jpg', NULL, 'sp274', 'phanvan0322'),
(16, 'iaomi-11t-xanh-duong-1.jpg', NULL, 'sp87034', 'phanvan123'),
(17, 'space-1-org.jpg', NULL, 'sp158332', 'phanvan123'),
(18, 'space-2-org.jpg', NULL, 'sp158332', 'phanvan123'),
(19, 'space-3-org.jpg', NULL, 'sp87034', 'phanvan123'),
(20, 'space-4-org.jpg', NULL, 'sp87034', 'phanvan123'),
(21, '2dbca45d42ed269d1073a2a5121f5464.jpg.webp', NULL, 'sp388278', 'phanvan0322'),
(22, '9d87e8678ad0cdd454a1755ba926ea97.jpg.webp', NULL, 'sp388278', 'phanvan0322'),
(23, 'bd04f0946bed192d8cf7875167b0e3bd.jpg.webp', NULL, 'sp388278', 'phanvan0322'),
(24, 'bc10734989977da424642a1c4750eee2.jpg.webp', NULL, 'sp388278', 'phanvan0322'),
(25, 'samsung-galaxy-z-fold-3-green3-org.jpg', NULL, 'sp779562', 'nguoiquantri'),
(26, 'samsung-galaxy-z-fold-3-green4-org.jpg', NULL, 'sp779562', 'nguoiquantri'),
(27, 'samsung-galaxy-z-fold-3-green5-org.jpg', NULL, 'sp779562', 'nguoiquantri'),
(28, 'samsung-galaxy-z-fold-3-green-gc-org.jpg', NULL, 'sp779562', 'nguoiquantri'),
(29, 'ipad-pro-m1-129-inch-wifi-cellular-128gb-2021-bac-1-org.jpg', NULL, 'sp853838', 'nguoiquantri'),
(30, 'ipad-pro-m1-129-inch-wifi-cellular-128gb-2021-bac-2-org.jpg', NULL, 'sp853838', 'nguoiquantri'),
(31, 'ipad-pro-m1-129-inch-wifi-cellular-512gb-2021-bac-3.jpg', NULL, 'sp853838', 'nguoiquantri'),
(32, 'binh-giu-nhiet-inox-300ml-dmx-bg005-nau-1-org.jpg', NULL, 'sp292635', 'nguoiquantri'),
(33, 'binh-giu-nhiet-inox-300ml-dmx-bg005-nau-3-org.jpg', NULL, 'sp292635', 'nguoiquantri'),
(34, 'inox-500ml-dmx-bg005-2-1-org.jpg', NULL, NULL, 'nguoiquantri'),
(35, '6d8e82789023ce725bed00cc07cb5c22.png.webp', NULL, 'sp576156', 'nguoiquantri'),
(36, 'cdcb6e36d06a99ea148c8363f2deedc6.png.webp', NULL, 'sp576156', 'nguoiquantri'),
(37, '6f99a926b98b15981be0068a0f666397.png.webp', NULL, 'sp576156', 'nguoiquantri'),
(38, '509cbaaf1a509425c0471bdf17e517fb.jpg.webp', NULL, 'sp478707', 'nguoiquantri'),
(39, '963d63c3dca69a9e40094b7765d4a70c.jpg.webp', NULL, 'sp478707', 'nguoiquantri'),
(40, 'dba866b8e53919a9e48328a6fa618378.jpg.webp', NULL, 'sp478707', 'nguoiquantri'),
(41, '0a56dd72f758fdc59cadf2f52e299f2c.jpg.webp', NULL, 'sp307785', 'nguoiquantri'),
(42, '0400b50265e6692191d69a943ff4b293.jpg.webp', NULL, 'sp307785', 'nguoiquantri'),
(43, '10424b38726d5f38582783d1af66df27.jpg.webp', NULL, 'sp307785', 'nguoiquantri'),
(44, 'e2e6b8f51447e542c33bd4a04720f780.jpg.webp', NULL, 'sp307785', 'nguoiquantri'),
(45, '2bf5d083f8ebd38f640050d19559288d.jpg.webp', NULL, 'sp337902', 'huycute123'),
(46, '77e73b99d76cc60a2776fb1fe06525c3.jpg.webp', NULL, 'sp337902', 'huycute123'),
(47, '809cd640841f14864e3f4e9c0cb15b01.jpg.webp', NULL, 'sp337902', 'huycute123'),
(48, 'd5c52e16594516505b2c0b8845942881.jpg.webp', NULL, 'sp337902', 'huycute123'),
(49, '6e466748d28bc561e50bf08620cf8466.jpg.webp', NULL, 'sp280184', 'huycute123'),
(50, '6e466748d28bc561e50bf08620cf8466.jpg.webp', NULL, NULL, 'huycute123'),
(51, '71363163273a1dd95b709108f6d2bff8.jpg.webp', NULL, 'sp280184', 'huycute123'),
(52, '854603a4fc63b5adfa5d7d61730f3ba5.jpg.webp', NULL, 'sp280184', 'huycute123'),
(53, '1f4fab16b86596b5afc44488444b05a6.jpg.webp', NULL, 'sp500442', 'huycute123'),
(54, '83f1ddf9260a8bf30ae1275546f2e6b6.jpg.webp', NULL, 'sp500442', 'huycute123'),
(55, '96429771da8cf189ca472b0aac1cfa07.jpg.webp', NULL, 'sp500442', 'huycute123'),
(56, 'e913d6fc2fbca0f92142b7ee545323fb.jpg.webp', NULL, 'sp500442', 'huycute123');

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

--
-- Đang đổ dữ liệu cho bảng `ma_giam_gia`
--

INSERT INTO `ma_giam_gia` (`id_ma_giam_gia`, `ten_dang_nhap`, `phan_tram_giam`, `trang_thai`, `ngay_bat_dau`, `ngay_ket_thuc`) VALUES
('gg1025', 'phanvan123', 10, 2, '2021-12-05', '2021-12-07'),
('khgm2357', NULL, 11, 0, '2021-12-11', '2021-12-15'),
('khgm253858', 'phanvan0322', 25, 1, '2021-12-11', '2021-12-14'),
('khgm2589', 'phanvan0322', 12, 1, '2021-12-10', '2021-12-14'),
('khgm57845', NULL, 5, 0, '2021-12-10', '2021-12-14'),
('lkajf4552', NULL, 8, 0, '2021-12-10', '2021-12-13');

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

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`ten_dang_nhap`, `mat_khau`, `ho_ten`, `dia_chi`, `sdt`, `cmnd`, `email`, `ngay_sinh`, `gioi_tinh`, `img`, `vai_tro`, `trang_thai`) VALUES
('huycute123', '25f9e794323b453885f5181f1b624d0b', 'Dương Ngọc Minh Huy', NULL, NULL, NULL, 'but2588@gmail.com', NULL, NULL, 'user.png', 1, 1),
('ngocanh123', 'fca9100f47064674dfc6bc1974812e54', 'Trần Dương Ngọc Anh', NULL, NULL, NULL, 'nguyenvana123@gmail.com', NULL, NULL, NULL, 1, 1),
('nguoiquantri', '2e96215287e189c771068f18f10791b6', 'nguoiquantri', NULL, NULL, NULL, 'nguoiquantri@gmail.com', NULL, NULL, 'user.png', 0, 1),
('phanvan0322', 'e10adc3949ba59abbe56e057f20f883e', 'Phan Tường Văn', '135, Nguyễn Văn Linh, Ninh Kiều,Cần Thơ', '0774091026', '123456789', 'phanvan0322@gmail.com', '0000-00-00', 'nam', 'user.png', 1, 1),
('phanvan123', '25f9e794323b453885f5181f1b624d0b', 'PTV', '135, Nguyễn Văn Linh, Ninh Kiều,Cần Thơ', '0774091026', '6556512889', 'phanvan0322@gmail.com', '2021-11-29', 'nam', 'hinh-nen-dien-thoai-dep-585x390.jpg', 2, 1),
('phanvan555', 'e10adc3949ba59abbe56e057f20f883e', 'Phan Văn', '135, Nguyễn Văn Linh, Ninh Kiều,Cần Thơ', '0774091026', '5555555', 'phanvan555@gmail.com', '2021-12-09', 'nam', 'hinh-nen-dien-thoai-dep-585x390.jpg', 2, 1);

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
('sp280184', 11, 'huycute123', 'Đầm Dự Tiệc Thời Trang Eden Dáng Xòe Bẹt Vai', '<p><strong><em>Đầm Dự Tiệc Thời Trang Eden D&aacute;ng X&ograve;e Bẹt Vai - D425 :</em></strong><em>&nbsp;Đ&acirc;y sẽ l&agrave; sự lựa chọn ho&agrave;n hảo cho những bữa tiệc tối sang trọng. Với bộ v&aacute;y đầm n&agrave;y, bạn sẽ v&ocirc; c&ugrave;ng quyến rũ v&agrave; nổi bật. Chất liệu vừa đủ d&agrave;y dặn để chiếc đầm c&oacute; phom d&aacute;ng ho&agrave;n hảo nhất nhưng vẫn giữ được sự thướt tha uyển chuyển trong từng bước đi của bạn.</em></p>\r\n\r\n<p><strong>Điểm nổi bật :</strong></p>\r\n\r\n<p>-Kiểu d&aacute;ng : Đầm d&aacute;ng x&ograve;e, c&oacute; c&uacute;p ngực</p>\r\n\r\n<p>-Chất liệu : Xốp loang</p>\r\n\r\n<p>-M&agrave;u : đỏ, xanh</p>\r\n\r\n<p>-Size : S, M, L, XL, XXL</p>\r\n\r\n<p>-Xuất xứ : Việt Nam.</p>\r\n\r\n<p><strong>Th&ocirc;ng số sản phẩm:</strong></p>\r\n\r\n<p>V&ograve;ng ngực x eo x m&ocirc;ng x chiều d&agrave;i :</p>\r\n\r\n<p>Size S : 82 x 66 x 86 x 100 (cm)&nbsp;(43-45kg)</p>\r\n\r\n<p>Size M : 86 x 70 x 92 x 100 (cm)&nbsp;(45-50kg)</p>\r\n\r\n<p>Size L: 90 x 74 x 96 x 100 (cm)&nbsp;(50-55kg)</p>\r\n\r\n<p>Size XL: 94 x 78 x 100 x 100 (cm)&nbsp;(55-60kg)</p>\r\n\r\n<p>Size XXL: 98 x 82 x 104 x 100 (cm) (60-65kg)</p>\r\n', '71363163273a1dd95b709108f6d2bff8.jpg.webp', 400000, 352000, '2021-12-15 13:07:34', 0, 1, 200),
('sp292635', 9, 'nguoiquantri', 'Bình giữ nhiệt inox 500 ml DMX BG005', '<h3>Một số lưu &yacute; khi sử dụng&nbsp;<a href=\"https://www.dienmayxanh.com/binh-giu-nhiet/inox-500ml-dmx-bg005\" target=\"_blank\">b&igrave;nh giữ nhiệt inox 500 ml DMX BG005</a>&nbsp;để b&igrave;nh bền tốt</h3>\r\n\r\n<p>B&igrave;nh mới mua về, bạn n&ecirc;n rửa qua b&igrave;nh bằng&nbsp;nước rửa ch&eacute;n, bột baking soda (mua tại si&ecirc;u thị, cửa h&agrave;ng tiện lợi) để l&agrave;m sạch bụi bẩn cũng như m&ugrave;i mới của sản phẩm.</p>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/images/5205/134798/binh-giu-nhiet-inox-300ml-dmx-bg005-nau-1-org.jpg\" onclick=\"return false;\"><img alt=\"Lưu ý khi sử dụng bình giữ nhiệt inox 500 ml DMX BG005\" src=\"https://cdn.tgdd.vn/Products/Images/5205/134798/binh-giu-nhiet-inox-300ml-dmx-bg005-nau-1-org.jpg\" /></a></p>\r\n\r\n<h3>Một số c&aacute;ch khử m&ugrave;i cho b&igrave;nh khi d&ugrave;ng</h3>\r\n\r\n<p><strong>C&aacute;ch 1:</strong>&nbsp;Pha lo&atilde;ng nước ấm hoặc bột baking soda với nước rửa ch&eacute;n rồi đổ v&agrave;o b&igrave;nh, đậy k&iacute;n nắp để qua đ&ecirc;m. S&aacute;ng h&ocirc;m sau bạn rửa lại bằng nước sạch.</p>\r\n\r\n<p><strong>C&aacute;ch 2:</strong>&nbsp;V&ograve; nh&agrave;u giấy b&aacute;o rồi cho v&agrave;o b&igrave;nh đậy k&iacute;n nắp, để 2 &ndash; 3 ng&agrave;y rồi rửa lại bằng nước ấm.</p>\r\n\r\n<p><strong>C&aacute;ch 3:</strong>&nbsp;Pha 1 muỗng baking soda pha với giấm t&aacute;o hoặc nước cốt chanh, đổ v&agrave;o b&igrave;nh v&agrave; đ&oacute;ng nắp rồi lắc mạnh nhiều lần. Sau đ&oacute; rửa lại b&igrave;nh bằng nước ấm. C&aacute;ch n&agrave;y rất hiệu quả để l&agrave;m sạch m&ugrave;i h&ocirc;i b&aacute;m l&acirc;u, kh&oacute; rửa.</p>\r\n\r\n<h3><a href=\"https://www.dienmayxanh.com/images/5205/134798/inox-500ml-dmx-bg005-36.jpg\" onclick=\"return false;\"><img alt=\"Một số nguyên liệu dùng để khử mùi bình giữ nhiệt\" src=\"https://cdn.tgdd.vn/Products/Images/5205/134798/inox-500ml-dmx-bg005-36.jpg\" /></a></h3>\r\n\r\n<p><em>Một số nguy&ecirc;n liệu d&ugrave;ng để khử m&ugrave;i b&igrave;nh giữ nhiệt</em></p>\r\n\r\n<h3>Một số lưu &yacute; khi sử dụng</h3>\r\n\r\n<p>- Kh&ocirc;ng cho b&igrave;nh v&agrave;o&nbsp;<a href=\"https://www.dienmayxanh.com/lo-vi-song\" target=\"_blank\">l&ograve; vi s&oacute;ng</a>, v&igrave; chất liệu b&igrave;nh bằng kim loại c&oacute; thể g&acirc;y ch&aacute;y nổ.</p>\r\n\r\n<p>- Kh&ocirc;ng cho b&igrave;nh v&agrave;o&nbsp;<a href=\"https://www.dienmayxanh.com/may-rua-chen\" target=\"_blank\">m&aacute;y rửa ch&eacute;n</a>&nbsp;v&igrave; m&aacute;y kh&ocirc;ng thể l&agrave;m sạch c&aacute;c khe/ kẽ hở nhỏ của b&igrave;nh, hơi n&oacute;ng trong qu&aacute; tr&igrave;nh hoạt động của m&aacute;y c&oacute; thể l&agrave;m gi&atilde;n nở vỏ kim loại, lớp c&aacute;ch nhiệt l&agrave;m giảm tuổi thọ b&igrave;nh.</p>\r\n\r\n<p>- Kh&ocirc;ng cho b&igrave;nh (nhất l&agrave; khi đang đựng nước n&oacute;ng) v&agrave;o ngăn đ&ocirc;ng&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh\" target=\"_blank\">tủ lạnh</a>&nbsp;v&igrave; chất lỏng trong b&igrave;nh sẽ gi&atilde;n nở hoặc co lại l&agrave;m biến dạng b&igrave;nh. Nếu đang đựng nước lạnh th&igrave; bạn c&oacute; thể bỏ v&agrave;o ngăn m&aacute;t nhưng kh&ocirc;ng cần thiết v&igrave; b&igrave;nh đ&atilde; c&aacute;ch nhiệt sẵn.</p>\r\n\r\n<p>- Tr&aacute;nh l&agrave;m rơi rớt, va đập mạnh để kh&ocirc;ng l&agrave;m biến dạng b&igrave;nh hay trầy xước lớp sơn b&ecirc;n ngo&agrave;i b&igrave;nh.</p>\r\n\r\n<p>- Kh&ocirc;ng n&ecirc;n thay đổi đột ngột nhiệt độ n&oacute;ng/ lạnh của thực phẩm b&ecirc;n trong b&igrave;nh (cần để b&igrave;nh c&oacute; thời gian gi&atilde;n c&aacute;ch khoảng 10 &ndash; 15 ph&uacute;t) để đảm bảo tuổi thọ v&agrave; khả năng giữ nhiệt của b&igrave;nh.</p>\r\n\r\n<p>- Cần ch&ugrave;i rửa sạch ngay sau khi sử dụng để b&igrave;nh kh&ocirc;ng bị b&aacute;m m&ugrave;i v&agrave; đảm bảo vệ sinh cho lần sử dụng tiếp theo.</p>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/images/5205/132744/1300ml-dmx-bt001-9.png\" onclick=\"return false;\"><img alt=\"Một số lưu ý khi sử dụng bình giữ nhiệt inox 500 ml DMX BG005 \" src=\"https://cdn.tgdd.vn/Products/Images/5205/132744/1300ml-dmx-bt001-9.png\" /></a></p>\r\n\r\n<p>Cũng giống như c&aacute;c loại&nbsp;<a href=\"https://www.dienmayxanh.com/do-dung-gia-dinh\" target=\"_blank\">đồ d&ugrave;ng gia đ&igrave;nh</a>&nbsp;kh&aacute;c, để b&igrave;nh giữ nhiệt được bền tốt bạn cần tu&acirc;n thủ c&aacute;c hướng dẫn sử dụng từ nh&agrave; sản xuất, được in tr&ecirc;n bao b&igrave; của sản phẩm.</p>\r\n', 'binh-giu-nhiet-inox-300ml-dmx-bg005-daidien-1-300x300.jpg', 90000, 63000, '2021-12-12 17:06:32', 0, 1, 98),
('sp301768', 2, 'phanvan123', 'Xiaomi 11T 5G 128GB', '<p>Xiaomi 11T đầy nổi bật với thiết kế v&ocirc; c&ugrave;ng trẻ trung, m&agrave;n h&igrave;nh AMOLED, bộ 3 camera sắc n&eacute;t v&agrave; vi&ecirc;n pin lớn đ&acirc;y sẽ l&agrave; mẫu smartphone của Xiaomi thỏa m&atilde;n mọi nhu cầu giải tr&iacute;, l&agrave;m việc v&agrave; l&agrave; niềm đam m&ecirc; s&aacute;ng tạo của bạn.</p>\r\n', 'Compile-PHP-la-gi.png', 10990000, 10000000, '2021-11-24 21:55:45', 3.5, 0, 1),
('sp307785', 8, 'nguoiquantri', 'Sự Cám Dỗ Cuối Cùng', '<p>Năm 10 tuổi, Giản Nhu lần đầu ti&ecirc;n gặp Trịnh Vĩ, cậu thiếu ni&ecirc;n đẹp trai c&oacute; sức h&uacute;t kỳ lạ đối với c&ocirc;. Họ trở th&agrave;nh những người bạn th&acirc;n thiết v&agrave; t&igrave;nh cảm đầu đời đ&atilde; đến rất trong s&aacute;ng v&agrave; thuần khiết.</p>\r\n\r\n<p>Năm c&ocirc; 14 tuổi, sự cố xảy ra bất ngờ với gia đ&igrave;nh c&ocirc;, bố c&ocirc; - một ph&oacute;ng vi&ecirc;n - ng&atilde; từ tầng cao xuống đất, qua đời, mẹ c&ocirc; v&agrave; em g&aacute;i bị xe đ&acirc;m, gia đ&igrave;nh c&ocirc; tan n&aacute;t; v&igrave; thế c&ocirc; đ&atilde; kh&ocirc;ng thể gặp Trịnh Vĩ ở rạp chiếu phim như đ&atilde; hẹn v&agrave; cuộc đời c&ocirc; bước sang một trang mới&hellip;17 tuổi, để kiếm tiền chu cấp cho mẹ v&agrave; tiền chưa bệnh cho em g&aacute;i, Giản Nhu từ bỏ ước mơ m&uacute;a ba l&ecirc; m&agrave; bước ch&acirc;n v&agrave;o l&agrave;ng giải tr&iacute;. L&agrave; một c&ocirc; g&aacute;i xinh đẹp v&agrave; c&aacute; t&iacute;nh, c&oacute; ch&uacute;t bướng bỉnh, c&ocirc; hiểu những &ldquo;quy tắc ngầm&rdquo;, mặt tr&aacute;i ph&ugrave; phiếm của thế giới giải tr&iacute; bề ngo&agrave;i h&agrave;o nho&aacute;ng nhưng kh&ocirc;ng bao giờ cho ph&eacute;p m&igrave;nh &ldquo;sa ch&acirc;n&rdquo; để nổi tiếng. Phải đ&oacute;ng vai diễn vi&ecirc;n quần ch&uacute;ng, diễn vi&ecirc;n đ&oacute;ng thế rồi vai phụ, bị nh&agrave; quản l&yacute; &ldquo;đ&oacute;ng băng&rdquo; để g&acirc;y sức &eacute;p buộc c&ocirc; phải &ldquo;b&aacute;n m&igrave;nh&rdquo; để c&oacute; cơ hội được đ&oacute;ng vai vai nữ ch&iacute;nh, trở th&agrave;nh nữ diễn vi&ecirc;n hạng nhất nhưng Giản Nhu trước sau ki&ecirc;n quyết từ chối, d&ugrave; phải tự l&agrave;m m&igrave;nh bị thương.</p>\r\n\r\n<p>Năm 18 tuổi, Giản Nhu gặp lại Trịnh Vĩ, anh chủ động đến t&igrave;m c&ocirc; trong bộ qu&acirc;n phục. Sau 4 năm xa c&aacute;ch, t&igrave;nh cảm trong s&aacute;ng đầu đời một lần nữa c&oacute; cơ hội được nhen l&ecirc;n v&agrave; n&oacute; đ&atilde; b&ugrave;ng ch&aacute;y th&agrave;nh t&igrave;nh y&ecirc;u đầu nồng n&agrave;n, tha thiết, tưởng như kh&ocirc;ng thể chia l&igrave;a. Họ sống ở 2 th&agrave;nh phố, anh đang học trường qu&acirc;n đội kỷ luật rất nghi&ecirc;m ngặt, c&ocirc; đang l&agrave; diễn vi&ecirc;n c&ocirc;ng việc rất bận rộn, nhưng họ vẫn d&agrave;nh cho nhau những ng&agrave;y cuối tuần nồng n&agrave;n, những buổi hẹn l&atilde;ng mạn, t&igrave;nh y&ecirc;u đẹp như bản t&igrave;nh ca trong bộ phim họ đ&atilde; hứa xem c&ugrave;ng nhau &ldquo;Titanic&rdquo;. Nhưng số phận lại một lần nữa t&agrave;n nhẫn với Giản Nhu khi c&ocirc; ph&aacute;t hiện ra một b&iacute; mật động trời về c&aacute;i chết của bố c&ocirc;. B&iacute; mật c&oacute; li&ecirc;n quan đến th&acirc;n thế của Trịnh Vĩ v&agrave; cũng v&igrave; l&yacute; do n&agrave;y, Giản Nhu đ&atilde; dứt kho&aacute;t chia tay với Trịnh Vĩ bằng phương thức tổn thương nhất. Khi đ&oacute; c&ocirc; mới 19 tuổi.</p>\r\n\r\n<p>5 năm sau, trong l&uacute;c sự nghiệp đang đ&agrave; l&ecirc;n phơi phới v&agrave; tưởng như c&ocirc; đ&atilde; dứt bỏ được qu&aacute; khứ ph&iacute;a sau lưng th&igrave; bất ngờ c&ocirc; gặp lại anh, người m&agrave; c&ocirc; đ&atilde; cố t&igrave;nh lảng tr&aacute;nh suốt từng ấy năm v&agrave; lần n&agrave;y, anh kh&ocirc;ng cho ph&eacute;p c&ocirc; c&oacute; thể tr&aacute;nh n&eacute; m&igrave;nh được nữa&hellip;</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n', '0400b50265e6692191d69a943ff4b293.jpg.webp', 200000, 113516, '2021-12-15 12:52:43', 0, 1, 120),
('sp337902', 11, 'huycute123', 'Đầm Công Sở Xòe Tay Phồng K&K', '<p>- Đầm C&ocirc;ng Sở X&ograve;e Tay Phồng K&amp;K Fashion KK104-14</p>\r\n\r\n<p>- Chất liệu: Đũi</p>\r\n\r\n<p>- M&agrave;u sắc: Hồng</p>\r\n\r\n<p>- Thương hiệu: K&amp;K Fashion</p>\r\n\r\n<p>- Xuất Xứ: Việt Nam</p>\r\n\r\n<p>Một mẫu đầm x&ograve;e KK104-14 đến từ sự dễ thương của ph&aacute;i đẹp với gam m&agrave;u hồng nhẹ nh&agrave;ng, ngọt ng&agrave;o. Thiết kế xinh xắn n&agrave;y sẽ h&ocirc; biến n&agrave;ng trở th&agrave;nh những c&ocirc; n&agrave;ng xinh đẹp trong mắt mọi người xung quanh. Chất liệu đũi g&acirc;n c&oacute; độ d&agrave;y vừa phải giữ cho form d&aacute;ng đầm kh&ocirc;ng qu&aacute; rũ tạo độ x&ograve;e bồng bềnh, đặc biệt l&agrave; thấm h&uacute;t mồ h&ocirc;i tốt, mang lại cảm gi&aacute;c dễ chịu v&agrave; thoải m&aacute;i cả ng&agrave;y d&agrave;i. Kiểu d&aacute;ng tay ngắn v&agrave; phồng, c&ugrave;ng t&ugrave;ng v&aacute;y x&ograve;e xếp ly tự nhi&ecirc;n sẽ mang đến n&eacute;t đẹp dịu d&agrave;ng v&agrave; ngọt ng&agrave;o cho n&agrave;ng mỗi khi xuất hiện d&ugrave; c&ocirc;ng sở hay dạo phố cuối tuần đấy.&nbsp;</p>\r\n\r\n<p>CHẾ ĐỘ ĐỔI H&Agrave;NG</p>\r\n\r\n<p>- Được đổi h&agrave;ng trong v&ograve;ng 7 ng&agrave;y hoặc trả (nếu sản phẩm bị lỗi)</p>\r\n\r\n<p>CHẾ ĐỘ BẢO H&Agrave;NH SẢN PHẨM</p>\r\n\r\n<p>- K&amp;K Fashion bảo h&agrave;nh trọn đời sản phẩm</p>\r\n\r\n<p>-------------------------------------------------------------------------------------</p>\r\n\r\n<p>Đ&Ocirc;I N&Eacute;T VỀ K&amp;K FASHION</p>\r\n\r\n<p>-----</p>\r\n\r\n<p>K&amp;K Fashion cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; tin tưởng v&agrave; mua h&agrave;ng tại shop, ch&uacute;c c&aacute;c n&agrave;ng lu&ocirc;n xinh đẹp v&agrave; c&oacute; ng&agrave;y mua sắm thật vui vẻ!</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n', '809cd640841f14864e3f4e9c0cb15b01.jpg.webp', 500000, 413, '2021-12-15 13:04:12', 0, 1, 50),
('sp388278', 10, 'phanvan0322', 'Đàn Ông Sao Hỏa Đàn Bà Sao Kim', '<p><strong>Ng&agrave;y xửa ng&agrave;y xưa, những người sao Hỏa v&agrave; sao Kim đ&atilde; gặp gỡ, y&ecirc;u nhau v&agrave; sống hạnh ph&uacute;c bởi họ t&ocirc;n trọng v&agrave; chấp nhận mọi điều kh&aacute;c biệt. Rồi họ đến Tr&aacute;i Đất v&agrave; chứng l&atilde;ng qu&ecirc;n đ&atilde; xảy ra: Họ qu&ecirc;n rằng họ đến từ những h&agrave;nh tinh kh&aacute;c</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hiểu biết về giới t&iacute;nh gi&uacute;p ch&uacute;ng ta th&ecirc;m khoan dung v&agrave; biết tha thứ khi ai đ&oacute; kh&ocirc;ng đ&aacute;p lại theo c&aacute;ch m&agrave; ta mong đợi</strong></p>\r\n\r\n<p><strong>T&igrave;nh chỉ đẹp khi c&ograve;n dang dở</strong><br />\r\n<strong>Cưới nhau về nham nhở lắm em ơ&nbsp;</strong></p>\r\n\r\n<p>Bởi kết h&ocirc;n kh&ocirc;ng phải l&agrave; kết th&uacute;c một cuộc t&igrave;nh, m&agrave; n&oacute; mới l&agrave; mở đầu cho rất nhiều những giai đoạn kh&oacute; khăn m&agrave; cặp vợ chồng n&agrave;o cũng phải trải qua. Bạn phải biết c&aacute;ch th&iacute;ch ứng v&agrave; đối ph&oacute; với n&oacute; để kh&ocirc;ng rơi v&agrave;o t&igrave;nh cảnh h&ocirc;n nh&acirc;n đổ vỡ.</p>\r\n\r\n<p><img alt=\"Đàn Ông Sao Hỏa Đàn Bà Sao Kim\" src=\"https://salt.tikicdn.com/ts/tmp/c3/61/e5/a2683e21f4854f3b0d9f1621f4724653.jpg\" style=\"border-style:none; height:499px; width:750px\" /></p>\r\n\r\n<p><strong>Bạn sẽ rất dễ &#39;VỠ MỘNG&#39; sau khi kết h&ocirc;n</strong></p>\r\n\r\n<p>Cả hai sẽ bắt đầu ph&aacute;t hiện ra nhiều thứ ở người kia sau khi về sống chung một nh&agrave;. Nếu kh&ocirc;ng chuẩn bị cho m&igrave;nh t&acirc;m thế tốt v&agrave; sự th&iacute;ch ứng nhanh, rất c&oacute; thể cả hai sẽ tạo ra sự&hellip; thất vọng v&agrave; vỡ mộng trong nhau.</p>\r\n\r\n<p><strong>Cuộc sống h&ocirc;n nh&acirc;n trở n&ecirc;n nh&agrave;m ch&aacute;n</strong></p>\r\n\r\n<p>Khi đ&atilde; qu&aacute; hiểu nhau về t&iacute;nh c&aacute;ch, ch&iacute;nh th&oacute;i quen h&agrave;ng ng&agrave;y, lặp đi lặp lại tạo ra sự nh&agrave;m ch&aacute;n. Trong mối quan hệ vợ chồng c&oacute; thể gia tăng nhiều vụ c&atilde;i v&atilde; v&igrave; những l&iacute; do như khủng hoảng kinh tế, c&aacute;ch chăm s&oacute;c nu&ocirc;i dạy con c&aacute;i, c&ocirc;ng việc v&agrave; đặc biệt l&agrave; chuyện cảm thấy&hellip; t&igrave;nh y&ecirc;u phai nhạt.</p>\r\n\r\n<p><strong>Kh&ocirc;ng hiểu, kỳ vọng th&aacute;i qu&aacute; v&agrave;o&nbsp; bạn đời</strong></p>\r\n\r\n<p>Ai cũng c&oacute; những mong muốn ri&ecirc;ng về một nửa của m&igrave;nh nhưng đ&ocirc;i khi ch&iacute;nh sự k&igrave; vọng th&aacute;i qu&aacute; l&agrave;m họ dễ rơi v&agrave;o trạng th&aacute;i thất vọng, ch&aacute;n chường. Bạn cảm thấy kh&ocirc;ng hiểu đối phương, cảm thấy họ kh&ocirc;ng được như m&igrave;nh mong muốn, v&agrave; những cuộc c&atilde;i v&atilde; bắt đầu diễn ra thường xuy&ecirc;n hơn.</p>\r\n\r\n<p><img alt=\"Đàn Ông Sao Hỏa Đàn Bà Sao Kim\" src=\"https://salt.tikicdn.com/ts/tmp/1c/58/3e/56a19f84f1b3131292b3b5a91bbd2950.jpg\" style=\"border-style:none; height:499px; width:750px\" /></p>\r\n\r\n<p><strong>Muốn g&igrave;n giữ hạnh ph&uacute;c trọn vẹn, cần lắm những sự thấu hiểu, cảm th&ocirc;ng, chia sẻ v&agrave; y&ecirc;u thương nhau</strong></p>\r\n\r\n<ul>\r\n	<li>V&igrave; đ&agrave;n &ocirc;ng v&agrave; đ&agrave;n b&agrave; đến từ hai h&agrave;nh tinh kh&aacute;c nhau, h&atilde;y t&ocirc;n trọng v&agrave; chấp nhận mọi điều kh&aacute;c biệt.</li>\r\n	<li>Bạn kh&ocirc;ng thể v&agrave; cũng kh&ocirc;ng n&ecirc;n cố thay đổi người bạn đời của m&igrave;nh. Thay đổi l&agrave; việc của họ, c&ograve;n việc của bạn l&agrave; thay đổi c&aacute;ch giao tiếp, phản ứng v&agrave; đối đ&aacute;p với người bạn đời của m&igrave;nh.</li>\r\n	<li>Ch&uacute;ng ta dễ d&agrave;ng đổ lỗi của m&igrave;nh l&ecirc;n đầu bạn đời hơn l&agrave; nhận thấy sai lầm của ch&iacute;nh m&igrave;nh. V&igrave; vậy, h&atilde;y lắng nghe để tận hưởng cuộc sống h&ocirc;n nh&acirc;n ngọt ng&agrave;o như l&uacute;c mới y&ecirc;u<img alt=\"Đàn Ông Sao Hỏa Đàn Bà Sao Kim\" src=\"https://salt.tikicdn.com/ts/tmp/aa/18/9b/b5a9ab2f3a08f9a71e5e3ce86ef4f060.jpg\" style=\"border-style:none; height:499px; width:750px\" /></li>\r\n</ul>\r\n\r\n<p><strong>Đ&Agrave;N &Ocirc;NG SAO HỎA - Đ&Agrave;N B&Agrave; SAO KIM</strong></p>\r\n\r\n<p>Để cảm thấy dễ chịu hơn, người sao Hỏa n&aacute;u m&igrave;nh trong k&eacute;n để tự vấn về rắc rối của m&igrave;nh. Người sao Kim lại cảm thấy nhẹ nh&otilde;m hơn khi ai đ&oacute; sẻ chia những vấn đề c&ugrave;ng họ. Đ&agrave;n &ocirc;ng giữ k&iacute;n những b&iacute; mật trong khi phụ nữ lại rất th&iacute;ch b&agrave;y tỏ</p>\r\n\r\n<p>Đ&agrave;n &ocirc;ng c&oacute; động lực v&agrave; tr&agrave;n đầy sức mạnh khi họ cảm thấy được cần đến. C&ograve;n phụ nữ th&igrave; c&oacute; động lực v&agrave; sẵn s&agrave;ng h&agrave;nh động khi họ cảm thấy được y&ecirc;u thương. L&agrave;m thế n&agrave;o để động vi&ecirc;n người kh&aacute;c giới? Cuốn s&aacute;ch HAY NHẤT MỌI THỜI ĐẠI về thấu hiểu người kh&aacute;c giới v&agrave; tạo hạnh ph&uacute;c trong h&ocirc;n nh&acirc;n, gia đ&igrave;nh.</p>\r\n\r\n<p>Ng&ocirc;n ngữ của đ&agrave;n &ocirc;ng sao Hỏa v&agrave; đ&agrave;n b&agrave; sao Kim c&oacute; từ ngữ giống nhau nhưng c&aacute;ch sử dụng lại mang tới những &yacute; nghĩa kh&aacute;c nhau. Với phụ nữ, để diễn đạt trọn vẹn cảm x&uacute;c của m&igrave;nh họ thường sử dụng lối n&oacute;i cường điệu, ẩn dụ v&agrave; kh&aacute;i qu&aacute;t. Giải quyết những bất đồng ng&ocirc;n ngữ</p>\r\n\r\n<p>Khi đ&agrave;n &ocirc;ng y&ecirc;u phụ nữ, nhưng theo định kỳ, anh ấy cần xa c&aacute;ch trước khi c&oacute; thể gần gũi hơn. C&ograve;n với phụ nữ, l&ograve;ng tự t&ocirc;n của họ d&acirc;ng l&ecirc;n v&agrave; hạ xuống giống như một con s&oacute;ng. Khi đến tận c&ugrave;ng, n&oacute; l&agrave; sắp xếp lại cảm x&uacute;c. Đ&agrave;n &ocirc;ng giống như d&acirc;y cao su, đ&agrave;n b&agrave; lại như những con s&oacute;ng</p>\r\n\r\n<p>101 c&aacute;ch để thấu hiểu v&agrave; ghi được những điểm số cao trong mắt người kh&aacute;c giới. Rất dễ d&agrave;ng nếu bạn sở hữu cuốn s&aacute;ch &quot;Đ&agrave;n &ocirc;ng sao Hỏa đ&agrave;n b&agrave; sao Kim&quot; trong tay. C&aacute;ch để d&agrave;nh được thiện cảm với người kh&aacute;c giới</p>\r\n\r\n<p>Một mối quan hệ cũng giống như một khu vườn, để ph&aacute;t triển, n&oacute; phải được tưới nước thường xuy&ecirc;n. Cũng tương tự như thế, để g&igrave;n giữ sự kỳ diệu của t&igrave;nh y&ecirc;u tồn tại, ch&uacute;ng ta hiểu biết v&agrave; nu&ocirc;i dưỡng những nhu cầu đặt biệt của t&igrave;nh y&ecirc;u.</p>\r\n\r\n<p><strong>&quot;Đ&Agrave;N &Ocirc;NG SAO HỎA - Đ&Agrave;N B&Agrave; SAO KIM&quot;&nbsp; Đ&Atilde; ĐẾN TAY H&Agrave;NG NG&Agrave;N ĐỘC GIẢ V&Agrave; NHẬN ĐƯỢC V&Ocirc; SỐ NHỮNG PHẢN HỒI T&Iacute;CH CỰC, KHEN NGỢI CUỐN S&Aacute;CH</strong></p>\r\n\r\n<p><strong><img alt=\"Đàn Ông Sao Hỏa Đàn Bà Sao Kim\" src=\"https://salt.tikicdn.com/ts/tmp/f6/2c/bd/c3543c64dc6fd70549ec31f9ddcb7867.jpg\" style=\"border-style:none; height:355px; width:750px\" /></strong></p>\r\n', 'bc10734989977da424642a1c4750eee2.jpg.webp', 188000, 150000, '2021-11-28 11:46:14', 4.5, 1, 7),
('sp478707', 8, 'nguoiquantri', 'Hoa Vẫn Nở Mỗi Ngày', '<p>&ldquo;Một tiểu thuyết đầy cảm x&uacute;c, một cuốn s&aacute;ch đưa ta đi từ tiếng cười đến những giọt nước mắt với c&aacute;c nh&acirc;n vật h&agrave;i hước v&agrave; cuốn h&uacute;t.&rdquo;&nbsp; &ndash; Ban gi&aacute;m khảo giải thưởng Prix des Maisons de la Presse.</p>\r\n\r\n<p>Violette Toussaint sống m&agrave; như chết. Người phụ nữ ấy bị mẹ đẻ bỏ rơi ngay khi vừa lọt l&ograve;ng, tới lượt c&ocirc; con g&aacute;i nhỏ m&agrave; c&ocirc; y&ecirc;u thương nhất lại bỏ c&ocirc; m&agrave; đi trong một tai nạn thảm khốc, rồi cả đến người chồng một ng&agrave;y kia cũng kh&ocirc;ng c&ograve;n ở lại b&ecirc;n c&ocirc;. Cuộc đời của một nh&acirc;n vi&ecirc;n g&aacute;c chắn nơi ga x&eacute;p với những chuyến t&agrave;u nhỏ mỗi ng&agrave;y đến rồi đi hay của một người quản trang tại nghĩa trang tỉnh lẻ chuy&ecirc;n đ&oacute;n nhận người chết v&agrave; chăm s&oacute;c c&aacute;c phần mộ tưởng chừng chỉ gắn chặt với mất m&aacute;t, buồn đau, rồi &uacute;a t&agrave;n dần theo năm th&aacute;ng. Nhưng sự sống l&agrave; mầu nhiệm, hy vọng vẫn c&ograve;n đ&oacute;, hạnh ph&uacute;c lại c&oacute; dịp được hồi sinh khi hoa kia được thay nước, khi ch&iacute;nh con người vẫn tin v&agrave;o cuộc đời.<br />\r\n<br />\r\nMột c&acirc;u chuyện sẽ ở lại l&acirc;u trong l&ograve;ng độc giả. Nhẹ nh&agrave;ng m&agrave; thấm th&iacute;a. Bởi dẫu c&oacute; lẽ kh&ocirc;ng &iacute;t lần lấy đi nước mắt của người đọc, c&acirc;u chuyện về t&igrave;nh y&ecirc;u, tổn thương v&agrave; hy vọng n&agrave;y cuối c&ugrave;ng sẽ để lại trong ta những cảm x&uacute;c t&iacute;ch cực, hạnh ph&uacute;c c&ugrave;ng niềm m&atilde;n nguyện &ecirc;m đềm một khi đ&atilde; lật giở đến những trang cuối.</p>\r\n', '963d63c3dca69a9e40094b7765d4a70c.jpg.webp', 209500, 200000, '2021-12-15 12:49:59', 0, 1, 200),
('sp500442', 11, 'huycute123', 'Váy len suông dài tay bo, đầm suông thun len', '<p>V&aacute;y len su&ocirc;ng d&agrave;i tay bo, đầm su&ocirc;ng thun len g&acirc;n d&aacute;ng d&agrave;i thu đ&ocirc;ng 3 m&agrave;u</p>\r\n\r\n<p>chất liệu: len g&acirc;n</p>\r\n\r\n<p>m&agrave;u sắc: đen, be, n&acirc;u</p>\r\n\r\n<p>Free size &lt; 62kg</p>\r\n\r\n<p>v&aacute;y su&ocirc;ng dễ mặc lắm nha c&aacute;c bạn</p>\r\n\r\n<p>m&ugrave;a đ&ocirc;ng lạnh chỉ cần mix với &aacute;o kho&aacute;c ngo&agrave;i l&agrave; ok lu&ocirc;n ạ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n\r\n<p>Sản phẩm n&agrave;y l&agrave; t&agrave;i sản c&aacute; nh&acirc;n được b&aacute;n bởi Nh&agrave; B&aacute;n H&agrave;ng C&aacute; Nh&acirc;n v&agrave; kh&ocirc;ng thuộc đối tượng phải chịu thuế GTGT. Do đ&oacute; ho&aacute; đơn VAT kh&ocirc;ng được cung cấp trong trường hợp n&agrave;y.</p>\r\n', '96429771da8cf189ca472b0aac1cfa07.jpg.webp', 120000, 105000, '2021-12-15 13:10:20', 0, 1, 200),
('sp521557', 6, 'phanvan0322', 'Tablet', '<p>jgfgukj</p>\r\n', '73fee7270af6d790161812efbd3be7be.jpg.webp', 20, 19, '2021-12-06 12:13:59', 3, 0, 3),
('sp576156', 7, 'nguoiquantri', 'Balo Ulzzang Hàn Quốc Thời Trang PRAZA', '<p>K&iacute;ch thước sản phẩm rộng r&atilde;i, được chia l&agrave;m nhiều ngăn tiện lợi. C&oacute; c&aacute;c ngăn lớn để đựng c&aacute;c vật dụng cần thiết v&agrave; nhiều ngăn nhỏ để đựng giấy tờ, tiền, v&iacute;&hellip; ti&ecirc;̣n dùng khi đi học, l&agrave;m việc hay c&aacute;c hoạt động d&atilde; ngoại,...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thi&ecirc;́t k&ecirc;́ tinh t&ecirc;́, trẻ trung v&agrave; đầy sức h&uacute;t</p>\r\n', '6f99a926b98b15981be0068a0f666397.png.webp', 249000, 149000, '2021-12-12 17:09:18', 4, 1, 191),
('sp71128', 2, 'phanvan123', 'Iphone 13', '<p>Apple thỏa m&atilde;n sự chờ đ&oacute;n của iFan v&agrave; người d&ugrave;ng với sự ra mắt của iPhone 13. D&ugrave; ngoại h&igrave;nh kh&ocirc;ng c&oacute; nhiều thay đổi so với iPhone 12 nhưng với cấu h&igrave;nh mạnh mẽ hơn, đặc biệt pin &ldquo;tr&acirc;u&rdquo; hơn v&agrave; khả năng quay phim chụp ảnh cũng ấn tượng hơn, hứa hẹn mang đến những trải nghiệm th&uacute; vị tr&ecirc;n phi&ecirc;n bản mới n&agrave;y.</p>\r\n', 'iphone-13-starlight-1-600x600.jpg', 30000000, 27990000, '2021-11-24 20:37:22', 3, 1, 0),
('sp779562', 2, 'nguoiquantri', 'Samsung Galaxy Z Fold3 5G 256GB', '<h3><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-z-fold-3\" target=\"_blank\">Galaxy Z Fold3 5G</a>, chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">điện thoại</a>&nbsp;được n&acirc;ng cấp to&agrave;n diện về nhiều mặt, đặc biệt đ&acirc;y l&agrave; điện thoại m&agrave;n h&igrave;nh gập đầu ti&ecirc;n tr&ecirc;n thế giới c&oacute; camera ẩn (08/2021). Sản phẩm sẽ l&agrave; một &ldquo;c&uacute; hit&rdquo; của&nbsp;<a href=\"https://thegioididong.com/samsung\" target=\"_blank\">Samsung</a>&nbsp;g&oacute;p phần mang đến những trải nghiệm mới cho người d&ugrave;ng.</h3>\r\n\r\n<h3>Thiết kế n&acirc;ng tầm smartphone m&agrave;n h&igrave;nh gập</h3>\r\n\r\n<p>C&oacute; thể thấy mẫu smartphone Galaxy Z Fold3 lần n&agrave;y vẫn giữ nguy&ecirc;n ngoại h&igrave;nh c&ugrave;ng cơ chế m&agrave;n h&igrave;nh gập mở dạng quyển s&aacute;ch như của tiền nhiệm, hồ biến chiếc smartphone th&agrave;nh một chiếc m&aacute;y t&iacute;nh bảng mini một c&aacute;ch dễ d&agrave;ng v&agrave; ngược lại.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold-3-25.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Thiết kế nâng tầm smartphone màn hình gập\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-25.jpg\" /></a></p>\r\n\r\n<p>Khung viền sử dụng hợp kim nh&ocirc;m Armor Aluminum cứng c&aacute;p, bền bỉ hơn 10% so với c&aacute;c vật liệu trước đ&acirc;y Samsung từng sản xuất. Với cấu tạo chắc chắn sẽ gi&uacute;p bạn y&ecirc;n t&acirc;m tận hưởng c&aacute;c hoạt động y&ecirc;u th&iacute;ch một c&aacute;ch trọn vẹn nhất.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-9.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Khung viền cao cấp, độ bền cao\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-9.jpg\" /></a></p>\r\n\r\n<p>Bộ khớp nối bản lề được thiết kế mới gi&uacute;p kết nối bộ khung của Galaxy Z Fold3 ho&agrave;n hảo hơn, tăng cao độ bền khi đ&oacute;ng mở li&ecirc;n tục v&agrave; cố định cực kỳ chắc chắn cho bạn trải nghiệm sử dụng thoải m&aacute;i nhất.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-30.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Kết cấu khung viền chắc chắn\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-30.jpg\" /></a></p>\r\n\r\n<p>Mặt lưng của Z Fold3 5G được l&agrave;m nh&aacute;m hơn so với mặt lưng tr&ecirc;n Z Fold2 5G, điều n&agrave;y gi&uacute;p hạn chế b&aacute;m bẩn, mồ h&ocirc;i hay dấu v&acirc;n tay trong qu&aacute; tr&igrave;nh ch&uacute;ng ta sử dụng m&aacute;y.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold-3-18.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Thiết kế mặt lưng\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-18.jpg\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Samsung cho biết họ sử dụng k&iacute;nh Gorilla Glass Victus cho phần m&agrave;n h&igrave;nh ngo&agrave;i nhằm tăng cường độ bền cho Galaxy Z Fold3 5G, gi&uacute;p m&aacute;y c&oacute; khả năng chống va đập khi rơi từ độ cao 2m, đồng thời chống xước tới 4 lần.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold-3-24.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Màn hình ngoài trang bị kính Gorilla Glass Victus\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-24.jpg\" /></a></p>\r\n\r\n<p>Hệ thống loa k&eacute;p stereo k&iacute;ch thước lớn ở 2 cạnh tr&ecirc;n dưới, t&iacute;ch hợp c&ocirc;ng nghệ Dolby Atmos, Z Fold3 5G cho trải nghiệm chơi game, xem phim đ&atilde; tai với &acirc;m lượng lớn, hiệu ứng đa k&ecirc;nh r&otilde; r&agrave;ng ch&acirc;n thực.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold-3-23.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G  | Hệ thống loa kép hỗ trợ khả năng giải trí ấn tượng\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-23.jpg\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, Galaxy Z Fold3 5G cũng l&agrave; thiết bị m&agrave;n h&igrave;nh gập đầu ti&ecirc;n tr&ecirc;n thế giới sở hữu c&ocirc;ng nghệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-chong-nuoc-bui\" target=\"_blank\">kh&aacute;ng nước</a>&nbsp;chuẩn IPX8 ở mức cao nhất trong thang đo từ 1 - 8 gi&uacute;p ch&uacute;ng ta y&ecirc;n t&acirc;m sử dụng hằng ng&agrave;y.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-20.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Khả năng kháng nước ấn tượng\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-20.jpg\" /></a></p>\r\n\r\n<p>Với&nbsp;<a href=\"https://www.thegioididong.com/dtdd-bao-mat-van-tay\" target=\"_blank\">cảm biến v&acirc;n tay</a>&nbsp;ở cạnh b&ecirc;n, việc mở kh&oacute;a m&agrave;n h&igrave;nh tr&ecirc;n Z Fold3 5G giờ đ&acirc;y đ&atilde; được thực hiện một c&aacute;ch nhanh ch&oacute;ng v&agrave; an to&agrave;n chỉ trong một nốt nhạc.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold-3-21.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G  | Cảm biến vân tay cạnh viền\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-21.jpg\" /></a></p>\r\n\r\n<h3>Đột ph&aacute; m&agrave;n h&igrave;nh gập với camera ẩn&nbsp;</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh Samsung sử dụng tấm nền Dynamic AMOLED 2X, phần viền của m&agrave;n h&igrave;nh ch&iacute;nh cũng được h&atilde;ng tối ưu tinh giản lại, thiết kế mang đến phần viền si&ecirc;u mỏng cho cảm gi&aacute;c tr&agrave;n viền tinh tế hơn nh&igrave;n rất đẹp v&agrave; bắt mắt.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold-3-19.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Đột phá màn hình gập siêu tràn viền\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-19.jpg\" /></a></p>\r\n\r\n<p>Đặc biệt, Z Fold3 c&ograve;n l&agrave; chiếc điện thoại gập đầu ti&ecirc;n tr&ecirc;n thế giới c&oacute; camera ẩn dưới m&agrave;n h&igrave;nh mang đến những trải nghiệm liền mạch, đ&atilde; mắt hơn.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh trong được phủ lớp k&iacute;nh Ultra Thin Glass (UTG) mỏng vượt trội gi&uacute;p tăng độ bền hơn 80% so với tiền nhiệm, mang đến độ bền cực cao khi c&oacute; thể đ&oacute;ng mở dễ d&agrave;ng m&agrave; kh&ocirc;ng l&agrave;m ảnh hưởng đến khả năng hiển thị v&agrave; cảm ứng của m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-11.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Màn hình chứa camera selfie ẩn\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-11.jpg\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, m&agrave;n h&igrave;nh phụ cũng được trang bị k&iacute;ch thước kh&aacute; lớn l&ecirc;n đến 6.2 inch, độ ph&acirc;n giải của m&agrave;n h&igrave;nh n&agrave;y cũng nằm ở mức kh&aacute; cao c&ugrave;ng khả năng hiển thị cực kỳ sắc n&eacute;t mượt m&agrave; như m&agrave;n h&igrave;nh ch&iacute;nh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold-3-17.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Màn hình phụ 6.2 inch\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-17.jpg\" /></a></p>\r\n\r\n<p>Cả 2 m&agrave;n h&igrave;nh cũng được Samsung n&acirc;ng cấp tần số qu&eacute;t 120 Hz để gi&uacute;p mọi thao t&aacute;c chạm vuốt, chuyển động h&igrave;nh ảnh đều được xử l&yacute; cực kỳ mượt m&agrave;, mang đến trải nghiệm m&atilde;n nh&atilde;n, gi&uacute;p bạn thực sự đắm ch&igrave;m trong kh&ocirc;ng gian giải tr&iacute; chơi game bất tận.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-7.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Màn hình giải trí 120 Hz\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-7.jpg\" /></a></p>\r\n\r\n<p>Galaxy Z Fold3 5G được hỗ trợ th&ecirc;m b&uacute;t S-Pen thần th&aacute;nh, một điểm cải tiến lớn so với thế hệ tiền nhiệm cho bạn thực hiện thoải m&aacute;i nhiều t&aacute;c vụ tr&ecirc;n một m&agrave;n h&igrave;nh lớn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-6.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Tích hợp bút S-Pen thông minh\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-6.jpg\" /></a></p>\r\n\r\n<h3>Cụm camera chụp ảnh chất lượng cao</h3>\r\n\r\n<p>Về camera, Z Fold3 sử dụng hệ thống 3 camera 12 MP ho&agrave;n to&agrave;n giống hệt với Z Fold2 bao gồm camera ch&iacute;nh,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\">camera g&oacute;c si&ecirc;u rộng</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-zoom\" target=\"_blank\">camera tele</a>&nbsp;tất cả được đặt trong module h&igrave;nh chữ nhật bo tr&ograve;n 2 đầu tr&ocirc;ng kh&aacute; gọn g&agrave;ng v&agrave; tinh tế.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold-3-20.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Cụm camera chất lượng cao\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-20.jpg\" /></a></p>\r\n\r\n<p>Nh&igrave;n chung hệ thống camera của những chiếc điện thoại cao cấp từ Samsung lu&ocirc;n c&oacute; chất lượng h&agrave;ng đầu, chắc chắn sẽ cho bạn trải nghiệm chụp ảnh, quay phim v&ocirc; c&ugrave;ng xuất sắc.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-2.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Giao diện camera\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-2.jpg\" /></a></p>\r\n\r\n<p>Bạn c&oacute; thể dễ d&agrave;ng l&agrave;m mờ hậu cảnh, chống rung v&agrave; l&agrave;m đẹp bằng AI, tự động hiệu chỉnh m&agrave;u sắc, l&agrave;m chủ m&agrave;n đ&ecirc;m để đem tới những khung h&igrave;nh đẹp mắt chỉ bằng một n&uacute;t bấm. Đồng thời m&agrave;n h&igrave;nh ch&iacute;nh cũng cho ph&eacute;p bạn chia đ&ocirc;i m&agrave;n h&igrave;nh để vừa chụp vừa xem lại ảnh c&ugrave;ng l&uacute;c.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-14.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Khả năng nhiếp ảnh chất lượng\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-14.jpg\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, bộ đ&ocirc;i camera selfie ở hai m&agrave;n h&igrave;nh đều cho chất lượng ảnh kh&aacute; tốt, nhưng khi cần chụp ảnh selfie c&oacute; chất lượng cao người d&ugrave;ng c&oacute; thể sử dụng 3 camera sau v&agrave; m&agrave;n h&igrave;nh ngo&agrave;i l&agrave;m k&iacute;nh ngắm để c&oacute; được những bức ảnh tốt nhất.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-12.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Khả năng chụp ảnh selfie\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-12.jpg\" /></a></p>\r\n\r\n<h3>Cấu h&igrave;nh khủng với Snapdragon 888&nbsp;</h3>\r\n\r\n<p>Galaxy Z Fold3 sử dụng con chip Snapdragon 888 một trong những bộ vi xử l&yacute; mạnh mẽ nhất đến từ nh&agrave; Qualcomm, gi&uacute;p mọi thao t&aacute;c, mọi ứng dụng đều được xử l&yacute; nhanh ch&oacute;ng tr&ecirc;n cả 2 m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold-3-13.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Hiệu năng khủng với Snapdragon 888\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-13.jpg\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Galaxy Z Fold3 sẽ được cải thiện khả năng tản nhiệt khi chơi game, thậm ch&iacute; c&oacute; thể m&aacute;t hơn cả Galaxy S21 Ultra 5G.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-5.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Hiệu năng mượt mà ở cả 2 màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-5.jpg\" /></a></p>\r\n\r\n<p>Bộ nhớ RAM của Z Fold3 cũng được n&acirc;ng cấp dung lượng l&ecirc;n đến&nbsp;<a href=\"https://www.thegioididong.com/dtdd-ram-12gb\" target=\"_blank\">12 GB</a>&nbsp;cho khả năng tối ưu đa nhiệm xử l&yacute; cực tốt, gi&uacute;p mọi ứng dụng nặng nhất đều c&oacute; thể vận h&agrave;nh c&ugrave;ng l&uacute;c mượt m&agrave;.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-15.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Hiệu năng mạnh mẽ, xử lý mượt mà các tác vụ\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-15.jpg\" /></a></p>\r\n\r\n<p>Samsung cũng cung cấp khả năng lưu trữ rộng r&atilde;i với dung lượng chuẩn&nbsp;<a href=\"https://www.thegioididong.com/dtdd-rom-256gb\" target=\"_blank\">256 GB</a>&nbsp;cho người d&ugrave;ng thoải m&aacute;i sử dụng, kh&ocirc;ng qu&aacute; lo về dung lượng nhanh hết.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-10.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Khả năng lưu trữ rộng rãi\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-10.jpg\" /></a></p>\r\n\r\n<p>Hệ điều h&agrave;nh Android 11 cũng tối ưu tr&ecirc;n giao diện One UI mang đến trải nghiệm tương t&aacute;c trực quan như tr&ecirc;n m&aacute;y t&iacute;nh đồng thời cho ph&eacute;p chuyển đổi mượt m&agrave; nội dung giữa m&agrave;n h&igrave;nh ch&iacute;nh v&agrave; m&agrave;n h&igrave;nh phụ m&agrave; kh&ocirc;ng phải tải lại ứng dụng hay load lại game.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-8.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Giao diện màn hình chính\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-8.jpg\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, Samsung Galaxy Z Fold3 cũng được trang bị chuẩn kết nối internet 5G cho khả năng kết nối internet si&ecirc;u nhanh gi&uacute;p bạn c&oacute; thể sử dụng internet mọi nơi với tốc độ sử dụng si&ecirc;u cao.</p>\r\n\r\n<h3>Thời lượng pin đủ d&ugrave;ng</h3>\r\n\r\n<p>Samsung Galaxy Z Fold3 5G c&oacute; dung lượng pin 4.400 mAh vừa đủ để bạn c&oacute; thể sử dụng trong khoảng một ng&agrave;y với c&aacute;c t&aacute;c vụ l&agrave;m việc giải tr&iacute; th&ocirc;ng thường.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold3-5g-256gb-4.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G  | Thời lượng pin đủ dùng\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold3-5g-256gb-4.jpg\" /></a></p>\r\n\r\n<p>B&ecirc;n canh đ&oacute;, điện thoại cũng c&oacute; t&iacute;nh năng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-sac-pin-nhanh\" target=\"_blank\">sạc nhanh</a>&nbsp;25 W,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-sac-khong-day\" target=\"_blank\">sạc kh&ocirc;ng d&acirc;y</a>&nbsp;hay chia sẻ pin kh&ocirc;ng d&acirc;y cho c&aacute;c thiết bị hỗ trợ chuẩn Qi kh&aacute;c như smartphone hay tai nghe Galaxy Buds.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226935/samsung-galaxy-z-fold-3-22.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Khả năng sạc nhanh 25 W và sạc không dây\" src=\"https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-22.jpg\" /></a></p>\r\n\r\n<p>Nh&igrave;n chung, Samsung Galaxy Z Fold3 5G đ&atilde; được n&acirc;ng cấp rất nhiều so với người tiền nhiệm từ thiết kế, m&agrave;n h&igrave;nh đến hiệu năng c&ugrave;ng khả năng kh&aacute;ng nước IPX8, sản phẩm gi&uacute;p Samsung tiếp tục khẳng định vị thế đẳng cấp của m&igrave;nh tr&ecirc;n thị trường smartphone m&agrave;n h&igrave;nh gập.&nbsp;</p>\r\n', 'samsung-galaxy-z-fold-3-silver-1-600x600.jpg', 41990000, 40000000, '2021-12-12 16:57:51', 0, 1, 20);
INSERT INTO `san_pham` (`id_sanpham`, `id_dm_sp`, `ten_dang_nhap`, `tieu_de`, `noi_dung`, `img`, `gia_goc`, `gia_giam`, `ngay_dang`, `danh_gia`, `trang_thai`, `so_luong`) VALUES
('sp853838', 6, 'nguoiquantri', 'iPad Pro M1 12.9 inch WiFi Cellula', '<h3>Bạn c&oacute; đang mong chờ những sản phẩm chất lượng đến từ&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\">Apple</a>? Sau h&agrave;ng loạt c&aacute;c sản phẩm đ&igrave;nh đ&aacute;m như iPhone 12 series th&igrave; h&atilde;ng đ&atilde; tung ra chiếc&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang/ipad-pro-m1-129-inch-wifi-cellular-128gb-2021\" target=\"_blank\">iPad Pro M1 12.9 inch Wifi Cellular 128GB (2021)</a>&nbsp;trang bị những t&iacute;nh năng ng&agrave;y c&agrave;ng vượt trội v&agrave; thời thượng.</h3>\r\n\r\n<h3>M&agrave;n h&igrave;nh Liquid Retina XDR 12.9 inch rực rỡ</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/may-tinh-bang-apple-ipad-m1\" target=\"_blank\">iPad Pro M1</a>&nbsp;12.9 inch 2021 sở hữu m&agrave;n h&igrave;nh Liquid Retina XDR, &aacute;p dụng c&ocirc;ng nghệ mini-LED với 10.000 b&oacute;ng được tuỳ chỉnh nhỏ hơn 120 lần so với thế hệ trước n&ecirc;n độ s&aacute;ng c&oacute; thể l&ecirc;n đến 1600 nits ngay cả ngo&agrave;i trời vẫn c&oacute; thể sử dụng tốt.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-3.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Sở hữu màn hình Liquid Retina XDR, áp dụng công nghệ mini-LED\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-3.jpg\" /></a></p>\r\n\r\n<p>M&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước 12.9 inch cung cấp chế độ xem mở rộng hơn, trải nghiệm HDR tuyệt đẹp tr&ecirc;n m&agrave;n h&igrave;nh r&otilde; r&agrave;ng gi&uacute;p cho mọi hoạt động, thao t&aacute;c tr&ecirc;n m&aacute;y th&ecirc;m cuốn h&uacute;t v&agrave; đắm ch&igrave;m theo thời gian.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-129-inch-08.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Màn hình có kích thước 12.9 inch cùng trải nghiệm HDR tuyệt đẹp\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-129-inch-08.jpg\" /></a></p>\r\n\r\n<p>Mọi chi tiết hiển thị tr&ecirc;n m&agrave;n h&igrave;nh sống động như thật với tỷ lệ tương phản 1.000.000: 1 c&ugrave;ng c&aacute;c c&ocirc;ng nghệ ti&ecirc;n tiến như P3 wide color, True Tone v&agrave; ProMotion gi&uacute;p iPad Pro 12.9 inch 2021 tỏa s&aacute;ng ngoạn mục.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-129-inch-01.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Màn hình trang bị nhiều công nghệ tiên tiến\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-129-inch-01.jpg\" /></a></p>\r\n\r\n<p>Tận hưởng iPad Pro 12.9 inch 2021 như một chiếc laptop với sự hỗ trợ của c&aacute;c phụ kiện chuy&ecirc;n nghiệp như b&agrave;n ph&iacute;m, b&uacute;t Apple Pencil hay c&aacute;c bộ điều khiển chơi game hiện đại,... Những phụ kiện đa năng n&agrave;y được thiết kế để đưa c&ocirc;ng việc, sự s&aacute;ng tạo v&agrave; những giờ ph&uacute;t giải tr&iacute; của bạn l&ecirc;n một tầm cao mới.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-24.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Hỗ trợ của các phụ kiện bàn phím, bút Apple Pencil\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-24.jpg\" /></a></p>\r\n\r\n<p>Lưu &yacute;: C&aacute;c phụ kiện như b&agrave;n ph&iacute;m, b&uacute;t Apple Pencil sẽ kh&ocirc;ng đi k&egrave;m trong hộp m&aacute;y.</p>\r\n\r\n<h3>Cấu h&igrave;nh mang t&iacute;nh đột ph&aacute;</h3>\r\n\r\n<p>Apple M1 l&agrave; con chip mang sức mạnh phi thường tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang-apple-ipad\" target=\"_blank\">iPad</a>, n&oacute; được thiết kế để tận dụng tối đa hiệu suất v&agrave; điện năng cho hiệu quả sử dụng đ&aacute;ng kinh ngạc. CPU v&agrave; GPU 8 l&otilde;i tr&ecirc;n M1 đ&atilde; gi&uacute;p cho iPad Pro 12.9 inch 2021 c&oacute; một hiệu suất xử l&yacute; dữ liệu, xử l&yacute; đồ họa lần lượt l&agrave; 50% v&agrave; 40% nhanh hơn so với thế hệ trước.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-2.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Cấu hình mang tính đột phá với chip Apple M1\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-2.jpg\" /></a></p>\r\n\r\n<p>Giờ đ&acirc;y, người d&ugrave;ng c&oacute; thể chạy c&aacute;c phần mềm nặng, chơi game đồ họa ở tốc độ khung h&igrave;nh cao,... với độ mượt m&agrave;, n&acirc;ng cao mọi trải nghiệm của bạn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-18.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Chơi game đồ họa ở tốc độ khung hình cao, mượt mà\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-18.jpg\" /></a></p>\r\n\r\n<p>Kết nối Thunderbolt 4 qua cổng USB-C với băng th&ocirc;ng l&ecirc;n tới 40 Gbps c&oacute; thể xuất t&iacute;n hiệu h&igrave;nh ảnh 6K v&agrave; mở ra một hệ sinh th&aacute;i rộng lớn gồm c&aacute;c phụ kiện được hỗ trợ.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-8.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Kết nối Thunderbolt 4 qua cổng USB-C\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-8.jpg\" /></a></p>\r\n\r\n<p>Sự xuất hiện của Apple M1 kết hợp c&ugrave;ng&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang-ram-8gb\" target=\"_blank\">8 GB RAM</a>&nbsp;đ&atilde; đưa iPad Pro 12.9 inch 2021 l&ecirc;n một tầm cao mới. M&aacute;y t&iacute;nh bảng đẳng cấp hơn khi ho&agrave;n th&agrave;nh mọi t&aacute;c vụ một c&aacute;ch mượt m&agrave;, đa nhiệm thả ga, đi k&egrave;m&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang-rom-128gb\" target=\"_blank\">128 GB ROM</a>&nbsp;mở rộng kh&ocirc;ng gian lưu trữ cho người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-16.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | 8 GB RAM cùng 128 GB ROM mở rộng không gian lưu trữ\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-16.jpg\" /></a></p>\r\n\r\n<h3>Trải nghiệm xuy&ecirc;n suốt ở bất cứ đ&acirc;u</h3>\r\n\r\n<p>M&aacute;y t&iacute;nh bảng n&acirc;ng cấp cổng wifi 6 cho kết nối si&ecirc;u tốc v&agrave; ổn định. Ngo&agrave;i ra, phi&ecirc;n bản iPad Pro M1 12.9 inch c&ograve;n hỗ trợ Cellular cho kết nối mạng internet 5G, người d&ugrave;ng c&oacute; thể đăng tải ảnh, th&ocirc;ng tin v&agrave; dữ liệu si&ecirc;u nhanh, ph&aacute;t trực tuyến, xem phim chất lượng cao v&agrave; chinh phục c&aacute;c tựa game nặng ở bất cứ nơi n&agrave;o.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-10.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Máy tính bảng nâng cấp cổng wifi 6 cho kết nối siêu tốc và ổn định\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-10.jpg\" /></a></p>\r\n\r\n<p>Thiết kế d&agrave;n &acirc;m thanh 4 loa trầm ấm v&agrave; bắt tone nhịp nh&agrave;ng với sự hỗ trợ của Dolby Atmos, mang đến cho người d&ugrave;ng cảm gi&aacute;c đắm ch&igrave;m như đang trong rạp chiếu phim.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-129-inch-06.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Thiết kế dàn âm thanh 4 loa trầm ấm cùng Dolby Atmos\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-129-inch-06.jpg\" /></a></p>\r\n\r\n<h3>Trở th&agrave;nh trung t&acirc;m của mọi &aacute;nh nh&igrave;n</h3>\r\n\r\n<p>M&aacute;y t&iacute;nh bảng iPad Pro 12.9 inch 2021 trang bị hệ thống gồm 2 m&aacute;y ảnh sau c&oacute; camera ch&iacute;nh 12 MP v&agrave; camera phụ g&oacute;c rộng 10 MP.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-129-inch-03.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Trang bị hệ thống gồm 2 máy ảnh sau có camera chính 12 MP và camera phụ góc rộng 10 MP\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-129-inch-03.jpg\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh cung cấp c&aacute;c t&iacute;nh năng chỉnh sửa ảnh v&agrave; l&agrave;m đẹp, iPad Pro 12.9 inch 2021 c&ograve;n hỗ trợ m&aacute;y qu&eacute;t LiDAR hoạt động với ISP mạnh mẽ gi&uacute;p lấy n&eacute;t ch&iacute;nh x&aacute;c hơn với h&igrave;nh ảnh v&agrave; video m&agrave; bạn quay trong điều kiện &aacute;nh s&aacute;ng yếu, tự tin ghi lại những chi tiết đẹp rực rỡ v&agrave; ho&agrave;n hảo.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-22.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Hỗ trợ máy quét LiDAR hoạt động với ISP mạnh mẽ giúp lấy nét chính xác\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-22.jpg\" /></a></p>\r\n\r\n<p>Camera TrueDepth 12 MP c&oacute; g&oacute;c rộng 122 độ, với t&iacute;nh năng Center Stage cho hiệu ứng s&acirc;n khấu trung t&acirc;m, khi thực hiện cuộc gọi FaceTime th&igrave; ống k&iacute;nh sẽ tự động điều chỉnh để giữ bạn lu&ocirc;n ở giữa khung h&igrave;nh kể cả khi di chuyển, l&agrave;m c&aacute;c cuộc tr&ograve; chuyện trở n&ecirc;n th&uacute; vị hơn. Camera n&agrave;y c&ograve;n hỗ trợ mở kh&oacute;a khu&ocirc;n mặt Face ID một c&aacute;ch an to&agrave;n v&agrave; tiện lợi.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-15.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Camera TrueDepth 12 MP có góc rộng 122 độ, với tính năng Center Stage\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-15.jpg\" /></a></p>\r\n\r\n<h3>Hoạt động miệt m&agrave;i c&ugrave;ng vi&ecirc;n pin lớn</h3>\r\n\r\n<p>iPad Pro 12.9 inch 2021 sở hữu vi&ecirc;n pin 40.88 Wh khoảng 10.835 mAh một dung lượng kh&aacute; dồi d&agrave;o. M&aacute;y sẵn s&agrave;ng đ&aacute;p ứng mọi nhu cầu hoạt động của người d&ugrave;ng tr&ecirc;n m&aacute;y trong nhiều giờ liền m&agrave; kh&ocirc;ng biết mệt mỏi.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-129-inch-07.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Sở hữu viên pin 40.88 Wh khoảng 10.835 mAh\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-129-inch-07.jpg\" /></a></p>\r\n\r\n<p>Với sự gi&uacute;p sức của c&ocirc;ng nghệ sạc nhanh 20 W, vi&ecirc;n pin lớn của iPad Pro 12.9 inch 2021 dễ d&agrave;ng được sạc đầy trong khoảng thời gian ngắn nhất cho ph&eacute;p, gi&uacute;p bạn nhanh ch&oacute;ng quay trở lại với c&ocirc;ng việc bận rộn hằng ng&agrave;y.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-20.jpg\" onclick=\"return false;\"><img alt=\"iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021) | Sở hữu công nghệ sạc nhanh 20 W\" src=\"https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-m1-12-9-inch-wifi-cellular-128gb-2021-20.jpg\" /></a></p>\r\n\r\n<p>iPad Pro M1 12.9 inch Wifi Cellular 128GB (2021) sẽ l&agrave; một chiếc m&aacute;y t&iacute;nh bảng mạnh mẽ, tiện dụng v&agrave; gi&uacute;p &iacute;ch cho người d&ugrave;ng trong nhiều hoạt động nhất c&oacute; thể. Bạn c&oacute; thể học online, xem phim, thiết kế đồ họa, chơi game,... tr&ecirc;n một m&agrave;n h&igrave;nh rộng thoải m&aacute;i hơn rất nhiều so với smartphone th&ocirc;ng thường.</p>\r\n', 'ipad-pro-2021-129-inch-gray-600x600.jpg', 36490000, 35490000, '2021-12-12 17:00:54', 0, 1, 48),
('sp87034', 10, 'phanvan123', 'Tiểu thuyết', '<p>ạkdhjasfjk</p>\r\n', 'sothys-1636016876-6207-1636017036.jpg', 25, 20, '2021-12-12 13:21:13', 0, 0, 10),
('sp996560', 10, 'phanvan123', 'Apple MacBook Pro M1 2020 8GB/512GB', '<p>&aacute;dkl</p>\r\n', '61b54964-ae6b-46a0-8ff8-b2eba54672ac.webp', 25, 50, '2021-12-12 12:55:10', 0, 0, 14);

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
  `trang_thai` int(11) NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tin_tuc`
--

INSERT INTO `tin_tuc` (`id_tin_tuc`, `id_dm_tin`, `tieu_de`, `noi_dung`, `img`, `luot_xem`, `ngay_dang`, `trang_thai`, `ten_dang_nhap`) VALUES
(4, 1, 'Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất', '<p><strong>Đối với&nbsp;<a href=\"https://cellphones.com.vn/laptop/mac.html\">MacBook</a>&nbsp;v&agrave;<a href=\"https://cellphones.com.vn/catalogsearch/result/?q=imac\">&nbsp;iMac</a>, bạn ho&agrave;n to&agrave;n c&oacute; thể sử dụng c&aacute;c c&ocirc;ng cụ t&iacute;ch hợp để chuyển đổi file PDF sang JPG đơn giản v&agrave; nhanh ch&oacute;ng. B&agrave;i viết sau đ&acirc;y,&nbsp;<a href=\"https://cellphones.com.vn/sforum/\">Sforum.vn</a>&nbsp;sẽ hướng dẫn c&aacute;c bạn thực hiện nh&eacute;!</strong></p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất o Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/o.jpg\" style=\"height:498px; width:800px\" /></p>\r\n\r\n<p>Mục lục</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://cellphones.com.vn/sforum/cach-chuyen-doi-file-pdf-sang-jpg-tren-macos-don-gian-nhat#Cach_chuyen_doi_tung_trang_tu_PDF_sang_JPG\">C&aacute;ch chuyển đổi từng trang từ PDF sang JPG</a></li>\r\n	<li><a href=\"https://cellphones.com.vn/sforum/cach-chuyen-doi-file-pdf-sang-jpg-tren-macos-don-gian-nhat#Cach_chuyen_doi_toan_bo_file_PDF_sang_JPG\">C&aacute;ch chuyển đổi to&agrave;n bộ file PDF sang JPG</a></li>\r\n	<li><a href=\"https://cellphones.com.vn/sforum/cach-chuyen-doi-file-pdf-sang-jpg-tren-macos-don-gian-nhat#Tam_ket\">Tạm kết</a></li>\r\n</ul>\r\n\r\n<h2><strong>C&aacute;ch chuyển đổi từng trang từ PDF sang JPG</strong></h2>\r\n\r\n<p><strong>Bước 1:</strong>&nbsp;Bạn h&atilde;y chọn<strong>&nbsp;file PDF</strong>&nbsp;cần chuyển đổi trong&nbsp;<strong>Finder</strong>.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất p11 Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/p11.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Click chuột phải v&agrave;o&nbsp;<strong>file PDF</strong>&nbsp;&gt; Chọn&nbsp;<strong>Open With</strong>&nbsp;&gt;&nbsp;<strong>Preview</strong>.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất p22 Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/p22.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><strong>Bước 3:</strong>&nbsp;Tại<strong>&nbsp;Preview</strong>, bạn h&atilde;y lựa chọn<strong>&nbsp;trang PDF</strong>&nbsp;cần chuyển đổi sang JPG &gt; Nhấn v&agrave;o&nbsp;<strong>File</strong>&nbsp;ở g&oacute;c tr&aacute;i&nbsp;<a href=\"https://cellphones.com.vn/man-hinh.html\">m&agrave;n h&igrave;nh&nbsp;</a>&gt;&nbsp;<strong>Export</strong>.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất p33 Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/p33.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><strong>Bước 4:</strong>&nbsp;Cuối c&ugrave;ng, bạn h&atilde;y&nbsp;<strong>nhập t&ecirc;n</strong>&nbsp;cho file JPG &gt; Tuỳ chỉnh&nbsp;<strong>thư mục lưu trữ</strong>&nbsp;ph&ugrave; hợp &gt; Tại Format, lựa chọn định dạng&nbsp;<strong>JPEG</strong>&nbsp;&gt; Nhấn&nbsp;<strong>Save</strong>&nbsp;để ho&agrave;n nhất</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất p44 Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/p44.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<h2><strong>C&aacute;ch chuyển đổi to&agrave;n bộ file PDF sang JPG</strong></h2>\r\n\r\n<p><strong>Bước 1:</strong>&nbsp;Bạn h&atilde;y nhấn tổ hợp ph&iacute;m&nbsp;<strong>&ldquo;Command + Space&rdquo;</strong>&nbsp;để mở tr&igrave;nh&nbsp;<strong>Spotlight&nbsp;</strong>tr&ecirc;n MacOS &gt; Nhập&nbsp;<strong>Automator</strong>&nbsp;v&agrave;o thanh t&igrave;m kiếm &gt; Sau đ&oacute;, chọn v&agrave;o&nbsp;<strong>Automator</strong>.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất a11 Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/a11.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Tại&nbsp;<strong>Automator</strong>, chọn&nbsp;<strong>File</strong>&nbsp;&gt;&nbsp;<strong>New</strong>.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất ne Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/ne.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><strong>Bước 3:</strong>&nbsp;Tiếp theo, chọn v&agrave;o mục&nbsp;<strong>Quick Action</strong>&nbsp;&gt;&nbsp;<strong>Choose</strong>.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất quick12 Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/quick12.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><strong>Bước 4:</strong>&nbsp;Chọn v&agrave;o<strong>&nbsp;Actions</strong>&nbsp;&gt; Nhập&nbsp;<strong>&ldquo;Render PDF Pages as Images&rdquo;</strong>.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất ren Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/ren.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><strong>Bước 5:</strong>&nbsp;Sau đ&oacute;, bạn h&atilde;y k&eacute;o mục&nbsp;<strong>Render PDF Pages as Images&nbsp;</strong>thả v&agrave;o giao diện b&ecirc;n phải &gt; Tại&nbsp;<strong>Format</strong>, chọn&nbsp;<strong>JPEG image</strong>.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất reww Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/reww.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><strong>Bước 6:</strong>&nbsp;Tiếp theo, bạn h&atilde;y chọn&nbsp;<strong>Action</strong>&nbsp;&gt; Nhập &ldquo;<strong>Move Finder Items&rdquo;&nbsp;</strong>v&agrave;o &ocirc; t&igrave;m kiếm.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất move Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/move.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><strong>Bước 7:</strong>&nbsp;K&eacute;o mục&nbsp;<strong>Move Finder Items&nbsp;</strong>thả v&agrave;o giao diện b&ecirc;n phải &gt; Tuỳ chọn<strong>&nbsp;thư mục lưu trữ</strong>.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất movef Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/movef.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><strong>Bước 8:</strong>&nbsp;Chọn v&agrave;o&nbsp;<strong>File</strong>&nbsp;ở g&oacute;c tr&aacute;i&nbsp;<a href=\"https://cellphones.com.vn/man-hinh.html\">m&agrave;n h&igrave;nh</a>&nbsp;&gt;&nbsp;<strong>Save</strong>.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất luu Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/luu.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><strong>Bước 9:</strong>&nbsp;Bạn h&atilde;y nhập t&ecirc;n cho<strong>&nbsp;Quick Action</strong>&nbsp;&gt; Chọn<strong>&nbsp;Save</strong>.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất qt Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/qt.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><strong>Bước 10:</strong>&nbsp;C&ocirc;ng cụ Quick Action đ&atilde; được lưu, nhấn v&agrave;o&nbsp;<strong>Automator</strong>&nbsp;ở g&oacute;c tr&aacute;i&nbsp;<a href=\"https://cellphones.com.vn/man-hinh.html\">m&agrave;n h&igrave;nh</a>&nbsp;&gt; Chọn&nbsp;<strong>Quit Automator</strong>.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất tat Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/tat.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><strong>Bước 11:</strong>&nbsp;Click chuột phải v&agrave;o&nbsp;<strong>file PDF</strong>&nbsp;cần chuyển đổi &gt; Chọn v&agrave;o c&ocirc;ng cụ&nbsp;<strong>Quick Action</strong>&nbsp;vừa tạo để ho&agrave;n tất.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất done Cách chuyển đổi file PDF sang JPG trên MacOS đơn giản nhất \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/done.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<h2><strong>Tạm kết</strong></h2>\r\n\r\n<p>Như vậy l&agrave; m&igrave;nh đ&atilde; vừa hướng dẫn c&aacute;c bạn&nbsp;<strong>chuyển đổi file PDF sang JPG</strong>&nbsp;tr&ecirc;n MacOS đơn giản v&agrave; nhanh ch&oacute;ng nhất. Hy vọng b&agrave;i viết của m&igrave;nh sẽ gi&uacute;p &iacute;ch cho c&aacute;c bạn. Ch&uacute;c c&aacute;c bạn thực hiện th&agrave;nh c&ocirc;ng!</p>\r\n', 'o-350x250.jpg', 0, '2021-12-07 15:46:44', 1, 'phanvan0322'),
(5, 1, 'Hướng dẫn khắc phục lỗi CHPlay không tải được ứng dụng bằng 3G, 4G', '<p><strong>Chắc hẳn, đ&ocirc;i l&uacute;c bạn cũng cảm thấy kh&oacute; chịu khi sử dụng&nbsp;<a href=\"https://cellphones.com.vn/mobile.html\">smartphone</a>&nbsp;Android bởi v&igrave; đ&ocirc;i l&uacute;c Google Play bị lỗi kh&ocirc;ng thể tải được ứng dụng bằng 3G, 4G. Nếu bạn đang gặp vấn đề n&agrave;y th&igrave; h&atilde;y xem b&agrave;i viết dưới đ&acirc;y để t&igrave;m c&aacute;ch khắc phục lỗi CHPlay kh&ocirc;ng tải được ứng dụng bằng 3G, 4G bạn nh&eacute;.&nbsp;</strong></p>\r\n\r\n<h2><strong>Hướng dẫn khắc phục lỗi CHPlay kh&ocirc;ng tải được ứng dụng bằng 3G,4G</strong></h2>\r\n\r\n<h3><strong>Kiểm tra lại mạng 3G, 4G</strong></h3>\r\n\r\n<p>Một lỗi cơ bản m&agrave; bạn thường xuy&ecirc;n mắc phải nhất đ&oacute; c&oacute; thể l&agrave; do g&oacute;i cước mạng di động của bạn đang sử dụng đ&atilde; hết dung lượng n&ecirc;n bạn kh&ocirc;ng thể thực hiện tải th&agrave;nh c&ocirc;ng phần mềm tr&ecirc;n CH Play.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất kiem-tra Hướng dẫn khắc phục lỗi CHPlay không tải được ứng dụng bằng 3G, 4G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/kiem-tra.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Do đ&oacute;, để đảm bảo được qu&aacute; tr&igrave;nh tải ứng dụng tr&ecirc;n Google Play được th&agrave;nh c&ocirc;ng.</p>\r\n\r\n<h3><strong>Bật t&ugrave;y chọn cho ph&eacute;p tải xuống bằng 3G, 4G</strong></h3>\r\n\r\n<p>Việc điện thoại Android của bạn kh&ocirc;ng tải được ứng dụng c&oacute; thể do nguy&ecirc;n nh&acirc;n l&agrave; bạn chưa bật chế độ tải xuống bằng 3G, 4G. Nếu bạn muốn biết bạn đ&atilde; bật chế độ n&agrave;y hay chưa th&igrave; h&atilde;y thực hiện như sau:</p>\r\n\r\n<p><strong>Bước 1:</strong>&nbsp;Trước ti&ecirc;n, khởi động CH Play tr&ecirc;n điện thoại &gt;&nbsp;<strong>Bấm v&agrave;o ảnh avatar</strong>&nbsp;ở g&oacute;c phải&nbsp;<a href=\"https://cellphones.com.vn/man-hinh.html\">m&agrave;n h&igrave;nh</a>&nbsp;&gt; Chọn&nbsp;<strong>C&agrave;i đặt.</strong></p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất buoc1 Hướng dẫn khắc phục lỗi CHPlay không tải được ứng dụng bằng 3G, 4G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/buoc1.gif\" style=\"height:1000px; width:1000px\" /></p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Tiếp theo, ấn chọn mục<strong>&nbsp;Lựa chọn ưu ti&ecirc;n về mạng</strong>&nbsp;&gt; Một danh s&aacute;ch mở rộng hiển thị, bạn click chọn<strong>&nbsp;T&ugrave;y chọn tải ứng dụng xuống</strong>.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất buoc2 Hướng dẫn khắc phục lỗi CHPlay không tải được ứng dụng bằng 3G, 4G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/buoc2.gif\" style=\"height:1000px; width:1000px\" /></p>\r\n\r\n<p><strong>Bước 3:</strong>&nbsp;Chọn tiếp mục<strong>&nbsp;Qua bất kỳ mạng n&agrave;o</strong>&nbsp;&gt;<strong>&nbsp;Nhấn Xong</strong>&nbsp;để ho&agrave;n tất.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất buoc3 Hướng dẫn khắc phục lỗi CHPlay không tải được ứng dụng bằng 3G, 4G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/buoc3.jpg\" style=\"height:1000px; width:1000px\" /></p>\r\n\r\n<h3><strong>Khởi động lại điện thoại</strong></h3>\r\n\r\n<p>Việc khởi động lại thiết bị gi&uacute;p bạn loại bỏ hết những vấn đề khiến CHPlay kh&ocirc;ng tải được ứng dụng bằng 3G, 4G. Đ&acirc;y l&agrave; một phương ph&aacute;p dễ thực hiện v&agrave; kh&ocirc;ng tốn qu&aacute; nhiều thời gian. Bạn chỉ cần ấn v&agrave; giữ n&uacute;t nguồn tr&ecirc;n điện thoại cho đến khi m&agrave;n h&igrave;nh xuất hiện c&aacute;c t&ugrave;y chọn. L&uacute;c n&agrave;y, bạn ấn chọn Khởi động lại v&agrave; đợi một l&uacute;c để điện thoại được khởi động v&agrave; xem tải được ứng dụng bằng 3G, 4G hay chưa nh&eacute;.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất khi-dong-lai Hướng dẫn khắc phục lỗi CHPlay không tải được ứng dụng bằng 3G, 4G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/khi-dong-lai.jpg\" style=\"height:600px; width:1300px\" /></p>\r\n\r\n<h3><strong>X&oacute;a dữ liệu v&agrave; bộ nhớ cache</strong></h3>\r\n\r\n<p>Một trong những nguy&ecirc;n nh&acirc;n g&acirc;y n&ecirc;n lỗi CHPlay kh&ocirc;ng tải được ứng dụng bằng 3G, 4G đ&oacute; l&agrave; bộ nhớ đệm của bạn qu&aacute; đầy v&agrave; kh&ocirc;ng thể tiếp nhận th&ecirc;m bất kỳ dữ liệu n&agrave;o. Bạn h&atilde;y thử x&oacute;a dữ liệu v&agrave; bộ nhớ cache tr&ecirc;n Google Play như sau:</p>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;Nếu bạn thực hiện phương ph&aacute;p n&agrave;y th&igrave; đồng nghĩa với việc bạn x&oacute;a tất cả file c&agrave;i đặt, t&agrave;i khoản cũng như cơ sở dữ liệu của ứng dụng.</p>\r\n\r\n<p><strong>Bước 1:</strong>&nbsp;Khởi động mục&nbsp;<strong>C&agrave;i đặt</strong>&nbsp;v&agrave; chọn tiếp tabs&nbsp;<strong>Ứng dụng</strong>&gt; Ấn chọn tiếp mục&nbsp;<strong>Cửa h&agrave;ng Google Play.</strong></p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất h11 Hướng dẫn khắc phục lỗi CHPlay không tải được ứng dụng bằng 3G, 4G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/h11.jpg\" style=\"height:765px; width:892px\" /></p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Nhấn chọn Lữu trữ hoặc<strong>&nbsp;Bộ nhớ v&agrave; bộ nhớ đệm</strong>&nbsp;(T&ugrave;y thiết bị).</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất h13 Hướng dẫn khắc phục lỗi CHPlay không tải được ứng dụng bằng 3G, 4G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/h13.jpg\" style=\"height:764px; width:844px\" /></p>\r\n\r\n<p><strong>Bước 3:</strong>&nbsp;Nhấp chọn mục&nbsp;<strong>X&oacute;a dữ liệu &gt;</strong>&nbsp;Đợi một l&aacute;t để điện thoại bạn x&oacute;a dữ liệu ho&agrave;n tất &gt; Bấm tiếp&nbsp;<strong>X&oacute;a bộ nhớ đệm</strong>. Đợi đến khi ho&agrave;n tất bạn đăng nhập lại v&agrave;o ứng dụng CH Play v&agrave; thử tải lại ứng dụng m&agrave; bạn muốn.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất h12 Hướng dẫn khắc phục lỗi CHPlay không tải được ứng dụng bằng 3G, 4G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/h12.jpg\" style=\"height:767px; width:825px\" /></p>\r\n\r\n<h3><strong>X&oacute;a v&agrave; th&ecirc;m lại t&agrave;i khoản Google&nbsp;</strong></h3>\r\n\r\n<p>C&aacute;ch khắc phục cuối c&ugrave;ng m&agrave; Sforum muốn chia sẻ cho bạn để thực hiện tải ứng dụng bằng 3G, 4G th&agrave;nh c&ocirc;ng l&agrave; x&oacute;a v&agrave; th&ecirc;m lại t&agrave;i khoảng Google. Để thực hiện c&aacute;c bạn l&agrave;m như sau:</p>\r\n\r\n<p><strong>Bước 1:</strong>&nbsp;Tr&ecirc;n điện thoại, bạn khởi động t&iacute;nh năng C&agrave;i đặt &gt; Bấm chọn<strong>&nbsp;T&agrave;i khoản v&agrave; sao lưu &gt;</strong>&nbsp;Chọn<strong>&nbsp;T&agrave;i khoản.</strong></p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất h16 Hướng dẫn khắc phục lỗi CHPlay không tải được ứng dụng bằng 3G, 4G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/h16.jpg\" style=\"height:767px; width:1123px\" /></p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Bấm chọn t&agrave;i khoản Google &gt; Nhấn<strong>&nbsp;x&oacute;a t&agrave;i khoản.&nbsp;</strong></p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất h14-_1_ Hướng dẫn khắc phục lỗi CHPlay không tải được ứng dụng bằng 3G, 4G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/h14-_1_.jpg\" style=\"height:767px; width:862px\" /></p>\r\n\r\n<p>Sau khi thực hiện x&oacute;a t&agrave;i khoản xong th&igrave; bạn bấm đăng nhập lại t&agrave;i khoản CH Play bằng t&agrave;i khoản cũ hoặc một t&agrave;i khoản mới.</p>\r\n\r\n<h2><strong>Tạm kết</strong></h2>\r\n\r\n<p>Như vậy, Sforum đ&atilde; hướng dẫn xong cho bạn c&aacute;ch khắc phục CH Play kh&ocirc;ng tải được ứng dụng bằng 3G, 4G được. Hy vọng với những c&aacute;ch khắc phục tr&ecirc;n đ&acirc;y sẽ gi&uacute;p bạn tải được ứng dụng một c&aacute;ch nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng hơn. Ch&uacute;c bạn thực hiện th&agrave;nh c&ocirc;ng.</p>\r\n', 'khac-phuc-loi-350x250.jpg', 0, '2021-12-07 15:48:15', 1, 'phanvan0322'),
(6, 1, 'So sánh bộ ba smartphone tầm trung: POCO M4 Pro 5G, Redmi Note 10S và Redmi Note 10 5G', '<h2><strong>Thiết kế</strong></h2>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất DSCF9591 So sánh bộ ba smartphone tầm trung: POCO M4 Pro 5G, Redmi Note 10S và Redmi Note 10 5G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/05/DSCF9591.jpg\" /></p>\r\n\r\n<p>Trong ba điện thoại n&agrave;y, Redmi Note 10S c&oacute; thiết kế ấn tượng nhất nhờ sở hữu th&acirc;n m&aacute;y mỏng v&agrave; nhẹ hơn cũng như thiết kế gọn g&agrave;ng hơn so với hai mẫu m&aacute;y c&ograve;n lại. Trong khi đ&oacute;, POCO M4 Pro 5G c&oacute; k&iacute;ch thước lớn nhưng điện thoại n&agrave;y sở hữu tỷ lệ&nbsp;<a href=\"https://cellphones.com.vn/man-hinh.html\">m&agrave;n h&igrave;nh</a>/th&acirc;n m&aacute;y tốt nhất trong ba điện thoại n&agrave;y. Về mặt k&iacute;ch thước, Redmi Note 10 5G nằm ở giữa v&agrave; n&oacute; giống với Redmi Note 10S về mặt thiết kế. Lưu &yacute; rằng<a href=\"https://cellphones.com.vn/mobile/pocophone.html\">&nbsp;POCO</a>&nbsp;M4 Pro 5G v&agrave; Redmi Note 10S c&oacute; chứng nhận IP53 về khả năng kh&aacute;ng nước, chống bụi trong khi Redmi Note 10 5G đ&atilde; bỏ lỡ t&iacute;nh năng n&agrave;y.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất DSCF9612 So sánh bộ ba smartphone tầm trung: POCO M4 Pro 5G, Redmi Note 10S và Redmi Note 10 5G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/05/DSCF9612.jpg\" /></p>\r\n\r\n<p>Ngo&agrave;i những kh&aacute;c biệt tr&ecirc;n th&igrave; ng&ocirc;n ngữ thiết kế của POCO M4 Pro 5G, Redmi Note 10S v&agrave; Redmi Note 10 5G kh&aacute; giống nhau. Ch&uacute;ng đều sở hữu m&agrave;n h&igrave;nh đục lỗ bắt mắt ở mặt trước với viền bezel 2 cạnh b&ecirc;n c&oacute; k&iacute;ch thước kh&aacute; mỏng v&agrave; đi k&egrave;m phần &ldquo;cằm&rdquo; d&agrave;y hơn đ&ocirc;i ch&uacute;t. C&ograve;n ở mặt sau, cả ba điện thoại n&agrave;y đều sở hữu cụm&nbsp;<a href=\"https://cellphones.com.vn/phu-kien/camera.html\">camera</a>&nbsp;h&igrave;nh chữ nhật kh&aacute; lớn nằm ở g&oacute;c tr&ecirc;n c&ugrave;ng b&ecirc;n tr&aacute;i.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất gsmarena_000-1-2048x884 So sánh bộ ba smartphone tầm trung: POCO M4 Pro 5G, Redmi Note 10S và Redmi Note 10 5G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/11/gsmarena_000-1-2048x884.jpg\" /></p>\r\n\r\n<h2><strong>M&agrave;n h&igrave;nh</strong></h2>\r\n\r\n<p>Trong ba smartphone n&agrave;y, Redmi Note 10S sở hữu m&agrave;n h&igrave;nh chất lượng nhất v&igrave; n&oacute; sử dụng c&ocirc;ng nghệ tấm nền AMOLED cao cấp, gi&uacute;p hiển thị m&agrave;u sắc rực rỡ v&agrave; m&agrave;u đen kh&aacute; sau. Điện thoại n&agrave;y c&ograve;n được bảo vệ bởi k&iacute;nh cường lực Gorilla Glass 3 v&agrave; hỗ trợ độ ph&acirc;n giải Full-HD+ sắc n&eacute;t.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất DSCF9580 So sánh bộ ba smartphone tầm trung: POCO M4 Pro 5G, Redmi Note 10S và Redmi Note 10 5G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/05/DSCF9580.jpg\" /></p>\r\n\r\n<p><em>Redmi Note 10S</em></p>\r\n\r\n<p>Mặt kh&aacute;c, hai điện thoại c&ograve;n lại l&agrave; POCO M4 Pro 5G v&agrave; Redmi Note 10 5G chỉ c&oacute; m&agrave;n h&igrave;nh IPS LCD k&eacute;m chất lượng hơn. Tuy nhi&ecirc;n, c&aacute;c tấm nền n&agrave;y cũng hỗ trợ độ ph&acirc;n giải Full-HD+ sắc v&agrave; tần số qu&eacute;t 90Hz, hứa hẹn mang tới cho người d&ugrave;ng những trải nghiệm mượt m&agrave; hơn khi chơi&nbsp;<a href=\"https://cellphones.com.vn/sforum/s-games\">game</a>&nbsp;hay xem video.</p>\r\n\r\n<h2><strong>Th&ocirc;ng số kỹ thuật v&agrave; phần mềm</strong></h2>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất bang-thong-so-ky-thuat-2 So sánh bộ ba smartphone tầm trung: POCO M4 Pro 5G, Redmi Note 10S và Redmi Note 10 5G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/bang-thong-so-ky-thuat-2.png\" style=\"height:960px; width:629px\" /></p>\r\n\r\n<p>POCO M4 Pro 5G l&agrave; smartphone c&oacute; phần cứng tốt nhất trong bộ ba sản phẩm n&agrave;y. Đơn giản l&agrave; v&igrave; điện thoại n&agrave;y được cung cấp sức mạnh đến từ con chip Mediatek Dimensity 810 mới được x&acirc;y dựng tr&ecirc;n tiến tr&igrave;nh 6nm với xung nhịp tối đa l&agrave; 2.4 GHz. SoC được gh&eacute;p nối với RAM 6GB v&agrave; bộ nhớ trong l&ecirc;n đến 128GB.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất POCO-M4-Pro-5G-12 So sánh bộ ba smartphone tầm trung: POCO M4 Pro 5G, Redmi Note 10S và Redmi Note 10 5G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/11/POCO-M4-Pro-5G-12.jpg\" /></p>\r\n\r\n<p>Trong khi đ&oacute;, Redmi Note 10 5G c&oacute; chipset Dimensity 700 yếu hơn, nhưng n&oacute; cung cấp RAM l&ecirc;n tới 8GB v&agrave; bộ nhớ trong tối đa 256GB, v&igrave; vậy bạn đừng n&ecirc;n đ&aacute;nh gi&aacute; thấp hiệu năng của n&oacute;. Cuối c&ugrave;ng, Redmi Note 10S c&oacute; hiệu năng k&eacute;m hơn hai mẫu m&aacute;y c&ograve;n lại v&igrave; smartphone chỉ sử dụng chipset MediaTek Helio G96 kh&ocirc;ng hỗ trợ 5G. Về phần mềm, cả ba điện thoại nay đều chạy tr&ecirc;n hệ điều h&agrave;nh Android 11 với giao diện người d&ugrave;ng MIUI 12.</p>\r\n\r\n<h2><strong>Camera</strong></h2>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất DSCF9600 So sánh bộ ba smartphone tầm trung: POCO M4 Pro 5G, Redmi Note 10S và Redmi Note 10 5G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/05/DSCF9600.jpg\" /></p>\r\n\r\n<p><em>Redmi Note 10S</em></p>\r\n\r\n<p>Nếu bạn đang t&igrave;m một chiếc điện thoại sở hữu hệ thống camera tốt nhất th&igrave; h&atilde;y chọn Redmi Note 10S m&agrave; kh&ocirc;ng cần đắn đo suy nghĩ. Smartphone n&agrave;y được trang bị cảm biến ch&iacute;nh 64MP ở ph&iacute;a sau với chất lượng tốt hơn nhiều so với hai điện thoại c&ograve;n lại. N&oacute; c&ograve;n được trang bị ống k&iacute;nh g&oacute;c si&ecirc;u rộng 8MP, camera macro 2MP cũng như cảm biến 2MP l&agrave;m nhiệm vụ đo chiều s&acirc;u khi người d&ugrave;ng chụp ảnh ch&acirc;n dung. Xếp ngay sau l&agrave; POCO M4 Pro 5G với camera ch&iacute;nh 50MP v&agrave; ống k&iacute;nh g&oacute;c si&ecirc;u rộng 8MP. Trong khi Redmi Note 10 5G chỉ c&oacute; hệ thống 3 camera 48MP + 2MP + 2MP ở ph&iacute;a sau.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất POCO-M4-Pro-5G-6 So sánh bộ ba smartphone tầm trung: POCO M4 Pro 5G, Redmi Note 10S và Redmi Note 10 5G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/11/POCO-M4-Pro-5G-6.jpg\" /></p>\r\n\r\n<p>Ở mặt trước, POCO M4 Pro 5G được trang bị m&aacute;y ảnh selfie 16MP, hứa hẹn cho chất lượng tốt hơn so với camera 13MP của Redmi Note 10S v&agrave; 8MP của Redmi Note 10 5G.</p>\r\n\r\n<h2><strong>Thời lượng pin</strong></h2>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất DSCF9563 So sánh bộ ba smartphone tầm trung: POCO M4 Pro 5G, Redmi Note 10S và Redmi Note 10 5G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/05/DSCF9563.jpg\" /></p>\r\n\r\n<p>Cả ba smartphone n&agrave;y đều được&nbsp;<a href=\"https://cellphones.com.vn/mobile/xiaomi.html\">Xiaomi</a>&nbsp;trang bị vi&ecirc;n pin c&oacute; dung lượng kh&aacute; tốt l&agrave; 5,000 mAh. Do đ&oacute;, thời gian sử dụng pin của ch&uacute;ng sẽ kh&ocirc;ng ch&ecirc;nh lệch nhau qu&aacute; nhiều v&agrave; dư sức đ&aacute;p ứng tốt một ng&agrave;y d&agrave;i sử dụng của người d&ugrave;ng.</p>\r\n\r\n<p>Về c&ocirc;ng nghệ sạc nhanh, cả POCO M4 Pro 5G v&agrave; Redmi Note 10S đều hỗ trợ c&ocirc;ng suất 33W ấn tượng, trong khi Redmi Note 10 5G c&oacute; sạc 18W chậm hơn.</p>\r\n\r\n<h2><strong>Tạm kết</strong></h2>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất POCO-M4-Pro-5G-3 So sánh bộ ba smartphone tầm trung: POCO M4 Pro 5G, Redmi Note 10S và Redmi Note 10 5G \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/11/POCO-M4-Pro-5G-3.jpg\" /></p>\r\n\r\n<p>Nh&igrave;n chung, smartphone cao cấp nhất trong bộ ba n&agrave;y l&agrave; POCO M4 Pro 5G do c&oacute; bộ vi xử l&yacute; tốt hơn, nhưng nếu bạn kh&ocirc;ng bận t&acirc;m về 5G, th&igrave; Redmi Note 10S th&uacute; vị hơn nhờ camera 64MP tuyệt vời v&agrave; m&agrave;n h&igrave;nh AMOLED của n&oacute;. Bạn sẽ mua điện thoại n&agrave;o?</p>\r\n', 'so-sanh-cover-3-350x250.jpg', 0, '2021-12-07 16:02:34', 1, 'phanvan0322'),
(7, 1, 'Samsung tiết lộ ảnh render chính thức của Galaxy S21 FE', '<p>Như bạn c&oacute; thể thấy ở h&igrave;nh ảnh dưới đ&acirc;y, thiết kế của Galaxy S21 FE về cơ bản kh&ocirc;ng kh&aacute;c biệt nhiều so với c&aacute;c r&ograve; rỉ trước đ&oacute; về điện thoại. N&oacute; sẽ sở hữu&nbsp;<a href=\"https://cellphones.com.vn/man-hinh.html\">m&agrave;n h&igrave;nh</a>&nbsp;đục lỗ bắt mắt ở mặt trước với viền bezel c&aacute;c cạnh kh&aacute; mỏng v&agrave; đi k&egrave;m cụm&nbsp;<a href=\"https://cellphones.com.vn/phu-kien/camera.html\">camera</a>&nbsp;h&igrave;nh chữ nhật nằm ở g&oacute;c tr&aacute;i ph&iacute;a tr&ecirc;n c&ugrave;ng của mặt sau. Tuy nhi&ecirc;n, kh&ocirc;ng giống như Galaxy S21, m&ocirc;-đun m&aacute;y ảnh của S21 FE được thiết kế c&ugrave;ng m&agrave;u với mặt lưng, tạo sự đồng nhất v&agrave; tr&ocirc;ng đẹp mắt hơn.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất anh-render-chinh-thuc-Galaxy-S21-FE-1 Samsung tiết lộ ảnh render chính thức của Galaxy S21 FE \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/anh-render-chinh-thuc-Galaxy-S21-FE-1.png\" style=\"height:640px; width:960px\" /></p>\r\n\r\n<p>Về cấu h&igrave;nh, c&aacute;c nguồn tin trước đ&acirc;y cho biết Galaxy S21 FE được sẽ được trang bị m&agrave;n h&igrave;nh AMOLED 6.4 inch Full-HD+ với tốc độ l&agrave;m mới 120Hz. N&oacute; dự kiến ​​sẽ được cung cấp sức mạnh bởi cả hai chipset Qualcomm Snapdragon 888 v&agrave; Exynos 2100 t&ugrave;y thuộc v&agrave;o c&aacute;c khu vực m&agrave; n&oacute; sẽ được b&aacute;n.</p>\r\n\r\n<p><img alt=\"Sforum - Trang thông tin công nghệ mới nhất anh-render-chinh-thuc-Galaxy-S21-FE-2 Samsung tiết lộ ảnh render chính thức của Galaxy S21 FE \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2021/12/anh-render-chinh-thuc-Galaxy-S21-FE-2.png\" style=\"height:356px; width:960px\" /></p>\r\n\r\n<p>Ở mặt sau, điện thoại n&agrave;y đi k&egrave;m với thiết lập ba camera 12MP, camera selfie 32MP, RAM 8GB, bộ nhớ trong 256GB, chạy One UI 3.1.1 dựa tr&ecirc;n hệ điều h&agrave;nh Android 11, c&oacute; pin 4,500mAh với hỗ trợ sạc nhanh c&oacute; d&acirc;y nhanh 25W, sạc kh&ocirc;ng d&acirc;y nhanh 15W v&agrave; sạc ngược kh&ocirc;ng d&acirc;y 4.5W. chưa hết, Galaxy S21 FE c&ograve;n được tiết lộ sẽ c&oacute; nhiều m&agrave;u sắc trẻ trung để người d&ugrave;ng lựa chọn l&agrave; x&aacute;m, xanh nhạt, t&iacute;m nhạt v&agrave; trắng.</p>\r\n\r\n<p>Một r&ograve; rỉ trước đ&acirc;y cho biết mẫu m&aacute;y kế nhiệm của Galaxy S20 FE sẽ được b&aacute;n tại thị trường Việt nam với gi&aacute; khoảng 15 triệu đồng. Nếu như nguồn th&ocirc;ng tin n&agrave;y ch&iacute;nh x&aacute;c th&igrave; đ&acirc;y l&agrave; một mức gi&aacute; v&ocirc; c&ugrave;ng hấp dẫn.</p>\r\n', 'anh-render-chinh-thuc-Galaxy-S21-FE-1.webp', 0, '2021-12-07 16:03:26', 1, 'phanvan0322');

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
  MODIFY `id_binh_luan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `danhmuc_sp`
--
ALTER TABLE `danhmuc_sp`
  MODIFY `Id_dm_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `danh_muc_tin`
--
ALTER TABLE `danh_muc_tin`
  MODIFY `id_dm_tin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id_gio_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  MODIFY `id_cthd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `imgs`
--
ALTER TABLE `imgs`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `quang_cao_sp`
--
ALTER TABLE `quang_cao_sp`
  MODIFY `id_qc_sp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `id_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
