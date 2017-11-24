-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 23 Mars 2017 à 18:42
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `movie_website`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `idActeur` int(11) NOT NULL,
  `prenomActeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomActeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `acteur`
--

INSERT INTO `acteur` (`idActeur`, `prenomActeur`, `nomActeur`, `picture`) VALUES
(1, 'Jean-Paul ', 'Belmondo', 'http://ekladata.com/pNrbmclirG9stbNrVqsIN1DFKqI.jpg'),
(2, 'Clint', 'Eastwood', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/ClintEastwoodSept10TIFF.jpg/260px-ClintEastwoodSept10TIFF.jpg'),
(3, 'Tom', 'Hanks', 'http://img.wennermedia.com/article-leads-vertical-300/1251126993_tom_hanks_290x402.jpg'),
(4, 'Ryan', 'Gosling', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Ryan_Gosling_Cannes_2014.jpg/220px-Ryan_Gosling_Cannes_2014.jpg'),
(5, 'Julia', 'Roberts', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTQzNjU3MDczN15BMl5BanBnXkFtZTYwNzY2Njc4._V1_UX214_CR0,0,214,317_AL_.jpg'),
(6, 'Whitney', 'Houston', 'http://glavnoe.ua/media/images/news/23/71/59/237159_default.jpg'),
(7, 'Dany', 'Boon', 'http://resize3-elle.ladmedia.fr/r/625,,forcex/crop/625,804,center-middle,forcex,ffffff/img/var/plain_site/storage/images/people/la-vie-des-people/news/dany-boon-s-explique-sur-son-salaire-2372604/33076398-1-fre-FR/Dany-Boon-s-explique-sur-son-salaire.jpg'),
(8, 'Daniel', 'Radcliffe', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTg4NTExODc3Nl5BMl5BanBnXkFtZTgwODUyMDEzMDE@._V1_UY317_CR11,0,214,317_AL_.jpg'),
(9, 'Emma', 'Watson', 'https://s-media-cache-ak0.pinimg.com/736x/f4/5e/9d/f45e9dbac8cac965a7aa5085a8ed6c3e.jpg'),
(10, 'Rupert', 'Grint', 'http://healthyceleb.com/wp-content/uploads/2014/11/Rupert-Grint-eyes.jpg'),
(11, 'Jamie', 'Dornan', 'http://vignette2.wikia.nocookie.net/vampirediaries/images/4/4e/Jamie_Dornan.jpg/revision/latest?cb=20150524190756'),
(12, 'Dakota', 'Johnson', 'http://images.boomsbeat.com/data/images/full/192226/gettyimages_463140564-jpg.jpg'),
(13, 'Omar', 'Sy', 'http://media.meltybuzz.fr/article-1630157-ajust_930-f1374221974/omar-sy.jpg'),
(14, 'Louane ', 'Emera', 'https://s-media-cache-ak0.pinimg.com/736x/ef/9e/11/ef9e1134691c0a72b16dbfe9b2d66d0b.jpg'),
(15, 'François', 'Damiens', 'http://kpitalrisk.free.fr/images/stars/23000/s_23474francois_damiens_photo_2.jpg'),
(16, 'Karine', 'Viard', 'http://4.bp.blogspot.com/-t8_E6TWKwlE/VHjmQDlQ9yI/AAAAAAACN4s/d95AOx9Ihhw/s1600/Karin%2BViard%2B-%2BElle%2BMagazine,%2BFrance,%2BNovember%2B2014_07_1.jpg'),
(17, 'François', 'Cluzet', 'http://upload.wikimedia.org/wikipedia/commons/2/2e/Fran%C3%A7ois_Cluzet_2010.jpg'),
(18, 'Emily', 'Blunt', 'http://www.breageeknews.fr/uploads/news/news_illustre_1455905821_365.jpg'),
(19, 'Kevin', 'Costner', 'http://www1.pictures.zimbio.com/gi/Kevin+Costner+History+Channel+Pre+Emmy+Party+5CvokmeALi5l.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idCat` int(11) NOT NULL,
  `nomCat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`idCat`, `nomCat`) VALUES
(1, 'Thriller'),
(2, 'Documentaire'),
(3, 'Action'),
(4, 'Erotique'),
(5, 'Horreur'),
(6, 'Science-fiction'),
(7, 'Film d\'animation'),
(8, 'Policier'),
(9, 'Comédie musicale'),
(10, 'Film d\'aventure'),
(11, 'Fantasy'),
(12, 'Comédie');

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `idEtat` int(11) NOT NULL,
  `statut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `film_etat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `etat`
--

INSERT INTO `etat` (`idEtat`, `statut`, `film_etat`) VALUES
(1, 'Disponible', NULL),
(2, 'Emprunté', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `numFilm` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateSortie` int(11) NOT NULL,
  `duree` time NOT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`numFilm`, `titre`, `description`, `dateSortie`, `duree`, `url`) VALUES
