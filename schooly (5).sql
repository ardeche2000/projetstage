-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 16 mai 2022 à 19:40
-- Version du serveur : 10.4.19-MariaDB
-- Version de PHP : 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `schooly`
--

-- --------------------------------------------------------

--
-- Structure de la table `annee__scolaires`
--

CREATE TABLE `annee__scolaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annee__scolaires`
--

INSERT INTO `annee__scolaires` (`id`, `libelle`, `created_at`, `updated_at`) VALUES
(11, '2021-2022', '2022-05-04 10:22:25', '2022-05-04 10:22:25');

-- --------------------------------------------------------

--
-- Structure de la table `anonces`
--

CREATE TABLE `anonces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre_annonce` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_annonce` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_publication` date NOT NULL,
  `groupe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_classe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anonce_type_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee_scolaire_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `anonces`
--

INSERT INTO `anonces` (`id`, `titre_annonce`, `description_annonce`, `date_publication`, `groupe_id`, `groupe_classe`, `anonce_type_id`, `annee_scolaire_id`, `created_at`, `updated_at`) VALUES
(4, 'liens cours', 'bonjour à l\'attention des classes mentionnées, veillez vous rapprocher de la direction', '2022-05-04', '31,32,33', 'CP1,C1', '5', '2020-2021', '2022-05-04 14:34:20', '2022-05-04 14:34:20'),
(5, 'informations sur les examens', 'Bonjour, les classes dont les groupes figurent sur la liste sont appelé de venir auprès de la direction pour le retrait de leur carte', '2022-05-07', 'premiere scientifique,premiere litteraire,terminale scientifique,terminale litteraire', 'C1,PC1,PC2', 'annonce descriptive', '2020-2021', '2022-05-07 01:36:32', '2022-05-07 01:36:32');

-- --------------------------------------------------------

--
-- Structure de la table `anonce__types`
--

CREATE TABLE `anonce__types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_anonce` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `anonce__types`
--

INSERT INTO `anonce__types` (`id`, `type_anonce`, `created_at`, `updated_at`) VALUES
(1, 'Annulation cours', NULL, NULL),
(6, 'annonce descriptive', '2022-05-07 01:34:53', '2022-05-07 01:34:53');

-- --------------------------------------------------------

--
-- Structure de la table `classe_groupes`
--

CREATE TABLE `classe_groupes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `groupe_nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `classe_groupes`
--

INSERT INTO `classe_groupes` (`id`, `groupe_nom`) VALUES
(1, 'C1'),
(4, 'PC1'),
(5, 'PC2'),
(7, 'B'),
(8, 'C'),
(9, 'D'),
(10, 'F');

-- --------------------------------------------------------

--
-- Structure de la table `conducteurs`
--

CREATE TABLE `conducteurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_conducteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_conducteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fonction_membre_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permis_conduire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_contrat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone_conducteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_conducteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salaire_conducteur` double(8,2) NOT NULL,
  `vehicule_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_contrat` date NOT NULL,
  `date_fin_contrat` date NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conducteurs`
--

INSERT INTO `conducteurs` (`id`, `nom_conducteur`, `prenom_conducteur`, `fonction_membre_id`, `permis_conduire`, `numero_contrat`, `telephone_conducteur`, `email_conducteur`, `salaire_conducteur`, `vehicule_id`, `date_contrat`, `date_fin_contrat`, `image_url`, `created_at`, `updated_at`) VALUES
(3, 'mafoula', 'gloire', 'chauffeur', '3 cachets', '20-lmp-15', '0641202320', 'gloire@gmail.com', 47581.50, 'renaut mc', '2022-05-07', '2022-05-07', 'storage/image_conducteur/qXE1nxO5rBxrVwSK36vZXfkHf8Rgx46FUBDGMgzM.jpg', '2022-05-07 16:42:14', '2022-05-07 16:42:14');

-- --------------------------------------------------------

--
-- Structure de la table `depenses`
--

CREATE TABLE `depenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motif_depence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarque_depence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode_paiement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `montant_depenser` double(8,2) NOT NULL,
  `date_depense` date NOT NULL,
  `annee_scolaire_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `depenses`
--

INSERT INTO `depenses` (`id`, `libelle`, `motif_depence`, `remarque_depence`, `mode_paiement`, `montant_depenser`, `date_depense`, `annee_scolaire_id`, `created_at`, `updated_at`) VALUES
(3, 'achat fournitures', 'absence de marqueur', 'l\'école n\'avait plus de fourniture', 'liquidité', 850.75, '2022-05-04', 11, '2022-05-04 15:01:46', '2022-05-04 15:01:46');

-- --------------------------------------------------------

--
-- Structure de la table `devoirs`
--

