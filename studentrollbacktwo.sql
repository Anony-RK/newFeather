-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 06:56 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `featherschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `studentrollbacktwo`
--

CREATE TABLE `studentrollbacktwo` (
  `stuid` int(11) NOT NULL,
  `studentname` varchar(50) NOT NULL,
  `rollnumber` varchar(50) NOT NULL,
  `checks` int(10) NOT NULL,
  `finalresult` varchar(50) NOT NULL,
  `forgid` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentrollbacktwo`
--

INSERT INTO `studentrollbacktwo` (`stuid`, `studentname`, `rollnumber`, `checks`, `finalresult`, `forgid`, `status`) VALUES
(19, 'student', 'ee12121', 0, 'PASS', 23, '0'),
(24, 'firstname', 'e1155055', 0, 'FAIL', 34, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studentrollbacktwo`
--
ALTER TABLE `studentrollbacktwo`
  ADD PRIMARY KEY (`stuid`),
  ADD KEY `forgid` (`forgid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `studentrollbacktwo`
--
ALTER TABLE `studentrollbacktwo`
  MODIFY `stuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `studentrollbacktwo`
--
ALTER TABLE `studentrollbacktwo`
  ADD CONSTRAINT `studentrollbacktwo_ibfk_1` FOREIGN KEY (`forgid`) REFERENCES `studentrollback` (`sturollid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
