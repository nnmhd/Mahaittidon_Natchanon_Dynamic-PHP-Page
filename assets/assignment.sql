-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 15, 2024 at 04:16 AM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` smallint UNSIGNED NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(75) NOT NULL,
  `job_id` int UNSIGNED NOT NULL,
  `image` varchar(50) NOT NULL,
  `thumb` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `fname`, `lname`, `job_id`, `image`, `thumb`) VALUES
(1, 'Mary', 'Smith', 1, 'person1.jpg', 'person1th.jpg'),
(2, 'Bob', 'Delgado', 2, 'person2.jpg', 'person2th.jpg'),
(3, 'Emily', 'Strange', 2, 'person3.jpg', 'person3th.jpg'),
(4, 'Greg', 'Murphy', 3, 'person4.jpg', 'person4th.jpg'),
(5, 'Wanda', 'Zymote', 3, 'person5.jpg', 'person5th.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `job_desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `job_desc`) VALUES
(1, 'CEO', 'Oversees company vision, strategy, and direction; ensures growth and profitability.'),
(2, 'Sales', 'Builds client relationships, closes deals, meets sales targets, and drives revenue.'),
(3, 'Marketing', 'Plans campaigns, creates content, analyzes market trends, and boosts brand visibility.'),
(4, 'Administrator', 'Manages office tasks, schedules, and records; supports team for efficient operations.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
