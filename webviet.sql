-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2021 lúc 03:51 AM
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
-- Cơ sở dữ liệu: `webviet`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuctin`
--

CREATE TABLE `danhmuctin` (
  `id_dm_tin` int(11) NOT NULL,
  `ten_danh_muc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuctin`
--

INSERT INTO `danhmuctin` (`id_dm_tin`, `ten_danh_muc`, `mo_ta`) VALUES
(10, 'Thế giới', 'Danh mục tin tức thế giới toàn cảnh'),
(11, 'Kinh doanh', 'Danh mục tin tức kinh doanh'),
(12, 'Khoa học', 'Danh mục tin tức khoa học');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img`
--

CREATE TABLE `img` (
  `imgid` int(11) NOT NULL,
  `linkimg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_news` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `title_bai_viet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `anh_dai_dien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_dm_tin` int(11) NOT NULL,
  `ngay_up` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id_news`, `title_bai_viet`, `noi_dung`, `anh_dai_dien`, `id_dm_tin`, `ngay_up`) VALUES
(3, 'Lệnh tiêm chủng bắt buộc của Biden bị chặn', 'Tòa phúc thẩm liên bang Mỹ ngày 6/11 chặn lệnh bắt buộc tiêm vaccine của chính quyền Biden đối với các doanh nghiệp có trên 100 lao động.\r\n\r\nTòa phúc thẩm liên bang ở New Orleans cho biết vì các bên khiếu kiện đã đưa ra những lý do cho thấy lệnh bắt buộc tiêm chủng của chính quyền Tổng thống Joe Biden tồn tại những \"vấn đề nghiêm trọng về luật pháp và hiến pháp\" nên tòa quyết định đình chỉ nó cho tới khi có phán quyết tiếp theo.', 'anh123x4.jpg', 10, '2021-11-07 05:51:37'),
(4, 'Iran bắt tàu dầu với 26 thuỷ thủ Việt', 'Bộ Ngoại giao xác nhận tàu MV Sothys bị Iran kiểm soát ở biển Oman có 26 thuyền viên người Việt và đang xác minh nhân thân thủy thủ.', 'sothys-1636016876-6207-1636017036.jpg', 10, '2021-11-07 11:59:47'),
(5, 'WHO: Châu Âu lại thành tâm dịch Covid-19', 'WHO: Châu Âu lại thành tâm dịch Covid-19\r\n', 'covid-19-o-chau-au-1636035005-7816-1636035017.jpg', 10, '2021-11-07 12:01:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chucvu` int(11) NOT NULL,
  `ngaysinh` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuctin`
--
ALTER TABLE `danhmuctin`
  ADD PRIMARY KEY (`id_dm_tin`);

--
-- Chỉ mục cho bảng `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`imgid`),
  ADD KEY `fk_img-user` (`username`),
  ADD KEY `fk_img-news` (`id_news`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`),
  ADD KEY `fk_news-danhmuctin` (`id_dm_tin`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuctin`
--
ALTER TABLE `danhmuctin`
  MODIFY `id_dm_tin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `img`
--
ALTER TABLE `img`
  MODIFY `imgid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `img`
--
ALTER TABLE `img`
  ADD CONSTRAINT `fk_img-news` FOREIGN KEY (`id_news`) REFERENCES `news` (`id_news`),
  ADD CONSTRAINT `fk_img-user` FOREIGN KEY (`username`) REFERENCES `user` (`username`);

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_news-danhmuctin` FOREIGN KEY (`id_dm_tin`) REFERENCES `danhmuctin` (`id_dm_tin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
