-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2021 at 09:47 AM
-- Server version: 8.0.23
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbanggota`
--

CREATE TABLE `tbanggota` (
  `idanggota` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jeniskelamin` varchar(10) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `statusanggota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbanggota`
--

INSERT INTO `tbanggota` (`idanggota`, `nama`, `jeniskelamin`, `alamat`, `statusanggota`) VALUES
('AG001', 'Riki Subekti', 'Pria', 'Jl.Semangka No 3', 'Tidak Meminjam'),
('AG002', 'Aini Rahmawati', 'Wanita', 'Jl.Anggrek No 45', 'Tidak Meminjam'),
('AG003', 'Rudi Hartono', 'Pria', 'Jl.Manggis 98', 'Tidak Meminjam'),
('AG004', 'Dino Riano', 'Pria', 'Jl.Melon No 35', 'Sedang Meminjam'),
('AG005', 'Agus Wardoyo', 'Pria', 'Jl.Cempedak No 88', 'Tidak Meminjam'),
('AG006', 'Shinta Riani', 'Pria', 'JL.Jeruk No 1', 'Tidak Meminjam'),
('AG007', 'Irwan Hakim', 'Pria', 'Jl.Salak No 34', 'Tidak Meminjam'),
('AG008', 'Indah Dian', 'Pria', 'Jl.Semangka No 23', 'Tidak Meminjam'),
('AG009', 'Rina Auliah', 'Wanita', 'Jl.Merpati No 44', 'Sedang Meminjam'),
('AG010', 'Septi Putri', 'Pria', 'Jl.Beringin No 2', 'Tidak Meminjam'),
('AG011', 'Ita Kumala Sari', 'Wanita', 'Jl.Rambutan No 99', 'Tidak Meminjam'),
('AG012', 'Afdal Rohman', 'Pria', 'Jl.Anggur No 67', 'Tidak Meminjam'),
('AG013', 'Putra Sanjaya', 'Pria', 'Jl.Rajawali No 14', 'Tidak Meminjam'),
('AG014', 'Rengoku', 'Pria', 'Jl.Manggis No 41', 'Tidak Meminjam'),
('AG015', 'Johimin', 'Wanita', 'Cipocok jaya', 'Sedang Meminjam'),
('AG016', 'suparjo', 'Pria', 'jl.mantap2', 'Tidak Meminjam'),
('AG017', 'Muhlisa', 'Wanita', 'Drangon', 'Tidak Meminjam');

-- --------------------------------------------------------

--
-- Table structure for table `tbbuku`
--