CREATE TABLE `devoirs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_devoir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sceance_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `devoirs`
--

INSERT INTO `devoirs` (`id`, `support_devoir`, `sceance_id`, `created_at`, `updated_at`) VALUES
(4, 'storage/support_devoir/MMGs9dLHTcSfx6GmJrIRgMeTPb9W9prKLkFkKBzK.pdf', 'revison sur la génétique', '2022-05-07 19:44:40', '2022-05-07 19:44:40');

-- --------------------------------------------------------

--
-- Structure de la table `eleves`
--

CREATE TABLE `eleves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone_pere` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone_mere` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_eleve` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe_eleve` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_classe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee_scolaire_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_eleve` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `eleves`
--

INSERT INTO `eleves` (`id`, `nom`, `prenom`, `telephone_pere`, `telephone_mere`, `email_eleve`, `date_naissance`, `sexe_eleve`, `groupe_id`, `groupe_classe`, `annee_scolaire_id`, `image_eleve`, `created_at`, `updated_at`) VALUES
(9, 'malonga', 'ulriche', '0641202320', '0674070592', 'ulriche@gmail.com', '1998-02-12', 'Masculin', '6éme', 'CP1', '2021-2022', 'storage/image_eleve/ydU5zvpU2x7UuXAEp5RinCKL5S5NHpRtIUxQVfi2.jpg', '2022-05-04 10:25:03', '2022-05-04 10:25:03'),
(10, 'malonga', 'debora', '0641202320', '0674070592', 'debora@gmail.com', '2000-01-17', 'Feminin', 'premiere scientifique', 'PC1', '2021-2022', 'storage/image_eleve/gwP0YSCHDNVsMC3Ha0ycAJfjGNhhEinZT7otJqVq.jpg', '2022-05-04 10:26:12', '2022-05-04 10:26:12'),
(11, 'yousra', 'shekina', '0641202320', '0674070592', 'shekina@gmail.com', '2002-05-22', 'Feminin', 'premiere scientifique', 'CP1', '2021-2022', 'storage/image_eleve/hitaNiVEUsFwOE9YctlFL5cDfVyFySxHb10rAI7m.jpg', '2022-05-04 13:35:54', '2022-05-04 13:35:54'),
(12, 'jei', 'marwan', '0641202320', '0674070592', 'marwan@gmail.com', '2001-07-22', 'Masculin', 'premiere scientifique', 'C1', '2021-2022', 'storage/image_eleve/hwkZbsR99gueY1Lpg6fAw85WTZkMLAQ46QExgBHj.jpg', '2022-05-04 15:15:25', '2022-05-04 15:15:25'),
(13, 'massamba', 'dan', '0641202320', '0674070592', 'dan@gmail.com', '1997-02-14', 'Masculin', 'premiere litteraire', 'C1', '2021-2022', 'storage/image_eleve/GaOzcsCZIjPYTT9HAR5PN2NlvuiUcCyf8UfNc78n.jpg', '2022-05-06 17:14:54', '2022-05-06 17:14:54'),
(14, 'admin', 'ardeche', '0641202320', '0674070592', 'administrateur@gmail.com', '2022-05-06', 'Feminin', 'premiere scientifique', 'PC1', '2021-2022', 'storage/image_eleve/VMcdTivwbevTkNiR51swvMgVFAPYROui90D4WrsG.png', '2022-05-06 17:17:12', '2022-05-06 17:17:12'),
(15, 'admin', 'ardeche', '0641202320', '0674070592', 'fabien@gmail.com', '2022-05-16', 'Feminin', 'premiere scientifique', 'C1', '2021-2022', 'storage/default_image/defaultImageUser.png', '2022-05-16 11:19:29', '2022-05-16 11:19:29'),
(16, 'zakaria m', 'younes m', '0444444412', '0674070587', 'zakaria@gmail.com', '2022-05-16', 'Masculin', 'premiere scientifique', 'C1', '2021-2022', 'storage/default_image/defaultImageUser.png', '2022-05-16 11:45:44', '2022-05-16 11:45:44'),
(17, 'khalil', 'amla', '0641202320', '0674070592', 'amla@gmail.com', '2022-05-16', 'Feminin', 'premiere litteraire', 'B', '2021-2022', 'storage/default_image/defaultImageUser.png', '2022-05-16 12:43:47', '2022-05-16 12:43:47'),
(18, 'a', 'b', '0641202320', '0674070592', 'mpio@gmail.com', '2022-05-17', 'Masculin', 'premiere scientifique', 'C1', '2021-2022', 'storage/default_image/defaultImageUser.png', '2022-05-16 15:06:34', '2022-05-16 15:06:34'),
(20, 'a', 'b', '0641202320', '0674070592', 'mpiro@gmail.com', '2022-05-17', 'Masculin', 'premiere scientifique', 'C1', '2021-2022', 'storage/default_image/defaultImageUser.png', '2022-05-16 15:09:22', '2022-05-16 15:09:22'),
(21, 'admin', 'ardeche', '0641202320', '0674070592', 'mdfpio@gmail.com', '1997-02-10', 'Feminin', 'premiere scientifique', 'C1', '2021-2022', 'storage/default_image/defaultImageUser.png', '2022-05-16 15:15:53', '2022-05-16 15:15:53'),
(22, 'mokoko', 'ardeche', '0641202320', '0674070592', 'mpiojhg@gmail.com', '2022-05-16', 'Masculin', 'premiere scientifique', 'C1', '2021-2022', 'storage/default_image/defaultImageUser.png', '2022-05-16 15:28:51', '2022-05-16 15:28:51'),
(23, 'admin', 'ardeche', '0641202320', '06547812', 'mpiojjklj@gmail.com', '2022-05-16', 'Feminin', 'premiere scientifique', 'C1', '2021-2022', 'storage/default_image/defaultImageUser.png', '2022-05-16 15:29:51', '2022-05-16 15:29:51');

-- --------------------------------------------------------

--
-- Structure de la table `emplois__temps`
--

CREATE TABLE `emplois__temps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heure_debut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heure_finale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_classe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `emplois__temps`
--

