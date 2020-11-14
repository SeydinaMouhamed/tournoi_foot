-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 19 Mars 2018 à 12:27
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `foot`
--

-- --------------------------------------------------------

--
-- Structure de la table `arbitres`
--

CREATE TABLE `arbitres` (
  `idarbitres` int(11) NOT NULL,
  `arbitresLicence` varchar(45) DEFAULT NULL,
  `arbitresEmail` varchar(255) DEFAULT NULL,
  `utilisateurs_idutilisateurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `arbitres`
--

INSERT INTO `arbitres` (`idarbitres`, `arbitresLicence`, `arbitresEmail`, `utilisateurs_idutilisateurs`) VALUES
(1, 'AR887', 'baadiouma@gmail.com', 2),
(2, 'GHVBb', NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `arbitres_rencontres`
--

CREATE TABLE `arbitres_rencontres` (
  `arbitres_idarbitres` int(11) NOT NULL,
  `rencontres_idrencontres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `arbitres_rencontres`
--

INSERT INTO `arbitres_rencontres` (`arbitres_idarbitres`, `rencontres_idrencontres`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(2, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(2, 115),
(2, 116),
(1, 117),
(1, 118),
(1, 119),
(2, 119),
(1, 120),
(2, 120),
(1, 121),
(1, 122),
(2, 122),
(2, 123),
(2, 124),
(2, 125),
(1, 126),
(2, 127),
(2, 128),
(1, 129),
(1, 130),
(1, 131),
(1, 132),
(1, 133),
(1, 134),
(1, 135),
(1, 136),
(1, 137),
(1, 138),
(1, 139),
(1, 140),
(1, 141),
(1, 142),
(1, 143),
(1, 144),
(1, 145),
(1, 146),
(1, 147),
(1, 148),
(1, 149),
(1, 150),
(1, 151),
(1, 152),
(1, 153),
(1, 154),
(1, 155),
(1, 156),
(1, 157),
(1, 158),
(1, 159),
(1, 160),
(1, 161),
(1, 162),
(1, 163),
(1, 164),
(1, 165),
(1, 166),
(1, 167),
(1, 168),
(1, 169),
(1, 170),
(1, 171),
(1, 172),
(1, 173),
(1, 174),
(1, 175),
(1, 176),
(1, 177),
(1, 178),
(1, 179),
(1, 180),
(1, 181),
(1, 182),
(1, 183),
(1, 184),
(1, 185),
(1, 186),
(1, 187),
(1, 188),
(1, 189),
(1, 190),
(1, 191),
(1, 192),
(1, 193),
(1, 194),
(1, 195),
(1, 196),
(1, 197),
(1, 198),
(1, 199),
(1, 200),
(1, 201),
(1, 202),
(1, 203),
(1, 204),
(1, 205),
(1, 206),
(1, 207),
(1, 208),
(1, 209),
(1, 210),
(1, 211),
(1, 212),
(1, 213),
(1, 214),
(1, 215),
(1, 216),
(1, 217),
(1, 218),
(1, 219),
(1, 220),
(1, 221),
(1, 222),
(1, 223),
(1, 224);

-- --------------------------------------------------------

--
-- Structure de la table `entraineurs`
--

CREATE TABLE `entraineurs` (
  `identraineurs` int(11) NOT NULL,
  `utilisateurs_idutilisateurs` int(11) NOT NULL,
  `entraineursLicence` varchar(45) DEFAULT NULL,
  `equipes_idequipes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `entraineurs`
--

INSERT INTO `entraineurs` (`identraineurs`, `utilisateurs_idutilisateurs`, `entraineursLicence`, `equipes_idequipes`) VALUES
(1, 25, 'LKJ676', 1),
(2, 3, 'HJH676', 2),
(3, 2, 'hytg78', 17),
(4, 4, 'GHSS78', 4),
(5, 5, 'mlkfjh87', 18),
(6, 6, 'HHDGH78', 6),
(7, 7, 'KHFA78', 19),
(8, 8, 'LKJHG87', 20),
(9, 10, 'HJ998', 9),
(10, 10, 'GHFG665', 3),
(11, 10, 'RFFG766', 5),
(12, 11, 'AERF78', 21),
(13, 10, 'GHG7767', 7),
(14, 9, '5FDTF5', 54),
(15, 10, 'GHGF345', 8),
(16, 10, 'SEZE987', 10),
(17, 10, 'GHGHG9987', 11),
(18, 10, 'ZEZ453', 12),
(19, 10, 'HGH665T', 13),
(20, 10, 'YU786', 14),
(21, 24, 'ERD8899', 15),
(22, 20, 'POOL998', 16),
(23, 14, 'NG874', 22),
(24, 19, 'AEF78', 23),
(25, 23, 'efs589h', 52);

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `idequipes` int(11) NOT NULL,
  `equipesName` varchar(45) DEFAULT NULL,
  `equipesDrapeau` text,
  `equipesEmbleme` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `equipes`
--

INSERT INTO `equipes` (`idequipes`, `equipesName`, `equipesDrapeau`, `equipesEmbleme`) VALUES
(1, 'Afrique du Sud', 'Afrique_du_Sud.png', 'embleme_Afrique_du_Sud.png'),
(2, 'Algerie', 'Algerie.png', 'embleme_Algerie.png'),
(3, 'Angola', 'Angola.png', 'embleme_Angola.png'),
(4, 'Benin', 'Benin.png', 'embleme_Benin.png'),
(5, 'Botswana', 'Botswana.png', 'embleme_Botswana.png'),
(6, 'Burkina Faso', 'Burkina_Faso.png', 'embleme_Burkina_Faso.png'),
(7, 'Burundi', 'Burundi.png', 'embleme_Burundi.png'),
(8, 'Cameroun', 'Cameroun.png', 'embleme_Cameroun.png'),
(9, 'Cap-Vert', 'Cap-Vert.png', 'embleme_Cap-Vert.png'),
(10, 'Comores', 'Comores.png', 'embleme_Comores.png'),
(11, 'Congo', 'Congo.png', 'embleme_Congo.png'),
(12, 'Cote d Ivoire', 'Cote_d_Ivoire.png', 'embleme_Cote_d_Ivoire.png.png'),
(13, 'Djibouti', 'Djibouti.png', 'embleme_Djibouti.png'),
(14, 'Egypte', 'Egypte.png', 'embleme_Egypte.png'),
(15, 'Erythree', 'Erythree.png', 'embleme_Erythree.png'),
(16, 'Ethiopie', 'Ethiopie.png', 'embleme_Ethiopie.jpg'),
(17, 'Gabon', 'Gabon.png', 'embleme_Gabon.png'),
(18, 'Gambie', 'Gambie.png', 'embleme_Gambie.png'),
(19, 'Ghana', 'Ghana.png', 'embleme_Ghana.png'),
(20, 'Guinee', 'Guinee.png', 'embleme_Guinee.png'),
(21, 'Guinee Bissau', 'Guinee_Bissau.png', 'embleme_Guinee_Bissau.png'),
(22, 'Guinee Equatoriale', 'Guinee_Equatoriale.png', 'embleme_Guinee_Equatoriale.png'),
(23, 'Kenya', 'Kenya.png', 'embleme_Kenya.jpg'),
(24, 'Lesotho', 'Lesotho.png', 'embleme_Lesotho.png'),
(25, 'Liberia', 'Liberia.png', 'embleme_Liberia.png'),
(26, 'Libye', 'Libye.png', 'embleme_Libye.png'),
(27, 'Madagascar', 'Madagascar.png', 'embleme_Madagascar.png'),
(28, 'Malawi', 'Malawi.png', 'embleme_Malawi.png'),
(29, 'Mali', 'Mali.png', 'embleme_Mali.png'),
(30, 'Maroc', 'Maroc.png', 'embleme_Maroc.png'),
(31, 'Maurice', 'Maurice.png', 'embleme_Maurice.png'),
(32, 'Mauritanie', 'Mauritanie.png', 'embleme_Mauritanie.png'),
(33, 'Mozambique', 'Mozambique.png', 'embleme_Mozambique.png'),
(34, 'Namibie', 'Namibie.png', 'embleme_Namibie.png'),
(35, 'Niger', 'Niger.png', 'embleme_Niger.png'),
(36, 'Nigeria', 'Nigeria.png', 'embleme_Nigeria.png'),
(37, 'Ouganda', 'Ouganda.png', 'embleme_Ouganda.png'),
(38, 'RD Congo', 'RD_Congo.png', 'embleme_RD_Congo.png.png'),
(39, 'Rep centrafricaine', 'Rep_centrafricaine.png', 'embleme_Rep_centrafricaine.png'),
(40, 'Rwanda', 'Rwanda.png', 'embleme_Rwanda.png'),
(41, 'Sao Tome et Principe', 'Sao_Tome_et_Principe.png', 'embleme_Sao_Tome_et_Principe.png'),
(42, 'Senegal', 'Senegal.png', 'embleme_Senegal.png'),
(43, 'Seychelles', 'Seychelles.png', 'embleme_Seychelles.png'),
(44, 'Sierra Leone', 'Sierra_Leone.png', 'embleme_Sierra_Leone.png'),
(45, 'Somalie', 'Somalie.png', 'embleme_Somalie.png'),
(46, 'Soudan', 'Soudan.png', 'embleme_Soudan.png'),
(47, 'Soudan du Sud', 'Soudan_du_Sud.png', ''),
(48, 'Swaziland', 'Swaziland.png', 'embleme_Swaziland.png'),
(49, 'Tanzanie', 'Tanzanie.png', 'embleme_Tanzanie.png'),
(50, 'Tchad', 'Tchad.png', 'embleme_Tchad.png'),
(51, 'Togo', 'Togo.png', 'embleme_Togo.gif'),
(52, 'Tunisie', 'Tunisie.png', 'embleme_Tunisie.png'),
(53, 'Zambie', 'Zambie.png', 'embleme_Zambie.png'),
(54, 'Zimbabwe', 'Zimbabwe.png', 'embleme_Zimbabwe.png');

-- --------------------------------------------------------

--
-- Structure de la table `evenements`
--

CREATE TABLE `evenements` (
  `idevenementsEnt` int(11) NOT NULL,
  `evenementsType` enum('remplacement','corner','touche','debutPMisTemps','finPMisTemps','debutSMisTemps','finSMisTemps','debutProlP1','finProlP1','debutProlP2','finProlP2','tireaubut','finMatch','cartonR','cartonJ','but','faute','possession','tirecadre','tirepoto','tirebarre','passe','passeDecisif') DEFAULT NULL,
  `evenementsHeur` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `evenementsSource` enum('utilisateurs') DEFAULT NULL COMMENT 'nom table utilisateur qui a signale levement',
  `evenementsSourceId` int(11) DEFAULT NULL,
  `rencontres_idrencontres` int(11) NOT NULL,
  `evenementsDestination` enum('equipes','joueurs','arbitres','entraineurs') DEFAULT NULL COMMENT 'Table du concerne',
  `evenementsDestinationId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `INFOSSS`
--

CREATE TABLE `INFOSSS` (
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `INFOSSS`
--

INSERT INTO `INFOSSS` (`name`) VALUES
('https://fr.wikipedia.org/wiki/S%C3%A9lectionneur_de_football#CAF');

-- --------------------------------------------------------

--
-- Structure de la table `joueurs`
--

CREATE TABLE `joueurs` (
  `idjoueurs` int(11) NOT NULL,
  `personnes_idpersonnes` int(11) NOT NULL,
  `joueursTaille` float DEFAULT NULL,
  `joueursPied` enum('gauche','droite') DEFAULT 'droite',
  `joueursPoids` float DEFAULT NULL,
  `joueursLicence` varchar(45) DEFAULT NULL,
  `joueursPoste` enum('gardien','defenseur','milieu_de_terrain','attaquant') DEFAULT NULL,
  `equipes_idequipes` int(11) NOT NULL,
  `joueursPhotoProfil` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `joueurs_rencontres`
--

CREATE TABLE `joueurs_rencontres` (
  `joueurs_idjoueurs` int(11) NOT NULL,
  `rencontres_idrencontres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

CREATE TABLE `personnes` (
  `idpersonnes` int(11) NOT NULL,
  `personnesNom` varchar(45) DEFAULT NULL,
  `personnesPrenom` varchar(45) DEFAULT NULL,
  `personnesSexe` enum('M','F') DEFAULT 'M',
  `personnesDDN` date DEFAULT '1987-10-05',
  `personnesLDN` varchar(125) DEFAULT NULL,
  `personnesNationalite` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personnes`
--

INSERT INTO `personnes` (`idpersonnes`, `personnesNom`, `personnesPrenom`, `personnesSexe`, `personnesDDN`, `personnesLDN`, `personnesNationalite`) VALUES
(1, 'CAF', 'CAF', 'M', '1953-08-16', 'CAF', 'CAF'),
(2, 'Camacho', 'José Antonio ', 'M', '1955-06-08', 'Cieza', 'Espagnol\r\n'),
(3, 'Madjer', 'Rabah', 'M', '1958-12-05', 'Alger', 'Algérienne'),
(4, 'Martins', 'Corentin', 'M', '1987-10-05', 'France', 'Français'),
(5, 'Xavier', 'Abel', 'M', '1972-11-30', 'Mozambique', 'Mozambicaine'),
(6, 'Sang', 'Dong', 'M', '1987-10-05', 'Gambie', 'Gambiens'),
(7, 'Tchomogo', 'Oumar', 'M', '1987-10-05', 'Bohicon', 'Béninois'),
(8, 'Duarte', 'Paulo', 'M', '1987-10-05', 'Massarelos', 'Portugaise'),
(9, 'Mannetti', 'Ricardo', 'M', '1987-10-05', 'Namibie', 'Namibienne'),
(10, 'Zahoui', 'François', 'M', '1987-10-05', 'Treichville(Côte d\'ivoire)', 'Ivoirienne'),
(11, 'Appiah', 'James Kwesi', 'M', '1987-10-05', 'Kumasi', 'Ghaneen'),
(12, 'Yusuf', 'Salisu', 'M', '1977-10-07', 'Nigeria', 'Nigerian'),
(13, 'Desabre', 'Sébastien', 'M', '1976-08-02', 'France', 'Française'),
(15, 'Pasuwa', 'Callisto', 'M', '1970-06-20', 'Umtal', 'Zimbabwéen'),
(16, 'Antunes', 'Lúcio', 'M', '1987-10-05', 'Praia', 'Cap-Verdien'),
(17, 'Put', 'Paul', 'M', '1987-10-05', 'Belgique', 'Belge'),
(18, 'Do Rasario', 'Antonio', 'M', '1986-10-05', 'Sao Tomé', 'Sao tomienne'),
(19, 'Hey', 'Antoine', 'M', '1985-12-04', 'Allemagne', 'Allemande'),
(20, 'Torres', 'Paulo Manuel Banha', 'M', '1987-10-05', 'Portugal', 'Portugais'),
(21, 'Becker', 'Esteban ', 'M', '1987-10-05', 'Argentine', 'Argentin'),
(22, 'Duarte', 'Paul', 'M', '1987-10-05', 'Espagne', 'Espagnol'),
(23, 'Haile', 'Gebremedhin', 'M', '1987-10-05', NULL, NULL),
(24, 'Nabil', 'Maâloul', 'M', '1962-12-25', 'Tunis', 'Tunisien'),
(25, 'Cuper', 'Hector', 'M', '1987-10-05', 'Chabás', 'Argentine'),
(26, 'Baxter', 'Stuart', 'M', '1953-08-01', 'Britannique', 'Britannique'),
(27, 'Test', 'JHJHJH', 'M', '2018-03-15', 'JJDJFH', 'JJHFDJF');

-- --------------------------------------------------------

--
-- Structure de la table `phases`
--

CREATE TABLE `phases` (
  `idphases` int(11) NOT NULL,
  `tournois_idtournois` int(11) NOT NULL,
  `phasesName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `phases`
--

INSERT INTO `phases` (`idphases`, `tournois_idtournois`, `phasesName`) VALUES
(3, 1, 'Phase de groupes'),
(4, 1, 'Phase finale'),
(5, 3, 'Phase de groupes'),
(6, 3, 'Phase finale'),
(1, 4, 'Phase de groupes'),
(2, 4, 'Phase finale'),
(11, 6, 'Phase de groupes'),
(12, 6, 'Phase finale'),
(9, 7, 'Phase de groupes'),
(10, 7, 'Phase finale'),
(7, 8, 'Phase de groupes'),
(8, 8, 'Phase finale'),
(13, 9, 'Phase de groupes'),
(14, 9, 'Phase finale');

-- --------------------------------------------------------

--
-- Structure de la table `poules`
--

CREATE TABLE `poules` (
  `idpoules` int(11) NOT NULL,
  `phases_idphases` int(11) NOT NULL,
  `poulesName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `poules`
--

INSERT INTO `poules` (`idpoules`, `phases_idphases`, `poulesName`) VALUES
(1, 1, 'Poule A'),
(2, 1, 'Poule B'),
(3, 1, 'Poule C'),
(4, 1, 'Poule D'),
(5, 3, 'Poule A'),
(6, 3, 'Poule B'),
(7, 3, 'Poule C'),
(8, 3, 'Poule D'),
(9, 5, 'Poule A'),
(10, 5, 'Poule B'),
(11, 5, 'Poule C'),
(12, 5, 'Poule D'),
(13, 7, 'Poule A'),
(14, 7, 'Poule B'),
(15, 7, 'Poule C'),
(16, 7, 'Poule D'),
(17, 9, 'Poule A'),
(18, 9, 'Poule B'),
(19, 9, 'Poule C'),
(20, 9, 'Poule D'),
(21, 11, 'Poule A'),
(22, 11, 'Poule B'),
(23, 11, 'Poule C'),
(24, 11, 'Poule D'),
(25, 13, 'Poule A'),
(26, 13, 'Poule B'),
(27, 13, 'Poule C'),
(28, 13, 'Poule D');

-- --------------------------------------------------------

--
-- Structure de la table `poules_equipes`
--

CREATE TABLE `poules_equipes` (
  `poules_idpoules` int(11) NOT NULL,
  `equipes_idequipes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rencontres`
--

CREATE TABLE `rencontres` (
  `idrencontres` int(11) NOT NULL,
  `rencontresIdEquipe1` int(11) DEFAULT NULL,
  `rencontresIdEquipe2` int(11) DEFAULT NULL,
  `stades_idstades` int(11) DEFAULT NULL,
  `phases_idphases` int(11) NOT NULL,
  `rencontresDate` datetime DEFAULT NULL,
  `rencontresArbitre` int(11) DEFAULT NULL,
  `rencontresEtat` int(11) NOT NULL DEFAULT '0',
  `lienYoutube` varchar(255) NOT NULL DEFAULT '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `rencontres`
--

INSERT INTO `rencontres` (`idrencontres`, `rencontresIdEquipe1`, `rencontresIdEquipe2`, `stades_idstades`, `phases_idphases`, `rencontresDate`, `rencontresArbitre`, `rencontresEtat`, `lienYoutube`) VALUES
(1, NULL, NULL, 1, 1, '2018-03-13 00:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(2, NULL, NULL, 1, 1, '2018-03-18 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(3, NULL, NULL, 1, 1, '2018-03-19 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(4, NULL, NULL, 1, 1, '2018-03-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(5, NULL, NULL, 1, 1, '2018-03-21 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(6, NULL, NULL, 1, 1, '2018-03-22 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(7, NULL, NULL, 1, 1, '2018-03-23 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(8, NULL, NULL, 1, 1, '2018-03-24 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(9, NULL, NULL, 1, 1, '2018-03-25 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(10, NULL, NULL, 1, 1, '2018-03-26 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(11, NULL, NULL, 1, 1, '2018-03-27 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(12, NULL, NULL, 1, 1, '2018-04-01 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(13, NULL, NULL, 1, 1, '2018-04-02 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(14, NULL, NULL, 1, 1, '2018-04-03 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(15, NULL, NULL, 1, 1, '2018-04-04 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(16, NULL, NULL, 1, 1, '2018-04-05 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(17, NULL, NULL, 1, 1, '2018-04-06 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(18, NULL, NULL, 1, 1, '2018-04-07 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(19, NULL, NULL, 1, 1, '2018-04-08 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(20, NULL, NULL, 1, 1, '2018-04-09 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(21, NULL, NULL, 1, 1, '2018-04-10 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(22, NULL, NULL, 1, 1, '2018-04-11 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(23, NULL, NULL, 1, 1, '2018-04-12 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(24, NULL, NULL, 1, 1, '2018-04-13 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(25, NULL, NULL, 1, 2, '2018-04-14 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(26, NULL, NULL, 1, 2, '2018-04-15 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(27, NULL, NULL, 1, 2, '2018-04-16 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(28, NULL, NULL, 1, 2, '2018-04-17 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(29, NULL, NULL, 1, 2, '2018-04-18 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(30, NULL, NULL, 1, 2, '2018-04-19 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(31, NULL, NULL, 1, 2, '2018-04-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(32, NULL, NULL, 1, 2, '2018-04-21 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(33, NULL, NULL, 2, 3, '2018-03-09 00:00:00', 2, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(34, NULL, NULL, 1, 3, '2018-03-17 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(35, NULL, NULL, 1, 3, '2018-03-19 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(36, NULL, NULL, 1, 3, '2018-03-20 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(37, NULL, NULL, 1, 3, '2018-03-21 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(38, NULL, NULL, 1, 3, '2018-03-22 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(39, NULL, NULL, 1, 3, '2018-03-23 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(40, NULL, NULL, 1, 3, '2018-03-24 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(41, NULL, NULL, 1, 3, '2018-03-25 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(42, NULL, NULL, 1, 3, '2018-03-26 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(43, NULL, NULL, 1, 3, '2018-03-27 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(44, NULL, NULL, 1, 3, '2018-04-01 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(45, NULL, NULL, 1, 3, '2018-04-02 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(46, NULL, NULL, 1, 3, '2018-04-03 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(47, NULL, NULL, 1, 3, '2018-04-04 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(48, NULL, NULL, 1, 3, '2018-04-05 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(49, NULL, NULL, 1, 3, '2018-04-06 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(50, NULL, NULL, 1, 3, '2018-04-07 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(51, NULL, NULL, 1, 3, '2018-04-08 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(52, NULL, NULL, 1, 3, '2018-04-09 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(53, NULL, NULL, 1, 3, '2018-04-10 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(54, NULL, NULL, 1, 3, '2018-04-11 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(55, NULL, NULL, 1, 3, '2018-04-12 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(56, NULL, NULL, 1, 3, '2018-04-13 12:15:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(57, NULL, NULL, 1, 4, '2018-04-14 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(58, NULL, NULL, 1, 4, '2018-04-15 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(59, NULL, NULL, 1, 4, '2018-04-16 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(60, NULL, NULL, 1, 4, '2018-04-17 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(61, NULL, NULL, 1, 4, '2018-04-18 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(62, NULL, NULL, 1, 4, '2018-04-19 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(63, NULL, NULL, 1, 4, '2018-04-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(64, NULL, NULL, 1, 4, '2018-04-22 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(65, NULL, NULL, 1, 5, '2018-03-13 00:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(66, NULL, NULL, 1, 5, '2018-03-18 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(67, NULL, NULL, 1, 5, '2018-03-19 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(68, NULL, NULL, 1, 5, '2018-03-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(69, NULL, NULL, 1, 5, '2018-03-21 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(70, NULL, NULL, 1, 5, '2018-03-22 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(71, NULL, NULL, 1, 5, '2018-03-23 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(72, NULL, NULL, 1, 5, '2018-03-24 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(73, NULL, NULL, 1, 5, '2018-03-25 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(74, NULL, NULL, 1, 5, '2018-03-26 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(75, NULL, NULL, 1, 5, '2018-03-27 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(76, NULL, NULL, 1, 5, '2018-04-01 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(77, NULL, NULL, 1, 5, '2018-04-02 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(78, NULL, NULL, 1, 5, '2018-04-03 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(79, NULL, NULL, 1, 5, '2018-04-04 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(80, NULL, NULL, 1, 5, '2018-04-05 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(81, NULL, NULL, 1, 5, '2018-04-06 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(82, NULL, NULL, 1, 5, '2018-04-07 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(83, NULL, NULL, 1, 5, '2018-04-08 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(84, NULL, NULL, 1, 5, '2018-04-09 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(85, NULL, NULL, 1, 5, '2018-04-10 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(86, NULL, NULL, 1, 5, '2018-04-11 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(87, NULL, NULL, 1, 5, '2018-04-12 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(88, NULL, NULL, 1, 5, '2018-04-13 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(89, NULL, NULL, 1, 6, '2018-04-14 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(90, NULL, NULL, 1, 6, '2018-04-15 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(91, NULL, NULL, 1, 6, '2018-04-16 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(92, NULL, NULL, 1, 6, '2018-04-17 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(93, NULL, NULL, 1, 6, '2018-04-18 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(94, NULL, NULL, 1, 6, '2018-04-19 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(95, NULL, NULL, 1, 6, '2018-04-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(96, NULL, NULL, 1, 6, '2018-04-21 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(97, 50, 1, 1, 7, '2018-03-01 06:30:00', 1, 1, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(98, 50, 2, 1, 7, '2018-03-18 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(99, 50, 4, 1, 7, '2018-03-19 12:00:00', 1, 1, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(100, 1, 2, 1, 7, '2018-03-20 12:00:00', 1, 2, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(101, 1, 4, 1, 7, '2018-03-21 12:00:00', 1, 3, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(102, 2, 4, 1, 7, '2018-03-22 12:00:00', 1, 4, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(103, 5, 43, 1, 7, '2018-03-23 12:00:00', 1, 5, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(104, 5, 44, 1, 7, '2018-03-24 12:00:00', 1, 6, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(105, 5, 45, 1, 7, '2018-03-25 12:00:00', 1, 7, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(106, 43, 44, 1, 7, '2018-03-26 12:00:00', 1, 8, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(107, 43, 45, 1, 7, '2018-03-27 12:00:00', 1, 9, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(108, 44, 45, 1, 7, '2018-04-01 12:00:00', 1, 9, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(109, 46, 47, 1, 7, '2018-04-02 12:00:00', 1, 10, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(110, 46, 48, 1, 7, '2018-04-03 12:00:00', 1, 10, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(111, 46, 49, 1, 7, '2018-04-04 12:00:00', 1, -1, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(112, 47, 48, 1, 7, '2018-04-05 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(113, 47, 49, 1, 7, '2018-04-06 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(114, 48, 49, 1, 7, '2018-04-07 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(115, 51, 52, 2, 7, '2018-04-08 06:30:00', 2, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(116, 51, 53, 3, 7, '2018-04-08 12:00:00', 2, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(117, 51, 54, 1, 7, '2018-04-10 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(118, 52, 53, 1, 7, '2018-04-11 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(119, 52, 54, 3, 7, '2018-04-12 00:30:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(120, 53, 54, 3, 7, '2018-04-13 22:30:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(121, NULL, NULL, 2, 8, '2018-04-14 20:45:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(122, NULL, NULL, 1, 8, '2018-04-15 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(123, NULL, NULL, 1, 8, '2018-04-16 12:00:00', 2, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(124, NULL, NULL, 4, 8, '2018-04-18 09:30:00', 2, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(125, NULL, NULL, 3, 8, '2018-04-19 07:35:00', 2, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(126, NULL, NULL, 1, 8, '2018-04-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(127, NULL, NULL, 2, 8, '2018-04-22 05:30:00', 2, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(128, NULL, NULL, 4, 8, '2018-04-23 05:25:00', 2, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(129, NULL, NULL, 1, 9, '2018-03-14 00:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(130, NULL, NULL, 2, 9, '2018-03-16 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(131, NULL, NULL, 1, 9, '2018-03-19 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(132, NULL, NULL, 1, 9, '2018-03-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(133, NULL, NULL, 1, 9, '2018-03-21 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(134, NULL, NULL, 1, 9, '2018-03-22 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(135, NULL, NULL, 1, 9, '2018-03-23 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(136, NULL, NULL, 1, 9, '2018-03-24 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(137, NULL, NULL, 1, 9, '2018-03-25 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(138, NULL, NULL, 1, 9, '2018-03-26 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(139, NULL, NULL, 1, 9, '2018-03-27 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(140, NULL, NULL, 1, 9, '2018-04-01 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(141, NULL, NULL, 1, 9, '2018-04-02 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(142, NULL, NULL, 1, 9, '2018-04-03 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(143, NULL, NULL, 1, 9, '2018-04-04 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(144, NULL, NULL, 1, 9, '2018-04-05 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(145, NULL, NULL, 1, 9, '2018-04-06 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(146, NULL, NULL, 1, 9, '2018-04-07 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(147, NULL, NULL, 1, 9, '2018-04-08 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(148, NULL, NULL, 1, 9, '2018-04-09 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(149, NULL, NULL, 1, 9, '2018-04-10 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(150, NULL, NULL, 1, 9, '2018-04-11 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(151, NULL, NULL, 1, 9, '2018-04-12 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(152, NULL, NULL, 1, 9, '2018-04-13 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(153, NULL, NULL, 1, 10, '2018-04-14 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(154, NULL, NULL, 1, 10, '2018-04-15 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(155, NULL, NULL, 1, 10, '2018-04-16 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(156, NULL, NULL, 1, 10, '2018-04-17 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(157, NULL, NULL, 1, 10, '2018-04-18 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(158, NULL, NULL, 1, 10, '2018-04-19 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(159, NULL, NULL, 1, 10, '2018-04-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(160, NULL, NULL, 1, 10, '2018-04-21 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(161, 4, 1, 1, 11, '2018-03-14 00:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(162, 4, 2, 1, 11, '2018-03-18 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(163, 4, 3, 1, 11, '2018-03-19 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(164, 1, 2, 1, 11, '2018-03-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(165, 1, 3, 1, 11, '2018-03-21 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(166, 2, 3, 1, 11, '2018-03-22 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(167, 5, 6, 1, 11, '2018-03-23 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(168, 5, 7, 1, 11, '2018-03-24 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(169, 5, 8, 1, 11, '2018-03-25 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(170, 6, 7, 1, 11, '2018-03-26 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(171, 6, 8, 1, 11, '2018-03-27 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(172, 7, 8, 1, 11, '2018-04-01 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(173, 9, 10, 1, 11, '2018-04-02 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(174, 9, 11, 1, 11, '2018-04-03 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(175, 9, 12, 1, 11, '2018-04-04 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(176, 10, 11, 1, 11, '2018-04-05 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(177, 10, 12, 1, 11, '2018-04-06 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(178, 11, 12, 1, 11, '2018-04-07 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(179, 13, 14, 1, 11, '2018-04-08 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(180, 13, 36, 1, 11, '2018-04-09 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(181, 13, 52, 1, 11, '2018-04-10 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(182, 14, 36, 1, 11, '2018-04-11 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(183, 14, 52, 1, 11, '2018-04-12 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(184, 36, 52, 1, 11, '2018-04-13 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(185, NULL, NULL, 1, 12, '2018-04-14 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(186, NULL, NULL, 1, 12, '2018-04-15 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(187, NULL, NULL, 1, 12, '2018-04-16 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(188, NULL, NULL, 1, 12, '2018-04-17 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(189, NULL, NULL, 1, 12, '2018-04-18 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(190, NULL, NULL, 1, 12, '2018-04-19 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(191, NULL, NULL, 1, 12, '2018-04-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(192, NULL, NULL, 1, 12, '2018-04-21 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(193, 7, 1, 1, 13, '2018-03-18 00:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(194, 7, 2, 1, 13, '2018-03-19 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(195, 7, 3, 1, 13, '2018-03-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(196, 1, 2, 1, 13, '2018-03-21 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(197, 1, 3, 1, 13, '2018-03-22 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(198, 2, 3, 1, 13, '2018-03-23 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(199, 4, 5, 1, 13, '2018-03-24 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(200, 4, 8, 1, 13, '2018-03-25 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(201, 4, 9, 1, 13, '2018-03-26 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(202, 5, 8, 1, 13, '2018-03-27 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(203, 5, 9, 1, 13, '2018-04-01 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(204, 8, 9, 1, 13, '2018-04-02 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(205, 10, 11, 1, 13, '2018-04-03 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(206, 10, 12, 1, 13, '2018-04-04 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(207, 10, 13, 1, 13, '2018-04-05 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(208, 11, 12, 1, 13, '2018-04-06 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(209, 11, 13, 1, 13, '2018-04-07 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(210, 12, 13, 1, 13, '2018-04-08 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(211, 14, 15, 1, 13, '2018-04-09 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(212, 14, 53, 1, 13, '2018-04-10 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(213, 14, 54, 1, 13, '2018-04-11 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(214, 15, 53, 1, 13, '2018-04-12 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(215, 15, 54, 1, 13, '2018-04-13 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(216, 53, 54, 1, 13, '2018-04-14 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(217, NULL, NULL, 1, 14, '2018-04-15 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(218, NULL, NULL, 1, 14, '2018-04-16 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(219, NULL, NULL, 1, 14, '2018-04-17 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(220, NULL, NULL, 1, 14, '2018-04-18 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(221, NULL, NULL, 1, 14, '2018-04-19 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(222, NULL, NULL, 1, 14, '2018-04-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(223, NULL, NULL, 1, 14, '2018-04-21 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(224, NULL, NULL, 1, 14, '2018-04-22 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Structure de la table `stades`
--

CREATE TABLE `stades` (
  `idstades` int(11) NOT NULL,
  `stadesName` varchar(100) DEFAULT NULL,
  `stadesImgIlust` text,
  `stadesAdresse` varchar(255) DEFAULT NULL,
  `stadesDimensions` varchar(255) DEFAULT NULL,
  `stadesNbrPlaces` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `stades`
--

INSERT INTO `stades` (`idstades`, `stadesName`, `stadesImgIlust`, `stadesAdresse`, `stadesDimensions`, `stadesNbrPlaces`) VALUES
(1, 'Le Grand Stade Agadir', 'stade-agadir-football.jpg', 'Agadir,Maroc', NULL, 45480),
(2, 'Complexe Mohammed V', 'Sans-titre-3.jpg', 'Casablanca,Maroc', NULL, 45200),
(3, 'Stade de Bata', 'Stade-de-Bata.jpg', 'Bata,Guinée Equatoriale', NULL, 35000),
(4, 'Sam Nujoma Stadium', 'fs440x440px-Sam_Nujoma_Stadium_21.jpg', 'Windhoek,Namibie', '', 10300);

-- --------------------------------------------------------

--
-- Structure de la table `tournois`
--

CREATE TABLE `tournois` (
  `idtournois` int(11) NOT NULL,
  `tournoisName` varchar(45) DEFAULT NULL,
  `tournoisImgPub` text,
  `tournoisDateDebut` date DEFAULT NULL,
  `tournoisDateFin` date DEFAULT NULL,
  `tournoisApropos` text NOT NULL,
  `tournoisEtapeCreation` int(11) NOT NULL DEFAULT '1',
  `tournoisOrganisateur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tournois`
--

INSERT INTO `tournois` (`idtournois`, `tournoisName`, `tournoisImgPub`, `tournoisDateDebut`, `tournoisDateFin`, `tournoisApropos`, `tournoisEtapeCreation`, `tournoisOrganisateur`) VALUES
(1, 'CAN 2017', 'slide-22.jpg', '2018-03-09', '2018-04-22', 'La coupe d\'Afrique des nations de football 2015 est la 30e edition de la coupe d\'Afrique des nations de football. Elle se deroule du 17 janvier au 8 fevrier 2015, en Guinee equatoriale, apres le desistement du Maroc. L\'equipe du Nigeria de football, tenante du titre, n\'etant pas qualifiee, de nombreuses equipes pretendent a la victoire finale.', 4, NULL),
(2, 'CAN 2019', 'tournoisImgPub2018_03_14_01_32_16.jpg', '2019-03-13', NULL, 'TESTT', 1, NULL),
(3, 'TEST', 'tournoisImgPub2018_03_13_23_44_06.jpg', '2018-03-13', '2018-04-21', 'DSGDHGG HG H G H GHG H G', 4, NULL),
(4, 'CAN 201', 'tournoisImgPub2018_03_13_23_50_46.png', '2018-03-13', '2018-04-21', 'JHJJDHFJ', 4, NULL),
(6, 'JKhjhjh', 'tournoisImgPub2018_03_14_01_00_44.png', '2018-03-14', '2018-04-21', 'jhjhj', 4, 4),
(7, 'fdhfdfj', 'tournoisImgPub2018_03_14_01_48_15.jpg', '2018-03-14', '2018-04-21', 'kll', 4, NULL),
(8, 'assy', 'tournoisImgPub2018_03_16_16_41_38.png', '2018-03-01', '2018-04-23', 'gtthtybgr', 4, 50),
(9, 'Test foot', 'tournoisImgPub2018_03_18_11_55_47.png', '2018-03-18', '2018-04-22', 'ni', 4, 7);

-- --------------------------------------------------------

--
-- Structure de la table `tournois_equipe_entraineur`
--

CREATE TABLE `tournois_equipe_entraineur` (
  `id_tournoi` int(11) NOT NULL,
  `id_equipe` int(11) NOT NULL,
  `id_entraineur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tournois_equipe_entraineur`
--

INSERT INTO `tournois_equipe_entraineur` (`id_tournoi`, `id_equipe`, `id_entraineur`) VALUES
(1, 1, 1),
(3, 1, 1),
(4, 1, 1),
(6, 1, 1),
(7, 1, 1),
(8, 1, 1),
(9, 1, 1),
(1, 2, 2),
(3, 2, 2),
(4, 2, 2),
(6, 2, 2),
(7, 2, 2),
(8, 2, 2),
(9, 2, 2),
(1, 10, 3),
(6, 36, 3),
(8, 44, 3),
(9, 53, 3),
(1, 4, 4),
(3, 4, 4),
(4, 4, 4),
(6, 4, 4),
(7, 4, 4),
(8, 4, 4),
(9, 4, 4),
(8, 45, 5),
(1, 6, 6),
(3, 6, 6),
(4, 6, 6),
(6, 6, 6),
(7, 6, 6),
(8, 43, 6),
(8, 46, 7),
(8, 47, 8),
(1, 9, 9),
(3, 9, 9),
(4, 9, 9),
(6, 9, 9),
(7, 9, 9),
(8, 48, 9),
(9, 9, 9),
(1, 3, 10),
(3, 3, 10),
(4, 3, 10),
(6, 3, 10),
(7, 3, 10),
(8, 49, 10),
(9, 3, 10),
(1, 5, 11),
(3, 5, 11),
(4, 5, 11),
(6, 5, 11),
(7, 5, 11),
(8, 5, 11),
(9, 5, 11),
(8, 50, 12),
(1, 7, 13),
(3, 7, 13),
(4, 7, 13),
(6, 7, 13),
(7, 7, 13),
(9, 7, 13),
(8, 54, 14),
(9, 54, 14),
(1, 8, 15),
(3, 8, 15),
(4, 8, 15),
(6, 8, 15),
(7, 8, 15),
(9, 8, 15),
(3, 10, 16),
(4, 10, 16),
(6, 10, 16),
(7, 10, 16),
(8, 51, 16),
(9, 10, 16),
(1, 11, 17),
(3, 11, 17),
(4, 11, 17),
(6, 11, 17),
(7, 11, 17),
(9, 11, 17),
(1, 12, 18),
(3, 12, 18),
(4, 12, 18),
(6, 12, 18),
(7, 12, 18),
(9, 12, 18),
(1, 13, 19),
(3, 13, 19),
(4, 13, 19),
(6, 13, 19),
(7, 13, 19),
(9, 13, 19),
(1, 14, 20),
(3, 14, 20),
(4, 14, 20),
(6, 14, 20),
(7, 14, 20),
(9, 14, 20),
(1, 15, 21),
(3, 15, 21),
(4, 15, 21),
(7, 15, 21),
(9, 15, 21),
(1, 16, 22),
(3, 16, 22),
(4, 16, 22),
(7, 16, 22),
(8, 53, 22),
(6, 52, 25),
(8, 52, 25);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `idutilisateurs` int(11) NOT NULL,
  `utilisateursEmail` varchar(255) DEFAULT NULL,
  `utilisateursPseudo` varchar(255) DEFAULT NULL,
  `utilisateursPassword` varchar(255) DEFAULT '39dfa55283318d31afe5a3ff4a0e3253e2045e43',
  `utilisateursTypeDeCompte` enum('reportairesEvenementsJoueur','reportairesEvenementsArbitre','entraineurs','arbitres','organisateurs','reportairesEvenementsPocession') DEFAULT 'entraineurs',
  `utilisateursEtat` tinyint(1) DEFAULT '1',
  `personnes_idpersonnes` int(11) NOT NULL,
  `utilisateursDateEnregistrement` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `utilisateursPhoto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`idutilisateurs`, `utilisateursEmail`, `utilisateursPseudo`, `utilisateursPassword`, `utilisateursTypeDeCompte`, `utilisateursEtat`, `personnes_idpersonnes`, `utilisateursDateEnregistrement`, `utilisateursPhoto`) VALUES
(1, NULL, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'organisateurs', 1, 1, '2018-03-12 16:03:13', NULL),
(2, NULL, 'congo', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 2, '2018-03-12 16:09:54', NULL),
(3, NULL, 'algerie', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 3, '2018-03-12 16:10:10', NULL),
(4, NULL, 'benin', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 7, '2018-03-12 16:16:24', NULL),
(5, NULL, 'gambie', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 6, '2018-03-12 16:16:56', NULL),
(6, NULL, 'burkina', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 8, '2018-03-12 16:28:58', NULL),
(7, NULL, 'ghana', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 11, '2018-03-12 16:30:47', NULL),
(8, NULL, 'guinee', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 17, '2018-03-12 16:35:07', NULL),
(9, NULL, 'Zimbabwe', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 15, '2018-03-12 16:35:57', NULL),
(10, NULL, 'capvert', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 16, '2018-03-12 16:36:23', NULL),
(11, NULL, 'guinee_bissau', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 20, '2018-03-12 16:41:20', NULL),
(12, '', 'Mauritanie', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 4, '2018-03-12 16:47:11', ''),
(13, '', 'Mozambique', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 5, '2018-03-12 16:47:11', NULL),
(14, NULL, 'guinee_equatoriale', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 21, '2018-03-12 16:49:42', NULL),
(17, '', 'Namibie', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 9, '2015-11-11 00:00:00', NULL),
(18, '', 'Niger', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 10, '2015-05-08 00:00:00', NULL),
(19, NULL, 'kenya', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 22, '2018-03-12 16:56:50', NULL),
(20, NULL, 'ethiopi', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 23, '2018-03-12 16:57:56', NULL),
(21, NULL, 'nigeria', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 12, '2018-03-12 16:59:21', NULL),
(22, NULL, 'niger', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 13, '2018-03-12 16:59:21', NULL),
(23, NULL, 'Tunisie', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 24, '2018-03-12 16:59:56', NULL),
(24, NULL, 'egypte', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 25, '2018-03-12 17:00:36', NULL),
(25, NULL, 'afrique_du_sud', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', NULL, 26, '2018-03-13 12:38:53', NULL),
(26, NULL, 'reportaire', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'reportairesEvenementsJoueur', 1, 1, '2018-03-18 16:20:33', NULL),
(27, NULL, 'arbitre', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'reportairesEvenementsArbitre', 1, 3, '2018-03-18 16:51:10', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `arbitres`
--
ALTER TABLE `arbitres`
  ADD PRIMARY KEY (`idarbitres`),
  ADD UNIQUE KEY `arbitresLicence_UNIQUE` (`arbitresLicence`),
  ADD UNIQUE KEY `arbitresEmail` (`arbitresEmail`),
  ADD KEY `fk_arbitres_utilisateurs1_idx` (`utilisateurs_idutilisateurs`);

--
-- Index pour la table `arbitres_rencontres`
--
ALTER TABLE `arbitres_rencontres`
  ADD PRIMARY KEY (`arbitres_idarbitres`,`rencontres_idrencontres`),
  ADD KEY `fk_arbitres_has_rencontres_rencontres1_idx` (`rencontres_idrencontres`),
  ADD KEY `fk_arbitres_has_rencontres_arbitres1_idx` (`arbitres_idarbitres`);

--
-- Index pour la table `entraineurs`
--
ALTER TABLE `entraineurs`
  ADD PRIMARY KEY (`identraineurs`),
  ADD UNIQUE KEY `entraineursLicence_UNIQUE` (`entraineursLicence`),
  ADD KEY `fk_entraineurs_utilisateurs1_idx` (`utilisateurs_idutilisateurs`),
  ADD KEY `equipes_idequipes` (`equipes_idequipes`);

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`idequipes`),
  ADD UNIQUE KEY `nomEquipe_UNIQUE` (`equipesName`);

--
-- Index pour la table `evenements`
--
ALTER TABLE `evenements`
  ADD PRIMARY KEY (`idevenementsEnt`),
  ADD KEY `fk_evenements_rencontres1_idx` (`rencontres_idrencontres`);

--
-- Index pour la table `joueurs`
--
ALTER TABLE `joueurs`
  ADD PRIMARY KEY (`idjoueurs`),
  ADD UNIQUE KEY `joueursLicence_UNIQUE` (`joueursLicence`),
  ADD KEY `fk_joueurs_personnes1_idx` (`personnes_idpersonnes`),
  ADD KEY `fk_joueurs_equipes1_idx` (`equipes_idequipes`);

--
-- Index pour la table `joueurs_rencontres`
--
ALTER TABLE `joueurs_rencontres`
  ADD PRIMARY KEY (`joueurs_idjoueurs`,`rencontres_idrencontres`),
  ADD KEY `fk_joueurs_has_rencontres_rencontres1_idx` (`rencontres_idrencontres`),
  ADD KEY `fk_joueurs_has_rencontres_joueurs1_idx` (`joueurs_idjoueurs`);

--
-- Index pour la table `personnes`
--
ALTER TABLE `personnes`
  ADD PRIMARY KEY (`idpersonnes`);

--
-- Index pour la table `phases`
--
ALTER TABLE `phases`
  ADD PRIMARY KEY (`idphases`),
  ADD UNIQUE KEY `tournois_idtournois` (`tournois_idtournois`,`phasesName`),
  ADD KEY `fk_phases_tournois1_idx` (`tournois_idtournois`);

--
-- Index pour la table `poules`
--
ALTER TABLE `poules`
  ADD PRIMARY KEY (`idpoules`),
  ADD UNIQUE KEY `phases_idphases` (`phases_idphases`,`poulesName`),
  ADD KEY `fk_poules_phases1_idx` (`phases_idphases`);

--
-- Index pour la table `poules_equipes`
--
ALTER TABLE `poules_equipes`
  ADD PRIMARY KEY (`poules_idpoules`,`equipes_idequipes`),
  ADD KEY `fk_poules_has_equipes_equipes1_idx` (`equipes_idequipes`),
  ADD KEY `fk_poules_has_equipes_poules1_idx` (`poules_idpoules`);

--
-- Index pour la table `rencontres`
--
ALTER TABLE `rencontres`
  ADD PRIMARY KEY (`idrencontres`),
  ADD KEY `rencontresIdEquipe1` (`rencontresIdEquipe1`),
  ADD KEY `rencontresIdEquipe2` (`rencontresIdEquipe2`),
  ADD KEY `stades_idstades` (`stades_idstades`),
  ADD KEY `phases_idphases` (`phases_idphases`),
  ADD KEY `rencontresArbitre` (`rencontresArbitre`);

--
-- Index pour la table `stades`
--
ALTER TABLE `stades`
  ADD PRIMARY KEY (`idstades`),
  ADD UNIQUE KEY `stadesAdresse_UNIQUE` (`stadesAdresse`);

--
-- Index pour la table `tournois`
--
ALTER TABLE `tournois`
  ADD PRIMARY KEY (`idtournois`),
  ADD UNIQUE KEY `tournoisName` (`tournoisName`),
  ADD KEY `tournoisOrganisateur` (`tournoisOrganisateur`);

--
-- Index pour la table `tournois_equipe_entraineur`
--
ALTER TABLE `tournois_equipe_entraineur`
  ADD UNIQUE KEY `id_tournoi` (`id_tournoi`,`id_equipe`),
  ADD UNIQUE KEY `id_tournoi_2` (`id_tournoi`,`id_equipe`,`id_entraineur`),
  ADD KEY `id_equipe` (`id_equipe`),
  ADD KEY `id_entraineur` (`id_entraineur`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`idutilisateurs`),
  ADD KEY `fk_utilisateurs_personnes1_idx` (`personnes_idpersonnes`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `arbitres`
--
ALTER TABLE `arbitres`
  MODIFY `idarbitres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `entraineurs`
--
ALTER TABLE `entraineurs`
  MODIFY `identraineurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `idequipes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT pour la table `evenements`
--
ALTER TABLE `evenements`
  MODIFY `idevenementsEnt` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `joueurs`
--
ALTER TABLE `joueurs`
  MODIFY `idjoueurs` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `personnes`
--
ALTER TABLE `personnes`
  MODIFY `idpersonnes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `phases`
--
ALTER TABLE `phases`
  MODIFY `idphases` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `poules`
--
ALTER TABLE `poules`
  MODIFY `idpoules` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `rencontres`
--
ALTER TABLE `rencontres`
  MODIFY `idrencontres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT pour la table `stades`
--
ALTER TABLE `stades`
  MODIFY `idstades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `tournois`
--
ALTER TABLE `tournois`
  MODIFY `idtournois` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `idutilisateurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `arbitres`
--
ALTER TABLE `arbitres`
  ADD CONSTRAINT `fk_arbitres_utilisateurs1` FOREIGN KEY (`utilisateurs_idutilisateurs`) REFERENCES `utilisateurs` (`idutilisateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `arbitres_rencontres`
--
ALTER TABLE `arbitres_rencontres`
  ADD CONSTRAINT `fk_arbitres_has_rencontres_arbitres1` FOREIGN KEY (`arbitres_idarbitres`) REFERENCES `arbitres` (`idarbitres`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_arbitres_has_rencontres_rencontres1` FOREIGN KEY (`rencontres_idrencontres`) REFERENCES `rencontres` (`idrencontres`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `entraineurs`
--
ALTER TABLE `entraineurs`
  ADD CONSTRAINT `entraineurs_ibfk_1` FOREIGN KEY (`equipes_idequipes`) REFERENCES `equipes` (`idequipes`),
  ADD CONSTRAINT `fk_entraineurs_utilisateurs1` FOREIGN KEY (`utilisateurs_idutilisateurs`) REFERENCES `utilisateurs` (`idutilisateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `evenements`
--
ALTER TABLE `evenements`
  ADD CONSTRAINT `fk_evenements_rencontres1` FOREIGN KEY (`rencontres_idrencontres`) REFERENCES `rencontres` (`idrencontres`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `joueurs`
--
ALTER TABLE `joueurs`
  ADD CONSTRAINT `fk_joueurs_equipes1` FOREIGN KEY (`equipes_idequipes`) REFERENCES `equipes` (`idequipes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_joueurs_personnes1` FOREIGN KEY (`personnes_idpersonnes`) REFERENCES `personnes` (`idpersonnes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `joueurs_rencontres`
--
ALTER TABLE `joueurs_rencontres`
  ADD CONSTRAINT `fk_joueurs_has_rencontres_joueurs1` FOREIGN KEY (`joueurs_idjoueurs`) REFERENCES `joueurs` (`idjoueurs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_joueurs_has_rencontres_rencontres1` FOREIGN KEY (`rencontres_idrencontres`) REFERENCES `rencontres` (`idrencontres`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `phases`
--
ALTER TABLE `phases`
  ADD CONSTRAINT `fk_phases_tournois1` FOREIGN KEY (`tournois_idtournois`) REFERENCES `tournois` (`idtournois`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `poules`
--
ALTER TABLE `poules`
  ADD CONSTRAINT `fk_poules_phases1` FOREIGN KEY (`phases_idphases`) REFERENCES `phases` (`idphases`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `poules_equipes`
--
ALTER TABLE `poules_equipes`
  ADD CONSTRAINT `fk_poules_has_equipes_equipes1` FOREIGN KEY (`equipes_idequipes`) REFERENCES `equipes` (`idequipes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_poules_has_equipes_poules1` FOREIGN KEY (`poules_idpoules`) REFERENCES `poules` (`idpoules`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `rencontres`
--
ALTER TABLE `rencontres`
  ADD CONSTRAINT `rencontres_ibfk_1` FOREIGN KEY (`rencontresIdEquipe1`) REFERENCES `equipes` (`idequipes`),
  ADD CONSTRAINT `rencontres_ibfk_2` FOREIGN KEY (`rencontresIdEquipe2`) REFERENCES `equipes` (`idequipes`),
  ADD CONSTRAINT `rencontres_ibfk_3` FOREIGN KEY (`stades_idstades`) REFERENCES `stades` (`idstades`),
  ADD CONSTRAINT `rencontres_ibfk_4` FOREIGN KEY (`phases_idphases`) REFERENCES `phases` (`idphases`),
  ADD CONSTRAINT `rencontres_ibfk_5` FOREIGN KEY (`rencontresArbitre`) REFERENCES `arbitres` (`idarbitres`);

--
-- Contraintes pour la table `tournois`
--
ALTER TABLE `tournois`
  ADD CONSTRAINT `tournois_ibfk_1` FOREIGN KEY (`tournoisOrganisateur`) REFERENCES `equipes` (`idequipes`);

--
-- Contraintes pour la table `tournois_equipe_entraineur`
--
ALTER TABLE `tournois_equipe_entraineur`
  ADD CONSTRAINT `tournois_equipe_entraineur_ibfk_1` FOREIGN KEY (`id_tournoi`) REFERENCES `tournois` (`idtournois`),
  ADD CONSTRAINT `tournois_equipe_entraineur_ibfk_2` FOREIGN KEY (`id_equipe`) REFERENCES `equipes` (`idequipes`),
  ADD CONSTRAINT `tournois_equipe_entraineur_ibfk_3` FOREIGN KEY (`id_entraineur`) REFERENCES `entraineurs` (`identraineurs`);

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `fk_utilisateurs_personnes1` FOREIGN KEY (`personnes_idpersonnes`) REFERENCES `personnes` (`idpersonnes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
