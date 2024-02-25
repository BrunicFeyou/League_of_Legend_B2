cd -- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 25 fév. 2024 à 18:07
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `leagueoflegends_b2`
--

-- --------------------------------------------------------

--
-- Structure de la table `champion`
--

CREATE TABLE `champion` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `champion`
--

INSERT INTO `champion` (`id`, `name`, `createAt`, `updatedAt`, `type`) VALUES
(4, 'Braum', '2024-02-25 00:12:41.916', '2024-02-25 00:12:41.916', 'Support'),
(5, 'Akshan', '2024-02-25 11:47:01.368', '2024-02-25 11:47:48.286', 'Tireur'),
(6, 'Kalista', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Marksmen'),
(7, 'Viego', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Fighter'),
(8, 'Lee Sin', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Fighter'),
(9, 'Alistar', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Support'),
(10, 'Ivern', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Support'),
(11, 'Gnar', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Tank'),
(12, 'Briar', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Assassin'),
(13, 'Aatrox', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Tank'),
(14, 'Ahri', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Assassin'),
(15, 'Lilia', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Fighter'),
(16, 'Jax', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'fighter'),
(17, 'Kennen', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'mage'),
(18, 'Leblanc', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Mage'),
(19, 'Ezreal', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Marksmen'),
(20, 'Vayne', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Marksmen'),
(21, 'Zed', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Assassin'),
(22, 'Jarvan IV', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Tank'),
(23, 'Kayn', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Assassin'),
(24, 'Sett', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Fighter'),
(25, 'Swain', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Tank'),
(26, 'Draven', '2024-02-25 14:16:47.370', '2024-02-25 14:16:47.370', 'Marksmen');

-- --------------------------------------------------------

--
-- Structure de la table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('010015f6-211e-4cdf-a8ca-60fb87853663', '3ab332366e84eda449abc8914e226ae219ceea94cc7e0b014652cf9f7c869688', '2024-02-24 16:24:38.619', '20240224162438_create_champions', NULL, NULL, '2024-02-24 16:24:38.606', 1),
('ed131af9-897b-46ba-9e6b-cb9f57becfe5', '5ce776758f3a8a5fab90cc236a8a2820af9209fc3cc2191b9b0b783a3893027d', '2024-02-24 16:42:43.856', '20240224164243_create_table_champions', NULL, NULL, '2024-02-24 16:42:43.847', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `champion`
--
ALTER TABLE `champion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `champion`
--
ALTER TABLE `champion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