INSERT INTO `emplois__temps` (`id`, `jour`, `heure_debut`, `heure_finale`, `groupe_id`, `groupe_classe`, `created_at`, `updated_at`) VALUES
(18, 'lundi', '08:50', '16:40', '33', 'C1', '2022-05-05 16:56:01', '2022-05-05 16:56:01'),
(19, 'mardi', '10:17', '17:00', '33', 'C1', '2022-05-05 16:56:01', '2022-05-05 16:56:01'),
(20, 'mercredi', '08:25', '17:40', '33', 'C1', '2022-05-05 16:56:01', '2022-05-05 16:56:01'),
(21, 'jeudi', '12:00', '17:00', '33', 'C1', '2022-05-05 16:56:01', '2022-05-05 16:56:01'),
(22, 'vendredi', '09:25', '15:30', '33', 'C1', '2022-05-05 16:56:01', '2022-05-05 16:56:01'),
(23, 'lundi', '10:00', '12:00', '31', 'PC1,PC2', '2022-05-06 16:54:21', '2022-05-06 16:54:21'),
(24, 'mardi', '08:50', '15:00', '31', 'PC1,PC2', '2022-05-06 16:54:22', '2022-05-06 16:54:22'),
(25, 'mercredi', '08:50', '14:00', '31', 'PC1,PC2', '2022-05-06 16:54:22', '2022-05-06 16:54:22'),
(26, 'jeudi', '07:30', '17:30', '31', 'PC1,PC2', '2022-05-06 16:54:22', '2022-05-06 16:54:22'),
(27, 'vendredi', '08:00', '16:00', '31', 'PC1,PC2', '2022-05-06 16:54:22', '2022-05-06 16:54:22'),
(28, 'lundi', '08:50', '15:30', '6ème', 'PC1', '2022-05-06 17:01:10', '2022-05-06 17:01:10'),
(29, 'mardi', '08:50', '15:30', '6ème', 'PC1', '2022-05-06 17:01:10', '2022-05-06 17:01:10'),
(30, 'mercredi', '08:50', '16:00', '6ème', 'PC1', '2022-05-06 17:01:10', '2022-05-06 17:01:10'),
(31, 'jeudi', '08:00', '11:30', '6ème', 'PC1', '2022-05-06 17:01:10', '2022-05-06 17:01:10'),
(32, 'vendredi', '08:00', '12:00', '6ème', 'PC1', '2022-05-06 17:01:10', '2022-05-06 17:01:10'),
(33, 'lundi', '10:00', '15:00', 'terminale litteraire', 'C1', '2022-05-07 13:34:51', '2022-05-07 13:34:51'),
(34, 'lundi', '10:00', '15:00', 'premiere litteraire', 'C1', '2022-05-07 13:36:48', '2022-05-07 13:36:48'),
(35, 'mardi', '08:50', '14:30', 'premiere litteraire', 'C1', '2022-05-07 13:36:48', '2022-05-07 13:36:48'),
(36, 'mercredi', '08:45', '16:50', 'premiere litteraire', 'C1', '2022-05-07 13:36:48', '2022-05-07 13:36:48'),
(37, 'jeudi', '11:30', '17:00', 'premiere litteraire', 'C1', '2022-05-07 13:36:49', '2022-05-07 13:36:49'),
(38, 'vendredi', '08:00', '18:00', 'premiere litteraire', 'C1', '2022-05-07 13:36:49', '2022-05-07 13:36:49');

-- --------------------------------------------------------

--
-- Structure de la table `factures`
--

