-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2014 at 12:02 PM
-- Server version: 5.5.32-log
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spk_asisten`
--
CREATE DATABASE IF NOT EXISTS `spk_asisten` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `spk_asisten`;

-- --------------------------------------------------------

--
-- Table structure for table `datadiri`
--

CREATE TABLE IF NOT EXISTS `datadiri` (
  `npm` varchar(14) NOT NULL,
  `nama` char(50) NOT NULL,
  `jk` char(1) NOT NULL,
  `jurusan` char(21) NOT NULL,
  `semester` int(11) NOT NULL,
  `kelas` char(13) NOT NULL,
  `ipk` varchar(4) NOT NULL,
  `nohp` varchar(12) NOT NULL,
  `status` char(20) DEFAULT NULL,
  `alamat` varchar(100) NOT NULL,
  `bidang_1` varchar(8) DEFAULT NULL,
  `bidang_2` varchar(11) DEFAULT NULL,
  `bidang_3` varchar(15) DEFAULT NULL,
  `bidang_4` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`npm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datadiri`
--

INSERT INTO `datadiri` (`npm`, `nama`, `jk`, `jurusan`, `semester`, `kelas`, `ipk`, `nohp`, `status`, `alamat`, `bidang_1`, `bidang_2`, `bidang_3`, `bidang_4`) VALUES
('43A87007120000', 'Zakiya', 'P', 'Sistem Informasi', 3, 'Reguler Pagi', '3.09', '089612398723', 'Tidak Bekerja', 'Cibitung, Bekasi', 'Jaringan', 'Pemrograman', 'Troubleshooting', 'Desain'),
('43A87007120101', 'Hariyanto Iriawan', 'L', 'Sistem Informasi', 7, 'Reguler Pagi', '3.00', '089612398787', 'Bekerja', 'Cibitung, Bekasi', 'Desain', 'Pemrograman', 'Troubleshooting', 'Desain'),
('43A87007120137', 'Kadri', 'L', 'Sistem Informasi', 3, 'Reguler Pagi', '3.73', '089612345678', 'Tidak Bekerja', 'Duren Jaya, Bekasi', 'Jaringan', 'Pemrograman', 'null', 'Desain'),
('43A87007120222', 'Daul Firman', 'L', 'Sistem Informasi', 5, 'Reguler Pagi', '3.70', '089612398723', 'Bekerja', 'Regensi, Bekasi', 'Desain', 'Pemrograman', 'Troubleshooting', 'Desain'),
('43A87007120234', 'Archi', 'P', 'Sistem Informasi', 3, 'Shift', '3.63', '089612345689', 'Tidak Bekerja', 'Kranji, Bekasi', 'Jaringan', 'Pemrograman', 'null', 'Desain'),
('43A87007120237', 'Alfred Riedl', 'L', 'Sistem Informasi', 5, 'Reguler Pagi', '3.56', '08995367834', 'Bekerja', 'Rawa Lumbu, Bekasi', 'Desain', 'Pemrograman', 'Troubleshooting', 'Desain'),
('43A87007120555', 'Fikri Ahmad', 'L', 'Manajemen Informatika', 3, 'Reguler Malam', '3.00', '089537293337', 'Bekerja', 'Rawa Lumbu, Bekasi', 'Desain', 'Pemrograman', 'Troubleshooting', 'Desain'),
('43A87007120890', 'Ferdinand Sinaga', 'L', 'Komputer Akuntansi', 3, 'Reguler Malam', '3.56', '08995367987', 'Bekerja', 'Pangkalan 12', 'Jaringan', 'Pemrograman', 'null', 'Desain'),
('43A87007121475', 'Ratna Septiani', 'P', 'Komputer Akuntansi', 5, 'Reguler Pagi', '3.56', '087854193020', 'Bekerja', 'Gabus, Bekasi', 'null', 'Pemrograman', 'null', 'Desain'),
('43A87007130563', 'Sugeng Widodo', 'L', 'Teknik Informatika', 5, 'Reguler Pagi', '3.56', '089953678212', 'Tidak Bekerja', 'Rawa Lumbu, Bekasi', 'Jaringan', 'Pemrograman', 'null', 'Desain');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `nik` varchar(15) NOT NULL,
  `np` char(15) NOT NULL,
  `level` char(10) NOT NULL,
  `sandi` varchar(15) NOT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nik`, `np`, `level`, `sandi`) VALUES
