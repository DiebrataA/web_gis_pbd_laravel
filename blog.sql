-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 07:55 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_11_134849_create_products_table', 1),
(5, '2020_06_01_042203_added_admin', 2);

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
-- Table structure for table `polygons`
--

CREATE TABLE `polygons` (
  `id_polygon` int(11) NOT NULL,
  `coordinates` longtext NOT NULL,
  `name_polygon` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polygons`
--

INSERT INTO `polygons` (`id_polygon`, `coordinates`, `name_polygon`, `warna`, `keterangan`) VALUES
(15, '[{lat:1.370757,lng:103.796768},{lat:1.341068,lng:103.796082},{lat:1.364922,lng:103.846035}]', 'TestSingapore', '#34e1eb', 'Singapore'),
(16, '[{lat:2.264963852319922,lng:100.818859375},{lat:1.781868257723194,lng:101.01661328125},{lat:-0.12946542608145692,lng:101.50001171875},{lat:-0.10749281694370072,lng:102.2690546875},{lat:0.5736498795652006,lng:103.4995234375},{lat:1.4743756279351365,lng:102.6206171875},{lat:2.2430081963928514,lng:101.2143671875},{lat:2.308874162681183,lng:100.5991328125},{lat:2.308874162681183,lng:100.5991328125}]', 'riau', 'green', 'riau punyanya amel'),
(17, '[{lat:2.04539285015056,lng:109.5639765625},{lat:0.9471514788715123,lng:111.08008984375},{lat:-2.370000337018958,lng:110.33301953125},{lat:-0.01960225461958753,lng:108.9487421875},{lat:1.1009354606504367,lng:108.8608515625},{lat:1.9795155420930604,lng:109.32227734375},{lat:1.9795155420930604,lng:109.32227734375}]', 'pontianak', 'red', 'pontianak punya erika'),
(18, '[{lat:-0.32721766374244327,lng:100.35743359375},{lat:-0.8105908385324334,lng:100.203625},{lat:-2.238271018541472,lng:100.7749140625},{lat:-4.71641518050589,lng:102.95020703125},{lat:-5.722952866013395,lng:104.510265625},{lat:-5.919686863975663,lng:105.10352734375},{lat:-5.11046880440619,lng:105.037609375},{lat:-4.409773408636456,lng:104.5542109375},{lat:-3.225904368840354,lng:103.455578125},{lat:-1.9308577727601213,lng:102.37891796875},{lat:-1.1401324727260134,lng:101.85157421875},{lat:-0.3711621590352826,lng:101.14844921875},{lat:-0.17341058400485013,lng:100.31348828125},{lat:-0.17341058400485013,lng:100.31348828125}]', 'rumah dayat', 'yellow', 'ini punya dayat');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `lat`, `long`, `details`, `created_at`, `updated_at`) VALUES
(2, 'National University Of Singapore', '1.319573', '103.818569', 'University', '2020-04-12 08:55:56', '2020-04-12 09:03:33'),
(6, 'Mount Alveria Host', '1.342055', '103.837795', 'Test222', '2020-04-13 00:23:54', '2020-04-13 01:37:44'),
(8, 'NTUC Fairprice', '1.354153', '103.831122', 'Dummy', '2020-04-13 05:13:20', '2020-04-13 05:13:20'),
(9, 'Hellow', '1.36046', '103.840027', 'Test', '2020-06-01 02:35:09', '2020-06-01 02:35:09'),
(10, 'Anggara Diebrata', '1.364922', '103.846035', 'hh', '2020-06-01 02:52:10', '2020-06-01 02:52:10'),
(11, 'Helobaru', '1.341068', '103.796082', 'haha', '2020-06-01 03:44:15', '2020-06-01 03:44:15'),
(14, 'SmarFET DEMO', '1.370757', '103.796768', 'Test', '2020-06-01 03:51:09', '2020-06-01 03:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anggara Diebrata', 'angg@material.com', NULL, '$2y$10$KZKCk6tX6KNMHi.T.ppRGeyNLxweFCzMxn7/nYbgk5K8wDka.oIiG', 'adaAQtKvMHl1TMIlyPZwFscqSO1uC9XBVmaHayTKIfHxQJMZrBPEHqCjxIxS', '2020-04-12 07:26:54', '2020-06-01 02:10:21'),
(2, 'Erika Clara S', 'erik@material.com', NULL, '$2y$10$jUaSagKfbd3MGu6MEnj6n./MstIOUticsh6qAE0KMIPyexcOG5tta', NULL, '2020-04-13 03:17:05', '2020-04-13 03:17:42'),
(3, 'Admin', 'admin@admin.com', NULL, '$2y$10$TpiMQuLkJeYYWpiD5m0kJeicLhNejuUSxlJWNxuhoY0h3DWcefOZK', NULL, '2020-05-31 21:18:39', '2020-05-31 21:18:39'),
(4, 'Administrator', 'admin@material.com', NULL, '$2y$10$12hYCGMvOirBJ6PybUjHo.7rBqM6hj7WimTV1uFXGoFlxuGc0602a', NULL, '2020-05-31 21:45:55', '2020-05-31 21:45:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `polygons`
--
ALTER TABLE `polygons`
  ADD PRIMARY KEY (`id_polygon`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `polygons`
--
ALTER TABLE `polygons`
  MODIFY `id_polygon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