CREATE TABLE `factures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montant_payer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat_facture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mois_payer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode_paiement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_facture` date NOT NULL,
  `eleve_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_classe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee_scolaire_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `factures`
--

INSERT INTO `factures` (`id`, `montant_payer`, `etat_facture`, `mois_payer`, `mode_paiement`, `date_facture`, `eleve_id`, `groupe_id`, `groupe_classe`, `annee_scolaire_id`, `created_at`, `updated_at`) VALUES
(1, '17000', 'payer', 'Janvier', 'virement', '2022-05-08', 'malonga ulriche,malonga debora', 'premiere scientifique,premiere litteraire', 'PC1,PC2', '2021-2022', '2022-05-08 18:12:08', '2022-05-08 18:12:08'),
(3, '6500', 'payer', 'Janvier', 'espèce', '2022-05-12', 'yousra shekina', 'premiere scientifique', 'PC2', '2021-2022', '2022-05-09 10:58:55', '2022-05-09 10:58:55');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `fonction__membres`
--

CREATE TABLE `fonction__membres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_fonction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fonction__membres`
--

INSERT INTO `fonction__membres` (`id`, `type_fonction`, `created_at`, `updated_at`) VALUES
(1, 'directeur', NULL, NULL),
(3, 'getionnaire', NULL, NULL),
(4, 'chauffeur', NULL, NULL),
(6, 'prestateur', NULL, NULL),
(7, 'indépendant', NULL, NULL),
(8, 'vacteur', NULL, NULL),
(9, 'stagaire', NULL, NULL),
(10, 'sécretaire', NULL, NULL),
(11, 'directrice', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

CREATE TABLE `groupes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_groupe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_classe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `groupes`
--

