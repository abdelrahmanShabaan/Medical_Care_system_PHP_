-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2023 at 02:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical_ser`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_type` enum('admin','super_admin') NOT NULL DEFAULT 'admin',
  `admin_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_type`, `admin_created_at`) VALUES
(1, 'abdelrahman', 'boodyelmasry6@gmail.com', '$2y$10$eepmIsXzwVgXebfddWBHbewhFWNBQNzyGP6XlMYI4SZUaCWz.yVa.', 'admin', '2023-02-15 16:01:45'),
(2, 'ahmed', 'ahmed@gmail.com', '$2y$10$OdTSLiXQdxLwaK.Z0BXFd.ljkJTiaEFf5TCLz1fLDZQL1sZCYAcyu', 'admin', '2023-02-15 16:02:14'),
(3, 'mido', 'mido@gmail.com', '464cef044995e362e3f3e76c63f0de3e5677ddeb', 'admin', '2023-02-15 19:57:38'),
(4, 'mohamed ', 'moh@gmail.com', '$2y$10$PB5eciqyFPvj.pg.MT8ok.iRaO3VxHKR21eUqD9ct/YeW10akCz7.', 'admin', '2023-02-15 20:17:03'),
(5, 'memo@gmail.com', 'memo@gmail.ocm', '$2y$10$BzT9gD3rL/GbExxQSKmKK.VZJd2JWLa6buj2JBUsKBRKPqGzbYB/y', 'admin', '2023-02-17 18:55:41'),
(6, 'mega', 'mega@gmail.com', '$2y$10$o2TquQaHiDwpnFj7/9OBo.UxiocT56AYEw8AAHuLKh5Rp8ioQ0ZFS', 'admin', '2023-02-17 18:56:27'),
(7, 'mega', 'mega@gmail.com', '$2y$10$89Mlt3yeggV1jB/TTtgPz.q5Tj26bhdCbZkd.Sd/e4rNLmTPLpssW', 'admin', '2023-02-17 18:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `city_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `city_created_at`) VALUES
(1, 'cairo', '2023-02-15 21:48:43'),
(2, 'giza', '2023-02-15 21:48:50'),
(3, 'october hosrry', '2023-02-15 21:48:53'),
(4, 'october', '2023-02-15 21:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_name` varchar(100) NOT NULL,
  `order_mobile` varchar(20) NOT NULL,
  `order_email` varchar(50) NOT NULL,
  `order_notes` text NOT NULL,
  `order_serv_id` int(11) NOT NULL,
  `order_city_id` int(11) NOT NULL,
  `order_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_name`, `order_mobile`, `order_email`, `order_notes`, `order_serv_id`, `order_city_id`, `order_created_at`) VALUES
(1, 'abdelrahman', '01023246811', 'abdelrahman@gmail.com', 'i want to make records', 2, 1, '2023-02-18 13:08:24'),
(3, 'mariem', '01022558899', 'mariem@gmail.com', 'hello , i want to make new records', 2, 1, '2023-02-18 13:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `serv_id` int(11) NOT NULL,
  `serv_name` varchar(100) NOT NULL,
  `serv_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serv_id`, `serv_name`, `serv_created_at`) VALUES
(2, 'medical care', '2023-02-18 12:27:00'),
(3, 'Home visits', '2023-02-18 13:07:31'),
(4, 'hospital reservation', '2023-02-18 13:07:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_serv_id` (`order_serv_id`),
  ADD KEY `order_city_id` (`order_city_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `serv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`order_serv_id`) REFERENCES `services` (`serv_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`order_city_id`) REFERENCES `cities` (`city_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
