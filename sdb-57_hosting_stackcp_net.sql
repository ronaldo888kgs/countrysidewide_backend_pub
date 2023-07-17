-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: sdb-57.hosting.stackcp.net
-- Generation Time: May 02, 2023 at 06:23 AM
-- Server version: 10.4.28-MariaDB-log
-- PHP Version: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `countrywide-stone-35303135fdc3`
--
CREATE DATABASE IF NOT EXISTS `countrywide-stone-35303135fdc3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `countrywide-stone-35303135fdc3`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'Kitchens', 6, '2023-04-27 05:48:18', '2023-04-27 05:48:18'),
(5, 'Master Bedroom', 6, '2023-04-27 05:58:55', '2023-04-27 05:58:55'),
(6, 'Powder Room', 6, '2023-04-27 05:59:34', '2023-04-27 05:59:34'),
(7, 'Secondary Bathroom', 6, '2023-04-27 06:00:58', '2023-04-27 06:00:58'),
(8, 'Master Bathroom', 6, '2023-04-27 06:05:28', '2023-04-27 06:05:28'),
(14, 'mycategory', 6, '2023-04-29 15:47:02', '2023-04-29 15:47:02'),
(15, 'Test Catagory', 6, '2023-04-29 17:23:43', '2023-04-29 17:23:43'),
(16, 'Roof', 6, '2023-04-30 01:37:40', '2023-04-30 01:37:40'),
(17, 'foyer', 6, '2023-04-30 02:35:14', '2023-04-30 02:35:14'),
(18, 'kitchen', 6, '2023-05-01 13:30:45', '2023-05-01 13:30:45'),
(19, 'living Room', 6, '2023-05-01 17:29:11', '2023-05-01 17:29:11'),
(20, 'Laundry Room', 6, '2023-05-01 17:30:04', '2023-05-01 17:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `contractors`
--

CREATE TABLE `contractors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contractors`
--

INSERT INTO `contractors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'ABL', '2023-04-26 15:11:47', '2023-04-26 15:11:47'),
(4, 'UBL', '2023-04-26 15:13:13', '2023-04-26 15:13:13'),
(5, 'JS', '2023-04-28 20:57:21', '2023-04-28 20:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT -1,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `name`, `status`, `project_id`, `user_id`, `created_at`, `updated_at`) VALUES
(38, 'Floor 1', -1, 16, 6, '2023-04-29 17:22:01', '2023-04-29 17:22:01'),
(39, 'Floor 2', -1, 16, 6, '2023-04-29 17:22:06', '2023-04-29 17:22:06'),
(40, 'Floor 3', -1, 16, 6, '2023-04-29 17:22:11', '2023-04-29 17:22:11'),
(41, 'Floor 1', -1, 17, 6, '2023-04-29 22:29:55', '2023-04-29 22:29:55'),
(42, 'Floor 2', -1, 17, 6, '2023-04-29 22:30:01', '2023-04-29 22:30:01'),
(43, 'Floor 3', -1, 17, 6, '2023-04-29 22:30:06', '2023-04-29 22:30:06'),
(44, 'Floor 1', -1, 18, 6, '2023-04-29 23:03:52', '2023-04-29 23:03:52'),
(45, 'Floor 2', -1, 18, 6, '2023-04-29 23:03:57', '2023-04-29 23:03:57'),
(46, 'Floor 3', -1, 18, 6, '2023-04-29 23:04:01', '2023-04-29 23:04:01'),
(47, 'Floor 4', -1, 18, 6, '2023-04-29 23:04:05', '2023-04-29 23:04:05'),
(57, 'Floor 1', -1, 23, 6, '2023-04-30 13:46:50', '2023-04-30 13:46:50'),
(58, 'Floor 2', -1, 23, 6, '2023-04-30 13:46:55', '2023-04-30 13:46:55'),
(78, 'Floor 1', -1, 33, 6, '2023-05-01 13:18:35', '2023-05-01 13:18:35'),
(118, 'Floor 18', -1, 43, 6, '2023-05-01 23:34:51', '2023-05-01 23:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL DEFAULT '',
  `api_notes` varchar(255) DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `status_history` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `description`, `file`, `model_id`, `type`, `url`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 'null', 'WhatsApp Image 2023-04-21 at 8.42.44 PM.jpeg', 6, 'Task', 'https://countrywidestone.wpweber.com/public/img/WhatsApp Image 2023-04-21 at 8.42.44 PM.jpeg', 6, '2023-04-29 22:50:54', '2023-04-29 22:50:54'),
(10, 'null', 'WhatsApp Image 2023-04-27 at 5.07.48 AM.jpeg', 6, 'Task', 'https://countrywidestone.wpweber.com/public/img/WhatsApp Image 2023-04-27 at 5.07.48 AM.jpeg', 6, '2023-04-29 22:52:33', '2023-04-29 22:52:33'),
(11, 'dfdsf', '00C41B6E-FCE3-4BA2-8E76-42A59DE87A94.png', 7, 'Task', 'https://countrywidestone.wpweber.com/public/img/00C41B6E-FCE3-4BA2-8E76-42A59DE87A94.png', 6, '2023-04-29 22:53:46', '2023-04-29 22:53:46'),
(12, 'esdr', '1 (1).PNG', 7, 'Task', 'https://countrywidestone.wpweber.com/public/img/1 (1).PNG', 6, '2023-04-29 22:54:01', '2023-04-29 22:54:01'),
(13, 'fsfsdfd', '1682812555_4F750206-E274-487D-9370-66D2EF061FE3.jpeg', 7, 'Task', 'https://countrywidestone.wpweber.com/public/img/1682812555_4F750206-E274-487D-9370-66D2EF061FE3.jpeg', 6, '2023-04-29 22:55:55', '2023-04-29 22:55:55'),
(14, 'fghy', '1682812788_TX.jpg', 4, 'Task', 'https://countrywidestone.wpweber.com/public/img/1682812788_TX.jpg', 6, '2023-04-29 22:59:48', '2023-04-29 22:59:48'),
(15, 'fghy', '1682812788_Untitled.png', 4, 'Task', 'https://countrywidestone.wpweber.com/public/img/1682812788_Untitled.png', 6, '2023-04-29 22:59:48', '2023-04-29 22:59:48'),
(16, 'null', '1682812920_WhatsApp Image 2023-04-21 at 8.19.19 PM.jpeg', 6, 'Task', 'https://countrywidestone.wpweber.com/public/img/1682812920_WhatsApp Image 2023-04-21 at 8.19.19 PM.jpeg', 6, '2023-04-29 23:02:00', '2023-04-29 23:02:00'),
(17, 'null', '1682812920_WhatsApp Image 2023-04-21 at 8.04.05 PM.jpeg', 6, 'Task', 'https://countrywidestone.wpweber.com/public/img/1682812920_WhatsApp Image 2023-04-21 at 8.04.05 PM.jpeg', 6, '2023-04-29 23:02:00', '2023-04-29 23:02:00'),
(18, 'null', '1682812920_WhatsApp Image 2023-04-21 at 7.20.37 PM.jpeg', 6, 'Task', 'https://countrywidestone.wpweber.com/public/img/1682812920_WhatsApp Image 2023-04-21 at 7.20.37 PM.jpeg', 6, '2023-04-29 23:02:00', '2023-04-29 23:02:00'),
(20, 'null', '1682813598_WhatsApp Image 2023-04-21 at 8.04.05 PM.jpeg', 2020, 'Project', 'https://countrywidestone.wpweber.com/public/img/1682813598_WhatsApp Image 2023-04-21 at 8.04.05 PM.jpeg', 6, '2023-04-29 23:13:18', '2023-04-29 23:13:18'),
(21, 'null', '1682813598_WhatsApp Image 2023-04-21 at 7.20.37 PM.jpeg', 2020, 'Project', 'https://countrywidestone.wpweber.com/public/img/1682813598_WhatsApp Image 2023-04-21 at 7.20.37 PM.jpeg', 6, '2023-04-29 23:13:18', '2023-04-29 23:13:18'),
(22, 'null', '1682815547_4F750206-E274-487D-9370-66D2EF061FE3.jpeg', 940, 'Project', 'https://countrywidestone.wpweber.com/public/img/1682815547_4F750206-E274-487D-9370-66D2EF061FE3.jpeg', 6, '2023-04-29 23:45:47', '2023-04-29 23:45:47'),
(23, 'null', '1682823611_reduced size.jpg', 8, 'Task', 'https://countrywidestone.wpweber.com/public/img/1682823611_reduced size.jpg', 6, '2023-04-30 02:00:11', '2023-04-30 02:00:11'),
(24, 'ddd', '1682863660_#Project.002.overview.pdf', 2020, 'Project', 'https://countrywidestone.wpweber.com/public/img/1682863660_#Project.002.overview.pdf', 8, '2023-04-30 13:07:40', '2023-04-30 13:07:40'),
(30, 'null', '1682888334_pdf', 10, 'Task', 'https://countrywidestone.wpweber.com/public/doc/1682888334_pdf', 10, '2023-04-30 19:58:54', '2023-04-30 19:58:54'),
(31, 'null', '1682888387_.pdf', 10, 'Task', 'https://countrywidestone.wpweber.com/public/doc/1682888387_.pdf', 10, '2023-04-30 19:59:47', '2023-04-30 19:59:47'),
(33, 'null', '1682903625_.pdf', 12, 'Task', 'https://countrywidestone.wpweber.com/public/doc/1682903625_.pdf', 6, '2023-05-01 00:13:45', '2023-05-01 00:13:45'),
(35, 'null', '1682908154_.pdf', 23, 'Project', 'https://countrywidestone.wpweber.com/public/doc/1682908154_.pdf', 6, '2023-05-01 01:29:14', '2023-05-01 01:29:14'),
(36, 'null', '1682908187_.pdf', 2331, 'Project', 'https://countrywidestone.wpweber.com/public/doc/1682908187_.pdf', 6, '2023-05-01 01:29:47', '2023-05-01 01:29:47'),
(37, 'Test', '1682909724_.pdf', 23, 'Project', 'https://countrywidestone.wpweber.com/public/doc/1682909724_.pdf', 6, '2023-05-01 01:55:24', '2023-05-01 01:55:24'),
(38, 'Emr', '1682909766_.pdf', 23, 'Project', 'https://countrywidestone.wpweber.com/public/doc/1682909766_.pdf', 6, '2023-05-01 01:56:06', '2023-05-01 01:56:06'),
(39, 'null', '1682909992_.pdf', 2331, 'Project', 'https://countrywidestone.wpweber.com/public/doc/1682909992_.pdf', 6, '2023-05-01 01:59:52', '2023-05-01 01:59:52'),
(40, 'null', '1682910076_.png', 2331, 'Project', 'https://countrywidestone.wpweber.com/public/img/1682910076_.png', 6, '2023-05-01 02:01:16', '2023-05-01 02:01:16'),
(41, 'null', '1682910177_.jpg', 2336, 'Project', 'https://countrywidestone.wpweber.com/public/img/1682910177_.jpg', 6, '2023-05-01 02:02:57', '2023-05-01 02:02:57'),
(43, 'null', '1682966484_.pdf', 3958, 'Project', 'https://countrywidestone.wpweber.com/public/doc/1682966484_.pdf', 6, '2023-05-01 17:41:24', '2023-05-01 17:41:24'),
(44, 'FLOOR DETAIL', '1682971730_.png', 3188, 'Project', 'https://countrywidestone.wpweber.com/public/img/1682971730_.png', 6, '2023-05-01 19:08:50', '2023-05-01 19:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(26, '2016_06_01_000004_create_oauth_clients_table', 1),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2023_04_24_092324_create_roles_table', 1),
(31, '2023_04_25_090656_create_contractors_table', 2),
(42, '2023_04_26_003557_create_categories_table', 3),
(43, '2023_04_26_004911_create_sub_categories_table', 3),
(44, '2023_04_26_021729_create_projects_table', 3),
(45, '2023_04_26_023449_create_floors_table', 3),
(46, '2023_04_26_030635_create_units_table', 3),
(48, '2023_04_25_230406_create_sections_table', 4),
(49, '2023_04_26_042930_create_sub_sections_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', 'd185256483faa0ee1b498720bcabf2fb14e9f567e83dda4e07142164c60619a1', '[\"*\"]', NULL, NULL, '2023-04-25 01:00:16', '2023-04-25 01:00:16'),
(2, 'App\\Models\\User', 1, 'API TOKEN', '740f9aacab145f7613f95cfb491d4f6d958cdf91bc26cf6d6b834b6415af0c43', '[\"*\"]', '2023-04-25 12:38:33', NULL, '2023-04-25 01:00:41', '2023-04-25 12:38:33'),
(3, 'App\\Models\\User', 2, 'API TOKEN', '746611a96e8d2c3aa932fc2981b49e23585a52790e4f9b5deadf2445fa29e1eb', '[\"*\"]', '2023-04-25 16:43:45', NULL, '2023-04-25 12:48:46', '2023-04-25 16:43:45'),
(4, 'App\\Models\\User', 3, 'API TOKEN', 'cb9d5a53dc8d5a253815778f4e7c8108862def6536f7068df53f6c7417c311a2', '[\"*\"]', NULL, NULL, '2023-04-25 12:51:06', '2023-04-25 12:51:06'),
(5, 'App\\Models\\User', 2, 'API TOKEN', '3d7537e5aec7cde6e36c08f3bb52e4f1b5d4593f8b6c6dfac59c69c139d0e817', '[\"*\"]', '2023-04-27 20:25:40', NULL, '2023-04-25 16:44:19', '2023-04-27 20:25:40'),
(6, 'App\\Models\\User', 4, 'API TOKEN', '3eacdde995d876a12855b522d5a0b1fd7337826c85d48da3e7d26f33fead59da', '[\"*\"]', NULL, NULL, '2023-04-25 18:15:43', '2023-04-25 18:15:43'),
(7, 'App\\Models\\User', 5, 'API TOKEN', '567335559eeb902131ea3efff4c08b5edcd6078428c44f7d0ffe1b9cd633e4bc', '[\"*\"]', NULL, NULL, '2023-04-25 18:16:09', '2023-04-25 18:16:09'),
(8, 'App\\Models\\User', 2, 'API TOKEN', 'fdf871b3b3e02f697bef23ad5d9d2637a21275587d646b9ae3a3e17b026be74c', '[\"*\"]', '2023-04-27 01:06:31', NULL, '2023-04-26 07:19:05', '2023-04-27 01:06:31'),
(9, 'App\\Models\\User', 6, 'API TOKEN', '236532458d3bdb9c0a42cdc4f824dd22f147b71c0ff53409b5b674228dc255fd', '[\"*\"]', NULL, NULL, '2023-04-26 07:19:29', '2023-04-26 07:19:29'),
(10, 'App\\Models\\User', 6, 'API TOKEN', '3af41e6bf20da2758cbc98f7a365bf2e6cc27b756dfabe87ec05567d3976b5db', '[\"*\"]', '2023-05-01 03:12:00', NULL, '2023-04-26 07:22:39', '2023-05-01 03:12:00'),
(11, 'App\\Models\\User', 6, 'API TOKEN', '4be2124d9ed948cf9fc5a7639471edd6d5230e89b6633c7db285ce5f31852ab7', '[\"*\"]', '2023-04-27 05:41:07', NULL, '2023-04-26 07:29:45', '2023-04-27 05:41:07'),
(12, 'App\\Models\\User', 6, 'API TOKEN', 'd2ef5f26791d9ed79ab567ef4f103626aa3911b9090974b980cef10a4065b72c', '[\"*\"]', '2023-04-27 05:15:19', NULL, '2023-04-27 05:14:53', '2023-04-27 05:15:19'),
(13, 'App\\Models\\User', 6, 'API TOKEN', '4dccf663851f41576d21cb8d0879ef2e8e2540cedb1ba54cc61034142a10895c', '[\"*\"]', '2023-04-28 18:19:45', NULL, '2023-04-27 05:14:54', '2023-04-28 18:19:45'),
(14, 'App\\Models\\User', 6, 'API TOKEN', '98d03ca777f0c2e2c8c7a1efcbba6ee2104ffcd59706f9c6e1f3e95060c15ade', '[\"*\"]', '2023-04-27 05:43:41', NULL, '2023-04-27 05:43:38', '2023-04-27 05:43:41'),
(15, 'App\\Models\\User', 6, 'API TOKEN', 'bc60d9c2406bcad6e8eb1f623e5a469a962aaccf1f05e2dafc64337ccd8f4b04', '[\"*\"]', '2023-05-01 23:12:27', NULL, '2023-04-27 05:43:39', '2023-05-01 23:12:27'),
(16, 'App\\Models\\User', 6, 'API TOKEN', '314bf68de855777623d88a4c0dbaa32e53b3e78b67de0fa6bec2054a1b28a50e', '[\"*\"]', '2023-05-01 19:14:12', NULL, '2023-04-27 15:13:25', '2023-05-01 19:14:12'),
(17, 'App\\Models\\User', 6, 'API TOKEN', '6ec3e3e767b2736a068a62e94d16fba049e357bfecf7d9ef7616c861666f4b4b', '[\"*\"]', '2023-04-30 05:05:48', NULL, '2023-04-27 19:15:06', '2023-04-30 05:05:48'),
(18, 'App\\Models\\User', 6, 'API TOKEN', '6805e547fa8170f4b2ec66e728f8aa2effd824112dfa9750b9361471c3def5a9', '[\"*\"]', '2023-04-30 03:09:49', NULL, '2023-04-28 03:35:04', '2023-04-30 03:09:49'),
(19, 'App\\Models\\User', 6, 'API TOKEN', 'e4770f459c94ffc05f0794411abf8afd7d295c141644d2a30f40f28af69cb925', '[\"*\"]', '2023-04-28 19:17:26', NULL, '2023-04-28 18:00:40', '2023-04-28 19:17:26'),
(20, 'App\\Models\\User', 6, 'API TOKEN', 'fc0633e9611e0dad1fec2cbd00e4d0dd0a071a42df26decd8c731076898b95f2', '[\"*\"]', '2023-04-29 20:48:07', NULL, '2023-04-29 15:19:37', '2023-04-29 20:48:07'),
(21, 'App\\Models\\User', 6, 'API TOKEN', '124de588100aaae43ec2f4071d6f9d0194a616455d2ed7b9163a90a03865414c', '[\"*\"]', '2023-04-29 18:45:18', NULL, '2023-04-29 15:21:18', '2023-04-29 18:45:18'),
(22, 'App\\Models\\User', 6, 'API TOKEN', '88f64369395e360d68870312251b2b8cb2a673e425f3538bf7133119f66f5ea6', '[\"*\"]', '2023-04-29 21:28:27', NULL, '2023-04-29 20:48:19', '2023-04-29 21:28:27'),
(23, 'App\\Models\\User', 6, 'API TOKEN', '02ad5e6c4233e8d0fbaeee270426e71fe669a0c5cd9b9d5452ef51a1f160a085', '[\"*\"]', '2023-04-29 22:11:37', NULL, '2023-04-29 21:28:43', '2023-04-29 22:11:37'),
(24, 'App\\Models\\User', 6, 'API TOKEN', 'b7bb38c199eb1af533a82a4fc2dc2bbef99ea90afa9e6b8d195798c51fec7a5c', '[\"*\"]', '2023-04-29 21:43:15', NULL, '2023-04-29 21:39:25', '2023-04-29 21:43:15'),
(25, 'App\\Models\\User', 6, 'API TOKEN', '384bd4d378ed8fcb3c9ee5bd7678c91e103fedfda873a6c96e701aeab06dc98a', '[\"*\"]', '2023-04-29 21:52:03', NULL, '2023-04-29 21:43:58', '2023-04-29 21:52:03'),
(26, 'App\\Models\\User', 6, 'API TOKEN', 'dd6342844653da25f836343b4b49d4f5ada3b86ebbc52d1eabacdd136761480f', '[\"*\"]', '2023-04-29 23:26:04', NULL, '2023-04-29 22:11:56', '2023-04-29 23:26:04'),
(27, 'App\\Models\\User', 6, 'API TOKEN', 'd4362a8bacd77a03366c83f382fc255d553b1d3d8aeefc311d309fe5bbc1aed3', '[\"*\"]', '2023-04-29 23:47:21', NULL, '2023-04-29 22:48:31', '2023-04-29 23:47:21'),
(28, 'App\\Models\\User', 6, 'API TOKEN', 'e558ea891b4e2e7d9a2413e06eabb39c461a6c43f76ed04eb9f402dd9b10e646', '[\"*\"]', '2023-04-30 09:29:47', NULL, '2023-04-30 00:24:37', '2023-04-30 09:29:47'),
(29, 'App\\Models\\User', 6, 'API TOKEN', '919cded7306503c939345d3dea5807e675e6620fcb0f224bb7e2c7313a0ce7ed', '[\"*\"]', '2023-04-30 16:59:18', NULL, '2023-04-30 03:10:04', '2023-04-30 16:59:18'),
(30, 'App\\Models\\User', 7, 'API TOKEN', '19e40b0b7b7b3629aba2eeed67bda3e59e39f80208204ca5142e2899e275452e', '[\"*\"]', NULL, NULL, '2023-04-30 05:05:40', '2023-04-30 05:05:40'),
(31, 'App\\Models\\User', 6, 'API TOKEN', 'a74978da0f5e83405d752c91a84ce081d588d9cd2011b3f824f6fc6c2153c633', '[\"*\"]', '2023-04-30 11:00:16', NULL, '2023-04-30 05:16:49', '2023-04-30 11:00:16'),
(32, 'App\\Models\\User', 8, 'API TOKEN', 'd8bd71f58ddbffa1f9112139159012c5f980d5771b35ffeac07a219fb7ddecfb', '[\"*\"]', NULL, NULL, '2023-04-30 09:30:10', '2023-04-30 09:30:10'),
(33, 'App\\Models\\User', 8, 'API TOKEN', '623aa346fbfe4b0f31286090d327c2c5f9cda94081173b334987159d2bf589a5', '[\"*\"]', '2023-04-30 13:20:00', NULL, '2023-04-30 09:30:33', '2023-04-30 13:20:00'),
(34, 'App\\Models\\User', 7, 'API TOKEN', 'e76684831461da3f4dcda15b2c8e8fbc67fc58768357a44a0d50f8567d8d77a8', '[\"*\"]', '2023-04-30 11:00:41', NULL, '2023-04-30 11:00:40', '2023-04-30 11:00:41'),
(35, 'App\\Models\\User', 7, 'API TOKEN', '5ef51056b57010767c43c241156386a62d3b2e97939a7f4822c97d4e13b35280', '[\"*\"]', '2023-04-30 13:27:15', NULL, '2023-04-30 13:27:13', '2023-04-30 13:27:15'),
(36, 'App\\Models\\User', 7, 'API TOKEN', 'f79c594f82e5f8a786277fecc19a7419734bd34c73d65e6abab2e1d848bcc486', '[\"*\"]', '2023-04-30 13:42:06', NULL, '2023-04-30 13:27:13', '2023-04-30 13:42:06'),
(37, 'App\\Models\\User', 6, 'API TOKEN', 'e2af62bc71802890a11ce2e1901862646afb7abfdb9809ad20811287a8aa3c00', '[\"*\"]', '2023-04-30 13:42:23', NULL, '2023-04-30 13:42:22', '2023-04-30 13:42:23'),
(38, 'App\\Models\\User', 6, 'API TOKEN', 'c046e3b0ec3763f9a9adf243683b0a9f267136f7a1a9031c7ddf14b78dd3e09e', '[\"*\"]', '2023-04-30 16:01:10', NULL, '2023-04-30 13:42:22', '2023-04-30 16:01:10'),
(39, 'App\\Models\\User', 6, 'API TOKEN', 'b9ed79dd0efd99fc1833c22f3696572dc2ef28ea23667145a890df3d393c71cc', '[\"*\"]', '2023-04-30 15:13:23', NULL, '2023-04-30 15:12:50', '2023-04-30 15:13:23'),
(40, 'App\\Models\\User', 9, 'API TOKEN', 'd84b31b661809ed04efed6fbf7dee75cc8705836c87e4534b81d836a40e71a84', '[\"*\"]', NULL, NULL, '2023-04-30 15:13:41', '2023-04-30 15:13:41'),
(41, 'App\\Models\\User', 9, 'API TOKEN', '555605f2688845d7ee485cf8ff09b2d155a76188d86681719524849f73619c6c', '[\"*\"]', '2023-04-30 15:18:22', NULL, '2023-04-30 15:13:55', '2023-04-30 15:18:22'),
(42, 'App\\Models\\User', 6, 'API TOKEN', '3e6e1325aa5d2f5feae954bd26ef09b0e0f32629bff1966ec1ca664460053f2b', '[\"*\"]', '2023-04-30 16:01:31', NULL, '2023-04-30 16:01:29', '2023-04-30 16:01:31'),
(43, 'App\\Models\\User', 7, 'API TOKEN', '4f1b93d6712f68c8020c3b433232587ed6c9318ffbd4497a42f825d0f407be1c', '[\"*\"]', '2023-04-30 16:20:54', NULL, '2023-04-30 16:20:53', '2023-04-30 16:20:54'),
(44, 'App\\Models\\User', 6, 'API TOKEN', '189a75e9e49f3addfa82b026783c34067c036b95c4ba608c893af82d226d9d74', '[\"*\"]', '2023-04-30 19:21:00', NULL, '2023-04-30 16:21:03', '2023-04-30 19:21:00'),
(45, 'App\\Models\\User', 8, 'API TOKEN', 'b38d3dbbb6aac99e7c362cd58b53a7b15948aed1cf24f4d74bb934e82c8fe164', '[\"*\"]', '2023-04-30 16:31:01', NULL, '2023-04-30 16:29:56', '2023-04-30 16:31:01'),
(46, 'App\\Models\\User', 10, 'API TOKEN', '21dbb84c60f14d37012a2d0c0d15f835690b4e83ac9101d287ce99bda8fd38bc', '[\"*\"]', NULL, NULL, '2023-04-30 16:31:19', '2023-04-30 16:31:19'),
(47, 'App\\Models\\User', 10, 'API TOKEN', 'a50cf9a137129bb9e77f9697d93452ca45182d07ea13a5da490448c39fd3b758', '[\"*\"]', '2023-05-01 01:02:16', NULL, '2023-04-30 16:31:35', '2023-05-01 01:02:16'),
(48, 'App\\Models\\User', 7, 'API TOKEN', '4665b7f6e7a4c5f5c0b08454549c34b5ef3433867cd58704c51a7260eadae5c8', '[\"*\"]', '2023-04-30 17:09:57', NULL, '2023-04-30 16:59:59', '2023-04-30 17:09:57'),
(49, 'App\\Models\\User', 6, 'API TOKEN', '6498f0007c26f1caada9da47377ccc2b6c544dd0495c17a66bc7af02c78888a2', '[\"*\"]', '2023-05-01 17:51:15', NULL, '2023-04-30 17:10:22', '2023-05-01 17:51:15'),
(50, 'App\\Models\\User', 7, 'API TOKEN', 'c5d797790248f94153bcd06315ac94f8c69298bbeea7f9c73babda4a93be331f', '[\"*\"]', '2023-04-30 20:42:43', NULL, '2023-04-30 19:31:57', '2023-04-30 20:42:43'),
(51, 'App\\Models\\User', 6, 'API TOKEN', '5c90d44d329390b9272b4738bf1ae975229ef3fcb62beea1ee9155c5b152524a', '[\"*\"]', '2023-04-30 19:41:21', NULL, '2023-04-30 19:40:13', '2023-04-30 19:41:21'),
(52, 'App\\Models\\User', 7, 'API TOKEN', '4ce3c644ca4bc9ae9f31308a0c64b80c00964a4800c121573ff064cb8248d458', '[\"*\"]', '2023-04-30 20:43:22', NULL, '2023-04-30 20:43:20', '2023-04-30 20:43:22'),
(53, 'App\\Models\\User', 6, 'API TOKEN', 'e78420ea12aa5214134d997536fffcdbe544e3789229a382bc074408ff4f2a65', '[\"*\"]', '2023-04-30 23:46:49', NULL, '2023-04-30 20:43:29', '2023-04-30 23:46:49'),
(54, 'App\\Models\\User', 6, 'API TOKEN', '31bc124b4527befd38619a2eb4c6a187768c430a92320f2bf47a4fa7c329619a', '[\"*\"]', '2023-05-02 00:09:48', NULL, '2023-05-01 00:05:20', '2023-05-02 00:09:48'),
(55, 'App\\Models\\User', 6, 'API TOKEN', 'd42b252ccd0b4d01fe3923ea38d67a2dbbb781944e9880cdc0b31a34e880d7a2', '[\"*\"]', '2023-05-01 01:58:09', NULL, '2023-05-01 00:34:32', '2023-05-01 01:58:09'),
(56, 'App\\Models\\User', 6, 'API TOKEN', '8a4481b44c64db18f9da2d961c1b897fff8e6a6960dc0e7190e76ac51ca50dfa', '[\"*\"]', '2023-05-01 05:35:31', NULL, '2023-05-01 01:31:44', '2023-05-01 05:35:31'),
(57, 'App\\Models\\User', 6, 'API TOKEN', 'f0a567a6c675ddf1686a042c8291c1ee2381acee852b8d7b71406a7657e2d80b', '[\"*\"]', '2023-05-01 03:22:40', NULL, '2023-05-01 02:48:42', '2023-05-01 03:22:40'),
(58, 'App\\Models\\User', 6, 'API TOKEN', 'cad5411850e4bc7be4f1b93943a5aaa343a915867ff87b29b1f5a84078b48c28', '[\"*\"]', '2023-05-01 14:39:35', NULL, '2023-05-01 05:35:56', '2023-05-01 14:39:35'),
(59, 'App\\Models\\User', 6, 'API TOKEN', 'de3228e18b457998190bf2f635ecdfce89fd51766ff0010fa84fb31f92a69482', '[\"*\"]', '2023-05-01 20:43:45', NULL, '2023-05-01 14:14:17', '2023-05-01 20:43:45'),
(60, 'App\\Models\\User', 6, 'API TOKEN', 'b99f01c7063f9ab14437ce12fd5ad27d3092483e6d800f0d99632583a53b7029', '[\"*\"]', '2023-05-01 15:54:56', NULL, '2023-05-01 15:31:26', '2023-05-01 15:54:56'),
(61, 'App\\Models\\User', 6, 'API TOKEN', '234bbda41fd122e65aa759a3eac4ff23a13f05fcd483fe4070560ef6c57216b8', '[\"*\"]', '2023-05-01 17:57:24', NULL, '2023-05-01 17:57:05', '2023-05-01 17:57:24'),
(62, 'App\\Models\\User', 6, 'API TOKEN', '6a511068efba6f91e645c892ecf93758b1d1e1e18e22593ffbb6fd59fe0cf35f', '[\"*\"]', '2023-05-01 21:29:56', NULL, '2023-05-01 18:08:00', '2023-05-01 21:29:56'),
(63, 'App\\Models\\User', 6, 'API TOKEN', '9cfa8e5a61b9aaae438db27b56e1d340c2205fe6e4962f983821b66d6739a0f0', '[\"*\"]', '2023-05-01 23:58:57', NULL, '2023-05-01 20:58:59', '2023-05-01 23:58:57'),
(64, 'App\\Models\\User', 6, 'API TOKEN', 'babc89be5574dae0860ab165e0da9a55cb74c290659588b9c806c30227530e7c', '[\"*\"]', '2023-05-01 23:56:39', NULL, '2023-05-01 21:01:37', '2023-05-01 23:56:39'),
(65, 'App\\Models\\User', 6, 'API TOKEN', '7e7d0ae578a7127e60c64efef20fdc88ddd5c0602132495e81ffac21390aa91c', '[\"*\"]', '2023-05-02 00:50:36', NULL, '2023-05-02 00:49:16', '2023-05-02 00:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `contractor` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `address`, `contractor`, `name`, `owner`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(16, 'Xyz', 'UBL,JS', 'Azlan', 'Shah', 0, 6, '2023-04-29 17:21:56', '2023-04-29 17:21:56'),
(17, 'XYZ', 'ABL,UBL', 'ayan', 'Salman', 0, 6, '2023-04-29 22:29:47', '2023-04-29 22:29:47'),
(18, 'xyz', 'ABL,UBL', 'Mongos', 'Bat', 0, 6, '2023-04-29 23:03:39', '2023-04-29 23:03:39'),
(23, '45 broadband', 'UBL', '45 broad', 'Hshsh', 0, 6, '2023-04-30 13:46:45', '2023-04-30 13:46:45'),
(33, '500 main', 'JS', '500 main', 'Hg', 0, 6, '2023-05-01 13:18:30', '2023-05-01 13:18:30'),
(43, 'Vbvb', 'UBL', 'Vvv', 'Ggg', 0, 6, '2023-05-01 23:34:44', '2023-05-01 23:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `status`, `unit_id`, `user_id`, `created_at`, `updated_at`) VALUES
(241, 'Kitchens', 0, 63, 6, '2023-04-29 17:24:06', '2023-04-29 17:24:06'),
(242, 'Kitchens', 0, 64, 6, '2023-04-29 17:24:06', '2023-04-29 17:24:06'),
(243, 'Kitchens', 0, 65, 6, '2023-04-29 17:24:06', '2023-04-29 17:24:06'),
(244, 'Kitchens', 0, 66, 6, '2023-04-29 17:24:06', '2023-04-29 17:24:06'),
(245, 'Kitchens', 0, 67, 6, '2023-04-29 17:24:06', '2023-04-29 17:24:06'),
(246, 'Kitchens', 0, 68, 6, '2023-04-29 17:24:06', '2023-04-29 17:24:06'),
(247, 'Kitchens', 0, 63, 6, '2023-04-29 17:24:06', '2023-04-29 17:24:06'),
(248, 'Kitchens', 0, 64, 6, '2023-04-29 17:24:06', '2023-04-29 17:24:06'),
(249, 'Kitchens', 0, 65, 6, '2023-04-29 17:24:06', '2023-04-29 17:24:06'),
(250, 'Kitchens', 0, 66, 6, '2023-04-29 17:24:06', '2023-04-29 17:24:06'),
(251, 'Kitchens', 0, 67, 6, '2023-04-29 17:24:06', '2023-04-29 17:24:06'),
(252, 'Kitchens', 0, 68, 6, '2023-04-29 17:24:06', '2023-04-29 17:24:06'),
(253, 'Master Bedroom', 0, 63, 6, '2023-04-29 17:24:23', '2023-04-29 17:24:23'),
(254, 'Master Bedroom', 0, 64, 6, '2023-04-29 17:24:23', '2023-04-29 17:24:23'),
(255, 'Master Bedroom', 0, 65, 6, '2023-04-29 17:24:23', '2023-04-29 17:24:23'),
(256, 'Master Bedroom', 0, 66, 6, '2023-04-29 17:24:23', '2023-04-29 17:24:23'),
(257, 'Master Bedroom', 0, 67, 6, '2023-04-29 17:24:23', '2023-04-29 17:24:23'),
(258, 'Master Bedroom', 0, 68, 6, '2023-04-29 17:24:23', '2023-04-29 17:24:23'),
(259, 'Master Bedroom', 0, 63, 6, '2023-04-29 17:24:23', '2023-04-29 17:24:23'),
(260, 'Master Bedroom', 0, 64, 6, '2023-04-29 17:24:23', '2023-04-29 17:24:23'),
(261, 'Master Bedroom', 0, 65, 6, '2023-04-29 17:24:23', '2023-04-29 17:24:23'),
(262, 'Master Bedroom', 0, 66, 6, '2023-04-29 17:24:23', '2023-04-29 17:24:23'),
(263, 'Master Bedroom', 0, 67, 6, '2023-04-29 17:24:23', '2023-04-29 17:24:23'),
(264, 'Master Bedroom', 0, 68, 6, '2023-04-29 17:24:23', '2023-04-29 17:24:23'),
(265, 'Secondary Bathroom', 0, 63, 6, '2023-04-29 17:24:43', '2023-04-29 17:24:43'),
(266, 'Secondary Bathroom', 0, 64, 6, '2023-04-29 17:24:43', '2023-04-29 17:24:43'),
(267, 'Secondary Bathroom', 0, 65, 6, '2023-04-29 17:24:43', '2023-04-29 17:24:43'),
(268, 'Secondary Bathroom', 0, 66, 6, '2023-04-29 17:24:43', '2023-04-29 17:24:43'),
(269, 'Secondary Bathroom', 0, 67, 6, '2023-04-29 17:24:43', '2023-04-29 17:24:43'),
(270, 'Secondary Bathroom', 0, 68, 6, '2023-04-29 17:24:43', '2023-04-29 17:24:43'),
(271, 'Secondary Bathroom', 0, 63, 6, '2023-04-29 17:24:43', '2023-04-29 17:24:43'),
(272, 'Secondary Bathroom', 0, 64, 6, '2023-04-29 17:24:43', '2023-04-29 17:24:43'),
(273, 'Secondary Bathroom', 0, 65, 6, '2023-04-29 17:24:43', '2023-04-29 17:24:43'),
(274, 'Secondary Bathroom', 0, 66, 6, '2023-04-29 17:24:43', '2023-04-29 17:24:43'),
(275, 'Secondary Bathroom', 0, 67, 6, '2023-04-29 17:24:43', '2023-04-29 17:24:43'),
(276, 'Secondary Bathroom', 0, 68, 6, '2023-04-29 17:24:43', '2023-04-29 17:24:43'),
(277, 'Test Catagory', 0, 63, 6, '2023-04-29 17:26:31', '2023-04-29 17:26:31'),
(278, 'Test Catagory', 0, 64, 6, '2023-04-29 17:26:31', '2023-04-29 17:26:31'),
(279, 'Test Catagory', 0, 65, 6, '2023-04-29 17:26:31', '2023-04-29 17:26:31'),
(280, 'Test Catagory', 0, 66, 6, '2023-04-29 17:26:31', '2023-04-29 17:26:31'),
(281, 'Test Catagory', 0, 67, 6, '2023-04-29 17:26:31', '2023-04-29 17:26:31'),
(282, 'Test Catagory', 0, 68, 6, '2023-04-29 17:26:31', '2023-04-29 17:26:31'),
(283, 'Unit 1', 0, 69, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(284, 'Unit 1', 0, 69, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(285, 'Unit 1', 0, 69, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(286, 'Unit 1', 0, 69, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(287, 'Unit 1', 0, 69, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(288, 'Unit 1', 0, 69, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(289, 'Unit 1', 0, 69, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(290, 'Unit 2', 0, 70, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(291, 'Unit 2', 0, 70, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(292, 'Unit 2', 0, 70, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(293, 'Unit 2', 0, 70, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(294, 'Unit 2', 0, 70, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(295, 'Unit 2', 0, 70, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(296, 'Unit 2', 0, 70, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(297, 'Unit 3', 0, 71, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(298, 'Unit 3', 0, 71, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(299, 'Unit 3', 0, 71, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(300, 'Unit 3', 0, 71, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(301, 'Unit 3', 0, 71, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(302, 'Unit 3', 0, 71, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(303, 'Unit 3', 0, 71, 6, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(376, 'Master Bedroom', 0, 72, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(377, 'Master Bedroom', 0, 73, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(378, 'Master Bedroom', 0, 74, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(379, 'Master Bedroom', 0, 75, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(380, 'Master Bedroom', 0, 76, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(381, 'Master Bedroom', 0, 77, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(382, 'Master Bedroom', 0, 72, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(383, 'Master Bedroom', 0, 73, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(384, 'Master Bedroom', 0, 74, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(385, 'Master Bedroom', 0, 75, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(386, 'Master Bedroom', 0, 76, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(387, 'Master Bedroom', 0, 77, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(388, 'Master Bedroom', 0, 72, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(389, 'Master Bedroom', 0, 73, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(390, 'Master Bedroom', 0, 74, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(391, 'Master Bedroom', 0, 75, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(392, 'Master Bedroom', 0, 76, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(393, 'Master Bedroom', 0, 77, 6, '2023-04-29 22:33:25', '2023-04-29 22:33:25'),
(394, 'Kitchens', 0, 72, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(395, 'Kitchens', 0, 73, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(396, 'Kitchens', 0, 74, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(397, 'Kitchens', 0, 75, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(398, 'Kitchens', 0, 76, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(399, 'Kitchens', 0, 77, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(400, 'Kitchens', 0, 72, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(401, 'Kitchens', 0, 73, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(402, 'Kitchens', 0, 74, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(403, 'Kitchens', 0, 75, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(404, 'Kitchens', 0, 76, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(405, 'Kitchens', 0, 77, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(406, 'Kitchens', 0, 72, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(407, 'Kitchens', 0, 73, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(408, 'Kitchens', 0, 74, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(409, 'Kitchens', 0, 75, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(410, 'Kitchens', 0, 76, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(411, 'Kitchens', 0, 77, 6, '2023-04-29 22:34:59', '2023-04-29 22:34:59'),
(418, 'Powder Room', 0, 72, 6, '2023-04-29 22:36:37', '2023-04-29 22:36:37'),
(419, 'Powder Room', 0, 73, 6, '2023-04-29 22:36:37', '2023-04-29 22:36:37'),
(420, 'Powder Room', 0, 74, 6, '2023-04-29 22:36:37', '2023-04-29 22:36:37'),
(421, 'Powder Room', 0, 75, 6, '2023-04-29 22:36:37', '2023-04-29 22:36:37'),
(422, 'Powder Room', 0, 76, 6, '2023-04-29 22:36:37', '2023-04-29 22:36:37'),
(423, 'Powder Room', 0, 77, 6, '2023-04-29 22:36:37', '2023-04-29 22:36:37'),
(424, 'Powder Room', 0, 72, 6, '2023-04-29 22:36:37', '2023-04-29 22:36:37'),
(425, 'Powder Room', 0, 73, 6, '2023-04-29 22:36:37', '2023-04-29 22:36:37'),
(426, 'Powder Room', 0, 74, 6, '2023-04-29 22:36:37', '2023-04-29 22:36:37'),
(427, 'Powder Room', 0, 75, 6, '2023-04-29 22:36:37', '2023-04-29 22:36:37'),
(428, 'Powder Room', 0, 76, 6, '2023-04-29 22:36:37', '2023-04-29 22:36:37'),
(429, 'Powder Room', 0, 77, 6, '2023-04-29 22:36:37', '2023-04-29 22:36:37'),
(430, 'Master Bathroom', 0, 72, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(431, 'Master Bathroom', 0, 73, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(432, 'Master Bathroom', 0, 74, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(433, 'Master Bathroom', 0, 75, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(434, 'Master Bathroom', 0, 76, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(435, 'Master Bathroom', 0, 77, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(436, 'Master Bathroom', 0, 72, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(437, 'Master Bathroom', 0, 73, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(438, 'Master Bathroom', 0, 74, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(439, 'Master Bathroom', 0, 75, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(440, 'Master Bathroom', 0, 76, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(441, 'Master Bathroom', 0, 77, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(442, 'Master Bathroom', 0, 72, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(443, 'Master Bathroom', 0, 73, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(444, 'Master Bathroom', 0, 74, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(445, 'Master Bathroom', 0, 75, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(446, 'Master Bathroom', 0, 76, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(447, 'Master Bathroom', 0, 77, 6, '2023-04-29 22:37:12', '2023-04-29 22:37:12'),
(448, 'Kitchens', 0, 72, 6, '2023-04-29 22:38:03', '2023-04-29 22:38:03'),
(449, 'Kitchens', 0, 73, 6, '2023-04-29 22:38:03', '2023-04-29 22:38:03'),
(450, 'Kitchens', 0, 74, 6, '2023-04-29 22:38:03', '2023-04-29 22:38:03'),
(451, 'Kitchens', 0, 75, 6, '2023-04-29 22:38:03', '2023-04-29 22:38:03'),
(452, 'Kitchens', 0, 76, 6, '2023-04-29 22:38:03', '2023-04-29 22:38:03'),
(453, 'Kitchens', 0, 77, 6, '2023-04-29 22:38:03', '2023-04-29 22:38:03'),
(574, 'Master Bedroom', 0, 78, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(575, 'Master Bedroom', 0, 79, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(576, 'Master Bedroom', 0, 80, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(577, 'Master Bedroom', 0, 81, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(578, 'Master Bedroom', 0, 82, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(579, 'Master Bedroom', 0, 83, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(580, 'Master Bedroom', 0, 84, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(581, 'Master Bedroom', 0, 85, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(582, 'Master Bedroom', 0, 86, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(583, 'Master Bedroom', 0, 87, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(584, 'Master Bedroom', 0, 78, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(585, 'Master Bedroom', 0, 79, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(586, 'Master Bedroom', 0, 80, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(587, 'Master Bedroom', 0, 81, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(588, 'Master Bedroom', 0, 82, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(589, 'Master Bedroom', 0, 83, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(590, 'Master Bedroom', 0, 84, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(591, 'Master Bedroom', 0, 85, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(592, 'Master Bedroom', 0, 86, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(593, 'Master Bedroom', 0, 87, 6, '2023-04-29 23:08:19', '2023-04-29 23:08:19'),
(628, 'Master Bedroom', 0, 105, 6, '2023-04-30 13:47:35', '2023-04-30 13:47:35'),
(629, 'Master Bedroom', 0, 106, 6, '2023-04-30 13:47:35', '2023-04-30 13:47:35'),
(630, 'Master Bedroom', 0, 107, 6, '2023-04-30 13:47:35', '2023-04-30 13:47:35'),
(634, 'Master Bedroom', 0, 105, 6, '2023-04-30 20:44:02', '2023-04-30 20:44:02'),
(635, 'Master Bedroom', 0, 106, 6, '2023-04-30 20:44:02', '2023-04-30 20:44:02'),
(636, 'Master Bedroom', 0, 107, 6, '2023-04-30 20:44:02', '2023-04-30 20:44:02'),
(1022, 'Roof', 0, 191, 6, '2023-05-01 23:32:45', '2023-05-01 23:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(12, 4, 'Bsplash', 6, '2023-04-27 05:48:18', '2023-04-27 05:48:18'),
(13, 5, 'Water proofing', 6, '2023-04-27 05:58:55', '2023-04-27 05:58:55'),
(14, 5, 'Mud Set', 6, '2023-04-27 05:58:55', '2023-04-27 05:58:55'),
(15, 5, 'Heat Mat', 6, '2023-04-27 05:58:55', '2023-04-27 05:58:55'),
(16, 5, 'Sound Control', 6, '2023-04-27 05:58:55', '2023-04-27 05:58:55'),
(17, 5, 'Floor Tile', 6, '2023-04-27 05:58:55', '2023-04-27 05:58:55'),
(18, 5, 'TL01', 6, '2023-04-27 05:58:55', '2023-04-27 05:58:55'),
(19, 6, 'Mud', 6, '2023-04-27 05:59:34', '2023-04-27 05:59:34'),
(20, 6, 'Mud Bag', 6, '2023-04-27 05:59:34', '2023-04-27 05:59:34'),
(21, 7, 'Entry Saddle', 6, '2023-04-27 06:00:58', '2023-04-27 06:00:58'),
(22, 7, 'Floor', 6, '2023-04-27 06:00:58', '2023-04-27 06:00:58'),
(23, 7, 'Shower Floor', 6, '2023-04-27 06:00:58', '2023-04-27 06:00:58'),
(24, 7, 'Shower Saddle', 6, '2023-04-27 06:00:58', '2023-04-27 06:00:58'),
(25, 7, 'Base', 6, '2023-04-27 06:00:58', '2023-04-27 06:00:58'),
(26, 7, 'Walls', 6, '2023-04-27 06:00:58', '2023-04-27 06:00:58'),
(27, 7, 'Tub Deck', 6, '2023-04-27 06:00:58', '2023-04-27 06:00:58'),
(28, 8, 'Water proofing', 6, '2023-04-27 06:05:28', '2023-04-27 06:05:28'),
(29, 8, 'Sound Control', 6, '2023-04-27 06:05:28', '2023-04-27 06:05:28'),
(30, 8, 'Main Floor', 6, '2023-04-27 06:05:28', '2023-04-27 06:05:28'),
(31, 8, 'Shower Floor', 6, '2023-04-27 06:05:28', '2023-04-27 06:05:28'),
(32, 8, 'Tub deck', 6, '2023-04-27 06:05:28', '2023-04-27 06:05:28'),
(33, 8, 'Vanity', 6, '2023-04-27 06:05:28', '2023-04-27 06:05:28'),
(34, 8, 'Mud Set', 6, '2023-04-27 06:05:28', '2023-04-27 06:05:28'),
(35, 8, 'Leak Test', 6, '2023-04-27 06:05:28', '2023-04-27 06:05:28'),
(36, 8, 'Floor Border', 6, '2023-04-27 06:05:28', '2023-04-27 06:05:28'),
(37, 8, 'Shower curve', 6, '2023-04-27 06:05:28', '2023-04-27 06:05:28'),
(38, 8, 'Wall Trim', 6, '2023-04-27 06:05:28', '2023-04-27 06:05:28'),
(39, 8, 'Tub Apron', 6, '2023-04-27 06:05:28', '2023-04-27 06:05:28'),
(40, 4, 'Ctop', 6, '2023-04-27 07:00:51', '2023-04-27 07:00:51'),
(47, 14, 'cat1', 6, '2023-04-29 15:47:02', '2023-04-29 15:47:02'),
(48, 14, 'cat2', 6, '2023-04-29 15:47:02', '2023-04-29 15:47:02'),
(49, 14, 'cat3', 6, '2023-04-29 15:47:02', '2023-04-29 15:47:02'),
(50, 15, 'Test 1', 6, '2023-04-29 17:23:43', '2023-04-29 17:23:43'),
(51, 15, 'Test 2', 6, '2023-04-29 17:23:43', '2023-04-29 17:23:43'),
(52, 16, 'rubber', 6, '2023-04-30 01:37:40', '2023-04-30 01:37:40'),
(53, 16, 'salt', 6, '2023-04-30 01:37:40', '2023-04-30 01:37:40'),
(54, 17, 'Floor', 6, '2023-04-30 02:35:35', '2023-04-30 02:35:35'),
(55, 17, 'Wall', 6, '2023-04-30 02:35:41', '2023-04-30 02:35:41'),
(56, 18, 'vanity', 6, '2023-05-01 13:30:45', '2023-05-01 13:30:45'),
(57, 5, 'vanity top', 6, '2023-05-01 13:31:41', '2023-05-01 13:31:41'),
(58, 8, 'vanity top', 6, '2023-05-01 13:32:23', '2023-05-01 13:32:23'),
(59, 19, 'outlets', 6, '2023-05-01 17:29:11', '2023-05-01 17:29:11'),
(60, 19, 'spots', 6, '2023-05-01 17:29:11', '2023-05-01 17:29:11'),
(61, 19, 'roughing', 6, '2023-05-01 17:29:11', '2023-05-01 17:29:11'),
(62, 19, 'switches', 6, '2023-05-01 17:29:11', '2023-05-01 17:29:11'),
(63, 20, 'Roughing', 6, '2023-05-01 17:30:04', '2023-05-01 17:30:04'),
(64, 20, 'Spots', 6, '2023-05-01 17:30:04', '2023-05-01 17:30:04'),
(65, 20, 'outlets', 6, '2023-05-01 17:30:04', '2023-05-01 17:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sections`
--

CREATE TABLE `sub_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `completion_status` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT -1,
  `created_at` timestamp NULL DEFAULT NULL,
  `notes` varchar(255) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sections`
--

INSERT INTO `sub_sections` (`id`, `completion_status`, `name`, `section_id`, `user_id`, `status`, `created_at`, `notes`, `updated_at`) VALUES
(940, 1, 'Bsplash', 241, 6, 5, '2023-04-29 17:24:06', 'sdsaf', '2023-04-29 21:31:02'),
(941, 1, 'Ctop', 241, 6, 5, '2023-04-29 17:24:06', '', '2023-04-29 21:50:55'),
(942, 0, 'Bsplash', 242, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(943, 0, 'Ctop', 242, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(944, 0, 'Bsplash', 243, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(945, 0, 'Ctop', 243, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(946, 0, 'Bsplash', 244, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(947, 0, 'Ctop', 244, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(948, 0, 'Bsplash', 245, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(949, 0, 'Ctop', 245, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(950, 0, 'Bsplash', 246, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(951, 0, 'Ctop', 246, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(952, 0, 'Bsplash', 247, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(953, 0, 'Ctop', 247, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(954, 0, 'Bsplash', 248, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(955, 0, 'Ctop', 248, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(956, 0, 'Bsplash', 249, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(957, 0, 'Ctop', 249, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(958, 0, 'Bsplash', 250, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(959, 0, 'Ctop', 250, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(960, 0, 'Bsplash', 251, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(961, 0, 'Ctop', 251, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(962, 0, 'Bsplash', 252, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(963, 0, 'Ctop', 252, 6, 0, '2023-04-29 17:24:06', '', '2023-04-29 17:24:06'),
(964, 1, 'Water proofing', 253, 6, -1, '2023-04-29 17:24:23', '', '2023-04-29 17:25:11'),
(965, 1, 'Mud Set', 253, 6, -1, '2023-04-29 17:24:23', '', '2023-04-29 17:25:11'),
(966, 1, 'Heat Mat', 253, 6, -1, '2023-04-29 17:24:23', '', '2023-04-29 17:25:11'),
(967, 1, 'Sound Control', 253, 6, -1, '2023-04-29 17:24:23', '', '2023-04-29 17:25:11'),
(968, 0, 'Floor Tile', 253, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(969, 0, 'TL01', 253, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(970, 0, 'Water proofing', 254, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(971, 0, 'Mud Set', 254, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(972, 0, 'Heat Mat', 254, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(973, 0, 'Sound Control', 254, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(974, 0, 'Floor Tile', 254, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(975, 0, 'TL01', 254, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(976, 0, 'Water proofing', 255, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(977, 0, 'Mud Set', 255, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(978, 0, 'Heat Mat', 255, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(979, 0, 'Sound Control', 255, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(980, 0, 'Floor Tile', 255, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(981, 0, 'TL01', 255, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(982, 0, 'Water proofing', 256, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(983, 0, 'Mud Set', 256, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(984, 0, 'Heat Mat', 256, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(985, 0, 'Sound Control', 256, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(986, 0, 'Floor Tile', 256, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(987, 0, 'TL01', 256, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(988, 0, 'Water proofing', 257, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(989, 0, 'Mud Set', 257, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(990, 0, 'Heat Mat', 257, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(991, 0, 'Sound Control', 257, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(992, 0, 'Floor Tile', 257, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(993, 0, 'TL01', 257, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(994, 0, 'Water proofing', 258, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(995, 0, 'Mud Set', 258, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(996, 0, 'Heat Mat', 258, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(997, 0, 'Sound Control', 258, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(998, 0, 'Floor Tile', 258, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(999, 0, 'TL01', 258, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1000, 0, 'Water proofing', 259, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1001, 0, 'Mud Set', 259, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1002, 0, 'Heat Mat', 259, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1003, 0, 'Sound Control', 259, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1004, 0, 'Floor Tile', 259, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1005, 0, 'TL01', 259, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1006, 0, 'Water proofing', 260, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1007, 0, 'Mud Set', 260, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1008, 0, 'Heat Mat', 260, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1009, 0, 'Sound Control', 260, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1010, 0, 'Floor Tile', 260, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1011, 0, 'TL01', 260, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1012, 0, 'Water proofing', 261, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1013, 0, 'Mud Set', 261, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1014, 0, 'Heat Mat', 261, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1015, 0, 'Sound Control', 261, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1016, 0, 'Floor Tile', 261, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1017, 0, 'TL01', 261, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1018, 0, 'Water proofing', 262, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1019, 0, 'Mud Set', 262, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1020, 0, 'Heat Mat', 262, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1021, 0, 'Sound Control', 262, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1022, 0, 'Floor Tile', 262, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1023, 0, 'TL01', 262, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1024, 0, 'Water proofing', 263, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1025, 0, 'Mud Set', 263, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1026, 0, 'Heat Mat', 263, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1027, 0, 'Sound Control', 263, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1028, 0, 'Floor Tile', 263, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1029, 0, 'TL01', 263, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1030, 0, 'Water proofing', 264, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1031, 0, 'Mud Set', 264, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1032, 0, 'Heat Mat', 264, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1033, 0, 'Sound Control', 264, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1034, 0, 'Floor Tile', 264, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1035, 0, 'TL01', 264, 6, 0, '2023-04-29 17:24:23', '', '2023-04-29 17:24:23'),
(1036, 0, 'Entry Saddle', 265, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1037, 0, 'Floor', 265, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1038, 0, 'Shower Floor', 265, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1039, 0, 'Shower Saddle', 265, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1040, 0, 'Base', 265, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1041, 0, 'Walls', 265, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1042, 0, 'Tub Deck', 265, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1043, 0, 'Entry Saddle', 266, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1044, 0, 'Floor', 266, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1045, 0, 'Shower Floor', 266, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1046, 0, 'Shower Saddle', 266, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1047, 0, 'Base', 266, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1048, 0, 'Walls', 266, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1049, 0, 'Tub Deck', 266, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1050, 0, 'Entry Saddle', 267, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1051, 0, 'Floor', 267, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1052, 0, 'Shower Floor', 267, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1053, 0, 'Shower Saddle', 267, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1054, 0, 'Base', 267, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1055, 0, 'Walls', 267, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1056, 0, 'Tub Deck', 267, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1057, 0, 'Entry Saddle', 268, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1058, 0, 'Floor', 268, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1059, 0, 'Shower Floor', 268, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1060, 0, 'Shower Saddle', 268, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1061, 0, 'Base', 268, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1062, 0, 'Walls', 268, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1063, 0, 'Tub Deck', 268, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1064, 0, 'Entry Saddle', 269, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1065, 0, 'Floor', 269, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1066, 0, 'Shower Floor', 269, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1067, 0, 'Shower Saddle', 269, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1068, 0, 'Base', 269, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1069, 0, 'Walls', 269, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1070, 0, 'Tub Deck', 269, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1071, 0, 'Entry Saddle', 270, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1072, 0, 'Floor', 270, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1073, 0, 'Shower Floor', 270, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1074, 0, 'Shower Saddle', 270, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1075, 0, 'Base', 270, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1076, 0, 'Walls', 270, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1077, 0, 'Tub Deck', 270, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1078, 0, 'Entry Saddle', 271, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1079, 0, 'Floor', 271, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1080, 0, 'Shower Floor', 271, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1081, 0, 'Shower Saddle', 271, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1082, 0, 'Base', 271, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1083, 0, 'Walls', 271, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1084, 0, 'Tub Deck', 271, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1085, 0, 'Entry Saddle', 272, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1086, 0, 'Floor', 272, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1087, 0, 'Shower Floor', 272, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1088, 0, 'Shower Saddle', 272, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1089, 0, 'Base', 272, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1090, 0, 'Walls', 272, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1091, 0, 'Tub Deck', 272, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1092, 0, 'Entry Saddle', 273, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1093, 0, 'Floor', 273, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1094, 0, 'Shower Floor', 273, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1095, 0, 'Shower Saddle', 273, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1096, 0, 'Base', 273, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1097, 0, 'Walls', 273, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1098, 0, 'Tub Deck', 273, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1099, 0, 'Entry Saddle', 274, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1100, 0, 'Floor', 274, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1101, 0, 'Shower Floor', 274, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1102, 0, 'Shower Saddle', 274, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1103, 0, 'Base', 274, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1104, 0, 'Walls', 274, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1105, 0, 'Tub Deck', 274, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1106, 0, 'Entry Saddle', 275, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1107, 0, 'Floor', 275, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1108, 0, 'Shower Floor', 275, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1109, 0, 'Shower Saddle', 275, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1110, 0, 'Base', 275, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1111, 0, 'Walls', 275, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1112, 0, 'Tub Deck', 275, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1113, 0, 'Entry Saddle', 276, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1114, 0, 'Floor', 276, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1115, 0, 'Shower Floor', 276, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1116, 0, 'Shower Saddle', 276, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1117, 0, 'Base', 276, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1118, 0, 'Walls', 276, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1119, 0, 'Tub Deck', 276, 6, 0, '2023-04-29 17:24:43', '', '2023-04-29 17:24:43'),
(1120, 1, 'Test 1', 277, 6, -1, '2023-04-29 17:26:31', '', '2023-04-29 17:26:43'),
(1121, 1, 'Test 2', 277, 6, -1, '2023-04-29 17:26:31', '', '2023-04-29 17:26:43'),
(1122, 0, 'Test 1', 278, 6, 0, '2023-04-29 17:26:31', '', '2023-04-29 17:26:31'),
(1123, 0, 'Test 2', 278, 6, 0, '2023-04-29 17:26:31', '', '2023-04-29 17:26:31'),
(1124, 0, 'Test 1', 279, 6, 0, '2023-04-29 17:26:31', '', '2023-04-29 17:26:31'),
(1125, 0, 'Test 2', 279, 6, 0, '2023-04-29 17:26:31', '', '2023-04-29 17:26:31'),
(1126, 0, 'Test 1', 280, 6, 0, '2023-04-29 17:26:31', '', '2023-04-29 17:26:31'),
(1127, 0, 'Test 2', 280, 6, 0, '2023-04-29 17:26:31', '', '2023-04-29 17:26:31'),
(1128, 0, 'Test 1', 281, 6, 0, '2023-04-29 17:26:31', '', '2023-04-29 17:26:31'),
(1129, 0, 'Test 2', 281, 6, 0, '2023-04-29 17:26:31', '', '2023-04-29 17:26:31'),
(1130, 0, 'Test 1', 282, 6, 0, '2023-04-29 17:26:31', '', '2023-04-29 17:26:31'),
(1131, 0, 'Test 2', 282, 6, 0, '2023-04-29 17:26:31', '', '2023-04-29 17:26:31'),
(1132, 1, 'Unit 1', 283, 6, 5, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1133, 1, 'Unit 1', 283, 6, -1, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1134, 0, 'Unit 1', 284, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1135, 0, 'Unit 1', 284, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1136, 1, 'Unit 1', 285, 6, -1, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1137, 1, 'Unit 1', 285, 6, -1, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1138, 1, 'Unit 1', 285, 6, -1, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1139, 1, 'Unit 1', 285, 6, -1, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1140, 0, 'Unit 1', 285, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1141, 0, 'Unit 1', 285, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1142, 0, 'Unit 1', 286, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1143, 0, 'Unit 1', 286, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1144, 0, 'Unit 1', 286, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1145, 0, 'Unit 1', 286, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1146, 0, 'Unit 1', 286, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1147, 0, 'Unit 1', 286, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1148, 0, 'Unit 1', 287, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1149, 0, 'Unit 1', 287, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1150, 0, 'Unit 1', 287, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1151, 0, 'Unit 1', 287, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1152, 0, 'Unit 1', 287, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1153, 0, 'Unit 1', 287, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1154, 0, 'Unit 1', 287, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1155, 0, 'Unit 1', 288, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1156, 0, 'Unit 1', 288, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1157, 0, 'Unit 1', 288, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1158, 0, 'Unit 1', 288, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1159, 0, 'Unit 1', 288, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1160, 0, 'Unit 1', 288, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1161, 0, 'Unit 1', 288, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1162, 1, 'Unit 1', 289, 6, -1, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1163, 1, 'Unit 1', 289, 6, -1, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1164, 0, 'Unit 2', 290, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1165, 0, 'Unit 2', 290, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1166, 0, 'Unit 2', 291, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1167, 0, 'Unit 2', 291, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1168, 0, 'Unit 2', 292, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1169, 0, 'Unit 2', 292, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1170, 0, 'Unit 2', 292, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1171, 0, 'Unit 2', 292, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1172, 0, 'Unit 2', 292, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1173, 0, 'Unit 2', 292, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1174, 0, 'Unit 2', 293, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1175, 0, 'Unit 2', 293, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1176, 0, 'Unit 2', 293, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1177, 0, 'Unit 2', 293, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1178, 0, 'Unit 2', 293, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1179, 0, 'Unit 2', 293, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1180, 0, 'Unit 2', 294, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1181, 0, 'Unit 2', 294, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1182, 0, 'Unit 2', 294, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1183, 0, 'Unit 2', 294, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1184, 0, 'Unit 2', 294, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1185, 0, 'Unit 2', 294, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1186, 0, 'Unit 2', 294, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1187, 0, 'Unit 2', 295, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1188, 0, 'Unit 2', 295, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1189, 0, 'Unit 2', 295, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1190, 0, 'Unit 2', 295, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1191, 0, 'Unit 2', 295, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1192, 0, 'Unit 2', 295, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1193, 0, 'Unit 2', 295, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1194, 0, 'Unit 2', 296, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1195, 0, 'Unit 2', 296, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1196, 0, 'Unit 3', 297, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1197, 0, 'Unit 3', 297, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1198, 0, 'Unit 3', 298, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1199, 0, 'Unit 3', 298, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1200, 0, 'Unit 3', 299, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1201, 0, 'Unit 3', 299, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1202, 0, 'Unit 3', 299, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1203, 0, 'Unit 3', 299, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1204, 0, 'Unit 3', 299, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1205, 0, 'Unit 3', 299, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1206, 0, 'Unit 3', 300, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1207, 0, 'Unit 3', 300, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1208, 0, 'Unit 3', 300, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1209, 0, 'Unit 3', 300, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1210, 0, 'Unit 3', 300, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1211, 0, 'Unit 3', 300, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1212, 0, 'Unit 3', 301, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1213, 0, 'Unit 3', 301, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1214, 0, 'Unit 3', 301, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1215, 0, 'Unit 3', 301, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1216, 0, 'Unit 3', 301, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1217, 0, 'Unit 3', 301, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1218, 0, 'Unit 3', 301, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1219, 0, 'Unit 3', 302, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1220, 0, 'Unit 3', 302, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1221, 0, 'Unit 3', 302, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1222, 0, 'Unit 3', 302, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1223, 0, 'Unit 3', 302, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1224, 0, 'Unit 3', 302, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1225, 0, 'Unit 3', 302, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1226, 0, 'Unit 3', 303, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1227, 0, 'Unit 3', 303, 6, 0, '2023-04-29 21:49:08', '', '2023-04-29 21:49:08'),
(1372, 0, 'Water proofing', 376, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1373, 0, 'Mud Set', 376, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1374, 0, 'Heat Mat', 376, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1375, 0, 'Sound Control', 376, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1376, 0, 'Floor Tile', 376, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1377, 0, 'TL01', 376, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1378, 0, 'Water proofing', 377, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1379, 0, 'Mud Set', 377, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1380, 0, 'Heat Mat', 377, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1381, 0, 'Sound Control', 377, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1382, 0, 'Floor Tile', 377, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1383, 0, 'TL01', 377, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1384, 0, 'Water proofing', 378, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1385, 0, 'Mud Set', 378, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1386, 0, 'Heat Mat', 378, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1387, 0, 'Sound Control', 378, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1388, 0, 'Floor Tile', 378, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1389, 0, 'TL01', 378, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1390, 0, 'Water proofing', 379, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1391, 0, 'Mud Set', 379, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1392, 0, 'Heat Mat', 379, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1393, 0, 'Sound Control', 379, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1394, 0, 'Floor Tile', 379, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1395, 0, 'TL01', 379, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1396, 0, 'Water proofing', 380, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1397, 0, 'Mud Set', 380, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1398, 0, 'Heat Mat', 380, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1399, 0, 'Sound Control', 380, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1400, 0, 'Floor Tile', 380, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1401, 0, 'TL01', 380, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1402, 0, 'Water proofing', 381, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1403, 0, 'Mud Set', 381, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1404, 0, 'Heat Mat', 381, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1405, 0, 'Sound Control', 381, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1406, 0, 'Floor Tile', 381, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1407, 0, 'TL01', 381, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1408, 0, 'Water proofing', 382, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1409, 0, 'Mud Set', 382, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1410, 0, 'Heat Mat', 382, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1411, 0, 'Sound Control', 382, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1412, 0, 'Floor Tile', 382, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1413, 0, 'TL01', 382, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1414, 0, 'Water proofing', 383, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1415, 0, 'Mud Set', 383, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1416, 0, 'Heat Mat', 383, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1417, 0, 'Sound Control', 383, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1418, 0, 'Floor Tile', 383, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1419, 0, 'TL01', 383, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1420, 0, 'Water proofing', 384, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1421, 0, 'Mud Set', 384, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1422, 0, 'Heat Mat', 384, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1423, 0, 'Sound Control', 384, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1424, 0, 'Floor Tile', 384, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1425, 0, 'TL01', 384, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1426, 0, 'Water proofing', 385, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1427, 0, 'Mud Set', 385, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1428, 0, 'Heat Mat', 385, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1429, 0, 'Sound Control', 385, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1430, 0, 'Floor Tile', 385, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1431, 0, 'TL01', 385, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1432, 0, 'Water proofing', 386, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1433, 0, 'Mud Set', 386, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1434, 0, 'Heat Mat', 386, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1435, 0, 'Sound Control', 386, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1436, 0, 'Floor Tile', 386, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1437, 0, 'TL01', 386, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1438, 0, 'Water proofing', 387, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1439, 0, 'Mud Set', 387, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1440, 0, 'Heat Mat', 387, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1441, 0, 'Sound Control', 387, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1442, 0, 'Floor Tile', 387, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1443, 0, 'TL01', 387, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1444, 0, 'Water proofing', 388, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1445, 0, 'Mud Set', 388, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1446, 0, 'Heat Mat', 388, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1447, 0, 'Sound Control', 388, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1448, 0, 'Floor Tile', 388, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1449, 0, 'TL01', 388, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1450, 0, 'Water proofing', 389, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1451, 0, 'Mud Set', 389, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1452, 0, 'Heat Mat', 389, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1453, 0, 'Sound Control', 389, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1454, 0, 'Floor Tile', 389, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1455, 0, 'TL01', 389, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1456, 0, 'Water proofing', 390, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1457, 0, 'Mud Set', 390, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1458, 0, 'Heat Mat', 390, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1459, 0, 'Sound Control', 390, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1460, 0, 'Floor Tile', 390, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1461, 0, 'TL01', 390, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1462, 0, 'Water proofing', 391, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1463, 0, 'Mud Set', 391, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1464, 0, 'Heat Mat', 391, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1465, 0, 'Sound Control', 391, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1466, 0, 'Floor Tile', 391, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1467, 0, 'TL01', 391, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1468, 0, 'Water proofing', 392, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1469, 0, 'Mud Set', 392, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1470, 0, 'Heat Mat', 392, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1471, 0, 'Sound Control', 392, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1472, 0, 'Floor Tile', 392, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1473, 0, 'TL01', 392, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1474, 0, 'Water proofing', 393, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1475, 0, 'Mud Set', 393, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1476, 0, 'Heat Mat', 393, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1477, 0, 'Sound Control', 393, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1478, 0, 'Floor Tile', 393, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1479, 0, 'TL01', 393, 6, 0, '2023-04-29 22:33:25', '', '2023-04-29 22:33:25'),
(1480, 0, 'Bsplash', 394, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1481, 0, 'Ctop', 394, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1482, 0, 'Bsplash', 395, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1483, 0, 'Ctop', 395, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1484, 0, 'Bsplash', 396, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1485, 0, 'Ctop', 396, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1486, 0, 'Bsplash', 397, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1487, 0, 'Ctop', 397, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1488, 0, 'Bsplash', 398, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1489, 0, 'Ctop', 398, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1490, 0, 'Bsplash', 399, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1491, 0, 'Ctop', 399, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1492, 0, 'Bsplash', 400, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1493, 0, 'Ctop', 400, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1494, 0, 'Bsplash', 401, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1495, 0, 'Ctop', 401, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1496, 0, 'Bsplash', 402, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1497, 0, 'Ctop', 402, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1498, 0, 'Bsplash', 403, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1499, 0, 'Ctop', 403, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1500, 0, 'Bsplash', 404, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1501, 0, 'Ctop', 404, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1502, 0, 'Bsplash', 405, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1503, 0, 'Ctop', 405, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1504, 0, 'Bsplash', 406, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1505, 0, 'Ctop', 406, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1506, 0, 'Bsplash', 407, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1507, 0, 'Ctop', 407, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1508, 0, 'Bsplash', 408, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1509, 0, 'Ctop', 408, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1510, 0, 'Bsplash', 409, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1511, 0, 'Ctop', 409, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1512, 0, 'Bsplash', 410, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1513, 0, 'Ctop', 410, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1514, 0, 'Bsplash', 411, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1515, 0, 'Ctop', 411, 6, 0, '2023-04-29 22:34:59', '', '2023-04-29 22:34:59'),
(1528, 0, 'Mud', 418, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1529, 0, 'Mud Bag', 418, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1530, 0, 'Mud', 419, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1531, 0, 'Mud Bag', 419, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1532, 0, 'Mud', 420, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1533, 0, 'Mud Bag', 420, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1534, 0, 'Mud', 421, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1535, 0, 'Mud Bag', 421, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1536, 0, 'Mud', 422, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1537, 0, 'Mud Bag', 422, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1538, 0, 'Mud', 423, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1539, 0, 'Mud Bag', 423, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1540, 0, 'Mud', 424, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1541, 0, 'Mud Bag', 424, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1542, 0, 'Mud', 425, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1543, 0, 'Mud Bag', 425, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1544, 0, 'Mud', 426, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1545, 0, 'Mud Bag', 426, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1546, 0, 'Mud', 427, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1547, 0, 'Mud Bag', 427, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1548, 0, 'Mud', 428, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1549, 0, 'Mud Bag', 428, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1550, 0, 'Mud', 429, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1551, 0, 'Mud Bag', 429, 6, 0, '2023-04-29 22:36:37', '', '2023-04-29 22:36:37'),
(1552, 0, 'Water proofing', 430, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1553, 0, 'Sound Control', 430, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1554, 0, 'Main Floor', 430, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1555, 0, 'Shower Floor', 430, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1556, 0, 'Tub deck', 430, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1557, 0, 'Vanity', 430, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1558, 0, 'Mud Set', 430, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1559, 0, 'Leak Test', 430, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1560, 0, 'Floor Border', 430, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1561, 0, 'Shower curve', 430, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1562, 0, 'Wall Trim', 430, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1563, 0, 'Tub Apron', 430, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1564, 0, 'Water proofing', 431, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1565, 0, 'Sound Control', 431, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1566, 0, 'Main Floor', 431, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1567, 0, 'Shower Floor', 431, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1568, 0, 'Tub deck', 431, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1569, 0, 'Vanity', 431, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1570, 0, 'Mud Set', 431, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1571, 0, 'Leak Test', 431, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1572, 0, 'Floor Border', 431, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1573, 0, 'Shower curve', 431, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1574, 0, 'Wall Trim', 431, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1575, 0, 'Tub Apron', 431, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1576, 0, 'Water proofing', 432, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1577, 0, 'Sound Control', 432, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1578, 0, 'Main Floor', 432, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1579, 0, 'Shower Floor', 432, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1580, 0, 'Tub deck', 432, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1581, 0, 'Vanity', 432, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1582, 0, 'Mud Set', 432, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1583, 0, 'Leak Test', 432, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1584, 0, 'Floor Border', 432, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1585, 0, 'Shower curve', 432, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1586, 0, 'Wall Trim', 432, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1587, 0, 'Tub Apron', 432, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1588, 0, 'Water proofing', 433, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1589, 0, 'Sound Control', 433, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1590, 0, 'Main Floor', 433, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1591, 0, 'Shower Floor', 433, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1592, 0, 'Tub deck', 433, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1593, 0, 'Vanity', 433, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1594, 0, 'Mud Set', 433, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1595, 0, 'Leak Test', 433, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1596, 0, 'Floor Border', 433, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1597, 0, 'Shower curve', 433, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1598, 0, 'Wall Trim', 433, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1599, 0, 'Tub Apron', 433, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1600, 0, 'Water proofing', 434, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1601, 0, 'Sound Control', 434, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1602, 0, 'Main Floor', 434, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1603, 0, 'Shower Floor', 434, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1604, 0, 'Tub deck', 434, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1605, 0, 'Vanity', 434, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1606, 0, 'Mud Set', 434, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1607, 0, 'Leak Test', 434, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1608, 0, 'Floor Border', 434, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1609, 0, 'Shower curve', 434, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1610, 0, 'Wall Trim', 434, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1611, 0, 'Tub Apron', 434, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1612, 0, 'Water proofing', 435, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1613, 0, 'Sound Control', 435, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1614, 0, 'Main Floor', 435, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1615, 0, 'Shower Floor', 435, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1616, 0, 'Tub deck', 435, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1617, 0, 'Vanity', 435, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1618, 0, 'Mud Set', 435, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1619, 0, 'Leak Test', 435, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1620, 0, 'Floor Border', 435, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1621, 0, 'Shower curve', 435, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1622, 0, 'Wall Trim', 435, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1623, 0, 'Tub Apron', 435, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1624, 0, 'Water proofing', 436, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1625, 0, 'Sound Control', 436, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1626, 0, 'Main Floor', 436, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1627, 0, 'Shower Floor', 436, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1628, 0, 'Tub deck', 436, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1629, 0, 'Vanity', 436, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1630, 0, 'Mud Set', 436, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1631, 0, 'Leak Test', 436, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1632, 0, 'Floor Border', 436, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1633, 0, 'Shower curve', 436, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1634, 0, 'Wall Trim', 436, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1635, 0, 'Tub Apron', 436, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1636, 0, 'Water proofing', 437, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1637, 0, 'Sound Control', 437, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1638, 0, 'Main Floor', 437, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1639, 0, 'Shower Floor', 437, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1640, 0, 'Tub deck', 437, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1641, 0, 'Vanity', 437, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1642, 0, 'Mud Set', 437, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1643, 0, 'Leak Test', 437, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1644, 0, 'Floor Border', 437, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1645, 0, 'Shower curve', 437, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1646, 0, 'Wall Trim', 437, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1647, 0, 'Tub Apron', 437, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1648, 0, 'Water proofing', 438, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1649, 0, 'Sound Control', 438, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1650, 0, 'Main Floor', 438, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1651, 0, 'Shower Floor', 438, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1652, 0, 'Tub deck', 438, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1653, 0, 'Vanity', 438, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1654, 0, 'Mud Set', 438, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1655, 0, 'Leak Test', 438, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1656, 0, 'Floor Border', 438, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1657, 0, 'Shower curve', 438, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1658, 0, 'Wall Trim', 438, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1659, 0, 'Tub Apron', 438, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1660, 0, 'Water proofing', 439, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1661, 0, 'Sound Control', 439, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1662, 0, 'Main Floor', 439, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1663, 0, 'Shower Floor', 439, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1664, 0, 'Tub deck', 439, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1665, 0, 'Vanity', 439, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1666, 0, 'Mud Set', 439, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1667, 0, 'Leak Test', 439, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1668, 0, 'Floor Border', 439, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1669, 0, 'Shower curve', 439, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1670, 0, 'Wall Trim', 439, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1671, 0, 'Tub Apron', 439, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1672, 0, 'Water proofing', 440, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1673, 0, 'Sound Control', 440, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1674, 0, 'Main Floor', 440, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1675, 0, 'Shower Floor', 440, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1676, 0, 'Tub deck', 440, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1677, 0, 'Vanity', 440, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1678, 0, 'Mud Set', 440, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1679, 0, 'Leak Test', 440, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1680, 0, 'Floor Border', 440, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1681, 0, 'Shower curve', 440, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1682, 0, 'Wall Trim', 440, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1683, 0, 'Tub Apron', 440, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1684, 0, 'Water proofing', 441, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1685, 0, 'Sound Control', 441, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1686, 0, 'Main Floor', 441, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1687, 0, 'Shower Floor', 441, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1688, 0, 'Tub deck', 441, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1689, 0, 'Vanity', 441, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1690, 0, 'Mud Set', 441, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1691, 0, 'Leak Test', 441, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1692, 0, 'Floor Border', 441, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1693, 0, 'Shower curve', 441, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1694, 0, 'Wall Trim', 441, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1695, 0, 'Tub Apron', 441, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1696, 0, 'Water proofing', 442, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1697, 0, 'Sound Control', 442, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1698, 0, 'Main Floor', 442, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1699, 0, 'Shower Floor', 442, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1700, 0, 'Tub deck', 442, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1701, 0, 'Vanity', 442, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12');
INSERT INTO `sub_sections` (`id`, `completion_status`, `name`, `section_id`, `user_id`, `status`, `created_at`, `notes`, `updated_at`) VALUES
(1702, 0, 'Mud Set', 442, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1703, 0, 'Leak Test', 442, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1704, 0, 'Floor Border', 442, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1705, 0, 'Shower curve', 442, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1706, 0, 'Wall Trim', 442, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1707, 0, 'Tub Apron', 442, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1708, 0, 'Water proofing', 443, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1709, 0, 'Sound Control', 443, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1710, 0, 'Main Floor', 443, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1711, 0, 'Shower Floor', 443, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1712, 0, 'Tub deck', 443, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1713, 0, 'Vanity', 443, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1714, 0, 'Mud Set', 443, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1715, 0, 'Leak Test', 443, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1716, 0, 'Floor Border', 443, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1717, 0, 'Shower curve', 443, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1718, 0, 'Wall Trim', 443, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1719, 0, 'Tub Apron', 443, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1720, 0, 'Water proofing', 444, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1721, 0, 'Sound Control', 444, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1722, 0, 'Main Floor', 444, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1723, 0, 'Shower Floor', 444, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1724, 0, 'Tub deck', 444, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1725, 0, 'Vanity', 444, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1726, 0, 'Mud Set', 444, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1727, 0, 'Leak Test', 444, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1728, 0, 'Floor Border', 444, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1729, 0, 'Shower curve', 444, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1730, 0, 'Wall Trim', 444, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1731, 0, 'Tub Apron', 444, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1732, 0, 'Water proofing', 445, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1733, 0, 'Sound Control', 445, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1734, 0, 'Main Floor', 445, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1735, 0, 'Shower Floor', 445, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1736, 0, 'Tub deck', 445, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1737, 0, 'Vanity', 445, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1738, 0, 'Mud Set', 445, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1739, 0, 'Leak Test', 445, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1740, 0, 'Floor Border', 445, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1741, 0, 'Shower curve', 445, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1742, 0, 'Wall Trim', 445, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1743, 0, 'Tub Apron', 445, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1744, 0, 'Water proofing', 446, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1745, 0, 'Sound Control', 446, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1746, 0, 'Main Floor', 446, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1747, 0, 'Shower Floor', 446, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1748, 0, 'Tub deck', 446, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1749, 0, 'Vanity', 446, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1750, 0, 'Mud Set', 446, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1751, 0, 'Leak Test', 446, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1752, 0, 'Floor Border', 446, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1753, 0, 'Shower curve', 446, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1754, 0, 'Wall Trim', 446, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1755, 0, 'Tub Apron', 446, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1756, 0, 'Water proofing', 447, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1757, 0, 'Sound Control', 447, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1758, 0, 'Main Floor', 447, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1759, 0, 'Shower Floor', 447, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1760, 0, 'Tub deck', 447, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1761, 0, 'Vanity', 447, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1762, 0, 'Mud Set', 447, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1763, 0, 'Leak Test', 447, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1764, 0, 'Floor Border', 447, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1765, 0, 'Shower curve', 447, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1766, 0, 'Wall Trim', 447, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1767, 0, 'Tub Apron', 447, 6, 0, '2023-04-29 22:37:12', '', '2023-04-29 22:37:12'),
(1768, 0, 'Bsplash', 448, 6, 0, '2023-04-29 22:38:03', '', '2023-04-29 22:38:03'),
(1769, 0, 'Ctop', 448, 6, 0, '2023-04-29 22:38:03', '', '2023-04-29 22:38:03'),
(1770, 0, 'Bsplash', 449, 6, 0, '2023-04-29 22:38:03', '', '2023-04-29 22:38:03'),
(1771, 0, 'Ctop', 449, 6, 0, '2023-04-29 22:38:03', '', '2023-04-29 22:38:03'),
(1772, 0, 'Bsplash', 450, 6, 0, '2023-04-29 22:38:03', '', '2023-04-29 22:38:03'),
(1773, 0, 'Ctop', 450, 6, 0, '2023-04-29 22:38:03', '', '2023-04-29 22:38:03'),
(1774, 0, 'Bsplash', 451, 6, 0, '2023-04-29 22:38:03', '', '2023-04-29 22:38:03'),
(1775, 0, 'Ctop', 451, 6, 0, '2023-04-29 22:38:03', '', '2023-04-29 22:38:03'),
(1776, 0, 'Bsplash', 452, 6, 0, '2023-04-29 22:38:03', '', '2023-04-29 22:38:03'),
(1777, 0, 'Ctop', 452, 6, 0, '2023-04-29 22:38:03', '', '2023-04-29 22:38:03'),
(1778, 0, 'Bsplash', 453, 6, 0, '2023-04-29 22:38:03', '', '2023-04-29 22:38:03'),
(1779, 0, 'Ctop', 453, 6, 0, '2023-04-29 22:38:03', '', '2023-04-29 22:38:03'),
(2020, 1, 'Water proofing', 574, 6, 5, '2023-04-29 23:08:19', 'Installed', '2023-04-29 23:11:58'),
(2021, 1, 'Mud Set', 574, 6, 3, '2023-04-29 23:08:19', '', '2023-04-30 13:45:52'),
(2022, 1, 'Heat Mat', 574, 6, -1, '2023-04-29 23:08:19', '', '2023-04-29 23:08:38'),
(2023, 0, 'Sound Control', 574, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2024, 0, 'Floor Tile', 574, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2025, 0, 'TL01', 574, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2026, 0, 'Water proofing', 575, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2027, 0, 'Mud Set', 575, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2028, 0, 'Heat Mat', 575, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2029, 0, 'Sound Control', 575, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2030, 0, 'Floor Tile', 575, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2031, 0, 'TL01', 575, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2032, 0, 'Water proofing', 576, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2033, 0, 'Mud Set', 576, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2034, 0, 'Heat Mat', 576, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2035, 0, 'Sound Control', 576, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2036, 0, 'Floor Tile', 576, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2037, 0, 'TL01', 576, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2038, 0, 'Water proofing', 577, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2039, 0, 'Mud Set', 577, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2040, 0, 'Heat Mat', 577, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2041, 0, 'Sound Control', 577, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2042, 0, 'Floor Tile', 577, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2043, 0, 'TL01', 577, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2044, 0, 'Water proofing', 578, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2045, 0, 'Mud Set', 578, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2046, 0, 'Heat Mat', 578, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2047, 0, 'Sound Control', 578, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2048, 0, 'Floor Tile', 578, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2049, 0, 'TL01', 578, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2050, 0, 'Water proofing', 579, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2051, 0, 'Mud Set', 579, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2052, 0, 'Heat Mat', 579, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2053, 0, 'Sound Control', 579, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2054, 0, 'Floor Tile', 579, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2055, 0, 'TL01', 579, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2056, 0, 'Water proofing', 580, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2057, 0, 'Mud Set', 580, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2058, 0, 'Heat Mat', 580, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2059, 0, 'Sound Control', 580, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2060, 0, 'Floor Tile', 580, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2061, 0, 'TL01', 580, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2062, 0, 'Water proofing', 581, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2063, 0, 'Mud Set', 581, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2064, 0, 'Heat Mat', 581, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2065, 0, 'Sound Control', 581, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2066, 0, 'Floor Tile', 581, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2067, 0, 'TL01', 581, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2068, 0, 'Water proofing', 582, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2069, 0, 'Mud Set', 582, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2070, 0, 'Heat Mat', 582, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2071, 0, 'Sound Control', 582, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2072, 0, 'Floor Tile', 582, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2073, 0, 'TL01', 582, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2074, 0, 'Water proofing', 583, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2075, 0, 'Mud Set', 583, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2076, 0, 'Heat Mat', 583, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2077, 0, 'Sound Control', 583, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2078, 0, 'Floor Tile', 583, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2079, 0, 'TL01', 583, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2080, 0, 'Water proofing', 584, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2081, 0, 'Mud Set', 584, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2082, 0, 'Heat Mat', 584, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2083, 0, 'Sound Control', 584, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2084, 0, 'Floor Tile', 584, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2085, 0, 'TL01', 584, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2086, 0, 'Water proofing', 585, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2087, 0, 'Mud Set', 585, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2088, 0, 'Heat Mat', 585, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2089, 0, 'Sound Control', 585, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2090, 0, 'Floor Tile', 585, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2091, 0, 'TL01', 585, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2092, 0, 'Water proofing', 586, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2093, 0, 'Mud Set', 586, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2094, 0, 'Heat Mat', 586, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2095, 0, 'Sound Control', 586, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2096, 0, 'Floor Tile', 586, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2097, 0, 'TL01', 586, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2098, 0, 'Water proofing', 587, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2099, 0, 'Mud Set', 587, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2100, 0, 'Heat Mat', 587, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2101, 0, 'Sound Control', 587, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2102, 0, 'Floor Tile', 587, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2103, 0, 'TL01', 587, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2104, 0, 'Water proofing', 588, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2105, 0, 'Mud Set', 588, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2106, 0, 'Heat Mat', 588, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2107, 0, 'Sound Control', 588, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2108, 0, 'Floor Tile', 588, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2109, 0, 'TL01', 588, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2110, 0, 'Water proofing', 589, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2111, 0, 'Mud Set', 589, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2112, 0, 'Heat Mat', 589, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2113, 0, 'Sound Control', 589, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2114, 0, 'Floor Tile', 589, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2115, 0, 'TL01', 589, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2116, 0, 'Water proofing', 590, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2117, 0, 'Mud Set', 590, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2118, 0, 'Heat Mat', 590, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2119, 0, 'Sound Control', 590, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2120, 0, 'Floor Tile', 590, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2121, 0, 'TL01', 590, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2122, 0, 'Water proofing', 591, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2123, 0, 'Mud Set', 591, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2124, 0, 'Heat Mat', 591, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2125, 0, 'Sound Control', 591, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2126, 0, 'Floor Tile', 591, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2127, 0, 'TL01', 591, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2128, 0, 'Water proofing', 592, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2129, 0, 'Mud Set', 592, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2130, 0, 'Heat Mat', 592, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2131, 0, 'Sound Control', 592, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2132, 0, 'Floor Tile', 592, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2133, 0, 'TL01', 592, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2134, 0, 'Water proofing', 593, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2135, 0, 'Mud Set', 593, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2136, 0, 'Heat Mat', 593, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2137, 0, 'Sound Control', 593, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2138, 0, 'Floor Tile', 593, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2139, 0, 'TL01', 593, 6, 0, '2023-04-29 23:08:19', '', '2023-04-29 23:08:19'),
(2328, 1, 'Water proofing', 628, 6, 5, '2023-04-30 13:47:35', '', '2023-04-30 13:48:46'),
(2329, 0, 'Mud Set', 628, 6, 0, '2023-04-30 13:47:35', '', '2023-04-30 13:47:35'),
(2330, 1, 'Heat Mat', 628, 6, 5, '2023-04-30 13:47:35', 'Comment', '2023-05-01 02:00:57'),
(2331, 1, 'Sound Control', 628, 6, 3, '2023-04-30 13:47:35', '', '2023-05-01 02:02:13'),
(2332, 0, 'Floor Tile', 628, 6, 0, '2023-04-30 13:47:35', '', '2023-04-30 13:47:35'),
(2333, 0, 'TL01', 628, 6, 0, '2023-04-30 13:47:35', '', '2023-04-30 13:47:35'),
(2334, 1, 'Water proofing', 629, 6, -1, '2023-04-30 13:47:35', '', '2023-04-30 13:47:35'),
(2335, 0, 'Mud Set', 629, 6, 0, '2023-04-30 13:47:35', '', '2023-04-30 13:47:35'),
(2336, 1, 'Heat Mat', 629, 6, -1, '2023-04-30 13:47:35', 'Test', '2023-05-01 14:11:18'),
(2337, 1, 'Sound Control', 629, 6, 4, '2023-04-30 13:47:35', '', '2023-04-30 19:32:16'),
(2338, 0, 'Floor Tile', 629, 6, 0, '2023-04-30 13:47:35', '', '2023-04-30 13:47:35'),
(2339, 0, 'TL01', 629, 6, 0, '2023-04-30 13:47:35', '', '2023-04-30 13:47:35'),
(2340, 1, 'Water proofing', 630, 6, -1, '2023-04-30 13:47:35', '', '2023-04-30 13:47:35'),
(2341, 0, 'Mud Set', 630, 6, 0, '2023-04-30 13:47:35', '', '2023-04-30 13:47:35'),
(2342, 1, 'Heat Mat', 630, 6, -1, '2023-04-30 13:47:35', '', '2023-04-30 13:47:35'),
(2343, 0, 'Sound Control', 630, 6, 0, '2023-04-30 13:47:35', '', '2023-04-30 13:47:51'),
(2344, 0, 'Floor Tile', 630, 6, 0, '2023-04-30 13:47:35', '', '2023-04-30 13:47:35'),
(2345, 0, 'TL01', 630, 6, 0, '2023-04-30 13:47:35', '', '2023-04-30 13:47:35'),
(2352, 1, 'Water proofing', 634, 6, -1, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2353, 1, 'Mud Set', 634, 6, -1, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2354, 0, 'Heat Mat', 634, 6, 0, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2355, 0, 'Sound Control', 634, 6, 0, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2356, 0, 'Floor Tile', 634, 6, 0, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2357, 0, 'TL01', 634, 6, 0, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2358, 1, 'Water proofing', 635, 6, -1, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2359, 1, 'Mud Set', 635, 6, 3, '2023-04-30 20:44:02', '', '2023-04-30 20:56:12'),
(2360, 0, 'Heat Mat', 635, 6, 0, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2361, 0, 'Sound Control', 635, 6, 0, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2362, 0, 'Floor Tile', 635, 6, 0, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2363, 0, 'TL01', 635, 6, 0, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2364, 1, 'Water proofing', 636, 6, 2, '2023-04-30 20:44:02', '', '2023-04-30 20:55:59'),
(2365, 1, 'Mud Set', 636, 6, -1, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2366, 0, 'Heat Mat', 636, 6, 0, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2367, 0, 'Sound Control', 636, 6, 0, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2368, 0, 'Floor Tile', 636, 6, 0, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(2369, 0, 'TL01', 636, 6, 0, '2023-04-30 20:44:02', '', '2023-04-30 20:44:02'),
(4251, 1, 'rubber', 1022, 6, -1, '2023-05-01 23:32:45', '', '2023-05-01 23:32:45'),
(4252, 1, 'salt', 1022, 6, -1, '2023-05-01 23:32:45', '', '2023-05-01 23:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `due_date` date NOT NULL,
  `priority` varchar(255) NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `attachment`, `description`, `due_date`, `priority`, `project_id`, `status`, `user`, `created_at`, `updated_at`) VALUES
(1, '', 'Test', '2023-04-27', 'Normal', 9, 'Inprogress', 'admin', '2023-04-27 22:31:31', '2023-04-27 22:31:31'),
(2, '', 'test', '2023-04-29', 'Urgent', 11, 'Open', 'admin', '2023-04-28 12:55:44', '2023-04-28 12:55:44'),
(3, '', 'Ok', '2023-05-01', 'Normal', 2, 'Inprogress', 'admin', '2023-04-29 20:47:29', '2023-04-29 20:47:29'),
(5, '', 'ok', '2023-05-01', 'Urgent', 2, 'Open', 'admin', '2023-04-29 22:49:17', '2023-04-29 22:49:17'),
(6, '', 'ok', '2023-05-02', 'Urgent', 6, 'Open', 'admin', '2023-04-29 22:50:31', '2023-04-29 22:50:31'),
(7, '', 'test', '2023-04-25', 'Urgent', 17, 'Open', 'admin', '2023-04-29 22:53:27', '2023-04-29 22:53:27'),
(8, '', 'call Gary', '2023-04-30', 'Urgent', 16, 'Open', 'admin', '2023-04-30 01:59:34', '2023-04-30 01:59:34'),
(9, '', 'ohons', '2023-04-27', 'Urgent', 22, 'Open', 'admin', '2023-04-30 03:14:09', '2023-04-30 03:14:09'),
(10, '', 'Test', '2023-05-02', 'Normal', 23, 'Inprogress', 'admin', '2023-04-30 15:58:52', '2023-04-30 15:58:52'),
(11, '', 'dsfsdf', '2023-05-16', 'Urgent', 24, 'Open', 'admin', '2023-04-30 19:40:41', '2023-04-30 19:40:41'),
(12, '', 'Yesans', '2023-04-30', 'Normal', 23, 'Inprogress', 'admin', '2023-05-01 00:13:26', '2023-05-01 00:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `floor_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `user_id`, `floor_id`, `status`, `created_at`, `updated_at`) VALUES
(63, 'Unit 1', 6, 38, 0, '2023-04-29 17:22:25', '2023-04-29 17:22:25'),
(64, 'Unit 2', 6, 38, 0, '2023-04-29 17:22:30', '2023-04-29 17:22:30'),
(65, 'Unit 3', 6, 38, 0, '2023-04-29 17:22:35', '2023-04-29 17:22:35'),
(66, 'Unit 1', 6, 39, 0, '2023-04-29 17:22:43', '2023-04-29 17:22:43'),
(67, 'Unit 2', 6, 39, 0, '2023-04-29 17:22:56', '2023-04-29 17:22:56'),
(68, 'Unit 1', 6, 40, 0, '2023-04-29 17:23:03', '2023-04-29 17:23:03'),
(69, 'Unit 1', 6, 40, 0, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(70, 'Unit 2', 6, 40, 0, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(71, 'Unit 3', 6, 40, 0, '2023-04-29 21:49:08', '2023-04-29 21:49:08'),
(72, 'Unit 1', 6, 41, 0, '2023-04-29 22:30:14', '2023-04-29 22:30:14'),
(73, 'Unit 2', 6, 41, 0, '2023-04-29 22:30:19', '2023-04-29 22:30:19'),
(74, 'Unit 3', 6, 41, 0, '2023-04-29 22:30:25', '2023-04-29 22:30:25'),
(75, 'Unit 1', 6, 42, 0, '2023-04-29 22:30:32', '2023-04-29 22:30:32'),
(76, 'Unit 2', 6, 42, 0, '2023-04-29 22:30:43', '2023-04-29 22:30:43'),
(77, 'Unit 1', 6, 43, 0, '2023-04-29 22:30:52', '2023-04-29 22:30:52'),
(78, 'Unit 1', 6, 44, 0, '2023-04-29 23:04:14', '2023-04-29 23:04:14'),
(79, 'Unit 2', 6, 44, 0, '2023-04-29 23:04:19', '2023-04-29 23:04:19'),
(80, 'Unit 3', 6, 44, 0, '2023-04-29 23:04:24', '2023-04-29 23:04:24'),
(81, 'Unit 4', 6, 44, 0, '2023-04-29 23:04:29', '2023-04-29 23:04:29'),
(82, 'Unit 1', 6, 45, 0, '2023-04-29 23:04:35', '2023-04-29 23:04:35'),
(83, 'Unit 2', 6, 45, 0, '2023-04-29 23:04:40', '2023-04-29 23:04:40'),
(84, 'Unit 3', 6, 45, 0, '2023-04-29 23:04:45', '2023-04-29 23:04:45'),
(85, 'Unit 1', 6, 46, 0, '2023-04-29 23:04:53', '2023-04-29 23:04:53'),
(86, 'Unit 2', 6, 46, 0, '2023-04-29 23:05:14', '2023-04-29 23:05:14'),
(87, 'Unit 1', 6, 47, 0, '2023-04-29 23:05:21', '2023-04-29 23:05:21'),
(105, 'Unit 1', 6, 57, 0, '2023-04-30 13:47:03', '2023-04-30 13:47:03'),
(106, 'Unit 2', 6, 57, 0, '2023-04-30 13:47:07', '2023-04-30 13:47:07'),
(107, 'Unit 1', 6, 58, 0, '2023-04-30 13:47:13', '2023-04-30 13:47:13'),
(191, 'default', 6, 78, 0, '2023-05-01 23:32:45', '2023-05-01 23:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(255) NOT NULL DEFAULT '/assets/images/images.jpg',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `user_type` varchar(255) NOT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `image_url`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `user_type`, `last_seen`, `created_at`, `updated_at`) VALUES
(6, '/assets/images/images.jpg', 'admin', 'admin@gmail.com', NULL, '$2y$10$pRT2MkWCofjqSA0rg9Be4O5EPbwIE2xGDxv6RDzhwppGr5YIZgDNy', NULL, 'AdminUser', NULL, '2023-04-26 07:19:29', '2023-04-26 07:19:29'),
(7, '/assets/images/images.jpg', 'Ben', 'Bweinfeld3@gmail.com', NULL, '$2y$10$NgbXOnsngzL/tDaZNaF1a.sB5kyUcNO7WvIVEZ4B7PRe5dH.NGLCa', NULL, 'StandardUser', NULL, '2023-04-30 05:05:40', '2023-04-30 05:05:40'),
(8, '/assets/images/images.jpg', 'jin', 'ronaldo888kgs@gmail.com', NULL, '$2y$10$81u5s.JzmlUs7Xdk6RPQ9u618XfnV5.S9EY66jJLeXI.9hJp7.oje', NULL, 'AdminUser', NULL, '2023-04-30 09:30:10', '2023-04-30 09:30:10'),
(9, '/assets/images/images.jpg', 'user1', 'user1@gmail.com', NULL, '$2y$10$qgxqLCwE092Qd5XGpXeL5esnJXRY4JYHXBIPaibCgIxkIgI9KcSf2', NULL, 'StandardUser', NULL, '2023-04-30 15:13:41', '2023-04-30 15:13:41'),
(10, '/assets/images/images.jpg', 'userjin', 'userjin@gmail.com', NULL, '$2y$10$5uPMRujYWbJjTKXfltQawunkc/ra0Zt5jSqmbZeFdcqkl5jbsMmLi', NULL, 'StandardUser', NULL, '2023-04-30 16:31:19', '2023-04-30 16:31:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `contractors`
--
ALTER TABLE `contractors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `floors_project_id_foreign` (`project_id`),
  ADD KEY `floors_user_id_foreign` (`user_id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_user_id_foreign` (`user_id`),
  ADD KEY `sections_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`),
  ADD KEY `sub_categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `sub_sections`
--
ALTER TABLE `sub_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_sections_user_id_foreign` (`user_id`),
  ADD KEY `sub_sections_section_id_foreign` (`section_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_user_id_foreign` (`user_id`),
  ADD KEY `units_floor_id_foreign` (`floor_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contractors`
--
ALTER TABLE `contractors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1023;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `sub_sections`
--
ALTER TABLE `sub_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4253;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `floors`
--
ALTER TABLE `floors`
  ADD CONSTRAINT `floors_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `floors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_sections`
--
ALTER TABLE `sub_sections`
  ADD CONSTRAINT `sub_sections_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_sections_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_floor_id_foreign` FOREIGN KEY (`floor_id`) REFERENCES `floors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `units_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
