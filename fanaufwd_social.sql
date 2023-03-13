-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 28, 2023 at 02:03 PM
-- Server version: 10.3.38-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fanaufwd_social`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `att_type` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `att_type`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Kg', NULL, '2022-08-02 09:14:19', '2022-08-02 09:14:42'),
(2, NULL, 'Box', NULL, '2022-08-02 09:14:51', '2022-08-02 09:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `bank_informations`
--

CREATE TABLE `bank_informations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `bank_code` varchar(191) DEFAULT NULL,
  `account_number` varchar(191) DEFAULT NULL,
  `account_holder` varchar(191) DEFAULT NULL,
  `paypal_id` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_informations`
--

INSERT INTO `bank_informations` (`id`, `seller_id`, `bank_name`, `bank_code`, `account_number`, `account_holder`, `paypal_id`, `description`, `created_at`, `updated_at`) VALUES
(15, 47, 'Gambibai', NULL, '712345678998745', 'Kawser Ahmed', NULL, NULL, '2021-12-24 03:13:54', '2022-07-30 09:34:56'),
(17, 48, 'Sonil Bank', NULL, '123654789874587445', 'Shamim Ahmmed', NULL, NULL, '2022-01-15 11:57:21', '2022-08-17 09:22:56'),
(22, 62, 'MBSP Bank', NULL, '1245789685745445', 'Mahbub Alam', NULL, NULL, '2022-01-24 11:30:57', '2022-01-24 11:30:57'),
(23, 63, 'BPSC Bank', NULL, '214587457457454', 'Habibul Basar', NULL, NULL, '2022-01-24 11:32:56', '2022-01-24 11:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `thumbnail`, `is_featured`, `is_publish`, `lan`, `created_at`, `updated_at`) VALUES
(1, 'Kari', '09092022091522-400x400-brand-3.png', 1, 1, 'en', '2022-07-30 08:35:01', '2022-09-09 03:15:53'),
(2, 'Mina', '09092022091526-400x400-brand-5.png', 1, 1, 'en', '2022-07-30 08:35:28', '2022-09-09 03:16:05'),
(3, 'Arod', '09092022091535-400x400-brand-7.png', 1, 1, 'en', '2022-07-30 08:35:43', '2022-09-09 03:16:16'),
(4, 'Pana Food', '09092022091519-400x400-brand-2.png', 1, 1, 'en', '2022-07-30 08:36:07', '2022-09-09 03:16:25'),
(5, 'Choicy', '09092022091528-400x400-brand-6.png', 1, 1, 'en', '2022-07-30 08:36:26', '2022-09-09 03:17:13'),
(6, 'Vegeta', '09092022091517-400x400-brand-1.png', 1, 1, 'en', '2022-07-30 08:38:03', '2022-09-09 03:17:23'),
(7, 'Nisha Dairy', '09092022091524-400x400-brand-4.png', 1, 1, 'en', '2022-07-30 08:38:17', '2022-09-09 03:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Available Offer', '2021-06-29 23:13:57', '2021-06-29 23:13:57'),
(2, 'Best Sellers', '2021-06-29 23:14:05', '2021-06-29 23:14:05'),
(3, 'Trending Products', '2021-06-29 23:14:14', '2021-06-29 23:14:14'),
(4, 'New Arrivals', '2021-06-29 23:14:23', '2021-11-15 11:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `contact_info` longtext DEFAULT NULL,
  `contact_form` longtext DEFAULT NULL,
  `contact_map` longtext DEFAULT NULL,
  `is_recaptcha` int(11) DEFAULT NULL,
  `mail_subject` varchar(100) DEFAULT NULL,
  `is_copy` int(11) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `contact_info`, `contact_form`, `contact_map`, `is_recaptcha`, `mail_subject`, `is_copy`, `is_publish`, `lan`, `created_at`, `updated_at`) VALUES
(6, 'Contact Us', '{\"email\":\"support@organis.com\",\"phone\":\"+1 964 565 87652\",\"address\":\"12 Poor Street, New York.\",\"short_desc\":\"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.\"}', '[{\"label\":\"Name\",\"is_label\":\"no\",\"type\":\"text\",\"name\":\"Name\",\"placeholder\":\"Name\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Email\",\"is_label\":\"no\",\"type\":\"email\",\"name\":\"Email\",\"placeholder\":\"Email Address\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Subject\",\"is_label\":\"no\",\"type\":\"text\",\"name\":\"Subject\",\"placeholder\":\"Subject\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Message\",\"is_label\":\"no\",\"type\":\"textarea\",\"name\":\"Message\",\"placeholder\":\"Message\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"}]', '{\"latitude\":\"23.824442\",\"longitude\":\"90.2125329\",\"zoom\":\"10\",\"is_google_map\":1}', 1, 'subject', NULL, 1, 'en', '2022-08-26 09:37:03', '2022-09-09 04:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(191) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(2, 'Aland Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(3, 'Albania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(4, 'Algeria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(5, 'American Samoa', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(6, 'Andorra', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(7, 'Angola', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(8, 'Anguilla', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(9, 'Antarctica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(10, 'Antigua and Barbuda', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(11, 'Argentina', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(12, 'Armenia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(13, 'Aruba', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(14, 'Asia / Pacific Region', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(15, 'Australia', 1, '2020-09-18 06:00:00', '2022-08-24 10:55:21'),
(16, 'Austria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(17, 'Azerbaijan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(18, 'Bahamas', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(19, 'Bahrain', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(20, 'Bangladesh', 1, '2020-09-18 06:00:00', '2022-08-24 10:52:40'),
(21, 'Barbados', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(22, 'Belarus', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(23, 'Belgium', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(24, 'Belize', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(25, 'Benin', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(26, 'Bermuda', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(27, 'Bhutan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(28, 'Bolivia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(29, 'Bonaire, Sint Eustatius and Saba', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(30, 'Bosnia and Herzegovina', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(31, 'Botswana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(32, 'Bouvet Island', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(33, 'Brazil', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(34, 'British Indian Ocean Territory', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(35, 'Brunei Darussalam', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(36, 'Bulgaria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(37, 'Burkina Faso', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(38, 'Burundi', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(39, 'Cambodia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(40, 'Cameroon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(41, 'Canada', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(42, 'Cape Verde', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(43, 'Cayman Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(44, 'Central African Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(45, 'Chad', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(46, 'Chile', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(47, 'China', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(48, 'Christmas Island', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(49, 'Cocos (Keeling) Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(50, 'Colombia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(51, 'Comoros', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(52, 'Congo', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(53, 'Congo, the Democratic Republic of the', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(54, 'Cook Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(55, 'Costa Rica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(56, 'Cote D\'Ivoire', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(57, 'Croatia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(58, 'Cuba', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(59, 'Curacao', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(60, 'Cyprus', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(61, 'Czech Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(62, 'Denmark', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(63, 'Djibouti', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(64, 'Dominica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(65, 'Dominican Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(66, 'Ecuador', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(67, 'Egypt', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(68, 'El Salvador', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(69, 'Equatorial Guinea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(70, 'Eritrea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(71, 'Estonia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(72, 'Ethiopia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(73, 'Falkland Islands (Malvinas)', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(74, 'Faroe Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(75, 'Fiji', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(76, 'Finland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(77, 'France', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(78, 'French Guiana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(79, 'French Polynesia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(80, 'French Southern Territories', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(81, 'Gabon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(82, 'Gambia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(83, 'Georgia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(84, 'Germany', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(85, 'Ghana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(86, 'Gibraltar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(87, 'Greece', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(88, 'Greenland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(89, 'Grenada', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(90, 'Guadeloupe', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(91, 'Guam', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(92, 'Guatemala', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(93, 'Guernsey', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(94, 'Guinea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(95, 'Guinea-Bissau', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(96, 'Guyana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(97, 'Haiti', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(98, 'Heard Island and Mcdonald Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(99, 'Holy See (Vatican City State)', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(100, 'Honduras', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(101, 'Hong Kong', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(102, 'Hungary', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(103, 'Iceland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(104, 'India', 1, '2020-09-18 06:00:00', '2022-08-24 10:55:40'),
(105, 'Indonesia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(106, 'Iran, Islamic Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(107, 'Iraq', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(108, 'Ireland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(109, 'Isle of Man', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(110, 'Israel', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(111, 'Italy', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(112, 'Jamaica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(113, 'Japan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(114, 'Jersey', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(115, 'Jordan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(116, 'Kazakhstan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(117, 'Kenya', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(118, 'Kiribati', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(119, 'Korea, Democratic People\'s Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(120, 'Korea, Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(121, 'Kosovo', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(122, 'Kuwait', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(123, 'Kyrgyzstan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(124, 'Lao People\'s Democratic Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(125, 'Latvia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(126, 'Lebanon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(127, 'Lesotho', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(128, 'Liberia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(129, 'Libyan Arab Jamahiriya', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(130, 'Liechtenstein', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(131, 'Lithuania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(132, 'Luxembourg', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(133, 'Macao', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(134, 'Macedonia, the Former Yugoslav Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(135, 'Madagascar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(136, 'Malawi', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(137, 'Malaysia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(138, 'Maldives', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(139, 'Mali', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(140, 'Malta', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(141, 'Marshall Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(142, 'Martinique', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(143, 'Mauritania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(144, 'Mauritius', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(145, 'Mayotte', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(146, 'Mexico', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(147, 'Micronesia, Federated States of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(148, 'Moldova, Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(149, 'Monaco', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(150, 'Mongolia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(151, 'Montenegro', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(152, 'Montserrat', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(153, 'Morocco', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(154, 'Mozambique', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(155, 'Myanmar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(156, 'Namibia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(157, 'Nauru', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(158, 'Nepal', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(159, 'Netherlands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(160, 'Netherlands Antilles', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(161, 'New Caledonia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(162, 'New Zealand', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(163, 'Nicaragua', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(164, 'Niger', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(165, 'Nigeria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(166, 'Niue', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(167, 'Norfolk Island', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(168, 'Northern Mariana Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(169, 'Norway', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(170, 'Oman', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(171, 'Pakistan', 1, '2020-09-18 06:00:00', '2022-08-24 10:52:58'),
(172, 'Palau', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(173, 'Palestinian Territory, Occupied', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(174, 'Panama', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(175, 'Papua New Guinea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(176, 'Paraguay', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(177, 'Peru', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(178, 'Philippines', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(179, 'Pitcairn', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(180, 'Poland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(181, 'Portugal', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(182, 'Puerto Rico', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(183, 'Qatar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(184, 'Reunion', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(185, 'Romania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(186, 'Russian Federation', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(187, 'Rwanda', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(188, 'Saint Barthelemy', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(189, 'Saint Helena', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(190, 'Saint Kitts and Nevis', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(191, 'Saint Lucia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(192, 'Saint Martin', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(193, 'Saint Pierre and Miquelon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(194, 'Saint Vincent and the Grenadines', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(195, 'Samoa', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(196, 'San Marino', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(197, 'Sao Tome and Principe', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(198, 'Saudi Arabia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(199, 'Senegal', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(200, 'Serbia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(201, 'Serbia and Montenegro', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(202, 'Seychelles', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(203, 'Sierra Leone', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(204, 'Singapore', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(205, 'Sint Maarten', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(206, 'Slovakia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(207, 'Slovenia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(208, 'Solomon Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(209, 'Somalia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(210, 'South Africa', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(211, 'South Georgia and the South Sandwich Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(212, 'South Sudan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(213, 'Spain', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(214, 'Sri Lanka', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(215, 'Sudan', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(216, 'Suriname', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(217, 'Svalbard and Jan Mayen', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(218, 'Swaziland', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(219, 'Sweden', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(220, 'Switzerland', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(221, 'Syrian Arab Republic', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(222, 'Taiwan, Province of China', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(223, 'Tajikistan', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(224, 'Tanzania, United Republic of', 1, '2020-09-18 06:00:00', '2023-02-16 20:28:17'),
(225, 'Thailand', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(226, 'Timor-Leste', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(227, 'Togo', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(228, 'Tokelau', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(229, 'Tonga', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(230, 'Trinidad and Tobago', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(231, 'Tunisia', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(232, 'Turkey', 1, '2020-09-18 06:00:00', '2022-08-24 10:55:59'),
(233, 'Turkmenistan', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(234, 'Turks and Caicos Islands', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(235, 'Tuvalu', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(236, 'Uganda', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(237, 'Ukraine', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(238, 'United Arab Emirates', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(239, 'United Kingdom', 2, '2020-09-18 06:00:00', '2023-02-16 20:28:50'),
(240, 'United States', 2, '2020-09-18 06:00:00', '2023-02-16 20:28:39'),
(241, 'United States Minor Outlying Islands', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(242, 'Uruguay', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(243, 'Uzbekistan', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(244, 'Vanuatu', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(245, 'Venezuela', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(246, 'Viet Nam', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(247, 'Virgin Islands, British', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(248, 'Virgin Islands, U.s.', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(249, 'Wallis and Futuna', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(250, 'Western Sahara', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(251, 'Yemen', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(252, 'Zambia', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(253, 'Zimbabwe', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `percentage` double(8,2) NOT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `title`, `color`, `created_at`, `updated_at`) VALUES
(1, 'NEW', '#222222', '2021-06-29 18:57:23', '2021-06-29 19:33:49'),
(2, 'HOT', '#f0983d', '2021-06-29 18:57:40', '2021-06-29 19:33:17'),
(9, 'OFF', '#f62459', '2021-06-29 19:34:08', '2021-11-15 11:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_code` varchar(30) NOT NULL,
  `language_name` varchar(100) DEFAULT NULL,
  `flag` text DEFAULT NULL,
  `language_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_rtl` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_code`, `language_name`, `flag`, `language_default`, `is_rtl`, `status`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', NULL, 1, 0, 1, '2020-10-19 16:35:47', '2022-01-22 10:59:26'),
(9, 'fr', 'French', NULL, 0, 0, 0, '2021-03-29 06:43:16', '2022-09-04 10:50:17'),
(10, 'ar', 'Arabic', NULL, 0, 1, 0, '2021-08-25 09:17:42', '2022-09-04 10:50:23'),
(17, 'sw', 'Swahili', NULL, 0, 1, 1, '2023-02-16 20:30:16', '2023-02-16 20:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `lankeyvalues`
--

CREATE TABLE `lankeyvalues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_code` varchar(30) DEFAULT NULL,
  `language_key` varchar(191) DEFAULT NULL,
  `language_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lankeyvalues`
--

INSERT INTO `lankeyvalues` (`id`, `language_code`, `language_key`, `language_value`, `created_at`, `updated_at`) VALUES
(1, 'en', 'Languages', 'Languages', '2021-03-29 06:08:02', '2021-12-03 03:42:14'),
(3, 'fr', 'Languages', 'Langues', '2021-03-29 06:43:16', '2021-03-29 06:44:37'),
(4, 'en', 'New Data Added Successfully', 'Added Successfully', '2021-03-29 06:46:47', '2022-08-08 09:27:48'),
(7, 'fr', 'New Data Added Successfully', 'Ajouté avec succès', '2021-03-29 06:47:43', '2022-08-08 09:29:51'),
(9, 'en', 'Data insert failed', 'Data insert failed', '2021-03-29 06:48:35', '2021-03-29 06:48:35'),
(10, 'fr', 'Data insert failed', 'L\'insertion de données a échoué', '2021-03-29 06:48:49', '2021-03-29 06:48:49'),
(12, 'en', 'Data Updated Successfully', 'Updated Successfully', '2021-03-29 06:50:41', '2022-08-08 09:27:33'),
(13, 'fr', 'Data Updated Successfully', 'Mis à jour avec succés', '2021-03-29 06:50:54', '2022-08-08 09:29:36'),
(14, 'en', 'Data update failed', 'Data update failed', '2021-03-29 07:32:39', '2021-03-29 07:32:39'),
(17, 'fr', 'Data update failed', 'La mise à jour des données a échoué', '2021-03-29 07:34:42', '2021-03-29 07:35:22'),
(18, 'en', 'Data Removed Successfully', 'Removed Successfully', '2021-03-29 07:36:21', '2022-08-08 09:27:18'),
(20, 'fr', 'Data Removed Successfully', 'Supprimé avec succès', '2021-03-29 07:37:08', '2022-08-08 09:29:20'),
(21, 'en', 'Data remove failed', 'Data remove failed', '2021-03-29 07:37:57', '2021-03-29 07:37:57'),
(23, 'fr', 'Data remove failed', 'Échec de la suppression des données', '2021-03-29 07:38:16', '2021-03-29 07:38:34'),
(24, 'en', 'Language Keywords', 'Language Keywords', '2021-03-29 07:40:09', '2021-03-29 07:40:09'),
(26, 'fr', 'Language Keywords', 'Mots-clés de la langue', '2021-03-29 07:40:22', '2021-03-29 07:40:36'),
(27, 'en', 'Add New', 'Add New', '2021-03-29 07:41:23', '2021-03-29 07:41:23'),
(29, 'fr', 'Add New', 'Ajouter nouveau', '2021-03-29 07:41:36', '2021-03-29 07:42:26'),
(30, 'en', 'Back to List', 'Back to List', '2021-03-29 07:42:44', '2021-03-29 07:42:44'),
(32, 'fr', 'Back to List', 'Retour à la liste', '2021-03-29 07:42:56', '2021-03-29 07:43:56'),
(33, 'en', 'SL', 'SL', '2021-03-29 07:44:24', '2021-03-29 07:44:24'),
(35, 'fr', 'SL', 'SL', '2021-03-29 07:44:35', '2021-03-29 07:44:35'),
(36, 'en', 'Language Key', 'Language Key', '2021-03-29 07:45:10', '2021-03-29 07:45:10'),
(38, 'fr', 'Language Key', 'Clé de langue', '2021-03-29 07:45:25', '2021-03-29 07:45:40'),
(39, 'en', 'Language Value', 'Language Value', '2021-03-29 07:46:09', '2021-03-29 07:46:09'),
(41, 'fr', 'Language Value', 'Valeur de la langue', '2021-03-29 07:46:38', '2021-03-29 07:47:13'),
(42, 'en', 'Action', 'Action', '2021-03-29 07:47:30', '2021-03-29 07:47:30'),
(44, 'fr', 'Action', 'Action', '2021-03-29 07:47:43', '2021-03-29 07:47:43'),
(45, 'en', 'Save', 'Save', '2021-03-29 07:48:41', '2021-03-29 07:48:41'),
(47, 'fr', 'Save', 'sauver', '2021-03-29 07:48:58', '2021-03-29 07:49:38'),
(48, 'en', 'Cancel', 'Cancel', '2021-03-29 07:49:59', '2021-03-29 07:49:59'),
(50, 'fr', 'Cancel', 'Annuler', '2021-03-29 07:50:16', '2021-03-29 07:50:28'),
(51, 'en', 'Do you really want to edit this record', 'Do you really want to edit this record?', '2021-03-29 07:51:09', '2021-03-29 07:52:19'),
(53, 'fr', 'Do you really want to edit this record', 'Voulez-vous vraiment modifier cet enregistrement?', '2021-03-29 07:51:22', '2021-03-29 07:51:48'),
(54, 'en', 'Do you really want to delete this record', 'Do you really want to delete this record?', '2021-03-29 07:52:46', '2021-03-29 07:52:46'),
(56, 'fr', 'Do you really want to delete this record', 'Voulez-vous vraiment supprimer cet enregistrement?', '2021-03-29 07:53:12', '2021-03-29 07:53:42'),
(57, 'en', 'Delete', 'Delete', '2021-03-29 07:54:04', '2021-03-29 07:54:04'),
(59, 'fr', 'Delete', 'Effacer', '2021-03-29 07:54:16', '2021-03-29 07:54:29'),
(61, 'en', 'Edit', 'Edit', '2021-03-29 07:55:02', '2021-03-29 07:55:02'),
(62, 'fr', 'Edit', 'Éditer', '2021-03-29 07:55:07', '2021-03-29 07:55:20'),
(64, 'en', 'Confirm', 'Confirm', '2021-03-29 07:56:24', '2021-03-29 07:56:24'),
(65, 'fr', 'Confirm', 'Confirmer', '2021-03-29 07:56:28', '2021-03-29 07:56:41'),
(66, 'en', 'This is alert message', 'This is alert message', '2021-03-29 07:57:25', '2021-03-29 07:57:25'),
(68, 'fr', 'This is alert message', 'Ceci est un message d\'alerte', '2021-03-29 07:57:37', '2021-03-29 07:57:54'),
(70, 'en', 'Language Code', 'Language Code', '2021-03-29 07:58:54', '2021-03-29 07:58:54'),
(71, 'fr', 'Language Code', 'Code de langue', '2021-03-29 07:58:59', '2021-03-29 07:59:34'),
(73, 'en', 'Language Name', 'Language Name', '2021-03-29 07:59:53', '2021-03-29 07:59:53'),
(74, 'fr', 'Language Name', 'Nom de la langue', '2021-03-29 07:59:58', '2021-03-29 08:00:11'),
(76, 'en', 'Active Language', 'Active Language', '2021-03-29 08:00:45', '2021-03-29 08:00:45'),
(77, 'fr', 'Active Language', 'Langue active', '2021-03-29 08:00:52', '2021-03-29 08:01:21'),
(78, 'en', 'General', 'General', '2021-03-29 15:53:52', '2021-03-29 15:53:52'),
(80, 'fr', 'General', 'générale', '2021-03-29 15:54:07', '2021-03-29 15:54:32'),
(112, 'en', 'Site Name', 'Site Name', '2021-03-30 17:04:52', '2021-03-30 17:04:52'),
(114, 'fr', 'Site Name', 'Nom du site', '2021-03-30 17:05:09', '2021-03-30 17:05:27'),
(116, 'en', 'Site Title', 'Site Title', '2021-03-30 17:06:30', '2021-03-30 17:06:30'),
(117, 'fr', 'Site Title', 'Titre du site', '2021-03-30 17:06:36', '2021-03-30 17:06:48'),
(119, 'en', 'Site URL', 'Site URL', '2021-03-30 17:07:43', '2021-03-30 17:07:43'),
(120, 'fr', 'Site URL', 'URL du site', '2021-03-30 17:07:49', '2021-03-30 17:08:02'),
(122, 'en', 'Theme color', 'Theme color', '2021-03-30 17:10:33', '2021-03-30 17:10:33'),
(123, 'fr', 'Theme color', 'Couleur du thème', '2021-03-30 17:10:38', '2021-03-30 17:10:54'),
(125, 'en', 'Favicon', 'Favicon', '2021-03-30 17:11:32', '2021-03-30 17:11:32'),
(126, 'fr', 'Favicon', 'Favicon', '2021-03-30 17:11:38', '2021-03-30 17:11:51'),
(131, 'en', 'The logo must be a file of type png', 'The logo must be a file of type png', '2021-03-30 17:13:33', '2021-03-30 17:13:33'),
(132, 'fr', 'The logo must be a file of type png', 'Le logo doit être un fichier de type png', '2021-03-30 17:13:38', '2021-03-30 17:14:10'),
(134, 'en', 'The file uploaded Successfully', 'The file uploaded Successfully', '2021-03-30 17:39:44', '2021-03-30 17:39:44'),
(135, 'fr', 'The file uploaded Successfully', 'Le fichier a bien été téléversé', '2021-03-30 17:39:50', '2021-03-30 17:40:01'),
(137, 'en', 'Sorry, there was an error uploading your file', 'Sorry, there was an error uploading your file', '2021-03-30 17:40:34', '2021-03-30 17:40:34'),
(138, 'fr', 'Sorry, there was an error uploading your file', 'Désolé, une erreur s\'est produite lors du téléchargement de votre fichier', '2021-03-30 17:40:40', '2021-03-30 17:40:52'),
(140, 'en', 'Sorry only you can upload jpg, png and gif file type', 'Sorry only you can upload jpg, png and gif file type', '2021-03-30 17:41:32', '2021-03-30 17:41:32'),
(141, 'fr', 'Sorry only you can upload jpg, png and gif file type', 'Désolé seulement vous pouvez télécharger des fichiers de type jpg, png et gif', '2021-03-30 17:41:38', '2021-03-30 17:41:50'),
(143, 'en', 'Front Logo', 'Front Logo', '2021-03-30 18:41:19', '2021-03-30 18:41:19'),
(144, 'fr', 'Front Logo', 'Front Logo', '2021-03-30 18:41:25', '2021-03-30 18:41:25'),
(148, 'fr', 'Back Logo', 'Logo arrière', '2021-03-31 14:09:31', '2021-03-31 14:10:46'),
(149, 'en', 'Back Logo', 'Back Logo', '2021-03-31 14:09:39', '2021-03-31 14:09:39'),
(152, 'en', 'Settings', 'Settings', '2021-03-31 14:12:50', '2021-03-31 14:12:50'),
(153, 'fr', 'Settings', 'Paramètres', '2021-03-31 14:12:57', '2021-03-31 14:13:11'),
(154, 'en', 'Time Zone', 'Time Zone', '2021-03-31 15:42:27', '2021-03-31 15:42:27'),
(156, 'fr', 'Time Zone', 'Fuseau horaire', '2021-03-31 15:42:38', '2021-03-31 15:43:59'),
(157, 'en', 'Google reCAPTCHA', 'Google reCAPTCHA', '2021-03-31 17:15:56', '2021-03-31 17:15:56'),
(159, 'fr', 'Google reCAPTCHA', 'Google reCAPTCHA', '2021-03-31 17:16:09', '2021-03-31 17:16:09'),
(160, 'en', 'Theme Register', 'Theme Register', '2021-04-01 05:56:46', '2021-04-01 05:56:46'),
(162, 'fr', 'Theme Register', 'Registre des thèmes', '2021-04-01 05:57:00', '2021-04-01 05:57:30'),
(164, 'en', 'Mail Settings', 'Mail Settings', '2021-04-01 06:19:40', '2021-04-01 06:19:40'),
(165, 'fr', 'Mail Settings', 'Paramètres de messagerie', '2021-04-01 06:19:46', '2021-04-01 06:20:27'),
(169, 'fr', 'Media Setting', 'Paramètre de support', '2021-04-01 06:26:42', '2021-04-01 06:27:32'),
(170, 'en', 'Media Setting', 'Media Setting', '2021-04-01 06:26:47', '2021-04-01 06:26:47'),
(172, 'en', 'Purchase Code', 'Purchase Code', '2021-04-01 09:50:30', '2021-04-01 09:50:30'),
(174, 'fr', 'Purchase Code', 'Code d\'achat', '2021-04-01 09:51:10', '2021-04-01 09:52:02'),
(175, 'fr', 'Sorry, This is not a valid purchase code.', 'Désolé, ce n\'est pas un code d\'achat valide.', '2021-04-01 09:52:39', '2021-04-01 09:53:09'),
(177, 'en', 'Sorry, This is not a valid purchase code.', 'Sorry, This is not a valid purchase code.', '2021-04-01 09:52:51', '2021-04-01 09:52:51'),
(179, 'en', 'Theme registered Successfully', 'Theme registered Successfully', '2021-04-01 09:53:48', '2021-04-01 09:53:48'),
(180, 'fr', 'Theme registered Successfully', 'Thème enregistré avec succès', '2021-04-01 09:53:56', '2021-04-01 09:54:30'),
(181, 'fr', 'Theme deregister Successfully', 'Désenregistrement du thème réussi', '2021-04-01 09:55:13', '2021-04-01 09:55:44'),
(182, 'en', 'Theme deregister Successfully', 'Theme deregister Successfully', '2021-04-01 09:55:18', '2021-04-01 09:55:18'),
(185, 'en', 'Do you really want to deregister the theme', 'Do you really want to deregister the theme?', '2021-04-01 09:56:37', '2021-08-24 12:27:19'),
(186, 'fr', 'Do you really want to deregister the theme', 'Voulez-vous vraiment désenregistrer le thème?', '2021-04-01 09:56:44', '2021-04-01 09:57:05'),
(188, 'en', 'Theme is registered', 'Theme is registered', '2021-04-01 11:57:20', '2021-04-01 11:57:20'),
(189, 'fr', 'Theme is registered', 'Le thème est enregistré', '2021-04-01 11:57:25', '2021-04-01 11:58:12'),
(190, 'fr', 'Deregister Theme', 'Thème de désenregistrement', '2021-04-01 11:58:32', '2021-04-01 11:59:25'),
(191, 'en', 'Deregister Theme', 'Deregister Theme', '2021-04-01 11:58:38', '2021-04-01 11:58:38'),
(193, 'fr', 'Register Theme', 'Enregistrer le thème', '2021-04-01 12:00:08', '2021-04-01 12:00:50'),
(194, 'en', 'Register Theme', 'Register Theme', '2021-04-01 12:00:16', '2021-04-01 12:00:16'),
(196, 'en', 'Users', 'Users', '2021-04-02 14:38:48', '2021-04-02 14:38:48'),
(198, 'fr', 'Users', 'Utilisatrices', '2021-04-02 14:39:07', '2021-04-02 14:58:50'),
(199, 'en', 'Name', 'Name', '2021-04-02 17:24:38', '2021-04-02 17:24:38'),
(201, 'fr', 'Name', 'Nom', '2021-04-02 17:25:13', '2021-04-02 17:26:15'),
(203, 'en', 'Email', 'Email', '2021-04-02 17:27:43', '2021-04-02 17:27:43'),
(204, 'fr', 'Email', 'E-mail', '2021-04-02 17:27:50', '2021-04-02 17:28:19'),
(206, 'en', 'Status', 'Status', '2021-04-02 17:30:15', '2021-04-02 17:30:15'),
(207, 'fr', 'Status', 'Statut', '2021-04-02 17:30:21', '2021-04-02 17:30:38'),
(208, 'en', 'Role', 'Role', '2021-04-02 17:33:06', '2021-04-02 17:33:06'),
(210, 'fr', 'Role', 'Role', '2021-04-02 17:33:18', '2021-04-02 17:33:18'),
(213, 'fr', 'Active', 'Actif', '2021-04-02 17:39:27', '2021-04-02 17:41:54'),
(214, 'en', 'Active', 'Active', '2021-04-02 17:41:30', '2021-04-02 17:41:30'),
(216, 'en', 'Inactive', 'Inactive', '2021-04-02 17:42:30', '2021-04-02 17:42:30'),
(217, 'fr', 'Inactive', 'Inactif', '2021-04-02 17:42:36', '2021-04-02 17:43:01'),
(218, 'en', 'Email Address', 'Email Address', '2021-04-03 15:34:12', '2021-04-03 15:34:12'),
(220, 'fr', 'Email Address', 'Adresse e-mail', '2021-04-03 15:34:25', '2021-04-03 15:35:40'),
(221, 'fr', 'Password', 'Mot de passe', '2021-04-03 15:36:03', '2021-04-03 15:36:34'),
(223, 'en', 'Password', 'Password', '2021-04-03 15:36:17', '2021-04-03 15:36:17'),
(225, 'en', 'Phone', 'Phone', '2021-04-03 15:37:12', '2021-04-03 15:37:12'),
(226, 'fr', 'Phone', 'Téléphone', '2021-04-03 15:37:18', '2021-04-03 15:37:52'),
(227, 'fr', 'Address', 'Adresse', '2021-04-03 15:38:14', '2021-08-29 10:38:02'),
(229, 'en', 'Address', 'Address', '2021-04-03 15:38:29', '2021-04-03 15:38:29'),
(231, 'en', 'Active/Inactive', 'Active/Inactive', '2021-04-03 15:39:27', '2021-04-03 15:39:27'),
(232, 'fr', 'Active/Inactive', 'Actif inactif', '2021-04-03 15:39:32', '2021-04-03 15:40:42'),
(233, 'fr', 'Roles', 'Les rôles', '2021-04-03 15:41:21', '2021-04-03 15:41:54'),
(234, 'en', 'Roles', 'Roles', '2021-04-03 15:41:28', '2021-04-03 15:41:28'),
(239, 'fr', 'The profile image must be a file of type jpg', 'L\'image de profil doit être un fichier de type jpg', '2021-04-03 15:43:56', '2021-04-03 15:44:42'),
(241, 'en', 'The profile image must be a file of type jpg', 'The profile image must be a file of type jpg', '2021-04-03 15:44:10', '2021-04-03 15:44:10'),
(242, 'fr', 'Profile Photo', 'Photo de profil', '2021-04-03 16:07:11', '2021-04-03 16:08:39'),
(243, 'en', 'Profile Photo', 'Profile Photo', '2021-04-03 16:07:17', '2021-04-03 16:07:17'),
(245, 'en', 'Profile photo size 300x300 pixels', 'Profile photo size 300x300 pixels', '2021-04-03 16:10:33', '2021-04-03 16:10:33'),
(247, 'fr', 'Profile photo size 300x300 pixels', 'Profile photo size 300x300 pixels', '2021-04-03 16:10:49', '2021-04-03 16:10:49'),
(248, 'fr', 'Browse', 'Parcourir', '2021-04-03 16:11:54', '2021-04-03 16:12:50'),
(249, 'en', 'Browse', 'Browse', '2021-04-03 16:12:00', '2021-04-03 16:12:00'),
(251, 'en', 'Profile', 'Profile', '2021-04-04 15:09:54', '2021-04-04 15:09:54'),
(253, 'fr', 'Profile', 'Profil', '2021-04-04 15:10:18', '2021-04-04 15:10:46'),
(254, 'en', 'You are not active yet. Please contact administrator.', 'You are not active yet. Please contact administrator.', '2021-04-04 16:40:49', '2021-04-04 16:40:49'),
(256, 'fr', 'You are not active yet. Please contact administrator.', 'Vous n\'êtes pas encore actif. Veuillez contacter l\'administrateur.', '2021-04-04 16:41:02', '2021-04-04 16:41:33'),
(258, 'en', 'You do not have permission to access this page', 'You do not have permission to access this page.', '2021-04-04 16:57:10', '2021-04-04 16:57:10'),
(259, 'fr', 'You do not have permission to access this page', 'Vous n\'avez pas la permission d\'accéder à cette page.', '2021-04-04 16:57:20', '2021-04-04 16:57:56'),
(260, 'en', 'Media', 'Media', '2021-04-05 16:00:22', '2021-04-05 16:00:22'),
(262, 'fr', 'Media', 'Médias', '2021-04-05 16:00:37', '2021-04-05 16:01:17'),
(263, 'en', 'Attachment Details', 'Attachment Details', '2021-04-08 16:50:40', '2021-04-08 16:50:40'),
(265, 'fr', 'Attachment Details', 'Détails de la pièce jointe', '2021-04-08 16:50:53', '2021-04-08 16:51:17'),
(267, 'en', 'Alternative Text', 'Alternative Text', '2021-04-08 16:52:20', '2021-04-08 16:52:20'),
(268, 'fr', 'Alternative Text', 'Texte alternatif', '2021-04-08 16:52:27', '2021-04-08 16:52:40'),
(270, 'en', 'Title', 'Title', '2021-04-08 16:53:25', '2021-04-08 16:53:25'),
(271, 'fr', 'Title', 'Titre', '2021-04-08 16:53:33', '2021-04-08 16:53:56'),
(273, 'en', 'Copy Link Thumbnail Image', 'Copy Link Thumbnail Image', '2021-04-08 16:56:27', '2021-04-08 16:56:27'),
(274, 'fr', 'Copy Link Thumbnail Image', 'Copier l\'image miniature du lien', '2021-04-08 16:56:33', '2021-04-08 16:56:59'),
(276, 'en', 'Copy Link large Image', 'Copy Link large Image', '2021-04-08 16:57:43', '2021-04-08 16:57:43'),
(277, 'fr', 'Copy Link large Image', 'Copier le lien en grande image', '2021-04-08 16:57:49', '2021-04-08 16:58:04'),
(279, 'en', 'Back', 'Back', '2021-04-08 16:59:05', '2021-04-08 16:59:05'),
(280, 'fr', 'Back', 'Dos', '2021-04-08 16:59:11', '2021-04-08 16:59:32'),
(282, 'en', 'Select File', 'Select File', '2021-04-08 17:00:21', '2021-04-08 17:00:21'),
(283, 'fr', 'Select File', 'Choisir le dossier', '2021-04-08 17:00:27', '2021-04-08 17:00:40'),
(285, 'en', 'All', 'All', '2021-04-08 17:01:29', '2021-04-08 17:01:29'),
(286, 'fr', 'All', 'Toute', '2021-04-08 17:01:36', '2021-04-08 17:02:03'),
(287, 'fr', 'Bulk Select', 'Sélection groupée', '2021-04-08 17:02:23', '2021-04-08 17:03:10'),
(288, 'en', 'Bulk Select', 'Bulk Select', '2021-04-08 17:02:32', '2021-04-08 17:02:32'),
(290, 'fr', 'Delete Permanently', 'supprimer définitivement', '2021-04-08 17:03:32', '2021-04-08 17:04:15'),
(291, 'en', 'Delete Permanently', 'Delete Permanently', '2021-04-08 17:03:51', '2021-04-08 17:03:51'),
(294, 'en', 'Search', 'Search', '2021-04-08 17:05:14', '2021-04-08 17:05:14'),
(295, 'fr', 'Search', 'Rechercher', '2021-04-08 17:05:21', '2021-04-08 17:05:48'),
(296, 'en', 'Type', 'Type', '2021-04-11 14:52:20', '2021-04-11 14:52:20'),
(298, 'fr', 'Type', 'Taper', '2021-04-11 14:52:38', '2021-04-11 14:53:20'),
(299, 'fr', 'Width', 'Largeur', '2021-04-11 14:53:33', '2021-04-11 14:54:01'),
(300, 'en', 'Width', 'Width', '2021-04-11 14:53:40', '2021-04-11 14:53:40'),
(303, 'en', 'Height', 'Height', '2021-04-11 14:54:40', '2021-04-11 14:54:40'),
(304, 'fr', 'Height', 'Hauteur', '2021-04-11 14:54:50', '2021-04-11 14:56:01'),
(305, 'en', 'Categories', 'Categories', '2021-04-13 03:55:10', '2021-04-13 03:55:10'),
(307, 'fr', 'Categories', 'Catégories', '2021-04-13 03:55:26', '2021-04-13 03:55:45'),
(308, 'en', 'Category Name', 'Category Name', '2021-04-13 07:01:37', '2021-04-13 07:01:37'),
(310, 'fr', 'Category Name', 'Nom de catégorie', '2021-04-13 07:01:49', '2021-04-13 07:02:24'),
(312, 'en', 'Slug', 'Slug', '2021-04-13 07:03:48', '2021-04-13 07:03:48'),
(313, 'fr', 'Slug', 'Limace', '2021-04-13 07:03:55', '2021-04-13 07:04:40'),
(314, 'fr', 'Language', 'Langue', '2021-04-13 07:05:35', '2021-04-13 07:06:39'),
(315, 'en', 'Language', 'Language', '2021-04-13 07:05:50', '2021-04-13 07:05:50'),
(317, 'fr', 'All Language', 'Toutes les langues', '2021-04-13 07:13:42', '2021-04-13 07:15:14'),
(318, 'en', 'All Language', 'All Language', '2021-04-13 07:13:48', '2021-04-13 07:13:48'),
(321, 'en', 'Description', 'Description', '2021-04-13 07:23:37', '2021-04-13 07:23:37'),
(322, 'fr', 'Description', 'Description', '2021-04-13 07:23:43', '2021-04-13 07:23:43'),
(323, 'fr', 'Subheader Image', 'Image de sous-en-tête', '2021-04-13 09:56:20', '2021-04-13 09:57:10'),
(324, 'en', 'Subheader Image', 'Subheader Image', '2021-04-13 09:56:26', '2021-04-13 09:56:26'),
(326, 'en', 'Choose a File', 'Choose a File', '2021-04-13 16:41:33', '2021-04-13 16:41:33'),
(328, 'fr', 'Choose a File', 'Choisissez un fichier', '2021-04-13 16:41:46', '2021-04-13 16:42:06'),
(329, 'en', 'Upload File', 'Upload File', '2021-04-14 13:59:41', '2021-04-14 13:59:41'),
(331, 'fr', 'Upload File', 'Téléverser un fichier', '2021-04-14 13:59:57', '2021-04-14 14:02:08'),
(332, 'en', 'Copy Thumbnail Image', 'Copy Thumbnail Image', '2021-04-15 12:02:34', '2021-04-15 12:02:34'),
(334, 'fr', 'Copy Thumbnail Image', 'Copier l\'image miniature', '2021-04-15 12:02:55', '2021-04-15 12:04:31'),
(335, 'en', 'Menu', 'Menu', '2021-04-30 22:09:32', '2021-04-30 22:09:32'),
(337, 'fr', 'Menu', 'Menu', '2021-04-30 22:09:48', '2021-04-30 22:09:48'),
(339, 'en', 'Menu Name', 'Menu Name', '2021-04-30 22:33:42', '2021-04-30 22:33:42'),
(340, 'fr', 'Menu Name', 'Nom du menu', '2021-04-30 22:33:48', '2021-04-30 22:34:26'),
(342, 'en', 'Menu Position', 'Menu Position', '2021-04-30 22:37:44', '2021-04-30 22:37:44'),
(343, 'fr', 'Menu Position', 'Position du menu', '2021-04-30 22:37:53', '2021-04-30 22:38:22'),
(345, 'en', 'Menu Status', 'Menu Status', '2021-04-30 22:42:44', '2021-04-30 22:42:44'),
(346, 'fr', 'Menu Status', 'État du menu', '2021-04-30 22:42:50', '2021-04-30 22:43:03'),
(347, 'en', 'Position', 'Position', '2021-05-03 20:09:34', '2021-05-03 20:09:34'),
(349, 'fr', 'Position', 'Position', '2021-05-03 20:09:50', '2021-05-03 20:09:50'),
(351, 'en', 'Customize', 'Customize', '2021-05-03 20:20:20', '2021-05-03 20:20:20'),
(352, 'fr', 'Customize', 'Personnaliser', '2021-05-03 20:20:26', '2021-05-03 20:53:59'),
(354, 'en', 'No data available', 'No data available', '2021-05-03 21:08:42', '2021-05-03 21:08:42'),
(355, 'fr', 'No data available', 'Pas de données disponibles', '2021-05-03 21:08:47', '2021-05-03 21:09:32'),
(356, 'en', 'Apply', 'Apply', '2021-05-04 21:36:47', '2021-05-04 21:36:47'),
(358, 'fr', 'Apply', 'Appliquer', '2021-05-04 21:37:02', '2021-05-04 21:39:50'),
(359, 'en', 'Do you really want to publish this records', 'Do you really want to publish this records?', '2021-05-08 21:22:10', '2021-05-08 21:25:31'),
(361, 'fr', 'Do you really want to publish this records', 'Voulez-vous vraiment publier ces enregistrements?', '2021-05-08 21:22:22', '2021-05-08 21:24:15'),
(362, 'fr', 'Do you really want to draft this records', 'Voulez-vous vraiment rédiger ces enregistrements?', '2021-05-08 21:24:51', '2021-05-08 21:26:46'),
(363, 'en', 'Do you really want to draft this records', 'Do you really want to draft this records?', '2021-05-08 21:24:58', '2021-05-08 21:25:17'),
(365, 'fr', 'Do you really want to delete this records', 'Voulez-vous vraiment supprimer ces enregistrements?', '2021-05-08 21:28:20', '2021-05-08 21:29:04'),
(366, 'en', 'Do you really want to delete this records', 'Do you really want to delete this records?', '2021-05-08 21:28:28', '2021-05-08 21:28:28'),
(368, 'fr', 'Please select action', 'Veuillez sélectionner une action', '2021-05-08 21:31:53', '2021-05-08 21:33:35'),
(369, 'en', 'Please select action', 'Please select action', '2021-05-08 21:31:58', '2021-05-08 21:31:58'),
(371, 'fr', 'Please select record', 'Veuillez sélectionner un enregistrement', '2021-05-08 21:38:32', '2021-05-08 21:39:35'),
(372, 'en', 'Please select record', 'Please select record', '2021-05-08 21:38:41', '2021-05-08 21:38:41'),
(374, 'en', 'Save Menu', 'Save Menu', '2021-05-09 15:46:22', '2021-05-09 15:46:22'),
(376, 'fr', 'Save Menu', 'Enregistrer le menu', '2021-05-09 15:46:33', '2021-05-09 15:47:22'),
(377, 'en', 'Menu structure', 'Menu structure', '2021-05-09 15:49:16', '2021-05-09 15:49:16'),
(379, 'fr', 'Menu structure', 'Structure du menu', '2021-05-09 15:49:28', '2021-05-09 15:50:11'),
(380, 'fr', 'Add menu items', 'Ajouter des éléments de menu', '2021-05-09 15:50:39', '2021-05-09 15:51:30'),
(381, 'en', 'Add menu items', 'Add menu items', '2021-05-09 15:50:46', '2021-05-09 15:50:46'),
(383, 'en', 'Only selected language menu list', 'Only selected language menu list', '2021-05-09 15:53:38', '2021-05-09 15:53:38'),
(385, 'fr', 'Only selected language menu list', 'Liste du menu de la langue sélectionnée uniquement', '2021-05-09 15:53:54', '2021-05-09 15:54:24'),
(386, 'en', 'URL', 'URL', '2021-05-10 15:27:34', '2021-05-10 15:27:34'),
(388, 'fr', 'URL', 'URL', '2021-05-10 15:27:46', '2021-05-20 11:31:22'),
(389, 'fr', 'Link Text', 'Texte du lien', '2021-05-10 15:29:24', '2021-05-20 11:32:08'),
(390, 'en', 'Link Text', 'Link Text', '2021-05-10 15:29:31', '2021-05-10 15:29:31'),
(392, 'en', 'Navigation Label', 'Navigation Label', '2021-05-11 20:58:45', '2021-05-11 20:58:45'),
(394, 'fr', 'Navigation Label', 'Étiquettes de navigation', '2021-05-11 20:58:56', '2021-05-20 11:33:50'),
(398, 'en', 'Add to Menu', 'Add to Menu', '2021-05-13 22:52:21', '2021-05-13 22:52:21'),
(400, 'fr', 'Add to Menu', 'Ajouter au menu', '2021-05-13 22:52:33', '2021-05-13 22:52:51'),
(402, 'en', 'Select All', 'Select All', '2021-05-13 23:17:47', '2021-05-13 23:17:47'),
(403, 'fr', 'Select All', 'Tout sélectionner', '2021-05-13 23:17:53', '2021-05-13 23:19:07'),
(405, 'en', 'Pages', 'Pages', '2021-05-13 23:20:36', '2021-05-13 23:20:36'),
(406, 'fr', 'Pages', 'Pages', '2021-05-13 23:20:44', '2021-05-13 23:20:44'),
(408, 'en', 'Posts', 'Posts', '2021-05-13 23:21:59', '2021-05-13 23:21:59'),
(409, 'fr', 'Posts', 'Posts', '2021-05-13 23:22:05', '2021-05-13 23:22:05'),
(410, 'fr', 'Custom Links', 'Liens personnalisés', '2021-05-13 23:24:23', '2021-05-20 11:30:22'),
(411, 'en', 'Custom Links', 'Custom Links', '2021-05-13 23:24:29', '2021-05-13 23:24:29'),
(413, 'fr', 'Target Window', 'Fenêtre cible', '2021-05-16 09:05:22', '2021-05-16 09:05:58'),
(414, 'en', 'Target Window', 'Target Window', '2021-05-16 09:05:33', '2021-05-16 09:05:33'),
(417, 'en', 'CSS Class (Optional)', 'CSS Class (Optional)', '2021-05-16 09:47:32', '2021-05-16 09:47:32'),
(418, 'fr', 'CSS Class (Optional)', 'CSS Class (Optional)', '2021-05-16 09:47:38', '2021-05-16 09:47:38'),
(419, 'fr', 'Select menu option', 'Sélectionnez l\'option de menu', '2021-05-16 09:51:22', '2021-05-16 09:52:24'),
(420, 'en', 'Select menu option', 'Select menu option', '2021-05-16 09:51:30', '2021-05-16 09:51:30'),
(422, 'fr', 'Select width', 'Sélectionnez la largeur', '2021-05-16 09:54:32', '2021-05-16 09:55:26'),
(423, 'en', 'Select width', 'Select width', '2021-05-16 09:54:38', '2021-05-16 09:54:38'),
(425, 'en', 'Please fill out required field', 'Please fill out required field.', '2021-05-19 22:53:54', '2021-05-19 22:54:25'),
(427, 'fr', 'Please fill out required field', 'Veuillez remplir le champ obligatoire.', '2021-05-19 22:54:11', '2021-05-19 23:39:28'),
(428, 'en', 'Full Width', 'Full Width', '2021-05-20 11:17:23', '2021-05-20 11:17:23'),
(430, 'fr', 'Full Width', 'Pleine largeur', '2021-05-20 11:17:34', '2021-05-20 11:17:52'),
(432, 'en', 'Fixed Width', 'Fixed Width', '2021-05-20 11:19:02', '2021-05-20 11:19:02'),
(433, 'fr', 'Fixed Width', 'Largeur fixe', '2021-05-20 11:19:08', '2021-05-20 11:19:27'),
(435, 'en', 'Mega Menu', 'Mega Menu', '2021-05-20 11:20:33', '2021-05-20 11:20:33'),
(436, 'fr', 'Mega Menu', 'Méga menu', '2021-05-20 11:20:39', '2021-05-20 11:20:58'),
(438, 'en', 'Dropdown', 'Dropdown', '2021-05-20 11:21:44', '2021-05-20 11:21:44'),
(439, 'fr', 'Dropdown', 'Menu déroulant', '2021-05-20 11:21:49', '2021-05-20 11:22:23'),
(440, 'fr', 'None', 'Rien', '2021-05-20 11:22:42', '2021-05-20 11:23:10'),
(441, 'en', 'None', 'None', '2021-05-20 11:22:48', '2021-05-20 11:22:48'),
(444, 'en', 'Dropdown Menu', 'Dropdown Menu', '2021-05-20 11:24:45', '2021-05-20 11:24:45'),
(445, 'fr', 'Dropdown Menu', 'Menu déroulant', '2021-05-20 11:24:59', '2021-05-20 11:25:34'),
(447, 'en', 'Edit Mega Menu Title', 'Edit Mega Menu Title', '2021-05-20 11:36:40', '2021-05-20 11:36:40'),
(448, 'fr', 'Edit Mega Menu Title', 'Modifier le titre du méga menu', '2021-05-20 11:36:46', '2021-05-20 11:37:30'),
(449, 'fr', 'Title Enable/Disable', 'Titre Activer / Désactiver', '2021-05-20 11:37:55', '2021-05-20 11:38:38'),
(450, 'en', 'Title Enable/Disable', 'Title Enable/Disable', '2021-05-20 11:38:02', '2021-05-20 11:38:02'),
(452, 'fr', 'Image Enable/Disable', 'Image Activer / Désactiver', '2021-05-20 11:39:01', '2021-05-20 11:39:46'),
(453, 'en', 'Image Enable/Disable', 'Image Enable/Disable', '2021-05-20 11:39:06', '2021-05-20 11:39:06'),
(455, 'fr', 'Image', 'Image', '2021-05-20 11:40:30', '2021-05-20 11:40:30'),
(456, 'en', 'Image', 'Image', '2021-05-20 11:40:39', '2021-05-20 11:40:39'),
(458, 'en', 'All Posts', 'All Posts', '2021-05-20 12:53:32', '2021-05-20 12:53:32'),
(460, 'fr', 'All Posts', 'All Posts', '2021-05-20 12:53:44', '2021-05-20 12:53:44'),
(461, 'fr', 'All Pages', 'All Pages', '2021-05-20 12:54:15', '2021-05-20 12:54:15'),
(462, 'en', 'All Pages', 'All Pages', '2021-05-20 12:54:21', '2021-05-20 12:54:21'),
(464, 'en', 'Published', 'Published', '2021-05-25 09:56:59', '2021-05-25 09:56:59'),
(467, 'fr', 'Published', 'Publié', '2021-05-25 09:57:19', '2021-05-25 09:57:39'),
(468, 'en', 'Draft', 'Draft', '2021-05-25 09:58:54', '2021-05-25 09:58:54'),
(470, 'fr', 'Draft', 'Brouillon', '2021-05-25 09:59:10', '2021-05-25 09:59:25'),
(472, 'en', 'Publish', 'Publish', '2021-05-25 10:00:13', '2021-05-25 10:00:13'),
(473, 'fr', 'Publish', 'Publier', '2021-05-25 10:00:19', '2021-05-25 10:00:37'),
(475, 'en', 'Select Action', 'Select Action', '2021-05-25 10:01:35', '2021-05-25 10:01:35'),
(476, 'fr', 'Select Action', 'Sélectionnez l\'action', '2021-05-25 10:01:44', '2021-05-25 10:02:17'),
(477, 'en', 'Home Page', 'Home Page', '2021-05-25 12:53:37', '2021-05-25 12:53:37'),
(478, 'en', 'Home', 'Home', '2021-05-25 12:53:56', '2021-05-25 12:53:56'),
(481, 'fr', 'Home Page', 'Page d\'accueil', '2021-05-25 12:54:19', '2021-05-25 12:54:46'),
(482, 'fr', 'Home', 'accueil', '2021-05-25 12:54:27', '2021-05-25 12:55:19'),
(483, 'en', 'Permalink', 'Permalink', '2021-05-25 13:42:01', '2021-05-25 13:42:01'),
(485, 'fr', 'Permalink', 'Permalien', '2021-05-25 13:42:12', '2021-05-25 13:42:29'),
(486, 'en', 'Add New Row', 'Add New Row', '2021-05-27 21:43:58', '2021-05-27 21:43:58'),
(487, 'fr', 'Add New Row', 'Ajouter une nouvelle ligne', '2021-05-27 21:44:04', '2021-05-27 21:44:59'),
(489, 'fr', 'Add Column', 'Ajouter une colonne', '2021-05-27 23:48:01', '2021-05-27 23:48:33'),
(490, 'en', 'Add Column', 'Add Column', '2021-05-27 23:48:08', '2021-05-27 23:48:08'),
(493, 'en', 'Add Item', 'Add Item', '2021-05-27 23:50:41', '2021-05-27 23:50:41'),
(494, 'fr', 'Add Item', 'Ajouter un item', '2021-05-27 23:50:48', '2021-05-27 23:51:23'),
(495, 'en', 'Generate', 'Generate', '2021-05-30 00:16:06', '2021-05-30 00:16:06'),
(497, 'fr', 'Generate', 'produire', '2021-05-30 00:16:19', '2021-05-30 00:20:28'),
(498, 'fr', 'Custom', 'Personnalisé', '2021-05-30 00:18:38', '2021-05-30 00:20:07'),
(499, 'en', 'Custom', 'Custom', '2021-05-30 00:18:46', '2021-05-30 00:18:46'),
(501, 'en', 'Save changes', 'Save changes', '2021-05-31 21:13:57', '2021-05-31 21:13:57'),
(502, 'fr', 'Save changes', 'Sauvegarder les modifications', '2021-05-31 21:14:05', '2021-05-31 21:14:51'),
(504, 'fr', 'Row Options', 'Options de ligne', '2021-05-31 21:15:06', '2021-05-31 21:16:36'),
(505, 'en', 'Row Options', 'Row Options', '2021-05-31 21:15:12', '2021-05-31 21:15:12'),
(507, 'en', 'Define an admin label for easy identification', 'Define an admin label for easy identification.', '2021-05-31 21:23:11', '2021-05-31 21:23:11'),
(509, 'fr', 'Define an admin label for easy identification', 'Définissez une étiquette d\'administrateur pour une identification facile.', '2021-05-31 21:23:30', '2021-05-31 21:25:05'),
(510, 'fr', 'Admin Label', 'Étiquette d\'administrateur', '2021-05-31 21:24:10', '2021-05-31 21:25:35'),
(511, 'en', 'Admin Label', 'Admin Label', '2021-05-31 21:24:18', '2021-05-31 21:24:18'),
(513, 'fr', 'Style', 'Style', '2021-05-31 22:03:37', '2021-05-31 22:03:37'),
(514, 'en', 'Style', 'Style', '2021-05-31 22:03:43', '2021-05-31 22:03:43'),
(516, 'en', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', '2021-05-31 22:50:30', '2021-05-31 22:50:30'),
(518, 'fr', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', '2021-05-31 22:50:42', '2021-05-31 22:50:42'),
(519, 'fr', 'Enable this option to remove gutters between columns in this row.', 'Enable this option to remove gutters between columns in this row.', '2021-05-31 22:51:15', '2021-05-31 22:51:15'),
(521, 'en', 'Enable this option to remove gutters between columns in this row.', 'Enable this option to remove gutters between columns in this row.', '2021-05-31 22:51:34', '2021-05-31 22:51:34'),
(522, 'fr', 'Section ID', 'Section ID', '2021-05-31 22:52:48', '2021-05-31 22:52:48'),
(523, 'en', 'Section ID', 'Section ID', '2021-05-31 22:52:55', '2021-05-31 22:52:55'),
(526, 'en', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', '2021-05-31 22:54:40', '2021-05-31 22:54:40'),
(527, 'fr', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', '2021-05-31 22:54:47', '2021-05-31 22:54:47'),
(529, 'en', 'CSS Class', 'CSS Class', '2021-05-31 22:59:01', '2021-05-31 22:59:01'),
(530, 'fr', 'CSS Class', 'CSS Class', '2021-05-31 22:59:08', '2021-05-31 22:59:08'),
(531, 'fr', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', '2021-05-31 23:00:37', '2021-05-31 23:00:37'),
(532, 'en', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', '2021-05-31 23:00:43', '2021-05-31 23:00:43'),
(534, 'fr', 'Padding Top', 'Padding Top', '2021-05-31 23:06:24', '2021-05-31 23:06:24'),
(535, 'en', 'Padding Top', 'Padding Top', '2021-05-31 23:06:30', '2021-05-31 23:06:30'),
(538, 'en', 'Padding Bottom', 'Padding Bottom', '2021-05-31 23:07:57', '2021-05-31 23:07:57'),
(539, 'fr', 'Padding Bottom', 'Padding Bottom', '2021-05-31 23:08:03', '2021-05-31 23:08:03'),
(540, 'fr', 'Background Color', 'Background Color', '2021-05-31 23:19:47', '2021-05-31 23:19:47'),
(541, 'en', 'Background Color', 'Background Color', '2021-05-31 23:19:52', '2021-05-31 23:19:52'),
(544, 'en', 'Background Image', 'Background Image', '2021-05-31 23:24:13', '2021-05-31 23:24:13'),
(545, 'fr', 'Background Image', 'Background Image', '2021-05-31 23:24:20', '2021-05-31 23:24:20'),
(546, 'en', 'Background Position', 'Background Position', '2021-05-31 23:55:28', '2021-05-31 23:55:28'),
(548, 'fr', 'Background Position', 'Background Position', '2021-05-31 23:55:46', '2021-05-31 23:55:46'),
(549, 'en', 'Mailer', 'Mailer', '2021-06-03 17:11:56', '2021-06-03 17:11:56'),
(551, 'fr', 'Mailer', 'Expéditrice', '2021-06-03 17:12:10', '2021-06-03 17:14:24'),
(552, 'fr', 'From Name', 'From Name', '2021-06-03 17:17:47', '2021-06-03 17:17:47'),
(554, 'en', 'From Name', 'From Name', '2021-06-03 17:18:02', '2021-06-03 17:18:02'),
(556, 'en', 'From Mail Address', 'From Mail Address', '2021-06-03 17:19:58', '2021-06-03 17:19:58'),
(557, 'fr', 'From Mail Address', 'From Mail Address', '2021-06-03 17:20:05', '2021-06-03 17:20:05'),
(559, 'en', 'SMTP Host', 'SMTP Host', '2021-06-03 17:26:02', '2021-06-03 17:26:02'),
(560, 'fr', 'SMTP Host', 'SMTP Host', '2021-06-03 17:26:08', '2021-06-03 17:26:08'),
(561, 'fr', 'SMTP Port', 'SMTP Port', '2021-06-03 17:26:29', '2021-06-03 17:26:29'),
(562, 'en', 'SMTP Port', 'SMTP Port', '2021-06-03 17:26:36', '2021-06-03 17:26:36'),
(564, 'fr', 'SMTP Security', 'SMTP Security', '2021-06-03 17:30:02', '2021-06-03 17:30:02'),
(565, 'en', 'SMTP Security', 'SMTP Security', '2021-06-03 17:30:08', '2021-06-03 17:30:08'),
(567, 'fr', 'SMTP Username', 'SMTP Username', '2021-06-03 17:30:58', '2021-06-03 17:30:58'),
(568, 'en', 'SMTP Username', 'SMTP Username', '2021-06-03 17:31:04', '2021-06-03 17:31:04'),
(570, 'fr', 'SMTP Password', 'SMTP Password', '2021-06-03 17:31:47', '2021-06-03 17:31:47'),
(571, 'en', 'SMTP Password', 'SMTP Password', '2021-06-03 17:31:54', '2021-06-03 17:31:54'),
(574, 'en', 'To Name', 'To Name', '2021-06-03 17:38:18', '2021-06-03 17:38:18'),
(575, 'fr', 'To Name', 'To Name', '2021-06-03 17:38:24', '2021-06-03 17:38:24'),
(576, 'fr', 'To Mail Address', 'To Mail Address', '2021-06-03 17:39:05', '2021-06-03 17:39:05'),
(577, 'en', 'To Mail Address', 'To Mail Address', '2021-06-03 17:39:11', '2021-06-03 17:39:11'),
(579, 'en', 'Theme Options', 'Theme Options', '2021-06-06 22:19:11', '2021-06-06 22:19:11'),
(580, 'fr', 'Theme Options', 'Theme Options', '2021-06-06 22:19:19', '2021-06-06 22:19:19'),
(583, 'en', 'Logo', 'Logo', '2021-06-06 22:25:04', '2021-06-06 22:25:04'),
(584, 'fr', 'Logo', 'Logo', '2021-06-06 22:25:14', '2021-06-06 22:25:14'),
(585, 'fr', 'Custom CSS', 'Custom CSS', '2021-06-06 22:26:34', '2021-06-06 22:26:34'),
(586, 'en', 'Custom CSS', 'Custom CSS', '2021-06-06 22:26:40', '2021-06-06 22:26:40'),
(589, 'en', 'Custom JS', 'Custom JS', '2021-06-06 23:41:02', '2021-06-06 23:41:02'),
(590, 'fr', 'Custom JS', 'Custom JS', '2021-06-06 23:41:14', '2021-06-06 23:41:14'),
(591, 'en', 'eCommerce', 'eCommerce', '2021-06-27 22:56:10', '2021-06-27 22:56:10'),
(593, 'fr', 'eCommerce', 'eCommerce', '2021-06-27 22:56:24', '2021-06-27 22:56:24'),
(595, 'en', 'Products', 'Products', '2021-06-27 23:09:05', '2021-06-27 23:09:05'),
(596, 'fr', 'Products', 'Des produits', '2021-06-27 23:09:11', '2021-06-27 23:09:36'),
(598, 'en', 'Tax', 'Tax', '2021-06-27 23:35:37', '2021-06-27 23:35:37'),
(599, 'fr', 'Tax', 'Tax', '2021-06-27 23:35:43', '2021-06-27 23:35:43'),
(600, 'en', 'Percentage', 'Percentage', '2021-06-28 20:37:30', '2021-06-28 20:37:30'),
(602, 'fr', 'Percentage', 'Pourcentage', '2021-06-28 20:37:42', '2021-06-28 20:38:04'),
(607, 'en', 'Coupons', 'Coupons', '2021-06-28 22:30:40', '2021-06-28 22:30:40'),
(608, 'fr', 'Coupons', 'Bons de réduction', '2021-06-28 22:30:45', '2021-06-28 22:31:16'),
(609, 'fr', 'Code', 'Code', '2021-06-28 22:36:30', '2021-06-28 22:36:30'),
(610, 'en', 'Code', 'Code', '2021-06-28 22:36:36', '2021-06-28 22:36:36'),
(613, 'en', 'Expire Date', 'Expire Date', '2021-06-28 22:37:33', '2021-06-28 22:37:33'),
(614, 'fr', 'Expire Date', 'Expire Date', '2021-06-28 22:37:40', '2021-06-28 22:37:40'),
(615, 'en', 'Labels', 'Labels', '2021-06-29 18:04:26', '2021-06-29 18:04:26'),
(617, 'fr', 'Labels', 'Labels', '2021-06-29 18:04:38', '2021-06-29 18:04:38'),
(619, 'en', 'Color', 'Color', '2021-06-29 18:17:50', '2021-06-29 18:17:50'),
(620, 'fr', 'Color', 'Couleur', '2021-06-29 18:17:57', '2021-06-29 18:18:14'),
(622, 'en', 'Attributes', 'Attributes', '2021-06-29 19:45:27', '2021-06-29 19:45:27'),
(623, 'fr', 'Attributes', 'Les attributs', '2021-06-29 19:45:33', '2021-06-29 19:45:49'),
(624, 'fr', 'Attribute Type', 'Attribute Type', '2021-06-29 20:38:50', '2021-06-29 20:38:50'),
(625, 'en', 'Attribute Type', 'Attribute Type', '2021-06-29 20:38:56', '2021-06-29 20:38:56'),
(628, 'en', 'Collections', 'Collections', '2021-06-29 22:56:02', '2021-06-29 22:56:02'),
(629, 'fr', 'Collections', 'Collections', '2021-06-29 22:56:08', '2021-06-29 22:57:00'),
(630, 'en', 'Shipping', 'Shipping', '2021-06-30 19:47:31', '2021-06-30 19:47:31'),
(632, 'fr', 'Shipping', 'Expédition', '2021-06-30 19:47:43', '2021-06-30 19:48:00'),
(634, 'en', 'Shipping Fee', 'Shipping Fee', '2021-06-30 20:23:06', '2021-06-30 20:23:06'),
(635, 'fr', 'Shipping Fee', 'Frais d\'expédition', '2021-06-30 20:23:12', '2021-06-30 20:24:01'),
(637, 'en', 'Brands', 'Brands', '2021-06-30 21:23:01', '2021-06-30 21:23:01'),
(638, 'fr', 'Brands', 'Marques', '2021-06-30 21:23:07', '2021-06-30 21:24:06'),
(641, 'en', 'Featured', 'Featured', '2021-06-30 21:57:22', '2021-06-30 21:57:22'),
(642, 'fr', 'Featured', 'Featured', '2021-06-30 21:57:28', '2021-06-30 21:57:28'),
(644, 'en', 'YES', 'YES', '2021-06-30 21:59:29', '2021-06-30 21:59:29'),
(645, 'fr', 'YES', 'OUI', '2021-06-30 21:59:35', '2021-06-30 22:00:39'),
(647, 'en', 'NO', 'NO', '2021-06-30 22:01:20', '2021-06-30 22:01:20'),
(648, 'fr', 'NO', 'NON', '2021-06-30 22:01:26', '2021-06-30 22:02:19'),
(649, 'en', 'Product Categories', 'Product Categories', '2021-07-02 05:38:06', '2021-07-02 05:38:06'),
(651, 'fr', 'Product Categories', 'catégories de produits', '2021-07-02 05:38:19', '2021-07-02 05:38:38'),
(652, 'en', 'Subheader', 'Subheader', '2021-07-02 06:08:40', '2021-07-02 06:08:40'),
(654, 'fr', 'Subheader', 'Subheader', '2021-07-02 06:08:53', '2021-07-02 06:08:53'),
(655, 'fr', 'SEO', 'SEO', '2021-07-02 06:32:30', '2021-07-02 06:32:30'),
(656, 'en', 'SEO', 'SEO', '2021-07-02 06:32:38', '2021-07-02 06:32:38'),
(667, 'fr', 'SEO Title', 'SEO Title', '2021-07-02 07:34:27', '2021-07-02 07:34:27'),
(668, 'en', 'SEO Title', 'SEO Title', '2021-07-02 07:34:34', '2021-07-02 07:34:34'),
(670, 'fr', 'SEO Keywords', 'SEO Keywords', '2021-07-02 07:35:42', '2021-07-02 07:35:42'),
(671, 'en', 'SEO Keywords', 'SEO Keywords', '2021-07-02 07:35:48', '2021-07-02 07:35:48'),
(673, 'fr', 'SEO Description', 'SEO Description', '2021-07-02 07:37:02', '2021-07-02 07:37:02'),
(674, 'en', 'SEO Description', 'SEO Description', '2021-07-02 07:37:08', '2021-07-02 07:37:08'),
(676, 'fr', 'Open Graph Image', 'Open Graph Image', '2021-07-02 07:38:13', '2021-07-02 07:38:13'),
(677, 'en', 'Open Graph Image', 'Open Graph Image', '2021-07-02 07:38:20', '2021-07-02 07:38:20'),
(679, 'en', 'Offer & Ads', 'Offer & Ads', '2021-07-03 08:21:06', '2021-07-03 08:21:06'),
(681, 'fr', 'Offer & Ads', 'Offer & Ads', '2021-07-03 08:21:18', '2021-07-03 08:21:18'),
(682, 'en', 'Offer & Ads Position', 'Offer & Ads Position', '2021-07-03 08:42:55', '2021-07-03 08:42:55'),
(684, 'fr', 'Offer & Ads Position', 'Offer & Ads Position', '2021-07-03 08:43:08', '2021-07-03 08:43:08'),
(685, 'fr', 'Home Slider', 'Curseur d\'accueil', '2021-07-03 10:07:53', '2021-07-03 10:08:36'),
(686, 'en', 'Home Slider', 'Home Slider', '2021-07-03 10:07:59', '2021-07-03 10:07:59'),
(688, 'fr', 'Slider', 'Slider', '2021-07-03 11:13:16', '2021-07-03 11:13:16'),
(689, 'en', 'Slider', 'Slider', '2021-07-03 11:13:25', '2021-07-03 11:13:25'),
(691, 'en', 'Product', 'Product', '2021-07-04 07:59:13', '2021-07-04 07:59:13'),
(693, 'fr', 'Product', 'Produit', '2021-07-04 07:59:30', '2021-07-04 07:59:44'),
(695, 'en', 'Price', 'Price', '2021-07-04 08:01:20', '2021-07-04 08:01:20'),
(696, 'fr', 'Price', 'Prix', '2021-07-04 08:01:26', '2021-07-04 08:01:39'),
(698, 'en', 'Images', 'Images', '2021-07-04 08:03:13', '2021-07-04 08:03:13'),
(699, 'fr', 'Images', 'Images', '2021-07-04 08:03:21', '2021-07-04 08:03:21'),
(701, 'en', 'Variations', 'Variations', '2021-07-04 08:04:45', '2021-07-04 08:04:45'),
(702, 'fr', 'Variations', 'Variantes', '2021-07-04 08:04:51', '2021-07-04 08:05:09'),
(704, 'en', 'Inventory', 'Inventory', '2021-07-04 08:11:35', '2021-07-04 08:11:35'),
(705, 'fr', 'Inventory', 'Inventaire', '2021-07-04 08:11:41', '2021-07-04 08:11:55'),
(707, 'en', 'Related Products', 'Related Products', '2021-07-04 08:15:54', '2021-07-04 08:15:54'),
(708, 'fr', 'Related Products', 'Related Products', '2021-07-04 08:15:59', '2021-07-04 08:15:59'),
(709, 'fr', 'Short Description', 'brève description', '2021-07-04 10:11:03', '2021-07-04 10:11:56'),
(710, 'en', 'Short Description', 'Short Description', '2021-07-04 10:11:09', '2021-07-04 10:11:09'),
(712, 'fr', 'Product Content', 'Product Content', '2021-07-04 10:14:06', '2021-07-04 10:14:06'),
(713, 'en', 'Product Content', 'Product Content', '2021-07-04 10:14:12', '2021-07-04 10:14:12'),
(716, 'en', 'Category', 'Category', '2021-07-04 10:36:30', '2021-07-04 10:36:30'),
(717, 'fr', 'Category', 'Catégorie', '2021-07-04 10:36:36', '2021-07-04 10:36:51'),
(719, 'fr', 'Brand', 'Marque', '2021-07-04 10:46:20', '2021-07-04 10:46:59'),
(720, 'en', 'Brand', 'Brand', '2021-07-04 10:46:26', '2021-07-04 10:46:26'),
(721, 'fr', 'Collection', 'Collection', '2021-07-04 10:52:28', '2021-07-04 10:52:28'),
(722, 'en', 'Collection', 'Collection', '2021-07-04 10:52:35', '2021-07-04 10:52:35'),
(724, 'fr', 'Label', 'Label', '2021-07-04 10:56:13', '2021-07-04 10:56:13'),
(725, 'en', 'Label', 'Label', '2021-07-04 10:56:21', '2021-07-04 10:56:21'),
(728, 'en', 'Select Category', 'Select Category', '2021-07-04 11:06:57', '2021-07-04 11:06:57'),
(729, 'fr', 'Select Category', 'Choisir une catégorie', '2021-07-04 11:07:03', '2021-07-04 11:07:37'),
(730, 'en', 'Product Name', 'Product Name', '2021-07-05 10:43:14', '2021-07-05 10:43:14'),
(732, 'fr', 'Product Name', 'Nom du produit', '2021-07-05 10:43:29', '2021-07-05 10:46:27'),
(733, 'en', 'Cost Price', 'Cost Price', '2021-07-07 11:16:48', '2021-07-07 11:16:48'),
(735, 'fr', 'Cost Price', 'Cost Price', '2021-07-07 11:16:59', '2021-07-07 11:16:59'),
(736, 'fr', 'Sale Price', 'Sale Price', '2021-07-07 11:17:50', '2021-07-07 11:17:50'),
(737, 'en', 'Sale Price', 'Sale Price', '2021-07-07 11:17:57', '2021-07-07 11:17:57'),
(740, 'en', 'Old Price', 'Old Price', '2021-07-07 11:19:33', '2021-07-07 11:19:33'),
(741, 'fr', 'Old Price', 'Old Price', '2021-07-07 11:19:39', '2021-07-07 11:19:39'),
(742, 'fr', 'Start Date', 'Start Date', '2021-07-07 11:22:57', '2021-07-07 11:22:57'),
(743, 'en', 'Start Date', 'Start Date', '2021-07-07 11:23:03', '2021-07-07 11:23:03'),
(746, 'en', 'End Date', 'End Date', '2021-07-07 11:24:55', '2021-07-07 11:24:55'),
(747, 'fr', 'End Date', 'End Date', '2021-07-07 11:25:01', '2021-07-07 11:25:01'),
(748, 'fr', 'Manage Stock', 'Manage Stock', '2021-07-07 11:41:14', '2021-07-07 11:41:14'),
(749, 'en', 'Manage Stock', 'Manage Stock', '2021-07-07 11:41:20', '2021-07-07 11:41:20'),
(752, 'en', 'SKU', 'SKU', '2021-07-07 11:42:42', '2021-07-07 11:42:42'),
(753, 'fr', 'SKU', 'SKU', '2021-07-07 11:42:47', '2021-07-07 11:42:47'),
(754, 'fr', 'Stock Status', 'Stock Status', '2021-07-07 11:44:47', '2021-07-07 11:44:47'),
(755, 'en', 'Stock Status', 'Stock Status', '2021-07-07 11:44:53', '2021-07-07 11:44:53'),
(758, 'en', 'Stock Quantity', 'Stock Quantity', '2021-07-07 11:45:58', '2021-07-07 11:45:58'),
(759, 'fr', 'Stock Quantity', 'Stock Quantity', '2021-07-07 11:46:05', '2021-07-07 11:46:05'),
(760, 'fr', 'In Stock', 'In Stock', '2021-07-07 11:50:02', '2021-07-07 11:50:02'),
(761, 'en', 'In Stock', 'In Stock', '2021-07-07 11:50:08', '2021-07-07 11:50:08'),
(763, 'en', 'Featured image', 'Featured image', '2021-07-08 08:00:05', '2021-07-08 08:00:05'),
(765, 'fr', 'Featured image', 'Featured image', '2021-07-08 08:00:21', '2021-07-08 08:00:21'),
(766, 'en', 'Size', 'Size', '2021-07-08 12:40:54', '2021-07-08 12:40:54'),
(768, 'fr', 'Size', 'Taille', '2021-07-08 12:41:08', '2021-07-08 12:41:31'),
(770, 'en', 'Select color', 'Select color', '2021-07-08 12:42:38', '2021-07-08 12:42:38'),
(771, 'fr', 'Select color', 'Select color', '2021-07-08 12:42:43', '2021-07-08 12:42:43'),
(772, 'fr', 'Select Size', 'Select Size', '2021-07-08 12:43:00', '2021-07-08 12:43:00'),
(773, 'en', 'Select Size', 'Select Size', '2021-07-08 12:43:06', '2021-07-08 12:43:06'),
(775, 'en', 'Multiple Images', 'Multiple Images', '2021-07-08 21:11:21', '2021-07-08 21:11:21'),
(777, 'fr', 'Multiple Images', 'images multiples', '2021-07-08 21:11:34', '2021-07-08 21:12:51'),
(778, 'en', 'Social Media', 'Social Media', '2021-07-11 10:44:12', '2021-07-11 10:44:12'),
(780, 'fr', 'Social Media', 'Des médias sociaux', '2021-07-11 10:44:25', '2021-07-11 10:44:49'),
(784, 'fr', 'Twitter', 'Twitter', '2021-08-05 10:46:19', '2021-08-05 10:46:19'),
(786, 'en', 'Twitter', 'Twitter', '2021-08-05 10:46:38', '2021-08-05 10:46:38'),
(787, 'en', 'Google Analytics', 'Google Analytics', '2021-08-05 11:12:25', '2021-08-05 11:12:25'),
(789, 'fr', 'Google Analytics', 'Google Analytics', '2021-08-05 11:12:38', '2021-08-05 11:12:38'),
(790, 'fr', 'Google Tag Manager', 'Google Tag Manager', '2021-08-05 11:13:01', '2021-08-05 11:13:01'),
(791, 'en', 'Google Tag Manager', 'Google Tag Manager', '2021-08-05 11:13:07', '2021-08-05 11:13:07'),
(794, 'en', 'Whatsapp', 'Whatsapp', '2021-08-05 11:13:46', '2021-08-05 11:13:46'),
(795, 'fr', 'Whatsapp', 'Whatsapp', '2021-08-05 11:13:53', '2021-08-05 11:13:53'),
(796, 'en', 'Shop Now', 'Shop Now', '2021-08-06 02:45:08', '2021-08-06 02:45:08'),
(798, 'fr', 'Shop Now', 'Achetez maintenant', '2021-08-06 02:46:00', '2021-08-06 02:46:00'),
(799, 'en', 'Shop by Brands', 'Shop by Brands', '2021-08-07 09:35:17', '2021-08-07 09:35:17'),
(801, 'fr', 'Shop by Brands', 'Magasiner par marques', '2021-08-07 09:35:32', '2021-08-07 09:36:04'),
(802, 'en', 'New Arrivals', 'New Arrivals', '2021-08-15 02:53:50', '2021-08-15 02:53:50'),
(804, 'fr', 'New Arrivals', 'Nouvelles Arrivées', '2021-08-15 02:54:05', '2021-08-15 02:55:06'),
(805, 'fr', 'See all', 'Voir tout', '2021-08-15 02:55:42', '2021-08-15 02:56:13'),
(806, 'en', 'See all', 'See all', '2021-08-15 02:55:49', '2021-08-15 02:55:49'),
(808, 'en', 'Trending Products', 'Trending Products', '2021-08-15 04:23:33', '2021-08-15 04:23:33'),
(810, 'fr', 'Trending Products', 'Produits tendance', '2021-08-15 04:23:48', '2021-08-15 04:24:33'),
(811, 'en', 'Currency', 'Currency', '2021-08-21 09:02:08', '2021-08-21 09:02:08'),
(813, 'fr', 'Currency', 'Monnaie', '2021-08-21 09:02:23', '2021-08-21 09:02:43'),
(815, 'en', 'Currency Name', 'Currency Name', '2021-08-21 09:04:50', '2021-08-21 09:04:50'),
(816, 'fr', 'Currency Name', 'Currency Name', '2021-08-21 09:04:58', '2021-08-21 09:04:58'),
(817, 'fr', 'Currency Icon', 'Currency Icon', '2021-08-21 09:06:08', '2021-08-21 09:06:08'),
(818, 'en', 'Currency Icon', 'Currency Icon', '2021-08-21 09:06:14', '2021-08-21 09:06:14'),
(821, 'en', 'Currency Position', 'Currency Position', '2021-08-21 09:07:57', '2021-08-21 09:07:57'),
(822, 'fr', 'Currency Position', 'Currency Position', '2021-08-21 09:08:04', '2021-08-21 09:08:04'),
(823, 'en', 'RTL', 'RTL', '2021-08-24 09:53:21', '2021-08-24 09:53:21'),
(825, 'fr', 'RTL', 'RTL', '2021-08-24 09:53:34', '2021-08-24 09:53:34'),
(4148, 'ar', 'Languages', 'Languages', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4149, 'ar', 'New Data Added Successfully', 'Added Successfully', '2021-08-25 09:17:42', '2022-08-08 09:28:47'),
(4150, 'ar', 'Data insert failed', 'Data insert failed', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4151, 'ar', 'Data Updated Successfully', 'Updated Successfully', '2021-08-25 09:17:42', '2022-08-08 09:28:39'),
(4152, 'ar', 'Data update failed', 'Data update failed', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4153, 'ar', 'Data Removed Successfully', 'تمت إزالة البيانات بنجاح', '2021-08-25 09:17:42', '2021-09-17 08:46:03'),
(4154, 'ar', 'Data remove failed', 'Data remove failed', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4155, 'ar', 'Language Keywords', 'Language Keywords', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4156, 'ar', 'Add New', 'Add New', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4157, 'ar', 'Back to List', 'Back to List', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4158, 'ar', 'SL', 'SL', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4159, 'ar', 'Language Key', 'Language Key', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4160, 'ar', 'Language Value', 'Language Value', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4161, 'ar', 'Action', 'Action', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4162, 'ar', 'Save', 'Save', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4163, 'ar', 'Cancel', 'Cancel', '2021-08-25 09:17:42', '2021-08-25 09:17:42');
INSERT INTO `lankeyvalues` (`id`, `language_code`, `language_key`, `language_value`, `created_at`, `updated_at`) VALUES
(4164, 'ar', 'Do you really want to edit this record', 'Do you really want to edit this record?', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4165, 'ar', 'Do you really want to delete this record', 'Do you really want to delete this record?', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4166, 'ar', 'Delete', 'Delete', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4167, 'ar', 'Edit', 'Edit', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4168, 'ar', 'Confirm', 'Confirm', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4169, 'ar', 'This is alert message', 'This is alert message', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4170, 'ar', 'Language Code', 'Language Code', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4171, 'ar', 'Language Name', 'Language Name', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4172, 'ar', 'Active Language', 'Active Language', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4173, 'ar', 'General', 'General', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4174, 'ar', 'Site Name', 'Site Name', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4175, 'ar', 'Site Title', 'Site Title', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4176, 'ar', 'Site URL', 'Site URL', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4177, 'ar', 'Theme color', 'Theme color', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4178, 'ar', 'Favicon', 'Favicon', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4179, 'ar', 'The logo must be a file of type png', 'The logo must be a file of type png', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4180, 'ar', 'The file uploaded Successfully', 'The file uploaded Successfully', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4181, 'ar', 'Sorry, there was an error uploading your file', 'Sorry, there was an error uploading your file', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4182, 'ar', 'Sorry only you can upload jpg, png and gif file type', 'Sorry only you can upload jpg, png and gif file type', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4183, 'ar', 'Front Logo', 'Front Logo', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4184, 'ar', 'Back Logo', 'Back Logo', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4185, 'ar', 'Settings', 'Settings', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4186, 'ar', 'Time Zone', 'Time Zone', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4187, 'ar', 'Google reCAPTCHA', 'Google reCAPTCHA', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4188, 'ar', 'Theme Register', 'Theme Register', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4189, 'ar', 'Mail Settings', 'Mail Settings', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4191, 'ar', 'Media Setting', 'Media Setting', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4192, 'ar', 'Purchase Code', 'Purchase Code', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4193, 'ar', 'Sorry, This is not a valid purchase code.', 'Sorry, This is not a valid purchase code.', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4194, 'ar', 'Theme registered Successfully', 'Theme registered Successfully', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4195, 'ar', 'Theme deregister Successfully', 'Theme deregister Successfully', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4196, 'ar', 'Do you really want to deregister the theme', 'Do you really want to deregister the theme?', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4197, 'ar', 'Theme is registered', 'Theme is registered', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4198, 'ar', 'Deregister Theme', 'Deregister Theme', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4199, 'ar', 'Register Theme', 'Register Theme', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4200, 'ar', 'Users', 'Users', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4201, 'ar', 'Name', 'اسم', '2021-08-25 09:17:42', '2021-09-29 11:22:29'),
(4202, 'ar', 'Email', 'بريد الالكتروني', '2021-08-25 09:17:42', '2021-08-29 10:10:50'),
(4203, 'ar', 'Status', 'Status', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4204, 'ar', 'Role', 'Role', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4205, 'ar', 'Active', 'Active', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4206, 'ar', 'Inactive', 'Inactive', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4207, 'ar', 'Email Address', 'عنوان البريد الإلكتروني', '2021-08-25 09:17:42', '2021-08-29 10:37:02'),
(4208, 'ar', 'Password', 'كلمه السر', '2021-08-25 09:17:42', '2021-09-29 10:17:06'),
(4209, 'ar', 'Phone', 'هاتف', '2021-08-25 09:17:42', '2021-08-29 10:38:43'),
(4210, 'ar', 'Address', 'عنوان', '2021-08-25 09:17:42', '2021-08-29 10:37:27'),
(4211, 'ar', 'Active/Inactive', 'Active/Inactive', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4212, 'ar', 'Roles', 'Roles', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4213, 'ar', 'The profile image must be a file of type jpg', 'The profile image must be a file of type jpg', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4214, 'ar', 'Profile Photo', 'Profile Photo', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4215, 'ar', 'Profile photo size 300x300 pixels', 'Profile photo size 300x300 pixels', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4216, 'ar', 'Browse', 'Browse', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4217, 'ar', 'Profile', 'الملف الشخصي', '2021-08-25 09:17:42', '2021-10-02 11:04:14'),
(4218, 'ar', 'You are not active yet. Please contact administrator.', 'You are not active yet. Please contact administrator.', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4219, 'ar', 'You do not have permission to access this page', 'You do not have permission to access this page.', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4220, 'ar', 'Media', 'Media', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4221, 'ar', 'Attachment Details', 'Attachment Details', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4222, 'ar', 'Alternative Text', 'Alternative Text', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4223, 'ar', 'Title', 'Title', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4224, 'ar', 'Copy Link Thumbnail Image', 'Copy Link Thumbnail Image', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4225, 'ar', 'Copy Link large Image', 'Copy Link large Image', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4226, 'ar', 'Back', 'Back', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4227, 'ar', 'Select File', 'Select File', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4228, 'ar', 'All', 'All', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4229, 'ar', 'Bulk Select', 'Bulk Select', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4230, 'ar', 'Delete Permanently', 'Delete Permanently', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4231, 'ar', 'Search', 'بحث', '2021-08-25 09:17:42', '2021-08-30 07:56:26'),
(4232, 'ar', 'Type', 'Type', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4233, 'ar', 'Width', 'Width', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4234, 'ar', 'Height', 'Height', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4235, 'ar', 'Categories', 'Categories', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4236, 'ar', 'Category Name', 'Category Name', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4237, 'ar', 'Slug', 'Slug', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4238, 'ar', 'Language', 'Language', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4239, 'ar', 'All Language', 'كل اللغات', '2021-08-25 09:17:42', '2021-10-22 00:31:55'),
(4240, 'ar', 'Description', 'Description', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4241, 'ar', 'Subheader Image', 'Subheader Image', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4242, 'ar', 'Choose a File', 'Choose a File', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4243, 'ar', 'Upload File', 'Upload File', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4244, 'ar', 'Copy Thumbnail Image', 'Copy Thumbnail Image', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4245, 'ar', 'Menu', 'Menu', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4246, 'ar', 'Menu Name', 'Menu Name', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4247, 'ar', 'Menu Position', 'Menu Position', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4248, 'ar', 'Menu Status', 'Menu Status', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4249, 'ar', 'Position', 'Position', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4250, 'ar', 'Customize', 'Customize', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4251, 'ar', 'No data available', 'No data available', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4252, 'ar', 'Apply', 'تطبيق', '2021-08-25 09:17:42', '2021-09-16 23:44:46'),
(4253, 'ar', 'Do you really want to publish this records', 'Do you really want to publish this records?', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4254, 'ar', 'Do you really want to draft this records', 'Do you really want to draft this records?', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4255, 'ar', 'Do you really want to delete this records', 'Do you really want to delete this records?', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4256, 'ar', 'Please select action', 'Please select action', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4257, 'ar', 'Please select record', 'Please select record', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4258, 'ar', 'Save Menu', 'Save Menu', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4259, 'ar', 'Menu structure', 'Menu structure', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4260, 'ar', 'Add menu items', 'Add menu items', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4261, 'ar', 'Only selected language menu list', 'Only selected language menu list', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4262, 'ar', 'URL', 'URL', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4263, 'ar', 'Link Text', 'Link Text', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4264, 'ar', 'Navigation Label', 'Navigation Label', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4265, 'ar', 'Add to Menu', 'Add to Menu', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4266, 'ar', 'Select All', 'Select All', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4267, 'ar', 'Pages', 'Pages', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4268, 'ar', 'Posts', 'Posts', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4269, 'ar', 'Custom Links', 'Custom Links', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4270, 'ar', 'Target Window', 'Target Window', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4271, 'ar', 'CSS Class (Optional)', 'CSS Class (Optional)', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4272, 'ar', 'Select menu option', 'Select menu option', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4273, 'ar', 'Select width', 'Select width', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4274, 'ar', 'Please fill out required field', 'Please fill out required field.', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4275, 'ar', 'Full Width', 'Full Width', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4276, 'ar', 'Fixed Width', 'Fixed Width', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4277, 'ar', 'Mega Menu', 'Mega Menu', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4278, 'ar', 'Dropdown', 'Dropdown', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4279, 'ar', 'None', 'None', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4280, 'ar', 'Dropdown Menu', 'Dropdown Menu', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4281, 'ar', 'Edit Mega Menu Title', 'Edit Mega Menu Title', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4282, 'ar', 'Title Enable/Disable', 'Title Enable/Disable', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4283, 'ar', 'Image Enable/Disable', 'Image Enable/Disable', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4284, 'ar', 'Image', 'صورة', '2021-08-25 09:17:42', '2021-09-16 23:33:21'),
(4285, 'ar', 'All Posts', 'All Posts', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4286, 'ar', 'All Pages', 'All Pages', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4287, 'ar', 'Published', 'Published', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4288, 'ar', 'Draft', 'Draft', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4289, 'ar', 'Publish', 'Publish', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4290, 'ar', 'Select Action', 'Select Action', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4291, 'ar', 'Home Page', 'Home Page', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4292, 'ar', 'Home', 'الصفحة الرئيسية', '2021-08-25 09:17:42', '2021-09-11 10:33:26'),
(4293, 'ar', 'Permalink', 'Permalink', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4294, 'ar', 'Add New Row', 'Add New Row', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4295, 'ar', 'Add Column', 'Add Column', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4296, 'ar', 'Add Item', 'Add Item', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4297, 'ar', 'Generate', 'Generate', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4298, 'ar', 'Custom', 'Custom', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4299, 'ar', 'Save changes', 'Save changes', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4300, 'ar', 'Row Options', 'Row Options', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4301, 'ar', 'Define an admin label for easy identification', 'Define an admin label for easy identification.', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4302, 'ar', 'Admin Label', 'Admin Label', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4303, 'ar', 'Style', 'Style', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4304, 'ar', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4305, 'ar', 'Enable this option to remove gutters between columns in this row.', 'Enable this option to remove gutters between columns in this row.', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4306, 'ar', 'Section ID', 'Section ID', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4307, 'ar', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4308, 'ar', 'CSS Class', 'CSS Class', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4309, 'ar', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4310, 'ar', 'Padding Top', 'Padding Top', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4311, 'ar', 'Padding Bottom', 'Padding Bottom', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4312, 'ar', 'Background Color', 'Background Color', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4313, 'ar', 'Background Image', 'Background Image', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4314, 'ar', 'Background Position', 'Background Position', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4315, 'ar', 'Mailer', 'Mailer', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4316, 'ar', 'From Name', 'From Name', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4317, 'ar', 'From Mail Address', 'From Mail Address', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4318, 'ar', 'SMTP Host', 'SMTP Host', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4319, 'ar', 'SMTP Port', 'SMTP Port', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4320, 'ar', 'SMTP Security', 'SMTP Security', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4321, 'ar', 'SMTP Username', 'SMTP Username', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4322, 'ar', 'SMTP Password', 'SMTP Password', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4323, 'ar', 'To Name', 'To Name', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4324, 'ar', 'To Mail Address', 'To Mail Address', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4325, 'ar', 'Theme Options', 'Theme Options', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4326, 'ar', 'Logo', 'Logo', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4327, 'ar', 'Custom CSS', 'Custom CSS', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4328, 'ar', 'Custom JS', 'Custom JS', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4329, 'ar', 'eCommerce', 'eCommerce', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4330, 'ar', 'Products', 'منتجات', '2021-08-25 09:17:42', '2021-10-30 11:08:45'),
(4331, 'ar', 'Tax', 'ضريبة', '2021-08-25 09:17:42', '2021-09-13 23:21:31'),
(4332, 'ar', 'Percentage', 'Percentage', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4334, 'ar', 'Coupons', 'Coupons', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4335, 'ar', 'Code', 'Code', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4336, 'ar', 'Expire Date', 'Expire Date', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4337, 'ar', 'Labels', 'Labels', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4338, 'ar', 'Color', 'اللون', '2021-08-25 09:17:42', '2021-09-16 12:55:15'),
(4339, 'ar', 'Attributes', 'Attributes', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4340, 'ar', 'Attribute Type', 'Attribute Type', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4341, 'ar', 'Collections', 'Collections', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4342, 'ar', 'Shipping', 'Shipping', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4343, 'ar', 'Shipping Fee', 'رسوم الشحن', '2021-08-25 09:17:42', '2021-10-08 04:02:38'),
(4344, 'ar', 'Brands', 'Brands', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4345, 'ar', 'Featured', 'Featured', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4346, 'ar', 'YES', 'YES', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4347, 'ar', 'NO', 'NO', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4348, 'ar', 'Product Categories', 'Product Categories', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4349, 'ar', 'Subheader', 'Subheader', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4350, 'ar', 'SEO', 'SEO', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4351, 'ar', 'SEO Title', 'SEO Title', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4352, 'ar', 'SEO Keywords', 'SEO Keywords', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4353, 'ar', 'SEO Description', 'SEO Description', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4354, 'ar', 'Open Graph Image', 'Open Graph Image', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4355, 'ar', 'Offer & Ads', 'Offer & Ads', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4356, 'ar', 'Offer & Ads Position', 'Offer & Ads Position', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4357, 'ar', 'Home Slider', 'Home Slider', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4358, 'ar', 'Slider', 'Slider', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4359, 'ar', 'Product', 'المنتج', '2021-08-25 09:17:42', '2021-09-16 23:33:52'),
(4360, 'ar', 'Price', 'سعر', '2021-08-25 09:17:42', '2021-09-16 23:36:27'),
(4361, 'ar', 'Images', 'Images', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4362, 'ar', 'Variations', 'Variations', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4363, 'ar', 'Inventory', 'Inventory', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4364, 'ar', 'Related Products', 'منتجات ذات صله', '2021-08-25 09:17:42', '2021-09-10 05:06:53'),
(4365, 'ar', 'Short Description', 'Short Description', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4366, 'ar', 'Product Content', 'Product Content', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4367, 'ar', 'Category', 'Category', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4368, 'ar', 'Brand', 'Brand', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4369, 'ar', 'Collection', 'Collection', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4370, 'ar', 'Label', 'Label', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4371, 'ar', 'Select Category', 'Select Category', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4372, 'ar', 'Product Name', 'Product Name', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4373, 'ar', 'Cost Price', 'Cost Price', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4374, 'ar', 'Sale Price', 'Sale Price', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4375, 'ar', 'Old Price', 'Old Price', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4376, 'ar', 'Start Date', 'Start Date', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4377, 'ar', 'End Date', 'End Date', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4378, 'ar', 'Manage Stock', 'Manage Stock', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4379, 'ar', 'SKU', 'SKU', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4380, 'ar', 'Stock Status', 'Stock Status', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4381, 'ar', 'Stock Quantity', 'Stock Quantity', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4382, 'ar', 'In Stock', 'In Stock', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4383, 'ar', 'Featured image', 'Featured image', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4384, 'ar', 'Size', 'مقاس', '2021-08-25 09:17:42', '2021-09-16 12:54:47'),
(4385, 'ar', 'Select color', 'Select color', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4386, 'ar', 'Select Size', 'Select Size', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4387, 'ar', 'Multiple Images', 'Multiple Images', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4388, 'ar', 'Social Media', 'Social Media', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4390, 'ar', 'Twitter', 'Twitter', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4391, 'ar', 'Google Analytics', 'Google Analytics', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4392, 'ar', 'Google Tag Manager', 'Google Tag Manager', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4393, 'ar', 'Whatsapp', 'Whatsapp', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4394, 'ar', 'Shop Now', 'تسوق الآن', '2021-08-25 09:17:42', '2021-08-26 23:56:49'),
(4395, 'ar', 'Shop by Brands', 'تسوق حسب الماركات', '2021-08-25 09:17:42', '2021-08-26 23:46:40'),
(4396, 'ar', 'New Arrivals', 'القادمون الجدد', '2021-08-25 09:17:42', '2021-08-26 23:47:12'),
(4397, 'ar', 'See all', 'اظهار الكل', '2021-08-25 09:17:42', '2021-08-26 23:55:24'),
(4398, 'ar', 'Trending Products', 'تتجه المنتجات', '2021-08-25 09:17:42', '2021-08-26 23:47:37'),
(4399, 'ar', 'Currency', 'Currency', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4400, 'ar', 'Currency Name', 'Currency Name', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4401, 'ar', 'Currency Icon', 'Currency Icon', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4402, 'ar', 'Currency Position', 'Currency Position', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4403, 'ar', 'RTL', 'RTL', '2021-08-25 09:17:42', '2021-08-25 09:17:42'),
(4659, 'en', 'Available Offer', 'Available Offer', '2021-08-25 11:07:01', '2022-04-06 01:33:43'),
(4660, 'ar', 'Available Offer', 'العرض المتاح', '2021-08-25 11:07:18', '2021-08-25 11:09:12'),
(4662, 'fr', 'Available Offer', 'Offre disponible', '2021-08-25 11:08:08', '2021-08-25 11:08:08'),
(4663, 'ar', 'Best Sellers', 'أفضل البائعين', '2021-08-25 11:10:08', '2021-08-25 11:10:29'),
(4665, 'en', 'Best Sellers', 'Best Sellers', '2021-08-25 11:10:51', '2021-08-25 11:10:51'),
(4666, 'fr', 'Best Sellers', 'Meilleures ventes', '2021-08-25 11:11:07', '2021-08-25 11:11:07'),
(4667, 'en', 'Top Categories', 'Top Categories', '2021-08-27 00:41:44', '2021-08-27 00:41:44'),
(4668, 'ar', 'Top Categories', 'أعلى الفئات', '2021-08-27 00:42:05', '2021-08-27 00:42:05'),
(4669, 'fr', 'Top Categories', 'Principales catégories', '2021-08-27 00:42:17', '2021-08-27 00:42:17'),
(4670, 'en', 'Header', 'Header', '2021-08-29 08:05:33', '2021-08-29 08:05:33'),
(4671, 'ar', 'Header', 'رأس', '2021-08-29 08:06:00', '2021-08-29 08:07:40'),
(4672, 'fr', 'Header', 'Entête', '2021-08-29 08:06:07', '2021-08-29 08:07:17'),
(4673, 'ar', 'Footer', 'تذييل', '2021-08-29 08:10:27', '2021-08-29 08:10:27'),
(4674, 'en', 'Footer', 'Footer', '2021-08-29 08:10:34', '2021-08-29 08:10:34'),
(4675, 'fr', 'Footer', 'Bas de page', '2021-08-29 08:10:49', '2021-08-29 08:10:49'),
(4676, 'fr', 'Subscribe our newsletter', 'Abonnez-vous à notre newsletter', '2021-08-29 08:48:03', '2021-08-29 08:48:03'),
(4677, 'en', 'Subscribe our newsletter', 'Subscribe our newsletter', '2021-08-29 08:48:22', '2021-08-29 08:48:22'),
(4678, 'ar', 'Subscribe our newsletter', 'اشترك في النشرة الإخبارية لدينا', '2021-08-29 08:48:40', '2021-08-29 08:48:40'),
(4679, 'fr', 'Submit', 'Soumettre', '2021-08-29 08:50:24', '2021-08-29 08:50:24'),
(4680, 'en', 'Submit', 'Submit', '2021-08-29 08:50:31', '2021-08-29 08:50:31'),
(4681, 'ar', 'Submit', 'يقدم', '2021-08-29 08:50:44', '2021-08-29 08:50:44'),
(4682, 'ar', 'Enter your email', 'أدخل بريدك الإلكتروني', '2021-08-29 08:52:21', '2021-08-29 08:52:21'),
(4683, 'en', 'Enter your email', 'Enter your email', '2021-08-29 08:52:37', '2021-08-29 08:52:37'),
(4684, 'fr', 'Enter your email', 'Entrer votre Email', '2021-08-29 08:52:53', '2021-08-29 08:52:53'),
(4685, 'fr', 'Contact Us', 'Nous contacter', '2021-08-29 09:55:51', '2021-08-29 09:55:51'),
(4686, 'en', 'Contact Us', 'Contact Us', '2021-08-29 09:55:59', '2021-08-29 09:55:59'),
(4687, 'ar', 'Contact Us', 'اتصل بنا', '2021-08-29 09:56:46', '2021-08-29 09:56:46'),
(4688, 'ar', 'Copyright', 'حقوق النشر', '2021-08-29 10:42:20', '2021-08-29 10:42:20'),
(4689, 'en', 'Copyright', 'Copyright', '2021-08-29 10:42:27', '2021-08-29 10:42:27'),
(4690, 'fr', 'Copyright', 'droits d\'auteur', '2021-08-29 10:42:41', '2021-08-29 10:42:41'),
(4691, 'fr', 'Quick links', 'Liens rapides', '2021-08-29 11:01:42', '2021-08-29 11:01:42'),
(4692, 'ar', 'Quick links', 'روابط سريعة', '2021-08-29 11:01:58', '2021-08-29 11:01:58'),
(4693, 'en', 'Quick links', 'Quick links', '2021-08-29 11:02:09', '2021-08-29 11:02:09'),
(4694, 'en', 'Company', 'Company', '2021-08-29 11:03:15', '2021-08-29 11:03:15'),
(4695, 'ar', 'Company', 'شركة', '2021-08-29 11:03:29', '2021-08-29 11:03:29'),
(4696, 'fr', 'Company', 'Société', '2021-08-29 11:03:46', '2021-08-29 11:03:46'),
(4697, 'fr', 'Payment Gateway Icon', 'Icône de passerelle de paiement', '2021-08-29 11:08:13', '2021-08-29 11:08:13'),
(4699, 'ar', 'Payment Gateway Icon', 'أيقونة بوابة الدفع', '2021-08-29 11:08:32', '2021-08-29 11:08:32'),
(4700, 'ar', 'Search for Products', 'ابحث عن المنتجات', '2021-08-30 07:57:23', '2021-08-30 07:57:23'),
(4701, 'en', 'Search for Products', 'Search for Products', '2021-08-30 07:57:32', '2021-08-30 07:57:32'),
(4702, 'fr', 'Search for Products', 'Rechercher des produits', '2021-08-30 07:58:01', '2021-08-30 07:58:01'),
(4703, 'en', 'Trending', 'Trending', '2021-09-01 11:00:29', '2021-09-01 11:00:29'),
(4704, 'ar', 'Trending', 'الشائع', '2021-09-01 11:01:00', '2021-09-01 11:01:00'),
(4705, 'fr', 'Trending', 'Tendance', '2021-09-01 11:01:13', '2021-09-01 11:01:13'),
(4706, 'en', 'Filter by Category', 'Filter by Category', '2021-09-04 09:10:44', '2021-09-04 09:10:44'),
(4707, 'ar', 'Filter by Category', 'تصفية حسب الفئة', '2021-09-04 09:11:01', '2021-09-04 09:11:01'),
(4708, 'fr', 'Filter by Category', 'Filtrer par catégorie', '2021-09-04 09:11:24', '2021-09-04 09:11:24'),
(4709, 'en', 'Filter by Brand', 'Filter by Brand', '2021-09-04 10:54:10', '2021-09-04 10:54:10'),
(4710, 'ar', 'Filter by Brand', 'تصفية حسب الماركة', '2021-09-04 10:54:24', '2021-09-04 10:54:24'),
(4711, 'fr', 'Filter by Brand', 'Filtrer par marque', '2021-09-04 10:54:39', '2021-09-04 10:54:39'),
(4712, 'fr', 'Filter by Color', 'Filter by Color', '2021-09-04 11:06:49', '2021-09-04 11:06:49'),
(4713, 'ar', 'Filter by Color', 'تصفية حسب اللون', '2021-09-04 11:07:09', '2021-09-04 11:07:09'),
(4714, 'fr', 'Filter by Color', 'Filtrer par couleur', '2021-09-04 11:07:18', '2021-09-04 11:07:18'),
(4715, 'en', 'Filter by Size', 'Filter by Size', '2021-09-04 11:16:44', '2021-09-04 11:16:44'),
(4716, 'ar', 'Filter by Size', 'تصفية حسب الحجم', '2021-09-04 11:17:00', '2021-09-04 11:17:00'),
(4717, 'fr', 'Filter by Size', 'Filtrer par taille', '2021-09-04 11:17:11', '2021-09-04 11:17:11'),
(4718, 'en', 'Oops! No product found.', 'Oops! No product found.', '2021-09-04 11:26:55', '2021-09-04 11:26:55'),
(4719, 'ar', 'Oops! No product found.', 'وجه الفتاة! لم يتم العثور على منتج.', '2021-09-04 11:27:11', '2021-09-04 11:27:11'),
(4720, 'fr', 'Oops! No product found.', 'Oups! Aucun produit trouvé.', '2021-09-04 11:27:21', '2021-09-04 11:27:21'),
(4721, 'en', 'Availability', 'Availability', '2021-09-10 03:49:55', '2021-09-10 03:49:55'),
(4722, 'ar', 'Availability', 'التوفر', '2021-09-10 03:50:13', '2021-09-10 03:50:13'),
(4723, 'fr', 'Availability', 'Disponibilité', '2021-09-10 03:50:29', '2021-09-10 03:50:29'),
(4724, 'en', 'Quantity', 'Quantity', '2021-09-10 03:51:11', '2021-09-10 03:51:11'),
(4725, 'ar', 'Quantity', 'كمية', '2021-09-10 03:51:30', '2021-09-10 03:51:30'),
(4726, 'fr', 'Quantity', 'Quantité', '2021-09-10 03:51:41', '2021-09-10 03:51:41'),
(4727, 'en', 'Buy Now', 'Buy Now', '2021-09-10 03:54:50', '2021-09-10 03:54:50'),
(4728, 'ar', 'Buy Now', 'اشتري الآن', '2021-09-10 03:55:08', '2021-09-10 03:55:08'),
(4729, 'fr', 'Buy Now', 'Acheter maintenant', '2021-09-10 03:55:20', '2021-09-10 03:55:20'),
(4730, 'en', 'Add To Cart', 'Add To Cart', '2021-09-10 03:55:52', '2021-09-10 03:55:52'),
(4731, 'ar', 'Add To Cart', 'أضف إلى السلة', '2021-09-10 03:56:13', '2021-09-10 03:56:13'),
(4732, 'fr', 'Add To Cart', 'Ajouter au panier', '2021-09-10 03:56:26', '2021-09-10 03:56:26'),
(4733, 'en', 'Review', 'Review', '2021-09-10 05:14:11', '2021-09-10 05:14:11'),
(4734, 'ar', 'Review', 'إعادة النظر', '2021-09-10 05:14:24', '2021-09-10 05:14:24'),
(4735, 'fr', 'Review', 'Revoir', '2021-09-10 05:14:34', '2021-09-10 05:14:34'),
(4736, 'fr', 'Reviews', 'Revoir', '2021-09-10 05:17:09', '2021-09-10 05:17:09'),
(4737, 'en', 'Reviews', 'Reviews', '2021-09-10 05:17:16', '2021-09-10 05:17:16'),
(4738, 'ar', 'Reviews', 'المراجعات', '2021-09-10 05:17:29', '2021-09-10 05:17:29'),
(4739, 'en', 'Submit your review', 'Submit your review', '2021-09-10 05:18:17', '2021-09-10 05:18:17'),
(4740, 'ar', 'Submit your review', 'أرسل رأيك', '2021-09-10 05:18:31', '2021-09-10 05:18:31'),
(4741, 'fr', 'Submit your review', 'Soumettez votre avis', '2021-09-10 05:18:49', '2021-09-10 05:18:49'),
(4742, 'en', 'Your rating of this product', 'Your rating of this product', '2021-09-10 05:22:49', '2021-09-10 05:22:49'),
(4743, 'ar', 'Your rating of this product', 'تقييمك لهذا المنتج', '2021-09-10 05:23:14', '2021-09-10 05:23:14'),
(4744, 'fr', 'Your rating of this product', 'Votre évaluation de ce produit', '2021-09-10 05:23:28', '2021-09-10 05:23:28'),
(4745, 'en', 'Submit Review', 'Submit Review', '2021-09-10 05:23:52', '2021-09-10 05:23:52'),
(4746, 'ar', 'Submit Review', 'إرسال المراجعة', '2021-09-10 05:24:05', '2021-09-10 05:24:05'),
(4747, 'fr', 'Submit Review', 'Poster le commentaire', '2021-09-10 05:24:15', '2021-09-10 05:24:15'),
(4748, 'en', 'login', 'Login', '2021-09-10 05:24:43', '2021-09-28 09:23:08'),
(4749, 'ar', 'login', 'تسجيل الدخول', '2021-09-10 05:24:59', '2021-09-10 05:24:59'),
(4750, 'fr', 'login', 'connexion', '2021-09-10 05:25:10', '2021-09-10 05:25:10'),
(4754, 'en', 'reviews for', 'reviews for', '2021-09-10 05:52:17', '2021-09-10 05:52:17'),
(4755, 'ar', 'reviews for', 'استعراض', '2021-09-10 05:52:30', '2021-09-10 05:52:30'),
(4756, 'fr', 'reviews for', 'avis pour', '2021-09-10 05:52:44', '2021-09-10 05:52:44'),
(4757, 'en', 'Showing', 'Showing', '2021-09-11 07:22:53', '2021-09-11 07:22:53'),
(4758, 'ar', 'Showing', 'عرض', '2021-09-11 07:23:08', '2021-09-11 07:23:08'),
(4759, 'fr', 'Showing', 'Affichage', '2021-09-11 07:23:20', '2021-09-11 07:23:20'),
(4760, 'en', 'Default', 'Default', '2021-09-11 07:24:00', '2021-09-11 07:24:00'),
(4761, 'ar', 'Default', 'تقصير', '2021-09-11 07:24:15', '2021-09-11 07:24:15'),
(4762, 'fr', 'Default', 'Défaut', '2021-09-11 07:24:24', '2021-09-11 07:24:24'),
(4763, 'en', 'Added product to cart successfully.', 'Added product to cart successfully.', '2021-09-13 11:27:26', '2021-09-13 11:27:26'),
(4764, 'ar', 'Added product to cart successfully.', 'تمت إضافة المنتج إلى عربة التسوق بنجاح.', '2021-09-13 11:28:05', '2021-09-13 11:28:05'),
(4765, 'fr', 'Added product to cart successfully.', 'Produit ajouté au panier avec succès.', '2021-09-13 11:28:22', '2021-09-13 11:28:22'),
(4766, 'en', 'Added product to cart failed.', 'Added product to cart failed.', '2021-09-13 11:30:38', '2021-09-13 11:30:38'),
(4767, 'ar', 'Added product to cart failed.', 'المنتج المضاف إلى عربة التسوق فشل.', '2021-09-13 11:30:53', '2021-09-13 11:30:53'),
(4768, 'fr', 'Added product to cart failed.', 'Échec de l\'ajout du produit au panier.', '2021-09-13 11:31:06', '2021-09-13 11:31:06'),
(4769, 'en', 'Shopping Cart', 'Shopping Cart', '2021-09-13 11:46:43', '2021-09-13 11:46:43'),
(4770, 'ar', 'Shopping Cart', 'عربة التسوق', '2021-09-13 11:46:56', '2021-09-13 11:46:56'),
(4771, 'fr', 'Shopping Cart', 'Panier', '2021-09-13 11:47:06', '2021-09-13 11:47:06'),
(4772, 'en', 'View Cart', 'View Cart', '2021-09-13 11:47:35', '2021-09-13 11:47:35'),
(4773, 'ar', 'View Cart', 'عرض عربة التسوق', '2021-09-13 11:47:47', '2021-09-13 11:47:47'),
(4774, 'fr', 'View Cart', 'Voir le panier', '2021-09-13 11:47:58', '2021-09-13 11:47:58'),
(4775, 'en', 'Checkout', 'Checkout', '2021-09-13 11:48:22', '2021-09-13 11:48:22'),
(4776, 'ar', 'Checkout', 'الدفع', '2021-09-13 11:48:34', '2021-09-13 11:48:34'),
(4777, 'fr', 'Checkout', 'Vérifier', '2021-09-13 11:48:43', '2021-09-13 11:48:43'),
(4778, 'en', 'Subtotal', 'Subtotal', '2021-09-13 23:20:14', '2022-08-08 09:11:17'),
(4779, 'ar', 'Subtotal', 'المجموع الفرعي', '2021-09-13 23:20:31', '2021-09-13 23:20:31'),
(4780, 'fr', 'Subtotal', 'Subtotal', '2021-09-13 23:20:55', '2021-09-13 23:20:55'),
(4781, 'en', 'Total', 'Total', '2021-09-13 23:21:56', '2021-09-13 23:21:56'),
(4782, 'ar', 'Total', 'المجموع', '2021-09-13 23:22:13', '2021-09-13 23:22:13'),
(4783, 'fr', 'Total', 'Total', '2021-09-13 23:22:28', '2021-09-13 23:22:28'),
(4784, 'en', 'Please select required field.', 'Please select required field.', '2021-09-15 21:02:25', '2021-09-15 21:02:25'),
(4785, 'ar', 'Please select required field.', 'الرجاء تحديد الحقل المطلوب.', '2021-09-15 21:02:43', '2021-09-15 21:02:43'),
(4786, 'fr', 'Please select required field.', 'Veuillez sélectionner le champ requis.', '2021-09-15 21:03:21', '2021-09-15 21:03:21'),
(4787, 'en', 'Please enter quantity.', 'Please enter quantity.', '2021-09-15 22:14:13', '2021-09-15 22:14:13'),
(4788, 'ar', 'Please enter quantity.', 'الرجاء إدخال الكمية.', '2021-09-15 22:14:26', '2021-09-15 22:14:26'),
(4789, 'fr', 'Please enter quantity.', 'Veuillez saisir la quantité.', '2021-09-15 22:14:38', '2021-09-15 22:14:38'),
(4790, 'en', 'The value must be less than or equal to', 'The value must be less than or equal to', '2021-09-16 10:36:02', '2021-09-16 10:36:02'),
(4791, 'ar', 'The value must be less than or equal to', 'يجب أن تكون القيمة أقل من أو تساوي', '2021-09-16 10:36:20', '2021-09-16 10:36:20'),
(4792, 'fr', 'The value must be less than or equal to', 'La valeur doit être inférieure ou égale à', '2021-09-16 10:36:29', '2021-09-16 10:36:29'),
(4793, 'en', 'This product out of stock.', 'This product out of stock.', '2021-09-16 10:59:27', '2021-09-16 10:59:27'),
(4794, 'ar', 'This product out of stock.', 'هذا المنتج نفذ من المخزون.', '2021-09-16 10:59:41', '2021-09-16 10:59:41'),
(4795, 'fr', 'This product out of stock.', 'Ce produit est en rupture de stock.', '2021-09-16 10:59:51', '2021-09-16 10:59:51'),
(4796, 'en', 'Cart', 'Cart', '2021-09-16 12:02:31', '2021-09-16 12:02:31'),
(4797, 'ar', 'Cart', 'عربة التسوق', '2021-09-16 12:02:54', '2021-09-16 12:02:54'),
(4798, 'fr', 'Cart', 'Chariot', '2021-09-16 12:03:04', '2021-09-16 12:03:04'),
(4799, 'en', 'Variation', 'Variation', '2021-09-16 23:35:03', '2021-09-16 23:35:03'),
(4800, 'ar', 'Variation', 'تفاوت', '2021-09-16 23:35:16', '2021-09-16 23:35:16'),
(4801, 'fr', 'Variation', 'Variation', '2021-09-16 23:35:27', '2021-09-16 23:35:27'),
(4802, 'en', 'Remove', 'Remove', '2021-09-16 23:38:21', '2021-09-16 23:38:21'),
(4803, 'ar', 'Remove', 'يزيل', '2021-09-16 23:38:34', '2021-09-16 23:38:34'),
(4804, 'fr', 'Remove', 'Supprimer', '2021-09-16 23:38:43', '2021-09-16 23:38:43'),
(4805, 'en', 'Coupon Discount', 'Coupon Discount', '2021-09-16 23:41:14', '2021-09-16 23:41:14'),
(4806, 'ar', 'Coupon Discount', 'خصم القسيمة', '2021-09-16 23:41:28', '2021-09-16 23:41:28'),
(4807, 'fr', 'Coupon Discount', 'Coupon de réduction', '2021-09-16 23:41:50', '2021-09-16 23:41:50'),
(4808, 'en', 'Enter coupon code', 'Enter coupon code', '2021-09-16 23:42:18', '2021-09-16 23:42:18'),
(4809, 'ar', 'Enter coupon code', 'أدخل رمز القسيمة', '2021-09-16 23:44:04', '2021-09-16 23:44:04'),
(4810, 'fr', 'Enter coupon code', 'Entrer le code promotionnel', '2021-09-16 23:44:13', '2021-09-16 23:44:13'),
(4811, 'en', 'Cart Total', 'Cart Total', '2021-09-16 23:45:17', '2021-09-16 23:45:17'),
(4812, 'ar', 'Cart Total', 'إجمالي سلة التسوق', '2021-09-16 23:45:30', '2021-09-16 23:45:30'),
(4813, 'fr', 'Cart Total', 'Panier Total', '2021-09-16 23:45:39', '2021-09-16 23:45:39'),
(4814, 'en', 'Price Total', 'Price Total', '2021-09-16 23:46:27', '2021-09-16 23:46:27'),
(4815, 'ar', 'Price Total', 'السعر الإجمالي', '2021-09-16 23:46:39', '2021-09-16 23:46:39'),
(4816, 'fr', 'Price Total', 'Prix Total', '2021-09-16 23:46:48', '2021-09-16 23:46:48'),
(4817, 'en', 'Proceed To CheckOut', 'Proceed To CheckOut', '2021-09-16 23:48:05', '2021-09-16 23:48:05'),
(4818, 'ar', 'Proceed To CheckOut', 'باشرالخروج من الفندق', '2021-09-16 23:48:17', '2021-09-16 23:48:17'),
(4819, 'fr', 'Proceed To CheckOut', 'Passer à la caisse', '2021-09-16 23:48:26', '2021-09-16 23:48:26'),
(4820, 'en', 'Discount', 'Discount', '2021-09-17 00:47:11', '2021-09-17 00:47:11'),
(4821, 'ar', 'Discount', 'خصم', '2021-09-17 00:47:24', '2021-09-17 00:47:24'),
(4822, 'fr', 'Discount', 'Remise', '2021-09-17 00:47:33', '2021-09-17 00:47:33'),
(4823, 'en', 'Wishlist', 'Wishlist', '2021-09-17 04:29:50', '2021-09-17 04:29:50'),
(4824, 'ar', 'Wishlist', 'قائمة الرغبات', '2021-09-17 04:30:04', '2021-09-17 04:30:04'),
(4825, 'fr', 'Wishlist', 'Liste de souhaits', '2021-09-17 04:30:14', '2021-09-17 04:30:14'),
(4826, 'en', 'View', 'View', '2021-09-17 04:44:37', '2021-09-17 04:44:37'),
(4827, 'ar', 'View', 'رأي', '2021-09-17 04:44:54', '2021-09-17 04:44:54'),
(4828, 'fr', 'View', 'Vue', '2021-09-17 04:45:07', '2021-09-17 04:45:07'),
(4829, 'en', 'Added product to wishlist successfully.', 'Added product to wishlist successfully.', '2021-09-17 08:27:46', '2021-09-17 08:27:46'),
(4830, 'ar', 'Added product to wishlist successfully.', 'تمت إضافة المنتج إلى قائمة الرغبات بنجاح.', '2021-09-17 08:28:02', '2021-09-17 08:28:02'),
(4831, 'fr', 'Added product to wishlist successfully.', 'Produit ajouté à la liste de souhaits avec succès.', '2021-09-17 08:28:12', '2021-09-17 08:28:12'),
(4832, 'en', 'Added product to wishlist failed.', 'Added product to wishlist failed.', '2021-09-17 08:28:29', '2021-09-17 08:28:29'),
(4833, 'ar', 'Added product to wishlist failed.', 'فشل المنتج المضاف إلى قائمة الرغبات.', '2021-09-17 08:28:42', '2021-09-17 08:28:42'),
(4834, 'fr', 'Added product to wishlist failed.', 'Échec de l\'ajout du produit à la liste de souhaits.', '2021-09-17 08:28:51', '2021-09-17 08:28:51'),
(4835, 'en', 'Facebook APP ID', 'Facebook APP ID', '2021-09-17 11:39:22', '2021-09-17 11:39:22'),
(4836, 'fr', 'Facebook APP ID', 'Facebook APP ID', '2021-09-17 11:39:41', '2021-09-17 11:39:41'),
(4837, 'ar', 'Facebook APP ID', 'Facebook APP ID', '2021-09-17 11:39:53', '2021-09-17 11:39:53'),
(4838, 'en', 'Facebook Pixel', 'Facebook Pixel', '2021-09-17 11:41:41', '2021-09-17 11:41:41'),
(4839, 'ar', 'Facebook Pixel', 'Facebook Pixel', '2021-09-17 11:41:46', '2021-09-17 11:41:46'),
(4840, 'fr', 'Facebook Pixel', 'Facebook Pixel', '2021-09-17 11:41:51', '2021-09-17 11:41:51'),
(4841, 'en', 'Register', 'Register', '2021-09-28 10:50:46', '2021-09-28 10:50:46'),
(4842, 'ar', 'Register', 'يسجل', '2021-09-28 10:51:08', '2021-09-28 10:51:08'),
(4843, 'fr', 'Register', 'S\'inscrire', '2021-09-28 10:51:22', '2021-09-28 10:51:22'),
(4844, 'en', 'Sign in', 'Sign in', '2021-09-28 10:52:03', '2021-09-28 10:52:03'),
(4845, 'ar', 'Sign in', 'تسجيل الدخول', '2021-09-28 10:52:17', '2021-09-28 10:52:17'),
(4846, 'fr', 'Sign in', 'S\'identifier', '2021-09-28 10:52:27', '2021-09-28 10:52:27'),
(4847, 'en', 'Sign up for an account', 'Sign up for an account', '2021-09-28 11:40:45', '2021-09-28 11:40:45'),
(4848, 'ar', 'Sign up for an account', 'التسجيل للحصول على حساب', '2021-09-28 11:41:09', '2021-09-28 11:41:09'),
(4849, 'fr', 'Sign up for an account', 'Inscrivez-vous pour un compte', '2021-09-28 11:41:21', '2021-09-28 11:41:21'),
(4850, 'en', 'Forgot your password?', 'Forgot your password?', '2021-09-28 11:42:04', '2021-09-28 11:42:04'),
(4851, 'ar', 'Forgot your password?', 'نسيت رقمك السري؟', '2021-09-28 11:42:18', '2021-09-28 11:42:18'),
(4852, 'fr', 'Forgot your password?', 'Mot de passe oublié?', '2021-09-28 11:42:31', '2021-09-28 11:42:31'),
(4853, 'en', 'Back to login', 'Back to login', '2021-09-28 11:43:17', '2021-09-28 11:43:17'),
(4854, 'ar', 'Back to login', 'العودة إلى تسجيل الدخول', '2021-09-28 11:43:33', '2021-09-28 11:43:33'),
(4855, 'fr', 'Back to login', 'Retour connexion', '2021-09-28 11:43:45', '2021-09-28 11:43:45'),
(4856, 'en', 'Please enter your email address and password', 'Please enter your email address and password', '2021-09-29 10:08:45', '2021-09-29 10:08:45'),
(4857, 'ar', 'Please enter your email address and password', 'يرجى إدخال عنوان البريد الإلكتروني وكلمة المرور', '2021-09-29 10:09:00', '2021-09-29 10:09:00'),
(4858, 'fr', 'Please enter your email address and password', 'Veuillez saisir votre adresse e-mail et votre mot de passe', '2021-09-29 10:09:12', '2021-09-29 10:09:12'),
(4859, 'en', 'Please fill in the information below', 'Please fill in the information below', '2021-09-29 10:09:40', '2021-09-29 10:09:40'),
(4860, 'ar', 'Please fill in the information below', 'يرجى ملء المعلومات أدناه', '2021-09-29 10:09:51', '2021-09-29 10:09:51'),
(4861, 'fr', 'Please fill in the information below', 'Veuillez remplir les informations ci-dessous', '2021-09-29 10:10:01', '2021-09-29 10:10:01'),
(4862, 'en', 'Remember me', 'Remember me', '2021-09-29 10:15:34', '2021-09-29 10:15:34'),
(4863, 'ar', 'Remember me', 'تذكرنى', '2021-09-29 10:15:53', '2021-09-29 10:15:53'),
(4864, 'fr', 'Remember me', 'Souviens-toi de moi', '2021-09-29 10:16:07', '2021-09-29 10:16:07'),
(4865, 'en', 'Confirm password', 'Confirm password', '2021-09-29 11:20:49', '2021-09-29 11:20:49'),
(4866, 'ar', 'Confirm password', 'تأكيد كلمة المرور', '2021-09-29 11:21:08', '2021-09-29 11:21:08'),
(4867, 'fr', 'Confirm password', 'Confirmez le mot de passe', '2021-09-29 11:21:28', '2021-09-29 11:21:28'),
(4868, 'en', 'My Dashboard', 'My Dashboard', '2021-09-29 11:55:55', '2021-09-29 11:55:55'),
(4869, 'ar', 'My Dashboard', 'لوحة القيادة الخاصة بي', '2021-09-29 11:56:09', '2021-09-29 11:56:09'),
(4870, 'fr', 'My Dashboard', 'Mon tableau de bord', '2021-09-29 11:56:21', '2021-09-29 11:56:21'),
(4871, 'en', 'Logout', 'Logout', '2021-09-29 11:56:36', '2021-09-29 11:56:36'),
(4872, 'ar', 'Logout', 'تسجيل خروج', '2021-09-29 11:56:48', '2021-09-29 11:56:48'),
(4873, 'fr', 'Logout', 'Se déconnecter', '2021-09-29 11:56:56', '2021-09-29 11:56:56'),
(4874, 'en', 'The recaptcha field is required', 'The recaptcha field is required', '2021-09-30 07:52:58', '2021-09-30 07:52:58'),
(4875, 'ar', 'The recaptcha field is required', 'The recaptcha field is required', '2021-09-30 07:53:28', '2021-09-30 07:53:28'),
(4876, 'fr', 'The recaptcha field is required', 'Le champ recaptcha est obligatoire', '2021-09-30 07:53:39', '2021-09-30 07:53:39'),
(4877, 'en', 'Thanks! You have register successfully. Please login.', 'Thanks! You have register successfully. Please login.', '2021-09-30 08:21:09', '2021-09-30 08:21:09'),
(4878, 'ar', 'Thanks! You have register successfully. Please login.', 'شكرا! لقد قمت بالتسجيل بنجاح. الرجاء تسجيل الدخول.', '2021-09-30 08:21:22', '2021-09-30 08:21:22'),
(4879, 'fr', 'Thanks! You have register successfully. Please login.', 'Merci! Vous vous êtes inscrit avec succès. Veuillez vous connecter.', '2021-09-30 08:21:34', '2021-09-30 08:21:34'),
(4880, 'en', 'Oops! You are failed registration. Please try again.', 'Oops! You are failed registration. Please try again.', '2021-09-30 08:23:47', '2021-09-30 08:23:47'),
(4881, 'ar', 'Oops! You are failed registration. Please try again.', 'وجه الفتاة! لقد فشلت في التسجيل. حاول مرة اخرى.', '2021-09-30 08:23:58', '2021-09-30 08:23:58'),
(4882, 'fr', 'Oops! You are failed registration. Please try again.', 'Oups! Votre inscription a échoué. Veuillez réessayer.', '2021-09-30 08:24:09', '2021-09-30 08:24:09'),
(4883, 'en', 'Your email address and password incorrect.', 'Your email address and password incorrect.', '2021-09-30 08:28:38', '2021-09-30 08:28:38'),
(4884, 'ar', 'Your email address and password incorrect.', 'عنوان بريدك الإلكتروني وكلمة المرور غير صحيحين.', '2021-09-30 08:28:52', '2021-09-30 08:28:52'),
(4885, 'fr', 'Your email address and password incorrect.', 'Votre adresse e-mail et votre mot de passe sont incorrects.', '2021-09-30 08:29:03', '2021-09-30 08:29:03'),
(4886, 'en', 'Reset Password', 'Reset Password', '2021-09-30 10:35:18', '2021-09-30 10:35:18'),
(4887, 'ar', 'Reset Password', 'إعادة تعيين كلمة المرور', '2021-09-30 10:35:32', '2021-09-30 10:35:32'),
(4888, 'fr', 'Reset Password', 'réinitialiser le mot de passe', '2021-09-30 10:35:44', '2021-09-30 10:35:44'),
(4889, 'en', 'Enter your email address below and we will send you a link to reset your password', 'Enter your email address below and we will send you a link to reset your password', '2021-09-30 10:37:14', '2021-09-30 10:37:14'),
(4890, 'ar', 'Enter your email address below and we will send you a link to reset your password', 'أدخل عنوان بريدك الإلكتروني أدناه وسنرسل لك رابطًا لإعادة تعيين كلمة المرور الخاصة بك', '2021-09-30 10:37:29', '2021-09-30 10:37:29'),
(4891, 'fr', 'Enter your email address below and we will send you a link to reset your password', 'Entrez votre adresse e-mail ci-dessous et nous vous enverrons un lien pour réinitialiser votre mot de passe', '2021-09-30 10:37:40', '2021-09-30 10:37:40'),
(4892, 'en', 'Send Password Reset Link', 'Send Password Reset Link', '2021-09-30 10:42:40', '2021-09-30 10:42:40'),
(4893, 'ar', 'Send Password Reset Link', 'إرسال رابط إعادة تعيين كلمة السر', '2021-09-30 10:42:52', '2021-09-30 10:42:52'),
(4894, 'fr', 'Send Password Reset Link', 'Send Password Reset Link', '2021-09-30 10:43:04', '2021-09-30 10:44:05'),
(4895, 'en', 'We can not find a user with that email address', 'We can not find a user with that email address', '2021-09-30 11:03:06', '2021-09-30 11:03:06'),
(4896, 'ar', 'We can not find a user with that email address', 'لا يمكننا العثور على مستخدم بعنوان البريد الإلكتروني هذا', '2021-09-30 11:03:23', '2021-09-30 11:03:23'),
(4897, 'fr', 'We can not find a user with that email address', 'Nous ne pouvons pas trouver un utilisateur avec cette adresse e-mail', '2021-09-30 11:03:45', '2021-09-30 11:03:45'),
(4898, 'en', 'We have emailed your password reset link!', 'We have emailed your password reset link!', '2021-09-30 11:45:54', '2021-09-30 11:45:54'),
(4899, 'ar', 'We have emailed your password reset link!', 'لقد أرسلنا عبر البريد الإلكتروني رابط إعادة تعيين كلمة المرور الخاصة بك!', '2021-09-30 11:46:09', '2021-09-30 11:46:09'),
(4900, 'fr', 'We have emailed your password reset link!', 'Nous avons envoyé votre lien de réinitialisation de mot de passe par e-mail !', '2021-09-30 11:46:21', '2021-09-30 11:46:21'),
(4901, 'en', 'Oops! You are failed change password request. Please try again', 'Oops! You are failed change password request. Please try again', '2021-09-30 11:48:27', '2021-09-30 11:48:27'),
(4902, 'ar', 'Oops! You are failed change password request. Please try again', 'وجه الفتاة! لقد فشلت في طلب تغيير كلمة المرور. حاول مرة اخرى', '2021-09-30 11:48:39', '2021-09-30 11:48:39'),
(4903, 'fr', 'Oops! You are failed change password request. Please try again', 'Oups! Votre demande de changement de mot de passe a échoué. Veuillez réessayer', '2021-09-30 11:48:48', '2021-09-30 11:48:48'),
(4904, 'en', 'Forgot your password', 'Forgot your password', '2021-09-30 13:12:42', '2021-09-30 13:12:42'),
(4905, 'ar', 'Forgot your password', 'نسيت رقمك السري', '2021-09-30 13:12:56', '2021-09-30 13:12:56'),
(4906, 'fr', 'Forgot your password', 'Mot de passe oublié', '2021-09-30 13:13:06', '2021-09-30 13:13:06'),
(4907, 'en', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', '2021-09-30 13:13:52', '2021-09-30 13:13:52'),
(4908, 'ar', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', 'بحاجة إلى نسيان كلمة المرور الخاصة بك؟ لا مشكلة! فقط انقر فوق الزر أدناه وستكون في الطريق. إذا لم تقدم هذا الطلب ، فيرجى تجاهل هذا البريد الإلكتروني.', '2021-09-30 13:14:05', '2021-09-30 13:14:05'),
(4909, 'fr', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', 'Besoin d\'oublier votre mot de passe ? Aucun problème! Cliquez simplement sur le bouton ci-dessous et vous serez en route. Si vous n\'avez pas fait cette demande, veuillez ignorer cet e-mail.', '2021-09-30 13:14:14', '2021-09-30 13:14:14'),
(4910, 'en', 'This password reset token is invalid', 'This password reset token is invalid', '2021-10-01 07:49:02', '2021-10-01 07:49:02'),
(4911, 'ar', 'This password reset token is invalid', 'رمز إعادة تعيين كلمة المرور هذا غير صالح', '2021-10-01 07:51:00', '2021-10-01 07:51:00'),
(4912, 'fr', 'This password reset token is invalid', 'Ce jeton de réinitialisation de mot de passe n\'est pas valide', '2021-10-01 07:51:15', '2021-10-01 07:51:15'),
(4913, 'en', 'Oops! You are failed change password. Please try again', 'Oops! You are failed change password. Please try again', '2021-10-01 07:52:55', '2021-10-01 07:52:55');
INSERT INTO `lankeyvalues` (`id`, `language_code`, `language_key`, `language_value`, `created_at`, `updated_at`) VALUES
(4914, 'ar', 'Oops! You are failed change password. Please try again', 'وجه الفتاة! لقد فشلت في تغيير كلمة المرور. حاول مرة اخرى', '2021-10-01 07:53:12', '2021-10-01 07:53:12'),
(4915, 'fr', 'Oops! You are failed change password. Please try again', 'Oups! Vous n\'avez pas réussi à changer le mot de passe. Veuillez réessayer', '2021-10-01 07:53:25', '2021-10-01 07:53:25'),
(4916, 'en', 'Your password changed successfully', 'Your password changed successfully', '2021-10-01 07:54:07', '2021-10-01 07:54:07'),
(4917, 'ar', 'Your password changed successfully', 'تم تغيير كلمة المرور الخاصة بك بنجاح', '2021-10-01 07:55:22', '2021-10-01 07:55:22'),
(4918, 'fr', 'Your password changed successfully', 'Votre mot de passe a été modifié avec succès', '2021-10-01 07:55:35', '2021-10-01 07:55:35'),
(4919, 'en', 'This password reset email is invalid', 'This password reset email is invalid', '2021-10-01 08:19:38', '2021-10-01 08:19:38'),
(4920, 'ar', 'This password reset email is invalid', 'هذا البريد الإلكتروني لإعادة تعيين كلمة المرور غير صالح', '2021-10-01 08:19:54', '2021-10-01 08:19:54'),
(4921, 'fr', 'This password reset email is invalid', 'Cet e-mail de réinitialisation de mot de passe n\'est pas valide', '2021-10-01 08:20:06', '2021-10-01 08:20:06'),
(4922, 'en', 'Dashboard', 'Dashboard', '2021-10-02 11:01:08', '2021-10-02 11:01:08'),
(4923, 'ar', 'Dashboard', 'لوحة القيادة', '2021-10-02 11:01:24', '2021-10-02 11:01:24'),
(4924, 'fr', 'Dashboard', 'Tableau de bord', '2021-10-02 11:01:37', '2021-10-02 11:01:37'),
(4925, 'en', 'Orders', 'Orders', '2021-10-02 11:02:40', '2021-10-02 11:02:40'),
(4926, 'ar', 'Orders', 'أوامر', '2021-10-02 11:03:18', '2021-10-02 11:03:18'),
(4927, 'fr', 'Orders', 'Ordres', '2021-10-02 11:03:30', '2021-10-02 11:03:30'),
(4928, 'en', 'Change Password', 'Change Password', '2021-10-02 11:04:43', '2021-10-02 11:04:43'),
(4929, 'ar', 'Change Password', 'تغيير كلمة المرور', '2021-10-02 11:05:00', '2021-10-02 11:05:00'),
(4930, 'fr', 'Change Password', 'Changer le mot de passe', '2021-10-02 11:05:10', '2021-10-02 11:05:10'),
(4931, 'en', 'Update', 'Update', '2021-10-02 11:52:48', '2021-10-02 11:52:48'),
(4932, 'ar', 'Update', 'تحديث', '2021-10-02 11:53:00', '2021-10-02 11:53:00'),
(4933, 'fr', 'Update', 'Mettre à jour', '2021-10-02 11:53:13', '2021-10-02 11:53:13'),
(4934, 'en', 'State', 'State', '2021-10-04 10:27:02', '2021-10-04 10:27:02'),
(4935, 'ar', 'State', 'ولاية', '2021-10-04 10:27:19', '2021-10-04 10:27:19'),
(4936, 'fr', 'State', 'État', '2021-10-04 10:27:30', '2021-10-04 10:27:30'),
(4937, 'en', 'City', 'City', '2021-10-04 10:29:13', '2021-10-04 10:29:13'),
(4938, 'ar', 'City', 'مدينة', '2021-10-04 10:29:25', '2021-10-04 10:29:25'),
(4939, 'fr', 'City', 'Ville', '2021-10-04 10:29:38', '2021-10-04 10:29:38'),
(4940, 'en', 'Shipping Information', 'Shipping Information', '2021-10-06 08:48:47', '2021-10-06 08:48:47'),
(4941, 'ar', 'Shipping Information', 'معلومات الشحن', '2021-10-06 08:49:03', '2021-10-06 08:49:03'),
(4942, 'fr', 'Shipping Information', 'Informations sur la livraison', '2021-10-06 08:49:26', '2021-10-06 08:49:26'),
(4943, 'en', 'Already have an account?', 'Already have an account?', '2021-10-06 08:58:36', '2021-10-06 08:58:36'),
(4944, 'ar', 'Already have an account?', 'هل لديك حساب؟', '2021-10-06 08:58:56', '2021-10-06 08:58:56'),
(4945, 'fr', 'Already have an account?', 'Vous avez déjà un compte?', '2021-10-06 08:59:06', '2021-10-06 08:59:06'),
(4946, 'en', 'Register an account with above information?', 'Register an account with above information?', '2021-10-06 09:01:29', '2021-10-06 09:01:29'),
(4947, 'ar', 'Register an account with above information?', 'تسجيل حساب بالمعلومات أعلاه؟', '2021-10-06 09:01:42', '2021-10-06 09:01:42'),
(4948, 'fr', 'Register an account with above information?', 'Créer un compte avec les informations ci-dessus ?', '2021-10-06 09:01:55', '2021-10-06 09:01:55'),
(4949, 'en', 'Country', 'Country', '2021-10-06 10:04:40', '2021-10-06 10:04:40'),
(4950, 'ar', 'Country', 'دولة', '2021-10-06 10:04:52', '2021-10-06 10:04:52'),
(4951, 'fr', 'Country', 'Pays', '2021-10-06 10:05:03', '2021-10-06 10:05:03'),
(4955, 'fr', 'Stripe Secret', 'Stripe Secret', '2021-10-07 09:29:41', '2021-10-07 09:29:41'),
(4956, 'en', 'Stripe Secret', 'Stripe Secret', '2021-10-07 09:29:45', '2021-10-07 09:29:45'),
(4957, 'ar', 'Stripe Secret', 'Stripe Secret', '2021-10-07 09:29:51', '2021-10-07 09:29:51'),
(4958, 'en', 'Stripe Method', 'Stripe Method', '2021-10-07 10:13:45', '2021-10-07 10:13:45'),
(4959, 'ar', 'Stripe Method', 'Stripe Method', '2021-10-07 10:13:51', '2021-10-07 10:13:51'),
(4960, 'fr', 'Stripe Method', 'Stripe Method', '2021-10-07 10:13:59', '2021-10-07 10:13:59'),
(4961, 'en', 'Cash on Delivery (COD)', 'Cash on Delivery (COD)', '2021-10-07 10:16:20', '2021-10-07 10:16:20'),
(4962, 'ar', 'Cash on Delivery (COD)', 'الدفع عند الاستلام (COD)', '2021-10-07 10:16:36', '2021-10-07 10:16:36'),
(4963, 'fr', 'Cash on Delivery (COD)', 'Paiement à la livraison (COD)', '2021-10-07 10:16:48', '2021-10-07 10:16:48'),
(4964, 'en', 'Stripe', 'Stripe', '2021-10-07 10:40:49', '2021-10-07 10:40:49'),
(4965, 'ar', 'Stripe', 'شريط', '2021-10-07 10:41:03', '2021-10-07 10:41:03'),
(4966, 'fr', 'Stripe', 'Bande', '2021-10-07 10:41:14', '2021-10-07 10:41:14'),
(4967, 'en', 'Bank Transfer', 'Bank Transfer', '2021-10-07 10:52:11', '2021-10-07 10:52:11'),
(4968, 'ar', 'Bank Transfer', 'حوالة بنكية', '2021-10-07 10:52:27', '2021-10-07 10:52:27'),
(4969, 'fr', 'Bank Transfer', 'Virement', '2021-10-07 10:52:37', '2021-10-07 10:52:37'),
(4970, 'en', 'Payment Method', 'Payment Method', '2021-10-07 11:26:25', '2021-10-07 11:26:25'),
(4971, 'ar', 'Payment Method', 'طريقة الدفع او السداد', '2021-10-07 11:26:40', '2021-10-07 11:26:40'),
(4972, 'fr', 'Payment Method', 'Mode de paiement', '2021-10-07 11:26:53', '2021-10-07 11:26:53'),
(4973, 'en', 'Pay online via Stripe', 'Pay online via Stripe', '2021-10-07 11:27:38', '2021-10-07 11:27:38'),
(4974, 'ar', 'Pay online via Stripe', 'الدفع عبر الإنترنت عبر Stripe', '2021-10-07 11:27:54', '2021-10-07 11:27:54'),
(4975, 'fr', 'Pay online via Stripe', 'Payer en ligne via Stripe', '2021-10-07 11:28:05', '2021-10-07 11:28:05'),
(4976, 'en', 'Publishable Key', 'Publishable Key', '2021-10-07 12:26:28', '2021-10-07 12:26:28'),
(4977, 'ar', 'Publishable Key', 'Publishable Key', '2021-10-07 12:26:35', '2021-10-07 12:26:35'),
(4978, 'fr', 'Publishable Key', 'Publishable Key', '2021-10-07 12:26:41', '2021-10-07 12:26:41'),
(4979, 'en', 'Payment Gateway Icon', 'Payment Gateway Icon', '2021-10-07 21:28:25', '2021-10-07 21:28:25'),
(4980, 'en', 'Payment Methods', 'Payment Methods', '2021-10-07 21:28:56', '2021-10-07 21:28:56'),
(4981, 'ar', 'Payment Methods', 'طرق الدفع', '2021-10-07 21:29:14', '2021-10-07 21:29:14'),
(4982, 'fr', 'Payment Methods', 'méthodes de payement', '2021-10-07 21:29:25', '2021-10-07 21:29:25'),
(4983, 'en', 'Shipping Method', 'Shipping Method', '2021-10-07 23:00:55', '2021-10-07 23:00:55'),
(4984, 'ar', 'Shipping Method', 'طريقة الشحن', '2021-10-07 23:01:12', '2021-10-07 23:01:12'),
(4985, 'fr', 'Shipping Method', 'Mode de livraison', '2021-10-07 23:01:21', '2021-10-07 23:01:21'),
(4986, 'en', 'Order Summary', 'Order Summary', '2021-10-08 04:00:48', '2021-10-08 04:00:48'),
(4987, 'ar', 'Order Summary', 'ملخص الطلب', '2021-10-08 04:01:08', '2021-10-08 04:01:08'),
(4988, 'fr', 'Order Summary', 'Récapitulatif de la commande', '2021-10-08 04:01:18', '2021-10-08 04:01:18'),
(4992, 'en', 'Oops! Your order is failed. Please try again.', 'Oops! Your order is failed. Please try again.', '2021-10-08 10:12:53', '2021-10-08 10:12:53'),
(4993, 'ar', 'Oops! Your order is failed. Please try again.', 'وجه الفتاة! طلبك فشل. حاول مرة اخرى.', '2021-10-08 10:13:06', '2021-10-08 10:13:06'),
(4994, 'fr', 'Oops! Your order is failed. Please try again.', 'Oups! Votre commande a échoué. Veuillez réessayer.', '2021-10-08 10:13:17', '2021-10-08 10:13:17'),
(4995, 'en', 'Oops! Your order is failed. Please product add to cart.', 'Oops! Your order is failed. Please product add to cart.', '2021-10-08 11:26:57', '2021-10-08 11:26:57'),
(4996, 'ar', 'Oops! Your order is failed. Please product add to cart.', 'وجه الفتاة! طلبك فشل. الرجاء إضافة المنتج إلى عربة التسوق.', '2021-10-08 11:27:13', '2021-10-08 11:27:13'),
(4997, 'fr', 'Oops! Your order is failed. Please product add to cart.', 'Oups! Votre commande a échoué. Veuillez ajouter le produit au panier.', '2021-10-08 11:27:25', '2021-10-08 11:27:25'),
(4998, 'en', 'Please type valid card number', 'Please type valid card number', '2021-10-11 10:29:24', '2021-10-11 10:29:24'),
(4999, 'ar', 'Please type valid card number', 'الرجاء كتابة رقم بطاقة صحيح', '2021-10-11 10:29:41', '2021-10-11 10:29:41'),
(5000, 'fr', 'Please type valid card number', 'Veuillez saisir un numéro de carte valide', '2021-10-11 10:29:52', '2021-10-11 10:29:52'),
(5001, 'en', 'Your order is successfully.', 'Your order is successfully.', '2021-10-13 08:06:37', '2021-10-13 08:06:37'),
(5002, 'ar', 'Your order is successfully.', 'طلبك تم بنجاح.', '2021-10-13 08:06:57', '2021-10-13 08:07:13'),
(5003, 'fr', 'Your order is successfully.', 'Votre commande est réussie.', '2021-10-13 08:07:25', '2021-10-13 08:07:25'),
(5004, 'en', 'Continue Shopping', 'Continue Shopping', '2021-10-13 08:29:48', '2021-10-13 08:29:48'),
(5005, 'ar', 'Continue Shopping', 'مواصلة التسوق', '2021-10-13 08:30:07', '2021-10-13 08:30:07'),
(5006, 'fr', 'Continue Shopping', 'Continuer vos achats', '2021-10-13 08:30:20', '2021-10-13 08:30:20'),
(5007, 'en', 'Thank you for purchasing our products.', 'Thank you for purchasing our products.', '2021-10-13 08:33:19', '2021-10-13 08:33:19'),
(5008, 'ar', 'Thank you for purchasing our products.', 'أشكركم على شراء منتجاتنا.', '2021-10-13 08:33:31', '2021-10-13 08:33:31'),
(5009, 'fr', 'Thank you for purchasing our products.', 'Merci d\'avoir acheté nos produits.', '2021-10-13 08:33:40', '2021-10-13 08:49:45'),
(5010, 'en', 'Thank', 'Thank', '2021-10-13 08:44:47', '2021-10-13 08:44:47'),
(5011, 'ar', 'Thank', 'شكر', '2021-10-13 08:45:01', '2021-10-13 08:45:01'),
(5012, 'fr', 'Thank', 'Remercier', '2021-10-13 08:45:11', '2021-10-13 08:45:11'),
(5013, 'en', 'Order#', 'Order#', '2021-10-13 10:11:56', '2021-10-13 10:11:56'),
(5014, 'ar', 'Order#', 'ترتيب#', '2021-10-13 10:12:03', '2021-10-13 10:13:29'),
(5015, 'fr', 'Order#', 'Commander#', '2021-10-13 10:12:46', '2021-10-13 10:12:46'),
(5016, 'en', 'Order Date', 'Order Date', '2021-10-13 10:14:09', '2021-10-13 10:14:09'),
(5017, 'ar', 'Order Date', 'تاريخ الطلب', '2021-10-13 10:14:21', '2021-10-13 10:14:21'),
(5018, 'fr', 'Order Date', 'Date de commande', '2021-10-13 10:14:33', '2021-10-13 10:14:33'),
(5019, 'en', 'Guest User', 'Guest User', '2021-10-13 10:20:16', '2021-10-13 10:20:16'),
(5020, 'ar', 'Guest User', 'حساب زائر', '2021-10-13 10:20:29', '2021-10-13 10:20:29'),
(5021, 'fr', 'Guest User', 'Utilisateur invité', '2021-10-13 10:20:39', '2021-10-13 10:20:39'),
(5022, 'en', 'Customer', 'Customer', '2021-10-13 10:22:53', '2021-10-13 10:22:53'),
(5023, 'ar', 'Customer', 'عميل', '2021-10-13 10:23:08', '2021-10-13 10:23:08'),
(5024, 'fr', 'Customer', 'Cliente', '2021-10-13 10:23:18', '2021-10-13 10:23:18'),
(5025, 'en', 'Amount', 'Amount', '2021-10-13 10:23:44', '2021-10-13 10:23:44'),
(5026, 'ar', 'Amount', 'كمية', '2021-10-13 10:23:56', '2021-10-13 10:23:56'),
(5027, 'fr', 'Amount', 'Montante', '2021-10-13 10:24:06', '2021-10-13 10:24:06'),
(5028, 'en', 'Qty', 'Qty', '2021-10-13 10:24:41', '2021-10-13 10:24:41'),
(5029, 'ar', 'Qty', 'الكمية', '2021-10-13 10:24:53', '2021-10-13 10:24:53'),
(5030, 'fr', 'Qty', 'Qté', '2021-10-13 10:25:05', '2021-10-13 10:25:05'),
(5031, 'en', 'Payment Status', 'Payment Status', '2021-10-13 10:27:54', '2021-10-13 10:27:54'),
(5032, 'ar', 'Payment Status', 'حالة السداد', '2021-10-13 10:28:07', '2021-10-13 10:28:07'),
(5033, 'fr', 'Payment Status', 'Statut de paiement', '2021-10-13 10:28:17', '2021-10-13 10:28:17'),
(5034, 'en', 'Order Status', 'Order Status', '2021-10-13 10:28:44', '2021-10-13 10:28:44'),
(5035, 'ar', 'Order Status', 'حالة الطلب', '2021-10-13 10:28:57', '2021-10-13 10:28:57'),
(5036, 'fr', 'Order Status', 'Statut de la commande', '2021-10-13 10:29:11', '2021-10-13 10:29:11'),
(5037, 'en', 'Filter', 'Filter', '2021-10-14 07:43:49', '2021-10-14 07:43:49'),
(5038, 'ar', 'Filter', 'منقي', '2021-10-14 07:44:05', '2021-10-14 07:44:05'),
(5039, 'fr', 'Filter', 'Filtre', '2021-10-14 07:44:18', '2021-10-14 07:44:18'),
(5040, 'en', 'Order', 'Order', '2021-10-14 08:48:34', '2021-10-14 08:48:34'),
(5041, 'ar', 'Order', 'ترتيب', '2021-10-14 08:48:50', '2021-10-14 08:48:50'),
(5042, 'fr', 'Order', 'Commander', '2021-10-14 08:49:01', '2021-10-14 08:49:01'),
(5043, 'en', 'Send confirmation email to customer', 'Send confirmation email to customer', '2021-10-14 11:22:27', '2021-10-14 11:22:27'),
(5044, 'ar', 'Send confirmation email to customer', 'إرسال بريد إلكتروني للتأكيد إلى العميل', '2021-10-14 11:22:41', '2021-10-14 11:22:41'),
(5045, 'fr', 'Send confirmation email to customer', 'Envoyer un e-mail de confirmation au client', '2021-10-14 11:22:52', '2021-10-14 11:22:52'),
(5055, 'en', 'If you have any questions about this invoice, please contact us', 'If you have any questions about this invoice, please contact us', '2021-10-15 11:03:39', '2021-10-15 11:03:39'),
(5056, 'ar', 'If you have any questions about this invoice, please contact us', 'إذا كان لديك أي أسئلة حول هذه الفاتورة ، يرجى الاتصال بنا', '2021-10-15 11:03:55', '2021-10-15 11:03:55'),
(5057, 'fr', 'If you have any questions about this invoice, please contact us', 'Si vous avez des questions sur cette facture, veuillez nous contacter', '2021-10-15 11:04:05', '2021-10-15 11:04:05'),
(5058, 'en', 'Invoice', 'Invoice', '2021-10-15 11:17:01', '2021-10-15 11:17:01'),
(5059, 'ar', 'Invoice', 'فاتورة', '2021-10-15 11:17:16', '2021-10-15 11:17:16'),
(5060, 'fr', 'Invoice', 'Facture d\'achat', '2021-10-15 11:17:28', '2021-10-15 11:17:28'),
(5067, 'en', 'Invoice Information', 'Invoice Information', '2021-10-16 10:21:23', '2021-10-16 10:21:23'),
(5068, 'ar', 'Invoice Information', 'معلومات الفاتورة', '2021-10-16 10:21:36', '2021-10-16 10:21:36'),
(5069, 'fr', 'Invoice Information', 'Informations sur la facture', '2021-10-16 10:21:48', '2021-10-16 10:21:48'),
(5070, 'en', 'To', 'To', '2021-10-16 10:53:40', '2021-10-16 10:53:40'),
(5071, 'ar', 'To', 'إلى', '2021-10-16 10:53:55', '2021-10-16 10:53:55'),
(5072, 'fr', 'To', 'À', '2021-10-16 10:54:05', '2021-10-16 10:54:05'),
(5073, 'en', 'BILL TO', 'BILL TO', '2021-10-18 07:27:41', '2021-10-18 07:27:41'),
(5074, 'ar', 'BILL TO', 'فاتورة الى', '2021-10-18 07:28:47', '2021-10-18 07:28:47'),
(5075, 'fr', 'BILL TO', 'FACTURER', '2021-10-18 07:28:58', '2021-10-18 07:28:58'),
(5076, 'en', 'BILL FROM', 'BILL FROM', '2021-10-18 07:31:10', '2021-10-18 07:31:10'),
(5077, 'ar', 'BILL FROM', 'بيل من', '2021-10-18 07:31:49', '2021-10-18 07:31:49'),
(5078, 'fr', 'BILL FROM', 'FACTURE DE', '2021-10-18 07:32:04', '2021-10-18 07:32:04'),
(5082, 'en', 'Thanks for your order. You can find your purchase information below.', 'Thanks for your order. You can find your purchase information below.', '2021-10-18 09:09:31', '2021-10-18 09:09:31'),
(5083, 'ar', 'Thanks for your order. You can find your purchase information below.', 'شكرا لطلبك. يمكنك العثور على معلومات الشراء الخاصة بك أدناه.', '2021-10-18 09:09:47', '2021-10-18 09:09:47'),
(5084, 'fr', 'Thanks for your order. You can find your purchase information below.', 'Merci pour votre commande. Vous pouvez trouver vos informations d\'achat ci-dessous.', '2021-10-18 09:10:27', '2021-10-18 09:10:27'),
(5085, 'en', 'Hi', 'Hi', '2021-10-18 09:10:40', '2021-10-18 09:10:40'),
(5086, 'ar', 'Hi', 'أهلا', '2021-10-18 09:10:52', '2021-10-18 09:10:52'),
(5087, 'fr', 'Hi', 'salut', '2021-10-18 09:11:08', '2021-10-18 09:11:08'),
(5088, 'en', 'Your order status', 'Your order status', '2021-10-18 10:27:44', '2021-10-18 10:27:44'),
(5089, 'ar', 'Your order status', 'حالة طلبك', '2021-10-18 10:28:13', '2021-10-18 10:28:13'),
(5090, 'fr', 'Your order status', 'L\'état de votre commande', '2021-10-18 10:28:24', '2021-10-18 10:28:24'),
(5091, 'en', 'We have received your order and will contact you as soon as your package is shipped. You can find your purchase information below.', 'We have received your order and will contact you as soon as your package is shipped. You can find your purchase information below.', '2021-10-18 11:20:19', '2021-10-18 11:20:19'),
(5092, 'ar', 'We have received your order and will contact you as soon as your package is shipped. You can find your purchase information below.', 'لقد تلقينا طلبك وسوف نتصل بك بمجرد شحن الطرد الخاص بك. يمكنك العثور على معلومات الشراء الخاصة بك أدناه.', '2021-10-18 11:20:37', '2021-10-18 11:20:37'),
(5093, 'fr', 'We have received your order and will contact you as soon as your package is shipped. You can find your purchase information below.', 'Nous avons bien reçu votre commande et vous contacterons dès que votre colis sera expédié. Vous pouvez trouver vos informations d\'achat ci-dessous.', '2021-10-18 11:20:51', '2021-10-18 11:20:51'),
(5094, 'en', 'Order Details', 'Order Details', '2021-10-19 12:01:32', '2021-10-19 12:01:32'),
(5095, 'ar', 'Order Details', 'تفاصيل الطلب', '2021-10-19 12:01:45', '2021-10-19 12:01:45'),
(5096, 'fr', 'Order Details', 'détails de la commande', '2021-10-19 12:01:56', '2021-10-19 12:01:56'),
(5097, 'en', 'Current password does not match.', 'Current password does not match.', '2021-10-20 01:23:42', '2021-10-20 01:23:42'),
(5098, 'ar', 'Current password does not match.', 'كلمة المرور الحالية غير متطابقة.', '2021-10-20 01:23:58', '2021-10-20 01:23:58'),
(5099, 'fr', 'Current password does not match.', 'Le mot de passe actuel ne correspond pas.', '2021-10-20 01:24:09', '2021-10-20 01:24:09'),
(5100, 'en', 'New password can not be the old password!', 'New password can not be the old password!', '2021-10-20 01:27:11', '2021-10-20 01:27:11'),
(5101, 'ar', 'New password can not be the old password!', 'لا يمكن أن تكون كلمة المرور الجديدة هي كلمة المرور القديمة!', '2021-10-20 01:27:25', '2021-10-20 01:27:25'),
(5102, 'fr', 'New password can not be the old password!', 'Le nouveau mot de passe ne peut pas être l\'ancien mot de passe !', '2021-10-20 01:27:38', '2021-10-20 01:27:38'),
(5103, 'en', 'Current password', 'Current password', '2021-10-20 01:31:47', '2021-10-20 01:31:47'),
(5104, 'ar', 'Current password', 'كلمة المرور الحالي', '2021-10-20 01:32:00', '2021-10-20 01:32:00'),
(5105, 'fr', 'Current password', 'Mot de passe actuel', '2021-10-20 01:32:16', '2021-10-20 01:32:16'),
(5106, 'en', 'New password', 'New password', '2021-10-20 01:32:48', '2021-10-20 01:32:48'),
(5107, 'ar', 'New password', 'كلمة مرور جديدة', '2021-10-20 01:33:01', '2021-10-20 01:33:01'),
(5108, 'fr', 'New password', 'Nouveau mot de passe', '2021-10-20 01:33:13', '2021-10-20 01:33:13'),
(5109, 'en', 'Password confirmation', 'Password confirmation', '2021-10-20 01:33:53', '2021-10-20 01:33:53'),
(5110, 'ar', 'Password confirmation', 'تأكيد كلمة المرور', '2021-10-20 01:34:07', '2021-10-20 01:34:07'),
(5111, 'fr', 'Password confirmation', 'Confirmation mot de passe', '2021-10-20 01:34:18', '2021-10-20 01:34:18'),
(5112, 'en', 'Do you really want to active this records', 'Do you really want to active this records', '2021-10-20 06:17:20', '2021-10-20 06:17:20'),
(5113, 'ar', 'Do you really want to active this records', 'هل تريد حقًا تنشيط هذه السجلات', '2021-10-20 06:17:33', '2021-10-20 06:17:33'),
(5114, 'fr', 'Do you really want to active this records', 'Voulez-vous vraiment activer ces enregistrements', '2021-10-20 06:17:46', '2021-10-20 06:17:46'),
(5115, 'en', 'Do you really want to inactive this records', 'Do you really want to inactive this records', '2021-10-20 06:18:15', '2021-10-20 06:18:15'),
(5116, 'ar', 'Do you really want to inactive this records', 'هل تريد حقًا تعطيل هذه السجلات', '2021-10-20 06:18:28', '2021-10-20 06:18:28'),
(5117, 'fr', 'Do you really want to inactive this records', 'Voulez-vous vraiment désactiver ces enregistrements', '2021-10-20 06:18:40', '2021-10-20 06:18:40'),
(5118, 'en', 'Customers', 'Customers', '2021-10-20 10:20:56', '2021-10-20 10:20:56'),
(5119, 'ar', 'Customers', 'عملاء', '2021-10-20 10:21:08', '2021-10-20 10:21:08'),
(5120, 'fr', 'Customers', 'Les clients', '2021-10-20 10:21:19', '2021-10-20 10:21:19'),
(5121, 'en', 'Write comment', 'Write comment', '2021-10-21 07:13:25', '2021-10-21 07:13:25'),
(5122, 'ar', 'Write comment', 'اكتب تعليق', '2021-10-21 07:13:39', '2021-10-21 07:13:39'),
(5123, 'fr', 'Write comment', 'Ecrire un commentaire', '2021-10-21 07:13:50', '2021-10-21 07:13:50'),
(5124, 'en', 'Please Login', 'Please Login', '2021-10-21 07:47:07', '2021-10-21 07:47:07'),
(5125, 'ar', 'Please Login', 'الرجاء تسجيل الدخول', '2021-10-21 07:47:21', '2021-10-21 07:47:21'),
(5126, 'fr', 'Please Login', 'Veuillez vous connecter', '2021-10-21 07:47:46', '2021-10-21 07:47:46'),
(5127, 'en', 'Thanks for your review', 'Thanks for your review', '2021-10-21 07:57:32', '2021-10-21 07:57:32'),
(5128, 'ar', 'Thanks for your review', 'شكرا لمراجعتك', '2021-10-21 07:57:45', '2021-10-21 07:57:45'),
(5129, 'fr', 'Thanks for your review', 'Merci pour votre avis', '2021-10-21 07:58:04', '2021-10-21 07:58:04'),
(5130, 'en', 'Oops! You are failed review. Please try again.', 'Oops! You are failed review. Please try again.', '2021-10-21 08:01:49', '2021-10-21 08:01:49'),
(5131, 'ar', 'Oops! You are failed review. Please try again.', 'وجه الفتاة! لقد فشلت المراجعة. حاول مرة اخرى.', '2021-10-21 08:02:05', '2021-10-21 08:02:05'),
(5132, 'fr', 'Oops! You are failed review. Please try again.', 'Oups! Vous avez échoué à l\'examen. Veuillez réessayer.', '2021-10-21 08:02:17', '2021-10-21 08:02:17'),
(5133, 'en', 'Oops! You are unauthorized. Please login.', 'Oops! You are unauthorized. Please login.', '2021-10-21 08:20:07', '2021-10-21 08:20:07'),
(5134, 'ar', 'Oops! You are unauthorized. Please login.', 'وجه الفتاة! أنت غير مصرح به. الرجاء تسجيل الدخول.', '2021-10-21 08:20:22', '2021-10-21 08:20:22'),
(5135, 'fr', 'Oops! You are unauthorized. Please login.', 'Oups! Vous n\'êtes pas autorisé. Veuillez vous connecter.', '2021-10-21 08:20:35', '2021-10-21 08:20:35'),
(5136, 'en', 'You have reviewed this product already!', 'You have reviewed this product already!', '2021-10-21 08:33:35', '2021-10-21 08:33:35'),
(5137, 'ar', 'You have reviewed this product already!', 'لقد قمت بمراجعة هذا المنتج بالفعل!', '2021-10-21 08:33:49', '2021-10-21 08:33:49'),
(5138, 'fr', 'You have reviewed this product already!', 'Vous avez déjà évalué ce produit !', '2021-10-21 08:34:02', '2021-10-21 08:34:02'),
(5139, 'en', 'Review & Ratings', 'Review & Ratings', '2021-10-21 10:03:34', '2021-10-21 10:03:34'),
(5140, 'ar', 'Review & Ratings', 'مراجعة والتقييمات', '2021-10-21 10:04:21', '2021-10-21 10:04:21'),
(5141, 'fr', 'Review & Ratings', 'Avis et notes', '2021-10-21 10:04:35', '2021-10-21 10:04:35'),
(5142, 'en', 'Ratings', 'Ratings', '2021-10-21 10:18:17', '2021-10-21 10:18:17'),
(5143, 'ar', 'Ratings', 'التقييمات', '2021-10-21 10:18:31', '2021-10-21 10:18:31'),
(5144, 'fr', 'Ratings', 'Évaluations', '2021-10-21 10:18:42', '2021-10-21 10:18:42'),
(5145, 'en', 'Comments', 'Comments', '2021-10-21 10:21:08', '2021-10-21 10:21:08'),
(5146, 'ar', 'Comments', 'تعليقات', '2021-10-21 10:21:25', '2021-10-21 10:21:25'),
(5147, 'fr', 'Comments', 'commentaires', '2021-10-21 10:21:36', '2021-10-21 10:21:36'),
(5148, 'en', 'Review Date', 'Review Date', '2021-10-21 10:23:57', '2021-10-21 10:23:57'),
(5149, 'ar', 'Review Date', 'تاريخ المراجعة', '2021-10-21 10:24:17', '2021-10-21 10:24:17'),
(5150, 'fr', 'Review Date', 'Date de révision', '2021-10-21 10:24:26', '2021-10-21 10:24:26'),
(5151, 'en', 'All Category', 'All Category', '2021-10-22 07:25:42', '2021-10-22 07:25:42'),
(5152, 'ar', 'All Category', 'كل الفئات', '2021-10-22 07:25:59', '2021-10-22 07:25:59'),
(5153, 'fr', 'All Category', 'Toutes les catégories', '2021-10-22 07:26:25', '2021-10-22 07:26:25'),
(5154, 'en', 'All Brand', 'All Brand', '2021-10-22 07:28:09', '2021-10-22 07:28:09'),
(5155, 'ar', 'All Brand', 'جميع العلامات التجارية', '2021-10-22 07:28:23', '2021-10-22 07:28:23'),
(5156, 'fr', 'All Brand', 'Toutes les marques', '2021-10-22 07:28:38', '2021-10-22 07:28:38'),
(5157, 'en', 'All Collection', 'All Collection', '2021-10-22 07:30:22', '2021-10-22 07:30:22'),
(5158, 'ar', 'All Collection', 'كل مجموعة', '2021-10-22 07:30:39', '2021-10-22 07:30:39'),
(5159, 'fr', 'All Collection', 'Toute la collection', '2021-10-22 07:30:54', '2021-10-22 07:30:54'),
(5163, 'en', 'Backend Theme color', 'Backend Theme color', '2021-10-29 02:21:31', '2021-10-29 02:21:31'),
(5164, 'ar', 'Backend Theme color', 'لون مظهر الواجهة الخلفية', '2021-10-29 02:21:48', '2021-10-29 02:21:48'),
(5165, 'fr', 'Backend Theme color', 'Couleur du thème principal', '2021-10-29 02:21:58', '2021-10-29 02:21:58'),
(5166, 'en', 'Awaiting processing', 'Awaiting processing', '2021-10-30 09:34:35', '2021-10-30 09:34:35'),
(5167, 'ar', 'Awaiting processing', 'في انتظار المعالجة', '2021-10-30 09:35:21', '2021-10-30 09:35:21'),
(5168, 'fr', 'Awaiting processing', 'En attente de traitement', '2021-10-30 09:35:33', '2021-10-30 09:35:33'),
(5169, 'en', 'Processing', 'Processing', '2021-10-30 09:36:03', '2021-10-30 09:36:03'),
(5170, 'ar', 'Processing', 'يعالج', '2021-10-30 09:36:16', '2021-10-30 09:36:16'),
(5171, 'fr', 'Processing', 'Traitement', '2021-10-30 09:36:25', '2021-10-30 09:36:25'),
(5172, 'en', 'Ready for pickup', 'Ready for pickup', '2021-10-30 09:36:51', '2021-10-30 09:36:51'),
(5173, 'ar', 'Ready for pickup', 'جاهز للإستلام', '2021-10-30 09:37:05', '2021-10-30 09:37:05'),
(5174, 'fr', 'Ready for pickup', 'Prêt pour le ramassage', '2021-10-30 09:37:15', '2021-10-30 09:37:15'),
(5175, 'en', 'Completed', 'Completed', '2021-10-30 09:37:41', '2021-10-30 09:37:41'),
(5176, 'ar', 'Completed', 'مكتمل', '2021-10-30 09:37:53', '2021-10-30 09:37:53'),
(5177, 'fr', 'Completed', 'Complété', '2021-10-30 09:38:03', '2021-10-30 09:38:03'),
(5178, 'en', 'Canceled', 'Canceled', '2021-10-30 09:38:25', '2021-10-30 09:38:25'),
(5179, 'ar', 'Canceled', 'ألغيت', '2021-10-30 09:38:39', '2021-10-30 09:38:39'),
(5180, 'fr', 'Canceled', 'Annulé', '2021-10-30 09:38:49', '2021-10-30 09:38:49'),
(5181, 'en', 'Published Products', 'Published Products', '2021-10-30 09:39:15', '2021-10-30 09:39:15'),
(5182, 'ar', 'Published Products', 'المنتجات المنشورة', '2021-10-30 09:39:28', '2021-10-30 09:39:28'),
(5183, 'fr', 'Published Products', 'Produits publiés', '2021-10-30 09:39:37', '2021-10-30 09:39:37'),
(5184, 'en', 'Published Categories', 'Published Categories', '2021-10-30 09:39:58', '2021-10-30 09:39:58'),
(5185, 'ar', 'Published Categories', 'الفئات المنشورة', '2021-10-30 09:40:10', '2021-10-30 09:40:10'),
(5186, 'fr', 'Published Categories', 'Catégories publiées', '2021-10-30 09:40:20', '2021-10-30 09:40:20'),
(5187, 'en', 'Published Brands', 'Published Brands', '2021-10-30 09:40:48', '2021-10-30 09:40:48'),
(5188, 'ar', 'Published Brands', 'العلامات التجارية المنشورة', '2021-10-30 09:41:01', '2021-10-30 09:41:01'),
(5189, 'fr', 'Published Brands', 'Marques publiées', '2021-10-30 09:41:12', '2021-10-30 09:41:12'),
(5190, 'en', 'Out of Stock Products', 'Out of Stock Products', '2021-10-30 09:42:32', '2021-10-30 09:42:32'),
(5191, 'ar', 'Out of Stock Products', 'منتجات غير متوفرة في المخزون', '2021-10-30 09:42:45', '2021-10-30 09:42:45'),
(5192, 'fr', 'Out of Stock Products', 'Produits en rupture de stock', '2021-10-30 09:43:00', '2021-10-30 09:43:00'),
(5193, 'en', 'Top 10 Selling Products', 'Top 10 Selling Products', '2021-10-30 10:47:17', '2021-10-30 10:47:17'),
(5194, 'ar', 'Top 10 Selling Products', 'أعلى 10 بيع المنتجات', '2021-10-30 10:47:33', '2021-10-30 10:47:33'),
(5195, 'fr', 'Top 10 Selling Products', 'Top 10 des produits les plus vendus', '2021-10-30 10:47:43', '2021-10-30 10:47:43'),
(5199, 'en', 'Top 10 Rating Products', 'Top 10 Rating Products', '2021-10-30 11:02:52', '2021-10-30 11:02:52'),
(5200, 'ar', 'Top 10 Rating Products', 'أفضل 10 منتجات مصنفة', '2021-10-30 11:03:05', '2021-10-30 11:03:05'),
(5201, 'fr', 'Top 10 Rating Products', 'Les 10 meilleurs produits d\'évaluation', '2021-10-30 11:03:15', '2021-10-30 11:03:15'),
(5205, 'en', 'Total Review', 'Total Review', '2021-10-31 08:15:31', '2021-10-31 08:15:31'),
(5206, 'ar', 'Total Review', 'مراجعة كاملة', '2021-10-31 08:15:45', '2021-10-31 08:15:45'),
(5207, 'fr', 'Total Review', 'Examen total', '2021-10-31 08:15:54', '2021-10-31 08:15:54'),
(5209, 'en', 'Selling', 'Selling', '2021-10-31 08:21:16', '2021-10-31 08:21:16'),
(5210, 'ar', 'Selling', 'يبيع', '2021-10-31 08:21:34', '2021-10-31 08:21:34'),
(5211, 'fr', 'Selling', 'Vente', '2021-10-31 08:21:47', '2021-10-31 08:21:47'),
(5212, 'en', 'Newsletters', 'Newsletters', '2021-11-01 08:53:47', '2021-11-01 08:53:47'),
(5213, 'ar', 'Newsletters', 'النشرات الإخبارية', '2021-11-01 08:54:01', '2021-11-01 08:54:01'),
(5214, 'fr', 'Newsletters', 'Bulletins d\'information', '2021-11-01 08:54:09', '2021-11-01 08:54:09'),
(5217, 'fr', 'MailChimp Settings', 'MailChimp Settings', '2021-11-01 08:58:32', '2021-11-01 08:58:32'),
(5218, 'en', 'MailChimp Settings', 'MailChimp Settings', '2021-11-01 09:06:20', '2021-11-01 09:06:20'),
(5219, 'ar', 'MailChimp Settings', 'MailChimp Settings', '2021-11-01 09:06:26', '2021-11-01 09:06:26'),
(5220, 'en', 'MailChimp API Key', 'MailChimp API Key', '2021-11-01 09:11:02', '2021-11-01 09:11:02'),
(5221, 'ar', 'MailChimp API Key', 'MailChimp API Key', '2021-11-01 09:11:12', '2021-11-01 09:11:12'),
(5222, 'fr', 'MailChimp API Key', 'MailChimp API Key', '2021-11-01 09:11:17', '2021-11-01 09:11:17'),
(5223, 'en', 'Audience ID', 'Audience ID', '2021-11-01 09:16:13', '2021-11-01 09:16:13'),
(5224, 'ar', 'Audience ID', 'Audience ID', '2021-11-01 09:16:18', '2021-11-01 09:16:18'),
(5225, 'fr', 'Audience ID', 'Audience ID', '2021-11-01 09:16:23', '2021-11-01 09:16:23'),
(5226, 'en', 'Subscribe Popup', 'Subscribe Popup', '2021-11-01 09:43:27', '2021-11-01 09:43:27'),
(5227, 'ar', 'Subscribe Popup', 'الاشتراك المنبثق', '2021-11-01 09:43:44', '2021-11-01 09:43:44'),
(5228, 'fr', 'Subscribe Popup', 'Popup d\'abonnement', '2021-11-01 09:43:57', '2021-11-01 09:43:57'),
(5232, 'en', 'Created At', 'Created At', '2021-11-01 10:53:10', '2021-11-01 10:53:10'),
(5233, 'ar', 'Created At', 'أنشئت في', '2021-11-01 10:53:37', '2021-11-01 10:53:37'),
(5234, 'fr', 'Created At', 'Créé à', '2021-11-01 10:53:47', '2021-11-01 10:53:47'),
(5235, 'en', 'You have successfully subscribed.', 'You have successfully subscribed.', '2021-11-02 09:39:45', '2021-11-02 09:39:45'),
(5236, 'ar', 'You have successfully subscribed.', 'لقد تم اشتراكك بنجاح.', '2021-11-02 09:40:00', '2021-11-02 09:40:00'),
(5237, 'fr', 'You have successfully subscribed.', 'Vous vous êtes enregistré avec succès.', '2021-11-02 09:40:09', '2021-11-02 09:40:09'),
(5238, 'en', 'You are already subscribed.', 'You are already subscribed.', '2021-11-02 09:41:44', '2021-11-02 09:41:44'),
(5239, 'ar', 'You are already subscribed.', 'انت مشترك اصلا.', '2021-11-02 09:41:56', '2021-11-02 09:41:56'),
(5240, 'fr', 'You are already subscribed.', 'Vous êtes déjà abonné.', '2021-11-02 09:42:07', '2021-11-02 09:42:07'),
(5241, 'en', 'Some problem occurred, please try again.', 'Some problem occurred, please try again.', '2021-11-02 09:43:52', '2021-11-02 09:43:52'),
(5242, 'ar', 'Some problem occurred, please try again.', 'حدثت بعض المشاكل ، يرجى المحاولة مرة أخرى.', '2021-11-02 09:44:10', '2021-11-02 09:44:10'),
(5243, 'fr', 'Some problem occurred, please try again.', 'Un problème est survenu, veuillez réessayer.', '2021-11-02 09:44:19', '2021-11-02 09:44:19'),
(5244, 'en', 'Please enable mailchimp.', 'Please enable mailchimp.', '2021-11-02 09:48:33', '2021-11-02 09:48:33'),
(5245, 'ar', 'Please enable mailchimp.', 'Please enable mailchimp.', '2021-11-02 09:48:55', '2021-11-02 09:48:55'),
(5246, 'fr', 'Please enable mailchimp.', 'Please enable mailchimp.', '2021-11-02 09:49:00', '2021-11-02 09:49:00'),
(5247, 'en', 'MailChimp API Key Invalid.', 'MailChimp API Key Invalid.', '2021-11-02 10:05:29', '2021-11-02 10:05:29'),
(5248, 'ar', 'MailChimp API Key Invalid.', 'MailChimp API Key Invalid.', '2021-11-02 10:05:34', '2021-11-02 10:05:34'),
(5249, 'fr', 'MailChimp API Key Invalid.', 'MailChimp API Key Invalid.', '2021-11-02 10:05:38', '2021-11-02 10:05:38'),
(5250, 'en', 'The requested resource could not be found.', 'The requested resource could not be found.', '2021-11-02 10:16:11', '2021-11-02 10:16:11'),
(5251, 'ar', 'The requested resource could not be found.', 'تعذر العثور على المورد المطلوب.', '2021-11-02 10:16:22', '2021-11-02 10:16:22'),
(5252, 'fr', 'The requested resource could not be found.', 'La ressource demandée est introuvable.', '2021-11-02 10:16:32', '2021-11-02 10:16:32'),
(5256, 'en', 'Enter your email address', 'Enter your email address', '2021-11-05 07:43:20', '2021-11-05 07:43:20'),
(5257, 'ar', 'Enter your email address', 'أدخل عنوان بريدك الالكتروني', '2021-11-05 07:43:42', '2021-11-05 07:43:42'),
(5258, 'fr', 'Enter your email address', 'Entrez votre adresse email', '2021-11-05 07:43:54', '2021-11-05 07:43:54'),
(5259, 'en', 'Transactions', 'Transactions', '2021-11-07 08:14:44', '2021-11-07 08:14:44'),
(5260, 'ar', 'Transactions', 'المعاملات', '2021-11-07 08:14:59', '2021-11-07 08:14:59'),
(5261, 'fr', 'Transactions', 'Transactions', '2021-11-07 08:15:13', '2021-11-07 08:15:13'),
(5262, 'en', 'Date', 'Date', '2021-11-07 09:16:20', '2021-11-07 09:16:20'),
(5263, 'ar', 'Date', 'تاريخ', '2021-11-07 09:16:34', '2021-11-07 09:16:34'),
(5264, 'fr', 'Date', 'Date', '2021-11-07 09:16:48', '2021-11-07 09:16:48'),
(5265, 'en', 'Transaction#', 'Transaction#', '2021-11-07 09:22:09', '2021-11-07 09:22:09'),
(5266, 'ar', 'Transaction#', 'عملية تجارية#', '2021-11-07 09:22:44', '2021-11-07 09:22:44'),
(5267, 'fr', 'Transaction#', 'Transaction#', '2021-11-07 09:23:37', '2021-11-07 09:23:37'),
(5268, 'en', 'Hello', 'Hello', '2021-11-16 11:08:54', '2021-11-16 11:08:54'),
(5269, 'ar', 'Hello', 'أهلا', '2021-11-16 11:09:19', '2021-11-16 11:09:19'),
(5270, 'fr', 'Hello', 'Bonjour', '2021-11-16 11:09:29', '2021-11-16 11:09:29'),
(5713, 'en', 'Excel', 'Excel', '2021-11-30 10:19:17', '2021-11-30 10:19:17'),
(5714, 'ar', 'Excel', 'اكسل', '2021-11-30 10:20:04', '2021-11-30 10:20:04'),
(5715, 'fr', 'Excel', 'Exceller', '2021-11-30 10:20:14', '2021-11-30 10:20:14'),
(5716, 'en', 'CSV', 'CSV', '2021-11-30 10:20:34', '2021-11-30 10:20:34'),
(5717, 'ar', 'CSV', 'CSV', '2021-11-30 10:20:47', '2021-11-30 10:20:47'),
(5718, 'fr', 'CSV', 'CSV', '2021-11-30 10:20:51', '2021-11-30 10:20:51'),
(5719, 'en', 'Default Language', 'Default Language', '2021-12-01 08:58:28', '2021-12-01 08:58:28'),
(5720, 'ar', 'Default Language', 'اللغة الافتراضية', '2021-12-01 08:58:40', '2021-12-01 08:58:40'),
(5721, 'fr', 'Default Language', 'Langage par défaut', '2021-12-01 08:58:50', '2021-12-01 08:58:50'),
(7702, 'en', 'I am a customer', 'I am a customer', '2021-12-07 08:11:13', '2021-12-07 08:11:13'),
(7703, 'ar', 'I am a customer', 'أنا عميل', '2021-12-07 08:11:25', '2021-12-07 08:11:25'),
(7704, 'fr', 'I am a customer', 'je suis client', '2021-12-07 08:11:38', '2021-12-07 08:11:38'),
(7705, 'en', 'I am a seller', 'I am a seller', '2021-12-07 08:12:05', '2021-12-07 08:12:05'),
(7706, 'ar', 'I am a seller', 'أنا بائع', '2021-12-07 08:12:16', '2021-12-07 08:12:16'),
(7707, 'fr', 'I am a seller', 'je suis vendeur', '2021-12-07 08:12:25', '2021-12-07 08:12:25'),
(7708, 'en', 'Create an seller account', 'Create an seller account', '2021-12-07 09:28:05', '2021-12-07 09:28:05'),
(7709, 'ar', 'Create an seller account', 'قم بإنشاء حساب بائع', '2021-12-07 09:28:17', '2021-12-07 09:28:17'),
(7710, 'fr', 'Create an seller account', 'Créer un compte vendeur', '2021-12-07 09:28:28', '2021-12-07 09:28:28'),
(7711, 'en', 'Create an customer account', 'Create an customer account', '2021-12-07 09:29:56', '2021-12-07 09:29:56'),
(7712, 'ar', 'Create an customer account', 'قم بإنشاء حساب العميل', '2021-12-07 09:30:07', '2021-12-07 09:30:07'),
(7713, 'fr', 'Create an customer account', 'Créer un compte client', '2021-12-07 09:30:20', '2021-12-07 09:30:20'),
(7714, 'en', 'Shop Name', 'Shop Name', '2021-12-07 09:55:08', '2021-12-07 09:55:08'),
(7715, 'ar', 'Shop Name', 'اسم المحل', '2021-12-07 09:55:20', '2021-12-07 09:55:20'),
(7716, 'fr', 'Shop Name', 'Nom de la boutique', '2021-12-07 09:55:33', '2021-12-07 09:55:33'),
(7717, 'en', 'Shop URL', 'Shop URL', '2021-12-07 10:03:59', '2021-12-07 10:03:59'),
(7718, 'ar', 'Shop URL', 'متجر URL', '2021-12-07 10:04:14', '2021-12-07 10:04:14'),
(7719, 'fr', 'Shop URL', 'URL de la boutique', '2021-12-07 10:04:26', '2021-12-07 10:04:26'),
(7720, 'en', 'Shop Phone', 'Shop Phone', '2021-12-07 10:05:36', '2021-12-07 10:05:36'),
(7721, 'ar', 'Shop Phone', 'متجر الهاتف', '2021-12-07 10:05:50', '2021-12-07 10:05:50'),
(7722, 'fr', 'Shop Phone', 'Magasiner le téléphone', '2021-12-07 10:06:00', '2021-12-07 10:06:00'),
(7723, 'en', 'Available', 'Available', '2021-12-09 10:35:12', '2021-12-09 10:35:12'),
(7724, 'ar', 'Available', 'متوفرة', '2021-12-09 10:35:36', '2021-12-09 10:35:36'),
(7725, 'fr', 'Available', 'Disponible', '2021-12-09 10:36:07', '2021-12-09 10:36:07'),
(7726, 'en', 'Not Available', 'Not Available', '2021-12-09 10:36:35', '2021-12-09 10:36:35'),
(7727, 'ar', 'Not Available', 'غير متاح', '2021-12-09 10:36:52', '2021-12-09 10:36:52'),
(7728, 'fr', 'Not Available', 'Indisponible', '2021-12-09 10:37:07', '2021-12-09 10:37:07'),
(7730, 'en', 'Thanks! You have register successfully. Your account is pending for review.', 'Thanks! You have register successfully. Your account is pending for review.', '2021-12-09 11:52:22', '2021-12-09 11:52:22'),
(7731, 'ar', 'Thanks! You have register successfully. Your account is pending for review.', 'شكرا! لقد قمت بالتسجيل بنجاح. حسابك معلق للمراجعة.', '2021-12-09 11:52:46', '2021-12-09 11:52:46'),
(7732, 'fr', 'Thanks! You have register successfully. Your account is pending for review.', 'Merci! Vous vous êtes inscrit avec succès. Votre compte est en attente d\'examen.', '2021-12-09 11:53:02', '2021-12-09 11:53:02'),
(7733, 'en', 'Marketplace', 'Marketplace', '2021-12-09 21:21:02', '2021-12-09 21:21:02'),
(7734, 'ar', 'Marketplace', 'المتجر', '2021-12-09 21:21:37', '2021-12-09 21:21:37'),
(7735, 'fr', 'Marketplace', 'Marché', '2021-12-09 21:21:49', '2021-12-09 21:21:49'),
(7736, 'en', 'Sellers', 'Sellers', '2021-12-09 22:25:23', '2021-12-09 22:25:23'),
(7737, 'ar', 'Sellers', 'الباعة', '2021-12-09 22:25:36', '2021-12-09 22:25:36'),
(7738, 'fr', 'Sellers', 'Les vendeurs', '2021-12-09 22:25:48', '2021-12-09 22:25:48'),
(7739, 'en', 'Withdrawals', 'Withdrawals', '2021-12-09 22:26:53', '2021-12-09 22:26:53'),
(7740, 'ar', 'Withdrawals', 'الانسحابات', '2021-12-09 22:27:07', '2021-12-09 22:27:07'),
(7741, 'fr', 'Withdrawals', 'Retraits', '2021-12-09 22:27:18', '2021-12-09 22:27:18'),
(7745, 'en', 'Total Sold', 'Total Sold', '2021-12-10 11:36:23', '2021-12-10 11:36:23'),
(7746, 'ar', 'Total Sold', 'إجمالي المبيعات', '2021-12-10 11:36:36', '2021-12-10 11:36:36'),
(7747, 'fr', 'Total Sold', 'Total vendu', '2021-12-10 11:36:45', '2021-12-10 11:36:45'),
(7748, 'en', 'Total Withdraw', 'Total Withdraw', '2021-12-10 11:38:08', '2021-12-10 11:38:08'),
(7749, 'ar', 'Total Withdraw', 'إجمالي الانسحاب', '2021-12-10 11:38:25', '2021-12-10 11:38:25'),
(7750, 'fr', 'Total Withdraw', 'Retrait total', '2021-12-10 11:38:39', '2021-12-10 11:38:39'),
(7751, 'en', 'Total Transaction', 'Total Transaction', '2021-12-10 11:39:31', '2021-12-10 11:39:31'),
(7752, 'ar', 'Total Transaction', 'إجمالي الصفقة', '2021-12-10 11:39:42', '2021-12-10 11:39:42'),
(7753, 'fr', 'Total Transaction', 'Transaction totale', '2021-12-10 11:39:52', '2021-12-10 11:39:52'),
(7754, 'en', 'Total Products', 'Total Products', '2021-12-10 11:40:24', '2021-12-10 11:40:24'),
(7755, 'ar', 'Total Products', 'إجمالي المنتجات', '2021-12-10 11:40:36', '2021-12-10 11:40:36'),
(7756, 'fr', 'Total Products', 'Produits totaux', '2021-12-10 11:40:46', '2021-12-10 11:40:46'),
(7757, 'en', 'Bank Name', 'Bank Name', '2021-12-13 08:46:35', '2021-12-13 08:46:35'),
(7758, 'ar', 'Bank Name', 'اسم البنك', '2021-12-13 08:46:51', '2021-12-13 08:46:51'),
(7759, 'fr', 'Bank Name', 'Nom de banque', '2021-12-13 08:47:01', '2021-12-13 08:47:01'),
(7760, 'en', 'Bank Code/IFSC', 'Bank Code/IFSC', '2021-12-13 08:48:28', '2021-12-13 08:48:28'),
(7761, 'ar', 'Bank Code/IFSC', 'رمز البنك / IFSC', '2021-12-13 08:48:40', '2021-12-13 08:48:40'),
(7762, 'fr', 'Bank Code/IFSC', 'Code bancaire/IFSC', '2021-12-13 08:48:50', '2021-12-13 08:48:50'),
(7763, 'en', 'Account Number', 'Account Number', '2021-12-13 09:23:30', '2021-12-13 09:23:30'),
(7764, 'ar', 'Account Number', 'رقم حساب', '2021-12-13 09:23:43', '2021-12-13 09:23:43'),
(7765, 'fr', 'Account Number', 'Numéro de compte', '2021-12-13 09:23:54', '2021-12-13 09:23:54'),
(7766, 'en', 'Account Holder Name', 'Account Holder Name', '2021-12-13 09:24:46', '2021-12-13 09:24:46'),
(7767, 'ar', 'Account Holder Name', 'اسم صاحب الحساب', '2021-12-13 09:24:57', '2021-12-13 09:24:57'),
(7768, 'fr', 'Account Holder Name', 'Nom du titulaire du compte', '2021-12-13 09:25:30', '2021-12-13 09:25:30'),
(8235, 'en', 'PayPal ID', 'PayPal ID', '2021-12-21 09:29:38', '2021-12-21 09:29:38'),
(8236, 'ar', 'PayPal ID', 'PayPal ID', '2021-12-21 09:30:00', '2021-12-21 09:30:00'),
(8237, 'fr', 'PayPal ID', 'PayPal ID', '2021-12-21 09:30:06', '2021-12-21 09:30:06'),
(8238, 'en', 'Joined At', 'Joined At', '2021-12-21 10:30:19', '2021-12-21 10:30:19'),
(8239, 'ar', 'Joined At', 'انضم في', '2021-12-21 10:30:33', '2021-12-21 10:30:33'),
(8240, 'fr', 'Joined At', 'Inscrit à', '2021-12-21 10:30:46', '2021-12-21 10:30:46'),
(8241, 'en', 'Bank Information', 'Bank Information', '2021-12-21 10:52:46', '2021-12-21 10:52:46'),
(8242, 'ar', 'Bank Information', 'المعلومات المصرفية', '2021-12-21 10:52:59', '2021-12-21 10:52:59'),
(8243, 'fr', 'Bank Information', 'Information bancaire', '2021-12-21 10:53:11', '2021-12-21 10:53:11'),
(8244, 'en', 'Details', 'Details', '2021-12-21 10:53:41', '2021-12-21 10:53:41'),
(8245, 'ar', 'Details', 'تفاصيل', '2021-12-21 10:53:52', '2021-12-21 10:53:52'),
(8246, 'fr', 'Details', 'Des détails', '2021-12-21 10:54:03', '2021-12-21 10:54:03'),
(8247, 'en', 'My Account', 'My Account', '2021-12-25 00:02:31', '2021-12-25 00:02:31'),
(8248, 'ar', 'My Account', 'حسابي', '2021-12-25 00:02:52', '2021-12-25 00:02:52'),
(8249, 'fr', 'My Account', 'Mon compte', '2021-12-25 00:03:13', '2021-12-25 00:03:13'),
(8252, 'en', 'Total Amount', 'Total Amount', '2021-12-31 03:24:10', '2021-12-31 03:24:10'),
(8253, 'ar', 'Total Amount', 'المبلغ الإجمالي', '2021-12-31 03:24:28', '2021-12-31 03:24:28'),
(8254, 'fr', 'Total Amount', 'Montant total', '2021-12-31 03:24:39', '2021-12-31 03:24:39'),
(8255, 'en', 'Store', 'Store', '2022-01-02 08:02:35', '2022-01-02 08:02:35'),
(8256, 'ar', 'Store', 'متجر', '2022-01-02 08:02:51', '2022-01-02 08:02:51'),
(8257, 'fr', 'Store', 'Boutique', '2022-01-02 08:03:05', '2022-01-02 08:03:05'),
(8258, 'en', 'All Store', 'All Store', '2022-01-02 09:08:59', '2022-01-02 09:08:59'),
(8259, 'ar', 'All Store', 'كل المتجر', '2022-01-02 09:09:16', '2022-01-02 09:09:16'),
(8260, 'fr', 'All Store', 'Tout le magasin', '2022-01-02 09:09:29', '2022-01-02 09:09:29'),
(8261, 'en', 'Seller Dashboard', 'Seller Dashboard', '2022-01-03 09:03:11', '2022-01-03 09:03:11'),
(8262, 'ar', 'Seller Dashboard', 'لوحة تحكم البائع', '2022-01-03 09:03:28', '2022-01-03 09:03:28'),
(8263, 'fr', 'Seller Dashboard', 'Tableau de bord du vendeur', '2022-01-03 09:03:38', '2022-01-03 09:03:38'),
(8264, 'en', 'Order Tracking', 'Order Tracking', '2022-01-03 10:30:14', '2022-01-03 10:30:14'),
(8265, 'ar', 'Order Tracking', 'تتبع الطلب', '2022-01-03 10:30:46', '2022-01-03 10:30:46'),
(8266, 'fr', 'Order Tracking', 'Suivi de commande', '2022-01-03 10:30:56', '2022-01-03 10:30:56'),
(8267, 'en', 'Tracking your order status', 'Tracking your order status', '2022-01-03 10:48:05', '2022-01-03 10:48:05'),
(8268, 'ar', 'Tracking your order status', 'تتبع حالة طلبك', '2022-01-03 10:48:20', '2022-01-03 10:48:20'),
(8269, 'fr', 'Tracking your order status', 'Suivi de l\'état de votre commande', '2022-01-03 10:48:29', '2022-01-03 10:48:29'),
(8270, 'en', 'Find', 'Find', '2022-01-03 10:52:20', '2022-01-03 10:52:20'),
(8271, 'ar', 'Find', 'تجد', '2022-01-03 10:52:33', '2022-01-03 10:52:33'),
(8272, 'fr', 'Find', 'Trouver', '2022-01-03 10:52:45', '2022-01-03 10:52:45'),
(8276, 'en', 'Fee withdrawal (Fixed amount)', 'Fee withdrawal (Fixed amount)', '2022-01-05 10:50:12', '2022-01-05 10:50:12'),
(8277, 'ar', 'Fee withdrawal (Fixed amount)', 'سحب الرسوم (مبلغ ثابت)', '2022-01-05 10:50:21', '2022-01-05 10:58:03'),
(8278, 'fr', 'Fee withdrawal (Fixed amount)', 'Frais de retrait (Montant fixe)', '2022-01-05 10:58:38', '2022-01-05 10:58:38'),
(8285, 'en', 'Product auto publish', 'Product auto publish', '2022-01-07 10:13:08', '2022-01-07 10:13:08'),
(8286, 'ar', 'Product auto publish', 'النشر التلقائي للمنتج', '2022-01-07 10:13:40', '2022-01-07 10:13:40'),
(8287, 'fr', 'Product auto publish', 'Publication automatique du produit', '2022-01-07 10:13:54', '2022-01-07 10:13:54'),
(8288, 'en', 'Seller auto active', 'Seller auto active', '2022-01-07 10:16:31', '2022-01-07 10:16:31'),
(8289, 'ar', 'Seller auto active', 'البائع نشط تلقائيًا', '2022-01-07 10:16:45', '2022-01-07 10:16:45'),
(8290, 'fr', 'Seller auto active', 'Vendeur automatiquement actif', '2022-01-07 10:16:56', '2022-01-07 10:16:56'),
(8291, 'en', 'Zip Code', 'Zip Code', '2022-01-11 11:30:34', '2022-01-11 11:30:34'),
(8292, 'ar', 'Zip Code', 'رمز بريدي', '2022-01-11 11:30:51', '2022-01-11 11:30:51'),
(8293, 'fr', 'Zip Code', 'Code postal', '2022-01-11 11:31:05', '2022-01-11 11:31:05'),
(8294, 'en', 'Fee', 'Fee', '2022-01-12 11:00:50', '2022-01-12 11:00:50'),
(8295, 'ar', 'Fee', 'مصاريف', '2022-01-12 11:01:19', '2022-01-12 11:01:19'),
(8296, 'fr', 'Fee', 'Frais', '2022-01-12 11:01:32', '2022-01-12 11:01:32'),
(8297, 'en', 'Transaction ID', 'Transaction ID', '2022-01-12 11:28:32', '2022-01-12 11:28:32'),
(8298, 'ar', 'Transaction ID', 'رقم المعاملة', '2022-01-12 11:28:49', '2022-01-12 11:28:49'),
(8299, 'fr', 'Transaction ID', 'identifiant de transaction', '2022-01-12 11:29:01', '2022-01-12 11:29:01'),
(8300, 'en', 'The balance is not enough for withdrawal.', 'The balance is not enough for withdrawal.', '2022-01-14 12:14:28', '2022-01-14 12:14:28'),
(8301, 'ar', 'The balance is not enough for withdrawal.', 'الرصيد لا يكفي للانسحاب.', '2022-01-14 12:14:40', '2022-01-14 12:14:40'),
(8302, 'fr', 'The balance is not enough for withdrawal.', 'Le solde n\'est pas suffisant pour le retrait.', '2022-01-14 12:14:54', '2022-01-14 12:14:54'),
(8303, 'en', 'You will receive money through the bank information below', 'You will receive money through the bank information below', '2022-01-15 11:54:18', '2022-01-15 11:54:18'),
(8304, 'ar', 'You will receive money through the bank information below', 'سوف تتلقى المال من خلال المعلومات المصرفية أدناه', '2022-01-15 11:54:37', '2022-01-15 11:54:37'),
(8305, 'fr', 'You will receive money through the bank information below', 'Vous recevrez de l\'argent via les informations bancaires ci-dessous', '2022-01-15 11:54:49', '2022-01-15 11:54:49'),
(8306, 'en', 'Seller Information', 'Seller Information', '2022-01-16 11:48:42', '2022-01-16 11:48:42'),
(8307, 'ar', 'Seller Information', 'معلومات البائع', '2022-01-16 11:48:58', '2022-01-16 11:48:58'),
(8308, 'fr', 'Seller Information', 'Information du vendeur', '2022-01-16 11:49:08', '2022-01-16 11:49:08'),
(8309, 'en', 'Screenshot', 'Screenshot', '2022-01-17 07:54:34', '2022-01-17 07:54:34'),
(8310, 'ar', 'Screenshot', 'لقطة شاشة', '2022-01-17 07:55:15', '2022-01-17 07:55:15'),
(8311, 'fr', 'Screenshot', 'Capture d\'écran', '2022-01-17 07:55:32', '2022-01-17 07:55:32'),
(8312, 'en', 'Add Screenshot', 'Add Screenshot', '2022-01-17 08:33:28', '2022-01-17 08:33:28'),
(8313, 'ar', 'Add Screenshot', 'أضف لقطة', '2022-01-17 08:33:45', '2022-01-17 08:33:45'),
(8314, 'fr', 'Add Screenshot', 'Ajouter une capture d\'écran', '2022-01-17 08:33:56', '2022-01-17 08:33:56'),
(8315, 'en', 'All Status', 'All Status', '2022-01-17 10:56:27', '2022-01-17 10:56:27'),
(8316, 'ar', 'All Status', 'كل الحالة', '2022-01-17 10:56:42', '2022-01-17 10:56:42'),
(8317, 'fr', 'All Status', 'Tous les statuts', '2022-01-17 10:56:52', '2022-01-17 10:56:52'),
(8318, 'en', 'Sold By', 'Sold By', '2022-01-20 23:30:23', '2022-01-20 23:30:23'),
(8319, 'ar', 'Sold By', 'تم بيعها من قبل', '2022-01-20 23:30:39', '2022-01-20 23:30:39'),
(8320, 'fr', 'Sold By', 'Vendu par', '2022-01-20 23:30:50', '2022-01-20 23:30:50'),
(8321, 'en', 'Since', 'Since', '2022-01-21 03:25:18', '2022-01-21 03:25:18'),
(8322, 'ar', 'Since', 'حيث', '2022-01-21 03:25:32', '2022-01-21 03:25:32'),
(8323, 'fr', 'Since', 'Puisque', '2022-01-21 03:25:41', '2022-01-21 03:25:41'),
(8324, 'en', 'View Your Store', 'View Your Store', '2022-01-21 11:38:42', '2022-01-21 11:38:42'),
(8325, 'ar', 'View Your Store', 'عرض متجرك', '2022-01-21 11:38:57', '2022-01-21 11:38:57'),
(8326, 'fr', 'View Your Store', 'Voir votre magasin', '2022-01-21 11:39:08', '2022-01-21 11:39:08'),
(8327, 'en', 'View Website', 'View Website', '2022-01-21 11:39:34', '2022-01-21 11:39:34'),
(8328, 'ar', 'View Website', 'مشاهدة الموقع', '2022-01-21 11:39:49', '2022-01-21 11:39:49'),
(8329, 'fr', 'View Website', 'Voir le site Web', '2022-01-21 11:39:59', '2022-01-21 11:39:59'),
(8330, 'en', 'Subscribe Settings', 'Subscribe Settings', '2022-01-22 08:35:09', '2022-01-22 08:35:09'),
(8331, 'ar', 'Subscribe Settings', 'إعدادات الاشتراك', '2022-01-22 08:35:28', '2022-01-22 08:35:28'),
(8332, 'fr', 'Subscribe Settings', 'Paramètres d\'abonnement', '2022-01-22 08:35:42', '2022-01-22 08:35:42'),
(8336, 'en', 'Language Switcher', 'Language Switcher', '2022-01-22 10:12:08', '2022-01-22 10:12:08'),
(8337, 'ar', 'Language Switcher', 'محوّل اللغة', '2022-01-22 10:12:23', '2022-01-22 10:12:23'),
(8338, 'fr', 'Language Switcher', 'Sélecteur de langue', '2022-01-22 10:12:35', '2022-01-22 10:12:35'),
(8339, 'en', 'Paypal', 'Paypal', '2022-05-20 03:52:47', '2022-05-20 03:52:47'),
(8340, 'ar', 'Paypal', 'باي بال', '2022-05-20 03:53:06', '2022-05-20 03:53:06'),
(8341, 'fr', 'Paypal', 'Paypal', '2022-05-20 03:53:25', '2022-05-20 03:53:25'),
(8342, 'en', 'Paypal Method', 'Paypal Method', '2022-05-20 03:56:33', '2022-05-20 03:56:33'),
(8343, 'ar', 'Paypal Method', 'طريقة باي بال', '2022-05-20 03:56:49', '2022-05-20 03:56:49');
INSERT INTO `lankeyvalues` (`id`, `language_code`, `language_key`, `language_value`, `created_at`, `updated_at`) VALUES
(8344, 'fr', 'Paypal Method', 'Méthode Paypal', '2022-05-20 03:57:04', '2022-05-20 03:57:04'),
(8345, 'en', 'Client ID', 'Client ID', '2022-05-20 04:06:21', '2022-05-20 04:06:21'),
(8346, 'ar', 'Client ID', 'معرف العميل', '2022-05-20 04:06:44', '2022-05-20 04:06:44'),
(8347, 'fr', 'Client ID', 'identité du client', '2022-05-20 04:06:57', '2022-05-20 04:06:57'),
(8348, 'en', 'Secret', 'Secret', '2022-05-20 04:09:49', '2022-05-20 04:09:49'),
(8349, 'ar', 'Secret', 'سر', '2022-05-20 04:10:04', '2022-05-20 04:10:04'),
(8350, 'fr', 'Secret', 'Secrète', '2022-05-20 04:10:15', '2022-05-20 04:10:15'),
(8351, 'en', 'Sandbox mode', 'Sandbox mode', '2022-05-20 05:02:26', '2022-05-20 05:02:26'),
(8352, 'ar', 'Sandbox mode', 'وضع الحماية', '2022-05-20 05:02:50', '2022-05-20 05:02:50'),
(8353, 'fr', 'Sandbox mode', 'Mode bac à sable', '2022-05-20 05:03:00', '2022-05-20 05:03:00'),
(8354, 'en', 'Razorpay', 'Razorpay', '2022-05-20 06:08:31', '2022-05-20 06:08:31'),
(8355, 'ar', 'Razorpay', 'رازورباي', '2022-05-20 06:08:45', '2022-05-20 06:08:45'),
(8356, 'fr', 'Razorpay', 'Razorpay', '2022-05-20 06:08:58', '2022-05-20 06:08:58'),
(8357, 'en', 'Razorpay Method', 'Razorpay Method', '2022-05-20 06:11:09', '2022-05-20 06:11:09'),
(8358, 'ar', 'Razorpay Method', 'طريقة Razorpay', '2022-05-20 06:11:22', '2022-05-20 06:11:22'),
(8359, 'fr', 'Razorpay Method', 'Méthode Razorpay', '2022-05-20 06:11:32', '2022-05-20 06:11:32'),
(8360, 'en', 'Key Id', 'Key Id', '2022-05-20 06:19:15', '2022-05-20 06:19:15'),
(8361, 'ar', 'Key Id', 'معرف المفتاح', '2022-05-20 06:19:31', '2022-05-20 06:19:31'),
(8362, 'fr', 'Key Id', 'Identifiant de la clé', '2022-05-20 06:19:40', '2022-05-20 06:19:40'),
(8363, 'en', 'Key Secret', 'Key Secret', '2022-05-20 06:21:38', '2022-05-20 06:21:38'),
(8364, 'ar', 'Key Secret', 'السر الرئيسي', '2022-05-20 06:21:52', '2022-05-20 06:21:52'),
(8365, 'fr', 'Key Secret', 'Clé secrète', '2022-05-20 06:22:04', '2022-05-20 06:22:04'),
(8366, 'en', 'Mollie', 'Mollie', '2022-05-20 07:34:24', '2022-05-20 07:34:24'),
(8367, 'ar', 'Mollie', 'مولي', '2022-05-20 07:34:41', '2022-05-20 07:34:41'),
(8368, 'fr', 'Mollie', 'Mollie', '2022-05-20 07:34:57', '2022-05-20 07:34:57'),
(8369, 'en', 'Mollie Method', 'Mollie Method', '2022-05-20 07:36:26', '2022-05-20 07:36:26'),
(8370, 'ar', 'Mollie Method', 'طريقة مولي', '2022-05-20 07:36:47', '2022-05-20 07:36:47'),
(8371, 'fr', 'Mollie Method', 'Molly Method', '2022-05-20 07:37:00', '2022-05-20 07:37:00'),
(8372, 'en', 'API Key', 'API Key', '2022-05-20 07:45:45', '2022-05-20 07:45:45'),
(8373, 'ar', 'API Key', 'مفتاح API', '2022-05-20 07:46:00', '2022-05-20 07:46:00'),
(8374, 'fr', 'API Key', 'clé API', '2022-05-20 07:46:13', '2022-05-20 07:46:13'),
(8375, 'en', 'Pay online via Paypal', 'Pay online via Paypal', '2022-05-20 11:21:54', '2022-05-20 11:21:54'),
(8376, 'ar', 'Pay online via Paypal', 'ادفع عبر الإنترنت عبر Paypal', '2022-05-20 11:22:13', '2022-05-20 11:22:13'),
(8377, 'fr', 'Pay online via Paypal', 'Payer en ligne via Paypal', '2022-05-20 11:22:26', '2022-05-20 11:22:26'),
(8378, 'en', 'Payment with PayPal', 'Payment with PayPal', '2022-05-20 11:27:14', '2022-05-20 11:27:14'),
(8379, 'ar', 'Payment with PayPal', 'الدفع مع PayPal', '2022-05-20 11:27:27', '2022-05-20 11:27:27'),
(8380, 'fr', 'Payment with PayPal', 'Paiement avec PayPal', '2022-05-20 11:27:44', '2022-05-20 11:27:44'),
(8381, 'en', 'Pay online via Razorpay', 'Pay online via Razorpay', '2022-05-20 11:33:32', '2022-05-20 11:33:32'),
(8382, 'ar', 'Pay online via Razorpay', 'ادفع عبر الإنترنت عبر Razorpay', '2022-05-20 11:33:46', '2022-05-20 11:33:46'),
(8383, 'fr', 'Pay online via Razorpay', 'Payez en ligne via Razorpay', '2022-05-20 11:33:57', '2022-05-20 11:33:57'),
(8384, 'en', 'Payment with Razorpay', 'Payment with Razorpay', '2022-05-20 11:34:11', '2022-05-20 11:34:11'),
(8385, 'ar', 'Payment with Razorpay', 'الدفع مع Razorpay', '2022-05-20 11:34:24', '2022-05-20 11:34:24'),
(8386, 'fr', 'Payment with Razorpay', 'Paiement avec Razorpay', '2022-05-20 11:34:37', '2022-05-20 11:34:37'),
(8387, 'en', 'Pay online via Mollie', 'Pay online via Mollie', '2022-05-20 11:38:33', '2022-05-20 11:38:33'),
(8388, 'ar', 'Pay online via Mollie', 'ادفع عبر الإنترنت عبر Mollie', '2022-05-20 11:38:49', '2022-05-20 11:38:49'),
(8389, 'fr', 'Pay online via Mollie', 'Payez en ligne via Mollie', '2022-05-20 11:39:00', '2022-05-20 11:39:00'),
(8390, 'en', 'Payment with Mollie', 'Payment with Mollie', '2022-05-20 11:39:19', '2022-05-20 11:39:19'),
(8391, 'ar', 'Payment with Mollie', 'الدفع مع مولي', '2022-05-20 11:39:34', '2022-05-20 11:39:34'),
(8392, 'fr', 'Payment with Mollie', 'Paiement avec Mollie', '2022-05-20 11:39:43', '2022-05-20 11:39:43'),
(8393, 'en', 'Connection timeout', 'Connection timeout', '2022-05-27 05:06:38', '2022-05-27 05:06:38'),
(8394, 'ar', 'Connection timeout', 'انتهى وقت محاولة الاتصال', '2022-05-27 05:06:54', '2022-05-27 05:06:54'),
(8395, 'fr', 'Connection timeout', 'Délai de connection dépassé', '2022-05-27 05:07:25', '2022-05-27 05:07:25'),
(8396, 'en', 'Some error occur, sorry for inconvenient', 'Some error occur, sorry for inconvenient', '2022-05-27 05:08:13', '2022-05-27 05:08:13'),
(8397, 'ar', 'Some error occur, sorry for inconvenient', 'حدث خطأ ما ، آسف على الإزعاج', '2022-05-27 05:08:28', '2022-05-27 05:08:28'),
(8398, 'fr', 'Some error occur, sorry for inconvenient', 'Une erreur s\'est produite, désolé pour la gêne occasionnée', '2022-05-27 05:08:42', '2022-05-27 05:08:42'),
(8399, 'en', 'Unknown error occurred', 'Unknown error occurred', '2022-05-27 06:00:39', '2022-05-27 06:00:39'),
(8400, 'ar', 'Unknown error occurred', 'حدث خطأ غير معروف', '2022-05-27 06:00:52', '2022-05-27 06:00:52'),
(8401, 'fr', 'Unknown error occurred', 'Une erreur inconnue s\'est produite', '2022-05-27 06:01:01', '2022-05-27 06:01:01'),
(8402, 'en', 'Payment failed', 'Payment failed', '2022-05-27 06:55:32', '2022-05-27 06:55:32'),
(8403, 'ar', 'Payment failed', 'عملية الدفع فشلت', '2022-05-27 06:55:45', '2022-05-27 06:55:45'),
(8404, 'fr', 'Payment failed', 'Paiement échoué', '2022-05-27 06:55:55', '2022-05-27 06:55:55'),
(8405, 'en', 'Test Mode', 'Test Mode', '2022-05-31 08:52:27', '2022-05-31 08:52:27'),
(8406, 'ar', 'Test Mode', 'Test Mode', '2022-05-31 08:52:32', '2022-05-31 08:52:32'),
(8407, 'fr', 'Test Mode', 'Test Mode', '2022-05-31 08:52:36', '2022-05-31 08:52:36'),
(8408, 'en', 'Thumbnail Image', 'Thumbnail Image', '2022-06-30 23:36:15', '2022-06-30 23:36:15'),
(8409, 'ar', 'Thumbnail Image', 'صورة مصغرة', '2022-06-30 23:36:33', '2022-06-30 23:36:33'),
(8410, 'fr', 'Thumbnail Image', 'Vignette', '2022-06-30 23:36:46', '2022-06-30 23:36:46'),
(8411, 'en', 'Layer Image 1', 'Layer Image 1', '2022-06-30 23:39:16', '2022-06-30 23:39:16'),
(8412, 'ar', 'Layer Image 1', 'Layer Image 1', '2022-06-30 23:39:21', '2022-06-30 23:39:21'),
(8413, 'fr', 'Layer Image 1', 'Layer Image 1', '2022-06-30 23:39:27', '2022-06-30 23:39:27'),
(8414, 'en', 'Sub Title', 'Sub Title', '2022-06-30 23:54:25', '2022-06-30 23:54:25'),
(8415, 'ar', 'Sub Title', 'Sub Title', '2022-06-30 23:54:32', '2022-06-30 23:54:32'),
(8416, 'fr', 'Sub Title', 'Sub Title', '2022-06-30 23:54:37', '2022-06-30 23:54:37'),
(8417, 'en', 'Layer Image 2', 'Layer Image 2', '2022-07-01 00:38:26', '2022-07-01 00:38:26'),
(8418, 'ar', 'Layer Image 2', 'Layer Image 2', '2022-07-01 00:38:30', '2022-07-01 00:38:30'),
(8419, 'fr', 'Layer Image 2', 'Layer Image 2', '2022-07-01 00:38:38', '2022-07-01 00:38:38'),
(8420, 'en', 'Layer Image 3', 'Layer Image 3', '2022-07-01 03:36:30', '2022-07-01 03:36:30'),
(8421, 'ar', 'Layer Image 3', 'Layer Image 3', '2022-07-01 03:36:35', '2022-07-01 03:36:35'),
(8422, 'fr', 'Layer Image 3', 'Layer Image 3', '2022-07-01 03:36:40', '2022-07-01 03:36:40'),
(8435, 'en', 'Home Video Section', 'Home Video Section', '2022-07-19 08:48:46', '2022-07-19 08:48:46'),
(8436, 'ar', 'Home Video Section', 'Home Video Section', '2022-07-19 08:48:51', '2022-07-19 08:48:51'),
(8437, 'fr', 'Home Video Section', 'Home Video Section', '2022-07-19 08:48:57', '2022-07-19 08:48:57'),
(8438, 'en', 'Youtube Video URL', 'Youtube Video URL', '2022-07-20 08:10:02', '2022-07-20 08:10:02'),
(8439, 'ar', 'Youtube Video URL', 'رابط فيديو يوتيوب', '2022-07-20 08:10:33', '2022-07-20 08:10:33'),
(8440, 'fr', 'Youtube Video URL', 'URL de la vidéo Youtube', '2022-07-20 08:10:45', '2022-07-20 08:10:45'),
(8441, 'en', 'Button Text', 'Button Text', '2022-07-20 08:19:59', '2022-07-20 08:19:59'),
(8442, 'ar', 'Button Text', 'زر كتابة', '2022-07-20 08:20:13', '2022-07-20 08:20:13'),
(8443, 'fr', 'Button Text', 'Texte du bouton', '2022-07-20 08:20:25', '2022-07-20 08:20:25'),
(8444, 'en', 'Footer Subscribe Section', 'Footer Subscribe Section', '2022-07-22 04:57:23', '2022-07-22 04:57:23'),
(8445, 'ar', 'Footer Subscribe Section', 'قسم الاشتراك في التذييل', '2022-07-22 04:57:42', '2022-07-22 04:57:42'),
(8446, 'fr', 'Footer Subscribe Section', 'Section d\'abonnement', '2022-07-22 04:57:57', '2022-07-22 04:57:57'),
(8447, 'en', 'Subscribe', 'Subscribe', '2022-07-22 06:05:08', '2022-07-22 06:05:08'),
(8448, 'ar', 'Subscribe', 'الإشتراك', '2022-07-22 06:05:22', '2022-07-22 06:05:22'),
(8449, 'fr', 'Subscribe', 'S\'abonner', '2022-07-22 06:05:32', '2022-07-22 06:05:32'),
(8450, 'en', 'About Us', 'About Us', '2022-07-22 08:25:05', '2022-07-22 08:25:05'),
(8451, 'ar', 'About Us', 'معلومات عنا', '2022-07-22 08:25:16', '2022-07-22 08:25:16'),
(8452, 'fr', 'About Us', 'À propos de nous', '2022-07-22 08:25:28', '2022-07-22 08:25:28'),
(8453, 'en', 'Browse Categories', 'Browse Categories', '2022-07-22 10:34:53', '2022-07-22 10:34:53'),
(8454, 'ar', 'Browse Categories', 'تصفح الفئات', '2022-07-22 10:35:07', '2022-07-22 10:35:07'),
(8455, 'fr', 'Browse Categories', 'Catégories', '2022-07-22 10:35:17', '2022-07-22 10:43:40'),
(8456, 'en', 'Show More', 'Show More', '2022-07-22 10:35:48', '2022-07-22 10:35:48'),
(8457, 'ar', 'Show More', 'أظهر المزيد', '2022-07-22 10:36:01', '2022-07-22 10:36:01'),
(8458, 'fr', 'Show More', 'Montre plus', '2022-07-22 10:36:09', '2022-07-22 10:36:09'),
(8459, 'en', 'All Categories', 'All Categories', '2022-07-24 10:37:19', '2022-07-24 10:37:19'),
(8460, 'ar', 'All Categories', 'جميع الفئات', '2022-07-24 10:37:43', '2022-07-24 10:37:59'),
(8461, 'fr', 'All Categories', 'toutes catégories', '2022-07-24 10:38:09', '2022-07-24 10:38:09'),
(8462, 'en', 'Themes', 'Themes', '2022-07-26 09:45:45', '2022-07-26 09:45:45'),
(8463, 'ar', 'Themes', 'ثيمات', '2022-07-26 09:45:57', '2022-07-26 09:45:57'),
(8464, 'fr', 'Themes', 'Thèmes', '2022-07-26 09:46:16', '2022-07-26 09:46:16'),
(8465, 'en', 'Activated', 'Activated', '2022-07-26 10:58:56', '2022-07-26 10:58:56'),
(8466, 'ar', 'Activated', 'مفعل', '2022-07-26 10:59:13', '2022-07-26 10:59:13'),
(8467, 'fr', 'Activated', 'Activé', '2022-07-26 10:59:24', '2022-07-26 10:59:24'),
(8468, 'en', 'Activate', 'Activate', '2022-07-26 10:59:32', '2022-07-26 10:59:32'),
(8469, 'ar', 'Activate', 'تفعيل', '2022-07-26 10:59:47', '2022-07-26 10:59:47'),
(8470, 'fr', 'Activate', 'Activer', '2022-07-26 10:59:56', '2022-07-26 10:59:56'),
(8471, 'en', 'Updated Successfully', 'Updated Successfully', '2022-07-26 11:16:37', '2022-07-26 11:16:37'),
(8472, 'ar', 'Updated Successfully', 'Updated Successfully', '2022-07-26 11:16:44', '2022-07-26 11:16:44'),
(8473, 'fr', 'Updated Successfully', 'Updated Successfully', '2022-07-26 11:16:50', '2022-07-26 11:16:50'),
(8474, 'en', 'Saved Successfully', 'Saved Successfully', '2022-07-26 11:17:03', '2022-07-26 11:17:03'),
(8475, 'ar', 'Saved Successfully', 'Saved Successfully', '2022-07-26 11:17:07', '2022-07-26 11:17:07'),
(8476, 'fr', 'Saved Successfully', 'Saved Successfully', '2022-07-26 11:17:12', '2022-07-26 11:17:12'),
(8480, 'en', 'Unit', 'Unit', '2022-08-02 10:29:08', '2022-08-02 10:29:08'),
(8481, 'ar', 'Unit', 'وحدة', '2022-08-02 10:29:29', '2022-08-02 10:29:29'),
(8482, 'fr', 'Unit', 'Unité', '2022-08-02 10:29:49', '2022-08-02 10:29:49'),
(8483, 'en', 'Discount Manage', 'Discount Manage', '2022-08-02 10:58:55', '2022-08-02 10:58:55'),
(8484, 'ar', 'Discount Manage', 'إدارة الخصم', '2022-08-02 10:59:15', '2022-08-02 10:59:15'),
(8485, 'fr', 'Discount Manage', 'Gestion des remises', '2022-08-02 10:59:28', '2022-08-02 10:59:28'),
(8486, 'en', 'Vendor', 'Vendor', '2022-08-07 08:25:23', '2022-08-07 08:25:23'),
(8487, 'ar', 'Vendor', 'Vendeuse', '2022-08-07 08:25:38', '2022-08-07 08:25:38'),
(8488, 'fr', 'Vendor', 'بائع', '2022-08-07 08:25:51', '2022-08-07 08:25:51'),
(8489, 'en', 'Off', 'Off', '2022-08-09 00:34:07', '2022-08-09 00:34:07'),
(8490, 'ar', 'Off', 'عن', '2022-08-09 00:34:23', '2022-08-09 00:34:23'),
(8491, 'fr', 'Off', 'À l\'arrêt', '2022-08-09 00:34:32', '2022-08-09 00:34:32'),
(8498, 'en', 'Page Variation', 'Page Variation', '2022-08-11 11:35:13', '2022-08-11 11:35:13'),
(8499, 'ar', 'Page Variation', 'صفحة الاختلاف', '2022-08-11 11:35:26', '2022-08-11 11:35:26'),
(8500, 'fr', 'Page Variation', 'Variante de pages', '2022-08-11 11:35:39', '2022-08-11 11:35:39'),
(8501, 'en', 'Homepage Variation', 'Homepage Variation', '2022-08-11 11:36:35', '2022-08-11 11:36:35'),
(8502, 'ar', 'Homepage Variation', 'الصفحة الرئيسية الاختلاف', '2022-08-11 11:36:47', '2022-08-11 11:36:47'),
(8503, 'fr', 'Homepage Variation', 'Variante de la page d\'accueil', '2022-08-11 11:36:55', '2022-08-11 11:36:55'),
(8507, 'en', 'Category Page Variation', 'Category Page Variation', '2022-08-11 23:29:35', '2022-08-11 23:29:35'),
(8508, 'ar', 'Category Page Variation', 'تباين صفحة الفئة', '2022-08-11 23:29:55', '2022-08-11 23:29:55'),
(8509, 'fr', 'Category Page Variation', 'Variante de page de catégorie', '2022-08-11 23:30:12', '2022-08-11 23:30:12'),
(8510, 'en', 'Brand Page Variation', 'Brand Page Variation', '2022-08-12 00:03:17', '2022-08-12 00:03:17'),
(8511, 'ar', 'Brand Page Variation', 'تباين صفحة العلامة التجارية', '2022-08-12 00:03:29', '2022-08-12 00:03:29'),
(8512, 'fr', 'Brand Page Variation', 'Variation de la page de marque', '2022-08-12 00:03:41', '2022-08-12 00:03:41'),
(8513, 'en', 'Full width without sidebar', 'Full width without sidebar', '2022-08-12 00:18:09', '2022-08-12 00:18:09'),
(8514, 'ar', 'Full width without sidebar', 'Full width without sidebar', '2022-08-12 00:18:13', '2022-08-12 00:18:13'),
(8515, 'fr', 'Full width without sidebar', 'Full width without sidebar', '2022-08-12 00:18:18', '2022-08-12 00:18:18'),
(8516, 'en', 'Left Sidebar', 'Left Sidebar', '2022-08-12 00:18:48', '2022-08-12 00:18:48'),
(8517, 'ar', 'Left Sidebar', 'Left Sidebar', '2022-08-12 00:18:52', '2022-08-12 00:18:52'),
(8518, 'fr', 'Left Sidebar', 'Left Sidebar', '2022-08-12 00:18:56', '2022-08-12 00:18:56'),
(8519, 'fr', 'Right Sidebar', 'Right Sidebar', '2022-08-12 00:19:28', '2022-08-12 00:19:28'),
(8520, 'en', 'Right Sidebar', 'Right Sidebar', '2022-08-12 00:19:36', '2022-08-12 00:19:36'),
(8521, 'ar', 'Right Sidebar', 'Right Sidebar', '2022-08-12 00:19:40', '2022-08-12 00:19:40'),
(8522, 'en', 'Seller Page Variation', 'Seller Page Variation', '2022-08-12 00:20:32', '2022-08-12 00:20:32'),
(8523, 'ar', 'Seller Page Variation', 'اختلاف صفحة البائع', '2022-08-12 00:20:47', '2022-08-12 00:20:47'),
(8524, 'fr', 'Seller Page Variation', 'Variante de la page du vendeur', '2022-08-12 00:20:56', '2022-08-12 00:20:56'),
(8525, 'en', 'New Products', 'New Products', '2022-08-13 10:24:54', '2022-08-13 10:24:54'),
(8526, 'ar', 'New Products', 'منتجات جديدة', '2022-08-13 10:25:08', '2022-08-13 10:25:08'),
(8527, 'fr', 'New Products', 'Nouveaux produits', '2022-08-13 10:25:17', '2022-08-13 10:25:17'),
(8528, 'en', 'Top Selling', 'Top Selling', '2022-08-13 10:25:45', '2022-08-13 10:25:45'),
(8529, 'ar', 'Top Selling', 'الأكثر مبيعا', '2022-08-13 10:25:56', '2022-08-13 10:25:56'),
(8530, 'fr', 'Top Selling', 'Meilleures ventes', '2022-08-13 10:26:04', '2022-08-13 10:26:04'),
(8531, 'en', 'Top Rated', 'Top Rated', '2022-08-13 10:27:52', '2022-08-13 10:27:52'),
(8532, 'ar', 'Top Rated', 'أعلى التقييمات', '2022-08-13 10:28:04', '2022-08-13 10:28:04'),
(8533, 'fr', 'Top Rated', 'Les mieux notés', '2022-08-13 10:28:13', '2022-08-13 10:28:13'),
(8546, 'en', 'Is Popular', 'Is Popular', '2022-08-17 09:19:47', '2022-08-17 09:19:47'),
(8547, 'ar', 'Is Popular', 'Is Popular', '2022-08-17 09:19:52', '2022-08-17 09:19:52'),
(8548, 'fr', 'Is Popular', 'Is Popular', '2022-08-17 09:19:57', '2022-08-17 09:19:57'),
(8549, 'en', 'Is Trending', 'Is Trending', '2022-08-17 09:51:19', '2022-08-17 09:51:19'),
(8550, 'ar', 'Is Trending', 'Is Trending', '2022-08-17 09:51:25', '2022-08-17 09:51:25'),
(8551, 'fr', 'Is Trending', 'Is Trending', '2022-08-17 09:51:30', '2022-08-17 09:51:30'),
(8564, 'fr', 'Manage Page', 'Manage Page', '2022-08-18 05:15:20', '2022-08-18 05:15:20'),
(8565, 'en', 'Manage Page', 'Manage Page', '2022-08-18 05:15:30', '2022-08-18 05:15:30'),
(8566, 'ar', 'Manage Page', 'Manage Page', '2022-08-18 05:15:39', '2022-08-18 05:15:39'),
(8567, 'en', 'Section Manage', 'Section Manage', '2022-08-18 05:18:09', '2022-08-18 05:18:09'),
(8568, 'ar', 'Section Manage', 'Section Manage', '2022-08-18 05:18:17', '2022-08-18 05:18:17'),
(8569, 'fr', 'Section Manage', 'Section Manage', '2022-08-18 05:18:25', '2022-08-18 05:18:25'),
(8570, 'en', 'All Manage Page', 'All Manage Page', '2022-08-18 08:20:23', '2022-08-18 08:20:23'),
(8571, 'ar', 'All Manage Page', 'All Manage Page', '2022-08-18 08:20:27', '2022-08-18 08:20:27'),
(8572, 'fr', 'All Manage Page', 'All Manage Page', '2022-08-18 08:20:31', '2022-08-18 08:20:31'),
(8573, 'en', 'Filter by Price', 'Filter by Price', '2022-08-23 09:14:27', '2022-08-23 09:14:27'),
(8574, 'ar', 'Filter by Price', 'تصفية حسب السعر', '2022-08-23 09:14:42', '2022-08-23 09:14:42'),
(8575, 'fr', 'Filter by Price', 'Filtrer par prix', '2022-08-23 09:14:56', '2022-08-23 09:14:56'),
(8576, 'fr', 'Price Range', 'Échelle des prix', '2022-08-23 10:46:36', '2022-08-23 10:46:36'),
(8577, 'en', 'Price Range', 'Price Range', '2022-08-23 10:46:41', '2022-08-23 10:46:41'),
(8578, 'ar', 'Price Range', 'نطاق السعر', '2022-08-23 10:46:53', '2022-08-23 10:46:53'),
(8579, 'en', 'Countries', 'Countries', '2022-08-24 09:58:42', '2022-08-24 09:58:42'),
(8580, 'ar', 'Countries', 'بلدان', '2022-08-24 09:58:53', '2022-08-24 09:58:53'),
(8581, 'fr', 'Countries', 'Des pays', '2022-08-24 09:59:04', '2022-08-24 09:59:04'),
(8582, 'en', 'Contact', 'Contact', '2022-08-25 11:10:53', '2022-08-25 11:10:53'),
(8583, 'ar', 'Contact', 'اتصال', '2022-08-25 11:11:16', '2022-08-25 11:11:16'),
(8584, 'fr', 'Contact', 'Contact', '2022-08-25 11:11:29', '2022-08-25 11:11:29'),
(8585, 'en', 'Get In Touch', 'Get In Touch', '2022-08-25 11:21:59', '2022-08-25 11:21:59'),
(8586, 'ar', 'Get In Touch', 'ابقى على تواصل', '2022-08-25 11:22:14', '2022-08-25 11:22:14'),
(8587, 'fr', 'Get In Touch', 'Entrer en contact', '2022-08-25 11:22:25', '2022-08-25 11:22:25'),
(8588, 'en', 'Contact Info', 'Contact Info', '2022-08-25 11:22:54', '2022-08-25 11:22:54'),
(8589, 'ar', 'Contact Info', 'معلومات الاتصال', '2022-08-25 11:23:07', '2022-08-25 11:23:07'),
(8590, 'fr', 'Contact Info', 'Informations de contact', '2022-08-25 11:23:17', '2022-08-25 11:23:17'),
(8591, 'en', 'Google Map', 'Google Map', '2022-08-25 23:16:36', '2022-08-25 23:16:36'),
(8592, 'ar', 'Google Map', 'خرائط جوجل', '2022-08-25 23:16:58', '2022-08-25 23:16:58'),
(8593, 'fr', 'Google Map', 'Google Map', '2022-08-25 23:17:07', '2022-08-25 23:17:07'),
(8597, 'en', 'Latitude', 'Latitude', '2022-08-25 23:40:27', '2022-08-25 23:40:27'),
(8598, 'ar', 'Latitude', 'خط العرض', '2022-08-25 23:40:38', '2022-08-25 23:40:38'),
(8599, 'fr', 'Latitude', 'Latitude', '2022-08-25 23:40:51', '2022-08-25 23:40:51'),
(8600, 'en', 'Longitude', 'Longitude', '2022-08-25 23:41:03', '2022-08-25 23:41:03'),
(8601, 'ar', 'Longitude', 'خط الطول', '2022-08-25 23:41:14', '2022-08-25 23:41:14'),
(8602, 'fr', 'Longitude', 'Longitude', '2022-08-25 23:41:23', '2022-08-25 23:41:23'),
(8603, 'en', 'Zoom', 'Zoom', '2022-08-25 23:41:34', '2022-08-25 23:41:34'),
(8604, 'ar', 'Zoom', 'تكبير', '2022-08-25 23:41:46', '2022-08-25 23:41:46'),
(8605, 'fr', 'Zoom', 'Zoom', '2022-08-25 23:41:55', '2022-08-25 23:41:55'),
(8606, 'en', 'Contact Form', 'Contact Form', '2022-08-26 00:14:14', '2022-08-26 00:14:14'),
(8607, 'ar', 'Contact Form', 'نموذج الاتصال', '2022-08-26 00:14:25', '2022-08-26 00:14:25'),
(8608, 'fr', 'Contact Form', 'Formulaire de contact', '2022-08-26 00:14:38', '2022-08-26 00:14:38'),
(8609, 'en', 'Add Field', 'Add Field', '2022-08-26 03:22:56', '2022-08-26 03:22:56'),
(8610, 'ar', 'Add Field', 'Add Field', '2022-08-26 03:23:01', '2022-08-26 03:23:01'),
(8611, 'fr', 'Add Field', 'Add Field', '2022-08-26 03:23:06', '2022-08-26 03:23:06'),
(8612, 'en', 'Dropdown Values', 'Dropdown Values', '2022-08-26 03:45:54', '2022-08-26 03:45:54'),
(8613, 'ar', 'Dropdown Values', 'Dropdown Values', '2022-08-26 03:45:58', '2022-08-26 03:45:58'),
(8614, 'fr', 'Dropdown Values', 'Dropdown Values', '2022-08-26 03:46:03', '2022-08-26 03:46:03'),
(8615, 'en', 'Please fill up all mandatory fields', 'Please fill up all mandatory fields', '2022-08-26 09:32:13', '2022-08-26 09:32:13'),
(8616, 'ar', 'Please fill up all mandatory fields', 'يرجى ملء جميع الحقول الإلزامية', '2022-08-26 09:32:26', '2022-08-26 09:32:26'),
(8617, 'fr', 'Please fill up all mandatory fields', 'Veuillez remplir tous les champs obligatoires', '2022-08-26 09:32:36', '2022-08-26 09:32:36'),
(8618, 'en', 'Send Message', 'Send Message', '2022-08-26 10:45:10', '2022-08-26 10:45:10'),
(8619, 'ar', 'Send Message', 'Send Message', '2022-08-26 10:45:14', '2022-08-26 10:45:14'),
(8620, 'fr', 'Send Message', 'Send Message', '2022-08-26 10:45:19', '2022-08-26 10:45:19'),
(8621, 'en', 'Label Show/Hide', 'Label Show/Hide', '2022-08-27 08:06:45', '2022-08-27 08:06:45'),
(8622, 'ar', 'Label Show/Hide', 'Label Show/Hide', '2022-08-27 08:06:58', '2022-08-27 08:06:58'),
(8623, 'fr', 'Label Show/Hide', 'Label Show/Hide', '2022-08-27 08:07:03', '2022-08-27 08:07:03'),
(8624, 'en', 'reCAPTCHA is not valid. Please try again!', 'reCAPTCHA is not valid. Please try again!', '2022-08-28 08:52:02', '2022-08-28 08:52:02'),
(8625, 'ar', 'reCAPTCHA is not valid. Please try again!', 'reCAPTCHA is not valid. Please try again!', '2022-08-28 08:52:20', '2022-08-28 08:52:20'),
(8626, 'fr', 'reCAPTCHA is not valid. Please try again!', 'reCAPTCHA is not valid. Please try again!', '2022-08-28 08:52:25', '2022-08-28 08:52:25'),
(8627, 'en', 'Please check the captcha', 'Please check the captcha', '2022-08-28 08:53:58', '2022-08-28 08:53:58'),
(8628, 'fr', 'Please check the captcha', 'Please check the captcha', '2022-08-28 08:54:03', '2022-08-28 08:54:03'),
(8629, 'ar', 'Please check the captcha', 'Please check the captcha', '2022-08-28 08:54:08', '2022-08-28 08:54:08'),
(8630, 'en', 'Your message has been delivered', 'Your message has been delivered', '2022-08-28 09:27:34', '2022-08-28 09:27:34'),
(8631, 'ar', 'Your message has been delivered', 'تم تسليم رسالتك', '2022-08-28 09:27:53', '2022-08-28 09:27:53'),
(8632, 'fr', 'Your message has been delivered', 'Votre message a été livré', '2022-08-28 09:28:02', '2022-08-28 09:28:02'),
(8633, 'fr', 'Oops! Message could not be sent. Please try again.', 'Oops! Message could not be sent. Please try again.', '2022-08-28 09:33:02', '2022-08-28 09:33:02'),
(8634, 'en', 'Oops! Message could not be sent. Please try again.', 'Oops! Message could not be sent. Please try again.', '2022-08-28 09:33:07', '2022-08-28 09:33:07'),
(8635, 'ar', 'Oops! Message could not be sent. Please try again.', 'Oops! Message could not be sent. Please try again.', '2022-08-28 09:33:11', '2022-08-28 09:33:11'),
(8636, 'en', 'Select Mail Subject Field', 'Select Mail Subject Field', '2022-08-28 10:41:02', '2022-08-28 10:41:02'),
(8637, 'ar', 'Select Mail Subject Field', 'Select Mail Subject Field', '2022-08-28 10:41:06', '2022-08-28 10:41:06'),
(8638, 'fr', 'Select Mail Subject Field', 'Select Mail Subject Field', '2022-08-28 10:41:11', '2022-08-28 10:41:11'),
(8639, 'en', 'Share this', 'Share this', '2022-08-30 07:00:22', '2022-08-30 07:00:22'),
(8640, 'ar', 'Share this', 'Share this', '2022-08-30 07:00:26', '2022-08-30 07:00:26'),
(8641, 'fr', 'Share this', 'Share this', '2022-08-30 07:00:32', '2022-08-30 07:00:32'),
(8642, 'en', 'Your cart is empty!', 'Your cart is empty!', '2022-09-01 12:11:03', '2022-09-01 12:11:03'),
(8643, 'ar', 'Your cart is empty!', 'عربة التسوق فارغة!', '2022-09-01 12:11:17', '2022-09-01 12:11:17'),
(8644, 'fr', 'Your cart is empty!', 'Votre panier est vide!', '2022-09-01 12:11:31', '2022-09-01 12:11:31'),
(8645, 'en', 'Green Color', 'Green Color', '2022-09-01 23:02:50', '2022-09-01 23:02:50'),
(8646, 'ar', 'Green Color', 'Green Color', '2022-09-01 23:02:57', '2022-09-01 23:02:57'),
(8647, 'fr', 'Green Color', 'Green Color', '2022-09-01 23:03:02', '2022-09-01 23:03:02'),
(8648, 'en', 'Lightness Green Color', 'Lightness Green Color', '2022-09-01 23:04:11', '2022-09-01 23:04:11'),
(8649, 'ar', 'Lightness Green Color', 'Lightness Green Color', '2022-09-01 23:04:16', '2022-09-01 23:04:16'),
(8650, 'fr', 'Lightness Green Color', 'Lightness Green Color', '2022-09-01 23:04:20', '2022-09-01 23:04:20'),
(8651, 'en', 'Dark Gray Color', 'Dark Gray Color', '2022-09-01 23:26:24', '2022-09-01 23:26:24'),
(8652, 'ar', 'Dark Gray Color', 'Dark Gray Color', '2022-09-01 23:26:28', '2022-09-01 23:26:28'),
(8653, 'fr', 'Dark Gray Color', 'Dark Gray Color', '2022-09-01 23:26:33', '2022-09-01 23:26:33'),
(8654, 'fr', 'Gray Color', 'Gray Color', '2022-09-01 23:26:46', '2022-09-01 23:26:46'),
(8655, 'en', 'Gray Color', 'Gray Color', '2022-09-01 23:26:51', '2022-09-01 23:26:51'),
(8656, 'ar', 'Gray Color', 'Gray Color', '2022-09-01 23:26:55', '2022-09-01 23:26:55'),
(8657, 'ar', 'Light Gray Color', 'Light Gray Color', '2022-09-01 23:32:58', '2022-09-01 23:32:58'),
(8658, 'en', 'Light Gray Color', 'Light Gray Color', '2022-09-01 23:33:03', '2022-09-01 23:33:03'),
(8659, 'fr', 'Light Gray Color', 'Light Gray Color', '2022-09-01 23:33:07', '2022-09-01 23:33:07'),
(8660, 'fr', 'Black Color', 'Black Color', '2022-09-01 23:38:18', '2022-09-01 23:38:18'),
(8661, 'en', 'Black Color', 'Black Color', '2022-09-01 23:38:22', '2022-09-01 23:38:22'),
(8662, 'ar', 'Black Color', 'Black Color', '2022-09-01 23:38:27', '2022-09-01 23:38:27'),
(8663, 'ar', 'White Color', 'White Color', '2022-09-01 23:39:01', '2022-09-01 23:39:01'),
(8664, 'en', 'White Color', 'White Color', '2022-09-01 23:39:06', '2022-09-01 23:39:06'),
(8665, 'fr', 'White Color', 'White Color', '2022-09-01 23:39:10', '2022-09-01 23:39:10'),
(8666, 'sw', 'Languages', 'Languages', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8667, 'sw', 'New Data Added Successfully', 'Added Successfully', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8668, 'sw', 'Data insert failed', 'Data insert failed', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8669, 'sw', 'Data Updated Successfully', 'Updated Successfully', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8670, 'sw', 'Data update failed', 'Data update failed', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8671, 'sw', 'Data Removed Successfully', 'Removed Successfully', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8672, 'sw', 'Data remove failed', 'Data remove failed', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8673, 'sw', 'Language Keywords', 'Language Keywords', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8674, 'sw', 'Add New', 'Add New', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8675, 'sw', 'Back to List', 'Back to List', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8676, 'sw', 'SL', 'SL', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8677, 'sw', 'Language Key', 'Language Key', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8678, 'sw', 'Language Value', 'Language Value', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8679, 'sw', 'Action', 'Action', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8680, 'sw', 'Save', 'Save', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8681, 'sw', 'Cancel', 'Cancel', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8682, 'sw', 'Do you really want to edit this record', 'Do you really want to edit this record?', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8683, 'sw', 'Do you really want to delete this record', 'Do you really want to delete this record?', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8684, 'sw', 'Delete', 'Delete', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8685, 'sw', 'Edit', 'Edit', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8686, 'sw', 'Confirm', 'Confirm', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8687, 'sw', 'This is alert message', 'This is alert message', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8688, 'sw', 'Language Code', 'Language Code', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8689, 'sw', 'Language Name', 'Language Name', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8690, 'sw', 'Active Language', 'Active Language', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8691, 'sw', 'General', 'General', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8692, 'sw', 'Site Name', 'Site Name', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8693, 'sw', 'Site Title', 'Site Title', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8694, 'sw', 'Site URL', 'Site URL', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8695, 'sw', 'Theme color', 'Theme color', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8696, 'sw', 'Favicon', 'Favicon', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8697, 'sw', 'The logo must be a file of type png', 'The logo must be a file of type png', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8698, 'sw', 'The file uploaded Successfully', 'The file uploaded Successfully', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8699, 'sw', 'Sorry, there was an error uploading your file', 'Sorry, there was an error uploading your file', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8700, 'sw', 'Sorry only you can upload jpg, png and gif file type', 'Sorry only you can upload jpg, png and gif file type', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8701, 'sw', 'Front Logo', 'Front Logo', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8702, 'sw', 'Back Logo', 'Back Logo', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8703, 'sw', 'Settings', 'Settings', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8704, 'sw', 'Time Zone', 'Time Zone', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8705, 'sw', 'Google reCAPTCHA', 'Google reCAPTCHA', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8706, 'sw', 'Theme Register', 'Theme Register', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8707, 'sw', 'Mail Settings', 'Mail Settings', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8708, 'sw', 'Media Setting', 'Media Setting', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8709, 'sw', 'Purchase Code', 'Purchase Code', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8710, 'sw', 'Sorry, This is not a valid purchase code.', 'Sorry, This is not a valid purchase code.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8711, 'sw', 'Theme registered Successfully', 'Theme registered Successfully', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8712, 'sw', 'Theme deregister Successfully', 'Theme deregister Successfully', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8713, 'sw', 'Do you really want to deregister the theme', 'Do you really want to deregister the theme?', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8714, 'sw', 'Theme is registered', 'Theme is registered', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8715, 'sw', 'Deregister Theme', 'Deregister Theme', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8716, 'sw', 'Register Theme', 'Register Theme', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8717, 'sw', 'Users', 'Users', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8718, 'sw', 'Name', 'Name', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8719, 'sw', 'Email', 'Email', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8720, 'sw', 'Status', 'Status', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8721, 'sw', 'Role', 'Role', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8722, 'sw', 'Active', 'Active', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8723, 'sw', 'Inactive', 'Inactive', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8724, 'sw', 'Email Address', 'Email Address', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8725, 'sw', 'Password', 'Password', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8726, 'sw', 'Phone', 'Phone', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8727, 'sw', 'Address', 'Address', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8728, 'sw', 'Active/Inactive', 'Active/Inactive', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8729, 'sw', 'Roles', 'Roles', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8730, 'sw', 'The profile image must be a file of type jpg', 'The profile image must be a file of type jpg', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8731, 'sw', 'Profile Photo', 'Profile Photo', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8732, 'sw', 'Profile photo size 300x300 pixels', 'Profile photo size 300x300 pixels', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8733, 'sw', 'Browse', 'Browse', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8734, 'sw', 'Profile', 'Profile', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8735, 'sw', 'You are not active yet. Please contact administrator.', 'You are not active yet. Please contact administrator.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8736, 'sw', 'You do not have permission to access this page', 'You do not have permission to access this page.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8737, 'sw', 'Media', 'Media', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8738, 'sw', 'Attachment Details', 'Attachment Details', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8739, 'sw', 'Alternative Text', 'Alternative Text', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8740, 'sw', 'Title', 'Title', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8741, 'sw', 'Copy Link Thumbnail Image', 'Copy Link Thumbnail Image', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8742, 'sw', 'Copy Link large Image', 'Copy Link large Image', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8743, 'sw', 'Back', 'Back', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8744, 'sw', 'Select File', 'Select File', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8745, 'sw', 'All', 'All', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8746, 'sw', 'Bulk Select', 'Bulk Select', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8747, 'sw', 'Delete Permanently', 'Delete Permanently', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8748, 'sw', 'Search', 'Search', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8749, 'sw', 'Type', 'Type', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8750, 'sw', 'Width', 'Width', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8751, 'sw', 'Height', 'Height', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8752, 'sw', 'Categories', 'Categories', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8753, 'sw', 'Category Name', 'Category Name', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8754, 'sw', 'Slug', 'Slug', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8755, 'sw', 'Language', 'Language', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8756, 'sw', 'All Language', 'All Language', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8757, 'sw', 'Description', 'Description', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8758, 'sw', 'Subheader Image', 'Subheader Image', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8759, 'sw', 'Choose a File', 'Choose a File', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8760, 'sw', 'Upload File', 'Upload File', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8761, 'sw', 'Copy Thumbnail Image', 'Copy Thumbnail Image', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8762, 'sw', 'Menu', 'Menu', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8763, 'sw', 'Menu Name', 'Menu Name', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8764, 'sw', 'Menu Position', 'Menu Position', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8765, 'sw', 'Menu Status', 'Menu Status', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8766, 'sw', 'Position', 'Position', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8767, 'sw', 'Customize', 'Customize', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8768, 'sw', 'No data available', 'No data available', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8769, 'sw', 'Apply', 'Apply', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8770, 'sw', 'Do you really want to publish this records', 'Do you really want to publish this records?', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8771, 'sw', 'Do you really want to draft this records', 'Do you really want to draft this records?', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8772, 'sw', 'Do you really want to delete this records', 'Do you really want to delete this records?', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8773, 'sw', 'Please select action', 'Please select action', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8774, 'sw', 'Please select record', 'Please select record', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8775, 'sw', 'Save Menu', 'Save Menu', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8776, 'sw', 'Menu structure', 'Menu structure', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8777, 'sw', 'Add menu items', 'Add menu items', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8778, 'sw', 'Only selected language menu list', 'Only selected language menu list', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8779, 'sw', 'URL', 'URL', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8780, 'sw', 'Link Text', 'Link Text', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8781, 'sw', 'Navigation Label', 'Navigation Label', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8782, 'sw', 'Add to Menu', 'Add to Menu', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8783, 'sw', 'Select All', 'Select All', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8784, 'sw', 'Pages', 'Pages', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8785, 'sw', 'Posts', 'Posts', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8786, 'sw', 'Custom Links', 'Custom Links', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8787, 'sw', 'Target Window', 'Target Window', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8788, 'sw', 'CSS Class (Optional)', 'CSS Class (Optional)', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8789, 'sw', 'Select menu option', 'Select menu option', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8790, 'sw', 'Select width', 'Select width', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8791, 'sw', 'Please fill out required field', 'Please fill out required field.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8792, 'sw', 'Full Width', 'Full Width', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8793, 'sw', 'Fixed Width', 'Fixed Width', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8794, 'sw', 'Mega Menu', 'Mega Menu', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8795, 'sw', 'Dropdown', 'Dropdown', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8796, 'sw', 'None', 'None', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8797, 'sw', 'Dropdown Menu', 'Dropdown Menu', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8798, 'sw', 'Edit Mega Menu Title', 'Edit Mega Menu Title', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8799, 'sw', 'Title Enable/Disable', 'Title Enable/Disable', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8800, 'sw', 'Image Enable/Disable', 'Image Enable/Disable', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8801, 'sw', 'Image', 'Image', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8802, 'sw', 'All Posts', 'All Posts', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8803, 'sw', 'All Pages', 'All Pages', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8804, 'sw', 'Published', 'Published', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8805, 'sw', 'Draft', 'Draft', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8806, 'sw', 'Publish', 'Publish', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8807, 'sw', 'Select Action', 'Select Action', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8808, 'sw', 'Home Page', 'Home Page', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8809, 'sw', 'Home', 'Home', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8810, 'sw', 'Permalink', 'Permalink', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8811, 'sw', 'Add New Row', 'Add New Row', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8812, 'sw', 'Add Column', 'Add Column', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8813, 'sw', 'Add Item', 'Add Item', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8814, 'sw', 'Generate', 'Generate', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8815, 'sw', 'Custom', 'Custom', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8816, 'sw', 'Save changes', 'Save changes', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8817, 'sw', 'Row Options', 'Row Options', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8818, 'sw', 'Define an admin label for easy identification', 'Define an admin label for easy identification.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8819, 'sw', 'Admin Label', 'Admin Label', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8820, 'sw', 'Style', 'Style', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8821, 'sw', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8822, 'sw', 'Enable this option to remove gutters between columns in this row.', 'Enable this option to remove gutters between columns in this row.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8823, 'sw', 'Section ID', 'Section ID', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8824, 'sw', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8825, 'sw', 'CSS Class', 'CSS Class', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8826, 'sw', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8827, 'sw', 'Padding Top', 'Padding Top', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8828, 'sw', 'Padding Bottom', 'Padding Bottom', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8829, 'sw', 'Background Color', 'Background Color', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8830, 'sw', 'Background Image', 'Background Image', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8831, 'sw', 'Background Position', 'Background Position', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8832, 'sw', 'Mailer', 'Mailer', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8833, 'sw', 'From Name', 'From Name', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8834, 'sw', 'From Mail Address', 'From Mail Address', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8835, 'sw', 'SMTP Host', 'SMTP Host', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8836, 'sw', 'SMTP Port', 'SMTP Port', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8837, 'sw', 'SMTP Security', 'SMTP Security', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8838, 'sw', 'SMTP Username', 'SMTP Username', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8839, 'sw', 'SMTP Password', 'SMTP Password', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8840, 'sw', 'To Name', 'To Name', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8841, 'sw', 'To Mail Address', 'To Mail Address', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8842, 'sw', 'Theme Options', 'Theme Options', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8843, 'sw', 'Logo', 'Logo', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8844, 'sw', 'Custom CSS', 'Custom CSS', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8845, 'sw', 'Custom JS', 'Custom JS', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8846, 'sw', 'eCommerce', 'eCommerce', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8847, 'sw', 'Products', 'Products', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8848, 'sw', 'Tax', 'Tax', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8849, 'sw', 'Percentage', 'Percentage', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8850, 'sw', 'Coupons', 'Coupons', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8851, 'sw', 'Code', 'Code', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8852, 'sw', 'Expire Date', 'Expire Date', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8853, 'sw', 'Labels', 'Labels', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8854, 'sw', 'Color', 'Color', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8855, 'sw', 'Attributes', 'Attributes', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8856, 'sw', 'Attribute Type', 'Attribute Type', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8857, 'sw', 'Collections', 'Collections', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8858, 'sw', 'Shipping', 'Shipping', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8859, 'sw', 'Shipping Fee', 'Shipping Fee', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8860, 'sw', 'Brands', 'Brands', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8861, 'sw', 'Featured', 'Featured', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8862, 'sw', 'YES', 'YES', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8863, 'sw', 'NO', 'NO', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8864, 'sw', 'Product Categories', 'Product Categories', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8865, 'sw', 'Subheader', 'Subheader', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8866, 'sw', 'SEO', 'SEO', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8867, 'sw', 'SEO Title', 'SEO Title', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8868, 'sw', 'SEO Keywords', 'SEO Keywords', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8869, 'sw', 'SEO Description', 'SEO Description', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8870, 'sw', 'Open Graph Image', 'Open Graph Image', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8871, 'sw', 'Offer & Ads', 'Offer & Ads', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8872, 'sw', 'Offer & Ads Position', 'Offer & Ads Position', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8873, 'sw', 'Home Slider', 'Home Slider', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8874, 'sw', 'Slider', 'Slider', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8875, 'sw', 'Product', 'Product', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8876, 'sw', 'Price', 'Price', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8877, 'sw', 'Images', 'Images', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8878, 'sw', 'Variations', 'Variations', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8879, 'sw', 'Inventory', 'Inventory', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8880, 'sw', 'Related Products', 'Related Products', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8881, 'sw', 'Short Description', 'Short Description', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8882, 'sw', 'Product Content', 'Product Content', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8883, 'sw', 'Category', 'Category', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8884, 'sw', 'Brand', 'Brand', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8885, 'sw', 'Collection', 'Collection', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8886, 'sw', 'Label', 'Label', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8887, 'sw', 'Select Category', 'Select Category', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8888, 'sw', 'Product Name', 'Product Name', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8889, 'sw', 'Cost Price', 'Cost Price', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8890, 'sw', 'Sale Price', 'Sale Price', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8891, 'sw', 'Old Price', 'Old Price', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8892, 'sw', 'Start Date', 'Start Date', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8893, 'sw', 'End Date', 'End Date', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8894, 'sw', 'Manage Stock', 'Manage Stock', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8895, 'sw', 'SKU', 'SKU', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8896, 'sw', 'Stock Status', 'Stock Status', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8897, 'sw', 'Stock Quantity', 'Stock Quantity', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8898, 'sw', 'In Stock', 'In Stock', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8899, 'sw', 'Featured image', 'Featured image', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8900, 'sw', 'Size', 'Size', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8901, 'sw', 'Select color', 'Select color', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8902, 'sw', 'Select Size', 'Select Size', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8903, 'sw', 'Multiple Images', 'Multiple Images', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8904, 'sw', 'Social Media', 'Social Media', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8905, 'sw', 'Twitter', 'Twitter', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8906, 'sw', 'Google Analytics', 'Google Analytics', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8907, 'sw', 'Google Tag Manager', 'Google Tag Manager', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8908, 'sw', 'Whatsapp', 'Whatsapp', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8909, 'sw', 'Shop Now', 'Shop Now', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8910, 'sw', 'Shop by Brands', 'Shop by Brands', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8911, 'sw', 'New Arrivals', 'New Arrivals', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8912, 'sw', 'See all', 'See all', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8913, 'sw', 'Trending Products', 'Trending Products', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8914, 'sw', 'Currency', 'Currency', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8915, 'sw', 'Currency Name', 'Currency Name', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8916, 'sw', 'Currency Icon', 'Currency Icon', '2023-02-16 20:30:16', '2023-02-16 20:30:16');
INSERT INTO `lankeyvalues` (`id`, `language_code`, `language_key`, `language_value`, `created_at`, `updated_at`) VALUES
(8917, 'sw', 'Currency Position', 'Currency Position', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8918, 'sw', 'RTL', 'RTL', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8919, 'sw', 'Available Offer', 'Available Offer', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8920, 'sw', 'Best Sellers', 'Best Sellers', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8921, 'sw', 'Top Categories', 'Top Categories', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8922, 'sw', 'Header', 'Header', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8923, 'sw', 'Footer', 'Footer', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8924, 'sw', 'Subscribe our newsletter', 'Subscribe our newsletter', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8925, 'sw', 'Submit', 'Submit', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8926, 'sw', 'Enter your email', 'Enter your email', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8927, 'sw', 'Contact Us', 'Contact Us', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8928, 'sw', 'Copyright', 'Copyright', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8929, 'sw', 'Quick links', 'Quick links', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8930, 'sw', 'Company', 'Company', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8931, 'sw', 'Search for Products', 'Search for Products', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8932, 'sw', 'Trending', 'Trending', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8933, 'sw', 'Filter by Category', 'Filter by Category', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8934, 'sw', 'Filter by Brand', 'Filter by Brand', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8935, 'sw', 'Filter by Size', 'Filter by Size', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8936, 'sw', 'Oops! No product found.', 'Oops! No product found.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8937, 'sw', 'Availability', 'Availability', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8938, 'sw', 'Quantity', 'Quantity', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8939, 'sw', 'Buy Now', 'Buy Now', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8940, 'sw', 'Add To Cart', 'Add To Cart', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8941, 'sw', 'Review', 'Review', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8942, 'sw', 'Reviews', 'Reviews', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8943, 'sw', 'Submit your review', 'Submit your review', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8944, 'sw', 'Your rating of this product', 'Your rating of this product', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8945, 'sw', 'Submit Review', 'Submit Review', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8946, 'sw', 'login', 'Login', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8947, 'sw', 'reviews for', 'reviews for', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8948, 'sw', 'Showing', 'Showing', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8949, 'sw', 'Default', 'Default', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8950, 'sw', 'Added product to cart successfully.', 'Added product to cart successfully.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8951, 'sw', 'Added product to cart failed.', 'Added product to cart failed.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8952, 'sw', 'Shopping Cart', 'Shopping Cart', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8953, 'sw', 'View Cart', 'View Cart', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8954, 'sw', 'Checkout', 'Checkout', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8955, 'sw', 'Subtotal', 'Subtotal', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8956, 'sw', 'Total', 'Total', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8957, 'sw', 'Please select required field.', 'Please select required field.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8958, 'sw', 'Please enter quantity.', 'Please enter quantity.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8959, 'sw', 'The value must be less than or equal to', 'The value must be less than or equal to', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8960, 'sw', 'This product out of stock.', 'This product out of stock.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8961, 'sw', 'Cart', 'Cart', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8962, 'sw', 'Variation', 'Variation', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8963, 'sw', 'Remove', 'Remove', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8964, 'sw', 'Coupon Discount', 'Coupon Discount', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8965, 'sw', 'Enter coupon code', 'Enter coupon code', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8966, 'sw', 'Cart Total', 'Cart Total', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8967, 'sw', 'Price Total', 'Price Total', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8968, 'sw', 'Proceed To CheckOut', 'Proceed To CheckOut', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8969, 'sw', 'Discount', 'Discount', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8970, 'sw', 'Wishlist', 'Wishlist', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8971, 'sw', 'View', 'View', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8972, 'sw', 'Added product to wishlist successfully.', 'Added product to wishlist successfully.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8973, 'sw', 'Added product to wishlist failed.', 'Added product to wishlist failed.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8974, 'sw', 'Facebook APP ID', 'Facebook APP ID', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8975, 'sw', 'Facebook Pixel', 'Facebook Pixel', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8976, 'sw', 'Register', 'Register', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8977, 'sw', 'Sign in', 'Sign in', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8978, 'sw', 'Sign up for an account', 'Sign up for an account', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8979, 'sw', 'Forgot your password?', 'Forgot your password?', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8980, 'sw', 'Back to login', 'Back to login', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8981, 'sw', 'Please enter your email address and password', 'Please enter your email address and password', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8982, 'sw', 'Please fill in the information below', 'Please fill in the information below', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8983, 'sw', 'Remember me', 'Remember me', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8984, 'sw', 'Confirm password', 'Confirm password', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8985, 'sw', 'My Dashboard', 'My Dashboard', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8986, 'sw', 'Logout', 'Logout', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8987, 'sw', 'The recaptcha field is required', 'The recaptcha field is required', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8988, 'sw', 'Thanks! You have register successfully. Please login.', 'Thanks! You have register successfully. Please login.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8989, 'sw', 'Oops! You are failed registration. Please try again.', 'Oops! You are failed registration. Please try again.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8990, 'sw', 'Your email address and password incorrect.', 'Your email address and password incorrect.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8991, 'sw', 'Reset Password', 'Reset Password', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8992, 'sw', 'Enter your email address below and we will send you a link to reset your password', 'Enter your email address below and we will send you a link to reset your password', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8993, 'sw', 'Send Password Reset Link', 'Send Password Reset Link', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8994, 'sw', 'We can not find a user with that email address', 'We can not find a user with that email address', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8995, 'sw', 'We have emailed your password reset link!', 'We have emailed your password reset link!', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8996, 'sw', 'Oops! You are failed change password request. Please try again', 'Oops! You are failed change password request. Please try again', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8997, 'sw', 'Forgot your password', 'Forgot your password', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8998, 'sw', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(8999, 'sw', 'This password reset token is invalid', 'This password reset token is invalid', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9000, 'sw', 'Oops! You are failed change password. Please try again', 'Oops! You are failed change password. Please try again', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9001, 'sw', 'Your password changed successfully', 'Your password changed successfully', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9002, 'sw', 'This password reset email is invalid', 'This password reset email is invalid', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9003, 'sw', 'Dashboard', 'Dashboard', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9004, 'sw', 'Orders', 'Orders', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9005, 'sw', 'Change Password', 'Change Password', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9006, 'sw', 'Update', 'Update', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9007, 'sw', 'State', 'State', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9008, 'sw', 'City', 'City', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9009, 'sw', 'Shipping Information', 'Shipping Information', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9010, 'sw', 'Already have an account?', 'Already have an account?', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9011, 'sw', 'Register an account with above information?', 'Register an account with above information?', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9012, 'sw', 'Country', 'Country', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9013, 'sw', 'Stripe Secret', 'Stripe Secret', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9014, 'sw', 'Stripe Method', 'Stripe Method', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9015, 'sw', 'Cash on Delivery (COD)', 'Cash on Delivery (COD)', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9016, 'sw', 'Stripe', 'Stripe', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9017, 'sw', 'Bank Transfer', 'Bank Transfer', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9018, 'sw', 'Payment Method', 'Payment Method', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9019, 'sw', 'Pay online via Stripe', 'Pay online via Stripe', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9020, 'sw', 'Publishable Key', 'Publishable Key', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9021, 'sw', 'Payment Gateway Icon', 'Payment Gateway Icon', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9022, 'sw', 'Payment Methods', 'Payment Methods', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9023, 'sw', 'Shipping Method', 'Shipping Method', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9024, 'sw', 'Order Summary', 'Order Summary', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9025, 'sw', 'Oops! Your order is failed. Please try again.', 'Oops! Your order is failed. Please try again.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9026, 'sw', 'Oops! Your order is failed. Please product add to cart.', 'Oops! Your order is failed. Please product add to cart.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9027, 'sw', 'Please type valid card number', 'Please type valid card number', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9028, 'sw', 'Your order is successfully.', 'Your order is successfully.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9029, 'sw', 'Continue Shopping', 'Continue Shopping', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9030, 'sw', 'Thank you for purchasing our products.', 'Thank you for purchasing our products.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9031, 'sw', 'Thank', 'Thank', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9032, 'sw', 'Order#', 'Order#', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9033, 'sw', 'Order Date', 'Order Date', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9034, 'sw', 'Guest User', 'Guest User', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9035, 'sw', 'Customer', 'Customer', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9036, 'sw', 'Amount', 'Amount', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9037, 'sw', 'Qty', 'Qty', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9038, 'sw', 'Payment Status', 'Payment Status', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9039, 'sw', 'Order Status', 'Order Status', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9040, 'sw', 'Filter', 'Filter', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9041, 'sw', 'Order', 'Order', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9042, 'sw', 'Send confirmation email to customer', 'Send confirmation email to customer', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9043, 'sw', 'If you have any questions about this invoice, please contact us', 'If you have any questions about this invoice, please contact us', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9044, 'sw', 'Invoice', 'Invoice', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9045, 'sw', 'Invoice Information', 'Invoice Information', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9046, 'sw', 'To', 'To', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9047, 'sw', 'BILL TO', 'BILL TO', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9048, 'sw', 'BILL FROM', 'BILL FROM', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9049, 'sw', 'Thanks for your order. You can find your purchase information below.', 'Thanks for your order. You can find your purchase information below.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9050, 'sw', 'Hi', 'Hi', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9051, 'sw', 'Your order status', 'Your order status', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9052, 'sw', 'We have received your order and will contact you as soon as your package is shipped. You can find your purchase information below.', 'We have received your order and will contact you as soon as your package is shipped. You can find your purchase information below.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9053, 'sw', 'Order Details', 'Order Details', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9054, 'sw', 'Current password does not match.', 'Current password does not match.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9055, 'sw', 'New password can not be the old password!', 'New password can not be the old password!', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9056, 'sw', 'Current password', 'Current password', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9057, 'sw', 'New password', 'New password', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9058, 'sw', 'Password confirmation', 'Password confirmation', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9059, 'sw', 'Do you really want to active this records', 'Do you really want to active this records', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9060, 'sw', 'Do you really want to inactive this records', 'Do you really want to inactive this records', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9061, 'sw', 'Customers', 'Customers', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9062, 'sw', 'Write comment', 'Write comment', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9063, 'sw', 'Please Login', 'Please Login', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9064, 'sw', 'Thanks for your review', 'Thanks for your review', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9065, 'sw', 'Oops! You are failed review. Please try again.', 'Oops! You are failed review. Please try again.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9066, 'sw', 'Oops! You are unauthorized. Please login.', 'Oops! You are unauthorized. Please login.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9067, 'sw', 'You have reviewed this product already!', 'You have reviewed this product already!', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9068, 'sw', 'Review & Ratings', 'Review & Ratings', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9069, 'sw', 'Ratings', 'Ratings', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9070, 'sw', 'Comments', 'Comments', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9071, 'sw', 'Review Date', 'Review Date', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9072, 'sw', 'All Category', 'All Category', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9073, 'sw', 'All Brand', 'All Brand', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9074, 'sw', 'All Collection', 'All Collection', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9075, 'sw', 'Backend Theme color', 'Backend Theme color', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9076, 'sw', 'Awaiting processing', 'Awaiting processing', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9077, 'sw', 'Processing', 'Processing', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9078, 'sw', 'Ready for pickup', 'Ready for pickup', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9079, 'sw', 'Completed', 'Completed', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9080, 'sw', 'Canceled', 'Canceled', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9081, 'sw', 'Published Products', 'Published Products', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9082, 'sw', 'Published Categories', 'Published Categories', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9083, 'sw', 'Published Brands', 'Published Brands', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9084, 'sw', 'Out of Stock Products', 'Out of Stock Products', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9085, 'sw', 'Top 10 Selling Products', 'Top 10 Selling Products', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9086, 'sw', 'Top 10 Rating Products', 'Top 10 Rating Products', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9087, 'sw', 'Total Review', 'Total Review', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9088, 'sw', 'Selling', 'Selling', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9089, 'sw', 'Newsletters', 'Newsletters', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9090, 'sw', 'MailChimp Settings', 'MailChimp Settings', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9091, 'sw', 'MailChimp API Key', 'MailChimp API Key', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9092, 'sw', 'Audience ID', 'Audience ID', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9093, 'sw', 'Subscribe Popup', 'Subscribe Popup', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9094, 'sw', 'Created At', 'Created At', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9095, 'sw', 'You have successfully subscribed.', 'You have successfully subscribed.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9096, 'sw', 'You are already subscribed.', 'You are already subscribed.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9097, 'sw', 'Some problem occurred, please try again.', 'Some problem occurred, please try again.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9098, 'sw', 'Please enable mailchimp.', 'Please enable mailchimp.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9099, 'sw', 'MailChimp API Key Invalid.', 'MailChimp API Key Invalid.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9100, 'sw', 'The requested resource could not be found.', 'The requested resource could not be found.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9101, 'sw', 'Enter your email address', 'Enter your email address', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9102, 'sw', 'Transactions', 'Transactions', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9103, 'sw', 'Date', 'Date', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9104, 'sw', 'Transaction#', 'Transaction#', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9105, 'sw', 'Hello', 'Hello', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9106, 'sw', 'Excel', 'Excel', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9107, 'sw', 'CSV', 'CSV', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9108, 'sw', 'Default Language', 'Default Language', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9109, 'sw', 'I am a customer', 'I am a customer', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9110, 'sw', 'I am a seller', 'I am a seller', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9111, 'sw', 'Create an seller account', 'Create an seller account', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9112, 'sw', 'Create an customer account', 'Create an customer account', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9113, 'sw', 'Shop Name', 'Shop Name', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9114, 'sw', 'Shop URL', 'Shop URL', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9115, 'sw', 'Shop Phone', 'Shop Phone', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9116, 'sw', 'Available', 'Available', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9117, 'sw', 'Not Available', 'Not Available', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9118, 'sw', 'Thanks! You have register successfully. Your account is pending for review.', 'Thanks! You have register successfully. Your account is pending for review.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9119, 'sw', 'Marketplace', 'Marketplace', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9120, 'sw', 'Sellers', 'Sellers', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9121, 'sw', 'Withdrawals', 'Withdrawals', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9122, 'sw', 'Total Sold', 'Total Sold', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9123, 'sw', 'Total Withdraw', 'Total Withdraw', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9124, 'sw', 'Total Transaction', 'Total Transaction', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9125, 'sw', 'Total Products', 'Total Products', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9126, 'sw', 'Bank Name', 'Bank Name', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9127, 'sw', 'Bank Code/IFSC', 'Bank Code/IFSC', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9128, 'sw', 'Account Number', 'Account Number', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9129, 'sw', 'Account Holder Name', 'Account Holder Name', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9130, 'sw', 'PayPal ID', 'PayPal ID', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9131, 'sw', 'Joined At', 'Joined At', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9132, 'sw', 'Bank Information', 'Bank Information', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9133, 'sw', 'Details', 'Details', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9134, 'sw', 'My Account', 'My Account', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9135, 'sw', 'Total Amount', 'Total Amount', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9136, 'sw', 'Store', 'Store', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9137, 'sw', 'All Store', 'All Store', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9138, 'sw', 'Seller Dashboard', 'Seller Dashboard', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9139, 'sw', 'Order Tracking', 'Order Tracking', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9140, 'sw', 'Tracking your order status', 'Tracking your order status', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9141, 'sw', 'Find', 'Find', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9142, 'sw', 'Fee withdrawal (Fixed amount)', 'Fee withdrawal (Fixed amount)', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9143, 'sw', 'Product auto publish', 'Product auto publish', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9144, 'sw', 'Seller auto active', 'Seller auto active', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9145, 'sw', 'Zip Code', 'Zip Code', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9146, 'sw', 'Fee', 'Fee', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9147, 'sw', 'Transaction ID', 'Transaction ID', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9148, 'sw', 'The balance is not enough for withdrawal.', 'The balance is not enough for withdrawal.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9149, 'sw', 'You will receive money through the bank information below', 'You will receive money through the bank information below', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9150, 'sw', 'Seller Information', 'Seller Information', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9151, 'sw', 'Screenshot', 'Screenshot', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9152, 'sw', 'Add Screenshot', 'Add Screenshot', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9153, 'sw', 'All Status', 'All Status', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9154, 'sw', 'Sold By', 'Sold By', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9155, 'sw', 'Since', 'Since', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9156, 'sw', 'View Your Store', 'View Your Store', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9157, 'sw', 'View Website', 'View Website', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9158, 'sw', 'Subscribe Settings', 'Subscribe Settings', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9159, 'sw', 'Language Switcher', 'Language Switcher', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9160, 'sw', 'Paypal', 'Paypal', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9161, 'sw', 'Paypal Method', 'Paypal Method', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9162, 'sw', 'Client ID', 'Client ID', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9163, 'sw', 'Secret', 'Secret', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9164, 'sw', 'Sandbox mode', 'Sandbox mode', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9165, 'sw', 'Razorpay', 'Razorpay', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9166, 'sw', 'Razorpay Method', 'Razorpay Method', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9167, 'sw', 'Key Id', 'Key Id', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9168, 'sw', 'Key Secret', 'Key Secret', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9169, 'sw', 'Mollie', 'Mollie', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9170, 'sw', 'Mollie Method', 'Mollie Method', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9171, 'sw', 'API Key', 'API Key', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9172, 'sw', 'Pay online via Paypal', 'Pay online via Paypal', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9173, 'sw', 'Payment with PayPal', 'Payment with PayPal', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9174, 'sw', 'Pay online via Razorpay', 'Pay online via Razorpay', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9175, 'sw', 'Payment with Razorpay', 'Payment with Razorpay', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9176, 'sw', 'Pay online via Mollie', 'Pay online via Mollie', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9177, 'sw', 'Payment with Mollie', 'Payment with Mollie', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9178, 'sw', 'Connection timeout', 'Connection timeout', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9179, 'sw', 'Some error occur, sorry for inconvenient', 'Some error occur, sorry for inconvenient', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9180, 'sw', 'Unknown error occurred', 'Unknown error occurred', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9181, 'sw', 'Payment failed', 'Payment failed', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9182, 'sw', 'Test Mode', 'Test Mode', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9183, 'sw', 'Thumbnail Image', 'Thumbnail Image', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9184, 'sw', 'Layer Image 1', 'Layer Image 1', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9185, 'sw', 'Sub Title', 'Sub Title', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9186, 'sw', 'Layer Image 2', 'Layer Image 2', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9187, 'sw', 'Layer Image 3', 'Layer Image 3', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9188, 'sw', 'Home Video Section', 'Home Video Section', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9189, 'sw', 'Youtube Video URL', 'Youtube Video URL', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9190, 'sw', 'Button Text', 'Button Text', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9191, 'sw', 'Footer Subscribe Section', 'Footer Subscribe Section', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9192, 'sw', 'Subscribe', 'Subscribe', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9193, 'sw', 'About Us', 'About Us', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9194, 'sw', 'Browse Categories', 'Browse Categories', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9195, 'sw', 'Show More', 'Show More', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9196, 'sw', 'All Categories', 'All Categories', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9197, 'sw', 'Themes', 'Themes', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9198, 'sw', 'Activated', 'Activated', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9199, 'sw', 'Activate', 'Activate', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9200, 'sw', 'Updated Successfully', 'Updated Successfully', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9201, 'sw', 'Saved Successfully', 'Saved Successfully', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9202, 'sw', 'Unit', 'Unit', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9203, 'sw', 'Discount Manage', 'Discount Manage', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9204, 'sw', 'Vendor', 'Vendor', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9205, 'sw', 'Off', 'Off', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9206, 'sw', 'Page Variation', 'Page Variation', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9207, 'sw', 'Homepage Variation', 'Homepage Variation', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9208, 'sw', 'Category Page Variation', 'Category Page Variation', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9209, 'sw', 'Brand Page Variation', 'Brand Page Variation', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9210, 'sw', 'Full width without sidebar', 'Full width without sidebar', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9211, 'sw', 'Left Sidebar', 'Left Sidebar', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9212, 'sw', 'Right Sidebar', 'Right Sidebar', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9213, 'sw', 'Seller Page Variation', 'Seller Page Variation', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9214, 'sw', 'New Products', 'New Products', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9215, 'sw', 'Top Selling', 'Top Selling', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9216, 'sw', 'Top Rated', 'Top Rated', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9217, 'sw', 'Is Popular', 'Is Popular', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9218, 'sw', 'Is Trending', 'Is Trending', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9219, 'sw', 'Manage Page', 'Manage Page', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9220, 'sw', 'Section Manage', 'Section Manage', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9221, 'sw', 'All Manage Page', 'All Manage Page', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9222, 'sw', 'Filter by Price', 'Filter by Price', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9223, 'sw', 'Price Range', 'Price Range', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9224, 'sw', 'Countries', 'Countries', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9225, 'sw', 'Contact', 'Contact', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9226, 'sw', 'Get In Touch', 'Get In Touch', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9227, 'sw', 'Contact Info', 'Contact Info', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9228, 'sw', 'Google Map', 'Google Map', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9229, 'sw', 'Latitude', 'Latitude', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9230, 'sw', 'Longitude', 'Longitude', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9231, 'sw', 'Zoom', 'Zoom', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9232, 'sw', 'Contact Form', 'Contact Form', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9233, 'sw', 'Add Field', 'Add Field', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9234, 'sw', 'Dropdown Values', 'Dropdown Values', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9235, 'sw', 'Please fill up all mandatory fields', 'Please fill up all mandatory fields', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9236, 'sw', 'Send Message', 'Send Message', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9237, 'sw', 'Label Show/Hide', 'Label Show/Hide', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9238, 'sw', 'reCAPTCHA is not valid. Please try again!', 'reCAPTCHA is not valid. Please try again!', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9239, 'sw', 'Please check the captcha', 'Please check the captcha', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9240, 'sw', 'Your message has been delivered', 'Your message has been delivered', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9241, 'sw', 'Oops! Message could not be sent. Please try again.', 'Oops! Message could not be sent. Please try again.', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9242, 'sw', 'Select Mail Subject Field', 'Select Mail Subject Field', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9243, 'sw', 'Share this', 'Share this', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9244, 'sw', 'Your cart is empty!', 'Your cart is empty!', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9245, 'sw', 'Green Color', 'Green Color', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9246, 'sw', 'Lightness Green Color', 'Lightness Green Color', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9247, 'sw', 'Dark Gray Color', 'Dark Gray Color', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9248, 'sw', 'Gray Color', 'Gray Color', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9249, 'sw', 'Light Gray Color', 'Light Gray Color', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9250, 'sw', 'Black Color', 'Black Color', '2023-02-16 20:30:16', '2023-02-16 20:30:16'),
(9251, 'sw', 'White Color', 'White Color', '2023-02-16 20:30:16', '2023-02-16 20:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `media_options`
--

CREATE TABLE `media_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `alt_title` text DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `large_image` text DEFAULT NULL,
  `option_value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_options`
--

INSERT INTO `media_options` (`id`, `title`, `alt_title`, `thumbnail`, `large_image`, `option_value`, `created_at`, `updated_at`) VALUES
(247, 'photo', 'photo', '06082021041147-photo.png', '06082021041147-photo.png', '21950', '2021-08-05 22:11:47', '2021-08-05 22:11:47'),
(331, 'payment', 'payment', '16112021165416-200x200-payment.png', '16112021165416-payment.png', '8212', '2021-11-16 10:54:16', '2021-11-16 10:54:16'),
(441, 'favicon', 'favicon', '24062022060012-favicon.ico', '24062022060012-favicon.ico', '5430', '2022-06-24 00:00:12', '2022-06-24 00:00:12'),
(442, 'logo', 'logo', '24062022060027-200x200-logo.png', '24062022060027-logo.png', '16775', '2022-06-24 00:00:27', '2022-06-24 00:00:27'),
(443, 'h1-layer1', 'h1-layer1', '01072022095731-200x200-h1-layer1.png', '01072022095731-h1-layer1.png', '1040462', '2022-07-01 03:57:31', '2022-07-01 03:57:31'),
(444, 'h1-layer5', 'h1-layer5', '01072022095735-200x200-h1-layer5.png', '01072022095735-h1-layer5.png', '366096', '2022-07-01 03:57:35', '2022-07-01 03:57:35'),
(445, 'h1-layer2', 'h1-layer2', '01072022095745-200x200-h1-layer2.png', '01072022095745-h1-layer2.png', '33634', '2022-07-01 03:57:45', '2022-07-01 03:57:45'),
(446, 'h1-layer3', 'h1-layer3', '01072022095750-200x200-h1-layer3.png', '01072022095750-h1-layer3.png', '50012', '2022-07-01 03:57:50', '2022-07-01 03:57:50'),
(447, 'h1-layer4', 'h1-layer4', '01072022095752-200x200-h1-layer4.png', '01072022095752-h1-layer4.png', '49803', '2022-07-01 03:57:52', '2022-07-01 03:57:52'),
(448, 'h1-layer6', 'h1-layer6', '01072022095755-200x200-h1-layer6.png', '01072022095755-h1-layer6.png', '36640', '2022-07-01 03:57:55', '2022-07-01 03:57:55'),
(449, 'h1-layer7', 'h1-layer7', '01072022095757-200x200-h1-layer7.png', '01072022095757-h1-layer7.png', '46145', '2022-07-01 03:57:57', '2022-07-01 03:57:57'),
(450, 'h1-layer8', 'h1-layer8', '01072022095801-200x200-h1-layer8.png', '01072022095801-h1-layer8.png', '35519', '2022-07-01 03:58:01', '2022-07-01 03:58:01'),
(452, 'vegetables', 'vegetables', '01072022115801-600x600-vegetables.png', '01072022115801-vegetables.png', '184224', '2022-07-01 05:58:01', '2022-07-01 05:58:01'),
(453, 'fruit', 'fruit', '01072022120122-600x600-fruit.png', '01072022120122-fruit.png', '177132', '2022-07-01 06:01:22', '2022-07-01 06:01:22'),
(454, 'nutt-and-seeds', 'nutt-and-seeds', '01072022120255-600x600-nutt-and-seeds.png', '01072022120255-nutt-and-seeds.png', '191746', '2022-07-01 06:02:55', '2022-07-01 06:02:55'),
(455, 'bread-and-bakery', 'bread-and-bakery', '01072022120359-600x600-bread-and-bakery.png', '01072022120359-bread-and-bakery.png', '274261', '2022-07-01 06:03:59', '2022-07-01 06:03:59'),
(456, 'juice', 'juice', '01072022120554-600x600-juice.png', '01072022120554-juice.png', '125565', '2022-07-01 06:05:54', '2022-07-01 06:05:54'),
(457, 'fast-food', 'fast-food', '01072022120657-600x600-fast-food.png', '01072022120657-fast-food.png', '245879', '2022-07-01 06:06:57', '2022-07-01 06:06:57'),
(458, 'milk-and-dairy', 'milk-and-dairy', '01072022120745-600x600-milk-and-dairy.png', '01072022120745-milk-and-dairy.png', '166360', '2022-07-01 06:07:45', '2022-07-01 06:07:45'),
(459, 'fresh-meat', 'fresh-meat', '01072022120831-600x600-fresh-meat.png', '01072022120831-fresh-meat.png', '150740', '2022-07-01 06:08:31', '2022-07-01 06:08:31'),
(460, 'fresh-seafood', 'fresh-seafood', '01072022120911-600x600-fresh-seafood.png', '01072022120911-fresh-seafood.png', '158387', '2022-07-01 06:09:11', '2022-07-01 06:09:11'),
(461, 'dry-food', 'dry-food', '01072022121020-600x600-dry-food.png', '01072022121020-dry-food.png', '172173', '2022-07-01 06:10:20', '2022-07-01 06:10:20'),
(462, 'coffee-and-tea', 'coffee-and-tea', '01072022121100-600x600-coffee-and-tea.png', '01072022121100-coffee-and-tea.png', '157391', '2022-07-01 06:11:00', '2022-07-01 06:11:00'),
(463, 'offer-1', 'offer-1', '17072022160150-200x200-offer-1.png', '17072022160150-offer-1.png', '60795', '2022-07-17 10:01:50', '2022-07-17 10:01:50'),
(464, 'offer-2', 'offer-2', '17072022161053-200x200-offer-2.png', '17072022161053-offer-2.png', '52478', '2022-07-17 10:10:53', '2022-07-17 10:10:53'),
(465, 'offer-3', 'offer-3', '17072022161130-200x200-offer-3.png', '17072022161130-offer-3.png', '61968', '2022-07-17 10:11:30', '2022-07-17 10:11:30'),
(466, 'h1_video_bg', 'h1_video_bg', '17072022175837-200x200-h1_video_bg.jpg', '17072022175837-h1_video_bg.jpg', '340793', '2022-07-17 11:58:38', '2022-07-17 11:58:38'),
(467, 'footer-top', 'footer-top', '22072022102835-200x200-footer-top.jpg', '22072022102835-footer-top.jpg', '90298', '2022-07-22 04:28:35', '2022-07-22 04:28:35'),
(490, '12', '12', '31072022063509-200x200-12.jpg', '31072022063509-12.jpg', '41008', '2022-07-31 00:35:09', '2022-07-31 00:35:09'),
(491, '14', '14', '31072022063515-200x200-14.jpg', '31072022063515-14.jpg', '63049', '2022-07-31 00:35:16', '2022-07-31 00:35:16'),
(494, '3', '3', '31072022063546-200x200-3.jpg', '31072022063546-3.jpg', '46379', '2022-07-31 00:35:46', '2022-07-31 00:35:46'),
(496, '5', '5', '31072022063557-200x200-5.jpg', '31072022063557-5.jpg', '46928', '2022-07-31 00:35:57', '2022-07-31 00:35:57'),
(499, '30', '30', '31072022063653-200x200-30.jpg', '31072022063653-30.jpg', '55133', '2022-07-31 00:36:53', '2022-07-31 00:36:53'),
(500, '29', '29', '31072022063710-200x200-29.jpg', '31072022063710-29.jpg', '61829', '2022-07-31 00:37:10', '2022-07-31 00:37:10'),
(503, '10', '10', '31072022063732-200x200-10.jpg', '31072022063732-10.jpg', '35410', '2022-07-31 00:37:32', '2022-07-31 00:37:32'),
(505, '5', '5', '31072022063751-200x200-5.jpg', '31072022063751-5.jpg', '35048', '2022-07-31 00:37:51', '2022-07-31 00:37:51'),
(507, '2', '2', '31072022063809-200x200-2.jpg', '31072022063809-2.jpg', '63377', '2022-07-31 00:38:09', '2022-07-31 00:38:09'),
(510, '11', '11', '31072022063840-200x200-11.jpg', '31072022063840-11.jpg', '86598', '2022-07-31 00:38:40', '2022-07-31 00:38:40'),
(511, '8', '8', '31072022063845-200x200-8.jpg', '31072022063845-8.jpg', '61285', '2022-07-31 00:38:45', '2022-07-31 00:38:45'),
(512, '2', '2', '31072022063900-200x200-2.jpg', '31072022063900-2.jpg', '75753', '2022-07-31 00:39:00', '2022-07-31 00:39:00'),
(516, '9', '9', '31072022063932-200x200-9.jpg', '31072022063932-9.jpg', '68512', '2022-07-31 00:39:32', '2022-07-31 00:39:32'),
(517, '5', '5', '31072022063945-200x200-5.jpg', '31072022063945-5.jpg', '62257', '2022-07-31 00:39:45', '2022-07-31 00:39:45'),
(520, '1', '1', '31072022064011-200x200-1.jpg', '31072022064011-1.jpg', '57186', '2022-07-31 00:40:11', '2022-07-31 00:40:11'),
(521, '4', '4', '31072022064016-200x200-4.jpg', '31072022064016-4.jpg', '46090', '2022-07-31 00:40:16', '2022-07-31 00:40:16'),
(522, '10', '10', '31072022064024-200x200-10.jpg', '31072022064024-10.jpg', '49349', '2022-07-31 00:40:24', '2022-07-31 00:40:24'),
(526, '27', '27', '31072022064110-200x200-27.jpg', '31072022064110-27.jpg', '62831', '2022-07-31 00:41:10', '2022-07-31 00:41:10'),
(528, '10', '10', '31072022064129-200x200-10.jpg', '31072022064129-10.jpg', '75878', '2022-07-31 00:41:29', '2022-07-31 00:41:29'),
(529, '8', '8', '31072022064141-200x200-8.jpg', '31072022064141-8.jpg', '72609', '2022-07-31 00:41:41', '2022-07-31 00:41:41'),
(531, '11', '11', '31072022064207-200x200-11.jpg', '31072022064207-11.jpg', '73004', '2022-07-31 00:42:07', '2022-07-31 00:42:07'),
(532, '5', '5', '31072022064214-200x200-5.jpg', '31072022064214-5.jpg', '77496', '2022-07-31 00:42:14', '2022-07-31 00:42:14'),
(533, '3', '3', '31072022064218-200x200-3.jpg', '31072022064218-3.jpg', '60534', '2022-07-31 00:42:18', '2022-07-31 00:42:18'),
(536, '7', '7', '01082022172357-400x400-7.jpg', '01082022172357-7.jpg', '56749', '2022-08-01 11:23:57', '2022-08-01 11:23:57'),
(537, '18', '18', '01082022172527-400x400-18.jpg', '01082022172527-18.jpg', '55772', '2022-08-01 11:25:27', '2022-08-01 11:25:27'),
(538, '1', '1', '01082022172600-400x400-1.jpg', '01082022172600-1.jpg', '54636', '2022-08-01 11:26:00', '2022-08-01 11:26:00'),
(539, '24', '24', '01082022172650-400x400-24.jpg', '01082022172650-24.jpg', '62342', '2022-08-01 11:26:51', '2022-08-01 11:26:51'),
(540, '7', '7', '01082022172712-400x400-7.jpg', '01082022172712-7.jpg', '66843', '2022-08-01 11:27:12', '2022-08-01 11:27:12'),
(541, '3', '3', '01082022172737-400x400-3.jpg', '01082022172737-3.jpg', '75007', '2022-08-01 11:27:37', '2022-08-01 11:27:37'),
(542, '3', '3', '01082022172802-400x400-3.jpg', '01082022172802-3.jpg', '43906', '2022-08-01 11:28:03', '2022-08-01 11:28:03'),
(543, '11', '11', '01082022172825-400x400-11.jpg', '01082022172825-11.jpg', '58720', '2022-08-01 11:28:25', '2022-08-01 11:28:25'),
(544, '9', '9', '01082022172846-400x400-9.jpg', '01082022172846-9.jpg', '65534', '2022-08-01 11:28:46', '2022-08-01 11:28:46'),
(545, '1', '1', '01082022172932-400x400-1.jpg', '01082022172932-1.jpg', '59010', '2022-08-01 11:29:32', '2022-08-01 11:29:32'),
(546, '8', '8', '01082022172956-400x400-8.jpg', '01082022172956-8.jpg', '70583', '2022-08-01 11:29:56', '2022-08-01 11:29:56'),
(547, '17', '17', '01082022173019-400x400-17.jpg', '01082022173019-17.jpg', '59888', '2022-08-01 11:30:19', '2022-08-01 11:30:19'),
(548, '9', '9', '01082022173052-400x400-9.jpg', '01082022173052-9.jpg', '69396', '2022-08-01 11:30:52', '2022-08-01 11:30:52'),
(549, '4', '4', '01082022173115-400x400-4.jpg', '01082022173115-4.jpg', '65766', '2022-08-01 11:31:15', '2022-08-01 11:31:15'),
(550, '1', '1', '01082022173141-400x400-1.jpg', '01082022173141-1.jpg', '65230', '2022-08-01 11:31:41', '2022-08-01 11:31:41'),
(551, '4', '4', '01082022173225-400x400-4.jpg', '01082022173225-4.jpg', '33162', '2022-08-01 11:32:25', '2022-08-01 11:32:25'),
(552, '1', '1', '01082022173248-400x400-1.jpg', '01082022173248-1.jpg', '51039', '2022-08-01 11:32:48', '2022-08-01 11:32:48'),
(553, '14', '14', '01082022173741-400x400-14.jpg', '01082022173741-14.jpg', '43219', '2022-08-01 11:37:41', '2022-08-01 11:37:41'),
(555, '4', '4', '01082022174052-400x400-4.jpg', '01082022174052-4.jpg', '61634', '2022-08-01 11:40:52', '2022-08-01 11:40:52'),
(556, '18', '18', '02082022143408-400x400-18.jpg', '02082022143408-18.jpg', '44654', '2022-08-02 08:34:08', '2022-08-02 08:34:08'),
(557, '8', '8', '02082022143457-400x400-8.jpg', '02082022143457-8.jpg', '46149', '2022-08-02 08:34:57', '2022-08-02 08:34:57'),
(558, '5', '5', '02082022143530-400x400-5.jpg', '02082022143530-5.jpg', '51760', '2022-08-02 08:35:30', '2022-08-02 08:35:30'),
(560, '1', '1', '02082022143652-400x400-1.jpg', '02082022143652-1.jpg', '57333', '2022-08-02 08:36:52', '2022-08-02 08:36:52'),
(561, '6', '6', '02082022143742-400x400-6.jpg', '02082022143742-6.jpg', '39486', '2022-08-02 08:37:42', '2022-08-02 08:37:42'),
(562, '4', '4', '02082022143827-400x400-4.jpg', '02082022143827-4.jpg', '42217', '2022-08-02 08:38:27', '2022-08-02 08:38:27'),
(563, '2', '2', '02082022143908-400x400-2.jpg', '02082022143908-2.jpg', '41853', '2022-08-02 08:39:08', '2022-08-02 08:39:08'),
(564, '9', '9', '02082022143955-400x400-9.jpg', '02082022143955-9.jpg', '31239', '2022-08-02 08:39:55', '2022-08-02 08:39:55'),
(565, '4', '4', '02082022144027-400x400-4.jpg', '02082022144027-4.jpg', '35467', '2022-08-02 08:40:27', '2022-08-02 08:40:27'),
(566, '5', '5', '02082022144140-400x400-5.jpg', '02082022144140-5.jpg', '41636', '2022-08-02 08:41:40', '2022-08-02 08:41:40'),
(567, '6', '6', '02082022144221-400x400-6.jpg', '02082022144221-6.jpg', '32997', '2022-08-02 08:42:21', '2022-08-02 08:42:21'),
(568, '4', '4', '02082022144310-400x400-4.jpg', '02082022144310-4.jpg', '38297', '2022-08-02 08:43:10', '2022-08-02 08:43:10'),
(569, '3', '3', '02082022144346-400x400-3.jpg', '02082022144346-3.jpg', '40960', '2022-08-02 08:43:46', '2022-08-02 08:43:46'),
(572, '26', '26', '05082022165653-400x400-26.jpg', '05082022165653-26.jpg', '59629', '2022-08-05 10:56:53', '2022-08-05 10:56:53'),
(578, '1-garlic', '1-garlic', '18082022123324-600x600-1-garlic.jpg', '18082022123324-1-garlic.jpg', '69229', '2022-08-18 06:33:24', '2022-08-18 06:33:24'),
(579, '2-garlic', '2-garlic', '18082022123333-600x600-2-garlic.jpg', '18082022123333-2-garlic.jpg', '71703', '2022-08-18 06:33:33', '2022-08-18 06:33:33'),
(580, '3-garlic', '3-garlic', '18082022123337-600x600-3-garlic.jpg', '18082022123337-3-garlic.jpg', '69346', '2022-08-18 06:33:37', '2022-08-18 06:33:37'),
(581, '4-garlic', '4-garlic', '18082022123536-600x600-4-garlic.jpg', '18082022123536-4-garlic.jpg', '69533', '2022-08-18 06:35:36', '2022-08-18 06:35:36'),
(582, '5-garlic', '5-garlic', '18082022123541-600x600-5-garlic.jpg', '18082022123541-5-garlic.jpg', '61794', '2022-08-18 06:35:41', '2022-08-18 06:35:41'),
(583, '6-garlic', '6-garlic', '18082022123544-600x600-6-garlic.jpg', '18082022123544-6-garlic.jpg', '71937', '2022-08-18 06:35:44', '2022-08-18 06:35:44'),
(584, '1-red-pepper', '1-red-pepper', '18082022135056-600x600-1-red-pepper.jpg', '18082022135056-1-red-pepper.jpg', '67020', '2022-08-18 07:50:56', '2022-08-18 07:50:56'),
(585, '2-red-pepper', '2-red-pepper', '18082022135100-600x600-2-red-pepper.jpg', '18082022135100-2-red-pepper.jpg', '70681', '2022-08-18 07:51:00', '2022-08-18 07:51:00'),
(586, '3-red-pepper', '3-red-pepper', '18082022135103-600x600-3-red-pepper.jpg', '18082022135103-3-red-pepper.jpg', '83263', '2022-08-18 07:51:03', '2022-08-18 07:51:03'),
(587, '4-red-pepper', '4-red-pepper', '18082022135106-600x600-4-red-pepper.jpg', '18082022135106-4-red-pepper.jpg', '97895', '2022-08-18 07:51:06', '2022-08-18 07:51:06'),
(588, '5-red-pepper', '5-red-pepper', '18082022135110-600x600-5-red-pepper.jpg', '18082022135110-5-red-pepper.jpg', '85304', '2022-08-18 07:51:10', '2022-08-18 07:51:10'),
(589, '6-red-pepper', '6-red-pepper', '18082022135113-600x600-6-red-pepper.jpg', '18082022135113-6-red-pepper.jpg', '86126', '2022-08-18 07:51:13', '2022-08-18 07:51:13'),
(590, 'home1-bg-slider', 'home1-bg-slider', '18082022135936-400x400-home1-bg-slider.jpg', '18082022135936-home1-bg-slider.jpg', '46631', '2022-08-18 07:59:36', '2022-08-18 07:59:36'),
(591, 'home1-bg-offer', 'home1-bg-offer', '18082022140338-400x400-home1-bg-offer.jpg', '18082022140338-home1-bg-offer.jpg', '39542', '2022-08-18 08:03:38', '2022-08-18 08:03:38'),
(592, 'footer_bg', 'footer_bg', '18082022140802-400x400-footer_bg.jpg', '18082022140802-footer_bg.jpg', '39542', '2022-08-18 08:08:02', '2022-08-18 08:08:02'),
(593, '1-potato', '1-potato', '18082022140944-600x600-1-potato.jpg', '18082022140944-1-potato.jpg', '64023', '2022-08-18 08:09:44', '2022-08-18 08:09:44'),
(594, '2-potato', '2-potato', '18082022140948-600x600-2-potato.jpg', '18082022140948-2-potato.jpg', '79022', '2022-08-18 08:09:48', '2022-08-18 08:09:48'),
(595, '3-potato', '3-potato', '18082022140954-600x600-3-potato.jpg', '18082022140954-3-potato.jpg', '78839', '2022-08-18 08:09:54', '2022-08-18 08:09:54'),
(596, '4-potato', '4-potato', '18082022140957-600x600-4-potato.jpg', '18082022140957-4-potato.jpg', '78735', '2022-08-18 08:09:57', '2022-08-18 08:09:57'),
(597, '5-potato', '5-potato', '18082022141000-600x600-5-potato.jpg', '18082022141000-5-potato.jpg', '69201', '2022-08-18 08:10:00', '2022-08-18 08:10:00'),
(598, '6-potato', '6-potato', '18082022141004-600x600-6-potato.jpg', '18082022141004-6-potato.jpg', '97305', '2022-08-18 08:10:04', '2022-08-18 08:10:04'),
(599, '7-potato', '7-potato', '18082022141007-600x600-7-potato.jpg', '18082022141007-7-potato.jpg', '99215', '2022-08-18 08:10:08', '2022-08-18 08:10:08'),
(600, '1-lotus-seeds', '1-lotus-seeds', '18082022150003-600x600-1-lotus-seeds.jpg', '18082022150003-1-lotus-seeds.jpg', '76427', '2022-08-18 09:00:03', '2022-08-18 09:00:03'),
(601, '2-lotus-seeds', '2-lotus-seeds', '18082022150007-600x600-2-lotus-seeds.jpg', '18082022150007-2-lotus-seeds.jpg', '62658', '2022-08-18 09:00:07', '2022-08-18 09:00:07'),
(602, '3-lotus-seeds', '3-lotus-seeds', '18082022150010-600x600-3-lotus-seeds.jpg', '18082022150010-3-lotus-seeds.jpg', '72466', '2022-08-18 09:00:10', '2022-08-18 09:00:10'),
(603, '4-lotus-seeds', '4-lotus-seeds', '18082022150026-600x600-4-lotus-seeds.jpg', '18082022150026-4-lotus-seeds.jpg', '57106', '2022-08-18 09:00:26', '2022-08-18 09:00:26'),
(604, '5-lotus-seeds', '5-lotus-seeds', '18082022150029-600x600-5-lotus-seeds.jpg', '18082022150029-5-lotus-seeds.jpg', '83364', '2022-08-18 09:00:29', '2022-08-18 09:00:29'),
(605, '6-lotus-seeds', '6-lotus-seeds', '18082022150032-600x600-6-lotus-seeds.jpg', '18082022150032-6-lotus-seeds.jpg', '86399', '2022-08-18 09:00:32', '2022-08-18 09:00:32'),
(606, '7-lotus-seeds', '7-lotus-seeds', '18082022150036-600x600-7-lotus-seeds.jpg', '18082022150036-7-lotus-seeds.jpg', '75138', '2022-08-18 09:00:36', '2022-08-18 09:00:36'),
(607, '1-pistachio', '1-pistachio', '18082022151446-600x600-1-pistachio.jpg', '18082022151446-1-pistachio.jpg', '77898', '2022-08-18 09:14:46', '2022-08-18 09:14:46'),
(608, '2-pistachio', '2-pistachio', '18082022151450-600x600-2-pistachio.jpg', '18082022151450-2-pistachio.jpg', '111159', '2022-08-18 09:14:50', '2022-08-18 09:14:50'),
(609, '3-pistachio', '3-pistachio', '18082022151452-600x600-3-pistachio.jpg', '18082022151452-3-pistachio.jpg', '79510', '2022-08-18 09:14:53', '2022-08-18 09:14:53'),
(610, '4-pistachio', '4-pistachio', '18082022151457-600x600-4-pistachio.jpg', '18082022151457-4-pistachio.jpg', '74206', '2022-08-18 09:14:57', '2022-08-18 09:14:57'),
(611, '5-pistachio', '5-pistachio', '18082022151500-600x600-5-pistachio.jpg', '18082022151500-5-pistachio.jpg', '77471', '2022-08-18 09:15:00', '2022-08-18 09:15:00'),
(612, '6-pistachio', '6-pistachio', '18082022151502-600x600-6-pistachio.jpg', '18082022151502-6-pistachio.jpg', '92185', '2022-08-18 09:15:02', '2022-08-18 09:15:02'),
(613, '7-pistachio', '7-pistachio', '18082022151504-600x600-7-pistachio.jpg', '18082022151504-7-pistachio.jpg', '70181', '2022-08-18 09:15:04', '2022-08-18 09:15:04'),
(614, '1-walnuts', '1-walnuts', '18082022153802-600x600-1-walnuts.jpg', '18082022153802-1-walnuts.jpg', '98086', '2022-08-18 09:38:02', '2022-08-18 09:38:02'),
(615, '2-walnuts', '2-walnuts', '18082022153806-600x600-2-walnuts.jpg', '18082022153806-2-walnuts.jpg', '83638', '2022-08-18 09:38:06', '2022-08-18 09:38:06'),
(616, '3-walnuts', '3-walnuts', '18082022153808-600x600-3-walnuts.jpg', '18082022153808-3-walnuts.jpg', '83992', '2022-08-18 09:38:08', '2022-08-18 09:38:08'),
(617, '4-walnuts', '4-walnuts', '18082022153810-600x600-4-walnuts.jpg', '18082022153810-4-walnuts.jpg', '104663', '2022-08-18 09:38:10', '2022-08-18 09:38:10'),
(618, '5-walnuts', '5-walnuts', '18082022153812-600x600-5-walnuts.jpg', '18082022153812-5-walnuts.jpg', '67250', '2022-08-18 09:38:12', '2022-08-18 09:38:12'),
(619, '1-milk-splash', '1-milk-splash', '18082022155122-600x600-1-milk-splash.jpg', '18082022155122-1-milk-splash.jpg', '51650', '2022-08-18 09:51:22', '2022-08-18 09:51:22'),
(620, '2-milk-splash', '2-milk-splash', '18082022155126-600x600-2-milk-splash.jpg', '18082022155126-2-milk-splash.jpg', '54281', '2022-08-18 09:51:26', '2022-08-18 09:51:26'),
(621, '3-milk-splash', '3-milk-splash', '18082022155129-600x600-3-milk-splash.jpg', '18082022155129-3-milk-splash.jpg', '54653', '2022-08-18 09:51:29', '2022-08-18 09:51:29'),
(623, '5-milk-splash', '5-milk-splash', '18082022155136-600x600-5-milk-splash.jpg', '18082022155136-5-milk-splash.jpg', '53022', '2022-08-18 09:51:36', '2022-08-18 09:51:36'),
(624, '4-milk-splash', '4-milk-splash', '18082022155447-600x600-4-milk-splash.jpg', '18082022155447-4-milk-splash.jpg', '53873', '2022-08-18 09:54:47', '2022-08-18 09:54:47'),
(625, '1-cheese', '1-cheese', '18082022171458-600x600-1-cheese.jpg', '18082022171458-1-cheese.jpg', '62012', '2022-08-18 11:14:58', '2022-08-18 11:14:58'),
(626, '2-cheese', '2-cheese', '18082022171502-600x600-2-cheese.jpg', '18082022171502-2-cheese.jpg', '63404', '2022-08-18 11:15:02', '2022-08-18 11:15:02'),
(627, '3-cheese', '3-cheese', '18082022171507-600x600-3-cheese.jpg', '18082022171507-3-cheese.jpg', '95590', '2022-08-18 11:15:07', '2022-08-18 11:15:07'),
(628, '4-cheese', '4-cheese', '18082022171511-600x600-4-cheese.jpg', '18082022171511-4-cheese.jpg', '76437', '2022-08-18 11:15:11', '2022-08-18 11:15:11'),
(629, '5-cheese', '5-cheese', '18082022171514-600x600-5-cheese.jpg', '18082022171514-5-cheese.jpg', '71338', '2022-08-18 11:15:14', '2022-08-18 11:15:14'),
(631, '6-cheese', '6-cheese', '18082022171602-600x600-6-cheese.jpg', '18082022171602-6-cheese.jpg', '86087', '2022-08-18 11:16:02', '2022-08-18 11:16:02'),
(632, '7-cheese', '7-cheese', '18082022171605-600x600-7-cheese.jpg', '18082022171605-7-cheese.jpg', '84398', '2022-08-18 11:16:05', '2022-08-18 11:16:05'),
(633, '1-dairy-products', '1-dairy-products', '18082022174441-600x600-1-dairy-products.jpg', '18082022174441-1-dairy-products.jpg', '69181', '2022-08-18 11:44:41', '2022-08-18 11:44:41'),
(634, '2-dairy-products', '2-dairy-products', '18082022174445-600x600-2-dairy-products.jpg', '18082022174445-2-dairy-products.jpg', '77043', '2022-08-18 11:44:45', '2022-08-18 11:44:45'),
(635, '3-dairy-products', '3-dairy-products', '18082022174448-600x600-3-dairy-products.jpg', '18082022174448-3-dairy-products.jpg', '85353', '2022-08-18 11:44:48', '2022-08-18 11:44:48'),
(636, '4-dairy-products', '4-dairy-products', '18082022174452-600x600-4-dairy-products.jpg', '18082022174452-4-dairy-products.jpg', '68236', '2022-08-18 11:44:52', '2022-08-18 11:44:52'),
(637, '5-dairy-products', '5-dairy-products', '18082022174457-600x600-5-dairy-products.jpg', '18082022174457-5-dairy-products.jpg', '97186', '2022-08-18 11:44:57', '2022-08-18 11:44:57'),
(638, '6-dairy-products', '6-dairy-products', '18082022174502-600x600-6-dairy-products.jpg', '18082022174502-6-dairy-products.jpg', '68351', '2022-08-18 11:45:02', '2022-08-18 11:45:02'),
(639, '6-fruit-juice', '6-fruit-juice', '18082022175722-600x600-6-fruit-juice.jpg', '18082022175722-6-fruit-juice.jpg', '76520', '2022-08-18 11:57:22', '2022-08-18 11:57:22'),
(640, '5-fruit-juice', '5-fruit-juice', '18082022175726-600x600-5-fruit-juice.jpg', '18082022175726-5-fruit-juice.jpg', '84859', '2022-08-18 11:57:26', '2022-08-18 11:57:26'),
(641, '4-fruit-juice', '4-fruit-juice', '18082022175730-600x600-4-fruit-juice.jpg', '18082022175730-4-fruit-juice.jpg', '71046', '2022-08-18 11:57:30', '2022-08-18 11:57:30'),
(642, '3-fruit-juice', '3-fruit-juice', '18082022175734-600x600-3-fruit-juice.jpg', '18082022175734-3-fruit-juice.jpg', '76620', '2022-08-18 11:57:34', '2022-08-18 11:57:34'),
(643, '2-fruit-juice', '2-fruit-juice', '18082022175917-600x600-2-fruit-juice.jpg', '18082022175917-2-fruit-juice.jpg', '76224', '2022-08-18 11:59:17', '2022-08-18 11:59:17'),
(644, '2-pomegranate-juice', '2-pomegranate-juice', '18082022180759-600x600-2-pomegranate-juice.jpg', '18082022180759-2-pomegranate-juice.jpg', '91928', '2022-08-18 12:07:59', '2022-08-18 12:07:59'),
(645, '1-pomegranate-juice', '1-pomegranate-juice', '18082022180809-600x600-1-pomegranate-juice.jpg', '18082022180809-1-pomegranate-juice.jpg', '78788', '2022-08-18 12:08:09', '2022-08-18 12:08:09'),
(646, '4-pomegranate-juice', '4-pomegranate-juice', '18082022180824-600x600-4-pomegranate-juice.jpg', '18082022180824-4-pomegranate-juice.jpg', '93754', '2022-08-18 12:08:24', '2022-08-18 12:08:24'),
(647, '3-pomegranate-juice', '3-pomegranate-juice', '18082022180829-600x600-3-pomegranate-juice.jpg', '18082022180829-3-pomegranate-juice.jpg', '84217', '2022-08-18 12:08:29', '2022-08-18 12:08:29'),
(648, '1-cocktail-soft-drink', '1-cocktail-soft-drink', '19082022031029-600x600-1-cocktail-soft-drink.jpg', '19082022031029-1-cocktail-soft-drink.jpg', '65934', '2022-08-18 21:10:29', '2022-08-18 21:10:29'),
(649, '2-cocktail-soft-drink', '2-cocktail-soft-drink', '19082022031032-600x600-2-cocktail-soft-drink.jpg', '19082022031032-2-cocktail-soft-drink.jpg', '68499', '2022-08-18 21:10:32', '2022-08-18 21:10:32'),
(650, '3-cocktail-soft-drink', '3-cocktail-soft-drink', '19082022031036-600x600-3-cocktail-soft-drink.jpg', '19082022031036-3-cocktail-soft-drink.jpg', '96044', '2022-08-18 21:10:36', '2022-08-18 21:10:36'),
(651, '4-cocktail-soft-drink', '4-cocktail-soft-drink', '19082022031039-600x600-4-cocktail-soft-drink.jpg', '19082022031039-4-cocktail-soft-drink.jpg', '69707', '2022-08-18 21:10:39', '2022-08-18 21:10:39'),
(652, '1-snow-crab', '1-snow-crab', '19082022032359-600x600-1-snow-crab.jpg', '19082022032359-1-snow-crab.jpg', '119920', '2022-08-18 21:23:59', '2022-08-18 21:23:59'),
(653, '2-snow-crab', '2-snow-crab', '19082022032402-600x600-2-snow-crab.jpg', '19082022032402-2-snow-crab.jpg', '107453', '2022-08-18 21:24:02', '2022-08-18 21:24:02'),
(654, '3-snow-crab', '3-snow-crab', '19082022032405-600x600-3-snow-crab.jpg', '19082022032405-3-snow-crab.jpg', '87903', '2022-08-18 21:24:05', '2022-08-18 21:24:05'),
(655, '4-snow-crab', '4-snow-crab', '19082022032408-600x600-4-snow-crab.jpg', '19082022032408-4-snow-crab.jpg', '76649', '2022-08-18 21:24:08', '2022-08-18 21:24:08'),
(656, '1-crayfish', '1-crayfish', '19082022035247-600x600-1-crayfish.jpg', '19082022035247-1-crayfish.jpg', '92013', '2022-08-18 21:52:47', '2022-08-18 21:52:47'),
(657, '2-crayfish', '2-crayfish', '19082022035252-600x600-2-crayfish.jpg', '19082022035252-2-crayfish.jpg', '78224', '2022-08-18 21:52:52', '2022-08-18 21:52:52'),
(658, '3-crayfish', '3-crayfish', '19082022035255-600x600-3-crayfish.jpg', '19082022035255-3-crayfish.jpg', '85027', '2022-08-18 21:52:55', '2022-08-18 21:52:55'),
(659, '4-crayfish', '4-crayfish', '19082022035258-600x600-4-crayfish.jpg', '19082022035258-4-crayfish.jpg', '80280', '2022-08-18 21:52:58', '2022-08-18 21:52:58'),
(660, '1-squid', '1-squid', '19082022040651-600x600-1-squid.jpg', '19082022040651-1-squid.jpg', '68159', '2022-08-18 22:06:51', '2022-08-18 22:06:51'),
(661, '2-squid', '2-squid', '19082022040654-600x600-2-squid.jpg', '19082022040654-2-squid.jpg', '63012', '2022-08-18 22:06:54', '2022-08-18 22:06:54'),
(662, '3-squid', '3-squid', '19082022040657-600x600-3-squid.jpg', '19082022040657-3-squid.jpg', '68586', '2022-08-18 22:06:57', '2022-08-18 22:06:57'),
(663, '4-squid', '4-squid', '19082022040700-600x600-4-squid.jpg', '19082022040700-4-squid.jpg', '91243', '2022-08-18 22:07:00', '2022-08-18 22:07:00'),
(664, '1-chicken', '1-chicken', '19082022041622-400x400-1-chicken.jpg', '19082022041622-1-chicken.jpg', '68397', '2022-08-18 22:16:22', '2022-08-18 22:16:22'),
(665, '2-chicken', '2-chicken', '19082022041625-400x400-2-chicken.jpg', '19082022041625-2-chicken.jpg', '69711', '2022-08-18 22:16:25', '2022-08-18 22:16:25'),
(666, '3-chicken', '3-chicken', '19082022041628-400x400-3-chicken.jpg', '19082022041628-3-chicken.jpg', '70607', '2022-08-18 22:16:28', '2022-08-18 22:16:28'),
(667, '4-chicken', '4-chicken', '19082022041949-600x600-4-chicken.jpg', '19082022041949-4-chicken.jpg', '79294', '2022-08-18 22:19:49', '2022-08-18 22:19:49'),
(668, '1-rack-of-lamb', '1-rack-of-lamb', '19082022042756-600x600-1-rack-of-lamb.jpg', '19082022042756-1-rack-of-lamb.jpg', '87603', '2022-08-18 22:27:56', '2022-08-18 22:27:56'),
(669, '2-rack-of-lamb', '2-rack-of-lamb', '19082022042800-600x600-2-rack-of-lamb.jpg', '19082022042800-2-rack-of-lamb.jpg', '69080', '2022-08-18 22:28:00', '2022-08-18 22:28:00'),
(670, '3-rack-of-lamb', '3-rack-of-lamb', '19082022042803-600x600-3-rack-of-lamb.jpg', '19082022042803-3-rack-of-lamb.jpg', '96447', '2022-08-18 22:28:03', '2022-08-18 22:28:03'),
(671, '4-rack-of-lamb', '4-rack-of-lamb', '19082022042805-600x600-4-rack-of-lamb.jpg', '19082022042805-4-rack-of-lamb.jpg', '71427', '2022-08-18 22:28:06', '2022-08-18 22:28:06'),
(672, '2-chicken', '2-chicken', '19082022043756-600x600-2-chicken.jpg', '19082022043756-2-chicken.jpg', '80055', '2022-08-18 22:37:57', '2022-08-18 22:37:57'),
(673, '4-chicken', '4-chicken', '19082022043759-600x600-4-chicken.jpg', '19082022043759-4-chicken.jpg', '91099', '2022-08-18 22:37:59', '2022-08-18 22:37:59'),
(674, '1-raw-chicken-legs', '1-raw-chicken-legs', '19082022043919-600x600-1-raw-chicken-legs.jpg', '19082022043919-1-raw-chicken-legs.jpg', '75564', '2022-08-18 22:39:19', '2022-08-18 22:39:19'),
(675, '3-raw-chicken-legs', '3-raw-chicken-legs', '19082022043922-600x600-3-raw-chicken-legs.jpg', '19082022043922-3-raw-chicken-legs.jpg', '124101', '2022-08-18 22:39:23', '2022-08-18 22:39:23'),
(676, '1-blackberry', '1-blackberry', '19082022044622-400x400-1-blackberry.jpg', '19082022044622-1-blackberry.jpg', '84951', '2022-08-18 22:46:22', '2022-08-18 22:46:22'),
(677, '2-blackberry', '2-blackberry', '19082022044625-400x400-2-blackberry.jpg', '19082022044625-2-blackberry.jpg', '80751', '2022-08-18 22:46:25', '2022-08-18 22:46:25'),
(678, '3-blackberry', '3-blackberry', '19082022044628-400x400-3-blackberry.jpg', '19082022044628-3-blackberry.jpg', '89988', '2022-08-18 22:46:28', '2022-08-18 22:46:28'),
(679, '1-passion', '1-passion', '19082022050242-600x600-1-passion.jpg', '19082022050242-1-passion.jpg', '108207', '2022-08-18 23:02:42', '2022-08-18 23:02:42'),
(680, '2-passion', '2-passion', '19082022050245-600x600-2-passion.jpg', '19082022050245-2-passion.jpg', '105597', '2022-08-18 23:02:46', '2022-08-18 23:02:46'),
(681, '3-passion', '3-passion', '19082022050248-600x600-3-passion.jpg', '19082022050248-3-passion.jpg', '92662', '2022-08-18 23:02:48', '2022-08-18 23:02:48'),
(682, '4-passion', '4-passion', '19082022050251-600x600-4-passion.jpg', '19082022050251-4-passion.jpg', '87726', '2022-08-18 23:02:51', '2022-08-18 23:02:51'),
(683, '1-peach', '1-peach', '19082022051624-600x600-1-peach.jpg', '19082022051624-1-peach.jpg', '92705', '2022-08-18 23:16:24', '2022-08-18 23:16:24'),
(684, '2-peach', '2-peach', '19082022051627-600x600-2-peach.jpg', '19082022051627-2-peach.jpg', '84713', '2022-08-18 23:16:27', '2022-08-18 23:16:27'),
(685, '3-peach', '3-peach', '19082022051631-600x600-3-peach.jpg', '19082022051631-3-peach.jpg', '83777', '2022-08-18 23:16:31', '2022-08-18 23:16:31'),
(686, '4-peach', '4-peach', '19082022051634-600x600-4-peach.jpg', '19082022051634-4-peach.jpg', '90291', '2022-08-18 23:16:34', '2022-08-18 23:16:34'),
(687, '1-pizza', '1-pizza', '19082022052814-600x600-1-pizza.jpg', '19082022052814-1-pizza.jpg', '93117', '2022-08-18 23:28:14', '2022-08-18 23:28:14'),
(688, '2-pizza', '2-pizza', '19082022052817-600x600-2-pizza.jpg', '19082022052817-2-pizza.jpg', '104220', '2022-08-18 23:28:17', '2022-08-18 23:28:17'),
(689, '3-pizza', '3-pizza', '19082022052820-600x600-3-pizza.jpg', '19082022052820-3-pizza.jpg', '100579', '2022-08-18 23:28:20', '2022-08-18 23:28:20'),
(690, '4-pizza', '4-pizza', '19082022052823-600x600-4-pizza.jpg', '19082022052823-4-pizza.jpg', '89992', '2022-08-18 23:28:23', '2022-08-18 23:28:23'),
(691, '1-chicken-wings', '1-chicken-wings', '19082022054547-600x600-1-chicken-wings.jpg', '19082022054547-1-chicken-wings.jpg', '100222', '2022-08-18 23:45:47', '2022-08-18 23:45:47'),
(692, '2-chicken-wings', '2-chicken-wings', '19082022054551-600x600-2-chicken-wings.jpg', '19082022054551-2-chicken-wings.jpg', '77458', '2022-08-18 23:45:51', '2022-08-18 23:45:51'),
(693, '3-chicken-wings', '3-chicken-wings', '19082022054554-600x600-3-chicken-wings.jpg', '19082022054554-3-chicken-wings.jpg', '83574', '2022-08-18 23:45:54', '2022-08-18 23:45:54'),
(694, '4-chicken-wings', '4-chicken-wings', '19082022054557-600x600-4-chicken-wings.jpg', '19082022054557-4-chicken-wings.jpg', '82045', '2022-08-18 23:45:57', '2022-08-18 23:45:57'),
(697, '1-sandwich', '1-sandwich', '19082022093540-600x600-1-sandwich.jpg', '19082022093540-1-sandwich.jpg', '121445', '2022-08-19 03:35:40', '2022-08-19 03:35:40'),
(698, '2-sandwich', '2-sandwich', '19082022093545-600x600-2-sandwich.jpg', '19082022093545-2-sandwich.jpg', '112183', '2022-08-19 03:35:45', '2022-08-19 03:35:45'),
(699, '3-sandwich', '3-sandwich', '19082022093548-600x600-3-sandwich.jpg', '19082022093548-3-sandwich.jpg', '92642', '2022-08-19 03:35:49', '2022-08-19 03:35:49'),
(700, '4-sandwich', '4-sandwich', '19082022093552-600x600-4-sandwich.jpg', '19082022093552-4-sandwich.jpg', '97780', '2022-08-19 03:35:52', '2022-08-19 03:35:52'),
(701, '5-sandwich', '5-sandwich', '19082022093555-600x600-5-sandwich.jpg', '19082022093555-5-sandwich.jpg', '74895', '2022-08-19 03:35:55', '2022-08-19 03:35:55'),
(702, '1-mixed-dry-fruits', '1-mixed-dry-fruits', '19082022094844-400x400-1-mixed-dry-fruits.jpg', '19082022094844-1-mixed-dry-fruits.jpg', '100759', '2022-08-19 03:48:45', '2022-08-19 03:48:45'),
(703, '2-mixed-dry-fruits', '2-mixed-dry-fruits', '19082022094855-400x400-2-mixed-dry-fruits.jpg', '19082022094855-2-mixed-dry-fruits.jpg', '76614', '2022-08-19 03:48:55', '2022-08-19 03:48:55'),
(704, '3-mixed-dry-fruits', '3-mixed-dry-fruits', '19082022094858-400x400-3-mixed-dry-fruits.jpg', '19082022094858-3-mixed-dry-fruits.jpg', '81772', '2022-08-19 03:48:58', '2022-08-19 03:48:58'),
(705, '4-mixed-dry-fruits', '4-mixed-dry-fruits', '19082022094902-400x400-4-mixed-dry-fruits.jpg', '19082022094902-4-mixed-dry-fruits.jpg', '75634', '2022-08-19 03:49:02', '2022-08-19 03:49:02'),
(706, '1-cashews', '1-cashews', '19082022100202-400x400-1-cashews.jpg', '19082022100202-1-cashews.jpg', '72320', '2022-08-19 04:02:02', '2022-08-19 04:02:02'),
(707, '2-cashews', '2-cashews', '19082022100205-400x400-2-cashews.jpg', '19082022100205-2-cashews.jpg', '78948', '2022-08-19 04:02:05', '2022-08-19 04:02:05'),
(708, '3-cashews', '3-cashews', '19082022100208-400x400-3-cashews.jpg', '19082022100208-3-cashews.jpg', '70591', '2022-08-19 04:02:08', '2022-08-19 04:02:08'),
(709, '1-almond-badam', '1-almond-badam', '19082022100759-400x400-1-almond-badam.jpg', '19082022100759-1-almond-badam.jpg', '76824', '2022-08-19 04:07:59', '2022-08-19 04:07:59'),
(710, '2-almond-badam', '2-almond-badam', '19082022100801-400x400-2-almond-badam.jpg', '19082022100801-2-almond-badam.jpg', '73805', '2022-08-19 04:08:01', '2022-08-19 04:08:01'),
(711, '3-almond-badam', '3-almond-badam', '19082022100804-400x400-3-almond-badam.jpg', '19082022100804-3-almond-badam.jpg', '90721', '2022-08-19 04:08:04', '2022-08-19 04:08:04'),
(712, '1-herbal-tea', '1-herbal-tea', '19082022101914-600x600-1-herbal-tea.jpg', '19082022101914-1-herbal-tea.jpg', '64659', '2022-08-19 04:19:15', '2022-08-19 04:19:15'),
(713, '2-herbal-tea', '2-herbal-tea', '19082022101918-600x600-2-herbal-tea.jpg', '19082022101918-2-herbal-tea.jpg', '65182', '2022-08-19 04:19:18', '2022-08-19 04:19:18'),
(714, '3-herbal-tea', '3-herbal-tea', '19082022101920-600x600-3-herbal-tea.jpg', '19082022101920-3-herbal-tea.jpg', '62257', '2022-08-19 04:19:20', '2022-08-19 04:19:20'),
(715, '1-coffee-latte', '1-coffee-latte', '19082022102541-600x600-1-coffee-latte.jpg', '19082022102541-1-coffee-latte.jpg', '71705', '2022-08-19 04:25:41', '2022-08-19 04:25:41'),
(716, '2-coffee-latte', '2-coffee-latte', '19082022102545-600x600-2-coffee-latte.jpg', '19082022102545-2-coffee-latte.jpg', '64828', '2022-08-19 04:25:45', '2022-08-19 04:25:45'),
(717, '1-green-tea', '1-green-tea', '19082022103010-400x400-1-green-tea.jpg', '19082022103010-1-green-tea.jpg', '81500', '2022-08-19 04:30:10', '2022-08-19 04:30:10'),
(718, '2-green-tea', '2-green-tea', '19082022103014-400x400-2-green-tea.jpg', '19082022103014-2-green-tea.jpg', '80422', '2022-08-19 04:30:14', '2022-08-19 04:30:14'),
(719, '3-green-tea', '3-green-tea', '19082022103017-400x400-3-green-tea.jpg', '19082022103017-3-green-tea.jpg', '67458', '2022-08-19 04:30:17', '2022-08-19 04:30:17'),
(720, '2-pastry', '2-pastry', '19082022103844-400x400-2-pastry.jpg', '19082022103844-2-pastry.jpg', '76709', '2022-08-19 04:38:44', '2022-08-19 04:38:44'),
(721, '1-pastry', '1-pastry', '19082022103847-400x400-1-pastry.jpg', '19082022103847-1-pastry.jpg', '63752', '2022-08-19 04:38:47', '2022-08-19 04:38:47'),
(722, '3-pastry', '3-pastry', '19082022103850-400x400-3-pastry.jpg', '19082022103850-3-pastry.jpg', '96196', '2022-08-19 04:38:50', '2022-08-19 04:38:50'),
(723, '1-w-bread', '1-w-bread', '19082022104438-600x600-1-w-bread.jpg', '19082022104438-1-w-bread.jpg', '82945', '2022-08-19 04:44:38', '2022-08-19 04:44:38'),
(724, '2-w-bread', '2-w-bread', '19082022104442-600x600-2-w-bread.jpg', '19082022104442-2-w-bread.jpg', '79438', '2022-08-19 04:44:42', '2022-08-19 04:44:42'),
(725, '3-w-bread', '3-w-bread', '19082022104445-600x600-3-w-bread.jpg', '19082022104445-3-w-bread.jpg', '93877', '2022-08-19 04:44:45', '2022-08-19 04:44:45'),
(726, '1-hand-painted-bread', '1-hand-painted-bread', '19082022104904-600x600-1-hand-painted-bread.jpg', '19082022104904-1-hand-painted-bread.jpg', '79208', '2022-08-19 04:49:04', '2022-08-19 04:49:04'),
(727, '2-hand-painted-bread', '2-hand-painted-bread', '19082022104907-600x600-2-hand-painted-bread.jpg', '19082022104907-2-hand-painted-bread.jpg', '72555', '2022-08-19 04:49:07', '2022-08-19 04:49:07'),
(728, '3-hand-painted-bread', '3-hand-painted-bread', '19082022104911-600x600-3-hand-painted-bread.jpg', '19082022104911-3-hand-painted-bread.jpg', '94362', '2022-08-19 04:49:11', '2022-08-19 04:49:11'),
(737, 'slider-1', 'slider-1', '19082022181217-400x400-slider-1.jpg', '19082022181217-slider-1.jpg', '87168', '2022-08-19 12:12:18', '2022-08-19 12:12:18'),
(739, 'slider-2', 'slider-2', '19082022181336-400x400-slider-2.jpg', '19082022181336-slider-2.jpg', '102493', '2022-08-19 12:13:36', '2022-08-19 12:13:36'),
(743, 'slider_h2_1', 'slider_h2_1', '20082022150916-400x400-slider_h2_1.jpg', '20082022150916-slider_h2_1.jpg', '137276', '2022-08-20 09:09:16', '2022-08-20 09:09:16'),
(744, 'slider_h2_2', 'slider_h2_2', '20082022151519-400x400-slider_h2_2.jpg', '20082022151519-slider_h2_2.jpg', '119365', '2022-08-20 09:15:19', '2022-08-20 09:15:19'),
(753, 'banner_5', 'banner_5', '22082022150919-400x400-banner_5.jpg', '22082022150919-banner_5.jpg', '22454', '2022-08-22 09:09:19', '2022-08-22 09:09:19'),
(754, 'banner_4', 'banner_4', '22082022151023-400x400-banner_4.jpg', '22082022151023-banner_4.jpg', '20568', '2022-08-22 09:10:23', '2022-08-22 09:10:23'),
(755, 'banner-3', 'banner-3', '22082022151100-400x400-banner-3.jpg', '22082022151100-banner-3.jpg', '24255', '2022-08-22 09:11:00', '2022-08-22 09:11:00'),
(756, 'banner-2', 'banner-2', '22082022151301-400x400-banner-2.jpg', '22082022151301-banner-2.jpg', '28504', '2022-08-22 09:13:01', '2022-08-22 09:13:01'),
(757, 'banner_1', 'banner_1', '22082022151335-400x400-banner_1.jpg', '22082022151335-banner_1.jpg', '89410', '2022-08-22 09:13:35', '2022-08-22 09:13:35'),
(758, 'deals_offer', 'deals_offer', '02092022061039-400x400-deals_offer.png', '02092022061039-deals_offer.png', '407063', '2022-09-02 00:10:39', '2022-09-02 00:10:39'),
(759, 'brand-1', 'brand-1', '09092022091517-400x400-brand-1.png', '09092022091517-brand-1.png', '15694', '2022-09-09 03:15:17', '2022-09-09 03:15:17'),
(760, 'brand-2', 'brand-2', '09092022091519-400x400-brand-2.png', '09092022091519-brand-2.png', '57554', '2022-09-09 03:15:20', '2022-09-09 03:15:20'),
(761, 'brand-3', 'brand-3', '09092022091522-400x400-brand-3.png', '09092022091522-brand-3.png', '17331', '2022-09-09 03:15:22', '2022-09-09 03:15:22'),
(762, 'brand-4', 'brand-4', '09092022091524-400x400-brand-4.png', '09092022091524-brand-4.png', '44480', '2022-09-09 03:15:24', '2022-09-09 03:15:24'),
(763, 'brand-5', 'brand-5', '09092022091526-400x400-brand-5.png', '09092022091526-brand-5.png', '14029', '2022-09-09 03:15:26', '2022-09-09 03:15:26'),
(764, 'brand-6', 'brand-6', '09092022091528-400x400-brand-6.png', '09092022091528-brand-6.png', '20563', '2022-09-09 03:15:28', '2022-09-09 03:15:28'),
(765, 'brand-7', 'brand-7', '09092022091535-400x400-brand-7.png', '09092022091535-brand-7.png', '12292', '2022-09-09 03:15:35', '2022-09-09 03:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media_type` varchar(191) NOT NULL,
  `media_desc` varchar(200) DEFAULT NULL,
  `media_width` varchar(100) DEFAULT NULL,
  `media_height` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_settings`
--

INSERT INTO `media_settings` (`id`, `media_type`, `media_desc`, `media_width`, `media_height`, `created_at`, `updated_at`) VALUES
(1, 'Thumbnail', NULL, '400', '400', '2021-04-11 20:21:59', '2022-08-01 11:04:33'),
(2, 'Subheader', NULL, '1920', '200', '2021-04-13 16:40:28', '2021-04-15 11:09:52'),
(3, 'Mega_Menu', NULL, '300', '400', '2021-05-17 15:20:51', '2021-05-17 15:20:53'),
(4, 'Brand', NULL, '300', '200', '2021-07-01 06:04:31', '2021-07-01 06:04:33'),
(5, 'Product_Thumbnail', NULL, '400', '400', '2021-07-02 13:27:52', '2022-08-01 11:08:22'),
(6, 'SEO_Image', NULL, '600', '315', '2021-07-02 14:43:42', '2021-07-02 09:19:54'),
(7, 'Product_Multiple_Image', NULL, '600', '600', '2022-08-18 12:16:27', '2022-08-18 12:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `mega_menus`
--

CREATE TABLE `mega_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `menu_parent_id` int(11) DEFAULT NULL,
  `mega_menu_title` text DEFAULT NULL,
  `is_title` int(11) DEFAULT NULL,
  `is_image` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `lan` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mega_menus`
--

INSERT INTO `mega_menus` (`id`, `menu_id`, `menu_parent_id`, `mega_menu_title`, `is_title`, `is_image`, `image`, `css_class`, `lan`, `sort_order`, `created_at`, `updated_at`) VALUES
(1304, 120, 971, 'Mega menu title 1', 0, 0, NULL, NULL, 'en', 1, '2022-09-02 06:02:12', '2022-09-02 06:03:37'),
(1305, 120, 971, 'Mega menu title 2', 0, 0, NULL, NULL, 'en', 2, '2022-09-02 06:02:12', '2022-09-02 06:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(191) NOT NULL,
  `menu_position` varchar(191) DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_name`, `menu_position`, `lan`, `status_id`, `created_at`, `updated_at`) VALUES
(120, 'Header Menu', 'header', 'en', 1, '2022-07-21 09:55:35', '2022-07-21 09:55:35'),
(121, 'Quick links', 'footer', 'en', 1, '2022-07-22 07:54:53', '2022-07-22 07:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `menu_childs`
--

CREATE TABLE `menu_childs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `menu_parent_id` int(11) DEFAULT NULL,
  `mega_menu_id` int(11) DEFAULT NULL,
  `menu_type` varchar(191) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_label` text DEFAULT NULL,
  `custom_url` text DEFAULT NULL,
  `target_window` varchar(191) DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `lan` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_childs`
--

INSERT INTO `menu_childs` (`id`, `menu_id`, `menu_parent_id`, `mega_menu_id`, `menu_type`, `item_id`, `item_label`, `custom_url`, `target_window`, `css_class`, `lan`, `sort_order`, `created_at`, `updated_at`) VALUES
(513, 120, 921, NULL, 'custom_link', NULL, 'Home  1', 'https://organis.themeposh.net/', '_self', '', 'en', 2, '2022-07-22 10:46:56', '2022-09-09 04:00:25'),
(514, 120, 921, NULL, 'custom_link', NULL, 'Home 2', 'https://organis.themeposh.net/home-2', '_self', '', 'en', 3, '2022-07-22 10:46:56', '2022-09-09 04:00:25'),
(515, 120, 921, NULL, 'custom_link', NULL, 'Home 3', 'https://organis3.themeposh.net/', '_self', '', 'en', 4, '2022-07-22 10:46:56', '2022-09-09 04:00:25'),
(516, 120, 921, NULL, 'custom_link', NULL, 'Home 4', 'https://organis.themeposh.net/home-4', '_self', '', 'en', 5, '2022-07-22 10:46:56', '2022-09-09 04:00:25'),
(527, 120, 952, NULL, 'brand', 7, 'Nisha Dairy', 'nisha-dairy', '_self', NULL, 'en', 18, '2022-09-02 05:56:25', '2022-09-09 04:00:25'),
(528, 120, 952, NULL, 'brand', 6, 'Vegeta', 'vegeta', '_self', NULL, 'en', 19, '2022-09-02 05:56:25', '2022-09-09 04:00:25'),
(529, 120, 952, NULL, 'brand', 5, 'Choicy', 'choicy', '_self', NULL, 'en', 20, '2022-09-02 05:56:25', '2022-09-09 04:00:25'),
(530, 120, 952, NULL, 'brand', 4, 'Pana Food', 'pana-food', '_self', NULL, 'en', 21, '2022-09-02 05:56:25', '2022-09-09 04:00:25'),
(531, 120, 952, NULL, 'brand', 3, 'Arod', 'arod', '_self', NULL, 'en', 22, '2022-09-02 05:56:25', '2022-09-09 04:00:25'),
(532, 120, 952, NULL, 'brand', 2, 'Mina', 'mina', '_self', NULL, 'en', 23, '2022-09-02 05:56:25', '2022-09-09 04:00:25'),
(533, 120, 952, NULL, 'brand', 1, 'Kari', 'kari', '_self', NULL, 'en', 24, '2022-09-02 05:56:25', '2022-09-09 04:00:25'),
(534, 120, 971, 1304, 'product_category', 11, 'Coffee and Tea', 'coffee-and-tea', '_self', NULL, 'en', 7, '2022-09-02 06:00:10', '2022-09-09 04:00:25'),
(535, 120, 971, 1304, 'product_category', 10, 'Dry Food', 'dry-food', '_self', NULL, 'en', 8, '2022-09-02 06:00:10', '2022-09-09 04:00:25'),
(536, 120, 971, 1304, 'product_category', 9, 'Fresh Seafood', 'fresh-seafood', '_self', NULL, 'en', 9, '2022-09-02 06:00:10', '2022-09-09 04:00:25'),
(537, 120, 971, 1304, 'product_category', 8, 'Fresh Meat', 'fresh-meat', '_self', NULL, 'en', 10, '2022-09-02 06:00:10', '2022-09-09 04:00:25'),
(538, 120, 971, 1304, 'product_category', 7, 'Milk and Dairy', 'milk-and-dairy', '_self', NULL, 'en', 11, '2022-09-02 06:00:10', '2022-09-09 04:00:25'),
(539, 120, 971, 1305, 'product_category', 6, 'Fast food', 'fast-food', '_self', NULL, 'en', 12, '2022-09-02 06:00:10', '2022-09-09 04:00:25'),
(540, 120, 971, 1305, 'product_category', 5, 'Juice', 'juice', '_self', NULL, 'en', 13, '2022-09-02 06:00:10', '2022-09-09 04:00:25'),
(541, 120, 971, 1305, 'product_category', 4, 'Bread and Bakery', 'bread-and-bakery', '_self', NULL, 'en', 14, '2022-09-02 06:00:10', '2022-09-09 04:00:25'),
(542, 120, 971, 1305, 'product_category', 3, 'Nutt and Seeds', 'nutt-and-seeds', '_self', NULL, 'en', 15, '2022-09-02 06:00:10', '2022-09-09 04:00:25'),
(543, 120, 971, 1305, 'product_category', 2, 'Fresh Fruit', 'fresh-fruit', '_self', NULL, 'en', 16, '2022-09-02 06:00:10', '2022-09-09 04:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu_parents`
--

CREATE TABLE `menu_parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `menu_type` varchar(191) DEFAULT NULL,
  `child_menu_type` varchar(191) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_label` text DEFAULT NULL,
  `custom_url` text DEFAULT NULL,
  `target_window` varchar(191) DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `column` int(11) DEFAULT NULL,
  `width_type` varchar(191) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `lan` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_parents`
--

INSERT INTO `menu_parents` (`id`, `menu_id`, `menu_type`, `child_menu_type`, `item_id`, `item_label`, `custom_url`, `target_window`, `css_class`, `column`, `width_type`, `width`, `lan`, `sort_order`, `created_at`, `updated_at`) VALUES
(921, 120, 'custom_link', 'dropdown', NULL, 'Home', '#', '_self', '', NULL, NULL, NULL, 'en', 1, '2022-07-22 10:45:08', '2022-09-09 04:00:25'),
(938, 120, 'custom_link', 'none', NULL, 'Contact Us', 'http://localhost/organis/organis-v1.0.0/contact/6/contact-us', '_self', '', NULL, NULL, NULL, 'en', 26, '2022-08-25 09:42:25', '2022-09-09 04:00:25'),
(940, 121, 'page', 'none', 50, 'Affiliate', 'affiliate', '_self', NULL, NULL, NULL, NULL, 'en', 6, '2022-09-02 05:45:07', '2022-09-02 05:49:29'),
(941, 121, 'page', 'none', 49, 'Career', 'career', '_self', NULL, NULL, NULL, NULL, 'en', 7, '2022-09-02 05:45:07', '2022-09-02 05:49:29'),
(942, 121, 'page', 'none', 48, 'About us', 'about-us', '_self', NULL, NULL, NULL, NULL, 'en', 1, '2022-09-02 05:45:07', '2022-09-02 05:49:29'),
(943, 121, 'page', 'none', 47, 'Cookie Policy', 'cookie-policy', '_self', NULL, NULL, NULL, NULL, 'en', 3, '2022-09-02 05:45:07', '2022-09-02 05:49:29'),
(944, 121, 'page', 'none', 46, 'Purchasing Policy', 'purchasing-policy', '_self', NULL, NULL, NULL, NULL, 'en', 5, '2022-09-02 05:45:07', '2022-09-02 05:49:29'),
(945, 121, 'page', 'none', 45, 'Terms and Conditions', 'terms-and-conditions', '_self', NULL, NULL, NULL, NULL, 'en', 4, '2022-09-02 05:45:07', '2022-09-02 05:49:29'),
(946, 121, 'page', 'none', 44, 'Privacy Policy', 'privacy-policy', '_self', NULL, NULL, NULL, NULL, 'en', 2, '2022-09-02 05:45:07', '2022-09-02 05:49:29'),
(947, 121, 'custom_link', 'none', NULL, 'Contact us', 'https://organis.themeposh.net/contact/6/contact-us', '_self', NULL, NULL, NULL, NULL, 'en', 8, '2022-09-02 05:49:27', '2022-09-02 05:49:29'),
(948, 121, 'custom_link', 'none', NULL, 'Shopping cart', 'https://organis.themeposh.net/stores/47/hasbi', '_self', NULL, NULL, NULL, NULL, 'en', 9, '2022-09-02 05:50:33', '2022-09-02 05:50:33'),
(949, 121, 'custom_link', 'none', NULL, 'My account', 'https://organis.themeposh.net/user/login', '_self', NULL, NULL, NULL, NULL, 'en', 10, '2022-09-02 05:50:50', '2022-09-02 05:50:50'),
(950, 121, 'custom_link', 'none', NULL, 'Order Tracking', 'https://organis.themeposh.net/order-tracking', '_self', NULL, NULL, NULL, NULL, 'en', 11, '2022-09-02 05:51:07', '2022-09-02 05:51:07'),
(951, 121, 'custom_link', 'none', NULL, 'Delivery Information', 'https://organis.themeposh.net/order-tracking', '_self', NULL, NULL, NULL, NULL, 'en', 12, '2022-09-02 05:51:19', '2022-09-02 05:51:19'),
(952, 120, 'custom_link', 'dropdown', NULL, 'Brands', '#', '_self', '', NULL, NULL, NULL, 'en', 17, '2022-09-02 05:55:41', '2022-09-09 04:00:25'),
(971, 120, 'custom_link', 'mega_menu', NULL, 'Shop', '#', '_self', '', 2, 'fixed_width', 550, 'en', 6, '2022-09-02 06:01:58', '2022-09-09 04:00:25'),
(972, 120, 'page', 'none', 48, 'About us', 'about-us', '_self', NULL, NULL, NULL, NULL, 'en', 25, '2022-09-04 10:58:36', '2022-09-09 04:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_27_172426_create_languages_table', 1),
(5, '2021_03_27_172601_create_lankeyvalues_table', 1),
(6, '2021_03_30_140957_create_tp_options_table', 1),
(7, '2021_04_01_152906_create_timezones_table', 1),
(8, '2021_04_02_150516_create_user_status_table', 1),
(9, '2021_04_02_150609_create_user_roles_table', 1),
(10, '2021_04_09_044943_create_media_options_table', 1),
(11, '2021_04_12_140713_create_media_settings_table', 1),
(13, '2021_05_01_115940_create_menus_table', 1),
(14, '2021_05_01_120841_create_tp_status_table', 1),
(15, '2021_05_01_133411_create_menu_parents_table', 1),
(16, '2021_05_01_140308_create_mega_menus_table', 1),
(17, '2021_05_01_141350_create_menu_childs_table', 1),
(22, '2021_06_27_161510_create_taxes_table', 1),
(23, '2021_06_27_163015_create_coupons_table', 1),
(24, '2021_06_27_163543_create_brands_table', 1),
(25, '2021_06_27_164050_create_attributes_table', 1),
(26, '2021_06_27_165048_create_labels_table', 1),
(27, '2021_06_27_165404_create_collections_table', 1),
(28, '2021_06_27_165739_create_shipping_table', 1),
(29, '2021_06_27_172340_create_pro_categories_table', 1),
(30, '2021_07_02_103306_create_products_table', 1),
(31, '2021_07_03_135905_create_offer_ads_table', 2),
(32, '2021_07_03_140248_create_pro_images_table', 2),
(33, '2021_07_03_140531_create_related_products_table', 2),
(34, '2021_07_03_172443_create_sliders_table', 3),
(35, '2021_07_11_173246_create_social_medias_table', 4),
(36, '2021_08_21_141949_create_reviews_table', 5),
(37, '2018_12_23_120000_create_shoppingcart_table', 6),
(38, '2021_10_03_164438_create_payment_method_table', 7),
(39, '2021_10_03_164717_create_payment_status_table', 7),
(40, '2021_10_03_164842_create_order_status_table', 7),
(42, '2021_10_04_145015_create_order_items_table', 8),
(43, '2021_10_06_154120_create_countries_table', 9),
(44, '2021_10_04_144935_create_order_masters_table', 10),
(45, '2021_10_26_153444_create_pages_table', 11),
(46, '2021_11_01_162210_create_subscribers_table', 12),
(47, '2021_12_22_172026_create_bank_informations_table', 13),
(49, '2022_01_12_161842_create_withdrawal_images_table', 14),
(50, '2022_01_12_164116_create_withdrawal_status_table', 15),
(51, '2022_01_12_161239_create_withdrawals_table', 16),
(53, '2022_08_18_112436_create_section_manages_table', 17),
(54, '2022_08_25_165632_create_contacts_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `offer_ads`
--

CREATE TABLE `offer_ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_ad_type` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_ads`
--

INSERT INTO `offer_ads` (`id`, `offer_ad_type`, `title`, `url`, `image`, `desc`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'position1_home1', 'Get 20% off on Vegetables', '#', '17072022160150-offer-1.png', '{\"bg_color\":\"#daeac5\",\"text_1\":\"Get 20% off on Vegetables\",\"text_2\":\"There are many variations of passages of Lorem Ipsum available.\",\"button_text\":\"Shop Now\",\"target\":\"_blank\"}', 1, '2021-08-06 02:30:32', '2022-08-17 11:17:43'),
(2, 'position1_home1', 'Get 25% off on Juice', '#', '17072022161053-offer-2.png', '{\"bg_color\":\"#baf6f7\",\"text_1\":\"Get 25% off on Juice\",\"text_2\":\"There are many variations of passages of Lorem Ipsum available.\",\"button_text\":\"Shop Now\",\"target\":\"_blank\"}', 1, '2021-08-06 02:31:19', '2022-08-17 11:13:39'),
(3, 'position1_home1', 'Get 30% off on Fruit', '#', '17072022161130-offer-3.png', '{\"bg_color\":\"#f7e8b6\",\"text_1\":\"Get 30% off on Fruit\",\"text_2\":\"There are many variations of passages of Lorem Ipsum available.\",\"button_text\":\"Shop Now\",\"target\":null}', 1, '2021-08-06 02:32:12', '2022-08-17 11:10:49'),
(26, 'position2_home1', 'Fresh & Healthy Organic Vegetables', '#', '02092022061039-deals_offer.png', '{\"bg_color\":\"#ffffff\",\"text_1\":\"Fresh & Healthy Organic Vegetables\",\"text_2\":\"Fresh & Healthy Organic Vegetables\",\"button_text\":\"Shop Now\",\"target\":null}', 1, '2022-08-17 11:22:15', '2022-09-02 00:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_master_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variation_size` varchar(100) DEFAULT NULL,
  `variation_color` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double(12,2) DEFAULT NULL,
  `total_price` double(12,2) DEFAULT NULL,
  `tax` double(12,2) DEFAULT NULL,
  `discount` double(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_master_id`, `customer_id`, `seller_id`, `product_id`, `variation_size`, `variation_color`, `quantity`, `price`, `total_price`, `tax`, `discount`, `created_at`, `updated_at`) VALUES
(609, 443, 1, 63, 157, 'Kg', NULL, 1, 160.00, 160.00, 8.00, NULL, '2022-08-15 00:46:08', '2022-08-15 00:46:08'),
(610, 444, 1, 47, 161, 'Kg', NULL, 1, 99.00, 99.00, 4.95, NULL, '2022-08-15 00:46:08', '2022-08-15 00:46:08'),
(611, 444, 1, 47, 159, 'Kg', NULL, 1, 60.00, 60.00, 3.00, NULL, '2022-08-15 00:46:08', '2022-08-15 00:46:08'),
(612, 444, 1, 47, 152, 'Kg', NULL, 1, 89.00, 89.00, 4.45, NULL, '2022-08-15 00:46:08', '2022-08-15 00:46:08'),
(613, 444, 1, 47, 153, 'Kg', NULL, 1, 100.00, 100.00, 5.00, NULL, '2022-08-15 00:46:08', '2022-08-15 00:46:08'),
(614, 445, 1, 47, 161, 'Kg', NULL, 1, 99.00, 99.00, 4.95, NULL, '2022-08-15 01:07:16', '2022-08-15 01:07:16'),
(615, 445, 1, 47, 159, 'Kg', NULL, 4, 60.00, 240.00, 12.00, NULL, '2022-08-15 01:07:16', '2022-08-15 01:07:16'),
(616, 445, 1, 47, 158, 'Kg', NULL, 2, 600.00, 1200.00, 60.00, NULL, '2022-08-15 01:07:16', '2022-08-15 01:07:16'),
(617, 445, 1, 47, 153, 'Kg', NULL, 4, 100.00, 400.00, 20.00, NULL, '2022-08-15 01:07:16', '2022-08-15 01:07:16'),
(618, 445, 1, 47, 152, 'Kg', NULL, 3, 89.00, 267.00, 13.35, NULL, '2022-08-15 01:07:16', '2022-08-15 01:07:16'),
(619, 446, 64, 47, 154, 'Kg', NULL, 2, 800.00, 1600.00, 80.00, NULL, '2022-08-15 04:47:54', '2022-08-15 04:47:54'),
(620, 447, 64, 62, 155, 'Kg', NULL, 2, 300.00, 600.00, 30.00, NULL, '2022-08-15 04:47:54', '2022-08-15 04:47:54'),
(621, 448, 64, 63, 157, 'Kg', NULL, 2, 160.00, 320.00, 16.00, NULL, '2022-08-15 04:47:54', '2022-08-15 04:47:54'),
(622, 448, 64, 63, 160, 'Kg', NULL, 3, 76.00, 228.00, 11.40, NULL, '2022-08-15 04:47:54', '2022-08-15 04:47:54'),
(623, 449, 1, 47, 161, 'Kg', NULL, 1, 99.00, 99.00, 4.95, NULL, '2022-08-15 06:24:21', '2022-08-15 06:24:21'),
(624, 449, 1, 47, 159, 'Kg', NULL, 2, 60.00, 120.00, 6.00, NULL, '2022-08-15 06:24:21', '2022-08-15 06:24:21'),
(625, 449, 1, 47, 158, 'Kg', NULL, 3, 600.00, 1800.00, 90.00, NULL, '2022-08-15 06:24:21', '2022-08-15 06:24:21'),
(626, 449, 1, 47, 152, 'Kg', NULL, 3, 89.00, 267.00, 13.35, NULL, '2022-08-15 06:24:21', '2022-08-15 06:24:21'),
(627, 449, 1, 47, 145, 'Kg', NULL, 2, 400.00, 800.00, 40.00, NULL, '2022-08-15 06:24:21', '2022-08-15 06:24:21'),
(628, 449, 1, 47, 134, 'Kg', NULL, 3, 25.00, 75.00, 3.75, NULL, '2022-08-15 06:24:21', '2022-08-15 06:24:21'),
(629, 449, 1, 47, 130, 'Kg', NULL, 2, 12.00, 24.00, 1.20, NULL, '2022-08-15 06:24:21', '2022-08-15 06:24:21'),
(630, 449, 1, 47, 133, 'Kg', NULL, 2, 40.00, 80.00, 4.00, NULL, '2022-08-15 06:24:21', '2022-08-15 06:24:21'),
(631, 449, 1, 47, 132, 'Kg', NULL, 3, 40.00, 120.00, 6.00, NULL, '2022-08-15 06:24:21', '2022-08-15 06:24:21'),
(632, 449, 1, 47, 131, 'Kg', NULL, 3, 50.00, 150.00, 7.50, NULL, '2022-08-15 06:24:21', '2022-08-15 06:24:21'),
(633, 450, 1, 63, 157, 'Kg', NULL, 1, 160.00, 160.00, 8.00, NULL, '2022-08-15 06:37:14', '2022-08-15 06:37:14'),
(634, 451, 1, 62, 155, 'Kg', NULL, 1, 300.00, 300.00, 15.00, NULL, '2022-08-15 06:37:14', '2022-08-15 06:37:14'),
(635, 452, 1, 47, 154, 'Kg', NULL, 1, 800.00, 800.00, 40.00, NULL, '2022-08-15 06:37:14', '2022-08-15 06:37:14'),
(636, 451, 1, 62, 148, 'Kg', NULL, 1, 60.00, 60.00, 3.00, NULL, '2022-08-15 06:37:14', '2022-08-15 06:37:14'),
(637, 451, 1, 62, 149, 'Kg', NULL, 1, 98.00, 98.00, 4.90, NULL, '2022-08-15 06:37:14', '2022-08-15 06:37:14'),
(638, 453, 1, 48, 156, 'Box', NULL, 2, 7777.00, 15554.00, 777.70, NULL, '2022-08-17 10:39:12', '2022-08-17 10:39:12'),
(639, 454, 1, 63, 160, 'Kg', NULL, 2, 76.00, 152.00, 7.60, NULL, '2022-08-17 10:39:12', '2022-08-17 10:39:12'),
(640, 455, 1, 47, 161, 'Kg', NULL, 1, 99.00, 99.00, 4.95, NULL, '2022-08-17 10:39:12', '2022-08-17 10:39:12'),
(641, 456, 1, 62, 155, 'Kg', NULL, 1, 300.00, 300.00, 15.00, NULL, '2022-08-17 10:39:12', '2022-08-17 10:39:12'),
(642, 454, 1, 63, 162, 'Box', NULL, 2, 222.00, 444.00, 22.20, NULL, '2022-08-17 10:39:12', '2022-08-17 10:39:12'),
(643, 457, 1, 47, 158, 'Kg', NULL, 2, 600.00, 1200.00, 60.00, NULL, '2022-08-24 09:24:02', '2022-08-24 09:24:02'),
(644, 457, 1, 47, 154, 'Kg', NULL, 2, 800.00, 1600.00, 80.00, NULL, '2022-08-24 09:24:02', '2022-08-24 09:24:02'),
(645, 458, 1, 63, 150, 'Kg', NULL, 11, 67.00, 737.00, 36.85, NULL, '2022-08-24 09:24:02', '2022-08-24 09:24:02'),
(646, 458, 1, 63, 147, 'Kg', NULL, 5, 90.00, 450.00, 22.50, NULL, '2022-08-24 09:24:02', '2022-08-24 09:24:02'),
(647, 459, NULL, 63, 157, 'Kg', NULL, 1, 110.00, 110.00, 5.50, NULL, '2022-09-07 07:29:55', '2022-09-07 07:29:55'),
(648, 460, NULL, 62, 155, 'Kg', NULL, 1, 90.00, 90.00, 4.50, NULL, '2022-09-07 07:29:55', '2022-09-07 07:29:55'),
(649, 461, NULL, 47, 154, 'Kg', NULL, 1, 120.00, 120.00, 6.00, NULL, '2022-09-07 07:29:55', '2022-09-07 07:29:55'),
(650, 461, NULL, 47, 158, 'Kg', NULL, 1, 60.00, 60.00, 3.00, NULL, '2022-09-07 07:29:55', '2022-09-07 07:29:55'),
(651, 461, NULL, 47, 159, 'Kg', NULL, 1, 60.00, 60.00, 3.00, NULL, '2022-09-07 07:29:55', '2022-09-07 07:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_masters`
--

CREATE TABLE `order_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(100) DEFAULT NULL,
  `transaction_no` varchar(100) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `payment_status_id` int(11) DEFAULT NULL,
  `order_status_id` int(11) DEFAULT NULL,
  `total_qty` int(11) DEFAULT NULL,
  `total_price` double(8,2) DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `subtotal` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) DEFAULT NULL,
  `shipping_title` text DEFAULT NULL,
  `shipping_fee` double(8,2) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `zip_code` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_masters`
--

INSERT INTO `order_masters` (`id`, `order_no`, `transaction_no`, `customer_id`, `seller_id`, `payment_method_id`, `payment_status_id`, `order_status_id`, `total_qty`, `total_price`, `discount`, `tax`, `subtotal`, `total_amount`, `shipping_title`, `shipping_fee`, `name`, `email`, `phone`, `country`, `state`, `zip_code`, `city`, `address`, `comments`, `created_at`, `updated_at`) VALUES
(443, 'ORD-7481151', 'TXN-1626399', 1, 63, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 3 days. Fee for per seller', 10.00, 'Admin', 'admin@themeposh.xyz', '0123456789', 'Albania', 'Dhaka', '2130', 'Dhaka', '56 King Street, New York', NULL, '2022-08-15 00:46:08', '2022-08-15 06:38:43'),
(444, 'ORD-9575782', 'TXN-1994363', 1, 47, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 3 days. Fee for per seller', 10.00, 'Admin', 'admin@themeposh.xyz', '0123456789', 'Albania', 'Dhaka', '2130', 'Dhaka', '56 King Street, New York', NULL, '2022-08-15 00:46:08', '2022-08-15 06:37:49'),
(445, 'ORD-8817931', 'TXN-1430265', 1, 47, 2, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 1 day. Fee for per seller', 15.00, 'Nazim Mahmud', 'nazimmahmud83@gmail.com', '0123456789', 'Bangladesh', 'Sherpur', '2130', 'Sherpur', 'Sherpur, Dhaka, Bangladesh', NULL, '2022-08-15 01:07:16', '2022-08-15 06:38:37'),
(446, 'ORD-3672811', 'TXN-1134462', 64, 47, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 1 day. Fee for per seller', 15.00, 'Nazim Mahmud', 'tspprt7@gmail.com', '01915826995', 'Bangladesh', 'Dhaka', '1240', 'Dhaka', 'Sherpur, Bangladesh', NULL, '2022-08-15 04:47:54', '2022-08-15 06:38:30'),
(447, 'ORD-1043112', 'TXN-1559541', 64, 62, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 1 day. Fee for per seller', 15.00, 'Nazim Mahmud', 'tspprt7@gmail.com', '01915826995', 'Bangladesh', 'Dhaka', '1240', 'Dhaka', 'Sherpur, Bangladesh', NULL, '2022-08-15 04:47:54', '2022-08-15 06:38:22'),
(448, 'ORD-6152893', 'TXN-1295246', 64, 63, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 1 day. Fee for per seller', 15.00, 'Nazim Mahmud', 'tspprt7@gmail.com', '01915826995', 'Bangladesh', 'Dhaka', '1240', 'Dhaka', 'Sherpur, Bangladesh', NULL, '2022-08-15 04:47:54', '2022-08-15 06:38:17'),
(449, 'ORD-2171361', 'TXN-1948261', 1, 47, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 1 day. Fee for per seller', 15.00, 'Admin', 'admin@themeposh.xyz', '0123456789', 'Bangladesh', 'Dhaka', '2130', 'Dhaka', '56 King Street, New York', NULL, '2022-08-15 06:24:21', '2022-08-17 08:58:18'),
(450, 'ORD-7573431', 'TXN-1208813', 1, 63, 2, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 5-10 days. Fee for per seller', 5.00, 'Admin', 'admin@themeposh.xyz', '0123456789', 'Bangladesh', 'Dhaka', '2130', 'Dhaka', 'Dhaka, Bangladesh', NULL, '2022-08-15 06:37:14', '2022-08-15 06:38:12'),
(451, 'ORD-5471922', 'TXN-1968751', 1, 62, 2, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 5-10 days. Fee for per seller', 5.00, 'Admin', 'admin@themeposh.xyz', '0123456789', 'Bangladesh', 'Dhaka', '2130', 'Dhaka', 'Dhaka, Bangladesh', NULL, '2022-08-15 06:37:14', '2022-08-15 06:38:07'),
(452, 'ORD-8248043', 'TXN-1125293', 1, 47, 2, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 5-10 days. Fee for per seller', 5.00, 'Admin', 'admin@themeposh.xyz', '0123456789', 'Bangladesh', 'Dhaka', '2130', 'Dhaka', 'Dhaka, Bangladesh', NULL, '2022-08-15 06:37:14', '2022-08-15 11:42:12'),
(453, 'ORD-9505671', NULL, 1, 48, 2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 5-10 days. Fee for per seller', 5.00, 'Admin', 'admin@themeposh.xyz', '0123456789', 'Austria', 'd', 'd', 'f', '56 King Street, New York', NULL, '2022-08-17 10:39:12', '2022-08-17 10:39:12'),
(454, 'ORD-5315742', 'TXN-1173953', 1, 63, 2, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 5-10 days. Fee for per seller', 5.00, 'Admin', 'admin@themeposh.xyz', '0123456789', 'Austria', 'd', 'd', 'f', '56 King Street, New York', NULL, '2022-08-17 10:39:12', '2022-08-17 10:39:29'),
(455, 'ORD-2523503', NULL, 1, 47, 2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 5-10 days. Fee for per seller', 5.00, 'Admin', 'admin@themeposh.xyz', '0123456789', 'Austria', 'd', 'd', 'f', '56 King Street, New York', NULL, '2022-08-17 10:39:12', '2022-08-17 10:39:12'),
(456, 'ORD-4957994', NULL, 1, 62, 2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 5-10 days. Fee for per seller', 5.00, 'Admin', 'admin@themeposh.xyz', '0123456789', 'Austria', 'd', 'd', 'f', '56 King Street, New York', NULL, '2022-08-17 10:39:12', '2022-08-17 10:39:12'),
(457, 'ORD-2109511', NULL, 1, 47, 2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 5-10 days. Fee for per seller', 5.00, 'Admin', 'admin@themeposh.xyz', '0123456789', 'Albania', '11', '2', 'Dhaka', '56 King Street, New York', 'test', '2022-08-24 09:24:02', '2022-08-24 09:24:02'),
(458, 'ORD-2220162', NULL, 1, 63, 2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 5-10 days. Fee for per seller', 5.00, 'Admin', 'admin@themeposh.xyz', '0123456789', 'Albania', '11', '2', 'Dhaka', '56 King Street, New York', 'test', '2022-08-24 09:24:02', '2022-09-02 00:36:59'),
(459, 'ORD-7072111', NULL, NULL, 63, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 5-10 days. Fee for per seller', 5.00, 'Nazim Mahmud', 'client@gmail.com', '01915826995', 'Bangladesh', 'dhaka', '2130', 'dhaka', 'dhaka, Bangladesh', NULL, '2022-09-07 07:29:55', '2022-09-07 07:29:55'),
(460, 'ORD-8291612', NULL, NULL, 62, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 5-10 days. Fee for per seller', 5.00, 'Nazim Mahmud', 'client@gmail.com', '01915826995', 'Bangladesh', 'dhaka', '2130', 'dhaka', 'dhaka, Bangladesh', NULL, '2022-09-07 07:29:55', '2022-09-07 07:29:55'),
(461, 'ORD-1122323', NULL, NULL, 47, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 5-10 days. Fee for per seller', 5.00, 'Nazim Mahmud', 'client@gmail.com', '01915826995', 'Bangladesh', 'dhaka', '2130', 'dhaka', 'dhaka, Bangladesh', NULL, '2022-09-07 07:29:55', '2022-09-07 07:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ostatus_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `ostatus_name`, `created_at`, `updated_at`) VALUES
(1, 'Awaiting', '2021-10-03 16:55:01', '2021-10-03 16:55:02'),
(2, 'Processing', '2021-10-03 16:55:25', '2021-10-03 16:55:27'),
(3, 'Pickup', '2021-10-03 16:59:44', '2021-10-03 16:59:46'),
(4, 'Completed', '2021-10-03 17:02:13', '2021-10-03 17:02:15'),
(5, 'Canceled', '2021-10-03 17:03:14', '2021-10-03 17:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `content` longtext DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `og_title` text DEFAULT NULL,
  `og_image` text DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `thumbnail`, `lan`, `is_publish`, `og_title`, `og_image`, `og_description`, `og_keywords`, `created_at`, `updated_at`) VALUES
(44, 'Privacy Policy', 'privacy-policy', '<h6>What is a privacy policy?</h6>\r\n<p>A privacy policy is a document that states what personal data you collect from your users, why, and how you keep it private.</p>\r\n<p>The purpose of the privacy policy is to inform your users about how their data is being handled.</p>\r\n<p>Hence, the privacy policy should be accessible for your users and kept in plain and readable language.</p>\r\n<p>Most countries have privacy laws requiring that websites collecting personal data have a proper privacy policy in place.</p>\r\n<p>Failure to comply can result in heavy fines and even prosecution. Are you based in the EU or providing services to EU citizens, you must have a GDPR compliant privacy policy on your domain.</p>\r\n<p>We will get into this in more detail below.</p>\r\n\r\n<h6>What is personal data?</h6>\r\n<p>Personal data is information that can identify an individual, either directly or when combined with other data.</p>\r\n<p>Names, e-mails, addresses, localization, IP addresses, photos, and account information all are directly identifying data.</p>\r\n<p>Health information, income, religion, and cultural profiles, and the like is also personal data.</p>\r\n<p>Furthermore, and crucial in the present context, data on user behavior is also personal. Cookies can track and register individual users’ browsing activities, like what articles they scroll past and which ones they choose to click on.</p>\r\n\r\n<h6>Why is a privacy policy important?</h6>\r\n<p>The most important thing to remember is that a privacy policy is required by law if you collect data from users, either directly or indirectly. For example, if you have a contact form on your website you need a privacy policy. But you will also need a privacy policy if you use analytics tools such as Google Analytics.</p>\r\n\r\n<h6>Where do I put my privacy policy?</h6>\r\n<p>Usually, you can find privacy policies in the footer of a website. We recommend that you place your privacy policy in easy to find locations on your website.</p>\r\n\r\n<h6>What should the privacy policy include?</h6>\r\n<p>A standard privacy policy should include: what data you collect from visitors, how you collect it, why you are collecting the data, how you are using the data.</p>\r\n\r\n<h6>Why you Need a Privacy Policy</h6>\r\n<p>Privacy is not a new concept. Humans have always desired privacy in their social as well as private lives. But the idea of privacy as a human right is a relatively modern phenomenon.</p>\r\n<p>Around the world, laws and regulations have been developed for the protection of data related to government, education, health, children, consumers, financial institutions, etc.</p>\r\n<p>This data is critical to the person it belongs to. From credit card numbers and social security numbers to email addresses and phone numbers, our sensitive, personally identifiable information is important. This sort of information in unreliable hands can potentially have far-reaching consequences.</p>\r\n<p>Companies or websites that handle customer information are required to publish their Privacy Policies on their business websites. If you own a website, web app, mobile app or desktop app that collects or processes user data, you most certainly will have to post a Privacy Policy on your website (or give in-app access to the full Privacy Policy agreement).</p>', NULL, 'en', 1, NULL, NULL, NULL, NULL, '2021-11-24 00:55:31', '2021-11-25 21:04:50'),
(45, 'Terms and Conditions', 'terms-and-conditions', '<h6>What are Terms and Conditions?</h6>\r\n<p>Terms and conditions (also referred to as terms of use or terms of service) are a form of legal agreement outlining rules and restrictions for customers to follow when using your site.</p>\r\n\r\n<h6>Does My Online Shop Need Terms and Conditions?</h6>\r\n<p>While it’s not legally required for ecommerce websites to have a terms and conditions agreement, adding one will help protect your online business.</p>\r\n<p>As terms and conditions are legally enforceable rules, they allow you to set standards for how users interact with your site. Here are some of the major benefits of including terms and conditions on your ecommerce site:</p>\r\n<h6>1. Prevent Site Abuse</h6>\r\n<p>By setting guidelines on proper site usage, terms inform users what constitutes acceptable actions when using your site, and the consequences of breaking those rules.</p>\r\n<p>Examples of unacceptable behaviors include spamming, using bots, or posting defamatory content. Having terms and conditions allows you to take action against site abusers by banning them or terminating their accounts.</p>\r\n\r\n<h6>2. Protect Your Property</h6>\r\n<p>As the owner of your online store or shop, you also own your website’s content, logo, page designs, and any other brand-related materials you produce.</p>\r\n<p>Use your terms and conditions to inform users that your properties are protected by copyright and trademark laws, and set the rules for how others can lawfully use your materials.</p>\r\n\r\n<h6>3. Minimize Disputes</h6>\r\n<p>A well-drafted terms and conditions agreement will minimize your chances of legal disputes, as all the rules are clearly laid out for customers to see.</p>\r\n<p>In the event that disputes do arise, your terms and conditions (specifically, a dispute resolution clause) sets out a plan for resolving conflicts with limited difficulty.</p>\r\n\r\n<h6>What to Include in Terms and Conditions for Online Stores</h6>\r\n<p>Although terms and conditions will vary from business to business, standard terms and conditions for ecommerce sites will include these clauses:</p>\r\n\r\n<h6>Pricing and Payment Terms</h6>\r\n<p>Under your pricing and payment clause, address online purchase and pricing-related topics, including transaction processes, shipping and delivery terms, and returns and refunds.</p>\r\n<p>Your terms and conditions should also link to your return and refund policy, so users can easily find the details of your returns process. If you decide not to offer refunds, link to your no refund policy or all sales are final policy instead.</p>\r\n\r\n<p>Id aliquet risus feugiat in. Nec ullamcorper sit amet risus nullam eget felis. Sagittis nisl rhoncus mattis rhoncus.</p>\r\n<p>Aliquet sagittis id consectetur purus. Fermentum iaculis eu non diam phasellus vestibulum lorem. Libero id faucibus nisl tincidunt eget nullam non nisi est. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada.</p>\r\n<p>Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Sit amet facilisis magna etiam. Volutpat sed cras ornare arcu dui vivamus. Sociis natoque penatibus et magnis dis parturient montes nascetur. Diam maecenas ultricies mi eget mauris pharetra et.</p>\r\n<p>Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Fringilla urna porttitor rhoncus dolor purus non. </p>', NULL, 'en', 1, NULL, NULL, NULL, NULL, '2021-11-24 00:55:59', '2021-11-24 01:26:29'),
(46, 'Purchasing Policy', 'purchasing-policy', '<p>The role of the purchasing policy is to define standard methods and procedures for the Company to purchase products and services from different vendors. This policy covers all expenses for the company including items like taxes, payroll payments, etc.  Those are defined as exceptions in the policy and proper procedures are defined to manage these payments.</p>\r\n\r\n<p>Compliance with this policy is mandatory for all employees. Noncompliance with this policy could lead to action including termination of employment. The purchasing department is responsible for maintaining and implementing the processes defined in this policy.</p>\r\n\r\n<h6>Refund Policy</h6>\r\n<p>Thanks for purchasing our products Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque.</p>\r\n<p>We offer a full money-back guarantee for all purchases made on our website. If you are not satisfied with the product that you have purchased from us, you can get your money back no questions asked. You are eligible for a full reimbursement within 14 calendar days of your purchase.</p>\r\n<p>After the 14-day period you will no longer be eligible and won\'t be able to receive a refund. We encourage our customers to try the product (or service) in the first two weeks after their purchase to ensure it fits your needs.</p>\r\n<p>If you have any additional questions or would like to request a refund, feel free to contact us.</p>\r\n\r\n<h6>Why do You Need a Refund Policy?</h6>\r\n<p>We have already stated that a refund policy is a legal agreement. If you run an online retail business or an e-commerce website, the chances are that you already have some policies on display for your customers. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque.</p>\r\n\r\n<h6>What to Include in a Refund policy?</h6>\r\n<p>People don\'t have a tendency to read long and boring legal documents online. On the other hand, you have to provide all the necessary information.</p>\r\n<p>This is why it is advised to break down your return/refund policy into smaller sections. This will increase the readability of the document, make it easier for customers to find what they need, and, at the same time, protect you legally.</p>\r\n\r\n<p>Id aliquet risus feugiat in. Nec ullamcorper sit amet risus nullam eget felis. Sagittis nisl rhoncus mattis rhoncus.</p>\r\n<p>Aliquet sagittis id consectetur purus. Fermentum iaculis eu non diam phasellus vestibulum lorem. Libero id faucibus nisl tincidunt eget nullam non nisi est. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada.</p>\r\n<p>Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Sit amet facilisis magna etiam. Volutpat sed cras ornare arcu dui vivamus. Sociis natoque penatibus et magnis dis parturient montes nascetur. Diam maecenas ultricies mi eget mauris pharetra et.</p>\r\n<p>Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Fringilla urna porttitor rhoncus dolor purus non. </p>', NULL, 'en', 1, NULL, NULL, NULL, NULL, '2021-11-24 00:56:14', '2021-11-24 01:27:44'),
(47, 'Cookie Policy', 'cookie-policy', '<h6>What\'s a Cookies Policy</h6>\r\n<p>A Cookies Policy is a policy that provides users with detailed information about the types of cookies a website uses, how these cookies are used, and how users can control cookies placement through limiting or forbidding a website to place cookies on his/her electronic device.</p>\r\n<p>A Privacy Policy will often include a section within it that covers Cookies. However, in the EU, having a fully separate Cookies Policy is required.</p>\r\n<p>In this case, any information about cookies can also be placed in the Privacy Policy but then referenced in the separate Cookies Policy.</p>\r\n\r\n<h6>Legal Requirements for Cookies Policies</h6>\r\n<p>Any EU business that uses cookies must comply with the EU Cookies Law, which requires a Cookie Policy to be in place. Visitors to your website must be alerted that cookies are in use, what kind of cookies are in use, and given the option to opt out of having these cookies placed on their devices.</p>\r\n<p>A Cookie Policy is where this information can be thoroughly detailed and explained to your visitors.</p>\r\n<p>While pop-up boxes and banner notifications alert users that cookies are being used and can allow for an option to opt out within that box or banner, this kind of policy is where further information can be detailed and accessible to your visitors at any time.</p>\r\n\r\n<h6>What to Include in Your Cookies Policy</h6>\r\n<p>All Cookies Policies will include the same basic information:</p>\r\n<ul>\r\n	<li>That cookies are in use on your website</li>\r\n	<li>What cookies are</li>\r\n	<li>What kind of cookies are in use (by you and/or third parties)</li>\r\n	<li>How and why you (and/or third parties) are using the cookies</li>\r\n	<li>How a user can opt out of having cookies placed on a device</li>\r\n</ul>\r\n<p>Let\'s look at some examples of Cookies Policy clauses that address the above information.</p>\r\n\r\n<h6>You Use Cookies, and What Cookies Are</h6>\r\n<p>Most Cookies Policies start by letting users know that cookies are in use, and telling them what cookies are. Simple, easy-to-understand language should be used here so that everyone is able to understand what the policy is saying.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque. Est ultricies integer quis auctor elit sed vulputate mi. Leo vel fringilla est ullamcorper eget nulla. Odio pellentesque diam volutpat commodo. Tincidunt augue interdum velit euismod in pellentesque massa placerat duis. Auctor urna nunc id cursus metus aliquam. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis. Maecenas accumsan lacus vel facilisis volutpat est velit egestas dui. Lorem ipsum dolor sit amet consectetur adipiscing elit.</p>', NULL, 'en', 1, NULL, NULL, NULL, NULL, '2021-11-24 00:56:24', '2022-06-13 10:25:12'),
(48, 'About us', 'about-us', '<h6>What Is An About Us Page?</h6>\r\n<p>An About Us Page is a page on your website that tells your readers all about you. It includes a detailed description covering all aspects of your business and you as an entrepreneur. This can include the products or services you are offering, how you came into being as a business, your mission and vision, your aim, and maybe something about your future goals too. Your About Us page is your perfect opportunity to tell a compelling story about your business.</p>\r\n\r\n<p>An About Us page helps your company make a good first impression, and is critical for building customer trust and loyalty. An About Us page should make sure to cover basic information about the store and its founders, explain the company\'s purpose and how it differs from the competition, and encourage discussion and interaction. Here are some free templates, samples, and example About Us pages to help your ecommerce store stand out from the crowd.</p>\r\n\r\n<p>Even though an About Us page is one of the most important elements of a website, it is often one of the most overlooked elements. Compared to a landing page, an About Us page help you communicate a range of things:</p>\r\n<ul>\r\n	<li>The story of your brand and why you started it. </li>\r\n	<li>The cause or customers that your business serves.</li>\r\n	<li>Your business model or how your products are sourced/manufactured.</li>\r\n</ul>\r\n<p>As an important part of your website your About Us page can set you apart from your competitors in a way that can build your brand in a positive way.</p>\r\n\r\n<h6>Your History</h6>\r\n<p>Take the visitors on your website to a trip down memory lane, and give them an insight to the history behind your store. Here, you can show them where, how, and when you started, and everything your business has accomplished on the way. This is your chance to share your relevant milestones and achievements relating to your business in an engaging way.</p>\r\n<p>You can even choose to present your history to your viewers in the form of a timeline, which allows you to display a large amount of information in a visually engaging manner. Your customers or potential customers might be interested in seeing how you grew over the years.</p>\r\n\r\n<h6>Team Member Profiles</h6>\r\n<p>Add an emotional element to your About Us page by adding details of the people that are driving the passion at your business. People find it easier to connect with human beings, so allow the personality of your crew to shine through the About Us page.</p>\r\n\r\n<p>Id aliquet risus feugiat in. Nec ullamcorper sit amet risus nullam eget felis. Sagittis nisl rhoncus mattis rhoncus.</p>\r\n<p>Aliquet sagittis id consectetur purus. Fermentum iaculis eu non diam phasellus vestibulum lorem. Libero id faucibus nisl tincidunt eget nullam non nisi est. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada.</p>\r\n<p>Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Sit amet facilisis magna etiam. Volutpat sed cras ornare arcu dui vivamus. Sociis natoque penatibus et magnis dis parturient montes nascetur. Diam maecenas ultricies mi eget mauris pharetra et.</p>\r\n<p>Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Fringilla urna porttitor rhoncus dolor purus non. </p>', NULL, 'en', 1, NULL, NULL, NULL, NULL, '2021-11-24 00:57:08', '2022-06-16 10:29:58'),
(49, 'Career', 'career', '<p>A Career Objective or a Resume Objective is essentially a heading statement that describes your professional goals in two to three sentences. Employers looking to hire an employee for a position tend to seek candidates that are driven enough to understand what they want. Whether you are starting off or set on a particular dream job, it is extremely essential to design an effective objective to stand out. Designing a resume that catches the eye of the recruiter is important. Showcasing all your skills, and highlighting work experience, and finding the perfect balance, can seem quite intimidating. Thus, taking up a Free Resume Building from Scratch session will help you streamline the process and help you create an effective resume. You will learn a step-by-step process, Do’s and Don’ts, Language & Formatting, and Live Resume Examples.</p>\r\n\r\n<h6>What’s the best resume template to use for an e-commerce resume?</h6>\r\n<p>The best resume template for e-commerce efficiently communicates the information employers need to see. Look for a template with a header in which to provide contact details and room for an objective or summary statement in addition to lists of skills, professional experience, and education.</p>\r\n<p>Our e-commerce resume sample features all of these sections as well as an additional section dedicated to certifications and affiliations. Use this template with our resume builder to create a resume in minutes.</p>\r\n\r\n<h6>What’s the best format for a resume: PDF, MS Word, or txt?</h6>\r\n<p>Check the job advertisement or description to determine which format an employer prefers for resume submission. PDF and MS Word files can display formatting, and plain text files cannot. The e-commerce resume sample includes light formatting such as bolded text, horizontal lines, and bullet points.</p>\r\n<p>If an employer has requested you to submit your resume with other documents, you might want to consider a versatile PDF file. Microsoft Word is a full-featured word processor with a wide variety of formatting options for structuring and refining the appearance of your materials. A text file can be useful for copying and pasting into a form on an online application portal.</p>\r\n\r\n<h6>What’s the best way to include digital skills on an e-commerce resume?</h6>\r\n<p>Digital skills play a major part in the success of any e-commerce candidate. Emphasize the skills requested in the description of the job you are seeking and try to make your resume reflect the employer’s priorities.</p>\r\n\r\n<h6>How can you separate your e-commerce resume from other candidates’ resumes?</h6>\r\n<p>The candidate in our e-commerce resume sample focuses on SEO, social networking, and blogging in her objective statement and sets forth more technological proficiencies in the skills section. If specific proficiency is absolutely necessary, you might want to bring it up in your summary statement or list of skills. Reference competencies related to past positions under qualifications or experience.</p>\r\n<p>One of the best ways to distinguish your resume from the competition for an e-commerce position is to tailor your experience to the job you are seeking. Also, use effective and relevant metrics throughout to make a strong case for your abilities. Write your objective or summary statement with the position you want in mind.</p>\r\n\r\n<h6>How do you list awards on your e-commerce resume?</h6>\r\n<p>You can make reference to awards considered industry standard in your summary statement or a section devoted to awards. If these honors pertain to past positions, bring them up in the corresponding entry of your professional experience section. The candidate on our e-commerce resume sample does not mention accolades, but she includes a section for certifications and affiliations that could go in the place of, before, or after an awards section.</p>\r\n', NULL, 'en', 1, NULL, NULL, NULL, NULL, '2021-11-24 00:57:18', '2021-11-24 01:30:53'),
(50, 'Affiliate', 'affiliate', '<h6>What are the most representative affiliate marketing examples?</h6>\r\n<p>Sites associated with the Amazon affiliate program abound, not so much for the commission earned but for the variety, security and prestige of Jeff Bezos’ ecommerce.</p>\r\n\r\n<p>examples of affiliate marketing strategies is Every Day Carry, an interesting site of reviews of survival articles.</p>\r\n\r\n<p>In Every Day Carry it is possible to find analyses of Swiss Army Knives, watches, flashlights, gadgets, backpacks, notebooks and other products, which are indispensable in the luggage of the adventurous public. All their links lead to Amazon products, where the purchase is made. The same happens in Gear Patrol, a site that covers a greater number of products and market niches.</p>\r\n<p>Gear Patrol is another of Amazon’s best examples of affiliate websites. It is defined as a daily men’s magazine, specializing in travel, adventure, food and technology. In addition to receiving millions of daily visits, this site has a large community of loyal followers, who are redirected to Amazon through affiliate links. It is a clear example of a win-win relationship!</p>\r\n\r\n<h6>uSwitch and the ‘Money Saving Expert’ site</h6>\r\n<p>Money Saving Expert was founded by Martin Lewis, is based in the UK and boasts one of the most inspiring affiliate marketing cases.</p>\r\n<p><strong>The purpose of this site is to teach you how to save money and educate you on the main financial instruments.</strong></p>\r\n<p>The theme of Money Saving Expert is not conducive to use the affiliate systems of Amazon, eBay or other common programs. However, this site is highly profitable thanks to the affiliate links of uSwitch, TotallyMoney, Tradedoubler or Affiliate Window, among others. Without a doubt, one of those examples of affiliate marketing to imitate.</p>\r\n\r\n<h6>The Home Depot and the ‘Consumer Search’ site</h6>\r\n<p>Consumer Search is your product recommendation and analysis site. It was created in 1999 with a curious mission: to eliminate the commercial exaggeration and dishonesty of brands on the Internet.</p>\r\n\r\n<p>By personally examining each new product, Consumer Search can recommend the best of the best from each category and market niche. Thanks to the independence of its professionals, the public relies on the transparency of their opinions.</p>\r\n<p>Consumer Search revenue comes from links to affiliates of The Home Depot, a powerful U.S. retailer of DIY and household products. While Consumer Search earns a commission for each sale, The Home Depot increases visitor traffic and achieves powerful backlinks.</p>\r\n<h6>eBay and the ‘Glory Cycles’ site</h6>\r\n<p>Glory Cycles is the result of an excellent integration of BigCommerce and the eBay catalog. This online shop specializes in products and accessories for cyclists, as well as bicycles and related equipment. According to its creators, the mission of Glory Cycles is to use the web to connect our customers with exactly what they are.</p>\r\n\r\n<p>An ecommerce affiliate program gives you scale and distribution. With affiliate marketing, you increase your reach faster and more consistently, and distribute your message to the widest possible audience on the Internet. Plus, your ecommerce business only pays affiliates after the sale takes place. When you partner your ecommerce platform with influential affiliates, they promote your products on their own sites and social media channels, leveraging their huge audiences to your advantage. In addition to increased exposure and brand awareness, the benefits of affiliate marketing include.</p>', NULL, 'en', 1, NULL, NULL, NULL, NULL, '2021-11-24 00:57:28', '2021-11-28 09:16:12'),
(71, 'FAQ', 'faq', '<p>The role of the purchasing policy is to define standard methods and procedures for the Company to purchase products and services from different vendors. This policy covers all expenses for the company including items like taxes, payroll payments, etc.  Those are defined as exceptions in the policy and proper procedures are defined to manage these payments.</p>\r\n\r\n<p>Compliance with this policy is mandatory for all employees. Noncompliance with this policy could lead to action including termination of employment. The purchasing department is responsible for maintaining and implementing the processes defined in this policy.</p>\r\n\r\n<h6>Refund Policy</h6>\r\n<p>Thanks for purchasing our products Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque.</p>\r\n<p>We offer a full money-back guarantee for all purchases made on our website. If you are not satisfied with the product that you have purchased from us, you can get your money back no questions asked. You are eligible for a full reimbursement within 14 calendar days of your purchase.</p>\r\n<p>After the 14-day period you will no longer be eligible and won\'t be able to receive a refund. We encourage our customers to try the product (or service) in the first two weeks after their purchase to ensure it fits your needs.</p>\r\n<p>If you have any additional questions or would like to request a refund, feel free to contact us.</p>\r\n\r\n<h6>Why do You Need a Refund Policy?</h6>\r\n<p>We have already stated that a refund policy is a legal agreement. If you run an online retail business or an e-commerce website, the chances are that you already have some policies on display for your customers. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque.</p>\r\n\r\n<h6>What to Include in a Refund policy?</h6>\r\n<p>People don\'t have a tendency to read long and boring legal documents online. On the other hand, you have to provide all the necessary information.</p>\r\n<p>This is why it is advised to break down your return/refund policy into smaller sections. This will increase the readability of the document, make it easier for customers to find what they need, and, at the same time, protect you legally.</p>\r\n\r\n<p>Id aliquet risus feugiat in. Nec ullamcorper sit amet risus nullam eget felis. Sagittis nisl rhoncus mattis rhoncus.</p>\r\n<p>Aliquet sagittis id consectetur purus. Fermentum iaculis eu non diam phasellus vestibulum lorem. Libero id faucibus nisl tincidunt eget nullam non nisi est. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada.</p>\r\n<p>Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Sit amet facilisis magna etiam. Volutpat sed cras ornare arcu dui vivamus. Sociis natoque penatibus et magnis dis parturient montes nascetur. Diam maecenas ultricies mi eget mauris pharetra et.</p>\r\n<p>Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Fringilla urna porttitor rhoncus dolor purus non. </p>', NULL, 'en', 1, NULL, NULL, NULL, NULL, '2022-09-04 11:00:58', '2022-09-05 09:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `method_name`, `created_at`, `updated_at`) VALUES
(1, 'Cash on Delivery', '2021-10-03 17:07:16', '2021-10-03 17:07:18'),
(2, 'Bank Transfer', '2021-10-03 17:09:11', '2021-10-03 17:09:13'),
(3, 'Stripe', '2021-10-03 17:09:54', '2021-10-03 17:09:56'),
(4, 'Paypal', '2022-05-20 09:33:54', '2022-05-20 09:33:54'),
(5, 'Razorpay', '2022-05-20 09:33:54', '2022-05-20 09:33:54'),
(6, 'Mollie', '2022-05-20 09:33:54', '2022-05-20 09:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pstatus_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_status`
--

INSERT INTO `payment_status` (`id`, `pstatus_name`, `created_at`, `updated_at`) VALUES
(1, 'Completed', '2021-10-03 16:52:47', '2021-10-03 16:52:50'),
(2, 'Pending', '2021-10-03 16:53:12', '2021-10-03 16:53:14'),
(3, 'Canceled', '2021-10-03 16:53:33', '2021-10-03 16:53:34'),
(4, 'Incompleted', '2021-10-03 16:53:57', '2021-10-03 16:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `f_thumbnail` text DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `extra_desc` text DEFAULT NULL,
  `cost_price` double(8,2) DEFAULT NULL,
  `sale_price` double(8,2) DEFAULT NULL,
  `old_price` double(8,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_discount` int(11) DEFAULT NULL,
  `is_stock` int(11) DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `stock_status_id` int(11) DEFAULT NULL,
  `stock_qty` int(11) DEFAULT NULL,
  `u_stock_qty` int(11) DEFAULT NULL,
  `category_ids` varchar(191) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `label_id` int(11) DEFAULT NULL,
  `variation_color` text DEFAULT NULL,
  `variation_size` text DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `og_title` text DEFAULT NULL,
  `og_image` text DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `f_thumbnail`, `short_desc`, `description`, `extra_desc`, `cost_price`, `sale_price`, `old_price`, `start_date`, `end_date`, `is_discount`, `is_stock`, `sku`, `stock_status_id`, `stock_qty`, `u_stock_qty`, `category_ids`, `cat_id`, `brand_id`, `collection_id`, `label_id`, `variation_color`, `variation_size`, `tax_id`, `is_featured`, `is_publish`, `user_id`, `lan`, `og_title`, `og_image`, `og_description`, `og_keywords`, `created_at`, `updated_at`) VALUES
(130, 'Hand Painted Bread', 'hand-painted-bread', '02082022144346-400x400-3.jpg', 'Bread is a staple food prepared from a dough of flour (usually wheat) and water, usually by baking.', '<p><font color=\"#202122\" face=\"sans-serif\">Bread is a staple food prepared from a dough of flour (usually wheat) and water, usually by baking. Throughout recorded history and around the world, it has been an important part of many cultures\' diets. It is one of the oldest human-made foods, having been of significance since the dawn of agriculture, and plays an essential role in both religious rituals and secular culture.</font></p><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><ul><li><font color=\"#202122\" face=\"sans-serif\">Bread is one of the oldest prepared foods.</font></li><li><font color=\"#202122\" face=\"sans-serif\">Evidence from 30,000 years ago in Europe and Australia revealed starch residue on rocks used for pounding plants.</font></li><li><font color=\"#202122\" face=\"sans-serif\">It is possible that during this time, starch extract from the roots of plants, such as cattails and ferns, was spread on a flat rock, placed over a fire, and cooked into a primitive form of flatbread.</font></li><li><font color=\"#202122\" face=\"sans-serif\">The world\'s oldest evidence of bread-making has been found in a 14,500-year-old Natufian site in Jordan\'s northeastern desert.</font></li><li><font color=\"#202122\" face=\"sans-serif\">&nbsp;Around 10,000 BC, with the dawn of the Neolithic age and the spread of agriculture, grains became the mainstay of making bread.</font></li><li><font color=\"#202122\" face=\"sans-serif\">Yeast spores are ubiquitous, including on the surface of cereal grains, so any dough left to rest leavens naturally.</font></li></ul><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><p><font color=\"#202122\" face=\"sans-serif\">An early leavened bread was baked as early as 6000 BC by the Sumerians, who may have passed on their knowledge to the Egyptians around 3000 BC. The Egyptians refined the process and started adding yeast to the flour. The Sumerians were already using ash to supplement the dough as it was baked.</font></p><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><p><br></p>', NULL, 15.00, 24.00, NULL, NULL, NULL, 0, 1, 'T-906', 1, 200, NULL, '4', 4, 3, 0, NULL, NULL, 'Kg', 38, 1, 1, 47, 'en', 'Hand Painted Bread', '19082022104904-600x600-1-hand-painted-bread.jpg', 'Bread is a staple food prepared from a dough of flour (usually wheat) and water, usually by baking.', 'Hand, Painted, Bread', '2022-07-31 00:58:10', '2022-09-02 05:38:09'),
(131, 'White bread Bakery Sliced bread Loaf', 'white-bread-bakery-sliced-bread-loaf', '02082022144310-400x400-4.jpg', 'Bread is a staple food prepared from a dough of flour (usually wheat) and water, usually by baking.', '<p><font color=\"#202122\" face=\"sans-serif\">Bread is a staple food prepared from a dough of flour (usually wheat) and water, usually by baking. Throughout recorded history and around the world, it has been an important part of many cultures\' diets. It is one of the oldest human-made foods, having been of significance since the dawn of agriculture, and plays an essential role in both religious rituals and secular culture.</font></p><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><ul><li><font color=\"#202122\" face=\"sans-serif\">Bread is one of the oldest prepared foods.</font></li><li><font color=\"#202122\" face=\"sans-serif\">Evidence from 30,000 years ago in Europe and Australia revealed starch residue on rocks used for pounding plants.</font></li><li><font color=\"#202122\" face=\"sans-serif\">It is possible that during this time, starch extract from the roots of plants, such as cattails and ferns, was spread on a flat rock, placed over a fire, and cooked into a primitive form of flatbread.</font></li><li><font color=\"#202122\" face=\"sans-serif\">The world\'s oldest evidence of bread-making has been found in a 14,500-year-old Natufian site in Jordan\'s northeastern desert.</font></li><li><font color=\"#202122\" face=\"sans-serif\">&nbsp;Around 10,000 BC, with the dawn of the Neolithic age and the spread of agriculture, grains became the mainstay of making bread.</font></li><li><font color=\"#202122\" face=\"sans-serif\">Yeast spores are ubiquitous, including on the surface of cereal grains, so any dough left to rest leavens naturally.</font></li></ul><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><p><font color=\"#202122\" face=\"sans-serif\">An early leavened bread was baked as early as 6000 BC by the Sumerians, who may have passed on their knowledge to the Egyptians around 3000 BC. The Egyptians refined the process and started adding yeast to the flour. The Sumerians were already using ash to supplement the dough as it was baked.</font></p><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><p><br></p>', NULL, 40.00, 50.00, NULL, NULL, NULL, NULL, 1, 'WB-3489', 1, 400, NULL, '4', 4, 5, 0, NULL, NULL, 'Kg', 38, 1, 1, 47, 'en', 'White bread Bakery Sliced bread Loaf', '19082022104438-600x600-1-w-bread.jpg', 'Bread is a staple food prepared from a dough of flour (usually wheat) and water, usually by baking.', 'White bread Bakery Sliced bread Loaf', '2022-07-31 06:01:13', '2022-08-22 11:34:44'),
(132, 'Croissant Pain au chocolat Viennoiserie Danish pastry Puff pastry', 'croissant-pain-au-chocolat-viennoiserie-danish-pastry-puff-pastry-2', '19082022103844-400x400-2-pastry.jpg', 'Pastry is baked food made with a dough of flour, water and shortening (solid fats, including butter or lard) that may be savoury or sweetened.', '<p>The pastry is baked food made with a dough of flour, water, and shortening (solid fats, including butter or lard) that may be savory or sweetened. Sweetened pastries are often described as bakers\' confectionery. The word \"pastries\" suggests many kinds of baked products made from ingredients such as flour, sugar, milk, butter, shortening, baking powder, and eggs. Small tarts and other sweet baked products are called pastries. Common pastry dishes include pies, tarts, quiches, croissants, and pasties.</p><p><br></p><ul><li>The French word pâtisserie is also used in English (with or without the accent) for the same foods.</li><li>Originally, the French word patisserie referred to anything, such as a meat pie, made in the dough (paste, later pâte) and not typically a luxurious or sweet product.</li><li>This meaning persisted in the nineteenth century, though by then the term more often referred to the sweet and often ornate confections implied today.</li></ul><p>Pastry can also refer to the pastry dough,[4] from which such baked products are made. Pastry dough is rolled out thinly and used as a base for baked products.</p><p><br></p><p><br></p><p><br></p>', NULL, 30.00, 40.00, NULL, NULL, NULL, NULL, 1, 'P-43546', 1, 200, NULL, '4', 4, 3, 0, NULL, NULL, 'Kg', 38, 1, 1, 47, 'en', 'Croissant Pain au chocolat Viennoiserie Danish pastry Puff pastry', '19082022103844-400x400-2-pastry.jpg', 'Pastry is baked food made with a dough of flour, water and shortening (solid fats, including butter or lard) that may be savoury or sweetened.', 'Croissant Pain au chocolat Viennoiserie Danish pastry Puff pastry', '2022-07-31 06:20:31', '2022-08-22 11:33:31'),
(133, 'Green tea Coffee Iced tea Lemon', 'green-tea-coffee-iced-tea-lemon', '19082022103010-400x400-1-green-tea.jpg', 'Green tea is a type of tea that is made from Camellia sinensis leaves', '<p><font color=\"#202122\" face=\"sans-serif\">Green tea is a type of tea that is made from Camellia sinensis leaves and buds that have not undergone the same withering and oxidation process used to make oolong teas and black teas. Green tea originated in China, and since then its production and manufacture have spread to other countries in East Asia.</font></p><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><ul><li><font color=\"#202122\" face=\"sans-serif\">Several varieties of green tea exist, which differ substantially based on the variety of C. Sinensis used in growing conditions, horticultural methods, production processing, and time of harvest. </font></li><li><font color=\"#202122\" face=\"sans-serif\">Although there has been considerable research on the possible health effects of consuming green tea regularly, there is little evidence that drinking green tea has any effects on health.</font></li></ul><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><p><font color=\"#202122\" face=\"sans-serif\">Regular green tea is 99.9% water, provides 1 kcal per 100 mL serving, is devoid of significant nutrient content (table), and contains phytochemicals such as polyphenols and caffeine.</font></p><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><p><font color=\"#202122\" face=\"sans-serif\"><br></font></p><p><br></p>', NULL, 90.00, 100.00, 125.00, '2022-09-02', '2022-08-06', 0, 1, 'GT-7842', 1, 400, NULL, '11', 11, 5, 0, NULL, NULL, 'Box', 38, 1, 1, 47, 'en', 'Green tea Coffee Iced tea Lemon', '19082022103010-400x400-1-green-tea.jpg', 'Green tea is a type of tea that is made from Camellia sinensis leaves', 'Green tea Coffee Iced tea Lemon', '2022-07-31 07:31:08', '2022-09-02 05:34:14'),
(134, 'Coffee Latte Cappuccino', 'coffee-latte-cappuccino', '02082022144027-400x400-4.jpg', 'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain flowering plants in the Coffea genus.', '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#202122\" face=\"sans-serif\">Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain flowering plants in the Coffea genus. From the coffee fruit, the seeds are separated to produce a stable, raw product: unroasted green coffee. The seeds are then roasted, a process that transforms them into a consumable product: roasted coffee, which is ground into fine particles that are typically steeped in hot water before being filtered out, producing a cup of coffee.</font></p><ul><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#202122\" face=\"sans-serif\">Coffee is darkly colored, bitter, slightly acidic, and has a stimulating effect on humans, primarily due to its caffeine content.</font></li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#202122\" face=\"sans-serif\">It is one of the most popular drinks in the world[4] and can be prepared and presented in a variety of ways.</font></li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#202122\" face=\"sans-serif\">It is usually served hot, although chilled or iced coffee is common. Sugar, sugar substitutes, milk, or cream are often used to lessen the bitter taste or enhance the flavor.</font></li></ul><p style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#202122\" face=\"sans-serif\">It may be served with coffee cake or another sweet dessert, like doughnuts.</font></p>', NULL, NULL, 80.00, NULL, NULL, NULL, NULL, 1, 'C-743248', 1, 700, NULL, '11', 11, 5, 0, NULL, NULL, 'Box', 38, 1, 1, 47, 'en', 'Coffee Latte Cappuccino', '19082022102541-600x600-1-coffee-latte.jpg', 'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain flowering plants in the Coffea genus.', 'Coffee Latte Cappuccino', '2022-07-31 07:43:12', '2022-09-02 05:32:09'),
(135, 'Herbal tea Clove Spice Flavor', 'herbal-tea-clove-spice-flavor-2', '19082022101914-600x600-1-herbal-tea.jpg', 'Herbal teas, also known as herbal infusions and less commonly called tisanes', '<p>Herbal teas, also known as herbal infusions and less commonly called tisanes are beverages made from the infusion or decoction of herbs, spices, or other plant material in hot water. Oftentimes herb tea or the plain term tea is used as a reference to all sorts of herbal teas. Some herbal blends contain actual tea.</p><p><br></p><ul><li>The term \"herbal\" tea is often used in contrast to the so-called true teas (e.g., black, green, white, yellow, oolong), which are prepared from the cured leaves of the tea plant, Camellia sinensis.</li><li>Unlike true teas (which are also available decaffeinated), most tisanes do not naturally contain caffeine.</li><li>There are several plants, however, that do contain caffeine or another stimulant, like theobromine, cocaine, or ephedrine. Some common infusions have specific names such as coffee, mate (yerba mate), and rooibos (Aspalathus linearis).</li></ul><p><br></p><p>Herbal teas can be made with fresh or dried flowers, fruit, leaves, seeds, or roots. They are made by pouring boiling water over the plant parts and letting them steep for a few minutes. The herbal tea is then strained, sweetened if desired, and served. Many companies produce herbal tea bags for such infusions.</p>', NULL, 47.00, 60.00, NULL, NULL, NULL, NULL, 1, 'HT-t787', 1, 1000, NULL, '11', 11, 5, 0, NULL, NULL, 'Box', 38, 1, 1, 47, 'en', 'Herbal tea Clove Spice Flavor', '19082022101914-600x600-1-herbal-tea.jpg', 'Herbal teas, also known as herbal infusions and less commonly called tisanes', 'Herbal tea Clove Spice Flavor', '2022-07-31 07:56:55', '2022-09-02 05:31:09'),
(136, 'Almond (Badam)', 'almond-badam', '19082022100759-400x400-1-almond-badam.jpg', 'The almond is a species of tree native to Iran and surrounding countries, including the Levant.', '<p>The almond is a species of tree native to Iran and surrounding countries, including the Levant. The almond is also the name of the edible and widely cultivated seed of this tree. Within the genus Prunus, it is classified with the peach in the subgenus Amygdalus, distinguished from the other subgenera by corrugations on the shell (endocarp) surrounding the seed.</p><p><br></p><ul><li>The fruit of the almond is a drupe, consisting of an outer hull and a hard shell with the seed, which is not a true nut.</li><li>Shelling almonds refers to removing the shell to reveal the seed.</li><li>Almonds are sold shelled or unshelled. Blanched almonds are shelled almonds that have been treated with hot water to soften the seedcoat, which is then removed to reveal the white embryo.</li><li>Once almonds are cleaned and processed, they can be stored over time. Almonds are used in many food cuisines, often featuring prominently in desserts, such as marzipan.</li></ul><p>The almond tree prospers in a moderate Mediterranean climate with cool winter weather. California produces over half of the world\'s almond supply. Due to high acreage and water demand for almond cultivation, and the need for pesticides, California almond production may be unsustainable, especially during the persistent drought and heat from climate change in the 21st century. Droughts in California have caused some producers to leave the industry, leading to lower supply and increased prices.</p><p><br></p><p><br></p><p><br></p>', NULL, 50.00, 70.00, NULL, NULL, NULL, NULL, 1, 'T-678', 1, 200, NULL, '10', 10, 1, 0, NULL, NULL, 'Kg', 38, 1, 1, 63, 'en', 'Almond (Badam)', '19082022100759-400x400-1-almond-badam.jpg', 'The almond is a species of tree native to Iran and surrounding countries, including the Levant.', 'Almond (Badam)', '2022-07-31 08:31:48', '2022-08-22 11:28:57'),
(137, 'Shara Cashew Nuts (Kaju) 1Kg', 'shara-cashew-nuts-kaju-1kg', '19082022100202-400x400-1-cashews.jpg', 'The cashew tree (Anacardium occidentale) is a tropical evergreen tree that produces the cashew seed and the cashew apple accessory fruit.', '<p>The cashew tree (Anacardium occidentale) is a tropical evergreen tree that produces the cashew seed and the cashew apple accessory fruit. The tree can grow as tall as 14 meters (46 feet), but the dwarf cultivars, growing up to 6 m (20 ft), prove more profitable, with earlier maturity and greater yields. The cashew seed is commonly considered a snack nut (cashew nut) eaten on its own, used in recipes, or processed into cashew cheese or cashew butter. Like the tree, the nut is often simply called cashew.</p><p><br></p><ul><li>Cashew allergies are triggered by the proteins found in tree nuts, and cooking often does not remove or change these proteins.</li><li>As well to the nut and fruit, the plant has several other uses.</li><li>The shell of the cashew seed yields derivatives that can be used in many applications including lubricants, waterproofing, paints, and, starting in World War II, arms production.</li><li>The cashew apple is a light reddish to yellow fruit, whose pulp and juice can be processed into a sweet, astringent fruit drink or fermented and distilled into liquor.</li></ul><p>Its English name derives from the Portuguese name for the fruit of the cashew tree: caju , also known as acaju, which itself is from the Tupian word acajú, literally meaning \"nut that produces itself\"</p>', NULL, 65.00, 75.00, NULL, NULL, NULL, NULL, 1, 'U-y8546', 1, 98, NULL, '10', 10, 1, 0, NULL, NULL, 'Kg', 38, 0, 1, 63, 'en', 'Shara Cashew Nuts (Kaju) 1Kg', '19082022100202-400x400-1-cashews.jpg', 'The cashew tree (Anacardium occidentale) is a tropical evergreen tree that produces the cashew seed and the cashew apple accessory fruit.', 'Shara Cashew Nuts (Kaju) 1Kg', '2022-07-31 09:23:45', '2022-09-02 05:06:50'),
(138, 'Mixed dry fruits and nuts premium 500 gm', 'mixed-dry-fruits-and-nuts-premium-500-gm-2', '19082022094844-400x400-1-mixed-dry-fruits.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', '<p>The cashew tree (Anacardium occidentale) is a tropical evergreen tree that produces the cashew seed and the cashew apple accessory fruit. The tree can grow as tall as 14 meters (46 feet), but the dwarf cultivars, growing up to 6 m (20 ft), prove more profitable, with earlier maturity and greater yields. The cashew seed is commonly considered a snack nut (cashew nut) eaten on its own, used in recipes, or processed into cashew cheese or cashew butter. Like the tree, the nut is often simply called cashew.</p><p><br></p><ul><li>Cashew allergies are triggered by the proteins found in tree nuts, and cooking often does not remove or change these proteins.</li><li>As well to the nut and fruit, the plant has several other uses.</li><li>The shell of the cashew seed yields derivatives that can be used in many applications including lubricants, waterproofing, paints, and, starting in World War II, arms production.</li><li>The cashew apple is a light reddish to yellow fruit, whose pulp and juice can be processed into a sweet, astringent fruit drink or fermented and distilled into liquor.</li></ul><p>Its English name derives from the Portuguese name for the fruit of the cashew tree: caju , also known as acaju, which itself is from the Tupian word acajú, literally meaning \"nut that produces itself\"</p>', NULL, 65.00, 85.00, NULL, NULL, NULL, NULL, 1, 'u-6589', 1, 800, NULL, '10', 10, 2, 0, NULL, NULL, 'Kg', 38, 1, 1, 63, 'en', 'Mixed dry fruits and nuts premium 500 gm', '19082022094844-400x400-1-mixed-dry-fruits.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', 'Mixed dry fruits and nuts premium 500 gm', '2022-07-31 10:07:27', '2022-09-02 05:03:35'),
(139, 'Sandwich', 'sandwich', '02082022143652-400x400-1.jpg', 'A sandwich is a food typically consisting of vegetables, sliced cheese, or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type.', '<p>A sandwich is a food typically consisting of vegetables, sliced cheese, or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type. The sandwich began as portable, convenient finger food in the Western world, though over time it has become prevalent worldwide.</p><p><br></p><ul><li>Sandwiches are a popular type of lunch food, taken to work, school, or picnics to be eaten as part of a packed lunch.</li><li>The bread may be plain or be coated with condiments, such as mayonnaise or mustard, to enhance its flavor and texture.</li><li>As well as being homemade, sandwiches are also widely sold in various retail outlets and can be served hot or cold.</li><li>There are both savory sandwiches, such as deli meat sandwiches, and sweet sandwiches, such as peanut butter and jelly sandwich.</li></ul><p><br></p><p>The sandwich is named after its supposed inventor, John Montagu, 4th Earl of Sandwich. The Wall Street Journal has described it as Britain\'s \"biggest contribution to gastronomy\".</p>', NULL, 15.00, 20.00, NULL, NULL, NULL, NULL, 1, 'S-54680', 1, 40, NULL, '6', 6, 4, 0, NULL, NULL, 'Kg', 38, 1, 1, 62, 'en', 'Sandwich', '19082022093540-600x600-1-sandwich.jpg', 'A sandwich is a food typically consisting of vegetables, sliced cheese, or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type.', 'Sandwich', '2022-07-31 10:39:37', '2022-09-02 05:01:13'),
(140, 'Fried Chicken Wings', 'fried-chicken-wings', '02082022143530-400x400-5.jpg', 'Fried chicken, also known as Southern fried chicken, is a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried.', '<p>Fried chicken, also known as Southern fried chicken, is a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried. </p><ul><li>The breading adds a crisp coating or crust to the exterior of the chicken while retaining juices in the meat.</li><li> Broiler chickens are most commonly used.</li><li>The first dish known to have been deep fried was frittered, which was popular in the European Middle Ages. </li><li>However, the Scottish were the first Europeans to deep fry their chicken in fat (though without seasoning). </li><li>Meanwhile, many West African peoples had traditions of seasoned fried chicken (though battering and cooking the chicken in palm oil).</li></ul><p>Scottish frying techniques and West African seasoning techniques were combined by enslaved Africans and African-Americans in the American South</p>', NULL, 54.00, 75.00, NULL, NULL, NULL, NULL, 1, 'FCW-564', 1, 200, NULL, '6', 6, 4, 0, NULL, NULL, 'Kg', 38, 1, 1, 62, 'en', 'Fried Chicken Wings', '19082022054547-600x600-1-chicken-wings.jpg', 'Fried chicken, also known as Southern fried chicken, is a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried.', 'Fried Chicken Wings', '2022-07-31 10:55:17', '2022-09-02 04:59:55'),
(141, 'Pizza', 'pizza', '02082022143457-400x400-8.jpg', 'Pizza is a dish of Italian origin consisting of a usually round', '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#202122\" face=\"sans-serif\">Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven. A small pizza is sometimes called a pizzetta.&nbsp;</font></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#202122\" face=\"sans-serif\"><br></font></p><ul><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#202122\" face=\"sans-serif\">A person who makes pizza is known as a pizzaiolo.</font></li></ul><ul><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#202122\" face=\"sans-serif\">In Italy, pizza served in a restaurant is presented unsliced, and is eaten with the use of a knife and fork.</font></li></ul><p style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#202122\" face=\"sans-serif\"><br></font></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#202122\" face=\"sans-serif\">In casual settings, however, it is cut into wedges to be eaten while held in the hand.</font></p>', NULL, 40.00, 60.00, NULL, NULL, NULL, NULL, 1, 'P-576', 1, 200, NULL, '6', 6, 4, 0, NULL, NULL, 'Kg', 38, 1, 1, 62, 'en', 'Pizza', '19082022052814-600x600-1-pizza.jpg', 'Pizza is a dish of Italian origin consisting of a usually round', 'Pizza', '2022-07-31 11:18:49', '2022-09-02 04:58:16'),
(142, 'Peach', 'peach', '02082022143408-400x400-18.jpg', 'The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in the Zhejiang province of Eastern China.', '<p>The blackberry is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus, and hybrids between the subgenera Rubus and Idaeobatus. <br></p><ul><li>The taxonomy of blackberries has historically been confused because of hybridization and apomixis, so species have often been grouped and called species aggregates.</li><li>For example, the entire subgenus Rubus has been called the Rubus fruticosus aggregate, although the species R. fruticosus is considered a synonym of R. plicatus.</li></ul><p>Rubus armeniacus (\"Himalayan\" blackberry) is considered a noxious weed and invasive species in many regions of the Pacific Northwest of Canada and the United States, where it grows out of control in urban and suburban parks and woodlands.</p><p><br></p>', NULL, 60.00, 80.00, NULL, NULL, NULL, 0, 1, 'P-43524', 1, 1000, NULL, '2', 2, 6, 0, NULL, NULL, 'Kg', 38, 1, 1, 47, 'en', 'Peach', '19082022051624-600x600-1-peach.jpg', 'The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in the Zhejiang province of Eastern China.', 'Peach', '2022-07-31 11:34:03', '2022-09-02 04:56:21'),
(143, 'Passion', 'passion', '01082022174052-400x400-4.jpg', 'Passiflora edulis, commonly known as passion fruit, is a vine species of passion flower native to southern Brazil through Paraguay and northern Argentina.', '<p>The blackberry is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus, and hybrids between the subgenera Rubus and Idaeobatus.&nbsp;</p><p><br></p><ul><li>The taxonomy of blackberries has historically been confused because of hybridization and apomixis, so species have often been grouped and called species aggregates.</li><li>For example, the entire subgenus Rubus has been called the Rubus fruticosus aggregate, although the species R. fruticosus is considered a synonym of R. plicatus.</li></ul><p><br></p><p>Rubus armeniacus (\"Himalayan\" blackberry) is considered a noxious weed and invasive species in many regions of the Pacific Northwest of Canada and the United States, where it grows out of control in urban and suburban parks and woodlands.</p><br>', NULL, 30.00, 50.00, NULL, NULL, NULL, NULL, 1, 'P-4834', 1, 400, NULL, '2', 2, 6, 1, NULL, NULL, 'Kg', 38, 1, 1, 48, 'en', 'Passion', '19082022050242-600x600-1-passion.jpg', 'Passiflora edulis, commonly known as passion fruit, is a vine species of passion flower native to southern Brazil through Paraguay and northern Argentina.', 'Passion', '2022-07-31 11:39:59', '2022-09-02 04:54:32'),
(144, 'Blackberry', 'blackberry', '19082022044622-400x400-1-blackberry.jpg', 'The blackberry is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus, and hybrids between the subgenera Rubus and Idaeobatus.', '<p>The blackberry is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus, and hybrids between the subgenera Rubus and Idaeobatus.&nbsp;</p><p><br></p><ul><li>The taxonomy of blackberries has historically been confused because of hybridization and apomixis, so species have often been grouped and called species aggregates.</li><li>For example, the entire subgenus Rubus has been called the Rubus fruticosus aggregate, although the species R. fruticosus is considered a synonym of R. plicatus.</li></ul><p><br></p><p>Rubus armeniacus (\"Himalayan\" blackberry) is considered a noxious weed and invasive species in many regions of the Pacific Northwest of Canada and the United States, where it grows out of control in urban and suburban parks and woodlands.</p><p><br></p>', NULL, 20.00, 40.00, NULL, NULL, NULL, NULL, 1, 'BB-3428', 1, 100, NULL, '2', 2, 6, 0, NULL, NULL, 'Kg', 38, 1, 1, 63, 'en', 'Blackberry', '19082022044622-400x400-1-blackberry.jpg', 'The blackberry is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus, and hybrids between the subgenera Rubus and Idaeobatus.', 'Blackberry', '2022-07-31 11:56:38', '2022-09-02 04:49:56'),
(145, 'Raw Chicken Legs', 'raw-chicken-legs', '19082022043919-600x600-1-raw-chicken-legs.jpg', 'Chicken is the most common type of poultry in the world.', '<p>Chicken is the most common type of poultry in the world. Owing to the relative ease and low cost of raising chickens—in comparison to mammals such as cattle or hogs—chicken meat (commonly called just \"chicken\") and chicken eggs have become prevalent in numerous cuisines.</p><ul><li>Chicken can be prepared in a vast range of ways, including baking, grilling, barbecuing, frying, and boiling.</li><li>Since the latter half of the 20th century, prepared chicken has become a staple of fast food.</li><li>Chicken is sometimes cited as being more healthful than red meat, with lower concentrations of cholesterol and saturated fat.</li></ul><p>The poultry farming industry that accounts for chicken production takes on a range of forms across different parts of the world. In developed countries, chickens are typically subject to intensive farming methods while less-developed areas raise chickens using more traditional farming techniques. The United Nations estimates there to be 19 billion chickens on Earth today, making them outnumber humans by more than two to one</p><p><br></p>', NULL, 70.00, 80.00, NULL, NULL, NULL, 0, 1, 'CL-456', 1, 800, NULL, '8', 8, 2, 0, NULL, NULL, 'Kg', 38, 1, 1, 47, 'en', 'Raw Chicken Legs', '19082022043919-600x600-1-raw-chicken-legs.jpg', 'Chicken is the most common type of poultry in the world.', 'Raw Chicken Legs', '2022-07-31 12:04:15', '2022-09-02 04:48:32'),
(146, 'Rack of Lamb', 'rack-of-lamb-2', '01082022173248-400x400-1.jpg', 'Fried chicken, also known as Southern fried chicken, is a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried.', '<br><p>Fried chicken, also known as Southern fried chicken, is a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried.</p><p><br></p><ul><li>The breading adds a crisp coating or crust to the exterior of the chicken while retaining juices in the meat. Broiler chickens are most commonly used.</li><li>The first dish known to have been deep fried was frittered, which was popular in the European Middle Ages.</li><li>However, the Scottish were the first Europeans to deep fry their chicken in fat (though without seasoning).</li><li>Meanwhile, many West African peoples had traditions of seasoned fried chicken (though battering and cooking the chicken in palm oil)</li></ul><p><br></p><p>Scottish frying techniques and West African seasoning techniques were combined by enslaved Africans and African-Americans in the American South<br></p>', NULL, 30.00, 100.00, 80.00, '2022-08-01', '2022-08-31', NULL, 1, 'L-5736', 1, 456, NULL, '8', 8, 7, 0, NULL, NULL, 'Kg', 38, 1, 1, 47, 'en', 'Rack of Lamb', '19082022042756-600x600-1-rack-of-lamb.jpg', 'Fried chicken, also known as Southern fried chicken, is a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried.', 'Rack of Lamb', '2022-07-31 12:11:57', '2022-09-02 04:28:23'),
(147, 'Chicken', 'chicken', '19082022041622-400x400-1-chicken.jpg', 'Fried chicken, also known as Southern fried chicken, is a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried.', '<p>Fried chicken, also known as Southern fried chicken, is a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried.</p><p><br></p><ul><li>The breading adds a crisp coating or crust to the exterior of the chicken while retaining juices in the meat. Broiler chickens are most commonly used.</li><li>The first dish known to have been deep fried was frittered, which was popular in the European Middle Ages. </li><li>However, the Scottish were the first Europeans to deep fry their chicken in fat (though without seasoning). </li><li>Meanwhile, many West African peoples had traditions of seasoned fried chicken (though battering and cooking the chicken in palm oil)</li></ul><p><br></p><p>Scottish frying techniques and West African seasoning techniques were combined by enslaved Africans and African-Americans in the American South</p>\r\n<br>', NULL, 80.00, 90.00, NULL, NULL, NULL, NULL, 1, 'C-675', 1, 879, NULL, '8', 8, 2, 0, NULL, NULL, 'Kg', 38, 1, 1, 63, 'en', 'Chicken', '19082022041622-400x400-1-chicken.jpg', 'Fried chicken, also known as Southern fried chicken, is a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried.', 'Chicken', '2022-07-31 12:16:38', '2022-09-02 04:26:20'),
(148, 'Squid', 'squid', '19082022040651-600x600-1-squid.jpg', 'Seafood is any form of sea life regarded as food by humans, prominently including fish and shellfish.', '<p>Seafood is any form of sea life regarded as food by humans, prominently including fish and shellfish. Shellfish include various species of mollusks (e.g. bivalve mollusks such as clams, oysters, and mussels, and cephalopods such as octopus and squid), crustaceans (e.g. shrimp, crabs, and lobster), and echinoderms (e.g. sea cucumbers and sea urchins). Historically, marine mammals such as cetaceans (whales and dolphins) as well as seals have been eaten as food, though that happens to a lesser extent in modern times. Edible sea plants such as some seaweeds and microalgae are widely eaten as sea vegetables around the world, especially in Asia.</p><ul><li>Seafood is an important source of (animal) protein in many diets around the world, especially in coastal areas.</li><li>Semi-vegetarians who consume seafood as the only source of meat are said to adhere to pescetarianism.</li><li>The harvesting of wild seafood is usually known as fishing or hunting, while the cultivation and farming of seafood are known as aquaculture and fish farming (in the case of fish).</li><li>Most of the seafood harvest is consumed by humans, but a significant proportion is used as fish food to farm other fish or rear farm animals.</li><li>Some seafood (i.e. kelp) is used as food for other plants (a fertilizer).</li><li>In these ways, seafood is used to produce further food for human consumption.</li><li>Also, products such as fish oil and spirulina tablets are extracted from seafood. <br></li></ul><p>Some seafood is fed to aquarium fish or used to feed domestic pets such as cats. A small proportion is used in medicine or is used industrially for nonfood purposes (e.g. leather).</p>', NULL, 45.00, 60.00, NULL, NULL, NULL, NULL, 1, 'Fs-678', 1, 967, NULL, '9', 9, 4, 1, NULL, NULL, 'Kg', 38, 1, 1, 62, 'en', 'Squid', '19082022040651-600x600-1-squid.jpg', 'Seafood is any form of sea life regarded as food by humans, prominently including fish and shellfish.', 'Squid', '2022-07-31 12:43:41', '2022-09-02 04:23:58'),
(149, 'Crayfish', 'crayfish', '19082022035247-600x600-1-crayfish.jpg', 'Seafood is any form of sea life regarded as food by humans, prominently including fish and shellfish.', '<p>Seafood is any form of sea life regarded as food by humans, prominently including fish and shellfish. Shellfish include various species of mollusks (e.g. bivalve mollusks such as clams, oysters, and mussels, and cephalopods such as octopus and squid), crustaceans (e.g. shrimp, crabs, and lobster), and echinoderms (e.g. sea cucumbers and sea urchins). Historically, marine mammals such as cetaceans (whales and dolphins) as well as seals have been eaten as food, though that happens to a lesser extent in modern times. Edible sea plants such as some seaweeds and microalgae are widely eaten as sea vegetables around the world, especially in Asia.</p><p><br></p><ul><li>Seafood is an important source of (animal) protein in many diets around the world, especially in coastal areas.</li><li>Semi-vegetarians who consume seafood as the only source of meat are said to adhere to pescetarianism.</li><li>The harvesting of wild seafood is usually known as fishing or hunting, while the cultivation and farming of seafood are known as aquaculture and fish farming (in the case of fish).</li><li>Most of the seafood harvest is consumed by humans, but a significant proportion is used as fish food to farm other fish or rear farm animals.</li><li>Some seafood (i.e. kelp) is used as food for other plants (a fertilizer).</li><li>In these ways, seafood is used to produce further food for human consumption.</li><li>Also, products such as fish oil and spirulina tablets are extracted from seafood.&nbsp;</li></ul><p><br></p><p>Some seafood is fed to aquarium fish or used to feed domestic pets such as cats. A small proportion is used in medicine or is used industrially for nonfood purposes (e.g. leather).</p>', NULL, 70.00, 98.00, 115.00, '2022-09-02', '2023-12-28', 1, 1, 'HU-89576', 1, 100, NULL, '9', 9, 4, 1, NULL, NULL, 'Kg', 38, 1, 1, 62, 'en', 'Crayfish', '19082022035247-600x600-1-crayfish.jpg', 'Seafood is any form of sea life regarded as food by humans, prominently including fish and shellfish.', 'Crayfish', '2022-07-31 13:21:03', '2022-09-02 04:21:05'),
(150, 'Snow Crab', 'snow-crab', '19082022032359-600x600-1-snow-crab.jpg', 'Seafood is any form of sea life regarded as food by humans, prominently including fish and shellfish.', '<p>Seafood is any form of sea life regarded as food by humans, prominently including fish and shellfish. Shellfish include various species of mollusks (e.g. bivalve mollusks such as clams, oysters, and mussels, and cephalopods such as octopus and squid), crustaceans (e.g. shrimp, crabs, and lobster), and echinoderms (e.g. sea cucumbers and sea urchins). Historically, marine mammals such as cetaceans (whales and dolphins) as well as seals have been eaten as food, though that happens to a lesser extent in modern times. Edible sea plants such as some seaweeds and microalgae are widely eaten as sea vegetables around the world, especially in Asia.</p><p><br></p><ul><li>Seafood is an important source of (animal) protein in many diets around the world, especially in coastal areas.</li><li>Semi-vegetarians who consume seafood as the only source of meat are said to adhere to pescetarianism.</li><li>The harvesting of wild seafood is usually known as fishing or hunting, while the cultivation and farming of seafood are known as aquaculture and fish farming (in the case of fish).</li><li>Most of the seafood harvest is consumed by humans, but a significant proportion is used as fish food to farm other fish or rear farm animals.</li><li>Some seafood (i.e. kelp) is used as food for other plants (a fertilizer).</li><li>In these ways, seafood is used to produce further food for human consumption.</li><li>Also, products such as fish oil and spirulina tablets are extracted from seafood.&nbsp;</li></ul><p><br></p><p>Some seafood is fed to aquarium fish or used to feed domestic pets such as cats. A small proportion is used in medicine or is used industrially for nonfood purposes (e.g. leather).</p>', NULL, 110.00, 130.00, 153.00, '2022-09-02', '2023-12-28', 1, 1, 'J-768', 1, 300, NULL, '9', 9, 2, 1, NULL, NULL, 'Kg', 38, 1, 1, 63, 'en', 'Snow Crab', '19082022032359-600x600-1-snow-crab.jpg', 'Seafood is any form of sea life regarded as food by humans, prominently including fish and shellfish.', 'Snow Crab', '2022-07-31 13:45:31', '2022-09-02 04:14:48'),
(151, 'Cocktail Soft Drink Juice', 'cocktail-soft-drink-juice', '01082022173019-400x400-17.jpg', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables.', '<p>Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables.</p><p><br></p><ul><li>It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice.</li><li>Juice is commonly consumed as a beverage or used as an ingredient or flavoring in foods or other beverages, such as smoothies.</li><li>Juice emerged as a popular beverage choice after the development of pasteurization methods enabled its preservation without using fermentation (which is used in wine production).</li></ul><p><br></p><p>The largest fruit juice consumers are New Zealand (nearly a cup, or 8 ounces, each day) and Colombia (more than three-quarters of a cup each day). Fruit juice consumption on average increases with the country\'s income level.</p><p><br></p>', NULL, 30.00, 40.00, 49.00, '2022-09-02', '2023-08-10', 1, 1, 'ED-8976', 1, 80, NULL, '5', 5, 6, 0, NULL, NULL, 'Kg', 38, 1, 1, 47, 'en', 'Cocktail Soft Drink Juice', '19082022031029-600x600-1-cocktail-soft-drink.jpg', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables.', 'Cocktail Soft Drink Juice', '2022-07-31 13:51:22', '2022-09-02 04:11:03'),
(152, 'Pomegranate juice', 'pomegranate-juice-2', '01082022172956-400x400-8.jpg', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables.', '<p>Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables.</p><p><br></p><ul><li>It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice.</li><li>Juice is commonly consumed as a beverage or used as an ingredient or flavoring in foods or other beverages, such as smoothies.</li><li>Juice emerged as a popular beverage choice after the development of pasteurization methods enabled its preservation without using fermentation (which is used in wine production).</li></ul><p><br></p><p>The largest fruit juice consumers are New Zealand (nearly a cup, or 8 ounces, each day) and Colombia (more than three-quarters of a cup each day). Fruit juice consumption on average increases with the country\'s income level.</p><p><br></p>', NULL, 100.00, 120.00, NULL, NULL, NULL, 0, 1, 'U-5463', 1, 300, NULL, '5', 5, 4, 1, NULL, NULL, 'Kg', 38, 1, 1, 47, 'en', 'Pomegranate juice', '18082022175726-600x600-5-fruit-juice.jpg', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables.', 'Pomegranate juice', '2022-07-31 13:56:46', '2022-09-02 04:07:46'),
(153, 'Fruit Juice', 'fruit-juice', '01082022172932-400x400-1.jpg', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables.', '<p>Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables.</p><p><br></p><ul><li>It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice.</li><li>Juice is commonly consumed as a beverage or used as an ingredient or flavoring in foods or other beverages, such as smoothies.</li><li>Juice emerged as a popular beverage choice after the development of pasteurization methods enabled its preservation without using fermentation (which is used in wine production).</li></ul><p><br></p><p>The largest fruit juice consumers are New Zealand (nearly a cup, or 8 ounces, each day) and Colombia (more than three-quarters of a cup each day). Fruit juice consumption on average increases with the country\'s income level.</p><p><br></p>', NULL, 90.00, 100.00, 130.00, '2022-09-02', '2023-12-31', 1, 1, 'T-5467', 1, 600, NULL, '5', 5, 7, 0, NULL, NULL, 'Kg', 38, 1, 1, 47, 'en', 'Fruit Juice', '18082022175722-600x600-6-fruit-juice.jpg', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables.', 'Fruit Juice', '2022-07-31 13:59:56', '2022-09-02 04:04:00'),
(154, 'Dairy Products', 'dairy-products', '01082022172846-400x400-9.jpg', 'Dairy products or milk products, also known as vaccinia, are food products made from (or containing) milk.', '<p>Dairy products or milk products, also known as vaccinia, are food products made from milk.&nbsp;</p><p><br></p><ul><li>The most common dairy animals are cow, water buffalo, nanny goat, and ewe.</li><li>Dairy products include common grocery store food items in the Western world such as yogurt, cheese, and butter.</li><li>A facility that produces dairy products is known as a dairy.</li><li>Dairy products are consumed worldwide to varying degrees (see consumption patterns worldwide).&nbsp;</li></ul><p><br></p><p>Some people avoid some or all dairy products either because of lactose intolerance, veganism, or other health reasons or beliefs.</p><p><br></p>', NULL, 100.00, 120.00, NULL, NULL, NULL, 0, 1, 'DP-0985', 1, 100, NULL, '7', 7, 2, 0, NULL, NULL, 'Kg', 38, 1, 1, 47, 'en', 'Dairy Products', '18082022174441-600x600-1-dairy-products.jpg', 'Dairy products or milk products, also known as vaccinia, are food products made from (or containing) milk.', 'Dairy Products', '2022-07-31 14:03:51', '2022-09-02 04:01:58'),
(155, 'Cheese', 'cheese', '01082022172825-400x400-11.jpg', 'Dairy products or milk products, also known as vaccinia, are food products made from (or containing) milk.', '<p>Dairy products or milk products, also known as vaccinia, are food products made from milk. <br></p><ul><li>The most common dairy animals are cow, water buffalo, nanny goat, and ewe.</li><li>Dairy products include common grocery store food items in the Western world such as yogurt, cheese, and butter.</li><li>A facility that produces dairy products is known as a dairy.</li><li>Dairy products are consumed worldwide to varying degrees (see consumption patterns worldwide). <br></li></ul><p>Some people avoid some or all dairy products either because of lactose intolerance, veganism, or other health reasons or beliefs.</p><p><br></p>', NULL, 80.00, 90.00, NULL, NULL, NULL, 0, 1, 'TP-785', 1, 600, NULL, '7', 7, 6, 0, NULL, NULL, 'Kg', 38, 1, 1, 62, 'en', 'Cheese', '18082022171458-600x600-1-cheese.jpg', 'Dairy products or milk products, also known as vaccinia, are food products made from (or containing) milk.', 'Cheese', '2022-07-31 14:08:26', '2022-09-02 03:58:32'),
(156, 'Milk Splash', 'milk-splash', '01082022172802-400x400-3.jpg', 'Dairy products or milk products, also known as vaccinia, are food products made from (or containing) milk.', '<p>Dairy products or milk products, also known as vaccinia, are food products made from milk. <br></p><ul><li>The most common dairy animals are cow, water buffalo, nanny goat, and ewe.</li><li>Dairy products include common grocery store food items in the Western world such as yogurt, cheese, and butter.</li><li>A facility that produces dairy products is known as a dairy.</li><li>Dairy products are consumed worldwide to varying degrees (see consumption patterns worldwide). <br></li></ul><p>Some people avoid some or all dairy products either because of lactose intolerance, veganism, or other health reasons or beliefs.</p><p><br></p>', NULL, NULL, 30.00, NULL, NULL, NULL, 0, 1, 'MS-543', 1, 350, NULL, '7', 7, 3, 1, NULL, NULL, 'Kg', 38, 1, 1, 48, 'en', 'Milk Splash', '18082022155122-600x600-1-milk-splash.jpg', 'Dairy products or milk products, also known as vaccinia, are food products made from (or containing) milk.', 'Milk Splash', '2022-07-31 14:11:17', '2022-09-02 03:55:20');
INSERT INTO `products` (`id`, `title`, `slug`, `f_thumbnail`, `short_desc`, `description`, `extra_desc`, `cost_price`, `sale_price`, `old_price`, `start_date`, `end_date`, `is_discount`, `is_stock`, `sku`, `stock_status_id`, `stock_qty`, `u_stock_qty`, `category_ids`, `cat_id`, `brand_id`, `collection_id`, `label_id`, `variation_color`, `variation_size`, `tax_id`, `is_featured`, `is_publish`, `user_id`, `lan`, `og_title`, `og_image`, `og_description`, `og_keywords`, `created_at`, `updated_at`) VALUES
(157, 'Walnuts', 'walnuts', '01082022172737-400x400-3.jpg', 'Dried food products are often laden with bacterial and fungal spores.', '<p>Dried food products are often laden with bacterial and fungal spores.&nbsp;</p><ul><li>It has been suggested that the water activity, humidity in the environment, temperature of the product, and applied ozone concentration influence the efficacy of gaseous ozone against microbial contaminants on dry food and food ingredients.</li><li>The surface properties of foods also influence the ozone inactivation of microorganisms in dried foods.</li><li>Higher ozone concentration and longer treatment time were needed for cereal flour and ground pepper to achieve a comparable effect for the whole cereal and pepper.&nbsp;</li></ul><p>Similarly, higher detoxification of aflatoxins was achieved in whole pistachio kernels as compared to ground pistachios upon treatment with gaseous ozone.</p>', NULL, 90.00, 110.00, 170.00, '2022-09-02', '2023-09-03', 1, 1, 'DF-564', 1, 900, NULL, '3', 3, 5, 1, NULL, NULL, 'Kg', 38, 1, 1, 63, 'en', 'Walnuts', '18082022153802-600x600-1-walnuts.jpg', 'Dried food products are often laden with bacterial and fungal spores.', 'Walnuts', '2022-07-31 14:17:16', '2022-09-02 03:50:44'),
(158, 'Pistachio', 'pistachio-2', '01082022172712-400x400-7.jpg', 'Dried food products are often laden with bacterial and fungal spores.', '<p>Dried food products are often laden with bacterial and fungal spores.&nbsp;</p><ul><li>It has been suggested that the water activity, humidity in the environment, temperature of the product, and applied ozone concentration influence the efficacy of gaseous ozone against microbial contaminants on dry food and food ingredients (Kim et al., 2003). </li><li>The surface properties of foods also influence the ozone inactivation of microorganisms in dried foods. </li><li>Higher ozone concentration and longer treatment time were needed for cereal flour and ground pepper to achieve a comparable microbicidal effect for the whole cereal and pepper (Naitoh et al., 1992; Zagon et al., 1992).&nbsp;</li></ul><p>Similarly, higher detoxification of aflatoxins was achieved in whole pistachio kernels as compared to ground pistachios upon treatment with gaseous ozone (Akbas and Ozdemir, 2006).</p>', NULL, 50.00, 60.00, NULL, NULL, NULL, 0, 1, 'TP-765', 1, 500, NULL, '3', 3, 2, 0, NULL, NULL, 'Kg', 38, 1, 1, 47, 'en', 'Pistachio', '18082022151446-600x600-1-pistachio.jpg', 'Dried food products are often laden with bacterial and fungal spores.', 'Pistachio', '2022-07-31 14:33:08', '2022-09-02 03:47:59'),
(159, 'Lotus Seeds', 'lotus-seeds-2', '01082022172650-400x400-24.jpg', 'Dried food products are often laden with bacterial and fungal spores.', '<p>Dried food products are often laden with bacterial and fungal spores. <br></p><ul><li>It has been suggested that the water activity, humidity in the environment, temperature of the product, and applied ozone concentration influence the efficacy of gaseous ozone against microbial contaminants on dry food and food ingredients (Kim et al., 2003). </li><li>The surface properties of foods also influence the ozone inactivation of microorganisms in dried foods. </li><li>Higher ozone concentration and longer treatment time were needed for cereal flour and ground pepper to achieve a comparable effect for the whole cereal and pepper. <br></li></ul><p>Similarly, higher detoxification of aflatoxins was achieved in whole pistachio kernels as compared to ground pistachios upon treatment with gaseous ozone.</p>', NULL, 30.00, 60.00, NULL, NULL, NULL, NULL, 1, 'KL-7645', 1, 650, NULL, '3', 3, 4, 1, NULL, NULL, 'Kg', 38, 1, 1, 47, 'en', 'Lotus Seeds', '18082022150003-600x600-1-lotus-seeds.jpg', 'Dried food products are often laden with bacterial and fungal spores.', 'Lotus Seeds', '2022-07-31 14:44:44', '2022-09-02 03:43:19'),
(160, 'Potato', 'potato', '01082022172600-400x400-1.jpg', 'Vegetables are parts of plants that are consumed by humans or other animals as food.', '<p>Vegetables are parts of plants that are consumed by humans or other animals as food. The original meaning is still commonly used and is applied to plants collectively to refer to all edible plant matter, including the flowers, fruits, stems, leaves, roots, and seeds.</p><ul><li>An alternative definition of the term is applied somewhat arbitrarily, often by culinary and cultural tradition.</li><li>It may exclude foods derived from some plants that are fruits, flowers, nuts, and cereal grains, but include savory fruits such as tomatoes and courgettes, flowers such as broccoli, and seeds such as pulses.</li><li>Originally, vegetables were collected from the wild by hunter-gatherers and entered cultivation in several parts of the world, probably during the period 10,000 BC to 7,000 BC, when a new agricultural way of life developed.</li></ul><p>At first, plants that grew locally would have been cultivated, but as time went on, trade brought exotic crops from elsewhere to add to domestic types.</p>', NULL, 20.00, 25.00, NULL, NULL, NULL, 0, 1, 'PT-76835', 1, 250, NULL, '1', 1, 4, 1, NULL, NULL, 'Kg', 38, 1, 1, 63, 'en', 'Potatoe', '18082022140944-600x600-1-potato.jpg', 'Vegetables are parts of plants that are consumed by humans or other animals as food.', 'Potatoe, Alo, Gol Alo', '2022-07-31 14:48:41', '2022-09-02 03:36:52'),
(161, 'Red Pepper', 'red-pepper-2', '01082022172527-400x400-18.jpg', 'Vegetables are parts of plants that are consumed by humans or other animals as food.', '<p>Vegetables are parts of plants that are consumed by humans or other animals as food. The original meaning is still commonly used and is applied to plants collectively to refer to all edible plant matter, including the flowers, fruits, stems, leaves, roots, and seeds.</p><ul><li>An alternative definition of the term is applied somewhat arbitrarily, often by culinary and cultural tradition.</li><li>It may exclude foods derived from some plants that are fruits, flowers, nuts, and cereal grains, but include savory fruits such as tomatoes and courgettes, flowers such as broccoli, and seeds such as pulses.</li><li>Originally, vegetables were collected from the wild by hunter-gatherers and entered cultivation in several parts of the world, probably during the period 10,000 BC to 7,000 BC, when a new agricultural way of life developed.</li></ul><p>At first, plants that grew locally would have been cultivated, but as time went on, trade brought exotic crops from elsewhere to add to domestic types.</p><div><br></div>', NULL, 25.00, 30.00, 40.00, '2022-09-02', '2023-08-30', 1, 1, 'TP-874578', 1, 200, NULL, '1', 1, 1, 0, NULL, NULL, 'Kg', 38, 1, 1, 47, 'en', 'Red Pepper', '18082022135056-600x600-1-red-pepper.jpg', 'Vegetables are parts of plants that are consumed by humans or other animals as food.', 'Red Pepper, Vegetables, chili', '2022-07-31 14:53:05', '2022-09-02 03:30:47'),
(162, 'Garlic China', 'garlic-china', '01082022172357-400x400-7.jpg', 'Vegetables are parts of plants that are consumed by humans or other animals as food.', '<p>Vegetables are parts of plants that are consumed by humans or other animals as food. The original meaning is still commonly used and is applied to plants collectively to refer to all edible plant matter, including the flowers, fruits, stems, leaves, roots, and seeds.</p><ul><li>An alternative definition of the term is applied somewhat arbitrarily, often by culinary and cultural tradition.</li><li>It may exclude foods derived from some plants that are fruits, flowers, nuts, and cereal grains, but include savory fruits such as tomatoes and courgettes, flowers such as broccoli, and seeds such as pulses.</li><li>Originally, vegetables were collected from the wild by hunter-gatherers and entered cultivation in several parts of the world, probably during the period 10,000 BC to 7,000 BC, when a new agricultural way of life developed.</li></ul><p>At first, plants that grew locally would have been cultivated, but as time went on, trade brought exotic crops from elsewhere to add to domestic types.</p>', NULL, 15.00, 20.00, 25.00, '2022-09-02', '2023-05-31', 1, 1, 'PT-856054', 1, 120, NULL, '1', 1, 7, 1, NULL, NULL, 'Kg', 38, 1, 1, 63, 'en', 'Garlic China', '18082022123324-600x600-1-garlic.jpg', 'Vegetables are parts of plants that are consumed by humans or other animals as food.', 'Garlic China', '2022-07-31 14:55:59', '2022-09-02 03:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `pro_categories`
--

CREATE TABLE `pro_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `thumbnail` text DEFAULT NULL,
  `subheader_image` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `layout` varchar(100) DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_subheader` int(11) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `og_title` text DEFAULT NULL,
  `og_image` text DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pro_categories`
--

INSERT INTO `pro_categories` (`id`, `name`, `slug`, `thumbnail`, `subheader_image`, `description`, `layout`, `lan`, `parent_id`, `is_subheader`, `is_publish`, `og_title`, `og_image`, `og_description`, `og_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Vegetables', 'vegetables', '01072022115801-600x600-vegetables.png', NULL, '', NULL, 'en', NULL, 0, 1, 'Vegetables', '01072022115801-600x600-vegetables.png', 'Vegetables', 'Vegetables', '2022-07-01 05:58:35', '2022-07-01 05:58:35'),
(2, 'Fresh Fruit', 'fresh-fruit', '01072022120122-600x600-fruit.png', '01072022120122-600x600-fruit.png', '', NULL, 'en', NULL, 0, 1, 'Fresh Fruit', '01072022120122-600x600-fruit.png', 'Fresh Fruit', 'Fresh Fruit', '2022-07-01 06:02:00', '2022-07-01 06:02:00'),
(3, 'Nutt and Seeds', 'nutt-and-seeds', '01072022120255-600x600-nutt-and-seeds.png', '01072022120255-600x600-nutt-and-seeds.png', '', NULL, 'en', NULL, 0, 1, 'Nutt and Seeds', '01072022120255-600x600-nutt-and-seeds.png', 'Nutt and Seeds', 'Nutt and Seeds', '2022-07-01 06:03:12', '2022-07-01 06:05:30'),
(4, 'Bread and Bakery', 'bread-and-bakery', '01072022120359-600x600-bread-and-bakery.png', '01072022120359-600x600-bread-and-bakery.png', '', NULL, 'en', NULL, 0, 1, 'Bread and Bakery', '01072022120359-600x600-bread-and-bakery.png', 'Bread and Bakery', 'Bread and Bakery', '2022-07-01 06:04:14', '2022-07-01 06:05:10'),
(5, 'Juice', 'juice', '01072022120554-600x600-juice.png', '01072022120554-600x600-juice.png', '', NULL, 'en', NULL, 0, 1, 'Juice', '01072022120554-600x600-juice.png', 'Juice', 'Juice', '2022-07-01 06:06:15', '2022-07-01 06:06:15'),
(6, 'Fast food', 'fast-food', '01072022120657-600x600-fast-food.png', '01072022120657-600x600-fast-food.png', '', NULL, 'en', NULL, 0, 1, 'Fast food', '01072022120657-600x600-fast-food.png', 'Fast food', 'Fast food', '2022-07-01 06:07:10', '2022-07-01 06:07:10'),
(7, 'Milk and Dairy', 'milk-and-dairy', '01072022120745-600x600-milk-and-dairy.png', '01072022120745-600x600-milk-and-dairy.png', '', NULL, 'en', NULL, 0, 1, 'Milk and Dairy', '01072022120745-600x600-milk-and-dairy.png', 'Milk and Dairy', 'Milk and Dairy', '2022-07-01 06:08:03', '2022-07-01 06:08:03'),
(8, 'Fresh Meat', 'fresh-meat', '01072022120831-600x600-fresh-meat.png', '01072022120831-600x600-fresh-meat.png', '', NULL, 'en', NULL, 0, 1, 'Fresh Meat', '01072022120831-600x600-fresh-meat.png', 'Fresh Meat', 'Fresh Meat', '2022-07-01 06:08:45', '2022-07-01 06:08:45'),
(9, 'Fresh Seafood', 'fresh-seafood', '01072022120911-600x600-fresh-seafood.png', '01072022120911-600x600-fresh-seafood.png', '', NULL, 'en', NULL, 0, 1, 'Fresh Seafood', '01072022120911-600x600-fresh-seafood.png', 'Fresh Seafood', 'Fresh Seafood', '2022-07-01 06:09:30', '2022-07-01 06:09:30'),
(10, 'Dry Food', 'dry-food', '01072022121020-600x600-dry-food.png', '01072022121020-600x600-dry-food.png', '', NULL, 'en', NULL, 0, 1, 'Dry Food', '01072022121020-600x600-dry-food.png', 'Dry Food', 'Dry Food', '2022-07-01 06:10:35', '2022-07-01 06:10:35'),
(11, 'Coffee and Tea', 'coffee-and-tea', '01072022121100-600x600-coffee-and-tea.png', '01072022121100-600x600-coffee-and-tea.png', '', NULL, 'en', NULL, 0, 1, 'Coffee and Tea', '01072022121100-600x600-coffee-and-tea.png', 'Coffee and Tea', 'Coffee and Tea', '2022-07-01 06:11:13', '2022-07-01 06:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `pro_images`
--

CREATE TABLE `pro_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `large_image` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pro_images`
--

INSERT INTO `pro_images` (`id`, `product_id`, `thumbnail`, `large_image`, `desc`, `created_at`, `updated_at`) VALUES
(378, 162, '18082022123324-600x600-1-garlic.jpg', '18082022123324-1-garlic.jpg', NULL, '2022-08-18 06:36:07', '2022-08-18 06:36:07'),
(379, 162, '18082022123333-600x600-2-garlic.jpg', '18082022123333-2-garlic.jpg', NULL, '2022-08-18 06:36:14', '2022-08-18 06:36:14'),
(380, 162, '18082022123337-600x600-3-garlic.jpg', '18082022123337-3-garlic.jpg', NULL, '2022-08-18 06:36:22', '2022-08-18 06:36:22'),
(381, 162, '18082022123536-600x600-4-garlic.jpg', '18082022123536-4-garlic.jpg', NULL, '2022-08-18 06:36:27', '2022-08-18 06:36:27'),
(382, 162, '18082022123541-600x600-5-garlic.jpg', '18082022123541-5-garlic.jpg', NULL, '2022-08-18 06:36:38', '2022-08-18 06:36:38'),
(383, 162, '18082022123544-600x600-6-garlic.jpg', '18082022123544-6-garlic.jpg', NULL, '2022-08-18 06:36:43', '2022-08-18 06:36:43'),
(384, 161, '18082022135056-600x600-1-red-pepper.jpg', '18082022135056-1-red-pepper.jpg', NULL, '2022-08-18 07:51:25', '2022-08-18 07:51:25'),
(385, 161, '18082022135100-600x600-2-red-pepper.jpg', '18082022135100-2-red-pepper.jpg', NULL, '2022-08-18 07:51:30', '2022-08-18 07:51:30'),
(386, 161, '18082022135103-600x600-3-red-pepper.jpg', '18082022135103-3-red-pepper.jpg', NULL, '2022-08-18 07:51:36', '2022-08-18 07:51:36'),
(387, 161, '18082022135106-600x600-4-red-pepper.jpg', '18082022135106-4-red-pepper.jpg', NULL, '2022-08-18 07:51:45', '2022-08-18 07:51:45'),
(388, 161, '18082022135110-600x600-5-red-pepper.jpg', '18082022135110-5-red-pepper.jpg', NULL, '2022-08-18 07:51:51', '2022-08-18 07:51:51'),
(389, 161, '18082022135113-600x600-6-red-pepper.jpg', '18082022135113-6-red-pepper.jpg', NULL, '2022-08-18 07:51:56', '2022-08-18 07:51:56'),
(390, 160, '18082022140944-600x600-1-potato.jpg', '18082022140944-1-potato.jpg', NULL, '2022-08-18 08:10:18', '2022-08-18 08:10:18'),
(391, 160, '18082022140948-600x600-2-potato.jpg', '18082022140948-2-potato.jpg', NULL, '2022-08-18 08:10:23', '2022-08-18 08:10:23'),
(392, 160, '18082022140954-600x600-3-potato.jpg', '18082022140954-3-potato.jpg', NULL, '2022-08-18 08:10:27', '2022-08-18 08:10:27'),
(393, 160, '18082022140957-600x600-4-potato.jpg', '18082022140957-4-potato.jpg', NULL, '2022-08-18 08:10:34', '2022-08-18 08:10:34'),
(394, 160, '18082022141000-600x600-5-potato.jpg', '18082022141000-5-potato.jpg', NULL, '2022-08-18 08:10:40', '2022-08-18 08:10:40'),
(395, 160, '18082022141004-600x600-6-potato.jpg', '18082022141004-6-potato.jpg', NULL, '2022-08-18 08:10:45', '2022-08-18 08:10:45'),
(396, 160, '18082022141007-600x600-7-potato.jpg', '18082022141007-7-potato.jpg', NULL, '2022-08-18 08:10:49', '2022-08-18 08:10:49'),
(397, 159, '18082022150003-600x600-1-lotus-seeds.jpg', '18082022150003-1-lotus-seeds.jpg', NULL, '2022-08-18 09:00:42', '2022-08-18 09:00:42'),
(398, 159, '18082022150007-600x600-2-lotus-seeds.jpg', '18082022150007-2-lotus-seeds.jpg', NULL, '2022-08-18 09:00:47', '2022-08-18 09:00:47'),
(399, 159, '18082022150010-600x600-3-lotus-seeds.jpg', '18082022150010-3-lotus-seeds.jpg', NULL, '2022-08-18 09:00:52', '2022-08-18 09:00:52'),
(400, 159, '18082022150026-600x600-4-lotus-seeds.jpg', '18082022150026-4-lotus-seeds.jpg', NULL, '2022-08-18 09:00:57', '2022-08-18 09:00:57'),
(401, 159, '18082022150029-600x600-5-lotus-seeds.jpg', '18082022150029-5-lotus-seeds.jpg', NULL, '2022-08-18 09:01:02', '2022-08-18 09:01:02'),
(402, 159, '18082022150032-600x600-6-lotus-seeds.jpg', '18082022150032-6-lotus-seeds.jpg', NULL, '2022-08-18 09:01:16', '2022-08-18 09:01:16'),
(403, 159, '18082022150036-600x600-7-lotus-seeds.jpg', '18082022150036-7-lotus-seeds.jpg', NULL, '2022-08-18 09:01:24', '2022-08-18 09:01:24'),
(404, 158, '18082022151446-600x600-1-pistachio.jpg', '18082022151446-1-pistachio.jpg', NULL, '2022-08-18 09:15:13', '2022-08-18 09:15:13'),
(405, 158, '18082022151450-600x600-2-pistachio.jpg', '18082022151450-2-pistachio.jpg', NULL, '2022-08-18 09:15:20', '2022-08-18 09:15:20'),
(406, 158, '18082022151452-600x600-3-pistachio.jpg', '18082022151452-3-pistachio.jpg', NULL, '2022-08-18 09:15:26', '2022-08-18 09:15:26'),
(407, 158, '18082022151457-600x600-4-pistachio.jpg', '18082022151457-4-pistachio.jpg', NULL, '2022-08-18 09:15:30', '2022-08-18 09:15:30'),
(408, 158, '18082022151500-600x600-5-pistachio.jpg', '18082022151500-5-pistachio.jpg', NULL, '2022-08-18 09:15:36', '2022-08-18 09:15:36'),
(409, 158, '18082022151502-600x600-6-pistachio.jpg', '18082022151502-6-pistachio.jpg', NULL, '2022-08-18 09:15:42', '2022-08-18 09:15:42'),
(410, 158, '18082022151504-600x600-7-pistachio.jpg', '18082022151504-7-pistachio.jpg', NULL, '2022-08-18 09:15:48', '2022-08-18 09:15:48'),
(411, 157, '18082022153802-600x600-1-walnuts.jpg', '18082022153802-1-walnuts.jpg', NULL, '2022-08-18 09:38:20', '2022-08-18 09:38:20'),
(412, 157, '18082022153806-600x600-2-walnuts.jpg', '18082022153806-2-walnuts.jpg', NULL, '2022-08-18 09:38:25', '2022-08-18 09:38:25'),
(413, 157, '18082022153808-600x600-3-walnuts.jpg', '18082022153808-3-walnuts.jpg', NULL, '2022-08-18 09:38:30', '2022-08-18 09:38:30'),
(414, 157, '18082022153810-600x600-4-walnuts.jpg', '18082022153810-4-walnuts.jpg', NULL, '2022-08-18 09:38:36', '2022-08-18 09:38:36'),
(415, 157, '18082022153812-600x600-5-walnuts.jpg', '18082022153812-5-walnuts.jpg', NULL, '2022-08-18 09:38:41', '2022-08-18 09:38:41'),
(416, 156, '18082022155122-600x600-1-milk-splash.jpg', '18082022155122-1-milk-splash.jpg', NULL, '2022-08-18 09:52:15', '2022-08-18 09:52:15'),
(417, 156, '18082022155126-600x600-2-milk-splash.jpg', '18082022155126-2-milk-splash.jpg', NULL, '2022-08-18 09:52:20', '2022-08-18 09:52:20'),
(418, 156, '18082022155129-600x600-3-milk-splash.jpg', '18082022155129-3-milk-splash.jpg', NULL, '2022-08-18 09:52:25', '2022-08-18 09:52:25'),
(420, 156, '18082022155136-600x600-5-milk-splash.jpg', '18082022155136-5-milk-splash.jpg', NULL, '2022-08-18 09:52:39', '2022-08-18 09:52:39'),
(421, 156, '18082022155447-600x600-4-milk-splash.jpg', '18082022155447-4-milk-splash.jpg', NULL, '2022-08-18 09:54:55', '2022-08-18 09:54:55'),
(422, 155, '18082022171458-600x600-1-cheese.jpg', '18082022171458-1-cheese.jpg', NULL, '2022-08-18 11:16:48', '2022-08-18 11:16:48'),
(423, 155, '18082022171502-600x600-2-cheese.jpg', '18082022171502-2-cheese.jpg', NULL, '2022-08-18 11:16:53', '2022-08-18 11:16:53'),
(424, 155, '18082022171507-600x600-3-cheese.jpg', '18082022171507-3-cheese.jpg', NULL, '2022-08-18 11:16:59', '2022-08-18 11:16:59'),
(425, 155, '18082022171511-600x600-4-cheese.jpg', '18082022171511-4-cheese.jpg', NULL, '2022-08-18 11:17:04', '2022-08-18 11:17:04'),
(426, 155, '18082022171514-600x600-5-cheese.jpg', '18082022171514-5-cheese.jpg', NULL, '2022-08-18 11:17:10', '2022-08-18 11:17:10'),
(427, 155, '18082022171602-600x600-6-cheese.jpg', '18082022171602-6-cheese.jpg', NULL, '2022-08-18 11:17:16', '2022-08-18 11:17:16'),
(428, 155, '18082022171605-600x600-7-cheese.jpg', '18082022171605-7-cheese.jpg', NULL, '2022-08-18 11:17:21', '2022-08-18 11:17:21'),
(429, 154, '18082022174441-600x600-1-dairy-products.jpg', '18082022174441-1-dairy-products.jpg', NULL, '2022-08-18 11:45:23', '2022-08-18 11:45:23'),
(430, 154, '18082022174445-600x600-2-dairy-products.jpg', '18082022174445-2-dairy-products.jpg', NULL, '2022-08-18 11:45:29', '2022-08-18 11:45:29'),
(431, 154, '18082022174448-600x600-3-dairy-products.jpg', '18082022174448-3-dairy-products.jpg', NULL, '2022-08-18 11:45:34', '2022-08-18 11:45:34'),
(432, 154, '18082022174452-600x600-4-dairy-products.jpg', '18082022174452-4-dairy-products.jpg', NULL, '2022-08-18 11:45:40', '2022-08-18 11:45:40'),
(433, 154, '18082022174457-600x600-5-dairy-products.jpg', '18082022174457-5-dairy-products.jpg', NULL, '2022-08-18 11:45:45', '2022-08-18 11:45:45'),
(434, 154, '18082022174502-600x600-6-dairy-products.jpg', '18082022174502-6-dairy-products.jpg', NULL, '2022-08-18 11:45:52', '2022-08-18 11:45:52'),
(435, 153, '18082022175722-600x600-6-fruit-juice.jpg', '18082022175722-6-fruit-juice.jpg', NULL, '2022-08-18 11:57:43', '2022-08-18 11:57:43'),
(437, 153, '18082022175730-600x600-4-fruit-juice.jpg', '18082022175730-4-fruit-juice.jpg', NULL, '2022-08-18 11:57:53', '2022-08-18 11:57:53'),
(439, 153, '18082022175734-600x600-3-fruit-juice.jpg', '18082022175734-3-fruit-juice.jpg', NULL, '2022-08-18 11:58:51', '2022-08-18 11:58:51'),
(440, 153, '18082022175917-600x600-2-fruit-juice.jpg', '18082022175917-2-fruit-juice.jpg', NULL, '2022-08-18 11:59:25', '2022-08-18 11:59:25'),
(441, 152, '18082022175726-600x600-5-fruit-juice.jpg', '18082022175726-5-fruit-juice.jpg', NULL, '2022-08-18 12:07:42', '2022-08-18 12:07:42'),
(442, 152, '18082022180759-600x600-2-pomegranate-juice.jpg', '18082022180759-2-pomegranate-juice.jpg', NULL, '2022-08-18 12:08:34', '2022-08-18 12:08:34'),
(443, 152, '18082022180809-600x600-1-pomegranate-juice.jpg', '18082022180809-1-pomegranate-juice.jpg', NULL, '2022-08-18 12:08:38', '2022-08-18 12:08:38'),
(444, 152, '18082022180824-600x600-4-pomegranate-juice.jpg', '18082022180824-4-pomegranate-juice.jpg', NULL, '2022-08-18 12:08:43', '2022-08-18 12:08:43'),
(445, 152, '18082022180829-600x600-3-pomegranate-juice.jpg', '18082022180829-3-pomegranate-juice.jpg', NULL, '2022-08-18 12:08:49', '2022-08-18 12:08:49'),
(446, 151, '19082022031029-600x600-1-cocktail-soft-drink.jpg', '19082022031029-1-cocktail-soft-drink.jpg', NULL, '2022-08-18 21:10:46', '2022-08-18 21:10:46'),
(447, 151, '19082022031032-600x600-2-cocktail-soft-drink.jpg', '19082022031032-2-cocktail-soft-drink.jpg', NULL, '2022-08-18 21:10:51', '2022-08-18 21:10:51'),
(448, 151, '19082022031036-600x600-3-cocktail-soft-drink.jpg', '19082022031036-3-cocktail-soft-drink.jpg', NULL, '2022-08-18 21:10:56', '2022-08-18 21:10:56'),
(449, 151, '19082022031039-600x600-4-cocktail-soft-drink.jpg', '19082022031039-4-cocktail-soft-drink.jpg', NULL, '2022-08-18 21:11:02', '2022-08-18 21:11:02'),
(450, 150, '19082022032359-600x600-1-snow-crab.jpg', '19082022032359-1-snow-crab.jpg', NULL, '2022-08-18 21:24:14', '2022-08-18 21:24:14'),
(451, 150, '19082022032402-600x600-2-snow-crab.jpg', '19082022032402-2-snow-crab.jpg', NULL, '2022-08-18 21:24:21', '2022-08-18 21:24:21'),
(452, 150, '19082022032405-600x600-3-snow-crab.jpg', '19082022032405-3-snow-crab.jpg', NULL, '2022-08-18 21:24:25', '2022-08-18 21:24:25'),
(453, 150, '19082022032408-600x600-4-snow-crab.jpg', '19082022032408-4-snow-crab.jpg', NULL, '2022-08-18 21:24:31', '2022-08-18 21:24:31'),
(454, 149, '19082022035247-600x600-1-crayfish.jpg', '19082022035247-1-crayfish.jpg', NULL, '2022-08-18 21:56:12', '2022-08-18 21:56:12'),
(455, 149, '19082022035252-600x600-2-crayfish.jpg', '19082022035252-2-crayfish.jpg', NULL, '2022-08-18 21:56:18', '2022-08-18 21:56:18'),
(456, 149, '19082022035255-600x600-3-crayfish.jpg', '19082022035255-3-crayfish.jpg', NULL, '2022-08-18 21:56:24', '2022-08-18 21:56:24'),
(457, 149, '19082022035258-600x600-4-crayfish.jpg', '19082022035258-4-crayfish.jpg', NULL, '2022-08-18 21:56:29', '2022-08-18 21:56:29'),
(458, 148, '19082022040651-600x600-1-squid.jpg', '19082022040651-1-squid.jpg', NULL, '2022-08-18 22:07:08', '2022-08-18 22:07:08'),
(459, 148, '19082022040654-600x600-2-squid.jpg', '19082022040654-2-squid.jpg', NULL, '2022-08-18 22:07:50', '2022-08-18 22:07:50'),
(460, 148, '19082022040700-600x600-4-squid.jpg', '19082022040700-4-squid.jpg', NULL, '2022-08-18 22:07:54', '2022-08-18 22:07:54'),
(461, 148, '19082022040657-600x600-3-squid.jpg', '19082022040657-3-squid.jpg', NULL, '2022-08-18 22:07:59', '2022-08-18 22:07:59'),
(462, 147, '19082022041622-400x400-1-chicken.jpg', '19082022041622-1-chicken.jpg', NULL, '2022-08-18 22:16:53', '2022-08-18 22:16:53'),
(466, 146, '19082022042756-600x600-1-rack-of-lamb.jpg', '19082022042756-1-rack-of-lamb.jpg', NULL, '2022-08-18 22:28:26', '2022-08-18 22:28:26'),
(467, 146, '19082022042800-600x600-2-rack-of-lamb.jpg', '19082022042800-2-rack-of-lamb.jpg', NULL, '2022-08-18 22:28:34', '2022-08-18 22:28:34'),
(468, 146, '19082022042803-600x600-3-rack-of-lamb.jpg', '19082022042803-3-rack-of-lamb.jpg', NULL, '2022-08-18 22:28:39', '2022-08-18 22:28:39'),
(469, 146, '19082022042805-600x600-4-rack-of-lamb.jpg', '19082022042805-4-rack-of-lamb.jpg', NULL, '2022-08-18 22:28:44', '2022-08-18 22:28:44'),
(470, 147, '19082022043756-600x600-2-chicken.jpg', '19082022043756-2-chicken.jpg', NULL, '2022-08-18 22:38:09', '2022-08-18 22:38:09'),
(471, 147, '19082022041628-400x400-3-chicken.jpg', '19082022041628-3-chicken.jpg', NULL, '2022-08-18 22:38:14', '2022-08-18 22:38:14'),
(472, 147, '19082022043759-600x600-4-chicken.jpg', '19082022043759-4-chicken.jpg', NULL, '2022-08-18 22:38:19', '2022-08-18 22:38:19'),
(473, 145, '19082022043919-600x600-1-raw-chicken-legs.jpg', '19082022043919-1-raw-chicken-legs.jpg', NULL, '2022-08-18 22:39:31', '2022-08-18 22:39:31'),
(474, 145, '19082022041949-600x600-4-chicken.jpg', '19082022041949-4-chicken.jpg', NULL, '2022-08-18 22:39:41', '2022-08-18 22:39:41'),
(475, 145, '19082022043922-600x600-3-raw-chicken-legs.jpg', '19082022043922-3-raw-chicken-legs.jpg', NULL, '2022-08-18 22:39:45', '2022-08-18 22:39:45'),
(476, 145, '19082022041625-400x400-2-chicken.jpg', '19082022041625-2-chicken.jpg', NULL, '2022-08-18 22:39:50', '2022-08-18 22:39:50'),
(477, 144, '19082022044622-400x400-1-blackberry.jpg', '19082022044622-1-blackberry.jpg', NULL, '2022-08-18 22:46:56', '2022-08-18 22:46:56'),
(478, 144, '19082022044625-400x400-2-blackberry.jpg', '19082022044625-2-blackberry.jpg', NULL, '2022-08-18 22:47:02', '2022-08-18 22:47:02'),
(479, 144, '19082022044628-400x400-3-blackberry.jpg', '19082022044628-3-blackberry.jpg', NULL, '2022-08-18 22:47:06', '2022-08-18 22:47:06'),
(480, 143, '19082022050242-600x600-1-passion.jpg', '19082022050242-1-passion.jpg', NULL, '2022-08-18 23:02:59', '2022-08-18 23:02:59'),
(481, 143, '19082022050245-600x600-2-passion.jpg', '19082022050245-2-passion.jpg', NULL, '2022-08-18 23:03:04', '2022-08-18 23:03:04'),
(482, 143, '19082022050248-600x600-3-passion.jpg', '19082022050248-3-passion.jpg', NULL, '2022-08-18 23:03:09', '2022-08-18 23:03:09'),
(483, 143, '19082022050251-600x600-4-passion.jpg', '19082022050251-4-passion.jpg', NULL, '2022-08-18 23:03:16', '2022-08-18 23:03:16'),
(484, 142, '19082022051624-600x600-1-peach.jpg', '19082022051624-1-peach.jpg', NULL, '2022-08-18 23:17:15', '2022-08-18 23:17:15'),
(485, 142, '19082022051627-600x600-2-peach.jpg', '19082022051627-2-peach.jpg', NULL, '2022-08-18 23:17:19', '2022-08-18 23:17:19'),
(486, 142, '19082022051631-600x600-3-peach.jpg', '19082022051631-3-peach.jpg', NULL, '2022-08-18 23:17:23', '2022-08-18 23:17:23'),
(487, 142, '19082022051634-600x600-4-peach.jpg', '19082022051634-4-peach.jpg', NULL, '2022-08-18 23:17:27', '2022-08-18 23:17:27'),
(488, 141, '19082022052814-600x600-1-pizza.jpg', '19082022052814-1-pizza.jpg', NULL, '2022-08-18 23:28:31', '2022-08-18 23:28:31'),
(489, 141, '19082022052817-600x600-2-pizza.jpg', '19082022052817-2-pizza.jpg', NULL, '2022-08-18 23:28:35', '2022-08-18 23:28:35'),
(490, 141, '19082022052820-600x600-3-pizza.jpg', '19082022052820-3-pizza.jpg', NULL, '2022-08-18 23:28:42', '2022-08-18 23:28:42'),
(491, 141, '19082022052823-600x600-4-pizza.jpg', '19082022052823-4-pizza.jpg', NULL, '2022-08-18 23:28:46', '2022-08-18 23:28:46'),
(492, 140, '19082022054547-600x600-1-chicken-wings.jpg', '19082022054547-1-chicken-wings.jpg', NULL, '2022-08-18 23:46:10', '2022-08-18 23:46:10'),
(493, 140, '19082022054551-600x600-2-chicken-wings.jpg', '19082022054551-2-chicken-wings.jpg', NULL, '2022-08-18 23:46:15', '2022-08-18 23:46:15'),
(494, 140, '19082022054554-600x600-3-chicken-wings.jpg', '19082022054554-3-chicken-wings.jpg', NULL, '2022-08-18 23:46:20', '2022-08-18 23:46:20'),
(495, 140, '19082022054557-600x600-4-chicken-wings.jpg', '19082022054557-4-chicken-wings.jpg', NULL, '2022-08-18 23:46:29', '2022-08-18 23:46:29'),
(496, 139, '19082022093540-600x600-1-sandwich.jpg', '19082022093540-1-sandwich.jpg', NULL, '2022-08-19 03:36:02', '2022-08-19 03:36:02'),
(497, 139, '19082022093545-600x600-2-sandwich.jpg', '19082022093545-2-sandwich.jpg', NULL, '2022-08-19 03:36:06', '2022-08-19 03:36:06'),
(498, 139, '19082022093548-600x600-3-sandwich.jpg', '19082022093548-3-sandwich.jpg', NULL, '2022-08-19 03:36:10', '2022-08-19 03:36:10'),
(499, 139, '19082022093552-600x600-4-sandwich.jpg', '19082022093552-4-sandwich.jpg', NULL, '2022-08-19 03:36:14', '2022-08-19 03:36:14'),
(501, 139, '19082022093555-600x600-5-sandwich.jpg', '19082022093555-5-sandwich.jpg', NULL, '2022-08-19 03:36:27', '2022-08-19 03:36:27'),
(502, 138, '19082022094844-400x400-1-mixed-dry-fruits.jpg', '19082022094844-1-mixed-dry-fruits.jpg', NULL, '2022-08-19 03:49:32', '2022-08-19 03:49:32'),
(503, 138, '19082022094855-400x400-2-mixed-dry-fruits.jpg', '19082022094855-2-mixed-dry-fruits.jpg', NULL, '2022-08-19 03:49:36', '2022-08-19 03:49:36'),
(504, 138, '19082022094858-400x400-3-mixed-dry-fruits.jpg', '19082022094858-3-mixed-dry-fruits.jpg', NULL, '2022-08-19 03:49:40', '2022-08-19 03:49:40'),
(505, 138, '19082022094902-400x400-4-mixed-dry-fruits.jpg', '19082022094902-4-mixed-dry-fruits.jpg', NULL, '2022-08-19 03:49:45', '2022-08-19 03:49:45'),
(506, 137, '19082022100202-400x400-1-cashews.jpg', '19082022100202-1-cashews.jpg', NULL, '2022-08-19 04:02:34', '2022-08-19 04:02:34'),
(507, 137, '19082022100205-400x400-2-cashews.jpg', '19082022100205-2-cashews.jpg', NULL, '2022-08-19 04:02:40', '2022-08-19 04:02:40'),
(508, 137, '19082022100208-400x400-3-cashews.jpg', '19082022100208-3-cashews.jpg', NULL, '2022-08-19 04:02:44', '2022-08-19 04:02:44'),
(509, 136, '19082022100759-400x400-1-almond-badam.jpg', '19082022100759-1-almond-badam.jpg', NULL, '2022-08-19 04:08:29', '2022-08-19 04:08:29'),
(510, 136, '19082022100801-400x400-2-almond-badam.jpg', '19082022100801-2-almond-badam.jpg', NULL, '2022-08-19 04:08:34', '2022-08-19 04:08:34'),
(511, 136, '19082022100804-400x400-3-almond-badam.jpg', '19082022100804-3-almond-badam.jpg', NULL, '2022-08-19 04:08:39', '2022-08-19 04:08:39'),
(512, 135, '19082022101914-600x600-1-herbal-tea.jpg', '19082022101914-1-herbal-tea.jpg', NULL, '2022-08-19 04:19:25', '2022-08-19 04:19:25'),
(513, 135, '19082022101918-600x600-2-herbal-tea.jpg', '19082022101918-2-herbal-tea.jpg', NULL, '2022-08-19 04:19:30', '2022-08-19 04:19:30'),
(514, 135, '19082022101920-600x600-3-herbal-tea.jpg', '19082022101920-3-herbal-tea.jpg', NULL, '2022-08-19 04:19:37', '2022-08-19 04:19:37'),
(515, 134, '19082022102541-600x600-1-coffee-latte.jpg', '19082022102541-1-coffee-latte.jpg', NULL, '2022-08-19 04:25:49', '2022-08-19 04:25:49'),
(516, 134, '19082022102545-600x600-2-coffee-latte.jpg', '19082022102545-2-coffee-latte.jpg', NULL, '2022-08-19 04:25:54', '2022-08-19 04:25:54'),
(517, 133, '19082022103010-400x400-1-green-tea.jpg', '19082022103010-1-green-tea.jpg', NULL, '2022-08-19 04:30:45', '2022-08-19 04:30:45'),
(518, 133, '19082022103014-400x400-2-green-tea.jpg', '19082022103014-2-green-tea.jpg', NULL, '2022-08-19 04:30:51', '2022-08-19 04:30:51'),
(519, 133, '19082022103017-400x400-3-green-tea.jpg', '19082022103017-3-green-tea.jpg', NULL, '2022-08-19 04:30:57', '2022-08-19 04:30:57'),
(520, 132, '19082022103844-400x400-2-pastry.jpg', '19082022103844-2-pastry.jpg', NULL, '2022-08-19 04:39:11', '2022-08-19 04:39:11'),
(521, 132, '19082022103847-400x400-1-pastry.jpg', '19082022103847-1-pastry.jpg', NULL, '2022-08-19 04:39:16', '2022-08-19 04:39:16'),
(522, 132, '19082022103850-400x400-3-pastry.jpg', '19082022103850-3-pastry.jpg', NULL, '2022-08-19 04:39:22', '2022-08-19 04:39:22'),
(523, 131, '19082022104438-600x600-1-w-bread.jpg', '19082022104438-1-w-bread.jpg', NULL, '2022-08-19 04:44:53', '2022-08-19 04:44:53'),
(524, 131, '19082022104442-600x600-2-w-bread.jpg', '19082022104442-2-w-bread.jpg', NULL, '2022-08-19 04:44:57', '2022-08-19 04:44:57'),
(525, 131, '19082022104445-600x600-3-w-bread.jpg', '19082022104445-3-w-bread.jpg', NULL, '2022-08-19 04:45:03', '2022-08-19 04:45:03'),
(526, 130, '19082022104904-600x600-1-hand-painted-bread.jpg', '19082022104904-1-hand-painted-bread.jpg', NULL, '2022-08-19 04:49:15', '2022-08-19 04:49:15'),
(528, 130, '19082022104907-600x600-2-hand-painted-bread.jpg', '19082022104907-2-hand-painted-bread.jpg', NULL, '2022-08-19 04:51:49', '2022-08-19 04:51:49'),
(529, 130, '19082022104911-600x600-3-hand-painted-bread.jpg', '19082022104911-3-hand-painted-bread.jpg', NULL, '2022-08-19 04:51:52', '2022-08-19 04:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `related_item_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `related_products`
--

INSERT INTO `related_products` (`id`, `product_id`, `related_item_id`, `created_at`, `updated_at`) VALUES
(21, 132, 131, '2022-07-31 06:29:08', '2022-07-31 06:29:08'),
(22, 132, 130, '2022-07-31 06:29:09', '2022-07-31 06:29:09'),
(23, 134, 133, '2022-07-31 07:54:07', '2022-07-31 07:54:07'),
(24, 135, 134, '2022-07-31 08:13:49', '2022-07-31 08:13:49'),
(25, 135, 133, '2022-07-31 08:13:50', '2022-07-31 08:13:50'),
(26, 137, 136, '2022-07-31 10:04:46', '2022-07-31 10:04:46'),
(27, 138, 137, '2022-07-31 10:35:10', '2022-07-31 10:35:10'),
(28, 138, 136, '2022-07-31 10:35:11', '2022-07-31 10:35:11'),
(29, 140, 139, '2022-07-31 11:02:15', '2022-07-31 11:02:15'),
(30, 141, 140, '2022-07-31 11:26:38', '2022-07-31 11:26:38'),
(31, 141, 139, '2022-07-31 11:26:39', '2022-07-31 11:26:39'),
(33, 143, 142, '2022-07-31 11:53:18', '2022-07-31 11:53:18'),
(34, 144, 143, '2022-07-31 12:00:22', '2022-07-31 12:00:22'),
(35, 144, 142, '2022-07-31 12:00:23', '2022-07-31 12:00:23'),
(36, 146, 145, '2022-07-31 12:14:36', '2022-07-31 12:14:36'),
(37, 147, 146, '2022-07-31 12:18:40', '2022-07-31 12:18:40'),
(38, 147, 145, '2022-07-31 12:18:41', '2022-07-31 12:18:41'),
(39, 149, 148, '2022-07-31 13:44:04', '2022-07-31 13:44:04'),
(40, 150, 149, '2022-07-31 13:47:32', '2022-07-31 13:47:32'),
(41, 150, 148, '2022-07-31 13:47:32', '2022-07-31 13:47:32'),
(42, 152, 151, '2022-07-31 13:58:51', '2022-07-31 13:58:51'),
(43, 153, 152, '2022-07-31 14:01:40', '2022-07-31 14:01:40'),
(44, 153, 151, '2022-07-31 14:01:41', '2022-07-31 14:01:41'),
(46, 155, 154, '2022-07-31 14:10:03', '2022-07-31 14:10:03'),
(47, 156, 155, '2022-07-31 14:12:59', '2022-07-31 14:12:59'),
(48, 156, 154, '2022-07-31 14:13:00', '2022-07-31 14:13:00'),
(49, 158, 157, '2022-07-31 14:35:34', '2022-07-31 14:35:34'),
(50, 159, 158, '2022-07-31 14:46:41', '2022-07-31 14:46:41'),
(51, 159, 157, '2022-07-31 14:46:42', '2022-07-31 14:46:42'),
(52, 161, 160, '2022-07-31 14:54:47', '2022-07-31 14:54:47'),
(53, 162, 161, '2022-07-31 14:57:22', '2022-07-31 14:57:22'),
(54, 162, 160, '2022-07-31 14:57:23', '2022-07-31 14:57:23'),
(60, 162, 159, '2022-08-05 11:02:10', '2022-08-05 11:02:10'),
(61, 162, 157, '2022-08-05 11:02:30', '2022-08-05 11:02:30'),
(65, 156, 143, '2022-08-05 11:08:54', '2022-08-05 11:08:54'),
(66, 157, 159, '2022-08-24 08:34:18', '2022-08-24 08:34:18'),
(68, 157, 158, '2022-08-24 08:34:28', '2022-08-24 08:34:28'),
(69, 157, 137, '2022-08-24 08:34:36', '2022-08-24 08:34:36'),
(70, 157, 136, '2022-08-24 08:34:38', '2022-08-24 08:34:38'),
(71, 157, 139, '2022-08-24 08:34:40', '2022-08-24 08:34:40'),
(72, 157, 132, '2022-08-24 08:34:43', '2022-08-24 08:34:43'),
(73, 157, 131, '2022-08-24 08:34:44', '2022-08-24 08:34:44'),
(74, 157, 130, '2022-08-24 08:34:45', '2022-08-24 08:34:45'),
(75, 162, 161, '2022-09-02 03:21:21', '2022-09-02 03:21:21'),
(76, 162, 133, '2022-09-02 03:21:43', '2022-09-02 03:21:43'),
(77, 162, 135, '2022-09-02 03:21:44', '2022-09-02 03:21:44'),
(78, 162, 136, '2022-09-02 03:21:45', '2022-09-02 03:21:45'),
(79, 161, 162, '2022-09-02 03:28:45', '2022-09-02 03:28:45'),
(80, 161, 159, '2022-09-02 03:28:48', '2022-09-02 03:28:48'),
(81, 161, 158, '2022-09-02 03:28:49', '2022-09-02 03:28:49'),
(82, 161, 157, '2022-09-02 03:28:50', '2022-09-02 03:28:50'),
(83, 161, 156, '2022-09-02 03:28:51', '2022-09-02 03:28:51'),
(84, 161, 154, '2022-09-02 03:28:53', '2022-09-02 03:28:53'),
(85, 161, 153, '2022-09-02 03:28:54', '2022-09-02 03:28:54'),
(86, 161, 150, '2022-09-02 03:29:01', '2022-09-02 03:29:01'),
(87, 160, 162, '2022-09-02 03:35:06', '2022-09-02 03:35:06'),
(88, 160, 161, '2022-09-02 03:35:06', '2022-09-02 03:35:06'),
(89, 160, 157, '2022-09-02 03:35:08', '2022-09-02 03:35:08'),
(90, 160, 155, '2022-09-02 03:35:10', '2022-09-02 03:35:10'),
(91, 160, 159, '2022-09-02 03:35:12', '2022-09-02 03:35:12'),
(92, 160, 150, '2022-09-02 03:35:15', '2022-09-02 03:35:15'),
(93, 160, 149, '2022-09-02 03:35:17', '2022-09-02 03:35:17'),
(94, 160, 144, '2022-09-02 03:35:19', '2022-09-02 03:35:19'),
(95, 160, 136, '2022-09-02 03:35:27', '2022-09-02 03:35:27'),
(96, 159, 161, '2022-09-02 03:41:39', '2022-09-02 03:41:39'),
(97, 159, 162, '2022-09-02 03:41:43', '2022-09-02 03:41:43'),
(98, 159, 157, '2022-09-02 03:41:46', '2022-09-02 03:41:46'),
(99, 159, 143, '2022-09-02 03:41:51', '2022-09-02 03:41:51'),
(100, 159, 144, '2022-09-02 03:41:52', '2022-09-02 03:41:52'),
(101, 159, 138, '2022-09-02 03:42:00', '2022-09-02 03:42:00'),
(102, 159, 137, '2022-09-02 03:42:01', '2022-09-02 03:42:01'),
(103, 158, 159, '2022-09-02 03:46:53', '2022-09-02 03:46:53'),
(104, 158, 137, '2022-09-02 03:47:02', '2022-09-02 03:47:02'),
(105, 158, 138, '2022-09-02 03:47:02', '2022-09-02 03:47:02'),
(106, 158, 136, '2022-09-02 03:47:11', '2022-09-02 03:47:11'),
(109, 158, 143, '2022-09-02 03:47:27', '2022-09-02 03:47:27'),
(110, 158, 144, '2022-09-02 03:47:27', '2022-09-02 03:47:27'),
(111, 156, 152, '2022-09-02 03:54:28', '2022-09-02 03:54:28'),
(112, 156, 151, '2022-09-02 03:54:32', '2022-09-02 03:54:32'),
(113, 156, 143, '2022-09-02 03:54:36', '2022-09-02 03:54:36'),
(114, 156, 142, '2022-09-02 03:54:37', '2022-09-02 03:54:37'),
(115, 155, 156, '2022-09-02 03:57:47', '2022-09-02 03:57:47'),
(116, 155, 153, '2022-09-02 03:57:48', '2022-09-02 03:57:48'),
(117, 155, 152, '2022-09-02 03:57:49', '2022-09-02 03:57:49'),
(118, 155, 151, '2022-09-02 03:57:50', '2022-09-02 03:57:50'),
(119, 155, 143, '2022-09-02 03:57:54', '2022-09-02 03:57:54'),
(120, 155, 142, '2022-09-02 03:57:55', '2022-09-02 03:57:55'),
(121, 155, 133, '2022-09-02 03:58:01', '2022-09-02 03:58:01'),
(122, 155, 134, '2022-09-02 03:58:02', '2022-09-02 03:58:02'),
(123, 154, 157, '2022-09-02 04:00:44', '2022-09-02 04:00:44'),
(124, 154, 155, '2022-09-02 04:00:46', '2022-09-02 04:00:46'),
(125, 154, 141, '2022-09-02 04:00:56', '2022-09-02 04:00:56'),
(126, 154, 140, '2022-09-02 04:00:56', '2022-09-02 04:00:56'),
(127, 154, 139, '2022-09-02 04:00:57', '2022-09-02 04:00:57'),
(128, 154, 131, '2022-09-02 04:01:05', '2022-09-02 04:01:05'),
(129, 154, 130, '2022-09-02 04:01:06', '2022-09-02 04:01:06'),
(130, 154, 132, '2022-09-02 04:01:13', '2022-09-02 04:01:13'),
(131, 153, 156, '2022-09-02 04:03:14', '2022-09-02 04:03:14'),
(132, 153, 155, '2022-09-02 04:03:15', '2022-09-02 04:03:15'),
(133, 153, 154, '2022-09-02 04:03:19', '2022-09-02 04:03:19'),
(134, 153, 133, '2022-09-02 04:03:29', '2022-09-02 04:03:29'),
(135, 153, 134, '2022-09-02 04:03:29', '2022-09-02 04:03:29'),
(136, 153, 135, '2022-09-02 04:03:31', '2022-09-02 04:03:31'),
(137, 152, 156, '2022-09-02 04:06:38', '2022-09-02 04:06:38'),
(138, 152, 155, '2022-09-02 04:06:38', '2022-09-02 04:06:38'),
(139, 152, 154, '2022-09-02 04:06:39', '2022-09-02 04:06:39'),
(140, 152, 153, '2022-09-02 04:06:41', '2022-09-02 04:06:41'),
(141, 152, 151, '2022-09-02 04:06:43', '2022-09-02 04:06:43'),
(142, 152, 133, '2022-09-02 04:06:50', '2022-09-02 04:06:50'),
(143, 151, 156, '2022-09-02 04:09:53', '2022-09-02 04:09:53'),
(144, 151, 155, '2022-09-02 04:09:54', '2022-09-02 04:09:54'),
(145, 151, 154, '2022-09-02 04:09:55', '2022-09-02 04:09:55'),
(146, 151, 153, '2022-09-02 04:09:55', '2022-09-02 04:09:55'),
(147, 151, 152, '2022-09-02 04:09:57', '2022-09-02 04:09:57'),
(148, 151, 143, '2022-09-02 04:10:14', '2022-09-02 04:10:14'),
(149, 151, 142, '2022-09-02 04:10:14', '2022-09-02 04:10:14'),
(150, 150, 147, '2022-09-02 04:13:48', '2022-09-02 04:13:48'),
(151, 150, 146, '2022-09-02 04:13:49', '2022-09-02 04:13:49'),
(152, 150, 145, '2022-09-02 04:13:50', '2022-09-02 04:13:50'),
(153, 149, 147, '2022-09-02 04:16:09', '2022-09-02 04:16:09'),
(154, 149, 146, '2022-09-02 04:16:09', '2022-09-02 04:16:09'),
(155, 149, 150, '2022-09-02 04:16:11', '2022-09-02 04:16:11'),
(156, 149, 145, '2022-09-02 04:16:16', '2022-09-02 04:16:16'),
(157, 148, 150, '2022-09-02 04:22:45', '2022-09-02 04:22:45'),
(158, 148, 149, '2022-09-02 04:22:45', '2022-09-02 04:22:45'),
(159, 148, 147, '2022-09-02 04:22:47', '2022-09-02 04:22:47'),
(160, 148, 146, '2022-09-02 04:22:47', '2022-09-02 04:22:47'),
(161, 148, 145, '2022-09-02 04:22:48', '2022-09-02 04:22:48'),
(162, 147, 149, '2022-09-02 04:24:52', '2022-09-02 04:24:52'),
(163, 147, 148, '2022-09-02 04:24:53', '2022-09-02 04:24:53'),
(165, 147, 160, '2022-09-02 04:25:35', '2022-09-02 04:25:35'),
(166, 147, 162, '2022-09-02 04:25:37', '2022-09-02 04:25:37'),
(167, 147, 161, '2022-09-02 04:25:38', '2022-09-02 04:25:38'),
(168, 146, 150, '2022-09-02 04:28:06', '2022-09-02 04:28:06'),
(169, 146, 149, '2022-09-02 04:28:07', '2022-09-02 04:28:07'),
(170, 146, 148, '2022-09-02 04:28:08', '2022-09-02 04:28:08'),
(171, 146, 147, '2022-09-02 04:28:13', '2022-09-02 04:28:13'),
(172, 145, 150, '2022-09-02 04:48:00', '2022-09-02 04:48:00'),
(173, 145, 149, '2022-09-02 04:48:01', '2022-09-02 04:48:01'),
(174, 145, 148, '2022-09-02 04:48:02', '2022-09-02 04:48:02'),
(175, 145, 147, '2022-09-02 04:48:03', '2022-09-02 04:48:03'),
(176, 145, 146, '2022-09-02 04:48:04', '2022-09-02 04:48:04'),
(177, 144, 158, '2022-09-02 04:49:17', '2022-09-02 04:49:17'),
(178, 144, 159, '2022-09-02 04:49:17', '2022-09-02 04:49:17'),
(179, 144, 152, '2022-09-02 04:49:22', '2022-09-02 04:49:22'),
(180, 144, 151, '2022-09-02 04:49:25', '2022-09-02 04:49:25'),
(181, 143, 144, '2022-09-02 04:50:47', '2022-09-02 04:50:47'),
(182, 143, 152, '2022-09-02 04:50:49', '2022-09-02 04:50:49'),
(183, 143, 153, '2022-09-02 04:50:50', '2022-09-02 04:50:50'),
(184, 143, 154, '2022-09-02 04:50:51', '2022-09-02 04:50:51'),
(185, 143, 155, '2022-09-02 04:50:52', '2022-09-02 04:50:52'),
(186, 142, 159, '2022-09-02 04:55:42', '2022-09-02 04:55:42'),
(187, 142, 158, '2022-09-02 04:55:43', '2022-09-02 04:55:43'),
(188, 142, 152, '2022-09-02 04:55:45', '2022-09-02 04:55:45'),
(189, 142, 153, '2022-09-02 04:55:46', '2022-09-02 04:55:46'),
(190, 142, 151, '2022-09-02 04:55:46', '2022-09-02 04:55:46'),
(191, 142, 143, '2022-09-02 04:55:49', '2022-09-02 04:55:49'),
(192, 142, 144, '2022-09-02 04:55:49', '2022-09-02 04:55:49'),
(193, 141, 154, '2022-09-02 04:57:28', '2022-09-02 04:57:28'),
(194, 141, 155, '2022-09-02 04:57:29', '2022-09-02 04:57:29'),
(195, 141, 156, '2022-09-02 04:57:30', '2022-09-02 04:57:30'),
(196, 141, 153, '2022-09-02 04:57:31', '2022-09-02 04:57:31'),
(197, 141, 151, '2022-09-02 04:57:33', '2022-09-02 04:57:33'),
(198, 141, 152, '2022-09-02 04:57:33', '2022-09-02 04:57:33'),
(199, 140, 141, '2022-09-02 04:58:55', '2022-09-02 04:58:55'),
(203, 140, 132, '2022-09-02 04:59:02', '2022-09-02 04:59:02'),
(204, 140, 131, '2022-09-02 04:59:02', '2022-09-02 04:59:02'),
(205, 140, 130, '2022-09-02 04:59:03', '2022-09-02 04:59:03'),
(206, 139, 141, '2022-09-02 05:00:43', '2022-09-02 05:00:43'),
(207, 139, 140, '2022-09-02 05:00:43', '2022-09-02 05:00:43'),
(208, 139, 132, '2022-09-02 05:00:45', '2022-09-02 05:00:45'),
(209, 139, 131, '2022-09-02 05:00:46', '2022-09-02 05:00:46'),
(210, 139, 130, '2022-09-02 05:00:47', '2022-09-02 05:00:47'),
(211, 138, 159, '2022-09-02 05:02:21', '2022-09-02 05:02:21'),
(212, 138, 158, '2022-09-02 05:02:23', '2022-09-02 05:02:23'),
(213, 138, 157, '2022-09-02 05:02:24', '2022-09-02 05:02:24'),
(214, 137, 159, '2022-09-02 05:04:20', '2022-09-02 05:04:20'),
(215, 137, 158, '2022-09-02 05:04:22', '2022-09-02 05:04:22'),
(216, 137, 157, '2022-09-02 05:04:22', '2022-09-02 05:04:22'),
(217, 137, 138, '2022-09-02 05:04:26', '2022-09-02 05:04:26'),
(218, 137, 136, '2022-09-02 05:04:27', '2022-09-02 05:04:27'),
(219, 136, 159, '2022-09-02 05:07:14', '2022-09-02 05:07:14'),
(220, 136, 158, '2022-09-02 05:07:14', '2022-09-02 05:07:14'),
(221, 136, 138, '2022-09-02 05:07:19', '2022-09-02 05:07:19'),
(222, 136, 137, '2022-09-02 05:07:20', '2022-09-02 05:07:20'),
(223, 136, 157, '2022-09-02 05:07:28', '2022-09-02 05:07:28'),
(224, 135, 154, '2022-09-02 05:30:31', '2022-09-02 05:30:31'),
(225, 135, 155, '2022-09-02 05:30:31', '2022-09-02 05:30:31'),
(226, 135, 153, '2022-09-02 05:30:34', '2022-09-02 05:30:34'),
(227, 135, 152, '2022-09-02 05:30:36', '2022-09-02 05:30:36'),
(228, 134, 156, '2022-09-02 05:32:02', '2022-09-02 05:32:02'),
(229, 134, 155, '2022-09-02 05:32:02', '2022-09-02 05:32:02'),
(230, 134, 154, '2022-09-02 05:32:03', '2022-09-02 05:32:03'),
(231, 134, 153, '2022-09-02 05:32:03', '2022-09-02 05:32:03'),
(232, 134, 152, '2022-09-02 05:32:04', '2022-09-02 05:32:04'),
(233, 133, 134, '2022-09-02 05:33:59', '2022-09-02 05:33:59'),
(234, 133, 135, '2022-09-02 05:34:00', '2022-09-02 05:34:00'),
(235, 133, 153, '2022-09-02 05:34:05', '2022-09-02 05:34:05'),
(236, 133, 152, '2022-09-02 05:34:05', '2022-09-02 05:34:05'),
(237, 133, 151, '2022-09-02 05:34:06', '2022-09-02 05:34:06'),
(238, 133, 156, '2022-09-02 05:34:07', '2022-09-02 05:34:07'),
(239, 133, 155, '2022-09-02 05:34:08', '2022-09-02 05:34:08'),
(240, 132, 159, '2022-09-02 05:34:51', '2022-09-02 05:34:51'),
(241, 132, 157, '2022-09-02 05:34:52', '2022-09-02 05:34:52'),
(242, 132, 139, '2022-09-02 05:34:58', '2022-09-02 05:34:58'),
(243, 132, 140, '2022-09-02 05:34:59', '2022-09-02 05:34:59'),
(244, 131, 130, '2022-09-02 05:35:58', '2022-09-02 05:35:58'),
(245, 131, 132, '2022-09-02 05:35:58', '2022-09-02 05:35:58'),
(246, 131, 139, '2022-09-02 05:36:00', '2022-09-02 05:36:00'),
(247, 131, 140, '2022-09-02 05:36:01', '2022-09-02 05:36:01'),
(248, 131, 157, '2022-09-02 05:36:38', '2022-09-02 05:36:38'),
(249, 131, 159, '2022-09-02 05:36:40', '2022-09-02 05:36:40'),
(250, 131, 158, '2022-09-02 05:36:41', '2022-09-02 05:36:41'),
(251, 130, 131, '2022-09-02 05:37:45', '2022-09-02 05:37:45'),
(252, 130, 132, '2022-09-02 05:37:46', '2022-09-02 05:37:46'),
(253, 130, 139, '2022-09-02 05:37:48', '2022-09-02 05:37:48'),
(254, 130, 140, '2022-09-02 05:37:49', '2022-09-02 05:37:49'),
(255, 130, 141, '2022-09-02 05:37:50', '2022-09-02 05:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `item_id`, `user_id`, `rating`, `comments`, `created_at`, `updated_at`) VALUES
(33, 161, 22, 3, 'Good Product', '2021-11-18 23:15:09', '2021-11-18 23:15:09'),
(34, 160, 22, 5, 'Nice Product', '2021-11-18 23:15:14', '2021-11-18 23:15:14'),
(35, 159, 22, 5, 'Nice', '2021-11-18 23:15:18', '2021-11-18 23:15:18'),
(36, 158, 22, 5, 'Best Item', '2021-11-18 23:15:23', '2021-11-18 23:15:23'),
(37, 157, 22, 2, 'Nice Item, I will buying next time', '2021-11-18 23:15:51', '2021-11-18 23:15:51'),
(38, 156, 22, 1, 'Nice', '2021-11-18 23:15:56', '2021-11-18 23:15:56'),
(39, 155, 22, 5, 'wow', '2021-11-18 23:16:05', '2021-11-18 23:16:05'),
(40, 154, 22, 5, 'Best', '2021-11-18 23:16:11', '2021-11-18 23:16:11'),
(41, 153, 22, 5, 'Nice Item, I will buying next time', '2021-11-18 23:16:41', '2021-11-18 23:16:41'),
(42, 161, 22, 5, NULL, '2021-11-18 23:16:45', '2021-11-18 23:16:45'),
(43, 152, 22, 5, NULL, '2021-11-18 23:16:48', '2021-11-18 23:16:48'),
(44, 152, 22, 5, 'Nice Item, I will buying next time', '2021-11-18 23:16:52', '2021-11-18 23:16:52'),
(45, 151, 22, 5, NULL, '2021-11-18 23:16:57', '2021-11-18 23:16:57'),
(46, 160, 22, 5, 'Nice Product', '2021-11-18 23:17:21', '2021-11-18 23:17:21'),
(56, 157, 1, 5, 'food products are often laden with bacterial and', '2022-08-08 11:54:42', '2022-08-08 11:54:42'),
(57, 155, 1, 5, 'test', '2022-08-13 10:03:28', '2022-08-13 10:03:28'),
(58, 154, 1, 5, 'test', '2022-08-13 10:03:52', '2022-08-13 10:03:52'),
(59, 157, 63, 5, 'Test', '2022-08-13 17:14:43', '2022-08-13 17:14:45'),
(60, 157, 64, 5, 'food products are often laden with bacterial and', '2022-08-13 17:15:51', '2022-08-13 17:15:52'),
(61, 160, 1, 5, 'Vegetables are parts of plants that are consumed by humans or other animals as food.', '2022-08-13 11:33:34', '2022-08-13 11:33:34'),
(62, 162, 1, 5, 'f', '2022-08-17 10:38:32', '2022-08-17 10:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `section_manages`
--

CREATE TABLE `section_manages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `manage_type` varchar(191) DEFAULT NULL,
  `section` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_manages`
--

INSERT INTO `section_manages` (`id`, `manage_type`, `section`, `title`, `url`, `image`, `desc`, `is_publish`, `created_at`, `updated_at`) VALUES
(5, 'home_1', 'section_1', 'Home Slider', NULL, '18082022135936-home1-bg-slider.jpg', NULL, 1, '2022-08-18 07:59:44', '2022-08-22 11:48:38'),
(6, 'home_1', 'section_2', 'Featured Categories', NULL, NULL, 'Choose your Categories', 1, '2022-08-18 08:02:02', '2022-08-22 11:48:38'),
(7, 'home_1', 'section_3', 'Popular Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-18 08:02:40', '2022-08-22 11:48:38'),
(8, 'home_1', 'section_4', 'One More Offer For You!', NULL, '18082022140338-home1-bg-offer.jpg', 'Choose your offer', 1, '2022-08-18 08:03:46', '2022-08-22 11:48:38'),
(9, 'home_1', 'section_5', 'Organic & Fresh Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-18 08:04:07', '2022-08-22 11:48:38'),
(10, 'home_1', 'section_6', 'Deals Of The Day', NULL, NULL, 'Only Organic Products', 1, '2022-08-18 08:05:27', '2022-08-22 11:48:38'),
(11, 'home_1', 'section_8', 'New Products', NULL, NULL, NULL, 1, '2022-08-18 22:13:13', '2022-08-22 11:48:38'),
(15, 'home_1', 'section_9', 'Top Selling', NULL, NULL, NULL, 1, '2022-08-18 22:13:33', '2022-08-22 11:48:38'),
(16, 'home_1', 'section_10', 'Trending Products', NULL, NULL, NULL, 1, '2022-08-18 22:13:54', '2022-08-22 11:48:38'),
(17, 'home_1', 'section_11', 'Top Rated', NULL, NULL, NULL, 1, '2022-08-18 22:14:10', '2022-08-22 11:48:38'),
(18, 'home_1', 'section_15', 'Footer', NULL, '18082022140802-footer_bg.jpg', NULL, 1, '2022-08-18 08:08:07', '2022-08-22 11:48:38'),
(19, 'home_2', 'section_1', 'Home Slider', NULL, NULL, NULL, 1, '2022-08-18 23:14:35', '2022-08-22 11:48:38'),
(20, 'home_2', 'section_2', 'Featured Categories', NULL, NULL, 'Choose your Categories', 1, '2022-08-18 23:15:36', '2022-08-22 11:48:38'),
(21, 'home_2', 'section_3', 'One More Offer For You!', NULL, '18082022140338-home1-bg-offer.jpg', 'Choose your offer', 1, '2022-08-19 00:18:25', '2022-08-22 11:48:38'),
(22, 'home_2', 'section_4', 'New Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 00:20:08', '2022-08-22 11:48:38'),
(23, 'home_2', 'section_5', 'Popular Products', NULL, '18082022140338-home1-bg-offer.jpg', 'Only Organic Products', 1, '2022-08-19 04:25:41', '2022-08-22 11:48:38'),
(24, 'home_2', 'section_6', 'Top Selling', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 04:27:27', '2022-08-22 11:48:38'),
(25, 'home_2', 'section_8', 'Trending Products', NULL, '18082022140338-home1-bg-offer.jpg', 'Only Organic Products', 1, '2022-08-19 04:30:55', '2022-08-22 11:48:38'),
(26, 'home_2', 'section_9', 'Top Rated Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 04:36:10', '2022-08-22 11:48:38'),
(27, 'home_2', 'section_10', 'Deals Of The Day', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 04:40:05', '2022-08-22 11:48:38'),
(28, 'home_2', 'section_15', 'Footer', NULL, '18082022140802-footer_bg.jpg', NULL, 1, '2022-08-19 06:32:02', '2022-08-22 11:48:47'),
(29, 'home_3', 'section_1', 'Home Slider', NULL, NULL, NULL, 1, '2022-08-19 08:37:08', '2022-08-22 11:48:47'),
(30, 'home_3', 'section_2', 'One More Offer For You!', NULL, NULL, 'Choose your offer', 1, '2022-08-19 08:50:59', '2022-08-22 11:48:47'),
(31, 'home_3', 'section_3', 'Featured Categories', NULL, NULL, 'Choose your Categories', 1, '2022-08-19 08:55:04', '2022-08-22 11:48:47'),
(32, 'home_3', 'section_4', 'Deals Of The Day', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 09:08:31', '2022-08-22 11:48:47'),
(33, 'home_3', 'section_5', 'Popular Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 08:57:26', '2022-08-22 11:48:47'),
(34, 'home_3', 'section_6', 'New Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 09:03:25', '2022-08-22 11:48:47'),
(35, 'home_3', 'section_7', 'Top Selling', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 09:04:32', '2022-08-22 11:48:47'),
(36, 'home_3', 'section_8', 'Trending Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 09:05:45', '2022-08-22 11:48:47'),
(37, 'home_3', 'section_9', 'Top Rated Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 09:06:47', '2022-08-22 11:48:47'),
(38, 'home_3', 'section_15', 'Footer', NULL, '18082022140802-footer_bg.jpg', NULL, 1, '2022-08-19 09:09:32', '2022-08-22 11:48:47'),
(363, 'home_4', 'section_1', 'Home Slider', NULL, NULL, NULL, 1, '2022-08-20 10:00:39', '2022-08-22 11:48:47'),
(364, 'home_4', 'section_2', 'Featured Categories', NULL, NULL, 'Choose your Categories', 1, '2022-08-20 10:25:33', '2022-08-22 11:48:47'),
(365, 'home_4', 'section_3', 'One More Offer For You!', NULL, '18082022140338-home1-bg-offer.jpg', 'Choose your offer', 1, '2022-08-21 10:49:34', '2022-08-22 11:48:47'),
(366, 'home_4', 'section_4', 'Deals Of The Day', NULL, NULL, 'Only Organic Products', 1, '2022-08-21 10:52:35', '2022-08-22 11:48:47'),
(367, 'home_4', 'section_5', 'New Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-21 10:54:10', '2022-08-22 11:48:47'),
(368, 'home_4', 'section_6', 'Popular Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-21 10:55:42', '2022-08-22 11:48:47'),
(369, 'home_4', 'section_7', 'Top Selling', NULL, NULL, 'Only Organic Products', 1, '2022-08-21 10:59:46', '2022-08-22 11:48:47'),
(370, 'home_4', 'section_8', 'Top Rated Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-21 11:04:29', '2022-08-22 11:48:47'),
(371, 'home_4', 'section_9', 'Shop by Brands', NULL, NULL, NULL, 1, '2022-08-21 11:06:57', '2022-08-22 11:48:47'),
(372, 'home_4', 'section_10', 'Trending Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-21 11:10:25', '2022-08-22 11:48:52'),
(373, 'home_4', 'section_15', 'Footer', NULL, '18082022140802-footer_bg.jpg', NULL, 1, '2022-08-21 11:12:41', '2022-08-22 11:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `shipping_fee` double(8,2) NOT NULL,
  `desc` text DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `title`, `shipping_fee`, `desc`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Shipment will be within 1 day. Fee for per seller', 15.00, NULL, 1, '2021-07-01 02:28:38', '2022-06-10 02:47:52'),
(2, 'Shipment will be within 3 days. Fee for per seller', 10.00, NULL, 1, '2021-07-01 02:29:44', '2022-06-10 02:47:42'),
(3, 'Shipment will be within 5-10 days. Fee for per seller', 5.00, NULL, 1, '2021-10-13 09:21:24', '2022-06-10 02:47:33'),
(4, 'Shipment will be within 10-15 days. Fee for per seller', 0.00, NULL, 1, '2021-10-13 09:22:20', '2022-06-10 02:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(191) NOT NULL,
  `instance` varchar(191) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_type` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_type`, `url`, `image`, `title`, `desc`, `is_publish`, `created_at`, `updated_at`) VALUES
(15, 'home_1', '#', '01072022095735-h1-layer5.png', 'Organic food is now widely available', '{\"sub_title\":\"A trusted brand for organic food\",\"layer_image_1\":\"01072022095755-h1-layer6.png\",\"layer_image_2\":\"01072022095757-h1-layer7.png\",\"layer_image_3\":\"01072022095801-h1-layer8.png\",\"button_text\":\"Shop Now\",\"target\":null}', 1, '2022-07-01 04:00:09', '2022-08-19 00:17:13'),
(16, 'home_1', '#', '01072022095731-h1-layer1.png', 'Take Organic Food and Stay Healthy', '{\"sub_title\":\"A trusted brand for organic food\",\"layer_image_1\":\"01072022095745-h1-layer2.png\",\"layer_image_2\":\"01072022095750-h1-layer3.png\",\"layer_image_3\":\"01072022095752-h1-layer4.png\",\"button_text\":\"Shop Now\",\"target\":null}', 1, '2022-07-01 04:06:04', '2022-08-19 00:12:22'),
(18, 'home_2', '#', '20082022151519-slider_h2_2.jpg', 'Organic food is now widely available', '{\"sub_title\":\"A trusted brand for organic food\",\"layer_image_1\":null,\"layer_image_2\":null,\"layer_image_3\":null,\"button_text\":\"Shop Now\",\"target\":null}', 1, '2022-08-19 00:14:34', '2022-08-20 09:15:23'),
(19, 'home_2', '#', '20082022150916-slider_h2_1.jpg', 'Take Organic Food and Stay Healthy', '{\"sub_title\":\"A trusted brand for organic food\",\"layer_image_1\":null,\"layer_image_2\":null,\"layer_image_3\":null,\"button_text\":\"Shop Now\",\"target\":null}', 1, '2022-08-19 00:15:12', '2022-08-20 09:09:20'),
(20, 'home_3', '#', '19082022181336-slider-2.jpg', 'Organic food is now widely available', '{\"sub_title\":\"A trusted brand for organic food\",\"layer_image_1\":null,\"layer_image_2\":null,\"layer_image_3\":null,\"button_text\":\"Shop Now\",\"target\":null}', 1, '2022-08-19 08:43:15', '2022-08-19 12:13:40'),
(21, 'home_3', '#', '19082022181217-slider-1.jpg', 'Take Organic Food and Stay Healthy', '{\"sub_title\":\"A trusted brand for organic food\",\"layer_image_1\":null,\"layer_image_2\":null,\"layer_image_3\":null,\"button_text\":\"Shop Now\",\"target\":null}', 1, '2022-08-19 08:44:39', '2022-08-19 12:12:21'),
(24, 'home_4', '#', '22082022150919-banner_5.jpg', 'Fresh Fruit', '{\"sub_title\":\"Only Organic Products\",\"layer_image_1\":null,\"layer_image_2\":null,\"layer_image_3\":null,\"button_text\":\"Shop Now\",\"target\":null}', 1, '2022-08-22 09:09:28', '2022-08-22 09:09:28'),
(25, 'home_4', '#', '22082022151023-banner_4.jpg', 'Juice', '{\"sub_title\":\"Only Organic Products\",\"layer_image_1\":null,\"layer_image_2\":null,\"layer_image_3\":null,\"button_text\":\"Shop Now\",\"target\":null}', 1, '2022-08-22 09:10:33', '2022-08-22 09:10:33'),
(26, 'home_4', '#', '22082022151100-banner-3.jpg', 'Fast food', '{\"sub_title\":\"Only Organic Products\",\"layer_image_1\":null,\"layer_image_2\":null,\"layer_image_3\":null,\"button_text\":\"Shop Now\",\"target\":null}', 1, '2022-08-22 09:11:06', '2022-08-22 09:11:06'),
(27, 'home_4', '#', '22082022151301-banner-2.jpg', 'Coffee', '{\"sub_title\":\"Only Organic Products\",\"layer_image_1\":null,\"layer_image_2\":null,\"layer_image_3\":null,\"button_text\":\"Shop Now\",\"target\":null}', 1, '2022-08-22 09:13:13', '2022-08-22 09:13:13'),
(28, 'home_4', '#', '22082022151335-banner_1.jpg', 'Vegetables', '{\"sub_title\":\"Only Organic Products\",\"layer_image_1\":null,\"layer_image_2\":null,\"layer_image_3\":null,\"button_text\":\"Shop Now\",\"target\":null}', 1, '2022-08-22 09:13:50', '2022-08-22 09:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `social_icon` varchar(120) DEFAULT NULL,
  `target` varchar(100) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `title`, `url`, `social_icon`, `target`, `is_publish`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', 'https://www.facebook.com/', 'bi bi-facebook', '_blank', 1, '2021-07-12 09:24:54', '2021-07-12 09:49:25'),
(3, 'Twitter', 'https://twitter.com/', 'bi bi-twitter', '_blank', 1, '2021-07-12 09:37:32', '2021-07-12 09:49:25'),
(4, 'Instagram', 'https://www.instagram.com/', 'bi bi-instagram', '_blank', 1, '2021-09-07 10:40:20', '2022-07-22 06:44:00'),
(5, 'Youtube', 'https://www.youtube.com/', 'bi bi-youtube', '_blank', 1, '2021-11-06 10:54:01', '2022-07-22 06:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_address` varchar(191) DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `phone_number` varchar(191) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email_address`, `first_name`, `last_name`, `address`, `phone_number`, `status`, `created_at`, `updated_at`) VALUES
(2, 'selimrana@gmail.com', 'Selim Rana', 'Selim Rana', NULL, NULL, 'subscribed', '2021-12-09 12:09:30', '2021-12-09 12:09:30'),
(3, 'aieub_ali@gmail.com', 'AIEUB ALI', 'AIEUB ALI', NULL, NULL, 'subscribed', '2022-01-18 07:51:47', '2022-01-18 07:51:47'),
(4, 'salmaakter@gmail.com', 'SALMA AKTER', 'SALMA AKTER', NULL, NULL, 'subscribed', '2022-01-18 07:56:58', '2022-01-18 07:56:58'),
(5, 'fuadhasan@email.com', 'Fuad Hasan', 'Fuad Hasan', NULL, NULL, 'subscribed', '2022-01-20 09:09:41', '2022-01-20 09:09:41'),
(7, 'abukawser@gmail.com', NULL, NULL, NULL, NULL, 'subscribed', '2022-08-30 10:34:21', '2022-08-30 10:34:21'),
(9, 'monirkhan@gmail.com', NULL, NULL, NULL, NULL, 'subscribed', '2022-08-31 08:00:49', '2022-08-31 08:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `percentage` double(8,2) NOT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `percentage`, `is_publish`, `created_at`, `updated_at`) VALUES
(38, 'VAT', 5.00, 1, '2021-09-14 11:19:52', '2021-12-28 09:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `timezone_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `timezone`, `timezone_name`, `created_at`, `updated_at`) VALUES
(1, 'Pacific/Midway', 'Midway Island, Samoa', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(2, 'Pacific/Pago_Pago', 'Pago Pago', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(3, 'Pacific/Honolulu', 'Hawaii', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(4, 'America/Anchorage', 'Alaska', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(5, 'America/Vancouver', 'Vancouver', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(6, 'America/Los_Angeles', 'Pacific Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(7, 'America/Tijuana', 'Tijuana', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(8, 'America/Edmonton', 'Edmonton', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(9, 'America/Denver', 'Mountain Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(10, 'America/Phoenix', 'Arizona', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(11, 'America/Mazatlan', 'Mazatlan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(12, 'America/Winnipeg', 'Winnipeg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(13, 'America/Regina', 'Saskatchewan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(14, 'America/Chicago', 'Central Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(15, 'America/Mexico_City', 'Mexico City', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(16, 'America/Guatemala', 'Guatemala', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(17, 'America/El_Salvador', 'El Salvador', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(18, 'America/Managua', 'Managua', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(19, 'America/Costa_Rica', 'Costa Rica', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(20, 'America/Montreal', 'Montreal', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(21, 'America/New_York', 'Eastern Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(22, 'America/Indianapolis', 'Indiana (East)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(23, 'America/Panama', 'Panama', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(24, 'America/Bogota', 'Bogota', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(25, 'America/Lima', 'Lima', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(26, 'America/Halifax', 'Halifax', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(27, 'America/Puerto_Rico', 'Puerto Rico', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(28, 'America/Caracas', 'Caracas', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(29, 'America/Santiago', 'Santiago', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(30, 'America/St_Johns', 'Newfoundland and Labrador', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(31, 'America/Montevideo', 'Montevideo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(32, 'America/Araguaina', 'Brasilia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(33, 'America/Argentina/Buenos_Aires', 'Buenos Aires, Georgetown', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(34, 'America/Godthab', 'Greenland', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(35, 'America/Sao_Paulo', 'Sao Paulo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(36, 'Atlantic/Azores', 'Azores', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(37, 'Canada/Atlantic', 'Atlantic Time (Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(38, 'Atlantic/Cape_Verde', 'Cape Verde Islands', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(39, 'UTC', 'Universal Time UTC', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(40, 'Etc/Greenwich', 'Greenwich Mean Time', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(41, 'Europe/Belgrade', 'Belgrade, Bratislava, Ljubljana', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(42, 'CET', 'Sarajevo, Skopje, Zagreb', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(43, 'Atlantic/Reykjavik', 'Reykjavik', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(44, 'Europe/Dublin', 'Dublin', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(45, 'Europe/London', 'London', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(46, 'Europe/Lisbon', 'Lisbon', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(47, 'Africa/Casablanca', 'Casablanca', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(48, 'Africa/Nouakchott', 'Nouakchott', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(49, 'Europe/Oslo', 'Oslo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(50, 'Europe/Copenhagen', 'Copenhagen', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(51, 'Europe/Brussels', 'Brussels', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(52, 'Europe/Berlin', 'Amsterdam, Berlin, Rome, Stockholm, Vienna', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(53, 'Europe/Helsinki', 'Helsinki', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(54, 'Europe/Amsterdam', 'Amsterdam', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(55, 'Europe/Rome', 'Rome', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(56, 'Europe/Stockholm', 'Stockholm', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(57, 'Europe/Vienna', 'Vienna', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(58, 'Europe/Luxembourg', 'Luxembourg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(59, 'Europe/Paris', 'Paris', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(60, 'Europe/Zurich', 'Zurich', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(61, 'Europe/Madrid', 'Madrid', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(62, 'Africa/Bangui', 'West Central Africa', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(63, 'Africa/Algiers', 'Algiers', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(64, 'Africa/Tunis', 'Tunis', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(65, 'Africa/Harare', 'Harare, Pretoria', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(66, 'Africa/Nairobi', 'Nairobi', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(67, 'Europe/Warsaw', 'Warsaw', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(68, 'Europe/Prague', 'Prague Bratislava', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(69, 'Europe/Budapest', 'Budapest', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(70, 'Europe/Sofia', 'Sofia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(71, 'Europe/Istanbul', 'Istanbul', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(72, 'Europe/Athens', 'Athens', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(73, 'Europe/Bucharest', 'Bucharest', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(74, 'Asia/Nicosia', 'Nicosia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(75, 'Asia/Beirut', 'Beirut', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(76, 'Asia/Damascus', 'Damascus', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(77, 'Asia/Jerusalem', 'Jerusalem', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(78, 'Asia/Amman', 'Amman', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(79, 'Africa/Tripoli', 'Tripoli', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(80, 'Africa/Cairo', 'Cairo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(81, 'Africa/Johannesburg', 'Johannesburg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(82, 'Europe/Moscow', 'Moscow', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(83, 'Asia/Baghdad', 'Baghdad', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(84, 'Asia/Kuwait', 'Kuwait', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(85, 'Asia/Riyadh', 'Riyadh', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(86, 'Asia/Bahrain', 'Bahrain', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(87, 'Asia/Qatar', 'Qatar', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(88, 'Asia/Aden', 'Aden', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(89, 'Asia/Tehran', 'Tehran', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(90, 'Africa/Khartoum', 'Khartoum', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(91, 'Africa/Djibouti', 'Djibouti', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(92, 'Africa/Mogadishu', 'Mogadishu', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(93, 'Asia/Dubai', 'Dubai', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(94, 'Asia/Muscat', 'Muscat', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(95, 'Asia/Baku', 'Baku, Tbilisi, Yerevan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(96, 'Asia/Kabul', 'Kabul', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(97, 'Asia/Yekaterinburg', 'Yekaterinburg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(98, 'Asia/Tashkent', 'Islamabad, Karachi, Tashkent', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(99, 'Asia/Calcutta', 'India', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(100, 'Asia/Kathmandu', 'Kathmandu', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(101, 'Asia/Novosibirsk', 'Novosibirsk', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(102, 'Asia/Almaty', 'Almaty', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(103, 'Asia/Dacca', 'Dacca', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(104, 'Asia/Krasnoyarsk', 'Krasnoyarsk', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(105, 'Asia/Dhaka', 'Astana, Dhaka', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(106, 'Asia/Bangkok', 'Bangkok', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(107, 'Asia/Saigon', 'Vietnam', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(108, 'Asia/Jakarta', 'Jakarta', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(109, 'Asia/Irkutsk', 'Irkutsk, Ulaanbaatar', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(110, 'Asia/Shanghai', 'Beijing, Shanghai', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(111, 'Asia/Hong_Kong', 'Hong Kong', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(112, 'Asia/Taipei', 'Taipei', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(113, 'Asia/Kuala_Lumpur', 'Kuala Lumpur', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(114, 'Asia/Singapore', 'Singapore', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(115, 'Australia/Perth', 'Perth', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(116, 'Asia/Yakutsk', 'Yakutsk', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(117, 'Asia/Seoul', 'Seoul', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(118, 'Asia/Tokyo', 'Osaka, Sapporo, Tokyo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(119, 'Australia/Darwin', 'Darwin', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(120, 'Australia/Adelaide', 'Adelaide', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(121, 'Asia/Vladivostok', 'Vladivostok', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(122, 'Pacific/Port_Moresby', 'Guam, Port Moresby', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(123, 'Australia/Brisbane', 'Brisbane', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(124, 'Australia/Sydney', 'Canberra, Melbourne, Sydney', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(125, 'Australia/Hobart', 'Hobart', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(126, 'Asia/Magadan', 'Magadan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(127, 'SST', 'Solomon Islands', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(128, 'Pacific/Noumea', 'New Caledonia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(129, 'Asia/Kamchatka', 'Kamchatka', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(130, 'Pacific/Fiji', 'Fiji Islands, Marshall Islands', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(131, 'Pacific/Auckland', 'Auckland, Wellington', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(132, 'Asia/Kolkata', 'Mumbai, Kolkata, New Delhi', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(133, 'Europe/Kiev', 'Kiev', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(134, 'America/Tegucigalpa', 'Tegucigalpa', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(135, 'Pacific/Apia', 'Independent State of Samoa', '2021-03-31 00:00:00', '2021-03-31 01:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `tp_options`
--

CREATE TABLE `tp_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL,
  `option_value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_options`
--

INSERT INTO `tp_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(3, 'general_settings', '{\"company\":\"Kingo sr\",\"email\":\"kondoramadhani@gmail.com\",\"phone\":\"+255693771797\",\"site_name\":\"Organis\",\"site_title\":\"Multivendor Organic Food & Grocery Laravel eCommerce\",\"address\":\"Dar es Salaam\",\"timezone\":\"Africa\\/Cairo\"}', '2021-03-31 15:59:45', '2023-02-16 20:24:20'),
(5, 'google_recaptcha', '{\"sitekey\":\"---------------------------------------------------------------\",\"secretkey\":\"---------------------------------------------------------------\",\"is_recaptcha\":0}', '2021-03-31 17:56:01', '2022-09-09 04:13:38'),
(35, 'mail_settings', '{\"ismail\":0,\"from_name\":\"Organis\",\"from_mail\":\"admin@companyname.com\",\"to_name\":\"Theme Posh\",\"to_mail\":\"tomailaddress@gmail.com\",\"mailer\":\"smtp\",\"smtp_host\":\"mail.companyname.com\",\"smtp_port\":\"465\",\"smtp_security\":\"ssl\",\"smtp_username\":\"admin@companyname.com\",\"smtp_password\":\"companyname\"}', '2021-06-03 19:33:17', '2022-09-09 04:14:48'),
(69, 'custom_css', NULL, '2021-06-06 23:18:38', '2021-11-26 04:38:46'),
(70, 'custom_js', NULL, '2021-06-06 23:46:24', '2021-11-26 04:37:19'),
(74, 'theme_option_seo', '{\"og_title\":\"Lorem Ipsum un testo segnaposto utilizzato nel settore della tipografia e della stampa.\",\"og_image\":\"01072022095735-200x200-h1-layer5.png\",\"og_description\":\"Lorem Ipsum un testo segnaposto utilizzato nel settore della tipografia e della stampa.\",\"og_keywords\":\"Lorem Ipsum un testo segnaposto utilizzato nel settore della tipografia e della stampa.\",\"is_publish\":\"1\"}', '2021-07-11 10:38:12', '2022-08-06 08:30:20'),
(77, 'theme_logo', '{\"favicon\":\"24062022060012-favicon.ico\",\"front_logo\":\"24062022060027-200x200-logo.png\",\"back_logo\":\"24062022060027-200x200-logo.png\"}', '2021-07-12 11:15:36', '2022-06-24 00:00:36'),
(78, 'facebook', '{\"fb_app_id\":null,\"is_publish\":\"2\"}', '2021-08-05 11:00:35', '2021-11-26 03:59:37'),
(79, 'twitter', '{\"twitter_id\":null,\"is_publish\":\"2\"}', '2021-08-05 11:10:01', '2021-11-26 03:57:18'),
(80, 'whatsapp', '{\"whatsapp_id\":\"+255678453797\",\"whatsapp_text\":null,\"position\":\"left\",\"is_publish\":\"1\"}', '2021-08-05 11:25:20', '2023-02-16 16:58:41'),
(82, 'currency', '{\"currency_name\":\"TSHS\",\"currency_icon\":\"Tshs\",\"currency_position\":\"left\"}', '2021-08-21 10:22:13', '2023-02-16 20:25:52'),
(87, 'theme_option_header', '{\"address\":\"12 Poor Street, New York.\",\"phone\":\"+1 964 565 87652\",\"is_publish\":\"1\"}', '2021-08-29 08:45:26', '2022-06-24 00:38:20'),
(91, 'theme_option_footer', '{\"about_logo\":\"16112021165416-payment.png\",\"about_desc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"is_publish_about\":\"1\",\"address\":\"Dar es salaam ,Tanzania\",\"phone\":\"+255678453797\",\"email\":\"kondoramadhani@gmail.com\",\"is_publish_contact\":\"1\",\"copyright\":\"Copyright &copy; 2023, All rights reserved by <a href=\\\"#\\\">kingosr<\\/a>\",\"is_publish_copyright\":\"1\",\"payment_gateway_icon\":\"16112021165416-payment.png\",\"is_publish_payment\":\"1\"}', '2021-08-29 11:15:13', '2023-02-18 12:27:34'),
(93, 'home-video', '{\"title\":\"Fresh & Healthy Organic Vegetables\",\"short_desc\":\"Apparently we had reached a great height in the atmosphere, for the sky was a dead black, and the stars had ceased to twinkle.\",\"url\":\"#\",\"video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=FvFsMjRfvyI\",\"button_text\":\"Shop Now\",\"target\":null,\"image\":\"17072022175837-h1_video_bg.jpg\",\"is_publish\":\"1\"}', '2021-09-01 11:39:35', '2022-09-02 05:42:27'),
(94, 'facebook-pixel', '{\"fb_pixel_id\":null,\"is_publish\":\"2\"}', '2021-09-17 11:52:01', '2021-11-26 03:59:21'),
(95, 'google_analytics', '{\"tracking_id\":null,\"is_publish\":\"2\"}', '2021-09-18 08:11:08', '2021-11-26 04:35:45'),
(96, 'google_tag_manager', '{\"google_tag_manager_id\":null,\"is_publish\":\"2\"}', '2021-09-18 08:30:10', '2021-11-26 04:35:16'),
(98, 'cash_on_delivery', '{\"description\":\"Please pay money directly to the postman, if you choose cash on delivery method (COD).\",\"isenable\":1}', '2021-10-07 10:42:26', '2022-05-20 12:05:02'),
(99, 'bank_transfer', '{\"description\":\"Please send money to our bank account: A\\/C- 12365402547895487454.\",\"isenable\":1}', '2021-10-07 10:53:34', '2023-02-16 20:26:24'),
(100, 'stripe', '{\"stripe_key\":\"----------------------------------\",\"stripe_secret\":\"-----------------------------------\",\"currency\":\"usd\",\"isenable\":0}', '2021-10-07 12:14:49', '2022-09-09 03:52:05'),
(101, 'mailchimp', '{\"mailchimp_api_key\":\"-----------------------------------------------\",\"audience_id\":\"----------------------------------------------\",\"is_mailchimp\":0}', '2021-11-01 09:27:17', '2022-09-09 04:10:50'),
(102, 'subscribe_popup', '{\"subscribe_title\":\"Subscribe our newsletter\",\"subscribe_popup_desc\":\"Subscribe to the mailing list to receive updates on special offers, new arrivals and our promotions.\",\"bg_image_popup\":\"22082022151023-banner_4.jpg\",\"background_image\":\"22072022102835-footer-top.jpg\",\"is_subscribe_popup\":1,\"is_subscribe_footer\":1}', '2021-11-01 10:00:58', '2022-09-09 04:11:44'),
(111, 'seller_settings', '{\"fee_withdrawal\":\"5\",\"product_auto_publish\":1,\"seller_auto_active\":1}', '2022-01-07 10:45:07', '2022-08-06 08:33:36'),
(112, 'language_switcher', '{\"is_language_switcher\":\"2\"}', '2022-01-22 10:22:15', '2022-09-09 03:49:00'),
(114, 'paypal', '{\"paypal_client_id\":\"----------------------------------\",\"paypal_secret\":\"----------------------------------\",\"paypal_currency\":\"USD\",\"ismode_paypal\":1,\"isenable_paypal\":0}', '2022-05-19 23:25:59', '2022-09-09 03:51:34'),
(116, 'razorpay', '{\"razorpay_key_id\":\"----------------------------------\",\"razorpay_key_secret\":\"----------------------------------\",\"razorpay_currency\":\"USD\",\"ismode_razorpay\":1,\"isenable_razorpay\":0}', '2022-05-20 00:28:45', '2022-09-09 03:51:44'),
(117, 'mollie', '{\"mollie_api_key\":\"----------------------------------\",\"mollie_currency\":\"USD\",\"ismode_mollie\":1,\"isenable_mollie\":0}', '2022-05-20 07:50:45', '2022-09-09 03:52:58'),
(131, 'page_variation', '{\"home_variation\":\"home_1\",\"category_variation\":\"left_sidebar\",\"brand_variation\":\"left_sidebar\",\"seller_variation\":\"left_sidebar\"}', '2022-08-11 23:58:42', '2022-09-09 03:48:34'),
(133, 'google_map', '{\"googlemap_apikey\":\"---------------------------------------------------------------\",\"is_googlemap\":0}', '2022-08-27 10:17:37', '2022-09-09 04:13:43'),
(147, 'theme_color', '{\"theme_color\":\"#61a402\",\"green_color\":\"#65971e\",\"light_green_color\":\"#daeac5\",\"lightness_green_color\":\"#fdfff8\",\"gray_color\":\"#8d949d\",\"dark_gray_color\":\"#595959\",\"light_gray_color\":\"#e7e7e7\",\"black_color\":\"#232424\",\"white_color\":\"#ffffff\"}', '2022-09-01 23:55:08', '2022-09-01 23:58:28'),
(152, 'pcode', '{\"pcode\":\"TnVsbGVkIGJ5IGNvZGluZ3Nob3AubmV0\",\"verified\":1}', '2023-02-16 16:57:29', '2023-02-16 16:57:29'),
(153, 'vipc', '{\"bactive\":1,\"resetkey\":5}', '2023-02-16 16:57:29', '2023-02-16 16:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `tp_status`
--

CREATE TABLE `tp_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_status`
--

INSERT INTO `tp_status` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Publish', '2021-05-01 04:46:48', '2021-05-01 04:46:50'),
(2, 'Draft', '2021-05-01 04:47:05', '2021-05-01 04:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `shop_name` varchar(200) DEFAULT NULL,
  `shop_url` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip_code` varchar(200) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `bactive` varchar(200) DEFAULT NULL,
  `bkey` varchar(200) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `shop_name`, `shop_url`, `phone`, `address`, `city`, `state`, `zip_code`, `country_id`, `photo`, `bactive`, `bkey`, `status_id`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@themeposh.xyz', NULL, '$2y$10$l9SQeTowkjGJQkBmm00iU.E/yU9wXihtSSxTJiTPUP74ug9AVeONe', 'Bata', 'bata', '0123456789', '56 King Street, New York', NULL, NULL, NULL, NULL, '06082021041147-photo.png', 'YWRtaW4xMjM0NTY=', NULL, 1, 1, 'HnKOvimx2Ceg1qTPG2kl2wDczWM69kOVMVFDjM5ZiCkfSc6IY0MTtzw1zKmH', '2021-03-26 13:22:14', '2022-09-09 04:15:54'),
(22, 'Abdullah Al Mamun', 'customer@gmail.com', NULL, '$2y$10$i6vnWVumKSJvFz7YP9z6GepuxQgLIlUB7MpBcmxVM3CdaPhSNUjXa', 'Country Boy', 'country-boy', '0123456789', 'Mirpur 2, Dhaka, Bangladesh', NULL, NULL, NULL, NULL, '06082021041147-photo.png', 'Y3VzdG9tZXIxMjM0NTY=', NULL, 1, 2, NULL, '2021-10-01 10:31:45', '2022-01-25 10:15:53'),
(47, 'Kawser Ahmed', 'hasbi@gmail.com', NULL, '$2y$10$0IkGI8kBOMK/IlVDEmuFgO./Wp8dCR/Tx14K7bEx1aRL7c2sJvgxG', 'Hasbi', 'hasbi', '0123456789', 'Dhaka, Bangladesh', 'Dhaka', 'Dhaka', '2130', 20, '02082022143955-400x400-9.jpg', 'aGFzYmk=', NULL, 1, 3, NULL, '2021-12-24 03:13:29', '2022-08-09 05:35:28'),
(48, 'Shamim Ahmmed', 'seller@themeposh.xyz', NULL, '$2y$10$rg09N1qmrqRylt4c0shK..0eSiAsWBvd9Aom5t4i7/lFRKI2LCb.i', 'Gorigor', 'gorigor', '0123456789', 'Mirpur, Dhaka, Bangladesh', 'Dhaka', 'Dhaka', '2130', 20, '31072022063515-200x200-14.jpg', 'c2VsbGVyMTIzNDU2', NULL, 1, 3, NULL, '2021-12-24 09:20:35', '2022-08-24 11:04:25'),
(62, 'Mahbub Alam', 'sobnil@gmail.com', NULL, '$2y$10$dGrdHTXyy4cz7be85U3G6uQd5CCqA6MGxNXeO19junvv.YPw8Z2ZW', 'Sobnil', 'sobnil', '0123456789', 'Dhaka, Bangladesh', 'Dhaka', 'Dhaka', '3215', 20, '31072022063557-200x200-5.jpg', 'c29ibmls', NULL, 1, 3, NULL, '2022-01-24 11:30:25', '2022-08-09 05:34:34'),
(63, 'Habibul Basar', 'silvary@gmail.com', NULL, '$2y$10$nH0sQoFtrjrWKhk8F3mBs.usEV1J3mD3l4tkpAolbAkfv2HWHRtZ6', 'Silvary', 'silvary', '0123456789', 'Dhaka, bangladesh', 'Dhaka', 'Dhaka', '2130', 1, '31072022063840-200x200-11.jpg', 'c2lsdmFyeQ==', NULL, 1, 3, NULL, '2022-01-24 11:32:27', '2022-08-09 05:34:18'),
(64, 'Nazim Mahmud', 'tspprt7@gmail.com', NULL, '$2y$10$k07neLFI5yunYc5Um3MDau4WYmogcKUl/aLpNcuYUrKuZ/1XgOf0G', NULL, NULL, '01915826995', 'Sherpur, Bangladesh', NULL, NULL, NULL, NULL, NULL, 'dHNwcHJ0Nw==', NULL, 1, 2, NULL, '2022-05-27 08:51:38', '2022-08-16 08:47:32'),
(65, 'Monir Khan', 'monirkhan@gmail.com', NULL, '$2y$10$OEw2vjiyRGgyIswt53rw.ekgxqmdt9JC66uml.sfL/HsxmBGTl/q6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bW9uaXJraGFu', NULL, 1, 2, NULL, '2022-08-15 07:58:47', '2022-08-15 07:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2021-04-01 21:57:16', '2021-04-01 21:57:19'),
(2, 'Customer', '2021-04-01 21:57:29', '2021-04-01 21:57:31'),
(3, 'Seller', '2021-12-07 16:36:42', '2021-12-07 16:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Active', '2021-04-01 21:57:57', '2021-04-01 21:57:59'),
(2, 'Inactive', '2021-04-01 21:58:10', '2021-04-01 21:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `fee_amount` double(8,2) DEFAULT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `seller_id`, `amount`, `fee_amount`, `payment_method`, `transaction_id`, `description`, `status_id`, `created_at`, `updated_at`) VALUES
(69, 48, 200.00, 20.00, NULL, NULL, NULL, 4, '2022-01-25 10:18:38', '2022-08-16 08:50:07'),
(70, 48, 150.00, 20.00, NULL, NULL, NULL, 1, '2022-01-25 10:21:13', '2022-01-25 10:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_images`
--

CREATE TABLE `withdrawal_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `withdrawal_id` int(11) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawal_images`
--

INSERT INTO `withdrawal_images` (`id`, `withdrawal_id`, `images`, `created_at`, `updated_at`) VALUES
(34, 69, '01082022173741-14.jpg', '2022-08-16 08:49:32', '2022-08-16 08:49:32'),
(35, 69, '02082022143530-5.jpg', '2022-08-16 08:49:35', '2022-08-16 08:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_status`
--

CREATE TABLE `withdrawal_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawal_status`
--

INSERT INTO `withdrawal_status` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', '2022-01-12 16:43:25', '2022-01-12 16:43:26'),
(2, 'Processing', '2022-01-12 16:43:38', '2022-01-12 16:43:40'),
(3, 'Completed', '2022-01-12 16:43:52', '2022-01-12 16:43:54'),
(4, 'Canceled', '2022-01-14 08:37:02', '2022-01-14 08:37:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_informations`
--
ALTER TABLE `bank_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_language_code_unique` (`language_code`);

--
-- Indexes for table `lankeyvalues`
--
ALTER TABLE `lankeyvalues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_options`
--
ALTER TABLE `media_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_settings_media_type_unique` (`media_type`);

--
-- Indexes for table `mega_menus`
--
ALTER TABLE `mega_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_menu_name_unique` (`menu_name`);

--
-- Indexes for table `menu_childs`
--
ALTER TABLE `menu_childs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_parents`
--
ALTER TABLE `menu_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_ads`
--
ALTER TABLE `offer_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_masters`
--
ALTER TABLE `order_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `pro_categories`
--
ALTER TABLE `pro_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pro_categories_slug_unique` (`slug`);

--
-- Indexes for table `pro_images`
--
ALTER TABLE `pro_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_manages`
--
ALTER TABLE `section_manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_address_unique` (`email_address`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_options`
--
ALTER TABLE `tp_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tp_options_option_name_unique` (`option_name`);

--
-- Indexes for table `tp_status`
--
ALTER TABLE `tp_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tp_status_status_unique` (`status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_images`
--
ALTER TABLE `withdrawal_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_status`
--
ALTER TABLE `withdrawal_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_informations`
--
ALTER TABLE `bank_informations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `lankeyvalues`
--
ALTER TABLE `lankeyvalues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9252;

--
-- AUTO_INCREMENT for table `media_options`
--
ALTER TABLE `media_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=766;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mega_menus`
--
ALTER TABLE `mega_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1306;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `menu_childs`
--
ALTER TABLE `menu_childs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;

--
-- AUTO_INCREMENT for table `menu_parents`
--
ALTER TABLE `menu_parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=974;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `offer_ads`
--
ALTER TABLE `offer_ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=652;

--
-- AUTO_INCREMENT for table `order_masters`
--
ALTER TABLE `order_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `pro_categories`
--
ALTER TABLE `pro_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `pro_images`
--
ALTER TABLE `pro_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;

--
-- AUTO_INCREMENT for table `related_products`
--
ALTER TABLE `related_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `section_manages`
--
ALTER TABLE `section_manages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `tp_options`
--
ALTER TABLE `tp_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `tp_status`
--
ALTER TABLE `tp_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `withdrawal_images`
--
ALTER TABLE `withdrawal_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `withdrawal_status`
--
ALTER TABLE `withdrawal_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
