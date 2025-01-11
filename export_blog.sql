-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 11, 2025 at 05:38 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author_name`, `created_at`, `updated_at`) VALUES
(1, 'Harry Doe', '2025-01-11 17:11:19', '2025-01-11 17:12:10'),
(2, 'Jane Doe', '2025-01-11 17:11:32', '2025-01-11 17:11:32'),
(3, 'Jane Smith', '2025-01-11 17:11:32', '2025-01-11 17:11:32'),
(4, 'Alice Johnson', '2025-01-11 17:11:32', '2025-01-11 17:11:32'),
(5, 'Robert Brown', '2025-01-11 17:11:32', '2025-01-11 17:11:32'),
(6, 'Emily Davis', '2025-01-11 17:11:32', '2025-01-11 17:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `category_id` int NOT NULL,
  `author_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `body`, `category_id`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 'Updated My Blog Title', 'My Blogs Content', 2, 2, '2025-01-11 17:13:18', '2025-01-11 17:13:37'),
(2, 'The Future of AI', 'Content about artificial intelligence...', 1, 1, '2025-01-11 17:16:08', '2025-01-11 17:16:08'),
(3, 'Top 10 Healthy Habits', 'Content about staying healthy...', 2, 2, '2025-01-11 17:16:08', '2025-01-11 17:16:08'),
(4, 'Minimalist Living Tips', 'Content about minimalism...', 3, 3, '2025-01-11 17:16:08', '2025-01-11 17:16:08'),
(5, 'Backpacking in Europe', 'Content about budget travel...', 4, 4, '2025-01-11 17:16:08', '2025-01-11 17:16:08'),
(6, 'Online Learning Platforms', 'Content about online education...', 5, 5, '2025-01-11 17:16:08', '2025-01-11 17:16:08'),
(7, 'Cloud Computing Explained', 'Content about cloud technologies...', 1, 1, '2025-01-11 17:16:08', '2025-01-11 17:16:08'),
(8, 'Yoga for Beginners', 'Content about starting yoga...', 2, 2, '2025-01-11 17:16:08', '2025-01-11 17:16:08'),
(9, 'How to Declutter Your Home', 'Content about decluttering...', 3, 3, '2025-01-11 17:16:08', '2025-01-11 17:16:08'),
(10, 'Top 5 Beaches to Visit', 'Content about travel destinations...', 3, 2, '2025-01-11 17:16:08', '2025-01-11 17:27:31'),
(11, 'Importance of Lifelong Learning', 'Content about continuous education...', 5, 5, '2025-01-11 17:16:08', '2025-01-11 17:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Our Category', '2025-01-11 17:12:28', '2025-01-11 17:13:06'),
(2, 'Technology', '2025-01-11 17:12:46', '2025-01-11 17:12:46'),
(3, 'Health & Wellness', '2025-01-11 17:12:46', '2025-01-11 17:12:46'),
(4, 'Lifestyle', '2025-01-11 17:12:46', '2025-01-11 17:12:46'),
(5, 'Travel', '2025-01-11 17:12:46', '2025-01-11 17:12:46'),
(6, 'Education', '2025-01-11 17:12:46', '2025-01-11 17:12:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blogs_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
