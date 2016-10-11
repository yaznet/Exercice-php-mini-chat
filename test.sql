-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Mar 11 Octobre 2016 à 10:45
-- Version du serveur :  5.5.42
-- Version de PHP :  5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `minichat`
--

CREATE TABLE `minichat` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_creation` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `minichat`
--

INSERT INTO `minichat` (`id`, `pseudo`, `message`, `date_creation`) VALUES
(3, 'Youcef', 'Salut, ca va ?', '0000-00-00 00:00:00'),
(4, 'Lise', 'Ca va et toi ?', '0000-00-00 00:00:00'),
(5, 'Youcef', 'Ca va tranquil !', '0000-00-00 00:00:00'),
(6, 'Lise', 'Quoi de neuf ?', '0000-00-00 00:00:00'),
(7, 'Youcef', 'Rien de spécial et toi ?', '0000-00-00 00:00:00'),
(8, 'Lise', 'Que du vieux !', '0000-00-00 00:00:00'),
(11, 'Toto', 'Hello !!!', '0000-00-00 00:00:00'),
(12, 'Tata', 'CA VA ???', '0000-00-00 00:00:00'),
(13, 'Titi', 'Hola!', '0000-00-00 00:00:00'),
(21, 'Yaz', 'Message test', '2016-10-06 15:56:43');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `minichat`
--
ALTER TABLE `minichat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `minichat`
--
ALTER TABLE `minichat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
