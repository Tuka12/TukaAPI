-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 10:38 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) NOT NULL,
  `gender` enum('male','female','others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `mobile`, `age`, `gender`, `address_info`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Camille Bogisich PhD', 'albin95@example.org', '424.767.4476', 43, 'male', '8180 Zboncak Loaf\nSouth Orlandochester, PA 35574-3818', '2021-05-13 03:06:52', '2021-05-13 03:06:52'),
(2, 'Julianne Hoeger II', 'callie29@example.com', '440-329-1371', 40, 'male', '4075 Kunde Lake Apt. 668\nDouglasfurt, WA 52981', '2021-05-13 03:06:52', '2021-05-13 03:06:52'),
(3, 'Mabelle Leffler', 'jacklyn69@example.net', '559-854-1469', 42, 'others', '7498 Karen Orchard Apt. 216\nSouth Gertrudeberg, OK 73541-7883', '2021-05-13 03:06:52', '2021-05-13 03:06:52'),
(4, 'Summer Homenick', 'genoveva82@example.net', '+1-623-278-2621', 43, 'others', '23568 Parisian Lakes Apt. 406\nNew Jaydaland, NH 50290', '2021-05-13 03:06:52', '2021-05-13 03:06:52'),
(5, 'Nasir Kunde', 'yundt.oswald@example.com', '+1-262-536-5806', 43, 'others', '9634 Chloe Canyon\nEdshire, NM 80636-3614', '2021-05-13 03:06:52', '2021-05-13 03:06:52'),
(6, 'Dr. Bridie McGlynn', 'darius.jakubowski@example.net', '(541) 581-0349', 40, 'male', '9484 Elbert Ports\nSouth Othaland, PA 04088', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(7, 'Richard Beier', 'daryl.barton@example.org', '(971) 378-4256', 41, 'others', '489 Brandy Point\nMarionside, DC 59791', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(8, 'Erica Abshire MD', 'gia80@example.com', '+1-539-682-9070', 30, 'others', '639 Weissnat Highway\nCasimirstad, CT 74408', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(9, 'Benjamin Cartwright III', 'maudie.boehm@example.org', '667.755.1179', 30, 'male', '5000 Gunner Viaduct Suite 077\nSouth Hardystad, AZ 83796', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(10, 'Hellen Hirthe', 'rafaela.fritsch@example.net', '1-747-424-7789', 43, 'female', '31436 Collier Station Apt. 697\nEast Brooklynland, TN 18404-9719', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(11, 'Rozella Christiansen', 'nruecker@example.org', '+1 (534) 497-1494', 30, 'others', '5868 Jeffry Dam\nAhmadside, MS 05541-2951', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(12, 'Mohammed Monahan', 'brenden.kozey@example.com', '+1 (952) 448-7328', 39, 'others', '41700 Twila Mission Apt. 447\nWest Ferne, ID 94490-1473', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(13, 'Sherman Gislason', 'lindgren.duane@example.com', '225.519.6348', 43, 'male', '32801 Kautzer Manors\nBrionnaview, CA 12603-1498', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(14, 'Dr. Christian Kshlerin', 'flatley.anna@example.net', '1-269-329-8509', 41, 'male', '9861 Corkery Pike Apt. 621\nMetamouth, AR 28021-2231', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(15, 'Adolf Carroll DDS', 'alvah.thiel@example.net', '1-660-910-0064', 37, 'male', '297 Jed Lodge\nNew Sunny, LA 89160-2009', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(16, 'Kurtis Carter', 'ohara.emil@example.org', '1-443-380-2221', 35, 'female', '8001 Lang Run Apt. 447\nSmithamborough, CA 94404-1940', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(17, 'Kaley Will', 'zluettgen@example.net', '657.295.3749', 31, 'female', '832 Lind Plains\nGleichnerburgh, NE 18379-3490', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(18, 'Brook Kovacek', 'lconnelly@example.net', '(903) 571-9785', 44, 'male', '39558 Carmine Freeway\nLemkeville, WI 67973-6310', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(19, 'Jada Beer I', 'joreilly@example.net', '+1 (662) 233-5370', 32, 'others', '8744 Bret Fields\nRusselhaven, IN 42264', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(20, 'Garnet Collier IV', 'ogoldner@example.com', '626.667.0459', 44, 'others', '95921 Schmeler Harbor\nKarinaport, DC 18533', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(21, 'Alessandra Kihn', 'abbigail54@example.com', '(626) 589-6312', 25, 'male', '4325 Lockman Camp\nOllieberg, DE 28459', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(22, 'Leon McDermott', 'labadie.finn@example.org', '+1.619.916.5692', 26, 'female', '2529 Ericka Expressway\nEast Osvaldoberg, RI 14984-3756', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(23, 'Katlyn Stehr', 'daphnee33@example.com', '+1 (534) 502-6323', 42, 'male', '88137 Clare Gateway\nClemmieview, PA 35275', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(24, 'Eleazar Kirlin', 'barton.ernser@example.com', '+1-559-712-6432', 41, 'male', '7942 Clementina Rapid\nNew Mike, WV 14049-9891', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(25, 'Prof. Jovanny Schoen III', 'lemke.jorge@example.net', '1-316-347-6127', 34, 'male', '37769 Athena Route Apt. 063\nLake Hershelland, WV 99657-2185', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(26, 'Juliet Koepp', 'daniel.hubert@example.net', '(409) 282-2403', 35, 'others', '9959 Bridget Street Suite 379\nSimonisbury, KS 99776-6255', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(27, 'Prof. Alberto Schamberger', 'keenan68@example.com', '1-567-713-9306', 43, 'others', '56195 Bessie Plaza Apt. 628\nKallieborough, FL 49334-5310', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(28, 'Miss Tracy Wehner', 'tromp.reyna@example.net', '(801) 830-4222', 30, 'male', '1042 Teresa Course\nToyburgh, NM 01688-1167', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(29, 'Roel Hoeger', 'roel.kiehn@example.org', '(727) 362-4652', 25, 'others', '6647 Annabel Plaza Apt. 186\nMurazikton, WV 79428-9057', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(30, 'Lenny DuBuque III', 'blarkin@example.org', '+1-325-804-1014', 33, 'female', '963 Brandt Cliff\nSauerton, PA 35889', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(31, 'Saul Bernier', 'judy.weissnat@example.net', '+1 (425) 319-1807', 26, 'female', '9305 Lee Curve Apt. 254\nVestaport, DE 97095-4781', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(32, 'Monserrate Mante', 'schimmel.melody@example.com', '540.656.8858', 27, 'male', '28982 Wolf Fords Apt. 841\nEast Aglaetown, WA 47571', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(33, 'Gregg Koelpin', 'waelchi.jaron@example.net', '812.776.7447', 33, 'male', '7208 Sim Glens Apt. 396\nNorth Aubreyton, AZ 88191', '2021-05-13 03:06:53', '2021-05-13 03:06:53'),
(34, 'Erik Powlowski', 'xlind@example.org', '+1.913.807.8977', 45, 'female', '66801 Eric Flat Suite 770\nPort Lisandro, OH 29506-8416', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(35, 'Adriel Conroy', 'marilyne82@example.org', '681.779.9502', 45, 'others', '17670 Susanna Extensions\nEast Gennaroport, MO 41627-7074', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(36, 'Felicia Ankunding', 'jones.matt@example.com', '916-672-9349', 44, 'female', '81862 Witting Road\nWest Everette, WV 70192-9728', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(37, 'Gene Jacobs', 'mhuels@example.org', '(838) 808-5539', 35, 'others', '67097 Delia Points Apt. 897\nWilliamsonside, MT 29787', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(38, 'Urban Dare', 'joan05@example.org', '951-529-1692', 34, 'others', '9926 Cole Cove Apt. 307\nLake Skylabury, IL 54263-3786', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(39, 'Jeanie Ortiz', 'barbara.denesik@example.net', '(380) 550-8877', 44, 'female', '94761 Eric Plains Suite 200\nKacifurt, AL 70082-5379', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(40, 'Percival Hermiston', 'toberbrunner@example.net', '+15205704083', 40, 'female', '11329 Rosario Spur\nWest Chetbury, ID 64233', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(41, 'Marilou Torphy', 'heller.myron@example.com', '+1 (678) 835-3493', 28, 'male', '8456 Kuphal Mountains\nAlannashire, ME 36452-9182', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(42, 'Gene Lehner', 'terry.herminio@example.net', '540.680.7078', 37, 'male', '25988 Wintheiser Squares\nLake Enostown, WI 49591', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(43, 'Joesph Skiles', 'von.macie@example.org', '239-315-3777', 38, 'others', '3049 Kaelyn Forge\nNew Randymouth, MI 52497', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(44, 'Myles Nitzsche', 'king.ramona@example.com', '1-929-250-6231', 41, 'female', '96347 Dominic Coves Apt. 606\nNew Winifredland, SD 65044-5137', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(45, 'Paxton Marvin MD', 'vwolff@example.net', '248-423-4908', 34, 'male', '594 Kaycee Viaduct Suite 098\nEast Merle, WA 23577', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(46, 'Jess Lubowitz', 'annie59@example.org', '(210) 301-2465', 45, 'male', '10822 Dewayne Cape Apt. 846\nNew Anastasiaview, TN 56392', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(47, 'Gregory Huel', 'ozella.hodkiewicz@example.com', '+16408206480', 39, 'female', '329 Walter Mount\nStrosintown, MO 69736', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(48, 'Avery Monahan', 'crona.odie@example.com', '+1-864-229-8771', 32, 'male', '8451 Audra Route Suite 974\nBotsfordshire, OR 37966', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(49, 'Brycen Trantow', 'kcremin@example.com', '(984) 812-9278', 35, 'others', '62233 Brandon Shores\nBorermouth, ID 39572-8972', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(50, 'Electa Zieme', 'kaycee.zemlak@example.net', '1-865-341-4623', 25, 'others', '958 Trever Rapid\nVioletteville, AR 43937', '2021-05-13 03:06:54', '2021-05-13 03:06:54'),
(51, 'Mr. Lamont Jones I', 'deangelo.mclaughlin@example.net', '+1-872-561-8589', 31, 'others', '870 Weissnat Passage Apt. 342\nAshlynnmouth, TN 02855-6857', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(52, 'Mr. Anibal Goodwin Sr.', 'adolphus38@example.org', '516.926.5498', 27, 'others', '4184 Hauck Cliffs\nSouth Malika, LA 05079-1083', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(53, 'Mr. Bo Bernhard', 'reilly.quinton@example.org', '254.576.2825', 26, 'male', '70543 McKenzie Road\nLynchport, RI 43824-9193', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(54, 'Luis Lesch', 'ernestina.king@example.org', '1-480-606-8488', 45, 'female', '702 Kathryn Greens Apt. 085\nBernitaborough, MN 06010', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(55, 'Miss Dolly Hill I', 'hermiston.brody@example.net', '+17576451676', 35, 'others', '127 Lydia Rue Suite 730\nOrnfurt, IA 89555-9853', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(56, 'Ronny Hill', 'johnny89@example.org', '1-540-686-5134', 31, 'female', '8856 Paige Stravenue\nEast Durward, WV 67612', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(57, 'Alexandro Schinner', 'jolie34@example.net', '+1.931.980.3979', 36, 'male', '8728 Jacobs Meadows\nLake Clarabellefort, DC 96795-9966', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(58, 'Felicita Champlin', 'kaela29@example.net', '662.204.3576', 27, 'female', '50079 Mekhi Coves\nMorarton, NC 14423', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(59, 'Chesley Schultz', 'martin47@example.org', '973.749.6709', 35, 'others', '74826 Klein Junctions\nHarberbury, SD 46263', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(60, 'Prof. Rupert Legros', 'brekke.cornelius@example.com', '760-866-0289', 37, 'male', '27659 Wuckert Lake Suite 237\nNorth Harryburgh, ME 72624', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(61, 'Miss Evalyn Pfeffer PhD', 'janiya76@example.net', '1-931-986-1039', 34, 'others', '18152 Murphy Ville\nSouth Howell, CA 18252-3599', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(62, 'Tracy Heathcote', 'fabiola.larkin@example.com', '+1.317.212.1229', 32, 'others', '35570 Kiehn Path Apt. 264\nNorth Guy, MA 42670', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(63, 'Prof. Ariane Kautzer', 'zieme.liliane@example.org', '+1-443-759-2896', 43, 'female', '48159 Bartell Stravenue\nEstellemouth, SD 50261-8047', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(64, 'Miss Precious Armstrong', 'etreutel@example.com', '1-479-515-0523', 43, 'female', '61031 Terrence Ways Suite 119\nKerluketown, CT 21521-3791', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(65, 'Dell O\'Connell', 'xwalsh@example.org', '+1-870-837-2084', 35, 'male', '243 Carissa Courts\nNew Layne, WV 32527-1826', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(66, 'Prof. Rae Ernser', 'kennith.shields@example.com', '(929) 237-4573', 36, 'female', '1993 Frederique Keys Suite 132\nNew Kenyattashire, WV 23596', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(67, 'Mr. Ernesto Kub Sr.', 'judy.price@example.net', '+16789913090', 33, 'others', '9236 Johns Locks\nLake Isobel, MD 02405-2727', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(68, 'Alexys Doyle III', 'turcotte.herman@example.net', '346.938.3873', 28, 'others', '558 Wolff Groves Suite 776\nHuelfort, PA 42918', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(69, 'Alec Bode', 'hipolito88@example.com', '(838) 759-9474', 31, 'female', '6106 Sydnie Summit\nPort Hermann, FL 29745-1670', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(70, 'Alberta Hane Sr.', 'runolfsdottir.makenna@example.com', '+1 (267) 790-3950', 28, 'male', '7762 Eloisa Prairie Suite 472\nGarlandtown, SD 00942', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(71, 'Dr. Carolina Welch', 'green.bridget@example.com', '(442) 516-8005', 36, 'female', '8467 Lueilwitz Prairie\nNorth Evanton, LA 10650-3345', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(72, 'Freda Bruen I', 'heaven.streich@example.org', '1-425-591-2898', 28, 'male', '7989 Nelda Club\nElinorland, WI 81790-5159', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(73, 'Zane Kreiger', 'jratke@example.com', '386.745.5236', 39, 'female', '1179 Rodriguez Forge Suite 848\nWest Katherynview, KY 35466-7514', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(74, 'Bryce Feeney IV', 'ustanton@example.net', '+1.629.957.8108', 35, 'female', '3460 Corkery Views Apt. 935\nPowlowskishire, AZ 05967', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(75, 'Mrs. Raegan Mayert II', 'clebsack@example.org', '+1.475.302.0470', 32, 'others', '21477 Stoltenberg Lock Apt. 422\nSouth Jenafort, CA 92012', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(76, 'Brenna Bashirian', 'prohaska.teresa@example.net', '+1-786-451-8762', 29, 'male', '85715 Oberbrunner Walk Apt. 828\nProhaskaville, KS 91271-7304', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(77, 'Megane Connelly', 'julie10@example.org', '(315) 372-6927', 43, 'male', '58266 Rohan Ports\nOsvaldofort, OH 24073', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(78, 'Mrs. Maya Raynor', 'orville.rath@example.net', '(423) 305-0498', 44, 'others', '358 Eichmann Trail Suite 636\nWest Greyson, OH 85849', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(79, 'Prof. Gus Mante', 'iwalker@example.com', '(216) 871-6320', 27, 'male', '75925 Moshe Crossing\nOrnstad, OR 14720', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(80, 'Raina Upton', 'kschulist@example.com', '(380) 350-4640', 41, 'male', '53337 Meghan Square Apt. 863\nIsaiton, SC 94559', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(81, 'Dr. Nadia Monahan', 'jpurdy@example.com', '+1 (307) 288-7032', 30, 'male', '9790 Stroman Dale Suite 009\nDesireemouth, DC 79412-9886', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(82, 'Aniya Bednar Sr.', 'raymundo78@example.net', '+1-202-214-7469', 35, 'female', '99715 Carter Mews Suite 459\nAniyashire, DE 88186', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(83, 'Josianne Lebsack III', 'amely29@example.net', '(814) 892-3187', 41, 'male', '64513 Quentin Junctions\nNew Maudtown, OK 31637-2836', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(84, 'Samara Abbott', 'frederic.dicki@example.com', '520.895.5975', 32, 'male', '428 Hills River Apt. 425\nAlexannetown, TN 97025-2160', '2021-05-13 03:06:55', '2021-05-13 03:06:55'),
(85, 'Breana Ryan', 'ibogisich@example.org', '+1-228-342-6224', 31, 'male', '59184 Ernestina Union Suite 456\nLibbieshire, MA 40090', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(86, 'Brannon Franecki IV', 'belle06@example.net', '+1-231-519-4593', 32, 'male', '7707 Luisa Fort Apt. 892\nNew Donnie, IL 34489', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(87, 'Prof. Ellis Dicki Sr.', 'llittle@example.net', '330-730-4141', 41, 'male', '157 Beryl Rapids Suite 796\nSouth Vance, SC 48868', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(88, 'Blanca Rutherford', 'mittie.cartwright@example.org', '(347) 808-5490', 25, 'male', '87274 Eliezer Squares Suite 998\nSouth Reymundo, RI 61269-6902', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(89, 'Lee Heathcote', 'kianna.mueller@example.net', '1-248-293-3016', 40, 'female', '437 Rebeca Crossing\nLake Carmelaside, CA 81141', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(90, 'Devan McGlynn', 'stroman.earline@example.com', '+1-480-843-5197', 26, 'female', '850 Kling Square Apt. 437\nDiannashire, CT 51943', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(91, 'Dr. Jamil Veum', 'parker.audra@example.org', '(786) 383-5186', 42, 'female', '66193 Carlie Ridges Apt. 489\nFeilberg, PA 12430', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(92, 'Olen Pagac', 'gwendolyn.kessler@example.com', '(364) 319-5114', 29, 'female', '87464 Lauryn Corners\nWendyburgh, NV 44705', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(93, 'Addison Gusikowski', 'curtis.gottlieb@example.net', '+1.954.219.2219', 39, 'male', '5995 Hanna Station\nBeahanview, CA 66933-6783', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(94, 'Lincoln Adams', 'isadore.boehm@example.org', '478-697-2481', 33, 'others', '247 Jamarcus Stravenue\nSouth Oda, NH 78971', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(95, 'Haven Huel', 'koelpin.sandy@example.org', '(539) 504-3254', 43, 'male', '3741 Johnny Points Suite 702\nNew Aricchester, NJ 28449', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(96, 'Helen Zieme MD', 'vince15@example.com', '805-696-9097', 31, 'female', '927 Amy Lakes Apt. 789\nJanshire, PA 88062-5033', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(97, 'Chelsey Gutkowski', 'weston.jerde@example.net', '+1 (830) 805-7483', 43, 'female', '854 Chaim Summit Suite 134\nNew Keithstad, MA 86897', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(98, 'Gus Wintheiser Jr.', 'lorna96@example.com', '678.782.6277', 39, 'male', '6856 Cartwright Gateway Suite 709\nLake Ebbabury, ND 04020', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(99, 'Lucie Kovacek', 'monahan.bennett@example.com', '+14306989886', 35, 'female', '6775 Philip Place Apt. 359\nBrendanfurt, ID 89029', '2021-05-13 03:06:56', '2021-05-13 03:06:56'),
(100, 'Laisha Bergstrom', 'rosa24@example.net', '(870) 648-3822', 36, 'male', '65587 O\'Keefe Inlet\nSouth Timmothytown, KY 08649', '2021-05-13 03:06:56', '2021-05-13 03:06:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
