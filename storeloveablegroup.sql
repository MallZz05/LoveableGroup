-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2026 pada 16.36
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storeloveablegroup`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`, `logo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nurwina Sari', 'nurwina-sari', '01KP170Y5DXRNXZ9HVGQ812SSM.jpeg', NULL, '2026-04-12 09:05:02', '2026-04-12 09:05:02'),
(2, 'Bu Ayu', 'bu-ayu', '01KP2CNDNRG9BPFK4GJ3RVZSMC.jpg', NULL, '2026-04-12 20:02:50', '2026-04-12 20:02:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `shopee_link` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `stock` bigint(20) UNSIGNED NOT NULL,
  `is_popular` tinyint(1) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `publisher_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `name`, `slug`, `thumbnail`, `shopee_link`, `about`, `price`, `stock`, `is_popular`, `category_id`, `publisher_id`, `author_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Novel 3276 MDPL - SoftCover', 'novel-3276-mdpl-softcover', '01KP178SD3QT0WKXYPV6CBJMDB.jpg', 'https://shopee.co.id/Novel-3726-MDPL-by-wy.naaa-Romancious-i.86959436.26507201442', '<p>Karya Nurwinasari</p>', 99000, 12, 1, 1, 1, 1, NULL, '2026-04-12 09:09:19', '2026-04-12 09:09:19'),
(2, 'Who Am I to You', 'who-am-i-to-you', '01KP2CTEFW79T60AK50M92XQ99.jpg', 'https://shopee.co.id/Novel-3726-MDPL-by-wy.naaa-Romancious-i.86959436.26507201442', '<p>Novel baru</p>', 99000, 12, 1, 2, 1, 2, NULL, '2026-04-12 20:05:35', '2026-04-12 20:05:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_photos`
--

CREATE TABLE `book_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book_photos`
--

