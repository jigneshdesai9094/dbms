-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2024 at 06:22 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mca_2024_jignesh`
--

-- --------------------------------------------------------

--
-- Table structure for table `p`
--

CREATE TABLE `p` (
  `pno` char(3) NOT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `p_city` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p`
--

INSERT INTO `p` (`pno`, `pname`, `color`, `weight`, `p_city`) VALUES
('p1', 'Nut', 'Red', 12, 'London'),
('p2', 'Bolt', 'Green', 17, 'Paris'),
('p3', 'Screw', 'Blue', 17, 'Oslo'),
('p4', 'Screw', 'Red', 14, 'London'),
('p5', 'Cam', 'Blue', 12, 'Paris'),
('p6', 'Cg', 'Red', 19, 'London');

-- --------------------------------------------------------

--
-- Table structure for table `s`
--

CREATE TABLE `s` (
  `sno` char(3) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `s_status` int(11) DEFAULT NULL,
  `s_city` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `s`
--

INSERT INTO `s` (`sno`, `sname`, `s_status`, `s_city`) VALUES
('s1', 'Smith', 20, 'London'),
('s2', 'Jones', 10, 'Paris'),
('s3', 'Blake', 10, 'Paris'),
('s4', 'Clark', 20, 'London'),
('s5', 'Blake', 30, 'Athens');

-- --------------------------------------------------------

--
-- Table structure for table `sp`
--

CREATE TABLE `sp` (
  `sno` char(3) NOT NULL,
  `pno` char(3) NOT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp`
--

INSERT INTO `sp` (`sno`, `pno`, `qty`) VALUES
('s1', 'p1', 300),
('s1', 'p2', 200),
('s1', 'p3', 400),
('s1', 'p4', 200),
('s1', 'p5', 100),
('s1', 'p6', 100),
('s2', 'p1', 300),
('s2', 'p2', 400),
('s3', 'p2', 200),
('s4', 'p2', 200),
('s4', 'p4', 300),
('s4', 'p5', 400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `p`
--
ALTER TABLE `p`
  ADD PRIMARY KEY (`pno`);

--
-- Indexes for table `s`
--
ALTER TABLE `s`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `sp`
--
ALTER TABLE `sp`
  ADD PRIMARY KEY (`sno`,`pno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sp`
--
ALTER TABLE `sp`
  ADD CONSTRAINT `sp_ibfk_1` FOREIGN KEY (`sno`) REFERENCES `s` (`sno`),
  ADD CONSTRAINT `sp_ibfk_2` FOREIGN KEY (`pno`) REFERENCES `p` (`pno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
