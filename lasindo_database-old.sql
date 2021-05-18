-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 08, 2021 at 12:04 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lasindo_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_descs`
--

CREATE TABLE `about_descs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_main` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_hse` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_descs`
--

INSERT INTO `about_descs` (`id`, `about_main`, `about_hse`, `created_at`, `updated_at`) VALUES
(1, '<p>PT Lasindo Jayabersama was established in 1995 as supplier in Oil &amp; Gas industry. Today the company is transforming itself into product, engineering &amp; service also total solution provider in Oil &amp; Gas, Power, Mining and also General Industry where the focus is in the innovative technology-driven solutions and creating different experience to our customers, employees and business partners.<br />\r\n<br />\r\nPT Lasindo Jayabersama aims to grow and work together with our client, partner and team work around the world.<br />\r\n<br />\r\nWith the premium products, experiences and support from our worldwide principal, Lasindo can offer particular expertise to assist and work alongside customer during detail engineering, project execution and after sales services.</p>', '<p>PT. Lasindo Jayabersama is committed to implement management &amp; Environmental Quality of Work &amp; Health in the effort to prevent any accidents, disease of work also environmental pollution. PT. Lasindo Jayabersama has been certified ISO 9001: 2015, OHSAS 18001:2007 and BS EN ISO 14001:2015.<br />\r\n<br />\r\n<strong>Our main target is ZERO ACCIDENT.</strong></p>', '2020-12-17 05:28:51', '2020-12-17 05:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `about_images`
--

CREATE TABLE `about_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_images`
--

INSERT INTO `about_images` (`id`, `about_image`, `created_at`, `updated_at`) VALUES
(1, 'https://dev.lasindo.com//storage/files/3/about-images/image1.png', '2020-12-17 05:41:31', '2020-12-17 05:41:31'),
(3, 'https://dev.lasindo.com//storage/files/3/about-images/image2.png', '2020-12-17 05:43:04', '2020-12-17 05:43:04'),
(4, 'https://dev.lasindo.com//storage/files/3/about-images/image3-1.jpg', '2020-12-17 05:45:44', '2020-12-17 05:45:44'),
(5, 'https://dev.lasindo.com//storage/files/3/about-images/image3-2.jpg', '2020-12-17 05:45:53', '2020-12-17 05:45:53'),
(6, 'https://dev.lasindo.com//storage/files/3/about-images/image3.png', '2020-12-17 05:46:09', '2020-12-17 05:46:09'),
(7, 'https://dev.lasindo.com//storage/files/3/about-images/image4.png', '2020-12-17 05:46:20', '2020-12-17 05:46:20'),
(8, 'https://dev.lasindo.com//storage/files/3/about-images/image5.png', '2020-12-17 05:46:31', '2020-12-17 05:46:31'),
(9, 'https://dev.lasindo.com//storage/files/3/about-images/image6.png', '2020-12-17 05:46:40', '2020-12-17 05:46:40'),
(10, 'https://dev.lasindo.com//storage/files/3/about-images/image7.png', '2020-12-17 05:46:47', '2020-12-17 05:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'created', 1, 'App\\Domains\\Announcement\\Models\\Announcement', NULL, NULL, '{\"attributes\": {\"area\": null, \"type\": \"info\", \"enabled\": true, \"ends_at\": null, \"message\": \"This is a <strong>Global</strong> announcement that will show on both the frontend and backend. <em>See <strong>AnnouncementSeeder</strong> for more usage examples.</em>\", \"starts_at\": null}}', '2020-11-03 20:12:18', '2020-11-03 20:12:18'),
(2, 'user', 'Lasindo Admin updated user Lasindo Super Admin with roles: Administrator and permissions: ', 1, 'App\\Domains\\Auth\\Models\\User', 1, 'App\\Domains\\Auth\\Models\\User', '{\"user\": {\"name\": \"Lasindo Super Admin\", \"type\": \"admin\", \"email\": \"admin@admin.com\"}, \"roles\": \"Administrator\", \"permissions\": \"\"}', '2020-11-04 11:42:19', '2020-11-04 11:42:19'),
(3, 'user', 'Lasindo Super Admin created user Lasindo Admin with roles: None and permissions: ', 3, 'App\\Domains\\Auth\\Models\\User', 1, 'App\\Domains\\Auth\\Models\\User', '{\"user\": {\"name\": \"Lasindo Admin\", \"type\": \"user\", \"email\": \"best.admin@lasindo.com\", \"active\": true, \"email_verified_at\": \"2020-11-04T04:43:55.000000Z\"}, \"roles\": \"None\", \"permissions\": \"\"}', '2020-11-04 11:43:56', '2020-11-04 11:43:56'),
(4, 'role', 'Lasindo Super Admin created role Administrator\'s Guard with permissions: View Users, Reactivate Users, Clear User Sessions', 2, 'App\\Domains\\Auth\\Models\\Role', 1, 'App\\Domains\\Auth\\Models\\User', '{\"role\": {\"name\": \"Administrator\'s Guard\", \"type\": \"admin\"}, \"permissions\": \"View Users, Reactivate Users, Clear User Sessions\"}', '2020-11-04 11:49:25', '2020-11-04 11:49:25'),
(5, 'user', 'Lasindo Super Admin deleted user Test User', 2, 'App\\Domains\\Auth\\Models\\User', 1, 'App\\Domains\\Auth\\Models\\User', '[]', '2020-11-04 11:49:49', '2020-11-04 11:49:49'),
(6, 'user', 'Lasindo Super Admin updated user Lasindo Admin with roles: Administrator\'s Guard and permissions: ', 3, 'App\\Domains\\Auth\\Models\\User', 1, 'App\\Domains\\Auth\\Models\\User', '{\"user\": {\"name\": \"Lasindo Admin\", \"type\": \"admin\", \"email\": \"best.admin@lasindo.com\"}, \"roles\": \"Administrator\'s Guard\", \"permissions\": \"\"}', '2020-11-04 11:50:39', '2020-11-04 11:50:39'),
(7, 'user', 'Lasindo Super Admin updated user Super Admin with roles: Administrator and permissions: ', 1, 'App\\Domains\\Auth\\Models\\User', 1, 'App\\Domains\\Auth\\Models\\User', '{\"user\": {\"name\": \"Super Admin\", \"type\": \"admin\", \"email\": \"super.admin@admin.com\"}, \"roles\": \"Administrator\", \"permissions\": \"\"}', '2020-11-04 11:55:30', '2020-11-04 11:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `add_socmeds`
--

CREATE TABLE `add_socmeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wa` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_socmeds`
--

