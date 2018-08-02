-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 02, 2018 at 11:02 AM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nawalapitiyaKiosk`
--

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `counter_id` varchar(255) NOT NULL,
  `counter_name` varchar(255) DEFAULT NULL,
  `la_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `local_authority`
--

CREATE TABLE `local_authority` (
  `reference_id` varchar(255) NOT NULL,
  `la_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `response_id` bigint(20) NOT NULL,
  `age_category` varchar(255) DEFAULT NULL,
  `counter_id` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  `ethnicity` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `la_id` varchar(255) DEFAULT NULL,
  `question_id` varchar(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`response_id`, `age_category`, `counter_id`, `date`, `ethnicity`, `gender`, `la_id`, `question_id`, `response`) VALUES
(1, '20-35', 'c1', '2018.05.01.15.05.37', 'TAMILS', 'NULL', 'NAWALA001', 'q1', 'ms'),
(2, '20-35', 'c1', '2018.05.01.15.06.16', 'TAMILS', 'NULL', 'NAWALA001', 'q1', 'ms'),
(3, '20-35', 'c1', '2018.05.03.08.28.10', 'TAMILS', 'NULL', 'NAWALA001', 'q1', 'ms'),
(4, '20-35', 'c1', '2018.05.03.08.28.34', 'TAMILS', 'NULL', 'NAWALA001', 'q1', 'ms'),
(5, '20-35', 'c1', '2018.05.03.13.38.30', 'TAMILS', 'NULL', 'NAWALA001', 'q1', 'hs'),
(6, '20-35', 'c1', '2018.05.03.13.38.38', 'TAMILS', 'NULL', 'NAWALA001', 'q1', 'ms'),
(7, '20-35', 'c1', '2018.05.03.14.22.28', 'TAMILS', 'NULL', 'NAWALA001', 'q1', 'ms'),
(8, '20-35', 'c1', '2018.05.03.14.22.46', 'TAMILS', 'MALE', 'NAWALA001', 'q1', 'ls'),
(9, '20-35', 'c1', '2018.05.03.14.22.56', 'TAMILS', 'MALE', 'NAWALA001', 'q1', 'hs'),
(10, '20-35', 'c1', '2018.05.03.14.23.12', 'TAMILS', 'MALE', 'NAWALA001', 'q1', 'ms'),
(11, '20-35', 'c1', '2018.05.10.13.14.51', 'TAMILS', 'NULL', 'NAWALA001', 'q1', 'ls');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`counter_id`);

--
-- Indexes for table `local_authority`
--
ALTER TABLE `local_authority`
  ADD PRIMARY KEY (`reference_id`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`response_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `response`
--
ALTER TABLE `response`
  MODIFY `response_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
