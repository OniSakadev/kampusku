-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 08:53 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_datasiswa`
--

CREATE TABLE `tbl_datasiswa` (
  `id_datasiswa` int(11) NOT NULL,
  `id_kelas` varchar(60) NOT NULL,
  `nis` varchar(60) NOT NULL,
  `id_jurusan` varchar(60) NOT NULL,
  `tgl_tambah` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_datasiswa`
--

INSERT INTO `tbl_datasiswa` (`id_datasiswa`, `id_kelas`, `nis`, `id_jurusan`, `tgl_tambah`) VALUES
(1, 'X2021', '839129831', 'RPL', '2021-04-20 10:14:45'),
(2, 'X2021', '886595444', 'MM', '2021-04-20 10:14:45'),
(3, 'X2021', '667593943', 'RPL', '2021-04-20 10:14:45'),
(4, 'X2021', '443453554', 'MM', '2021-04-20 10:14:45'),
(5, 'X2021', '441211233', 'RPL', '2021-04-20 10:14:45'),
(6, 'XI2019', '786767556', 'MM', '2021-04-20 10:14:45'),
(7, 'XI2019', '566566544', 'RPL', '2021-04-20 10:14:45'),
(8, 'XI2019', '565334579', 'MM', '2021-04-20 10:14:45'),
(9, 'XI2019', '990878777', 'MM', '2021-04-20 10:14:45'),
(10, 'XI2019', '565634547', 'RPL', '2021-04-20 10:14:45'),
(11, 'XII2018', '887788956', 'MM', '2021-04-20 10:14:45'),
(12, 'XII2018', '893348458', 'RPL', '2021-04-20 10:14:45'),
(13, 'XII2018', '342334356', 'MM', '2021-04-20 10:14:45'),
(14, 'XII2018', '666567544', 'RPL', '2021-04-20 10:14:45'),
(15, 'XII2018', '342343435', 'MM', '2021-04-20 10:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id_guru` varchar(60) NOT NULL,
  `nama_guru` text DEFAULT NULL,
  `nip` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id_guru`, `nama_guru`, `nip`) VALUES
('DG-0001', 'Irwansyah Saputra. S.Kom.', '89234982739'),
('DG-0002', 'Surya Herdiansyah. S.Kom.', '28348929334'),
('DG-0003', 'Wahyudi. S.T.', '33232321122'),
('DG-0004', 'Kalingga Putra. S.Kom.', '28349293488'),
('DG-0005', 'Reni Setiansyah. S.Kom.', '23423423434');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id_jurusan` varchar(60) NOT NULL,
  `jurusan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jurusan`, `jurusan`) VALUES
('MM', 'MultiMedia'),
('RPL', 'Rekayasa Perangkat Lunak');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` varchar(60) NOT NULL,
  `kelas` text DEFAULT NULL,
  `id_guru` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `kelas`, `id_guru`) VALUES
('X2021', 'Kelas X Angkatan 2021/2022', 'DG-0001'),
('XI2019', 'Kelas XI Angkatan 2019/2020', 'DG-0005'),
('XII2018', 'Kelas XII Angkatan 2018/2019', 'DG-0003');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` varchar(60) NOT NULL,
  `nama_siswa` text DEFAULT NULL,
  `jenis_kelamin` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_telp` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `tgl_terdaftar` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `nama_siswa`, `jenis_kelamin`, `alamat`, `no_telp`, `email`, `tgl_terdaftar`) VALUES
('342334356', 'Wawan Handoyo', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxx', 'wawan@gmail.com', '2021-04-20 07:20:40'),
('342343435', 'Putra Aryanto', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxx', 'putra@gmail.com', '2021-04-20 07:20:40'),
('441211233', 'Lukman', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxx', 'lookman@gmail.com', '2021-04-20 07:20:40'),
('443453554', 'Hendi Afrandi', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxx', 'hendi@gmail.com', '2021-04-20 07:20:40'),
('565334579', 'Suci Pudjiastuti', 'Perempuang', 'Cikarang, Bekasi', '081xxxxxxxx', 'suci@gmail.com', '2021-04-20 07:20:40'),
('565634547', 'Lita Bianka', 'Perempuan', 'Cikarang, Bekasi', '081xxxxxxxx', 'lita@gmail.com', '2021-04-20 07:20:40'),
('566566544', 'Ghina Syifa', 'Perempuang', 'Babatan, Banten', '081xxxxxxxx', 'ghina@gmail.com', '2021-04-20 07:20:40'),
('666567544', 'Wisnu Farnandi', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxx', 'wisnu@gmail.com', '2021-04-20 07:20:40'),
('667593943', 'Setya Budi Rahman', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxx', 'setya@gmail.com', '2021-04-20 07:20:40'),
('786767556', 'Rendra Adijaya', 'Laki-laki', 'Cibitung, Bekasi', '081xxxxxxxx', 'rendra@gmail.com', '2021-04-20 07:20:40'),
('839129831', 'Rendi Afriansyah', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxx', 'rendi@gmail.com', '2021-04-20 07:20:40'),
('886595444', 'Winda Ayuningtias', 'Perempuang', 'Cikarang, Bogor', '081xxxxxxxx', 'winda@gmail.com', '2021-04-20 07:20:40'),
('887788956', 'Wahyu Saputra', 'Laki-laki', 'Pandenglang, Banten', '081xxxxxxxx', 'wahyu@gmail.com', '2021-04-20 07:20:40'),
('893348458', 'Sufyan Iantara', 'Laki-laki', 'Ciracas, Jakarta', '081xxxxxxxx', 'sufyan@gmail.com', '2021-04-20 07:20:40'),
('990878777', 'Wayana Irham', 'Laki-laki', 'Balumbung, Bali', '081xxxxxxxx', 'wayan@gmail.com', '2021-04-20 07:20:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_datasiswa`
--
ALTER TABLE `tbl_datasiswa`
  ADD PRIMARY KEY (`id_datasiswa`,`id_kelas`,`nis`,`id_jurusan`),
  ADD KEY `fk_jur2datasiswa` (`id_jurusan`),
  ADD KEY `fk_kls2datasiswa` (`id_kelas`),
  ADD KEY `fk_ssw2datasiswa` (`nis`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`,`id_guru`),
  ADD KEY `fk_gr2kelas` (`id_guru`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_datasiswa`
--
ALTER TABLE `tbl_datasiswa`
  MODIFY `id_datasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_datasiswa`
--
ALTER TABLE `tbl_datasiswa`
  ADD CONSTRAINT `fk_jur2datasiswa` FOREIGN KEY (`id_jurusan`) REFERENCES `tbl_jurusan` (`id_jurusan`),
  ADD CONSTRAINT `fk_kls2datasiswa` FOREIGN KEY (`id_kelas`) REFERENCES `tbl_kelas` (`id_kelas`),
  ADD CONSTRAINT `fk_ssw2datasiswa` FOREIGN KEY (`nis`) REFERENCES `tbl_siswa` (`nis`);

--
-- Constraints for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD CONSTRAINT `fk_gr2kelas` FOREIGN KEY (`id_guru`) REFERENCES `tbl_guru` (`id_guru`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
