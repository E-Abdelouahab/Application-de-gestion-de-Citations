-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 17 avr. 2020 à 15:13
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `citation`
--

-- --------------------------------------------------------

--
-- Structure de la table `citations`
--

CREATE TABLE `citations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `citation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `citations`
--

INSERT INTO `citations` (`id`, `name`, `citation`) VALUES
(3, 'aissa ', 'juhghjoi'),
(4, 'khalisdf', 'salut tout le monde'),
(5, 'sergh', 'ghjkl'),
(6, 'sfgfg', 'hjujk'),
(7, 'sqfgfdf', 'tyghjkl'),
(8, 'zakaria hadref', 'je suis jouer de football'),
(9, 'tbiyyych', 'tbocha othmane'),
(10, 'taza', 'ghjklkjhgh'),
(11, 'othmane', 'hi f dar'),
(12, 'zouhir saber', 'hello my friend'),
(13, 'amine tito', 'je m\'appele amin je suis un éléve de deuxieme année au premiere mon resultat 9,40 ');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `citations`
--
ALTER TABLE `citations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `citations`
--
ALTER TABLE `citations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
