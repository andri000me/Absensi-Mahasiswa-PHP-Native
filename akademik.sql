-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2019 at 11:34 AM
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
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absen` int(11) NOT NULL,
  `jadwal` date NOT NULL,
  `keterangan` enum('Hadir','Sakit','Izin','Absen') NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `npm` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absen`, `jadwal`, `keterangan`, `id_kelas`, `npm`) VALUES
(163, '2019-06-30', 'Absen', '001', '201643502124'),
(164, '2019-06-30', 'Hadir', '001', '201643502125'),
(165, '2019-06-30', 'Hadir', '001', '201643502127'),
(166, '2019-06-30', 'Hadir', '001', '201643502130'),
(167, '2019-06-30', 'Hadir', '001', '201643502131'),
(168, '2019-06-30', 'Hadir', '001', '201643502132'),
(169, '2019-06-30', 'Hadir', '001', '201643502133'),
(170, '2019-06-30', 'Hadir', '002', '201643502218'),
(171, '2019-06-30', 'Hadir', '002', '201643502220'),
(172, '2019-06-30', 'Hadir', '002', '201643502224'),
(173, '2019-06-30', 'Hadir', '002', '201643502227'),
(174, '2019-06-30', 'Hadir', '002', '201643502228'),
(175, '2019-06-30', 'Hadir', '002', '201643502229'),
(176, '2019-06-30', 'Hadir', '002', '201643502230'),
(177, '2019-06-30', 'Hadir', '002', '201643502232'),
(178, '2019-06-30', 'Hadir', '002', '201643502235'),
(179, '2019-06-30', 'Hadir', '002', '201643502239'),
(180, '2019-06-30', 'Hadir', '002', '201643502250'),
(181, '2019-06-30', 'Hadir', '002', '201643502252'),
(182, '2019-06-30', 'Hadir', '002', '201643502275'),
(183, '2019-06-30', 'Hadir', '002', '201643502277'),
(184, '2019-06-30', 'Hadir', '002', '201643502278'),
(185, '2019-06-30', 'Hadir', '002', '201643502285'),
(186, '2019-06-30', 'Hadir', '002', '201643502294'),
(187, '2019-06-30', 'Hadir', '002', '201643502296'),
(188, '2019-06-30', 'Hadir', '002', '201643502297'),
(189, '2019-06-30', 'Hadir', '002', '201643502301'),
(190, '2019-06-30', 'Hadir', '002', '201643502302'),
(191, '2019-07-01', 'Hadir', '002', '201643502218'),
(192, '2019-07-01', 'Hadir', '002', '201643502220'),
(193, '2019-07-01', 'Hadir', '002', '201643502224'),
(194, '2019-07-01', 'Hadir', '002', '201643502227'),
(195, '2019-07-01', 'Hadir', '002', '201643502228'),
(196, '2019-07-01', 'Hadir', '002', '201643502229'),
(197, '2019-07-01', 'Hadir', '002', '201643502230'),
(198, '2019-07-01', 'Absen', '002', '201643502232'),
(199, '2019-07-01', 'Hadir', '002', '201643502235'),
(200, '2019-07-01', 'Hadir', '002', '201643502239'),
(201, '2019-07-01', 'Hadir', '002', '201643502250'),
(202, '2019-07-01', 'Hadir', '002', '201643502252'),
(203, '2019-07-01', 'Hadir', '002', '201643502275'),
(204, '2019-07-01', 'Hadir', '002', '201643502277'),
(205, '2019-07-01', 'Hadir', '002', '201643502278'),
(206, '2019-07-01', 'Hadir', '002', '201643502285'),
(207, '2019-07-01', 'Hadir', '002', '201643502294'),
(208, '2019-07-01', 'Hadir', '002', '201643502296'),
(209, '2019-07-01', 'Hadir', '002', '201643502297'),
(210, '2019-07-01', 'Hadir', '002', '201643502301'),
(211, '2019-07-01', 'Hadir', '002', '201643502302');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` enum('Pria','Wanita') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `last_login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama`, `jk`, `tgl_lahir`, `email`, `password`, `no_hp`, `foto`, `status`, `last_login`) VALUES
(1, 'Sutan', 'Pria', '0000-00-00', 'sutan@gmail.com', '$2y$10$Nx44ci/AbhmvY/HPmVXu4O0vGdfZa8vWURXeRLp5omvBl2O8G7s4e', '123123123', 'sutan.jpg', 'Dosen', '2019-07-01 16:30:14'),
(2, 'Redo', 'Pria', '0000-00-00', 'redo@gmail.com', '$2y$10$nEPv51G9xVLYXMWXWLpDHOV2R8dp53n7H5GLjQwyTVXlDUY7jLOla', '123123123', 'redo.jpg', 'Dosen', '2019-07-01 16:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `id_dosen` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `id_dosen`) VALUES
('001', 'R6A', '1'),
('002', 'R6X', '1'),
('003', 'R6X', '2'),
('004', 'R6A', '2');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` enum('Pria','Wanita') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `jk`, `tgl_lahir`, `alamat`, `id_kelas`, `foto`) VALUES
('201643502124', 'Nadila Safitra', 'Wanita', '0000-00-00', 'Jl condet', '001', 'user.jpg'),
('201643502125', 'Dwi Tama Aditya', 'Pria', '2019-06-02', 'Gedong', '001', 'user.jpg'),
('201643502127', 'Nadila Safitri', 'Wanita', '2019-06-01', 'Rancho', '001', 'user.jpg'),
('201643502130', 'Shafira Puri Haliza', 'Pria', '2019-06-03', 'Padang Mahsyar', '001', 'user.jpg'),
('201643502131', 'Eko Purnomo ', 'Pria', '2019-06-04', 'Padang Parimanan', '001', 'user.jpg'),
('201643502132', 'Mirna Miranda', 'Wanita', '2019-06-05', 'Gedong', '001', 'user.jpg'),
('201643502133', 'Alfian Prakoso', 'Wanita', '2019-06-06', 'Rancho', '001', 'user.jpg'),
('201643502218', 'Irfan Yusuf Prayugo', 'Pria', '1998-07-05', 'Jl. Raya Gedong', '002', 'irfan.jpg'),
('201643502220', 'Pradita Sinta Dewi ', 'Wanita', '2019-06-01', 'Jl. PKP\r\n', '002', 'pradita.jpg'),
('201643502224', 'Dhimas Ishlah Saputra', 'Pria', '2019-06-02', 'Cibinong', '002', 'dhimas.jpg'),
('201643502227', 'Andikha Dian Nugraha', 'Pria', '2018-02-13', 'Gg Macho', '002', 'dika.jpg'),
('201643502228', 'Moh. Irvan Nendra', 'Pria', '2019-06-03', 'Bojong', '002', 'irvan.jpg'),
('201643502229', 'Indi Muthiah', 'Wanita', '2019-06-04', 'Tanjung Barat', '002', 'indi.jpg'),
('201643502230', 'Isnaini Muthiah', 'Wanita', '2019-06-05', 'Kokas', '002', 'isna.jpg'),
('201643502232', 'Azri Akmal', 'Pria', '2019-06-12', 'Jl Munjul', '002', 'ajri.jpg'),
('201643502235', 'Moh. Rifqi Subchan', 'Pria', '2019-06-06', 'Cinere Depok', '002', 'rifqi.jpg'),
('201643502239', 'Wildan', 'Pria', '2019-06-07', 'Cileungsi', '002', 'wildan.jpg'),
('201643502250', 'Rayhan Warsito', 'Pria', '2019-06-08', 'Tambun', '002', 'tio.jpg'),
('201643502252', 'Bianco Akbar Firdhaus', 'Pria', '2019-06-09', 'Kalibata City', '002', 'bianco.jpg'),
('201643502275', 'Dita Rizky Ananda', 'Wanita', '2019-06-10', 'Depok ', '002', 'dita.jpg'),
('201643502277', 'Devi Novianti', 'Wanita', '2019-06-11', 'Depok II', '002', 'devi.jpg'),
('201643502278', 'Reyfa Refian', 'Pria', '2019-06-12', 'Depok II', '002', 'dika.jpg'),
('201643502285', 'Wanda Novianti', 'Wanita', '2019-06-13', 'Pemda MCD', '002', 'wanda.jpg'),
('201643502294', 'Mahesa Alwi Sumaja Nabila', 'Pria', '2019-06-14', 'Rawi Geni', '002', 'mahesa.jpg'),
('201643502296', 'Faris Al Fathin', 'Pria', '2019-06-15', 'Depok Skate Park', '002', 'faris.jpg'),
('201643502297', 'Linda Ramadhani', 'Wanita', '1998-06-04', 'Jl Condet', '002', 'linda.jpg'),
('201643502301', 'Ravi Zarazka Putra', 'Pria', '2019-06-16', 'Tangerang City', '002', 'ravi.jpg'),
('201643502302', 'Muhammad Syaiful Yahya', 'Pria', '2019-06-03', 'Jl Depok', '002', 'gawang.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` int(11) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `jenis_matkul` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `nama_matkul`, `jenis_matkul`, `sks`, `id_dosen`) VALUES
(1, 'Pemrograman Web 2', 'Semi Praktikum', 3, 1),
(2, 'Pemrograman Visual', 'Praktikum', 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absen`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `npm` (`npm`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
