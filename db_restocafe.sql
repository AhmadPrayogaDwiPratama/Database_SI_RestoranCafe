-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 01:57 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restocafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_coffeeshop`
--

CREATE TABLE `tb_coffeeshop` (
  `id_coffeeshop` varchar(5) NOT NULL,
  `nama_coffeeshop` varchar(15) NOT NULL,
  `alamat_coffeeshop` varchar(20) NOT NULL,
  `nomor_telepon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id_karyawan` varchar(5) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `nama_karyawan` varchar(20) NOT NULL,
  `nomor_telepon` varchar(12) NOT NULL,
  `alamat_pegawai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteriacoffeeshop`
--

CREATE TABLE `tb_kriteriacoffeeshop` (
  `id_KriteriaCoffeeshop` varchar(10) NOT NULL,
  `nama_KriteriaCoffeeshop` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteriarestoran`
--

CREATE TABLE `tb_kriteriarestoran` (
  `id_KriteriaRestoran` varchar(10) NOT NULL,
  `Nama_KriteriaRestoran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_makanan`
--

CREATE TABLE `tb_makanan` (
  `id_makanan` varchar(5) NOT NULL,
  `nama_makanan` varchar(15) NOT NULL,
  `deskripsi_makanan` text NOT NULL,
  `harga_makanan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_minuman`
--

CREATE TABLE `tb_minuman` (
  `id_minuman` varchar(5) NOT NULL,
  `nama_minuman` varchar(15) NOT NULL,
  `deskripsi_minuman` text NOT NULL,
  `harga_minuman` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembeli`
--

CREATE TABLE `tb_pembeli` (
  `id_pembeli` varchar(10) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `nama_pembeli` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan_coffeshop`
--

CREATE TABLE `tb_pemesanan_coffeshop` (
  `id_pemesanan_coffeeshop` varchar(10) NOT NULL,
  `id_coffeeshop` varchar(5) NOT NULL,
  `id_minuman` varchar(10) NOT NULL,
  `id_pembeli` varchar(10) NOT NULL,
  `jumlah_minuman` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan_restoran`
--

CREATE TABLE `tb_pemesanan_restoran` (
  `id_pemesanan_restoran` varchar(10) NOT NULL,
  `id_restoran` varchar(5) NOT NULL,
  `id_makanan` varchar(10) NOT NULL,
  `id_pembeli` varchar(10) NOT NULL,
  `jumlah_makanan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penilaian_coffeeshop`
--

CREATE TABLE `tb_penilaian_coffeeshop` (
  `id_penilaian_coffeeshop` varchar(10) NOT NULL,
  `id_coffeeshop` varchar(5) NOT NULL,
  `id_KriteriaCoffeeshop` varchar(10) NOT NULL,
  `id_pembeli` varchar(10) NOT NULL,
  `nilai_penilaian` decimal(2,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penilaian_restoran`
--

CREATE TABLE `tb_penilaian_restoran` (
  `id_penilaian_restoran` varchar(10) NOT NULL,
  `id_restoran` varchar(5) NOT NULL,
  `id_KriteriaRestoran` varchar(10) NOT NULL,
  `id_pembeli` varchar(10) NOT NULL,
  `nilai_penilaian` decimal(2,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_restoran`
--

CREATE TABLE `tb_restoran` (
  `id_restoran` varchar(5) NOT NULL,
  `nama_restoran` varchar(15) NOT NULL,
  `alamat_restoran` varchar(20) NOT NULL,
  `nomor_telepon` varchar(12) NOT NULL,
  `deskripsi_restoran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(10) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `email_user` varchar(20) NOT NULL,
  `katasandi_user` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_coffeeshop`
--
ALTER TABLE `tb_coffeeshop`
  ADD PRIMARY KEY (`id_coffeeshop`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_kriteriacoffeeshop`
--
ALTER TABLE `tb_kriteriacoffeeshop`
  ADD PRIMARY KEY (`id_KriteriaCoffeeshop`);

--
-- Indexes for table `tb_kriteriarestoran`
--
ALTER TABLE `tb_kriteriarestoran`
  ADD PRIMARY KEY (`id_KriteriaRestoran`);

--
-- Indexes for table `tb_makanan`
--
ALTER TABLE `tb_makanan`
  ADD PRIMARY KEY (`id_makanan`);

--
-- Indexes for table `tb_minuman`
--
ALTER TABLE `tb_minuman`
  ADD PRIMARY KEY (`id_minuman`);

--
-- Indexes for table `tb_pembeli`
--
ALTER TABLE `tb_pembeli`
  ADD PRIMARY KEY (`id_pembeli`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_pemesanan_coffeshop`
--
ALTER TABLE `tb_pemesanan_coffeshop`
  ADD PRIMARY KEY (`id_pemesanan_coffeeshop`),
  ADD KEY `id_pelanggan` (`id_pembeli`),
  ADD KEY `id_coffeeshop` (`id_coffeeshop`,`id_minuman`),
  ADD KEY `id_minuman` (`id_minuman`);

--
-- Indexes for table `tb_pemesanan_restoran`
--
ALTER TABLE `tb_pemesanan_restoran`
  ADD PRIMARY KEY (`id_pemesanan_restoran`),
  ADD KEY `id_restoran` (`id_restoran`),
  ADD KEY `id_makanan` (`id_makanan`),
  ADD KEY `id_user` (`id_pembeli`);

--
-- Indexes for table `tb_penilaian_coffeeshop`
--
ALTER TABLE `tb_penilaian_coffeeshop`
  ADD PRIMARY KEY (`id_penilaian_coffeeshop`),
  ADD KEY `id_coffeeshop` (`id_coffeeshop`),
  ADD KEY `id_kriteria_coffeeshop` (`id_KriteriaCoffeeshop`),
  ADD KEY `id_pelanggan` (`id_pembeli`);

--
-- Indexes for table `tb_penilaian_restoran`
--
ALTER TABLE `tb_penilaian_restoran`
  ADD PRIMARY KEY (`id_penilaian_restoran`),
  ADD KEY `id_restoran` (`id_restoran`),
  ADD KEY `id_kriteria_restoran` (`id_KriteriaRestoran`),
  ADD KEY `id_pelanggan` (`id_pembeli`);

--
-- Indexes for table `tb_restoran`
--
ALTER TABLE `tb_restoran`
  ADD PRIMARY KEY (`id_restoran`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD CONSTRAINT `tb_karyawan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_makanan`
--
ALTER TABLE `tb_makanan`
  ADD CONSTRAINT `tb_makanan_ibfk_1` FOREIGN KEY (`id_makanan`) REFERENCES `tb_pemesanan_restoran` (`id_makanan`);

--
-- Constraints for table `tb_pembeli`
--
ALTER TABLE `tb_pembeli`
  ADD CONSTRAINT `tb_pembeli_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`),
  ADD CONSTRAINT `tb_pembeli_ibfk_2` FOREIGN KEY (`id_pembeli`) REFERENCES `tb_pemesanan_restoran` (`id_pembeli`);

--
-- Constraints for table `tb_pemesanan_coffeshop`
--
ALTER TABLE `tb_pemesanan_coffeshop`
  ADD CONSTRAINT `tb_pemesanan_coffeshop_ibfk_1` FOREIGN KEY (`id_pembeli`) REFERENCES `tb_pembeli` (`id_pembeli`),
  ADD CONSTRAINT `tb_pemesanan_coffeshop_ibfk_2` FOREIGN KEY (`id_minuman`) REFERENCES `tb_minuman` (`id_minuman`),
  ADD CONSTRAINT `tb_pemesanan_coffeshop_ibfk_3` FOREIGN KEY (`id_coffeeshop`) REFERENCES `tb_coffeeshop` (`id_coffeeshop`);

--
-- Constraints for table `tb_pemesanan_restoran`
--
ALTER TABLE `tb_pemesanan_restoran`
  ADD CONSTRAINT `tb_pemesanan_restoran_ibfk_1` FOREIGN KEY (`id_restoran`) REFERENCES `tb_restoran` (`id_restoran`);

--
-- Constraints for table `tb_penilaian_coffeeshop`
--
ALTER TABLE `tb_penilaian_coffeeshop`
  ADD CONSTRAINT `tb_penilaian_coffeeshop_ibfk_1` FOREIGN KEY (`id_coffeeshop`) REFERENCES `tb_coffeeshop` (`id_coffeeshop`),
  ADD CONSTRAINT `tb_penilaian_coffeeshop_ibfk_2` FOREIGN KEY (`id_KriteriaCoffeeshop`) REFERENCES `tb_kriteriacoffeeshop` (`id_KriteriaCoffeeshop`),
  ADD CONSTRAINT `tb_penilaian_coffeeshop_ibfk_3` FOREIGN KEY (`id_pembeli`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_penilaian_restoran`
--
ALTER TABLE `tb_penilaian_restoran`
  ADD CONSTRAINT `tb_penilaian_restoran_ibfk_1` FOREIGN KEY (`id_restoran`) REFERENCES `tb_restoran` (`id_restoran`),
  ADD CONSTRAINT `tb_penilaian_restoran_ibfk_2` FOREIGN KEY (`id_KriteriaRestoran`) REFERENCES `tb_kriteriarestoran` (`id_KriteriaRestoran`),
  ADD CONSTRAINT `tb_penilaian_restoran_ibfk_3` FOREIGN KEY (`id_pembeli`) REFERENCES `tb_user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
