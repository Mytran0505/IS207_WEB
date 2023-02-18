-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 11, 2023 lúc 01:40 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `playlist`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baihat`
--

CREATE TABLE `baihat` (
  `MaBaiHat` varchar(5) NOT NULL,
  `TenBaiHat` varchar(100) DEFAULT NULL,
  `TheLoai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baihat`
--

INSERT INTO `baihat` (`MaBaiHat`, `TenBaiHat`, `TheLoai`) VALUES
('BH01', 'Hoa No Khong Mau', 'VPOP'),
('BH02', 'Dau Mua', 'VPOP'),
('BH03', 'Con Mua Ngang Qua', 'VPOP');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `casi`
--

CREATE TABLE `casi` (
  `MaCaSi` varchar(5) NOT NULL,
  `TenCaSi` varchar(100) DEFAULT NULL,
  `GioiTinh` varchar(5) DEFAULT NULL,
  `NamSinh` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `casi`
--

INSERT INTO `casi` (`MaCaSi`, `TenCaSi`, `GioiTinh`, `NamSinh`) VALUES
('CS01', 'Hoai Lam', 'Nam', '1994-02-09'),
('CS02', 'Trung Quan', 'Nam', '1993-02-02'),
('CS03', 'Son Tung', 'Nam', '1994-02-09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `casi_baihat`
--

CREATE TABLE `casi_baihat` (
  `MaCaSi` varchar(5) NOT NULL,
  `MaBaiHat` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `casi_baihat`
--

INSERT INTO `casi_baihat` (`MaCaSi`, `MaBaiHat`) VALUES
('CS01', 'BH01'),
('CS02', 'BH02'),
('CS03', 'BH03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoinghe`
--

CREATE TABLE `nguoinghe` (
  `MaNN` varchar(5) NOT NULL,
  `TenNN` varchar(100) DEFAULT NULL,
  `GioiTinh` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoinghe`
--

INSERT INTO `nguoinghe` (`MaNN`, `TenNN`, `GioiTinh`) VALUES
('NN01', 'Nguyen Van A', 'Nu'),
('NN02', 'Tran Thi B', 'Nu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist`
--

CREATE TABLE `playlist` (
  `MaPlayList` varchar(5) NOT NULL,
  `TenPlayList` varchar(100) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `MaNN` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `playlist`
--

INSERT INTO `playlist` (`MaPlayList`, `TenPlayList`, `SoLuong`, `MaNN`) VALUES
('PL01', 'playlist 1', 2, 'NN01'),
('PL02', 'playlist 2', 3, 'NN02'),
('PL03', 'playlist 3', 1, 'NN01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist_baihat`
--

CREATE TABLE `playlist_baihat` (
  `MaPlayList` varchar(5) NOT NULL,
  `MaBaiHat` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `playlist_baihat`
--

INSERT INTO `playlist_baihat` (`MaPlayList`, `MaBaiHat`) VALUES
('PL01', 'BH01'),
('PL01', 'BH03'),
('PL02', 'BH01'),
('PL02', 'BH02'),
('PL02', 'BH03'),
('PL03', 'BH02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baihat`
--
ALTER TABLE `baihat`
  ADD PRIMARY KEY (`MaBaiHat`);

--
-- Chỉ mục cho bảng `casi`
--
ALTER TABLE `casi`
  ADD PRIMARY KEY (`MaCaSi`);

--
-- Chỉ mục cho bảng `casi_baihat`
--
ALTER TABLE `casi_baihat`
  ADD PRIMARY KEY (`MaCaSi`,`MaBaiHat`),
  ADD KEY `fk_csbh_baihat` (`MaBaiHat`);

--
-- Chỉ mục cho bảng `nguoinghe`
--
ALTER TABLE `nguoinghe`
  ADD PRIMARY KEY (`MaNN`);

--
-- Chỉ mục cho bảng `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`MaPlayList`),
  ADD KEY `fk_playlist_nguoinghe` (`MaNN`);

--
-- Chỉ mục cho bảng `playlist_baihat`
--
ALTER TABLE `playlist_baihat`
  ADD PRIMARY KEY (`MaPlayList`,`MaBaiHat`),
  ADD KEY `fk_plnn_baihat` (`MaBaiHat`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `casi_baihat`
--
ALTER TABLE `casi_baihat`
  ADD CONSTRAINT `fk_csbh_baihat` FOREIGN KEY (`MaBaiHat`) REFERENCES `baihat` (`MaBaiHat`),
  ADD CONSTRAINT `fk_csbh_casi` FOREIGN KEY (`MaCaSi`) REFERENCES `casi` (`MaCaSi`);

--
-- Các ràng buộc cho bảng `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `fk_playlist_nguoinghe` FOREIGN KEY (`MaNN`) REFERENCES `nguoinghe` (`MaNN`);

--
-- Các ràng buộc cho bảng `playlist_baihat`
--
ALTER TABLE `playlist_baihat`
  ADD CONSTRAINT `fk_plnn_baihat` FOREIGN KEY (`MaBaiHat`) REFERENCES `baihat` (`MaBaiHat`),
  ADD CONSTRAINT `fk_plnn_playlist` FOREIGN KEY (`MaPlayList`) REFERENCES `playlist` (`MaPlayList`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
