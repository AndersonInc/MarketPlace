-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 12:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketplex`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `fname` varchar(20) DEFAULT NULL,
  `lName` varchar(20) DEFAULT NULL,
  `customerid` varchar(20) NOT NULL,
  `pKey` varchar(20) DEFAULT NULL,
  `cartNo` int(11) NOT NULL,
  `location` varchar(25) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `gender` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ordNo` int(11) NOT NULL,
  `customerid` varchar(20) DEFAULT NULL,
  `prdID` int(11) DEFAULT NULL,
  `orderTime` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prdsales`
--

CREATE TABLE `prdsales` (
  `prdID` int(11) DEFAULT NULL,
  `sales` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prdt`
--

CREATE TABLE `prdt` (
  `prdID` int(11) NOT NULL,
  `prdName` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `sid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `preference`
--

CREATE TABLE `preference` (
  `prdID` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sid` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `skey` varchar(25) NOT NULL,
  `email` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`),
  ADD UNIQUE KEY `cartNo` (`cartNo`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ordNo`),
  ADD UNIQUE KEY `prdID` (`prdID`),
  ADD KEY `customerid` (`customerid`);

--
-- Indexes for table `prdsales`
--
ALTER TABLE `prdsales`
  ADD KEY `prdID` (`prdID`);

--
-- Indexes for table `prdt`
--
ALTER TABLE `prdt`
  ADD PRIMARY KEY (`prdID`),
  ADD UNIQUE KEY `prdID` (`prdID`),
  ADD UNIQUE KEY `sid` (`sid`);

--
-- Indexes for table `preference`
--
ALTER TABLE `preference`
  ADD KEY `prdID` (`prdID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `sid` (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cartNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`prdID`) REFERENCES `prdt` (`prdID`) ON DELETE CASCADE;

--
-- Constraints for table `prdsales`
--
ALTER TABLE `prdsales`
  ADD CONSTRAINT `prdsales_ibfk_1` FOREIGN KEY (`prdID`) REFERENCES `prdt` (`prdID`);

--
-- Constraints for table `prdt`
--
ALTER TABLE `prdt`
  ADD CONSTRAINT `prdt_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `staff` (`sid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `preference`
--
ALTER TABLE `preference`
  ADD CONSTRAINT `preference_ibfk_1` FOREIGN KEY (`prdID`) REFERENCES `prdt` (`prdID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
