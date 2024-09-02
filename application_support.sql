-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2024 at 10:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `application support`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_bed`
--

CREATE TABLE `master_bed` (
  `id_bed` int(11) NOT NULL,
  `kamar_id` int(11) NOT NULL,
  `nama_bed` varchar(100) NOT NULL,
  `icekbridging` varchar(100) NOT NULL,
  `ruang_aplicares` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_bed`
--

INSERT INTO `master_bed` (`id_bed`, `kamar_id`, `nama_bed`, `icekbridging`, `ruang_aplicares`) VALUES
(18, 16, '101 A', 'TRUE', '26KL3'),
(20, 51, 'NEONATOLOGI E', 'TRUE', '10KL3'),
(27, 28, '312 A', 'TRUE', '26KL3'),
(28, 28, '312 B', 'TRUE', '32HCU'),
(29, 28, '312 C', 'TRUE', '26KL3'),
(53, 51, 'NEONATOLOGI A', 'TRUE', '30ICU'),
(55, 51, 'NEONATOLOGI I', 'TRUE', '32HCU'),
(65, 65, '313 A', 'TRUE', '32HCU'),
(66, 65, '313 B', 'TRUE', '31HCU'),
(67, 65, '313 C', 'TRUE', '26KL3'),
(71, 16, '101 B', 'TRUE', ''),
(78, 51, 'NEONATOLOGI F', 'TRUE', '10KL3'),
(79, 51, 'NEONATOLOGI G', 'TRUE', '30ICU'),
(95, 93, '416 A', 'TRUE', '22KL1'),
(96, 93, '416 B', 'TRUE', '10KL3'),
(97, 93, '416 C', 'TRUE', '10KL3'),
(110, 93, '414 A', 'TRUE', '26KL3'),
(111, 93, '415 A', 'TRUE', '26KL3'),
(141, 51, 'NEONATOLOGI B', 'TRUE', '10KL1'),
(142, 51, 'NEONATOLOGI C', 'TRUE', '26KL3'),
(143, 51, 'NEONATOLOGI D', 'TRUE', '8KL1'),
(161, 93, '413 D', 'TRUE', '26KL3'),
(179, 51, 'NEONATOLOGI J', 'TRUE', ''),
(212, 51, 'NEONATOLOGI K', 'TRUE', '26KL3'),
(233, 229, 'BOX BY 1', 'TRUE', '30ICU'),
(236, 51, 'NEONATOLOGI L', 'TRUE', '28NIC'),
(241, 51, 'BOX BAYI 31', 'TRUE', '8KL1'),
(242, 51, 'BOX BAYI 32', 'TRUE', '26KL3'),
(243, 51, 'BOX BAYI 33', 'TRUE', ''),
(244, 51, 'BOX BAYI 34', 'TRUE', '26KL3'),
(252, 51, 'NEONATOLOGI M', 'TRUE', '31HCU'),
(253, 51, 'NEONATOLOGI N', 'TRUE', '8KL1'),
(254, 51, 'NEONATOLOGI O', 'TRUE', '8KL1'),
(255, 51, 'NEONATOLOGI P', 'TRUE', '7KL2'),
(256, 51, 'NEONATOLOGI Q', 'TRUE', '26KL3'),
(257, 51, 'NEONATOLOGI R', 'TRUE', '31HCU'),
(258, 51, 'NEONATOLOGI H', 'TRUE', '31HCU'),
(259, 16, 'BOX BAYI 38', 'TRUE', '10KL3'),
(260, 16, 'BOX BAYI 39', 'TRUE', ''),
(261, 16, 'BOX BAYI 40', 'TRUE', ''),
(264, 16, 'BOX BAYI 41', 'TRUE', '31HCU'),
(265, 16, 'BOX BAYI 42', 'TRUE', '31HCU'),
(266, 16, 'BOX BAYI 43', 'TRUE', '26KL3'),
(267, 16, 'BOX BAYI 44', 'TRUE', '16KL1'),
(268, 16, 'BOX BAYI 45', 'TRUE', '32HCU'),
(269, 16, 'BOX BAYI 46', 'TRUE', '28NIC'),
(287, 16, 'BOX BAYI 47', 'TRUE', '28NIC'),
(454, 51, 'NEONATOLOGI O', 'TRUE', '24KL3');

-- --------------------------------------------------------

--
-- Table structure for table `master_kamar`
--

CREATE TABLE `master_kamar` (
  `id_kamar` int(11) NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `nama_kamar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_kamar`
--

INSERT INTO `master_kamar` (`id_kamar`, `ruang_id`, `nama_kamar`) VALUES
(16, 10, 'BERSALIN (VK)'),
(28, 8, '(RPA) PERAWATAN ANAK'),
(51, 9, 'NEONATOLOGI'),
(65, 8, '(RPA) PERAWATAN ANAK'),
(93, 7, '(RPU) PERAWATAN UMUM'),
(229, 10, 'VK BAYI');

-- --------------------------------------------------------

--
-- Table structure for table `master_ruang`
--

CREATE TABLE `master_ruang` (
  `id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_ruang`
--

INSERT INTO `master_ruang` (`id_ruang`, `nama_ruang`) VALUES
(3, 'RPA'),
(5, 'RPU'),
(7, '(RPU) PERAWATAN UMUM'),
(8, '(RPA) PERAWATAN ANAK'),
(9, 'NEONATOLOGI (PERINATOLOGI)'),
(10, 'BERSALIN (VK)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_bed`
--
ALTER TABLE `master_bed`
  ADD PRIMARY KEY (`id_bed`);

--
-- Indexes for table `master_kamar`
--
ALTER TABLE `master_kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `master_ruang`
--
ALTER TABLE `master_ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_bed`
--
ALTER TABLE `master_bed`
  MODIFY `id_bed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;

--
-- AUTO_INCREMENT for table `master_kamar`
--
ALTER TABLE `master_kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `master_ruang`
--
ALTER TABLE `master_ruang`
  MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
