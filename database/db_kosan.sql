-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2017 at 02:21 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kosan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kostan`
--

CREATE TABLE `kostan` (
  `id` int(11) NOT NULL,
  `pemilik` varchar(20) DEFAULT NULL,
  `gambar` varchar(10) DEFAULT NULL,
  `fasilitas` varchar(50) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kostan`
--

INSERT INTO `kostan` (`id`, `pemilik`, `gambar`, `fasilitas`, `alamat`) VALUES
(11111, 'Dede', ' ', 'wifi, kasur, meja', 'jln. sekeloa'),
(22222, 'Udin', ' ', 'lemari, kasur, meja', 'jln. tubagus');

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE `user_admin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`username`, `password`, `nama`, `email`) VALUES
('admin', 'admin', 'admin', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_member`
--

CREATE TABLE `user_member` (
  `member_id` smallint(3) NOT NULL,
  `member_nama` varchar(20) DEFAULT NULL,
  `member_username` varchar(20) DEFAULT NULL,
  `member_password` varchar(40) DEFAULT NULL,
  `member_tempat_lahir` varchar(20) DEFAULT NULL,
  `member_tglahir` date DEFAULT NULL,
  `member_jk` varchar(1) DEFAULT NULL,
  `member_alamat` varchar(50) DEFAULT NULL,
  `member_tlp` varchar(13) DEFAULT NULL,
  `member_email` varchar(40) DEFAULT NULL,
  `member_foto` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_member`
--

INSERT INTO `user_member` (`member_id`, `member_nama`, `member_username`, `member_password`, `member_tempat_lahir`, `member_tglahir`, `member_jk`, `member_alamat`, `member_tlp`, `member_email`, `member_foto`) VALUES
(1, 'Moch. Rizkia Hidayat', 'rizkiaerr', '25d55ad283aa400af464c76d713c07ad', 'Sumedang', '1996-04-23', 'L', 'Sumedang', '089661203309', 'rizkiaerr@gmail.com', NULL),
(2, 'asd', 'asd', '7815696ecbf1c96e6894b779456d330e', 'asd', '2017-07-12', 'L', 'asd', '089661203309', 'rizkiaerr@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kostan`
--
ALTER TABLE `kostan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_member`
--
ALTER TABLE `user_member`
  ADD PRIMARY KEY (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_member`
--
ALTER TABLE `user_member`
  MODIFY `member_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
