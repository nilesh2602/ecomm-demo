-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 07:44 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `bannerimgs`
--

CREATE TABLE `bannerimgs` (
  `img_id` bigint(20) UNSIGNED NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', '1', '2022-11-01 00:45:23', '2022-11-01 01:07:30'),
(2, 'Laptops', '1', '2022-11-01 00:46:07', '2022-11-01 01:05:41'),
(3, 'Books', '1', '2022-11-01 03:02:07', '2022-11-01 03:02:07'),
(4, 'Bags', '1', '2022-11-01 03:02:24', '2022-11-01 03:02:24'),
(5, 'T.V', '1', '2022-11-12 22:03:17', '2022-11-12 22:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_22_034919_create_categories_table', 1),
(6, '2022_10_22_051128_create_subcategories_table', 1),
(7, '2022_10_25_011021_create_products_table', 1),
(8, '2022_10_28_104524_create_bannerimgs_table', 1),
(9, '2022_10_30_123023_create_order_masters_table', 1),
(10, '2022_10_30_123218_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `oDetails_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_qty` bigint(20) NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`oDetails_id`, `order_id`, `product_id`, `product_qty`, `product_price`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, 399, '2022-11-01 02:57:14', '2022-11-01 02:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_masters`
--

CREATE TABLE `order_masters` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_masters`
--

INSERT INTO `order_masters` (`order_id`, `order_date`, `order_status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '01-11-2022', 'Panding...', 1, '2022-11-01 02:57:14', '2022-11-01 02:57:14');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_price` bigint(20) NOT NULL,
  `sell_price` bigint(20) NOT NULL,
  `product_img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` bigint(20) NOT NULL,
  `p_active` int(11) NOT NULL DEFAULT 1,
  `sub_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `small_description`, `description`, `old_price`, `sell_price`, `product_img`, `qty`, `p_active`, `sub_id`, `created_at`, `updated_at`) VALUES
(4, 'Apple iPhone 14 Plus 128GB Purple', '16.95 cm (6.7-inch) Super Retina XDR display\r\nAdvanced camera system for better photos in any light', 'Cinematic mode now in 4K Dolby Vision up to 30 fps\r\nAction mode for smooth, steady, handheld videos\r\nVital safety technology — Crash Detection calls for help when you can’t', 92900, 89900, '61YSNhAb00L._AC_UY218_.jpg', 2, 1, 3, '2022-11-12 22:09:13', '2022-11-12 22:09:13'),
(5, 'Apple iPhone 14 128GB (Product) RED', '15.40 cm (6.1-inch) Super Retina XDR display\r\nAdvanced camera system for better photos in any light', 'Cinematic mode now in 4K Dolby Vision up to 30 fps\r\nAction mode for smooth, steady, handheld videos\r\nVital safety technology — Crash Detection calls for help when you can’t', 92900, 79900, '611mRs-imxL._AC_UY218_.jpg', 2, 1, 3, '2022-11-12 22:14:13', '2022-11-12 22:14:13'),
(6, 'Apple iPhone 12 (64GB) - Blue', '6.1-inch (15.5 cm diagonal) Super Retina XDR display\r\nCeramic Shield, tougher than any smartphone glass', 'Advanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording\r\n12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording', 65900, 56900, '71ZOtNdaZCL._AC_UY218_.jpg', 2, 1, 3, '2022-11-12 22:26:47', '2022-11-12 22:26:47'),
(7, 'Apple iPhone 12 (128GB) - White', '6.1-inch (15.5 cm diagonal) Super Retina XDR display\r\nCeramic Shield, tougher than any smartphone glass', 'Advanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording\r\n12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording\r\nIndustry-leading IP68 water resistance', 70900, 61900, '711wsjBtWeL._AC_UY218_.jpg', 2, 1, 3, '2022-11-12 22:30:02', '2022-11-12 22:30:02'),
(8, 'I:Phone 6G Gold 64GB with 8 Mega Pixel Camera', 'Memory, Storage & SIM: 1GB RAM | 64GB storage | Single nano SIM Operating System.', 'Display: 11.93 centimeters (4.7-inch) HD display capacitive touchscreen with 1334x750 pixels\r\nCamera: 8 MP Rear camera with Dual tone LED flash | 1.2 MP front camera', 27999, 18999, '61Ok6PabQyL._SL1500_.jpg', 2, 1, 3, '2022-11-12 22:34:03', '2022-11-12 22:34:03'),
(9, 'OnePlus Nord CE 2 Lite 5G', 'Camera: 64MP Main Camera with EIS; 2MP Depth Lens and 2MP Macro Lens; Front (Selfie) Camera: 16MP Sony IMX471', 'Camera Features: AI scene enhancement, Dual-View Video, HDR, Night Portrait, Panorama Mode, Retouch Filters, 1080p video at 30 fps, SLO-MO: 720p video at 120 fps, TIME-LAPSE: 1080p video at 30 fps, Video editor, Face unlock', 19999, 18999, '71AvQd3VzqL._AC_UY218_.jpg', 2, 1, 1, '2022-11-12 22:37:30', '2022-11-12 22:37:30'),
(10, 'OnePlus Nord CE 2 5G', '65W SUPERVOOC – Accelerated charge velocity shall rocket the 4500mAh battery to a day\'s', 'Mediatek Dimensity 900 – Powered by a 5G enabled, octa-core monster of a chipset that’s tad more powerful than previous CE, consider this the “Best in class” daily driver for', 28000, 24999, '619n6kxuGsL._AC_UY218_.jpg', 2, 1, 1, '2022-11-12 22:39:51', '2022-11-12 22:39:51'),
(11, 'OnePlus 10R 5G (Forest Green, 8GB RAM, 128GB', 'Camera: 50MP Main Camera with Sony IMX766 and 2MP Macro Camera with Dual LED Flash; 16MP Front (Selfie) Camera with Sony IMX471', 'Camera Features: Nightscape2.0, Super Macro, UltraShot HDR, Smart Scene Recognition, Portrait mode, Pro mode, Panorama, Tilt-shift mode, Focus Peaking, Filters, Video Nightscape, Video HDR, Video Portrait Timelapse, Hyperlapse Mode', 38999, 34999, '716uVx3Wr5L._AC_UY218_.jpg', 2, 1, 1, '2022-11-12 22:43:18', '2022-11-12 22:43:18'),
(12, 'OnePlus 10T 5G (Moonstone Black, 8GB RAM)', 'Camera: 50MP Main Camera with Sony IMX766 and OIS, 8MP Ultrawide Camera with 120', 'Camera Features: Nightscape Mode, Ultra HDR, Smart Scene Recognition, Portrait Mode, Pro Mode, Panorama, Tilt-Shift mode, Long Exposure, Dual-View Video, Retouch, Movie', 49999, 44999, '71XKAnxCsLL._AC_UY218_.jpg', 2, 1, 1, '2022-11-12 22:47:14', '2022-11-12 22:47:14'),
(13, '(Renewed) OnePlus Nord 5G (Blue Marble, 12GB RAM, 256GB Storage)', 'This Renewed product is tested to work and look like new with minimal to no signs of wear & tear; the product comes with relevant', '48MP+8MP+5MP+2MP quad rear camera with 1080P Video at 30/60 fps, 4k 30fps | 32MP+8MP front dual camera with 4K video capture at 30/60 fps and 1080 video capture at 30/60 fps', 29999, 26999, '517a1ax5TiL._AC_UY218_.jpg', 2, 1, 1, '2022-11-12 22:48:47', '2022-11-12 22:50:53'),
(14, 'Samsung Galaxy M33 5G (Emerald Brown, 6GB, 128GB Storage)', 'Exynos 1280 Octa Core 2.4GHz 5nm Processor with the 12 band support for a True 5G experience', '16.72 centimeters (6.6-inch) LCD Display, FHD+ resolution, 1080x2400 pixels protected by Gorilla Glass 5\r\nVersatile Quad camera setup-50MP (F1.8)+ 5MP (F2.2/UW- 123 FOV) + 2MP (F2.4/Depth) + 2MP (F2.4/Macro) QuadCamera| 8MP (F1.8) Front Camera', 24999, 16999, '81lnKynSaqL._AC_UY218_.jpg', 2, 1, 2, '2022-11-12 22:59:09', '2022-11-12 22:59:09'),
(15, 'SAMSUNG Galaxy F13 (Sunrise Copper, 4GB RAM 64GB Storage)', '4 GB RAM | 64 GB ROM | Expandable Upto 1 TB\r\n16.76 cm (6.6 inch) Full HD+ Display\r\n50MP + 5MP + 2MP | 8MP Front Camera', '‎Sensors Accelerometer, Fingerprint Sensor, Geomagnetic Sensor, Virtual Light Sensing, Virtual Proximity Sensing, Pre-installed Browser Google Chrome, Samsung S Browser 14.0, Primary Camera Features Triple Camera Setup: 50MP + 5MP + 2MP, Camera', 14999, 11350, '81YwHUpTSkL._AC_UY218_.jpg', 2, 1, 2, '2022-11-12 23:10:21', '2022-11-12 23:10:21'),
(16, 'Samsung Galaxy A13 Blue', '167.2mm (6.6\") FHD+ Infinity V Display, 1080 x 2408 resolution with 20:9 aspect ratio', 'Powerful 2.2 GHz Octa-Core Processor\r\n50MP (F1.8) Rear Camera, 8MP (F2.2) Front Camera.\r\n4GB RAM, 64GB ROM ,Android 12.0 OS\r\n5000 mAH long lasting Battery\r\nConnector type: usb type c', 18490, 14499, '81i1A1MgXBL._AC_UY218_.jpg', 2, 1, 2, '2022-11-13 01:50:30', '2022-11-13 01:50:30'),
(17, 'Samsung Galaxy S20 FE 5G', '5G Ready powered by Qualcomm Snapdragon 865 Octa-Core processor, 8GB RAM, 128GB', 'Triple Rear Camera Setup - 12MP (Dual Pixel) OIS F1.8 Wide Rear Camera + 8MP OIS Tele Camera + 12MP Ultra Wide | 30X Space Zoom, Single Take & Night Mode | 32MP F2.2 Front Punch Hole Camera', 34999, 26999, '812yohjGZ2L._AC_UY218_.jpg', 2, 1, 2, '2022-11-13 01:52:28', '2022-11-13 01:52:28'),
(18, 'Samsung Galaxy A73 5G Awesome White', 'Samsung Galaxy A73 5G with 108MP Rear Camera with OIS', 'IP67 rating for water and dust resistance\r\n6.7\" FHD+ Super AMOLED+ Infinity-O Display\r\nSuper smooth screen with 120Hz refresh rate\r\nPowerful 2.4GHz Octa-Core Snapdragon processor', 47490, 41999, '91inXgRH82L._AC_UY218_.jpg', 2, 1, 2, '2022-11-13 01:54:58', '2022-11-13 01:54:58'),
(19, 'Acer Aspire 5 Thin and Light Laptop', 'Acer, Compal Electronics Pvt Ltd, No.D01, Zone D, Air Port Section of LiangLu CunTan Free Trade', 'Through the use of USB-C users get superfast data transfer over SuperSpeed USB 5Gbps. It includes two USB 3.2 port,USB 2.0 port, USB type C port and an HDMI port – one of which can be used for offline charging.\r\nhelp in delivering clear speech.Hence makes it perfect for those online classes and conferences.', 62999, 44990, '61NhpIgVUOL._SL1500_.jpg', 2, 1, 5, '2022-11-13 02:00:05', '2022-11-13 02:01:12'),
(20, 'Lenovo IdeaPad Slim 3 Intel Celeron N4020 4th Gen', 'Lenovo IdeaPad Slim 3 Intel Celeron N4020 4th Gen 15.6\" (39.62cm) HD Thin & Light Laptop (8GB/256GB SSD/Windows 11/Office 2021/2Yr Warranty/3months Game Pass/Platinum Grey/1.7Kg), 81WQ00MQIN', 'Get ready for a truly immersive experience with Ideapad Slim 3i. Stay on the edge of your seat while gaming or create the ambience for a date night, Dolby Audio is here for all your moods.\r\n5. Additionally, connect faster than before and get the work done with all new Bluetooth 5.0 version.', 27140, 40490, '61Dw5Z8LzJL._AC_UY218_.jpg', 2, 1, 5, '2022-11-13 02:03:36', '2022-11-13 02:03:36'),
(21, 'Lenovo IdeaPad Slim 3 Intel Core i5', 'Lenovo IdeaPad Slim 3 Intel Core i5 12th Gen 15.6\" (39.62cm) FHD Thin & Light Laptop (8GB/512GB SSD/Windows 11/Office 2021/Backlit/2Yr Warranty/3months Game Pass/Arctic Grey/1.63Kg), 82RK0062IN', 'Screen Size	15.6 Inches\r\nColour	Arctic Grey\r\nHard Disk Size	512 GB\r\nCPU Model	Core i5\r\nRAM Memory Installed Size	8 GB\r\nOperating System	Windows 11 Home\r\nSpecial Feature	Anti Glare Screen, Light Weight, Thin, Built-in Microphone\r\nGraphics Card Description	Inte', 76890, 57490, '71acOQV0elL._AC_UY218_.jpg', 2, 1, 5, '2022-11-13 02:08:06', '2022-11-13 02:08:06'),
(22, 'ASUS Vivobook 15, 15.6\"', 'ASUS Vivobook 15, 15.6\" (39.62 cm) FHD, AMD Dual Core Ryzen 3 3250U, Thin and Light Laptop (8GB/256GB SSD/Integrated Graphics/Windows 11/Office 2021/Blue/1.68 Kg), X512DA-BQ303WS', 'Processor: AMD Ryzen 3 3200U Processor, 2C/4T, 5MB cache, 3.5GHz Boost\r\nMemory: 8GB (4GB onboard + 4GB SO-DIMM) DDR4 | Storage: 256GB M.2 NVMe PCIe 3.0 SSD with additional empty 1x 2.5-inch SATA Slot for HDD Storage', 49990, 33990, '61T4F1E3kiL._AC_UY218_.jpg', 2, 1, 5, '2022-11-13 02:10:14', '2022-11-13 02:10:14'),
(23, 'HP 15s,11th Gen Intel Core i3-1115G4', 'HP 15s,11th Gen Intel Core i3-1115G4 8GB RAM/512GB SSD 15.6-inch(39.6 cm) Micro-Edge Anti-Glare FHD Laptop/Alexa Built-in/Win 11/Intel UHD Graphics/Dual Speakers/ MS Office 2021/1.69 Kg, 15s-fq2673TU', 'Brand	HP\r\nSeries	15s-fq2673TU\r\nScreen Size	15.6 Inches\r\nColour	Natural Silver\r\nCPU Model	Core i3\r\nRAM Memory Installed Size	8 GB\r\nOperating System	Windows 11 Home\r\nSpecial Feature	Micro-Edge Display\r\nGraphics Card Description	Integrated\r\nGraphics Coprocessor	I', 50697, 43490, '91-U2J7fKoL._SL1500_.jpg', 2, 1, 5, '2022-11-13 02:13:06', '2022-11-13 02:13:06'),
(24, '101 Panchatantra Stories for Children', '101 Panchatantra Stories for Children: Colourful Illustrated Story book Paperback – 30 September 2020', 'The Panchatantra is a collection of short stories from India, written more than 5000 years ago! This is a collection of stories from that legendary collection. The stories inculcate moral values in children in a subtle and fun manner. Enjoy the stories, where plants and animals can converse with human beings too!.', 141, 119, '9173YBkMIsL._AC_UY218_.jpg', 3, 1, 6, '2022-11-13 02:18:37', '2022-11-13 02:18:37'),
(25, 'Moral Tales From Panchtantra', 'Moral Tales From Panchtantra: Timeless Stories For Children From Ancient India Hardcover – 1 January 2019', 'Panchatantra has been a part of the Indian folklore for many centuries and continues to enchant young readers even today. The moral Stories from Panchatantra is a wonderful collection of six tales that aim to guide the young readers about the wise conduct of life, understanding human nature and attaining success in life. The book is filled with large and vibrant illustrations that attract the attention of the readers and encourage them to read.', 250, 199, '713Qjy3KTqS._AC_UY218_.jpg', 2, 1, 6, '2022-11-13 02:20:47', '2022-11-13 02:20:47'),
(26, '101 Good Night Stories', 'children will look forward to bedtime reading and enjoy stories of magical fairies, wicked witches, playful elves and talking animals', 'Childhood isn’t complete without stories and fairy tales. Walking through Sleeping Beauty’s kingdom, dancing with Cinderella at the Royal Ball, or sharing Ali Baba’s fortunes-there is so much to explore! With this book, children will look forward to bedtime reading and enjoy stories of magical fairies, wicked witches, playful elves and talking animals', 260, 180, '81zfWCU5NyL._AC_UY218_.jpg', 2, 1, 6, '2022-11-13 02:22:54', '2022-11-13 02:22:54'),
(27, 'Life\'s Amazing Secrets', 'Stop going through life, Start growing through life!While navigating their way through Mumbai\'s horrendous traffic, Gaur Gopal Das and his wealthy young friend Harry', 'Life\'s Amazing Secrets: How to Find Balance and Purpose in Your Life | Inspirational Zen book on motivation, self-development & healthy living Gaur Gopal Das takes us on an unforgettable journey with his precious insights on these areas of life. Das is one of the most popular and sought-after monks and life coaches in the world, having shared his wisdom with millions. His debut book, Life\'s Amazing Secrets, distils his experiences and lessons about life into a light-hearted, thought-provoking book that will help you align yourself with the life you want to live.', 335, 160, '81N7FmJhbhL._AC_UY218_.jpg', 2, 1, 6, '2022-11-13 02:25:31', '2022-11-13 02:25:31'),
(28, 'The Power of Your Subconscious Mind', 'This remarkable book by Dr. Joseph Murphy, one of the pioneering voices of affirmative thinking, will unlock for you the truly staggering powers of your subconscious mind. Combining time-honored spiritual wisdom with cutting edge scientific research,', 'This remarkable book by Dr. Joseph Murphy, one of the pioneering voices of affirmative thinking, will unlock for you the truly staggering powers of your subconscious mind. Combining time-honored spiritual wisdom with cutting edge scientific research, Dr. Murphy explains how the subconscious mind influences every single thing that you do and how, by understanding it and learning to control its incredible.', 450, 320, '71UwSHSZRnS._AC_UY218_.jpg', 2, 1, 6, '2022-11-13 02:27:16', '2022-11-13 02:27:16'),
(29, 'AmazonBasics 127 cm', 'AmazonBasics 127 cm (50 inches) 4K Ultra HD Smart LED Fire TV with Dolby Atmos and Dolby Vision (Black)', 'At the time of delivery, the delivery agent will open the item for your inspection. Please verify the item is correct, not damaged, and not missing accessories. If you are satisfied, give the OTP that we sent you on the day of delivery to the delivery agent. If the item is incorrect, damaged, or missing accessories, you can refuse delivery and you\'ll receive a replacement or refund as per our return policy.', 56000, 31999, '71GWurOTPpL._AC_UY218_.jpg', 2, 1, 7, '2022-11-13 02:32:27', '2022-11-13 02:32:27'),
(30, 'Redmi 80 cm (32 inches)', 'Redmi 80 cm (32 inches) Android 11 Series HD Ready Smart LED TV | L32M6-RA/L32M7-RA (Black)', 'PatchWall 4 with IMDb Integration | Kids Mode with Parental Lock | 90+ Free Live Channels | Netflix | Prime Video | Disney+ Hotstar and more | Android TV 11 | Google Assistant | Chromecast Built-in | Miracast\r\n\r\nModel Name	Redmi Smart TV 32\r\nMounting Hardware	1 LED TV, 2 Table Stand Base, 1 User Manual, 1 Remote Control, 4 screws\r\nConnector Type	Wi-Fi, USB, Ethernet, HDMI', 24999, 13999, '71L-lTQnJiL._AC_UY218_.jpg', 2, 1, 7, '2022-11-13 02:35:35', '2022-11-13 02:35:35'),
(31, 'Mi 100 cm (40 inches)', 'Mi 100 cm (40 inches) Horizon Edition Full HD Android LED TV 4A | L40M6-EI (Black)', 'Brand	MI\r\nSupported Internet Services	Netflix, 5000+apps, Prime Video, And, Youtube, Disney+Hotstar, From, Play Store\r\nDisplay Technology	LED\r\nResolution	1080p\r\nRefresh Rate	60 Hz\r\nModel Name	Mi TV 4A 40 Horizon\r\nMounting Hardware	1 LED TV, 2 Table Stand Base, 1 User Manual, 1 Remote Control, 4 screws\r\nConnector Type	Wi-Fi, USB, Ethernet, HDMI\r\nColour	Black', 29999, 21999, '71k7M05go-L._AC_UY218_.jpg', 2, 1, 7, '2022-11-13 02:38:10', '2022-11-13 02:38:10'),
(32, 'Kodak 80 cm (32 inches)', 'Kodak 80 cm (32 inches) HD Ready Certified Android LED TV 32HDX7XPRO (Black)', 'Screen Size	32 Inches\r\nBrand	Kodak\r\nSupported Internet Services	ALT Balaji, Zee5, Voot, Prive Video, SonyLiv, YouTube, MXPlayer, Disney+ Hotstar\r\nDisplay Technology	LED\r\nResolution	720p\r\nRefresh Rate	60 Hz\r\nModel Name	7XPRO\r\nMounting Hardware	1 TV Unit, 1 Remote Controller, 2 AAA Battery, 1 User Manual, 1 Table Top\r\nConnector Type	Wi-Fi\r\nColour	Black', 12999, 9499, '81pOKCk2z1L._AC_UY218_.jpg', 2, 1, 7, '2022-11-13 02:40:02', '2022-11-13 02:40:02'),
(33, 'Sansui 80cm (32 inches)', 'Sansui 80cm (32 inches) HD Ready Smart LED TV JSY32SKHD (BLACK) With Bezel-less Design', 'Resolution: HD Ready (1366x768) | Refresh Rate: 60 hertz\r\nConnectivity: 2 HDMI ports to connect multiple devices | 2 USB ports to connect hard drives and other USB devices | RJ45 | RF Port | Wi-Fi Direct | 2 AV Inputs | Headphone', 19990, 10990, '719WthOLZPL._AC_UY218_.jpg', 2, 1, 7, '2022-11-13 02:42:29', '2022-11-13 02:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `sub_id` bigint(20) UNSIGNED NOT NULL,
  `sub_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`sub_id`, `sub_name`, `active`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'One Pluse', '1', 1, '2022-11-01 00:48:05', '2022-11-01 00:48:20'),
(2, 'Samsung', '1', 1, '2022-11-01 01:06:46', '2022-11-01 01:06:46'),
(3, 'iphone', '1', 1, '2022-11-01 02:10:25', '2022-11-01 02:10:25'),
(4, 'Programming', '1', 1, '2022-11-01 03:03:31', '2022-11-01 03:03:31'),
(5, 'Acer', '1', 2, '2022-11-13 01:57:54', '2022-11-13 01:57:54'),
(6, 'story', '1', 3, '2022-11-13 02:16:29', '2022-11-13 02:16:29'),
(7, 'Smart T.V', '1', 5, '2022-11-13 02:30:10', '2022-11-13 02:30:10');

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
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `mobile` bigint(20) NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `mobile`, `gender`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nilesh', 'nilesh@gmail.com', NULL, '$2y$10$vGPUmNBYNkQUrcLx0s936.MfBTIKEAJUG1koq.huUbIDKilR658bi', 'admin', 7990251616, 'Male', '25,Umiya Park Kathwada Ahmedabad ,Gujarat', NULL, '2022-11-01 00:43:50', '2022-11-01 00:43:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bannerimgs`
--
ALTER TABLE `bannerimgs`
  ADD PRIMARY KEY (`img_id`),
  ADD KEY `bannerimgs_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`oDetails_id`);

--
-- Indexes for table `order_masters`
--
ALTER TABLE `order_masters`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `products_sub_id_foreign` (`sub_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `bannerimgs`
--
ALTER TABLE `bannerimgs`
  MODIFY `img_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `oDetails_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_masters`
--
ALTER TABLE `order_masters`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `sub_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bannerimgs`
--
ALTER TABLE `bannerimgs`
  ADD CONSTRAINT `bannerimgs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_sub_id_foreign` FOREIGN KEY (`sub_id`) REFERENCES `subcategories` (`sub_id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
