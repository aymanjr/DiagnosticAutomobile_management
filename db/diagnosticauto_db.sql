-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 25 jan. 2022 à 14:41
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

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id_ville`, `post_code_ville`, `nom_ville`) VALUES
(1, 1, 'AL HAJEB'),
(2, 2, 'AGADIR'),
(3, 3, 'AL HOCEIMA'),
(4, 4, 'ASSA ZAG'),
(5, 5, 'AZILAL'),
(6, 6, 'BENI MELLAL'),
(7, 7, ' BENSLIMANE'),
(8, 8, 'BOUJDOUR'),
(9, 9, 'BOULEMANE'),
(10, 10, 'BERRECHID'),
(11, 11, ' CASABLANCA'),
(12, 12, 'CHEFCHAOUEN'),
(13, 13, 'CHTOUKA AIT BAHA'),
(14, 14, 'CHICHAOUA'),
(15, 15, 'EL JADIDA'),
(16, 16, 'EL KELAA DES SRAGHNAS'),
(17, 17, 'ERRACHIDIA'),
(18, 18, 'ESSAOUIRA'),
(19, 19, 'ES SEMARA'),
(20, 20, 'FES'),
(21, 21, ' FIGUIG'),
(22, 22, 'GUELMIM'),
(23, 23, 'IFRANE'),
(24, 24, 'KENITRA'),
(25, 25, 'KHEMISSET'),
(26, 26, 'KHENIFRA'),
(27, 27, 'KHOURIBGA'),
(28, 28, 'LAAYOUNE'),
(29, 29, 'LARACHE'),
(30, 30, 'MOHAMMEDIA'),
(31, 31, ' MARRAKECH'),
(32, 32, 'MEKNES'),
(33, 33, 'NADOR'),
(34, 34, 'OUARZAZATE'),
(35, 35, 'OUJDA'),
(36, 36, 'OUED EDDAHAB'),
(37, 37, 'RABAT'),
(38, 38, 'SALE'),
(39, 39, 'SKHIRAT TEMARA'),
(40, 40, 'SEFROU'),
(41, 41, ' SAFI'),
(42, 42, 'SETTAT'),
(43, 43, 'SIDI KACEM'),
(44, 44, 'TANGER'),
(45, 45, 'TAN TAN'),
(46, 46, 'TAOUNAT'),
(47, 47, 'TAROUDANNT'),
(48, 48, 'TATA'),
(49, 49, 'TAZA'),
(50, 50, 'TETOUAN'),
(51, 51, 'TIZNIT');

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
  ADD PRIMARY KEY (`id_emp`),
  ADD KEY `foreignkey_emp_ville` (`id_ville_emp`),
  ADD KEY `foreignkey_emp_position` (`id_postion_emp`);

--
-- Index pour la table `make`
--
ALTER TABLE `make`
  ADD PRIMARY KEY (`id_make`);

--
-- Index pour la table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id_model`),
  ADD KEY `foreignkey_model_make` (`id_make_model`);

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
  ADD PRIMARY KEY (`id_task_service`),
  ADD KEY `foreignkey_taskservice_servicecat` (`id_service`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `foreignkey_users_emp` (`id_employee_user`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id_ville`);

--
-- Index pour la table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id_visit`),
  ADD KEY `foreignkey_visit_voiture` (`id_voiture_visit`),
  ADD KEY `foreignkey_visit_client` (`id_client_visit`);

--
-- Index pour la table `visit_task`
--
ALTER TABLE `visit_task`
  ADD PRIMARY KEY (`id_visit_task`),
  ADD KEY `foreignkey_visittask_servicetask` (`id_task_service`),
  ADD KEY `foreignkey_visittask_visit` (`id_visit`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`id_voiture`),
  ADD KEY `foreignkey_client_ville` (`id_client_voiture`),
  ADD KEY `foreignkey_model_voiture` (`id_module_voiture`);

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

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `foreignkey_emp_position` FOREIGN KEY (`id_postion_emp`) REFERENCES `position` (`id_position`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreignkey_emp_ville` FOREIGN KEY (`id_ville_emp`) REFERENCES `ville` (`id_ville`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `foreignkey_model_make` FOREIGN KEY (`id_make_model`) REFERENCES `make` (`id_make`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `task_service`
--
ALTER TABLE `task_service`
  ADD CONSTRAINT `foreignkey_taskservice_servicecat` FOREIGN KEY (`id_service`) REFERENCES `service_category` (`id_service`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `foreignkey_users_emp` FOREIGN KEY (`id_employee_user`) REFERENCES `employee` (`id_emp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `foreignkey_visit_client` FOREIGN KEY (`id_client_visit`) REFERENCES `client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreignkey_visit_voiture` FOREIGN KEY (`id_voiture_visit`) REFERENCES `voiture` (`id_voiture`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `visit_task`
--
ALTER TABLE `visit_task`
  ADD CONSTRAINT `foreignkey_visittask_servicetask` FOREIGN KEY (`id_task_service`) REFERENCES `task_service` (`id_task_service`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreignkey_visittask_visit` FOREIGN KEY (`id_visit`) REFERENCES `visit` (`id_visit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD CONSTRAINT `foreignkey_client_ville` FOREIGN KEY (`id_client_voiture`) REFERENCES `client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreignkey_model_voiture` FOREIGN KEY (`id_module_voiture`) REFERENCES `model` (`id_model`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
