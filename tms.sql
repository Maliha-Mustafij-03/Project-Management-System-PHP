-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 18, 2024 at 06:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Name`, `EmailId`, `MobileNumber`, `Password`, `updationDate`) VALUES
(1, 'admin', 'Administrator', 'test@gmail.com', 7894561239, 'f925916e2754e5e03f75dd58a5733251', '2024-01-10 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `financial_progress`
--

CREATE TABLE `financial_progress` (
  `Serial_No` int(11) NOT NULL,
  `Source_of_fund` varchar(100) DEFAULT NULL,
  `Total_Cost` decimal(18,2) DEFAULT NULL,
  `Cumulative_Cost` decimal(18,2) DEFAULT NULL,
  `Last_date_of_Cumulative_Cost` date NOT NULL,
  `Cumulative_Cost_percentage` decimal(18,2) DEFAULT NULL,
  `Annual_dpp_budget` decimal(18,2) DEFAULT NULL,
  `Financial_year` varchar(50) DEFAULT 'lac',
  `Current_fy_progress` decimal(18,2) DEFAULT NULL,
  `Last_date_of_fy_cost` varchar(10) DEFAULT NULL,
  `current_fy_progress_per` decimal(18,2) DEFAULT NULL,
  `Addedby` varchar(50) DEFAULT NULL,
  `Current_FY_Allocation` decimal(15,2) DEFAULT NULL,
  `Fund_Release_Installments` int(11) DEFAULT NULL,
  `Funds_Released_So_Far` decimal(15,2) DEFAULT NULL,
  `Comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `financial_progress`
--

INSERT INTO `financial_progress` (`Serial_No`, `Source_of_fund`, `Total_Cost`, `Cumulative_Cost`, `Last_date_of_Cumulative_Cost`, `Cumulative_Cost_percentage`, `Annual_dpp_budget`, `Financial_year`, `Current_fy_progress`, `Last_date_of_fy_cost`, `current_fy_progress_per`, `Addedby`, `Current_FY_Allocation`, `Fund_Release_Installments`, `Funds_Released_So_Far`, `Comments`) VALUES
(1, 'জিও', 120.00, 375.00, '2024-12-05', 12.00, 121.00, '2024', 120.00, '2024-12-20', 356.00, NULL, 1.00, 1, 1.00, 'test'),
(7, 'জিওবি', 3.00, 3.00, '2024-12-19', 2.00, 2.00, '2', 2.00, '2024-12-15', 3.00, NULL, 33.00, 3, 3.00, 'test'),
(8, 'জিওবি', 3.00, 3.00, '2024-12-18', 22.00, 22.00, '22', 22.00, '2024-12-15', 22.00, NULL, 22.00, 22, 22.00, 'tttt');

-- --------------------------------------------------------

--
-- Table structure for table `hr_reports`
--

