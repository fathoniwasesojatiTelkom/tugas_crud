-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 09 Des 2020 pada 16.19
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universitas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2020_12_08_103434_create_users_table', 1),
(6, '2020_12_08_103953_users_table', 2),
(7, '2014_10_12_000000_create_users_table', 3),
(8, '2014_10_12_100000_create_password_resets_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `nama`, `nim`, `email`, `alamat`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Fathoni Waseso J', '1103180147', 'mfwj21@gmail.com', 'Dagen IX of III Jaten, Karanganyar', 'tony.jpg', '2020-12-08 10:38:22', '2020-12-09 03:50:45'),
(2, 'Berliana D Ermawati', '1103180344', 'berlianaermawati@gmail.com', 'Palur XII of VII, Surakarta', '5.jpeg', '2020-12-08 10:30:45', '2020-12-08 22:13:15'),
(3, 'Elizabeth K.N', '1103180111', 'elizabeth@gmail.com', 'kebun kuning XII of VII, Jakarta Utara', '1.jpg.jpeg', '2020-12-08 10:37:50', '2020-12-08 10:37:50'),
(4, 'Maryana Maulana', '1103181111', 'maryana@gmail.com', 'Tanjung III of XII, Karanganyar', '2.jpg.jpeg', '2020-12-08 10:38:42', '2020-12-08 10:38:42'),
(5, 'Inne Putri Agustina', '1103180221', 'innek@gmail.com', 'Sangkrah III Street IX, Surakarta', '6.jpeg.jpeg', '2020-12-08 10:40:52', '2020-12-08 10:40:52'),
(6, 'Jessica Flavoura R', '1103180112', 'jessica@gmail.com', 'Manahan Selatan XXI Street 05, Surakarta', '3.jpg.jpeg', '2020-12-08 10:42:34', '2020-12-08 10:42:34'),
(7, 'Lintang Putra Dinigrat', '1103180432', 'lintang@gmail.com', 'Kebakkaramat Street IXX, Karanganyar', '5.jpeg.jpeg', '2020-12-08 10:44:31', '2020-12-08 10:44:31'),
(8, 'Anggun Raflesia Ananda', '1103180334', 'anggun32@gmail.com', 'Bangka Selatan Street IV, Karanganyar', '7.jpeg.jpeg', '2020-12-08 10:46:06', '2020-12-08 10:46:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('admin','student','dosen','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fathoni waseso jati', 'mfwj21@gmail.com', '$2y$10$agbwufgtQsyL/RJDfPdtj.JNaAUXCErxDqULxxvY9./taSCmLaWaW', 'admin', 'eQcFnzNIpkGfxLeHkDpDa5HKzDAfoC8jhBuyrSRp6JVjgsu7TfNI7cMdO76I', '2020-12-09 02:54:38', '2020-12-09 02:58:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
