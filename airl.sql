-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 17, 2016 at 04:02 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `airl`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locations`
--

CREATE TABLE IF NOT EXISTS `tbl_locations` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `identity` varchar(200) NOT NULL,
  `intro` text NOT NULL,
  `title` text NOT NULL,
  `city` varchar(200) NOT NULL,
  `state_id` int(11) NOT NULL,
  `zip` int(11) NOT NULL,
  `lat` varchar(200) NOT NULL,
  `log` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `loc_image` varchar(200) NOT NULL,
  `map_info` text NOT NULL,
  `outro` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_locations`
--

INSERT INTO `tbl_locations` (`location_id`, `identity`, `intro`, `title`, `city`, `state_id`, `zip`, `lat`, `log`, `description`, `loc_image`, `map_info`, `outro`, `created_at`, `updated_at`) VALUES
(1, '', '', 'Tucson Electric Power—Employees Only', 'Tucson', 1, 85701, '32.220913', '-110.96906', 'description goes here', 'images/tam6031_520x236.jpg', '', '', '2016-02-16 12:49:54', '0000-00-00 00:00:00'),
(2, '', '', '533 N 4th Ave.', 'Willcox', 1, 85643, '31.998966', '-109.7051', 'Willcox description goes here', 'images/tja5120_520x236.jpg', '', '', '2016-02-16 13:31:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE IF NOT EXISTS `tbl_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(200) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL,
  `status` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`id`, `state_name`, `date_added`, `date_updated`, `status`) VALUES
(1, 'AZ', '2016-02-16 12:44:12', '0000-00-00 00:00:00', '0'),
(2, 'AL', '2016-02-16 12:44:15', '0000-00-00 00:00:00', '0'),
(3, 'AK', '2016-02-16 12:44:18', '0000-00-00 00:00:00', '0'),
(4, 'AR', '2016-02-16 12:44:21', '0000-00-00 00:00:00', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
