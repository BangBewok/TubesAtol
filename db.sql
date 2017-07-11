/*
SQLyog Community v9.63 
MySQL - 5.6.20 : Database - juragankost
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`juragankost` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `juragankost`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`,`nama`,`email`) values ('admin','admin','admin','admin@admin.com');

/*Table structure for table `kostan` */

DROP TABLE IF EXISTS `kostan`;

CREATE TABLE `kostan` (
  `id` int(11) NOT NULL,
  `pemilik` varchar(20) DEFAULT NULL,
  `gambar` varchar(10) DEFAULT NULL,
  `fasilitas` varchar(50) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kostan` */

insert  into `kostan`(`id`,`pemilik`,`gambar`,`fasilitas`,`alamat`) values (11111,'Dede',' ','wifi, kasur, meja','jln. sekeloa'),(22222,'Udin',' ','lemari, kasur, meja','jln. tubagus');

/*Table structure for table `pemilik` */

DROP TABLE IF EXISTS `pemilik`;

CREATE TABLE `pemilik` (
  `username` varchar(10) NOT NULL,
  `password` varchar(15) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `telp` int(13) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pemilik` */

insert  into `pemilik`(`username`,`password`,`nama`,`telp`,`email`) values ('imin','kasep','imin sukimin',123456789,'imin@kasep.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