(1, 'La fille du train', 'Rachel prend tous les jours le même train et passe tous les jours devant la même maison. Dévastée par son divorce, elle fantasme sur le couple qui y vit et leur imagine une vie parfaite… jusqu’au jour où elle est le témoin d’un événement extrêmement choquant et se retrouve malgré elle étroitement mêlée à un angoissant mystère.', 2016, '01:53:00', 'http://fr.web.img3.acsta.net/pictures/16/05/04/13/51/513495.jpg'),
(2, 'Le professionnel', 'Issu de l\'élite de l\'armée française, Joss Beaumont est chargé d\'exécuter le président de la Malagawi. Un contre-ordre tombe, la cible est devenue un ami de l\'Etat. Pour l\'empêcher de nuire, Beaumont est incarcéré, mais ne tarde pas à s\'évader, décidé à mener à bien l\'opération malgré l\'opposition de sa hiérarchie.', 1981, '01:45:00', 'http://img.bd-sanctuary.com/cis/big/le-professionnel-film-2805.jpg'),
(3, 'Bodyguard', 'Frank Farmer, ancien agent des services secrets, est un garde du corps emerite qui a mis ses talents a la disposition de deux presidents et de nombreux financiers et politiciens de reputation internationale. Un jour l\'impresario Bill Devaney lui propose un contrat avantageux pour assurer la protection de sa cliente Rachel, comedienne et chanteuse en pleine ascension, menacee par un fan inconnu.', 1992, '02:09:00', 'https://upload.wikimedia.org/wikipedia/en/8/8f/The_Bodyguard_1992_Film_Poster.jpg'),
(4, 'Pretty Woman', 'Edward Lewis, homme d\'affaires performant, rencontre par hasard Vivian Ward, beaute fatale qui arpente chaque nuit les trottoirs d\'Hollywood Boulevard. La jeune femme ne fera qu\'une bouchee du brillant PDG.', 1992, '01:59:00', 'http://dvdtoile.com/FILMS/0/132.jpg'),
(5, 'Radin !', 'François Gautier est radin ! Economiser le met en joie, payer lui provoque des suées. Sa vie est réglée dans l’unique but de ne jamais rien dépenser. Une vie qui va basculer en une seule journée : il tombe amoureux et découvre qu’il a une fille dont il ignorait l’existence. Obligé de mentir afin de cacher son terrible défaut, ce sera pour François le début des problèmes. Car mentir peut parfois coûter cher. Très cher…', 2016, '01:30:00', 'http://www.actuanews.fr/photo/art/default/10202947-16646273.jpg?v=1473840787'),
(6, 'Cinquante Nuances de Grey', 'L\'histoire d\'une romance passionnelle, et sexuelle, entre un jeune homme riche amateur de femmes, et une étudiante vierge de 22 ans.', 2015, '02:05:00', 'http://cinemotion.ch/image/FA0006061.jpg'),
(7, 'La La Land', 'Au cœur de Los Angeles, une actrice en devenir prénommée Mia sert des cafés entre deux auditions. \r\nDe son côté, Sebastian, passionné de jazz, joue du piano dans des clubs miteux pour assurer sa subsistance. \r\nTous deux sont bien loin de la vie rêvée à laquelle ils aspirent…\r\nLe destin va réunir ces doux rêveurs, mais leur coup de foudre résistera-t-il aux tentations, aux déceptions, et à la vie trépidante d’Hollywood ?', 2016, '02:08:00', 'http://mcswebsites.blob.core.windows.net/1002/Event_6094/portrait_large/LaLaLand.jpg'),
(8, 'Harry Potter et la chambre des secrets', 'Alors que l\'oncle Vernon, la tante Pétunia et son cousin Dudley reçoivent d\'importants invités à dîner, Harry Potter est contraint de passer la soirée dans sa chambre. Dobby, un elfe, fait alors son apparition. Il lui annonce que de terribles dangers menacent l\'école de Poudlard et qu\'il ne doit pas y retourner en septembre. Harry refuse de le croire.\r\nMais sitôt la rentrée des classes effectuée, ce dernier entend une voix malveillante. Celle-ci lui dit que la redoutable et légendaire Chambre des secrets est à nouveau ouverte, permettant ainsi à l\'héritier de Serpentard de semer le chaos à Poudlard. Les victimes, retrouvées pétrifiées par une force mystérieuse, se succèdent dans les couloirs de l\'école, sans que les professeurs - pas même le populaire Gilderoy Lockhart - ne parviennent à endiguer la menace. Aidé de Ron et Hermione, Harry doit agir au plus vite pour sauver Poudlard.\r\n', 2002, '02:30:00', 'http://www.cinekidz.com/wp-content/uploads/2014/03/Harry_Potter_et_la_chambre_des_secrets1-540x810.jpg'),
(9, 'Le Terminal', 'Viktor Navorski est l\'un de ces milliers de touristes, venus des quatre coins du monde, qui débarquent chaque jour à l\'Aéroport JFK de New York. Mais, à quelques heures de son arrivée, voilà qu\'un coup d\'État bouleverse sa petite république d\'Europe Centrale, mettant celle-ci au ban des nations et faisant de Viktor... un apatride. Les portes de l\'Amérique se ferment devant lui, alors même que se bouclent les frontières de son pays : Viktor est bel et bien coincé...', 2002, '02:08:00', 'http://fanaru.com/the-terminal/image/32296-the-terminal-the-terminal-poster-art.jpg'),
(10, 'Gran Torino', 'Walt Kowalski est un ancien de la guerre de Corée, un homme inflexible, amer et pétri de préjugés surannés. Après des années de travail à la chaîne, il vit replié sur lui-même, occupant ses journées à bricoler, traînasser et siroter des bières. Avant de mourir, sa femme exprima le voeu qu\'il aille à confesse, mais Walt n\'a rien à avouer, ni personne à qui parler. Hormis sa chienne Daisy, il ne fait confiance qu\'à son M-1, toujours propre, toujours prêt à l\'usage...', 2009, '01:51:00', 'http://static.rogerebert.com/uploads/movie/movie_poster/gran-torino-2008/large_lM1EaWdIdwfSxG50HinOLGmXLih.jpg'),
(11, 'Intouchables', 'A la suite d’un accident de parapente, Philippe, riche aristocrate, engage comme aide à domicile Driss, un jeune de banlieue tout juste sorti de prison. Bref la personne la moins adaptée pour le job. Ensemble ils vont faire cohabiter Vivaldi et Earth Wind and Fire, le verbe et la vanne, les costumes et les bas de survêtement... Deux univers vont se télescoper, s’apprivoiser, pour donner naissance à une amitié aussi dingue, drôle et forte qu’inattendue, une relation unique qui fera des étincelles et qui les rendra... Intouchables.', 2011, '01:52:00', 'http://fr.web.img6.acsta.net/medias/nmedia/18/82/69/17/19806656.jpg'),
(12, 'La famille bélier', 'Dans la famille Bélier, tout le monde est sourd sauf Paula, 16 ans. Elle est une interprète indispensable à\r\nses parents au quotidien, notamment pour l’exploitation de la ferme familiale. Un jour, poussée par son professeur de musique qui lui a découvert un don pour le chant, elle décide de préparer le concours de Radio France. Un choix de vie qui signifierait pour elle l’éloignement de sa famille et un passage inévitable à l’âge adulte.', 2014, '01:46:00', 'http://cdn.franceloisirs.ch/29447-19125-thickbox/la-famille-belier-dvd.jpg'),
(13, 'test', 'dfsfsdfsdfsdfs', 2017, '01:00:00', 'http://fr.web.img3.acsta.net/pictures/16/05/04/13/51/513495.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `filmacteurs_`
--

CREATE TABLE `filmacteurs_` (
  `idActeur` int(11) NOT NULL,
  `numFilm` int(11) NOT NULL,
  `acteur` tinyint(1) NOT NULL,
  `realisateur` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `filmacteurs_`
--

INSERT INTO `filmacteurs_` (`idActeur`, `numFilm`, `acteur`, `realisateur`) VALUES
(1, 2, 1, 0),
(2, 10, 1, 0),
(3, 9, 1, 0),
(4, 7, 1, 0),
(5, 4, 1, 0),
(6, 3, 1, 0),
(7, 5, 1, 1),
(8, 8, 1, 0),
(9, 8, 1, 0),
(10, 8, 1, 0),
(11, 6, 1, 0),
(12, 6, 1, 0),
(13, 11, 1, 0),
(14, 12, 1, 0),
(15, 12, 1, 0),
(16, 12, 1, 0),
(17, 11, 1, 0),
(18, 1, 1, 0),
(19, 3, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `film_acteur`
--

CREATE TABLE `film_acteur` (
  `film_id` int(11) NOT NULL,
  `acteur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `film_acteur`
--

INSERT INTO `film_acteur` (`film_id`, `acteur_id`) VALUES
(1, 15),
(1, 18),
(13, 1),
(13, 2),
(13, 3);

-- --------------------------------------------------------

--
-- Structure de la table `film_categorie`
--

CREATE TABLE `film_categorie` (
  `numFilm` int(11) NOT NULL,
  `idCat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `password`, `salt`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'test', 'test', 'test@gmail.com', 'test@gmail.com', 1, '123', NULL, NULL, NULL, NULL, 'a:0:{}'),
(2, 'cbouchy', 'cbouchy', 'cbouchy@gmail.com', 'cbouchy@gmail.com', 1, '$2y$13$KCFbKcC3qk9Gy9lLDUiKgeHvDqyULZQdgfMuQsBOrvPI2qHxPioKi', NULL, '2017-03-22 18:50:49', NULL, NULL, 'a:0:{}');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`idActeur`),
  ADD UNIQUE KEY `UNIQ_EAFAD36289EB7BF8` (`idActeur`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idCat`),
  ADD UNIQUE KEY `UNIQ_497DD634BF165E2F` (`idCat`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`idEtat`),
  ADD UNIQUE KEY `UNIQ_55CAF7622637A9FC` (`idEtat`),
  ADD KEY `IDX_55CAF76230651D61` (`film_etat`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`numFilm`),
  ADD UNIQUE KEY `UNIQ_8244BE227F9A0948` (`numFilm`);

--
-- Index pour la table `filmacteurs_`
--
ALTER TABLE `filmacteurs_`
  ADD PRIMARY KEY (`idActeur`,`numFilm`),
  ADD KEY `IDX_837D2CDC89EB7BF8` (`idActeur`),
  ADD KEY `IDX_837D2CDC7F9A0948` (`numFilm`);

--
-- Index pour la table `film_acteur`
--
ALTER TABLE `film_acteur`
  ADD PRIMARY KEY (`film_id`,`acteur_id`),
  ADD KEY `IDX_8108EE68567F5183` (`film_id`),
  ADD KEY `IDX_8108EE68DA6F574A` (`acteur_id`);

--
-- Index pour la table `film_categorie`
--
ALTER TABLE `film_categorie`
  ADD PRIMARY KEY (`numFilm`,`idCat`),
  ADD KEY `IDX_7DB188077F9A0948` (`numFilm`),
  ADD KEY `IDX_7DB18807BF165E2F` (`idCat`);

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `idActeur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idCat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `etat`
--
ALTER TABLE `etat`
  MODIFY `idEtat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `numFilm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `etat`
--
ALTER TABLE `etat`
  ADD CONSTRAINT `FK_55CAF76230651D61` FOREIGN KEY (`film_etat`) REFERENCES `film` (`numFilm`);

--
-- Contraintes pour la table `filmacteurs_`
--
ALTER TABLE `filmacteurs_`
  ADD CONSTRAINT `FK_837D2CDC7F9A0948` FOREIGN KEY (`numFilm`) REFERENCES `film` (`numFilm`),
  ADD CONSTRAINT `FK_837D2CDC89EB7BF8` FOREIGN KEY (`idActeur`) REFERENCES `acteur` (`idActeur`);

--
-- Contraintes pour la table `film_acteur`
--
ALTER TABLE `film_acteur`
  ADD CONSTRAINT `FK_8108EE68567F5183` FOREIGN KEY (`film_id`) REFERENCES `film` (`numFilm`),
  ADD CONSTRAINT `FK_8108EE68DA6F574A` FOREIGN KEY (`acteur_id`) REFERENCES `acteur` (`idActeur`);

--
-- Contraintes pour la table `film_categorie`
--
ALTER TABLE `film_categorie`
  ADD CONSTRAINT `FK_7DB188077F9A0948` FOREIGN KEY (`numFilm`) REFERENCES `film` (`numFilm`),
  ADD CONSTRAINT `FK_7DB18807BF165E2F` FOREIGN KEY (`idCat`) REFERENCES `categorie` (`idCat`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
