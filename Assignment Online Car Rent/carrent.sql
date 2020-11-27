-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 06:45 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrent`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blogid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blogid`, `userid`, `comment`) VALUES
(1, 2, 'this is really helpful to car rent app');

-- --------------------------------------------------------

--
-- Table structure for table `bookmic`
--

CREATE TABLE `bookmic` (
  `bookmicid` int(20) NOT NULL,
  `microid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bookpick`
--

CREATE TABLE `bookpick` (
  `bookpickid` int(20) NOT NULL,
  `pickupid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bookpri`
--

CREATE TABLE `bookpri` (
  `bookprid` int(20) NOT NULL,
  `privateid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookpri`
--

INSERT INTO `bookpri` (`bookprid`, `privateid`, `userid`, `address`, `date`) VALUES
(1, 8, 2, 'dhaka', '2020-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `hid` int(20) NOT NULL,
  `bookprid` int(20) NOT NULL,
  `privateid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`hid`, `bookprid`, `privateid`, `userid`, `address`, `date`) VALUES
(1, 1, 8, 2, 'dhaka', '2020-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `micro`
--

CREATE TABLE `micro` (
  `microid` int(20) NOT NULL,
  `microname` varchar(20) NOT NULL,
  `microcost` int(20) NOT NULL,
  `avlcar` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `micro`
--

INSERT INTO `micro` (`microid`, `microname`, `microcost`, `avlcar`) VALUES
(5, 'undefined', 34567, 6),
(6, 'undefined', 345, 5);

-- --------------------------------------------------------

--
-- Table structure for table `pickup`
--

CREATE TABLE `pickup` (
  `pickupid` int(20) NOT NULL,
  `pickupname` varchar(20) NOT NULL,
  `pickupcost` int(20) NOT NULL,
  `avlcar` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pickup`
--

INSERT INTO `pickup` (`pickupid`, `pickupname`, `pickupcost`, `avlcar`) VALUES
(2, 'wqD', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `privatecar`
--

CREATE TABLE `privatecar` (
  `privateid` int(30) NOT NULL,
  `privatename` varchar(20) NOT NULL,
  `privatecost` int(20) NOT NULL,
  `avlcar` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privatecar`
--

INSERT INTO `privatecar` (`privateid`, `privatename`, `privatecost`, `avlcar`) VALUES
(8, 'lwq', 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `type` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `email`, `phone`, `password`, `gender`, `city`, `type`) VALUES
(1, 'admin', 'abc@gmail.com', '01777772222', 'admin', 'female', 'dhaka ', 1),
(2, 'cus', 'customer@gmail.com', '01777048151', 'cus', 'female', 'barisal', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogid`),
  ADD KEY `fk90` (`userid`);

--
-- Indexes for table `bookmic`
--
ALTER TABLE `bookmic`
  ADD PRIMARY KEY (`bookmicid`),
  ADD KEY `fk32` (`microid`),
  ADD KEY `fk33` (`userid`);

--
-- Indexes for table `bookpick`
--
ALTER TABLE `bookpick`
  ADD PRIMARY KEY (`bookpickid`),
  ADD KEY `fk35` (`pickupid`),
  ADD KEY `fk36` (`userid`);

--
-- Indexes for table `bookpri`
--
ALTER TABLE `bookpri`
  ADD PRIMARY KEY (`bookprid`),
  ADD KEY `fk30` (`privateid`),
  ADD KEY `fk31` (`userid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `fk70` (`bookprid`),
  ADD KEY `fk71` (`privateid`),
  ADD KEY `fk73` (`userid`);

--
-- Indexes for table `micro`
--
ALTER TABLE `micro`
  ADD PRIMARY KEY (`microid`);

--
-- Indexes for table `pickup`
--
ALTER TABLE `pickup`
  ADD PRIMARY KEY (`pickupid`);

--
-- Indexes for table `privatecar`
--
ALTER TABLE `privatecar`
  ADD PRIMARY KEY (`privateid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blogid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookmic`
--
ALTER TABLE `bookmic`
  MODIFY `bookmicid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookpick`
--
ALTER TABLE `bookpick`
  MODIFY `bookpickid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookpri`
--
ALTER TABLE `bookpri`
  MODIFY `bookprid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `hid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `micro`
--
ALTER TABLE `micro`
  MODIFY `microid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pickup`
--
ALTER TABLE `pickup`
  MODIFY `pickupid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `privatecar`
--
ALTER TABLE `privatecar`
  MODIFY `privateid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `fk90` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookmic`
--
ALTER TABLE `bookmic`
  ADD CONSTRAINT `fk32` FOREIGN KEY (`microid`) REFERENCES `micro` (`microid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk33` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookpick`
--
ALTER TABLE `bookpick`
  ADD CONSTRAINT `fk35` FOREIGN KEY (`pickupid`) REFERENCES `pickup` (`pickupid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk36` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookpri`
--
ALTER TABLE `bookpri`
  ADD CONSTRAINT `fk30` FOREIGN KEY (`privateid`) REFERENCES `privatecar` (`privateid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk31` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `fk70` FOREIGN KEY (`bookprid`) REFERENCES `bookpri` (`bookprid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk71` FOREIGN KEY (`privateid`) REFERENCES `privatecar` (`privateid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk73` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
