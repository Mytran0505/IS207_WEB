-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 03, 2022 at 05:06 AM
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
-- Database: `quanlyplaylist`
--

-- --------------------------------------------------------

--
-- Table structure for table `baihat`
--

CREATE TABLE `baihat` (
  `MaBaiHat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenBaiHat` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TheLoai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baihat`
--

INSERT INTO `baihat` (`MaBaiHat`, `TenBaiHat`, `TheLoai`) VALUES
('BH01', 'Bài hát 1', 'Thể loại A'),
('BH02', 'Bài hát 2', 'Thể loại B'),
('BH03', 'Bài hát 3', 'Thể loại C');

-- --------------------------------------------------------

--
-- Table structure for table `casi`
--

CREATE TABLE `casi` (
  `MaCaSi` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenCaSi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL,
  `NamSinh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `casi`
--

INSERT INTO `casi` (`MaCaSi`, `TenCaSi`, `GioiTinh`, `NamSinh`) VALUES
('CS01', 'Phạm Hồng Phúc', 1, '2022-01-02'),
('CS02', 'Nguyễn Hoàng Thắng', 1, '2022-01-03'),
('CS03', 'Nguyễn Hằng Nga', 0, '2022-01-01'),
('CS04', 'Lê Ngọc Tuấn', 1, '2022-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `casi_baihat`
--

CREATE TABLE `casi_baihat` (
  `MaCaSi` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaBaiHat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `casi_baihat`
--

INSERT INTO `casi_baihat` (`MaCaSi`, `MaBaiHat`) VALUES
('CS01', 'BH01'),
('CS01', 'BH02'),
('CS01', 'BH03');

-- --------------------------------------------------------

--
-- Table structure for table `nguoinghe`
--

CREATE TABLE `nguoinghe` (
  `MaNN` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenNN` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nguoinghe`
--

INSERT INTO `nguoinghe` (`MaNN`, `TenNN`, `GioiTinh`) VALUES
('NN01', 'Nguyễn Văn Hiếu', 1),
('NN02', 'Võ Ngọc Cẩm Tú', 0),
('NN03', 'Nguyễn Đông Nghi', 0),
('NN04', 'Võ Anh Duy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `MaPlayList` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenPlayList` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MaNN` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`MaPlayList`, `TenPlayList`, `SoLuong`, `MaNN`) VALUES
('PL01', 'Play list A', 2, 'NN01');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_baihat`
--

CREATE TABLE `playlist_baihat` (
  `MaPlayList` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaBaiHat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlist_baihat`
--

INSERT INTO `playlist_baihat` (`MaPlayList`, `MaBaiHat`) VALUES
('PL01', 'BH02'),
('PL01', 'BH03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baihat`
--
ALTER TABLE `baihat`
  ADD PRIMARY KEY (`MaBaiHat`);

--
-- Indexes for table `casi`
--
ALTER TABLE `casi`
  ADD PRIMARY KEY (`MaCaSi`);

--
-- Indexes for table `casi_baihat`
--
ALTER TABLE `casi_baihat`
  ADD PRIMARY KEY (`MaCaSi`,`MaBaiHat`),
  ADD KEY `MaBaiHat` (`MaBaiHat`);

--
-- Indexes for table `nguoinghe`
--
ALTER TABLE `nguoinghe`
  ADD PRIMARY KEY (`MaNN`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`MaPlayList`),
  ADD KEY `MaNN` (`MaNN`);

--
-- Indexes for table `playlist_baihat`
--
ALTER TABLE `playlist_baihat`
  ADD PRIMARY KEY (`MaPlayList`,`MaBaiHat`),
  ADD KEY `MaBaiHat` (`MaBaiHat`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `casi_baihat`
--
ALTER TABLE `casi_baihat`
  ADD CONSTRAINT `casi_baihat_ibfk_1` FOREIGN KEY (`MaBaiHat`) REFERENCES `baihat` (`MaBaiHat`),
  ADD CONSTRAINT `casi_baihat_ibfk_2` FOREIGN KEY (`MaCaSi`) REFERENCES `casi` (`MaCaSi`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`MaNN`) REFERENCES `nguoinghe` (`MaNN`);

--
-- Constraints for table `playlist_baihat`
--
ALTER TABLE `playlist_baihat`
  ADD CONSTRAINT `playlist_baihat_ibfk_1` FOREIGN KEY (`MaBaiHat`) REFERENCES `baihat` (`MaBaiHat`),
  ADD CONSTRAINT `playlist_baihat_ibfk_2` FOREIGN KEY (`MaPlayList`) REFERENCES `playlist` (`MaPlayList`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
