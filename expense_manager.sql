-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2019 at 01:50 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expense_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `expense_categ` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `entry_date` date NOT NULL,
  `void` varchar(255) NOT NULL DEFAULT '1' COMMENT '1=active; 0=voided',
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_categ`, `amount`, `entry_date`, `void`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, '1', '1122', '2011-11-11', '1', '1', '2019-06-14 11:42:32', '1', '2019-06-14 11:43:17'),
(2, '2', '1231', '2012-02-22', '1', '1', '2019-06-14 11:42:40', '1', '2019-06-14 11:42:40');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `void` varchar(255) NOT NULL DEFAULT '1' COMMENT '1=active;0=voided',
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`id`, `name`, `description`, `void`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Travel', 'Travel descriptions', '1', '1', '2019-06-14 11:41:49', '1', '2019-06-14 11:42:16'),
(2, 'Food', 'Food Desc', '1', '1', '2019-06-14 11:42:02', '1', '2019-06-14 11:42:02');

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
(2, '2014_10_12_100000_create_password_resets_table', 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `void` varchar(255) NOT NULL DEFAULT '1' COMMENT '1=active;0=voided',
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `description`, `void`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Super Admin', 'This is for the default super admin and this account cant be modified', '1', '1', '2019-06-14 00:00:00', '1', '2019-06-14 00:00:00'),
(2, 'Administrator', 'Admin account', '1', '1', '2019-06-14 11:33:39', '1', '2019-06-14 11:33:39'),
(3, 'User', 'User account only', '1', '1', '2019-06-14 11:34:49', '1', '2019-06-14 11:34:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `void` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=active;0=voided',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `void`, `remember_token`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Default SuperAdmin', 'superadmin@gmail.com', '$2y$10$fmOvy7QvESwuG3cGkPbHiuYGy8BHdvNqHEhZwgBy8BknXylSzKiwS', '1', '1', 'ujKXTER6ooF1NlzzgbTI25aku5JP8vmLtfcU4zkh83kY2hO1KmkBjFxh7U0c', '2019-06-13 16:00:00', '1', '2019-06-13 16:00:00', '2'),
(2, 'second random guy', 'random2@gmail.com', '$2y$10$4o07AkXjnQu3iE6qaS9As.GpwEK6z2yAWsCUNFhYyJKw93k40Gk/2', '2', '1', 'IV42gLz6S5AzfiKvTa7Yfu4LhNU9cKWDXIEetwfB7ssWcv5tCPNxN4xbDiuM', '2019-06-14 03:33:23', '1', '2019-06-14 03:34:06', '2'),
(3, 'random guy1', 'randomguy@gmail.com', '$2y$10$t6aGFj79INBoxv6AzQ8sSOBiitQum/kkDqVHAaFrCUGQYxCjh7/8G', '3', '1', '2XPZpP4Z11qTdm4mqxHaMcu6r5sdxAzWmLg7ihHSdeMBWwB60uM37GRpL78M', '2019-06-14 03:34:33', '1', '2019-06-14 03:38:06', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
