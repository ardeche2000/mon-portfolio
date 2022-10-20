-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 24 sep. 2022 à 12:37
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
-- Base de données : `jador`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `nom`, `prenom`, `telephone`, `email`, `message`, `date`) VALUES
(1, 'admin', 'ardeche', '0641202320', 'mokokoardeche@gmail.com', '0', '2022-07-10 17:04:12'),
(2, 'mokoko', 'ardeche', '0641202320', 'mokokoardeche@gmail.com', 'bonjour', '2022-07-10 17:06:27'),
(3, 'admin', 'espoir', '0641202320', 'mokoko@gmail.com', 'fffff', '2022-07-10 17:08:02'),
(4, 'admin', 'ardeche', '0641202320', 'mokokoardeche@gmail.com', 'fff', '2022-07-10 17:08:50'),
(5, 'wolf', 'mm', '0641202320', 'mokoko@gmail.com', 'mmmmmm', '2022-07-10 17:10:27'),
(6, 'admin', 'ardeche', '0641202320', 'mokokoardeche@gmail.com', 'c vdfvg', '2022-07-10 17:14:06'),
(7, 'admin', 'ardeche', '0641202320', 'mokokoardeche@gmail.com', 'c vdfvg', '2022-07-10 17:15:15'),
(8, 'paks', 'ardeche', '0641202320', 'mokokoardeche@gmail.com', 'fvjbdvbsdj', '2022-07-10 17:16:15'),
(9, 'Jador', 'Ardèche', '0674070592', 'mokokompioardechejador@gmail.com', 'Bonjour', '2022-07-10 18:23:43'),
(10, 'Fabien', 'Jador', '0674070592', 'mokoko@gmail.com', 'Monsieur mokoko', '2022-07-10 18:41:41'),
(11, 'Ardèche', 'Jador', '0674070592', 'mokoko@gmail.com', 'Bhtt', '2022-07-10 18:42:16'),
(12, 'Mokoko', 'Ardèche', '0674070592', 'ardeche@gmail.com', 'Bonsoir', '2022-07-10 18:44:41'),
(13, 'admin', 'ardeche', '0641202320', 'mokojfjfkoardeche@gmail.com', ',jqbjfdj', '2022-08-28 19:27:57');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