CREATE TABLE `tbbuku` (
  `idbuku` varchar(5) NOT NULL,
  `judulbuku` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `pengarang` varchar(40) NOT NULL,
  `penerbit` varchar(40) NOT NULL,
  `statusbuku` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbbuku`
--

INSERT INTO `tbbuku` (`idbuku`, `judulbuku`, `kategori`, `pengarang`, `penerbit`, `statusbuku`) VALUES
('BK001', 'Belajar PHP', 'Ilmu Komputer', 'Candra', 'Media Baca', 'Tersedia'),
('BK002', 'Belajar HTML', 'Ilmu Komputer', 'Rahmat Hakim', 'Media Baca', 'Tersedia'),
('BK003', 'Kumpulan Puisi', 'Ilmu Komputer', 'Bejo', 'Media Kita', 'Tersedia'),
('BK004', 'Sejarah Islam', 'Ilmu Komputer', 'Sutejo', 'Media Kita', 'Tersedia'),
('BK005', 'Pintar CSS', 'Ilmu Komputer', 'Anton', 'Graha Buku', 'Tersedia'),
('BK006', 'Kumpulan Cerpen', 'Karya Sastra', 'Rudi', 'Media Aksara', 'Tersedia'),
('BK007', 'Keamanan Data', 'Ilmu Komputer', 'Nusron', 'Media Cipta', 'Tersedia'),
('BK008', 'Dasar-Dasar Database', 'Ilmu Komputer', 'Andi', 'Graha Media', 'Tersedia'),
('BK009', 'Kumpulan Cerpen 2.0', 'Ilmu Komputer', 'Sutejo', 'Media Cipta', 'Dipinjam'),
('BK010', 'Peradaban Islam', 'Ilmu Agama', 'Aminnudin', 'Media Baca', 'Tersedia'),
('BK013', 'ASMR', 'Karya Sastra', 'Saikoji', 'Jogja Prenier', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tbtransaksi`
--

CREATE TABLE `tbtransaksi` (
  `idtransaksi` varchar(5) NOT NULL,
  `idanggota` varchar(5) NOT NULL,
  `idbuku` varchar(5) NOT NULL,
  `tglpinjam` date NOT NULL,
  `tglkembali` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbtransaksi`
--

INSERT INTO `tbtransaksi` (`idtransaksi`, `idanggota`, `idbuku`, `tglpinjam`, `tglkembali`) VALUES
('TR001', 'AG002', 'BK002', '2016-11-03', '2016-11-01'),
('TR002', 'AG003', 'BK003', '2016-11-04', '2016-11-01'),
('TR003', 'AG001', 'BK001', '2016-11-04', '2016-10-01'),
('TR004', 'AG003', 'BK003', '2016-11-04', '2016-11-01'),
('TR005', 'AG006', 'BK004', '2016-11-04', '2016-11-01'),
('TR006', 'AG003', 'BK005', '2016-11-05', '2016-11-01'),
('TR007', 'AG008', 'BK013', '2016-11-05', '2016-11-01'),
('TR008', 'AG010', 'BK003', '2017-01-22', '2017-01-01'),
('TR010', 'AG013', 'BK007', '2020-11-09', '2020-11-10'),
('TR011', 'AG005', 'BK009', '2020-11-09', '2020-11-28'),
('TR012', 'AG003', 'BK010', '2020-11-08', '2020-11-11'),
('TR013', 'AG005', 'BK666', '2020-11-10', '2020-11-10'),
('TR014', 'AG005', 'BK02', '2020-11-10', '2020-11-10'),
('TR015', 'AG017', 'BK010', '2021-01-08', '2021-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `iduser` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`iduser`, `nama`, `username`, `password`, `email`) VALUES
('US001', 'Derry Derajat', 'derryderajat', '$2y$10$B5owgR6Meye3UoZ9Lahf.unyYRzgC7uWPXLM60end1kCGq4RDwWBW', 'derrycchi@gmail.com'),
('US002', 'admin', 'admin', '$2y$10$3YunUspI3WmDe.ZYZFIF4.pezXasJSTgH8UfoB8SjnuTG52eltvXS', 'adminadmin@admin.com'),
('US003', 'Aku Hebat', 'hebat', '$2y$10$h3MmA.RceekTZwkPDq9oWetI04ROaoCkpiZ973BU3d7dVO28OG5cK', 'hebat@gmail.com'),
('US004', 'johimin', 'johimin', '$2y$10$YttDsbcgENQQfeCd0MGQrOE2HEcqlq0jVXQYQ1y7Myd3iZmJEUiiq', 'johimin@gmail.com'),
('US005', 'bujang', 'bujang', '$2y$10$80jsYjbOA2V9L8erMDxqGe6N7b9ZnV6rLfGLXQgPcgCwmBUecMUqS', 'bujang@gmail.com'),
('US006', 'Ahamed', 'ahmed', '$2y$10$AMd5wSU3Ttryvo1XHHBwJep.pRg3yMM53puO10OM238IV3WMfkIvm', 'ahmed@gmail.com'),
('US007', 'derry derajat', 'bagong', '$2y$10$geI17FN7JTgHn4AdB.lhvOT2.s0Srik7x4VlAe91LqIg8ehLhp1G6', 'bagong@gmail.com'),
('US008', 'Bahren', 'bahren', '$2y$10$l0v7q6BmAWuQGQ57a.vskevfxJkzg/dMubsr1tRdX1ODoHMtsHPVi', 'bahren@gmail.com'),
('US009', 'tomingse', 'tomingse', '$2y$10$tZAIDTz5lPIbGGBx0ocHoeLQDpsqHgc5pB9umhqsuOU9p6JkdoW.a', 'tomingse@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbanggota`
--
ALTER TABLE `tbanggota`
  ADD PRIMARY KEY (`idanggota`);

--
-- Indexes for table `tbbuku`
--
ALTER TABLE `tbbuku`
  ADD PRIMARY KEY (`idbuku`);

--
-- Indexes for table `tbtransaksi`
--
ALTER TABLE `tbtransaksi`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`iduser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
