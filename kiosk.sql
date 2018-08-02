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
-- Database: `kiosk`
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
('c1', 'Education', 'BAL10001'),
('c2', 'Development', 'BAL10001');

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
('BAL10001', 'Balangoda');

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
(1, '20-35', NULL, '2018.04.16.15.19.11', 'TAMILS', 'FEMALE', NULL, 'q1', 'hs'),
(2, '20-35', NULL, '2018.04.16.17.00.56', 'TAMILS', 'FEMALE', NULL, 'q1', 'hs'),
(3, '20-35', NULL, '2018.04.16.17.02.04', 'TAMILS', 'FEMALE', NULL, 'q1', 'ms'),
(4, '20-35', NULL, '2018.04.16.17.03.03', 'TAMILS', 'FEMALE', NULL, 'q1', 'hs'),
(5, '20-35', NULL, '2018.04.16.17.06.33', 'TAMILS', 'FEMALE', NULL, 'q1', 'hs'),
(6, '20-35', NULL, '2018.04.16.17.11.11', 'TAMILS', 'FEMALE', NULL, 'q1', 'hs'),
(7, '20-35', NULL, '2018.04.16.17.21.40', 'TAMILS', 'FEMALE', NULL, 'q1', 'hs'),
(8, '20-35', NULL, '2018.04.17.12.08.01', 'TAMILS', 'FEMALE', NULL, 'q1', 'hs'),
(9, '20-35', 'c1', '2018.04.17.14.29.09', 'TAMILS', 'FEMALE', NULL, 'q1', 'hs'),
(10, '20-35', 'c1', '2018.04.17.14.33.08', 'TAMILS', 'FEMALE', NULL, 'q1', 'hs'),
(11, '20-35', 'c1', '2018.04.17.14.34.51', 'TAMILS', 'FEMALE', NULL, 'q1', 'ms'),
(12, '20-35', 'c1', '2018.04.17.14.36.10', 'TAMILS', 'FEMALE', NULL, 'q1', 'hs'),
(13, '20-35', 'c1', '2018.04.17.14.36.40', 'TAMILS', 'FEMALE', NULL, 'q1', 'ms'),
(14, '20-35', 'c1', '2018.04.17.15.20.03', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(15, '20-35', NULL, '2018.04.17.16.24.29', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(16, '20-35', 'c2', '2018.04.17.16.26.59', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'ms'),
(17, '20-35', NULL, '2018.04.19.11.47.45', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(18, '20-35', NULL, '2018.04.19.11.54.14', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(19, '20-35', NULL, '2018.04.19.19.47.30', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(20, '20-35', NULL, '2018.04.20.13.35.07', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(21, '20-35', NULL, '2018.04.20.13.35.17', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(22, '20-35', NULL, '2018.04.21.05.08.17', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(23, '20-35', NULL, '2018.04.21.08.44.54', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ms'),
(24, '20-35', NULL, '2018.04.23.21.07.54', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(25, '20-35', NULL, '2018.04.23.21.08.09', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(26, '20-35', NULL, '2018.04.24.11.58.22', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(27, '20-35', NULL, '2018.04.24.11.58.22', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ms'),
(28, '20-35', NULL, '2018.04.24.11.58.23', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(29, '20-35', NULL, '2018.04.24.11.58.30', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(30, '20-35', NULL, '2018.04.24.12.04.38', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(31, '20-35', NULL, '2018.04.25.09.04.52', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(32, '20-35', NULL, '2018.04.25.09.06.30', 'TAMILS', 'OTHER', 'BAL10001', 'q1', 'ms'),
(33, '20-35', NULL, '2018.04.25.09.07.02', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(34, '20-35', NULL, '2018.04.25.09.07.02', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(35, '20-35', NULL, '2018.04.25.09.07.02', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(36, '20-35', NULL, '2018.04.25.09.14.45', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(37, '20-35', NULL, '2018.04.25.09.15.18', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(38, '20-35', NULL, '2018.04.25.09.22.04', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'ls'),
(39, '20-35', NULL, '2018.04.25.09.23.11', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(40, '20-35', NULL, '2018.04.25.09.34.22', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'ms'),
(41, '20-35', NULL, '2018.04.25.09.34.33', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'ms'),
(42, '20-35', NULL, '2018.04.25.09.34.50', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(43, '20-35', NULL, '2018.04.25.09.35.03', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(44, '20-35', NULL, '2018.04.25.09.35.12', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(45, '20-35', NULL, '2018.04.25.09.35.24', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(46, '20-35', NULL, '2018.04.25.09.35.34', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(47, '20-35', NULL, '2018.04.25.09.35.44', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(48, '20-35', NULL, '2018.04.25.09.54.27', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(49, '20-35', NULL, '2018.04.25.10.38.22', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(50, '20-35', NULL, '2018.04.25.10.41.33', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(51, '20-35', NULL, '2018.04.25.11.57.51', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(52, '20-35', NULL, '2018.04.25.12.37.14', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(53, '20-35', NULL, '2018.04.25.12.37.16', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(54, '20-35', NULL, '2018.04.25.12.40.24', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(55, '20-35', NULL, '2018.04.25.12.41.42', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'ms'),
(56, '20-35', NULL, '2018.04.25.12.42.33', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ms'),
(57, '20-35', NULL, '2018.04.25.12.43.41', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(58, '20-35', NULL, '2018.04.25.12.45.04', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(59, '20-35', NULL, '2018.04.25.12.45.16', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(60, '20-35', NULL, '2018.04.25.12.45.30', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(61, '20-35', NULL, '2018.04.25.12.45.41', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(62, '20-35', NULL, '2018.04.25.12.45.52', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(63, '20-35', NULL, '2018.04.25.12.46.04', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(64, '20-35', NULL, '2018.04.25.12.46.13', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(65, '20-35', NULL, '2018.04.25.12.46.26', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(66, '20-35', NULL, '2018.04.25.12.47.33', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(67, '20-35', NULL, '2018.04.25.12.48.08', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(68, '20-35', NULL, '2018.04.25.13.06.24', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ms'),
(69, '20-35', NULL, '2018.04.25.13.06.35', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(70, '20-35', NULL, '2018.04.25.13.06.50', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(71, '20-35', NULL, '2018.04.25.13.19.14', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(72, '20-35', NULL, '2018.04.25.13.19.49', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(73, '20-35', NULL, '2018.04.25.14.02.25', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(74, '20-35', NULL, '2018.04.26.14.34.51', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(75, '20-35', NULL, '2018.04.26.14.35.50', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(76, '20-35', NULL, '2018.04.26.15.09.50', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(77, '20-35', NULL, '2018.04.26.15.11.38', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(78, '20-35', NULL, '2018.04.26.15.52.16', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(79, '20-35', NULL, '2018.04.26.15.54.43', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(80, '20-35', NULL, '2018.04.27.09.28.33', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ms'),
(81, '20-35', NULL, '2018.04.27.09.28.39', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(82, '20-35', NULL, '2018.04.27.09.28.55', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(83, '20-35', 'c2', '2018.05.01.09.36.23', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(84, '20-35', 'c2', '2018.05.01.09.48.42', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'ms'),
(85, '20-35', 'c2', '2018.05.01.10.46.45', 'TAMILS', 'MALE', 'KATHIR1001', 'q1', 'hs'),
(86, '20-35', 'c2', '2018.05.02.15.42.40', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(87, '20-35', 'c2', '2018.05.02.15.43.13', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(88, '20-35', 'c2', '2018.05.03.09.49.03', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(89, '20-35', 'c2', '2018.05.03.09.51.42', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'ms'),
(90, '20-35', 'c2', '2018.05.03.09.51.44', 'TAMILS', 'NULL', 'KATHIR1001', 'q1', 'hs'),
(91, '20-35', 'c1', '2018.05.03.11.17.06', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(92, '20-35', 'c1', '2018.05.03.11.17.12', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(93, '20-35', NULL, '2018.05.03.13.58.58', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'ms'),
(94, '20-35', NULL, '2018.05.03.14.00.40', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(95, '20-35', 'C10', '2018.05.03.14.29.03', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(96, '20-35', 'C10', '2018.05.03.14.29.16', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'ms'),
(97, '20-35', 'c1', '2018.05.03.14.38.18', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(98, '20-35', 'c1', '2018.05.03.14.38.29', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'ms'),
(99, '20-35', 'C10', '2018.05.04.09.00.19', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'ms'),
(100, '20-35', 'C10', '2018.05.04.09.09.30', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(101, '20-35', 'C10', '2018.05.04.09.15.12', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(102, '20-35', 'C10', '2018.05.04.09.16.02', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'ms'),
(103, '20-35', 'C10', '2018.05.04.09.17.36', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(104, '20-35', 'C10', '2018.05.04.09.23.24', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(105, '20-35', 'C10', '2018.05.04.09.28.41', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(106, '20-35', NULL, '2018.05.04.11.36.48', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(107, '20-35', NULL, '2018.05.04.12.05.35', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(108, '20-35', 'c1', '2018.05.14.12.12.03', 'TAMILS', 'OTHER', 'BAL10001', 'q1', 'hs'),
(109, '20-35', 'c1', '2018.05.14.12.13.26', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(110, '20-35', 'c1', '2018.05.17.11.00.28', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(111, '20-35', 'c1', '2018.05.17.11.00.42', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(112, '20-35', 'c1', '2018.05.17.11.00.58', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(113, '20-35', 'c1', '2018.05.17.11.06.28', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(114, '20-35', 'c1', '2018.05.17.11.14.15', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(115, '20-35', 'c1', '2018.05.17.11.16.23', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(116, '20-35', 'c1', '2018.05.17.11.16.36', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ms'),
(117, '20-35', 'c1', '2018.05.17.11.16.46', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(118, '20-35', 'c1', '2018.05.17.11.21.49', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ms'),
(119, '20-35', 'c1', '2018.05.17.11.30.21', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ms'),
(120, '20-35', 'c1', '2018.05.17.11.31.51', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(121, '20-35', 'c1', '2018.05.17.11.32.08', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(122, '20-35', 'c1', '2018.05.17.11.50.26', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(123, '20-35', 'c1', '2018.05.17.11.50.39', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(124, '20-35', 'c1', '2018.06.01.10.10.32', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(125, '20-35', 'c1', '2018.06.01.10.10.34', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(126, '20-35', 'c1', '2018.06.01.10.14.07', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(127, '20-35', 'c1', '2018.06.01.10.14.16', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(128, '20-35', 'c1', '2018.06.01.10.15.00', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(129, '20-35', 'c1', '2018.06.01.10.15.10', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(130, '20-35', 'c1', '2018.06.01.10.15.20', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(131, '20-35', 'c1', '2018.06.01.10.15.34', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(132, '20-35', 'c1', '2018.06.01.11.01.47', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(133, '20-35', 'c1', '2018.06.01.11.01.55', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(134, '20-35', 'c1', '2018.06.01.11.02.04', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(135, '20-35', 'c1', '2018.06.01.18.48.05', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(136, '20-35', 'c1', '2018.06.02.13.21.21', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(137, '20-35', 'c1', '2018.07.25.09.08.12', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(138, '20-35', 'c1', '2018.07.25.09.08.50', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(139, '20-35', 'c1', '2018.07.25.09.11.43', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ms'),
(140, '20-35', 'c1', '2018.07.25.09.11.56', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(141, '20-35', 'c1', '2018.07.25.09.12.07', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(142, '20-35', 'c1', '2018.07.25.09.55.14', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(143, '20-35', 'c1', '2018.07.25.09.56.40', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ms'),
(144, '20-35', 'c1', '2018.07.25.09.57.30', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(145, '20-35', 'c1', '2018.07.25.09.57.39', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(146, '20-35', 'c1', '2018.07.25.10.33.36', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(147, '20-35', 'c1', '2018.07.25.10.33.51', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(148, '20-35', 'c1', '2018.07.25.10.38.10', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs'),
(149, '20-35', 'c1', '2018.07.25.11.23.00', 'TAMILS', 'FEMALE', 'BAL10001', 'q1', 'hs'),
(150, '20-35', 'c1', '2018.07.25.11.23.37', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'ms'),
(151, '20-35', 'c1', '2018.07.25.11.27.44', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(152, '20-35', 'c1', '2018.07.25.11.36.23', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(153, '20-35', 'c1', '2018.07.25.11.36.24', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(154, '20-35', 'c1', '2018.07.25.11.36.26', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(155, '20-35', 'c1', '2018.07.25.11.37.58', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(156, '20-35', 'c1', '2018.07.25.11.37.58', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(157, '20-35', 'c1', '2018.07.25.11.37.59', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(158, '20-35', 'c1', '2018.07.25.11.38.00', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(159, '20-35', 'c1', '2018.07.26.09.22.30', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(160, '20-35', 'c1', '2018.07.26.09.22.33', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(161, '20-35', 'c1', '2018.07.26.09.30.37', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(162, '20-35', 'c1', '2018.07.26.09.45.56', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(163, '20-35', 'c1', '2018.07.26.09.46.14', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ms'),
(164, '20-35', 'c1', '2018.07.30.10.50.27', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(165, '20-35', 'c1', '2018.07.30.10.50.31', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ms'),
(166, '20-35', 'c1', '2018.07.30.10.56.59', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ls'),
(167, '20-35', 'c1', '2018.07.30.11.10.51', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(168, '20-35', 'c1', '2018.07.30.11.39.47', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(169, '20-35', 'c1', '2018.07.30.13.41.10', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(170, '20-35', 'c1', '2018.07.30.13.41.24', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'ms'),
(171, '20-35', 'c1', '2018.07.30.13.41.42', 'TAMILS', 'NULL', 'BAL10001', 'q1', 'hs'),
(172, '20-35', 'c1', '2018.07.30.13.42.01', 'TAMILS', 'MALE', 'BAL10001', 'q1', 'hs');

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
  MODIFY `response_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
