-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3325
-- Generation Time: Jun 18, 2021 at 02:14 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `motorsdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `motor_angles_values`
--

DROP TABLE IF EXISTS `motor_angles_values`;
CREATE TABLE `motor_angles_values` (
  `id` int(11) NOT NULL,
  `motor1` int(10) NOT NULL,
  `motor2` int(10) NOT NULL,
  `motor3` int(10) NOT NULL,
  `motor4` int(10) NOT NULL,
  `motor5` int(10) NOT NULL,
  `motor6` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `off_table`
--

DROP TABLE IF EXISTS `off_table`;
CREATE TABLE `off_table` (
  `id` int(11) NOT NULL,
  `is_off` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `on_table`
--

DROP TABLE IF EXISTS `on_table`;
CREATE TABLE `on_table` (
  `id` int(11) NOT NULL,
  `is_on` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `motor_angles_values`
--
ALTER TABLE `motor_angles_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `off_table`
--
ALTER TABLE `off_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `on_table`
--
ALTER TABLE `on_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `motor_angles_values`
--
ALTER TABLE `motor_angles_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `off_table`
--
ALTER TABLE `off_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `on_table`
--
ALTER TABLE `on_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
