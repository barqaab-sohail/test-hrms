-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2019 at 02:42 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_languages`
--

CREATE TABLE `all_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_languages`
--

INSERT INTO `all_languages` (`id`, `name`, `name_1`, `code`) VALUES
(1, 'Inglés', 'English', 'EN'),
(2, 'Urdu', 'Urdu', 'UR'),
(3, 'Afrikans', 'Afrikanns', 'AF'),
(4, 'Albanés', 'Albanian', 'SQ'),
(5, 'Árabe', 'Arabic', 'AR'),
(6, 'Armenio', 'Armenian', 'HY'),
(7, 'Vasco', 'Basque', 'EU'),
(8, 'Bengalí', 'Bengali', 'BN'),
(9, 'Búlgaro', 'Bulgarian', 'BG'),
(10, 'Catalán', 'Catalan', 'CA'),
(11, 'Camboyano', 'Cambodian', 'KM'),
(12, 'Chino (Mandarín)', 'Chinese (Mandarin)', 'ZH'),
(13, 'Croata', 'Croation', 'HR'),
(14, 'Checo', 'Czech', 'CS'),
(15, 'Danés', 'Danish', 'DA'),
(16, 'Holandés', 'Dutch', 'NL'),
(17, 'Estonio', 'Estonian', 'ET'),
(18, 'Fiji', 'Fiji', 'FJ'),
(19, 'Finlandés', 'Finnish', 'FI'),
(20, 'Francés', 'French', 'FR'),
(21, 'Georgiano', 'Georgian', 'KA'),
(22, 'Alemán', 'German', 'DE'),
(23, 'Griego', 'Greek', 'EL'),
(24, 'Gujarati', 'Gujarati', 'GU'),
(25, 'Hebreo', 'Hebrew', 'HE'),
(26, 'Hindi', 'Hindi', 'HI'),
(27, 'Húngaro', 'Hungarian', 'HU'),
(28, 'Islandés', 'Icelandic', 'IS'),
(29, 'Indonesio', 'Indonesian', 'ID'),
(30, 'Irlandés', 'Irish', 'GA'),
(31, 'Italiano', 'Italian', 'IT'),
(32, 'Japonés', 'Japanese', 'JA'),
(33, 'Javanés', 'Javanese', 'JW'),
(34, 'Coreano', 'Korean', 'KO'),
(35, 'Latino', 'Latin', 'LA'),
(36, 'Letón', 'Latvian', 'LV'),
(37, 'Lituano', 'Lithuanian', 'LT'),
(38, 'Macedonio', 'Macedonian', 'MK'),
(39, 'Malayo', 'Malay', 'MS'),
(40, 'Malayalam', 'Malayalam', 'ML'),
(41, 'Maltés', 'Maltese', 'MT'),
(42, 'Maorí', 'Maori', 'MI'),
(43, 'Marathi', 'Marathi', 'MR'),
(44, 'Mongol', 'Mongolian', 'MN'),
(45, 'Nepalí', 'Nepali', 'NE'),
(46, 'Noruego', 'Norwegian', 'NO'),
(47, 'Persa', 'Persian', 'FA'),
(48, 'Polaco', 'Polish', 'PL'),
(49, 'Portugués', 'Portuguese', 'PT'),
(50, 'Punjabi', 'Punjabi', 'PA'),
(51, 'Quechua', 'Quechua', 'QU'),
(52, 'Romanian', 'Rumano', 'RO'),
(53, 'Ruso', 'Russian', 'RU'),
(54, 'Samoano', 'Samoan', 'SM'),
(55, 'Serbio', 'Serbian', 'SR'),
(56, 'Eslovaco', 'Slovak', 'SK'),
(57, 'Esloveno', 'Slovenian', 'SL'),
(58, 'Español', 'Spanish', 'ES'),
(59, 'Swahili', 'Swahili', 'SW'),
(60, 'Sueco ', 'Swedish ', 'SV'),
(61, 'Tamil', 'Tamil', 'TA'),
(62, 'Tártaro', 'Tatar', 'TT'),
(63, 'Telugu', 'Telugu', 'TE'),
(64, 'Tailandés', 'Thai', 'TH'),
(65, 'Tibetano', 'Tibetan', 'BO'),
(66, 'Tonga', 'Tonga', 'TO'),
(67, 'Turco', 'Turkish', 'TR'),
(68, 'Ucraniano', 'Ukranian', 'UK'),
(69, 'Uzbek', 'Uzbek', 'UZ'),
(70, 'Vietnamita', 'Vietnamese', 'VI'),
(71, 'Galés', 'Welsh', 'CY'),
(72, 'Xhosa', 'Xhosa', 'XH');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appointment_date` date DEFAULT NULL,
  `designation_id` bigint(20) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_letter_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `employee_id`, `reference_no`, `appointment_date`, `designation_id`, `expiry_date`, `category`, `grade`, `appointment_letter_type`, `created_at`, `updated_at`) VALUES
(1, 4, 'BQB/BOD-82/2013/20', '2013-10-13', 1, NULL, 'A', '1', '2 Pages', '2019-08-07 13:00:37', '2019-09-17 08:55:12'),
(2, 5, 'BQB/W/01/600/MA/503', '2018-09-03', 7, NULL, 'A', '3', '2 Pages', '2019-08-16 13:18:30', '2019-09-17 09:01:09'),
(3, 6, 'BQB/W/01/600/MA/292', '2017-05-02', 3, NULL, 'A', '2', '2 Pages', '2019-08-19 18:41:34', '2019-09-17 09:02:05'),
(4, 7, 'BQB/PF/126', '2000-08-12', 2, NULL, 'A', '2', '2 Pages', '2019-08-21 13:48:23', '2019-09-17 09:01:28'),
(5, 8, 'BQB/W-01/522/MA/369', '2005-05-12', 16, NULL, 'A', '9', '2 Pages', '2019-08-22 09:10:22', '2019-09-17 09:30:21'),
(6, 12, 'BQB/P-36-A-I/542', '2013-10-14', 34, NULL, 'B', '12', '1 Page', '2019-08-27 04:18:48', '2019-09-17 09:31:44'),
(7, 13, 'BQB/W/01/542/MA/089', '2007-01-26', 28, NULL, 'B', '12', '1 Page', '2019-08-27 06:16:05', '2019-09-17 09:33:58'),
(8, 14, 'BQB/PF/KA/305', '2001-12-07', 25, NULL, 'A', '10', '2 Pages', '2019-08-28 23:54:46', '2019-09-17 09:02:48'),
(9, 15, 'BQB/A/03/52/MA/1421', '2006-11-29', 27, NULL, 'B', '11', '1 Page', '2019-08-29 00:30:26', '2019-09-17 09:35:23'),
(10, 16, 'BQB/W/01/570/MA/846', '2009-08-09', 18, NULL, 'C', '9', '2 Pages', '2019-09-01 22:56:32', '2019-09-17 08:57:59'),
(11, 17, 'BQB/W/01/522/MA/1327', '2006-11-08', 29, NULL, 'C', '12', '2 Pages', '2019-09-01 23:14:58', '2019-09-17 09:40:37'),
(12, 3, 'BQB/PF/115', '2000-08-09', 24, NULL, 'C', '12', '1 Page', '2019-09-03 23:58:16', '2019-09-17 09:41:21'),
(13, 18, 'A/03/42/MA/1239', '2005-12-31', 35, NULL, 'C', '14', '2 Pages', '2019-09-05 00:52:43', '2019-09-17 09:42:15'),
(14, 19, 'BQB/W/01/570/MA/897', '2009-08-19', 28, NULL, 'C', NULL, '1 Page', '2019-09-12 02:15:53', '2019-09-17 09:09:24'),
(15, 20, 'BQB/PF/272', '2000-12-26', 35, NULL, 'C', NULL, '2 Pages', '2019-09-12 02:37:19', '2019-09-17 09:04:54'),
(16, 1, 'BQB/PF/SA/070', '2001-09-01', 28, NULL, 'A', '11', '2 Pages', '2019-09-17 03:07:33', '2019-10-03 03:01:59'),
(17, 21, 'BQB/W/01/539/MA/868', '2006-07-15', 34, NULL, 'C', '13', '1 Page', '2019-09-19 05:32:23', '2019-09-19 05:32:23'),
(18, 11, 'BQB/PF/122', '2000-08-09', 35, NULL, 'A', NULL, '2 Pages', '2019-09-19 05:32:53', '2019-09-19 05:32:53'),
(19, 22, 'BQB/PF/125', '2000-08-10', 34, NULL, 'C', NULL, '2 Pages', '2019-09-19 05:48:40', '2019-09-19 05:48:40'),
(20, 23, 'BQB/A/03/30/472', '2004-09-02', 37, NULL, 'C', '11', '2 Pages', '2019-09-25 06:37:35', '2019-09-25 06:43:06'),
(21, 24, 'BQB/PF/MW/230', '2001-11-06', 20, NULL, 'C', NULL, '2 Pages', '2019-09-26 04:34:53', '2019-09-26 04:34:53'),
(22, 25, 'BQB/W/01/640/MA/853', '2006-07-13', 30, NULL, 'C', NULL, '1 Page', '2019-09-30 04:48:58', '2019-09-30 04:48:58'),
(23, 26, 'BQB/W-16-01/MA/219', '2018-04-05', 20, NULL, 'B', NULL, '2 Pages', '2019-09-30 05:12:51', '2019-09-30 05:12:51'),
(24, 27, 'BWT/P/710', '2009-06-12', 39, NULL, 'C', NULL, '1 Page', '2019-10-03 04:49:21', '2019-10-03 04:49:21'),
(25, 28, 'BQB/A/03/68/MA/452', '2009-04-03', 30, NULL, 'C', NULL, '1 Page', '2019-10-03 05:18:33', '2019-10-03 05:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'created', 'App\\employee', 2, '[]', '{\"first_name\":\"Athar\",\"middle_name\":\"Hussain\",\"last_name\":\"Jaffry\",\"father_name\":\"Nazar Hussain Jafry\",\"date_of_birth\":\"1974-08-12\",\"gender\":\"Male\",\"cnic\":\"3540220135723\",\"cnic_expiry\":\"2024-11-19\",\"employee_no\":\"111\",\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":2}', 'http://hrms.barqaab.com/storeEmployee', '175.107.28.242', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-07-31 10:15:04', '2019-07-31 10:15:04'),
(2, 'App\\User', 1, 'created', 'App\\nationality', 1, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":2,\"id\":1}', 'http://hrms.barqaab.com/storeEmployee', '175.107.28.242', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-07-31 10:15:04', '2019-07-31 10:15:04'),
(3, 'App\\User', 1, 'created', 'App\\User', 2, '[]', '{\"email\":\"athar.hussain@barqaab.com\",\"role_id\":\"4\",\"employee_id\":\"2\",\"id\":2}', 'http://hrms.barqaab.com/editUser/2', '175.107.28.242', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-07-31 11:00:41', '2019-07-31 11:00:41'),
(4, 'App\\User', 2, 'created', 'App\\picture', 1, '[]', '{\"name\":\"2.png\",\"employee_id\":2,\"type\":\"image\\/png\",\"size\":89091,\"width\":\"100\",\"height\":\"100\",\"id\":1}', 'http://hrms.barqaab.com/editPicture/2', '139.190.33.210', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-07-31 11:43:58', '2019-07-31 11:43:58'),
(5, 'App\\User', 1, 'updated', 'App\\employee', 1, '{\"marital_status\":null}', '{\"marital_status\":\"1\"}', 'http://hrms.barqaab.com/editEmployee/1', '139.190.33.210', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 11:22:51', '2019-08-02 11:22:51'),
(6, 'App\\User', 1, 'created', 'App\\nationality', 2, '[]', '{\"employee_id\":1,\"nationality_name\":\"Pakistan\",\"id\":2}', 'http://hrms.barqaab.com/editEmployee/1', '139.190.33.210', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 11:22:51', '2019-08-02 11:22:51'),
(7, 'App\\User', 1, 'updated', 'App\\employee', 1, '{\"employee_no\":\"1011\"}', '{\"employee_no\":null}', 'http://hrms.barqaab.com/editEmployee/1', '139.190.33.210', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 11:23:00', '2019-08-02 11:23:00'),
(8, 'App\\User', 1, 'created', 'App\\employee', 3, '[]', '{\"first_name\":\"Muhammad\",\"middle_name\":\"Tahir\",\"last_name\":\"Khan\",\"father_name\":\"Muhammad Nadir Khan\",\"date_of_birth\":\"1976-01-01\",\"gender\":\"Male\",\"cnic\":\"3520246897333\",\"cnic_expiry\":\"2021-08-31\",\"employee_no\":null,\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":3}', 'http://hrms.barqaab.com/storeEmployee', '139.190.33.210', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 15:23:46', '2019-08-02 15:23:46'),
(9, 'App\\User', 1, 'created', 'App\\nationality', 3, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":3,\"id\":3}', 'http://hrms.barqaab.com/storeEmployee', '139.190.33.210', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 15:23:46', '2019-08-02 15:23:46'),
(10, 'App\\User', 1, 'created', 'App\\User', 3, '[]', '{\"email\":\"massive.consultants@yahoo.com\",\"role_id\":\"4\",\"employee_id\":\"3\",\"id\":3}', 'http://hrms.barqaab.com/editUser/3', '139.190.33.210', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 15:24:34', '2019-08-02 15:24:34'),
(11, 'App\\User', 1, 'created', 'App\\picture', 2, '[]', '{\"name\":\"3.png\",\"employee_id\":3,\"type\":\"image\\/png\",\"size\":82869,\"width\":\"100\",\"height\":\"100\",\"id\":2}', 'http://hrms.barqaab.com/editPicture/3', '139.190.33.210', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 15:26:47', '2019-08-02 15:26:47'),
(12, 'App\\User', 1, 'updated', 'App\\employee', 3, '{\"date_of_birth\":\"1976-01-01\",\"cnic\":\"3520246897333\",\"marital_status\":\"Married\"}', '{\"date_of_birth\":\"1975-10-16\",\"cnic\":\"3520246335961\",\"marital_status\":\"1\"}', 'http://hrms.barqaab.com/editEmployee/3', '175.107.31.114', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 15:31:57', '2019-08-02 15:31:57'),
(13, NULL, NULL, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$bvgk1xZJVZLH.Az6s08QAuXnTLbhHnHoCLsHGW53ZjTHhRJurEWeO\",\"remember_token\":null}', '{\"password\":\"$2y$10$LIBKm174tSn4tCsXWqGJEu.tmvi2s\\/HwNfG0bxYCjlq\\/SnTbDKCJK\",\"remember_token\":\"QZeEjXQsrJI6z40h1AzTffDi9tk1sTJZKwjnAxSu2HIiUdPyyBCyejhDAouN\"}', 'http://hrms.barqaab.com/password/reset', '175.107.31.114', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 15:41:18', '2019-08-02 15:41:18'),
(14, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"QZeEjXQsrJI6z40h1AzTffDi9tk1sTJZKwjnAxSu2HIiUdPyyBCyejhDAouN\"}', '{\"remember_token\":\"oq2g6gd5dP5Vwk8vGNumQbLpsWL1nZHWmfIBeTTkpVYzAnKhec1h9bAA5pvN\"}', 'http://hrms.barqaab.com/logout', '175.107.31.114', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 15:42:21', '2019-08-02 15:42:21'),
(15, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"oq2g6gd5dP5Vwk8vGNumQbLpsWL1nZHWmfIBeTTkpVYzAnKhec1h9bAA5pvN\"}', '{\"remember_token\":\"Upgaw9q1Q7mTpsK6HV4aAH2c7aO5PhqEQbqK22wGoAD6AocoMk7c0MuED9xV\"}', 'http://hrms.barqaab.com/logout', '175.107.31.114', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 17:49:32', '2019-08-02 17:49:32'),
(16, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"\"}', '{\"session_id\":\"LzY3ueLYS7yciEqD1Mx85yNosqiuWr6vG5IT1Bax\"}', 'http://hrms.barqaab.com/login', '175.107.31.114', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 17:49:47', '2019-08-02 17:49:47'),
(17, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"LzY3ueLYS7yciEqD1Mx85yNosqiuWr6vG5IT1Bax\"}', '{\"session_id\":\"VLTfjuafLlocQj2KoSnCJ8rAEcVZ6VNlaV6ibPAZ\"}', 'http://hrms.barqaab.com/login', '175.107.31.114', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', NULL, '2019-08-02 17:50:28', '2019-08-02 17:50:28'),
(18, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"VLTfjuafLlocQj2KoSnCJ8rAEcVZ6VNlaV6ibPAZ\"}', '{\"session_id\":\"sae6SBfdQ8nynKU76C9grr2vBzkVdzGPBGDnDZug\"}', 'http://hrms.barqaab.com/login', '175.107.31.114', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 19:00:09', '2019-08-02 19:00:09'),
(19, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"Upgaw9q1Q7mTpsK6HV4aAH2c7aO5PhqEQbqK22wGoAD6AocoMk7c0MuED9xV\"}', '{\"remember_token\":\"kVGmS5X02gteu9Wkao2E2UiF4k6LLEYjKnC6Bt4jOowUfiQiAUJpShQAiV8Z\"}', 'http://hrms.barqaab.com/logout', '175.107.31.114', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 19:02:44', '2019-08-02 19:02:44'),
(20, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"\"}', '{\"session_id\":\"JcTspa9mXNPRJODaGZJKaxpkxciMxD1X1nhmcqeK\"}', 'http://hrms.barqaab.com/login', '175.107.31.114', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-02 19:02:58', '2019-08-02 19:02:58'),
(21, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"sae6SBfdQ8nynKU76C9grr2vBzkVdzGPBGDnDZug\"}', '{\"session_id\":\"EZAYxYsTgnrjxKEUL0NomnBLpMlgztL2ht92hMC8\"}', 'http://hrms.barqaab.com/login', '175.107.20.148', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-05 19:46:29', '2019-08-05 19:46:29'),
(22, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"kVGmS5X02gteu9Wkao2E2UiF4k6LLEYjKnC6Bt4jOowUfiQiAUJpShQAiV8Z\"}', '{\"remember_token\":\"obwht4V6UwOkdYWwWZoI575gdYaDPjsEgXThuJfWVG3qOcaHDPJY4PLbSKWc\"}', 'http://hrms.barqaab.com/logout', '175.107.20.148', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-05 19:57:31', '2019-08-05 19:57:31'),
(23, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"EZAYxYsTgnrjxKEUL0NomnBLpMlgztL2ht92hMC8\"}', '{\"session_id\":\"0mzUTqr611oHj3xmWusVS11UfeNyVKX8MgKqP3O5\"}', 'http://hrms.barqaab.com/login', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 12:46:28', '2019-08-07 12:46:28'),
(24, 'App\\User', 1, 'created', 'App\\employee', 4, '[]', '{\"first_name\":\"Ahmad\",\"middle_name\":\"Khan\",\"last_name\":\"Bhatti\",\"father_name\":\"Mian Sher Alam Bhatti\",\"date_of_birth\":\"1942-05-13\",\"gender\":\"Male\",\"cnic\":\"3520115779053\",\"cnic_expiry\":\"2020-08-31\",\"employee_no\":null,\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":4}', 'http://hrms.barqaab.com/storeEmployee', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 12:52:13', '2019-08-07 12:52:13'),
(25, 'App\\User', 1, 'created', 'App\\nationality', 4, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":4,\"id\":4}', 'http://hrms.barqaab.com/storeEmployee', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 12:52:13', '2019-08-07 12:52:13'),
(26, 'App\\User', 1, 'created', 'App\\User', 4, '[]', '{\"email\":\"ceo1@barqaab.com\",\"role_id\":\"3\",\"employee_id\":\"4\",\"id\":4}', 'http://hrms.barqaab.com/editUser/4', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 12:56:58', '2019-08-07 12:56:58'),
(27, 'App\\User', 1, 'created', 'App\\appointment', 1, '[]', '{\"employee_id\":\"4\",\"reference_no\":\"BQB\\/BOD-82\\/2013\\/20\",\"appointment_date\":\"2013-10-13\",\"designation\":\"Chief Executive\",\"expiry_date\":null,\"category\":\"A\",\"grade\":\"1\",\"appointment_letter_type\":\"2 Pages\",\"id\":1}', 'http://hrms.barqaab.com/hrms/editAppointment/4', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:00:37', '2019-08-07 13:00:37'),
(28, 'App\\User', 1, 'created', 'App\\posting', 1, '[]', '{\"position\":\"Chief Executive\",\"posting_date\":\"2013-10-14\",\"manager_id\":\"4\",\"joining_date\":\"2013-10-14\",\"project\":\"Overhead of the Company\",\"location\":\"Lahore\",\"employee_id\":\"4\",\"id\":1}', 'http://hrms.barqaab.com/storePosting', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:01:52', '2019-08-07 13:01:52'),
(29, 'App\\User', 1, 'created', 'App\\education', 2, '[]', '{\"degree_name\":\"Matric - Secondary\",\"institute\":\"M.B High School Hafizabad\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"10\",\"employee_id\":\"4\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"1957\",\"grade\":null,\"country\":\"Pakistan\",\"id\":2}', 'http://hrms.barqaab.com/storeEducation', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:10:45', '2019-08-07 13:10:45'),
(30, 'App\\User', 1, 'updated', 'App\\education', 2, '{\"from_year\":null}', '{\"from_year\":\"1955\"}', 'http://hrms.barqaab.com/editEducation/2', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:14:10', '2019-08-07 13:14:10'),
(31, 'App\\User', 1, 'created', 'App\\education', 3, '[]', '{\"degree_name\":\"Higher Scondary\",\"institute\":\"Govt. College Lahore\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"12\",\"employee_id\":\"4\",\"from_month\":null,\"from_year\":\"1957\",\"to_month\":null,\"to_year\":\"1959\",\"grade\":null,\"country\":\"Pakistan\",\"id\":3}', 'http://hrms.barqaab.com/storeEducation', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:15:01', '2019-08-07 13:15:01'),
(32, 'App\\User', 1, 'created', 'App\\education', 4, '[]', '{\"degree_name\":\"B.Sc (Civil)\",\"institute\":\"University of Engineering & Technology, Lahore\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"16\",\"employee_id\":\"4\",\"from_month\":null,\"from_year\":\"1962\",\"to_month\":null,\"to_year\":\"1965\",\"grade\":null,\"country\":\"Pakistan\",\"id\":4}', 'http://hrms.barqaab.com/storeEducation', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:16:11', '2019-08-07 13:16:11'),
(33, 'App\\User', 1, 'created', 'App\\education', 5, '[]', '{\"degree_name\":\"M.Sc Construction Engineering\",\"institute\":\"Leeds University, UK\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"18\",\"employee_id\":\"4\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"1980\",\"grade\":null,\"country\":\"United Kingdom\",\"id\":5}', 'http://hrms.barqaab.com/storeEducation', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:17:11', '2019-08-07 13:17:11'),
(34, 'App\\User', 1, 'created', 'App\\training', 1, '[]', '{\"title\":\"Training with Dillingham Construction Company\",\"venue\":\"Tarbela\",\"institute\":null,\"country\":\"Pakistan\",\"from\":null,\"to\":null,\"description\":\"Training with Dillingham Construction Company on Power&nbsp; House Extension Pojrect, Tarbela, Pakistan - 3 months\",\"employee_id\":\"4\",\"id\":1}', 'http://hrms.barqaab.com/storeTraining', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:20:49', '2019-08-07 13:20:49'),
(35, 'App\\User', 1, 'created', 'App\\training', 2, '[]', '{\"title\":\"Senior Manager Course\",\"venue\":\"WAPDA Staff College\",\"institute\":null,\"country\":\"Pakistan\",\"from\":null,\"to\":null,\"description\":\"Senior Manager Course - 4 months\",\"employee_id\":\"4\",\"id\":2}', 'http://hrms.barqaab.com/storeTraining', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:22:57', '2019-08-07 13:22:57'),
(36, 'App\\User', 1, 'created', 'App\\training', 3, '[]', '{\"title\":\"Land drainage Course\",\"venue\":\"WAPDA\",\"institute\":null,\"country\":\"Pakistan\",\"from\":null,\"to\":null,\"description\":\"Land Drainage Course, WAPDA, Lahore\",\"employee_id\":\"4\",\"id\":3}', 'http://hrms.barqaab.com/storeTraining', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:23:37', '2019-08-07 13:23:37'),
(37, 'App\\User', 1, 'created', 'App\\membership', 1, '[]', '{\"name\":\"PEC\",\"membership_no\":\"CIVIL\\/00927\",\"expiry_date\":\"2019-12-31\",\"employee_id\":\"4\",\"id\":1}', 'http://hrms.barqaab.com/storeMembership', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:24:59', '2019-08-07 13:24:59'),
(38, 'App\\User', 1, 'created', 'App\\language', 1, '[]', '{\"name\":\"English\",\"reading\":\"Excellent\",\"speaking\":\"Excellent\",\"writing\":\"Excellent\",\"employee_id\":\"4\",\"id\":1}', 'http://hrms.barqaab.com/storeLanguage', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:27:32', '2019-08-07 13:27:32'),
(39, 'App\\User', 1, 'created', 'App\\language', 2, '[]', '{\"name\":\"Urdu\",\"reading\":\"Excellent\",\"speaking\":\"Excellent\",\"writing\":\"Excellent\",\"employee_id\":\"4\",\"id\":2}', 'http://hrms.barqaab.com/storeLanguage', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:28:05', '2019-08-07 13:28:05'),
(40, 'App\\User', 1, 'created', 'App\\experience', 1, '[]', '{\"employer\":\"BARQAAB\",\"position\":\"Chief Executive\",\"from\":\"2013-09-18\",\"to\":\"2019-08-07\",\"project\":null,\"client\":null,\"location\":null,\"country\":\"Pakistan\",\"main_features\":null,\"activities\":null,\"employee_id\":\"4\",\"id\":1}', 'http://hrms.barqaab.com/storeExperience', '139.190.103.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 13:29:21', '2019-08-07 13:29:21'),
(41, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"0mzUTqr611oHj3xmWusVS11UfeNyVKX8MgKqP3O5\"}', '{\"session_id\":\"WAhQML88YT27bm8wsvoxlrvkvvkt62UEFpTDmefS\"}', 'http://hrms.barqaab.com/login', '175.107.28.66', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', NULL, '2019-08-07 19:03:28', '2019-08-07 19:03:28'),
(42, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"WAhQML88YT27bm8wsvoxlrvkvvkt62UEFpTDmefS\"}', '{\"session_id\":\"gEhfz3U5YgaAwjO6yaG7czMe8Ug7fSlHEvD33REP\"}', 'http://hrms.barqaab.com/login', '175.110.71.216', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-08 08:52:38', '2019-08-08 08:52:38'),
(43, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"gEhfz3U5YgaAwjO6yaG7czMe8Ug7fSlHEvD33REP\"}', '{\"session_id\":\"SzgDUa3R8GDxh62IRMnCee3xB0aGEDQp1B0hpc8L\"}', 'http://hrms.barqaab.com/login', '202.83.170.197', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 09:41:23', '2019-08-09 09:41:23'),
(44, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"SzgDUa3R8GDxh62IRMnCee3xB0aGEDQp1B0hpc8L\"}', '{\"session_id\":\"4fERgPnzuyGyVOSRBqUnTsTDLyU7s1GrK6IgIEAj\"}', 'http://hrms.barqaab.com/login', '202.83.170.197', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 11:41:57', '2019-08-09 11:41:57'),
(45, 'App\\User', 1, 'created', 'App\\picture', 3, '[]', '{\"name\":\"4.png\",\"employee_id\":4,\"type\":\"image\\/png\",\"size\":83855,\"width\":\"100\",\"height\":\"100\",\"id\":3}', 'http://hrms.barqaab.com/editPicture/4', '202.83.170.197', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 11:45:04', '2019-08-09 11:45:04'),
(46, 'App\\User', 1, 'created', 'App\\contact', 1, '[]', '{\"employee_id\":\"4\",\"type\":\"0\",\"house\":\"29-A-1\",\"street\":null,\"town\":\"Tufail Road\",\"tehsil\":null,\"city\":\"Lahore Cantt\",\"province\":\"Punjab\",\"country\":\"Pakistan\",\"mobile\":\"0300-8477161\",\"landline\":\"042-36652700\",\"id\":1}', 'http://hrms.barqaab.com/editPermanentAddress/4', '202.83.170.197', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 11:48:53', '2019-08-09 11:48:53'),
(47, 'App\\User', 1, 'created', 'App\\document', 1, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1565333441-4-HR Form.pdf\",\"employee_id\":4,\"type\":\"application\\/pdf\",\"id\":1}', 'http://hrms.barqaab.com/storeDocument', '202.83.170.197', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 12:50:41', '2019-08-09 12:50:41'),
(48, 'App\\User', 1, 'created', 'App\\document', 2, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1565333479-4-CNIC Front.jpg\",\"employee_id\":4,\"type\":\"image\\/jpeg\",\"id\":2}', 'http://hrms.barqaab.com/storeDocument', '202.83.170.197', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 12:51:19', '2019-08-09 12:51:19'),
(49, 'App\\User', 1, 'created', 'App\\document', 3, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1565334419-4-HR Form.pdf\",\"file_path\":\"documents\\/4_Ahmad_Khan_Bhatti\\/\",\"employee_id\":4,\"type\":\"application\\/pdf\",\"id\":3}', 'http://hrms.barqaab.com/storeDocument', '175.110.70.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 13:06:59', '2019-08-09 13:06:59'),
(50, 'App\\User', 1, 'created', 'App\\document', 4, '[]', '{\"document_name\":\"Handing Over Change of Chief Executive\",\"file_name\":\"1565334637-4-Handing Over Change of Chief Executive.pdf\",\"file_path\":\"documents\\/4_Ahmad_Khan_Bhatti\\/\",\"employee_id\":4,\"type\":\"application\\/pdf\",\"id\":4}', 'http://hrms.barqaab.com/storeDocument', '175.110.70.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 13:10:37', '2019-08-09 13:10:37'),
(51, 'App\\User', 1, 'updated', 'App\\document', 4, '{\"document_name\":\"Handing Over Change of Chief Executive\"}', '{\"document_name\":\"Handing Over Charge of Chief Executive\"}', 'http://hrms.barqaab.com/editDocument/4', '175.110.70.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 13:12:26', '2019-08-09 13:12:26'),
(52, 'App\\User', 1, 'created', 'App\\document', 5, '[]', '{\"document_name\":\"Notification for New Chief Executive\",\"date\":\"2013-10-22\",\"file_name\":\"1565334892-4-Notification for New Chief Executive.pdf\",\"file_path\":\"documents\\/4_Ahmad_Khan_Bhatti\\/\",\"employee_id\":4,\"type\":\"application\\/pdf\",\"id\":5}', 'http://hrms.barqaab.com/storeDocument', '175.110.70.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 13:14:52', '2019-08-09 13:14:52'),
(53, 'App\\User', 1, 'created', 'App\\document', 6, '[]', '{\"document_name\":\"Secretary  Office Order for Appointment of New Chief Executive\",\"date\":\"2013-10-13\",\"file_name\":\"1565335162-4-Secretary  Office Order for Appointment of New Chief Executive.pdf\",\"file_path\":\"documents\\/4_Ahmad_Khan_Bhatti\\/\",\"employee_id\":4,\"type\":\"application\\/pdf\",\"id\":6}', 'http://hrms.barqaab.com/storeDocument', '175.110.70.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 13:19:22', '2019-08-09 13:19:22'),
(54, 'App\\User', 1, 'created', 'App\\document', 7, '[]', '{\"document_name\":\"Notification for Chief Executive September 2013\",\"date\":\"2013-09-18\",\"file_name\":\"1565335376-4-Notification for Chief Executive September 2013.pdf\",\"file_path\":\"documents\\/4_Ahmad_Khan_Bhatti\\/\",\"employee_id\":4,\"type\":\"application\\/pdf\",\"id\":7}', 'http://hrms.barqaab.com/storeDocument', '175.110.70.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 13:22:56', '2019-08-09 13:22:56'),
(55, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"obwht4V6UwOkdYWwWZoI575gdYaDPjsEgXThuJfWVG3qOcaHDPJY4PLbSKWc\"}', '{\"remember_token\":\"9u2jNU7qvvAuuP5DhjgOPzutyJ8SP2bzkUPpSfqCE9A4GEG6jETAMJV7tVCt\"}', 'http://hrms.barqaab.com/logout', '175.110.70.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 13:23:05', '2019-08-09 13:23:05'),
(56, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"4fERgPnzuyGyVOSRBqUnTsTDLyU7s1GrK6IgIEAj\"}', '{\"session_id\":\"lfH3eA2cmdESSeEotcTDITwPqF9bdkKEsXghmjw4\"}', 'http://hrms.barqaab.com/login', '202.83.170.197', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 14:22:09', '2019-08-09 14:22:09'),
(57, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"lfH3eA2cmdESSeEotcTDITwPqF9bdkKEsXghmjw4\"}', '{\"session_id\":\"wcsdNkIau7QWzyrqr7W9J9jUIMbKiBHnAXQxyl1A\"}', 'http://hrms.barqaab.com/login', '202.83.170.197', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 14:22:30', '2019-08-09 14:22:30'),
(58, 'App\\User', 1, 'created', 'App\\document', 8, '[]', '{\"document_name\":\"Office Order for Chief Executive Vehicle\",\"date\":\"2013-09-13\",\"file_name\":\"1565339187-4-Office Order for Chief Executive Vehicle.pdf\",\"file_path\":\"documents\\/4_Ahmad_Khan_Bhatti\\/\",\"employee_id\":4,\"type\":\"application\\/pdf\",\"id\":8}', 'http://hrms.barqaab.com/storeDocument', '202.83.170.197', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 14:26:28', '2019-08-09 14:26:28'),
(59, 'App\\User', 1, 'created', 'App\\document', 9, '[]', '{\"document_name\":\"CV\",\"file_name\":\"1565341846-4-CV.pdf\",\"file_path\":\"documents\\/4_Ahmad_Khan_Bhatti\\/\",\"employee_id\":4,\"type\":\"application\\/pdf\",\"id\":9}', 'http://hrms.barqaab.com/storeDocument', '175.110.70.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 15:10:46', '2019-08-09 15:10:46'),
(60, 'App\\User', 1, 'deleted', 'App\\document', 9, '{\"id\":9,\"employee_id\":4,\"document_name\":\"CV\",\"file_name\":\"1565341846-4-CV.pdf\",\"file_path\":\"documents\\/4_Ahmad_Khan_Bhatti\\/\",\"type\":\"application\\/pdf\",\"reference_no\":null,\"date\":null}', '[]', 'http://hrms.barqaab.com/deleteDocument/9', '175.110.70.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-09 15:11:27', '2019-08-09 15:11:27'),
(61, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"wcsdNkIau7QWzyrqr7W9J9jUIMbKiBHnAXQxyl1A\"}', '{\"session_id\":\"Y0YXjg1kL4ztpEQ4mtxeM6dbmhCdzl5DvGuM1Tx7\"}', 'http://hrms.barqaab.com/login', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 09:02:44', '2019-08-16 09:02:44'),
(62, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"9u2jNU7qvvAuuP5DhjgOPzutyJ8SP2bzkUPpSfqCE9A4GEG6jETAMJV7tVCt\"}', '{\"remember_token\":\"IWL3y4FBARxKEn6yYGA8GprQ9kZoryMIb5C1GAyutSNGLwckIKpVmlakfrBq\"}', 'http://hrms.barqaab.com/logout', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 09:34:39', '2019-08-16 09:34:39'),
(63, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"Y0YXjg1kL4ztpEQ4mtxeM6dbmhCdzl5DvGuM1Tx7\"}', '{\"session_id\":\"IVaAJ11Z6GZAYQXlzqnmCle3CNPPie685CzGzkAN\"}', 'http://hrms.barqaab.com/login', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 10:18:44', '2019-08-16 10:18:44'),
(64, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"IVaAJ11Z6GZAYQXlzqnmCle3CNPPie685CzGzkAN\"}', '{\"session_id\":\"dgCMfUNdtfJ8DEAi4DIxCH9tnDiUBtx3OzvD0CMO\"}', 'http://hrms.barqaab.com/login', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 13:11:48', '2019-08-16 13:11:48'),
(65, 'App\\User', 1, 'created', 'App\\employee', 5, '[]', '{\"first_name\":\"Saqib\",\"middle_name\":null,\"last_name\":\"Javiad\",\"father_name\":\"Muhammad Ashraf Javaid\",\"date_of_birth\":\"1975-04-20\",\"gender\":\"Male\",\"cnic\":\"3520287027003\",\"cnic_expiry\":\"2026-03-12\",\"employee_no\":null,\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"3\",\"id\":5}', 'http://hrms.barqaab.com/storeEmployee', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 13:13:56', '2019-08-16 13:13:56'),
(66, 'App\\User', 1, 'created', 'App\\nationality', 5, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":5,\"id\":5}', 'http://hrms.barqaab.com/storeEmployee', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 13:13:56', '2019-08-16 13:13:56'),
(67, 'App\\User', 1, 'created', 'App\\appointment', 2, '[]', '{\"employee_id\":\"5\",\"reference_no\":\"BQB\\/W\\/01\\/600\\/MA\\/503\",\"appointment_date\":\"2018-09-03\",\"designation\":\"Manager Finance\",\"expiry_date\":null,\"category\":\"A\",\"grade\":\"3\",\"appointment_letter_type\":\"2 Pages\",\"id\":2}', 'http://hrms.barqaab.com/hrms/editAppointment/5', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 13:18:30', '2019-08-16 13:18:30'),
(68, 'App\\User', 1, 'created', 'App\\salary', 1, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"214675\",\"employee_id\":\"5\",\"salary_remarks\":null,\"id\":1}', 'http://hrms.barqaab.com/editSalary/5', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 13:18:52', '2019-08-16 13:18:52'),
(69, 'App\\User', 1, 'created', 'App\\posting', 2, '[]', '{\"position\":\"Manager Finance\",\"posting_date\":\"2018-09-03\",\"manager_id\":\"4\",\"joining_date\":\"2018-09-03\",\"project\":\"Overhead of the Company\",\"location\":\"Lahore\",\"employee_id\":\"5\",\"id\":2}', 'http://hrms.barqaab.com/storePosting', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 13:20:23', '2019-08-16 13:20:23'),
(70, 'App\\User', 1, 'created', 'App\\document', 10, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1565940210-5-CNIC Front.jpg\",\"file_path\":\"documents\\/5_Saqib__Javiad\\/\",\"employee_id\":5,\"type\":\"image\\/jpeg\",\"id\":10}', 'http://hrms.barqaab.com/storeDocument', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 13:23:30', '2019-08-16 13:23:30'),
(71, 'App\\User', 1, 'created', 'App\\document', 11, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1565941101-5-CNIC Back.jpg\",\"file_path\":\"documents\\/5_Saqib__Javiad\\/\",\"employee_id\":5,\"type\":\"image\\/jpeg\",\"id\":11}', 'http://hrms.barqaab.com/storeDocument', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 13:38:21', '2019-08-16 13:38:21'),
(72, 'App\\User', 1, 'created', 'App\\document', 12, '[]', '{\"document_name\":\"Joining Report\",\"file_name\":\"1565941215-5-Joining Report.pdf\",\"file_path\":\"documents\\/5_Saqib__Javiad\\/\",\"employee_id\":5,\"type\":\"application\\/pdf\",\"id\":12}', 'http://hrms.barqaab.com/storeDocument', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 13:40:15', '2019-08-16 13:40:15'),
(73, 'App\\User', 1, 'created', 'App\\document', 13, '[]', '{\"document_name\":\"CV\",\"file_name\":\"1565941422-5-CV.pdf\",\"file_path\":\"documents\\/5_Saqib__Javiad\\/\",\"employee_id\":5,\"type\":\"application\\/pdf\",\"id\":13}', 'http://hrms.barqaab.com/storeDocument', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 13:43:42', '2019-08-16 13:43:42'),
(74, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"IWL3y4FBARxKEn6yYGA8GprQ9kZoryMIb5C1GAyutSNGLwckIKpVmlakfrBq\"}', '{\"remember_token\":\"ZODowWQSjXUsfiExsc98LcKFMrmP9AEcwy77jHVgVkqznVXxVs1tmU1Fu8JZ\"}', 'http://hrms.barqaab.com/logout', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 13:45:07', '2019-08-16 13:45:07'),
(75, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"dgCMfUNdtfJ8DEAi4DIxCH9tnDiUBtx3OzvD0CMO\"}', '{\"session_id\":\"4DhqLXempSyOjDbzTABciMoZ4BLCC44CI2AmtB7p\"}', 'http://hrms.barqaab.com/login', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 14:21:28', '2019-08-16 14:21:28'),
(76, 'App\\User', 1, 'created', 'App\\document', 14, '[]', '{\"document_name\":\"B.Com Degree\",\"file_name\":\"1565943899-5-B.Com Degree.pdf\",\"file_path\":\"documents\\/5_Saqib__Javiad\\/\",\"employee_id\":5,\"type\":\"application\\/pdf\",\"id\":14}', 'http://hrms.barqaab.com/storeDocument', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 14:25:00', '2019-08-16 14:25:00'),
(77, 'App\\User', 1, 'created', 'App\\document', 15, '[]', '{\"document_name\":\"Appointment Letter Acceptance\",\"file_name\":\"1565944004-5-Appointment Letter Acceptance.pdf\",\"file_path\":\"documents\\/5_Saqib__Javiad\\/\",\"employee_id\":5,\"type\":\"application\\/pdf\",\"id\":15}', 'http://hrms.barqaab.com/storeDocument', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 14:26:44', '2019-08-16 14:26:44'),
(78, 'App\\User', 1, 'created', 'App\\document', 16, '[]', '{\"document_name\":\"ACCA Compliation Certificate\",\"file_name\":\"1565944044-5-ACCA Compliation Certificate.pdf\",\"file_path\":\"documents\\/5_Saqib__Javiad\\/\",\"employee_id\":5,\"type\":\"application\\/pdf\",\"id\":16}', 'http://hrms.barqaab.com/storeDocument', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 14:27:24', '2019-08-16 14:27:24'),
(79, 'App\\User', 1, 'created', 'App\\document', 17, '[]', '{\"document_name\":\"Request for Extenion\",\"file_name\":\"1565944159-5-Request for Extenion.pdf\",\"file_path\":\"documents\\/5_Saqib__Javiad\\/\",\"employee_id\":5,\"type\":\"application\\/pdf\",\"id\":17}', 'http://hrms.barqaab.com/storeDocument', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 14:29:19', '2019-08-16 14:29:19'),
(80, 'App\\User', 1, 'created', 'App\\document', 18, '[]', '{\"document_name\":\"F.Sc Result\",\"file_name\":\"1565944282-5-F.Sc Result.pdf\",\"file_path\":\"documents\\/5_Saqib__Javiad\\/\",\"employee_id\":5,\"type\":\"application\\/pdf\",\"id\":18}', 'http://hrms.barqaab.com/storeDocument', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 14:31:22', '2019-08-16 14:31:22'),
(81, 'App\\User', 1, 'created', 'App\\document', 19, '[]', '{\"document_name\":\"Matric Result\",\"file_name\":\"1565944377-5-Matric Result.pdf\",\"file_path\":\"documents\\/5_Saqib__Javiad\\/\",\"employee_id\":5,\"type\":\"application\\/pdf\",\"id\":19}', 'http://hrms.barqaab.com/storeDocument', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 14:32:57', '2019-08-16 14:32:57'),
(82, 'App\\User', 1, 'created', 'App\\document', 20, '[]', '{\"document_name\":\"Office Order to Extenion in Service in CAT-A Grade-3\",\"file_name\":\"1565944468-5-Office Order to Extenion in Service in CAT-A Grade-3.pdf\",\"file_path\":\"documents\\/5_Saqib__Javiad\\/\",\"employee_id\":5,\"type\":\"application\\/pdf\",\"id\":20}', 'http://hrms.barqaab.com/storeDocument', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 14:34:28', '2019-08-16 14:34:28'),
(83, 'App\\User', 1, 'updated', 'App\\document', 20, '{\"document_name\":\"Office Order to Extenion in Service in CAT-A Grade-3\"}', '{\"document_name\":\"Office Order for Extension in Service in Cat-A Grade-3\"}', 'http://hrms.barqaab.com/editDocument/20', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 14:35:29', '2019-08-16 14:35:29'),
(84, 'App\\User', 1, 'created', 'App\\document', 21, '[]', '{\"document_name\":\"Completion Certificate of Training\",\"file_name\":\"1565945057-5-Completion Certificate of Training.pdf\",\"file_path\":\"documents\\/5_Saqib__Javiad\\/\",\"employee_id\":5,\"type\":\"application\\/pdf\",\"id\":21}', 'http://hrms.barqaab.com/storeDocument', '175.107.31.170', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-16 14:44:17', '2019-08-16 14:44:17'),
(85, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"4DhqLXempSyOjDbzTABciMoZ4BLCC44CI2AmtB7p\"}', '{\"session_id\":\"Y1nW3t6Vk70mVHuzxsZ8fQgRkAFaHy7YwCRacSMs\"}', 'http://hrms.barqaab.com/login', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 18:26:12', '2019-08-19 18:26:12'),
(86, 'App\\User', 1, 'created', 'App\\employee', 6, '[]', '{\"first_name\":\"Muhammad\",\"middle_name\":null,\"last_name\":\"Zafar\",\"father_name\":\"Fazal Muhammad\",\"date_of_birth\":\"1956-12-15\",\"gender\":\"Male\",\"cnic\":\"3520114890507\",\"cnic_expiry\":\"2024-01-07\",\"employee_no\":null,\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"1\",\"id\":6}', 'http://hrms.barqaab.com/storeEmployee', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 18:31:55', '2019-08-19 18:31:55'),
(87, 'App\\User', 1, 'created', 'App\\nationality', 6, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":6,\"id\":6}', 'http://hrms.barqaab.com/storeEmployee', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 18:31:55', '2019-08-19 18:31:55'),
(88, 'App\\User', 1, 'created', 'App\\picture', 4, '[]', '{\"name\":\"6.png\",\"employee_id\":6,\"type\":\"image\\/png\",\"size\":65575,\"width\":\"100\",\"height\":\"100\",\"id\":4}', 'http://hrms.barqaab.com/editPicture/6', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 18:34:19', '2019-08-19 18:34:19'),
(89, 'App\\User', 1, 'created', 'App\\appointment', 3, '[]', '{\"employee_id\":\"6\",\"reference_no\":\"BQB\\/W\\/01\\/600\\/MA\\/292\",\"appointment_date\":\"2017-05-02\",\"designation\":\"General Manager (Power)\",\"expiry_date\":null,\"category\":\"A\",\"grade\":\"2\",\"appointment_letter_type\":\"2 Pages\",\"id\":3}', 'http://hrms.barqaab.com/hrms/editAppointment/6', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 18:41:34', '2019-08-19 18:41:34'),
(90, 'App\\User', 1, 'created', 'App\\salary', 2, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"206934\",\"employee_id\":\"6\",\"salary_remarks\":null,\"id\":2}', 'http://hrms.barqaab.com/editSalary/6', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 18:43:23', '2019-08-19 18:43:23'),
(91, 'App\\User', 1, 'created', 'App\\promotion', 1, '[]', '{\"promoted_designation\":\"General Manager (Power)\",\"effective_date\":\"2018-03-01\",\"promotion_remarks\":\"Promoted as same position and Grade-02 in Cat-A\",\"employee_id\":\"6\",\"id\":1}', 'http://hrms.barqaab.com/storePromotion?id=6', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 18:47:51', '2019-08-19 18:47:51'),
(92, 'App\\User', 1, 'created', 'App\\salary', 3, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"206934\",\"employee_id\":\"6\",\"promotion_id\":1,\"id\":3}', 'http://hrms.barqaab.com/storePromotion?id=6', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 18:47:51', '2019-08-19 18:47:51'),
(93, 'App\\User', 1, 'updated', 'App\\promotion', 1, '{\"promotion_remarks\":\"Promoted as same position and Grade-02 in Cat-A\"}', '{\"promotion_remarks\":\"Promoted as same position and Grade-02 in Cat-A with all facilities\"}', 'http://hrms.barqaab.com/editPromotion/1', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 18:48:16', '2019-08-19 18:48:16'),
(94, 'App\\User', 1, 'created', 'App\\promotion', 2, '[]', '{\"promoted_designation\":\"General Manager (Power)\",\"effective_date\":\"2018-09-27\",\"promotion_remarks\":\"Promoted in Grade 1 with two increments on same Designation\",\"employee_id\":\"6\",\"id\":2}', 'http://hrms.barqaab.com/storePromotion?id=6', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 18:53:11', '2019-08-19 18:53:11'),
(95, 'App\\User', 1, 'created', 'App\\salary', 4, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"242725\",\"employee_id\":\"6\",\"promotion_id\":2,\"id\":4}', 'http://hrms.barqaab.com/storePromotion?id=6', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 18:53:11', '2019-08-19 18:53:11'),
(96, 'App\\User', 1, 'created', 'App\\posting', 3, '[]', '{\"position\":\"General Manager (Power)\",\"posting_date\":\"2017-05-02\",\"manager_id\":\"4\",\"joining_date\":\"2017-05-09\",\"project\":\"Overhead of the Company\",\"location\":\"Lahore\",\"employee_id\":\"6\",\"id\":3}', 'http://hrms.barqaab.com/storePosting', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 18:54:44', '2019-08-19 18:54:44'),
(97, 'App\\User', 1, 'created', 'App\\contact', 2, '[]', '{\"employee_id\":\"6\",\"type\":\"0\",\"house\":\"162-N\",\"street\":\"Phase-1\",\"town\":\"DHA\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country\":\"Pakistan\",\"mobile\":\"0335-7401951\",\"landline\":\"0347-4448844\",\"id\":2}', 'http://hrms.barqaab.com/editPermanentAddress/6', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 18:56:21', '2019-08-19 18:56:21'),
(98, 'App\\User', 1, 'updated', 'App\\contact', 2, '{\"landline\":\"0347-4448844\"}', '{\"landline\":\"042-35743017\"}', 'http://hrms.barqaab.com/editPermanentAddress/6', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 19:41:39', '2019-08-19 19:41:39'),
(99, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"ZODowWQSjXUsfiExsc98LcKFMrmP9AEcwy77jHVgVkqznVXxVs1tmU1Fu8JZ\"}', '{\"remember_token\":\"4r7xFoVDCRcqdVQsdIrJl3UJ0qmtGX1qwe3tTvVVb9ErAaBVBY7Wt2g9djyn\"}', 'http://hrms.barqaab.com/logout', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-19 20:04:07', '2019-08-19 20:04:07'),
(100, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"Y1nW3t6Vk70mVHuzxsZ8fQgRkAFaHy7YwCRacSMs\"}', '{\"session_id\":\"S0ByWPWLSlGODt9ba8aM00uUxQm6cRn7cduUQKEF\"}', 'http://hrms.barqaab.com/login', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 08:54:21', '2019-08-20 08:54:21'),
(101, 'App\\User', 1, 'created', 'App\\document', 22, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1566270372-6-CNIC Front.jpg\",\"file_path\":\"documents\\/6_Muhammad__Zafar\\/\",\"employee_id\":6,\"type\":\"image\\/jpeg\",\"id\":22}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 09:06:12', '2019-08-20 09:06:12'),
(102, 'App\\User', 1, 'created', 'App\\document', 23, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1566270393-6-CNIC Back.jpg\",\"file_path\":\"documents\\/6_Muhammad__Zafar\\/\",\"employee_id\":6,\"type\":\"image\\/jpeg\",\"id\":23}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 09:06:33', '2019-08-20 09:06:33'),
(103, 'App\\User', 1, 'created', 'App\\document', 24, '[]', '{\"document_name\":\"Office Order for Cat-A after Completion of 9 Months\",\"date\":\"2018-03-26\",\"file_name\":\"1566271601-6-Office Order for Cat-A after Completion of 9 Months.pdf\",\"file_path\":\"documents\\/6_Muhammad__Zafar\\/\",\"employee_id\":6,\"type\":\"application\\/pdf\",\"id\":24}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 09:26:41', '2019-08-20 09:26:41'),
(104, 'App\\User', 1, 'created', 'App\\document', 25, '[]', '{\"document_name\":\"Office Order for Grade-1 with two increments\",\"date\":\"2018-10-11\",\"file_name\":\"1566271687-6-Office Order for Grade-1 with two increments.pdf\",\"file_path\":\"documents\\/6_Muhammad__Zafar\\/\",\"employee_id\":6,\"type\":\"application\\/pdf\",\"id\":25}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 09:28:07', '2019-08-20 09:28:07'),
(105, 'App\\User', 1, 'created', 'App\\document', 26, '[]', '{\"document_name\":\"Appointment Letter\",\"date\":\"2017-05-02\",\"file_name\":\"1566271863-6-Appointment Letter.pdf\",\"file_path\":\"documents\\/6_Muhammad__Zafar\\/\",\"employee_id\":6,\"type\":\"application\\/pdf\",\"id\":26}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 09:31:03', '2019-08-20 09:31:03'),
(106, 'App\\User', 1, 'created', 'App\\document', 27, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1566271958-6-HR Form.pdf\",\"file_path\":\"documents\\/6_Muhammad__Zafar\\/\",\"employee_id\":6,\"type\":\"application\\/pdf\",\"id\":27}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 09:32:38', '2019-08-20 09:32:38'),
(107, 'App\\User', 1, 'created', 'App\\document', 28, '[]', '{\"document_name\":\"Joining Report\",\"date\":\"2017-05-09\",\"file_name\":\"1566272239-6-Joining Report.pdf\",\"file_path\":\"documents\\/6_Muhammad__Zafar\\/\",\"employee_id\":6,\"type\":\"application\\/pdf\",\"id\":28}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 09:37:19', '2019-08-20 09:37:19'),
(108, 'App\\User', 1, 'created', 'App\\document', 29, '[]', '{\"document_name\":\"B.Sc. Electrical Engineering Degree\",\"file_name\":\"1566272378-6-B.Sc. Electrical Engineering Degree.pdf\",\"file_path\":\"documents\\/6_Muhammad__Zafar\\/\",\"employee_id\":6,\"type\":\"application\\/pdf\",\"id\":29}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 09:39:38', '2019-08-20 09:39:38');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(109, 'App\\User', 1, 'created', 'App\\document', 30, '[]', '{\"document_name\":\"M.Sc Electrical Engineering Degree\",\"file_name\":\"1566272421-6-M.Sc Electrical Engineering Degree.pdf\",\"file_path\":\"documents\\/6_Muhammad__Zafar\\/\",\"employee_id\":6,\"type\":\"application\\/pdf\",\"id\":30}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 09:40:21', '2019-08-20 09:40:21'),
(110, 'App\\User', 1, 'created', 'App\\document', 31, '[]', '{\"document_name\":\"Oracle Certification\",\"file_name\":\"1566273340-6-Oracle Certification.pdf\",\"file_path\":\"documents\\/6_Muhammad__Zafar\\/\",\"employee_id\":6,\"type\":\"application\\/pdf\",\"id\":31}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 09:55:40', '2019-08-20 09:55:40'),
(111, 'App\\User', 1, 'created', 'App\\document', 32, '[]', '{\"document_name\":\"NTDC Appreciation Letter\",\"file_name\":\"1566273370-6-NTDC Appreciation Letter.pdf\",\"file_path\":\"documents\\/6_Muhammad__Zafar\\/\",\"employee_id\":6,\"type\":\"application\\/pdf\",\"id\":32}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 09:56:10', '2019-08-20 09:56:10'),
(112, 'App\\User', 1, 'created', 'App\\document', 33, '[]', '{\"document_name\":\"Training Certificates\",\"file_name\":\"1566273426-6-Training Certificates.pdf\",\"file_path\":\"documents\\/6_Muhammad__Zafar\\/\",\"employee_id\":6,\"type\":\"application\\/pdf\",\"id\":33}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 09:57:06', '2019-08-20 09:57:06'),
(113, 'App\\User', 1, 'created', 'App\\document', 34, '[]', '{\"document_name\":\"Pay Fixation for Grade-1 with two increments\",\"file_name\":\"1566274100-6-Pay Fixation for Grade-1 with two increments.pdf\",\"file_path\":\"documents\\/6_Muhammad__Zafar\\/\",\"employee_id\":6,\"type\":\"application\\/pdf\",\"id\":34}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 10:08:20', '2019-08-20 10:08:20'),
(114, 'App\\User', 1, 'created', 'App\\education', 6, '[]', '{\"degree_name\":\"Bachelor of Engineering Electrical\",\"institute\":\"Mehran University of Engineering & Technology, Jamshoro\",\"marks_obtain\":\"3.92\",\"total_marks\":\"4.0\",\"level\":\"16\",\"employee_id\":\"6\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"1981\",\"grade\":null,\"country\":\"Pakistan\",\"id\":6}', 'http://hrms.barqaab.com/storeEducation', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 10:12:25', '2019-08-20 10:12:25'),
(115, 'App\\User', 1, 'created', 'App\\education', 7, '[]', '{\"degree_name\":\"Master in Electrical Engineering\",\"institute\":\"University of Engineering and Technology, Lahore\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"18\",\"employee_id\":\"6\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2009\",\"grade\":null,\"country\":\"Pakistan\",\"id\":7}', 'http://hrms.barqaab.com/storeEducation', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 10:16:28', '2019-08-20 10:16:28'),
(116, 'App\\User', 1, 'created', 'App\\membership', 2, '[]', '{\"name\":\"PEC\",\"membership_no\":\"Elect\\/3994\",\"expiry_date\":\"2020-12-31\",\"employee_id\":\"6\",\"id\":2}', 'http://hrms.barqaab.com/storeMembership', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 10:20:09', '2019-08-20 10:20:09'),
(117, 'App\\User', 1, 'created', 'App\\language', 3, '[]', '{\"name\":\"English\",\"reading\":\"Excellent\",\"speaking\":\"Excellent\",\"writing\":\"Excellent\",\"employee_id\":\"6\",\"id\":3}', 'http://hrms.barqaab.com/storeLanguage', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 10:22:27', '2019-08-20 10:22:27'),
(118, 'App\\User', 1, 'created', 'App\\language', 4, '[]', '{\"name\":\"Urdu\",\"reading\":\"Excellent\",\"speaking\":\"Excellent\",\"writing\":\"Excellent\",\"employee_id\":\"6\",\"id\":4}', 'http://hrms.barqaab.com/storeLanguage', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 10:22:37', '2019-08-20 10:22:37'),
(119, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"S0ByWPWLSlGODt9ba8aM00uUxQm6cRn7cduUQKEF\"}', '{\"session_id\":\"nLTKKzLaUgCHQIgZWDsbwS4TBXbpCXDVoOkGQ8Xx\"}', 'http://hrms.barqaab.com/login', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-20 18:49:47', '2019-08-20 18:49:47'),
(120, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"nLTKKzLaUgCHQIgZWDsbwS4TBXbpCXDVoOkGQ8Xx\"}', '{\"session_id\":\"ic1fSydDOa55XmCrRWTaCZkBAw7MBtuA5Ug4xcVy\"}', 'http://hrms.barqaab.com/login', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-21 09:34:15', '2019-08-21 09:34:15'),
(121, 'App\\User', 1, 'created', 'App\\employee', 7, '[]', '{\"first_name\":\"Mumtaz\",\"middle_name\":null,\"last_name\":\"Akhtar\",\"father_name\":\"Talib Hussain Asghar\",\"date_of_birth\":\"1943-09-16\",\"gender\":\"Male\",\"cnic\":\"3520149307507\",\"cnic_expiry\":\"2034-08-01\",\"employee_no\":null,\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":7}', 'http://hrms.barqaab.com/storeEmployee', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-21 09:46:35', '2019-08-21 09:46:35'),
(122, 'App\\User', 1, 'created', 'App\\nationality', 7, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":7,\"id\":7}', 'http://hrms.barqaab.com/storeEmployee', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-21 09:46:35', '2019-08-21 09:46:35'),
(123, 'App\\User', 1, 'created', 'App\\picture', 5, '[]', '{\"name\":\"7.png\",\"employee_id\":7,\"type\":\"image\\/png\",\"size\":82490,\"width\":\"100\",\"height\":\"100\",\"id\":5}', 'http://hrms.barqaab.com/editPicture/7', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-21 09:47:46', '2019-08-21 09:47:46'),
(124, 'App\\User', 1, 'created', 'App\\document', 35, '[]', '{\"document_name\":\"Office Order for Extension in Service\",\"date\":\"2018-09-26\",\"file_name\":\"1566359488-7-Office Order for Extension in Service.pdf\",\"file_path\":\"documents\\/7_Mumtaz__Akhtar\\/\",\"employee_id\":7,\"type\":\"application\\/pdf\",\"id\":35}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-21 09:51:28', '2019-08-21 09:51:28'),
(125, 'App\\User', 1, 'created', 'App\\document', 36, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1566359518-7-CNIC Front.jpg\",\"file_path\":\"documents\\/7_Mumtaz__Akhtar\\/\",\"employee_id\":7,\"type\":\"image\\/jpeg\",\"id\":36}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-21 09:51:58', '2019-08-21 09:51:58'),
(126, 'App\\User', 1, 'created', 'App\\document', 37, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1566359537-7-CNIC Back.jpg\",\"file_path\":\"documents\\/7_Mumtaz__Akhtar\\/\",\"employee_id\":7,\"type\":\"image\\/jpeg\",\"id\":37}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-21 09:52:17', '2019-08-21 09:52:17'),
(127, 'App\\User', 1, 'created', 'App\\document', 38, '[]', '{\"document_name\":\"Appointment Letter\",\"date\":\"2000-08-12\",\"file_name\":\"1566360493-7-Appointment Letter.pdf\",\"file_path\":\"documents\\/7_Mumtaz__Akhtar\\/\",\"employee_id\":7,\"type\":\"application\\/pdf\",\"id\":38}', 'http://hrms.barqaab.com/storeDocument', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-21 10:08:13', '2019-08-21 10:08:13'),
(128, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"ic1fSydDOa55XmCrRWTaCZkBAw7MBtuA5Ug4xcVy\"}', '{\"session_id\":\"WsL8d2ePPAJuPDoxjWk5wSEU2P1x3k4sPiQYAkdJ\"}', 'http://hrms.barqaab.com/login', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-21 12:22:17', '2019-08-21 12:22:17'),
(129, 'App\\User', 1, 'created', 'App\\appointment', 4, '[]', '{\"employee_id\":\"7\",\"reference_no\":\"BQB\\/PF\\/126\",\"appointment_date\":\"2000-08-12\",\"designation\":\"General Manager (W&C)\",\"expiry_date\":null,\"category\":\"A\",\"grade\":\"2\",\"appointment_letter_type\":\"2 Pages\",\"id\":4}', 'http://hrms.barqaab.com/hrms/editAppointment/7', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-21 13:48:23', '2019-08-21 13:48:23'),
(130, 'App\\User', 1, 'created', 'App\\posting', 4, '[]', '{\"position\":\"General Manager (W&C)\",\"posting_date\":\"2000-08-12\",\"manager_id\":\"4\",\"joining_date\":\"2000-08-12\",\"project\":\"Overhead of the Company\",\"location\":\"Lahore\",\"employee_id\":\"7\",\"id\":4}', 'http://hrms.barqaab.com/storePosting', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-21 13:49:26', '2019-08-21 13:49:26'),
(131, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"WsL8d2ePPAJuPDoxjWk5wSEU2P1x3k4sPiQYAkdJ\"}', '{\"session_id\":\"hDLhwTcHLQVPr8cSG3uZto3zsX9hyJZWyRP7JDwo\"}', 'http://hrms.barqaab.com/login', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 08:46:13', '2019-08-22 08:46:13'),
(132, 'App\\User', 1, 'created', 'App\\employee', 8, '[]', '{\"first_name\":\"Naveed\",\"middle_name\":\"Akhtar\",\"last_name\":\"Nawaz\",\"father_name\":\"Muhammad Nawaz\",\"date_of_birth\":\"1980-11-11\",\"gender\":\"Male\",\"cnic\":\"3460108614411\",\"cnic_expiry\":\"2019-12-26\",\"employee_no\":null,\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":8}', 'http://hrms.barqaab.com/storeEmployee', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 08:48:15', '2019-08-22 08:48:15'),
(133, 'App\\User', 1, 'created', 'App\\nationality', 8, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":8,\"id\":8}', 'http://hrms.barqaab.com/storeEmployee', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 08:48:15', '2019-08-22 08:48:15'),
(134, 'App\\User', 1, 'created', 'App\\appointment', 5, '[]', '{\"employee_id\":\"8\",\"reference_no\":\"BQB\\/W-01\\/522\\/MA\\/369\",\"appointment_date\":\"2005-05-12\",\"designation\":\"Junior Engineer (Civil)\",\"expiry_date\":null,\"category\":\"A\",\"grade\":\"9\",\"appointment_letter_type\":\"2 Pages\",\"id\":5}', 'http://hrms.barqaab.com/hrms/editAppointment/8', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 09:10:22', '2019-08-22 09:10:22'),
(135, 'App\\User', 1, 'created', 'App\\salary', 5, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"22680\",\"employee_id\":\"8\",\"salary_remarks\":null,\"id\":5}', 'http://hrms.barqaab.com/editSalary/8', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 09:11:14', '2019-08-22 09:11:14'),
(136, 'App\\User', 1, 'created', 'App\\education', 8, '[]', '{\"degree_name\":\"Matric\",\"institute\":\"Govt. Muslim Awami High School Sambrial Sialkot\",\"marks_obtain\":\"737\",\"total_marks\":\"850\",\"level\":\"10\",\"employee_id\":\"8\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"1996\",\"grade\":\"A+\",\"country\":\"Pakistan\",\"id\":8}', 'http://hrms.barqaab.com/storeEducation', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 09:14:47', '2019-08-22 09:14:47'),
(137, 'App\\User', 1, 'created', 'App\\education', 9, '[]', '{\"degree_name\":\"F.Sc\",\"institute\":\"Govt. Jinnah Islamia College, Sialkot\",\"marks_obtain\":\"815\",\"total_marks\":\"1100\",\"level\":\"12\",\"employee_id\":\"8\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"1998\",\"grade\":\"A\",\"country\":\"Pakistan\",\"id\":9}', 'http://hrms.barqaab.com/storeEducation', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 09:15:59', '2019-08-22 09:15:59'),
(138, 'App\\User', 1, 'created', 'App\\education', 10, '[]', '{\"degree_name\":\"B.Sc Civil Engineering\",\"institute\":\"University of Engineering & Technology, Lahore\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"16\",\"employee_id\":\"8\",\"from_month\":null,\"from_year\":null,\"to_month\":\"February\",\"to_year\":\"2003\",\"grade\":\"First\",\"country\":\"Pakistan\",\"id\":10}', 'http://hrms.barqaab.com/storeEducation', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 09:17:55', '2019-08-22 09:17:55'),
(139, 'App\\User', 1, 'created', 'App\\education', 11, '[]', '{\"degree_name\":\"M.Sc Civil Engineering\",\"institute\":\"University of Engineering & Technology, Lahore\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"18\",\"employee_id\":\"8\",\"from_month\":null,\"from_year\":null,\"to_month\":\"August\",\"to_year\":\"2006\",\"grade\":null,\"country\":\"Pakistan\",\"id\":11}', 'http://hrms.barqaab.com/storeEducation', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 09:19:02', '2019-08-22 09:19:02'),
(140, 'App\\User', 1, 'created', 'App\\posting', 5, '[]', '{\"position\":\"Junior Engineer (Civil)\",\"posting_date\":\"2005-05-12\",\"manager_id\":\"7\",\"joining_date\":\"2005-05-12\",\"project\":\"Overhead of the Company\",\"location\":\"Lahore\",\"employee_id\":\"8\",\"id\":5}', 'http://hrms.barqaab.com/storePosting', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 09:21:35', '2019-08-22 09:21:35'),
(141, 'App\\User', 1, 'created', 'App\\membership', 3, '[]', '{\"name\":\"PEC\",\"membership_no\":\"Civil\\/23078\",\"expiry_date\":\"2019-12-31\",\"employee_id\":\"8\",\"id\":3}', 'http://hrms.barqaab.com/storeMembership', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 09:24:04', '2019-08-22 09:24:04'),
(142, 'App\\User', 1, 'created', 'App\\language', 5, '[]', '{\"name\":\"English\",\"reading\":\"Excellent\",\"speaking\":\"Excellent\",\"writing\":\"Excellent\",\"employee_id\":\"8\",\"id\":5}', 'http://hrms.barqaab.com/storeLanguage', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 09:24:21', '2019-08-22 09:24:21'),
(143, 'App\\User', 1, 'created', 'App\\language', 6, '[]', '{\"name\":\"Urdu\",\"reading\":\"Excellent\",\"speaking\":\"Excellent\",\"writing\":\"Excellent\",\"employee_id\":\"8\",\"id\":6}', 'http://hrms.barqaab.com/storeLanguage', '175.107.17.52', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 09:24:31', '2019-08-22 09:24:31'),
(144, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"hDLhwTcHLQVPr8cSG3uZto3zsX9hyJZWyRP7JDwo\"}', '{\"session_id\":\"6jR6R4Ukf0RNy2ptloN7U7uUtLCODjBT7lrjwAfi\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-21 22:35:14', '2019-08-21 22:35:14'),
(145, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"4r7xFoVDCRcqdVQsdIrJl3UJ0qmtGX1qwe3tTvVVb9ErAaBVBY7Wt2g9djyn\"}', '{\"remember_token\":\"qhaKg9RTyidg71Ys6BOukluzMm37Br45jKtA175iNZHe9DA6fgjK7wXGANbM\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-21 22:43:44', '2019-08-21 22:43:44'),
(146, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"6jR6R4Ukf0RNy2ptloN7U7uUtLCODjBT7lrjwAfi\"}', '{\"session_id\":\"vM1KcUYELhlRTzv5LIhzVRjTEmQYPLwsZarbLlHv\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 00:58:39', '2019-08-22 00:58:39'),
(147, 'App\\User', 1, 'updated', 'App\\posting', 5, '{\"project\":\"Overhead of the Company\"}', '{\"project\":\"500kV Gatti Grid Station Project\"}', 'http://localhost/hrms/public/editPosting/5', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 01:38:07', '2019-08-22 01:38:07'),
(148, 'App\\User', 1, 'updated', 'App\\posting', 5, '{\"project\":\"500kV Gatti Grid Station Project\"}', '{\"project\":\"Overhead of the Company\"}', 'http://localhost/hrms/public/editPosting/5', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 01:38:48', '2019-08-22 01:38:48'),
(149, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"vM1KcUYELhlRTzv5LIhzVRjTEmQYPLwsZarbLlHv\"}', '{\"session_id\":\"WA2myPNvcUUgfm3HMGGql4KmurmVZJLiPCOvMLkf\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 02:29:45', '2019-08-22 02:29:45'),
(150, 'App\\User', 1, 'updated', 'App\\employee', 4, '{\"employee_status\":0}', '{\"employee_status\":1}', 'http://localhost/hrms/public/inactiveEmployee/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 02:38:48', '2019-08-22 02:38:48'),
(151, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"WA2myPNvcUUgfm3HMGGql4KmurmVZJLiPCOvMLkf\"}', '{\"session_id\":\"0CzzOgmDShJqcAHXmBYRH3OMaQFA1NzIw9burUqo\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 05:46:10', '2019-08-22 05:46:10'),
(152, 'App\\User', 1, 'created', 'App\\document', 39, '[]', '{\"document_name\":\"Office Order for Grade-1\",\"date\":\"2001-08-31\",\"file_name\":\"1566470912-7-Office Order for Grade-1.pdf\",\"file_path\":\"documents\\/7_Mumtaz__Akhtar\\/\",\"employee_id\":7,\"type\":\"application\\/pdf\",\"id\":39}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 05:48:33', '2019-08-22 05:48:33'),
(153, 'App\\User', 1, 'created', 'App\\salary', 6, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"43750\",\"employee_id\":\"7\",\"salary_remarks\":null,\"id\":6}', 'http://localhost/hrms/public/editSalary/7', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 05:52:46', '2019-08-22 05:52:46'),
(154, 'App\\User', 1, 'created', 'App\\promotion', 3, '[]', '{\"promoted_designation\":\"General Manager (CC&A)\",\"effective_date\":\"2001-09-01\",\"promotion_remarks\":\"Promoted from Grade-2 to Grade-1\",\"employee_id\":\"7\",\"id\":3}', 'http://localhost/hrms/public/storePromotion?id=7', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 05:56:28', '2019-08-22 05:56:28'),
(155, 'App\\User', 1, 'created', 'App\\salary', 7, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"49000\",\"employee_id\":\"7\",\"promotion_id\":3,\"id\":7}', 'http://localhost/hrms/public/storePromotion?id=7', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 05:56:28', '2019-08-22 05:56:28'),
(156, 'App\\User', 1, 'created', 'App\\document', 40, '[]', '{\"document_name\":\"Officer from GM(CC&A) to GM(W&C)\",\"date\":\"2009-04-01\",\"file_name\":\"1566471553-7-Officer from GM(CC&A) to GM(W&C).pdf\",\"file_path\":\"documents\\/7_Mumtaz__Akhtar\\/\",\"employee_id\":7,\"type\":\"application\\/pdf\",\"id\":40}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 05:59:14', '2019-08-22 05:59:14'),
(157, 'App\\User', 1, 'created', 'App\\document', 41, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1566472237-8-CNIC Front.jpg\",\"file_path\":\"documents\\/8_Naveed_Akhtar_Nawaz\\/\",\"employee_id\":8,\"type\":\"image\\/jpeg\",\"id\":41}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:10:37', '2019-08-22 06:10:37'),
(158, 'App\\User', 1, 'created', 'App\\document', 42, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1566472326-8-CNIC Back.jpg\",\"file_path\":\"documents\\/8_Naveed_Akhtar_Nawaz\\/\",\"employee_id\":8,\"type\":\"image\\/jpeg\",\"id\":42}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:12:06', '2019-08-22 06:12:06'),
(159, 'App\\User', 1, 'created', 'App\\document', 43, '[]', '{\"document_name\":\"Appointment Letter\",\"date\":\"2005-05-12\",\"file_name\":\"1566472432-8-Appointment Letter.pdf\",\"file_path\":\"documents\\/8_Naveed_Akhtar_Nawaz\\/\",\"employee_id\":8,\"type\":\"application\\/pdf\",\"id\":43}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:13:52', '2019-08-22 06:13:52'),
(160, 'App\\User', 1, 'created', 'App\\document', 44, '[]', '{\"document_name\":\"Matric Degree\",\"file_name\":\"1566472471-8-Matric Degree.pdf\",\"file_path\":\"documents\\/8_Naveed_Akhtar_Nawaz\\/\",\"employee_id\":8,\"type\":\"application\\/pdf\",\"id\":44}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:14:31', '2019-08-22 06:14:31'),
(161, 'App\\User', 1, 'created', 'App\\document', 45, '[]', '{\"document_name\":\"F.Sc Degree\",\"file_name\":\"1566472488-8-F.Sc Degree.pdf\",\"file_path\":\"documents\\/8_Naveed_Akhtar_Nawaz\\/\",\"employee_id\":8,\"type\":\"application\\/pdf\",\"id\":45}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:14:48', '2019-08-22 06:14:48'),
(162, 'App\\User', 1, 'created', 'App\\document', 46, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1566472521-8-HR Form.pdf\",\"file_path\":\"documents\\/8_Naveed_Akhtar_Nawaz\\/\",\"employee_id\":8,\"type\":\"application\\/pdf\",\"id\":46}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:15:22', '2019-08-22 06:15:22'),
(163, 'App\\User', 1, 'created', 'App\\picture', 6, '[]', '{\"name\":\"8.png\",\"employee_id\":8,\"type\":\"image\\/png\",\"size\":94798,\"width\":\"100\",\"height\":\"100\",\"id\":6}', 'http://localhost/hrms/public/editPicture/8', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:16:38', '2019-08-22 06:16:38'),
(164, 'App\\User', 1, 'created', 'App\\document', 47, '[]', '{\"document_name\":\"Office Order for Senior Engineer\",\"date\":\"2008-01-08\",\"file_name\":\"1566472730-8-Office Order for Senior Engineer.pdf\",\"file_path\":\"documents\\/8_Naveed_Akhtar_Nawaz\\/\",\"employee_id\":8,\"type\":\"application\\/pdf\",\"id\":47}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:18:51', '2019-08-22 06:18:51'),
(165, 'App\\User', 1, 'created', 'App\\document', 48, '[]', '{\"document_name\":\"Office Order for Grade-8\",\"date\":\"2006-12-27\",\"file_name\":\"1566472796-8-Office Order for Grade-8.pdf\",\"file_path\":\"documents\\/8_Naveed_Akhtar_Nawaz\\/\",\"employee_id\":8,\"type\":\"application\\/pdf\",\"id\":48}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:19:56', '2019-08-22 06:19:56'),
(166, 'App\\User', 1, 'created', 'App\\document', 49, '[]', '{\"document_name\":\"Office Order to Grade-6\",\"date\":\"2016-06-09\",\"file_name\":\"1566472854-8-Office Order to Grade-6.pdf\",\"file_path\":\"documents\\/8_Naveed_Akhtar_Nawaz\\/\",\"employee_id\":8,\"type\":\"application\\/pdf\",\"id\":49}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:20:54', '2019-08-22 06:20:54'),
(167, 'App\\User', 1, 'created', 'App\\employee', 9, '[]', '{\"first_name\":\"Rana\",\"middle_name\":\"Haider\",\"last_name\":\"Faruq\",\"father_name\":\"Rana Muhammad Siddique\",\"date_of_birth\":\"1984-11-23\",\"gender\":\"Male\",\"cnic\":\"3320204421243\",\"cnic_expiry\":\"2025-02-27\",\"employee_no\":null,\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":9}', 'http://localhost/hrms/public/storeEmployee', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:37:31', '2019-08-22 06:37:31'),
(168, 'App\\User', 1, 'created', 'App\\nationality', 9, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":9,\"id\":9}', 'http://localhost/hrms/public/storeEmployee', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:37:31', '2019-08-22 06:37:31'),
(169, 'App\\User', 1, 'created', 'App\\document', 50, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1566473877-9-HR Form.pdf\",\"file_path\":\"documents\\/9_Rana_Haider_Faruq\\/\",\"employee_id\":9,\"type\":\"application\\/pdf\",\"id\":50}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:37:57', '2019-08-22 06:37:57'),
(170, 'App\\User', 1, 'created', 'App\\picture', 7, '[]', '{\"name\":\"9.png\",\"employee_id\":9,\"type\":\"image\\/png\",\"size\":75219,\"width\":\"100\",\"height\":\"100\",\"id\":7}', 'http://localhost/hrms/public/editPicture/9', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:39:10', '2019-08-22 06:39:10'),
(171, 'App\\User', 1, 'created', 'App\\document', 51, '[]', '{\"document_name\":\"Appointment Letter\",\"date\":\"2010-10-29\",\"file_name\":\"1566473997-9-Appointment Letter.pdf\",\"file_path\":\"documents\\/9_Rana_Haider_Faruq\\/\",\"employee_id\":9,\"type\":\"application\\/pdf\",\"id\":51}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:39:57', '2019-08-22 06:39:57'),
(172, 'App\\User', 1, 'created', 'App\\document', 52, '[]', '{\"document_name\":\"Arrival Report\",\"date\":\"2010-11-01\",\"file_name\":\"1566474032-9-Arrival Report.pdf\",\"file_path\":\"documents\\/9_Rana_Haider_Faruq\\/\",\"employee_id\":9,\"type\":\"application\\/pdf\",\"id\":52}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:40:32', '2019-08-22 06:40:32'),
(173, 'App\\User', 1, 'created', 'App\\document', 53, '[]', '{\"document_name\":\"B.Sc Civil Engineering Degree\",\"file_name\":\"1566474073-9-B.Sc Civil Engineering Degree.pdf\",\"file_path\":\"documents\\/9_Rana_Haider_Faruq\\/\",\"employee_id\":9,\"type\":\"application\\/pdf\",\"id\":53}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 06:41:14', '2019-08-22 06:41:14'),
(174, 'App\\User', 1, 'created', 'App\\document', 54, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1566475438-9-CNIC Front.jpg\",\"file_path\":\"documents\\/9_Rana_Haider_Faruq\\/\",\"employee_id\":9,\"type\":\"image\\/jpeg\",\"id\":54}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 07:03:59', '2019-08-22 07:03:59'),
(175, 'App\\User', 1, 'created', 'App\\document', 55, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1566475459-9-CNIC Back.jpg\",\"file_path\":\"documents\\/9_Rana_Haider_Faruq\\/\",\"employee_id\":9,\"type\":\"image\\/jpeg\",\"id\":55}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 07:04:20', '2019-08-22 07:04:20'),
(176, 'App\\User', 1, 'created', 'App\\document', 56, '[]', '{\"document_name\":\"PEC Card Front\",\"file_name\":\"1566475479-9-PEC Card Front.jpg\",\"file_path\":\"documents\\/9_Rana_Haider_Faruq\\/\",\"employee_id\":9,\"type\":\"image\\/jpeg\",\"id\":56}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 07:04:40', '2019-08-22 07:04:40'),
(177, 'App\\User', 1, 'created', 'App\\document', 57, '[]', '{\"document_name\":\"PEC Card Back\",\"file_name\":\"1566475496-9-PEC Card Back.jpg\",\"file_path\":\"documents\\/9_Rana_Haider_Faruq\\/\",\"employee_id\":9,\"type\":\"image\\/jpeg\",\"id\":57}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 07:04:56', '2019-08-22 07:04:56'),
(178, 'App\\User', 1, 'created', 'App\\document', 58, '[]', '{\"document_name\":\"F.Sc Degree\",\"file_name\":\"1566475549-9-F.Sc Degree.pdf\",\"file_path\":\"documents\\/9_Rana_Haider_Faruq\\/\",\"employee_id\":9,\"type\":\"application\\/pdf\",\"id\":58}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 07:05:49', '2019-08-22 07:05:49'),
(179, 'App\\User', 1, 'created', 'App\\document', 59, '[]', '{\"document_name\":\"Matric Degree\",\"file_name\":\"1566475586-9-Matric Degree.pdf\",\"file_path\":\"documents\\/9_Rana_Haider_Faruq\\/\",\"employee_id\":9,\"type\":\"application\\/pdf\",\"id\":59}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 07:06:26', '2019-08-22 07:06:26'),
(180, 'App\\User', 1, 'created', 'App\\document', 60, '[]', '{\"document_name\":\"M.Sc. Gold Medal\",\"file_name\":\"1566475638-9-M.Sc. Gold Medal.pdf\",\"file_path\":\"documents\\/9_Rana_Haider_Faruq\\/\",\"employee_id\":9,\"type\":\"application\\/pdf\",\"id\":60}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 07:07:18', '2019-08-22 07:07:18'),
(181, 'App\\User', 1, 'created', 'App\\document', 61, '[]', '{\"document_name\":\"Office Order Grade-8\",\"date\":\"2016-06-09\",\"file_name\":\"1566475698-9-Office Order Grade-8.pdf\",\"file_path\":\"documents\\/9_Rana_Haider_Faruq\\/\",\"employee_id\":9,\"type\":\"application\\/pdf\",\"id\":61}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 07:08:18', '2019-08-22 07:08:18'),
(182, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"qhaKg9RTyidg71Ys6BOukluzMm37Br45jKtA175iNZHe9DA6fgjK7wXGANbM\"}', '{\"remember_token\":\"zpHpL1G0fpx2GjRfbB7wgJLZEjUGfZHWDrIW6u17saUjUx2rkiAGeefq6Ehm\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-22 07:13:33', '2019-08-22 07:13:33'),
(183, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"0CzzOgmDShJqcAHXmBYRH3OMaQFA1NzIw9burUqo\"}', '{\"session_id\":\"Ey9DfPSWprayRfC7wDFkuNItU1Zj6DXPWhyw8HQI\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-23 01:02:04', '2019-08-23 01:02:04'),
(184, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"zpHpL1G0fpx2GjRfbB7wgJLZEjUGfZHWDrIW6u17saUjUx2rkiAGeefq6Ehm\"}', '{\"remember_token\":\"g9sLfynPjktErXVlQ6Kv6GKss8YR5YDvYWZaEJz1LM9MhLLJ9249srky0ojr\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-23 02:41:14', '2019-08-23 02:41:14'),
(185, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"Ey9DfPSWprayRfC7wDFkuNItU1Zj6DXPWhyw8HQI\"}', '{\"session_id\":\"0hpk3M61VZseLsvvcQntezSXmXFQlt2KkiHxyjId\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-23 05:01:50', '2019-08-23 05:01:50'),
(186, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"0hpk3M61VZseLsvvcQntezSXmXFQlt2KkiHxyjId\"}', '{\"session_id\":\"BNEmR5kc0sUAE1SG563J0GLb2sXOpZ5BxM31KDJk\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-23 06:11:13', '2019-08-23 06:11:13'),
(187, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"g9sLfynPjktErXVlQ6Kv6GKss8YR5YDvYWZaEJz1LM9MhLLJ9249srky0ojr\"}', '{\"remember_token\":\"1HSFN6Kp9XA07OOsUB2L0Qh1HjJ5uf20sCoAQPrv4PvR6N0BqsjtsQYqBY7T\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-23 08:39:40', '2019-08-23 08:39:40'),
(188, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"BNEmR5kc0sUAE1SG563J0GLb2sXOpZ5BxM31KDJk\"}', '{\"session_id\":\"OJ4Cbyj1ALTQ7ikQZyri3SodHYdUSeOKrqyQvDfU\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 00:55:43', '2019-08-26 00:55:43'),
(189, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"OJ4Cbyj1ALTQ7ikQZyri3SodHYdUSeOKrqyQvDfU\"}', '{\"session_id\":\"Wxz0qd5upX6Mecu8su4XdqYJ3WaNkeEbT9NWiiKL\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 04:46:22', '2019-08-26 04:46:22'),
(190, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"Wxz0qd5upX6Mecu8su4XdqYJ3WaNkeEbT9NWiiKL\"}', '{\"session_id\":\"Fh6BdPnQmo7IKvMHfRilp2bUIEAYtokyPQ67qnPC\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:12:24', '2019-08-26 22:12:24'),
(191, 'App\\User', 1, 'updated', 'App\\employee', 4, '{\"date_of_birth\":\"1942-08-26\",\"marital_status\":\"Married\"}', '{\"date_of_birth\":\"1942-05-13\",\"marital_status\":\"1\"}', 'http://localhost/hrms/public/editEmployee/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:15:57', '2019-08-26 22:15:57'),
(192, 'App\\User', 1, 'updated', 'App\\employee', 1, '{\"date_of_birth\":\"1976-08-26\",\"cnic_expiry\":\"2020-04-02\"}', '{\"date_of_birth\":\"1976-06-08\",\"cnic_expiry\":\"2026-03-22\"}', 'http://localhost/hrms/public/editEmployee/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:16:55', '2019-08-26 22:16:55'),
(193, 'App\\User', 1, 'created', 'App\\project', 4, '[]', '{\"name\":\"500 kV Transmission Line From Muzaffargarh To Gatti Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2005-11-01\",\"contractual_completion\":\"2008-09-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":4}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(194, 'App\\User', 1, 'created', 'App\\project', 5, '[]', '{\"name\":\"500kV D.G Khan Allied Transmission Line of 500kV D.G Khan Grid Station (Part of GS Contract)\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2009-08-01\",\"contractual_completion\":\"2016-05-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":5}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(195, 'App\\User', 1, 'created', 'App\\project', 6, '[]', '{\"name\":\"NTDC-KESC 500\\/220 kV Interconnection Project Associated Transmission Line (Part of GS Contract)\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2004-10-01\",\"contractual_completion\":\"2006-12-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":6}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(196, 'App\\User', 1, 'created', 'App\\project', 7, '[]', '{\"name\":\"500kV Shikarpur Grid Station Associated Transmission Line Project (Part of GS Contract)\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2011-01-01\",\"contractual_completion\":\"2017-03-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":7}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(197, 'App\\User', 1, 'created', 'App\\project', 8, '[]', '{\"name\":\"500kV Neelum-Jhelum Transmission Line Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2012-12-01\",\"contractual_completion\":\"2017-12-01\",\"status\":\"In Progress\",\"role\":\"JV Partner\",\"share\":\"35% NESPAK Lead Firm\",\"id\":8}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(198, 'App\\User', 1, 'created', 'App\\project', 9, '[]', '{\"name\":\"220kV Chishtian \\u2013 Vehari Transmission Line (Part of GS Contract)\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2010-10-01\",\"contractual_completion\":\"2016-11-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":9}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(199, 'App\\User', 1, 'created', 'App\\project', 10, '[]', '{\"name\":\"220KV Chashma - Ludewala  Transmission Line \",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2008-07-01\",\"contractual_completion\":\"2011-04-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":10}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(200, 'App\\User', 1, 'created', 'App\\project', 11, '[]', '{\"name\":\"220KV Transmission Line From D.G Khan To Loralai Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2010-06-01\",\"contractual_completion\":\"2013-11-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":11}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(201, 'App\\User', 1, 'created', 'App\\project', 12, '[]', '{\"name\":\"220KV Double Circuit In\\/Out Arrangement At 220kv Shalamar GIS Substation (Part of GS Contract)\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2010-05-03\",\"contractual_completion\":\"2012-10-09\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":12}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(202, 'App\\User', 1, 'created', 'App\\project', 13, '[]', '{\"name\":\"220kV Kassowal AIS Grid Station Associated Transmission Line (Part of GS Contract)\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2009-09-01\",\"contractual_completion\":\"2011-07-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":13}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(203, 'App\\User', 1, 'created', 'App\\project', 14, '[]', '{\"name\":\"220KV Transmission Line From New 220kv Rohri Grid Station To 220kv Shikarpur Grid Station Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2008-08-05\",\"contractual_completion\":\"2012-09-30\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":14}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(204, 'App\\User', 1, 'created', 'App\\project', 15, '[]', '{\"name\":\"132KV Transmission Line From New 220kv Rohri Grid Station To 132kv Gambat Grid Station Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2008-08-06\",\"contractual_completion\":\"2011-12-15\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":15}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(205, 'App\\User', 1, 'created', 'App\\project', 16, '[]', '{\"name\":\"132kV Pir Wadhai to MES Transmission Line (IESCO)\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2012-06-30\",\"contractual_completion\":\"2013-02-24\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":16}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(206, 'App\\User', 1, 'created', 'App\\project', 17, '[]', '{\"name\":\"132 kV Rewat \\u2013 Nilore  Transmission Line (IESCO)\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2012-05-21\",\"contractual_completion\":\"2013-01-15\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":17}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(207, 'App\\User', 1, 'created', 'App\\project', 18, '[]', '{\"name\":\"132 kV University to Nilore Transmission Line (Re-Modeling) (IESCO)\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2012-05-09\",\"contractual_completion\":\"2013-01-03\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":18}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(208, 'App\\User', 1, 'created', 'App\\project', 19, '[]', '{\"name\":\"132kV Rewat to Chakri Transmission Line (IESCO)\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-07-22\",\"contractual_completion\":\"2012-04-20\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":19}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(209, 'App\\User', 1, 'created', 'App\\project', 20, '[]', '{\"name\":\"132kV Murree to Minhasa Transmission Line (IESCO)\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-04-15\",\"contractual_completion\":\"2012-07-08\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":20}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(210, 'App\\User', 1, 'created', 'App\\project', 21, '[]', '{\"name\":\"132kV Tararkhal to Hajeera Transmission Line (IESCO)\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-04-15\",\"contractual_completion\":\"2012-07-08\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":21}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(211, 'App\\User', 1, 'created', 'App\\project', 22, '[]', '{\"name\":\"132kv Tararkhal to Palandari Transmission Line (IESCO)\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-04-15\",\"contractual_completion\":\"2012-08-09\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":22}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(212, 'App\\User', 1, 'created', 'App\\project', 23, '[]', '{\"name\":\"132kv Azad Pattan to Pallandri Transmission Line (IESCO)\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-04-15\",\"contractual_completion\":\"2012-08-09\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":23}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(213, 'App\\User', 1, 'created', 'App\\project', 24, '[]', '{\"name\":\"132kv Dhudial to Kotli Transmission Line (IESCO)\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-04-18\",\"contractual_completion\":\"2012-08-09\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":24}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(214, 'App\\User', 1, 'created', 'App\\project', 25, '[]', '{\"name\":\"132kv Choa Saiden Sha to Dandot Transmission Line (IESCO)\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-09-20\",\"contractual_completion\":\"2012-06-20\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":25}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(215, 'App\\User', 1, 'created', 'App\\project', 26, '[]', '{\"name\":\"132kv Fateh Jang to Pindi Gheb Transmission Line (IESCO)\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-01-29\",\"contractual_completion\":\"2012-04-23\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":26}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(216, 'App\\User', 1, 'created', 'App\\project', 27, '[]', '{\"name\":\"132kv Dandot to Pinanwal Transmission Line (IESCO)\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-02-22\",\"contractual_completion\":\"2012-04-08\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":27}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(217, 'App\\User', 1, 'created', 'App\\project', 28, '[]', '{\"name\":\"NTDC-KESC 500\\/220 kV Interconnection Project \",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2004-10-01\",\"contractual_completion\":\"2006-12-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":28}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(218, 'App\\User', 1, 'created', 'App\\project', 29, '[]', '{\"name\":\"500kV Muzaffargarh And Gatti Grid Stations Extension Project (Part of T\\/L Contract)\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2005-11-01\",\"contractual_completion\":\"2008-12-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":29}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(219, 'App\\User', 1, 'created', 'App\\project', 30, '[]', '{\"name\":\"500KV Gatti Grid Station Extension Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2008-06-01\",\"contractual_completion\":\"2009-07-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":30}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(220, 'App\\User', 1, 'created', 'App\\project', 31, '[]', '{\"name\":\"500KV Lahore (Sheikhupura) Grid Station Extension Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2008-01-01\",\"contractual_completion\":\"2009-02-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":31}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(221, 'App\\User', 1, 'created', 'App\\project', 32, '[]', '{\"name\":\"500\\/220kV D.G Khan Substation \",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2009-08-01\",\"contractual_completion\":\"2016-05-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":32}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(222, 'App\\User', 1, 'created', 'App\\project', 33, '[]', '{\"name\":\"500\\/220Kv Ghazi Brotaha Grid Station Extension Project \",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2009-08-01\",\"contractual_completion\":\"2016-02-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":33}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(223, 'App\\User', 1, 'created', 'App\\project', 34, '[]', '{\"name\":\"500kV Shikarpur Grid Station Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2011-01-01\",\"contractual_completion\":\"2017-03-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":34}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(224, 'App\\User', 1, 'created', 'App\\project', 35, '[]', '{\"name\":\"220kV Chishtian & Vehari Grid Station\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2010-10-01\",\"contractual_completion\":\"2016-11-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":35}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(225, 'App\\User', 1, 'created', 'App\\project', 36, '[]', '{\"name\":\"220KV Chashma & Ludewala Grid Station Extension Project (Part of T\\/L Contract)\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2008-07-01\",\"contractual_completion\":\"2011-04-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":36}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(226, 'App\\User', 1, 'created', 'App\\project', 37, '[]', '{\"name\":\"220kV Hala Road Hyderabad Grid Station Extension Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2008-09-01\",\"contractual_completion\":\"2009-10-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":37}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(227, 'App\\User', 1, 'created', 'App\\project', 38, '[]', '{\"name\":\"220kV Bahawalpur Grid Station Extension Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2008-09-01\",\"contractual_completion\":\"2009-10-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":38}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(228, 'App\\User', 1, 'created', 'App\\project', 39, '[]', '{\"name\":\"220kV Yousafwala Grid Station Extension Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2008-09-01\",\"contractual_completion\":\"2009-09-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":39}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(229, 'App\\User', 1, 'created', 'App\\project', 40, '[]', '{\"name\":\"220kV Ludewala Grid Station Extension Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2009-01-01\",\"contractual_completion\":\"2009-08-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":40}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(230, 'App\\User', 1, 'created', 'App\\project', 41, '[]', '{\"name\":\"220kV GIS Wapda Town Grid Station Extension Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2009-02-01\",\"contractual_completion\":\"2011-06-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":41}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(231, 'App\\User', 1, 'created', 'App\\project', 42, '[]', '{\"name\":\"220kV Bannu Grid Station Extension Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2009-10-01\",\"contractual_completion\":\"2012-03-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":42}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(232, 'App\\User', 1, 'created', 'App\\project', 43, '[]', '{\"name\":\"220kV AIS Grid Station At Kassowal \",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2010-06-01\",\"contractual_completion\":\"2014-06-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":43}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(233, 'App\\User', 1, 'created', 'App\\project', 44, '[]', '{\"name\":\"220kV\\/132kV GIS Shalamar Substation \",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2008-11-01\",\"contractual_completion\":\"2014-03-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":44}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(234, 'App\\User', 1, 'created', 'App\\project', 45, '[]', '{\"name\":\"220kV Rohri Grid Station And Shikarpur Grid Station Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2010-02-01\",\"contractual_completion\":\"2013-06-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":45}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(235, 'App\\User', 1, 'created', 'App\\project', 46, '[]', '{\"name\":\"132kV GIS Saggian Grid Station Project\",\"type\":\"Lumpsum\",\"client\":\"LESCO\",\"commencement\":\"2012-04-01\",\"contractual_completion\":\"2016-06-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":46}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(236, 'App\\User', 1, 'created', 'App\\project', 47, '[]', '{\"name\":\"132kV AIS Mominpura Gridstation Project\",\"type\":\"Lumpsum\",\"client\":\"LESCO\",\"commencement\":\"2012-07-01\",\"contractual_completion\":\"2014-12-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":47}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(237, 'App\\User', 1, 'created', 'App\\project', 48, '[]', '{\"name\":\"Three 132kV Grid Station Under 2nd Rural Electrification Project QESCO\",\"type\":\"Time Based\",\"client\":\"QESCO\",\"commencement\":\"2008-05-01\",\"contractual_completion\":\"2013-08-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":48}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(238, 'App\\User', 1, 'created', 'App\\project', 49, '[]', '{\"name\":\"132kV Dandot Grid Station  under 6th STG & ELR Project IESCO\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-12-01\",\"contractual_completion\":\"2012-10-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":49}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(239, 'App\\User', 1, 'created', 'App\\project', 50, '[]', '{\"name\":\"132kV Pinanwal Grid Station  under 6th STG & ELR Project IESCO\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-01-03\",\"contractual_completion\":\"2012-11-15\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":50}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(240, 'App\\User', 1, 'created', 'App\\project', 51, '[]', '{\"name\":\"132kV Ahmadal Grid Station  under 6th STG & ELR Project IESCO\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-12-29\",\"contractual_completion\":\"2012-10-30\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":51}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(241, 'App\\User', 1, 'created', 'App\\project', 52, '[]', '{\"name\":\"132kV Pinidi Gheb Grid Station  under 6th STG & ELR Project IESCO\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-12-29\",\"contractual_completion\":\"2012-10-30\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":52}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(242, 'App\\User', 1, 'created', 'App\\project', 53, '[]', '{\"name\":\"132kV Hajeera Grid Station  under 6th STG & ELR Project IESCO\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-12-03\",\"contractual_completion\":\"2012-10-30\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":53}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(243, 'App\\User', 1, 'created', 'App\\project', 54, '[]', '{\"name\":\"132kV Palandari Grid Station  under 6th STG & ELR Project IESCO\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-12-03\",\"contractual_completion\":\"2012-10-30\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":54}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(244, 'App\\User', 1, 'created', 'App\\project', 55, '[]', '{\"name\":\"132kV Minhasa Grid Station  under 6th STG & ELR Project IESCO\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-12-29\",\"contractual_completion\":\"2012-10-30\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":55}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(245, 'App\\User', 1, 'created', 'App\\project', 56, '[]', '{\"name\":\"132kV Fateh Jang Grid Station  under 6th STG & ELR Project IESCO\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-12-29\",\"contractual_completion\":\"2012-10-30\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":56}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(246, 'App\\User', 1, 'created', 'App\\project', 57, '[]', '{\"name\":\"132kV Azad Pattan Grid Station  under 6th STG & ELR Project IESCO\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-12-29\",\"contractual_completion\":\"2012-10-30\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":57}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(247, 'App\\User', 1, 'created', 'App\\project', 58, '[]', '{\"name\":\"132kV Choa Saiden Shah Grid Station  under 6th STG & ELR Project IESCO\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-12-29\",\"contractual_completion\":\"2012-10-30\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":58}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(248, 'App\\User', 1, 'created', 'App\\project', 59, '[]', '{\"name\":\"132kV Tararkhal Grid Station  under 6th STG & ELR Project IESCO\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-12-29\",\"contractual_completion\":\"2012-10-30\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":59}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(249, 'App\\User', 1, 'created', 'App\\project', 60, '[]', '{\"name\":\"132kV Pirwadhai Grid Station  under 6th STG & ELR Project IESCO\",\"type\":\"Lumpsum\",\"client\":\"IESCO\",\"commencement\":\"2011-12-29\",\"contractual_completion\":\"2012-10-30\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":60}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(250, 'App\\User', 1, 'created', 'App\\project', 61, '[]', '{\"name\":\"220Kv Loralai Grid Station Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2011-03-01\",\"contractual_completion\":\"2013-11-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":61}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(251, 'App\\User', 1, 'created', 'App\\project', 62, '[]', '{\"name\":\"220kV Dadu-Khuzadar TL System\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2006-12-01\",\"contractual_completion\":\"2015-06-01\",\"status\":\"Completed\",\"role\":\"JV Partner\",\"share\":\"35% NESPAK Lead Firm\",\"id\":62}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(252, 'App\\User', 1, 'created', 'App\\project', 63, '[]', '{\"name\":\"220kV Dadu-Khuzadar TL System\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2006-12-01\",\"contractual_completion\":\"2015-06-01\",\"status\":\"Completed\",\"role\":\"JV Partner\",\"share\":\"35% NESPAK Lead Firm\",\"id\":63}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(253, 'App\\User', 1, 'created', 'App\\project', 64, '[]', '{\"name\":\"132kV Bahwal Industrial Estate Grid Station Project\",\"type\":\"Lumpsum\",\"client\":\"PIE\",\"commencement\":\"2016-03-01\",\"contractual_completion\":\"2018-06-01\",\"status\":\"In Progress\",\"role\":\"Independent\",\"share\":100,\"id\":64}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(254, 'App\\User', 1, 'created', 'App\\project', 65, '[]', '{\"name\":\"132kV Rahim Yar Khan Industrial Estate Grid Station Project\",\"type\":\"Lumpsum\",\"client\":\"PIE\",\"commencement\":\"2016-03-01\",\"contractual_completion\":\"2018-06-01\",\"status\":\"In Progress\",\"role\":\"Independent\",\"share\":100,\"id\":65}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(255, 'App\\User', 1, 'created', 'App\\project', 66, '[]', '{\"name\":\"132kV Sundar Industrial Estate Grid Station Extension Project\",\"type\":\"Lumpsum\",\"client\":\"PIE\",\"commencement\":\"2016-03-01\",\"contractual_completion\":\"2017-06-01\",\"status\":\"In Progress\",\"role\":\"Independent\",\"share\":100,\"id\":66}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(256, 'App\\User', 1, 'created', 'App\\project', 67, '[]', '{\"name\":\"500kV Faisalabad West Grid Station and Transmission Line Project - Phase-I\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2016-03-17\",\"contractual_completion\":\"2017-10-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":67}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(257, 'App\\User', 1, 'created', 'App\\project', 68, '[]', '{\"name\":\"500kV Faisalabad West Grid Station and Transmission Line Project - Phase-II\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2016-03-17\",\"contractual_completion\":\"2017-10-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":68}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(258, 'App\\User', 1, 'created', 'App\\project', 69, '[]', '{\"name\":\"500KV Transmission Line for Dispersal of Power from Haveli Bahadur Shah Power Plant\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2016-07-18\",\"contractual_completion\":\"2018-03-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":69}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(259, 'App\\User', 1, 'created', 'App\\project', 70, '[]', '{\"name\":\"220kV Transmission Lines Included in Tranche-IV of Power Transmission Enhancement Investment Program\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2017-03-10\",\"contractual_completion\":\"2019-08-01\",\"status\":\"In Progress\",\"role\":\"Independent\",\"share\":100,\"id\":70}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(260, 'App\\User', 1, 'created', 'App\\project', 71, '[]', '{\"name\":\"220kV Grid StationsIncluded in Tranche-IV of Power Transmission Enhancement Investment Program\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2017-03-10\",\"contractual_completion\":\"2019-06-01\",\"status\":\"In Progress\",\"role\":\"Independent\",\"share\":100,\"id\":71}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(261, 'App\\User', 1, 'created', 'App\\project', 72, '[]', '{\"name\":\"220kv Transmission Lines and 220kV Toba Tek Singh Grid Station Extension Works for the Evacuation of Power from 1230MW RLNG Based Power Plant at Trimmu\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2017-09-01\",\"contractual_completion\":\"2018-08-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":72}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(262, 'App\\User', 1, 'created', 'App\\project', 73, '[]', '{\"name\":\"\\u00b1660kV 4000MW Bipole HVdc Matiari-Lahore Transmission Project \",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2018-03-06\",\"contractual_completion\":\"2020-03-01\",\"status\":\"In Progress\",\"role\":\"JV Partner\",\"share\":\"JV with Hatch and ACE\",\"id\":73}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(263, 'App\\User', 1, 'created', 'App\\project', 74, '[]', '{\"name\":\"MEPCO 132kV Grid Stations Project\",\"type\":\"Lumpsum\",\"client\":\"MEPCO\",\"commencement\":\"2017-12-01\",\"contractual_completion\":\"2019-11-01\",\"status\":\"In Progress\",\"role\":\"Independent\",\"share\":100,\"id\":74}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(264, 'App\\User', 1, 'created', 'App\\project', 75, '[]', '{\"name\":\"MEPCO 132kV Transmission Lines Project\",\"type\":\"Lumpsum\",\"client\":\"MEPCO\",\"commencement\":\"2017-12-01\",\"contractual_completion\":\"2019-11-01\",\"status\":\"In Progress\",\"role\":\"Independent\",\"share\":100,\"id\":75}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(265, 'App\\User', 1, 'created', 'App\\project', 76, '[]', '{\"name\":\"FESCO 132kV T\\/L Survey Project\",\"type\":\"Lumpsum\",\"client\":\"FESCO\",\"commencement\":\"2018-02-01\",\"contractual_completion\":\"2018-05-01\",\"status\":\"Completed\",\"role\":\"Independent\",\"share\":100,\"id\":76}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(266, 'App\\User', 1, 'created', 'App\\project', 77, '[]', '{\"name\":\"132kV GIS (MOC) DHA Lahore Grid Station & T\\/L\",\"type\":\"Lumpsum\",\"client\":\"DHA\",\"commencement\":\"2018-05-01\",\"contractual_completion\":\"2019-09-01\",\"status\":\"In Progress\",\"role\":\"Independent\",\"share\":100,\"id\":77}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(267, 'App\\User', 1, 'created', 'App\\project', 78, '[]', '{\"name\":\"500kV Quad Bundle D\\/C Transmission Line from HUBCO Power Plant to Jamshoro Grid Station\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2018-08-01\",\"contractual_completion\":\"2019-09-01\",\"status\":\"In Progress\",\"role\":\"JV Partner\",\"share\":0.35,\"id\":78}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(268, 'App\\User', 1, 'created', 'App\\project', 79, '[]', '{\"name\":\"132kV DHA-1 Grid Station Extension and 132kV Creek City Grid Stations Extension Project, DHA Karachi\",\"type\":\"Time Based\",\"client\":\"DHA, Karachi\",\"commencement\":\"2018-10-01\",\"contractual_completion\":\"2019-05-01\",\"status\":\"In Progress\",\"role\":\"Lead Partner\",\"share\":0.4,\"id\":79}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(269, 'App\\User', 1, 'created', 'App\\project', 80, '[]', '{\"name\":\"500KV Gatti Grid Station Extension Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2019-01-14\",\"contractual_completion\":\"2019-07-13\",\"status\":\"In Progress\",\"role\":\"Independent\",\"share\":100,\"id\":80}', 'http://localhost/hrms/public/import_excel/import', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 22:37:22', '2019-08-26 22:37:22'),
(270, 'App\\User', 1, 'deleted', 'App\\project', 80, '{\"id\":80,\"name\":\"500KV Gatti Grid Station Extension Project\",\"type\":\"Time Based\",\"client\":\"NTDC\",\"commencement\":\"2019-01-14\",\"contractual_completion\":\"2019-07-13\",\"actual_completion\":null,\"status\":\"In Progress\",\"role\":\"Independent\",\"share\":\"100\"}', '[]', 'http://localhost/hrms/public/deleteProject/80', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-26 23:46:41', '2019-08-26 23:46:41'),
(271, 'App\\User', 1, 'created', 'App\\employee', 10, '[]', '{\"first_name\":\"Fakhar-e-Alam\",\"middle_name\":null,\"last_name\":\"Bhatti\",\"father_name\":\"Ahmad Khan Bhatti\",\"date_of_birth\":\"1972-03-15\",\"gender\":\"Male\",\"cnic\":\"3520115851169\",\"cnic_expiry\":\"2022-08-06\",\"employee_no\":null,\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":10}', 'http://localhost/hrms/public/storeEmployee', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 01:47:20', '2019-08-27 01:47:20'),
(272, 'App\\User', 1, 'created', 'App\\nationality', 10, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":10,\"id\":10}', 'http://localhost/hrms/public/storeEmployee', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 01:47:20', '2019-08-27 01:47:20'),
(273, 'App\\User', 1, 'created', 'App\\document', 62, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1566889834-10-CNIC Front.jpg\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"image\\/jpeg\",\"id\":62}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 02:10:35', '2019-08-27 02:10:35'),
(274, 'App\\User', 1, 'created', 'App\\document', 63, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1566889845-10-CNIC Back.jpg\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"image\\/jpeg\",\"id\":63}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 02:10:45', '2019-08-27 02:10:45'),
(275, 'App\\User', 1, 'created', 'App\\document', 64, '[]', '{\"document_name\":\"Appointment Letter\",\"file_name\":\"1566889868-10-Appointment Letter.pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"application\\/pdf\",\"id\":64}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 02:11:08', '2019-08-27 02:11:08'),
(276, 'App\\User', 1, 'created', 'App\\document', 65, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1566889886-10-HR Form.pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"application\\/pdf\",\"id\":65}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 02:11:26', '2019-08-27 02:11:26'),
(277, 'App\\User', 1, 'updated', 'App\\document', 64, '{\"reference_no\":null,\"date\":null}', '{\"reference_no\":\"BQB\\/W\\/01\\/600\\/MA\\/481\",\"date\":\"2014-07-16\"}', 'http://localhost/hrms/public/editDocument/64', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 02:15:40', '2019-08-27 02:15:40'),
(278, 'App\\User', 1, 'created', 'App\\document', 66, '[]', '{\"document_name\":\"B.Sc Electrical Engineering Degree\",\"file_name\":\"1566890192-10-B.Sc Electrical Engineering Degree.pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"application\\/pdf\",\"id\":66}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 02:16:33', '2019-08-27 02:16:33'),
(279, 'App\\User', 1, 'created', 'App\\document', 67, '[]', '{\"document_name\":\"Joining Report\",\"file_name\":\"1566890219-10-Joining Report.pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"application\\/pdf\",\"id\":67}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 02:17:00', '2019-08-27 02:17:00'),
(280, 'App\\User', 1, 'created', 'App\\document', 68, '[]', '{\"document_name\":\"M.Sc Computer Science Degree\",\"file_name\":\"1566890262-10-M.Sc Computer Science Degree.pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"application\\/pdf\",\"id\":68}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 02:17:42', '2019-08-27 02:17:42'),
(281, 'App\\User', 1, 'created', 'App\\document', 69, '[]', '{\"document_name\":\"Office Order for Cat-A after Completion of Probation Period\",\"date\":\"2015-03-09\",\"file_name\":\"1566890381-10-Office Order for Cat-A after Completion of Probation Period.pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"application\\/pdf\",\"id\":69}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 02:19:42', '2019-08-27 02:19:42'),
(282, 'App\\User', 1, 'created', 'App\\document', 70, '[]', '{\"document_name\":\"Office Order for Principal Engineer (IT)\",\"date\":\"2015-09-18\",\"file_name\":\"1566890533-10-Office Order for Principal Engineer (IT).pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"application\\/pdf\",\"id\":70}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 02:22:13', '2019-08-27 02:22:13'),
(283, 'App\\User', 1, 'created', 'App\\document', 71, '[]', '{\"document_name\":\"Office Order to Transfer Dadocha Dam Project\",\"date\":\"2015-04-01\",\"file_name\":\"1566890638-10-Office Order to Transfer Dadocha Dam Project.pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"application\\/pdf\",\"id\":71}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 02:23:58', '2019-08-27 02:23:58'),
(284, 'App\\User', 1, 'updated', 'App\\document', 71, '{\"document_name\":\"Office Order to Transfer Dadocha Dam Project\"}', '{\"document_name\":\"Office Order for Trasnfer Dadhocha HPP Project\"}', 'http://localhost/hrms/public/editDocument/71', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 02:25:13', '2019-08-27 02:25:13'),
(285, 'App\\User', 1, 'created', 'App\\document', 72, '[]', '{\"document_name\":\"CV\",\"file_name\":\"1566890787-10-CV.pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"application\\/pdf\",\"id\":72}', 'http://localhost/hrms/public/storeDocument', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 02:26:28', '2019-08-27 02:26:28'),
(286, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"1HSFN6Kp9XA07OOsUB2L0Qh1HjJ5uf20sCoAQPrv4PvR6N0BqsjtsQYqBY7T\"}', '{\"remember_token\":\"F0YjQcR7Hx1SyTrPpkRBp9PolbZCxhMVk8lhsXTnQvmVrHPKsH7Ofdt4qcRp\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:05:33', '2019-08-27 03:05:33'),
(287, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"Fh6BdPnQmo7IKvMHfRilp2bUIEAYtokyPQ67qnPC\"}', '{\"session_id\":\"O7qMU4HrfDQnTo36h9toz0AGrT4abQCKrkyoNtCX\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:33:43', '2019-08-27 03:33:43'),
(288, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"F0YjQcR7Hx1SyTrPpkRBp9PolbZCxhMVk8lhsXTnQvmVrHPKsH7Ofdt4qcRp\"}', '{\"remember_token\":\"NkdGm79XmqIydlzC5kci1j9GJYeelFwEvfzgzE5jrOqItbWplLmRR4GLoHCy\"}', 'http://192.168.1.10/hrms/public/logout', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:33:53', '2019-08-27 03:33:53'),
(289, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"O7qMU4HrfDQnTo36h9toz0AGrT4abQCKrkyoNtCX\"}', '{\"session_id\":\"w4ibC2GXgILEZUXubi2koy9dOdDRc6I4VNTPJA25\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:40:06', '2019-08-27 03:40:06'),
(290, 'App\\User', 1, 'updated', 'App\\picture', 3, '{\"name\":\"4.png\"}', '{\"name\":\"4Ahmad  Bhatti.png\"}', 'http://localhost/hrms/public/editPicture/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:41:19', '2019-08-27 03:41:19'),
(291, 'App\\User', 1, 'updated', 'App\\picture', 3, '{\"name\":\"4Ahmad  Bhatti.png\"}', '{\"name\":\"4-Ahmad  Bhatti.png\"}', 'http://localhost/hrms/public/editPicture/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:42:25', '2019-08-27 03:42:25'),
(292, 'App\\User', 1, 'updated', 'App\\picture', 3, '{\"name\":\"4-Ahmad  Bhatti.png\"}', '{\"name\":\"4-Ahmad Khan Bhatti.png\"}', 'http://localhost/hrms/public/editPicture/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:43:20', '2019-08-27 03:43:20'),
(293, 'App\\User', 1, 'updated', 'App\\picture', 1, '{\"name\":\"2.png\"}', '{\"name\":\"2-Athar Hussain Jaffry.png\"}', 'http://localhost/hrms/public/editPicture/2', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:43:44', '2019-08-27 03:43:44'),
(294, 'App\\User', 1, 'updated', 'App\\picture', 4, '{\"name\":\"6.png\"}', '{\"name\":\"6-Muhammad  Zafar.png\"}', 'http://localhost/hrms/public/editPicture/6', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:45:45', '2019-08-27 03:45:45'),
(295, 'App\\User', 1, 'updated', 'App\\picture', 5, '{\"name\":\"7.png\"}', '{\"name\":\"7-Mumtaz  Akhtar.png\"}', 'http://localhost/hrms/public/editPicture/7', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:46:02', '2019-08-27 03:46:02'),
(296, 'App\\User', 1, 'updated', 'App\\picture', 7, '{\"name\":\"9.png\"}', '{\"name\":\"9-Rana Haider Faruq.png\"}', 'http://localhost/hrms/public/editPicture/9', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:46:19', '2019-08-27 03:46:19'),
(297, 'App\\User', 1, 'updated', 'App\\picture', 6, '{\"name\":\"8.png\"}', '{\"name\":\"8-Naveed Akhtar Nawaz.png\"}', 'http://localhost/hrms/public/editPicture/8', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:46:39', '2019-08-27 03:46:39'),
(298, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"NkdGm79XmqIydlzC5kci1j9GJYeelFwEvfzgzE5jrOqItbWplLmRR4GLoHCy\"}', '{\"remember_token\":\"rdbSM4obfvwKG3RseZ1aCwNtXzG5Pv6zHGBsqWCq7AIRpThIS4XFDdmUGX8U\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:48:57', '2019-08-27 03:48:57'),
(299, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"JcTspa9mXNPRJODaGZJKaxpkxciMxD1X1nhmcqeK\"}', '{\"session_id\":\"2zvbOMC0nOLTA8i5OyO5d8Bnr9icF56FDogbXRDY\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:49:04', '2019-08-27 03:49:04'),
(300, 'App\\User', 2, 'created', 'App\\employee', 11, '[]', '{\"first_name\":\"Muhammad\",\"middle_name\":null,\"last_name\":\"Rasheed\",\"father_name\":\"Ali Muhammad\",\"date_of_birth\":\"1978-12-28\",\"gender\":\"Male\",\"cnic\":\"3520152369885\",\"cnic_expiry\":\"2027-09-22\",\"employee_no\":null,\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":11}', 'http://localhost/hrms/public/storeEmployee', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:52:14', '2019-08-27 03:52:14'),
(301, 'App\\User', 2, 'created', 'App\\nationality', 11, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":11,\"id\":11}', 'http://localhost/hrms/public/storeEmployee', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:52:14', '2019-08-27 03:52:14'),
(302, 'App\\User', 2, 'created', 'App\\User', 5, '[]', '{\"email\":\"muhammadrasheed2009@gmaiil.com\",\"employee_id\":\"11\",\"id\":5}', 'http://localhost/hrms/public/editUser/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:52:27', '2019-08-27 03:52:27'),
(303, 'App\\User', 2, 'created', 'App\\picture', 8, '[]', '{\"name\":\"11-Muhammad  Rasheed.png\",\"employee_id\":11,\"type\":\"image\\/png\",\"size\":90546,\"width\":\"100\",\"height\":\"100\",\"id\":8}', 'http://localhost/hrms/public/editPicture/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:53:28', '2019-08-27 03:53:28'),
(304, 'App\\User', 2, 'created', 'App\\contact', 3, '[]', '{\"employee_id\":\"11\",\"type\":\"0\",\"house\":\"H. No.3,\",\"street\":\"Street No.3, Mohallah Farooqabad\",\"town\":\"Kacha Road, Kana Kno\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country\":\"Pakistan\",\"mobile\":\"0300-4491881\",\"landline\":null,\"id\":3}', 'http://localhost/hrms/public/editPermanentAddress/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 03:54:54', '2019-08-27 03:54:54'),
(305, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":null}', '{\"remember_token\":\"O28SEUAMHnU18XVPE9iPVaY3wvo6jNdWZUv4giw3HYEVoE5kzYbWR3ugmQ3K\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:10:58', '2019-08-27 04:10:58'),
(306, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"2zvbOMC0nOLTA8i5OyO5d8Bnr9icF56FDogbXRDY\"}', '{\"session_id\":\"bC2vDCmPRekbArLW5KUGKb9LQSWOOO9W8fSXW2xX\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:10:58', '2019-08-27 04:10:58'),
(307, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"bC2vDCmPRekbArLW5KUGKb9LQSWOOO9W8fSXW2xX\"}', '{\"session_id\":\"GYqld6u272I5lsoBjGPH5ZCfVcYKWReZ6BisYVQB\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:12:01', '2019-08-27 04:12:01'),
(308, 'App\\User', 2, 'created', 'App\\employee', 12, '[]', '{\"first_name\":\"Taseef\",\"middle_name\":null,\"last_name\":\"Ahmad\",\"father_name\":\"Sanaullah\",\"date_of_birth\":\"1988-07-17\",\"gender\":\"Male\",\"cnic\":\"3430132997573\",\"cnic_expiry\":\"2018-11-30\",\"employee_no\":null,\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":12}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:16:31', '2019-08-27 04:16:31'),
(309, 'App\\User', 2, 'created', 'App\\nationality', 12, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":12,\"id\":12}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:16:31', '2019-08-27 04:16:31'),
(310, 'App\\User', 2, 'created', 'App\\picture', 9, '[]', '{\"name\":\"12-Taseef  Ahmad.png\",\"employee_id\":12,\"type\":\"image\\/png\",\"size\":81855,\"width\":\"100\",\"height\":\"100\",\"id\":9}', 'http://192.168.1.10/hrms/public/editPicture/12', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:17:24', '2019-08-27 04:17:24');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(311, 'App\\User', 2, 'created', 'App\\appointment', 6, '[]', '{\"employee_id\":\"12\",\"reference_no\":\"BQB\\/P-36-A-I\\/542\",\"appointment_date\":\"2013-10-14\",\"designation\":\"Driver\",\"expiry_date\":null,\"category\":\"B\",\"grade\":\"12\",\"appointment_letter_type\":\"1 Page\",\"id\":6}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/12', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:18:48', '2019-08-27 04:18:48'),
(312, 'App\\User', 2, 'created', 'App\\salary', 8, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"22725\",\"employee_id\":\"12\",\"salary_remarks\":null,\"id\":8}', 'http://192.168.1.10/hrms/public/editSalary/12', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:19:03', '2019-08-27 04:19:03'),
(313, 'App\\User', 2, 'created', 'App\\posting', 6, '[]', '{\"position\":\"Driver\",\"posting_date\":\"2013-10-14\",\"manager_id\":\"4\",\"joining_date\":\"2013-10-14\",\"project\":\"Overhead of the Company\",\"location\":\"Lahore\",\"employee_id\":\"12\",\"id\":6}', 'http://192.168.1.10/hrms/public/storePosting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:21:08', '2019-08-27 04:21:08'),
(314, 'App\\User', 2, 'deleted', 'App\\posting', 6, '{\"id\":6,\"employee_id\":12,\"position\":\"Driver\",\"posting_date\":\"2013-10-14\",\"project\":\"Overhead of the Company\",\"joining_date\":\"2013-10-14\",\"location\":\"Lahore\",\"manager_id\":4}', '[]', 'http://192.168.1.10/hrms/public/deletePosting/6', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:21:22', '2019-08-27 04:21:22'),
(315, 'App\\User', 2, 'created', 'App\\posting', 7, '[]', '{\"position\":\"Driver\",\"posting_date\":\"2013-10-14\",\"manager_id\":\"4\",\"joining_date\":\"2013-10-14\",\"project\":\"Overhead of the Company\",\"location\":\"Lahore\",\"employee_id\":\"12\",\"id\":7}', 'http://192.168.1.10/hrms/public/storePosting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:22:30', '2019-08-27 04:22:30'),
(316, 'App\\User', 2, 'created', 'App\\contact', 4, '[]', '{\"employee_id\":\"12\",\"type\":\"0\",\"house\":\"Mohallah Hussain Nagar\",\"street\":null,\"town\":\"Near 132kV Grid Station Gujranwala Road,\",\"tehsil\":null,\"city\":\"Hafizabad\",\"province\":\"Punjab\",\"country\":\"Pakistan\",\"mobile\":\"0341-4689638\",\"landline\":null,\"id\":4}', 'http://192.168.1.10/hrms/public/editPermanentAddress/12', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:25:43', '2019-08-27 04:25:43'),
(317, 'App\\User', 2, 'created', 'App\\emergency_contact', 1, '[]', '{\"name\":\"Sanaullah\",\"relation\":\"Father\",\"mobile\":\"0341-0078278\",\"landline\":\"000000\",\"employee_id\":\"12\",\"id\":1}', 'http://192.168.1.10/hrms/public/storeEmergency', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:27:16', '2019-08-27 04:27:16'),
(318, 'App\\User', 2, 'deleted', 'App\\document', 64, '{\"id\":64,\"employee_id\":10,\"document_name\":\"Appointment Letter\",\"file_name\":\"1566889868-10-Appointment Letter.pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"type\":\"application\\/pdf\",\"reference_no\":\"BQB\\/W\\/01\\/600\\/MA\\/481\",\"date\":\"2014-07-16\"}', '[]', 'http://192.168.1.10/hrms/public/deleteDocument/64', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:29:07', '2019-08-27 04:29:07'),
(319, 'App\\User', 2, 'deleted', 'App\\document', 63, '{\"id\":63,\"employee_id\":10,\"document_name\":\"CNIC Back\",\"file_name\":\"1566889845-10-CNIC Back.jpg\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"type\":\"image\\/jpeg\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/deleteDocument/63', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:29:17', '2019-08-27 04:29:17'),
(320, 'App\\User', 2, 'deleted', 'App\\document', 62, '{\"id\":62,\"employee_id\":10,\"document_name\":\"CNIC Front\",\"file_name\":\"1566889834-10-CNIC Front.jpg\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"type\":\"image\\/jpeg\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/deleteDocument/62', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:29:24', '2019-08-27 04:29:24'),
(321, 'App\\User', 2, 'created', 'App\\document', 73, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1566898189-10-CNIC Front.jpg\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"image\\/jpeg\",\"id\":73}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:29:49', '2019-08-27 04:29:49'),
(322, 'App\\User', 2, 'created', 'App\\document', 74, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1566898210-10-CNIC Back.jpg\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"image\\/jpeg\",\"id\":74}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:30:10', '2019-08-27 04:30:10'),
(323, 'App\\User', 2, 'created', 'App\\document', 75, '[]', '{\"document_name\":\"Appointment Letter\",\"date\":\"2014-07-16\",\"file_name\":\"1566898274-10-Appointment Letter.pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"application\\/pdf\",\"id\":75}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:31:14', '2019-08-27 04:31:14'),
(324, 'App\\User', 2, 'deleted', 'App\\document', 70, '{\"id\":70,\"employee_id\":10,\"document_name\":\"Office Order for Principal Engineer (IT)\",\"file_name\":\"1566890533-10-Office Order for Principal Engineer (IT).pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"type\":\"application\\/pdf\",\"reference_no\":null,\"date\":\"2015-09-18\"}', '[]', 'http://192.168.1.10/hrms/public/deleteDocument/70', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:31:52', '2019-08-27 04:31:52'),
(325, 'App\\User', 2, 'created', 'App\\document', 76, '[]', '{\"document_name\":\"Office Order for Principal Engineer (IT)\",\"date\":\"2015-09-15\",\"file_name\":\"1566898387-10-Office Order for Principal Engineer (IT).pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"application\\/pdf\",\"id\":76}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:33:07', '2019-08-27 04:33:07'),
(326, 'App\\User', 2, 'created', 'App\\picture', 10, '[]', '{\"name\":\"10-Fakhar-e-Alam  Bhatti.png\",\"employee_id\":10,\"type\":\"image\\/png\",\"size\":71893,\"width\":\"100\",\"height\":\"100\",\"id\":10}', 'http://192.168.1.10/hrms/public/editPicture/10', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 04:34:33', '2019-08-27 04:34:33'),
(327, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"GYqld6u272I5lsoBjGPH5ZCfVcYKWReZ6BisYVQB\"}', '{\"session_id\":\"urQ2xBmorr7itujKOi8dvaYEMIBClsiGPK1pZuho\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 05:31:18', '2019-08-27 05:31:18'),
(328, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"w4ibC2GXgILEZUXubi2koy9dOdDRc6I4VNTPJA25\"}', '{\"session_id\":\"nM9RNbCauX1PdwJXcidDVDzcoCzyLN4SSfcZMklx\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 05:45:57', '2019-08-27 05:45:57'),
(329, 'App\\User', 1, 'created', 'App\\employee', 13, '[]', '{\"first_name\":\"Muhammad\",\"middle_name\":null,\"last_name\":\"Taufeeq\",\"father_name\":\"Abdul Majeed\",\"date_of_birth\":\"1982-02-19\",\"gender\":\"Male\",\"cnic\":\"1330204703371\",\"cnic_expiry\":\"2027-03-01\",\"employee_no\":null,\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":13}', 'http://localhost/hrms/public/storeEmployee', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 05:54:08', '2019-08-27 05:54:08'),
(330, 'App\\User', 1, 'created', 'App\\nationality', 13, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":13,\"id\":13}', 'http://localhost/hrms/public/storeEmployee', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 05:54:08', '2019-08-27 05:54:08'),
(331, 'App\\User', 1, 'created', 'App\\picture', 11, '[]', '{\"name\":\"13-Muhammad  Taufeeq.png\",\"employee_id\":13,\"type\":\"image\\/png\",\"size\":60359,\"width\":\"100\",\"height\":\"100\",\"id\":11}', 'http://localhost/hrms/public/editPicture/13', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 05:54:45', '2019-08-27 05:54:45'),
(332, 'App\\User', 1, 'created', 'App\\User', 6, '[]', '{\"email\":\"taufeeq240808@gmail.com\",\"role_id\":\"4\",\"employee_id\":\"13\",\"id\":6}', 'http://localhost/hrms/public/editUser/13', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 05:55:35', '2019-08-27 05:55:35'),
(333, 'App\\User', 6, 'updated', 'App\\User', 6, '{\"remember_token\":null}', '{\"remember_token\":\"WopX7hp47oyeJuRHqAO15wAD72w3I7WKfN7bcjHWpwVFFyWmGC7mbmFbGa37\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:02:41', '2019-08-27 06:02:41'),
(334, 'App\\User', 6, 'updated', 'App\\User', 6, '{\"session_id\":null}', '{\"session_id\":\"or07Flm6nD1i3t7Zn4Yn07gnnwU2J1VoBrNPgV9z\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:02:41', '2019-08-27 06:02:41'),
(335, 'App\\User', 6, 'updated', 'App\\employee', 13, '{\"marital_status\":\"Married\"}', '{\"marital_status\":\"2\"}', 'http://192.168.1.10/hrms/public/editEmployee/13', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:09:34', '2019-08-27 06:09:34'),
(336, 'App\\User', 6, 'created', 'App\\appointment', 7, '[]', '{\"employee_id\":\"13\",\"reference_no\":\"BQB\\/MA\\/2007\\/30\",\"appointment_date\":\"2007-01-01\",\"designation\":\"AutoCAD Operator\",\"expiry_date\":null,\"category\":\"B\",\"grade\":\"12\",\"appointment_letter_type\":\"1 Page\",\"id\":7}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/13', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:16:06', '2019-08-27 06:16:06'),
(337, 'App\\User', 6, 'created', 'App\\posting', 8, '[]', '{\"position\":\"AutoCAD Operator\",\"posting_date\":\"2007-01-01\",\"manager_id\":\"7\",\"joining_date\":\"2007-01-01\",\"project\":\"Overhead of the Company\",\"location\":\"LAHORE\",\"employee_id\":\"13\",\"id\":8}', 'http://192.168.1.10/hrms/public/storePosting', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:17:56', '2019-08-27 06:17:56'),
(338, 'App\\User', 6, 'updated', 'App\\appointment', 7, '{\"reference_no\":\"BQB\\/MA\\/2007\\/30\",\"appointment_date\":\"2007-01-01\"}', '{\"reference_no\":\"BQB\\/W\\/01\\/542\\/MA\\/\\/089\",\"appointment_date\":\"2007-01-26\"}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/13', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:20:43', '2019-08-27 06:20:43'),
(339, 'App\\User', 6, 'created', 'App\\education', 12, '[]', '{\"degree_name\":\"Bachelor of Arts (BA)\",\"institute\":\"University of Punjab, Lahore\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"14\",\"employee_id\":\"13\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2015\",\"grade\":\"A\",\"country\":\"Pakistan\",\"id\":12}', 'http://192.168.1.10/hrms/public/storeEducation', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:25:17', '2019-08-27 06:25:17'),
(340, 'App\\User', 6, 'created', 'App\\training', 4, '[]', '{\"title\":\"AutoCAD Course\",\"venue\":null,\"institute\":null,\"country\":\"Pakistan\",\"from\":null,\"to\":null,\"description\":\"AutoCAD course for making drawing\",\"employee_id\":\"13\",\"id\":4}', 'http://192.168.1.10/hrms/public/storeTraining', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:27:41', '2019-08-27 06:27:41'),
(341, 'App\\User', 6, 'created', 'App\\training', 5, '[]', '{\"title\":\"Health & Safety Officer\",\"venue\":null,\"institute\":null,\"country\":\"Pakistan\",\"from\":null,\"to\":null,\"description\":\"Health &amp; Safety Officer Course\",\"employee_id\":\"13\",\"id\":5}', 'http://192.168.1.10/hrms/public/storeTraining', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:28:28', '2019-08-27 06:28:28'),
(342, 'App\\User', 6, 'created', 'App\\training', 6, '[]', '{\"title\":\"IOSH\",\"venue\":null,\"institute\":null,\"country\":\"Canada\",\"from\":null,\"to\":null,\"description\":\"IOSH Managing Safely Course\",\"employee_id\":\"13\",\"id\":6}', 'http://192.168.1.10/hrms/public/storeTraining', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:30:38', '2019-08-27 06:30:38'),
(343, 'App\\User', 6, 'created', 'App\\training', 7, '[]', '{\"title\":\"Computer Operator \\/ Office Assistant Course\",\"venue\":null,\"institute\":null,\"country\":\"Pakistan\",\"from\":null,\"to\":null,\"description\":\"Computer Operator \\/ Office Assistant Course from VTI Shadman\",\"employee_id\":\"13\",\"id\":7}', 'http://192.168.1.10/hrms/public/storeTraining', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:32:12', '2019-08-27 06:32:12'),
(344, 'App\\User', 6, 'created', 'App\\training', 8, '[]', '{\"title\":\"Web & Graphic Designing\",\"venue\":null,\"institute\":null,\"country\":\"Pakistan\",\"from\":null,\"to\":null,\"description\":\"Web &amp; Graphic Designing Course from Punjab University&nbsp;\",\"employee_id\":\"13\",\"id\":8}', 'http://192.168.1.10/hrms/public/storeTraining', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:33:32', '2019-08-27 06:33:32'),
(345, 'App\\User', 6, 'created', 'App\\training', 9, '[]', '{\"title\":\"Diploma in Computer Apps\",\"venue\":null,\"institute\":null,\"country\":\"Pakistan\",\"from\":null,\"to\":null,\"description\":\"Dipmloma in Computer Applications\",\"employee_id\":\"13\",\"id\":9}', 'http://192.168.1.10/hrms/public/storeTraining', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:34:27', '2019-08-27 06:34:27'),
(346, 'App\\User', 6, 'created', 'App\\language', 7, '[]', '{\"name\":\"English\",\"reading\":\"Excellent\",\"speaking\":\"Good\",\"writing\":\"Good\",\"employee_id\":\"13\",\"id\":7}', 'http://192.168.1.10/hrms/public/storeLanguage', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:37:28', '2019-08-27 06:37:28'),
(347, 'App\\User', 6, 'created', 'App\\language', 8, '[]', '{\"name\":\"Urdu\",\"reading\":\"Excellent\",\"speaking\":\"Excellent\",\"writing\":\"Excellent\",\"employee_id\":\"13\",\"id\":8}', 'http://192.168.1.10/hrms/public/storeLanguage', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:37:38', '2019-08-27 06:37:38'),
(348, 'App\\User', 6, 'created', 'App\\language', 9, '[]', '{\"name\":\"Arabic\",\"reading\":\"Good\",\"speaking\":\"Good\",\"writing\":\"Average\",\"employee_id\":\"13\",\"id\":9}', 'http://192.168.1.10/hrms/public/storeLanguage', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:38:31', '2019-08-27 06:38:31'),
(349, 'App\\User', 6, 'created', 'App\\experience', 2, '[]', '{\"employer\":\"BARQAAB Consulting Services (Pvt.) Limited\",\"position\":\"Computer Operator\",\"from\":\"2007-01-26\",\"to\":\"2010-03-31\",\"project\":null,\"client\":null,\"location\":null,\"country\":\"Pakistan\",\"main_features\":null,\"activities\":null,\"employee_id\":\"13\",\"id\":2}', 'http://192.168.1.10/hrms/public/storeExperience', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:44:39', '2019-08-27 06:44:39'),
(350, 'App\\User', 6, 'created', 'App\\experience', 3, '[]', '{\"employer\":\"BARQAAB Consulting Services (Pvt.) Limited\",\"position\":\"AutoCAD Operator\",\"from\":\"2010-04-01\",\"to\":\"2019-08-27\",\"project\":null,\"client\":null,\"location\":null,\"country\":\"Pakistan\",\"main_features\":null,\"activities\":null,\"employee_id\":\"13\",\"id\":3}', 'http://192.168.1.10/hrms/public/storeExperience', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:46:47', '2019-08-27 06:46:47'),
(351, 'App\\User', 6, 'created', 'App\\contact', 5, '[]', '{\"employee_id\":\"13\",\"type\":\"0\",\"house\":\"House No.10\",\"street\":\"Street 47 Ghaziabad Lahore Cantt\",\"town\":\"Lahore\",\"tehsil\":\"Lahore\",\"city\":\"Lahore\",\"province\":\"Punjab\",\"country\":\"Pakistan\",\"mobile\":\"0322-4764294\",\"landline\":null,\"id\":5}', 'http://192.168.1.10/hrms/public/editPermanentAddress/13', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:50:31', '2019-08-27 06:50:31'),
(352, 'App\\User', 6, 'created', 'App\\contact', 6, '[]', '{\"employee_id\":\"13\",\"type\":\"1\",\"house\":\"House No.10\",\"street\":\"Street 47 Ghaziabad Lahore Cantt\",\"town\":\"Lahore\",\"tehsil\":\"Lahore\",\"city\":\"Lahore\",\"province\":\"Punjab\",\"country\":\"Pakistan\",\"mobile\":\"3224764294\",\"landline\":null,\"id\":6}', 'http://192.168.1.10/hrms/public/editCurrentAddress/13', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:51:23', '2019-08-27 06:51:23'),
(353, 'App\\User', 6, 'created', 'App\\emergency_contact', 2, '[]', '{\"name\":\"Muhammad Shafiq\",\"relation\":\"Brother\",\"mobile\":\"0321-4764294\",\"landline\":null,\"employee_id\":\"13\",\"id\":2}', 'http://192.168.1.10/hrms/public/storeEmergency', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:53:09', '2019-08-27 06:53:09'),
(354, 'App\\User', 6, 'created', 'App\\dependent', 1, '[]', '{\"name\":\"Muhammad Shafiq\",\"date_of_birth\":null,\"relation\":\"Brother\",\"gender\":\"Male\",\"employee_id\":\"13\",\"id\":1}', 'http://192.168.1.10/hrms/public/storeDependent', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:54:18', '2019-08-27 06:54:18'),
(355, 'App\\User', 6, 'deleted', 'App\\dependent', 1, '{\"id\":1,\"employee_id\":13,\"name\":\"Muhammad Shafiq\",\"date_of_birth\":null,\"relation\":\"Brother\",\"gender\":\"Male\"}', '[]', 'http://192.168.1.10/hrms/public/deleteDependent/1', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 06:54:29', '2019-08-27 06:54:29'),
(356, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"urQ2xBmorr7itujKOi8dvaYEMIBClsiGPK1pZuho\"}', '{\"session_id\":\"vWTuWNRZMhZ2tBBRFpQwhISQV3Z8t3P0vM266Lxm\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', NULL, '2019-08-27 07:24:35', '2019-08-27 07:24:35'),
(357, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"O28SEUAMHnU18XVPE9iPVaY3wvo6jNdWZUv4giw3HYEVoE5kzYbWR3ugmQ3K\"}', '{\"remember_token\":\"Pw84Czr0TBar7RSEc7qbFKsohNmLiSWnBkyNmKDHz9PF9zfzSCCmeBwurl79\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', NULL, '2019-08-27 07:25:01', '2019-08-27 07:25:01'),
(358, 'App\\User', 1, 'updated', 'App\\employee', 1, '{\"cnic\":\"3520246897303\"}', '{\"cnic\":\"35202-4689730-3\"}', 'http://localhost/hrms/public/editEmployee/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:19:36', '2019-08-27 08:19:36'),
(359, 'App\\User', 1, 'updated', 'App\\employee', 4, '{\"cnic\":\"3520115779053\"}', '{\"cnic\":\"35201-1577905-3\"}', 'http://localhost/hrms/public/editEmployee/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:20:08', '2019-08-27 08:20:08'),
(360, 'App\\User', 1, 'updated', 'App\\employee', 2, '{\"cnic\":\"3540220135723\",\"marital_status\":\"Married\"}', '{\"cnic\":\"35402-2013572-3\",\"marital_status\":\"1\"}', 'http://localhost/hrms/public/editEmployee/2', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:20:28', '2019-08-27 08:20:28'),
(361, 'App\\User', 1, 'updated', 'App\\employee', 10, '{\"cnic\":\"3520115851169\",\"marital_status\":\"Married\"}', '{\"cnic\":\"35201-1585116-9\",\"marital_status\":\"1\"}', 'http://localhost/hrms/public/editEmployee/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:20:49', '2019-08-27 08:20:49'),
(362, 'App\\User', 1, 'updated', 'App\\employee', 11, '{\"cnic\":\"3520152369885\",\"marital_status\":\"Married\"}', '{\"cnic\":\"35201-5236988-5\",\"marital_status\":\"1\"}', 'http://localhost/hrms/public/editEmployee/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:21:05', '2019-08-27 08:21:05'),
(363, 'App\\User', 1, 'updated', 'App\\employee', 13, '{\"cnic\":\"1330204703371\"}', '{\"cnic\":\"13302-0470337-1\"}', 'http://localhost/hrms/public/editEmployee/13', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:21:33', '2019-08-27 08:21:33'),
(364, 'App\\User', 1, 'updated', 'App\\employee', 6, '{\"cnic\":\"3520114890507\",\"marital_status\":\"Married\"}', '{\"cnic\":\"35201-1489050-7\",\"marital_status\":\"1\"}', 'http://localhost/hrms/public/editEmployee/6', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:22:07', '2019-08-27 08:22:07'),
(365, 'App\\User', 1, 'updated', 'App\\employee', 3, '{\"cnic\":\"3520246335961\"}', '{\"cnic\":\"35202-4633596-1\"}', 'http://localhost/hrms/public/editEmployee/3', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:22:42', '2019-08-27 08:22:42'),
(366, 'App\\User', 1, 'updated', 'App\\employee', 7, '{\"cnic\":\"3520149307507\",\"marital_status\":\"Married\"}', '{\"cnic\":\"35201-4930750-7\",\"marital_status\":\"1\"}', 'http://localhost/hrms/public/editEmployee/7', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:25:15', '2019-08-27 08:25:15'),
(367, 'App\\User', 1, 'updated', 'App\\employee', 8, '{\"cnic\":\"3460108614411\",\"marital_status\":\"Married\"}', '{\"cnic\":\"34601-0861441-1\",\"marital_status\":\"1\"}', 'http://localhost/hrms/public/editEmployee/8', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:25:36', '2019-08-27 08:25:36'),
(368, 'App\\User', 1, 'updated', 'App\\employee', 9, '{\"cnic\":\"3320204421243\",\"marital_status\":\"Married\"}', '{\"cnic\":\"33202-0442124-3\",\"marital_status\":\"1\"}', 'http://localhost/hrms/public/editEmployee/9', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:27:18', '2019-08-27 08:27:18'),
(369, 'App\\User', 1, 'updated', 'App\\employee', 5, '{\"cnic\":\"3520287027003\",\"marital_status\":\"Married\"}', '{\"cnic\":\"35202-8702700-3\",\"marital_status\":\"1\"}', 'http://localhost/hrms/public/editEmployee/5', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:27:43', '2019-08-27 08:27:43'),
(370, 'App\\User', 1, 'updated', 'App\\employee', 12, '{\"cnic\":\"3430132997573\",\"marital_status\":\"Married\"}', '{\"cnic\":\"34301-3299757-3\",\"marital_status\":\"1\"}', 'http://localhost/hrms/public/editEmployee/12', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:28:01', '2019-08-27 08:28:01'),
(371, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"rdbSM4obfvwKG3RseZ1aCwNtXzG5Pv6zHGBsqWCq7AIRpThIS4XFDdmUGX8U\"}', '{\"remember_token\":\"DZVRy9U25A6jdz0FvHQgPo9gj3iKSdxSGOiNbeTl6DwmByxtUELTl7Im3NKg\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 08:29:04', '2019-08-27 08:29:04'),
(372, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"nM9RNbCauX1PdwJXcidDVDzcoCzyLN4SSfcZMklx\"}', '{\"session_id\":\"u0XVSxKdE3OxwkrCefcSXaCfSqA9hPc1fiHzjVzk\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 21:45:52', '2019-08-27 21:45:52'),
(373, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"DZVRy9U25A6jdz0FvHQgPo9gj3iKSdxSGOiNbeTl6DwmByxtUELTl7Im3NKg\"}', '{\"remember_token\":\"CE6wfgzdrOOY774E3uW2Hj68tMfMlZ97EI4FW9cAzolxITOADn1o0ssdalO0\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 21:48:56', '2019-08-27 21:48:56'),
(374, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"u0XVSxKdE3OxwkrCefcSXaCfSqA9hPc1fiHzjVzk\"}', '{\"session_id\":\"DurTlPSMfWd88IMiMUgzNtvnA5GnzsO3HQ5duRbY\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 22:04:00', '2019-08-27 22:04:00'),
(375, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"CE6wfgzdrOOY774E3uW2Hj68tMfMlZ97EI4FW9cAzolxITOADn1o0ssdalO0\"}', '{\"remember_token\":\"m1TzJXTBxLCRg9FmJH88l9OobbWyqq8mw2ytgyykZ0dM1msTAHzLAwZruki8\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 22:12:34', '2019-08-27 22:12:34'),
(376, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"vWTuWNRZMhZ2tBBRFpQwhISQV3Z8t3P0vM266Lxm\"}', '{\"session_id\":\"gNiJyu6Keo1fhhFX93XG0InebuWdxyTMhQnUif3E\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 22:12:45', '2019-08-27 22:12:45'),
(377, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"Pw84Czr0TBar7RSEc7qbFKsohNmLiSWnBkyNmKDHz9PF9zfzSCCmeBwurl79\"}', '{\"remember_token\":\"Owf1XJjRBmINrhVtDkHjiq6T3JSCMLg4A9q5YJwO0rYevTCgwgOQwTnwqlEs\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 22:13:42', '2019-08-27 22:13:42'),
(378, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"DurTlPSMfWd88IMiMUgzNtvnA5GnzsO3HQ5duRbY\"}', '{\"session_id\":\"qdEv0U9TCss2xD2aHT66Qd1NZuZEYafA3tMpdLSM\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 22:13:50', '2019-08-27 22:13:50'),
(379, 'App\\User', 1, 'created', 'App\\other_information', 1, '[]', '{\"employee_id\":\"1\",\"driving_licence\":null,\"licence_expiry\":null,\"disability\":null,\"blood_group\":\"3\",\"passport_no\":null,\"passport_expiry\":null,\"id\":1}', 'http://localhost/hrms/public/hrms/editOther/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 23:10:02', '2019-08-27 23:10:02'),
(380, 'App\\User', 1, 'updated', 'App\\other_information', 1, '{\"kin_name\":null,\"kin_relation\":null,\"kin_address\":null,\"kin_contact_number\":null}', '{\"kin_name\":\"Muhammad Afzal\",\"kin_relation\":\"Father\",\"kin_address\":\"House No.1, Street No.2, Rehman Park, Gulshan-e-Ravi, Lahore\",\"kin_contact_number\":\"042-37418187\"}', 'http://localhost/hrms/public/hrms/editOther/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 23:12:37', '2019-08-27 23:12:37'),
(381, 'App\\User', 1, 'created', 'App\\contact', 7, '[]', '{\"employee_id\":\"1\",\"type\":\"0\",\"house\":\"1\",\"street\":\"3\",\"town\":\"Rehman Par, Gulshan-e-Ravi\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country\":\"Pakistan\",\"mobile\":\"0345-4145910\",\"landline\":\"042-37418187\",\"id\":7}', 'http://localhost/hrms/public/editPermanentAddress/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 23:20:53', '2019-08-27 23:20:53'),
(382, 'App\\User', 1, 'created', 'App\\emergency_contact', 3, '[]', '{\"name\":\"Rehan Afzal\",\"relation\":\"Brother\",\"mobile\":\"0323-4205592\",\"landline\":\"042-37418187\",\"employee_id\":\"1\",\"id\":3}', 'http://localhost/hrms/public/storeEmergency', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 23:22:47', '2019-08-27 23:22:47'),
(383, 'App\\User', 6, 'updated', 'App\\User', 6, '{\"session_id\":\"or07Flm6nD1i3t7Zn4Yn07gnnwU2J1VoBrNPgV9z\"}', '{\"session_id\":\"SlzDh3y4PfY4YfIGUrQc2OSO3Jbs05sXq4zAsOaN\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-27 23:23:11', '2019-08-27 23:23:11'),
(384, 'App\\User', 1, 'created', 'App\\experience', 4, '[]', '{\"employer\":\"Pakistan Telecommunication Company LImited\",\"position\":\"HR Executive\",\"from\":\"1995-04-01\",\"to\":\"2001-03-08\",\"project\":null,\"client\":null,\"location\":null,\"country\":\"Pakistan\",\"main_features\":null,\"activities\":null,\"employee_id\":\"1\",\"id\":4}', 'http://localhost/hrms/public/storeExperience', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 23:27:07', '2019-08-27 23:27:07'),
(385, 'App\\User', 1, 'created', 'App\\language', 10, '[]', '{\"name\":\"English\",\"reading\":\"Good\",\"speaking\":\"Good\",\"writing\":\"Good\",\"employee_id\":\"1\",\"id\":10}', 'http://localhost/hrms/public/storeLanguage', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 23:27:33', '2019-08-27 23:27:33'),
(386, 'App\\User', 1, 'created', 'App\\language', 11, '[]', '{\"name\":\"Urdu\",\"reading\":\"Excellent\",\"speaking\":\"Excellent\",\"writing\":\"Excellent\",\"employee_id\":\"1\",\"id\":11}', 'http://localhost/hrms/public/storeLanguage', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 23:27:41', '2019-08-27 23:27:41'),
(387, 'App\\User', 6, 'created', 'App\\dependent', 1, '[]', '{\"name\":\"Mrs Taufeeq\",\"date_of_birth\":null,\"relation\":\"Wife\",\"gender\":\"Female\",\"employee_id\":\"13\",\"id\":1}', 'http://192.168.1.10/hrms/public/storeDependent', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-27 23:27:53', '2019-08-27 23:27:53'),
(388, 'App\\User', 6, 'created', 'App\\dependent', 2, '[]', '{\"name\":\"Amber Taufeeq\",\"date_of_birth\":null,\"relation\":\"Daughter\",\"gender\":\"Female\",\"employee_id\":\"13\",\"id\":2}', 'http://192.168.1.10/hrms/public/storeDependent', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-27 23:28:21', '2019-08-27 23:28:21'),
(389, 'App\\User', 6, 'created', 'App\\dependent', 3, '[]', '{\"name\":\"Ahmad Taufeeq\",\"date_of_birth\":null,\"relation\":\"Son\",\"gender\":\"Male\",\"employee_id\":\"13\",\"id\":3}', 'http://192.168.1.10/hrms/public/storeDependent', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-27 23:28:37', '2019-08-27 23:28:37'),
(390, 'App\\User', 6, 'created', 'App\\dependent', 4, '[]', '{\"name\":\"Itrat Taufeeq\",\"date_of_birth\":null,\"relation\":\"Daughter\",\"gender\":\"Female\",\"employee_id\":\"13\",\"id\":4}', 'http://192.168.1.10/hrms/public/storeDependent', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-27 23:29:06', '2019-08-27 23:29:06'),
(391, 'App\\User', 6, 'created', 'App\\document', 77, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1566966608-13-CNIC Front.jpg\",\"file_path\":\"documents\\/13_Muhammad__Taufeeq\\/\",\"employee_id\":13,\"type\":\"image\\/jpeg\",\"id\":77}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-27 23:30:09', '2019-08-27 23:30:09'),
(392, 'App\\User', 6, 'created', 'App\\document', 78, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1566966637-13-CNIC Back.jpg\",\"file_path\":\"documents\\/13_Muhammad__Taufeeq\\/\",\"employee_id\":13,\"type\":\"image\\/jpeg\",\"id\":78}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-27 23:30:38', '2019-08-27 23:30:38'),
(393, 'App\\User', 1, 'created', 'App\\bank', 1, '[]', '{\"name\":\"Standard Chartered Bank\",\"account_no\":\"01161057501\",\"branch_name\":\"PAAF Building, Lahore\",\"branch_code\":\"0001\",\"employee_id\":\"1\",\"id\":1}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 23:30:59', '2019-08-27 23:30:59'),
(394, 'App\\User', 1, 'updated', 'App\\bank', 1, '{\"branch_code\":\"0001\"}', '{\"branch_code\":null}', 'http://localhost/hrms/public/editBank/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 23:31:36', '2019-08-27 23:31:36'),
(395, 'App\\User', 1, 'created', 'App\\bank', 2, '[]', '{\"name\":\"Bank Alfalah\",\"account_no\":\"000601127028\",\"branch_name\":\"LDA Plaza\",\"branch_code\":\"0006\",\"employee_id\":\"1\",\"id\":2}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 23:34:00', '2019-08-27 23:34:00'),
(396, 'App\\User', 6, 'updated', 'App\\User', 6, '{\"session_id\":\"SlzDh3y4PfY4YfIGUrQc2OSO3Jbs05sXq4zAsOaN\"}', '{\"session_id\":\"tx8RAeoFLwjPPzAYXkurRISKy6p7Nnql4FysNzyW\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-28 02:22:07', '2019-08-28 02:22:07'),
(397, 'App\\User', 1, 'updated', 'App\\bank', 1, '{\"account_no\":\"01161057501\"}', '{\"account_no\":\"0116105750\"}', 'http://localhost/hrms/public/editBank/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:30:18', '2019-08-28 06:30:18'),
(398, 'App\\User', 1, 'updated', 'App\\bank', 1, '{\"account_no\":\"0116105750\"}', '{\"account_no\":\"01161057501\"}', 'http://localhost/hrms/public/editBank/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:30:23', '2019-08-28 06:30:23'),
(399, 'App\\User', 1, 'updated', 'App\\bank', 2, '{\"branch_code\":\"0006\"}', '{\"branch_code\":\"006\"}', 'http://localhost/hrms/public/editBank/2', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:32:05', '2019-08-28 06:32:05'),
(400, 'App\\User', 1, 'updated', 'App\\bank', 2, '{\"branch_code\":\"006\"}', '{\"branch_code\":\"0006\"}', 'http://localhost/hrms/public/editBank/2', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:32:10', '2019-08-28 06:32:10'),
(401, 'App\\User', 1, 'deleted', 'App\\bank', 1, '{\"id\":1,\"employee_id\":1,\"name\":\"Standard Chartered Bank\",\"account_no\":\"01161057501\",\"branch_code\":null,\"branch_name\":\"PAAF Building, Lahore\"}', '[]', 'http://localhost/hrms/public/deleteBank/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:37:24', '2019-08-28 06:37:24'),
(402, 'App\\User', 1, 'created', 'App\\bank', 3, '[]', '{\"name\":\"Standard Chartered Bank\",\"account_no\":\"123456789\",\"branch_name\":\"PAAF Building\",\"branch_code\":\"00123\",\"employee_id\":\"1\",\"id\":3}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:38:56', '2019-08-28 06:38:56'),
(403, 'App\\User', 1, 'deleted', 'App\\bank', 3, '{\"id\":3,\"employee_id\":1,\"name\":\"Standard Chartered Bank\",\"account_no\":\"123456789\",\"branch_code\":\"00123\",\"branch_name\":\"PAAF Building\"}', '[]', 'http://localhost/hrms/public/deleteBank/3', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:39:02', '2019-08-28 06:39:02'),
(404, 'App\\User', 1, 'created', 'App\\bank', 4, '[]', '{\"name\":\"Standard Chartered Bank\",\"account_no\":\"123456\",\"branch_name\":\"PAAF Building\",\"branch_code\":\"0214\",\"employee_id\":\"1\",\"id\":4}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:39:34', '2019-08-28 06:39:34'),
(405, 'App\\User', 1, 'deleted', 'App\\bank', 4, '{\"id\":4,\"employee_id\":1,\"name\":\"Standard Chartered Bank\",\"account_no\":\"123456\",\"branch_code\":\"0214\",\"branch_name\":\"PAAF Building\"}', '[]', 'http://localhost/hrms/public/deleteBank/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:39:50', '2019-08-28 06:39:50'),
(406, 'App\\User', 1, 'deleted', 'App\\bank', 2, '{\"id\":2,\"employee_id\":1,\"name\":\"Bank Alfalah\",\"account_no\":\"000601127028\",\"branch_code\":\"0006\",\"branch_name\":\"LDA Plaza\"}', '[]', 'http://localhost/hrms/public/deleteBank/2', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 07:03:34', '2019-08-28 07:03:34'),
(407, 'App\\User', 1, 'created', 'App\\bank', 5, '[]', '{\"name\":\"Standard Chartered Bank\",\"account_no\":\"01127028\",\"branch_name\":null,\"branch_code\":null,\"employee_id\":\"1\",\"id\":5}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 07:03:56', '2019-08-28 07:03:56'),
(408, 'App\\User', 1, 'deleted', 'App\\bank', 5, '{\"id\":5,\"employee_id\":1,\"name\":\"Standard Chartered Bank\",\"account_no\":\"01127028\",\"branch_code\":null,\"branch_name\":null}', '[]', 'http://localhost/hrms/public/deleteBank/5', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 07:04:04', '2019-08-28 07:04:04'),
(409, 'App\\User', 1, 'created', 'App\\bank', 6, '[]', '{\"name\":\"Standard Chartered Bank\",\"account_no\":\"01127028\",\"branch_name\":null,\"branch_code\":null,\"employee_id\":\"1\",\"id\":6}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 07:04:39', '2019-08-28 07:04:39'),
(410, 'App\\User', 1, 'created', 'App\\bank', 7, '[]', '{\"name\":\"Bank Alfalah\",\"account_no\":\"0345678\",\"branch_name\":null,\"branch_code\":null,\"employee_id\":\"1\",\"id\":7}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 07:16:37', '2019-08-28 07:16:37'),
(411, 'App\\User', 1, 'deleted', 'App\\bank', 7, '{\"id\":7,\"employee_id\":1,\"name\":\"Bank Alfalah\",\"account_no\":\"0345678\",\"branch_code\":null,\"branch_name\":null}', '[]', 'http://localhost/hrms/public/deleteBank/7', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 07:16:44', '2019-08-28 07:16:44'),
(412, 'App\\User', 1, 'created', 'App\\bank', 8, '[]', '{\"name\":\"Bank Alfalah\",\"account_no\":\"456789\",\"branch_name\":null,\"branch_code\":null,\"employee_id\":\"1\",\"id\":8}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 07:16:57', '2019-08-28 07:16:57'),
(413, 'App\\User', 1, 'deleted', 'App\\bank', 8, '{\"id\":8,\"employee_id\":1,\"name\":\"Bank Alfalah\",\"account_no\":\"456789\",\"branch_code\":null,\"branch_name\":null}', '[]', 'http://localhost/hrms/public/deleteBank/8', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 07:25:35', '2019-08-28 07:25:35'),
(414, 'App\\User', 1, 'created', 'App\\bank', 9, '[]', '{\"name\":\"Bank Alfalah\",\"account_no\":\"0123456\",\"branch_name\":null,\"branch_code\":null,\"employee_id\":\"1\",\"id\":9}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 07:26:46', '2019-08-28 07:26:46'),
(415, 'App\\User', 1, 'deleted', 'App\\bank', 9, '{\"id\":9,\"employee_id\":1,\"name\":\"Bank Alfalah\",\"account_no\":\"0123456\",\"branch_code\":null,\"branch_name\":null}', '[]', 'http://localhost/hrms/public/deleteBank/9?_token=HdyqOT36WfXshAAojGmUU4wOibTs4nqhHnv1Up2w&account_no=01127028&branch_code=&branch_name=&employee_id=1&name=Standard%20Chartered%20Bank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 07:29:03', '2019-08-28 07:29:03'),
(416, 'App\\User', 1, 'deleted', 'App\\bank', 6, '{\"id\":6,\"employee_id\":1,\"name\":\"Standard Chartered Bank\",\"account_no\":\"01127028\",\"branch_code\":null,\"branch_name\":null}', '[]', 'http://localhost/hrms/public/deleteBank/6?_token=HdyqOT36WfXshAAojGmUU4wOibTs4nqhHnv1Up2w&account_no=01127028&branch_code=&branch_name=&employee_id=1&name=Standard%20Chartered%20Bank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 07:30:10', '2019-08-28 07:30:10'),
(417, 'App\\User', 1, 'created', 'App\\bank', 10, '[]', '{\"name\":\"Standard Chartered Bank\",\"account_no\":\"123456\",\"branch_name\":null,\"branch_code\":null,\"employee_id\":\"1\",\"id\":10}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 07:48:50', '2019-08-28 07:48:50'),
(418, 'App\\User', 1, 'deleted', 'App\\bank', 10, '{\"id\":10,\"employee_id\":1,\"name\":\"Standard Chartered Bank\",\"account_no\":\"123456\",\"branch_code\":null,\"branch_name\":null}', '[]', 'http://localhost/hrms/public/deleteBank/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:08:37', '2019-08-28 08:08:37'),
(419, 'App\\User', 1, 'created', 'App\\bank', 11, '[]', '{\"name\":\"Standard Chartered Bank\",\"account_no\":\"123456\",\"branch_name\":null,\"branch_code\":null,\"employee_id\":\"1\",\"id\":11}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:18:29', '2019-08-28 08:18:29'),
(420, 'App\\User', 1, 'deleted', 'App\\bank', 11, '{\"id\":11,\"employee_id\":1,\"name\":\"Standard Chartered Bank\",\"account_no\":\"123456\",\"branch_code\":null,\"branch_name\":null}', '[]', 'http://localhost/hrms/public/deleteBank/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:18:40', '2019-08-28 08:18:40'),
(421, 'App\\User', 1, 'created', 'App\\bank', 12, '[]', '{\"name\":\"Standard Chartered Bank\",\"account_no\":\"123456789\",\"branch_name\":null,\"branch_code\":null,\"employee_id\":\"1\",\"id\":12}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:19:11', '2019-08-28 08:19:11'),
(422, 'App\\User', 1, 'updated', 'App\\bank', 12, '{\"account_no\":\"123456789\"}', '{\"account_no\":\"12345678\"}', 'http://localhost/hrms/public/editBank/12', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:24:47', '2019-08-28 08:24:47'),
(423, 'App\\User', 1, 'updated', 'App\\bank', 12, '{\"account_no\":\"12345678\"}', '{\"account_no\":\"1234567\"}', 'http://localhost/hrms/public/editBank/12', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:24:54', '2019-08-28 08:24:54');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(424, 'App\\User', 1, 'updated', 'App\\bank', 12, '{\"branch_code\":null,\"branch_name\":null}', '{\"branch_code\":\"0214\",\"branch_name\":\"PAAF Building\"}', 'http://localhost/hrms/public/editBank/12', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:30:27', '2019-08-28 08:30:27'),
(425, 'App\\User', 1, 'updated', 'App\\bank', 12, '{\"branch_code\":\"0214\"}', '{\"branch_code\":\"021\"}', 'http://localhost/hrms/public/editBank/12', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:33:11', '2019-08-28 08:33:11'),
(426, 'App\\User', 1, 'updated', 'App\\bank', 12, '{\"branch_code\":\"021\"}', '{\"branch_code\":\"02\"}', 'http://localhost/hrms/public/editBank/12', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:33:21', '2019-08-28 08:33:21'),
(427, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"m1TzJXTBxLCRg9FmJH88l9OobbWyqq8mw2ytgyykZ0dM1msTAHzLAwZruki8\"}', '{\"remember_token\":\"nXXa2LSNUQJgyh7y3Q8kSoUa4lTJJys6D4jVKmMp4OYBkT4H4VibRQ4wTqy0\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:34:14', '2019-08-28 08:34:14'),
(428, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"qdEv0U9TCss2xD2aHT66Qd1NZuZEYafA3tMpdLSM\"}', '{\"session_id\":\"q0ebEai3POCLmFhQ4GWIdeV7syN24nBeidk7DOLl\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 21:35:08', '2019-08-28 21:35:08'),
(429, 'App\\User', 1, 'deleted', 'App\\bank', 12, '{\"id\":12,\"employee_id\":1,\"name\":\"Standard Chartered Bank\",\"account_no\":\"1234567\",\"branch_code\":\"02\",\"branch_name\":\"PAAF Building\"}', '[]', 'http://localhost/hrms/public/deleteBank/12', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 21:37:48', '2019-08-28 21:37:48'),
(430, 'App\\User', 1, 'created', 'App\\bank', 13, '[]', '{\"name\":\"Bank Alfalah\",\"account_no\":\"01127028\",\"branch_name\":\"LDA Plaza\",\"branch_code\":\"0006\",\"employee_id\":\"1\",\"id\":13}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 21:38:56', '2019-08-28 21:38:56'),
(431, 'App\\User', 1, 'created', 'App\\bank', 14, '[]', '{\"name\":\"Standard Chartered Bank\",\"account_no\":\"01161057501\",\"branch_name\":\"PAAF Building\",\"branch_code\":null,\"employee_id\":\"1\",\"id\":14}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 21:39:25', '2019-08-28 21:39:25'),
(432, 'App\\User', 1, 'updated', 'App\\bank', 14, '{\"branch_name\":\"PAAF Building\"}', '{\"branch_name\":null}', 'http://localhost/hrms/public/editBank/14', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 21:51:34', '2019-08-28 21:51:34'),
(433, 'App\\User', 1, 'updated', 'App\\bank', 14, '{\"branch_name\":null}', '{\"branch_name\":\"PAAF Building\"}', 'http://localhost/hrms/public/editBank/14', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 21:51:49', '2019-08-28 21:51:49'),
(434, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"gNiJyu6Keo1fhhFX93XG0InebuWdxyTMhQnUif3E\"}', '{\"session_id\":\"8PbUWIZFRSiyxahm0lOwFCU2Ybwe7GJMjHaYLqgf\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 23:38:43', '2019-08-28 23:38:43'),
(435, 'App\\User', 2, 'created', 'App\\employee', 14, '[]', '{\"first_name\":\"Kabir\",\"middle_name\":null,\"last_name\":\"Ahmad\",\"father_name\":\"Naseer Ahmad\",\"date_of_birth\":\"1973-04-20\",\"gender\":\"Male\",\"cnic\":\"35202-6628320-3\",\"cnic_expiry\":\"2024-07-04\",\"employee_no\":\"03014237600\",\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":14}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 23:45:28', '2019-08-28 23:45:28'),
(436, 'App\\User', 2, 'created', 'App\\nationality', 14, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":14,\"id\":14}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 23:45:28', '2019-08-28 23:45:28'),
(437, 'App\\User', 2, 'created', 'App\\picture', 12, '[]', '{\"name\":\"14-Kabir  Ahmad.png\",\"employee_id\":14,\"type\":\"image\\/png\",\"size\":78927,\"width\":\"100\",\"height\":\"100\",\"id\":12}', 'http://192.168.1.10/hrms/public/editPicture/14', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 23:50:13', '2019-08-28 23:50:13'),
(438, 'App\\User', 2, 'created', 'App\\appointment', 8, '[]', '{\"employee_id\":\"14\",\"reference_no\":\"BQB\\/PF\\/KA\\/305\",\"appointment_date\":\"2001-12-07\",\"designation\":\"AutoCAD Operator\",\"expiry_date\":null,\"category\":\"A\",\"grade\":\"10\",\"appointment_letter_type\":\"2 Pages\",\"id\":8}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/14', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 23:54:46', '2019-08-28 23:54:46'),
(439, 'App\\User', 2, 'created', 'App\\posting', 9, '[]', '{\"position\":\"AutoCAD Operator\",\"posting_date\":\"2001-12-07\",\"manager_id\":\"7\",\"joining_date\":\"2001-12-07\",\"project\":\"Overhead of the Company\",\"location\":\"Lahore\",\"employee_id\":\"14\",\"id\":9}', 'http://192.168.1.10/hrms/public/storePosting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 23:57:48', '2019-08-28 23:57:48'),
(440, 'App\\User', 2, 'created', 'App\\education', 13, '[]', '{\"degree_name\":\"FA\",\"institute\":\"Private\",\"marks_obtain\":\"468\",\"total_marks\":\"850\",\"level\":\"12\",\"employee_id\":\"14\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"1991\",\"grade\":null,\"country\":\"Pakistan\",\"id\":13}', 'http://192.168.1.10/hrms/public/storeEducation', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-29 00:02:37', '2019-08-29 00:02:37'),
(441, 'App\\User', 2, 'created', 'App\\experience', 5, '[]', '{\"employer\":\"Kabir Ahmad\",\"position\":\"Auto CAD Operato\",\"from\":\"2001-12-07\",\"to\":\"2019-08-20\",\"project\":null,\"client\":null,\"location\":null,\"country\":\"Pakistan\",\"main_features\":null,\"activities\":null,\"employee_id\":\"14\",\"id\":5}', 'http://192.168.1.10/hrms/public/storeExperience', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-29 00:04:42', '2019-08-29 00:04:42'),
(442, 'App\\User', 2, 'created', 'App\\contact', 8, '[]', '{\"employee_id\":\"14\",\"type\":\"0\",\"house\":\"Flat No. 260-C, Block N, Model Town Lahore\",\"street\":null,\"town\":\"Chak Kalay Khan\",\"tehsil\":\"Laliyan\",\"city\":\"Narowal\",\"province\":\"Punjab\",\"country\":\"Pakistan\",\"mobile\":\"03024125456\",\"landline\":null,\"id\":8}', 'http://192.168.1.10/hrms/public/editPermanentAddress/14', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-29 00:09:52', '2019-08-29 00:09:52'),
(443, 'App\\User', 2, 'created', 'App\\employee', 15, '[]', '{\"first_name\":\"Nazir\",\"middle_name\":null,\"last_name\":\"Ahmad\",\"father_name\":\"Muhammad Sidduqe\",\"date_of_birth\":\"1946-08-10\",\"gender\":\"Male\",\"cnic\":\"35404-1588110-1\",\"cnic_expiry\":\"2026-10-16\",\"employee_no\":\"03444111318\",\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"1\",\"id\":15}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-29 00:25:49', '2019-08-29 00:25:49'),
(444, 'App\\User', 2, 'created', 'App\\nationality', 15, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":15,\"id\":15}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-29 00:25:49', '2019-08-29 00:25:49'),
(445, 'App\\User', 2, 'created', 'App\\picture', 13, '[]', '{\"name\":\"15-Nazir  Ahmad.png\",\"employee_id\":15,\"type\":\"image\\/png\",\"size\":72123,\"width\":\"100\",\"height\":\"100\",\"id\":13}', 'http://192.168.1.10/hrms/public/editPicture/15', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-29 00:27:19', '2019-08-29 00:27:19'),
(446, 'App\\User', 2, 'created', 'App\\appointment', 9, '[]', '{\"employee_id\":\"15\",\"reference_no\":\"BQB\\/A\\/03\\/52\\/MA\\/1421\",\"appointment_date\":\"2006-11-30\",\"designation\":\"Office Supervisor\",\"expiry_date\":null,\"category\":\"B\",\"grade\":\"11\",\"appointment_letter_type\":\"1 Page\",\"id\":9}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/15', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-29 00:30:26', '2019-08-29 00:30:26'),
(447, 'App\\User', 2, 'created', 'App\\education', 14, '[]', '{\"degree_name\":\"B.A.\",\"institute\":\"Peshawar University\",\"marks_obtain\":\"456\",\"total_marks\":\"850\",\"level\":\"14\",\"employee_id\":\"15\",\"from_month\":\"March\",\"from_year\":null,\"to_month\":null,\"to_year\":\"1983\",\"grade\":null,\"country\":\"Pakistan\",\"id\":14}', 'http://192.168.1.10/hrms/public/storeEducation', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-29 00:33:03', '2019-08-29 00:33:03'),
(448, 'App\\User', 2, 'updated', 'App\\appointment', 9, '{\"appointment_date\":\"2006-11-30\"}', '{\"appointment_date\":\"2006-11-29\"}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/15', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-29 00:48:24', '2019-08-29 00:48:24'),
(449, 'App\\User', 1, 'deleted', 'App\\bank', 14, '{\"id\":14,\"employee_id\":1,\"name\":\"Standard Chartered Bank\",\"account_no\":\"01161057501\",\"branch_code\":null,\"branch_name\":\"PAAF Building\"}', '[]', 'http://localhost/hrms/public/deleteBank/14', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-29 06:00:29', '2019-08-29 06:00:29'),
(450, 'App\\User', 1, 'created', 'App\\bank', 15, '[]', '{\"name\":\"Bank Alfalah\",\"account_no\":\"01127028\",\"branch_name\":null,\"branch_code\":null,\"employee_id\":\"1\",\"id\":15}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-29 06:01:41', '2019-08-29 06:01:41'),
(451, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"nXXa2LSNUQJgyh7y3Q8kSoUa4lTJJys6D4jVKmMp4OYBkT4H4VibRQ4wTqy0\"}', '{\"remember_token\":\"AeD8P8KlUp9HiKlyCcokf3n4SLkdMXcU0FidLO0EAFr3yVhjChuQsIaeoSHw\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-29 08:26:39', '2019-08-29 08:26:39'),
(452, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"q0ebEai3POCLmFhQ4GWIdeV7syN24nBeidk7DOLl\"}', '{\"session_id\":\"59nSiwwWhFC3q4uG64j9dFZKDT9Xi9iAGLDorCcR\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 22:05:31', '2019-08-29 22:05:31'),
(453, 'App\\User', 1, 'deleted', 'App\\bank', 15, '{\"id\":15,\"employee_id\":1,\"name\":\"Bank Alfalah\",\"account_no\":\"01127028\",\"branch_code\":null,\"branch_name\":null}', '[]', 'http://localhost/hrms/public/deleteBank/15?_token=naU07XqSPCm838HgRafNnkIbsGwaFvu5URAWIoUZ&account_no=01127028&branch_code=&branch_name=&employee_id=1&name=Bank%20Alfalah', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 22:55:12', '2019-08-29 22:55:12'),
(454, 'App\\User', 1, 'deleted', 'App\\bank', 13, '{\"id\":13,\"employee_id\":1,\"name\":\"Bank Alfalah\",\"account_no\":\"01127028\",\"branch_code\":\"0006\",\"branch_name\":\"LDA Plaza\"}', '[]', 'http://localhost/hrms/public/deleteBank/13?_token=naU07XqSPCm838HgRafNnkIbsGwaFvu5URAWIoUZ&account_no=01127028&branch_code=0006&branch_name=LDA%20Plaza&employee_id=1&name=Bank%20Alfalah', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 22:55:51', '2019-08-29 22:55:51'),
(455, 'App\\User', 1, 'created', 'App\\bank', 16, '[]', '{\"name\":\"Standard Chartered Bank\",\"account_no\":\"01128027\",\"branch_name\":null,\"branch_code\":null,\"employee_id\":\"1\",\"id\":16}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 22:56:13', '2019-08-29 22:56:13'),
(456, 'App\\User', 1, 'created', 'App\\bank', 17, '[]', '{\"name\":\"Bank Alfalah\",\"account_no\":\"01125468\",\"branch_name\":null,\"branch_code\":null,\"employee_id\":\"1\",\"id\":17}', 'http://localhost/hrms/public/storeBank', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 22:56:25', '2019-08-29 22:56:25'),
(457, 'App\\User', 1, 'updated', 'App\\User', 4, '{\"role_id\":3}', '{\"role_id\":\"2\"}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 23:38:49', '2019-08-29 23:38:49'),
(458, 'App\\User', 1, 'updated', 'App\\User', 4, '{\"role_id\":2}', '{\"role_id\":\"3\"}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 23:39:01', '2019-08-29 23:39:01'),
(459, 'App\\User', 1, 'updated', 'App\\User', 4, '{\"email\":\"sohail@barqaab.com\"}', '{\"email\":\"role2\"}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 23:47:02', '2019-08-29 23:47:02'),
(460, 'App\\User', 1, 'updated', 'App\\User', 4, '{\"email\":\"role2\"}', '{\"email\":\"sohail@barqaab.com\"}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 23:52:35', '2019-08-29 23:52:35'),
(461, 'App\\User', 1, 'updated', 'App\\User', 3, '{\"role_id\":4}', '{\"role_id\":\"5\"}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/3', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 00:04:56', '2019-08-30 00:04:56'),
(462, 'App\\User', 1, 'updated', 'App\\User', 3, '{\"role_id\":5}', '{\"role_id\":\"4\"}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/3', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 00:07:13', '2019-08-30 00:07:13'),
(463, 'App\\User', 1, 'updated', 'App\\User', 3, '{\"role_id\":4}', '{\"role_id\":\"5\"}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/3', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 00:07:22', '2019-08-30 00:07:22'),
(464, 'App\\User', 1, 'created', 'App\\User', 7, '[]', '{\"employee_id\":\"10\",\"role_id\":\"2\",\"email\":\"testing@123.com\",\"id\":7}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 01:10:29', '2019-08-30 01:10:29'),
(465, 'App\\User', 6, 'updated', 'App\\User', 6, '{\"session_id\":\"tx8RAeoFLwjPPzAYXkurRISKy6p7Nnql4FysNzyW\"}', '{\"session_id\":\"SRR9Ep3W7Yo40OYlJ1yNH7WtRd9XXfz7L2zfQNqK\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 01:49:14', '2019-08-30 01:49:14'),
(466, 'App\\User', 6, 'updated', 'App\\appointment', 7, '{\"reference_no\":\"BQB\\/W\\/01\\/542\\/MA\\/\\/089\"}', '{\"reference_no\":\"BQB\\/W\\/01\\/542\\/MA\\/089\"}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/13', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 01:50:06', '2019-08-30 01:50:06'),
(467, 'App\\User', 1, 'deleted', 'App\\User', 4, '{\"id\":4,\"email\":\"sohail@barqaab.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":3,\"user_status\":0,\"employee_id\":4,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 03:23:00', '2019-08-30 03:23:00'),
(468, 'App\\User', 1, 'created', 'App\\User', 8, '[]', '{\"employee_id\":\"4\",\"role_id\":\"3\",\"email\":\"sohail@barqaab.com\",\"id\":8}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 03:23:33', '2019-08-30 03:23:33'),
(469, 'App\\User', 1, 'deleted', 'App\\User', 6, '{\"id\":6,\"email\":\"taufeeq240808@gmail.com\",\"email_verified_at\":null,\"password\":\"$2y$10$Fr5xGSAuNyjW3dQ4rDyJbOj1lZrXlPwm2t4a5dWYI6K\\/DRSNBcaeu\",\"role_id\":4,\"user_status\":1,\"employee_id\":13,\"session_id\":\"SRR9Ep3W7Yo40OYlJ1yNH7WtRd9XXfz7L2zfQNqK\",\"remember_token\":\"WopX7hp47oyeJuRHqAO15wAD72w3I7WKfN7bcjHWpwVFFyWmGC7mbmFbGa37\"}', '[]', 'http://localhost/hrms/public/deleteUser/6', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 03:47:39', '2019-08-30 03:47:39'),
(470, 'App\\User', 1, 'deleted', 'App\\User', 7, '{\"id\":7,\"email\":\"testing@123.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":2,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:18:41', '2019-08-30 04:18:41'),
(471, 'App\\User', 1, 'created', 'App\\User', 9, '[]', '{\"employee_id\":\"10\",\"role_id\":\"2\",\"email\":\"testing@testing.com\",\"id\":9}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:21:00', '2019-08-30 04:21:00'),
(472, 'App\\User', 1, 'deleted', 'App\\User', 9, '{\"id\":9,\"email\":\"testing@testing.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":2,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:25:26', '2019-08-30 04:25:26'),
(473, 'App\\User', 1, 'created', 'App\\User', 10, '[]', '{\"employee_id\":\"10\",\"role_id\":\"3\",\"email\":\"testing@test.com\",\"id\":10}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:28:13', '2019-08-30 04:28:13'),
(474, 'App\\User', 1, 'deleted', 'App\\User', 10, '{\"id\":10,\"email\":\"testing@test.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":3,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:28:19', '2019-08-30 04:28:19'),
(475, 'App\\User', 1, 'created', 'App\\User', 11, '[]', '{\"employee_id\":\"10\",\"role_id\":\"3\",\"email\":\"testing@test.com\",\"id\":11}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:31:16', '2019-08-30 04:31:16'),
(476, 'App\\User', 1, 'created', 'App\\User', 12, '[]', '{\"employee_id\":\"14\",\"role_id\":\"2\",\"email\":\"test12@gmail.com\",\"id\":12}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/14', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:31:30', '2019-08-30 04:31:30'),
(477, 'App\\User', 1, 'deleted', 'App\\User', 12, '{\"id\":12,\"email\":\"test12@gmail.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":2,\"user_status\":0,\"employee_id\":14,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/14', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:31:39', '2019-08-30 04:31:39'),
(478, 'App\\User', 1, 'deleted', 'App\\User', 11, '{\"id\":11,\"email\":\"testing@test.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":3,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:35:20', '2019-08-30 04:35:20'),
(479, 'App\\User', 1, 'created', 'App\\User', 13, '[]', '{\"employee_id\":\"13\",\"role_id\":\"4\",\"email\":\"taufeeq240808@gmail.com\",\"id\":13}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/13', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:37:26', '2019-08-30 04:37:26'),
(480, 'App\\User', 1, 'created', 'App\\User', 14, '[]', '{\"employee_id\":\"10\",\"role_id\":\"3\",\"email\":\"test@123.com\",\"id\":14}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:42:50', '2019-08-30 04:42:50'),
(481, 'App\\User', 1, 'deleted', 'App\\User', 14, '{\"id\":14,\"email\":\"test@123.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":3,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:42:55', '2019-08-30 04:42:55'),
(482, 'App\\User', 1, 'created', 'App\\User', 15, '[]', '{\"employee_id\":\"10\",\"role_id\":\"4\",\"email\":\"test@123.com\",\"id\":15}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:45:16', '2019-08-30 04:45:16'),
(483, 'App\\User', 1, 'deleted', 'App\\User', 15, '{\"id\":15,\"email\":\"test@123.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":4,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:45:21', '2019-08-30 04:45:21'),
(484, 'App\\User', 1, 'created', 'App\\User', 16, '[]', '{\"employee_id\":\"10\",\"role_id\":\"3\",\"email\":\"test@123.com\",\"id\":16}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:48:55', '2019-08-30 04:48:55'),
(485, 'App\\User', 1, 'deleted', 'App\\User', 16, '{\"id\":16,\"email\":\"test@123.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":3,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:48:57', '2019-08-30 04:48:57'),
(486, 'App\\User', 1, 'created', 'App\\User', 17, '[]', '{\"employee_id\":\"10\",\"role_id\":\"2\",\"email\":\"test@123.com\",\"id\":17}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:49:53', '2019-08-30 04:49:53'),
(487, 'App\\User', 1, 'deleted', 'App\\User', 17, '{\"id\":17,\"email\":\"test@123.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":2,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:49:55', '2019-08-30 04:49:55'),
(488, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"remember_token\":null}', '{\"remember_token\":\"SF9tuoGneu5k55vJ9PqQGI0hFHKJAQsleC2MvSqvNiJDu3y652YyS3MpuukX\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:50:00', '2019-08-30 04:50:00'),
(489, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"session_id\":null}', '{\"session_id\":\"AUWqI6bRIask0FKnxjZ1tjXgBUC3VaeTEMGjnpU5\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:50:00', '2019-08-30 04:50:00'),
(490, 'App\\User', 1, 'created', 'App\\User', 18, '[]', '{\"employee_id\":\"10\",\"role_id\":\"3\",\"email\":\"test@123.com\",\"id\":18}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:50:28', '2019-08-30 04:50:28'),
(491, 'App\\User', 1, 'deleted', 'App\\User', 18, '{\"id\":18,\"email\":\"test@123.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":3,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:50:31', '2019-08-30 04:50:31'),
(492, 'App\\User', 1, 'created', 'App\\User', 19, '[]', '{\"employee_id\":\"10\",\"role_id\":\"4\",\"email\":\"testing@123.com\",\"id\":19}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:56:31', '2019-08-30 04:56:31'),
(493, 'App\\User', 1, 'deleted', 'App\\User', 19, '{\"id\":19,\"email\":\"testing@123.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":4,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:56:36', '2019-08-30 04:56:36'),
(494, 'App\\User', 1, 'created', 'App\\User', 20, '[]', '{\"employee_id\":\"10\",\"role_id\":\"5\",\"email\":\"test@123.com\",\"id\":20}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:57:41', '2019-08-30 04:57:41'),
(495, 'App\\User', 1, 'deleted', 'App\\User', 20, '{\"id\":20,\"email\":\"test@123.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":5,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:57:43', '2019-08-30 04:57:43'),
(496, 'App\\User', 1, 'created', 'App\\User', 21, '[]', '{\"employee_id\":\"10\",\"role_id\":\"4\",\"email\":\"test@testing.com\",\"id\":21}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:59:55', '2019-08-30 04:59:55'),
(497, 'App\\User', 1, 'deleted', 'App\\User', 21, '{\"id\":21,\"email\":\"test@testing.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":4,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 04:59:59', '2019-08-30 04:59:59'),
(498, 'App\\User', 1, 'created', 'App\\User', 22, '[]', '{\"employee_id\":\"10\",\"role_id\":\"4\",\"email\":\"manager@manager.com\",\"id\":22}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:03:57', '2019-08-30 05:03:57'),
(499, 'App\\User', 1, 'deleted', 'App\\User', 22, '{\"id\":22,\"email\":\"manager@manager.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":4,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:04:01', '2019-08-30 05:04:01'),
(500, 'App\\User', 1, 'created', 'App\\User', 23, '[]', '{\"employee_id\":\"10\",\"role_id\":\"4\",\"email\":\"test@1234.com\",\"id\":23}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:08:41', '2019-08-30 05:08:41'),
(501, 'App\\User', 1, 'deleted', 'App\\User', 23, '{\"id\":23,\"email\":\"test@1234.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":4,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:08:44', '2019-08-30 05:08:44'),
(502, 'App\\User', 1, 'created', 'App\\User', 24, '[]', '{\"employee_id\":\"10\",\"role_id\":\"2\",\"email\":\"test@123.com\",\"id\":24}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:15:27', '2019-08-30 05:15:27'),
(503, 'App\\User', 1, 'deleted', 'App\\User', 24, '{\"id\":24,\"email\":\"test@123.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":2,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:15:29', '2019-08-30 05:15:29'),
(504, 'App\\User', 1, 'created', 'App\\User', 25, '[]', '{\"employee_id\":\"10\",\"role_id\":\"1\",\"email\":\"test@123.com\",\"id\":25}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:17:01', '2019-08-30 05:17:01'),
(505, 'App\\User', 1, 'deleted', 'App\\User', 25, '{\"id\":25,\"email\":\"test@123.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":1,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:17:03', '2019-08-30 05:17:03'),
(506, 'App\\User', 1, 'created', 'App\\User', 26, '[]', '{\"employee_id\":\"10\",\"role_id\":\"5\",\"email\":\"fakhar@barqaab.com\",\"id\":26}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:20:08', '2019-08-30 05:20:08'),
(507, 'App\\User', 1, 'deleted', 'App\\User', 26, '{\"id\":26,\"email\":\"fakhar@barqaab.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":5,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:20:11', '2019-08-30 05:20:11'),
(508, 'App\\User', 1, 'created', 'App\\User', 27, '[]', '{\"employee_id\":\"10\",\"role_id\":\"4\",\"email\":\"muhamma1drasheed2009@gmaiil.com\",\"id\":27}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:20:50', '2019-08-30 05:20:50'),
(509, 'App\\User', 1, 'deleted', 'App\\User', 27, '{\"id\":27,\"email\":\"muhamma1drasheed2009@gmaiil.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":4,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:20:55', '2019-08-30 05:20:55'),
(510, 'App\\User', 1, 'created', 'App\\User', 28, '[]', '{\"employee_id\":\"10\",\"role_id\":\"4\",\"email\":\"test@123.com\",\"id\":28}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:30:05', '2019-08-30 05:30:05'),
(511, 'App\\User', 1, 'deleted', 'App\\User', 28, '{\"id\":28,\"email\":\"test@123.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":4,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:30:07', '2019-08-30 05:30:07'),
(512, 'App\\User', 1, 'created', 'App\\User', 29, '[]', '{\"employee_id\":\"10\",\"role_id\":\"3\",\"email\":\"testing@123.com\",\"id\":29}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:40:07', '2019-08-30 05:40:07'),
(513, 'App\\User', 1, 'deleted', 'App\\User', 29, '{\"id\":29,\"email\":\"testing@123.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":3,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:40:37', '2019-08-30 05:40:37'),
(514, 'App\\User', 1, 'created', 'App\\User', 30, '[]', '{\"employee_id\":\"10\",\"role_id\":\"5\",\"email\":\"eeee@ee.com\",\"id\":30}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:41:30', '2019-08-30 05:41:30'),
(515, 'App\\User', 1, 'deleted', 'App\\User', 30, '{\"id\":30,\"email\":\"eeee@ee.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":5,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:41:39', '2019-08-30 05:41:39'),
(516, 'App\\User', 1, 'created', 'App\\User', 31, '[]', '{\"employee_id\":\"10\",\"role_id\":\"3\",\"email\":\"test@123.com\",\"id\":31}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:43:08', '2019-08-30 05:43:08'),
(517, 'App\\User', 1, 'deleted', 'App\\User', 31, '{\"id\":31,\"email\":\"test@123.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":3,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 05:43:54', '2019-08-30 05:43:54'),
(518, 'App\\User', 1, 'created', 'App\\User', 32, '[]', '{\"employee_id\":\"10\",\"role_id\":\"5\",\"email\":\"test@123.gmail.com\",\"id\":32}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 06:06:12', '2019-08-30 06:06:12'),
(519, 'App\\User', 1, 'deleted', 'App\\User', 32, '{\"id\":32,\"email\":\"test@123.gmail.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":5,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 06:06:14', '2019-08-30 06:06:14'),
(520, 'App\\User', 1, 'created', 'App\\User', 33, '[]', '{\"employee_id\":\"10\",\"role_id\":\"2\",\"email\":\"muhasheed2009@gmaiil.com\",\"id\":33}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 06:07:22', '2019-08-30 06:07:22'),
(521, 'App\\User', 1, 'deleted', 'App\\User', 33, '{\"id\":33,\"email\":\"muhasheed2009@gmaiil.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":2,\"user_status\":0,\"employee_id\":10,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 06:33:03', '2019-08-30 06:33:03'),
(522, 'App\\User', 1, 'updated', 'App\\User', 8, '{\"role_id\":3}', '{\"role_id\":\"2\"}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 07:06:13', '2019-08-30 07:06:13'),
(523, 'App\\User', 1, 'deleted', 'App\\User', 8, '{\"id\":8,\"email\":\"sohail@barqaab.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":2,\"user_status\":0,\"employee_id\":4,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 07:06:17', '2019-08-30 07:06:17'),
(524, 'App\\User', 1, 'created', 'App\\User', 34, '[]', '{\"employee_id\":\"4\",\"role_id\":\"3\",\"email\":\"sohail@barqaab.com\",\"id\":34}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 07:06:40', '2019-08-30 07:06:40'),
(525, 'App\\User', 1, 'deleted', 'App\\User', 34, '{\"id\":34,\"email\":\"sohail@barqaab.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":3,\"user_status\":0,\"employee_id\":4,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 07:06:46', '2019-08-30 07:06:46'),
(526, 'App\\User', 1, 'deleted', 'App\\User', 5, '{\"id\":5,\"email\":\"muhammadrasheed2009@gmaiil.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":5,\"user_status\":0,\"employee_id\":11,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 07:07:26', '2019-08-30 07:07:26'),
(527, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"AeD8P8KlUp9HiKlyCcokf3n4SLkdMXcU0FidLO0EAFr3yVhjChuQsIaeoSHw\"}', '{\"remember_token\":\"I0M1PQXqBBy2McTz2aT7sssg0MTcZjQsXri6BChuPJa5Ze4dvjRmVRNBS5Nb\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 08:21:25', '2019-08-30 08:21:25'),
(528, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"59nSiwwWhFC3q4uG64j9dFZKDT9Xi9iAGLDorCcR\"}', '{\"session_id\":\"DZhYJVO5o3CAdrKdsp0qc99S2mqsCOMIrFwwygsl\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 22:22:28', '2019-09-01 22:22:28'),
(529, 'App\\User', 1, 'created', 'App\\User', 14, '[]', '{\"employee_id\":\"11\",\"role_id\":\"5\",\"email\":\"muhammadrasheed2009@gmail.com\",\"id\":14}', 'http://localhost/hrms/public/adminInfo/updateActiveUsers/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 22:24:32', '2019-09-01 22:24:32'),
(530, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"8PbUWIZFRSiyxahm0lOwFCU2Ybwe7GJMjHaYLqgf\"}', '{\"session_id\":\"k5EQal7QOW4SCAE5hgZlIIzLMqlSXuu5cJqrG1KG\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 22:41:44', '2019-09-01 22:41:44'),
(531, 'App\\User', 2, 'created', 'App\\employee', 16, '[]', '{\"first_name\":\"Ali\",\"middle_name\":null,\"last_name\":\"Arslan\",\"father_name\":\"Shaokat Ali\",\"date_of_birth\":\"1985-10-01\",\"gender\":\"Male\",\"cnic\":\"33100-3385773-1\",\"cnic_expiry\":\"2015-05-05\",\"employee_no\":null,\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":16}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 22:49:33', '2019-09-01 22:49:33'),
(532, 'App\\User', 2, 'created', 'App\\nationality', 16, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":16,\"id\":16}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 22:49:33', '2019-09-01 22:49:33'),
(533, 'App\\User', 2, 'created', 'App\\picture', 14, '[]', '{\"name\":\"16-Ali  Arslan.png\",\"employee_id\":16,\"type\":\"image\\/png\",\"size\":80213,\"width\":\"100\",\"height\":\"100\",\"id\":14}', 'http://192.168.1.10/hrms/public/editPicture/16', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 22:53:09', '2019-09-01 22:53:09'),
(534, 'App\\User', 2, 'created', 'App\\appointment', 10, '[]', '{\"employee_id\":\"16\",\"reference_no\":\"BQB\\/W\\/01\\/570\\/MA\\/846\",\"appointment_date\":\"2009-08-10\",\"designation\":\"Junior Engineer\",\"expiry_date\":null,\"category\":\"A\",\"grade\":\"8\",\"appointment_letter_type\":\"2 Pages\",\"id\":10}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/16', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 22:56:33', '2019-09-01 22:56:33'),
(535, 'App\\User', 2, 'created', 'App\\salary', 9, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"99906\",\"employee_id\":\"16\",\"salary_remarks\":null,\"id\":9}', 'http://192.168.1.10/hrms/public/editSalary/16', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 22:59:32', '2019-09-01 22:59:32'),
(536, 'App\\User', 2, 'created', 'App\\education', 15, '[]', '{\"degree_name\":\"M.Sc.\",\"institute\":\"UET Lahore\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"16\",\"employee_id\":\"16\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2009\",\"grade\":null,\"country\":\"Pakistan\",\"id\":15}', 'http://192.168.1.10/hrms/public/storeEducation', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 23:01:15', '2019-09-01 23:01:15');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(537, 'App\\User', 2, 'created', 'App\\promotion', 4, '[]', '{\"promoted_designation\":\"Junior Engineer\",\"effective_date\":\"2016-06-09\",\"promotion_remarks\":null,\"employee_id\":\"16\",\"id\":4}', 'http://192.168.1.10/hrms/public/storePromotion?id=16', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 23:03:17', '2019-09-01 23:03:17'),
(538, 'App\\User', 2, 'created', 'App\\salary', 10, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"99906\",\"employee_id\":\"16\",\"promotion_id\":4,\"id\":10}', 'http://192.168.1.10/hrms/public/storePromotion?id=16', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 23:03:17', '2019-09-01 23:03:17'),
(539, 'App\\User', 2, 'created', 'App\\employee', 17, '[]', '{\"first_name\":\"Naveed\",\"middle_name\":null,\"last_name\":\"Anwar\",\"father_name\":\"Muhammad Anwar\",\"date_of_birth\":\"1972-09-09\",\"gender\":\"Male\",\"cnic\":\"35202-2308674-5\",\"cnic_expiry\":\"2020-02-28\",\"employee_no\":null,\"marital_status\":\"Married\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":17}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 23:06:57', '2019-09-01 23:06:57'),
(540, 'App\\User', 2, 'created', 'App\\nationality', 17, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":17,\"id\":17}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 23:06:57', '2019-09-01 23:06:57'),
(541, 'App\\User', 1, 'deleted', 'App\\User', 14, '{\"id\":14,\"email\":\"muhammadrasheed2009@gmail.com\",\"email_verified_at\":null,\"password\":\"$2y$10$ATn.aat\\/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO\",\"role_id\":5,\"user_status\":0,\"employee_id\":11,\"session_id\":null,\"remember_token\":null}', '[]', 'http://localhost/hrms/public/deleteUser/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 23:07:06', '2019-09-01 23:07:06'),
(542, 'App\\User', 2, 'created', 'App\\picture', 15, '[]', '{\"name\":\"17-Naveed  Anwar.png\",\"employee_id\":17,\"type\":\"image\\/png\",\"size\":74461,\"width\":\"100\",\"height\":\"100\",\"id\":15}', 'http://192.168.1.10/hrms/public/editPicture/17', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 23:08:52', '2019-09-01 23:08:52'),
(543, 'App\\User', 2, 'created', 'App\\appointment', 11, '[]', '{\"employee_id\":\"17\",\"reference_no\":\"BQB\\/W\\/01\\/522\\/MA\\/1327\",\"appointment_date\":\"2006-11-08\",\"designation\":\"AutoCAD Operator\",\"expiry_date\":null,\"category\":\"C\",\"grade\":\"12\",\"appointment_letter_type\":\"2 Pages\",\"id\":11}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/17', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 23:14:58', '2019-09-01 23:14:58'),
(544, 'App\\User', 2, 'created', 'App\\salary', 11, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"51420\",\"employee_id\":\"17\",\"salary_remarks\":null,\"id\":11}', 'http://192.168.1.10/hrms/public/editSalary/17', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-01 23:18:10', '2019-09-01 23:18:10'),
(545, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"DZhYJVO5o3CAdrKdsp0qc99S2mqsCOMIrFwwygsl\"}', '{\"session_id\":\"LNm3PM2mvfN9RG648S5z3DpHOc70S2jk2f5MJTVe\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 01:22:04', '2019-09-02 01:22:04'),
(546, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"k5EQal7QOW4SCAE5hgZlIIzLMqlSXuu5cJqrG1KG\"}', '{\"session_id\":\"BF01sR3K0qbnIhRNpHJIRvGlDaejXBkZ1OolITXE\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 01:26:44', '2019-09-02 01:26:44'),
(547, 'App\\User', 2, 'updated', 'App\\appointment', 10, '{\"appointment_date\":\"2009-08-10\",\"category\":\"A\"}', '{\"appointment_date\":\"2009-08-09\",\"category\":\"C\"}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/16', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 01:27:34', '2019-09-02 01:27:34'),
(548, 'App\\User', 1, 'updated', 'App\\appointment', 10, '{\"grade\":\"8\"}', '{\"grade\":\"9\"}', 'http://localhost/hrms/public/hrms/editAppointment/16', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 02:41:16', '2019-09-02 02:41:16'),
(549, 'App\\User', 1, 'updated', 'App\\salary', 9, '{\"total\":99906}', '{\"total\":\"45199\"}', 'http://localhost/hrms/public/editSalary/16', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 02:41:59', '2019-09-02 02:41:59'),
(550, 'App\\User', 1, 'updated', 'App\\promotion', 4, '{\"promotion_remarks\":null}', '{\"promotion_remarks\":\"Office Order No. BQB\\/Admin\\/MA\\/445 dated June 09, 2016\"}', 'http://localhost/hrms/public/editPromotion/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 02:44:00', '2019-09-02 02:44:00'),
(551, 'App\\User', 1, 'created', 'App\\promotion', 5, '[]', '{\"promoted_designation\":\"Junior Engineer (Civil)\",\"effective_date\":\"2015-01-01\",\"promotion_remarks\":\"Regular Category-A Grade-9 with tow increments vide Office Order No. BQB\\/MA\\/09-19\\/115 dated March 09, 2015\",\"employee_id\":\"16\",\"id\":5}', 'http://localhost/hrms/public/storePromotion?id=16', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 02:48:10', '2019-09-02 02:48:10'),
(552, 'App\\User', 1, 'created', 'App\\salary', 12, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"76593\",\"employee_id\":\"16\",\"promotion_id\":5,\"id\":12}', 'http://localhost/hrms/public/storePromotion?id=16', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 02:48:10', '2019-09-02 02:48:10'),
(553, 'App\\User', 1, 'updated', 'App\\promotion', 4, '{\"promotion_remarks\":\"Office Order No. BQB\\/Admin\\/MA\\/445 dated June 09, 2016\"}', '{\"promotion_remarks\":\"from Grade-9 to Grade-8 vide Office Order No. BQB\\/Admin\\/MA\\/445 dated June 09, 2016\"}', 'http://localhost/hrms/public/editPromotion/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 02:49:02', '2019-09-02 02:49:02'),
(554, 'App\\User', 1, 'updated', 'App\\promotion', 4, '{\"promotion_remarks\":\"from Grade-9 to Grade-8 vide Office Order No. BQB\\/Admin\\/MA\\/445 dated June 09, 2016\"}', '{\"promotion_remarks\":\"From Grade-9 to Grade-8 vide Office Order No. BQB\\/Admin\\/MA\\/445 dated June 09, 2016\"}', 'http://localhost/hrms/public/editPromotion/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 02:49:18', '2019-09-02 02:49:18'),
(555, 'App\\User', 1, 'updated', 'App\\salary', 10, '{\"total\":99906}', '{\"total\":\"95293\"}', 'http://localhost/hrms/public/editPromotion/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 02:50:48', '2019-09-02 02:50:48'),
(556, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"LNm3PM2mvfN9RG648S5z3DpHOc70S2jk2f5MJTVe\"}', '{\"session_id\":\"4WonigxqHwMN5ceHTXHwpvmGrNxjPi245217JsBF\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 06:05:32', '2019-09-02 06:05:32'),
(557, 'App\\User', 1, 'updated', 'App\\employee', 17, '{\"marital_status\":\"Married\"}', '{\"marital_status\":\"1\"}', 'http://localhost/hrms/public/editEmployee/17', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:11:17', '2019-09-02 07:11:17'),
(558, 'App\\User', 1, 'updated', 'App\\employee', 17, '{\"marital_status\":\"1\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/17', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:11:41', '2019-09-02 07:11:41'),
(559, 'App\\User', 1, 'updated', 'App\\employee', 16, '{\"marital_status\":\"Married\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/16', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:14:22', '2019-09-02 07:14:22'),
(560, 'App\\User', 1, 'updated', 'App\\employee', 15, '{\"marital_status\":\"Married\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/15', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:15:22', '2019-09-02 07:15:22'),
(561, 'App\\User', 1, 'updated', 'App\\employee', 14, '{\"marital_status\":\"Married\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/14', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:15:47', '2019-09-02 07:15:47'),
(562, 'App\\User', 1, 'updated', 'App\\employee', 1, '{\"marital_status\":\"1\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:16:27', '2019-09-02 07:16:27'),
(563, 'App\\User', 1, 'updated', 'App\\employee', 4, '{\"marital_status\":\"1\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:16:43', '2019-09-02 07:16:43'),
(564, 'App\\User', 1, 'updated', 'App\\employee', 2, '{\"marital_status\":\"1\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/2', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:16:58', '2019-09-02 07:16:58'),
(565, 'App\\User', 1, 'updated', 'App\\employee', 10, '{\"marital_status\":\"1\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:17:12', '2019-09-02 07:17:12'),
(566, 'App\\User', 1, 'updated', 'App\\employee', 11, '{\"marital_status\":\"1\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:17:39', '2019-09-02 07:17:39'),
(567, 'App\\User', 1, 'updated', 'App\\employee', 5, '{\"marital_status\":\"1\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/5', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:18:44', '2019-09-02 07:18:44'),
(568, 'App\\User', 1, 'updated', 'App\\employee', 6, '{\"marital_status\":\"1\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/6', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:19:07', '2019-09-02 07:19:07'),
(569, 'App\\User', 1, 'updated', 'App\\employee', 7, '{\"marital_status\":\"1\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/7', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:19:57', '2019-09-02 07:19:57'),
(570, 'App\\User', 1, 'updated', 'App\\employee', 8, '{\"marital_status\":\"1\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/8', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:20:16', '2019-09-02 07:20:16'),
(571, 'App\\User', 1, 'updated', 'App\\employee', 9, '{\"marital_status\":\"1\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/9', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:20:34', '2019-09-02 07:20:34'),
(572, 'App\\User', 1, 'updated', 'App\\employee', 3, '{\"marital_status\":\"1\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/3', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:20:53', '2019-09-02 07:20:53'),
(573, 'App\\User', 1, 'updated', 'App\\employee', 12, '{\"marital_status\":\"1\"}', '{\"marital_status\":\"2\"}', 'http://localhost/hrms/public/editEmployee/12', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 07:21:32', '2019-09-02 07:21:32'),
(574, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"I0M1PQXqBBy2McTz2aT7sssg0MTcZjQsXri6BChuPJa5Ze4dvjRmVRNBS5Nb\"}', '{\"remember_token\":\"znjNThz1wdU1nuMXUu8wQL2qCJrh0JimQe2Fbk9EMMAy1lWrEeNASOtpEVts\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 08:28:25', '2019-09-02 08:28:25'),
(575, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"4WonigxqHwMN5ceHTXHwpvmGrNxjPi245217JsBF\"}', '{\"session_id\":\"7Iwk2OftrVwrOZUoubCQRpdB1Ht21Pv11daypOE2\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 21:42:21', '2019-09-02 21:42:21'),
(576, 'App\\User', 1, 'created', 'App\\experience', 6, '[]', '{\"employer\":\"BARQAAB\",\"position\":\"Junior Engineer\",\"from\":\"2019-09-01\",\"to\":\"2019-09-07\",\"country\":\"Pakistan\",\"activities\":\"Testing 123\",\"employee_id\":\"16\",\"id\":6}', 'http://localhost/hrms/public/storeExperience', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 22:48:33', '2019-09-02 22:48:33'),
(577, 'App\\User', 1, 'deleted', 'App\\experience', 6, '{\"id\":6,\"employee_id\":16,\"employer\":\"BARQAAB\",\"position\":\"Junior Engineer\",\"activities\":\"Testing 123\",\"from\":\"2019-09-01\",\"to\":\"2019-09-07\",\"project\":null,\"client\":null,\"main_features\":null,\"location\":null,\"country\":\"Pakistan\"}', '[]', 'http://localhost/hrms/public/deleteExperience/6', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 22:51:50', '2019-09-02 22:51:50'),
(578, 'App\\User', 1, 'created', 'App\\experience', 7, '[]', '{\"employer\":\"BARQAAB\",\"position\":\"IT Coordinator\",\"from\":\"2019-09-03\",\"to\":\"2019-09-04\",\"country\":\"Pakistan\",\"activities\":\"test 123\",\"employee_id\":\"16\",\"id\":7}', 'http://localhost/hrms/public/storeExperience', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 22:54:42', '2019-09-02 22:54:42'),
(579, 'App\\User', 1, 'deleted', 'App\\experience', 7, '{\"id\":7,\"employee_id\":16,\"employer\":\"BARQAAB\",\"position\":\"IT Coordinator\",\"activities\":\"test 123\",\"from\":\"2019-09-03\",\"to\":\"2019-09-04\",\"project\":null,\"client\":null,\"main_features\":null,\"location\":null,\"country\":\"Pakistan\"}', '[]', 'http://localhost/hrms/public/deleteExperience/7', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 22:55:01', '2019-09-02 22:55:01'),
(580, 'App\\User', 1, 'created', 'App\\experience', 8, '[]', '{\"employer\":\"BARQAAB\",\"position\":\"IT Coordinator\",\"from\":\"2019-09-03\",\"to\":\"2019-09-14\",\"country\":\"Pakistan\",\"activities\":\"test\",\"employee_id\":\"16\",\"id\":8}', 'http://localhost/hrms/public/storeExperience', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 23:00:30', '2019-09-02 23:00:30'),
(581, 'App\\User', 1, 'deleted', 'App\\experience', 8, '{\"id\":8,\"employee_id\":16,\"employer\":\"BARQAAB\",\"position\":\"IT Coordinator\",\"activities\":\"test\",\"from\":\"2019-09-03\",\"to\":\"2019-09-14\",\"country\":\"Pakistan\"}', '[]', 'http://localhost/hrms/public/deleteExperience/8', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 23:00:55', '2019-09-02 23:00:55'),
(582, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"BF01sR3K0qbnIhRNpHJIRvGlDaejXBkZ1OolITXE\"}', '{\"session_id\":\"sC1KGUySSRz99u5KVMFR0ElOsPRR3zhpADoxrqNW\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 23:09:59', '2019-09-02 23:09:59'),
(583, 'App\\User', 2, 'updated', 'App\\promotion', 5, '{\"effective_date\":\"2015-01-01\",\"promotion_remarks\":\"Regular Category-A Grade-9 with tow increments vide Office Order No. BQB\\/MA\\/09-19\\/115 dated March 09, 2015\"}', '{\"effective_date\":\"2014-12-31\",\"promotion_remarks\":\"Regular Category-A Grade-9 with two increments vide Office Order No. BQB\\/MA\\/09-19\\/115 dated March 09, 2015\"}', 'http://192.168.1.10/hrms/public/editPromotion/5', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 23:12:02', '2019-09-02 23:12:02'),
(584, 'App\\User', 2, 'updated', 'App\\education', 15, '{\"level\":\"16\"}', '{\"level\":\"18\"}', 'http://192.168.1.10/hrms/public/editEducation/15', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 23:14:10', '2019-09-02 23:14:10'),
(585, 'App\\User', 2, 'created', 'App\\posting', 10, '[]', '{\"position\":\"Junior Engineer\",\"posting_date\":\"2009-08-10\",\"manager_id\":\"7\",\"joining_date\":\"2009-08-11\",\"project\":\"Overhead of the Company\",\"location\":\"Lahore\",\"employee_id\":\"16\",\"id\":10}', 'http://192.168.1.10/hrms/public/storePosting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 23:26:41', '2019-09-02 23:26:41'),
(586, 'App\\User', 2, 'created', 'App\\experience', 9, '[]', '{\"employer\":\"Ali Arslan\",\"position\":\"Junior Engineer\",\"from\":\"2007-06-08\",\"to\":\"2019-09-03\",\"country\":\"Pakistan\",\"activities\":null,\"employee_id\":\"16\",\"id\":9}', 'http://192.168.1.10/hrms/public/storeExperience', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-02 23:28:33', '2019-09-02 23:28:33'),
(587, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"session_id\":\"AUWqI6bRIask0FKnxjZ1tjXgBUC3VaeTEMGjnpU5\"}', '{\"session_id\":\"erFzCkUlv9PHoYyMPhyOJr902Hb0RNKV5wUKpY8C\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 01:19:44', '2019-09-03 01:19:44'),
(588, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"sC1KGUySSRz99u5KVMFR0ElOsPRR3zhpADoxrqNW\"}', '{\"session_id\":\"H1Xh2KTb7Dti5CiJTZvoAua47yWbCfW6TJkTqBhT\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 02:39:33', '2019-09-03 02:39:33'),
(589, 'App\\User', 2, 'created', 'App\\posting', 11, '[]', '{\"position\":\"AutoCAD Operator\",\"posting_date\":\"2006-11-07\",\"manager_id\":\"7\",\"joining_date\":\"2006-11-07\",\"project\":\"Overhead of the Company\",\"location\":\"Lahore\",\"employee_id\":\"17\",\"id\":11}', 'http://192.168.1.10/hrms/public/storePosting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 02:43:21', '2019-09-03 02:43:21'),
(590, 'App\\User', 2, 'created', 'App\\education', 16, '[]', '{\"degree_name\":\"FA\",\"institute\":\"Private\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"12\",\"employee_id\":\"17\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"1994\",\"grade\":null,\"country\":\"Pakistan\",\"id\":16}', 'http://192.168.1.10/hrms/public/storeEducation', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 02:44:58', '2019-09-03 02:44:58'),
(591, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"H1Xh2KTb7Dti5CiJTZvoAua47yWbCfW6TJkTqBhT\"}', '{\"session_id\":\"45LjSuFLWJEot2iHXiUMH6RvAnPJV25m4Cn3hi1j\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 04:14:39', '2019-09-03 04:14:39'),
(592, 'App\\User', 1, 'created', 'App\\User', 14, '[]', '{\"employee_id\":\"14\",\"role_id\":\"5\",\"email\":\"sohail@barqaab.com\",\"id\":14}', 'http://localhost/hrms/public/adminInfo/updateUserRights/14', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 06:03:09', '2019-09-03 06:03:09'),
(593, 'App\\User', 14, 'updated', 'App\\User', 14, '{\"session_id\":null}', '{\"session_id\":\"SvF84D3ak2TwP3cUESokVrFiuZLp6ZL3h03DKhXW\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 06:05:24', '2019-09-03 06:05:24'),
(594, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"7Iwk2OftrVwrOZUoubCQRpdB1Ht21Pv11daypOE2\"}', '{\"session_id\":\"arLVIWmtwWtPwoeD1zx79dgXoqZZiTgSeXacf9ry\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 06:22:34', '2019-09-03 06:22:34'),
(595, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"znjNThz1wdU1nuMXUu8wQL2qCJrh0JimQe2Fbk9EMMAy1lWrEeNASOtpEVts\"}', '{\"remember_token\":\"L22XzyIxtoxMxGHJxeVNBfwa70DVewOJxQjuQBjDw7F8DbGs79niWY7kL2ul\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 06:28:35', '2019-09-03 06:28:35'),
(596, 'App\\User', 14, 'updated', 'App\\User', 14, '{\"session_id\":\"SvF84D3ak2TwP3cUESokVrFiuZLp6ZL3h03DKhXW\"}', '{\"session_id\":\"UEK7WBAAGdvpz9vzNPwvvLkINGvTkY7p20sriedB\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 06:31:00', '2019-09-03 06:31:00'),
(597, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"arLVIWmtwWtPwoeD1zx79dgXoqZZiTgSeXacf9ry\"}', '{\"session_id\":\"D2aufxAamvhxNPNGJkYTVzLdy6soZEsa5atQaTtq\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 06:42:43', '2019-09-03 06:42:43'),
(598, 'App\\User', 1, 'updated', 'App\\User', 14, '{\"role_id\":5}', '{\"role_id\":\"4\"}', 'http://localhost/hrms/public/adminInfo/updateUserRights/14', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 07:00:52', '2019-09-03 07:00:52'),
(599, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"L22XzyIxtoxMxGHJxeVNBfwa70DVewOJxQjuQBjDw7F8DbGs79niWY7kL2ul\"}', '{\"remember_token\":\"hV1KgRzKRI5gxBNeXijeiaIHxq3pvRjUrRUcirFJrMeA8QizHJEjzWgQe6yM\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 07:00:56', '2019-09-03 07:00:56'),
(600, 'App\\User', 14, 'updated', 'App\\User', 14, '{\"session_id\":\"UEK7WBAAGdvpz9vzNPwvvLkINGvTkY7p20sriedB\"}', '{\"session_id\":\"bOrlZ1EZCKmG1LtLCTnxcjvcVO7kxp4GWgpYCMEw\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 07:01:04', '2019-09-03 07:01:04'),
(601, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"D2aufxAamvhxNPNGJkYTVzLdy6soZEsa5atQaTtq\"}', '{\"session_id\":\"DSA4pfCnj8R2YrapjZKjATrKtRQmnWGHSPv7UpoV\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 07:07:28', '2019-09-03 07:07:28'),
(602, 'App\\User', 1, 'updated', 'App\\User', 14, '{\"role_id\":4}', '{\"role_id\":\"5\"}', 'http://localhost/hrms/public/adminInfo/updateUserRights/14', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 07:07:41', '2019-09-03 07:07:41'),
(603, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"DSA4pfCnj8R2YrapjZKjATrKtRQmnWGHSPv7UpoV\"}', '{\"session_id\":\"ON4tZOxH6pdMZkp6SaJbdo4xj9BXp7GOgXC7TyMv\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 21:42:21', '2019-09-03 21:42:21'),
(604, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"ON4tZOxH6pdMZkp6SaJbdo4xj9BXp7GOgXC7TyMv\"}', '{\"session_id\":\"ifm6bcRzulyT76tAC5XpokFvp2VPR2js6oMLImCJ\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', NULL, '2019-09-03 22:30:58', '2019-09-03 22:30:58'),
(605, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"hV1KgRzKRI5gxBNeXijeiaIHxq3pvRjUrRUcirFJrMeA8QizHJEjzWgQe6yM\"}', '{\"remember_token\":\"NFbir1lgdwPNCEtMr7OqHbzjAiL0N3s9gqA86N6ODBkwcmiDXhXgnkKvoTNJ\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', NULL, '2019-09-03 22:31:56', '2019-09-03 22:31:56'),
(606, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"ifm6bcRzulyT76tAC5XpokFvp2VPR2js6oMLImCJ\"}', '{\"session_id\":\"5YYUj5JXl6rBhKj6aEjYw26K0edz9QJjNTYUrcx9\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 22:51:14', '2019-09-03 22:51:14'),
(607, 'App\\User', 14, 'updated', 'App\\User', 14, '{\"session_id\":\"bOrlZ1EZCKmG1LtLCTnxcjvcVO7kxp4GWgpYCMEw\"}', '{\"session_id\":\"XxgECysIQ7DyuMXOJQXA44wMuZMXt8QbDq2BGKF6\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', NULL, '2019-09-03 23:21:07', '2019-09-03 23:21:07'),
(608, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"session_id\":\"erFzCkUlv9PHoYyMPhyOJr902Hb0RNKV5wUKpY8C\"}', '{\"session_id\":\"amW1vVtmokErOt3o8Wkdq555ksOtlqmmWxOPU3DU\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:25:08', '2019-09-03 23:25:08'),
(609, 'App\\User', 13, 'created', 'App\\document', 79, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1567571198-17-CNIC Front.pdf\",\"file_path\":\"documents\\/17_Naveed__Anwar\\/\",\"employee_id\":17,\"type\":\"application\\/pdf\",\"id\":79}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:26:39', '2019-09-03 23:26:39'),
(610, 'App\\User', 13, 'created', 'App\\document', 80, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1567571228-17-HR Form.pdf\",\"file_path\":\"documents\\/17_Naveed__Anwar\\/\",\"employee_id\":17,\"type\":\"application\\/pdf\",\"id\":80}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:27:08', '2019-09-03 23:27:08'),
(611, 'App\\User', 13, 'deleted', 'App\\document', 79, '{\"id\":79,\"employee_id\":17,\"document_name\":\"CNIC Front\",\"file_name\":\"1567571198-17-CNIC Front.pdf\",\"file_path\":\"documents\\/17_Naveed__Anwar\\/\",\"type\":\"application\\/pdf\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/deleteDocument/79', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:28:39', '2019-09-03 23:28:39'),
(612, 'App\\User', 13, 'deleted', 'App\\document', 80, '{\"id\":80,\"employee_id\":17,\"document_name\":\"HR Form\",\"file_name\":\"1567571228-17-HR Form.pdf\",\"file_path\":\"documents\\/17_Naveed__Anwar\\/\",\"type\":\"application\\/pdf\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/deleteDocument/80', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:28:47', '2019-09-03 23:28:47'),
(613, 'App\\User', 13, 'created', 'App\\document', 81, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1567571343-17-CNIC Front.JPG\",\"file_path\":\"documents\\/17_Naveed__Anwar\\/\",\"employee_id\":17,\"type\":\"image\\/jpeg\",\"id\":81}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:29:03', '2019-09-03 23:29:03'),
(614, 'App\\User', 13, 'created', 'App\\document', 82, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1567571356-17-CNIC Back.JPG\",\"file_path\":\"documents\\/17_Naveed__Anwar\\/\",\"employee_id\":17,\"type\":\"image\\/jpeg\",\"id\":82}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:29:16', '2019-09-03 23:29:16'),
(615, 'App\\User', 13, 'created', 'App\\document', 83, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1567571390-17-HR Form.pdf\",\"file_path\":\"documents\\/17_Naveed__Anwar\\/\",\"employee_id\":17,\"type\":\"application\\/pdf\",\"id\":83}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:29:50', '2019-09-03 23:29:50'),
(616, 'App\\User', 13, 'created', 'App\\document', 84, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1567571717-16-CNIC Front.JPG\",\"file_path\":\"documents\\/16_Ali__Arslan\\/\",\"employee_id\":16,\"type\":\"image\\/jpeg\",\"id\":84}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:35:17', '2019-09-03 23:35:17'),
(617, 'App\\User', 13, 'created', 'App\\document', 85, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1567571730-16-CNIC Back.JPG\",\"file_path\":\"documents\\/16_Ali__Arslan\\/\",\"employee_id\":16,\"type\":\"image\\/jpeg\",\"id\":85}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:35:31', '2019-09-03 23:35:31'),
(618, 'App\\User', 13, 'created', 'App\\document', 86, '[]', '{\"document_name\":\"Appointment Letter\",\"file_name\":\"1567571828-16-Appointment Letter.pdf\",\"file_path\":\"documents\\/16_Ali__Arslan\\/\",\"employee_id\":16,\"type\":\"application\\/pdf\",\"id\":86}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:37:08', '2019-09-03 23:37:08'),
(619, 'App\\User', 13, 'created', 'App\\document', 87, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1567571847-16-HR Form.pdf\",\"file_path\":\"documents\\/16_Ali__Arslan\\/\",\"employee_id\":16,\"type\":\"application\\/pdf\",\"id\":87}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:37:27', '2019-09-03 23:37:27'),
(620, 'App\\User', 13, 'created', 'App\\document', 88, '[]', '{\"document_name\":\"Degrees\",\"file_name\":\"1567571900-16-Degrees.pdf\",\"file_path\":\"documents\\/16_Ali__Arslan\\/\",\"employee_id\":16,\"type\":\"application\\/pdf\",\"id\":88}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:38:20', '2019-09-03 23:38:20'),
(621, 'App\\User', 13, 'created', 'App\\document', 89, '[]', '{\"document_name\":\"Cat-A Order\",\"file_name\":\"1567571996-16-Cat-A Order.pdf\",\"file_path\":\"documents\\/16_Ali__Arslan\\/\",\"employee_id\":16,\"type\":\"application\\/pdf\",\"id\":89}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:39:56', '2019-09-03 23:39:56'),
(622, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"45LjSuFLWJEot2iHXiUMH6RvAnPJV25m4Cn3hi1j\"}', '{\"session_id\":\"v3HlXkaVJVbo8uh3yDAMXXyd6d0ZXUDYaoEjUFPI\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:45:08', '2019-09-03 23:45:08'),
(623, 'App\\User', 13, 'created', 'App\\document', 90, '[]', '{\"document_name\":\"Educational Certificates\",\"file_name\":\"1567572370-16-Educational Certificates.pdf\",\"file_path\":\"documents\\/16_Ali__Arslan\\/\",\"employee_id\":16,\"type\":\"application\\/pdf\",\"id\":90}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:46:10', '2019-09-03 23:46:10'),
(624, 'App\\User', 2, 'created', 'App\\appointment', 12, '[]', '{\"employee_id\":\"3\",\"reference_no\":\"BQB\\/PF\\/115\",\"appointment_date\":\"2000-08-09\",\"designation\":\"Computer Processing Officer\",\"expiry_date\":null,\"category\":\"C\",\"grade\":\"12\",\"appointment_letter_type\":\"1 Page\",\"id\":12}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/3', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:58:16', '2019-09-03 23:58:16'),
(625, 'App\\User', 2, 'created', 'App\\salary', 13, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"6000\",\"employee_id\":\"3\",\"salary_remarks\":null,\"id\":13}', 'http://192.168.1.10/hrms/public/editSalary/3', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:58:44', '2019-09-03 23:58:44'),
(626, 'App\\User', 13, 'created', 'App\\document', 91, '[]', '{\"document_name\":\"Appointment Letter\",\"file_name\":\"1567573158-13-Appointment Letter.pdf\",\"file_path\":\"documents\\/13_Muhammad__Taufeeq\\/\",\"employee_id\":13,\"type\":\"application\\/pdf\",\"id\":91}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-03 23:59:19', '2019-09-03 23:59:19'),
(627, 'App\\User', 2, 'created', 'App\\posting', 12, '[]', '{\"position\":\"Computer Processing Officer\",\"posting_date\":\"2000-08-09\",\"manager_id\":\"7\",\"joining_date\":\"2019-08-09\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"3\",\"id\":12}', 'http://192.168.1.10/hrms/public/storePosting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:00:52', '2019-09-04 00:00:52'),
(628, 'App\\User', 2, 'created', 'App\\education', 17, '[]', '{\"degree_name\":\"FA\",\"institute\":\"Govt. Science College, Lahore\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"12\",\"employee_id\":\"3\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"1993\",\"grade\":null,\"country\":\"Pakistan\",\"id\":17}', 'http://192.168.1.10/hrms/public/storeEducation', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:02:47', '2019-09-04 00:02:47'),
(629, 'App\\User', 2, 'created', 'App\\experience', 10, '[]', '{\"employer\":\"Muhammad Tahir Khan\",\"position\":\"Computer Operator Officer\",\"from\":\"1997-05-13\",\"to\":\"2019-09-04\",\"country\":\"Pakistan\",\"activities\":null,\"employee_id\":\"3\",\"id\":10}', 'http://192.168.1.10/hrms/public/storeExperience', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:05:12', '2019-09-04 00:05:12'),
(630, 'App\\User', 13, 'created', 'App\\document', 92, '[]', '{\"document_name\":\"Appointment Letter\",\"file_name\":\"1567573512-14-Appointment Letter.pdf\",\"file_path\":\"documents\\/14_Kabir__Ahmad\\/\",\"employee_id\":14,\"type\":\"application\\/pdf\",\"id\":92}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:05:12', '2019-09-04 00:05:12'),
(631, 'App\\User', 1, 'updated', 'App\\User', 14, '{\"role_id\":5}', '{\"role_id\":\"4\"}', 'http://localhost/hrms/public/adminInfo/updateUserRights/14', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:05:38', '2019-09-04 00:05:38'),
(632, 'App\\User', 13, 'created', 'App\\document', 93, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1567573599-14-HR Form.pdf\",\"file_path\":\"documents\\/14_Kabir__Ahmad\\/\",\"employee_id\":14,\"type\":\"application\\/pdf\",\"id\":93}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:06:40', '2019-09-04 00:06:40'),
(633, 'App\\User', 13, 'created', 'App\\document', 94, '[]', '{\"document_name\":\"Confirmation of Services\",\"file_name\":\"1567573724-14-Confirmation of Services.pdf\",\"file_path\":\"documents\\/14_Kabir__Ahmad\\/\",\"employee_id\":14,\"type\":\"application\\/pdf\",\"id\":94}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:08:44', '2019-09-04 00:08:44'),
(634, 'App\\User', 2, 'created', 'App\\promotion', 6, '[]', '{\"promoted_designation\":\"Computer Operator Officer\",\"effective_date\":\"2014-01-16\",\"promotion_remarks\":null,\"employee_id\":\"3\",\"id\":6}', 'http://192.168.1.10/hrms/public/storePromotion?id=3', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:15:38', '2019-09-04 00:15:38'),
(635, 'App\\User', 2, 'created', 'App\\salary', 14, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"19500\",\"employee_id\":\"3\",\"promotion_id\":6,\"id\":14}', 'http://192.168.1.10/hrms/public/storePromotion?id=3', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:15:38', '2019-09-04 00:15:38'),
(636, 'App\\User', 13, 'created', 'App\\document', 95, '[]', '{\"document_name\":\"Appointment Letter\",\"file_name\":\"1567574171-10-Appointment Letter.pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"employee_id\":10,\"type\":\"application\\/pdf\",\"id\":95}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:16:11', '2019-09-04 00:16:11'),
(637, 'App\\User', 13, 'deleted', 'App\\document', 75, '{\"id\":75,\"employee_id\":10,\"document_name\":\"Appointment Letter\",\"file_name\":\"1566898274-10-Appointment Letter.pdf\",\"file_path\":\"documents\\/10_Fakhar-e-Alam__Bhatti\\/\",\"type\":\"application\\/pdf\",\"reference_no\":null,\"date\":\"2014-07-16\"}', '[]', 'http://192.168.1.10/hrms/public/deleteDocument/75', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:17:51', '2019-09-04 00:17:51'),
(638, 'App\\User', 2, 'created', 'App\\contact', 9, '[]', '{\"employee_id\":\"3\",\"type\":\"0\",\"house\":\"H. No. E-68, Qadir Colony, Waltan Road, Lahore\",\"street\":null,\"town\":\"Qadir Colony, Waltan Road, Lahore\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country\":\"Pakistan\",\"mobile\":\"0333-4238066\",\"landline\":null,\"id\":9}', 'http://192.168.1.10/hrms/public/editPermanentAddress/3', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:18:18', '2019-09-04 00:18:18'),
(639, 'App\\User', 2, 'created', 'App\\emergency_contact', 4, '[]', '{\"name\":\"Muhammad Sheraz Khan\",\"relation\":\"Brother\",\"mobile\":\"0333-4362135\",\"landline\":null,\"employee_id\":\"3\",\"id\":4}', 'http://192.168.1.10/hrms/public/storeEmergency', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:20:10', '2019-09-04 00:20:10'),
(640, 'App\\User', 13, 'deleted', 'App\\document', 85, '{\"id\":85,\"employee_id\":16,\"document_name\":\"CNIC Back\",\"file_name\":\"1567571730-16-CNIC Back.JPG\",\"file_path\":\"documents\\/16_Ali__Arslan\\/\",\"type\":\"image\\/jpeg\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/deleteDocument/85', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:24:01', '2019-09-04 00:24:01'),
(641, 'App\\User', 13, 'deleted', 'App\\document', 84, '{\"id\":84,\"employee_id\":16,\"document_name\":\"CNIC Front\",\"file_name\":\"1567571717-16-CNIC Front.JPG\",\"file_path\":\"documents\\/16_Ali__Arslan\\/\",\"type\":\"image\\/jpeg\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/deleteDocument/84', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:24:10', '2019-09-04 00:24:10'),
(642, 'App\\User', 13, 'created', 'App\\document', 96, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1567574677-16-CNIC Front.JPG\",\"file_path\":\"documents\\/16_Ali__Arslan\\/\",\"employee_id\":16,\"type\":\"image\\/jpeg\",\"id\":96}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:24:37', '2019-09-04 00:24:37'),
(643, 'App\\User', 13, 'deleted', 'App\\document', 96, '{\"id\":96,\"employee_id\":16,\"document_name\":\"CNIC Front\",\"file_name\":\"1567574677-16-CNIC Front.JPG\",\"file_path\":\"documents\\/16_Ali__Arslan\\/\",\"type\":\"image\\/jpeg\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/deleteDocument/96', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:24:54', '2019-09-04 00:24:54'),
(644, 'App\\User', 1, 'updated', 'App\\salary', 14, '{\"total\":19500}', '{\"total\":\"18192\"}', 'http://localhost/hrms/public/editPromotion/6', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:28:03', '2019-09-04 00:28:03'),
(645, 'App\\User', 13, 'created', 'App\\document', 97, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1567575189-15-CNIC Front.JPG\",\"file_path\":\"documents\\/15_Nazir__Ahmad\\/\",\"employee_id\":15,\"type\":\"image\\/jpeg\",\"id\":97}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:33:10', '2019-09-04 00:33:10'),
(646, 'App\\User', 13, 'created', 'App\\document', 98, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1567575203-15-HR Form.pdf\",\"file_path\":\"documents\\/15_Nazir__Ahmad\\/\",\"employee_id\":15,\"type\":\"application\\/pdf\",\"id\":98}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:33:23', '2019-09-04 00:33:23'),
(647, 'App\\User', 13, 'created', 'App\\document', 99, '[]', '{\"document_name\":\"Cat-B Order\",\"file_name\":\"1567575249-15-Cat-B Order.pdf\",\"file_path\":\"documents\\/15_Nazir__Ahmad\\/\",\"employee_id\":15,\"type\":\"application\\/pdf\",\"id\":99}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 00:34:09', '2019-09-04 00:34:09'),
(648, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"NFbir1lgdwPNCEtMr7OqHbzjAiL0N3s9gqA86N6ODBkwcmiDXhXgnkKvoTNJ\"}', '{\"remember_token\":\"iRulIZxsyaepV0ksGqGAtniCelUjPrCWwsBLTtc3DRCDnhwL503gHAl8VTmk\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 08:22:46', '2019-09-04 08:22:46'),
(649, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"5YYUj5JXl6rBhKj6aEjYw26K0edz9QJjNTYUrcx9\"}', '{\"session_id\":\"nUvHD5Qx5KxuvggDo6V79dzd98N3k8rDhmytBEeA\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 22:06:25', '2019-09-04 22:06:25');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(650, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"v3HlXkaVJVbo8uh3yDAMXXyd6d0ZXUDYaoEjUFPI\"}', '{\"session_id\":\"coZXfZJIONJh3VgZId034lR3tUWUDGup5YeTMzqF\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 23:50:00', '2019-09-04 23:50:00'),
(651, 'App\\User', 1, 'updated', 'App\\promotion', 6, '{\"effective_date\":\"2014-01-16\",\"promotion_remarks\":null}', '{\"effective_date\":\"2005-05-17\",\"promotion_remarks\":\"Upgrading from Grade-11 to Grade-10 vide Office Order No. BQB\\/A\\/03\\/05\\/MA\\/374 dated May 17, 2005\"}', 'http://localhost/hrms/public/editPromotion/6', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-04 23:54:51', '2019-09-04 23:54:51'),
(652, 'App\\User', 2, 'created', 'App\\employee', 18, '[]', '{\"first_name\":\"Muhammad\",\"middle_name\":\"Rafiq\",\"last_name\":\"Khan\",\"father_name\":\"Gul Hazrat\",\"date_of_birth\":\"1982-09-15\",\"gender\":\"Male\",\"cnic\":\"35202-1571812-7\",\"cnic_expiry\":\"2023-01-31\",\"employee_no\":null,\"marital_status_id\":\"2\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":18}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 00:18:00', '2019-09-05 00:18:00'),
(653, 'App\\User', 2, 'created', 'App\\nationality', 18, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":18,\"id\":18}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 00:18:00', '2019-09-05 00:18:00'),
(654, 'App\\User', 2, 'created', 'App\\picture', 16, '[]', '{\"name\":\"18-Muhammad Rafiq Khan.png\",\"employee_id\":18,\"type\":\"image\\/png\",\"size\":84018,\"width\":\"100\",\"height\":\"100\",\"id\":16}', 'http://192.168.1.10/hrms/public/editPicture/18', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 00:29:38', '2019-09-05 00:29:38'),
(655, 'App\\User', 2, 'created', 'App\\appointment', 13, '[]', '{\"employee_id\":\"18\",\"reference_no\":\"A\\/03\\/42\\/MA\\/1239\",\"appointment_date\":\"2005-12-31\",\"designation\":\"Utility Person\",\"expiry_date\":null,\"category\":\"C\",\"grade\":\"14\",\"appointment_letter_type\":\"2 Pages\",\"id\":13}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/18', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 00:52:43', '2019-09-05 00:52:43'),
(656, 'App\\User', 2, 'created', 'App\\salary', 15, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"7590\",\"employee_id\":\"18\",\"salary_remarks\":null,\"id\":15}', 'http://192.168.1.10/hrms/public/editSalary/18', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 00:54:50', '2019-09-05 00:54:50'),
(657, 'App\\User', 2, 'created', 'App\\posting', 13, '[]', '{\"position\":\"Utility Person\",\"posting_date\":\"2005-12-31\",\"manager_id\":\"7\",\"joining_date\":\"2005-12-31\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"18\",\"id\":13}', 'http://192.168.1.10/hrms/public/storePosting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 00:56:39', '2019-09-05 00:56:39'),
(658, 'App\\User', 2, 'created', 'App\\contact', 10, '[]', '{\"employee_id\":\"18\",\"type\":\"0\",\"house\":\"Tormung P.O. Box Khas, Tehsil Khel, District Upper Dir\",\"street\":null,\"town\":\"Dir\",\"tehsil\":null,\"city\":\"Upper Dir\",\"province\":\"Punjab\",\"country\":\"Pakistan\",\"mobile\":\"03144075782\",\"landline\":null,\"id\":10}', 'http://192.168.1.10/hrms/public/editPermanentAddress/18', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 01:00:29', '2019-09-05 01:00:29'),
(659, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"session_id\":\"amW1vVtmokErOt3o8Wkdq555ksOtlqmmWxOPU3DU\"}', '{\"session_id\":\"7SjcPu7XWAyAupoR5siGlbNmm2HcKSZqEiBo7QqS\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 01:01:11', '2019-09-05 01:01:11'),
(660, 'App\\User', 14, 'updated', 'App\\User', 14, '{\"session_id\":\"XxgECysIQ7DyuMXOJQXA44wMuZMXt8QbDq2BGKF6\"}', '{\"session_id\":\"VnWzgaj2mEsX6pi5pF8iOyyAJMGXlKsD2MTttHfc\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', NULL, '2019-09-05 01:23:16', '2019-09-05 01:23:16'),
(661, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"iRulIZxsyaepV0ksGqGAtniCelUjPrCWwsBLTtc3DRCDnhwL503gHAl8VTmk\"}', '{\"remember_token\":\"Bg7KKUI4pHZFWWkwXRERl2SVDyCNZYHOPaQ1l2M6aXsSJYYPdskm74OAXCR8\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 08:20:40', '2019-09-05 08:20:40'),
(662, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"nUvHD5Qx5KxuvggDo6V79dzd98N3k8rDhmytBEeA\"}', '{\"session_id\":\"2iKqChK8bEzi1yLRpCJevLJGyPJqsbklT9m4dgFA\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 22:20:20', '2019-09-05 22:20:20'),
(663, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"2iKqChK8bEzi1yLRpCJevLJGyPJqsbklT9m4dgFA\"}', '{\"session_id\":\"KErcv8X2vQDpLuc1pLxJBrnTLsWLCfkLgXIzyquV\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-06 05:37:36', '2019-09-06 05:37:36'),
(664, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 1, '[]', '{\"employee_id\":\"3\",\"leave_type_id\":\"3\",\"balance\":\"10\",\"effective_date\":\"2019-09-20\",\"id\":1}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-06 06:39:55', '2019-09-06 06:39:55'),
(665, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 2, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"3\",\"balance\":\"20\",\"effective_date\":\"2019-09-06\",\"id\":2}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-06 07:12:37', '2019-09-06 07:12:37'),
(666, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 3, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"4\",\"balance\":\"60\",\"effective_date\":\"2019-09-06\",\"id\":3}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-06 07:12:56', '2019-09-06 07:12:56'),
(667, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"KErcv8X2vQDpLuc1pLxJBrnTLsWLCfkLgXIzyquV\"}', '{\"session_id\":\"rtXYgPt05RTPkYETWH04uNFFmAruLLb7reYsRPdF\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-10 23:43:16', '2019-09-10 23:43:16'),
(668, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"rtXYgPt05RTPkYETWH04uNFFmAruLLb7reYsRPdF\"}', '{\"session_id\":\"a69Zzsh1iD3jLqJpjsy81cNtxknWJHYpzEefCwNB\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 05:53:28', '2019-09-11 05:53:28'),
(669, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 4, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"4\",\"balance\":\"60\",\"effective_date\":\"2019-09-06\",\"id\":4}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 07:59:14', '2019-09-11 07:59:14'),
(670, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"Bg7KKUI4pHZFWWkwXRERl2SVDyCNZYHOPaQ1l2M6aXsSJYYPdskm74OAXCR8\"}', '{\"remember_token\":\"L6dVlLT0OGdYgJQ3Z7zWGmHE16nqYNcRhw9fMrAWguzbbpTxJIClTbOO0ay1\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 08:39:41', '2019-09-11 08:39:41'),
(671, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"a69Zzsh1iD3jLqJpjsy81cNtxknWJHYpzEefCwNB\"}', '{\"session_id\":\"EgMWDgOjn12wpfxKll2lVknaLwQ2eOsUSwZqpC1U\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 21:13:36', '2019-09-11 21:13:36'),
(672, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 5, '[]', '{\"employee_id\":\"3\",\"leave_type_id\":\"4\",\"balance\":\"20\",\"effective_date\":\"2019-09-20\",\"id\":5}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 21:41:49', '2019-09-11 21:41:49'),
(673, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 6, '[]', '{\"employee_id\":\"2\",\"leave_type_id\":\"3\",\"balance\":\"20\",\"effective_date\":\"2019-09-12\",\"id\":6}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 21:43:56', '2019-09-11 21:43:56'),
(674, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 7, '[]', '{\"employee_id\":\"2\",\"leave_type_id\":\"3\",\"balance\":\"10\",\"effective_date\":\"2019-09-12\",\"id\":7}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 21:44:36', '2019-09-11 21:44:36'),
(675, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 8, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"4\",\"balance\":\"60\",\"effective_date\":\"2019-09-06\",\"id\":8}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 21:48:04', '2019-09-11 21:48:04'),
(676, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 9, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"4\",\"balance\":\"60\",\"effective_date\":\"2019-09-06\",\"id\":9}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 21:49:52', '2019-09-11 21:49:52'),
(677, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 10, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"3\",\"balance\":\"20\",\"effective_date\":\"2019-09-06\",\"id\":10}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 21:50:45', '2019-09-11 21:50:45'),
(678, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 11, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"3\",\"balance\":\"20\",\"effective_date\":\"2019-09-06\",\"id\":11}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 22:04:08', '2019-09-11 22:04:08'),
(679, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 2, '{\"balance\":20}', '{\"balance\":\"15\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 22:08:25', '2019-09-11 22:08:25'),
(680, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 2, '{\"effective_date\":\"2019-09-06\"}', '{\"effective_date\":\"2019-09-12\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 22:08:52', '2019-09-11 22:08:52'),
(681, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 12, '[]', '{\"employee_id\":\"2\",\"leave_type_id\":\"4\",\"balance\":\"4\",\"effective_date\":\"2019-09-12\",\"id\":12}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 22:44:45', '2019-09-11 22:44:45'),
(682, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 3, '{\"balance\":60}', '{\"balance\":\"50\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 22:54:10', '2019-09-11 22:54:10'),
(683, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 3, '{\"balance\":60}', '{\"balance\":\"50\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 22:54:10', '2019-09-11 22:54:10'),
(684, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 2, '{\"balance\":15}', '{\"balance\":\"11\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 22:55:01', '2019-09-11 22:55:01'),
(685, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 3, '{\"balance\":50}', '{\"balance\":\"5\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 22:56:49', '2019-09-11 22:56:49'),
(686, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 11, '{\"balance\":20}', '{\"balance\":\"21\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 22:56:56', '2019-09-11 22:56:56'),
(687, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 2, '{\"balance\":11}', '{\"balance\":\"10\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 22:58:17', '2019-09-11 22:58:17'),
(688, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 11, '{\"balance\":21}', '{\"balance\":\"24\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-11 22:58:30', '2019-09-11 22:58:30'),
(689, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 11, '{\"balance\":24}', '{\"balance\":\"21\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 00:51:02', '2019-09-12 00:51:02'),
(690, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 11, '{\"balance\":21}', '{\"balance\":\"28\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 00:51:12', '2019-09-12 00:51:12'),
(691, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 2, '{\"balance\":10}', '{\"balance\":\"6\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 00:51:55', '2019-09-12 00:51:55'),
(692, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 2, '{\"balance\":6}', '{\"balance\":\"11\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 00:52:03', '2019-09-12 00:52:03'),
(693, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 2, '{\"balance\":11}', '{\"balance\":\"16\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 00:52:12', '2019-09-12 00:52:12'),
(694, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"session_id\":\"coZXfZJIONJh3VgZId034lR3tUWUDGup5YeTMzqF\"}', '{\"session_id\":\"hfX19Q5OnFHJrcFBt0XFvfSdZa2moziXT18lh1kc\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:06:03', '2019-09-12 02:06:03'),
(695, 'App\\User', 2, 'created', 'App\\employee', 19, '[]', '{\"first_name\":\"Noman\",\"middle_name\":null,\"last_name\":\"Ahmad\",\"father_name\":\"Farooq Ahmad\",\"date_of_birth\":\"1983-12-06\",\"gender\":\"Male\",\"cnic\":\"34502-4662986-3\",\"cnic_expiry\":\"2014-07-22\",\"employee_no\":null,\"marital_status_id\":\"2\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":19}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:09:28', '2019-09-12 02:09:28'),
(696, 'App\\User', 2, 'created', 'App\\nationality', 19, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":19,\"id\":19}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:09:28', '2019-09-12 02:09:28'),
(697, 'App\\User', 2, 'created', 'App\\picture', 17, '[]', '{\"name\":\"19-Noman  Ahmad.png\",\"employee_id\":19,\"type\":\"image\\/png\",\"size\":96894,\"width\":\"100\",\"height\":\"100\",\"id\":17}', 'http://192.168.1.10/hrms/public/editPicture/19', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:11:41', '2019-09-12 02:11:41'),
(698, 'App\\User', 2, 'created', 'App\\appointment', 14, '[]', '{\"employee_id\":\"19\",\"reference_no\":\"BQB\\/W\\/01\\/570\\/MA\\/897\",\"appointment_date\":\"2009-08-19\",\"designation\":\"Computer Operator\",\"expiry_date\":null,\"category\":\"C\",\"grade\":null,\"appointment_letter_type\":\"1 Page\",\"id\":14}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/19', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:15:53', '2019-09-12 02:15:53'),
(699, 'App\\User', 2, 'created', 'App\\salary', 16, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"13500\",\"employee_id\":\"19\",\"salary_remarks\":null,\"id\":16}', 'http://192.168.1.10/hrms/public/editSalary/19', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:16:12', '2019-09-12 02:16:12'),
(700, 'App\\User', 2, 'created', 'App\\posting', 14, '[]', '{\"position\":\"Computer Operator\",\"posting_date\":\"2009-08-19\",\"manager_id\":\"7\",\"joining_date\":\"2009-08-19\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"19\",\"id\":14}', 'http://192.168.1.10/hrms/public/storePosting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:17:37', '2019-09-12 02:17:37'),
(701, 'App\\User', 2, 'created', 'App\\education', 18, '[]', '{\"degree_name\":\"B.A\",\"institute\":\"Punjab University\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"14\",\"employee_id\":\"19\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2003\",\"grade\":null,\"country\":\"Pakistan\",\"id\":18}', 'http://192.168.1.10/hrms/public/storeEducation', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:19:08', '2019-09-12 02:19:08'),
(702, 'App\\User', 2, 'created', 'App\\experience', 11, '[]', '{\"employer\":\"Noman Ahmad\",\"position\":\"Computer Operator\",\"from\":\"2009-08-19\",\"to\":\"2019-09-12\",\"country\":\"Pakistan\",\"activities\":null,\"employee_id\":\"19\",\"id\":11}', 'http://192.168.1.10/hrms/public/storeExperience', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:20:34', '2019-09-12 02:20:34'),
(703, 'App\\User', 2, 'created', 'App\\promotion', 7, '[]', '{\"promoted_designation\":\"Computer Operator\",\"effective_date\":\"2015-03-09\",\"promotion_remarks\":null,\"employee_id\":\"19\",\"id\":7}', 'http://192.168.1.10/hrms/public/storePromotion?id=19', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:22:04', '2019-09-12 02:22:04'),
(704, 'App\\User', 2, 'created', 'App\\salary', 17, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"32219\",\"employee_id\":\"19\",\"promotion_id\":7,\"id\":17}', 'http://192.168.1.10/hrms/public/storePromotion?id=19', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:22:04', '2019-09-12 02:22:04'),
(705, 'App\\User', 2, 'created', 'App\\contact', 11, '[]', '{\"employee_id\":\"19\",\"type\":\"0\",\"house\":\"House No. 03, Bismillah 1, Johar Town Lahore\",\"street\":null,\"town\":\"Village Gumtala Post Office Same Tehsil Shakargarh\",\"tehsil\":null,\"city\":\"Norowal\",\"province\":\"Punjab\",\"country\":\"Pakistan\",\"mobile\":\"03135663235\",\"landline\":null,\"id\":11}', 'http://192.168.1.10/hrms/public/editPermanentAddress/19', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:24:29', '2019-09-12 02:24:29'),
(706, 'App\\User', 2, 'created', 'App\\employee', 20, '[]', '{\"first_name\":\"Muhammad\",\"middle_name\":null,\"last_name\":\"Ashraf\",\"father_name\":\"Rahmat Ali\",\"date_of_birth\":\"1966-05-14\",\"gender\":\"Male\",\"cnic\":\"35202-3982076-9\",\"cnic_expiry\":\"2015-12-31\",\"employee_no\":null,\"marital_status_id\":\"2\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":20}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:34:37', '2019-09-12 02:34:37'),
(707, 'App\\User', 2, 'created', 'App\\nationality', 20, '[]', '{\"nationality_name\":\"Pakistan\",\"employee_id\":20,\"id\":20}', 'http://192.168.1.10/hrms/public/storeEmployee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:34:37', '2019-09-12 02:34:37'),
(708, 'App\\User', 2, 'created', 'App\\picture', 18, '[]', '{\"name\":\"20-Muhammad  Ashraf.png\",\"employee_id\":20,\"type\":\"image\\/png\",\"size\":39311,\"width\":\"100\",\"height\":\"100\",\"id\":18}', 'http://192.168.1.10/hrms/public/editPicture/20', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:35:14', '2019-09-12 02:35:14'),
(709, 'App\\User', 2, 'created', 'App\\appointment', 15, '[]', '{\"employee_id\":\"20\",\"reference_no\":\"BQB\\/PF\\/272\",\"appointment_date\":\"2000-12-26\",\"designation\":\"Utility Person\",\"expiry_date\":null,\"category\":\"C\",\"grade\":null,\"appointment_letter_type\":\"2 Pages\",\"id\":15}', 'http://192.168.1.10/hrms/public/hrms/editAppointment/20', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:37:19', '2019-09-12 02:37:19'),
(710, 'App\\User', 2, 'created', 'App\\salary', 18, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"4000\",\"employee_id\":\"20\",\"salary_remarks\":null,\"id\":18}', 'http://192.168.1.10/hrms/public/editSalary/20', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:37:32', '2019-09-12 02:37:32'),
(711, 'App\\User', 2, 'created', 'App\\promotion', 8, '[]', '{\"promoted_designation\":\"Naib Qasid\",\"effective_date\":\"2001-06-23\",\"promotion_remarks\":null,\"employee_id\":\"20\",\"id\":8}', 'http://192.168.1.10/hrms/public/storePromotion?id=20', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:39:26', '2019-09-12 02:39:26'),
(712, 'App\\User', 2, 'created', 'App\\salary', 19, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"7344\",\"employee_id\":\"20\",\"promotion_id\":8,\"id\":19}', 'http://192.168.1.10/hrms/public/storePromotion?id=20', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:39:26', '2019-09-12 02:39:26'),
(713, 'App\\User', 2, 'created', 'App\\contact', 12, '[]', '{\"employee_id\":\"20\",\"type\":\"0\",\"house\":\"H. No. 167, Mohallah Block-B, Rahmat Town, Main G.T. Road, Lahore\",\"street\":null,\"town\":\"Village Manawa, Lahore Cantt\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country\":\"Pakistan\",\"mobile\":\"03078792898\",\"landline\":null,\"id\":12}', 'http://192.168.1.10/hrms/public/editPermanentAddress/20', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', NULL, '2019-09-12 02:41:21', '2019-09-12 02:41:21'),
(714, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"EgMWDgOjn12wpfxKll2lVknaLwQ2eOsUSwZqpC1U\"}', '{\"session_id\":\"vDOzecmNopJ2DMOyAkGk0ZcOyk2HapgwMlTOk0yP\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 05:25:19', '2019-09-12 05:25:19'),
(715, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 13, '[]', '{\"employee_id\":\"3\",\"leave_type_id\":\"4\",\"balance\":\"10\",\"effective_date\":\"2019-09-12\",\"id\":13}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 05:31:02', '2019-09-12 05:31:02'),
(716, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 14, '[]', '{\"employee_id\":\"4\",\"leave_type_id\":\"4\",\"balance\":\"60\",\"effective_date\":\"2019-09-12\",\"id\":14}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 10:38:25', '2019-09-12 10:38:25'),
(717, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 15, '[]', '{\"employee_id\":\"5\",\"leave_type_id\":\"4\",\"balance\":\"20\",\"effective_date\":\"2019-09-12\",\"id\":15}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 10:47:18', '2019-09-12 10:47:18'),
(718, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 14, '{\"balance\":60}', '{\"balance\":\"56\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 12:22:47', '2019-09-12 12:22:47'),
(719, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 11, '{\"effective_date\":\"2019-09-06\"}', '{\"effective_date\":\"2019-09-13\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 12:51:08', '2019-09-12 12:51:08'),
(720, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 16, '[]', '{\"employee_id\":\"6\",\"leave_type_id\":\"4\",\"balance\":\"20\",\"effective_date\":\"2019-09-10\",\"id\":16}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 13:00:29', '2019-09-12 13:00:29'),
(721, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 17, '[]', '{\"employee_id\":\"6\",\"leave_type_id\":\"4\",\"balance\":\"20\",\"effective_date\":\"2019-09-10\",\"id\":17}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 13:01:38', '2019-09-12 13:01:38'),
(722, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 18, '[]', '{\"employee_id\":\"17\",\"leave_type_id\":\"4\",\"balance\":\"5\",\"effective_date\":\"2019-09-08\",\"id\":18}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 13:01:52', '2019-09-12 13:01:52'),
(723, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"L6dVlLT0OGdYgJQ3Z7zWGmHE16nqYNcRhw9fMrAWguzbbpTxJIClTbOO0ay1\"}', '{\"remember_token\":\"bGWyQSLRctvh4lcLJjaTpqcwwTdOwG7mzSu7Z8nkaIv3ibYdKGq5dyLaJymU\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-12 13:06:58', '2019-09-12 13:06:58'),
(724, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"vDOzecmNopJ2DMOyAkGk0ZcOyk2HapgwMlTOk0yP\"}', '{\"session_id\":\"9rtzSIVCXNQtP8bQtRna05RmnT67elFPG9tL8yaY\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 03:17:32', '2019-09-13 03:17:32'),
(725, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"session_id\":\"7SjcPu7XWAyAupoR5siGlbNmm2HcKSZqEiBo7QqS\"}', '{\"session_id\":\"AEmK2vnOzBpgD7umj5LxZFjfCt8AbwlUGwG4Wvyt\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:03:44', '2019-09-13 04:03:44'),
(726, 'App\\User', 13, 'created', 'App\\document', 100, '[]', '{\"document_name\":\"Appointment Letter\",\"file_name\":\"1568347541-3-Appointment Letter.pdf\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"employee_id\":3,\"type\":\"application\\/pdf\",\"id\":100}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:05:42', '2019-09-13 04:05:42'),
(727, 'App\\User', 13, 'created', 'App\\document', 101, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1568347954-3-HR Form.pdf\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"employee_id\":3,\"type\":\"application\\/pdf\",\"id\":101}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:12:34', '2019-09-13 04:12:34'),
(728, 'App\\User', 13, 'created', 'App\\document', 102, '[]', '{\"document_name\":\"Office Order for Promotion\",\"file_name\":\"1568349382-3-Office Order for Promotion.jpg\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"employee_id\":3,\"type\":\"image\\/jpeg\",\"id\":102}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:36:22', '2019-09-13 04:36:22'),
(729, 'App\\User', 13, 'created', 'App\\document', 103, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1568349401-3-CNIC Front.jpg\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"employee_id\":3,\"type\":\"image\\/jpeg\",\"id\":103}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:36:41', '2019-09-13 04:36:41'),
(730, 'App\\User', 13, 'created', 'App\\document', 104, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1568349822-18-CNIC Front.JPG\",\"file_path\":\"documents\\/18_Muhammad_Rafiq_Khan\\/\",\"employee_id\":18,\"type\":\"image\\/jpeg\",\"id\":104}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:43:42', '2019-09-13 04:43:42'),
(731, 'App\\User', 13, 'created', 'App\\document', 105, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1568349834-18-CNIC Back.JPG\",\"file_path\":\"documents\\/18_Muhammad_Rafiq_Khan\\/\",\"employee_id\":18,\"type\":\"image\\/jpeg\",\"id\":105}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:43:55', '2019-09-13 04:43:55'),
(732, 'App\\User', 13, 'created', 'App\\document', 106, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1568349868-18-HR Form.pdf\",\"file_path\":\"documents\\/18_Muhammad_Rafiq_Khan\\/\",\"employee_id\":18,\"type\":\"application\\/pdf\",\"id\":106}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:44:28', '2019-09-13 04:44:28'),
(733, 'App\\User', 1, 'created', 'App\\language', 12, '[]', '{\"name\":\"Afrikanns\",\"reading\":\"Average\",\"speaking\":\"Average\",\"writing\":\"Average\",\"employee_id\":\"1\",\"id\":12}', 'http://localhost/hrms/public/storeLanguage', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:47:41', '2019-09-13 04:47:41'),
(734, 'App\\User', 1, 'deleted', 'App\\language', 12, '{\"id\":12,\"employee_id\":1,\"name\":\"Afrikanns\",\"writing\":\"Average\",\"speaking\":\"Average\",\"reading\":\"Average\"}', '[]', 'http://localhost/hrms/public/deleteLanguage/12', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:47:50', '2019-09-13 04:47:50'),
(735, 'App\\User', 13, 'created', 'App\\document', 107, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1568350124-15-CNIC Front.JPG\",\"file_path\":\"documents\\/15_Nazir__Ahmad\\/\",\"employee_id\":15,\"type\":\"image\\/jpeg\",\"id\":107}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:48:44', '2019-09-13 04:48:44'),
(736, 'App\\User', 13, 'created', 'App\\document', 108, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1568350142-15-HR Form.pdf\",\"file_path\":\"documents\\/15_Nazir__Ahmad\\/\",\"employee_id\":15,\"type\":\"application\\/pdf\",\"id\":108}', 'http://192.168.1.10/hrms/public/storeDocument', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:49:02', '2019-09-13 04:49:02'),
(737, 'App\\User', 13, 'deleted', 'App\\document', 97, '{\"id\":97,\"employee_id\":15,\"document_name\":\"CNIC Front\",\"file_name\":\"1567575189-15-CNIC Front.JPG\",\"file_path\":\"documents\\/15_Nazir__Ahmad\\/\",\"type\":\"image\\/jpeg\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/deleteDocument/97', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:49:25', '2019-09-13 04:49:25'),
(738, 'App\\User', 13, 'deleted', 'App\\document', 98, '{\"id\":98,\"employee_id\":15,\"document_name\":\"HR Form\",\"file_name\":\"1567575203-15-HR Form.pdf\",\"file_path\":\"documents\\/15_Nazir__Ahmad\\/\",\"type\":\"application\\/pdf\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/deleteDocument/98', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:49:34', '2019-09-13 04:49:34'),
(739, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 1, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"3\",\"balance\":\"6\",\"effective_date\":\"2019-09-13\",\"id\":1}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:54:51', '2019-09-13 04:54:51'),
(740, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 1, '{\"balance\":6}', '{\"balance\":\"5\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:56:40', '2019-09-13 04:56:40'),
(741, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 2, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"4\",\"balance\":\"5\",\"effective_date\":\"2019-09-13\",\"id\":2}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 04:57:17', '2019-09-13 04:57:17'),
(742, 'App\\User', 1, 'created', 'App\\contact_number', 1, '[]', '{\"name\":\"Ahmad Khan Bhatti\",\"designation\":\"Chief Executive \",\"mobile_1\":\"0300-8477161\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":1}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(743, 'App\\User', 1, 'created', 'App\\contact_number', 2, '[]', '{\"name\":\"Hafiz Zubair\",\"designation\":\"General Manager (Finance)\",\"mobile_1\":\"0300-8495586\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":2}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(744, 'App\\User', 1, 'created', 'App\\contact_number', 3, '[]', '{\"name\":\"Khalid Latif Sheikh\",\"designation\":\"General Manager (C&C)\",\"mobile_1\":\"0333-4217672\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":3}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(745, 'App\\User', 1, 'created', 'App\\contact_number', 4, '[]', '{\"name\":\"Nazir Ahmad Ghuman\",\"designation\":\"Project Manager\",\"mobile_1\":\"0333-4971458\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-7830517\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":4}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(746, 'App\\User', 1, 'created', 'App\\contact_number', 5, '[]', '{\"name\":\"Sajid Munir Sulehri\",\"designation\":\"RPM LESCO\",\"mobile_1\":\"0301-4241078\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":5}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(747, 'App\\User', 1, 'created', 'App\\contact_number', 6, '[]', '{\"name\":\"Abdul Razzaq Cheema\",\"designation\":\"Project Manager\",\"mobile_1\":\"0347-4447728\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":6}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(748, 'App\\User', 1, 'created', 'App\\contact_number', 7, '[]', '{\"name\":\"Zamir Hussain Shad\",\"designation\":\"Chief Engineer (Design-I)\",\"mobile_1\":\"0321-9461872\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":7}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(749, 'App\\User', 1, 'created', 'App\\contact_number', 8, '[]', '{\"name\":\"Syed Wajid Ali Shah\",\"designation\":\"Team leader\",\"mobile_1\":\"0306-4384052\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":8}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(750, 'App\\User', 1, 'created', 'App\\contact_number', 9, '[]', '{\"name\":\"Muhammad Saleem Jat\",\"designation\":\"Project Manager\",\"mobile_1\":\"0300-3010660\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":9}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(751, 'App\\User', 1, 'created', 'App\\contact_number', 10, '[]', '{\"name\":\"Yunas Khan\",\"designation\":\"Project Manager\",\"mobile_1\":\"0331-9161593\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":\"myunaskhandaur@yahoo.com\",\"address\":\"H.No.161, Sector-A, St.No.6. Township, Bannu KPK\",\"remarks\":null,\"id\":10}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(752, 'App\\User', 1, 'created', 'App\\contact_number', 11, '[]', '{\"name\":\"Aurangzeb \",\"designation\":\"Dy. RPM MEPCO\",\"mobile_1\":\"0300-6339197\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":11}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(753, 'App\\User', 1, 'created', 'App\\contact_number', 12, '[]', '{\"name\":\"Muneeb Ahmad Dar\",\"designation\":\"Construction Manager\",\"mobile_1\":\"0323-8425836\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":12}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(754, 'App\\User', 1, 'created', 'App\\contact_number', 13, '[]', '{\"name\":\"Maqbool Hussain Sindhu\",\"designation\":\"RPM HESCO\",\"mobile_1\":\"0333-2914823\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":13}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(755, 'App\\User', 1, 'created', 'App\\contact_number', 14, '[]', '{\"name\":\"Imtiaz Khalid Chaudary\",\"designation\":\"Project Manager\",\"mobile_1\":\"0300-2012210\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"021-3471824\",\"email\":null,\"address\":\"B-267, Phase-II, Gulshan-e-Hadeed, Bin Qasim Town, Karachi\",\"remarks\":null,\"id\":14}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(756, 'App\\User', 1, 'created', 'App\\contact_number', 15, '[]', '{\"name\":\"Ashiq Hussain Bhatti\",\"designation\":\"Project Manager\",\"mobile_1\":\"0300-4890036\",\"mobile_2\":\"0333-8881251\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":15}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(757, 'App\\User', 1, 'created', 'App\\contact_number', 16, '[]', '{\"name\":\"Jahangir Saleem Chughtai\",\"designation\":\"Principal Engineer (Design)\",\"mobile_1\":\"0333-4426460\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-35224350\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":16}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(758, 'App\\User', 1, 'created', 'App\\contact_number', 17, '[]', '{\"name\":\"Mohammad Ibrahim\",\"designation\":\"Project Manager\",\"mobile_1\":\"0302-8427085\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":\"matesengr@yahoo.com\",\"address\":\"311-B, Nishtar Block, Allama Iqbal Town, Lahore\",\"remarks\":null,\"id\":17}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(759, 'App\\User', 1, 'created', 'App\\contact_number', 18, '[]', '{\"name\":\"Sajawal Lund Baloch\",\"designation\":\"Construction Manager\",\"mobile_1\":\"0300-3251512\",\"mobile_2\":\"0344-4888816\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":18}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(760, 'App\\User', 1, 'created', 'App\\contact_number', 19, '[]', '{\"name\":\"Muhammad Khalil\",\"designation\":\"Senior Engineer\",\"mobile_1\":\"0333-4053288\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":19}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(761, 'App\\User', 1, 'created', 'App\\contact_number', 20, '[]', '{\"name\":\"Muhamamd Ashraf Khan\",\"designation\":\"Chief Engineer (Design-II)\",\"mobile_1\":\"0344-4306890\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":20}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(762, 'App\\User', 1, 'created', 'App\\contact_number', 21, '[]', '{\"name\":\"Masood Akbar Pasha\",\"designation\":\"Team leader\",\"mobile_1\":\"0322-4453801\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-35185777\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":21}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(763, 'App\\User', 1, 'created', 'App\\contact_number', 22, '[]', '{\"name\":\"Malik Iqtidar Hussain\",\"designation\":\"Chief Project Manager\",\"mobile_1\":\"0300-4463834\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-35122462\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":22}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(764, 'App\\User', 1, 'created', 'App\\contact_number', 23, '[]', '{\"name\":\"Saif-ur-Rehman\",\"designation\":\"Principal Engineer (T\\/L)\",\"mobile_1\":\"0336-1407863\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":23}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(765, 'App\\User', 1, 'created', 'App\\contact_number', 24, '[]', '{\"name\":\"Sadiq Ali Shakir\",\"designation\":\"Contract Expert\",\"mobile_1\":\"0300-4366009\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-37580675\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":24}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(766, 'App\\User', 1, 'created', 'App\\contact_number', 25, '[]', '{\"name\":\"Muhammad Rafi\",\"designation\":\"Senior Engineer (Substation)\",\"mobile_1\":\"0321-8837458\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-37240602\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":25}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(767, 'App\\User', 1, 'created', 'App\\contact_number', 26, '[]', '{\"name\":\"M. Zulfiqar Ahmad\",\"designation\":\"Construction Manager\",\"mobile_1\":\"0300-4299853\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-35725998\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":26}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(768, 'App\\User', 1, 'created', 'App\\contact_number', 27, '[]', '{\"name\":\"Irshad Ahmed Arain\",\"designation\":\"Project Manager\",\"mobile_1\":\"0333-2688518\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"022-3400240\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":27}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(769, 'App\\User', 1, 'created', 'App\\contact_number', 28, '[]', '{\"name\":\"Muhammad Aslam Sadiq\",\"designation\":\"T & C Engineer\",\"mobile_1\":\"0300-6360313\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":28}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(770, 'App\\User', 1, 'created', 'App\\contact_number', 29, '[]', '{\"name\":\"Muhammad Ashraf Bhatti\",\"designation\":\"Principal  Engineer (Civil)\",\"mobile_1\":\"0300-7160875\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"055-3842011\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":29}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(771, 'App\\User', 1, 'created', 'App\\contact_number', 30, '[]', '{\"name\":\"Mukhtar Ahmad\",\"designation\":\"Protection Expert\",\"mobile_1\":\"0345-4074856\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":30}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(772, 'App\\User', 1, 'created', 'App\\contact_number', 31, '[]', '{\"name\":\"Iftikhar Ahmad Khan\",\"designation\":\"Senior Engineer (Elect.)\",\"mobile_1\":\"0333-5600177\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":31}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(773, 'App\\User', 1, 'created', 'App\\contact_number', 32, '[]', '{\"name\":\"Riaz Hussain Bhatti\",\"designation\":\"Principal Engineer (Civil)\",\"mobile_1\":\"0333-1499410\",\"mobile_2\":\"0334-7889410\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"066-2425346\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":32}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(774, 'App\\User', 1, 'created', 'App\\contact_number', 33, '[]', '{\"name\":\"Irshad Gul\",\"designation\":\"Principal Engineer (Substation)\",\"mobile_1\":\"0333-9145971\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"091-5892444\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":33}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(775, 'App\\User', 1, 'created', 'App\\contact_number', 34, '[]', '{\"name\":\"Bilal Saghir\",\"designation\":\"Junior Engineer (Civil)\",\"mobile_1\":\"0322-4055507\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":34}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(776, 'App\\User', 1, 'created', 'App\\contact_number', 35, '[]', '{\"name\":\"Usama Anwar\",\"designation\":\"Junior Engineer (T\\/L)\",\"mobile_1\":\"0345-4335275\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":35}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(777, 'App\\User', 1, 'created', 'App\\contact_number', 36, '[]', '{\"name\":\"Jawad Munir\",\"designation\":\"Junior Engineer (Civil)\",\"mobile_1\":\"0345-7117100\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":36}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(778, 'App\\User', 1, 'created', 'App\\contact_number', 37, '[]', '{\"name\":\"Muhammad Farhan\",\"designation\":\"Senior Engineer (Civil)\",\"mobile_1\":\"0300-5042139\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":37}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(779, 'App\\User', 1, 'created', 'App\\contact_number', 38, '[]', '{\"name\":\"Iftikhar ul Haq\",\"designation\":\"Senior Engineer (Elect.)\",\"mobile_1\":\"0322-4699258\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-5836580\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":38}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(780, 'App\\User', 1, 'created', 'App\\contact_number', 39, '[]', '{\"name\":\"Talha Fareed Hashmi\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0334-9949659\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-7568101\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":39}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(781, 'App\\User', 1, 'created', 'App\\contact_number', 40, '[]', '{\"name\":\"Nadeem Abbas\",\"designation\":\"Junior Engineer (Civil)\",\"mobile_1\":\"0332-4896553\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":40}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(782, 'App\\User', 1, 'created', 'App\\contact_number', 41, '[]', '{\"name\":\"Muhammad Afzal Sial\",\"designation\":\"Overseer (Civil)\",\"mobile_1\":\"0331-4568070\",\"mobile_2\":\"0340-5650718\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-37914710\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":41}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(783, 'App\\User', 1, 'created', 'App\\contact_number', 42, '[]', '{\"name\":\"Yasir Ali\",\"designation\":\"Supervisor (Elect.)\",\"mobile_1\":\"0333-4028257\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":42}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(784, 'App\\User', 1, 'created', 'App\\contact_number', 43, '[]', '{\"name\":\"Uzair Afzal\",\"designation\":\"Supervisor (Elect.)\",\"mobile_1\":\"0321-5586466\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-35155079\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":43}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(785, 'App\\User', 1, 'created', 'App\\contact_number', 44, '[]', '{\"name\":\"Naveed Ahmad\",\"designation\":\"Engineering Expert (S\\/S)\",\"mobile_1\":\"0333-4416379\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-35188900\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":44}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(786, 'App\\User', 1, 'created', 'App\\contact_number', 45, '[]', '{\"name\":\"Abdul Rashid\",\"designation\":\"Engineering Expert (T\\/L)\",\"mobile_1\":\"0345-4131807\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":45}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(787, 'App\\User', 1, 'created', 'App\\contact_number', 46, '[]', '{\"name\":\"Afeera Afzal\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0321-8832233\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-35155079\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":46}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(788, 'App\\User', 1, 'created', 'App\\contact_number', 47, '[]', '{\"name\":\"Asad Ullah Ashraf\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0334-6855882\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":47}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(789, 'App\\User', 1, 'created', 'App\\contact_number', 48, '[]', '{\"name\":\"Syeda Kokab Khalid\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0345-4698212\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":48}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(790, 'App\\User', 1, 'created', 'App\\contact_number', 49, '[]', '{\"name\":\"Muhammad Rafique Anjum\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0300-4407237\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":49}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(791, 'App\\User', 1, 'created', 'App\\contact_number', 50, '[]', '{\"name\":\"Naveed ur Rehman\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0333-9336607\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":50}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(792, 'App\\User', 1, 'created', 'App\\contact_number', 51, '[]', '{\"name\":\"Tariq Mehmood\",\"designation\":\"Junior Engineer (Civil)\",\"mobile_1\":\"0302-5110215\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":51}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(793, 'App\\User', 1, 'created', 'App\\contact_number', 52, '[]', '{\"name\":\"Sultan Kamran\",\"designation\":\"Supervisor (Civil)\",\"mobile_1\":\"0321-4096476\",\"mobile_2\":\"0333-4403580\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":52}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(794, 'App\\User', 1, 'created', 'App\\contact_number', 53, '[]', '{\"name\":\"Saghir Ahmad\",\"designation\":\"Inspector (Civil)\",\"mobile_1\":\"0300-4399482\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":53}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(795, 'App\\User', 1, 'created', 'App\\contact_number', 54, '[]', '{\"name\":\"Akhtar Aziz\",\"designation\":\"Engineer Expert (T\\/L)\",\"mobile_1\":\"0333-4468311\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-35180448\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":54}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(796, 'App\\User', 1, 'created', 'App\\contact_number', 55, '[]', '{\"name\":\"Muhammad Khaliq\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0300-5213529\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":55}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(797, 'App\\User', 1, 'created', 'App\\contact_number', 56, '[]', '{\"name\":\"Usman Hamid\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0300-4090498\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":56}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(798, 'App\\User', 1, 'created', 'App\\contact_number', 57, '[]', '{\"name\":\"Hammad Rashid\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0342-4171689\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-37927141\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":57}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(799, 'App\\User', 1, 'created', 'App\\contact_number', 58, '[]', '{\"name\":\"Fayyaz Mehmood Karimi\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0333-4699364\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":58}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(800, 'App\\User', 1, 'created', 'App\\contact_number', 59, '[]', '{\"name\":\"Mehmood Shah\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0321-3106166\",\"mobile_2\":\"0300-5713293\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":59}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(801, 'App\\User', 1, 'created', 'App\\contact_number', 60, '[]', '{\"name\":\"Muhammad Kamran\",\"designation\":\"Inspector (Elect.)\",\"mobile_1\":\"0332-2898725\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":60}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(802, 'App\\User', 1, 'created', 'App\\contact_number', 61, '[]', '{\"name\":\"Muhammad Imran\",\"designation\":\"Inspector (Elect.)\",\"mobile_1\":\"0301-3919279\",\"mobile_2\":\"0333-6402239\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"0238-408012\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":61}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(803, 'App\\User', 1, 'created', 'App\\contact_number', 62, '[]', '{\"name\":\"Naazar Hussain\",\"designation\":\"Supervisor (Elect.)\",\"mobile_1\":\"0322-6084914\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":62}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(804, 'App\\User', 1, 'created', 'App\\contact_number', 63, '[]', '{\"name\":\"Muhammad Nasir\",\"designation\":\"Inspector (Civil)\",\"mobile_1\":\"0332-3551703\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":63}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(805, 'App\\User', 1, 'created', 'App\\contact_number', 64, '[]', '{\"name\":\"Sajjad Qaisar\",\"designation\":\"Junior Engineer (Civil)\",\"mobile_1\":\"0333-4280511\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":64}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(806, 'App\\User', 1, 'created', 'App\\contact_number', 65, '[]', '{\"name\":\"Khan Muhammad\",\"designation\":\"Project Manager\",\"mobile_1\":\"0370-4444672\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":65}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(807, 'App\\User', 1, 'created', 'App\\contact_number', 66, '[]', '{\"name\":\"Safder Rashid\",\"designation\":\"Construction Manager G\\/S\",\"mobile_1\":\"0331-4415728\",\"mobile_2\":\"0300-8452830\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":66}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(808, 'App\\User', 1, 'created', 'App\\contact_number', 67, '[]', '{\"name\":\"Kamal Haider Toor\",\"designation\":\"Senior Engineer (Civil)\",\"mobile_1\":\"0321-7094554\",\"mobile_2\":\"0311-6094554\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":\"kamalexclusive@hotmail.com\",\"address\":null,\"remarks\":null,\"id\":67}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(809, 'App\\User', 1, 'created', 'App\\contact_number', 68, '[]', '{\"name\":\"Abdul Mujeeb Abro\",\"designation\":\"Senior Engineer (Civil)\",\"mobile_1\":\"0333-2711824\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":68}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(810, 'App\\User', 1, 'created', 'App\\contact_number', 69, '[]', '{\"name\":\"Tariq Mahmood ul Hassan\",\"designation\":\"Senior Engineer (Civil)\",\"mobile_1\":\"0345-8535711\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":69}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(811, 'App\\User', 1, 'created', 'App\\contact_number', 70, '[]', '{\"name\":\"Muhammad Haneef\",\"designation\":\"Construction Supervision Expert  (Civil)\",\"mobile_1\":\"0300-7317594\",\"mobile_2\":\"0333-4340612\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":70}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(812, 'App\\User', 1, 'created', 'App\\contact_number', 71, '[]', '{\"name\":\"Abdul Ghafoor Janjua\",\"designation\":\"Senior Engineer (Elect.)\",\"mobile_1\":\"0324-5262290\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":71}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(813, 'App\\User', 1, 'created', 'App\\contact_number', 72, '[]', '{\"name\":\"Asad Aman\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0345-9822291\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"0966-731386\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":72}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(814, 'App\\User', 1, 'created', 'App\\contact_number', 73, '[]', '{\"name\":\"Muhammad Tahir Ali\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0345-9187415\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":73}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(815, 'App\\User', 1, 'created', 'App\\contact_number', 74, '[]', '{\"name\":\"M. Junaid Khan\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0333-9957969\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":74}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(816, 'App\\User', 1, 'created', 'App\\contact_number', 75, '[]', '{\"name\":\"Zeeshan Ahmad\",\"designation\":\"Driver\",\"mobile_1\":\"0343-3142787\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":75}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(817, 'App\\User', 1, 'created', 'App\\contact_number', 76, '[]', '{\"name\":\"Rizwan \",\"designation\":\"Computer Operator\",\"mobile_1\":\"0321-4123868\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":76}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(818, 'App\\User', 1, 'created', 'App\\contact_number', 77, '[]', '{\"name\":\"Muhammad Nasrullah\",\"designation\":\"Overseer (Civil)\",\"mobile_1\":\"0300-4647111\",\"mobile_2\":\"0333-0213000\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":\"Muhammad Nasrullah C\\/O TCS Office, Mianwali 0333-4955055\\n0300-5679344, 0300-5604524, \\n0333-5941624\",\"id\":77}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(819, 'App\\User', 1, 'created', 'App\\contact_number', 78, '[]', '{\"name\":\"Muhammad Imran\",\"designation\":\"Inspector (Elect.)\",\"mobile_1\":\"0345-3723757\",\"mobile_2\":\"0332-6273101\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":78}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(820, 'App\\User', 1, 'created', 'App\\contact_number', 79, '[]', '{\"name\":\"Aqeel Akram\",\"designation\":\"Inspector (Elect.)\",\"mobile_1\":\"0312-4161207\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-38535717\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":79}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(821, 'App\\User', 1, 'created', 'App\\contact_number', 80, '[]', '{\"name\":\"M. Tariq Ameen\",\"designation\":\"Surveyor (Civil)\",\"mobile_1\":\"0301-6668965\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":80}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(822, 'App\\User', 1, 'created', 'App\\contact_number', 81, '[]', '{\"name\":\"Aftab Ahmad Shaikh\",\"designation\":\"Construction Manager\",\"mobile_1\":\"0301-5204144\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":81}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(823, 'App\\User', 1, 'created', 'App\\contact_number', 82, '[]', '{\"name\":\"Abdul Hassan\",\"designation\":\"Inspector (Civil)\",\"mobile_1\":\"0333-7977770\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":82}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(824, 'App\\User', 1, 'created', 'App\\contact_number', 83, '[]', '{\"name\":\"Sohail Iqbal\",\"designation\":\"Inspector (Elect.)\",\"mobile_1\":\"0300-3115997\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":83}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(825, 'App\\User', 1, 'created', 'App\\contact_number', 84, '[]', '{\"name\":\"Muhamamd Tahir Butt\",\"designation\":\"Inspector (Civil)\",\"mobile_1\":\"0334-9947686\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":84}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(826, 'App\\User', 1, 'created', 'App\\contact_number', 85, '[]', '{\"name\":\"Muhammad Ibrahim\",\"designation\":\"Construction Manager\",\"mobile_1\":null,\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-35427085\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":85}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(827, 'App\\User', 1, 'created', 'App\\contact_number', 86, '[]', '{\"name\":\"Abdul Majeed\",\"designation\":\"Senior Engineer (Civil)\",\"mobile_1\":\"0300-4162264\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":86}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(828, 'App\\User', 1, 'created', 'App\\contact_number', 87, '[]', '{\"name\":\"Muhammad Ajaz Anwar\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0333-6615297\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":87}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(829, 'App\\User', 1, 'created', 'App\\contact_number', 88, '[]', '{\"name\":\"Balqias Khan\",\"designation\":\"Inspector (Civil)\",\"mobile_1\":\"0345-9764260\",\"mobile_2\":\"0300-5481116\",\"mobile_3\":\"0346-8500016\",\"office\":null,\"fax\":null,\"landline\":\"0928-503532\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":88}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(830, 'App\\User', 1, 'created', 'App\\contact_number', 89, '[]', '{\"name\":\"Muhammad Anwar Jan\",\"designation\":\"Construction Manager\",\"mobile_1\":\"0306-3875768\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":89}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(831, 'App\\User', 1, 'created', 'App\\contact_number', 90, '[]', '{\"name\":\"Asadullah Mirza\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0333-2604881\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"022-2631863\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":90}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(832, 'App\\User', 1, 'created', 'App\\contact_number', 91, '[]', '{\"name\":\"Azhar Javaid Butt\",\"designation\":\"Inspector (Elect.)\",\"mobile_1\":\"0300-8702256\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":91}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(833, 'App\\User', 1, 'created', 'App\\contact_number', 92, '[]', '{\"name\":\"Saif Ullah\",\"designation\":\"Lineman\",\"mobile_1\":\"0344-5821336\",\"mobile_2\":\"0333-7739697\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":92}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(834, 'App\\User', 1, 'created', 'App\\contact_number', 93, '[]', '{\"name\":\"Jawad Hussain Chandio\",\"designation\":\"Project Manager\",\"mobile_1\":\"0321-9299917\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":93}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(835, 'App\\User', 1, 'created', 'App\\contact_number', 94, '[]', '{\"name\":\"Haresh Kumar\",\"designation\":\"Senior Engineer (Elect.)\",\"mobile_1\":\"0333-7544389\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"074-4046593\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":94}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(836, 'App\\User', 1, 'created', 'App\\contact_number', 95, '[]', '{\"name\":\"Abdul Khalique\",\"designation\":\"Senior Engineer (Civil)\",\"mobile_1\":\"0300-3045912\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":95}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(837, 'App\\User', 1, 'created', 'App\\contact_number', 96, '[]', '{\"name\":\"Bashir Ahmed\",\"designation\":\"Senior Engineer (Elect.)\",\"mobile_1\":\"0321-2068002\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":96}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(838, 'App\\User', 1, 'created', 'App\\contact_number', 97, '[]', '{\"name\":\"Bashir Ahmed\",\"designation\":\"Inspector (Elect.)\",\"mobile_1\":\"0344-6375055\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":97}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(839, 'App\\User', 1, 'created', 'App\\contact_number', 98, '[]', '{\"name\":\"Attique-ur-Rehman\",\"designation\":\"Supervisor (Civil)\",\"mobile_1\":\"0344-3466227\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":98}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(840, 'App\\User', 1, 'created', 'App\\contact_number', 99, '[]', '{\"name\":\"Umar Fiaz\",\"designation\":\"Inspector (Elect.)\",\"mobile_1\":\"0301-4400647\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":99}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(841, 'App\\User', 1, 'created', 'App\\contact_number', 100, '[]', '{\"name\":\"Qamar Ali Asim\",\"designation\":\"Junior Engineer (Civil)\",\"mobile_1\":\"0301-6548588\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":100}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(842, 'App\\User', 1, 'created', 'App\\contact_number', 101, '[]', '{\"name\":\"Nadeem Abbas\",\"designation\":\"Lineman\",\"mobile_1\":\"0334-5464275\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":101}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(843, 'App\\User', 1, 'created', 'App\\contact_number', 102, '[]', '{\"name\":\"Ali Ihatasham\",\"designation\":\"Supervisor (Elect.)\",\"mobile_1\":\"0347-6442721\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":102}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(844, 'App\\User', 1, 'created', 'App\\contact_number', 103, '[]', '{\"name\":\"Rafae Munir\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0333-4557377\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-35722369\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":103}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(845, 'App\\User', 1, 'created', 'App\\contact_number', 104, '[]', '{\"name\":\"Muhammad Azam\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0333-6797758\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":104}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(846, 'App\\User', 1, 'created', 'App\\contact_number', 105, '[]', '{\"name\":\"Shah Mohammad\",\"designation\":\"Team Leader\",\"mobile_1\":\"0323-4033051\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-37833925\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":105}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(847, 'App\\User', 1, 'created', 'App\\contact_number', 106, '[]', '{\"name\":\"Omer Akram\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0345-4784015\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":106}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(848, 'App\\User', 1, 'created', 'App\\contact_number', 107, '[]', '{\"name\":\"Faraz Ahmed\",\"designation\":\"Junior Engineer (Elect.)\",\"mobile_1\":\"0321-4032955\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":107}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(849, 'App\\User', 1, 'created', 'App\\contact_number', 108, '[]', '{\"name\":\"Sheikh Faraz \",\"designation\":\"Accountant \",\"mobile_1\":\"0323-4404684\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":108}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(850, 'App\\User', 1, 'created', 'App\\contact_number', 109, '[]', '{\"name\":\"Asher\",\"designation\":\"Office Manager Shikarpur\",\"mobile_1\":\"0345-3855449\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":109}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(851, 'App\\User', 1, 'created', 'App\\contact_number', 110, '[]', '{\"name\":\"Makhdoom Ali\",\"designation\":\"Principal Engineer (Civil)\",\"mobile_1\":null,\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-35410308\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":110}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(852, 'App\\User', 1, 'created', 'App\\contact_number', 111, '[]', '{\"name\":\"Bashir Shaheen\",\"designation\":\"Principal Engineer (Civil)\",\"mobile_1\":null,\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-37840676\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":111}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(853, 'App\\User', 1, 'created', 'App\\contact_number', 112, '[]', '{\"name\":\"Muhammad Sharif Khan\",\"designation\":\"RPM IESCO\",\"mobile_1\":\"0323-5518281\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"051-4446719\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":112}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(854, 'App\\User', 1, 'created', 'App\\contact_number', 113, '[]', '{\"name\":\"Sohail Fiaz Qureshi\",\"designation\":\"Senior Engineer (Elect.)\",\"mobile_1\":\"0333-2702223\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":113}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(855, 'App\\User', 1, 'created', 'App\\contact_number', 114, '[]', '{\"name\":\"Noor Ahmad Mangal\",\"designation\":\"RPM QESCO\",\"mobile_1\":\"0333-7819750\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":114}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(856, 'App\\User', 1, 'created', 'App\\contact_number', 115, '[]', '{\"name\":\"Imran Yousaf\",\"designation\":\"Accountant\",\"mobile_1\":\"0323-4579060\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":115}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(857, 'App\\User', 1, 'created', 'App\\contact_number', 116, '[]', '{\"name\":\"Imtiaz Hussain Qureshi\",\"designation\":\"Constrction Supervision Expert Electrical\",\"mobile_1\":\"0300-6336226\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":116}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(858, 'App\\User', 1, 'created', 'App\\contact_number', 117, '[]', '{\"name\":\"Muhammad Irfan\",\"designation\":\"Accounts Officer \",\"mobile_1\":\"0300-6802476\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":117}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(859, 'App\\User', 1, 'created', 'App\\contact_number', 118, '[]', '{\"name\":\"Muhammad Iqbal Jan\",\"designation\":\"RPM GEPCO\",\"mobile_1\":\"0333-4201001\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":118}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(860, 'App\\User', 1, 'created', 'App\\contact_number', 119, '[]', '{\"name\":\"Yaqoob Khalid\",\"designation\":\"Accounts Officer \",\"mobile_1\":\"0322-4819430\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":119}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(861, 'App\\User', 1, 'created', 'App\\contact_number', 120, '[]', '{\"name\":\"NESPAK House\",\"designation\":null,\"mobile_1\":null,\"mobile_2\":null,\"mobile_3\":null,\"office\":990900000,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":\"ext. 415\",\"id\":120}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(862, 'App\\User', 1, 'created', 'App\\contact_number', 121, '[]', '{\"name\":\"Muhammad Ishfaq\",\"designation\":\"Lineman\",\"mobile_1\":\"0300-5068437\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":121}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(863, 'App\\User', 1, 'created', 'App\\contact_number', 122, '[]', '{\"name\":\"Samar Gull\",\"designation\":\"Telecom Expert\",\"mobile_1\":\"0300-4236087\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":122}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(864, 'App\\User', 1, 'created', 'App\\contact_number', 123, '[]', '{\"name\":\"Memood Shah\\n\",\"designation\":\"Senior Engineer (Elect.)\",\"mobile_1\":\"0300-5713293\",\"mobile_2\":\"0331-3642301\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":\"pnlmahmoodshah@yahoo.com\",\"address\":\"Tariq Kirana & General Store\\nBai Jee Chowk, Panu Aakil, District Sukkur\",\"remarks\":null,\"id\":123}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(865, 'App\\User', 1, 'created', 'App\\contact_number', 124, '[]', '{\"name\":\"Abdul Samad\",\"designation\":\"Junior Engineer\",\"mobile_1\":\"0336-8154468\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":124}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(866, 'App\\User', 1, 'created', 'App\\contact_number', 125, '[]', '{\"name\":\"Dr. Fayyaz Akram\",\"designation\":\"Power Tek\",\"mobile_1\":\"0312-7664199\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":125}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(867, 'App\\User', 1, 'created', 'App\\contact_number', 126, '[]', '{\"name\":\"Tahir \",\"designation\":\"NESPAK Engineer Neelum-Jhelum\",\"mobile_1\":\"0321-4282328\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":126}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(868, 'App\\User', 1, 'created', 'App\\contact_number', 127, '[]', '{\"name\":\"Umer Hayat\",\"designation\":\"NESPAK Senior Expert\",\"mobile_1\":\"0334-5146757\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":127}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(869, 'App\\User', 1, 'created', 'App\\contact_number', 128, '[]', '{\"name\":\"Khalid \",\"designation\":\"Graphic Printers\",\"mobile_1\":\"0333-43518 99\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-36290390\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":128}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(870, 'App\\User', 1, 'created', 'App\\contact_number', 129, '[]', '{\"name\":\"Manzoor\",\"designation\":\"EOBI\",\"mobile_1\":\"0332-4243658\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":\"EOBI Case Mr. Tariq Khan S\\/O Sultan Khan Driver\",\"id\":129}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(871, 'App\\User', 1, 'created', 'App\\contact_number', 130, '[]', '{\"name\":\"A.  Ali Ch.\",\"designation\":\"EOBI\",\"mobile_1\":\"0321-4014251\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":130}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(872, 'App\\User', 1, 'created', 'App\\contact_number', 131, '[]', '{\"name\":\"Ch. Khalil\",\"designation\":\"Accounts Officer \",\"mobile_1\":\"0333-4552837\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":131}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(873, 'App\\User', 1, 'created', 'App\\contact_number', 132, '[]', '{\"name\":\"Haseeb \",\"designation\":\"Senior Engineer ACE\",\"mobile_1\":\"0300-9790888\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":\"Haseebkhan1984@hotmail.com\",\"address\":null,\"remarks\":null,\"id\":132}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(874, 'App\\User', 1, 'created', 'App\\contact_number', 133, '[]', '{\"name\":\"Hammad \",\"designation\":\"Printer \\/ Refilling\",\"mobile_1\":\"0322-8488612\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":133}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(875, 'App\\User', 1, 'created', 'App\\contact_number', 134, '[]', '{\"name\":\"Asif Bajwa \",\"designation\":\"Photocopy Machine\",\"mobile_1\":\"0300-4222179\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":\"042-36376140\",\"email\":null,\"address\":null,\"remarks\":null,\"id\":134}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(876, 'App\\User', 1, 'created', 'App\\contact_number', 135, '[]', '{\"name\":\"Khalid Abbas\",\"designation\":\"Civil Engineer\",\"mobile_1\":\"0308-8040020\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":135}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(877, 'App\\User', 1, 'created', 'App\\contact_number', 136, '[]', '{\"name\":\"Akram Photocopy Machine\",\"designation\":null,\"mobile_1\":\"0345-4316693\",\"mobile_2\":\"0305-4346821\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":136}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(878, 'App\\User', 1, 'created', 'App\\contact_number', 137, '[]', '{\"name\":\"Adeel Ahmad\",\"designation\":\"Accountant\",\"mobile_1\":\"0321-6876711\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":137}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(879, 'App\\User', 1, 'created', 'App\\contact_number', 138, '[]', '{\"name\":\"CASA 1000 Mobile No.\",\"designation\":null,\"mobile_1\":\"00777-15029992\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":\"secretariat@casa-1000.org\",\"address\":null,\"remarks\":null,\"id\":138}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(880, 'App\\User', 1, 'created', 'App\\contact_number', 139, '[]', '{\"name\":\"Tasawar \",\"designation\":\"Rent a Car\",\"mobile_1\":\"0301-4211531\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":139}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(881, 'App\\User', 1, 'created', 'App\\contact_number', 140, '[]', '{\"name\":\"Tahir Mahmood \",\"designation\":\"IESCO Computer Operator\",\"mobile_1\":\"0313-5351417\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":140}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(882, 'App\\User', 1, 'created', 'App\\contact_number', 141, '[]', '{\"name\":\"Rasheed Ahmad\",\"designation\":\"Ex. PD Islamabad NTDC\",\"mobile_1\":\"0335-7401512\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":\"\\nHouse. No.201, Block-B, \\nNESPAK Colony, Phase-III, Defence Road, Lahore\",\"remarks\":null,\"id\":141}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(883, 'App\\User', 1, 'created', 'App\\contact_number', 142, '[]', '{\"name\":\"Safdar\",\"designation\":\"Lineman NTC\",\"mobile_1\":\"0346-7727107\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":142}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(884, 'App\\User', 1, 'created', 'App\\contact_number', 143, '[]', '{\"name\":\"NTC DSL Activitation\",\"designation\":null,\"mobile_1\":null,\"mobile_2\":null,\"mobile_3\":null,\"office\":\"042-99203545\",\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":\"042-99205505\",\"id\":143}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(885, 'App\\User', 1, 'created', 'App\\contact_number', 144, '[]', '{\"name\":\"NTC DSL Issues\",\"designation\":null,\"mobile_1\":null,\"mobile_2\":null,\"mobile_3\":null,\"office\":\"042-99203545\",\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":144}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(886, 'App\\User', 1, 'created', 'App\\contact_number', 145, '[]', '{\"name\":\"NTC DSL Complain\",\"designation\":null,\"mobile_1\":\"99203542-44\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":145}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(887, 'App\\User', 1, 'created', 'App\\contact_number', 146, '[]', '{\"name\":\"NTC Revenue & Billing\",\"designation\":null,\"mobile_1\":null,\"mobile_2\":null,\"mobile_3\":null,\"office\":\"042-99202323\",\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":\"042-99205566\\n042-99203700\",\"id\":146}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(888, 'App\\User', 1, 'created', 'App\\contact_number', 147, '[]', '{\"name\":\"DE Phones NTC \",\"designation\":\"NTC DSL Upgradation\",\"mobile_1\":null,\"mobile_2\":null,\"mobile_3\":null,\"office\":\"042-99203536\",\"fax\":\"042-99203535\",\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":147}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(889, 'App\\User', 1, 'created', 'App\\contact_number', 148, '[]', '{\"name\":\"Chief Engineer (EHV-II) Hyderabad\",\"designation\":\"Office \",\"mobile_1\":null,\"mobile_2\":null,\"mobile_3\":null,\"office\":\"022-9250123\",\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":148}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(890, 'App\\User', 1, 'created', 'App\\contact_number', 149, '[]', '{\"name\":\"Zahoor Ahmad \",\"designation\":\"Driver EHV-II\",\"mobile_1\":\"0345-3593483\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":149}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(891, 'App\\User', 1, 'created', 'App\\contact_number', 150, '[]', '{\"name\":\"Survey of Pakistan \",\"designation\":\"For Firm Registration\",\"mobile_1\":null,\"mobile_2\":null,\"mobile_3\":null,\"office\":\"051-9290210\",\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":150}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(892, 'App\\User', 1, 'created', 'App\\contact_number', 151, '[]', '{\"name\":\"Ahsan Nazir\",\"designation\":\"Junior Engineer (Electrical)\",\"mobile_1\":\"0315-4101400\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":\"Son of Nazir Ahmad PS CE BARQAAB\",\"id\":151}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(893, 'App\\User', 1, 'created', 'App\\contact_number', 152, '[]', '{\"name\":\"Muhammad Jamil\",\"designation\":\"Utility Person BARQAAB\",\"mobile_1\":\"0300-4082558\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":152}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(894, 'App\\User', 1, 'created', 'App\\contact_number', 153, '[]', '{\"name\":\"Hafeez Minhas\",\"designation\":\"Accountant BARQAAB\",\"mobile_1\":\"0301-4222157\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":153}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(895, 'App\\User', 1, 'created', 'App\\contact_number', 154, '[]', '{\"name\":\"Farhan Nadeem\",\"designation\":\"Junior Engineer Electrical\",\"mobile_1\":\"0323-4185883\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":154}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(896, 'App\\User', 1, 'created', 'App\\contact_number', 155, '[]', '{\"name\":\"PTCL Connection Close\",\"designation\":null,\"mobile_1\":null,\"mobile_2\":null,\"mobile_3\":null,\"office\":\"042-35710085\",\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":155}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(897, 'App\\User', 1, 'created', 'App\\contact_number', 156, '[]', '{\"name\":\"Muhammad Tanvir\",\"designation\":\"NDC Secretary Ejaz Sb.\",\"mobile_1\":null,\"mobile_2\":null,\"mobile_3\":null,\"office\":\"042-38100332\",\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":156}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(898, 'App\\User', 1, 'created', 'App\\contact_number', 157, '[]', '{\"name\":\"Atif\",\"designation\":\"Malik Computers\",\"mobile_1\":\"0333-4433466\",\"mobile_2\":null,\"mobile_3\":null,\"office\":\"042-32200606\",\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":157}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(899, 'App\\User', 1, 'created', 'App\\contact_number', 158, '[]', '{\"name\":\"Juniad Khalil\",\"designation\":\"Accountant\",\"mobile_1\":\"0331-9610822\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":158}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(900, 'App\\User', 1, 'created', 'App\\contact_number', 159, '[]', '{\"name\":\"Shehyar\",\"designation\":\"SDO CDA\",\"mobile_1\":\"0333-5526017\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":\"engr.sheri_93@yahoo.com\",\"address\":null,\"remarks\":null,\"id\":159}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(901, 'App\\User', 1, 'created', 'App\\contact_number', 160, '[]', '{\"name\":\"Muhammad Salim\",\"designation\":\"DRPM Lesco\",\"mobile_1\":\"0333-4422571\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":160}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(902, 'App\\User', 1, 'created', 'App\\contact_number', 161, '[]', '{\"name\":\"Qasim bin Nasir\",\"designation\":\"Junior Engineer (Electrical)\",\"mobile_1\":\"0321-4040896\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":161}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(903, 'App\\User', 1, 'created', 'App\\contact_number', 162, '[]', '{\"name\":\"Muhammad Ilyas\",\"designation\":\"Civil Expert\",\"mobile_1\":\"0320-3467891\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":162}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(904, 'App\\User', 1, 'created', 'App\\contact_number', 163, '[]', '{\"name\":\"Zohaib Hassan Mehar\",\"designation\":\"Junior Engineer (Civil)\",\"mobile_1\":\"0332-2946886\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":163}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(905, 'App\\User', 1, 'created', 'App\\contact_number', 164, '[]', '{\"name\":\"Mr. Nadeem \",\"designation\":\"Harbin Chaina\",\"mobile_1\":\"0333-5317888\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":164}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(906, 'App\\User', 1, 'created', 'App\\contact_number', 165, '[]', '{\"name\":\"Waheed Murad\",\"designation\":\"Airline Booking\",\"mobile_1\":\"0333-4227453\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":165}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(907, 'App\\User', 1, 'created', 'App\\contact_number', 166, '[]', '{\"name\":\"Emanuial Bhatti  A.P.S.\",\"designation\":\"WAPDA Composite Schedule Rate\",\"mobile_1\":\"0302-4230954\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":166}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(908, 'App\\User', 1, 'created', 'App\\contact_number', 167, '[]', '{\"name\":\"Yishing Wang Bhikki\",\"designation\":\"Harbin Chaina\",\"mobile_1\":\"0310-7296888\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":167}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(909, 'App\\User', 1, 'created', 'App\\contact_number', 168, '[]', '{\"name\":\"Muhammad Ilyas \",\"designation\":\"Driver, BARQAAB\",\"mobile_1\":\"0322-4639053\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":168}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(910, 'App\\User', 1, 'created', 'App\\contact_number', 169, '[]', '{\"name\":\"Azhar Abbas\",\"designation\":\"Kashif Aslam & Associates\",\"mobile_1\":\"0335-4514171\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":169}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(911, 'App\\User', 1, 'created', 'App\\contact_number', 170, '[]', '{\"name\":\"Muhammad Asim\",\"designation\":\"Junior Engineer\",\"mobile_1\":\"0322-4830065\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":\"muhammadasim556@gmail.com\",\"address\":null,\"remarks\":null,\"id\":170}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(912, 'App\\User', 1, 'created', 'App\\contact_number', 171, '[]', '{\"name\":\"Jawad Akbar\",\"designation\":\"Computer Operator Mardan Office\",\"mobile_1\":\"0344-4475276\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":171}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(913, 'App\\User', 1, 'created', 'App\\contact_number', 172, '[]', '{\"name\":\"Abdullah Jaura\",\"designation\":\"Project Manager OurSons (Pvt.)\",\"mobile_1\":\"0321-4712048\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":172}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(914, 'App\\User', 1, 'created', 'App\\contact_number', 173, '[]', '{\"name\":\"Naeem\",\"designation\":\"WAPDA House Liberary\",\"mobile_1\":\"0333-4542245\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":173}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(915, 'App\\User', 1, 'created', 'App\\contact_number', 174, '[]', '{\"name\":\"Hamza Ovais\",\"designation\":\"OMS\",\"mobile_1\":\"0334-3353990\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":\"hamza.ovais@omsltd.net\",\"address\":null,\"remarks\":null,\"id\":174}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(916, 'App\\User', 1, 'created', 'App\\contact_number', 175, '[]', '{\"name\":\"Muhammad Ilyas\",\"designation\":\"Project Manager NESPAK\",\"mobile_1\":\"0321-4469746\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":175}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(917, 'App\\User', 1, 'created', 'App\\contact_number', 176, '[]', '{\"name\":\"Asif Printing \",\"designation\":\"Printing Presss\",\"mobile_1\":\"0301-4256425\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":176}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(918, 'App\\User', 1, 'created', 'App\\contact_number', 177, '[]', '{\"name\":\"Muhammad Shakill\",\"designation\":\"Asif Printer Designer\",\"mobile_1\":\"0300-8871221\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":177}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(919, 'App\\User', 1, 'created', 'App\\contact_number', 178, '[]', '{\"name\":\"Pohoo Sootahar\",\"designation\":\"Construction Manager HUBCO-Jamshoro\",\"mobile_1\":\"0333-2751410\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":178}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(920, 'App\\User', 1, 'created', 'App\\contact_number', 179, '[]', '{\"name\":\"Akhtar\",\"designation\":\"PTCL Lineman for PTCL No. 36370398\",\"mobile_1\":\"0333-4295118\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":179}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(921, 'App\\User', 1, 'created', 'App\\contact_number', 180, '[]', '{\"name\":\"Muhammad Nawaz\",\"designation\":\"Chief Engineer BARQAAB\",\"mobile_1\":\"0307-4173367\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":180}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(922, 'App\\User', 1, 'created', 'App\\contact_number', 181, '[]', '{\"name\":\"Inayatullah\",\"designation\":\"PD GMHPP\",\"mobile_1\":\"0345-5107268\",\"mobile_2\":\"0300-9085807\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":181}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(923, 'App\\User', 1, 'created', 'App\\contact_number', 182, '[]', '{\"name\":\"KAKAPOTO\",\"designation\":\"RPM SEPCO\",\"mobile_1\":\"0300-2638981\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":182}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(924, 'App\\User', 1, 'created', 'App\\contact_number', 183, '[]', '{\"name\":\"Abdul Samad Abbasi\",\"designation\":\"Junior Engineer (IT)\",\"mobile_1\":\"0315-4701272\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":183}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(925, 'App\\User', 1, 'created', 'App\\contact_number', 184, '[]', '{\"name\":\"PD FESCO\",\"designation\":\"Telephone\",\"mobile_1\":null,\"mobile_2\":null,\"mobile_3\":null,\"office\":\"041-2642752-51\",\"fax\":\"041-9230071\",\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":184}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(926, 'App\\User', 1, 'created', 'App\\contact_number', 185, '[]', '{\"name\":\"Asif SB OMS IT\",\"designation\":\"IT Expert\",\"mobile_1\":\"0334-4244397\",\"mobile_2\":null,\"mobile_3\":null,\"office\":\"042-35748660\",\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":185}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(927, 'App\\User', 1, 'created', 'App\\contact_number', 186, '[]', '{\"name\":\"Rustam Ali\",\"designation\":\"Inspector Electrical\",\"mobile_1\":\"0306-4477971\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":186}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(928, 'App\\User', 1, 'created', 'App\\contact_number', 187, '[]', '{\"name\":\"Sujat Galanai\",\"designation\":\"Standard Chartered Bank\",\"mobile_1\":\"0321-4057368\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":187}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(929, 'App\\User', 1, 'created', 'App\\contact_number', 188, '[]', '{\"name\":\"Saad\",\"designation\":\"Retional Manager SC\",\"mobile_1\":\"0321-5557477\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":188}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(930, 'App\\User', 1, 'created', 'App\\contact_number', 189, '[]', '{\"name\":\"Hyderabad HVDC Office\",\"designation\":null,\"mobile_1\":\"022-2117531\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":\"BARQAAB Consulting Services (Pvt.) Ltd.\\nBungalow No.C-07, Samanabad, Qasimabad, HYDERABAD\",\"remarks\":null,\"id\":189}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(931, 'App\\User', 1, 'created', 'App\\contact_number', 190, '[]', '{\"name\":\"Shahyar Amjad \",\"designation\":\"Junior Engineer Electrical Neelum-Jhelum\",\"mobile_1\":\"0345-9870059\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":190}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(932, 'App\\User', 1, 'created', 'App\\contact_number', 191, '[]', '{\"name\":\"Arsal Sajjad\",\"designation\":\"Junior Engineer Civil Neelum-Jhelum\",\"mobile_1\":\"0304-0361995\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":191}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(933, 'App\\User', 1, 'created', 'App\\contact_number', 192, '[]', '{\"name\":\"Mr. Ibrar\",\"designation\":\"Universal Fire Protection \",\"mobile_1\":\"0321-9700008\",\"mobile_2\":null,\"mobile_3\":null,\"office\":\"042-37429773\",\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":192}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(934, 'App\\User', 1, 'created', 'App\\contact_number', 193, '[]', '{\"name\":\"Abdul Rehman\",\"designation\":\"Unitied Insurance\",\"mobile_1\":\"0303-7179588\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":193}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(935, 'App\\User', 1, 'created', 'App\\contact_number', 194, '[]', '{\"name\":\"Amer Rauf\",\"designation\":\"MD OMS\",\"mobile_1\":\"0302-8486250\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":194}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(936, 'App\\User', 1, 'created', 'App\\contact_number', 195, '[]', '{\"name\":\"Hafiz Muhammad Umer Hayat\",\"designation\":\"Junior Engineer (Electrical)\",\"mobile_1\":\"0305-6048048\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":195}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(937, 'App\\User', 1, 'created', 'App\\contact_number', 196, '[]', '{\"name\":\"Moeez ul Huda \",\"designation\":\"Manager Finance EnMasse\",\"mobile_1\":\"0323-4038115\",\"mobile_2\":null,\"mobile_3\":null,\"office\":\"042-35314702\",\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":196}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(938, 'App\\User', 1, 'created', 'App\\contact_number', 197, '[]', '{\"name\":\"Muhammad Asif\",\"designation\":\"VU Student\",\"mobile_1\":\"0300-4824808\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":197}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(939, 'App\\User', 1, 'created', 'App\\contact_number', 198, '[]', '{\"name\":\"Kamal Hussain\",\"designation\":\"RM Business Clinet SC Bank\",\"mobile_1\":\"0300-4253027\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":\"3520113557767\'\",\"id\":198}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(940, 'App\\User', 1, 'created', 'App\\contact_number', 199, '[]', '{\"name\":\"Shahid Mahmood\",\"designation\":\"Nigeria Project\",\"mobile_1\":\"0321-6767303\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":\"smahmood6565@gmail.com\",\"address\":null,\"remarks\":null,\"id\":199}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(941, 'App\\User', 1, 'created', 'App\\contact_number', 200, '[]', '{\"name\":\"Khalid Javed Farukh\",\"designation\":\"Senior Accounts \",\"mobile_1\":\"0304-8144234\",\"mobile_2\":\"0323-8416175\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":200}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(942, 'App\\User', 1, 'created', 'App\\contact_number', 201, '[]', '{\"name\":\"Naveed Anjum\",\"designation\":\"Distribution Expert for MEPCO\",\"mobile_1\":\"0300-9686688\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":201}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(943, 'App\\User', 1, 'created', 'App\\contact_number', 202, '[]', '{\"name\":\"Naeem Basit\",\"designation\":\"Toshiba - General Traders\",\"mobile_1\":\"0300-4571194\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":202}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(944, 'App\\User', 1, 'created', 'App\\contact_number', 203, '[]', '{\"name\":\"Hafiz Usman\",\"designation\":\"Electrician BARQAAB\",\"mobile_1\":\"0333-4897026\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":203}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(945, 'App\\User', 1, 'created', 'App\\contact_number', 204, '[]', '{\"name\":\"Abdul Majid Rafi\",\"designation\":\"Accounts Officer \",\"mobile_1\":\"0333-4216022\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":204}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(946, 'App\\User', 1, 'created', 'App\\contact_number', 205, '[]', '{\"name\":\"Habib ullah Sheikh\",\"designation\":\"T& G Expert\",\"mobile_1\":\"0300-0863078\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":\"habish786@gmail.com\",\"address\":null,\"remarks\":null,\"id\":205}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(947, 'App\\User', 1, 'created', 'App\\contact_number', 206, '[]', '{\"name\":\"Hussnain Bhatti\",\"designation\":\"DASU Engineer\",\"mobile_1\":\"0304-3344117\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":206}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(948, 'App\\User', 1, 'created', 'App\\contact_number', 207, '[]', '{\"name\":\"Umer Saleem\",\"designation\":\"Junior Engineer Electrical\",\"mobile_1\":\"0331-6379595\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":207}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:24', '2019-09-13 05:11:24'),
(949, 'App\\User', 1, 'created', 'App\\contact_number', 208, '[]', '{\"name\":\"Muhammad Akram Arian\",\"designation\":\"Accountant HESCO\",\"mobile_1\":\"0344-3545417\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null,\"id\":208}', 'http://localhost/hrms/public/import_excel/phone', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:11:24', '2019-09-13 05:11:24'),
(950, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 3, '[]', '{\"employee_id\":\"5\",\"leave_type_id\":\"3\",\"balance\":\"1\",\"effective_date\":\"2019-09-13\",\"id\":3}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:48:21', '2019-09-13 05:48:21'),
(951, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 3, '{\"employee_id\":5}', '{\"employee_id\":\"2\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 05:49:11', '2019-09-13 05:49:11'),
(952, 'App\\User', 1, 'updated', 'App\\leave_initial_balance', 3, '{\"leave_type_id\":3}', '{\"leave_type_id\":\"4\"}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 06:06:12', '2019-09-13 06:06:12'),
(953, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 4, '[]', '{\"employee_id\":\"3\",\"leave_type_id\":\"4\",\"balance\":\"3\",\"effective_date\":\"2019-09-12\",\"id\":4}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 06:36:10', '2019-09-13 06:36:10'),
(954, 'App\\User', 1, 'deleted', 'App\\User', 2, '{\"id\":2,\"email\":\"athar.hussain@barqaab.com\",\"email_verified_at\":null,\"password\":\"$2y$10$owiAJxoswaDzpgNAsio.3e4zmzIZAzzfGcaiqLAY1QffrG6tzfQBi\",\"role_id\":4,\"user_status\":1,\"employee_id\":2,\"session_id\":\"hfX19Q5OnFHJrcFBt0XFvfSdZa2moziXT18lh1kc\",\"remember_token\":\"Owf1XJjRBmINrhVtDkHjiq6T3JSCMLg4A9q5YJwO0rYevTCgwgOQwTnwqlEs\"}', '[]', 'http://localhost/hrms/public/deleteUser/2', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 09:35:53', '2019-09-13 09:35:53'),
(955, 'App\\User', 1, 'created', 'App\\User', 15, '[]', '{\"employee_id\":\"2\",\"role_id\":\"4\",\"email\":\"athar.hussain@barqaab.com\",\"id\":15}', 'http://localhost/hrms/public/adminInfo/updateUserRights/2', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 09:36:26', '2019-09-13 09:36:26'),
(956, 'App\\User', 1, 'updated', 'App\\User', 15, '{\"email\":\"athar.hussain@barqaab.com\"}', '{\"email\":\"ather.hussain@barqaab.com\"}', 'http://localhost/hrms/public/adminInfo/updateUserRights/2', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 09:37:27', '2019-09-13 09:37:27'),
(957, 'App\\User', 1, 'updated', 'App\\User', 15, '{\"email\":\"ather.hussain@barqaab.com\"}', '{\"email\":\"athar.hussain@barqaab.com\"}', 'http://localhost/hrms/public/adminInfo/updateUserRights/2', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 09:37:54', '2019-09-13 09:37:54'),
(958, 'App\\User', 1, 'deleted', 'App\\leave_initial_balance', 3, '{\"id\":3,\"leave_type_id\":4,\"employee_id\":2,\"balance\":1,\"effective_date\":\"2019-09-13\"}', '[]', 'http://localhost/hrms/public/leave/deleteInitialBalance/3', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 09:42:38', '2019-09-13 09:42:38'),
(959, 'App\\User', 1, 'deleted', 'App\\leave_initial_balance', 4, '{\"id\":4,\"leave_type_id\":4,\"employee_id\":3,\"balance\":3,\"effective_date\":\"2019-09-12\"}', '[]', 'http://localhost/hrms/public/leave/deleteInitialBalance/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 09:42:46', '2019-09-13 09:42:46'),
(960, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 5, '[]', '{\"employee_id\":\"2\",\"leave_type_id\":\"4\",\"balance\":\"4\",\"effective_date\":\"2019-09-13\",\"id\":5}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 09:44:08', '2019-09-13 09:44:08'),
(961, 'App\\User', 1, 'deleted', 'App\\leave_initial_balance', 5, '{\"id\":5,\"leave_type_id\":4,\"employee_id\":2,\"balance\":4,\"effective_date\":\"2019-09-13\"}', '[]', 'http://localhost/hrms/public/leave/deleteInitialBalance/5', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 09:44:13', '2019-09-13 09:44:13'),
(962, 'App\\User', 1, 'deleted', 'App\\leave_initial_balance', 1, '{\"id\":1,\"leave_type_id\":3,\"employee_id\":1,\"balance\":5,\"effective_date\":\"2019-09-13\"}', '[]', 'http://localhost/hrms/public/leave/deleteInitialBalance/1%20onclick', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 09:58:41', '2019-09-13 09:58:41'),
(963, 'App\\User', 1, 'deleted', 'App\\leave_initial_balance', 2, '{\"id\":2,\"leave_type_id\":4,\"employee_id\":1,\"balance\":5,\"effective_date\":\"2019-09-13\"}', '[]', 'http://localhost/hrms/public/leave/deleteInitialBalance/2%20onclick', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 10:03:34', '2019-09-13 10:03:34'),
(964, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 6, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"3\",\"balance\":\"2\",\"effective_date\":\"2019-09-13\",\"id\":6}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 10:04:04', '2019-09-13 10:04:04'),
(965, 'App\\User', 1, 'deleted', 'App\\leave_initial_balance', 6, '{\"id\":6,\"leave_type_id\":3,\"employee_id\":1,\"balance\":2,\"effective_date\":\"2019-09-13\"}', '[]', 'http://localhost/hrms/public/leave/deleteInitialBalance/6%20onclick', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 10:04:17', '2019-09-13 10:04:17'),
(966, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 7, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"3\",\"balance\":\"3\",\"effective_date\":\"2019-09-20\",\"id\":7}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 10:04:28', '2019-09-13 10:04:28'),
(967, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 8, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"4\",\"balance\":\"4\",\"effective_date\":\"2019-09-12\",\"id\":8}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 10:04:50', '2019-09-13 10:04:50'),
(968, 'App\\User', 1, 'deleted', 'App\\leave_initial_balance', 7, '{\"id\":7,\"leave_type_id\":3,\"employee_id\":1,\"balance\":3,\"effective_date\":\"2019-09-20\"}', '[]', 'http://localhost/hrms/public/leave/deleteInitialBalance/7', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 10:06:39', '2019-09-13 10:06:39'),
(969, 'App\\User', 1, 'deleted', 'App\\leave_initial_balance', 8, '{\"id\":8,\"leave_type_id\":4,\"employee_id\":1,\"balance\":4,\"effective_date\":\"2019-09-12\"}', '[]', 'http://localhost/hrms/public/leave/deleteInitialBalance/8', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 10:08:13', '2019-09-13 10:08:13'),
(970, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 9, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"3\",\"balance\":\"3\",\"effective_date\":\"2019-09-12\",\"id\":9}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 10:13:57', '2019-09-13 10:13:57'),
(971, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 10, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"4\",\"balance\":\"6\",\"effective_date\":\"2019-09-12\",\"id\":10}', 'http://localhost/hrms/public/leave/storeInitialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 10:14:12', '2019-09-13 10:14:12'),
(972, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"9rtzSIVCXNQtP8bQtRna05RmnT67elFPG9tL8yaY\"}', '{\"session_id\":\"l8UicW3DZRbOpbGhKUvXiO31vvmW2ZdxYvKhVYoC\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-13 13:46:38', '2019-09-13 13:46:38'),
(973, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"l8UicW3DZRbOpbGhKUvXiO31vvmW2ZdxYvKhVYoC\"}', '{\"session_id\":\"YY5N2AMySpCd06hnPQjKW2YMI8pTrO6qWXR9ev6O\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 02:57:59', '2019-09-16 02:57:59'),
(974, 'App\\User', 1, 'created', 'App\\dependent', 5, '[]', '{\"name\":\"Muhammad Afzal\",\"date_of_birth\":null,\"relation\":\"Father\",\"gender\":\"Male\",\"employee_id\":\"1\",\"id\":5}', 'http://localhost/hrms/public/hrms/dependent', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 03:02:47', '2019-09-16 03:02:47'),
(975, 'App\\User', 1, 'deleted', 'App\\dependent', 5, '{\"id\":5,\"employee_id\":1,\"name\":\"Muhammad Afzal\",\"date_of_birth\":null,\"relation\":\"Father\",\"gender\":\"Male\"}', '[]', 'http://localhost/hrms/public/hrms/dependent/5', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 03:03:20', '2019-09-16 03:03:20'),
(976, 'App\\User', 1, 'created', 'App\\dependent', 6, '[]', '{\"name\":\"Muhammad Afzal\",\"date_of_birth\":null,\"relation\":\"Father\",\"gender\":\"Male\",\"employee_id\":\"1\",\"id\":6}', 'http://localhost/hrms/public/hrms/dependent', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 03:10:28', '2019-09-16 03:10:28'),
(977, 'App\\User', 1, 'created', 'App\\dependent', 7, '[]', '{\"name\":\"Safia Afzal\",\"date_of_birth\":null,\"relation\":\"Mother\",\"gender\":\"Female\",\"employee_id\":\"1\",\"id\":7}', 'http://localhost/hrms/public/hrms/dependent', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 03:10:57', '2019-09-16 03:10:57'),
(978, 'App\\User', 1, 'deleted', 'App\\dependent', 6, '{\"id\":6,\"employee_id\":1,\"name\":\"Muhammad Afzal\",\"date_of_birth\":null,\"relation\":\"Father\",\"gender\":\"Male\"}', '[]', 'http://localhost/hrms/public/hrms/dependent/6', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 03:11:18', '2019-09-16 03:11:18'),
(979, 'App\\User', 1, 'deleted', 'App\\dependent', 7, '{\"id\":7,\"employee_id\":1,\"name\":\"Safia Afzal\",\"date_of_birth\":null,\"relation\":\"Mother\",\"gender\":\"Female\"}', '[]', 'http://localhost/hrms/public/hrms/dependent/7', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 03:11:31', '2019-09-16 03:11:31'),
(980, 'App\\User', 1, 'created', 'App\\dependent', 8, '[]', '{\"name\":\"Muhammad Afzal\",\"date_of_birth\":null,\"relation\":\"Father\",\"gender\":\"Male\",\"employee_id\":\"1\",\"id\":8}', 'http://localhost/hrms/public/hrms/dependent', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 03:22:37', '2019-09-16 03:22:37'),
(981, 'App\\User', 1, 'updated', 'App\\dependent', 8, '{\"name\":\"Muhammad Afzal\"}', '{\"name\":\"Muhammad Afzall\"}', 'http://localhost/hrms/public/hrms/dependent/8', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 03:31:22', '2019-09-16 03:31:22'),
(982, 'App\\User', 1, 'updated', 'App\\dependent', 8, '{\"name\":\"Muhammad Afzall\"}', '{\"name\":\"Muhammad Afzal\"}', 'http://localhost/hrms/public/hrms/dependent/8', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 03:31:35', '2019-09-16 03:31:35'),
(983, 'App\\User', 1, 'deleted', 'App\\dependent', 8, '{\"id\":8,\"employee_id\":1,\"name\":\"Muhammad Afzal\",\"date_of_birth\":null,\"relation\":\"Father\",\"gender\":\"Male\"}', '[]', 'http://localhost/hrms/public/hrms/dependent/8', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 03:31:45', '2019-09-16 03:31:45'),
(984, 'App\\User', 1, 'created', 'App\\dependent', 9, '[]', '{\"name\":\"Muhammad Afzal\",\"date_of_birth\":null,\"relation\":\"Father\",\"gender\":\"Male\",\"employee_id\":\"1\",\"id\":9}', 'http://localhost/hrms/public/hrms/dependent', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 03:33:35', '2019-09-16 03:33:35'),
(985, 'App\\User', 1, 'updated', 'App\\dependent', 9, '{\"gender\":\"Male\"}', '{\"gender\":\"Female\"}', 'http://localhost/hrms/public/hrms/dependent/9', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 03:59:38', '2019-09-16 03:59:38'),
(986, 'App\\User', 1, 'updated', 'App\\dependent', 9, '{\"gender\":\"Female\"}', '{\"gender\":\"Male\"}', 'http://localhost/hrms/public/hrms/dependent/9', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 03:59:53', '2019-09-16 03:59:53'),
(987, 'App\\User', 1, 'updated', 'App\\dependent', 9, '{\"date_of_birth\":null}', '{\"date_of_birth\":\"2019-09-16\"}', 'http://localhost/hrms/public/hrms/dependent/9', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 04:00:08', '2019-09-16 04:00:08'),
(988, 'App\\User', 1, 'deleted', 'App\\dependent', 9, '{\"id\":9,\"employee_id\":1,\"name\":\"Muhammad Afzal\",\"date_of_birth\":\"2019-09-16\",\"relation\":\"Father\",\"gender\":\"Male\"}', '[]', 'http://localhost/hrms/public/hrms/dependent/9', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 04:00:16', '2019-09-16 04:00:16'),
(989, 'App\\User', 1, 'created', 'App\\dependent', 10, '[]', '{\"name\":\"Muhammad Afzal\",\"date_of_birth\":null,\"relation\":\"Father\",\"gender\":\"Male\",\"employee_id\":\"1\",\"id\":10}', 'http://localhost/hrms/public/hrms/dependent', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 04:03:15', '2019-09-16 04:03:15'),
(990, 'App\\User', 1, 'deleted', 'App\\dependent', 10, '{\"id\":10,\"employee_id\":1,\"name\":\"Muhammad Afzal\",\"date_of_birth\":null,\"relation\":\"Father\",\"gender\":\"Male\"}', '[]', 'http://localhost/hrms/public/hrms/dependent/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 04:06:10', '2019-09-16 04:06:10'),
(991, 'App\\User', 1, 'created', 'App\\education', 19, '[]', '{\"degree_name\":\"B.sc\",\"institute\":\"VU\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"14\",\"employee_id\":\"1\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2017\",\"grade\":null,\"country\":\"Pakistan\",\"id\":19}', 'http://localhost/hrms/public/storeEducation', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 09:08:17', '2019-09-16 09:08:17'),
(992, 'App\\User', 1, 'deleted', 'App\\education', 19, '{\"id\":19,\"employee_id\":1,\"degree_name\":\"B.sc\",\"institute\":\"VU\",\"level\":\"14\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2017\",\"total_marks\":null,\"marks_obtain\":null,\"grade\":null,\"country\":\"Pakistan\"}', '[]', 'http://localhost/hrms/public/deleteEducation/19', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 09:08:56', '2019-09-16 09:08:56'),
(993, 'App\\User', 1, 'updated', 'App\\education', 1, '{\"to_year\":\"2019\"}', '{\"to_year\":\"2018\"}', 'http://localhost/hrms/public/hrms/education/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 09:31:09', '2019-09-16 09:31:09'),
(994, 'App\\User', 1, 'created', 'App\\education', 20, '[]', '{\"degree_name\":\"B.Sc\",\"institute\":\"VU\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"14\",\"employee_id\":\"1\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2017\",\"grade\":null,\"country\":\"Pakistan\",\"id\":20}', 'http://localhost/hrms/public/hrms/education', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 09:44:51', '2019-09-16 09:44:51'),
(995, 'App\\User', 1, 'deleted', 'App\\education', 20, '{\"id\":20,\"employee_id\":1,\"degree_name\":\"B.Sc\",\"institute\":\"VU\",\"level\":\"14\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2017\",\"total_marks\":null,\"marks_obtain\":null,\"grade\":null,\"country\":\"Pakistan\"}', '[]', 'http://localhost/hrms/public/hrms/education/20', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 09:44:57', '2019-09-16 09:44:57'),
(996, 'App\\User', 1, 'created', 'App\\education', 21, '[]', '{\"degree_name\":\"M.SC\",\"institute\":\"VU\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"18\",\"employee_id\":\"1\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2019\",\"grade\":null,\"country\":\"Pakistan\",\"id\":21}', 'http://localhost/hrms/public/hrms/education', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 09:47:47', '2019-09-16 09:47:47'),
(997, 'App\\User', 1, 'deleted', 'App\\education', 21, '{\"id\":21,\"employee_id\":1,\"degree_name\":\"M.SC\",\"institute\":\"VU\",\"level\":\"18\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2019\",\"total_marks\":null,\"marks_obtain\":null,\"grade\":null,\"country\":\"Pakistan\"}', '[]', 'http://localhost/hrms/public/hrms/education/21', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 09:48:29', '2019-09-16 09:48:29'),
(998, 'App\\User', 1, 'created', 'App\\training', 10, '[]', '{\"title\":\"Laravel\",\"venue\":\"Lahore\",\"institute\":null,\"country\":\"Pakistan\",\"from\":null,\"to\":null,\"description\":\"Workshop\",\"employee_id\":\"1\",\"id\":10}', 'http://localhost/hrms/public/hrms/training', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 12:07:16', '2019-09-16 12:07:16'),
(999, 'App\\User', 1, 'updated', 'App\\training', 10, '{\"institute\":null}', '{\"institute\":\"VU\"}', 'http://localhost/hrms/public/hrms/training/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 12:09:12', '2019-09-16 12:09:12'),
(1000, 'App\\User', 1, 'updated', 'App\\training', 10, '{\"from\":null,\"to\":null}', '{\"from\":\"2019-09-01\",\"to\":\"2019-09-06\"}', 'http://localhost/hrms/public/hrms/training/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 12:09:39', '2019-09-16 12:09:39'),
(1001, 'App\\User', 1, 'updated', 'App\\training', 10, '{\"from\":\"2019-09-01\",\"to\":\"2019-09-06\"}', '{\"from\":null,\"to\":null}', 'http://localhost/hrms/public/hrms/training/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 12:25:32', '2019-09-16 12:25:32'),
(1002, 'App\\User', 1, 'deleted', 'App\\training', 10, '{\"id\":10,\"employee_id\":1,\"title\":\"Laravel\",\"venue\":\"Lahore\",\"institute\":\"VU\",\"country\":\"Pakistan\",\"description\":\"Workshop\",\"from\":null,\"to\":null}', '[]', 'http://localhost/hrms/public/hrms/training/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 12:27:04', '2019-09-16 12:27:04'),
(1003, 'App\\User', 1, 'created', 'App\\training', 11, '[]', '{\"title\":\"Laravel\",\"venue\":\"Lahore\",\"institute\":null,\"country\":\"Pakistan\",\"from\":null,\"to\":null,\"description\":\"workshop\",\"employee_id\":\"1\",\"id\":11}', 'http://localhost/hrms/public/hrms/training', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 12:29:40', '2019-09-16 12:29:40'),
(1004, 'App\\User', 1, 'updated', 'App\\training', 11, '{\"institute\":null}', '{\"institute\":\"VU\"}', 'http://localhost/hrms/public/hrms/training/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 12:30:08', '2019-09-16 12:30:08'),
(1005, 'App\\User', 1, 'deleted', 'App\\training', 11, '{\"id\":11,\"employee_id\":1,\"title\":\"Laravel\",\"venue\":\"Lahore\",\"institute\":\"VU\",\"country\":\"Pakistan\",\"description\":\"workshop\",\"from\":null,\"to\":null}', '[]', 'http://localhost/hrms/public/hrms/training/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 12:30:14', '2019-09-16 12:30:14'),
(1006, 'App\\User', 1, 'created', 'App\\publication', 1, '[]', '{\"title\":\"Laravel\",\"description\":\"Testing\",\"channel\":\"Testing\",\"year\":null,\"employee_id\":\"1\",\"id\":1}', 'http://localhost/hrms/public/hrms/publication', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 12:41:07', '2019-09-16 12:41:07'),
(1007, 'App\\User', 1, 'updated', 'App\\publication', 1, '{\"description\":\"Testing\",\"channel\":\"Testing\"}', '{\"description\":\"Testing123\",\"channel\":\"Testing123\"}', 'http://localhost/hrms/public/hrms/publication/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 12:41:22', '2019-09-16 12:41:22'),
(1008, 'App\\User', 1, 'deleted', 'App\\publication', 1, '{\"id\":1,\"employee_id\":1,\"title\":\"Laravel\",\"description\":\"Testing123\",\"channel\":\"Testing123\",\"year\":null}', '[]', 'http://localhost/hrms/public/hrms/publication/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 12:42:06', '2019-09-16 12:42:06'),
(1009, 'App\\User', 1, 'created', 'App\\membership', 4, '[]', '{\"name\":\"test\",\"membership_no\":\"1254\",\"expiry_date\":null,\"employee_id\":\"1\",\"id\":4}', 'http://localhost/hrms/public/hrms/membership', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 13:00:45', '2019-09-16 13:00:45'),
(1010, 'App\\User', 1, 'deleted', 'App\\membership', 4, '{\"id\":4,\"employee_id\":1,\"name\":\"test\",\"membership_no\":\"1254\",\"expiry_date\":null}', '[]', 'http://localhost/hrms/public/hrms/membership/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 13:01:00', '2019-09-16 13:01:00'),
(1011, 'App\\User', 1, 'created', 'App\\membership', 5, '[]', '{\"name\":\"test\",\"membership_no\":null,\"expiry_date\":null,\"employee_id\":\"1\",\"id\":5}', 'http://localhost/hrms/public/hrms/membership', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 13:02:59', '2019-09-16 13:02:59'),
(1012, 'App\\User', 1, 'updated', 'App\\membership', 5, '{\"name\":\"test\"}', '{\"name\":\"Testing123\"}', 'http://localhost/hrms/public/hrms/membership/5', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 13:03:15', '2019-09-16 13:03:15'),
(1013, 'App\\User', 1, 'deleted', 'App\\membership', 5, '{\"id\":5,\"employee_id\":1,\"name\":\"Testing123\",\"membership_no\":null,\"expiry_date\":null}', '[]', 'http://localhost/hrms/public/hrms/membership/5', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 13:03:21', '2019-09-16 13:03:21'),
(1014, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"bGWyQSLRctvh4lcLJjaTpqcwwTdOwG7mzSu7Z8nkaIv3ibYdKGq5dyLaJymU\"}', '{\"remember_token\":\"hyIF1wSMPlhekQPQxeonwz8CEGBzPicGxWcrFxfyIqImO0Q8GUEO1PAJdVOB\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-16 13:11:45', '2019-09-16 13:11:45'),
(1015, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"YY5N2AMySpCd06hnPQjKW2YMI8pTrO6qWXR9ev6O\"}', '{\"session_id\":\"AutF98hr4t7nmMqeY9kSbC3mZcb3aFw8voOTHqDb\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 02:53:59', '2019-09-17 02:53:59'),
(1016, 'App\\User', 1, 'created', 'App\\posting', 15, '[]', '{\"position\":\"IT Coordinator\",\"posting_date\":\"2019-09-10\",\"manager_id\":\"6\",\"joining_date\":\"2019-09-10\",\"project\":\"500kV Neelum-Jhelum Transmission Line Project\",\"location\":null,\"employee_id\":\"1\",\"id\":15}', 'http://localhost/hrms/public/hrms/posting', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 02:58:09', '2019-09-17 02:58:09'),
(1017, 'App\\User', 1, 'updated', 'App\\posting', 15, '{\"manager_id\":6}', '{\"manager_id\":\"7\"}', 'http://localhost/hrms/public/hrms/posting/15', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 02:58:40', '2019-09-17 02:58:40'),
(1018, 'App\\User', 1, 'updated', 'App\\posting', 15, '{\"project\":\"500kV Neelum-Jhelum Transmission Line Project\"}', '{\"project\":\"NTDC-KESC 500\\/220 kV Interconnection Project Associated Transmission Line (Part of GS Contract)\"}', 'http://localhost/hrms/public/hrms/posting/15', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 02:58:55', '2019-09-17 02:58:55'),
(1019, 'App\\User', 1, 'deleted', 'App\\posting', 15, '{\"id\":15,\"employee_id\":1,\"position\":\"IT Coordinator\",\"posting_date\":\"2019-09-10\",\"project\":\"NTDC-KESC 500\\/220 kV Interconnection Project Associated Transmission Line (Part of GS Contract)\",\"joining_date\":\"2019-09-10\",\"location\":null,\"manager_id\":7}', '[]', 'http://localhost/hrms/public/hrms/posting/15', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 02:59:09', '2019-09-17 02:59:09'),
(1020, 'App\\User', 1, 'created', 'App\\appointment', 16, '[]', '{\"employee_id\":\"1\",\"reference_no\":\"bqb\\/rep\\/test\",\"appointment_date\":\"2019-03-08\",\"designation\":\"Computer Operator\",\"expiry_date\":null,\"category\":\"B\",\"grade\":\"11\",\"appointment_letter_type\":\"2 Pages\",\"id\":16}', 'http://localhost/hrms/public/hrms/editAppointment/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:07:33', '2019-09-17 03:07:33'),
(1021, 'App\\User', 1, 'created', 'App\\salary', 20, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"13500\",\"employee_id\":\"1\",\"salary_remarks\":null,\"id\":20}', 'http://localhost/hrms/public/editSalary/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:07:41', '2019-09-17 03:07:41'),
(1022, 'App\\User', 1, 'created', 'App\\promotion', 9, '[]', '{\"promoted_designation\":\"IT Coordinator\",\"effective_date\":\"2019-09-03\",\"promotion_remarks\":null,\"employee_id\":\"1\",\"id\":9}', 'http://localhost/hrms/public/hrms/promotion?id=1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:15:15', '2019-09-17 03:15:15'),
(1023, 'App\\User', 1, 'created', 'App\\salary', 21, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"84000\",\"employee_id\":\"1\",\"promotion_id\":9,\"id\":21}', 'http://localhost/hrms/public/hrms/promotion?id=1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:15:15', '2019-09-17 03:15:15'),
(1024, 'App\\User', 1, 'updated', 'App\\salary', 21, '{\"total\":84000}', '{\"total\":\"80000\"}', 'http://localhost/hrms/public/hrms/promotion/9', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:15:26', '2019-09-17 03:15:26'),
(1025, 'App\\User', 1, 'deleted', 'App\\promotion', 9, '{\"id\":9,\"employee_id\":1,\"promoted_designation\":\"IT Coordinator\",\"effective_date\":\"2019-09-03\",\"promotion_remarks\":null}', '[]', 'http://localhost/hrms/public/hrms/promotion/9', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:15:34', '2019-09-17 03:15:34'),
(1026, 'App\\User', 1, 'deleted', 'App\\salary', 21, '{\"id\":21,\"employee_id\":1,\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":80000,\"promotion_id\":9,\"salary_remarks\":null}', '[]', 'http://localhost/hrms/public/hrms/promotion/9', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:15:34', '2019-09-17 03:15:34'),
(1027, 'App\\User', 1, 'created', 'App\\document', 109, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1568690587-1-CNIC Front.jpg\",\"file_path\":\"documents\\/1_Sohail__Afzal\\/\",\"employee_id\":1,\"type\":\"image\\/jpeg\",\"id\":109}', 'http://localhost/hrms/public/hrms/document', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:23:08', '2019-09-17 03:23:08'),
(1028, 'App\\User', 1, 'updated', 'App\\document', 109, '{\"document_name\":\"CNIC Front\"}', '{\"document_name\":\"CNIC Back\"}', 'http://localhost/hrms/public/hrms/document/109', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:23:55', '2019-09-17 03:23:55'),
(1029, 'App\\User', 1, 'deleted', 'App\\document', 109, '{\"id\":109,\"employee_id\":1,\"document_name\":\"CNIC Back\",\"file_name\":\"1568690587-1-CNIC Front.jpg\",\"file_path\":\"documents\\/1_Sohail__Afzal\\/\",\"type\":\"image\\/jpeg\",\"reference_no\":null,\"date\":null}', '[]', 'http://localhost/hrms/public/hrms/document/109', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:24:03', '2019-09-17 03:24:03'),
(1030, 'App\\User', 1, 'updated', 'App\\language', 10, '{\"reading\":\"Good\"}', '{\"reading\":\"Excellent\"}', 'http://localhost/hrms/public/hrms/language/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:30:03', '2019-09-17 03:30:03'),
(1031, 'App\\User', 1, 'created', 'App\\language', 12, '[]', '{\"name\":\"Arabic\",\"reading\":\"Good\",\"speaking\":\"Average\",\"writing\":\"Average\",\"employee_id\":\"1\",\"id\":12}', 'http://localhost/hrms/public/hrms/language', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:30:24', '2019-09-17 03:30:24'),
(1032, 'App\\User', 1, 'deleted', 'App\\language', 12, '{\"id\":12,\"employee_id\":1,\"name\":\"Arabic\",\"writing\":\"Average\",\"speaking\":\"Average\",\"reading\":\"Good\"}', '[]', 'http://localhost/hrms/public/hrms/language/12', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:30:34', '2019-09-17 03:30:34'),
(1033, 'App\\User', 1, 'created', 'App\\emergency_contact', 5, '[]', '{\"name\":\"Muhammad Afzal\",\"relation\":\"Father\",\"mobile\":\"03454145910\",\"landline\":\"0427418187\",\"employee_id\":\"1\",\"id\":5}', 'http://localhost/hrms/public/hrms/emergency', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:37:04', '2019-09-17 03:37:04'),
(1034, 'App\\User', 1, 'deleted', 'App\\emergency_contact', 5, '{\"id\":5,\"employee_id\":1,\"name\":\"Muhammad Afzal\",\"relation\":\"Father\",\"mobile\":\"03454145910\",\"landline\":\"0427418187\"}', '[]', 'http://localhost/hrms/public/hrms/emergency/5', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:37:10', '2019-09-17 03:37:10'),
(1035, 'App\\User', 1, 'updated', 'App\\other_information', 1, '{\"kin_name\":\"Muhammad Afzal\"}', '{\"kin_name\":\"Muhammad Afzala\"}', 'http://localhost/hrms/public/hrms/otherInformation/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:45:28', '2019-09-17 03:45:28'),
(1036, 'App\\User', 1, 'updated', 'App\\other_information', 1, '{\"kin_name\":\"Muhammad Afzala\"}', '{\"kin_name\":\"Muhammad Afzal\"}', 'http://localhost/hrms/public/hrms/otherInformation/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:45:34', '2019-09-17 03:45:34'),
(1037, 'App\\User', 1, 'updated', 'App\\salary', 20, '{\"total\":13500}', '{\"total\":\"13501\"}', 'http://localhost/hrms/public/hrms/salary/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:57:49', '2019-09-17 03:57:49'),
(1038, 'App\\User', 1, 'updated', 'App\\salary', 20, '{\"total\":13501}', '{\"total\":\"13500\"}', 'http://localhost/hrms/public/hrms/salary/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 03:57:56', '2019-09-17 03:57:56'),
(1039, 'App\\User', 1, 'updated', 'App\\appointment', 1, '{\"designation_id\":0}', '{\"designation_id\":\"1\"}', 'http://localhost/hrms/public/hrms/appointment/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 08:55:13', '2019-09-17 08:55:13'),
(1040, 'App\\User', 1, 'updated', 'App\\appointment', 10, '{\"designation_id\":0}', '{\"designation_id\":\"18\"}', 'http://localhost/hrms/public/hrms/appointment/16', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 08:57:59', '2019-09-17 08:57:59'),
(1041, 'App\\User', 1, 'updated', 'App\\appointment', 2, '{\"designation_id\":0}', '{\"designation_id\":\"7\"}', 'http://localhost/hrms/public/hrms/appointment/5', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:01:09', '2019-09-17 09:01:09'),
(1042, 'App\\User', 1, 'updated', 'App\\appointment', 4, '{\"designation_id\":0}', '{\"designation_id\":\"2\"}', 'http://localhost/hrms/public/hrms/appointment/7', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:01:28', '2019-09-17 09:01:28'),
(1043, 'App\\User', 1, 'updated', 'App\\appointment', 3, '{\"designation_id\":0}', '{\"designation_id\":\"3\"}', 'http://localhost/hrms/public/hrms/appointment/6', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:02:05', '2019-09-17 09:02:05'),
(1044, 'App\\User', 1, 'updated', 'App\\appointment', 8, '{\"designation_id\":0}', '{\"designation_id\":\"25\"}', 'http://localhost/hrms/public/hrms/appointment/14', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:02:48', '2019-09-17 09:02:48'),
(1045, 'App\\User', 1, 'updated', 'App\\appointment', 15, '{\"designation_id\":0}', '{\"designation_id\":\"35\"}', 'http://localhost/hrms/public/hrms/appointment/20', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:04:54', '2019-09-17 09:04:54'),
(1046, 'App\\User', 1, 'updated', 'App\\appointment', 14, '{\"designation_id\":0}', '{\"designation_id\":\"28\"}', 'http://localhost/hrms/public/hrms/appointment/19', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:09:24', '2019-09-17 09:09:24'),
(1047, 'App\\User', 1, 'updated', 'App\\appointment', 16, '{\"designation_id\":0}', '{\"designation_id\":\"23\"}', 'http://localhost/hrms/public/hrms/appointment/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:09:56', '2019-09-17 09:09:56'),
(1048, 'App\\User', 1, 'updated', 'App\\appointment', 5, '{\"designation_id\":0}', '{\"designation_id\":\"16\"}', 'http://localhost/hrms/public/hrms/appointment/8', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:30:21', '2019-09-17 09:30:21'),
(1049, 'App\\User', 1, 'updated', 'App\\appointment', 6, '{\"designation_id\":0}', '{\"designation_id\":\"34\"}', 'http://localhost/hrms/public/hrms/appointment/12', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:31:44', '2019-09-17 09:31:44'),
(1050, 'App\\User', 1, 'updated', 'App\\appointment', 7, '{\"designation_id\":0}', '{\"designation_id\":\"28\"}', 'http://localhost/hrms/public/hrms/appointment/13', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:33:58', '2019-09-17 09:33:58'),
(1051, 'App\\User', 1, 'updated', 'App\\appointment', 9, '{\"designation_id\":0}', '{\"designation_id\":\"27\"}', 'http://localhost/hrms/public/hrms/appointment/15', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:35:23', '2019-09-17 09:35:23'),
(1052, 'App\\User', 1, 'updated', 'App\\appointment', 11, '{\"designation_id\":0}', '{\"designation_id\":\"29\"}', 'http://localhost/hrms/public/hrms/appointment/17', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:40:37', '2019-09-17 09:40:37'),
(1053, 'App\\User', 1, 'updated', 'App\\appointment', 12, '{\"designation_id\":0}', '{\"designation_id\":\"24\"}', 'http://localhost/hrms/public/hrms/appointment/3', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:41:21', '2019-09-17 09:41:21'),
(1054, 'App\\User', 1, 'updated', 'App\\appointment', 13, '{\"designation_id\":0}', '{\"designation_id\":\"35\"}', 'http://localhost/hrms/public/hrms/appointment/18', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-17 09:42:15', '2019-09-17 09:42:15'),
(1055, 'App\\User', 14, 'updated', 'App\\User', 14, '{\"session_id\":\"VnWzgaj2mEsX6pi5pF8iOyyAJMGXlKsD2MTttHfc\"}', '{\"session_id\":\"FIScfjsQ4qcRmxze5r04vbpBSw1iB0L1e4QsIWiZ\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', NULL, '2019-09-17 10:02:11', '2019-09-17 10:02:11'),
(1056, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"AutF98hr4t7nmMqeY9kSbC3mZcb3aFw8voOTHqDb\"}', '{\"session_id\":\"XZ0yYbGQnK7xdtfmPBojV8aKl9FEuDacYkC8dgME\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 03:34:59', '2019-09-18 03:34:59'),
(1057, 'App\\User', 1, 'updated', 'App\\nationality', 11, '{\"country_id\":1}', '{\"country_id\":\"2\"}', 'http://localhost/hrms/public/hrms/employee/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 05:29:26', '2019-09-18 05:29:26'),
(1058, 'App\\User', 1, 'updated', 'App\\nationality', 11, '{\"country_id\":2}', '{\"country_id\":\"1\"}', 'http://localhost/hrms/public/hrms/employee/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 05:29:33', '2019-09-18 05:29:33'),
(1059, 'App\\User', 1, 'updated', 'App\\language', 10, '{\"all_language_id\":1}', '{\"all_language_id\":\"10\"}', 'http://localhost/hrms/public/hrms/language/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 06:48:38', '2019-09-18 06:48:38'),
(1060, 'App\\User', 1, 'updated', 'App\\language', 10, '{\"all_language_id\":10}', '{\"all_language_id\":\"2\"}', 'http://localhost/hrms/public/hrms/language/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 06:48:52', '2019-09-18 06:48:52'),
(1061, 'App\\User', 1, 'updated', 'App\\language', 11, '{\"all_language_id\":2}', '{\"all_language_id\":\"11\"}', 'http://localhost/hrms/public/hrms/language/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 06:50:05', '2019-09-18 06:50:05'),
(1062, 'App\\User', 1, 'deleted', 'App\\language', 10, '{\"id\":10,\"employee_id\":1,\"all_language_id\":2,\"writing\":\"Good\",\"speaking\":\"Good\",\"reading\":\"Excellent\"}', '[]', 'http://localhost/hrms/public/hrms/language/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 06:52:05', '2019-09-18 06:52:05'),
(1063, 'App\\User', 1, 'deleted', 'App\\language', 11, '{\"id\":11,\"employee_id\":1,\"all_language_id\":11,\"writing\":\"Excellent\",\"speaking\":\"Excellent\",\"reading\":\"Excellent\"}', '[]', 'http://localhost/hrms/public/hrms/language/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 06:52:11', '2019-09-18 06:52:11'),
(1064, 'App\\User', 1, 'created', 'App\\language', 12, '[]', '{\"all_language_id\":\"1\",\"reading\":\"Average\",\"speaking\":\"Average\",\"writing\":\"Good\",\"employee_id\":\"1\",\"id\":12}', 'http://localhost/hrms/public/hrms/language', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 06:52:20', '2019-09-18 06:52:20'),
(1065, 'App\\User', 1, 'created', 'App\\language', 13, '[]', '{\"all_language_id\":\"1\",\"reading\":\"Good\",\"speaking\":\"Average\",\"writing\":\"Average\",\"employee_id\":\"1\",\"id\":13}', 'http://localhost/hrms/public/hrms/language', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 06:55:47', '2019-09-18 06:55:47'),
(1066, 'App\\User', 1, 'deleted', 'App\\language', 12, '{\"id\":12,\"employee_id\":1,\"all_language_id\":1,\"writing\":\"Good\",\"speaking\":\"Average\",\"reading\":\"Average\"}', '[]', 'http://localhost/hrms/public/hrms/language/12', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 06:55:55', '2019-09-18 06:55:55'),
(1067, 'App\\User', 1, 'deleted', 'App\\language', 13, '{\"id\":13,\"employee_id\":1,\"all_language_id\":1,\"writing\":\"Average\",\"speaking\":\"Average\",\"reading\":\"Good\"}', '[]', 'http://localhost/hrms/public/hrms/language/13', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 06:56:00', '2019-09-18 06:56:00'),
(1068, 'App\\User', 1, 'created', 'App\\language', 14, '[]', '{\"all_language_id\":\"1\",\"reading\":\"Excellent\",\"speaking\":\"Excellent\",\"writing\":\"Excellent\",\"employee_id\":\"1\",\"id\":14}', 'http://localhost/hrms/public/hrms/language', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 07:02:11', '2019-09-18 07:02:11');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1069, 'App\\User', 1, 'updated', 'App\\experience', 4, '{\"country_id\":1}', '{\"country_id\":\"2\"}', 'http://localhost/hrms/public/hrms/experience/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 07:40:05', '2019-09-18 07:40:05'),
(1070, 'App\\User', 1, 'updated', 'App\\experience', 4, '{\"country_id\":2}', '{\"country_id\":\"1\"}', 'http://localhost/hrms/public/hrms/experience/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 07:40:17', '2019-09-18 07:40:17'),
(1071, 'App\\User', 1, 'updated', 'App\\experience', 4, '{\"activities\":null}', '{\"activities\":\"testing 123\"}', 'http://localhost/hrms/public/hrms/experience/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 07:40:24', '2019-09-18 07:40:24'),
(1072, 'App\\User', 1, 'created', 'App\\experience', 12, '[]', '{\"employer\":\"GUI Gas\",\"position\":\"Computer Operator\",\"from\":\"2019-09-18\",\"to\":\"2019-09-30\",\"country_id\":\"1\",\"activities\":null,\"employee_id\":\"1\",\"id\":12}', 'http://localhost/hrms/public/hrms/experience', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 07:43:27', '2019-09-18 07:43:27'),
(1073, 'App\\User', 1, 'deleted', 'App\\experience', 12, '{\"id\":12,\"employee_id\":1,\"employer\":\"GUI Gas\",\"position\":\"Computer Operator\",\"from\":\"2019-09-18\",\"to\":\"2019-09-30\",\"country_id\":1,\"activities\":null}', '[]', 'http://localhost/hrms/public/hrms/experience/12', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 07:43:52', '2019-09-18 07:43:52'),
(1074, 'App\\User', 1, 'created', 'App\\training', 10, '[]', '{\"title\":\"Laravel\",\"venue\":null,\"institute\":null,\"country_id\":\"1\",\"from\":null,\"to\":null,\"description\":\"Laravel\",\"employee_id\":\"1\",\"id\":10}', 'http://localhost/hrms/public/hrms/training', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 07:45:13', '2019-09-18 07:45:13'),
(1075, 'App\\User', 1, 'updated', 'App\\training', 10, '{\"country_id\":1}', '{\"country_id\":\"2\"}', 'http://localhost/hrms/public/hrms/training/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 07:45:26', '2019-09-18 07:45:26'),
(1076, 'App\\User', 1, 'updated', 'App\\training', 10, '{\"country_id\":2}', '{\"country_id\":\"1\"}', 'http://localhost/hrms/public/hrms/training/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 07:46:42', '2019-09-18 07:46:42'),
(1077, 'App\\User', 1, 'created', 'App\\contact', 13, '[]', '{\"employee_id\":\"1\",\"type\":\"1\",\"house\":\"3\",\"street\":\"1\",\"town\":\"Rehman Park\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country_id\":\"1\",\"mobile\":\"03454145910\",\"landline\":\"042-37418187\",\"id\":13}', 'http://localhost/hrms/public/editCurrentAddress/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 07:51:57', '2019-09-18 07:51:57'),
(1078, 'App\\User', 1, 'created', 'App\\dependent', 5, '[]', '{\"name\":\"Muhammad Afzal\",\"date_of_birth\":null,\"relation\":\"Father\",\"gender_id\":\"1\",\"employee_id\":\"1\",\"id\":5}', 'http://localhost/hrms/public/hrms/dependent', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 08:41:24', '2019-09-18 08:41:24'),
(1079, 'App\\User', 1, 'updated', 'App\\dependent', 5, '{\"gender_id\":1}', '{\"gender_id\":\"2\"}', 'http://localhost/hrms/public/hrms/dependent/5', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 08:43:10', '2019-09-18 08:43:10'),
(1080, 'App\\User', 1, 'deleted', 'App\\dependent', 5, '{\"id\":5,\"employee_id\":1,\"name\":\"Muhammad Afzal\",\"date_of_birth\":null,\"relation\":\"Father\",\"gender_id\":2}', '[]', 'http://localhost/hrms/public/hrms/dependent/5', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 08:43:16', '2019-09-18 08:43:16'),
(1081, 'App\\User', 1, 'created', 'App\\dependent', 6, '[]', '{\"name\":\"Muhammad Afzal\",\"date_of_birth\":null,\"relation\":\"Father\",\"gender_id\":\"1\",\"employee_id\":\"1\",\"id\":6}', 'http://localhost/hrms/public/hrms/dependent', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 08:44:58', '2019-09-18 08:44:58'),
(1082, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"hyIF1wSMPlhekQPQxeonwz8CEGBzPicGxWcrFxfyIqImO0Q8GUEO1PAJdVOB\"}', '{\"remember_token\":\"S495rhxyGkhdpAkQ0aZ1tRdgB7766QEyBbxT3gOO0JcO0FGGI99gyU6UDgEy\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 12:57:24', '2019-09-18 12:57:24'),
(1083, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"XZ0yYbGQnK7xdtfmPBojV8aKl9FEuDacYkC8dgME\"}', '{\"session_id\":\"sIegaNzcOFGmBt6nkkKkTap7VgbqrUiIOcbWeYzL\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 13:05:44', '2019-09-18 13:05:44'),
(1084, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"S495rhxyGkhdpAkQ0aZ1tRdgB7766QEyBbxT3gOO0JcO0FGGI99gyU6UDgEy\"}', '{\"remember_token\":\"aaLFlpRdq9qRu6vJRtPt33gjBaPZ62UWp1iIBAj68ENb1F6FfCqRqoe3qUGW\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-18 13:08:15', '2019-09-18 13:08:15'),
(1085, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"sIegaNzcOFGmBt6nkkKkTap7VgbqrUiIOcbWeYzL\"}', '{\"session_id\":\"fkrQq9KOEfequuBsZoGcZNDR2Ws37wEWN41vbV5c\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 05:10:57', '2019-09-19 05:10:57'),
(1086, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":null}', '{\"session_id\":\"MgtAXmqEBcpFqClXsgZGc5oye3HN2U0WdE0oDfzQ\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:14:04', '2019-09-19 05:14:04'),
(1087, 'App\\User', 15, 'created', 'App\\employee', 21, '[]', '{\"first_name\":\"Zamir\",\"middle_name\":null,\"last_name\":\"Abbas\",\"father_name\":\"Naseer Ahmad\",\"date_of_birth\":\"1983-03-02\",\"gender_id\":\"1\",\"cnic\":\"35202-2769718-9\",\"cnic_expiry\":\"2023-09-30\",\"employee_no\":null,\"marital_status_id\":\"2\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":21}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:21:48', '2019-09-19 05:21:48'),
(1088, 'App\\User', 15, 'created', 'App\\nationality', 21, '[]', '{\"country_id\":\"1\",\"employee_id\":21,\"id\":21}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:21:48', '2019-09-19 05:21:48'),
(1089, 'App\\User', 15, 'created', 'App\\picture', 19, '[]', '{\"name\":\"21-Zamir  Abbas.png\",\"employee_id\":21,\"type\":\"image\\/png\",\"size\":55919,\"width\":\"100\",\"height\":\"100\",\"id\":19}', 'http://192.168.1.10/hrms/public/editPicture/21', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:22:41', '2019-09-19 05:22:41'),
(1090, 'App\\User', 1, 'created', 'App\\salary', 21, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"4000\",\"employee_id\":\"11\",\"salary_remarks\":null,\"id\":21}', 'http://localhost/hrms/public/hrms/salary/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 05:31:12', '2019-09-19 05:31:12'),
(1091, 'App\\User', 15, 'created', 'App\\appointment', 17, '[]', '{\"employee_id\":\"21\",\"reference_no\":\"BQB\\/W\\/01\\/539\\/MA\\/868\",\"appointment_date\":\"2006-07-15\",\"designation_id\":\"34\",\"expiry_date\":null,\"category\":\"C\",\"grade\":\"13\",\"appointment_letter_type\":\"1 Page\",\"id\":17}', 'http://192.168.1.10/hrms/public/hrms/appointment/21', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:32:24', '2019-09-19 05:32:24'),
(1092, 'App\\User', 1, 'created', 'App\\appointment', 18, '[]', '{\"employee_id\":\"11\",\"reference_no\":\"BQB\\/PF\\/122\",\"appointment_date\":\"2000-08-09\",\"designation_id\":\"35\",\"expiry_date\":null,\"category\":\"A\",\"grade\":null,\"appointment_letter_type\":\"2 Pages\",\"id\":18}', 'http://localhost/hrms/public/hrms/appointment/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 05:32:53', '2019-09-19 05:32:53'),
(1093, 'App\\User', 15, 'created', 'App\\salary', 22, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"6500\",\"employee_id\":\"21\",\"salary_remarks\":null,\"id\":22}', 'http://192.168.1.10/hrms/public/hrms/salary/21', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:33:28', '2019-09-19 05:33:28'),
(1094, 'App\\User', 1, 'created', 'App\\posting', 15, '[]', '{\"position\":\"35\",\"posting_date\":\"2000-08-09\",\"manager_id\":\"7\",\"joining_date\":\"2000-08-09\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"11\",\"id\":15}', 'http://localhost/hrms/public/hrms/posting', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 05:33:45', '2019-09-19 05:33:45'),
(1095, 'App\\User', 15, 'created', 'App\\promotion', 9, '[]', '{\"promoted_designation\":\"Driver\",\"effective_date\":\"2009-11-12\",\"promotion_remarks\":null,\"employee_id\":\"21\",\"id\":9}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=21', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:36:29', '2019-09-19 05:36:29'),
(1096, 'App\\User', 15, 'created', 'App\\salary', 23, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"23699\",\"employee_id\":\"21\",\"promotion_id\":9,\"id\":23}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=21', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:36:29', '2019-09-19 05:36:29'),
(1097, 'App\\User', 15, 'created', 'App\\contact', 14, '[]', '{\"employee_id\":\"21\",\"type\":\"0\",\"house\":\"H. No. 06, Johar Street, Jeewan Hana, Lahore\",\"street\":null,\"town\":\"Jeewan Hana\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country_id\":\"1\",\"mobile\":\"03008135177\",\"landline\":null,\"id\":14}', 'http://192.168.1.10/hrms/public/editPermanentAddress/21', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:38:27', '2019-09-19 05:38:27'),
(1099, 'App\\User', 1, 'created', 'App\\promotion', 11, '[]', '{\"promoted_designation\":\"Driver\",\"effective_date\":\"2010-01-01\",\"promotion_remarks\":\"Promote from Utility Person to Driver with Grade-12\",\"employee_id\":\"11\",\"id\":11}', 'http://localhost/hrms/public/hrms/promotion?id=11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 05:40:52', '2019-09-19 05:40:52'),
(1100, 'App\\User', 1, 'created', 'App\\salary', 24, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"15000\",\"employee_id\":\"11\",\"promotion_id\":11,\"id\":24}', 'http://localhost/hrms/public/hrms/promotion?id=11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 05:40:52', '2019-09-19 05:40:52'),
(1101, 'App\\User', 1, 'updated', 'App\\salary', 24, '{\"total\":15000}', '{\"total\":\"29019\"}', 'http://localhost/hrms/public/hrms/promotion/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 05:41:32', '2019-09-19 05:41:32'),
(1102, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"MgtAXmqEBcpFqClXsgZGc5oye3HN2U0WdE0oDfzQ\"}', '{\"session_id\":\"rGCxmrpl8uD0tR8hmxF1ksGCqj5T1KyrUfaGFa27\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:42:00', '2019-09-19 05:42:00'),
(1103, 'App\\User', 1, 'created', 'App\\emergency_contact', 5, '[]', '{\"name\":\"Tanzeel Jahangir\",\"relation\":\"Wife\",\"mobile\":\"0302-4587929\",\"landline\":null,\"employee_id\":\"11\",\"id\":5}', 'http://localhost/hrms/public/hrms/emergency', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 05:43:51', '2019-09-19 05:43:51'),
(1104, 'App\\User', 1, 'created', 'App\\emergency_contact', 6, '[]', '{\"name\":\"Tanzeel Jahangir\",\"relation\":\"Wife\",\"mobile\":\"0302-4587929\",\"landline\":null,\"employee_id\":\"11\",\"id\":6}', 'http://localhost/hrms/public/hrms/emergency', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 05:43:51', '2019-09-19 05:43:51'),
(1105, 'App\\User', 15, 'created', 'App\\employee', 22, '[]', '{\"first_name\":\"Muhammad\",\"middle_name\":null,\"last_name\":\"Asif\",\"father_name\":\"Muhammad Idrees\",\"date_of_birth\":\"1978-09-18\",\"gender_id\":\"1\",\"cnic\":\"34502-7697993-7\",\"cnic_expiry\":\"2021-02-25\",\"employee_no\":null,\"marital_status_id\":\"2\",\"religon\":\"Islam\",\"division_id\":\"2\",\"id\":22}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:44:26', '2019-09-19 05:44:26'),
(1106, 'App\\User', 15, 'created', 'App\\nationality', 22, '[]', '{\"country_id\":\"1\",\"employee_id\":22,\"id\":22}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:44:27', '2019-09-19 05:44:27'),
(1107, 'App\\User', 15, 'created', 'App\\picture', 20, '[]', '{\"name\":\"22-Muhammad  Asif.png\",\"employee_id\":22,\"type\":\"image\\/png\",\"size\":79375,\"width\":\"100\",\"height\":\"100\",\"id\":20}', 'http://192.168.1.10/hrms/public/editPicture/22', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:45:49', '2019-09-19 05:45:49'),
(1108, 'App\\User', 15, 'created', 'App\\posting', 16, '[]', '{\"position\":\"34\",\"posting_date\":\"2000-08-08\",\"manager_id\":\"7\",\"joining_date\":\"1998-08-08\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"22\",\"id\":16}', 'http://192.168.1.10/hrms/public/hrms/posting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:47:11', '2019-09-19 05:47:11'),
(1109, 'App\\User', 15, 'created', 'App\\appointment', 19, '[]', '{\"employee_id\":\"22\",\"reference_no\":\"BQB\\/PF\\/125\",\"appointment_date\":\"2000-08-10\",\"designation_id\":\"34\",\"expiry_date\":null,\"category\":\"C\",\"grade\":null,\"appointment_letter_type\":\"2 Pages\",\"id\":19}', 'http://192.168.1.10/hrms/public/hrms/appointment/22', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:48:40', '2019-09-19 05:48:40'),
(1110, 'App\\User', 1, 'created', 'App\\other_information', 2, '[]', '{\"employee_id\":\"11\",\"driving_licence\":\"2007\\/7962\",\"licence_expiry\":\"2022-05-06\",\"disability\":null,\"blood_group\":\"1\",\"passport_no\":null,\"passport_expiry\":null,\"kin_name\":\"Tanzeel Jahangir\",\"kin_relation\":\"Wife\",\"kin_address\":\"Same as Permanent Address\",\"kin_contact_number\":\"0302-4587929\",\"id\":2}', 'http://localhost/hrms/public/hrms/otherInformation/11', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 05:48:43', '2019-09-19 05:48:43'),
(1111, 'App\\User', 15, 'created', 'App\\salary', 25, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"5000\",\"employee_id\":\"22\",\"salary_remarks\":null,\"id\":25}', 'http://192.168.1.10/hrms/public/hrms/salary/22', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:48:53', '2019-09-19 05:48:53'),
(1112, 'App\\User', 15, 'created', 'App\\promotion', 12, '[]', '{\"promoted_designation\":\"Driver\",\"effective_date\":\"2001-08-31\",\"promotion_remarks\":null,\"employee_id\":\"22\",\"id\":12}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=22', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:50:25', '2019-09-19 05:50:25'),
(1113, 'App\\User', 15, 'created', 'App\\salary', 26, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"6816\",\"employee_id\":\"22\",\"promotion_id\":12,\"id\":26}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=22', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:50:25', '2019-09-19 05:50:25'),
(1114, 'App\\User', 15, 'created', 'App\\contact', 15, '[]', '{\"employee_id\":\"22\",\"type\":\"0\",\"house\":\"Rasool pur, Gumtala, Shakir Garh, District Narowal\",\"street\":null,\"town\":\"Gumtala\",\"tehsil\":null,\"city\":\"Norowal\",\"province\":\"Punjab\",\"country_id\":\"1\",\"mobile\":\"0331-4720360\",\"landline\":null,\"id\":15}', 'http://192.168.1.10/hrms/public/editPermanentAddress/22', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 05:53:20', '2019-09-19 05:53:20'),
(1115, 'App\\User', 1, 'updated', 'App\\document', 106, '{\"file_name\":\"1568349868-18-HR Form.pdf\"}', '{\"file_name\":\"1568872817-18-HR Form.pdf\"}', 'http://localhost/hrms/public/hrms/document/106', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 06:00:19', '2019-09-19 06:00:19'),
(1116, 'App\\User', 1, 'created', 'App\\document', 109, '[]', '{\"document_name\":\"Appointment Letter\",\"date\":\"2005-12-31\",\"file_name\":\"1568872876-18-Appointment Letter.pdf\",\"file_path\":\"documents\\/18_Muhammad_Rafiq_Khan\\/\",\"employee_id\":18,\"type\":\"application\\/pdf\",\"id\":109}', 'http://localhost/hrms/public/hrms/document', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 06:01:16', '2019-09-19 06:01:16'),
(1117, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"rGCxmrpl8uD0tR8hmxF1ksGCqj5T1KyrUfaGFa27\"}', '{\"session_id\":\"Z0DBQfo1S52lhek0TI4Z21rE3pkLZNj9O5WYvOLJ\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-19 07:07:32', '2019-09-19 07:07:32'),
(1118, 'App\\User', 1, 'deleted', 'App\\leave_initial_balance', 9, '{\"id\":9,\"leave_type_id\":3,\"employee_id\":1,\"balance\":3,\"effective_date\":\"2019-09-12\"}', '[]', 'http://localhost/hrms/public/leave/deleteInitialBalance/9', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 07:35:33', '2019-09-19 07:35:33'),
(1119, 'App\\User', 1, 'deleted', 'App\\leave_initial_balance', 10, '{\"id\":10,\"leave_type_id\":4,\"employee_id\":1,\"balance\":6,\"effective_date\":\"2019-09-12\"}', '[]', 'http://localhost/hrms/public/leave/deleteInitialBalance/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 07:35:37', '2019-09-19 07:35:37'),
(1120, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"fkrQq9KOEfequuBsZoGcZNDR2Ws37wEWN41vbV5c\"}', '{\"session_id\":\"MZI3w38s159EBlyNqd4eyVJF5obuKu7nxbjWOSu8\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 09:03:06', '2019-09-19 09:03:06'),
(1121, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 2, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"3\",\"balance\":\"7\",\"effective_date\":\"2019-09-19\",\"id\":2}', 'http://localhost/hrms/public/leave/initialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 09:31:10', '2019-09-19 09:31:10'),
(1122, 'App\\User', 1, 'created', 'App\\leave_initial_balance', 1, '[]', '{\"employee_id\":\"1\",\"leave_type_id\":\"3\",\"balance\":\"7\",\"effective_date\":\"2019-09-19\",\"id\":1}', 'http://localhost/hrms/public/leave/initialBalance', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 09:31:10', '2019-09-19 09:31:10'),
(1123, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"MZI3w38s159EBlyNqd4eyVJF5obuKu7nxbjWOSu8\"}', '{\"session_id\":\"ACL6QZXrfcsgnmXvDDACMHNerkMoQ55t9u3cR5Fy\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 13:32:22', '2019-09-19 13:32:22'),
(1124, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"aaLFlpRdq9qRu6vJRtPt33gjBaPZ62UWp1iIBAj68ENb1F6FfCqRqoe3qUGW\"}', '{\"remember_token\":\"j1u6Vyd5Zxf4dzgDhgVV9Kvnl0o75WLLxojgKQ6NABMqdtyDUgd5l9q5gJBB\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 13:33:40', '2019-09-19 13:33:40'),
(1125, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"j1u6Vyd5Zxf4dzgDhgVV9Kvnl0o75WLLxojgKQ6NABMqdtyDUgd5l9q5gJBB\"}', '{\"remember_token\":\"Pt7HIP838dS6sG8nzyDFM6zri5FzezK0JJxVhBjchIqxzbXhu0X6IYM1WShf\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 13:33:40', '2019-09-19 13:33:40'),
(1126, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"ACL6QZXrfcsgnmXvDDACMHNerkMoQ55t9u3cR5Fy\"}', '{\"session_id\":\"8f7e2dpO8cAgSFhQmE9SYcTfT49eWgDR3ZNunoww\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-20 02:56:37', '2019-09-20 02:56:37'),
(1127, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"Pt7HIP838dS6sG8nzyDFM6zri5FzezK0JJxVhBjchIqxzbXhu0X6IYM1WShf\"}', '{\"remember_token\":\"P4Y3qdHyuZr6RshgmtcMbNkx9XS1wcEZ58Wg5N1DgQQw3uBZtpyJ3jLw7Uhb\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-20 06:35:48', '2019-09-20 06:35:48'),
(1128, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"8f7e2dpO8cAgSFhQmE9SYcTfT49eWgDR3ZNunoww\"}', '{\"session_id\":\"M0A4ZOXnxC1lqoSqUv3JFXidPEDi9g7aaOOKEvPV\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-20 06:36:05', '2019-09-20 06:36:05'),
(1129, 'App\\User', 14, 'updated', 'App\\User', 14, '{\"session_id\":\"FIScfjsQ4qcRmxze5r04vbpBSw1iB0L1e4QsIWiZ\"}', '{\"session_id\":\"hDZz5kv9X1vHFzDXFaRgHgI3ap6ZZTHhUqdon9yL\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', NULL, '2019-09-20 07:21:26', '2019-09-20 07:21:26'),
(1130, 'App\\User', 1, 'created', 'App\\contact_number', 209, '[]', '{\"name\":\"Testing\",\"designation\":null,\"mobile_1\":\"123456\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":209}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-20 07:29:28', '2019-09-20 07:29:28'),
(1131, 'App\\User', 1, 'created', 'App\\contact_number', 210, '[]', '{\"name\":\"Testing\",\"designation\":null,\"mobile_1\":\"123456\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":210}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-20 07:29:56', '2019-09-20 07:29:56'),
(1132, 'App\\User', 1, 'created', 'App\\contact_number', 211, '[]', '{\"name\":\"Testing\",\"designation\":null,\"mobile_1\":\"123456\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":211}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-20 07:30:27', '2019-09-20 07:30:27'),
(1133, 'App\\User', 1, 'created', 'App\\contact_number', 212, '[]', '{\"name\":\"Testing 1234\",\"designation\":null,\"mobile_1\":\"1234\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":212}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-20 09:01:42', '2019-09-20 09:01:42'),
(1134, 'App\\User', 1, 'created', 'App\\contact_number', 213, '[]', '{\"name\":\"Testing 1234\",\"designation\":null,\"mobile_1\":\"1234\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":213}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-20 09:01:42', '2019-09-20 09:01:42'),
(1135, 'App\\User', 1, 'deleted', 'App\\contact_number', 212, '{\"id\":212,\"name\":\"Testing 1234\",\"designation\":null,\"mobile_1\":\"1234\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null}', '[]', 'http://localhost/hrms/public/hrms/contactNumber/212', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-20 09:01:58', '2019-09-20 09:01:58'),
(1136, 'App\\User', 1, 'deleted', 'App\\contact_number', 213, '{\"id\":213,\"name\":\"Testing 1234\",\"designation\":null,\"mobile_1\":\"1234\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null}', '[]', 'http://localhost/hrms/public/hrms/contactNumber/213', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-20 09:02:10', '2019-09-20 09:02:10'),
(1137, 'App\\User', 1, 'created', 'App\\contact_number', 214, '[]', '{\"name\":\"test1234\",\"designation\":null,\"mobile_1\":\"123456\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":214}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-20 09:02:28', '2019-09-20 09:02:28'),
(1138, 'App\\User', 1, 'deleted', 'App\\contact_number', 214, '{\"id\":214,\"name\":\"test1234\",\"designation\":null,\"mobile_1\":\"123456\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null}', '[]', 'http://localhost/hrms/public/hrms/contactNumber/214', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-20 09:02:54', '2019-09-20 09:02:54'),
(1139, 'App\\User', 14, 'updated', 'App\\User', 14, '{\"session_id\":\"hDZz5kv9X1vHFzDXFaRgHgI3ap6ZZTHhUqdon9yL\"}', '{\"session_id\":\"ze24hxSWZ6HeyKrXNIiw5CUroMujUI6qhcmHaX2H\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', NULL, '2019-09-20 10:35:25', '2019-09-20 10:35:25'),
(1140, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"M0A4ZOXnxC1lqoSqUv3JFXidPEDi9g7aaOOKEvPV\"}', '{\"session_id\":\"x64leuiRcQ9clt2VwBA72G7BeqPtfH7FLM3mxPy5\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-20 13:26:34', '2019-09-20 13:26:34'),
(1141, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"x64leuiRcQ9clt2VwBA72G7BeqPtfH7FLM3mxPy5\"}', '{\"session_id\":\"akL2hNmnfiDY6EnNb3uN3keQKT9EfI7VwN1uafqn\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 04:14:30', '2019-09-23 04:14:30'),
(1142, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"Z0DBQfo1S52lhek0TI4Z21rE3pkLZNj9O5WYvOLJ\"}', '{\"session_id\":\"OrGNu4LQkdBmhhdjnvicgn2uUDJcCHdX1pLleiuh\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-23 04:57:08', '2019-09-23 04:57:08'),
(1143, 'App\\User', 15, 'updated', 'App\\picture', 20, '{\"size\":\"79375\"}', '{\"size\":164306}', 'http://192.168.1.10/hrms/public/editPicture/22', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-23 04:59:15', '2019-09-23 04:59:15'),
(1144, 'App\\User', 15, 'updated', 'App\\picture', 19, '{\"size\":\"55919\"}', '{\"size\":166707}', 'http://192.168.1.10/hrms/public/editPicture/21', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-23 05:05:36', '2019-09-23 05:05:36'),
(1145, 'App\\User', 15, 'created', 'App\\other_information', 3, '[]', '{\"employee_id\":\"21\",\"driving_licence\":\"2006\\/952\",\"licence_expiry\":\"2020-10-27\",\"disability\":null,\"blood_group\":\"2\",\"passport_no\":null,\"passport_expiry\":null,\"kin_name\":\"Asma\",\"kin_relation\":\"Wife\",\"kin_address\":\"H. No. 6, Johar Street, Jeewan Hana, Lahore\",\"kin_contact_number\":\"0336-7095751\",\"id\":3}', 'http://192.168.1.10/hrms/public/hrms/otherInformation/21', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-23 05:10:31', '2019-09-23 05:10:31'),
(1146, 'App\\User', 15, 'created', 'App\\other_information', 4, '[]', '{\"employee_id\":\"22\",\"driving_licence\":\"LE-14-76584\",\"licence_expiry\":\"2019-11-23\",\"disability\":null,\"blood_group\":\"2\",\"passport_no\":null,\"passport_expiry\":null,\"kin_name\":\"Muhammad Idrees\",\"kin_relation\":\"Father\",\"kin_address\":\"Etihad part, House No. 8, Block-B, Muhallah Stop Bank, Chongi Amersidhu, Lahore\",\"kin_contact_number\":\"0300-8188386\",\"id\":4}', 'http://192.168.1.10/hrms/public/hrms/otherInformation/22', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-23 05:14:59', '2019-09-23 05:14:59'),
(1147, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"session_id\":\"AEmK2vnOzBpgD7umj5LxZFjfCt8AbwlUGwG4Wvyt\"}', '{\"session_id\":\"26nrN5G7hf7M8copO96UKJc3FgWTQRcrO0wCzUsl\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 05:54:55', '2019-09-23 05:54:55'),
(1148, 'App\\User', 13, 'created', 'App\\document', 110, '[]', '{\"document_name\":\"Appointment Letter\",\"file_name\":\"1569218307-20-Appointment Letter.pdf\",\"file_path\":\"documents\\/20_Muhammad__Ashraf\\/\",\"employee_id\":20,\"type\":\"application\\/pdf\",\"id\":110}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 05:58:28', '2019-09-23 05:58:28'),
(1149, 'App\\User', 13, 'created', 'App\\document', 111, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1569218343-20-HR Form.pdf\",\"file_path\":\"documents\\/20_Muhammad__Ashraf\\/\",\"employee_id\":20,\"type\":\"application\\/pdf\",\"id\":111}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 05:59:03', '2019-09-23 05:59:03'),
(1150, 'App\\User', 13, 'created', 'App\\document', 112, '[]', '{\"document_name\":\"Grade-13\",\"file_name\":\"1569218426-20-Grade-13.pdf\",\"file_path\":\"documents\\/20_Muhammad__Ashraf\\/\",\"employee_id\":20,\"type\":\"application\\/pdf\",\"id\":112}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 06:00:26', '2019-09-23 06:00:26'),
(1151, 'App\\User', 13, 'created', 'App\\document', 113, '[]', '{\"document_name\":\"Transfer Order\",\"file_name\":\"1569218454-20-Transfer Order.pdf\",\"file_path\":\"documents\\/20_Muhammad__Ashraf\\/\",\"employee_id\":20,\"type\":\"application\\/pdf\",\"id\":113}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 06:00:54', '2019-09-23 06:00:54'),
(1152, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"akL2hNmnfiDY6EnNb3uN3keQKT9EfI7VwN1uafqn\"}', '{\"session_id\":\"eDv0L48zRnZL0qfr9nwRhgOqTO81kfy3awEkNxFv\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 08:01:05', '2019-09-23 08:01:05'),
(1153, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"session_id\":\"26nrN5G7hf7M8copO96UKJc3FgWTQRcrO0wCzUsl\"}', '{\"session_id\":\"ShIdUmXOAP4d1IfxIaflhKqx6ALxlllbkZUV8rXg\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 08:01:54', '2019-09-23 08:01:54'),
(1154, 'App\\User', 1, 'created', 'App\\contact_number', 209, '[]', '{\"name\":\"Muhammad Ismail\",\"designation\":\"Junior Engineer (Electrical\",\"mobile_1\":\"0321-4074780\",\"address\":null,\"mobile_2\":\"0331-6662050\",\"email\":null,\"id\":209}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 08:02:01', '2019-09-23 08:02:01'),
(1155, 'App\\User', 1, 'created', 'App\\contact_number', 210, '[]', '{\"name\":\"Muhammad Ismail\",\"designation\":\"Junior Engineer (Electrical\",\"mobile_1\":\"0321-4074780\",\"address\":null,\"mobile_2\":\"0331-6668050\",\"email\":null,\"id\":210}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 08:02:52', '2019-09-23 08:02:52'),
(1156, 'App\\User', 13, 'deleted', 'App\\document', 110, '{\"id\":110,\"employee_id\":20,\"document_name\":\"Appointment Letter\",\"file_name\":\"1569218307-20-Appointment Letter.pdf\",\"file_path\":\"documents\\/20_Muhammad__Ashraf\\/\",\"type\":\"application\\/pdf\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/hrms/document/110', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 08:08:15', '2019-09-23 08:08:15'),
(1157, 'App\\User', 13, 'created', 'App\\document', 114, '[]', '{\"document_name\":\"Appointment Letter\",\"file_name\":\"1569226131-20-Appointment Letter.pdf\",\"file_path\":\"documents\\/20_Muhammad__Ashraf\\/\",\"employee_id\":20,\"type\":\"application\\/pdf\",\"id\":114}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 08:08:52', '2019-09-23 08:08:52'),
(1158, 'App\\User', 1, 'created', 'App\\contact_number', 211, '[]', '{\"name\":\"Hussnain Bhatti\",\"designation\":\"Junior Engineer (Civil)\",\"mobile_1\":\"03364017732\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":211}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 09:22:46', '2019-09-23 09:22:46'),
(1159, 'App\\User', 1, 'created', 'App\\contact_number', 212, '[]', '{\"name\":\"Hussnain Bhatti\",\"designation\":\"DASU Engineer\",\"mobile_1\":\"0304-3344117\",\"address\":null,\"mobile_2\":\"0336-4017732\",\"email\":null,\"id\":212}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 09:25:06', '2019-09-23 09:25:06'),
(1160, 'App\\User', 1, 'deleted', 'App\\contact_number', 211, '{\"id\":211,\"name\":\"Hussnain Bhatti\",\"designation\":\"Junior Engineer (Civil)\",\"mobile_1\":\"03364017732\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null}', '[]', 'http://localhost/hrms/public/hrms/contactNumber/211', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 09:25:36', '2019-09-23 09:25:36'),
(1161, 'App\\User', 1, 'deleted', 'App\\contact_number', 206, '{\"id\":206,\"name\":\"Hussnain Bhatti\",\"designation\":\"DASU Engineer\",\"mobile_1\":\"0304-3344117\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null}', '[]', 'http://localhost/hrms/public/hrms/contactNumber/206', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 09:25:55', '2019-09-23 09:25:55'),
(1162, 'App\\User', 1, 'created', 'App\\contact_number', 213, '[]', '{\"name\":\"Hussnain Bhatti\",\"designation\":\"DASU Engineer\",\"mobile_1\":\"0304-3344117\",\"address\":null,\"mobile_2\":\"0336-4017732\",\"email\":null,\"id\":213}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 09:26:17', '2019-09-23 09:26:17'),
(1163, 'App\\User', 1, 'created', 'App\\contact_number', 214, '[]', '{\"name\":\"A.  Ali Ch.\",\"designation\":\"EOBI\",\"mobile_1\":\"0321-4014251\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":214}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 09:28:55', '2019-09-23 09:28:55'),
(1164, 'App\\User', 1, 'deleted', 'App\\contact_number', 214, '{\"id\":214,\"name\":\"A.  Ali Ch.\",\"designation\":\"EOBI\",\"mobile_1\":\"0321-4014251\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null}', '[]', 'http://localhost/hrms/public/hrms/contactNumber/214', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 09:29:10', '2019-09-23 09:29:10'),
(1165, 'App\\User', 1, 'created', 'App\\contact_number', 215, '[]', '{\"name\":\"A.  Ali Ch.\",\"designation\":\"EOBI\",\"mobile_1\":\"0321-4014251\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":215}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 09:31:11', '2019-09-23 09:31:11'),
(1166, 'App\\User', 1, 'deleted', 'App\\contact_number', 215, '{\"id\":215,\"name\":\"A.  Ali Ch.\",\"designation\":\"EOBI\",\"mobile_1\":\"0321-4014251\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null}', '[]', 'http://localhost/hrms/public/hrms/contactNumber/215', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 09:31:25', '2019-09-23 09:31:25'),
(1167, 'App\\User', 1, 'created', 'App\\contact_number', 216, '[]', '{\"name\":\"A.  Ali Ch.\",\"designation\":\"EOBI\",\"mobile_1\":\"0321-4014251\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":216}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 09:51:45', '2019-09-23 09:51:45'),
(1168, 'App\\User', 1, 'deleted', 'App\\contact_number', 216, '{\"id\":216,\"name\":\"A.  Ali Ch.\",\"designation\":\"EOBI\",\"mobile_1\":\"0321-4014251\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null}', '[]', 'http://localhost/hrms/public/hrms/contactNumber/216', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 09:51:55', '2019-09-23 09:51:55'),
(1169, 'App\\User', 1, 'created', 'App\\contact_number', 217, '[]', '{\"name\":\"A.  Ali Ch.\",\"designation\":\"EOBI\",\"mobile_1\":\"0321-4014251\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":217}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 09:55:24', '2019-09-23 09:55:24'),
(1170, 'App\\User', 1, 'deleted', 'App\\contact_number', 217, '{\"id\":217,\"name\":\"A.  Ali Ch.\",\"designation\":\"EOBI\",\"mobile_1\":\"0321-4014251\",\"mobile_2\":null,\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null}', '[]', 'http://localhost/hrms/public/hrms/contactNumber/217', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 09:55:32', '2019-09-23 09:55:32'),
(1171, 'App\\User', 1, 'deleted', 'App\\contact_number', 213, '{\"id\":213,\"name\":\"Hussnain Bhatti\",\"designation\":\"DASU Engineer\",\"mobile_1\":\"0304-3344117\",\"mobile_2\":\"0336-4017732\",\"mobile_3\":null,\"office\":null,\"fax\":null,\"landline\":null,\"email\":null,\"address\":null,\"remarks\":null}', '[]', 'http://localhost/hrms/public/hrms/contactNumber/213', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 10:16:34', '2019-09-23 10:16:34'),
(1172, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"P4Y3qdHyuZr6RshgmtcMbNkx9XS1wcEZ58Wg5N1DgQQw3uBZtpyJ3jLw7Uhb\"}', '{\"remember_token\":\"mG5icK64TqAxr4y5osA5W9Cur2lDPGQyKvPCR3CvjGq8vJ9TzhAeypsX8L3m\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-23 12:59:46', '2019-09-23 12:59:46'),
(1173, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"eDv0L48zRnZL0qfr9nwRhgOqTO81kfy3awEkNxFv\"}', '{\"session_id\":\"vaKRILWf55HPGbTYE2X4oQ2VLoIS04FiRZsNaVW8\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 04:16:14', '2019-09-24 04:16:14'),
(1174, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"session_id\":\"ShIdUmXOAP4d1IfxIaflhKqx6ALxlllbkZUV8rXg\"}', '{\"session_id\":\"95xkYDCGzkHTT7AcljPJ6hXPIN0gcwqIiXbV6nVH\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 07:33:11', '2019-09-24 07:33:11'),
(1175, 'App\\User', 13, 'created', 'App\\document', 115, '[]', '{\"document_name\":\"Warning Letter\",\"file_name\":\"1569310564-20-Warning Letter.pdf\",\"file_path\":\"documents\\/20_Muhammad__Ashraf\\/\",\"employee_id\":20,\"type\":\"application\\/pdf\",\"id\":115}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 07:36:05', '2019-09-24 07:36:05'),
(1176, 'App\\User', 13, 'created', 'App\\document', 116, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1569310718-20-CNIC Front.JPG\",\"file_path\":\"documents\\/20_Muhammad__Ashraf\\/\",\"employee_id\":20,\"type\":\"image\\/jpeg\",\"id\":116}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 07:38:38', '2019-09-24 07:38:38'),
(1177, 'App\\User', 13, 'created', 'App\\document', 117, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1569311765-22-CNIC Front.JPG\",\"file_path\":\"documents\\/22_Muhammad__Asif\\/\",\"employee_id\":22,\"type\":\"image\\/jpeg\",\"id\":117}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 07:56:05', '2019-09-24 07:56:05'),
(1178, 'App\\User', 13, 'created', 'App\\document', 118, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1569311784-22-CNIC Back.JPG\",\"file_path\":\"documents\\/22_Muhammad__Asif\\/\",\"employee_id\":22,\"type\":\"image\\/jpeg\",\"id\":118}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 07:56:24', '2019-09-24 07:56:24'),
(1179, 'App\\User', 13, 'created', 'App\\document', 119, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1569311817-22-HR Form.pdf\",\"file_path\":\"documents\\/22_Muhammad__Asif\\/\",\"employee_id\":22,\"type\":\"application\\/pdf\",\"id\":119}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 07:56:57', '2019-09-24 07:56:57');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1180, 'App\\User', 13, 'created', 'App\\document', 120, '[]', '{\"document_name\":\"Appointment Letter\",\"file_name\":\"1569311992-22-Appointment Letter.pdf\",\"file_path\":\"documents\\/22_Muhammad__Asif\\/\",\"employee_id\":22,\"type\":\"application\\/pdf\",\"id\":120}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 07:59:52', '2019-09-24 07:59:52'),
(1181, 'App\\User', 13, 'created', 'App\\document', 121, '[]', '{\"document_name\":\"Arival Report\",\"file_name\":\"1569312031-22-Arival Report.pdf\",\"file_path\":\"documents\\/22_Muhammad__Asif\\/\",\"employee_id\":22,\"type\":\"application\\/pdf\",\"id\":121}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 08:00:32', '2019-09-24 08:00:32'),
(1182, 'App\\User', 13, 'created', 'App\\document', 122, '[]', '{\"document_name\":\"Promotion Order\",\"file_name\":\"1569312061-22-Promotion Order.pdf\",\"file_path\":\"documents\\/22_Muhammad__Asif\\/\",\"employee_id\":22,\"type\":\"application\\/pdf\",\"id\":122}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 08:01:01', '2019-09-24 08:01:01'),
(1183, 'App\\User', 13, 'created', 'App\\document', 123, '[]', '{\"document_name\":\"Driving License\",\"file_name\":\"1569314090-22-Driving License.pdf\",\"file_path\":\"documents\\/22_Muhammad__Asif\\/\",\"employee_id\":22,\"type\":\"application\\/pdf\",\"id\":123}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 08:34:50', '2019-09-24 08:34:50'),
(1184, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"session_id\":\"95xkYDCGzkHTT7AcljPJ6hXPIN0gcwqIiXbV6nVH\"}', '{\"session_id\":\"UmTAngZOiGfkD4qjfmi9tB7MjrGMFI4nZygulyPT\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 11:08:04', '2019-09-24 11:08:04'),
(1185, 'App\\User', 13, 'created', 'App\\document', 124, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1569323385-19-HR Form.pdf\",\"file_path\":\"documents\\/19_Noman__Ahmad\\/\",\"employee_id\":19,\"type\":\"application\\/pdf\",\"id\":124}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 11:09:46', '2019-09-24 11:09:46'),
(1186, 'App\\User', 13, 'created', 'App\\document', 125, '[]', '{\"document_name\":\"Warning Letter\",\"file_name\":\"1569323409-19-Warning Letter.pdf\",\"file_path\":\"documents\\/19_Noman__Ahmad\\/\",\"employee_id\":19,\"type\":\"application\\/pdf\",\"id\":125}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 11:10:10', '2019-09-24 11:10:10'),
(1187, 'App\\User', 13, 'created', 'App\\document', 126, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1569323500-19-CNIC Front.JPG\",\"file_path\":\"documents\\/19_Noman__Ahmad\\/\",\"employee_id\":19,\"type\":\"image\\/jpeg\",\"id\":126}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 11:11:40', '2019-09-24 11:11:40'),
(1188, 'App\\User', 13, 'created', 'App\\document', 127, '[]', '{\"document_name\":\"Cat-B Order\",\"file_name\":\"1569323586-19-Cat-B Order.pdf\",\"file_path\":\"documents\\/19_Noman__Ahmad\\/\",\"employee_id\":19,\"type\":\"application\\/pdf\",\"id\":127}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 11:13:07', '2019-09-24 11:13:07'),
(1189, 'App\\User', 13, 'deleted', 'App\\document', 103, '{\"id\":103,\"employee_id\":3,\"document_name\":\"CNIC Front\",\"file_name\":\"1568349401-3-CNIC Front.jpg\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"type\":\"image\\/jpeg\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/hrms/document/103', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 11:15:01', '2019-09-24 11:15:01'),
(1190, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"vaKRILWf55HPGbTYE2X4oQ2VLoIS04FiRZsNaVW8\"}', '{\"session_id\":\"DDexWqxsN9obC82kcm7sQOcZ2nnMVPteB6dOisCV\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 11:15:10', '2019-09-24 11:15:10'),
(1191, 'App\\User', 13, 'created', 'App\\document', 128, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1569323780-3-CNIC Front.jpg\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"employee_id\":3,\"type\":\"image\\/jpeg\",\"id\":128}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 11:16:20', '2019-09-24 11:16:20'),
(1192, 'App\\User', 13, 'created', 'App\\document', 129, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1569323814-3-CNIC Front.jpg\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"employee_id\":3,\"type\":\"image\\/jpeg\",\"id\":129}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 11:16:54', '2019-09-24 11:16:54'),
(1193, 'App\\User', 13, 'created', 'App\\document', 130, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1569323831-3-CNIC Back.jpg\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"employee_id\":3,\"type\":\"image\\/jpeg\",\"id\":130}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 11:17:11', '2019-09-24 11:17:11'),
(1194, 'App\\User', 13, 'deleted', 'App\\document', 128, '{\"id\":128,\"employee_id\":3,\"document_name\":\"CNIC Front\",\"file_name\":\"1569323780-3-CNIC Front.jpg\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"type\":\"image\\/jpeg\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/hrms/document/128', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 11:17:57', '2019-09-24 11:17:57'),
(1195, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"mG5icK64TqAxr4y5osA5W9Cur2lDPGQyKvPCR3CvjGq8vJ9TzhAeypsX8L3m\"}', '{\"remember_token\":\"hSNXs7PgN73viS1P0ZiotvoDo9SKZFpg8fT9h74o4H48SLMVQiAeWWRY4atq\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-24 12:39:27', '2019-09-24 12:39:27'),
(1196, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"DDexWqxsN9obC82kcm7sQOcZ2nnMVPteB6dOisCV\"}', '{\"session_id\":\"ahDW1N75Qkoe7tPFFSrD2OIHABcXj6A4AjetwJfy\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 04:57:44', '2019-09-25 04:57:44'),
(1197, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"session_id\":\"UmTAngZOiGfkD4qjfmi9tB7MjrGMFI4nZygulyPT\"}', '{\"session_id\":\"E4PDvzsNgw5gbfb9w6nyoEWaeFLCuXh6QbUL508P\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-25 05:09:18', '2019-09-25 05:09:18'),
(1198, 'App\\User', 13, 'created', 'App\\document', 131, '[]', '{\"document_name\":\"Appointment Letter\",\"file_name\":\"1569388391-21-Appointment Letter.jpg\",\"file_path\":\"documents\\/21_Zamir__Abbas\\/\",\"employee_id\":21,\"type\":\"image\\/jpeg\",\"id\":131}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-25 05:13:13', '2019-09-25 05:13:13'),
(1199, 'App\\User', 13, 'created', 'App\\document', 132, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1569388413-21-HR Form.pdf\",\"file_path\":\"documents\\/21_Zamir__Abbas\\/\",\"employee_id\":21,\"type\":\"application\\/pdf\",\"id\":132}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-25 05:13:33', '2019-09-25 05:13:33'),
(1200, 'App\\User', 13, 'created', 'App\\document', 133, '[]', '{\"document_name\":\"Regular Cat Memo\",\"file_name\":\"1569388452-21-Regular Cat Memo.pdf\",\"file_path\":\"documents\\/21_Zamir__Abbas\\/\",\"employee_id\":21,\"type\":\"application\\/pdf\",\"id\":133}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-25 05:14:13', '2019-09-25 05:14:13'),
(1201, 'App\\User', 13, 'created', 'App\\document', 134, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1569388816-11-HR Form.pdf\",\"file_path\":\"documents\\/11_Muhammad__Rasheed\\/\",\"employee_id\":11,\"type\":\"application\\/pdf\",\"id\":134}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-25 05:20:17', '2019-09-25 05:20:17'),
(1202, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"OrGNu4LQkdBmhhdjnvicgn2uUDJcCHdX1pLleiuh\"}', '{\"session_id\":\"k08FhkkHXfUG30POsascGtlLpZPKWvW71I3VTcAC\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 06:09:16', '2019-09-25 06:09:16'),
(1203, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"k08FhkkHXfUG30POsascGtlLpZPKWvW71I3VTcAC\"}', '{\"session_id\":\"RnVQwu98t4hQxQKyNkvYTFYm3RZw0hy3r9b3jiTQ\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 06:18:37', '2019-09-25 06:18:37'),
(1204, 'App\\User', 15, 'created', 'App\\employee', 23, '[]', '{\"first_name\":\"Muhammad\",\"middle_name\":null,\"last_name\":\"Sultan\",\"father_name\":\"Sultan Hussain Eman\",\"date_of_birth\":\"1957-12-21\",\"gender_id\":\"1\",\"cnic\":\"35202-2580696-3\",\"cnic_expiry\":\"2020-04-29\",\"employee_no\":null,\"marital_status_id\":\"2\",\"religon\":\"Islam\",\"division_id\":\"3\",\"id\":23}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 06:26:27', '2019-09-25 06:26:27'),
(1205, 'App\\User', 15, 'created', 'App\\nationality', 23, '[]', '{\"country_id\":\"1\",\"employee_id\":23,\"id\":23}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 06:26:27', '2019-09-25 06:26:27'),
(1206, 'App\\User', 15, 'created', 'App\\User', 16, '[]', '{\"email\":\"javedsultan92@yahoo.com\",\"employee_id\":\"23\",\"id\":16}', 'http://192.168.1.10/hrms/public/editUser/23', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 06:27:14', '2019-09-25 06:27:14'),
(1207, 'App\\User', 15, 'created', 'App\\picture', 21, '[]', '{\"name\":\"23-Muhammad  Sultan.png\",\"employee_id\":23,\"type\":\"image\\/png\",\"size\":186825,\"width\":\"100\",\"height\":\"100\",\"id\":21}', 'http://192.168.1.10/hrms/public/editPicture/23', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 06:27:53', '2019-09-25 06:27:53'),
(1208, 'App\\User', 1, 'created', 'App\\designation', 37, '[]', '{\"name\":\"Accountant\",\"level\":\"11\",\"id\":37}', 'http://localhost/hrms/public/hrms/designation', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 06:33:52', '2019-09-25 06:33:52'),
(1209, 'App\\User', 15, 'created', 'App\\appointment', 20, '[]', '{\"employee_id\":\"23\",\"reference_no\":\"BQB\\/A\\/03\\/30\\/472\",\"appointment_date\":\"2004-09-03\",\"designation_id\":\"20\",\"expiry_date\":null,\"category\":\"C\",\"grade\":\"11\",\"appointment_letter_type\":\"2 Pages\",\"id\":20}', 'http://192.168.1.10/hrms/public/hrms/appointment/23', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 06:37:36', '2019-09-25 06:37:36'),
(1210, 'App\\User', 15, 'created', 'App\\salary', 27, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"11138\",\"employee_id\":\"23\",\"salary_remarks\":null,\"id\":27}', 'http://192.168.1.10/hrms/public/hrms/salary/23', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 06:37:53', '2019-09-25 06:37:53'),
(1211, 'App\\User', 15, 'created', 'App\\posting', 17, '[]', '{\"designation_id\":\"20\",\"posting_date\":\"2004-09-03\",\"manager_id\":\"5\",\"joining_date\":\"2004-09-03\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"23\",\"id\":17}', 'http://192.168.1.10/hrms/public/hrms/posting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 06:42:00', '2019-09-25 06:42:00'),
(1212, 'App\\User', 15, 'updated', 'App\\appointment', 20, '{\"appointment_date\":\"2004-09-03\",\"designation_id\":20}', '{\"appointment_date\":\"2004-09-02\",\"designation_id\":\"37\"}', 'http://192.168.1.10/hrms/public/hrms/appointment/23', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 06:43:06', '2019-09-25 06:43:06'),
(1213, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"RnVQwu98t4hQxQKyNkvYTFYm3RZw0hy3r9b3jiTQ\"}', '{\"session_id\":\"uGHd9k7NCBIXcNwoHKNq18Ouxfh8nj7ValSbJJFz\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 08:07:59', '2019-09-25 08:07:59'),
(1214, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"uGHd9k7NCBIXcNwoHKNq18Ouxfh8nj7ValSbJJFz\"}', '{\"session_id\":\"YufxqgQTFSb8DBLEMFvX50nfKBcNnhf8VpWBMtS6\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 09:44:03', '2019-09-25 09:44:03'),
(1215, 'App\\User', 15, 'created', 'App\\posting', 18, '[]', '{\"designation_id\":\"37\",\"posting_date\":\"2004-09-06\",\"manager_id\":\"5\",\"joining_date\":\"2004-09-06\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"23\",\"id\":18}', 'http://192.168.1.10/hrms/public/hrms/posting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 09:46:28', '2019-09-25 09:46:28'),
(1216, 'App\\User', 15, 'created', 'App\\education', 19, '[]', '{\"degree_name\":\"B.A.\",\"institute\":\"Punjab University\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"14\",\"employee_id\":\"23\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"1975\",\"grade\":null,\"country_id\":\"1\",\"id\":19}', 'http://192.168.1.10/hrms/public/hrms/education', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 09:54:06', '2019-09-25 09:54:06'),
(1217, 'App\\User', 15, 'created', 'App\\experience', 12, '[]', '{\"employer\":\"Muhammad Javed Sultan\",\"position\":\"Accountant\",\"from\":\"1977-07-24\",\"to\":\"2019-09-25\",\"country_id\":\"1\",\"activities\":null,\"employee_id\":\"23\",\"id\":12}', 'http://192.168.1.10/hrms/public/hrms/experience', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 09:56:25', '2019-09-25 09:56:25'),
(1218, 'App\\User', 15, 'created', 'App\\promotion', 13, '[]', '{\"promoted_designation\":\"Accountant\",\"effective_date\":\"2005-04-01\",\"promotion_remarks\":null,\"employee_id\":\"23\",\"id\":13}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=23', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 09:59:32', '2019-09-25 09:59:32'),
(1219, 'App\\User', 15, 'created', 'App\\salary', 28, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"19500\",\"employee_id\":\"23\",\"promotion_id\":13,\"id\":28}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=23', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 09:59:32', '2019-09-25 09:59:32'),
(1220, 'App\\User', 15, 'created', 'App\\contact', 16, '[]', '{\"employee_id\":\"23\",\"type\":\"0\",\"house\":\"House No. 501, E-1, WAPDA Town, Lahore\",\"street\":null,\"town\":\"WAPDA Town\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country_id\":\"1\",\"mobile\":\"0333-4587995\",\"landline\":\"042-35968165\",\"id\":16}', 'http://192.168.1.10/hrms/public/editPermanentAddress/23', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 10:01:27', '2019-09-25 10:01:27'),
(1221, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"ahDW1N75Qkoe7tPFFSrD2OIHABcXj6A4AjetwJfy\"}', '{\"session_id\":\"BkP14j6zGauKO2OyFVBgTzQ1zOl8AkAymofX8ts7\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 11:32:46', '2019-09-25 11:32:46'),
(1222, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"hSNXs7PgN73viS1P0ZiotvoDo9SKZFpg8fT9h74o4H48SLMVQiAeWWRY4atq\"}', '{\"remember_token\":\"fHaRU3LDymP8WpwXWh6kdvycQ2apaGEgAmuGQ3zxYjPvu1GessWwy8o91H7z\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-25 13:00:05', '2019-09-25 13:00:05'),
(1223, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"YufxqgQTFSb8DBLEMFvX50nfKBcNnhf8VpWBMtS6\"}', '{\"session_id\":\"K0P9JTdJkhr3lsCimLvzO0Kz9QbFCdHr51KJ5M69\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 04:16:44', '2019-09-26 04:16:44'),
(1224, 'App\\User', 15, 'created', 'App\\employee', 24, '[]', '{\"first_name\":\"Muhammad\",\"middle_name\":null,\"last_name\":\"Waqas\",\"father_name\":\"Muhammad Salim Warsi\",\"date_of_birth\":\"1973-06-12\",\"gender_id\":\"1\",\"cnic\":\"35202-6346130-7\",\"cnic_expiry\":\"2021-06-12\",\"employee_no\":null,\"marital_status_id\":\"2\",\"religon\":\"Islam\",\"division_id\":\"3\",\"id\":24}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 04:18:54', '2019-09-26 04:18:54'),
(1225, 'App\\User', 15, 'created', 'App\\nationality', 24, '[]', '{\"country_id\":\"1\",\"employee_id\":24,\"id\":24}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 04:18:54', '2019-09-26 04:18:54'),
(1226, 'App\\User', 15, 'created', 'App\\User', 17, '[]', '{\"email\":\"barqaabaccount@yahoo.com\",\"employee_id\":\"24\",\"id\":17}', 'http://192.168.1.10/hrms/public/editUser/24', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 04:21:04', '2019-09-26 04:21:04'),
(1227, 'App\\User', 15, 'created', 'App\\posting', 19, '[]', '{\"designation_id\":\"20\",\"posting_date\":\"2001-11-07\",\"manager_id\":\"5\",\"joining_date\":\"2001-11-07\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"24\",\"id\":19}', 'http://192.168.1.10/hrms/public/hrms/posting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 04:26:23', '2019-09-26 04:26:23'),
(1228, 'App\\User', 15, 'created', 'App\\posting', 20, '[]', '{\"designation_id\":\"20\",\"posting_date\":\"2001-11-07\",\"manager_id\":\"5\",\"joining_date\":\"2001-11-07\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"24\",\"id\":20}', 'http://192.168.1.10/hrms/public/hrms/posting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 04:27:47', '2019-09-26 04:27:47'),
(1229, 'App\\User', 15, 'created', 'App\\education', 20, '[]', '{\"degree_name\":\"MBA\",\"institute\":\"University of Central Punjab\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"16\",\"employee_id\":\"24\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2004\",\"grade\":null,\"country_id\":\"1\",\"id\":20}', 'http://192.168.1.10/hrms/public/hrms/education', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 04:28:50', '2019-09-26 04:28:50'),
(1230, 'App\\User', 15, 'created', 'App\\picture', 22, '[]', '{\"name\":\"24-Muhammad  Waqas.png\",\"employee_id\":24,\"type\":\"image\\/png\",\"size\":130997,\"width\":\"100\",\"height\":\"100\",\"id\":22}', 'http://192.168.1.10/hrms/public/editPicture/24', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 04:31:21', '2019-09-26 04:31:21'),
(1231, 'App\\User', 15, 'created', 'App\\appointment', 21, '[]', '{\"employee_id\":\"24\",\"reference_no\":\"BQB\\/PF\\/MW\\/230\",\"appointment_date\":\"2001-11-06\",\"designation_id\":\"20\",\"expiry_date\":null,\"category\":\"C\",\"grade\":null,\"appointment_letter_type\":\"2 Pages\",\"id\":21}', 'http://192.168.1.10/hrms/public/hrms/appointment/24', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 04:34:53', '2019-09-26 04:34:53'),
(1232, 'App\\User', 15, 'created', 'App\\salary', 29, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"10850\",\"employee_id\":\"24\",\"salary_remarks\":null,\"id\":29}', 'http://192.168.1.10/hrms/public/hrms/salary/24', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 04:35:17', '2019-09-26 04:35:17'),
(1233, 'App\\User', 15, 'created', 'App\\posting', 21, '[]', '{\"designation_id\":\"20\",\"posting_date\":\"2001-11-06\",\"manager_id\":\"5\",\"joining_date\":\"2001-11-07\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"24\",\"id\":21}', 'http://192.168.1.10/hrms/public/hrms/posting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 04:36:29', '2019-09-26 04:36:29'),
(1234, 'App\\User', 15, 'created', 'App\\experience', 13, '[]', '{\"employer\":\"Muhammad Waqas\",\"position\":\"Accounts Officer\",\"from\":\"2001-11-07\",\"to\":\"2019-09-25\",\"country_id\":\"1\",\"activities\":null,\"employee_id\":\"24\",\"id\":13}', 'http://192.168.1.10/hrms/public/hrms/experience', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 04:41:32', '2019-09-26 04:41:32'),
(1235, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"K0P9JTdJkhr3lsCimLvzO0Kz9QbFCdHr51KJ5M69\"}', '{\"session_id\":\"CY1VSDe3HKB1PzlVBCrSI8tfKivEkvljsbZ2sqm4\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 09:58:09', '2019-09-26 09:58:09'),
(1236, 'App\\User', 15, 'created', 'App\\promotion', 14, '[]', '{\"promoted_designation\":\"Accounts Officer\",\"effective_date\":\"2004-03-03\",\"promotion_remarks\":null,\"employee_id\":\"24\",\"id\":14}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=24', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 10:00:14', '2019-09-26 10:00:14'),
(1237, 'App\\User', 15, 'created', 'App\\salary', 30, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"20310\",\"employee_id\":\"24\",\"promotion_id\":14,\"id\":30}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=24', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 10:00:14', '2019-09-26 10:00:14'),
(1238, 'App\\User', 15, 'created', 'App\\promotion', 15, '[]', '{\"promoted_designation\":\"Accounts Officer\",\"effective_date\":\"2007-06-16\",\"promotion_remarks\":null,\"employee_id\":\"24\",\"id\":15}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=24', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 10:01:05', '2019-09-26 10:01:05'),
(1239, 'App\\User', 15, 'created', 'App\\salary', 31, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"53233\",\"employee_id\":\"24\",\"promotion_id\":15,\"id\":31}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=24', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 10:01:05', '2019-09-26 10:01:05'),
(1240, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"BkP14j6zGauKO2OyFVBgTzQ1zOl8AkAymofX8ts7\"}', '{\"session_id\":\"yaZ0exx5oFISBxCO9ff77nZnubn85t1NeRGeUNCo\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 10:02:24', '2019-09-26 10:02:24'),
(1241, 'App\\User', 15, 'created', 'App\\promotion', 16, '[]', '{\"promoted_designation\":\"Assistant Manager Finance\",\"effective_date\":\"2010-02-03\",\"promotion_remarks\":null,\"employee_id\":\"24\",\"id\":16}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=24', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 10:05:12', '2019-09-26 10:05:12'),
(1242, 'App\\User', 15, 'created', 'App\\salary', 32, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"103791\",\"employee_id\":\"24\",\"promotion_id\":16,\"id\":32}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=24', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 10:05:12', '2019-09-26 10:05:12'),
(1243, 'App\\User', 15, 'created', 'App\\promotion', 17, '[]', '{\"promoted_designation\":\"Assistant Manager Finance\",\"effective_date\":\"2016-06-09\",\"promotion_remarks\":null,\"employee_id\":\"24\",\"id\":17}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=24', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 10:05:49', '2019-09-26 10:05:49'),
(1244, 'App\\User', 15, 'created', 'App\\salary', 33, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"120912\",\"employee_id\":\"24\",\"promotion_id\":17,\"id\":33}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=24', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 10:05:49', '2019-09-26 10:05:49'),
(1245, 'App\\User', 15, 'created', 'App\\contact', 17, '[]', '{\"employee_id\":\"24\",\"type\":\"0\",\"house\":\"15-F\\/1, WAPDA Town, Lahore\",\"street\":null,\"town\":\"WAPDA Town\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country_id\":\"1\",\"mobile\":\"0345-4291840\",\"landline\":\"04234182221\",\"id\":17}', 'http://192.168.1.10/hrms/public/editPermanentAddress/24', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 10:07:52', '2019-09-26 10:07:52'),
(1246, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"fHaRU3LDymP8WpwXWh6kdvycQ2apaGEgAmuGQ3zxYjPvu1GessWwy8o91H7z\"}', '{\"remember_token\":\"DlsmkbJEroWgWTMBq7wFI29yilTx6qR7AktSUxnHImlQkbEJSkJeMdU4d8gL\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-26 12:54:19', '2019-09-26 12:54:19'),
(1247, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"CY1VSDe3HKB1PzlVBCrSI8tfKivEkvljsbZ2sqm4\"}', '{\"session_id\":\"Ti9G6KKHAzIFiZUqpuMMaQYJNRbkc44iEzH4apzt\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:33:16', '2019-09-30 04:33:16'),
(1248, 'App\\User', 15, 'created', 'App\\employee', 25, '[]', '{\"first_name\":\"Muhammad\",\"middle_name\":null,\"last_name\":\"Javed\",\"father_name\":\"Javed Iqbal\",\"date_of_birth\":\"1980-09-07\",\"gender_id\":\"1\",\"cnic\":\"31104-1752823-1\",\"cnic_expiry\":\"2028-05-21\",\"employee_no\":null,\"marital_status_id\":\"2\",\"religon\":\"Islam\",\"division_id\":\"3\",\"id\":25}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:36:05', '2019-09-30 04:36:05'),
(1249, 'App\\User', 15, 'created', 'App\\nationality', 25, '[]', '{\"country_id\":\"1\",\"employee_id\":25,\"id\":25}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:36:05', '2019-09-30 04:36:05'),
(1250, 'App\\User', 15, 'created', 'App\\User', 18, '[]', '{\"email\":\"imran@barqaab.com\",\"employee_id\":\"25\",\"id\":18}', 'http://192.168.1.10/hrms/public/editUser/25', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:36:43', '2019-09-30 04:36:43'),
(1251, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"Ti9G6KKHAzIFiZUqpuMMaQYJNRbkc44iEzH4apzt\"}', '{\"session_id\":\"U1GZBeVYmx05jpCAKppORR9Ix6w9BA93ezN5AfwK\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:40:46', '2019-09-30 04:40:46'),
(1252, 'App\\User', 15, 'created', 'App\\appointment', 22, '[]', '{\"employee_id\":\"25\",\"reference_no\":\"BQB\\/W\\/01\\/640\\/MA\\/853\",\"appointment_date\":\"2006-07-13\",\"designation_id\":\"30\",\"expiry_date\":null,\"category\":\"C\",\"grade\":null,\"appointment_letter_type\":\"1 Page\",\"id\":22}', 'http://192.168.1.10/hrms/public/hrms/appointment/25', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:48:58', '2019-09-30 04:48:58'),
(1253, 'App\\User', 15, 'created', 'App\\salary', 34, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"10000\",\"employee_id\":\"25\",\"salary_remarks\":null,\"id\":34}', 'http://192.168.1.10/hrms/public/hrms/salary/25', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:49:10', '2019-09-30 04:49:10'),
(1254, 'App\\User', 15, 'created', 'App\\posting', 22, '[]', '{\"designation_id\":\"30\",\"posting_date\":\"2007-02-01\",\"manager_id\":\"5\",\"joining_date\":\"2007-02-01\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"25\",\"id\":22}', 'http://192.168.1.10/hrms/public/hrms/posting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:51:07', '2019-09-30 04:51:07'),
(1255, 'App\\User', 15, 'created', 'App\\education', 21, '[]', '{\"degree_name\":\"B.Com\",\"institute\":\"BZU\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"14\",\"employee_id\":\"25\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2001\",\"grade\":null,\"country_id\":\"1\",\"id\":21}', 'http://192.168.1.10/hrms/public/hrms/education', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:53:05', '2019-09-30 04:53:05'),
(1256, 'App\\User', 15, 'created', 'App\\experience', 14, '[]', '{\"employer\":\"Muhammad Imran Javed\",\"position\":\"Assistant Accountant\",\"from\":\"2001-11-06\",\"to\":\"2019-09-30\",\"country_id\":\"1\",\"activities\":null,\"employee_id\":\"25\",\"id\":14}', 'http://192.168.1.10/hrms/public/hrms/experience', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:54:49', '2019-09-30 04:54:49'),
(1257, 'App\\User', 15, 'created', 'App\\promotion', 18, '[]', '{\"promoted_designation\":\"Accounts Officer\",\"effective_date\":\"2010-07-01\",\"promotion_remarks\":null,\"employee_id\":\"25\",\"id\":18}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=25', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:56:08', '2019-09-30 04:56:08'),
(1258, 'App\\User', 15, 'created', 'App\\salary', 35, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"17323\",\"employee_id\":\"25\",\"promotion_id\":18,\"id\":35}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=25', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:56:08', '2019-09-30 04:56:08'),
(1259, 'App\\User', 15, 'created', 'App\\promotion', 19, '[]', '{\"promoted_designation\":\"Accounts Officer\",\"effective_date\":\"2014-02-27\",\"promotion_remarks\":null,\"employee_id\":\"25\",\"id\":19}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=25', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:59:23', '2019-09-30 04:59:23'),
(1260, 'App\\User', 15, 'created', 'App\\salary', 36, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"69674\",\"employee_id\":\"25\",\"promotion_id\":19,\"id\":36}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=25', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 04:59:23', '2019-09-30 04:59:23'),
(1261, 'App\\User', 15, 'created', 'App\\contact', 18, '[]', '{\"employee_id\":\"25\",\"type\":\"0\",\"house\":\"H. No. 86\\/16-E, Ahmad Park, Fathayabad, Lahore Cantt.\",\"street\":null,\"town\":\"Cantt.\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country_id\":\"1\",\"mobile\":\"03144013412\",\"landline\":null,\"id\":18}', 'http://192.168.1.10/hrms/public/editPermanentAddress/25', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 05:02:31', '2019-09-30 05:02:31'),
(1262, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"U1GZBeVYmx05jpCAKppORR9Ix6w9BA93ezN5AfwK\"}', '{\"session_id\":\"rVrmonBpdkk2Ao2OxNdScOqjRGIdonoKgfE1uAoD\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 05:07:09', '2019-09-30 05:07:09'),
(1263, 'App\\User', 15, 'created', 'App\\employee', 26, '[]', '{\"first_name\":\"Waqar\",\"middle_name\":null,\"last_name\":\"Ahmad\",\"father_name\":\"Muhammad Ramzan\",\"date_of_birth\":\"1992-02-02\",\"gender_id\":\"1\",\"cnic\":\"35201-3332311-1\",\"cnic_expiry\":\"2025-11-27\",\"employee_no\":null,\"marital_status_id\":\"2\",\"religon\":\"Islam\",\"division_id\":\"3\",\"id\":26}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 05:10:18', '2019-09-30 05:10:18'),
(1264, 'App\\User', 15, 'created', 'App\\nationality', 26, '[]', '{\"country_id\":\"1\",\"employee_id\":26,\"id\":26}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 05:10:18', '2019-09-30 05:10:18'),
(1265, 'App\\User', 15, 'created', 'App\\User', 19, '[]', '{\"email\":\"w.Ahmad@barqaab.com\",\"employee_id\":\"26\",\"id\":19}', 'http://192.168.1.10/hrms/public/editUser/26', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 05:10:54', '2019-09-30 05:10:54'),
(1266, 'App\\User', 15, 'created', 'App\\appointment', 23, '[]', '{\"employee_id\":\"26\",\"reference_no\":\"BQB\\/W-16-01\\/MA\\/219\",\"appointment_date\":\"2018-04-05\",\"designation_id\":\"20\",\"expiry_date\":null,\"category\":\"B\",\"grade\":null,\"appointment_letter_type\":\"2 Pages\",\"id\":23}', 'http://192.168.1.10/hrms/public/hrms/appointment/26', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 05:12:51', '2019-09-30 05:12:51'),
(1267, 'App\\User', 15, 'created', 'App\\salary', 37, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"73367\",\"employee_id\":\"26\",\"salary_remarks\":null,\"id\":37}', 'http://192.168.1.10/hrms/public/hrms/salary/26', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 05:13:06', '2019-09-30 05:13:06'),
(1268, 'App\\User', 15, 'created', 'App\\posting', 23, '[]', '{\"designation_id\":\"20\",\"posting_date\":\"2018-04-05\",\"manager_id\":\"5\",\"joining_date\":\"2018-04-10\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"26\",\"id\":23}', 'http://192.168.1.10/hrms/public/hrms/posting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 05:14:09', '2019-09-30 05:14:09'),
(1269, 'App\\User', 15, 'created', 'App\\education', 22, '[]', '{\"degree_name\":\"B.Sc. Accounting\",\"institute\":\"Oxford Brooks University\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"14\",\"employee_id\":\"26\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2015\",\"grade\":null,\"country_id\":\"1\",\"id\":22}', 'http://192.168.1.10/hrms/public/hrms/education', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 05:15:43', '2019-09-30 05:15:43'),
(1270, 'App\\User', 15, 'created', 'App\\experience', 15, '[]', '{\"employer\":\"Waqar Ahmad\",\"position\":\"Accounts Officer\",\"from\":\"2015-06-17\",\"to\":\"2019-09-30\",\"country_id\":\"1\",\"activities\":null,\"employee_id\":\"26\",\"id\":15}', 'http://192.168.1.10/hrms/public/hrms/experience', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 05:16:38', '2019-09-30 05:16:38'),
(1271, 'App\\User', 15, 'created', 'App\\contact', 19, '[]', '{\"employee_id\":\"26\",\"type\":\"0\",\"house\":\"H. No. 122-B, St. No. 4, Railway Officers Colony, Waltan Road, Lahore Cantt.\",\"street\":null,\"town\":\"Cantt.\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country_id\":\"1\",\"mobile\":\"03055454926\",\"landline\":null,\"id\":19}', 'http://192.168.1.10/hrms/public/editPermanentAddress/26', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 05:22:11', '2019-09-30 05:22:11'),
(1272, 'App\\User', 15, 'created', 'App\\contact', 20, '[]', '{\"employee_id\":\"26\",\"type\":\"1\",\"house\":\"H. No. 122-B, St. No. 4, Railway Officers Colony, Waltan Road, Lahore Cantt.\",\"street\":null,\"town\":\"Cantt.\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country_id\":\"1\",\"mobile\":\"03055454926\",\"landline\":null,\"id\":20}', 'http://192.168.1.10/hrms/public/editCurrentAddress/26', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 05:23:45', '2019-09-30 05:23:45'),
(1273, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"yaZ0exx5oFISBxCO9ff77nZnubn85t1NeRGeUNCo\"}', '{\"session_id\":\"G0tdKuCxrkpgfyUmkSWLtJwhEqnIukZ7d53HBGnS\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-09-30 05:28:20', '2019-09-30 05:28:20'),
(1274, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"session_id\":\"E4PDvzsNgw5gbfb9w6nyoEWaeFLCuXh6QbUL508P\"}', '{\"session_id\":\"9a79R0hzrEALzDbMBlG6aSK52AXGvOsaLm54w8WL\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 04:58:05', '2019-10-01 04:58:05'),
(1275, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"G0tdKuCxrkpgfyUmkSWLtJwhEqnIukZ7d53HBGnS\"}', '{\"session_id\":\"imW54Q3657P3AnU2ZETmKLF3CzXrXQcvIDhcjubZ\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 05:32:34', '2019-10-01 05:32:34'),
(1276, 'App\\User', 13, 'created', 'App\\document', 135, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1569908017-25-CNIC Front.JPG\",\"file_path\":\"documents\\/25_Muhammad__Javed\\/\",\"employee_id\":25,\"type\":\"image\\/jpeg\",\"id\":135}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 05:33:37', '2019-10-01 05:33:37'),
(1277, 'App\\User', 13, 'created', 'App\\document', 136, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1569908031-25-CNIC Back.JPG\",\"file_path\":\"documents\\/25_Muhammad__Javed\\/\",\"employee_id\":25,\"type\":\"image\\/jpeg\",\"id\":136}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 05:33:52', '2019-10-01 05:33:52'),
(1278, 'App\\User', 13, 'created', 'App\\document', 137, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1569908061-25-HR Form.pdf\",\"file_path\":\"documents\\/25_Muhammad__Javed\\/\",\"employee_id\":25,\"type\":\"application\\/pdf\",\"id\":137}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 05:34:21', '2019-10-01 05:34:21'),
(1279, 'App\\User', 13, 'created', 'App\\document', 138, '[]', '{\"document_name\":\"2 pages Appointment Letter\",\"file_name\":\"1569908095-25-2 pages Appointment Letter.pdf\",\"file_path\":\"documents\\/25_Muhammad__Javed\\/\",\"employee_id\":25,\"type\":\"application\\/pdf\",\"id\":138}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 05:34:55', '2019-10-01 05:34:55'),
(1280, 'App\\User', 13, 'created', 'App\\document', 139, '[]', '{\"document_name\":\"1-Page Apointment Letter\",\"file_name\":\"1569908126-25-1-Page Apointment Letter.pdf\",\"file_path\":\"documents\\/25_Muhammad__Javed\\/\",\"employee_id\":25,\"type\":\"application\\/pdf\",\"id\":139}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 05:35:26', '2019-10-01 05:35:26'),
(1281, 'App\\User', 13, 'created', 'App\\document', 140, '[]', '{\"document_name\":\"Joining Report\",\"file_name\":\"1569908153-25-Joining Report.pdf\",\"file_path\":\"documents\\/25_Muhammad__Javed\\/\",\"employee_id\":25,\"type\":\"application\\/pdf\",\"id\":140}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 05:35:53', '2019-10-01 05:35:53'),
(1282, 'App\\User', 13, 'created', 'App\\document', 141, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1569908772-23-CNIC Front.JPG\",\"file_path\":\"documents\\/23_Muhammad__Sultan\\/\",\"employee_id\":23,\"type\":\"image\\/jpeg\",\"id\":141}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 05:46:13', '2019-10-01 05:46:13'),
(1283, 'App\\User', 13, 'created', 'App\\document', 142, '[]', '{\"document_name\":\"Appointment Letter\",\"file_name\":\"1569908794-23-Appointment Letter.pdf\",\"file_path\":\"documents\\/23_Muhammad__Sultan\\/\",\"employee_id\":23,\"type\":\"application\\/pdf\",\"id\":142}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 05:46:34', '2019-10-01 05:46:34');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1284, 'App\\User', 13, 'created', 'App\\document', 143, '[]', '{\"document_name\":\"Joining Report\",\"file_name\":\"1569908832-23-Joining Report.pdf\",\"file_path\":\"documents\\/23_Muhammad__Sultan\\/\",\"employee_id\":23,\"type\":\"application\\/pdf\",\"id\":143}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 05:47:12', '2019-10-01 05:47:12'),
(1285, 'App\\User', 13, 'created', 'App\\document', 144, '[]', '{\"document_name\":\"Promotion Order\",\"file_name\":\"1569908852-23-Promotion Order.pdf\",\"file_path\":\"documents\\/23_Muhammad__Sultan\\/\",\"employee_id\":23,\"type\":\"application\\/pdf\",\"id\":144}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 05:47:33', '2019-10-01 05:47:33'),
(1286, 'App\\User', 13, 'created', 'App\\document', 145, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1569909044-23-HR Form.pdf\",\"file_path\":\"documents\\/23_Muhammad__Sultan\\/\",\"employee_id\":23,\"type\":\"application\\/pdf\",\"id\":145}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 05:50:44', '2019-10-01 05:50:44'),
(1287, 'App\\User', 13, 'created', 'App\\document', 146, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1569910428-24-CNIC Front.JPG\",\"file_path\":\"documents\\/24_Muhammad__Waqas\\/\",\"employee_id\":24,\"type\":\"image\\/jpeg\",\"id\":146}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 06:13:49', '2019-10-01 06:13:49'),
(1288, 'App\\User', 13, 'created', 'App\\document', 147, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1569910445-24-CNIC Back.JPG\",\"file_path\":\"documents\\/24_Muhammad__Waqas\\/\",\"employee_id\":24,\"type\":\"image\\/jpeg\",\"id\":147}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 06:14:05', '2019-10-01 06:14:05'),
(1289, 'App\\User', 13, 'created', 'App\\document', 148, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1569912998-24-HR Form.pdf\",\"file_path\":\"documents\\/24_Muhammad__Waqas\\/\",\"employee_id\":24,\"type\":\"application\\/pdf\",\"id\":148}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 06:56:39', '2019-10-01 06:56:39'),
(1290, 'App\\User', 13, 'created', 'App\\document', 149, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1569912998-24-HR Form.pdf\",\"file_path\":\"documents\\/24_Muhammad__Waqas\\/\",\"employee_id\":24,\"type\":\"application\\/pdf\",\"id\":149}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 06:56:39', '2019-10-01 06:56:39'),
(1291, 'App\\User', 13, 'created', 'App\\document', 150, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1569913001-24-HR Form.pdf\",\"file_path\":\"documents\\/24_Muhammad__Waqas\\/\",\"employee_id\":24,\"type\":\"application\\/pdf\",\"id\":150}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 06:56:41', '2019-10-01 06:56:41'),
(1292, 'App\\User', 13, 'created', 'App\\document', 151, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1569913018-24-HR Form.pdf\",\"file_path\":\"documents\\/24_Muhammad__Waqas\\/\",\"employee_id\":24,\"type\":\"application\\/pdf\",\"id\":151}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 06:56:58', '2019-10-01 06:56:58'),
(1293, 'App\\User', 13, 'deleted', 'App\\document', 148, '{\"id\":148,\"employee_id\":24,\"document_name\":\"HR Form\",\"file_name\":\"1569912998-24-HR Form.pdf\",\"file_path\":\"documents\\/24_Muhammad__Waqas\\/\",\"type\":\"application\\/pdf\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/hrms/document/148', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 06:57:11', '2019-10-01 06:57:11'),
(1294, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"session_id\":\"9a79R0hzrEALzDbMBlG6aSK52AXGvOsaLm54w8WL\"}', '{\"session_id\":\"26LYhPjw94Q2Ogc3zBJeE30D1fZXrBNgw7kOB351\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 06:57:38', '2019-10-01 06:57:38'),
(1295, 'App\\User', 13, 'deleted', 'App\\document', 151, '{\"id\":151,\"employee_id\":24,\"document_name\":\"HR Form\",\"file_name\":\"1569913018-24-HR Form.pdf\",\"file_path\":\"documents\\/24_Muhammad__Waqas\\/\",\"type\":\"application\\/pdf\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/hrms/document/151', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 06:58:26', '2019-10-01 06:58:26'),
(1296, 'App\\User', 13, 'deleted', 'App\\document', 150, '{\"id\":150,\"employee_id\":24,\"document_name\":\"HR Form\",\"file_name\":\"1569913001-24-HR Form.pdf\",\"file_path\":\"documents\\/24_Muhammad__Waqas\\/\",\"type\":\"application\\/pdf\",\"reference_no\":null,\"date\":null}', '[]', 'http://192.168.1.10/hrms/public/hrms/document/150', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 06:58:32', '2019-10-01 06:58:32'),
(1297, 'App\\User', 13, 'created', 'App\\document', 152, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1569913147-24-HR Form.pdf\",\"file_path\":\"documents\\/24_Muhammad__Waqas\\/\",\"employee_id\":24,\"type\":\"application\\/pdf\",\"id\":152}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 06:59:08', '2019-10-01 06:59:08'),
(1298, 'App\\User', 13, 'created', 'App\\document', 153, '[]', '{\"document_name\":\"Promotion Order\",\"file_name\":\"1569913176-24-Promotion Order.pdf\",\"file_path\":\"documents\\/24_Muhammad__Waqas\\/\",\"employee_id\":24,\"type\":\"application\\/pdf\",\"id\":153}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 06:59:36', '2019-10-01 06:59:36'),
(1299, 'App\\User', 13, 'created', 'App\\document', 154, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1569913849-26-CNIC Front.JPG\",\"file_path\":\"documents\\/26_Waqar__Ahmad\\/\",\"employee_id\":26,\"type\":\"image\\/jpeg\",\"id\":154}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 07:10:49', '2019-10-01 07:10:49'),
(1300, 'App\\User', 13, 'created', 'App\\document', 155, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1569913872-26-CNIC Back.JPG\",\"file_path\":\"documents\\/26_Waqar__Ahmad\\/\",\"employee_id\":26,\"type\":\"image\\/jpeg\",\"id\":155}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 07:11:12', '2019-10-01 07:11:12'),
(1301, 'App\\User', 13, 'created', 'App\\document', 156, '[]', '{\"document_name\":\"Appointment Letter\",\"file_name\":\"1569913967-26-Appointment Letter.pdf\",\"file_path\":\"documents\\/26_Waqar__Ahmad\\/\",\"employee_id\":26,\"type\":\"application\\/pdf\",\"id\":156}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 07:12:48', '2019-10-01 07:12:48'),
(1302, 'App\\User', 13, 'created', 'App\\document', 157, '[]', '{\"document_name\":\"HR Form\",\"file_name\":\"1569914099-26-HR Form.pdf\",\"file_path\":\"documents\\/26_Waqar__Ahmad\\/\",\"employee_id\":26,\"type\":\"application\\/pdf\",\"id\":157}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 07:14:59', '2019-10-01 07:14:59'),
(1303, 'App\\User', 13, 'created', 'App\\document', 158, '[]', '{\"document_name\":\"Joining Report\",\"file_name\":\"1569914138-26-Joining Report.pdf\",\"file_path\":\"documents\\/26_Waqar__Ahmad\\/\",\"employee_id\":26,\"type\":\"application\\/pdf\",\"id\":158}', 'http://192.168.1.10/hrms/public/hrms/document', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 07:15:38', '2019-10-01 07:15:38'),
(1304, 'App\\User', 1, 'updated', 'App\\posting', 10, '{\"manager_id\":7}', '{\"manager_id\":\"2\"}', 'http://localhost/hrms/public/hrms/posting/10', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 12:40:39', '2019-10-01 12:40:39'),
(1305, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"DlsmkbJEroWgWTMBq7wFI29yilTx6qR7AktSUxnHImlQkbEJSkJeMdU4d8gL\"}', '{\"remember_token\":\"bUMIARsKfFUHOHht7xuMEfBbn7epQ9PxFYk7d8qxGAmElXzPJcnvivJynVjS\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-01 13:21:24', '2019-10-01 13:21:24'),
(1306, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"imW54Q3657P3AnU2ZETmKLF3CzXrXQcvIDhcjubZ\"}', '{\"session_id\":\"VpORQXRRVD7UDGjf8wHQOI9Yn88m5Z7Y59G0kY06\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 02:57:54', '2019-10-02 02:57:54'),
(1307, 'App\\User', 1, 'updated', 'App\\posting', 17, '{\"manager_id\":5}', '{\"manager_id\":\"7\"}', 'http://localhost/hrms/public/hrms/posting/17', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 03:00:29', '2019-10-02 03:00:29'),
(1308, 'App\\User', 1, 'updated', 'App\\posting', 18, '{\"manager_id\":5}', '{\"manager_id\":\"7\"}', 'http://localhost/hrms/public/hrms/posting/18', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 03:00:53', '2019-10-02 03:00:53'),
(1309, 'App\\User', 1, 'updated', 'App\\employee', 23, '{\"middle_name\":null}', '{\"middle_name\":\"Javed\"}', 'http://localhost/hrms/public/hrms/employee/23', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 03:02:52', '2019-10-02 03:02:52'),
(1310, 'App\\User', 1, 'updated', 'App\\employee', 23, '{\"middle_name\":\"Javed\"}', '{\"middle_name\":null}', 'http://localhost/hrms/public/hrms/employee/23', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 03:03:01', '2019-10-02 03:03:01'),
(1311, 'App\\User', 1, 'updated', 'App\\employee', 23, '{\"middle_name\":null}', '{\"middle_name\":\"Javed\"}', 'http://localhost/hrms/public/hrms/employee/23', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 03:03:12', '2019-10-02 03:03:12'),
(1312, 'App\\User', 1, 'updated', 'App\\employee', 23, '{\"middle_name\":\"Javed\"}', '{\"middle_name\":null}', 'http://localhost/hrms/public/hrms/employee/23', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 03:09:04', '2019-10-02 03:09:04'),
(1313, 'App\\User', 1, 'created', 'App\\designation', 38, '[]', '{\"name\":\"Assistant Manager Finance\",\"level\":\"5\",\"id\":38}', 'http://localhost/hrms/public/hrms/designation', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 03:34:42', '2019-10-02 03:34:42'),
(1314, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"rVrmonBpdkk2Ao2OxNdScOqjRGIdonoKgfE1uAoD\"}', '{\"session_id\":\"brxw5twCtxMWKxCkF1VCAuqZcyVg5ZC6tqo0cR2U\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 03:47:17', '2019-10-02 03:47:17'),
(1315, 'App\\User', 15, 'updated', 'App\\employee', 23, '{\"middle_name\":null,\"date_of_birth\":\"1957-12-21\",\"cnic_expiry\":\"2020-04-29\"}', '{\"middle_name\":\"Javed\",\"date_of_birth\":\"1957-12-20\",\"cnic_expiry\":\"2020-04-28\"}', 'http://192.168.1.10/hrms/public/hrms/employee/23', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 03:49:17', '2019-10-02 03:49:17'),
(1316, 'App\\User', 15, 'deleted', 'App\\posting', 20, '{\"id\":20,\"employee_id\":24,\"designation_id\":20,\"posting_date\":\"2001-11-07\",\"project\":\"Overhead of the Company\",\"joining_date\":\"2001-11-07\",\"location\":null,\"manager_id\":5}', '[]', 'http://192.168.1.10/hrms/public/hrms/posting/20', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 03:54:51', '2019-10-02 03:54:51'),
(1317, 'App\\User', 15, 'deleted', 'App\\posting', 21, '{\"id\":21,\"employee_id\":24,\"designation_id\":20,\"posting_date\":\"2001-11-06\",\"project\":\"Overhead of the Company\",\"joining_date\":\"2001-11-07\",\"location\":null,\"manager_id\":5}', '[]', 'http://192.168.1.10/hrms/public/hrms/posting/21', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 03:55:04', '2019-10-02 03:55:04'),
(1318, 'App\\User', 15, 'deleted', 'App\\posting', 17, '{\"id\":17,\"employee_id\":23,\"designation_id\":20,\"posting_date\":\"2004-09-03\",\"project\":\"Overhead of the Company\",\"joining_date\":\"2004-09-03\",\"location\":null,\"manager_id\":7}', '[]', 'http://192.168.1.10/hrms/public/hrms/posting/17', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 03:59:44', '2019-10-02 03:59:44'),
(1319, 'App\\User', 15, 'updated', 'App\\employee', 25, '{\"middle_name\":null,\"date_of_birth\":\"1980-09-07\",\"cnic_expiry\":\"2028-05-21\"}', '{\"middle_name\":\"Imran\",\"date_of_birth\":\"1980-09-06\",\"cnic_expiry\":\"2028-05-20\"}', 'http://192.168.1.10/hrms/public/hrms/employee/25', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 04:04:25', '2019-10-02 04:04:25'),
(1320, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"brxw5twCtxMWKxCkF1VCAuqZcyVg5ZC6tqo0cR2U\"}', '{\"session_id\":\"ioJIqmql7tDR9On6R3udWpTjBmPzuysAqNampjP8\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 05:48:22', '2019-10-02 05:48:22'),
(1321, 'App\\User', 15, 'created', 'App\\employee', 27, '[]', '{\"first_name\":\"Malik\",\"middle_name\":\"Zulfiqar\",\"last_name\":\"Ali\",\"father_name\":\"Malik Mushtaq Ahmed\",\"date_of_birth\":\"1970-07-09\",\"gender_id\":\"1\",\"cnic\":\"35202-8204197-3\",\"cnic_expiry\":\"2027-07-11\",\"employee_no\":null,\"marital_status_id\":\"2\",\"religon\":\"Islam\",\"division_id\":\"3\",\"id\":27}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 06:05:38', '2019-10-02 06:05:38'),
(1322, 'App\\User', 15, 'created', 'App\\nationality', 27, '[]', '{\"country_id\":\"1\",\"employee_id\":27,\"id\":27}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 06:05:38', '2019-10-02 06:05:38'),
(1323, 'App\\User', 15, 'created', 'App\\User', 20, '[]', '{\"email\":\"zulfimalik@yahoo.com\",\"employee_id\":\"27\",\"id\":20}', 'http://192.168.1.10/hrms/public/editUser/27', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 06:06:31', '2019-10-02 06:06:31'),
(1324, 'App\\User', 1, 'created', 'App\\posting', 24, '[]', '{\"designation_id\":\"28\",\"posting_date\":\"2001-03-08\",\"manager_id\":\"3\",\"joining_date\":\"2001-03-08\",\"project\":\"Overhead of the Company\",\"location\":\"Lahore\",\"employee_id\":\"1\",\"id\":24}', 'http://localhost/hrms/public/hrms/posting', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 07:10:36', '2019-10-02 07:10:36'),
(1325, 'App\\User', 1, 'created', 'App\\posting', 25, '[]', '{\"designation_id\":\"23\",\"posting_date\":\"2017-04-01\",\"manager_id\":\"3\",\"joining_date\":\"2017-04-01\",\"project\":\"Overhead of the Company\",\"location\":\"Lahore\",\"employee_id\":\"1\",\"id\":25}', 'http://localhost/hrms/public/hrms/posting', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 07:11:34', '2019-10-02 07:11:34'),
(1326, 'App\\User', 1, 'deleted', 'App\\posting', 25, '{\"id\":25,\"employee_id\":1,\"designation_id\":23,\"posting_date\":\"2017-04-01\",\"project\":\"Overhead of the Company\",\"joining_date\":\"2017-04-01\",\"location\":\"Lahore\",\"manager_id\":3}', '[]', 'http://localhost/hrms/public/hrms/posting/25', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 11:09:10', '2019-10-02 11:09:10'),
(1327, 'App\\User', 1, 'created', 'App\\contact_number', 213, '[]', '{\"name\":\"Fida Hussain\",\"designation\":\"OMS Project Coordinator\",\"mobile_1\":\"0302-8480766\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":213}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 11:22:32', '2019-10-02 11:22:32'),
(1328, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"bUMIARsKfFUHOHht7xuMEfBbn7epQ9PxFYk7d8qxGAmElXzPJcnvivJynVjS\"}', '{\"remember_token\":\"85odfOXIUcdX5fYnUK4qkuGYb5YHSmrn3RoMkACruCv18v7RjfkjLQKYNP0s\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-02 12:49:06', '2019-10-02 12:49:06'),
(1329, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"VpORQXRRVD7UDGjf8wHQOI9Yn88m5Z7Y59G0kY06\"}', '{\"session_id\":\"5K6YHnjDMckBCabaFwkPADi1vs9EocpuNc6EfdBi\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 02:58:45', '2019-10-03 02:58:45'),
(1330, 'App\\User', 1, 'created', 'App\\picture', 23, '[]', '{\"name\":\"1-Sohail  Afzal.png\",\"employee_id\":1,\"type\":\"image\\/png\",\"size\":115457,\"width\":\"100\",\"height\":\"100\",\"id\":23}', 'http://localhost/hrms/public/editPicture/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 02:59:28', '2019-10-03 02:59:28'),
(1331, 'App\\User', 1, 'updated', 'App\\appointment', 16, '{\"reference_no\":\"bqb\\/rep\\/test\",\"appointment_date\":\"2019-03-08\",\"designation_id\":23,\"category\":\"B\"}', '{\"reference_no\":\"BQB\\/PF\\/SA\\/070\",\"appointment_date\":\"2001-09-01\",\"designation_id\":\"28\",\"category\":\"A\"}', 'http://localhost/hrms/public/hrms/appointment/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 03:01:59', '2019-10-03 03:01:59'),
(1332, 'App\\User', 1, 'updated', 'App\\salary', 20, '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"other_allowance\":null,\"total\":13500}', '{\"basic_pay\":\"5400\",\"house_rent\":\"2160\",\"dearness_allowance\":\"540\",\"other_allowance\":\"60\",\"total\":\"8160\"}', 'http://localhost/hrms/public/hrms/salary/1', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 03:02:38', '2019-10-03 03:02:38'),
(1333, 'App\\User', 1, 'created', 'App\\posting', 25, '[]', '{\"designation_id\":\"28\",\"posting_date\":\"2001-09-01\",\"manager_id\":\"3\",\"joining_date\":\"2001-09-01\",\"project\":\"Overhead of the Company\",\"location\":\"Lahore\",\"employee_id\":\"1\",\"id\":25}', 'http://localhost/hrms/public/hrms/posting', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 03:03:45', '2019-10-03 03:03:45'),
(1334, 'App\\User', 1, 'deleted', 'App\\posting', 24, '{\"id\":24,\"employee_id\":1,\"designation_id\":28,\"posting_date\":\"2001-03-08\",\"project\":\"Overhead of the Company\",\"joining_date\":\"2001-03-08\",\"location\":\"Lahore\",\"manager_id\":3}', '[]', 'http://localhost/hrms/public/hrms/posting/24', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 03:03:52', '2019-10-03 03:03:52'),
(1335, 'App\\User', 1, 'updated', 'App\\document', 129, '{\"file_name\":\"1569323814-3-CNIC Front.jpg\"}', '{\"file_name\":\"1570072841-3-CNIC Front.jpg\"}', 'http://localhost/hrms/public/hrms/document/129', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 03:20:41', '2019-10-03 03:20:41'),
(1336, 'App\\User', 1, 'updated', 'App\\document', 130, '{\"file_name\":\"1569323831-3-CNIC Back.jpg\"}', '{\"file_name\":\"1570072878-3-CNIC Back.jpg\"}', 'http://localhost/hrms/public/hrms/document/130', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 03:21:18', '2019-10-03 03:21:18'),
(1337, 'App\\User', 1, 'deleted', 'App\\document', 130, '{\"id\":130,\"employee_id\":3,\"document_name\":\"CNIC Back\",\"file_name\":\"1570072878-3-CNIC Back.jpg\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"type\":\"image\\/jpeg\",\"reference_no\":null,\"date\":null}', '[]', 'http://localhost/hrms/public/hrms/document/130', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 03:50:53', '2019-10-03 03:50:53'),
(1338, 'App\\User', 1, 'created', 'App\\document', 159, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1570074672-3-CNIC Back.jpg\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"employee_id\":3,\"type\":\"image\\/jpeg\",\"id\":159}', 'http://localhost/hrms/public/hrms/document', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 03:51:12', '2019-10-03 03:51:12'),
(1339, 'App\\User', 1, 'deleted', 'App\\document', 129, '{\"id\":129,\"employee_id\":3,\"document_name\":\"CNIC Front\",\"file_name\":\"1570072841-3-CNIC Front.jpg\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"type\":\"image\\/jpeg\",\"reference_no\":null,\"date\":null}', '[]', 'http://localhost/hrms/public/hrms/document/129', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 03:57:43', '2019-10-03 03:57:43'),
(1340, 'App\\User', 1, 'created', 'App\\document', 160, '[]', '{\"document_name\":\"CNIC Front\",\"file_name\":\"1570075080-3-CNIC Front.jpg\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"employee_id\":3,\"type\":\"image\\/jpeg\",\"id\":160}', 'http://localhost/hrms/public/hrms/document', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 03:58:00', '2019-10-03 03:58:00'),
(1341, 'App\\User', 1, 'created', 'App\\document', 161, '[]', '{\"document_name\":\"CNIC Back\",\"file_name\":\"1570075091-3-CNIC Back.jpg\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"employee_id\":3,\"type\":\"image\\/jpeg\",\"id\":161}', 'http://localhost/hrms/public/hrms/document', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 03:58:11', '2019-10-03 03:58:11'),
(1342, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"ioJIqmql7tDR9On6R3udWpTjBmPzuysAqNampjP8\"}', '{\"session_id\":\"daaMEXQqNy8VcD06Ry87R7K3zfgJ9E5KPx6nalXg\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 04:19:49', '2019-10-03 04:19:49'),
(1343, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"session_id\":\"daaMEXQqNy8VcD06Ry87R7K3zfgJ9E5KPx6nalXg\"}', '{\"session_id\":\"6w4C8KuOwrgCOJzsmZuVnNRS38YdbCn8OWlw37By\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 04:32:58', '2019-10-03 04:32:58'),
(1344, 'App\\User', 15, 'created', 'App\\picture', 24, '[]', '{\"name\":\"27-Malik Zulfiqar Ali.png\",\"employee_id\":27,\"type\":\"image\\/png\",\"size\":178674,\"width\":\"100\",\"height\":\"100\",\"id\":24}', 'http://192.168.1.10/hrms/public/editPicture/27', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 04:33:50', '2019-10-03 04:33:50'),
(1345, 'App\\User', 1, 'created', 'App\\designation', 39, '[]', '{\"name\":\"Assistant Secretary\",\"level\":\"11\",\"id\":39}', 'http://localhost/hrms/public/hrms/designation', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 04:36:51', '2019-10-03 04:36:51'),
(1346, 'App\\User', 15, 'created', 'App\\appointment', 24, '[]', '{\"employee_id\":\"27\",\"reference_no\":\"BWT\\/P\\/710\",\"appointment_date\":\"2009-06-12\",\"designation_id\":\"39\",\"expiry_date\":null,\"category\":\"C\",\"grade\":null,\"appointment_letter_type\":\"1 Page\",\"id\":24}', 'http://192.168.1.10/hrms/public/hrms/appointment/27', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 04:49:21', '2019-10-03 04:49:21'),
(1347, 'App\\User', 15, 'created', 'App\\salary', 38, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"16000\",\"employee_id\":\"27\",\"salary_remarks\":null,\"id\":38}', 'http://192.168.1.10/hrms/public/hrms/salary/27', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 04:49:33', '2019-10-03 04:49:33'),
(1348, 'App\\User', 15, 'created', 'App\\posting', 26, '[]', '{\"designation_id\":\"39\",\"posting_date\":\"2009-06-12\",\"manager_id\":\"7\",\"joining_date\":\"2009-06-12\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"27\",\"id\":26}', 'http://192.168.1.10/hrms/public/hrms/posting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 04:51:44', '2019-10-03 04:51:44'),
(1349, 'App\\User', 15, 'created', 'App\\education', 23, '[]', '{\"degree_name\":\"B.A.\",\"institute\":\"University of Punjab\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"14\",\"employee_id\":\"27\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"1994\",\"grade\":null,\"country_id\":\"1\",\"id\":23}', 'http://192.168.1.10/hrms/public/hrms/education', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 04:52:50', '2019-10-03 04:52:50'),
(1350, 'App\\User', 15, 'created', 'App\\experience', 16, '[]', '{\"employer\":\"Malik Zulfiqar Ali\",\"position\":\"Assistant Secretary\",\"from\":\"1995-04-14\",\"to\":\"2019-10-02\",\"country_id\":\"1\",\"activities\":null,\"employee_id\":\"27\",\"id\":16}', 'http://192.168.1.10/hrms/public/hrms/experience', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 04:54:38', '2019-10-03 04:54:38'),
(1351, 'App\\User', 15, 'created', 'App\\promotion', 20, '[]', '{\"promoted_designation\":\"Assistant Accounts Officer\",\"effective_date\":\"2010-07-01\",\"promotion_remarks\":null,\"employee_id\":\"27\",\"id\":20}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=27', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 04:58:23', '2019-10-03 04:58:23'),
(1352, 'App\\User', 15, 'created', 'App\\salary', 39, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"52185\",\"employee_id\":\"27\",\"promotion_id\":20,\"id\":39}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=27', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 04:58:23', '2019-10-03 04:58:23'),
(1353, 'App\\User', 15, 'created', 'App\\promotion', 21, '[]', '{\"promoted_designation\":\"Assistant Accounts Officer\",\"effective_date\":\"2014-02-27\",\"promotion_remarks\":null,\"employee_id\":\"27\",\"id\":21}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=27', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 04:59:27', '2019-10-03 04:59:27'),
(1354, 'App\\User', 15, 'created', 'App\\salary', 40, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"52185\",\"employee_id\":\"27\",\"promotion_id\":21,\"id\":40}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=27', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 04:59:27', '2019-10-03 04:59:27'),
(1355, 'App\\User', 15, 'created', 'App\\contact', 21, '[]', '{\"employee_id\":\"27\",\"type\":\"0\",\"house\":\"H. No. 966, R.I, Johar Town, Lahore\",\"street\":null,\"town\":\"Johar Town\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country_id\":\"1\",\"mobile\":\"0323-4484263\",\"landline\":null,\"id\":21}', 'http://192.168.1.10/hrms/public/editPermanentAddress/27', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 05:01:25', '2019-10-03 05:01:25'),
(1356, 'App\\User', 15, 'created', 'App\\employee', 28, '[]', '{\"first_name\":\"Abdul Majid\",\"middle_name\":null,\"last_name\":\"Rafi\",\"father_name\":\"Muhammad Rafi Ch.\",\"date_of_birth\":\"1981-08-20\",\"gender_id\":\"1\",\"cnic\":\"35202-2481939-7\",\"cnic_expiry\":\"2016-10-19\",\"employee_no\":null,\"marital_status_id\":\"2\",\"religon\":\"Islam\",\"division_id\":\"3\",\"id\":28}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 05:14:41', '2019-10-03 05:14:41'),
(1357, 'App\\User', 15, 'created', 'App\\nationality', 28, '[]', '{\"country_id\":\"1\",\"employee_id\":28,\"id\":28}', 'http://192.168.1.10/hrms/public/hrms/employee', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 05:14:41', '2019-10-03 05:14:41'),
(1358, 'App\\User', 15, 'created', 'App\\User', 21, '[]', '{\"email\":\"majidrafi@barqaab.com\",\"employee_id\":\"28\",\"id\":21}', 'http://192.168.1.10/hrms/public/editUser/28', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 05:15:12', '2019-10-03 05:15:12'),
(1359, 'App\\User', 15, 'created', 'App\\appointment', 25, '[]', '{\"employee_id\":\"28\",\"reference_no\":\"BQB\\/A\\/03\\/68\\/MA\\/452\",\"appointment_date\":\"2009-04-03\",\"designation_id\":\"30\",\"expiry_date\":null,\"category\":\"C\",\"grade\":null,\"appointment_letter_type\":\"1 Page\",\"id\":25}', 'http://192.168.1.10/hrms/public/hrms/appointment/28', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 05:18:33', '2019-10-03 05:18:33'),
(1360, 'App\\User', 15, 'created', 'App\\salary', 41, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"18000\",\"employee_id\":\"28\",\"salary_remarks\":null,\"id\":41}', 'http://192.168.1.10/hrms/public/hrms/salary/28', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 05:18:43', '2019-10-03 05:18:43'),
(1361, 'App\\User', 15, 'created', 'App\\posting', 27, '[]', '{\"designation_id\":\"30\",\"posting_date\":\"2009-04-03\",\"manager_id\":\"7\",\"joining_date\":\"2009-04-03\",\"project\":\"Overhead of the Company\",\"location\":null,\"employee_id\":\"28\",\"id\":27}', 'http://192.168.1.10/hrms/public/hrms/posting', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 05:22:35', '2019-10-03 05:22:35'),
(1362, 'App\\User', 15, 'created', 'App\\education', 24, '[]', '{\"degree_name\":\"B.Com\",\"institute\":\"Scholars\",\"marks_obtain\":null,\"total_marks\":null,\"level\":\"14\",\"employee_id\":\"28\",\"from_month\":null,\"from_year\":null,\"to_month\":null,\"to_year\":\"2003\",\"grade\":null,\"country_id\":\"1\",\"id\":24}', 'http://192.168.1.10/hrms/public/hrms/education', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 05:24:52', '2019-10-03 05:24:52'),
(1363, 'App\\User', 15, 'created', 'App\\experience', 17, '[]', '{\"employer\":\"Abdul Majid Rafi\",\"position\":\"Accounts Assistant\",\"from\":\"2006-07-18\",\"to\":\"2019-04-06\",\"country_id\":\"1\",\"activities\":null,\"employee_id\":\"28\",\"id\":17}', 'http://192.168.1.10/hrms/public/hrms/experience', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 05:31:19', '2019-10-03 05:31:19'),
(1364, 'App\\User', 15, 'created', 'App\\promotion', 22, '[]', '{\"promoted_designation\":\"Accounts Assistant\",\"effective_date\":\"2015-03-15\",\"promotion_remarks\":null,\"employee_id\":\"28\",\"id\":22}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=28', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 05:33:04', '2019-10-03 05:33:04'),
(1365, 'App\\User', 15, 'created', 'App\\salary', 42, '[]', '{\"basic_pay\":null,\"house_rent\":null,\"dearness_allowance\":null,\"adhoc_2009\":null,\"adhoc_2010\":null,\"adhoc_2012\":null,\"adhoc_2013\":null,\"field_allowance\":null,\"other_allowance\":null,\"total\":\"42185\",\"employee_id\":\"28\",\"promotion_id\":22,\"id\":42}', 'http://192.168.1.10/hrms/public/hrms/promotion?id=28', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 05:33:04', '2019-10-03 05:33:04'),
(1366, 'App\\User', 15, 'created', 'App\\contact', 22, '[]', '{\"employee_id\":\"28\",\"type\":\"0\",\"house\":\"H. No. 83, Block No. J-3, WAPDA, Lahore\",\"street\":null,\"town\":\"WAPDA Town\",\"tehsil\":null,\"city\":\"Lahore\",\"province\":\"Punjab\",\"country_id\":\"1\",\"mobile\":\"0300-4749011\",\"landline\":null,\"id\":22}', 'http://192.168.1.10/hrms/public/editPermanentAddress/28', '192.168.1.12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 05:34:32', '2019-10-03 05:34:32'),
(1367, 'App\\User', 1, 'created', 'App\\document', 162, '[]', '{\"document_name\":\"testing\",\"file_name\":\"1570082938-3-testing.pdf\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"employee_id\":3,\"type\":\"application\\/pdf\",\"id\":162}', 'http://localhost/hrms/public/hrms/document', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 06:08:59', '2019-10-03 06:08:59'),
(1368, 'App\\User', 1, 'deleted', 'App\\document', 162, '{\"id\":162,\"employee_id\":3,\"document_name\":\"testing\",\"file_name\":\"1570082938-3-testing.pdf\",\"file_path\":\"documents\\/3_Muhammad_Tahir_Khan\\/\",\"type\":\"application\\/pdf\",\"reference_no\":null,\"date\":null}', '[]', 'http://localhost/hrms/public/hrms/document/162', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 06:09:18', '2019-10-03 06:09:18'),
(1369, 'App\\User', 1, 'updated', 'App\\document', 161, '{\"file_name\":\"1570075091-3-CNIC Back.jpg\"}', '{\"file_name\":\"1570087934-3-CNIC Back.jpg\"}', 'http://localhost/hrms/public/hrms/document/161', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 07:32:15', '2019-10-03 07:32:15'),
(1370, 'App\\User', 1, 'created', 'App\\contact_number', 214, '[]', '{\"name\":\"Ahmed K. Mirza\",\"designation\":\"Engineering Geologist, AKM Geotechnical\",\"mobile_1\":\"0333-8006746\",\"address\":\"39-Chenab Block, Allama Iqbal Town, Lahore\",\"mobile_2\":\"042-3781337\",\"email\":\"ahmed@akmcorp.net\",\"id\":214}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 07:49:31', '2019-10-03 07:49:31'),
(1371, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"85odfOXIUcdX5fYnUK4qkuGYb5YHSmrn3RoMkACruCv18v7RjfkjLQKYNP0s\"}', '{\"remember_token\":\"2UnOMfcl8qsAwbdPQKgOEkurJsLZmkiZXh3gtlPXVnqxGmMZT3XfrJbSVA7m\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 09:12:39', '2019-10-03 09:12:39'),
(1372, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"5K6YHnjDMckBCabaFwkPADi1vs9EocpuNc6EfdBi\"}', '{\"session_id\":\"TrW2yajerJWkt3Xcc84rnBQ54LoajNFqCVQBEwn5\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 09:13:15', '2019-10-03 09:13:15'),
(1373, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"2UnOMfcl8qsAwbdPQKgOEkurJsLZmkiZXh3gtlPXVnqxGmMZT3XfrJbSVA7m\"}', '{\"remember_token\":\"7shrLgbbFLl9ocR75fL5MqFyIU5VxxXoVDvINq3itbQUBx4sKgZVxcLIlVsI\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 09:40:36', '2019-10-03 09:40:36'),
(1374, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"TrW2yajerJWkt3Xcc84rnBQ54LoajNFqCVQBEwn5\"}', '{\"session_id\":\"yOp8AOBSIoLhuHD8lrm0wF5r201hxkgEBpUZ7q3u\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 09:41:13', '2019-10-03 09:41:13'),
(1375, 'App\\User', 1, 'created', 'App\\membership', 4, '[]', '{\"name\":\"testing\",\"membership_no\":null,\"expiry_date\":null,\"employee_id\":\"1\",\"id\":4}', 'http://localhost/hrms/public/hrms/membership', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 10:41:59', '2019-10-03 10:41:59'),
(1376, 'App\\User', 1, 'deleted', 'App\\membership', 4, '{\"id\":4,\"employee_id\":1,\"name\":\"testing\",\"membership_no\":null,\"expiry_date\":null}', '[]', 'http://localhost/hrms/public/hrms/membership/4', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 10:45:39', '2019-10-03 10:45:39'),
(1377, 'App\\User', 1, 'deleted', 'App\\bank', 16, '{\"id\":16,\"employee_id\":1,\"name\":\"Standard Chartered Bank\",\"account_no\":\"01128027\",\"branch_code\":null,\"branch_name\":null}', '[]', 'http://localhost/hrms/public/hrms/bank/16', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 11:06:23', '2019-10-03 11:06:23'),
(1378, 'App\\User', 1, 'deleted', 'App\\bank', 17, '{\"id\":17,\"employee_id\":1,\"name\":\"Bank Alfalah\",\"account_no\":\"01125468\",\"branch_code\":null,\"branch_name\":null}', '[]', 'http://localhost/hrms/public/hrms/bank/17', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 11:12:10', '2019-10-03 11:12:10'),
(1379, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"7shrLgbbFLl9ocR75fL5MqFyIU5VxxXoVDvINq3itbQUBx4sKgZVxcLIlVsI\"}', '{\"remember_token\":\"hIFUgQA3lYpgQq9d7UnqCvWgA2VRXylZOSQzFXjDoBcENQx0kuXWRkW7X9Cw\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-03 12:44:15', '2019-10-03 12:44:15'),
(1380, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"yOp8AOBSIoLhuHD8lrm0wF5r201hxkgEBpUZ7q3u\"}', '{\"session_id\":\"JHtFVc23o5K7A8lsyHkXAzOgYpXCg12EMpEXMIJ2\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-04 05:12:02', '2019-10-04 05:12:02'),
(1381, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"yOp8AOBSIoLhuHD8lrm0wF5r201hxkgEBpUZ7q3u\"}', '{\"session_id\":\"sRlnyyJyLAr2JTy3Gl1Rlived02mbJERQrDLzTV7\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-04 05:12:02', '2019-10-04 05:12:02'),
(1382, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"JHtFVc23o5K7A8lsyHkXAzOgYpXCg12EMpEXMIJ2\"}', '{\"session_id\":\"w7as1zJhUATNwmx1ls9VN5bLhwsQ8WKBvy70jPem\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-04 07:14:45', '2019-10-04 07:14:45'),
(1383, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"hIFUgQA3lYpgQq9d7UnqCvWgA2VRXylZOSQzFXjDoBcENQx0kuXWRkW7X9Cw\"}', '{\"remember_token\":\"kc3T3aKNldzMLcjSLnVnvlp6sLsWE9fjaCeVyzaxc4DwEjbqtzaUJ29xWT79\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-04 09:23:38', '2019-10-04 09:23:38'),
(1384, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"session_id\":\"w7as1zJhUATNwmx1ls9VN5bLhwsQ8WKBvy70jPem\"}', '{\"session_id\":\"lPNXxXvUAcuB8IDi0mk7nl7qsdfwEVequRPLLtG6\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-04 09:23:45', '2019-10-04 09:23:45'),
(1385, 'App\\User', 14, 'updated', 'App\\User', 14, '{\"session_id\":\"ze24hxSWZ6HeyKrXNIiw5CUroMujUI6qhcmHaX2H\"}', '{\"session_id\":\"itE88nIk4jSlAOKo1zgxNQqae2hnVTmDT8ssH4C7\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', NULL, '2019-10-04 09:38:17', '2019-10-04 09:38:17'),
(1386, 'App\\User', 1, 'created', 'App\\contact_number', 215, '[]', '{\"name\":\"Faisal\",\"designation\":\"NESPAK STG Department\",\"mobile_1\":\"03008478188\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":215}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-04 09:45:41', '2019-10-04 09:45:41'),
(1387, 'App\\User', 13, 'updated', 'App\\User', 13, '{\"session_id\":\"26LYhPjw94Q2Ogc3zBJeE30D1fZXrBNgw7kOB351\"}', '{\"session_id\":\"DW5hcoapkzdN62KTnzbAoojj8NnhYPjuOCmxci2W\"}', 'http://192.168.1.10/hrms/public/login', '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-04 10:07:28', '2019-10-04 10:07:28'),
(1388, 'App\\User', 1, 'created', 'App\\contact_number', 216, '[]', '{\"name\":\"Nadeem Bagi\",\"designation\":\"Utility Person\",\"mobile_1\":\"0324-4350289\",\"address\":null,\"mobile_2\":null,\"email\":null,\"id\":216}', 'http://localhost/hrms/public/phone/contactNumber', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-04 10:31:31', '2019-10-04 10:31:31'),
(1389, 'App\\User', 1, 'updated', 'App\\contact_number', 216, '{\"name\":\"Nadeem Bagi\"}', '{\"name\":\"Nadeem Baig\"}', 'http://localhost/hrms/public/phone/contactNumber/216', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-04 10:32:13', '2019-10-04 10:32:13'),
(1390, 'App\\User', 1, 'updated', 'App\\User', 14, '{\"role_id\":4}', '{\"role_id\":\"1\"}', 'http://localhost/hrms/public/adminInfo/updateUserRights/14', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-04 12:12:35', '2019-10-04 12:12:35'),
(1391, 'App\\User', 14, 'updated', 'App\\User', 14, '{\"session_id\":\"itE88nIk4jSlAOKo1zgxNQqae2hnVTmDT8ssH4C7\"}', '{\"session_id\":\"f0SxjBqqGWSVKM6MoVeNSdU1jiOXZro4ou7fS3yT\"}', 'http://localhost/hrms/public/login', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', NULL, '2019-10-04 12:12:59', '2019-10-04 12:12:59'),
(1392, 'App\\User', 1, 'updated', 'App\\User', 14, '{\"role_id\":1}', '{\"role_id\":\"4\"}', 'http://localhost/hrms/public/adminInfo/updateUserRights/14', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-04 12:41:04', '2019-10-04 12:41:04'),
(1393, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"kc3T3aKNldzMLcjSLnVnvlp6sLsWE9fjaCeVyzaxc4DwEjbqtzaUJ29xWT79\"}', '{\"remember_token\":\"1ivgJgF0q55Iq4tJwprmFmJXodxzWnaD1xFHVdOPRjNNKWV32LkzaYWc5nyO\"}', 'http://localhost/hrms/public/logout', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', NULL, '2019-10-04 12:41:15', '2019-10-04 12:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE `blood_group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_group`
--

INSERT INTO `blood_group` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'A+', NULL, NULL),
(2, 'O+', NULL, NULL),
(3, 'B+', NULL, NULL),
(4, 'AB+', NULL, NULL),
(5, 'A-', NULL, NULL),
(6, 'O-', NULL, NULL),
(7, 'B-', NULL, NULL),
(8, 'AB-', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chargings`
--

CREATE TABLE `chargings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `project` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '0 for Permanent and 1 for Current',
  `house` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tehsil` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `employee_id`, `type`, `house`, `street`, `town`, `tehsil`, `city`, `province`, `landline`, `mobile`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 4, 0, '29-A-1', NULL, 'Tufail Road', NULL, 'Lahore Cantt', 'Punjab', '042-36652700', '0300-8477161', 1, '2019-08-09 11:48:53', '2019-08-09 11:48:53'),
(2, 6, 0, '162-N', 'Phase-1', 'DHA', NULL, 'Lahore', 'Punjab', '042-35743017', '0335-7401951', 1, '2019-08-19 18:56:21', '2019-08-19 19:41:39'),
(3, 11, 0, 'H. No.3,', 'Street No.3, Mohallah Farooqabad', 'Kacha Road, Kana Kno', NULL, 'Lahore', 'Punjab', NULL, '0300-4491881', 1, '2019-08-27 03:54:54', '2019-08-27 03:54:54'),
(4, 12, 0, 'Mohallah Hussain Nagar', NULL, 'Near 132kV Grid Station Gujranwala Road,', NULL, 'Hafizabad', 'Punjab', NULL, '0341-4689638', 1, '2019-08-27 04:25:43', '2019-08-27 04:25:43'),
(5, 13, 0, 'House No.10', 'Street 47 Ghaziabad Lahore Cantt', 'Lahore', 'Lahore', 'Lahore', 'Punjab', NULL, '0322-4764294', 1, '2019-08-27 06:50:31', '2019-08-27 06:50:31'),
(6, 13, 1, 'House No.10', 'Street 47 Ghaziabad Lahore Cantt', 'Lahore', 'Lahore', 'Lahore', 'Punjab', NULL, '3224764294', 1, '2019-08-27 06:51:23', '2019-08-27 06:51:23'),
(7, 1, 0, '1', '3', 'Rehman Par, Gulshan-e-Ravi', NULL, 'Lahore', 'Punjab', '042-37418187', '0345-4145910', 1, '2019-08-27 23:20:53', '2019-08-27 23:20:53'),
(8, 14, 0, 'Flat No. 260-C, Block N, Model Town Lahore', NULL, 'Chak Kalay Khan', 'Laliyan', 'Narowal', 'Punjab', NULL, '03024125456', 1, '2019-08-29 00:09:51', '2019-08-29 00:09:51'),
(9, 3, 0, 'H. No. E-68, Qadir Colony, Waltan Road, Lahore', NULL, 'Qadir Colony, Waltan Road, Lahore', NULL, 'Lahore', 'Punjab', NULL, '0333-4238066', 1, '2019-09-04 00:18:18', '2019-09-04 00:18:18'),
(10, 18, 0, 'Tormung P.O. Box Khas, Tehsil Khel, District Upper Dir', NULL, 'Dir', NULL, 'Upper Dir', 'Punjab', NULL, '03144075782', 1, '2019-09-05 01:00:29', '2019-09-05 01:00:29'),
(11, 19, 0, 'House No. 03, Bismillah 1, Johar Town Lahore', NULL, 'Village Gumtala Post Office Same Tehsil Shakargarh', NULL, 'Norowal', 'Punjab', NULL, '03135663235', 1, '2019-09-12 02:24:29', '2019-09-12 02:24:29'),
(12, 20, 0, 'H. No. 167, Mohallah Block-B, Rahmat Town, Main G.T. Road, Lahore', NULL, 'Village Manawa, Lahore Cantt', NULL, 'Lahore', 'Punjab', NULL, '03078792898', 1, '2019-09-12 02:41:20', '2019-09-12 02:41:20'),
(13, 1, 1, '3', '1', 'Rehman Park', NULL, 'Lahore', 'Punjab', '042-37418187', '03454145910', 1, '2019-09-18 07:51:57', '2019-09-18 07:51:57'),
(14, 21, 0, 'H. No. 06, Johar Street, Jeewan Hana, Lahore', NULL, 'Jeewan Hana', NULL, 'Lahore', 'Punjab', NULL, '03008135177', 1, '2019-09-19 05:38:27', '2019-09-19 05:38:27'),
(15, 22, 0, 'Rasool pur, Gumtala, Shakir Garh, District Narowal', NULL, 'Gumtala', NULL, 'Norowal', 'Punjab', NULL, '0331-4720360', 1, '2019-09-19 05:53:20', '2019-09-19 05:53:20'),
(16, 23, 0, 'House No. 501, E-1, WAPDA Town, Lahore', NULL, 'WAPDA Town', NULL, 'Lahore', 'Punjab', '042-35968165', '0333-4587995', 1, '2019-09-25 10:01:27', '2019-09-25 10:01:27'),
(17, 24, 0, '15-F/1, WAPDA Town, Lahore', NULL, 'WAPDA Town', NULL, 'Lahore', 'Punjab', '04234182221', '0345-4291840', 1, '2019-09-26 10:07:52', '2019-09-26 10:07:52'),
(18, 25, 0, 'H. No. 86/16-E, Ahmad Park, Fathayabad, Lahore Cantt.', NULL, 'Cantt.', NULL, 'Lahore', 'Punjab', NULL, '03144013412', 1, '2019-09-30 05:02:31', '2019-09-30 05:02:31'),
(19, 26, 0, 'H. No. 122-B, St. No. 4, Railway Officers Colony, Waltan Road, Lahore Cantt.', NULL, 'Cantt.', NULL, 'Lahore', 'Punjab', NULL, '03055454926', 1, '2019-09-30 05:22:11', '2019-09-30 05:22:11'),
(20, 26, 1, 'H. No. 122-B, St. No. 4, Railway Officers Colony, Waltan Road, Lahore Cantt.', NULL, 'Cantt.', NULL, 'Lahore', 'Punjab', NULL, '03055454926', 1, '2019-09-30 05:23:45', '2019-09-30 05:23:45'),
(21, 27, 0, 'H. No. 966, R.I, Johar Town, Lahore', NULL, 'Johar Town', NULL, 'Lahore', 'Punjab', NULL, '0323-4484263', 1, '2019-10-03 05:01:25', '2019-10-03 05:01:25'),
(22, 28, 0, 'H. No. 83, Block No. J-3, WAPDA, Lahore', NULL, 'WAPDA Town', NULL, 'Lahore', 'Punjab', NULL, '0300-4749011', 1, '2019-10-03 05:34:32', '2019-10-03 05:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `contact_numbers`
--

CREATE TABLE `contact_numbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_numbers`
--

INSERT INTO `contact_numbers` (`id`, `name`, `designation`, `mobile_1`, `mobile_2`, `mobile_3`, `office`, `fax`, `landline`, `email`, `address`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'Ahmad Khan Bhatti', 'Chief Executive ', '0300-8477161', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(2, 'Hafiz Zubair', 'General Manager (Finance)', '0300-8495586', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(3, 'Khalid Latif Sheikh', 'General Manager (C&C)', '0333-4217672', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(4, 'Nazir Ahmad Ghuman', 'Project Manager', '0333-4971458', NULL, NULL, NULL, NULL, '042-7830517', NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(5, 'Sajid Munir Sulehri', 'RPM LESCO', '0301-4241078', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(6, 'Abdul Razzaq Cheema', 'Project Manager', '0347-4447728', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(7, 'Zamir Hussain Shad', 'Chief Engineer (Design-I)', '0321-9461872', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(8, 'Syed Wajid Ali Shah', 'Team leader', '0306-4384052', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(9, 'Muhammad Saleem Jat', 'Project Manager', '0300-3010660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(10, 'Yunas Khan', 'Project Manager', '0331-9161593', NULL, NULL, NULL, NULL, NULL, 'myunaskhandaur@yahoo.com', 'H.No.161, Sector-A, St.No.6. Township, Bannu KPK', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(11, 'Aurangzeb ', 'Dy. RPM MEPCO', '0300-6339197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(12, 'Muneeb Ahmad Dar', 'Construction Manager', '0323-8425836', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(13, 'Maqbool Hussain Sindhu', 'RPM HESCO', '0333-2914823', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(14, 'Imtiaz Khalid Chaudary', 'Project Manager', '0300-2012210', NULL, NULL, NULL, NULL, '021-3471824', NULL, 'B-267, Phase-II, Gulshan-e-Hadeed, Bin Qasim Town, Karachi', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(15, 'Ashiq Hussain Bhatti', 'Project Manager', '0300-4890036', '0333-8881251', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(16, 'Jahangir Saleem Chughtai', 'Principal Engineer (Design)', '0333-4426460', NULL, NULL, NULL, NULL, '042-35224350', NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(17, 'Mohammad Ibrahim', 'Project Manager', '0302-8427085', NULL, NULL, NULL, NULL, NULL, 'matesengr@yahoo.com', '311-B, Nishtar Block, Allama Iqbal Town, Lahore', NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(18, 'Sajawal Lund Baloch', 'Construction Manager', '0300-3251512', '0344-4888816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(19, 'Muhammad Khalil', 'Senior Engineer', '0333-4053288', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:18', '2019-09-13 05:11:18'),
(20, 'Muhamamd Ashraf Khan', 'Chief Engineer (Design-II)', '0344-4306890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(21, 'Masood Akbar Pasha', 'Team leader', '0322-4453801', NULL, NULL, NULL, NULL, '042-35185777', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(22, 'Malik Iqtidar Hussain', 'Chief Project Manager', '0300-4463834', NULL, NULL, NULL, NULL, '042-35122462', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(23, 'Saif-ur-Rehman', 'Principal Engineer (T/L)', '0336-1407863', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(24, 'Sadiq Ali Shakir', 'Contract Expert', '0300-4366009', NULL, NULL, NULL, NULL, '042-37580675', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(25, 'Muhammad Rafi', 'Senior Engineer (Substation)', '0321-8837458', NULL, NULL, NULL, NULL, '042-37240602', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(26, 'M. Zulfiqar Ahmad', 'Construction Manager', '0300-4299853', NULL, NULL, NULL, NULL, '042-35725998', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(27, 'Irshad Ahmed Arain', 'Project Manager', '0333-2688518', NULL, NULL, NULL, NULL, '022-3400240', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(28, 'Muhammad Aslam Sadiq', 'T & C Engineer', '0300-6360313', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(29, 'Muhammad Ashraf Bhatti', 'Principal  Engineer (Civil)', '0300-7160875', NULL, NULL, NULL, NULL, '055-3842011', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(30, 'Mukhtar Ahmad', 'Protection Expert', '0345-4074856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(31, 'Iftikhar Ahmad Khan', 'Senior Engineer (Elect.)', '0333-5600177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(32, 'Riaz Hussain Bhatti', 'Principal Engineer (Civil)', '0333-1499410', '0334-7889410', NULL, NULL, NULL, '066-2425346', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(33, 'Irshad Gul', 'Principal Engineer (Substation)', '0333-9145971', NULL, NULL, NULL, NULL, '091-5892444', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(34, 'Bilal Saghir', 'Junior Engineer (Civil)', '0322-4055507', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(35, 'Usama Anwar', 'Junior Engineer (T/L)', '0345-4335275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(36, 'Jawad Munir', 'Junior Engineer (Civil)', '0345-7117100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(37, 'Muhammad Farhan', 'Senior Engineer (Civil)', '0300-5042139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(38, 'Iftikhar ul Haq', 'Senior Engineer (Elect.)', '0322-4699258', NULL, NULL, NULL, NULL, '042-5836580', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(39, 'Talha Fareed Hashmi', 'Junior Engineer (Elect.)', '0334-9949659', NULL, NULL, NULL, NULL, '042-7568101', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(40, 'Nadeem Abbas', 'Junior Engineer (Civil)', '0332-4896553', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(41, 'Muhammad Afzal Sial', 'Overseer (Civil)', '0331-4568070', '0340-5650718', NULL, NULL, NULL, '042-37914710', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(42, 'Yasir Ali', 'Supervisor (Elect.)', '0333-4028257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(43, 'Uzair Afzal', 'Supervisor (Elect.)', '0321-5586466', NULL, NULL, NULL, NULL, '042-35155079', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(44, 'Naveed Ahmad', 'Engineering Expert (S/S)', '0333-4416379', NULL, NULL, NULL, NULL, '042-35188900', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(45, 'Abdul Rashid', 'Engineering Expert (T/L)', '0345-4131807', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(46, 'Afeera Afzal', 'Junior Engineer (Elect.)', '0321-8832233', NULL, NULL, NULL, NULL, '042-35155079', NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(47, 'Asad Ullah Ashraf', 'Junior Engineer (Elect.)', '0334-6855882', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(48, 'Syeda Kokab Khalid', 'Junior Engineer (Elect.)', '0345-4698212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(49, 'Muhammad Rafique Anjum', 'Junior Engineer (Elect.)', '0300-4407237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(50, 'Naveed ur Rehman', 'Junior Engineer (Elect.)', '0333-9336607', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(51, 'Tariq Mehmood', 'Junior Engineer (Civil)', '0302-5110215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(52, 'Sultan Kamran', 'Supervisor (Civil)', '0321-4096476', '0333-4403580', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(53, 'Saghir Ahmad', 'Inspector (Civil)', '0300-4399482', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:19', '2019-09-13 05:11:19'),
(54, 'Akhtar Aziz', 'Engineer Expert (T/L)', '0333-4468311', NULL, NULL, NULL, NULL, '042-35180448', NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(55, 'Muhammad Khaliq', 'Junior Engineer (Elect.)', '0300-5213529', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(56, 'Usman Hamid', 'Junior Engineer (Elect.)', '0300-4090498', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(57, 'Hammad Rashid', 'Junior Engineer (Elect.)', '0342-4171689', NULL, NULL, NULL, NULL, '042-37927141', NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(58, 'Fayyaz Mehmood Karimi', 'Junior Engineer (Elect.)', '0333-4699364', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(59, 'Mehmood Shah', 'Junior Engineer (Elect.)', '0321-3106166', '0300-5713293', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(60, 'Muhammad Kamran', 'Inspector (Elect.)', '0332-2898725', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(61, 'Muhammad Imran', 'Inspector (Elect.)', '0301-3919279', '0333-6402239', NULL, NULL, NULL, '0238-408012', NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(62, 'Naazar Hussain', 'Supervisor (Elect.)', '0322-6084914', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(63, 'Muhammad Nasir', 'Inspector (Civil)', '0332-3551703', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(64, 'Sajjad Qaisar', 'Junior Engineer (Civil)', '0333-4280511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(65, 'Khan Muhammad', 'Project Manager', '0370-4444672', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(66, 'Safder Rashid', 'Construction Manager G/S', '0331-4415728', '0300-8452830', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(67, 'Kamal Haider Toor', 'Senior Engineer (Civil)', '0321-7094554', '0311-6094554', NULL, NULL, NULL, NULL, 'kamalexclusive@hotmail.com', NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(68, 'Abdul Mujeeb Abro', 'Senior Engineer (Civil)', '0333-2711824', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(69, 'Tariq Mahmood ul Hassan', 'Senior Engineer (Civil)', '0345-8535711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(70, 'Muhammad Haneef', 'Construction Supervision Expert  (Civil)', '0300-7317594', '0333-4340612', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(71, 'Abdul Ghafoor Janjua', 'Senior Engineer (Elect.)', '0324-5262290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(72, 'Asad Aman', 'Junior Engineer (Elect.)', '0345-9822291', NULL, NULL, NULL, NULL, '0966-731386', NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(73, 'Muhammad Tahir Ali', 'Junior Engineer (Elect.)', '0345-9187415', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(74, 'M. Junaid Khan', 'Junior Engineer (Elect.)', '0333-9957969', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(75, 'Zeeshan Ahmad', 'Driver', '0343-3142787', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(76, 'Rizwan ', 'Computer Operator', '0321-4123868', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(77, 'Muhammad Nasrullah', 'Overseer (Civil)', '0300-4647111', '0333-0213000', NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Nasrullah C/O TCS Office, Mianwali 0333-4955055\n0300-5679344, 0300-5604524, \n0333-5941624', '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(78, 'Muhammad Imran', 'Inspector (Elect.)', '0345-3723757', '0332-6273101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(79, 'Aqeel Akram', 'Inspector (Elect.)', '0312-4161207', NULL, NULL, NULL, NULL, '042-38535717', NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(80, 'M. Tariq Ameen', 'Surveyor (Civil)', '0301-6668965', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(81, 'Aftab Ahmad Shaikh', 'Construction Manager', '0301-5204144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(82, 'Abdul Hassan', 'Inspector (Civil)', '0333-7977770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(83, 'Sohail Iqbal', 'Inspector (Elect.)', '0300-3115997', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(84, 'Muhamamd Tahir Butt', 'Inspector (Civil)', '0334-9947686', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(85, 'Muhammad Ibrahim', 'Construction Manager', NULL, NULL, NULL, NULL, NULL, '042-35427085', NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(86, 'Abdul Majeed', 'Senior Engineer (Civil)', '0300-4162264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(87, 'Muhammad Ajaz Anwar', 'Junior Engineer (Elect.)', '0333-6615297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(88, 'Balqias Khan', 'Inspector (Civil)', '0345-9764260', '0300-5481116', '0346-8500016', NULL, NULL, '0928-503532', NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(89, 'Muhammad Anwar Jan', 'Construction Manager', '0306-3875768', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(90, 'Asadullah Mirza', 'Junior Engineer (Elect.)', '0333-2604881', NULL, NULL, NULL, NULL, '022-2631863', NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(91, 'Azhar Javaid Butt', 'Inspector (Elect.)', '0300-8702256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(92, 'Saif Ullah', 'Lineman', '0344-5821336', '0333-7739697', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:20', '2019-09-13 05:11:20'),
(93, 'Jawad Hussain Chandio', 'Project Manager', '0321-9299917', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(94, 'Haresh Kumar', 'Senior Engineer (Elect.)', '0333-7544389', NULL, NULL, NULL, NULL, '074-4046593', NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(95, 'Abdul Khalique', 'Senior Engineer (Civil)', '0300-3045912', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(96, 'Bashir Ahmed', 'Senior Engineer (Elect.)', '0321-2068002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(97, 'Bashir Ahmed', 'Inspector (Elect.)', '0344-6375055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(98, 'Attique-ur-Rehman', 'Supervisor (Civil)', '0344-3466227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(99, 'Umar Fiaz', 'Inspector (Elect.)', '0301-4400647', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(100, 'Qamar Ali Asim', 'Junior Engineer (Civil)', '0301-6548588', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(101, 'Nadeem Abbas', 'Lineman', '0334-5464275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(102, 'Ali Ihatasham', 'Supervisor (Elect.)', '0347-6442721', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(103, 'Rafae Munir', 'Junior Engineer (Elect.)', '0333-4557377', NULL, NULL, NULL, NULL, '042-35722369', NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(104, 'Muhammad Azam', 'Junior Engineer (Elect.)', '0333-6797758', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(105, 'Shah Mohammad', 'Team Leader', '0323-4033051', NULL, NULL, NULL, NULL, '042-37833925', NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(106, 'Omer Akram', 'Junior Engineer (Elect.)', '0345-4784015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(107, 'Faraz Ahmed', 'Junior Engineer (Elect.)', '0321-4032955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(108, 'Sheikh Faraz ', 'Accountant ', '0323-4404684', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(109, 'Asher', 'Office Manager Shikarpur', '0345-3855449', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(110, 'Makhdoom Ali', 'Principal Engineer (Civil)', NULL, NULL, NULL, NULL, NULL, '042-35410308', NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(111, 'Bashir Shaheen', 'Principal Engineer (Civil)', NULL, NULL, NULL, NULL, NULL, '042-37840676', NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(112, 'Muhammad Sharif Khan', 'RPM IESCO', '0323-5518281', NULL, NULL, NULL, NULL, '051-4446719', NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(113, 'Sohail Fiaz Qureshi', 'Senior Engineer (Elect.)', '0333-2702223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(114, 'Noor Ahmad Mangal', 'RPM QESCO', '0333-7819750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(115, 'Imran Yousaf', 'Accountant', '0323-4579060', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(116, 'Imtiaz Hussain Qureshi', 'Constrction Supervision Expert Electrical', '0300-6336226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(117, 'Muhammad Irfan', 'Accounts Officer ', '0300-6802476', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(118, 'Muhammad Iqbal Jan', 'RPM GEPCO', '0333-4201001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(119, 'Yaqoob Khalid', 'Accounts Officer ', '0322-4819430', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(120, 'NESPAK House', NULL, NULL, NULL, NULL, '990900000', NULL, NULL, NULL, NULL, 'ext. 415', '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(121, 'Muhammad Ishfaq', 'Lineman', '0300-5068437', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(122, 'Samar Gull', 'Telecom Expert', '0300-4236087', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(123, 'Memood Shah\n', 'Senior Engineer (Elect.)', '0300-5713293', '0331-3642301', NULL, NULL, NULL, NULL, 'pnlmahmoodshah@yahoo.com', 'Tariq Kirana & General Store\nBai Jee Chowk, Panu Aakil, District Sukkur', NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(124, 'Abdul Samad', 'Junior Engineer', '0336-8154468', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(125, 'Dr. Fayyaz Akram', 'Power Tek', '0312-7664199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(126, 'Tahir ', 'NESPAK Engineer Neelum-Jhelum', '0321-4282328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(127, 'Umer Hayat', 'NESPAK Senior Expert', '0334-5146757', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(128, 'Khalid ', 'Graphic Printers', '0333-43518 99', NULL, NULL, NULL, NULL, '042-36290390', NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(129, 'Manzoor', 'EOBI', '0332-4243658', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EOBI Case Mr. Tariq Khan S/O Sultan Khan Driver', '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(130, 'A.  Ali Ch.', 'EOBI', '0321-4014251', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(131, 'Ch. Khalil', 'Accounts Officer ', '0333-4552837', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:21', '2019-09-13 05:11:21'),
(132, 'Haseeb ', 'Senior Engineer ACE', '0300-9790888', NULL, NULL, NULL, NULL, NULL, 'Haseebkhan1984@hotmail.com', NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(133, 'Hammad ', 'Printer / Refilling', '0322-8488612', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(134, 'Asif Bajwa ', 'Photocopy Machine', '0300-4222179', NULL, NULL, NULL, NULL, '042-36376140', NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(135, 'Khalid Abbas', 'Civil Engineer', '0308-8040020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(136, 'Akram Photocopy Machine', NULL, '0345-4316693', '0305-4346821', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(137, 'Adeel Ahmad', 'Accountant', '0321-6876711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(138, 'CASA 1000 Mobile No.', NULL, '00777-15029992', NULL, NULL, NULL, NULL, NULL, 'secretariat@casa-1000.org', NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(139, 'Tasawar ', 'Rent a Car', '0301-4211531', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(140, 'Tahir Mahmood ', 'IESCO Computer Operator', '0313-5351417', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(141, 'Rasheed Ahmad', 'Ex. PD Islamabad NTDC', '0335-7401512', NULL, NULL, NULL, NULL, NULL, NULL, '\nHouse. No.201, Block-B, \nNESPAK Colony, Phase-III, Defence Road, Lahore', NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(142, 'Safdar', 'Lineman NTC', '0346-7727107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(143, 'NTC DSL Activitation', NULL, NULL, NULL, NULL, '042-99203545', NULL, NULL, NULL, NULL, '042-99205505', '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(144, 'NTC DSL Issues', NULL, NULL, NULL, NULL, '042-99203545', NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(145, 'NTC DSL Complain', NULL, '99203542-44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(146, 'NTC Revenue & Billing', NULL, NULL, NULL, NULL, '042-99202323', NULL, NULL, NULL, NULL, '042-99205566\n042-99203700', '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(147, 'DE Phones NTC ', 'NTC DSL Upgradation', NULL, NULL, NULL, '042-99203536', '042-99203535', NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(148, 'Chief Engineer (EHV-II) Hyderabad', 'Office ', NULL, NULL, NULL, '022-9250123', NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(149, 'Zahoor Ahmad ', 'Driver EHV-II', '0345-3593483', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(150, 'Survey of Pakistan ', 'For Firm Registration', NULL, NULL, NULL, '051-9290210', NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(151, 'Ahsan Nazir', 'Junior Engineer (Electrical)', '0315-4101400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Son of Nazir Ahmad PS CE BARQAAB', '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(152, 'Muhammad Jamil', 'Utility Person BARQAAB', '0300-4082558', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(153, 'Hafeez Minhas', 'Accountant BARQAAB', '0301-4222157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(154, 'Farhan Nadeem', 'Junior Engineer Electrical', '0323-4185883', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(155, 'PTCL Connection Close', NULL, NULL, NULL, NULL, '042-35710085', NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(156, 'Muhammad Tanvir', 'NDC Secretary Ejaz Sb.', NULL, NULL, NULL, '042-38100332', NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(157, 'Atif', 'Malik Computers', '0333-4433466', NULL, NULL, '042-32200606', NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(158, 'Juniad Khalil', 'Accountant', '0331-9610822', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(159, 'Shehyar', 'SDO CDA', '0333-5526017', NULL, NULL, NULL, NULL, NULL, 'engr.sheri_93@yahoo.com', NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(160, 'Muhammad Salim', 'DRPM Lesco', '0333-4422571', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(161, 'Qasim bin Nasir', 'Junior Engineer (Electrical)', '0321-4040896', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(162, 'Muhammad Ilyas', 'Civil Expert', '0320-3467891', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(163, 'Zohaib Hassan Mehar', 'Junior Engineer (Civil)', '0332-2946886', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(164, 'Mr. Nadeem ', 'Harbin Chaina', '0333-5317888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(165, 'Waheed Murad', 'Airline Booking', '0333-4227453', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(166, 'Emanuial Bhatti  A.P.S.', 'WAPDA Composite Schedule Rate', '0302-4230954', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(167, 'Yishing Wang Bhikki', 'Harbin Chaina', '0310-7296888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(168, 'Muhammad Ilyas ', 'Driver, BARQAAB', '0322-4639053', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(169, 'Azhar Abbas', 'Kashif Aslam & Associates', '0335-4514171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(170, 'Muhammad Asim', 'Junior Engineer', '0322-4830065', NULL, NULL, NULL, NULL, NULL, 'muhammadasim556@gmail.com', NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(171, 'Jawad Akbar', 'Computer Operator Mardan Office', '0344-4475276', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:22', '2019-09-13 05:11:22'),
(172, 'Abdullah Jaura', 'Project Manager OurSons (Pvt.)', '0321-4712048', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(173, 'Naeem', 'WAPDA House Liberary', '0333-4542245', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(174, 'Hamza Ovais', 'OMS', '0334-3353990', NULL, NULL, NULL, NULL, NULL, 'hamza.ovais@omsltd.net', NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(175, 'Muhammad Ilyas', 'Project Manager NESPAK', '0321-4469746', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(176, 'Asif Printing ', 'Printing Presss', '0301-4256425', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(177, 'Muhammad Shakill', 'Asif Printer Designer', '0300-8871221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(178, 'Pohoo Sootahar', 'Construction Manager HUBCO-Jamshoro', '0333-2751410', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(179, 'Akhtar', 'PTCL Lineman for PTCL No. 36370398', '0333-4295118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(180, 'Muhammad Nawaz', 'Chief Engineer BARQAAB', '0307-4173367', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(181, 'Inayatullah', 'PD GMHPP', '0345-5107268', '0300-9085807', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(182, 'KAKAPOTO', 'RPM SEPCO', '0300-2638981', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(183, 'Abdul Samad Abbasi', 'Junior Engineer (IT)', '0315-4701272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(184, 'PD FESCO', 'Telephone', NULL, NULL, NULL, '041-2642752-51', '041-9230071', NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(185, 'Asif SB OMS IT', 'IT Expert', '0334-4244397', NULL, NULL, '042-35748660', NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(186, 'Rustam Ali', 'Inspector Electrical', '0306-4477971', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(187, 'Sujat Galanai', 'Standard Chartered Bank', '0321-4057368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(188, 'Saad', 'Retional Manager SC', '0321-5557477', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(189, 'Hyderabad HVDC Office', NULL, '022-2117531', NULL, NULL, NULL, NULL, NULL, NULL, 'BARQAAB Consulting Services (Pvt.) Ltd.\nBungalow No.C-07, Samanabad, Qasimabad, HYDERABAD', NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(190, 'Shahyar Amjad ', 'Junior Engineer Electrical Neelum-Jhelum', '0345-9870059', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(191, 'Arsal Sajjad', 'Junior Engineer Civil Neelum-Jhelum', '0304-0361995', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(192, 'Mr. Ibrar', 'Universal Fire Protection ', '0321-9700008', NULL, NULL, '042-37429773', NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(193, 'Abdul Rehman', 'Unitied Insurance', '0303-7179588', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(194, 'Amer Rauf', 'MD OMS', '0302-8486250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(195, 'Hafiz Muhammad Umer Hayat', 'Junior Engineer (Electrical)', '0305-6048048', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(196, 'Moeez ul Huda ', 'Manager Finance EnMasse', '0323-4038115', NULL, NULL, '042-35314702', NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(197, 'Muhammad Asif', 'VU Student', '0300-4824808', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(198, 'Kamal Hussain', 'RM Business Clinet SC Bank', '0300-4253027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3520113557767\'', '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(199, 'Shahid Mahmood', 'Nigeria Project', '0321-6767303', NULL, NULL, NULL, NULL, NULL, 'smahmood6565@gmail.com', NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(200, 'Khalid Javed Farukh', 'Senior Accounts ', '0304-8144234', '0323-8416175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(201, 'Naveed Anjum', 'Distribution Expert for MEPCO', '0300-9686688', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(202, 'Naeem Basit', 'Toshiba - General Traders', '0300-4571194', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(203, 'Hafiz Usman', 'Electrician BARQAAB', '0333-4897026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(204, 'Abdul Majid Rafi', 'Accounts Officer ', '0333-4216022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(205, 'Habib ullah Sheikh', 'T& G Expert', '0300-0863078', NULL, NULL, NULL, NULL, NULL, 'habish786@gmail.com', NULL, NULL, '2019-09-13 05:11:23', '2019-09-13 05:11:23'),
(207, 'Umer Saleem', 'Junior Engineer Electrical', '0331-6379595', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:24', '2019-09-13 05:11:24'),
(208, 'Muhammad Akram Arian', 'Accountant HESCO', '0344-3545417', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-13 05:11:24', '2019-09-13 05:11:24'),
(209, 'Muhammad Ismail', 'Junior Engineer (Electrical', '0321-4074780', '0331-6662050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-23 08:02:01', '2019-09-23 08:02:01'),
(210, 'Muhammad Ismail', 'Junior Engineer (Electrical', '0321-4074780', '0331-6668050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-23 08:02:52', '2019-09-23 08:02:52'),
(212, 'Hussnain Bhatti', 'DASU Engineer', '0304-3344117', '0336-4017732', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-23 09:25:06', '2019-09-23 09:25:06'),
(213, 'Fida Hussain', 'OMS Project Coordinator', '0302-8480766', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-02 11:22:32', '2019-10-02 11:22:32'),
(214, 'Ahmed K. Mirza', 'Engineering Geologist, AKM Geotechnical', '0333-8006746', '042-3781337', NULL, NULL, NULL, NULL, 'ahmed@akmcorp.net', '39-Chenab Block, Allama Iqbal Town, Lahore', NULL, '2019-10-03 07:49:31', '2019-10-03 07:49:31'),
(215, 'Faisal', 'NESPAK STG Department', '03008478188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-04 09:45:41', '2019-10-04 09:45:41'),
(216, 'Nadeem Baig', 'Utility Person', '0324-4350289', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-04 10:31:31', '2019-10-04 10:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`) VALUES
(1, 'Pakistan', 'PK'),
(2, 'United States', 'US'),
(3, 'Canada', 'CA'),
(4, 'Afghanistan', 'AF'),
(5, 'Albania', 'AL'),
(6, 'Algeria', 'DZ'),
(7, 'American Samoa', 'AS'),
(8, 'Andorra', 'AD'),
(9, 'Angola', 'AO'),
(10, 'Anguilla', 'AI'),
(11, 'Antarctica', 'AQ'),
(12, 'Antigua and/or Barbuda', 'AG'),
(13, 'Argentina', 'AR'),
(14, 'Armenia', 'AM'),
(15, 'Aruba', 'AW'),
(16, 'Australia', 'AU'),
(17, 'Austria', 'AT'),
(18, 'Azerbaijan', 'AZ'),
(19, 'Bahamas', 'BS'),
(20, 'Bahrain', 'BH'),
(21, 'Bangladesh', 'BD'),
(22, 'Barbados', 'BB'),
(23, 'Belarus', 'BY'),
(24, 'Belgium', 'BE'),
(25, 'Belize', 'BZ'),
(26, 'Benin', 'BJ'),
(27, 'Bermuda', 'BM'),
(28, 'Bhutan', 'BT'),
(29, 'Bolivia', 'BO'),
(30, 'Bosnia and Herzegovina', 'BA'),
(31, 'Botswana', 'BW'),
(32, 'Bouvet Island', 'BV'),
(33, 'Brazil', 'BR'),
(34, 'British lndian Ocean Territory', 'IO'),
(35, 'Brunei Darussalam', 'BN'),
(36, 'Bulgaria', 'BG'),
(37, 'Burkina Faso', 'BF'),
(38, 'Burundi', 'BI'),
(39, 'Cambodia', 'KH'),
(40, 'Cameroon', 'CM'),
(41, 'Cape Verde', 'CV'),
(42, 'Cayman Islands', 'KY'),
(43, 'Central African Republic', 'CF'),
(44, 'Chad', 'TD'),
(45, 'Chile', 'CL'),
(46, 'China', 'CN'),
(47, 'Christmas Island', 'CX'),
(48, 'Cocos (Keeling) Islands', 'CC'),
(49, 'Colombia', 'CO'),
(50, 'Comoros', 'KM'),
(51, 'Congo', 'CG'),
(52, 'Cook Islands', 'CK'),
(53, 'Costa Rica', 'CR'),
(54, 'Croatia (Hrvatska)', 'HR'),
(55, 'Cuba', 'CU'),
(56, 'Cyprus', 'CY'),
(57, 'Czech Republic', 'CZ'),
(58, 'Democratic Republic of Congo', 'CD'),
(59, 'Denmark', 'DK'),
(60, 'Djibouti', 'DJ'),
(61, 'Dominica', 'DM'),
(62, 'Dominican Republic', 'DO'),
(63, 'East Timor', 'TP'),
(64, 'Ecudaor', 'EC'),
(65, 'Egypt', 'EG'),
(66, 'El Salvador', 'SV'),
(67, 'Equatorial Guinea', 'GQ'),
(68, 'Eritrea', 'ER'),
(69, 'Estonia', 'EE'),
(70, 'Ethiopia', 'ET'),
(71, 'Falkland Islands (Malvinas)', 'FK'),
(72, 'Faroe Islands', 'FO'),
(73, 'Fiji', 'FJ'),
(74, 'Finland', 'FI'),
(75, 'France', 'FR'),
(76, 'France, Metropolitan', 'FX'),
(77, 'French Guiana', 'GF'),
(78, 'French Polynesia', 'PF'),
(79, 'French Southern Territories', 'TF'),
(80, 'Gabon', 'GA'),
(81, 'Gambia', 'GM'),
(82, 'Georgia', 'GE'),
(83, 'Germany', 'DE'),
(84, 'Ghana', 'GH'),
(85, 'Gibraltar', 'GI'),
(86, 'Greece', 'GR'),
(87, 'Greenland', 'GL'),
(88, 'Grenada', 'GD'),
(89, 'Guadeloupe', 'GP'),
(90, 'Guam', 'GU'),
(91, 'Guatemala', 'GT'),
(92, 'Guinea', 'GN'),
(93, 'Guinea-Bissau', 'GW'),
(94, 'Guyana', 'GY'),
(95, 'Haiti', 'HT'),
(96, 'Heard and Mc Donald Islands', 'HM'),
(97, 'Honduras', 'HN'),
(98, 'Hong Kong', 'HK'),
(99, 'Hungary', 'HU'),
(100, 'Iceland', 'IS'),
(101, 'India', 'IN'),
(102, 'Indonesia', 'ID'),
(103, 'Iran (Islamic Republic of)', 'IR'),
(104, 'Iraq', 'IQ'),
(105, 'Ireland', 'IE'),
(106, 'Israel', 'IL'),
(107, 'Italy', 'IT'),
(108, 'Ivory Coast', 'CI'),
(109, 'Jamaica', 'JM'),
(110, 'Japan', 'JP'),
(111, 'Jordan', 'JO'),
(112, 'Kazakhstan', 'KZ'),
(113, 'Kenya', 'KE'),
(114, 'Kiribati', 'KI'),
(115, 'Korea, Democratic People\'s Republic of', 'KP'),
(116, 'Korea, Republic of', 'KR'),
(117, 'Kuwait', 'KW'),
(118, 'Kyrgyzstan', 'KG'),
(119, 'Lao People\'s Democratic Republic', 'LA'),
(120, 'Latvia', 'LV'),
(121, 'Lebanon', 'LB'),
(122, 'Lesotho', 'LS'),
(123, 'Liberia', 'LR'),
(124, 'Libyan Arab Jamahiriya', 'LY'),
(125, 'Liechtenstein', 'LI'),
(126, 'Lithuania', 'LT'),
(127, 'Luxembourg', 'LU'),
(128, 'Macau', 'MO'),
(129, 'Macedonia', 'MK'),
(130, 'Madagascar', 'MG'),
(131, 'Malawi', 'MW'),
(132, 'Malaysia', 'MY'),
(133, 'Maldives', 'MV'),
(134, 'Mali', 'ML'),
(135, 'Malta', 'MT'),
(136, 'Marshall Islands', 'MH'),
(137, 'Martinique', 'MQ'),
(138, 'Mauritania', 'MR'),
(139, 'Mauritius', 'MU'),
(140, 'Mayotte', 'TY'),
(141, 'Mexico', 'MX'),
(142, 'Micronesia, Federated States of', 'FM'),
(143, 'Moldova, Republic of', 'MD'),
(144, 'Monaco', 'MC'),
(145, 'Mongolia', 'MN'),
(146, 'Montserrat', 'MS'),
(147, 'Morocco', 'MA'),
(148, 'Mozambique', 'MZ'),
(149, 'Myanmar', 'MM'),
(150, 'Namibia', 'NA'),
(151, 'Nauru', 'NR'),
(152, 'Nepal', 'NP'),
(153, 'Netherlands', 'NL'),
(154, 'Netherlands Antilles', 'AN'),
(155, 'New Caledonia', 'NC'),
(156, 'New Zealand', 'NZ'),
(157, 'Nicaragua', 'NI'),
(158, 'Niger', 'NE'),
(159, 'Nigeria', 'NG'),
(160, 'Niue', 'NU'),
(161, 'Norfork Island', 'NF'),
(162, 'Northern Mariana Islands', 'MP'),
(163, 'Norway', 'NO'),
(164, 'Oman', 'OM'),
(165, 'Palau', 'PW'),
(166, 'Panama', 'PA'),
(167, 'Papua New Guinea', 'PG'),
(168, 'Paraguay', 'PY'),
(169, 'Peru', 'PE'),
(170, 'Philippines', 'PH'),
(171, 'Pitcairn', 'PN'),
(172, 'Poland', 'PL'),
(173, 'Portugal', 'PT'),
(174, 'Puerto Rico', 'PR'),
(175, 'Qatar', 'QA'),
(176, 'Republic of South Sudan', 'SS'),
(177, 'Reunion', 'RE'),
(178, 'Romania', 'RO'),
(179, 'Russian Federation', 'RU'),
(180, 'Rwanda', 'RW'),
(181, 'Saint Kitts and Nevis', 'KN'),
(182, 'Saint Lucia', 'LC'),
(183, 'Saint Vincent and the Grenadines', 'VC'),
(184, 'Samoa', 'WS'),
(185, 'San Marino', 'SM'),
(186, 'Sao Tome and Principe', 'ST'),
(187, 'Saudi Arabia', 'SA'),
(188, 'Senegal', 'SN'),
(189, 'Serbia', 'RS'),
(190, 'Seychelles', 'SC'),
(191, 'Sierra Leone', 'SL'),
(192, 'Singapore', 'SG'),
(193, 'Slovakia', 'SK'),
(194, 'Slovenia', 'SI'),
(195, 'Solomon Islands', 'SB'),
(196, 'Somalia', 'SO'),
(197, 'South Africa', 'ZA'),
(198, 'South Georgia South Sandwich Islands', 'GS'),
(199, 'Spain', 'ES'),
(200, 'Sri Lanka', 'LK'),
(201, 'St. Helena', 'SH'),
(202, 'St. Pierre and Miquelon', 'PM'),
(203, 'Sudan', 'SD'),
(204, 'Suriname', 'SR'),
(205, 'Svalbarn and Jan Mayen Islands', 'SJ'),
(206, 'Swaziland', 'SZ'),
(207, 'Sweden', 'SE'),
(208, 'Switzerland', 'CH'),
(209, 'Syrian Arab Republic', 'SY'),
(210, 'Taiwan', 'TW'),
(211, 'Tajikistan', 'TJ'),
(212, 'Tanzania, United Republic of', 'TZ'),
(213, 'Thailand', 'TH'),
(214, 'Togo', 'TG'),
(215, 'Tokelau', 'TK'),
(216, 'Tonga', 'TO'),
(217, 'Trinidad and Tobago', 'TT'),
(218, 'Tunisia', 'TN'),
(219, 'Turkey', 'TR'),
(220, 'Turkmenistan', 'TM'),
(221, 'Turks and Caicos Islands', 'TC'),
(222, 'Tuvalu', 'TV'),
(223, 'Uganda', 'UG'),
(224, 'Ukraine', 'UA'),
(225, 'United Arab Emirates', 'AE'),
(226, 'United Kingdom', 'GB'),
(227, 'United States minor outlying islands', 'UM'),
(228, 'Uruguay', 'UY'),
(229, 'Uzbekistan', 'UZ'),
(230, 'Vanuatu', 'VU'),
(231, 'Vatican City State', 'VA'),
(232, 'Venezuela', 'VE'),
(233, 'Vietnam', 'VN'),
(234, 'Virgin Islands (British)', 'VG'),
(235, 'Virgin Islands (U.S.)', 'VI'),
(236, 'Wallis and Futuna Islands', 'WF'),
(237, 'Western Sahara', 'EH'),
(238, 'Yemen', 'YE'),
(239, 'Yugoslavia', 'YU'),
(240, 'Zaire', 'ZR'),
(241, 'Zambia', 'ZM'),
(242, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `dependents`
--

CREATE TABLE `dependents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `relation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dependents`
--

INSERT INTO `dependents` (`id`, `employee_id`, `name`, `date_of_birth`, `relation`, `gender_id`, `created_at`, `updated_at`) VALUES
(1, 13, 'Mrs Taufeeq', NULL, 'Wife', 2, '2019-08-27 23:27:53', '2019-08-27 23:27:53'),
(2, 13, 'Amber Taufeeq', NULL, 'Daughter', 2, '2019-08-27 23:28:21', '2019-08-27 23:28:21'),
(3, 13, 'Ahmad Taufeeq', NULL, 'Son', 1, '2019-08-27 23:28:37', '2019-08-27 23:28:37'),
(4, 13, 'Itrat Taufeeq', NULL, 'Daughter', 2, '2019-08-27 23:29:05', '2019-08-27 23:29:05'),
(6, 1, 'Muhammad Afzal', NULL, 'Father', 1, '2019-09-18 08:44:58', '2019-09-18 08:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Chief Executive', 1, NULL, NULL),
(2, 'General Manager (W&C)', 1, NULL, NULL),
(3, 'General Manager (Power)', 1, NULL, NULL),
(4, 'Chief Engineer', 2, NULL, NULL),
(5, 'Chief Contract Engineer', 2, NULL, NULL),
(6, 'Project Manager', 2, NULL, NULL),
(7, 'Manager Finance', 3, NULL, NULL),
(8, 'Principal Engineer', 3, NULL, NULL),
(9, 'Principal Engineer (Electrical)', 3, NULL, NULL),
(10, 'Principal Engineer (Civil)', 3, NULL, NULL),
(11, 'Deputy Manager Finance', 4, NULL, NULL),
(12, 'Deputy Manager HR&A', 4, NULL, NULL),
(13, 'Senior Engineer', 6, NULL, NULL),
(14, 'Senior Engineer (Electrical)', 6, NULL, NULL),
(15, 'Senior Engineer (Civil)', 6, NULL, NULL),
(16, 'Junior Engineer', 9, NULL, NULL),
(17, 'Junior Engineer (Electrical)', 9, NULL, NULL),
(18, 'Junior Engineer (Civil)', 9, NULL, NULL),
(19, 'Senior Accounts Officer', 9, NULL, NULL),
(20, 'Accounts Officer', 9, NULL, NULL),
(21, 'Senior Accountant', 10, NULL, NULL),
(22, 'Audit Officer', 10, NULL, NULL),
(23, 'IT Coordinator', 10, NULL, NULL),
(24, 'Computer Processing Officer', 10, NULL, NULL),
(25, 'Office Supervisor', 10, NULL, NULL),
(26, 'Assistant Accounts Officer', 11, NULL, NULL),
(27, 'PS to Chief Executive', 11, NULL, NULL),
(28, 'Computer Operator', 11, NULL, NULL),
(29, 'AutoCAD Operator', 11, NULL, NULL),
(30, 'Accounts Assistant', 12, NULL, NULL),
(31, 'Accounts Clerk', 12, NULL, NULL),
(32, 'Junior Clerk', 12, NULL, NULL),
(33, 'Caretaker', 13, NULL, NULL),
(34, 'Driver', 13, NULL, NULL),
(35, 'Utility Person', 14, NULL, NULL),
(36, 'Security Guard', 14, NULL, NULL),
(37, 'Accountant', 11, '2019-09-25 06:33:52', '2019-09-25 06:33:52'),
(38, 'Assistant Manager Finance', 5, '2019-10-02 03:34:42', '2019-10-02 03:34:42'),
(39, 'Assistant Secretary', 11, '2019-10-03 04:36:51', '2019-10-03 04:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Power', NULL, NULL),
(2, 'Water', NULL, NULL),
(3, 'Finance', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `document_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `employee_id`, `document_name`, `file_name`, `file_path`, `type`, `reference_no`, `date`, `created_at`, `updated_at`) VALUES
(3, 4, 'HR Form', '1565334419-4-HR Form.pdf', 'documents/4_Ahmad_Khan_Bhatti/', 'application/pdf', NULL, NULL, '2019-08-09 13:06:59', '2019-08-09 13:06:59'),
(4, 4, 'Handing Over Charge of Chief Executive', '1565334637-4-Handing Over Change of Chief Executive.pdf', 'documents/4_Ahmad_Khan_Bhatti/', 'application/pdf', NULL, NULL, '2019-08-09 13:10:37', '2019-08-09 13:12:26'),
(5, 4, 'Notification for New Chief Executive', '1565334892-4-Notification for New Chief Executive.pdf', 'documents/4_Ahmad_Khan_Bhatti/', 'application/pdf', NULL, '2013-10-22', '2019-08-09 13:14:52', '2019-08-09 13:14:52'),
(6, 4, 'Secretary  Office Order for Appointment of New Chief Executive', '1565335162-4-Secretary  Office Order for Appointment of New Chief Executive.pdf', 'documents/4_Ahmad_Khan_Bhatti/', 'application/pdf', NULL, '2013-10-13', '2019-08-09 13:19:22', '2019-08-09 13:19:22'),
(7, 4, 'Notification for Chief Executive September 2013', '1565335376-4-Notification for Chief Executive September 2013.pdf', 'documents/4_Ahmad_Khan_Bhatti/', 'application/pdf', NULL, '2013-09-18', '2019-08-09 13:22:56', '2019-08-09 13:22:56'),
(8, 4, 'Office Order for Chief Executive Vehicle', '1565339187-4-Office Order for Chief Executive Vehicle.pdf', 'documents/4_Ahmad_Khan_Bhatti/', 'application/pdf', NULL, '2013-09-13', '2019-08-09 14:26:27', '2019-08-09 14:26:27'),
(10, 5, 'CNIC Front', '1565940210-5-CNIC Front.jpg', 'documents/5_Saqib__Javiad/', 'image/jpeg', NULL, NULL, '2019-08-16 13:23:30', '2019-08-16 13:23:30'),
(11, 5, 'CNIC Back', '1565941101-5-CNIC Back.jpg', 'documents/5_Saqib__Javiad/', 'image/jpeg', NULL, NULL, '2019-08-16 13:38:21', '2019-08-16 13:38:21'),
(12, 5, 'Joining Report', '1565941215-5-Joining Report.pdf', 'documents/5_Saqib__Javiad/', 'application/pdf', NULL, NULL, '2019-08-16 13:40:15', '2019-08-16 13:40:15'),
(13, 5, 'CV', '1565941422-5-CV.pdf', 'documents/5_Saqib__Javiad/', 'application/pdf', NULL, NULL, '2019-08-16 13:43:42', '2019-08-16 13:43:42'),
(14, 5, 'B.Com Degree', '1565943899-5-B.Com Degree.pdf', 'documents/5_Saqib__Javiad/', 'application/pdf', NULL, NULL, '2019-08-16 14:25:00', '2019-08-16 14:25:00'),
(15, 5, 'Appointment Letter Acceptance', '1565944004-5-Appointment Letter Acceptance.pdf', 'documents/5_Saqib__Javiad/', 'application/pdf', NULL, NULL, '2019-08-16 14:26:44', '2019-08-16 14:26:44'),
(16, 5, 'ACCA Compliation Certificate', '1565944044-5-ACCA Compliation Certificate.pdf', 'documents/5_Saqib__Javiad/', 'application/pdf', NULL, NULL, '2019-08-16 14:27:24', '2019-08-16 14:27:24'),
(17, 5, 'Request for Extenion', '1565944159-5-Request for Extenion.pdf', 'documents/5_Saqib__Javiad/', 'application/pdf', NULL, NULL, '2019-08-16 14:29:19', '2019-08-16 14:29:19'),
(18, 5, 'F.Sc Result', '1565944282-5-F.Sc Result.pdf', 'documents/5_Saqib__Javiad/', 'application/pdf', NULL, NULL, '2019-08-16 14:31:22', '2019-08-16 14:31:22'),
(19, 5, 'Matric Result', '1565944377-5-Matric Result.pdf', 'documents/5_Saqib__Javiad/', 'application/pdf', NULL, NULL, '2019-08-16 14:32:57', '2019-08-16 14:32:57'),
(20, 5, 'Office Order for Extension in Service in Cat-A Grade-3', '1565944468-5-Office Order to Extenion in Service in CAT-A Grade-3.pdf', 'documents/5_Saqib__Javiad/', 'application/pdf', NULL, NULL, '2019-08-16 14:34:28', '2019-08-16 14:35:29'),
(21, 5, 'Completion Certificate of Training', '1565945057-5-Completion Certificate of Training.pdf', 'documents/5_Saqib__Javiad/', 'application/pdf', NULL, NULL, '2019-08-16 14:44:17', '2019-08-16 14:44:17'),
(22, 6, 'CNIC Front', '1566270372-6-CNIC Front.jpg', 'documents/6_Muhammad__Zafar/', 'image/jpeg', NULL, NULL, '2019-08-20 09:06:12', '2019-08-20 09:06:12'),
(23, 6, 'CNIC Back', '1566270393-6-CNIC Back.jpg', 'documents/6_Muhammad__Zafar/', 'image/jpeg', NULL, NULL, '2019-08-20 09:06:33', '2019-08-20 09:06:33'),
(24, 6, 'Office Order for Cat-A after Completion of 9 Months', '1566271601-6-Office Order for Cat-A after Completion of 9 Months.pdf', 'documents/6_Muhammad__Zafar/', 'application/pdf', NULL, '2018-03-26', '2019-08-20 09:26:41', '2019-08-20 09:26:41'),
(25, 6, 'Office Order for Grade-1 with two increments', '1566271687-6-Office Order for Grade-1 with two increments.pdf', 'documents/6_Muhammad__Zafar/', 'application/pdf', NULL, '2018-10-11', '2019-08-20 09:28:07', '2019-08-20 09:28:07'),
(26, 6, 'Appointment Letter', '1566271863-6-Appointment Letter.pdf', 'documents/6_Muhammad__Zafar/', 'application/pdf', NULL, '2017-05-02', '2019-08-20 09:31:03', '2019-08-20 09:31:03'),
(27, 6, 'HR Form', '1566271958-6-HR Form.pdf', 'documents/6_Muhammad__Zafar/', 'application/pdf', NULL, NULL, '2019-08-20 09:32:38', '2019-08-20 09:32:38'),
(28, 6, 'Joining Report', '1566272239-6-Joining Report.pdf', 'documents/6_Muhammad__Zafar/', 'application/pdf', NULL, '2017-05-09', '2019-08-20 09:37:19', '2019-08-20 09:37:19'),
(29, 6, 'B.Sc. Electrical Engineering Degree', '1566272378-6-B.Sc. Electrical Engineering Degree.pdf', 'documents/6_Muhammad__Zafar/', 'application/pdf', NULL, NULL, '2019-08-20 09:39:38', '2019-08-20 09:39:38'),
(30, 6, 'M.Sc Electrical Engineering Degree', '1566272421-6-M.Sc Electrical Engineering Degree.pdf', 'documents/6_Muhammad__Zafar/', 'application/pdf', NULL, NULL, '2019-08-20 09:40:21', '2019-08-20 09:40:21'),
(31, 6, 'Oracle Certification', '1566273340-6-Oracle Certification.pdf', 'documents/6_Muhammad__Zafar/', 'application/pdf', NULL, NULL, '2019-08-20 09:55:40', '2019-08-20 09:55:40'),
(32, 6, 'NTDC Appreciation Letter', '1566273370-6-NTDC Appreciation Letter.pdf', 'documents/6_Muhammad__Zafar/', 'application/pdf', NULL, NULL, '2019-08-20 09:56:10', '2019-08-20 09:56:10'),
(33, 6, 'Training Certificates', '1566273426-6-Training Certificates.pdf', 'documents/6_Muhammad__Zafar/', 'application/pdf', NULL, NULL, '2019-08-20 09:57:06', '2019-08-20 09:57:06'),
(34, 6, 'Pay Fixation for Grade-1 with two increments', '1566274100-6-Pay Fixation for Grade-1 with two increments.pdf', 'documents/6_Muhammad__Zafar/', 'application/pdf', NULL, NULL, '2019-08-20 10:08:20', '2019-08-20 10:08:20'),
(35, 7, 'Office Order for Extension in Service', '1566359488-7-Office Order for Extension in Service.pdf', 'documents/7_Mumtaz__Akhtar/', 'application/pdf', NULL, '2018-09-26', '2019-08-21 09:51:28', '2019-08-21 09:51:28'),
(36, 7, 'CNIC Front', '1566359518-7-CNIC Front.jpg', 'documents/7_Mumtaz__Akhtar/', 'image/jpeg', NULL, NULL, '2019-08-21 09:51:58', '2019-08-21 09:51:58'),
(37, 7, 'CNIC Back', '1566359537-7-CNIC Back.jpg', 'documents/7_Mumtaz__Akhtar/', 'image/jpeg', NULL, NULL, '2019-08-21 09:52:17', '2019-08-21 09:52:17'),
(38, 7, 'Appointment Letter', '1566360493-7-Appointment Letter.pdf', 'documents/7_Mumtaz__Akhtar/', 'application/pdf', NULL, '2000-08-12', '2019-08-21 10:08:13', '2019-08-21 10:08:13'),
(39, 7, 'Office Order for Grade-1', '1566470912-7-Office Order for Grade-1.pdf', 'documents/7_Mumtaz__Akhtar/', 'application/pdf', NULL, '2001-08-31', '2019-08-22 05:48:33', '2019-08-22 05:48:33'),
(40, 7, 'Officer from GM(CC&A) to GM(W&C)', '1566471553-7-Officer from GM(CC&A) to GM(W&C).pdf', 'documents/7_Mumtaz__Akhtar/', 'application/pdf', NULL, '2009-04-01', '2019-08-22 05:59:14', '2019-08-22 05:59:14'),
(41, 8, 'CNIC Front', '1566472237-8-CNIC Front.jpg', 'documents/8_Naveed_Akhtar_Nawaz/', 'image/jpeg', NULL, NULL, '2019-08-22 06:10:37', '2019-08-22 06:10:37'),
(42, 8, 'CNIC Back', '1566472326-8-CNIC Back.jpg', 'documents/8_Naveed_Akhtar_Nawaz/', 'image/jpeg', NULL, NULL, '2019-08-22 06:12:06', '2019-08-22 06:12:06'),
(43, 8, 'Appointment Letter', '1566472432-8-Appointment Letter.pdf', 'documents/8_Naveed_Akhtar_Nawaz/', 'application/pdf', NULL, '2005-05-12', '2019-08-22 06:13:52', '2019-08-22 06:13:52'),
(44, 8, 'Matric Degree', '1566472471-8-Matric Degree.pdf', 'documents/8_Naveed_Akhtar_Nawaz/', 'application/pdf', NULL, NULL, '2019-08-22 06:14:31', '2019-08-22 06:14:31'),
(45, 8, 'F.Sc Degree', '1566472488-8-F.Sc Degree.pdf', 'documents/8_Naveed_Akhtar_Nawaz/', 'application/pdf', NULL, NULL, '2019-08-22 06:14:48', '2019-08-22 06:14:48'),
(46, 8, 'HR Form', '1566472521-8-HR Form.pdf', 'documents/8_Naveed_Akhtar_Nawaz/', 'application/pdf', NULL, NULL, '2019-08-22 06:15:21', '2019-08-22 06:15:21'),
(47, 8, 'Office Order for Senior Engineer', '1566472730-8-Office Order for Senior Engineer.pdf', 'documents/8_Naveed_Akhtar_Nawaz/', 'application/pdf', NULL, '2008-01-08', '2019-08-22 06:18:51', '2019-08-22 06:18:51'),
(48, 8, 'Office Order for Grade-8', '1566472796-8-Office Order for Grade-8.pdf', 'documents/8_Naveed_Akhtar_Nawaz/', 'application/pdf', NULL, '2006-12-27', '2019-08-22 06:19:56', '2019-08-22 06:19:56'),
(49, 8, 'Office Order to Grade-6', '1566472854-8-Office Order to Grade-6.pdf', 'documents/8_Naveed_Akhtar_Nawaz/', 'application/pdf', NULL, '2016-06-09', '2019-08-22 06:20:54', '2019-08-22 06:20:54'),
(50, 9, 'HR Form', '1566473877-9-HR Form.pdf', 'documents/9_Rana_Haider_Faruq/', 'application/pdf', NULL, NULL, '2019-08-22 06:37:57', '2019-08-22 06:37:57'),
(51, 9, 'Appointment Letter', '1566473997-9-Appointment Letter.pdf', 'documents/9_Rana_Haider_Faruq/', 'application/pdf', NULL, '2010-10-29', '2019-08-22 06:39:57', '2019-08-22 06:39:57'),
(52, 9, 'Arrival Report', '1566474032-9-Arrival Report.pdf', 'documents/9_Rana_Haider_Faruq/', 'application/pdf', NULL, '2010-11-01', '2019-08-22 06:40:32', '2019-08-22 06:40:32'),
(53, 9, 'B.Sc Civil Engineering Degree', '1566474073-9-B.Sc Civil Engineering Degree.pdf', 'documents/9_Rana_Haider_Faruq/', 'application/pdf', NULL, NULL, '2019-08-22 06:41:13', '2019-08-22 06:41:13'),
(54, 9, 'CNIC Front', '1566475438-9-CNIC Front.jpg', 'documents/9_Rana_Haider_Faruq/', 'image/jpeg', NULL, NULL, '2019-08-22 07:03:59', '2019-08-22 07:03:59'),
(55, 9, 'CNIC Back', '1566475459-9-CNIC Back.jpg', 'documents/9_Rana_Haider_Faruq/', 'image/jpeg', NULL, NULL, '2019-08-22 07:04:20', '2019-08-22 07:04:20'),
(56, 9, 'PEC Card Front', '1566475479-9-PEC Card Front.jpg', 'documents/9_Rana_Haider_Faruq/', 'image/jpeg', NULL, NULL, '2019-08-22 07:04:40', '2019-08-22 07:04:40'),
(57, 9, 'PEC Card Back', '1566475496-9-PEC Card Back.jpg', 'documents/9_Rana_Haider_Faruq/', 'image/jpeg', NULL, NULL, '2019-08-22 07:04:56', '2019-08-22 07:04:56'),
(58, 9, 'F.Sc Degree', '1566475549-9-F.Sc Degree.pdf', 'documents/9_Rana_Haider_Faruq/', 'application/pdf', NULL, NULL, '2019-08-22 07:05:49', '2019-08-22 07:05:49'),
(59, 9, 'Matric Degree', '1566475586-9-Matric Degree.pdf', 'documents/9_Rana_Haider_Faruq/', 'application/pdf', NULL, NULL, '2019-08-22 07:06:26', '2019-08-22 07:06:26'),
(60, 9, 'M.Sc. Gold Medal', '1566475638-9-M.Sc. Gold Medal.pdf', 'documents/9_Rana_Haider_Faruq/', 'application/pdf', NULL, NULL, '2019-08-22 07:07:18', '2019-08-22 07:07:18'),
(61, 9, 'Office Order Grade-8', '1566475698-9-Office Order Grade-8.pdf', 'documents/9_Rana_Haider_Faruq/', 'application/pdf', NULL, '2016-06-09', '2019-08-22 07:08:18', '2019-08-22 07:08:18'),
(65, 10, 'HR Form', '1566889886-10-HR Form.pdf', 'documents/10_Fakhar-e-Alam__Bhatti/', 'application/pdf', NULL, NULL, '2019-08-27 02:11:26', '2019-08-27 02:11:26'),
(66, 10, 'B.Sc Electrical Engineering Degree', '1566890192-10-B.Sc Electrical Engineering Degree.pdf', 'documents/10_Fakhar-e-Alam__Bhatti/', 'application/pdf', NULL, NULL, '2019-08-27 02:16:32', '2019-08-27 02:16:32'),
(67, 10, 'Joining Report', '1566890219-10-Joining Report.pdf', 'documents/10_Fakhar-e-Alam__Bhatti/', 'application/pdf', NULL, NULL, '2019-08-27 02:17:00', '2019-08-27 02:17:00'),
(68, 10, 'M.Sc Computer Science Degree', '1566890262-10-M.Sc Computer Science Degree.pdf', 'documents/10_Fakhar-e-Alam__Bhatti/', 'application/pdf', NULL, NULL, '2019-08-27 02:17:42', '2019-08-27 02:17:42'),
(69, 10, 'Office Order for Cat-A after Completion of Probation Period', '1566890381-10-Office Order for Cat-A after Completion of Probation Period.pdf', 'documents/10_Fakhar-e-Alam__Bhatti/', 'application/pdf', NULL, '2015-03-09', '2019-08-27 02:19:41', '2019-08-27 02:19:41'),
(71, 10, 'Office Order for Trasnfer Dadhocha HPP Project', '1566890638-10-Office Order to Transfer Dadocha Dam Project.pdf', 'documents/10_Fakhar-e-Alam__Bhatti/', 'application/pdf', NULL, '2015-04-01', '2019-08-27 02:23:58', '2019-08-27 02:25:13'),
(72, 10, 'CV', '1566890787-10-CV.pdf', 'documents/10_Fakhar-e-Alam__Bhatti/', 'application/pdf', NULL, NULL, '2019-08-27 02:26:27', '2019-08-27 02:26:27'),
(73, 10, 'CNIC Front', '1566898189-10-CNIC Front.jpg', 'documents/10_Fakhar-e-Alam__Bhatti/', 'image/jpeg', NULL, NULL, '2019-08-27 04:29:49', '2019-08-27 04:29:49'),
(74, 10, 'CNIC Back', '1566898210-10-CNIC Back.jpg', 'documents/10_Fakhar-e-Alam__Bhatti/', 'image/jpeg', NULL, NULL, '2019-08-27 04:30:10', '2019-08-27 04:30:10'),
(76, 10, 'Office Order for Principal Engineer (IT)', '1566898387-10-Office Order for Principal Engineer (IT).pdf', 'documents/10_Fakhar-e-Alam__Bhatti/', 'application/pdf', NULL, '2015-09-15', '2019-08-27 04:33:07', '2019-08-27 04:33:07'),
(77, 13, 'CNIC Front', '1566966608-13-CNIC Front.jpg', 'documents/13_Muhammad__Taufeeq/', 'image/jpeg', NULL, NULL, '2019-08-27 23:30:09', '2019-08-27 23:30:09'),
(78, 13, 'CNIC Back', '1566966637-13-CNIC Back.jpg', 'documents/13_Muhammad__Taufeeq/', 'image/jpeg', NULL, NULL, '2019-08-27 23:30:37', '2019-08-27 23:30:37'),
(81, 17, 'CNIC Front', '1567571343-17-CNIC Front.JPG', 'documents/17_Naveed__Anwar/', 'image/jpeg', NULL, NULL, '2019-09-03 23:29:03', '2019-09-03 23:29:03'),
(82, 17, 'CNIC Back', '1567571356-17-CNIC Back.JPG', 'documents/17_Naveed__Anwar/', 'image/jpeg', NULL, NULL, '2019-09-03 23:29:16', '2019-09-03 23:29:16'),
(83, 17, 'HR Form', '1567571390-17-HR Form.pdf', 'documents/17_Naveed__Anwar/', 'application/pdf', NULL, NULL, '2019-09-03 23:29:50', '2019-09-03 23:29:50'),
(86, 16, 'Appointment Letter', '1567571828-16-Appointment Letter.pdf', 'documents/16_Ali__Arslan/', 'application/pdf', NULL, NULL, '2019-09-03 23:37:08', '2019-09-03 23:37:08'),
(87, 16, 'HR Form', '1567571847-16-HR Form.pdf', 'documents/16_Ali__Arslan/', 'application/pdf', NULL, NULL, '2019-09-03 23:37:27', '2019-09-03 23:37:27'),
(88, 16, 'Degrees', '1567571900-16-Degrees.pdf', 'documents/16_Ali__Arslan/', 'application/pdf', NULL, NULL, '2019-09-03 23:38:20', '2019-09-03 23:38:20'),
(89, 16, 'Cat-A Order', '1567571996-16-Cat-A Order.pdf', 'documents/16_Ali__Arslan/', 'application/pdf', NULL, NULL, '2019-09-03 23:39:56', '2019-09-03 23:39:56'),
(90, 16, 'Educational Certificates', '1567572370-16-Educational Certificates.pdf', 'documents/16_Ali__Arslan/', 'application/pdf', NULL, NULL, '2019-09-03 23:46:10', '2019-09-03 23:46:10'),
(91, 13, 'Appointment Letter', '1567573158-13-Appointment Letter.pdf', 'documents/13_Muhammad__Taufeeq/', 'application/pdf', NULL, NULL, '2019-09-03 23:59:18', '2019-09-03 23:59:18'),
(92, 14, 'Appointment Letter', '1567573512-14-Appointment Letter.pdf', 'documents/14_Kabir__Ahmad/', 'application/pdf', NULL, NULL, '2019-09-04 00:05:12', '2019-09-04 00:05:12'),
(93, 14, 'HR Form', '1567573599-14-HR Form.pdf', 'documents/14_Kabir__Ahmad/', 'application/pdf', NULL, NULL, '2019-09-04 00:06:39', '2019-09-04 00:06:39'),
(94, 14, 'Confirmation of Services', '1567573724-14-Confirmation of Services.pdf', 'documents/14_Kabir__Ahmad/', 'application/pdf', NULL, NULL, '2019-09-04 00:08:44', '2019-09-04 00:08:44'),
(95, 10, 'Appointment Letter', '1567574171-10-Appointment Letter.pdf', 'documents/10_Fakhar-e-Alam__Bhatti/', 'application/pdf', NULL, NULL, '2019-09-04 00:16:11', '2019-09-04 00:16:11'),
(99, 15, 'Cat-B Order', '1567575249-15-Cat-B Order.pdf', 'documents/15_Nazir__Ahmad/', 'application/pdf', NULL, NULL, '2019-09-04 00:34:09', '2019-09-04 00:34:09'),
(100, 3, 'Appointment Letter', '1568347541-3-Appointment Letter.pdf', 'documents/3_Muhammad_Tahir_Khan/', 'application/pdf', NULL, NULL, '2019-09-13 04:05:41', '2019-09-13 04:05:41'),
(101, 3, 'HR Form', '1568347954-3-HR Form.pdf', 'documents/3_Muhammad_Tahir_Khan/', 'application/pdf', NULL, NULL, '2019-09-13 04:12:34', '2019-09-13 04:12:34'),
(102, 3, 'Office Order for Promotion', '1568349382-3-Office Order for Promotion.jpg', 'documents/3_Muhammad_Tahir_Khan/', 'image/jpeg', NULL, NULL, '2019-09-13 04:36:22', '2019-09-13 04:36:22'),
(104, 18, 'CNIC Front', '1568349822-18-CNIC Front.JPG', 'documents/18_Muhammad_Rafiq_Khan/', 'image/jpeg', NULL, NULL, '2019-09-13 04:43:42', '2019-09-13 04:43:42'),
(105, 18, 'CNIC Back', '1568349834-18-CNIC Back.JPG', 'documents/18_Muhammad_Rafiq_Khan/', 'image/jpeg', NULL, NULL, '2019-09-13 04:43:54', '2019-09-13 04:43:54'),
(106, 18, 'HR Form', '1568872817-18-HR Form.pdf', 'documents/18_Muhammad_Rafiq_Khan/', 'application/pdf', NULL, NULL, '2019-09-13 04:44:28', '2019-09-19 06:00:18'),
(107, 15, 'CNIC Front', '1568350124-15-CNIC Front.JPG', 'documents/15_Nazir__Ahmad/', 'image/jpeg', NULL, NULL, '2019-09-13 04:48:44', '2019-09-13 04:48:44'),
(108, 15, 'HR Form', '1568350142-15-HR Form.pdf', 'documents/15_Nazir__Ahmad/', 'application/pdf', NULL, NULL, '2019-09-13 04:49:02', '2019-09-13 04:49:02'),
(109, 18, 'Appointment Letter', '1568872876-18-Appointment Letter.pdf', 'documents/18_Muhammad_Rafiq_Khan/', 'application/pdf', NULL, '2005-12-31', '2019-09-19 06:01:16', '2019-09-19 06:01:16'),
(111, 20, 'HR Form', '1569218343-20-HR Form.pdf', 'documents/20_Muhammad__Ashraf/', 'application/pdf', NULL, NULL, '2019-09-23 05:59:03', '2019-09-23 05:59:03'),
(112, 20, 'Grade-13', '1569218426-20-Grade-13.pdf', 'documents/20_Muhammad__Ashraf/', 'application/pdf', NULL, NULL, '2019-09-23 06:00:26', '2019-09-23 06:00:26'),
(113, 20, 'Transfer Order', '1569218454-20-Transfer Order.pdf', 'documents/20_Muhammad__Ashraf/', 'application/pdf', NULL, NULL, '2019-09-23 06:00:54', '2019-09-23 06:00:54'),
(114, 20, 'Appointment Letter', '1569226131-20-Appointment Letter.pdf', 'documents/20_Muhammad__Ashraf/', 'application/pdf', NULL, NULL, '2019-09-23 08:08:52', '2019-09-23 08:08:52'),
(115, 20, 'Warning Letter', '1569310564-20-Warning Letter.pdf', 'documents/20_Muhammad__Ashraf/', 'application/pdf', NULL, NULL, '2019-09-24 07:36:05', '2019-09-24 07:36:05'),
(116, 20, 'CNIC Front', '1569310718-20-CNIC Front.JPG', 'documents/20_Muhammad__Ashraf/', 'image/jpeg', NULL, NULL, '2019-09-24 07:38:38', '2019-09-24 07:38:38'),
(117, 22, 'CNIC Front', '1569311765-22-CNIC Front.JPG', 'documents/22_Muhammad__Asif/', 'image/jpeg', NULL, NULL, '2019-09-24 07:56:05', '2019-09-24 07:56:05'),
(118, 22, 'CNIC Back', '1569311784-22-CNIC Back.JPG', 'documents/22_Muhammad__Asif/', 'image/jpeg', NULL, NULL, '2019-09-24 07:56:24', '2019-09-24 07:56:24'),
(119, 22, 'HR Form', '1569311817-22-HR Form.pdf', 'documents/22_Muhammad__Asif/', 'application/pdf', NULL, NULL, '2019-09-24 07:56:57', '2019-09-24 07:56:57'),
(120, 22, 'Appointment Letter', '1569311992-22-Appointment Letter.pdf', 'documents/22_Muhammad__Asif/', 'application/pdf', NULL, NULL, '2019-09-24 07:59:52', '2019-09-24 07:59:52'),
(121, 22, 'Arival Report', '1569312031-22-Arival Report.pdf', 'documents/22_Muhammad__Asif/', 'application/pdf', NULL, NULL, '2019-09-24 08:00:31', '2019-09-24 08:00:31'),
(122, 22, 'Promotion Order', '1569312061-22-Promotion Order.pdf', 'documents/22_Muhammad__Asif/', 'application/pdf', NULL, NULL, '2019-09-24 08:01:01', '2019-09-24 08:01:01'),
(123, 22, 'Driving License', '1569314090-22-Driving License.pdf', 'documents/22_Muhammad__Asif/', 'application/pdf', NULL, NULL, '2019-09-24 08:34:50', '2019-09-24 08:34:50'),
(124, 19, 'HR Form', '1569323385-19-HR Form.pdf', 'documents/19_Noman__Ahmad/', 'application/pdf', NULL, NULL, '2019-09-24 11:09:46', '2019-09-24 11:09:46'),
(125, 19, 'Warning Letter', '1569323409-19-Warning Letter.pdf', 'documents/19_Noman__Ahmad/', 'application/pdf', NULL, NULL, '2019-09-24 11:10:10', '2019-09-24 11:10:10'),
(126, 19, 'CNIC Front', '1569323500-19-CNIC Front.JPG', 'documents/19_Noman__Ahmad/', 'image/jpeg', NULL, NULL, '2019-09-24 11:11:40', '2019-09-24 11:11:40'),
(127, 19, 'Cat-B Order', '1569323586-19-Cat-B Order.pdf', 'documents/19_Noman__Ahmad/', 'application/pdf', NULL, NULL, '2019-09-24 11:13:06', '2019-09-24 11:13:06'),
(131, 21, 'Appointment Letter', '1569388391-21-Appointment Letter.jpg', 'documents/21_Zamir__Abbas/', 'image/jpeg', NULL, NULL, '2019-09-25 05:13:13', '2019-09-25 05:13:13'),
(132, 21, 'HR Form', '1569388413-21-HR Form.pdf', 'documents/21_Zamir__Abbas/', 'application/pdf', NULL, NULL, '2019-09-25 05:13:33', '2019-09-25 05:13:33'),
(133, 21, 'Regular Cat Memo', '1569388452-21-Regular Cat Memo.pdf', 'documents/21_Zamir__Abbas/', 'application/pdf', NULL, NULL, '2019-09-25 05:14:12', '2019-09-25 05:14:12'),
(134, 11, 'HR Form', '1569388816-11-HR Form.pdf', 'documents/11_Muhammad__Rasheed/', 'application/pdf', NULL, NULL, '2019-09-25 05:20:17', '2019-09-25 05:20:17'),
(135, 25, 'CNIC Front', '1569908017-25-CNIC Front.JPG', 'documents/25_Muhammad__Javed/', 'image/jpeg', NULL, NULL, '2019-10-01 05:33:37', '2019-10-01 05:33:37'),
(136, 25, 'CNIC Back', '1569908031-25-CNIC Back.JPG', 'documents/25_Muhammad__Javed/', 'image/jpeg', NULL, NULL, '2019-10-01 05:33:51', '2019-10-01 05:33:51'),
(137, 25, 'HR Form', '1569908061-25-HR Form.pdf', 'documents/25_Muhammad__Javed/', 'application/pdf', NULL, NULL, '2019-10-01 05:34:21', '2019-10-01 05:34:21'),
(138, 25, '2 pages Appointment Letter', '1569908095-25-2 pages Appointment Letter.pdf', 'documents/25_Muhammad__Javed/', 'application/pdf', NULL, NULL, '2019-10-01 05:34:55', '2019-10-01 05:34:55'),
(139, 25, '1-Page Apointment Letter', '1569908126-25-1-Page Apointment Letter.pdf', 'documents/25_Muhammad__Javed/', 'application/pdf', NULL, NULL, '2019-10-01 05:35:26', '2019-10-01 05:35:26'),
(140, 25, 'Joining Report', '1569908153-25-Joining Report.pdf', 'documents/25_Muhammad__Javed/', 'application/pdf', NULL, NULL, '2019-10-01 05:35:53', '2019-10-01 05:35:53'),
(141, 23, 'CNIC Front', '1569908772-23-CNIC Front.JPG', 'documents/23_Muhammad__Sultan/', 'image/jpeg', NULL, NULL, '2019-10-01 05:46:13', '2019-10-01 05:46:13'),
(142, 23, 'Appointment Letter', '1569908794-23-Appointment Letter.pdf', 'documents/23_Muhammad__Sultan/', 'application/pdf', NULL, NULL, '2019-10-01 05:46:34', '2019-10-01 05:46:34'),
(143, 23, 'Joining Report', '1569908832-23-Joining Report.pdf', 'documents/23_Muhammad__Sultan/', 'application/pdf', NULL, NULL, '2019-10-01 05:47:12', '2019-10-01 05:47:12'),
(144, 23, 'Promotion Order', '1569908852-23-Promotion Order.pdf', 'documents/23_Muhammad__Sultan/', 'application/pdf', NULL, NULL, '2019-10-01 05:47:33', '2019-10-01 05:47:33'),
(145, 23, 'HR Form', '1569909044-23-HR Form.pdf', 'documents/23_Muhammad__Sultan/', 'application/pdf', NULL, NULL, '2019-10-01 05:50:44', '2019-10-01 05:50:44'),
(146, 24, 'CNIC Front', '1569910428-24-CNIC Front.JPG', 'documents/24_Muhammad__Waqas/', 'image/jpeg', NULL, NULL, '2019-10-01 06:13:49', '2019-10-01 06:13:49'),
(147, 24, 'CNIC Back', '1569910445-24-CNIC Back.JPG', 'documents/24_Muhammad__Waqas/', 'image/jpeg', NULL, NULL, '2019-10-01 06:14:05', '2019-10-01 06:14:05'),
(149, 24, 'HR Form', '1569912998-24-HR Form.pdf', 'documents/24_Muhammad__Waqas/', 'application/pdf', NULL, NULL, '2019-10-01 06:56:39', '2019-10-01 06:56:39'),
(152, 24, 'HR Form', '1569913147-24-HR Form.pdf', 'documents/24_Muhammad__Waqas/', 'application/pdf', NULL, NULL, '2019-10-01 06:59:08', '2019-10-01 06:59:08'),
(153, 24, 'Promotion Order', '1569913176-24-Promotion Order.pdf', 'documents/24_Muhammad__Waqas/', 'application/pdf', NULL, NULL, '2019-10-01 06:59:36', '2019-10-01 06:59:36'),
(154, 26, 'CNIC Front', '1569913849-26-CNIC Front.JPG', 'documents/26_Waqar__Ahmad/', 'image/jpeg', NULL, NULL, '2019-10-01 07:10:49', '2019-10-01 07:10:49'),
(155, 26, 'CNIC Back', '1569913872-26-CNIC Back.JPG', 'documents/26_Waqar__Ahmad/', 'image/jpeg', NULL, NULL, '2019-10-01 07:11:12', '2019-10-01 07:11:12'),
(156, 26, 'Appointment Letter', '1569913967-26-Appointment Letter.pdf', 'documents/26_Waqar__Ahmad/', 'application/pdf', NULL, NULL, '2019-10-01 07:12:48', '2019-10-01 07:12:48'),
(157, 26, 'HR Form', '1569914099-26-HR Form.pdf', 'documents/26_Waqar__Ahmad/', 'application/pdf', NULL, NULL, '2019-10-01 07:14:59', '2019-10-01 07:14:59'),
(158, 26, 'Joining Report', '1569914138-26-Joining Report.pdf', 'documents/26_Waqar__Ahmad/', 'application/pdf', NULL, NULL, '2019-10-01 07:15:38', '2019-10-01 07:15:38'),
(160, 3, 'CNIC Front', '1570075080-3-CNIC Front.jpg', 'documents/3_Muhammad_Tahir_Khan/', 'image/jpeg', NULL, NULL, '2019-10-03 03:58:00', '2019-10-03 03:58:00'),
(161, 3, 'CNIC Back', '1570087934-3-CNIC Back.jpg', 'documents/3_Muhammad_Tahir_Khan/', 'image/jpeg', NULL, NULL, '2019-10-03 03:58:11', '2019-10-03 07:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `document_names`
--

CREATE TABLE `document_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_names`
--

INSERT INTO `document_names` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CNIC Front', NULL, NULL),
(2, 'CNIC Back', NULL, NULL),
(3, 'Appointment Letter', NULL, NULL),
(4, 'HR Form', NULL, NULL),
(5, 'Joining Report', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `degree_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_marks` double(8,2) DEFAULT NULL,
  `marks_obtain` double(8,2) DEFAULT NULL,
  `grade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `employee_id`, `degree_name`, `institute`, `level`, `from_month`, `from_year`, `to_month`, `to_year`, `total_marks`, `marks_obtain`, `grade`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'BS-IT', 'Virtual University of Pakistan', '14', 'January', '2017', 'December', '2018', 4.00, 3.80, 'A', 1, NULL, '2019-09-16 09:31:09'),
(2, 4, 'Matric - Secondary', 'M.B High School Hafizabad', '10', NULL, '1955', NULL, '1957', NULL, NULL, NULL, 1, '2019-08-07 13:10:45', '2019-08-07 13:14:10'),
(3, 4, 'Higher Scondary', 'Govt. College Lahore', '12', NULL, '1957', NULL, '1959', NULL, NULL, NULL, 1, '2019-08-07 13:15:00', '2019-08-07 13:15:00'),
(4, 4, 'B.Sc (Civil)', 'University of Engineering & Technology, Lahore', '16', NULL, '1962', NULL, '1965', NULL, NULL, NULL, 1, '2019-08-07 13:16:11', '2019-08-07 13:16:11'),
(5, 4, 'M.Sc Construction Engineering', 'Leeds University, UK', '18', NULL, NULL, NULL, '1980', NULL, NULL, NULL, 226, '2019-08-07 13:17:11', '2019-08-07 13:17:11'),
(6, 6, 'Bachelor of Engineering Electrical', 'Mehran University of Engineering & Technology, Jamshoro', '16', NULL, NULL, NULL, '1981', 4.00, 3.92, NULL, 1, '2019-08-20 10:12:25', '2019-08-20 10:12:25'),
(7, 6, 'Master in Electrical Engineering', 'University of Engineering and Technology, Lahore', '18', NULL, NULL, NULL, '2009', NULL, NULL, NULL, 1, '2019-08-20 10:16:28', '2019-08-20 10:16:28'),
(8, 8, 'Matric', 'Govt. Muslim Awami High School Sambrial Sialkot', '10', NULL, NULL, NULL, '1996', 850.00, 737.00, 'A+', 1, '2019-08-22 09:14:47', '2019-08-22 09:14:47'),
(9, 8, 'F.Sc', 'Govt. Jinnah Islamia College, Sialkot', '12', NULL, NULL, NULL, '1998', 1100.00, 815.00, 'A', 1, '2019-08-22 09:15:59', '2019-08-22 09:15:59'),
(10, 8, 'B.Sc Civil Engineering', 'University of Engineering & Technology, Lahore', '16', NULL, NULL, 'February', '2003', NULL, NULL, 'First', 1, '2019-08-22 09:17:55', '2019-08-22 09:17:55'),
(11, 8, 'M.Sc Civil Engineering', 'University of Engineering & Technology, Lahore', '18', NULL, NULL, 'August', '2006', NULL, NULL, NULL, 1, '2019-08-22 09:19:02', '2019-08-22 09:19:02'),
(12, 13, 'Bachelor of Arts (BA)', 'University of Punjab, Lahore', '14', NULL, NULL, NULL, '2015', NULL, NULL, 'A', 1, '2019-08-27 06:25:17', '2019-08-27 06:25:17'),
(13, 14, 'FA', 'Private', '12', NULL, NULL, NULL, '1991', 850.00, 468.00, NULL, 1, '2019-08-29 00:02:37', '2019-08-29 00:02:37'),
(14, 15, 'B.A.', 'Peshawar University', '14', 'March', NULL, NULL, '1983', 850.00, 456.00, NULL, 1, '2019-08-29 00:33:03', '2019-08-29 00:33:03'),
(15, 16, 'M.Sc.', 'UET Lahore', '18', NULL, NULL, NULL, '2009', NULL, NULL, NULL, 1, '2019-09-01 23:01:15', '2019-09-02 23:14:10'),
(16, 17, 'FA', 'Private', '12', NULL, NULL, NULL, '1994', NULL, NULL, NULL, 1, '2019-09-03 02:44:57', '2019-09-03 02:44:57'),
(17, 3, 'FA', 'Govt. Science College, Lahore', '12', NULL, NULL, NULL, '1993', NULL, NULL, NULL, 1, '2019-09-04 00:02:47', '2019-09-04 00:02:47'),
(18, 19, 'B.A', 'Punjab University', '14', NULL, NULL, NULL, '2003', NULL, NULL, NULL, 1, '2019-09-12 02:19:08', '2019-09-12 02:19:08'),
(19, 23, 'B.A.', 'Punjab University', '14', NULL, NULL, NULL, '1975', NULL, NULL, NULL, 1, '2019-09-25 09:54:06', '2019-09-25 09:54:06'),
(20, 24, 'MBA', 'University of Central Punjab', '16', NULL, NULL, NULL, '2004', NULL, NULL, NULL, 1, '2019-09-26 04:28:50', '2019-09-26 04:28:50'),
(21, 25, 'B.Com', 'BZU', '14', NULL, NULL, NULL, '2001', NULL, NULL, NULL, 1, '2019-09-30 04:53:05', '2019-09-30 04:53:05'),
(22, 26, 'B.Sc. Accounting', 'Oxford Brooks University', '14', NULL, NULL, NULL, '2015', NULL, NULL, NULL, 1, '2019-09-30 05:15:43', '2019-09-30 05:15:43'),
(23, 27, 'B.A.', 'University of Punjab', '14', NULL, NULL, NULL, '1994', NULL, NULL, NULL, 1, '2019-10-03 04:52:49', '2019-10-03 04:52:49'),
(24, 28, 'B.Com', 'Scholars', '14', NULL, NULL, NULL, '2003', NULL, NULL, NULL, 1, '2019-10-03 05:24:52', '2019-10-03 05:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contacts`
--

CREATE TABLE `emergency_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emergency_contacts`
--

INSERT INTO `emergency_contacts` (`id`, `employee_id`, `name`, `relation`, `mobile`, `landline`, `created_at`, `updated_at`) VALUES
(1, 12, 'Sanaullah', 'Father', '0341-0078278', '000000', '2019-08-27 04:27:16', '2019-08-27 04:27:16'),
(2, 13, 'Muhammad Shafiq', 'Brother', '0321-4764294', NULL, '2019-08-27 06:53:09', '2019-08-27 06:53:09'),
(3, 1, 'Rehan Afzal', 'Brother', '0323-4205592', '042-37418187', '2019-08-27 23:22:47', '2019-08-27 23:22:47'),
(4, 3, 'Muhammad Sheraz Khan', 'Brother', '0333-4362135', NULL, '2019-09-04 00:20:10', '2019-09-04 00:20:10'),
(5, 11, 'Tanzeel Jahangir', 'Wife', '0302-4587929', NULL, '2019-09-19 05:43:51', '2019-09-19 05:43:51'),
(6, 11, 'Tanzeel Jahangir', 'Wife', '0302-4587929', NULL, '2019-09-19 05:43:51', '2019-09-19 05:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender_id` bigint(20) NOT NULL,
  `cnic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic_expiry` date NOT NULL,
  `employee_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 onboard, 1 resigned, 2 terminated, 3 onleave, 4 manmonth ended',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `division_id`, `first_name`, `middle_name`, `last_name`, `father_name`, `date_of_birth`, `gender_id`, `cnic`, `cnic_expiry`, `employee_no`, `marital_status_id`, `religon`, `employee_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sohail', NULL, 'Afzal', 'Muhammad Afzal', '1976-06-08', 1, '35202-4689730-3', '2026-03-22', NULL, '2', 'Islam', 0, NULL, '2019-09-02 07:16:27'),
(2, 2, 'Athar', 'Hussain', 'Jaffry', 'Nazar Hussain Jafry', '1974-08-12', 1, '35402-2013572-3', '2024-11-19', '111', '2', 'Islam', 0, '2019-07-31 10:15:04', '2019-09-02 07:16:58'),
(3, 2, 'Muhammad', 'Tahir', 'Khan', 'Muhammad Nadir Khan', '1975-10-16', 1, '35202-4633596-1', '2021-08-31', NULL, '2', 'Islam', 0, '2019-08-02 15:23:46', '2019-09-02 07:20:53'),
(4, 2, 'Ahmad', 'Khan', 'Bhatti', 'Mian Sher Alam Bhatti', '1942-05-13', 1, '35201-1577905-3', '2020-08-31', NULL, '2', 'Islam', 0, '2019-08-07 12:52:13', '2019-09-02 07:16:43'),
(5, 3, 'Saqib', NULL, 'Javiad', 'Muhammad Ashraf Javaid', '1975-04-20', 1, '35202-8702700-3', '2026-03-12', NULL, '2', 'Islam', 0, '2019-08-16 13:13:56', '2019-09-02 07:18:44'),
(6, 1, 'Muhammad', NULL, 'Zafar', 'Fazal Muhammad', '1956-12-15', 1, '35201-1489050-7', '2024-01-07', NULL, '2', 'Islam', 0, '2019-08-19 18:31:55', '2019-09-02 07:19:07'),
(7, 2, 'Mumtaz', NULL, 'Akhtar', 'Talib Hussain Asghar', '1943-09-16', 1, '35201-4930750-7', '2034-08-01', NULL, '2', 'Islam', 0, '2019-08-21 09:46:35', '2019-09-02 07:19:57'),
(8, 2, 'Naveed', 'Akhtar', 'Nawaz', 'Muhammad Nawaz', '1980-11-11', 1, '34601-0861441-1', '2019-12-26', NULL, '2', 'Islam', 0, '2019-08-22 08:48:15', '2019-09-02 07:20:16'),
(9, 2, 'Rana', 'Haider', 'Faruq', 'Rana Muhammad Siddique', '1984-11-23', 1, '33202-0442124-3', '2025-02-27', NULL, '2', 'Islam', 0, '2019-08-22 06:37:31', '2019-09-02 07:20:34'),
(10, 2, 'Fakhar-e-Alam', NULL, 'Bhatti', 'Ahmad Khan Bhatti', '1972-03-15', 1, '35201-1585116-9', '2022-08-06', NULL, '2', 'Islam', 0, '2019-08-27 01:47:20', '2019-09-02 07:17:12'),
(11, 2, 'Muhammad', NULL, 'Rasheed', 'Ali Muhammad', '1978-12-28', 1, '35201-5236988-5', '2027-09-22', NULL, '2', 'Islam', 0, '2019-08-27 03:52:14', '2019-09-02 07:17:39'),
(12, 2, 'Taseef', NULL, 'Ahmad', 'Sanaullah', '1988-07-17', 1, '34301-3299757-3', '2018-11-30', NULL, '2', 'Islam', 0, '2019-08-27 04:16:31', '2019-09-02 07:21:32'),
(13, 2, 'Muhammad', NULL, 'Taufeeq', 'Abdul Majeed', '1982-02-19', 1, '13302-0470337-1', '2027-03-01', NULL, '2', 'Islam', 0, '2019-08-27 05:54:08', '2019-08-27 08:21:33'),
(14, 2, 'Kabir', NULL, 'Ahmad', 'Naseer Ahmad', '1973-04-20', 1, '35202-6628320-3', '2024-07-04', '03014237600', '2', 'Islam', 0, '2019-08-28 23:45:28', '2019-09-02 07:15:47'),
(15, 1, 'Nazir', NULL, 'Ahmad', 'Muhammad Sidduqe', '1946-08-10', 1, '35404-1588110-1', '2026-10-16', '03444111318', '2', 'Islam', 0, '2019-08-29 00:25:48', '2019-09-02 07:15:22'),
(16, 2, 'Ali', NULL, 'Arslan', 'Shaokat Ali', '1985-10-01', 1, '33100-3385773-1', '2015-05-05', NULL, '2', 'Islam', 0, '2019-09-01 22:49:33', '2019-09-02 07:14:22'),
(17, 2, 'Naveed', NULL, 'Anwar', 'Muhammad Anwar', '1972-09-09', 1, '35202-2308674-5', '2020-02-28', NULL, '2', 'Islam', 0, '2019-09-01 23:06:57', '2019-09-02 07:11:41'),
(18, 2, 'Muhammad', 'Rafiq', 'Khan', 'Gul Hazrat', '1982-09-15', 1, '35202-1571812-7', '2023-01-31', NULL, '2', 'Islam', 0, '2019-09-05 00:18:00', '2019-09-05 00:18:00'),
(19, 2, 'Noman', NULL, 'Ahmad', 'Farooq Ahmad', '1983-12-06', 1, '34502-4662986-3', '2014-07-22', NULL, '2', 'Islam', 0, '2019-09-12 02:09:27', '2019-09-12 02:09:27'),
(20, 2, 'Muhammad', NULL, 'Ashraf', 'Rahmat Ali', '1966-05-14', 1, '35202-3982076-9', '2015-12-31', NULL, '2', 'Islam', 0, '2019-09-12 02:34:37', '2019-09-12 02:34:37'),
(21, 2, 'Zamir', NULL, 'Abbas', 'Naseer Ahmad', '1983-03-02', 1, '35202-2769718-9', '2023-09-30', NULL, '2', 'Islam', 0, '2019-09-19 05:21:48', '2019-09-19 05:21:48'),
(22, 2, 'Muhammad', NULL, 'Asif', 'Muhammad Idrees', '1978-09-18', 1, '34502-7697993-7', '2021-02-25', NULL, '2', 'Islam', 0, '2019-09-19 05:44:26', '2019-09-19 05:44:26'),
(23, 3, 'Muhammad', 'Javed', 'Sultan', 'Sultan Hussain Eman', '1957-12-20', 1, '35202-2580696-3', '2020-04-28', NULL, '2', 'Islam', 0, '2019-09-25 06:26:27', '2019-10-02 03:49:17'),
(24, 3, 'Muhammad', NULL, 'Waqas', 'Muhammad Salim Warsi', '1973-06-12', 1, '35202-6346130-7', '2021-06-12', NULL, '2', 'Islam', 0, '2019-09-26 04:18:54', '2019-09-26 04:18:54'),
(25, 3, 'Muhammad', 'Imran', 'Javed', 'Javed Iqbal', '1980-09-06', 1, '31104-1752823-1', '2028-05-20', NULL, '2', 'Islam', 0, '2019-09-30 04:36:05', '2019-10-02 04:04:25'),
(26, 3, 'Waqar', NULL, 'Ahmad', 'Muhammad Ramzan', '1992-02-02', 1, '35201-3332311-1', '2025-11-27', NULL, '2', 'Islam', 0, '2019-09-30 05:10:18', '2019-09-30 05:10:18'),
(27, 3, 'Malik', 'Zulfiqar', 'Ali', 'Malik Mushtaq Ahmed', '1970-07-09', 1, '35202-8204197-3', '2027-07-11', NULL, '2', 'Islam', 0, '2019-10-02 06:05:38', '2019-10-02 06:05:38'),
(28, 3, 'Abdul Majid', NULL, 'Rafi', 'Muhammad Rafi Ch.', '1981-08-20', 1, '35202-2481939-7', '2016-10-19', NULL, '2', 'Islam', 0, '2019-10-03 05:14:41', '2019-10-03 05:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `employer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `activities` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `employee_id`, `employer`, `position`, `from`, `to`, `country_id`, `activities`, `created_at`, `updated_at`) VALUES
(1, 4, 'BARQAAB', 'Chief Executive', '2013-09-18', '2019-08-07', 1, NULL, '2019-08-07 13:29:21', '2019-08-07 13:29:21'),
(2, 13, 'BARQAAB Consulting Services (Pvt.) Limited', 'Computer Operator', '2007-01-26', '2010-03-31', 1, NULL, '2019-08-27 06:44:39', '2019-08-27 06:44:39'),
(3, 13, 'BARQAAB Consulting Services (Pvt.) Limited', 'AutoCAD Operator', '2010-04-01', '2019-08-27', 1, NULL, '2019-08-27 06:46:46', '2019-08-27 06:46:46'),
(4, 1, 'Pakistan Telecommunication Company LImited', 'HR Executive', '1995-04-01', '2001-03-08', 1, 'testing 123', '2019-08-27 23:27:07', '2019-09-18 07:40:24'),
(5, 14, 'Kabir Ahmad', 'Auto CAD Operato', '2001-12-07', '2019-08-20', 1, NULL, '2019-08-29 00:04:42', '2019-08-29 00:04:42'),
(9, 16, 'Ali Arslan', 'Junior Engineer', '2007-06-08', '2019-09-03', 1, NULL, '2019-09-02 23:28:33', '2019-09-02 23:28:33'),
(10, 3, 'Muhammad Tahir Khan', 'Computer Operator Officer', '1997-05-13', '2019-09-04', 1, NULL, '2019-09-04 00:05:12', '2019-09-04 00:05:12'),
(11, 19, 'Noman Ahmad', 'Computer Operator', '2009-08-19', '2019-09-12', 1, NULL, '2019-09-12 02:20:34', '2019-09-12 02:20:34'),
(12, 23, 'Muhammad Javed Sultan', 'Accountant', '1977-07-24', '2019-09-25', 1, NULL, '2019-09-25 09:56:25', '2019-09-25 09:56:25'),
(13, 24, 'Muhammad Waqas', 'Accounts Officer', '2001-11-07', '2019-09-25', 1, NULL, '2019-09-26 04:41:32', '2019-09-26 04:41:32'),
(14, 25, 'Muhammad Imran Javed', 'Assistant Accountant', '2001-11-06', '2019-09-30', 1, NULL, '2019-09-30 04:54:49', '2019-09-30 04:54:49'),
(15, 26, 'Waqar Ahmad', 'Accounts Officer', '2015-06-17', '2019-09-30', 1, NULL, '2019-09-30 05:16:38', '2019-09-30 05:16:38'),
(16, 27, 'Malik Zulfiqar Ali', 'Assistant Secretary', '1995-04-14', '2019-10-02', 1, NULL, '2019-10-03 04:54:38', '2019-10-03 04:54:38'),
(17, 28, 'Abdul Majid Rafi', 'Accounts Assistant', '2006-07-18', '2019-04-06', 1, NULL, '2019-10-03 05:31:19', '2019-10-03 05:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Male', NULL, NULL),
(2, 'Female', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `all_language_id` bigint(20) NOT NULL,
  `writing` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speaking` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reading` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `employee_id`, `all_language_id`, `writing`, `speaking`, `reading`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'Excellent', 'Excellent', 'Excellent', '2019-08-07 13:27:32', '2019-08-07 13:27:32'),
(2, 4, 2, 'Excellent', 'Excellent', 'Excellent', '2019-08-07 13:28:05', '2019-08-07 13:28:05'),
(3, 6, 1, 'Excellent', 'Excellent', 'Excellent', '2019-08-20 10:22:27', '2019-08-20 10:22:27'),
(4, 6, 2, 'Excellent', 'Excellent', 'Excellent', '2019-08-20 10:22:37', '2019-08-20 10:22:37'),
(5, 8, 1, 'Excellent', 'Excellent', 'Excellent', '2019-08-22 09:24:21', '2019-08-22 09:24:21'),
(6, 8, 2, 'Excellent', 'Excellent', 'Excellent', '2019-08-22 09:24:31', '2019-08-22 09:24:31'),
(7, 13, 1, 'Good', 'Good', 'Excellent', '2019-08-27 06:37:28', '2019-08-27 06:37:28'),
(8, 13, 2, 'Excellent', 'Excellent', 'Excellent', '2019-08-27 06:37:38', '2019-08-27 06:37:38'),
(9, 13, 5, 'Average', 'Good', 'Good', '2019-08-27 06:38:31', '2019-08-27 06:38:31'),
(14, 1, 1, 'Excellent', 'Excellent', 'Excellent', '2019-09-18 07:02:11', '2019-09-18 07:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `leave_compensatories`
--

CREATE TABLE `leave_compensatories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_id` bigint(20) UNSIGNED NOT NULL,
  `manager_confirmation` tinyint(4) NOT NULL,
  `manager_remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_initial_balances`
--

CREATE TABLE `leave_initial_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_type_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `balance` smallint(6) NOT NULL,
  `effective_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_initial_balances`
--

INSERT INTO `leave_initial_balances` (`id`, `leave_type_id`, `employee_id`, `balance`, `effective_date`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 7, '2019-09-19', '2019-09-19 09:31:09', '2019-09-19 09:31:09'),
(2, 3, 1, 7, '2019-09-19', '2019-09-19 09:31:09', '2019-09-19 09:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_type_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval_status` tinyint(4) NOT NULL DEFAULT '0',
  `recommended_by` bigint(20) DEFAULT NULL,
  `approved_by` bigint(20) NOT NULL,
  `recommendation_remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval_remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annaul_quota` tinyint(3) UNSIGNED NOT NULL,
  `accumulative_limit` tinyint(3) UNSIGNED NOT NULL,
  `starting_month` tinyint(4) NOT NULL,
  `ending_month` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `name`, `annaul_quota`, `accumulative_limit`, `starting_month`, `ending_month`, `created_at`, `updated_at`) VALUES
(3, 'Casual Leave', 12, 0, 1, 12, '2019-09-05 19:00:00', NULL),
(4, 'Earned Leave', 18, 60, 1, 12, '2019-09-05 19:00:00', NULL),
(5, 'Compensatory Leave', 0, 0, 1, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marital_status`
--

CREATE TABLE `marital_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marital_status`
--

INSERT INTO `marital_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Single', NULL, NULL),
(2, 'Married', NULL, NULL),
(3, 'Separated', NULL, NULL),
(4, 'Widowed', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `membership_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `employee_id`, `name`, `membership_no`, `expiry_date`, `created_at`, `updated_at`) VALUES
(1, 4, 'PEC', 'CIVIL/00927', '2019-12-31', '2019-08-07 13:24:59', '2019-08-07 13:24:59'),
(2, 6, 'PEC', 'Elect/3994', '2020-12-31', '2019-08-20 10:20:09', '2019-08-20 10:20:09'),
(3, 8, 'PEC', 'Civil/23078', '2019-12-31', '2019-08-22 09:24:04', '2019-08-22 09:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_04_11_024250_create_all_languages_table', 1),
(3, '2019_04_11_134826_create_country_table', 1),
(4, '2019_04_12_131051_create_divisions_table', 1),
(5, '2019_04_12_131051_create_roles_table', 1),
(6, '2019_04_12_131052_create_employees_table', 1),
(7, '2019_04_13_000000_create_users_table', 1),
(8, '2019_04_18_125546_create_contacts_table', 1),
(9, '2019_04_18_131404_create_experiences_table', 1),
(10, '2019_04_18_231453_create_educations_table', 1),
(11, '2019_06_10_125634_create_audits_table', 1),
(12, '2019_06_11_032623_create_salaries_table', 1),
(13, '2019_06_11_033114_create_other_informations_table', 1),
(14, '2019_06_11_033141_create_pictures_table', 1),
(15, '2019_06_11_033321_create_languages_table', 1),
(16, '2019_06_11_033426_create_trainings_table', 1),
(17, '2019_06_11_033455_create_publications_table', 1),
(18, '2019_06_11_033539_create_appointments_table', 1),
(19, '2019_06_11_033610_create_emergency_contacts_table', 1),
(20, '2019_06_11_033636_create_memberships_table', 1),
(21, '2019_06_11_033711_create_documents_table', 1),
(22, '2019_06_11_033727_create_postings_table', 1),
(23, '2019_06_11_033750_create_banks_table', 1),
(24, '2019_06_11_033816_create_chargings_table', 1),
(25, '2019_06_11_033838_create_dependents_table', 1),
(26, '2019_06_11_033908_create_projects_table', 1),
(27, '2019_06_13_042858_create_marital_status_table', 1),
(28, '2019_06_18_034020_create_blood_group_table', 1),
(29, '2019_06_25_023308_create_notifications_table', 1),
(30, '2019_06_26_075933_create_contact_number_table', 1),
(31, '2019_07_01_115137_create_promotions_table', 1),
(32, '2019_07_03_050124_create_document_names_table', 1),
(33, '2019_07_10_024002_create_nationalities_table', 1),
(34, '2019_07_21_091111_create_designations_table', 1),
(35, '2019_07_26_125656_create_sessions_table', 1),
(36, '2019_09_04_084409_create_events_table', 1),
(38, '2019_09_05_124530_create_leave_requests_table', 1),
(39, '2019_09_05_130143_create_leave_initial_balances_table', 1),
(40, '2019_09_05_131346_create_leave_compensatories_table', 1),
(42, '2019_09_05_123356_create_leave_types_table', 2),
(125, '2014_10_12_100000_create_password_resets_table', 1),
(126, '2019_04_11_024250_create_all_languages_table', 1),
(127, '2019_04_11_134826_create_country_table', 1),
(128, '2019_04_12_131051_create_divisions_table', 1),
(129, '2019_04_12_131051_create_roles_table', 1),
(130, '2019_04_12_131052_create_employees_table', 1),
(131, '2019_04_13_000000_create_users_table', 1),
(132, '2019_04_18_125546_create_contacts_table', 1),
(133, '2019_04_18_131404_create_experiences_table', 1),
(134, '2019_04_18_231453_create_educations_table', 1),
(135, '2019_06_10_125634_create_audits_table', 1),
(136, '2019_06_11_032623_create_salaries_table', 1),
(137, '2019_06_11_033114_create_other_informations_table', 1),
(138, '2019_06_11_033141_create_pictures_table', 1),
(139, '2019_06_11_033321_create_languages_table', 1),
(140, '2019_06_11_033426_create_trainings_table', 1),
(141, '2019_06_11_033455_create_publications_table', 1),
(142, '2019_06_11_033539_create_appointments_table', 1),
(143, '2019_06_11_033610_create_emergency_contacts_table', 1),
(144, '2019_06_11_033636_create_memberships_table', 1),
(145, '2019_06_11_033711_create_documents_table', 1),
(146, '2019_06_11_033727_create_postings_table', 1),
(147, '2019_06_11_033750_create_banks_table', 1),
(148, '2019_06_11_033816_create_chargings_table', 1),
(149, '2019_06_11_033838_create_dependents_table', 1),
(150, '2019_06_11_033908_create_projects_table', 1),
(151, '2019_06_13_042858_create_marital_status_table', 1),
(152, '2019_06_18_034020_create_blood_group_table', 1),
(153, '2019_06_25_023308_create_notifications_table', 1),
(154, '2019_06_26_075933_create_contact_number_table', 1),
(155, '2019_07_01_115137_create_promotions_table', 1),
(156, '2019_07_03_050124_create_document_names_table', 1),
(157, '2019_07_10_024002_create_nationalities_table', 1),
(158, '2019_07_21_091111_create_designations_table', 1),
(159, '2019_07_26_125656_create_sessions_table', 1),
(160, '2019_09_04_084409_create_events_table', 1),
(161, '2019_09_05_123356_create_leave_types_table', 1),
(162, '2019_09_05_124530_create_leave_requests_table', 1),
(163, '2019_09_05_130143_create_leave_initial_balances_table', 1),
(164, '2019_09_05_131346_create_leave_compensatories_table', 1),
(165, '2019_09_18_075556_create_genders_table', 1),
(166, '2019_10_04_121604_create_tasks_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `employee_id`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2019-07-31 10:15:04', '2019-07-31 10:15:04'),
(2, 1, 1, '2019-08-02 11:22:51', '2019-08-02 11:22:51'),
(3, 3, 1, '2019-08-02 15:23:46', '2019-08-02 15:23:46'),
(4, 4, 1, '2019-08-07 12:52:13', '2019-08-07 12:52:13'),
(5, 5, 1, '2019-08-16 13:13:56', '2019-08-16 13:13:56'),
(6, 6, 1, '2019-08-19 18:31:55', '2019-08-19 18:31:55'),
(7, 7, 1, '2019-08-21 09:46:35', '2019-08-21 09:46:35'),
(8, 8, 1, '2019-08-22 08:48:15', '2019-08-22 08:48:15'),
(9, 9, 1, '2019-08-22 06:37:31', '2019-08-22 06:37:31'),
(10, 10, 1, '2019-08-27 01:47:20', '2019-08-27 01:47:20'),
(11, 11, 1, '2019-08-27 03:52:14', '2019-09-18 05:29:33'),
(12, 12, 1, '2019-08-27 04:16:31', '2019-08-27 04:16:31'),
(13, 13, 1, '2019-08-27 05:54:08', '2019-08-27 05:54:08'),
(14, 14, 1, '2019-08-28 23:45:28', '2019-08-28 23:45:28'),
(15, 15, 1, '2019-08-29 00:25:49', '2019-08-29 00:25:49'),
(16, 16, 1, '2019-09-01 22:49:33', '2019-09-01 22:49:33'),
(17, 17, 1, '2019-09-01 23:06:57', '2019-09-01 23:06:57'),
(18, 18, 1, '2019-09-05 00:18:00', '2019-09-05 00:18:00'),
(19, 19, 1, '2019-09-12 02:09:28', '2019-09-12 02:09:28'),
(20, 20, 1, '2019-09-12 02:34:37', '2019-09-12 02:34:37'),
(21, 21, 1, '2019-09-19 05:21:48', '2019-09-19 05:21:48'),
(22, 22, 1, '2019-09-19 05:44:26', '2019-09-19 05:44:26'),
(23, 23, 1, '2019-09-25 06:26:27', '2019-09-25 06:26:27'),
(24, 24, 1, '2019-09-26 04:18:54', '2019-09-26 04:18:54'),
(25, 25, 1, '2019-09-30 04:36:05', '2019-09-30 04:36:05'),
(26, 26, 1, '2019-09-30 05:10:18', '2019-09-30 05:10:18'),
(27, 27, 1, '2019-10-02 06:05:38', '2019-10-02 06:05:38'),
(28, 28, 1, '2019-10-03 05:14:41', '2019-10-03 05:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_informations`
--

CREATE TABLE `other_informations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driving_licence` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_expiry` date DEFAULT NULL,
  `disability` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_expiry` date DEFAULT NULL,
  `kin_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kin_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kin_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kin_contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_informations`
--

INSERT INTO `other_informations` (`id`, `employee_id`, `blood_group`, `driving_licence`, `licence_expiry`, `disability`, `passport_no`, `passport_expiry`, `kin_name`, `kin_relation`, `kin_address`, `kin_contact_number`, `created_at`, `updated_at`) VALUES
(1, 1, '3', NULL, NULL, NULL, NULL, NULL, 'Muhammad Afzal', 'Father', 'House No.1, Street No.2, Rehman Park, Gulshan-e-Ravi, Lahore', '042-37418187', '2019-08-27 23:10:02', '2019-09-17 03:45:34'),
(2, 11, '1', '2007/7962', '2022-05-06', NULL, NULL, NULL, 'Tanzeel Jahangir', 'Wife', 'Same as Permanent Address', '0302-4587929', '2019-09-19 05:48:43', '2019-09-19 05:48:43'),
(3, 21, '2', '2006/952', '2020-10-27', NULL, NULL, NULL, 'Asma', 'Wife', 'H. No. 6, Johar Street, Jeewan Hana, Lahore', '0336-7095751', '2019-09-23 05:10:31', '2019-09-23 05:10:31'),
(4, 22, '2', 'LE-14-76584', '2019-11-23', NULL, NULL, NULL, 'Muhammad Idrees', 'Father', 'Etihad part, House No. 8, Block-B, Muhallah Stop Bank, Chongi Amersidhu, Lahore', '0300-8188386', '2019-09-23 05:14:59', '2019-09-23 05:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `employee_id`, `name`, `type`, `size`, `width`, `height`, `created_at`, `updated_at`) VALUES
(1, 2, '2-Athar Hussain Jaffry.png', 'image/png', '89091', '100', '100', '2019-07-31 11:43:58', '2019-08-27 03:43:44'),
(2, 3, '3.png', 'image/png', '82869', '100', '100', '2019-08-02 15:26:47', '2019-08-02 15:26:47'),
(3, 4, '4-Ahmad Khan Bhatti.png', 'image/png', '83855', '100', '100', '2019-08-09 11:45:04', '2019-08-27 03:43:20'),
(4, 6, '6-Muhammad  Zafar.png', 'image/png', '65575', '100', '100', '2019-08-19 18:34:19', '2019-08-27 03:45:45'),
(5, 7, '7-Mumtaz  Akhtar.png', 'image/png', '82490', '100', '100', '2019-08-21 09:47:46', '2019-08-27 03:46:02'),
(6, 8, '8-Naveed Akhtar Nawaz.png', 'image/png', '94798', '100', '100', '2019-08-22 06:16:38', '2019-08-27 03:46:39'),
(7, 9, '9-Rana Haider Faruq.png', 'image/png', '75219', '100', '100', '2019-08-22 06:39:10', '2019-08-27 03:46:19'),
(8, 11, '11-Muhammad  Rasheed.png', 'image/png', '90546', '100', '100', '2019-08-27 03:53:28', '2019-08-27 03:53:28'),
(9, 12, '12-Taseef  Ahmad.png', 'image/png', '81855', '100', '100', '2019-08-27 04:17:24', '2019-08-27 04:17:24'),
(10, 10, '10-Fakhar-e-Alam  Bhatti.png', 'image/png', '71893', '100', '100', '2019-08-27 04:34:33', '2019-08-27 04:34:33'),
(11, 13, '13-Muhammad  Taufeeq.png', 'image/png', '60359', '100', '100', '2019-08-27 05:54:45', '2019-08-27 05:54:45'),
(12, 14, '14-Kabir  Ahmad.png', 'image/png', '78927', '100', '100', '2019-08-28 23:50:13', '2019-08-28 23:50:13'),
(13, 15, '15-Nazir  Ahmad.png', 'image/png', '72123', '100', '100', '2019-08-29 00:27:19', '2019-08-29 00:27:19'),
(14, 16, '16-Ali  Arslan.png', 'image/png', '80213', '100', '100', '2019-09-01 22:53:09', '2019-09-01 22:53:09'),
(15, 17, '17-Naveed  Anwar.png', 'image/png', '74461', '100', '100', '2019-09-01 23:08:52', '2019-09-01 23:08:52'),
(16, 18, '18-Muhammad Rafiq Khan.png', 'image/png', '84018', '100', '100', '2019-09-05 00:29:38', '2019-09-05 00:29:38'),
(17, 19, '19-Noman  Ahmad.png', 'image/png', '96894', '100', '100', '2019-09-12 02:11:41', '2019-09-12 02:11:41'),
(18, 20, '20-Muhammad  Ashraf.png', 'image/png', '39311', '100', '100', '2019-09-12 02:35:13', '2019-09-12 02:35:13'),
(19, 21, '21-Zamir  Abbas.png', 'image/png', '166707', '100', '100', '2019-09-19 05:22:41', '2019-09-23 05:05:36'),
(20, 22, '22-Muhammad  Asif.png', 'image/png', '164306', '100', '100', '2019-09-19 05:45:48', '2019-09-23 04:59:15'),
(21, 23, '23-Muhammad  Sultan.png', 'image/png', '186825', '100', '100', '2019-09-25 06:27:52', '2019-09-25 06:27:52'),
(22, 24, '24-Muhammad  Waqas.png', 'image/png', '130997', '100', '100', '2019-09-26 04:31:21', '2019-09-26 04:31:21'),
(23, 1, '1-Sohail  Afzal.png', 'image/png', '115457', '100', '100', '2019-10-03 02:59:28', '2019-10-03 02:59:28'),
(24, 27, '27-Malik Zulfiqar Ali.png', 'image/png', '178674', '100', '100', '2019-10-03 04:33:50', '2019-10-03 04:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `postings`
--

CREATE TABLE `postings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `designation_id` bigint(191) NOT NULL,
  `posting_date` date NOT NULL,
  `project` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joining_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postings`
--

INSERT INTO `postings` (`id`, `employee_id`, `designation_id`, `posting_date`, `project`, `joining_date`, `location`, `manager_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2013-10-14', 'Overhead of the Company', '2013-10-14', 'Lahore', 4, '2019-08-07 13:01:52', '2019-08-07 13:01:52'),
(2, 5, 7, '2018-09-03', 'Overhead of the Company', '2018-09-03', 'Lahore', 4, '2019-08-16 13:20:23', '2019-08-16 13:20:23'),
(3, 6, 3, '2017-05-02', 'Overhead of the Company', '2017-05-09', 'Lahore', 4, '2019-08-19 18:54:44', '2019-08-19 18:54:44'),
(4, 7, 2, '2000-08-12', 'Overhead of the Company', '2000-08-12', 'Lahore', 4, '2019-08-21 13:49:26', '2019-08-21 13:49:26'),
(5, 8, 18, '2005-05-12', 'Overhead of the Company', '2005-05-12', 'Lahore', 7, '2019-08-22 09:21:35', '2019-08-22 01:38:48'),
(7, 12, 34, '2013-10-14', 'Overhead of the Company', '2013-10-14', 'Lahore', 4, '2019-08-27 04:22:30', '2019-08-27 04:22:30'),
(8, 13, 29, '2007-01-01', 'Overhead of the Company', '2007-01-01', 'LAHORE', 7, '2019-08-27 06:17:56', '2019-08-27 06:17:56'),
(9, 14, 25, '2001-12-07', 'Overhead of the Company', '2001-12-07', 'Lahore', 7, '2019-08-28 23:57:48', '2019-08-28 23:57:48'),
(10, 16, 16, '2009-08-10', 'Overhead of the Company', '2009-08-11', 'Lahore', 2, '2019-09-02 23:26:41', '2019-10-01 12:40:39'),
(11, 17, 29, '2006-11-07', 'Overhead of the Company', '2006-11-07', 'Lahore', 7, '2019-09-03 02:43:21', '2019-09-03 02:43:21'),
(12, 3, 24, '2000-08-09', 'Overhead of the Company', '2019-08-09', NULL, 7, '2019-09-04 00:00:52', '2019-09-04 00:00:52'),
(13, 18, 35, '2005-12-31', 'Overhead of the Company', '2005-12-31', NULL, 7, '2019-09-05 00:56:39', '2019-09-05 00:56:39'),
(14, 19, 28, '2009-08-19', 'Overhead of the Company', '2009-08-19', NULL, 7, '2019-09-12 02:17:36', '2019-09-12 02:17:36'),
(15, 11, 35, '2000-08-09', 'Overhead of the Company', '2000-08-09', NULL, 7, '2019-09-19 05:33:45', '2019-09-19 05:33:45'),
(16, 22, 34, '2000-08-08', 'Overhead of the Company', '1998-08-08', NULL, 7, '2019-09-19 05:47:11', '2019-09-19 05:47:11'),
(18, 23, 37, '2004-09-06', 'Overhead of the Company', '2004-09-06', NULL, 7, '2019-09-25 09:46:28', '2019-10-02 03:00:53'),
(19, 24, 20, '2001-11-07', 'Overhead of the Company', '2001-11-07', NULL, 5, '2019-09-26 04:26:23', '2019-09-26 04:26:23'),
(22, 25, 30, '2007-02-01', 'Overhead of the Company', '2007-02-01', NULL, 5, '2019-09-30 04:51:07', '2019-09-30 04:51:07'),
(23, 26, 20, '2018-04-05', 'Overhead of the Company', '2018-04-10', NULL, 5, '2019-09-30 05:14:09', '2019-09-30 05:14:09'),
(25, 1, 28, '2001-09-01', 'Overhead of the Company', '2001-09-01', 'Lahore', 3, '2019-10-03 03:03:45', '2019-10-03 03:03:45'),
(26, 27, 39, '2009-06-12', 'Overhead of the Company', '2009-06-12', NULL, 7, '2019-10-03 04:51:44', '2019-10-03 04:51:44'),
(27, 28, 30, '2009-04-03', 'Overhead of the Company', '2009-04-03', NULL, 7, '2019-10-03 05:22:35', '2019-10-03 05:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commencement` date NOT NULL,
  `contractual_completion` date DEFAULT NULL,
  `actual_completion` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `share` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `type`, `client`, `commencement`, `contractual_completion`, `actual_completion`, `status`, `role`, `share`, `created_at`, `updated_at`) VALUES
(1, 'Overhead of the Company', 'Time Based', 'BARQAAB Consulting Services (Pvt.)', '2000-05-09', '2030-01-01', NULL, 'In Progres', 'Independent', '100', NULL, NULL),
(2, '500kV Gatti Grid Station Extension Project', 'Time Based', 'NTDC', '2019-01-14', '2015-07-13', NULL, 'In Progres', 'Independent', '100', NULL, NULL),
(3, '500kV Neelum-Jhelum Transmission Line Project', 'Time Based', 'NTDC', '2017-01-01', '2019-11-30', NULL, 'In Progres', 'JV Partner', '35', NULL, NULL),
(4, '500 kV Transmission Line From Muzaffargarh To Gatti Project', 'Time Based', 'NTDC', '2005-11-01', '2008-09-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:19', '2019-08-26 22:37:19'),
(5, '500kV D.G Khan Allied Transmission Line of 500kV D.G Khan Grid Station (Part of GS Contract)', 'Time Based', 'NTDC', '2009-08-01', '2016-05-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(6, 'NTDC-KESC 500/220 kV Interconnection Project Associated Transmission Line (Part of GS Contract)', 'Time Based', 'NTDC', '2004-10-01', '2006-12-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(7, '500kV Shikarpur Grid Station Associated Transmission Line Project (Part of GS Contract)', 'Time Based', 'NTDC', '2011-01-01', '2017-03-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(8, '500kV Neelum-Jhelum Transmission Line Project', 'Time Based', 'NTDC', '2012-12-01', '2017-12-01', NULL, 'In Progress', 'JV Partner', '35% NESPAK Lead Firm', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(9, '220kV Chishtian – Vehari Transmission Line (Part of GS Contract)', 'Time Based', 'NTDC', '2010-10-01', '2016-11-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(10, '220KV Chashma - Ludewala  Transmission Line ', 'Time Based', 'NTDC', '2008-07-01', '2011-04-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(11, '220KV Transmission Line From D.G Khan To Loralai Project', 'Time Based', 'NTDC', '2010-06-01', '2013-11-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(12, '220KV Double Circuit In/Out Arrangement At 220kv Shalamar GIS Substation (Part of GS Contract)', 'Time Based', 'NTDC', '2010-05-03', '2012-10-09', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(13, '220kV Kassowal AIS Grid Station Associated Transmission Line (Part of GS Contract)', 'Time Based', 'NTDC', '2009-09-01', '2011-07-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(14, '220KV Transmission Line From New 220kv Rohri Grid Station To 220kv Shikarpur Grid Station Project', 'Time Based', 'NTDC', '2008-08-05', '2012-09-30', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(15, '132KV Transmission Line From New 220kv Rohri Grid Station To 132kv Gambat Grid Station Project', 'Time Based', 'NTDC', '2008-08-06', '2011-12-15', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(16, '132kV Pir Wadhai to MES Transmission Line (IESCO)', 'Lumpsum', 'IESCO', '2012-06-30', '2013-02-24', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(17, '132 kV Rewat – Nilore  Transmission Line (IESCO)', 'Lumpsum', 'IESCO', '2012-05-21', '2013-01-15', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(18, '132 kV University to Nilore Transmission Line (Re-Modeling) (IESCO)', 'Lumpsum', 'IESCO', '2012-05-09', '2013-01-03', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(19, '132kV Rewat to Chakri Transmission Line (IESCO)', 'Lumpsum', 'IESCO', '2011-07-22', '2012-04-20', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(20, '132kV Murree to Minhasa Transmission Line (IESCO)', 'Lumpsum', 'IESCO', '2011-04-15', '2012-07-08', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(21, '132kV Tararkhal to Hajeera Transmission Line (IESCO)', 'Lumpsum', 'IESCO', '2011-04-15', '2012-07-08', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(22, '132kv Tararkhal to Palandari Transmission Line (IESCO)', 'Lumpsum', 'IESCO', '2011-04-15', '2012-08-09', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(23, '132kv Azad Pattan to Pallandri Transmission Line (IESCO)', 'Lumpsum', 'IESCO', '2011-04-15', '2012-08-09', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(24, '132kv Dhudial to Kotli Transmission Line (IESCO)', 'Lumpsum', 'IESCO', '2011-04-18', '2012-08-09', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(25, '132kv Choa Saiden Sha to Dandot Transmission Line (IESCO)', 'Lumpsum', 'IESCO', '2011-09-20', '2012-06-20', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(26, '132kv Fateh Jang to Pindi Gheb Transmission Line (IESCO)', 'Lumpsum', 'IESCO', '2011-01-29', '2012-04-23', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(27, '132kv Dandot to Pinanwal Transmission Line (IESCO)', 'Lumpsum', 'IESCO', '2011-02-22', '2012-04-08', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(28, 'NTDC-KESC 500/220 kV Interconnection Project ', 'Time Based', 'NTDC', '2004-10-01', '2006-12-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(29, '500kV Muzaffargarh And Gatti Grid Stations Extension Project (Part of T/L Contract)', 'Time Based', 'NTDC', '2005-11-01', '2008-12-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(30, '500KV Gatti Grid Station Extension Project', 'Time Based', 'NTDC', '2008-06-01', '2009-07-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(31, '500KV Lahore (Sheikhupura) Grid Station Extension Project', 'Time Based', 'NTDC', '2008-01-01', '2009-02-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(32, '500/220kV D.G Khan Substation ', 'Time Based', 'NTDC', '2009-08-01', '2016-05-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(33, '500/220Kv Ghazi Brotaha Grid Station Extension Project ', 'Time Based', 'NTDC', '2009-08-01', '2016-02-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(34, '500kV Shikarpur Grid Station Project', 'Time Based', 'NTDC', '2011-01-01', '2017-03-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(35, '220kV Chishtian & Vehari Grid Station', 'Time Based', 'NTDC', '2010-10-01', '2016-11-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:20', '2019-08-26 22:37:20'),
(36, '220KV Chashma & Ludewala Grid Station Extension Project (Part of T/L Contract)', 'Time Based', 'NTDC', '2008-07-01', '2011-04-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(37, '220kV Hala Road Hyderabad Grid Station Extension Project', 'Time Based', 'NTDC', '2008-09-01', '2009-10-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(38, '220kV Bahawalpur Grid Station Extension Project', 'Time Based', 'NTDC', '2008-09-01', '2009-10-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(39, '220kV Yousafwala Grid Station Extension Project', 'Time Based', 'NTDC', '2008-09-01', '2009-09-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(40, '220kV Ludewala Grid Station Extension Project', 'Time Based', 'NTDC', '2009-01-01', '2009-08-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(41, '220kV GIS Wapda Town Grid Station Extension Project', 'Time Based', 'NTDC', '2009-02-01', '2011-06-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(42, '220kV Bannu Grid Station Extension Project', 'Time Based', 'NTDC', '2009-10-01', '2012-03-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(43, '220kV AIS Grid Station At Kassowal ', 'Time Based', 'NTDC', '2010-06-01', '2014-06-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(44, '220kV/132kV GIS Shalamar Substation ', 'Time Based', 'NTDC', '2008-11-01', '2014-03-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(45, '220kV Rohri Grid Station And Shikarpur Grid Station Project', 'Time Based', 'NTDC', '2010-02-01', '2013-06-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(46, '132kV GIS Saggian Grid Station Project', 'Lumpsum', 'LESCO', '2012-04-01', '2016-06-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(47, '132kV AIS Mominpura Gridstation Project', 'Lumpsum', 'LESCO', '2012-07-01', '2014-12-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(48, 'Three 132kV Grid Station Under 2nd Rural Electrification Project QESCO', 'Time Based', 'QESCO', '2008-05-01', '2013-08-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(49, '132kV Dandot Grid Station  under 6th STG & ELR Project IESCO', 'Lumpsum', 'IESCO', '2011-12-01', '2012-10-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(50, '132kV Pinanwal Grid Station  under 6th STG & ELR Project IESCO', 'Lumpsum', 'IESCO', '2011-01-03', '2012-11-15', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(51, '132kV Ahmadal Grid Station  under 6th STG & ELR Project IESCO', 'Lumpsum', 'IESCO', '2011-12-29', '2012-10-30', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(52, '132kV Pinidi Gheb Grid Station  under 6th STG & ELR Project IESCO', 'Lumpsum', 'IESCO', '2011-12-29', '2012-10-30', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(53, '132kV Hajeera Grid Station  under 6th STG & ELR Project IESCO', 'Lumpsum', 'IESCO', '2011-12-03', '2012-10-30', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(54, '132kV Palandari Grid Station  under 6th STG & ELR Project IESCO', 'Lumpsum', 'IESCO', '2011-12-03', '2012-10-30', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(55, '132kV Minhasa Grid Station  under 6th STG & ELR Project IESCO', 'Lumpsum', 'IESCO', '2011-12-29', '2012-10-30', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(56, '132kV Fateh Jang Grid Station  under 6th STG & ELR Project IESCO', 'Lumpsum', 'IESCO', '2011-12-29', '2012-10-30', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(57, '132kV Azad Pattan Grid Station  under 6th STG & ELR Project IESCO', 'Lumpsum', 'IESCO', '2011-12-29', '2012-10-30', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(58, '132kV Choa Saiden Shah Grid Station  under 6th STG & ELR Project IESCO', 'Lumpsum', 'IESCO', '2011-12-29', '2012-10-30', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(59, '132kV Tararkhal Grid Station  under 6th STG & ELR Project IESCO', 'Lumpsum', 'IESCO', '2011-12-29', '2012-10-30', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(60, '132kV Pirwadhai Grid Station  under 6th STG & ELR Project IESCO', 'Lumpsum', 'IESCO', '2011-12-29', '2012-10-30', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(61, '220Kv Loralai Grid Station Project', 'Time Based', 'NTDC', '2011-03-01', '2013-11-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(62, '220kV Dadu-Khuzadar TL System', 'Time Based', 'NTDC', '2006-12-01', '2015-06-01', NULL, 'Completed', 'JV Partner', '35% NESPAK Lead Firm', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(63, '220kV Dadu-Khuzadar TL System', 'Time Based', 'NTDC', '2006-12-01', '2015-06-01', NULL, 'Completed', 'JV Partner', '35% NESPAK Lead Firm', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(64, '132kV Bahwal Industrial Estate Grid Station Project', 'Lumpsum', 'PIE', '2016-03-01', '2018-06-01', NULL, 'In Progress', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(65, '132kV Rahim Yar Khan Industrial Estate Grid Station Project', 'Lumpsum', 'PIE', '2016-03-01', '2018-06-01', NULL, 'In Progress', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(66, '132kV Sundar Industrial Estate Grid Station Extension Project', 'Lumpsum', 'PIE', '2016-03-01', '2017-06-01', NULL, 'In Progress', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(67, '500kV Faisalabad West Grid Station and Transmission Line Project - Phase-I', 'Time Based', 'NTDC', '2016-03-17', '2017-10-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(68, '500kV Faisalabad West Grid Station and Transmission Line Project - Phase-II', 'Time Based', 'NTDC', '2016-03-17', '2017-10-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(69, '500KV Transmission Line for Dispersal of Power from Haveli Bahadur Shah Power Plant', 'Time Based', 'NTDC', '2016-07-18', '2018-03-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(70, '220kV Transmission Lines Included in Tranche-IV of Power Transmission Enhancement Investment Program', 'Time Based', 'NTDC', '2017-03-10', '2019-08-01', NULL, 'In Progress', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(71, '220kV Grid StationsIncluded in Tranche-IV of Power Transmission Enhancement Investment Program', 'Time Based', 'NTDC', '2017-03-10', '2019-06-01', NULL, 'In Progress', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(72, '220kv Transmission Lines and 220kV Toba Tek Singh Grid Station Extension Works for the Evacuation of Power from 1230MW RLNG Based Power Plant at Trimmu', 'Time Based', 'NTDC', '2017-09-01', '2018-08-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(73, '±660kV 4000MW Bipole HVdc Matiari-Lahore Transmission Project ', 'Time Based', 'NTDC', '2018-03-06', '2020-03-01', NULL, 'In Progress', 'JV Partner', 'JV with Hatch and ACE', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(74, 'MEPCO 132kV Grid Stations Project', 'Lumpsum', 'MEPCO', '2017-12-01', '2019-11-01', NULL, 'In Progress', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(75, 'MEPCO 132kV Transmission Lines Project', 'Lumpsum', 'MEPCO', '2017-12-01', '2019-11-01', NULL, 'In Progress', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(76, 'FESCO 132kV T/L Survey Project', 'Lumpsum', 'FESCO', '2018-02-01', '2018-05-01', NULL, 'Completed', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(77, '132kV GIS (MOC) DHA Lahore Grid Station & T/L', 'Lumpsum', 'DHA', '2018-05-01', '2019-09-01', NULL, 'In Progress', 'Independent', '100', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(78, '500kV Quad Bundle D/C Transmission Line from HUBCO Power Plant to Jamshoro Grid Station', 'Time Based', 'NTDC', '2018-08-01', '2019-09-01', NULL, 'In Progress', 'JV Partner', '0.35', '2019-08-26 22:37:21', '2019-08-26 22:37:21'),
(79, '132kV DHA-1 Grid Station Extension and 132kV Creek City Grid Stations Extension Project, DHA Karachi', 'Time Based', 'DHA, Karachi', '2018-10-01', '2019-05-01', NULL, 'In Progress', 'Lead Partner', '0.4', '2019-08-26 22:37:21', '2019-08-26 22:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `designation_id` bigint(191) NOT NULL,
  `effective_date` date NOT NULL,
  `promotion_remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `employee_id`, `designation_id`, `effective_date`, `promotion_remarks`, `created_at`, `updated_at`) VALUES
(1, 6, 3, '2018-03-01', 'Promoted as same position and Grade-02 in Cat-A with all facilities', '2019-08-19 18:47:51', '2019-08-19 18:48:16'),
(2, 6, 3, '2018-09-27', 'Promoted in Grade 1 with two increments on same Designation', '2019-08-19 18:53:10', '2019-08-19 18:53:10'),
(3, 7, 2, '2001-09-01', 'Promoted from Grade-2 to Grade-1', '2019-08-22 05:56:28', '2019-08-22 05:56:28'),
(4, 16, 18, '2016-06-09', 'From Grade-9 to Grade-8 vide Office Order No. BQB/Admin/MA/445 dated June 09, 2016', '2019-09-01 23:03:17', '2019-09-02 02:49:18'),
(5, 16, 16, '2014-12-31', 'Regular Category-A Grade-9 with two increments vide Office Order No. BQB/MA/09-19/115 dated March 09, 2015', '2019-09-02 02:48:09', '2019-09-02 23:12:02'),
(6, 3, 24, '2005-05-17', 'Upgrading from Grade-11 to Grade-10 vide Office Order No. BQB/A/03/05/MA/374 dated May 17, 2005', '2019-09-04 00:15:38', '2019-09-04 23:54:51'),
(7, 19, 28, '2015-03-09', NULL, '2019-09-12 02:22:04', '2019-09-12 02:22:04'),
(8, 20, 35, '2001-06-23', NULL, '2019-09-12 02:39:26', '2019-09-12 02:39:26'),
(9, 21, 34, '2009-11-12', NULL, '2019-09-19 05:36:29', '2019-09-19 05:36:29'),
(11, 11, 34, '2010-01-01', 'Promote from Utility Person to Driver with Grade-12', '2019-09-19 05:40:52', '2019-09-19 05:40:52'),
(12, 22, 34, '2001-08-31', NULL, '2019-09-19 05:50:25', '2019-09-19 05:50:25'),
(13, 23, 37, '2005-04-01', NULL, '2019-09-25 09:59:32', '2019-09-25 09:59:32'),
(14, 24, 20, '2004-03-03', NULL, '2019-09-26 10:00:14', '2019-09-26 10:00:14'),
(15, 24, 20, '2007-06-16', NULL, '2019-09-26 10:01:05', '2019-09-26 10:01:05'),
(16, 24, 38, '2010-02-03', NULL, '2019-09-26 10:05:12', '2019-09-26 10:05:12'),
(17, 24, 38, '2016-06-09', NULL, '2019-09-26 10:05:49', '2019-09-26 10:05:49'),
(18, 25, 20, '2010-07-01', NULL, '2019-09-30 04:56:08', '2019-09-30 04:56:08'),
(19, 25, 20, '2014-02-27', NULL, '2019-09-30 04:59:23', '2019-09-30 04:59:23'),
(20, 27, 26, '2010-07-01', NULL, '2019-10-03 04:58:23', '2019-10-03 04:58:23'),
(21, 27, 26, '2014-02-27', NULL, '2019-10-03 04:59:27', '2019-10-03 04:59:27'),
(22, 28, 30, '2015-03-15', NULL, '2019-10-03 05:33:04', '2019-10-03 05:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Developer', NULL, NULL),
(2, 'HR Manager', NULL, NULL),
(3, 'Manager', NULL, NULL),
(4, 'HR Assistant', NULL, NULL),
(5, 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `basic_pay` double DEFAULT NULL,
  `house_rent` double DEFAULT NULL,
  `dearness_allowance` double DEFAULT NULL,
  `adhoc_2009` double DEFAULT NULL,
  `adhoc_2010` double DEFAULT NULL,
  `adhoc_2012` double DEFAULT NULL,
  `adhoc_2013` double DEFAULT NULL,
  `field_allowance` double DEFAULT NULL,
  `other_allowance` double DEFAULT NULL,
  `total` double NOT NULL,
  `promotion_id` bigint(20) DEFAULT NULL,
  `salary_remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `employee_id`, `basic_pay`, `house_rent`, `dearness_allowance`, `adhoc_2009`, `adhoc_2010`, `adhoc_2012`, `adhoc_2013`, `field_allowance`, `other_allowance`, `total`, `promotion_id`, `salary_remarks`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 214675, NULL, NULL, '2019-08-16 13:18:52', '2019-08-16 13:18:52'),
(2, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 206934, NULL, NULL, '2019-08-19 18:43:23', '2019-08-19 18:43:23'),
(3, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 206934, 1, NULL, '2019-08-19 18:47:51', '2019-08-19 18:47:51'),
(4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 242725, 2, NULL, '2019-08-19 18:53:11', '2019-08-19 18:53:11'),
(5, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22680, NULL, NULL, '2019-08-22 09:11:14', '2019-08-22 09:11:14'),
(6, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43750, NULL, NULL, '2019-08-22 05:52:46', '2019-08-22 05:52:46'),
(7, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49000, 3, NULL, '2019-08-22 05:56:28', '2019-08-22 05:56:28'),
(8, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22725, NULL, NULL, '2019-08-27 04:19:03', '2019-08-27 04:19:03'),
(9, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45199, NULL, NULL, '2019-09-01 22:59:32', '2019-09-02 02:41:59'),
(10, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 95293, 4, NULL, '2019-09-01 23:03:17', '2019-09-02 02:50:48'),
(11, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51420, NULL, NULL, '2019-09-01 23:18:10', '2019-09-01 23:18:10'),
(12, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 76593, 5, NULL, '2019-09-02 02:48:10', '2019-09-02 02:48:10'),
(13, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, NULL, NULL, '2019-09-03 23:58:44', '2019-09-03 23:58:44'),
(14, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18192, 6, NULL, '2019-09-04 00:15:38', '2019-09-04 00:28:03'),
(15, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7590, NULL, NULL, '2019-09-05 00:54:50', '2019-09-05 00:54:50'),
(16, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13500, NULL, NULL, '2019-09-12 02:16:12', '2019-09-12 02:16:12'),
(17, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32219, 7, NULL, '2019-09-12 02:22:04', '2019-09-12 02:22:04'),
(18, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, NULL, NULL, '2019-09-12 02:37:31', '2019-09-12 02:37:31'),
(19, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7344, 8, NULL, '2019-09-12 02:39:26', '2019-09-12 02:39:26'),
(20, 1, 5400, 2160, 540, NULL, NULL, NULL, NULL, NULL, 60, 8160, NULL, NULL, '2019-09-17 03:07:41', '2019-10-03 03:02:38'),
(21, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, NULL, NULL, '2019-09-19 05:31:12', '2019-09-19 05:31:12'),
(22, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6500, NULL, NULL, '2019-09-19 05:33:28', '2019-09-19 05:33:28'),
(23, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23699, 9, NULL, '2019-09-19 05:36:29', '2019-09-19 05:36:29'),
(24, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29019, 11, NULL, '2019-09-19 05:40:52', '2019-09-19 05:41:32'),
(25, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, NULL, NULL, '2019-09-19 05:48:53', '2019-09-19 05:48:53'),
(26, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6816, 12, NULL, '2019-09-19 05:50:25', '2019-09-19 05:50:25'),
(27, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11138, NULL, NULL, '2019-09-25 06:37:53', '2019-09-25 06:37:53'),
(28, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19500, 13, NULL, '2019-09-25 09:59:32', '2019-09-25 09:59:32'),
(29, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10850, NULL, NULL, '2019-09-26 04:35:17', '2019-09-26 04:35:17'),
(30, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20310, 14, NULL, '2019-09-26 10:00:14', '2019-09-26 10:00:14'),
(31, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53233, 15, NULL, '2019-09-26 10:01:05', '2019-09-26 10:01:05'),
(32, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 103791, 16, NULL, '2019-09-26 10:05:12', '2019-09-26 10:05:12'),
(33, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120912, 17, NULL, '2019-09-26 10:05:49', '2019-09-26 10:05:49'),
(34, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, NULL, NULL, '2019-09-30 04:49:10', '2019-09-30 04:49:10'),
(35, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17323, 18, NULL, '2019-09-30 04:56:08', '2019-09-30 04:56:08'),
(36, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69674, 19, NULL, '2019-09-30 04:59:23', '2019-09-30 04:59:23'),
(37, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 73367, NULL, NULL, '2019-09-30 05:13:06', '2019-09-30 05:13:06'),
(38, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16000, NULL, NULL, '2019-10-03 04:49:32', '2019-10-03 04:49:32'),
(39, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52185, 20, NULL, '2019-10-03 04:58:23', '2019-10-03 04:58:23'),
(40, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52185, 21, NULL, '2019-10-03 04:59:27', '2019-10-03 04:59:27'),
(41, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, NULL, NULL, '2019-10-03 05:18:43', '2019-10-03 05:18:43'),
(42, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42185, 22, NULL, '2019-10-03 05:33:04', '2019-10-03 05:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DW5hcoapkzdN62KTnzbAoojj8NnhYPjuOCmxci2W', 13, '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYmltNkhFb3dSU0lUaU9MaFJyVkprT0NXU1FYeXhyS1lkUVJWV1dtOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xOTIuMTY4LjEuMTAvaHJtcy9wdWJsaWMvaHJtcy9lbXBsb3llZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEzO30=', 1570185329),
('f0SxjBqqGWSVKM6MoVeNSdU1jiOXZro4ou7fS3yT', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN21qaXZMR0FQMmxsN1pscDZNdGZTS0wxRkJCZjFyWjBRZnhFN3BwMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3QvaHJtcy9wdWJsaWMvbG9naW4iO31zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L2hybXMvcHVibGljL2Rhc2hib2FyZCI7fX0=', 1570192844),
('lPNXxXvUAcuB8IDi0mk7nl7qsdfwEVequRPLLtG6', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUjFkeW00Z01NNWNnVE5GclNxV0RCUDdIeUJLbTVtWGRub1BXYWRrZyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozODoiaHR0cDovL2xvY2FsaG9zdC9ocm1zL3B1YmxpYy9kYXNoYm9hcmQiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNDoiaHR0cDovL2xvY2FsaG9zdC9ocm1zL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1570192877);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `task_detail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completion_date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 pending, 1 completed',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `employee_id`, `task_detail`, `completion_date`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(4, 14, 'Kabir Ahmad', '2019-10-25', 0, NULL, '2019-10-04 12:20:36', '2019-10-04 12:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `venue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `employee_id`, `title`, `venue`, `institute`, `country_id`, `description`, `from`, `to`, `created_at`, `updated_at`) VALUES
(1, 4, 'Training with Dillingham Construction Company', 'Tarbela', NULL, 1, 'Training with Dillingham Construction Company on Power&nbsp; House Extension Pojrect, Tarbela, Pakistan - 3 months', NULL, NULL, '2019-08-07 13:20:49', '2019-08-07 13:20:49'),
(2, 4, 'Senior Manager Course', 'WAPDA Staff College', NULL, 1, 'Senior Manager Course - 4 months', NULL, NULL, '2019-08-07 13:22:56', '2019-08-07 13:22:56'),
(3, 4, 'Land drainage Course', 'WAPDA', NULL, 1, 'Land Drainage Course, WAPDA, Lahore', NULL, NULL, '2019-08-07 13:23:37', '2019-08-07 13:23:37'),
(4, 13, 'AutoCAD Course', NULL, NULL, 1, 'AutoCAD course for making drawing', NULL, NULL, '2019-08-27 06:27:41', '2019-08-27 06:27:41'),
(5, 13, 'Health & Safety Officer', NULL, NULL, 1, 'Health &amp; Safety Officer Course', NULL, NULL, '2019-08-27 06:28:28', '2019-08-27 06:28:28'),
(6, 13, 'IOSH', NULL, NULL, 3, 'IOSH Managing Safely Course', NULL, NULL, '2019-08-27 06:30:38', '2019-08-27 06:30:38'),
(7, 13, 'Computer Operator / Office Assistant Course', NULL, NULL, 1, 'Computer Operator / Office Assistant Course from VTI Shadman', NULL, NULL, '2019-08-27 06:32:12', '2019-08-27 06:32:12'),
(8, 13, 'Web & Graphic Designing', NULL, NULL, 1, 'Web &amp; Graphic Designing Course from Punjab University&nbsp;', NULL, NULL, '2019-08-27 06:33:32', '2019-08-27 06:33:32'),
(9, 13, 'Diploma in Computer Apps', NULL, NULL, 1, 'Dipmloma in Computer Applications', NULL, NULL, '2019-08-27 06:34:27', '2019-08-27 06:34:27'),
(10, 1, 'Laravel', NULL, NULL, 1, 'Laravel', NULL, NULL, '2019-09-18 07:45:13', '2019-09-18 07:46:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$2y$10$IyjCTJhv0t4BLfbmh5l9XOHmQJAsPlvgwFT4n7jPB98jlWPYD7Thi',
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT '5',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `role_id`, `user_status`, `employee_id`, `session_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sohail.afzal@barqaab.com', NULL, '$2y$10$LIBKm174tSn4tCsXWqGJEu.tmvi2s/HwNfG0bxYCjlq/SnTbDKCJK', 1, 1, 1, 'lPNXxXvUAcuB8IDi0mk7nl7qsdfwEVequRPLLtG6', '1ivgJgF0q55Iq4tJwprmFmJXodxzWnaD1xFHVdOPRjNNKWV32LkzaYWc5nyO', NULL, '2019-10-04 09:23:45'),
(3, 'massive.consultants@yahoo.com', NULL, '$2y$10$ATn.aat/M5qtlVm4lnJYYOGmToZbhChMIEhscnVbWpIGNYsyT58yO', 5, 2, 3, '', NULL, '2019-08-02 15:24:34', '2019-08-30 00:07:22'),
(13, 'taufeeq240808@gmail.com', NULL, '$2y$10$JrHufTeSrkgGuqQ6wmdoK.HjMAdRY8K4pLa6wSVV0oHN0NG6wBKhy', 4, 1, 13, 'DW5hcoapkzdN62KTnzbAoojj8NnhYPjuOCmxci2W', 'SF9tuoGneu5k55vJ9PqQGI0hFHKJAQsleC2MvSqvNiJDu3y652YyS3MpuukX', '2019-08-30 04:37:26', '2019-10-04 10:07:28'),
(14, 'sohail@barqaab.com', NULL, '$2y$10$FgAe7mDna2TjtJRRCbNtd.CSQPQnEiV8J725KvfJHDjTrZKTxn4Uy', 4, 1, 14, 'f0SxjBqqGWSVKM6MoVeNSdU1jiOXZro4ou7fS3yT', NULL, '2019-09-03 06:03:08', '2019-10-04 12:41:04'),
(15, 'athar.hussain@barqaab.com', NULL, '$2y$10$9yC1ythyh3iqrONTZjpSqe/Yd1h8mga2ZGJMJArgpykOU06H9dJr.', 4, 1, 2, '6w4C8KuOwrgCOJzsmZuVnNRS38YdbCn8OWlw37By', NULL, '2019-09-13 09:36:26', '2019-10-03 04:32:58'),
(16, 'javedsultan92@yahoo.com', NULL, '$2y$10$IyjCTJhv0t4BLfbmh5l9XOHmQJAsPlvgwFT4n7jPB98jlWPYD7Thi', 5, 0, 23, NULL, NULL, '2019-09-25 06:27:14', '2019-09-25 06:27:14'),
(17, 'barqaabaccount@yahoo.com', NULL, '$2y$10$IyjCTJhv0t4BLfbmh5l9XOHmQJAsPlvgwFT4n7jPB98jlWPYD7Thi', 5, 0, 24, NULL, NULL, '2019-09-26 04:21:04', '2019-09-26 04:21:04'),
(18, 'imran@barqaab.com', NULL, '$2y$10$IyjCTJhv0t4BLfbmh5l9XOHmQJAsPlvgwFT4n7jPB98jlWPYD7Thi', 5, 0, 25, NULL, NULL, '2019-09-30 04:36:43', '2019-09-30 04:36:43'),
(19, 'w.Ahmad@barqaab.com', NULL, '$2y$10$IyjCTJhv0t4BLfbmh5l9XOHmQJAsPlvgwFT4n7jPB98jlWPYD7Thi', 5, 0, 26, NULL, NULL, '2019-09-30 05:10:54', '2019-09-30 05:10:54'),
(20, 'zulfimalik@yahoo.com', NULL, '$2y$10$IyjCTJhv0t4BLfbmh5l9XOHmQJAsPlvgwFT4n7jPB98jlWPYD7Thi', 5, 0, 27, NULL, NULL, '2019-10-02 06:06:31', '2019-10-02 06:06:31'),
(21, 'majidrafi@barqaab.com', NULL, '$2y$10$IyjCTJhv0t4BLfbmh5l9XOHmQJAsPlvgwFT4n7jPB98jlWPYD7Thi', 5, 0, 28, NULL, NULL, '2019-10-03 05:15:12', '2019-10-03 05:15:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_languages`
--
ALTER TABLE `all_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `appointments_employee_id_unique` (`employee_id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banks_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `blood_group`
--
ALTER TABLE `blood_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chargings`
--
ALTER TABLE `chargings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chargings_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `contact_numbers`
--
ALTER TABLE `contact_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dependents`
--
ALTER TABLE `dependents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dependents_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `document_names`
--
ALTER TABLE `document_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `educations_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emergency_contacts_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_cnic_unique` (`cnic`),
  ADD UNIQUE KEY `employees_employee_no_unique` (`employee_no`),
  ADD KEY `employees_division_id_foreign` (`division_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiences_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `leave_compensatories`
--
ALTER TABLE `leave_compensatories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_compensatories_manager_id_foreign` (`manager_id`),
  ADD KEY `leave_compensatories_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `leave_initial_balances`
--
ALTER TABLE `leave_initial_balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_initial_balances_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_requests_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leave_types_name_unique` (`name`);

--
-- Indexes for table `marital_status`
--
ALTER TABLE `marital_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memberships_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nationalities_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `other_informations`
--
ALTER TABLE `other_informations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `other_informations_employee_id_unique` (`employee_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pictures_employee_id_unique` (`employee_id`);

--
-- Indexes for table `postings`
--
ALTER TABLE `postings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postings_manager_id_foreign` (`manager_id`),
  ADD KEY `postings_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publications_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salaries_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainings_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_employee_id_unique` (`employee_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_languages`
--
ALTER TABLE `all_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1394;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_group`
--
ALTER TABLE `blood_group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chargings`
--
ALTER TABLE `chargings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `contact_numbers`
--
ALTER TABLE `contact_numbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `dependents`
--
ALTER TABLE `dependents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `document_names`
--
ALTER TABLE `document_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `leave_compensatories`
--
ALTER TABLE `leave_compensatories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_initial_balances`
--
ALTER TABLE `leave_initial_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `marital_status`
--
ALTER TABLE `marital_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `other_informations`
--
ALTER TABLE `other_informations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `postings`
--
ALTER TABLE `postings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `banks`
--
ALTER TABLE `banks`
  ADD CONSTRAINT `banks_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `chargings`
--
ALTER TABLE `chargings`
  ADD CONSTRAINT `chargings_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `dependents`
--
ALTER TABLE `dependents`
  ADD CONSTRAINT `dependents_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `educations`
--
ALTER TABLE `educations`
  ADD CONSTRAINT `educations_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD CONSTRAINT `emergency_contacts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`);

--
-- Constraints for table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `leave_compensatories`
--
ALTER TABLE `leave_compensatories`
  ADD CONSTRAINT `leave_compensatories_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `leave_compensatories_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `leave_initial_balances`
--
ALTER TABLE `leave_initial_balances`
  ADD CONSTRAINT `leave_initial_balances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD CONSTRAINT `leave_requests_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `memberships`
--
ALTER TABLE `memberships`
  ADD CONSTRAINT `memberships_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD CONSTRAINT `nationalities_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `other_informations`
--
ALTER TABLE `other_informations`
  ADD CONSTRAINT `other_informations_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `pictures_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `postings`
--
ALTER TABLE `postings`
  ADD CONSTRAINT `postings_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `postings_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `publications`
--
ALTER TABLE `publications`
  ADD CONSTRAINT `publications_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `trainings`
--
ALTER TABLE `trainings`
  ADD CONSTRAINT `trainings_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
