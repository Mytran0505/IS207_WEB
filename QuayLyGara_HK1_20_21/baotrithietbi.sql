-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 11, 2023 lúc 02:30 AM
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
-- Cơ sở dữ liệu: `baotrithietbi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `canho`
--

CREATE TABLE `canho` (
  `MaCanHo` varchar(5) NOT NULL,
  `TenChuHo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `canho`
--

INSERT INTO `canho` (`MaCanHo`, `TenChuHo`) VALUES
('CH01', 'Tạ Quang Huy'),
('CH02', 'Lê Thị Hồng Cúc'),
('CH03', 'Nguyễn Xuân Minh Thu'),
('CH04', 'Trần Thị Ngọc An'),
('CH05', 'Nguyễn Ảnh Trường Thắng'),
('CH11', 'Nguyen Thi My Tran'),
('CH20', 'Ton Nu Tu Quyen'),
('CH21', 'Tran Anh Huy'),
('CN06', 'Nguyễn Ảnh Trường Thắng'),
('CN49', 'Nguyễn Ảnh Trường Nam'),
('CN50', 'Nguyễn Ảnh Trường Thắng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` varchar(5) NOT NULL,
  `TenNhanVien` varchar(100) NOT NULL,
  `SoDienThoai` varchar(100) NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `TenNhanVien`, `SoDienThoai`, `GioiTinh`) VALUES
('NV01', 'Võ Ngọc Cẩm Tú', '0345785412', 0),
('NV02', 'Lê Ngọc Tuấn', '09547855125', 1),
('NV03', 'Lê Ngọc Minh Thư', '03214758545', 0),
('NV04', 'Nguyễn Hoàng Thắng', '0924587561', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_bt`
--

CREATE TABLE `nv_bt` (
  `MaNhanVien` varchar(5) NOT NULL,
  `MaThietBi` varchar(5) NOT NULL,
  `MaCanHo` varchar(5) NOT NULL,
  `LanThu` int(11) NOT NULL,
  `NgayBaoTri` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_bt`
--

INSERT INTO `nv_bt` (`MaNhanVien`, `MaThietBi`, `MaCanHo`, `LanThu`, `NgayBaoTri`) VALUES
('NV01', 'TB01', 'CH03', 4, '2022-01-20'),
('NV01', 'TB01', 'CH11', 6, '0000-00-00'),
('NV01', 'TB02', 'CH11', 6, '0000-00-00'),
('NV01', 'TB03', 'CH11', 7, '0000-00-00'),
('NV02', 'TB03', 'CH11', 7, '0000-00-00'),
('NV02', 'TB04', 'CH04', 4, '2022-01-03'),
('NV04', 'TB04', 'CH04', 1, '2021-12-28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thietbi`
--

CREATE TABLE `thietbi` (
  `MaThietBi` varchar(5) NOT NULL,
  `TenThietBi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thietbi`
--

INSERT INTO `thietbi` (`MaThietBi`, `TenThietBi`) VALUES
('TB01', 'Thiết bị 1'),
('TB02', 'Thiết bị 2'),
('TB03', 'Thiết bị 3'),
('TB04', 'Thiết bị 4');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `canho`
--
ALTER TABLE `canho`
  ADD PRIMARY KEY (`MaCanHo`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Chỉ mục cho bảng `nv_bt`
--
ALTER TABLE `nv_bt`
  ADD PRIMARY KEY (`MaNhanVien`,`MaThietBi`,`MaCanHo`,`LanThu`),
  ADD KEY `FK_BT_CH` (`MaCanHo`),
  ADD KEY `FK_BT_TB` (`MaThietBi`);

--
-- Chỉ mục cho bảng `thietbi`
--
ALTER TABLE `thietbi`
  ADD PRIMARY KEY (`MaThietBi`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `nv_bt`
--
ALTER TABLE `nv_bt`
  ADD CONSTRAINT `FK_BT_CH` FOREIGN KEY (`MaCanHo`) REFERENCES `canho` (`MaCanHo`),
  ADD CONSTRAINT `FK_BT_NV` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`),
  ADD CONSTRAINT `FK_BT_TB` FOREIGN KEY (`MaThietBi`) REFERENCES `thietbi` (`MaThietBi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
