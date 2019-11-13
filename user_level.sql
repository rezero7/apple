-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Nov 2019 pada 16.11
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_level`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_user`
--

CREATE TABLE `data_user` (
  `NIP` int(11) NOT NULL,
  `USERNAME` varchar(25) NOT NULL,
  `PASSWORD` varchar(25) NOT NULL,
  `NAMA_KARYAWAN` varchar(255) NOT NULL,
  `JABATAN_KARYAWAN` varchar(25) NOT NULL,
  `LEVEL` varchar(25) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `DIVISI` varchar(25) NOT NULL,
  `TMT` date NOT NULL,
  `JATAH_CUTI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_user`
--

INSERT INTO `data_user` (`NIP`, `USERNAME`, `PASSWORD`, `NAMA_KARYAWAN`, `JABATAN_KARYAWAN`, `LEVEL`, `EMAIL`, `DIVISI`, `TMT`, `JATAH_CUTI`) VALUES
(1, 'Manager', '123', 'Manager', 'Manager', 'Manager', 'manager@gmail.com', 'Manajemen', '2018-01-01', 12),
(2, 'Pegawai01', '123', 'Pegawai01', 'Pegawai', 'Pegawai', 'pegawai01@gmail.com', 'Manajemen', '2018-01-01', 12),
(3, 'HRD', '123', 'HRD', 'HRD', 'HRD', 'hrd@gmail.com', 'Manajemen', '0000-00-00', 12),
(4, 'Pegawai02', '123', 'Pegawai02', 'Pegawai', 'Pegawai', 'pegawai02@gmail.com', 'Manajemen', '2018-01-01', 0),
(8, 'Pegawai03', '123', 'Fredi', 'Pegawai', 'Pegawai', 'pegawai03@gmail.com', 'Manajemen', '2019-05-19', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan`
--

CREATE TABLE `pengajuan` (
  `NO` int(11) NOT NULL,
  `NIP` int(11) NOT NULL,
  `NAMA_PEGAWAI` varchar(255) NOT NULL,
  `JABATAN_PEGAWAI` varchar(255) NOT NULL,
  `JENIS_CUTI` varchar(255) NOT NULL,
  `JATAH_CUTI` int(11) NOT NULL,
  `TANGGAL_MULAI_IZIN` date NOT NULL,
  `TANGGAL_SELESAI_IZIN` date NOT NULL,
  `ALASAN` text NOT NULL,
  `STATUS` varchar(25) NOT NULL DEFAULT 'On Process'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajuan`
--

INSERT INTO `pengajuan` (`NO`, `NIP`, `NAMA_PEGAWAI`, `JABATAN_PEGAWAI`, `JENIS_CUTI`, `JATAH_CUTI`, `TANGGAL_MULAI_IZIN`, `TANGGAL_SELESAI_IZIN`, `ALASAN`, `STATUS`) VALUES
(1, 5, 'Rian Eka Pratama', 'Pegawai', 'Cuti Menikah', 12, '2019-05-24', '2019-05-26', 'Cuti Menikah', 'REJECTED'),
(2, 6, 'Darwin', 'Pegawai', 'Sakit', 12, '2019-05-18', '2019-05-20', 'Sakit', 'REJECTED'),
(3, 7, 'Rian', 'Pegawai', 'Izin lainnya', 12, '2019-05-18', '2019-05-19', 'Lainnya', 'REJECTED'),
(4, 8, 'Fredi', 'Pegawai', 'Izin lainnya', 4, '2019-05-25', '2019-05-30', 'Liburan', 'APPROVED'),
(5, 8, 'Fredi', 'Pegawai', 'Izin lainnya', 1, '2019-06-01', '2019-06-02', '', 'REJECTED'),
(6, 0, '', '', 'Sakit', 0, '2019-01-01', '2019-01-01', 'Sakit', 'REJECTED'),
(7, 0, '', '', 'Sakit', 0, '2019-01-01', '2019-01-01', 'Sakit', 'APPROVED'),
(8, 0, '', '', 'Cuti Melahirkan', 0, '2019-12-28', '2018-08-12', 'Sakit', 'APPROVED'),
(9, 0, '', '', 'Cuti Melahirkan', 0, '2019-08-07', '2019-07-08', 'Sakit', 'APPROVED'),
(10, 0, '', '', 'Cuti Melahirkan', 0, '2019-08-07', '2019-07-08', 'Sakit', 'APPROVED'),
(11, 0, '', '', 'Cuti Melahirkan', 0, '2019-07-08', '2019-08-07', 'Sakit', 'APPROVED'),
(12, 0, '', '', 'Cuti Melahirkan', 0, '2019-07-08', '2019-08-07', 'sAKIT', 'APPROVED'),
(13, 0, '', '', 'Cuti Melahirkan', 0, '2019-07-08', '2019-08-07', 'Sakit', 'APPROVED'),
(14, 2, '', '', 'Cuti Melahirkan', 0, '2019-08-07', '2019-08-07', 'Sakit', 'APPROVED'),
(15, 0, '', '', 'Cuti Melahirkan', 0, '2019-08-07', '2019-07-08', 'Sakit', 'APPROVED'),
(16, 2, 'Pegawai01', 'Pegawai', 'Cuti Melahirkan', 12, '2019-08-07', '2019-07-08', 'Sakit', 'APPROVED'),
(17, 2, 'Pegawai01', 'Pegawai', 'Cuti Melahirkan', 12, '2019-07-08', '2019-08-07', 'Sakit', 'APPROVED'),
(18, 2, 'Pegawai01', 'Pegawai', 'Cuti Melahirkan', 12, '2019-08-07', '2019-07-08', 'Sakit', 'APPROVED'),
(19, 2, 'Pegawai01', 'Pegawai', 'Cuti Melahirkan', 12, '2019-08-07', '2019-07-08', 'Sakit', 'APPROVED'),
(20, 2, 'Pegawai01', 'Pegawai', 'Cuti Melahirkan', 12, '2019-08-07', '2019-07-08', 'Sakit', 'APPROVED'),
(21, 2, 'Pegawai01', 'Pegawai', 'Cuti Melahirkan', 12, '2019-08-07', '2019-07-08', 'Sakit', 'APPROVED'),
(22, 2, 'Pegawai01', 'Pegawai', 'Sakit', 12, '2019-01-01', '2019-01-01', 'Sakit', 'APPROVED'),
(23, 2, 'Pegawai01', 'Pegawai', 'Sakit', 12, '2019-01-01', '0019-01-01', 'Sakit', 'APPROVED');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'hrd', 'hrd', '123', 'hrd'),
(2, 'pegawai', 'pegawai', '123', 'pegawai'),
(3, 'manager', 'manager', '123', 'manager');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`NO`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
