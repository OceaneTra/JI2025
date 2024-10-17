-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 17 oct. 2024 à 17:13
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `parrainagemiage`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `correspondances`
--

DROP TABLE IF EXISTS `correspondances`;
CREATE TABLE IF NOT EXISTS `correspondances` (
  `id_correspondance` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_L1` bigint UNSIGNED NOT NULL,
  `id_L3` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_correspondance`),
  KEY `correspondances_id_l1_foreign` (`id_L1`),
  KEY `correspondances_id_l3_foreign` (`id_L3`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `licence1s`
--

DROP TABLE IF EXISTS `licence1s`;
CREATE TABLE IF NOT EXISTS `licence1s` (
  `id_L1` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_L1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_L1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_L1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mot_de_passe_L1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_L1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_L1`),
  UNIQUE KEY `licence1s_email_l1_unique` (`email_L1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `licence3s`
--

DROP TABLE IF EXISTS `licence3s`;
CREATE TABLE IF NOT EXISTS `licence3s` (
  `id_L3` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_L3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_L3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_L3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mot_de_passe_L3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_L3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_L3`),
  UNIQUE KEY `licence3s_email_l3_unique` (`email_L3`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_10_10_140136_create_licence1s_table', 1),
(2, '2024_10_10_140152_create_licence3s_table', 2),
(3, '2024_10_10_141329_create_questions_table', 3),
(4, '2024_10_10_141341_create_reponses_table', 4),
(5, '0001_01_01_000000_create_users_table', 5),
(6, '0001_01_01_000001_create_cache_table', 5),
(7, '0001_01_01_000002_create_jobs_table', 5),
(8, '2024_10_10_141159_create_reponses_l1s_table', 5),
(9, '2024_10_10_141234_create_reponses_l3s_table', 5),
(10, '2024_10_10_142034_create_correspondances_table', 5);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id_question` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `libelle_question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

DROP TABLE IF EXISTS `reponses`;
CREATE TABLE IF NOT EXISTS `reponses` (
  `id_reponse` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_question` bigint UNSIGNED NOT NULL,
  `libelle_reponse` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_reponse`),
  KEY `reponses_id_question_foreign` (`id_question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reponses_l1s`
--

DROP TABLE IF EXISTS `reponses_l1s`;
CREATE TABLE IF NOT EXISTS `reponses_l1s` (
  `id_reponse_L1` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_L1` bigint UNSIGNED NOT NULL,
  `id_question` bigint UNSIGNED NOT NULL,
  `id_reponse` bigint UNSIGNED NOT NULL,
  `points_obtenus` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_reponse_L1`),
  KEY `reponses_l1s_id_l1_foreign` (`id_L1`),
  KEY `reponses_l1s_id_question_foreign` (`id_question`),
  KEY `reponses_l1s_id_reponse_foreign` (`id_reponse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reponses_l3s`
--

DROP TABLE IF EXISTS `reponses_l3s`;
CREATE TABLE IF NOT EXISTS `reponses_l3s` (
  `id_reponse_L3` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_L3` bigint UNSIGNED NOT NULL,
  `id_question` bigint UNSIGNED NOT NULL,
  `id_reponse` bigint UNSIGNED NOT NULL,
  `points_obtenus` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_reponse_L3`),
  KEY `reponses_l3s_id_l3_foreign` (`id_L3`),
  KEY `reponses_l3s_id_question_foreign` (`id_question`),
  KEY `reponses_l3s_id_reponse_foreign` (`id_reponse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('rxEisJUnvYecddi9gQv7DK9R1cVidOEWXWHu7m30', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1AxRlR5aG0xbGk1Umg5SnBQaGtuZ1NQUFllMzBQWXRMY1gyV0dtWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9wYXJyYWluYWdlbWlhZ2UudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729115127),
('PJTprrZt66rCqsm3JRarDwozYu3PMTz4GSxmqlcb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkV6a0l3VndHUUhOVlpoeTZ6eVMxdk1Ed0VjU1FCQ2R4OFZSMExlVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly9wYXJyYWluYWdlbWlhZ2UudGVzdC9ham91dGVycXVlc3Rpb25zP2xpYmVsbGVfcXVlc3Rpb249Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729184749);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD CONSTRAINT `reponses_id_question_foreign` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reponses_l1s`
--
ALTER TABLE `reponses_l1s`
  ADD CONSTRAINT `reponses_l1s_id_l1_foreign` FOREIGN KEY (`id_L1`) REFERENCES `licence1s` (`id_L1`) ON DELETE CASCADE,
  ADD CONSTRAINT `reponses_l1s_id_question_foreign` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`) ON DELETE CASCADE,
  ADD CONSTRAINT `reponses_l1s_id_reponse_foreign` FOREIGN KEY (`id_reponse`) REFERENCES `reponses` (`id_reponse`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reponses_l3s`
--
ALTER TABLE `reponses_l3s`
  ADD CONSTRAINT `reponses_l3s_id_l3_foreign` FOREIGN KEY (`id_L3`) REFERENCES `licence3s` (`id_L3`) ON DELETE CASCADE,
  ADD CONSTRAINT `reponses_l3s_id_question_foreign` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`) ON DELETE CASCADE,
  ADD CONSTRAINT `reponses_l3s_id_reponse_foreign` FOREIGN KEY (`id_reponse`) REFERENCES `reponses` (`id_reponse`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
