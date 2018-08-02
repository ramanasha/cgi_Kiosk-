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
-- Database: `kataragamaKiosk`
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

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`counter_id`, `counter_name`, `la_id`) VALUES
('c1', 'Education', 'KATHIR1001'),
('c2', 'Development', 'KATHIR1001');

-- --------------------------------------------------------

--
-- Table structure for table `local_authority`
--

CREATE TABLE `local_authority` (
  `reference_id` varchar(255) NOT NULL,
  `la_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `local_authority`
--

INSERT INTO `local_authority` (`reference_id`, `la_name`) VALUES
('KATHIR1001', 'Kataragama');

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
(1, '20-35', 'c2', '2018.04.19.12.23.25', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(2, '20-35', 'c2', '2018.04.19.12.24.29', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(3, '20-35', 'c2', '2018.04.19.12.25.13', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(4, '20-35', 'c2', '2018.04.19.12.25.16', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(5, '20-35', 'c2', '2018.04.19.12.25.21', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(6, '20-35', 'c2', '2018.04.19.12.25.35', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(7, '20-35', 'c2', '2018.04.19.12.25.43', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(8, '20-35', 'c2', '2018.04.19.12.25.49', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(9, '20-35', 'c2', '2018.04.19.12.25.55', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ls'),
(10, '20-35', 'c2', '2018.04.19.12.26.08', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ls'),
(11, '20-35', 'c2', '2018.04.19.12.26.14', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(12, '20-35', 'c2', '2018.04.19.12.26.21', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(13, '20-35', 'c2', '2018.04.19.12.26.27', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(14, '20-35', 'c2', '2018.04.19.12.26.33', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ls'),
(15, '20-35', 'c2', '2018.04.19.12.26.55', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ls'),
(16, '20-35', 'c2', '2018.04.19.12.35.10', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(17, '20-35', 'c2', '2018.04.19.12.35.26', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ls'),
(18, '20-35', 'c2', '2018.04.19.12.35.34', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(19, '20-35', 'c2', '2018.04.19.12.56.01', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(20, '20-35', 'c2', '2018.04.19.12.59.06', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(21, '20-35', 'c2', '2018.04.19.12.59.13', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(22, '20-35', 'c2', '2018.04.19.12.59.34', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(23, '20-35', 'c2', '2018.04.19.12.59.41', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(24, '20-35', 'c2', '2018.04.19.12.59.48', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ls'),
(25, '20-35', 'c2', '2018.04.19.13.01.11', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', ''),
(26, '20-35', 'c2', '2018.04.19.13.01.46', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(27, '20-35', 'c2', '2018.04.19.14.04.27', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(28, '20-35', 'c2', '2018.04.19.14.12.16', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(29, '20-35', 'c2', '2018.04.19.14.51.00', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(30, '20-35', 'c2', '2018.04.19.15.04.01', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(31, '20-35', 'c2', '2018.04.19.15.12.26', 'TAMILS', 'male', 'KATHIR1001', 'q1', 'hs'),
(32, '20-35', 'c2', '2018.04.19.15.18.02', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(33, '20-35', 'c2', '2018.04.19.17.17.54', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(34, '20-35', 'c2', '2018.04.19.18.00.15', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(35, '20-35', 'c2', '2018.04.20.09.32.52', 'TAMILS', 'OTHER', 'KATHIR1001', 'q1', 'hs'),
(36, '20-35', 'c2', '2018.04.20.09.40.49', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(37, '20-35', 'c2', '2018.04.20.09.42.31', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'ls'),
(38, '20-35', 'c2', '2018.04.20.09.50.00', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'ms'),
(39, '20-35', 'c2', '2018.04.20.09.50.21', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'ms'),
(40, '20-35', 'c2', '2018.04.20.09.58.23', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(41, '20-35', 'c2', '2018.04.20.10.42.47', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'ls'),
(42, '20-35', 'c2', '2018.04.20.11.22.53', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(43, '20-35', 'c2', '2018.04.20.11.37.20', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(44, '20-35', 'c2', '2018.04.20.11.37.29', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(45, '20-35', 'c2', '2018.04.20.11.37.36', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ls'),
(46, '20-35', 'c2', '2018.04.20.11.49.22', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(47, '20-35', 'c2', '2018.04.20.11.49.58', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(48, '20-35', 'c2', '2018.04.20.11.50.08', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(49, '20-35', 'c2', '2018.04.20.11.50.16', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(50, '20-35', 'c2', '2018.04.20.11.50.48', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(51, '20-35', 'c2', '2018.04.20.11.50.59', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(52, '20-35', 'c2', '2018.04.20.11.52.07', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(53, '20-35', 'c2', '2018.04.20.11.52.12', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(54, '20-35', 'c2', '2018.04.20.11.52.22', 'TAMILS', 'OTHER', 'KATHIR1001', 'q1', 'ms'),
(55, '20-35', 'c2', '2018.04.20.11.52.31', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(56, '20-35', 'c2', '2018.04.20.11.52.33', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(57, '20-35', 'c2', '2018.04.20.11.54.05', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(58, '20-35', 'c2', '2018.04.20.12.45.20', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(59, '20-35', 'c2', '2018.04.20.12.54.30', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(60, '20-35', 'c2', '2018.04.20.13.05.01', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(61, '20-35', 'c2', '2018.04.20.13.05.24', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(62, '20-35', 'c2', '2018.04.20.13.06.54', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ls'),
(63, '20-35', 'c2', '2018.04.20.13.08.45', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ls'),
(64, '20-35', 'c2', '2018.04.20.13.13.20', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(65, '20-35', 'c2', '2018.04.20.13.13.20', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'ls'),
(66, '20-35', 'c2', '2018.04.20.14.17.32', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(67, '20-35', 'c2', '2018.04.20.14.17.33', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(68, '20-35', 'c2', '2018.04.20.14.17.34', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(69, '20-35', 'c2', '2018.04.23.09.50.33', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(70, '20-35', 'c2', '2018.04.23.09.50.33', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(71, '20-35', 'c2', '2018.04.23.09.50.31', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(72, '20-35', 'c2', '2018.04.23.09.50.31', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(73, '20-35', 'c1', '2018.04.24.12.03.35', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(74, '20-35', 'c1', '2018.04.24.12.03.51', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(75, '20-35', 'c1', '2018.04.24.12.04.00', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(76, '20-35', 'c1', '2018.04.24.12.12.30', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(77, '20-35', 'c1', '2018.04.24.14.01.05', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(78, '20-35', 'c1', '2018.04.24.14.01.33', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(79, '20-35', 'c1', '2018.04.24.15.19.03', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(80, '20-35', 'c1', '2018.04.24.15.19.13', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(81, '20-35', 'c1', '2018.04.24.15.19.22', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(82, '20-35', 'c1', '2018.04.24.15.20.06', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(83, '20-35', 'c1', '2018.04.24.15.20.10', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(84, '20-35', 'c1', '2018.04.24.15.20.16', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(85, '20-35', 'c1', '2018.04.24.15.20.24', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(86, '20-35', 'c1', '2018.04.24.15.37.23', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(87, '20-35', 'c1', '2018.04.24.15.37.24', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(88, '20-35', 'c1', '2018.04.24.15.37.27', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(89, '20-35', 'c1', '2018.04.24.15.37.28', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(90, '20-35', 'c1', '2018.04.24.15.37.28', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(91, '20-35', 'c1', '2018.04.24.15.37.29', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(92, '20-35', 'c1', '2018.04.24.15.37.33', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(93, '20-35', 'c1', '2018.04.24.15.37.35', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(94, '20-35', 'c1', '2018.04.24.15.37.35', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(95, '20-35', 'c1', '2018.04.24.15.37.35', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(96, '20-35', 'c1', '2018.04.24.15.37.35', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(97, '20-35', 'c1', '2018.04.24.15.37.36', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(98, '20-35', 'c1', '2018.04.24.15.37.36', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(99, '20-35', 'c1', '2018.04.24.15.37.43', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(100, '20-35', 'c1', '2018.04.24.15.37.43', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(101, '20-35', 'c1', '2018.04.24.15.37.43', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(102, '20-35', 'c1', '2018.04.24.15.37.43', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(103, '20-35', 'c1', '2018.04.24.15.37.43', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(104, '20-35', 'c1', '2018.04.24.15.37.43', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(105, '20-35', 'c1', '2018.04.25.10.01.53', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(106, '20-35', 'c1', '2018.04.25.10.08.42', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(107, '20-35', 'c1', '2018.04.25.10.08.50', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(108, '20-35', 'c1', '2018.04.25.10.08.59', 'TAMILS', 'OTHER', 'KATHIR1001', 'q1', 'hs'),
(109, '20-35', 'c1', '2018.04.25.10.09.02', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(110, '20-35', 'c1', '2018.04.25.10.09.24', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(111, '20-35', 'c1', '2018.04.25.10.09.52', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(112, '20-35', 'c1', '2018.04.25.10.10.17', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(113, '20-35', 'c1', '2018.04.25.10.12.01', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(114, '20-35', 'c1', '2018.04.25.15.28.37', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(115, '20-35', 'c1', '2018.04.26.10.50.48', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(116, '20-35', 'c1', '2018.04.26.10.51.05', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(117, '20-35', 'c1', '2018.04.26.10.51.52', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(118, '20-35', 'c1', '2018.04.26.11.28.24', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'hs'),
(119, '20-35', 'c1', '2018.04.26.12.58.50', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(120, '20-35', 'c1', '2018.04.26.14.37.14', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(121, '20-35', 'c1', '2018.04.26.14.37.28', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(122, '20-35', 'c1', '2018.04.26.14.49.37', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(123, '20-35', 'c1', '2018.04.26.16.00.49', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(124, '20-35', 'c1', '2018.04.27.11.23.54', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(125, '20-35', 'c1', '2018.04.27.11.34.33', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(126, '20-35', 'c1', '2018.04.27.12.28.02', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(127, '20-35', 'c1', '2018.04.27.12.28.10', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(128, '20-35', 'c1', '2018.04.27.15.18.17', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(129, '20-35', 'c1', '2018.04.30.15.46.17', 'TAMILS', 'OTHER', 'KATHIR1001', 'q1', 'hs'),
(130, '20-35', 'c1', '2018.04.30.18.47.49', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(131, '20-35', 'c1', '2018.05.01.10.38.17', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(132, '20-35', 'c1', '2018.05.01.10.39.21', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(133, '20-35', 'c1', '2018.05.01.11.13.57', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(134, '20-35', 'c1', '2018.05.01.12.41.20', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ls'),
(135, '20-35', 'c1', '2018.05.01.13.53.31', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(136, '20-35', 'c1', '2018.05.01.15.51.03', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(137, '20-35', 'c1', '2018.05.01.15.51.14', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(138, '20-35', 'c1', '2018.05.01.15.51.23', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(139, '20-35', 'c1', '2018.05.01.15.51.35', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(140, '20-35', 'c1', '2018.05.01.15.51.46', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(141, '20-35', 'c1', '2018.05.01.17.16.02', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(142, '20-35', 'c1', '2018.05.02.08.56.48', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(143, '20-35', 'c1', '2018.05.02.08.56.57', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(144, '20-35', 'c1', '2018.05.02.08.57.08', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(145, '20-35', 'c1', '2018.05.02.10.32.58', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(146, '20-35', 'c1', '2018.05.02.10.34.42', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(147, '20-35', 'c1', '2018.05.02.10.35.58', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(148, '20-35', 'c1', '2018.05.02.10.36.17', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(149, '20-35', 'c1', '2018.05.02.10.47.11', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(150, '20-35', 'c1', '2018.05.02.10.47.24', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(151, '20-35', 'c1', '2018.05.02.14.07.22', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(152, '20-35', 'c1', '2018.05.02.14.57.27', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ls'),
(153, '20-35', 'c1', '2018.05.02.14.57.39', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ms'),
(154, '20-35', 'c1', '2018.05.02.14.57.57', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(155, '20-35', 'c1', '2018.05.02.14.58.48', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(156, '20-35', 'c1', '2018.05.04.09.54.52', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(157, '20-35', 'c1', '2018.05.04.10.04.39', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(158, '20-35', 'c1', '2018.05.04.10.22.25', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(159, '20-35', 'c1', '2018.05.04.10.22.34', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(160, '20-35', 'c1', '2018.05.04.10.46.20', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(161, '20-35', 'c1', '2018.05.04.11.18.17', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(162, '20-35', 'c1', '2018.05.04.11.44.20', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(163, '20-35', 'c1', '2018.05.10.11.50.41', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(164, '20-35', 'c1', '2018.05.10.11.50.58', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(165, '20-35', 'c1', '2018.05.10.11.51.00', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(166, '20-35', 'c1', '2018.05.10.11.51.00', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(167, '20-35', 'c1', '2018.05.10.13.52.51', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(168, '20-35', 'c1', '2018.05.10.14.04.41', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(169, '20-35', 'c1', '2018.05.10.15.42.11', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(170, '20-35', 'c1', '2018.05.11.09.59.30', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(171, '20-35', 'c1', '2018.05.11.10.12.05', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(172, '20-35', 'c1', '2018.05.11.11.22.54', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(173, '20-35', 'c1', '2018.05.11.11.23.05', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(174, '20-35', 'c1', '2018.05.11.12.17.30', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(175, '20-35', 'c1', '2018.05.11.12.20.36', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'ms'),
(176, '20-35', 'c1', '2018.05.11.12.20.46', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(177, '20-35', 'c1', '2018.05.11.13.57.13', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(178, '20-35', 'c1', '2018.05.11.14.07.15', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(179, '20-35', 'c1', '2018.05.14.09.16.30', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(180, '20-35', 'c1', '2018.05.14.09.16.30', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(181, '20-35', 'c1', '2018.05.14.09.16.30', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(182, '20-35', 'c1', '2018.05.14.09.49.53', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(183, '20-35', 'c1', '2018.05.14.10.07.09', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(184, '20-35', 'c1', '2018.05.14.10.11.51', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(185, '20-35', 'c1', '2018.05.14.10.31.41', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(186, '20-35', 'c1', '2018.05.14.12.09.58', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(187, '20-35', 'c1', '2018.05.14.12.35.03', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(188, '20-35', 'c1', '2018.05.14.13.07.59', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(189, '20-35', 'c1', '2018.05.14.14.34.45', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(190, '20-35', 'c1', '2018.05.14.15.11.02', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(191, '20-35', 'c1', '2018.05.14.15.26.57', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(192, '20-35', 'c1', '2018.05.14.15.29.34', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(193, '20-35', 'c1', '2018.05.14.15.39.06', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(194, '20-35', 'c1', '2018.05.14.15.41.15', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(195, '20-35', 'c1', '2018.05.15.10.23.09', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(196, '20-35', 'c1', '2018.05.15.10.23.33', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(197, '20-35', 'c1', '2018.05.15.10.24.27', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(198, '20-35', 'c1', '2018.05.15.12.13.25', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(199, '20-35', 'c1', '2018.05.15.12.14.01', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(200, '20-35', 'c1', '2018.05.16.08.59.34', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(201, '20-35', 'c1', '2018.05.16.08.59.55', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(202, '20-35', 'c1', '2018.05.16.09.00.16', 'TAMILS', 'OTHER', 'KATHIR1001', 'q1', 'ms'),
(203, '20-35', 'c1', '2018.05.16.09.00.36', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(204, '20-35', 'c1', '2018.05.16.09.03.19', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(205, '20-35', 'c1', '2018.05.16.09.18.18', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(206, '20-35', 'c1', '2018.05.16.09.44.32', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(207, '20-35', 'c1', '2018.05.16.09.57.51', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(208, '20-35', 'c1', '2018.05.16.10.11.11', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(209, '20-35', 'c1', '2018.05.16.10.50.37', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(210, '20-35', 'c1', '2018.05.16.11.39.02', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(211, '20-35', 'c1', '2018.05.16.11.49.12', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(212, '20-35', 'c1', '2018.05.16.11.52.40', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(213, '20-35', 'c1', '2018.05.17.09.10.38', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(214, '20-35', 'c1', '2018.05.17.10.14.08', 'TAMILS', 'OTHER', 'KATHIR1001', 'q1', 'hs'),
(215, '20-35', 'c1', '2018.05.17.10.48.56', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(216, '20-35', 'c1', '2018.05.17.10.50.07', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(217, '20-35', 'c1', '2018.05.17.11.54.05', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(218, '20-35', 'c1', '2018.05.17.14.27.24', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(219, '20-35', 'c1', '2018.05.17.14.27.25', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(220, '20-35', 'c1', '2018.05.18.12.20.41', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(221, '20-35', 'c1', '2018.05.21.09.54.07', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(222, '20-35', 'c1', '2018.05.21.09.54.17', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(223, '20-35', 'c1', '2018.05.21.11.19.32', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(224, '20-35', 'c1', '2018.05.21.11.25.28', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(225, '20-35', 'c1', '2018.05.21.11.45.24', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(226, '20-35', 'c1', '2018.05.21.13.41.54', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(227, '20-35', 'c1', '2018.05.25.09.43.29', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(228, '20-35', 'c1', '2018.06.01.12.18.30', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(229, '20-35', 'c1', '2018.06.01.12.18.28', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(230, '20-35', 'c1', '2018.06.01.12.18.28', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(231, '20-35', 'c1', '2018.06.06.08.56.54', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'ms'),
(232, '20-35', 'c1', '2018.06.06.08.57.32', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(233, '20-35', 'c1', '2018.06.13.09.04.02', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(234, '20-35', 'c1', '2018.06.19.10.40.23', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(235, '20-35', 'c1', '2018.06.19.10.40.38', 'TAMILS', 'FEMALE', 'KATHIR1001', 'q1', 'ls'),
(236, '20-35', 'c1', '2018.06.19.10.40.48', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(237, '20-35', 'c1', '2018.06.19.10.40.59', 'TAMILS', 'OTHER', 'KATHIR1001', 'q1', 'ls'),
(238, '20-35', 'c1', '2018.06.19.12.01.52', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(239, '20-35', 'c1', '2018.06.20.08.50.34', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(240, '20-35', 'c1', '2018.06.20.09.37.37', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(241, '20-35', 'c1', '2018.06.20.09.40.45', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(242, '20-35', 'c1', '2018.06.20.10.26.39', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(243, '20-35', 'c1', '2018.06.20.10.30.34', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(244, '20-35', 'c1', '2018.06.20.12.58.21', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(245, '20-35', 'c1', '2018.06.20.13.15.13', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(246, '20-35', 'c1', '2018.06.20.14.55.04', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(247, '20-35', 'c1', '2018.06.20.14.55.14', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(248, '20-35', 'c1', '2018.06.20.14.55.23', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(249, '20-35', 'c1', '2018.06.21.10.34.16', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(250, '20-35', 'c1', '2018.06.21.14.22.34', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(251, '20-35', 'c1', '2018.06.21.14.24.23', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(252, '20-35', 'c1', '2018.06.21.14.24.31', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ls'),
(253, '20-35', 'c1', '2018.06.26.08.26.35', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(254, '20-35', 'c1', '2018.06.26.10.01.31', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(255, '20-35', 'c1', '2018.06.26.10.01.40', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(256, '20-35', 'c1', '2018.06.26.10.01.49', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(257, '20-35', 'c1', '2018.07.05.08.50.08', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(258, '20-35', 'c1', '2018.07.24.14.12.57', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs');

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
  MODIFY `response_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