INSERT INTO `groupes` (`id`, `nom_groupe`, `groupe_classe`, `created_at`, `updated_at`) VALUES
(31, 'premiere scientifique', 'C1', NULL, NULL),
(32, 'premiere litteraire', 'C1,PC1,PC2', NULL, NULL),
(33, 'terminale scientifique', 'ME3', NULL, NULL),
(34, 'terminale litteraire', 'CE1', NULL, NULL),
(36, '6ème', 'C1,PC1', NULL, NULL),
(38, '4ème', 'PC1', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `groupe__profs`
--

CREATE TABLE `groupe__profs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `groupe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_classe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `groupe__profs`
--

INSERT INTO `groupe__profs` (`id`, `groupe_id`, `prof_id`, `groupe_classe`, `created_at`, `updated_at`) VALUES
(10, 'premiere litteraire,terminale scientifique,6ème', 'courtine sophie', 'C1,PC1,PC2', '2022-05-07 00:37:33', '2022-05-07 00:37:33');

-- --------------------------------------------------------

--
-- Structure de la table `matieres`
--

CREATE TABLE `matieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_matiere` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_classe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`id`, `nom_matiere`, `groupe_id`, `groupe_classe`, `created_at`, `updated_at`) VALUES
(17, 'physique', 'premiere scientifique', 'PC1,PC2', NULL, NULL),
(24, 'chinois', 'terminale litteraire', 'C1,PC2', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `matiere__profs`
--

CREATE TABLE `matiere__profs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prof_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matiere_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_classe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `matiere__profs`
--

INSERT INTO `matiere__profs` (`id`, `prof_id`, `matiere_id`, `groupe_id`, `groupe_classe`, `created_at`, `updated_at`) VALUES
(10, 'mekrim bachir', 'physique', 'premiere scientifique,terminale scientifique,6ème', 'C1,PC1', '2022-05-07 01:01:15', '2022-05-07 01:01:15');

-- --------------------------------------------------------

--
-- Structure de la table `membre__ecoles`
--

CREATE TABLE `membre__ecoles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_membre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_membre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone_membre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_membre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salaire_membre` double(8,2) NOT NULL,
  `fonction_membre_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_membre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `membre__ecoles`
--

INSERT INTO `membre__ecoles` (`id`, `nom_membre`, `prenom_membre`, `cin`, `telephone_membre`, `email_membre`, `salaire_membre`, `fonction_membre_id`, `image_membre`, `created_at`, `updated_at`) VALUES
(1, 'mokoko', 'ardeche', 'BK15123', '0674070592', 'mokokoardeche@gmail.com', 47581.50, 'directeur', 'storage/image_membre/IPOwGdVyh0kv3jpHHA7fCJg1NzNl3JykNPWOiWK5.jpg', '2022-04-22 14:47:05', '2022-04-22 14:47:05'),
(4, 'hamelin', 'fronçoise', 'DFG4752', '0674070592', 'hamelin@gmail.com', 3450.00, 'getionnaire', 'storage/image_membre/m6qNYzKMGcameLF834ASrUod0lyuEQ3Ht8h9zHwp.jpg', '2022-04-25 10:43:50', '2022-04-25 10:43:50');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_04_12_143150_create_annee__scolaires_table', 1),
(5, '2022_04_12_143254_create_groupes_table', 1),
(6, '2022_04_12_143312_create_eleves_table', 1),
(7, '2022_04_12_143330_create_parents_table', 1),
(8, '2022_04_12_143437_create_matieres_table', 1),
(9, '2022_04_12_143704_create_vehicules_table', 1),
(10, '2022_04_12_143925_create_anonce__types_table', 1),
(11, '2022_04_12_143938_create_anonces_table', 1),
(12, '2022_04_12_144006_create_emplois__temps_table', 1),
(13, '2022_04_12_144038_create_fonction__membres_table', 1),
(14, '2022_04_12_144309_create_membre__ecoles_table', 1),
(15, '2022_04_12_144333_create_salaires_table', 1),
(16, '2022_04_12_144356_create_depenses_table', 1),
(17, '2022_04_12_144421_create_factures_table', 1),
(18, '2022_04_13_132017_create_profs_table', 1),
(19, '2022_04_13_132316_create_groupe__profs_table', 1),
(20, '2022_04_13_132521_create_matiere__profs_table', 1),
(21, '2022_04_13_132623_create_conducteurs_table', 1),
(22, '2022_04_13_132731_create_sceances_table', 1),
(23, '2022_04_13_132822_create_devoirs_table', 1),
(24, '2022_04_13_132921_create_presences_table', 1),
(25, '2022_04_13_133018_create_records_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_parent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_parent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin_parent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession_parent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone_parent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_parent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eleve_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `parents`
--

INSERT INTO `parents` (`id`, `nom_parent`, `prenom_parent`, `cin_parent`, `profession_parent`, `telephone_parent`, `email_parent`, `eleve_id`, `password`, `created_at`, `updated_at`) VALUES
(4, 'mokoko', 'ardeche', 'BK15123', 'agent transport', '0641202320', 'mokokoardeche@gmail.com', '9,10,11', '$2y$10$FiGGllLbdrGKMhaJ9Q3DvONO6Ql7NvZNWr145Qd5K./sOdb0tzZYq', '2022-05-04 11:01:32', '2022-05-04 11:01:32'),
(6, 'nguimbi', 'espoir', '04kcood', 'coutier assurance', '0641202320', 'espoire@gmail.com', '11', '$2y$10$ynksHI0Dj4yd/5j78.goeOmxyr1uOCTt7BulX0.aEu57Ml4P.5umy', '2022-05-04 13:23:29', '2022-05-04 13:23:29');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mokokoardeche@gmail.com', '$2y$10$i4sn5cZKhlT6u3b0BMTqM.PqJrlgk4Vs4kHyqodgrhV0yjQz3mE66', '2022-05-12 14:51:49');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(6, 'App\\Models\\User', 1, 'authToken', 'befaeab13bf2711c35bc4630a4ee2e03cfa062edc34a446189d9f456b2cea02c', '[\"*\"]', NULL, '2022-04-28 12:03:43', '2022-04-28 12:03:43'),
(7, 'App\\Models\\User', 1, 'authToken', '4c62f1e70708b111f6e0a8082ea336b01da90fc2510331393f8519eb16bc349d', '[\"*\"]', NULL, '2022-04-28 12:05:26', '2022-04-28 12:05:26'),
(8, 'App\\Models\\User', 1, 'authToken', '374f758c1082ffc6a8eba870e5bb54cb822e27b51e6e4eeed95dc3000a787833', '[\"*\"]', NULL, '2022-04-28 12:06:33', '2022-04-28 12:06:33'),
(9, 'App\\Models\\User', 1, 'authToken', 'eb8d679504abfe1534588ad28c216acfd3c7664d6aa6b6dfe960e149a72b718b', '[\"*\"]', NULL, '2022-04-28 12:06:36', '2022-04-28 12:06:36'),
(10, 'App\\Models\\User', 1, 'authToken', 'a93995029a70eccdfb61b9ba590c0dc70d7a5e40cfca6e488dec1590c937821c', '[\"*\"]', NULL, '2022-04-28 12:08:01', '2022-04-28 12:08:01'),
(11, 'App\\Models\\User', 1, 'authToken', '8aeb6f5df66c133d6257c00a87bdc84b5faa001d808a87ecc65f2503829d1518', '[\"*\"]', NULL, '2022-04-28 12:17:04', '2022-04-28 12:17:04'),
(12, 'App\\Models\\User', 1, 'token', 'f5af184860497ebe029d9e875ad656dcb249b5bb44ece5321211ed164bc4a8dc', '[\"*\"]', NULL, '2022-04-28 12:19:13', '2022-04-28 12:19:13'),
(13, 'App\\Models\\User', 1, 'token', '3e74257c4cb51fe2be365f582ad3646fd3a21f4ed8f1783fed0bc95ae99d43c9', '[\"*\"]', NULL, '2022-04-28 14:15:13', '2022-04-28 14:15:13');

-- --------------------------------------------------------

--
-- Structure de la table `presences`
--

CREATE TABLE `presences` (
  `id` int(10) UNSIGNED NOT NULL,
  `eleve_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentaire` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat_presence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sceance_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `presences`
--

INSERT INTO `presences` (`id`, `eleve_id`, `commentaire`, `etat_presence`, `sceance_id`, `created_at`, `updated_at`) VALUES
(7, 'malonga debora', 'rien à signaler', 'présent', 'revison sur la génétique', NULL, NULL),
(8, 'yousra shekina', 'elle était malade', 'absent', 'revison sur la génétique', NULL, NULL),
(9, 'jei marwan', 'il n\'a pas fini la séance', 'autres', 'revison sur la génétique', NULL, NULL),
(10, 'admin ardeche', 'il n\'a pas signalé', 'absent', 'revison sur la génétique', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `profs`
--

CREATE TABLE `profs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_prof` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_prof` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin_prof` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone_prof` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_prof` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salaire_prof` double(8,2) NOT NULL,
  `annee_scolaire_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fonction_membre_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_prof` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `profs`
--

INSERT INTO `profs` (`id`, `nom_prof`, `prenom_prof`, `cin_prof`, `telephone_prof`, `email_prof`, `salaire_prof`, `annee_scolaire_id`, `fonction_membre_id`, `image_prof`, `password`, `created_at`, `updated_at`) VALUES
(6, 'courtine', 'sophie', 'BK15123', '0654781247', 'sophie@gmail.com', 85000.00, '2021-2022', 'stagiaire', 'storage/image_prof/qEdkxC6Abea1olSPeITMRoDQ11QFzCpjzhakzwT8.jpg', '$2y$10$w2MJvWNmjACrk/VjZXILoOVx1jpApAWBF.qiNDWgiJnXjcUMvwqLC', '2022-05-04 12:59:50', '2022-05-04 12:59:50'),
(7, 'mekrim', 'bachir', '04kcood', '0674070592', 'bachir@gmail.com', 47581.50, '2021-2022', 'prof principal', 'storage/image_prof/hIGkFd24dWkNva7dlSxJ6Xr46440H8fqP1ecNcCw.jpg', '$2y$10$w2MJvWNmjACrk/VjZXILoOVx1jpApAWBF.qiNDWgiJnXjcUMvwqLC', '2022-05-04 13:45:16', '2022-05-04 13:45:16'),
(8, 'le brun', 'patrick', 'BK15123', '0674070592', 'patrick@gmail.com', 47581.50, '2021-2022', 'prestateur', 'storage/image_prof/LxlU2bfOkX7deufFwGloYpPhdcF7XvS74Ctmzo8U.jpg', '$2y$10$CgfLr.N2EYEI6gbnHshmwuQeeIoLsQkGUg37gl/eifP/PPGreYckG', '2022-05-06 17:35:56', '2022-05-06 17:35:56');

-- --------------------------------------------------------

--
-- Structure de la table `records`
--

CREATE TABLE `records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_record` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien_record` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sceance_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `records`
--

INSERT INTO `records` (`id`, `nom_record`, `lien_record`, `sceance_id`, `created_at`, `updated_at`) VALUES
(6, 'liens cours', 'https://youtu.be/xbQ9j8FIhT0', 'revison sur la génétique', '2022-05-07 19:03:17', '2022-05-07 19:03:17');

-- --------------------------------------------------------

--
-- Structure de la table `salaires`
--

CREATE TABLE `salaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_employer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_employer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mois_payer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat_salaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `montant` double(8,2) NOT NULL,
  `salaire_total` double(8,2) NOT NULL,
  `reste_salaire` double(8,2) NOT NULL,
  `fonction_membre_id` bigint(20) UNSIGNED NOT NULL,
  `date_paiement` date NOT NULL,
  `mode_paiement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarque` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee_scolaire_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `salaires`
--

INSERT INTO `salaires` (`id`, `nom_employer`, `prenom_employer`, `mois_payer`, `etat_salaire`, `montant`, `salaire_total`, `reste_salaire`, `fonction_membre_id`, `date_paiement`, `mode_paiement`, `remarque`, `annee_scolaire_id`, `created_at`, `updated_at`) VALUES
(4, 'mokoko', 'ardeche', 'Janvier', 'payer', 8500.00, 8500.00, 0.00, 7, '2022-05-19', 'liquidité', 'rien à signaler', 11, '2022-05-04 15:03:02', '2022-05-04 15:03:02'),
(5, 'mehkari', 'bachir', 'Janvier', 'payer', 6500.00, 6500.00, 0.00, 1, '2022-05-04', 'liquidité', 'rien à signaler', 11, '2022-05-04 15:29:43', '2022-05-04 15:29:43'),
(6, 'ngoma', 'fabrice', 'Janvier', 'non payer', 0.00, 4250.00, 4250.00, 4, '2022-05-04', 'liquidité', 'pas encore payé', 11, '2022-05-04 15:40:26', '2022-05-04 15:40:26'),
(7, 'courtine', 'sophie', 'Janvier', 'payer', 5000.00, 5000.00, 0.00, 3, '2022-05-05', 'virement', 'elle à tout reçu', 11, '2022-05-05 14:12:17', '2022-05-05 14:12:17');

-- --------------------------------------------------------

--
-- Structure de la table `sceances`
--

CREATE TABLE `sceances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_sceance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_sceance` date NOT NULL,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `matiere_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupe_classe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sceances`
--

INSERT INTO `sceances` (`id`, `nom_sceance`, `date_sceance`, `heure_debut`, `heure_fin`, `matiere_id`, `groupe_id`, `groupe_classe`, `prof_id`, `created_at`, `updated_at`) VALUES
(7, 'revison sur la génétique', '2022-05-07', '17:00:00', '18:50:00', 'physique', 'premiere scientifique', 'C1,PC2', 'courtine sophie', '2022-05-07 17:10:28', '2022-05-07 17:10:28');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ardeche', 'mokokoardeche@gmail.com', NULL, '$2y$12$4odZQdVCfVJiu66pxUNK/e80UHhsFP.GYNpG3PvnsScjxBN3rvHQ6', 'admin', 'qHJ93YGJbt4g76IMZOXkEABbTlrYh4BbRs7RquOYq6lIHb4AeYiXCJY1WHnq', '2022-04-13 15:04:38', '2022-04-13 15:04:38'),
(3, 'zara', 'zara@gmail.com', NULL, '$2y$10$4dC6Ce8.RS73YAz78WjOMOV.9lVOOYlEdFnNEzOHGMZY93yCG75Xa', 'admin', NULL, '2022-05-09 13:45:03', '2022-05-09 13:45:03');

-- --------------------------------------------------------

--
-- Structure de la table `vehicules`
--

CREATE TABLE `vehicules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_vehicule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modele_vehicule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `couleur_vehicule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_matriculation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_assurance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_assurance` double(8,2) NOT NULL,
  `date_assurance` date NOT NULL,
  `date_fin_assurance` date NOT NULL,
  `image_vehicule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vehicules`
--

INSERT INTO `vehicules` (`id`, `nom_vehicule`, `modele_vehicule`, `couleur_vehicule`, `numero_matriculation`, `nom_assurance`, `prix_assurance`, `date_assurance`, `date_fin_assurance`, `image_vehicule`, `created_at`, `updated_at`) VALUES
(1, 'renaut', 'diesel', 'jaune', 'kdj4d7dksj', 'axas maroc', 1385.50, '2022-04-26', '2022-05-27', 'storage/image_vehicule/Gtz8OlyfJdy7ofk8VFCMiVQKg2aheGAe6Z3AWYN6.jpg', '2022-04-26 13:46:58', '2022-04-26 13:46:58'),
(2, 'renaut mc', 'diesel', 'jaune', 'plmk478ddj', 'wafa assurance', 783.00, '2022-03-22', '2022-04-30', 'storage/image_vehicule/pNrUkRlVeAxKH7LZej3xw9h0UaPfwekPYnYaunHL.jpg', '2022-04-26 13:48:50', '2022-04-26 13:48:50');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annee__scolaires`
--
ALTER TABLE `annee__scolaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `anonces`
--
ALTER TABLE `anonces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anonces_groupe_id_foreign` (`groupe_id`),
  ADD KEY `anonces_anonce_type_id_foreign` (`anonce_type_id`),
  ADD KEY `anonces_annee_scolaire_id_foreign` (`annee_scolaire_id`),
  ADD KEY `groupe_classe` (`groupe_classe`);

--
-- Index pour la table `anonce__types`
--
ALTER TABLE `anonce__types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `classe_groupes`
--
ALTER TABLE `classe_groupes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `conducteurs`
--
ALTER TABLE `conducteurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `conducteurs_email_conducteur_unique` (`email_conducteur`),
  ADD KEY `conducteurs_fonction_membre_id_foreign` (`fonction_membre_id`),
  ADD KEY `conducteurs_vehicule_id_foreign` (`vehicule_id`);

--
-- Index pour la table `depenses`
--
ALTER TABLE `depenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `depenses_annee_scolaire_id_foreign` (`annee_scolaire_id`);

--
-- Index pour la table `devoirs`
--
ALTER TABLE `devoirs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `devoirs_sceance_id_foreign` (`sceance_id`);

--
-- Index pour la table `eleves`
--
ALTER TABLE `eleves`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eleves_email_eleve_unique` (`email_eleve`),
  ADD KEY `eleves_annee_scolaire_id_foreign` (`annee_scolaire_id`),
  ADD KEY `fk_groupeeleve_` (`groupe_id`),
  ADD KEY `groupe_classe` (`groupe_classe`);

--
-- Index pour la table `emplois__temps`
--
ALTER TABLE `emplois__temps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_groupe` (`groupe_id`),
  ADD KEY `groupe_classe` (`groupe_classe`);

--
-- Index pour la table `factures`
--
ALTER TABLE `factures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `factures_eleve_id_foreign` (`eleve_id`),
  ADD KEY `factures_annee_scolaire_id_foreign` (`annee_scolaire_id`),
  ADD KEY `groupe_id` (`groupe_id`),
  ADD KEY `groupe_classe` (`groupe_classe`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `fonction__membres`
--
ALTER TABLE `fonction__membres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupe_classe` (`groupe_classe`);

--
-- Index pour la table `groupe__profs`
--
ALTER TABLE `groupe__profs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupe__profs_groupe_id_foreign` (`groupe_id`),
  ADD KEY `groupe__profs_prof_id_foreign` (`prof_id`),
  ADD KEY `groupe_classe` (`groupe_classe`);

--
-- Index pour la table `matieres`
--
ALTER TABLE `matieres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupe_id` (`groupe_id`),
  ADD KEY `groupe_classe` (`groupe_classe`);

--
-- Index pour la table `matiere__profs`
--
ALTER TABLE `matiere__profs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matiere__profs_prof_id_foreign` (`prof_id`),
  ADD KEY `matiere__profs_matiere_id_foreign` (`matiere_id`),
  ADD KEY `groupe_classe` (`groupe_classe`);

--
-- Index pour la table `membre__ecoles`
--
ALTER TABLE `membre__ecoles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `membre__ecoles_email_membre_unique` (`email_membre`),
  ADD KEY `membre__ecoles_fonction_membre_id_foreign` (`fonction_membre_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `parents_email_parent_unique` (`email_parent`),
  ADD KEY `parents_eleve_id_foreign` (`eleve_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `presences`
--
ALTER TABLE `presences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presences_eleve_id_foreign` (`eleve_id`),
  ADD KEY `presences_sceance_id_foreign` (`sceance_id`);

--
-- Index pour la table `profs`
--
ALTER TABLE `profs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profs_email_prof_unique` (`email_prof`),
  ADD KEY `profs_annee_scolaire_id_foreign` (`annee_scolaire_id`),
  ADD KEY `profs_fonction_membre_id_foreign` (`fonction_membre_id`);

--
-- Index pour la table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `records_sceance_id_foreign` (`sceance_id`);

--
-- Index pour la table `salaires`
--
ALTER TABLE `salaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salaires_fonction_membre_id_foreign` (`fonction_membre_id`),
  ADD KEY `salaires_annee_scolaire_id_foreign` (`annee_scolaire_id`);

--
-- Index pour la table `sceances`
--
ALTER TABLE `sceances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sceances_matiere_id_foreign` (`matiere_id`),
  ADD KEY `sceances_groupe_id_foreign` (`groupe_id`),
  ADD KEY `sceances_prof_id_foreign` (`prof_id`),
  ADD KEY `groupe_classe` (`groupe_classe`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `vehicules`
--
ALTER TABLE `vehicules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annee__scolaires`
--
ALTER TABLE `annee__scolaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `anonces`
--
ALTER TABLE `anonces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `anonce__types`
--
ALTER TABLE `anonce__types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `classe_groupes`
--
ALTER TABLE `classe_groupes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `conducteurs`
--
ALTER TABLE `conducteurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `depenses`
--
ALTER TABLE `depenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `devoirs`
--
ALTER TABLE `devoirs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `eleves`
--
ALTER TABLE `eleves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `emplois__temps`
--
ALTER TABLE `emplois__temps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `factures`
--
ALTER TABLE `factures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fonction__membres`
--
ALTER TABLE `fonction__membres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `groupes`
--
ALTER TABLE `groupes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `groupe__profs`
--
ALTER TABLE `groupe__profs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `matieres`
--
ALTER TABLE `matieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `matiere__profs`
--
ALTER TABLE `matiere__profs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `membre__ecoles`
--
ALTER TABLE `membre__ecoles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `presences`
--
ALTER TABLE `presences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `profs`
--
ALTER TABLE `profs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `records`
--
ALTER TABLE `records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `salaires`
--
ALTER TABLE `salaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `sceances`
--
ALTER TABLE `sceances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `vehicules`
--
ALTER TABLE `vehicules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `depenses`
--
ALTER TABLE `depenses`
  ADD CONSTRAINT `depenses_annee_scolaire_id_foreign` FOREIGN KEY (`annee_scolaire_id`) REFERENCES `annee__scolaires` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `salaires`
--
ALTER TABLE `salaires`
  ADD CONSTRAINT `salaires_annee_scolaire_id_foreign` FOREIGN KEY (`annee_scolaire_id`) REFERENCES `annee__scolaires` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `salaires_fonction_membre_id_foreign` FOREIGN KEY (`fonction_membre_id`) REFERENCES `fonction__membres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
