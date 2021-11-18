-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 08, 2020 at 01:56 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `securecloud_multiowner`
--
CREATE DATABASE IF NOT EXISTS `securecloud_multiowner` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `securecloud_multiowner`;

-- --------------------------------------------------------

--
-- Table structure for table `co_ownerfile`
--

CREATE TABLE IF NOT EXISTS `co_ownerfile` (
  `FileId` int(11) NOT NULL,
  `Co_OwnerId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `co_ownerfile`
--

INSERT INTO `co_ownerfile` (`FileId`, `Co_OwnerId`) VALUES
(1, 'harini'),
(1, 'priyaa'),
(2, 'harini'),
(2, 'priyaa'),
(3, 'harini'),
(3, 'priyaa');

-- --------------------------------------------------------

--
-- Table structure for table `co_ownerpolicies`
--

CREATE TABLE IF NOT EXISTS `co_ownerpolicies` (
  `FileId` int(11) NOT NULL,
  `Co_OwnerId` varchar(50) NOT NULL,
  `Policy1` varchar(50) NOT NULL,
  `Policy2` varchar(50) NOT NULL,
  `Policy3` varchar(50) NOT NULL,
  `Policy4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `co_ownerpolicies`
--

INSERT INTO `co_ownerpolicies` (`FileId`, `Co_OwnerId`, `Policy1`, `Policy2`, `Policy3`, `Policy4`) VALUES
(1, 'harini', 'Java', '5', 'Cloud Computing', 'Good'),
(1, 'priyaa', 'J2EE', '5', 'Cloud Computing', 'Good'),
(3, 'harini', 'Java', '10', 'Cloud Computing', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `fileaccessors`
--

CREATE TABLE IF NOT EXISTS `fileaccessors` (
  `FileId` int(11) NOT NULL,
  `FileName` varchar(50) NOT NULL,
  `FileKey` varchar(18) NOT NULL,
  `DataAccessor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fileaccessors`
--

INSERT INTO `fileaccessors` (`FileId`, `FileName`, `FileKey`, `DataAccessor`) VALUES
(1, 'SwingNotes.txt', '6c812e03', 'guru'),
(1, 'SwingNotes.txt', '6c812e03', 'surya');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `Name` varchar(25) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `Age` int(11) NOT NULL,
  `Address` varchar(75) NOT NULL,
  `MailId` varchar(50) NOT NULL,
  `MobileNo` varchar(15) NOT NULL,
  `Designation` varchar(25) NOT NULL,
  `UserType` varchar(18) NOT NULL,
  `UserId` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `RegDate` date NOT NULL,
  `Status` varchar(10) NOT NULL,
  `SecretKey` varchar(18) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Name`, `Gender`, `DOB`, `Age`, `Address`, `MailId`, `MobileNo`, `Designation`, `UserType`, `UserId`, `Password`, `RegDate`, `Status`, `SecretKey`) VALUES
('SasiKumar.A.M', 'Male', '1978-06-22', 41, 'Thiruvedagam\r\nMadurai', 'amsasi78@gmail.com', '9842168547', 'Project Manager', 'Data Owner', 'amsasi', 'sasirani', '2019-11-20', 'Accepted', 'c87d20c9'),
('Balasubramani', 'Male', '1976-08-18', 43, 'Melamathur,\r\nMadurai', 'balu@gmail.com', '9994599945', 'Developer', 'Data User', 'balu', 'balu', '2019-11-21', 'Accepted', 'bd48488c'),
('Guru.M', 'Male', '1988-06-16', 31, 'Titan Nagar\r\nHosur', 'guru@gmail.com', '9952885707', 'Developer', 'Data User', 'guru', 'guru', '2019-11-21', 'Accepted', '76689966'),
('HariniSasi', 'Female', '1988-10-16', 31, 'Thiruvedagam\r\nMadurai', 'harinisasi@gmail.com', '9842168547', 'Project Leader', 'Data Co-Owner', 'harini', 'sasirani', '2019-11-21', 'Accepted', '480a153d'),
('Narendran.N', 'Male', '1978-06-30', 41, 'Thenkarai\r\nMadurai', 'narend@gmail.com', '9343067890', 'Developer', 'Data User', 'narend', 'narend', '2019-11-21', 'Accepted', 'bfd931c9'),
('PremKumar.M', 'Male', '1977-03-23', 42, 'Pallavaram\r\nChennai', 'prem@gmail.com', '9994914482', 'Developer', 'Data User', 'prem', 'prem', '2019-11-21', 'Accepted', '3d6bed78'),
('PriyaaSasi', 'Female', '1987-05-04', 32, 'Thiruvedagam\r\nMadurai', 'priyaasasi@gmail.com', '9842168547', 'Project Leader', 'Data Co-Owner', 'priyaa', 'sasirani', '2019-11-21', 'Accepted', '2df638d4'),
('RaniSasi', 'Female', '1987-03-25', 32, 'Thiruvedagam\r\nMadurai', 'ranisasi@gmail.com', '9842168547', 'Developer', 'Data User', 'rani', 'sasirani', '2019-11-21', 'Accepted', 'f1949724'),
('ChellaPandi.P', 'Male', '1971-09-03', 49, 'Nelmudikarai,\r\nThiruppuvanam', 'selvam@gmail.com', '9698283727', 'Developer', 'Data User', 'selvam', 'selvam', '2020-01-08', 'Accepted', 'ad79b2c6'),
('Surya', 'Male', '1988-06-26', 31, 'Anupanadi\r\nMadurai', 'surya@gmail.com', '9698132737', 'Developer', 'Data User', 'surya', 'surya', '2019-11-21', 'Accepted', '65563547');

-- --------------------------------------------------------

--
-- Table structure for table `uploadfiles`
--

CREATE TABLE IF NOT EXISTS `uploadfiles` (
  `FileId` int(11) NOT NULL,
  `FileName` varchar(50) NOT NULL,
  `Userid` varchar(50) NOT NULL,
  `UploadedDate` date NOT NULL,
  `FileKey` varchar(18) NOT NULL,
  `AccessPolicy` varchar(50) NOT NULL,
  PRIMARY KEY (`FileId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploadfiles`
--

INSERT INTO `uploadfiles` (`FileId`, `FileName`, `Userid`, `UploadedDate`, `FileKey`, `AccessPolicy`) VALUES
(1, 'SwingNotes.txt', 'amsasi', '2019-11-22', '6c812e03', 'Developer'),
(2, 'PythonNotes.txt', 'amsasi', '2019-11-22', '67945b77', 'Developer'),
(3, 'NewNotes.txt', 'amsasi', '2020-01-08', 'e9671ab2', 'Developer');

-- --------------------------------------------------------

--
-- Table structure for table `userattributes`
--

CREATE TABLE IF NOT EXISTS `userattributes` (
  `Userid` varchar(50) NOT NULL,
  `Technology` varchar(18) NOT NULL,
  `Experience` int(11) NOT NULL,
  `Domain` varchar(18) NOT NULL,
  `Efficiency` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userattributes`
--

INSERT INTO `userattributes` (`Userid`, `Technology`, `Experience`, `Domain`, `Efficiency`) VALUES
('surya', 'Java', 5, 'Cloud Computing', 'Excellent'),
('rani', 'DotNet', 10, 'Image Processing', 'Excellent'),
('guru', 'Java', 10, 'Cloud Computing', 'Excellent'),
('prem', 'PHP', 15, 'Data Mining', 'Good'),
('balu', 'PHP', 15, 'Data Mining', 'Good'),
('narend', 'PHP', 10, 'Data Mining', 'Excellent'),
('selvam', 'DotNet', 5, 'Data Mining', 'Normal');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
