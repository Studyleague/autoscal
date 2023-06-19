-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 19, 2023 at 11:03 AM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 8.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` tinytext COLLATE utf8mb4_unicode_ci,
  `provider_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'to show unread notification in adminpanel',
  `active_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `mobile`, `email_verified_at`, `mobile_verified_at`, `password`, `avatar`, `provider`, `provider_id`, `access_token`, `remember_token`, `flag`, `active_status`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'ad_tcd', 846740736, '2022-09-14 00:50:00', NULL, '$2y$10$c9PjQmOjrBcrix80japOaewhd1qcifnybF.GYL5Q7B9AVKW5Ko/M2', NULL, NULL, NULL, NULL, 'KNMpzunBk7YT5pFanJwVqiReaU851YhpRqziCoWlr4IHtsFksz5xmkr54P3l', 0, 0, '2022-09-14 00:50:00', '2023-01-29 06:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'Tata', 'images/brand/Tata.png', NULL, NULL),
(2, 'Ford', 'images/brand/Ford.png', NULL, NULL),
(3, 'BMW', 'images/brand/BMW.png', NULL, NULL),
(4, 'Toyota', 'images/brand/Toyota.png', NULL, NULL),
(5, 'Maruti Suzuki', 'images/brand/Maruti Suzuki.png', NULL, NULL),
(6, 'Hyundai', 'images/brand/Hyundai.png', NULL, NULL),
(7, 'Honda', 'images/brand/Honda.png', NULL, NULL),
(8, 'KIA', 'images/brand/KIA.png', NULL, NULL),
(9, 'MG', 'images/brand/MG.png', NULL, NULL),
(10, 'Mahindra', 'images/brand/Mahindra.png', NULL, NULL),
(11, 'Renault', 'images/brand/Renault.png', NULL, NULL),
(12, 'Nissan', 'images/brand/Nissan.png', NULL, NULL),
(13, 'Volkswagen', 'images/brand/Volkswagen.png', NULL, NULL),
(14, 'Audi ', 'images/brand/Audi.png', NULL, NULL),
(15, 'Force', 'images/brand/Force.png', NULL, NULL),
(16, 'Chevrolet', 'images/brand/Chevrolet.png', NULL, NULL),
(17, 'Skoda', 'images/brand/Skoda.png', NULL, NULL),
(18, 'ISUZU', 'images/brand/ISUZU.png', NULL, NULL),
(19, 'JEEP', 'images/brand/JEEP.png', NULL, NULL),
(20, 'JAGUAR', 'images/brand/JAGUAR.png', NULL, NULL),
(21, 'Citroen', 'images/brand/Citroen.png', NULL, NULL),
(22, 'Land Rover', 'images/brand/Land Rover.png', NULL, NULL),
(23, 'LEXUS', 'images/brand/LEXUS.png', NULL, NULL),
(24, 'Mercedes-Benz', 'images/brand/Mercedes-Benz.png', NULL, NULL),
(25, 'Porsche', 'images/brand/Porsche.png', NULL, NULL),
(26, 'VOLVO', 'images/brand/VOLVO.png', NULL, NULL),
(27, 'Fiat', 'images/brand/Fiat.png', NULL, NULL),
(28, 'Mitsubishi', 'images/brand/Mitsubishi.png', NULL, NULL),
(29, 'Datsun', 'images/brand/Datsun.png', NULL, NULL),
(30, 'Baintley', 'images/brand/Baintley.png', NULL, NULL),
(31, 'Mini', 'images/brand/Mini.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_insuarances`
--

CREATE TABLE `car_insuarances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_insuarances`
--

INSERT INTO `car_insuarances` (`id`, `name`, `email`, `mobile`, `user_id`, `flag`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'test@gmail.com', '8888888881', 1, 1, '2022-10-25 03:08:01', '2022-10-25 04:31:57'),
(2, 'Test', 'test@gmail.com', '8888888881', 1, 1, '2022-10-31 23:48:03', '2022-10-31 23:59:18'),
(3, 'test3', 'test3@gmail.com', '7567953645', 16, 1, '2022-11-01 00:25:20', '2022-11-01 00:25:46'),
(4, 'test car insurance', 'testinsurance@gmail.com', '9090909090', 23, 1, '2022-11-01 23:58:53', '2022-11-01 23:59:02'),
(5, 'test', 'test@gmail.com', '9090909090', 17, 1, '2022-11-04 07:41:49', '2022-11-05 00:04:37'),
(6, 'raj', 'raj@gmail.com', '9858585858', 17, 1, '2022-11-04 08:02:27', '2022-11-05 00:04:37'),
(7, 'mahi', 'mahidotage@gamil.com', '9695959359', 24, 1, '2022-12-07 01:27:44', '2022-12-07 01:27:54'),
(8, 'Suresh Navale', 'nvlesuresh@gmail.com', '9860709455', 80, 1, '2023-01-15 08:51:53', '2023-01-15 09:05:38'),
(9, 'pratik', 'pratik@gmail.com', '9111111111', 1, 1, '2023-05-23 05:31:33', '2023-05-23 06:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `car_loans`
--

CREATE TABLE `car_loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_loans`
--

INSERT INTO `car_loans` (`id`, `name`, `email`, `mobile`, `user_id`, `flag`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'test@gmail.com', '8888888881', 1, 1, '2022-10-25 03:09:09', '2022-10-27 00:36:48'),
(2, 'test2', 'test2@gmail.com', '9111111111', 16, 1, '2022-11-01 00:36:15', '2022-11-01 00:36:43'),
(3, 'test loan', 'testloan@gmail.com', '9090909090', 23, 1, '2022-11-02 00:00:23', '2022-11-02 00:03:45'),
(4, 'manoj muneshwar', 'anjalikaninde22@gmail.com', '9637116553', 94, 1, '2023-01-14 08:11:48', '2023-01-14 08:43:11'),
(5, 'manoj muneshwar', 'anjalikaninde22@gmail.com', '9637116553', 94, 1, '2023-01-14 08:12:21', '2023-01-14 08:43:11'),
(6, 'Ajay Sudhakar bedre', 'ajaybedre8877@gmail.com', '8459367953', 106, 1, '2023-01-15 11:24:28', '2023-01-15 12:02:35'),
(7, 'anil patil', 'anilpatil9962@gmail.com', '9175209962', 126, 1, '2023-01-20 17:31:15', '2023-01-21 04:07:07'),
(8, 'PRASAD', 'prasadkathikar30@gmail.com', '9860458389', 127, 1, '2023-01-20 18:01:33', '2023-01-21 04:07:07'),
(9, 'bagul ravi', 'bagulravindra007@gmail.com', '9545651237', 133, 1, '2023-01-21 17:37:19', '2023-01-22 07:20:49'),
(10, 'bagul ravi', 'bagulravindra007@gmail.com', '9545651237', 133, 1, '2023-01-21 17:38:03', '2023-01-22 07:20:49'),
(11, 'siddhesh mapuskar', 'smapuskar80@gmail.com', '8454067719', 146, 1, '2023-01-23 10:06:47', '2023-01-23 11:11:39'),
(12, 'Rahul', 'rahulyemul03@gmail.com', '9309844434', 156, 1, '2023-01-27 16:30:38', '2023-01-28 05:10:57'),
(13, 'snsnd', 'znznxn@gmail.com', '9890565212', 82, 1, '2023-02-01 07:34:29', '2023-02-01 12:58:46'),
(14, 'my cars', 'mycarsdombivali@gmail.com', '9833158555', 25, 1, '2023-02-02 20:05:45', '2023-02-03 06:02:45'),
(15, 'Hanif Shaikj', 'hanifshaikh0875@gmail.com', '8138833524', 204, 1, '2023-03-30 22:57:13', '2023-04-07 14:34:46'),
(16, 'Fareed', 'abbu483@gmail.com', '9985252839', 125, 1, '2023-04-16 11:56:30', '2023-04-21 03:21:33'),
(17, 'sulaimaan', 'skhtb91@gmail.com', '9449936256', 144, 1, '2023-05-21 11:00:21', '2023-05-23 06:16:53'),
(18, 'sulaimaan', 'skhtb91@gmail.com', '9964840650', 144, 1, '2023-05-21 11:00:48', '2023-05-23 06:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `car_transfers`
--

CREATE TABLE `car_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_transfers`
--

INSERT INTO `car_transfers` (`id`, `name`, `email`, `mobile`, `user_id`, `flag`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'test@gmail.com', '8888888881', 1, 1, '2022-10-25 03:09:37', '2022-10-25 04:32:01'),
(2, 'test2', 'test2@gmail.com', '9111111111', 16, 1, '2022-11-01 00:36:32', '2022-11-01 00:36:46'),
(3, 'test transfer', 'testtransfer@gmail.com', '9090909090', 23, 1, '2022-11-02 00:04:22', '2022-11-02 00:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `chasis_details`
--

CREATE TABLE `chasis_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chasis_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chasis_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_photo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chasis_details`
--

INSERT INTO `chasis_details` (`id`, `chasis_no`, `engine_no`, `chasis_photo`, `engine_photo`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'WEW12212', '22132S', 'images/documents/vehicle/chasis/chasis_photo_2.png', NULL, 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'ZDM916W4*001503*', 'GAUYTWYSH123', 'images/documents/vehicle/chasis/chasis_photo_1.jpeg', 'images/documents/vehicle/chasis/engine_photo_1.jpeg', 1, '2023-05-29 10:26:10', '2023-05-29 10:26:10'),
(3, 'hfzutxurzitxitzi', 'jfxitxutzitxktx', 'images/documents/vehicle/chasis/chasis_photo_3.jpeg', 'images/documents/vehicle/chasis/engine_photo_3.jpeg', 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, 'mabc1234567890', 'gauy0987654321', 'images/documents/vehicle/chasis/chasis_photo_23.jpeg', NULL, 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, NULL, NULL, 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'WEW12212', '22132S', 'images/documents/vehicle/chasis/chasis_photo_24.png', NULL, 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, NULL, NULL, NULL, NULL, 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, NULL, NULL, NULL, NULL, 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, NULL, NULL, NULL, NULL, 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, 'MAHTUS012345678', 'GAYUYTU123456', 'images/documents/vehicle/chasis/chasis_photo_35.jpeg', NULL, 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, 'MAHTUS012345678', 'GAYUYTU123456', 'images/documents/vehicle/chasis/chasis_photo_32.jpeg', NULL, 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, 'ABCDEF123456789', 'ABCDEF123123', 'images/documents/vehicle/chasis/chasis_photo_36.jpeg', NULL, 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, 'WEW12212', '22132S', 'images/documents/vehicle/chasis/chasis_photo_40.png', NULL, 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, NULL, NULL, NULL, NULL, 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, NULL, NULL, NULL, NULL, 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'abcdef123456789', 'abcdef123456', 'images/documents/vehicle/chasis/chasis_photo_43.jpeg', NULL, 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, NULL, NULL, NULL, NULL, 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'MA3EWDE1S00A70969', 'K10BN4827820', 'images/documents/vehicle/chasis/chasis_photo_45.jpeg', 'images/documents/vehicle/chasis/engine_photo_45.jpeg', 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, NULL, '9', NULL, NULL, 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, 'Maahtg775890', 'kakaakkaka', 'images/documents/vehicle/chasis/chasis_photo_48.jpeg', 'images/documents/vehicle/chasis/engine_photo_48.jpeg', 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'abcdef123456789', 'abcdef123456', 'images/documents/vehicle/chasis/chasis_photo_50.jpeg', 'images/documents/vehicle/chasis/engine_photo_50.jpeg', 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'abcdef123456789', 'abcdef1234', 'images/documents/vehicle/chasis/chasis_photo_51.jpeg', 'images/documents/vehicle/chasis/engine_photo_51.jpeg', 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, 'Magssh578', 'zhjssjj', 'images/documents/vehicle/chasis/chasis_photo_55.jpeg', 'images/documents/vehicle/chasis/engine_photo_55.jpeg', 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, 'MH06AB7891', 'GA5617', 'images/documents/vehicle/chasis/chasis_photo_54.', 'images/documents/vehicle/chasis/engine_photo_54.', 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'MAKDD75LEN003692', 'N15A1134312', 'images/documents/vehicle/chasis/chasis_photo_56.jpeg', 'images/documents/vehicle/chasis/engine_photo_56.jpeg', 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'abcdef123456789', 'abcdef123456', 'images/documents/vehicle/chasis/chasis_photo_58.jpeg', 'images/documents/vehicle/chasis/engine_photo_58.jpeg', 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'abcdef123456789', 'abcdef123456', 'images/documents/vehicle/chasis/chasis_photo_59.jpeg', 'images/documents/vehicle/chasis/engine_photo_59.jpeg', 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'MAT12345', 'ENG12345', 'images/documents/vehicle/chasis/chasis_photo_60.jpeg', 'images/documents/vehicle/chasis/engine_photo_60.jpeg', 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, NULL, NULL, NULL, NULL, 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'MALAF51CLKM046226', 'G4HGKM992302', 'images/documents/vehicle/chasis/chasis_photo_70.jpeg', 'images/documents/vehicle/chasis/engine_photo_70.jpeg', 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, 'MA3EWDE1S00E74810', 'K10BN8153255', 'images/documents/vehicle/chasis/chasis_photo_84.jpeg', 'images/documents/vehicle/chasis/engine_photo_84.jpeg', 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, NULL, NULL, NULL, NULL, 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, NULL, NULL, NULL, NULL, 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, NULL, NULL, NULL, NULL, 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, NULL, NULL, NULL, NULL, 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'abcdef123456789', 'abcdef123456', 'images/documents/vehicle/chasis/chasis_photo_90.jpeg', 'images/documents/vehicle/chasis/engine_photo_90.jpeg', 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, NULL, NULL, NULL, NULL, 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, NULL, NULL, NULL, NULL, 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, NULL, NULL, NULL, NULL, 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'MAKDD75LEN003692', 'N50A1124312', 'images/documents/vehicle/chasis/chasis_photo_102.jpeg', 'images/documents/vehicle/chasis/engine_photo_102.jpeg', 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, NULL, 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, 'abcdef123456789', 'abcdef123456', 'images/documents/vehicle/chasis/chasis_photo_105.jpeg', 'images/documents/vehicle/chasis/engine_photo_105.jpeg', 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, 'abcdef123456789', 'abcdef123456', 'images/documents/vehicle/chasis/chasis_photo_106.jpeg', 'images/documents/vehicle/chasis/engine_photo_106.jpeg', 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, 'abcdef1234567891011', 'abcdef12345678910', 'images/documents/vehicle/chasis/chasis_photo_115.png', 'images/documents/vehicle/chasis/engine_photo_115.png', 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, NULL, NULL, NULL, NULL, 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, NULL, NULL, NULL, NULL, 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, NULL, NULL, NULL, NULL, 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, 'abcdef123456789', 'abcdef123456', NULL, NULL, 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'MAKDD575LEN003692', 'N15A11314312', 'images/documents/vehicle/chasis/chasis_photo_120.jpeg', 'images/documents/vehicle/chasis/engine_photo_120.jpeg', 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, 'abcdef123456789', 'abcdef123456', 'images/documents/vehicle/chasis/chasis_photo_122.jpeg', 'images/documents/vehicle/chasis/engine_photo_122.jpeg', 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'fiirghj', 'jfuhuii', 'images/documents/vehicle/chasis/chasis_photo_127.jpeg', 'images/documents/vehicle/chasis/engine_photo_127.jpeg', 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, 'GLA658AZRT132648K', 'MKRD897765P', 'images/documents/vehicle/chasis/chasis_photo_77.jpeg', 'images/documents/vehicle/chasis/engine_photo_77.jpeg', 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'MALA151ALCM069934', 'G3HACM057122', 'images/documents/vehicle/chasis/chasis_photo_151.jpeg', 'images/documents/vehicle/chasis/engine_photo_151.jpeg', 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'MA3EWDE1S00188464', 'K10BN4173836', 'images/documents/vehicle/chasis/chasis_photo_118.jpeg', 'images/documents/vehicle/chasis/engine_photo_118.jpeg', 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'MA3JMT81SKG180778', 'K12MN4612182', 'images/documents/vehicle/chasis/chasis_photo_150.jpeg', 'images/documents/vehicle/chasis/engine_photo_150.jpeg', 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'MAKDD75LEN003692', 'N15A1124312', 'images/documents/vehicle/chasis/chasis_photo_73.jpeg', 'images/documents/vehicle/chasis/engine_photo_73.jpeg', 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'MBJK39BT000020012-0513', '3NRD021212', 'images/documents/vehicle/chasis/chasis_photo_155.jpeg', 'images/documents/vehicle/chasis/engine_photo_155.jpeg', 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, NULL, NULL, NULL, NULL, 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35'),
(62, 'MBJK39BT800016953', '3NRV062956', 'images/documents/vehicle/chasis/chasis_photo_162.jpeg', 'images/documents/vehicle/chasis/engine_photo_162.jpeg', 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, 'MBJK39BT800010764', '3NRV044644', 'images/documents/vehicle/chasis/chasis_photo_161.jpeg', 'images/documents/vehicle/chasis/engine_photo_161.jpeg', 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11'),
(64, 'matbuvx1346yyu', '62uhsiowo2ijwi', 'images/documents/vehicle/chasis/chasis_photo_164.jpeg', 'images/documents/vehicle/chasis/engine_photo_164.jpeg', 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52'),
(65, 'mhgd3678937654789', '37656282', 'images/documents/vehicle/chasis/chasis_photo_132.jpeg', 'images/documents/vehicle/chasis/engine_photo_132.jpeg', 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'MAKGD851B5N115165', 'L15A30039803', 'images/documents/vehicle/chasis/chasis_photo_110.jpeg', 'images/documents/vehicle/chasis/engine_photo_110.jpeg', 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, 'MCAAJPCH1JFA29323', '2212100334332', 'images/documents/vehicle/chasis/chasis_photo_172.jpeg', 'images/documents/vehicle/chasis/engine_photo_172.jpeg', 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, 'MDHHSNC85E4000720', 'K4MA690D2', 'images/documents/vehicle/chasis/chasis_photo_174.jpeg', 'images/documents/vehicle/chasis/engine_photo_174.jpeg', 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'MALCU41ULDM130876', 'D4FBDU305936', 'images/documents/vehicle/chasis/chasis_photo_176.jpeg', 'images/documents/vehicle/chasis/engine_photo_176.jpeg', 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'MBJ11JV4007343503', '2KDU062320', 'images/documents/vehicle/chasis/chasis_photo_179.jpeg', 'images/documents/vehicle/chasis/engine_photo_179.jpeg', 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'MAT612325FKB03379', '273MPFI31BUYK01884', 'images/documents/vehicle/chasis/chasis_photo_182.jpeg', 'images/documents/vehicle/chasis/engine_photo_182.jpeg', 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, 'MAJAXXMRKAJL65529', 'JL65529', 'images/documents/vehicle/chasis/chasis_photo_187.jpeg', 'images/documents/vehicle/chasis/engine_photo_187.jpeg', 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, 'MEEHBC002M5011797', 'B4DA417E071879', 'images/documents/vehicle/chasis/chasis_photo_190.jpeg', 'images/documents/vehicle/chasis/engine_photo_190.jpeg', 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07'),
(74, NULL, NULL, NULL, NULL, 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'gajakaghaha', 'gabajahahajjajah', 'images/documents/vehicle/chasis/chasis_photo_7.jpeg', 'images/documents/vehicle/chasis/engine_photo_7.jpeg', 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'WAUZZZF49HA036789', 'q123467', 'images/documents/vehicle/chasis/chasis_photo_8.jpeg', 'images/documents/vehicle/chasis/engine_photo_8.jpeg', 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_time_use` int(11) NOT NULL,
  `min_order_amt` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `value_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `coupon_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'discount',
  `no_of_users` int(11) NOT NULL,
  `created_on` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_cust_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_cust_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sell_cust_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sell_cust_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sell_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `purchase_cust_name`, `purchase_cust_no`, `purchase_location`, `sell_cust_name`, `sell_cust_no`, `sell_location`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'dfsfsd', 'dfsfsd', 'dfsfsd', 'dfsfsd', 'dfsfsd', 'dfsfsd', 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'Amit Sharma', '9822334455', 'Mumbai', 'Rajiv Kumar', '9822667788', 'Mumbai', 1, '2023-06-08 13:40:58', '2023-06-08 13:40:58'),
(3, 'hfzuzit', '358-28650', 'jf,jfzitzrsdits', 'hd,jjt,itxifxixt', '328 65,606', 'hfzjfkgxktxotxotxpyx', 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, 'purchase customer name', 'purchase customer number', 'location', 'sell customer name', 'sell customer number', 'location 1', 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'dfsfsd', 'dfsfsd', 'dfsfsd', 'dfsfsd', 'dfsfsd', 'dfsfsd', 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, 'ufufgu', '9090909090', 'cycfu', 'vuvigu', '8668686866', 'cucydf7t', 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, 'yshdhsh', '9090909090', 'jwbejjd', 'jshejhdjd', '8088808080', 'wuhege', 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, 'test name', '90909090909', 'Dombivli', 'selling customer name', '9090909090', 'Thane', 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, 'test name1', '9090909090', 'Dombivli', 'sell test name', '9090909090', 'kalyan', 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, 'customer name test', '9191919191', 'Thane', 'customer sell name', '9191919191', 'Kalyan', 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, 'dfsfsd', 'dfsfsd', 'dfsfsd', 'dfsfsd', 'dfsfsd', 'dfsfsd', 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, 'kunal', '9898989898', NULL, NULL, '9898989898', NULL, 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'customer name', '9090909090', 'Dombivli', 'sell customer', '9090909090', 'Kalyan', 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'Atul pagare', '9822334455', 'Mumbai', 'Amit', '9866778899', 'dombivali', 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, 'jwhjdsbhs', '9090909090', 'hwhsjshs', 'jwbsjwbsh', '8080808080', 'whhsbs', 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, 'Mahi', '8850505058', 'Mumbai', 'Radhika', '8585852588', 'Thane', 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'testfield', '9090909090', 'kopar', 'sell test field', '9191919191', 'kalyan', 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'test customer', '9090909090', 'Dombivli', 'test sell customer', '9191919191', 'Kalyan', 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, 'jzj', '9898979794', 'hzhsh', 'hzzhhz', '9797845644', 'bzjzjz', 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, 'ashish', '9854643415', 'mumbai', 'raj', '9875543435', 'kalyan', 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'abx', '8854697321', 'Amber', 'abbc', '8642313586', 'Amber', 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'testcustomerford', '9090909090', 'jsbwjhs', 'jsbwjwjjs', '8080080808', 'iwhsjsj', 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'testcustomer', '9090909090', 'Dombivli', 'test sell customer', '9090909090', 'kalyan', 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'ABC', '9191919191', 'Mumbai', 'XYZ', '9292929292', 'Thane', 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'Anaya', '8689879899', 'Thane', 'My cars', '9598762438', 'Dombivli', 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, 'Kishor', '9659821388', 'Pune', 'Vishal', '9653584258', 'Mumbai', 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, NULL, NULL, NULL, NULL, NULL, NULL, 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'test customer ford edit', '9090909091', 'Kalyan edit', 'test sell ford edit', '9090909091', 'Dombivli edit', 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'Kishor', '9523541587', 'Pune', 'Mahi', '8652324153', 'Mumbai', 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, 'test customer name', '9292929292', 'Kalyan', 'sell customer name', '9393939393', 'Dombivli', 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, 'test customer', '9292929292', 'kalyan', 'sell customers', '9393939393', 'Dombivli', 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, 'test customer fordedit', '9191919190', 'kalyan edit', 'test sell customer ford edit', '9292929290', 'Dombivli edit', 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, 'test customer kia', '9191919191', 'kalyan', 'sell customer Kia', '9292929292', 'Dombivali', 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'Atul', '9652354175', 'Mumbai', 'Kishor Singh', '9624418733', 'Mumbai (Thane)', 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, 'test seller', '9292929292', 'kalyan', 'test buyer', '9393939393', 'Dombivli', 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'Mahindra Singh', '9562341753', 'Thane', 'Madhvi Bhide', '9563241563', 'Kalyan West', 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, 'Bhushan Bhoir', '8998562319', 'Dombivli', 'Sachin Raut', '8419253464', 'Dombivli', 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'Yogesh Ghodke', '9869393472', 'Kharghar', 'Dashmesh Motors', '9833321561', 'Kharghar', 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'Rajan Kutadkar', '8808834756', 'sawantwadi', 'Kunal Kadam', '9725463210', 'Thane', 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'kshitij', '9167192214', 'borivali', 'kshitij', '9167192214', 'borivali', 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'ANAND SALVI', '9856466459', 'malad', 'HEMANT G MHTRE', '9566755213', 'KALYAN', 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'Rohit Pichad', '7506161086', 'Mumbai', 'True bil', '0.........', 'Mumbai', 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, 'hdhsjbdjjr', '9864843958', 'vashi', 'hdgsjjeuu', '9819769566', 'vashi', 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35'),
(62, 'rohit pichad', '7506161086', 'kalyan', 'om motors', '9867623099', 'borivali', 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, 'Rohit Pichad', '7506161086', 'Mumbai', 'Galaxy wheelers', '0.........', 'Kharghar', 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11'),
(64, 'Jitendra', '1284863696', 'Chembur', 'Mangesh', '1594664664', 'Chembur', 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52'),
(65, 'rashid', '9819269466', 'Vashi', 'QA aderr', '9322466548', 'vashi', 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'Sachin Raut', '8624563464', 'Dombivli', 'sanjay', '8542390015', 'ambarnath', 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, 'Ashwin gajra', '7738181242', 'malad', 'modi Hyundai', '0000000000', 'malad', 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, 'Rakesh Kumar kodape', '9579433092', 'Andheri', 'Vasim', '9167996539', 'Andheri West', 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'jahid', '9767309192', 'satara', 'car dukan', '9152595238', 'kandivali', 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'Cars4sell', '0000000000', 'Dombivli', 'Prashant', '0000000000', 'Ambernath', 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'Ashish Jain', '8805617461', 'Nerul', 'Sant Motors', '9699889503', 'Nerul', 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, 'Shahaawaz', '9167209244', 'borivali west', 'Cristal car hub', '9769696930', 'Borivali West', 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, 'my car', '9833138555', 'Dombivli East', 'Girishkumar Nair', '8655813257', 'Dombivli West', 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'kkkkkkkk', '8764543494', 'cahsygsdjjd', 'gsksjhdbdjsjsbzjsjsg', '64 4697949', 'vajjdhdbbsjajsgsgshsjs', 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'Shubham', '9123456789', 'Pune', 'Pramod', '8652323848', 'Mumbai', 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `damages`
--

CREATE TABLE `damages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_1_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_2_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_3_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_4_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_5_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_6_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_7_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_8_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_9_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_10_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_11_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_12_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_13_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_14_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_15_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_16_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_17` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_17_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_18` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_18_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_19` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_19_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_20` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_20_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `damages`
--

INSERT INTO `damages` (`id`, `comment_1`, `comment_1_photo`, `comment_2`, `comment_2_photo`, `comment_3`, `comment_3_photo`, `comment_4`, `comment_4_photo`, `comment_5`, `comment_5_photo`, `comment_6`, `comment_6_photo`, `comment_7`, `comment_7_photo`, `comment_8`, `comment_8_photo`, `comment_9`, `comment_9_photo`, `comment_10`, `comment_10_photo`, `comment_11`, `comment_11_photo`, `comment_12`, `comment_12_photo`, `comment_13`, `comment_13_photo`, `comment_14`, `comment_14_photo`, `comment_15`, `comment_15_photo`, `comment_16`, `comment_16_photo`, `comment_17`, `comment_17_photo`, `comment_18`, `comment_18_photo`, `comment_19`, `comment_19_photo`, `comment_20`, `comment_20_photo`, `comment`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'dasdas', 'images/documents/vehicle/damage/damage_comment_1_photo_2.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_2_photo_2.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_3_photo_2.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_4_photo_2.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_5_photo_2.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_6_photo_2.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_7_photo_2.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_8_photo_2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'dasdas', 'images/documents/vehicle/damage/damage_comment_1_photo_1.jpeg', 'dasdas', 'images/documents/vehicle/damage/damage_comment_2_photo_1.jpeg', 'dasdas', 'images/documents/vehicle/damage/damage_comment_3_photo_1.jpeg', 'dasdas', 'images/documents/vehicle/damage/damage_comment_4_photo_1.jpeg', 'dasdas', 'images/documents/vehicle/damage/damage_comment_5_photo_1.jpeg', 'dasdas', 'images/documents/vehicle/damage/damage_comment_6_photo_1.jpeg', 'dasdas', 'images/documents/vehicle/damage/damage_comment_7_photo_1.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_8_photo_1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-24 11:07:57', '2023-05-24 11:07:57'),
(3, 'vhgf', 'images/documents/vehicle/damage/damage_comment_1_photo_3.jpeg', 'vhgf', 'images/documents/vehicle/damage/damage_comment_2_photo_3.jpeg', 'vhff', 'images/documents/vehicle/damage/damage_comment_3_photo_3.jpeg', 'ok', 'images/documents/vehicle/damage/damage_comment_4_photo_3.jpeg', 'ok', 'images/documents/vehicle/damage/damage_comment_5_photo_3.jpeg', 'ok', 'images/documents/vehicle/damage/damage_comment_6_photo_3.jpeg', 'ok', 'images/documents/vehicle/damage/damage_comment_7_photo_3.jpeg', 'ok', 'images/documents/vehicle/damage/damage_comment_8_photo_3.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, 'comment 1-1', 'images/documents/vehicle/damage/damage_comment_1_photo_23.jpeg', 'comment 21', 'images/documents/vehicle/damage/damage_comment_2_photo_23.jpeg', 'comment 31', 'images/documents/vehicle/damage/damage_comment_3_photo_23.jpeg', 'comment 41', 'images/documents/vehicle/damage/damage_comment_4_photo_23.jpeg', 'comment 51', 'images/documents/vehicle/damage/damage_comment_5_photo_23.jpeg', 'comment 61', 'images/documents/vehicle/damage/damage_comment_6_photo_23.jpeg', 'comment 71', 'images/documents/vehicle/damage/damage_comment_7_photo_23.jpeg', 'comment 81', 'images/documents/vehicle/damage/damage_comment_8_photo_23.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'dasdas', 'images/documents/vehicle/damage/damage_comment_1_photo_24.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_2_photo_24.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_3_photo_24.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_4_photo_24.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_5_photo_24.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_6_photo_24.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_7_photo_24.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_8_photo_24.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdasdasd', 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/documents/vehicle/damage/damage_comment_20_photo_22.jpeg', 'hgugygyg', 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, 'comment', 'images/documents/vehicle/damage/damage_comment_1_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_2_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_3_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_4_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_5_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_6_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_7_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_8_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_9_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_10_photo_13.jpeg', 'comment', NULL, NULL, 'images/documents/vehicle/damage/damage_comment_12_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_13_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_14_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_15_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_16_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_17_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_18_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_19_photo_13.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_20_photo_13.jpeg', 'commentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcomment', 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, 'comment 1', 'images/documents/vehicle/damage/damage_comment_1_photo_35.jpeg', 'comment 2', 'images/documents/vehicle/damage/damage_comment_2_photo_35.jpeg', 'comment 3', 'images/documents/vehicle/damage/damage_comment_3_photo_35.jpeg', 'comment 4', 'images/documents/vehicle/damage/damage_comment_4_photo_35.jpeg', 'comment 5', 'images/documents/vehicle/damage/damage_comment_5_photo_35.jpeg', 'comment 6', 'images/documents/vehicle/damage/damage_comment_6_photo_35.jpeg', 'comment 7', 'images/documents/vehicle/damage/damage_comment_7_photo_35.jpeg', 'comment 8', 'images/documents/vehicle/damage/damage_comment_8_photo_35.jpeg', 'comment 9', 'images/documents/vehicle/damage/damage_comment_9_photo_35.jpeg', 'comment 10', 'images/documents/vehicle/damage/damage_comment_10_photo_35.jpeg', 'comment 11', 'images/documents/vehicle/damage/damage_comment_11_photo_35.jpeg', 'comment 12', 'images/documents/vehicle/damage/damage_comment_12_photo_35.jpeg', 'comment 13', 'images/documents/vehicle/damage/damage_comment_13_photo_35.jpeg', 'comment 14', 'images/documents/vehicle/damage/damage_comment_14_photo_35.jpeg', 'comment 15', 'images/documents/vehicle/damage/damage_comment_15_photo_35.jpeg', 'comment 16', 'images/documents/vehicle/damage/damage_comment_16_photo_35.jpeg', 'comment 17', 'images/documents/vehicle/damage/damage_comment_17_photo_35.jpeg', 'comment 18', 'images/documents/vehicle/damage/damage_comment_18_photo_35.jpeg', 'comment 19', 'images/documents/vehicle/damage/damage_comment_19_photo_35.jpeg', 'comment 20', 'images/documents/vehicle/damage/damage_comment_20_photo_35.jpeg', NULL, 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, 'comment 1', 'images/documents/vehicle/damage/damage_comment_1_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_2_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_3_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_4_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_5_photo_36.jpeg', 'comment 15', 'images/documents/vehicle/damage/damage_comment_6_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_7_photo_36.jpeg', 'comment 1', NULL, 'comment 1', 'images/documents/vehicle/damage/damage_comment_9_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_10_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_11_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_12_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_13_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_14_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_15_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_16_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_17_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_18_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_19_photo_36.jpeg', 'comment 1', 'images/documents/vehicle/damage/damage_comment_20_photo_36.jpeg', NULL, 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, 'dasdas', 'images/documents/vehicle/damage/damage_comment_1_photo_40.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_2_photo_40.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_3_photo_40.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_4_photo_40.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_5_photo_40.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_6_photo_40.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_7_photo_40.png', 'dasdas', 'images/documents/vehicle/damage/damage_comment_8_photo_40.png', 'comment 9', 'images/documents/vehicle/damage/damage_comment_9_photo_40.jpeg', 'comment 10', 'images/documents/vehicle/damage/damage_comment_10_photo_40.jpeg', 'comment 11', 'images/documents/vehicle/damage/damage_comment_11_photo_40.jpeg', 'comment 12', 'images/documents/vehicle/damage/damage_comment_12_photo_40.jpeg', 'comment 13', 'images/documents/vehicle/damage/damage_comment_13_photo_40.jpeg', 'comment 14', 'images/documents/vehicle/damage/damage_comment_14_photo_40.jpeg', 'comment 15', 'images/documents/vehicle/damage/damage_comment_15_photo_40.jpeg', 'comment 16', 'images/documents/vehicle/damage/damage_comment_16_photo_40.jpeg', 'comment 17', 'images/documents/vehicle/damage/damage_comment_17_photo_40.jpeg', 'comment 18', 'images/documents/vehicle/damage/damage_comment_18_photo_40.jpeg', 'comment 19', 'images/documents/vehicle/damage/damage_comment_19_photo_40.jpeg', 'comment 20', 'images/documents/vehicle/damage/damage_comment_20_photo_40.jpeg', 'asdasdasd', 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yesyyryyhdhdhfhchjcyesyyryyhdhdhfhchjcyesyyryyhdhdhfhchjcyesyyryyhdhdhfhchjcyesyyryyhdhdhfhchjcyesyyryyhdhdhfhchjc', 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yesyyryyhdhdhfhchjc', 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'comment 1', 'images/documents/vehicle/damage/damage_comment_1_photo_43.jpeg', 'comment 2', 'images/documents/vehicle/damage/damage_comment_2_photo_43.jpeg', 'comment 3', 'images/documents/vehicle/damage/damage_comment_3_photo_43.jpeg', 'comment 4', 'images/documents/vehicle/damage/damage_comment_4_photo_43.jpeg', 'comment 5', 'images/documents/vehicle/damage/damage_comment_5_photo_43.jpeg', 'comment 6', 'images/documents/vehicle/damage/damage_comment_6_photo_43.jpeg', 'comment 7', 'images/documents/vehicle/damage/damage_comment_7_photo_43.jpeg', 'comment 8', 'images/documents/vehicle/damage/damage_comment_8_photo_43.jpeg', 'comment 9', 'images/documents/vehicle/damage/damage_comment_9_photo_43.jpeg', 'comment 10', 'images/documents/vehicle/damage/damage_comment_10_photo_43.jpeg', 'comment 11', 'images/documents/vehicle/damage/damage_comment_11_photo_43.jpeg', 'comment 12', 'images/documents/vehicle/damage/damage_comment_12_photo_43.jpeg', 'comment 13', 'images/documents/vehicle/damage/damage_comment_13_photo_43.jpeg', 'comment 14', 'images/documents/vehicle/damage/damage_comment_14_photo_43.jpeg', 'comment 15', 'images/documents/vehicle/damage/damage_comment_15_photo_43.jpeg', 'comment 16', 'images/documents/vehicle/damage/damage_comment_16_photo_43.jpeg', 'comment 17', 'images/documents/vehicle/damage/damage_comment_17_photo_43.jpeg', 'comment 18', 'images/documents/vehicle/damage/damage_comment_18_photo_43.jpeg', 'comment 19', 'images/documents/vehicle/damage/damage_comment_19_photo_43.jpeg', 'comment 20', 'images/documents/vehicle/damage/damage_comment_20_photo_43.jpeg', 'comment 1comment 1comment 1', 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, 'oil sump leakage', 'images/documents/vehicle/damage/damage_comment_1_photo_41.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_2_photo_41.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'Left headlight broken', 'images/documents/vehicle/damage/damage_comment_1_photo_45.jpeg', 'ORVM scratches', 'images/documents/vehicle/damage/damage_comment_2_photo_45.jpeg', 'bebe', NULL, 'nenjd', NULL, 'ndndn', NULL, 'nsns', NULL, 'jejej', NULL, 'ejjdj', NULL, 'enjdk', NULL, 'dkke', NULL, 'jdkd', NULL, 'jejej', NULL, 'memek', NULL, 'jekek', NULL, 'kekek', NULL, 'nns', NULL, 'jwk', NULL, 'lwlw', NULL, 'jeje', 'images/documents/vehicle/damage/damage_comment_19_photo_45.jpeg', 'ieiek', NULL, 'Back compression- No\nEngine Smoke - No', 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'utuffy', 'images/documents/vehicle/damage/damage_comment_19_photo_46.jpeg', 'ufhfyydf', 'images/documents/vehicle/damage/damage_comment_20_photo_46.jpeg', 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest', 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, 'habsb', 'images/documents/vehicle/damage/damage_comment_1_photo_48.jpeg', 'jjsns', 'images/documents/vehicle/damage/damage_comment_2_photo_48.jpeg', 'nnsns', NULL, 'nnznz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nanzznziskjsbnzmsnsnnsnsnbs', 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'comment 1', 'images/documents/vehicle/damage/damage_comment_1_photo_50.jpeg', 'comment 2', 'images/documents/vehicle/damage/damage_comment_2_photo_50.jpeg', 'comment 3', 'images/documents/vehicle/damage/damage_comment_3_photo_50.jpeg', 'comment 4', 'images/documents/vehicle/damage/damage_comment_4_photo_50.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'comment commentcommentcomment comment comment commentcommentcomment comment comment commentcommentcomment commentcomment commentcommentcomment comment comment commentcommentcomment comment comment commentcommentcomment comment comment commentcommentcomment commentcomment commentcommentcomment comment comment commentcommentcomment comment comment commentcommentcomment comment', 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'comment 1', 'images/documents/vehicle/damage/damage_comment_1_photo_51.jpeg', 'comment 2', 'images/documents/vehicle/damage/damage_comment_2_photo_51.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'comment', 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'wheel cap', 'images/documents/vehicle/damage/damage_comment_1_photo_56.jpeg', 'seats cover', 'images/documents/vehicle/damage/damage_comment_2_photo_56.jpeg', 'ABS', 'images/documents/vehicle/damage/damage_comment_3_photo_56.jpeg', 'music system', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Smoke- Ok \nEngine Back Compression - Ok', 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'comment1', 'images/documents/vehicle/damage/damage_comment_1_photo_58.jpeg', 'comment2', 'images/documents/vehicle/damage/damage_comment_2_photo_58.jpeg', 'comment3', 'images/documents/vehicle/damage/damage_comment_3_photo_58.jpeg', 'comment4', 'images/documents/vehicle/damage/damage_comment_4_photo_58.jpeg', 'comment5', 'images/documents/vehicle/damage/damage_comment_5_photo_58.jpeg', 'comment6', 'images/documents/vehicle/damage/damage_comment_6_photo_58.jpeg', 'comment7', 'images/documents/vehicle/damage/damage_comment_7_photo_58.jpeg', 'comment8', 'images/documents/vehicle/damage/damage_comment_8_photo_58.jpeg', 'comment9', 'images/documents/vehicle/damage/damage_comment_9_photo_58.jpeg', 'comment10', 'images/documents/vehicle/damage/damage_comment_10_photo_58.jpeg', 'comment11', 'images/documents/vehicle/damage/damage_comment_11_photo_58.jpeg', NULL, NULL, 'comment12', 'images/documents/vehicle/damage/damage_comment_13_photo_58.jpeg', 'comment13', 'images/documents/vehicle/damage/damage_comment_14_photo_58.jpeg', 'comment14', 'images/documents/vehicle/damage/damage_comment_15_photo_58.jpeg', 'comment15', 'images/documents/vehicle/damage/damage_comment_16_photo_58.jpeg', 'comment16', 'images/documents/vehicle/damage/damage_comment_17_photo_58.jpeg', 'comment17', 'images/documents/vehicle/damage/damage_comment_18_photo_58.jpeg', 'comment18', 'images/documents/vehicle/damage/damage_comment_19_photo_58.jpeg', 'comment19', 'images/documents/vehicle/damage/damage_comment_20_photo_58.jpeg', 'commentcommentcommentcommentcommentcommentcommentcommentcommentcomment', 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'comment', 'images/documents/vehicle/damage/damage_comment_1_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_2_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_3_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_4_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_5_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_6_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_7_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_8_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_9_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_10_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_11_photo_59.jpeg', NULL, NULL, 'comment', 'images/documents/vehicle/damage/damage_comment_13_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_14_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_15_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_16_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_17_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_18_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_19_photo_59.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_20_photo_59.jpeg', 'commentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcommentcomment', 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'Bumper damage', 'images/documents/vehicle/damage/damage_comment_1_photo_60.jpeg', 'Dicky rusty', 'images/documents/vehicle/damage/damage_comment_2_photo_60.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'four tyre cracks', 'images/documents/vehicle/damage/damage_comment_1_photo_70.jpeg', 'Lhs orvm scratch', 'images/documents/vehicle/damage/damage_comment_2_photo_70.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No engine Blow back', 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, '.mmm', 'images/documents/vehicle/damage/damage_comment_1_photo_84.jpeg', 'huu', 'images/documents/vehicle/damage/damage_comment_2_photo_84.jpeg', 'hh', 'images/documents/vehicle/damage/damage_comment_3_photo_84.jpeg', '8uy', 'images/documents/vehicle/damage/damage_comment_4_photo_84.jpeg', 'hgu', 'images/documents/vehicle/damage/damage_comment_5_photo_84.jpeg', 'tyy', 'images/documents/vehicle/damage/damage_comment_6_photo_84.jpeg', '3oekrj', 'images/documents/vehicle/damage/damage_comment_7_photo_84.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hsjsivkansvs', 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, 'comment', 'images/documents/vehicle/damage/damage_comment_1_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_2_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_3_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_4_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_5_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_6_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_7_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_8_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_9_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_10_photo_79.jpeg', 'comment', NULL, NULL, 'images/documents/vehicle/damage/damage_comment_12_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_13_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_14_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_15_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_16_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_17_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_18_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_19_photo_79.jpeg', 'comment', 'images/documents/vehicle/damage/damage_comment_20_photo_79.jpeg', 'comment comment comment  comment comment comment comment comment commentcomment comment comment  comment comment comment comment comment comment', 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, '1', NULL, '2', NULL, '3', NULL, '4', NULL, '5', NULL, '6', NULL, '7', NULL, '8', NULL, '9', NULL, '10', NULL, '11', NULL, '12', NULL, '13', NULL, '14', NULL, '15', NULL, '16', NULL, '17', NULL, '18', NULL, '19', NULL, '20', NULL, 'gxjxjckvkkv bxxjkzKOlsxnxjosa hxjxzjisoalwjxjccjjccj bisisosoaowhxisoaoa jxjdksoaosksosjzb', 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hshxjckckcncn hxjxkckxkxkdlszkzk jxkxlxlxlxlxxlxlxxlxkz. jxkxlxlxlslslzbzoosls', 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'comment 1', 'images/documents/vehicle/damage/damage_comment_1_photo_90.jpeg', 'comment 2', 'images/documents/vehicle/damage/damage_comment_2_photo_90.jpeg', 'comment 3', 'images/documents/vehicle/damage/damage_comment_3_photo_90.jpeg', 'comment 4', 'images/documents/vehicle/damage/damage_comment_4_photo_90.jpeg', 'comment 5', 'images/documents/vehicle/damage/damage_comment_5_photo_90.jpeg', 'comment 6', 'images/documents/vehicle/damage/damage_comment_6_photo_90.jpeg', 'comment 7', 'images/documents/vehicle/damage/damage_comment_7_photo_90.jpeg', 'comment 8', 'images/documents/vehicle/damage/damage_comment_8_photo_90.jpeg', 'comment 9', 'images/documents/vehicle/damage/damage_comment_9_photo_90.jpeg', 'comment 10', 'images/documents/vehicle/damage/damage_comment_10_photo_90.jpeg', 'comment 11', 'images/documents/vehicle/damage/damage_comment_11_photo_90.jpeg', 'comment 13', NULL, 'comment 12', 'images/documents/vehicle/damage/damage_comment_13_photo_90.jpeg', 'comment 13', 'images/documents/vehicle/damage/damage_comment_14_photo_90.jpeg', 'comment 14', 'images/documents/vehicle/damage/damage_comment_15_photo_90.jpeg', 'comment 15', 'images/documents/vehicle/damage/damage_comment_16_photo_90.jpeg', 'comment 16', 'images/documents/vehicle/damage/damage_comment_17_photo_90.jpeg', 'comment 17', 'images/documents/vehicle/damage/damage_comment_18_photo_90.jpeg', 'comment 18', 'images/documents/vehicle/damage/damage_comment_19_photo_90.jpeg', 'comment 19', 'images/documents/vehicle/damage/damage_comment_20_photo_90.jpeg', 'comment comment comment comment comment comment comment comment comment comment comment comment comment edit comment second edit comment', 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, NULL, 'images/documents/vehicle/damage/damage_comment_1_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_2_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_3_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_4_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_5_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_6_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_7_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_8_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_9_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_10_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_11_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_12_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_13_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_14_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_15_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_16_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_17_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_18_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_19_photo_101.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_20_photo_101.jpeg', 'ghdhsjsj hxhsjsjsjaja ghsjajaiahssbgssiia hxjzsjjaisia hxsjsjakkaak sjajajaijdhdxhxj', 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, 'comment1', 'images/documents/vehicle/damage/damage_comment_1_photo_92.jpeg', 'comment2', 'images/documents/vehicle/damage/damage_comment_2_photo_92.jpeg', 'comment3', 'images/documents/vehicle/damage/damage_comment_3_photo_92.jpeg', 'comment4', 'images/documents/vehicle/damage/damage_comment_4_photo_92.jpeg', 'comment5', 'images/documents/vehicle/damage/damage_comment_5_photo_92.jpeg', 'comment6', 'images/documents/vehicle/damage/damage_comment_6_photo_92.jpeg', 'comment7', 'images/documents/vehicle/damage/damage_comment_7_photo_92.jpeg', 'comment8', 'images/documents/vehicle/damage/damage_comment_8_photo_92.jpeg', 'comment9', 'images/documents/vehicle/damage/damage_comment_9_photo_92.jpeg', 'comment10', 'images/documents/vehicle/damage/damage_comment_10_photo_92.jpeg', 'comment11', 'images/documents/vehicle/damage/damage_comment_11_photo_92.jpeg', 'comment12', 'images/documents/vehicle/damage/damage_comment_12_photo_92.jpeg', 'comment13', 'images/documents/vehicle/damage/damage_comment_13_photo_92.jpeg', 'comment14', 'images/documents/vehicle/damage/damage_comment_14_photo_92.jpeg', 'comment15', 'images/documents/vehicle/damage/damage_comment_15_photo_92.jpeg', 'comment16', 'images/documents/vehicle/damage/damage_comment_16_photo_92.jpeg', 'comment17', 'images/documents/vehicle/damage/damage_comment_17_photo_92.jpeg', 'comment18', 'images/documents/vehicle/damage/damage_comment_18_photo_92.jpeg', 'comment19', 'images/documents/vehicle/damage/damage_comment_19_photo_92.jpeg', 'comment20', 'images/documents/vehicle/damage/damage_comment_20_photo_92.jpeg', 'hxizskzjz gxhzjsjsjsb', 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'u', 'images/documents/vehicle/damage/damage_comment_1_photo_102.jpeg', 'rr', 'images/documents/vehicle/damage/damage_comment_2_photo_102.jpeg', 'jj', 'images/documents/vehicle/damage/damage_comment_3_photo_102.jpeg', '4', 'images/documents/vehicle/damage/damage_comment_4_photo_102.jpeg', '5', 'images/documents/vehicle/damage/damage_comment_5_photo_102.jpeg', '6', 'images/documents/vehicle/damage/damage_comment_6_photo_102.jpeg', '7', 'images/documents/vehicle/damage/damage_comment_7_photo_102.jpeg', '8', 'images/documents/vehicle/damage/damage_comment_8_photo_102.jpeg', '9', 'images/documents/vehicle/damage/damage_comment_9_photo_102.jpeg', '10', 'images/documents/vehicle/damage/damage_comment_10_photo_102.jpeg', '11', 'images/documents/vehicle/damage/damage_comment_11_photo_102.jpeg', '12', 'images/documents/vehicle/damage/damage_comment_12_photo_102.jpeg', '13', 'images/documents/vehicle/damage/damage_comment_13_photo_102.jpeg', '14', 'images/documents/vehicle/damage/damage_comment_14_photo_102.jpeg', '15', 'images/documents/vehicle/damage/damage_comment_15_photo_102.jpeg', '16', 'images/documents/vehicle/damage/damage_comment_16_photo_102.jpeg', '17', 'images/documents/vehicle/damage/damage_comment_17_photo_102.jpeg', '18', 'images/documents/vehicle/damage/damage_comment_18_photo_102.jpeg', '19', 'images/documents/vehicle/damage/damage_comment_19_photo_102.jpeg', '20', 'images/documents/vehicle/damage/damage_comment_20_photo_102.jpeg', 'mb', 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adding form', 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'add form', 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'add form', 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'add form edit 3', 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'Steering wheel worn-out', 'images/documents/vehicle/damage/damage_comment_1_photo_120.jpeg', 'consale Box worn-out', 'images/documents/vehicle/damage/damage_comment_2_photo_120.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Engine Smoke - Ok \nEngine Back compression - Ok\n\nVideo Link - https://youtu.be/28NfIxF8XUQ', 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, '1', 'images/documents/vehicle/damage/damage_comment_1_photo_122.jpeg', '2', 'images/documents/vehicle/damage/damage_comment_2_photo_122.jpeg', '3', 'images/documents/vehicle/damage/damage_comment_3_photo_122.jpeg', '4', 'images/documents/vehicle/damage/damage_comment_4_photo_122.jpeg', '5', 'images/documents/vehicle/damage/damage_comment_5_photo_122.jpeg', '6', 'images/documents/vehicle/damage/damage_comment_6_photo_122.jpeg', '7', 'images/documents/vehicle/damage/damage_comment_7_photo_122.jpeg', '8', 'images/documents/vehicle/damage/damage_comment_8_photo_122.jpeg', '9', 'images/documents/vehicle/damage/damage_comment_9_photo_122.jpeg', '10', 'images/documents/vehicle/damage/damage_comment_10_photo_122.jpeg', '11', 'images/documents/vehicle/damage/damage_comment_11_photo_122.jpeg', '12', 'images/documents/vehicle/damage/damage_comment_12_photo_122.jpeg', '13', 'images/documents/vehicle/damage/damage_comment_13_photo_122.jpeg', '14', 'images/documents/vehicle/damage/damage_comment_14_photo_122.jpeg', '15', 'images/documents/vehicle/damage/damage_comment_15_photo_122.jpeg', '16', 'images/documents/vehicle/damage/damage_comment_16_photo_122.jpeg', '17', 'images/documents/vehicle/damage/damage_comment_17_photo_122.jpeg', '18', 'images/documents/vehicle/damage/damage_comment_18_photo_122.jpeg', '19', 'images/documents/vehicle/damage/damage_comment_19_photo_122.jpeg', '20', 'images/documents/vehicle/damage/damage_comment_20_photo_122.jpeg', 'comment', 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'Cowl panel Grill broken', 'images/documents/vehicle/damage/damage_comment_1_photo_127.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Brake condition - Ok , Smoke Condition - Ok , Back compression - Ok', 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cvhfn', 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, NULL, NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'RHS roofline has dents', 'images/documents/vehicle/damage/damage_comment_1_photo_151.jpeg', 'Dicky door strut need to replace', 'images/documents/vehicle/damage/damage_comment_2_photo_151.jpeg', 'water intrusion in floor knobs rusted', 'images/documents/vehicle/damage/damage_comment_3_photo_151.jpeg', 'all tyres have crack marks', 'images/documents/vehicle/damage/damage_comment_4_photo_151.jpeg', 'steering rod rusted', 'images/documents/vehicle/damage/damage_comment_5_photo_151.jpeg', 'headlight glass have scratches', 'images/documents/vehicle/damage/damage_comment_6_photo_151.jpeg', 'bonnet lockframe rusted', 'images/documents/vehicle/damage/damage_comment_7_photo_151.jpeg', 'boot frame rusted', 'images/documents/vehicle/damage/damage_comment_8_photo_151.jpeg', 'break oil distributor hose rusted', 'images/documents/vehicle/damage/damage_comment_9_photo_151.jpeg', 'LHS rear view mirror NA', 'images/documents/vehicle/damage/damage_comment_10_photo_151.jpeg', 'chassis rusting marks', 'images/documents/vehicle/damage/damage_comment_11_photo_151.jpeg', 'No black smoke, No back compression', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'rusted hole', 'images/documents/vehicle/damage/damage_comment_1_photo_118.jpeg', 'rusted', 'images/documents/vehicle/damage/damage_comment_2_photo_118.jpeg', 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'nobtg', NULL, 'Engine back compression - Ok', 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'smoke condition & back commpreaction ok', 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'left hand side headlight dal', 'images/documents/vehicle/damage/damage_comment_1_photo_73.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smoke - ok \' engine back compression- ok Both headlights scratches \'Rear wiper not working jgif', 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'Both Headlight minor scratches', 'images/documents/vehicle/damage/damage_comment_1_photo_155.jpeg', 'All Door trim Worn-out', 'images/documents/vehicle/damage/damage_comment_2_photo_155.jpeg', 'Dicky end panel Patti Repaired', 'images/documents/vehicle/damage/damage_comment_3_photo_155.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Engine Back Compression - Ok,\nSmoke - ok,\nBrake Service Required,\nGeneral services required, \n Service History Need to be checked, \nBattery need to be replace', 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35'),
(62, 'front rhe seat cover tone', 'images/documents/vehicle/damage/damage_comment_1_photo_162.jpeg', 'floor carpet dirty condition', 'images/documents/vehicle/damage/damage_comment_2_photo_162.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no black smoke & no back compression\nService required', 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Smoke - Ok , Engine Back compression - ok', 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11'),
(64, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52'),
(65, 'lh head light damge', 'images/documents/vehicle/damage/damage_comment_1_photo_132.jpeg', 'rh tail dame', 'images/documents/vehicle/damage/damage_comment_2_photo_132.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'engine smook is ok \nback comparison no', 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'taillight damge', 'images/documents/vehicle/damage/damage_comment_1_photo_110.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smoke - ok, back compression - No', 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Smoke condition - Ok, Back compression - ok.', 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dicky lock panel rusted, Engine tappet work done, Smoke condition - Ok, Engine Back compression - Ok.', 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'from rha tyre', 'images/documents/vehicle/damage/damage_comment_1_photo_176.jpeg', 'rear lhs tyre', 'images/documents/vehicle/damage/damage_comment_2_photo_176.jpeg', 'fr lhs power windo switch n/w', 'images/documents/vehicle/damage/damage_comment_3_photo_176.jpeg', 'ac vent direction knob brocken', 'images/documents/vehicle/damage/damage_comment_4_photo_176.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no black smoke, no black compression, suspension noise, 2tyre need to be replace, all body side minor and major scratch & dent front bumper crack. coolant lavel low', 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'Dicky end panel rusted', 'images/documents/vehicle/damage/damage_comment_1_photo_179.jpeg', 'Pipe leakage', 'images/documents/vehicle/damage/damage_comment_2_photo_179.jpeg', 'Rhs orvm scratch', 'images/documents/vehicle/damage/damage_comment_3_photo_179.jpeg', 'rear LHS taillights scratch', 'images/documents/vehicle/damage/damage_comment_4_photo_179.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Smoke - Ok , Engine Back compression - Ok \n,Wiper linkage noise ,', 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'chassis rusted', 'images/documents/vehicle/damage/damage_comment_1_photo_182.jpeg', 'headlights have scratches', 'images/documents/vehicle/damage/damage_comment_2_photo_182.jpeg', 'airfilter box cover', 'images/documents/vehicle/damage/damage_comment_3_photo_182.jpeg', 'hood cover plate missing', 'images/documents/vehicle/damage/damage_comment_4_photo_182.jpeg', 'RHS orvm loose', 'images/documents/vehicle/damage/damage_comment_5_photo_182.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'four pannels need to touch-up , all tyres on cracked mark, Smoke condition -Ok, Engine Back compression - Ok.', 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No any damages', 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07');
INSERT INTO `damages` (`id`, `comment_1`, `comment_1_photo`, `comment_2`, `comment_2_photo`, `comment_3`, `comment_3_photo`, `comment_4`, `comment_4_photo`, `comment_5`, `comment_5_photo`, `comment_6`, `comment_6_photo`, `comment_7`, `comment_7_photo`, `comment_8`, `comment_8_photo`, `comment_9`, `comment_9_photo`, `comment_10`, `comment_10_photo`, `comment_11`, `comment_11_photo`, `comment_12`, `comment_12_photo`, `comment_13`, `comment_13_photo`, `comment_14`, `comment_14_photo`, `comment_15`, `comment_15_photo`, `comment_16`, `comment_16_photo`, `comment_17`, `comment_17_photo`, `comment_18`, `comment_18_photo`, `comment_19`, `comment_19_photo`, `comment_20`, `comment_20_photo`, `comment`, `order_id`, `created_at`, `updated_at`) VALUES
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'bad', 'images/documents/vehicle/damage/damage_comment_1_photo_7.jpeg', 'bad', 'images/documents/vehicle/damage/damage_comment_2_photo_7.jpeg', 'bad', 'images/documents/vehicle/damage/damage_comment_3_photo_7.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'faltu car', 'images/documents/vehicle/damage/damage_comment_1_photo_8.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_2_photo_8.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_3_photo_8.jpeg', NULL, 'images/documents/vehicle/damage/damage_comment_4_photo_8.jpeg', NULL, NULL, NULL, 'images/documents/vehicle/damage/damage_comment_6_photo_8.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `dicky_doors`
--

CREATE TABLE `dicky_doors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dicky_floor_conditions`
--

CREATE TABLE `dicky_floor_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `engine_compartments`
--

CREATE TABLE `engine_compartments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tapped_noise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_overheating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_oil_sludge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_oil_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coolent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeing_side_noise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `altmeter_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bettery_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_compressor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starter_motor_noise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `air_fiter_assy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `engine_compartments`
--

INSERT INTO `engine_compartments` (`id`, `tapped_noise`, `engine_overheating`, `engine_oil_sludge`, `engine_oil_condition`, `coolent`, `timeing_side_noise`, `altmeter_condition`, `bettery_condition`, `ac_compressor`, `starter_motor_noise`, `air_fiter_assy`, `engine_video_link`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adasd', 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'Yes', 'Yes', 'Yes', 'Good', 'Good', 'Yes', 'Ok', 'Good', 'Ok', 'Yes', 'Ok', 'gfdvfdgffgh', 1, '2023-05-24 11:07:57', '2023-05-24 11:07:57'),
(3, 'Yes', 'Yes', 'Yes', 'Good', 'Good', 'Yes', 'Ok', 'Good', 'Ok', 'Yes', 'Ok', 'https://youtu.be/fnGW9iFKUqM', 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, 'Yes', 'Yes', 'Yes', 'Good', 'Good', 'Yes', 'Ok', 'Good', 'Ok', 'Yes', 'Ok', NULL, 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Workin', NULL, NULL, NULL, 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'https://www.youtube.com/watch?v=0VMtq2bWnz8', 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, 'No', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Jaddring, Weak, Hard, Good, Bad', 'Not Available, Jerking, Jaddring, Leakage, Bad', 'Yes', 'Ok', 'Good', 'Not Working, Noise', 'Yes', 'Ok', NULL, 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, 'Yes', 'Yes', 'Yes', 'Leakage', 'Leakage', 'Yes', 'Ok', 'Good', 'Not Workin', 'Yes', 'Ok', NULL, 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, 'Yes', 'Yes', 'Yes', 'Leakage', 'Leakage', 'Yes', 'Ok', 'Good', 'Ok', 'Yes', 'Ok', NULL, 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, 'Yes', 'Yes', 'Yes', 'Worn out, Sepage, Leakage, Bad', 'Jerking, Jaddring, Leakage, Bad', 'Yes', 'Ok', 'Good', 'Not Workin, Noise', 'Yes', 'Ok', 'wwwww', 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adfafs', 'adasd', 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'www.youtube.com', 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Jaddring, Weak, Hard, Good, Bad, Leakage', 'Ok, Jaddring, Jerking, Good, Bad, Leakage', 'Yes', 'Ok', 'Good', 'Ok, Noise, Not Workin', 'Yes', 'Ok', NULL, 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, 'Yes', 'Yes', 'Yes', 'Hard, Good', 'Ok, Good', 'Yes', 'Ok', 'Good', 'Ok', 'Yes', 'Ok', NULL, 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Noise', 'Yes', 'Ok', 'https://youtube.com/shorts/68mJBCpbMbk?feature=share4', 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, 'Yes', 'No', 'Yes', 'Hard, Bad', 'Not Available, Leakage', 'Yes', 'Ok', 'Good', 'Noise', 'Yes', 'Ok', NULL, 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'Yes', 'Yes', 'Yes', 'Hard, Weak, Jaddring, Sepage, Worn out, Ok, Leakage, Bad, Good', 'Leakage, Bad, Good', 'Yes', 'Ok', 'Good', 'Not Working, Noise, Ok', 'Yes', 'Ok', NULL, 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Jaddring, Weak, Hard, Leakage, Bad, Good', 'Not Available, Jerking, Jaddring, Ok, Leakage, Bad, Good', 'Yes', 'Ok', 'Good', 'Not Working, Noise, Ok', 'Yes', 'Ok', NULL, 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, 'Yes', 'Yes', 'Yes', 'Jaddring, Sepage, Good', 'Not Available, Jerking, Leakage, Bad', 'Yes', 'Ok', 'Good', 'Not Working, Ok', 'No', 'Ok', NULL, 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, 'No', 'Yes', 'Yes', 'Weak, Leakage, Bad', 'Not Available, Jaddring, Leakage, Bad', 'Yes', 'Ok', 'Good', 'Not Working, Noise', 'Yes', 'Ok', NULL, 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'No', 'No', 'No', 'Hard, Bad', 'Ok, Good', 'No', 'Not Ok', 'Good', 'Ok', 'No', 'Ok', NULL, 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Jaddring, Weak, Hard, Leakage, Bad, Good', 'Not Available, Jerking, Jaddring, Ok, Leakage, Bad, Good', 'Yes', 'Ok', 'Good', 'Not Working, Noise, Ok', 'Yes', 'Ok', NULL, 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Leakage, Bad, Good', 'Not Available, Jerking, Leakage, Bad, Good', 'Yes', 'Ok', 'Good', 'Not Workin, Noise, Ok', 'Yes', 'Ok', 'www.slits.con', 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'No', 'No', 'No', 'Hard, Worn out, Good', 'Not Available, Good', 'No', 'Ok', 'Good', 'Ok', 'Yes', 'Ok', NULL, 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, 'Yes', 'No', 'Yes', 'Ok, Worn out, Sepage, Good, Bad, Leakage', 'Ok, Jaddring, Jerking, Good, Bad', 'Yes', 'Ok', 'Good', 'Ok, Noise', 'Yes', 'Ok', NULL, 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'No', 'No', 'No', 'Ok, Good', 'Not Available, Good', 'No', 'Ok', 'Good', 'Ok', 'Yes', 'Ok', NULL, 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, 'No', 'No', 'No', 'Bad, Leakage', 'Bad', 'Yes', 'Ok', 'Good', 'Ok', 'Yes', 'Ok', NULL, 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Good, Bad', 'Ok, Jaddring, Good, Bad', 'Yes', 'Ok', 'Good', 'Ok, Noise', 'Yes', 'Ok', 'www.gzhzjz.com', 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, 'Yes', 'Yes', 'Yes', 'Weak, Sepage, Leakage, Good', 'Not Available, Jaddring, Leakage, Good', 'Yes', 'Ok', 'Good', 'Not Working, Ok', 'Yes', 'Ok', NULL, 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, 'Yes', 'Yes', 'Yes', 'Weak, Worn out, Bad', 'Not Available, Jaddring, Good, Leakage', 'Yes', 'Ok', 'Good', 'Noise, Ok', 'Yes', 'Not Ok', 'null', 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, 'Yes', 'Yes', 'Yes', 'Weak, Sepage, Leakage, Good', 'Not Available, Jaddring, Leakage, Good', 'Yes', 'Ok', 'Good', 'Not Working, Ok', 'Yes', 'Ok', NULL, 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'No', 'No', 'No', 'Ok, Worn out, Sepage, Jaddring, Bad, Leakage', 'Ok, Jaddring, Jerking, Not Available, Good, Bad, Leakage', 'No', 'Not Ok', 'Bad', 'Ok, Noise, Not Workin', 'No', 'Not Ok', 'htttps://www.slits.com', 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, 'Yes', 'Yes', 'Yes', 'Leakage, Good', 'Leakage, Good', 'Yes', 'Ok', 'Good', 'Not Working, Noise', 'Yes', 'Ok', NULL, 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, 'Yes', 'Yes', 'Yes', 'Leakage, Good', 'Leakage, Good', 'Yes', 'Ok', 'Good', 'Not Working, Ok', 'Yes', 'Ok', 'http://thecarsdoctor.com', 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, 'Yes', 'Yes', 'Yes', 'Leakage, Good', 'Good, Leakage', 'Yes', 'Ok', 'Good', 'Not Working, Ok', 'Yes', 'Ok', 'https://www.youtube.com', 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'No', 'No', 'No', 'Ok, Good, Bad, Leakage', 'Not Available, Leakage, Bad, Good', 'Yes', 'Ok', 'Good', 'Noise, Ok, Not Working', 'Yes', 'Not Ok', 'https://youtu.be/28NfIxF8XUQ', 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, 'Ok, Worn out, Sepage, Jaddring, Weak, Hard, Good, Bad, Leakage', 'Ok, Jaddring, Jerking, Not Available, Good, Bad, Leakage', NULL, NULL, NULL, 'Ok', NULL, NULL, 'www.youtube.com', 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Jaddring, Weak, Hard, Good, Bad, Leakage', 'Ok, Jaddring, Jerking, Not Available, Good, Bad, Leakage', 'Yes', 'Ok', 'Good', 'Ok, Noise', 'Yes', 'Ok', 'https://www.youtube.com', 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Jaddring, Weak, Hard, Good, Bad, Leakage', 'Ok, Jaddring, Jerking, Not Available, Good, Bad, Leakage', 'Yes', 'Ok', 'Good', 'Ok, Noise, Not Working', 'Yes', 'Ok', 'https://www.youtube.com', 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, 'No', 'No', 'No', 'Ok, Worn out, Good, Bad', 'Ok, Not Available, Good, Bad', 'No', 'Not Ok', 'Bad', 'Ok, Noise', 'No', 'Not Ok', 'https://www.youtube.com', 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, NULL, NULL, NULL, 'Good, Bad, Leakage', 'Good, Bad, Leakage', NULL, NULL, NULL, NULL, NULL, NULL, 'www.youtube.com', 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, NULL, NULL, NULL, 'Good, Leakage, Bad', 'Good, Leakage, Bad', NULL, NULL, NULL, NULL, NULL, NULL, 'null', 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, 'Yes', 'Yes', 'Yes', 'Good', 'Bad', 'Yes', 'Ok', 'Good', 'Noise', 'Yes', 'Ok', 'www.youtube.com', 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, 'Yes', 'Yes', 'Yes', 'Good, Bad, Leakage', 'Bad, Good, Leakage', 'Yes', 'Ok', 'Good', 'Ok', 'Yes', 'Ok', 'www.facebook.com', 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'Yes', 'No', 'Yes', 'Bad, Good, Leakage', 'Leakage, Bad, Good', 'Yes', 'Ok', 'Good', 'Not Working, Noise, Ok', 'Yes', 'Ok', 'https://youtu.be/28NfIxF8XUQ', 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, 'Yes', 'Yes', 'Yes', 'Good, Bad', 'Good, Bad', 'Yes', 'Ok', 'Good', 'Ok, Noise', 'Yes', 'Ok', 'www.youtube.com', 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'No', 'Ok', 'https://youtu.be/28NfIxF8XUQ', 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'No', 'Ok', 'no video', 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'No', 'No', 'Yes', 'Good', 'Good', 'No', 'Ok', 'Good', 'Not Working', 'No', 'Ok', 'https://youtube.com/shorts/dQ5_O6wA7zU?feature=share', 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'No', 'Ok', 'no abnormal notice', 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'No', 'Ok', 'ok', 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Noise', 'No', 'Ok', 'vjhj', 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Bad', 'Ok', 'No', 'Ok', 'https://youtube.com/shorts/3RJ0yMiKgGw?feature=share', 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35'),
(62, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'No', 'Ok', 'https://youtube.com/shorts/lzJj8WyxbyY?feature=share', 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, 'Yes', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'No', 'Ok', 'https://youtube.com/shorts/WjF8qyXSrQ4?feature=share', 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11'),
(64, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'No', 'Ok', 'https://youtube.com/shorts/odWdZFi8Mnc?feature=share', 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52'),
(65, 'No', 'No', 'No', 'Good', 'Good', 'Yes', 'Ok', 'Good', 'Noise', 'No', 'Ok', 'https://youtube.com/shorts/6GVDV_twfeQ?feature=share', 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'No', 'Ok', 'https://youtube.com/shorts/WjF8qyXSrQ4?feature=share', 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'No', 'Ok', 'https://youtube.com/shorts/mLZ_6DcIuqM?feature=share', 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'No', 'Ok', 'https://youtube.com/shorts/pfbUIDiADxs?feature=share', 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'No', 'Ok', 'https://youtube.com/shorts/kYnccmlqcQc?feature=share', 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'Yes', 'Ok', 'https://youtube.com/shorts/ofDEqxOsJ9M?feature=share', 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'No', 'No', 'Yes', 'Good', 'Good', 'No', 'Ok', 'Good', 'Noise', 'No', 'Ok', 'https://youtube.com/shorts/RTjvuUGWCTE?feature=share', 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'No', 'Ok', 'https://youtube.com/shorts/UcUN1oEMgY8?feature=share', 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, 'No', 'No', 'No', 'Good', 'Good', 'No', 'Ok', 'Good', 'Ok', 'No', 'Ok', 'https://youtube.com/shorts/UcUN1oEMgY8?feature=share', 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'No', 'Yes', 'Yes', 'Good', 'Good', 'Yes', 'Ok', 'Good', 'Ok', 'Yes', 'Ok', 'vanahs', 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'Yes', 'Yes', 'Yes', 'Good', 'Good', 'Yes', 'Ok', 'Good', 'Ok, Noise', 'Yes', 'Ok', 'https://youtu.be/fPjOWekzeGI', 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `exterior_back_sides`
--

CREATE TABLE `exterior_back_sides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dicky_door` text COLLATE utf8mb4_unicode_ci,
  `dicky_door_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_glass` text COLLATE utf8mb4_unicode_ci,
  `rear_glass_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dicky_floor_condition` text COLLATE utf8mb4_unicode_ci,
  `dicky_floor_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spare_wheel_tyre_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_bumper` text COLLATE utf8mb4_unicode_ci,
  `spare_wheel_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exterior_back_sides`
--

INSERT INTO `exterior_back_sides` (`id`, `dicky_door`, `dicky_door_photo`, `rear_glass`, `rear_glass_photo`, `dicky_floor_condition`, `dicky_floor_photo`, `spare_wheel_tyre_percentage`, `rear_bumper`, `spare_wheel_photo`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'adfasf', 'images/documents/vehicle/exterior_back/dicky_door_photo_2.png', 'asda', 'images/documents/vehicle/exterior_back/rear_glass_photo_2.png', 'asdf', 'images/documents/vehicle/exterior_back/dicky_floor_photo_2.png', '32', 'af', 'images/documents/vehicle/exterior_back/spare_wheel_photo_2.png', 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'Original', 'images/documents/vehicle/exterior_back/dicky_door_photo_1.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_1.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_1.jpeg', '90%', 'Major Dent, Original', 'images/documents/vehicle/exterior_back/spare_wheel_photo_1.jpeg', 1, '2023-05-24 11:07:57', '2023-05-24 11:07:57'),
(3, 'Original', 'images/documents/vehicle/exterior_back/dicky_door_photo_3.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_3.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_3.jpeg', '10%', 'Major Scratches', 'images/documents/vehicle/exterior_back/spare_wheel_photo_3.jpeg', 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, 'Original', NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'adfasf', 'images/documents/vehicle/exterior_back/dicky_door_photo_24.png', 'asda', 'images/documents/vehicle/exterior_back/rear_glass_photo_24.png', 'asdf', 'images/documents/vehicle/exterior_back/dicky_floor_photo_24.png', '32', 'af', 'images/documents/vehicle/exterior_back/spare_wheel_photo_24.png', 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_back/dicky_door_photo_13.jpeg', 'Cracked, Replace, Scratches', 'images/documents/vehicle/exterior_back/rear_glass_photo_13.jpeg', 'Replace, Damage, Rusted, Major Dent', 'images/documents/vehicle/exterior_back/dicky_floor_photo_13.jpeg', '10%', 'Damaged, Repainted, Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_back/spare_wheel_photo_13.jpeg', 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, 'Rusted', 'images/documents/vehicle/exterior_back/dicky_door_photo_35.jpeg', 'Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_35.jpeg', 'Major Dent', 'images/documents/vehicle/exterior_back/dicky_floor_photo_35.jpeg', '50%', 'Minor Dent', 'images/documents/vehicle/exterior_back/spare_wheel_photo_35.jpeg', 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, NULL, 'images/documents/vehicle/exterior_back/dicky_door_photo_32.jpeg', 'Replace', 'images/documents/vehicle/exterior_back/rear_glass_photo_32.jpeg', 'Replace', NULL, '50%', 'Major Scratches', 'images/documents/vehicle/exterior_back/spare_wheel_photo_32.jpeg', 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, 'Minor Scratches, Original, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_back/dicky_door_photo_36.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted, Scratches, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_36.jpeg', 'Original, Rusted, Repair, dent, Replace, Damage, Major Dent', 'images/documents/vehicle/exterior_back/dicky_floor_photo_36.jpeg', '30%', 'Major Dent, Repainted, Major Scratches, Minor dent, Minor Scratches, Original, Replace, Repair, Rusted, Minor Dent', 'images/documents/vehicle/exterior_back/spare_wheel_photo_36.jpeg', 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, 'adfasf', 'images/documents/vehicle/exterior_back/dicky_door_photo_40.png', 'asda', 'images/documents/vehicle/exterior_back/rear_glass_photo_40.png', 'asdf', 'images/documents/vehicle/exterior_back/dicky_floor_photo_40.png', '32', 'af', 'images/documents/vehicle/exterior_back/spare_wheel_photo_40.png', 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, NULL, NULL, NULL, NULL, 'Original, Rusted, Damage, Replace, Major Dent', NULL, NULL, NULL, NULL, 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, NULL, NULL, NULL, NULL, 'Original, Rusted, Damage, Replace, Major Dent', NULL, NULL, NULL, NULL, 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'Original, Repair, Replace, Rusted, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent', 'images/documents/vehicle/exterior_back/dicky_door_photo_43.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted, Scratches, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_43.jpeg', 'Original, Rusted, Repair, dent, Damage, Replace, Major Dent', 'images/documents/vehicle/exterior_back/dicky_floor_photo_43.jpeg', '10%', NULL, 'images/documents/vehicle/exterior_back/spare_wheel_photo_43.jpeg', 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'Original, Minor Scratches, Rusted', 'images/documents/vehicle/exterior_back/dicky_door_photo_45.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_45.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_45.jpeg', '30%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/spare_wheel_photo_45.jpeg', 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, NULL, 'images/documents/vehicle/exterior_back/dicky_door_photo_48.jpeg', NULL, 'images/documents/vehicle/exterior_back/rear_glass_photo_48.jpeg', NULL, 'images/documents/vehicle/exterior_back/dicky_floor_photo_48.jpeg', '50%', NULL, 'images/documents/vehicle/exterior_back/spare_wheel_photo_48.jpeg', 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_back/dicky_door_photo_50.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted, Scratches, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_50.jpeg', 'dent, Repair, Rusted, Original, Major Dent, Replace, Damage', 'images/documents/vehicle/exterior_back/dicky_floor_photo_50.jpeg', '70%', 'Major Dent, Major Scratches, Repainted, Minor dent, Minor Scratches, Original, Replace, Repair, Rusted, Minor Dent', 'images/documents/vehicle/exterior_back/spare_wheel_photo_50.jpeg', 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_back/dicky_door_photo_51.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted, Scratches, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_51.jpeg', 'dent, Repair, Rusted, Original, Damage, Replace, Major Dent', 'images/documents/vehicle/exterior_back/dicky_floor_photo_51.jpeg', '70%', 'Original, Minor Scratches, Minor dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted, Minor Dent', 'images/documents/vehicle/exterior_back/spare_wheel_photo_51.jpeg', 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, 'Original, Repair', 'images/documents/vehicle/exterior_back/dicky_door_photo_55.jpeg', 'Minor Dent, Repainted, Scratches, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_55.jpeg', 'Major Dent, Replace', 'images/documents/vehicle/exterior_back/dicky_floor_photo_55.jpeg', '30%', 'Major Scratches, Repainted', 'images/documents/vehicle/exterior_back/spare_wheel_photo_55.jpeg', 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, 'Original, Damaged, Repainted, Replace, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_54.', 'Replace, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_54.', 'Major Dent, Damage', 'images/documents/vehicle/exterior_back/dicky_floor_photo_54.', '30%', 'Major Scratches, Damaged', 'images/documents/vehicle/exterior_back/spare_wheel_photo_54.', 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'Original, Minor Scratches, Repainted, Minor Dent', 'images/documents/vehicle/exterior_back/dicky_door_photo_56.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_56.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_56.jpeg', '30%', 'Original, Major Scratches, Repainted', 'images/documents/vehicle/exterior_back/spare_wheel_photo_56.jpeg', 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'Original, Minor Scratches, Damaged, Minor Dent, Major Scratches, Repainted, Major Dent, Repair, Replace, Rusted', 'images/documents/vehicle/exterior_back/dicky_door_photo_58.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted, Scratches, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_58.jpeg', 'Original, Rusted, Repair, dent, Damage, Replace, Major Dent', 'images/documents/vehicle/exterior_back/dicky_floor_photo_58.jpeg', '30%', 'Original, Minor Scratches, Minor dent, Major Scratches, Major Dent, Replace, Repair, Rusted, Minor Dent, Repainted, Damaged', 'images/documents/vehicle/exterior_back/spare_wheel_photo_58.jpeg', 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'Original, MinorScratches, Replace, Damaged, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent', 'images/documents/vehicle/exterior_back/dicky_door_photo_59.jpeg', 'Replace, Scratches, Cracked, Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_59.jpeg', 'Damage, Rusted, Original, Replace', 'images/documents/vehicle/exterior_back/dicky_floor_photo_59.jpeg', '10%', 'Major Scratches, Repainted, Minor Dent, Damaged', 'images/documents/vehicle/exterior_back/spare_wheel_photo_59.jpeg', 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_60.jpeg', 'Original, Scratches', 'images/documents/vehicle/exterior_back/rear_glass_photo_60.jpeg', 'Original, Damage', 'images/documents/vehicle/exterior_back/dicky_floor_photo_60.jpeg', '50%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_back/spare_wheel_photo_60.jpeg', 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_back/dicky_door_photo_62.jpeg', 'Original, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_62.jpeg', 'Original, Rusted, Damage', 'images/documents/vehicle/exterior_back/dicky_floor_photo_62.jpeg', '50%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_back/spare_wheel_photo_62.jpeg', 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_70.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_70.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_70.jpeg', '90%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_back/spare_wheel_photo_70.jpeg', 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, 'Original, Minor Scratches, Repainted, Major Scratches, Major Dent, Minor Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_back/dicky_door_photo_84.jpeg', 'Original, Cracked, Scratches, Replace', 'images/documents/vehicle/exterior_back/rear_glass_photo_84.jpeg', 'Original, Rusted, Damage, Replace, Major Dent', 'images/documents/vehicle/exterior_back/dicky_floor_photo_84.jpeg', '50%', 'Original, Damaged, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair', 'images/documents/vehicle/exterior_back/spare_wheel_photo_84.jpeg', 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_79.jpeg', 'Original, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_79.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_back/dicky_floor_photo_79.jpeg', '50%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/spare_wheel_photo_79.jpeg', 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, 'Original, Minor Dent', 'images/documents/vehicle/exterior_back/dicky_door_photo_87.jpeg', 'Replace, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_87.jpeg', 'Major Dent, Damage', 'images/documents/vehicle/exterior_back/dicky_floor_photo_87.png', '70%', 'Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_back/spare_wheel_photo_87.png', 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, 'Minor Scratches, Major Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_88.jpeg', 'Replace, Scratches', 'images/documents/vehicle/exterior_back/rear_glass_photo_88.jpeg', 'Major Dent, Rusted', 'images/documents/vehicle/exterior_back/dicky_floor_photo_88.png', '30%', 'Major Scratches, Repainted', 'images/documents/vehicle/exterior_back/spare_wheel_photo_88.png', 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_89.jpeg', 'Replace, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_89.jpeg', 'Major Dent, Damage', 'images/documents/vehicle/exterior_back/dicky_floor_photo_89.jpeg', '50%', 'Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_back/spare_wheel_photo_89.jpeg', 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'Original, Minor Scratches, Damaged, Minor Dent, Repair, Replace, Rusted, Repainted, Major Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_90.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Cracked, Scratches, Replace', 'images/documents/vehicle/exterior_back/rear_glass_photo_90.jpeg', 'Original, Rusted, Repair, dent, Damage, Replace', 'images/documents/vehicle/exterior_back/dicky_floor_photo_90.jpeg', '70%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair', 'images/documents/vehicle/exterior_back/spare_wheel_photo_90.jpeg', 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'Original, Minor Dent, Repainted, Minor Scratches, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_back/dicky_door_photo_102.jpeg', 'Original, Cracked, Replace, Scratches', 'images/documents/vehicle/exterior_back/rear_glass_photo_102.jpeg', 'Original, Rusted, Damage, Replace, Major Dent', 'images/documents/vehicle/exterior_back/dicky_floor_photo_102.jpeg', '50%', 'Original, Minor Scratches, Minor Dent, Damaged, Repainted, Major Scratches, Major Dent, Replace, Repair', 'images/documents/vehicle/exterior_back/spare_wheel_photo_102.jpeg', 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_105.jpeg', 'Original, Minor Scratches, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_105.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_back/dicky_floor_photo_105.jpeg', '10%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/spare_wheel_photo_105.jpeg', 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_106.jpeg', 'Original, Minor Scratches, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_106.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_back/dicky_floor_photo_106.jpeg', '10%', 'Minor Scratches, Original', 'images/documents/vehicle/exterior_back/spare_wheel_photo_106.jpeg', 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_115.png', 'Original, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_115.png', 'Original, Rusted', 'images/documents/vehicle/exterior_back/dicky_floor_photo_115.png', '30%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/spare_wheel_photo_115.png', 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_back/dicky_door_photo_120.jpeg', 'Original, Cracked, Scratches, Replace', 'images/documents/vehicle/exterior_back/rear_glass_photo_120.jpeg', 'Original, Rusted, Damage, Replace, Major Dent', 'images/documents/vehicle/exterior_back/dicky_floor_photo_120.jpeg', '10%', 'Original, Minor Scratches, Minor Dent, Damaged, Repainted, Major Scratches, Major Dent, Replace, Repair', 'images/documents/vehicle/exterior_back/spare_wheel_photo_120.jpeg', 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_122.jpeg', 'Original, Cracked', 'images/documents/vehicle/exterior_back/rear_glass_photo_122.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_back/dicky_floor_photo_122.jpeg', '10%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/spare_wheel_photo_122.jpeg', 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'Original, Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_back/dicky_door_photo_127.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_127.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_127.jpeg', '50%', 'Original, Minor Dent, Major Scratches', 'images/documents/vehicle/exterior_back/spare_wheel_photo_127.jpeg', 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, 'Original', 'images/documents/vehicle/exterior_back/dicky_door_photo_77.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_77.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_77.jpeg', '70%', 'Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_back/spare_wheel_photo_77.jpeg', 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'Original, Minor Scratches, Minor Dent, Repainted, Rusted', 'images/documents/vehicle/exterior_back/dicky_door_photo_151.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_151.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_back/dicky_floor_photo_151.jpeg', '30%', 'Original, Minor Scratches, Repainted', 'images/documents/vehicle/exterior_back/spare_wheel_photo_151.jpeg', 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'Repainted', 'images/documents/vehicle/exterior_back/dicky_door_photo_118.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_118.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_118.jpeg', '30%', 'Repainted, Minor Scratches', 'images/documents/vehicle/exterior_back/spare_wheel_photo_118.jpeg', 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'Original', 'images/documents/vehicle/exterior_back/dicky_door_photo_150.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_150.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_150.jpeg', '90%', 'Original', 'images/documents/vehicle/exterior_back/spare_wheel_photo_150.jpeg', 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_73.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_73.jpeg', 'Rusted, Damage', 'images/documents/vehicle/exterior_back/dicky_floor_photo_73.jpeg', '10%', 'Major Scratches, Major Dent', 'images/documents/vehicle/exterior_back/spare_wheel_photo_73.jpeg', 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_155.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_155.jpeg', 'Original, Damage', 'images/documents/vehicle/exterior_back/dicky_floor_photo_155.jpeg', '90%', 'Repainted, Minor Scratches, Replace', 'images/documents/vehicle/exterior_back/spare_wheel_photo_155.jpeg', 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35'),
(62, 'Original, Repainted', 'images/documents/vehicle/exterior_back/dicky_door_photo_162.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_162.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_162.jpeg', '70%', 'Original, Repainted', 'images/documents/vehicle/exterior_back/spare_wheel_photo_162.jpeg', 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_161.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_161.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_161.jpeg', '30%', 'Original, Repainted, Minor Scratches', 'images/documents/vehicle/exterior_back/spare_wheel_photo_161.jpeg', 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11'),
(64, 'Original', 'images/documents/vehicle/exterior_back/dicky_door_photo_164.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_164.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_164.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_back/spare_wheel_photo_164.jpeg', 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52'),
(65, 'Original, Repainted, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_132.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_132.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_back/dicky_floor_photo_132.jpeg', '50%', 'Original, Damaged, Repainted, Major Scratches', 'images/documents/vehicle/exterior_back/spare_wheel_photo_132.jpeg', 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_110.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_110.jpeg', 'Rusted, Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_110.jpeg', '10%', 'Minor Scratches, Original, Repainted', 'images/documents/vehicle/exterior_back/spare_wheel_photo_110.jpeg', 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, 'Original', 'images/documents/vehicle/exterior_back/dicky_door_photo_172.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_172.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_172.jpeg', '90%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_back/spare_wheel_photo_172.jpeg', 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, 'Original, Repainted, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_back/dicky_door_photo_174.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_174.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_174.jpeg', '30%', 'Original, Repainted, Minor Scratches, Damaged', 'images/documents/vehicle/exterior_back/spare_wheel_photo_174.jpeg', 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'Original', 'images/documents/vehicle/exterior_back/dicky_door_photo_176.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_176.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_176.jpeg', '30%', 'Original, Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_back/spare_wheel_photo_176.jpeg', 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'Original, Minor Scratches, Minor Dent, Repainted, Rusted', 'images/documents/vehicle/exterior_back/dicky_door_photo_179.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_179.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_back/dicky_floor_photo_179.jpeg', '30%', 'Original, Major Scratches, Repainted', 'images/documents/vehicle/exterior_back/spare_wheel_photo_179.jpeg', 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_back/dicky_door_photo_182.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_182.jpeg', 'Rusted, Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_182.jpeg', '30%', 'Original, Minor Scratches, Repainted', 'images/documents/vehicle/exterior_back/spare_wheel_photo_182.jpeg', 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, 'Original, Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_back/dicky_door_photo_187.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_187.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_187.jpeg', '50%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_back/spare_wheel_photo_187.jpeg', 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, 'Original', 'images/documents/vehicle/exterior_back/dicky_door_photo_190.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_190.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_190.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_back/spare_wheel_photo_190.jpeg', 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'Original', 'images/documents/vehicle/exterior_back/dicky_door_photo_7.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_7.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_7.jpeg', '30%', 'Original', 'images/documents/vehicle/exterior_back/spare_wheel_photo_7.jpeg', 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'Original', 'images/documents/vehicle/exterior_back/dicky_door_photo_8.jpeg', 'Original', 'images/documents/vehicle/exterior_back/rear_glass_photo_8.jpeg', 'Original', 'images/documents/vehicle/exterior_back/dicky_floor_photo_8.jpeg', '90%', 'Original', 'images/documents/vehicle/exterior_back/spare_wheel_photo_8.jpeg', 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `exterior_lhs_sides`
--

CREATE TABLE `exterior_lhs_sides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lhs_side_appron` text COLLATE utf8mb4_unicode_ci,
  `lhs_appron_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_lhs_tyre_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lhs_fender` text COLLATE utf8mb4_unicode_ci,
  `lhs_tyre_fender_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_piller` text COLLATE utf8mb4_unicode_ci,
  `a_piller_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_piller` text COLLATE utf8mb4_unicode_ci,
  `b_piller_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_lhs_window` text COLLATE utf8mb4_unicode_ci,
  `front_lhs_door` text COLLATE utf8mb4_unicode_ci,
  `front_lhs_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_lhs_door` text COLLATE utf8mb4_unicode_ci,
  `rear_lhs_door_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_lhs_window` text COLLATE utf8mb4_unicode_ci,
  `lhs_running_board` text COLLATE utf8mb4_unicode_ci,
  `lhs_window_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_piller` text COLLATE utf8mb4_unicode_ci,
  `c_piller_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_lhs_tyre_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lhs_quater_panel` text COLLATE utf8mb4_unicode_ci,
  `rear_lhs_tyre_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exterior_lhs_sides`
--

INSERT INTO `exterior_lhs_sides` (`id`, `lhs_side_appron`, `lhs_appron_photo`, `front_lhs_tyre_percentage`, `lhs_fender`, `lhs_tyre_fender_photo`, `a_piller`, `a_piller_photo`, `b_piller`, `b_piller_photo`, `front_lhs_window`, `front_lhs_door`, `front_lhs_photo`, `rear_lhs_door`, `rear_lhs_door_photo`, `rear_lhs_window`, `lhs_running_board`, `lhs_window_photo`, `c_piller`, `c_piller_photo`, `rear_lhs_tyre_percentage`, `lhs_quater_panel`, `rear_lhs_tyre_photo`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'sdfwer', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_2.png', 'sdfwer', 'sdfwer', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_2.png', 'sdfwer', 'images/documents/vehicle/exterior_lhs/a_piller_photo_2.png', 'sdfwer', 'images/documents/vehicle/exterior_lhs/b_piller_photo_2.png', 'sdfwer', 'sdfwer', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_2.png', 'sdfwer', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_2.png', 'sdfwer', 'sdfwer', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_2.png', 'sdfwer', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_2.png', 'sdfwer', 'sdfwer', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_2.png', 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_1.jpeg', '90%', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_1.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_1.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_1.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_1.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_1.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_1.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_1.jpeg', '90%', 'Major Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_1.jpeg', 1, '2023-05-24 11:07:57', '2023-05-24 11:07:57'),
(3, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_3.jpeg', '10%', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_3.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_3.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_3.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_3.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_3.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_3.jpeg', 'Rusted', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_3.jpeg', '10%', 'Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_3.jpeg', 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, 'Rusted', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_23.jpeg', '70%', 'Repainted', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_23.jpeg', 'Rusted', 'images/documents/vehicle/exterior_lhs/a_piller_photo_23.jpeg', 'Repair', 'images/documents/vehicle/exterior_lhs/b_piller_photo_23.jpeg', 'not working', 'Major Scratches', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_23.jpeg', 'Major Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_23.jpeg', 'Replace', 'Repainted', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_23.jpeg', 'Rusted', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_23.jpeg', '90%', 'Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_23.jpeg', 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, NULL, 'Major Scratches', NULL, 'Original', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'sdfwer', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_24.png', 'sdfwer', 'sdfwer', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_24.png', 'sdfwer', 'images/documents/vehicle/exterior_lhs/a_piller_photo_24.png', 'sdfwer', 'images/documents/vehicle/exterior_lhs/b_piller_photo_24.png', 'sdfwer', 'sdfwer', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_24.png', 'sdfwer', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_24.png', 'sdfwer', 'sdfwer', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_24.png', 'sdfwer', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_24.png', 'sdfwer', 'sdfwer', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_24.png', 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, 'Original, Repair, Replace', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_13.jpeg', '30%', 'Minor Scratches, Original, Minor Dent, Repainted, Major Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_13.jpeg', 'Original, Rusted, Repair', 'images/documents/vehicle/exterior_lhs/a_piller_photo_13.jpeg', 'Original, Rusted, Repair', 'images/documents/vehicle/exterior_lhs/b_piller_photo_13.jpeg', 'Original, Replace, working', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_13.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_13.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_13.jpeg', 'Original, Rusted, Repair', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_13.jpeg', '50%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_13.jpeg', 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, 'Rusted', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_35.jpeg', '70%', 'Repair', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_35.jpeg', 'dent', 'images/documents/vehicle/exterior_lhs/a_piller_photo_35.jpeg', 'dent', 'images/documents/vehicle/exterior_lhs/b_piller_photo_35.jpeg', 'not working', 'Rusted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_35.jpeg', 'Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_35.jpeg', 'not working', 'Repair', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_35.jpeg', 'dent', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_35.jpeg', '90%', 'Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_35.jpeg', 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, 'Replace', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_32.jpeg', '70%', 'Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_32.jpeg', 'dent', 'images/documents/vehicle/exterior_lhs/a_piller_photo_32.jpeg', 'dent', 'images/documents/vehicle/exterior_lhs/b_piller_photo_32.jpeg', 'not working', 'Original', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_32.jpeg', 'Major Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_32.jpeg', 'Original', NULL, 'images/documents/vehicle/exterior_lhs/lhs_window_photo_32.jpeg', NULL, 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_32.jpeg', '30%', NULL, 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_32.jpeg', 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, 'Minor Scratches, Original, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_36.jpeg', '50%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_36.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_lhs/a_piller_photo_36.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_lhs/b_piller_photo_36.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_36.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_36.jpeg', 'Original, Replace, working, not working', NULL, 'images/documents/vehicle/exterior_lhs/lhs_window_photo_36.jpeg', 'Original, Rusted, Damage, Replace, Major Dent, dent, Repair', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_36.jpeg', '50%', 'Major Dent, Repainted, Major Scratches, Minor dent, Minor Scratches, Original, Replace, Repair, Rusted, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_36.jpeg', 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, 'sdfwer', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_40.png', 'sdfwer', 'sdfwer', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_40.png', 'sdfwer', 'images/documents/vehicle/exterior_lhs/a_piller_photo_40.png', 'sdfwer', 'images/documents/vehicle/exterior_lhs/b_piller_photo_40.png', 'sdfwer', 'sdfwer', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_40.png', 'sdfwer', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_40.png', 'sdfwer', NULL, 'images/documents/vehicle/exterior_lhs/lhs_window_photo_40.png', 'sdfwer', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_40.png', 'sdfwer', 'Original, Minor Scratches, Minor dent, Repainted, Major Scratches, Replace, Major Dent, Repair, Rusted, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_40.png', 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_38.jpeg', 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_42.jpeg', 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'Original, Repair, Replace, Rusted, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_43.jpeg', '10%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Dent, Major Scratches, Replace, Repair', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_43.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_lhs/a_piller_photo_43.jpeg', 'dent, Repair, Rusted, Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_43.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_43.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_43.jpeg', 'not working, working, Replace, Original', NULL, 'images/documents/vehicle/exterior_lhs/lhs_window_photo_43.jpeg', NULL, 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_43.jpeg', '10%', NULL, 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_43.jpeg', 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_45.jpeg', '50%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_45.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_45.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_45.jpeg', 'Original, working', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_45.jpeg', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_45.jpeg', 'Original, working', 'Original, Minor Scratches, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_45.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_45.jpeg', '50%', 'Original, Minor Scratches, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_45.jpeg', 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, 'Original, Minor Dent, Repainted, Major Scratches, Replace, Repair', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_48.jpeg', '70%', 'Original, Minor Dent, Major Scratches, Repainted', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_48.jpeg', 'Original, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/a_piller_photo_48.jpeg', 'Original, Rusted, Repair', 'images/documents/vehicle/exterior_lhs/b_piller_photo_48.jpeg', 'working, Original', 'Original, Minor Dent, Major Dent', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_48.jpeg', 'Major Dent, Repainted, Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_48.jpeg', 'not working, Original, Replace', 'Minor Dent, Original, Repainted, Major Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_48.jpeg', NULL, 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_48.jpeg', '70%', 'Repainted, Minor Dent, Minor Scratches, Original, Repair', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_48.jpeg', 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_50.jpeg', '70%', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Repair', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_50.jpeg', 'dent, Repair, Rusted, Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_50.jpeg', 'dent, Repair, Rusted, Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_50.jpeg', 'not working, working, Replace, Original', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_50.jpeg', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_50.jpeg', 'not working, working, Replace, Original', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted, Scratches, Cracked', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_50.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_50.jpeg', '70%', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_50.jpeg', 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_51.jpeg', '90%', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Repair', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_51.jpeg', 'dent, Repair, Rusted, Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_51.jpeg', 'dent, Repair, Rusted, Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_51.jpeg', 'Original, Replace, working, not working', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_51.jpeg', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_51.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted, Scratches, Cracked', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_51.jpeg', 'dent, Repair, Rusted, Original, Damage, Replace, Major Dent', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_51.jpeg', '70%', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_51.jpeg', 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, 'Original, Repair, Replace', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_55.jpeg', '50%', 'Major Dent, Major Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_55.jpeg', 'dent, Repair', 'images/documents/vehicle/exterior_lhs/a_piller_photo_55.jpeg', 'dent, Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_55.jpeg', 'not working, Replace', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_55.jpeg', 'Minor Dent, Major Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_55.jpeg', 'not working, Replace', 'Minor Dent, Repainted, Scratches, Cracked, Major Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_55.jpeg', 'Major Dent, Replace, dent, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_55.jpeg', '50%', 'Major Scratches, Repainted, Major Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_55.jpeg', 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, 'Original, Damaged, Repainted, Replace, Minor Scratches, Repair', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_54.', '50%', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_54.', 'dent, Rusted', 'images/documents/vehicle/exterior_lhs/a_piller_photo_54.', 'dent, Rusted', 'images/documents/vehicle/exterior_lhs/b_piller_photo_54.', 'not working, Replace', 'Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_54.', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_54.', 'not working, Replace', 'Major Scratches, Major Dent, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_54.', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_54.', '30%', 'Replace, Major Scratches, Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_54.', 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_56.jpeg', '30%', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_56.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_56.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_56.jpeg', 'Original', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_56.jpeg', 'Original, Major Scratches, Repainted, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_56.jpeg', 'Original', 'Original, Major Scratches, Repainted, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_56.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_56.jpeg', '30%', 'Original, Repainted, Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_56.jpeg', 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'Original, Minor Scratches, Damaged, Minor Dent, Major Scratches, Repainted, Major Dent, Repair, Replace, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_58.jpeg', '30%', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Rusted, Repair', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_58.jpeg', 'dent, Repair, Rusted, Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_58.jpeg', 'dent, Repair, Rusted, Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_58.jpeg', 'not working, working, Replace, Original', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_58.jpeg', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Repair, Replace, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_58.jpeg', 'not working, working, Replace, Original', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted, Scratches, Cracked', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_58.jpeg', 'Original, Rusted, Repair, dent, Damage, Replace, Major Dent', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_58.jpeg', '70%', 'Original, Minor Scratches, Minor dent, Major Scratches, Major Dent, Replace, Repair, Rusted, Minor Dent, Repainted, Damaged', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_58.jpeg', 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'Original, MinorScratches, Replace, Damaged, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Repair', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_59.jpeg', '30%', 'Original, Minor Dent, Minor Scratches, Repainted', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_59.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/a_piller_photo_59.jpeg', 'Original, Rusted, Repair', 'images/documents/vehicle/exterior_lhs/b_piller_photo_59.jpeg', 'Original, Replace', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_59.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_59.jpeg', 'working, not working', 'Replace, Scratches, Cracked, Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_59.jpeg', 'Repair, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_59.jpeg', '30%', 'Repainted, Major Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_59.jpeg', 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_60.jpeg', '50%', 'Rusted, Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_60.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_60.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_60.jpeg', 'Original, working', 'Original, Minor Scratches, Repainted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_60.jpeg', 'Original, Minor Scratches, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_60.jpeg', 'Original', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_60.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_60.jpeg', '50%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_60.jpeg', 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, 'Original, Repair', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_62.jpeg', '50%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_62.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/a_piller_photo_62.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/b_piller_photo_62.jpeg', 'Original, Replace', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_62.jpeg', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_62.jpeg', 'Original, Replace', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_62.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_62.jpeg', '70%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_62.jpeg', 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_70.jpeg', '70%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_70.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_70.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_70.jpeg', 'Original', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_70.jpeg', 'Original, Minor Scratches, Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_70.jpeg', 'Original', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_70.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_70.jpeg', '70%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_70.jpeg', 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, 'Original, Repair, Replace, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_84.jpeg', '90%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Dent, Major Scratches, Rusted, Replace, Repair', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_84.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_lhs/a_piller_photo_84.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_lhs/b_piller_photo_84.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_84.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_84.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_84.jpeg', 'dent, Repair, Rusted, Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_84.jpeg', '50%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_84.jpeg', 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, 'Original, Repair', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_79.jpeg', '70%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_79.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/a_piller_photo_79.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/b_piller_photo_79.jpeg', 'Original, Replace', 'Minor Scratches, Original', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_79.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_79.jpeg', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_79.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_79.jpeg', '90%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_79.jpeg', 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, 'Repair', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_87.png', '50%', 'Major Dent, Repainted', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_87.jpeg', 'dent', 'images/documents/vehicle/exterior_lhs/a_piller_photo_87.png', 'dent', 'images/documents/vehicle/exterior_lhs/b_piller_photo_87.png', 'not working, working', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_87.png', 'Major Dent, Major Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_87.png', 'not working', 'Major Scratches, Major Dent', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_87.jpeg', 'dent, Repair', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_87.png', '70%', 'Major Dent, Major Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_87.png', 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, 'Original, Repair', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_88.png', '30%', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_88.jpeg', 'dent, Repair', 'images/documents/vehicle/exterior_lhs/a_piller_photo_88.jpeg', 'dent, Repair', 'images/documents/vehicle/exterior_lhs/b_piller_photo_88.png', 'not working, working', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_88.png', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_88.png', 'not working, Replace', 'Major Scratches, Minor Dent, Rusted, Repair, Replace, Major Dent, Repainted, Minor Scratches, Original', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_88.jpeg', 'dent', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_88.png', '50%', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_88.png', 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, 'Replace, Repair', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_89.jpeg', '30%', 'Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_89.jpeg', 'dent, Rusted', 'images/documents/vehicle/exterior_lhs/a_piller_photo_89.jpeg', 'dent, Rusted', 'images/documents/vehicle/exterior_lhs/b_piller_photo_89.jpeg', 'not working, Replace', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_89.jpeg', 'Repainted, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_89.jpeg', 'not working, Replace', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_89.jpeg', 'dent, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_89.jpeg', '30%', 'Major Dent, Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_89.jpeg', 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'Original, Minor Scratches, Damaged, Minor Dent, Repair, Replace, Rusted, Repainted, Major Scratches', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_90.jpeg', '70%', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_90.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_lhs/a_piller_photo_90.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_lhs/b_piller_photo_90.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_90.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_90.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Cracked, Scratches, Replace, Major Scratches, Major Dent', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_90.jpeg', 'Original, Rusted, Repair, dent, Damage, Replace', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_90.jpeg', '30%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_90.jpeg', 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'Original, Repair, Replace, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_102.jpeg', '50%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Rusted, Repair', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_102.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_lhs/a_piller_photo_102.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_lhs/b_piller_photo_102.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Replace, Major Dent, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_102.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_102.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_102.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_102.jpeg', '50%', 'Original, Minor Scratches, Minor Dent, Major Scratches, Major Dent, Repainted, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_102.jpeg', 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, 'Original, Minor Scratches, Repair', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_105.jpeg', '10%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_105.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/a_piller_photo_105.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/b_piller_photo_105.jpeg', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_105.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_105.jpeg', 'Original, Replace', 'Original, Cracked, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_105.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_105.jpeg', '10%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_105.jpeg', 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, 'Original, Minor Scratches, Repair', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_106.jpeg', '10%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_106.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/a_piller_photo_106.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/b_piller_photo_106.jpeg', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_106.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_106.jpeg', 'Original, Replace', 'Original, Cracked, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_106.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_106.jpeg', '10%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_106.jpeg', 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, 'Original, Repair', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_115.png', '30%', 'Minor Scratches, Original', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_115.png', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/a_piller_photo_115.png', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/b_piller_photo_115.png', 'Replace, Original', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_115.png', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_115.png', 'Replace, Original', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_115.png', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_115.png', '30%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_115.png', 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, 'Original, Repair, Replace, Rusted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, 'Original, Repair', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'Original, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_120.jpeg', '90%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Rusted, Repair', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_120.jpeg', 'Original, Rusted, dent, Repair', 'images/documents/vehicle/exterior_lhs/a_piller_photo_120.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_lhs/b_piller_photo_120.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_120.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_120.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_120.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_120.jpeg', '10%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_120.jpeg', 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, 'Repair, Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_122.jpeg', '10%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_122.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/a_piller_photo_122.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/b_piller_photo_122.jpeg', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_122.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_122.jpeg', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_122.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_122.jpeg', '10%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_122.jpeg', 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_127.jpeg', '50%', 'Original, Minor Scratches, Major Dent', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_127.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_127.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_127.jpeg', 'Original, working', 'Original, Minor Scratches, Repainted, Rusted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_127.jpeg', 'Original, Minor Scratches, Major Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_127.jpeg', 'Original, working', 'Original, Minor Dent, Major Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_127.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_127.jpeg', '50%', 'Original, Major Scratches, Major Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_127.jpeg', 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_77.jpeg', '50%', 'Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_77.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_77.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_77.jpeg', 'working, Original', 'Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_77.jpeg', 'Minor Dent, Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_77.jpeg', 'working, Original', 'Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_77.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_77.jpeg', '50%', 'Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_77.jpeg', 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_151.jpeg', '30%', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_151.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_151.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_151.jpeg', 'Original, working', 'Original, Minor Scratches, Minor Dent, Rusted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_151.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_151.jpeg', 'Original, working', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_151.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_151.jpeg', '30%', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_151.jpeg', 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_118.jpeg', '30%', 'Repainted', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_118.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_118.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_118.jpeg', 'Original', 'Original, Repainted, Minor Dent', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_118.jpeg', 'Original, Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_118.jpeg', 'Original', 'Minor Dent, Repainted, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_118.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_118.jpeg', '30%', 'Repainted, Original, Minor Dent, Repair', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_118.jpeg', 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_150.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_150.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_150.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_150.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_150.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_150.jpeg', 'Original', 'Minor Dent', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_150.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_150.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_150.jpeg', 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_73.jpeg', '70%', 'Original, Major Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_73.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_73.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_73.jpeg', 'Original, working', 'Minor Scratches, Rusted, Original', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_73.jpeg', 'Minor Scratches, Rusted, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_73.jpeg', 'working', 'Original, Minor Dent', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_73.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_73.jpeg', '10%', 'Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_73.jpeg', 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_155.jpeg', '90%', 'Original, Minor Scratches, Repainted', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_155.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_155.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_155.jpeg', 'Original, working', 'Minor Scratches, Repainted, Replace', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_155.jpeg', 'Minor Dent, Major Scratches, Repainted, Replace', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_155.jpeg', 'Original, working', 'Original, Repainted, Minor Dent, Major Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_155.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_155.jpeg', '90%', 'Original, Repainted, Repair, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_155.jpeg', 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35'),
(62, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_162.jpeg', '90%', 'Original, Repainted', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_162.jpeg', 'Original, Repair', 'images/documents/vehicle/exterior_lhs/a_piller_photo_162.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_162.jpeg', 'Original', 'Original, Repainted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_162.jpeg', 'Original, Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_162.jpeg', 'Original', 'Original, Repainted', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_162.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_162.jpeg', '90%', 'Original, Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_162.jpeg', 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_161.jpeg', '10%', 'Original, Repainted, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_161.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_161.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_161.jpeg', 'Original, working', 'Original, Repainted, Minor Scratches', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_161.jpeg', 'Replace, Repainted, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_161.jpeg', 'Original, working', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_161.jpeg', 'Repair', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_161.jpeg', '30%', 'Repainted, Repair, Minor Scratches, Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_161.jpeg', 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11');
INSERT INTO `exterior_lhs_sides` (`id`, `lhs_side_appron`, `lhs_appron_photo`, `front_lhs_tyre_percentage`, `lhs_fender`, `lhs_tyre_fender_photo`, `a_piller`, `a_piller_photo`, `b_piller`, `b_piller_photo`, `front_lhs_window`, `front_lhs_door`, `front_lhs_photo`, `rear_lhs_door`, `rear_lhs_door_photo`, `rear_lhs_window`, `lhs_running_board`, `lhs_window_photo`, `c_piller`, `c_piller_photo`, `rear_lhs_tyre_percentage`, `lhs_quater_panel`, `rear_lhs_tyre_photo`, `order_id`, `created_at`, `updated_at`) VALUES
(64, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_164.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_164.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_164.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_164.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_164.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_164.jpeg', 'Original', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_164.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_164.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_164.jpeg', 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52'),
(65, 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_132.jpeg', '50%', 'Original, Repainted, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_132.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/a_piller_photo_132.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_132.jpeg', 'Original, working', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_132.jpeg', 'Original, Major Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_132.jpeg', 'Original, working', 'Repainted, Minor Dent, Original', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_132.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_132.jpeg', '30%', 'Original, Minor Scratches, Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_132.jpeg', 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'Rusted, Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_110.jpeg', '70%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_110.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_110.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_110.jpeg', 'Original, working', 'Original, Minor Dent, Major Scratches, Rusted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_110.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_110.jpeg', 'Original, working', 'Minor Scratches, Original, Minor Dent', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_110.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_110.jpeg', '10%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_110.jpeg', 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_172.jpeg', '90%', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_172.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_172.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_172.jpeg', 'Original, working', 'Original', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_172.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_172.jpeg', 'Original, working', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_172.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_172.jpeg', '90%', 'Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_172.jpeg', 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_174.jpeg', '50%', 'Original, Minor Scratches, Repainted', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_174.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_174.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_174.jpeg', 'Original, working', 'Original, Minor Dent, Minor Scratches, Repainted', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_174.jpeg', 'Original, Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_174.jpeg', 'Original, working', 'Minor Scratches, Original', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_174.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_174.jpeg', '50%', 'Minor Dent, Original, Repainted', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_174.jpeg', 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_176.jpeg', '50%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_176.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_176.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_176.jpeg', 'Original, not working', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_176.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_176.jpeg', 'Original', 'Original, Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_176.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_176.jpeg', '30%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_176.jpeg', 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_179.jpeg', '70%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_179.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_179.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_179.jpeg', 'Original, working', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_179.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_179.jpeg', 'Original, working', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_179.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_179.jpeg', '90%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_179.jpeg', 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'Original, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_182.jpeg', '50%', 'Original, Minor Scratches, Minor Dent, Repainted, Repair', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_182.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_182.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_182.jpeg', 'Original, working', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_182.jpeg', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_182.jpeg', 'Original, working', 'Original, Minor Scratches, Minor Dent, Rusted', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_182.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_182.jpeg', '70%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_182.jpeg', 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_187.jpeg', '30%', 'Original, Minor Dent', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_187.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_187.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_187.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_187.jpeg', 'Original, Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_187.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_187.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_187.jpeg', '30%', 'Original, Minor Dent', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_187.jpeg', 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_190.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_190.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_190.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_190.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_190.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_190.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_190.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_190.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_190.jpeg', 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_7.jpeg', '10%', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_7.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_7.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_7.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_7.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_7.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_7.jpeg', 'Rusted', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_7.jpeg', '10%', 'Minor Scratches', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_7.jpeg', 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'Original', 'images/documents/vehicle/exterior_lhs/lhs_appron_photo_8.jpeg', '90%', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_tyre_fender_photo_8.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/a_piller_photo_8.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/b_piller_photo_8.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/front_lhs_photo_8.jpeg', 'Minor Scratches, Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_door_photo_8.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_window_photo_8.jpeg', 'Original', 'images/documents/vehicle/exterior_lhs/lhs_c_piller_photo_8.jpeg', '50%', 'Original', 'images/documents/vehicle/exterior_lhs/rear_lhs_tyre_photo_8.jpeg', 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `exterior_rhs_sides`
--

CREATE TABLE `exterior_rhs_sides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rhs_side_appron` text COLLATE utf8mb4_unicode_ci,
  `rhs_appron_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_rhs_tyre_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rhs_fender` text COLLATE utf8mb4_unicode_ci,
  `rhs_tyre_fender_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_piller` text COLLATE utf8mb4_unicode_ci,
  `a_piller_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_piller` text COLLATE utf8mb4_unicode_ci,
  `b_piller_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_rhs_window` text COLLATE utf8mb4_unicode_ci,
  `front_rhs_door` text COLLATE utf8mb4_unicode_ci,
  `front_rhs_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_rhs_door` text COLLATE utf8mb4_unicode_ci,
  `rear_rhs_door_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_rhs_window` text COLLATE utf8mb4_unicode_ci,
  `rhs_running_board` text COLLATE utf8mb4_unicode_ci,
  `rhs_window_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_piller` text COLLATE utf8mb4_unicode_ci,
  `c_piller_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_rhs_tyre_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rhs_quater_panel` text COLLATE utf8mb4_unicode_ci,
  `rear_rhs_tyre_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exterior_rhs_sides`
--

INSERT INTO `exterior_rhs_sides` (`id`, `rhs_side_appron`, `rhs_appron_photo`, `front_rhs_tyre_percentage`, `rhs_fender`, `rhs_tyre_fender_photo`, `a_piller`, `a_piller_photo`, `b_piller`, `b_piller_photo`, `front_rhs_window`, `front_rhs_door`, `front_rhs_photo`, `rear_rhs_door`, `rear_rhs_door_photo`, `rear_rhs_window`, `rhs_running_board`, `rhs_window_photo`, `c_piller`, `c_piller_photo`, `rear_rhs_tyre_percentage`, `rhs_quater_panel`, `rear_rhs_tyre_photo`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'asdas', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_2.png', '23', 'Asd', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_2.png', 'Sa', 'images/documents/vehicle/exterior_rhs/a_piller_photo_2.png', 'ASd', 'images/documents/vehicle/exterior_rhs/a_piller_photo_2.png', 'ds', 'ASd', 'images/documents/vehicle/exterior_rhs/a_piller_photo_2.png', 'ASd', 'images/documents/vehicle/exterior_rhs/a_piller_photo_2.png', 'ASd', 'sdfwer', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_2.png', 'asd', 'images/documents/vehicle/exterior_rhs/c_piller_photo_2.png', '34', 'sdfwer', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_2.png', 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_1.jpeg', '90%', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_1.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_1.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_1.jpeg', 'Original', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_1.jpeg', 'Original, Minor Dent, Replace', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_1.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_1.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_1.jpeg', '90%', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_1.jpeg', 1, '2023-05-24 11:07:57', '2023-05-24 11:07:57'),
(3, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_3.jpeg', '30%', 'Major Scratches', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_3.jpeg', 'dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_3.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_3.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_3.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_3.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_3.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_3.jpeg', '10%', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_3.jpeg', 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_23.jpeg', '30%', 'Major Scratches', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_23.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_23.jpeg', 'Repair', 'images/documents/vehicle/exterior_rhs/a_piller_photo_23.jpeg', 'working', 'Replace', 'images/documents/vehicle/exterior_rhs/a_piller_photo_23.jpeg', 'Minor Dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_23.jpeg', 'Replace', 'Repainted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_23.jpeg', 'dent', 'images/documents/vehicle/exterior_rhs/c_piller_photo_23.jpeg', '50%', 'Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_23.jpeg', 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, NULL, 'Original', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'asdas', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_24.png', '23', 'Asd', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_24.png', 'Sa', 'images/documents/vehicle/exterior_rhs/a_piller_photo_24.png', 'ASd', 'images/documents/vehicle/exterior_rhs/a_piller_photo_24.png', 'ds', 'ASd', 'images/documents/vehicle/exterior_rhs/a_piller_photo_24.png', 'ASd', 'images/documents/vehicle/exterior_rhs/a_piller_photo_24.png', 'ASd', 'sdfwer', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_24.png', 'asd', 'images/documents/vehicle/exterior_rhs/c_piller_photo_24.png', '34', 'sdfwer', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_24.png', 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, 'Original, Repair', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_13.jpeg', '10%', 'Minor Dent, Minor Scratches, Repainted, Original', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_13.jpeg', 'Repair, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_13.jpeg', 'dent, Repair', 'images/documents/vehicle/exterior_rhs/a_piller_photo_13.jpeg', 'not working, working, Replace', 'Minor Dent, Repainted, Minor Scratches, Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_13.jpeg', 'Minor Scratches, Minor Dent, Repainted, Major Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_13.jpeg', 'working, Replace, Original', 'Minor Dent, Repainted, Major Scratches, Major Dent', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_13.jpeg', 'Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/c_piller_photo_13.jpeg', '30%', 'Minor Dent, Repainted, Major Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_13.jpeg', 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, 'Rusted', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_35.jpeg', '30%', 'Rusted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_35.jpeg', 'dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_35.jpeg', 'dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_35.jpeg', 'not working', 'Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_35.jpeg', 'Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_35.jpeg', 'not working', 'Rusted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_35.jpeg', 'dent', 'images/documents/vehicle/exterior_rhs/c_piller_photo_35.jpeg', '50%', 'Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_35.jpeg', 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, 'Repair', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_32.jpeg', '10%', 'Replace', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_32.jpeg', 'dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_32.jpeg', 'Original', NULL, 'Replace', 'Major Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_32.jpeg', 'Repainted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_32.jpeg', 'not working', 'Major Dent', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_32.jpeg', NULL, 'images/documents/vehicle/exterior_rhs/c_piller_photo_32.jpeg', '30%', NULL, 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_32.jpeg', 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, 'MinorScratches, Original, MinorDent, Repainted, MajorScratches, MajorDent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_36.jpeg', '10%', 'Original, MinorScratches, MinorDent, Repainted, MajorScratches, MajorDent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_36.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_36.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_36.jpeg', 'Original, Replace, working, notworking', 'Original, MinorScratches, MinorDent, Repainted, MajorScratches, MajorDent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_36.jpeg', 'Original, MinorScratches, MinorDent, Repainted, MajorScratches, MajorDent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_36.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_36.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/c_piller_photo_36.jpeg', '30%', 'Major Dent, Repainted, Major Scratches, Minor dent, Minor Scratches, Original, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_36.jpeg', 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, 'asdas', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_40.png', '23', 'Asd', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_40.png', 'Sa', 'images/documents/vehicle/exterior_rhs/a_piller_photo_40.png', 'ASd', 'images/documents/vehicle/exterior_rhs/a_piller_photo_40.png', 'ds', 'ASd', 'images/documents/vehicle/exterior_rhs/a_piller_photo_40.png', 'ASd', 'images/documents/vehicle/exterior_rhs/a_piller_photo_40.png', 'ASd', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_40.png', 'asd', 'images/documents/vehicle/exterior_rhs/c_piller_photo_40.png', '34', NULL, 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_40.png', 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_38.jpeg', 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_42.jpeg', 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'Original, Repair, Replace, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_43.jpeg', '10%', 'Original, MinorScratches, MinorDent, Repainted, MajorScratches, MajorDent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_43.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_43.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_43.jpeg', 'Original, Replace, working, notworking', 'Original, MinorScratches, MinorDent, Repainted, MajorScratches, MajorDent, Replace, Repair', 'images/documents/vehicle/exterior_rhs/a_piller_photo_43.jpeg', 'Original, MinorScratches, MinorDent, Repainted, MajorScratches, MajorDent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_43.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_43.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/c_piller_photo_43.jpeg', '10%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_43.jpeg', 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_45.jpeg', '50%', 'Original, Minor Scratches, Repainted, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_45.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_45.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_45.jpeg', 'Original, working', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_45.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_45.jpeg', 'Original, working', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_45.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_45.jpeg', '50%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_45.jpeg', 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, 'Original, Minor Dent, Repainted, Major Scratches, Replace, Repair', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_48.jpeg', '10%', 'Original, Minor Dent, Major Scratches, Major Dent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_48.jpeg', 'Original, Repair, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_48.jpeg', 'Repair, Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_48.jpeg', 'Original, working', 'Original, Minor Scratches, Repainted, Major Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_48.jpeg', 'Original, Minor Dent, Repainted, Major Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_48.jpeg', 'not working, Replace', 'Minor Dent, Original, Repainted, Major Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_48.jpeg', 'Repair, Rusted, dent', 'images/documents/vehicle/exterior_rhs/c_piller_photo_48.jpeg', '70%', 'Repainted, Minor Dent, Minor Scratches, Original, Repair', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_48.jpeg', 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_50.jpeg', '50%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_50.jpeg', 'Repair, dent, Rusted, Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_50.jpeg', 'dent, Repair, Rusted, Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_50.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_50.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_50.jpeg', 'Original, Replace, not working, working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_50.jpeg', 'dent, Repair, Rusted, Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_50.jpeg', '50%', 'Major Dent, Major Scratches, Repainted, Minor dent, Minor Scratches, Original, Replace, Repair, Rusted, Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_50.jpeg', 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_51.jpeg', '30%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_51.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_51.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_51.jpeg', 'not working, working, Replace, Original', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_51.jpeg', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_51.jpeg', 'working, Replace, Original, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_51.jpeg', 'dent, Repair, Rusted, Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_51.jpeg', '50%', 'Original, Minor Scratches, Minor dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted, Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_51.jpeg', 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, 'Original, Minor Scratches, Repair', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_55.jpeg', '10%', 'Major Dent, Repainted, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_55.jpeg', 'dent, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_55.jpeg', 'dent, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_55.jpeg', 'not working, Replace, Original', 'Major Scratches, Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_55.jpeg', 'Major Scratches, Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_55.jpeg', 'not working, Original', 'Minor Dent, Repainted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_55.jpeg', 'dent, Rusted', 'images/documents/vehicle/exterior_rhs/c_piller_photo_55.jpeg', '10%', 'Major Scratches, Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_55.jpeg', 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, 'Original, Damaged, Repainted, Replace', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_54.', '50%', 'Major Dent, Repainted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_54.', 'dent, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_54.', 'dent, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_54.', 'not working, Replace', 'Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_54.', 'Major Dent, Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_54.', 'not working, Replace, Original', 'Major Dent, Minor Dent, Original', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_54.', 'Repair, Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_54.', '10%', 'Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_54.', 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_56.jpeg', '50%', 'Original, Repainted, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_56.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_56.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_56.jpeg', 'Original', 'Original, Repainted, Minor Dent, Major Scratches', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_56.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_56.jpeg', 'Original', 'Original, Major Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_56.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/c_piller_photo_56.jpeg', '30%', 'Original, Major Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_56.jpeg', 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'Original, Minor Scratches, Damaged, Minor Dent, Major Scratches, Repainted, Major Dent, Repair, Replace, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_58.jpeg', '30%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_58.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_58.jpeg', 'Repair, dent, Rusted, Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_58.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_58.jpeg', 'Minor Scratches, Original, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_58.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_58.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/c_piller_photo_58.jpeg', '50%', 'Original, Minor Scratches, Minor dent, Major Scratches, Major Dent, Replace, Repair, Rusted, Minor Dent, Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_58.jpeg', 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'Original, Repair', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_59.jpeg', '30%', 'Original, MinorScratches, MinorScratches, MinorDent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_59.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_59.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_59.jpeg', 'Original, Replace, working, notworking', 'MinorScratches, Original, MajorDent, MajorScratches, Repainted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_59.jpeg', 'Original, MinorScratches, MinorScratches, MinorDent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_59.jpeg', 'Original, Replace, working', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_59.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/c_piller_photo_59.jpeg', '30%', 'Original, Minor Scratches, Minor dent, Repainted, Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_59.jpeg', 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_60.jpeg', '50%', 'Original, Minor Dent, Repainted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_60.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_60.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_60.jpeg', 'Original', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_60.jpeg', 'Original, Minor Scratches, Repainted, Major Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_60.jpeg', 'Original', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_60.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/c_piller_photo_60.jpeg', '50%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_60.jpeg', 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, 'Original, Repair', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_62.jpeg', '10%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_62.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_62.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_62.jpeg', 'Original, Replace', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_62.jpeg', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_62.jpeg', 'Original, Replace', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_62.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/c_piller_photo_62.jpeg', '30%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_62.jpeg', 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_70.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_70.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_70.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_70.jpeg', 'Original', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_70.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_70.jpeg', 'Original', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_70.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_70.jpeg', '50%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_70.jpeg', 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, 'Repair, Original, Replace, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_84.jpeg', '50%', 'MajorScratches, MinorDent, MinorScratches, MajorDent, Original, Repainted, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_84.jpeg', 'Repair, Rusted, Original, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_84.jpeg', 'Original, dent, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_84.jpeg', 'Original, notworking, working, Replace', 'MinorScratches, Repainted, Rusted, Original, MinorScratches, MinorDent, MajorScratches, MajorDent, Replace, Repair', 'images/documents/vehicle/exterior_rhs/a_piller_photo_84.jpeg', 'Original, MinorScratches, MinorScratches, MinorDent, Repainted, MajorScratches, MajorDent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_84.jpeg', 'not working, working, Replace, Original', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_84.jpeg', 'dent, Repair, Rusted, Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_84.jpeg', '10%', 'Major Dent, Major Scratches, Repainted, Minor Dent, Minor Scratches, Original, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_84.jpeg', 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, 'Original, Repair', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_79.jpeg', '30%', 'Original, MinorScratches', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_79.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_79.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_79.jpeg', 'Original, Replace', 'Original, MinorScratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_79.jpeg', 'Original, MinorScratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_79.jpeg', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_79.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/c_piller_photo_79.jpeg', '50%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_79.jpeg', 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, 'Original, Repair', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_87.jpeg', '10%', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_87.jpeg', 'dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_87.jpeg', 'dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_87.jpeg', 'not working, Original', 'Major Scratches, Minor Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_87.jpeg', 'Major Dent, Minor Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_87.jpeg', 'not working, Replace', 'Major Dent, Major Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_87.png', 'dent', 'images/documents/vehicle/exterior_rhs/c_piller_photo_87.jpeg', '70%', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_87.jpeg', 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, 'Original, Replace', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_88.jpeg', '30%', 'Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_88.png', 'dent, Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_88.jpeg', 'dent, Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_88.jpeg', 'not working, Original', 'Major Scratches, Minor Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_88.jpeg', 'Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_88.jpeg', 'not working, Original', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_88.jpeg', 'dent, Rusted', 'images/documents/vehicle/exterior_rhs/c_piller_photo_88.jpeg', '50%', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_88.jpeg', 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_89.jpeg', '10%', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_89.jpeg', 'Rusted, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_89.jpeg', 'dent, Repair', 'images/documents/vehicle/exterior_rhs/b_piller_photo_89.jpeg', 'not working, Replace', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_89.jpeg', 'Major Scratches, Minor Scratches', 'images/documents/vehicle/exterior_rhs/a_piller_photo_89.jpeg', 'not working, Replace', 'Major Scratches, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_89.jpeg', 'dent, Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_89.jpeg', '30%', 'Major Dent, Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_89.jpeg', 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'Original, Minor Scratches, Damaged, Minor Dent, Repair, Replace, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_90.jpeg', '30%', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_90.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_90.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/b_piller_photo_90.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_90.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_90.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_90.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/c_piller_photo_90.jpeg', '50%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_90.jpeg', 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'Original, Repair, Replace, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_102.jpeg', '50%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_102.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_102.jpeg', 'Original, Rusted, dent, Repair', 'images/documents/vehicle/exterior_rhs/b_piller_photo_102.jpeg', 'Original, Replace, not working, working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Rusted, Repair', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_102.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_102.jpeg', 'Original, Replace, not working, working', 'Original, Minor Scratches, Major Dent, Repainted, Minor Dent, Major Scratches, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_102.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/c_piller_photo_102.jpeg', '50%', 'Original, Minor Scratches, Minor Dent, Major Dent, Repainted, Major Scratches, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_102.jpeg', 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, 'Original, Minor Scratches, Repair', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_105.jpeg', '10%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_105.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_105.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/b_piller_photo_105.jpeg', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_105.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_105.jpeg', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_105.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/c_piller_photo_105.jpeg', '10%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_105.jpeg', 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, 'Original, Minor Scratches, Repair', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_106.jpeg', '10%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_106.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_106.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/b_piller_photo_106.jpeg', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_106.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_106.jpeg', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_106.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/c_piller_photo_106.jpeg', '10%', 'Minor Scratches, Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_106.jpeg', 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, 'Original, Repair', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_115.png', '30%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_115.png', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_115.png', 'Rusted, Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_115.png', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_115.png', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_115.png', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_115.png', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/c_piller_photo_115.png', '30%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_115.png', 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'Original, Repair, Rusted, Replace', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_120.jpeg', '90%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_120.jpeg', 'Original, Rusted, Repair, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_120.jpeg', 'Original, Repair, Rusted, dent', 'images/documents/vehicle/exterior_rhs/b_piller_photo_120.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_120.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_120.jpeg', 'Original, Replace, working, not working', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_120.jpeg', 'Original, dent, Rusted, Repair', 'images/documents/vehicle/exterior_rhs/c_piller_photo_120.jpeg', '10%', 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_120.jpeg', 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, 'Original, Repair', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_122.jpeg', '10%', 'Minor Scratches, Original', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_122.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_122.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/b_piller_photo_122.jpeg', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_122.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_122.jpeg', 'Original, Replace', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_122.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/c_piller_photo_122.jpeg', '10%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_122.jpeg', 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_127.jpeg', '50%', 'Original, Minor Scratches, Major Dent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_127.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_127.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_127.jpeg', 'Original, working', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_127.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_127.jpeg', 'Original, working', 'Original, Minor Scratches, Major Dent', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_127.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_127.jpeg', '70%', 'Original, Minor Scratches, Rusted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_127.jpeg', 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_77.jpeg', '50%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_77.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_77.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_77.jpeg', 'Original', 'Minor Scratches', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_77.jpeg', 'Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_77.jpeg', 'Original, working', 'Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_77.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_77.jpeg', '50%', 'Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_77.jpeg', 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_151.jpeg', '30%', 'Original, Minor Scratches, Repainted, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_151.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_151.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_151.jpeg', 'Original, working', 'Original, Minor Scratches, Minor Dent, Repainted, Rusted', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_151.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted, Rusted', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_151.jpeg', 'Original, working', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_151.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_151.jpeg', '30%', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_151.jpeg', 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_118.jpeg', '30%', 'Repainted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_118.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_118.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_118.jpeg', 'Original', 'Repainted', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_118.jpeg', 'Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_118.jpeg', 'Original', 'Repainted, Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_118.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_118.jpeg', '30%', 'Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_118.jpeg', 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_150.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_150.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_150.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_150.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_150.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_150.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_150.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_150.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_150.jpeg', 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_73.jpeg', '90%', 'Minor Dent, Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_73.jpeg', 'Original, Rusted', 'images/documents/vehicle/exterior_rhs/a_piller_photo_73.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_73.jpeg', 'not working, Original', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_73.jpeg', 'Original, Major Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_73.jpeg', 'Original', 'Original, Major Dent, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_73.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_73.jpeg', '30%', 'Original, Major Scratches, Major Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_73.jpeg', 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_155.jpeg', '90%', 'Original, Minor Scratches, Repainted, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_155.jpeg', 'Original, dent', 'images/documents/vehicle/exterior_rhs/a_piller_photo_155.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_155.jpeg', 'Original, working', 'Original, Minor Scratches, Repainted', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_155.jpeg', 'Original, Minor Scratches, Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_155.jpeg', 'Original, working', 'Original, Minor Scratches, Repainted, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_155.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_155.jpeg', '90%', 'Original, Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_155.jpeg', 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35'),
(62, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_162.jpeg', '90%', 'Original, Repainted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_162.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_162.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_162.jpeg', 'Original', 'Original, Repainted', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_162.jpeg', 'Original, Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_162.jpeg', 'Original', 'Original, Repainted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_162.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_162.jpeg', '90%', 'Original, Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_162.jpeg', 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_161.jpeg', '10%', 'Original, Repainted, Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_161.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_161.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_161.jpeg', 'Original, working', 'Original, Minor Scratches, Repainted', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_161.jpeg', 'Repainted, Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_161.jpeg', 'Original, working', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_161.jpeg', 'Repair', 'images/documents/vehicle/exterior_rhs/c_piller_photo_161.jpeg', '30%', 'Repainted, Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_161.jpeg', 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11'),
(64, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_164.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_164.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_164.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_164.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_164.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_164.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_164.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_164.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_164.jpeg', 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52');
INSERT INTO `exterior_rhs_sides` (`id`, `rhs_side_appron`, `rhs_appron_photo`, `front_rhs_tyre_percentage`, `rhs_fender`, `rhs_tyre_fender_photo`, `a_piller`, `a_piller_photo`, `b_piller`, `b_piller_photo`, `front_rhs_window`, `front_rhs_door`, `front_rhs_photo`, `rear_rhs_door`, `rear_rhs_door_photo`, `rear_rhs_window`, `rhs_running_board`, `rhs_window_photo`, `c_piller`, `c_piller_photo`, `rear_rhs_tyre_percentage`, `rhs_quater_panel`, `rear_rhs_tyre_photo`, `order_id`, `created_at`, `updated_at`) VALUES
(65, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_132.jpeg', '50%', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_132.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_132.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_132.jpeg', 'Original, working', 'Original', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_132.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_132.jpeg', 'Original, working', 'Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_132.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_132.jpeg', '50%', 'Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_132.jpeg', 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'Rusted, Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_110.jpeg', '70%', 'Original, Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_110.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_110.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_110.jpeg', 'Original, working', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_110.jpeg', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_110.jpeg', 'Original, working', 'Original, Minor Scratches, Major Dent', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_110.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_110.jpeg', '30%', 'Major Scratches, Minor Dent, Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_110.jpeg', 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_172.jpeg', '90%', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_172.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_172.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_172.jpeg', 'Original, working', 'Original', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_172.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_172.jpeg', 'Original, working', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_172.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_172.jpeg', '90%', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_172.jpeg', 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_174.jpeg', '50%', 'Original, Repainted, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_174.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_174.jpeg', 'Rusted, Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_174.jpeg', 'Original, working', 'Minor Scratches, Minor Dent, Original', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_174.jpeg', 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_174.jpeg', 'Original, working', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_174.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_174.jpeg', '50%', 'Original, Minor Dent, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_174.jpeg', 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_176.jpeg', '30%', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_176.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_176.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_176.jpeg', 'Original', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_176.jpeg', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_176.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_176.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_176.jpeg', '30%', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_176.jpeg', 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_179.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_179.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_179.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_179.jpeg', 'Original, working', 'Original, Minor Scratches, Repainted, Minor Dent', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_179.jpeg', 'Original, Minor Dent, Major Scratches', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_179.jpeg', 'Original, working', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_179.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_179.jpeg', '90%', 'Original, Major Scratches, Major Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_179.jpeg', 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_182.jpeg', '70%', 'Original, Repainted, Minor Scratches', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_182.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_182.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_182.jpeg', 'Original', 'Original, Minor Scratches', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_182.jpeg', 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_182.jpeg', 'Original', 'Original, Minor Scratches, Minor Dent, Rusted', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_182.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_182.jpeg', '70%', 'Original, Minor Scratches, Minor Dent, Repainted, Repair', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_182.jpeg', 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_187.jpeg', '30%', 'Original, Repainted', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_187.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_187.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_187.jpeg', 'Original', 'Original, Repainted', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_187.jpeg', 'Original, Repainted', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_187.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_187.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_187.jpeg', '30%', 'Repainted, Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_187.jpeg', 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_190.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_190.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_190.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_190.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_190.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_190.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_190.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_190.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_190.jpeg', 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'Original', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_7.jpeg', '90%', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_7.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_7.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_7.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_7.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_7.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_7.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_7.jpeg', '70%', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_7.jpeg', 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'Repair', 'images/documents/vehicle/exterior_rhs/rhs_appron_photo_8.jpeg', '90%', 'Minor Dent', 'images/documents/vehicle/exterior_rhs/rhs_tyre_fender_photo_8.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/a_piller_photo_8.jpeg', 'Rusted, Original', 'images/documents/vehicle/exterior_rhs/b_piller_photo_8.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/front_rhs_photo_8.jpeg', 'Original, Replace', 'images/documents/vehicle/exterior_rhs/rear_rhs_door_photo_8.jpeg', 'Original', 'Original', 'images/documents/vehicle/exterior_rhs/rhs_window_photo_8.jpeg', 'Original', 'images/documents/vehicle/exterior_rhs/c_piller_photo_8.jpeg', '90%', 'Original', 'images/documents/vehicle/exterior_rhs/rear_rhs_tyre_photo_8.jpeg', 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `interiors`
--

CREATE TABLE `interiors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `airbag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `music_system` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speaker` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `steering_wheel_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `steering_wheel_audio_control_button` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_ac_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_flow` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_blower_moto_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_direction_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_heater` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `glow_box` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gear_lever_knob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `power_window` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rhs_side_seat_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lhs_side_seat_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_seat_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `all_seat_cover_available` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `all_mats_available` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interiors`
--

INSERT INTO `interiors` (`id`, `airbag`, `abs`, `music_system`, `speaker`, `steering_wheel_condition`, `steering_wheel_audio_control_button`, `auto_ac_condition`, `ac_flow`, `ac_blower_moto_condition`, `ac_direction_mode`, `ac_heater`, `glow_box`, `gear_lever_knob`, `power_window`, `rhs_side_seat_condition`, `lhs_side_seat_condition`, `rear_seat_condition`, `all_seat_cover_available`, `all_mats_available`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 1, '2023-05-24 11:07:57', '2023-05-24 11:07:57'),
(3, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'Yes', 'Good', 'Good', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, 'Yes', 'Yes', 'Yes, No, Not Working', 'Working', 'Good', 'Working', 'Yes, No, NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, 'Yes', 'Yes', 'Not Working', 'Working', 'Good', 'Working', 'NA', 'Good', 'Good', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, 'Yes', 'Yes', 'Not Working', 'Working', 'Good', 'Working', 'NA', 'Good', 'Good', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, 'Yes', 'Yes', 'Not Working', 'Working', 'Good', 'Working', 'NA, No', 'Good', 'Good', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 'asdfdsf', 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, 'Yes', NULL, NULL, 'Working', NULL, 'Working', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'Yes', 'Yes', 'Yes, No, Not Working', 'Working', 'Good', 'Working', 'Yes, No, NA', 'Good', 'Good', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Good', NULL, 'Good', 'Yes', NULL, 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'No', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, 'No', 'Yes', 'Not Working', 'Not Working', 'Good', 'Not Working', 'No', 'Working', 'Working', 'Not Working', 'Not Working', 'Working', 'Bad', 'Yes', 'Good', 'Bad', 'Bad', 'Yes', 'No', 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'Yes', 'Yes', 'Yes, No, Not Working', 'Working', 'Good', 'Working', 'NA, No, Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Wornout', 'Wornout', 'Yes', 'Yes', 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'Yes', 'Yes', 'Yes, No, Not Working', 'Working', 'Good', 'Working', 'NA, No, Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Wornout', 'Mechanical Issue', 'Good', 'Yes', 'Yes', 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, 'Yes', 'Yes', 'Not Working, No', 'Working', 'Good', 'Not Working', 'NA, Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Bad', 'Good', 'Yes', 'Yes', 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, 'Yes', 'Yes', 'Not Working', 'Working', 'Good', 'Not Working', 'NA', 'Working', 'Not Working', 'Working', 'Not Working', 'Working', 'Good', 'Yes', 'Good', 'Bad', 'Good', 'Yes', 'Yes', 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'No', 'Yes', 'Yes', 'Working', 'Bad', 'Working', 'NA', 'Working', 'Noisy', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Wornout', 'Wornout', 'Good', 'Yes', 'Yes', 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'Yes', 'Yes', 'Yes, No, Not Working', 'Working', 'Good', 'Working', 'NA, No, Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Wornout', 'Good', 'Yes', 'Yes', 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'Yes', 'Yes', 'Yes, No, Not Working', 'Working', 'Good', 'Working', 'Yes, No, NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, 'Yes', 'Yes', 'Yes, No, Not Working', 'Working', 'Good', 'Working', 'Yes, No, NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'Yes', 'Yes', 'Yes', 'Working', 'NA', 'Working', 'NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, 'No', 'No', 'Yes', 'Working', 'Good', 'NA', 'NA', 'Working', 'Working', 'Working', 'Working', 'Not Working', 'Good', 'Yes', 'Wornout', 'Wornout', 'Wornout', 'Yes', 'Yes', 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, 'Yes', 'Yes', 'Yes, No', 'Working', 'Good', 'Working', 'Yes, No', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, 'No', 'Yes', 'Not Working, Yes', 'Working', 'Good', 'Working', 'No', 'Working', 'Working', 'Working', 'Working', 'Not Working', 'Good', 'No', 'Good', 'Bad', 'Good', 'Yes', 'Yes', 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, 'No', 'Yes', 'Not Working, Yes', 'Working', 'Good', 'Working', 'NA, Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Wornout', 'Good', 'Yes', 'Yes', 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, 'No', 'Yes', 'No', 'Working', 'Good', 'Not Working', 'NA', 'Working', 'Not Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Bad', 'Wornout', 'Good', 'Yes', 'Yes', 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'No', 'No', 'Yes, No, Not Working', 'Not Working', 'Bad', 'Not Working', 'Yes, No, NA', 'Not Working', 'Not Working', 'Not Working', 'Not Working', 'Not Working', 'Bad', 'No', 'Wornout', 'Bad', 'Bad', 'No', 'No', 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'No', 'Yes', 'Yes, Not Working, No', 'Working', 'Good', 'Working', 'NA, No, Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Bad', 'Wornout', 'Yes', 'Yes', 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, 'Yes', 'Yes', 'Yes, No', 'Working', 'Good', 'Working', 'Yes, No', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, 'Yes', 'Yes', 'Yes, No', 'Working', 'Good', 'Working', 'Yes, No', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, 'No', 'No', 'Yes, No', 'Not Working', 'Bad', 'Not Working', 'Yes, No', 'Not Working', 'Not Working', 'Not Working', 'Not Working', 'Not Working', 'Bad', 'No', 'Bad', 'Bad', 'Bad', 'No', 'No', 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, 'Yes', 'Yes', 'Yes, No, Not Working', 'Working', 'Good', 'Working', 'Yes, No', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, 'Yes', 'Yes', 'Yes, No', 'Working', 'Good', 'Working', 'Yes, No', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'No', 'No', 'Yes, No, Not Working', 'Working', 'NA', 'NA', 'Yes, No, NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'No', 'Bad', 'Bad', 'Bad', 'Yes', 'Yes', 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, 'Yes', 'Yes', 'Yes, No', 'Working', 'Good', 'Working', 'Yes, No', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, 'No', 'No', 'Yes', 'Working', 'Good', 'Working', 'NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Wornout', 'Good', 'Good', 'Yes', 'Yes', 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'No', 'No', 'No', 'Not Working', 'Good', 'NA', 'NA', 'Not Working', 'Working', 'Working', 'Not Working', 'Working', 'Good', 'No', 'Wornout', 'Good', 'Good', 'No', 'Yes', 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'No', 'No', 'Yes', 'Working', 'Good', 'NA', 'NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'No', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'No', 'No', 'Yes', 'Working', 'Good', 'NA', 'NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Wornout', 'Good', 'Good', 'Yes', 'Yes', 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35'),
(62, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'NA', 'Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'NA', 'NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'No', 'No', 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11'),
(64, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'No', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52'),
(65, 'No', 'No', 'No', 'Not Working', 'Bad', 'NA', 'Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'No', 'Wornout', 'Wornout', 'Wornout', 'No', 'Yes', 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'No', 'No', 'Yes', 'Working', 'Good', 'NA', 'NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Wornout', 'Good', 'Good', 'Yes', 'Yes', 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'NA', 'NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'No', 'Yes', 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Bad', 'Yes', 'Wornout', 'Good', 'Good', 'No', 'Yes', 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'No', 'No', 'No', 'Not Working', 'Good', 'NA', 'NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Bad', 'No', 'Good', 'Good', 'Good', 'Yes', 'Yes', 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'NA', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'No', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'Yes', 'Not Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'Yes', 'Yes', 'Yes', 'Working', 'Good', 'Working', 'Yes', 'Working', 'Working', 'Working', 'Working', 'Working', 'Good', 'Yes', 'Good', 'Good', 'Good', 'Yes', 'Yes', 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_08_01_073143_create_admins_table', 2),
(3, '2022_09_14_060625_create_models_table', 2),
(4, '2022_09_14_060815_create_brands_table', 2),
(6, '2022_09_14_075631_create_partners_table', 3),
(7, '2022_09_14_095220_create_sliders_table', 4),
(8, '2022_09_14_132509_create_users_table', 5),
(9, '2022_09_15_063745_create_reviews_table', 6),
(10, '2022_09_07_082859_create_main_category_table', 7),
(11, '2022_09_07_082920_create_sub_category_table', 7),
(12, '2022_09_07_084540_create_pets_table', 7),
(14, '2022_10_04_071227_create_customer_details_table', 8),
(15, '2022_10_04_071351_create_rc_insuarance_details_table', 8),
(16, '2022_10_04_071416_create_chasis_details_table', 8),
(17, '2022_10_04_071447_create_vehicle_details_table', 8),
(18, '2022_10_04_071605_create_vehicle_photos_table', 8),
(19, '2022_10_04_071809_create_vehicle_parts_qualities_table', 8),
(20, '2022_10_04_071904_create_exterior_rhs_sides_table', 8),
(21, '2022_10_04_071932_create_exterior_back_sides_table', 8),
(22, '2022_10_04_072005_create_interiors_table', 8),
(23, '2022_10_04_072049_create_test_drives_table', 8),
(24, '2022_10_04_072128_create_engine_compartments_table', 8),
(25, '2022_10_04_072156_create_special_features_table', 8),
(26, '2022_10_04_072218_create_damages_table', 8),
(27, '2022_10_04_101715_create_exterior_lhs_sides_table', 8),
(28, '2022_10_18_125438_create_bonets_table', 9),
(29, '2022_10_18_130627_create_front_bumpers_table', 9),
(30, '2022_10_18_130721_create_front_glasses_table', 9),
(31, '2022_10_18_130754_create_roofs_table', 9),
(32, '2022_10_18_131342_create_rh_side_approns_table', 9),
(33, '2022_10_18_131527_create_rh_tyre_percentages_table', 9),
(34, '2022_10_18_131552_create_rh_fenders_table', 9),
(35, '2022_10_18_131622_create_a_pillers_table', 9),
(36, '2022_10_18_131651_create_b_pillers_table', 9),
(37, '2022_10_18_131957_create_rh_windows_table', 9),
(38, '2022_10_18_132059_create_rh_doors_table', 9),
(39, '2022_10_18_132126_create_rear_rh_doors_table', 9),
(40, '2022_10_18_132149_create_rear_rh_windows_table', 9),
(41, '2022_10_18_132220_create_rh_running_boards_table', 9),
(42, '2022_10_18_132255_create_c_pillers_table', 9),
(43, '2022_10_18_132707_create_rear_rh_tyre_percentages_table', 9),
(44, '2022_10_18_132815_create_rh_quater_panels_table', 9),
(45, '2022_10_18_132859_create_dicky_doors_table', 9),
(46, '2022_10_18_132922_create_rear_glasses_table', 9),
(47, '2022_10_18_132944_create_dicky_floor_conditions_table', 9),
(48, '2022_10_18_133023_create_spare_wheel_tyre_percentages_table', 9),
(49, '2022_10_18_133104_create_rear_bumpers_table', 9),
(50, '2022_10_25_074905_create_car_insuarances_table', 9),
(51, '2022_10_25_074931_create_car_loans_table', 9),
(52, '2022_10_25_074945_create_car_transfers_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `model_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `brand_id`, `model_no`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'NEXON', '1', '2022-09-14 01:18:29', '2023-05-23 06:20:24'),
(6, 1, 'TIAGO', '1', '2022-10-04 04:54:00', '2023-05-29 08:35:17'),
(7, 1, 'TIGOR', '999', '2022-10-19 02:59:33', '2022-12-07 01:33:45'),
(9, 1, 'PUNCH', '1', '2022-12-07 01:32:39', '2023-05-30 11:02:36'),
(10, 1, 'HEXA', '999', '2022-12-07 01:35:01', '2022-12-07 01:35:01'),
(11, 1, 'INDICA', '999', '2022-12-07 01:36:19', '2022-12-07 01:36:19'),
(12, 1, 'INDIGO', '999', '2022-12-07 01:36:40', '2022-12-07 01:36:40'),
(13, 1, 'ARIA', '999', '2022-12-07 01:37:04', '2022-12-07 01:37:04'),
(14, 1, 'HARRIER', '1499', '2022-12-07 01:37:39', '2022-12-07 01:37:39'),
(16, 1, 'ALTROZ', '999', '2022-12-07 01:38:41', '2022-12-07 01:38:41'),
(17, 1, 'SAFARI', '999', '2022-12-07 01:39:43', '2022-12-07 01:39:43'),
(18, 1, 'SAFARI STORM', '999', '2022-12-07 01:40:13', '2022-12-07 01:40:13'),
(19, 1, 'NEW SAFARI', '1199', '2022-12-07 01:40:44', '2022-12-07 01:40:44'),
(20, 1, 'SUMO', '999', '2022-12-07 01:41:23', '2022-12-07 01:41:23'),
(21, 1, 'BOLT', '999', '2022-12-07 01:42:04', '2022-12-07 01:42:04'),
(22, 1, 'ZEST', '999', '2022-12-07 01:42:26', '2022-12-07 01:42:26'),
(23, 1, 'MANZA', '999', '2022-12-07 01:42:45', '2022-12-07 01:42:45'),
(24, 1, 'NANO', '699', '2022-12-07 01:43:17', '2022-12-07 01:43:17'),
(25, 1, 'VENTURE', '999', '2022-12-07 01:43:43', '2022-12-07 01:43:43'),
(26, 1, 'WINGER', '999', '2022-12-07 01:44:13', '2022-12-07 01:44:13'),
(27, 1, 'XENON', '999', '2022-12-07 01:44:31', '2022-12-07 01:44:31'),
(28, 2, 'FIGO', '999', '2022-12-07 01:51:32', '2022-12-07 01:51:32'),
(29, 2, 'ASPIRE', '999', '2022-12-07 01:52:07', '2022-12-07 01:52:07'),
(30, 2, 'ECOSPORT', '999', '2022-12-07 01:52:32', '2022-12-07 01:52:32'),
(31, 2, 'ENDEAVOUR', '1499', '2022-12-07 01:53:22', '2022-12-07 01:53:22'),
(32, 2, 'FREESTYLE', '999', '2022-12-07 01:53:48', '2022-12-07 01:53:48'),
(33, 2, 'MUSTANG', '1499', '2022-12-07 01:55:07', '2022-12-07 01:55:07'),
(34, 2, 'FIESTA', '999', '2022-12-07 01:55:26', '2022-12-07 01:55:26'),
(35, 2, 'FUSION', '999', '2022-12-07 01:55:44', '2022-12-07 01:55:44'),
(36, 2, 'ICON', '999', '2022-12-07 01:56:08', '2022-12-07 01:56:08'),
(37, 3, '2 SERIES', '1499', '2022-12-07 01:57:28', '2022-12-07 01:57:28'),
(38, 3, '3 SERIES', '1999', '2022-12-07 01:57:58', '2022-12-07 01:57:58'),
(39, 3, '5 SERIES', '2499', '2022-12-07 01:59:00', '2022-12-07 01:59:00'),
(40, 3, '6 SERIES', '2499', '2022-12-07 01:59:27', '2022-12-07 01:59:27'),
(41, 3, '7 SERIES', '2499', '2022-12-07 01:59:51', '2022-12-07 01:59:51'),
(42, 3, 'X1', '1499', '2022-12-07 02:00:10', '2022-12-07 02:00:10'),
(43, 3, 'X3', '1499', '2022-12-07 02:00:26', '2022-12-07 02:00:26'),
(44, 3, 'X4', '1499', '2022-12-07 02:00:51', '2022-12-07 02:00:51'),
(45, 3, 'X5', '1999', '2022-12-07 02:01:10', '2022-12-07 02:01:10'),
(46, 3, 'X6', '1999', '2022-12-07 02:01:35', '2022-12-07 02:01:35'),
(47, 3, 'X7', '2499', '2022-12-07 02:02:01', '2022-12-07 02:02:01'),
(48, 3, 'Z4', '2499', '2022-12-07 02:02:45', '2022-12-07 02:02:45'),
(49, 3, 'Z3', '2499', '2022-12-07 02:03:18', '2022-12-07 02:03:18'),
(50, 3, 'i-8', '4999', '2022-12-07 02:04:02', '2022-12-07 02:04:02'),
(51, 3, 'M8', '4999', '2022-12-07 02:04:25', '2022-12-07 02:04:25'),
(52, 4, 'INNOVA', '999', '2022-12-07 02:05:49', '2022-12-07 02:05:49'),
(53, 4, 'INNOVA-CRYSTA', '1199', '2022-12-07 02:06:50', '2022-12-07 02:06:50'),
(54, 4, 'FORTUNER', '1499', '2022-12-07 02:07:24', '2022-12-07 02:07:24'),
(55, 4, 'CAMRY', '1499', '2022-12-07 02:07:57', '2022-12-07 02:07:57'),
(56, 4, 'COROLLA', '999', '2022-12-07 02:08:26', '2022-12-07 02:08:26'),
(57, 4, 'COROLLA-ALTIS', '999', '2022-12-07 02:08:52', '2022-12-07 02:08:52'),
(58, 4, 'GLANZA', '999', '2022-12-07 02:09:12', '2022-12-07 02:09:12'),
(59, 4, 'URBAN-CRUISER', '999', '2022-12-07 02:09:56', '2022-12-07 02:09:56'),
(60, 4, 'YARIS', '1199', '2022-12-07 02:10:20', '2022-12-07 02:10:20'),
(61, 4, 'ETIOS', '999', '2022-12-07 02:10:46', '2022-12-07 02:10:46'),
(62, 4, 'ETIOS-LIVA', '999', '2022-12-07 02:11:11', '2022-12-07 02:11:11'),
(63, 4, 'ETIOS-CROSS', '999', '2022-12-07 02:11:36', '2022-12-07 02:11:36'),
(64, 4, 'PRADO', '1999', '2022-12-07 02:11:58', '2022-12-07 02:11:58'),
(65, 4, 'LANDCRUISER', '1999', '2022-12-07 02:12:38', '2022-12-07 02:12:38'),
(66, 4, 'HILUX', '1999', '2022-12-07 02:13:33', '2022-12-07 02:13:33'),
(67, 4, 'QUALIS', '999', '2022-12-07 02:13:50', '2022-12-07 02:13:50'),
(68, 4, 'COMMUTER', '1999', '2022-12-07 02:14:29', '2022-12-07 02:14:29'),
(69, 5, 'SWIFT', '999', '2022-12-07 02:16:59', '2022-12-07 02:16:59'),
(70, 5, 'DZIRE', '999', '2022-12-07 02:17:26', '2022-12-07 02:19:05'),
(71, 5, 'ALTO', '999', '2022-12-07 02:17:26', '2022-12-07 02:18:40'),
(72, 5, 'ALTO-K10', '999', '2022-12-07 02:19:31', '2022-12-07 02:19:31'),
(73, 5, 'ALTO-800', '999', '2022-12-07 02:20:04', '2022-12-07 02:20:04'),
(74, 5, 'EECO', '999', '2022-12-07 02:20:23', '2022-12-07 02:20:23'),
(75, 5, 'S-PRESSO', '999', '2022-12-07 02:21:28', '2022-12-07 02:21:28'),
(76, 5, 'IGNIS', '999', '2022-12-07 02:22:19', '2022-12-07 02:22:19'),
(77, 5, 'CIAZ', '999', '2022-12-07 02:22:53', '2022-12-07 02:22:53'),
(78, 5, 'ERTIGA', '999', '2022-12-07 02:23:14', '2022-12-07 02:23:14'),
(79, 5, 'XL6', '999', '2022-12-07 02:23:39', '2022-12-07 02:23:39'),
(80, 5, 'WAGON-R', '999', '2022-12-07 02:24:19', '2022-12-07 02:24:19'),
(81, 5, 'S-CROSS', '999', '2022-12-07 02:24:45', '2022-12-07 02:24:45'),
(82, 5, 'VITARA BREZZA', '999', '2022-12-07 02:25:28', '2022-12-07 02:25:59'),
(83, 5, 'GRAND-VITARA', '999', '2022-12-07 02:26:43', '2022-12-07 02:26:43'),
(84, 5, 'SX4', '999', '2022-12-07 02:27:02', '2022-12-07 02:27:02'),
(85, 6, 'I10', '999', '2022-12-07 02:29:23', '2022-12-07 02:31:46'),
(86, 6, 'I20', '999', '2022-12-07 02:32:14', '2022-12-07 02:32:14'),
(87, 6, 'ELITE I20', '999', '2022-12-07 02:32:35', '2022-12-07 02:32:35'),
(88, 6, 'VERNA', '999', '2022-12-07 02:33:01', '2022-12-07 02:33:01'),
(89, 6, 'GRAND-i10', '999', '2022-12-07 02:36:42', '2022-12-07 02:36:42'),
(90, 6, 'AURA', '999', '2022-12-07 02:37:30', '2022-12-07 02:37:30'),
(91, 6, 'CRETA', '999', '2022-12-07 02:38:16', '2022-12-07 02:38:16'),
(92, 6, 'ALCAZAR', '1199', '2022-12-07 02:38:55', '2022-12-07 02:38:55'),
(93, 6, 'VENUE', '999', '2022-12-07 02:39:17', '2022-12-07 02:39:17'),
(94, 6, 'ELENTRA', '999', '2022-12-07 02:39:40', '2022-12-07 02:39:40'),
(95, 6, 'XCENT', '999', '2022-12-07 02:40:09', '2022-12-07 02:40:09'),
(96, 6, 'EON', '999', '2022-12-07 02:40:37', '2022-12-07 02:40:37'),
(97, 6, 'SANTRO', '999', '2022-12-07 02:40:55', '2022-12-07 02:40:55'),
(98, 6, 'TISCON', '999', '2022-12-07 02:41:26', '2022-12-07 02:41:26'),
(99, 6, 'SANTA-FE', '1199', '2022-12-07 02:41:59', '2022-12-07 02:41:59'),
(100, 6, 'ACCENT', '999', '2022-12-07 02:42:17', '2022-12-07 02:42:17'),
(101, 6, 'SONATA', '999', '2022-12-07 02:42:38', '2022-12-07 02:42:38'),
(102, 6, 'i20-ACTIVE', '999', '2022-12-07 02:43:37', '2022-12-07 02:43:37'),
(103, 6, 'KONA-ELECTRIC', '999', '2022-12-07 02:44:16', '2022-12-07 02:44:16'),
(104, 5, 'CELERIO', '999', '2022-12-07 02:47:12', '2022-12-07 02:47:12'),
(105, 5, 'BALENO', '999', '2022-12-07 02:49:13', '2022-12-07 02:49:13'),
(106, 5, 'RITZ', '999', '2022-12-07 02:49:38', '2022-12-07 02:49:38'),
(107, 5, 'ZEN ESTILO', '999', '2022-12-07 02:50:04', '2022-12-07 02:50:04'),
(108, 5, 'WARONR-STINGREY', '999', '2022-12-07 02:50:47', '2022-12-07 02:50:47'),
(109, 5, 'GYPSY', '999', '2022-12-07 02:51:05', '2022-12-07 02:51:05'),
(110, 5, 'A-STAR', '999', '2022-12-07 02:51:23', '2022-12-07 02:51:23'),
(111, 5, 'KIZASHI', '1199', '2022-12-07 02:52:22', '2022-12-07 02:52:22'),
(112, 5, 'OMNI', '999', '2022-12-07 02:52:44', '2022-12-07 02:52:44'),
(113, 5, 'VERSA', '999', '2022-12-07 02:53:01', '2022-12-07 02:53:01'),
(114, 7, 'CITY', '999', '2022-12-07 02:54:06', '2022-12-07 02:54:06'),
(115, 7, 'CITY-ZX', '999', '2022-12-07 02:54:29', '2022-12-07 02:54:29'),
(116, 7, 'CIVIC', '999', '2022-12-07 02:54:58', '2022-12-07 02:54:58'),
(117, 7, 'AMAZE', '999', '2022-12-07 02:55:15', '2022-12-07 02:55:15'),
(118, 7, 'MOBILIO', '999', '2022-12-07 02:55:39', '2022-12-07 02:55:39'),
(119, 7, 'BR-V', '999', '2022-12-07 02:56:03', '2022-12-07 02:56:03'),
(120, 7, 'WR-V', '999', '2022-12-07 02:56:22', '2022-12-07 02:56:22'),
(121, 7, 'CR-V', '999', '2022-12-07 02:56:43', '2022-12-07 02:56:43'),
(122, 7, 'ACCORD', '999', '2022-12-07 02:56:59', '2022-12-07 02:56:59'),
(123, 7, 'JAZZ', '999', '2022-12-07 02:57:18', '2022-12-07 02:57:18'),
(124, 7, 'BRIO', '999', '2022-12-07 02:57:37', '2022-12-07 02:57:37'),
(125, 8, 'SELTOS', '999', '2022-12-07 02:58:44', '2022-12-07 02:58:44'),
(126, 8, 'SONET', '999', '2022-12-07 02:59:05', '2022-12-07 02:59:05'),
(127, 8, 'CARENS', '999', '2022-12-07 02:59:24', '2022-12-07 02:59:24'),
(128, 8, 'CARNIVAL', '1199', '2022-12-07 02:59:48', '2022-12-07 02:59:48'),
(129, 9, 'HECTOR', '999', '2022-12-07 03:00:10', '2022-12-07 03:00:10'),
(130, 9, 'HECTOR PLUS', '1199', '2022-12-07 03:01:12', '2022-12-07 03:01:12'),
(131, 9, 'GLOSTER', '1499', '2022-12-07 03:01:56', '2022-12-07 03:01:56'),
(132, 9, 'ASTOR', '999', '2022-12-07 03:02:14', '2022-12-07 03:02:14'),
(133, 9, 'ASTOR ZX-EV', '999', '2022-12-07 03:02:50', '2022-12-07 03:02:50'),
(134, 10, 'SCORPIO', '999', '2022-12-07 03:03:53', '2022-12-07 03:03:53'),
(135, 10, 'BOLERO', '999', '2022-12-07 03:04:12', '2022-12-07 03:04:12'),
(136, 10, 'MARAZZO', '999', '2022-12-07 03:04:40', '2022-12-07 03:04:40'),
(137, 10, 'XUV-500', '999', '2022-12-07 03:05:03', '2022-12-07 03:05:03'),
(138, 10, 'XUV-300', '999', '2022-12-07 03:05:27', '2022-12-07 03:05:27'),
(139, 10, 'XUV-700', '1199', '2022-12-07 03:05:49', '2022-12-07 03:05:49'),
(140, 10, 'KUV-100', '999', '2022-12-07 03:06:16', '2022-12-07 03:06:16'),
(141, 10, 'TUV-300', '999', '2022-12-07 03:06:47', '2022-12-07 03:06:47'),
(142, 10, 'THAR', '999', '2022-12-07 03:07:07', '2022-12-07 03:07:07'),
(143, 10, 'ALTURAS', '1199', '2022-12-07 03:08:04', '2022-12-07 03:08:04'),
(144, 10, 'XYLO', '999', '2022-12-07 03:08:27', '2022-12-07 03:08:27'),
(145, 10, 'VERITO', '999', '2022-12-07 03:08:54', '2022-12-07 03:08:54'),
(146, 10, 'LOGAN', '999', '2022-12-07 03:09:33', '2022-12-07 03:09:33'),
(147, 10, 'NUVOSPORT', '999', '2022-12-07 03:10:21', '2022-12-07 03:10:21'),
(148, 10, 'QUANTO', '999', '2022-12-07 03:10:49', '2022-12-07 03:10:49'),
(149, 10, 'REXTON', '999', '2022-12-07 03:11:09', '2022-12-07 03:11:09'),
(150, 11, 'FLUENCE', '999', '2022-12-07 03:13:13', '2022-12-07 03:13:13'),
(151, 11, 'PULSE', '999', '2022-12-07 03:13:31', '2022-12-07 03:13:31'),
(152, 11, 'DUSTER', '999', '2022-12-07 03:13:57', '2022-12-07 03:13:57'),
(153, 11, 'KWID', '999', '2022-12-07 03:14:20', '2022-12-07 03:14:20'),
(154, 11, 'KOLEOS', '999', '2022-12-07 03:15:06', '2022-12-07 03:15:06'),
(155, 11, 'CAPTURE', '999', '2022-12-07 03:15:41', '2022-12-07 03:15:41'),
(156, 11, 'SCALA', '999', '2022-12-07 03:16:10', '2022-12-07 03:16:10'),
(157, 11, 'LODGY', '999', '2022-12-07 03:16:37', '2022-12-07 03:16:37'),
(158, 11, 'TRIBER', '999', '2022-12-07 03:17:09', '2022-12-07 03:17:09'),
(159, 11, 'KIGER', '999', '2022-12-07 03:17:29', '2022-12-07 03:17:29'),
(160, 12, 'MICRA', '999', '2022-12-11 09:31:36', '2022-12-11 09:31:36'),
(161, 12, 'KICKS', '999', '2022-12-11 09:32:02', '2022-12-11 09:32:02'),
(162, 12, 'MAGNITE', '999', '2022-12-11 09:32:26', '2022-12-11 09:32:26'),
(163, 12, 'SUNNY', '999', '2022-12-11 09:32:53', '2022-12-11 09:32:53'),
(164, 12, 'TERRANO', '999', '2022-12-11 09:33:24', '2022-12-11 09:33:24'),
(165, 12, 'TIANA', '999', '2022-12-11 09:33:44', '2022-12-11 09:33:44'),
(166, 13, 'AMEO', '999', '2022-12-11 09:34:21', '2022-12-11 09:34:21'),
(167, 13, 'PASSAT', '1499', '2022-12-11 09:34:49', '2022-12-11 09:34:49'),
(168, 13, 'POLO', '999', '2022-12-11 09:35:26', '2022-12-11 09:35:26'),
(169, 13, 'VENTO', '999', '2022-12-11 09:35:48', '2022-12-11 09:35:48'),
(170, 13, 'TIGUAN', '1499', '2022-12-11 09:36:26', '2022-12-11 09:36:26'),
(171, 13, 'TAIGUN', '999', '2022-12-11 09:37:13', '2022-12-11 09:37:13'),
(172, 13, 'JETTA', '1199', '2022-12-11 09:38:45', '2022-12-11 09:38:45'),
(173, 13, 'PHAETON', '1999', '2022-12-11 09:39:17', '2022-12-11 09:39:17'),
(175, 14, 'A4', '1199', '2022-12-11 09:40:19', '2022-12-11 09:40:19'),
(176, 14, 'A5', '1199', '2022-12-11 09:41:22', '2022-12-11 09:41:22'),
(177, 14, 'A6', '1499', '2022-12-11 09:41:39', '2022-12-11 09:41:39'),
(178, 14, 'A8', '2999', '2022-12-11 09:42:02', '2022-12-11 09:44:25'),
(179, 14, 'Q2', '1199', '2022-12-11 09:42:23', '2022-12-11 09:42:23'),
(180, 14, 'Q3', '1199', '2022-12-11 09:42:49', '2022-12-11 09:42:49'),
(181, 14, 'Q7', '2999', '2022-12-11 09:43:09', '2022-12-11 09:43:39'),
(182, 14, 'Q8', '3499', '2022-12-11 09:45:04', '2022-12-11 09:45:04'),
(183, 14, 'RS Q8', '4999', '2022-12-11 09:46:03', '2022-12-11 09:46:03'),
(184, 14, 'E-TORN', '2999', '2022-12-11 09:46:53', '2022-12-11 09:46:53'),
(185, 14, 'R8', '4999', '2022-12-11 09:47:27', '2022-12-11 09:47:27'),
(186, 14, 'RS 5', '2999', '2022-12-11 09:47:56', '2022-12-11 09:47:56'),
(187, 15, 'GURKHA', '999', '2022-12-11 09:48:53', '2022-12-11 09:48:53'),
(188, 15, 'FORCE ONE', '999', '2022-12-11 09:49:32', '2022-12-11 09:49:32'),
(189, 15, 'TRAX-CRUISER', '999', '2022-12-11 09:50:03', '2022-12-11 09:50:03'),
(190, 16, 'BEAT', '999', '2022-12-11 09:50:22', '2022-12-11 09:50:22'),
(191, 16, 'ENJOY', '999', '2022-12-11 09:50:56', '2022-12-11 09:50:56'),
(192, 16, 'OPTRA', '999', '2022-12-11 09:51:14', '2022-12-11 09:51:14'),
(193, 16, 'SAIL', '999', '2022-12-11 09:51:40', '2022-12-11 09:51:40'),
(194, 16, 'TAVERA', '999', '2022-12-11 09:52:05', '2022-12-11 09:52:05'),
(195, 16, 'CRUISE', '999', '2022-12-11 09:52:37', '2022-12-11 09:52:37'),
(196, 16, 'SPARK', '999', '2022-12-11 09:52:49', '2022-12-11 09:52:49'),
(197, 16, 'CAPTIVA', '999', '2022-12-11 09:53:04', '2022-12-11 09:53:04'),
(198, 16, 'OPTRA MAGNUM', '999', '2022-12-11 09:53:43', '2022-12-11 09:53:43'),
(199, 17, 'RAPID', '999', '2022-12-11 09:54:33', '2022-12-11 09:54:33'),
(200, 17, 'FABIA', '999', '2022-12-11 09:54:51', '2022-12-11 09:54:51'),
(201, 17, 'SUPERB', '1199', '2022-12-11 09:55:19', '2022-12-11 09:55:19'),
(202, 17, 'KUSHAQ', '999', '2022-12-11 09:55:41', '2022-12-11 09:55:41'),
(203, 17, 'SLAVIA', '999', '2022-12-11 09:56:06', '2022-12-11 09:56:06'),
(204, 17, 'OCTAVIA', '1199', '2022-12-11 09:56:31', '2022-12-11 09:56:31'),
(205, 17, 'KODIAQ', '1199', '2022-12-11 09:56:59', '2022-12-11 09:56:59'),
(206, 17, 'LAURA', '999', '2022-12-11 09:57:15', '2022-12-11 09:57:15'),
(207, 17, 'YETI', '999', '2022-12-11 09:57:28', '2022-12-11 09:57:28'),
(208, 18, 'D-MAX', '1199', '2022-12-11 09:58:22', '2022-12-11 09:58:22'),
(209, 18, 'MU-X', '1499', '2022-12-11 09:58:41', '2022-12-11 09:58:41'),
(210, 18, 'MU-7', '1499', '2022-12-11 09:59:01', '2022-12-11 09:59:01'),
(211, 18, 'D-MAX V-CROSS', '1199', '2022-12-11 09:59:33', '2022-12-11 10:00:04'),
(212, 19, 'COMPASS', '1199', '2022-12-11 10:00:36', '2022-12-11 10:03:43'),
(213, 19, 'WRANGLER', '1999', '2022-12-11 10:01:20', '2022-12-11 10:01:20'),
(214, 20, 'XF', '1999', '2022-12-11 10:01:47', '2022-12-11 10:01:47'),
(215, 20, 'XJ', '2999', '2022-12-11 10:02:24', '2022-12-11 10:02:24'),
(216, 20, 'XE', '1199', '2022-12-11 10:02:50', '2022-12-11 10:02:50'),
(217, 20, 'XK', '2999', '2022-12-11 10:04:33', '2022-12-11 10:04:33'),
(218, 20, 'F-TYPE', '2999', '2022-12-11 10:05:12', '2022-12-11 10:05:12'),
(219, 20, 'F-PACE', '2999', '2022-12-11 10:05:45', '2022-12-11 10:05:45'),
(220, 21, 'C3', '999', '2022-12-11 10:07:33', '2022-12-11 10:07:33'),
(221, 21, 'C5 AIRCROSS', '1199', '2022-12-11 10:07:34', '2022-12-11 10:08:18'),
(224, 22, 'DISCOVERY', '1999', '2022-12-11 10:13:51', '2022-12-11 10:13:51'),
(225, 22, 'RANGEROVER', '1499', '2022-12-11 10:14:30', '2022-12-11 10:14:30'),
(226, 22, 'DISCOVERY SPORT', '1499', '2022-12-11 10:16:23', '2022-12-11 10:16:23'),
(228, 22, 'RANGE ROVER SPORT', '4999', '2022-12-11 10:26:29', '2022-12-11 10:31:04'),
(229, 22, 'RANGE ROVER VELAR', '2999', '2022-12-11 10:30:16', '2022-12-11 10:31:33'),
(230, 22, 'FREE-LANDER', '999', '2022-12-11 10:32:04', '2022-12-11 10:32:04'),
(231, 23, 'ES', '1999', '2022-12-11 10:32:59', '2022-12-11 10:32:59'),
(232, 23, 'LS', '4999', '2022-12-11 10:33:16', '2022-12-11 10:33:16'),
(233, 23, 'LX', '5499', '2022-12-11 10:33:41', '2022-12-11 10:33:41'),
(234, 23, 'NX', '1499', '2022-12-11 10:34:03', '2022-12-11 10:34:03'),
(235, 23, 'RX', '3999', '2022-12-11 10:34:31', '2022-12-11 10:34:31'),
(236, 24, 'A-CLASS', '1199', '2022-12-11 10:35:25', '2022-12-11 10:35:25'),
(237, 24, 'B-CLASS', '1199', '2022-12-11 10:35:44', '2022-12-11 10:35:44'),
(238, 24, 'C-CLASS', '1499', '2022-12-11 10:36:11', '2022-12-11 10:36:11'),
(239, 24, 'G-CLASS', '4999', '2022-12-11 10:36:52', '2022-12-11 10:36:52'),
(240, 24, 'E-CLASS', '1499', '2022-12-11 10:37:29', '2022-12-11 10:37:29'),
(241, 24, 'GLE', '2999', '2022-12-11 10:38:30', '2022-12-11 10:38:30'),
(242, 24, 'GLA', '1499', '2022-12-11 10:38:47', '2022-12-11 10:38:47'),
(243, 24, 'GLC', '1999', '2022-12-11 10:39:19', '2022-12-11 10:39:19'),
(244, 24, 'M-CLASS', '1999', '2022-12-11 10:39:46', '2022-12-11 10:39:46'),
(245, 24, 'GLS', '2999', '2022-12-11 10:40:14', '2022-12-11 10:40:14'),
(246, 24, 'S-CLASS', '3499', '2022-12-11 10:41:12', '2022-12-11 10:41:12'),
(247, 24, 'AMG-EQS', '4999', '2022-12-11 10:42:14', '2022-12-11 10:42:14'),
(248, 24, 'EQS', '2999', '2022-12-11 10:42:31', '2022-12-11 10:42:31'),
(249, 25, 'CAYENNE', '4999', '2022-12-11 10:43:54', '2022-12-11 10:45:48'),
(250, 25, 'CAYENNE-COUPE', '4999', '2022-12-11 10:44:43', '2022-12-11 10:46:07'),
(251, 25, '718', '4999', '2022-12-11 10:46:30', '2022-12-11 10:46:30'),
(252, 25, '911', '4999', '2022-12-11 10:46:45', '2022-12-11 10:46:45'),
(253, 25, 'MACAN', '1499', '2022-12-11 10:47:20', '2022-12-11 10:47:20'),
(254, 25, 'PANAMERA', '4999', '2022-12-11 10:47:46', '2022-12-11 10:47:46'),
(255, 25, 'BOXSTER', '1499', '2022-12-11 10:48:13', '2022-12-11 10:48:13'),
(256, 26, 'XC 40', '1999', '2022-12-11 10:49:09', '2022-12-11 10:50:21'),
(257, 26, 'XC 60', '1999', '2022-12-11 10:50:06', '2022-12-11 10:50:06'),
(258, 26, 'XC 90', '2999', '2022-12-11 10:50:41', '2022-12-11 10:50:41'),
(259, 26, 'S 60', '1999', '2022-12-11 10:51:12', '2022-12-11 10:51:12'),
(260, 26, 'S 90', '2499', '2022-12-11 10:51:38', '2022-12-11 10:51:38'),
(261, 26, 'S 80', '1499', '2022-12-11 10:51:57', '2022-12-11 10:51:57'),
(262, 26, 'V 40', '1499', '2022-12-11 10:52:43', '2022-12-11 10:52:43'),
(263, 26, 'V 40 CROSS COUNTRY', '1499', '2022-12-11 10:52:43', '2022-12-11 10:53:08'),
(264, 26, 'V 90 CROSS COUNTRY', '1999', '2022-12-11 10:53:45', '2022-12-11 10:53:45'),
(265, 27, 'PUNTO', '999', '2022-12-11 10:55:09', '2022-12-11 10:55:09'),
(266, 27, 'LINEA', '999', '2022-12-11 10:55:32', '2022-12-11 10:55:32'),
(267, 27, 'GRAND PUNTO', '999', '2022-12-11 10:55:33', '2022-12-11 10:56:04'),
(268, 27, 'UNO', '999', '2022-12-11 10:56:26', '2022-12-11 10:56:26'),
(269, 28, 'PAJERO', '1199', '2022-12-11 10:57:26', '2022-12-11 10:57:26'),
(270, 28, 'LANCER', '999', '2022-12-11 10:57:52', '2022-12-11 10:57:52'),
(271, 28, 'OUTLANDER', '1199', '2022-12-11 10:58:21', '2022-12-11 10:58:21'),
(272, 28, 'MONTERO', '1199', '2022-12-11 10:58:46', '2022-12-11 10:58:46'),
(273, 28, 'CEDIA', '999', '2022-12-11 10:59:09', '2022-12-11 10:59:09'),
(274, 29, 'GO', '999', '2022-12-11 10:59:30', '2022-12-11 10:59:30'),
(275, 29, 'GO-PLUS', '999', '2022-12-11 11:01:10', '2022-12-11 11:01:10'),
(276, 29, 'REDI-GO', '999', '2022-12-11 11:01:10', '2022-12-11 11:01:34'),
(277, 30, 'CONTINANTAL FLYING SPUR', '4999', '2022-12-11 11:02:46', '2022-12-11 11:07:14'),
(278, 30, 'MULSANNE', '6999', '2022-12-11 11:03:54', '2022-12-11 11:08:58'),
(279, 30, 'BENTAYGA', '6999', '2022-12-11 11:08:32', '2022-12-11 11:08:32'),
(280, 30, 'AZURE', '6999', '2022-12-11 11:09:43', '2022-12-11 11:09:43'),
(281, 30, 'BROOKLAND', '6999', '2022-12-11 11:10:07', '2022-12-11 11:10:07'),
(282, 31, '3 DOOR', '1499', '2022-12-11 11:13:01', '2022-12-11 11:13:01'),
(283, 31, '5 DOOR', '1499', '2022-12-11 11:13:50', '2022-12-11 11:13:50'),
(284, 31, 'JSW', '1499', '2022-12-11 11:16:30', '2022-12-11 11:16:30'),
(285, 31, 'S', '1499', '2022-12-11 11:16:57', '2022-12-11 11:16:57'),
(286, 31, 'COPPER-COUNRTYMAN', '1199', '2022-12-11 11:18:30', '2022-12-11 11:19:06'),
(287, 31, 'COPPER CLUBMAN', '1199', '2022-12-11 11:18:30', '2022-12-11 11:18:30'),
(289, 6, 'EXTER', '999', '2023-06-16 10:57:39', '2023-06-16 10:57:39'),
(290, 5, 'Jimny', '999', '2023-06-16 10:59:10', '2023-06-16 10:59:10'),
(291, 4, 'HYCROSS', '1499', '2023-06-16 11:00:46', '2023-06-16 11:02:40'),
(292, 4, 'HILIX', '1499', '2023-06-16 11:02:10', '2023-06-16 11:02:10'),
(294, 6, 'GRAND I10 NIOS', '999', '2023-06-16 11:08:03', '2023-06-16 11:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '0-all, 1-Customer, 2-Partner',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `user_id`, `partner_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'New Order Assigned', 'New order 90253 has been assigned to you', NULL, 3, 2, '2022-11-02 00:45:03', '2022-11-02 00:45:03'),
(2, 'New Order Assigned', 'New order 90253 has been assigned to you', NULL, 3, 0, '2022-11-02 11:30:37', '2022-11-02 11:30:37'),
(3, 'Order Report Rejected', 'Report for 238840 has been rejected. Check the Remark & resubmit the report', NULL, 3, 2, '2022-11-02 12:43:05', '2022-11-02 12:43:05'),
(4, 'Order Report Rejected', 'Report for 238840 has been rejected. Check the Remark & resubmit the report', NULL, 3, 2, '2022-11-02 13:41:52', '2022-11-02 13:41:52'),
(5, 'Order Report Approved', 'Report for 238840 has been approved by the admin', NULL, 3, 2, '2022-11-03 10:27:12', '2022-11-03 10:27:12'),
(6, 'Order Report Approved', 'Report for 238840 has been approved by the admin', NULL, 3, 2, '2022-11-03 10:27:21', '2022-11-03 10:27:21'),
(7, 'Order Report Approved', 'Report for 396336 has been approved by the admin', NULL, 3, 2, '2022-11-03 10:34:15', '2022-11-03 10:34:15'),
(8, 'Order Report Approved', 'Report for 396336 has been approved by the admin', NULL, 3, 2, '2022-11-03 10:35:45', '2022-11-03 10:35:45'),
(9, 'Order report generated', 'Congratulations! Your report for request 396336 has been generated. Check it in My Leads page', 23, NULL, 1, '2022-11-03 10:35:45', '2022-11-03 10:35:45'),
(10, 'New Order Assigned', 'New order 90253 has been assigned to you', NULL, 3, 0, '2022-11-03 10:43:37', '2022-11-03 10:43:37'),
(11, 'New Order Assigned', 'New order 90253 has been assigned to you', NULL, 3, 0, '2022-11-03 11:05:33', '2022-11-03 11:05:33'),
(12, 'Order Report Rejected', 'Report for 519038 has been rejected. Check the Remark & resubmit the report', NULL, 3, 2, '2022-11-03 11:08:37', '2022-11-03 11:08:37'),
(13, 'Order Report Rejected', 'Report for 519038 has been rejected. Check the Remark & resubmit the report', NULL, 3, 2, '2022-11-03 11:15:43', '2022-11-03 11:15:43'),
(14, 'New Order Assigned', 'New order 90253 has been assigned to you', NULL, 3, 0, '2022-11-03 11:58:55', '2022-11-03 11:58:55'),
(15, 'Order Report Rejected', 'Report for 578942 has been rejected. Check the Remark & resubmit the report', NULL, 3, 2, '2022-11-03 12:48:47', '2022-11-03 12:48:47'),
(16, 'Order Report Rejected', 'Report for 578942 has been rejected. Check the Remark & resubmit the report', NULL, 3, 2, '2022-11-03 13:03:11', '2022-11-03 13:03:11'),
(17, 'Order Report Rejected', 'Report for 578942 has been rejected. Check the Remark & resubmit the report', NULL, 3, 2, '2022-11-03 13:10:45', '2022-11-03 13:10:45'),
(18, 'Order Report Approved', 'Report for 874524 has been approved by the admin', NULL, 3, 2, '2022-11-03 13:16:27', '2022-11-03 13:16:27'),
(19, 'Order report generated', 'Congratulations! Your report for request 874524 has been generated. Check it in My Leads page', 17, NULL, 1, '2022-11-03 13:16:28', '2022-11-03 13:16:28'),
(20, 'Order Report Approved', 'Report for 874524 has been approved by the admin', NULL, 3, 2, '2022-11-03 13:36:23', '2022-11-03 13:36:23'),
(21, 'Order report generated', 'Congratulations! Your report for request 874524 has been generated. Check it in My Leads page', 17, NULL, 1, '2022-11-03 13:36:24', '2022-11-03 13:36:24'),
(22, 'New Order Assigned', 'New order 24514 has been assigned to you', NULL, 4, 0, '2022-11-04 06:43:06', '2022-11-04 06:43:06'),
(23, 'New Order Assigned', 'New order  has been assigned to you', NULL, NULL, 0, '2022-11-04 06:44:37', '2022-11-04 06:44:37'),
(24, 'New Order Assigned', 'New order 24514 has been assigned to you', NULL, 4, 0, '2022-11-04 06:44:50', '2022-11-04 06:44:50'),
(25, 'Order Report Rejected', 'Report for 597943 has been rejected. Check the Remark & resubmit the report', NULL, 4, 2, '2022-11-04 11:29:47', '2022-11-04 11:29:47'),
(26, 'Order Report Rejected', 'Report for 597943 has been rejected. Check the Remark & resubmit the report', NULL, 4, 2, '2022-11-04 11:45:58', '2022-11-04 11:45:58'),
(27, 'Order Report Rejected', 'Report for 597943 has been rejected. Check the Remark & resubmit the report', NULL, 4, 2, '2022-11-04 11:59:10', '2022-11-04 11:59:10'),
(28, 'Order Report Approved', 'Report for 874524 has been approved by the admin', NULL, 3, 2, '2022-11-04 12:11:00', '2022-11-04 12:11:00'),
(29, 'Order report generated', 'Congratulations! Your report for request 874524 has been generated. Check it in My Leads page', 17, NULL, 1, '2022-11-04 12:11:01', '2022-11-04 12:11:01'),
(30, 'New Order Assigned', 'New order 24514 has been assigned to you', NULL, 4, 0, '2022-11-12 06:04:39', '2022-11-12 06:04:39'),
(31, 'Order Report Approved', 'Report for 185245 has been approved by the admin', NULL, 4, 2, '2022-11-13 09:14:53', '2022-11-13 09:14:53'),
(32, 'Order report generated', 'Congratulations! Your report for request 185245 has been generated. Check it in My Leads page', 24, NULL, 1, '2022-11-13 09:14:54', '2022-11-13 09:14:54'),
(33, 'New Order Assigned', 'New order 76822 has been assigned to you', NULL, 2, 0, '2022-11-14 12:44:08', '2022-11-14 12:44:08'),
(34, 'New Order Assigned', 'New order 95906 has been assigned to you', NULL, 6, 0, '2022-11-14 16:14:19', '2022-11-14 16:14:19'),
(35, 'New Order Assigned', 'New order 95906 has been assigned to you', NULL, 6, 0, '2022-11-14 16:14:34', '2022-11-14 16:14:34'),
(36, 'New Order Assigned', 'New order 778750 has been assigned to you', NULL, 2, 0, '2022-11-16 06:47:58', '2022-11-16 06:47:58'),
(37, 'New Order Assigned', 'New order 571644 has been assigned to you', NULL, 5, 0, '2022-11-16 12:24:06', '2022-11-16 12:24:06'),
(38, 'New Order Assigned', 'New order 778750 has been assigned to you', NULL, NULL, 0, '2022-11-17 05:45:53', '2022-11-17 05:45:53'),
(39, 'New Order Assigned', 'New order 778750 has been assigned to you', NULL, 3, 0, '2022-11-17 05:47:08', '2022-11-17 05:47:08'),
(40, 'Order Report Rejected', 'Report for 778750 has been rejected. Check the Remark & resubmit the report', NULL, 3, 2, '2022-11-17 11:00:42', '2022-11-17 11:00:42'),
(41, 'New Order Assigned', 'New order 336251 has been assigned to you', NULL, 3, 0, '2022-11-23 08:18:56', '2022-11-23 08:18:56'),
(42, 'New Order Assigned', 'New order 364555 has been assigned to you', NULL, 3, 0, '2022-12-02 11:47:59', '2022-12-02 11:47:59'),
(43, 'Order Report Approved', 'Report for 364555 has been approved by the admin', NULL, 3, 2, '2022-12-02 13:14:45', '2022-12-02 13:14:45'),
(44, 'Order report generated', 'Congratulations! Your report for request 364555 has been generated. Check it in My Leads page', 17, NULL, 1, '2022-12-02 13:14:46', '2022-12-02 13:14:46'),
(45, 'New Order Assigned', 'New order 265154 has been assigned to you', NULL, 3, 0, '2022-12-05 05:18:58', '2022-12-05 05:18:58'),
(46, 'New Order Assigned', 'New order 678256 has been assigned to you', NULL, 3, 0, '2022-12-05 07:00:00', '2022-12-05 07:00:00'),
(47, 'New Order Assigned', 'New order 311257 has been assigned to you', NULL, 3, 0, '2022-12-05 11:49:26', '2022-12-05 11:49:26'),
(48, 'New Order Assigned', 'New order 597958 has been assigned to you', NULL, 3, 0, '2022-12-05 11:51:10', '2022-12-05 11:51:10'),
(49, 'Order Report Rejected', 'Report for 597958 has been rejected. Check the Remark & resubmit the report', NULL, 3, 2, '2022-12-05 12:21:04', '2022-12-05 12:21:04'),
(50, 'New Order Assigned', 'New order 445460 has been assigned to you', NULL, 6, 0, '2022-12-06 05:43:49', '2022-12-06 05:43:49'),
(51, 'New Order Assigned', 'New order 235761 has been assigned to you', NULL, 6, 0, '2022-12-06 05:46:17', '2022-12-06 05:46:17'),
(52, 'New Order Assigned', 'New order 411759 has been assigned to you', NULL, 2, 0, '2022-12-06 05:52:54', '2022-12-06 05:52:54'),
(53, 'New Order Assigned', 'New order 445460 has been assigned to you', NULL, 5, 0, '2022-12-06 06:26:44', '2022-12-06 06:26:44'),
(54, 'Order Report Rejected', 'Report for 411759 has been rejected. Check the Remark & resubmit the report', NULL, 2, 2, '2022-12-06 06:29:44', '2022-12-06 06:29:44'),
(55, 'Order Report Approved', 'Report for 445460 has been approved by the admin', NULL, 5, 2, '2022-12-06 09:02:34', '2022-12-06 09:02:34'),
(56, 'Order report generated', 'Congratulations! Your report for request 445460 has been generated. Check it in My Leads page', 16, NULL, 1, '2022-12-06 09:02:34', '2022-12-06 09:02:34'),
(57, 'New Order Assigned', 'New order 235761 has been assigned to you', NULL, 4, 0, '2022-12-06 09:24:34', '2022-12-06 09:24:34'),
(58, 'New Order Assigned', 'New order 317862 has been assigned to you', NULL, 2, 0, '2022-12-06 12:07:17', '2022-12-06 12:07:17'),
(59, 'Order Report Rejected', 'Report for 317862 has been rejected. Check the Remark & resubmit the report', NULL, 2, 2, '2022-12-06 12:38:04', '2022-12-06 12:38:04'),
(60, 'New Order Assigned', 'New order 606170 has been assigned to you', NULL, 5, 0, '2022-12-07 09:03:38', '2022-12-07 09:03:38'),
(61, 'Order Report Approved', 'Report for 606170 has been approved by the admin', NULL, 5, 2, '2022-12-07 10:14:33', '2022-12-07 10:14:33'),
(62, 'Order report generated', 'Congratulations! Your report for request 606170 has been generated. Check it in My Leads page', 26, NULL, 1, '2022-12-07 10:14:33', '2022-12-07 10:14:33'),
(63, 'New Order Assigned', 'New order 584684 has been assigned to you', NULL, 5, 0, '2022-12-07 11:49:47', '2022-12-07 11:49:47'),
(64, 'Order Report Rejected', 'Report for 584684 has been rejected. Check the Remark & resubmit the report', NULL, 5, 2, '2022-12-07 12:27:05', '2022-12-07 12:27:05'),
(65, 'Order Report Rejected', 'Report for 584684 has been rejected. Check the Remark & resubmit the report', NULL, 5, 2, '2022-12-07 12:33:14', '2022-12-07 12:33:14'),
(66, 'New Order Assigned', 'New order 908768 has been assigned to you', NULL, 2, 0, '2022-12-07 12:50:42', '2022-12-07 12:50:42'),
(67, 'New Order Assigned', 'New order 702383 has been assigned to you', NULL, 2, 0, '2022-12-07 12:57:50', '2022-12-07 12:57:50'),
(68, 'Order Report Rejected', 'Report for 702383 has been rejected. Check the Remark & resubmit the report', NULL, 2, 2, '2022-12-07 13:00:43', '2022-12-07 13:00:43'),
(69, 'Order Report Rejected', 'Report for 584684 has been rejected. Check the Remark & resubmit the report', NULL, 5, 2, '2022-12-07 13:01:56', '2022-12-07 13:01:56'),
(70, 'New Order Assigned', 'New order 119279 has been assigned to you', NULL, 2, 0, '2022-12-07 13:08:35', '2022-12-07 13:08:35'),
(71, 'Order Report Rejected', 'Report for 584684 has been rejected. Check the Remark & resubmit the report', NULL, 5, 2, '2022-12-07 13:10:46', '2022-12-07 13:10:46'),
(72, 'Order Report Rejected', 'Report for 584684 has been rejected. Check the Remark & resubmit the report', NULL, 5, 2, '2022-12-07 13:16:16', '2022-12-07 13:16:16'),
(73, 'Order Report Rejected', 'Report for 584684 has been rejected. Check the Remark & resubmit the report', NULL, 5, 2, '2022-12-07 13:21:35', '2022-12-07 13:21:35'),
(74, 'Order Report Rejected', 'Report for 584684 has been rejected. Check the Remark & resubmit the report', NULL, 5, 2, '2022-12-07 13:24:32', '2022-12-07 13:24:32'),
(75, 'Order Report Rejected', 'Report for 119279 has been rejected. Check the Remark & resubmit the report', NULL, 2, 2, '2022-12-07 13:29:00', '2022-12-07 13:29:00'),
(76, 'Order Report Rejected', 'Report for 584684 has been rejected. Check the Remark & resubmit the report', NULL, 5, 2, '2022-12-08 07:10:07', '2022-12-08 07:10:07'),
(77, 'New Order Assigned', 'New order 188386 has been assigned to you', NULL, 3, 0, '2022-12-08 08:34:58', '2022-12-08 08:34:58'),
(78, 'New Order Assigned', 'New order 424987 has been assigned to you', NULL, 2, 0, '2022-12-08 12:55:25', '2022-12-08 12:55:25'),
(79, 'New Order Assigned', 'New order 452388 has been assigned to you', NULL, 2, 0, '2022-12-09 05:04:28', '2022-12-09 05:04:28'),
(80, 'New Order Assigned', 'New order 614289 has been assigned to you', NULL, 2, 0, '2022-12-09 05:49:42', '2022-12-09 05:49:42'),
(81, 'New Order Assigned', 'New order 339290 has been assigned to you', NULL, 3, 0, '2022-12-09 06:27:27', '2022-12-09 06:27:27'),
(82, 'Order Report Rejected', 'Report for 339290 has been rejected. Check the Remark & resubmit the report', NULL, 3, 2, '2022-12-09 10:06:41', '2022-12-09 10:06:41'),
(83, 'Order Report Rejected', 'Report for 339290 has been rejected. Check the Remark & resubmit the report', NULL, 3, 2, '2022-12-09 10:30:39', '2022-12-09 10:30:39'),
(84, 'Order Report Approved', 'Report for 519038 has been approved by the admin', NULL, 3, 2, '2022-12-10 06:01:23', '2022-12-10 06:01:23'),
(85, 'Order report generated', 'Congratulations! Your report for request 519038 has been generated. Check it in My Leads page', 23, NULL, 1, '2022-12-10 06:01:24', '2022-12-10 06:01:24'),
(86, 'New Order Assigned', 'New order 5406101 has been assigned to you', NULL, 2, 0, '2022-12-10 11:08:14', '2022-12-10 11:08:14'),
(87, 'New Order Assigned', 'New order 909599 has been assigned to you', NULL, NULL, 0, '2022-12-10 11:08:27', '2022-12-10 11:08:27'),
(88, 'New Order Assigned', 'New order 909599 has been assigned to you', NULL, 2, 0, '2022-12-10 11:28:03', '2022-12-10 11:28:03'),
(89, 'New Order Assigned', 'New order 706392 has been assigned to you', NULL, 2, 0, '2022-12-10 11:38:38', '2022-12-10 11:38:38'),
(90, 'New Order Assigned', 'New order 1965102 has been assigned to you', NULL, 2, 0, '2022-12-10 12:19:37', '2022-12-10 12:19:37'),
(91, 'New Order Assigned', 'New order 1965102 has been assigned to you', NULL, 6, 0, '2022-12-11 07:13:09', '2022-12-11 07:13:09'),
(92, 'Order Report Rejected', 'Report for 1965102 has been rejected. Check the Remark & resubmit the report', NULL, 6, 2, '2022-12-11 08:26:33', '2022-12-11 08:26:33'),
(93, 'Order Report Rejected', 'Report for 1965102 has been rejected. Check the Remark & resubmit the report', NULL, 6, 2, '2022-12-11 08:32:26', '2022-12-11 08:32:26'),
(94, 'Order Report Rejected', 'Report for 1965102 has been rejected. Check the Remark & resubmit the report', NULL, 6, 2, '2022-12-11 08:36:35', '2022-12-11 08:36:35'),
(95, 'New Order Assigned', 'New order 7691104 has been assigned to you', NULL, 2, 0, '2022-12-12 06:24:50', '2022-12-12 06:24:50'),
(96, 'New Order Assigned', 'New order 5338105 has been assigned to you', NULL, 3, 0, '2022-12-12 08:42:09', '2022-12-12 08:42:09'),
(97, 'New Order Assigned', 'New order 6166106 has been assigned to you', NULL, 3, 0, '2022-12-12 12:47:56', '2022-12-12 12:47:56'),
(98, 'New Order Assigned', 'New order 1141108 has been assigned to you', NULL, 3, 0, '2022-12-12 13:30:45', '2022-12-12 13:30:45'),
(99, 'New Order Assigned', 'New order 2053115 has been assigned to you', NULL, 3, 0, '2022-12-13 06:36:01', '2022-12-13 06:36:01'),
(100, 'New Order Assigned', 'New order 8911109 has been assigned to you', NULL, 3, 0, '2022-12-13 10:32:16', '2022-12-13 10:32:16'),
(101, 'New Order Assigned', 'New order 4427116 has been assigned to you', NULL, 3, 0, '2022-12-13 11:15:03', '2022-12-13 11:15:03'),
(102, 'New Order Assigned', 'New order 5183117 has been assigned to you', NULL, 7, 0, '2022-12-13 11:49:19', '2022-12-13 11:49:19'),
(103, 'Order Report Rejected', 'Report for 5183117 has been rejected. Check the Remark & resubmit the report', NULL, 7, 2, '2022-12-13 12:27:08', '2022-12-13 12:27:08'),
(104, 'New Order Assigned', 'New order 4798118 has been assigned to you', NULL, 7, 0, '2022-12-13 12:45:03', '2022-12-13 12:45:03'),
(105, 'Order Report Approved', 'Report for 188386 has been approved by the admin', NULL, 3, 2, '2022-12-13 12:52:25', '2022-12-13 12:52:25'),
(106, 'Order report generated', 'Congratulations! Your report for request 188386 has been generated. Check it in My Leads page', 16, NULL, 1, '2022-12-13 12:52:25', '2022-12-13 12:52:25'),
(107, 'New Order Assigned', 'New order 6573120 has been assigned to you', NULL, 6, 0, '2022-12-14 07:35:09', '2022-12-14 07:35:09'),
(108, 'New Order Assigned', 'New order 6573120 has been assigned to you', NULL, 5, 0, '2022-12-14 07:36:29', '2022-12-14 07:36:29'),
(109, 'New Order Assigned', 'New order 6573120 has been assigned to you', NULL, 6, 0, '2022-12-14 07:36:49', '2022-12-14 07:36:49'),
(110, 'Order Report Rejected', 'Report for 6573120 has been rejected. Check the Remark & resubmit the report', NULL, 6, 2, '2022-12-14 08:15:49', '2022-12-14 08:15:49'),
(111, 'Order Report Approved', 'Report for 6573120 has been approved by the admin', NULL, 6, 2, '2022-12-14 19:53:58', '2022-12-14 19:53:58'),
(112, 'Order report generated', 'Congratulations! Your report for request 6573120 has been generated. Check it in My Leads page', 28, NULL, 1, '2022-12-14 19:53:58', '2022-12-14 19:53:58'),
(113, 'New Order Assigned', 'New order 6081122 has been assigned to you', NULL, 7, 0, '2022-12-16 08:27:15', '2022-12-16 08:27:15'),
(114, 'New Order Assigned', 'New order 2729123 has been assigned to you', NULL, 6, 0, '2022-12-17 10:34:06', '2022-12-17 10:34:06'),
(115, 'New Order Assigned', 'New order  has been assigned to you', NULL, 6, 0, '2022-12-18 09:24:21', '2022-12-18 09:24:21'),
(116, 'New Order Assigned', 'New order 4054125 has been assigned to you', NULL, 6, 0, '2022-12-18 09:28:18', '2022-12-18 09:28:18'),
(117, 'New Order Assigned', 'New order 8168127 has been assigned to you', NULL, 6, 0, '2022-12-18 12:54:50', '2022-12-18 12:54:50'),
(118, 'New Order Assigned', 'New order 4054125 has been assigned to you', NULL, 9, 0, '2022-12-19 10:51:25', '2022-12-19 10:51:25'),
(119, 'New Order Assigned', 'New order 2729123 has been assigned to you', NULL, 10, 0, '2022-12-19 10:57:25', '2022-12-19 10:57:25'),
(120, 'New Order Assigned', 'New order 8168127 has been assigned to you', NULL, 13, 0, '2022-12-19 11:08:36', '2022-12-19 11:08:36'),
(121, 'New Order Assigned', 'New order 218677 has been assigned to you', NULL, 11, 0, '2022-12-19 11:12:03', '2022-12-19 11:12:03'),
(122, 'New Order Assigned', 'New order 1446132 has been assigned to you', NULL, 14, 0, '2022-12-19 17:16:38', '2022-12-19 17:16:38'),
(123, 'New Order Assigned', 'New order 9876130 has been assigned to you', NULL, 6, 0, '2022-12-20 13:18:42', '2022-12-20 13:18:42'),
(124, 'New Order Assigned', 'New order 5585129 has been assigned to you', NULL, 6, 0, '2022-12-20 13:31:32', '2022-12-20 13:31:32'),
(125, 'New Order Assigned', 'New order 8168127 has been assigned to you', NULL, NULL, 0, '2022-12-21 09:20:51', '2022-12-21 09:20:51'),
(126, 'New Order Assigned', 'New order 7765150 has been assigned to you', NULL, 40, 0, '2022-12-28 16:36:57', '2022-12-28 16:36:57'),
(127, 'New Order Assigned', 'New order 4054125 has been assigned to you', NULL, 6, 0, '2022-12-30 15:51:18', '2022-12-30 15:51:18'),
(128, 'New Order Assigned', 'New order 6899151 has been assigned to you', NULL, 9, 0, '2023-01-02 05:13:50', '2023-01-02 05:13:50'),
(129, 'New Order Assigned', 'New order 4635110 has been assigned to you', NULL, 36, 0, '2023-01-02 08:02:09', '2023-01-02 08:02:09'),
(130, 'Order Report Rejected', 'Report for 6899151 has been rejected. Check the Remark & resubmit the report', NULL, 9, 2, '2023-01-02 08:55:58', '2023-01-02 08:55:58'),
(131, 'Order Report Approved', 'Report for 6899151 has been approved by the admin', NULL, 9, 2, '2023-01-02 09:20:28', '2023-01-02 09:20:28'),
(132, 'Order report generated', 'Congratulations! Your report for request 6899151 has been generated. Check it in My Leads page', 68, NULL, 1, '2023-01-02 09:20:28', '2023-01-02 09:20:28'),
(133, 'New Order Assigned', 'New order 311257 has been assigned to you', NULL, 10, 0, '2023-01-03 05:31:44', '2023-01-03 05:31:44'),
(134, 'New Order Assigned', 'New order 4798118 has been assigned to you', NULL, 11, 0, '2023-01-03 05:32:04', '2023-01-03 05:32:04'),
(135, 'New Order Assigned', 'New order 206067 has been assigned to you', NULL, 12, 0, '2023-01-04 09:16:35', '2023-01-04 09:16:35'),
(136, 'New Order Assigned', 'New order 678256 has been assigned to you', NULL, 10, 0, '2023-01-05 06:05:00', '2023-01-05 06:05:00'),
(137, 'New Order Assigned', 'New order 145575 has been assigned to you', NULL, 11, 0, '2023-01-05 06:17:25', '2023-01-05 06:17:25'),
(138, 'New Order Assigned', 'New order 235273 has been assigned to you', NULL, 49, 0, '2023-01-05 06:18:24', '2023-01-05 06:18:24'),
(139, 'Order Report Rejected', 'Report for 678256 has been rejected. Check the Remark & resubmit the report', NULL, 10, 2, '2023-01-05 06:52:11', '2023-01-05 06:52:11'),
(140, 'Order Report Approved', 'Report for 678256 has been approved by the admin', NULL, 10, 2, '2023-01-05 06:57:52', '2023-01-05 06:57:52'),
(141, 'Order report generated', 'Congratulations! Your report for request 678256 has been generated. Check it in My Leads page', 17, NULL, 1, '2023-01-05 06:57:52', '2023-01-05 06:57:52'),
(142, 'Order Report Rejected', 'Report for 4798118 has been rejected. Check the Remark & resubmit the report', NULL, 11, 2, '2023-01-05 07:19:58', '2023-01-05 07:19:58'),
(143, 'Order Report Rejected', 'Report for 235273 has been rejected. Check the Remark & resubmit the report', NULL, 49, 2, '2023-01-05 08:46:52', '2023-01-05 08:46:52'),
(144, 'Order Report Approved', 'Report for 235273 has been approved by the admin', NULL, 49, 2, '2023-01-05 08:50:09', '2023-01-05 08:50:09'),
(145, 'Order report generated', 'Congratulations! Your report for request 235273 has been generated. Check it in My Leads page', 16, NULL, 1, '2023-01-05 08:50:10', '2023-01-05 08:50:10'),
(146, 'Order Report Rejected', 'Report for 7765150 has been rejected. Check the Remark & resubmit the report', NULL, 40, 2, '2023-01-05 08:53:25', '2023-01-05 08:53:25'),
(147, 'Order Report Approved', 'Report for 7765150 has been approved by the admin', NULL, 40, 2, '2023-01-05 08:57:42', '2023-01-05 08:57:42'),
(148, 'Order report generated', 'Congratulations! Your report for request 7765150 has been generated. Check it in My Leads page', 28, NULL, 1, '2023-01-05 08:57:43', '2023-01-05 08:57:43'),
(149, 'New Order Assigned', 'New order 8458155 has been assigned to you', NULL, 6, 0, '2023-01-06 07:17:36', '2023-01-06 07:17:36'),
(150, 'New Order Assigned', 'New order 90253 has been assigned to you', NULL, 47, 0, '2023-01-06 10:27:06', '2023-01-06 10:27:06'),
(151, 'New Order Assigned', 'New order 8168127 has been assigned to you', NULL, 49, 0, '2023-01-06 10:47:54', '2023-01-06 10:47:54'),
(152, 'New Order Assigned', 'New order 8458155 has been assigned to you', NULL, 6, 0, '2023-01-06 11:43:32', '2023-01-06 11:43:32'),
(153, 'Order Report Rejected', 'Report for 8458155 has been rejected. Check the Remark & resubmit the report', NULL, 6, 2, '2023-01-06 12:05:32', '2023-01-06 12:05:32'),
(154, 'Order Report Rejected', 'Report for 8458155 has been rejected. Check the Remark & resubmit the report', NULL, 6, 2, '2023-01-06 12:28:31', '2023-01-06 12:28:31'),
(155, 'Order Report Approved', 'Report for 8458155 has been approved by the admin', NULL, 6, 2, '2023-01-06 12:32:23', '2023-01-06 12:32:23'),
(156, 'Order report generated', 'Congratulations! Your report for request 8458155 has been generated. Check it in My Leads page', 28, NULL, 1, '2023-01-06 12:32:24', '2023-01-06 12:32:24'),
(157, 'New Order Assigned', 'New order 5241160 has been assigned to you', NULL, 12, 0, '2023-01-07 05:04:28', '2023-01-07 05:04:28'),
(158, 'New Order Assigned', 'New order 7221161 has been assigned to you', NULL, 11, 0, '2023-01-07 06:06:00', '2023-01-07 06:06:00'),
(159, 'New Order Assigned', 'New order 8834162 has been assigned to you', NULL, 40, 0, '2023-01-07 06:25:50', '2023-01-07 06:25:50'),
(160, 'Order Report Rejected', 'Report for 8834162 has been rejected. Check the Remark & resubmit the report', NULL, 40, 2, '2023-01-07 08:36:50', '2023-01-07 08:36:50'),
(161, 'Order Report Approved', 'Report for 8834162 has been approved by the admin', NULL, 40, 2, '2023-01-07 08:50:55', '2023-01-07 08:50:55'),
(162, 'Order report generated', 'Congratulations! Your report for request 8834162 has been generated. Check it in My Leads page', 29, NULL, 1, '2023-01-07 08:50:56', '2023-01-07 08:50:56'),
(163, 'Order Report Rejected', 'Report for 7221161 has been rejected. Check the Remark & resubmit the report', NULL, 11, 2, '2023-01-07 09:08:32', '2023-01-07 09:08:32'),
(164, 'Order Report Approved', 'Report for 7221161 has been approved by the admin', NULL, 11, 2, '2023-01-07 09:36:30', '2023-01-07 09:36:30'),
(165, 'Order report generated', 'Congratulations! Your report for request 7221161 has been generated. Check it in My Leads page', 29, NULL, 1, '2023-01-07 09:36:31', '2023-01-07 09:36:31'),
(166, 'New Order Assigned', 'New order 6745164 has been assigned to you', NULL, 47, 0, '2023-01-07 12:19:45', '2023-01-07 12:19:45'),
(167, 'New Order Assigned', 'New order 1446132 has been assigned to you', NULL, 6, 0, '2023-01-07 12:32:08', '2023-01-07 12:32:08'),
(168, 'New Order Assigned', 'New order 1446132 has been assigned to you', NULL, 50, 0, '2023-01-08 07:34:44', '2023-01-08 07:34:44'),
(169, 'New Order Assigned', 'New order 4635110 has been assigned to you', NULL, 11, 0, '2023-01-08 08:34:48', '2023-01-08 08:34:48'),
(170, 'Order Report Rejected', 'Report for 1446132 has been rejected. Check the Remark & resubmit the report', NULL, 50, 2, '2023-01-08 09:33:36', '2023-01-08 09:33:36'),
(171, 'Order Report Rejected', 'Report for 4635110 has been rejected. Check the Remark & resubmit the report', NULL, 11, 2, '2023-01-08 09:43:58', '2023-01-08 09:43:58'),
(172, 'Order Report Approved', 'Report for 1446132 has been approved by the admin', NULL, 50, 2, '2023-01-08 09:48:50', '2023-01-08 09:48:50'),
(173, 'Order report generated', 'Congratulations! Your report for request 1446132 has been generated. Check it in My Leads page', 28, NULL, 1, '2023-01-08 09:48:50', '2023-01-08 09:48:50'),
(174, 'Order Report Approved', 'Report for 4635110 has been approved by the admin', NULL, 11, 2, '2023-01-08 09:52:22', '2023-01-08 09:52:22'),
(175, 'Order report generated', 'Congratulations! Your report for request 4635110 has been generated. Check it in My Leads page', 23, NULL, 1, '2023-01-08 09:52:22', '2023-01-08 09:52:22'),
(176, 'New Order Assigned', 'New order 1230165 has been assigned to you', NULL, 50, 0, '2023-01-09 03:54:25', '2023-01-09 03:54:25'),
(177, 'New Order Assigned', 'New order 1230165 has been assigned to you', NULL, 6, 0, '2023-01-10 06:44:15', '2023-01-10 06:44:15'),
(178, 'New Order Assigned', 'New order 1230165 has been assigned to you', NULL, 51, 0, '2023-01-10 07:44:50', '2023-01-10 07:44:50'),
(179, 'New Order Assigned', 'New order 1446132 has been assigned to you', NULL, 51, 0, '2023-01-10 07:45:56', '2023-01-10 07:45:56'),
(180, 'New Order Assigned', 'New order 2053115 has been assigned to you', NULL, 51, 0, '2023-01-10 07:46:28', '2023-01-10 07:46:28'),
(181, 'New Order Assigned', 'New order 24514 has been assigned to you', NULL, 51, 0, '2023-01-10 07:46:43', '2023-01-10 07:46:43'),
(182, 'New Order Assigned', 'New order 74977 has been assigned to you', NULL, 52, 0, '2023-01-11 14:54:49', '2023-01-11 14:54:49'),
(183, 'New Order Assigned', 'New order 1500172 has been assigned to you', NULL, 53, 0, '2023-01-14 10:51:56', '2023-01-14 10:51:56'),
(184, 'Order Report Rejected', 'Report for 1500172 has been rejected. Check the Remark & resubmit the report', NULL, 53, 2, '2023-01-14 12:51:02', '2023-01-14 12:51:02'),
(185, 'Order Report Approved', 'Report for 1500172 has been approved by the admin', NULL, 53, 2, '2023-01-14 13:03:20', '2023-01-14 13:03:20'),
(186, 'Order report generated', 'Congratulations! Your report for request 1500172 has been generated. Check it in My Leads page', 95, NULL, 1, '2023-01-14 13:03:21', '2023-01-14 13:03:21'),
(187, 'New Order Assigned', 'New order 2376174 has been assigned to you', NULL, 11, 0, '2023-01-17 01:59:31', '2023-01-17 01:59:31'),
(188, 'Order Report Rejected', 'Report for 2376174 has been rejected. Check the Remark & resubmit the report', NULL, 11, 2, '2023-01-17 07:57:44', '2023-01-17 07:57:44'),
(189, 'Order Report Approved', 'Report for 2376174 has been approved by the admin', NULL, 11, 2, '2023-01-17 08:06:09', '2023-01-17 08:06:09'),
(190, 'Order report generated', 'Congratulations! Your report for request 2376174 has been generated. Check it in My Leads page', 99, NULL, 1, '2023-01-17 08:06:10', '2023-01-17 08:06:10'),
(191, 'New Order Assigned', 'New order 1422176 has been assigned to you', NULL, 40, 0, '2023-01-18 04:45:55', '2023-01-18 04:45:55'),
(192, 'New Order Assigned', 'New order 6724178 has been assigned to you', NULL, 6, 0, '2023-01-18 07:19:24', '2023-01-18 07:19:24'),
(193, 'Order Report Rejected', 'Report for 1422176 has been rejected. Check the Remark & resubmit the report', NULL, 40, 2, '2023-01-18 07:30:15', '2023-01-18 07:30:15'),
(194, 'Order Report Approved', 'Report for 1422176 has been approved by the admin', NULL, 40, 2, '2023-01-18 07:38:15', '2023-01-18 07:38:15'),
(195, 'Order report generated', 'Congratulations! Your report for request 1422176 has been generated. Check it in My Leads page', 102, NULL, 1, '2023-01-18 07:38:16', '2023-01-18 07:38:16'),
(196, 'New Order Assigned', 'New order 6724178 has been assigned to you', NULL, NULL, 0, '2023-01-18 08:58:40', '2023-01-18 08:58:40'),
(197, 'New Order Assigned', 'New order 2472179 has been assigned to you', NULL, 6, 0, '2023-01-18 08:58:51', '2023-01-18 08:58:51'),
(198, 'New Order Assigned', 'New order 2472179 has been assigned to you', NULL, 5, 0, '2023-01-18 10:30:48', '2023-01-18 10:30:48'),
(199, 'Order Report Approved', 'Report for 2472179 has been approved by the admin', NULL, 5, 2, '2023-01-18 11:45:46', '2023-01-18 11:45:46'),
(200, 'Order report generated', 'Congratulations! Your report for request 2472179 has been generated. Check it in My Leads page', 116, NULL, 1, '2023-01-18 11:45:46', '2023-01-18 11:45:46'),
(201, 'New Order Assigned', 'New order 3015182 has been assigned to you', NULL, 9, 0, '2023-01-23 05:17:46', '2023-01-23 05:17:46'),
(202, 'Order Report Approved', 'Report for 3015182 has been approved by the admin', NULL, 9, 2, '2023-01-23 08:41:40', '2023-01-23 08:41:40'),
(203, 'Order report generated', 'Congratulations! Your report for request 3015182 has been generated. Check it in My Leads page', 141, NULL, 1, '2023-01-23 08:41:41', '2023-01-23 08:41:41'),
(204, 'New Order Assigned', 'New order 8131187 has been assigned to you', NULL, 11, 0, '2023-01-27 04:06:26', '2023-01-27 04:06:26'),
(205, 'Order Report Rejected', 'Report for 8131187 has been rejected. Check the Remark & resubmit the report', NULL, 11, 2, '2023-01-27 10:19:07', '2023-01-27 10:19:07'),
(206, 'Order Report Approved', 'Report for 8131187 has been approved by the admin', NULL, 11, 2, '2023-01-27 10:38:44', '2023-01-27 10:38:44'),
(207, 'Order report generated', 'Congratulations! Your report for request 8131187 has been generated. Check it in My Leads page', 145, NULL, 1, '2023-01-27 10:38:45', '2023-01-27 10:38:45'),
(208, 'New Order Assigned', 'New order 4124188 has been assigned to you', NULL, 54, 0, '2023-01-28 09:07:03', '2023-01-28 09:07:03'),
(209, 'New Order Assigned', 'New order 4124188 has been assigned to you', NULL, 11, 0, '2023-01-28 09:17:18', '2023-01-28 09:17:18'),
(210, 'Order Report Approved', 'Report for 6745164 has been approved by the admin', NULL, 47, 2, '2023-01-28 09:34:50', '2023-01-28 09:34:50'),
(211, 'Order report generated', 'Congratulations! Your report for request 6745164 has been generated. Check it in My Leads page', 79, NULL, 1, '2023-01-28 09:34:51', '2023-01-28 09:34:51'),
(212, 'New Order Assigned', 'New order 6511190 has been assigned to you', NULL, 49, 0, '2023-01-30 07:34:02', '2023-01-30 07:34:02'),
(213, 'New Order Assigned', 'New order 5511192 has been assigned to you', NULL, 49, 0, '2023-01-30 07:57:33', '2023-01-30 07:57:33'),
(214, 'New Order Assigned', 'New order 5511192 has been assigned to you', NULL, NULL, 0, '2023-01-30 08:07:54', '2023-01-30 08:07:54'),
(215, 'New Order Assigned', 'New order 5511192 has been assigned to you', NULL, 49, 0, '2023-01-30 08:08:37', '2023-01-30 08:08:37'),
(216, 'Order Report Approved', 'Report for 6511190 has been approved by the admin', NULL, 49, 2, '2023-01-30 10:26:39', '2023-01-30 10:26:39'),
(217, 'Order report generated', 'Congratulations! Your report for request 6511190 has been generated. Check it in My Leads page', 116, NULL, 1, '2023-01-30 10:26:40', '2023-01-30 10:26:40'),
(218, 'New Order Assigned', 'New order 81361 has been assigned to you', NULL, 5, 0, '2023-05-24 08:29:08', '2023-05-24 08:29:08'),
(219, 'Order Report Approved', 'Report for 81361 has been approved by the admin', NULL, 5, 2, '2023-05-24 11:20:46', '2023-05-24 11:20:46'),
(220, 'Order report generated', 'Congratulations! Your report for request 81361 has been generated. Check it in My Leads page', 1, NULL, 1, '2023-05-24 11:20:47', '2023-05-24 11:20:47'),
(221, 'New Order Assigned', 'New order 54693 has been assigned to you', NULL, 5, 0, '2023-05-29 08:43:56', '2023-05-29 08:43:56'),
(222, 'Order Report Rejected', 'Report for 54693 has been rejected. Check the Remark & resubmit the report', NULL, 5, 2, '2023-05-29 11:41:17', '2023-05-29 11:41:17'),
(223, 'New Order Assigned', 'New order 63147 has been assigned to you', NULL, 5, 0, '2023-05-29 11:52:19', '2023-05-29 11:52:19'),
(224, 'New Order Assigned', 'New order 28028 has been assigned to you', NULL, 5, 0, '2023-05-30 11:07:49', '2023-05-30 11:07:49'),
(225, 'New Order Assigned', 'New order 81361 has been assigned to you', NULL, 57, 0, '2023-06-08 08:36:40', '2023-06-08 08:36:40'),
(226, 'New Order Assigned', 'New order 81361 has been assigned to you', NULL, 58, 0, '2023-06-09 09:59:08', '2023-06-09 09:59:08'),
(227, 'New Order Assigned', 'New order 54693 has been assigned to you', NULL, 58, 0, '2023-06-09 10:00:07', '2023-06-09 10:00:07'),
(228, 'New Order Assigned', 'New order 81361 has been assigned to you', NULL, 6, 0, '2023-06-09 10:00:24', '2023-06-09 10:00:24'),
(229, 'New Order Assigned', 'New order 54693 has been assigned to you', NULL, 56, 0, '2023-06-12 11:23:09', '2023-06-12 11:23:09'),
(230, 'New Order Assigned', 'New order 115345 has been assigned to you', NULL, 57, 0, '2023-06-14 08:16:14', '2023-06-14 08:16:14'),
(231, 'Order Report Rejected', 'Report for 115345 has been rejected. Check the Remark & resubmit the report', NULL, 57, 2, '2023-06-14 08:59:04', '2023-06-14 08:59:04'),
(232, 'New Order Assigned', 'New order 63147 has been assigned to you', NULL, 56, 0, '2023-06-14 10:15:15', '2023-06-14 10:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `seller_name` varchar(250) NOT NULL,
  `contact_no` varchar(111) NOT NULL,
  `house_no` varchar(500) NOT NULL,
  `landmark` varchar(500) NOT NULL,
  `pincode` varchar(111) NOT NULL,
  `state` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `inspection_date` date NOT NULL,
  `brand_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `manfacturing_year` varchar(111) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `inspection_price` varchar(111) NOT NULL,
  `discount` varchar(111) DEFAULT NULL,
  `total` varchar(111) NOT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1-Pending, 2-Partner-Assign, 3-Start, 4-Submitted, 5-Approved, 6-Cancelled\r\n',
  `payment_status` int(1) NOT NULL DEFAULT '0' COMMENT '0-unpaid, 1-paid',
  `document_status` int(1) NOT NULL DEFAULT '0' COMMENT '0-Pending, 1-Approved, 2- Rejected',
  `document_pdf` varchar(500) DEFAULT NULL,
  `document_update` varchar(500) DEFAULT NULL,
  `reason` varchar(500) DEFAULT NULL,
  `flag` int(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_no`, `seller_name`, `contact_no`, `house_no`, `landmark`, `pincode`, `state`, `city`, `inspection_date`, `brand_id`, `model_id`, `manfacturing_year`, `coupon_id`, `inspection_price`, `discount`, `total`, `partner_id`, `user_id`, `status`, `payment_status`, `document_status`, `document_pdf`, `document_update`, `reason`, `flag`, `created_at`, `updated_at`) VALUES
(1, 81361, 'pratik Banote', '8652323848', 'Sainath nagar, Ghatkopar Weat', 'Madhavbag Holl', '400086', 'Maharashtra', 'Mumbai', '2023-05-24', 1, 1, '2016', NULL, '1', '0.0', '1.0', 6, 1, 3, 1, 1, 'images/invoice/inspection_report_81361.pdf', '2023-05-24 16:37:57', NULL, 1, '2023-05-24 06:12:32', '2023-06-09 10:00:50'),
(3, 54693, 'Pratik Banote', '8652323848', 'Sainath nagar', 'madhavbag holl', '400086', 'Maharashtra', 'Mumbai', '2023-05-29', 1, 6, '2023', NULL, '1', '0.0', '1.0', 56, 1, 4, 1, 0, 'images/invoice/inspection_report_54693.pdf', '2023-06-12 17:10:30', 'uhgv7yg', 1, '2023-05-29 08:39:13', '2023-06-12 11:40:52'),
(7, 63147, 'Abhijit Sir', '8652323848', 'SLITS', 'Dombivali Station', '400086', 'Maharashtra', 'Mumbai', '2023-05-29', 1, 1, '2023', NULL, '1', '0.0', '1.0', 56, 1, 4, 1, 0, 'images/invoice/inspection_report_63147.pdf', '2023-06-14 15:57:21', NULL, 1, '2023-05-29 11:50:08', '2023-06-14 10:27:35'),
(8, 28028, 'Pramod Testing', '8652323848', 'Sainath Nagar', 'Madhavbag Holl', '400086', 'Maharashtra', 'Mumbai', '2023-05-30', 1, 9, '2020', NULL, '1', '0.0', '1.0', 5, 1, 4, 1, 0, 'images/invoice/inspection_report_28028.pdf', '2023-05-30 17:50:53', NULL, 1, '2023-05-30 11:04:08', '2023-05-30 12:21:09'),
(43, 724543, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 1, '2023-06-13 07:33:48', '2023-06-14 08:15:53'),
(44, 567744, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 1, '2023-06-13 07:33:53', '2023-06-14 08:15:53'),
(45, 115345, '374y4y4y', '9111111115', 'ywyeye', 'ywywyw', '900000', 'Himachal Pradesh', 'Mandi', '2023-06-24', 4, 56, '2017', NULL, '999', '0.0', '999.0', 57, 1, 4, 0, 0, 'images/invoice/inspection_report_115345.pdf', '2023-06-14 14:30:20', 'Add special comments', 1, '2023-06-13 07:34:50', '2023-06-14 09:00:36'),
(46, 981646, 'yftf', '9050505050', 'gyccgyc', 'hcyv6', '600686', 'Chandigarh', 'Chandigarh', '2023-06-13', 10, 141, '2017', NULL, '999', '0.0', '999.0', NULL, 1, 6, 0, 0, NULL, NULL, NULL, 1, '2023-06-13 12:15:37', '2023-06-16 10:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adhaar_front` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adhaar_back` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `mobile`, `email`, `adhaar_front`, `adhaar_back`, `pan_card`, `uuid`, `created_at`, `updated_at`) VALUES
(46, 'Test', '7678049090', 'test@gmail.com', NULL, NULL, NULL, '73827d36-deab-46eb-859c-3ac4e52e7617', '2022-12-30 05:47:25', '2023-06-08 08:18:46'),
(48, 'abc', '7678049090', 'abc@gmail.com', NULL, NULL, NULL, NULL, '2023-01-04 06:48:12', '2023-01-04 06:48:12'),
(49, 'Prasad Patnkar', '8976724909', 'Prasad Patnkar @gmail.con', NULL, NULL, NULL, 'a4be7213-51b3-4a89-a447-1163d99835e7', '2023-01-29 14:19:06', '2023-01-30 09:01:10'),
(50, 'Swapnil Sapne', '09987690791', 'swapthedoct55@gmail.com', NULL, NULL, NULL, NULL, '2023-01-29 14:19:55', '2023-01-29 14:19:55'),
(51, 'Kunal Jadhav', '96196 65919', 'Kuku_leo2006@yahoo.com', NULL, NULL, NULL, NULL, '2023-01-29 14:21:45', '2023-01-29 14:21:45'),
(52, 'Jaweed Shaikh', '82089 72285', 'jawed2260@gmail.com', NULL, NULL, NULL, NULL, '2023-01-29 14:24:39', '2023-01-29 14:24:39'),
(53, 'Qadeer Shaikh', '9819269766', 'shaikhqadeer12@gmail.com', NULL, NULL, NULL, NULL, '2023-01-29 14:55:20', '2023-01-29 14:55:20'),
(54, 'Prasad patnkar', '8976724909', 'Pra.pata1612@gmail.com', NULL, NULL, NULL, NULL, '2023-01-30 08:26:28', '2023-01-30 08:26:28'),
(55, 'Imran sayyed', '9833158555', 'Mycarsdombivali@gmail.com', 'images/documents/aadhar/1678882640aadhar_front.jpeg', 'images/documents/aadhar/1678882640aadhar_back.jpeg', 'images/documents/pan/1678882640pan.jpeg', 'b76f4d71-5096-417a-8339-98a0b3a7c108', '2023-01-30 08:30:21', '2023-03-29 22:07:14'),
(56, 'Pratik_Testing', '9333333333', 'Test@gmail.com', NULL, NULL, NULL, '339055ed-10f9-48d8-a68f-782755808c77', '2023-06-02 05:13:31', '2023-06-16 05:49:47'),
(57, 'Atul Pagare', '8600005665', 'atulpgr86@gmail.com', NULL, NULL, NULL, 'a236b7ec-8384-486a-bcbd-4211909db7ae', '2023-06-08 08:29:28', '2023-06-16 10:58:09'),
(58, 'Kishor Dorge', '8850550875', 'doragekishor25@gmail.com', NULL, NULL, NULL, 'b2803339-ad6d-4ad9-8bb8-c77da9ffa6d1', '2023-06-09 09:58:25', '2023-06-16 10:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-unpaid, 1-paid, 2- Processing',
  `fee` int(11) NOT NULL,
  `orderid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `flag` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `order_id`, `name`, `mobile`, `email`, `status`, `fee`, `orderid`, `transaction_id`, `flag`, `created_at`, `updated_at`) VALUES
(136, 1, 1, 'pratik Banote', 8652323848, 'teat@gmail.com', 1, 1, '16849087521-1', '20230524011030000868095767427700543', 1, '2023-05-24 06:12:32', '2023-05-24 11:10:32'),
(138, 1, 3, 'Pratik Banote', 8652323848, 'teat@gmail.com', 1, 1, '16853495533-3', '20230529010980000869944592777280822', 1, '2023-05-29 08:39:13', '2023-05-29 12:23:25'),
(142, 1, 7, 'Abhijit Sir', 8652323848, 'teat@gmail.com', 1, 1, '16853610087-7', '20230529010900000869992640807638557', 1, '2023-05-29 11:50:08', '2023-05-29 12:23:25'),
(143, 1, 8, 'Pramod Testing', 8652323848, 'teat@gmail.com', 1, 1, '16854446488-8', '20230530010800000870343451756510231', 1, '2023-05-30 11:04:08', '2023-06-01 08:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pre_orders`
--

CREATE TABLE `pre_orders` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `seller_name` varchar(250) NOT NULL,
  `contact_no` varchar(111) NOT NULL,
  `house_no` varchar(500) NOT NULL,
  `landmark` varchar(500) NOT NULL,
  `pincode` varchar(111) NOT NULL,
  `state` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `inspection_date` date NOT NULL,
  `brand_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `manfacturing_year` varchar(111) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `inspection_price` varchar(111) NOT NULL,
  `discount` varchar(111) DEFAULT NULL,
  `total` varchar(111) NOT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1-Pending, 2-Partner-Assign, 3-Start, 4-Submitted, 5-Approved, 6-Cancelled\r\n',
  `payment_status` int(1) NOT NULL DEFAULT '0' COMMENT '0-unpaid, 1-paid',
  `document_status` int(1) NOT NULL DEFAULT '0' COMMENT '0-Pending, 1-Approved, 2- Rejected',
  `document_pdf` varchar(500) DEFAULT NULL,
  `document_update` varchar(500) DEFAULT NULL,
  `reason` varchar(500) DEFAULT NULL,
  `flag` int(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pre_orders`
--

INSERT INTO `pre_orders` (`id`, `order_id`, `order_no`, `seller_name`, `contact_no`, `house_no`, `landmark`, `pincode`, `state`, `city`, `inspection_date`, `brand_id`, `model_id`, `manfacturing_year`, `coupon_id`, `inspection_price`, `discount`, `total`, `partner_id`, `user_id`, `status`, `payment_status`, `document_status`, `document_pdf`, `document_update`, `reason`, `flag`, `created_at`, `updated_at`) VALUES
(1, 1, 11161, 'Jignesh', '7874564345', '90/A Thane', 'Kachi sadak', '400235', 'Maharashtra', 'Thane', '2022-10-02', 2, 1, '2015', NULL, '500', NULL, '500', 2, 1, 4, 1, 0, NULL, NULL, NULL, 1, '2022-09-30 00:56:00', '2023-05-24 06:14:14'),
(2, 2, 76822, 'Harsh', '7874564345', '90/A Thane', 'Kachi sadak', '400235', 'Maharashtra', 'Thane', '2022-10-02', 4, 3, '2015', NULL, '500', NULL, '500', NULL, 1, 4, 0, 0, 'images/invoice/inspection_report_76822.pdf', '2022-12-08 16:36:30', NULL, 1, '2022-09-30 01:11:14', '2022-12-08 11:06:30'),
(3, 3, 90253, 'Harsh', '7874564345', '90/A Thane', 'Kachi sadak', '400235', 'Maharashtra', 'Thane', '2022-10-02', 4, 3, '2015', NULL, '500', NULL, '500', 47, 1, 2, 1, 0, NULL, NULL, NULL, 1, '2022-10-03 07:56:34', '2023-05-29 08:43:46'),
(4, 4, 24514, 'seller', '9090909090', '001,alora apart,curve road', 'near jalaram food shop,Dombivli West', '40000006851', 'Maharashtra', 'Dombivli', '2022-10-01', 1, 1, '2020', NULL, '500', NULL, '500', NULL, 10, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-03 08:03:24', '2022-11-01 06:21:37'),
(5, 5, 99555, 'fdfgd', '6546546546', 'fghfghf', 'fghfgh', 'fhfgh', 'fhfgh', 'fghfgh', '2022-10-19', 2, 3, '2013', NULL, '800', '0.0', '800.0', 2, 8, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-03 10:52:01', '2022-10-25 01:55:30'),
(6, 6, 95906, 'seller', '9090909090', '001,alora apart, curve road,', 'near jalaram food shop, Dombivli west', '4000000000048747', 'Maharashtra', 'DOMBIVLI', '2022-10-03', 1, 1, '2020', NULL, '500', '5.0', '495.0', NULL, 9, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-03 12:08:19', '2022-10-04 07:20:51'),
(7, 7, 74977, 'seller', '9090909090', 'Dombivli', 'dombivali west', '35457788', 'Maharashtra', 'dombivali', '2022-10-03', 2, 3, '2018', NULL, '800', '5.0', '795.0', NULL, 9, 1, 1, 0, NULL, NULL, NULL, 1, '2022-10-03 12:32:33', '2023-05-29 11:51:36'),
(8, 8, 64038, 'seller 1', '9292929292', '001,alora apart,curve road', 'near jalaram food shop, Dombivli west', '4000000000082772', 'Maharashtra', 'Dombivli', '2022-10-04', 3, 4, '2022', NULL, '1000', '0.0', '1000.0', NULL, 12, 1, 1, 0, NULL, NULL, NULL, 1, '2022-10-04 06:04:30', '2023-05-30 11:05:21'),
(9, 9, 44289, 'dfgdfg', '5464565464', '4564', 'fhf', 'rthr', 'Maharashtra', 'Mumbai', '2029-10-17', 3, 4, '2016', NULL, '1000', '0.0', '1000.0', NULL, 8, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-04 11:53:58', '2022-10-04 07:20:51'),
(10, 10, 759410, 'fyhfg', '6454564564', 'gh', 'fghfgh', '675', 'Madhya Pradesh', 'Jabalpur', '2022-10-19', 3, 4, '2017', NULL, '1000', '0.0', '1000.0', NULL, 8, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-04 11:54:52', '2022-10-04 07:20:51'),
(11, 11, 966311, 'sdf', '3453454565', 'dfgg', 'erg', 'erge', 'Himachal Pradesh', 'Nahan', '2022-10-26', 3, 4, '2018', NULL, '1000', '0.0', '1000.0', NULL, 8, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-04 11:56:53', '2022-10-04 07:20:51'),
(12, 12, 676912, 'v', '4564564564', 'fghf', 'fgh', '54645645', 'Andhra Pradesh', 'Kakinada', '2022-10-11', 2, 3, '2017', NULL, '800', '0.0', '800.0', NULL, 8, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-04 11:58:41', '2022-10-04 07:20:51'),
(13, 13, 120913, 'fgh', '5675675767', 'ghhg', 'ghjh', '5465454', 'Tripura', 'Udaipur', '2022-10-20', 2, 3, '2018', NULL, '800', '0.0', '800.0', 2, 8, 4, 0, 0, 'images/invoice/inspection_report_120913.pdf', '2022-12-06 13:41:06', NULL, 1, '2022-10-04 11:59:47', '2022-12-06 08:11:13'),
(14, 14, 301614, 'seller-04', '9090909090', '001,alora apart, curve road', 'near jalaram food shop,Dombivli west', '4000000000727727', 'Maharashtra', 'Kalyan-Dombivali', '2022-10-04', 1, 6, '2020', NULL, '1000', '0.0', '1000.0', NULL, 9, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-04 13:08:39', '2022-10-04 07:57:05'),
(15, 15, 513615, 'jshejhd', '9090909090', 'ushehje', 'jwhjsjsj', '7262728', 'Punjab', 'Amritsar', '2022-10-04', 1, 6, '2018', NULL, '1000', '0.0', '1000.0', 2, 9, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-04 13:22:16', '2022-10-06 01:40:16'),
(16, 16, 693216, 'fghh', '5675675675', 'hg', 'fghf', 'fghfg', 'Maharashtra', 'Nagpur', '2022-10-18', 2, 3, '2017', NULL, '800', '0.0', '800.0', NULL, 8, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-06 10:34:41', '2022-10-07 00:01:42'),
(17, 17, 360717, 'fghh', '5675675675', 'hg', 'fghf', 'fghfg', 'Maharashtra', 'Nagpur', '2022-10-18', 2, 3, '2017', NULL, '800', '0.0', '800.0', NULL, 8, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-06 10:39:29', '2022-10-07 00:01:42'),
(18, 18, 802918, 'fghh', '5675675675', 'hg', 'fghf', 'fghfg', 'Maharashtra', 'Nagpur', '2022-10-18', 2, 3, '2017', NULL, '800', '0.0', '800.0', NULL, 8, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-06 10:41:20', '2022-10-07 00:01:42'),
(19, 19, 431319, 'dfg', '4564564564', 'fghfg', 'fghfg', 'fgh', 'Jharkhand', 'Ranchi', '2022-10-26', 2, 3, '2018', NULL, '800', '0.0', '800.0', NULL, 8, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-06 10:43:18', '2022-10-07 00:01:42'),
(20, 20, 397920, 'fg', '3534234234', 'fgh', 'fghfg', '234324', 'Mizoram', 'Saiha', '2022-10-11', 2, 3, '2016', NULL, '800', '0.0', '800.0', NULL, 8, 1, 0, 0, NULL, NULL, NULL, 1, '2022-10-06 10:44:26', '2022-10-07 00:01:42'),
(21, 21, 345521, 'dfg', '5645654654', 'gng', 'fgh', 'fgh', 'Mizoram', 'Lunglei', '2022-10-19', 2, 3, '2018', NULL, '800', '0.0', '800.0', 3, 8, 4, 0, 0, 'images/invoice/inspection_report_345521.pdf', '2022-11-11 21:28:44', NULL, 1, '2022-10-06 10:59:32', '2022-11-11 15:59:28'),
(22, 22, 896622, 'seller-06', '9090909090', '001,alora apart, curve road', 'near jalaram food shop, Dombivli west', '400399303939', 'Meghalaya', 'Shillong', '2022-10-06', 2, 3, '2020', NULL, '800', '0.0', '800.0', 2, 9, 4, 0, 0, 'images/invoice/inspection_report_896622.pdf', '2022-11-14 18:00:23', NULL, 1, '2022-10-06 13:28:46', '2022-11-14 12:30:54'),
(23, 23, 729723, 'seller', '9090909090', '001,alora apart, curve road,', 'near jalaram food shop, Dombivli west', '4000006970', 'Maharashtra', 'Thane', '2022-10-07', 1, 6, '2022', NULL, '1000', '0.0', '1000.0', 2, 16, 6, 0, 0, NULL, NULL, NULL, 1, '2022-10-07 10:33:51', '2022-11-01 07:36:41'),
(24, 24, 874524, 'seller 2', '9191919191', '001,alora apart, curve road', 'near jalaram food shop, Dombivli west', '400006', 'Manipur', 'Imphal', '2022-10-07', 1, 6, '2022', NULL, '1000', '5.0', '995.0', 3, 17, 5, 0, 1, 'images/invoice/invoice_874524.pdf', '2022-11-04 17:28:09', 'gmvk;lsmdgojnmszroijg', 1, '2022-10-07 10:51:56', '2022-11-04 12:11:00'),
(25, 25, 918325, 'cjhfufu', '9090909090', 'gyfufufu', 'ufjufu', '6868685868', 'Maharashtra', 'Thane', '2022-10-08', 1, 1, '2018', NULL, '500', '0.0', '500.0', NULL, 16, 6, 0, 0, NULL, NULL, NULL, 1, '2022-10-08 08:48:50', '2022-11-01 12:18:15'),
(26, 26, 223526, 'test', '9090909090', '001,alora apartment,', 'near jalaram food shop, Dombivli west', '400009', 'Maharashtra', 'Thane', '2022-10-10', 2, 3, '2018', NULL, '800', '5.0', '795.0', NULL, 16, 6, 0, 1, NULL, NULL, NULL, 1, '2022-10-10 10:12:41', '2022-11-14 13:09:54'),
(27, 27, 563227, 'uebsh', '9393939393', '01hhshs', 'jsbshs', '40006', 'Nagaland', 'Kohima', '2022-10-17', 2, 3, '2022', NULL, '800', '0.0', '800.0', NULL, 19, 1, 0, 2, NULL, NULL, 'test', 1, '2022-10-17 11:28:40', '2022-10-21 07:23:35'),
(28, 28, 652128, 'Harsh', '7874564345', '90/A Thane', 'Kachi sadak', '400235', 'Maharashtra', 'Thane', '2022-10-02', 4, 2, '2015', NULL, '500', NULL, '500', 2, 1, 1, 0, 2, NULL, NULL, NULL, 1, '2022-10-17 12:38:10', '2022-10-21 05:17:49'),
(29, 29, 290729, 'name1', '9090909090', 'Dombivli', 'curve road', '400006', 'Maharashtra', 'Kalyan-Dombivali', '2022-10-22', 1, 6, '2018', NULL, '1000', '0.0', '1000.0', 3, 16, 6, 0, 0, NULL, NULL, NULL, 1, '2022-10-22 08:04:22', '2022-11-01 07:36:41'),
(30, 30, 573830, 'test partner', '9090909090', 'Dombivli', 'slits', '400006', 'Maharashtra', 'Thane', '2022-10-22', 3, 4, '2018', NULL, '1000', '0.0', '1000.0', 2, 16, 6, 0, 0, NULL, NULL, NULL, 1, '2022-10-22 10:20:37', '2022-11-01 08:09:51'),
(32, 32, 176532, 'test-31', '9090909090', 'alora apart curve road', 'near jalaram food shop dombivili', '400006', 'Maharashtra', 'Thane', '2022-10-31', 2, 3, '2020', NULL, '800', '0.0', '800.0', 2, 16, 6, 0, 0, 'images/invoice/invoice_176532.pdf', '2022-11-01 13:46:17', NULL, 1, '2022-10-31 11:11:56', '2022-11-01 07:36:41'),
(33, 33, 702033, 'test31', '9090909090', 'curve road', 'Dombivli', '400006', 'Maharashtra', 'Thane', '2022-10-31', 2, 3, '2020', NULL, '800', '0.0', '800.0', 2, 16, 6, 0, 0, NULL, NULL, NULL, 1, '2022-10-31 11:28:08', '2022-11-01 07:36:41'),
(34, 34, 638034, 'test 01', '9090909090', 'chcugh', 'jchghh', '40006', 'Nagaland', 'Dimapur', '2022-10-31', 1, 6, '2022', NULL, '1000', '0.0', '1000.0', NULL, 16, 5, 0, 0, NULL, NULL, NULL, 1, '2022-10-31 18:02:28', '2022-11-01 06:27:13'),
(35, 35, 429035, 'test01/11', '9090909090', 'curve road', 'near jalaram food shop Dombivli', '400006', 'Maharashtra', 'Thane', '2022-11-01', 3, 4, '2018', NULL, '1000', '0.0', '1000.0', 2, 16, 6, 0, 0, 'images/invoice/invoice_429035.pdf', '2022-11-01 12:40:26', NULL, 1, '2022-11-01 05:28:48', '2022-11-01 12:16:05'),
(36, 36, 396336, 'test customer', '9191919191', 'curve road near jalaram food shop', 'Dombivli', '452555', 'Karnataka', 'Belagavi', '2022-11-01', 1, 1, '2022', NULL, '500', '5.0', '495.0', 3, 23, 5, 0, 1, 'images/invoice/invoice_396336.pdf', '2022-11-03 15:53:53', 'bkl;klaermgh;lmerag', 1, '2022-11-01 10:08:10', '2022-11-03 10:35:45'),
(37, 37, 661737, 'customer order cancel', '9494949494', 'alora apart', 'Dombivli', '400006', 'Karnataka', 'Mysore', '2022-11-01', 1, 1, '2022', NULL, '500', '0.0', '500.0', 3, 23, 6, 0, 0, NULL, NULL, NULL, 1, '2022-11-01 12:21:04', '2022-11-01 07:50:16'),
(38, 38, 519038, 'test button hide', '9090909090', 'alora apart', 'Dombivli', '400006', 'Karnataka', 'Mysore', '2022-11-01', 1, 6, '2022', NULL, '1000', '0.0', '1000.0', 3, 23, 5, 0, 1, 'images/invoice/inspection_report_519038.pdf', '2022-11-06 17:11:55', 'hdrgthurstuyjftgjk', 1, '2022-11-01 12:56:51', '2022-12-10 06:01:23'),
(39, 39, 161939, 'test cancel', '9090909090', 'gufuj', 'jduggj', '400006', 'Nagaland', 'Kohima', '2022-11-01', 1, 1, '2018', NULL, '500', '0.0', '500.0', 3, 23, 6, 0, 0, NULL, NULL, NULL, 1, '2022-11-01 13:24:33', '2022-11-03 04:59:25'),
(40, 40, 238840, 'test02', '9090909090', 'alora apart', 'Dombivli', '400006', 'Maharashtra', 'Thane', '2022-11-02', 1, 1, '2022', NULL, '500', '0.0', '500.0', 3, 23, 5, 0, 1, 'images/invoice/invoice_238840.pdf', '2022-11-03 15:42:35', 'reject rear glass photo not uploaded proper.-1', 1, '2022-11-02 11:29:34', '2022-11-03 10:27:21'),
(41, 41, 375741, 'kunal', '9444444444', 'mumbai', 'mumbai', '444444', 'Maharashtra', 'Mumbai', '2022-11-03', 3, 4, '2018', NULL, '1000', '0.0', '1000.0', 3, 16, 4, 0, 0, 'images/invoice/inspection_report_375741.pdf', '2022-11-06 14:26:28', NULL, 1, '2022-11-03 10:40:27', '2022-11-06 08:56:42'),
(42, 42, 578942, 'test ford', '9090909090', 'alora aprat', 'Dombivli', '400006', 'Himachal Pradesh', 'Shimla', '2022-11-03', 2, 3, '2018', NULL, '800', '0.0', '800.0', 3, 23, 4, 0, 0, 'images/invoice/inspection_report_578942.pdf', '2022-11-17 02:33:11', 'this is reason 2', 1, '2022-11-03 11:58:41', '2022-11-16 21:03:21'),
(43, 43, 597943, 'test car', '9090909090', 'alora apart', 'Dombivli', '400006', 'Karnataka', 'Belagavi', '2022-11-04', 1, 1, '2014', NULL, '500', '0.0', '500.0', 4, 23, 6, 0, 0, 'images/invoice/inspection_report_597943.pdf', '2022-11-07 14:14:35', 'Rejected third time.', 1, '2022-11-04 06:01:57', '2022-12-10 06:12:45'),
(44, 44, 571644, 'kishor D', '9359112282', 'Sai Palace 14', 'Near MG road', '421005', 'Maharashtra', 'Mumbai', '2022-11-11', 1, 6, '2017', NULL, '1000', '0.0', '1000.0', 5, 24, 3, 0, 0, NULL, NULL, NULL, 1, '2022-11-04 06:10:06', '2022-11-19 10:23:10'),
(45, 45, 185245, 'ABC', '9850121212', 'ABC', 'Abc', '421003', 'Maharashtra', 'Mumbai', '2022-11-12', 1, 6, '2020', NULL, '1000', '0.0', '1000.0', 4, 24, 5, 0, 1, 'images/invoice/inspection_report_185245.pdf', '2022-11-13 14:34:10', NULL, 1, '2022-11-11 15:00:25', '2022-11-13 09:14:53'),
(46, 46, 742446, 'testsubmit', '9090909090', 'eghsveys', 'wjegshdg', '400009', 'Himachal Praddesh', 'Manali', '2022-11-14', 3, 4, '2018', NULL, '1000', '100.0', '900.0', 2, 16, 4, 0, 0, 'images/invoice/inspection_report_742446.pdf', '2022-11-14 18:24:37', NULL, 1, '2022-11-14 12:42:46', '2022-11-14 12:54:50'),
(47, 47, 695647, 'baj', '6666855258', 'jhjj', 'nhjj', '666', 'Maharashtra', 'Thane', '2022-11-15', 2, 3, '2018', NULL, '800', '0.0', '800.0', 6, 16, 6, 0, 0, NULL, NULL, NULL, 1, '2022-11-14 16:11:53', '2022-11-15 06:27:30'),
(48, 48, 447648, 'Mahi', '9464949464', 'hahahs', 'gsgs', '466464', 'Andhra Pradesh', 'Anantapur', '2022-11-15', 3, 4, '2020', NULL, '1000', '0.0', '1000.0', 6, 16, 4, 0, 0, 'images/invoice/inspection_report_447648.pdf', '2022-11-14 22:16:09', NULL, 1, '2022-11-14 16:13:48', '2022-11-14 16:46:25'),
(49, 49, 211449, 'test15', '9090909090', 'test address', 'Kalyan', '400006', 'Maharashtra', 'Pune', '2022-11-15', 1, 1, '2018', NULL, '500', '0.0', '500.0', NULL, 16, 6, 0, 0, NULL, NULL, NULL, 1, '2022-11-15 06:27:01', '2022-11-15 06:27:30'),
(50, 50, 778750, 'testified mandatory', '9090909090', '01 alora apart', 'near jalaram food shop Dombivli', '400006', 'Karnataka', 'Belagavi', '2022-11-16', 1, 7, '2022', NULL, '100', '0.0', '100.0', 3, 16, 4, 0, 2, 'images/invoice/inspection_report_778750.pdf', '2022-11-17 11:39:42', 'reject test', 1, '2022-11-16 06:23:01', '2022-11-17 11:00:42'),
(51, 51, 336251, 'testmg', '7070707070', 'bdhebdh', 'jwbehebd', '400003', 'Karnataka', 'Bengaluru', '2022-11-23', 9, 8, '2022', NULL, '1000', '0.0', '1000.0', 3, 16, 4, 0, 0, 'images/invoice/inspection_report_336251.pdf', '2022-11-23 14:10:09', NULL, 1, '2022-11-23 08:18:16', '2022-11-23 08:40:34'),
(52, 52, 227052, 'Abhinav', '8450912348', 'Near KV fitness,', 'Baba balgiri mandir', '201301', 'Uttar Pradesh', 'Noida', '2022-11-29', 1, 6, '2018', NULL, '1000', '0.0', '1000.0', NULL, 23, 1, 0, 0, NULL, NULL, NULL, 1, '2022-11-23 11:58:47', '2022-12-02 11:47:27'),
(53, 53, 834353, 'Udit', '7906506699', 'Noida', 'Noida', '201301', 'Uttar Pradesh', 'Kanpur', '2022-11-30', 1, 6, '2018', NULL, '1000', '0.0', '1000.0', NULL, 23, 1, 0, 0, NULL, NULL, NULL, 1, '2022-11-30 08:05:31', '2022-12-02 11:47:27'),
(54, 54, 265154, 'Udit', '7906830619', 'Noida', 'Noida', '201301', 'Uttar Pradesh', 'Sirsi', '2022-12-05', 1, 6, '2015', NULL, '1000', '0.0', '1000.0', 3, 23, 4, 0, 0, 'images/invoice/inspection_report_265154.pdf', '2022-12-05 12:12:09', NULL, 1, '2022-11-30 08:07:23', '2022-12-05 06:52:17'),
(55, 55, 364555, 'hzhsh', '9784546646', 'ahajja', 'shahsjsj', '979797', 'Andhra Pradesh', 'Vizianagaram', '2022-12-30', 1, 1, '2018', NULL, '500', '0.0', '500.0', 3, 17, 5, 0, 1, 'images/invoice/inspection_report_364555.pdf', '2022-12-02 17:32:47', NULL, 1, '2022-12-02 11:46:43', '2022-12-02 13:14:45'),
(56, 56, 678256, 'raj', '9754643343', 'house jjxkzk', 'landmark', '978764', 'Punjab', 'Khanna', '2022-12-25', 1, 1, '2017', NULL, '500', '0.0', '500.0', 10, 17, 5, 0, 1, 'images/invoice/inspection_report_678256.pdf', '2023-01-05 12:26:01', 'Nn', 1, '2022-12-05 06:58:45', '2023-01-05 06:57:52'),
(57, 57, 311257, 'testbmw', '9090909090', 'jsjebebe', 'jdbdjdj', '400003', 'Karnataka', 'Bengaluru', '2022-12-05', 3, 4, '2018', NULL, '1000', '0.0', '1000.0', 10, 16, 2, 0, 0, NULL, NULL, NULL, 1, '2022-12-05 11:48:53', '2023-01-03 05:31:44'),
(58, 58, 597958, 'test ford', '9090909909', 'jxdhjd', 'kdbdhdh', '400003', 'Maharashtra', 'Mumbai', '2022-12-05', 2, 3, '2022', NULL, '800', '0.0', '800.0', 3, 16, 4, 0, 2, 'images/invoice/inspection_report_597958.pdf', '2022-12-05 17:47:44', 'test rejected', 1, '2022-12-05 11:50:55', '2022-12-05 12:21:04'),
(59, 59, 411759, 'tesbmw061222', '9090909090', 'uwhsiwh', 'jshsjdjdb', '400003', 'Maharashtra', 'Mumbai', '2022-12-06', 3, 4, '2022', NULL, '1000', '100.0', '900.0', 2, 16, 1, 0, 0, 'images/invoice/inspection_report_411759.pdf', '2022-12-06 17:22:06', 'test recheck', 1, '2022-12-06 05:24:37', '2022-12-06 11:52:14'),
(60, 60, 445460, 'Kishor', '8454516434', 'oqievmdll', 'hshdo', '41256', 'Tripura', 'Dharmanagar', '2022-12-06', 2, 3, '2016', NULL, '800', '0.0', '800.0', 5, 16, 5, 0, 1, 'images/invoice/inspection_report_445460.pdf', '2022-12-06 14:28:06', NULL, 1, '2022-12-06 05:42:25', '2022-12-06 09:02:34'),
(61, 61, 235761, 'ovi', '9464646699', 'vsvs', 'gsgs', '84646', 'Himachal Pradesh', 'Solan', '2022-12-06', 3, 4, '2020', NULL, '1000', '0.0', '1000.0', 4, 16, 3, 0, 0, NULL, NULL, NULL, 1, '2022-12-06 05:45:24', '2022-12-06 09:24:46'),
(62, 62, 317862, 'testford06_12_22', '9090909090', 'jwhsiehd', 'xjdhuejehe', '400003', 'Karnataka', 'Bengaluru', '2022-12-06', 2, 3, '2022', NULL, '800', '0.0', '800.0', 2, 16, 4, 0, 2, 'images/invoice/inspection_report_317862.pdf', '2022-12-06 17:42:49', 'test', 1, '2022-12-06 12:05:44', '2022-12-06 12:38:04'),
(63, 63, 929963, 'testford071222', '9090909090', 'ghggjbh', 'hcuhbv', '400003', 'Karnataka', 'Bengaluru', '2022-12-07', 2, 3, '2022', NULL, '800', '0.0', '800.0', NULL, 16, 1, 0, 0, NULL, NULL, NULL, 1, '2022-12-07 06:28:00', '2022-12-07 06:54:43'),
(64, 64, 217364, 'testford071222', '9090909090', 'ghggjbh', 'hcuhbv', '400003', 'Karnataka', 'Bengaluru', '2022-12-07', 2, 3, '2022', NULL, '800', '0.0', '800.0', NULL, 16, 1, 0, 0, NULL, NULL, NULL, 1, '2022-12-07 06:33:07', '2022-12-07 06:54:43'),
(65, 65, 683565, 'testford071222', '9090909090', 'ghggjbh', 'hcuhbv', '400003', 'Karnataka', 'Bengaluru', '2022-12-07', 2, 3, '2022', NULL, '800', '0.0', '800.0', NULL, 16, 1, 0, 0, NULL, NULL, NULL, 1, '2022-12-07 06:33:52', '2022-12-07 06:54:43'),
(66, 66, 736666, 'testford071222', '9090909090', 'ghggjbh', 'hcuhbv', '400003', 'Karnataka', 'Bengaluru', '2022-12-07', 2, 3, '2022', NULL, '800', '0.0', '800.0', NULL, 16, 1, 0, 0, NULL, NULL, NULL, 1, '2022-12-07 06:34:09', '2022-12-07 06:54:43'),
(67, 67, 206067, 'testford071222', '9090909090', 'ghggjbh', 'hcuhbv', '400003', 'Karnataka', 'Bengaluru', '2022-12-07', 2, 3, '2022', NULL, '800', '0.0', '800.0', 12, 16, 2, 1, 0, NULL, NULL, NULL, 1, '2022-12-07 06:38:15', '2023-01-04 09:16:35'),
(68, 68, 908768, 'testford071222', '9090909090', 'ghggjbh', 'hcuhbv', '400003', 'Karnataka', 'Bengaluru', '2022-12-07', 2, 3, '2022', NULL, '800', '0.0', '800.0', 2, 16, 2, 1, 0, NULL, NULL, NULL, 1, '2022-12-07 06:40:09', '2022-12-07 12:50:42'),
(70, 70, 606170, 'Anaya', '8689879899', 'casa rio arabiana F204', 'lodha palava city dombivali', '421204', 'Maharashtra', 'Kalyan-Dombivali', '2022-12-07', 6, 97, '2019', NULL, '999', '0.0', '999.0', 5, 26, 5, 0, 1, 'images/invoice/inspection_report_606170.pdf', '2022-12-07 15:34:37', NULL, 1, '2022-12-07 09:02:44', '2022-12-07 10:14:33'),
(71, 71, 421471, 'hwhw', '9691919191', 'hwgwg', 'whwhh', '491991', 'Tripura', 'Udaipur', '2022-12-07', 1, 1, '2017', NULL, '999', '0.0', '999.0', NULL, 16, 1, 0, 0, NULL, NULL, NULL, 1, '2022-12-07 10:25:55', '2022-12-07 11:45:21'),
(72, 72, 186272, 'hwhw', '9691919191', 'hwgwg', 'whwhh', '491991', 'Tripura', 'Udaipur', '2022-12-07', 1, 1, '2017', NULL, '999', '0.0', '999.0', NULL, 16, 1, 0, 0, NULL, NULL, NULL, 1, '2022-12-07 10:26:50', '2022-12-07 11:45:21'),
(73, 73, 235273, 'shbssggeg', '9595959585', 'shgsgs', 'shsbevve', '499494', 'Chandigarh', 'Chandigarh', '2022-12-07', 1, 9, '2017', NULL, '999', '0.0', '999.0', 49, 16, 5, 0, 1, 'images/invoice/inspection_report_235273.pdf', '2023-01-05 14:19:20', 'Xyz', 1, '2022-12-07 10:30:45', '2023-01-05 08:50:09'),
(75, 75, 145575, 'shbssggeg', '9595959585', 'shgsgs', 'shsbevve', '499494', 'Chandigarh', 'Chandigarh', '2022-12-07', 1, 9, '2017', NULL, '999', '0.0', '999.0', 11, 16, 3, 1, 0, NULL, NULL, NULL, 1, '2022-12-07 10:33:16', '2023-01-05 06:20:27'),
(77, 77, 218677, 'hdhhdhd', '6292958585', 'egeg', 'geegeg', '949494', 'Mizoram', 'Aizawl', '2022-12-07', 1, 9, '2018', NULL, '999', '0.0', '999.0', 11, 16, 4, 1, 0, 'images/invoice/inspection_report_218677.pdf', '2023-01-01 12:52:08', NULL, 1, '2022-12-07 10:44:52', '2023-01-01 07:22:15'),
(79, 79, 119279, 'testpayment', '9090909090', 'sjjeiejje', 'kdndkdjdj', '400003', 'Karnataka', 'Bengaluru', '2022-12-07', 2, 36, '2022', NULL, '999', '100.0', '899.0', 2, 16, 4, 1, 0, 'images/invoice/inspection_report_119279.pdf', '2022-12-08 17:43:45', 'fsghaerthy', 1, '2022-12-07 10:55:10', '2022-12-08 12:13:56'),
(83, 83, 702383, 'fyccgcy', '9568686838', 'xtcyftc', 'ftftctc', '685868', 'Andhra Pradesh', 'Anantapur', '2022-12-07', 1, 10, '2017', NULL, '999', '0.0', '999.0', 2, 16, 4, 1, 2, 'images/invoice/inspection_report_702383.pdf', '2022-12-07 18:28:53', 'jxduiy6ui', 1, '2022-12-07 11:10:04', '2022-12-07 13:00:43'),
(84, 84, 584684, 'testinnova', '9090909090', 'iehejeh', 'jjdjdbbd', '400003', 'Maharashtra', 'Mumbai', '2022-12-07', 4, 52, '2022', NULL, '999', '100.0', '899.0', 5, 16, 4, 1, 0, 'images/invoice/inspection_report_584684.pdf', '2022-12-08 12:45:46', 'jj', 1, '2022-12-07 11:16:35', '2022-12-08 07:15:53'),
(86, 86, 188386, 'testbmw', '9090909090', 'uwhwuwhw', 'jebeuehhe', '400003', 'Karnataka', 'Bengaluru', '2022-12-08', 3, 37, '2022', NULL, '1499', '0.0', '1499.0', 3, 16, 5, 1, 1, 'images/invoice/inspection_report_188386.pdf', '2022-12-12 14:10:05', NULL, 1, '2022-12-08 08:33:19', '2022-12-13 12:52:25'),
(87, 87, 424987, 'test pdf 081222', '9090909090', 'gdjhg', 'ivivjhhh', '400003', 'Karnataka', 'Bengaluru', '2022-12-08', 4, 52, '2022', NULL, '999', '0.0', '999.0', 2, 16, 4, 1, 0, 'images/invoice/inspection_report_424987.pdf', '2022-12-08 18:46:17', NULL, 1, '2022-12-08 12:49:49', '2022-12-08 13:16:25'),
(88, 88, 452388, 'test bmw 09/12/22', '9090909090', 'jsbsjsj', 'jsbdiendj', '400003', 'Maharashtra', 'Mumbai', '2022-12-09', 3, 40, '2022', NULL, '2499', '0.0', '2499.0', 2, 16, 4, 1, 0, 'images/invoice/inspection_report_452388.pdf', '2022-12-09 19:03:32', NULL, 1, '2022-12-09 05:01:47', '2022-12-09 13:33:52'),
(89, 89, 614289, 't455', '9456465464', 'Houseno. 24', 'Ganapati  mandir', '878676', 'Andhra Pradesh', 'Vizianagaram', '2097-12-22', 1, 9, '2018', NULL, '999', '0.0', '999.0', 2, 17, 4, 1, 0, 'images/invoice/inspection_report_614289.pdf', '2022-12-09 11:43:38', NULL, 1, '2022-12-09 05:48:52', '2022-12-09 06:13:46'),
(90, 90, 339290, 'testford091222', '9090909090', 'jshsjjsjs', 'iwhsjsjejs', '400003', 'Maharashtra', 'Mumbai', '2022-12-09', 2, 28, '2022', NULL, '999', '0.0', '999.0', 3, 16, 4, 1, 0, 'images/invoice/inspection_report_339290.pdf', '2022-12-09 17:13:52', 'retest', 1, '2022-12-09 06:26:11', '2022-12-09 11:44:16'),
(92, 92, 706392, 'Jbwjs', '9111111111', 'hwvhws', 'iwhshhs', '400003', 'Maharashtra', 'Mumbai', '2022-12-10', 3, 42, '2022', NULL, '1499', '0.0', '1499.0', 2, 23, 4, 1, 0, 'images/invoice/inspection_report_706392.pdf', '2022-12-10 17:38:52', NULL, 1, '2022-12-10 06:08:58', '2022-12-10 12:09:11'),
(94, 94, 333594, 'test transaction', '9111111111', 'kalyan', 'kalyan', '400003', 'Maharashtra', 'Thane', '2022-12-10', 2, 28, '2022', NULL, '999', '0.0', '999.0', NULL, 23, 6, 1, 0, NULL, NULL, NULL, 1, '2022-12-10 06:20:49', '2022-12-10 11:06:01'),
(99, 99, 909599, 'test payment', '9222222222', 'alora apartment', 'near jalaram food shop Dombivli', '400003', 'Karnataka', 'Bengaluru', '2022-12-10', 6, 85, '2022', NULL, '999', '0.0', '999.0', 2, 23, 4, 1, 0, 'images/invoice/inspection_report_909599.pdf', '2022-12-10 17:06:24', NULL, 1, '2022-12-10 06:58:01', '2022-12-10 11:36:42'),
(101, 101, 5406101, 'test68', '9456464546', 'hxjzka', 'hzhzJ', '989797', 'Andhra Pradesh', 'Kadapa', '2022-12-28', 2, 29, '2017', NULL, '999', '0.0', '999.0', 2, 17, 4, 1, 0, 'images/invoice/inspection_report_5406101.pdf', '2022-12-10 16:54:13', NULL, 1, '2022-12-10 11:07:14', '2022-12-10 11:24:32'),
(102, 102, 1965102, 'testhoda', '9222222222', 'alora apartment', 'near jalaram food shop Dombivli', '400003', 'Maharashtra', 'Thane', '2022-12-10', 7, 114, '2022', NULL, '999', '0.0', '999.0', 6, 23, 4, 1, 0, 'images/invoice/inspection_report_1965102.pdf', '2022-12-11 14:08:30', 'H', 1, '2022-12-10 12:18:01', '2022-12-11 08:38:37'),
(104, 104, 7691104, 'test12(Dec)', '9784546646', 'house no. 26', 'ganpati number', '978754', 'Andhra Pradesh', 'Anantapur', '2022-12-18', 1, 10, '2017', NULL, '999', '0.0', '999.0', 2, 16, 3, 1, 0, NULL, NULL, NULL, 1, '2022-12-12 05:45:38', '2022-12-12 06:36:49'),
(105, 105, 5338105, 'test2(12Dec)', '9752346464', 'house no. 346', 'Ganapati mandir', '979464', 'Andhra Pradesh', 'Vizianagaram', '2022-12-30', 1, 9, '2017', NULL, '999', '0.0', '999.0', 3, 16, 4, 1, 0, 'images/invoice/inspection_report_5338105.pdf', '2022-12-12 18:09:41', NULL, 1, '2022-12-12 05:51:59', '2022-12-12 12:39:50'),
(106, 106, 6166106, 'test3(12 Dec)', '9784546646', 'house 12', 'ganpati mandir', '978876', 'Andhra Pradesh', 'Vizianagaram', '2028-12-17', 1, 12, '2018', NULL, '999', '0.0', '999.0', 3, 16, 4, 1, 0, 'images/invoice/inspection_report_6166106.pdf', '2022-12-12 18:29:13', NULL, 1, '2022-12-12 05:53:22', '2022-12-12 12:59:22'),
(107, 107, 7574107, 'test4(12(Dec)', '6467764464', 'hoisudbd', 'bxxjjzkd', '974964', 'Punjab', 'Khanna', '2034-12-17', 1, 9, '2018', NULL, '999', '0.0', '999.0', NULL, 16, 6, 1, 0, NULL, NULL, NULL, 1, '2022-12-12 05:56:45', '2022-12-12 06:24:29'),
(108, 108, 1141108, 'test4(12Dec)', '9757545796', 'jajsjfkfl hxjxk', 'hcjczk hxjzksls', '978757', 'Andhra Pradesh', 'Vizianagaram', '2043-12-20', 1, 17, '2017', NULL, '999', '0.0', '999.0', 3, 16, 4, 1, 0, 'images/invoice/inspection_report_1141108.pdf', '2022-12-13 12:58:12', NULL, 1, '2022-12-12 05:59:12', '2022-12-13 07:28:25'),
(109, 109, 8911109, 'test5(12 Dec)', '9784864464', 'House 234', 'gajakks hsjsk', '797987', 'Punjab', 'Barnala', '2031-12-21', 1, 9, '2016', NULL, '999', '0.0', '999.0', 3, 16, 4, 1, 0, 'images/invoice/inspection_report_8911109.pdf', '2022-12-13 16:41:03', NULL, 1, '2022-12-12 06:01:03', '2022-12-13 11:11:17'),
(110, 110, 4635110, 'test hyundai customer', '9090909090', 'alora apartment', 'Dombivli', '400003', 'Maharashtra', 'Thane', '2022-12-12', 6, 85, '2022', NULL, '999', '0.0', '999.0', 36, 23, 3, 1, 0, NULL, NULL, NULL, 1, '2022-12-12 08:10:02', '2023-01-02 08:04:27'),
(115, 115, 2053115, 'test customer ford', '9191919191', 'alora apartment', 'near jalaram food shop', '400003', 'Maharashtra', 'Thane', '2022-12-13', 2, 28, '2022', NULL, '999', '100.0', '899.0', 3, 23, 4, 1, 0, 'images/invoice/inspection_report_2053115.pdf', '2022-12-13 16:35:43', NULL, 1, '2022-12-13 06:34:56', '2022-12-13 11:06:09'),
(116, 116, 4427116, 'test honda', '9191919191', 'alora apartment', 'near jalafood shop dombivali', '400003', 'Maharashtra', 'Thane', '2022-12-13', 7, 117, '2022', NULL, '999', '0.0', '999.0', 3, 23, 4, 1, 0, 'images/invoice/inspection_report_4427116.pdf', '2022-12-13 17:00:29', NULL, 1, '2022-12-13 11:14:23', '2022-12-13 11:30:55'),
(117, 117, 5183117, 'test Kia', '9191919191', 'alora Apartment', 'near jalaram food shop Dombivli', '400003', 'Karnataka', 'Bengaluru', '2022-12-13', 8, 125, '2021', NULL, '999', '100.0', '899.0', 7, 27, 4, 1, 0, 'images/invoice/inspection_report_5183117.pdf', '2022-12-13 17:58:47', 'jvujghik', 1, '2022-12-13 11:44:38', '2022-12-13 12:28:53'),
(118, 118, 4798118, 'ksbsjd', '9090909090', 'wjjwbs8', 'kwnsjsj', '400003', 'Rajasthan', 'Jaipur', '2022-12-13', 2, 28, '2020', NULL, '999', '0.0', '999.0', 11, 27, 4, 1, 0, 'images/invoice/inspection_report_4798118.pdf', '2023-01-05 13:03:38', 'Comment not selected', 1, '2022-12-13 12:44:21', '2023-01-05 07:33:50'),
(120, 120, 6573120, 'Kishor', '9463684648', 'sv', 'fav', '253154', 'Maharashtra', 'Mumbai', '2022-12-14', 8, 126, '2018', NULL, '999', '0.0', '999.0', 6, 28, 5, 1, 1, 'images/invoice/inspection_report_6573120.pdf', '2022-12-14 13:47:14', 'Video not attached', 1, '2022-12-14 07:31:13', '2022-12-14 19:53:58'),
(122, 122, 6081122, 'test sell 16-12-22', '9292929292', 'alora apartment', 'near jalaram food shop Dombivli', '400003', 'Maharashtra', 'Thane', '2022-12-16', 2, 28, '2022', NULL, '999', '0.0', '999.0', 7, 27, 4, 1, 0, 'images/invoice/inspection_report_6081122.pdf', '2022-12-16 16:10:00', NULL, 1, '2022-12-16 08:25:53', '2022-12-16 10:40:52'),
(123, 123, 2729123, 'jjs', '9653254186', 'vsnsj', 'vshsj', '42154', 'Maharashtra', 'Mumbai', '2022-12-17', 13, 166, '2018', NULL, '999', '0.0', '999.0', 10, 28, 3, 1, 0, NULL, NULL, NULL, 1, '2022-12-17 10:32:19', '2022-12-19 10:58:15'),
(125, 125, 4054125, 'Sunil Kumar', '9562317546', 'falt No 101, Tirupati Balaji', 'Shree Swami Samarth Nagar Colony Kalyan West Thane', '421000', 'Maharashtra', 'Kalyan-Dombivali', '2022-12-18', 13, 172, '2011', NULL, '1199', '0.0', '1199.0', 6, 28, 3, 1, 0, NULL, NULL, NULL, 1, '2022-12-18 09:26:59', '2022-12-30 15:51:32'),
(127, 127, 8168127, 'Mahi', '9653217867', 'falt No 101, Tirupati Balaji', 'Sambhaji nagar Kalyan West Thane', '421500', 'Maharashtra', 'Kalyan-Dombivali', '2022-12-18', 5, 104, '2018', NULL, '999', '0.0', '999.0', 49, 28, 2, 1, 0, 'images/invoice/inspection_report_8168127.pdf', '2022-12-18 18:56:42', NULL, 1, '2022-12-18 12:53:44', '2023-01-06 10:47:54'),
(129, 129, 5585129, 'gghh', '533 655664', 'hsh', 'jjs', '421501', 'Tripura', 'Udaipur', '2022-12-19', 1, 9, '2017', NULL, '999', '0.0', '999.0', 6, 28, 4, 0, 0, 'images/invoice/inspection_report_5585129.pdf', '2022-12-20 19:45:08', NULL, 1, '2022-12-19 12:19:11', '2022-12-20 14:15:14'),
(130, 130, 9876130, 'Atul Pagare', '9359112282', '101, Shanti Sagar', 'Kalyan West', '421003', 'Maharashtra', 'Mumbai', '2022-12-20', 7, 118, '2014', NULL, '999', '0.0', '999.0', 6, 29, 6, 1, 0, NULL, NULL, NULL, 1, '2022-12-19 12:30:37', '2022-12-21 09:10:02'),
(132, 132, 1446132, 'Raju', '9653446467', 'jhf', 'vh', '452135', 'Maharashtra', 'Bhiwandi', '2022-12-19', 1, 14, '2017', NULL, '1499', '0.0', '1499.0', 14, 28, 3, 1, 0, NULL, NULL, NULL, 1, '2022-12-19 13:57:28', '2022-12-19 17:47:37'),
(150, 150, 7765150, 'atul', '9534684373', 'vh', 'cc', '52348', 'Maharashtra', 'Kalyan-Dombivali', '2022-12-26', 5, 74, '2020', NULL, '999', '0.0', '999.0', 40, 28, 5, 1, 1, 'images/invoice/inspection_report_7765150.pdf', '2023-01-05 14:26:51', 'Smoke condition & Back compression not mentioned', 1, '2022-12-26 07:33:12', '2023-01-05 08:57:42'),
(151, 151, 6899151, 'dashmesh motors', '9833321561', 'plot No-4,Sector-5 Near Belpada,kharghar, Navi Mumbai', 'church road', '410210', 'Maharashtra', 'Mumbai', '2023-01-02', 6, 96, '2012', NULL, '999', '100.0', '899.0', 9, 68, 5, 1, 1, 'images/invoice/inspection_report_6899151.pdf', '2023-01-02 14:42:50', 'Car is non- Accidental and No flooded but report mentioned yes ?', 1, '2023-01-02 04:42:36', '2023-01-02 09:20:28'),
(155, 155, 8458155, 'True value', '7506161086', 'Neelkanth Business Park, Vidyavihar STN,', 'Sadguru Nagar, Vidyavihar west', '400086', 'Maharashtra', 'Mumbai', '2023-01-06', 4, 62, '2013', NULL, '999', '998.0', '1.0', 6, 28, 5, 1, 1, 'images/invoice/inspection_report_8458155.pdf', '2023-01-06 18:00:23', 'J', 1, '2023-01-06 07:14:15', '2023-01-06 12:32:23'),
(160, 160, 5241160, 'dg', '5666666666', 'dggu', 'fghi', '899666', 'Nagaland', 'Dimapur', '2023-01-07', 1, 1, '2019', NULL, '1', '0.0', '1.0', 12, 79, 4, 1, 0, 'images/invoice/inspection_report_5241160.pdf', '2023-01-07 13:29:35', NULL, 1, '2023-01-06 13:50:30', '2023-01-07 07:59:41'),
(161, 161, 7221161, 'Galaxy wheelers', '0000000000', 'Adhiraj Complex, Shop no 22, Behind Bhoomi height', 'near Little world Mall, Sector -08, Kharghar.', '400614', 'Maharashtra', 'Mumbai', '2023-01-07', 4, 62, '2012', NULL, '999', '998.0', '1.0', 11, 29, 4, 1, 0, 'images/invoice/inspection_report_7221161.pdf', '2023-01-07 14:14:58', NULL, 1, '2023-01-07 06:04:30', '2023-01-07 08:45:05'),
(162, 162, 8834162, 'Om Motors', '9892057273', 'Plot no 10, Ganesh Niwas, Behind Central Bank,', 'Ganjawala Lane, Near Borivali STN, Borivali West,', '400092', 'Maharashtra', 'Mumbai', '2023-01-07', 4, 62, '2012', NULL, '999', '998.0', '1.0', 40, 29, 4, 1, 0, 'images/invoice/inspection_report_8834162.pdf', '2023-01-07 14:13:51', 'Add smoke condition & Back compression comment', 1, '2023-01-07 06:24:01', '2023-01-07 08:43:58'),
(163, 163, 9206163, 'fg', '5664644959', 'gsgs', 'gsgs', '400007', 'Nagaland', 'Zunheboto', '2023-01-14', 1, 1, '2021', NULL, '1', '0.0', '1.0', NULL, 79, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-07 10:37:55', '2023-01-07 10:37:55'),
(164, 164, 6745164, 'hl', '3366658888', 'gg', 'fgg', '400009', 'Mizoram', 'Lunglei', '2023-01-14', 1, 1, '2019', NULL, '1', '0.0', '1.0', NULL, 79, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-07 10:40:17', '2023-01-07 10:42:04'),
(165, 165, 1230165, 'Suresh Navale', '9860709455', 'D4 1706', 'Mahindra antheia', '411018', 'Maharashtra', 'Pune', '2023-01-08', 6, 87, '2015', NULL, '999', '998.0', '1.0', NULL, 80, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-08 08:52:00', '2023-01-08 08:52:54'),
(166, 166, 4977166, 'suresh navale', '9860709455', 'd4 1706', 'mahindra antheia', '411018', 'Maharashtra', 'Pune', '2023-01-10', 20, 219, '2022', NULL, '2999', '0.0', '2999.0', NULL, 80, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-08 09:23:46', '2023-01-08 09:23:46'),
(167, 167, 4162167, 'dbd', '0000000000', 'wjwj', 'gshs', '421009', 'Nagaland', 'Kohima', '2023-01-09', 5, 69, '2016', NULL, '999', '0.0', '999.0', NULL, 29, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-08 16:56:10', '2023-01-08 16:56:10'),
(168, 168, 7534168, 'jffyyr', '9833158555', 'jffjjddyy', 'hdrtyirr vxguhdd', '999', 'Andhra Pradesh', 'Kadapa', '2023-01-13', 2, 28, '2019', NULL, '999', '0.0', '999.0', NULL, 25, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-13 17:51:10', '2023-01-13 17:51:10'),
(169, 169, 8660169, 'Anaya Syed', '9833158555', 'Mumbra Arbaaz ka ghar', 'Arbaaz salon', '242215', 'Maharashtra', 'Mumbai', '2023-01-13', 1, 6, '2020', NULL, '999', '0.0', '999.0', NULL, 25, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-13 17:54:14', '2023-01-13 17:54:14'),
(170, 170, 4199170, 'gudtigf', '9833158555', 'kfgitdrouhg', 'gddhgsyigff', '986846', 'Andhra Pradesh', 'Srikakulam', '2023-01-13', 1, 6, '2020', NULL, '999', '0.0', '999.0', NULL, 25, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-13 17:57:05', '2023-01-13 17:57:05'),
(171, 171, 3212171, 'Modi cars', '8976756779', 'Modi Used Cars, Near Chincholi Fire Brigade, New Link  Road, Malad ( West ), Mumbai 400064', 'Chincholi fire brigade', '400064', 'Maharashtra', 'Mumbai', '2023-01-14', 19, 212, '2018', NULL, '1199', '0.0', '1199.0', NULL, 95, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-14 08:33:46', '2023-01-14 08:33:46'),
(172, 172, 1500172, 'Modi Used Cars', '7738181242', 'Modi Used Cars, Near Chincholi Fire Brigade, New Link  Road, Malad ( West )', 'Chincholi Fire Brigade', '400064', 'Maharashtra', 'Mumbai', '2023-01-14', 19, 212, '2018', NULL, '1199', '0.0', '1199.0', NULL, 95, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-14 08:38:12', '2023-01-14 08:38:53'),
(173, 173, 8877173, 'hasima', '9486795689', 'hska', 'anjdjfk', '400015', 'Maharashtra', 'Mumbai', '2023-01-21', 4, 52, '2012', NULL, '999', '0.0', '999.0', NULL, 30, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-14 10:46:34', '2023-01-14 10:46:34'),
(174, 174, 9069174, 'car24', '8669023142', 'mulund', 'mulund', '400001', 'Maharashtra', 'Mumbai', '2023-01-15', 6, 88, '2014', NULL, '999', '0.0', '999.0', NULL, 100, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-14 15:40:22', '2023-01-16 10:33:00'),
(175, 173, 2919173, 'Auto Hub', '7798460004', '213, Mumbai pune bypass Road, wakadar wasti,wakad', 'Opp Life Point Hospital', '411057', 'Maharashtra', 'Pune', '2023-01-16', 6, 88, '2012', NULL, '999', '0.0', '999.0', NULL, 102, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-15 11:49:08', '2023-01-15 11:49:08'),
(176, 174, 2376174, 'Riyaz', '9167996539', 'Lokhandwala Millat Nagar', 'B29, Andheri West', '400053', 'Maharashtra', 'Mumbai', '2023-01-16', 12, 164, '2013', NULL, '999', '0.0', '999.0', NULL, 99, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-16 10:31:40', '2023-01-16 10:33:00'),
(177, 175, 1261175, 'jahhhtt', '9948646554', 'ha ha ga tu uugf', 'hwhhuij', '746846', 'Andhra Pradesh', 'Anantapur', '2023-01-17', 11, 150, '2019', NULL, '999', '0.0', '999.0', NULL, 25, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-17 07:02:32', '2023-01-17 07:02:32'),
(178, 176, 1422176, 'Car Zeo', '9767309192', 'Car zeo office, baxis singh petrol pump, Lal Bahadur Shastri Rd,', 'beside golden dhaba and Kalpana talkies, Kurla West, Mumbai', '400070', 'Maharashtra', 'Mumbai', '2023-01-17', 6, 88, '2011', NULL, '999', '0.0', '999.0', NULL, 102, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-17 09:38:51', '2023-01-17 09:41:35'),
(179, 177, 4487177, 'prashant', '8788064696', 'Amarnath east', 'Hanuman mandir', '421501', 'Maharashtra', 'Kalyan-Dombivali', '2023-01-18', 6, 90, '2021', NULL, '999', '0.0', '999.0', NULL, 116, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-18 05:38:53', '2023-01-18 05:45:10'),
(180, 178, 6724178, 'prashant', '8788064696', 'Amarnath', 'Hanuman mandir', '421501', 'Maharashtra', 'Kalyan-Dombivali', '2023-01-18', 6, 90, '2021', NULL, '999', '0.0', '999.0', NULL, 116, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-18 06:14:59', '2023-01-18 06:16:58'),
(181, 179, 2472179, 'arbaaz', '9987892959', 'shreeram residency complex', 'ambarnath', '421501', 'Maharashtra', 'Panvel', '2023-01-18', 4, 52, '2012', NULL, '999', '998.0', '1.0', NULL, 116, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-18 08:55:11', '2023-01-18 08:57:02'),
(182, 180, 6824180, 'bagul ravi', '9545651237', 'at nandubar tal nandubar disat nanubar', 'vidya nagar', '424304', 'Maharashtra', 'Nandurbar', '2023-01-30', 6, 86, '2009', NULL, '999', '0.0', '999.0', NULL, 133, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-21 17:31:27', '2023-01-21 17:31:27'),
(183, 180, 5927180, 'sant motors', '8805617461', 'Nerul railway station complex', 'parking side of dwarak veg restaurant', '400706', 'Maharashtra', 'Panvel', '2023-01-22', 1, 24, '2016', NULL, '699', '0.0', '699.0', NULL, 141, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-22 11:36:25', '2023-01-22 11:36:25'),
(184, 181, 2276181, 'sant motors', '8805617461', 'Nerul railway station complex,  parking,  west side', 'near to dwarka veg restaurent', '400706', 'Maharashtra', 'Panvel', '2023-01-23', 1, 24, '2015', NULL, '699', '0.0', '699.0', NULL, 141, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-22 14:27:34', '2023-01-22 14:27:34'),
(185, 182, 3015182, 'sant motors Nerul west', '8805617461', 'Nerul railway station complex west side', 'near to dwarka veg restaurent car parking', '400706', 'Maharashtra', 'Panvel', '2023-01-23', 1, 24, '2015', NULL, '699', '0.0', '699.0', NULL, 141, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-22 14:37:18', '2023-01-22 14:40:32'),
(186, 183, 3038183, 'Dinesh Prajapati', '9867788668', 'near uncle kichen hotel sunder lane', 'opp Balaji school orlem church', '400064', 'Maharashtra', 'Mumbai', '2023-01-23', 6, 86, '2013', NULL, '999', '0.0', '999.0', NULL, 87, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-23 06:36:17', '2023-01-23 06:36:17'),
(187, 184, 3792184, 'SAIFU KHAN', '7276435047', 'ramdev park,Tiwari college, behind KD empire', 'Panchamratna park,mira road.', '401107', 'Maharashtra', 'Mira-Bhayandar', '2023-01-23', 6, 86, '2012', NULL, '999', '0.0', '999.0', NULL, 128, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-23 07:10:19', '2023-01-23 07:10:19'),
(188, 185, 6357185, 'carwale', '7507879668', 'carwale motors', 'near sadanand hotel, pune bangalore highway, balewadi', '411045', 'Maharashtra', 'Pune', '2023-01-23', 5, 107, '2007', NULL, '999', '0.0', '999.0', NULL, 149, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-23 12:05:15', '2023-01-23 12:05:15'),
(189, 186, 2004186, 'hg', '9986555555', 'vvvv', 'gg', '88', 'Nagaland', 'Dimapur', '2023-01-24', 1, 7, '2019', NULL, '999', '0.0', '999.0', NULL, 28, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-24 07:27:36', '2023-01-24 07:27:36'),
(190, 187, 8131187, 'Crystal Carz', '9769696930', 'Satya Nagar 296, Last Bus Stop , Opp Bike Shark/Sai Man Sarovar building', 'Near malpani ground , Link road Borivali West Mumbai', '400092', 'Maharashtra', 'Pune', '2023-01-27', 2, 30, '2018', NULL, '999', '0.0', '999.0', NULL, 145, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-26 05:38:39', '2023-01-26 05:48:17'),
(191, 188, 4124188, 'my cars', '9833158555', 'my cars dombivali', 'my cars', '421204', 'Maharashtra', 'Mumbai', '2023-01-28', 7, 114, '2015', NULL, '999', '0.0', '999.0', NULL, 117, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-28 09:00:29', '2023-01-28 09:03:34'),
(192, 189, 7293189, 'hgghhffghhdd', '6656985658', 'fuhfdyyyfddt', 'tttt686r78ffghff', '985555', 'Chandigarh', 'Chandigarh', '2023-01-30', 10, 138, '2018', NULL, '999', '0.0', '999.0', NULL, 25, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-29 18:49:40', '2023-01-29 18:49:40'),
(193, 190, 6511190, 'cars4sells', '9987892959', 'A-7 aatmaj pandit Deendayal road thakurwada dombivali west', 'shiv shens office', '421240', 'Maharashtra', 'Mumbai', '2023-01-30', 11, 159, '2021', NULL, '999', '0.0', '999.0', NULL, 116, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-30 07:30:22', '2023-01-30 07:32:54'),
(194, 191, 5076191, 'cars4sells', '9987892959', 'E 402 sarvodaya Anand next', 'next to D Mart manpada road dombivali east', '421201', 'Maharashtra', 'Mumbai', '2023-01-30', 8, 125, '2019', NULL, '999', '1.0', '998.0', NULL, 116, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-30 07:51:14', '2023-01-30 07:51:14'),
(195, 192, 5511192, 'cars4sells', '9987892955', 'E 402 sarvodaya Anand', 'next to d Mart manpada road dombivali east', '421204', 'Maharashtra', 'Mumbai', '2023-01-30', 8, 125, '2019', NULL, '999', '998.0', '1.0', NULL, 116, 1, 1, 0, NULL, NULL, NULL, 0, '2023-01-30 07:56:03', '2023-01-30 07:56:54'),
(196, 193, 4124193, 'ddddfcc', '8548970455', 'zvdbtevyavbb', 's CVV rcs', '418180', 'Maharashtra', 'Bhiwandi', '2023-01-31', 2, 32, '2018', NULL, '999', '0.0', '999.0', NULL, 82, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-30 10:38:08', '2023-01-30 10:38:08'),
(197, 194, 1625194, 'atul', '9890565211', 'xbsjsjsjsjsj', 'zjsjsj', '410101', 'Maharashtra', 'Mumbai', '2023-02-22', 1, 11, '2017', NULL, '999', '0.0', '999.0', NULL, 82, 1, 0, 0, NULL, NULL, NULL, 0, '2023-01-30 18:47:33', '2023-01-30 18:47:33'),
(198, 195, 2585195, 'imran', '9833158555', 'Dombivli', 'katai Naka', '421204', 'Maharashtra', 'Mumbai', '2023-02-02', 5, 71, '2020', NULL, '999', '0.0', '999.0', NULL, 161, 1, 0, 0, NULL, NULL, NULL, 0, '2023-02-01 09:04:10', '2023-02-01 09:04:10'),
(199, 196, 5040196, 'imran', '9768215162', 'alava kasari', 'Lodha', '421204', 'Maharashtra', 'Mumbai', '2023-02-02', 1, 7, '2019', NULL, '999', '0.0', '999.0', NULL, 25, 1, 0, 0, NULL, NULL, NULL, 0, '2023-02-01 09:07:34', '2023-02-01 09:07:34'),
(200, 197, 3520197, 'R K Motors', '9920881789', 'Shop No.10 Sainath Apartment', 'opposite Ram Talaw, New Link Rd, near Lakozy Toyota, Mumbai, Maharashtra', '400064', 'Maharashtra', 'Mumbai', '2023-02-02', 4, 62, '2013', NULL, '999', '0.0', '999.0', NULL, 162, 1, 1, 0, NULL, NULL, NULL, 0, '2023-02-01 13:26:28', '2023-02-01 13:28:02'),
(201, 198, 5152198, 'Assad motors', '8433657797', 'Assad motors, lower basement, crystal point Mall', 'Near Starbazar , New link load, Andheri West', '400053', 'Maharashtra', 'Mumbai', '2023-02-03', 17, 201, '2013', NULL, '1199', '0.0', '1199.0', NULL, 135, 1, 0, 0, NULL, NULL, NULL, 0, '2023-02-03 10:01:19', '2023-02-03 10:01:19'),
(202, 199, 5164199, 'amol', '7977727177', 'mirani nagar', 'mirani nagar thane east', '400603', 'Maharashtra', 'Thane', '2023-02-05', 7, 117, '2015', NULL, '999', '0.0', '999.0', NULL, 171, 1, 0, 0, NULL, NULL, NULL, 0, '2023-02-04 18:31:58', '2023-02-04 18:31:58'),
(203, 200, 9012200, 'amol', '7977727177', 'mirani nagar', 'mirani nagar thane east', '400603', 'Maharashtra', 'Thane', '2023-02-05', 7, 117, '2015', NULL, '999', '0.0', '999.0', NULL, 171, 1, 1, 0, NULL, NULL, NULL, 0, '2023-02-04 18:36:47', '2023-02-04 18:37:26'),
(204, 201, 4066201, 'R K motors', '8424989927', 'shop number 4,5,6, hardas nagar, near golden park gate no 2', 'eastern express Highway, service road, majiwada,Thane', '400601', 'Maharashtra', 'Thane', '2023-02-05', 13, 172, '2013', NULL, '1199', '0.0', '1199.0', NULL, 172, 1, 0, 0, NULL, NULL, NULL, 0, '2023-02-04 20:23:41', '2023-02-04 20:23:41'),
(205, 202, 2746202, 'cars etc', '9890222289', 'office no 12 and 2 Bombay sappers road', 'opp ambedkar society brt bus stop yerwada', '411006', 'Maharashtra', 'Pune', '2023-02-06', 13, 169, '2015', NULL, '999', '0.0', '999.0', NULL, 175, 1, 0, 0, NULL, NULL, NULL, 0, '2023-02-06 06:37:42', '2023-02-06 06:37:42'),
(206, 203, 4076203, 'executive car mall', '8329509951', 'Shop No.1 Next to Priyanka Apt Opp to Atur Park Near K Star Mall Between n R K Studio..., Diamond Garden, Basant Garden, Chembur, Mumbai, Maharashtra 400071', 'Diamond Garden, Basant Garden, Chembur, Mumbai, Maharashtra 400071', '400071', 'Maharashtra', 'Mumbai', '2023-02-12', 5, 81, '2009', NULL, '999', '0.0', '999.0', NULL, 185, 1, 0, 0, NULL, NULL, NULL, 0, '2023-02-11 07:00:15', '2023-02-11 07:00:15'),
(207, 204, 3314204, 'tt', '7620677449', 'bb', 'gg', '450001', 'Madhya Pradesh', 'Indore', '2023-02-14', 5, 76, '2017', NULL, '999', '0.0', '999.0', NULL, 190, 1, 1, 0, NULL, NULL, NULL, 0, '2023-02-13 15:45:59', '2023-02-20 07:57:05'),
(208, 201, 7354201, 'asad motors', '9029664381', 'Lower basement below star bazaar crystal point mall, Andheri West, Mumbai, Maharashtra 400053', 'Lower basement below star bazaar crystal point mall, Andheri West, Mumbai, Maharashtra 400053', '400053', 'Maharashtra', 'Mumbai', '2023-02-20', 5, 110, '2010', NULL, '999', '0.0', '999.0', NULL, 185, 1, 0, 0, NULL, NULL, NULL, 0, '2023-02-19 14:28:24', '2023-02-19 14:28:24'),
(209, 202, 4232202, 'Asaad motors', '9029664381', 'lower basement parking crystal point mall new link road near D.N nagar metro station Andheri west', 'near DN nagar metro station', '400053', 'Maharashtra', 'Mumbai', '2023-02-20', 5, 84, '2010', NULL, '999', '0.0', '999.0', NULL, 185, 1, 0, 0, NULL, NULL, NULL, 0, '2023-02-20 07:46:14', '2023-02-20 07:46:14'),
(210, 203, 8897203, 'Asaad', '9029664381', 'Lower basement below star bazaar crystal point mall, Andheri West, Mumbai, Maharashtra 400053', 'near DN nagar metro station', '400053', 'Maharashtra', 'Mumbai', '2023-02-20', 5, 84, '2010', NULL, '999', '0.0', '999.0', NULL, 185, 1, 0, 0, NULL, NULL, NULL, 0, '2023-02-20 07:50:45', '2023-02-20 07:50:45'),
(211, 204, 4576204, 'Assad motors', '9029664381', 'Lower basement below star bazaar crystal point mall, Andheri West, Mumbai, Maharashtra 400053', 'DN nagar metro station', '400053', 'Maharashtra', 'Mumbai', '2023-02-20', 5, 84, '2010', NULL, '999', '0.0', '999.0', NULL, 185, 1, 1, 0, NULL, NULL, NULL, 0, '2023-02-20 07:56:02', '2023-02-20 07:57:05'),
(212, 205, 3825205, 'SANTOSH SHANTARAM KHARAT', '8692840555', 'Nijdham CHS Bldg.No.86', 'Near Pant walavalkar High school Nehrunagar kurla east', '400024', 'Maharashtra', 'Mumbai', '2023-02-28', 5, 80, '2013', NULL, '999', '0.0', '999.0', NULL, 89, 1, 1, 0, NULL, NULL, NULL, 0, '2023-02-26 17:39:31', '2023-02-26 17:41:19'),
(213, 206, 7428206, 'Alfa Auto Deal', '8668398702', 'Shop No.1, jagdamba Appt,', 'Shyam Takies ,Chowk,nagpur', '440002', 'Maharashtra', 'Nagpur', '2023-04-05', 2, 34, '2009', NULL, '999', '0.0', '999.0', NULL, 127, 1, 1, 0, NULL, NULL, NULL, 0, '2023-04-04 10:50:03', '2023-04-10 16:53:05'),
(214, 207, 7610207, 'classic auto', '7045782981', 'Borivali West Mumbai', 'Shop number 3 sonal link residence c.h.s', '400091', 'Maharashtra', 'Mumbai', '2023-04-07', 4, 61, '2011', NULL, '999', '0.0', '999.0', NULL, 205, 1, 0, 0, NULL, NULL, NULL, 0, '2023-04-05 06:38:17', '2023-04-05 06:38:17'),
(215, 208, 5459208, 'Classic auto', '7045782981', 'Mithchowky Singal Malad West Mumbai', 'Shop number 3', '400064', 'Maharashtra', 'Mumbai', '2023-04-07', 4, 61, '2011', NULL, '999', '0.0', '999.0', NULL, 205, 1, 1, 0, NULL, NULL, NULL, 0, '2023-04-05 14:21:36', '2023-05-23 06:23:38'),
(216, 209, 8814209, 'Classic auto', '7045782981', 'Shop number 3 Sonal link residence C.H.S Ltd link road mithchowky Signal Malad West Mumbai Maharashtra', 'Shop number 4', '400064', 'Maharashtra', 'Mumbai', '2023-04-08', 4, 61, '2011', NULL, '999', '0.0', '999.0', NULL, 205, 1, 0, 0, NULL, NULL, NULL, 0, '2023-04-06 15:41:17', '2023-04-06 15:41:17'),
(217, 206, 1174206, 'bharat', '9892866674', 'bldg no 2 flat 42,,, waghbil naka,, ghadbundar road thane east', 'neelam hotel,,dalal engg company', '400615', 'Maharashtra', 'Thane', '2023-04-11', 10, 141, '2016', NULL, '999', '0.0', '999.0', NULL, 192, 1, 1, 0, NULL, NULL, NULL, 0, '2023-04-10 16:50:15', '2023-04-10 16:53:05'),
(218, 207, 2608207, 'pratik', '9111111111', 'Sainath nagar, Ghatkopar west', 'madhavbag holl', '400086', 'Maharashtra', 'Mumbai', '2023-05-23', 1, 1, '2022', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-05-23 05:14:33', '2023-05-23 05:14:33'),
(219, 208, 2348208, 'pratik Banote', '9111111111', 'Sainath nagar Ghatkopar west', 'madhavbag holl', '400086', 'Maharashtra', 'Mumbai', '2023-05-23', 1, 1, '2019', NULL, '1', '0.0', '1.0', NULL, 1, 1, 1, 0, NULL, NULL, NULL, 0, '2023-05-23 06:21:38', '2023-05-23 06:23:38'),
(220, 1, 81361, 'pratik Banote', '8652323848', 'Sainath nagar, Ghatkopar Weat', 'Madhavbag Holl', '400086', 'Maharashtra', 'Mumbai', '2023-05-24', 1, 1, '2016', NULL, '1', '0.0', '1.0', NULL, 1, 1, 1, 0, NULL, NULL, NULL, 0, '2023-05-24 06:12:32', '2023-05-24 06:14:14'),
(221, 2, 84742, 'pratik Banote', '8652323848', 'Sainath nagar, Ghatkopar west', 'Madhavbag holl', '400086', 'Maharashtra', 'Mumbai', '2023-05-29', 1, 6, '2023', NULL, '1', '0.0', '1.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-05-29 08:36:29', '2023-05-29 08:36:29'),
(222, 3, 54693, 'Pratik Banote', '8652323848', 'Sainath nagar', 'madhavbag holl', '400086', 'Maharashtra', 'Mumbai', '2023-05-29', 1, 6, '2023', NULL, '1', '0.0', '1.0', NULL, 1, 1, 1, 0, NULL, NULL, NULL, 0, '2023-05-29 08:39:13', '2023-05-29 08:43:46');
INSERT INTO `pre_orders` (`id`, `order_id`, `order_no`, `seller_name`, `contact_no`, `house_no`, `landmark`, `pincode`, `state`, `city`, `inspection_date`, `brand_id`, `model_id`, `manfacturing_year`, `coupon_id`, `inspection_price`, `discount`, `total`, `partner_id`, `user_id`, `status`, `payment_status`, `document_status`, `document_pdf`, `document_update`, `reason`, `flag`, `created_at`, `updated_at`) VALUES
(223, 4, 31284, 'Kunal sir', '8652323848', 'SLITS', 'dombivali station', '400086', 'Maharashtra', 'Mumbai', '2023-05-29', 1, 6, '2022', NULL, '1', '0.0', '1.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-05-29 11:44:55', '2023-05-29 11:44:55'),
(224, 5, 89995, 'Kunal sir', '8652323848', 'SLITS', 'dombivali station', '400086', 'Maharashtra', 'Mumbai', '2023-05-29', 1, 1, '2023', NULL, '1', '0.0', '1.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-05-29 11:46:15', '2023-05-29 11:46:15'),
(225, 6, 24826, 'Kunal Sir', '8652323848', 'SLITS', 'Dombivali Station', '400086', 'Maharashtra', 'Mumbai', '2023-05-29', 1, 1, '2023', NULL, '1', '0.0', '1.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-05-29 11:48:46', '2023-05-29 11:48:46'),
(226, 7, 63147, 'Abhijit Sir', '8652323848', 'SLITS', 'Dombivali Station', '400086', 'Maharashtra', 'Mumbai', '2023-05-29', 1, 1, '2023', NULL, '1', '0.0', '1.0', NULL, 1, 1, 1, 0, NULL, NULL, NULL, 0, '2023-05-29 11:50:08', '2023-05-29 11:51:36'),
(227, 8, 28028, 'Pramod Testing', '8652323848', 'Sainath Nagar', 'Madhavbag Holl', '400086', 'Maharashtra', 'Mumbai', '2023-05-30', 1, 9, '2020', NULL, '1', '0.0', '1.0', NULL, 1, 1, 1, 0, NULL, NULL, NULL, 0, '2023-05-30 11:04:08', '2023-05-30 11:05:21'),
(228, 9, 67079, 'JMD super wheels', '9359112282', '801, Autoscal', 'Kalyan- Ambernath road', '421003', 'Maharashtra', 'Kalyan-Dombivali', '2023-06-02', 8, 126, '2023', NULL, '999', '0.0', '999.0', NULL, 24, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-01 08:20:56', '2023-06-01 08:20:56'),
(229, 10, 863410, 'Pavan patmase', '8459153840', 'nagpur', 'nagpur', '441302', 'Maharashtra', 'Nagpur', '2023-06-10', 5, 69, '2018', NULL, '999', '0.0', '999.0', NULL, 220, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-10 08:56:04', '2023-06-10 08:56:04'),
(230, 11, 989111, 'kkkkkkk', '8652323848', 'shdgsysghahsgdgd', 'gshsuausgs', '400086', 'Maharashtra', 'Mumbai', '2023-06-13', 1, 1, '2023', NULL, '1', '0.0', '1.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 05:16:43', '2023-06-13 05:16:43'),
(231, 12, 203012, 'hfd', '9111111111', 'dgdgdggd', 'jsjsjd', '400721', 'Punjab', 'Khanna', '2023-06-13', 1, 1, '2019', NULL, '1', '0.0', '1.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 05:18:29', '2023-06-13 05:18:29'),
(232, 13, 695713, 'dhdheyeg', '9111111111', 'sgsg', 'hddhdh', '400712', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 1, 9, '2016', NULL, '1', '0.0', '1.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 05:21:57', '2023-06-13 05:21:57'),
(233, 14, 951014, 'hhjjj', '9111111111', 'hzbdsb', 'zhsgsgdvdvdv', '798989', 'Punjab', 'Khanna', '2023-06-13', 2, 32, '2016', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 06:36:33', '2023-06-13 06:36:33'),
(234, 15, 439715, 'hhjjj', '9111111111', 'hzbdsb', 'zhsgsgdvdvdv', '798989', 'Punjab', 'Khanna', '2023-06-13', 2, 32, '2016', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 06:38:15', '2023-06-13 06:38:15'),
(235, 16, 864916, 'hhjjj', '9111111111', 'hzbdsb', 'zhsgsgdvdvdv', '798989', 'Punjab', 'Khanna', '2023-06-13', 2, 32, '2016', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 06:42:54', '2023-06-13 06:42:54'),
(236, 17, 214617, 'hhjjj', '9111111111', 'hzbdsb', 'zhsgsgdvdvdv', '798989', 'Punjab', 'Khanna', '2023-06-13', 2, 32, '2016', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 06:42:57', '2023-06-13 06:42:57'),
(237, 18, 924618, 'hhjjj', '9111111111', 'hzbdsb', 'zhsgsgdvdvdv', '798989', 'Punjab', 'Khanna', '2023-06-13', 2, 32, '2016', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 06:43:54', '2023-06-13 06:43:54'),
(238, 19, 860619, 'dyryur', '9111111111', 'eyruru', 'ueueye', '434364', 'Chandigarh', 'Chandigarh', '2023-06-30', 1, 13, '2014', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 06:59:10', '2023-06-13 06:59:10'),
(239, 20, 276320, 'dyryur', '9111111111', 'eyruru', 'ueueye', '434364', 'Chandigarh', 'Chandigarh', '2023-06-30', 1, 13, '2014', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 06:59:39', '2023-06-13 06:59:39'),
(240, 21, 942721, 'sbebewb', '9111111111', 'hshshs', 'hssbsbev', '949858', 'Punjab', 'Khanna', '2023-06-13', 2, 30, '2015', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:02:54', '2023-06-13 07:02:54'),
(241, 22, 428122, 'sbebewb', '9111111111', 'hshshs', 'hssbsbev', '949858', 'Punjab', 'Khanna', '2023-06-13', 2, 30, '2015', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:03:57', '2023-06-13 07:03:57'),
(242, 23, 520923, 'sbebewb', '9111111111', 'hshshs', 'hssbsbev', '949858', 'Punjab', 'Khanna', '2023-06-13', 2, 30, '2015', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:13:41', '2023-06-13 07:13:41'),
(243, 24, 371424, 'sbebewb', '9111111111', 'hshshs', 'hssbsbev', '949858', 'Punjab', 'Khanna', '2023-06-13', 2, 30, '2015', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:15:00', '2023-06-13 07:15:00'),
(244, 25, 356225, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:21:41', '2023-06-13 07:21:41'),
(245, 26, 356526, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:21:42', '2023-06-13 07:21:42'),
(246, 27, 963227, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:21:43', '2023-06-13 07:21:43'),
(247, 28, 263528, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:21:53', '2023-06-13 07:21:53'),
(248, 29, 489129, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:21:54', '2023-06-13 07:21:54'),
(249, 30, 539930, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:21:54', '2023-06-13 07:21:54'),
(250, 31, 630131, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:21:54', '2023-06-13 07:21:54'),
(251, 32, 757232, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:22:01', '2023-06-13 07:22:01'),
(252, 33, 321933, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:22:01', '2023-06-13 07:22:01'),
(253, 34, 523634, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:22:01', '2023-06-13 07:22:01'),
(254, 35, 981035, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:22:02', '2023-06-13 07:22:02'),
(255, 36, 334836, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:22:02', '2023-06-13 07:22:02'),
(256, 37, 381737, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:22:02', '2023-06-13 07:22:02'),
(257, 38, 592738, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:23:48', '2023-06-13 07:23:48'),
(258, 39, 747039, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:24:03', '2023-06-13 07:24:03'),
(259, 40, 514640, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:25:15', '2023-06-13 07:25:15'),
(260, 41, 317541, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:25:48', '2023-06-13 07:25:48'),
(261, 42, 116142, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:26:23', '2023-06-13 07:26:23'),
(262, 43, 724543, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:33:48', '2023-06-13 07:33:48'),
(263, 44, 567744, 'ueeheh', '9111111111', 'ehehwhwhwh', 'dgshebdb', '599464', 'Andhra Pradesh', 'Vizianagaram', '2023-06-13', 2, 31, '2014', NULL, '1499', '0.0', '1499.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:33:53', '2023-06-13 07:33:53'),
(264, 45, 115345, '374y4y4y', '9111111115', 'ywyeye', 'ywywyw', '900000', 'Himachal Pradesh', 'Mandi', '2023-06-24', 4, 56, '2017', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 07:34:50', '2023-06-13 07:34:50'),
(265, 46, 981646, 'yftf', '9050505050', 'gyccgyc', 'hcyv6', '600686', 'Chandigarh', 'Chandigarh', '2023-06-13', 10, 141, '2017', NULL, '999', '0.0', '999.0', NULL, 1, 1, 0, 0, NULL, NULL, NULL, 0, '2023-06-13 12:15:37', '2023-06-13 12:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `pre_payments`
--

CREATE TABLE `pre_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-unpaid, 1-paid, 2- Processing',
  `fee` int(11) NOT NULL,
  `orderid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `flag` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pre_payments`
--

INSERT INTO `pre_payments` (`id`, `user_id`, `order_id`, `name`, `mobile`, `email`, `status`, `fee`, `orderid`, `transaction_id`, `flag`, `created_at`, `updated_at`) VALUES
(3, 16, 75, 'shbssggeg', 9595959585, 'testcust@gmail.com', 1, 999, '167040919675-75', '20221207111212800110168243504288415', 1, '2022-12-07 10:33:16', '2022-12-10 00:31:45'),
(5, 16, 77, 'hdhhdhd', 6292958585, 'testcust@gmail.com', 1, 999, '167040989277-77', '20221207111212800110168098104294127', 1, '2022-12-07 10:44:52', '2022-12-10 00:31:45'),
(7, 16, 79, 'testpayment', 9090909090, 'testcust@gmail.com', 1, 899, '167041051079-79', '20221207111212800110168047704441494', 1, '2022-12-07 10:55:10', '2022-12-10 00:31:45'),
(11, 16, 83, 'fyccgcy', 9568686838, 'testcust@gmail.com', 1, 999, '167041140483-83', '20221207111212800110168254704289214', 1, '2022-12-07 11:10:04', '2022-12-10 00:31:45'),
(12, 16, 84, 'testinnova', 9090909090, 'testcust@gmail.com', 1, 899, '167041179584-84', '20221207111212800110168144404274753', 1, '2022-12-07 11:16:35', '2022-12-10 00:31:45'),
(14, 16, 86, 'testbmw', 9090909090, 'testcust@gmail.com', 1, 1499, '167048839986-86', '20221208111212800110168304004500809', 1, '2022-12-08 08:33:19', '2022-12-10 00:31:45'),
(15, 16, 87, 'test pdf 081222', 9090909090, 'testcust@gmail.com', 1, 999, '167050378987-87', '20221208111212800110168295404335748', 1, '2022-12-08 12:49:49', '2022-12-10 00:31:45'),
(16, 16, 88, 'test bmw 09/12/22', 9090909090, 'testcust@gmail.com', 1, 2499, '167056210788-88', '20221209111212800110168782104314111', 1, '2022-12-09 05:01:47', '2022-12-10 00:31:45'),
(17, 17, 89, 't455', 9456465464, 'test1@gmail.com', 1, 999, '167056493289-89', '20221209111212800110168247704295480', 1, '2022-12-09 05:48:52', '2022-12-10 00:31:45'),
(18, 16, 90, 'testford091222', 9090909090, 'testcust@gmail.com', 1, 999, '167056717190-90', '20221209111212800110168363804315979', 1, '2022-12-09 06:26:11', '2022-12-10 00:31:45'),
(20, 23, 92, 'Jbwjs', 9111111111, 'test94@gmail.com', 1, 1499, '167065253892-92', '20221210111212800110168348804294853', 1, '2022-12-10 06:08:58', '2022-12-10 00:39:32'),
(22, 23, 94, 'test transaction', 9111111111, 'test94@gmail.com', 1, 999, '167065324994-94', '20221210111212800110168906504279352', 1, '2022-12-10 06:20:49', '2022-12-10 00:57:33'),
(27, 23, 99, 'test payment', 9222222222, 'test94edit@gmail.com', 1, 999, '167065548199-99', '20221210111212800110168307404507228', 1, '2022-12-10 06:58:01', '2022-12-10 06:58:31'),
(29, 17, 101, 'test68', 9456464546, 'test1@gmail.com', 1, 999, '1670670434101-101', '20221210111212800110168177604300713', 1, '2022-12-10 11:07:14', '2022-12-10 12:20:26'),
(30, 23, 102, 'testhoda', 9222222222, 'test94edit@gmail.com', 1, 999, '1670674681102-102', '20221210111212800110168532204327970', 1, '2022-12-10 12:18:01', '2022-12-10 12:20:26'),
(32, 16, 104, 'test12(Dec)', 9784546646, 'testcust@gmail.com', 1, 999, '1670823938104-104', '20221212111212800110168888504299641', 1, '2022-12-12 05:45:38', '2022-12-12 06:24:34'),
(33, 16, 105, 'test2(12Dec)', 9752346464, 'testcust@gmail.com', 1, 999, '1670824319105-105', '20221212111212800110168703404313804', 1, '2022-12-12 05:51:59', '2022-12-12 06:24:34'),
(34, 16, 106, 'test3(12 Dec)', 9784546646, 'testcust@gmail.com', 1, 999, '1670824402106-106', '20221212111212800110168039704324639', 1, '2022-12-12 05:53:22', '2022-12-12 06:24:34'),
(35, 16, 107, 'test4(12(Dec)', 6467764464, 'testcust@gmail.com', 1, 999, '1670824605107-107', '20221212111212800110168822204306044', 1, '2022-12-12 05:56:45', '2022-12-12 06:24:34'),
(36, 16, 108, 'test4(12Dec)', 9757545796, 'testcust@gmail.com', 1, 999, '1670824752108-108', '20221212111212800110168990704323621', 1, '2022-12-12 05:59:12', '2022-12-12 06:24:34'),
(37, 16, 109, 'test5(12 Dec)', 9784864464, 'testcust@gmail.com', 1, 999, '1670824863109-109', '20221212111212800110168883004299642', 1, '2022-12-12 06:01:03', '2022-12-12 06:24:34'),
(38, 23, 110, 'test hyundai customer', 9090909090, 'test94edit@gmail.com', 1, 999, '1670832602110-110', '20221212111212800110168746304327749', 1, '2022-12-12 08:10:02', '2022-12-12 11:14:26'),
(43, 23, 115, 'test customer ford', 9191919191, 'test94edit@gmail.com', 1, 899, '1670913296115-115', '20221213111212800110168352504329895', 1, '2022-12-13 06:34:56', '2022-12-13 10:44:15'),
(44, 23, 116, 'test honda', 9191919191, 'test94edit@gmail.com', 1, 999, '1670930063116-116', '20221213111212800110168005104307036', 1, '2022-12-13 11:14:23', '2022-12-13 11:33:18'),
(45, 27, 117, 'test Kia', 9191919191, 'test95@gmail.com', 1, 899, '1670931878117-117', '20221213111212800110168397004321642', 1, '2022-12-13 11:44:38', '2022-12-13 12:30:57'),
(46, 27, 118, 'ksbsjd', 9090909090, 'test95@gmail.com', 1, 999, '1670935461118-118', '20221213111212800110168473604299576', 1, '2022-12-13 12:44:21', '2022-12-14 05:49:17'),
(48, 28, 120, 'Kishor', 9463684648, 'doragekishor25@gmail.com', 1, 999, '1671003073120-120', '20221214111212800110168876704313516', 1, '2022-12-14 07:31:13', '2022-12-14 07:35:15'),
(50, 27, 122, 'test sell 16-12-22', 9292929292, 'test95@gmail.com', 1, 999, '1671179153122-122', '20221216111212800110168167304321807', 1, '2022-12-16 08:25:53', '2022-12-17 11:44:30'),
(51, 28, 123, 'jjs', 9653254186, 'doragekishor25@gmail.com', 1, 999, '1671273139123-123', '20221217111212800110168455504351190', 1, '2022-12-17 10:32:19', '2022-12-17 11:44:30'),
(53, 28, 125, 'Sunil Kumar', 9562317546, 'doragekishor25@gmail.com', 1, 1199, '1671355619125-125', '20221218111212800110168730604323403', 1, '2022-12-18 09:26:59', '2022-12-18 12:37:26'),
(55, 28, 127, 'Mahi', 9653217867, 'doragekishor25@gmail.com', 1, 999, '1671368024127-127', '20221218111212800110168892604341740', 1, '2022-12-18 12:53:44', '2022-12-18 13:26:04'),
(57, 29, 130, 'Atul Pagare', 9359112282, 'atulpgr86@gmail.com', 1, 999, '1671453037130-130', '20221219111212800110168401704356448', 1, '2022-12-19 12:30:37', '2022-12-19 16:58:16'),
(59, 28, 132, 'Raju', 9653446467, 'doragekishor25@gmail.com', 1, 1499, '1671458248132-132', '20221219111212800110168436004319157', 1, '2022-12-19 13:57:28', '2022-12-19 16:58:16'),
(77, 28, 150, 'atul', 9534684373, 'doragekishor25@gmail.com', 1, 999, '1672039992150-150', '20221226111212800110168291010202068', 1, '2022-12-26 07:33:12', '2022-12-26 07:34:49'),
(78, 68, 151, 'dashmesh motors', 9833321561, 'y_ghodke2004@yahoo.co.in', 1, 899, '1672634556151-151', '20230102111212800110168223210486223', 1, '2023-01-02 04:42:36', '2023-01-02 05:03:02'),
(82, 28, 155, 'True value', 7506161086, 'doragekishor25@gmail.com', 1, 1, '1672989255155-155', '20230106111212800110168130610498644', 1, '2023-01-06 07:14:15', '2023-01-06 08:54:35'),
(87, 79, 160, 'dg', 5666666666, 'test@gmail.com', 1, 1, '1673013030160-160', '20230106111212800110168133810501751', 1, '2023-01-06 13:50:30', '2023-01-06 13:52:02'),
(88, 29, 161, 'Galaxy wheelers', 0, 'atulpgr86@gmail.com', 1, 1, '1673071470161-161', '20230107111212800110168917710881743', 1, '2023-01-07 06:04:30', '2023-01-07 06:19:24'),
(89, 29, 162, 'Om Motors', 9892057273, 'atulpgr86@gmail.com', 1, 1, '1673072641162-162', '20230107111212800110168728210070571', 1, '2023-01-07 06:24:01', '2023-01-07 07:08:39'),
(90, 79, 164, 'hl', 3366658888, 'test@gmail.com', 1, 1, '1673088017164-164', '20230107111212800110168823110884798', 0, '2023-01-07 10:40:17', '2023-01-07 10:42:04'),
(91, 80, 165, 'Suresh Navale', 9860709455, 'navalesuresh@gmail.com', 1, 1, '1673167920165-165', '20230108111212800110168852610630440', 0, '2023-01-08 08:52:00', '2023-01-08 08:52:54'),
(92, 80, 166, 'suresh navale', 9860709455, 'navalesuresh@gmail.com', 0, 2999, '1673169826166-166', '0', 0, '2023-01-08 09:23:46', '2023-01-08 09:23:46'),
(93, 29, 167, 'dbd', 0, 'atulpgr86@gmail.com', 0, 999, '1673196970167-167', '0', 0, '2023-01-08 16:56:10', '2023-01-08 16:56:10'),
(94, 25, 168, 'jffyyr', 9833158555, 'mycarsdombivali@gmail.com', 0, 999, '1673632270168-168', '0', 0, '2023-01-13 17:51:10', '2023-01-13 17:51:10'),
(95, 25, 169, 'Anaya Syed', 9833158555, 'mycarsdombivali@gmail.com', 0, 999, '1673632454169-169', '0', 0, '2023-01-13 17:54:14', '2023-01-13 17:54:14'),
(96, 25, 170, 'gudtigf', 9833158555, 'mycarsdombivali@gmail.com', 0, 999, '1673632625170-170', '0', 0, '2023-01-13 17:57:05', '2023-01-13 17:57:05'),
(97, 95, 171, 'Modi cars', 8976756779, 'AshwinGajra@Yahoo.com', 0, 1199, '1673685226171-171', '0', 0, '2023-01-14 08:33:46', '2023-01-14 08:33:46'),
(98, 95, 172, 'Modi Used Cars', 7738181242, 'AshwinGajra@Yahoo.com', 1, 1199, '1673685492172-172', '20230114111212800110168725911498883', 0, '2023-01-14 08:38:12', '2023-01-14 08:38:53'),
(99, 30, 173, 'hasima', 9486795689, 'albeliever8@hotmail.com', 0, 999, '1673693194173-173', '0', 0, '2023-01-14 10:46:34', '2023-01-14 10:46:34'),
(100, 100, 174, 'car24', 8669023142, 'pgawai5858@gmail.com', 1, 999, '1673710822174-174', '20230116111212800110168886512050780', 0, '2023-01-14 15:40:22', '2023-01-16 10:33:00'),
(101, 102, 173, 'Auto Hub', 7798460004, 'wedocanfrick@gmail.com', 0, 999, '1673783348173-173', '0', 0, '2023-01-15 11:49:08', '2023-01-15 11:49:08'),
(102, 99, 174, 'Riyaz', 9167996539, 'vedantkodape123@gmail.com', 1, 999, '1673865100174-174', '20230116111212800110168886512050780', 0, '2023-01-16 10:31:40', '2023-01-16 10:33:00'),
(103, 25, 175, 'jahhhtt', 9948646554, 'mycarsdombivali@gmail.com', 0, 999, '1673938952175-175', '0', 0, '2023-01-17 07:02:32', '2023-01-17 07:02:32'),
(104, 102, 176, 'Car Zeo', 9767309192, 'wedocanfrick@gmail.com', 1, 999, '1673948331176-176', '20230117111212800110168625112614453', 0, '2023-01-17 09:38:51', '2023-01-17 09:41:35'),
(105, 116, 177, 'prashant', 8788064696, 'deadly786123@gmail.com', 1, 999, '1674020333177-177', '20230118111212800110168181112345471', 0, '2023-01-18 05:38:53', '2023-01-18 05:45:10'),
(106, 116, 178, 'prashant', 8788064696, 'deadly786123@gmail.com', 1, 999, '1674022499178-178', '20230118111212800110168452812699114', 0, '2023-01-18 06:14:59', '2023-01-18 06:16:58'),
(107, 116, 179, 'arbaaz', 9987892959, 'deadly786123@gmail.com', 1, 1, '1674032111179-179', '20230118111212800110168713512827867', 0, '2023-01-18 08:55:11', '2023-01-18 08:57:02'),
(108, 133, 180, 'bagul ravi', 9545651237, 'bagulravindra007@gmail.com', 0, 999, '1674322287180-180', '0', 0, '2023-01-21 17:31:27', '2023-01-21 17:31:27'),
(109, 141, 180, 'sant motors', 8805617461, 'namokar.gcs@gmail.com', 0, 699, '1674387385180-180', '0', 0, '2023-01-22 11:36:25', '2023-01-22 11:36:25'),
(110, 141, 181, 'sant motors', 8805617461, 'namokar.gcs@gmail.com', 0, 699, '1674397654181-181', '0', 0, '2023-01-22 14:27:34', '2023-01-22 14:27:34'),
(111, 141, 182, 'sant motors Nerul west', 8805617461, 'namokar.gcs@gmail.com', 1, 699, '1674398238182-182', '20230122010390000824011449197357952', 0, '2023-01-22 14:37:18', '2023-01-22 14:40:32'),
(112, 87, 183, 'Dinesh Prajapati', 9867788668, 'parascomputer.pc@gmail.com', 0, 999, '1674455777183-183', '0', 0, '2023-01-23 06:36:17', '2023-01-23 06:36:17'),
(113, 128, 184, 'SAIFU KHAN', 7276435047, 'suroshis@gmail.com', 0, 999, '1674457819184-184', '0', 0, '2023-01-23 07:10:19', '2023-01-23 07:10:19'),
(114, 149, 185, 'carwale', 7507879668, 'spardeshi.1995@gmail.com', 0, 999, '1674475515185-185', '0', 0, '2023-01-23 12:05:15', '2023-01-23 12:05:15'),
(115, 28, 186, 'hg', 9986555555, 'doragekishor25@gmail.com', 0, 999, '1674545256186-186', '0', 0, '2023-01-24 07:27:36', '2023-01-24 07:27:36'),
(116, 145, 187, 'Crystal Carz', 9769696930, 'shahnawaz2011@hotmail.com', 1, 999, '1674711519187-187', '20230126010410000825325445204631865', 0, '2023-01-26 05:38:39', '2023-01-26 05:48:17'),
(117, 117, 188, 'my cars', 9833158555, 'deadly786123@gmail.com', 1, 999, '1674896429188-188', '20230128010370000826101016390492965', 0, '2023-01-28 09:00:29', '2023-01-28 09:03:34'),
(118, 25, 189, 'hgghhffghhdd', 6656985658, 'mycarsdombivali@gmail.com', 0, 999, '1675018180189-189', '0', 0, '2023-01-29 18:49:40', '2023-01-29 18:49:40'),
(119, 116, 190, 'cars4sells', 9987892959, 'deadly786123@gmail.com', 1, 999, '1675063822190-190', '20230130010420000826803112899038243', 0, '2023-01-30 07:30:22', '2023-01-30 07:32:54'),
(120, 116, 191, 'cars4sells', 9987892959, 'deadly786123@gmail.com', 0, 998, '1675065074191-191', '0', 0, '2023-01-30 07:51:14', '2023-01-30 07:51:14'),
(121, 116, 192, 'cars4sells', 9987892955, 'deadly786123@gmail.com', 1, 1, '1675065363192-192', '20230130010330000826809575792609087', 0, '2023-01-30 07:56:03', '2023-01-30 07:56:54'),
(122, 82, 193, 'ddddfcc', 8548970455, 'asthana.babuu@gmail.com', 0, 999, '1675075088193-193', '0', 0, '2023-01-30 10:38:08', '2023-01-30 10:38:08'),
(123, 82, 194, 'atul', 9890565211, 'asthana.babuu@gmail.com', 0, 999, '1675104453194-194', '0', 0, '2023-01-30 18:47:33', '2023-01-30 18:47:33'),
(124, 161, 195, 'imran', 9833158555, 'mdmotormotor1075@gmail.com', 0, 999, '1675242250195-195', '0', 0, '2023-02-01 09:04:10', '2023-02-01 09:04:10'),
(125, 25, 196, 'imran', 9768215162, 'mycarsdombivali@gmail.com', 0, 999, '1675242454196-196', '0', 0, '2023-02-01 09:07:34', '2023-02-01 09:07:34'),
(126, 162, 197, 'R K Motors', 9920881789, 'yadyogesh1989@gmail.com', 1, 999, '1675257988197-197', '20230201010360000827617503307197833', 0, '2023-02-01 13:26:28', '2023-02-01 13:28:02'),
(127, 135, 198, 'Assad motors', 8433657797, 'jainaaradhya77@gmail.com', 0, 1199, '1675418479198-198', '0', 0, '2023-02-03 10:01:19', '2023-02-03 10:01:19'),
(128, 171, 199, 'amol', 7977727177, 'amol19parab@gmail.com', 0, 999, '1675535518199-199', '0', 0, '2023-02-04 18:31:58', '2023-02-04 18:31:58'),
(129, 171, 200, 'amol', 7977727177, 'amol19parab@gmail.com', 1, 999, '1675535807200-200', '20230205010430000828782761690351654', 0, '2023-02-04 18:36:47', '2023-02-04 18:37:26'),
(130, 172, 201, 'R K motors', 8424989927, 'faisalgaffurkhan986@gmail.com', 0, 1199, '1675542221201-201', '0', 0, '2023-02-04 20:23:41', '2023-02-04 20:23:41'),
(131, 175, 202, 'cars etc', 9890222289, 'abrar.oracledba@gmail.com', 0, 999, '1675665462202-202', '0', 0, '2023-02-06 06:37:42', '2023-02-06 06:37:42'),
(132, 185, 203, 'executive car mall', 8329509951, 'vishupriya2021@gmail.com', 0, 999, '1676098815203-203', '0', 0, '2023-02-11 07:00:15', '2023-02-11 07:00:15'),
(133, 190, 204, 'tt', 7620677449, 'eagrawal007@gmail.com', 1, 999, '1676303159204-204', '20230220010390000834419714574628960', 0, '2023-02-13 15:45:59', '2023-02-20 07:57:05'),
(134, 185, 201, 'asad motors', 9029664381, 'vishupriya2021@gmail.com', 0, 999, '1676816904201-201', '0', 0, '2023-02-19 14:28:24', '2023-02-19 14:28:24'),
(135, 185, 202, 'Asaad motors', 9029664381, 'vishupriya2021@gmail.com', 0, 999, '1676879174202-202', '0', 0, '2023-02-20 07:46:14', '2023-02-20 07:46:14'),
(136, 185, 203, 'Asaad', 9029664381, 'vishupriya2021@gmail.com', 0, 999, '1676879445203-203', '0', 0, '2023-02-20 07:50:45', '2023-02-20 07:50:45'),
(137, 185, 204, 'Assad motors', 9029664381, 'vishupriya2021@gmail.com', 1, 999, '1676879762204-204', '20230220010390000834419714574628960', 0, '2023-02-20 07:56:02', '2023-02-20 07:57:05'),
(138, 89, 205, 'SANTOSH SHANTARAM KHARAT', 8692840555, 'kharatss@gmail.com', 1, 999, '1677433171205-205', '20230226010380000836740884435165363', 0, '2023-02-26 17:39:31', '2023-02-26 17:41:19'),
(139, 127, 206, 'Alfa Auto Deal', 8668398702, 'prasadkathikar30@gmail.com', 1, 999, '1680605403206-206', '20230410011060000852311163244086499', 0, '2023-04-04 10:50:03', '2023-04-10 16:53:05'),
(140, 205, 207, 'classic auto', 7045782981, 'dhanrajmotwani775@gmail.com', 0, 999, '1680676697207-207', '0', 0, '2023-04-05 06:38:17', '2023-04-05 06:38:17'),
(141, 205, 208, 'Classic auto', 7045782981, 'dhanrajmotwani775@gmail.com', 1, 999, '1680704496208-208', '20230523010870000867735642770644811', 0, '2023-04-05 14:21:36', '2023-05-23 06:23:38'),
(142, 205, 209, 'Classic auto', 7045782981, 'dhanrajmotwani775@gmail.com', 0, 999, '1680795677209-209', '0', 0, '2023-04-06 15:41:17', '2023-04-06 15:41:17'),
(143, 192, 206, 'bharat', 9892866674, 'bharatparab2010@rediffmail.com', 1, 999, '1681145415206-206', '20230410011060000852311163244086499', 0, '2023-04-10 16:50:15', '2023-04-10 16:53:05'),
(144, 1, 207, 'pratik', 9111111111, 'jalleby@gmail.com', 0, 999, '1684818873207-207', '0', 0, '2023-05-23 05:14:33', '2023-05-23 05:14:33'),
(145, 1, 208, 'pratik Banote', 9111111111, 'jalleby@gmail.com', 1, 1, '1684822898208-208', '20230523010870000867735642770644811', 0, '2023-05-23 06:21:38', '2023-05-23 06:23:38'),
(146, 1, 1, 'pratik Banote', 8652323848, 'teat@gmail.com', 1, 1, '16849087521-1', '20230524011030000868095767427700543', 0, '2023-05-24 06:12:32', '2023-05-24 06:14:14'),
(147, 1, 2, 'pratik Banote', 8652323848, 'teat@gmail.com', 0, 1, '16853493892-2', '0', 0, '2023-05-29 08:36:29', '2023-05-29 08:36:29'),
(148, 1, 3, 'Pratik Banote', 8652323848, 'teat@gmail.com', 1, 1, '16853495533-3', '20230529010980000869944592777280822', 0, '2023-05-29 08:39:13', '2023-05-29 08:43:46'),
(149, 1, 4, 'Kunal sir', 8652323848, 'teat@gmail.com', 0, 1, '16853606954-4', '0', 0, '2023-05-29 11:44:55', '2023-05-29 11:44:55'),
(150, 1, 5, 'Kunal sir', 8652323848, 'teat@gmail.com', 0, 1, '16853607755-5', '0', 0, '2023-05-29 11:46:15', '2023-05-29 11:46:15'),
(151, 1, 6, 'Kunal Sir', 8652323848, 'teat@gmail.com', 0, 1, '16853609266-6', '0', 0, '2023-05-29 11:48:46', '2023-05-29 11:48:46'),
(152, 1, 7, 'Abhijit Sir', 8652323848, 'teat@gmail.com', 1, 1, '16853610087-7', '20230529010900000869992640807638557', 0, '2023-05-29 11:50:08', '2023-05-29 11:51:36'),
(153, 1, 8, 'Pramod Testing', 8652323848, 'teat@gmail.com', 1, 1, '16854446488-8', '20230530010800000870343451756510231', 0, '2023-05-30 11:04:08', '2023-05-30 11:05:21'),
(154, 24, 9, 'JMD super wheels', 9359112282, 'atulpgr86@gmail.com', 0, 999, '16856076569-9', '0', 0, '2023-06-01 08:20:56', '2023-06-01 08:20:56'),
(155, 220, 10, 'Pavan patmase', 8459153840, 'surajkalsait636@gmail.com', 0, 999, '168638736410-10', '0', 0, '2023-06-10 08:56:04', '2023-06-10 08:56:04'),
(156, 1, 11, 'kkkkkkk', 8652323848, 'teat@gmail.com', 0, 1, '168663340311-11', '0', 0, '2023-06-13 05:16:43', '2023-06-13 05:16:43'),
(157, 1, 12, 'hfd', 9111111111, 'teat@gmail.com', 0, 1, '168663350912-12', '0', 0, '2023-06-13 05:18:29', '2023-06-13 05:18:29'),
(158, 1, 13, 'dhdheyeg', 9111111111, 'teat@gmail.com', 0, 1, '168663371713-13', '0', 0, '2023-06-13 05:21:57', '2023-06-13 05:21:57'),
(159, 1, 14, 'hhjjj', 9111111111, 'teat@gmail.com', 0, 999, '168663819314-14', '0', 0, '2023-06-13 06:36:33', '2023-06-13 06:36:33'),
(160, 1, 15, 'hhjjj', 9111111111, 'teat@gmail.com', 0, 999, '168663829515-15', '0', 0, '2023-06-13 06:38:15', '2023-06-13 06:38:15'),
(161, 1, 16, 'hhjjj', 9111111111, 'teat@gmail.com', 0, 999, '168663857416-16', '0', 0, '2023-06-13 06:42:54', '2023-06-13 06:42:54'),
(162, 1, 17, 'hhjjj', 9111111111, 'teat@gmail.com', 0, 999, '168663857717-17', '0', 0, '2023-06-13 06:42:57', '2023-06-13 06:42:57'),
(163, 1, 18, 'hhjjj', 9111111111, 'teat@gmail.com', 0, 999, '168663863418-18', '0', 0, '2023-06-13 06:43:54', '2023-06-13 06:43:54'),
(164, 1, 19, 'dyryur', 9111111111, 'teat@gmail.com', 0, 999, '168663955019-19', '0', 0, '2023-06-13 06:59:10', '2023-06-13 06:59:10'),
(165, 1, 20, 'dyryur', 9111111111, 'teat@gmail.com', 0, 999, '168663957920-20', '0', 0, '2023-06-13 06:59:39', '2023-06-13 06:59:39'),
(166, 1, 21, 'sbebewb', 9111111111, 'teat@gmail.com', 0, 999, '168663977421-21', '0', 0, '2023-06-13 07:02:54', '2023-06-13 07:02:54'),
(167, 1, 22, 'sbebewb', 9111111111, 'teat@gmail.com', 0, 999, '168663983722-22', '0', 0, '2023-06-13 07:03:57', '2023-06-13 07:03:57'),
(168, 1, 23, 'sbebewb', 9111111111, 'teat@gmail.com', 0, 999, '168664042123-23', '0', 0, '2023-06-13 07:13:41', '2023-06-13 07:13:41'),
(169, 1, 24, 'sbebewb', 9111111111, 'teat@gmail.com', 0, 999, '168664050024-24', '0', 0, '2023-06-13 07:15:00', '2023-06-13 07:15:00'),
(170, 1, 25, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664090125-25', '0', 0, '2023-06-13 07:21:41', '2023-06-13 07:21:41'),
(171, 1, 26, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664090226-26', '0', 0, '2023-06-13 07:21:42', '2023-06-13 07:21:42'),
(172, 1, 27, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664090327-27', '0', 0, '2023-06-13 07:21:43', '2023-06-13 07:21:43'),
(173, 1, 28, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664091328-28', '0', 0, '2023-06-13 07:21:53', '2023-06-13 07:21:53'),
(174, 1, 29, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664091429-29', '0', 0, '2023-06-13 07:21:54', '2023-06-13 07:21:54'),
(175, 1, 30, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664091430-30', '0', 0, '2023-06-13 07:21:54', '2023-06-13 07:21:54'),
(176, 1, 31, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664091431-31', '0', 0, '2023-06-13 07:21:54', '2023-06-13 07:21:54'),
(177, 1, 32, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664092132-32', '0', 0, '2023-06-13 07:22:01', '2023-06-13 07:22:01'),
(178, 1, 33, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664092133-33', '0', 0, '2023-06-13 07:22:01', '2023-06-13 07:22:01'),
(179, 1, 34, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664092134-34', '0', 0, '2023-06-13 07:22:01', '2023-06-13 07:22:01'),
(180, 1, 35, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664092235-35', '0', 0, '2023-06-13 07:22:02', '2023-06-13 07:22:02'),
(181, 1, 36, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664092236-36', '0', 0, '2023-06-13 07:22:02', '2023-06-13 07:22:02'),
(182, 1, 37, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664092237-37', '0', 0, '2023-06-13 07:22:02', '2023-06-13 07:22:02'),
(183, 1, 38, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664102838-38', '0', 0, '2023-06-13 07:23:48', '2023-06-13 07:23:48'),
(184, 1, 39, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664104339-39', '0', 0, '2023-06-13 07:24:03', '2023-06-13 07:24:03'),
(185, 1, 40, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664111540-40', '0', 0, '2023-06-13 07:25:15', '2023-06-13 07:25:15'),
(186, 1, 41, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664114841-41', '0', 0, '2023-06-13 07:25:48', '2023-06-13 07:25:48'),
(187, 1, 42, 'ueeheh', 9111111111, 'teat@gmail.com', 0, 1499, '168664118342-42', '0', 0, '2023-06-13 07:26:23', '2023-06-13 07:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `rc_insuarance_details`
--

CREATE TABLE `rc_insuarance_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rc` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rc_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rc_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rc_type_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zero_dep_insuarance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insuarance_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rc_insuarance_details`
--

INSERT INTO `rc_insuarance_details` (`id`, `rc`, `rc_photo`, `rc_type`, `rc_type_photo`, `zero_dep_insuarance`, `insuarance_photo`, `expiry_date`, `expiry_photo`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'original', 'images/documents/vehicle/rc/rc_photo_2.png', 'original', 'images/documents/vehicle/rc/rc_type_photo_2.png', 'yes', 'images/documents/vehicle/rc/insuarance_photo_2.png', '2022-01-23', 'images/documents/vehicle/rc/expiry_photo_2.png', 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'Orginal', 'images/documents/vehicle/rc/rc_photo_1.jpeg', 'Un-registered', 'images/documents/vehicle/rc/rc_type_photo_1.jpeg', 'Third Party Insurance', 'images/documents/vehicle/rc/insuarance_photo_1.jpeg', '2023-05-24', 'images/documents/vehicle/rc/expiry_photo_1.jpeg', 1, '2023-05-29 10:26:10', '2023-05-29 10:26:10'),
(3, 'Migrated RC', 'images/documents/vehicle/rc/rc_photo_3.jpeg', 'Un-registered', 'images/documents/vehicle/rc/rc_type_photo_3.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_3.jpeg', '2023-06-12', 'images/documents/vehicle/rc/expiry_photo_3.jpeg', 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, 'Orginal', 'images/documents/vehicle/rc/rc_photo_23.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_23.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_23.jpeg', '2023-10-27', NULL, 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'original', 'images/documents/vehicle/rc/rc_photo_24.png', 'original', 'images/documents/vehicle/rc/rc_type_photo_24.png', 'yes', 'images/documents/vehicle/rc/insuarance_photo_24.png', '2022-01-23', 'images/documents/vehicle/rc/expiry_photo_24.png', 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, 'Orginal', 'images/documents/vehicle/rc/rc_photo_22.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_22.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_22.jpeg', '2022-11-14', 'images/documents/vehicle/rc/expiry_photo_22.jpeg', 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, 'Orginal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, 'Orginal', 'images/documents/vehicle/rc/rc_photo_35.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_35.jpeg', 'Third Party Insurance', 'images/documents/vehicle/rc/insuarance_photo_35.jpeg', '2022-11-01', NULL, 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, 'Orginal', 'images/documents/vehicle/rc/rc_photo_32.jpeg', 'Un-registered', 'images/documents/vehicle/rc/rc_type_photo_32.jpeg', 'Comprehensive Insurance.', 'images/documents/vehicle/rc/insuarance_photo_32.jpeg', '2022-11-01', NULL, 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, 'Orginal', 'images/documents/vehicle/rc/rc_photo_36.jpeg', 'Commercial', 'images/documents/vehicle/rc/rc_type_photo_36.jpeg', 'Third Party Insurance', 'images/documents/vehicle/rc/insuarance_photo_36.jpeg', '2022-11-01', NULL, 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, 'original', 'images/documents/vehicle/rc/rc_photo_40.png', 'original', 'images/documents/vehicle/rc/rc_type_photo_40.png', 'yes', 'images/documents/vehicle/rc/insuarance_photo_40.png', '2022-01-23', 'images/documents/vehicle/rc/expiry_photo_40.png', 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, 'Orginal', 'images/documents/vehicle/rc/rc_photo_38.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_38.jpeg', 'Zero Dep Insurance', NULL, NULL, 'images/documents/vehicle/rc/expiry_photo_38.jpeg', 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'Orginal', 'images/documents/vehicle/rc/rc_photo_43.jpeg', 'Commercial', 'images/documents/vehicle/rc/rc_type_photo_43.jpeg', 'Third Party Insurance', 'images/documents/vehicle/rc/insuarance_photo_43.jpeg', '2022-11-04', 'images/documents/vehicle/rc/expiry_photo_43.jpeg', 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, NULL, NULL, 'Private', NULL, 'Zero Dep Insurance', NULL, NULL, NULL, 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'Orginal', 'images/documents/vehicle/rc/rc_photo_45.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_45.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_45.jpeg', '2023-07-28', 'images/documents/vehicle/rc/expiry_photo_45.jpeg', 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, 'Orginal', 'images/documents/vehicle/rc/rc_photo_46.jpeg', 'Commercial', 'images/documents/vehicle/rc/rc_type_photo_46.jpeg', 'Third Party Insurance', 'images/documents/vehicle/rc/insuarance_photo_46.jpeg', '2022-11-14', 'images/documents/vehicle/rc/expiry_photo_46.jpeg', 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, 'Orginal', 'images/documents/vehicle/rc/rc_photo_48.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_48.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_48.jpeg', '2023-02-10', 'images/documents/vehicle/rc/expiry_photo_48.jpeg', 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'Orginal', 'images/documents/vehicle/rc/rc_photo_50.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_50.jpeg', 'Third Party Insurance', 'images/documents/vehicle/rc/insuarance_photo_50.jpeg', '2022-11-17', 'images/documents/vehicle/rc/expiry_photo_50.jpeg', 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'Orginal', 'images/documents/vehicle/rc/rc_photo_51.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_51.jpeg', 'Third Party Insurance', 'images/documents/vehicle/rc/insuarance_photo_51.jpeg', '2022-11-23', 'images/documents/vehicle/rc/expiry_photo_51.jpeg', 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, 'Orginal', 'images/documents/vehicle/rc/rc_photo_55.jpeg', 'Un-registered', 'images/documents/vehicle/rc/rc_type_photo_55.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_55.jpeg', '2022-12-30', 'images/documents/vehicle/rc/expiry_photo_55.jpeg', 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, 'Duplicate', 'images/documents/vehicle/rc/rc_photo_54.', 'Un-registered', 'images/documents/vehicle/rc/rc_type_photo_54.', 'Comprehensive Insurance.', 'images/documents/vehicle/rc/insuarance_photo_54.', '2030-12-23', 'images/documents/vehicle/rc/expiry_photo_54.', 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'Orginal', 'images/documents/vehicle/rc/rc_photo_56.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_56.jpeg', 'Third Party Insurance', 'images/documents/vehicle/rc/insuarance_photo_56.jpeg', '2023-02-28', 'images/documents/vehicle/rc/expiry_photo_56.jpeg', 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'Orginal', 'images/documents/vehicle/rc/rc_photo_58.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_58.jpeg', 'Third Party Insurance', 'images/documents/vehicle/rc/insuarance_photo_58.jpeg', '2022-12-05', 'images/documents/vehicle/rc/expiry_photo_58.jpeg', 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'Orginal', 'images/documents/vehicle/rc/rc_photo_59.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_59.jpeg', 'Third Party Insurance', 'images/documents/vehicle/rc/insuarance_photo_59.jpeg', '2020-12-06', 'images/documents/vehicle/rc/expiry_photo_59.jpeg', 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'Orginal', 'images/documents/vehicle/rc/rc_photo_60.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_60.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_60.jpeg', '2022-12-09', 'images/documents/vehicle/rc/expiry_photo_60.jpeg', 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'Orginal', 'images/documents/vehicle/rc/rc_photo_70.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_70.jpeg', 'Comprehensive Insurance.', 'images/documents/vehicle/rc/insuarance_photo_70.jpeg', '2022-12-31', 'images/documents/vehicle/rc/expiry_photo_70.jpeg', 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, 'Duplicate', 'images/documents/vehicle/rc/rc_photo_84.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_84.jpeg', 'Comprehensive Insurance.', 'images/documents/vehicle/rc/insuarance_photo_84.jpeg', '2022-12-31', 'images/documents/vehicle/rc/expiry_photo_84.jpeg', 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'Duplicate', 'images/documents/vehicle/rc/rc_photo_90.jpeg', 'Un-registered', 'images/documents/vehicle/rc/rc_type_photo_90.jpeg', 'Comprehensive Insurance.', 'images/documents/vehicle/rc/insuarance_photo_90.jpeg', '2022-12-09', 'images/documents/vehicle/rc/expiry_photo_90.jpeg', 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'Orginal', 'images/documents/vehicle/rc/rc_photo_102.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_102.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_102.jpeg', '2022-12-24', 'images/documents/vehicle/rc/expiry_photo_102.jpeg', 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, 'Orginal', 'images/documents/vehicle/rc/rc_photo_105.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_105.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_105.jpeg', '2022-12-12', 'images/documents/vehicle/rc/expiry_photo_105.jpeg', 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, 'Orginal', 'images/documents/vehicle/rc/rc_photo_106.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_106.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_106.jpeg', '2022-12-12', 'images/documents/vehicle/rc/expiry_photo_106.jpeg', 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, 'Duplicate', 'images/documents/vehicle/rc/rc_photo_115.png', 'Un-registered', 'images/documents/vehicle/rc/rc_type_photo_115.png', 'Comprehensive Insurance.', 'images/documents/vehicle/rc/insuarance_photo_115.png', '2022-12-14', 'images/documents/vehicle/rc/expiry_photo_115.png', 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, 'Orginal', NULL, 'Private', NULL, 'Comprehensive Insurance.', NULL, '2022-12-13', NULL, 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'Orginal', 'images/documents/vehicle/rc/rc_photo_120.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_120.jpeg', 'Third Party Insurance', 'images/documents/vehicle/rc/insuarance_photo_120.jpeg', '2022-12-17', 'images/documents/vehicle/rc/expiry_photo_120.jpeg', 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, 'Orginal', 'images/documents/vehicle/rc/rc_photo_122.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_122.jpeg', 'Comprehensive Insurance.', 'images/documents/vehicle/rc/insuarance_photo_122.jpeg', '2022-12-16', 'images/documents/vehicle/rc/expiry_photo_122.jpeg', 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'Orginal', 'images/documents/vehicle/rc/rc_photo_127.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_127.jpeg', 'N/A', 'images/documents/vehicle/rc/insuarance_photo_127.jpeg', '2023-01-11', 'images/documents/vehicle/rc/expiry_photo_127.jpeg', 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, 'Orginal', 'images/documents/vehicle/rc/rc_photo_77.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_77.jpeg', 'Third Party Insurance', 'images/documents/vehicle/rc/insuarance_photo_77.jpeg', '2023-01-27', 'images/documents/vehicle/rc/expiry_photo_77.jpeg', 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'Duplicate', 'images/documents/vehicle/rc/rc_photo_151.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_151.jpeg', 'N/A', 'images/documents/vehicle/rc/insuarance_photo_151.jpeg', '2023-01-01', 'images/documents/vehicle/rc/expiry_photo_151.jpeg', 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'Orginal', 'images/documents/vehicle/rc/rc_photo_118.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_118.jpeg', 'Comprehensive Insurance.', 'images/documents/vehicle/rc/insuarance_photo_118.jpeg', '2023-03-04', 'images/documents/vehicle/rc/expiry_photo_118.jpeg', 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'Duplicate', 'images/documents/vehicle/rc/rc_photo_150.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_150.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_150.jpeg', '2023-06-07', 'images/documents/vehicle/rc/expiry_photo_150.jpeg', 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'Orginal', 'images/documents/vehicle/rc/rc_photo_73.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_73.jpeg', 'N/A', 'images/documents/vehicle/rc/insuarance_photo_73.jpeg', '2023-01-01', 'images/documents/vehicle/rc/expiry_photo_73.jpeg', 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'Orginal', 'images/documents/vehicle/rc/rc_photo_155.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_155.jpeg', 'Comprehensive Insurance.', 'images/documents/vehicle/rc/insuarance_photo_155.jpeg', '2023-05-28', 'images/documents/vehicle/rc/expiry_photo_155.jpeg', 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, 'Orginal', 'images/documents/vehicle/rc/rc_photo_160.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_160.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_160.jpeg', '2023-01-27', 'images/documents/vehicle/rc/expiry_photo_160.jpeg', 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35'),
(62, 'Orginal', 'images/documents/vehicle/rc/rc_photo_162.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_162.jpeg', 'Comprehensive Insurance.', 'images/documents/vehicle/rc/insuarance_photo_162.jpeg', '2023-11-14', 'images/documents/vehicle/rc/expiry_photo_162.jpeg', 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, 'Orginal', 'images/documents/vehicle/rc/rc_photo_161.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_161.jpeg', 'N/A', 'images/documents/vehicle/rc/insuarance_photo_161.jpeg', '2022-11-16', 'images/documents/vehicle/rc/expiry_photo_161.jpeg', 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11'),
(64, 'Orginal', 'images/documents/vehicle/rc/rc_photo_164.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_164.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_164.jpeg', '2023-01-02', 'images/documents/vehicle/rc/expiry_photo_164.jpeg', 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52'),
(65, 'Orginal', 'images/documents/vehicle/rc/rc_photo_132.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_132.jpeg', 'Third Party Insurance', 'images/documents/vehicle/rc/insuarance_photo_132.jpeg', '2017-01-09', 'images/documents/vehicle/rc/expiry_photo_132.jpeg', 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'Orginal', 'images/documents/vehicle/rc/rc_photo_110.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_110.jpeg', 'N/A', 'images/documents/vehicle/rc/insuarance_photo_110.jpeg', '2022-07-14', 'images/documents/vehicle/rc/expiry_photo_110.jpeg', 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, 'Orginal', 'images/documents/vehicle/rc/rc_photo_172.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_172.jpeg', 'Comprehensive Insurance.', 'images/documents/vehicle/rc/insuarance_photo_172.jpeg', '2023-04-23', 'images/documents/vehicle/rc/expiry_photo_172.jpeg', 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, 'Orginal', 'images/documents/vehicle/rc/rc_photo_174.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_174.jpeg', 'N/A', 'images/documents/vehicle/rc/insuarance_photo_174.jpeg', '2023-01-17', 'images/documents/vehicle/rc/expiry_photo_174.jpeg', 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'Orginal', 'images/documents/vehicle/rc/rc_photo_176.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_176.jpeg', 'Comprehensive Insurance.', 'images/documents/vehicle/rc/insuarance_photo_176.jpeg', '2023-08-10', 'images/documents/vehicle/rc/expiry_photo_176.jpeg', 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'Orginal', 'images/documents/vehicle/rc/rc_photo_179.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_179.jpeg', 'Comprehensive Insurance.', 'images/documents/vehicle/rc/insuarance_photo_179.jpeg', '2023-06-29', 'images/documents/vehicle/rc/expiry_photo_179.jpeg', 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'Duplicate', 'images/documents/vehicle/rc/rc_photo_182.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_182.jpeg', 'N/A', 'images/documents/vehicle/rc/insuarance_photo_182.jpeg', '2023-01-23', 'images/documents/vehicle/rc/expiry_photo_182.jpeg', 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, 'Orginal', 'images/documents/vehicle/rc/rc_photo_187.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_187.jpeg', 'N/A', 'images/documents/vehicle/rc/insuarance_photo_187.jpeg', '2023-01-09', 'images/documents/vehicle/rc/expiry_photo_187.jpeg', 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, 'Orginal', 'images/documents/vehicle/rc/rc_photo_190.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_190.jpeg', 'N/A', 'images/documents/vehicle/rc/insuarance_photo_190.jpeg', '2023-01-02', 'images/documents/vehicle/rc/expiry_photo_190.jpeg', 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'Orginal', 'images/documents/vehicle/rc/rc_photo_7.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_7.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_7.jpeg', '2023-06-14', 'images/documents/vehicle/rc/expiry_photo_7.jpeg', 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'Orginal', 'images/documents/vehicle/rc/rc_photo_8.jpeg', 'Private', 'images/documents/vehicle/rc/rc_type_photo_8.jpeg', 'Zero Dep Insurance', 'images/documents/vehicle/rc/insuarance_photo_8.jpeg', '2024-05-23', 'images/documents/vehicle/rc/expiry_photo_8.jpeg', 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `image_path`, `review`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'images/brand/1.png', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2022-09-29 11:07:18', NULL),
(2, 'Marrry Jane', 'images/brand/1.png', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2022-09-28 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `special_features`
--

CREATE TABLE `special_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_1_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_2_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_3_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_4_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_5_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_6_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_7_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_8_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_9_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_10_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_11_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_12_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_13_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_14_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_15_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `special_features`
--

INSERT INTO `special_features` (`id`, `comment_1`, `comment_1_photo`, `comment_2`, `comment_2_photo`, `comment_3`, `comment_3_photo`, `comment_4`, `comment_4_photo`, `comment_5`, `comment_5_photo`, `comment_6`, `comment_6_photo`, `comment_7`, `comment_7_photo`, `comment_8`, `comment_8_photo`, `comment_9`, `comment_9_photo`, `comment_10`, `comment_10_photo`, `comment_11`, `comment_11_photo`, `comment_12`, `comment_12_photo`, `comment_13`, `comment_13_photo`, `comment_14`, `comment_14_photo`, `comment_15`, `comment_15_photo`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'dasdas', 'images/documents/vehicle/special_feature/comment_1_photo_2.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_2_photo_2.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_3_photo_2.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_4_photo_2.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_5_photo_2.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_6_photo_2.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_7_photo_2.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_8_photo_2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'dasdas', 'images/documents/vehicle/special_feature/comment_1_photo_1.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_2_photo_1.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_3_photo_1.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_4_photo_1.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_5_photo_1.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_6_photo_1.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_7_photo_1.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_8_photo_1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-24 11:07:57', '2023-05-24 11:07:57'),
(3, 'ghghbbb', 'images/documents/vehicle/special_feature/comment_1_photo_3.jpeg', 'ygvhb', 'images/documents/vehicle/special_feature/comment_2_photo_3.jpeg', 'vhhvc', 'images/documents/vehicle/special_feature/comment_3_photo_3.jpeg', 'bhfgg', 'images/documents/vehicle/special_feature/comment_4_photo_3.jpeg', 'ghghh', 'images/documents/vehicle/special_feature/comment_5_photo_3.jpeg', 'ok', 'images/documents/vehicle/special_feature/comment_6_photo_3.jpeg', 'ok', 'images/documents/vehicle/special_feature/comment_7_photo_3.jpeg', 'ok', 'images/documents/vehicle/special_feature/comment_8_photo_3.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, 'comment 1', 'images/documents/vehicle/special_feature/comment_1_photo_23.jpeg', 'comment 2', 'images/documents/vehicle/special_feature/comment_2_photo_23.jpeg', 'comment 3', 'images/documents/vehicle/special_feature/comment_3_photo_23.jpeg', 'comment 4', 'images/documents/vehicle/special_feature/comment_4_photo_23.jpeg', 'comment 5', 'images/documents/vehicle/special_feature/comment_5_photo_23.jpeg', 'comment 6', 'images/documents/vehicle/special_feature/comment_6_photo_23.jpeg', 'comment 7', 'images/documents/vehicle/special_feature/comment_7_photo_23.jpeg', 'comment 8', 'images/documents/vehicle/special_feature/comment_8_photo_23.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'dasdas', 'images/documents/vehicle/special_feature/comment_1_photo_24.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_2_photo_24.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_3_photo_24.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_4_photo_24.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_5_photo_24.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_6_photo_24.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_7_photo_24.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_8_photo_24.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/documents/vehicle/special_feature/comment_15_photo_22.jpeg', 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, 'comment', 'images/documents/vehicle/special_feature/comment_1_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_2_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_3_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_4_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_5_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_6_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_7_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_8_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_9_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_10_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_11_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_12_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_13_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_14_photo_13.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_15_photo_13.jpeg', 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, 'comment 1', 'images/documents/vehicle/special_feature/comment_1_photo_35.jpeg', 'comment 2', 'images/documents/vehicle/special_feature/comment_2_photo_35.jpeg', 'comment 3', 'images/documents/vehicle/special_feature/comment_3_photo_35.jpeg', 'comment 4', 'images/documents/vehicle/special_feature/comment_4_photo_35.jpeg', 'comment 5', 'images/documents/vehicle/special_feature/comment_5_photo_35.jpeg', 'comment 6', 'images/documents/vehicle/special_feature/comment_6_photo_35.jpeg', 'comment 7', 'images/documents/vehicle/special_feature/comment_7_photo_35.jpeg', 'comment 8', 'images/documents/vehicle/special_feature/comment_8_photo_35.jpeg', 'comment 9', 'images/documents/vehicle/special_feature/comment_9_photo_35.jpeg', 'comment 10', 'images/documents/vehicle/special_feature/comment_10_photo_35.jpeg', 'comment 11', 'images/documents/vehicle/special_feature/comment_11_photo_35.jpeg', 'comment 12', 'images/documents/vehicle/special_feature/comment_12_photo_35.jpeg', 'comment 13', 'images/documents/vehicle/special_feature/comment_13_photo_35.jpeg', 'comment 14', 'images/documents/vehicle/special_feature/comment_14_photo_35.jpeg', 'comment 15', 'images/documents/vehicle/special_feature/comment_15_photo_35.jpeg', 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, 'comment 1', 'images/documents/vehicle/special_feature/comment_1_photo_36.jpeg', 'comment 2', 'images/documents/vehicle/special_feature/comment_2_photo_36.jpeg', 'comment 3', 'images/documents/vehicle/special_feature/comment_3_photo_36.jpeg', 'comment 4', 'images/documents/vehicle/special_feature/comment_4_photo_36.jpeg', 'comment 5', 'images/documents/vehicle/special_feature/comment_5_photo_36.jpeg', 'comment 6', 'images/documents/vehicle/special_feature/comment_6_photo_36.jpeg', 'comment 7', 'images/documents/vehicle/special_feature/comment_7_photo_36.jpeg', 'comment 8', 'images/documents/vehicle/special_feature/comment_8_photo_36.jpeg', 'comment 9', 'images/documents/vehicle/special_feature/comment_9_photo_36.jpeg', 'comment 10', 'images/documents/vehicle/special_feature/comment_10_photo_36.jpeg', 'comment 11', 'images/documents/vehicle/special_feature/comment_11_photo_36.jpeg', 'comment 12', 'images/documents/vehicle/special_feature/comment_12_photo_36.jpeg', 'comment 13', 'images/documents/vehicle/special_feature/comment_13_photo_36.jpeg', 'comment 14', 'images/documents/vehicle/special_feature/comment_14_photo_36.jpeg', 'comment 15', 'images/documents/vehicle/special_feature/comment_15_photo_36.jpeg', 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, 'dasdas', 'images/documents/vehicle/special_feature/comment_1_photo_40.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_2_photo_40.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_3_photo_40.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_4_photo_40.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_5_photo_40.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_6_photo_40.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_7_photo_40.png', 'dasdas', 'images/documents/vehicle/special_feature/comment_8_photo_40.png', 'comment 9', 'images/documents/vehicle/special_feature/comment_9_photo_40.jpeg', 'comment 10', 'images/documents/vehicle/special_feature/comment_10_photo_40.jpeg', 'comment 11', 'images/documents/vehicle/special_feature/comment_11_photo_40.jpeg', 'comment 12', 'images/documents/vehicle/special_feature/comment_12_photo_40.jpeg', 'comment 13', 'images/documents/vehicle/special_feature/comment_13_photo_40.jpeg', 'comment 14', 'images/documents/vehicle/special_feature/comment_14_photo_40.jpeg', 'comment 15', 'images/documents/vehicle/special_feature/comment_15_photo_40.jpeg', 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'comment 1', 'images/documents/vehicle/special_feature/comment_1_photo_43.jpeg', 'comment 2', 'images/documents/vehicle/special_feature/comment_2_photo_43.jpeg', 'comment 3', 'images/documents/vehicle/special_feature/comment_3_photo_43.jpeg', 'comment 4', 'images/documents/vehicle/special_feature/comment_4_photo_43.jpeg', 'comment 5', 'images/documents/vehicle/special_feature/comment_5_photo_43.jpeg', 'comment 6', 'images/documents/vehicle/special_feature/comment_6_photo_43.jpeg', 'comment 7', 'images/documents/vehicle/special_feature/comment_7_photo_43.jpeg', 'comment 8', 'images/documents/vehicle/special_feature/comment_8_photo_43.jpeg', 'comment 9', 'images/documents/vehicle/special_feature/comment_9_photo_43.jpeg', 'comment 10', 'images/documents/vehicle/special_feature/comment_10_photo_43.jpeg', 'comment 11', 'images/documents/vehicle/special_feature/comment_11_photo_43.jpeg', 'comment 12', 'images/documents/vehicle/special_feature/comment_12_photo_43.jpeg', 'comment 13', 'images/documents/vehicle/special_feature/comment_13_photo_43.jpeg', 'comment 14', 'images/documents/vehicle/special_feature/comment_14_photo_43.jpeg', 'comment 15', 'images/documents/vehicle/special_feature/comment_15_photo_43.jpeg', 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'Seat cover', 'images/documents/vehicle/special_feature/comment_1_photo_45.jpeg', 'Music player', 'images/documents/vehicle/special_feature/comment_2_photo_45.jpeg', 'gsgsg', NULL, 'ghsgs', 'images/documents/vehicle/special_feature/comment_4_photo_45.jpeg', 'jaka', NULL, 'gsgsk', NULL, 'gshsj', NULL, 'bsksk', NULL, 'gshsj', NULL, 'hajsk', NULL, 'hsjks', NULL, 'gzhk', NULL, 'bsnsks', 'images/documents/vehicle/special_feature/comment_13_photo_45.jpeg', 'taghz', NULL, 'vzbsns', 'images/documents/vehicle/special_feature/comment_15_photo_45.jpeg', 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uwvshsv', 'images/documents/vehicle/special_feature/comment_14_photo_46.jpeg', 'yavwh', 'images/documents/vehicle/special_feature/comment_15_photo_46.jpeg', 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, 'hajsj', 'images/documents/vehicle/special_feature/comment_1_photo_48.jpeg', 'jjsksk', 'images/documents/vehicle/special_feature/comment_2_photo_48.jpeg', 'nsnsk', NULL, 'nnsksk', NULL, 'bsnsm', 'images/documents/vehicle/special_feature/comment_5_photo_48.jpeg', 'nsnns', NULL, 'bsmsk', NULL, 'bsnsk', NULL, 'bznsn', 'images/documents/vehicle/special_feature/comment_9_photo_48.jpeg', 'hwh', NULL, 'jjwj', NULL, 'nnsn', NULL, 'nnsns', NULL, 'nsnns', NULL, 'nanns', 'images/documents/vehicle/special_feature/comment_15_photo_48.jpeg', 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'comment 1', 'images/documents/vehicle/special_feature/comment_1_photo_50.jpeg', 'comment 2', 'images/documents/vehicle/special_feature/comment_2_photo_50.jpeg', 'comment 3', 'images/documents/vehicle/special_feature/comment_3_photo_50.jpeg', 'comment 4', 'images/documents/vehicle/special_feature/comment_4_photo_50.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'comment 1', 'images/documents/vehicle/special_feature/comment_1_photo_51.jpeg', 'comment 2', 'images/documents/vehicle/special_feature/comment_2_photo_51.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, 'hzhz', 'images/documents/vehicle/special_feature/comment_1_photo_55.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'wheel cap', 'images/documents/vehicle/special_feature/comment_1_photo_56.jpeg', 'seats cover', 'images/documents/vehicle/special_feature/comment_2_photo_56.jpeg', 'ABS', 'images/documents/vehicle/special_feature/comment_3_photo_56.jpeg', 'music system', 'images/documents/vehicle/special_feature/comment_4_photo_56.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'comment 1', 'images/documents/vehicle/special_feature/comment_1_photo_58.jpeg', 'comment2', 'images/documents/vehicle/special_feature/comment_2_photo_58.jpeg', 'comment3', 'images/documents/vehicle/special_feature/comment_3_photo_58.jpeg', 'comment4', 'images/documents/vehicle/special_feature/comment_4_photo_58.jpeg', 'comment5', 'images/documents/vehicle/special_feature/comment_5_photo_58.jpeg', 'comment6', 'images/documents/vehicle/special_feature/comment_6_photo_58.jpeg', 'comment7', 'images/documents/vehicle/special_feature/comment_7_photo_58.jpeg', 'comment8', 'images/documents/vehicle/special_feature/comment_8_photo_58.jpeg', 'comment9', 'images/documents/vehicle/special_feature/comment_9_photo_58.jpeg', 'comment10', 'images/documents/vehicle/special_feature/comment_10_photo_58.jpeg', 'comment11', 'images/documents/vehicle/special_feature/comment_11_photo_58.jpeg', 'comment12', 'images/documents/vehicle/special_feature/comment_12_photo_58.jpeg', 'comment13', 'images/documents/vehicle/special_feature/comment_13_photo_58.jpeg', 'comment14', 'images/documents/vehicle/special_feature/comment_14_photo_58.jpeg', 'comment15', 'images/documents/vehicle/special_feature/comment_15_photo_58.jpeg', 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'comment', 'images/documents/vehicle/special_feature/comment_1_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_2_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_3_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_4_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_5_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_6_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_7_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_8_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_9_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_10_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_11_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_12_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_13_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_14_photo_59.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_15_photo_59.jpeg', 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'Airbag', 'images/documents/vehicle/special_feature/comment_1_photo_60.jpeg', 'ABS', 'images/documents/vehicle/special_feature/comment_2_photo_60.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'ABS', 'images/documents/vehicle/special_feature/comment_1_photo_70.jpeg', 'Airbag', 'images/documents/vehicle/special_feature/comment_2_photo_70.jpeg', 'Power windows', 'images/documents/vehicle/special_feature/comment_3_photo_70.jpeg', 'Display touch screen Music system', 'images/documents/vehicle/special_feature/comment_4_photo_70.jpeg', 'Steering Audio controls button', 'images/documents/vehicle/special_feature/comment_5_photo_70.jpeg', '..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, 'music system', 'images/documents/vehicle/special_feature/comment_1_photo_84.jpeg', 'power windows', 'images/documents/vehicle/special_feature/comment_2_photo_84.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, 'comment', 'images/documents/vehicle/special_feature/comment_1_photo_79.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_2_photo_79.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_3_photo_79.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_4_photo_79.jpeg', 'comment', NULL, 'comment', 'images/documents/vehicle/special_feature/comment_6_photo_79.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_7_photo_79.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_8_photo_79.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_9_photo_79.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_10_photo_79.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_11_photo_79.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_12_photo_79.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_13_photo_79.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_14_photo_79.jpeg', 'comment', 'images/documents/vehicle/special_feature/comment_15_photo_79.jpeg', 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'comment 1', 'images/documents/vehicle/special_feature/comment_1_photo_90.jpeg', 'comment 2', 'images/documents/vehicle/special_feature/comment_2_photo_90.jpeg', 'comment 3', 'images/documents/vehicle/special_feature/comment_3_photo_90.jpeg', 'comment 4', 'images/documents/vehicle/special_feature/comment_4_photo_90.jpeg', 'comment 5', 'images/documents/vehicle/special_feature/comment_5_photo_90.jpeg', 'comment 6', 'images/documents/vehicle/special_feature/comment_6_photo_90.jpeg', 'comment 7', 'images/documents/vehicle/special_feature/comment_7_photo_90.jpeg', 'comment 8', 'images/documents/vehicle/special_feature/comment_8_photo_90.jpeg', 'comment 9', 'images/documents/vehicle/special_feature/comment_9_photo_90.jpeg', 'comment 10', 'images/documents/vehicle/special_feature/comment_10_photo_90.jpeg', 'comment 11', 'images/documents/vehicle/special_feature/comment_11_photo_90.jpeg', 'comment 12', 'images/documents/vehicle/special_feature/comment_12_photo_90.jpeg', 'comment 13', 'images/documents/vehicle/special_feature/comment_13_photo_90.jpeg', 'comment 14', 'images/documents/vehicle/special_feature/comment_14_photo_90.jpeg', 'comment 15', 'images/documents/vehicle/special_feature/comment_15_photo_90.jpeg', 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'js', 'images/documents/vehicle/special_feature/comment_1_photo_102.jpeg', 'r', 'images/documents/vehicle/special_feature/comment_2_photo_102.jpeg', 'kh', 'images/documents/vehicle/special_feature/comment_3_photo_102.jpeg', '4', 'images/documents/vehicle/special_feature/comment_4_photo_102.jpeg', '5', 'images/documents/vehicle/special_feature/comment_5_photo_102.jpeg', '6', 'images/documents/vehicle/special_feature/comment_6_photo_102.jpeg', '7', 'images/documents/vehicle/special_feature/comment_7_photo_102.jpeg', '8', 'images/documents/vehicle/special_feature/comment_8_photo_102.jpeg', '9', 'images/documents/vehicle/special_feature/comment_9_photo_102.jpeg', '10', 'images/documents/vehicle/special_feature/comment_10_photo_102.jpeg', '11', 'images/documents/vehicle/special_feature/comment_11_photo_102.jpeg', '12', 'images/documents/vehicle/special_feature/comment_12_photo_102.jpeg', '13', 'images/documents/vehicle/special_feature/comment_13_photo_102.jpeg', '14', 'images/documents/vehicle/special_feature/comment_14_photo_102.jpeg', '15', 'images/documents/vehicle/special_feature/comment_15_photo_102.jpeg', 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, '1', 'images/documents/vehicle/special_feature/comment_1_photo_105.jpeg', '2', 'images/documents/vehicle/special_feature/comment_2_photo_105.jpeg', '3', 'images/documents/vehicle/special_feature/comment_3_photo_105.jpeg', '4', 'images/documents/vehicle/special_feature/comment_4_photo_105.jpeg', '5', 'images/documents/vehicle/special_feature/comment_5_photo_105.jpeg', '6', 'images/documents/vehicle/special_feature/comment_6_photo_105.jpeg', '7', 'images/documents/vehicle/special_feature/comment_7_photo_105.jpeg', '8', 'images/documents/vehicle/special_feature/comment_8_photo_105.jpeg', '9', 'images/documents/vehicle/special_feature/comment_9_photo_105.jpeg', '10', 'images/documents/vehicle/special_feature/comment_10_photo_105.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'music system', 'images/documents/vehicle/special_feature/comment_1_photo_120.jpeg', 'power windows', 'images/documents/vehicle/special_feature/comment_2_photo_120.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, '1', 'images/documents/vehicle/special_feature/comment_1_photo_122.jpeg', '2', 'images/documents/vehicle/special_feature/comment_2_photo_122.jpeg', '3', 'images/documents/vehicle/special_feature/comment_3_photo_122.jpeg', '4', 'images/documents/vehicle/special_feature/comment_4_photo_122.jpeg', '5', 'images/documents/vehicle/special_feature/comment_5_photo_122.jpeg', '6', 'images/documents/vehicle/special_feature/comment_6_photo_122.jpeg', '7', 'images/documents/vehicle/special_feature/comment_7_photo_122.jpeg', '8', 'images/documents/vehicle/special_feature/comment_8_photo_122.jpeg', '9', 'images/documents/vehicle/special_feature/comment_9_photo_122.jpeg', '10', 'images/documents/vehicle/special_feature/comment_10_photo_122.jpeg', '11', 'images/documents/vehicle/special_feature/comment_11_photo_122.jpeg', '12', 'images/documents/vehicle/special_feature/comment_12_photo_122.jpeg', '13', 'images/documents/vehicle/special_feature/comment_13_photo_122.jpeg', '14', 'images/documents/vehicle/special_feature/comment_14_photo_122.jpeg', '15', 'images/documents/vehicle/special_feature/comment_15_photo_122.jpeg', 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'Display Touch screen Music system', 'images/documents/vehicle/special_feature/comment_1_photo_127.jpeg', 'Rear view Camera', 'images/documents/vehicle/special_feature/comment_2_photo_127.jpeg', 'One Key', 'images/documents/vehicle/special_feature/comment_3_photo_127.jpeg', 'Driver side Airbag', 'images/documents/vehicle/special_feature/comment_4_photo_127.jpeg', 'Power windows', 'images/documents/vehicle/special_feature/comment_5_photo_127.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, 'four pannels need to touch-up', 'images/documents/vehicle/special_feature/comment_1_photo_77.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'Air conditioner available', 'images/documents/vehicle/special_feature/comment_1_photo_151.jpeg', 'steering rod rusted', 'images/documents/vehicle/special_feature/comment_2_photo_151.jpeg', 'water intrusion in floor knobs rusted', 'images/documents/vehicle/special_feature/comment_3_photo_151.jpeg', 'engine mount rusted', 'images/documents/vehicle/special_feature/comment_4_photo_151.jpeg', 'bonnet lockframe rusted', 'images/documents/vehicle/special_feature/comment_5_photo_151.jpeg', 'both headlight glass have scratches', 'images/documents/vehicle/special_feature/comment_6_photo_151.jpeg', 'break oil distributor hose rusted', 'images/documents/vehicle/special_feature/comment_7_photo_151.jpeg', 'RHS roofline has dents', 'images/documents/vehicle/special_feature/comment_8_photo_151.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'no', 'images/documents/vehicle/special_feature/comment_1_photo_118.jpeg', 'no', 'images/documents/vehicle/special_feature/comment_2_photo_118.jpeg', 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 'no', NULL, 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'no', NULL, 'car is good condition', NULL, 'ok', NULL, 'ok', NULL, 'ok', NULL, 'ok', NULL, 'ok', NULL, 'ok', NULL, 'ok', NULL, 'ok', NULL, 'ok', NULL, 'ok', NULL, 'ok', NULL, 'ok', NULL, 'ok', NULL, 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'music  system', 'images/documents/vehicle/special_feature/comment_1_photo_73.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'driver side Airbag & Steering Audio control buttons', 'images/documents/vehicle/special_feature/comment_1_photo_155.jpeg', 'Co - Driver side Airbag', 'images/documents/vehicle/special_feature/comment_2_photo_155.jpeg', 'Music system', 'images/documents/vehicle/special_feature/comment_3_photo_155.jpeg', 'Power windows', 'images/documents/vehicle/special_feature/comment_4_photo_155.jpeg', 'Rear Glass Defogger', 'images/documents/vehicle/special_feature/comment_5_photo_155.jpeg', 'Rear wiper', 'images/documents/vehicle/special_feature/comment_6_photo_155.jpeg', 'Alloy wheels', 'images/documents/vehicle/special_feature/comment_7_photo_155.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35'),
(62, 'co driver side air bag', 'images/documents/vehicle/special_feature/comment_1_photo_162.jpeg', 'fr lha tyre new', 'images/documents/vehicle/special_feature/comment_2_photo_162.jpeg', 'fr rha tyre new', 'images/documents/vehicle/special_feature/comment_3_photo_162.jpeg', 'rear rhe tyre new', 'images/documents/vehicle/special_feature/comment_4_photo_162.jpeg', 'rear lhs tyre new', 'images/documents/vehicle/special_feature/comment_5_photo_162.jpeg', 'all company fiting mackwheel', 'images/documents/vehicle/special_feature/comment_6_photo_162.jpeg', 'extra fiting sensar', 'images/documents/vehicle/special_feature/comment_7_photo_162.jpeg', 'music system', 'images/documents/vehicle/special_feature/comment_8_photo_162.jpeg', 'power windeo', 'images/documents/vehicle/special_feature/comment_9_photo_162.jpeg', 'extra fiting mobile charger', 'images/documents/vehicle/special_feature/comment_10_photo_162.jpeg', 'd Foger', 'images/documents/vehicle/special_feature/comment_11_photo_162.jpeg', 'rear windshild side wiper', 'images/documents/vehicle/special_feature/comment_12_photo_162.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, 'Airbag', 'images/documents/vehicle/special_feature/comment_1_photo_161.jpeg', 'power windows', 'images/documents/vehicle/special_feature/comment_2_photo_161.jpeg', 'music system', 'images/documents/vehicle/special_feature/comment_3_photo_161.jpeg', 'Alloys wheel', 'images/documents/vehicle/special_feature/comment_4_photo_161.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11'),
(64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52'),
(65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'music system', 'images/documents/vehicle/special_feature/comment_1_photo_110.jpeg', 'Power windows', 'images/documents/vehicle/special_feature/comment_2_photo_110.jpeg', 'electric mirrors', 'images/documents/vehicle/special_feature/comment_3_photo_110.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, 'airbag', 'images/documents/vehicle/special_feature/comment_1_photo_172.jpeg', 'driver side airbag', 'images/documents/vehicle/special_feature/comment_2_photo_172.jpeg', 'stereo', 'images/documents/vehicle/special_feature/comment_3_photo_172.jpeg', 'transmission', 'images/documents/vehicle/special_feature/comment_4_photo_172.jpeg', 'usb aux', 'images/documents/vehicle/special_feature/comment_5_photo_172.jpeg', 'steering control', 'images/documents/vehicle/special_feature/comment_6_photo_172.jpeg', 'power window', 'images/documents/vehicle/special_feature/comment_7_photo_172.jpeg', 'compass', 'images/documents/vehicle/special_feature/comment_8_photo_172.jpeg', 'push start', 'images/documents/vehicle/special_feature/comment_9_photo_172.jpeg', 'climate control', 'images/documents/vehicle/special_feature/comment_10_photo_172.jpeg', 'ABS', 'images/documents/vehicle/special_feature/comment_11_photo_172.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, 'Airbag', 'images/documents/vehicle/special_feature/comment_1_photo_174.jpeg', 'Music system', 'images/documents/vehicle/special_feature/comment_2_photo_174.jpeg', 'Power windows', 'images/documents/vehicle/special_feature/comment_3_photo_174.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'steering wheel', 'images/documents/vehicle/special_feature/comment_1_photo_176.jpeg', 'music system', 'images/documents/vehicle/special_feature/comment_2_photo_176.jpeg', 'co driver side air bag', 'images/documents/vehicle/special_feature/comment_3_photo_176.jpeg', NULL, NULL, 'd foger', 'images/documents/vehicle/special_feature/comment_5_photo_176.jpeg', 'power windows', 'images/documents/vehicle/special_feature/comment_6_photo_176.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'Driver side Airbag and Steering wheel audio control button', 'images/documents/vehicle/special_feature/comment_1_photo_179.jpeg', 'Co-Driver Airbag', 'images/documents/vehicle/special_feature/comment_2_photo_179.jpeg', 'Power windows', 'images/documents/vehicle/special_feature/comment_3_photo_179.jpeg', 'ABS', 'images/documents/vehicle/special_feature/comment_4_photo_179.jpeg', 'Rear Wiper and defogger', 'images/documents/vehicle/special_feature/comment_5_photo_179.jpeg', 'Alloys wheel', 'images/documents/vehicle/special_feature/comment_6_photo_179.jpeg', 'Display touch screen Music system', 'images/documents/vehicle/special_feature/comment_7_photo_179.jpeg', 'Rear view camera and Auto Ac', 'images/documents/vehicle/special_feature/comment_8_photo_179.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'AC cooling good', 'images/documents/vehicle/special_feature/comment_1_photo_182.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, 'Airbag', 'images/documents/vehicle/special_feature/comment_1_photo_187.jpeg', 'music system', 'images/documents/vehicle/special_feature/comment_2_photo_187.jpeg', 'alloywheel', 'images/documents/vehicle/special_feature/comment_3_photo_187.jpeg', NULL, 'images/documents/vehicle/special_feature/comment_4_photo_187.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, 'music system', 'images/documents/vehicle/special_feature/comment_1_photo_190.jpeg', 'alloywheel', 'images/documents/vehicle/special_feature/comment_2_photo_190.jpeg', 'window switch', 'images/documents/vehicle/special_feature/comment_3_photo_190.jpeg', 'air bag', 'images/documents/vehicle/special_feature/comment_4_photo_190.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'hello', 'images/documents/vehicle/special_feature/comment_1_photo_7.jpeg', 'hello', 'images/documents/vehicle/special_feature/comment_2_photo_7.jpeg', 'hello', 'images/documents/vehicle/special_feature/comment_3_photo_7.jpeg', NULL, 'images/documents/vehicle/special_feature/comment_4_photo_7.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'Best car', 'images/documents/vehicle/special_feature/comment_1_photo_8.jpeg', NULL, 'images/documents/vehicle/special_feature/comment_2_photo_8.jpeg', NULL, 'images/documents/vehicle/special_feature/comment_3_photo_8.jpeg', NULL, 'images/documents/vehicle/special_feature/comment_4_photo_8.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/documents/vehicle/special_feature/comment_14_photo_8.jpeg', NULL, NULL, 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `test_drives`
--

CREATE TABLE `test_drives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `front_suspension_noise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `axie_noise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_suspension_noise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clutch_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `automatic_gear_box` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gear_box` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gear_box_noise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gear_shifting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `steering_noise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `steering_column_noise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speedometer_knob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `odometer_reading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_drives`
--

INSERT INTO `test_drives` (`id`, `front_suspension_noise`, `axie_noise`, `rear_suspension_noise`, `clutch_condition`, `automatic_gear_box`, `gear_box`, `gear_box_noise`, `gear_shifting`, `w_a`, `steering_noise`, `steering_column_noise`, `speedometer_knob`, `odometer_reading`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'Yes', 'Yes', 'Yes', 'Ok', 'Ok', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 1, '2023-05-24 11:07:57', '2023-05-24 11:07:57'),
(3, 'No', 'Yes', 'Yes', 'Jaddring', 'Ok', 'Manual', 'Yes', 'Ok', 'Not Ok', 'Yes', 'No', 'Working', 'Working', 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, 'Yes', 'Yes', 'Yes', 'Ok', 'Ok', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Jaddring, Weak, Hard', 'Not Available, Jerking, Jaddring', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, 'Yes', 'Yes', 'Yes', 'Hard', 'Jerking', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, 'Yes', 'Yes', 'Yes', 'Hard', 'Jerking', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, 'Yes', 'Yes', 'Yes', 'Worn out, Sepage', 'Jerking, Jaddring', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 'fdsaf', 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working', 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Jaddring, Weak, Hard', 'Ok, Jaddring, Jerking', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, 'No', 'No', 'No', 'Hard', 'Ok', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'No', 'No', 'No', 'Ok', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, 'No', 'Yes', 'Yes', 'Hard', 'Not Available', 'Manual', 'Yes', 'Ok', 'Not Ok', 'No', 'Yes', 'Not working', 'Working', 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'Yes', 'Yes', 'Yes', 'Hard, Weak, Jaddring, Sepage, Worn out, Ok', 'Not Available, Jerking, Jaddring, Ok', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Jaddring, Weak, Hard', 'Not Available, Jerking, Jaddring, Ok', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, 'Yes', 'Yes', 'Yes', 'Jaddring, Sepage', 'Not Available, Jerking', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, 'Yes', 'Yes', 'Yes', 'Weak', 'Not Available, Jaddring', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'Yes', 'Yes', 'Yes', 'Hard', 'Ok', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Jaddring, Weak, Hard', 'Not Available, Jerking, Jaddring, Ok', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage', 'Not Available, Jerking', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'No', 'Working', 'Working', 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'Yes', 'Yes', 'No', 'Hard, Worn out', 'Not Available', 'Manual', 'No', 'Not Ok', 'Ok', 'No', 'No', 'Working', 'Working', 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage', 'Ok, Jaddring, Jerking', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'No', 'No', 'No', 'Ok', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, 'No', 'No', 'Yes', 'Ok', 'Not Available', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, 'Yes', 'Yes', 'Yes', 'Ok, Worn out', 'Ok, Jaddring', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, 'Yes', 'Yes', 'Yes', 'Weak, Sepage', 'Not Available, Jaddring', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, 'Yes', 'Yes', 'Yes', 'Weak, Worn out', 'Not Available, Jaddring', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, 'No', 'Yes', 'Yes', 'Weak, Sepage', 'Not Available, Jaddring', 'Automatic', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'No', 'No', 'No', 'Ok, Worn out, Sepage, Jaddring', 'Ok, Jaddring, Jerking, Not Available', 'Automatic', 'No', 'Not Ok', 'Not Ok', 'No', 'No', 'Not working', 'Not working', 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'No', 'No', 'Yes', 'Ok, Good, Bad, Leakage, Weak, Jaddring, Sepage, Worn out, Hard', 'Not Available, Leakage, Bad, Good, Jerking, Jaddring, Ok', 'Manual', 'Yes', 'Not Ok', 'Ok', 'No', 'Yes', 'Working', 'Working', 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, 'Ok, Worn out, Sepage, Jaddring, Weak, Hard', 'Ok, Jaddring, Jerking, Not Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Jaddring, Weak, Hard', 'Ok, Jaddring, Jerking, Not Available', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Jaddring, Weak, Hard', 'Ok, Jaddring, Jerking, Not Available', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, 'No', 'No', 'No', 'Weak, Hard, Sepage, Jaddring, Ok', 'Ok, Jaddring, Jerking, Not Available', 'Automatic', 'No', 'Not Ok', 'Not Ok', 'No', 'No', 'Not working', 'Not working', 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, NULL, NULL, NULL, 'Ok, Worn out, Sepage, Jaddring, Weak, Hard', 'Ok, Jaddring, Jerking, Not Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, 'Yes', 'Yes', 'Yes', 'Sepage, Jaddring, Weak, Hard, Ok, Worn out', 'Jaddring, Jerking, Not Available, Ok', 'Manual', 'Yes', 'Ok', 'Not Ok', 'Yes', 'No', 'Working', 'Working', 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, 'Yes', 'Yes', 'Yes', 'Hard, Weak, Jaddring, Sepage, Worn out, Ok', 'Jaddring, Jerking, Not Available, Ok', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, 'Yes', 'Yes', 'Yes', 'Ok, Worn out, Sepage, Jaddring, Weak, Hard', 'Ok, Not Available, Jaddring, Jerking', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'Yes', 'No', 'No', 'Sepage, Ok, Worn out, Jaddring, Hard, Weak', 'Ok, Jaddring, Jerking, Not Available', 'Manual', 'Yes', 'Not Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, 'Yes', 'Yes', 'Yes', 'Ok, Worn out', 'Ok, Jaddring', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'No', 'No', 'No', 'Ok', 'Not Available', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, 'No', 'No', 'No', 'Ok', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'No', 'No', 'Working', 'Working', 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'Yes', 'No', 'No', 'Ok', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'Yes', 'No', 'Working', 'Working', 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'No', 'No', 'Yes', 'Ok', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'No', 'No', 'Working', 'Working', 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'No', 'No', 'No', 'Ok', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'No', 'No', 'Working', 'Working', 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'Yes', 'No', 'Yes', 'Hard', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'Yes', 'No', 'Working', 'Working', 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'Yes', 'No', 'No', 'Ok', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'No', 'Yes', 'Working', 'Working', 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35'),
(62, 'No', 'No', 'No', 'Ok', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'No', 'No', 'Working', 'Working', 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, 'Yes', 'No', 'No', 'Jaddring, Hard', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'No', 'No', 'Working', 'Working', 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11'),
(64, 'No', 'No', 'No', 'Ok', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'No', 'No', 'Working', 'Working', 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52'),
(65, 'Yes', 'No', 'Yes', 'Weak', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'No', 'No', 'Yes', 'Hard', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'Yes', 'No', 'Working', 'Working', 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, 'No', 'No', 'No', 'Ok', 'Ok', 'Automatic', 'No', 'Ok', 'Ok', 'No', 'No', 'Working', 'Working', 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, 'Yes', 'No', 'Yes', 'Ok', 'Not Available', 'Manual', 'No', 'Not Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'Yes', 'No', 'No', 'Ok', 'Not Available', 'Manual', 'No', 'Ok', 'Not Ok', 'No', 'No', 'Working', 'Working', 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'No', 'No', 'No', 'Ok', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'No', 'No', 'Working', 'Working', 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'Yes', 'Yes', 'No', 'Ok', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'Yes', 'No', 'Working', 'Working', 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, 'No', 'No', 'No', 'Ok', 'Ok', 'Automatic', 'No', 'Ok', 'Ok', 'No', 'No', 'Working', 'Working', 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, 'No', 'No', 'No', 'Ok', 'Not Available', 'Manual', 'No', 'Ok', 'Ok', 'No', 'No', 'Working', 'Working', 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'No', 'Yes', 'Yes', 'Sepage', 'Jerking', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'Yes', 'Yes', 'Yes', 'Ok', 'Ok', 'Manual', 'Yes', 'Ok', 'Ok', 'Yes', 'Yes', 'Working', 'Working', 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 'pratik Banote', 'teat@gmail.com', '9111111111', '$2y$10$OgsFe0NbcAQexq/ZhN.7zO.U8ajtBtWptmvvq/mRyFFLGs7dyDu.q', NULL, '2022-09-14 08:14:58', '2023-06-13 05:07:53'),
(2, 'John Doe', 'john@example.com', '9111111114', '$2y$10$rxKXpXH4KafFE42aS/DYaeZoTnU4zFXxlleVpibpOZKp3o9dMqIkO', NULL, '2022-09-29 01:52:38', '2022-10-07 01:36:07'),
(3, 'John Doe1', 'john1@example.com', '8888888888', '$2y$10$M4ieZES1UVdY4EAUCuzxC.3g30T4WGANb9cQJZhzunxahfjVzpusq', NULL, '2022-09-29 02:05:05', '2022-09-29 02:05:05'),
(4, 'te', 'etw@sdg.tre', '2332323232', '$2y$10$EOt8y74iE5/Kyxbi9ZnsOOW3FZ/2wmp4U/T/ghm7wqu5NIfjqBJJq', NULL, '2022-09-30 07:39:58', '2022-09-30 07:39:58'),
(5, 'dfgdfg', 'dfgdfg@dfg.gh', '3453453453', '$2y$10$W7dIOKLULFa8AC8jmEkH1OxgbFc8h.PNkcbhcmAd8xN50Crc4OFpa', NULL, '2022-09-30 07:41:20', '2022-09-30 07:41:20'),
(6, 'dfgdfg', 'dfgdfg@dfg.gh', '3453453453', '$2y$10$ETvGEXc5r6OYlFi6ckg/Xu6vkpglGKzYPFENHMlAHQX.FwF/jpq6.', NULL, '2022-09-30 07:42:47', '2022-09-30 07:42:47'),
(7, 'John Doe', 'john@example.com', '9111111112', '$2y$10$TTpYbhTLIf/FZcKPWs9FdOs3fZp/uLP/gilsxyG4ffkJxIZmAai5S', NULL, '2022-10-03 01:16:47', '2022-10-03 01:16:47'),
(8, 'pedfgdfghgh edit', 'testijrjng@test.com', '2323232323', '$2y$10$UrMjv0ChK.XnvNdtjDSD.eXdKLQn0LMZOSDkq18fchBfMtJ2qES5m', NULL, '2022-10-03 01:31:32', '2022-10-07 01:32:16'),
(9, 'test cars doctors edit', 'testcarsdoctors1@gmail.com', '9090900909', '$2y$10$naaQjbAYUpU78SuSzCVMLeUK0xUt5Vpy31A4AmHc/TOEPQgoiRpr6', NULL, '2022-10-03 01:36:58', '2022-10-07 02:28:28'),
(11, 'John Doe', 'john@example.com', '9111111112', '$2y$10$OrX3EKIXG.JURGTTKhJJCOJdL9skAil7dysHAKAc0ayuR0Y1xdw3m', NULL, '2022-10-03 04:52:13', '2022-10-03 04:52:13'),
(12, 'test cars doctors 1', 'testcarsdoctors1@gmaill.com', '9292929292', '$2y$10$n32yqZ67uPaQCWu1qO4sv.kb1I9lFfZQhcDEyZBV/N9OE6t/sidVO', NULL, '2022-10-04 00:26:59', '2022-10-04 00:26:59'),
(13, 'John Doe', 'john@example.com', '9111111112', '$2y$10$aD/wbMTOn/Si4FURz2fZT.FR1UF06HnnaLbt64SLbNlx0KQg9aqmG', NULL, '2022-10-07 00:57:57', '2022-10-07 00:57:57'),
(14, 'John Doe-1', 'john1@example.com', '9111111113', '$2y$10$kByDm9uEc1YhTbL584RFduACIU6hpFMnJ8MnmRJPufWQ.U8assQjK', NULL, '2022-10-07 00:58:20', '2022-10-07 00:58:20'),
(15, 'John Doe', 'john1@example.com', '9111111113', '$2y$10$lRo7E3JqdzuO0RH1yWpI4./4K7qUC/KhhjrOgnggqvDDopsZxc1Me', NULL, '2022-10-07 01:17:42', '2022-10-07 01:17:42'),
(16, 'Mahi', 'testcust@gmail.com', '9090909090', '$2y$10$p8nMMYEhu05PQHa7wSKj3.VbKBEdZe6MZf6dHV.m/IKLN3SOZPKQK', NULL, '2022-10-07 05:00:07', '2022-12-12 06:13:21'),
(17, 'test1', 'test1@gmail.com', '9191919190', '$2y$10$ZS5iMXkcv6oSlxt7vKKa6eXv0gJeTHL9xIBIR8BDS93sK7gyqnSP.', NULL, '2022-10-07 05:17:31', '2022-10-21 23:56:26'),
(18, 'Marry Jane', 'marry@gmail.com', '9111111113', '$2y$10$9mJ6p666.Q4r.Qb5w3CaceEciEVSIkYCkqOHvyK7sqHiPJRYwSCti', NULL, '2022-10-12 06:28:00', '2022-10-12 06:28:00'),
(19, 'test', 'test4@gmail.com', '9393939393', '$2y$10$NK8S6VHIT/2I2y.1E41sZ.j5J7wywbXLQFSn395.EPKHIJRRq65a6', NULL, '2022-10-17 05:57:35', '2022-10-17 05:57:59'),
(20, 'John Doe', 'john@example.com', '9111111113', '$2y$10$/lG1izTL6Qgg/4ORUaAYi.8TKWlHHKio9lf6xtQeTEGLgWDTgj/uK', NULL, '2022-10-17 23:55:45', '2022-10-17 23:55:45'),
(21, 'John Doe', 'john@example.com', '9111111113', '$2y$10$rfK.n4mRulvVrVM.faSkw.paP2mKzHy7RVbl2yfFqwZU5418hFcRy', NULL, '2022-10-17 23:55:53', '2022-10-17 23:55:53'),
(22, 'John Doe', 'john@example.com', '9111111113', '$2y$10$Q2ujAzQgIs2u4fgAvAqFdOCNLPgnf8X2ilA7Is4CWgscmkEOTg6/O', NULL, '2022-10-17 23:58:54', '2022-10-17 23:58:54'),
(23, 'test94edit', 'test94edit@gmail.com', '9494949494', '$2y$10$mlWUnzeWz1Ghe4ANXUeH0uxajAU.35FBbg7QbuiaPLPm6q8VCEpB2', NULL, '2022-11-01 04:35:26', '2022-12-10 01:06:59'),
(24, 'Atul Pagare', 'atulpgr86@gmail.com', '8600005665', '$2y$10$4Macxli.oIipFHFFu5S84eCwm4Ze6pThJj9Z0lEtOYbkFWTbb7c3y', NULL, '2022-11-04 00:34:01', '2023-06-01 08:12:38'),
(25, 'imran sayyed', 'mycarsdombivali@gmail.com', '9833158555', '$2y$10$ZzJQvjDYSlcmLgGxmRVpR.BdI/ysKkGx5rxwPz57IATHS2HM4H5lW', NULL, '2022-11-22 12:22:34', '2023-01-13 18:01:32'),
(26, 'faizee', 'faizeesayyad@gmail.com', '8689879899', '$2y$10$lzT.vnuXG.JCbpIefRPTbO2Cc0o8DevT4KLLvmLIAXRuE608Q.Mru', NULL, '2022-12-07 03:29:33', '2022-12-07 03:29:33'),
(27, 'test95', 'test95@gmail.com', '9595959595', '$2y$10$7gnx/Nv//QVl//5OhZL6XOqHnWHx4p1GzxMxuZA3m59Bu/0cJFE9i', NULL, '2022-12-13 11:43:26', '2022-12-13 11:43:26'),
(28, 'Kishor Doarge', 'doragekishor25@gmail.com', '8850550875', '$2y$10$nd2UkNiPzlrlvYYnsn9nPugTrILE8IVdVuRmhpDs8lRb/ho45Tdja', NULL, '2022-12-14 04:24:20', '2022-12-19 06:31:26'),
(29, 'Atish Pagare', 'atulpgr86@gmail.com', '9359112282', '$2y$10$IokluhL11HOB7H4AbNj.1OcipodsgxwmsNYZDeTCnHXqWe./VjwfK', NULL, '2022-12-19 06:09:49', '2022-12-19 06:09:49'),
(30, 'sharin khan', 'albeliever8@hotmail.com', '8104566863', '$2y$10$nFEaH48Cv.1W2sCaDUw8nemIy/6x7lKnAM/FyqdWUh7.w8s0fbA/u', NULL, '2022-12-19 06:51:54', '2023-01-14 10:43:15'),
(31, 'rupesh gaud', 'gaudrupesh46@gmail.com', '7977960194', '$2y$10$6ibcH3DHheVY6qwkwWn5Xu2Prj7n1Ar1CRk4k7Ni/Qw7W/OiaDQqu', NULL, '2022-12-19 09:31:04', '2022-12-19 09:31:04'),
(32, 'swapnil sapne', 'swapthedoct55@gmail.com', '9987690791', '$2y$10$Wh4voiNRhsCy3geZm7Pxk.2AqjzDsdo2eNyOak0m6/oe07eZowfDm', NULL, '2022-12-19 10:42:16', '2022-12-19 10:42:16'),
(33, 'RK MOTORS NASIK', 'rahulkankariya81083@gmail.com', '9762980322', '$2y$10$IjZlHLIIM2iwi.BTVuYX7.EjtmGfgjk5VW9SL2nCJE/vOFMQYxHu.', NULL, '2022-12-21 08:59:09', '2022-12-21 08:59:09'),
(34, 'vishal jarag', 'vishaljarag143@gmail.com', '8419922470', '$2y$10$6EdLnuuMjGX6ZlhJs8g9S.wbwtZR6XO2sNwnaHf6AIbz/reTkFIey', NULL, '2022-12-26 08:14:35', '2022-12-26 08:14:35'),
(35, 'Shaikh', 'shaikhqadeer12@gmail.com', '9819269766', '$2y$10$ySfMLvUrwfk1ztdjQroiCu/sikFf.56k3jC9c1ynNk5AfWhc4PiEq', NULL, '2022-12-26 10:02:59', '2022-12-26 10:02:59'),
(36, 'taukir khan', 'taukirkhan804@gmail.com', '9696041362', '$2y$10$2nn4KMyGpMDM2UDpfrWKNu8jFC024W0rUXgVLfaGRdiTv3JJtICjK', NULL, '2022-12-26 11:26:37', '2022-12-26 11:26:37'),
(37, 'Vikram Karvi', 'vikramkarvi@hotmail.com', '7738388816', '$2y$10$mZZBCm2Cp50Y7psRVZTZIedSt9yX1DQpcIxo19zuccukFpdKUzBqS', NULL, '2022-12-26 11:36:40', '2022-12-26 11:36:40'),
(38, 'Varun Agarwal', 'varunnag@gmail.com', '9320399249', '$2y$10$6coEwbFJST6c3ZE.z8ewce2JmvBTtr/9DRCFnA0BIJoK6XAN0JF2C', NULL, '2022-12-26 13:15:44', '2022-12-26 13:15:44'),
(39, 'sana', 'sanayu121@gmail.com', '8070890208', '$2y$10$ZCTKaA4/HlRjRw86YW4MjOEOf0OZCkcBaExm4yW81FFkUmRuZ/HVS', NULL, '2022-12-26 13:16:32', '2022-12-26 13:18:06'),
(40, 'Devidas Avhad', 'devidasavhad@rediffmail.com', '9970381079', '$2y$10$9qGuMFCWM1q.1CZyvt5Heegi8H7p0ON9DdgS9ClGDCS0dHTyiVXdi', NULL, '2022-12-26 13:29:29', '2022-12-26 13:29:29'),
(41, 'Sumesh k v', 'sumeshkazhani@gmail.com', '8108855396', '$2y$10$o.EHbMFwWFOoAfdKxxrTjeFiJREhyEImt31Rg6FsIEuppmLdSTmBm', NULL, '2022-12-26 14:14:58', '2022-12-26 14:14:58'),
(42, 'Suhas', 'girme56@gmail.com', '7021519210', '$2y$10$NbVamICTBiIrUgpQ3n028eRJTm1cXp2OtDKcGZwhSRL00JZ/QqIhq', NULL, '2022-12-26 14:21:34', '2022-12-26 14:21:34'),
(43, 'Bhautosh N Vyas', 'bhautosh.vyas3@gmail.com', '8691918585', '$2y$10$fGxGveHtAwe0FxYiYYPiG.ckfBVxVOm7Oiqm7TlAkPFNOlSdRqus6', NULL, '2022-12-26 14:47:15', '2022-12-26 14:47:15'),
(44, 'Mandar Sanjay gadge', 'mandargadge03@gmail.com', '9768560304', '$2y$10$9WEtaVreJMhaeOazPvMyXuDK0EbQH40WjzKBbpc7yjRKb8Ig.RPRa', NULL, '2022-12-26 14:51:30', '2022-12-26 14:51:30'),
(45, 'rock shahi', 'karansroshan@gmail.com', '8698383642', '$2y$10$YgfFLBqznQ6W9FFJ.lnQFu2//UfHv52hI9/PUL8w/0aHMVFF8PNcu', NULL, '2022-12-26 14:57:02', '2022-12-26 14:57:02'),
(46, 'javed khan', 'Javed2011.jk@gmail.com', '9967397973', '$2y$10$ZKdVtFjuvMnV.AUnSELUNOWZ.wkuZBSxiXXoKVZVht3aFvkd/pDUq', NULL, '2022-12-26 15:06:14', '2022-12-26 15:06:14'),
(47, 'Suryakant Ashok Dhepe', 'umeshdhepe@gmail.com', '8082091421', '$2y$10$QV2Hv6fbbYf9UXHp6UtCXOrPaCWVxrc/cRiTk.sZiFzOtGcwkUma6', NULL, '2022-12-26 15:12:05', '2022-12-26 15:12:05'),
(48, 'kunal keshav jadhav', 'kuku_leo2006@yahoo.com', '9619665919', '$2y$10$Gz3z21fZDPbEpCALqLWAe.6FoE/bM8AmoCfrUR.ajQLhv5stYofYi', NULL, '2022-12-26 15:50:00', '2022-12-26 15:50:00'),
(49, 'Devidas jankiram suryavanshi', 'devidass2087@gmail.com', '9769163093', '$2y$10$5DYxgaWUWbeVS6EnDDvPg.xr2gd..udS4XiizK/Sltt8dUryzUVK.', NULL, '2022-12-26 15:53:35', '2022-12-26 15:53:35'),
(50, 'Jitendra', 'jituwagh176@gmail.com', '9768509923', '$2y$10$XajEGZ5YByHbso3l/1xUheiAKcsdSNyGn2.yAeRBEGXjbPyhbedy6', NULL, '2022-12-26 15:54:47', '2022-12-26 15:54:47'),
(51, 'Raghunath Gopal Kamble', 'raghu.kamble007@gmail.com', '8169666576', '$2y$10$yoeuGrvaRKMFtLH97HAKlehQ60oYH.cLpQSFUaJHUY4XodB6d37Ce', NULL, '2022-12-26 15:58:23', '2022-12-26 15:58:23'),
(52, 'Shekhar Bhaskar', 'shekharbhaskar248@gmail.com', '8070235950', '$2y$10$gInOpy7/yfR9YR9V6vm6Hu.8gQDPDDIlMajyk3lsGGf5SzQosIGoG', NULL, '2022-12-26 15:59:50', '2022-12-26 15:59:50'),
(53, 'PRANESH GHAG', 'praneshghag@gmail.com', '8879552771', '$2y$10$PLeW4PwgMWQgv2NlHvIoouVKj/9z.rnExbYfktwxNANLIrlzHY5Ki', NULL, '2022-12-26 16:00:45', '2022-12-26 16:00:45'),
(54, 'Vijay', 'parekarviju10@gmail.com', '9594669616', '$2y$10$anKAlcHs5Krpr9/6NOu34exc.k.yox6xhvkc87SPTTrty3P9bSx.i', NULL, '2022-12-26 16:25:08', '2022-12-26 16:25:08'),
(55, 'Omkar Jayant Bhangre', 'omkarbhangre99@gmail.com', '8454966541', '$2y$10$hohJwi7V/48ddeRdmMIlmO3x2CUbSUwwjsjdzBHUNggWeJacM4H/m', NULL, '2022-12-26 16:28:49', '2022-12-29 15:55:03'),
(56, 'Sachin  Suresh Pagare', 'sachinpagare1991@gmail.com', '9821079649', '$2y$10$UTtuaSUOMZfOCGpVjwoAL.jEMhIzCeL.Jy8HfB1wlyXNcFSkeHViq', NULL, '2022-12-26 16:34:01', '2022-12-26 16:34:37'),
(57, 'Shailesh Suresh gawade', 'gawadeshaileshsam1995@gmail.com', '9773015514', '$2y$10$7SxohL1VqeXevWEXYibNdOsbCpzeFiodfrz1Ckb5.z6iS5R9CbE5i', NULL, '2022-12-26 16:41:18', '2022-12-26 16:41:18'),
(58, 'Pandharinath Bhojane', 'pbhojane1992@gmail.com', '7977937300', '$2y$10$yA5DuPAmdRFzZnQLMVCujepEvVaZsHcR/l8vq2O7QKpJB.PJM6v1a', NULL, '2022-12-26 16:43:37', '2022-12-26 16:43:37'),
(59, 'Ramchandra Vaman Parekar', 'parekaram94@gmail.com', '8652557943', '$2y$10$S0.vtYb9dcx9Kg8fBq8L0udbvLBx5ZKGLA5/6l8fcjBad/zzslpo2', NULL, '2022-12-26 16:45:56', '2022-12-26 16:45:56'),
(60, 'UNAIS AHMED KHAN', 'unais8369@gmail.com', '8369724115', '$2y$10$9CRmSnSxdXOV3EA25Brl3OHxOmOI4HHRkJeH60x5d6GbhdkG2UTay', NULL, '2022-12-26 16:49:13', '2022-12-26 16:49:13'),
(61, 'Ranjeet prajapati', 'ranjeetprajapati1234567@gmail.com', '9653492205', '$2y$10$pABS0qBVsMpMDxDLcHCa..riigykejY7yzP3kBFw4IAjM9MZ.xI0u', NULL, '2022-12-27 04:10:44', '2022-12-27 04:10:44'),
(62, 'Mahesh ravindra gaikwad', 'maheshgaikwad504@gmail.com', '9967373227', '$2y$10$B8RYMNIRvzmT8n1Z6EPXk.0ZGH1lfoALF6DjAWJWGPI/btr64l53e', NULL, '2022-12-28 05:09:35', '2022-12-28 05:09:35'),
(63, 'wasim patel', 'wpatel299@gmail.com', '9890610291', '$2y$10$6qtSj.b4iVwWbb9WL1ya0OKnqTOs8ipDEPJH2i7ZkyVHocdcNvNHu', NULL, '2022-12-28 16:51:43', '2022-12-28 16:51:43'),
(64, 'Ansari Kamran', 'ansarikamran242@gmail.com', '9594343243', '$2y$10$7yH5P9RLFZGMwIJxZxevZ.0t8oaiBYjqO66OgcJ7e4atZhxbX8SNm', NULL, '2022-12-29 03:11:43', '2022-12-29 03:11:43'),
(65, 'Bhimsen Babulal Sapkale', 'bhimsensapkale7@gmail.com', '9029727038', '$2y$10$84yr.Pav2Gym1PrHsPuPjOdc74dwRP8taOkj7kNPu3Nkk/sQ8O3gW', NULL, '2022-12-29 06:21:52', '2022-12-29 06:21:52'),
(66, 'Amit Rekhi', 'amit.rekhi1@gmail.com', '8450990102', '$2y$10$oNrpvPhFhhvKILtWR44UCutch9vVNguh2fGYyR9rIGO/odifLFZd.', NULL, '2022-12-29 06:40:30', '2022-12-29 06:40:30'),
(67, 'shivkumar', 'chauhanshiva26@gmail.com', '8767735785', '$2y$10$9f4.WM0C40gnxIrQ8zsjIul3ZbTGhHDH4jXSHmwNKU8EIVT1ckTVO', NULL, '2022-12-29 07:55:30', '2022-12-29 07:55:30'),
(68, 'yogesh Ghodke', 'y_ghodke2004@yahoo.co.in', '9869393472', '$2y$10$iv92DsJM9Ybhlb2IsOG7tOsn2aZznBd2YnzlnHhMYnXsdtPkQmV2m', NULL, '2023-01-01 13:35:54', '2023-01-01 13:35:54'),
(69, 'Mahesh Kasar', 'maheshkasar1986@gmail.com', '9890046115', '$2y$10$.j.dfvAPX6YEtnpK.DY4hudSQ9psmdb2l0wQDPdvDShMBz8lm2y9S', NULL, '2023-01-02 17:17:49', '2023-01-02 17:17:49'),
(70, 'jay trivedi', 'jaytrivedi9317@gmail.com', '9699855600', '$2y$10$VbdEb5C1G6fBxEL4mACrwuKisIksTodxhxVmLquEQJUdbdlTX.8vO', NULL, '2023-01-03 07:54:05', '2023-01-03 07:54:05'),
(71, 'bala satiesh', 'gorantlasatish143@gmail.com', '9010285915', '$2y$10$6TWQRLfWhLc7gBp93KO43.FrfdpD1tMYLu7rjKLUIQras42TYPg0u', NULL, '2023-01-03 08:02:09', '2023-01-03 08:02:09'),
(72, 'Rajesh Dilip Surve', 'rajsurve1.rs@gmail.com', '8788430383', '$2y$10$4HoWcfohVu2E31vUeegw9uyg7FoHfnhN5rwnpbf9KY28.mtHueSaa', NULL, '2023-01-03 17:29:14', '2023-01-03 17:29:14'),
(73, 'Suleman shah', 'sulemanshah56@gmail.com', '9004364440', '$2y$10$yNqDPZDZ/jWQgy0fphsE1e330XFE6T73b5zXJNFD1/onc3fLnKeTe', NULL, '2023-01-03 17:33:52', '2023-01-03 17:33:52'),
(74, 'Rohit pichad', 'rohitpichad9988@gmail.com', '7506161086', '$2y$10$YIbLGYozPjsoo6DQ1Sg/5uUSbAQvePAakQN50MFcd4Q2ybhu.M4xa', NULL, '2023-01-06 06:13:48', '2023-01-06 06:13:48'),
(75, 'Rishi', 'asthana.rishi20@gmail.com', '8600179736', '$2y$10$35mEZiTLmwEJcRPvJJV/neUPC6.diEpZ6.y8UHM6mYrUdVclmPkJK', NULL, '2023-01-06 11:54:34', '2023-01-06 11:54:34'),
(76, 'mhatab husain', 'asthana.rishi20@gmail.com', '8104136785', '$2y$10$GwXvVR6z1lvQV.uQRo2hBudiJEZ.fKhCKHqWytEGgKMwCUSi2ckaa', NULL, '2023-01-06 11:57:42', '2023-01-06 11:57:42'),
(77, 'Sandeep kumar Rahul', 'Sandeepkumarrahul104@gmail.com', '8887872467', '$2y$10$E5pRPGT8g5Zvgm02yTkLW.SddlYBFg9EsKmvDUkvROAfchiPLgzZu', NULL, '2023-01-06 12:16:15', '2023-01-06 12:16:15'),
(78, 'rupesh gaud', 'gaudrupesh46@gmail.com', '9768141479', '$2y$10$k9v8R48dFpJMcU3h6qjGH.eXQiaH.3um/VNxi6.9g/wTbH3Se.zQO', NULL, '2023-01-06 12:25:31', '2023-01-06 12:25:31'),
(79, 'test', 'test@gmail.com', '7678049090', '$2y$10$dsyu8MpziYy5qnOLux5mm.7rb4iSEwlRMjqPCllTKtojc9mlvyfQy', NULL, '2023-01-06 13:45:36', '2023-01-06 13:45:36'),
(80, 'Suresh Navale', 'navalesuresh@gmail.com', '9860709455', '$2y$10$.eQWs11y6GKt9NTr9yNb4e3DVhvpZXoFaTY4sixHw9phXfRgERr3.', NULL, '2023-01-08 08:50:28', '2023-01-08 08:50:28'),
(81, 'Amul Thakur', 'thakuramul6@gmail.com', '9389287548', '$2y$10$DZSqLMYJTed6E2GTrJs/cuDhwd/L9EVAxD/.yJNOoK/.Zqfd1U2qe', NULL, '2023-01-08 11:36:47', '2023-01-08 11:36:47'),
(82, 'RitvikAsthana', 'asthana.babuu@gmail.com', '9890565211', '$2y$10$SbyZ5KLJveNbsVKr05hv/eQ0MHogoGztOzTEd2v2J7W1e2Xwnd5KG', NULL, '2023-01-09 07:27:46', '2023-01-09 07:27:46'),
(83, 'Dhananjay Mehta', 'pdmehtar3006@gmail.com', '9890335506', '$2y$10$eBwiwSohPCOw1nxqNjM/cetiFMt7uSF4QEgUvTntzQe7dSBogFriO', NULL, '2023-01-09 12:16:38', '2023-01-09 12:16:38'),
(84, 'Mukesh yadav', 'my995633@gamil.com', '9619294853', '$2y$10$ZTuFco7bcDa/nZeUmOLF3.Vf/PYslwC0fIWktiOvNfAjFletlPB7O', NULL, '2023-01-09 15:02:26', '2023-01-09 15:02:26'),
(85, 'Sajith Shyam', '357spsajithshyam@gmail.com', '7025868343', '$2y$10$mLIzftUiJlH68iRQbgXjU.B64SqCbB4Qyvz6DX/XRK60UIluTuyIO', NULL, '2023-01-11 05:00:19', '2023-01-11 05:00:19'),
(86, 'Rahul Yadav', 'rahulgolumolu14321@gmail.com', '8928952515', '$2y$10$Db.N/aCGQeAD.wMlVg8sP.wBvklR4UH6xIs8twm39ViVdIvEGJD8C', NULL, '2023-01-12 11:52:35', '2023-01-12 11:52:35'),
(87, 'Dinesh Prajapati', 'parascomputer.pc@gmail.com', '9867788668', '$2y$10$bdYH.zr1NeTxzWm21ckfEONxEDR3m9kPl6w.3g/CYaUqquSaTMQni', NULL, '2023-01-13 15:39:32', '2023-01-13 15:39:32'),
(88, 'Kallu Natikar', 'kallunatikar765@gmail.com', '9657382578', '$2y$10$Ah.lCk/BpGQTRnI119Km4ecO0hleNqastF0bhxFrsEheN92vkHZaK', NULL, '2023-01-13 16:08:54', '2023-01-13 16:08:54'),
(89, 'SANTOSH KHARAT', 'kharatss@gmail.com', '8692840555', '$2y$10$buY0rpg64vo1MM9cLtx/suJaYl87xzAw0AW345PvdIFBfyPCVnt6S', NULL, '2023-01-13 16:09:19', '2023-01-13 16:09:19'),
(90, 'Kiran balasaheb aher', 'kaher255@gmail.com', '9503006206', '$2y$10$5Hx3ZXIJ4dRBOLrsGXCeluc953UaSXmEb/JBQtjMubJV8jHkhiPXa', NULL, '2023-01-13 16:43:05', '2023-01-13 16:43:05'),
(91, 'Sharfe Alam', 'ssharfealam143@gmail.com', '7549227895', '$2y$10$lyIvtTakd8bRFHHNdBmcHeeC0v5f6pwWKKWsKrwf0CYIuIW6fILtC', NULL, '2023-01-13 17:34:37', '2023-01-13 17:34:37'),
(92, 'Nitin Hadkar', 'nitin7083857409@gmail.com', '7083857409', '$2y$10$njbAREessvgnXiczbNQ/qekkxoG3RN4RFA8BSmx2rTcSIGwjmRFQa', NULL, '2023-01-13 21:04:41', '2023-01-13 21:04:41'),
(93, 'prince saroj', 'princesaroj460@email.com', '7387013809', '$2y$10$QOqwk8BtvyGn2pfygHfo3.Ec3G/HeFAv0r3smn6l25IRAlseWeOzq', NULL, '2023-01-14 03:49:59', '2023-01-14 03:49:59'),
(94, 'manoj muneshwar', 'anjalikaninde22@gmail.com', '9637116553', '$2y$10$gOAm994rMI8WbQGrf.4qD.R6ABEJYxlGAsiYxB47MBowK2ncNlBUO', NULL, '2023-01-14 04:25:19', '2023-01-14 04:25:19'),
(95, 'ASHWIN GAJRA', 'AshwinGajra@Yahoo.com', '7738181242', '$2y$10$/pFepaNyXfSQcjXxddHIcuGLimm58xsDprMsSMZAIg78171WkbJrW', NULL, '2023-01-14 08:09:41', '2023-01-14 08:09:41'),
(96, 'RAMESH MISHRA', 'rameshpoonam508@gmail.com', '7977751827', '$2y$10$05Eb5kL5Ewy8BGxokYPoLuxh26PcP7IhvyXFjSJRc5Jm5/3TqrQDK', NULL, '2023-01-14 11:20:45', '2023-01-14 11:20:45'),
(97, 'Yogesh Gangaram Khadapkar', 'khadapkar1984@gmail.com', '8208043774', '$2y$10$ffuwAIL2SjK5TlVfKMT/Iew9SfZpqbbURNDjItz9GnP1DSOBKlqxS', NULL, '2023-01-14 13:41:24', '2023-01-14 13:41:24'),
(98, 'pranav hirave', 'pranav.hindustani94@gmail.com', '7208867280', '$2y$10$C.NcA9HLHrwZxLsSoegtBenEG3Hx2faWlv3mI5YUhFm3u3wjnp8Hi', NULL, '2023-01-14 13:58:01', '2023-01-14 13:58:01'),
(99, 'Rakeshkumar pandurang kodape', 'vedantkodape123@gmail.com', '9579433092', '$2y$10$GwZ3sjHVt8yh4huMpcX5/..gDkU8QvZUhtmSz4I8H6q2Wedxl.swO', NULL, '2023-01-14 15:31:46', '2023-01-14 15:31:46'),
(100, 'Pradip g', 'pgawai5858@gmail.com', '8669023142', '$2y$10$3WE8KF5BAYkXMeoVPyaQZ..b6NFSfBuEktyU5fdH0pVEmghw1xS8u', NULL, '2023-01-14 15:37:04', '2023-01-14 15:37:04'),
(101, 'Ajay Jadhav', 'ajay.rockar@gmail.com', '8097187937', '$2y$10$kyds5wEgU2rTA8wKR3DHN.pXb4kIGIuIDv8hSTuuocacDF7eRjQd6', NULL, '2023-01-15 03:10:36', '2023-01-15 03:10:36'),
(102, 'Jahid Dange', 'wedocanfrick@gmail.com', '9767309192', '$2y$10$AInYcgsr6nEfvRCdZzZSU.V7Te7GfKRiyf7TTC.Emkn9gvFVamJ8y', NULL, '2023-01-15 07:57:43', '2023-01-17 09:36:20'),
(103, 'Anuj pawar', 'anujpawar9424@gmail.com', '6263452374', '$2y$10$8arXg4y.LAIdc5RE30fuTemW0TVzBq7F.dzdSbisa4Dbs.UUr.i4a', NULL, '2023-01-15 08:10:51', '2023-01-15 08:10:51'),
(104, 'ASHISH SIDDHARTH NAGDEOTE', 'ashishnagdeote@gmail.com', '9370662369', '$2y$10$w.QNdgyzT7rmz0CkOJWWreZINZXtY4q3Gg/yi2Tsyk83lVo8LrbHe', NULL, '2023-01-15 08:59:53', '2023-01-15 08:59:53'),
(105, 'Aditya Ghagare', 'saririya152@gmail.com', '8275458582', '$2y$10$1Ldeo43HUPizM3.JBm0Bn.qqjGxRlQ2nr2f7W9wxNfgMq5OvNzDsi', NULL, '2023-01-15 09:47:28', '2023-01-15 09:47:28'),
(106, 'Ajay Sudhakar bedre', 'ajaybedre8877@gmail.com', '8459367953', '$2y$10$2B20Aj7fTaFt36nxn5jCa.YI/KjMwZgrlkPs02vivLKkjNhfgtzGW', NULL, '2023-01-15 11:22:21', '2023-01-15 11:22:21'),
(107, 'gopal', 'gs39624@gmail.com', '8928816654', '$2y$10$MQK3PNgR.BYs1Yy7uIcnUuoVXbruvdatc1v1eOV80f0yTmRxI4Fg2', NULL, '2023-01-16 03:43:06', '2023-01-16 03:43:06'),
(108, 'achini', 'nag370@rediffmail.com', '7013072694', '$2y$10$i8955zWcXaBRvL4AOZY0fOl7K5znY7UHL3C9nBF6jm2m3Sq92tkQW', NULL, '2023-01-16 05:11:23', '2023-01-16 05:11:23'),
(109, 'Md Sherali', 'md.sherali34@gmail.com', '8008067786', '$2y$10$/evS2klsV.ke6cs.nBgKY.IH/IFKcVIn7wiEk9/TtxVq.sr6xzE9u', NULL, '2023-01-16 06:25:44', '2023-01-16 06:25:44'),
(110, 'Tanaji Madale', 'tanajimadale1970@gmail.com', '9509038261', '$2y$10$NPMfJnAlxgdnyncONQv9vul0YpLzwFmOrmBXLDFl0GKSkrFwR/vEK', NULL, '2023-01-16 09:44:52', '2023-01-16 09:44:52'),
(111, 'SUNIL DABRASE', 'ssdabrase@gmail.com', '9422655001', '$2y$10$44mpeNhIH14tqVE88JWN9etL9MuFIlrlnxQZYoz1tCYBe9EZctYm2', NULL, '2023-01-16 10:47:04', '2023-01-16 10:47:04'),
(112, 'manish verma', 'manish4179@gmail.com', '9284491368', '$2y$10$QhtZxP6kwU6N1dVwLVku1.u.uCklIV8NQhC/zYYSWvIOJyT4/T4D2', NULL, '2023-01-16 13:30:14', '2023-01-16 13:30:14'),
(113, 'Nilesh kasare', 'kasarenilesh2@gmail.com', '8433551804', '$2y$10$cCosleb9N3jvEdtaNmiFy.GGBjVVZqKuWLl/im2UKiMkQuxNcYWza', NULL, '2023-01-16 16:37:06', '2023-01-16 16:37:06'),
(114, 'Suraj Khatawkar', 'surajkhatawkar1234@gmail.com', '9029848859', '$2y$10$pO6Uum.F88RXdZEvg92/we1F8mFb9UwxHwJvVGoXokXcVR/p8IX8m', NULL, '2023-01-17 05:34:40', '2023-01-17 05:34:40'),
(115, 'Krishna jadhav', 'krushnajadhav111@gmail.com', '7517774888', '$2y$10$D9OzTNNvjHD4H.QxsQHCIuVGCi.pBtl0eL9KFuWiuT5kGKintpDQi', NULL, '2023-01-17 06:28:44', '2023-01-17 06:28:44'),
(116, 'cars for sale', 'deadly786123@gmail.com', '9987892959', '$2y$10$I4g9DG65VWAOwPFXlGmrO.WS.jYYpWkDJvxmX/QmqM7XZRnejwys2', NULL, '2023-01-17 13:54:22', '2023-01-28 10:19:18'),
(117, 'arbaaz', 'deadly786123@gmail.com', '6361769670', '$2y$10$61BpRZincaXrRhKNEe2/VOSrYXq2ZseCygES0i85Iq8xZhaZWSH4O', NULL, '2023-01-18 07:52:00', '2023-01-18 07:52:00'),
(118, 'Sanket Rajendra Bhave', 'sanketbhave9@gmail.com', '9594668725', '$2y$10$NMIKOAa/VgOigjDFgS2nVexqFU7gxLC0rMe/WKaUsegF05CrKA9dS', NULL, '2023-01-18 15:23:19', '2023-01-18 15:23:19'),
(119, 'Govardhan gunji', 'govardhan1998@gmail.com', '9032510555', '$2y$10$F3BUyngy.fB.xjgUmvd/hOkEcB8QDQUB9njWF2e6DKWMtS713AvU6', NULL, '2023-01-18 16:57:26', '2023-01-18 16:57:26'),
(120, 'himmat k', 'himmatbambhniya@gmail.com', '9082743147', '$2y$10$nttE7xpqgXbPyC4aPOfrSe2MwpUTwFGQpvDuxrD9DQnmDY3SZTsly', NULL, '2023-01-18 18:36:17', '2023-01-18 18:36:17'),
(121, 'abdulmustansir', 'afr128145@gmail.com', '9518558418', '$2y$10$hjF2LoDKPZS0ycvDCKW6jO4/BukcvmvfI.g/kct1oBzUKWI7dV1UW', NULL, '2023-01-19 06:03:45', '2023-01-19 06:03:45'),
(122, 'jeevan sutar', 'jeevagraphics2@gmail.com', '9168545417', '$2y$10$EWj37HpSh2yIKL4keHoKqO9CEKIwJKdTJjhrP4dVSOiiya9UTugRG', NULL, '2023-01-19 07:05:08', '2023-01-19 07:05:08'),
(123, 'Rohit Waghmare', 'rohitarya.rw8@gmail.com', '8104899434', '$2y$10$2L2qRgPBIWPviA9pg5gxHepZYsLqBMetCqdbtBO4Ka0jJx713nws2', NULL, '2023-01-19 11:55:32', '2023-01-19 11:55:32'),
(124, 'Jaywant shirdhankar', 'jaywantshirdhankar@gmail.com', '9870147901', '$2y$10$JvL0HPXqidwt4lRLSCGjX.XmtIz5Vc2AwzskM.RAK3FglyPGpBEUG', NULL, '2023-01-19 12:25:57', '2023-01-19 12:25:57'),
(125, 'Fareed Abdullah', 'abbu483@gmail.com', '9985252839', '$2y$10$zFUOGfFveSJSr82CVSwWNeetAwYu3LPAJo/BL7ClOYa78jW3kbqWm', NULL, '2023-01-19 16:07:12', '2023-01-19 16:07:12'),
(126, 'anil patil', 'anilpatil9962@gmail.com', '9175209962', '$2y$10$Q27QKXn1A6Po54UA/CECsupF8mutgflgNFBSisJmCMpbKCK6bTwR6', NULL, '2023-01-20 17:26:58', '2023-01-20 17:26:58'),
(127, 'PRASAD SHRIKANT KATHIKAR', 'prasadkathikar30@gmail.com', '9860458389', '$2y$10$T4yTmeDax6klAx52MChUbu9YlkwoWj.HSPo8L3r8uiobeQBBLVD0W', NULL, '2023-01-20 18:00:11', '2023-01-20 18:00:11'),
(128, 'sagar nandu suroshi', 'suroshis@gmail.com', '7276435047', '$2y$10$wKx3TKbrKihAVfLJMUUHh.adnZ7qO7yLxvucI06froxOlAcaXBGYu', NULL, '2023-01-21 09:40:01', '2023-01-21 09:40:01'),
(129, 'vilas kokare', 'vilaskokare0@gmail.com', '9011970877', '$2y$10$8IQMGvRExOfnpLm8t7Ol.eVTOcTkhyf.i2lBxyBZrwxcz.VbuSxju', NULL, '2023-01-21 12:00:37', '2023-01-21 12:00:37'),
(130, 'Sanket Phadnis', 'sanketphadnis@gmail.com', '9833384998', '$2y$10$/mfCuGqaQ9TvNCe9tFTBz.9KpZYAsBRlLfMxDwb5503sn5WEIGgEm', NULL, '2023-01-21 12:48:20', '2023-01-21 12:48:20'),
(131, 'Harshada Arya', 'harshada.arya311@gmail.com', '9225378781', '$2y$10$btY1Lg5.hAFfWFD9dESIxuy6piVSkJeV2dNZRdtqsbgqvUvy3xqL6', NULL, '2023-01-21 14:25:06', '2023-01-21 14:25:06'),
(132, 'Manish Mandhyani', 'Manishdmandhyani@gmail.com', '7507777769', '$2y$10$QrDJU.3oHI.RentscY9BJuNFXsIBK5FeSNA4820gH5meTAAxUwWsa', NULL, '2023-01-21 14:35:36', '2023-01-21 14:35:36'),
(133, 'rsgamig', 'bagulravindra007@gmail.com', '9545651237', '$2y$10$mQsAO1JvAQCcmgq4qymK8OR.kSztbK0T5rSh4FjFnDuxhhqiXG/0S', NULL, '2023-01-21 17:26:59', '2023-01-21 17:26:59'),
(134, 'Sabirali Shaikh', 'skfabricate1992@gmail.com', '9324784836', '$2y$10$bniZvyQKK1z481sjmwcNE.11myZ244VBn3wowmL6l5cFTz.jZy4/u', NULL, '2023-01-21 17:43:42', '2023-01-21 17:43:42'),
(135, 'Aaradhya', 'jainaaradhya77@gmail.com', '8108755581', '$2y$10$0RY2uPuI6nzJcWciOMSn/.vijIIqSB8IRJ6607Ncr2bqmhqSE7rny', NULL, '2023-01-21 21:03:15', '2023-01-21 21:03:15'),
(136, 'Ratnesh Mohan Rao', 'rao.ratnesh@gmail.com', '9833274678', '$2y$10$bzFnhTfCttEeKo1mixDmF.CmfUm9EXvtR6dJ6qA.Md0Ewiu3NBFUy', NULL, '2023-01-22 04:05:12', '2023-01-22 04:05:12'),
(137, 'Rohan Erulkar', 'rohan260192@gmail.com', '8879026003', '$2y$10$9yKtAUz8njWHd2guenw0DuQ/Z2wnC1Hq.7sovckiOqzUynJyLDmu2', NULL, '2023-01-22 05:23:17', '2023-01-22 05:23:17'),
(138, 'Milind Kharade', 'milindkharade@gmail.com', '9821667963', '$2y$10$j1aJOOd3r2TqPZ7CxnIsfuQYKzBrqFNSlGCpAXiU3mDq1xxpkHAMO', NULL, '2023-01-22 09:09:06', '2023-01-22 09:09:06'),
(139, 'imran chaudhary', 'imran022mumbai@gmail.com', '9768513781', '$2y$10$xOHbkOO1KdYJGLZyyJwfD.Y6BMrfvC21th5h2RGZiYj9b0it.dUg2', NULL, '2023-01-22 09:41:26', '2023-01-22 09:41:26'),
(140, 'yusoof meeran', 'meeransam091@gmail.com', '8122669390', '$2y$10$cerPnDYSqG0UYSpCDtg1C.im9TKLrvjQzHdkFlvLvmTcNdkhR4tdO', NULL, '2023-01-22 11:26:42', '2023-01-22 11:26:42'),
(141, 'Qualia Unicap', 'namokar.gcs@gmail.com', '8805617461', '$2y$10$G3khkAEVrQDrn9RpUlomqO2mxw9ls6BsKPZMloUnJ1jnu/FEyr38e', NULL, '2023-01-22 11:32:52', '2023-01-22 11:32:52'),
(142, 'Santosh Laxman Gaikwad', 'sgakwd11@Gmail.com', '9767235040', '$2y$10$Ph0rTmVQzCPN7dd7TAxdT.lx.v5Cd0qUIXsvI8R0h2kf4Q1c3apyK', NULL, '2023-01-22 14:31:24', '2023-01-22 14:31:24'),
(143, 'shabbir', 'ashabbir910@gmail.com', '9819171007', '$2y$10$qYtjNyPKhquMFkkdBZVYEOL6HZhsmT6rhDRHb/1y6Mb8NtIvSiRpu', NULL, '2023-01-22 19:37:20', '2023-01-22 19:37:20'),
(144, 'sulaimaan', 'skhtb91@gmail.com', '9449936256', '$2y$10$mryyxiJGW6Qh.f/kjurTp..l4DuJc7sc2WeyhGiyOEWpWSI3/wWy6', NULL, '2023-01-23 04:44:07', '2023-01-23 04:44:07'),
(145, 'Shahnawaz', 'shahnawaz2011@hotmail.com', '9167209244', '$2y$10$bVI6n2qcBkTAt71P1Ph9Wetac/cXtcRMgriUpRex/zDdsQwoCHEfu', NULL, '2023-01-23 07:40:13', '2023-01-23 07:40:13'),
(146, 'siddhesh mapuskar', 'smapuskar80@gmail.com', '8454067719', '$2y$10$OCxfE3Cg7ZxBWkrDNjppLuulWm6E35q0dfbh9rSi5L5pwqYtA8gkS', NULL, '2023-01-23 09:27:23', '2023-01-23 09:27:23'),
(147, 'fahad', 'fahadshaikh09@gmail.com', '8850935874', '$2y$10$GIeXS1fJuMzpdOC0d8lup.Klxrw6gYYcj5s.7G5lPa//5NU.qwM.u', NULL, '2023-01-23 11:22:19', '2023-01-23 11:22:19'),
(148, 'Milind Kavde', 'milindkavde@gmail.com', '7977691346', '$2y$10$HoOflURHGJxT2uXoKm4oF.Dsp664BeTXR898MPv18FiKl79AJEfUC', NULL, '2023-01-23 11:47:01', '2023-01-23 11:47:01'),
(149, 'shubham pardeshi', 'spardeshi.1995@gmail.com', '7507879668', '$2y$10$VShq3dc6I7k2rakKatiI5usx5Xy23ySuNbkVytkCOdZCKRRLhAxYu', NULL, '2023-01-23 12:02:25', '2023-01-23 12:02:25'),
(150, 'amit sanjay salunkhe', 'amitsalunkhe519@gmail.com', '8600491182', '$2y$10$/p..VYSoMZwAfDc69hIgVeqSbeUCPbgaBBB6.e/qD8i0tudZ8mN4G', NULL, '2023-01-23 15:23:06', '2023-01-23 15:23:06'),
(151, 'Ganesh Ghorpade', 'sonalighorpade2092@gmail.com', '9665896622', '$2y$10$yECcM/VVxcmqZg1ta904RueskH9OV4olgejRkpODJVTCjpB1HXTi.', NULL, '2023-01-23 17:10:46', '2023-01-23 17:10:46'),
(152, 'Shailesh Singh', 'Shaileshsingh4183@gmail.com', '6267434139', '$2y$10$Wzq.GtVR.l1Ab4EwacWjNeDQ8rugXlbLf1V0uCY7J4jEfaw6YwPGK', NULL, '2023-01-24 06:36:38', '2023-01-24 06:36:38'),
(153, 'siddesh phadatare', 'siddesh232002@gmail.com', '9967226865', '$2y$10$Xv4tIW/b0MHt.FHOyyP.5.4FgqzVUeU2bfdg1JWs4BK1Is5wAuqhS', NULL, '2023-01-24 09:06:55', '2023-01-24 09:06:55'),
(154, 'Padmaja', 'padduiict@gmail.com', '9441921937', '$2y$10$Y2YwS.pVJU6JKjClEylrcOWipqC53MlBXj7MrLUnCTpExYaalcknu', NULL, '2023-01-24 09:41:36', '2023-01-24 09:41:36'),
(155, 'Kamlesh B Jejurkar', 'kamleshjejurkar4056@gmail.com', '9850144056', '$2y$10$kQFo.k30hfZ4/nAUY6dsM.yDOF7.jFRmkaG41UUDwNNjbwlDF3oEm', NULL, '2023-01-24 18:00:35', '2023-01-24 18:00:35'),
(156, 'Rahul Yemul', 'rahulyemul03@gmail.com', '9309844434', '$2y$10$mxEocs1rwdG/BMwKHduTMOcY1LS8mFq.tiZ4twUYzCpRFiKxaJb.q', NULL, '2023-01-27 16:29:06', '2023-01-27 16:29:06'),
(157, 'Selvakumar', 'joraparivar@gmail.com', '9930720123', '$2y$10$ECpWG3WEy79P2J4Z5Pw/1uG3TmeBBeojG/glHSvzwzR2CyNqZ3sim', NULL, '2023-01-27 23:56:10', '2023-01-27 23:56:10'),
(158, 'noor islam', 'islamnoor4224@gmail.com', '7001243793', '$2y$10$JZlO8xbrTOgfuWCp6amhkOzyr/znK3Tw9U2kODXs5K6OjrMngiTja', NULL, '2023-01-28 16:03:37', '2023-01-28 16:03:37'),
(159, 'Mandar V', 'mandarvib@gmail.com', '8655227976', '$2y$10$UJELHnmKrM/SbpDnz/jC6eZAnd9xp2.g3eXeYWqEvYdF76XdcnAoq', NULL, '2023-01-31 04:14:29', '2023-01-31 04:14:29'),
(160, 'Deepak shivaji Kamble', 'deepak.kamble49@gmail.com', '7020381019', '$2y$10$6TxdRCvO1G6zOd9YKIz0uOqAxpI4o83In8ahj2Z6FcLtO2PE5MMYK', NULL, '2023-01-31 18:09:12', '2023-04-07 04:18:25'),
(161, 'Mohammad Yunus', 'mdmotormotor1075@gmail.com', '9768215162', '$2y$10$OoA1PnQftaLNtnrEwtTlZ.xplkDAyxTDAJehZSIF2raUWYAyEb9pe', NULL, '2023-02-01 09:01:31', '2023-02-01 09:01:31'),
(162, 'Yogesh Yadav', 'yadyogesh1989@gmail.com', '8767757305', '$2y$10$IUppP8L.qpPqflhFHpjX0eIGxK.MM49BwKwznLO6aGeqa9mpYF3NW', NULL, '2023-02-01 09:49:42', '2023-02-01 09:49:42'),
(163, 'palkonda rajendar', 'rajendarpalkonda@gmail.com', '7093448970', '$2y$10$nRsIDGaKQ9geljHKgKtlnOdgqVP.OVUlcoXG93FYfWi4yiQIqPV9G', NULL, '2023-02-02 01:21:07', '2023-02-02 01:21:07'),
(164, 'Bikash Bishwakarma', 'bikash.bis@gmail.com', '8617542727', '$2y$10$2jESkaxtAwPy8WPd069bmeNuhoZwaSNY.mrmnXHE4ZKOL7pjUGcvS', NULL, '2023-02-02 10:28:58', '2023-02-02 10:28:58'),
(165, 'Mohammad KALAM', 'm.d.kalam9853@gmail.com', '9853731988', '$2y$10$T5EEfhIkeCswtJgZ6DqDeu1MuehkCKc5MIcjEoLFfQaZpkd2csBIm', NULL, '2023-02-03 16:03:22', '2023-02-03 16:03:22'),
(166, 'Praveen  Raman Sonar', 'prvnsonar@gmail.com', '9545222777', '$2y$10$uRzRCrmunwLyeDUwOkeTPeLIObWFtpwqnX/050oi5zQUnzugHwGpK', NULL, '2023-02-03 17:06:51', '2023-02-03 17:06:51'),
(167, 'Nilesh kapale', 'nileshkapale2012@gmail.com', '9834607366', '$2y$10$ggfqZWKj5TcpkPoZMKI/v.064PnuyJal/qhebs427x5gLydrivE4u', NULL, '2023-02-04 05:46:51', '2023-02-04 05:46:51'),
(168, 'mohd raheman', 'atrpost@yahoo.com', '9762057250', '$2y$10$ueH8182MOIzf4IAk0SDpwuk28at2hg2Fdy0AQMyQwPFFLbjf4MgAK', NULL, '2023-02-04 06:21:03', '2023-02-04 06:21:03'),
(169, 'nilesh dnyaneshwar mandumale', 'nilesh.mandumale@gmail.com', '9033483446', '$2y$10$gKJJIPeQlj3apI.gOYWCfOo2goKIhsJDjypowhfY5ZlhJECGK8UIm', NULL, '2023-02-04 07:49:03', '2023-02-04 07:49:03'),
(170, 'akash dilip itkar', 'itkarakash26@gmail.com', '9284911233', '$2y$10$AbuuAQfBRG9KHHKwi.6byeH36FCx91VpKEvCqOO0LgH3I3w4/keoa', NULL, '2023-02-04 15:45:00', '2023-02-04 15:45:00'),
(171, 'amol parab', 'amol19parab@gmail.com', '7977727177', '$2y$10$X02rinJhpBYagdpMkLNxn.GYZ4GLpH.ezvN3ml7cMMg4szfwB3gl.', NULL, '2023-02-04 18:29:10', '2023-02-04 18:29:10'),
(172, 'Faisal Khan', 'faisalgaffurkhan986@gmail.com', '8424989927', '$2y$10$U.bly6xXvbdFGq.8m/hef.CoBE4wTFpA9tI2uDnUbQdxNSjfsSb5C', NULL, '2023-02-04 20:19:45', '2023-02-04 20:19:45'),
(173, 'Pranit Milind Kadam', 'kadampranit8@gmail.com', '7208079817', '$2y$10$WndWHC2EvlbD6oEyMaCS4Olne1X4XgZ22oZ8vHRX6VU4iBNJNSJnm', NULL, '2023-02-05 05:00:59', '2023-02-05 05:00:59'),
(174, 'shivam shirsath', 'shivamshirsath1996@gmail.com', '9158540291', '$2y$10$C1QjdKcQ9ftSaLk1Q.h9.eHRy50ozgviLnSh9BtB/.dNR1FtxTl66', NULL, '2023-02-05 05:02:21', '2023-02-05 05:02:21'),
(175, 'abrar khan', 'abrar.oracledba@gmail.com', '9226944594', '$2y$10$kCTLAJzBq3yqdh6yzTqYyeLm9.Lb1YL/sQZDBrMQORI9DuaMYgi/W', NULL, '2023-02-05 07:22:02', '2023-02-05 07:22:02'),
(176, 'rahul', 'rahulbhusare@ymail.com', '7875298405', '$2y$10$L9wlugq/FOC4kQFd3Ta3pei6rq0AIPGwPDOUJ0XdrZ.hrd3H01rkC', NULL, '2023-02-05 08:43:52', '2023-02-05 08:43:52'),
(177, 'Bhavesh Ahire', 'bhaveshahire555@gmail.com', '7030101318', '$2y$10$qWAfYzPlSfD2Y4A7LvZpauwwB7Qlxn4Fc6G2nbS1oaFYDGqvnwt5y', NULL, '2023-02-05 19:12:46', '2023-02-05 19:12:46'),
(178, 'sam', 'samishgadge@gmail.com', '7378994000', '$2y$10$IN7vIrah4uOOLrFriO0OpOmiQWJkAN1NfdLjKhTdNE3JMsnVxNV4O', NULL, '2023-02-06 06:43:14', '2023-02-06 06:43:14'),
(179, 'Sanjay', 'sanjay.vairalkar@gmail.com', '9004395493', '$2y$10$SbCc59IsD73w/1QgDovaReXb4ZafRaeJ4pfe9CPfasZBxPcmbOr2m', NULL, '2023-02-06 21:18:24', '2023-02-06 21:18:24'),
(180, 'pravin m naik', 'pnaik140@gmail.com', '7972737699', '$2y$10$3.8ipt09mrQjmnk9ZnWtouuN0lnbQcgQj8p7EJALNgkTRGqmyPMyq', NULL, '2023-02-07 04:13:02', '2023-02-07 04:13:02'),
(181, 'shashikant Dharmadhikari', 'shashikant.dharmadhikari007@gmail.com', '9021522806', '$2y$10$zWbkDV376PVxl8yqCBig8OZtewcH/IrhQwF6Dmt01d4V77XBw.pm2', NULL, '2023-02-07 07:53:29', '2023-02-07 07:53:29'),
(182, 'Dev Chavan', 'dev.chavan9@gmail.com', '8888456789', '$2y$10$u6EmOgjjWvZcVVj2I9MzNe0C5hBABZJ4g9qILJl33VkCFdwLJYAsO', NULL, '2023-02-07 20:30:14', '2023-02-07 20:30:14'),
(183, 'dharmesh lad', 'dharmeshlad09@yahoo.in', '9833739550', '$2y$10$IjzRCm3m5rhkm664MO66SeWlomhr6DDlvUd2M3hdhGrfZy1JBdjce', NULL, '2023-02-09 14:28:51', '2023-02-09 14:28:51'),
(184, 'Laxman Tatewar', 'lpt2111@gmail.com', '9603388032', '$2y$10$WvoBQz.6h/dLoRxNYFON0.24oRqmyYzPZYOjKxEW2RtlCrLiw8dpi', NULL, '2023-02-11 06:35:55', '2023-02-11 06:35:55'),
(185, 'Priya', 'vishupriya2021@gmail.com', '8329509951', '$2y$10$lZyF/FEfIghm17bHNuDxPO9rke1rgMbLVIDW2FssBznRFDh76B9Se', NULL, '2023-02-11 06:56:43', '2023-02-11 06:56:43'),
(186, 'mayur', 'mayur.spfinance@gmail.com', '8976717386', '$2y$10$tS4OEGsLWJ00FYKIsFwwbOvV7xZNdA9j8q.3a/yr0v0hVlSTSrGPa', NULL, '2023-02-11 08:20:16', '2023-02-11 08:20:16'),
(187, 'Khalid Shaikh', 'shaikhkhalid371@gmail.com', '7666993102', '$2y$10$Asd2ctjGK9q4fphVYzTEcuS6D8r1Dy2IMchG1k/WBZfxAqIn8VaS6', NULL, '2023-02-12 08:39:54', '2023-02-12 08:39:54'),
(188, 'Deepak Chintamani', 'deepakchintamani964@gmail.com', '9545300091', '$2y$10$iFoBODmZtXWXqS9ooZB08.H6dE6R7.qko1sUO4lpQK8jJrnxRo1qm', NULL, '2023-02-12 14:55:32', '2023-02-12 14:55:32'),
(189, 'inder', 'isingh2016@yahoo.com', '7021534581', '$2y$10$A9iPNf/J56FJlceo2himFelvD4DVDvu2NMRSQQdAmouTWsLr0tk5y', NULL, '2023-02-13 13:09:40', '2023-02-13 13:09:40'),
(190, 'ekansh agrawal', 'eagrawal007@gmail.com', '7620677449', '$2y$10$S9/Ayxc2DWM4inwstGs1ROTHKmue/cpKR/.SHsWU3Gcfyh2esZINu', NULL, '2023-02-13 15:43:59', '2023-02-13 15:43:59'),
(191, 'Omprakash kotar', 'vijaykotar123@gmail.com', '9370155607', '$2y$10$tln5mujGEwOJ8QnCb7MQf.Gp5gwXcKu5COLHS0WSBQf6eME1uKgUO', NULL, '2023-02-14 06:49:54', '2023-02-14 06:49:54'),
(192, 'bharat parab', 'bharatparab2010@rediffmail.com', '9892866674', '$2y$10$cUuY3.rvAu.I28A8/daviu2XQsEtfc2Rnff7o6nm9N5VkDI5Rd..q', NULL, '2023-02-14 17:04:47', '2023-02-14 17:04:47'),
(193, 'Yara vijay kanth', 'vijay.joseph100@gmail.com', '8309123280', '$2y$10$yHNry.lHNH20Jifyyvo.rOS15EiOmLvyXQpLJYNpaAy.A3UhiPmyu', NULL, '2023-02-15 07:54:57', '2023-02-15 07:54:57'),
(194, 'Abhishek', 'rathodabhishek022@gmail.com', '8483892342', '$2y$10$wB7b1JfItCEEETsHMkFK8.YlYwkNJsSa9ZC.BlCbXAF/K52vT7t1.', NULL, '2023-02-15 13:10:27', '2023-02-15 13:10:27'),
(195, 'mangesh padhar', 'mangesh.padhar1996@gmail.com', '8446331414', '$2y$10$z4MInUY/5W6YwTGRJWV3cOuvSNnJeMaEPG/laS7tUYJfi1cIeFVLG', NULL, '2023-02-15 17:37:28', '2023-02-15 17:37:28'),
(196, 'Belakuvar Singh', 'belakuvarsingh188@gmail.com', '8819866460', '$2y$10$p/p7tme6wAfMipSroksj6eDvgSeD05UElU81bZ.x9SFfxRnvp3h2i', NULL, '2023-02-16 09:17:27', '2023-02-16 09:17:27'),
(197, 'Jignesh Prajapati', 'jigneshv1810@gmail.com', '9173631298', '$2y$10$UDyDuLYOJaIKWFIBoXRWeezZeAZDzigdGMi4CGbT/J5ZHbPJegWxq', NULL, '2023-02-17 01:29:14', '2023-02-17 01:29:14'),
(198, 'Vanrampara', 'mstllsailo@gmail.com', '8131986943', '$2y$10$scmd4yF8kZ4NSZYavuKYFezKymvDKARoQI/y4.onS0jzbZzDnTTKi', NULL, '2023-02-17 03:55:03', '2023-02-17 03:55:03'),
(199, 'jabioddin Sheikh', 'jabioddin786@gmail.com', '8329710447', '$2y$10$SPWDPj3NgHkOL9Mly.sH1.en/CAaguD/cM/83EXrtvsv4Txq/SuK2', NULL, '2023-03-10 17:42:55', '2023-03-10 17:42:55'),
(200, 'Sunil Dattu Harer', 'sunilharer1616@Gmail.com', '8308342268', '$2y$10$iZHGw54WKPtdPorMo/0dF.NDHl.HD2aowprOYuZ9KdzaULEsjyElu', NULL, '2023-03-15 05:17:03', '2023-03-15 05:17:03'),
(201, 'Hanif Mujawar', 'hrmujawar79@gmail.com', '9029105877', '$2y$10$C3mL/wsiCeG5H3ZCKZQciev3OUg0/Vwq4BAgwn0Xwt6tnAXw5Uk/G', NULL, '2023-03-15 09:24:41', '2023-03-15 09:24:41'),
(202, 'sriknt', 'isri22052@gmail.com', '7977239714', '$2y$10$KZ5YRqHU5f6LHvTlCmoTaeLbzitpr6i4kZuv67eaMaJhV.KW0uABO', NULL, '2023-03-18 11:27:11', '2023-03-20 06:28:57'),
(203, 'Balaji dhumal', 'balajidhumal263@gmail.com', '8806802488', '$2y$10$bD92/nyI5bxOHYacyb/JU.gXmlcZJftcB0nXVXURtqI.TB/CsJIpS', NULL, '2023-03-19 13:58:59', '2023-03-19 13:58:59'),
(204, 'hanif shaikh', 'hanifshaikh0875@gmail.com', '8138833524', '$2y$10$CrKSqCqS83LaBxNU1FtbQuJiZr47.ruww1rWcsoxH.fprjQXGeXny', NULL, '2023-03-30 22:56:14', '2023-03-30 22:56:14'),
(205, 'Dhanraj motwani', 'dhanrajmotwani775@gmail.com', '9356698536', '$2y$10$xzrvDiGO/2riNrD5fHJn4.xp.oLPO3Fn6vD2e9IVN2rukwebHXkWy', NULL, '2023-04-03 14:36:36', '2023-04-15 13:31:55'),
(206, 'zaid sangle', 'zaidsangle17@gmail.com', '8999649059', '$2y$10$AXKUamHFtJ3Ypde7t/pMsuEiAZOX/0fEEgOMlhpBcLjrDtgfYIpfi', NULL, '2023-04-08 21:35:04', '2023-04-08 21:35:04'),
(207, 'manish', 'manish.kr.reliance@gmail.com', '9982708124', '$2y$10$gAHWQeIUQQrQ/r5G1j/8tuztFe3m977INrwxqI.2njhHS4I0D/V02', NULL, '2023-04-14 13:38:51', '2023-04-14 13:38:51'),
(208, 'Vinayak Salian', 'Vinayaksalian29@gmail.com', '9819861105', '$2y$10$MKSzTIRbv1Fv1vFEZYIAb.6.LLMV6jMe3Z5JrK2SEadqkAWCdeBHK', NULL, '2023-04-16 10:53:02', '2023-04-16 10:53:02'),
(209, 'shahaji kavitake', 'shahajidada41@gmail.com', '8767739004', '$2y$10$MIqn2JU2lCCvt61gh5.RbuExdxsvK1iUQbWEEb0jhgMlPX3TV6gtm', NULL, '2023-04-16 12:09:41', '2023-04-16 12:09:41'),
(210, 'mursalin', 'ansarimursalin375@gmail.com', '9860366607', '$2y$10$UMgriN.Tx7OpBMglAZ20N.iejzGoo3iwRWxevPoQ.inRkW8kjBGTe', NULL, '2023-04-16 19:46:50', '2023-04-16 19:46:50'),
(211, 'satish busi', 'busisathish143@gmail.com', '8374661482', '$2y$10$USYeKELqSAdjsno84tWUd.YP9aWNVCZuiySAuPZ2hWpgA05j3MvQy', NULL, '2023-04-20 06:34:05', '2023-04-20 06:34:05'),
(212, 'santosh patil', 'drsantosh00134@gmail.com', '7768941161', '$2y$10$hGbXluj8cEfbQDyN7AFmmuCe6f/E7stqtsMeYf1E2hfE.NZEkq4Vu', NULL, '2023-04-20 15:24:13', '2023-04-20 15:24:13'),
(213, 'ritik onkar', 'ritikonkar36@gmail.com', '8291764112', '$2y$10$a.aTOUaen/wd451dRt5u5.kQ0kBoWZB4S/b83VX7c9sbWDirHg4OW', NULL, '2023-05-19 14:07:31', '2023-05-19 14:07:31'),
(214, 'salman Rangrez', 'salmanrangrez06@gmail.com', '8830799075', '$2y$10$WBHbjI7R/DAWRxZh4.Dw9.OvE7SyrrP4ciOjT8nK1CY1u0axMdtWm', NULL, '2023-05-21 17:19:01', '2023-05-21 17:19:01'),
(215, 'kk', 'kk@gmail.com', '9464646464', '$2y$10$uJ4RvOt3wwCkJiI6U0FLlePXZiQcHEmyBXi5oAZKGEolOcXOVD7Cq', NULL, '2023-05-22 07:13:53', '2023-05-22 07:13:53'),
(216, 'Sajid Ahamad Maniyar', 'sajidmaniyar2@gmail.com', '9765742140', '$2y$10$ON5UP0YswHmbG0.l3dGfpudIyXWCbX9WI3kDMLOuOanQgxmIb9MHu', NULL, '2023-05-27 13:58:36', '2023-05-27 13:58:36'),
(217, 'Sangeeta Bhilare', 'gauravmb24@gmail.com', '7208113991', '$2y$10$I3PVtEQA5E9d/X8dxNuc.uW1U5Bhl50MnwxeaMU9HoVSbosPD.qFG', NULL, '2023-06-01 13:35:35', '2023-06-01 13:35:35'),
(218, 'zbbzb', 'sgsg@gmail.com', '9888888888', '$2y$10$VljPNmcgOfkj0jhMouw5pe0E6cEgbghEFL56j2PMlNh5bDFX2BG32', NULL, '2023-06-03 08:27:19', '2023-06-03 08:27:19'),
(219, 'K Nagarjun Reddy', 'nagarjun.reddy45@gmail.com', '9985501278', '$2y$10$hPxvDFptCUPoT5qbyAjm7uBhEtKbhrnqh2rrecRwR7Cp0IuOBw/xa', NULL, '2023-06-08 09:15:03', '2023-06-08 09:15:03'),
(220, 'Pawan patmase', 'surajkalsait636@gmail.com', '8459153840', '$2y$10$1F8Si2R1Oluxg84dfWb.I.4qyT.WHg4n6YBK8j5u/8fpkNosbECLC', NULL, '2023-06-10 08:52:48', '2023-06-10 08:52:48'),
(221, 'test', 'abc@gmail.com', '9333333333', '$2y$10$a1CZD51uIJPnvIt9RHAfR.W3tZBFuL6Jw8yaYULXbTHNtdPPDVtBu', NULL, '2023-06-13 12:54:32', '2023-06-13 12:54:32'),
(222, 'Aniket Pandharinath Kharas', 'aniketkharas55@gmail.com', '9960255556', '$2y$10$OezXX62O520NsyIt692fJuMSJ1h8e4zNesMsC4NbP9X29ZoNYh5.a', NULL, '2023-06-16 08:39:01', '2023-06-16 08:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_details`
--

CREATE TABLE `vehicle_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_make` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `veriant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mfg_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_validity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_cube_capacity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuel_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_serial_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `odometer_reading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accidental_summary` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flooded_condition` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hypothecation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0 - yes , 1 - no',
  `bank_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_details`
--

INSERT INTO `vehicle_details` (`id`, `vehicle_state`, `vehicle_no`, `vehicle_make`, `vehicle_model`, `vehicle_color`, `veriant`, `mfg_year`, `reg_year`, `tax_validity`, `engine_cube_capacity`, `fuel_type`, `owner_serial_no`, `odometer_reading`, `accidental_summary`, `flooded_condition`, `special_comments`, `hypothecation`, `bank_name`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'sVehicleState', 'vehicleNumberCtrl.text', 'sVehicleMake', 'sVehicleModel', 'arrayvehiclecolorvalue', 'vehicleVariantCtrl.text', 'mfgctrl.text', 'regctrl.text', 'taxvalidctrl.text', 'vehicleenginecubicctrl.text', 'arrayfuelvalue', 'vehicleownerserialctrl.text', 'vehicleodometerctrl.text', 'sAccedential', 'sFlooded', 'vehiclespecialcommentctrl.text', '0', 'banknameCtrl.text', 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'MH', 'MH03DP1234', 'Tata', 'Nexon', 'Red', 'AB', '2023-05-24', '2023-05-24', '2023-05-24', '1234', 'Petrol', '01', '001', 'No', 'No', 'NICE', '0', '', 1, '2023-05-24 11:07:57', '2023-05-24 11:07:57'),
(3, 'AR', 'hfzjf,urzitxtzjf,', 'KIA', 'Carnival', 'Silver', 'ufzjzdjfzjf,irz', '2023-06-12', '2023-06-12', '2023-06-12', 'oxixrittd', 'Diesel', 'ffgg', 'cffg', 'Yes', 'Yes', 'hcydtldtd', '0', 'ufir', 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, 'MH 05', 'mh05at 1234', 'Maruti suzuki', NULL, 'white', 'zxi', '2023-10-27', '2023-10-27', '2023-10-27', '1200', 'gas', '04', 'Working', NULL, NULL, 'special comment', '0', '', 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '', 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'fsaf', '2344', 'sdasd', 'Ad', 'ASD', 'Qeq', '23423', '32523', '234', '34', 'petrol', '231424', 'fdsaf', NULL, NULL, 'Sadas', '0', '', 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', NULL, '0', '', 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working', 'Yes', 'Yes', NULL, '0', '', 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, NULL, NULL, 'Mahindra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '', 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, 'MH', 'MH05EA1234', 'Maruti suzuki', NULL, 'White', 'zxi', '2022-11-01', '2006-11-01', '2022-11-01', '1200', 'gas', '04', 'Working', NULL, NULL, 'special comment input box', '0', '', 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, 'GR', 'GR06ea1234', 'Tata', 'Nexon', 'White', 'syx', '2002-11-01', '2006-11-01', '2022-11-01', '1300', 'gas', '06', 'Working', NULL, NULL, 'special comment input box', '0', '', 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, 'KA', 'KA08AB1234', 'Maruti suzuki', 'Ertiga', 'White', 'variant input box', '2000-11-01', '2005-11-01', '2022-11-01', '1300', 'gas', '07', 'Working', 'accidentagency.Yes', 'floodedagency.Yes', 'special comment input box', '0', '', 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, 'fsaf', '2344', 'sdasd', 'Ad', 'ASD', 'Qeq', '23423', '32523', '234', '34', 'petrol', '231424', 'fdsaf', 'accidentagency.Yes', 'floodedagency.Yes', 'Sadas', '0', '', 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', NULL, '0', '', 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working', 'accidentagency.Yes', 'floodedagency.Yes', NULL, '0', '', 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'accidentagency.Yes', 'floodedagency.Yes', NULL, '0', '', 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'MH', 'mh05ea1234', 'Maruti suzuki', 'Ertiga', 'White', 'abcd varient input box', '1992-11-04', '2000-11-04', '2010-11-04', '1200', 'gas', '04', 'Working', 'Yes', 'No', 'special comment textbox', '0', '', 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, 'MH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working', 'accidentagency.Yes', 'floodedagency.Yes', NULL, '0', '', 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'MH', 'MH05CM8882', 'Honda', 'Mobilio', 'Gray', 'S MT', '2014-12-25', '2015-01-07', '2030-01-09', '1498', 'Diesel', '03', '109700', 'No', 'No', 'MH05, Actual colour is Grey Metallic', '0', 'Au Small Fin LTD', 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', NULL, '0', '', 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, 'MH', 'MH03Z3241', 'Hyundai', 'Verna', 'White', 'SX', '2018-11-08', '2022-11-14', '2033-09-09', '1197', 'Petrol', '01', 'Working', 'Yes', 'Yes', 'Actual Colour is Urban Titanium for the day and time of the best', '0', '', 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'MH', 'mh05ea1234', 'Maruti suzuki', 'Ertiga', 'Orange', 'be', '2020-11-17', '2021-11-17', '2022-11-17', '1234', 'Petrol & CNG', '04', 'Working', 'No', 'No', 'special comment textbox', '0', '', 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'MH', 'mh05ea1234', 'Maruti suzuki', 'Ertiga', 'Red', 'ab', '2020-11-23', '2021-11-23', '2022-11-23', '1234', 'Petrol & CNG', '10', 'Working', 'No', 'No', 'special comment', '0', '', 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, 'AP', 'bzznn', 'MG', 'Hector', 'Gold', 'bzh', '2022-12-29', '2022-12-30', '2022-12-25', '1112', 'Petrol', '091', 'Working', 'Yes', 'Yes', 'bsjszjzj', '0', '', 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, 'AN', 'MH46AH6755', 'MG', 'Hector', 'Brown', 'FG', '2022-12-18', '2023-12-28', '2022-12-18', '1788', 'Diesel', '003', 'Working', 'No', 'Yes', 'Gft Hhko ajk', '0', '', 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'MH', 'MH05CH8882', 'Honda', 'Mobilio', 'Gray', 'S MT', '2014-11-01', '2015-02-13', '2030-02-12', '1498', 'Diesel', '01', 'Working', 'No', 'No', 'Actual colour is T Urban', '0', '', 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'MH', 'mh05ea1234', 'Maruti suzuki', 'Ertiga', 'Gray', 'ab', '2019-12-05', '2020-12-05', '2022-12-05', '1234', 'Petrol & CNG', '12', 'Working', 'No', 'No', 'special comment textbox', '0', '', 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'MH', 'mh04ea 1234', 'Mahindra', 'XUV 300', 'Blue', 'ab', '2020-12-06', '2021-12-06', '2022-12-06', '1234', 'Petrol & CNG', '12', 'Working', 'No', 'No', 'special comment', '0', '', 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'MH', 'MH05AT0000', 'Honda', 'City', 'Gray', 'S MT', '2015-12-09', '2015-12-17', '2030-12-12', '1498', 'Petrol', '01', 'Working', 'No', 'No', 'MH05, RTO- Kalyan', '0', '', 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working', 'Yes', 'Yes', NULL, '0', '', 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'MH', 'MH01DE5970', 'Hyundai', 'Santro', 'Gray', 'Sportz CNG', '2019-02-01', '2019-03-13', '2036-03-12', '1084', 'Petrol & CNG', '01', 'Working', 'Yes', 'Yes', 'MH01, Actual colour is Star dust , Company fitted CNG', '0', '', 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, 'MH', 'MH04JV0244', 'Maruti suzuki', 'Wagnor', 'White', 'LXI CNG', '2018-10-01', '2018-11-10', '2022-11-03', '999', 'Petrol & CNG', '01', 'Working', 'Yes', 'No', 'MH04, Company fitted CNG, CNG Validity expired', '0', '', 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', NULL, '0', '', 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working', 'Yes', 'Yes', NULL, '0', '', 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working', 'Yes', 'Yes', NULL, '0', '', 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working', 'Yes', 'Yes', NULL, '0', '', 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working', 'Yes', 'Yes', NULL, '0', '', 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'MH', 'mh08ea1234', 'Tata', 'Nexon', 'Gray', 'abedit', '2020-12-10', '2021-12-10', '2022-12-10', '123456', 'Petrol', '1234', 'Not working', 'No', 'Yes', 'special comment edit', '0', '', 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', NULL, '0', '', 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', NULL, '0', '', 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', NULL, '0', '', 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'MH', 'MH05CH8882', 'Honda', 'Mobilio', 'Brown', 'S', '2014-12-01', '2015-01-15', '2030-01-14', '1498', 'Diesel', '02', 'Working', 'No', 'No', 'MH05,', '0', '', 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', NULL, '0', '', 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, 'KA', 'ka12ea1234', 'Maruti suzuki', 'Dzire', 'Red', 'ab', '2020-12-12', '2021-12-12', '2022-12-12', '1234', 'Petrol & CNG', '12', 'Working', 'No', 'Yes', 'special comment', '0', '', 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, 'KA', 'ka05ea1234', 'Maruti suzuki', 'Dzire', 'White', 'ab', '2020-12-12', '2021-12-12', '2022-12-12', '1234', 'Petrol & CNG', '12', 'Working', 'No', 'Yes', 'special comments', '0', '', 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, 'MH', 'mh05ea1234', 'Tata', 'Sumo', 'White', 'abcd', '2020-12-14', '2021-12-14', '2022-12-14', '123456', 'Petrol & LPG', '1234', '2000', 'Yes', 'No', 'special comments edit', '0', '', 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', NULL, '0', '', 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', NULL, '0', '', 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, 'MH', 'mh05ea1234', 'Toyota', 'Innova', 'Gray', 'ab', '2020-12-13', '2021-12-13', '2022-12-13', '1234', 'Diesel', '12', '1000', 'Yes', 'No', 'special comments', '0', '', 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, 'MH', 'mh05ea1234', 'Maruti suzuki', 'Ertiga', 'White', 'ab', '2020-12-13', '2021-12-13', '2022-12-13', '1234', 'Petrol & CNG', '12', '1000', 'Yes', 'No', 'special comments', '0', '', 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'MH', 'MH03Z3241', 'Honda', 'City', 'Silver', 'S', '2018-08-17', '2022-10-21', '2037-10-20', '1498', 'Petrol', '02', '53434', 'No', 'No', 'MH03,RTO Kalyan Passing,', '0', '', 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, 'MH', 'mh04ea1234', 'Maruti suzuki', 'Ertiga', 'Gray', 'ab', '2020-12-16', '2021-12-16', '2022-12-16', '1234', 'Petrol & CNG', '12', '123', 'Yes', 'No', 'special comment', '0', '', 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'MH', 'mh09bc6543', 'Honda', 'City', 'White', 'zx', '2023-02-02', '2023-01-12', '2023-01-07', '1500', 'Petrol', '01', '98765', 'Yes', 'Yes', 'music system', '0', '', 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', NULL, '0', '', 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, 'MH', 'MH46CA2104', 'Tata', 'tigor', 'White', 'zx', '2022-10-19', '2022-11-03', '2037-11-02', '1196', 'Petrol & CNG', '01', '23456', 'No', 'No', 'good vehicle', '0', '', 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'MH', 'MH43FF3164', 'Hyundai', 'Eon', 'Blue', 'Dlite', '2012-03-01', '2012-03-30', '2027-03-29', '814', 'Petrol', '01', '30332', 'No', 'No', 'No black smoke, No back compression', '0', '', 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'MH', 'MH04EQ7015', 'Maruti suzuki', 'Wagnor', 'White', 'VXI', '2010-11-10', '2010-12-23', '2025-12-22', '0998', 'Petrol', '02', '97165', 'No', 'No', 'mH05', '0', '', 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'MH', 'MH47AN2936', 'Maruti suzuki', 'Wagnor', 'White', 'VSI', '2019-08-01', '2019-09-12', '2034-08-08', '1197', 'Petrol', '1', '21772', 'No', 'No', 'car is good condition', '0', '', 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'MH', 'MH03Z3241', 'Honda', 'City', 'Silver', 'Zx', '2023-01-05', '2023-01-05', '2023-01-02', '1500', 'Petrol', '01', '53438', 'No', 'No', 'music system and speaker outside fitting', '0', '', 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'MH', 'MH02CW7954', 'Toyota', 'Etios Liva', 'Silver', 'V', '2013-05-01', '2013-05-31', '2028-05-30', '1190', 'Petrol', '01', '64086', 'Yes', 'No', 'MH02, Actual Colour is S silver, Chassis number not visible due to Floor already Lamination', '0', '', 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '', 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35'),
(62, 'MH', 'MH04FR8131', 'Toyota', 'Etios Liva', 'Silver', 'V', '2012-08-01', '2012-11-20', '2027-11-19', '1197', 'Petrol', '1', '55352', 'No', 'No', 'color: S silver', '0', '', 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, 'MH', 'MH43AL0498', 'Toyota', 'Etios Liva', 'White', 'v', '2011-11-10', '2012-03-30', '2027-03-29', '1197', 'Petrol', '01', '92126', 'Yes', 'No', 'MH43, rc Xerox, insurance not available', '0', '', 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11'),
(64, 'MH', 'MH03DU5432', 'Honda', 'City', 'White', 'v', '2012-07-01', '2012-12-05', '2027-12-05', '1500', 'Petrol', '01', '50000', 'No', 'No', 'no', '0', '', 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52'),
(65, 'MH', 'mh05h2166', 'Maruti suzuki', 'Zen Estilo', 'White', 'lx', '2005-01-01', '2005-12-11', '2023-01-08', '800', 'Petrol', '2', '90345', 'No', 'No', 'last 4 digit chesees nomber is rusting', '0', '', 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'MH', 'MH03Z3241', 'Honda', 'City', 'Gold', 'EXI', '2005-03-25', '2005-06-14', '2020-06-13', '1197', 'Petrol', '02', '53440', 'No', 'No', 'mh03, ins not available', '0', '', 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, 'MH', 'MH47AB6284', 'Jeep', 'Compass', 'Red', 'limited (o) majr ddct', '2018-04-08', '2018-05-09', '2033-05-08', '1368', 'Petrol', '01', '9382', 'No', 'No', 'MH47, Actual colour Exotica Red+Black.', '0', '', 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, 'MH', 'MH04GM3155', 'Nissan', 'Terrano', 'White', 'XL', '2014-06-25', '2014-07-24', '2029-07-23', '1197', 'Petrol', '01', '63469', 'No', 'No', 'MH04,', '0', '', 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'MH', 'MH43AN4534', 'Hyundai', 'Verna', 'White', 'SX 1.6BS 4', '2013-11-01', '2013-08-06', '2028-08-05', '1582', 'Diesel', '01', '78470', 'No', 'No', 'paper clear , C white', '0', '', 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'MH', 'MH05', 'Toyota', 'Innova', 'Gold', 'V', '2012-06-01', '2012-07-04', '2027-07-03', '2494', 'Diesel', '01', '76929', 'No', 'No', 'MH05, Actual colour is S Good M,', '0', '', 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'MH', 'MH46AP6584', 'Tata', 'Nano', 'Purple', 'XM CNG', '2015-02-01', '2016-01-08', '2031-01-07', '624', 'Petrol & CNG', '01', '30438', 'No', 'No', 'Hydrotest Valid upto:-11/2025', '0', '', 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, 'MH', 'MH04JM3344', 'Force', 'Trax Cruiser', 'White', 'Titanium', '2018-01-01', '2018-03-22', '2033-03-21', '1497', 'Petrol', '02', '29955', 'No', 'No', 'MH04, Actual Model is Ford Ecosport.', '0', '', 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, 'MH', 'MH05EQ2275', 'Renault', 'Kiger', 'Silver', 'RXT', '2021-05-01', '2021-05-31', '2036-05-30', '999', 'Petrol', '1', '6085', 'No', 'No', 'mh05', '0', '', 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', NULL, '0', '', 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'MH', 'hajijaajajdfsghaha', 'Hyundai', 'Elentra', 'Silver', 'ygahaj', '2023-06-14', '2023-06-14', '2023-06-14', 'hajjah', 'Petrol', '022', '022', 'Yes', 'Yes', 'banajagha', NULL, 'cshajaah', 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'MH', 'MH03DP1234', 'Tata', 'Punch', 'Red', 'Av', '2023-05-30', '2023-05-30', '2023-05-30', '1235', 'Petrol', '02', '23', 'Yes', 'Yes', 'nice', '0', NULL, 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_parts_qualities`
--

CREATE TABLE `vehicle_parts_qualities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `front_bumper` text COLLATE utf8mb4_unicode_ci,
  `front_bumper_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_bumper_remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonnet` text COLLATE utf8mb4_unicode_ci,
  `bonnet_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonnet_remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_glass` text COLLATE utf8mb4_unicode_ci,
  `front_glass_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_glass_remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roof` text COLLATE utf8mb4_unicode_ci,
  `roof_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roof_remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_parts_qualities`
--

INSERT INTO `vehicle_parts_qualities` (`id`, `front_bumper`, `front_bumper_photo`, `front_bumper_remark`, `bonnet`, `bonnet_photo`, `bonnet_remark`, `front_glass`, `front_glass_photo`, `front_glass_remark`, `roof`, `roof_photo`, `roof_remark`, `order_id`, `created_at`, `updated_at`) VALUES
(1, '', '', NULL, 'sdasd', 'images/documents/vehicle/parts/bonnet_photo_2.png', NULL, 'Cracked', 'images/documents/vehicle/parts/front_glass_photo_2.png', NULL, 'fdsf', 'images/documents/vehicle/parts/roof_photo_2.png', NULL, 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'Original', 'images/documents/vehicle/parts/front_bumper_photo_1.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/bonnet_photo_1.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_1.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/roof_photo_1.jpeg', NULL, 1, '2023-05-24 11:07:57', '2023-05-24 11:07:57'),
(3, 'Original', 'images/documents/vehicle/parts/front_bumper_photo_3.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/bonnet_photo_3.jpeg', NULL, 'Replace', 'images/documents/vehicle/parts/front_glass_photo_3.jpeg', NULL, 'Major Scratches', 'images/documents/vehicle/parts/roof_photo_3.jpeg', NULL, 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, NULL, NULL, NULL, 'Minor Scratches', 'images/documents/vehicle/parts/bonnet_photo_23.jpeg', NULL, 'Scratches', 'images/documents/vehicle/parts/front_glass_photo_23.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_23.jpeg', NULL, 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'asda', 'images/documents/vehicle/parts/front_bumper_photo_24.png', NULL, 'sdasd', 'images/documents/vehicle/parts/bonnet_photo_24.png', NULL, NULL, 'images/documents/vehicle/parts/front_glass_photo_24.png', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_24.png', NULL, 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, 'Repair', 'images/documents/vehicle/parts/front_bumper_photo_35.jpeg', NULL, 'Rusted', 'images/documents/vehicle/parts/bonnet_photo_35.jpeg', NULL, 'Replace', 'images/documents/vehicle/parts/front_glass_photo_35.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_35.jpeg', NULL, 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, 'Repair', 'images/documents/vehicle/parts/front_bumper_photo_32.jpeg', NULL, 'Rusted', 'images/documents/vehicle/parts/bonnet_photo_32.jpeg', NULL, 'Replace', 'images/documents/vehicle/parts/front_glass_photo_32.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_32.jpeg', NULL, 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, 'MinorScratches, Original, MinorDent, Repainted, MajorScratches, MajorDent, Replace, Repair', 'images/documents/vehicle/parts/front_bumper_photo_36.jpeg', NULL, 'Original, MinorScratches, MinorDent, Repainted, MajorScratches, MajorDent, Replace, Repair, Rusted', 'images/documents/vehicle/parts/bonnet_photo_36.jpeg', NULL, 'Original, Cracked, Scratches, Replace', 'images/documents/vehicle/parts/front_glass_photo_36.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_36.jpeg', NULL, 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, 'Original, MinorScratches, MinorDent, Repainted, MajorScratches, MajorDent, Replace, Repair', 'images/documents/vehicle/parts/front_bumper_photo_40.jpeg', NULL, 'sdasd', 'images/documents/vehicle/parts/bonnet_photo_40.png', NULL, 'Original, Cracked, Replace, Scratches', 'images/documents/vehicle/parts/front_glass_photo_40.png', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_40.png', NULL, 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'Original, MinorScratches, MinorDent, Repainted, MajorScratches, MajorDent, Replace, Repair', 'images/documents/vehicle/parts/front_bumper_photo_43.jpeg', NULL, 'Original, MinorScratches, MinorDent, Repainted, MajorScratches, MajorDent, Replace, Repair, Rusted', 'images/documents/vehicle/parts/bonnet_photo_43.jpeg', NULL, 'Original, Cracked, Scratches, Replace', 'images/documents/vehicle/parts/front_glass_photo_43.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_43.jpeg', NULL, 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'Original, Damaged, Repainted, Major Scratches', 'images/documents/vehicle/parts/front_bumper_photo_45.jpeg', NULL, 'Replace, Minor Scratches, Repainted', 'images/documents/vehicle/parts/bonnet_photo_45.jpeg', NULL, 'Original, Scratches', 'images/documents/vehicle/parts/front_glass_photo_45.jpeg', NULL, 'Original, Minor Scratches', 'images/documents/vehicle/parts/roof_photo_45.jpeg', NULL, 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, 'Original, Minor Dent, Repainted, Major Scratches', 'images/documents/vehicle/parts/front_bumper_photo_48.jpeg', NULL, 'Minor Scratches, Minor Dent, Original, Major Dent', 'images/documents/vehicle/parts/bonnet_photo_48.jpeg', NULL, 'Original, Cracked, Scratches', 'images/documents/vehicle/parts/front_glass_photo_48.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_48.jpeg', NULL, 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair', 'images/documents/vehicle/parts/front_bumper_photo_50.jpeg', NULL, 'Original, Minor Scratches, Minor Dent, Major Scratches, Repainted, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/parts/bonnet_photo_50.jpeg', NULL, 'Original, Scratches, Replace, Cracked', 'images/documents/vehicle/parts/front_glass_photo_50.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_50.jpeg', NULL, 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair', 'images/documents/vehicle/parts/front_bumper_photo_51.jpeg', NULL, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/parts/bonnet_photo_51.jpeg', NULL, 'Original, Cracked, Scratches, Replace', 'images/documents/vehicle/parts/front_glass_photo_51.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_51.jpeg', NULL, 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, 'Original, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_55.jpeg', NULL, 'Major Scratches, Repainted', 'images/documents/vehicle/parts/bonnet_photo_55.jpeg', NULL, 'Replace, Scratches', 'images/documents/vehicle/parts/front_glass_photo_55.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_55.jpeg', NULL, 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, 'Original, Damaged, Repainted', 'images/documents/vehicle/parts/front_bumper_photo_54.', NULL, 'Original, Major Scratches', 'images/documents/vehicle/parts/bonnet_photo_54.', NULL, 'Replace, Scratches, Original', 'images/documents/vehicle/parts/front_glass_photo_54.', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_54.', NULL, 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'Original, Major Scratches', 'images/documents/vehicle/parts/front_bumper_photo_56.jpeg', NULL, 'Original, Minor Scratches, Repainted, Minor Dent', 'images/documents/vehicle/parts/bonnet_photo_56.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_56.jpeg', NULL, 'Original, Minor dent', 'images/documents/vehicle/parts/roof_photo_56.jpeg', NULL, 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'Original, Minor Scratches, Damaged, Minor Dent, Major Scratches, Repainted, Major Dent, Repair, Replace', 'images/documents/vehicle/parts/front_bumper_photo_58.jpeg', NULL, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/parts/bonnet_photo_58.jpeg', NULL, 'Original, Cracked, Scratches, Replace', 'images/documents/vehicle/parts/front_glass_photo_58.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_58.jpeg', NULL, 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'Original, MinorScratches, Replace, Damaged, MinorScratches, MinorDent, Repainted, MajorScratches, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_59.jpeg', NULL, 'Original, MinorScratches, MinorDent, Repainted, MinorDent, MinorScratches, MajorScratches, MajorDent, Minor Dent', 'images/documents/vehicle/parts/bonnet_photo_59.jpeg', NULL, 'Original, Cracked, Scratches, Replace', 'images/documents/vehicle/parts/front_glass_photo_59.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_59.jpeg', NULL, 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'Original, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_60.jpeg', NULL, 'Original, Minor Dent, Repainted, Major Scratches', 'images/documents/vehicle/parts/bonnet_photo_60.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_60.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_60.jpeg', NULL, 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, 'Original, Minor Scratches, Damaged', 'images/documents/vehicle/parts/front_bumper_photo_62.jpeg', NULL, 'Minor Dent, Minor Scratches, Original', 'images/documents/vehicle/parts/bonnet_photo_62.jpeg', NULL, 'Original, Cracked', 'images/documents/vehicle/parts/front_glass_photo_62.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_62.jpeg', NULL, 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'Original, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_70.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/bonnet_photo_70.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_70.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_70.jpeg', NULL, 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, 'MajorScratches, Damaged, Replace, MinorScratches, Original, MinorDent, Repainted, MajorScratches, MajorDent, Repair', 'images/documents/vehicle/parts/front_bumper_photo_84.jpeg', NULL, 'Original, MajorScratches, MinorScratches, MajorDent, MinorDent, Repainted, MajorScratches, Replace, Repair, Rusted', 'images/documents/vehicle/parts/bonnet_photo_84.jpeg', NULL, 'Cracked, Replace, Scratches, Original', 'images/documents/vehicle/parts/front_glass_photo_84.jpeg', NULL, NULL, 'images/documents/vehicle/parts/roof_photo_84.jpeg', NULL, 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, 'Original, MinorScratches', 'images/documents/vehicle/parts/front_bumper_photo_79.jpeg', NULL, 'Original, MinorScratches', 'images/documents/vehicle/parts/bonnet_photo_79.jpeg', NULL, 'Original, Cracked', 'images/documents/vehicle/parts/front_glass_photo_79.jpeg', NULL, 'Minordent, Minor Scratches, Major Scratches, Minor Dent, Major Dent', 'images/documents/vehicle/parts/roof_photo_79.jpeg', NULL, 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, 'Minor Scratches, Major Scratches', 'images/documents/vehicle/parts/front_bumper_photo_87.jpeg', NULL, 'Major Scratches, Minor Dent', 'images/documents/vehicle/parts/bonnet_photo_87.jpeg', NULL, 'Replace, Cracked', 'images/documents/vehicle/parts/front_glass_photo_87.jpeg', NULL, 'Major Dent, Minor Dent', 'images/documents/vehicle/parts/roof_photo_87.jpeg', NULL, 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'Original, Minor Scratches, Damaged, Minor Dent', 'images/documents/vehicle/parts/front_bumper_photo_90.jpeg', NULL, 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/parts/bonnet_photo_90.jpeg', NULL, 'Original, Cracked, Scratches, Replace', 'images/documents/vehicle/parts/front_glass_photo_90.jpeg', NULL, 'Original, Minor Scratches, Minor Dent, Repainted', 'images/documents/vehicle/parts/roof_photo_90.jpeg', NULL, 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'Original, Minor Scratches, Damaged, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair', 'images/documents/vehicle/parts/front_bumper_photo_102.jpeg', NULL, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/parts/bonnet_photo_102.jpeg', NULL, 'Original, Cracked, Scratches, Replace', 'images/documents/vehicle/parts/front_glass_photo_102.jpeg', NULL, 'Original, Minor Scratches, Minor Dent, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/parts/roof_photo_102.jpeg', NULL, 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, 'Original, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_105.jpeg', NULL, 'Original, Minor Scratches', 'images/documents/vehicle/parts/bonnet_photo_105.jpeg', NULL, 'Original, Cracked', 'images/documents/vehicle/parts/front_glass_photo_105.jpeg', NULL, 'Original, Minor Scratches', 'images/documents/vehicle/parts/roof_photo_105.jpeg', NULL, 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, 'Original, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_106.jpeg', NULL, 'Original, Minor Scratches', 'images/documents/vehicle/parts/bonnet_photo_106.jpeg', NULL, 'Original, Cracked', 'images/documents/vehicle/parts/front_glass_photo_106.jpeg', NULL, 'Minor Scratches, Original', 'images/documents/vehicle/parts/roof_photo_106.png', NULL, 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, 'Original, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_115.png', NULL, 'Original, Minor Scratches', 'images/documents/vehicle/parts/bonnet_photo_115.png', NULL, 'Original, Cracked', 'images/documents/vehicle/parts/front_glass_photo_115.png', NULL, 'Original, Minor Scratches', 'images/documents/vehicle/parts/roof_photo_115.png', NULL, 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'Original, Minor Scratches, Damaged, Repainted, Major Scratches, Minor Dent, Major Dent, Replace, Repair', 'images/documents/vehicle/parts/front_bumper_photo_120.jpeg', NULL, 'Original, Minor Scratches, Minor Dent, Repainted, Major Scratches, Major Dent, Replace, Repair, Rusted', 'images/documents/vehicle/parts/bonnet_photo_120.jpeg', NULL, 'Original, Cracked, Scratches, Replace', 'images/documents/vehicle/parts/front_glass_photo_120.jpeg', NULL, 'Original, Minor Scratches, Repainted, Minor Dent, Major Dent, Major Scratches, Replace, Repair, Rusted', 'images/documents/vehicle/parts/roof_photo_120.jpeg', NULL, 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, 'Original, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_122.jpeg', NULL, 'Original, Minor Scratches', 'images/documents/vehicle/parts/bonnet_photo_122.jpeg', NULL, 'Original, Cracked', 'images/documents/vehicle/parts/front_glass_photo_122.jpeg', NULL, 'Original, Minor Scratches', 'images/documents/vehicle/parts/roof_photo_122.jpeg', NULL, 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'Original, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_127.jpeg', NULL, 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/parts/bonnet_photo_127.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_127.jpeg', NULL, 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/parts/roof_photo_127.jpeg', NULL, 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, 'Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_77.jpeg', NULL, 'Minor Dent', 'images/documents/vehicle/parts/bonnet_photo_77.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_77.jpeg', NULL, 'Minor Dent', 'images/documents/vehicle/parts/roof_photo_77.jpeg', NULL, 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'Minor Scratches, Repainted, Original', 'images/documents/vehicle/parts/front_bumper_photo_151.jpeg', NULL, 'Minor Dent, Rusted, Original', 'images/documents/vehicle/parts/bonnet_photo_151.jpeg', NULL, 'Replace', 'images/documents/vehicle/parts/front_glass_photo_151.jpeg', NULL, 'Minor Scratches, Original, Minor Dent', 'images/documents/vehicle/parts/roof_photo_151.jpeg', NULL, 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_118.jpeg', NULL, 'Repainted', 'images/documents/vehicle/parts/bonnet_photo_118.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_118.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/roof_photo_118.jpeg', NULL, 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'Original, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_150.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/bonnet_photo_150.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_150.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/roof_photo_150.jpeg', NULL, 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'Major Scratches, Minor Dent, Replace', 'images/documents/vehicle/parts/front_bumper_photo_73.jpeg', NULL, 'Minor Dent, Rusted, Minor Scratches', 'images/documents/vehicle/parts/bonnet_photo_73.jpeg', NULL, 'Replace', 'images/documents/vehicle/parts/front_glass_photo_73.jpeg', NULL, 'Original, Rusted', 'images/documents/vehicle/parts/roof_photo_73.jpeg', NULL, 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'Minor Scratches, Repainted, Replace', 'images/documents/vehicle/parts/front_bumper_photo_155.jpeg', NULL, 'Original, Major Scratches, Minor Dent', 'images/documents/vehicle/parts/bonnet_photo_155.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_155.jpeg', NULL, 'Original, Minor Scratches', 'images/documents/vehicle/parts/roof_photo_155.jpeg', NULL, 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35'),
(62, 'Original, Repainted', 'images/documents/vehicle/parts/front_bumper_photo_162.jpeg', NULL, 'Original, Repainted', 'images/documents/vehicle/parts/bonnet_photo_162.jpeg', NULL, 'Replace', 'images/documents/vehicle/parts/front_glass_photo_162.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/roof_photo_162.jpeg', NULL, 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, 'Original, Minor Scratches, Repainted', 'images/documents/vehicle/parts/front_bumper_photo_161.jpeg', NULL, 'Repainted, Replace', 'images/documents/vehicle/parts/bonnet_photo_161.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_161.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/roof_photo_161.jpeg', NULL, 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11'),
(64, 'Original', 'images/documents/vehicle/parts/front_bumper_photo_164.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/bonnet_photo_164.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_164.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/roof_photo_164.jpeg', NULL, 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52'),
(65, 'Repainted, Damaged, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_132.jpeg', NULL, 'Original, Minor Dent, Minor Scratches', 'images/documents/vehicle/parts/bonnet_photo_132.jpeg', NULL, 'Replace', 'images/documents/vehicle/parts/front_glass_photo_132.jpeg', NULL, 'Original, Minor Scratches', 'images/documents/vehicle/parts/roof_photo_132.jpeg', NULL, 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'Original, Major Scratches, Minor Dent, Repainted', 'images/documents/vehicle/parts/front_bumper_photo_110.jpeg', NULL, 'Original, Major Scratches', 'images/documents/vehicle/parts/bonnet_photo_110.jpeg', NULL, 'Replace', 'images/documents/vehicle/parts/front_glass_photo_110.jpeg', NULL, 'Original, Minor Scratches', 'images/documents/vehicle/parts/roof_photo_110.jpeg', NULL, 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, 'Minor Scratches, Original', 'images/documents/vehicle/parts/front_bumper_photo_172.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/bonnet_photo_172.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_172.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/roof_photo_172.jpeg', NULL, 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, 'Original, Repainted, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_174.jpeg', NULL, 'Original, Minor Scratches', 'images/documents/vehicle/parts/bonnet_photo_174.jpeg', NULL, 'Replace', 'images/documents/vehicle/parts/front_glass_photo_174.jpeg', NULL, 'Original, Minor Scratches', 'images/documents/vehicle/parts/roof_photo_174.jpeg', NULL, 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'Original, Damaged, Major Scratches', 'images/documents/vehicle/parts/front_bumper_photo_176.jpeg', NULL, 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/parts/bonnet_photo_176.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_176.jpeg', NULL, 'Original, Minor Dent', 'images/documents/vehicle/parts/roof_photo_176.jpeg', NULL, 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'Original, Repainted, Major Scratches', 'images/documents/vehicle/parts/front_bumper_photo_179.jpeg', NULL, 'Original, Major Scratches, Minor Dent', 'images/documents/vehicle/parts/bonnet_photo_179.jpeg', NULL, 'Replace', 'images/documents/vehicle/parts/front_glass_photo_179.jpeg', NULL, 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/parts/roof_photo_179.jpeg', NULL, 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'Original, Repainted, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_182.jpeg', NULL, 'Original, Minor Scratches, Minor Dent', 'images/documents/vehicle/parts/bonnet_photo_182.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_182.jpeg', NULL, 'Original, Minor Dent, Minor Scratches, Rusted', 'images/documents/vehicle/parts/roof_photo_182.jpeg', NULL, 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, 'Minor Scratches, Original, Repainted', 'images/documents/vehicle/parts/front_bumper_photo_187.jpeg', NULL, 'Original, Repainted', 'images/documents/vehicle/parts/bonnet_photo_187.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_187.jpeg', NULL, 'Original, Repainted, Major Scratches', 'images/documents/vehicle/parts/roof_photo_187.jpeg', NULL, 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, 'Original, Minor Scratches', 'images/documents/vehicle/parts/front_bumper_photo_190.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/bonnet_photo_190.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_190.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/roof_photo_190.jpeg', NULL, 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'Original', 'images/documents/vehicle/parts/front_bumper_photo_7.jpeg', NULL, 'Minor Scratches', 'images/documents/vehicle/parts/bonnet_photo_7.jpeg', NULL, 'Scratches', 'images/documents/vehicle/parts/front_glass_photo_7.jpeg', NULL, 'Minor Scratches', 'images/documents/vehicle/parts/roof_photo_7.jpeg', NULL, 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'Original', 'images/documents/vehicle/parts/front_bumper_photo_8.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/bonnet_photo_8.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/front_glass_photo_8.jpeg', NULL, 'Original', 'images/documents/vehicle/parts/roof_photo_8.jpeg', NULL, 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_photos`
--

CREATE TABLE `vehicle_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `front_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_glass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_compartment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_rhs_side_tringle_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_rhs_tyre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rhs_side_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rhs_side_interior_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_rhs_tyre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_side_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dicky_door_open_view` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dicky_floor_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_glass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spare_wheel_tyre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_lhs_side_triangle_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_lhs_tyre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lhs_side_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rear_interior_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_lhs_tyre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `odometer_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_photos`
--

INSERT INTO `vehicle_photos` (`id`, `front_view`, `front_glass`, `engine_compartment`, `roof`, `front_rhs_side_tringle_view`, `front_rhs_tyre`, `rhs_side_view`, `rhs_side_interior_view`, `rear_rhs_tyre`, `back_side_view`, `dicky_door_open_view`, `dicky_floor_view`, `rear_glass`, `spare_wheel_tyre`, `rear_lhs_side_triangle_view`, `rear_lhs_tyre`, `lhs_side_view`, `rear_interior_view`, `front_lhs_tyre`, `dashboard_view`, `odometer_view`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'images/documents/vehicle/photos/front_view_2.png', 'images/documents/vehicle/photos/front_glass_2.png', 'images/documents/vehicle/photos/engine_compartment_2.png', '', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_2.png', 'images/documents/vehicle/photos/front_rhs_tyre_2.png', 'images/documents/vehicle/photos/rhs_side_view_2.png', 'images/documents/vehicle/photos/rhs_side_interior_view_2.png', 'images/documents/vehicle/photos/rear_rhs_tyre_2.png', 'images/documents/vehicle/photos/back_side_view_2.png', NULL, 'images/documents/vehicle/photos/dicky_floor_view_2.png', 'images/documents/vehicle/photos/rear_glass_2.png', 'images/documents/vehicle/photos/spare_wheel_tyre_2.png', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_2.png', 'images/documents/vehicle/photos/rear_lhs_tyre_2.png', 'images/documents/vehicle/photos/lhs_side_view_2.png', 'images/documents/vehicle/photos/rear_interior_view_2.png', 'images/documents/vehicle/photos/front_lhs_tyre_2.png', 'images/documents/vehicle/photos/dashboard_view_2.png', 'images/documents/vehicle/photos/odometer_view_2.png', 2, '2023-05-29 10:49:25', '2023-05-29 10:49:25'),
(2, 'images/documents/vehicle/photos/front_view_1.jpeg', 'images/documents/vehicle/photos/front_glass_1.jpeg', 'images/documents/vehicle/photos/engine_compartment_1.jpeg', 'images/documents/vehicle/photos/roof_1.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_1.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_1.jpeg', 'images/documents/vehicle/photos/rhs_side_view_1.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_1.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_1.jpeg', 'images/documents/vehicle/photos/back_side_view_1.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_1.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_1.jpeg', 'images/documents/vehicle/photos/rear_glass_1.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_1.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_1.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_1.jpeg', 'images/documents/vehicle/photos/lhs_side_view_1.jpeg', 'images/documents/vehicle/photos/rear_interior_view_1.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_1.jpeg', 'images/documents/vehicle/photos/dashboard_view_1.jpeg', 'images/documents/vehicle/photos/odometer_view_1.jpeg', 1, '2023-05-24 11:07:57', '2023-05-24 11:07:57'),
(3, 'images/documents/vehicle/photos/front_view_3.jpeg', 'images/documents/vehicle/photos/front_glass_3.jpeg', 'images/documents/vehicle/photos/engine_compartment_3.jpeg', 'images/documents/vehicle/photos/roof_3.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_3.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_3.jpeg', 'images/documents/vehicle/photos/rhs_side_view_3.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_3.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_3.jpeg', 'images/documents/vehicle/photos/back_side_view_3.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_3.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_3.jpeg', 'images/documents/vehicle/photos/rear_glass_3.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_3.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_3.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_3.jpeg', 'images/documents/vehicle/photos/lhs_side_view_3.jpeg', 'images/documents/vehicle/photos/rear_interior_view_3.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_3.jpeg', 'images/documents/vehicle/photos/dashboard_view_3.jpeg', 'images/documents/vehicle/photos/odometer_view_3.jpeg', 3, '2023-06-12 11:40:30', '2023-06-12 11:40:30'),
(4, NULL, NULL, 'images/documents/vehicle/photos/engine_compartment_23.jpeg', NULL, 'images/documents/vehicle/photos/front_rhs_side_tringle_view_23.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_23.jpeg', 'images/documents/vehicle/photos/rhs_side_view_23.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_23.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_23.jpeg', 'images/documents/vehicle/photos/back_side_view_23.jpeg', NULL, 'images/documents/vehicle/photos/dicky_floor_view_23.jpeg', 'images/documents/vehicle/photos/rear_glass_23.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_23.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_23.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_23.jpeg', 'images/documents/vehicle/photos/lhs_side_view_23.jpeg', 'images/documents/vehicle/photos/rear_interior_view_23.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_23.jpeg', 'images/documents/vehicle/photos/dashboard_view_23.jpeg', 'images/documents/vehicle/photos/odometer_view_23.jpeg', 23, '2022-10-27 06:31:00', '2022-10-27 06:31:00'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-10-27 07:42:22', '2022-10-27 07:42:22'),
(6, 'images/documents/vehicle/photos/front_view_24.png', 'images/documents/vehicle/photos/front_glass_24.png', 'images/documents/vehicle/photos/engine_compartment_24.png', NULL, 'images/documents/vehicle/photos/front_rhs_side_tringle_view_24.png', 'images/documents/vehicle/photos/front_rhs_tyre_24.png', 'images/documents/vehicle/photos/rhs_side_view_24.png', 'images/documents/vehicle/photos/rhs_side_interior_view_24.png', 'images/documents/vehicle/photos/rear_rhs_tyre_24.png', 'images/documents/vehicle/photos/back_side_view_24.png', NULL, 'images/documents/vehicle/photos/dicky_floor_view_24.png', 'images/documents/vehicle/photos/rear_glass_24.png', 'images/documents/vehicle/photos/spare_wheel_tyre_24.png', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_24.png', 'images/documents/vehicle/photos/rear_lhs_tyre_24.png', 'images/documents/vehicle/photos/lhs_side_view_24.png', 'images/documents/vehicle/photos/rear_interior_view_24.png', 'images/documents/vehicle/photos/front_lhs_tyre_24.png', 'images/documents/vehicle/photos/dashboard_view_24.png', 'images/documents/vehicle/photos/odometer_view_24.png', 24, '2022-11-04 11:58:09', '2022-11-04 11:58:09'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, '2022-11-14 12:30:23', '2022-11-14 12:30:23'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, '2022-12-06 08:11:06', '2022-12-06 08:11:06'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2022-10-31 06:45:02', '2022-10-31 06:45:02'),
(10, NULL, NULL, 'images/documents/vehicle/photos/engine_compartment_35.jpeg', NULL, 'images/documents/vehicle/photos/front_rhs_side_tringle_view_35.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_35.jpeg', 'images/documents/vehicle/photos/rhs_side_view_35.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_35.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_35.jpeg', 'images/documents/vehicle/photos/back_side_view_35.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_35.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_35.jpeg', 'images/documents/vehicle/photos/rear_glass_35.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_35.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_35.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_35.jpeg', 'images/documents/vehicle/photos/lhs_side_view_35.jpeg', 'images/documents/vehicle/photos/rear_interior_view_35.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_35.jpeg', 'images/documents/vehicle/photos/dashboard_view_35.jpeg', 'images/documents/vehicle/photos/odometer_view_35.jpeg', 35, '2022-11-01 07:10:26', '2022-11-01 07:10:26'),
(11, NULL, NULL, 'images/documents/vehicle/photos/engine_compartment_32.jpeg', NULL, 'images/documents/vehicle/photos/front_rhs_side_tringle_view_32.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_32.jpeg', 'images/documents/vehicle/photos/rhs_side_view_32.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_32.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_32.jpeg', 'images/documents/vehicle/photos/back_side_view_32.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_32.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_32.jpeg', 'images/documents/vehicle/photos/rear_glass_32.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_32.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_32.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_32.jpeg', 'images/documents/vehicle/photos/lhs_side_view_32.jpeg', 'images/documents/vehicle/photos/rear_interior_view_32.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_32.jpeg', 'images/documents/vehicle/photos/dashboard_view_32.jpeg', 'images/documents/vehicle/photos/odometer_view_32.jpeg', 32, '2022-11-01 08:16:17', '2022-11-01 08:16:17'),
(12, NULL, NULL, 'images/documents/vehicle/photos/engine_compartment_36.jpeg', NULL, 'images/documents/vehicle/photos/front_rhs_side_tringle_view_36.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_36.jpeg', 'images/documents/vehicle/photos/rhs_side_view_36.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_36.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_36.jpeg', 'images/documents/vehicle/photos/back_side_view_36.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_36.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_36.jpeg', 'images/documents/vehicle/photos/rear_glass_36.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_36.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_36.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_36.jpeg', 'images/documents/vehicle/photos/lhs_side_view_36.jpeg', 'images/documents/vehicle/photos/rear_interior_view_36.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_36.jpeg', 'images/documents/vehicle/photos/dashboard_view_36.jpeg', 'images/documents/vehicle/photos/odometer_view_36.jpeg', 36, '2022-11-03 10:23:53', '2022-11-03 10:23:53'),
(13, NULL, NULL, 'images/documents/vehicle/photos/engine_compartment_40.png', NULL, 'images/documents/vehicle/photos/front_rhs_side_tringle_view_40.png', 'images/documents/vehicle/photos/front_rhs_tyre_40.png', 'images/documents/vehicle/photos/rhs_side_view_40.png', 'images/documents/vehicle/photos/rhs_side_interior_view_40.png', 'images/documents/vehicle/photos/rear_rhs_tyre_40.png', 'images/documents/vehicle/photos/back_side_view_40.png', 'images/documents/vehicle/photos/dicky_door_open_view_40.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_40.png', 'images/documents/vehicle/photos/rear_glass_40.png', 'images/documents/vehicle/photos/spare_wheel_tyre_40.png', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_40.png', 'images/documents/vehicle/photos/rear_lhs_tyre_40.png', 'images/documents/vehicle/photos/lhs_side_view_40.png', 'images/documents/vehicle/photos/rear_interior_view_40.png', 'images/documents/vehicle/photos/front_lhs_tyre_40.png', 'images/documents/vehicle/photos/dashboard_view_40.png', 'images/documents/vehicle/photos/odometer_view_40.png', 40, '2022-11-03 10:12:35', '2022-11-03 10:12:35'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, '2022-11-11 15:58:44', '2022-11-11 15:58:44'),
(15, 'images/documents/vehicle/photos/front_view_38.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, '2022-11-06 11:41:55', '2022-11-06 11:41:55'),
(16, 'images/documents/vehicle/photos/front_view_42.jpeg', 'images/documents/vehicle/photos/front_glass_42.jpeg', NULL, 'images/documents/vehicle/photos/roof_42.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2022-11-16 21:03:11', '2022-11-16 21:03:11'),
(17, 'images/documents/vehicle/photos/front_view_43.jpeg', 'images/documents/vehicle/photos/front_glass_43.jpeg', 'images/documents/vehicle/photos/engine_compartment_43.jpeg', 'images/documents/vehicle/photos/roof_43.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_43.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_43.jpeg', 'images/documents/vehicle/photos/rhs_side_view_43.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_43.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_43.jpeg', 'images/documents/vehicle/photos/back_side_view_43.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_43.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_43.jpeg', 'images/documents/vehicle/photos/rear_glass_43.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_43.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_43.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_43.jpeg', 'images/documents/vehicle/photos/lhs_side_view_43.jpeg', 'images/documents/vehicle/photos/rear_interior_view_43.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_43.jpeg', 'images/documents/vehicle/photos/dashboard_view_43.jpeg', 'images/documents/vehicle/photos/odometer_view_43.jpeg', 43, '2022-11-07 08:44:35', '2022-11-07 08:44:35'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, '2022-11-06 08:56:28', '2022-11-06 08:56:28'),
(19, 'images/documents/vehicle/photos/front_view_45.jpeg', 'images/documents/vehicle/photos/front_glass_45.jpeg', 'images/documents/vehicle/photos/engine_compartment_45.jpeg', 'images/documents/vehicle/photos/roof_45.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_45.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_45.jpeg', 'images/documents/vehicle/photos/rhs_side_view_45.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_45.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_45.jpeg', 'images/documents/vehicle/photos/back_side_view_45.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_45.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_45.jpeg', 'images/documents/vehicle/photos/rear_glass_45.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_45.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_45.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_45.jpeg', 'images/documents/vehicle/photos/lhs_side_view_45.jpeg', 'images/documents/vehicle/photos/rear_interior_view_45.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_45.jpeg', 'images/documents/vehicle/photos/dashboard_view_45.jpeg', 'images/documents/vehicle/photos/odometer_view_45.jpeg', 45, '2023-06-14 09:00:20', '2023-06-14 09:00:20'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2022-11-14 12:54:37', '2022-11-14 12:54:37'),
(21, 'images/documents/vehicle/photos/front_view_48.jpeg', 'images/documents/vehicle/photos/front_glass_48.jpeg', 'images/documents/vehicle/photos/engine_compartment_48.jpeg', 'images/documents/vehicle/photos/roof_48.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_48.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_48.jpeg', 'images/documents/vehicle/photos/rhs_side_view_48.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_48.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_48.jpeg', 'images/documents/vehicle/photos/back_side_view_48.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_48.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_48.jpeg', 'images/documents/vehicle/photos/rear_glass_48.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_48.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_48.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_48.jpeg', 'images/documents/vehicle/photos/lhs_side_view_48.jpeg', 'images/documents/vehicle/photos/rear_interior_view_48.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_48.jpeg', 'images/documents/vehicle/photos/dashboard_view_48.jpeg', 'images/documents/vehicle/photos/odometer_view_48.jpeg', 48, '2022-11-14 16:46:09', '2022-11-14 16:46:09'),
(22, 'images/documents/vehicle/photos/front_view_50.jpeg', 'images/documents/vehicle/photos/front_glass_50.jpeg', 'images/documents/vehicle/photos/engine_compartment_50.jpeg', 'images/documents/vehicle/photos/roof_50.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_50.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_50.jpeg', 'images/documents/vehicle/photos/rhs_side_view_50.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_50.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_50.jpeg', 'images/documents/vehicle/photos/back_side_view_50.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_50.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_50.jpeg', 'images/documents/vehicle/photos/rear_glass_50.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_50.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_50.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_50.jpeg', 'images/documents/vehicle/photos/lhs_side_view_50.jpeg', 'images/documents/vehicle/photos/rear_interior_view_50.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_50.jpeg', 'images/documents/vehicle/photos/dashboard_view_50.jpeg', 'images/documents/vehicle/photos/odometer_view_50.jpeg', 50, '2022-11-17 06:09:42', '2022-11-17 06:09:42'),
(23, 'images/documents/vehicle/photos/front_view_51.jpeg', 'images/documents/vehicle/photos/front_glass_51.jpeg', 'images/documents/vehicle/photos/engine_compartment_51.jpeg', 'images/documents/vehicle/photos/roof_51.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_51.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_51.jpeg', 'images/documents/vehicle/photos/rhs_side_view_51.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_51.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_51.jpeg', 'images/documents/vehicle/photos/back_side_view_51.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_51.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_51.jpeg', 'images/documents/vehicle/photos/rear_glass_51.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_51.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_51.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_51.jpeg', 'images/documents/vehicle/photos/lhs_side_view_51.jpeg', 'images/documents/vehicle/photos/rear_interior_view_51.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_51.jpeg', 'images/documents/vehicle/photos/dashboard_view_51.jpeg', 'images/documents/vehicle/photos/odometer_view_51.jpeg', 51, '2022-11-23 08:40:09', '2022-11-23 08:40:09'),
(24, 'images/documents/vehicle/photos/front_view_55.jpeg', 'images/documents/vehicle/photos/front_glass_55.jpeg', 'images/documents/vehicle/photos/engine_compartment_55.jpeg', 'images/documents/vehicle/photos/roof_55.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_55.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_55.jpeg', 'images/documents/vehicle/photos/rhs_side_view_55.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_55.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_55.jpeg', 'images/documents/vehicle/photos/back_side_view_55.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_55.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_55.jpeg', 'images/documents/vehicle/photos/rear_glass_55.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_55.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_55.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_55.jpeg', 'images/documents/vehicle/photos/lhs_side_view_55.jpeg', 'images/documents/vehicle/photos/rear_interior_view_55.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_55.jpeg', 'images/documents/vehicle/photos/dashboard_view_55.jpeg', 'images/documents/vehicle/photos/odometer_view_55.jpeg', 55, '2022-12-02 12:02:47', '2022-12-02 12:02:47'),
(25, 'images/documents/vehicle/photos/front_view_54.', 'images/documents/vehicle/photos/front_glass_54.', 'images/documents/vehicle/photos/engine_compartment_54.', 'images/documents/vehicle/photos/roof_54.', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_54.', 'images/documents/vehicle/photos/front_rhs_tyre_54.', 'images/documents/vehicle/photos/rhs_side_view_54.', 'images/documents/vehicle/photos/rhs_side_interior_view_54.', 'images/documents/vehicle/photos/rear_rhs_tyre_54.', 'images/documents/vehicle/photos/back_side_view_54.', 'images/documents/vehicle/photos/dicky_door_open_view_54.', 'images/documents/vehicle/photos/dicky_floor_view_54.', 'images/documents/vehicle/photos/rear_glass_54.', 'images/documents/vehicle/photos/spare_wheel_tyre_54.', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_54.', 'images/documents/vehicle/photos/rear_lhs_tyre_54.', 'images/documents/vehicle/photos/lhs_side_view_54.', 'images/documents/vehicle/photos/rear_interior_view_54.', 'images/documents/vehicle/photos/front_lhs_tyre_54.', 'images/documents/vehicle/photos/dashboard_view_54.', 'images/documents/vehicle/photos/odometer_view_54.', 54, '2022-12-05 06:42:09', '2022-12-05 06:42:09'),
(26, 'images/documents/vehicle/photos/front_view_56.jpeg', 'images/documents/vehicle/photos/front_glass_56.jpeg', 'images/documents/vehicle/photos/engine_compartment_56.jpeg', 'images/documents/vehicle/photos/roof_56.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_56.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_56.jpeg', 'images/documents/vehicle/photos/rhs_side_view_56.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_56.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_56.jpeg', 'images/documents/vehicle/photos/back_side_view_56.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_56.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_56.jpeg', 'images/documents/vehicle/photos/rear_glass_56.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_56.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_56.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_56.jpeg', 'images/documents/vehicle/photos/lhs_side_view_56.jpeg', 'images/documents/vehicle/photos/rear_interior_view_56.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_56.jpeg', 'images/documents/vehicle/photos/dashboard_view_56.jpeg', 'images/documents/vehicle/photos/odometer_view_56.jpeg', 56, '2023-01-05 06:56:01', '2023-01-05 06:56:01'),
(27, 'images/documents/vehicle/photos/front_view_58.jpeg', 'images/documents/vehicle/photos/front_glass_58.jpeg', 'images/documents/vehicle/photos/engine_compartment_58.jpeg', 'images/documents/vehicle/photos/roof_58.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_58.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_58.jpeg', 'images/documents/vehicle/photos/rhs_side_view_58.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_58.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_58.jpeg', 'images/documents/vehicle/photos/back_side_view_58.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_58.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_58.jpeg', 'images/documents/vehicle/photos/rear_glass_58.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_58.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_58.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_58.jpeg', 'images/documents/vehicle/photos/lhs_side_view_58.jpeg', 'images/documents/vehicle/photos/rear_interior_view_58.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_58.jpeg', 'images/documents/vehicle/photos/dashboard_view_58.jpeg', 'images/documents/vehicle/photos/odometer_view_58.jpeg', 58, '2022-12-05 12:17:44', '2022-12-05 12:17:44'),
(28, 'images/documents/vehicle/photos/front_view_59.jpeg', 'images/documents/vehicle/photos/front_glass_59.jpeg', 'images/documents/vehicle/photos/engine_compartment_59.jpeg', 'images/documents/vehicle/photos/roof_59.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_59.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_59.jpeg', 'images/documents/vehicle/photos/rhs_side_view_59.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_59.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_59.jpeg', 'images/documents/vehicle/photos/back_side_view_59.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_59.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_59.jpeg', 'images/documents/vehicle/photos/rear_glass_59.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_59.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_59.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_59.jpeg', 'images/documents/vehicle/photos/lhs_side_view_59.jpeg', 'images/documents/vehicle/photos/rear_interior_view_59.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_59.jpeg', 'images/documents/vehicle/photos/dashboard_view_59.jpeg', 'images/documents/vehicle/photos/odometer_view_59.jpeg', 59, '2022-12-06 11:52:06', '2022-12-06 11:52:06'),
(29, 'images/documents/vehicle/photos/front_view_60.jpeg', 'images/documents/vehicle/photos/front_glass_60.jpeg', 'images/documents/vehicle/photos/engine_compartment_60.jpeg', 'images/documents/vehicle/photos/roof_60.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_60.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_60.jpeg', 'images/documents/vehicle/photos/rhs_side_view_60.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_60.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_60.jpeg', 'images/documents/vehicle/photos/back_side_view_60.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_60.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_60.jpeg', 'images/documents/vehicle/photos/rear_glass_60.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_60.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_60.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_60.jpeg', 'images/documents/vehicle/photos/lhs_side_view_60.jpeg', 'images/documents/vehicle/photos/rear_interior_view_60.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_60.jpeg', 'images/documents/vehicle/photos/dashboard_view_60.jpeg', 'images/documents/vehicle/photos/odometer_view_60.jpeg', 60, '2022-12-06 08:58:06', '2022-12-06 08:58:06'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62, '2022-12-06 12:12:49', '2022-12-06 12:12:49'),
(31, 'images/documents/vehicle/photos/front_view_70.jpeg', 'images/documents/vehicle/photos/front_glass_70.jpeg', 'images/documents/vehicle/photos/engine_compartment_70.jpeg', 'images/documents/vehicle/photos/roof_70.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_70.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_70.jpeg', 'images/documents/vehicle/photos/rhs_side_view_70.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_70.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_70.jpeg', 'images/documents/vehicle/photos/back_side_view_70.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_70.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_70.jpeg', 'images/documents/vehicle/photos/rear_glass_70.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_70.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_70.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_70.jpeg', 'images/documents/vehicle/photos/lhs_side_view_70.jpeg', 'images/documents/vehicle/photos/rear_interior_view_70.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_70.jpeg', 'images/documents/vehicle/photos/dashboard_view_70.jpeg', 'images/documents/vehicle/photos/odometer_view_70.jpeg', 70, '2022-12-07 10:04:37', '2022-12-07 10:04:37'),
(32, 'images/documents/vehicle/photos/front_view_84.jpeg', 'images/documents/vehicle/photos/front_glass_84.jpeg', 'images/documents/vehicle/photos/engine_compartment_84.jpeg', 'images/documents/vehicle/photos/roof_84.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_84.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_84.jpeg', 'images/documents/vehicle/photos/rhs_side_view_84.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_84.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_84.jpeg', 'images/documents/vehicle/photos/back_side_view_84.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_84.', 'images/documents/vehicle/photos/dicky_floor_view_84.jpeg', 'images/documents/vehicle/photos/rear_glass_84.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_84.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_84.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_84.jpeg', 'images/documents/vehicle/photos/lhs_side_view_84.jpeg', 'images/documents/vehicle/photos/rear_interior_view_84.', 'images/documents/vehicle/photos/front_lhs_tyre_84.jpeg', 'images/documents/vehicle/photos/dashboard_view_84.jpeg', 'images/documents/vehicle/photos/odometer_view_84.jpeg', 84, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, '2022-12-07 12:58:53', '2022-12-07 12:58:53'),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79, '2022-12-08 12:13:45', '2022-12-08 12:13:45'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 87, '2022-12-08 13:16:17', '2022-12-08 13:16:17'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88, '2022-12-09 13:33:32', '2022-12-09 13:33:32'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 89, '2022-12-09 06:13:38', '2022-12-09 06:13:38'),
(38, 'images/documents/vehicle/photos/front_view_90.jpeg', 'images/documents/vehicle/photos/front_glass_90.jpeg', 'images/documents/vehicle/photos/engine_compartment_90.jpeg', 'images/documents/vehicle/photos/roof_90.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_90.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_90.jpeg', 'images/documents/vehicle/photos/rhs_side_view_90.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_90.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_90.jpeg', 'images/documents/vehicle/photos/back_side_view_90.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_90.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_90.jpeg', 'images/documents/vehicle/photos/rear_glass_90.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_90.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_90.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_90.jpeg', 'images/documents/vehicle/photos/lhs_side_view_90.jpeg', 'images/documents/vehicle/photos/rear_interior_view_90.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_90.jpeg', 'images/documents/vehicle/photos/dashboard_view_90.jpeg', 'images/documents/vehicle/photos/odometer_view_90.jpeg', 90, '2022-12-09 11:43:52', '2022-12-09 11:43:52'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101, '2022-12-10 11:24:13', '2022-12-10 11:24:13'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2022-12-10 11:36:24', '2022-12-10 11:36:24'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2022-12-10 12:08:52', '2022-12-10 12:08:52'),
(42, 'images/documents/vehicle/photos/front_view_102.jpeg', 'images/documents/vehicle/photos/front_glass_102.jpeg', 'images/documents/vehicle/photos/engine_compartment_102.jpeg', 'images/documents/vehicle/photos/roof_102.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_102.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_102.jpeg', 'images/documents/vehicle/photos/rhs_side_view_102.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_102.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_102.jpeg', 'images/documents/vehicle/photos/back_side_view_102.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_102.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_102.jpeg', 'images/documents/vehicle/photos/rear_glass_102.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_102.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_102.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_102.jpeg', 'images/documents/vehicle/photos/lhs_side_view_102.jpeg', 'images/documents/vehicle/photos/rear_interior_view_102.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_102.jpeg', 'images/documents/vehicle/photos/dashboard_view_102.jpeg', 'images/documents/vehicle/photos/odometer_view_102.jpeg', 102, '2022-12-15 13:28:05', '2022-12-15 13:28:05'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, '2022-12-12 08:40:05', '2022-12-12 08:40:05'),
(44, 'images/documents/vehicle/photos/front_view_105.jpeg', 'images/documents/vehicle/photos/front_glass_105.jpeg', 'images/documents/vehicle/photos/engine_compartment_105.jpeg', 'images/documents/vehicle/photos/roof_105.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_105.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_105.jpeg', 'images/documents/vehicle/photos/rhs_side_view_105.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_105.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_105.jpeg', 'images/documents/vehicle/photos/back_side_view_105.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_105.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_105.jpeg', 'images/documents/vehicle/photos/rear_glass_105.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_105.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_105.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_105.jpeg', 'images/documents/vehicle/photos/lhs_side_view_105.jpeg', 'images/documents/vehicle/photos/rear_interior_view_105.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_105.jpeg', 'images/documents/vehicle/photos/dashboard_view_105.jpeg', 'images/documents/vehicle/photos/odometer_view_105.jpeg', 105, '2022-12-12 12:39:41', '2022-12-12 12:39:41'),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 106, '2022-12-12 12:59:13', '2022-12-12 12:59:13'),
(46, 'images/documents/vehicle/photos/front_view_115.png', 'images/documents/vehicle/photos/front_glass_115.png', 'images/documents/vehicle/photos/engine_compartment_115.png', 'images/documents/vehicle/photos/roof_115.png', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_115.png', 'images/documents/vehicle/photos/front_rhs_tyre_115.png', 'images/documents/vehicle/photos/rhs_side_view_115.png', 'images/documents/vehicle/photos/rhs_side_interior_view_115.png', 'images/documents/vehicle/photos/rear_rhs_tyre_115.png', 'images/documents/vehicle/photos/back_side_view_115.png', 'images/documents/vehicle/photos/dicky_door_open_view_115.png', 'images/documents/vehicle/photos/dicky_floor_view_115.png', 'images/documents/vehicle/photos/rear_glass_115.png', 'images/documents/vehicle/photos/spare_wheel_tyre_115.png', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_115.png', 'images/documents/vehicle/photos/rear_lhs_tyre_115.png', 'images/documents/vehicle/photos/lhs_side_view_115.png', 'images/documents/vehicle/photos/rear_interior_view_115.png', 'images/documents/vehicle/photos/front_lhs_tyre_115.png', 'images/documents/vehicle/photos/dashboard_view_115.png', 'images/documents/vehicle/photos/odometer_view_115.png', 115, '2022-12-13 11:05:43', '2022-12-13 11:05:43'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108, '2022-12-13 07:28:12', '2022-12-13 07:28:12'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 109, '2022-12-13 11:11:03', '2022-12-13 11:11:03'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 116, '2022-12-13 11:30:29', '2022-12-13 11:30:29'),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117, '2022-12-13 12:28:47', '2022-12-13 12:28:47'),
(51, 'images/documents/vehicle/photos/front_view_120.jpeg', 'images/documents/vehicle/photos/front_glass_120.jpeg', 'images/documents/vehicle/photos/engine_compartment_120.jpeg', 'images/documents/vehicle/photos/roof_120.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_120.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_120.jpeg', 'images/documents/vehicle/photos/rhs_side_view_120.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_120.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_120.jpeg', 'images/documents/vehicle/photos/back_side_view_120.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_120.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_120.jpeg', 'images/documents/vehicle/photos/rear_glass_120.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_120.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_120.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_120.jpeg', 'images/documents/vehicle/photos/lhs_side_view_120.jpeg', 'images/documents/vehicle/photos/rear_interior_view_120.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_120.jpeg', 'images/documents/vehicle/photos/dashboard_view_120.jpeg', 'images/documents/vehicle/photos/odometer_view_120.jpeg', 120, '2022-12-14 08:17:14', '2022-12-14 08:17:14'),
(52, 'images/documents/vehicle/photos/front_view_122.jpeg', 'images/documents/vehicle/photos/front_glass_122.jpeg', 'images/documents/vehicle/photos/engine_compartment_122.jpeg', 'images/documents/vehicle/photos/roof_122.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_122.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_122.jpeg', 'images/documents/vehicle/photos/rhs_side_view_122.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_122.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_122.jpeg', 'images/documents/vehicle/photos/back_side_view_122.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_122.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_122.jpeg', 'images/documents/vehicle/photos/rear_glass_122.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_122.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_122.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_122.jpeg', 'images/documents/vehicle/photos/lhs_side_view_122.jpeg', 'images/documents/vehicle/photos/rear_interior_view_122.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_122.jpeg', 'images/documents/vehicle/photos/dashboard_view_122.jpeg', 'images/documents/vehicle/photos/odometer_view_122.jpeg', 122, '2022-12-16 10:40:00', '2022-12-16 10:40:00'),
(53, 'images/documents/vehicle/photos/front_view_127.jpeg', 'images/documents/vehicle/photos/front_glass_127.jpeg', 'images/documents/vehicle/photos/engine_compartment_127.jpeg', 'images/documents/vehicle/photos/roof_127.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_127.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_127.jpeg', 'images/documents/vehicle/photos/rhs_side_view_127.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_127.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_127.jpeg', 'images/documents/vehicle/photos/back_side_view_127.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_127.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_127.jpeg', 'images/documents/vehicle/photos/rear_glass_127.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_127.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_127.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_127.jpeg', 'images/documents/vehicle/photos/lhs_side_view_127.jpeg', 'images/documents/vehicle/photos/rear_interior_view_127.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_127.jpeg', 'images/documents/vehicle/photos/dashboard_view_127.jpeg', 'images/documents/vehicle/photos/odometer_view_127.jpeg', 127, '2023-01-07 13:55:14', '2023-01-07 13:55:14'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129, '2022-12-20 14:15:08', '2022-12-20 14:15:08'),
(55, 'images/documents/vehicle/photos/front_view_77.jpeg', 'images/documents/vehicle/photos/front_glass_77.jpeg', 'images/documents/vehicle/photos/engine_compartment_77.jpeg', 'images/documents/vehicle/photos/roof_77.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_77.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_77.jpeg', 'images/documents/vehicle/photos/rhs_side_view_77.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_77.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_77.jpeg', 'images/documents/vehicle/photos/back_side_view_77.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_77.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_77.jpeg', 'images/documents/vehicle/photos/rear_glass_77.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_77.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_77.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_77.jpeg', 'images/documents/vehicle/photos/lhs_side_view_77.jpeg', 'images/documents/vehicle/photos/rear_interior_view_77.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_77.jpeg', 'images/documents/vehicle/photos/dashboard_view_77.jpeg', 'images/documents/vehicle/photos/odometer_view_77.jpeg', 77, '2023-01-01 07:22:08', '2023-01-01 07:22:08'),
(56, 'images/documents/vehicle/photos/front_view_151.jpeg', 'images/documents/vehicle/photos/front_glass_151.jpeg', 'images/documents/vehicle/photos/engine_compartment_151.jpeg', 'images/documents/vehicle/photos/roof_151.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_151.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_151.jpeg', 'images/documents/vehicle/photos/rhs_side_view_151.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_151.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_151.jpeg', 'images/documents/vehicle/photos/back_side_view_151.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_151.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_151.jpeg', 'images/documents/vehicle/photos/rear_glass_151.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_151.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_151.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_151.jpeg', 'images/documents/vehicle/photos/lhs_side_view_151.jpeg', 'images/documents/vehicle/photos/rear_interior_view_151.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_151.jpeg', 'images/documents/vehicle/photos/dashboard_view_151.jpeg', 'images/documents/vehicle/photos/odometer_view_151.jpeg', 151, '2023-01-02 09:12:50', '2023-01-02 09:12:50'),
(57, 'images/documents/vehicle/photos/front_view_118.jpeg', 'images/documents/vehicle/photos/front_glass_118.jpeg', 'images/documents/vehicle/photos/engine_compartment_118.jpeg', 'images/documents/vehicle/photos/roof_118.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_118.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_118.jpeg', 'images/documents/vehicle/photos/rhs_side_view_118.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_118.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_118.jpeg', 'images/documents/vehicle/photos/back_side_view_118.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_118.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_118.jpeg', 'images/documents/vehicle/photos/rear_glass_118.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_118.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_118.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_118.jpeg', 'images/documents/vehicle/photos/lhs_side_view_118.jpeg', 'images/documents/vehicle/photos/rear_interior_view_118.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_118.jpeg', 'images/documents/vehicle/photos/dashboard_view_118.jpeg', 'images/documents/vehicle/photos/odometer_view_118.jpeg', 118, '2023-01-05 07:33:38', '2023-01-05 07:33:38'),
(58, 'images/documents/vehicle/photos/front_view_150.jpeg', 'images/documents/vehicle/photos/front_glass_150.jpeg', 'images/documents/vehicle/photos/engine_compartment_150.jpeg', 'images/documents/vehicle/photos/roof_150.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_150.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_150.jpeg', 'images/documents/vehicle/photos/rhs_side_view_150.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_150.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_150.jpeg', 'images/documents/vehicle/photos/back_side_view_150.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_150.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_150.jpeg', 'images/documents/vehicle/photos/rear_glass_150.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_150.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_150.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_150.jpeg', 'images/documents/vehicle/photos/lhs_side_view_150.jpeg', 'images/documents/vehicle/photos/rear_interior_view_150.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_150.jpeg', 'images/documents/vehicle/photos/dashboard_view_150.jpeg', 'images/documents/vehicle/photos/odometer_view_150.jpeg', 150, '2023-01-05 08:56:51', '2023-01-05 08:56:51'),
(59, 'images/documents/vehicle/photos/front_view_73.jpeg', 'images/documents/vehicle/photos/front_glass_73.jpeg', 'images/documents/vehicle/photos/engine_compartment_73.jpeg', 'images/documents/vehicle/photos/roof_73.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_73.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_73.jpeg', 'images/documents/vehicle/photos/rhs_side_view_73.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_73.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_73.jpeg', 'images/documents/vehicle/photos/back_side_view_73.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_73.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_73.jpeg', 'images/documents/vehicle/photos/rear_glass_73.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_73.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_73.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_73.jpeg', 'images/documents/vehicle/photos/lhs_side_view_73.jpeg', 'images/documents/vehicle/photos/rear_interior_view_73.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_73.jpeg', 'images/documents/vehicle/photos/dashboard_view_73.jpeg', 'images/documents/vehicle/photos/odometer_view_73.jpeg', 73, '2023-01-05 08:49:20', '2023-01-05 08:49:20'),
(60, 'images/documents/vehicle/photos/front_view_155.jpeg', 'images/documents/vehicle/photos/front_glass_155.jpeg', 'images/documents/vehicle/photos/engine_compartment_155.jpeg', 'images/documents/vehicle/photos/roof_155.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_155.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_155.jpeg', 'images/documents/vehicle/photos/rhs_side_view_155.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_155.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_155.jpeg', 'images/documents/vehicle/photos/back_side_view_155.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_155.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_155.jpeg', 'images/documents/vehicle/photos/rear_glass_155.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_155.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_155.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_155.jpeg', 'images/documents/vehicle/photos/lhs_side_view_155.jpeg', 'images/documents/vehicle/photos/rear_interior_view_155.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_155.jpeg', 'images/documents/vehicle/photos/dashboard_view_155.jpeg', 'images/documents/vehicle/photos/odometer_view_155.jpeg', 155, '2023-01-06 12:30:23', '2023-01-06 12:30:23'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160, '2023-01-07 07:59:35', '2023-01-07 07:59:35');
INSERT INTO `vehicle_photos` (`id`, `front_view`, `front_glass`, `engine_compartment`, `roof`, `front_rhs_side_tringle_view`, `front_rhs_tyre`, `rhs_side_view`, `rhs_side_interior_view`, `rear_rhs_tyre`, `back_side_view`, `dicky_door_open_view`, `dicky_floor_view`, `rear_glass`, `spare_wheel_tyre`, `rear_lhs_side_triangle_view`, `rear_lhs_tyre`, `lhs_side_view`, `rear_interior_view`, `front_lhs_tyre`, `dashboard_view`, `odometer_view`, `order_id`, `created_at`, `updated_at`) VALUES
(62, 'images/documents/vehicle/photos/front_view_162.jpeg', 'images/documents/vehicle/photos/front_glass_162.jpeg', 'images/documents/vehicle/photos/engine_compartment_162.jpeg', 'images/documents/vehicle/photos/roof_162.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_162.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_162.jpeg', 'images/documents/vehicle/photos/rhs_side_view_162.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_162.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_162.jpeg', 'images/documents/vehicle/photos/back_side_view_162.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_162.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_162.jpeg', 'images/documents/vehicle/photos/rear_glass_162.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_162.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_162.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_162.jpeg', 'images/documents/vehicle/photos/lhs_side_view_162.jpeg', 'images/documents/vehicle/photos/rear_interior_view_162.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_162.jpeg', 'images/documents/vehicle/photos/dashboard_view_162.jpeg', 'images/documents/vehicle/photos/odometer_view_162.jpeg', 162, '2023-01-07 08:43:51', '2023-01-07 08:43:51'),
(63, 'images/documents/vehicle/photos/front_view_161.jpeg', 'images/documents/vehicle/photos/front_glass_161.jpeg', 'images/documents/vehicle/photos/engine_compartment_161.jpeg', 'images/documents/vehicle/photos/roof_161.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_161.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_161.jpeg', 'images/documents/vehicle/photos/rhs_side_view_161.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_161.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_161.jpeg', 'images/documents/vehicle/photos/back_side_view_161.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_161.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_161.jpeg', 'images/documents/vehicle/photos/rear_glass_161.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_161.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_161.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_161.jpeg', 'images/documents/vehicle/photos/lhs_side_view_161.jpeg', 'images/documents/vehicle/photos/rear_interior_view_161.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_161.jpeg', 'images/documents/vehicle/photos/dashboard_view_161.jpeg', 'images/documents/vehicle/photos/odometer_view_161.jpeg', 161, '2023-01-07 09:33:11', '2023-01-07 09:33:11'),
(64, 'images/documents/vehicle/photos/front_view_164.jpeg', 'images/documents/vehicle/photos/front_glass_164.jpeg', 'images/documents/vehicle/photos/engine_compartment_164.jpeg', 'images/documents/vehicle/photos/roof_164.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_164.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_164.jpeg', 'images/documents/vehicle/photos/rhs_side_view_164.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_164.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_164.jpeg', 'images/documents/vehicle/photos/back_side_view_164.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_164.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_164.jpeg', 'images/documents/vehicle/photos/rear_glass_164.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_164.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_164.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_164.jpeg', 'images/documents/vehicle/photos/lhs_side_view_164.jpeg', 'images/documents/vehicle/photos/rear_interior_view_164.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_164.jpeg', 'images/documents/vehicle/photos/dashboard_view_164.jpeg', 'images/documents/vehicle/photos/odometer_view_164.jpeg', 164, '2023-01-07 13:51:52', '2023-01-07 13:51:52'),
(65, 'images/documents/vehicle/photos/front_view_132.jpeg', 'images/documents/vehicle/photos/front_glass_132.jpeg', 'images/documents/vehicle/photos/engine_compartment_132.jpeg', 'images/documents/vehicle/photos/roof_132.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_132.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_132.jpeg', 'images/documents/vehicle/photos/rhs_side_view_132.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_132.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_132.jpeg', 'images/documents/vehicle/photos/back_side_view_132.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_132.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_132.jpeg', 'images/documents/vehicle/photos/rear_glass_132.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_132.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_132.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_132.jpeg', 'images/documents/vehicle/photos/lhs_side_view_132.jpeg', 'images/documents/vehicle/photos/rear_interior_view_132.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_132.jpeg', 'images/documents/vehicle/photos/dashboard_view_132.jpeg', 'images/documents/vehicle/photos/odometer_view_132.jpeg', 132, '2023-01-08 09:46:19', '2023-01-08 09:46:19'),
(66, 'images/documents/vehicle/photos/front_view_110.jpeg', 'images/documents/vehicle/photos/front_glass_110.jpeg', 'images/documents/vehicle/photos/engine_compartment_110.jpeg', 'images/documents/vehicle/photos/roof_110.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_110.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_110.jpeg', 'images/documents/vehicle/photos/rhs_side_view_110.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_110.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_110.jpeg', 'images/documents/vehicle/photos/back_side_view_110.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_110.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_110.jpeg', 'images/documents/vehicle/photos/rear_glass_110.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_110.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_110.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_110.jpeg', 'images/documents/vehicle/photos/lhs_side_view_110.jpeg', 'images/documents/vehicle/photos/rear_interior_view_110.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_110.jpeg', 'images/documents/vehicle/photos/dashboard_view_110.jpeg', 'images/documents/vehicle/photos/odometer_view_110.jpeg', 110, '2023-01-08 09:49:43', '2023-01-08 09:49:43'),
(67, 'images/documents/vehicle/photos/front_view_172.jpeg', 'images/documents/vehicle/photos/front_glass_172.jpeg', 'images/documents/vehicle/photos/engine_compartment_172.jpeg', 'images/documents/vehicle/photos/roof_172.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_172.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_172.jpeg', 'images/documents/vehicle/photos/rhs_side_view_172.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_172.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_172.jpeg', 'images/documents/vehicle/photos/back_side_view_172.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_172.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_172.jpeg', 'images/documents/vehicle/photos/rear_glass_172.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_172.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_172.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_172.jpeg', 'images/documents/vehicle/photos/lhs_side_view_172.jpeg', 'images/documents/vehicle/photos/rear_interior_view_172.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_172.jpeg', 'images/documents/vehicle/photos/dashboard_view_172.jpeg', 'images/documents/vehicle/photos/odometer_view_172.jpeg', 172, '2023-01-14 13:00:37', '2023-01-14 13:00:37'),
(68, 'images/documents/vehicle/photos/front_view_174.jpeg', 'images/documents/vehicle/photos/front_glass_174.jpeg', 'images/documents/vehicle/photos/engine_compartment_174.jpeg', 'images/documents/vehicle/photos/roof_174.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_174.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_174.jpeg', 'images/documents/vehicle/photos/rhs_side_view_174.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_174.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_174.jpeg', 'images/documents/vehicle/photos/back_side_view_174.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_174.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_174.jpeg', 'images/documents/vehicle/photos/rear_glass_174.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_174.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_174.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_174.jpeg', 'images/documents/vehicle/photos/lhs_side_view_174.jpeg', 'images/documents/vehicle/photos/rear_interior_view_174.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_174.jpeg', 'images/documents/vehicle/photos/dashboard_view_174.jpeg', 'images/documents/vehicle/photos/odometer_view_174.jpeg', 174, '2023-01-17 08:03:22', '2023-01-17 08:03:22'),
(69, 'images/documents/vehicle/photos/front_view_176.jpeg', 'images/documents/vehicle/photos/front_glass_176.jpeg', 'images/documents/vehicle/photos/engine_compartment_176.jpeg', 'images/documents/vehicle/photos/roof_176.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_176.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_176.jpeg', 'images/documents/vehicle/photos/rhs_side_view_176.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_176.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_176.jpeg', 'images/documents/vehicle/photos/back_side_view_176.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_176.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_176.jpeg', 'images/documents/vehicle/photos/rear_glass_176.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_176.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_176.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_176.jpeg', 'images/documents/vehicle/photos/lhs_side_view_176.jpeg', 'images/documents/vehicle/photos/rear_interior_view_176.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_176.jpeg', 'images/documents/vehicle/photos/dashboard_view_176.jpeg', 'images/documents/vehicle/photos/odometer_view_176.jpeg', 176, '2023-01-18 07:34:57', '2023-01-18 07:34:57'),
(70, 'images/documents/vehicle/photos/front_view_179.jpeg', 'images/documents/vehicle/photos/front_glass_179.jpeg', 'images/documents/vehicle/photos/engine_compartment_179.jpeg', 'images/documents/vehicle/photos/roof_179.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_179.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_179.jpeg', 'images/documents/vehicle/photos/rhs_side_view_179.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_179.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_179.jpeg', 'images/documents/vehicle/photos/back_side_view_179.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_179.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_179.jpeg', 'images/documents/vehicle/photos/rear_glass_179.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_179.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_179.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_179.jpeg', 'images/documents/vehicle/photos/lhs_side_view_179.jpeg', 'images/documents/vehicle/photos/rear_interior_view_179.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_179.jpeg', 'images/documents/vehicle/photos/dashboard_view_179.jpeg', 'images/documents/vehicle/photos/odometer_view_179.jpeg', 179, '2023-01-18 11:10:33', '2023-01-18 11:10:33'),
(71, 'images/documents/vehicle/photos/front_view_182.jpeg', 'images/documents/vehicle/photos/front_glass_182.jpeg', 'images/documents/vehicle/photos/engine_compartment_182.jpeg', 'images/documents/vehicle/photos/roof_182.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_182.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_182.jpeg', 'images/documents/vehicle/photos/rhs_side_view_182.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_182.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_182.jpeg', 'images/documents/vehicle/photos/back_side_view_182.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_182.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_182.jpeg', 'images/documents/vehicle/photos/rear_glass_182.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_182.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_182.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_182.jpeg', 'images/documents/vehicle/photos/lhs_side_view_182.jpeg', 'images/documents/vehicle/photos/rear_interior_view_182.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_182.jpeg', 'images/documents/vehicle/photos/dashboard_view_182.jpeg', 'images/documents/vehicle/photos/odometer_view_182.jpeg', 182, '2023-01-23 08:17:45', '2023-01-23 08:17:45'),
(72, 'images/documents/vehicle/photos/front_view_187.jpeg', 'images/documents/vehicle/photos/front_glass_187.jpeg', 'images/documents/vehicle/photos/engine_compartment_187.jpeg', 'images/documents/vehicle/photos/roof_187.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_187.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_187.jpeg', 'images/documents/vehicle/photos/rhs_side_view_187.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_187.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_187.jpeg', 'images/documents/vehicle/photos/back_side_view_187.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_187.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_187.jpeg', 'images/documents/vehicle/photos/rear_glass_187.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_187.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_187.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_187.jpeg', 'images/documents/vehicle/photos/lhs_side_view_187.jpeg', 'images/documents/vehicle/photos/rear_interior_view_187.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_187.jpeg', 'images/documents/vehicle/photos/dashboard_view_187.jpeg', 'images/documents/vehicle/photos/odometer_view_187.jpeg', 187, '2023-01-27 10:31:19', '2023-01-27 10:31:19'),
(73, 'images/documents/vehicle/photos/front_view_190.jpeg', 'images/documents/vehicle/photos/front_glass_190.jpeg', 'images/documents/vehicle/photos/engine_compartment_190.jpeg', 'images/documents/vehicle/photos/roof_190.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_190.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_190.jpeg', 'images/documents/vehicle/photos/rhs_side_view_190.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_190.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_190.jpeg', 'images/documents/vehicle/photos/back_side_view_190.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_190.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_190.jpeg', 'images/documents/vehicle/photos/rear_glass_190.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_190.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_190.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_190.jpeg', 'images/documents/vehicle/photos/lhs_side_view_190.jpeg', 'images/documents/vehicle/photos/rear_interior_view_190.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_190.jpeg', 'images/documents/vehicle/photos/dashboard_view_190.jpeg', 'images/documents/vehicle/photos/odometer_view_190.jpeg', 190, '2023-01-30 10:09:07', '2023-01-30 10:09:07'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2023-05-22 06:20:55', '2023-05-22 06:20:55'),
(75, 'images/documents/vehicle/photos/front_view_7.jpeg', 'images/documents/vehicle/photos/front_glass_7.jpeg', 'images/documents/vehicle/photos/engine_compartment_7.jpeg', 'images/documents/vehicle/photos/roof_7.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_7.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_7.jpeg', 'images/documents/vehicle/photos/rhs_side_view_7.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_7.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_7.jpeg', 'images/documents/vehicle/photos/back_side_view_7.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_7.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_7.jpeg', 'images/documents/vehicle/photos/rear_glass_7.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_7.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_7.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_7.jpeg', 'images/documents/vehicle/photos/lhs_side_view_7.jpeg', 'images/documents/vehicle/photos/rear_interior_view_7.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_7.jpeg', 'images/documents/vehicle/photos/dashboard_view_7.jpeg', 'images/documents/vehicle/photos/odometer_view_7.jpeg', 7, '2023-06-14 10:27:21', '2023-06-14 10:27:21'),
(76, 'images/documents/vehicle/photos/front_view_8.jpeg', 'images/documents/vehicle/photos/front_glass_8.jpeg', 'images/documents/vehicle/photos/engine_compartment_8.jpeg', 'images/documents/vehicle/photos/roof_8.jpeg', 'images/documents/vehicle/photos/front_rhs_side_tringle_view_8.jpeg', 'images/documents/vehicle/photos/front_rhs_tyre_8.jpeg', 'images/documents/vehicle/photos/rhs_side_view_8.jpeg', 'images/documents/vehicle/photos/rhs_side_interior_view_8.jpeg', 'images/documents/vehicle/photos/rear_rhs_tyre_8.jpeg', 'images/documents/vehicle/photos/back_side_view_8.jpeg', 'images/documents/vehicle/photos/dicky_door_open_view_8.jpeg', 'images/documents/vehicle/photos/dicky_floor_view_8.jpeg', 'images/documents/vehicle/photos/rear_glass_8.jpeg', 'images/documents/vehicle/photos/spare_wheel_tyre_8.jpeg', 'images/documents/vehicle/photos/rear_lhs_side_triangle_view_8.jpeg', 'images/documents/vehicle/photos/rear_lhs_tyre_8.jpeg', 'images/documents/vehicle/photos/lhs_side_view_8.jpeg', 'images/documents/vehicle/photos/rear_interior_view_8.jpeg', 'images/documents/vehicle/photos/front_lhs_tyre_8.jpeg', 'images/documents/vehicle/photos/dashboard_view_8.jpeg', 'images/documents/vehicle/photos/odometer_view_8.jpeg', 8, '2023-05-30 12:20:53', '2023-05-30 12:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `verify_otp`
--

CREATE TABLE `verify_otp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile` bigint(20) UNSIGNED NOT NULL,
  `otp` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_otp`
--

INSERT INTO `verify_otp` (`id`, `mobile`, `otp`, `created_at`, `updated_at`) VALUES
(11, 5464565645, 3131, '2022-09-30 06:57:11', NULL),
(13, 5646454564, 2129, '2022-09-30 07:02:23', NULL),
(14, 5465654645, 5058, '2022-09-30 07:03:01', NULL),
(15, 3242342342, 1435, '2022-09-30 07:04:22', NULL),
(16, 6564564656, 9626, '2022-09-30 07:06:15', NULL),
(23, 1231231231, 7103, '2022-10-03 01:20:41', NULL),
(27, 3131311331, 8742, '2022-10-03 10:03:29', NULL),
(61, 1212121212, 4212, '2022-10-07 01:24:53', NULL),
(63, 5656456546, 1312, '2022-10-07 01:34:31', NULL),
(64, 6756756756, 1213, '2022-10-07 01:34:45', NULL),
(65, 4564654645, 3754, '2022-10-07 01:35:12', NULL),
(67, 4545454545, 2914, '2022-10-07 01:38:06', NULL),
(68, 1212112221, 4265, '2022-10-07 01:39:27', NULL),
(69, 5345345345, 6655, '2022-10-07 01:40:21', NULL),
(70, 5544534534, 6963, '2022-10-07 01:41:01', NULL),
(71, 3232323223, 2700, '2022-10-07 01:41:25', NULL),
(72, 2112212121, 6412, '2022-10-07 01:41:54', NULL),
(87, 2323232323, 6440, '2022-10-07 05:33:48', NULL),
(99, 5656756765, 8347, '2022-10-10 00:26:09', NULL),
(104, 9702208327, 9930, '2022-10-24 00:35:56', NULL),
(108, 8591016112, 3691, '2022-10-29 12:18:46', NULL),
(115, 7507181975, 7183, '2022-12-19 05:45:20', NULL),
(124, 9599089359, 6833, '2022-11-23 02:23:04', NULL),
(200, 7507181917, 6621, '2022-12-19 05:44:52', NULL),
(239, 8424969991, 2683, '2022-12-28 11:49:42', NULL),
(254, 9987022940, 5110, '2022-12-29 03:48:47', NULL),
(261, 9987970471, 3924, '2022-12-31 03:29:03', NULL),
(263, 9564894601, 2133, '2022-12-29 16:55:35', NULL),
(264, 9594894601, 6171, '2022-12-29 16:58:44', NULL),
(266, 9870735652, 2421, '2022-12-30 06:00:44', NULL),
(267, 9137367105, 3912, '2022-12-30 06:02:38', NULL),
(268, 7977937300, 8685, '2022-12-30 08:25:09', NULL),
(269, 8888951163, 3408, '2023-01-01 13:36:46', NULL),
(270, 8799944957, 5857, '2023-01-05 17:52:29', NULL),
(274, 7977063056, 8305, '2023-01-25 02:35:40', NULL),
(284, 9987294969, 7690, '2023-01-04 06:29:25', NULL),
(287, 7400302048, 8809, '2023-01-04 06:45:39', NULL),
(291, 8080466777, 1171, '2023-01-05 14:27:24', NULL),
(295, 9850171692, 1016, '2023-01-05 15:52:13', NULL),
(296, 9867385753, 7205, '2023-01-05 16:06:26', NULL),
(299, 9850100747, 6082, '2023-01-06 05:52:50', NULL),
(302, 9768509923, 7549, '2023-01-10 05:15:37', NULL),
(310, 9892098203, 4012, '2023-01-10 10:39:15', NULL),
(312, 9890610291, 8698, '2023-01-15 11:23:31', NULL),
(328, 9699240540, 4675, '2023-01-14 11:19:28', NULL),
(330, 9706958618, 8580, '2023-01-14 12:02:01', NULL),
(336, 9820157443, 3010, '2023-01-14 20:08:30', NULL),
(342, 7738680835, 6383, '2023-01-15 09:27:57', NULL),
(361, 9004776442, 4388, '2023-01-17 18:03:02', NULL),
(362, 9833748278, 2772, '2023-01-24 05:36:19', NULL),
(363, 636177, 2801, '2023-01-18 07:51:19', NULL),
(369, 8087207613, 7402, '2023-03-09 05:17:38', NULL),
(370, 7021232964, 3374, '2023-01-18 17:42:07', NULL),
(386, 9794258005, 3549, '2023-01-27 19:58:23', NULL),
(394, 9049421823, 7611, '2023-01-22 17:09:30', NULL),
(408, 9004364440, 3825, '2023-01-26 18:01:08', NULL),
(413, 8605889229, 5715, '2023-01-30 09:38:18', NULL),
(414, 9075796793, 9471, '2023-01-30 09:57:33', NULL),
(417, 8879163566, 3313, '2023-01-30 18:29:05', NULL),
(424, 9820215653, 9447, '2023-02-02 10:27:32', NULL),
(430, 8000383850, 2146, '2023-02-03 17:16:00', NULL),
(431, 8793868647, 4748, '2023-02-19 05:18:00', NULL),
(432, 9962423734, 5122, '2023-02-03 18:17:32', NULL),
(436, 8897715249, 4968, '2023-03-03 03:10:23', NULL),
(439, 9324012380, 3261, '2023-02-05 06:06:17', NULL),
(442, 8652333143, 2405, '2023-02-05 10:11:11', NULL),
(451, 9849068060, 7535, '2023-02-08 05:33:24', NULL),
(453, 9021953904, 9815, '2023-02-10 08:30:23', NULL),
(454, 9969686654, 5742, '2023-02-10 18:11:11', NULL),
(457, 7738599053, 2956, '2023-02-13 13:05:00', NULL),
(458, 9324049186, 7831, '2023-02-13 07:21:21', NULL),
(463, 8108198666, 8071, '2023-02-13 19:52:54', NULL),
(468, 8652438459, 9807, '2023-02-24 19:25:17', NULL),
(474, 9975237455, 4686, '2023-02-18 05:57:40', NULL),
(475, 8551035364, 5583, '2023-02-17 16:58:31', NULL),
(476, 8421223449, 1350, '2023-02-18 04:17:20', NULL),
(477, 8286684489, 8894, '2023-02-21 11:34:58', NULL),
(478, 7021193312, 6829, '2023-02-24 11:46:37', NULL),
(479, 9130727388, 1074, '2023-02-23 23:41:25', NULL),
(480, 9699338011, 9330, '2023-02-24 06:04:15', NULL),
(481, 8087488014, 2520, '2023-02-25 12:58:01', NULL),
(482, 9619029014, 2100, '2023-02-26 08:38:13', NULL),
(483, 9225323574, 8153, '2023-03-02 15:58:18', NULL),
(484, 9867914821, 5423, '2023-02-27 11:26:27', NULL),
(485, 7828369878, 7289, '2023-02-28 12:00:00', NULL),
(486, 9945077731, 4485, '2023-03-01 13:14:52', NULL),
(487, 9773274369, 5820, '2023-03-02 05:31:42', NULL),
(488, 9763735068, 7429, '2023-03-06 05:21:43', NULL),
(490, 9999335084, 3477, '2023-03-07 09:20:23', NULL),
(491, 9767739004, 6200, '2023-03-07 10:21:56', NULL),
(492, 8390011104, 7825, '2023-03-07 13:50:51', NULL),
(493, 8421777737, 4001, '2023-03-27 12:57:04', NULL),
(495, 9622713697, 6983, '2023-03-31 07:39:43', NULL),
(496, 8897223394, 1130, '2023-04-09 10:56:29', NULL),
(498, 467312989, 5087, '2023-04-10 16:53:38', NULL),
(500, 8467739004, 9049, '2023-04-16 12:07:58', NULL),
(502, 8390047621, 4752, '2023-04-18 12:17:32', NULL),
(524, 9866872441, 1930, '2023-06-04 06:37:24', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_insuarances`
--
ALTER TABLE `car_insuarances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_loans`
--
ALTER TABLE `car_loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_transfers`
--
ALTER TABLE `car_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chasis_details`
--
ALTER TABLE `chasis_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damages`
--
ALTER TABLE `damages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dicky_doors`
--
ALTER TABLE `dicky_doors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dicky_floor_conditions`
--
ALTER TABLE `dicky_floor_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engine_compartments`
--
ALTER TABLE `engine_compartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exterior_back_sides`
--
ALTER TABLE `exterior_back_sides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exterior_lhs_sides`
--
ALTER TABLE `exterior_lhs_sides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exterior_rhs_sides`
--
ALTER TABLE `exterior_rhs_sides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interiors`
--
ALTER TABLE `interiors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`(191),`tokenable_id`);

--
-- Indexes for table `pre_orders`
--
ALTER TABLE `pre_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre_payments`
--
ALTER TABLE `pre_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pre_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `rc_insuarance_details`
--
ALTER TABLE `rc_insuarance_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_features`
--
ALTER TABLE `special_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_drives`
--
ALTER TABLE `test_drives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_details`
--
ALTER TABLE `vehicle_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_parts_qualities`
--
ALTER TABLE `vehicle_parts_qualities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_photos`
--
ALTER TABLE `vehicle_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify_otp`
--
ALTER TABLE `verify_otp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `car_insuarances`
--
ALTER TABLE `car_insuarances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `car_loans`
--
ALTER TABLE `car_loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `car_transfers`
--
ALTER TABLE `car_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chasis_details`
--
ALTER TABLE `chasis_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `damages`
--
ALTER TABLE `damages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `dicky_doors`
--
ALTER TABLE `dicky_doors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dicky_floor_conditions`
--
ALTER TABLE `dicky_floor_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `engine_compartments`
--
ALTER TABLE `engine_compartments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `exterior_back_sides`
--
ALTER TABLE `exterior_back_sides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `exterior_lhs_sides`
--
ALTER TABLE `exterior_lhs_sides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `exterior_rhs_sides`
--
ALTER TABLE `exterior_rhs_sides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `interiors`
--
ALTER TABLE `interiors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pre_orders`
--
ALTER TABLE `pre_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `pre_payments`
--
ALTER TABLE `pre_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `rc_insuarance_details`
--
ALTER TABLE `rc_insuarance_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `special_features`
--
ALTER TABLE `special_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `test_drives`
--
ALTER TABLE `test_drives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `vehicle_details`
--
ALTER TABLE `vehicle_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `vehicle_parts_qualities`
--
ALTER TABLE `vehicle_parts_qualities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `vehicle_photos`
--
ALTER TABLE `vehicle_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `verify_otp`
--
ALTER TABLE `verify_otp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pre_payments`
--
ALTER TABLE `pre_payments`
  ADD CONSTRAINT `pre_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
