-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 12:22 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flat`
--

-- --------------------------------------------------------

--
-- Table structure for table `available_sensors`
--

CREATE TABLE `available_sensors` (
  `id` int(11) NOT NULL,
  `sensor_id` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lm75`
--

CREATE TABLE `lm75` (
  `id` int(11) NOT NULL,
  `sensor_id` varchar(100) NOT NULL,
  `temperature` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lm75`
--

INSERT INTO `lm75` (`id`, `sensor_id`, `temperature`, `timestamp`) VALUES
(1, 'A', '25.0', '0000-00-00 00:00:00'),
(2, 'B', '23', '2022-04-05 11:05:28'),
(3, 'A', '26', '2022-04-05 11:13:37'),
(4, 'A', '27', '2022-04-05 11:13:37'),
(5, 'A', '90', '2022-04-08 10:11:03'),
(6, 'A', '26', '2022-04-08 10:11:20'),
(7, 'A', '85', '2022-04-08 10:12:15'),
(8, 'A', '50', '2022-04-08 10:43:31'),
(9, 'A', '94', '2022-04-08 10:43:34'),
(10, 'A', '26', '2022-04-08 10:43:37'),
(11, 'A', '95', '2022-04-08 11:53:19'),
(12, 'A', '31', '2022-04-08 11:53:21'),
(13, 'A', '51', '2022-04-08 11:53:24'),
(14, 'A', '74', '2022-04-08 11:53:24'),
(15, 'A', '23', '2022-04-08 11:53:24'),
(16, 'A', '67', '2022-04-08 11:53:24'),
(17, 'A', '51', '2022-04-08 11:53:24'),
(18, 'A', '87', '2022-04-08 11:53:24'),
(19, 'A', '24', '2022-04-08 11:53:25'),
(20, 'A', '73', '2022-04-08 11:53:25'),
(21, 'A', '62', '2022-04-08 11:53:25'),
(22, 'A', '4', '2022-04-08 11:53:25'),
(23, 'A', '36', '2022-04-08 11:53:27'),
(24, 'A', '40', '2022-04-08 11:53:29'),
(25, 'A', '71', '2022-04-08 11:53:31'),
(26, 'A', '79', '2022-04-08 11:53:33'),
(27, 'A', '15', '2022-04-08 11:53:35'),
(28, 'A', '20', '2022-04-08 11:53:36'),
(29, 'A', '2', '2022-04-08 11:53:38'),
(30, 'Balcony', '75', '2022-04-08 12:20:37'),
(31, 'Balcony', '55', '2022-04-08 12:20:39'),
(32, 'living room', '54', '2022-04-08 12:20:40'),
(33, 'Hall', '68', '2022-04-08 12:20:42'),
(34, 'Hall', '16', '2022-04-08 12:20:43'),
(35, 'Balcony', '75', '2022-04-08 12:20:43'),
(36, 'Hall', '87', '2022-04-08 12:20:43'),
(37, 'Balcony', '93', '2022-04-08 12:20:44'),
(38, 'living room', '48', '2022-04-08 12:20:44'),
(39, 'living room', '83', '2022-04-08 12:20:44'),
(40, 'Balcony', '57', '2022-04-08 12:20:45'),
(41, 'living room', '56', '2022-04-08 12:20:45'),
(42, 'living room', '98', '2022-04-08 12:20:45'),
(43, 'living room', '72', '2022-04-08 12:20:45'),
(44, 'Balcony', '16', '2022-04-08 12:20:46'),
(45, 'Balcony', '6', '2022-04-08 12:20:46'),
(46, 'Balcony', '15', '2022-04-08 12:20:46'),
(47, 'living room', '64', '2022-04-08 12:20:46'),
(48, 'Balcony', '87', '2022-04-08 12:20:46'),
(49, 'Hall', '69', '2022-04-08 12:20:47'),
(50, 'living room', '86', '2022-04-08 12:20:47'),
(51, 'Balcony', '79', '2022-04-08 12:20:47'),
(52, 'living room', '27', '2022-04-08 12:20:47'),
(53, 'Hall', '59', '2022-04-08 12:20:47'),
(54, 'living room', '41', '2022-04-08 12:20:47'),
(55, 'Hall', '91', '2022-04-08 12:20:47'),
(56, 'Hall', '71', '2022-04-08 12:20:47'),
(57, 'living room', '8', '2022-04-08 12:20:48'),
(58, 'Hall', '82', '2022-04-08 12:20:48'),
(59, 'Balcony', '95', '2022-04-09 07:19:47'),
(60, 'living room', '59', '2022-04-10 04:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `mq2`
--

CREATE TABLE `mq2` (
  `id` int(11) NOT NULL,
  `sensor_id` varchar(100) NOT NULL,
  `smoke` varchar(20) NOT NULL,
  `co` varchar(20) NOT NULL,
  `lpg` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mq2`
--

INSERT INTO `mq2` (`id`, `sensor_id`, `smoke`, `co`, `lpg`, `timestamp`) VALUES
(1, 'A', '1', '2', '3', '2022-04-05 11:14:24'),
(2, 'A', '4', '5', '6', '2022-04-05 11:14:24'),
(3, 'B', '7', '8', '9', '2022-04-05 11:14:43'),
(4, 'A', '10', '11', '12', '2022-04-05 11:14:43'),
(5, 'A', '', '1', '', '2022-04-08 07:45:28'),
(6, 'A', '', '19', '', '2022-04-08 07:45:49'),
(7, 'A', '', '50', '', '2022-04-08 07:45:53'),
(8, 'A', '', '3', '', '2022-04-08 07:46:06'),
(9, 'A', '79', '23', '64', '2022-04-08 10:11:03'),
(10, 'A', '62', '80', '50', '2022-04-08 10:11:20'),
(11, 'A', '24', '30', '48', '2022-04-08 10:12:15'),
(12, 'A', '41', '33', '64', '2022-04-08 10:43:31'),
(13, 'A', '87', '76', '67', '2022-04-08 10:43:34'),
(14, 'A', '45', '20', '88', '2022-04-08 10:43:37'),
(15, 'A', '27', '42', '93', '2022-04-08 11:53:19'),
(16, 'A', '62', '93', '62', '2022-04-08 11:53:21'),
(17, 'A', '84', '94', '99', '2022-04-08 11:53:24'),
(18, 'A', '77', '58', '70', '2022-04-08 11:53:24'),
(19, 'A', '50', '24', '97', '2022-04-08 11:53:24'),
(20, 'A', '58', '48', '22', '2022-04-08 11:53:24'),
(21, 'A', '53', '55', '1', '2022-04-08 11:53:24'),
(22, 'A', '48', '74', '32', '2022-04-08 11:53:24'),
(23, 'A', '81', '61', '12', '2022-04-08 11:53:25'),
(24, 'A', '98', '41', '60', '2022-04-08 11:53:25'),
(25, 'A', '97', '58', '74', '2022-04-08 11:53:25'),
(26, 'A', '23', '69', '2', '2022-04-08 11:53:25'),
(27, 'A', '95', '39', '57', '2022-04-08 11:53:27'),
(28, 'A', '33', '38', '41', '2022-04-08 11:53:29'),
(29, 'A', '34', '29', '7', '2022-04-08 11:53:31'),
(30, 'A', '97', '14', '12', '2022-04-08 11:53:33'),
(31, 'A', '33', '47', '72', '2022-04-08 11:53:35'),
(32, 'A', '34', '5', '38', '2022-04-08 11:53:36'),
(33, 'A', '2', '41', '96', '2022-04-08 11:53:38'),
(34, 'Hall', '62', '16', '56', '2022-04-08 12:20:37'),
(35, 'Hall', '77', '12', '35', '2022-04-08 12:20:39'),
(36, 'living room', '78', '24', '30', '2022-04-08 12:20:40'),
(37, 'Hall', '36', '58', '81', '2022-04-08 12:20:42'),
(38, 'living room', '5', '43', '100', '2022-04-08 12:20:43'),
(39, 'Hall', '74', '81', '49', '2022-04-08 12:20:43'),
(40, 'Hall', '64', '79', '48', '2022-04-08 12:20:43'),
(41, 'Hall', '65', '51', '10', '2022-04-08 12:20:44'),
(42, 'living room', '14', '24', '8', '2022-04-08 12:20:44'),
(43, 'living room', '44', '82', '22', '2022-04-08 12:20:44'),
(44, 'living room', '10', '48', '69', '2022-04-08 12:20:45'),
(45, 'living room', '40', '64', '96', '2022-04-08 12:20:45'),
(46, 'Balcony', '53', '97', '85', '2022-04-08 12:20:45'),
(47, 'living room', '92', '97', '20', '2022-04-08 12:20:45'),
(48, 'living room', '33', '22', '54', '2022-04-08 12:20:46'),
(49, 'living room', '9', '77', '37', '2022-04-08 12:20:46'),
(50, 'Hall', '79', '100', '43', '2022-04-08 12:20:46'),
(51, 'living room', '85', '61', '80', '2022-04-08 12:20:46'),
(52, 'Balcony', '84', '17', '67', '2022-04-08 12:20:46'),
(53, 'Hall', '18', '69', '31', '2022-04-08 12:20:47'),
(54, 'living room', '44', '99', '91', '2022-04-08 12:20:47'),
(55, 'living room', '63', '96', '21', '2022-04-08 12:20:47'),
(56, 'living room', '29', '76', '74', '2022-04-08 12:20:47'),
(57, 'Balcony', '23', '71', '49', '2022-04-08 12:20:47'),
(58, 'living room', '49', '85', '85', '2022-04-08 12:20:47'),
(59, 'Hall', '19', '100', '75', '2022-04-08 12:20:47'),
(60, 'Balcony', '91', '67', '12', '2022-04-08 12:20:47'),
(61, 'Hall', '62', '89', '82', '2022-04-08 12:20:48'),
(62, 'living room', '53', '25', '100', '2022-04-08 12:20:48'),
(63, 'Hall', '61', '90', '47', '2022-04-09 07:19:41'),
(64, 'Hall', '30', '68', '24', '2022-04-09 07:19:57'),
(65, 'Balcony', '16', '12', '29', '2022-04-10 04:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `mq7`
--

CREATE TABLE `mq7` (
  `id` int(11) NOT NULL,
  `sensor_id` varchar(100) NOT NULL,
  `co` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mq7`
--

INSERT INTO `mq7` (`id`, `sensor_id`, `co`, `timestamp`) VALUES
(1, 'A', '1', '2022-04-05 11:15:10'),
(2, 'A', '2', '2022-04-05 11:15:10'),
(3, 'B', '3', '2022-04-05 11:15:23'),
(4, 'B', '4', '2022-04-05 11:15:23'),
(5, 'A', '61', '2022-04-08 07:46:59'),
(6, 'A', '36', '2022-04-08 07:47:47'),
(7, 'A', '68', '2022-04-08 07:47:55'),
(8, 'A', '28', '2022-04-08 07:48:03'),
(9, 'A', '76', '2022-04-08 07:48:22'),
(10, 'A', '94', '2022-04-08 07:48:23'),
(11, 'A', '50', '2022-04-08 07:48:24'),
(12, 'A', '84', '2022-04-08 07:48:25'),
(13, 'A', '65', '2022-04-08 07:48:25'),
(14, 'A', '83', '2022-04-08 10:11:03'),
(15, 'A', '43', '2022-04-08 10:11:20'),
(16, 'A', '68', '2022-04-08 10:12:15'),
(17, 'A', '55', '2022-04-08 10:43:31'),
(18, 'A', '57', '2022-04-08 10:43:34'),
(19, 'A', '93', '2022-04-08 10:43:37'),
(20, 'A', '1', '2022-04-08 11:53:19'),
(21, 'A', '9', '2022-04-08 11:53:21'),
(22, 'A', '50', '2022-04-08 11:53:24'),
(23, 'A', '66', '2022-04-08 11:53:24'),
(24, 'A', '92', '2022-04-08 11:53:24'),
(25, 'A', '77', '2022-04-08 11:53:24'),
(26, 'A', '94', '2022-04-08 11:53:24'),
(27, 'A', '3', '2022-04-08 11:53:24'),
(28, 'A', '27', '2022-04-08 11:53:25'),
(29, 'A', '34', '2022-04-08 11:53:25'),
(30, 'A', '96', '2022-04-08 11:53:25'),
(31, 'A', '4', '2022-04-08 11:53:25'),
(32, 'A', '68', '2022-04-08 11:53:27'),
(33, 'A', '100', '2022-04-08 11:53:29'),
(34, 'A', '80', '2022-04-08 11:53:31'),
(35, 'A', '43', '2022-04-08 11:53:33'),
(36, 'A', '22', '2022-04-08 11:53:35'),
(37, 'A', '7', '2022-04-08 11:53:36'),
(38, 'A', '96', '2022-04-08 11:53:38'),
(39, 'living room', '72', '2022-04-08 12:20:37'),
(40, 'living room', '89', '2022-04-08 12:20:39'),
(41, 'Balcony', '61', '2022-04-08 12:20:40'),
(42, 'Balcony', '15', '2022-04-08 12:20:42'),
(43, 'living room', '7', '2022-04-08 12:20:43'),
(44, 'Balcony', '11', '2022-04-08 12:20:43'),
(45, 'living room', '15', '2022-04-08 12:20:43'),
(46, 'Hall', '32', '2022-04-08 12:20:44'),
(47, 'Balcony', '53', '2022-04-08 12:20:44'),
(48, 'Balcony', '9', '2022-04-08 12:20:44'),
(49, 'Hall', '43', '2022-04-08 12:20:45'),
(50, 'living room', '33', '2022-04-08 12:20:45'),
(51, 'living room', '89', '2022-04-08 12:20:45'),
(52, 'living room', '75', '2022-04-08 12:20:45'),
(53, 'Balcony', '14', '2022-04-08 12:20:46'),
(54, 'living room', '49', '2022-04-08 12:20:46'),
(55, 'Balcony', '77', '2022-04-08 12:20:46'),
(56, 'living room', '34', '2022-04-08 12:20:46'),
(57, 'living room', '38', '2022-04-08 12:20:46'),
(58, 'living room', '91', '2022-04-08 12:20:47'),
(59, 'living room', '62', '2022-04-08 12:20:47'),
(60, 'Hall', '86', '2022-04-08 12:20:47'),
(61, 'living room', '44', '2022-04-08 12:20:47'),
(62, 'Hall', '74', '2022-04-08 12:20:47'),
(63, 'Balcony', '2', '2022-04-08 12:20:47'),
(64, 'living room', '65', '2022-04-08 12:20:47'),
(65, 'Balcony', '25', '2022-04-08 12:20:47'),
(66, 'Balcony', '25', '2022-04-08 12:20:48'),
(67, 'Hall', '61', '2022-04-08 12:20:48'),
(68, 'living room', '14', '2022-04-09 07:19:44'),
(69, 'Balcony', '76', '2022-04-10 04:05:53');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `description`) VALUES
(2, 'superuser', NULL),
(11, 'user', NULL),
(12, 'demo', 'ddd');

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_users`
--

INSERT INTO `roles_users` (`user_id`, `role_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `active`, `confirmed_at`) VALUES
(1, 'Admin', NULL, 'admin', '$pbkdf2-sha512$25000$ao0xhpDSWss5h7AW4rzXug$i1jPSNHLiUQLok1Vb1Jq18PoRdF9QwK3UXZ4KOVXCgbmw19g73W3pmticT3Pozza4wmGmvzTO6OIP9TrNjJVKg', 1, NULL),
(156, NULL, NULL, 'hello@hello.com', '$pbkdf2-sha512$25000$7R1DSGltLcUYg5ByLiUkpA$NFYStJpZuPrFMG7mCCzgLz/YcmOY0JxtTpLUD0YWHIgcd4bz.AmrHh6ldeQH9oIuIwO38HaZi1eBaYFrOYxULQ', 1, NULL),
(158, NULL, NULL, 'user@user.com', '$pbkdf2-sha512$25000$7V0LoRSi9H4vpfTeW6v1Pg$s8y1Et6QVysVoIFzM4RYNNuVIXZHa.lZb0GU0NaBujcCcRY/uXQU8Gc/ei21Wqb/ITJeEl1ezUxPNHZHefzQWw', 1, NULL),
(159, NULL, NULL, 'demo@demo.com', '$pbkdf2-sha512$25000$yzlHKGWM8R6jdA7BOIew1g$S3/grAz5uSCQxoFfgveRfFQj2pDIVWjKyx0bKYdi9aH20cCQISLPCk90CEqUpmy4AGhFd5D05yUd9zRdYNcejw', 1, NULL),
(160, NULL, NULL, 'demo1@demo.com', '$pbkdf2-sha512$25000$MSbEmDMmZAwhBCCE0PpfKw$cHdc5CMrfP7mml7g29noBM8FqYghJTOjoO5AoBMZjO2mnZJLtotvT6I/KaIxFmbb/pQHWldvBH1Ubyu5phK0Aw', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `available_sensors`
--
ALTER TABLE `available_sensors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm75`
--
ALTER TABLE `lm75`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mq2`
--
ALTER TABLE `mq2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mq7`
--
ALTER TABLE `mq7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `available_sensors`
--
ALTER TABLE `available_sensors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lm75`
--
ALTER TABLE `lm75`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `mq2`
--
ALTER TABLE `mq2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `mq7`
--
ALTER TABLE `mq7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
