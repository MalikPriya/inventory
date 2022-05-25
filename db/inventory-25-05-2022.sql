-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2022 at 03:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `date`, `time`, `type`, `comment`, `location`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(5, 5, '2022-03-20', '10:04:00', 'visit store', 'Visit Dipti Trader at East Mumbai', 'East Mumbai', 19.1582, 72.9597, '2022-04-25 00:48:50', '2022-04-25 00:48:50'),
(6, 5, '2022-03-20', '12:00:00', 'Order Upload', 'Take Order from Dipti Trader', 'East Mumbai', 19.1582, 72.9597, '2022-04-25 00:51:41', '2022-04-25 00:51:41'),
(7, 5, '2022-03-20', '01:00:00', 'Distributor Visit', 'Visit JP Enterprise', 'East Mumbai', 19.1582, 72.9597, '2022-04-25 00:52:56', '2022-04-25 00:52:56'),
(8, 5, '2022-03-20', '02:30:00', 'Visit Store', 'Visit JK Enterprise at Mumbai', 'Mumbai', 19.1582, 72.9597, '2022-04-25 00:54:14', '2022-04-25 00:54:14'),
(9, 5, '2022-03-20', '05:30:00', 'Order Upload', 'Take Order from JK Enterprise', 'Mumbai', 19.1582, 72.9597, '2022-04-25 00:55:30', '2022-04-25 00:55:30'),
(10, 5, '2022-03-20', '06:00:00', 'Order Upload', 'Take another Order from JK', 'Mumbai', 19.1582, 72.9597, '2022-04-25 00:56:13', '2022-04-25 00:56:13'),
(11, 5, '2022-05-12', '10:04:00', 'visit store', 'Visit Dipti Trader at East Mumbai', 'East Mumbai', 19.1582, 72.9597, '2022-04-25 00:48:50', '2022-04-25 00:48:50'),
(12, 5, '2022-05-12', '12:00:00', 'Order Upload', 'Take Order from Dipti Trader', 'East Mumbai', 19.1582, 72.9597, '2022-04-25 00:51:41', '2022-04-25 00:51:41'),
(13, 1, '2022-05-13', '08:17:50', 'Order Upload', 'Took order from Lovies Mega Mart', 'Kolkata', 0, 0, '2022-05-13 02:47:50', '2022-05-13 02:47:50'),
(14, 5, '2022-03-20', '06:00:00', 'Order Upload', 'Take another Order from JK', 'Mumbai', 19.1582, 72.9597, '2022-05-13 02:50:43', '2022-05-13 02:50:43'),
(15, 1, '2022-05-13', '08:21:33', 'Order Upload', 'Took order from RD Traders', 'Kolkata', 0, 0, '2022-05-13 02:51:33', '2022-05-13 02:51:33'),
(16, 1, '2022-05-13', '09:03:52', 'Order Upload', 'Took order from RD Traders', 'Kolkata', 0, 0, '2022-05-13 03:33:53', '2022-05-13 03:33:53'),
(17, 1, '2022-05-13', '09:06:29', 'Order Upload', 'Took order from Cartmax', 'Kolkata', 0, 0, '2022-05-13 03:36:29', '2022-05-13 03:36:29'),
(18, 1, '2022-05-13', '11:55:53', 'Order Upload', 'Took order from RD Traders', 'Kolkata', 0, 0, '2022-05-13 06:25:53', '2022-05-13 06:25:53'),
(19, 1, '2022-05-13', '12:45:40', 'Order Upload', 'Took order from test', 'Kolkata', 0, 0, '2022-05-13 07:15:40', '2022-05-13 07:15:40'),
(20, 1, '2022-05-13', '12:51:54', 'No Order Placed', 'No order placed at test due to Competitor Related Issue', 'Kolkata', 0, 0, '2022-05-13 07:21:54', '2022-05-13 07:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: customer_billing, 2: customer_shipping, 3: staff',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
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
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Onn Admin', 'priya.malik@onenesstechs.in', NULL, '$2y$10$onFJqIhJGoxWYKf3WZn.2.7X.vTHObutvSCmd2OGo/VQzyy/AlrhO', NULL, NULL, '2022-04-27 02:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `store_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_style_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_variation_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `offer_price` double(10,2) NOT NULL DEFAULT 0.00,
  `color` int(11) DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `coupon_code_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sketch_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `position`, `name`, `parent`, `icon_path`, `sketch_icon`, `image_path`, `banner_image`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Category 1', NULL, 'uploads/category/1653386092.2128731387.img1.jpg', NULL, NULL, NULL, 'category-1', 'This is category 1', 1, '2022-05-24 04:24:52', '2022-05-24 04:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `category_parents`
--

CREATE TABLE `category_parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_parents`
--

INSERT INTO `category_parents` (`id`, `name`, `slug`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Innerwear', 'innerwear', 1, 1, '2022-05-04 12:29:09', '2022-05-12 06:24:57'),
(2, 'Outerwear', 'outerwear', 2, 1, '2022-05-04 12:29:09', '2022-05-12 06:24:57'),
(3, 'Winter wear', 'winter-wear', 3, 1, '2022-05-04 12:29:09', '2022-05-12 06:24:57'),
(4, 'Footkins', 'footkins', 4, 1, '2022-05-04 12:29:09', '2022-05-12 06:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sketch_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `position`, `name`, `icon_path`, `sketch_icon`, `image_path`, `banner_image`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 0, 'Footkins', 'uploads/collection/range4.png', 'uploads/collection/1648110294.665818788.footkins.png', 'uploads/collection/onn_footkins.png', 'uploads/collection/1646652429.banner1.jpg', 'footkins', NULL, 1, '2022-03-07 09:30:10', '2022-05-12 06:24:57'),
(3, 0, 'Grandde', 'uploads/collection/range3.png', 'uploads/collection/1648110322.1721975126.grandde.png', 'uploads/collection/onn_innerwear.png', 'uploads/collection/1646652429.banner1.jpg', 'grandde', NULL, 1, '2022-03-07 09:30:24', '2022-05-12 06:24:57'),
(4, 0, 'Acttive', 'uploads/collection/range5.png', 'uploads/collection/1648110335.673340868.acttive.png', 'uploads/collection/onn_outerwear.png', 'uploads/collection/1646652429.banner1.jpg', 'acttive', NULL, 1, '2022-03-07 09:30:36', '2022-05-12 06:24:57'),
(6, 0, 'Thermal', 'uploads/collection/range.png', 'uploads/collection/1648110344.1885323119.thermal.png', 'uploads/collection/onn_thermal.png', 'uploads/collection/1646652429.banner1.jpg', 'thermal', NULL, 1, '2022-03-10 07:42:23', '2022-05-12 06:24:57'),
(7, 0, 'Winter Wear', 'uploads/collection/range1.png', 'uploads/collection/1648110354.1286489689.winter-wear.png', 'uploads/collection/onn_winter-product.png', 'uploads/collection/1646652429.banner1.jpg', 'winter-wear', NULL, 1, '2022-03-10 07:52:10', '2022-05-12 06:24:57'),
(8, 0, 'Relaxz', 'uploads/collection/range6.png', 'uploads/collection/1648110364.1549682793.relaxz.png', 'uploads/collection/onn_relaxz.png', 'uploads/collection/1646652429.banner1.jpg', 'relaxz', NULL, 1, '2022-03-10 07:52:26', '2022-05-12 06:24:57'),
(9, 0, 'Platina', 'uploads/collection/range2.png', 'uploads/collection/1648110379.991784936.platina.png', 'uploads/collection/onn_platina.png', 'uploads/collection/1646652429.banner1.jpg', 'platina', NULL, 1, '2022-03-10 07:52:26', '2022-05-12 06:24:57'),
(11, 0, 'Stretchz', 'uploads/collection/1648068223.509795879.range3.png', 'uploads/collection/1648110389.467029930.stretchz.png', 'uploads/collection/1648068223.379099523.stretchz.png', 'uploads/collection/1648068223.2053266682.banner2.jpg', 'stretchz', NULL, 1, '2022-03-24 02:13:43', '2022-05-12 06:24:57'),
(12, 0, 'Sport', 'uploads/collection/1648068876.960883191.onn-men-s-sports-and-gym-vest-500x500.png', 'uploads/collection/1648110397.2106029333.sport.png', 'uploads/collection/1648068723.482089929.onn_sports.png', 'uploads/collection/1648068723.855994381.banner2.png', 'sport', NULL, 1, '2022-03-24 02:22:03', '2022-05-12 06:24:57'),
(13, 0, 'Comfortz', 'uploads/collection/1648068987.1494204055.relaxz.png', 'uploads/collection/1648110406.283624293.comfortz.png', 'uploads/collection/1648068987.810786002.comfortz.png', 'uploads/collection/1648068987.23204190.banner2.jpg', 'comfortz', NULL, 1, '2022-03-24 02:26:27', '2022-05-12 06:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Red', '#DB2828', 1, '2022-03-03 18:50:47', '2022-05-12 06:24:57'),
(2, 'Orange', '#F2711C', 1, '2022-03-03 18:50:47', '2022-05-12 06:24:57'),
(3, 'Yellow', '#FBBD08', 1, '2022-03-03 18:50:47', '2022-05-12 06:24:57'),
(4, 'Olive', '#B5CC18', 1, '2022-03-03 18:50:47', '2022-05-12 06:24:57'),
(5, 'Green', '#21BA45', 1, '2022-03-03 18:50:47', '2022-05-12 06:24:57'),
(6, 'Teal', '#00B5AD', 1, '2022-03-03 18:50:47', '2022-05-12 06:24:57'),
(7, 'Blue', '#2185D0', 1, '2022-03-03 18:50:47', '2022-05-12 06:24:57'),
(8, 'Violet', '#6435C9', 1, '2022-03-03 18:50:47', '2022-05-12 06:24:57'),
(9, 'Purple', '#A333C8', 1, '2022-03-03 18:50:47', '2022-05-12 06:24:57'),
(10, 'Pink', '#E03997', 1, '2022-03-03 18:50:47', '2022-05-12 06:24:57'),
(11, 'Black', '#000000', 1, '2022-03-20 21:05:41', '2022-05-12 06:24:57'),
(12, 'White', '#FFFFFF', 1, '2022-03-20 21:07:22', '2022-05-12 06:24:57'),
(13, 'Navy', '#000080', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(14, 'Charcoal', '#36454F', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(15, 'Sea Green', '#2e8b57', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(16, 'LT Blue', '#ADD8E6\r\n', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(17, 'Maroon', '#800000', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(18, 'Royal Blue', '#4169e1', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(19, 'Coffee', '#6f4e37', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(20, 'Cool Yellow', '#ECEA98', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(21, 'Goldfish', '#f98332', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(22, 'Baby Pink', '#f4c2c2', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(23, 'Tel', '#008080', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(24, 'Air Force Blue', '#00308F', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(25, 'Mustard', '#FFDB58', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(26, 'Peacock Blue', '#326872', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(27, 'Forest Green', '#228B22', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(28, 'Bottle Green', '#006A4E', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(29, 'Camel', '#c19a6b', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(30, 'Lemon', '#E7C91B', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(31, 'Bright Blue', '#0096FF', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(32, 'Wine', '#58181F', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(33, 'Aqua', '#00FFFF', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(34, 'Powder Blue', '#B6D0E2', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(35, 'Tangerine', '#F28500', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(36, 'Smoke Green', '#a8bba2', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(37, 'Fluorescent Green', '#39FF14', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(38, 'Peach', '#FFE5B4', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(39, 'Navy Melange', '#282B57', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(40, 'Pea Green', '#52D017', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(41, 'Canary Yellow', '#FFEF00', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(42, 'Sky Blue', '#87CEEB', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(43, 'grass Green', '#7CFC00', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(44, 'Mouse', '#6e5f57', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(45, 'Sapphire Blue', '#0F52BA', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(46, 'Dusty Pink', '#E1AD9D', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(47, 'Blue Mist', '#dbe5ef', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(48, 'Azure', '#007fff', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(49, 'Ocean Blue', '#2B65EC', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(50, 'Rose Wood', '#65000b', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(51, 'Dark Sapphire', '#082567', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(52, 'Imperial Blue', '#002395', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(53, 'Slate Grey', '#708090', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(54, 'Java Brown', '#50382E', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(55, 'Turquoise Blue', '#30D5C8', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(56, 'Mocha', '#967969', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(57, 'Steel Grey', '#71797E', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(58, 'Grey Melange', '#afafaf', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(59, 'Lavender', '#E6E6FA', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57'),
(60, 'Dark Grey', '#a9a9a9', 1, '2022-03-22 04:21:11', '2022-05-12 06:24:57'),
(61, 'Assorted', '#99CCFF', 1, '2022-03-22 04:21:11', '2022-05-12 06:24:57'),
(62, 'Crimson', '#DC143C', 1, '2022-03-22 04:21:11', '2022-05-12 06:24:57'),
(63, 'British Tan', '#C2A47F', 1, '2022-04-01 13:59:30', '2022-05-12 06:24:57'),
(64, 'Black Melange', '#383838', 1, '2022-03-21 22:51:11', '2022-05-12 06:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: flat, 2: offer',
  `amount` double(8,2) NOT NULL,
  `max_time_of_use` bigint(20) NOT NULL,
  `max_time_one_can_use` bigint(20) NOT NULL,
  `no_of_usage` bigint(20) NOT NULL DEFAULT 0,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `coupon_code`, `type`, `amount`, `max_time_of_use`, `max_time_one_can_use`, `no_of_usage`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Buy now & get 30% instant discount', 'ONNIT30', 1, 800.00, 50, 1, 0, '2022-05-12 06:24:57', '2022-03-09 18:30:00', 1, '2022-03-04 05:19:33', '2022-05-12 06:24:57'),
(2, '50% OFF On minimum purchase of Rs. 500', 'FLIPFLOP', 1, 500.00, 30, 1, 4, '2022-05-12 06:24:57', '2022-04-29 18:30:00', 1, '2022-03-22 05:18:37', '2022-05-12 06:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code_id` bigint(20) NOT NULL,
  `coupon_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(10,2) NOT NULL,
  `total_checkout_amount` double(10,2) NOT NULL,
  `final_amount` double(10,2) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `usage_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_usages`
--

INSERT INTO `coupon_usages` (`id`, `coupon_code_id`, `coupon_code`, `discount`, `total_checkout_amount`, `final_amount`, `user_id`, `email`, `ip`, `order_id`, `usage_time`, `created_at`, `updated_at`) VALUES
(1, 2, 'FLIPFLOP', 500.00, 3669.00, 3169.00, 0, 'your.email+fakedata44065@gmail.com', '127.0.0.1', 40, '2022-03-25 11:53:15', '2022-03-25 06:23:15', '2022-05-12 06:24:57'),
(2, 2, 'FLIPFLOP', 500.00, 3669.00, 3169.00, 0, 'your.email+fakedata34742@gmail.com', '127.0.0.1', 41, '2022-03-25 11:54:32', '2022-03-25 06:24:32', '2022-05-12 06:24:57'),
(3, 2, 'FLIPFLOP', 500.00, 2871.00, 2371.00, 0, 'your.email+fakedata23545@gmail.com', '127.0.0.1', 42, '2022-03-25 12:45:50', '2022-03-25 07:15:50', '2022-05-12 06:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `whatsapp_no` bigint(20) DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_pin` int(11) DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_pin` int(11) DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` int(11) DEFAULT NULL,
  `credit_days` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0 COMMENT '1: verified, 0: not verified',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `whatsapp_no`, `billing_address`, `billing_landmark`, `billing_state`, `billing_city`, `billing_pin`, `billing_country`, `shipping_address`, `shipping_landmark`, `shipping_state`, `shipping_city`, `shipping_pin`, `shipping_country`, `gst_number`, `gst_file`, `credit_limit`, `credit_days`, `email_verified_at`, `is_verified`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Arpan', 'arpan@test.com', 9988000111, 9988000111, 'Kolkata', 'Kolkata', 'WB', 'Kolkata', 700001, 'India', 'Kolakta', 'Kolkata', 'WB', 'Kolkata', 700001, 'India', 'GSTIN5751232418', 'uploads/user/1653468114.gst-medvita.png', 100000, 30, NULL, 0, 1, NULL, '2022-05-25 03:11:54', '2022-05-25 03:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `distributors`
--

CREATE TABLE `distributors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_OCC_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2022-03-02 08:06:18', '2022-05-12 06:24:57'),
(3, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2022-03-10 06:14:28', '2022-05-12 06:24:57'),
(4, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1, '2022-03-10 06:15:05', '2022-05-12 06:24:57'),
(5, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, '2022-03-10 06:15:05', '2022-05-12 06:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/gallery/gallery.jpg', 1, '2022-03-16 14:09:31', '2022-05-12 06:24:57'),
(2, 'uploads/gallery/gallery2.jpg', 1, '2022-03-16 14:09:31', '2022-05-12 06:24:57'),
(3, 'uploads/gallery/gallery3.webp', 1, '2022-03-16 14:10:06', '2022-05-12 06:24:57'),
(4, 'uploads/gallery/gallery4.jpg', 1, '2022-03-16 14:10:06', '2022-05-12 06:24:57'),
(5, 'uploads/gallery/gallery5.png', 1, '2022-03-16 14:10:19', '2022-05-12 06:24:57'),
(6, 'uploads/gallery/gallery6.jpg', 1, '2022-03-16 14:10:19', '2022-05-12 06:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `mail_logs`
--

CREATE TABLE `mail_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blade_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_logs`
--

INSERT INTO `mail_logs` (`id`, `from`, `to`, `subject`, `blade_file`, `payload`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"1212\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 10:31:35', '2022-05-12 06:24:57'),
(2, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"123456\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 10:38:49', '2022-05-12 06:24:57'),
(6, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"1111\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 11:41:41', '2022-05-12 06:24:57'),
(7, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"1111\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 11:45:02', '2022-05-12 06:24:57'),
(8, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"1111\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 11:55:07', '2022-05-12 06:24:57'),
(9, 'onenesstechsolution@gmail.com', 'arpanc314@gmail.com', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"arpanc314@gmail.com\",\"password\":\"4444\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 11:56:33', '2022-05-12 06:24:57'),
(10, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"1111\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 12:04:35', '2022-05-12 06:24:57'),
(11, 'onenesstechsolution@gmail.com', 'suvajit.oneness@gmail.com', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.oneness@gmail.com\",\"password\":\"123456\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 12:11:34', '2022-05-12 06:24:57'),
(12, 'onenesstechsolution@gmail.com', 'suvajit.oneness@gmail.com', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.oneness@gmail.com\",\"password\":\"1111\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 12:14:04', '2022-05-12 06:24:57'),
(13, 'onenesstechsolution@gmail.com', 'suvajit.oneness@gmail.com', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.oneness@gmail.com\",\"password\":\"sdfsdfsdfd\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 12:33:10', '2022-05-12 06:24:57'),
(14, 'onenesstechsolution@gmail.com', 'mail@Mail.com', 'Onn - New registration', 'front/mail/register', '{\"name\":\"suvajit bardhan\",\"subject\":\"Onn - New registration\",\"email\":\"mail@Mail.com\",\"password\":\"123456\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 13:44:53', '2022-05-12 06:24:57'),
(15, 'onenesstechsolution@gmail.com', 'test@test2.com', 'Onn - New registration', 'front/mail/register', '{\"name\":\"suvajit bardhan\",\"subject\":\"Onn - New registration\",\"email\":\"test@test2.com\",\"password\":\"test@test2.com\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-16 13:30:04', '2022-05-12 06:24:57'),
(16, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Suvajit Guha\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"orderNo\":\"ONN2086027772\",\"orderAmount\":6000,\"orderProducts\":[{\"order_id\":25,\"product_id\":7,\"product_name\":\"LOW SHOW SOCKS\",\"product_image\":\"http:\\/\\/localhost:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"low-show-socks\",\"product_variation_id\":null,\"price\":90,\"offer_price\":90,\"qty\":4},{\"order_id\":25,\"product_id\":125,\"product_name\":\"FULL SLEEVES V\\/NECK\",\"product_image\":\"http:\\/\\/localhost:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"full-sleeves-v-neck\",\"product_variation_id\":null,\"price\":610,\"offer_price\":610,\"qty\":7},{\"order_id\":25,\"product_id\":17,\"product_name\":\"FINE VEST\",\"product_image\":\"http:\\/\\/localhost:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"fine-vest-2\",\"product_variation_id\":null,\"price\":280,\"offer_price\":280,\"qty\":3},{\"order_id\":25,\"product_id\":38,\"product_name\":\"HALF SLEEVE R\\/ NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"half-sleeve-r-neck\",\"product_variation_id\":\"1\",\"price\":530,\"offer_price\":530,\"qty\":1}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-22 08:53:20', '2022-05-12 06:24:57'),
(17, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Suvajit Guha\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"orderNo\":\"ONN557402884\",\"orderAmount\":1060,\"orderProducts\":[{\"order_id\":26,\"product_id\":38,\"product_name\":\"HALF SLEEVE R\\/ NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"half-sleeve-r-neck\",\"product_variation_id\":\"7\",\"price\":530,\"offer_price\":530,\"qty\":2}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-22 09:04:28', '2022-05-12 06:24:57'),
(25, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Suvajit bardhan\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"orderNo\":\"ONN1687431651\",\"orderAmount\":1060,\"orderProducts\":[{\"order_id\":34,\"product_id\":38,\"product_name\":\"HALF SLEEVE R\\/ NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"half-sleeve-r-neck\",\"product_variation_id\":\"7\",\"price\":530,\"offer_price\":530,\"qty\":2}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-22 11:35:08', '2022-05-12 06:24:57'),
(26, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"Suvajit Bardhan\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"suvajit.bardhan@onenesstechs.in\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-22 11:38:58', '2022-05-12 06:24:57'),
(27, 'onenesstechsolution@gmail.com', 'suvajit.bardhan2@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"test user\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan2@onenesstechs.in\",\"password\":\"secret\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-23 07:50:31', '2022-05-12 06:24:57'),
(28, 'onenesstechsolution@gmail.com', 'suvajit.bardhan2@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"test user\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan2@onenesstechs.in\",\"password\":\"secret\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-23 07:52:25', '2022-05-12 06:24:57'),
(29, 'onenesstechsolution@gmail.com', 'suvajit.bardhan2@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"test user\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan2@onenesstechs.in\",\"password\":\"secret\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-23 07:55:11', '2022-05-12 06:24:57'),
(30, 'onenesstechsolution@gmail.com', 'suvajit.bardhan2@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"test user\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan2@onenesstechs.in\",\"orderNo\":\"ONN1568407002\",\"orderAmount\":5529,\"orderProducts\":[{\"order_id\":35,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":null,\"price\":399,\"offer_price\":399,\"qty\":3},{\"order_id\":35,\"product_id\":79,\"product_name\":\"FASHION BRIEF O\\/E\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\262\\\\ONN-Grande-262-1.jpg\",\"product_slug\":\"fashion-brief-o-e\",\"product_variation_id\":null,\"price\":175,\"offer_price\":175,\"qty\":5},{\"order_id\":35,\"product_id\":32,\"product_name\":\"PRINTED SWEATSHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/product_images\\/1021\\/1021-1.jpg\",\"product_slug\":\"printed-sweatshirt\",\"product_variation_id\":null,\"price\":799,\"offer_price\":799,\"qty\":3},{\"order_id\":35,\"product_id\":38,\"product_name\":\"HALF SLEEVE R\\/ NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"half-sleeve-r-neck\",\"product_variation_id\":\"3\",\"price\":530,\"offer_price\":530,\"qty\":2}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-23 08:39:59', '2022-05-12 06:24:57'),
(31, 'onenesstechsolution@gmail.com', 'suvajit.bardhan2@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"test user\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan2@onenesstechs.in\",\"orderNo\":\"ONN1986548744\",\"orderAmount\":4400,\"orderProducts\":[{\"order_id\":36,\"product_id\":125,\"product_name\":\"FULL SLEEVES V\\/NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"full-sleeves-v-neck\",\"product_variation_id\":null,\"price\":610,\"offer_price\":610,\"qty\":2},{\"order_id\":36,\"product_id\":38,\"product_name\":\"HALF SLEEVE R\\/ NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"half-sleeve-r-neck\",\"product_variation_id\":\"5\",\"price\":530,\"offer_price\":530,\"qty\":4},{\"order_id\":36,\"product_id\":38,\"product_name\":\"HALF SLEEVE R\\/ NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"half-sleeve-r-neck\",\"product_variation_id\":\"6\",\"price\":530,\"offer_price\":530,\"qty\":2}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-23 14:43:27', '2022-05-12 06:24:57'),
(32, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Suvajit Bardhan\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"orderNo\":\"ONN1731083780\",\"orderAmount\":1622,\"orderProducts\":[{\"order_id\":37,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"17\",\"price\":399,\"offer_price\":399,\"qty\":3},{\"order_id\":37,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"24\",\"price\":425,\"offer_price\":425,\"qty\":1}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-24 13:53:14', '2022-05-12 06:24:57'),
(33, 'onenesstechsolution@gmail.com', 'bardhan@user.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Suvajit Bardhan\",\"subject\":\"Onn - New order\",\"email\":\"bardhan@user.com\",\"orderNo\":\"ONN2126371347\",\"orderAmount\":3669,\"orderProducts\":[{\"order_id\":38,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":38,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":38,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":5}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-24 14:05:40', '2022-05-12 06:24:57'),
(34, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Suvajit Bardhan\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"orderNo\":\"ONN272894762\",\"orderAmount\":3669,\"orderProducts\":[{\"order_id\":39,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":39,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":39,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":5}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 05:52:51', '2022-05-12 06:24:57'),
(35, 'onenesstechsolution@gmail.com', 'your.email+fakedata44065@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Sarla Varrier\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata44065@gmail.com\",\"orderNo\":\"ONN1097170116\",\"orderAmount\":3669,\"orderProducts\":[{\"order_id\":40,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":40,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":40,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":5}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 06:23:15', '2022-05-12 06:24:57'),
(36, 'onenesstechsolution@gmail.com', 'your.email+fakedata34742@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Atreyi Nehru\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata34742@gmail.com\",\"orderNo\":\"ONN1495017718\",\"orderAmount\":3669,\"orderProducts\":[{\"order_id\":41,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":41,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":41,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":5}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 06:24:32', '2022-05-12 06:24:57'),
(37, 'onenesstechsolution@gmail.com', 'your.email+fakedata23545@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Rukmin Varman\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata23545@gmail.com\",\"orderNo\":\"ONN1929079053\",\"orderAmount\":2871,\"orderProducts\":[{\"order_id\":42,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":42,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":42,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":3}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 07:15:50', '2022-05-12 06:24:57'),
(38, 'onenesstechsolution@gmail.com', 'your.email+fakedata16501@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Kalyani Mahajan\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata16501@gmail.com\",\"orderNo\":\"ONN904550126\",\"orderAmount\":2871,\"orderProducts\":[{\"order_id\":43,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":43,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":43,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":3}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 07:20:08', '2022-05-12 06:24:57'),
(39, 'onenesstechsolution@gmail.com', 'your.email+fakedata31683@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Aatreya Bharadwaj\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata31683@gmail.com\",\"orderNo\":\"ONN549247929\",\"orderAmount\":2871,\"orderProducts\":[{\"order_id\":44,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":44,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":44,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":3}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 07:20:33', '2022-05-12 06:24:57'),
(40, 'onenesstechsolution@gmail.com', 'your.email+fakedata45947@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Jai Pilla\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata45947@gmail.com\",\"orderNo\":\"ONN1716375495\",\"orderAmount\":2871,\"orderProducts\":[{\"order_id\":45,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":45,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":45,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":3}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 07:49:35', '2022-05-12 06:24:57'),
(41, 'onenesstechsolution@gmail.com', 'your.email+fakedata94337@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Deenabandhu Bhattathiri\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata94337@gmail.com\",\"orderNo\":\"ONN111264837\",\"orderAmount\":2871,\"orderProducts\":[{\"order_id\":46,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":46,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":46,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":3}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 07:50:17', '2022-05-12 06:24:57'),
(42, 'onenesstechsolution@gmail.com', 'your.email+fakedata75409@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Dhatri Dwivedi\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata75409@gmail.com\",\"orderNo\":\"ONN280091922\",\"orderAmount\":2871,\"orderProducts\":[{\"order_id\":47,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":47,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":47,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":3}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 07:51:03', '2022-05-12 06:24:57');

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
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2022_02_28_100529_create_categories_table', 1),
(18, '2022_03_01_060945_create_admins_table', 1),
(19, '2022_03_01_113157_create_sub_categories_table', 1),
(20, '2022_03_01_113259_create_collections_table', 1),
(21, '2022_03_01_131758_create_coupons_table', 1),
(24, '2022_03_02_075005_create_products_table', 2),
(25, '2022_03_02_120938_create_addresses_table', 3),
(26, '2022_03_02_132406_create_faqs_table', 4),
(27, '2022_03_02_134321_create_settings_table', 5),
(28, '2022_03_02_140807_create_product_images_table', 6),
(49, '2022_03_03_084615_create_product_colors_table', 7),
(50, '2022_03_03_084729_create_product_color_sizes_table', 7),
(51, '2022_03_03_085246_create_colors_table', 7),
(52, '2022_03_03_112136_create_sizes_table', 7),
(53, '2022_03_04_080922_create_orders_table', 8),
(54, '2022_03_04_080937_create_transactions_table', 8),
(55, '2022_03_04_081901_create_order_products_table', 8),
(56, '2022_03_04_082329_create_carts_table', 8),
(58, '2022_03_07_151020_add_banner_image_to_categories_table', 9),
(59, '2022_03_07_163254_add_banner_image_to_collections_table', 10),
(60, '2022_03_08_114708_add_column_to_carts_table', 11),
(66, '2022_03_08_154736_add_columns_to_orders_table', 12),
(67, '2022_03_09_121714_add_columns_to_addresses_table', 13),
(69, '2022_03_09_173649_create_subscription_mails_table', 14),
(70, '2022_03_10_124914_add_columns_to_categories_and_collections_table', 15),
(72, '2022_03_11_152029_create_mail_logs_table', 16),
(74, '2022_03_16_115151_add_new_columns_to_categories_and_collections_table', 17),
(75, '2022_03_16_193141_create_galleries_table', 18),
(76, '2022_03_16_193356_create_wishlists_table', 18),
(77, '2022_03_17_114435_add_new_column_to_galleries_table', 19),
(79, '2022_03_21_171424_add_columns_to_products_table', 20),
(82, '2022_03_22_165852_add_new_column_to_transactions_table', 21),
(83, '2022_03_23_181303_add_new_column_to_carts_table', 22),
(84, '2022_03_24_121204_add_more_columns_to_categories_and_collections_table', 23),
(85, '2022_03_24_195535_create_coupon_usages_table', 24),
(86, '2022_03_31_145730_add_column_to_products_table', 25),
(87, '2022_03_07_065136_create_table_offers', 26),
(94, '2022_05_25_062356_create_suppliers_table', 27),
(95, '2022_05_25_062344_create_customers_table', 28),
(97, '2022_05_25_105311_create_staff_post_details_table', 29);

-- --------------------------------------------------------

--
-- Table structure for table `no_order_reasons`
--

CREATE TABLE `no_order_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `noorderreason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `no_order_reasons`
--

INSERT INTO `no_order_reasons` (`id`, `noorderreason`, `created_at`, `updated_at`) VALUES
(1, 'Product related issue', '2022-04-26 18:08:43', '2022-05-12 06:24:57'),
(2, 'Product related issue', '2022-04-26 18:08:43', '2022-05-12 06:24:57'),
(3, 'Distributor related issue', '2022-04-26 18:08:43', '2022-05-12 06:24:57'),
(4, 'Competitor related issue', '2022-04-26 18:08:43', '2022-05-12 06:24:57'),
(5, 'Company related issue', '2022-04-26 18:08:43', '2022-05-12 06:24:57'),
(6, 'Shop related issue', '2022-04-26 18:08:43', '2022-05-12 06:24:57'),
(7, 'More Factor', '2022-04-26 18:08:43', '2022-05-12 06:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_current` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `store_id` bigint(20) DEFAULT NULL,
  `fname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_id` bigint(20) NOT NULL DEFAULT 0,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippingSameAsBilling` tinyint(4) NOT NULL DEFAULT 0,
  `shipping_address_id` bigint(20) NOT NULL DEFAULT 0,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `shipping_charges` double(10,2) DEFAULT 0.00,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'standard',
  `tax_amount` double(10,2) DEFAULT 0.00,
  `discount_amount` double(10,2) DEFAULT 0.00,
  `coupon_code_id` bigint(20) DEFAULT 0,
  `final_amount` double(10,2) DEFAULT 0.00,
  `gst_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'cash_on_delivery',
  `is_paid` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1: paid, 0: not paid',
  `txn_id` bigint(20) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: new, 2: confirmed, 3: shipped, 4: delivered, 5: cancelled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_variation_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `offer_price` double(10,2) NOT NULL DEFAULT 0.00,
  `color` int(11) DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: new, 2: confirmed, 3: shipped, 4: delivered, 5: cancelled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('diptitrader@gmail.com', 'baIln4TDv8yNSceJK6ASng2Pd2qij7e78YJU0rVczvyzAjHc8sqgLV9pD4f5gy45', '2022-04-26 06:32:05'),
('diptitrader@gmail.com', 'z3nRp39pUcaaEwYEBvzQMM1RbXn8zbQ6lKE1GHTvGhYeAPncrHaTj1xXkmAR5VYg', '2022-04-26 06:32:56'),
('ravishankar20@gmail.com', 'aWE08aZwjCye6onVnPZsvpCOIrugCRJCXfFO1CDVsXRD2m0qYOtXrcrJB3Z09nYa', '2022-04-26 06:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) NOT NULL,
  `sub_cat_id` bigint(20) NOT NULL,
  `collection_id` bigint(20) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_price` double(10,2) NOT NULL,
  `sell_price` double(10,2) NOT NULL,
  `size_chart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pack` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `master_pack` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `last_view_count_updated_at` timestamp NULL DEFAULT NULL,
  `is_trending` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1: yes, 0:no',
  `is_best_seller` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1: yes, 0:no',
  `unit_value` int(11) NOT NULL,
  `unit_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `sub_cat_id`, `collection_id`, `store_id`, `name`, `image`, `short_desc`, `desc`, `cost_price`, `sell_price`, `size_chart`, `pack`, `master_pack`, `slug`, `meta_title`, `meta_desc`, `meta_keyword`, `view_count`, `last_view_count_updated_at`, `is_trending`, `is_best_seller`, `unit_value`, `unit_type`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 1, NULL, NULL, 'Agni Super Cut Off Wheel', 'uploads/product/1653395020.img2.jpg', '<h2><a href=\"https://www.indiamart.com/proddetail/agni-super-cut-off-wheel-20921936433.html\">Agni Super Cut Off Wheel</a></h2>', '<h2><a href=\"https://www.indiamart.com/proddetail/agni-super-cut-off-wheel-20921936433.html\">Agni Super Cut Off Wheel</a></h2>', 250.00, 350.00, NULL, NULL, NULL, 'agni-super-cut-off-wheel', NULL, NULL, NULL, 0, NULL, 0, 0, 100, 'litres', 1, '2022-05-24 06:53:40', '2022-05-24 06:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `color_id` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_color_sizes`
--

CREATE TABLE `product_color_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `color` bigint(20) NOT NULL,
  `size` bigint(20) NOT NULL,
  `assorted_flag` tinyint(4) NOT NULL DEFAULT 0,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `offer_price` double(10,2) NOT NULL DEFAULT 0.00,
  `stock` int(11) NOT NULL DEFAULT 1,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_color_sizes`
--

INSERT INTO `product_color_sizes` (`id`, `product_id`, `color`, `size`, `assorted_flag`, `price`, `offer_price`, `stock`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 38, 11, 1, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2, 38, 11, 2, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(3, 38, 11, 3, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(4, 38, 11, 4, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(5, 38, 11, 5, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(6, 38, 11, 6, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-07 07:09:28', '2022-05-12 06:24:57'),
(7, 38, 11, 7, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-07 07:09:28', '2022-05-12 06:24:57'),
(9, 39, 12, 1, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-07 07:09:28', '2022-05-12 06:24:57'),
(10, 39, 12, 2, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-07 07:09:28', '2022-05-12 06:24:57'),
(11, 39, 12, 3, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-07 07:09:28', '2022-05-12 06:24:57'),
(12, 39, 12, 4, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-21 03:30:33', '2022-05-12 06:24:57'),
(13, 39, 12, 5, 0, 540.00, 540.00, 1, NULL, 1, '2022-03-21 03:31:16', '2022-05-12 06:24:57'),
(14, 39, 12, 6, 0, 540.00, 540.00, 1, NULL, 1, '2022-03-21 03:31:16', '2022-05-12 06:24:57'),
(15, 39, 12, 7, 0, 540.00, 540.00, 1, NULL, 1, '2022-03-21 03:31:16', '2022-05-12 06:24:57'),
(17, 13, 12, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(18, 13, 12, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(19, 13, 12, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(20, 13, 12, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(21, 13, 12, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(22, 13, 12, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(23, 13, 12, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(24, 13, 12, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(25, 13, 1, 0, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(26, 13, 1, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(27, 13, 1, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(28, 13, 1, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(29, 13, 1, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(30, 13, 1, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(31, 13, 1, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(32, 13, 1, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(33, 13, 13, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(34, 13, 13, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(35, 13, 13, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(36, 13, 13, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(37, 13, 13, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(38, 13, 13, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(39, 13, 13, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(40, 13, 13, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(41, 13, 14, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(42, 13, 14, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(43, 13, 14, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(44, 13, 14, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(45, 13, 14, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(46, 13, 14, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(47, 13, 14, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(48, 13, 14, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(49, 13, 15, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(50, 13, 15, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(51, 13, 15, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(52, 13, 15, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(53, 13, 15, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(54, 13, 15, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(55, 13, 15, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(56, 13, 15, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(57, 13, 16, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(58, 13, 16, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(59, 13, 16, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(60, 13, 16, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(61, 13, 16, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(62, 13, 16, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(63, 13, 16, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(64, 13, 16, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(65, 13, 17, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(66, 13, 17, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(67, 13, 17, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(68, 13, 17, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(69, 13, 17, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(70, 13, 17, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(71, 13, 17, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(72, 13, 17, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(73, 13, 11, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(74, 13, 11, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(75, 13, 11, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(76, 13, 11, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(77, 13, 11, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(78, 13, 11, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(79, 13, 11, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(80, 13, 11, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(81, 13, 9, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(82, 13, 9, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(83, 13, 9, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(84, 13, 9, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(85, 13, 9, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(86, 13, 9, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(87, 13, 9, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(88, 13, 9, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(89, 13, 5, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(90, 13, 5, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(91, 13, 5, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(92, 13, 5, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(93, 13, 5, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(94, 13, 5, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(95, 13, 5, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(96, 13, 5, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(97, 13, 18, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(98, 13, 18, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(99, 13, 18, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(100, 13, 18, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(101, 13, 18, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(102, 13, 18, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(103, 13, 18, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(104, 13, 18, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(105, 13, 19, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(106, 13, 19, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(107, 13, 19, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(108, 13, 19, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(109, 13, 19, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(110, 13, 19, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(111, 13, 19, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(112, 13, 19, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(113, 13, 20, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(114, 13, 20, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(115, 13, 20, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(116, 13, 20, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(117, 13, 20, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(118, 13, 20, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(119, 13, 20, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(120, 13, 20, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(121, 13, 21, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(122, 13, 21, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(123, 13, 21, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(124, 13, 21, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(125, 13, 21, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(126, 13, 21, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(127, 13, 21, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(128, 13, 21, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(129, 13, 22, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(130, 13, 22, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(131, 13, 22, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(132, 13, 22, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(133, 13, 22, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(134, 13, 22, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(135, 13, 22, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(136, 13, 22, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(137, 13, 23, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(138, 13, 23, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(139, 13, 23, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(140, 13, 23, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(141, 13, 23, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(142, 13, 23, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(143, 13, 23, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(144, 13, 23, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(145, 13, 24, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(146, 13, 24, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(147, 13, 24, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(148, 13, 24, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(149, 13, 24, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(150, 13, 24, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(151, 13, 24, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(152, 13, 24, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(153, 13, 25, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(154, 13, 25, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(155, 13, 25, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(156, 13, 25, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(157, 13, 25, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(158, 13, 25, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(159, 13, 25, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(160, 13, 25, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(161, 13, 26, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(162, 13, 26, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(163, 13, 26, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(164, 13, 26, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(165, 13, 26, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(166, 13, 26, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(167, 13, 26, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(168, 13, 26, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(169, 13, 27, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(170, 13, 27, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(171, 13, 27, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(172, 13, 27, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(173, 13, 27, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(174, 13, 27, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(175, 13, 27, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(176, 13, 27, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(177, 12, 12, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(178, 12, 12, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(179, 12, 12, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(180, 12, 12, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(181, 12, 12, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(182, 12, 12, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(183, 12, 12, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(184, 12, 12, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(185, 12, 1, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(186, 12, 1, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(187, 12, 1, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(188, 12, 1, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(189, 12, 1, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(190, 12, 1, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(191, 12, 1, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(192, 12, 1, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(193, 12, 13, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(194, 12, 13, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(195, 12, 13, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(196, 12, 13, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(197, 12, 13, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(198, 12, 13, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(199, 12, 13, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(200, 12, 13, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(201, 12, 16, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(202, 12, 16, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(203, 12, 16, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(204, 12, 16, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(205, 12, 16, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(206, 12, 16, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(207, 12, 16, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(208, 12, 16, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(209, 12, 17, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(210, 12, 17, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(211, 12, 17, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(212, 12, 17, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(213, 12, 17, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(214, 12, 17, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(215, 12, 17, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(216, 12, 17, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(217, 12, 11, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(218, 12, 11, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(219, 12, 11, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(220, 12, 11, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(221, 12, 11, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(222, 12, 11, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(223, 12, 11, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(224, 12, 11, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(225, 12, 18, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(226, 12, 18, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(227, 12, 18, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(228, 12, 18, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(229, 12, 18, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(230, 12, 18, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(231, 12, 18, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(232, 12, 18, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(233, 12, 19, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(234, 12, 19, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(235, 12, 19, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(236, 12, 19, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(237, 12, 19, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(238, 12, 19, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(239, 12, 19, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(240, 12, 19, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(241, 14, 11, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(242, 14, 11, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(243, 14, 11, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(244, 14, 11, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(245, 14, 11, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(246, 14, 11, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(247, 14, 11, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(248, 14, 11, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(249, 14, 13, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(250, 14, 13, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(251, 14, 13, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(252, 14, 13, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(253, 14, 13, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(254, 14, 13, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(255, 14, 13, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(256, 14, 13, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(257, 14, 12, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(258, 14, 12, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(259, 14, 12, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(260, 14, 12, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(261, 14, 12, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(262, 14, 12, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(263, 14, 12, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(264, 14, 12, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(265, 14, 1, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(266, 14, 1, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(267, 14, 1, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(268, 14, 1, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(269, 14, 1, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(270, 14, 1, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(271, 14, 1, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(272, 14, 1, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(273, 15, 24, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(274, 15, 24, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(275, 15, 24, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(276, 15, 24, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(277, 15, 24, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(278, 15, 24, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(279, 15, 24, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(280, 15, 24, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(281, 15, 11, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(282, 15, 11, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(283, 15, 11, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(284, 15, 11, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(285, 15, 11, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(286, 15, 11, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(287, 15, 11, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(288, 15, 11, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(289, 15, 28, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(290, 15, 28, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(291, 15, 28, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(292, 15, 28, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(293, 15, 28, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(294, 15, 28, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(295, 15, 28, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(296, 15, 28, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(297, 15, 29, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(298, 15, 29, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(299, 15, 29, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(300, 15, 29, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(301, 15, 29, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(302, 15, 29, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(303, 15, 29, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(304, 15, 29, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(305, 15, 19, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(306, 15, 19, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(307, 15, 19, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(308, 15, 19, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(309, 15, 19, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(310, 15, 19, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(311, 15, 19, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(312, 15, 19, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(313, 15, 30, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(314, 15, 30, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(315, 15, 30, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(316, 15, 30, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(317, 15, 30, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(318, 15, 30, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(319, 15, 30, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(320, 15, 30, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(321, 15, 17, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(322, 15, 17, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(323, 15, 17, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(324, 15, 17, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(325, 15, 17, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(326, 15, 17, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(327, 15, 17, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(328, 15, 17, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(329, 15, 25, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(330, 15, 25, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(331, 15, 25, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(332, 15, 25, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(333, 15, 25, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(334, 15, 25, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(335, 15, 25, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(336, 15, 25, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(337, 15, 13, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(338, 15, 13, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(339, 15, 13, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(340, 15, 13, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(341, 15, 13, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(342, 15, 13, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(343, 15, 13, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(344, 15, 13, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(345, 15, 4, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(346, 15, 4, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(347, 15, 4, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(348, 15, 4, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(349, 15, 4, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(350, 15, 4, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(351, 15, 4, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(352, 15, 4, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(353, 15, 31, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(354, 15, 31, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(355, 15, 31, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(356, 15, 31, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(357, 15, 31, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(358, 15, 31, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(359, 15, 31, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(360, 15, 31, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(361, 15, 26, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(362, 15, 26, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(363, 15, 26, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(364, 15, 26, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(365, 15, 26, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(366, 15, 26, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(367, 15, 26, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(368, 15, 26, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(369, 15, 9, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(370, 15, 9, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(371, 15, 9, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(372, 15, 9, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(373, 15, 9, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(374, 15, 9, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(375, 15, 9, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(376, 15, 9, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(377, 15, 1, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(378, 15, 1, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(379, 15, 1, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(380, 15, 1, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(381, 15, 1, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(382, 15, 1, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(383, 15, 1, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(384, 15, 1, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(385, 15, 12, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(386, 15, 12, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(387, 15, 12, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(388, 15, 12, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(389, 15, 12, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(390, 15, 12, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(391, 15, 12, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(392, 15, 12, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(393, 15, 32, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(394, 15, 32, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(395, 15, 32, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(396, 15, 32, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(397, 15, 32, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(398, 15, 32, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(399, 15, 32, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(400, 15, 32, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(401, 15, 33, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(402, 15, 33, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(403, 15, 33, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(404, 15, 33, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(405, 15, 33, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(406, 15, 33, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(407, 15, 33, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(408, 15, 33, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(409, 15, 34, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(410, 15, 34, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(411, 15, 34, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(412, 15, 34, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(413, 15, 34, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(414, 15, 34, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(415, 15, 34, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(416, 15, 34, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(417, 15, 35, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(418, 15, 35, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(419, 15, 35, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(420, 15, 35, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(421, 15, 35, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(422, 15, 35, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(423, 15, 35, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(424, 15, 35, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(425, 15, 36, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(426, 15, 36, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(427, 15, 36, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(428, 15, 36, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(429, 15, 36, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(430, 15, 36, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(431, 15, 36, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(432, 15, 36, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(433, 15, 37, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(434, 15, 37, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(435, 15, 37, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(436, 15, 37, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(437, 15, 37, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(438, 15, 37, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(439, 15, 37, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(440, 15, 37, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(441, 15, 38, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(442, 15, 38, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(443, 15, 38, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(444, 15, 38, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(445, 15, 38, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(446, 15, 38, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(447, 15, 38, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(448, 15, 38, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(449, 15, 15, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(450, 15, 15, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(451, 15, 15, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(452, 15, 15, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(453, 15, 15, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(454, 15, 15, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(455, 15, 15, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(456, 15, 15, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(457, 15, 39, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(458, 15, 39, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(459, 15, 39, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(460, 15, 39, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(461, 15, 39, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(462, 15, 39, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(463, 15, 39, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(464, 15, 39, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(465, 15, 40, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(466, 15, 40, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(467, 15, 40, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(468, 15, 40, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(469, 15, 40, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(470, 15, 40, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(471, 15, 40, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(472, 15, 40, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(473, 15, 41, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(474, 15, 41, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(475, 15, 41, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(476, 15, 41, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(477, 15, 41, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(478, 15, 41, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(479, 15, 41, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(480, 15, 41, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(481, 15, 42, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(482, 15, 42, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(483, 15, 42, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(484, 15, 42, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(485, 15, 42, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(486, 15, 42, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(487, 15, 42, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(488, 15, 42, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(489, 15, 22, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(490, 15, 22, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(491, 15, 22, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(492, 15, 22, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(493, 15, 22, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(494, 15, 22, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(495, 15, 22, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(496, 15, 22, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(497, 15, 43, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(498, 15, 43, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(499, 15, 43, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(500, 15, 43, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(501, 15, 43, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(502, 15, 43, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(503, 15, 43, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(504, 15, 43, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(505, 15, 44, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(506, 15, 44, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(507, 15, 44, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(508, 15, 44, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(509, 15, 44, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(510, 15, 44, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(511, 15, 44, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(512, 15, 44, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(513, 15, 45, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(514, 15, 45, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(515, 15, 45, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(516, 15, 45, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(517, 15, 45, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(518, 15, 45, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(519, 15, 45, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(520, 15, 45, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(521, 15, 46, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(522, 15, 46, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(523, 15, 46, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(524, 15, 46, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(525, 15, 46, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(526, 15, 46, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(527, 15, 46, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(528, 15, 46, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(529, 15, 47, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(530, 15, 47, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(531, 15, 47, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(532, 15, 47, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(533, 15, 47, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(534, 15, 47, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(535, 15, 47, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(536, 15, 47, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(537, 15, 48, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(538, 15, 48, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(539, 15, 48, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57');
INSERT INTO `product_color_sizes` (`id`, `product_id`, `color`, `size`, `assorted_flag`, `price`, `offer_price`, `stock`, `code`, `status`, `created_at`, `updated_at`) VALUES
(540, 15, 48, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(541, 15, 48, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(542, 15, 48, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(543, 15, 48, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(544, 15, 48, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(545, 54, 49, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(546, 54, 49, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(547, 54, 49, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(548, 54, 49, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(549, 54, 49, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(550, 54, 49, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(551, 54, 49, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(552, 54, 49, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(553, 54, 50, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(554, 54, 50, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(555, 54, 50, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(556, 54, 50, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(557, 54, 50, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(558, 54, 50, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(559, 54, 50, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(560, 54, 50, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(561, 54, 51, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(562, 54, 51, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(563, 54, 51, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(564, 54, 51, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(565, 54, 51, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(566, 54, 51, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(567, 54, 51, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(568, 54, 51, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(569, 54, 52, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(570, 54, 52, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(571, 54, 52, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(572, 54, 52, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(573, 54, 52, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(574, 54, 52, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(575, 54, 52, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(576, 54, 52, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(577, 54, 53, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(578, 54, 53, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(579, 54, 53, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(580, 54, 53, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(581, 54, 53, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(582, 54, 53, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(583, 54, 53, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(584, 54, 53, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(585, 54, 54, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(586, 54, 54, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(587, 54, 54, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(588, 54, 54, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(589, 54, 54, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(590, 54, 54, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(591, 54, 54, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(592, 54, 54, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(593, 54, 55, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(594, 54, 55, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(595, 54, 55, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(596, 54, 55, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(597, 54, 55, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(598, 54, 55, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(599, 54, 55, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(600, 54, 55, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(601, 54, 56, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(602, 54, 56, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(603, 54, 56, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(604, 54, 56, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(605, 54, 56, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(606, 54, 56, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(607, 54, 56, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(608, 54, 56, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(609, 55, 11, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(610, 55, 11, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(611, 55, 11, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(612, 55, 11, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(613, 55, 11, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(614, 55, 11, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(615, 55, 11, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(616, 55, 11, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(617, 55, 13, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(618, 55, 13, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(619, 55, 13, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(620, 55, 13, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(621, 55, 13, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(622, 55, 13, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(623, 55, 13, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(624, 55, 13, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(625, 55, 17, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(626, 55, 17, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(627, 55, 17, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(628, 55, 17, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(629, 55, 17, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(630, 55, 17, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(631, 55, 17, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(632, 55, 17, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(633, 55, 27, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(634, 55, 27, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(635, 55, 27, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(636, 55, 27, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(637, 55, 27, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(638, 55, 27, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(639, 55, 27, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(640, 55, 27, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(641, 55, 9, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(642, 55, 9, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(643, 55, 9, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(644, 55, 9, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(645, 55, 9, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(646, 55, 9, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(647, 55, 9, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(648, 55, 9, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(649, 55, 12, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(650, 55, 12, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(651, 55, 12, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(652, 55, 12, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(653, 55, 12, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(654, 55, 12, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(655, 55, 12, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(656, 55, 12, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(657, 55, 18, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(658, 55, 18, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(659, 55, 18, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(660, 55, 18, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(661, 55, 18, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(662, 55, 18, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(663, 55, 18, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(664, 55, 18, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(665, 55, 1, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(666, 55, 1, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(667, 55, 1, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(668, 55, 1, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(669, 55, 1, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(670, 55, 1, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(671, 55, 1, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(672, 55, 1, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(673, 57, 1, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(674, 57, 1, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(675, 57, 1, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(676, 57, 1, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(677, 57, 1, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(678, 57, 30, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(679, 57, 30, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(680, 57, 30, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(681, 57, 30, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(682, 57, 30, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(683, 57, 13, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(684, 57, 13, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(685, 57, 13, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(686, 57, 13, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(687, 57, 13, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(688, 57, 10, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(689, 57, 10, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(690, 57, 10, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(691, 57, 10, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(692, 57, 10, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(693, 57, 26, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(694, 57, 26, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(695, 57, 26, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(696, 57, 26, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(697, 57, 26, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(698, 57, 11, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(699, 57, 11, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(700, 57, 11, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(701, 57, 11, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(702, 57, 11, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(703, 57, 43, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(704, 57, 43, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(705, 57, 43, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(706, 57, 43, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(707, 57, 43, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(708, 57, 12, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(709, 57, 12, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(710, 57, 12, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(711, 57, 12, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(712, 57, 12, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(713, 59, 30, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(714, 59, 30, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(715, 59, 30, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(716, 59, 30, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(717, 59, 30, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(718, 59, 30, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(719, 59, 30, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(720, 59, 30, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(721, 59, 30, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(722, 59, 30, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(723, 59, 30, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(724, 59, 30, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(725, 59, 1, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(726, 59, 1, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(727, 59, 1, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(728, 59, 1, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(729, 59, 1, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(730, 59, 1, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(731, 59, 1, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(732, 59, 1, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(733, 59, 1, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(734, 59, 1, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(735, 59, 1, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(736, 59, 1, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(737, 59, 24, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(738, 59, 24, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(739, 59, 24, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(740, 59, 24, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(741, 59, 24, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(742, 59, 24, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(743, 59, 24, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(744, 59, 24, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(745, 59, 24, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(746, 59, 24, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(747, 59, 24, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(748, 59, 24, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(749, 59, 16, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(750, 59, 16, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(751, 59, 16, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(752, 59, 16, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(753, 59, 16, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(754, 59, 16, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(755, 59, 16, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(756, 59, 16, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(757, 59, 16, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(758, 59, 16, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(759, 59, 16, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(760, 59, 16, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(761, 59, 17, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(762, 59, 17, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(763, 59, 17, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(764, 59, 17, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(765, 59, 17, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(766, 59, 17, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(767, 59, 17, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(768, 59, 17, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(769, 59, 17, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(770, 59, 17, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(771, 59, 17, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(772, 59, 17, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(773, 59, 5, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(774, 59, 5, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(775, 59, 5, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(776, 59, 5, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(777, 59, 5, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(778, 59, 5, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(779, 59, 5, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(780, 59, 5, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(781, 59, 5, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(782, 59, 5, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(783, 59, 5, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(784, 59, 5, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(785, 59, 11, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(786, 59, 11, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(787, 59, 11, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(788, 59, 11, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(789, 59, 11, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(790, 59, 11, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(791, 59, 11, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(792, 59, 11, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(793, 59, 11, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(794, 59, 11, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(795, 59, 11, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(796, 59, 11, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(797, 59, 12, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(798, 59, 12, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(799, 59, 12, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(800, 59, 12, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(801, 59, 12, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(802, 59, 12, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(803, 59, 12, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(804, 59, 12, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(805, 59, 12, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(806, 59, 12, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(807, 59, 12, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(808, 59, 12, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(809, 59, 13, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(810, 59, 13, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(811, 59, 13, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(812, 59, 13, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(813, 59, 13, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(814, 59, 13, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(815, 59, 13, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(816, 59, 13, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(817, 59, 13, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(818, 59, 13, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(819, 59, 13, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(820, 59, 13, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(821, 60, 11, 11, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(822, 60, 11, 12, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(823, 60, 11, 13, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(824, 60, 11, 14, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(825, 60, 11, 15, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(826, 60, 11, 16, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(827, 60, 11, 17, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(828, 60, 11, 18, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(829, 60, 11, 19, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(830, 60, 11, 20, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(831, 60, 11, 21, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(832, 60, 11, 22, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(833, 60, 13, 11, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(834, 60, 13, 12, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(835, 60, 13, 13, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(836, 60, 13, 14, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(837, 60, 13, 15, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(838, 60, 13, 16, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(839, 60, 13, 17, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(840, 60, 13, 18, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(841, 60, 13, 19, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(842, 60, 13, 20, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(843, 60, 13, 21, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(844, 60, 13, 22, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(845, 60, 27, 11, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(846, 60, 27, 12, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(847, 60, 27, 13, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(848, 60, 27, 14, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(849, 60, 27, 15, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(850, 60, 27, 16, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(851, 60, 27, 17, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(852, 60, 27, 18, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(853, 60, 27, 19, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(854, 60, 27, 20, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(855, 60, 27, 21, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(856, 60, 27, 22, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(857, 60, 18, 11, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(858, 60, 18, 12, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(859, 60, 18, 13, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(860, 60, 18, 14, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(861, 60, 18, 15, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(862, 60, 18, 16, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(863, 60, 18, 17, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(864, 60, 18, 18, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(865, 60, 18, 19, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(866, 60, 18, 20, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(867, 60, 18, 21, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(868, 60, 18, 22, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(869, 91, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(870, 91, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(871, 91, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(872, 91, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(873, 91, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(874, 91, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(875, 91, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(876, 91, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(877, 91, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(878, 91, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(879, 91, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(880, 91, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(881, 91, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(882, 91, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(883, 91, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(884, 92, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(885, 92, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(886, 92, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(887, 92, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(888, 92, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(889, 92, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(890, 92, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(891, 92, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(892, 92, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(893, 92, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(894, 92, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(895, 92, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(896, 92, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(897, 92, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(898, 92, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(899, 93, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(900, 93, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(901, 93, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(902, 93, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(903, 93, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(904, 93, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(905, 93, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(906, 93, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(907, 93, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(908, 93, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(909, 93, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(910, 93, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(911, 93, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(912, 93, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(913, 93, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(914, 94, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(915, 94, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(916, 94, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(917, 94, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(918, 94, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(919, 94, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(920, 94, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(921, 94, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(922, 94, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(923, 94, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(924, 94, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(925, 94, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(926, 94, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(927, 94, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(928, 94, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(929, 95, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(930, 95, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(931, 95, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(932, 95, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(933, 95, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(934, 95, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(935, 95, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(936, 95, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(937, 95, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(938, 95, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(939, 95, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(940, 95, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(941, 95, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(942, 95, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(943, 95, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(944, 96, 11, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(945, 96, 11, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(946, 96, 11, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(947, 96, 11, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(948, 96, 11, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(949, 96, 14, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(950, 96, 14, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(951, 96, 14, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(952, 96, 14, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(953, 96, 14, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(954, 96, 13, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(955, 96, 13, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(956, 96, 13, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(957, 96, 13, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(958, 96, 13, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(959, 96, 1, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(960, 96, 1, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(961, 96, 1, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(962, 96, 1, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(963, 96, 1, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(964, 97, 14, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(965, 97, 14, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(966, 97, 14, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(967, 97, 14, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(968, 97, 14, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(969, 97, 13, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(970, 97, 13, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(971, 97, 13, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(972, 97, 13, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(973, 97, 13, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(974, 97, 1, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(975, 97, 1, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(976, 97, 1, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(977, 97, 1, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(978, 97, 1, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(979, 98, 11, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(980, 98, 11, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(981, 98, 11, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(982, 98, 11, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(983, 98, 11, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(984, 98, 14, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(985, 98, 14, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(986, 98, 14, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(987, 98, 14, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(988, 98, 14, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(989, 98, 13, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(990, 98, 13, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(991, 98, 13, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(992, 98, 13, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(993, 98, 13, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(994, 99, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(995, 99, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(996, 99, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(997, 99, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(998, 99, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(999, 99, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1000, 99, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1001, 99, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1002, 99, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1003, 99, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1004, 99, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1005, 99, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1006, 99, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1007, 99, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1008, 99, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1009, 100, 11, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1010, 100, 11, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1011, 100, 11, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1012, 100, 11, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1013, 100, 11, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1014, 100, 14, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1015, 100, 14, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1016, 100, 14, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1017, 100, 14, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1018, 100, 14, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1019, 100, 13, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1020, 100, 13, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1021, 100, 13, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1022, 100, 13, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1023, 100, 13, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1024, 101, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1025, 101, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1026, 101, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1027, 101, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1028, 101, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1029, 101, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1030, 101, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1031, 101, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1032, 101, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1033, 101, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1034, 101, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1035, 101, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1036, 101, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1037, 101, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1038, 101, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1039, 101, 42, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1040, 101, 42, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1041, 101, 42, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1042, 101, 42, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1043, 101, 42, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1044, 101, 57, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1045, 101, 57, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1046, 101, 57, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1047, 101, 57, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1048, 101, 57, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1049, 102, 11, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1050, 102, 11, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1051, 102, 11, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1052, 102, 11, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1053, 102, 11, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1054, 102, 58, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1055, 102, 58, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1056, 102, 58, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1057, 102, 58, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1058, 102, 58, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1059, 102, 13, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1060, 102, 13, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1061, 102, 13, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1062, 102, 13, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1063, 102, 13, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1064, 103, 11, 2, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1065, 103, 11, 3, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1066, 103, 11, 4, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1067, 103, 11, 5, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1068, 103, 11, 6, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1069, 103, 13, 2, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1070, 103, 13, 3, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1071, 103, 13, 4, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1072, 103, 13, 5, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57');
INSERT INTO `product_color_sizes` (`id`, `product_id`, `color`, `size`, `assorted_flag`, `price`, `offer_price`, `stock`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1073, 103, 13, 6, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1074, 104, 11, 2, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1075, 104, 11, 3, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1076, 104, 11, 4, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1077, 104, 11, 5, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1078, 104, 11, 6, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1079, 104, 58, 2, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1080, 104, 58, 3, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1081, 104, 58, 4, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1082, 104, 58, 5, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1083, 104, 58, 6, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1084, 104, 13, 2, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1085, 104, 13, 3, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1086, 104, 13, 4, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1087, 104, 13, 5, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1088, 104, 13, 6, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1089, 104, 39, 2, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1090, 104, 39, 3, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1091, 104, 39, 4, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1092, 104, 39, 5, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1093, 104, 39, 6, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1094, 139, 11, 2, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1095, 139, 11, 3, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1096, 139, 11, 4, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1097, 139, 11, 5, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1098, 139, 11, 6, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1099, 139, 58, 2, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1100, 139, 58, 3, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1101, 139, 58, 4, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1102, 139, 58, 5, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1103, 139, 58, 6, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1104, 139, 13, 2, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1105, 139, 13, 3, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1106, 139, 13, 4, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1107, 139, 13, 5, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1108, 139, 13, 6, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1109, 139, 24, 2, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1110, 139, 24, 3, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1111, 139, 24, 4, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1112, 139, 24, 5, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1113, 139, 24, 6, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1114, 58, 11, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1115, 58, 11, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1116, 58, 11, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1117, 58, 11, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1118, 58, 11, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1119, 58, 12, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1120, 58, 12, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1121, 58, 12, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1122, 58, 12, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1123, 58, 12, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1124, 58, 13, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1125, 58, 13, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1126, 58, 13, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1127, 58, 13, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1128, 58, 13, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1129, 58, 1, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1130, 58, 1, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1131, 58, 1, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1132, 58, 1, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1133, 58, 1, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1134, 58, 5, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1135, 58, 5, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1136, 58, 5, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1137, 58, 5, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1138, 58, 5, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1139, 58, 30, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1140, 58, 30, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1141, 58, 30, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1142, 58, 30, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1143, 58, 30, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1144, 58, 10, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1145, 58, 10, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1146, 58, 10, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1147, 58, 10, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1148, 58, 10, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1149, 58, 26, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1150, 58, 26, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1151, 58, 26, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1152, 58, 26, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1153, 58, 26, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1154, 58, 59, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1155, 58, 59, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1156, 58, 59, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1157, 58, 59, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1158, 58, 59, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1159, 16, 24, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1160, 16, 24, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1161, 16, 24, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1162, 16, 24, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1163, 16, 24, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1164, 16, 24, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1165, 16, 24, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1166, 16, 24, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1167, 16, 11, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1168, 16, 11, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1169, 16, 11, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1170, 16, 11, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1171, 16, 11, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1172, 16, 11, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1173, 16, 11, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1174, 16, 11, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1175, 16, 28, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1176, 16, 28, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1177, 16, 28, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1178, 16, 28, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1179, 16, 28, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1180, 16, 28, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1181, 16, 28, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1182, 16, 28, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1183, 16, 29, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1184, 16, 29, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1185, 16, 29, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1186, 16, 29, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1187, 16, 29, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1188, 16, 29, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1189, 16, 29, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1190, 16, 29, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1191, 16, 19, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1192, 16, 19, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1193, 16, 19, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1194, 16, 19, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1195, 16, 19, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1196, 16, 19, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1197, 16, 19, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1198, 16, 19, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1199, 16, 30, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1200, 16, 30, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1201, 16, 30, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1202, 16, 30, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1203, 16, 30, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1204, 16, 30, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1205, 16, 30, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1206, 16, 30, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1207, 16, 17, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1208, 16, 17, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1209, 16, 17, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1210, 16, 17, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1211, 16, 17, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1212, 16, 17, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1213, 16, 17, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1214, 16, 17, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1215, 16, 25, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1216, 16, 25, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1217, 16, 25, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1218, 16, 25, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1219, 16, 25, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1220, 16, 25, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1221, 16, 25, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1222, 16, 25, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1223, 16, 13, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1224, 16, 13, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1225, 16, 13, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1226, 16, 13, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1227, 16, 13, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1228, 16, 13, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1229, 16, 13, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1230, 16, 13, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1231, 16, 4, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1232, 16, 4, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1233, 16, 4, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1234, 16, 4, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1235, 16, 4, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1236, 16, 4, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1237, 16, 4, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1238, 16, 4, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1239, 16, 31, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1240, 16, 31, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1241, 16, 31, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1242, 16, 31, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1243, 16, 31, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1244, 16, 31, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1245, 16, 31, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1246, 16, 31, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1247, 16, 26, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1248, 16, 26, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1249, 16, 26, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1250, 16, 26, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1251, 16, 26, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1252, 16, 26, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1253, 16, 26, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1254, 16, 26, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1255, 16, 9, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1256, 16, 9, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1257, 16, 9, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1258, 16, 9, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1259, 16, 9, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1260, 16, 9, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1261, 16, 9, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1262, 16, 9, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1263, 16, 1, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1264, 16, 1, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1265, 16, 1, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1266, 16, 1, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1267, 16, 1, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1268, 16, 1, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1269, 16, 1, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1270, 16, 1, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1271, 16, 12, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1272, 16, 12, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1273, 16, 12, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1274, 16, 12, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1275, 16, 12, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1276, 16, 12, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1277, 16, 12, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1278, 16, 12, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1279, 16, 32, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1280, 16, 32, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1281, 16, 32, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1282, 16, 32, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1283, 16, 32, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1284, 16, 32, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1285, 16, 32, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1286, 16, 32, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1287, 16, 33, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1288, 16, 33, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1289, 16, 33, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1290, 16, 33, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1291, 16, 33, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1292, 16, 33, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1293, 16, 33, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1294, 16, 33, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1295, 16, 34, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1296, 16, 34, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1297, 16, 34, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1298, 16, 34, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1299, 16, 34, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1300, 16, 34, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1301, 16, 34, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1302, 16, 34, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1303, 16, 35, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1304, 16, 35, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1305, 16, 35, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1306, 16, 35, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1307, 16, 35, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1308, 16, 35, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1309, 16, 35, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1310, 16, 35, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1311, 16, 36, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1312, 16, 36, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1313, 16, 36, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1314, 16, 36, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1315, 16, 36, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1316, 16, 36, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1317, 16, 36, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1318, 16, 36, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1319, 16, 37, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1320, 16, 37, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1321, 16, 37, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1322, 16, 37, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1323, 16, 37, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1324, 16, 37, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1325, 16, 37, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1326, 16, 37, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1327, 16, 38, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1328, 16, 38, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1329, 16, 38, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1330, 16, 38, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1331, 16, 38, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1332, 16, 38, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1333, 16, 38, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1334, 16, 38, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1335, 16, 15, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1336, 16, 15, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1337, 16, 15, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1338, 16, 15, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1339, 16, 15, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1340, 16, 15, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1341, 16, 15, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1342, 16, 15, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1343, 16, 39, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1344, 16, 39, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1345, 16, 39, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1346, 16, 39, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1347, 16, 39, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1348, 16, 39, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1349, 16, 39, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1350, 16, 39, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1351, 16, 40, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1352, 16, 40, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1353, 16, 40, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1354, 16, 40, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1355, 16, 40, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1356, 16, 40, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1357, 16, 40, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1358, 16, 40, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1359, 16, 41, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1360, 16, 41, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1361, 16, 41, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1362, 16, 41, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1363, 16, 41, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1364, 16, 41, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1365, 16, 41, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1366, 16, 41, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1367, 16, 42, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1368, 16, 42, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1369, 16, 42, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1370, 16, 42, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1371, 16, 42, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1372, 16, 42, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1373, 16, 42, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1374, 16, 42, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1375, 16, 22, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1376, 16, 22, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1377, 16, 22, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1378, 16, 22, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1379, 16, 22, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1380, 16, 22, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1381, 16, 22, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1382, 16, 22, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1383, 16, 43, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1384, 16, 43, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1385, 16, 43, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1386, 16, 43, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1387, 16, 43, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1388, 16, 43, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1389, 16, 43, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1390, 16, 43, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1391, 16, 44, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1392, 16, 44, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1393, 16, 44, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1394, 16, 44, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1395, 16, 44, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1396, 16, 44, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1397, 16, 44, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1398, 16, 44, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1399, 16, 45, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1400, 16, 45, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1401, 16, 45, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1402, 16, 45, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1403, 16, 45, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1404, 16, 45, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1405, 16, 45, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1406, 16, 45, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1407, 16, 46, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1408, 16, 46, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1409, 16, 46, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1410, 16, 46, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1411, 16, 46, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1412, 16, 46, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1413, 16, 46, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1414, 16, 46, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1415, 16, 47, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1416, 16, 47, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1417, 16, 47, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1418, 16, 47, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1419, 16, 47, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1420, 16, 47, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1421, 16, 47, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1422, 16, 47, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1423, 16, 48, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1424, 16, 48, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1425, 16, 48, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1426, 16, 48, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1427, 16, 48, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1428, 16, 48, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1429, 16, 48, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1430, 16, 48, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1431, 22, 12, 2, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1432, 22, 12, 3, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1433, 22, 12, 4, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1434, 22, 12, 5, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1435, 22, 12, 6, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1436, 23, 11, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1437, 23, 11, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1438, 23, 11, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1439, 23, 11, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1440, 23, 11, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1441, 23, 13, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1442, 23, 13, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1443, 23, 13, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1444, 23, 13, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1445, 23, 13, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1446, 23, 17, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1447, 23, 17, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1448, 23, 17, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1449, 23, 17, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1450, 23, 17, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1451, 23, 42, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1452, 23, 42, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1453, 23, 42, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1454, 23, 42, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1455, 23, 42, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1456, 23, 60, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1457, 23, 60, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1458, 23, 60, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1459, 23, 60, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1460, 23, 60, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1461, 23, 19, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1462, 23, 19, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1463, 23, 19, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1464, 23, 19, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1465, 23, 19, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1466, 23, 57, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1467, 23, 57, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1468, 23, 57, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1469, 23, 57, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1470, 23, 57, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1471, 24, 11, 2, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1472, 24, 11, 3, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1473, 24, 11, 4, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1474, 24, 11, 5, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1475, 24, 11, 6, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1476, 24, 13, 2, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1477, 24, 13, 3, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1478, 24, 13, 4, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1479, 24, 13, 5, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1480, 24, 13, 6, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1481, 24, 17, 2, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1482, 24, 17, 3, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1483, 24, 17, 4, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1484, 24, 17, 5, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1485, 24, 17, 6, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1486, 24, 42, 2, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1487, 24, 42, 3, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1488, 24, 42, 4, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1489, 24, 42, 5, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1490, 24, 42, 6, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1491, 24, 60, 2, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1492, 24, 60, 3, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1493, 24, 60, 4, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1494, 24, 60, 5, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1495, 24, 60, 6, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1496, 25, 61, 2, 0, 165.00, 165.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1497, 25, 61, 3, 0, 165.00, 165.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1498, 25, 61, 4, 0, 165.00, 165.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1499, 25, 61, 5, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1500, 25, 61, 6, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1501, 26, 61, 2, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1502, 26, 61, 3, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1503, 26, 61, 4, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1504, 26, 61, 5, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1505, 26, 61, 6, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1506, 107, 61, 2, 0, 310.00, 310.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1507, 107, 61, 3, 0, 310.00, 310.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1508, 107, 61, 4, 0, 310.00, 310.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1509, 107, 61, 5, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1510, 107, 61, 6, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1511, 61, 61, 2, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1512, 61, 61, 3, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1513, 61, 61, 4, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1514, 61, 61, 5, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1515, 61, 61, 6, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1516, 61, 61, 7, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1517, 61, 61, 8, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1518, 62, 61, 2, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1519, 62, 61, 3, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1520, 62, 61, 4, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1521, 62, 61, 5, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1522, 62, 61, 6, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1523, 62, 61, 7, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1524, 62, 61, 8, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1525, 63, 61, 2, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1526, 63, 61, 3, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1527, 63, 61, 4, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1528, 63, 61, 5, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1529, 63, 61, 6, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1530, 63, 61, 7, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1531, 63, 61, 8, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1532, 64, 61, 2, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1533, 64, 61, 3, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1534, 64, 61, 4, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1535, 64, 61, 5, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1536, 64, 61, 6, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1537, 64, 61, 7, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1538, 64, 61, 8, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1539, 65, 61, 2, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1540, 65, 61, 3, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1541, 65, 61, 4, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1542, 65, 61, 5, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1543, 65, 61, 6, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1544, 65, 61, 7, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1545, 65, 61, 8, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1546, 56, 61, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1547, 56, 61, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1548, 56, 61, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1549, 56, 61, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1550, 56, 61, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1551, 56, 61, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1552, 56, 61, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1553, 56, 61, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1554, 105, 61, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1555, 105, 61, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1556, 105, 61, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1557, 105, 61, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1558, 105, 61, 6, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1559, 106, 61, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1560, 106, 61, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1561, 106, 61, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1562, 106, 61, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1563, 106, 61, 6, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1564, 27, 12, 1, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1565, 27, 12, 2, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1566, 27, 12, 3, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1567, 27, 12, 4, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1568, 27, 12, 5, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1569, 28, 11, 1, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1570, 28, 11, 2, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1571, 28, 11, 3, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1572, 28, 11, 4, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1573, 28, 11, 5, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1584, 108, 11, 1, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1585, 108, 11, 2, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1586, 108, 11, 3, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1587, 108, 11, 4, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1588, 108, 11, 5, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1589, 109, 61, 1, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1590, 109, 61, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1591, 109, 61, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1592, 109, 61, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1593, 109, 61, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1594, 110, 61, 1, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1595, 110, 61, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1596, 110, 61, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1597, 110, 61, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1598, 110, 61, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1599, 111, 13, 1, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1600, 111, 13, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1601, 111, 13, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1602, 111, 13, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1603, 111, 13, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1604, 111, 11, 1, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1605, 111, 11, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1606, 111, 11, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1607, 111, 11, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1608, 111, 11, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1609, 111, 60, 1, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1610, 111, 60, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1611, 111, 60, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57');
INSERT INTO `product_color_sizes` (`id`, `product_id`, `color`, `size`, `assorted_flag`, `price`, `offer_price`, `stock`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1612, 111, 60, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1613, 111, 60, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1614, 31, 13, 1, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1615, 31, 13, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1616, 31, 13, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1617, 31, 13, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1618, 31, 13, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1619, 31, 11, 1, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1620, 31, 11, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1621, 31, 11, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1622, 31, 11, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1623, 31, 11, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1624, 31, 60, 1, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1625, 31, 60, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1626, 31, 60, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1627, 31, 60, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1628, 31, 60, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1629, 32, 13, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1630, 32, 13, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1631, 32, 13, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1632, 32, 13, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1633, 32, 13, 6, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1634, 32, 58, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1635, 32, 58, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1636, 32, 58, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1637, 32, 58, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1638, 32, 58, 6, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1639, 32, 39, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1640, 32, 39, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1641, 32, 39, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1642, 32, 39, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1643, 32, 39, 6, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1644, 32, 11, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1645, 32, 11, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1646, 32, 11, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1647, 32, 11, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1648, 32, 11, 6, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1649, 33, 13, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1650, 33, 13, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1651, 33, 13, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1652, 33, 13, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1653, 33, 13, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1654, 33, 58, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1655, 33, 58, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1656, 33, 58, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1657, 33, 58, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1658, 33, 58, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1659, 33, 47, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1660, 33, 47, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1661, 33, 47, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1662, 33, 47, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1663, 33, 47, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1664, 33, 11, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1665, 33, 11, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1666, 33, 11, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1667, 33, 11, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1668, 33, 11, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1669, 33, 46, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1670, 33, 46, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1671, 33, 46, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1672, 33, 46, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1673, 33, 46, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1674, 33, 25, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1675, 33, 25, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1676, 33, 25, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1677, 33, 25, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1678, 33, 25, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1679, 33, 4, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1680, 33, 4, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1681, 33, 4, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1682, 33, 4, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1683, 33, 4, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1684, 33, 62, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1685, 33, 62, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1686, 33, 62, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1687, 33, 62, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1688, 33, 62, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1689, 34, 13, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1690, 34, 13, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1691, 34, 13, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1692, 34, 13, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1693, 34, 13, 6, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1694, 34, 58, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1695, 34, 58, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1696, 34, 58, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1697, 34, 58, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1698, 34, 58, 6, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1699, 34, 11, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1700, 34, 11, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1701, 34, 11, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1702, 34, 11, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1703, 34, 11, 6, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1704, 35, 13, 2, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1705, 35, 13, 3, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1706, 35, 13, 4, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1707, 35, 13, 5, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1708, 35, 13, 6, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1709, 35, 58, 2, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1710, 35, 58, 3, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1711, 35, 58, 4, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1712, 35, 58, 5, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1713, 35, 58, 6, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1714, 35, 11, 2, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1715, 35, 11, 3, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1716, 35, 11, 4, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1717, 35, 11, 5, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1718, 35, 11, 6, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1719, 36, 13, 2, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1720, 36, 13, 3, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1721, 36, 13, 4, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1722, 36, 13, 5, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1723, 36, 13, 6, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1724, 36, 58, 2, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1725, 36, 58, 3, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1726, 36, 58, 4, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1727, 36, 58, 5, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1728, 36, 58, 6, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1729, 36, 11, 2, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1730, 36, 11, 3, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1731, 36, 11, 4, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1732, 36, 11, 5, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1733, 36, 11, 6, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1734, 36, 39, 2, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1735, 36, 39, 3, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1736, 36, 39, 4, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1737, 36, 39, 5, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1738, 36, 39, 6, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1739, 36, 4, 2, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1740, 36, 4, 3, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1741, 36, 4, 4, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1742, 36, 4, 5, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1743, 36, 4, 6, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1744, 37, 13, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1745, 37, 13, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1746, 37, 13, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1747, 37, 13, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1748, 37, 13, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1749, 37, 58, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1750, 37, 58, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1751, 37, 58, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1752, 37, 58, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1753, 37, 58, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1754, 37, 11, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1755, 37, 11, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1756, 37, 11, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1757, 37, 11, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1758, 37, 11, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1759, 37, 39, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1760, 37, 39, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1761, 37, 39, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1762, 37, 39, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1763, 37, 39, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1764, 113, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1765, 113, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1766, 113, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1767, 113, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1768, 113, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1769, 113, 58, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1770, 113, 58, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1771, 113, 58, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1772, 113, 58, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1773, 113, 58, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1774, 113, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1775, 113, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1776, 113, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1777, 113, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1778, 113, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1779, 114, 13, 2, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1780, 114, 13, 3, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1781, 114, 13, 4, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1782, 114, 13, 5, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1783, 114, 13, 6, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1784, 114, 58, 2, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1785, 114, 58, 3, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1786, 114, 58, 4, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1787, 114, 58, 5, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1788, 114, 58, 6, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1789, 114, 11, 2, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1790, 114, 11, 3, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1791, 114, 11, 4, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1792, 114, 11, 5, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1793, 114, 11, 6, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1794, 115, 13, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1795, 115, 13, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1796, 115, 13, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1797, 115, 13, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1798, 115, 13, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1799, 115, 58, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1800, 115, 58, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1801, 115, 58, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1802, 115, 58, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1803, 115, 58, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1804, 115, 11, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1805, 115, 11, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1806, 115, 11, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1807, 115, 11, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1808, 115, 11, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1824, 118, 13, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1825, 118, 13, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1826, 118, 13, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1827, 118, 13, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1828, 118, 58, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1829, 118, 58, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1830, 118, 58, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1831, 118, 58, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1832, 118, 11, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1833, 118, 11, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1834, 118, 11, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1835, 118, 11, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1836, 118, 22, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1837, 118, 22, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1838, 118, 22, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1839, 118, 22, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1840, 119, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1841, 119, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1842, 119, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1843, 119, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1844, 119, 58, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1845, 119, 58, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1846, 119, 58, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1847, 119, 58, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1848, 119, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1849, 119, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1850, 119, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1851, 119, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1852, 119, 22, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1853, 119, 22, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1854, 119, 22, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1855, 119, 22, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1856, 120, 13, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1857, 120, 13, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1858, 120, 13, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1859, 120, 13, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1860, 120, 58, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1861, 120, 58, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1862, 120, 58, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1863, 120, 58, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1864, 120, 11, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1865, 120, 11, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1866, 120, 11, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1867, 120, 11, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1868, 120, 22, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1869, 120, 22, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1870, 120, 22, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1871, 120, 22, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(1872, 121, 58, 11, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1873, 121, 58, 12, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1874, 121, 58, 13, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1875, 121, 58, 14, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1876, 121, 58, 15, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1877, 121, 58, 16, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1878, 121, 58, 17, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1879, 121, 58, 18, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1880, 121, 58, 19, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1881, 121, 58, 20, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1882, 121, 13, 11, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1883, 121, 13, 12, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1884, 121, 13, 13, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1885, 121, 13, 14, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1886, 121, 13, 15, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1887, 121, 13, 16, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1888, 121, 13, 17, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1889, 121, 13, 18, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1890, 121, 13, 19, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1891, 121, 13, 20, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1892, 121, 11, 11, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1893, 121, 11, 12, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1894, 121, 11, 13, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1895, 121, 11, 14, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1896, 121, 11, 15, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1897, 121, 11, 16, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1898, 121, 11, 17, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1899, 121, 11, 18, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1900, 121, 11, 19, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1901, 121, 11, 20, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1902, 121, 62, 11, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1903, 121, 62, 12, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1904, 121, 62, 13, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1905, 121, 62, 14, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1906, 121, 62, 15, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1907, 121, 62, 16, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1908, 121, 62, 17, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1909, 121, 62, 18, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1910, 121, 62, 19, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1911, 121, 62, 20, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1912, 122, 58, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1913, 122, 58, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1914, 122, 58, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1915, 122, 58, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1916, 122, 58, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1917, 122, 58, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1918, 122, 58, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1919, 122, 58, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1920, 122, 58, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1921, 122, 58, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1922, 122, 13, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1923, 122, 13, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1924, 122, 13, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1925, 122, 13, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1926, 122, 13, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1927, 122, 13, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1928, 122, 13, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1929, 122, 13, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1930, 122, 13, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1931, 122, 13, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1932, 122, 11, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1933, 122, 11, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1934, 122, 11, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1935, 122, 11, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1936, 122, 11, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1937, 122, 11, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1938, 122, 11, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1939, 122, 11, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1940, 122, 11, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1941, 122, 11, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1942, 122, 62, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1943, 122, 62, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1944, 122, 62, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1945, 122, 62, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1946, 122, 62, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1947, 122, 62, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1948, 122, 62, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1949, 122, 62, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1950, 122, 62, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1951, 122, 62, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1952, 123, 58, 11, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1953, 123, 58, 12, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1954, 123, 58, 13, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1955, 123, 58, 14, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1956, 123, 58, 15, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1957, 123, 58, 16, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1958, 123, 58, 17, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1959, 123, 58, 18, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1960, 123, 58, 19, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1961, 123, 58, 20, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1962, 123, 13, 11, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1963, 123, 13, 12, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1964, 123, 13, 13, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1965, 123, 13, 14, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1966, 123, 13, 15, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1967, 123, 13, 16, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1968, 123, 13, 17, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1969, 123, 13, 18, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1970, 123, 13, 19, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1971, 123, 13, 20, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1972, 123, 11, 11, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1973, 123, 11, 12, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1974, 123, 11, 13, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1975, 123, 11, 14, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1976, 123, 11, 15, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1977, 123, 11, 16, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1978, 123, 11, 17, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1979, 123, 11, 18, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1980, 123, 11, 19, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1981, 123, 11, 20, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1982, 123, 62, 11, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1983, 123, 62, 12, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1984, 123, 62, 13, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1985, 123, 62, 14, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1986, 123, 62, 15, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1987, 123, 62, 16, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1988, 123, 62, 17, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1989, 123, 62, 18, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1990, 123, 62, 19, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1991, 123, 62, 20, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1992, 124, 58, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1993, 124, 58, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1994, 124, 58, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1995, 124, 58, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1996, 124, 58, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1997, 124, 58, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1998, 124, 58, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(1999, 124, 58, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2000, 124, 58, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2001, 124, 58, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2002, 124, 13, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2003, 124, 13, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2004, 124, 13, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2005, 124, 13, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2006, 124, 13, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2007, 124, 13, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2008, 124, 13, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2009, 124, 13, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2010, 124, 13, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2011, 124, 13, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2012, 124, 11, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2013, 124, 11, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2014, 124, 11, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2015, 124, 11, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2016, 124, 11, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2017, 124, 11, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2018, 124, 11, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2019, 124, 11, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2020, 124, 11, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2021, 124, 11, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2022, 124, 62, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2023, 124, 62, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2024, 124, 62, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2025, 124, 62, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2026, 124, 62, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2027, 124, 62, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2028, 124, 62, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2029, 124, 62, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2030, 124, 62, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2031, 124, 62, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2032, 116, 11, 2, 1, 1290.00, 1290.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2033, 116, 11, 3, 1, 1290.00, 1290.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2034, 116, 11, 4, 1, 1290.00, 1290.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2035, 116, 11, 5, 1, 1290.00, 1290.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2036, 116, 11, 6, 1, 1290.00, 1290.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2042, 117, 11, 2, 1, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2043, 117, 11, 3, 1, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2044, 117, 11, 4, 1, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2045, 117, 11, 5, 1, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2046, 117, 11, 6, 1, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2047, 140, 64, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2048, 140, 64, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2049, 140, 64, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2050, 140, 64, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2051, 140, 64, 5, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2052, 140, 64, 6, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2053, 140, 64, 7, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2054, 40, 12, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2055, 40, 12, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2056, 40, 12, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2057, 40, 12, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2058, 40, 12, 5, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2059, 40, 12, 6, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2060, 40, 12, 7, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2061, 125, 64, 1, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2062, 125, 64, 2, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2063, 125, 64, 3, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2064, 125, 64, 4, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2065, 125, 64, 5, 0, 630.00, 630.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2066, 125, 64, 6, 0, 630.00, 630.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2067, 125, 64, 7, 0, 630.00, 630.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2068, 126, 12, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2069, 126, 12, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2070, 126, 12, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2071, 126, 12, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2072, 126, 12, 5, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2073, 126, 12, 6, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2074, 126, 12, 7, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2075, 127, 11, 1, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2076, 127, 11, 2, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2077, 127, 11, 3, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2078, 127, 11, 4, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2079, 127, 11, 5, 0, 640.00, 640.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2080, 127, 11, 6, 0, 640.00, 640.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2081, 127, 11, 7, 0, 640.00, 640.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2082, 42, 64, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2083, 42, 64, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2084, 42, 64, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2085, 42, 64, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2086, 42, 64, 5, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2087, 42, 64, 6, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2088, 42, 64, 7, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2089, 41, 12, 1, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2090, 41, 12, 2, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2091, 41, 12, 3, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2092, 41, 12, 4, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2093, 41, 12, 5, 0, 630.00, 630.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2094, 41, 12, 6, 0, 630.00, 630.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2095, 41, 12, 7, 0, 630.00, 630.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2096, 43, 12, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2097, 43, 12, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2098, 43, 12, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2099, 43, 12, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2100, 43, 12, 5, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2101, 43, 12, 6, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2102, 43, 12, 7, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2103, 129, 12, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2104, 129, 12, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2105, 129, 12, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2106, 129, 12, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2107, 129, 12, 5, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2108, 129, 12, 6, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2109, 129, 12, 7, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2110, 131, 12, 1, 0, 420.00, 420.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2111, 131, 12, 2, 0, 420.00, 420.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2112, 131, 12, 3, 0, 420.00, 420.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2113, 131, 12, 4, 0, 420.00, 420.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2114, 131, 12, 5, 0, 440.00, 440.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2115, 131, 12, 6, 0, 440.00, 440.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2116, 131, 12, 7, 0, 440.00, 440.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2117, 133, 12, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2118, 133, 12, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2119, 133, 12, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2120, 133, 12, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2121, 133, 12, 5, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2122, 133, 12, 6, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2123, 133, 12, 7, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2124, 128, 64, 1, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2125, 128, 64, 2, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2126, 128, 64, 3, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2127, 128, 64, 4, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2128, 128, 64, 5, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2129, 128, 64, 6, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2130, 128, 64, 7, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2131, 130, 11, 1, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2132, 130, 11, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2133, 130, 11, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2134, 130, 11, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2135, 130, 11, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2136, 130, 11, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2137, 130, 11, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2138, 132, 64, 1, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2139, 132, 64, 2, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2140, 132, 64, 3, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2141, 132, 64, 4, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2142, 132, 64, 5, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2143, 132, 64, 6, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2144, 132, 64, 7, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2145, 134, 11, 9, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2146, 134, 11, 10, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2147, 134, 11, 11, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2148, 134, 11, 12, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2149, 134, 11, 13, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2150, 134, 11, 14, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2151, 134, 11, 15, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2152, 134, 11, 16, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2153, 134, 11, 17, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2154, 134, 11, 18, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57');
INSERT INTO `product_color_sizes` (`id`, `product_id`, `color`, `size`, `assorted_flag`, `price`, `offer_price`, `stock`, `code`, `status`, `created_at`, `updated_at`) VALUES
(2155, 134, 11, 19, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2156, 134, 11, 20, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2157, 136, 11, 9, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2158, 136, 11, 10, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2159, 136, 11, 11, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2160, 136, 11, 12, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2161, 136, 11, 13, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2162, 136, 11, 14, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2163, 136, 11, 15, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2164, 136, 11, 16, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2165, 136, 11, 17, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2166, 136, 11, 18, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2167, 136, 11, 19, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2168, 136, 11, 20, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2169, 135, 12, 9, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2170, 135, 12, 10, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2171, 135, 12, 11, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2172, 135, 12, 12, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2173, 135, 12, 13, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2174, 135, 12, 14, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2175, 135, 12, 15, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2176, 135, 12, 16, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2177, 135, 12, 17, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2178, 135, 12, 18, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2179, 135, 12, 19, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2180, 135, 12, 20, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2181, 137, 12, 9, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2182, 137, 12, 10, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2183, 137, 12, 11, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2184, 137, 12, 12, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2185, 137, 12, 13, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2186, 137, 12, 14, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2187, 137, 12, 15, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2188, 137, 12, 16, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2189, 137, 12, 17, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2190, 137, 12, 18, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2191, 137, 12, 19, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2192, 137, 12, 20, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2194, 17, 12, 1, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2195, 17, 12, 2, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2196, 17, 12, 3, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2197, 17, 12, 4, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2198, 17, 12, 5, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2199, 18, 12, 1, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2200, 18, 12, 2, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2201, 18, 12, 3, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2202, 18, 12, 4, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2203, 18, 12, 5, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2204, 69, 12, 1, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2205, 69, 12, 2, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2206, 69, 12, 3, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2207, 69, 12, 4, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2208, 69, 12, 5, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2209, 4, 61, 23, 0, 85.00, 85.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2210, 138, 61, 23, 0, 85.00, 85.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2211, 7, 61, 23, 0, 90.00, 90.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2212, 6, 12, 23, 0, 90.00, 90.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2213, 8, 61, 23, 0, 95.00, 95.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2214, 9, 61, 23, 0, 95.00, 95.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2215, 11, 61, 23, 0, 90.00, 90.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2216, 44, 61, 23, 0, 129.00, 129.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2217, 45, 61, 23, 0, 129.00, 129.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2218, 46, 61, 23, 0, 129.00, 129.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2219, 47, 61, 23, 0, 139.00, 139.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2220, 48, 61, 23, 0, 109.00, 109.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2221, 49, 12, 23, 0, 109.00, 109.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2222, 50, 61, 23, 0, 109.00, 109.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2223, 51, 61, 23, 0, 159.00, 159.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2224, 52, 61, 23, 0, 159.00, 159.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2225, 53, 61, 23, 0, 159.00, 159.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2226, 19, 13, 1, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2227, 19, 13, 2, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2228, 19, 13, 3, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2229, 19, 13, 4, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2230, 19, 13, 5, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2236, 70, 12, 1, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2237, 70, 12, 2, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2238, 70, 12, 3, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2239, 70, 12, 4, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2240, 70, 12, 5, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2241, 67, 12, 1, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2242, 67, 12, 2, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2243, 67, 12, 3, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2244, 67, 12, 4, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2245, 67, 12, 5, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2246, 68, 13, 1, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2247, 68, 13, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2248, 68, 13, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2249, 68, 13, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2250, 68, 13, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2251, 66, 11, 1, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2252, 66, 11, 2, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2253, 66, 11, 3, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2254, 66, 11, 4, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2255, 66, 11, 5, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2256, 72, 58, 2, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2257, 72, 58, 3, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2258, 72, 58, 4, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2259, 72, 58, 5, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2260, 72, 58, 6, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2301, 81, 11, 2, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2302, 81, 11, 3, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2303, 81, 11, 4, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2304, 81, 11, 5, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2305, 81, 11, 6, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2316, 84, 61, 2, 0, 260.00, 260.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2317, 84, 61, 3, 0, 260.00, 260.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2318, 84, 61, 4, 0, 260.00, 260.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2319, 84, 61, 5, 0, 260.00, 260.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2320, 84, 61, 6, 0, 260.00, 260.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2321, 85, 61, 2, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2322, 85, 61, 3, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2323, 85, 61, 4, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2324, 85, 61, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2325, 85, 61, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2326, 86, 61, 2, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2327, 86, 61, 3, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2328, 86, 61, 4, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2329, 86, 61, 5, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2330, 86, 61, 6, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2346, 90, 61, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2347, 90, 61, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2348, 90, 61, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2349, 90, 61, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2350, 90, 61, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2351, 57, 58, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2352, 57, 58, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2353, 57, 58, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2354, 57, 58, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2355, 57, 58, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2356, 91, 58, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2357, 91, 58, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2358, 91, 58, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2359, 91, 58, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2360, 91, 58, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2361, 92, 58, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2362, 92, 58, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2363, 92, 58, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2364, 92, 58, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2365, 92, 58, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2366, 93, 58, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2367, 93, 58, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2368, 93, 58, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2369, 93, 58, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2370, 93, 58, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2371, 13, 64, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2372, 13, 64, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2373, 13, 64, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2374, 13, 64, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2375, 13, 64, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2376, 13, 64, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2377, 13, 64, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2378, 13, 64, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2379, 13, 58, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2380, 13, 58, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2381, 13, 58, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2382, 13, 58, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2383, 13, 58, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2384, 13, 58, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2385, 13, 58, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2386, 13, 58, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2387, 12, 64, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2388, 12, 64, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2389, 12, 64, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2390, 12, 64, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2391, 12, 64, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2392, 12, 64, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2393, 12, 64, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2394, 12, 64, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2395, 12, 5, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2396, 12, 5, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2397, 12, 5, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2398, 12, 5, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2399, 12, 5, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2400, 12, 5, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2401, 12, 5, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2402, 12, 5, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2403, 12, 58, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2404, 12, 58, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2405, 12, 58, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2406, 12, 58, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2407, 12, 58, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2408, 12, 58, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2409, 12, 58, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2410, 12, 58, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2411, 12, 9, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2412, 12, 9, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2413, 12, 9, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2414, 12, 9, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2415, 12, 9, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2416, 12, 9, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2417, 12, 9, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2418, 12, 9, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2419, 12, 14, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2420, 12, 14, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2421, 12, 14, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2422, 12, 14, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2423, 12, 14, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2424, 12, 14, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2425, 12, 14, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2426, 12, 14, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2427, 12, 15, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2428, 12, 15, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2429, 12, 15, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2430, 12, 15, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2431, 12, 15, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2432, 12, 15, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2433, 12, 15, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2434, 12, 15, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2435, 14, 64, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2436, 14, 64, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2437, 14, 64, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2438, 14, 64, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2439, 14, 64, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2440, 14, 64, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2441, 14, 64, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2442, 14, 64, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2443, 14, 14, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2444, 14, 14, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2445, 14, 14, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2446, 14, 14, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2447, 14, 14, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2448, 14, 14, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2449, 14, 14, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2450, 14, 14, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2451, 14, 5, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2452, 14, 5, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2453, 14, 5, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2454, 14, 5, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2455, 14, 5, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2456, 14, 5, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2457, 14, 5, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2458, 14, 5, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2459, 14, 19, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2460, 14, 19, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2461, 14, 19, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2462, 14, 19, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2463, 14, 19, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2464, 14, 19, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2465, 14, 19, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2466, 14, 19, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2467, 14, 58, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2468, 14, 58, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2469, 14, 58, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2470, 14, 58, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2471, 14, 58, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2472, 14, 58, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2473, 14, 58, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2474, 14, 58, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2475, 14, 16, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2476, 14, 16, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2477, 14, 16, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2478, 14, 16, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2479, 14, 16, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2480, 14, 16, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2481, 14, 16, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2482, 14, 16, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2483, 14, 17, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2484, 14, 17, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2485, 14, 17, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2486, 14, 17, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2487, 14, 17, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2488, 14, 17, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2489, 14, 17, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2490, 14, 17, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2491, 14, 9, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2492, 14, 9, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2493, 14, 9, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2494, 14, 9, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2495, 14, 9, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2496, 14, 9, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2497, 14, 9, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2498, 14, 9, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2499, 14, 18, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2500, 14, 18, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2501, 14, 18, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2502, 14, 18, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2503, 14, 18, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2504, 14, 18, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2505, 14, 18, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2506, 14, 18, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2507, 14, 15, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2508, 14, 15, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2509, 14, 15, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2510, 14, 15, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2511, 14, 15, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2512, 14, 15, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2513, 14, 15, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2514, 14, 15, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2515, 15, 64, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2516, 15, 64, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2517, 15, 64, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2518, 15, 64, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2519, 15, 64, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2520, 15, 64, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2521, 15, 64, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2522, 15, 64, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2523, 15, 58, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2524, 15, 58, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2525, 15, 58, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2526, 15, 58, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2527, 15, 58, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2528, 15, 58, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2529, 15, 58, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2530, 15, 58, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2531, 32, 64, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2532, 32, 64, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2533, 32, 64, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2534, 32, 64, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2535, 32, 64, 6, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2536, 34, 64, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2537, 34, 64, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2538, 34, 64, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2539, 34, 64, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2540, 34, 64, 6, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2541, 36, 64, 2, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2542, 36, 64, 3, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2543, 36, 64, 4, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2544, 36, 64, 5, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2545, 36, 64, 6, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2546, 37, 64, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2547, 37, 64, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2548, 37, 64, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2549, 37, 64, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2550, 37, 64, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2551, 117, 13, 2, 1, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2552, 117, 13, 3, 1, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2553, 117, 13, 4, 1, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2554, 117, 13, 5, 1, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2555, 117, 13, 6, 1, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2556, 108, 44, 1, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2557, 108, 44, 2, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2558, 108, 44, 3, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2559, 108, 44, 4, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2560, 108, 44, 5, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2561, 108, 45, 1, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2562, 108, 45, 2, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2563, 108, 45, 3, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2564, 108, 45, 4, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2565, 108, 45, 5, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2566, 108, 13, 1, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2567, 108, 13, 2, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2568, 108, 13, 3, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2569, 108, 13, 4, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2570, 108, 13, 5, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2571, 108, 32, 1, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2572, 108, 32, 2, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2573, 108, 32, 3, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2574, 108, 32, 4, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2575, 108, 32, 5, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2576, 30, 11, 1, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2577, 30, 11, 2, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2578, 30, 11, 3, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2579, 30, 11, 4, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2580, 30, 11, 5, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2581, 30, 44, 1, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2582, 30, 44, 2, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2583, 30, 44, 3, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2584, 30, 44, 4, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2585, 30, 44, 5, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2586, 30, 45, 1, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2587, 30, 45, 2, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2588, 30, 45, 3, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2589, 30, 45, 4, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2590, 30, 45, 5, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2591, 30, 13, 1, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2592, 30, 13, 2, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2593, 30, 13, 3, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2594, 30, 13, 4, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2595, 30, 13, 5, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2596, 30, 32, 1, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2597, 30, 32, 2, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2598, 30, 32, 3, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2599, 30, 32, 4, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2600, 30, 32, 5, 1, 325.00, 325.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2601, 29, 11, 1, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2602, 29, 11, 2, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2603, 29, 11, 3, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2604, 29, 11, 4, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2605, 29, 11, 5, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2606, 29, 44, 1, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2607, 29, 44, 2, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2608, 29, 44, 3, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2609, 29, 44, 4, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2610, 29, 44, 5, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2611, 29, 45, 1, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2612, 29, 45, 2, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2613, 29, 45, 3, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2614, 29, 45, 4, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2615, 29, 45, 5, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2616, 29, 13, 1, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2617, 29, 13, 2, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2618, 29, 13, 3, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2619, 29, 13, 4, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2620, 29, 13, 5, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2621, 29, 32, 1, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2622, 29, 32, 2, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2623, 29, 32, 3, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2624, 29, 32, 4, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2625, 29, 32, 5, 1, 275.00, 275.00, 1, NULL, 1, '2022-03-04 00:07:17', '2022-05-12 06:24:57'),
(2626, 28, 44, 1, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:51:17', '2022-05-12 06:24:57'),
(2627, 28, 44, 2, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:51:57', '2022-05-12 06:24:57'),
(2628, 28, 44, 3, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:51:57', '2022-05-12 06:24:57'),
(2629, 28, 44, 4, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:51:57', '2022-05-12 06:24:57'),
(2630, 28, 44, 5, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:51:57', '2022-05-12 06:24:57'),
(2631, 28, 13, 1, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2632, 28, 13, 2, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2633, 28, 13, 3, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2634, 28, 13, 4, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2635, 28, 13, 5, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2636, 28, 45, 1, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2637, 28, 45, 2, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2638, 28, 45, 3, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2639, 28, 45, 4, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2640, 28, 45, 5, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2641, 28, 32, 1, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2642, 28, 32, 2, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2643, 28, 32, 3, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2644, 28, 32, 4, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2645, 28, 32, 5, 0, 275.00, 275.00, 1, NULL, 1, '2022-05-03 10:55:08', '2022-05-12 06:24:57'),
(2647, 19, 64, 1, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2648, 19, 64, 2, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2649, 19, 64, 3, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2650, 19, 64, 4, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2651, 19, 64, 5, 0, 225.00, 225.00, 0, NULL, 1, '2022-05-04 02:14:32', '2022-05-12 06:24:57'),
(2652, 19, 11, 1, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2653, 19, 11, 2, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2654, 19, 11, 3, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2655, 19, 11, 4, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2656, 19, 11, 5, 0, 225.00, 225.00, 0, NULL, 1, '2022-05-04 02:14:32', '2022-05-12 06:24:57'),
(2662, 19, 58, 1, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2663, 19, 58, 2, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2664, 19, 58, 3, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2665, 19, 58, 4, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2666, 19, 58, 5, 0, 225.00, 225.00, 0, NULL, 1, '2022-05-04 02:14:32', '2022-05-12 06:24:57'),
(2737, 71, 11, 2, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2738, 71, 11, 3, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2739, 71, 11, 4, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2740, 71, 11, 5, 1, 225.00, 225.00, 0, NULL, 1, '2022-05-03 16:44:32', '2022-05-12 06:24:57'),
(2741, 71, 58, 1, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2742, 71, 58, 2, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2743, 71, 58, 3, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2744, 71, 58, 4, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2745, 71, 11, 1, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2746, 71, 58, 5, 1, 225.00, 225.00, 0, NULL, 1, '2022-05-03 16:44:32', '2022-05-12 06:24:57'),
(2747, 71, 64, 1, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2748, 71, 64, 2, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2749, 71, 64, 3, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2750, 71, 64, 4, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2751, 71, 64, 5, 1, 225.00, 225.00, 0, NULL, 1, '2022-05-03 16:44:32', '2022-05-12 06:24:57'),
(2752, 71, 13, 1, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2753, 71, 13, 2, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2754, 71, 13, 3, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2755, 71, 13, 4, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2756, 71, 13, 5, 1, 225.00, 225.00, 0, NULL, 1, '2022-05-03 16:44:32', '2022-05-12 06:24:57'),
(2757, 71, 17, 1, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2758, 71, 17, 2, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2759, 71, 17, 3, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2760, 71, 17, 4, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2761, 71, 17, 5, 1, 225.00, 225.00, 0, NULL, 1, '2022-05-03 16:44:32', '2022-05-12 06:24:57'),
(2762, 71, 1, 1, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2763, 71, 1, 2, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2764, 71, 1, 3, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2765, 71, 1, 4, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2766, 71, 1, 5, 1, 225.00, 225.00, 0, NULL, 1, '2022-05-03 16:44:32', '2022-05-12 06:24:57'),
(2767, 71, 31, 1, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2768, 71, 31, 2, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2769, 71, 31, 3, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2770, 71, 31, 4, 1, 225.00, 225.00, 1, NULL, 1, '2022-03-03 08:07:17', '2022-05-12 06:24:57'),
(2771, 71, 31, 5, 1, 225.00, 225.00, 0, NULL, 1, '2022-05-03 16:44:32', '2022-05-12 06:24:57'),
(2797, 72, 14, 2, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2798, 72, 14, 3, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2799, 72, 14, 4, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2800, 72, 14, 5, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2801, 72, 14, 6, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2802, 72, 13, 2, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2803, 72, 13, 3, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2804, 72, 13, 4, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2805, 72, 13, 5, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2806, 72, 13, 6, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2807, 72, 11, 2, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2808, 72, 11, 3, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2809, 72, 11, 4, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2810, 72, 11, 5, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2811, 72, 11, 6, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2812, 72, 57, 2, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2813, 72, 57, 3, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2814, 72, 57, 4, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2815, 72, 57, 5, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2816, 72, 57, 6, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2817, 72, 17, 2, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2818, 72, 17, 3, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2819, 72, 17, 4, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2820, 72, 17, 5, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2821, 72, 17, 6, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2822, 72, 24, 2, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2823, 72, 24, 3, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2824, 72, 24, 4, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2825, 72, 24, 5, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2826, 72, 24, 6, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2827, 72, 18, 2, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2828, 72, 18, 3, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2829, 72, 18, 4, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2830, 72, 18, 5, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2831, 72, 18, 6, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2832, 72, 4, 2, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2833, 72, 4, 3, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2834, 72, 4, 4, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2835, 72, 4, 5, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2836, 72, 4, 6, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(2837, 73, 58, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2838, 73, 58, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2839, 73, 58, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2840, 73, 58, 5, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2841, 73, 58, 6, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2842, 73, 14, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2843, 73, 14, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2844, 73, 14, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2845, 73, 14, 5, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2846, 73, 14, 6, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2847, 73, 13, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2848, 73, 13, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2849, 73, 13, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2850, 73, 13, 5, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2851, 73, 13, 6, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2852, 73, 11, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2853, 73, 11, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2854, 73, 11, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2855, 73, 11, 5, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57');
INSERT INTO `product_color_sizes` (`id`, `product_id`, `color`, `size`, `assorted_flag`, `price`, `offer_price`, `stock`, `code`, `status`, `created_at`, `updated_at`) VALUES
(2856, 73, 11, 6, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2857, 73, 57, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2858, 73, 57, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2859, 73, 57, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2860, 73, 57, 5, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2861, 73, 57, 6, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2862, 73, 17, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2863, 73, 17, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2864, 73, 17, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2865, 73, 17, 5, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2866, 73, 17, 6, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2867, 73, 24, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2868, 73, 24, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2869, 73, 24, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2870, 73, 24, 5, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2871, 73, 24, 6, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2872, 73, 18, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2873, 73, 18, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2874, 73, 18, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2875, 73, 18, 5, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2876, 73, 18, 6, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2877, 73, 4, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2878, 73, 4, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2879, 73, 4, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2880, 73, 4, 5, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2881, 73, 4, 6, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2882, 74, 58, 2, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2883, 74, 58, 3, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2884, 74, 58, 4, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2885, 74, 58, 5, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2886, 74, 58, 6, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2887, 74, 14, 2, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2888, 74, 14, 3, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2889, 74, 14, 4, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2890, 74, 14, 5, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2891, 74, 14, 6, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2892, 74, 13, 2, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2893, 74, 13, 3, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2894, 74, 13, 4, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2895, 74, 13, 5, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2896, 74, 13, 6, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2897, 74, 11, 2, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2898, 74, 11, 3, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2899, 74, 11, 4, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2900, 74, 11, 5, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2901, 74, 11, 6, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2902, 74, 57, 2, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2903, 74, 57, 3, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2904, 74, 57, 4, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2905, 74, 57, 5, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2906, 74, 57, 6, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2907, 74, 17, 2, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2908, 74, 17, 3, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2909, 74, 17, 4, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2910, 74, 17, 5, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2911, 74, 17, 6, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2912, 74, 24, 2, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2913, 74, 24, 3, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2914, 74, 24, 4, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2915, 74, 24, 5, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2916, 74, 24, 6, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2917, 74, 18, 2, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2918, 74, 18, 3, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2919, 74, 18, 4, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2920, 74, 18, 5, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2921, 74, 18, 6, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2922, 74, 4, 2, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2923, 74, 4, 3, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2924, 74, 4, 4, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2925, 74, 4, 5, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2926, 74, 4, 6, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2927, 75, 58, 2, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2928, 75, 58, 3, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2929, 75, 58, 4, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2930, 75, 58, 5, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2931, 75, 58, 6, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2932, 75, 14, 2, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2933, 75, 14, 3, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2934, 75, 14, 4, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2935, 75, 14, 5, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2936, 75, 14, 6, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2937, 75, 13, 2, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2938, 75, 13, 3, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2939, 75, 13, 4, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2940, 75, 13, 5, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2941, 75, 13, 6, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2942, 75, 11, 2, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2943, 75, 11, 3, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2944, 75, 11, 4, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2945, 75, 11, 5, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2946, 75, 11, 6, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2947, 75, 57, 2, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2948, 75, 57, 3, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2949, 75, 57, 4, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2950, 75, 57, 5, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2951, 75, 57, 6, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2952, 75, 17, 2, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2953, 75, 17, 3, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2954, 75, 17, 4, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2955, 75, 17, 5, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2956, 75, 17, 6, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2957, 75, 24, 2, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2958, 75, 24, 3, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2959, 75, 24, 4, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2960, 75, 24, 5, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2961, 75, 24, 6, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2962, 75, 18, 2, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2963, 75, 18, 3, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2964, 75, 18, 4, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2965, 75, 18, 5, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2966, 75, 18, 6, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2967, 75, 4, 2, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2968, 75, 4, 3, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2969, 75, 4, 4, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2970, 75, 4, 5, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2971, 75, 4, 6, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2972, 76, 58, 2, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2973, 76, 58, 3, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2974, 76, 58, 4, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2975, 76, 58, 5, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2976, 76, 58, 6, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2977, 76, 14, 2, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2978, 76, 14, 3, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2979, 76, 14, 4, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2980, 76, 14, 5, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2981, 76, 14, 6, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2982, 76, 13, 2, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2983, 76, 13, 3, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2984, 76, 13, 4, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2985, 76, 13, 5, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2986, 76, 13, 6, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2987, 76, 11, 2, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2988, 76, 11, 3, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2989, 76, 11, 4, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2990, 76, 11, 5, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2991, 76, 11, 6, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2992, 76, 57, 2, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2993, 76, 57, 3, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2994, 76, 57, 4, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2995, 76, 57, 5, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2996, 76, 57, 6, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2997, 76, 17, 2, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2998, 76, 17, 3, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(2999, 76, 17, 4, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3000, 76, 17, 5, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3001, 76, 17, 6, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3002, 76, 24, 2, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3003, 76, 24, 3, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3004, 76, 24, 4, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3005, 76, 24, 5, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3006, 76, 24, 6, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3007, 76, 18, 2, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3008, 76, 18, 3, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3009, 76, 18, 4, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3010, 76, 18, 5, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3011, 76, 18, 6, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3012, 76, 4, 2, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3013, 76, 4, 3, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3014, 76, 4, 4, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3015, 76, 4, 5, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3016, 76, 4, 6, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3017, 78, 58, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3018, 78, 58, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3019, 78, 58, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3020, 78, 58, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3021, 78, 58, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3022, 78, 14, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3023, 78, 14, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3024, 78, 14, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3025, 78, 14, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3026, 78, 14, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3027, 78, 13, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3028, 78, 13, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3029, 78, 13, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3030, 78, 13, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3031, 78, 13, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3032, 78, 11, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3033, 78, 11, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3034, 78, 11, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3035, 78, 11, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3036, 78, 11, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3037, 78, 57, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3038, 78, 57, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3039, 78, 57, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3040, 78, 57, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3041, 78, 57, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3042, 78, 17, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3043, 78, 17, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3044, 78, 17, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3045, 78, 17, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3046, 78, 17, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3047, 78, 24, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3048, 78, 24, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3049, 78, 24, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3050, 78, 24, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3051, 78, 24, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3052, 78, 18, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3053, 78, 18, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3054, 78, 18, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3055, 78, 18, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3056, 78, 18, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3057, 78, 4, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3058, 78, 4, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3059, 78, 4, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3060, 78, 4, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3061, 78, 4, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3062, 77, 17, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3063, 77, 17, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3064, 77, 17, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3065, 77, 17, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3066, 77, 17, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3067, 77, 54, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3068, 77, 54, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3069, 77, 54, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3070, 77, 54, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3071, 77, 54, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3072, 77, 13, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3073, 77, 13, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3074, 77, 13, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3075, 77, 13, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3076, 77, 13, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3077, 77, 42, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3078, 77, 42, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3079, 77, 42, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3080, 77, 42, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3081, 77, 42, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3082, 77, 57, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3083, 77, 57, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3084, 77, 57, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3085, 77, 57, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3086, 77, 57, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3087, 79, 58, 2, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3088, 79, 58, 3, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3089, 79, 58, 4, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3090, 79, 58, 5, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3091, 79, 58, 6, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3092, 79, 24, 2, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3093, 79, 24, 3, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3094, 79, 24, 4, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3095, 79, 24, 5, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3096, 79, 24, 6, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3097, 79, 13, 2, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3098, 79, 13, 3, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3099, 79, 13, 4, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3100, 79, 13, 5, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3101, 79, 13, 6, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3102, 79, 11, 2, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3103, 79, 11, 3, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3104, 79, 11, 4, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3105, 79, 11, 5, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3106, 79, 11, 6, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3107, 79, 4, 2, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3108, 79, 4, 3, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3109, 79, 4, 4, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3110, 79, 4, 5, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3111, 79, 4, 6, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3112, 79, 16, 2, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3113, 79, 16, 3, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3114, 79, 16, 4, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3115, 79, 16, 5, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3116, 79, 16, 6, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3117, 80, 58, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3118, 80, 58, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3119, 80, 58, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3120, 80, 58, 5, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3121, 80, 58, 6, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3122, 80, 24, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3123, 80, 24, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3124, 80, 24, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3125, 80, 24, 5, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3126, 80, 24, 6, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3127, 80, 13, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3128, 80, 13, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3129, 80, 13, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3130, 80, 13, 5, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3131, 80, 13, 6, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3132, 80, 11, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3133, 80, 11, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3134, 80, 11, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3135, 80, 11, 5, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3136, 80, 11, 6, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3137, 80, 4, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3138, 80, 4, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3139, 80, 4, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3140, 80, 4, 5, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3141, 80, 4, 6, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3142, 80, 16, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3143, 80, 16, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3144, 80, 16, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3145, 80, 16, 5, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3146, 80, 16, 6, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 07:37:17', '2022-05-12 06:24:57'),
(3147, 68, 11, 1, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3148, 68, 11, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3149, 68, 11, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3150, 68, 11, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3151, 68, 11, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3152, 68, 64, 1, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3153, 68, 64, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3154, 68, 64, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3155, 68, 64, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3156, 68, 64, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3157, 68, 58, 1, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3158, 68, 58, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3159, 68, 58, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3160, 68, 58, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3161, 68, 58, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3162, 87, 58, 2, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3163, 87, 58, 3, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3164, 87, 58, 4, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3165, 87, 58, 5, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3166, 87, 58, 6, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3167, 87, 24, 2, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3168, 87, 24, 3, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3169, 87, 24, 4, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3170, 87, 24, 5, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3171, 87, 24, 6, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3172, 87, 13, 2, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3173, 87, 13, 3, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3174, 87, 13, 4, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3175, 87, 13, 5, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3176, 87, 13, 6, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3177, 87, 11, 2, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3178, 87, 11, 3, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3179, 87, 11, 4, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3180, 87, 11, 5, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3181, 87, 11, 6, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3182, 87, 17, 2, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3183, 87, 17, 3, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3184, 87, 17, 4, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3185, 87, 17, 5, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3186, 87, 17, 6, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3187, 87, 16, 2, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3188, 87, 16, 3, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3189, 87, 16, 4, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3190, 87, 16, 5, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3191, 87, 16, 6, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3192, 87, 14, 2, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3193, 87, 14, 3, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3194, 87, 14, 4, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3195, 87, 14, 5, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3196, 87, 14, 6, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3197, 87, 7, 2, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3198, 87, 7, 3, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3199, 87, 7, 4, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3200, 87, 7, 5, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3201, 87, 7, 6, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3202, 87, 60, 2, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3203, 87, 60, 3, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3204, 87, 60, 4, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3205, 87, 60, 5, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3206, 87, 60, 6, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3207, 88, 60, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3208, 88, 60, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3209, 88, 60, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3210, 88, 60, 5, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3211, 88, 60, 6, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3212, 88, 24, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3213, 88, 24, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3214, 88, 24, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3215, 88, 24, 5, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3216, 88, 24, 6, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3217, 88, 13, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3218, 88, 13, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3219, 88, 13, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3220, 88, 13, 5, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3221, 88, 13, 6, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3222, 88, 11, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3223, 88, 11, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3224, 88, 11, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3225, 88, 11, 5, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3226, 88, 11, 6, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3227, 88, 17, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3228, 88, 17, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3229, 88, 17, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3230, 88, 17, 5, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3231, 88, 17, 6, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3232, 88, 16, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3233, 88, 16, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3234, 88, 16, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3235, 88, 16, 5, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3236, 88, 16, 6, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3237, 88, 14, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3238, 88, 14, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3239, 88, 14, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3240, 88, 14, 5, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3241, 88, 14, 6, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3242, 88, 58, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3243, 88, 58, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3244, 88, 58, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3245, 88, 58, 5, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3246, 88, 58, 6, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3247, 88, 64, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3248, 88, 64, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3249, 88, 64, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3250, 88, 64, 5, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3251, 88, 64, 6, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3252, 89, 58, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3253, 89, 58, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3254, 89, 58, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3255, 89, 58, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3256, 89, 58, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3257, 89, 24, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3258, 89, 24, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3259, 89, 24, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3260, 89, 24, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3261, 89, 24, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3262, 89, 13, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3263, 89, 13, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3264, 89, 13, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3265, 89, 13, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3266, 89, 13, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3267, 89, 11, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3268, 89, 11, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3269, 89, 11, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3270, 89, 11, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3271, 89, 11, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3272, 89, 17, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3273, 89, 17, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3274, 89, 17, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3275, 89, 17, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3276, 89, 17, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3277, 89, 16, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3278, 89, 16, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3279, 89, 16, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3280, 89, 16, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3281, 89, 16, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3282, 89, 14, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3283, 89, 14, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3284, 89, 14, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3285, 89, 14, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3286, 89, 14, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3287, 89, 19, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3288, 89, 19, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3289, 89, 19, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3290, 89, 19, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3291, 89, 19, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3292, 89, 60, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3293, 89, 60, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3294, 89, 60, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3295, 89, 60, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3296, 89, 60, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 02:07:17', '2022-05-12 06:24:57'),
(3297, 66, 13, 1, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3298, 66, 13, 2, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3299, 66, 13, 3, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3300, 66, 13, 4, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3301, 66, 13, 5, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3302, 66, 12, 1, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3303, 66, 12, 2, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3304, 66, 12, 3, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3305, 66, 12, 4, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3306, 66, 12, 5, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3307, 66, 18, 1, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3308, 66, 18, 2, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3309, 66, 18, 3, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3310, 66, 18, 4, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3311, 66, 18, 5, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3312, 66, 4, 1, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3313, 66, 4, 2, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3314, 66, 4, 3, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3315, 66, 4, 4, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3316, 66, 4, 5, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3317, 81, 13, 2, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3318, 81, 13, 3, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3319, 81, 13, 4, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3320, 81, 13, 5, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3321, 81, 13, 6, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3322, 81, 58, 2, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3323, 81, 58, 3, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3324, 81, 58, 4, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3325, 81, 58, 5, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3326, 81, 58, 6, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3327, 81, 60, 2, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3328, 81, 60, 3, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3329, 81, 60, 4, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3330, 81, 60, 5, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3331, 81, 60, 6, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3332, 81, 64, 2, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3333, 81, 64, 3, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3334, 81, 64, 4, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3335, 81, 64, 5, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3336, 81, 64, 6, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3337, 81, 32, 2, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3338, 81, 32, 3, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3339, 81, 32, 4, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3340, 81, 32, 5, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3341, 81, 32, 6, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3342, 81, 10, 2, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3343, 81, 10, 3, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3344, 81, 10, 4, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3345, 81, 10, 5, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3346, 81, 10, 6, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3347, 81, 42, 2, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3348, 81, 42, 3, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3349, 81, 42, 4, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3350, 81, 42, 5, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3351, 81, 42, 6, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3352, 81, 26, 2, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3353, 81, 26, 3, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3354, 81, 26, 4, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3355, 81, 26, 5, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3356, 81, 26, 6, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 18:37:17', '2022-05-12 06:24:57'),
(3357, 82, 11, 2, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3358, 82, 11, 3, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3359, 82, 11, 4, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3360, 82, 11, 5, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3361, 82, 11, 6, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3362, 82, 13, 2, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3363, 82, 13, 3, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3364, 82, 13, 4, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3365, 82, 13, 5, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3366, 82, 13, 6, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3367, 82, 58, 2, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3368, 82, 58, 3, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3369, 82, 58, 4, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3370, 82, 58, 5, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3371, 82, 58, 6, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3372, 82, 60, 2, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3373, 82, 60, 3, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3374, 82, 60, 4, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3375, 82, 60, 5, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3376, 82, 60, 6, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3377, 82, 64, 2, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3378, 82, 64, 3, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3379, 82, 64, 4, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3380, 82, 64, 5, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3381, 82, 64, 6, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3382, 82, 32, 2, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3383, 82, 32, 3, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3384, 82, 32, 4, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3385, 82, 32, 5, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57');
INSERT INTO `product_color_sizes` (`id`, `product_id`, `color`, `size`, `assorted_flag`, `price`, `offer_price`, `stock`, `code`, `status`, `created_at`, `updated_at`) VALUES
(3386, 82, 32, 6, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3387, 82, 10, 2, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3388, 82, 10, 3, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3389, 82, 10, 4, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3390, 82, 10, 5, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3391, 82, 10, 6, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3392, 82, 42, 2, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3393, 82, 42, 3, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3394, 82, 42, 4, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3395, 82, 42, 5, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3396, 82, 42, 6, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3397, 82, 26, 2, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3398, 82, 26, 3, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3399, 82, 26, 4, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3400, 82, 26, 5, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3401, 82, 26, 6, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3402, 83, 11, 2, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3403, 83, 11, 3, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3404, 83, 11, 4, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3405, 83, 11, 5, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3406, 83, 11, 6, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3407, 83, 13, 2, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3408, 83, 13, 3, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3409, 83, 13, 4, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3410, 83, 13, 5, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3411, 83, 13, 6, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3412, 83, 58, 2, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3413, 83, 58, 3, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3414, 83, 58, 4, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3415, 83, 58, 5, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3416, 83, 58, 6, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3417, 83, 60, 2, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3418, 83, 60, 3, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3419, 83, 60, 4, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3420, 83, 60, 5, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3421, 83, 60, 6, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3422, 83, 64, 2, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3423, 83, 64, 3, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3424, 83, 64, 4, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3425, 83, 64, 5, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3426, 83, 64, 6, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3427, 83, 32, 2, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3428, 83, 32, 3, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3429, 83, 32, 4, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3430, 83, 32, 5, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3431, 83, 32, 6, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3432, 83, 10, 2, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3433, 83, 10, 3, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3434, 83, 10, 4, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3435, 83, 10, 5, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3436, 83, 10, 6, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3437, 83, 42, 2, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3438, 83, 42, 3, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3439, 83, 42, 4, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3440, 83, 42, 5, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3441, 83, 42, 6, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3442, 83, 26, 2, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3443, 83, 26, 3, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3444, 83, 26, 4, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3445, 83, 26, 5, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57'),
(3446, 83, 26, 6, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:07:17', '2022-05-12 06:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/product/2018121750-1646374037.catago_2.png', 1, '2022-03-04 00:37:17', '2022-05-12 06:24:57'),
(2, 1, 'uploads/product/1835149020-1646374037.catago_2.png', 1, '2022-03-04 00:37:17', '2022-05-12 06:24:57'),
(3, 2, 'uploads/product/1297765330-1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 1, '2022-03-07 07:34:52', '2022-05-12 06:24:57'),
(4, 2, 'uploads/product/382303736-1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 1, '2022-03-07 07:34:52', '2022-05-12 06:24:57'),
(5, 2, 'uploads/product/96013214-1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 1, '2022-03-07 07:34:52', '2022-05-12 06:24:57'),
(6, 2, 'uploads/product/1468366963-1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 1, '2022-03-07 07:34:52', '2022-05-12 06:24:57'),
(7, 2, 'uploads/product/592835868-1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 1, '2022-03-07 07:34:52', '2022-05-12 06:24:57'),
(8, 3, 'uploads/product/133599693-1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 1, '2022-03-07 07:39:28', '2022-05-12 06:24:57'),
(9, 3, 'uploads/product/1865585589-1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 1, '2022-03-07 07:39:28', '2022-05-12 06:24:57'),
(10, 3, 'uploads/product/286206409-1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 1, '2022-03-07 07:39:28', '2022-05-12 06:24:57'),
(11, 3, 'uploads/product/1256424426-1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 1, '2022-03-07 07:39:28', '2022-05-12 06:24:57'),
(12, 71, 'uploads\\product\\product_images\\141\\blue.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(13, 71, 'uploads\\product\\product_images\\141\\red.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(14, 71, 'uploads\\product\\product_images\\141\\green.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(15, 71, 'uploads\\product\\product_images\\141\\orange.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(16, 71, 'uploads\\product\\product_images\\141\\yellow.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(17, 71, 'uploads\\product\\product_images\\141\\purple.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(18, 79, 'uploads\\product\\product_images\\262\\ONN-Grande-262-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(19, 79, 'uploads\\product\\product_images\\262\\ONN-Grande-262-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(20, 79, 'uploads\\product\\product_images\\262\\ONN-Grande-262-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(21, 79, 'uploads\\product\\product_images\\262\\ONN-Grande-262-5.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(22, 80, 'uploads\\product\\product_images\\264\\ONN-Grande-264-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(23, 80, 'uploads\\product\\product_images\\264\\ONN-Grande-264-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(24, 80, 'uploads\\product\\product_images\\264\\ONN-Grande-264-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(25, 80, 'uploads\\product\\product_images\\264\\ONN-Grande-264-5.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(26, 81, 'uploads\\product\\product_images\\271\\271-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(27, 81, 'uploads\\product\\product_images\\271\\271-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(28, 81, 'uploads\\product\\product_images\\271\\271-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(29, 81, 'uploads\\product\\product_images\\271\\271-5.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(30, 82, 'uploads\\product\\product_images\\272\\272-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(31, 82, 'uploads\\product\\product_images\\272\\272-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(32, 82, 'uploads\\product\\product_images\\272\\272-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(33, 82, 'uploads\\product\\product_images\\272\\272-5.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(34, 83, 'uploads\\product\\product_images\\273\\273-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(35, 83, 'uploads\\product\\product_images\\273\\273-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(36, 83, 'uploads\\product\\product_images\\273\\273-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(37, 83, 'uploads\\product\\product_images\\273\\273-5.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(38, 84, 'uploads\\product\\product_images\\274\\274-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(39, 84, 'uploads\\product\\product_images\\274\\274-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(40, 84, 'uploads\\product\\product_images\\274\\274-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(41, 84, 'uploads\\product\\product_images\\274\\274-5.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(42, 13, 'uploads\\product\\product_images\\422\\422-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(43, 13, 'uploads\\product\\product_images\\422\\422-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(44, 13, 'uploads\\product\\product_images\\422\\422-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(45, 13, 'uploads\\product\\product_images\\422\\422-5.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(46, 13, 'uploads\\product\\product_images\\422\\422-6.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(47, 13, 'uploads\\product\\product_images\\422\\422-7.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(48, 13, 'uploads\\product\\product_images\\422\\422-8.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(49, 13, 'uploads\\product\\product_images\\422\\422-9.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(50, 13, 'uploads\\product\\product_images\\422\\422-10.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(51, 13, 'uploads\\product\\product_images\\422\\422-11.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(52, 13, 'uploads\\product\\product_images\\422\\422-12.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(53, 13, 'uploads\\product\\product_images\\422\\422-13.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(54, 15, 'uploads/product/product_images/431/431-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(55, 15, 'uploads/product/product_images/431/431-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(56, 15, 'uploads/product/product_images/431/431-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(57, 15, 'uploads/product/product_images/431/431-5.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(58, 15, 'uploads/product/product_images/431/431-6.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(59, 15, 'uploads/product/product_images/431/431-7.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(60, 15, 'uploads/product/product_images/431/431-8.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(61, 15, 'uploads/product/product_images/431/431-9.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(62, 15, 'uploads/product/product_images/431/431-10.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(63, 15, 'uploads/product/product_images/431/431-11.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(64, 15, 'uploads/product/product_images/431/431-12.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(65, 15, 'uploads/product/product_images/431/431-13.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(66, 15, 'uploads/product/product_images/431/431-14.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(67, 15, 'uploads/product/product_images/431/431-15.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(68, 15, 'uploads/product/product_images/431/431-16.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(69, 15, 'uploads/product/product_images/431/431-17.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(70, 15, 'uploads/product/product_images/431/431-18.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(71, 15, 'uploads/product/product_images/431/431-19.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(72, 15, 'uploads/product/product_images/431/431-20.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(73, 15, 'uploads/product/product_images/431/431-21.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(74, 15, 'uploads/product/product_images/431/431-22.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(75, 15, 'uploads/product/product_images/431/431-23.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(76, 15, 'uploads/product/product_images/431/431-24.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(77, 15, 'uploads/product/product_images/431/431-25.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(78, 15, 'uploads/product/product_images/431/431-26.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(79, 15, 'uploads/product/product_images/431/431-27.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(80, 15, 'uploads/product/product_images/431/431-28.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(81, 16, 'uploads/product/product_images/432/432-28.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(82, 16, 'uploads/product/product_images/432/432-27.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(83, 16, 'uploads/product/product_images/432/432-26.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(84, 16, 'uploads/product/product_images/432/432-25.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(85, 16, 'uploads/product/product_images/432/432-24.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(86, 16, 'uploads/product/product_images/432/432-23.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(87, 16, 'uploads/product/product_images/432/432-22.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(88, 16, 'uploads/product/product_images/432/432-21.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(89, 16, 'uploads/product/product_images/432/432-20.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(90, 16, 'uploads/product/product_images/432/432-19.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(91, 16, 'uploads/product/product_images/432/432-18.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(92, 16, 'uploads/product/product_images/432/432-17.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(93, 16, 'uploads/product/product_images/432/432-16.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(94, 16, 'uploads/product/product_images/432/432-15.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(95, 16, 'uploads/product/product_images/432/432-14.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(96, 16, 'uploads/product/product_images/432/432-13.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(97, 16, 'uploads/product/product_images/432/432-12.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(98, 16, 'uploads/product/product_images/432/432-11.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(99, 16, 'uploads/product/product_images/432/432-10.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(100, 16, 'uploads/product/product_images/432/432-9.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(101, 16, 'uploads/product/product_images/432/432-8.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(102, 16, 'uploads/product/product_images/432/432-7.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(103, 16, 'uploads/product/product_images/432/432-6.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(104, 16, 'uploads/product/product_images/432/432-5.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(105, 16, 'uploads/product/product_images/432/432-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(106, 16, 'uploads/product/product_images/432/432-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(107, 16, 'uploads/product/product_images/432/432-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(108, 57, 'uploads/product/product_images/741/741-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(109, 57, 'uploads/product/product_images/741/741-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(110, 57, 'uploads/product/product_images/741/741-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(111, 57, 'uploads/product/product_images/741/741-5.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(112, 57, 'uploads/product/product_images/741/741-6.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(113, 57, 'uploads/product/product_images/741/741-7.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(114, 57, 'uploads/product/product_images/741/741-8.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(115, 57, 'uploads/product/product_images/741/741-9.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(116, 58, 'uploads/product/product_images/742/742-9.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(117, 58, 'uploads/product/product_images/742/742-8.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(118, 58, 'uploads/product/product_images/742/742-7.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(119, 58, 'uploads/product/product_images/742/742-6.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(120, 58, 'uploads/product/product_images/742/742-5.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(121, 58, 'uploads/product/product_images/742/742-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(122, 58, 'uploads/product/product_images/742/742-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(123, 58, 'uploads/product/product_images/742/742-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(124, 91, 'uploads/product/product_images/751/751-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(125, 92, 'uploads/product/product_images/752/752-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(126, 93, 'uploads/product/product_images/753/753-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(127, 94, 'uploads/product/product_images/754/754-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(128, 95, 'uploads/product/product_images/755/755-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(129, 97, 'uploads/product/product_images/757/757-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(130, 98, 'uploads/product/product_images/758/758-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(131, 99, 'uploads/product/product_images/759/759-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(132, 100, 'uploads/product/product_images/760/760-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(133, 105, 'uploads/product/product_images/776/776-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(134, 105, 'uploads/product/product_images/776/776-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(135, 105, 'uploads/product/product_images/776/776-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(136, 105, 'uploads/product/product_images/776/776-5.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(137, 32, 'uploads/product/product_images/1021/1021-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(138, 32, 'uploads/product/product_images/1021/1021-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(139, 32, 'uploads/product/product_images/1021/1021-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(140, 36, 'uploads/product/product_images/1031/1031-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(141, 36, 'uploads/product/product_images/1031/1031-3.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(142, 36, 'uploads/product/product_images/1031/1031-4.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(143, 37, 'uploads/product/product_images/1032/1032-2.jpg', 1, '2022-03-22 09:02:32', '2022-05-12 06:24:57'),
(144, 142, 'uploads/product/773309581-1651060067.002-polo-shirt.png', 1, '2022-04-27 11:47:47', '2022-05-12 06:24:57'),
(145, 3, 'uploads/product/720033712-1653395020.img2.jpg', 1, '2022-05-24 12:23:40', '2022-05-24 12:23:40'),
(146, 3, 'uploads/product/200432154-1653395020.img2.jpg', 1, '2022-05-24 12:23:40', '2022-05-24 12:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `position`, `created_at`, `updated_at`) VALUES
(1, 140, 0, '2022-05-04 02:36:40', '2022-05-12 06:24:57'),
(2, 34, 0, '2022-05-04 02:36:44', '2022-05-12 06:24:57'),
(3, 58, 0, '2022-05-04 02:36:50', '2022-05-12 06:24:57'),
(4, 71, 0, '2022-05-04 02:36:55', '2022-05-12 06:24:57'),
(6, 7, 0, '2022-05-10 10:13:32', '2022-05-12 06:24:57'),
(7, 9, 0, '2022-05-10 10:13:54', '2022-05-12 06:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `page_heading`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'about', 'About us page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-02 13:47:50', '2022-05-12 06:24:57'),
(2, 'terms', 'Terms page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-02 13:47:50', '2022-05-12 06:24:57'),
(3, 'privacy', 'Privacy page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-02 13:47:50', '2022-05-12 06:24:57'),
(4, 'cancellation_and_refund', 'Cancellation & Refund page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-02 13:47:50', '2022-05-12 06:24:57'),
(5, 'return', 'Return page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-02 13:47:50', '2022-05-12 06:24:57'),
(6, 'address', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, '2022-03-02 13:47:50', '2022-05-12 06:24:57'),
(7, 'contact_no', '9876543210', 1, '2022-03-02 13:47:50', '2022-05-12 06:24:57'),
(8, 'email_id', 'help@onn.com', 1, '2022-03-02 13:47:50', '2022-05-12 06:24:57'),
(9, 'google_map_iframe', NULL, 1, '2022-03-02 13:47:50', '2022-05-12 06:24:57'),
(10, 'fb_link', 'https://www.facebook.com/LuxInnerwear/', 1, '2022-03-02 13:47:50', '2022-05-12 06:24:57'),
(11, 'twitter_link', 'https://twitter.com/Lux_Innerwear', 1, '2022-03-02 13:47:50', '2022-05-12 06:24:57'),
(12, 'youtube_link', 'https://www.youtube.com/channel/UCsHxH5IoJxIipaNcv1Eg1wA', 1, '2022-03-02 13:47:50', '2022-05-12 06:24:57'),
(13, 'insta_link', 'https://instagram.com/lux_cozi_innerwear?igshid=9ensolghw1cq', 1, '2022-03-02 13:47:50', '2022-05-12 06:24:57'),
(14, 'disclaimer', 'Disclaimer page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-17 07:24:21', '2022-05-12 06:24:57'),
(15, 'security', 'Security page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-17 07:24:21', '2022-05-12 06:24:57'),
(16, 'shipping_delivery', 'Shipping& delivery page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-17 08:07:07', '2022-05-12 06:24:57'),
(17, 'payment_voucher_promotion', 'payment, voucher & promotions page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-17 08:07:44', '2022-05-12 06:24:57'),
(18, 'service_contact', 'services & contacts page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-17 08:07:44', '2022-05-12 06:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'XS', 1, '2022-03-04 00:20:48', '2022-05-12 06:24:57'),
(2, 'S', 1, '2022-03-04 00:20:48', '2022-05-12 06:24:57'),
(3, 'M', 1, '2022-03-04 00:20:48', '2022-05-12 06:24:57'),
(4, 'L', 1, '2022-03-04 00:20:48', '2022-05-12 06:24:57'),
(5, 'XL', 1, '2022-03-04 00:20:48', '2022-05-12 06:24:57'),
(6, '2XL', 1, '2022-03-04 00:20:48', '2022-05-12 06:24:57'),
(7, '3XL', 1, '2022-03-10 04:30:59', '2022-05-12 06:24:57'),
(8, '4XL', 1, '2022-03-10 04:30:59', '2022-05-12 06:24:57'),
(9, '1 yr', 1, '2022-03-21 08:16:06', '2022-05-12 06:24:57'),
(10, '2 yr', 1, '2022-03-21 08:16:33', '2022-05-12 06:24:57'),
(11, '3 yr', 1, '2022-03-21 08:16:33', '2022-05-12 06:24:57'),
(12, '4 yr', 1, '2022-03-21 08:16:33', '2022-05-12 06:24:57'),
(13, '5 yr', 1, '2022-03-21 08:16:33', '2022-05-12 06:24:57'),
(14, '6 yr', 1, '2022-03-21 08:16:33', '2022-05-12 06:24:57'),
(15, '7 yr', 1, '2022-03-21 08:16:33', '2022-05-12 06:24:57'),
(16, '8 yr', 1, '2022-03-21 08:16:34', '2022-05-12 06:24:57'),
(17, '9 yr', 1, '2022-03-21 08:16:34', '2022-05-12 06:24:57'),
(18, '10 yr', 1, '2022-03-21 08:16:34', '2022-05-12 06:24:57'),
(19, '11 yr', 1, '2022-03-21 08:16:34', '2022-05-12 06:24:57'),
(20, '12 yr', 1, '2022-03-21 08:16:34', '2022-05-12 06:24:57'),
(21, '13 yr', 1, '2022-03-21 08:16:34', '2022-05-12 06:24:57'),
(22, '14 yr', 1, '2022-03-21 08:16:34', '2022-05-12 06:24:57'),
(23, 'FREE SIZE', 1, '2022-03-30 09:34:57', '2022-05-12 06:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `staff_allowance`
--

CREATE TABLE `staff_allowance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) NOT NULL,
  `designation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` double(10,2) DEFAULT 0.00,
  `house_rent` double(10,2) DEFAULT 0.00,
  `convenience` double(10,2) DEFAULT 0.00,
  `dearness` double(10,2) DEFAULT 0.00,
  `medical` double(10,2) DEFAULT 0.00,
  `overtime` double(10,2) DEFAULT 0.00,
  `city_compensatory` double(10,2) DEFAULT 0.00,
  `project` double(10,2) DEFAULT 0.00,
  `food` double(10,2) DEFAULT 0.00,
  `special` double(10,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `start_end_days`
--

CREATE TABLE `start_end_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_lat` double NOT NULL,
  `end_lat` double NOT NULL,
  `start_lng` double NOT NULL,
  `end_lng` double NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `start_end_days`
--

INSERT INTO `start_end_days` (`id`, `user_id`, `start_location`, `end_location`, `start_lat`, `end_lat`, `start_lng`, `end_lng`, `start_date`, `end_date`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(3, 5, 'Mumbai', 'Mumbai', 19.1582, 19.9597, 72.9597, 72.9599, '2022-03-22', '2022-03-23', '10:04:34', '01:04:34', '2022-04-25 01:28:37', '2022-04-25 01:28:37'),
(4, 5, 'East Mumbai', 'Mumbai', 19.1582, 19.9597, 72.9597, 72.9599, '2022-03-23', '2022-03-23', '02:04:34', '05:04:34', '2022-04-25 01:30:21', '2022-04-25 01:30:21'),
(5, 5, 'Delhi', 'Delhi', 28.1582, 28.9597, 77.9597, 77.9599, '2022-03-24', '2022-03-24', '02:04:34', '05:04:34', '2022-04-25 01:32:24', '2022-04-25 01:32:24'),
(6, 6, 'Delhi', 'Delhi', 28.1582, 28.9597, 77.9597, 77.9599, '2022-03-24', '2022-03-24', '02:04:34', '05:04:34', '2022-04-26 04:14:30', '2022-04-26 04:14:30'),
(7, 6, 'Delhi', 'mumbai', 28.1582, 28.9597, 77.9597, 77.9599, '2022-03-24', '2022-03-24', '02:04:34', '05:04:34', '2022-04-26 04:14:30', '2022-04-26 04:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_OCC_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `contact` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_order_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `user_id`, `store_name`, `slug`, `bussiness_name`, `store_OCC_number`, `contact`, `email`, `whatsapp`, `address`, `area`, `state`, `city`, `pin`, `no_order_reason`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'RD Traders', 'rd-traders', 'test business name', 'ST2022115', '8945213067', 'dipti@gmail.com', '8877451203', 'prasanta nagar', 'lt nagar', 'mumbai', 'pune', '788563', 'company related issue', 'uploads/store/1647953264.1966591096.Screenshot from 2021-11-15 17-08-36.png', 1, '2022-03-08 05:09:47', '2022-03-29 07:03:35'),
(2, 5, 'Lovies Mega Mart', 'lovies-mega-mart', 'Jp enterprise', 'ST02114589', '4512306698', 'lovies@gmail.com', '4455632107', 'prasanta nagar', 'lt nagar', 'mumbai', 'pune', '788563', NULL, 'uploads/store/1648030547.606822540.Detect Accounting Fraud With AI.png', 1, '2022-03-23 04:43:34', '2022-03-29 07:03:33'),
(3, 5, 'Cartmax', 'cartmax', 'Jagadish Prasad Enterprise Pvt Ltd', 'ST02114588', '7910889632', 'cartmax55@gmail.com', '8920458963', 'Prasanta nagar', 'Lt nagar', 'Delhi', 'East Delhi', '400001', 'Product related issue', 'uploads/store/1650873011.download.jpeg', 1, '2022-04-25 02:20:11', '2022-04-25 02:23:21'),
(4, 5, 'RD Traders', NULL, 'test business name', 'ST2022115', '8945213067', 'dipti@gmail.com', '8877451203', 'prasanta nagar', 'lt nagar', 'mumbai', 'pune', '788563', NULL, NULL, 1, '2022-05-12 13:58:12', '2022-05-12 13:58:12'),
(6, 1, 'test', NULL, 'test business', NULL, '3232323222', 'teststore@gmail.com', '2122552222', 'test address', 'test area', 'test state', 'test city', '123456', NULL, NULL, 1, '2022-05-12 19:35:51', '2022-05-12 19:35:51'),
(7, 1, 'SG Store', NULL, 'Ghosh Enterprise', NULL, '9876532145', 'sg@mail.com', '9876654321', 'Birati', 'Birati', 'West Bengal', 'Kolkata', '700091', NULL, NULL, 1, '2022-05-13 03:36:58', '2022-05-13 03:36:58'),
(8, 1, 'Akash Store', NULL, 'Garment Enterprise', NULL, '9875643215', 'akash.enterprise@gmail.com', '9875643215', 'College Pally', 'Sewli', 'West Bengal', 'Kolkata', '700121', NULL, NULL, 1, '2022-05-13 05:54:44', '2022-05-13 05:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `store_visits`
--

CREATE TABLE `store_visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_mails`
--

CREATE TABLE `subscription_mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `cat_id`, `name`, `image_path`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sub category 1', 'uploads/sub-category/1653386718.img2.jpg', 'sub-category-1', 'This is sub category 1', 1, '2022-05-24 04:35:18', '2022-05-24 04:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `whatsapp_no` bigint(20) DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_pin` int(11) DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_pin` int(11) DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` int(11) DEFAULT NULL,
  `credit_days` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0 COMMENT '1: verified, 0: not verified',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `mobile`, `whatsapp_no`, `billing_address`, `billing_landmark`, `billing_state`, `billing_city`, `billing_pin`, `billing_country`, `shipping_address`, `shipping_landmark`, `shipping_state`, `shipping_city`, `shipping_pin`, `shipping_country`, `gst_number`, `gst_file`, `credit_limit`, `credit_days`, `email_verified_at`, `is_verified`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'testuser@gmail.com', 9874222555, 9874277711, 'Salt alke, sector V', 'Kolkata', 'West Bengal', 'Kokata', 700046, 'India', 'Kokata, salt lake', 'Sector v', 'WB', 'Kolkata', 700001, 'India', 'GSTIN7789741', 'uploads/user/1653468750.gst-medvita.png', 200000, 25, NULL, 0, 1, NULL, '2022-05-25 03:22:30', '2022-05-25 03:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `transaction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `upi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `transaction`, `online_payment_id`, `amount`, `currency`, `method`, `description`, `bank`, `upi`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'TXN_98473IG5YDYRUY8IDY8', NULL, 2400.00, 'INR', 'upi', '', '', '', 1, '2022-03-04 11:14:07', '2022-05-12 06:24:57'),
(2, 0, 34, 'TXN_NHL0CLQJW0HU0K1LAR1M', 'pay_JA7VqFzh3JejBE', 1060.00, 'INR', '', '', '', '', 1, '2022-03-22 11:35:11', '2022-05-12 06:24:57'),
(3, 26, 35, 'TXN_Y237OET0GPAA1CUNEICC', 'pay_JAT3w1Yb7n7qcj', 5529.00, 'INR', '', '', '', '', 1, '2022-03-23 08:40:03', '2022-05-12 06:24:57'),
(4, 26, 36, 'TXN_JR9JG4KYB6XZ6VVQ3PYV', 'pay_JAZFtErXoUaH2B', 4400.00, 'INR', '', '', '', '', 1, '2022-03-23 14:43:32', '2022-05-12 06:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `official_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '1:Customer 2: Supplier 3:Staff',
  `dob` date DEFAULT NULL,
  `anniversary_date` date DEFAULT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id_back` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id_front` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` int(11) DEFAULT NULL,
  `credit_days` int(11) DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_account_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0 COMMENT '1: verified, 0: not verified',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1: active, 0: inactive',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `fname`, `lname`, `alias`, `official_name`, `business_name`, `email`, `employee_id`, `whatsapp_no`, `mobile`, `email_verified_at`, `password`, `address`, `landmark`, `state`, `city`, `pin`, `aadhar_no`, `pan_no`, `type`, `dob`, `anniversary_date`, `otp`, `image`, `gender`, `social_id`, `gst_number`, `gst_file`, `user_id_back`, `user_id_front`, `credit_limit`, `credit_days`, `salary`, `designation`, `bank_account_no`, `is_verified`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'john doe', 'John', 'Doe', '', NULL, '', 'user@user.com', 'EMP1234', '0', '9876543210', NULL, '$2y$10$PFTCRZNJkPvcsRjdgr./i.WoIC8czBuUW2Vuu.Rlea3Yl5ulN1eq.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, '1234', 'uploads/user/1647953721.1734548749.download.jpeg', 'male', NULL, '', '', NULL, '', 0, 0, 0, '', '', 0, 1, NULL, '2022-03-02 00:34:34', '2022-04-26 04:46:04'),
(5, NULL, 'John', 'Doen', '', NULL, '', 'diptitrader@gmail.com', 'EMP4321', '8841520036', '8899654123', NULL, '$2y$10$cyuHLaGcXXLGktDBkJC/NOqz/uqlaDHDZie2eYXfQDDBIB4PKSBMq', 'prasanta nagar', 'Lt road', 'mumbai', 'pune', '788563', '4562265', 'vfvbn456', '1', NULL, NULL, '2862', 'uploads/user/1647329044.596320953.download.jpeg', 'male', NULL, '', '', NULL, '', 0, 0, 0, '', '', 1, 1, NULL, '2022-03-08 02:50:14', '2022-04-25 01:42:38'),
(6, NULL, 'Ravi', 'Shankar', '', NULL, '', 'ravi2020@gmail.com', 'EMP7854', '8777605241', '8745219631', NULL, '$2y$10$TUa/jac16ZICjrwIjKFIFemqMhQtz9URfL7yyI9BOw7aqVT3S.gBq', 'prasanta nagar', 'Lt road', 'mumbai', 'pune', '700002', '745215896300', 'BNhg859', '3', NULL, NULL, NULL, 'uploads/user/1650871644.download.jpeg', 'male', NULL, '', '', NULL, '', 0, 0, 0, '', '', 0, 1, NULL, '2022-04-25 01:57:24', '2022-04-26 05:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_attendances`
--

CREATE TABLE `user_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_attendances`
--

INSERT INTO `user_attendances` (`id`, `user_id`, `location`, `lat`, `lng`, `date`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 5, 'East Mumbai', 19, 1, '2022-03-08', '06:29:22', '07:29:02', '2022-03-09 01:57:18', '2022-04-25 01:39:50'),
(3, 5, 'East Mumbai', 19.1582, 72.9597, '2022-03-24', '10:00:22', '06:30:22', '2022-04-25 01:36:50', '2022-04-25 01:36:50'),
(4, 5, 'East Mumbai', 19.1582, 72.9597, '2022-03-25', '10:00:22', '06:30:22', '2022-04-25 01:37:14', '2022-04-25 01:37:14'),
(5, 5, 'East Delhi', 22.1582, 77.9597, '2022-03-26', '10:00:22', '06:30:22', '2022-04-25 01:38:34', '2022-04-25 01:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_noorderreasons`
--

CREATE TABLE `user_noorderreasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_order_reason_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_noorderreasons`
--

INSERT INTO `user_noorderreasons` (`id`, `no_order_reason_id`, `store_id`, `user_id`, `comment`, `location`, `lat`, `lng`, `date`, `time`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 5, 'Company Related Issue', 'kolkata', '72.9599', '72.9599', '2022-03-23', '01:04:34', '2022-05-13 06:30:33', '2022-05-13 06:30:33'),
(2, NULL, 1, 5, 'data', 'kolkata', '72.9599', '72.9599', '2022-03-23', '01:04:34', '2022-05-13 06:34:20', '2022-05-13 06:34:20'),
(3, NULL, 6, 1, 'Competitor Related Issue', 'Kolkata', '0.0', '0.0', '2022-05-13', '12:51:53', '2022-05-13 07:21:54', '2022-05-13 07:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `ip`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(12, '127.0.0.1', 0, 125, '2022-03-17 09:34:40', '2022-05-12 06:24:57'),
(13, '103.121.157.14', 0, 32, '2022-03-31 13:26:37', '2022-05-12 06:24:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_parents`
--
ALTER TABLE `category_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `distributors`
--
ALTER TABLE `distributors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_logs`
--
ALTER TABLE `mail_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color_sizes`
--
ALTER TABLE `product_color_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_allowance`
--
ALTER TABLE `staff_allowance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `start_end_days`
--
ALTER TABLE `start_end_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_visits`
--
ALTER TABLE `store_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_mails`
--
ALTER TABLE `subscription_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_attendances`
--
ALTER TABLE `user_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_noorderreasons`
--
ALTER TABLE `user_noorderreasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category_parents`
--
ALTER TABLE `category_parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `distributors`
--
ALTER TABLE `distributors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mail_logs`
--
ALTER TABLE `mail_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_color_sizes`
--
ALTER TABLE `product_color_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3447;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `staff_allowance`
--
ALTER TABLE `staff_allowance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `start_end_days`
--
ALTER TABLE `start_end_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `store_visits`
--
ALTER TABLE `store_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_mails`
--
ALTER TABLE `subscription_mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_attendances`
--
ALTER TABLE `user_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_noorderreasons`
--
ALTER TABLE `user_noorderreasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
