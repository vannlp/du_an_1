-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2021 lúc 09:09 AM
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
-- Error reading data for table duan1_nhom3.binh_luan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `duan1_nhom3`.`binh_luan`' at line 1

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
-- Error reading data for table duan1_nhom3.danhmuc_sp: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `duan1_nhom3`.`danhmuc_sp`' at line 1

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc_tin`
--

CREATE TABLE `danh_muc_tin` (
  `id_dm_tin` int(11) NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- Error reading data for table duan1_nhom3.danh_muc_tin: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `duan1_nhom3`.`danh_muc_tin`' at line 1

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
(4, 'iphone-13-white-1.jpg', NULL, NULL, 'phanvan123'),
(5, 'iphone-13-white-2.jpg', NULL, NULL, 'phanvan123'),
(6, 'iphone-13-white-3.jpg', NULL, NULL, 'phanvan123'),
(7, '61b54964-ae6b-46a0-8ff8-b2eba54672ac.webp', NULL, NULL, 'phanvan123'),
(8, 'iphone-13-white-1.jpg', NULL, NULL, 'phanvan0322'),
(9, 'iphone-13-white-2.jpg', NULL, NULL, 'phanvan0322');

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
-- Error reading data for table duan1_nhom3.quang_cao_sp: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `duan1_nhom3`.`quang_cao_sp`' at line 1

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
('4', 2, 'phanvan123', 'realme', '', '', 3000000, 1400000, '2021-11-17 13:57:39', 4, 0, 0),
('5', 4, 'phanvan123', 'laptop ngon', '', '', 400000, NULL, '0000-00-00 00:00:00', 1, 0, 0);

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
  MODIFY `id_binh_luan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc_sp`
--
ALTER TABLE `danhmuc_sp`
  MODIFY `Id_dm_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `danh_muc_tin`
--
ALTER TABLE `danh_muc_tin`
  MODIFY `id_dm_tin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  MODIFY `id_cthd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `imgs`
--
ALTER TABLE `imgs`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
