-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2024 pada 09.36
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris_barang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `jumlah` varchar(5) NOT NULL,
  `keadaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama`, `kategori`, `jumlah`, `keadaan`) VALUES
('INV/001', 'KURSI', 'Peralatan Kantor', '18', 'BAIK SEKALI'),
('INV/002', 'MEJA', 'Peralatan Kantor', '20', 'BAIK SEKALI'),
('INV/003', 'LEMARI ARSIP', 'Peralatan Kantor', '5', 'BAIK SEKALI'),
('INV/004', 'TELEPON', 'Peralatan Komunikasi', '10', 'BAIK SEKALI'),
('INV/005', 'FAKSIMILI', 'Peralatan Komunikasi', '2', 'BAIK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `nama_kategori` varchar(50) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`nama_kategori`, `deskripsi`) VALUES
('Peralatan Komunikasi', 'Keperluan Untuk Komuniskasi Dikantor'),
('Peralatan Makan', 'Untuk Makan Karyawan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` varchar(20) NOT NULL,
  `tgl_transaksi` varchar(30) NOT NULL,
  `nama_peminjam` varchar(50) NOT NULL,
  `jenis_transaksi` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `tgl_transaksi`, `nama_peminjam`, `jenis_transaksi`, `nama_barang`, `jumlah`) VALUES
('A001', '1 JANUARI 2024', 'CABANG BANJARBARU', 'PEMINJAMAN', 'KURSI', '2'),
('A002', '7 Januari 2024', 'CABANG KOTA BARU', 'PEMINJAMAN', 'MEJA', '10'),
('A002', '7 Januari 2024', 'CABANG KOTA BARU', 'PENGEMBALIAN', 'MEJA', '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Muhamad Sahnuri', 'sahnuri', 'sahnuri', 'Admin'),
(2, 'Bapak Manajer', 'manajer', 'manajer', 'Manajer');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
