-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 07, 2018 at 01:42 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webo`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE IF NOT EXISTS `bookmarks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `href` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT 'www',
  `rel` varchar(50) NOT NULL,
  `target` varchar(10) NOT NULL,
  `userid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `href`, `title`, `rel`, `target`, `userid`) VALUES
(1, '', '', 'nofollow', '_blank', ''),
(2, 'http://www.google.com', 'Google', 'nofollow', '_blank', 'rahulcsdotnet@gmail.com '),
(3, 'http://', '', 'nofollow', '_blank', 'rahulcsdotnet@gmail.com '),
(4, 'http://www.aiosolution.org', 'AIO Solution', 'nofollow', '_blank', 'rahulcsdotnet@gmail.com ');

-- --------------------------------------------------------

--
-- Table structure for table `webosignup`
--

CREATE TABLE IF NOT EXISTS `webosignup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pincode` bigint(6) NOT NULL,
  `mobilenumber` bigint(10) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `webosignup`
--

INSERT INTO `webosignup` (`id`, `firstname`, `lastname`, `dob`, `gender`, `userid`, `password`, `color`, `address`, `pincode`, `mobilenumber`, `image`) VALUES
(3, 'Alex', '0', '2018-08-01', 'male', 'rahulcsdotnet@gmail.com', '123', '#ff8080', 'delhi', 123456, 9999999999, 'UsZZ87kTDGdPH1Dx.jpg'),
(11, 'Alex', 'Garrett', '2018-08-15', 'male', 'rahulcsdotnet@gmail.co', '123', '#000000', 'jhvjhvjhvjhvjvjvjvjvjvjvjvjvjvjvjvjvjvjvjvj', 100000, 2147483647, ''),
(13, 'Alex', 'Garrett', '2018-08-15', 'male', 'rahulcsdotnet@gmail.coj', '123', '#000000', 'jhvjhvjhvjhvjvjvjvjvjvjvjvjvjvjvjvjvjvjvjvj', 100000, 2147483647, 'DSCN2495.JPG'),
(14, 'Alex', 'Garrett', '2018-08-15', 'male', 'rahulcsdotnet@gmail.cojl', '123', '#000000', 'jhvjhvjhvjhvjvjvjvjvjvjvjvjvjvjvjvjvjvjvjvj', 100000, 2147483647, 'DSCN2499.JPG'),
(15, 'Alex', 'Garrett', '2018-08-07', 'female', 'rahulcsdotnet@gmail.comkk', '123', '#4ad752', 'jhvjhvjhvjhvjvjvjvjvjvjvjvjvjvjvjvjvjvjvjvj', 100000, 2147483647, 'DSCN2504.JPG'),
(16, 'Raj', 'Kumar', '2018-08-08', 'female', 'rahulcsdotnet@gmail.comll', '123', '#000000', 'jhvjhvjhvjhvjvjvjvjvjvjvjvjvjvjvjvjvjvjvjvj', 100000, 2147483647, 'DSCN2501.JPG'),
(19, 'Raj', 'Kumar', '2018-08-08', 'female', 'rahulcsdotnet@gmail.ddcomll', '123', '#000000', 'jhvjhvjhvjhvjvjvjvjvjvjvjvjvjvjvjvjvjvjvjvj', 100000, 2147483647, 'DSCN2504.JPG'),
(20, 'Raj', 'Kumar', '2018-08-08', 'female', 'rahulcsdotnet@gmail.ddcgomll', '123', '#000000', 'jhvjhvjhvjhvjvjvjvjvjvjvjvjvjvjvjvjvjvjvjvj', 100000, 2147483647, 'DSCN2695.JPG'),
(22, 'Raj', 'Kumar', '2018-08-08', 'female', 'rahulcsdsotnet@gmail.ddcgomll', '123', '#000000', 'jhvjhvjhvjhvjvjvjvjvjvjvjvjvjvjvjvjvjvjvjvj', 100000, 2147483647, '33084925_1657592597681419_8216442225895145472_n.jpg'),
(23, 'Raj', 'Kumar', '2018-08-08', 'female', 'rahulcsdssotnet@gmail.ddcgomll', '123', '#000000', 'jhvjhvjhvjhvjvjvjvjvjvjvjvjvjvjvjvjvjvjvjvj', 100000, 2147483647, '123.png'),
(24, 'Raj', 'Kumar', '2018-08-08', 'female', 'rahulcsdsssotnet@gmail.ddcgomll', '123', '#000000', 'jhvjhvjhvjhvjvjvjvjvjvjvjvjvjvjvjvjvjvjvjvj', 100000, 2147483647, '123.png'),
(26, 'Dhruv', 'Garrett', '2018-12-30', 'female', 'dhruv@mishra.mnp', '123', '#ffff80', 'Noida Sec-45', 999999, 9876543234, 'blood_donation_drop_water-512.png'),
(27, 'Dhruv', 'Garrett', '2018-12-30', 'female', 'dhruv@mishra.mnpk', '123', '#ffff80', 'Noida Sec-45', 999999, 9876543234, 'blood-donate.jpg'),
(28, 'Dhruv', 'Garrett', '2018-12-30', 'female', 'dhruv@mishra.hmnpk', '123', '#ffff80', 'Noida Sec-45', 999999, 9876543234, 'blood-donate.jpg'),
(30, 'Dhruv', 'Garrett', '2018-12-30', 'female', 'dhruv@mishra.hmknpk', '123', '#ffff80', 'Noida Sec-45', 999999, 9876543234, 'blood-donate.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
