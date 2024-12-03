-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2024 at 09:41 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` enum('baju','celana','topi','sepatu') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `nama`, `deskripsi`, `gambar`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 'Diskon Akhir Tahun untuk Baju', 'Nikmati diskon besar-besaran untuk semua koleksi baju akhir tahun ini.', 'https://www.freepik.com/free-photo/boy-wearing-green-jacket_13312677.htm#fromView=search&page=1&position=11&uuid=348432ff-ba27-4ff4-af8d-b0e0ba414fe4?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'baju', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(2, 'Model Celana Terbaru 2024', 'Celana dengan desain modern dan nyaman untuk dipakai sehari-hari.', 'https://images.unsplash.com/photo-1596472362030-9c6477b44147?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'celana', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(3, 'Topi Trendi untuk Musim Panas', 'Koleksi topi terbaik untuk melindungi Anda dari sinar matahari.', 'https://images.unsplash.com/photo-1561441948-933a1b7244ed?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'topi', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(4, 'Sepatu Sneakers Kekinian', 'Sneakers dengan desain kekinian yang cocok untuk semua kalangan.', 'https://images.unsplash.com/photo-1584995511666-e11644c2a5d9?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'sepatu', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(5, 'Kemeja Formal untuk Kantor', 'Kemeja formal dengan bahan berkualitas tinggi untuk kenyamanan sepanjang hari.', 'https://images.unsplash.com/photo-1531406932721-48968d91d5b4?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'baju', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(6, 'Celana Jeans Tahan Lama', 'Celana jeans dengan kualitas premium untuk gaya yang tahan lama.', 'https://images.unsplash.com/photo-1600919337469-fb2385d3440e?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'celana', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(7, 'Topi Baseball dengan Desain Unik', 'Tambahkan sentuhan gaya pada penampilan Anda dengan topi baseball eksklusif.', 'https://images.unsplash.com/photo-1578344154679-12811575519f?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'topi', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(8, 'Sepatu Lari Nyaman', 'Sepatu lari yang dirancang untuk mendukung aktivitas olahraga Anda.', 'https://images.unsplash.com/photo-1595500905746-65ef7d9f240b?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'sepatu', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(9, 'Tunik Cantik untuk Acara Kasual', 'Tunik modis dengan berbagai pilihan warna yang cocok untuk semua kesempatan.', 'https://images.unsplash.com/photo-1582036305443-3d1d75818a0a?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'baju', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(10, 'Celana Pendek Santai', 'Celana pendek yang nyaman untuk aktivitas sehari-hari di rumah atau di luar.', 'https://images.unsplash.com/photo-1571467283233-5223c3c6fa69?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'celana', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(11, 'Topi Panama Elegan', 'Topi Panama yang sempurna untuk melengkapi gaya elegan Anda.', 'https://images.unsplash.com/photo-1595520690124-1c41c564d660?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'topi', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(12, 'Sepatu Hiking Tangguh', 'Sepatu hiking dengan daya tahan tinggi untuk perjalanan alam Anda.', 'https://images.unsplash.com/photo-1600271711034-73e02c1be618?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'sepatu', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(13, 'Kaos Polos Berbahan Lembut', 'Kaos polos berbahan lembut yang nyaman dipakai sepanjang hari.', 'https://images.unsplash.com/photo-1605914551173-1f003f72c5d9?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'baju', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(14, 'Celana Jogger untuk Olahraga', 'Celana jogger yang nyaman untuk aktivitas olahraga maupun santai.', 'https://images.unsplash.com/photo-1601029635581-cf537e8d2bc7?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'celana', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(15, 'Topi Bucket Gaya Anak Muda', 'Topi bucket yang keren untuk melengkapi gaya anak muda masa kini.', 'https://images.unsplash.com/photo-1601027367575-41c91f2d58fc?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'topi', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(16, 'Sepatu Kulit Formal', 'Sepatu kulit dengan desain klasik untuk acara formal.', 'https://images.unsplash.com/photo-1591852336353-0be4e8fe1d2b?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'sepatu', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(17, 'Sweater Hangat Musim Dingin', 'Sweater hangat dengan bahan tebal yang cocok untuk musim dingin.', 'https://images.unsplash.com/photo-1602920380511-d4a5e12f5668?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'baju', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(18, 'Celana Chino Stylish', 'Celana chino dengan desain stylish untuk tampilan semi-formal.', 'https://images.unsplash.com/photo-1604083718303-b91d51309a6b?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'celana', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(19, 'Topi Fedora Klasik', 'Topi fedora dengan desain klasik yang cocok untuk acara formal.', 'https://images.unsplash.com/photo-1601592680401-95e92c3fd4c2?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'topi', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(20, 'Sepatu Boot Outdoor', 'Sepatu boot dengan bahan tahan air yang cocok untuk aktivitas outdoor.', 'https://images.unsplash.com/photo-1604105241395-25be3fdc9c4e?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080', 'sepatu', '2024-12-02 15:39:12', '2024-12-02 15:39:12'),
(21, 'celek', 'fajdlkfjas', '/storage/bookImg/zqMwCGliK3mvlRnah8KdXeB79qU8xDTwbLay20Zp.png', 'baju', '2024-12-02 15:39:32', '2024-12-02 15:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `berita_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_29_122215_create_personal_access_tokens_table', 1),
(5, '2024_11_29_122300_create_beritas_table', 1),
(6, '2024_11_29_122448_create_favorites_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_berita_id_foreign` (`berita_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_berita_id_foreign` FOREIGN KEY (`berita_id`) REFERENCES `beritas` (`id`),
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
