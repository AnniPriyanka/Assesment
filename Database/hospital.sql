-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2021 at 12:56 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `au`
--

CREATE TABLE `au` (
  `customer_name` varchar(255) NOT NULL,
  `customer_id` varchar(18) NOT NULL,
  `customer_open_date` date NOT NULL,
  `last_consulted_date` date DEFAULT NULL,
  `vaccination_type` char(5) DEFAULT NULL,
  `doctor_consulted` char(255) DEFAULT NULL,
  `state` char(5) DEFAULT NULL,
  `country` char(5) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `active_customer` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `au`
--

INSERT INTO `au` (`customer_name`, `customer_id`, `customer_open_date`, `last_consulted_date`, `vaccination_type`, `doctor_consulted`, `state`, `country`, `date_of_birth`, `active_customer`) VALUES
('Jacob', '1256', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'VIC', 'AU', '1987-03-06', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `ind`
--

CREATE TABLE `ind` (
  `customer_name` varchar(255) NOT NULL,
  `customer_id` varchar(18) NOT NULL,
  `customer_open_date` date NOT NULL,
  `last_consulted_date` date DEFAULT NULL,
  `vaccination_type` char(5) DEFAULT NULL,
  `doctor_consulted` char(255) DEFAULT NULL,
  `state` char(5) DEFAULT NULL,
  `country` char(5) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `active_customer` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ind`
--

INSERT INTO `ind` (`customer_name`, `customer_id`, `customer_open_date`, `last_consulted_date`, `vaccination_type`, `doctor_consulted`, `state`, `country`, `date_of_birth`, `active_customer`) VALUES
('John', '123458', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'TN', 'IND', '1987-03-06', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `nyc`
--

CREATE TABLE `nyc` (
  `customer_name` varchar(255) NOT NULL,
  `customer_id` varchar(18) NOT NULL,
  `customer_open_date` date NOT NULL,
  `last_consulted_date` date DEFAULT NULL,
  `vaccination_type` char(5) DEFAULT NULL,
  `doctor_consulted` char(255) DEFAULT NULL,
  `state` char(5) DEFAULT NULL,
  `country` char(5) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `active_customer` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nyc`
--

INSERT INTO `nyc` (`customer_name`, `customer_id`, `customer_open_date`, `last_consulted_date`, `vaccination_type`, `doctor_consulted`, `state`, `country`, `date_of_birth`, `active_customer`) VALUES
('Matt', '12345', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'BOS', 'NYC', '1987-03-06', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `phil`
--

CREATE TABLE `phil` (
  `customer_name` varchar(255) NOT NULL,
  `customer_id` varchar(18) NOT NULL,
  `customer_open_date` date NOT NULL,
  `last_consulted_date` date DEFAULT NULL,
  `vaccination_type` char(5) DEFAULT NULL,
  `doctor_consulted` char(255) DEFAULT NULL,
  `state` char(5) DEFAULT NULL,
  `country` char(5) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `active_customer` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phil`
--

INSERT INTO `phil` (`customer_name`, `customer_id`, `customer_open_date`, `last_consulted_date`, `vaccination_type`, `doctor_consulted`, `state`, `country`, `date_of_birth`, `active_customer`) VALUES
('Mathew', '123459', '2010-10-12', '2012-10-13', ' MVD', ' Paul', 'WAS', 'PHIL', '1987-03-06', ' A');

-- --------------------------------------------------------

--
-- Table structure for table `usa`
--

CREATE TABLE `usa` (
  `customer_name` varchar(255) NOT NULL,
  `customer_id` varchar(18) NOT NULL,
  `customer_open_date` date NOT NULL,
  `last_consulted_date` date DEFAULT NULL,
  `vaccination_type` char(5) DEFAULT NULL,
  `doctor_consulted` char(255) DEFAULT NULL,
  `state` char(5) DEFAULT NULL,
  `country` char(5) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `active_customer` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usa`
--

INSERT INTO `usa` (`customer_name`, `customer_id`, `customer_open_date`, `last_consulted_date`, `vaccination_type`, `doctor_consulted`, `state`, `country`, `date_of_birth`, `active_customer`) VALUES
('Alex', '123457', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'SA', 'USA', '1987-03-06', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `customer_name` varchar(255) NOT NULL,
  `customer_id` varchar(18) NOT NULL,
  `customer_open_date` date NOT NULL,
  `last_consulted_date` date DEFAULT NULL,
  `vaccination_type` char(5) DEFAULT NULL,
  `doctor_consulted` char(255) DEFAULT NULL,
  `state` char(5) DEFAULT NULL,
  `country` char(5) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `active_customer` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`customer_name`, `customer_id`, `customer_open_date`, `last_consulted_date`, `vaccination_type`, `doctor_consulted`, `state`, `country`, `date_of_birth`, `active_customer`) VALUES
('Alex', '123457', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'SA', 'USA', '1987-03-06', 'A'),
('Jacob', '1256', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'VIC', 'AU', '1987-03-06', 'A'),
('John', '123458', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'TN', 'IND', '1987-03-06', 'A'),
('Mathew', '123459', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'WAS', 'PHIL', '1987-03-06', 'A'),
('Matt', '12345', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'BOS', 'NYC', '1987-03-06', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `au`
--
ALTER TABLE `au`
  ADD PRIMARY KEY (`customer_name`);

--
-- Indexes for table `ind`
--
ALTER TABLE `ind`
  ADD PRIMARY KEY (`customer_name`);

--
-- Indexes for table `nyc`
--
ALTER TABLE `nyc`
  ADD PRIMARY KEY (`customer_name`);

--
-- Indexes for table `phil`
--
ALTER TABLE `phil`
  ADD PRIMARY KEY (`customer_name`);

--
-- Indexes for table `usa`
--
ALTER TABLE `usa`
  ADD PRIMARY KEY (`customer_name`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`customer_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
