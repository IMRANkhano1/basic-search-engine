-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 10:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `pass` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `userid`, `pass`) VALUES
(1, 111, 222),
(2, 222, 333);

-- --------------------------------------------------------

--
-- Table structure for table `save`
--

CREATE TABLE `save` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `keywords` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `save`
--

INSERT INTO `save` (`id`, `user_id`, `keywords`, `datetime`) VALUES
(1, '111', 'bb', '2023-02-07 14:24:39'),
(2, '111', 'barber', '2023-02-07 14:24:48'),
(3, '111', 'mechanic', '2023-02-07 14:25:11'),
(4, '111', 'electrician', '2023-02-07 14:25:22'),
(5, '111', 'mens barber', '2023-02-07 15:11:26'),
(6, '111', 'technicians', '2023-02-07 15:19:21'),
(7, '111', 'technicians', '2023-02-07 15:21:57'),
(8, '111', 'barber', '2023-02-07 15:37:37'),
(9, '111', 'profestion barber', '2023-02-07 15:39:21'),
(10, '111', 'mens barber pdkt', '2023-02-07 15:41:22'),
(11, '111', 'electrician-pdkt', '2023-02-07 15:42:42'),
(12, '111', 'electrician-pdkt', '2023-02-07 15:43:40'),
(13, '111', 'womens mens barber pdkt', '2023-02-07 16:18:10'),
(14, '111', 'hair specilist barber pdkt', '2023-02-07 16:19:58'),
(15, '111', 'machenic', '2023-02-07 16:23:32'),
(16, '222', 'kids barber pdkt', '2023-02-08 07:40:27'),
(17, '222', 'profestion barber', '2023-02-08 07:40:45'),
(18, '222', 'profestion barber', '2023-02-08 07:44:31'),
(19, '222', 'machenic', '2023-02-08 07:44:57'),
(20, '222', 'car mechanic pdkt', '2023-02-08 07:59:14'),
(21, '222', 'washing machine repair pdkt', '2023-02-08 09:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `searchpro`
--

CREATE TABLE `searchpro` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `About` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `searchpro`
--

INSERT INTO `searchpro` (`id`, `name`, `location`, `About`) VALUES
(1, 'profestion barber', 'pudukottai-north', 'contact-98785642245 '),
(2, 'mens barber pdkt', 'Pudukottai-south-4th', ' For contact-986745464734'),
(3, 'womens mens barber pdkt', 'Pudukottai-east', '  contact details-98675436534'),
(4, 'kids barber pdkt', 'Pudukottai-west-4th', ' For contact-764534758764'),
(5, 'hair specilist barber pdkt', 'Pudukottai-south-3rd', ' For contact-745464734'),
(6, 'electrician-pdkt', 'Pudukottai-south-4th', ' For contact-986745464734'),
(7, 'good rated electrian-pdkt', 'Pudukottai-north-4th', ' For home service contact-8675654434'),
(8, 'fridge electronics repair pdkt', 'Pudukottai-south', ' For contact-745464734'),
(9, 'electronic repair- pdkt', 'Pudukottai-south-2nd', ' For home service contact-986745464734'),
(10, 'For electronic repair pdkt', 'Pudukottai-south-4th', ' For contact-986745464734'),
(11, 'washing machine repair pdkt', 'Pudukottai-south-4th', ' For home service contact-986745464734'),
(12, 'machenic', 'Pudukottai-south-1st', ' For all place services availabe for contact-98674'),
(13, 'bike mechanic pdkt', 'Pudukottai-south-4th', ' For contact-986745464734'),
(14, 'car mechanic pdkt', 'Pudukottai-south-4th', ' For contact-986745464734');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `save`
--
ALTER TABLE `save`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searchpro`
--
ALTER TABLE `searchpro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `save`
--
ALTER TABLE `save`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
