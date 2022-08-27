-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2022 at 06:11 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `kode_peserta` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ttl` date NOT NULL,
  `jenis_kelamin` enum('L','K') NOT NULL,
  `alamat` text NOT NULL,
  `ayah` varchar(50) NOT NULL,
  `ibu` varchar(50) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `instagram` blob NOT NULL,
  `facebook` blob NOT NULL,
  `twitter` blob NOT NULL,
  `foto` blob NOT NULL,
  `email` tinyblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`kode_peserta`, `nik`, `nama`, `ttl`, `jenis_kelamin`, `alamat`, `ayah`, `ibu`, `no_hp`, `instagram`, `facebook`, `twitter`, `foto`, `email`) VALUES
(1, 'klho;', 'kgkj', '2022-08-03', 'L', 'alfa', 'zvz', 'adfa', 'asdfa', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `postest`
--

CREATE TABLE `postest` (
  `kode_peserta` int(11) NOT NULL,
  `kode_materi` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `kode_peserta` int(11) NOT NULL,
  `kode_materi` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pretest`
--

CREATE TABLE `pretest` (
  `kode_peserta` int(11) NOT NULL,
  `kode_materi` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD PRIMARY KEY (`kode_peserta`),
  ADD KEY `kode_materi` (`kode_materi`);

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
  MODIFY `kode_materi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `kode_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
