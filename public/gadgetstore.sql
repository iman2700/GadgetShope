-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2018 at 01:21 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gadgetstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `Name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `Name`) VALUES
(1, 'Tablets'),
(2, 'Laptops'),
(3, 'Mobiles');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerId` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerId`, `Name`, `phone`, `street`, `city`, `zip`, `country`) VALUES
(1, 'dfg', 'dfg', 'dfg', 'dfg', 'dfg', 'dfg'),
(2, 'ghkj', 'hgj', 'ghj', 'ghj', 'ghj', 'ghjhgj'),
(3, 'fghgf', 'gfh', 'fgh', 'fgh', 'fgh', 'fghfhf'),
(4, 'fghgf', 'gfh', 'fgh', 'fgh', 'fgh', 'fghfhf'),
(5, 'fgh', 'gh', 'fgh', 'fgh', 'fgh', 'fgh'),
(6, 'fgh', 'gh', 'fgh', 'fgh', 'fgh', 'fgh'),
(7, 'fgh', 'gh', 'fgh', 'fgh', 'fgh', 'fgh'),
(8, 'Name', ':phone', ':street', ':city', ':zip', ':country'),
(9, 'sdf', 'dsf', 'sdf', 'sdf', 'sdf', 'sdfe'),
(10, 'sdf', 'dsf', 'sdf', 'sdf', 'sdf', 'sdfe'),
(11, 'hgf', 'fg', 'fgh', 'fgh', 'jgghfh', 'gftr5'),
(12, 'hgf', 'fg', 'fgh', 'fgh', 'jgghfh', 'gftr5'),
(13, 'hgf', 'fg', 'fgh', 'fgh', 'jgghfh', 'gftr5'),
(14, 'gfh', 'gfh', 'fgh', 'fgh', 'fgh', 'fh'),
(15, 'gfh', 'gfh', 'fgh', 'fgh', 'fgh', 'fh'),
(16, 'gfh', 'gfh', 'fgh', 'fgh', 'fgh', 'fh'),
(17, 'gfh', 'gfh', 'fgh', 'fgh', 'fgh', 'fh'),
(18, 'gfh', 'gfh', 'gfh', 'gfh', 'dfg', 'dfgdfg'),
(19, 'gfh', 'gfh', 'gfh', 'gfh', 'dfg', 'dfgdfg'),
(20, 'gfh', 'gfh', 'gfh', 'gfh', 'dfg', 'dfgdfg'),
(21, 'gfh', 'gfh', 'gfh', 'gfh', 'dfg', 'dfgdfg'),
(22, 'gfh', 'gfh', 'gfh', 'gfh', 'dfg', 'dfgdfg'),
(23, 'gfh', 'gfh', 'gfh', 'gfh', 'dfg', 'dfgdfg'),
(24, 'gfh', 'gfh', 'gfh', 'gfh', 'dfg', 'dfgdfg'),
(25, '', '', '', '', '', ''),
(26, '', '', '', '', '', ''),
(27, '', '', '', '', '', ''),
(28, '', '', '', '', '', ''),
(29, '', '', '', '', '', ''),
(30, '', '', '', '', '', ''),
(31, '', '', '', '', '', ''),
(32, '', '', '', '', '', ''),
(33, '', '', '', '', '', ''),
(34, '', '', '', '', '', ''),
(35, '', '', '', '', '', ''),
(36, '', '', '', '', '', ''),
(37, '', '', '', '', '', ''),
(38, '', '', '', '', '', ''),
(39, '', '', '', '', '', ''),
(40, '', '', '', '', '', ''),
(41, '', '', '', '', '', ''),
(42, '', '', '', '', '', ''),
(43, '', '', '', '', '', ''),
(44, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `gadget`
--

CREATE TABLE `gadget` (
  `GadgetID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `CategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gadget`
--

INSERT INTO `gadget` (`GadgetID`, `Name`, `Description`, `Price`, `Image`, `CategoryID`) VALUES
(1, 'ProntoTec 7', 'Android 4.4 KitKat Tablet PC, Cortex A8 1.2 GHz Dual Core Processor,512MB / 4GB,Dual Camera,G-Sensor (Black)', '47', '../image/1.jpg', 1),
(2, 'Samsung Galaxy', 'Android 4.4 Kit Kat OS, 1.2 GHz quad-core processor', '47', '../image/2.jpg', 2),
(8, 'sumsong300', 'unic gadget', '34', '../image/3.jpg', 0),
(9, 'appel', 'classic', '567', '../image/7.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gadgetorder`
--

CREATE TABLE `gadgetorder` (
  `GadgetOrderID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `GadgetID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `OrderID` int(11) NOT NULL,
  `GadgetId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`OrderID`, `GadgetId`, `CustomerId`, `qty`) VALUES
(1, 52, 52, 78),
(2, 2, 22, 1),
(3, 2, 23, 1),
(4, 1, 24, 1),
(5, 2, 24, 2),
(6, 2, 24, 1),
(7, 1, 25, 1),
(8, 2, 26, 1),
(9, 2, 26, 5),
(10, 2, 26, 3),
(11, 1, 27, 1),
(12, 1, 27, 7),
(13, 1, 28, 1),
(14, 1, 29, 0),
(15, 1, 30, 0),
(16, 1, 32, 1),
(17, 1, 32, 5),
(18, 1, 33, 0),
(19, 1, 34, 1),
(20, 1, 35, 1),
(21, 1, 36, 1),
(22, 2, 37, 3),
(23, 1, 39, 1),
(24, 1, 39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `passworde` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `gadget`
--
ALTER TABLE `gadget`
  ADD PRIMARY KEY (`GadgetID`);

--
-- Indexes for table `gadgetorder`
--
ALTER TABLE `gadgetorder`
  ADD PRIMARY KEY (`GadgetOrderID`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `gadget`
--
ALTER TABLE `gadget`
  MODIFY `GadgetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gadgetorder`
--
ALTER TABLE `gadgetorder`
  MODIFY `GadgetOrderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
