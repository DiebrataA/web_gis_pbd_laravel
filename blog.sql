-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2020 at 12:09 PM
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
(5, '2020_06_01_042203_added_admin', 2),
(6, '2020_06_01_184432_added_polygon', 3),
(7, '2020_06_02_063536_added_polygon2', 4);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_polygon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinates` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `warna` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polygons`
--

INSERT INTO `polygons` (`id`, `name_polygon`, `coordinates`, `warna`, `keterangan`, `created_at`, `updated_at`) VALUES
(4, 'Keliling dulu34', '[{lat:1.3481898576646802,lng:103.81376266479492}, {lat:1.3495627681304467,lng:103.84989738464355}, {lat:1.3571995684288576,lng:103.84397506713867}, {lat:1.3481898576646802,lng:103.81376266479492}]', '#000000', 'ad', '2020-06-02 02:02:42', '2020-06-02 02:02:42');

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `polygons`
--
ALTER TABLE `polygons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