INSERT INTO `add_socmeds` (`id`, `address`, `phone`, `fax`, `email`, `wa`, `fb`, `in`, `tw`, `created_at`, `updated_at`) VALUES
(1, 'JL. Pangeran Jayakarta No. 68 Blok B2-B3, Jakarta 10730', '6284004', '6010546', 'sales@lasindo.com', '08118018877', 'https://facebook.com/', 'https://linkedin.com/', 'https://twitter.com/', NULL, '2020-12-16 10:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area` enum('frontend','backend') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('info','danger','warning','success') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `starts_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `desc`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'KEM', '<p>With more than 50 years of experience in the flow measurement field&nbsp;and numerous innovative and customer-specific product developments, we are your qualified and competent contact for flow measuring technology and calibration. We solve even the most challenging measurement problems in close cooperation with you. Our unique solutions are proven worldwide for manufacturing exotic material flow meter and handling high flow-low pressure application in offshore chemical injection skids. KEM offers a broad selection of measuring principles for this purpose. We develop, produce, and deliver high quality Gear Flow Meters, Turbine Flow Meters, Helical Flow Meters and Micro Flow Meters as well as Coriolis Mass Flow Meters worldwide. Specific accessories complement the product range. We also specialized in special or exotic material flow meter.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/kem.png', NULL, '2020-12-01 09:51:47', '2020-12-01 09:53:52'),
(3, 'SAGE', '<p>Sage Metering is manufacture MASS FLOW METERS Increase process efficiency. Conserve energy. Improve the environment.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/sage.png', NULL, '2020-12-01 09:59:52', '2020-12-01 10:14:46'),
(4, 'Rototherm', '<p>Rototherm Group is a world leader in the supply of industrial instrumentation and services.</p>\r\n\r\n<p>Rototherm&#39;s experience has been built up over the last 170 years, and we are totally committed to working in partnership with our customers and ensuring we meet your exact requirements.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/roto.png', NULL, '2020-12-01 10:24:36', '2020-12-01 10:40:59'),
(5, 'McCrometer', '<p>McCrometer is a leading global flow instrumentation specialist. We specialize in the design, manufacture, installation and testing of flow metering solutions. Instrument, process, facility and consulting engineers worldwide have confidently chosen McCrometer&rsquo;s flow meters for more than 60 years.<br />\r\n<br />\r\nMcCrometer&#39;s V-Cone&reg; and Wafer-Cone&reg; Flow Meters have proven themselves equal to the challenges of the oil and gas industry for three decades. They offer unique performance and low cost of ownership advantages. The result is a dramatic savings in layout space, piping and weight that greatly reduces installation complexity and cost. Less is truly more with the McCrometer V-Cone Flow Meter.<br />\r\n<br />\r\n<strong>Differential Pressure Flow Meter</strong><br />\r\nBuilt-In flow condition design ideal for use in tight-fit and retrofit installations.<br />\r\nMcCrometer&#39;s V-Cone&reg; Flow Meter is an advanced differential pressure instrument, which is ideal for use with liquid, steam or gas media in rugged conditions where accuracy, low maintenance and cost are important. The V-Cone is especially useful in tight-fit and retrofit installations.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/mccro.png', NULL, '2020-12-01 10:25:49', '2020-12-01 10:25:49'),
(6, 'Kings', '<p>King&#39;s Energy Services started in 1977 with one truck, one prover and one aspiring entrepreneur named Gary King. Over 40 years later King&#39;s Energy Services has grown to over 80+ staff and multiple locations. King&#39;s Energy is now a recognized supplier of quality instrumentation and valve products and services throughout Canada.<br />\r\nKing&#39;s Energy Services also has Optical Flow Meter</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/kings.png', NULL, '2020-12-01 10:26:23', '2020-12-01 10:26:23'),
(7, 'Flexim', '<p><strong>We set standards.</strong><br />\r\nAs the technological leader in the field of non-invasive ultrasonic flow measurement with ultrasound, FLEXIM continuously sets standards. Our clamp-on ultrasonic measurement systems&nbsp;FLUXUS&nbsp;measure virtually anything that flows, liquids as well as gases.<br />\r\nToday, non-invasive, ultrasonic flow measurement is only an outsider measuring technique in the technical sense: Clamp-on ultrasonic transducers are simply attached to the outside of the pipe &ndash; without any interruption to operation or any risk of leakage. As our products meet the highest requirements of industrial production, namely the highest level of safety for people and the environment on the one hand and the highest level of plant availability on the other, the former outsiders have long since become extremely popular.<br />\r\n<br />\r\n<strong>Non-invasive measuring technology with SIL certification</strong><br />\r\nFLEXIM has successfully been setting the pace of this development for 25 years. With our flow meters, we not only demonstrated convincingly that the non-invasive measuring technology works reliably and precisely, in the same time we continuously extended its range of applications.<br />\r\nWe at FLEXIM, are particularly proud of our pioneering work carried out to transfer the clamp-on ultrasonic technology to the non-invasive flow measurement of gases. Today, FLEXIM is the only supplier of clamp-on ultrasonic systems for non-invasive flow measurement of liquids and gases with SIL certification worldwide.</p>\r\n\r\n<p><strong>Innovative process analytics</strong><br />\r\nFor many years, FLEXIM has stood for more than just flow measurement. Clamp-on ultrasonic technology is also suitable for the purposes of process analytics, such as for non-invasive concentration measurement. And with the&nbsp;PIOX R&nbsp;process refractometer, FLEXIM has developed a unique optical instrument that has proven itself worldwide in industrial applications.<br />\r\nLike&nbsp;FLUXUS&nbsp;and PIOX, FLEXIM itself also has a strong global presence with 19 subsidiaries in Europe, North and South America, Asia and Australia as well as a comprehensive network of sales partners. At the company headquarters in Berlin, a highly modern production and development centre in line with its sustainable energy concept is currently under way.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/flexim.png', NULL, '2020-12-01 10:27:27', '2020-12-01 10:27:27'),
(8, 'Forain Asia-Pacific Pte Ltd', '<p>Forain Asia-Pacific Pte Ltd capability:</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/forain.png', NULL, '2020-12-08 10:28:53', '2020-12-08 10:28:53'),
(9, 'RMA Fiventures', '<p><strong>RMA Fiventures Asia-Pacific (RFAP) , Global HQ and Technology Owner for Specialized System, Skid Packages and Turn Key EPCC Contractor with Complete Functional Group.</strong><br />\r\n<br />\r\nThe company&rsquo;s origins &ldquo;Fiventures Pte Ltd&rdquo; (FVTS) was incorporated in year 2012 by a team of business development management and qualified engineers with decades of experience in delivering Multiple Discipline Engineering, Design &amp; Built of Natural Gas related Stations, Skids Packages, Process Analytical Systems for Storage Terminal, Transmission and Distribution Network in the Oil &amp; Gas, Power Generation and Process Industries</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/rma.png', NULL, '2020-12-08 10:29:29', '2020-12-08 10:44:10'),
(10, 'Haskel', '<p>Haskel International Inc. is recognized as the world&#39;s leading manufacturer of hydraulic and pneumatic driven, high pressure systems and accessories. For nearly 60 years, Haskel has been a recognized leader in high pressure technology, manufacturing a wide range of high pressure air driven liquid pumps, gas boosters, air amplifiers, systems and accessory equipment.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/haskel.png', NULL, '2020-12-08 10:30:03', '2020-12-08 10:30:03'),
(11, 'MSA', '<p>MSA is the world leader in Fixed Gas and Flame Detector<br />\r\nMSA offer&rsquo;s a wide variety of fixed gas &amp; flame monitoring solutions to detect combustible gases, toxic gases &amp; oxygen deficiency/enrichment. MSA instruments reflect the latest developments in sensors and instrumentation design using electrochemical, catalyc bead, ultrasonic, photoacoustic infrared &amp; both fixed point &amp; open-path infrared sensing technologies We offer many systems to meet customers facility&rsquo;s monitoring needs, from a single sensor in a stand-alone application to a large-scale, completely computerized installation consisting of thousands of sensing points. MSA also design custom systems that are tailored to fit unique monitoring requirement</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/msa.png', NULL, '2020-12-08 10:31:45', '2020-12-16 02:42:47'),
(12, 'Simplex', '<p>In 1894, a young engineer working for a Gardner, Massachusetts furniture manufacturer turned his energy towards finding a better way to record the time and attendance of his company&rsquo;s employees. E.G. Watkins&rsquo; hard work and ingenuity led to the invention of the Simplex time clock, the first accurate and easy to use time recording system &ndash; and to the creation of the Simplex Time Recorder Company. Simplex Time Recorder operated under the private ownership of the Watkins family for over a century, expanding into the fire alarm and building systems business in the 1950s. In December of 2000, Simplex became part of Tyco International, a global leader in the fire protection and security solutions industries. Today, Simplex is one of the most trusted brands in the fire protection industry and customers around the world rely on Simplex systems to help keep their people and their property safe every day.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/simplex.png', NULL, '2020-12-17 03:13:20', '2020-12-17 03:13:20'),
(13, 'Honeywell Enraf', '<p>Honeywell Enraf is specialized in the development, manufacturing, sales, service &amp; support of the worlds most highly ranked precision instrumentation and software systems for bulk storage management for 50 years.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/honeywell.png', NULL, '2020-12-17 07:29:20', '2020-12-17 07:29:20'),
(14, 'Applied Analytics', '<p>Applied Analytics, Inc. is a global supplier of online analysis equipment serving the oil, natural gas, chemical, and pharmaceutical industries. For over 20 years, AAI has provided efficient and economical solutions to the most challenging industrial applications using UV-Vis and NIR spectroscopy AAI&#39;s flagship OMA-300 process analyzer and TLG-837 tail gas analyzer help comprise the comprehensive product line that suits many analytical requirements.<br />\r\nApplied Analytics was incorporated in 1994 and manufactured in the USA.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/applied.png', NULL, '2020-12-17 09:33:34', '2020-12-17 09:33:34'),
(15, 'M&C', '<p>The &lsquo;M&amp;C TechGroup Sales Service&rsquo; company employs international sales professionals in Europe and the &lsquo;M&amp;C TechGroup MechParts GmbH&rsquo; is specialised in the manufacturing of mechanical components. The &lsquo;M&amp;C TechGroup Real Estate GmbH&rsquo; incorporates, manages and maintains all international real estate properties owned by M&amp;C. The group is financially and legally in all regards independent, and takes responsibility for defining its own corporate policy.<br />\r\nM&amp;C products and special systems provide excellent service and reliability; this is proven by our product quality and capability to provide customer specific solutions for over 30 different current industries and applications.<br />\r\nThis is the reason why over 5,000 customers worldwide, from small, highly skilled engineering companies to well-known corporations, have confidence in our products again and again.<br />\r\nOur customers benefit from a number of significant competitive advantages</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/m-c.png', NULL, '2020-12-17 09:34:20', '2020-12-17 09:34:20'),
(16, 'Advanced Holdings Ltd.', '<p>Founded in 1993, Advanced Holdings Ltd. (the &ldquo;Group&rdquo;), a Mainboard-listed company on the Singapore Exchange, is a global engineering science organization that designs, manufactures and markets a diverse range of innovative products and solutions to the Oil &amp; Gas, Petrochemicals &amp; Chemicals industries to make operations safer, cleaner and more efficient.<br />\r\nAdvanced has manufacturing facilities and offices in more than 11 countries, including the USA, UK, France, Germany, Saudi Arabia, UAE, China and Singapore. This global presence allows Advanced to work more closely with its customers while providing comprehensive engineering services.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<center><img alt=\"\" src=\"https://dev.lasindo.com//storage/files/3/products/advanced/image.png\" style=\"height:561px; width:875px\" /></center>', 'https://dev.lasindo.com//storage/files/3/brands-logo/advanced.png', NULL, '2020-12-17 09:36:18', '2020-12-26 17:16:03'),
(17, 'nVent RAYCHEM Industrial Solutions', '<p>As the world&rsquo;s largest provider of complete electrical heat management systems, primarily for the general process, oil and gas, chemical, and power generation industries, we provide industrial heat trace products and turnkey solutions.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/nvent-raychem.png', NULL, '2020-12-18 03:00:49', '2020-12-18 03:00:49'),
(18, 'Nvent', '<p>Nvent</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/nvent.png', NULL, '2020-12-18 03:25:05', '2020-12-18 03:25:05'),
(19, 'Trace Tek', '<p>Trace Tek</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/tracetek.png', NULL, '2020-12-18 03:26:55', '2020-12-18 03:26:55'),
(20, 'Valv Technologies', '<p>ValvTechnologies is the global leader in the design and manufacturer of metal-seated, zero-leakage, severe service valve solutions for the harshest applications. What matters most is our focus on helping you meet your challenges safely and efficiently. Whether those challenges are daily process problems that need to be met one valve at a time, or system-wide concerns demanding excellence in severe service valve solutions, ValvTechnologies has built solutions proven to help customers like you. ValvTechnologies is committed to providing the best isolation solutions to ensure customer satisfaction, safety and reliability, and improved process and performance. You&rsquo;ll recognize the value of ValvTechnologies as a proven, dependable partner.<br />\r\n<br />\r\nValvTechnologies&rsquo; severe service valves are built to withstand the most severe applications. High-temperature, high-pressure, high-cycling, abrasive, corrosive and caustic media have all been considered in the design of our product lines.<br />\r\n<br />\r\nAs a global leader in the design and manufacturing of severe service valves, ValvTechnologies has established a worldwide reputation for superior quality and dependability with customers in every industry. From standard applications to the most sophisticated, ValvTechnologies is committed to providing solutions for customers to manage their processes safely and efficiently. Our approach at ValvTechnologies is based on customer satisfaction, safety, people, process and performance. By equipping highly trained people with the latest technology, ValvTechnologies has created an atmosphere where quality and reliability are built into its products from start to finish. All of ValvTechnologies&rsquo; valves are designed with customers&rsquo; requirements in mind and offer proven reliability, superior engineered performance and unique safety features. By focusing on these principles, ValvTechnologies has become an integral part of its customers&rsquo; asset management strategy.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/valv.png', NULL, '2020-12-18 03:32:17', '2020-12-18 03:32:17'),
(21, 'BuTech', '<p>BuTech</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/butech.png', NULL, '2020-12-18 03:34:12', '2020-12-18 03:34:12'),
(22, 'CCS', '<p>Custom Control Sensors, Inc. (CCS) is a global leader in the design, testing, manufacturing and supply of pressure, temperature and liquid flow switches for the Industrial, Energy, Aerospace and Defense markets. Founded in 1957, CCS revolutionized the industrial pressure switch market by utilizing its patented Dual-Snap&reg; disc spring technology.<br />\r\n<br />\r\nOriginally developed for critical aerospace applications, the Dual-Snap disc spring eliminates contact chatter and erroneous electrical signals due to vibration, shock and high temperature conditions associated with other trace type pressure switch devices. As a result, CCS industrial pressure and temperature switch products are the industry standard and used in essential equipment alarm, monitoring and control functions all over the globe.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/ccs.png', NULL, '2020-12-18 03:35:01', '2020-12-18 03:35:01'),
(23, 'Bifold Orange', '<p>Bifold Fluidpower was established over a century ago as a manufacturer of valves for hazardous environments and is currently a leading manufacturer of electro-hydraulic and pneumatic directional control valves for the oil and gas industry. With the takeover of Marshalsea Hydraulics, Bifold Fluidpower can now offer a large selection of pumps / pump sets and intensifiers along with other high pressure, stainless steel fluidpower equipment. The state of the art manufacturing facility is based in the UK with sales offices in Houston, Singapore and Taunton and representatives in every continent. Through a commitment to innovation and value engineering, Bifold Fluidpower and Marshalsea Hydraulics offers leading technical solutions for control system designs whilst providing excellent service and technical support to customers around the world.<br />\r\n<br />\r\nMajor producers world-wide depend upon Bifold Fluidpower products to perform in the most extreme conditions, offshore and onshore. Depth of knowledge built up over a century enables us to identify the optimum solution for each application. Over 3000 designs include valves for pressures from 10 to 20,000 psi, ambient temperatures from -50oC to +180oC and contamination levels beyond NAS 1638 Class 12. Solenoids certified for flammable gas &amp; dust atmospheres are available with power ratings from 0.9 to 20 watts.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/bifold.png', NULL, '2020-12-18 03:35:33', '2020-12-18 03:35:33'),
(24, 'Ametek | M&G', '<p>AMETEK Sensors, Test &amp; Calibration is one of the world&rsquo;s leading manufacturers and developers of calibration instruments for temperature, pressure and process signals as well as for temperature sensors both from a commercial and a technological point of view. Our pressure equipment includes some of the world&rsquo;s most popular digital gauges and calibrators for a variety of applications and markets. Included are intrinsically safe &quot;percent of reading&quot; gauges and calibrators, differential pressure gauges, reference data recorders, calibrators with built in pumps, and unique pneumatic and hydraulic deadweight testers. In many cases, one handheld calibrator can replace multiple instruments, reducing ongoing recalibration and maintenance costs. Our recorders can collect readings as quick as ten times per second, and store up to 1 million data points.n essential equipment alarm, monitoring and control functions all over the globe.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/ametek.png', NULL, '2020-12-18 03:36:02', '2020-12-18 03:36:02'),
(25, 'Ametek | Jofra', '<p>AMETEK Sensors, Test &amp; Calibration is one of the world&rsquo;s leading manufacturers and developers of calibration instruments for temperature, pressure and process signals as well as for temperature sensors both from a commercial and a technological point of view. Our dry-block and liquid bath temperature calibrators include 6 series with more than 25 models and temperature ranges from -100 to 1205&deg;C. All feature portability, accuracy, speed, and advanced documenting functions with JofraCal calibration software. Our calibrators include the smallest and coldest dry-block temperature calibrator available.</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/ametek-jofra.png', NULL, '2020-12-18 04:09:17', '2020-12-18 04:09:17'),
(26, 'Zettler', '<p>Zettler</p>', 'https://dev.lasindo.com//storage/files/3/brands-logo/zettler.png', NULL, '2020-12-18 04:09:53', '2020-12-18 04:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `brand_secs`
--

CREATE TABLE `brand_secs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brandsec` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_secs`
--

INSERT INTO `brand_secs` (`id`, `section`, `brandsec`, `created_at`, `updated_at`) VALUES
(1, 'Flow', 'Flexim', '2020-12-25 12:55:01', '2020-12-25 12:55:01'),
(2, 'Flow', 'KEM', '2020-12-25 12:55:01', '2020-12-25 12:55:01'),
(3, 'Flow', 'Kings', '2020-12-25 12:55:01', '2020-12-25 12:55:01'),
(4, 'Flow', 'McCrometer', '2020-12-25 12:55:01', '2020-12-25 12:55:01'),
(5, 'Flow', 'Rototherm', '2020-12-25 12:55:01', '2020-12-25 12:55:01'),
(6, 'Flow', 'SAGE', '2020-12-25 12:55:01', '2020-12-25 12:55:01'),
(11, 'Analytical', 'Advanced Holdings Ltd.', '2020-12-26 05:27:43', '2020-12-26 05:27:43'),
(12, 'Analytical', 'Applied Analytics', '2020-12-26 05:27:43', '2020-12-26 05:27:43'),
(13, 'Analytical', 'M&C', '2020-12-26 05:27:43', '2020-12-26 05:27:43'),
(19, 'Level', 'Honeywell Enraf', '2020-12-26 05:29:24', '2020-12-26 05:29:24'),
(20, 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', '2020-12-26 05:31:12', '2020-12-26 05:31:12'),
(21, 'Leak Detection', 'Nvent', '2020-12-26 05:31:29', '2020-12-26 05:31:29'),
(22, 'Leak Detection', 'Trace Tek', '2020-12-26 05:31:29', '2020-12-26 05:31:29'),
(23, 'Pressure', 'Ametek | M&G', '2020-12-26 05:32:02', '2020-12-26 05:32:02'),
(24, 'Pressure', 'Bifold Orange', '2020-12-26 05:32:02', '2020-12-26 05:32:02'),
(25, 'Pressure', 'BuTech', '2020-12-26 05:32:02', '2020-12-26 05:32:02'),
(26, 'Pressure', 'CCS', '2020-12-26 05:32:02', '2020-12-26 05:32:02'),
(27, 'Pressure', 'Haskel', '2020-12-26 05:32:02', '2020-12-26 05:32:02'),
(28, 'Pressure', 'Rototherm', '2020-12-26 05:32:02', '2020-12-26 05:32:02'),
(29, 'Valves', 'Valv Technologies', '2020-12-26 05:32:25', '2020-12-26 05:32:25'),
(30, 'Temperature', 'Ametek | Jofra', '2020-12-26 05:32:39', '2020-12-26 05:32:39'),
(31, 'Temperature', 'CCS', '2020-12-26 05:32:39', '2020-12-26 05:32:39'),
(32, 'Fall Protection', 'MSA', '2020-12-26 05:32:55', '2020-12-26 05:32:55'),
(33, 'Fire & Gas Detection', 'MSA', '2020-12-26 05:33:04', '2020-12-26 05:33:04'),
(34, 'Fire & Gas Detection', 'Simplex', '2020-12-26 05:33:04', '2020-12-26 05:33:04'),
(35, 'Fire & Gas Detection', 'Zettler', '2020-12-26 05:33:04', '2020-12-26 05:33:04'),
(36, 'Fuel Gas System', 'Forain Asia-Pacific Pte Ltd', '2020-12-26 05:33:28', '2020-12-26 05:33:28'),
(37, 'Fuel Gas System', 'RMA Fiventures', '2020-12-26 05:33:28', '2020-12-26 05:33:28'),
(38, 'High Pressure Pump System', 'Haskel', '2020-12-26 05:33:41', '2020-12-26 05:33:41'),
(42, 'Engineered Fall Protection Systems', 'MSA', '2020-12-27 05:19:08', '2020-12-27 05:19:08'),
(43, 'Engineered Fall Protection System', 'MSA', '2020-12-27 05:19:36', '2020-12-27 05:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Products', NULL, '2020-12-02 04:00:16', '2020-12-02 04:00:16'),
(2, 'Engineering & Solution', NULL, '2020-12-02 04:00:56', '2020-12-02 04:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `fname`, `lname`, `company`, `country`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Mike', 'JM Corp', 'JO', '064657756465', 'john@mik.e', 'Hello, I just testing this out, Have a nice day!', '2020-12-27 06:50:14', '2020-12-27 06:50:14');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(20) UNSIGNED NOT NULL,
  `code` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `country`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(2, 'AX', 'Åland Islands', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(3, 'AL', 'Albania', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(4, 'DZ', 'Algeria', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(5, 'AS', 'American Samoa', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(6, 'AD', 'Andorra', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(7, 'AO', 'Angola', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(8, 'AI', 'Anguilla', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(9, 'AQ', 'Antarctica', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(10, 'AG', 'Antigua and Barbuda', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(11, 'AR', 'Argentina', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(12, 'AM', 'Armenia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(13, 'AW', 'Aruba', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(14, 'AU', 'Australia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(15, 'AT', 'Austria', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(16, 'AZ', 'Azerbaijan', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(17, 'BS', 'Bahamas', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(18, 'BH', 'Bahrain', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(19, 'BD', 'Bangladesh', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(20, 'BB', 'Barbados', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(21, 'BY', 'Belarus', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(22, 'BE', 'Belgium', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(23, 'BZ', 'Belize', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(24, 'BJ', 'Benin', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(25, 'BM', 'Bermuda', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(26, 'BT', 'Bhutan', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(27, 'BO', 'Bolivia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(28, 'BA', 'Bosnia and Herzegovina', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(29, 'BW', 'Botswana', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(30, 'BV', 'Bouvet Island', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(31, 'BR', 'Brazil', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(32, 'IO', 'British Indian Ocean Territory', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(33, 'BN', 'Brunei Darussalam', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(34, 'BG', 'Bulgaria', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(35, 'BF', 'Burkina Faso', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(36, 'BI', 'Burundi', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(37, 'KH', 'Cambodia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(38, 'CM', 'Cameroon', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(39, 'CA', 'Canada', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(40, 'CV', 'Cape Verde', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(41, 'KY', 'Cayman Islands', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(42, 'CF', 'Central African Republic', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(43, 'TD', 'Chad', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(44, 'CL', 'Chile', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(45, 'CN', 'China', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(46, 'CX', 'Christmas Island', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(47, 'CC', 'Cocos (Keeling) Islands', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(48, 'CO', 'Colombia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(49, 'KM', 'Comoros', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(50, 'CG', 'Congo', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(51, 'CD', 'Congo, The Democratic Republic of The', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(52, 'CK', 'Cook Islands', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(53, 'CR', 'Costa Rica', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(54, 'CI', 'Cote D\'ivoire', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(55, 'HR', 'Croatia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(56, 'CU', 'Cuba', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(57, 'CY', 'Cyprus', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(58, 'CZ', 'Czech Republic', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(59, 'DK', 'Denmark', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(60, 'DJ', 'Djibouti', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(61, 'DM', 'Dominica', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(62, 'DO', 'Dominican Republic', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(63, 'EC', 'Ecuador', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(64, 'EG', 'Egypt', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(65, 'SV', 'El Salvador', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(66, 'GQ', 'Equatorial Guinea', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(67, 'ER', 'Eritrea', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(68, 'EE', 'Estonia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(69, 'ET', 'Ethiopia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(70, 'FK', 'Falkland Islands (Malvinas)', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(71, 'FO', 'Faroe Islands', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(72, 'FJ', 'Fiji', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(73, 'FI', 'Finland', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(74, 'FR', 'France', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(75, 'GF', 'French Guiana', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(76, 'PF', 'French Polynesia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(77, 'TF', 'French Southern Territories', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(78, 'GA', 'Gabon', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(79, 'GM', 'Gambia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(80, 'GE', 'Georgia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(81, 'DE', 'Germany', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(82, 'GH', 'Ghana', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(83, 'GI', 'Gibraltar', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(84, 'GR', 'Greece', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(85, 'GL', 'Greenland', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(86, 'GD', 'Grenada', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(87, 'GP', 'Guadeloupe', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(88, 'GU', 'Guam', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(89, 'GT', 'Guatemala', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(90, 'GG', 'Guernsey', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(91, 'GN', 'Guinea', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(92, 'GW', 'Guinea-bissau', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(93, 'GY', 'Guyana', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(94, 'HT', 'Haiti', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(95, 'HM', 'Heard Island and Mcdonald Islands', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(96, 'VA', 'Holy See (Vatican City State)', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(97, 'HN', 'Honduras', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(98, 'HK', 'Hong Kong', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(99, 'HU', 'Hungary', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(100, 'IS', 'Iceland', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(101, 'IN', 'India', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(102, 'ID', 'Indonesia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(103, 'IR', 'Iran, Islamic Republic of', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(104, 'IQ', 'Iraq', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(105, 'IE', 'Ireland', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(106, 'IM', 'Isle of Man', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(107, 'IL', 'Israel', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(108, 'IT', 'Italy', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(109, 'JM', 'Jamaica', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(110, 'JP', 'Japan', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(111, 'JE', 'Jersey', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(112, 'JO', 'Jordan', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(113, 'KZ', 'Kazakhstan', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(114, 'KE', 'Kenya', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(115, 'KI', 'Kiribati', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(116, 'KP', 'Korea, Democratic People\'s Republic of', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(117, 'KR', 'Korea, Republic of', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(118, 'KW', 'Kuwait', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(119, 'KG', 'Kyrgyzstan', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(120, 'LA', 'Lao People\'s Democratic Republic', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(121, 'LV', 'Latvia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(122, 'LB', 'Lebanon', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(123, 'LS', 'Lesotho', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(124, 'LR', 'Liberia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(125, 'LY', 'Libyan Arab Jamahiriya', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(126, 'LI', 'Liechtenstein', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(127, 'LT', 'Lithuania', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(128, 'LU', 'Luxembourg', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(129, 'MO', 'Macao', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(130, 'MK', 'Macedonia, The Former Yugoslav Republic of', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(131, 'MG', 'Madagascar', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(132, 'MW', 'Malawi', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(133, 'MY', 'Malaysia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(134, 'MV', 'Maldives', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(135, 'ML', 'Mali', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(136, 'MT', 'Malta', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(137, 'MH', 'Marshall Islands', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(138, 'MQ', 'Martinique', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(139, 'MR', 'Mauritania', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(140, 'MU', 'Mauritius', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(141, 'YT', 'Mayotte', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(142, 'MX', 'Mexico', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(143, 'FM', 'Micronesia, Federated States of', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(144, 'MD', 'Moldova, Republic of', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(145, 'MC', 'Monaco', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(146, 'MN', 'Mongolia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(147, 'ME', 'Montenegro', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(148, 'MS', 'Montserrat', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(149, 'MA', 'Morocco', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(150, 'MZ', 'Mozambique', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(151, 'MM', 'Myanmar', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(152, 'NA', 'Namibia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(153, 'NR', 'Nauru', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(154, 'NP', 'Nepal', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(155, 'NL', 'Netherlands', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(156, 'AN', 'Netherlands Antilles', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(157, 'NC', 'New Caledonia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(158, 'NZ', 'New Zealand', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(159, 'NI', 'Nicaragua', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(160, 'NE', 'Niger', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(161, 'NG', 'Nigeria', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(162, 'NU', 'Niue', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(163, 'NF', 'Norfolk Island', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(164, 'MP', 'Northern Mariana Islands', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(165, 'NO', 'Norway', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(166, 'OM', 'Oman', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(167, 'PK', 'Pakistan', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(168, 'PW', 'Palau', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(169, 'PS', 'Palestinian Territory, Occupied', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(170, 'PA', 'Panama', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(171, 'PG', 'Papua New Guinea', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(172, 'PY', 'Paraguay', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(173, 'PE', 'Peru', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(174, 'PH', 'Philippines', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(175, 'PN', 'Pitcairn', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(176, 'PL', 'Poland', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(177, 'PT', 'Portugal', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(178, 'PR', 'Puerto Rico', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(179, 'QA', 'Qatar', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(180, 'RE', 'Reunion', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(181, 'RO', 'Romania', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(182, 'RU', 'Russian Federation', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(183, 'RW', 'Rwanda', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(184, 'SH', 'Saint Helena', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(185, 'KN', 'Saint Kitts and Nevis', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(186, 'LC', 'Saint Lucia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(187, 'PM', 'Saint Pierre and Miquelon', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(188, 'VC', 'Saint Vincent and The Grenadines', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(189, 'WS', 'Samoa', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(190, 'SM', 'San Marino', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(191, 'ST', 'Sao Tome and Principe', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(192, 'SA', 'Saudi Arabia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(193, 'SN', 'Senegal', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(194, 'RS', 'Serbia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(195, 'SC', 'Seychelles', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(196, 'SL', 'Sierra Leone', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(197, 'SG', 'Singapore', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(198, 'SK', 'Slovakia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(199, 'SI', 'Slovenia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(200, 'SB', 'Solomon Islands', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(201, 'SO', 'Somalia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(202, 'ZA', 'South Africa', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(203, 'GS', 'South Georgia and The South Sandwich Islands', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(204, 'ES', 'Spain', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(205, 'LK', 'Sri Lanka', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(206, 'SD', 'Sudan', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(207, 'SR', 'Suriname', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(208, 'SJ', 'Svalbard and Jan Mayen', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(209, 'SZ', 'Swaziland', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(210, 'SE', 'Sweden', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(211, 'CH', 'Switzerland', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(212, 'SY', 'Syrian Arab Republic', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(213, 'TW', 'Taiwan, Province of China', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(214, 'TJ', 'Tajikistan', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(215, 'TZ', 'Tanzania, United Republic of', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(216, 'TH', 'Thailand', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(217, 'TL', 'Timor-leste', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(218, 'TG', 'Togo', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(219, 'TK', 'Tokelau', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(220, 'TO', 'Tonga', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(221, 'TT', 'Trinidad and Tobago', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(222, 'TN', 'Tunisia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(223, 'TR', 'Turkey', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(224, 'TM', 'Turkmenistan', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(225, 'TC', 'Turks and Caicos Islands', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(226, 'TV', 'Tuvalu', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(227, 'UG', 'Uganda', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(228, 'UA', 'Ukraine', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(229, 'AE', 'United Arab Emirates', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(230, 'GB', 'United Kingdom', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(231, 'US', 'United States', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(232, 'UM', 'United States Minor Outlying Islands', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(233, 'UY', 'Uruguay', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(234, 'UZ', 'Uzbekistan', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(235, 'VU', 'Vanuatu', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(236, 'VE', 'Venezuela', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(237, 'VN', 'Viet Nam', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(238, 'VG', 'Virgin Islands, British', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(239, 'VI', 'Virgin Islands, U.S.', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(240, 'WF', 'Wallis and Futuna', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(241, 'EH', 'Western Sahara', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(242, 'YE', 'Yemen', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(243, 'ZM', 'Zambia', '2020-12-16 06:27:22', '2020-12-16 06:27:22'),
(244, 'ZW', 'Zimbabwe', '2020-12-16 06:27:22', '2020-12-16 06:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `epc_names`
--

CREATE TABLE `epc_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `epc_names`
--

INSERT INTO `epc_names` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Water & Waste Water Treatment Package', '2020-12-16 03:29:40', '2020-12-27 06:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `e_p_c_s`
--

CREATE TABLE `e_p_c_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagepos` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_p_c_s`
--

INSERT INTO `e_p_c_s` (`id`, `image`, `desc`, `imagepos`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'https://dev.lasindo.com//storage/files/3/epc/water1.png', '<ul>\r\n	<li>API Separator and Lamella Clarifier</li>\r\n	<li>Dissolved Air Floatation, Induced Gas Floatation</li>\r\n	<li>Walnut Shell Filter, Coalescers</li>\r\n	<li>Chemical Treatment/Dosing System:<br />\r\n	Oxygen Scavenger, Demulisier, Emulsifier,<br />\r\n	Biocide, Corrosion Inhibitor</li>\r\n	<li>Vacuum Deaerator, Membrane Deaerator</li>\r\n	<li>Ultrafiltration , RO membrane</li>\r\n	<li>Sulfate removal from waste water treatment</li>\r\n</ul>', 'right', NULL, '2020-12-16 04:00:07', '2020-12-16 04:00:07'),
(2, 'https://dev.lasindo.com//storage/files/3/epc/water-treatment.png', '<ul>\r\n	<li>High Rate Solid Contact Clarifier and Lamella Clarifier</li>\r\n	<li>Gravity Filter, Sand Filter, Multi Media Filter, Activated Carbon Filter</li>\r\n	<li>Softeners, Demineralization Plant, Ultra Filtration , Reverse Osmosis, EDI</li>\r\n	<li>Deaerator, Degasser, Membrane Deaerator</li>\r\n	<li>Chemical treatment/Dosing System for Water Treatment, Cooling Water Treatment</li>\r\n	<li>Oil Water Separator, CPI, DAF, Electrocoagulation</li>\r\n	<li>Biological Treatment, Aerobic (Aeration) &amp; Anaerobic Process, Conventional and Modified Activated Sludge</li>\r\n	<li>Sludge Treatment, Sludge Thickener &amp; Drying Bed, Dewatering Machine, Filter Press, Decanter</li>\r\n</ul>', 'left', NULL, '2020-12-16 04:11:31', '2020-12-16 04:34:32'),
(3, 'https://dev.lasindo.com//storage/files/3/epc/water3.png', '<ul>\r\n	<li>Pickling and Passivation of steel Pipes</li>\r\n	<li>Chemical Cleaning : Degreasing, Acid, Rinsing and Passivation of Boiler and HRSG</li>\r\n	<li>Insitu Waste Treatment of Chemical Cleaning</li>\r\n	<li>Lube Oil Flushing</li>\r\n	<li>Hydrotesting of Tanks using Sea Water with H2 Scavenger and Corrosion Inhibitor</li>\r\n</ul>', 'right', NULL, '2020-12-16 04:11:56', '2020-12-16 04:11:56');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_25_034148_create_permission_tables', 1),
(5, '2020_05_25_021239_create_announcements_table', 1),
(6, '2020_05_29_020244_create_password_histories_table', 1),
(7, '2020_07_06_215139_create_activity_log_table', 1),
(8, '2020_10_19_204342_create_two_factor_authentications_table', 1),
(9, '2020_11_04_155606_create_slide_banners_table', 2),
(10, '2020_12_01_162538_create_brands_table', 3),
(11, '2020_12_02_100033_create_products_table', 4),
(12, '2020_12_02_102001_create_categories_table', 4),
(13, '2020_12_02_102206_create_sections_table', 4),
(14, '2020_12_16_101435_create_e_p_c_s_table', 5),
(15, '2020_12_16_101810_create_epc_names_table', 5),
(16, '2020_12_16_123819_create_contacts_table', 6),
(17, '2020_12_16_131029_create_countries_table', 7),
(18, '2020_12_16_163410_create_add_socmeds_table', 8),
(19, '2020_12_16_165610_create_add_socmeds_table', 9),
(20, '2020_12_16_173930_create_show_products_table', 10),
(21, '2020_12_17_110342_create_show_banners_table', 11),
(22, '2020_12_17_120100_create_about_descs_table', 12),
(23, '2020_12_17_120114_create_about_images_table', 12),
(24, '2020_12_25_000526_create_brand_secs_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Domains\\Auth\\Models\\User', 1),
(2, 'App\\Domains\\Auth\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(6) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `newsDate` date NOT NULL,
  `newsImage` varchar(100) DEFAULT NULL,
  `newsContent` longtext,
  `newsPublice` varchar(10) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `author`, `newsDate`, `newsImage`, `newsContent`, `newsPublice`, `reg_date`) VALUES
(6, 'Berita Terkini Gempa', 'Zacharias Wuragil', '2021-04-04', 'gempa.jpeg', '<p>TEMPO.CO,&nbsp;Jakarta&nbsp;- Berita terkini&nbsp;<a href=\"https://www.tempo.co/tag/gempa\" target=\"_blank\" rel=\"noopener\">gempa</a>&nbsp;di wilayah Indonesia datang dari Ambon, Maluku. Badan Meteorologi Klimatologi dan Geofisika atau BMKG mencatat gempa berkekuatan 5,9 dalam skala Magnitudo&nbsp;yang menggoyang wilayah itu pada Minggu dinihari, 4 April 2021.</p>\r\n<p>Gempa itu tepatnya terjadi pada pukul 01.42 WIB atau 03.42 waktu setempat. Pusat gempa disebutkan berada di laut, 162 kilometer arah barat daya&nbsp;<a href=\"https://tekno.tempo.co/read/1306580/gempa-ambon-ungkap-keberadaan-sesar-aktif-baru\" target=\"_blank\" rel=\"noopener\">Ambon</a>. Sensor BMKG mengukur sumber gempa itu berasal dari kedalaman 329 kilometer.</p>\r\n<p>Beruntung guncangannya dirasakan lemah saja. Gempa itu disebutkan memiliki intensitas hingga skala III MMI di Ambon. Skala ini diilustrasikan sebagai gempa yang bisa dirasakan nyata di dalam rumah, seakan ada truk melintas.</p>\r\n<p>Sehari sebelumnya, Sabtu 3 April 2021, gempa 4,1 M&nbsp;tercatat terjadi di Ende, Nusa Tenggara Timur. Gempa terukur memiliki intensitas lebih lemah, skala II MMI.</p>\r\n<div id=\"inarticle\"></div>\r\n<p>Baca juga:<br /><a href=\"https://tekno.tempo.co/read/1448518/insight-nasa-deteksi-dua-gempa-besar-di-mars/full&amp;view=ok\" target=\"_blank\" rel=\"noopener\">Gempa juga terjadi di Mars, Wahana Penjelajah milik NASA Bisa Merasakannya</a>&nbsp;&nbsp;</p>\r\n<p><a href=\"https://tekno.tempo.co/read/1444427/6-fakta-gempa-jepang-dari-zona-megathrust-yang-disangka-bikin-tsunami\" target=\"_blank\" rel=\"noopener\">BMKG</a>&nbsp;menginformasikan, gempa itu juga berpusat di laut sekitar 38 kilometer arah tenggara Maumere-Sikka. Kedalamannya, 114 kilometer. Tidak ada info tsunami yang terjadi baik dari gempa di Ambon maupun Ende.</p>', 'set', '2021-04-07 08:09:07'),
(9, 'Unpad Buka Suara soal Polemik Prof Muradi-Ibu dan 2 Anak Tewas', 'Detik', '2021-04-08', 'cnn1.jpeg', '<p><strong style=\"box-sizing: border-box; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Bandung</strong><span style=\"font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">&nbsp;-&nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; display: inline; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Beragam peristiwa terjadi di Jawa Barat hari ini, Rabu (7/4/2021). Mulai dari Unpad angkat bicara soal kasus salah satu guru besarnya tersandung masalah penelantaran anak hingga ibu dan dua anaknya meninggal dunia di Bandung Barat.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Berikut rangkuman beritanya:</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">Pelaku Pelemparan Batu yang Tewaskan Pemobil di Bandung Terendus</strong></p>\r\n<div class=\"clearfix\" style=\"box-sizing: border-box; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">&nbsp;</div>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Polisi temukan titik terang terkait pelaku pelemparan batu di Arcamanik, Kota Bandung. Pihak kepolisian sudah mengantongi petunjuk pelaku pelemparan batu yang menewaskan seorang pengendara mobil di Bandung. Namun, polisi masih perlu bukti tambahan.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">\"Kalau petunjuk sudah ada, ya kita tinggal menguatkan mencari lagi petunjuk lain,\" ujar Kapolsek Arcamanik Kompol Deng Rahmanto saat dikonfirmasi, Selasa (6/4).</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Deny menuturkan pihaknya tak bisa tergesa-gesa dalam menentukan pelaku dan melakukan penangkapan. Pihaknya masih mencari bukti yang lebih kuat.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">\"Kita tinggal nyari petunjuk lain agar menguatkan. Karena kita jangan sampai salah menetapkan tersangka ke orang. Jadi kita harus hati-hati juga. Mudah-mudahan dalam waktu dekat keungkap,\" tuturnya.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Selain minimnya saksi, tak ada CCTV di tempat kejadian perkara (TKP). Hal itu juga diungkapkan Amy Rahmawati (36), salah satu keluarga Yulin.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Pihaknya mengingatkan kepada Pemkot Bandung agar memasang kamera CCTV dan memperbaiki penerangan jalan umum (PJU) di jalan tersebut.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">\"Sebenarnya harapan saya bukan hanya ke pihak kepolisian saja ya, karena menurut saya ini kerjanya itu bukan polisi saja, tapi semua pihak ya, Pemkot juga,\" kata Amy via sambungan telepon, Selasa (6/4).</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Amy meminta agar jalur tersebut diperhatikan fasilitas umumnya karena rawan terjadi tindak kejahatan dan kondisi jalananan yang gelap. \"Benar-benar diperhatikan, karena daerah situ sudah rawan dari dulu-dulu, masa iya mau sampai kapan daerah situ rawan terus,\" ujarnya.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">\"Coba deh lewat daerah situ, habis magrib daerah itu setelah lampu merah Ujungberung sampai ke Sukamiskin penerangan jalan itu ada di sebelah kanan saja, sebelah kirinya enggak ada,\" tutur Amy menambahkan.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Diberitakan sebelumnya seorang warga Tasikmalaya dinyatakan meninggal dunia setelah menjadi korban pelemparan batu saat mengendarai mobil di Jalan AH Nasution, Kota Bandung.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Kejadian yang menimpa almarhum Yulin Prakasa (50) terjadi, Minggu (28/3) dini hari lalu saat korban hendak kembali ke Bandung dari Tasikmalaya dengan tujuan untuk bekerja.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Korban menghembuskan nafas terakhirnya, Jumat (2/4) lalu sekitar Pukul 22.20 WIB di Rumah Sakit Ujungberung Kota Bandung setelah mengalami luka parah di kepala.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Dari informasi yang dihimpun, kejadian yang menimpa Yulin bukanlah yang pertama kalinya. Di hari yang sama dua kejadian serupa terjadi di Jalan Pacuan Kuda, yang letaknya tidak jauh dari SOR Arcamanik.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">Unpad Buka Suara soal Kasus Prof Muradi Dituding Telantarkan Anak</strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Finalis Miss Lasdscape 2019 perwakilan Indonesia Era Setiyowati (Sierra) melaporkan suami sirinya Profesor Muradi ke Komisi Perlindungan Anak Indonesia (KPAI).</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Prof Muradi dituding menelantarkan anak hasil pernikahan siri mereka.<br style=\"box-sizing: border-box;\" />Pihak Universitas Padjajaran (Unpad) angkat bicara, terkait kasus yang saat ini sedang dihadapi Prof Muradi.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Kepala Kantor Humas Unpad Dandi Supriadi membenarkan hal tersebut dan mengarah ke salah satu guru besar Unpad.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">\"Memang betul kabar yang sudah ramai diberitakan tersebut mengarah ke salah seorang guru besar Unpad,\" katanya pesan singkat, hari ini.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Pihak Unpad juga sudah melakukan verifikasi secara internal, untuk mengecek informasi tersebut. Menurutnya, hal tersebut tidak ada sangkut pautnya dengan Unpad.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">\"Yang saya bisa informasikan sekarang, pihak Unpad sudah melakukan verifikasi internal terkait dugaan tersebut. Namun di luar itu semua, kasus yang terjadi adalah sepenuhnya merupakan masalah keluarga pribadi yang bersangkutan tidak ada sangkut pautnya dengan Unpad,\" ungkapnya.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">Ia menuturkan kasus yang tengah dihadapi Prof Muradi merupakan ranah pribadi. Namun, secara etika pengajar, Unpad akan menyerahkannya ke Komisi Etika Senat Akademik.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">\"Implikasi hukum yang terjadi atau kesepakatan lainnya diserahkan kepada yang bersangkutan sebagai orang pribadi. Di Unpad sendiri, pembicaraan akan diserahkan kepada Komisi Etika Senat Akademik Unpad hanya untuk melihat apakah terjadi pelanggaran akademis atau tidak,\" jelasnya.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; font-family: Helvetica, Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; background-color: #ffffff;\">\"Unpad tidak akan mencampuri urusan pribadi keluarga yang bersangkutan, \"pungkasnya.</p>', 'set', '2021-04-08 01:52:29'),
(11, 'Berita Terpopuler Metro: Sekolah Tatap Muka, Prof Muradi, dan Rizieq Shihab', 'Tempo', '2021-04-08', 'cnn2.jpeg', '<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; vertical-align: baseline; letter-spacing: 0.01em; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #666666;\">TEMPO.CO</span>,&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; vertical-align: baseline; letter-spacing: 0.01em; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #666666;\">Jakarta</span>&nbsp;- Berita terpopuler pagi ini, Rabu, 7 April 2021 cukup beragam. Mulai dari uji coba&nbsp;<a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: #00b0ff;\" href=\"https://www.tempo.co/tag/sekolah-tatap-muka\">sekolah tatap muka</a>, guru besar yang menyangkal pengakuan ia ayah seorang bayi, hingga putusan sela untuk eks pemimpin Front Pembela Islam, Rizieq Shihab.</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">Berikut adalah tiga berita yang paling banyak dibaca dari kanal Metro:&nbsp;</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">1.<a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: #00b0ff;\" href=\"https://www.tempo.co/tag/epidemiolog\">Epidemiolog&nbsp;</a>dari Universitas Indonesia Tri Yunis Miko Wahyono&nbsp;menyebut uji coba sekolah tatap muka di Jakarta&nbsp;mulai hari ini terlalu terburu-buru. Menurut dia, kondisi di Ibu Kota belum ideal untuk menerapkan sekolah tatap muka.</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">Baca:&nbsp;<a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: #00b0ff;\" href=\"https://metro.tempo.co/read/1449882/sekolah-tatap-muka-dimulai-hari-ini-wagub-dki-kalau-berhasil-kami-perluas\">Sekolah Tatap Muka Dimulai Hari Ini, Wagub DKI: Kalau Berhasil, Kami Perluas</a></p>\r\n<div id=\"inarticle\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px;\"></div>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\"><a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: #00b0ff;\" href=\"https://metro.tempo.co/read/1449697/kpk-tata-kelola-pemerintahan-dki-jakarta-turun\">Pemerintah DKI&nbsp;</a>Jakarta seharusnya melakukan audit mendalam untuk meminimalisir risiko sekolah tatap muka di masa pandemi Covid-19.&nbsp;Selain itu tidak ada alasan mendesak untuk memberlakukan sekolah tatap muka dalam kondisi saat ini.</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">&ldquo;Menguji coba kok orang dengan penyakit,&rdquo; kata dia lewat sambungan telepon pada Selasa, 6 April 2021.&nbsp;</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">Tri mengatakan, saat ini wabah Covid-19 masih berstatus pandemi. Idealnya, sekolah tatap muka baru dapat diberlakukan saat status Covid-19 sudah turun menjadi endemi. Terlebih&nbsp;positivity rate atau persentase hasil tes&nbsp;positif&nbsp;Covid-19 di DKI Jakarta masih di atas 5 persen. Kemarin, Senin, 5 April 202,&nbsp;<a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: #00b0ff;\" href=\"https://www.tempo.co/tag/positivity-rate\">positivity rate</a>&nbsp;di Ibu Kota tercatat 9,9 persen.&nbsp;&nbsp;</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">Saat ini belum seluruh tenaga kependidikan menerima vaksin Covid-19. Hal itu meningkatkan risiko penularan virus manakala sekolah tatap muka diberlakukan. &ldquo;Muridnya apa lagi. Dan sampai Juni atau Juli nanti pada saat masuk pun muridnya belum divaksinasi. Tapi paling tidak bulan Juni gurunya sudah divaksinasi. Seharusnya uji cobanya pada saat itu,&rdquo; ucap Tri.&nbsp;</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">2. Guru Besar FISIP Universitas Padjajaran Bandung Muradi&nbsp;membantah tudingan&nbsp;<a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: #00b0ff;\" href=\"https://www.tempo.co/tag/penelantaran-anak\">penelantaran anak</a>&nbsp;oleh Era Setyowati, runner&nbsp;up&nbsp;Putri Pariwisata Internasional 2019. Bantahan itu disampaikan dalam keterangan yang&nbsp;disampaikan kuasa hukum Muradi, Jaja Ahmad Jayus, Selasa, 6 April 2021.</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">Klarifikasi disampaikan Jaja&nbsp;setelah&nbsp;Era Setyowati didampingi kuasa hukumnya, Razman Arif Nasution mendatangi kantor Komisi Perlindungan Anak Indonesia atau&nbsp;<a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: #00b0ff;\" href=\"https://www.tempo.co/tag/kpai\">KPAI</a>&nbsp;pada Senin kemarin. Era melaporkan tindak penelantaran anak yang diduga dilakukan suami sirinya, Prof M.</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">\"Prof Muradi menyatakan keberatan karena merasa anak itu bukanlah anaknya.\" Jaja menyampaikan dalam keterangan tertulisnya, Selasa, 6 April 2021.</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">Jaja menuturkan pernyataan bahwa kliennya datang ke kantor Razman&nbsp;untuk memberikan uang sebagai bentuk pengakuan sebagai&nbsp;ayah&nbsp;anak&nbsp;itu adalah tidak benar. Fakta yang sebenarnya kata dia, Muradi ke kantor Razman atas undangan kuasa hukum Era Setyowati.&nbsp;</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">Menurut Jaja, dalam pertemuan itu Razman meminta uang Rp 1 Miliar, dengan dalih biaya hidup anak yang dilahirkan Era, hasil hubungan dengan Muradi. Kliennya menolak permintaan itu.</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">3. Majelis hakim Pengadilan Negeri Jakarta Timur yang dipimpin Suparman Nyompa tidak dapat menerima keberatan atau eksepsi&nbsp;<a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: #00b0ff;\" href=\"https://www.tempo.co/tag/rizieq-shihab\">Rizieq&nbsp;</a><a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: #00b0ff;\" href=\"https://www.tempo.co/tag/rizieq-shihab\">Shihab</a>&nbsp;dalam perkara kerumunan di Petamburan, Jakarta Pusat. Dakwan jaksa penuntut umum dinilai telah sesuai dengan Pasal 143 Kitab Undang-undang Hukum Acara Pidana atau KUHAP.</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">\"Keberatan atau eksepsi terdakwa dan penasihat hukum terdakwa dinyatakan tidak dapat diterima,\" kata Suparman membacakan putusan sela, Selasa, 6 April 2021.</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">Tidak dapat menerima&nbsp;<a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: #00b0ff;\" href=\"https://www.tempo.co/tag/eksepsi\">eksepsi</a>, majelis hakim memerintahkan agar sidang materi pokok perkara dilanjutkan. Jaksa diperintahkan untuk menghadirkan saksi-saksi dan barang bukti dalam persidangan selanjutnya.</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">Berita terpopuler tentang&nbsp;<a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: #00b0ff;\" href=\"https://metro.tempo.co/read/1449879/uji-coba-pembelajaran-tatap-muka-dinas-pendidikan-siapkan-program-asesmen\">sekolah tatap muka&nbsp;</a>hingga putusan sela Rizieq, bisa dibaca&nbsp;<a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: #00b0ff;\" href=\"https://metro.tempo.co/\">di sini</a>.</p>\r\n<p style=\"margin: 1em 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased; color: #333333;\">ADAM PRIREZA | IMAM HAMDI | M YUSUF MANURUNG</p>', 'set', '2021-04-08 01:52:30'),
(12, 'Artis yang Masih Lajang di Usia 50 Tahun dan Berita Terpopuler Lainnya', 'suara.com', '2021-04-08', 'suara.jpeg', '<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 10px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px; color: #333333; background-color: #ffffff;\"><span style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Suara.com -&nbsp;</span>Kabar kawin cerai di dunia hiburan tentu sudah bukan hal yang baru. Tapi di antara itu, ada&nbsp;<a style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: #ce490e; background: 0px 0px; text-decoration-line: none; transition: all 0.3s ease 0s;\" href=\"https://www.suara.com/tag/artis\">artis</a>&nbsp;yang memilih melajang hingga usia 50 tahun. Siapa saja mereka?</p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 10px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px; color: #333333; background-color: #ffffff;\">Sementara itu, kalung yang digunakan Aurel Hermansyah pada saat menikah disebut mirip dengan milik Nagita Slavina. Namun, hal itu justru membuat pusing netizen. Dua kabar tadi merupakan kabar terpopuler di kanal lifestyle Suara.com. Berikut ini&nbsp;<a style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: #ce490e; background: 0px 0px; text-decoration-line: none; transition: all 0.3s ease 0s;\" href=\"https://www.suara.com/tag/berita-terpopuler\">berita terpopuler</a>&nbsp;lainnya.</p>\r\n<div style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: #333333; letter-spacing: 0.5px; background-color: #ffffff;\"><center style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div id=\"div-ad-oop\" class=\"\" style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\" data-ad-type=\"desktop_oop\"></div>\r\n</center></div>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 10px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px; color: #333333; background-color: #ffffff;\"><span style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">1. Single dan Tetap Happy, 5 Artis Ini Masih Betah Melajang di Usia 50-an</span></p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; overflow-wrap: break-word; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; display: block; min-width: 300px; color: #333333; letter-spacing: 0.5px; background-color: #ffffff; margin-top: 0px !important; margin-bottom: 20px !important;\"><img style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: block; max-width: 100%;\" src=\"https://media.suara.com/pictures/653x366/2019/05/08/22541-suti-karno.jpg\" alt=\"Artis Suti Karno berpose saat berkunjung di kantor Redaksi Suara.com, Jakarta, Rabu (8/5). [Suara.com/Muhaimin A Untung]\" />\r\n<figcaption style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 7px 10px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11px; line-height: 14px; font-family: inherit; vertical-align: baseline; background-color: #eeeeee;\">Artis Suti Karno berpose saat berkunjung di kantor Redaksi Suara.com, Jakarta, Rabu (8/5). [Suara.com/Muhaimin A Untung]</figcaption>\r\n</figure>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 10px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px; color: #333333; background-color: #ffffff;\">Di saat banyak pesohor yang mantap menikah di usia muda, sederet artis ini justru mengambil keputusan sebaliknya. Mereka masih betah melajang sampai usia lebih dari 50 tahunan.</p>\r\n<p class=\"baca-juga-new\" style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 10px; padding: 12px; border: 1px solid #ebebeb; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; background: #f6f6f6; border-radius: 10px; letter-spacing: 0.5px; color: #333333;\"><span style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: inherit; vertical-align: baseline; display: block;\">Baca Juga:</span><a style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: inherit; vertical-align: baseline; color: #000000; background: 0px 0px; text-decoration-line: none; transition: all 0.3s ease 0s;\" href=\"https://www.suara.com/bola/2021/04/02/150712/artis-hingga-anak-presiden-lirik-sepak-bola-lib-kompetisi-semakin-marak\" rel=\"\">Artis hingga Anak Presiden Lirik Sepak Bola, LIB: Kompetisi Semakin Marak</a></p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 10px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px; color: #333333; background-color: #ffffff;\">Siapa saja artis yang masih enjoy dan bahagia menjalani hidup meski belum mendapatkan pendamping? Merangkum dari berbagai sumber, berikut ini artis yang masih betah melajang di usia yang sudah menyentuh kepala lima.</p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 10px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px; color: #333333; background-color: #ffffff;\"><a style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: #ce490e; background: 0px 0px; text-decoration-line: none; transition: all 0.3s ease 0s;\" href=\"https://www.suara.com/lifestyle/2021/04/05/070500/single-dan-tetap-happy-5-artis-ini-masih-betah-melajang-di-usia-50-an\" target=\"_blank\" rel=\"noopener\">Baca selengkapnya</a></p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 10px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px; color: #333333; background-color: #ffffff;\"><span style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">2. Kalung Nikahan Aurel Mirip Punya Nagita, Warganet Pusing Bayangkan Harganya</span></p>\r\n<div style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: #333333; letter-spacing: 0.5px; background-color: #ffffff;\"><center style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div id=\"div-ad-read_body_1\" class=\"widget-ads3\" style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 16px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\" data-ad-type=\"desktop_read_body_1\"></div>\r\n</center></div>\r\n<figure class=\"image\" style=\"box-sizing: border-box; overflow-wrap: break-word; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; display: block; min-width: 300px; color: #333333; letter-spacing: 0.5px; background-color: #ffffff; margin-top: 0px !important; margin-bottom: 20px !important;\"><img style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: block; max-width: 100%;\" src=\"https://media.suara.com/pictures/653x366/2021/04/05/95666-nagita-slavina-di-nikahan-aurel-hermansyah-dan-atta-halilintar-instagramatraffinagita1717.jpg\" alt=\"Nagita Slavina di Nikahan Aurel Hermansyah dan Atta Halilintar. (Instagram/@raffinagita1717)\" />\r\n<figcaption style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px; padding: 7px 10px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11px; line-height: 14px; font-family: inherit; vertical-align: baseline; background-color: #eeeeee;\">Nagita Slavina di Nikahan Aurel Hermansyah dan Atta Halilintar. (Instagram/@raffinagita1717)</figcaption>\r\n</figure>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 10px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px; color: #333333; background-color: #ffffff;\">Serba-serbi seputar pernikahan Aurel Hermansyah dan Atta Halilintar masih menjadi bahasan sampai Senin (5/4/2021) ini. Padahal, pernikahan keduanya sudah digelar pada Sabtu (3/4/2021) akhir pekan kemarin.</p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 10px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px; color: #333333; background-color: #ffffff;\">Terbaru, pengguna TikTok dibuat salah fokus dengan bahasan tentang kalung yang dipakai Aurel. Musisi cantik itu terlihat mengenakan kalung berlian mewah dengan bentuk yang sederhana.</p>', 'set', '2021-04-08 01:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_histories`
--

CREATE TABLE `password_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_histories`
--

INSERT INTO `password_histories` (`id`, `model_type`, `model_id`, `password`, `created_at`, `updated_at`) VALUES
(1, 'App\\Domains\\Auth\\Models\\User', 1, '$2y$10$xvI085/Gb8zdG2Ozpbjxmea.Yy4vBnSYHyrPqBIeaQMx7EFJuYq76', '2020-11-03 20:12:18', '2020-11-03 20:12:18'),
(2, 'App\\Domains\\Auth\\Models\\User', 2, '$2y$10$lglvm9IEl763/bbyiPW.E.D8e3rlFHLsBxUvlnmMuJKSBKiv5GtWy', '2020-11-03 20:12:18', '2020-11-03 20:12:18'),
(3, 'App\\Domains\\Auth\\Models\\User', 3, '$2y$10$WksPIh/WLmcUWf01HjK67Oo4jMXcwIMTRgJ9JAQCsESNHy5eZx/W.', '2020-11-04 11:43:56', '2020-11-04 11:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `type`, `guard_name`, `name`, `description`, `parent_id`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', 'admin.access.user', 'All User Permissions', NULL, 1, '2020-11-03 20:12:18', '2020-11-03 20:12:18'),
(2, 'admin', 'web', 'admin.access.user.list', 'View Users', 1, 1, '2020-11-03 20:12:18', '2020-11-03 20:12:18'),
(3, 'admin', 'web', 'admin.access.user.deactivate', 'Deactivate Users', 1, 2, '2020-11-03 20:12:18', '2020-11-03 20:12:18'),
(4, 'admin', 'web', 'admin.access.user.reactivate', 'Reactivate Users', 1, 3, '2020-11-03 20:12:18', '2020-11-03 20:12:18'),
(5, 'admin', 'web', 'admin.access.user.clear-session', 'Clear User Sessions', 1, 4, '2020-11-03 20:12:18', '2020-11-03 20:12:18'),
(6, 'admin', 'web', 'admin.access.user.impersonate', 'Impersonate Users', 1, 5, '2020-11-03 20:12:18', '2020-11-03 20:12:18'),
(7, 'admin', 'web', 'admin.access.user.change-password', 'Change User Passwords', 1, 6, '2020-11-03 20:12:18', '2020-11-03 20:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullName` varchar(159) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `section`, `brand`, `layout`, `name`, `abbreviation`, `fullName`, `desc`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Products', 'Flow', 'KEM', 'full', 'Coriolis Mass Flow Meter', NULL, NULL, '<p>When you combine decades of experience with truly unique talents, great things can happen. TRICOR&reg; Coriolis Technology engineers have been intimately involved with the development and evolution of Coriolis flow instrumentation since the beginning. In fact, many of the critical patents for Coriolis technology bear our engineers&rsquo; names.<br />\r\nTRICOR&reg; Coriolis Technology products were designed and engineered in the Germany the United States and Switzerland. Our state-of-the-art manufacturing facility in Germany is equipped with superior calibration and test equipment that guarantees performance making us a leading Coriolis flow meters manufacturer that exceeds customer expectations.<br />\r\nCoriolis mass flow meters (TCM) is suitable for all kinds of liquids, It is particularly well suited for flow measurements of paints, chemicals, fuels and syntetic resign components<br />\r\n<br />\r\n<strong>Our advantages</strong></p>\r\n\r\n<ul>\r\n	<li>Fast delivery time</li>\r\n	<li>Net oil software available</li>\r\n	<li>Real time density measurement for well performance testing</li>\r\n	<li>High pressure designs available</li>\r\n	<li>Exceptional mechanical design resists interference from external vibration</li>\r\n	<li>Special calibrations for oil viscosity up to 100 mm2/s</li>\r\n	<li>Highly resistant to corrosion and abrasion</li>\r\n	<li>Integrated pressure compensation available</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/kem/coriolis1.png', NULL, '2020-12-08 05:53:47', '2020-12-08 05:53:47'),
(2, 'Products', 'Flow', 'KEM', 'full', 'Turbine Flow Meter', NULL, NULL, '<p>Gear Flow meters (ZHM) are positive displacement meters. Two precise gears rotate freely inside the measuring chamber. These meters are suitable for accurate measurement of different liquids with viscosities of approximately 1 to 25,000 mm2/s.</p>', 'https://dev.lasindo.com//storage/files/3/products/kem/turbine-flow.png', NULL, '2020-12-08 05:54:32', '2020-12-08 10:01:06'),
(3, 'Products', 'Flow', 'KEM', 'full', 'Helical Flow Meter', NULL, NULL, '<p>Turbine Flow Meters (HM) are volume counters according to the wollman impeller counter principle. They capture the volume flowing through a pipe cross section by means of the average flow rate. The KEM turbine feature short response time between 5 &amp; 50 ms depending the nominal width, which is an advantageous for precise filling process. Turbine flow meters have a resolution up to 100,000 pulses per litre. KEM turbine flow meters have no welding seams or solder points in contact media.</p>', 'https://dev.lasindo.com//storage/files/3/products/kem/helical-flow.png', NULL, '2020-12-08 05:57:54', '2020-12-08 05:57:54'),
(4, 'Products', 'Flow', 'KEM', 'full', 'Coriolis Flow Meter', NULL, NULL, '<p>Helical flow meters (SRZ) are positive displacement meters with two cycloidal spindels with geometrically overlapping profiles. These profiles mesh in a cyndrical housing. This creates measuring chambers between the spindle profiles and housing walls.<br />\r\nDue to the design helical flow meters are ideal for measuring ranges, high accuracy and resolution along with low pressure loss, they are extremely well suited for lamination, painting, gluing &amp; PUR system as well as dosing system for various media</p>', 'https://dev.lasindo.com//storage/files/3/products/kem/coriolis2.png', NULL, '2020-12-08 05:58:22', '2020-12-08 05:58:22'),
(5, 'Products', 'Flow', 'KEM', 'full', 'Micro Flow Meter', NULL, NULL, '<p>Micro-flow meters (LFM) are based on a double ring piston pendulum. A pendulum movement of the two interconnected ring pistons is caused by the flowing liquid. The LFM is a flow meter for low viscosity liquids of all kinds used in dosing and filling operations. It can be used for extremelylow flow rates from 0.005 l/m with high resolution</p>', 'https://dev.lasindo.com//storage/files/3/products/kem/micro-flow.png', NULL, '2020-12-08 05:58:47', '2020-12-08 05:58:47'),
(6, 'Products', 'Flow', 'SAGE', 'full', 'SAGE 200™ FLOW METERS', NULL, NULL, '<p>Sage 200 thermal flow meters are a cost-effective alternative to the Sage Prime which offers the same level of performance. The 200 is manufactured to accommodate our International customers. The flow meter measures gas mass flow and has the same accuracy, repeatability, low-end sensitivity, response time, turndown and resolution as the Prime without some premium features.</p>', 'https://dev.lasindo.com//storage/files/3/products/sage/200-flow.png', NULL, '2020-12-08 06:39:47', '2020-12-08 06:39:47'),
(7, 'Products', 'Flow', 'SAGE', 'full', 'SAGE PARAMOUNT INDUSTRIAL MASS FLOW METER', NULL, NULL, '<p>The Sage Paramount&trade; is our newest industrial thermal mass flow meter which includes state-of-the-art components, a NEMA 4X enclosure, a fast response to rapid temperature fluctuations, and a well-thought-out terminal arrangement with a 3-way switch for externally, internally or isolating the 4&ndash;20 mA. All Paramount orders include the free SageCom&trade; software, which provides the ability to reconfigure your meter settings (including changing the gas mix) and to run three performance validation checks followed by a printed report. The software also includes data logging and a 4&ndash;20 mA loop check.</p>', 'https://dev.lasindo.com//storage/files/3/products/sage/paramount.png', NULL, '2020-12-08 06:40:48', '2020-12-08 06:40:48'),
(8, 'Engineering & Solution', 'Fuel Gas System', 'Forain Asia-Pacific Pte Ltd', 'sidebyside', 'Indirect Gas Heater', NULL, NULL, '<ul>\r\n	<li>Gas heating at City Gas Offtake from main gas pipelines</li>\r\n	<li>Gas heating in gathering lines to prevent stoppage due to freezing</li>\r\n	<li>High pressure gas and/or oil heating in oilfield production</li>\r\n	<li>Cryogenic Liquid Vaporizer</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/forain/indirect-gas.png', NULL, '2020-12-10 10:26:26', '2020-12-10 10:26:26'),
(9, 'Engineering & Solution', 'Fuel Gas System', 'Forain Asia-Pacific Pte Ltd', 'sidebyside', 'Direct Gas Heater - Electric Heaters', NULL, NULL, '<p>Our Electric Direct Heaters are equipped with automatic advance safety and control systems.</p>', 'https://dev.lasindo.com//storage/files/3/products/forain/direct-gas.png', NULL, '2020-12-10 10:31:59', '2020-12-10 10:31:59'),
(10, 'Engineering & Solution', 'Fuel Gas System', 'Forain Asia-Pacific Pte Ltd', 'sidebyside', 'Vane Separator', NULL, NULL, '<p>To eliminate liquids or condensations from gas</p>', 'https://dev.lasindo.com//storage/files/3/products/forain/vane-separator.png', NULL, '2020-12-10 10:32:50', '2020-12-10 10:32:50'),
(11, 'Engineering & Solution', 'Fuel Gas System', 'Forain Asia-Pacific Pte Ltd', 'sidebyside', 'Gas Separators - Multitube', NULL, NULL, '<p>Suitable to Dry and Liquid gas impurities</p>', 'https://dev.lasindo.com//storage/files/3/products/forain/gas-separator-multitube.png', NULL, '2020-12-10 10:34:30', '2020-12-10 10:34:30'),
(12, 'Engineering & Solution', 'Fuel Gas System', 'Forain Asia-Pacific Pte Ltd', 'sidebyside', 'Gas Separators - Filter Separators', NULL, NULL, '<p>Solution to remove very fine mists or aerosols from the gas flow. Include the removal of:</p>\r\n\r\n<ul>\r\n	<li>Lubricating oil from process gas</li>\r\n	<li>Entrainments in natural gas lines upstream compressor stations, reducing and metering stations, etc.</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/forain/gas-separator-filter.png', NULL, '2020-12-10 10:35:16', '2020-12-10 10:35:16'),
(13, 'Engineering & Solution', 'Fuel Gas System', 'Forain Asia-Pacific Pte Ltd', 'sidebyside', 'Gas Filters - Dry Gas/ Absolute Filters', NULL, NULL, '<ul>\r\n	<li>For removal of the finest particles</li>\r\n	<li>Serve as final protection</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/forain/gas-filter.png', NULL, '2020-12-10 10:36:22', '2020-12-10 10:36:22'),
(14, 'Engineering & Solution', 'Fuel Gas System', 'Forain Asia-Pacific Pte Ltd', 'sidebyside', 'Fluid and Gas Pig traps (Launcher/Receiver)', NULL, NULL, '<p>Forain design and build Pig Launcher and Receiver up to 72&rdquo; diameter and pressures up to 2,500 rating</p>\r\n\r\n<ul>\r\n	<li>Bidirectional Design</li>\r\n	<li>Suitable for Standard and Intelligent Pig</li>\r\n	<li>Forain&rsquo;s Quick Opening Closure design</li>\r\n	<li>Safety interlock</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/forain/fluid-gas.png', NULL, '2020-12-10 10:37:12', '2020-12-10 10:37:12'),
(15, 'Engineering & Solution', 'Fuel Gas System', 'Forain Asia-Pacific Pte Ltd', 'sidebyside', 'Gas Metering and Analysis System', NULL, NULL, '<p>Forain design and build Custody Metering System using various flow technology of Orifice, USM, Turbine.<br />\r\nInclusive of gas chromatograph and gas physical compensation for Energy Metering.</p>', 'https://dev.lasindo.com//storage/files/3/products/forain/gas-metering.png', NULL, '2020-12-10 10:39:20', '2020-12-10 10:39:20'),
(16, 'Engineering & Solution', 'Fuel Gas System', 'Forain Asia-Pacific Pte Ltd', 'sidebyside', 'Integrated Gas Treatment Packages', NULL, NULL, '<ul>\r\n	<li>Integrated Skid with multiple filtration and separation technology to meet the highest specifications.</li>\r\n	<li>PLC control and high safety instrumentation, valves and interconnecting piping</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/forain/integrated-treatment.png', NULL, '2020-12-10 10:40:06', '2020-12-10 10:40:06'),
(17, 'Engineering & Solution', 'Fuel Gas System', 'Forain Asia-Pacific Pte Ltd', 'sidebyside', 'Booster Compressor Packages', NULL, NULL, '<p>The fuel gas booster maintains a consistent and constant supply of fuel gas at specify discharge pressure.</p>\r\n\r\n<ul>\r\n	<li>To increase the pressure for Gas Transmission and Transportation</li>\r\n	<li>To meet Plant Process and Operation requirement</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/forain/booster.png', NULL, '2020-12-10 10:42:55', '2020-12-10 10:42:55'),
(18, 'Engineering & Solution', 'Fuel Gas System', 'Forain Asia-Pacific Pte Ltd', 'sidebyside', 'Pressure Regulating System', NULL, NULL, '<p>Forain design and build Pressure Regulating System deploying various Slam Shut, Monitor, Active configuration</p>', 'https://dev.lasindo.com//storage/files/3/products/forain/pressure-regulating.png', NULL, '2020-12-10 10:43:31', '2020-12-10 10:43:31'),
(19, 'Engineering & Solution', 'Fuel Gas System', 'Forain Asia-Pacific Pte Ltd', 'sidebyside', 'Integrated Gas Packages', NULL, NULL, '<ul>\r\n	<li>Shut Down, Filtration, Heating, Pressure Regulating and Metering System</li>\r\n	<li>Compact with small footprint design</li>\r\n	<li>PLC integrated control</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/forain/integrated-gas.png', NULL, '2020-12-10 10:44:16', '2020-12-10 10:44:16'),
(20, 'Engineering & Solution', 'Fuel Gas System', 'RMA Fiventures', 'sidebyside', 'Metering for Custody Transfer or Allocation', NULL, NULL, '<p>Metering for Custody Transfer or Allocation</p>\r\n\r\n<ul>\r\n	<li>Flowmeter type:<br />\r\n	Orifice, Turbine, USM, Coriolis</li>\r\n	<li>Analytical Package:<br />\r\n	Hydrocarbon, Moisture, Hydrocarbon Dew<br />\r\n	Point and H2S</li>\r\n	<li>Total Custody / Fiscal uncertainty &plusmn; 0.35%</li>\r\n	<li>Compliance to AGA 3, 7, 9</li>\r\n	<li>For Gas and Cryogenic Application (LNG)</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/rma/metering-custody.png', NULL, '2020-12-10 10:46:21', '2020-12-10 10:46:21'),
(21, 'Engineering & Solution', 'Fuel Gas System', 'RMA Fiventures', 'sidebyside', 'Indirect Heater', NULL, NULL, '<ul>\r\n	<li>Water or Oil Bath Indirect Heating</li>\r\n	<li>Natural draft or Forced draft burner System</li>\r\n	<li>Natural Gas as fuel</li>\r\n	<li>Self Operated, suitable for unmanned Station</li>\r\n	<li>High Combustion Efficiency</li>\r\n	<li>General Purpose and Ex-proof Control System</li>\r\n	<li>Low Maintenance, Safe &amp; Proven System</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/rma/indirect-heater.png', NULL, '2020-12-10 10:47:01', '2020-12-10 10:47:01'),
(22, 'Engineering & Solution', 'Fuel Gas System', 'RMA Fiventures', 'sidebyside', 'Pig Launcher & Receiver', NULL, NULL, '<ul>\r\n	<li>Design Type : Launcher, Receiver, Launcher and Receiver</li>\r\n	<li>Size up to 70&rdquo;, ANSI 2500</li>\r\n	<li>Suitable for Standard or Intelligence Pig</li>\r\n	<li>Built in Safety Device and Interlocking System</li>\r\n	<li>Equipped with Quick Opening Closure, Pig Signaler and instrumentation</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/rma/pig-launcher.png', NULL, '2020-12-10 10:49:48', '2020-12-10 10:49:48'),
(23, 'Engineering & Solution', 'Fuel Gas System', 'RMA Fiventures', 'sidebyside', 'Process Gas Analytical System', NULL, NULL, '<ul>\r\n	<li>General Purpose and Ex-Proof Design</li>\r\n	<li>Measurement technology: GC, Wobbe Index, NDIR, UV, FTIR, FID, TCD and others</li>\r\n	<li>Sample Probe System</li>\r\n	<li>Sampling line System</li>\r\n	<li>System Integration of<br />\r\n	- Analytical Instrument<br />\r\n	- Sample Gas Conditioning System<br />\r\n	- Panel and Cabinet<br />\r\n	- Electrical &amp; Instrumentation<br />\r\n	- Scada System</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/rma/process-gas.png', NULL, '2020-12-10 10:50:46', '2020-12-10 10:50:46'),
(24, 'Engineering & Solution', 'Fuel Gas System', 'RMA Fiventures', 'sidebyside', 'Flow Computing and Metering SCADA System', NULL, NULL, '<ul>\r\n	<li>For all tasks with the same operation philosophy:</li>\r\n	<li>Calibration of the EcoPT sensor</li>\r\n	<li>Local or remote maintenance for System Bus constructions</li>\r\n	<li>Data retrieval of USM with standardized Modbus interface</li>\r\n	<li>Process visualization e.g. of a gas analysis</li>\r\n	<li>Administration of construction documents</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/rma/flow-computing.png', NULL, '2020-12-10 10:51:51', '2020-12-10 10:51:51'),
(25, 'Engineering & Solution', 'Fuel Gas System', 'RMA Fiventures', 'sidebyside', 'Pressure Regulating', NULL, NULL, '<ul>\r\n	<li>Design Configuration - Active, Monitor and Slam Shut</li>\r\n	<li>Self Regulating Pressure Control</li>\r\n	<li>Integrated Pressure &amp; Flow Control</li>\r\n	<li>Remote Control System</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/rma/pressure-regulating.png', NULL, '2020-12-10 10:52:35', '2020-12-10 10:52:35'),
(26, 'Engineering & Solution', 'Fuel Gas System', 'RMA Fiventures', 'sidebyside', 'Filter / Separator', NULL, NULL, '<ul>\r\n	<li>To remove Solid and/or Liquid</li>\r\n	<li>Filtration Technology such as Vane Pack, Cyclone or Filter Cartridge</li>\r\n	<li>Low pressure drop, 0.1 Bar</li>\r\n	<li>High Efficiency</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/rma/filter-separator.png', NULL, '2020-12-10 10:53:15', '2020-12-10 10:53:15'),
(27, 'Engineering & Solution', 'Fuel Gas System', 'RMA Fiventures', 'sidebyside', 'Integrated Filtration, Metering, Pressure Regulating & Direct Heating', NULL, NULL, '<ul>\r\n	<li>Design Type :<br />\r\n	- Metering + Pressure Regulating System (MPRS)<br />\r\n	- Filter + Metering + Pressure Regulating (FMPRS)<br />\r\n	- Filter + Metering + Direct Heater + Pressure Regulating (FMHPRS)</li>\r\n	<li>Compact Design for limited space</li>\r\n	<li>Easy installation</li>\r\n	<li>Optional with weather proof cabinet</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/rma/integrated-filtration.png', NULL, '2020-12-10 10:55:24', '2020-12-10 10:55:24'),
(28, 'Engineering & Solution', 'Fuel Gas System', 'RMA Fiventures', 'sidebyside', 'Booster Gas Compressor', NULL, NULL, '<ul>\r\n	<li>Reciprocating, Screw &amp; Centrifugal Compressor Type</li>\r\n	<li>Powered by Electric Motor, Gas or Diesel Engine</li>\r\n	<li>Lube and Non Lube system</li>\r\n	<li>Gas, Lube Oil &amp; Water Cooling System</li>\r\n	<li>Vibration &amp; Torsional Analysis</li>\r\n	<li>Vibration Monitoring System</li>\r\n	<li>Pulsation Study</li>\r\n	<li>Noise Protection System</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/rma/booster-gas.png', NULL, '2020-12-10 10:56:02', '2020-12-10 10:56:02'),
(29, 'Engineering & Solution', 'Fuel Gas System', 'RMA Fiventures', 'sidebyside', 'Continuous Emission Monitoring System (CEMS)', NULL, NULL, '<ul>\r\n	<li>Compliance to Local &amp; International Environmental Regulations (US EPA 40 CFR 60)</li>\r\n	<li>Sample Probe &amp; Conditioning System designed according to Flue Gas Condition</li>\r\n	<li>Extractive System Design : Cold Dry, Hot Wet and Dilution</li>\r\n	<li>Low Maintenance and Operation Cost</li>\r\n	<li>Pollutants measure: Particulate Matter, CO, CO2, NOx, SOx, H2S, HF, HCL, VOC and others</li>\r\n	<li>CEMS Data Acquisition and Local Regulatory Reporting</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/rma/continuous-emission.png', NULL, '2020-12-10 10:56:41', '2020-12-10 10:56:41'),
(30, 'Engineering & Solution', 'Fuel Gas System', 'RMA Fiventures', 'sidebyside', 'Steam & Water Analytical System (SWAS)', NULL, NULL, '<ul>\r\n	<li>Compact Wet and Dry Rack Design</li>\r\n	<li>Rack or Cabin Design</li>\r\n	<li>Measurement : pH, Conductivity, DO, Silica, Chlorine and other</li>\r\n</ul>\r\n\r\n<p><strong>Turnkey EPCC Contract Scope of Works</strong><br />\r\nSite Construction and Installation Works</p>\r\n\r\n<ul>\r\n	<li>Prime Mover</li>\r\n	<li>Heat Recovery Steam Generator</li>\r\n	<li>Emergency Shutdown System</li>\r\n	<li>Pig Launcher Receiver</li>\r\n	<li>Filter Separator</li>\r\n	<li>Water Bath Heater</li>\r\n	<li>Custody Transfer Metering</li>\r\n	<li>Pressure Regulating</li>\r\n</ul>\r\n\r\n<p>Mechanical &amp; Piping Works</p>\r\n\r\n<ul>\r\n	<li>Above / Underground Piping Work</li>\r\n	<li>CS / SS / PE Piping Works</li>\r\n	<li>Hot Tapping works</li>\r\n	<li>Gas Venting System</li>\r\n	<li>Manual and Actuated Valve</li>\r\n</ul>\r\n\r\n<p>Electrical Works</p>\r\n\r\n<ul>\r\n	<li>Power Supply</li>\r\n	<li>Uninterrupted Power Supply</li>\r\n	<li>Lightning Protection</li>\r\n	<li>Earthling Protection</li>\r\n</ul>\r\n\r\n<p>Instrumentation &amp; Control Works</p>\r\n\r\n<ul>\r\n	<li>Measurement &amp; Control Instrumentation</li>\r\n	<li>Wiring &amp; Termination</li>\r\n	<li>Tubing &amp; Fitting</li>\r\n	<li>Control Panel</li>\r\n	<li>Remote Terminal Unit</li>\r\n</ul>\r\n\r\n<p>Safety &amp; Security Works</p>\r\n\r\n<ul>\r\n	<li>Gas Detection System</li>\r\n	<li>Fire Fighting</li>\r\n	<li>Security for entire Facility</li>\r\n	<li>Gas Pressure Relief</li>\r\n	<li>Thermal Imaging Camera</li>\r\n	<li>Perimeter Fence Intrusion System</li>\r\n</ul>\r\n\r\n<p>Testing &amp; Commissioning Works</p>\r\n\r\n<ul>\r\n	<li>Factory Acceptance Test</li>\r\n	<li>Strength &amp; Load Test</li>\r\n	<li>Functionality Test</li>\r\n	<li>Simulation Test</li>\r\n	<li>Calibration Check</li>\r\n	<li>Accuracy Test</li>\r\n	<li>Site Performance Test</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/rma/steam-water.png', NULL, '2020-12-10 10:58:05', '2020-12-27 05:12:25'),
(31, 'Engineering & Solution', 'High Pressure Pump System', 'Haskel', 'full', 'Gas Transfer & Pressurization', NULL, NULL, '<p><strong>Comprehensive Gas Transfer and Pressurization solutions for pressure testing and more.</strong><br />\r\n<br />\r\nHaskel has a comprehensive systems capability and proven reputation for designing, qualifying and delivering high-pressure Gas Transfer and Pressurization solutions for some of the world&rsquo;s most demanding applications.</p>', 'https://dev.lasindo.com//storage/files/3/products/haskel-ens/gas-transfer.png', NULL, '2020-12-16 02:18:13', '2020-12-16 02:18:13'),
(32, 'Engineering & Solution', 'High Pressure Pump System', 'Haskel', 'full', 'Liquid Transfer & Pressurization', NULL, NULL, '<p><strong>High-Pressure Expertise in Liquid Transfer and Pressurization for pressure testing and more.</strong><br />\r\n<br />\r\nHaskel has the high-pressure expertise, innovation and diverse technical skills to design fully integrated Liquid Transfer and Pressurization systems for a wide range of complex applications.</p>', 'https://dev.lasindo.com//storage/files/3/products/haskel-ens/liquid-transfer.png', NULL, '2020-12-16 02:18:51', '2020-12-16 02:18:51'),
(33, 'Engineering & Solution', 'High Pressure Pump System', 'Haskel', 'full', 'Liquefied Gas Transfer & Pressurization', NULL, NULL, '<p><strong>Efficient recovery or transfer of refrigerants and liquefied gases</strong><br />\r\n<br />\r\nWith field-proven dependability in applications around the globe, Haskel provides dependable liquefied gas transfer, recovery, and pressurization solutions. Our pumps and transfer systems are compact, lightweight and portable, and ideal for use on-site for reclaiming product from process units or recharging the process units.<br />\r\nFor use with:</p>\r\n\r\n<ul>\r\n	<li>LPG</li>\r\n	<li>Refrigerants</li>\r\n	<li>SF6</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/haskel-ens/liquified.png', NULL, '2020-12-16 02:19:31', '2020-12-16 02:19:31'),
(34, 'Engineering & Solution', 'Engineered Fall Protection System', 'MSA', 'sidebyside', 'Latchways® Horizontal Lifeline Systems', NULL, NULL, '<p>MSA&#39;s range of Latchways&reg; Engineered Horizontal Lifeline Systems, incorporating the patented Constant Force&reg; Post, can be deployed across virtually all the major roof types including standing-seam, composite, built-up-on-site, secret-fix and membrane. Fixing the Constant Force Post does not damage the integrity of the roof and therefore will not compromise the roof guarantee.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-ens/latchways-horizontal.png', NULL, '2020-12-16 02:34:38', '2020-12-27 05:20:23'),
(35, 'Engineering & Solution', 'Engineered Fall Protection System', 'MSA', 'sidebyside', 'Latchways WinGrip® Vacuum Anchor', NULL, NULL, '<p>The Latchways WinGrip is a vacuum anchor fall protection system for use in aircraft manufacturing and maintenance, as well as a variety of other environments and industrial applications.<br />\r\nWinGrip is safe and flexible, it can be used on the fuselage, stabilisers and wings; the system is quick to install, simple to use and is suitable for work inside the hangar and outside on the apron.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-ens/latchways-wingrip.png', NULL, '2020-12-16 02:35:46', '2020-12-16 02:35:46'),
(36, 'Engineering & Solution', 'Engineered Fall Protection System', 'MSA', 'sidebyside', 'Latchways® Vertical Lifeline Systems', NULL, NULL, '<p>MSA&#39;s range of Latchways&reg; Engineered Vertical Lifeline Systems for ladders provide outstanding personal safety for individuals working on any type of fixed tower ladder, industrial ladder. Applications include cranes and silos.<br />\r\nMSA&#39;s Latchways Engineered Vertical Lifeline Systems for towers, have the inherent flexibility to be configured for use on virtually any design of power transmission tower.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-ens/latchways-vertical2.png', NULL, '2020-12-16 02:36:24', '2020-12-16 02:36:24'),
(37, 'Engineering & Solution', 'Engineered Fall Protection System', 'MSA', 'sidebyside', 'PushLock® Window Washing Anchor', NULL, NULL, '<p><strong>Discreet window washing anchorage with aesthetic appeal.</strong><br />\r\nThe MSA PushLock&reg; anchorage for window-washing is typically used where access from inside a building is needed to carry out external work, such as for window cleaning and maintenance. The PushLock&reg; provides an internal fixed anchor to which a worker can confidently attach a safety harness and lanyard while going about his or her duties.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-ens/pushlock-window.png', NULL, '2020-12-16 02:37:21', '2020-12-16 02:37:21'),
(38, 'Engineering & Solution', 'Engineered Fall Protection System', 'MSA', 'sidebyside', 'Latchways® Vertical Ladder Lifeline Kits', NULL, NULL, '<p>Latchways Vertical Ladder Lifeline Kits allow for hands-free movement up and down the entire height of the fixed ladder, eliminating the need to disconnect and find new tie-off points while ascending or descending the ladder. These vertical ladder lifeline kits come in multiple lengths for different ladder heights and must be used in conjunction with the Latchways LadderLatch&trade; climbing device (sold separately).</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-ens/latchways-vertical.png', NULL, '2020-12-16 02:38:11', '2020-12-16 02:38:11'),
(39, 'Engineering & Solution', 'Engineered Fall Protection System', 'MSA', 'sidebyside', 'VersiRail® Guardrail Systems', NULL, NULL, '<p>The MSA range of VersiRail&reg; guardrails provide a portable or permanent fall protection system for leading edges. MSA guardrail systems are customizable for added versatility and provide passive fall protection for the user, incorporating the durability and reliability needed to get the job done and are aesthetically pleasing for any building type.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-ens/versirail-guardrail.png', NULL, '2020-12-16 02:38:51', '2020-12-16 02:38:51'),
(40, 'Engineering & Solution', 'Engineered Fall Protection System', 'MSA', 'sidebyside', 'WalkSafe® Roof Walkway System', NULL, NULL, '<p>The MSA WalkSafe&reg;Rooftop Walkway System provides a level non-slip surface which can serve as an ideal rooftop demarcation route &mdash; protecting users against hazards when working at height</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-ens/walksafe-roof.png', NULL, '2020-12-16 02:40:08', '2020-12-16 02:40:08'),
(41, 'Engineering & Solution', 'Engineered Fall Protection System', 'MSA', 'sidebyside', 'Harness Accessories', NULL, NULL, '<p>MSA&#39;s Harness Accessories maximize user comfort and allow customization of harnesses.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-ens/harness-acc.png', NULL, '2020-12-16 02:40:45', '2020-12-16 02:40:45'),
(42, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'ULTIMA® X5000 Gas Monitor', NULL, NULL, '<p>The ULTIMA&reg; X5000 Gas Monitor is the future of gas detection for oxygen, toxic and combustible gases. MSA XCell&reg; gas sensors with TruCal&reg; technology offer calibration cycles up to 18 months (local calibration respected). The gas transmitter&#39;s advanced, multi-lingual OLED display is easy to read and the unique touch-screen interface makes it simple to navigate.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/ultima-x5000.png', NULL, '2020-12-17 03:11:40', '2020-12-17 03:11:40'),
(43, 'Products', 'Fire & Gas Detection', 'Simplex', 'full', 'SIMPLEX 4100 EX FIRE ALARM CONTROL', NULL, NULL, '<p>4100ES addressable fire alarm control panels support up to 2,500 points, fire alarm and emergency voice communication, self-testing notification appliances and IP based networking. With scalable architecture and future-proof design, 4100ES panels are ideal for medium to large facilities and multi-building campus style networks. All Simplex addressable panels rely on True Alarm addressable detectors.<br />\r\n<br />\r\n<strong>HIGLIGHT</strong></p>\r\n\r\n<ul>\r\n	<li>Advanced life-safety platform delivers power, flexibility, and high-speed network connectivity -Simplex led the industry with the 4100U system. Now, with the 4100ES platform, we&rsquo;ve added a suite of technology and service improvements that can make everyone&rsquo;s job easier, from contractors to facility managers and building owners, by improving serviceability, reducing costs and saving time.</li>\r\n	<li>IP networking offers speed and flexibility at every stage - ES Net IP networking technology unlocks powerful benefits for life safety systems. Faster data rates and a wide range of wiring media choices delivers greater efficiency in installation, operation and maintenance. And because IP is a standard, proven technology, as it continues to evolve over time, so will ES Net, making your life safety network more resilient and future-proof.</li>\r\n	<li>True Alert Addressable Appliance and Speaker Compatible - The 4100ES system can directly control Simplex&#39;s revolutionary new True Alert ES addressable notification appliances and speakers.</li>\r\n	<li>Easier installation and upgrades - Projects that require a phased installation can leverage the benefits of Install Mode. While in this mode, the 4100ES will provide a single system trouble alert for points that are programmed in the system but haven&rsquo;t yet been wired&mdash;or are wired but not yet commissioned.</li>\r\n	<li>Secure storage for improved access and compliance - Our Mass Storage Device stores and archives vital data within the panel, such as system software programs, as-built drawings for the fire alarm system, inspection/test reports and other critical site information. No extra cabinets are needed in the control room, and everything is within easy reach. Plus, the Mass Storage Device is supervised so you can be alerted in the event of removal or failure.</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/simplex/4100.png', NULL, '2020-12-17 03:14:46', '2020-12-17 03:14:46'),
(44, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'V-Cone Flow Meter', NULL, NULL, '<p>McCrometer&#39;s V-Cone&reg; Flow Meter is an advanced differential pressure instrument, which is ideal for use with liquid, steam or gas media in rugged conditions where accuracy, low maintenance and cost are important. The V-Cone is especially useful in tight-fit and retrofit installations.<br />\r\n<br />\r\nThe V-Cone is designed for today&rsquo;s most challenging oil / gas production, chemical, food &amp; beverage, plastics, pharmaceuticals, district HVAC, textile, power and water &amp; wastewater applications. The V-Cone is a better solution: see why. It combines exceptional performance, low maintenance and long life for superior value.<br />\r\nMcCrometer&#39;s V-Cone flow meter is an innovative system that takes differential pressure flow measurement to another level. Designed for mild to harsh operating environments, and for a wide variety of fluids, this advanced flow meter consistently outperforms traditional DP devices and other flow technologies. The V-Cone flow meter offers better accuracy and repeatability, wider rangeability, installation flexibility and reduced maintenance.</p>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/vcone-flow.png', NULL, '2020-12-17 06:37:24', '2020-12-17 06:37:24'),
(45, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'VM V-Cone', NULL, NULL, '<p>The VM V-Cone System has an advanced differential pressure flow sensing design. The flow meter features built-in flow conditioning for superior accuracy. The VM V-Cone is the ideal new or retrofit flow meter for multiple clean water and wastewater treatment applications.<br />\r\n<br />\r\nWith its built-in flow conditioning technology, the V-Cone also can be placed in relatively close proximity to elbows, valves, pumps, pipe U&#39;s, etc., where other flow measurement technologies would be impractical or inaccurate.<br />\r\n<br />\r\nVM V-Cone System&#39;s pre-packaged, built-in 3-way valve isolates the transmitter from the process fluid flow for easy maintenance. No need to shut down the pipeline. The flow meter arrives wet-flow calibrated direct from the factory. The ready-to-install VM V-Cone System reduces many headaches of adding a flow meter to most flow installations.</p>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/vm-vcone.png', NULL, '2020-12-17 06:40:00', '2020-12-17 06:40:00'),
(46, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'Wafer Cone', NULL, NULL, '<p>Engineers with small line size processes rely on the versatile Wafer-Cone Flow Meter for superior accuracy and repeatability. The space-saving unit is easy to install. It&rsquo;s ideal for tight-space installations and retrofits. It requires almost no maintenance. The Wafer-Cone further reduces life-cycle costs with a long life.<br />\r\n<br />\r\nThe Wafer-Cone flow meter uses the same revolutionary principles as the V-Cone. Its self-conditioning means little or no upstream or downstream piping runs are required.<br />\r\n<br />\r\nThe Wafer-Cone features a flangeless design. The element is easily replaced to accommodate changing flow conditions. Recalibration is not required. There are no moving parts to maintain. The unit combines exceptional flexibility with high performance. The Wafer-Cone is the perfect low-cost solution to tough flow measurement problems in water &amp; wastewater, chemical, food &amp; beverage, plastics, pharmaceuticals, district HVAC, textile, power and oil / gas productio</p>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/wafer-cone.png', NULL, '2020-12-17 06:41:56', '2020-12-17 06:41:56'),
(47, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'FS100 Flow Straightener', NULL, NULL, '<p>The FS100 Flow Straightener provides breakthrough flow straightening technology that virtually eliminates the upstream / downstream straight pipe runs typically required in existing or new flow meter applications.<br />\r\n<br />\r\nRequiring only 1.5 straight pipe diameters upstream and 0-0.5 downstream, the FS100 Flow Straightener when installed with the McPropeller slashes typical installation piping and labor costs by more than 50 percent, which makes it the right fit in both retrofit and brand new installations.<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Optional electronic digital register available</li>\r\n	<li>Unique magnetic coupling system, isolates register from flow</li>\r\n	<li>Straightening veins to generate optimum flow profiles</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/fs100.png', NULL, '2020-12-17 06:47:09', '2020-12-17 06:47:09'),
(48, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'Flow Connect', NULL, NULL, '<p>FlowConnectTM is a built-in solution for collecting and transmitting flow data from McCrometer&rsquo;s Mc&reg; Propeller and Water Specialties Propeller meters, automating data collection to provide accurate and reliable information for water resource management. FlowConnect features ExactRead&trade; Technology for exact match from meter to website. ExactRead samples the digital register directly for its totalizer value, so the numbers are guaranteed to match.<br />\r\n<br />\r\nOther Benefits Include:<br />\r\nAffordable and reliable remote meter reading with streamlined design, More frequent data for timely water management decisions, Pre-assembled on new meters for simplified installation, Retrofits on existing meters in less than 30 minutes<br />\r\n<br />\r\nFlowConnect supports water management objectives, including: Billing &amp; Accounting, Conservation, Regulations &amp; Allocation, Planning &amp; Development, Operations &amp; Metering</p>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/flowconn.png', NULL, '2020-12-17 06:48:38', '2020-12-17 06:48:38'),
(49, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'Smart Output', NULL, NULL, '<p>Smart Output mag meters from McCrometer are designed with a highly intelligent module in their transmitters that is similar to a communication protocol. This capability allows McCrometer mag meters to transmit data on a schedule or on demand, as well as receive diagnostic queries to ensure or update meter operation. There&rsquo;s no need for technicians to gather flow data manually or check meter status with McCrometer&rsquo;s Smart Output mag meters.<br />\r\n<br />\r\nWith advanced plug-and-play, real-time Smart Output&trade; communications, McCrometer&rsquo;s FPI Mag&reg; Flow Meter, SPI Mag&trade; Flow Meter and Ultra Mag&reg; Flow Meter provide highly effective solutions for automatic meter reading (AMR) and advanced meter infrastructure (AMI) in support of utility smart grids that help conserve valuable water resources, reduce expensive non-revenue water costs, and simplify daily operations and routine maintenance.<br />\r\n<br />\r\nMcCrometer&rsquo;s Smart Output technology is backed by the company&rsquo;s 60-plus years of solving flow measurement problems.</p>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/smartout.png', NULL, '2020-12-17 06:49:39', '2020-12-17 06:49:39'),
(50, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'SPI MAG', NULL, NULL, '<p>Electromagnetic Insertion Meter for Municipal and Industrial Flow Applications<br />\r\n<br />\r\nThe SPI Mag Insertion Flow Meter provides a highly cost-effective solution for the accurate measurement of liquid flow in closed conduit, pressurized pipe applications. Unlike conventional magnetic meters, the SPI Mag&#39;s cost is independent of pipe size.<br />\r\n<br />\r\nVelocity and pipe diameter information are utilized by the SPI Mag to determine flow over wide flow ranges with a high degree of accuracy.<br />\r\n<br />\r\nThe SPI Mag reliably measures flow in water and wastewater as well as any type of industrial flow processes involving conductive fluids such as potable water, slurries, sludge, cooling water, and pulp stock.<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Proven electromagnetic technology based on Faraday&#39;s Law</li>\r\n	<li>Debris shedding, self-cleaning sensor eliminates costly maintenance</li>\r\n	<li>Cost is independent of line size</li>\r\n	<li>Easy Hot Tap Installation - no interruption of flow process</li>\r\n	<li>Nominal pipe size availability</li>\r\n	<li>Reverse flow indication</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/spimag.png', NULL, '2020-12-17 06:53:16', '2020-12-17 06:53:16'),
(51, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'Exact™ Steam', NULL, NULL, '<p>Steam Flow Calculation<br />\r\nThe ExactSteam V-Cone system&rsquo;s innovative design delivers repeatable accuracy of +0.5% of rate with up to a 50:1 flow range under the most difficult flow conditions. Readings are always precise and reliable, even under changing flow situations. With this unique ability to self-condition flow, the ExactSteam V-Cone system virtually eliminates the need for upstream or downstream straight pipe runs. The ExactSteam V-Cone can be installed virtually anywhere in a piping system or easily retrofit into an existing piping layout, resulting in significant installation flexibility and cost savings. In addition, the ExactSteam V-Cone has proven to provide long-term performance.<br />\r\n<br />\r\nStop Questioning Your Steam Measurement.<br />\r\nThe ideal solution for steam flow measurement is McCrometer&rsquo;s ExactSteam V-Cone, a complete flowmeter factory configured for energy metering or mass flow. The ExactSteam V-Cone accurately measures steam across the entire range with technology-leading low flow cut off, and acts as its own flow conditioner by disrupting all centralized flow disturbances.<br />\r\n<br />\r\nWhat types of steam can the ExactSteam V-Cone measure?</p>\r\n\r\n<ul>\r\n	<li>Superheated (Dry)</li>\r\n	<li>Superheated</li>\r\n	<li>Unsaturated (Wet)</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/exact.png', NULL, '2020-12-17 06:53:44', '2020-12-17 06:53:44'),
(52, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'FPI MAG', NULL, NULL, '<p>The FPI Mag is ideal for capital or maintenance projects, retrofits and sites never before metered. The unique combination of accuracy, ease of installation and total cost savings make the FPI Mag the perfect choice for a wide range of Municipal and Industrial Applications. It really is The Next Generation Mag Meter.<br />\r\n<br />\r\nACCURACY:<br />\r\nThe FPI Mag&reg; meets or exceeds exacting industry standards of 0.5% accuracy with 3rd party testing verification. The multi-electrode design and unique operating principle delivers accuracy unmatched by other insertion meters and rivals the performance of full-bore mag meters.<br />\r\n<br />\r\nAMI / AMR Smart Output&trade;<br />\r\nThe FPI Mag is available in battery or solar powered options for forward flow sensors, enabling installation in remote applications without access to power. Additionally, ask us about the new Smart Output feature, which allows the FPI Mag to connect to AMI / AMR systems through an encoded digital output</p>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/fpimag.png', NULL, '2020-12-17 06:57:30', '2020-12-17 06:57:30'),
(53, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'Electromagnetic Flow Meters', NULL, NULL, '<p>Electromagnetic flow meters, also called mag meters or magnetic meters, are volumetric flow meters which do not have any moving parts to wear, reducing the need for maintenance or replacement. Accuracy over a wide flow range can be as good as &plusmn; 0.5% of flow rate or better.<br />\r\n<br />\r\nThey feature an obstruction-free design which eliminates flow impediment, and operate with electrodes embedded on opposite sides of the flow tube or sensor to pick up the signal. Mag meters perform extremely well in many municipal and processing applications, and have become the meter of choice for measuring conductive liquids such as water or slurry.<br />\r\n<br />\r\nElectromagnetic flow meters are typically the meter of choice when measuring a conductive liquid which is water based, such as drinking water or wastewater, especially important when considering cost, accuracy, and longevity. You can be sure McCrometer has an ideal solution for your application</p>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/electromagnet.png', NULL, '2020-12-17 06:59:22', '2020-12-17 06:59:22'),
(54, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'Water Specialties', NULL, NULL, '<p>The Water Specialties Propeller Meter is the best choice for measuring clean water flows in municipal and industrial applications. The meter is engineered to deliver superior performance, low maintenance and unsurpassed durability. Meter materials and performance meet or exceed AWWA standard C704/92.<br />\r\nMeasurement accuracy is &plusmn;2% of reading. The meter accommodates flow ranges from 35 GPM to 200,000 GPM. The Water Specialties Propeller Meter can be installed vertically, horizontally or inclined, with sizes ranging from 2 to 120&quot;.</p>\r\n\r\n<ul>\r\n	<li>Right Angled gear drive</li>\r\n	<li>One piece separation and ceramic bearings</li>\r\n	<li>O-ring sealed gearbox</li>\r\n	<li>Totalizers standard on all meters</li>\r\n	<li>Indicator-totalizer option available</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/waterspecial.png', NULL, '2020-12-17 07:01:04', '2020-12-17 07:01:04'),
(55, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'Calibration Software', NULL, NULL, '<p>Our calibration software help you complete a full gauge calibration, from entering the details of the gauge to printing out a calibration certificate in under 3 minutes.</p>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/calibration-soft.png', NULL, '2020-12-17 07:01:45', '2020-12-17 07:01:45'),
(56, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'Mc Mag3000', NULL, NULL, '<p>Battery Powered Electromagnetic Flow Meter for the Agriculture Market<br />\r\n<br />\r\nThe award-winning Mc Mag3000 provides growers and irrigators with a new alternative for flow measurement. With a guaranteed 5-year battery life, data logging capability and saddle mount design, the Mc Mag3000 delivers the dependability and ease-of-installation McCrometer has provided to the agricultural market for 60 years. The state-of-the-art design of the Mc Mag3000 mag meter features robust construction and an angled sensor that sheds debris, making it ideal for use in surface water, dairy lagoons, and other dirty water applications. The electromagnetic sensor measures in multiple locations to deliver &plusmn; 2% accuracy.<br />\r\n<br />\r\nThe Mc Mag3000 is telemetry-ready for easy connection to McCrometer CONNECT&trade; wireless systems, providing easy access to remote meter data. It is available to fit line sizes from 4 to 12&quot; in diameter.</p>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/mcmag.png', NULL, '2020-12-17 07:03:02', '2020-12-17 07:03:02'),
(57, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'McCrometer CONNECT', NULL, NULL, '<p>Wireless Technology for Today&#39;s Growers<br />\r\nMcCrometer CONNECT&trade; offers the most comprehensive choice in wireless remote monitoring for irrigation and crop management from the convenience of your computer, smart phone or tablet. Complete turnkey solutions for growers and irrigators<br />\r\n<br />\r\nHighest quality local service and support<br />\r\nSelection and Flexibility<br />\r\n<br />\r\nWith McCrometer CONNECT, you have the real-time, industrial-strength crop data and tools you need right at your fingertips. Make timely and effective irrigation and crop management decisions from wherever you are: in the field, on the road or in your office.</p>\r\n\r\n<ul>\r\n	<li>24/7 Connectivity</li>\r\n	<li>Simple. Convenient. Affordable.</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/mcconnect.png', NULL, '2020-12-17 07:03:58', '2020-12-17 07:03:58'),
(58, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'Ultra Mag', NULL, NULL, '<p>Electromagnetic Flanged Flow Meter with Minimal Straight-run Requirements<br />\r\n<br />\r\nThe Ultra Mag is an advanced, leading-edge magmeter that requires only 1D upstream and 0D downstream of most flow disturbers, and still maintains 0.5% accuracy across a large flow range. The field-proven electromagnetic flow meter was designed for the specific needs of the industrial and water &amp; wastewater industries. The mag flow meter&#39;s unique NSF-approved UltraLiner&trade; provides superior electrical insulation as well as excellent protection against corrosion and abrasion.<br />\r\n<br />\r\nThe Ultra Mag magnetic flowmeter sets a new standard for performance, ease-of-use, and value. It is designed specifically for conductive liquids, slurries, and sludge. These mag meters use a non-intrusive measurement element. Debris / solids will not clog the line. The Ultra Mag flow meter is excellent in harsh environments requiring minimal maintenance. These mag flow meters are ideal in water well production, pump stations, industrial / municipal water &amp; wastewater, and more. The UltraMag can be ordered with custom lay lengths to fit space requirements and is available for use with AC power, DC power, battery only, or solar power. Optional end connections include ANSI, DIN, JIS.</p>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/ultramag.png', NULL, '2020-12-17 07:05:08', '2020-12-17 07:05:08'),
(59, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'Dura Mag', NULL, NULL, '<p>The Dura Mag&trade; battery powered electromagnetic flow meter represents McCrometer&#39;s latest innovation in our commitment to advancing solutions for managing water. Whether you&#39;re a district manager looking for a solution for multiple points of water measurement, an irrigator, grower or owner operator looking for just a few points of collecting water data, or a municipal facility looking for a flanged mag meter that is durable and accurate, the Dura Mag is an ideal solution for nearly any water manager. With a five-year battery life (and three-year battery warranty), the Dura Mag eliminates the need for AC power connection, and provides the easiest installation available on the market for a flanged mag flow meter. In addition, the Dura Mag comes equipped with an internal datalogger with 5 years of data storage to ensure you always have access to your historical data. The Dura Mag also has several telemetry-ready output options, and the converter settings are USB port accessible which eliminates accidental setting changes.<br />\r\n<br />\r\nDura Mag is available to fit a common range of line sizes, from 4&rdquo; to 12&rdquo; diameter pipe, and offers accuracy of +/- 1% with only 2D of upstream and 1D of downstream straight pipe required for most installations. To purchase online, see below for the most common Dura Mag options; or contact your local dealer or call the factory if you need additional options such as pulse or 4-20mA output, DC Power (10-32v), or data logger with more frequent interval.</p>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/duramag.png', NULL, '2020-12-17 07:05:52', '2020-12-17 07:05:52');
INSERT INTO `products` (`id`, `category`, `section`, `brand`, `layout`, `name`, `abbreviation`, `fullName`, `desc`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(60, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'Propeller Flow Meters', NULL, NULL, '<p>McCrometer&rsquo;s Mc Propeller flowmeters offer a simple and efficient design. They are easy to install, use and maintain. After over 60 years of installations, it&rsquo;s no wonder these economical workhorses remain the number one choice for so many water management applications.<br />\r\n<br />\r\nThe Mc Propeller uses a flexible drive-train and sealed ball bearings. The unique design makes it easy to service in the field and requires no external power or batteries. Standard features include an instantaneous flow rate indicator and six-digit totalizer. There are no tight tolerances in the Mc Propeller. It handles solids suspended in water without clogging. With its high accuracy, this flow meter is also a water management tool, helping to reduce water costs, preventing over-irrigation and reducing leaching of chemicals and fertilizers into the ground.<br />\r\n<br />\r\nThe Water Specialties Propeller Meter is uniquely designed to meet the flow measurement needs of water and wastewater users. Employed extensively in the water and wastewater industry, it has built a reputation for durability, reliability and high performance.</p>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/propeller.png', NULL, '2020-12-17 07:07:04', '2020-12-17 07:07:04'),
(61, 'Products', 'Flow', 'McCrometer', 'sidebyside', 'McPropeller', NULL, NULL, '<p>Our leading-edge propeller flow meters offer economical and versatile water flow measurement, especially suited to dirty water flows, municipal and other high-volume water applications.<br />\r\n<br />\r\nUnlike traditional types of water meters, the Mc Propeller uses a flexible drive-train and sealed ball bearings. Its unique design makes it easy to service in the field and requires no external power or batteries. Standard features include an instantaneous flow rate indicator and six-digit totalizer. There are no tight tolerances in the Mc Propeller. It handles solids suspended in water without clogging. With its high accuracy, this flow meter is also a water management tool, helping to reduce water costs, preventing over-irrigation and reducing leaching of chemicals and fertilizers into the ground.<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Optional electronic digital register available</li>\r\n	<li>Unique magnetic coupling system, isolates register from flow</li>\r\n	<li>Straightening veins to generate optimum flow profiles</li>\r\n	<li>AWWA approved for cold water use</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/mccrometer/mcprop.png', NULL, '2020-12-17 07:07:52', '2020-12-17 07:07:52'),
(62, 'Products', 'Flow', 'Kings', 'full', 'Focus® 2.0 Optical Gas Flow Meter', NULL, NULL, '<p>An advanced cost effective system for gas velocity and volumetric flow rate measurements independent of pressure, temperature and gas composition. The systems principal technology, Laser-2- Focus Velocimetry, uses laser beams to measure the gas flow by sensing the velocity of microscopic particulates naturally occurring in gas. The Focus 2.0 system consists of flow sensor, an optical flow processor and a heater power supply. The system includes the new user-friendly software with a Wizard mode that enables and easy step-by-step configuration of parameters.<br />\r\nEasily installed and maintained in the field, the system requires only one installation point in the gas line and takes less then 3 hours to install under normal conditions without interrupting site operations or entire system shutdown. The Focus 2.0 is used at accurately measure a wide range of flow rates in a variety if pipe diameters (4&rdquo; &ndash; 36&rdquo; Inches).<br />\r\n<br />\r\n<strong>Applications</strong></p>\r\n\r\n<ul>\r\n	<li>Gas flow measurement for flare and vent gas applications</li>\r\n	<li>Flare monitoring for reducing waste &amp; increasing process efficiency</li>\r\n	<li>Emissions measurement for compliance with environmental regulations</li>\r\n	<li>Bio-gas measurement applications&nbsp;<strong>Features</strong></li>\r\n	<li>Easy to install</li>\r\n	<li>Cost effective</li>\r\n	<li>High turndown ratio of 1500:1</li>\r\n	<li>Compliant with ASME Code Section VII, Division I for CSA</li>\r\n	<li>Windows 10, 64-bit compatible software features easy configuration download-all settings saved appended to data log&nbsp;<strong>Processor Capabilities</strong></li>\r\n	<li>4-20 mA velocity/flow rate output</li>\r\n	<li>4-20mA pressure and temperature inputs</li>\r\n	<li>Frequency pulse outputs</li>\r\n	<li>RS-485 digital communication output with MODBUS RTU</li>\r\n	<li>Window-based OFM Monitor data analyzing and graphing software</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/kings/focus-optical.png', NULL, '2020-12-17 07:11:11', '2020-12-17 07:11:11'),
(63, 'Products', 'Flow', 'Flexim', 'full', 'F601: Liquid Portable Flow Meter (no ex proof)', NULL, NULL, '<p>The FLUXUS F601 is the&nbsp;portable clamp-on flow meter of choice&nbsp;for servicing and maintenance activities, the control and auditing of measurement points not covered by permanent meters, or even the temporary replacement of permanently installed flow meters.<br />\r\n<br />\r\nThe FLUXUS F601 is&nbsp;measurement ready in less than 5 minutes, including the measurement of the pipe wall thickness, the connection of the transducers to the transmitter, the parameterization of the flow meter and finally the mounting of the transducers.<br />\r\n<br />\r\nThough featuring an&nbsp;ergonomic design, which offers simple handling and maximum ease of use, the F601 was designed to easily withstand rough industrial environments. Besides its&nbsp;sturdy housing, the F601 portable flow meter features stable and precise push-pull transducer connectors with the cables themselves being steel armored to prevent breaking or rupturing during daily work.&nbsp;<br />\r\n<br />\r\nWith its Li-Ion battery, the F601 allows for up to&nbsp;14 hours of autonomous measurement. Matched and paired transducers as well as sophisticated algorithms care for the correction of pipe wall echoes and a wrong transducer positioning, thus ensuring&nbsp;reliable and highly accurate measurements&nbsp;- even during the most demanding application conditions. Due to the new&nbsp;HybridTrek mode, the portable flow meter can also reliably and accurately measure the liquid flow under conditions with a high content of solid particles or gaseous loads.<br />\r\n<br />\r\nThe FLUXUS F601 portable clamp-on flow meter is also available in an&nbsp;&quot;Energy&quot;&nbsp;and&nbsp;&quot;Multifunctional&quot;&nbsp;version , allowing the measurement of&nbsp;&nbsp;thermal energy / BTU flows andmaking the flow meter the ideal companion for the analysis or auditing of heating and chiller plants. The collected data can be used to perform a&nbsp;complete energy balance&nbsp;or to assist during process monitoring and optimization.</p>', 'https://dev.lasindo.com//storage/files/3/products/flexim/f601.png', NULL, '2020-12-17 07:17:57', '2020-12-17 07:17:57'),
(64, 'Products', 'Flow', 'Flexim', 'full', 'F608: Liquid Portable Flow Meter (Ex Proof)', NULL, NULL, '<p>No More HOT Work Permits!<br />\r\n<br />\r\nThe&nbsp;FLUXUS F608&nbsp;portable flow meter for liquids is based on the widely used, highly reliable and versatile F601, but has been specifically engineered for its use within hazardous areas and is covered by an&nbsp;ATEX, IECEx and FM certification.<br />\r\nThus, users are not anymore obliged to obtain a Hot Work Permit, making the access toATEX, IECEx and FM Zones&nbsp;much easier and less time consuming.<br />\r\n<br />\r\nOffering a high degree of flexibility, without compromising on Safety!<br />\r\n<br />\r\nThe extremely resistant carbon fiber housing, together with the rugged transducer design, ensures a high impact protection as well as resistance against oil, water and many other liquids. The F608 portable flow meter shares the same&nbsp;efficient battery management&nbsp;as the F601, offering over 14 hrs. of remote measurement time.<br />\r\n<br />\r\nMoreover, the measurement system can be&nbsp;fully set-up in less than five minutes&nbsp;due to the intuitive user guidance and the automatic transducer recognition. Its application range is unrivalled - from pipes as small as&nbsp;6 mm up to 6500 mm inner diameter&nbsp;and temperatures ranging from&nbsp;-40&deg;C to 200&deg;C&nbsp;(with the WaveInjector solution even from -190&deg;C up to 600&deg;C).<br />\r\n<br />\r\nThe F608 goes where other portable devices can&#39;t<br />\r\n<br />\r\nBeing equipped with two flow channels, multiple In- and Outputs and an integrated data logger with a serial interface, the flowmeter is designed for direct usage in demanding environments, such as in the&nbsp;Upstream, Midstream and Downstream area&nbsp;as well as in the chemical and processing industries and the energy sector where its temperature inputs allow for the quantification of thermal energy flow rates..<br />\r\n<br />\r\nAs known from all FLEXIM flow meters, also the F608 portable flow meter features a&nbsp;highly precise bi-directional measurement&nbsp;at fast and even very slow flow rates over a wide dynamic measurement range and is not prone to temperature and zero drift, being fully&nbsp;compliant to ANSI/ASME&nbsp;regulations.<br />\r\n<br />\r\nHowever, the F608 is not only safe, accurate and reliable, but also&nbsp;very compact and lightweight, offering the user to even carry the complete measuring system as&nbsp;personal luggage for Offshore visits.</p>', 'https://dev.lasindo.com//storage/files/3/products/flexim/f608.png', NULL, '2020-12-17 07:18:48', '2020-12-17 07:18:48'),
(65, 'Products', 'Flow', 'Flexim', 'full', 'G601: Gas Portable Flow Meter (No Ex Proof)', NULL, NULL, '<p>Portable flow measurement of gases&nbsp;without compromises<br />\r\n<br />\r\nThe FLUXUS G601 portable gas flow meter measures the flow of virtually any gas using FLEXIM&#39;s proven transit-time&nbsp;correlation technique.<br />\r\n<br />\r\nThe ultrasonic transducers are&nbsp;simply clamped onto the&nbsp;outside of the pipe, thus no&nbsp;cutting&nbsp;into the pipe or process interruption is&nbsp;required for installation.<br />\r\n<br />\r\nThe FLUXUS G601 portable gas flow meter allows for an inherently&nbsp;bi-directional gas flow measurement of operational and standard volume flows. As the transducers are mounted on the outside of the pipe wall, the system does not suffer from wear and tear or clogging, can&#39;t be a risk for leaks and will not cause any pressure drops inside the pipe. It is the ideal tool for servicing and maintenance activities, the control and auditing of measurement points not covered by permanent meters, or even the temporary replacement of permanently installed gas flow meters.<br />\r\n<br />\r\nThough featuring an ergonomic design, which offers&nbsp;simple handling and maximum ease of use, the G601 was designed to easily withstand rough industrial environments. Besides itssturdy housing, the G601 portable gas flow meter features stable and precise push-pull transducer connectors with the cables themselves being steel armored to prevent breaking or rupturing during daily work.<br />\r\n<br />\r\nThe FLUXUS G601 gas flow meter offers maximum flexibility<br />\r\n<br />\r\nWith its Li-Ion battery, the G601 allows for up to 14 hours of autonomous measurement. Due to its matched and paired transducers as well as the internal temperature compensation (compliant to ANSI/ASME) the measurement system is&nbsp;drift free and zero stable&nbsp;ensuring accurate readings. Moreover, as the transducer calibration data is automatically loaded by connecting the transducer to the transmitter, set-up times are reduced and&nbsp;precise, long-term stable results&nbsp;are provided.<br />\r\n<br />\r\nThe portable gas flow meter can be applied at inner&nbsp;pipe diameters ranging from 6 mm up to 2100 mm&nbsp;(no limitations on pipe wall thickness or material) and media temperatures from&nbsp;-40&deg;C up to 100&deg;C. Moreover, the measurement system is independent of the pressure inside the pipe.<br />\r\n<br />\r\nWith two measurement channels, the FLUXUS G601 portable gas flow meter can also be applied to difficult measurement points and is completely&nbsp;unaffected by gas density, viscosity and composition&nbsp;as well as temperature and pressure. Even&nbsp;wet gas&nbsp;up to Liquid Volume Fractions of 5% can be measured.<br />\r\n<br />\r\nAdditionally the&nbsp;G601 can also be used for flow measurement of virtually any liquid media.Fur further information please consult the Technical Specifications of the F601 portable flow meter.</p>', 'https://bitsofco.de/content/images/2018/12/broken-1.png', NULL, '2020-12-17 07:19:26', '2020-12-17 07:19:26'),
(66, 'Products', 'Flow', 'Flexim', 'full', 'G608: Gas Portable Flow Meter (Ex Proof)', NULL, NULL, '<p>No More HOT Work Permits!<br />\r\n<br />\r\nThe&nbsp;FLUXUS G608 portable gas flow meter&nbsp;is based on the widely used, highly reliable and versatile G601, but has been specifically engineered for its use within hazardous areas and is covered by&nbsp;ATEX, IECEx and FM certification.<br />\r\nIt is the ideal solution for&nbsp;gas flow measurement in potentially explosive areas, may it be for a temporary replacement of a stationary flow meter, check metering or service operations. Due to its certification, users are not anymore obliged to obtain a Hot Work Permit, making the access to ATEX, IECEx and FM Zones much easier and less time consuming.<br />\r\n<br />\r\nMoreover, the measurement system can be&nbsp;fully set-up in a few minutes&nbsp;due to the intuitive user guidance and the automatic transducer recognition. Its application range is unrivaled - from pipes as small as&nbsp;6 mm up to 2100 mm inner diameter&nbsp;and temperatures ranging from&nbsp;-40&deg;C to 100&deg;C.<br />\r\n<br />\r\nThe G608 gas flow meter goes where other portable devices can&#39;t<br />\r\nBeing equipped with two flow channels, multiple Inputs and an integrated data logger with a serial interface, the portable gas flow meter is designed for direct usage in demanding environments, such as in the&nbsp;Upstream, Midstream and Downstream area&nbsp;as well as in the chemical and processing industries.<br />\r\n<br />\r\nAs known from all FLEXIM flow meters, also the G608 features a&nbsp;highly precise bi-directional measurement&nbsp;at fast and even very slow gas flow rates over a wide dynamic measurement and pressure range and is not prone to temperature and zero drift, being fully&nbsp;compliant to ANSI/ASME&nbsp;regulations.<br />\r\n<br />\r\nHowever, the G608 is not only safe, accurate and reliable, but also&nbsp;very compact and lightweight, offering the user to even carry the complete measuring system as&nbsp;personal luggage for offshore visits.<br />\r\n<br />\r\nAdditionally the&nbsp;G608 can also be used for flow measurement of virtually any liquid media.Fur further information please consult the Technical Specifications of the F608 portable flow meter.</p>', 'https://dev.lasindo.com//storage/files/3/products/flexim/g608.png', NULL, '2020-12-17 07:20:50', '2020-12-17 07:20:50'),
(67, 'Products', 'Flow', 'Flexim', 'full', 'F721: Liquid Fixed Flow Meter (no ex proof)', NULL, NULL, '<p>The FLUXUS F721 is a technological breakthrough in the ultrasonic clamp-on volume and mass flow measurement of liquids.<br />\r\nWith its new hardware design and improved, powerful digital signal processing it surpasses any other non-intrusive ultrasonic flowmeter in terms of accuracy, reliability and versatility.<br />\r\nHighly sophisticated signal filters, faster than ever processing capacities and substantially improved measurement algorithms make the FLUXUS F721 liquid flow meter a&nbsp;state-of-the-art measuring solution even for the most challenging applications.<br />\r\nThe meter adapts itself automatically to the respective measurement conditions and compensates for disturbances such as beam dispersal and structure-borne noise, allowing for even more precise and reliable measurements. Extreme fast measurement cycles allow for precise real time monitoring of highly dynamic processes.<br />\r\n<br />\r\n<strong>Pushing the Boundaries</strong><br />\r\nThe FLUXUS F721 offers non-intrusive flow measurement of virtually any kind of liquid, from the smallest tubing to the largest penstock, independent of the pressure inside the pipe and over a very large temperature range. Due to its advanced technology, the measurement is unaffected by solid or gaseous entrainments and distinguishes itself by its unrivalled turndown ratio: Even low flows down to only a few liters per hour can be recorded accurately.<br />\r\nAs the flowmeter of choice for a very wide range of applications in virtually any industrial sector, the FLUXUS F721 is available with two different enclosure types: aluminium housing for standard applications and stainless steel housing for operation in highly corrosive environments. Both can be used in explosion hazard areas (ATEX, IECEX Zone 2, FM Class I, Div. 2, EAC TR TS, Inmetro).<br />\r\n<br />\r\n<strong>Ready for Industry 4.0</strong><br />\r\nThe FLUXUS F721 comes with all common communication protocols: HART, Modbus, Foundation Fieldbus, Profibus PA and BACnet allow bidirectional field communication, parameterisation and online diagnostics. Further special configurations guarantee optimal customisation to the individual application. The FLUXUS F721 is also one step ahead in terms of user guidance and diagnostics. It can be easily parameterised via USB. Its ethernet connectivity provides additional bidirectional communication capabilities.<br />\r\nFurther value is added by the meters advanced selfmonitoring capabilities and the possibility of event driven data recording. The flow meter is permanently controlling the quality of the measurement. Such values, but also every other measurement data as well as externally fed in data, e.g. pressure and temperatues, can be chosen to trigger free defined meter functionalities. For instance, in case the quality of the measurement is falling below a predefined value, a temporary recording of high resolution measurement data can automatically be started. Such free configurable event based trigger functionality is not only perfectly suited for measurement diagnostics, but even more for the accurate monitoring of processes and especially the supervision and control of critical operations.</p>', 'https://dev.lasindo.com//storage/files/3/products/flexim/f721.png', NULL, '2020-12-17 07:21:52', '2020-12-17 07:21:52'),
(68, 'Products', 'Flow', 'Flexim', 'full', 'F808: Liquid Fixed Flow Meter (ex proof)', NULL, NULL, '<p>Clamp-on flow meter for hazardous areas IECEX / ATEX Zone 1 approved<br />\r\n<br />\r\nWith the FLUXUS F808, FLEXIM presents a clamp-on flow meter for liquids with&nbsp;&nbsp;IECEx / ATEX Zone 1&nbsp;approval.<br />\r\nFrom wellhead to refinery, the flows of crude oil and refined products need to be measured every step of the way. Harsh environments with corrosive atmospheres offshore or hot and dirty applications during crude oil refining require tough solutions. Also during chemical processing, media such as acids, caustics or highly viscous organic substances place enormous material and mechanical stress upon wetted flow measurement technologies.<br />\r\n<br />\r\nThe highly rugged FLUXUS F808 with its flameproof housing and stainless steel transducers is suited for every industrial application.<br />\r\nWith its connection and electronic compartment being hermetically sealed, the FLUXUS F808 provides for a&nbsp;maximum of operational safety&nbsp;and is especially designed for usage in rough industrial environments such as in&nbsp;Chemical and Petrochemical plants.<br />\r\nIn conjunction with the&nbsp;extremely robust transducers and the&nbsp; VARIOFIX transducer mounting fixture (Stainless Steel SS316 available),&nbsp; which ensures a permanent contact pressure to the pipe wall and an extreme mechanical stability, the FLUXUS F808 is the most reliable ultrasonic clamp-on flow meter available. As the ultrasonic transducers are mounted on the outside of the pipe wall, the&nbsp;system does not suffer from wear, tear or clogging and can&#39;t be a risk for leaks.<br />\r\nBut the FLUXUS F808 is not only rugged &ndash; due to carefully matched and temperature compensated transducers (fully ANSI / ASME MFC 5M compliant) the FLUXUS F808 offers an unmatched zero stability. Highly innovative digital signal processing within the flow meter cares&nbsp;most reliable, repeatable and accurate bidirectional flow measurement over a wide turndown ratio.<br />\r\nThe FLUXUS F808 flow meter can be applied at inner pipe diameters ranging from 6 mm up to 6,5 m and more. Even liquid streams with a high content of solids or gas bubbles are not a problem due to the innovative&nbsp;HybridTrek mode and the unique signal processing&nbsp;implemented into the flow computer.</p>', 'https://dev.lasindo.com//storage/files/3/products/flexim/f808.png', NULL, '2020-12-17 07:22:29', '2020-12-17 07:22:29'),
(69, 'Products', 'Flow', 'Flexim', 'full', 'Fluxus XLF: Liquid Low Flow, Flow Meter (no ex proof)', NULL, NULL, '<p>Do you need to measure really low flows? Turn to FLUXUS XLF<br />\r\n<br />\r\nFLUXUS XLF is FLEXIM&lsquo;s non-invasive metering system for the reproducible and long term reliable measurement of extremely low flow rates down to 3 l/h and below on line sizes ranging from 10 mm to 50 mm independent of the pipe wall thickness. As the flow sensors are mounted externally, there is no process interruption for installation.<br />\r\nMoreover, due their IP66 protection degree, ATEX / IECEx Zone 1 / 2 as well as FM Class I, Div. 1 / 2 approval and being completely made out of stainless steel (316L / 1.4404 grade), the measurement system is highly rugged and withstands even the harshest and most corrosive environmental conditions.<br />\r\n<br />\r\nFLEXIM is the much more cost-effective and safer alternative for measuring extremely low flows of any liquid<br />\r\nThe FLUXUS XLF is applicable on all pipe materials and wall thicknesses as well as independent of operating pressures.<br />\r\nIn comparison to wetted instrumentation, the system does not suffer from mechanical stress or wear and tear by the medium and is thus not only much more cost efficient, but also offers significantely higher operational safety as the risk of leaks can completely be eliminated.<br />\r\nIts high accuracy and repeatability at extremely low flow velocities is achieved by carefully matched and temperature compensated transducers (acc. to ANSI/ASME MFC 5.1-2011), highly sensitive electronics and sophisticated internal signal processing as well as a highly precise and traceable wet flow calibration (according to NIST standards) at FLEXIM&lsquo;s low flow calibration facility.</p>', 'https://dev.lasindo.com//storage/files/3/products/flexim/fluxus-xlf.png', NULL, '2020-12-17 07:23:22', '2020-12-17 07:23:22'),
(70, 'Products', 'Flow', 'Flexim', 'full', 'WD Series: Water Distribution Flow Meter (no ex proof)', NULL, NULL, '<p>The FLUXUS WD Series non-invasive ultrasonic flow meter is the ideal solution for&nbsp;metering points in the drinking water network.<br />\r\n<br />\r\nDue to the use of its clamp-on technology, the WD Series that does not require any work that affects the integrity of the pipe. This enables a&nbsp;very simple and cost-effective installation&nbsp;of flow measurement points within an existing water supply network.<br />\r\nThe FLUXUS WD Series belongs to the most reliable and accurate non-invasive ultrasonic flow metering systems -&nbsp;it even measures flow rates as low as 0.01 m/s.&nbsp;The inaccuracy of other meter technologies, such as magnetive inductive meters, can increase so dramatically in the low flow range, that they are unsuitable for monitoring minimum night flows. But for water suppliers the precise monitoring of minimum night flows is an essential part of their&nbsp;leakage detection&nbsp;activities &ndash; and the WD Series is the ideal tool for this task.<br />\r\nThere is no method of zero drift correction for our instruments &ndash;&nbsp;because they just don&rsquo;t drift. This also applies to the WD Series that is installed without zero calibration and remains drift-free, permanently. FLEXIM is the only company that accomplishes this, thanks to its unique combination of matched piezo-transducers and advanced factory calibration.<br />\r\nFLEXIM supplies the WD Series with the&nbsp;most robust mounting system on the market. The transducers are fixed to the pipe with broad stainless steel straps and secured in robust stainless steel housings. The transducers themselves have IP68 protection and reinforced transducer cables. A further unique feature of FLEXIM is that the transducers are connected with permanent coupling pads, instead of coupling gel that can deteriorate or be washed away. All this ensures the durability of the system and makes it suitable for both&nbsp;installations in chambers and buried installations.<br />\r\nThe WD meter is available with three transducer types and is suitable for&nbsp;inner diameters ranging from 50 ... 6500 mm. The strong signal output and noise suppression technology make it possible to use the WD Series on&nbsp;all pipe materials, even on such challenging ones as fiber-reinforced plastic (FRP) pipes. The outstanding performance of FLEXIM is shown by thousands of references worldwide.</p>', 'https://dev.lasindo.com//storage/files/3/products/flexim/wd-series.png', NULL, '2020-12-17 07:24:28', '2020-12-17 07:24:28'),
(71, 'Products', 'Flow', 'Flexim', 'full', 'FLUXUS Cyro:  Cyrogenic Liquid Flow Meter (no ex proof)', NULL, NULL, '<p>The superior flow meter for LNG and cryogenic fluids<br />\r\n<br />\r\nSince years FLEXIM&rsquo;s unique non-invasive ultrasonic flow meters have been running in various&nbsp;LNG and other cryogenic applications at temperatures down to -200 &deg;C: from 3&rdquo; lines in peak shaving plants to 36&quot; pipes for tanker off-loading to storage tanks.<br />\r\nThe non-invasive ultrasonic flow meters provide the ideal solution for all cases where reliable and trouble-free flow measurement of cryogenic fluids is required.&nbsp;With its huge measurement range FLUXUS Cryo is ideally suited to cover the highest flow rates of loading / off-loading processes as well as very low flow rates at start or stop of operation.<br />\r\nAs the system measures from outside the pipe wall, installation does not require any pipe cutting or extensive pipe works.&nbsp;Further, FLUXUS Cryo is virtually maintenance free, does not cause any pressure drops and can never be the source for potential leaks.<br />\r\nWith its unrivalled accuracy and reliability, FLUXUS Cryo meets all requirements for regular monitoring, control as well as SIS purposes. The implemented diagnostics can be used to detect beginning and end of the cryogenic liquid flows in batch processing.<br />\r\n<br />\r\nFeatures:</p>\r\n\r\n<ul>\r\n	<li>Highly accurate flow measurement of LNG, Liquid Ethane, Liquid Air, Nitrogen and Oxygen without any pressure drops</li>\r\n	<li>Highly reliable:<br />\r\n	- Maintenance-free. No moving or vibrating parts<br />\r\n	- Dual-beam redundant measurements</li>\r\n	<li>Operationally safe:<br />\r\n	- No gaskets, No leakage points</li>\r\n	<li>Economic:<br />\r\n	- No pipework modification necessary<br />\r\n	- One-man-installation without the need for lifting gear<br />\r\n	- No pressure loss - no chance for flashing</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/flexim/fluxus-cyro.png', NULL, '2020-12-17 07:25:02', '2020-12-17 07:25:02'),
(72, 'Products', 'Flow', 'Flexim', 'full', 'PIOX S: Concentration And Mass Flow Meter (no ex proof)', NULL, NULL, '<p>PIOX S is primarily used for the&nbsp;concentration analysis during process control,&nbsp;the dosing of chemicals or for overall quality control. Further applications are the supervision of crystallization or phase separation processes for a proper&nbsp;product identification. Alternatively, density, yield rate, Brix or other customer specific measurement values can be displayed.<br />\r\n<br />\r\nCombining these features with the integrated volumetric flow measurement , the PIOX S system is capable of calculating the (concentration compensated) mass flow rate.&nbsp;<br />\r\n<br />\r\nThe ideal &quot;Outsider&quot;<br />\r\nThe PIOX S measuring system, composed of a transmitter and a pair of clamp-on transducers, precisely determines the sonic velocity of the medium based upon the ultrasonic transit-time measured between the two transducers.The clamp-on transducers are mounted on the outer surface of the pipe. As they are not in contact with the medium, the system is ideally suited for the measurement of&nbsp;chemically aggressive, corrosive, abrasive or ultra-pure media.<br />\r\nPIOX S can be used to determine the concentration of high purity sulfuric acid, hydrofluoric acid, nitric acid or even ammonia gas used in fertilizer plants. Worries about the transducers chemical compatibility, contamination and sealing are a thing of the past.<br />\r\nWith the clamp-on technology, retrofitting of existing installations is very easy and can be done without cutting into the pipe and without any process interruption.<br />\r\nThe non-intrusive acoustical technique is also the method of choice when the materials and processes place high demands on safety and purity. The&nbsp;Ultrasonic measurement is thus also well suited for the food and beverage industry with its high sanitary standards. Here, it is used to measure the alcohol or sugar content in liquids and is a proven method for CIP process optimization.</p>', 'https://dev.lasindo.com//storage/files/3/products/flexim/piox-s.png', NULL, '2020-12-17 07:25:51', '2020-12-17 07:25:51'),
(73, 'Products', 'Flow', 'Flexim', 'full', 'G721: Gas Fixed Flow Meter (no ex proof)', NULL, NULL, '<p>The FLUXUS G721 is a technological breakthrough in the ultrasonic clamp-on volume and mass flow measurement of gases.<br />\r\n<br />\r\nWith its new hardware design and improved, powerful digital signal processing it surpasses any other non-intrusive ultrasonic flowmeter in terms of accuracy, reliability and versatility.<br />\r\nHighly sophisticated signal filters, faster than ever processing capacities and substantially improved measurement algorithms make the FLUXUS G721 gas flow meter a&nbsp;state-of-the-art measuring solution even for the most challenging applications.<br />\r\n<br />\r\nThe meter adapts itself automatically to the respective measurement conditions and compensates for perturbations such as beam dispersal and structure-borne noise, allowing for even more precise and reliable measurements. Extreme fast measurement cycles allow for precise real time monitoring of highly dynamic processes.<br />\r\n<strong>Pushing the Boundaries</strong><br />\r\nThe FLUXUS G721 offers non-intrusive flow measurement of virtually any kind of gaseous media, independent of the pipe size, material and with no upper&nbsp; pressurisation limit. Due to its advanced technology, the measurement is unaffected by gas wetness and distinguishes itself by its unrivalled turndown ratio: Even low flows down to only a few cubic meters per hour can be recorded accurately.<br />\r\nAs the flowmeter of choice for a very wide range of applications in virtually any industrial sector, the FLUXUS G721 is available with two different enclosure types: aluminium housing for standard applications and stainless steel housing for operation in highly corrosive environments. Both can be used in explosion hazard areas (ATEX, IECEX Zone 2, FM Class I, Div. 2, EAC TR TS, Inmetro).<br />\r\n<br />\r\n<strong>Ready for Industry 4.0</strong><br />\r\nThe FLUXUS G721 comes with all common communication protocols: HART, Modbus, Foundation Fieldbus, Profibus PA and BACnet allow bidirectional field communication, parameterisation and online diagnostics. Further special configurations guarantee optimal customisation to the individual application. The FLUXUS G721 is also one step ahead in terms of user guidance and diagnostics. It can be easily parameterised via USB. Its ethernet connectivity provides additional bidirectional communication capabilities.<br />\r\nFurther value is added by the meters advanced selfmonitoring capabilities and the possibility of event driven data recording. The flow meter is permanently controlling the quality of the measurement. Such values, but also every other measurement data as well as externally fed in data, e.g. pressure and temperatues, can be chosen to trigger free defined meter functionalities. For instance, in case the quality of the measurement is falling below a predefined value, a temporary recording of high resolution measurement data can automatically be started. Such free configurable event based trigger functionality is not only perfectly suited for measurement diagnostics, but even more for the accurate monitoring of processes and especially the supervision and control of critical operations.</p>', 'https://dev.lasindo.com//storage/files/3/products/flexim/g721.png', NULL, '2020-12-17 07:26:27', '2020-12-17 07:26:27'),
(74, 'Products', 'Flow', 'Flexim', 'full', 'G809: Gas Fixed Flow Meter (ex proof)', NULL, NULL, '<p>The ultrasonic gas flow meter for operation in hazardous areas<br />\r\n<br />\r\nThe FLUXUS G809 is FLEXIM&#39;s dual channel ultrasonic clamp-on flow meter&nbsp;for bi-directional flow measurement of gases in hazardous areas ( ATEX, IECEx Zone 1 and FM Class I, Div. 1 / 2 approved).<br />\r\nWith its flameproof housing and the corrosion resistant transducers residing inside the rugged VARIOFIX C mounting fixture, ensuring a permanent contact pressure and high mechanical stability, the FLUXUS G809 series is&nbsp;perfectly suited for every demanding industrial application.<br />\r\nThe FLUXUS G809 gas flow meter allows for an&nbsp;inherently bi-directional&nbsp;gas flow measurement of operational and standard volume flows. As the transducers are mounted on the outside of the pipe wall, the system&nbsp;does not suffer from wear and tear&nbsp;or clogging, can&#39;t be a risk for leaks and will not cause any pressure drops inside the pipe.<br />\r\nDue to its matched and paired transducers as well as the internal temperature compensation (compliant to ANSI/ASME) the measurement system is&nbsp;drift free and zero stable&nbsp;ensuring accurate readings. The gas flow meter can be applied at inner pipe&nbsp;diameters ranging from&nbsp;6 mm up to 2100 mm&nbsp;(with no limitations on pipe wall thickness or material) and media temperatures from&nbsp;-40&deg;C up to 100&deg;C.<br />\r\nWith up to two measurement channels, the FLUXUS G809 permanent gas flow meter can also be applied to difficult measurement points and is completely unaffected by gas density, viscosity&nbsp;and composition as well as temperature and pressure.&nbsp; Even&nbsp;wet gas&nbsp;up to Liquid Volume Fractions of 5% can be measured.</p>', 'https://dev.lasindo.com//storage/files/3/products/flexim/g809.png', NULL, '2020-12-17 07:27:06', '2020-12-17 07:27:06'),
(75, 'Products', 'Level', 'Honeywell Enraf', 'full', 'Automatic Tank Gauging', NULL, NULL, '<p>Tank gauging is essential for the assessment of tank contents, tank inventory control and tank farm management. Honeywell&#39;s Enraf&reg; portfolio of high-end radar and servo tank gauges help in accurate level gauging for refineries, tank terminals and petrochemical industries. The tank gauges are suitable for custody transfer as well as inventory control.</p>', 'https://dev.lasindo.com//storage/files/3/products/honeywell/auto-tank2.png', NULL, '2020-12-17 07:37:14', '2020-12-17 07:37:14'),
(76, 'Products', 'Level', 'Honeywell Enraf', 'full', 'Servo Gauge', NULL, NULL, '<p>Honeywell introduced automatic servo level gauging technology in the 1950s, and soon after introduced the first automatic level gauge for bulk liquid storage tanks.<br />\r\nThe current servo level gauging technology from Honeywell&#39;s portfolio of tank gauges includes the Advanced Tank Gauge (ATG), the Xmitting Tank Gauge (XTG) and the new one SmartServo.</p>', 'https://dev.lasindo.com//storage/files/3/products/honeywell/servo-gauge.png', NULL, '2020-12-17 07:37:37', '2020-12-17 07:37:37'),
(77, 'Products', 'Level', 'Honeywell Enraf', 'full', 'Smartradar Flexline', NULL, NULL, '<p>SmartRadar FlexLine suitable for highly accurate level measurement on large bulk storage tanks. SmartRadar FlexLine combines new software algorithms with Honeywell Enraf&rsquo;s planar antenna technology to provide precision levels demanded for custody transfer accuracy.</p>', 'https://dev.lasindo.com//storage/files/3/products/honeywell/smart-radar.png', NULL, '2020-12-17 07:38:12', '2020-12-17 07:38:12'),
(78, 'Products', 'Level', 'Honeywell Enraf', 'full', 'CIU 888', NULL, NULL, '<p>Honeywell&rsquo;s new communication interface, CIU 888, ensures the availability of accurate and reliable tank measurement and calculated inventory data to drive safety and efficiency in every tank farm application.</p>', 'https://dev.lasindo.com//storage/files/3/products/honeywell/ciu-888.png', NULL, '2020-12-17 07:38:44', '2020-12-17 07:38:44'),
(79, 'Products', 'Level', 'Honeywell Enraf', 'full', 'Display and Indicator', NULL, NULL, '<p>It is essential to simplify and optimize operations of a tank farm to improve performance.Honeywell&#39;s Displays &amp; Indicators provide a clear view in different formats to help keep a close watch on tank status. Honeywell&rsquo;s Enraf Displays and Indicators include various displays and operator panels for static tank quantity assessment, enabling access to tank data at all times from virtually any place and in various formats. The display Tank Side Indicators (TSI), HART SmartView,877 Field Display &amp; Interface Unit (FDI) are current technology from Honeywell.</p>', 'https://dev.lasindo.com//storage/files/3/products/honeywell/display-ind.png', NULL, '2020-12-17 07:39:20', '2020-12-17 07:39:20'),
(80, 'Products', 'Level', 'Honeywell Enraf', 'full', 'Loading Systems', NULL, NULL, '<p>Fusion4 MSC-L is the world&rsquo;s most advanced multi stream controller for loading operations. Custody-transfer approved loading for up to 24 meter streams simultaneously and other advanced features mean fewer, more powerful devices for road loading, rail, marine and tank farm operations.</p>', 'https://dev.lasindo.com//storage/files/3/products/honeywell/load-system.png', NULL, '2020-12-17 07:40:21', '2020-12-17 07:40:21'),
(81, 'Products', 'Level', 'Honeywell Enraf', 'full', 'Portable Enraf Terminal', NULL, NULL, '<p>The Portable Enraf Terminal (PET) is the key to externally accessing the Honeywell Enraf gauges regardless of weather or operating conditions. It is an indispensable tool for configuring, commissioning, testing and servicing Honeywell Enraf field instruments.</p>', 'https://dev.lasindo.com//storage/files/3/products/honeywell/portable-enraf.png', NULL, '2020-12-17 07:40:53', '2020-12-17 07:40:53'),
(82, 'Products', 'Level', 'Honeywell Enraf', 'full', 'HERMetic UTImeter', NULL, NULL, '<p>Honeywell Tanksystem&rsquo;s HERMetic UTImeter Gtex and Otex is a portable gas tight liquid level gauge designed for closed gauging of hydrocarbons and chemicals. It ensures increased safety and efficiency in cargo control measurement, custody transfer, temperature verification and free water detection on marine vessels.</p>', 'https://dev.lasindo.com//storage/files/3/products/honeywell/hermetic.png', NULL, '2020-12-17 07:41:21', '2020-12-17 07:41:21'),
(83, 'Products', 'Analytical', 'Applied Analytics', 'full', 'OMA Series Process Analyzer', NULL, NULL, '<p>The OMA is an industrial device which measures a high-resolution absorbance spectrum in a continuously drawn sample from a liquid or gas process stream.<br />\r\nOMA-300 Standard Analyzer<br />\r\nThe default version of the OMA Process Analyzer is provided in a wall-mounted enclosure. The system is highly customizable including options for enclosures, wetted materials, and hazardous area classifications.<br />\r\nChemical Concentrations:<br />\r\nThe OMA can simultaneously monitor up to 5 chemicals in the sample stream. All analytes must have distinct absorbance curves in the 200-1100nm UV-Vis/SW-NIR wavelength range to be measurable by the OMA.<br />\r\nChemical Purity: By measuring a high-resolution transmittance spectrum, the OMA can very precisely detect impurities in the sample fluid by sudden changes in the spectral structure.<br />\r\nPhysical Properties:<br />\r\nVarious properties such as the heating value of a fuel or the octane of a gasoline blend can be<br />\r\n<br />\r\nSpecialized OMA Solutions:</p>\r\n\r\n<ul>\r\n	<li>Ammonia analyzer</li>\r\n	<li>BTX Analyzer</li>\r\n	<li>Chlorine Analyzer</li>\r\n	<li>Clean in Place Analyzer</li>\r\n	<li>Color Analyzer</li>\r\n	<li>Continuous Emission Analyzer</li>\r\n	<li>H2S Analyzer</li>\r\n	<li>Metallons Analyzer</li>\r\n	<li>NOx Analyzer</li>\r\n	<li>Odorant Analyzer</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/applied/oma-series.png', NULL, '2020-12-17 09:41:17', '2020-12-17 09:41:17'),
(84, 'Products', 'Analytical', 'Applied Analytics', 'sidebyside', 'EEXP', NULL, NULL, '<p>Eexp systems are purged and pressurized using a certified air-purging device. This method ensures that toxic/explosive gas is not allowed to accumulate inside the enclosure, and is ideal when instrument air is available.</p>', 'https://dev.lasindo.com//storage/files/3/products/applied/eexp.png', NULL, '2020-12-17 09:42:53', '2020-12-17 09:43:00'),
(85, 'Products', 'Analytical', 'Applied Analytics', 'sidebyside', 'Eexd', NULL, NULL, '<p>Eexd systems are contained within certified explosion-proof cast-aluminum enclosures. This method is more practical if the installation is remote or utilities are unreliable.</p>', 'https://dev.lasindo.com//storage/files/3/products/applied/eexd.png', NULL, '2020-12-17 09:43:39', '2020-12-17 09:43:46'),
(86, 'Products', 'Analytical', 'Applied Analytics', 'sidebyside', 'OMA-206P', NULL, NULL, '<p>Portable Analyzer<br />\r\nThe portable version of the OMA Process Analyzer is housed in an ultra-rugged suitcase enclosure, so you can bring analytics from site to site with confidence.</p>', 'https://dev.lasindo.com//storage/files/3/products/applied/oma-206p.png', NULL, '2020-12-17 09:44:54', '2020-12-17 09:44:54'),
(87, 'Products', 'Analytical', 'Applied Analytics', 'sidebyside', 'OMA-406R', NULL, NULL, '<p>Rackmount Analyzer<br />\r\nThe rackmount version of the OMA is designed for easy integration in analyzer shelters and laboratory settings. The system fits a standard 19&quot; rack.</p>', 'https://dev.lasindo.com//storage/files/3/products/applied/oma-406r.png', NULL, '2020-12-17 09:45:30', '2020-12-17 09:45:30'),
(88, 'Products', 'Analytical', 'Applied Analytics', 'sidebyside', 'OMA-300 H2S Analyzer', NULL, NULL, '<p>The OMA H2S analyzer continuously measures H2S concentration using a full-spectrum UV-Vis spectrophotometer, harvesting the power of collateral data to establish excellent dynamic range and sustain accuracy in the presence of cross-interfering species. With an ultra-safe fiber optic design and solid state build, this system is simple to install and relentlessly reliable.<br />\r\n<br />\r\n<strong>Features:</strong>&nbsp;Continuously measures H2S concentrations in a liquid or gas process stream Up to 4 additional software benches for additional analytes (e.g. SO2 , R-SH) Totally solid state build with no moving parts - modern design for low maintenance Ultra-safe fiber optic design with dedicated sample flow cell - no toxic/corrosive sample fluid in analyzer enclosure.<br />\r\nDecades of field-proven performance in the world&#39;s harshest industrial environment</p>', 'https://dev.lasindo.com//storage/files/3/products/applied/oma-300.png', NULL, '2020-12-17 09:46:39', '2020-12-17 09:46:39'),
(89, 'Products', 'Analytical', 'Applied Analytics', 'sidebyside', 'Headspace Sample Conditioners', NULL, NULL, '<p>When a liquid is too opaque or dirty to transmit a light signal, direct optical analysis may be impossible. In this case, the composition of the liquid can be measured by heating the sample and effective analytical solution for opaque liquids, including: crude oil, dirty wastewater and amine solution. analyzing the vaporous &#39;headspace&#39; gas. The headspace sampling system design uses Henry&#39;s Law to provide a highly</p>', 'https://dev.lasindo.com//storage/files/3/products/applied/headspace.png', NULL, '2020-12-17 09:47:19', '2020-12-17 09:47:19'),
(90, 'Products', 'Analytical', 'Applied Analytics', 'sidebyside', 'Mix-2000 Digital Mixer', NULL, NULL, '<p>The automated gas mixing system from Applied Analytics utilizes cutting-edge mass flow controllers to achieve the precision and repeatability required for demanding applications like research and instrument calibration.</p>', 'https://dev.lasindo.com//storage/files/3/products/applied/mix-2000.png', NULL, '2020-12-17 09:54:03', '2020-12-17 09:54:03'),
(91, 'Products', 'Analytical', 'Applied Analytics', 'sidebyside', 'MICROSPEC MCP-200 Infrared Analyzer', NULL, NULL, '<p>The MCP-200 is a real-time concentration monitor for chemical species that absorb IR radiation. Engineered to be compact and modular, the MCP-200 excels as both a rugged standalone and an integrated component</p>', 'https://dev.lasindo.com//storage/files/3/products/applied/microspec.png', NULL, '2020-12-17 09:54:32', '2020-12-17 09:54:32'),
(92, 'Products', 'Analytical', 'Applied Analytics', 'sidebyside', 'Tail Gas Analyzer', NULL, NULL, '<p>The TLG-837 continuously measures the H2S / SO2 ratio in Claus process tail gas to provide an always-reliable air demand signal.</p>', 'https://dev.lasindo.com//storage/files/3/products/applied/tail-gas.png', NULL, '2020-12-17 09:55:07', '2020-12-17 09:55:07'),
(93, 'Products', 'Analytical', 'M&C', 'sidebyside', 'SP180 SERIES', NULL, NULL, '<p>CEMS applications<br />\r\nSelf-regulating 180 &deg;C<br />\r\nLow temperature alarm<br />\r\n75 mm filter element ceramic, glass fiber, Teflon, SS<br />\r\nCalibration gas included<br />\r\nNew insulation with special silicone (T&deg;, UV, &hellip;.)<br />\r\nCost-favorable version<br />\r\nAvailable for Ex zone 1 + 2<br />\r\nAvailable for marine application</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/sp180.png', NULL, '2020-12-17 17:29:31', '2020-12-17 17:29:31'),
(94, 'Products', 'Analytical', 'M&C', 'sidebyside', 'SP2200, SP2500, SP2600', NULL, NULL, '<p>Dusty applications (cement, steel, ...)<br />\r\nControlled 180 &deg;C<br />\r\nFilter element 140 cm2or 300 cm2<br />\r\nAutomatic blowback filter and/or prefilter<br />\r\nIntegrated isolation valve for high efficiency<br />\r\nCalibration gas<br />\r\nExtractable prefilter/tube<br />\r\nMany options available</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/sp2200.png', NULL, '2020-12-17 17:48:58', '2020-12-17 17:48:58'),
(95, 'Products', 'Analytical', 'M&C', 'sidebyside', 'SP2000 Series', NULL, NULL, '<p>CEMS &amp; Process applications<br />\r\nControlled 180 &deg;C<br />\r\n150 mm filter element<br />\r\nMany options available-Teflon, Titanium-Calibration gas-Diesel/Tars filter-320&deg;<br />\r\nC-Steam-heated-Integrated ball valve withactuator (blowback/cal. gas)</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/sp2000.png', NULL, '2020-12-17 18:15:31', '2020-12-17 18:15:31'),
(96, 'Products', 'Analytical', 'M&C', 'sidebyside', 'SP2200, SP2500, SP2600', NULL, NULL, '<p>Dilution Series<br />\r\nDilution ratios from 10:1 up to 500:1<br />\r\nHeated up to 320 &deg;C<br />\r\nDilution probe (filter) or dilution panel<br />\r\nIndependent of process temperature<br />\r\nEasy operation and maintenance (without tools)<br />\r\nReplaceable eductornozzles<br />\r\nDilution air preheater<br />\r\nMany options available</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/sp2500.png', NULL, '2020-12-17 18:16:13', '2020-12-17 18:16:13'),
(97, 'Products', 'Analytical', 'M&C', 'sidebyside', 'SP3000', NULL, NULL, '<p>Explosion-proof zones 1, 2, 20, 21 and 22<br />\r\nSelf-regulating 120 &deg;C/140 &deg;C<br />\r\nOr controlled up to 180 &deg;C (230 &deg;C for Ex Zone 2)<br />\r\nT&deg;controller inside or outside the zone<br />\r\nEx certificate for the whole probe<br />\r\nMany options available-Calibration gas-Automatic blowback-Diesel/Tars filter-Integrated ball valve</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/sp3000.png', NULL, '2020-12-18 02:26:00', '2020-12-18 02:26:00'),
(98, 'Products', 'Analytical', 'M&C', 'sidebyside', 'Prefilters', NULL, NULL, '<p>Dust load &gt; 10 g/m3<br />\r\nUp to 1000 &deg;C<br />\r\nChemical/corrosion resistance<br />\r\nPTFE, SS, Hastelloy, ceramic 1 m max.<br />\r\nExtension tube if needed<br />\r\nProtective plates<br />\r\nHeated adapter for high T&deg;and dust load</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/prefilters.png', NULL, '2020-12-18 02:26:47', '2020-12-18 02:26:47'),
(99, 'Products', 'Analytical', 'M&C', 'sidebyside', 'STANDARD TUBES', NULL, NULL, '<p>Up to 1800 &deg;C<br />\r\nChemical/corrosion resistance<br />\r\nPVDF, PTFE, SS, Kanthal, Hastelloy, Inconel, ceramic, aluminiumoxide 2.5 m max.<br />\r\nStandard G 3/4&rdquo;<br />\r\nSpecial demister tube SP32 for wet applications</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/standard-tube.png', NULL, '2020-12-18 02:27:35', '2020-12-18 02:27:35');
INSERT INTO `products` (`id`, `category`, `section`, `brand`, `layout`, `name`, `abbreviation`, `fullName`, `desc`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(100, 'Products', 'Analytical', 'M&C', 'sidebyside', 'Heated Tube', NULL, NULL, '<p>To avoid condensation in the probe tube<br />\r\nUp to 320 &deg;C<br />\r\nLow temperature alarm<br />\r\nSS, Hastelloy<br />\r\nFix or portable 2 m max.<br />\r\nAvailable for Ex zone 2<br />\r\nPossibility of extension tubes or prefilters</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/heated-tube.png', NULL, '2020-12-18 02:28:32', '2020-12-18 02:28:32'),
(101, 'Products', 'Analytical', 'M&C', 'sidebyside', 'T°CONTROLLED', NULL, NULL, '<p>250 &deg;C max. (120 W/m)<br />\r\nHeater coiled around the line<br />\r\nT&deg;independent of ambient conditions<br />\r\nSS or Teflon tube<br />\r\nReplaceable tube (Teflon)<br />\r\n&Oslash; 4/6mm to 10/12mm<br />\r\n30 m max. per circuit<br />\r\nSingle tube</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/t-control.png', NULL, '2020-12-18 02:30:49', '2020-12-18 02:30:49'),
(102, 'Products', 'Analytical', 'M&C', 'sidebyside', 'PERISTALTIC PUMPS SR25', NULL, NULL, '<p>Automatic removal<br />\r\nCapacity: 0.3 Nl/h<br />\r\nSample gas pressure:0.2-2.2 bar<br />\r\nSuitable for Ex zones 1, 2<br />\r\nVersion for H2O2(or equivalent) dispensing<br />\r\nOptions available (wall mounting, housing, acid-resistant, &hellip;)</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/peristaltic.png', NULL, '2020-12-18 02:35:00', '2020-12-18 02:35:00'),
(103, 'Products', 'Analytical', 'M&C', 'sidebyside', 'LC, LT JACKET COOLERS', NULL, NULL, '<p>Gas and liquid cooler using coiled or bundle of tubes technology<br />\r\nCoolant needed (water, air, &hellip;)<br />\r\nPetrochemical &amp; process applications<br />\r\n10 bar max.<br />\r\n700 Nl/h max.<br />\r\nSpecial requests on demand</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/lc-lt.png', NULL, '2020-12-18 02:32:04', '2020-12-18 02:32:04'),
(104, 'Products', 'Analytical', 'M&C', 'sidebyside', 'SELF-REGULATING', NULL, NULL, '<p>120 &deg;C max. (65 W/m)<br />\r\nHeater traced along the line<br />\r\nT&deg;depending on ambient conditions<br />\r\nSS or Teflon tube<br />\r\nReplaceable tube (Teflon)<br />\r\n&Oslash; 4/6 mm to 10/12 mm<br />\r\n100 m max.<br />\r\nSingle tube</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/self-regulating.png', NULL, '2020-12-18 02:36:48', '2020-12-18 02:36:48'),
(105, 'Products', 'Analytical', 'M&C', 'sidebyside', 'COMPRESSOR EC SERIES', NULL, NULL, '<p>Compressor coolers<br />\r\nAdjustable dew point +2 &deg;C to +7 &deg;C<br />\r\nTemperature alarm<br />\r\nPVDF, PTFE, glass, SS<br />\r\n1 x 250 Nl/h to 4 x 250 Nl/h<br />\r\nT&deg;display<br />\r\nPeristaltic pumps built in<br />\r\nOptions available (Pt100 for external control, fan, &hellip;)</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/compressor-ec.png', NULL, '2020-12-18 02:38:24', '2020-12-18 02:38:24'),
(106, 'Products', 'Analytical', 'M&C', 'sidebyside', 'Ex-Versions', NULL, NULL, '<p>Available for Ex zone 1<br />\r\nSelf-regulating up to 120 &deg;C<br />\r\nT&deg;controlled up to 200 &deg;C<br />\r\nSS or Teflon tube<br />\r\nReplaceable tube (Teflon)<br />\r\n&Oslash; 4/6mm to 8/10mm</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/ex-version.png', NULL, '2020-12-18 02:40:33', '2020-12-18 02:40:33'),
(107, 'Products', 'Analytical', 'M&C', 'sidebyside', 'EX SERIES', NULL, NULL, '<p>Compressor coolers<br />\r\nExplosion-proof zones 1, 2<br />\r\nAdjustable dew point +2 &deg;C to +7 &deg;C<br />\r\nTemperature alarm<br />\r\nPVDF, PTFE, glass, SS<br />\r\n1 x 250 Nl/h to 4 x 250 Nl/h<br />\r\nT&deg;display<br />\r\nOption: Ex peristaltic pumps</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/ex-series.png', NULL, '2020-12-18 02:42:05', '2020-12-18 02:42:05'),
(108, 'Products', 'Analytical', 'M&C', 'sidebyside', 'Ex Series', NULL, NULL, '<p>Compressor coolers<br />\r\nExplosion-proof zones 1, 2<br />\r\nAdjustable dew point +2 &deg;C to +7 &deg;C<br />\r\nTemperature alarm<br />\r\nPVDF, PTFE, glass, SS<br />\r\n1 x 250 Nl/h to 4 x 250 Nl/h<br />\r\nT&deg;display<br />\r\nOption: Ex peristaltic pumps</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/ex-series2.png', NULL, '2020-12-18 02:45:26', '2020-12-18 02:45:26'),
(109, 'Products', 'Analytical', 'M&C', 'sidebyside', 'VC Series', NULL, NULL, '<p>Pre-coolers to relieve main cooling system<br />\r\nAmbient air dew point<br />\r\nPVDF, PTFE, glass, SS<br />\r\n1 x 250 Nl/h to 2 x 250 Nl/h<br />\r\nApplications:-High humidity-Without heated line-Electrochemical cells</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/vc-series.png', NULL, '2020-12-18 02:46:07', '2020-12-18 02:46:07'),
(110, 'Products', 'Analytical', 'M&C', 'sidebyside', 'DEEP COOLER EC30 SERIES', NULL, NULL, '<p>Compressor and Peltier combination<br />\r\nDew point adjustable from -20 &deg;C to -30 &deg;C<br />\r\nTemperature alarm<br />\r\nPVDF, PTFE, glass, SS<br />\r\n1 x 250 Nl/h<br />\r\nPeristaltic pumps built in<br />\r\nOptions available (Pt100, fan, &hellip;)<br />\r\nApplication: Aerosols reduction due to acid content</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/deep-cooler.png', NULL, '2020-12-18 02:47:19', '2020-12-18 02:47:19'),
(111, 'Products', 'Analytical', 'M&C', 'sidebyside', 'PELTIER ECP SERIES', NULL, NULL, '<p>Peltier coolers<br />\r\nAdjustable dew point +2 &deg;C to +15 &deg;C<br />\r\nTemperature alarm<br />\r\nPVDF, PTFE, glass, SS<br />\r\n1 x 150 Nl/h to 1 x 500 Nl/h<br />\r\nOptions available (Pt100 for T&deg;display, &hellip;)</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/peltier-ecp.png', NULL, '2020-12-18 02:48:20', '2020-12-18 02:48:20'),
(112, 'Products', 'Analytical', 'M&C', 'sidebyside', 'UNIVERSAL FILTERS FP, FT', NULL, NULL, '<p>Modular construction<br />\r\nPVDF, PTFE, SS, ceramic<br />\r\n0.05 &micro;m to 250 &micro;m<br />\r\n250 bar max.<br />\r\nLiquid sensor and pressure measurement possible</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/univ-filters.png', NULL, '2020-12-18 02:49:18', '2020-12-18 02:49:18'),
(113, 'Products', 'Analytical', 'M&C', 'sidebyside', 'DRAINER AD SERIES', NULL, NULL, '<p>Automatic drainers<br />\r\nAutomatic drainers/ separators<br />\r\nHigh drain capacity (Nl/h)<br />\r\nSample gas under pressure: 1-19 bar max.<br />\r\nPVDF, PTFE, glass, SS<br />\r\nSS version suitable for Ex zones 1, 2</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/drainers-ad.png', NULL, '2020-12-18 02:50:00', '2020-12-18 02:50:00'),
(114, 'Products', 'Analytical', 'M&C', 'sidebyside', 'FRONT PANEL FILTERS FPF', NULL, NULL, '<p>PVC, PVDF, glass fiber<br />\r\n0.1 &micro;m and 0.3 &micro;m<br />\r\n4 bar max.<br />\r\nLiquid sensor</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/fp-filters.png', NULL, '2020-12-18 02:50:48', '2020-12-18 02:50:48'),
(115, 'Products', 'Analytical', 'M&C', 'sidebyside', 'Heated Filters', NULL, NULL, '<p>350 &deg;C max.<br />\r\nPTFE, glass, ceramic, SS<br />\r\n0.05 &micro;m to 250 &micro;m<br />\r\n5 bar max.<br />\r\nDiesel/tars filter<br />\r\nLow temperature alarm</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/heated-filters.png', NULL, '2020-12-18 02:51:26', '2020-12-18 02:51:26'),
(116, 'Products', 'Analytical', 'M&C', 'sidebyside', 'ADSORPTION FILTERS FP', NULL, NULL, '<p>Wide variety of adsorption material<br />\r\nCapacity: 65 to 190 cm3<br />\r\n5 bar max.</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/adsorption.png', NULL, '2020-12-18 02:52:11', '2020-12-18 02:52:11'),
(117, 'Products', 'Analytical', 'M&C', 'sidebyside', 'VESSELS TG, TK', NULL, NULL, '<p>Collecting vessels<br />\r\nHigh resistance to corrosion<br />\r\nLiquid level alarm<br />\r\nDownstream cooler and/or SR25<br />\r\nPressure: 0.2-2.2 bar<br />\r\nPVC, PTFE, glass, FPM<br />\r\nCapacity: 1 -10 liters</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/vessels.png', NULL, '2020-12-18 02:53:27', '2020-12-18 02:53:27'),
(118, 'Products', 'Analytical', 'M&C', 'sidebyside', 'INJECTORS SERIES GIP', NULL, NULL, '<p>3.5 Nl/min to 13.5 Nl/min<br />\r\nSS, glass, FPM<br />\r\nCorrosion-resistant<br />\r\nSample and ambient temperature +180 &deg;C max.<br />\r\nMaintenance-free</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/injectors.png', NULL, '2020-12-18 02:55:47', '2020-12-18 02:55:47'),
(119, 'Products', 'Analytical', 'M&C', 'sidebyside', 'DIAPHRAGM PUMPS', NULL, NULL, '<p>3 Nl/min to 17 Nl/min<br />\r\nPVDF, PTFE, Viton or all parts made of PTFE (against corrosion)<br />\r\nSample T&deg;+80 &deg;C max.<br />\r\nMany options available-Housing-Bypass needle valve-Double diaphragm safety system<br />\r\nHeated pump 180 &deg;C (10 Nl/min) with T&deg;alarm<br />\r\nAvailable for Ex zone 1</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/diaphragm.png', NULL, '2020-12-18 02:56:48', '2020-12-18 02:56:48'),
(120, 'Products', 'Analytical', 'M&C', 'sidebyside', 'AIR GENERATOR BA', NULL, NULL, '<p>Supply of 4 bar and 3 Nl/min max. of air (adjustable)<br />\r\nAir quality:-CnHm&lt; 10 ppb-Dew point &lt; -10 &deg;C-Dust and oil-free<br />\r\nStatus alarm<br />\r\nPossibility of internal compressor<br />\r\nEasy catalysts replacement</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/air-generator.png', NULL, '2020-12-18 02:57:28', '2020-12-18 02:57:28'),
(121, 'Products', 'Analytical', 'M&C', 'sidebyside', 'BELLOWS PUMPS', NULL, NULL, '<p>Bellows technique<br />\r\n5 Nl/min to 10 Nl/min<br />\r\nAll parts made of PTFE (against corrosion)<br />\r\nLiquid and acid-resistant<br />\r\nBypass needle valve available<br />\r\nPump head rotation 180 &deg;C<br />\r\n2 x Sample In and 2 x Sample Out<br />\r\nSample T&deg;+140 &deg;C max.<br />\r\nLess maintenance<br />\r\nAvailable for Ex zone 1</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/bellows.png', NULL, '2020-12-18 02:58:09', '2020-12-18 02:58:09'),
(122, 'Products', 'Analytical', 'M&C', 'sidebyside', 'PARAMAGNETIC OXYGEN TRANSMITTER/ANALYZER', NULL, NULL, '<p>Using the Magneto-dynamic technology<br />\r\nSmall dead volume (2 ml) for faster response time<br />\r\nLow drift and low cross-sensitivity against other components<br />\r\nMost selective and reliable method for O2measuring in a linear range of 0 to 100 % vol.<br />\r\nHigh resistance against corrosion<br />\r\nDifferent materials available (e.g. cell for chlorine application)<br />\r\nNo maintenance or replacement of the cell when used correctly<br />\r\nAnalog output and status alarm<br />\r\nPossibility of single transmitter type PMA05<br />\r\nUniversal Touch Screen interface/Intuitive graphic user interface similar to smartphones<br />\r\nAvailable for Ex zone 1/EN 14181 for the portable version/SIL EN 61508</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/paramagnetic.png', NULL, '2020-12-18 02:58:57', '2020-12-18 02:58:57'),
(123, 'Products', 'Analytical', 'M&C', 'sidebyside', 'NOX CONVERTERS CG-2', NULL, NULL, '<p>With 2 types of catalysts (C or SS) for higher conversion efficiency (&gt; 95% with new catalyst)<br />\r\nT&deg;oven: 350 &deg;C or 660 &deg;C<br />\r\nLow temperature alarm<br />\r\n19&rdquo; or wall mounting<br />\r\nEasy catalyst replacement<br />\r\nOptions available-Catalyst bypass with solenoid valves-Complete heated version for &lsquo;hot&rsquo; systems and in case of high NO2content</p>', 'https://dev.lasindo.com//storage/files/3/products/mnc/nox-converter.png', NULL, '2020-12-18 02:59:34', '2020-12-18 02:59:34'),
(124, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'BTV SELF-REGULATING HEATING CABLE', NULL, NULL, '<p>nVent RAYCHEM BTV self-regulating trace heating cables provide freeze protection and process temperature maintenance, up to 150 &deg;F/65 &deg;C, of pipes/vessels without steam cleaning requirements. They withstand intermittent exposure to 185 &deg;F/85 &deg;C and are hazardous area approved. The polyolefin outer jacket (-CR) is suitable for mild inorganic solutions. The fluoropolymer outer jacket (-CT) provides high chemical resistance against aggressive organics and corrosives.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/btv.png', NULL, '2020-12-18 03:04:30', '2020-12-18 03:04:30'),
(125, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'QTVR SELF-REGULATING HEATING CABLE', NULL, NULL, '<p>nVent RAYCHEM QTVR self-regulating trace heating cables are suitable for freeze protection of large pipes/vessels with high heat loss, and for process temperature maintenance applications without steam-cleaning requirements, up to 225 &deg;F/110 &deg;C. The fluoropolymer outer jacket (-CT) provides high chemical resistance against aggressive organics and corrosives.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/qtvr.png', NULL, '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(126, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'ICESTOP SELF-REGULATING HEATING CABLE', NULL, NULL, '<p>nVent RAYCHEM IceStop self-regulating trace heating cables provide roof and gutter de-icing, suitable for all standard materials of gutters and drainpipes. Power output is 36 W/m at 0 &deg;C in ice water, 18 W/m at 0 &deg;C in air.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/icestop.png', NULL, '2020-12-18 03:05:57', '2020-12-18 03:05:57'),
(127, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'XTV SELF-REGULATING HEATING CABLE', NULL, NULL, '<p>nVent RAYCHEM XTV self-regulating trace heating cables are mainly used for freeze protection of pipes and vessels that require steam cleaning and process temperature maintenance, up to 250 &deg;F/121 &deg;C. They withstand intermittent exposure to 482 &deg;F/250 &deg;C. The fluoropolymer outer jacket (-CT) provides high chemical resistance against aggressive organics and corrosives.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/xtv.png', NULL, '2020-12-18 03:06:49', '2020-12-18 03:06:49'),
(128, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'VPL POWER-LIMITING HEATING CABLE', NULL, NULL, '<p>nVent RAYCHEM VPL power-limiting trace heating cables are mainly used for process temperature maintenance applications that require steam cleaning, up to 455 &deg;F/235 &deg;C and withstand intermittent exposure to 500 &deg;F/260 &deg;C. VPL offers high power output at high temperatures, which can reduce the number of heating cables required and is hazardous area approved. Also suitable for freeze protection. The fluoropolymer outer jacket (-CT) provides high chemical resistance against aggressive organics and corrosives.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/vpl.png', NULL, '2020-12-18 03:07:53', '2020-12-18 03:07:53'),
(129, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'KTV SELF-REGULATING HEATING CABLE', NULL, NULL, '<p>nVent RAYCHEM KTV self-regulating trace heating cables are mainly used for process temperature maintenance of pipes/vessels that require steam cleaning, up to 300 &deg;F/150 &deg;C. Also used for freeze protection of systems with high heat losses. They withstand intermittent exposure to 482 &deg;F/250 &deg;C. The fluoropolymer outer jacket (-CT) provides high chemical resistance against aggressive organics and corrosives.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/ktv.png', NULL, '2020-12-18 03:08:49', '2020-12-18 03:08:49'),
(130, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'XPI SERIES HEATING CABLE, HIGH TEMPERATURE, 4 J', NULL, NULL, '<p>nVent RAYCHEM XPI polymer insulated (PI) series trace heating cables provide freeze protection and process temperature maintenance on long transfer lines, vessels and instrumentation lines. XPI: up to 260⁰C continuous and 300⁰C intermittent exposure. Can be used in both hazardous and safe environments.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/xpi.png', NULL, '2020-12-18 03:10:48', '2020-12-18 03:10:48'),
(131, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'XPI SERIES HEATING CABLE, HIGH TEMPERATURE, 7 J', NULL, NULL, '<p>nVent RAYCHEM XPI polymer insulated (PI) series trace heating cables provide freeze protection and process temperature maintenance on long transfer lines, vessels and instrumentation lines. XPI: up to 260⁰C continuous and 300⁰C intermittent exposure. Can be used in both hazardous and safe environments.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/xpi.png', NULL, '2020-12-18 03:10:48', '2020-12-18 03:10:48'),
(132, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'SC/H SERIES HEATING CABLE, HI-TEMP, HAZARDOUS AREA', NULL, NULL, '<p>nVent RAYCHEM SC/H series-resistance trace heating cables provide freeze protection and high-temperature maintenance for longline heating applications with low heat loss. Available with single/dual/triple conductors , they can be used for continuous circuit lengths to 12,000 ft/3659 m powered from a single source, capable of supporting voltages up to 600 VAC. and suitable for continuous exposure to temperatures up to 482 &deg;F/250 &deg;C. Approved for use in hazardous areas. The fluoropolymer outer jacket provides high chemical resistance against aggressive organics and corrosives.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/sc-series.png', NULL, '2020-12-18 03:13:48', '2020-12-18 03:13:48'),
(133, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'SC/H SERIES HEATING CABLE, FREEZE PROTECTION, HAZARDOUS AREA', NULL, NULL, '<p>nVent RAYCHEM SC/F series-resistance trace heating cables provide freeze protection and high-temperature maintenance for longline heating applications with low heat loss Available with dual/triple conductors, they can be used for continuous circuit lengths to 12,000 ft/3659 m powered from a single source, capable of supporting voltages up to 600 VAC. and suitable for continuous exposure to temperatures up to 195 &deg;F/90 &deg;C. Approved for use in hazardous areas. The fluoropolymer outer jacket provides high chemical resistance against aggressive organics and corrosives.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/sc-series.png', NULL, '2020-12-18 03:16:57', '2020-12-18 03:16:57'),
(134, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'SC SERIES HEATING CABLE, HAZARDOUS AREA', NULL, NULL, '<p>nVent RAYCHEM SC series-resistance trace heating cables provide freeze protection and high-temperature maintenance for longline heating applications. Available with single/dual/triple conductors , they can be used for continuous circuit lengths to 12,000 ft/3659 m powered from a single source, capable of supporting voltages up to 600 VAC and suitable for continuous exposure to temperatures up to 400 &deg;F/204 &deg;C. Approved for use in hazardous areas. The fluoropolymer outer jacket provides high chemical resistance against aggressive organics and corrosives.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/sc-series.png', NULL, '2020-12-18 03:17:36', '2020-12-18 03:17:36'),
(135, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'MI SERIES BARE COPPER HEATING CABLE', NULL, NULL, '<p>nVent RAYCHEM mineral insulated (MI) series resistance trace heating cables are used for low temperature maintenance applications such as long pipeline heating, condensation prevention and ramp heating. Copper sheath with continuous exposure temperatures to 392 &deg;F/200 &deg;C and typical power outputs to 20 W/ft (65 W/m). Approved for use in hazardous areas.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/mi-series-bare.png', NULL, '2020-12-18 03:18:47', '2020-12-18 03:18:47'),
(136, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'MI SERIES SS321 HSQ HEATING CABLE', NULL, NULL, '<p>nVent RAYCHEM HSQ stainless steel (321) sheathed mineral insulated (MI) series resistance trace heating cables provide freeze protection and process temperature maintenance. They can be used for exposure temperatures up to 700 &deg;C (joint dependent) and typical power outputs up to 150 W/m. 321 stainless steel sheath offers high corrosion resistance to a wide range of organic acids and alkalis. Approved for use in hazardous areas. Available &#39;fast track&#39; as configured heating units.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/mi-series.png', NULL, '2020-12-18 03:20:02', '2020-12-18 03:20:02'),
(137, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'MI SERIES ALLOY 825 XMI-A HAX HEATING CABLE', NULL, NULL, '<p>nVent RAYCHEM XMI-A mineral insulated (MI) series resistance trace heating cables provide freeze protection and process temperature maintenance on pipes/vessels up to 1022 &deg;F/550 &deg;C and intermittent exposure to 1200 &deg;F/650 &deg;C. Available with 300 V and 600 V rating, approved for applications up to 61 W/ft (200 W/m) and hazardous areas. The Alloy 825 sheath provides extreme resistance to a broad range of corrosive environments.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/mi-series.png', NULL, '2020-12-18 03:20:56', '2020-12-18 03:20:56'),
(138, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'MI SERIES INCONEL 600 HIQ HEATING CABLE', NULL, NULL, '<p>nVent RAYCHEM HIQ Inconel 600 sheathed mineral insulated (MI) series resistance trace heating cables provide freeze protection and process temperature maintenance. They can be used for exposure temperatures up to 700 &deg;C (joint dependent) and typical power outputs up to 300 W/m. Alloy 600 sheath offers excellent corrosion resistance to a wide range of organic acids, alkalis and chloride stress-corrosion cracking. Approved for use in hazardous areas. Available &#39;fast track&#39; as configured heating units.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/mi-series.png', NULL, '2020-12-18 03:21:33', '2020-12-18 03:21:33'),
(139, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'MI SERIES CUNI HDC/HDF HEATING CABLE', NULL, NULL, '<p>nVent RAYCHEM HDF/HDC mineral insulated (MI) series resistance trace heating cables provide freeze protection and process temperature maintenance, with continuous exposure temperatures to 400 &deg;C and typical power outputs up to 70 W/m. The high nickel content provides high corrosion resistance, especially in seawater environments. Approved for use in hazardous areas. Available &#39;fast track&#39; as configured heating units and in low resistances, for long pipeline heating.</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/mi-series-cuni.png', NULL, '2020-12-18 03:22:13', '2020-12-18 03:22:13'),
(140, 'Products', 'Heat Tracing', 'nVent RAYCHEM Industrial Solutions', 'sidebyside', 'STS HT SKIN-EFFECT TRACING WIRE', NULL, NULL, '<p>nVent RAYCHEM STS-HT Skin Effect Trace Heating Wires provide freeze protection and process temperature maintenance for embedded or long pipeline applications. Circuit lengths up to 15 miles/25 km are possible, minimizing the number of connection and power source locations. Suitable for applications up to 482 &deg;F/250 &deg;C and approved for use in hazardous and non-hazardous locations. The fluoropolymer outer jacket is ideal for heating pipelines transporting materials such as sulphur and asphalt</p>', 'https://dev.lasindo.com//storage/files/3/products/nvent-raychem/sts-ht.png', NULL, '2020-12-18 03:22:50', '2020-12-18 03:22:50'),
(141, 'Products', 'Pressure', 'Haskel', 'full', 'AIR-DRIVEN LIQUID PUMPS', NULL, NULL, '<p>A low cost, reliable means of generating and sustaining static medium to high-pressures.<br />\r\nA Haskel pneumatic pump&rsquo;s robust design will efficiently convert compressed air into hydraulic power, satisfying any application need for pressurizing up a component and holding it at a set pressure for any sustained period of time</p>', 'https://dev.lasindo.com//storage/files/3/products/haskel/air-driven-liquid.png', NULL, '2020-12-18 03:38:06', '2020-12-18 03:38:06'),
(142, 'Products', 'Pressure', 'Haskel', 'full', 'AIR-DRIVEN REFRIGERANT PUMPS', NULL, NULL, '<p>High pressure refrigerant pump designed for safe, reliable handling of Liquid, Gas or a mixture of both.<br />\r\nHaskel refrigerant pumps are designed for recovery or recharge of fluids, whether they are liquid or gas. The pumps offer you plenty of leverage in terms of their operation.</p>', 'https://dev.lasindo.com//storage/files/3/products/haskel/air-driven-refrigerant.png', NULL, '2020-12-18 03:38:38', '2020-12-18 03:38:38'),
(143, 'Products', 'Pressure', 'Haskel', 'full', 'PNEUMATIC-DRIVEN GAS BOOSTERS', NULL, NULL, '<p>A flexible and efficient air-driven gas booster for delivering high-pressure gases.<br />\r\nHaskel designs and manufactures gas boosters that are the industry benchmark for durability, safety and reliability. Used for virtually all industrial gases and ideal for gas pressure increases, high pressure gas transference, cylinder charging, and scavenging, Haskel pneumatic-driven gas boosters can produce pressures up to 39,000 psi (2690 bar).</p>', 'https://dev.lasindo.com//storage/files/3/products/haskel/pneumatic.png', NULL, '2020-12-18 03:39:09', '2020-12-18 03:39:09'),
(144, 'Products', 'Pressure', 'Haskel', 'full', 'H-Drive', NULL, NULL, '<p>The future of gas booster technology &ndash; at the forefront of innovation.<br />\r\nH-Drive, Haskel&rsquo;s new generation of hydraulically driven gas boosters, is designed to safely handle a wide range of critical, high-pressure gas compression and transfer needs, at high rates and pressures for the most demanding of applications.</p>', 'https://dev.lasindo.com//storage/files/3/products/haskel/h-drive.png', NULL, '2020-12-18 03:39:48', '2020-12-18 03:39:48'),
(145, 'Products', 'Pressure', 'Haskel', 'full', 'AIR PRESSURE AMPLIFIERS', NULL, NULL, '<p>An economic and compact source of amplified air, or nitrogen, for high pressure industrial applications.<br />\r\nHaskel air pressure amplifiers offer the most comprehensive operating range in the industry, combining simple principles of operation with rugged construction suitable for the most demanding industrial applications. Capable of producing pressure outputs up to 5000 psi (345 bar), Haskel air amplifiers are compact, require no electrical or mechanical drive connections, are powered by the same air that they amplify, and can be mounted in any position.</p>', 'https://dev.lasindo.com//storage/files/3/products/haskel/air-pressure.png', NULL, '2020-12-18 03:40:12', '2020-12-18 03:40:12'),
(146, 'Products', 'Pressure', 'BuTech', 'full', 'BUTECH HIGH-PRESSURE VALVES', NULL, NULL, '<p>Delivering the longest life and most reliable performance for pressure control systems in severe environments.<br />\r\nDesigned to meet the critical requirements of today&rsquo;s most severe applications while ensuring the highest quality and most reliable performance for pressure control, BuTech valves and system components are available in any alloy to handle pressures from vacuum to 150,000 psi (10,340 bar) and temperatures from -423&deg; F (-253&deg; C) to over 1200&deg; F (649&deg; C).</p>\r\n\r\n<ul>\r\n	<li>Low Pressure Equipment Compression Fittings for Service to 15,000 psi (1,034 bar)</li>\r\n	<li>Medium Pressure Equipment Coned and Threaded to 20,000 psi (1,380 bar)</li>\r\n	<li>High Pressure Equipment Coned and Threaded for Service from 30,000 psi (2,070 bar) to 150,000 psi (10,340 bar)</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/butech/high-pressure.png', NULL, '2020-12-18 03:41:29', '2020-12-18 03:41:29'),
(147, 'Products', 'Pressure', 'CCS', 'full', 'INDUSTRIAL PRESSURE SWITCHES', NULL, NULL, '<p>Pressure switches are instruments used to turn on/off a device in a process control system. Models including gauge pressure, differential pressure and vacuum pressure switches. The construction include designs suitable for general purpose, weatherproof or explosion proof areas.</p>', 'https://dev.lasindo.com//storage/files/3/products/ccs/ind-pressure.png', NULL, '2020-12-18 03:43:07', '2020-12-18 03:43:07'),
(148, 'Products', 'Pressure', 'CCS', 'full', 'INDUSTRIAL TEMPERATURE SWITCHES', NULL, NULL, '<p>Two types of temperature switches include switches that use RTDs and thermocouple or mechanical temperature switches utilizing a forced balance assembly. They are available with direct or remote mount options for a wide range of application in a hazardous and non-hazardous environments.</p>', 'https://dev.lasindo.com//storage/files/3/products/ccs/ind-temp.png', NULL, '2020-12-18 03:43:26', '2020-12-18 03:43:26'),
(149, 'Products', 'Pressure', 'Ametek | M&G', 'sidebyside', 'DIGITAL PRESSURE GAUGES', NULL, NULL, '<p>We provide some of the world&rsquo;s most popular digital pressure gauges, including intrinsically safe &quot;percent of reading&quot; test gauges, process gauges, and differential pressure gauges.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-mng/digital-pressure.png', NULL, '2020-12-18 03:45:41', '2020-12-18 03:45:41'),
(150, 'Products', 'Pressure', 'Ametek | M&G', 'sidebyside', 'PRESSURE CALIBRATORS', NULL, NULL, '<p>Our calibrators include intrinsically safe calibrators, wide-range dual sensor calibrators, combined pressure and mA loop calibrators, and calibrators with built in pressure pumps.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-mng/press-calibrators.png', NULL, '2020-12-18 03:47:56', '2020-12-18 03:47:56'),
(151, 'Products', 'Pressure', 'Ametek | M&G', 'sidebyside', 'PRESSURE Recorders', NULL, NULL, '<p>Our pressure recorders collect readings as quick as ten times per second, and can store up to 1 million data points. Easily store pressure, temperature, and electrical data.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-mng/press-recorders.png', NULL, '2020-12-18 03:48:26', '2020-12-18 03:48:26'),
(152, 'Products', 'Pressure', 'Ametek | M&G', 'sidebyside', 'DEADWEIGHT TESTERS', NULL, NULL, '<p>Our dead weight testers are engineered to offer user-friendly, safe operation, in the field, or in a lab. Both pneumatic and hydraulic deadweight testers are available.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-mng/deadweight.png', NULL, '2020-12-18 03:49:07', '2020-12-18 03:49:07'),
(153, 'Products', 'Pressure', 'Ametek | M&G', 'sidebyside', 'MA LOOP CALIBRATORS', NULL, NULL, '<p>Our handheld loop calibrators offer economical and easy-to-use calibration solutions for sourcing and measuring mA signals.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-mng/ma-loop.png', NULL, '2020-12-18 03:49:36', '2020-12-18 03:49:36'),
(154, 'Products', 'Pressure', 'Ametek | M&G', 'sidebyside', 'MULTIFUNCTION PROCESS CALIBRATORS', NULL, NULL, '<p>Our multifunction process calibrators read and source RTD, thermocouple, current, voltage, frequency, and resistance to calibrate or verify your process sensors.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-mng/multifunction-process.png', NULL, '2020-12-18 03:49:59', '2020-12-18 03:49:59'),
(155, 'Products', 'Pressure', 'Ametek | M&G', 'sidebyside', 'HYDRAULIC HAND PUMPS', NULL, NULL, '<p>System C&amp;H. Our high-pressure, hydraulic hand pump provides a compact pressure source for any environment and works with petroleum-based oils and hydraulic fluids.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-mng/hydraulic.png', NULL, '2020-12-18 03:51:20', '2020-12-18 03:51:20'),
(156, 'Products', 'Pressure', 'Ametek | M&G', 'sidebyside', 'PNEUMATIC HAND PUMPS', NULL, NULL, '<p>System A,B,&amp;H. Our hand pumps generate pressure and vacuum with precision and ease, featuring a built-in vent valve, fine adjust, and dual pressure output.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-mng/pneumatic.png', NULL, '2020-12-18 03:51:51', '2020-12-18 03:51:51'),
(157, 'Products', 'Pressure', 'Ametek | M&G', 'sidebyside', 'PRESSURE FITTINGS', NULL, NULL, '<p>Our quick-test pressure fittings are designed for calibration applications with an emphasis on safety. Seal finger-tight to 10 000 psi, or wrench tight for a metal-to-metal seal.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-mng/pressure-fit.png', NULL, '2020-12-18 03:52:32', '2020-12-18 03:52:32'),
(158, 'Products', 'Pressure', 'Ametek | M&G', 'sidebyside', 'PRESSURE COMPARATORS', NULL, NULL, '<p>System D,E,F,G. Our high-pressure, hydraulic pressure comparators are portable, self-contained, hydraulic pressure generators for calibrating pressure gauges, transmitters, and sensors.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-mng/pressure-comp.png', NULL, '2020-12-18 03:52:57', '2020-12-18 03:52:57'),
(159, 'Products', 'Pressure', 'Ametek | M&G', 'sidebyside', 'CALIBRATION SOFTWARE', NULL, NULL, '<p>Our calibration software help you complete a full gauge calibration, from entering the details of the gauge to printing out a calibration certificate in under 3 minutes.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-mng/calibration-soft.png', NULL, '2020-12-18 03:53:27', '2020-12-18 03:53:27'),
(160, 'Products', 'Pressure', 'Bifold Orange', 'sidebyside', 'MODULAR SYSTEMS', NULL, NULL, '<ul>\r\n	<li>Relief valves correctly sized and safe to match the filter regulator.</li>\r\n	<li>Fully configurable ranges in 316L stainless steel, simplified for ease of selection</li>\r\n	<li>Wide range of operating media covered - 1/8&quot; to 1&quot; ports in air, wet air, water, water glycol, oil, chemicals and gases.</li>\r\n	<li>NACE MR-01-75 internal wetted and body materials</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/bifold-orange/modular.png', NULL, '2020-12-18 03:59:33', '2020-12-18 03:59:33'),
(161, 'Products', 'Pressure', 'Bifold Orange', 'sidebyside', 'SOLENOID VALVE', NULL, NULL, '<ul>\r\n	<li>No 1 for global wellhead and choke market - HPU&rsquo;s (Hydraulic Power Units), valve actuation, chokes, deluge and fire dampers</li>\r\n	<li>Fully configurable ranges in 316L stainless steel, carbon steel and aluminium, simplified for ease of selection.</li>\r\n	<li>Wide range of operating media covered - 1/8&quot; to 1&quot; ports in air, wet air, water, water glycol, oil, chemicals and gases CE MR-01-75 internal wetted and body materials.</li>\r\n	<li>Low power - from 0.8 W up to 12.0 W</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/bifold-orange/solenoid.png', NULL, '2020-12-18 04:00:03', '2020-12-18 04:00:03'),
(162, 'Products', 'Pressure', 'Bifold Orange', 'sidebyside', 'PILOT, MECHANICAL & RESET VALVES', NULL, NULL, '<ul>\r\n	<li>The only pilot, mechanical and reset valve manufacturer with working pressures from 0 to 20,000 psi / 0 to 1,380 bar</li>\r\n	<li>Fully configurable ranges in 316L stainless steel, carbon steel and aluminium, simplified for ease of selection.</li>\r\n	<li>Wide range of operating media covered - 1/8&quot; to 1&quot; ports in air, wet air, water, water glycol, oil, chemicals and gases</li>\r\n	<li>NACE MR-01-75 internal wetted and body materials.</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/bifold-orange/pilot.png', NULL, '2020-12-18 04:02:43', '2020-12-18 04:02:43'),
(163, 'Products', 'Pressure', 'Bifold Orange', 'sidebyside', 'FILTERS, REGULATORS, FILTER REGULATORS & FILTARTION UNITS', NULL, NULL, '<ul>\r\n	<li>Suited for applications that require high flow capacity and accurate process control</li>\r\n	<li>Highest guaranteed safety factors in the industry</li>\r\n	<li>Wide range of operating media covered - 1/4&quot; to 1&quot; ports in air, wet air, water, water glycol, oil, chemicals and gases</li>\r\n	<li>NACE MR-01-75 internal wetted and body materials.</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/bifold-orange/filters.png', NULL, '2020-12-18 04:03:15', '2020-12-18 04:03:15'),
(164, 'Products', 'Pressure', 'Bifold Orange', 'sidebyside', 'VOLUME BOOSTERS & FILTER BOOSTER', NULL, NULL, '<ul>\r\n	<li>Our bi-directional full flow design volume / filter boosters are zero bleed and offer up to 200% higher flow than conventional circuits</li>\r\n	<li>Highest guaranteed safety factors in the industry</li>\r\n	<li>Wide range of operating media covered - 1/4&quot; to 2&quot; ports in air, wet air, water, water glycol, oil, chemicals and gases</li>\r\n	<li>NACE MR-01-75 internal wetted and body materials.</li>\r\n	<li>Highest qualified safety factors in the industry - SIL 3 third party certified with Exida</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/bifold-orange/volume-booster.png', NULL, '2020-12-18 04:03:45', '2020-12-18 04:03:45'),
(165, 'Products', 'Pressure', 'Bifold Orange', 'sidebyside', 'FLOW CONTROL VALVES', NULL, NULL, '<ul>\r\n	<li>The uni-directional flow control valve, features a bypass check which then allows rapid free flow from the output port through the input port</li>\r\n	<li>Wide range of operating media covered - 1/4&quot; to 2&quot; ports in air, wet air, water, water glycol, oil, chemicals and gases</li>\r\n	<li>NACE MR-01-75 internal wetted and body materials.</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/bifold-orange/flow-control.png', NULL, '2020-12-18 04:04:17', '2020-12-18 04:04:17'),
(166, 'Products', 'Pressure', 'Bifold Orange', 'sidebyside', 'SHUTTLE, CHECK, EXHAUST VALVES & COUPLERS', NULL, NULL, '<ul>\r\n	<li>Our pneumatic check valves coupled with our flow controllers increase the system flow by up to 218%</li>\r\n	<li>Low sealing forces - no leaks</li>\r\n	<li>Very high flow - no restrictive effect on circuits</li>\r\n	<li>Highest qualified safety factors in the industry - SIL 3 third party certified with Exida (selected models)</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/bifold-orange/shuttle.png', NULL, '2020-12-18 04:05:09', '2020-12-18 04:05:09'),
(167, 'Products', 'Pressure', 'Bifold Orange', 'sidebyside', 'RELIEF & FLOWLINE PILOT VALVES', NULL, NULL, '<ul>\r\n	<li>Widest range of relief valves for pneumatic, hydraulic and instrument applications with pressures ranging from 0 to 22,016 psi / 0 to 1,518 bar</li>\r\n	<li>High precision - our flowline pilot valves allow pressure fluctuations within a low and high adjustable set-point</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/bifold-orange/relief.png', NULL, '2020-12-18 04:05:47', '2020-12-18 04:05:47'),
(168, 'Products', 'Pressure', 'Bifold Orange', 'sidebyside', 'FIRE SAFETY VALVES', NULL, NULL, '<ul>\r\n	<li>This extensive range includes valves and basic screw-in plugs for pneumatic / low pressure hydraulic applications, single and two stage valves for high pressure hydraulic service</li>\r\n	<li>Both pneumatic and high pressure hydraulic valves are available in 2-way, 2-position and 3-way, 2-position configurations</li>\r\n	<li>Contains safety guard against accidental bulb damage</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/bifold-orange/fire-safety.png', NULL, '2020-12-18 04:06:18', '2020-12-18 04:06:18'),
(169, 'Products', 'Pressure', 'Bifold Orange', 'sidebyside', 'PRESSURE INTENSIFIERS', NULL, NULL, '<ul>\r\n	<li>Designed to locally boost the pressure of any water based or mineral / synthetic oil based fluid using a low pressure hydraulic supply</li>\r\n	<li>Stall free operation without the use of additional valves and equipment. The Bifold Marshalsea pressure intensifiers cannot stall regardless of how low the demand is on the high-pressure side</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/bifold-orange/pressure.png', NULL, '2020-12-18 04:06:49', '2020-12-18 04:06:49'),
(170, 'Products', 'Pressure', 'Bifold Orange', 'sidebyside', 'BALL & NEEDLE VALVES', NULL, NULL, '<ul>\r\n	<li>Our needle valve range incorporates dynamic sealing which eliminates the loss of seal integrity and reduces the risk of fugitive emissions along with non-wetted threads.</li>\r\n	<li>Stem seal design prevents galling and contamination.</li>\r\n	<li>Anti blow out stem</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/bifold-orange/ball.png', NULL, '2020-12-18 04:07:46', '2020-12-18 04:07:46'),
(171, 'Products', 'Pressure', 'Bifold Orange', 'sidebyside', 'PUMPS', NULL, NULL, '<ul>\r\n	<li>High efficiency axial piston pump technology up to 30.0 kW and up to 20,000 psi / 1,380 bar working pressure.</li>\r\n	<li>Zero external leakage - potential leakage is returned to suction.</li>\r\n	<li>Lower cost - significantly reduced infrastructure costs throughout with ultra low power consumption</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/bifold-orange/pumps.png', NULL, '2020-12-18 04:08:11', '2020-12-18 04:08:11'),
(172, 'Products', 'Valves', 'Valv Technologies', 'sidebyside', 'Metal Seated Ball Valves', NULL, NULL, '<p>Longer service life means reliable, maintenance-free operation and a four year leakage warranty for power industry applications. This is just the start of what you get with ValvTechnologies&rsquo; seat-supported severe service metal-seated ball valves.<br />\r\nThe V Series&rsquo; proven seat design provides improved performance, far beyond the capability of linear operated valves &ndash; which feature obstructed and torturous flow paths. V Series valves are engineered to be leak-free, position-seated, maximizing flow and reducing the overall cost of ownership. ValvTechnologies&rsquo; design and construction delivers the extra safety margin so crucial to maintaining productivity.</p>', 'https://dev.lasindo.com//storage/files/3/products/valves/metal-seated.png', NULL, '2020-12-26 06:42:49', '2020-12-26 06:42:49'),
(173, 'Products', 'Valves', 'Valv Technologies', 'sidebyside', 'Switching Valves', NULL, NULL, '<p>The ValvTechnologies&rsquo; switch valves are designed for use in the delayed coker found in many integrated oil refineries. There are two drums in a delayed coker unit that work consecutively while in operation. When one drum is functioning, the other drum is being de-coked. The switching valve is required to direct hot feed to either drum A or drum B. The valve also has the bypass position to divert flow back to the fractionator for or during emergencies. The bypass has the same port dimension as the main drum feed lines. The control package also has the capability of providing multiple intermediate positions to provide the capability to warm the new drum while slowly reducing feed to the live drum. The switch valve is the most critical valve in the unit.</p>', 'https://dev.lasindo.com//storage/files/3/products/valves/switching.png', NULL, '2020-12-26 06:43:28', '2020-12-26 06:43:28'),
(174, 'Products', 'Valves', 'Valv Technologies', 'sidebyside', 'Pulse Jet Valves', NULL, NULL, '<p>ValvTechnologies&rsquo; PulseJet valve is a fast-acting, high-cycle fugitive emissions valve designed to send a pulse of gas through a pipeline system. A trunnion-mounted ball valve, capable of 90&deg; or 180&deg; rotation in speeds as low as 0.5 seconds or faster, this fast actuation speed is what creates the gas &ldquo;pulse&rdquo; through the pipeline system. PulseJet systems can be used to clean system filters, spray chemicals in an injection type system, or pulse debris/media through a pipeline to prevent clogging.</p>', 'https://dev.lasindo.com//storage/files/3/products/valves/pulsejet.png', NULL, '2020-12-26 06:44:10', '2020-12-26 06:44:10'),
(175, 'Products', 'Valves', 'Valv Technologies', 'sidebyside', 'Trunnion Metal Seated Ball Valves', NULL, NULL, '<p>The trunnion valve technology platform provides a unique combination of upstream seating seat principle, resistance to abrasive erosion, long lifetime, and availability in a wide temperature range. Designed to meet stringent emission requirements and provide long life in abrasive and erosive conditions, the NexTech&reg;, TrunTech&reg;, and PulseJet valves provide high-performance solutions for tough, high cycling applications.</p>', 'https://dev.lasindo.com//storage/files/3/products/valves/trunnion.png', NULL, '2020-12-26 06:44:46', '2020-12-26 06:44:46'),
(176, 'Products', 'Valves', 'Valv Technologies', 'sidebyside', 'Coking Valves', NULL, NULL, '<p>Decrease unscheduled downtime and possible production losses with ValvTechnologies&rsquo; coker valves.<br />\r\nThe delayed coker process is a batch process, one of the most hostile environments in the refinery due to the abrasive and erosive properties of the coke by-product &ndash; and is crucial to a refinery&rsquo;s profitability. Valves are cycled frequently and failure can lead to a complete shutdown of a unit, resulting in large process and financial costs. Optimizing valve life-cycle is critical to operational efficiency: ValvTechnologies has the best solutions to meet your coking requirements.</p>', 'https://dev.lasindo.com//storage/files/3/products/valves/coking.png', NULL, '2020-12-26 06:49:27', '2020-12-26 06:49:27'),
(177, 'Products', 'Valves', 'Valv Technologies', 'sidebyside', 'Electronic Relief Valve', NULL, NULL, '<p>Consider the safety rating, productivity value and cost savings of electronic relief valves &ndash; the relief valve whose standard blowdown and set pressure is accurate to 1/10% of 1 psi. ValvTechnologies&rsquo; ERV is the perfect combination of zero-leakage isolation valve plus the electronic controls needed to monitor and regulate system pressures in a safety valve environment and within ASME Code Section I &ldquo;V&rdquo; Stamp requirements where critical over-pressure protection is paramount. ValvTechnologies&rsquo; ERV is the benchmark.</p>', 'https://dev.lasindo.com//storage/files/3/products/valves/elec-relief.png', NULL, '2020-12-26 08:09:15', '2020-12-26 08:09:15'),
(178, 'Products', 'Valves', 'Valv Technologies', 'sidebyside', 'Parallel Slide Gate Valves', NULL, NULL, '<p>IsoTech&reg;, ValvTechnologies&rsquo; parallel slide gate (PSG) seat-protected valves, are the culmination of years of practical design enhancements and eliminating the limitations of typically accepted norms in gate valve design. Proven precisely right for steam and feed water isolation applications, IsoTech&reg; valves offer our rigorous four-year, zero-leakage warranty for steam and water applications and low-cost maintainability.</p>', 'https://dev.lasindo.com//storage/files/3/products/valves/parallel.png', NULL, '2020-12-26 08:10:57', '2020-12-26 08:10:57'),
(179, 'Products', 'Valves', 'Valv Technologies', 'sidebyside', 'Automated Valve Package', NULL, NULL, '<p>ValvXpress&reg; automated packages are the perfect solutions for customers who demand quick delivery of a zero-leakage automated valve solution for severe service water and steam applications. The package includes the superior quality of the V1-1 valve and ValvTechnologies&rsquo; actuator, backed with the best four-year guarantee in the industry.</p>', 'https://dev.lasindo.com//storage/files/3/products/valves/auto-valv.png', NULL, '2020-12-26 08:12:18', '2020-12-26 08:12:18'),
(180, 'Products', 'Valves', 'Valv Technologies', 'sidebyside', 'Acid Injection Valve', NULL, NULL, '<p>No-Leak Safety for Mineral Processing<br />\r\nTo maintain cost-effective operation of pressure acid leaching, there is the ValvTechnologies&rsquo; severe service acid injection ball valve. A unique product, it was created and designed for the isolation and emergency shutdown of high-pressure acid leaching (HPAL) autoclave acid injection systems. This valve uses ceramic seats, coatings, and exotic metals to provide plant safety in the harshest of process conditions. Its operating benefits continue to be demonstrated every day in mining facilities throughout the world.<br />\r\nThe acid injection valve product line is used in the mining industry for high-pressure acid leaching HPAL of nickel, using autoclave technology. The acid injection valve product is an invention of ValvTechnologies, in response to a need for a special application valve, as a result of a hazard and operability study which was carried out for the Bulong Nickel Project in 1997.</p>', 'https://dev.lasindo.com//storage/files/3/products/valves/acid-injection.png', NULL, '2020-12-26 08:14:31', '2020-12-26 08:14:31'),
(181, 'Products', 'Valves', 'Valv Technologies', 'sidebyside', 'Slurry Valves', NULL, NULL, '<p>With the largest installed base of any metal seated ball valve manufacture in slurry service, ValvTechnologies understands what is required in difficult abrasive applications. ValvTechnologies&rsquo; slurry products have been designed based upon our 30 years of experience in the mining industry. Our integral seat design, zero-leakage testing requirements, and in-house coating capabilities have become the standard for long valve service life and reduced downtime in critical slurry applications where the valve cost is only a small fraction of the overall cost of downtime caused by a valve failure.</p>', 'https://dev.lasindo.com//storage/files/3/products/valves/slurry.png', NULL, '2020-12-26 08:15:46', '2020-12-26 08:15:46');
INSERT INTO `products` (`id`, `category`, `section`, `brand`, `layout`, `name`, `abbreviation`, `fullName`, `desc`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(182, 'Products', 'Valves', 'Valv Technologies', 'sidebyside', 'Double Block-and-Bleed', NULL, NULL, '<p>Safest to Service.<br />\r\nImprove protection and isolate large equipment areas safely by specifying ValvTechnologies&rsquo; valves with double block-and- bleed capability. The proven-in-the-field ValvTechnologies &ldquo;package approach&rdquo; lowers installation costs &ndash; and saves time &ndash; compared to individual component assembly. A bi-directional upstream seat system, plus a bleed connection with a standard isolation valve, allows superior flexibility in use, as well as smooth, low-torque operation. Customers save on wear and tear, improve valve service life, and maximize effective in-line performance.</p>', 'https://dev.lasindo.com//storage/files/3/products/valves/double-block.png', NULL, '2020-12-26 08:17:46', '2020-12-26 08:17:46'),
(183, 'Products', 'Valves', 'Valv Technologies', 'sidebyside', 'Check Valves', NULL, NULL, '<p>ValvTechnologies / DFT&reg; Nuclear Check Valves.<br />\r\nValvTechnologies is an exclusive distributor of in-line check valves for nuclear applications and licensed manufacturer of ASME III and safety-related check valves.<br />\r\nDesigned to prevent &ldquo;water hammer&rdquo;, the spring-assisted, in-line design featured in all DFT&reg; check valves ensures that as the forward flow in a pipeline decreases, the disc begins moving closer to the seat. By the time the flow stops, the disc is closed against the seat, preventing flow reversal. This prevents the valve from slamming closed, causing &ldquo;water hammer&rdquo; and the resultant noise and damage to piping systems.</p>', 'https://dev.lasindo.com//storage/files/3/products/valves/check-valves.png', NULL, '2020-12-26 08:22:59', '2020-12-26 08:22:59'),
(184, 'Products', 'Valves', 'Valv Technologies', 'sidebyside', 'Control Valves', NULL, NULL, '<p>ValvTechnologies&rsquo; Xactrol&reg; severe service control valves are engineered for applications where minimum flow and relatively high differential pressures are required. They provide &ldquo;exact&rdquo; flow control solution every time, from minimum or normal control to full rangeability across a wide range of pressure drops and conditions.</p>', 'https://dev.lasindo.com//storage/files/3/products/valves/control-valves.png', NULL, '2020-12-26 08:23:34', '2020-12-26 08:23:34'),
(186, 'Products', 'Temperature', 'Ametek | Jofra', 'full', 'RTC Reference Temperature Calibrator', 'RTC', 'Reference Temperature Calibrator', '<p>to &plusmn; 0.04&deg;C; -100 to 700&deg;C Our most advanced and accurate temperature calibrator with the widest temperature range. Combine with the DLC system for perfect temperature uniformity.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-jofra/rtc2.png', NULL, '2020-12-26 08:26:42', '2020-12-26 08:26:42'),
(187, 'Products', 'Temperature', 'Ametek | Jofra', 'full', 'PTC Professional Temperature Calibrator', 'PTC', 'Professional Temperature Calibrator', '<p>to &plusmn; 0.18&deg;C; -23 to 650&deg;C The ITC Series provides portability and ease-of-use at a reasonable cost, without sacrificing accuracy, performance, or features.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-jofra/itc.png', NULL, '2020-12-26 08:27:13', '2020-12-26 08:27:13'),
(188, 'Products', 'Temperature', 'Ametek | Jofra', 'full', 'CTC Compact Temperature Calibrator', 'CTC', 'Compact Temperature Calibrator', '<p>to &plusmn; 0.2&deg;C; -25 to 1205&deg;C The CTC Series is a fast, timesaving, reliable temperature calibrator designed for on-site use, featuring buttons for switch test &amp; auto stepping</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-jofra/ctc.png', NULL, '2020-12-26 08:27:44', '2020-12-26 08:27:44'),
(189, 'Products', 'Temperature', 'Ametek | Jofra', 'full', 'MTC Marine Temperature Calibrator', 'MTC', 'Marine Temperature Calibrator', '<p>to &plusmn; 0.4&deg;C; -17 to 650&deg;C The MTC Series is a fast, timesaving, cost effective calibrator designed specifically for the maritime industry, with a three year calibration interval.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-jofra/mtc.png', NULL, '2020-12-26 08:28:13', '2020-12-26 08:28:13'),
(190, 'Products', 'Temperature', 'Ametek | Jofra', 'full', 'ETC Easy Temperature Calibrator', 'ETC', 'Easy Temperature Calibrator', '<p>to &plusmn; 0.5&deg;C; -10 to 400&deg;C The ETC Series is the ideal dry block temperature calibrator when time is the critical factor and the highest accuracy is not a requirement.</p>', 'https://dev.lasindo.com//storage/files/3/products/ametek-jofra/etc.png', NULL, '2020-12-26 08:28:39', '2020-12-26 08:28:39'),
(191, 'Products', 'Temperature', 'CCS', 'full', 'INDUSTRIAL TEMPERATURE SWITCHES', NULL, NULL, '<p>Two types of temperature switches include switches that use RTDs and thermocouple or mechanical temperature switches utilizing a forced balance assembly. They are available with direct or remote mount options for a wide range of application in a hazardous and non-hazardous environments.</p>', 'https://dev.lasindo.com//storage/files/3/products/ccs/ind-temp.png', NULL, '2020-12-18 03:43:26', '2020-12-18 03:43:26'),
(192, 'Products', 'Temperature', 'CCS', 'full', 'INDUSTRIAL PRESSURE SWITCHES', NULL, NULL, '<p>Pressure switches are instruments used to turn on/off a device in a process control system. Models including gauge pressure, differential pressure and vacuum pressure switches. The construction include designs suitable for general purpose, weatherproof or explosion proof areas.</p>', 'https://dev.lasindo.com//storage/files/3/products/ccs/ind-pressure.png', NULL, '2020-12-18 03:43:07', '2020-12-18 03:43:07'),
(193, 'Products', 'Fire & Gas Detection', 'Simplex', 'full', 'SIMPLEX 4010ES FIRE ALARM CONTROL', NULL, NULL, '<p>The Simplex 4010ES fire alarm system is a highly flexible and powerful 1,000-point addressable analog system for small- to mid-sized facilities. Unlike many systems of this size, points can be used for detectors, modules or manual stations as needed to meet the requirements of each building.<br />\r\nLabor-saving features such as device-level ground fault isolation and almost dirty smoke sensor status reports reduce installation time for electrical contractors and allows for proactive maintenance to be scheduled at one-time to help eliminate unwanted nuisance alarms for owners and end-users<br />\r\n<br />\r\n<strong>HIGLIGHT</strong></p>\r\n\r\n<ul>\r\n	<li>Scalable for growing needs - With a 250-point base configuration that expands to 1,000 points, the 4010ES is ideally suited for mid-sized facilities like hotels and motels, hospitals, clinics, retail stores, schools, data management centers and commercial buildings. The 4010ES can handle the needs of your facility today and grow as you do.</li>\r\n	<li>IP networking offers speed and flexibility at every stage - ES Net IP networking technology unlocks powerful benefits for life safety systems. Faster data rates and a wide range of wiring media choices delivers greater efficiency in installation, operation and maintenance. And because IP is a standard, proven technology, as it continues to evolve over time, so will ES Net, making your life safety network more resilient and future-proof.</li>\r\n	<li>True Alert ES - the industry&rsquo;s most advanced line of intelligent, fully addressable notification appliances and speakers - Constant electronic supervision of each device and revolutionary self-testing capability help ensure that appliances will work when needed and enable building owners to avoid tedious and potentially expensive after-hours manual testing.</li>\r\n	<li>Suppression release - Compatible with the full range of SIMPLEX suppression release peripherals and maintenance switches, the 4010ES is a flexible solution for controlling single or multi-hazard suppression systems.</li>\r\n	<li>Use True Alarm Addressable Sensors - The 4010ES system can control Simplex&rsquo;s industry-leading True Alarm addressable sensors.</li>\r\n	<li>Emergency Voice Communication - In conjunction with a standalone Simplex 4003EC voice control panel, the 4010ES can be part of a large Emergency Communications or Mass Notifiaacation System.</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/simplex/4010es.png', NULL, '2020-12-26 08:32:58', '2020-12-26 08:32:58'),
(194, 'Products', 'Fire & Gas Detection', 'Simplex', 'full', 'SIMPLEX 4007ES FIRE ALARM CONTROL', NULL, NULL, '<p>Simplex fire alarm solutions are trusted the world over, helping protect millions of people every day in large facilities that range from hospitals, hotels and universities to airports, office buildings and sky scrapers. Customers choose Simplex products for their industry-leading scalability, reliability, long-term value and technology. Now, the Simplex 4007ES panel brings advanced Simplex performance to smaller facilities.<br />\r\nWe&rsquo;ve packed many of the features you&rsquo;d find in our larger panels &ndash; like networking, multi-hazard suppression release, computer port protocol for building system integration, True Alert ES addressable notification technology, and a color touchscreen display&ndash; into a compact, cost-effective package.<br />\r\n<br />\r\n<strong>HIGLIGHT</strong></p>\r\n\r\n<ul>\r\n	<li>The perfect fire alarm system for small to mid-sized buildings (up to 250 points)</li>\r\n	<li>Can be networked with other Simplex fire alarm panels and graphical workstations</li>\r\n	<li>Agency Listed for multi-hazard suppression release applications.</li>\r\n	<li>Computer port protocol support enables integration with other building systems.</li>\r\n	<li>4.3&rdquo; (10.9cm) color touchscreen for easy, intuitive operation</li>\r\n	<li>Flexible wiring infrastructure that makes upgrading and expanding systems easier and more cost effective.</li>\r\n	<li>Conveniently located USB port simplifies the transfer of panel information and programming.</li>\r\n	<li>Programmable End of Line Resistor configuration means it&rsquo;s easier to retrofit existing systems and eliminates the need to find and replace the installed resistor.</li>\r\n	<li>Built-in True Alert ES addressable notification to provide unobtrusive self-testing, programmable candela settings and per point identification of all alarm and fault conditions.</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/simplex/4007es.png', NULL, '2020-12-26 08:33:28', '2020-12-26 08:33:28'),
(195, 'Products', 'Fire & Gas Detection', 'Simplex', 'full', 'SIMPLEX 4004R SUPPRESSION REALESE PANEL', NULL, NULL, '<p>The Simplex 4004R is a two-hazard releasing system that incorporates big-panel features into a small and cost-effective package. Its dual hazards can be programmed to provide an agent release for one hazard and pre action or deluge for the other, giving a high degree of flexibility and protection. With the early detection capability of the agent release hazard, the fire should be extinguished before the pre action or deluge system is activated.<br />\r\n<br />\r\n<strong>HIGLIGHT</strong></p>\r\n\r\n<ul>\r\n	<li>Fire alarm control panel designed specifically for suppression release operation</li>\r\n	<li>Four initiating device circuits (IDCs)</li>\r\n	<li>Two notification appliance circuits (NACs)</li>\r\n	<li>Two releasing appliance circuits (RACs)</li>\r\n	<li>Two special purpose monitor inputs (SPMs) that accept manual release request and manual abort request for Agent Release systems, and waterflow and supervisory for Pre action or Deluge systems</li>\r\n	<li>Three auxiliary relays with selectable functions</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/simplex/4004r.png', NULL, '2020-12-26 08:33:59', '2020-12-26 08:33:59'),
(196, 'Products', 'Fire & Gas Detection', 'Simplex', 'full', 'SIMPLEX 4006 FIRE ALARM CONTROL PANEL', NULL, NULL, '<p>Simplex 4006 Series fire alarm control panels are ideal for smaller facilities that require from five to ten initiating device circuits and four notification appliance circuits. The panel includes a built-in DACT for easy connection to control station monitoring, a 2x20 character display, and multi-function keypad.<br />\r\n<br />\r\n<strong>HIGLIGHT</strong></p>\r\n\r\n<ul>\r\n	<li>Central Station Ready - A built-in DACT makes it easy to connect the 4006 to a central monitoring facility.</li>\r\n	<li>Flexible programming - The 4006 can be programmed from either the front panel keypad or a service PC.</li>\r\n	<li>Automatic Programming - In start-up mode the 4006 can automatically find all connected devices and incorporate them in a general alarm program, reducing installation time and labor.</li>\r\n	<li>Voice Compatible - When paired with a Simplex 4003EC voice control panel, the 4006 can become part of a facility wide emergency communications or mass notification system.</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/simplex/4006.png', NULL, '2020-12-26 08:36:05', '2020-12-26 08:36:05'),
(197, 'Products', 'Fire & Gas Detection', 'Simplex', 'full', 'SIMPLEX 4003 EC SMALL VOICE PANEL', NULL, NULL, '<p>The Simplex 4003EC Small Voice Panel is an advanced emergency voice/alarm communications panel that can serve as a multi-function voice control panel for single building applications, or form part of a large Emergency Communications or Mass Notification system. Its flexible design allows remote placement of amplifiers for up to 5,000 watts, and it has the ability to replace local messaging with centralized messaging, a key Emergency Communications requirement.<br />\r\n<br />\r\n<strong>HIGLIGHT</strong></p>\r\n\r\n<ul>\r\n	<li>Facility wide Emergency Communication - Multiple 4003EC control panels can be interconnected across a Simplex fire alarm network for campus-wide emergency communication.</li>\r\n	<li>Activate up to 8 separate messages -Initiate messages via direct connection to fire alarm control panel or the supervised connection to relay contact closures.</li>\r\n	<li>Use Pre-Recorded Messages or Create Your Own - Select from eight digitally pre-recorded messages using the control panel switches or the fire alarm control panel. Custom messages can be ordered or recorded directly at the panel.</li>\r\n	<li>Live Message Broadcast - Broadcast live messages using either internal or remote microphones. Up to 18 remote microphones are supported for compatibility with UFC (Unified Facilities Criteria) 4-021-01 requirements.</li>\r\n	<li>Remote Booster amplifiers - Booster amplifiers are available to expand coverage area or extend coverage to multiple notification areas.</li>\r\n</ul>', 'https://dev.lasindo.com//storage/files/3/products/simplex/4003.png', NULL, '2020-12-26 08:37:23', '2020-12-26 08:37:23'),
(198, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'The FL500 UV/IR Flame Detector', NULL, NULL, '<p>UV Infrared Detector with false alarm immunity.<br />\r\nThe FL500 UV/IR Flame Detector monitors for radiation emitted by a flame in both the ultraviolet (UV) and infrared (IR) spectral ranges. This UV/IR combination provides a fast response time and increased false alarm immunity against sources of radiation for reliable protection.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/fl500.png', NULL, '2020-12-26 08:39:24', '2020-12-26 08:39:24'),
(199, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'The General Monitors S5000 Gas Monitor', NULL, NULL, '<p>The General Monitors S5000 Gas Monitor is the ultimate gas detector for extreme environments needing to detect oxygen, toxic and combustible gases. It operates over a wide temperature range using a variety of gas sensing technologies. Breakthrough XCell&reg; gas sensors with TruCal&reg; technology extends calibration cycles up to 18 months and actively monitors sensor integrity for ultimate peace of mind.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/general-monitors.png', NULL, '2020-12-26 08:41:11', '2020-12-26 08:41:11'),
(200, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'Chillgard® 5000 Refrigerant Leak Monitor', NULL, NULL, '<p>The Chillgard&reg; 5000 Refrigerant Leak Monitor provides the earliest level of detection of costly refrigerant gas leaks in mechanical equipment rooms. Sampling system with patented photoacoustic infrared (PAIR) technology detects leaks as low as 1 part per million (ppm). Intuitive, touchscreen user interface makes it easy to operate. Predictive maintenance and diagnostics keep you operational..</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/chillgard-5000.png', NULL, '2020-12-26 08:41:54', '2020-12-26 08:41:54'),
(201, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'FlameGard® 5 MSIR Detector', NULL, NULL, '<p>MSA&#39;s FlameGard&reg; 5 MSIR Detector is an advanced multi-spectrum flame detector designed to provide superior false alarm immunity with the widest field of view. The detector employs a state-of-the-art multi-spectrum infrared (MSIR) sensor array with a sophisticated Neural Network Technology (NNT) system.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/flamegard.png', NULL, '2020-12-26 08:43:21', '2020-12-26 08:43:21'),
(202, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'Ultima® Calibrator', NULL, NULL, '<p>The Ultima Calibrator offers the industry&#39;s simplest, quickest calibration. Simple, three-button device is purpose-built for calibrating and changing the address of Ultima and Ultima X Gas Monitors and the Toxgard II Gas Monitor.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/ultima-calibrator.png', NULL, '2020-12-26 08:44:15', '2020-12-26 08:44:15'),
(203, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'The FL3100H-Hydrogen', NULL, NULL, '<p>The FL3100H-Hydrogen is an Ultraviolet / Infrared flame detector designed specifically to detect hydrogen (H2) fires and provide alarm outputs directly from the detector while maintaining false alarm immunity. It detects H2 fires by monitoring in both the ultraviolet (UV) and infrared (IR) spectral ranges, making it highly immune to false alarms. Configurations with dual Modbus and HART are available. Modbus and HART data can be used for predictive maintenance. The flame detector&#39;s electronics are integral within its explosion-proof housing, allowing detector information to be processed at the point of detection..</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/fl3100h.png', NULL, '2020-12-26 08:45:40', '2020-12-26 08:45:40'),
(204, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'HazardWatch Fire and Gas System', NULL, NULL, '<p>Fire and Gas Detection System. An innovative, modular system that combines highly reliable programmable logic controller (PLC) technology with our advanced gas and flame field devices. It is highly scalable, making it suitable for small systems to large plant-wide applications. Offering intelligence, flexibility and reliability, the HazardWatch System&#39;s controller hardware configuration and software has been tested by Factory Mutual to verify NFPA 72 compliance.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/hazardwatch.png', NULL, '2020-12-26 08:46:12', '2020-12-26 08:46:12'),
(205, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'GasGard XL Controller', NULL, NULL, '<p>Monitor up to eight remote gas sensors with the highly accurate wall-mounted GasGard XL Controller. The controller&#39;s large, multi-language LCD display provides real-time readings, offers full-system diagnosis and shows intuitive icons. Housed in durable, fire-retardant ABS plastic, the controller is suitable for a variety of chemical, industrial and waste water environments. The sensor also features a buzzer that sounds up to 85 dB.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/gasgard.png', NULL, '2020-12-26 08:51:14', '2020-12-26 08:51:14'),
(206, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'Zero Two Series Gas and Flame Detection System', NULL, NULL, '<p>Monitor up to eight remote gas sensors with the highly accurate wall-mounted GasGard XL Controller. The controller&#39;s large, multi-language LCD display provides real-time readings, offers full-system diagnosis and shows intuitive icons. Housed in durable, fire-retardant ABS plastic, the controller is suitable for a variety of chemical, industrial and waste water environments. The sensor also features a buzzer that sounds up to 85 dB.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/zero-two.png', NULL, '2020-12-26 08:52:04', '2020-12-26 08:52:04'),
(207, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'The 9010/9020 SIL controller', NULL, NULL, '<p>The 9010/9020 SIL controller comes with advanced design and innovative features for monitoring up to 20 channels. The 9010 controller operates with one independent sensor, while the 9020 operates with two independent sensors per control module. Each module comes with an independent AC/DC power supply for increased system reliability. Both units feature full internal diagnostics, which minimize false alarms and unexpected down time. The controller powers up the remote gas detectors, while its large four-digit LCD and LED provide crucial information such as gas concentration, alarm status and more.<br />\r\nThe 9010/9020 LCD controller monitors up to 20 channels and comes with an independent power supply. The LCD version has approvals for FM (North America) and CCCF (China) whereas the 9010/9020 SIL controller is ATEX and SIL 2 certified.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/sil-controller.png', NULL, '2020-12-26 08:58:09', '2020-12-26 08:58:09'),
(208, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'The SUPREMATouch', NULL, NULL, '<p>Fire and Gas Detection System for diverse range of industries and applications.<br />\r\nThe SUPREMATouch features a large colour touchscreen display with a title-based menu structure to optimize intuitive operation. It can be used with a wide range of detectors for combustible gas, toxic gas and oxygen deficiency. Output options include relays and 4-20 mA outputs.<br />\r\nRemote racks can be connected (satellite structure), which expands control systems and reduces cabling costs. Interfacing to external systems is provided by using Modbus or Profibus. The SUPREMATouch has been certified according to ATEX and is suitable for virtually any safety related application including redundant systems with up to a Safety Integrity Level (SIL) 3 rating (EN 61508).<br />\r\nThe intuitive SUPREMA Manager Software is intended for configuration, parameterization and calibration of the SUPREMATouch Fire and Gas Controller. It offers the option to create detailed and clearly laid out reports to support documentation and supports all the features of the SUPREMATouch.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/suprematouch.png', NULL, '2020-12-26 08:58:40', '2020-12-26 08:58:40'),
(209, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'Ultima® Controller', NULL, NULL, '<p>The Ultima Controller is purpose-designed and built to provide complete access to all advanced features of the Ultima and Ultima X Gas Monitors, as well as the Toxgard II Gas Monitor. Via its full-function and password-protected keypad, users can set the real time clock, set alarm levels, change span-gas values, display date of last calibration, display minimum, maximum and average gas values, change address and set future calibration time/date in addition to providing basic calibration functions.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/ultima-controller.png', NULL, '2020-12-26 09:03:15', '2020-12-26 09:03:15'),
(210, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'TA102A Single Channel Combustible Trip Amplifier Module', NULL, NULL, '<p>The TA102A is a single-channel Combustible Gas Trip Amplifier Module designed for use with one General Monitors intelligent transmitter to monitor combustible gases and vapors within the lower explosive limit (LEL) and provide status indication and alarm outputs. Microprocessor-based electronics allow all options to be user selectable through a front panel interface (mode / select switch and digital display). A digital display indicates fault codes and set up options. Other features include: LED indications of status, as well as both open collector and relay outputs for fault, low alarm and high alarm.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/ta102.png', NULL, '2020-12-26 09:06:30', '2020-12-26 09:06:30'),
(211, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'Calibration Kits', NULL, NULL, '<p>Simple, accurate calibration is easy with these economical, all-in-one kits. Choose from 14 different types for sensor and instrument calibration. Kits include zero and span cylinders, regulators, tubing, accessories and instructions. All kits housed in a lightweight carrying case, making it convenient to carry everything directly to the sensor location or job site.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/calibration-kits.png', NULL, '2020-12-26 09:07:45', '2020-12-26 09:07:45'),
(212, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'SB100 Ultrasonic Bump Tester', NULL, NULL, '<p>The SB100 is a hand-held battery-operated rechargeable ultrasonic tester designed to bump test General Monitors ultrasonic gas leak detectors. The SB100 is useful for quick tests where physical access to the ultrasonic gas detector can be difficult. The unit can be used to bump test up to 18 meters away from the detector in Class 1, Div 1&amp;2 hazardous areas.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/sb100.png', NULL, '2020-12-26 09:08:39', '2020-12-26 09:08:39'),
(213, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'SM5000 Sampling Module', NULL, NULL, '<p>Built for safety programs that demand gas concentration measurement before allowing entrance to an area, the SM5000 Sampling Module is exclusively designed to work with the Ultima X5000, Ultima XE and General Monitors S5000 gas monitors. The unit features an explosion-proof design and reliably extracts a sample from any confined or inaccessible area&mdash;or any area that is too hot, cold, or otherwise harsh&mdash;and delivers gas concentration reading directly to the installed gas monitor.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/sm5000.png', NULL, '2020-12-26 09:09:32', '2020-12-26 09:09:32'),
(214, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'Catalytic Bead Sensors', NULL, NULL, '<p>The General Monitors catalytic bead gas sensors are well known for their sensitivity, reliability and longevity and make them the first choice for most users of the catalytic oxidation gas detection principle. Every component is manufactured in-house to ensure optimum performance. Careful matching of the active and reference elements (&quot;beads&quot;) result in a sensor that has negligible zero drift with respect to changes in humidity, pressure, and temperature.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/catalytic-sensors.png', NULL, '2020-12-26 09:10:07', '2020-12-26 09:10:07'),
(215, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'RGC-IR - Remote Gas Calibrator for Point IR Detectors', NULL, NULL, '<p>The remote gas calibrator, RGC-IR, is designed to be permanently installed on a combustible IR gas detector. The RGC-IR provides protection from outside elements and allows the user to apply calibration gas (@ 50 psi) to the detector from a remote source.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/rgc-ir.png', NULL, '2020-12-26 09:11:43', '2020-12-26 09:11:43'),
(216, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'Electrochemical Sensors', NULL, NULL, '<p>The General Monitors electrochemical gas sensors are highly sensitive to toxic gases including carbon monoxide, H2S, hydrogen, hydrogen chloride, ammonia, chlorine, chlorine dioxide, &nbsp;nitric oxide, nitrogen dioxide, ozone, SO2, and oxygen deficiency.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/electrochemical.png', NULL, '2020-12-26 09:12:34', '2020-12-26 09:12:34'),
(217, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'RGC-HT - Remote Gas Calibrator for High Temperatures', NULL, NULL, '<p>To verify the proper operation of a catalytic combustible gas sensor, it is necessary to periodically apply a gas of known concentration to the sensor. This is usually done manually at the site with gas supplied from a small lecture bottle. As the sensor reacts to the calibration gas, adjustments are made to the monitoring system to bring its calibration into agreement with the known concentration of the calibration gas. At times, sensors are mounted in inaccessible locations, requiring expensive catwalks or scaffolding to reach them. The High Temp Remote Gas Calibrator (RGC-HT) allows the calibration gas to be applied to the catalytic bead sensor from easily accessible locations. The RGC-HT is used for blocking ambient air and redirecting methane or other light hydrocarbon gases to the catalytic bead sensor for calibration or testing sensor accuracy in various environments. The RGC-HT tests or calibrates the General Monitors Catalytic Bead sensor with 50% LEL methane or other light hydrocarbon gas. The unit is capable of calibrating and detecting gases in various wind conditions (up to 45 mph) and temperatures (up to 200&deg;C when used with high temperature sensor).</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/rgc-ht.png', NULL, '2020-12-26 09:13:40', '2020-12-26 09:13:40'),
(218, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'ARGC - Automatic Remote Gas Calibrator', NULL, NULL, '<p>To verify the proper operation of a catalytic combustible gas sensor, it is necessary to periodically apply a gas of known concentration to the sensor. This is usually done manually at the site with gas supplied from a small lecture bottle. As the sensor reacts to the calibration gas, adjustments are made to the monitoring system to bring its calibration into agreement with the known concentration of gas. At times, sensors are mounted in inaccessible locations, requiring expensive catwalks or scaffolding to reach them. The Automatic Remote Gas Calibrator (ARGC) allows the calibration gas to be applied to the catalytic bead sensor from easily accessible locations. The ARGC is used for blocking ambient air and redirecting methane to the catalytic sensor for calibration or testing sensor accuracy. The ARGC tests or calibrates the General Monitors catalytic sensor with 50% LEL methane. The unit is capable of calibrating gas at wind velocities up to 50 mph. Note: the RGC (P/N 80153-1), used manually with a pressure regulator (P/N 80147-1), is suitable for calibrating with any light hydrocarbon.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/argc.png', NULL, '2020-12-26 09:14:18', '2020-12-26 09:14:18'),
(219, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'RGC - Remote Gas Calibrator for', NULL, NULL, '<p>The Remote Gas Calibrator (RGC) allows calibration gas to be applied to a remotely located catalytic bead sensor from an easily accessible location. The RGC is used for blocking ambient air and redirecting methane to the catalytic sensor for calibration or testing sensor accuracy. The RGC tests or calibrates the General Monitors catalytic sensor with 50% LEL methane. The unit is capable of calibrating gas at wind velocities up to 50 mph. The RGC is used manually with a pressure regulator (P/N 80146-1) and is suitable for calibrating with any light hydrocarbon.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/rgc-remote.png', NULL, '2020-12-26 09:15:17', '2020-12-26 09:15:17'),
(220, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', '1701 Portable Test and Calibration Unit', NULL, NULL, '<p>The 1701 is a portable test and calibration unit used to verify the operation and calibrate certain ultrasonic gas leak detectors. Although the detectors do not require regular maintenance, the 1701 can be used to satisfy the requirements for regular plant maintenance. Further, the 1701 requires no electrical connection to the gas leak detector but is simply placed over the sensor head of the gas leak detector</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/1701.png', NULL, '2020-12-26 09:16:14', '2020-12-26 09:16:14'),
(221, 'Products', 'Fire & Gas Detection', 'MSA', 'sidebyside', 'Catalytic Bead Accessories', NULL, NULL, '<p>General Monitors offers a wide variety of accessories for our catalytic bead gas sensors.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa/catalytic-acc.png', NULL, '2020-12-26 09:18:36', '2020-12-26 09:18:36'),
(222, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'V-FORM™ Safety Harness', NULL, NULL, '<p>The V-FORM&trade; full body safety harness allows you to focus on your job - not your harness.<br />\r\nFeaturing a patent-pending RaceFORM&trade; buckle, bulky chest straps are eliminated for a close and comfortable fit. The athletic cut of the V-FORM harness contours to the body improving upper torso movement on the job, while its downward adjusting design allows you to quickly adjust your harness for a fit that lasts throughout the day.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/vform-safety.png', NULL, '2020-12-27 05:40:53', '2020-12-27 05:40:53'),
(223, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'V-FIT™ Safety Harness', NULL, NULL, '<p>Featuring a patent-pending RaceFLEX&trade; buckle, bulky chest straps are eliminated for a close and comfortable fit. The athletic cut of the V-FIT harness contours to the body, improving upper torso movement on the job, while soft shoulder padding helps to eliminate pressure points and chafing for all day comfort.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/vfit-safety.png', NULL, '2020-12-27 05:41:45', '2020-12-27 05:41:45'),
(224, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'V-FORM™ Full Body Harness', NULL, NULL, '<p>With lightweight and durable components, MSA V-FORM&trade; range of safety harnesses provide full comfort to the users. These full body harnesses come in the catchy color combination of MSA Green and Gray.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/vform-fullbody.png', NULL, '2020-12-27 05:42:30', '2020-12-27 05:42:30'),
(225, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'EVOTECH® Harnesses', NULL, NULL, '<p>For the latest design features that improve user comfort, ease of use, durability, and user safety, choose the&nbsp; EVOTECH&nbsp;&reg; Harness. The EVOTECH harness has Nanosphere&reg; coating on the webbing that repels grease, dirt &amp; moisture.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/evotech.png', NULL, '2020-12-27 05:43:02', '2020-12-27 05:43:02'),
(226, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Gravity® Suspension Harnesses', NULL, NULL, '<p><strong>Fall Protection Safety Harness - designed for comfort.</strong><br />\r\nThe Gravity Suspension harness provides unparalleled comfort for all applications that require extended periods of time in a fall protection harness. &nbsp;The features and benefits of this new family of harnesses from MSA are designed to reduce fatigue and allow users to perform their duties better and in more comfort.<br />\r\n<br />\r\nModels are designed for very easy donning, one hand adjustment at all adjusters, and modern styling.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/grav-suspension.png', NULL, '2020-12-27 05:46:40', '2020-12-27 05:46:40'),
(227, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Workman® Harnesses', NULL, NULL, '<p>Quality, comfort, and value come together in the Workman line of products. Workman Full Body Harnesses feature lightweight components and durable webbing.<br />\r\n<br />\r\nFor corrosive environments, the Workman&reg; Stainless Steel Full Body Harness comes equipped with stainless steel hardware.&nbsp; Stainless steel components are resistant to harsh environments so they maintain durability when used in corrosive environments.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/workman-harness.png', NULL, '2020-12-27 05:47:34', '2020-12-27 05:47:34'),
(228, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Gravity Utility ASTM Harness', NULL, NULL, '<p>Full Body Harness that can be used in a diverse number of applications like: Confined Space, Rescue, Transmission Tower, Telecom Tower, Rope Access, and many others.<br />\r\n<br />\r\nUsing the Gravity Utility Harness you will also be protected by a fall and in addition the harness has been tested to continue to provide protection when an arc flash occurs.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/grav-utility.png', NULL, '2020-12-27 05:48:23', '2020-12-27 05:48:23'),
(229, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'V-TEC™ Mini Personal Fall Limiter', NULL, NULL, '<p><strong>Latchways Mini Single and Twin Leg Retractable Lanyard.</strong><br />\r\nThe V-TEC Mini retactable lanyard is the most compact &amp; lightweight self-retracting lanyard ever developed using multiple spring radial energy-absorbing technology. This new design eliminates the need for an external energy-absorber outside of the housing making it the smallest retractable lanyard on the market.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/vtec-mini.png', NULL, '2020-12-27 05:48:53', '2020-12-27 05:48:53'),
(230, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'MSA V-EDGE™ Mini Personal Fall Limiter', NULL, NULL, '<p><strong>The V-Edge 1.8m personal fall limiter is a light weight option for leading edge applications.</strong><br />\r\nEngineered for use in overhead and foot-level tie off points, and where leading edge hazards are a concern. The device has been successfully tested for horizontal use over a steel edge without burrs using the methods in VG11 CNB/P/11.060 (edge type A - 0.5 mm). The V-EDGE Mini PFL is also specifically tested and suitable for use on Mobile Elevating Working platforms (DIN 19427:2017-04, a peak force at the anchor point below 3kN).</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/vedge-mini.png', NULL, '2020-12-27 05:50:22', '2020-12-27 05:50:22'),
(231, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'V-TEC™ Personal Fall Limiter', NULL, NULL, '<p>The V-TEC PFL Retractable Lanyard is the most compact &amp; lightweight self-retracting lanyard ever developed in its class using multiple spring radial energy-absorbing technology. This new design eliminates the need for an external energy-absorber outside of the housing making it the smallest retractable lanyard in its class on the market.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/vtec-personal.png', NULL, '2020-12-27 05:50:56', '2020-12-27 05:50:56'),
(232, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'V-EDGE™ Leading Edge Self - Retracting Lifeline', NULL, NULL, '<p>Specifically engineered and tested for foot-level tie off, the V-EDGE&trade; Self Retracting Lifeline offers a dependable means for leading edge fall protection. The V-EDGE SRL can be used in a variety of applications, from over head to horizontal tie off points, and where sharp edges are a concern.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/vedge-leading.png', NULL, '2020-12-27 05:51:49', '2020-12-27 05:51:49'),
(233, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Latchways Sealed Self-Retracting Lanyards', NULL, NULL, '<p><strong>Sealed Retractable Lanyard.</strong><br />\r\nThe Latchways Sealed Self-Retracting Lifeline range offers a dependable means of fall protection and has been specifically designed for use in harsh environments such as oil rigs, wind turbines and other offshore applications.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/latchways-sealed.png', NULL, '2020-12-27 05:52:32', '2020-12-27 05:52:32'),
(234, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Latchways Standard Self-Retracting Lanyards', NULL, NULL, '<p><strong>Standard Retractable Lanyard.</strong><br />\r\nThe Latchways Standard Self-Retracting Lanyard range offers a dependable means of fall protection and has been specifically designed for use in a number of different environments enabling an unhindered hands-free fall protection solution. Utilizing modern engineering and innovative design, they are the most advanced self-retracting lanyards on the market.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/latchways-standard.png', NULL, '2020-12-27 05:55:03', '2020-12-27 05:55:03'),
(235, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'V-SERIES Standard Shock Absorbing Lanyard', NULL, NULL, '<p>The V-SERIES shock absorbing lanyard line simplifies product selection by offering a concise line of standard lanyards that meet a wide range of customer needs. These lightweight safety lanyards not only limit force on the body in a fall, but also on the anchor location. The shock absorbing pouch includes a clear, durable protective cover on the labels to increase service life, and allow for easy inspection.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/vseries-standard.png', NULL, '2020-12-27 05:55:48', '2020-12-27 05:55:48'),
(236, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Energy Absorbing Lanyards', NULL, NULL, '<p>The MSA new range of shock absorbing-lanyards including the versions with a leading edge approval! The energy absorber keeps fall arrest forces below 6 kN.The lanyards are available in web and kernmantel rope configurations with a variety of connectors.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/energy-absorbing.png', NULL, '2020-12-27 05:56:22', '2020-12-27 05:56:22'),
(237, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'V-SERIES Stretch Shock Absorbing Lanyard', NULL, NULL, '<p>Its light-weight and streamlined design offers complete protection while keeping arrest forces below ANSI and OSHA limits. The V-SERIES Stretch safety lanyard is raising the standard for shock-absorbing lanyards.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/vseries-stretch.png', NULL, '2020-12-27 05:56:58', '2020-12-27 05:56:58'),
(238, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Diamond® Energy-Absorbing Lanyard', NULL, NULL, '<p>Raising the standard for shock-absorbing lanyards, the FP Diamond Energy Absorbing Lanyard&#39;s light weight and streamlined design contains a strong and durable polyester sheath that&#39;s abrasion and UV-resistant. FP Diamond Energy Absorbing Lanyards connect the back (dorsal) D-ring of MSA full-body harnesses to a qualified anchorage and anchorage connector. The energy absorber keeps fall arrest forces below ANSI and OSHA limits and deceleration distance is controlled to a maximum of 42 inches.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/diamond-energy.png', NULL, '2020-12-27 05:58:30', '2020-12-27 05:58:30'),
(239, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Workman® Energy-Absorbing Lanyard', NULL, NULL, '<p>When free-fall distance can exceed two feet, use a lightweight, low-profile Workman&reg; Energy-Absorbing Lanyard. The energy absorber not only limits force on the body in a fall, but also on the anchor location. The shock absorber includes a clear, durable protective cover over the labels to increase service life and allow for easy inspection.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/workman-energy.png', NULL, '2020-12-27 05:59:03', '2020-12-27 05:59:03'),
(240, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Workman FP Stryder™ Beam Anchor', NULL, NULL, '<p><strong>Beam Anchor for Fall Protection.</strong><br />\r\nWorkman FP Stryder&trade; Beam Anchors quickly and easily attach to an I-beam flange without the need for any tools.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/workman-fp.png', NULL, '2020-12-27 06:00:01', '2020-12-27 06:00:01'),
(241, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Restraint Lanyards', NULL, NULL, '<p>A fall restraint lanyard connection is used between the anchor point and the body harness to prevent the user from reaching the fall area and work positioning applications. MSA restraint lanyards are available in web and kernmantel rope.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/restraint.png', NULL, '2020-12-27 06:00:34', '2020-12-27 06:00:34'),
(242, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Beam Trolley', NULL, NULL, '<p>The Beam Trolley is a moveable anchorage connector designed to support either personnel or material. Trolley consists of a carriage with four wheels containing anti-friction bearings that are connected to aluminum housings and to a steel cross bar. Cross bar provides an anchorage point for attaching fall protection equipment. Trolley can be positioned anywhere along an overhead beam to provide mobility in a horizontal direction, and fits the support beam as specified by the user.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/beam-strolley.png', NULL, '2020-12-27 06:01:37', '2020-12-27 06:01:37'),
(243, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Cable Sling', NULL, NULL, '<p>Intended to be used in a basket configuration only, the Cable Sling is approved for use by one person at a time with approved systems. Two strands of cable sling must be of equal length to ensure an even distribution of a load.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/cable-sling.png', NULL, '2020-12-27 06:02:11', '2020-12-27 06:02:11'),
(244, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Freestanding Constant Force® Post', NULL, NULL, '<p>MSA&#39;s Latchways&reg; Freestanding Constant Force post provides assured worker safety at height where there is an occasional or temporary requirement to access flat roofs or structures.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/freestanding.png', NULL, '2020-12-27 06:03:07', '2020-12-27 06:03:07'),
(245, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Carabiners', NULL, NULL, '<p>MSA offers a wide variety of carabiners for almost every application. All carabiners have a minimum breaking strength of 5,000 lbs/22,24 kN..</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/carabiners.png', NULL, '2020-12-27 06:03:32', '2020-12-27 06:03:32'),
(246, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Confined Space Entry Kits', NULL, NULL, '<p><strong>Confined Space Tripod kit for entry and rescue.</strong><br />\r\nTripod confined space entry kits provide simple ordering with all the necessary components for a complete safety system. Kits are ideal for applications in tanks, manholes and other vertical entry work practices.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/confined-space.png', NULL, '2020-12-27 06:03:59', '2020-12-27 06:03:59'),
(247, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Web Straps and Slings', NULL, NULL, '<p>MSA offers several web straps and slings for use in a variety of applications.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/web-straps.png', NULL, '2020-12-27 06:04:27', '2020-12-27 06:04:27'),
(248, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Workman® Rescuer', NULL, NULL, '<p>MSA&rsquo;s Workman Rescuer provides fast, easy and intuitive fall protection with integral bi-directional retrieval capability. Not only does the Workman Rescuer arrest the fall, its retrieval capability allows the fallen worker to ascend or descend to a safe location. This durable, economical addition to the Workman Series of products offers fast installation and setup, ideal for applications where time and ease of use are a priority. The Workman Rescuer is also a stand-alone retractable device, as the carrying handle may be used as an anchorage attachment.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/workman-rescuer.png', NULL, '2020-12-27 06:05:42', '2020-12-27 06:05:42'),
(249, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Personnel/Material Hoists', NULL, NULL, '<p><strong>Confined Space Personnel &amp; Material Hoist.</strong><br />\r\nThe new MSA Workman Winch is rugged, versatile and economical for lifting, lowering and positioning personnel and materials within confined space applications. Designed for maximum 400-lb (182 kg) workload for personnel and 620-lb (282 kg) for materials, the Workman Winch is built with tough thermoplastic housing to ensure high performance within the harshest environments. Winch offers integral, ergonomic carrying grip and unique, foldable handle for simple storage. Patent-pending bracket design allows for easy, rapid assembly.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/personnel-hoist.png', NULL, '2020-12-27 06:06:11', '2020-12-27 06:06:11'),
(250, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Latchways Personal Rescue Device®', NULL, NULL, '<p><strong>Personal Rescue Device - significantly reduces rescue time.</strong><br />\r\nThe MSA Latchways&reg; PRD is a lightweight, unobtrusive personal rescue device that is an integrated full body harness system for self-rescue. In the event of a fall the device lowers the person gently to the ground in a controlled descent.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/latchways-personal.png', NULL, '2020-12-27 06:06:53', '2020-12-27 06:06:53');
INSERT INTO `products` (`id`, `category`, `section`, `brand`, `layout`, `name`, `abbreviation`, `fullName`, `desc`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(251, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Workman® Tripods', NULL, NULL, '<p>MSA Tripods make confined space entry with vertical descent easy. The Workman Tripod features internal leg-locking mechanism, maximum height indicator on the tripod legs, cut-resistant leg pin retention chains, recessed product labels, reduced weight and integral carrying strap.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/workman-tripod.png', NULL, '2020-12-27 06:07:25', '2020-12-27 06:07:25'),
(252, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Anthron Descender', NULL, NULL, '<p>The Anthron Descender is a manually operated, controlled descent device most commonly used for suspended work positioning, self-evacuation, or rescue operations. A cam assembly provides friction on the rope to hold a load or allow the load to descend at a controlled rate. The system consists of a 7/16&quot; (11mm) rope, the Anthron Descender, and two carabiners. Proper roping and rigging diagrams are on the side of the device, which can be installed or removed at any point on the rope and has a working load of 300 pounds (136 kg).</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/anthron-descender.png', NULL, '2020-12-27 06:08:53', '2020-12-27 06:08:53'),
(253, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Rescue Utility System', NULL, NULL, '<p>The Rescue Utility System is primarily used for raising and lowering people or equipment in rescue and industrial work access and ideal for confined space applications. A 4:1 rescue pulley system Pulleys are equipped with a built-in anti-reversing lock. Offers rapid deployment, is virtually maintenance free, and is rated for two-person load.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/rescue-utility.png', NULL, '2020-12-27 06:09:26', '2020-12-27 06:09:26'),
(254, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Gravity® Temporary Horizontal Lifelines', NULL, NULL, '<p><strong>Temporary Horizontal Lifeline offering two worker bypass.</strong><br />\r\nMSA&rsquo;s newly enhanced Gravity Temporary Horizontal Lifelines offer unique, exclusive bypass shuttles enabling two workers to share a line and pass each other while maintaining 100% tie-off.<br />\r\nThe Gravity Temporary Synthetic Horizontal Lifeline, designed for easy installation and removal, suits many applications. System mounts to any suitable 5,000-lb-rated anchorage point and uses many standard components. Integral line tensioner helps to ensure proper lifeline tensioning.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/grav-temporary.png', NULL, '2020-12-27 06:10:25', '2020-12-27 06:10:25'),
(255, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Rope Grab Easy Move With Lifeline', NULL, NULL, '<p>The Easy Move device with lifeline is used to provide temporary fall protection on ladders or when climbing. This system can also be used to provide a secondary lifeline for suspended positioning systems used by building/structure inspectors, window cleaners,&nbsp;andmaintenance personnel.<br />\r\nThe vertical lifeline kit consists of 15, 20, 25 or 30m of 11mm polyamide rope with sewn eyelets, Easy Move device and&nbsp;carrying bag.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/rope-grab.png', NULL, '2020-12-27 06:10:58', '2020-12-27 06:10:58'),
(256, 'Products', 'Fall Protection', 'MSA', 'sidebyside', 'Rescue Component', NULL, NULL, '<p>MSA offers many components to make rescue and/or evacuation safer and easier.</p>', 'https://dev.lasindo.com//storage/files/3/products/msa-fall/rescue-component.png', NULL, '2020-12-27 06:11:23', '2020-12-27 06:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_download`
--

CREATE TABLE `product_download` (
  `id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `label` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `file_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_download`
--

INSERT INTO `product_download` (`id`, `product_name`, `label`, `value`, `file_desc`) VALUES
(1, 'Public', 'brochure', 'storage/files/Ametek_Calibration_Overview_Brochure.pdf', 'Temperature Calibrator Overview'),
(2, 'Public', 'brochure', 'storage/files/Temperature_Calibrator_Overview.pdf', 'Ametek Calibrator Overview Brochure'),
(3, 'RCT', 'datasheet', 'storage/files/RTC/RTC_700_Datasheet.pdf', 'RTC 700 Datasheet'),
(4, 'RCT', 'datasheet', 'storage/files/RTC/RTC_156-157_Datasheet.pdf', 'RTC 156/157 Datasheet'),
(5, 'RCT', 'datasheet', 'storage/files/RTC/RTC_158-250_Datasheet.pdf', 'RTC 158/250 Datasheet'),
(6, 'RCT', 'datasheet', 'storage/files/RTC/RTC_159_Datasheet.pdf', 'RTC 159 Datasheet'),
(7, 'RCT', 'datasheet', 'storage/files/RTC/RTC_187_Datasheet.pdf', 'RTC 187 Datasheet'),
(8, 'RCT', 'datasheet', 'storage/files/DLC_Datasheet.pdf', ' DLC Datasheet'),
(9, 'RCT', 'manual', 'storage/files/RTC/RTC_User_Manual.pdf', 'RTC User Manual'),
(10, 'RCT', 'manual', 'storage/files/RTC/RTC_Reference_Manual.pdf', 'RTC Reference Manual'),
(11, 'Public', 'manual', 'storage/files/JOFRACAL_User_Manual.pdf', 'JofraCal User Manual Temperature'),
(12, 'RCT', 'manual', 'storage/files/DLC_User_Manual.pdf', 'DLC User Manual'),
(13, 'Public', 'manual', 'storage/files/Ametrim_User_Manual.pdf', 'Ametrim User Manual'),
(14, 'PCT', 'datasheet', 'storage/files/PTC/PTC_125_Datasheet.pdf', 'PTC 125 Datasheet'),
(15, 'RCT', 'datasheet', 'storage/files/PTC/PTC_155-350-425-660_Datasheet.pdf', 'PTC 155/350/425/660 Datasheet'),
(16, 'PTC', 'manual', 'storage/files/PTC/PTC_User_Manual', 'PTC User Manual'),
(17, 'PTC', 'manual', 'storage/files/PTC/PTC_Reference_Manual.pdf', 'PTC Reference Manual'),
(18, 'CTC', 'datasheet', 'storage/files/CTC/CTC_155-350-652-660_Datasheet.pdf', 'CTC 155/350/652/660 Datasheet'),
(19, 'CTC', 'datasheet', 'storage/files/CTC/CTC_1205_Datasheet.pdf', 'CTC 1205 Datasheet'),
(20, 'CTC', 'manual', 'storage/files/CTC/CTC_User_Manual.pdf', 'CTC User Manual'),
(21, 'CTC', 'manual', 'storage/files/CTC/CTC_Reference_Manual.pdf', 'CTC Reference Manual'),
(22, 'MTC', 'datasheet', 'storage/files/MTC/MTC_Datasheet.pdf', 'MTC 650 Datasheet'),
(23, 'MTC', 'manual', 'storage/files/MTC/MTC_User_Manual.pdf', 'MTC User Manual'),
(24, 'MTC', 'manual', 'storage/files/MTC/TC_Reference_Manual.pdf', 'MTC Reference Manual'),
(25, 'ETC', 'datasheet', 'storage/files/ETC/ETC_Datasheet.pdf', 'ETC 125/400 Datasheet'),
(26, 'ETC', 'manual', 'storage/files/ETC/ETC_User_Manual.pdf', 'ETC User Manual');

-- --------------------------------------------------------

--
-- Table structure for table `product_inquiries`
--

CREATE TABLE `product_inquiries` (
  `id` int(6) NOT NULL,
  `firsName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `req_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_overview`
--

CREATE TABLE `product_overview` (
  `id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_overview`
--

INSERT INTO `product_overview` (`id`, `product_name`, `value`) VALUES
(1, 'RCT', 'Temperature range from -100 to 700°C (-148 to 1292°F) with 7 models'),
(2, 'RCT', 'Accuracy to ± 0.04°C and Stability to ± 0.005°C'),
(3, 'RCT', 'Dry block and liquid bath / dry block combined'),
(4, 'RCT', 'Time saving fast cooling and heating times'),
(5, 'RCT', 'Contamination free calibration of clamp sensors'),
(6, 'RCT', '“Plug and Play” intelligent reference sensor'),
(7, 'RCT', 'Easy-to-read color display with User-friendly navigation'),
(8, 'RCT', 'Lightweight and easy to carry'),
(9, 'RCT', 'Multi-hole insert kits'),
(10, 'RCT', 'JofraCal Calibration Software'),
(11, 'RCT', 'Inputs for Thermocouple Calibration'),
(20, 'PTC', 'Temperature range from -90 to 660°C (-130 to 1220°F) with 5 models'),
(21, 'PTC', 'Accuracy to ± 0.06°C and Stability to ± 0.01°C'),
(22, 'PTC', 'Clean Dry block calibrator'),
(23, 'PTC', 'Time saving fast cooling and heating times (350° in only 7 minutes)'),
(24, 'PTC', '“Plug and Play” intelligent reference sensor'),
(25, 'PTC', 'Easy-to-read color display '),
(26, 'PTC', 'Intuitive, fast, user-friendly navigation'),
(27, 'PTC', 'Lightweight and easy to carry'),
(28, 'PTC', 'Multi-hole insert kits'),
(29, 'PTC', 'JofraCal Calibration Software'),
(30, 'PTC', 'Inputs for Thermocouple Calibration'),
(31, 'CTC', 'Temperature range from -25 to 1205°C (-13 to 2201°F) with 5 models'),
(32, 'CTC', 'Accuracy to ± 0.2°C and Stability to ± 0.04°C'),
(33, 'CTC', 'Calibrate Long Sensors with the CTC-652s 190 mm immersion depth'),
(34, 'CTC', 'Lightweight and easy to carry'),
(35, 'CTC', 'Multi-hole and/or insert kits'),
(36, 'CTC', 'Input for external reference sensor on all C models'),
(37, 'CTC', 'MVI circuitry ensures stability despite mains supply variations'),
(38, 'CTC', 'Rugged, portable temperature calibrator'),
(39, 'MTC', 'Temperature range from 28 to 650°C (82 to 1202°F)'),
(40, 'MTC', 'One Year Accuracy of ± 0.9°C and Stability to ± 0.1°C'),
(41, 'MTC', 'Three Year Accuracy to ± 1.8°C and Stability to ± 0.1°C'),
(42, 'MTC', 'Dry block calibrator'),
(43, 'MTC', 'Lightweight and easy to carry'),
(44, 'MTC', 'Multi-hole insert kits'),
(45, 'MTC', 'MVI circuitry ensures stability despite mains supply variations'),
(46, 'ETC', 'Temperature range from -10 to 400°C (14 to 752°F) with 3 models'),
(47, 'ETC', 'Accuracy to ± 0.5°C and Stability to ± 0.05°C'),
(48, 'ETC', 'Time saving fast cooling and heating times'),
(49, 'ETC', 'Easy-to-read multi-information display '),
(50, 'ETC', 'Customizable stability checkmark with countdown timer'),
(51, 'ETC', 'Set exact temperature desired to a resolution of 0.1°C'),
(52, 'ETC', 'ETC 400R, small lightweight IR calibrator'),
(53, 'ETC', 'Lightweight and easy to carry');

-- --------------------------------------------------------

--
-- Table structure for table `product_video`
--

CREATE TABLE `product_video` (
  `id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `label` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_video`
--

INSERT INTO `product_video` (`id`, `product_name`, `label`, `value`) VALUES
(1, 'RCT', 'RTC-159 Ultra Cooler', 'https://www.youtube.com/embed/1m_hnKLoNs8'),
(2, 'RCT', 'RTC-159 Series - Setting Up Sensors', 'https://www.youtube.com/embed/GG4iDoRqiRU'),
(3, 'RCT', 'RTC-159 Series - Introduction to Display', 'https://www.youtube.com/embed/0pTlN-10ULE'),
(4, 'RCT', 'RTC-159 Series - Autostep Setup', 'https://www.youtube.com/embed/x7gyu4l9GUo'),
(5, 'CTC', 'Introducing the new CTC Series', 'https://www.youtube.com/embed/kKH2ozqpEys'),
(6, 'CTC', 'CTC Series Hold and Cold Icons', 'https://www.youtube.com/embed/tWnchkfKIwM');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `type`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', 'web', '2020-11-03 20:12:18', '2020-11-03 20:12:18'),
(2, 'admin', 'Administrator\'s Guard', 'web', '2020-11-04 11:49:25', '2020-11-04 11:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `category_name`, `section`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Engineering & Solution', 'Fuel Gas System', 'fuel-gas-system', NULL, '2020-12-02 05:14:40', '2020-12-02 05:14:40'),
(2, 'Engineering & Solution', 'High Pressure Pump System', 'high-pressure-pump-system', NULL, '2020-12-02 05:14:43', '2020-12-02 05:14:43'),
(3, 'Engineering & Solution', 'Engineered Fall Protection System', 'engineered-fall-protection-system', NULL, '2020-12-02 05:14:47', '2020-12-02 05:14:47'),
(4, 'Products', 'Flow', 'flow', NULL, '2020-12-02 05:15:00', '2020-12-02 05:15:00'),
(5, 'Products', 'Level', 'level', NULL, '2020-12-02 05:15:40', '2020-12-02 05:15:40'),
(6, 'Products', 'Analytical', 'analytical', NULL, '2020-12-02 05:15:49', '2020-12-02 05:15:49'),
(7, 'Products', 'Heat Tracing', 'heat-tracing', NULL, '2020-12-02 05:15:57', '2020-12-02 05:15:57'),
(8, 'Products', 'Leak Detection', 'leak-detection', NULL, '2020-12-02 05:16:04', '2020-12-02 05:16:04'),
(9, 'Products', 'Pressure', 'pressure', NULL, '2020-12-02 05:16:09', '2020-12-02 05:16:09'),
(10, 'Products', 'Valves', 'valves', NULL, '2020-12-02 05:16:16', '2020-12-02 05:16:16'),
(11, 'Products', 'Temperature', 'temperature', NULL, '2020-12-02 05:16:23', '2020-12-02 05:16:23'),
(12, 'Products', 'Fall Protection', 'fall-protection', NULL, '2020-12-02 05:16:29', '2020-12-02 05:16:29'),
(13, 'Products', 'Fire & Gas Detection', 'fire-gas-detection', NULL, '2020-12-02 05:17:08', '2020-12-02 05:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(3) NOT NULL,
  `set_key` varchar(100) DEFAULT NULL,
  `label` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `set_key`, `label`, `value`, `reg_date`, `updated_at`) VALUES
(1, 'admin_email', 'Admin Email', 'nursanogandung@yahoo.co.id', '2021-04-06 06:10:56', '2021-04-06 13:12:43'),
(2, 'inquiry_email', 'Inquiry Email', 'nursano@designcub3.com', '2021-04-06 06:11:09', '2021-04-06 13:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `show_banners`
--

CREATE TABLE `show_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `show_banners`
--

INSERT INTO `show_banners` (`id`, `name`, `link`, `brand`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Water & Waste Water Treatment Package', 'https://dev.lasindo.com/engineering-solutions', 'none', 'https://dev.lasindo.com//storage/files/3/showcase/banner/pic1.png', '2020-12-17 04:31:06', '2020-12-27 06:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `show_products`
--

CREATE TABLE `show_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `show_products`
--

INSERT INTO `show_products` (`id`, `name`, `link`, `layout`, `brand`, `image`, `created_at`, `updated_at`) VALUES
(1, 'High Pressure Pump System', 'https://dev.lasindo.com/engineering-solutions/high-pressure-pump-system#products-sect', 'sidebyside', 'Haskel', 'https://dev.lasindo.com//storage/files/3/showcase/product1.png', '2020-12-17 02:30:15', '2020-12-27 06:41:04'),
(3, 'Fire & Gas Detection', 'https://dev.lasindo.com/products/fire-gas-detection#products-sect', 'sidebyside', 'Simplex', 'https://dev.lasindo.com//storage/files/3/showcase/product2.png', '2020-12-17 03:24:42', '2020-12-27 06:41:09'),
(4, 'Fuel Gas System', 'https://dev.lasindo.com/engineering-solutions/fuel-gas-system#products-sect', 'full', 'none', 'https://dev.lasindo.com//storage/files/3/showcase/fuel-gas.png', '2020-12-17 03:26:37', '2020-12-27 06:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `slide_banners`
--

CREATE TABLE `slide_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `headline` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slide_banners`
--

INSERT INTO `slide_banners` (`id`, `headline`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Experience <br>The Difference', 'https://dev.lasindo.com//storage/files/3/slidebanners/2.png', NULL, '2020-11-05 07:06:01', '2020-12-17 10:13:53'),
(3, 'Experience <br>The Difference', 'https://dev.lasindo.com//storage/files/3/slidebanners/1.png', NULL, '2020-11-05 07:41:11', '2020-12-17 10:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `two_factor_authentications`
--

CREATE TABLE `two_factor_authentications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authenticatable_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authenticatable_id` bigint(20) UNSIGNED NOT NULL,
  `shared_secret` blob NOT NULL,
  `enabled_at` timestamp NULL DEFAULT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `digits` tinyint(3) UNSIGNED NOT NULL DEFAULT '6',
  `seconds` tinyint(3) UNSIGNED NOT NULL DEFAULT '30',
  `window` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `algorithm` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sha1',
  `recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `recovery_codes_generated_at` timestamp NULL DEFAULT NULL,
  `safe_devices` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `two_factor_authentications`
--

INSERT INTO `two_factor_authentications` (`id`, `authenticatable_type`, `authenticatable_id`, `shared_secret`, `enabled_at`, `label`, `digits`, `seconds`, `window`, `algorithm`, `recovery_codes`, `recovery_codes_generated_at`, `safe_devices`, `created_at`, `updated_at`) VALUES
(1, 'App\\Domains\\Auth\\Models\\User', 1, 0x29efbfbdefbfbd0fefbfbd54efbfbd76024fefbfbd1aefbfbdefbfbd472aefbfbdefbfbd5c55, NULL, 'admin@admin.com', 6, 30, 1, 'sha1', NULL, NULL, NULL, '2020-11-03 20:26:20', '2020-11-03 20:47:56'),
(2, 'App\\Domains\\Auth\\Models\\User', 3, 0xefbfbd2eefbfbd5656efbfbdefbfbdefbfbd7befbfbdefbfbddb8036efbfbd75c69a73efbfbd, NULL, 'best.admin@lasindo.com', 6, 30, 1, 'sha1', NULL, NULL, NULL, '2020-12-01 06:21:27', '2020-12-17 16:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_changed_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `timezone` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_be_logged_out` tinyint(1) NOT NULL DEFAULT '0',
  `provider` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `name`, `email`, `email_verified_at`, `password`, `password_changed_at`, `active`, `timezone`, `last_login_at`, `last_login_ip`, `to_be_logged_out`, `provider`, `provider_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Super Admin', 'super.admin@admin.com', '2020-11-03 20:12:18', '$2y$10$uKPpmZ6vYnyTB5WebI72BOGCKzgdugnFGobJbYGylzlaSO4goEszC', NULL, 1, 'America/New_York', '2021-04-08 01:39:33', '127.0.0.1', 0, NULL, NULL, 'cQjM3k8Gy77yoZjrSNFp7Z4tjweYimOnyKBmVi4hzQWFkO17U0ukXQyEBj8z', '2020-11-03 20:12:18', '2021-04-08 01:39:33', NULL),
(2, 'user', 'Test User', 'user@user.com', '2020-11-03 20:12:18', '$2y$10$uKPpmZ6vYnyTB5WebI72BOGCKzgdugnFGobJbYGylzlaSO4goEszC', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-03 20:12:18', '2020-11-04 11:49:49', '2020-11-04 11:49:49'),
(3, 'admin', 'Lasindo Admin', 'best.admin@lasindo.com', '2020-11-04 11:43:55', '$2y$10$uKPpmZ6vYnyTB5WebI72BOGCKzgdugnFGobJbYGylzlaSO4goEszC', NULL, 1, 'America/New_York', '2020-12-27 05:10:13', '127.0.0.1', 0, NULL, NULL, '2GkQns56XWd1MLgTNuY2HRWcIviUJII18qBB2paH2Aszi1ifsG3RkSj0xgbf', '2020-11-04 11:43:56', '2020-12-27 05:10:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_descs`
--
ALTER TABLE `about_descs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_images`
--
ALTER TABLE `about_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `add_socmeds`
--
ALTER TABLE `add_socmeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_secs`
--
ALTER TABLE `brand_secs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `epc_names`
--
ALTER TABLE `epc_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e_p_c_s`
--
ALTER TABLE `e_p_c_s`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_histories`
--
ALTER TABLE `password_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_download`
--
ALTER TABLE `product_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_inquiries`
--
ALTER TABLE `product_inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_overview`
--
ALTER TABLE `product_overview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_video`
--
ALTER TABLE `product_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `show_banners`
--
ALTER TABLE `show_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `show_products`
--
ALTER TABLE `show_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide_banners`
--
ALTER TABLE `slide_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `two_factor_authentications`
--
ALTER TABLE `two_factor_authentications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `2fa_auth_type_auth_id_index` (`authenticatable_type`,`authenticatable_id`);

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
-- AUTO_INCREMENT for table `about_descs`
--
ALTER TABLE `about_descs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_images`
--
ALTER TABLE `about_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `add_socmeds`
--
ALTER TABLE `add_socmeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `brand_secs`
--
ALTER TABLE `brand_secs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `epc_names`
--
ALTER TABLE `epc_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `e_p_c_s`
--
ALTER TABLE `e_p_c_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `password_histories`
--
ALTER TABLE `password_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `product_download`
--
ALTER TABLE `product_download`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_inquiries`
--
ALTER TABLE `product_inquiries`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_overview`
--
ALTER TABLE `product_overview`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_video`
--
ALTER TABLE `product_video`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `show_banners`
--
ALTER TABLE `show_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `show_products`
--
ALTER TABLE `show_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slide_banners`
--
ALTER TABLE `slide_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `two_factor_authentications`
--
ALTER TABLE `two_factor_authentications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