('342', 'arman', 'admin', 'arman');

-- --------------------------------------------------------

--
-- Table structure for table `tertulis`
--

CREATE TABLE IF NOT EXISTS `tertulis` (
  `npm` varchar(14) NOT NULL,
  `nama` char(50) NOT NULL,
  `agama` int(11) NOT NULL,
  `pemrograman` int(11) NOT NULL,
  `jaringan` int(11) NOT NULL,
  `desain` int(11) NOT NULL,
  `algoritma` int(11) NOT NULL,
  `tbs` int(11) NOT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  `nilai` int(11) NOT NULL,
  KEY `fk_tertulis` (`npm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tertulis`
--

INSERT INTO `tertulis` (`npm`, `nama`, `agama`, `pemrograman`, `jaringan`, `desain`, `algoritma`, `tbs`, `catatan`, `nilai`) VALUES
('43A87007120000', 'Zakiya', 7, 7, 7, 7, 7, 6, '', 41),
('43A87007120101', 'Hariyanto Iriawan', 8, 7, 8, 7, 7, 6, '', 43),
('43A87007120137', 'Kadri', 7, 7, 8, 8, 7, 6, '', 43),
('43A87007120222', 'Daul Firman', 7, 7, 8, 7, 7, 7, '', 43),
('43A87007120237', 'Alfred Riedl', 8, 8, 8, 8, 8, 9, '', 48),
('43A87007120234', 'Archi', 8, 8, 8, 8, 8, 9, '', 48),
('43A87007120555', 'Fikri Ahmad', 8, 8, 8, 9, 9, 8, '', 48),
('43A87007120890', 'Ferdinand Sinaga', 8, 8, 8, 7, 8, 9, '', 48),
('43A87007121475', 'Ratna Septiani', 8, 9, 8, 8, 7, 7, '', 47),
('43A87007130563', 'Sugeng Widodo', 8, 9, 8, 8, 8, 8, '', 48);

-- --------------------------------------------------------

--
-- Table structure for table `wawancara`
--

CREATE TABLE IF NOT EXISTS `wawancara` (
  `npm` varchar(14) NOT NULL,
  `nama` char(50) DEFAULT NULL,
  `mengajar` int(11) DEFAULT NULL,
  `berbicara` int(11) DEFAULT NULL,
  `motivasi` int(11) DEFAULT NULL,
  `disiplin` int(11) DEFAULT NULL,
  `tj` int(11) DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  KEY `npm` (`npm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wawancara`
--

INSERT INTO `wawancara` (`npm`, `nama`, `mengajar`, `berbicara`, `motivasi`, `disiplin`, `tj`, `catatan`, `nilai`) VALUES
('43a87007120000', 'Zakiya', 3, 3, 3, 3, 3, '', 15),
('43a87007120101', 'Hariyanto Iriawan', 3, 3, 1, 3, 3, '', 13),
('43a87007120137', 'Kadri', 3, 3, 3, 3, 3, '', 15),
('43a87007120222', 'Daul Firman', 1, 1, 2, 2, 2, 'Pakaian kurang rapih.', 8),
('43a87007120234', 'Archi', 3, 3, 3, 3, 3, '', 15),
('43a87007120237', 'Alfred Riedl', 3, 3, 3, 3, 2, '', 14),
('43a87007120555', 'Fikri Ahmad', 2, 2, 2, 2, 2, 'Kurang termotivasi', 10),
('43a87007120890', 'Ferdinand Sinaga', 3, 3, 3, 3, 3, '', 15),
('43a87007130563', 'Sugeng Widodo', 3, 3, 3, 3, 3, '', 15),
('43a87007121475', 'Ratna Septiani', 3, 3, 4, 3, 3, '', 16);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tertulis`
--
ALTER TABLE `tertulis`
  ADD CONSTRAINT `fk_tertulis` FOREIGN KEY (`npm`) REFERENCES `datadiri` (`npm`);

--
-- Constraints for table `wawancara`
--
ALTER TABLE `wawancara`
  ADD CONSTRAINT `fk_wawancara` FOREIGN KEY (`npm`) REFERENCES `datadiri` (`npm`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
