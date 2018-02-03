-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2018 at 11:05 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_data`
--

CREATE TABLE `blog_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_data`
--

INSERT INTO `blog_data` (`id`, `name`, `body`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'as dfas dfas df asd f', 'd asd asd sad sa dsadsd', 0, '2018-02-03 03:32:41', '2018-02-03 03:32:41'),
(5, 'as f as', 'd sad fdsa', 0, '2018-02-03 03:37:34', '2018-02-03 03:37:34'),
(6, 'asd', 'asdf', 0, '2018-02-03 03:38:10', '2018-02-03 03:38:10'),
(14, 'asdf asd', 'f asdf asd', 1, '2018-02-03 04:08:20', '2018-02-03 04:08:20'),
(15, 'asd asd', 'f asd f', 1, '2018-02-03 04:08:25', '2018-02-03 04:08:25'),
(17, 'asdfsasasdf asd fas', 'd fasddf asd sadasd dsaf', 2, '2018-02-03 04:29:51', '2018-02-03 04:35:01'),
(19, 'a sdf asdf asd asd asdf sad dsa sd', 'sad sadfsadf sadasd d', 3, '2018-02-03 04:32:10', '2018-02-03 04:32:16'),
(20, 'asd dsaf', 'sad sad fds', 2, '2018-02-03 04:35:07', '2018-02-03 04:35:07'),
(21, 'asd sadf dsf asdf', 'asd fsad fsd', 2, '2018-02-03 04:35:21', '2018-02-03 04:35:21'),
(22, '33', '33', 2, '2018-02-03 04:35:27', '2018-02-03 04:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_02_03_062552_blog_data', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dhaval', 'asdf@gmail.com', '$2y$10$A9sI.u3/uekd7356H.loEOxGY3gw.JK/ip/WHdhCfcjFIIgAkV4MC', 'BHruj9GRrU1jcfkVYaqWnx5Bws9GYJTr5vb0bL6DmsHAB16at2BKgvNI5DJi', '2018-02-03 03:59:26', '2018-02-03 03:59:26'),
(2, 'll1@gmail.com', 'll1@gmail.com', '$2y$10$dHe52DVvr3o3raYyYIlQU.HD0K4fzEg06lahSywcZIMfTnQYpbsu6', 'KmGZ88w1vA6Dg42vZiPKsa9WSKPQp9k1CaZVJLrdNMEudWfOh8pQqOMwGpFN', '2018-02-03 04:27:53', '2018-02-03 04:27:53'),
(3, 'lorem', 'll2@gmail.com', '$2y$10$Ik8PAaf9dRKfkPcHDKQAG.PDLpGZcIbUzRENImVt7qWRjjPjuP3LG', 'wxcUCSvq5bhxbX41zoKPgMasxWsaznHRYe5GDCseIwOQ6wdQlrsw2hkzpVVB', '2018-02-03 04:31:44', '2018-02-03 04:31:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_data`
--
ALTER TABLE `blog_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_data`
--
ALTER TABLE `blog_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
