-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 24 jan. 2022 à 17:08
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `diagnosticauto_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(100) NOT NULL,
  `prenom_client` varchar(100) NOT NULL,
  `cin_client` varchar(100) NOT NULL,
  `societer_client` text NOT NULL,
  `adress_client` text NOT NULL,
  `email_client` varchar(100) NOT NULL,
  `tele_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

CREATE TABLE `employee` (
  `id_emp` int(11) NOT NULL,
  `nom_emp` varchar(100) NOT NULL,
  `prenom_emp` varchar(100) NOT NULL,
  `date_naissance_emp` date NOT NULL,
  `id_ville_emp` int(11) NOT NULL,
  `id_postion_emp` int(11) NOT NULL,
  `tel_emp` int(11) NOT NULL,
  `email_emp` text NOT NULL,
  `is_active_emp` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `make`
--

CREATE TABLE `make` (
  `id_make` int(11) NOT NULL,
  `code_make` int(11) NOT NULL,
  `nom_make` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `model`
--

CREATE TABLE `model` (
  `id_model` int(11) NOT NULL,
  `id_make_model` int(11) NOT NULL,
  `code_model` int(11) NOT NULL,
  `nom_model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `position`
--

CREATE TABLE `position` (
  `id_position` int(11) NOT NULL,
  `nom_postion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `service_category`
--

CREATE TABLE `service_category` (
  `id_service` int(11) NOT NULL,
  `nom_service` varchar(100) NOT NULL,
  `description_service` text NOT NULL,
  `discount_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `task_service`
--

CREATE TABLE `task_service` (
  `id_task_service` int(11) NOT NULL,
  `nom_task_service` varchar(100) NOT NULL,
  `description_task_service` text NOT NULL,
  `prix_task_service` int(11) NOT NULL,
  `id_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `id_employee_user` int(11) NOT NULL,
  `username_user` varchar(100) NOT NULL,
  `password_user` varchar(100) NOT NULL,
  `label_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id_ville` int(11) NOT NULL,
  `post_code_ville` int(11) NOT NULL,
  `nom_ville` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `visit`
--

CREATE TABLE `visit` (
  `id_visit` int(11) NOT NULL,
  `id_client_visit` int(11) NOT NULL,
  `id_voiture_visit` int(11) NOT NULL,
  `date_start_visit` date NOT NULL,
  `date_end_visit` date NOT NULL,
  `service_category` text NOT NULL,
  `service_discount` int(11) NOT NULL,
  `visit_totalprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `visit_task`
--

CREATE TABLE `visit_task` (
  `id_visit_task` int(11) NOT NULL,
  `description_visit_task` text NOT NULL,
  `prix_visit_task` int(11) NOT NULL,
  `id_task_service` int(11) NOT NULL,
  `id_visit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE `voiture` (
  `id_voiture` int(11) NOT NULL,
  `plq_matricule_voiture` text NOT NULL,
  `id_module_voiture` int(11) NOT NULL,
  `id_client_voiture` int(11) NOT NULL,
  `details_voiture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_emp`);

--
-- Index pour la table `make`
--
ALTER TABLE `make`
  ADD PRIMARY KEY (`id_make`);

--
-- Index pour la table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id_model`);

--
-- Index pour la table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id_position`);

--
-- Index pour la table `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`id_service`);

--
-- Index pour la table `task_service`
--
ALTER TABLE `task_service`
  ADD PRIMARY KEY (`id_task_service`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id_ville`);

--
-- Index pour la table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id_visit`);

--
-- Index pour la table `visit_task`
--
ALTER TABLE `visit_task`
  ADD PRIMARY KEY (`id_visit_task`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`id_voiture`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `employee`
--
ALTER TABLE `employee`
  MODIFY `id_emp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `make`
--
ALTER TABLE `make`
  MODIFY `id_make` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `model`
--
ALTER TABLE `model`
  MODIFY `id_model` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `position`
--
ALTER TABLE `position`
  MODIFY `id_position` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `task_service`
--
ALTER TABLE `task_service`
  MODIFY `id_task_service` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id_ville` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `visit`
--
ALTER TABLE `visit`
  MODIFY `id_visit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `visit_task`
--
ALTER TABLE `visit_task`
  MODIFY `id_visit_task` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `voiture`
--
ALTER TABLE `voiture`
  MODIFY `id_voiture` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
