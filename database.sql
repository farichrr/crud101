-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Okt 2016 pada 07.23
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelamin`
--

CREATE TABLE `kelamin` (
  `id` int(1) NOT NULL,
  `nama` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelamin`
--

INSERT INTO `kelamin` (`id`, `nama`) VALUES
(1, 'Laki Laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id`, `nama`) VALUES
(1, 'Malang'),
(2, 'Nganjuk'),
(3, 'Blitar'),
(4, 'Tulungagung'),
(5, 'Surabaya'),
(6, 'Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `kota` int(1) NOT NULL,
  `kelamin` int(1) NOT NULL,
  `id_posisi` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `no_telp`, `kota`, `kelamin`, `id_posisi`, `status`) VALUES
('1293849128', 'Sammi', '0341999381', 4, 1, '3', 2),
('2016', 'Farich', '0341778233', 1, 1, '1', 1),
('48c8dddcb8c6a25d635e8579388ed328', 'Yuri Pratama', '081231549154', 1, 1, '4', 1),
('f80862cf912899cd564338bb0ec1ba02', 'Edi Santoso', '081234567890', 1, 1, '3', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posisi`
--

CREATE TABLE `posisi` (
  `id_posisi` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posisi`
--

INSERT INTO `posisi` (`id_posisi`, `nama`) VALUES
('1', 'IT'),
('2', 'HRD'),
('3', 'Keuangan'),
('4', 'Produk'),
('5', 'Marketing'),
('6', 'Office Boy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelamin`
--
ALTER TABLE `kelamin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `kota` (`kota`),
  ADD KEY `kelamin` (`kelamin`),
  ADD KEY `id_posisi` (`id_posisi`);

--
-- Indexes for table `posisi`
--
ALTER TABLE `posisi`
  ADD PRIMARY KEY (`id_posisi`),
  ADD KEY `id_posisi` (`id_posisi`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`kota`) REFERENCES `kota` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`id_posisi`) REFERENCES `posisi` (`id_posisi`),
  ADD CONSTRAINT `pegawai_ibfk_3` FOREIGN KEY (`kelamin`) REFERENCES `kelamin` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
