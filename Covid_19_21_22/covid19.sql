-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2023 at 03:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid19`
--

-- --------------------------------------------------------

--
-- Table structure for table `cn_tc`
--

CREATE TABLE `cn_tc` (
  `MaCongDan` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `MaTrieuChung` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cn_tc`
--

INSERT INTO `cn_tc` (`MaCongDan`, `MaTrieuChung`) VALUES
('CD01', 'TT01'),
('CD01', 'TT02'),
('CD01', 'TT03'),
('CD02', 'TT02'),
('CD02', 'TT03'),
('CD03', 'TT03'),
('CD04', 'TT01'),
('CD04', 'TT02'),
('CD05', 'TT01'),
('CD06', 'TT03'),
('CD07', 'TT02'),
('CD08', 'TT01'),
('CD09', 'TT02'),
('CD09', 'TT03'),
('CD10', 'TT01'),
('CD11', 'TT02'),
('CD12', 'TT01'),
('CD12', 'TT02'),
('CD12', 'TT03'),
('CD12', 'TT04'),
('CD12', 'TT05'),
('CD12', 'TT06'),
('CD13', 'TT04'),
('CD13', 'TT05'),
('CD13', 'TT06'),
('CD14', 'TT01'),
('CD14', 'TT02'),
('CD14', 'TT03'),
('CD15', 'TT01'),
('CD15', 'TT02');

-- --------------------------------------------------------

--
-- Table structure for table `congdan`
--

CREATE TABLE `congdan` (
  `MaCongDan` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `TenCongDan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL,
  `NamSinh` date NOT NULL,
  `NuocVe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaDiemCachLy` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `congdan`
--

INSERT INTO `congdan` (`MaCongDan`, `TenCongDan`, `GioiTinh`, `NamSinh`, `NuocVe`, `MaDiemCachLy`) VALUES
('CD01', 'Nguy???n V??n Hi???u', 1, '2000-01-11', 'EngLand', 'DCL04'),
('CD02', 'Quy', 1, '2002-02-02', 'Singapore', 'DCL01'),
('CD03', 'N?? H???o', 0, '2002-03-03', 'China', 'DCL03'),
('CD04', 'Tu', 0, '2002-04-04', 'Italy', 'DCL07'),
('CD05', 'Mai', 0, '2002-05-05', 'Campuchia', 'DCL01'),
('CD06', 'Long', 1, '2002-06-06', 'Myanmar', 'DCL08'),
('CD07', 'Tuy???t', 0, '2002-07-07', 'Malaysia', 'DCL02'),
('CD08', 'Nhi', 1, '2002-08-08', 'ThaiLand', 'DCL04'),
('CD09', 'An', 1, '2002-09-09', 'America', 'DCL05'),
('CD10', 'H??', 0, '2002-01-15', 'France', 'DCL06'),
('CD11', 'Alexander I', 1, '2002-11-11', 'France', 'DCL01'),
('CD12', 'Elsu', 1, '2002-12-12', 'AOG', 'DCL12'),
('CD13', 'Lilianna', 0, '2003-03-12', 'AOG', 'DCL12'),
('CD14', 'Aya', 0, '1999-09-30', 'H?? N???i', 'DCL09'),
('CD15', 'Aoi', 0, '2222-02-02', 'AOG', 'DCL12'),
('CD18', 'C??ng d??n th??? 18', 0, '2023-02-15', 'Korea', 'DCL09'),
('CN2', 'Cn2', 0, '2023-02-16', 'adad', 'DCL04'),
('CN3', 'Cn3', 0, '2023-02-16', 'adad', 'DCL03'),
('CN4', 'cn4', 0, '2023-02-16', 'adad', 'DCL01'),
('CN5', 'cn5', 0, '2023-02-16', 'adad', 'DCL01');

-- --------------------------------------------------------

--
-- Table structure for table `diemcachly`
--

CREATE TABLE `diemcachly` (
  `MaDiemCachLy` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `TenDiemCachLy` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `SucChua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diemcachly`
--

INSERT INTO `diemcachly` (`MaDiemCachLy`, `TenDiemCachLy`, `DiaChi`, `SucChua`) VALUES
('DCL01', 'Bi??n H??a', 'DC1', 1000),
('DCL02', 'Moon', 'Moon', 1000),
('DCL03', 'D?? An', 'DC3', 1000),
('DCL04', 'B??nh D????ng', 'B??nh D????ng', 1000),
('DCL05', 'Earth', 'Earth', 1000000000),
('DCL06', 'B??nh ?????nh', 'B??nh ?????nh', 1000),
('DCL07', 'No Name', 'No Name\r\n', 500),
('DCL08', '??c', '??c', 2000),
('DCL09', 'KTX Khu A ', 'B??nh D????ng', 6000),
('DCL10', 'KTX Khu B', 'B??nh D????ng - Th??? ?????c', 8000),
('DCL11', 'H?? N???i', 'H?? N???i', 5000),
('DCL12', 'B??nh Nguy??n V?? T???n', 'AOG', 200),
('DCL13', 'dc13', 'dc13', 131313),
('DCL14', '??i???m c??ch ly 14', 'AOG', 190),
('DCL15', '??i???m c??ch ly 15', 'Mars', 100000000),
('DCL16', '??i???m c??ch ly 16', '?????a ch??? 16', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `trieuchung`
--

CREATE TABLE `trieuchung` (
  `MaTrieuChung` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `TenTrieuChung` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trieuchung`
--

INSERT INTO `trieuchung` (`MaTrieuChung`, `TenTrieuChung`) VALUES
('TT01', 'S???t'),
('TT02', 'Ho'),
('TT03', 'Kh?? th???'),
('TT04', '??au ?????u'),
('TT05', 'M???i m???t'),
('TT06', '??au l??ng');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cn_tc`
--
ALTER TABLE `cn_tc`
  ADD PRIMARY KEY (`MaCongDan`,`MaTrieuChung`),
  ADD KEY `MaTrieuChung` (`MaTrieuChung`);

--
-- Indexes for table `congdan`
--
ALTER TABLE `congdan`
  ADD PRIMARY KEY (`MaCongDan`),
  ADD KEY `MaDiemCachLy` (`MaDiemCachLy`);

--
-- Indexes for table `diemcachly`
--
ALTER TABLE `diemcachly`
  ADD PRIMARY KEY (`MaDiemCachLy`);

--
-- Indexes for table `trieuchung`
--
ALTER TABLE `trieuchung`
  ADD PRIMARY KEY (`MaTrieuChung`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cn_tc`
--
ALTER TABLE `cn_tc`
  ADD CONSTRAINT `cn_tc_ibfk_1` FOREIGN KEY (`MaCongDan`) REFERENCES `congdan` (`MaCongDan`),
  ADD CONSTRAINT `cn_tc_ibfk_2` FOREIGN KEY (`MaTrieuChung`) REFERENCES `trieuchung` (`MaTrieuChung`);

--
-- Constraints for table `congdan`
--
ALTER TABLE `congdan`
  ADD CONSTRAINT `congdan_ibfk_1` FOREIGN KEY (`MaDiemCachLy`) REFERENCES `diemcachly` (`MaDiemCachLy`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