INSERT INTO `book_photos` (`id`, `photo`, `book_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '01KP178SDH3T1YCBS7KSK2T96C.jpg', 1, NULL, '2026-04-12 09:09:19', '2026-04-12 09:09:19'),
(2, '01KP2CTEGEEPX2QR34EY9R8Y2V.jpg', 2, NULL, '2026-04-12 20:05:35', '2026-04-12 20:05:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1776049268),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1776049267;', 1776049267),
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:2;', 1776049536),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1776049536;', 1776049536);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'BESTSELLER', 'bestseller', '01KP16S5THRVF99V3XFKCN3ENR.png', NULL, '2026-04-12 09:00:48', '2026-04-12 09:00:48'),
(2, 'PRE ORDER', 'pre-order', '01KP16W18Z1QCDVC51EC80KTN4.png', NULL, '2026-04-12 09:02:21', '2026-04-12 09:02:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_24_012236_create_authors_table', 1),
(5, '2025_02_24_012243_create_categories_table', 1),
(6, '2025_02_24_012311_create_promo_codes_table', 1),
(7, '2025_02_24_012353_create_publishers_table', 1),
(8, '2025_02_24_012400_create_books_table', 1),
(9, '2025_02_24_012500_create_book_photos_table', 1),
(10, '2025_02_24_012500_create_product_transactions_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_transactions`
--

CREATE TABLE `product_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `booking_trx_id` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `sub_total_amount` bigint(20) UNSIGNED NOT NULL,
  `grand_total_amount` bigint(20) UNSIGNED NOT NULL,
  `discount_amount` bigint(20) UNSIGNED NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `promo_code_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_transactions`
--

INSERT INTO `product_transactions` (`id`, `name`, `phone`, `email`, `booking_trx_id`, `city`, `post_code`, `proof`, `address`, `quantity`, `sub_total_amount`, `grand_total_amount`, `discount_amount`, `is_paid`, `book_id`, `promo_code_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Maal', '087715334245', 'syapatuch5@gmail.com', 'LOV3618', 'Depok', '16431', 'proofs/d8BbHiW7HtxbxSYTvfGFXfbbGM5SnHhZuOkfmgFy.jpg', 'jl kh ridhi', 1, 99000, 99000, 0, 0, 1, NULL, NULL, '2026-04-12 09:43:44', '2026-04-12 09:43:44'),
(2, 'Maal', '0877153342545', 'Mall@gmail.com', 'LOV5838', 'DEPOK', '1234', 'proofs/lnfEU3Yn1cFBAlJBDFjEoQWqLFCDNzMQm8x57LuS.jpg', 'Jl. kh ridhi', 2, 198000, 198000, 0, 0, 2, NULL, NULL, '2026-04-12 20:08:23', '2026-04-12 20:08:23'),
(3, 'Maal', '087715334245', 'maal@gmail.com', 'LOV6353', 'DEPOK', '47534', 'proofs/stHSgZ6kucrERWjAVtlKcA8s1hQdHkp2GIxNAIxX.jpg', 'jlsjdiasuhd', 1, 99000, 49000, 50000, 1, 2, 1, NULL, '2026-04-12 20:11:51', '2026-04-12 20:13:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount_amount` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `code`, `discount_amount`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'LOVA5R', 50000, NULL, '2026-04-12 20:09:46', '2026-04-12 20:09:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `slug`, `logo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Loveable', 'loveable', '01KP1738MBKMV2E4S4JTRPJ2A3.jpg', NULL, '2026-04-12 09:06:18', '2026-04-12 09:06:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('l6bVnPOQB72hPnSlMIvJYJfSuAdQAHzklCJGgdZi', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiSW81TDluY3ZnWDdhQVlJSFBVVkV2NnpUWG14eUVJM0c0bFZicFNYYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wcm9kdWN0LXRyYW5zYWN0aW9ucy8zL2VkaXQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkaTNLMXNmellSaDNnMlhkRm1BdWJ5T3EvdTA0MU16Q3p1aEN3bEhSckdkd3ZkV3ZVRHpqWjIiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fXM6OToib3JkZXJEYXRhIjthOjE0OntzOjc6ImJvb2tfaWQiO2k6MjtzOjQ6Im5hbWUiO3M6NDoiTWFhbCI7czo1OiJlbWFpbCI7czoxNDoibWFhbEBnbWFpbC5jb20iO3M6MTg6ImdyYW5kX3RvdGFsX2Ftb3VudCI7aTo0OTAwMDtzOjE2OiJzdWJfdG90YWxfYW1vdW50IjtpOjk5MDAwO3M6MTU6ImRpc2NvdW50X2Ftb3VudCI7aTo1MDAwMDtzOjg6ImRpc2NvdW50IjtpOjUwMDAwO3M6MTA6InByb21vX2NvZGUiO3M6NjoiTE9WQTVSIjtzOjEzOiJwcm9tb19jb2RlX2lkIjtpOjE7czo4OiJxdWFudGl0eSI7aToxO3M6NToicGhvbmUiO3M6MTI6IjA4NzcxNTMzNDI0NSI7czo0OiJjaXR5IjtzOjU6IkRFUE9LIjtzOjk6InBvc3RfY29kZSI7czo1OiI0NzUzNCI7czo3OiJhZGRyZXNzIjtzOjExOiJqbHNqZGlhc3VoZCI7fX0=', 1776050038);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2026-04-12 08:57:24', '$2y$12$5ug6CrGB5SkDE8ElR8nbqOYUadDC756lBPhnhCNzRcrdFBLGW0iT2', 'pWUT1MhpQl', '2026-04-12 08:57:25', '2026-04-12 08:57:25'),
(2, 'MinAble', 'minable@store.com', NULL, '$2y$12$i3K1sfzYRh3g2XdFmAubyOq/u041MzCzuhCwlHRrGdwvdWvUDzjZ2', '0hXWRDIGgK3xCzREgY3pqnNWhlyubc2pHcSBTfExlNky97rCO754b0KGvfPl', '2026-04-12 08:57:26', '2026-04-12 08:57:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`),
  ADD KEY `books_publisher_id_foreign` (`publisher_id`),
  ADD KEY `books_author_id_foreign` (`author_id`);

--
-- Indeks untuk tabel `book_photos`
--
ALTER TABLE `book_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_photos_book_id_foreign` (`book_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `product_transactions`
--
ALTER TABLE `product_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_transactions_book_id_foreign` (`book_id`),
  ADD KEY `product_transactions_promo_code_id_foreign` (`promo_code_id`);

--
-- Indeks untuk tabel `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `book_photos`
--
ALTER TABLE `book_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `product_transactions`
--
ALTER TABLE `product_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `book_photos`
--
ALTER TABLE `book_photos`
  ADD CONSTRAINT `book_photos_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_transactions`
--
ALTER TABLE `product_transactions`
  ADD CONSTRAINT `product_transactions_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_transactions_promo_code_id_foreign` FOREIGN KEY (`promo_code_id`) REFERENCES `promo_codes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