CREATE TABLE `hr_reports` (
  `id` int(11) NOT NULL,
  `report_date` date DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_reports`
--

CREATE TABLE `media_reports` (
  `id` int(11) NOT NULL,
  `report_date` date DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_reports`
--

INSERT INTO `media_reports` (`id`, `report_date`, `division`, `media`, `topic`, `attachments`, `created_at`) VALUES
(1, '2024-12-27', 'test', 'test', 'test', 'uploads/NCS15_Lot1.pdf,uploads/rm notes.pdf', '2024-12-05 03:20:05'),
(2, '2024-12-09', 'test', 'test', 'test', '', '2024-12-09 04:13:51'),
(3, '2024-12-09', 'news', 'news', 'news', '', '2024-12-09 04:19:19'),
(4, '2024-12-11', 'test', 'test', 'test', '', '2024-12-11 03:14:47'),
(5, '2024-12-11', 'news1', 'news1', 'news1', '', '2024-12-11 03:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `package_overview`
--

CREATE TABLE `package_overview` (
  `id` int(11) NOT NULL,
  `package_no` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `current_condition` text DEFAULT NULL,
  `specification_date_transmission_verification` date DEFAULT NULL,
  `specification_date_dispatch_procurement` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `specification_target` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_overview`
--

INSERT INTO `package_overview` (`id`, `package_no`, `details`, `current_condition`, `specification_date_transmission_verification`, `specification_date_dispatch_procurement`, `created_at`, `updated_at`, `specification_target`) VALUES
(2, 'NCS-27', 'স্মার্ট কার্ড পার্সোনালাইজেশন এবং “বীর মুক্তিযোদ্ধা” (বীর মুক্তি যোদ্ধা) মুদ্রিত লেখা (অনুচ্ছেদ-১৫) ', 'otm', '2024-03-10', '2024-05-05', '2024-08-13 04:27:30', '2024-12-11 06:31:43', 'test'),
(3, 'gd-9.2', 'দুর্যোগ পুনরুদ্ধার সাইটের উন্নয়ন, ডেটাবেস সার্ভার, লাইসেন্স এবং সমর্থন পরিষেবা প্রয়োজনীয় মডুলারবেস এবং স্থানান্তরযোগ্য স্বতন্ত্র DRS (অনুচ্ছেদ-১৪)', '...', '0000-00-00', '0000-00-00', '2024-08-13 04:27:30', '2024-08-27 08:28:51', NULL),
(4, 'NCS-28', 'ডিসি-ডেটা এবং ইন্টারনেট সংযোগ স্থাপন এবং বজায় রাখা DRS এর জন্য (অনুচ্ছেদ-১৬) ', '....', '0000-00-00', '0000-00-00', '2024-08-13 04:27:30', '2024-08-27 08:30:11', NULL),
(5, 'NCS-24.3', 'পারসোসেন্টারের সফটওয়্যার উন্নয়ন, BVRS ডেটাবেস সিঙ্ক্রোনাইজেশন এবং সহায়ক পরিষেবা (অনুচ্ছেদ-১৫) ', '...', '0000-00-00', '0000-00-00', '2024-08-13 04:27:30', '2024-08-27 08:30:53', NULL),
(6, 'gd-9.1', 'ন্যাশনাল ডেটা রিপোজিটরির ব্যাকআপ সাইটের ইনস্টলড যন্ত্রপাতি উন্নয়ন, ক্রয়, পরিবহণ/স্থানান্তর এবং রক্ষণাবেক্ষণ ও নিরাপত্তা বৃদ্ধি কার্যক্রমের জন্য প্রয়োজনীয় যন্ত্রপাতি (অনুচ্ছেদ-১৪)', '...', '0000-00-00', '0000-00-00', '2024-08-13 04:27:30', '2024-08-27 08:31:34', NULL),
(7, 'gd-17.3', 'আইটি ইনফ্রাস্ট্রাকচার ফিজিক্যাল (ফিজিক্যাল সিকিউরিটি) ক্রয় এবং নিরাপত্তা মূল্যায়নের জন্য প্রয়োজনীয় যন্ত্রপাতির উন্নয়ন (অনুচ্ছেদ-১৬)', '...', '0000-00-00', '0000-00-00', '2024-08-13 04:27:30', '2024-08-27 08:32:10', NULL),
(8, 'gd-43.2', 'প্রকল্প অফিসের জন্য অফিস স্টেশনারির ক্রয়', '...', '2024-07-16', '2024-08-01', '2024-08-13 04:27:30', '2024-08-27 08:33:01', NULL),
(9, 'gd-26', 'কম্পিউটার, ব্ল্যাক এবং রঙিন টোনার ক্রয় ফটোকপিয়ার, প্রিন্টার জন্য(অ্যাডিটিভ-১৭)', '...', '2024-07-16', '0000-00-00', '2024-08-13 04:27:30', '2024-08-27 08:33:57', NULL),
(10, 'gd-17.1', 'ডিসি এবং DRS মনিটরিং সিস্টেম স্থাপন (অ্যাডিটিভ-১৪) ', '...', '0000-00-00', '0000-00-00', '2024-08-13 04:27:30', '2024-08-27 08:34:35', NULL),
(11, 'gd-17.4', 'ডেটা সেন্টার/DRS জন্য জরুরি যন্ত্রপাতির ক্রয়, মেরামত এবং প্রয়োজনীয় নিরাপত্তা সামগ্রী (অ্যাডিটিভ-১৪)', '...', '0000-00-00', '0000-00-00', '2024-08-13 04:27:30', '2024-08-27 08:35:18', NULL),
(12, 'gd-29.1', 'ডেটা সেন্টার এবং দুর্যোগ পুনরুদ্ধার সাইটের জন্য সম্পর্কিত ডেটাবেস ওরাকল সার্ভার, লাইসেন্স এবং সহায়ক পরিষেবা ক্রয় (অনুচ্ছেদ-১৮)', '...', '0000-00-00', '0000-00-00', '2024-08-13 04:27:30', '2024-08-27 08:36:01', NULL),
(13, 'gd-10.1', 'ডেটা সেন্টার (ডিসি) এর জন্য অর্ডার। ABIS সার্ভার আপগ্রেডেশন (অনুচ্ছেদ-১৪)', '...', '0000-00-00', '0000-00-00', '2024-08-13 04:27:30', '2024-08-27 08:36:48', NULL),
(14, 'gd-51.1', 'প্রবাসী নিবন্ধন প্রক্রিয়া সম্পর্কিত এসএমএস ক্রয় (পর্যায় ২) (অনুচ্ছেদ-১৮)', '...', '0000-00-00', '0000-00-00', '2024-08-13 04:27:30', '2024-08-27 08:37:26', NULL),
(15, 'NCS-17', 'স্মার্ট কার্ড, যন্ত্রপাতি এবং এক্সেসরিজ পরিবহন (অনুচ্ছেদ-১৫) ', '...', '0000-00-00', '0000-00-00', '2024-08-13 04:27:30', '2024-08-27 08:38:00', NULL),
(16, 'gd-4.1', 'ডেটা সেন্টার, পার্সোনালাইজেশন সেন্টার এবং সংশ্লিষ্ট বিভাগ: বৈদ্যুতিক যন্ত্রপাতি সহ ক্রয়, ইনস্টলেশন এবং রক্ষণাবেক্ষণ, UPS, জেনারেটর (অনুচ্ছেদ-১২)', '...', '0000-00-00', '0000-00-00', '2024-08-13 04:27:30', '2024-08-27 08:41:39', NULL),
(17, 'জিডি- ১৭.২', 'ডাটা সেন্টারের passive Equipment আপগ্রেডেশন ও ক্যাপাসিটি বৃদ্ধি এবং রক্ষণাবেক্ষণ (সংযোজনী-১৪)', 'Open Tender Method (OTM)', '2024-07-30', NULL, '2024-09-09 13:48:52', '2024-09-09 13:48:52', NULL),
(18, 'জিডি- ৩৪', 'মাইক্রোসফট সিস্টেম সাপোর্ট সফটওয়্যার (সংযোজনী-১৮)', 'Open Tender Method (OTM)', '2023-07-02', NULL, '2024-09-09 13:48:52', '2024-09-09 13:48:52', NULL),
(19, 'জিডি- ৪০', 'নেটওয়ার্ক ম্যানেজমেন্ট সিস্টেম সফটওয়্যার/সিস্টেম লট-১ (সংযোজনী-১৮)', 'Open Tender Method (OTM)', '2023-10-08', NULL, '2024-09-09 13:48:52', '2024-09-09 13:48:52', NULL),
(20, 'জিডি- ৪০', 'নেটওয়ার্ক ম্যানেজমেন্ট সিস্টেম সফটওয়্যার/ সিস্টেম (ভিডিও ওয়াল) লট-২ (সংযোজনী-১৮)', 'Open Tender Method (OTM)', '2024-04-11', NULL, '2024-09-09 13:48:52', '2024-09-09 13:48:52', NULL),
(21, 'জিডি- ৫০', 'প্রবাসি নিবন্ধন কার্যক্রম পরিচালনার জন্য আনুষঙ্গিক যন্ত্রপাতি ক্রয় (সংযোজনী-১৭)', 'Open Tender Method (OTM)', '2024-01-16', NULL, '2024-09-09 13:48:52', '2024-09-09 13:48:52', NULL),
(22, 'এনসিএস- ১০', 'ভোটার নিবন্ধনের জন্য (বিভিআরএস) সফটওয়্যার লাইসেন্স ও সাপোর্ট সার্ভিস ক্রয়', 'Direct Purchase Method (DPM)', '2025-11-30', NULL, '2024-09-09 13:48:52', '2024-09-09 13:48:52', NULL),
(23, 'এনসিএস- ১', 'অফিস/কর্মসহায়ক সেবা [ সহকারী পরিচালক (২-০ জন, সহকারী প্রোগ্রামার (৮৪ জন), সহকারী মেইনটেন্যান্স ইঞ্জিনিয়ার (২০ জন), ইলেক্ট্রিক্যাল ইঞ্জিনিয়ার (১জন)]', 'Open Tender Method (OTM)', '2025-11-30', NULL, '2024-09-09 13:48:52', '2024-09-09 13:48:52', NULL),
(24, 'এনসিএস- ২', 'অফিস/কর্মসহায়ক সেবা [ উপ সহকারী পরিচালক (২-০ জন, প্রশাসনিক কর্মকর্তা/ ব্যক্তিগত সহকারী (৭ জন), সিনিয়র কম্পিউটার অপারেটর/ ডাটা এন্ট্রি কন্ট্রোল সুপারভাইজার (৩১জন)]', 'Open Tender Method (OTM)', '2025-11-30', NULL, '2024-09-09 13:48:52', '2024-09-09 13:48:52', NULL),
(25, 'এনসিএস- ৭', 'অফিস/কর্মসহায়ক সেবা (রাজশাহীএবং রংপুর অঞ্চলের ডাটা এন্ট্রি অপারেটর)', 'Open Tender Method (OTM)', '2025-11-30', NULL, '2024-09-09 13:48:52', '2024-09-09 13:48:52', NULL),
(26, 'এনসিএস- ২৪', 'ডাটা সেন্টার ও ডিজাস্টার রিকভারী সিস্টেম এর জন্য ABIS/AFIS সফটওয়্যার লাইসেন্স ও সাপোর্ট সার্ভিস (সংযোজনী-১৮ ক)', 'Direct Purchase Method (DPM)', '2024-06-30', NULL, '2024-09-09 13:48:52', '2024-09-09 13:48:52', NULL),
(27, 'এনসিএস- ২৪.১', 'পূর্বে ক্রয়কৃত ভোটার নিবন্ধনের জন্য ABIS ও BVRS এর আপগ্রেডেশান এবং ভোটার ডাটাবেজ রিয়েল-টাইম ব্যাকআপ সল্যুশন ও সাপোর্ট সার্ভিস ক্রয় (সংযোজনী-১৮)', 'Direct Purchase Method (DPM)', '2025-11-30', NULL, '2024-09-09 13:48:52', '2024-09-09 13:48:52', NULL),
(28, 'এনসিএস- ২৫', 'ভোটার নিবন্ধনের জন্য (BVRS) সার্ভার সফটওয়্যার লাইসেন্স ও সাপোর্ট সার্ভিস (সংযোজনী-১৮)', 'Direct Purchase Method (DPM)', '2024-06-30', NULL, '2024-09-09 13:48:52', '2024-09-09 13:48:52', NULL),
(29, 'এনসিএস-২৬', 'পূর্বে ক্রয়কৃত ভোটার নিবন্ধনের জন্য (BVRS) হার্ডওয়্যার এর সার্ভিস সাপোর্ট ক্রয় (সংযোজনী-১৪)', 'Direct Purchase Method (DPM)', '2025-11-30', NULL, '2024-09-09 13:48:52', '2024-09-09 13:48:52', NULL),
(30, 'test', 'test', 'otm', '2024-11-23', '2024-11-30', '2024-11-28 08:35:42', '2024-11-28 08:35:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pdsir_commitment`
--

CREATE TABLE `pdsir_commitment` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pdsir_commitment`
--

INSERT INTO `pdsir_commitment` (`id`, `title`, `description`, `created_at`) VALUES
(1, 'ডিজিটাল শিক্ষা প্রোগ্রামের জন্য নতুন উদ্যোগ', 'বাংলাদেশের শিক্ষার ডিজিটাল রূপান্তরের জন্য ১৫ ডিসেম্বর, ২০২৪ তারিখে একটি প্রকল্প শুরু হবে। প্রকল্পটির উদ্দেশ্য হল দেশের সকল শিক্ষাপ্রতিষ্ঠানে ই-লার্নিং সিস্টেমের মাধ্যমে শিক্ষা প্রদান করা।', '2024-11-17 04:00:00'),
(2, 'জাতীয় সড়ক সুরক্ষা প্রকল্পের বাস্তবায়ন', 'দেশের প্রধান সড়কগুলোতে নিরাপত্তা ব্যবস্থা বৃদ্ধির জন্য আগামী ৩ জানুয়ারি, ২০২৫ তারিখে একটি প্রকল্প বাস্তবায়ন শুরু হবে। প্রকল্পের জন্য প্রাক্কলিত ব্যয় ১৫০ কোটি টাকা।', '2024-11-17 04:05:00'),
(3, 'স্বাস্থ্য সেবায় প্রযুক্তির ব্যবহার বৃদ্ধি', 'বাংলাদেশের সরকারি হাসপাতালগুলোর ডিজিটালাইজেশনের জন্য ১০ ফেব্রুয়ারি, ২০২৫ তারিখে একটি নতুন প্রকল্প শুরু হবে, যার প্রাক্কলিত ব্যয় ৮০ কোটি টাকা।', '2024-11-17 04:10:00'),
(4, 'কৃষি উন্নয়ন এবং আধুনিক প্রযুক্তির ব্যবহার', 'কৃষি ক্ষেত্রে প্রযুক্তির ব্যবহার বৃদ্ধির জন্য ২৭ মার্চ, ২০২৫ তারিখে একটি প্রকল্প শুরু হবে। এই প্রকল্পটির মাধ্যমে কৃষকদের জন্য উন্নত প্রযুক্তি ও আধুনিক যন্ত্রপাতি সরবরাহ করা হবে।', '2024-11-17 04:15:00'),
(5, 'তথ্য প্রযুক্তি খাতে উদ্ভাবন ও বিনিয়োগ বৃদ্ধি', 'বাংলাদেশে তথ্য প্রযুক্তি খাতে নতুন উদ্ভাবন এবং বিনিয়োগের জন্য ৫ মে, ২০২৫ তারিখে একটি নতুন প্রকল্প শুরু হবে। এই প্রকল্পটির প্রাক্কলিত ব্যয় ৩০০ কোটি টাকা।', '2024-11-17 04:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `description`, `image_url`, `folder`) VALUES
(30, 'Italy', '', 'uploads/Italy/20231027_173735.jpg', 'Italy'),
(33, 'UAE', 'UAE', 'uploads/UAE/20230518_151258.jpg', 'UAE'),
(36, 'UAE', 'UAE', 'uploads/UAE/20230525_141312.jpg', 'UAE'),
(38, 'UAE', 'UAE', 'uploads/UAE/20230525_120032.jpg', 'UAE'),
(41, 'Italy', 'Italy', 'uploads/Italy/20230525_141354.jpg', 'Italy'),
(42, 'Saudi Arab', 'Saudi Arab', 'uploads/Saudi Arab/WhatsApp Image 2023-11-06 at 9.34.35 PM (1).jpeg', 'Saudi Arab'),
(43, 'Saudi Arab', 'Saudi Arab', 'uploads/Saudi Arab/WhatsApp Image 2023-11-06 at 9.34.37 PM (1).jpeg', 'Saudi Arab'),
(51, 'Kuwait', 'Kuwait', 'uploads/Kuwait/WhatsApp Image 2024-11-11 at 12.36.55 PM (1).jpeg', 'Kuwait'),
(53, 'Kuwait', 'Kuwait', 'uploads/Kuwait/WhatsApp Image 2024-11-11 at 12.36.57 PM.jpeg', 'Kuwait'),
(54, 'Malaysia', 'Malaysia', 'uploads/Malaysia/WhatsApp Image 2024-11-11 at 3.19.09 PM (1).jpeg', 'Malaysia'),
(56, 'Malaysia', 'Malaysia', 'uploads/Malaysia/WhatsApp Image 2024-11-11 at 3.19.14 PM.jpeg', 'Malaysia'),
(57, 'Malaysia', 'Malaysia', 'uploads/Malaysia/WhatsApp Image 2024-11-11 at 3.19.12 PM.jpeg', 'Malaysia'),
(58, 'Qatar', 'Qatar', 'uploads/Qatar/PXL_20240331_091126179~2.jpg', 'Qatar'),
(59, 'Qatar', 'Qatar', 'uploads/Qatar/PXL_20240404_103457782.MP.jpg', 'Qatar'),
(61, 'Qatar', 'Qatar', 'uploads/Qatar/PXL_20240331_082933634.MP.jpg', 'Qatar'),
(62, 'Qatar', 'Qatar', 'uploads/Qatar/PXL_20240331_091108517.jpg', 'Qatar'),
(64, 'UK', 'UK', 'uploads/UK/WhatsApp Image 2024-11-11 at 2.48.47 PM.jpeg', 'UK'),
(66, 'UK', 'UK', 'uploads/UK/WhatsApp Image 2024-11-11 at 2.48.45 PM (1).jpeg', 'UK'),
(68, 'UK', 'UK', 'uploads/UK/WhatsApp Image 2024-11-11 at 2.48.46 PM.jpeg', 'UK'),
(69, 'Saudi Arab', 'Saudi Arab', 'uploads/Saudi Arab/WhatsApp Image 2023-10-18 at 6.48.29 PM (1).jpeg', 'Saudi Arab'),
(70, 'Saudi Arab', 'Saudi Arab', 'uploads/Saudi Arab/WhatsApp Image 2023-10-25 at 7.44.26 PM (2).jpeg', 'Saudi Arab'),
(76, 'UAE', 'UAE', 'uploads/UAE/20230528_173235.jpg', 'UAE'),
(80, 'Election Commissioner Abdul Fazal Md. Sanaullah Brig. Gen. (Retd.)', 'New Election Commissioner', 'uploads/New Election Commissioner/WhatsApp Image 2024-11-24 at 1.59.29 PM.jpeg', 'New Election Commissioner'),
(81, 'Election Commissioner Md. Anwarul Islam Sarker', 'New Election Commissioner', 'uploads/New Election Commissioner/WhatsApp Image 2024-11-24 at 1.59.31 PM (1).jpeg', 'New Election Commissioner'),
(82, 'Chief Election Commissioner A M M Nasir Uddin', 'New Election Commissioner', 'uploads/New Election Commissioner/WhatsApp Image 2024-11-24 at 1.59.31 PM.jpeg', 'New Election Commissioner'),
(83, 'Election Commissioner Tahmida Ahmad', 'New Election Commissioner', 'uploads/New Election Commissioner/WhatsApp Image 2024-11-24 at 1.59.30 PM.jpeg', 'New Election Commissioner'),
(84, 'Election Commissioner Abdur Rahmanel Masud', 'New Election Commissioner', 'uploads/New Election Commissioner/WhatsApp Image 2024-11-24 at 1.59.27 PM (1).jpeg', 'New Election Commissioner'),
(85, 'New Election Commissioner', 'New Election Commissioner', 'uploads/New Election Commissioner/WhatsApp Image 2024-11-24 at 1.59.28 PM (1).jpeg', 'New Election Commissioner'),
(86, 'New Election Commissioner', 'New Election Commissioner', 'uploads/New Election Commissioner/WhatsApp Image 2024-11-24 at 1.59.28 PM (1).jpeg', 'New Election Commissioner'),
(87, 'New Election Commissioner', 'New Election Commissioner', 'uploads/New Election Commissioner/WhatsApp Image 2024-11-24 at 1.59.27 PM.jpeg', 'New Election Commissioner'),
(88, 'New Election Commissioner', 'New Election Commissioner', 'uploads/New Election Commissioner/WhatsApp Image 2024-11-24 at 1.59.26 PM (1).jpeg', 'New Election Commissioner'),
(89, 'New Election Commissioner', 'New Election Commissioner', 'uploads/New Election Commissioner/WhatsApp Image 2024-11-24 at 1.59.27 PM.jpeg', 'New Election Commissioner'),
(90, 'AFD DAY 2024', 'AFD DAY 21 november 2024', 'uploads/AFD DAY 2024/WhatsApp Image 2024-12-04 at 5.49.17 PM.jpeg', 'AFD DAY 2024'),
(91, 'AFD DAY 2024', 'AFD DAY 2024', 'uploads/AFD DAY 2024/WhatsApp Image 2024-12-04 at 5.54.31 PM.jpeg', 'AFD DAY 2024'),
(92, 'AFD DAY 2024', 'AFD DAY 2024', 'uploads/AFD DAY 2024/WhatsApp Image 2024-12-04 at 5.54.31 PM (1).jpeg', 'AFD DAY 2024'),
(93, 'AFD DAY 2024', 'AFD DAY 2024', 'uploads/AFD DAY 2024/WhatsApp Image 2024-12-04 at 5.54.31 PM (2).jpeg', 'AFD DAY 2024'),
(94, 'Kuwait', '', 'uploads/Kuwait/WhatsApp Image 2024-11-11 at 12.36.56 PM.jpeg', 'Kuwait'),
(96, 'Kuwait', '', 'uploads/Kuwait/WhatsApp Image 2024-11-11 at 3.36.58 PM.jpeg', 'Kuwait'),
(100, 'Smart Card Distribution', 'Smart Card Distribution', 'uploads/Smart Card Distribution/WhatsApp Image 2024-12-05 at 9.45.20 AM (1).jpeg', 'Smart Card Distribution'),
(101, 'Smart Card Distribution', 'Smart Card Distribution', 'uploads/Smart Card Distribution/WhatsApp Image 2024-12-05 at 9.45.20 AM.jpeg', 'Smart Card Distribution'),
(103, 'UK', '', 'uploads/UK/WhatsApp Image 2024-11-11 at 2.47.28 PM.jpeg', 'UK'),
(105, 'UK', '', 'uploads/UK/WhatsApp Image 2024-11-11 at 2.47.27 PM.jpeg', 'UK'),
(106, 'Italy', '', 'uploads/ITALY/20231026_153634.jpg', 'ITALY'),
(107, 'Italy', '', 'uploads/ITALY/20231020_113415.jpg', 'ITALY'),
(109, 'Saudi Arab', '', 'uploads/Saudi Arab/WhatsApp Image 2023-10-18 at 6.48.29 PM.jpeg', 'Saudi Arab'),
(110, 'Saudi Arab', '', 'uploads/Saudi Arab/WhatsApp Image 2023-10-25 at 7.44.28 PM.jpeg', 'Saudi Arab'),
(111, 'Saudi Arab', '', 'uploads/Saudi Arab/WhatsApp Image 2023-11-06 at 9.34.38 PM.jpeg', 'Saudi Arab'),
(113, 'Smart Card', 'Smart Card kustia', 'uploads/Smart Card Distribution /Kustia 2.jpg', 'Smart Card Distribution '),
(114, 'Smart Card', 'Smart Card kustia', 'uploads/Smart Card Distribution /kustia 4.jpg', 'Smart Card Distribution '),
(115, 'smart card', 'smart card ', 'uploads/Smart Card Distribution/WhatsApp Image 2024-12-05 at 1.05.01 PM.jpeg', 'Smart Card Distribution'),
(116, 'smart card', 'smart card', 'uploads/Smart Card Distribution/WhatsApp Image 2024-12-05 at 1.05.02 PM.jpeg', 'Smart Card Distribution'),
(118, 'Training AD, AP & AME', 'Training AD, AP & AME', 'uploads/Training Program/WhatsApp Image 2024-12-05 at 1.05.02 PM (1).jpeg', 'Training Program'),
(119, 'Training AP & AME\"s', 'Training AP & AME\"s', 'uploads/Training Program/WhatsApp Image 2024-12-05 at 1.32.50 PM.jpeg', 'Training Program'),
(120, 'Training AP & AME\"s', 'Training AP & AME\"s', 'uploads/Training Program/WhatsApp Image 2024-12-05 at 1.39.28 PM.jpeg', 'Training Program'),
(121, 'Training AP & AME\"s', 'Training AP & AME\"s', 'uploads/Training Program/WhatsApp Image 2024-12-05 at 1.41.33 PM.jpeg', 'Training Program'),
(122, 'Voter Day 2023', '2 March 2023', 'uploads/Voter Day/WhatsApp Image 2024-12-05 at 10.00.44 AM.jpeg', 'Voter Day'),
(124, 'Smart Card For Freedom Fighter', 'Smart Card For Freedom Fighter', 'uploads/Smart Card Distribution/WhatsApp Image 2024-12-05 at 1.54.18 PM.jpeg', 'Smart Card Distribution'),
(127, 'Malaysia', '', 'uploads/MALAYSIA/WhatsApp Image 2024-11-11 at 3.19.13 PM (2).jpeg', 'MALAYSIA'),
(128, 'Malaysia', '', 'uploads/MALAYSIA/WhatsApp Image 2024-11-11 at 3.19.06 PM (1).jpeg', 'MALAYSIA'),
(129, 'Malaysia', '', 'uploads/MALAYSIA/WhatsApp Image 2024-11-11 at 3.19.05 PM.jpeg', 'MALAYSIA'),
(130, 'Italy', '', 'uploads/ITALY/20231030_133123.jpg', 'ITALY'),
(131, 'Italy', '', 'uploads/ITALY/20231027_172003.jpg', 'ITALY'),
(132, 'Italy', '', 'uploads/ITALY/20231027_123042.jpg', 'ITALY'),
(133, 'Kuwait', '', 'uploads/Kuwait/WhatsApp Image 2024-11-11 at 3.37.01 PM.jpeg', 'Kuwait'),
(134, 'Kuwait', '', 'uploads/Kuwait/WhatsApp Image 2024-11-11 at 3.37.00 PM.jpeg', 'Kuwait'),
(135, 'Qatar', '', 'uploads/QATAR/PXL_20240402_111642894.jpg', 'QATAR'),
(136, 'Saudi Arab', '', 'uploads/Saudi Arab/WhatsApp Image 2024-05-05 at 9.22.26 AM.jpeg', 'Saudi Arab'),
(137, 'Saudi Arab', '', 'uploads/Saudi Arab/WhatsApp Image 2023-10-17 at 7.29.40 PM.jpeg', 'Saudi Arab'),
(138, 'Saudi Arab', '', 'uploads/Saudi Arab/WhatsApp Image 2023-10-19 at 9.11.30 PM (2).jpeg', 'Saudi Arab'),
(139, 'Saudi Arab', '', 'uploads/Saudi Arab/WhatsApp Image 2023-10-22 at 6.07.06 PM (1).jpeg', 'Saudi Arab'),
(140, 'UAE', '', 'uploads/UAE/20230531_122732.jpg', 'UAE'),
(141, 'UAE', '', 'uploads/UAE/20230530_143914.jpg', 'UAE'),
(142, 'UAE', '', 'uploads/UAE/20230528_173746.jpg', 'UAE'),
(143, 'UAE', '', 'uploads/UAE/20230528_124513.jpg', 'UAE'),
(144, 'Smart Card ', 'Smart Card Distribution', 'uploads/Smart Card Distribution/WhatsApp Image 2024-11-26 at 12.03.28 PM.jpeg', 'Smart Card Distribution'),
(145, 'আখতার আহমেদ, সিনিয়র সচিব', 'জনাব আখতার আহমেদ,  সিনিয়র সচিব, নির্বচন কমিশন সচিবালয়।', 'uploads/Election Commission Secretary/WhatsApp Image 2024-12-05 at 10.08.09 PM.jpeg', 'Election Commission Secretary'),
(146, 'Project Managment Training ', 'Project Managment Training 2024', 'uploads/Training Program/WhatsApp Image 2024-12-08 at 2.31.04 PM (2).jpeg', 'Training Program'),
(147, 'NOC Training ', 'NOC Training 04-06-2024', 'uploads/Training Program/WhatsApp Image 2024-12-08 at 2.37.01 PM.jpeg', 'Training Program'),
(148, 'NOC Training ', 'NOC Training 04-06-2024', 'uploads/Training Program/WhatsApp Image 2024-12-08 at 2.37.01 PM (1).jpeg', 'Training Program'),
(149, 'Ofiice Managment Training ', 'Ofiice Managment Training 2024', 'uploads/Training Program/WhatsApp Image 2024-12-08 at 2.44.13 PM.jpeg', 'Training Program'),
(150, 'Ofiice Managment Training ', 'Ofiice Managment Training 2024', 'uploads/Training Program/WhatsApp Image 2024-12-08 at 2.41.40 PM (1).jpeg', 'Training Program'),
(151, 'Ofiice Managment Training ', 'Ofiice Managment Training 2024', 'uploads/Training Program/WhatsApp Image 2024-12-08 at 2.42.32 PM (1).jpeg', 'Training Program'),
(152, 'Cyber Security Training', 'Cyber Security Training 2024', 'uploads/Training Program/WhatsApp Image 2024-12-08 at 2.50.13 PM.jpeg', 'Training Program'),
(153, 'Cyber Security Training', 'Cyber Security Training', 'uploads/Training Program/WhatsApp Image 2024-12-08 at 2.53.41 PM.jpeg', 'Training Program'),
(154, 'Systen Assessment Workshop for DC & DRS', 'Systen Assessment Workshop for DC & DRS', 'uploads/Training Program/WhatsApp Image 2024-12-08 at 3.04.10 PM (1).jpeg', 'Training Program'),
(155, 'Systen Assessment Workshop for DC & DRS', 'Systen Assessment Workshop for DC & DRS', 'uploads/Training Program/WhatsApp Image 2024-12-08 at 3.04.10 PM.jpeg', 'Training Program'),
(156, 'Upgradation of BVRS & ABIS System ', 'Upgradation of BVRS & ABIS System ', 'uploads/Training Program/Screenshot 2024-12-08 151416.jpg', 'Training Program'),
(157, 'Upgradation of BVRS & ABIS System ', 'Upgradation of BVRS & ABIS System ', 'uploads/Training Program/WhatsApp Image 2024-12-08 at 3.15.32 PM.jpeg', 'Training Program'),
(158, 'Data Entry Operator Training ', ' New Data Entry Operator Training ', 'uploads/Training Program/WhatsApp Image 2023-07-17 at 7.58.43 AM (1).jpeg', 'Training Program'),
(159, 'Smart Card Distribution', 'Smart Card Distribution', 'uploads/Smart Card Distribution/WhatsApp Image 2023-08-03 at 1.35.23 PM.jpeg', 'Smart Card Distribution'),
(160, 'Smart Card Distribution', 'Smart Card Distribution', 'uploads/Smart Card Distribution/WhatsApp Image 2023-08-03 at 1.35.24 PM.jpeg', 'Smart Card Distribution'),
(161, 'Data Entry Operator Training', 'Data Entry Operator Training', 'uploads/Training Program/WhatsApp Image 2024-12-08 at 3.34.05 PM (3).jpeg', 'Training Program'),
(162, 'Data Entry Operator Training', 'Data Entry Operator Training', 'uploads/Training Program/WhatsApp Image 2024-12-08 at 3.34.05 PM (2).jpeg', 'Training Program'),
(164, 'Agreement Signing', '', 'uploads/Agreement Signing/WhatsApp Image 2024-12-08 at 4.04.20 PM (1).jpeg', 'Agreement Signing'),
(165, 'Agreement Signing', '', 'uploads/Agreement Signing/WhatsApp Image 2024-12-08 at 4.04.20 PM.jpeg', 'Agreement Signing'),
(166, 'Agreement Signing', '', 'uploads/Agreement Signing/WhatsApp Image 2024-12-08 at 4.04.19 PM.jpeg', 'Agreement Signing'),
(167, 'Agreement Signing', '', 'uploads/Agreement Signing/WhatsApp Image 2024-12-08 at 4.04.18 PM.jpeg', 'Agreement Signing'),
(168, 'Agreement Signing', '', 'uploads/Agreement Signing/WhatsApp Image 2024-12-08 at 4.42.20 PM.jpeg', 'Agreement Signing'),
(169, 'UK', '', 'uploads/UK/WhatsApp Image 2024-11-11 at 2.47.23 PM.jpeg', 'UK'),
(170, 'UK', '', 'uploads/UK/WhatsApp Image 2024-11-11 at 2.47.31 PM.jpeg', 'UK');

-- --------------------------------------------------------

--
-- Table structure for table `procurement_plan`
--

CREATE TABLE `procurement_plan` (
  `id` int(11) NOT NULL,
  `total_packages` text NOT NULL,
  `previous_contracts` text NOT NULL,
  `signed_contracts` text NOT NULL,
  `implementation_progress_rate` text NOT NULL,
  `packages_under_evaluation` text NOT NULL,
  `remaining_packages` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `procurement_plan`
--

INSERT INTO `procurement_plan` (`id`, `total_packages`, `previous_contracts`, `signed_contracts`, `implementation_progress_rate`, `packages_under_evaluation`, `remaining_packages`, `created_at`) VALUES
(1, 'e', 'e', 'e', 'e', 'e', 'e', '2024-12-04 04:29:53'),
(2, 'বাংলাদেশ একটি সুন্দর দেশ। এখানে নানা ধরনের প্রাকৃতিক সৌন্দর্য রয়েছে। এই দেশে অনেক ধরনের সংস্কৃতি এবং ঐতিহ্য রয়েছে। মানুষদের মধ্যে অতিথিপরায়ণতা অত্যন্ত ভালো। বাংলাদেশের চট্টগ্রাম, সিলেট, রাজশাহী, ঢাকা এবং খুলনা অন্যতম প্রধান শহর। সব জায়গায় রয়েছে পর্যটন স্পট এবং স্থানীয় খাবারের জন্য বিখ্যাত স্থান। \r\n\r\nপ্রকৃতির অনেক বৈচিত্র্য এবং স্থানীয় জীবনযাত্রার প্রভাব বাংলাদেশকে একটি অতি আকর্ষণীয় দেশ করে তুলেছে।', 'বাংলাদেশ একটি সুন্দর দেশ। এখানে নানা ধরনের প্রাকৃতিক সৌন্দর্য রয়েছে। এই দেশে অনেক ধরনের সংস্কৃতি এবং ঐতিহ্য রয়েছে। মানুষদের মধ্যে অতিথিপরায়ণতা অত্যন্ত ভালো। বাংলাদেশের চট্টগ্রাম, সিলেট, রাজশাহী, ঢাকা এবং খুলনা অন্যতম প্রধান শহর। সব জায়গায় রয়েছে পর্যটন স্পট এবং স্থানীয় খাবারের জন্য বিখ্যাত স্থান। \r\n\r\nপ্রকৃতির অনেক বৈচিত্র্য এবং স্থানীয় জীবনযাত্রার প্রভাব বাংলাদেশকে একটি অতি আকর্ষণীয় দেশ করে তুলেছে।', 'বাংলাদেশ একটি সুন্দর দেশ। এখানে নানা ধরনের প্রাকৃতিক সৌন্দর্য রয়েছে। এই দেশে অনেক ধরনের সংস্কৃতি এবং ঐতিহ্য রয়েছে। মানুষদের মধ্যে অতিথিপরায়ণতা অত্যন্ত ভালো। বাংলাদেশের চট্টগ্রাম, সিলেট, রাজশাহী, ঢাকা এবং খুলনা অন্যতম প্রধান শহর। সব জায়গায় রয়েছে পর্যটন স্পট এবং স্থানীয় খাবারের জন্য বিখ্যাত স্থান। \r\n\r\nপ্রকৃতির অনেক বৈচিত্র্য এবং স্থানীয় জীবনযাত্রার প্রভাব বাংলাদেশকে একটি অতি আকর্ষণীয় দেশ করে তুলেছে।', 'বাংলাদেশ একটি সুন্দর দেশ। এখানে নানা ধরনের প্রাকৃতিক সৌন্দর্য রয়েছে। এই দেশে অনেক ধরনের সংস্কৃতি এবং ঐতিহ্য রয়েছে। মানুষদের মধ্যে অতিথিপরায়ণতা অত্যন্ত ভালো। বাংলাদেশের চট্টগ্রাম, সিলেট, রাজশাহী, ঢাকা এবং খুলনা অন্যতম প্রধান শহর। সব জায়গায় রয়েছে পর্যটন স্পট এবং স্থানীয় খাবারের জন্য বিখ্যাত স্থান। \r\n\r\nপ্রকৃতির অনেক বৈচিত্র্য এবং স্থানীয় জীবনযাত্রার প্রভাব বাংলাদেশকে একটি অতি আকর্ষণীয় দেশ করে তুলেছে।', 'বাংলাদেশ একটি সুন্দর দেশ। এখানে নানা ধরনের প্রাকৃতিক সৌন্দর্য রয়েছে। এই দেশে অনেক ধরনের সংস্কৃতি এবং ঐতিহ্য রয়েছে। মানুষদের মধ্যে অতিথিপরায়ণতা অত্যন্ত ভালো। বাংলাদেশের চট্টগ্রাম, সিলেট, রাজশাহী, ঢাকা এবং খুলনা অন্যতম প্রধান শহর। সব জায়গায় রয়েছে পর্যটন স্পট এবং স্থানীয় খাবারের জন্য বিখ্যাত স্থান। \r\n\r\nপ্রকৃতির অনেক বৈচিত্র্য এবং স্থানীয় জীবনযাত্রার প্রভাব বাংলাদেশকে একটি অতি আকর্ষণীয় দেশ করে তুলেছে।', 'বাংলাদেশ একটি সুন্দর দেশ। এখানে নানা ধরনের প্রাকৃতিক সৌন্দর্য রয়েছে। এই দেশে অনেক ধরনের সংস্কৃতি এবং ঐতিহ্য রয়েছে। মানুষদের মধ্যে অতিথিপরায়ণতা অত্যন্ত ভালো। বাংলাদেশের চট্টগ্রাম, সিলেট, রাজশাহী, ঢাকা এবং খুলনা অন্যতম প্রধান শহর। সব জায়গায় রয়েছে পর্যটন স্পট এবং স্থানীয় খাবারের জন্য বিখ্যাত স্থান। \r\n\r\nপ্রকৃতির অনেক বৈচিত্র্য এবং স্থানীয় জীবনযাত্রার প্রভাব বাংলাদেশকে একটি অতি আকর্ষণীয় দেশ করে তুলেছে।', '2024-12-10 04:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `smart_card_conditions`
--

CREATE TABLE `smart_card_conditions` (
  `id` int(11) NOT NULL,
  `distribution_id` int(11) NOT NULL,
  `card_number` int(11) NOT NULL,
  `remaining` int(11) NOT NULL,
  `date_of_condition` date DEFAULT NULL,
  `total_applicant` int(11) DEFAULT NULL,
  `biometric_accepted_by_mission` int(11) DEFAULT NULL,
  `investigation_pending_approval` int(11) DEFAULT NULL,
  `investigation_approved` int(11) DEFAULT NULL,
  `rejected` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `sub_district_thana_office_investigation` int(11) DEFAULT NULL,
  `mission_upload_pending` int(11) DEFAULT NULL,
  `upload` int(11) DEFAULT NULL,
  `ready_for_print` int(11) DEFAULT NULL,
  `printed` int(11) DEFAULT NULL,
  `sent_to_mission` int(11) DEFAULT NULL,
  `distributed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smart_card_conditions`
--

INSERT INTO `smart_card_conditions` (`id`, `distribution_id`, `card_number`, `remaining`, `date_of_condition`, `total_applicant`, `biometric_accepted_by_mission`, `investigation_pending_approval`, `investigation_approved`, `rejected`, `total`, `sub_district_thana_office_investigation`, `mission_upload_pending`, `upload`, `ready_for_print`, `printed`, `sent_to_mission`, `distributed`) VALUES
(5, 4, 896, 7070, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 4, 8968, 186969, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 5, 6789, 6889, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 5, 6789, 6889, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 5, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 5, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 9, 45, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 10, 5, 5, '2024-11-25', 200, 150, 50, 40, 10, 300, 100, 50, 100, 100, 80, 150, 50);

-- --------------------------------------------------------

--
-- Table structure for table `smart_card_distribution`
--

CREATE TABLE `smart_card_distribution` (
  `id` int(11) NOT NULL,
  `serial_no` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smart_card_distribution`
--

INSERT INTO `smart_card_distribution` (`id`, `serial_no`, `country_name`) VALUES
(4, '2', 'Bangladesh'),
(5, '2', 'Bangladesh2'),
(9, '22', 'bd'),
(10, '1218', 'bd');

-- --------------------------------------------------------

--
-- Table structure for table `smart_nid_print_details`
--

CREATE TABLE `smart_nid_print_details` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `total_count` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smart_nid_print_distribution`
--

CREATE TABLE `smart_nid_print_distribution` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smart_nid_print_distribution`
--

INSERT INTO `smart_nid_print_distribution` (`id`, `category`, `created_at`) VALUES
(1, 'test', '2024-11-24 09:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `smart_nid_print_more_details`
--

CREATE TABLE `smart_nid_print_more_details` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `additional_info` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `snid_card_item_data`
--

CREATE TABLE `snid_card_item_data` (
  `id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `snid_card_item_data`
--

INSERT INTO `snid_card_item_data` (`id`, `subcategory_id`, `item_name`, `item_count`) VALUES
(5, 4, 'do', 1),
(6, 5, 'item1', 2),
(7, 6, '2', 3),
(8, 6, 't', 5),
(9, 7, '4', 4),
(10, 8, 'item1', 34),
(11, 9, 'item3', 4),
(12, 10, 'item4', 5),
(13, 11, 'item1', 34),
(14, 11, 'item3', 4),
(15, 12, '4', 4),
(16, 13, 'উপজেলা ভিত্তিক', 7),
(17, 14, '4', 0),
(18, 14, 'r', 0),
(19, 15, 'test', 5),
(20, 16, '', 0),
(21, 17, 'test', 5),
(22, 17, 't', 0),
(23, 19, 't', 0),
(24, 19, '9', 9),
(25, 21, 'test', 5),
(26, 23, 'test', 0),
(27, 23, '', 5),
(28, 25, 'test', 5),
(29, 25, 'test', 0),
(30, 25, '', 5),
(31, 4, 'doooo', 444),
(33, 26, '3', 4),
(35, 26, '4', 0),
(36, 26, '333333', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `snid_card_main_data`
--

CREATE TABLE `snid_card_main_data` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `total_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `snid_card_main_data`
--

INSERT INTO `snid_card_main_data` (`id`, `category_name`, `total_count`) VALUES
(4, 'maliha', 2147483647),
(5, 'test data', 2),
(6, 'test', 12),
(7, 'maliha', 43),
(8, 'malihammmm', 49),
(9, 'test', 0),
(10, 'test data', 5),
(11, 'test data', 5),
(12, 'test', 9),
(13, 'test data', 5),
(14, 'test data', 5),
(15, 'test data maliha new333', 10);

-- --------------------------------------------------------

--
-- Table structure for table `snid_card_subcategory_data`
--

CREATE TABLE `snid_card_subcategory_data` (
  `id` int(11) NOT NULL,
  `main_category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subcategory_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `snid_card_subcategory_data`
--

INSERT INTO `snid_card_subcategory_data` (`id`, `main_category_id`, `subcategory_name`, `description`, `subcategory_total`) VALUES
(4, 4, 'maliha1', 'test', 445),
(5, 5, 'sub1', 'des', 2),
(6, 6, 'মুদ্রণ চলমান এলাকা', 'test', 8),
(7, 6, 'মুদ্রণ চলমান এলাকা', '-', 4),
(8, 7, 'উপজেলা ও থানা ভিত্তিক মুদ্রণের তথ্য', '---', 34),
(9, 7, 'বীর মুক্তিযোদ্ধা খচিত স্মার্ট কার্ড মুদ্রণ ও প্রেরণ', '---', 4),
(10, 7, 'বিতরণ এলাকা', '---', 5),
(11, 8, 'মুদ্রণ চলমান এলাকা', '', 38),
(12, 8, 'বীর মুক্তিযোদ্ধা খচিত স্মার্ট কার্ড মুদ্রণ ও প্রেরণ', '', 4),
(13, 8, 'প্রবাসী বাংলাদেশীদের স্মার্ট কার্ড প্রেরণ', 'e', 7),
(14, 9, 'মুদ্রণ চলমান এলাকা', '', 0),
(15, 10, 'মুদ্রণ চলমান এলাকা', '', 5),
(16, 10, '', '', 0),
(17, 11, 'কার্যক্রম', '', 5),
(18, 11, '', '', 0),
(19, 12, 'মুদ্রণ চলমান এলাকা', '', 9),
(20, 12, '', '', 0),
(21, 13, 'মুদ্রণ চলমান এলাকা', 'test', 5),
(22, 13, '', '', 0),
(23, 14, '', '', 5),
(24, 14, 'ব্ল্যাংক কার্ডের হিসাব', '', 0),
(25, 15, 'কার্যক্রম', '', 10),
(26, 4, 'test maliha1218', '', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `tblassets`
--

CREATE TABLE `tblassets` (
  `AssetID` int(11) NOT NULL,
  `SLNumber` varchar(50) DEFAULT NULL,
  `OfficeName` varchar(255) DEFAULT NULL,
  `OfficeDivision` varchar(255) DEFAULT NULL,
  `OfficeZilla` varchar(255) DEFAULT NULL,
  `ItemName` varchar(255) DEFAULT NULL,
  `VendorName` varchar(255) DEFAULT NULL,
  `BrandName` varchar(255) DEFAULT NULL,
  `DeliveredQuantity` int(11) DEFAULT NULL,
  `CurrentQuantity` int(11) DEFAULT NULL,
  `Condition1` varchar(255) DEFAULT NULL,
  `Quantity1` int(11) DEFAULT NULL,
  `Condition2` varchar(255) DEFAULT NULL,
  `Quantity2` int(11) DEFAULT NULL,
  `ReceivedBy` varchar(255) DEFAULT NULL,
  `Position` varchar(255) DEFAULT NULL,
  `ConditionDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblassets`
--

INSERT INTO `tblassets` (`AssetID`, `SLNumber`, `OfficeName`, `OfficeDivision`, `OfficeZilla`, `ItemName`, `VendorName`, `BrandName`, `DeliveredQuantity`, `CurrentQuantity`, `Condition1`, `Quantity1`, `Condition2`, `Quantity2`, `ReceivedBy`, `Position`, `ConditionDate`) VALUES
(1, '1', 'dhaka', 'dhaka', 'dhaka', 'laptop', 'tiger it', 'dell', 43, 23, 'good', 3, 'bad', 4, 'kamal', 'ap', '2024-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `CommentId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `UserEmail` varchar(255) DEFAULT NULL,
  `Comment` text NOT NULL,
  `Status` enum('active','deleted') DEFAULT 'active',
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`CommentId`, `PackageId`, `UserEmail`, `Comment`, `Status`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 1, 'test@gmail.com', 'comment 1.work in progress', 'deleted', '2024-08-15 05:00:31', '2024-08-15 05:11:58'),
(2, 1, 'test@gmail.com', 'work in progress', 'deleted', '2024-08-15 05:12:11', '2024-08-15 05:18:01'),
(3, 1, 'test@gmail.com', 'test', 'deleted', '2024-08-15 05:33:55', '2024-08-30 14:05:53'),
(4, 1, 'test@gmail.com', 'test comment', 'deleted', '2024-08-15 05:40:54', '2024-08-30 14:07:27'),
(5, 1, 'test@gmail.com', 'comment 1.work in progress', 'deleted', '2024-08-15 05:43:06', '2024-08-30 14:13:27'),
(11, 1, NULL, 'test', 'active', '2024-11-20 07:13:15', '2024-11-20 07:13:15'),
(13, 62, NULL, 'bkjkj,', 'active', '2024-11-20 07:29:25', '2024-11-20 07:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblconditions`
--

CREATE TABLE `tblconditions` (
  `ConditionId` int(11) NOT NULL,
  `PackageNo` int(11) NOT NULL,
  `DateOfCondition` date NOT NULL,
  `মুদ্রিত_কার্ডের_সংখ্যা` int(11) NOT NULL,
  `মুদ্রন_বাকী` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2024-01-18 06:31:38', 1),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2024-01-19 06:32:41', 1),
(5, 'hohn Doe', 'John12@gmail.com', '142536254', 'Test Subject', 'this is for testing', '2024-02-03 13:07:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpackagedetails`
--

CREATE TABLE `tblpackagedetails` (
  `DetailId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `Detail` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DetailPart2` datetime DEFAULT NULL,
  `Status` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActualCompletedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpackagedetails`
--

INSERT INTO `tblpackagedetails` (`DetailId`, `PackageId`, `Detail`, `DetailPart2`, `Status`, `ActualCompletedDate`) VALUES
(26, 7, 'নিরাপত্তা ও সেবা শাখার আওতাভুক্ত এই প্যাকজটি। উক্ত শাখাকে ডিপিডি ডাটাবেজ মহোদয় স্পেসিফিকেশনটি প্রস্তুত করতে বলা হয়েছে।', '2024-07-15 14:24:00', NULL, NULL),
(29, 8, ' প্রকল্প অফিসের জন্য অফিস স্টেশনারী ক্রয় প্যাকেজটির স্পেসিফিকেশন তৈরির কাজ সম্পন হয়েছে। ১৬-০৭-২০২৪ ইং তারিখে প্রকিউরমেন্ট শাখাকে একটি স্পেসিফিকেশন প্রেরণ করা হয়। পরবর্তীতে ০৪-০৮-২০২৪ ইং তারিখে সংশোধিত আরেকটি স্পেসিফিকেশন পুনরায় প্রেরণ করা হয়। ', '2024-08-04 14:31:00', NULL, NULL),
(30, 9, 'প্রিন্টার এবং টোনার এর স্পেসিফিকেশনটির কার্যক্রম  সম্পন্ন হয়েছে।  ১৬-০৭-২০২৪ ইং তারিখে প্রকিউরমেন্ট শাখাকে পরবর্তী কার্যাবলী সম্পন্ন করার জন্য প্রেরণ করা হয়।', '2024-12-03 00:00:00', 'test', '2024-12-11'),
(31, 10, 'প্যাকেজটির কার্যক্রম এখনো শুরু হয়নি। ডিপিডি ডাটাবেজ মহোদয়ের নির্দেশক্রমে পরবর্তীতে শুরু করা হবে।', '2024-09-10 14:42:00', NULL, NULL),
(32, 11, 'প্যাকেজটির কার্যক্রম এখনো শুরু হয়নি। ডিপিডি ডাটাবেজ মহোদয়ের নির্দেশক্রমে পরবর্তীতে শুরু করা হবে', '2024-09-10 14:42:00', NULL, NULL),
(33, 12, 'প্যাকেজটির কার্যক্রম এখনো শুরু হয়নি। ডিপিডি ডাটাবেজ মহোদয়ের নির্দেশক্রমে পরবর্তীতে শুরু করা হবে', '2024-09-10 14:43:00', NULL, NULL),
(34, 17, 'প্যাকেজটির কার্যক্রম এখনো শুরু হয়নি। ডিপিডি ডাটাবেজ মহোদয়ের নির্দেশক্রমে পরবর্তীতে শুরু করা হবে', '2024-09-10 14:45:00', NULL, NULL),
(35, 57, 'স্পেসিফিকেশনটির কার্যক্রম সম্পন্ন হয়েছে। ১৪-০২-২৪ ইং তারিখে যাচাইয়ান্তে  স্পেসিফিকেশনটি যাচাই কমিটিতে প্রেরণ করা হয়।  পরবর্তীতে যাচাই কমিটি কর্তৃক Technical Specification টি সঠিক আছে বলে মত প্রকাশ করেন।  উক্ত স্পেসিফিকেশনটি  ২৯-০২-২০২৪ ইং তারিখে পরবর্তীতে', '2024-02-29 14:51:00', NULL, NULL),
(36, 58, ' প্যাকেজটির স্পেসিফিকেশন তৈরির কাজ সম্পন হয়েছ। ১০-০৩-২০২৪ ইং তারিখে প্রকিউরমেন্ট শাখাকে একটি স্পেসিফিকেশন প্রেরণ করা হয়। পরবর্তীতে ০৫-০৫-২০২৪ ইং তারিখে সংশোধিত আরেকটি স্পেসিফিকেশন পুনরায় প্রেরণ করা হয় এবং পরবর্তী কার্যক্রম গ্রহণের জন্য নির্দেশক্রমে অনুরোধ', '2024-05-05 15:05:00', NULL, NULL),
(47, 2, 'টিপু সুলতান (ডাটাবেজ কনসালটেন্ট) স্যার এর কাছে উপস্থাপন করা আছে। টাইগার আইটির সাথে আলোচনা সাপেক্ষে স্পেসিফিকেশটি প্রস্তুত করা হবে।', '2024-08-13 12:45:00', 'test', '0000-00-00'),
(48, 3, 'টিপু সুলতান (ডাটাবেজ কনসালটেন্ট) স্যার এর কাছে উপস্থাপন করা আছে। টাইগার আইটির সাথে আলোচনা সাপেক্ষে  স্পেসিফিকেশটি প্রস্তুত করা হবে।', '2024-08-13 12:45:00', NULL, NULL),
(49, 4, 'স্পেসিফিকেশন তৈরির কার্যক্রম অপেক্ষমাণ অবস্থায় আছে।  ডিপিডি মেজর মামুনুর রশীদ বলেছেন, পার্সনালাইজেশন সেন্টার পরিদর্শন করার পর সম্পূর্ণ স্পেসিফিকেশনটি প্রস্তুত করা হবে।', '2024-07-07 12:47:00', NULL, NULL),
(53, 5, 'ডিপিডি মেজর মামুনুর রশিদ স্যার এর কাছে স্পেসিফিকেশনটি উপস্থাপন করা আছে। স্পেসিফিকেশনটির বেশ কিছু কাজ বাকি আছে।', '2024-08-13 11:04:00', NULL, NULL),
(58, 62, 'Pending Major Mamun sir', '2024-11-05 00:00:00', 'Completed', '2024-11-01'),
(59, 62, '(সংযোজনী-১৪)', '2024-11-21 00:00:00', 'Pending', '0000-00-00'),
(61, 63, 'মূল্যায়ন কার্যক্রম চলমান রয়েছে।', '2024-09-26 00:00:00', 'অমীমাংসিত', '2024-11-26'),
(74, 2, ' সুলতান (ডাটাবেজ কনসালটেন্ট) স্যার এর কাছে উপস্থাপন করা আছে। টাইগার আইটির সাথে আলোচনা সাপেক্ষে স্পেসিফিকেশটি প্রস্তুত করা হবে।', '2024-08-13 12:45:00', 'test', '0000-00-00'),
(75, 2, ' টাইগার আইটির সাথে আলোচনা সাপেক্ষে স্পেসিফিকেশটি প্রস্তুত করা হবে।', '2024-08-13 12:45:00', '', '0000-00-00'),
(76, 2, 'চনা সাপেক্ষে স্পেসিফিকেশটি প্রস্তুত করা হবে।', '2024-08-13 12:45:00', '', '0000-00-00'),
(77, 2, 'সাপেক্ষে স্পেসিফিকেশটি প্রস্তুত করা হবে।', '2024-08-13 12:45:00', '', '0000-00-00'),
(78, 2, 'চুক্তি বাস্তবায়ন/প্রণয়ন', '2024-11-28 00:00:00', 'test', '2024-11-03'),
(79, 2, '(ডাটাবেজ কনসালটেন্ট) স্যার এর কাছে উপস্থাপন করা আছে। টাইগার আইটির সাথে আলোচনা সাপেক্ষে স্পেসিফিকেশটি প্রস্তুত করা হবে।', '2024-08-22 12:45:00', '', '0000-00-00'),
(80, 2, 'স্পেসিফিকেশন প্রণয়ন', '0000-00-00 00:00:00', '', '0000-00-00'),
(81, 65, 'চুক্তি বাস্তবায়ন/প্রণয়ন', '2024-12-06 00:00:00', 'test', '2024-12-09'),
(82, 66, 'চুক্তি বাস্তবায়ন/প্রণয়ন', '2024-12-09 00:00:00', 'test', '2024-12-04'),
(83, 66, 'স্পেসিফিকেশন প্রণয়ন', '0000-00-00 00:00:00', '', '0000-00-00'),
(84, 67, 'চুক্তি বাস্তবায়ন/প্রণয়ন', '2024-12-03 00:00:00', 'test', '2024-12-06'),
(85, 68, 'স্পেসিফিকেশন প্রণয়ন', '2024-11-12 00:00:00', 'test', '2024-11-15'),
(86, 1, 'স্পেসিফিকেশন প্রণয়ন', '2024-12-26 00:00:00', 'test', '2024-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `tblpackages`
--

CREATE TABLE `tblpackages` (
  `PackageId` int(11) NOT NULL,
  `ক্রম_নং` varchar(255) NOT NULL,
  `দেশের_নাম` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblpackages`
--

INSERT INTO `tblpackages` (`PackageId`, `ক্রম_নং`, `দেশের_নাম`) VALUES
(1, '2', 'UK'),
(2, '1', 'bd'),
(3, '1', 'bd');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																														<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: x-large;\">By accessing or using the NCS-GD\r\nTender Package Management System, you agree to comply with and be bound by the\r\nfollowing Terms and Conditions. These terms govern your use of the website,\r\nservices, and any content provided.</span></p>\r\n\r\n<ol start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l0 level1 lfo1;tab-stops:list .5in\"><span style=\"font-size: x-large;\"><b><span style=\"font-family: &quot;Times New Roman&quot;, serif;\">User Responsibility:</span></b><span style=\"font-family: &quot;Times New Roman&quot;, serif;\">\r\n     You are responsible for maintaining the confidentiality of your account\r\n     information, including your login credentials. You agree to notify us\r\n     immediately of any unauthorized access to your account.<o:p></o:p></span></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l0 level1 lfo1;tab-stops:list .5in\"><span style=\"font-size: x-large;\"><b><span style=\"font-family: &quot;Times New Roman&quot;, serif;\">Acceptable Use:</span></b><span style=\"font-family: &quot;Times New Roman&quot;, serif;\">\r\n     You may use the system only for lawful purposes. You agree not to engage\r\n     in any activity that could harm, disrupt, or interfere with the\r\n     functioning of the website or services, including but not limited to\r\n     uploading malware or engaging in fraudulent activities.<o:p></o:p></span></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l0 level1 lfo1;tab-stops:list .5in\"><span style=\"font-size: x-large;\"><b><span style=\"font-family: &quot;Times New Roman&quot;, serif;\">Intellectual Property:</span></b><span style=\"font-family: &quot;Times New Roman&quot;, serif;\"> All content, materials, and services provided on this\r\n     website, including but not limited to logos, text, images, and software,\r\n     are protected by copyright laws and are the property of NCS-GD. You may\r\n     not copy, distribute, or use this content without permission.<o:p></o:p></span></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l0 level1 lfo1;tab-stops:list .5in\"><span style=\"font-size: x-large;\"><b><span style=\"font-family: &quot;Times New Roman&quot;, serif;\">Privacy:</span></b><span style=\"font-family: &quot;Times New Roman&quot;, serif;\">\r\n     Your use of the NCS-GD Tender Package Management System is also governed\r\n     by our Privacy Policy, which outlines how we collect, use, and protect\r\n     your personal data.<o:p></o:p></span></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l0 level1 lfo1;tab-stops:list .5in\"><span style=\"font-size: x-large;\"><b><span style=\"font-family: &quot;Times New Roman&quot;, serif;\">Limitation of Liability:</span></b><span style=\"font-family: &quot;Times New Roman&quot;, serif;\"> We make no guarantees about the accuracy or\r\n     completeness of the information provided on the website. In no event shall\r\n     NCS-GD be liable for any damages arising out of or related to your use of\r\n     the system.<o:p></o:p></span></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l0 level1 lfo1;tab-stops:list .5in\"><span style=\"font-size: x-large;\"><b><span style=\"font-family: &quot;Times New Roman&quot;, serif;\">Modifications:</span></b><span style=\"font-family: &quot;Times New Roman&quot;, serif;\">\r\n     We reserve the right to update or modify these Terms and Conditions at any\r\n     time without prior notice. It is your responsibility to review these terms\r\n     periodically for changes.<o:p></o:p></span></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: x-large;\">By continuing to use our system, you\r\nacknowledge and agree to these terms.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><o:p style=\"font-size: x-large;\">&nbsp;</o:p></p>\r\n										\r\n										\r\n										'),
(2, 'privacy', '										<h3><span style=\"font-family: Roboto, sans-serif; color: rgb(51, 51, 51); font-size: 16px;\">At </span><strong style=\"font-family: Roboto, sans-serif; color: rgb(51, 51, 51); font-size: 16px;\">NCS-GD</strong><span style=\"font-family: Roboto, sans-serif; color: rgb(51, 51, 51); font-size: 16px;\">, we value your privacy and are committed to protecting your personal information. This Privacy Policy explains how we collect, use, disclose, and safeguard your data when you access or use the </span><strong style=\"font-family: Roboto, sans-serif; color: rgb(51, 51, 51); font-size: 16px;\">NCS-GD Tender Package Management System</strong><span style=\"font-family: Roboto, sans-serif; color: rgb(51, 51, 51); font-size: 16px;\">.</span></h3><ol><li><p><strong>Information We Collect</strong>: We collect personal data, including your name, email address, contact details, and any other information you provide when using our services. We may also collect usage data related to how you interact with our website.</p></li><li><p><strong>How We Use Your Data</strong>: The information we collect is used to improve our services, respond to your inquiries, process transactions, and provide a better user experience. We may also use your data to send you updates or marketing communications, but only if you have consented to such communications.</p></li><li><p><strong>Data Protection</strong>: We take appropriate measures to protect your personal data from unauthorized access, alteration, or disclosure. However, no method of transmission over the internet or method of electronic storage is 100% secure.</p></li><li><p><strong>Sharing Your Information</strong>: We do not sell, rent, or share your personal information with third parties except as necessary to provide services or comply with legal obligations.</p></li><li><p><strong>Your Rights</strong>: You have the right to access, update, or delete your personal information at any time. If you have any concerns or questions about your data, please contact us.</p></li></ol><p>By using our system, you agree to the terms outlined in this Privacy Policy. For more detailed information, please refer to the full policy.</p>\r\n										'),
(3, 'aboutus', '																				<div><strong>NCS-GD Tender Package Management System</strong> is a comprehensive platform designed to streamline the tender package management process for businesses and organizations. Our goal is to simplify the submission, tracking, and management of tender packages, making the process more efficient and transparent.</div>'),
(11, 'contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------J-890 Dwarka House New Delhi-110096</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsmartcards`
--

CREATE TABLE `tblsmartcards` (
  `id` int(11) NOT NULL,
  `ক্রম_নং` varchar(50) DEFAULT NULL,
  `নাম` varchar(100) DEFAULT NULL,
  `মোট_আবেদন` int(11) DEFAULT NULL,
  `মিশন_অফিসে_বায়োমেট্রিক_গ্রহণ` int(11) DEFAULT NULL,
  `তদন্ত_সম্পন্ন_এপ্রুভ_এর_অপেক্ষাধীন` int(11) DEFAULT NULL,
  `তদন্ত_সম্পন্ন_এপ্রুভ` int(11) DEFAULT NULL,
  `বাতিল` int(11) DEFAULT NULL,
  `মোট` int(11) DEFAULT NULL,
  `উপজেলা_থানা_নির্বাচন_অফিস_কর্তৃক_তদন্ত_প্রক্রিয়াধীন` int(11) DEFAULT NULL,
  `মিশন_থেকে_আপলোড_অপেক্ষাধীন` int(11) DEFAULT NULL,
  `আপলোড` int(11) DEFAULT NULL,
  `প্রিন্ট_করার_উপযোগী` int(11) DEFAULT NULL,
  `প্রিন্টেড` int(11) DEFAULT NULL,
  `তারিখ` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblsmartcards`
--

INSERT INTO `tblsmartcards` (`id`, `ক্রম_নং`, `নাম`, `মোট_আবেদন`, `মিশন_অফিসে_বায়োমেট্রিক_গ্রহণ`, `তদন্ত_সম্পন্ন_এপ্রুভ_এর_অপেক্ষাধীন`, `তদন্ত_সম্পন্ন_এপ্রুভ`, `বাতিল`, `মোট`, `উপজেলা_থানা_নির্বাচন_অফিস_কর্তৃক_তদন্ত_প্রক্রিয়াধীন`, `মিশন_থেকে_আপলোড_অপেক্ষাধীন`, `আপলোড`, `প্রিন্ট_করার_উপযোগী`, `প্রিন্টেড`, `তারিখ`) VALUES
(1, '2', 'bangladesh', NULL, 2, 3, 3, 0, 0, 0, 0, 0, 0, 0, '0000-00-00'),
(2, '2', 'bangladesh', 34, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, '2024-11-28'),
(3, '22', 'bd', NULL, 3, 3, 3, 3, NULL, 3, 3, 3, 3, 3, '2024-12-27'),
(4, '23', 'ukingdom', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2024-12-28'),
(5, NULL, NULL, 3, 3, 3, 3, 3, NULL, 3, 3, 3, 3, 3, '2024-12-06'),
(6, '2', 'bd', 3, 3, 3, 3, 3, NULL, 3, 3, 3, 3, 3, '2024-12-27'),
(7, '34', '45', 45, 56, 56, 66, 66, NULL, 66, 66, 66, 66, 66, '2024-12-05'),
(8, '33', 'noman', 3, 3, 3, 3, 3, 44, 4, 4, 4, 4, 4, '2024-12-27'),
(9, NULL, NULL, 4, 4, 4, 4, 4, NULL, 4, 4, 4444, 4444, 44, '2024-12-13'),
(10, '67', 'ind', 4, 4, 4, 4, 4, NULL, 5, 5, 6, 7, 6, '2024-12-27'),
(11, '4', 't', 0, 0, 5, 0, 0, NULL, 0, 0, 0, 0, 0, '0000-00-00'),
(12, '7', 'mmm', 6, 8, 1, 1, 1, NULL, 7, 8, 9, 90, 78, '2024-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbltenderpackages`
--

CREATE TABLE `tbltenderpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Details` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SpecificationForwardingDate` date DEFAULT NULL,
  `PurchaseMethodType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstimatedExpenditure` decimal(10,2) DEFAULT NULL,
  `ResponsiblePerson` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Consultant` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liveorclose` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltenderpackages`
--

INSERT INTO `tbltenderpackages` (`PackageId`, `PackageNo`, `Details`, `SpecificationForwardingDate`, `PurchaseMethodType`, `EstimatedExpenditure`, `ResponsiblePerson`, `Consultant`, `liveorclose`, `Creationdate`, `UpdationDate`) VALUES
(1, 'জিডি-৯.২(লট- ১) Modular Data Center', 'ডিজাস্টার রিকভারি সাইটের আপগ্রেডেশন, মডিউলারবেজ ও স্থানান্তরযোগ্য স্বয়ংসম্পূর্ণ ডিআরএস এর জন্য প্রয়োজনীয় ডাটাবেজ সার্ভার, লাইসেন্স এবং সাপোর্ট সার্ভিস ক্রয় (সংযোজনী-১৪)\r\n(লট- ১) Modular Data Center', '2024-11-28', '---', 9900.00, '---', '---', 'চলমান', '2024-08-13 06:19:12', '2024-11-28 08:41:41'),
(2, 'জিডি-৯.২ লট-২: Server, Storage, Software and Network সিস্টেম', 'ডিজাস্টার রিকভারি সাইটের আপগ্রেডেশন, মডিউলারবেজ ও স্থানান্তরযোগ্য স্বয়ংসম্পূর্ণ ডিআরএস এর জন্য প্রয়োজনীয় ডাটাবেজ সার্ভার, লাইসেন্স এবং সাপোর্ট সার্ভিস ক্রয় (সংযোজনী-১৪)\r\nলট-২: Server, Storage, Software and Network সিস্টেম\r\n', '2024-02-25', 'Open Tender Method (OTM)', 19800.00, 'AP Maliha', 'DBA Consultant', 'চলমান', '2024-08-13 06:19:12', '2024-11-10 12:45:28'),
(3, 'জিডি-৯.২ লট-৩: নিরাপত্তা সফটওয়্যার ও অন্যান্য প্রয়োজনীয় সিস্টেমের জন্য যন্ত্রপাতি', 'ডিজাস্টার রিকভারি সাইটের আপগ্রেডেশন, মডিউলারবেজ ও স্থানান্তরযোগ্য স্বয়ংসম্পূর্ণ ডিআরএস এর জন্য প্রয়োজনীয় ডাটাবেজ সার্ভার, লাইসেন্স এবং সাপোর্ট সার্ভিস ক্রয় (সংযোজনী-১৪)\r\nলট-৩: নিরাপত্তা সফটওয়্যার ও অন্যান্য প্রয়োজনীয় সিস্টেমের জন্য যন্ত্রপাতি', '2024-02-29', 'Open Tender Method (OTM)', 2400.00, 'AP Maliha', 'HW & DBA Consultant', 'সম্পন্ন', '2024-08-13 06:19:12', '2024-11-10 12:46:05'),
(4, 'এনসিএস-২৪.৩', 'পারসোসেন্টার এর সফটওয়্যার উন্নয়ন, BVRS ডাটাবেস synchronization and support service (সংযোজনী-১৫)	', '2024-03-15', 'Direct Purchase Method (DPM)', 495.00, 'এপি মালিহা', 'DBA Consultant', 'আসন্ন', '2024-08-13 06:19:12', '2024-11-10 13:13:08'),
(5, 'জিডি-৯.১', 'জাতীয় তথ্য ভান্ডারের ব্যাকআপ সাইটের জন্য স্থাপিত যন্ত্রপাতি আপগ্রেড, রক্ষণাবেক্ষণ ও নিরাপত্তা বৃদ্ধির জন্য প্রয়োজনীয় যন্ত্রপাতি ক্রয়, পরিবহন/স্থানান্তর এবং আনুষঙ্গিক কার্যক্রম (সংযোজনী-১৪)', '2024-03-18', 'Open Tender', 1100.00, 'এএমই নোমান', 'DBA Consultant', 'আসন্ন', '2024-08-13 06:19:12', '2024-11-10 13:54:24'),
(6, 'জিডি-১৫.১', 'বিদ্যমান অবশিষ্ট স্মার্ট কার্ড পার্সোনালাইজেশন (৩০ জুন, ২০২২ পর্যন্ত) (সংযোজনী- 15)	', '2024-08-14', 'Direct Purchase Method (DPM)', 0.00, 'AP Maliha', 'DBA Consultant', 'আসন্ন', '2024-08-13 06:19:12', '2024-11-10 13:59:33'),
(7, 'জিডি-১৭.৩', 'আইটি অবকাঠাম ভৌত (physical Security) নিরাপত্তা নিশিচতে প্রয়োজনীয় সরঞ্জাম সংগ্রহ ও উন্নয়ন (সংযোজনী- ১৬)	', '2024-03-30', 'Open Tender Method (OTM)', 60.00, 'AP Maliha', 'DBA Consultant', NULL, '2024-08-13 06:19:12', '2024-08-27 09:08:17'),
(8, 'জিডি-৪৩.২', 'প্রকল্প অফিসের জন্য অফিস স্টেশনারী ক্রয়', '2024-04-25', 'Open Tender Method (OTM)', 57.00, 'AD Afroza', 'DBA Consultant', NULL, '2024-08-13 06:19:12', '2024-08-27 09:09:18'),
(9, 'জিডি-২৬', 'কম্পিউটার, ফটোকপিয়ার, প্রিন্টার এর জন্য কালো এবং কালার টোনার ক্রয় (সংযোজনী-১৭) 	', '2024-04-29', 'Open Tender Method (OTM)', 50.00, 'AD Afroza', 'DBA Consultant', NULL, '2024-08-13 06:19:12', '2024-08-27 09:10:19'),
(10, 'জিডি-১৭.১', 'ডিসি ও ডিআরএস মনিটরিং সিস্টেম স্থাপন (সংযোজনী-১৪)', '2024-04-30', 'Open Tender Method (OTM)', 500.00, 'AP Maliha', 'HW Consultant', NULL, '2024-08-13 06:19:12', '2024-08-27 09:11:22'),
(11, 'জিডি-১৭.৪', 'ডাটা সেন্টার/ ডিআরএস এর জন্য জরুরী যন্ত্রপাতি ক্রয়, মেরামত এবং প্রয়োজনীয় নিরাপত্তা সামগ্রী সংগ্রহ (সংযোজনী-১৪)	', '2024-05-16', 'Open Tender Method (OTM)', 30.00, 'AP Maliha', 'HW Consultant', NULL, '2024-08-13 06:19:12', '2024-08-27 09:12:25'),
(12, 'জিডি-১০.১', 'ডাটা সেন্টার (ডিসি) এর জন্য পুরোনো ABIS সার্ভার আপগ্রেডেশান (সংযোজনী-১৪)', '2024-06-24', 'Open Tender Method (OTM)', 1500.00, 'AP Maliha', 'HW Consultant', NULL, '2024-08-13 06:19:12', '2024-08-27 09:13:42'),
(14, 'পিএস-২১', 'নির্বাচন কমিশন সচিবালয়/ প্রকল্পের জনবলের জন্য আইসিটি সংক্রান্ত বিশেষায়িত প্রশিক্ষণ সেবা', '2024-08-02', '...', 100.00, 'এএমই নোমান', 'HW & DBA Consultant', NULL, '2024-08-13 06:19:12', '2024-08-27 09:17:02'),
(15, 'জিডি-২৩.১', 'বারকোড স্ক্যানার ক্রয় (সংযোজনী-১৭)', '2024-08-08', 'Open Tender', 400.00, 'এএমই নোমান', 'DBA Consultant', NULL, '2024-08-13 06:19:12', '2024-08-27 09:18:28'),
(16, 'এনসিএস-১৭', 'স্মার্ট কার্ড, ইকুইপমেন্ট ও আনুষঙ্গিক যন্ত্রপাতি পরিবহন (সংযোজনী-১৫)', '2024-08-30', 'Open Tender Method (OTM)', 50.00, 'এএমই নোমান', 'DBA Consultant', NULL, '2024-08-13 06:19:12', '2024-08-27 09:19:21'),
(17, 'জিডি-৪.১', 'ডাটা সেন্টার, পার্সোনালাইজেশন সেন্টার এবং সংশ্লিষ্ট দপ্তর সমূহের জন্য আনুষঙ্গিক: ইউপিএস, জেনারেটর সহ বৈদ্যুতিক যন্ত্রপাতি ক্রয়, স্থাপন ও বৈদ্যুতিক ব্যবস্থার উন্নয়ন এবং রক্ষণাবেক্ষণ (সংযোজনী-১২)', '2024-10-15', 'Open Tender Method (OTM)', 200.00, 'AP Noman', 'HW Consultant', NULL, '2024-08-13 06:19:12', '2024-08-27 09:21:07'),
(44, 'জিডি-১৭.২', 'ডাটা সেন্টারের passive Equipment আপগ্রেডেশন ও ক্যাপাসিটি বৃদ্ধি এবং রক্ষণাবেক্ষণ (সংযোজনী-১৪)', '2024-07-30', 'Open Tender Method (OTM)', 700.00, '...', '...', NULL, NULL, '2024-09-10 06:19:51'),
(45, 'জিডি-৩৪', 'মাইক্রোসফট সিস্টেম সাপোর্ট সফটওয়্যার (সংযোজনী-১৮)', '2023-07-02', 'Open Tender Method (OTM)', 780.27, '...', '... ', NULL, NULL, '2024-09-10 06:21:08'),
(46, 'জিডি-৪০', 'নেটওয়ার্ক ম্যানেজমেন্ট সিস্টেম সফটওয়্যার/সিস্টেম লট-১ (সংযোজনী-১৮)', '2023-10-08', 'Open Tender Method (OTM)', 800.75, '... ', '... ', NULL, NULL, '2024-09-10 06:22:19'),
(48, 'জিডি-৫০', 'প্রবাসি নিবন্ধন কার্যক্রম পরিচালনার জন্য আনুষঙ্গিক যন্ত্রপাতি ক্রয় (সংযোজনী-১৭)', '2024-01-16', 'Open Tender Method (OTM)', 1000.00, '... ', '...', NULL, NULL, '2024-09-10 06:25:09'),
(49, 'এনসিএস-১০', 'ভোটার নিবন্ধনের জন্য (বিভিআরএস) সফটওয়্যার লাইসেন্স ও সাপোর্ট সার্ভিস ক্রয়', '2025-11-30', 'Direct Purchase Method (DPM)', 490.00, '... ', '...', NULL, NULL, '2024-09-10 06:26:42'),
(50, 'এনসিএস-১', 'অফিস/কর্মসহায়ক সেবা [ সহকারী পরিচালক (২-০ জন, সহকারী প্রোগ্রামার (৮৪ জন), সহকারী মেইনটেন্যান্স ইঞ্জিনিয়ার (২০ জন), ইলেক্ট্রিক্যাল ইঞ্জিনিয়ার (১জন)]', '2025-11-30', 'Open Tender Method (OTM)', 1512.37, '... ', '...', NULL, NULL, '2024-09-10 06:27:23'),
(51, 'এনসিএস-২', 'অফিস/কর্মসহায়ক সেবা [ উপ সহকারী পরিচালক (২-০ জন, প্রশাসনিক কর্মকর্তা/ ব্যক্তিগত সহকারী (৭ জন), সিনিয়র কম্পিউটার অপারেটর/ ডাটা এন্ট্রি কন্ট্রোল সুপারভাইজার (৩১জন)]', '2025-11-30', 'Open Tender Method (OTM)', 471.63, '... ', '...', NULL, NULL, '2024-09-10 06:27:50'),
(52, 'এনসিএস-৭', 'অফিস/কর্মসহায়ক সেবা (রাজশাহীএবং রংপুর অঞ্চলের ডাটা এন্ট্রি অপারেটর)', '2025-11-30', 'Open Tender Method (OTM)', 1401.91, '... ', '...', NULL, NULL, '2024-09-10 06:28:12'),
(53, 'এনসিএস-২৪', 'ডাটা সেন্টার ও ডিজাস্টার রিকভারী সিস্টেম এর জন্য ABIS/AFIS সফটওয়্যার লাইসেন্স ও সাপোর্ট সার্ভিস (সংযোজনী-১৮ ক)', '2024-06-30', 'Direct Purchase Method (DPM)', 3420.00, '... ', '...', NULL, NULL, '2024-09-10 06:28:43'),
(54, 'এনসিএস-২৪.১', 'পূর্বে ক্রয়কৃত ভোটার নিবন্ধনের জন্য ABIS ও BVRS এর আপগ্রেডেশান এবং ভোটার ডাটাবেজ রিয়েল-টাইম ব্যাকআপ সল্যুশন ও সাপোর্ট সার্ভিস ক্রয় (সংযোজনী-১৮)', '2025-11-30', 'Direct Purchase Method (DPM)', 4250.00, '... ', '...', NULL, NULL, '2024-09-10 06:29:47'),
(55, 'এনসিএস-২৫', 'ভোটার নিবন্ধনের জন্য (BVRS) সার্ভার সফটওয়্যার লাইসেন্স ও সাপোর্ট সার্ভিস (সংযোজনী-১৮)', '2024-06-30', 'Direct Purchase Method (DPM)', 607.00, '... ', '...', NULL, NULL, '2024-09-10 06:30:13'),
(56, 'এনসিএস-২৬', 'পূর্বে ক্রয়কৃত ভোটার নিবন্ধনের জন্য (BVRS) হার্ডওয়্যার এর সার্ভিস সাপোর্ট ক্রয় (সংযোজনী-১৪)', '2025-11-30', 'Direct Purchase Method (DPM)', 498.00, '... ', '...', NULL, NULL, '2024-09-10 06:30:30'),
(57, 'জিডি-২৫', 'লট-১: নিবন্ধন কার্যক্রম পরিচালনার  জন্য ক্যামেরা ক্রয় (সংযোজনী-১৭)', '2024-02-12', 'Open Tender Method (OTM', 880.77, 'AP Maliha', 'HW Consultant', NULL, '2024-09-10 09:01:59', NULL),
(58, 'এনসিএস-২৭', 'স্মার্ট কার্ড পার্সোনালাইজেশন ও “বীর মুক্তিযোদ্ধা” খচিত লেখা মুদ্রণ (সংযোজনী ১৫)', '2024-02-20', 'Direct Purchase Method (DPM)', 5769.00, 'AP Maliha', 'DBA Consultant', NULL, '2024-09-10 09:11:57', NULL),
(62, '1', 'rwe', '2024-11-22', 'otm', 34.00, 'AP Maliha', 'dba', 'চলমান', '2024-11-20 07:18:19', NULL),
(63, 'জিডি-৭.২ ', 'ডাটা সেন্টারের বিভিআরএস', '2024-07-07', 'ওটিএম', 500.00, 'আসাদুজ্জামান হিমু, সহকারী পরিচালক', 'আবুল কালাম আজাদ', 'চলমান', '2024-11-26 08:38:40', NULL),
(64, 'জিডি-৯.২', 'test', '2024-12-05', 'otm', 56.00, 'test', '', 'চলমান', '2024-12-05 06:20:08', NULL),
(65, 'test', 'test', '2024-12-27', 'otm', 34.00, 'test', 'test', 'চলমান', '2024-12-10 07:03:09', NULL),
(66, 'test', 'test', '2024-12-10', 'test', 3.00, 'test', 'test', 'চলমান', '2024-12-10 07:04:15', NULL),
(67, 'test', 'test', '2024-12-10', 'otm', 34.00, 'test', 'test', 'চলমান', '2024-12-10 07:05:52', NULL),
(68, 'test maliha', 'test', '2024-12-18', 'otm', 34.00, 'test', 'otm', 'চলমান', '2024-12-10 07:08:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MobileNumber` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailId` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserType` varchar(50) NOT NULL,
  `Password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `UserType`, `Password`, `RegDate`, `UpdationDate`) VALUES
(13, 'maliha', '1684422703', 'maliha1218@gmail.com', 'Others', '827ccb0eea8a706c4c34a16891f84e7b', '2024-10-30 14:58:14', NULL),
(25, 'Raju', '01769198844', 'raj.cuet@gmail.com', 'Others', '12345', '2024-11-18 04:46:39', NULL),
(26, 'Nazmul Haque', '01920646071', 'nazmul.idea2@gmail.com', 'Others', 'zenith346', '2024-11-18 05:42:22', NULL),
(27, 'Raju', '012345678', 'raju@gmail.com', 'Others', '827ccb0eea8a706c4c34a16891f84e7b', '2024-11-18 06:06:05', NULL),
(29, 'prokity', '0198345678', 'p@gmail.com', 'Others', '827ccb0eea8a706c4c34a16891f84e7b', '2024-11-18 08:45:52', NULL),
(30, 'Nazmul Haque', '01920646071', 'zenithju10@yahoo.com', 'Others', '827ccb0eea8a706c4c34a16891f84e7b', '2024-11-18 09:25:46', NULL),
(31, 'Aulad Hossen', '01302608955', 'auladinfo@gmail.com', 'Others', '058fbfd7c190344136bbc77480e0e38e', '2024-11-19 08:13:19', NULL),
(32, 'Abdulla Al Noman', '01796052223', 'alnoman0094@gmail.com', 'Others', '827ccb0eea8a706c4c34a16891f84e7b', '2024-11-24 04:40:18', NULL),
(33, 'DPD Procurement', '01715295046', 'procurementidea2@gmail.com', 'Procurement', '4ecb17628fab45b837fb1bcfadb34ab5', '2024-11-26 04:39:49', NULL),
(34, 'MD. SHAHABUDDIN', '01713484379', 'shahabuddin.scs@gmail.com', 'Smartcard Expatriate', 'fcea920f7412b5da7be0cf42b8c93759', '2024-12-02 03:53:34', NULL),
(35, 'Md. Mizanur Rahman', '01717888947', 'mizanur1052@gmail.com', 'Smartcard Statistics', 'c0d1c256ffa106d1c7048dbdeec12d3a', '2024-12-02 03:57:34', NULL),
(36, 'kibria', '01719474451', 'kibria.nid@gmail.com', 'Communication', '827ccb0eea8a706c4c34a16891f84e7b', '2024-12-04 10:40:49', NULL),
(37, 'Md. Ripon', '01902060932', 'riponecs6@gmail.com', 'Communication', '58389a749ab1f600cde79ee5bc846652', '2024-12-04 11:23:28', NULL),
(38, 'Gazi Abu Sarwar', '01725473000', 'gazisarwar@gmail.com', 'Communication', 'd29a4aa660950a1d384e6cbe95d6b574', '2024-12-04 11:34:13', NULL),
(39, 'Rubel_AP', '01833007343', 'realrubelsr@gmail.com', 'Communication', 'e10adc3949ba59abbe56e057f20f883e', '2024-12-05 04:29:33', NULL),
(40, 'Hasan', '01852458159', 'h01852458159@gmail.com', 'Procurement', '19602395382d4cbd587df30430120145', '2024-12-08 04:36:41', NULL),
(41, 'Abdullah Al Mamun', '01712197250', 'mamun273@gmail.com', 'Others', '02288db53932505a8fa360754506d2b6', '2024-12-08 06:19:41', NULL),
(42, 'nuha', '0123456789', 'admin@gmail.com', 'Procurement', '827ccb0eea8a706c4c34a16891f84e7b', '2024-12-12 03:40:01', NULL),
(43, 'mou2222', '0987654356899', 'meumeu@gmail.com', 'View', '827ccb0eea8a706c4c34a16891f84e7b', '2024-12-15 07:02:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(7) DEFAULT '#000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`id`, `title`, `start`, `end`, `color`) VALUES
(27, 'date of submission', '2024-08-08 00:00:00', '2024-08-09 00:00:00', '#000000'),
(29, 'meeting', '2024-08-04 00:00:00', '2024-08-07 00:00:00', '#000000'),
(31, 'ডিজি এনআইডি উইং মীটিং ', '2024-08-28 00:00:00', '2024-08-29 00:00:00', '#000000'),
(51, 'test data', '2024-11-17 06:30:00', '2024-11-17 07:00:00', '#2ecc71'),
(53, 'MEETING', '2024-11-03 00:00:00', '2024-11-06 00:00:00', '#e74c3c'),
(54, 'visit ', '2024-11-06 00:00:00', '2024-11-09 00:00:00', '#8e44ad'),
(55, 'Training', '2024-11-06 00:00:00', '2024-11-08 00:00:00', '#3498db'),
(56, 'Meeting with Vendor', '2024-11-10 00:00:00', '2024-11-13 00:00:00', '#2ecc71');

-- --------------------------------------------------------

--
-- Table structure for table `urgent_news`
--

CREATE TABLE `urgent_news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `urgent_news`
--

INSERT INTO `urgent_news` (`id`, `title`, `description`, `created_at`) VALUES
(23, 'মডুলার ডাটা সেন্টার উন্নয়ন প্রকল্প শুরু', 'বিপর্যয় পুনরুদ্ধার সাইটের মডুলার ও স্থানান্তরযোগ্য স্বয়ংসম্পূর্ণ ডাটা রিকভারি সিস্টেম (ডিআরএস) এর জন্য প্রয়োজনীয় ডাটাবেজ সার্ভার এবং সাপোর্ট সেবা ক্রয়ের জন্য ২০ ফেব্রুয়ারি, ২০২৪ তারিখে একটি ওপেন টেন্ডারের আয়োজন করা হবে। প্রকল্পটির প্রাক্কলিত ব্যয় ২৮ কোটি টাকা।', '2024-10-27 06:32:06'),
(24, 'বিপর্যয় পুনরুদ্ধার সিস্টেমের জন্য সার্ভার ও স্টোরেজে বড় বিনিয়োগ', '২৫ ফেব্রুয়ারি, ২০২৪ তারিখে বিপর্যয় পুনরুদ্ধার সাইটের উন্নয়নের জন্য সার্ভার, স্টোরেজ, সফটওয়্যার এবং নেটওয়ার্ক সিস্টেমের প্রয়োজনীয়তা নিয়ে ওপেন টেন্ডার অনুষ্ঠিত হবে। এই প্রকল্পের জন্য প্রাক্কলিত ব্যয় ১৯৮ কোটি টাকা, যার তত্ত্বাবধায়ক এপি মালিহা।', '2024-10-27 06:32:36'),
(25, 'বিপর্যয় পুনরুদ্ধার সাইটের জন্য নিরাপত্তা সফটওয়্যার ও যন্ত্রপাতি ক্রয়', 'বিপর্যয় পুনরুদ্ধার সাইটের তৃতীয় লটের আওতায় নিরাপত্তা সফটওয়্যার এবং প্রয়োজনীয় যন্ত্রপাতি ক্রয়ের জন্য ২৯ ফেব্রুয়ারি, ২০২৪ তারিখে ওপেন টেন্ডার অনুষ্ঠিত হবে। প্রকল্পটির প্রাক্কলিত ব্যয় ২৪ কোটি টাকা, DBA পরামর্শক এপি মালিহার তত্ত্বাবধানে।', '2024-10-27 06:33:16'),
(26, 'সফটওয়্যার উন্নয়ন ও সাপোর্ট সেবার জন্য সরাসরি ক্রয়', 'পারসোসেন্টারের সফটওয়্যার উন্নয়ন, BVRS ডাটাবেজ সিঙ্ক্রোনাইজেশন এবং সাপোর্ট সেবার জন্য ১৫ মার্চ, ২০২৪ তারিখে সরাসরি ক্রয় পদ্ধতি ব্যবহার করা হবে। প্রকল্পটির প্রাক্কলিত ব্যয় ৪.৯৫ কোটি টাকা।', '2024-10-27 06:33:57'),
(27, 'জাতীয় তথ্য ভান্ডারের ব্যাকআপ সাইটের উন্নয়ন কাজ শুরু', '১৮ মার্চ, ২০২৪ তারিখে জাতীয় তথ্য ভান্ডারের ব্যাকআপ সাইটের যন্ত্রপাতির উন্নয়নের জন্য ওপেন টেন্ডার অনুষ্ঠিত হবে, যার প্রাক্কলিত ব্যয় ১১ কোটি টাকা। প্রকল্পটি এএমই নোমান এবং DBA পরামর্শকের তত্ত্বাবধানে পরিচালিত হবে।', '2024-10-27 06:34:29'),
(28, 'নির্বাচন কমিশনের জন্য আইসিটি প্রশিক্ষণ সেবার ক্রয়', 'নির্বাচন কমিশন সচিবালয়ের জন্য আইসিটি সম্পর্কিত বিশেষায়িত প্রশিক্ষণ সেবার জন্য ২ আগস্ট, ২০২৪ তারিখে সরাসরি ক্রয় পদ্ধতি ব্যবহার করা হবে। প্রকল্পের জন্য প্রাক্কলিত ব্যয় ১ কোটি টাকা।', '2024-10-27 06:35:03'),
(29, 'প্রকল্প অফিসের জন্য অফিস স্টেশনারী ক্রয়', '২৫ এপ্রিল, ২০২৪ তারিখে প্রকল্প অফিসের জন্য অফিস স্টেশনারী ক্রয়ের উদ্দেশ্যে ওপেন টেন্ডার অনুষ্ঠিত হবে, যার প্রাক্কলিত ব্যয় ৫৭ লাখ টাকা, DBA পরামর্শক এড আফরোজার তত্ত্বাবধানে।', '2024-10-27 06:35:28'),
(30, 'অফিস যন্ত্রপাতির জন্য টোনার ক্রয়ের উদ্যোগ', 'কম্পিউটার, ফটোকপিয়ার এবং প্রিন্টারের জন্য কালো এবং কালার টোনার ক্রয়ের জন্য ২৯ এপ্রিল, ২০২৪ তারিখে ওপেন টেন্ডার অনুষ্ঠিত হবে। প্রকল্পটির প্রাক্কলিত ব্যয় ৫০ লাখ টাকা।', '2024-10-27 06:36:04'),
(31, 'ডিসি ও ডিআরএস মনিটরিং সিস্টেম স্থাপনের পরিকল্পনা', 'ডাটা সেন্টার (ডিসি) এবং বিপর্যয় পুনরুদ্ধার সিস্টেমের (ডিআরএস) জন্য মনিটরিং সিস্টেম স্থাপনের উদ্যোগ ৩০ এপ্রিল, ২০২৪ তারিখে গ্রহণ করা হবে। প্রকল্পটির প্রাক্কলিত ব্যয় ৫ কোটি টাকা, HW পরামর্শক এপি মালিহার তত্ত্বাবধানে।', '2024-10-27 06:36:37'),
(32, 'ডাটা সেন্টারের জন্য জরুরী যন্ত্রপাতি ক্রয়ের উদ্যোগ', 'ডাটা সেন্টার ও ডিআরএসের জন্য জরুরী যন্ত্রপাতি ক্রয়ের উদ্দেশ্যে ১৬ মে, ২০২৪ তারিখে ওপেন টেন্ডার অনুষ্ঠিত হবে। প্রকল্পটির প্রাক্কলিত ব্যয় ৩০ লাখ টাকা।', '2024-10-27 06:37:08'),
(33, 'ABIS সার্ভারের আপগ্রেডেশনের প্রকল্প শুরু', 'ডাটা সেন্টারের পুরোনো এবিআইএস সার্ভার আপগ্রেডেশনের জন্য ২৪ জুন, ২০২৪ তারিখে ওপেন টেন্ডার অনুষ্ঠিত হবে। প্রকল্পটির প্রাক্কলিত ব্যয় ১৫ কোটি টাকা।', '2024-10-27 06:38:07'),
(34, 'বারকোড স্ক্যানার ক্রয়ের পরিকল্পনা', '৮ আগস্ট, ২০২৪ তারিখে বারকোড স্ক্যানার ক্রয়ের জন্য ওপেন টেন্ডার অনুষ্ঠিত হবে, যার প্রাক্কলিত ব্যয় ৪ কোটি টাকা, DBA পরামর্শক এএমই নোমানের তত্ত্বাবধানে।', '2024-10-27 06:38:40'),
(35, 'ডাটা সেন্টারের জন্য ইউপিএস ও জেনারেটর ক্রয়ের উদ্যোগ', '১৫ অক্টোবর, ২০২৪ তারিখে ডাটা সেন্টার, পার্সোনালাইজেশন সেন্টার এবং সংশ্লিষ্ট দপ্তরের জন্য ইউপিএস, জেনারেটর এবং বৈদ্যুতিক যন্ত্রপাতি ক্রয়, স্থাপন ও রক্ষণাবেক্ষণের জন্য ওপেন টেন্ডার অনুষ্ঠিত হবে। প্রকল্পটির প্রাক্কলিত ব্যয় ২ কোটি টাকা।', '2024-10-27 06:39:35'),
(36, 'মাইক্রোসফট সিস্টেম সাপোর্ট সফটওয়্যার ক্রয়ের পরিকল্পনা', '২ জুলাই, ২০২৩ তারিখে মাইক্রোসফট সিস্টেম সাপোর্ট সফটওয়্যার ক্রয়ের জন্য ওপেন টেন্ডার অনুষ্ঠিত হবে, যার প্রাক্কলিত ব্যয় ৭৮.০৩ কোটি টাকা।', '2024-10-27 06:41:24'),
(37, 'স্মার্ট কার্ড পার্সোনালাইজেশন ও মুদ্রণ সেবার ক্রয়', '\"বীর মুক্তিযোদ্ধা\" খচিত স্মার্ট কার্ড পার্সোনালাইজেশন ও মুদ্রণের জন্য ২০ ফেব্রুয়ারি, ২০২৪ তারিখে সরাসরি ক্রয় পদ্ধতি ব্যবহার করা হবে। প্রকল্পটির প্রাক্কলিত ব্যয় ৫৭.৬৯ কোটি টাকা।', '2024-10-27 06:41:56'),
(38, '2024-11-18T22:36', 'test', '2024-11-18 16:35:56'),
(39, 'zczdcdz', 'zczdc', '2024-11-18 16:40:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financial_progress`
--
ALTER TABLE `financial_progress`
  ADD PRIMARY KEY (`Serial_No`);

--
-- Indexes for table `hr_reports`
--
ALTER TABLE `hr_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_reports`
--
ALTER TABLE `media_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_overview`
--
ALTER TABLE `package_overview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdsir_commitment`
--
ALTER TABLE `pdsir_commitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `procurement_plan`
--
ALTER TABLE `procurement_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_card_conditions`
--
ALTER TABLE `smart_card_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `distribution_id` (`distribution_id`);

--
-- Indexes for table `smart_card_distribution`
--
ALTER TABLE `smart_card_distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_nid_print_details`
--
ALTER TABLE `smart_nid_print_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `smart_nid_print_distribution`
--
ALTER TABLE `smart_nid_print_distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_nid_print_more_details`
--
ALTER TABLE `smart_nid_print_more_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `snid_card_item_data`
--
ALTER TABLE `snid_card_item_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexes for table `snid_card_main_data`
--
ALTER TABLE `snid_card_main_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `snid_card_subcategory_data`
--
ALTER TABLE `snid_card_subcategory_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_category_id` (`main_category_id`);

--
-- Indexes for table `tblassets`
--
ALTER TABLE `tblassets`
  ADD PRIMARY KEY (`AssetID`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`CommentId`),
  ADD KEY `PackageId` (`PackageId`);

--
-- Indexes for table `tblconditions`
--
ALTER TABLE `tblconditions`
  ADD PRIMARY KEY (`ConditionId`),
  ADD KEY `PackageNo` (`PackageNo`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpackagedetails`
--
ALTER TABLE `tblpackagedetails`
  ADD PRIMARY KEY (`DetailId`),
  ADD KEY `PackageId` (`PackageId`);

--
-- Indexes for table `tblpackages`
--
ALTER TABLE `tblpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsmartcards`
--
ALTER TABLE `tblsmartcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltenderpackages`
--
ALTER TABLE `tbltenderpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `urgent_news`
--
ALTER TABLE `urgent_news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `financial_progress`
--
ALTER TABLE `financial_progress`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hr_reports`
--
ALTER TABLE `hr_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_reports`
--
ALTER TABLE `media_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `package_overview`
--
ALTER TABLE `package_overview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pdsir_commitment`
--
ALTER TABLE `pdsir_commitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `procurement_plan`
--
ALTER TABLE `procurement_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `smart_card_conditions`
--
ALTER TABLE `smart_card_conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `smart_card_distribution`
--
ALTER TABLE `smart_card_distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `smart_nid_print_details`
--
ALTER TABLE `smart_nid_print_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smart_nid_print_distribution`
--
ALTER TABLE `smart_nid_print_distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smart_nid_print_more_details`
--
ALTER TABLE `smart_nid_print_more_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `snid_card_item_data`
--
ALTER TABLE `snid_card_item_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `snid_card_main_data`
--
ALTER TABLE `snid_card_main_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `snid_card_subcategory_data`
--
ALTER TABLE `snid_card_subcategory_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblassets`
--
ALTER TABLE `tblassets`
  MODIFY `AssetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `CommentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblconditions`
--
ALTER TABLE `tblconditions`
  MODIFY `ConditionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpackagedetails`
--
ALTER TABLE `tblpackagedetails`
  MODIFY `DetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tblpackages`
--
ALTER TABLE `tblpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsmartcards`
--
ALTER TABLE `tblsmartcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbltenderpackages`
--
ALTER TABLE `tbltenderpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `urgent_news`
--
ALTER TABLE `urgent_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `smart_card_conditions`
--
ALTER TABLE `smart_card_conditions`
  ADD CONSTRAINT `smart_card_conditions_ibfk_1` FOREIGN KEY (`distribution_id`) REFERENCES `smart_card_distribution` (`id`);

--
-- Constraints for table `smart_nid_print_details`
--
ALTER TABLE `smart_nid_print_details`
  ADD CONSTRAINT `smart_nid_print_details_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `smart_nid_print_distribution` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `smart_nid_print_more_details`
--
ALTER TABLE `smart_nid_print_more_details`
  ADD CONSTRAINT `smart_nid_print_more_details_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `smart_nid_print_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `snid_card_item_data`
--
ALTER TABLE `snid_card_item_data`
  ADD CONSTRAINT `snid_card_item_data_ibfk_1` FOREIGN KEY (`subcategory_id`) REFERENCES `snid_card_subcategory_data` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `snid_card_subcategory_data`
--
ALTER TABLE `snid_card_subcategory_data`
  ADD CONSTRAINT `snid_card_subcategory_data_ibfk_1` FOREIGN KEY (`main_category_id`) REFERENCES `snid_card_main_data` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `tblcomments_ibfk_1` FOREIGN KEY (`PackageId`) REFERENCES `tbltenderpackages` (`PackageId`);

--
-- Constraints for table `tblconditions`
--
ALTER TABLE `tblconditions`
  ADD CONSTRAINT `tblconditions_ibfk_1` FOREIGN KEY (`PackageNo`) REFERENCES `tblpackages` (`PackageId`) ON DELETE CASCADE;

--
-- Constraints for table `tblpackagedetails`
--
ALTER TABLE `tblpackagedetails`
  ADD CONSTRAINT `tblpackagedetails_ibfk_1` FOREIGN KEY (`PackageId`) REFERENCES `tbltenderpackages` (`PackageId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
