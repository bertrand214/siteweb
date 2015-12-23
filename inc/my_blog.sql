-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 16 Décembre 2015 à 16:21
-- Version du serveur :  10.0.17-MariaDB
-- Version de PHP :  5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `my_blog`
--
CREATE DATABASE IF NOT EXISTS `my_blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `my_blog`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `img` varchar(255) COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `img`, `date`) VALUES
(1, 'Article 1', 'Article 1 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/transport/', '2015-12-16 10:17:09'),
(2, 'Article 2', 'Article 2 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/animals/', '2015-12-16 02:38:09'),
(3, 'Article 3', 'Article 3 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/city/', '2015-12-16 22:38:09'),
(4, 'Article 4', 'Article 4 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/people/', '2015-12-16 04:17:51'),
(5, 'Article 5', 'Article 5 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/nature/', '2015-12-16 07:20:45'),
(6, 'Article 6', 'Article 6 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/sports/', '2015-12-16 14:11:09'),
(7, 'Article 7', 'Article 7 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/cats/', '2015-12-15 18:02:54'),
(8, 'Article 8', 'Article 8 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/abstract/', '2015-12-16 19:17:49'),
(9, 'Article 9', 'Article 9 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/fashion/', '2015-12-16 15:38:09'),
(10, 'Article 10', 'Article 10 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/people/', '2015-12-16 10:22:09'),
(11, 'Article 11', 'Article 11 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/animals/', '2015-12-16 03:46:09'),
(12, 'Article 12', 'Article 12 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/food/', '2015-12-16 21:26:09'),
(13, 'Article 13', 'Article 13 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/cats/', '2015-12-19 04:24:59'),
(14, 'Article 14', 'Article 14 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/nightlife/', '2015-12-23 10:38:09'),
(15, 'Article 15', 'Article 15 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/technics/', '2015-12-01 06:38:09'),
(16, 'Article 16', 'Article 16 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper quis metus sed venenatis. Nunc tincidunt tortor turpis, et eleifend arcu malesuada eu. Donec a magna ut odio semper mattis. Vestibulum scelerisque massa eu scelerisque consequat. Praesent commodo velit metus, vitae pretium velit mattis ac. Morbi convallis et eros vel efficitur. Pellentesque id sapien eu quam tincidunt placerat eget eget velit. Mauris eu mattis mi.', 'http://lorempixel.com/100/100/people/', '2015-12-20 17:44:09'),
(17, 'Nouvel article', 'Contenu de mon nouvel article', 'http://lorempixel.com/100/100/abstract/', '2015-12-16 16:11:44');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `id_article` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `id_article`, `id_user`, `date`) VALUES
(1, 'Super article !', 1, 1, '2015-12-15 15:25:10'),
(2, 'Je suis tout à fait d''accord avec toi :-)', 1, 2, '2015-12-16 15:30:10'),
(3, 'Excellente idée !', 1, 3, '2015-12-16 16:21:10'),
(4, 'Commentaire de test', 3, 5, '2015-12-16 14:10:35'),
(5, 'Génial ! :-)', 3, 6, '2015-12-16 14:10:44'),
(6, 'Ca dépend.. Si on considère que..', 3, 7, '2015-12-16 14:11:06'),
(7, 'Vu comme ça !', 13, 8, '2015-12-16 14:11:55'),
(8, 'Pas tout à fait !', 13, 9, '2015-12-16 14:12:23'),
(9, 'C''est beau !', 13, 10, '2015-12-16 14:12:41'),
(10, 'Miaou', 14, 11, '2015-12-16 14:12:44');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nickname` varchar(255) COLLATE utf8_bin NOT NULL,
  `date_registered` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `nickname`, `date_registered`) VALUES
(1, 'Axel', '2015-12-15 07:06:18'),
(2, 'Jean', '2015-12-16 14:22:00'),
(3, 'Maxime', '2015-12-16 15:36:00'),
(4, 'Robert', '2015-12-16 14:10:18'),
(5, 'Virginie', '2015-12-16 14:10:35'),
(6, 'Phil', '2015-12-16 14:10:44'),
(7, 'Mathilde', '2015-12-16 14:11:06'),
(8, 'Sarah', '2015-12-16 14:11:55'),
(9, 'Nicolas', '2015-12-16 14:12:23'),
(10, 'Isabelle', '2015-12-16 14:12:41'),
(11, 'Audrey', '2015-12-16 14:12:44');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
