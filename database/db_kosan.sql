-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2017 at 04:31 PM
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
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` smallint(3) NOT NULL,
  `member_nama` varchar(20) DEFAULT NULL,
  `member_username` varchar(20) DEFAULT NULL,
  `member_password` varchar(40) DEFAULT NULL,
  `member_tempat_lahir` varchar(20) DEFAULT NULL,
  `member_tglahir` date DEFAULT NULL,
  `member_jk` varchar(1) DEFAULT NULL,
  `member_alamat` varchar(50) DEFAULT NULL,
  `member_tlp` decimal(13,0) DEFAULT NULL,
  `member_email` varchar(40) DEFAULT NULL,
  `member_foto` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_nama`, `member_username`, `member_password`, `member_tempat_lahir`, `member_tglahir`, `member_jk`, `member_alamat`, `member_tlp`, `member_email`, `member_foto`) VALUES
(2, 'Rizkia', 'rizkiaerr', 'asd', 'Sumedang', '2017-07-10', 'L', 'Sumedang', '89661203309', 'rizkiaerr@gmaill.com', NULL),
(3, 'Moch. Rizkia Hidayat', 'rizkiaerr', '123', 'Sumedang', '2017-07-10', 'L', 'Sumedang', '89661203309', 'rizkiaerr@gmaill.com', NULL),
(4, 'Rizkia', 'rizkiaerr', 'asd', 'Sumedang', '2017-07-10', 'L', 'Sumedang', '89123456789', 'rizkiaerr@gmaill.com', NULL),
(5, 'Rizkia', 'rizkiaerr', 'asd', 'Sumedang', '2017-07-10', 'L', 'Sumedang', '89123456789', 'rizkiaerr@gmaill.com', NULL),
(6, 'asda', 'asd', 'asd', 'asd', '2017-07-10', 'L', 'asda', '0', 'rizkiaerr@gmaill.com', NULL),
(7, 'asda', 'asd', 'asd', 'asd', '2017-07-10', 'L', 'asda', '0', 'rizkiaerr@gmaill.com', NULL),
(8, 'Rizkia', 'asd', '7815696ecbf1c96e6894b779456d330e', 'asd', '2017-07-10', 'L', 'asd', '89661203309', 'rizkiaerr@gmaill.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
