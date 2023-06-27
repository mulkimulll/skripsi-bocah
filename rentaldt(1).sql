-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Mar 2023 pada 09.48
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentaldt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `kode_booking` varchar(255) NOT NULL,
  `id_login` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `ktp` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `lama_sewa` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `konfirmasi_pembayaran` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`id_booking`, `kode_booking`, `id_login`, `id_mobil`, `ktp`, `nama`, `alamat`, `no_tlp`, `tanggal`, `lama_sewa`, `total_harga`, `konfirmasi_pembayaran`, `tgl_input`) VALUES
(2, '1576671989', 3, 3, '231423', 'marika', 'Bekasi Ujung Harapan', '082391273127', '2019-12-20', 2, 400525, 'Pembayaran di terima', '2019-12-18'),
(3, '1642998828', 3, 5, '1283821832813', 'kiko', 'Bekasi', '089618173609', '2022-01-26', 4, 800743, 'Pembayaran di terima', '2022-01-24'),
(7, '1677832495', 8, 6, '2342342353423', 'beliau', 'tangeran', '023948239482', '2023-04-06', 1, 180176, 'Pembayaran di terima', '2023-03-03'),
(8, '1677832587', 9, 4, '2342342353423', 'beliau', 'tangeran', '023948239482', '2023-03-06', 1, 80453, 'Pembayaran di terima', '2023-03-03'),
(9, '1677832674', 9, 6, '2342342353423', 'beliau', 'tangeran', '23423432', '2024-03-05', 1, 180968, 'Pembayaran di terima', '2023-03-03'),
(10, '1677833109', 9, 1, '2342342353423', 'beliau', 'tangeran', '023948239482', '2023-04-04', 1, 150914, 'Pembayaran di terima', '2023-03-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `infoweb`
--

CREATE TABLE `infoweb` (
  `id` int(11) NOT NULL,
  `nama_rental` varchar(255) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` text,
  `email` varchar(255) DEFAULT NULL,
  `no_rek` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `infoweb`
--

INSERT INTO `infoweb` (`id`, `nama_rental`, `telp`, `alamat`, `email`, `no_rek`, `updated_at`) VALUES
(1, 'anicos.rent', '0811324635456', 'Serpong Tangerang', 'kabukipilot@gmail.com', 'BRI A/N kakiru 123123213123', '2022-01-24 04:57:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'owner', 'ngabers', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(6, 'ngab', 'parahsi', '827ccb0eea8a706c4c34a16891f84e7b', 'pengguna'),
(7, '12345', '12345', '827ccb0eea8a706c4c34a16891f84e7b', 'pengguna'),
(8, 'Reynaldi Farizqi Azzmi ', 'rey', '827ccb0eea8a706c4c34a16891f84e7b', 'pengguna'),
(9, 'poka', 'dah', '827ccb0eea8a706c4c34a16891f84e7b', 'pengguna');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `no_plat` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga` int(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `no_plat`, `merk`, `harga`, `deskripsi`, `status`, `gambar`) VALUES
(1, 'S-L', 'Damian Desmond', 150000, 'full set,wig,costume,acc', 'Tidak Tersedia', 'dmn.jpeg'),
(2, 'S-L', 'Anya Forger', 150000, 'full set,costume,acc,wig', 'Tersedia', 'anya.jpeg'),
(3, 'S-L', 'Quanxi', 80000, 'full set,costume,acc,wig', 'Tersedia', 'QX.jpg'),
(4, 'S-L', 'Young Kishibe', 80000, 'full set,costume,acc,wig', 'Tersedia', 'yk.jpg'),
(5, 'S-L', 'sucrose', 180000, 'full set,costume,acc,wig', 'Tidak Tersedia', 'scr.jpg'),
(6, 'S-L', 'Kazuha', 180000, 'full set,costume,acc,wig', 'Tersedia', 'kzh.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_booking` int(255) NOT NULL,
  `no_rekening` int(255) NOT NULL,
  `nama_rekening` varchar(255) NOT NULL,
  `nominal` int(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_booking`, `no_rekening`, `nama_rekening`, `nominal`, `tanggal`) VALUES
(3, 1, 2131241, 'kairuku', 400000, '2019-12-14'),
(4, 2, 2131241, 'rikasuku', 400525, '2019-12-18'),
(5, 3, 13213, 'Falah', 800743, '2022-01-24'),
(0, 0, 562436526, '23562', 189, '2021-12-12'),
(0, 0, 312121, 'Reynaldi Farizqi Azzmi', 181, '2023-03-04'),
(0, 0, 312121, 'Reynaldi Farizqi Azzmi ', 181, '2023-03-02'),
(0, 4, 2343242, 'beliau', 182, '2023-03-03'),
(0, 7, 2343242, 'beliau', 160, '2023-03-04'),
(0, 8, 2343242, 'beliau', 82, '2023-03-04'),
(0, 10, 2343242, 'poka', 160, '2023-04-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `kode_booking` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `denda` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
