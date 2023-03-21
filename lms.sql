-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 21, 2023 at 03:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `unique_identifier`, `version`, `status`, `created_at`, `updated_at`, `about`, `purchase_code`) VALUES
(1, 'Course Bundle', 'course_bundle', '1.2', 1, 1616454000, NULL, 'Course Bundle allows you to sell multiple courses at once. You can sell the bundle on the subscription system.', NULL),
(2, 'Noticeboard', 'noticeboard', '1.0', 1, 1616454000, NULL, 'You can display notifications for students enrolled in your course, and you can also send important notifications to their emails using this add-on.', NULL),
(3, 'Assignment', 'assignment', '1.1', 1, 1616454000, NULL, 'You can create assignments for students enrolled in your course, and review the submitted assignment to know the course progress of your enrolled students using this add-on.', NULL),
(4, 'Course Analytics', 'course_analytics', '1.0', 1, 1616454000, NULL, 'You will be able to see the course progress for all enrolled students here. Which will help you understand the needs of your students. On the left side of the chart, you will see the range of the top number of students, and on the bottom of the chart, you will see the range of percentage. Also, you will able to see the table of the chart on the right side.', NULL),
(5, 'Live Class', 'live-class', '1.4', 1, 1616454000, NULL, 'Live Class addon adds an essential feature to Academy. Nowadays Live class has become so popular that it becomes necessary. On that note we decided to add Zoom in our application.', NULL),
(6, 'Course Forum', 'forum', '1.0', 1, 1616454000, NULL, 'It opportunity the user to any questions or answers about courses.', NULL),
(7, 'Ebook', 'ebook', '1.0', 1, 1616454000, NULL, 'An ebook (short for electronic book), also known as an e-book or eBook, is a book publication made available in digital form, consisting of text, images, or both, readable on the flat-panel display of computers or other electronic devices.[1] Although sometimes defined as an electronic version of a printed book,[2] some e-books exist without a printed equivalent. E-books can be read on dedicated e-reader devices, but also on any computer device that features a controllable viewing screen, including desktop computers, laptops, tablets, and smartphones.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `questions` longtext DEFAULT NULL,
  `question_file` varchar(255) DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL,
  `deadline_date` varchar(255) DEFAULT NULL,
  `deadline_time` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `added_date` varchar(255) DEFAULT NULL,
  `updated_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_submission`
--

CREATE TABLE `assignment_submission` (
  `submission_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `assignment_id` int(11) DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `answer_file` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `review_status` varchar(255) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `added_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `description` longtext NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `is_popular` int(11) NOT NULL,
  `likes` longtext NOT NULL,
  `added_date` varchar(100) NOT NULL,
  `updated_date` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `added_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `blog_comment_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `likes` longtext NOT NULL,
  `added_date` varchar(100) NOT NULL,
  `updated_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_payment`
--

CREATE TABLE `bundle_payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bundle_creator_id` int(11) DEFAULT NULL,
  `bundle_id` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT 0,
  `date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_rating`
--

CREATE TABLE `bundle_rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bundle_id` int(11) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `rating` varchar(15) DEFAULT NULL,
  `date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT 0,
  `slug` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('blsi75v3q86s84lg6pk7v33e8gmsicsi', '::1', 1679400033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393430303033333b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('vi07oe5cdbmkep3tsc528dlj1bvd1ic0', '::1', 1679400033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393430303033333b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('fs5i6irf99sgpnber77l2dinha6pluiq', '::1', 1679400033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393430303033333b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('67pfnqki0ci8j264rg79k8uevdrdo9jq', '::1', 1679400033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393430303033333b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('qkhvafe2n11altd4i6t6p6dbl1au70q5', '::1', 1679400033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393430303033333b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('8d26pff4tmg127ij9hfe9fi800mp7j1b', '::1', 1679410120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393430303033333b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313638303237343132303b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31303a22457273696e20486f6361223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b666c6173685f6d6573736167657c733a32383a224164646f6e20696e7374616c6c6564207375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` longtext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `discount_percentage` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `outcomes` longtext DEFAULT NULL,
  `faqs` text NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext DEFAULT NULL,
  `requirements` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT 0,
  `discounted_price` double DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `course_type` varchar(255) DEFAULT NULL,
  `is_top_course` int(11) DEFAULT 0,
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `course_overview_provider` varchar(255) DEFAULT NULL,
  `meta_keywords` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `is_free_course` int(11) DEFAULT NULL,
  `multi_instructor` int(11) NOT NULL DEFAULT 0,
  `enable_drip_content` int(11) NOT NULL,
  `creator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_bundle`
--

CREATE TABLE `course_bundle` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `course_ids` longtext DEFAULT NULL,
  `subscription_limit` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT 0,
  `bundle_details` longtext DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_forum`
--

CREATE TABLE `course_forum` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `upvoted_user_id` longtext DEFAULT NULL,
  `is_parent` int(11) DEFAULT 0,
  `date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `ccavenue_supported` int(11) DEFAULT 0,
  `iyzico_supported` int(11) DEFAULT 0,
  `paystack_supported` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES
(1, 'US Dollar', 'USD', '$', 1, 1, 0, 0, 0),
(2, 'Albanian Lek', 'ALL', 'Lek', 0, 1, 0, 0, 0),
(3, 'Algerian Dinar', 'DZD', 'دج', 1, 1, 0, 0, 0),
(4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1, 0, 0, 0),
(5, 'Argentine Peso', 'ARS', '$', 1, 1, 0, 0, 0),
(6, 'Armenian Dram', 'AMD', '֏', 1, 1, 0, 0, 0),
(7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1, 0, 0, 0),
(8, 'Australian Dollar', 'AUD', '$', 1, 1, 0, 0, 0),
(9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1, 0, 0, 0),
(10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1, 0, 0, 0),
(11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1, 0, 0, 0),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1, 0, 0, 0),
(13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1, 0, 0, 0),
(14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0, 0, 0, 0),
(15, 'Belgian Franc', 'BEF', 'fr', 1, 1, 0, 0, 0),
(16, 'Belize Dollar', 'BZD', '$', 1, 1, 0, 0, 0),
(17, 'Bermudan Dollar', 'BMD', '$', 1, 1, 0, 0, 0),
(18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1, 0, 0, 0),
(19, 'Bitcoin', 'BTC', '฿', 1, 1, 0, 0, 0),
(20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1, 0, 0, 0),
(21, 'Bosnia', 'BAM', 'KM', 1, 1, 0, 0, 0),
(22, 'Botswanan Pula', 'BWP', 'P', 1, 1, 0, 0, 0),
(23, 'Brazilian Real', 'BRL', 'R$', 1, 1, 0, 0, 0),
(24, 'British Pound Sterling', 'GBP', '£', 1, 1, 0, 0, 0),
(25, 'Brunei Dollar', 'BND', 'B$', 1, 1, 0, 0, 0),
(26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1, 0, 0, 0),
(27, 'Burundian Franc', 'BIF', 'FBu', 1, 1, 0, 0, 0),
(28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1, 0, 0, 0),
(29, 'Canadian Dollar', 'CAD', '$', 1, 1, 0, 0, 0),
(30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1, 0, 0, 0),
(31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1, 0, 0, 0),
(32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1, 0, 0, 0),
(33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1, 0, 0, 0),
(34, 'CFP Franc', 'XPF', '₣', 1, 1, 0, 0, 0),
(35, 'Chilean Peso', 'CLP', '$', 1, 1, 0, 0, 0),
(36, 'Chinese Yuan', 'CNY', '¥', 1, 1, 0, 0, 0),
(37, 'Colombian Peso', 'COP', '$', 1, 1, 0, 0, 0),
(38, 'Comorian Franc', 'KMF', 'CF', 1, 1, 0, 0, 0),
(39, 'Congolese Franc', 'CDF', 'FC', 1, 1, 0, 0, 0),
(40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1, 0, 0, 0),
(41, 'Croatian Kuna', 'HRK', 'kn', 1, 1, 0, 0, 0),
(42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1, 0, 0, 0),
(43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1, 0, 0, 0),
(44, 'Danish Krone', 'DKK', 'Kr.', 1, 1, 0, 0, 0),
(45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1, 0, 0, 0),
(46, 'Dominican Peso', 'DOP', '$', 1, 1, 0, 0, 0),
(47, 'East Caribbean Dollar', 'XCD', '$', 1, 1, 0, 0, 0),
(48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1, 0, 0, 0),
(49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1, 0, 0, 0),
(50, 'Estonian Kroon', 'EEK', 'kr', 1, 1, 0, 0, 0),
(51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1, 0, 0, 0),
(52, 'Euro', 'EUR', '€', 1, 1, 0, 0, 0),
(53, 'Falkland Islands Pound', 'FKP', '£', 1, 1, 0, 0, 0),
(54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1, 0, 0, 0),
(55, 'Gambian Dalasi', 'GMD', 'D', 1, 1, 0, 0, 0),
(56, 'Georgian Lari', 'GEL', 'ლ', 1, 1, 0, 0, 0),
(57, 'German Mark', 'DEM', 'DM', 1, 1, 0, 0, 0),
(58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1, 0, 0, 0),
(59, 'Gibraltar Pound', 'GIP', '£', 1, 1, 0, 0, 0),
(60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1, 0, 0, 0),
(61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1, 0, 0, 0),
(62, 'Guinean Franc', 'GNF', 'FG', 1, 1, 0, 0, 0),
(63, 'Guyanaese Dollar', 'GYD', '$', 1, 1, 0, 0, 0),
(64, 'Haitian Gourde', 'HTG', 'G', 1, 1, 0, 0, 0),
(65, 'Honduran Lempira', 'HNL', 'L', 1, 1, 0, 0, 0),
(66, 'Hong Kong Dollar', 'HKD', '$', 1, 1, 0, 0, 0),
(67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1, 0, 0, 0),
(68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1, 0, 0, 0),
(69, 'Indian Rupee', 'INR', '₹', 1, 1, 1, 0, 0),
(70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1, 0, 0, 0),
(71, 'Iranian Rial', 'IRR', '﷼', 1, 1, 0, 0, 0),
(72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1, 0, 0, 0),
(73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1, 0, 0, 0),
(74, 'Italian Lira', 'ITL', 'L,£', 1, 1, 0, 0, 0),
(75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1, 0, 0, 0),
(76, 'Japanese Yen', 'JPY', '¥', 1, 1, 0, 0, 0),
(77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1, 0, 0, 0),
(78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1, 0, 0, 0),
(79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1, 0, 0, 0),
(80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1, 0, 0, 0),
(81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1, 0, 0, 0),
(82, 'Laotian Kip', 'LAK', '₭', 1, 1, 0, 0, 0),
(83, 'Latvian Lats', 'LVL', 'Ls', 0, 0, 0, 0, 0),
(84, 'Lebanese Pound', 'LBP', '£', 1, 1, 0, 0, 0),
(85, 'Lesotho Loti', 'LSL', 'L', 1, 1, 0, 0, 0),
(86, 'Liberian Dollar', 'LRD', '$', 1, 1, 0, 0, 0),
(87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1, 0, 0, 0),
(88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0, 0, 0, 0),
(89, 'Macanese Pataca', 'MOP', '$', 1, 1, 0, 0, 0),
(90, 'Macedonian Denar', 'MKD', 'ден', 1, 1, 0, 0, 0),
(91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1, 0, 0, 0),
(92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1, 0, 0, 0),
(93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1, 0, 0, 0),
(94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1, 0, 0, 0),
(95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1, 0, 0, 0),
(96, 'Mauritian Rupee', 'MUR', '₨', 1, 1, 0, 0, 0),
(97, 'Mexican Peso', 'MXN', '$', 1, 1, 0, 0, 0),
(98, 'Moldovan Leu', 'MDL', 'L', 1, 1, 0, 0, 0),
(99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1, 0, 0, 0),
(100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1, 0, 0, 0),
(101, 'Mozambican Metical', 'MZM', 'MT', 1, 1, 0, 0, 0),
(102, 'Myanmar Kyat', 'MMK', 'K', 1, 1, 0, 0, 0),
(103, 'Namibian Dollar', 'NAD', '$', 1, 1, 0, 0, 0),
(104, 'Nepalese Rupee', 'NPR', '₨', 1, 1, 0, 0, 0),
(105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1, 0, 0, 0),
(106, 'New Taiwan Dollar', 'TWD', '$', 1, 1, 0, 0, 0),
(107, 'New Zealand Dollar', 'NZD', '$', 1, 1, 0, 0, 0),
(108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1, 0, 0, 0),
(109, 'Nigerian Naira', 'NGN', '₦', 1, 1, 0, 0, 1),
(110, 'North Korean Won', 'KPW', '₩', 0, 0, 0, 0, 0),
(111, 'Norwegian Krone', 'NOK', 'kr', 1, 1, 0, 0, 0),
(112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0, 0, 0, 0),
(113, 'Pakistani Rupee', 'PKR', '₨', 1, 1, 0, 0, 0),
(114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1, 0, 0, 0),
(115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1, 0, 0, 0),
(116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1, 0, 0, 0),
(117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1, 0, 0, 0),
(118, 'Philippine Peso', 'PHP', '₱', 1, 1, 0, 0, 0),
(119, 'Polish Zloty', 'PLN', 'zł', 1, 1, 0, 0, 0),
(120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1, 0, 0, 0),
(121, 'Romanian Leu', 'RON', 'lei', 1, 1, 0, 0, 0),
(122, 'Russian Ruble', 'RUB', '₽', 1, 1, 0, 0, 0),
(123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1, 0, 0, 0),
(124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0, 0, 0, 0),
(125, 'Samoan Tala', 'WST', 'SAT', 1, 1, 0, 0, 0),
(126, 'Saudi Riyal', 'SAR', '﷼', 1, 1, 0, 0, 0),
(127, 'Serbian Dinar', 'RSD', 'din', 1, 1, 0, 0, 0),
(128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1, 0, 0, 0),
(129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1, 0, 0, 0),
(130, 'Singapore Dollar', 'SGD', '$', 1, 1, 0, 0, 0),
(131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1, 0, 0, 0),
(132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1, 0, 0, 0),
(133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1, 0, 0, 0),
(134, 'South African Rand', 'ZAR', 'R', 1, 1, 0, 0, 0),
(135, 'South Korean Won', 'KRW', '₩', 1, 1, 0, 0, 0),
(136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1, 0, 0, 0),
(137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1, 0, 0, 0),
(138, 'St. Helena Pound', 'SHP', '£', 1, 1, 0, 0, 0),
(139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1, 0, 0, 0),
(140, 'Surinamese Dollar', 'SRD', '$', 1, 1, 0, 0, 0),
(141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1, 0, 0, 0),
(142, 'Swedish Krona', 'SEK', 'kr', 1, 1, 0, 0, 0),
(143, 'Swiss Franc', 'CHF', 'CHf', 1, 1, 0, 0, 0),
(144, 'Syrian Pound', 'SYP', 'LS', 0, 0, 0, 0, 0),
(145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1, 0, 0, 0),
(146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1, 0, 0, 0),
(147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1, 0, 0, 0),
(148, 'Thai Baht', 'THB', '฿', 1, 1, 0, 0, 0),
(149, 'Tongan pa\'anga', 'TOP', '$', 1, 1, 0, 0, 0),
(150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1, 0, 0, 0),
(151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1, 0, 0, 0),
(152, 'Turkish Lira', 'TRY', '₺', 1, 1, 0, 1, 0),
(153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1, 0, 0, 0),
(154, 'Ugandan Shilling', 'UGX', 'USh', 1, 1, 0, 0, 0),
(155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1, 0, 0, 0),
(156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1, 0, 0, 0),
(157, 'Uruguayan Peso', 'UYU', '$', 1, 1, 0, 0, 0),
(158, 'Afghan Afghani', 'AFA', '؋', 1, 1, 0, 0, 0),
(159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1, 0, 0, 0),
(160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1, 0, 0, 0),
(161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0, 0, 0, 0),
(162, 'Vietnamese Dong', 'VND', '₫', 1, 1, 0, 0, 0),
(163, 'Yemeni Rial', 'YER', '﷼', 1, 1, 0, 0, 0),
(164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_page`
--

CREATE TABLE `custom_page` (
  `custom_page_id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_content` longtext NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `button_title` varchar(255) NOT NULL,
  `button_position` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ebook`
--

CREATE TABLE `ebook` (
  `ebook_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `publication_name` varchar(255) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL,
  `discount_flag` int(11) DEFAULT NULL,
  `discounted_price` double NOT NULL,
  `price` double NOT NULL,
  `added_date` varchar(255) DEFAULT NULL,
  `updated_date` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `is_free` int(11) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrol`
--

CREATE TABLE `enrol` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'Start learning from best Platform'),
(2, 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!'),
(4, 'about_us', '<p></p><h2><span xss=removed>This is about us</span></h2><p><span xss=\"removed\">Welcome to Academy. It will help you to learn in a new ways</span></p>'),
(10, 'terms_and_condition', '<h2>Terms and Condition</h2>This is the Terms and condition page for your companys'),
(11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span><br></h2>This is the Privacy Policy page for your companys<p></p><p><b>This is another</b> <u><a href=\"https://youtube.com/watch?v=PHgc8Q6qTjc\" target=\"_blank\">thing you will</a></u> <span xss=\"removed\">not understand</span>.</p>'),
(13, 'theme', 'default'),
(14, 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.'),
(15, 'cookie_status', 'active'),
(16, 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>'),
(17, 'banner_image', 'home-banner.jpg'),
(18, 'light_logo', 'logo-light.png'),
(19, 'dark_logo', 'logo-dark.png'),
(20, 'small_logo', 'logo-light-sm.png'),
(21, 'favicon', 'favicon.png'),
(22, 'recaptcha_status', '0'),
(23, 'recaptcha_secretkey', 'Valid-secret-key'),
(24, 'recaptcha_sitekey', 'Valid-site-key'),
(25, 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>'),
(26, 'facebook', 'https://facebook.com'),
(27, 'twitter', 'https://twitter.com'),
(28, 'linkedin', ''),
(31, 'blog_page_title', 'Where possibilities begin'),
(32, 'blog_page_subtitle', 'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.'),
(33, 'blog_page_banner', 'blog-page.png'),
(34, 'instructors_blog_permission', '0'),
(35, 'blog_visibility_on_the_home_page', '1');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext DEFAULT NULL,
  `english` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'english', 'English'),
(2, '404_page_not_found', '404 page not found'),
(3, 'categories', 'Categories'),
(4, 'menu', 'Menu'),
(5, 'all_courses', 'All courses'),
(6, 'search_for_courses', 'Search for courses'),
(7, 'total', 'Total'),
(8, 'total', 'Total'),
(9, 'total', 'Total'),
(10, 'go_to_cart', 'Go to cart'),
(11, 'go_to_cart', 'Go to cart'),
(12, 'your_cart_is_empty', 'Your cart is empty'),
(13, 'your_cart_is_empty', 'Your cart is empty'),
(14, 'your_cart_is_empty', 'Your cart is empty'),
(15, 'log_in', 'Log in'),
(16, 'log_in', 'Log in'),
(17, 'log_in', 'Log in'),
(18, 'sign_up', 'Sign up'),
(19, 'sign_up', 'Sign up'),
(20, 'sign_up', 'Sign up'),
(21, 'cookie_policy', 'Cookie policy'),
(22, 'cookie_policy', 'Cookie policy'),
(23, 'cookie_policy', 'Cookie policy'),
(24, 'total', 'Total'),
(25, 'accept', 'Accept'),
(26, 'accept', 'Accept'),
(27, 'accept', 'Accept'),
(28, 'oh_snap', 'Oh snap'),
(29, 'oh_snap', 'Oh snap'),
(30, 'oh_snap', 'Oh snap'),
(31, 'this_is_not_the_web_page_you_are_looking_for', 'This is not the web page you are looking for'),
(32, 'this_is_not_the_web_page_you_are_looking_for', 'This is not the web page you are looking for'),
(33, 'this_is_not_the_web_page_you_are_looking_for', 'This is not the web page you are looking for'),
(34, 'back_to_home', 'Back to home'),
(35, 'back_to_home', 'Back to home'),
(36, 'back_to_home', 'Back to home'),
(37, 'top_categories', 'Top categories'),
(38, 'top_categories', 'Top categories'),
(39, 'useful_links', 'Useful links'),
(40, 'useful_links', 'Useful links'),
(41, 'blog', 'Blog'),
(42, 'blog', 'Blog'),
(43, 'blog', 'Blog'),
(44, 'help', 'Help'),
(45, 'help', 'Help'),
(46, 'help', 'Help'),
(47, 'about_us', 'About us'),
(48, 'about_us', 'About us'),
(49, 'about_us', 'About us'),
(50, 'privacy_policy', 'Privacy policy'),
(51, 'privacy_policy', 'Privacy policy'),
(52, 'privacy_policy', 'Privacy policy'),
(53, 'terms_and_condition', 'Terms and condition'),
(54, 'terms_and_condition', 'Terms and condition'),
(55, 'terms_and_condition', 'Terms and condition'),
(56, 'refund_policy', 'Refund policy'),
(57, 'refund_policy', 'Refund policy'),
(58, 'refund_policy', 'Refund policy'),
(59, 'all_rights_reserved', 'All rights reserved'),
(60, 'step', 'Step'),
(61, 'step', 'Step'),
(62, 'how_would_you_rate_this_course_overall', 'How would you rate this course overall'),
(63, 'how_would_you_rate_this_course_overall', 'How would you rate this course overall'),
(64, 'how_would_you_rate_this_course_overall', 'How would you rate this course overall'),
(65, 'how_would_you_rate_this_course_overall', 'How would you rate this course overall'),
(66, 'how_would_you_rate_this_course_overall', 'How would you rate this course overall'),
(67, 'write_a_public_review', 'Write a public review'),
(68, 'write_a_public_review', 'Write a public review'),
(69, 'write_a_public_review', 'Write a public review'),
(70, 'write_a_public_review', 'Write a public review'),
(71, 'write_a_public_review', 'Write a public review'),
(72, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', 'Describe your experience what you got out of the course and other helpful highlights'),
(73, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', 'Describe your experience what you got out of the course and other helpful highlights'),
(74, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', 'Describe your experience what you got out of the course and other helpful highlights'),
(75, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', 'Describe your experience what you got out of the course and other helpful highlights'),
(76, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', 'Describe your experience what you got out of the course and other helpful highlights'),
(77, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', 'What did the instructor do well and what could use some improvement'),
(78, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', 'What did the instructor do well and what could use some improvement'),
(79, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', 'What did the instructor do well and what could use some improvement'),
(80, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', 'What did the instructor do well and what could use some improvement'),
(81, 'next', 'Next'),
(82, 'next', 'Next'),
(83, 'next', 'Next'),
(84, 'next', 'Next'),
(85, 'next', 'Next'),
(86, 'previous', 'Previous'),
(87, 'previous', 'Previous'),
(88, 'previous', 'Previous'),
(89, 'previous', 'Previous'),
(90, 'publish', 'Publish'),
(91, 'publish', 'Publish'),
(92, 'publish', 'Publish'),
(93, 'publish', 'Publish'),
(94, 'are_you_sure', 'Are you sure'),
(95, 'are_you_sure', 'Are you sure'),
(96, 'are_you_sure', 'Are you sure'),
(97, 'are_you_sure', 'Are you sure'),
(98, 'are_you_sure', 'Are you sure'),
(99, 'yes', 'Yes'),
(100, 'yes', 'Yes'),
(101, 'yes', 'Yes'),
(102, 'yes', 'Yes'),
(103, 'yes', 'Yes'),
(104, 'no', 'No'),
(105, 'no', 'No'),
(106, 'no', 'No'),
(107, 'no', 'No'),
(108, 'no', 'No'),
(109, 'view_less', 'View less'),
(110, 'view_less', 'View less'),
(111, 'view_less', 'View less'),
(112, 'view_less', 'View less'),
(113, 'view_more', 'View more'),
(114, 'view_more', 'View more'),
(115, 'view_more', 'View more'),
(116, 'view_more', 'View more'),
(117, 'view_more', 'View more'),
(118, 'login', 'Login'),
(119, 'provide_your_valid_login_credentials', 'Provide your valid login credentials'),
(120, 'email', 'Email'),
(121, 'password', 'Password'),
(122, 'forgot_password', 'Forgot password'),
(123, 'do_not_have_an_account', 'Do not have an account'),
(124, 'home', 'Home'),
(125, 'start_learning_from_best_platform', 'Start learning from best platform'),
(126, 'study_any_topic,_anytime._explore_thousands_of_courses_for_the_lowest_price_ever!', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'),
(127, 'what_do_you_want_to_learn', 'What do you want to learn'),
(128, 'search', 'Search'),
(129, 'online_courses', 'Online courses'),
(130, 'explore_a_variety_of_fresh_topics', 'Explore a variety of fresh topics'),
(131, 'expert_instruction', 'Expert instruction'),
(132, 'find_the_right_course_for_you', 'Find the right course for you'),
(133, 'lifetime_access', 'Lifetime access'),
(134, 'learn_on_your_schedule', 'Learn on your schedule'),
(135, 'top_courses', 'Top courses'),
(136, 'top', 'Top'),
(137, 'latest_courses', 'Latest courses'),
(138, 'join_now_to_start_learning', 'Join now to start learning'),
(139, 'get_started', 'Get started'),
(140, 'become_a_new_instructor', 'Become a new instructor'),
(141, 'join_now', 'Join now'),
(142, 'add_to_cart', 'Add to cart'),
(143, 'added_to_cart', 'Added to cart'),
(144, 'welcome', 'Welcome'),
(145, 'dashboard', 'Dashboard'),
(146, 'quick_actions', 'Quick actions'),
(147, 'create_course', 'Create course'),
(148, 'add_course', 'Add course'),
(149, 'add_new_lesson', 'Add new lesson'),
(150, 'add_lesson', 'Add lesson'),
(151, 'add_student', 'Add student'),
(152, 'enrol_a_student', 'Enrol a student'),
(153, 'enrol_student', 'Enrol student'),
(154, 'help_center', 'Help center'),
(155, 'read_documentation', 'Read documentation'),
(156, 'watch_video_tutorial', 'Watch video tutorial'),
(157, 'get_customer_support', 'Get customer support'),
(158, 'order_customization', 'Order customization'),
(159, 'request_a_new_feature', 'Request a new feature'),
(160, 'browse_addons', 'Browse addons'),
(161, 'admin', 'Admin'),
(162, 'my_account', 'My account'),
(163, 'settings', 'Settings'),
(164, 'logout', 'Logout'),
(165, 'visit_website', 'Visit website'),
(166, 'navigation', 'Navigation'),
(167, 'courses', 'Courses'),
(168, 'manage_courses', 'Manage courses'),
(169, 'add_new_course', 'Add new course'),
(170, 'course_category', 'Course category'),
(171, 'coupons', 'Coupons'),
(172, 'enrolment', 'Enrolment'),
(173, 'course_enrollment', 'Course enrollment'),
(174, 'enrol_history', 'Enrol history'),
(175, 'report', 'Report'),
(176, 'admin_revenue', 'Admin revenue'),
(177, 'instructor_revenue', 'Instructor revenue'),
(178, 'purchase_history', 'Purchase history'),
(179, 'users', 'Users'),
(180, 'admins', 'Admins'),
(181, 'manage_admins', 'Manage admins'),
(182, 'add_new_admin', 'Add new admin'),
(183, 'instructors', 'Instructors'),
(184, 'manage_instructors', 'Manage instructors'),
(185, 'add_new_instructor', 'Add new instructor'),
(186, 'instructor_payout', 'Instructor payout'),
(187, 'instructor_settings', 'Instructor settings'),
(188, 'applications', 'Applications'),
(189, 'students', 'Students'),
(190, 'manage_students', 'Manage students'),
(191, 'add_new_student', 'Add new student'),
(192, 'message', 'Message'),
(193, 'all_blogs', 'All blogs'),
(194, 'pending_blog', 'Pending blog'),
(195, 'blog_category', 'Blog category'),
(196, 'blog_settings', 'Blog settings'),
(197, 'addons', 'Addons'),
(198, 'themes', 'Themes'),
(199, 'system_settings', 'System settings'),
(200, 'website_settings', 'Website settings'),
(201, 'academy_cloud', 'Academy cloud'),
(202, 'drip_content_settings', 'Drip content settings'),
(203, 'payment_settings', 'Payment settings'),
(204, 'language_settings', 'Language settings'),
(205, 'smtp_settings', 'Smtp settings'),
(206, 'social_login', 'Social login'),
(207, 'custom_page', 'Custom page'),
(208, 'data_center', 'Data center'),
(209, 'about', 'About'),
(210, 'manage_profile', 'Manage profile'),
(211, 'admin_revenue_this_year', 'Admin revenue this year'),
(212, 'number_courses', 'Number courses'),
(213, 'number_of_lessons', 'Number of lessons'),
(214, 'number_of_enrolment', 'Number of enrolment'),
(215, 'number_of_student', 'Number of student'),
(216, 'course_overview', 'Course overview'),
(217, 'active_courses', 'Active courses'),
(218, 'pending_courses', 'Pending courses'),
(219, 'requested_withdrawal', 'Requested withdrawal'),
(220, 'january', 'January'),
(221, 'february', 'February'),
(222, 'march', 'March'),
(223, 'april', 'April'),
(224, 'may', 'May'),
(225, 'june', 'June'),
(226, 'july', 'July'),
(227, 'august', 'August'),
(228, 'september', 'September'),
(229, 'october', 'October'),
(230, 'november', 'November'),
(231, 'december', 'December'),
(232, 'this_year', 'This year'),
(233, 'active_course', 'Active course'),
(234, 'pending_course', 'Pending course'),
(235, 'heads_up', 'Heads up'),
(236, 'congratulations', 'Congratulations'),
(237, 'please_fill_all_the_required_fields', 'Please fill all the required fields'),
(238, 'close', 'Close'),
(239, 'cancel', 'Cancel'),
(240, 'continue', 'Continue'),
(241, 'ok', 'Ok'),
(242, 'success', 'Success'),
(243, 'successfully', 'Successfully'),
(244, 'div_added_to_bottom_', 'Div added to bottom '),
(245, 'div_has_been_deleted_', 'Div has been deleted '),
(246, 'add_new_coupon', 'Add new coupon'),
(247, 'coupon_code', 'Coupon code'),
(248, 'discount_percentage', 'Discount percentage'),
(249, 'validity_till', 'Validity till'),
(250, 'actions', 'Actions'),
(251, 'free_courses', 'Free courses'),
(252, 'paid_courses', 'Paid courses'),
(253, 'course_list', 'Course list'),
(254, 'all', 'All'),
(255, 'status', 'Status'),
(256, 'active', 'Active'),
(257, 'pending', 'Pending'),
(258, 'private', 'Private'),
(259, 'instructor', 'Instructor'),
(260, 'price', 'Price'),
(261, 'free', 'Free'),
(262, 'paid', 'Paid'),
(263, 'filter', 'Filter'),
(264, 'title', 'Title'),
(265, 'category', 'Category'),
(266, 'lesson_and_section', 'Lesson and section'),
(267, 'enrolled_student', 'Enrolled student'),
(268, 'course_enrolment', 'Course enrolment'),
(269, 'enrolment_form', 'Enrolment form'),
(270, 'course_to_enrol', 'Course to enrol'),
(271, 'select_a_course', 'Select a course'),
(272, 'enrol_histories', 'Enrol histories'),
(273, 'no_data_found', 'No data found'),
(274, 'enrolled_course', 'Enrolled course'),
(275, 'total_amount', 'Total amount'),
(276, 'enrolment_date', 'Enrolment date'),
(277, 'user', 'User'),
(278, 'course', 'Course'),
(279, 'paid_amount', 'Paid amount'),
(280, 'payment_method', 'Payment method'),
(281, 'purchased_date', 'Purchased date'),
(282, 'addon_manager', 'Addon manager'),
(283, 'buy_new_addon', 'Buy new addon'),
(284, 'install_addon', 'Install addon'),
(285, 'installed_addons', 'Installed addons'),
(286, 'available_addons', 'Available addons'),
(287, 'name', 'Name'),
(288, 'version', 'Version'),
(289, 'theme_settings', 'Theme settings'),
(290, 'buy_new_theme', 'Buy new theme'),
(291, 'installed_themes', 'Installed themes'),
(292, 'add_new_themes', 'Add new themes'),
(293, 'active_theme', 'Active theme'),
(294, 'theme_successfully_activated', 'Theme successfully activated'),
(295, 'you_do_not_have_right_to_access_this_theme', 'You do not have right to access this theme'),
(296, 'import_your_data', 'Import your data'),
(297, 'choose_your_demo_file', 'Choose your demo file'),
(298, 'import', 'Import'),
(299, 'import_your_language_file', 'Import your language file'),
(300, 'choose_your_json_file', 'Choose your json file'),
(301, 'backup_data', 'Backup data'),
(302, 'backup_your_current_data', 'Backup your current data'),
(303, 'keep_a_backup', 'Keep a backup'),
(304, 'no_backup', 'No backup'),
(305, 'basic_info', 'Basic info'),
(306, 'first_name', 'First name'),
(307, 'last_name', 'Last name'),
(308, 'facebook_link', 'Facebook link'),
(309, 'twitter_link', 'Twitter link'),
(310, 'linkedin_link', 'Linkedin link'),
(311, 'a_short_title_about_yourself', 'A short title about yourself'),
(312, 'skills', 'Skills'),
(313, 'write_your_skill_and_click_the_enter_button', 'Write your skill and click the enter button'),
(314, 'biography', 'Biography'),
(315, 'photo', 'Photo'),
(316, 'the_image_size_should_be_any_square_image', 'The image size should be any square image'),
(317, 'choose_file', 'Choose file'),
(318, 'update_profile', 'Update profile'),
(319, 'current_password', 'Current password'),
(320, 'new_password', 'New password'),
(321, 'confirm_new_password', 'Confirm new password'),
(322, 'update_password', 'Update password'),
(323, 'website_name', 'Website name'),
(324, 'website_title', 'Website title'),
(325, 'website_keywords', 'Website keywords'),
(326, 'website_description', 'Website description'),
(327, 'author', 'Author'),
(328, 'slogan', 'Slogan'),
(329, 'system_email', 'System email'),
(330, 'address', 'Address'),
(331, 'phone', 'Phone'),
(332, 'youtube_api_key', 'Youtube api key'),
(333, 'get_youtube_api_key', 'Get youtube api key'),
(334, 'vimeo_api_key', 'Vimeo api key'),
(335, 'get_vimeo_api_key', 'Get vimeo api key'),
(336, 'purchase_code', 'Purchase code'),
(337, 'system_language', 'System language'),
(338, 'student_email_verification', 'Student email verification'),
(339, 'enable', 'Enable'),
(340, 'disable', 'Disable'),
(341, 'course_accessibility', 'Course accessibility'),
(342, 'publicly', 'Publicly'),
(343, 'only_logged_in_users', 'Only logged in users'),
(344, 'number_of_authorized_devices', 'Number of authorized devices'),
(345, 'how_many_devices_do_you_want_to_allow_for_logging_in_using_a_single_account', 'How many devices do you want to allow for logging in using a single account'),
(346, 'course_selling_tax', 'Course selling tax'),
(347, 'enter_0_if_you_want_to_disable_the_tax_option', 'Enter 0 if you want to disable the tax option'),
(348, 'google_analytics_id', 'Google analytics id'),
(349, 'keep_it_blank_if_you_want_to_disable_it', 'Keep it blank if you want to disable it'),
(350, 'meta_pixel_id', 'Meta pixel id'),
(351, 'footer_text', 'Footer text'),
(352, 'footer_link', 'Footer link'),
(353, 'save', 'Save'),
(354, 'update_product', 'Update product'),
(355, 'file', 'File'),
(356, 'update', 'Update'),
(357, 'administrator', 'Administrator'),
(358, 'add_addon', 'Add addon'),
(359, 'install_an_addon', 'Install an addon'),
(360, 'back_to_addon_list', 'Back to addon list'),
(361, 'you_need_to_enable_the_zip_extension_on_your_server_to_install_addons', 'You need to enable the zip extension on your server to install addons'),
(362, 'upload_addon_file', 'Upload addon file'),
(363, 'zip_file', 'Zip file'),
(364, 'back', 'Back'),
(365, 'your_server_is_unable_to_extract_the_zip_file', 'Your server is unable to extract the zip file'),
(366, 'please_enable_the_zip_extension_on_your_server', 'Please enable the zip extension on your server'),
(367, 'then_try_again', 'Then try again'),
(368, 'addon_installed_successfully', 'Addon installed successfully'),
(369, 'course_bundle', 'Course bundle'),
(370, 'add_new_bundle', 'Add new bundle'),
(371, 'manage_bundle', 'Manage bundle'),
(372, 'subscription_report', 'Subscription report'),
(373, 'addon_update', 'Addon update'),
(374, 'deactive', 'Deactive'),
(375, 'delete', 'Delete'),
(376, 'about_this_addon', 'About this addon'),
(377, 'course_adding_form', 'Course adding form'),
(378, 'back_to_course_list', 'Back to course list'),
(379, 'basic', 'Basic'),
(380, 'info', 'Info'),
(381, 'pricing', 'Pricing'),
(382, 'media', 'Media'),
(383, 'seo', 'Seo'),
(384, 'finish', 'Finish'),
(385, 'course_title', 'Course title'),
(386, 'enter_course_title', 'Enter course title'),
(387, 'short_description', 'Short description'),
(388, 'description', 'Description'),
(389, 'select_a_category', 'Select a category'),
(390, 'select_sub_category', 'Select sub category'),
(391, 'level', 'Level'),
(392, 'beginner', 'Beginner'),
(393, 'advanced', 'Advanced'),
(394, 'intermediate', 'Intermediate'),
(395, 'language_made_in', 'Language made in'),
(396, 'enable_drip_content', 'Enable drip content'),
(397, 'keep_it_as_a_private_course', 'Keep it as a private course'),
(398, 'check_if_this_course_is_top_course', 'Check if this course is top course'),
(399, 'course_faq', 'Course faq'),
(400, 'faq_question', 'Faq question'),
(401, 'answer', 'Answer'),
(402, 'requirements', 'Requirements'),
(403, 'provide_requirements', 'Provide requirements'),
(404, 'outcomes', 'Outcomes'),
(405, 'provide_outcomes', 'Provide outcomes'),
(406, 'check_if_this_is_a_free_course', 'Check if this is a free course'),
(407, 'course_price', 'Course price'),
(408, 'enter_course_course_price', 'Enter course course price'),
(409, 'check_if_this_course_has_discount', 'Check if this course has discount'),
(410, 'discounted_price', 'Discounted price'),
(411, 'this_course_has', 'This course has'),
(412, 'discount', 'Discount'),
(413, 'course_overview_provider', 'Course overview provider'),
(414, 'youtube', 'Youtube'),
(415, 'vimeo', 'Vimeo'),
(416, 'html5', 'Html5'),
(417, 'course_overview_url', 'Course overview url'),
(418, 'course_thumbnail', 'Course thumbnail'),
(419, 'meta_keywords', 'Meta keywords'),
(420, 'write_a_keyword_and_then_press_enter_button', 'Write a keyword and then press enter button'),
(421, 'meta_description', 'Meta description'),
(422, 'thank_you', 'Thank you'),
(423, 'you_are_just_one_click_away', 'You are just one click away'),
(424, 'submit', 'Submit'),
(425, 'live_class_settings', 'Live class settings'),
(426, 'add_new_category', 'Add new category'),
(427, 'ebook', 'Ebook'),
(428, 'all_ebooks', 'All ebooks'),
(429, 'add_ebook', 'Add ebook'),
(430, 'payment_history', 'Payment history');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) DEFAULT NULL,
  `cloud_video_id` int(20) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) DEFAULT NULL,
  `attachment` longtext DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `is_free` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `video_type_for_mobile_application` varchar(255) DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_class`
--

CREATE TABLE `live_class` (
  `id` int(11) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `zoom_meeting_id` varchar(255) DEFAULT NULL,
  `zoom_meeting_password` varchar(255) DEFAULT NULL,
  `note_to_students` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `from` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `sender` longtext DEFAULT NULL,
  `timestamp` longtext DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext DEFAULT NULL,
  `sender` varchar(255) DEFAULT '',
  `receiver` varchar(255) DEFAULT '',
  `last_message_timestamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `id` int(11) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date_added` varchar(255) DEFAULT NULL,
  `date_updated` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) DEFAULT NULL,
  `instructor_revenue` varchar(255) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT 0,
  `transaction_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `coupon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `currency` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keys` text NOT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `enabled_test_mode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 'USD', 'Paypal', '', '{\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}', 'Payment_model', 1, 1, 0, '', '1673263724'),
(2, 'stripe', 'USD', 'Stripe', '', '{\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 'Payment_model', 1, 1, 0, '', '1673263724'),
(3, 'razorpay', 'USD', 'Razorpay', '', '{\"key_id\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#23d792\"}', 'Payment_model', 1, 1, 0, '', '1673264610');

-- --------------------------------------------------------

--
-- Table structure for table `payout`
--

CREATE TABLE `payout` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `correct_answers` longtext DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `quiz_result_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_answers` longtext NOT NULL,
  `correct_answers` longtext NOT NULL COMMENT 'question_id',
  `total_obtained_marks` double NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `date_updated` varchar(100) NOT NULL,
  `is_submitted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'english'),
(2, 'system_name', 'lms'),
(3, 'system_title', 'Academy Learning Club'),
(4, 'system_email', 'academy@example.com'),
(5, 'address', 'Sydney, Australia'),
(6, 'phone', '+143-52-9933631'),
(7, 'purchase_code', 'your-purchase-code'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(10, 'youtube_api_key', 'youtube-api-key'),
(11, 'vimeo_api_key', '39258384b69994dba483c10286825b5c'),
(12, 'slogan', 'A course based video CMS'),
(13, 'text_align', NULL),
(14, 'allow_instructor', '1'),
(15, 'instructor_revenue', '70'),
(16, 'system_currency', 'USD'),
(17, 'paypal_currency', 'USD'),
(18, 'stripe_currency', 'USD'),
(19, 'author', 'Creativeitem'),
(20, 'currency_position', 'left'),
(21, 'website_description', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'),
(22, 'website_keywords', 'LMS,Learning Management System,Creativeitem,Academy LMS'),
(23, 'footer_text', ''),
(24, 'footer_link', 'http://creativeitem.com/'),
(25, 'protocol', 'smtp'),
(26, 'smtp_host', 'smtp.gmail.com'),
(27, 'smtp_port', '587'),
(28, 'smtp_user', 'your-email-address'),
(29, 'smtp_pass', 'your-email-password'),
(30, 'version', '5.13'),
(31, 'student_email_verification', 'disable'),
(32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.'),
(33, 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]'),
(34, 'razorpay_currency', 'USD'),
(35, 'fb_app_id', 'facebook-app-id'),
(36, 'fb_app_secret', 'facebook-app-secret-key'),
(37, 'fb_social_login', '0'),
(38, 'drip_content_settings', '{\"lesson_completion_role\":\"percentage\",\"minimum_duration\":10,\"minimum_percentage\":\"50\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}'),
(41, 'course_accessibility', 'publicly'),
(42, 'smtp_crypto', 'tls'),
(43, 'allowed_device_number_of_loging', '10'),
(47, 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf'),
(48, 'course_selling_tax', '10'),
(49, 'ccavenue_keys', '[{\"active\":\"1\",\"ccavenue_merchant_id\":\"cmi_xxxxxx\",\"ccavenue_working_key\":\"cwk_xxxxxxxxxxxx\",\"ccavenue_access_code\":\"ccc_xxxxxxxxxxxxx\"}]'),
(50, 'ccavenue_currency', 'INR'),
(51, 'iyzico_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"iyzico_currency\":\"TRY\",\"api_test_key\":\"atk_xxxxxxxx\",\"secret_test_key\":\"stk_xxxxxxxx\",\"api_live_key\":\"alk_xxxxxxxx\",\"secret_live_key\":\"slk_xxxxxxxx\"}]'),
(52, 'iyzico_currency', 'TRY'),
(53, 'paystack_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxx\"}]'),
(54, 'paystack_currency', 'NGN'),
(55, 'paytm_keys', '[{\"PAYTM_MERCHANT_KEY\":\"PAYTM_MERCHANT_KEY\",\"PAYTM_MERCHANT_MID\":\"PAYTM_MERCHANT_MID\",\"PAYTM_MERCHANT_WEBSITE\":\"DEFAULT\",\"INDUSTRY_TYPE_ID\":\"Retail\",\"CHANNEL_ID\":\"WEB\"}]'),
(57, 'google_analytics_id', ''),
(58, 'meta_pixel_id', ''),
(59, 'zoom_api_key', 'zoom_api_key'),
(60, 'zoom_secret_key', 'zoom_secret_key');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `skills` longtext NOT NULL,
  `social_links` longtext DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `wishlist` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `payment_keys` longtext NOT NULL,
  `verification_code` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_instructor` int(11) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `sessions` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `sessions`) VALUES
(1, 'Ersin', 'Hoca', 'emrekilic@mutfakyapim.com', '5665196ec5f1c2007b6834ec85b8d172a31b102c', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 1, NULL, NULL, NULL, NULL, '', NULL, 1, 1, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `watched_duration`
--

CREATE TABLE `watched_duration` (
  `watched_id` int(11) UNSIGNED NOT NULL,
  `watched_student_id` int(11) DEFAULT NULL,
  `watched_course_id` int(11) DEFAULT NULL,
  `watched_lesson_id` int(11) DEFAULT NULL,
  `current_duration` int(20) DEFAULT NULL,
  `watched_counter` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watch_histories`
--

CREATE TABLE `watch_histories` (
  `watch_history_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `completed_lesson` longtext NOT NULL,
  `course_progress` int(11) NOT NULL,
  `watching_lesson_id` int(11) NOT NULL,
  `quiz_result` longtext NOT NULL,
  `date_added` varchar(100) DEFAULT NULL,
  `date_updated` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `assignment_submission`
--
ALTER TABLE `assignment_submission`
  ADD PRIMARY KEY (`submission_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`blog_comment_id`);

--
-- Indexes for table `bundle_payment`
--
ALTER TABLE `bundle_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bundle_rating`
--
ALTER TABLE `bundle_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_bundle`
--
ALTER TABLE `course_bundle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_forum`
--
ALTER TABLE `course_forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_page`
--
ALTER TABLE `custom_page`
  ADD PRIMARY KEY (`custom_page_id`);

--
-- Indexes for table `ebook`
--
ALTER TABLE `ebook`
  ADD PRIMARY KEY (`ebook_id`);

--
-- Indexes for table `enrol`
--
ALTER TABLE `enrol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_class`
--
ALTER TABLE `live_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout`
--
ALTER TABLE `payout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`quiz_result_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watched_duration`
--
ALTER TABLE `watched_duration`
  ADD PRIMARY KEY (`watched_id`);

--
-- Indexes for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD PRIMARY KEY (`watch_history_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment_submission`
--
ALTER TABLE `assignment_submission`
  MODIFY `submission_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundle_payment`
--
ALTER TABLE `bundle_payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundle_rating`
--
ALTER TABLE `bundle_rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_bundle`
--
ALTER TABLE `course_bundle`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_forum`
--
ALTER TABLE `course_forum`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `custom_page`
--
ALTER TABLE `custom_page`
  MODIFY `custom_page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ebook`
--
ALTER TABLE `ebook`
  MODIFY `ebook_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrol`
--
ALTER TABLE `enrol`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=431;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_class`
--
ALTER TABLE `live_class`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payout`
--
ALTER TABLE `payout`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `quiz_result_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `watched_duration`
--
ALTER TABLE `watched_duration`
  MODIFY `watched_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watch_histories`
--
ALTER TABLE `watch_histories`
  MODIFY `watch_history_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
