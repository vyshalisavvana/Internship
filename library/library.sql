-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2019 at 12:07 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bid` int(11) NOT NULL,
  `yyid` int(20) NOT NULL,
  `deptid` int(20) NOT NULL,
  `dname` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `author` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bid`, `yyid`, `deptid`, `dname`, `name`, `author`) VALUES
(1, 10, 121, 'CSE', 'c', 'Balaguruswamy'),
(2, 10, 121, 'CSE', 'Let us c', 'Yashawant'),
(3, 30, 121, 'CSE', 'Fluid Mechanics', 'Frank White'),
(5, 20, 121, 'CSE', 'english', 'abc'),
(6, 10, 121, 'CSE', 'maths', 'de'),
(7, 10, 122, 'EEE', 'english1', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `ddid` int(20) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`ddid`, `name`) VALUES
(122, 'EEE'),
(121, 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `loginpage`
--

CREATE TABLE `loginpage` (
  `S/No` int(20) NOT NULL,
  `id` int(30) NOT NULL,
  `did` int(20) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `Username` varchar(40) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginpage`
--

INSERT INTO `loginpage` (`S/No`, `id`, `did`, `utype`, `Username`, `Password`) VALUES
(1, 111, 121, 's', 'vyshali', '12345'),
(2, 123, 122, 'n', 'admin', 'admin'),
(3, 112, 121, 'n', 'sravya', 'sravya');

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `yid` int(20) NOT NULL,
  `yearst` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`yid`, `yearst`) VALUES
(10, 1),
(20, 2),
(30, 3),
(40, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `loginpage`
--
ALTER TABLE `loginpage`
  ADD PRIMARY KEY (`S/No`,`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `loginpage`
--
ALTER TABLE `loginpage`
  MODIFY `S/No` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
