-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 06, 2017 at 08:13 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `replyid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `pid`, `replyid`, `name`, `content`, `date`) VALUES
(1, 18, 0, 'Kanu', 'harshil navi gadi lidhi', '2017-02-28 23:59:59'),
(2, 18, 1, 'Harshil', 'ha mara pappa e lidhi 6', '2017-03-01 23:59:59'),
(3, 18, 0, 'Amit', 'ketala ma lidhi', '2017-03-02 23:59:59'),
(4, 18, 0, 'Jemish', 'swift emne', '2017-03-02 23:59:59'),
(6, 18, 1, 'Harshi', '6 ne baki ekdo', '2017-03-02 23:59:59'),
(7, 18, 3, 'Harshil', '10 lakh pura', '2017-03-03 23:59:59'),
(8, 34, 0, 'kanu', 'hodi baki jordar hale ho', '2017-03-01 02:20:10'),
(9, 34, 0, 'Kanu', 'aa ghar ahiya ekalu j 6', '2017-03-01 02:24:10'),
(10, 34, 0, 'Kanu', 'lilu lilu pani 6 ho', '2017-03-01 02:34:42'),
(11, 33, 0, 'Kanu ', 'aa e fool maru 6', '2017-03-01 05:39:27'),
(12, 33, 0, 'Kanu', 'me lidhu htu', '2017-03-01 06:11:49'),
(13, 18, 4, 'Kanu', 'hu to audi levano', '2017-03-01 08:41:46'),
(14, 18, 3, 'Kanu', '10 lakh wowwwww', '2017-03-01 08:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(200) NOT NULL,
  `views` double NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`pid`, `title`, `category`, `content`, `img`, `views`, `date`) VALUES
(35, 'photo avyo ??', 'Designing', '<p>ha avyo billo</p>', '536848667_1872630447.jpg', 100, '2017-03-04 22:28:03'),
(36, 'Animal 2', 'Designing', '<p>bear thekdo martu lage</p>', '-1540754997_624123254.jpg', 100, '2017-03-05 23:27:57'),
(37, 'Animal 3', 'Designing', '<p>nag 6 k magar khbr nathi padti</p>', '-550569182_1306538852.jpg', 100, '2017-03-05 23:28:46'),
(38, 'Animal 4', 'Designing', '<p>machhali beautiful &nbsp;kar gayi chull</p>', '672575927_1055814361.jpg', 100, '2017-03-05 23:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` double NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) NOT NULL,
  `middleName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `userId` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `middleName`, `lastName`, `email`, `userId`, `password`) VALUES
(1, 'Kanu', 'B', 'Malivad', 'kanu.malivad@gmail.com', 'kanu.malivad', 'kanu123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
