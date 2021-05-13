-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 07:15 AM
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
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(9, '2021_05_12_152615_create_products_table', 3),
(10, '2021_05_12_152919_create_reviews_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('062ffb52d71f4951a1b304652debcf993fc30244169b93403aa271cfa6881c758420eaeea1009acd', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:45:39', '2021-05-11 02:45:39', '2022-05-11 08:15:39'),
('0a6f6b463745d1c213e4753616290f6baff2d8fc8ecad4ef68ba089aa64878f380405227bf6b4a0e', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:45:38', '2021-05-11 02:45:38', '2022-05-11 08:15:38'),
('0d75b623e4729a03b4691a3e77fad0081643510113e2b2fd945f9f36835dc804dcaa983b906a740f', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:45:40', '2021-05-11 02:45:40', '2022-05-11 08:15:40'),
('33878630790a8f3734be34aa9c9036e82cfd9463e757b39f0e7acd205a699ac3d751876901697752', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:45:33', '2021-05-11 02:45:33', '2022-05-11 08:15:33'),
('34a919899d7daadf525f53d5fbc6a6d446bd95bcd17a316093f0c2a03396b1a0fe5733fa2da0132c', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:46:58', '2021-05-11 02:46:58', '2022-05-11 08:16:58'),
('3922a719f20bf96c36e77ef5be6930701e9603b871005d02e9482f6193ae0921cb6e489d51745a5b', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:45:36', '2021-05-11 02:45:36', '2022-05-11 08:15:36'),
('3f3f80e2946b4dde795636ea7be29a6a4f739bd9d302cd70f7da712889b861fd79050693e3b32b81', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:45:45', '2021-05-11 02:45:45', '2022-05-11 08:15:45'),
('422141b91456c815054ec76d16298b12b1c19648b4a56d88cfec301633c0eafefe87e74a2ab96d4c', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:45:44', '2021-05-11 02:45:44', '2022-05-11 08:15:44'),
('4e762a4cdf633ae95cec6e130c0e957d22eb9b4e88f358e8ec1f380b1fd0b34410c43bcfb1773bb2', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:33:42', '2021-05-11 02:33:42', '2022-05-11 08:03:42'),
('6f698f93790a905e94be104cd09f1d193a247856d4b1bdd802f8a5983caca75588914dbc9984e8f3', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:45:41', '2021-05-11 02:45:41', '2022-05-11 08:15:41'),
('77ef3cf9544242d91e02bef96aafb5003a7890d36cc49fa333992a2ec05b523b36f4fbe40c73ae41', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:45:50', '2021-05-11 02:45:50', '2022-05-11 08:15:50'),
('8dfbd1e1622d5ad1dd81f8bf0e00192ca97d0e3b9b4f413b63c7e13dfe21bc8b603373001a4c2df8', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:45:48', '2021-05-11 02:45:48', '2022-05-11 08:15:48'),
('b0c50b868288ee427469e0913278f7cb6283d7143ffc0a07179ef13f8e80f8172df73307590ae68c', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:46:59', '2021-05-11 02:46:59', '2022-05-11 08:16:59'),
('c35c99992b7649a594961641d9899872fb35483abe2c293d63c807051e3c5639a121aa7299b0579c', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:45:46', '2021-05-11 02:45:46', '2022-05-11 08:15:46'),
('c5d901d856be1f2aa27cd742ed7b6c5e0942db396bd0376fee8ef66540bced4c35ef32c8ccdebef7', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:45:43', '2021-05-11 02:45:43', '2022-05-11 08:15:43'),
('dca97b441b6c3a7cac796cefa1dbf2ec81db1dd5f44d60aef65418dbf3b48a01047ae3df9a0c6f72', 23, 1, 'MyApp', '[]', 0, '2021-05-11 02:46:56', '2021-05-11 02:46:56', '2022-05-11 08:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'hZEZSTPZBPHjpxxISvzvk3RsPjcwgyVsPWaKAmLy', NULL, 'http://localhost', 1, 0, 0, '2021-05-11 01:39:11', '2021-05-11 01:39:11'),
(2, NULL, 'Laravel Password Grant Client', 'sKMi0DdSP44CBqIE24pQc3Zmfp1mI1QZuQ2NpXqR', 'users', 'http://localhost', 0, 1, 0, '2021-05-11 01:39:11', '2021-05-11 01:39:11');

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

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-05-11 01:39:11', '2021-05-11 01:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(14, 'tuka', 'tuka38@yopmail.com', NULL, '$2y$10$CPoV.0edwGf2pCIhaX6EsuIpdfdL8qADf2y/hMEws6n8sRidXQSCa', NULL, '2021-05-10 05:06:03', '2021-05-10 05:06:03'),
(20, 'Sushil', 'Suresh63@yopmail.com', NULL, '$2y$10$/kGdqHE5KgqEpolGGRvJq..az3292.B9X5P//FQUcq7wUtQLF9VAy', NULL, '2021-05-11 00:32:17', '2021-05-11 00:32:17'),
(21, 'Seema', 'seema@yopmail.com', NULL, '$2y$10$efXp48GO1BFi1uN.kPl.0eKcpHPE8KZK.pT9uWPEdRtGUDx70SF36', NULL, '2021-05-11 00:32:17', '2021-05-11 00:32:17'),
(22, 'Sita', 'sita56@yopmail.com', NULL, '$2y$10$IU7ouop2uaywYl.JW9BzyujdKCI1Mxn.VOqopsGkBKc6HGmvh6TQG', NULL, '2021-05-11 00:32:17', '2021-05-11 00:32:17'),
(23, 'Susmita', 'susmita34@yopmail.com', NULL, '$2y$10$G/98Qt0IgYc1JY8UBIVflORd.qWE3DRyJTZwWjNJw8hq.P2dxDBoG', NULL, '2021-05-11 02:33:42', '2021-05-11 02:33:42');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

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
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
