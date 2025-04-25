-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 25, 2025 at 05:56 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geno`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `num1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `num2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `num3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `num4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `num5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `num6` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `num7` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `num9` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num9`) VALUES
(7, 'reading', 'writing ', 'cooking', 'training', 'sing', 'draw', 'drive', 'listen'),
(6, 'sdew', 'wdefw', 'dce', 'dce', 'dweef', 'dfer', 'dwef', 'fe4rfr'),
(8, 'reading', 'writing ', 'cooking', 'training', 'sing', 'draw', 'drive', 'listen'),
(9, 'readingfwef', 'writing few', 'cooking', 'trainingfer', 'sing', 'drawvd', 'drive', 'listendsvvgdv');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `fullname`, `email`, `username`, `password`) VALUES
(3, 'genosan', 'fdgdh@gmail.com', 'fdgdh', '$2y$10$fRHVMG2nvDbUB6e03dzKieLtDxZNuOCWb9Jk8efuByj.El4Vv6j2a'),
(2, 'geno', 'gowry2406@gmail.com', 'gowry2406', '$2y$10$mDB.vs11uNTYxxMYj73dNet6oJfV6MqoCk/DVCQ/U.ljsZ6gCKSbO');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
