-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02 Nov 2019 pada 11.59
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_pencernaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_daftar`
--

CREATE TABLE IF NOT EXISTS `t_daftar` (
  `kode_daftar` int(12) NOT NULL AUTO_INCREMENT,
  `nm_pasien` varchar(50) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `usia` varchar(20) NOT NULL,
  `kd_daftar` varchar(11) NOT NULL,
  PRIMARY KEY (`kode_daftar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `t_daftar`
--

INSERT INTO `t_daftar` (`kode_daftar`, `nm_pasien`, `jk`, `usia`, `kd_daftar`) VALUES
(1, 'sarah', 'Perempuan', '22', 'K1'),
(2, 'adi', 'Laki-laki', '18', 'K2'),
(3, 'wahyui', 'Laki-laki', '12', 'K3'),
(4, 'a', 'Laki-laki', '18', 'K4'),
(5, 'hr', 'Laki-laki', '664', 'K5'),
(6, 'ijal', 'Perempuan', '19', 'K6'),
(7, 'addada', 'Perempuan', '22', 'K7'),
(8, 'wrgrsg', 'Perempuan', '13', 'K8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_diagnosa`
--

CREATE TABLE IF NOT EXISTS `t_diagnosa` (
  `kd_diagnosa` int(11) NOT NULL AUTO_INCREMENT,
  `mb` float NOT NULL,
  `md` float NOT NULL,
  `cf_penyakit` float NOT NULL,
  `cf_gejala` float NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  PRIMARY KEY (`kd_diagnosa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `t_diagnosa`
--

INSERT INTO `t_diagnosa` (`kd_diagnosa`, `mb`, `md`, `cf_penyakit`, `cf_gejala`, `kode_penyakit`, `kode_gejala`) VALUES
(1, 0.08, 0.3, 0.5, 0, 1, 1),
(2, 0.6, 0.1, 0.5, 0, 1, 2),
(3, 0.6, 0.1, 0.5, 0, 1, 3),
(4, 0.5, 0.1, 0.4, 0, 1, 4),
(5, 0.5, 0.2, 0.3, 0, 1, 5),
(6, 0.5, 0.6, -0.1, 0, 2, 2),
(7, 0.7, 0.5, 0.2, 0, 2, 3),
(8, 0.6, 0, 0.6, 0, 2, 5),
(10, 0.6, 0.03, 0.57, 0, 3, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_gejala`
--

CREATE TABLE IF NOT EXISTS `t_gejala` (
  `kode_gejala` int(11) NOT NULL AUTO_INCREMENT,
  `nm_gejala` varchar(50) NOT NULL,
  `kd_gejala` varchar(11) NOT NULL,
  PRIMARY KEY (`kode_gejala`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `t_gejala`
--

INSERT INTO `t_gejala` (`kode_gejala`, `nm_gejala`, `kd_gejala`) VALUES
(1, 'perut atau dada terasa perih', 'G1'),
(2, 'kembung', 'G2'),
(3, 'sendawa', 'G3'),
(4, 'sering buang gas (kentut)', 'G4'),
(5, 'mual', 'G5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_hasil`
--

CREATE TABLE IF NOT EXISTS `t_hasil` (
  `kd_hasil` int(12) NOT NULL AUTO_INCREMENT,
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `nilai_cf` varchar(16) NOT NULL,
  `tanggal` datetime NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `kd_daftar` varchar(11) NOT NULL,
  PRIMARY KEY (`kd_hasil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `t_hasil`
--

INSERT INTO `t_hasil` (`kd_hasil`, `penyakit`, `gejala`, `nilai_cf`, `tanggal`, `hasil_id`, `kd_daftar`) VALUES
(1, 'a:3:{i:1;s:6:"0.7992";i:2;s:6:"0.3350";i:3;s:6:"0.1000";}', 'a:5:{i:1;s:2:"10";i:2;s:1:"5";i:3;s:1:"5";i:4;s:1:"4";i:5;s:1:"5";}', '0.7992', '2019-08-10 11:25:51', 1, 'K1'),
(2, 'a:3:{i:1;s:6:"0.8401";i:2;s:6:"0.3770";i:3;s:6:"0.1000";}', 'a:5:{i:1;s:1:"2";i:2;s:1:"9";i:3;s:2:"10";i:4;s:1:"6";i:5;s:1:"5";}', '0.8401', '2019-09-04 09:26:13', 1, 'K2'),
(3, 'a:3:{i:1;s:6:"0.8054";i:2;s:6:"0.5676";i:3;s:6:"0.1800";}', 'a:5:{i:1;s:1:"4";i:2;s:1:"6";i:3;s:1:"6";i:4;s:1:"8";i:5;s:1:"9";}', '0.8054', '2019-09-04 09:28:48', 1, 'K3'),
(4, 'a:3:{i:1;s:6:"0.7139";i:2;s:6:"0.4050";i:3;s:6:"0.1000";}', 'a:5:{i:1;s:1:"5";i:2;s:1:"3";i:3;s:1:"9";i:4;s:1:"1";i:5;s:1:"5";}', '0.7139', '2019-09-28 16:00:10', 1, 'K5'),
(5, 'a:3:{i:1;s:6:"0.6029";i:2;s:6:"0.1552";i:3;s:6:"0.0400";}', 'a:5:{i:1;s:1:"5";i:2;s:1:"4";i:3;s:1:"4";i:4;s:1:"3";i:5;s:1:"2";}', '0.6029', '2019-09-28 16:42:29', 1, 'K5'),
(6, 'a:1:{i:1;s:6:"0.5600";}', 'a:2:{i:1;s:1:"4";i:2;s:1:"9";}', '0.5600', '2019-09-28 16:42:52', 1, 'K6'),
(7, 'a:3:{i:2;s:6:"0.1800";i:1;s:6:"0.0900";i:3;s:6:"0.0600";}', 'a:1:{i:5;s:1:"3";}', '0.1800', '2019-09-28 16:46:12', 2, 'K7'),
(8, 'a:0:{}', 'a:0:{}', '', '2019-09-28 16:48:08', 0, 'K7'),
(9, 'a:0:{}', 'a:0:{}', '', '2019-09-28 16:48:30', 0, 'K8'),
(10, 'a:1:{i:1;s:6:"0.5801";}', 'a:3:{i:1;s:1:"7";i:2;s:1:"3";i:4;s:1:"6";}', '0.5801', '2019-09-28 16:50:02', 1, 'K8'),
(11, 'a:2:{i:1;s:6:"0.3952";i:2;s:6:"0.0600";}', 'a:3:{i:2;s:1:"2";i:3;s:1:"4";i:4;s:1:"4";}', '0.3952', '2019-09-28 18:36:14', 1, 'K8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kondisi`
--

CREATE TABLE IF NOT EXISTS `t_kondisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kondisi` varchar(50) NOT NULL,
  `ket` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `t_kondisi`
--

INSERT INTO `t_kondisi` (`id`, `kondisi`, `ket`) VALUES
(1, 'Kurang Yakin', ''),
(2, 'Kurang Yakin', ''),
(3, 'Kurang Yakin', ''),
(4, 'Sedikit Yakin', ''),
(5, 'Sedikit Yakin', ''),
(6, 'Cukup Yakin', ''),
(7, 'Cukup Yakin', ''),
(8, 'Yakin', ''),
(9, 'Yakin', ''),
(10, 'Sangat Yakin', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_login`
--

CREATE TABLE IF NOT EXISTS `t_login` (
  `kd_login` int(12) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jk` enum('laki-laki','Perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `nm_pengguna` varchar(50) NOT NULL,
  `katasandi` varchar(50) NOT NULL,
  `status` enum('pengguna','admin') NOT NULL,
  `jammasuk` datetime NOT NULL,
  `jamkeluar` datetime NOT NULL,
  `bataslogin` int(2) NOT NULL,
  `blokir` enum('N','Y') NOT NULL,
  PRIMARY KEY (`kd_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `t_login`
--

INSERT INTO `t_login` (`kd_login`, `nama`, `email`, `jk`, `alamat`, `nm_pengguna`, `katasandi`, `status`, `jammasuk`, `jamkeluar`, `bataslogin`, `blokir`) VALUES
(1, 'admin', 'admin@gmail.com', 'laki-laki', 'jl.khatib dayan rt5 rw5 ', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '2019-10-27 19:48:12', '2019-10-27 20:16:41', 6, 'N'),
(7, 'Sarah', 'Sarahmai1033@gmail.com', 'Perempuan', '', 'Sarah', '069e0fcf8e5ecd906a8347983c6df111', 'pengguna', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_penyakit`
--

CREATE TABLE IF NOT EXISTS `t_penyakit` (
  `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT,
  `nm_penyakit` varchar(50) NOT NULL,
  `penyebab` text NOT NULL,
  `pencegahan` text NOT NULL,
  `penanganan` text NOT NULL,
  `kd_penyakit` varchar(11) NOT NULL,
  PRIMARY KEY (`kode_penyakit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `t_penyakit`
--

INSERT INTO `t_penyakit` (`kode_penyakit`, `nm_penyakit`, `penyebab`, `pencegahan`, `penanganan`, `kd_penyakit`) VALUES
(1, 'Functional Dyspepsia', ' pola makan tidak teratur', ' makan teratur', ' kerumah sakit', 'P1'),
(2, 'Gastric Ulcer', 'gaya hidup tidak sehat', ' terapkan pola hidup sehat', ' ke rumah sakit', 'P2'),
(3, 'Hernia Inguinal', ' pola makan', ' perbaki pola makan', ' kerumah sakit', 'P3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_tentangpenyakit`
--

CREATE TABLE IF NOT EXISTS `t_tentangpenyakit` (
  `kd_tentangpenyakit` int(11) NOT NULL AUTO_INCREMENT,
  `nm_tentangpenyakit` varchar(50) NOT NULL,
  `det_tentangpenyakit` varchar(15000) NOT NULL,
  `srn_tentangpenyakit` varchar(15000) NOT NULL,
  `gambar` text NOT NULL,
  PRIMARY KEY (`kd_tentangpenyakit`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data untuk tabel `t_tentangpenyakit`
--

INSERT INTO `t_tentangpenyakit` (`kd_tentangpenyakit`, `nm_tentangpenyakit`, `det_tentangpenyakit`, `srn_tentangpenyakit`, `gambar`) VALUES
(33, 'Fungtional Dyspepsia', '<p>aqaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaa</p>', '<p>aaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaa</p>', '1.PNG'),
(34, 'Hepatitis A', '<p>aaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaa</p>', '<p>aaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaa</p>', '2079f9f8adc4070a02c4004eac9e6093_0.png'),
(35, 'Hepatitis C', '<p>&nbsp;move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</p>', '<p>&nbsp;move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; move_uploaded_file($lokasigambar,"../gambar/$namagambar");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</p>', '2079f9f8adc4070a02c4004eac9e6093_0.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
