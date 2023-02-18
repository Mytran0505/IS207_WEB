-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 01, 2022 at 02:23 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlythuexe`
--

-- --------------------------------------------------------

--
-- Table structure for table `cthd`
--

CREATE TABLE `cthd` (
  `MAHD` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `MAXE` varchar(4) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cthd`
--

INSERT INTO `cthd` (`MAHD`, `MAXE`) VALUES
('HD02', 'MX03'),
('HD03', 'MX03'),
('HD07', 'MX03'),
('HD08', 'MX03'),
('HD21', 'MX03'),
('HD21', 'MX4');

-- --------------------------------------------------------

--
-- Table structure for table `hopdong`
--

CREATE TABLE `hopdong` (
  `MAHD` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `TENHD` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NGAYLAP` datetime DEFAULT NULL,
  `MAKH` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TONGTIEN` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hopdong`
--

INSERT INTO `hopdong` (`MAHD`, `TENHD`, `NGAYLAP`, `MAKH`, `TONGTIEN`) VALUES
('HD01', 'Du lich', '2018-12-22 00:00:00', 'KH01', 10000000),
('HD02', 'Dam cuoi', '2019-12-25 00:00:00', 'KH01', 15000000),
('HD03', 'Dam hoi', '2019-12-22 00:00:00', 'KH01', 16000000),
('HD04', 'Di choi', '2019-11-25 00:00:00', 'KH02', 9000000),
('HD05', 'Dam tham', '2019-11-22 00:00:00', 'KH02', 90000000),
('HD06', 'Tan gia', '2019-10-25 00:00:00', 'KH03', 18000000),
('HD07', 'Thoi noi', '2019-10-22 00:00:00', 'KH03', 12000000),
('HD08', 'Day thang', '2019-09-25 00:00:00', 'KH04', 14000000),
('HD09', 'Len chuc', '2019-09-19 00:00:00', 'KH04', 15000000),
('HD21', 'HD 21', '2021-12-20 00:00:00', 'KH01', 3400000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MAKH` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `HOTEN` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDT` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MAKH`, `HOTEN`, `SDT`) VALUES
('KH01', 'Nguyễn Văn Tùng', '0919112233'),
('KH02', 'Nguyễn Xuân Tuấn', '0919121212'),
('KH03', 'Trần Văn Đạt', '0919123456'),
('KH04', 'Lê Văn Thiện', '0919654321'),
('KH05', 'Tuấn', '98989'),
('KH06', 'Vy', '1234567'),
('KH11', 'Tuấn Anh ', '123123'),
('KH19', 'Tạ Quang Huy', '0365990290'),
('KH20', 'Nguyen Van B', '0365990291'),
('KH21', 'Cúc', '123');

-- --------------------------------------------------------

--
-- Table structure for table `xe`
--

CREATE TABLE `xe` (
  `MAXE` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `TENXE` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAUXE` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SOCHO` int(11) DEFAULT NULL,
  `TENHANG` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `xe`
--

INSERT INTO `xe` (`MAXE`, `TENXE`, `MAUXE`, `SOCHO`, `TENHANG`) VALUES
('MX03', 'Cerato 2', 'Trắng', 13, 'Toyota'),
('MX4', 'Xe 4', 'Trắng', 45, 'Toyota'),
('MX7', 'Xe 7', 'Đỏ', 4, 'Toyota');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cthd`
--
ALTER TABLE `cthd`
  ADD PRIMARY KEY (`MAHD`,`MAXE`),
  ADD KEY `MAXE` (`MAXE`);

--
-- Indexes for table `hopdong`
--
ALTER TABLE `hopdong`
  ADD PRIMARY KEY (`MAHD`),
  ADD KEY `MAKH` (`MAKH`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MAKH`);

--
-- Indexes for table `xe`
--
ALTER TABLE `xe`
  ADD PRIMARY KEY (`MAXE`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cthd`
--
ALTER TABLE `cthd`
  ADD CONSTRAINT `cthd_ibfk_1` FOREIGN KEY (`MAHD`) REFERENCES `hopdong` (`MAHD`),
  ADD CONSTRAINT `cthd_ibfk_2` FOREIGN KEY (`MAXE`) REFERENCES `xe` (`MAXE`);

--
-- Constraints for table `hopdong`
--
ALTER TABLE `hopdong`
  ADD CONSTRAINT `hopdong_ibfk_1` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
