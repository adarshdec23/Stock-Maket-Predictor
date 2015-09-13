-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2015 at 10:56 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `socgen`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
`companyid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `ctype` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`companyid`, `name`, `symbol`, `ctype`) VALUES
(1, 'Yahoo!', 'YHOO', 'tech'),
(3, 'Apple', 'AAPL', 'tech'),
(4, 'Adobe', 'ADBE', 'tech'),
(5, 'Google', 'GOOG', 'tech'),
(6, 'Microsoft', 'MSFT', 'tech'),
(7, 'Sprint', 'S', 'mobile'),
(8, 'AT&T', 'T', 'mobile'),
(9, 'Verizon', 'VZ', 'mobile'),
(10, 'T Mobile', 'TMUS', 'mobile'),
(11, 'Visa', 'V', 'bank'),
(12, 'Mastercard', 'M', 'bank'),
(13, 'Citi Bank', 'C', 'bank'),
(14, 'Goldman', 'GS', 'bank');

-- --------------------------------------------------------

--
-- Table structure for table `companyfield`
--

CREATE TABLE IF NOT EXISTS `companyfield` (
`fieldid` int(11) NOT NULL,
  `fieldname` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `companyfield`
--

INSERT INTO `companyfield` (`fieldid`, `fieldname`) VALUES
(1, 'Tobacco'),
(2, 'Tech');

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE IF NOT EXISTS `investments` (
  `userid` int(11) NOT NULL,
  `symbol` varchar(50) NOT NULL,
  `numofshares` int(11) NOT NULL,
  `priceofshares` float(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investments`
--

INSERT INTO `investments` (`userid`, `symbol`, `numofshares`, `priceofshares`) VALUES
(1, 'ADBE', 1000, 70),
(1, 'MSFT', 300, 38),
(1, 'S', 460, 2),
(1, 'YHOO', 100, 45),
(2, 'GOOG', 400, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
 ADD PRIMARY KEY (`companyid`);

--
-- Indexes for table `companyfield`
--
ALTER TABLE `companyfield`
 ADD PRIMARY KEY (`fieldid`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
 ADD PRIMARY KEY (`userid`,`symbol`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `companyid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `companyfield`
--
ALTER TABLE `companyfield`
MODIFY `fieldid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
