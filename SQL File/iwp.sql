-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2021 at 05:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iwp`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `chn` varchar(100) NOT NULL,
  `chnum` varchar(100) NOT NULL,
  `balance` int(100) NOT NULL,
  `valid` varchar(100) NOT NULL,
  `cvv` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`chn`, `chnum`, `balance`, `valid`, `cvv`) VALUES
('1234567', '0', 671500, '', 0),
('17007255', '0', 856000, '', 0),
('Abhinov', '2147483647', 927700, '11/24', 456);

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `loginid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`loginid`, `password`) VALUES
('Abhinov', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `booking2`
--

CREATE TABLE `booking2` (
  `booking_id` int(100) NOT NULL,
  `strength` int(11) NOT NULL,
  `to_date` date NOT NULL,
  `from_date` date NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `b_date` date NOT NULL,
  `payment_id` int(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking2`
--

INSERT INTO `booking2` (`booking_id`, `strength`, `to_date`, `from_date`, `full_name`, `location`, `b_date`, `payment_id`, `type`) VALUES
(1001, 12, '2020-11-29', '2020-11-20', 'Abhinov', 'Chennai', '2020-11-08', 15, 'cubicle'),
(1002, 4, '2020-11-14', '2020-11-11', 'Vijay', 'Banglore', '2020-11-08', 8, 'cubicle'),
(1004, 5, '2020-11-13', '2020-11-10', 'Chandan', 'Banglore', '2020-11-09', 3, 'cubicle'),
(1005, 3, '2020-11-14', '2020-11-10', 'Karan', 'Chennai', '2020-11-09', 4, 'meeting'),
(1006, 4, '2020-11-04', '2020-11-15', 'Vishnu', 'Mumbai', '2020-11-11', 4, 'seminar'),
(1008, 1, '2020-11-21', '2020-11-19', 'Hello', 'Chennai', '2020-11-15', 7, 'meeting');

-- --------------------------------------------------------

--
-- Table structure for table `booking_email_id`
--

CREATE TABLE `booking_email_id` (
  `booking_id` int(100) NOT NULL,
  `email_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_email_id`
--

INSERT INTO `booking_email_id` (`booking_id`, `email_id`) VALUES
(1001, 'Abhinov@gmail.com'),
(1002, 'vijay@gmail.com'),
(1004, 'chandan@gmail.com'),
(1005, 'karan@gmail.com'),
(1006, 'vishnu@gmail.com'),
(1008, 'tytyu@gmail.com'),
(1030, 'vamsisaibommisetty@gmail.com'),
(1032, 'rishik@gmail.com'),
(1040, 'vamsisaibommisetty@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `booking_ph_no`
--

CREATE TABLE `booking_ph_no` (
  `booking_id` int(100) NOT NULL,
  `ph_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_ph_no`
--

INSERT INTO `booking_ph_no` (`booking_id`, `ph_no`) VALUES
(1001, '9999915102'),
(1002, '7545555545'),
(1004, '7651234789'),
(1005, '9012345671'),
(1006, '8756190345'),
(1008, '7682345890'),
(1030, '8767555559'),
(1031, '8765432190'),
(1032, '8977879897'),
(1040, '9441450604');

-- --------------------------------------------------------

--
-- Table structure for table `booking_workspace`
--

CREATE TABLE `booking_workspace` (
  `login_id` varchar(100) NOT NULL,
  `booking_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_workspace`
--

INSERT INTO `booking_workspace` (`login_id`, `booking_id`) VALUES
('Abhinov', 1001),
('Chandan', 1004),
('Chandan', 1005),
('Chandan', 1006),
('vamsi', 1007),
('vamsi', 1008),
('vamsi', 1009),
('vamsi', 1010),
('vamsi', 1011),
('vamsi', 1040);

-- --------------------------------------------------------

--
-- Table structure for table `confirmed2`
--

CREATE TABLE `confirmed2` (
  `c_date` date NOT NULL,
  `c_id` int(100) NOT NULL,
  `payment_id` int(100) NOT NULL,
  `booking_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `confirmed2`
--

INSERT INTO `confirmed2` (`c_date`, `c_id`, `payment_id`, `booking_id`) VALUES
('2020-11-01', 8, 3, 1004),
('2020-11-01', 10, 4, 1005),
('2020-11-01', 11, 5, 1006),
('2020-11-07', 13, 7, 1008),
('2020-11-08', 14, 8, 1002),
('2020-11-10', 20, 14, 1040),
('2020-11-10', 21, 14, 1040),
('2020-11-20', 22, 15, 1001),
('2020-11-20', 23, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `loginid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginid`, `password`, `fullname`, `email`, `phoneno`, `gender`) VALUES
('Abhinov', 'Abhinov@03', 'Abhinov Bhattacharya', 'Abhinov@gmail.com', '9995562645', 'male'),
('aditya', 'Welcome@1', 'Aditya ', 'ddadasd@gmail.com', '9671961462', 'male'),
('madesh', 'Madesh@03', 'madesh', 'madesh@gmail.com', '7689134561', 'male'),
('Sathwik', 'Sath@123', 'sathwik', 'Sathwik@gmail.com', '9115455554', 'male'),
('Vishnu', 'Vishnu@123', 'dasdadas', 'vishun@gmail.com', '9999999999', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(100) NOT NULL,
  `chn` varchar(100) NOT NULL,
  `p_date` date NOT NULL,
  `fare` int(11) NOT NULL,
  `chnum` varchar(100) NOT NULL,
  `c_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `chn`, `p_date`, `fare`, `chnum`, `c_id`) VALUES
(1, 'Vamsi', '2020-11-01', 1800, '2147483647', 1),
(2, 'Vamsi', '2020-11-01', 1800, '2147483647', NULL),
(3, 'Vamsi', '2020-11-01', 4500, '2147483647', 8),
(4, 'Vamsi', '2020-11-01', 3600, '2147483647', 11),
(5, 'Vamsi', '2020-11-01', 3600, '2147483647', 11),
(6, 'Vamsi', '2020-11-07', 1800, '2147483647', NULL),
(7, 'Vamsi', '2020-11-07', 600, '2147483647', 13),
(8, 'Vamsi', '2020-11-08', 3600, '2147483647', 14),
(14, 'Vamsi', '2020-11-10', 1800, '2147483647', 20),
(15, 'Abhinov', '2020-11-08', 32400, '2147483647', 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`chn`);

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `booking2`
--
ALTER TABLE `booking2`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `booking_email_id`
--
ALTER TABLE `booking_email_id`
  ADD PRIMARY KEY (`booking_id`,`email_id`);

--
-- Indexes for table `booking_ph_no`
--
ALTER TABLE `booking_ph_no`
  ADD PRIMARY KEY (`booking_id`,`ph_no`);

--
-- Indexes for table `booking_workspace`
--
ALTER TABLE `booking_workspace`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `confirmed2`
--
ALTER TABLE `confirmed2`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `loginid` (`loginid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking2`
--
ALTER TABLE `booking2`
  MODIFY `booking_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1045;

--
-- AUTO_INCREMENT for table `booking_email_id`
--
ALTER TABLE `booking_email_id`
  MODIFY `booking_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1045;

--
-- AUTO_INCREMENT for table `booking_ph_no`
--
ALTER TABLE `booking_ph_no`
  MODIFY `booking_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1045;

--
-- AUTO_INCREMENT for table `booking_workspace`
--
ALTER TABLE `booking_workspace`
  MODIFY `booking_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1045;

--
-- AUTO_INCREMENT for table `confirmed2`
--
ALTER TABLE `confirmed2`
  MODIFY `c_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
