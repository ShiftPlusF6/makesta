-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2022 at 07:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makesta`
--

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `kode_materi` int(11) NOT NULL,
  `nama_materi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`kode_materi`, `nama_materi`) VALUES
(1, 'Aswaja'),
(2, 'Ke NU an'),
(3, 'IPNU IPPNU'),
(4, 'Ke Indonesiaan'),
(5, 'Tradisi Amaliyah'),
(6, 'Ke Organisasi an');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_materi`
--

CREATE TABLE `nilai_materi` (
  `kode_peserta` int(11) NOT NULL,
  `kode_materi` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `kategori` enum('A','B','C','D') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_materi`
--

INSERT INTO `nilai_materi` (`kode_peserta`, `kode_materi`, `jumlah`, `kategori`) VALUES
(2, 1, 89, 'B'),
(1, 2, 33, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_peserta`
--

CREATE TABLE `nilai_peserta` (
  `kode_peserta` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `rata_rata` int(11) NOT NULL,
  `kategori_lulus` enum('A','B','C','D') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_peserta`
--

INSERT INTO `nilai_peserta` (`kode_peserta`, `jumlah`, `rata_rata`, `kategori_lulus`) VALUES
(2, 89, 4, 'B'),
(1, 33, 4, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `kode_peserta` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `ttl` date NOT NULL,
  `jenis_kelamin` enum('L','K') NOT NULL,
  `alamat` text NOT NULL,
  `ayah` varchar(50) NOT NULL,
  `ibu` varchar(50) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `instagram` varchar(30) NOT NULL,
  `facebook` varchar(30) NOT NULL,
  `twitter` varchar(30) NOT NULL,
  `sd` varchar(30) NOT NULL,
  `smp` varchar(30) NOT NULL,
  `sma` varchar(30) DEFAULT NULL,
  `perguruan_tinggi` varchar(30) DEFAULT NULL,
  `pondok` varchar(30) DEFAULT NULL,
  `foto` blob NOT NULL,
  `email` varchar(30) NOT NULL,
  `motto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`kode_peserta`, `nik`, `nama`, `tempat_lahir`, `ttl`, `jenis_kelamin`, `alamat`, `ayah`, `ibu`, `no_hp`, `instagram`, `facebook`, `twitter`, `sd`, `smp`, `sma`, `perguruan_tinggi`, `pondok`, `foto`, `email`, `motto`) VALUES
(1, 'klho;', 'kgkj', 'wonoyoso', '2022-08-03', 'L', 'alfa', 'zvz', 'adfa', 'asdfa', 'nolep', 'nolep', 'nolep3', 'sdn wonoyoso', 'smp wonoyoso', 'sma wonoyoso?', 'stmik', 'stmik', '', 'akunolep', 'suka berenang sambil rebahan'),
(2, 'dumy1', 'dummy1', 'kotabaru', '2022-08-23', 'L', 'simbang', 'gapunya', 'gapunya', '08080', 'nolep3', 'nolep4', 'nolep5', 'sdn wonoyoso', 'smp wonoyoso', 'sma wonoyoso?', 'stmik', 'stmik', '', 'kkk', 'hidup sederhana asal kaya');

-- --------------------------------------------------------

--
-- Table structure for table `postest`
--

CREATE TABLE `postest` (
  `kode_peserta` int(11) NOT NULL,
  `kode_materi` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postest`
--

INSERT INTO `postest` (`kode_peserta`, `kode_materi`, `nilai`) VALUES
(1, 6, 5),
(1, 3, 0),
(2, 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `kode_peserta` int(11) NOT NULL,
  `kode_materi` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`kode_peserta`, `kode_materi`, `nilai`) VALUES
(2, 1, 5),
(1, 6, 0),
(1, 6, 10),
(2, 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pretest`
--

CREATE TABLE `pretest` (
  `kode_peserta` int(11) NOT NULL,
  `kode_materi` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pretest`
--

INSERT INTO `pretest` (`kode_peserta`, `kode_materi`, `nilai`) VALUES
(2, 1, 5),
(2, 3, 0),
(1, 2, 5),
(1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `respon`
--

CREATE TABLE `respon` (
  `kode_peserta` int(11) NOT NULL,
  `kode_materi` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `respon`
--

INSERT INTO `respon` (`kode_peserta`, `kode_materi`, `nilai`) VALUES
(2, 3, 5),
(1, 4, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`kode_materi`);

--
-- Indexes for table `nilai_materi`
--
ALTER TABLE `nilai_materi`
  ADD KEY `kode_materi` (`kode_materi`),
  ADD KEY `kode_peserta` (`kode_peserta`);

--
-- Indexes for table `nilai_peserta`
--
ALTER TABLE `nilai_peserta`
  ADD KEY `kode_peserta` (`kode_peserta`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`kode_peserta`);

--
-- Indexes for table `postest`
--
ALTER TABLE `postest`
  ADD KEY `kode_peserta` (`kode_peserta`),
  ADD KEY `kode_materi` (`kode_materi`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD KEY `kode_materi` (`kode_materi`),
  ADD KEY `kode_peserta` (`kode_peserta`);

--
-- Indexes for table `pretest`
--
ALTER TABLE `pretest`
  ADD KEY `kode_materi` (`kode_materi`),
  ADD KEY `kode_peserta` (`kode_peserta`) USING BTREE;

--
-- Indexes for table `respon`
--
ALTER TABLE `respon`
  ADD KEY `kode_materi` (`kode_materi`),
  ADD KEY `kode_peserta` (`kode_peserta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `kode_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `kode_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nilai_materi`
--
ALTER TABLE `nilai_materi`
  ADD CONSTRAINT `nilai_materi_ibfk_1` FOREIGN KEY (`kode_materi`) REFERENCES `materi` (`kode_materi`),
  ADD CONSTRAINT `nilai_materi_ibfk_2` FOREIGN KEY (`kode_peserta`) REFERENCES `peserta` (`kode_peserta`);

--
-- Constraints for table `nilai_peserta`
--
ALTER TABLE `nilai_peserta`
  ADD CONSTRAINT `nilai_peserta_ibfk_1` FOREIGN KEY (`kode_peserta`) REFERENCES `peserta` (`kode_peserta`);

--
-- Constraints for table `postest`
--
ALTER TABLE `postest`
  ADD CONSTRAINT `postest_ibfk_1` FOREIGN KEY (`kode_peserta`) REFERENCES `peserta` (`kode_peserta`),
  ADD CONSTRAINT `postest_ibfk_2` FOREIGN KEY (`kode_materi`) REFERENCES `materi` (`kode_materi`);

--
-- Constraints for table `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_ibfk_1` FOREIGN KEY (`kode_materi`) REFERENCES `materi` (`kode_materi`),
  ADD CONSTRAINT `presensi_ibfk_2` FOREIGN KEY (`kode_peserta`) REFERENCES `peserta` (`kode_peserta`);

--
-- Constraints for table `pretest`
--
ALTER TABLE `pretest`
  ADD CONSTRAINT `pretest_ibfk_1` FOREIGN KEY (`kode_materi`) REFERENCES `materi` (`kode_materi`),
  ADD CONSTRAINT `pretest_ibfk_2` FOREIGN KEY (`kode_peserta`) REFERENCES `peserta` (`kode_peserta`);

--
-- Constraints for table `respon`
--
ALTER TABLE `respon`
  ADD CONSTRAINT `respon_ibfk_1` FOREIGN KEY (`kode_materi`) REFERENCES `materi` (`kode_materi`),
  ADD CONSTRAINT `respon_ibfk_2` FOREIGN KEY (`kode_peserta`) REFERENCES `peserta` (`kode_peserta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
