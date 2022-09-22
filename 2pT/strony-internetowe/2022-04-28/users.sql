-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2022 at 02:48 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `realPasswords`
--

CREATE TABLE `realPasswords` (
  `user_id` int(11) DEFAULT NULL,
  `realPassword` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realPasswords`
--

INSERT INTO `realPasswords` (`user_id`, `realPassword`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_polish_ci DEFAULT NULL,
  `surname` varchar(64) COLLATE utf8_polish_ci DEFAULT NULL,
  `login` varchar(16) COLLATE utf8_polish_ci DEFAULT NULL,
  `password` varchar(41) COLLATE utf8_polish_ci DEFAULT NULL,
  `permissions` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `login`, `password`, `permissions`) VALUES
(1, 'Joanna', 'Wabich', 'admin', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441', 1),
(2, 'Jan', 'Kowalski', 'user', '*D5D9F81F5542DE067FFF5FF7A4CA4BDD322C578F', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `withRealPass`
-- (See below for the actual view)
--
CREATE TABLE `withRealPass` (
`id` int(11)
,`name` varchar(64)
,`surname` varchar(64)
,`login` varchar(16)
,`password` varchar(41)
,`realPassword` varchar(256)
,`permissions` int(1)
);

-- --------------------------------------------------------

--
-- Structure for view `withRealPass`
--
DROP TABLE IF EXISTS `withRealPass`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `withRealPass`  AS   (select `id` AS `id`,`name` AS `name`,`surname` AS `surname`,`login` AS `login`,`password` AS `password`,`realPasswords`.`realPassword` AS `realPassword`,`permissions` AS `permissions` from (`users` join `realPasswords` on(`id` = `realPasswords`.`user_id`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `realPasswords`
--
ALTER TABLE `realPasswords`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `realPasswords`
--
ALTER TABLE `realPasswords`
  ADD CONSTRAINT `realPasswords_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
