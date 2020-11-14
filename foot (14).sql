-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 28 Mars 2018 à 08:13
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.28-0ubuntu0.16.04.1

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
(1, 'AR887', 'baadiouma@gmail.com', 27),
(2, 'GHVBb', NULL, 28);

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
(1, 224),
(1, 225),
(1, 226),
(1, 227),
(1, 228),
(1, 229),
(1, 230),
(1, 231),
(1, 232),
(1, 233),
(1, 234),
(1, 235),
(1, 236),
(1, 237),
(1, 238),
(1, 239),
(1, 240),
(1, 241),
(1, 242),
(1, 243),
(1, 244),
(1, 245),
(1, 246),
(1, 247),
(1, 248),
(1, 249),
(1, 250),
(1, 251),
(1, 252),
(1, 253),
(1, 254),
(1, 255),
(1, 256),
(1, 257),
(1, 258),
(1, 259),
(1, 260),
(1, 261),
(1, 262),
(1, 263),
(1, 264),
(1, 265),
(1, 266),
(1, 267),
(1, 268),
(1, 269),
(1, 270),
(1, 271),
(1, 272),
(1, 273),
(1, 274),
(1, 275),
(1, 276),
(1, 277),
(1, 278),
(1, 279),
(1, 280),
(1, 281),
(1, 282),
(1, 283),
(1, 284),
(1, 285),
(1, 286),
(1, 287),
(1, 288);

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
(25, 23, 'efs589h', 52),
(26, 29, 'AR7654', 42),
(28, 30, 'AR7655', 29),
(30, 31, 'AR7656', 30),
(31, 32, 'AR7657', 37),
(33, 33, 'AR7658', 51),
(35, 34, 'AR7659', 38);

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

--
-- Contenu de la table `joueurs`
--

INSERT INTO `joueurs` (`idjoueurs`, `personnes_idpersonnes`, `joueursTaille`, `joueursPied`, `joueursPoids`, `joueursLicence`, `joueursPoste`, `equipes_idequipes`, `joueursPhotoProfil`) VALUES
(1, 37, 1.6, 'droite', 80, 'GB1', 'gardien', 17, 'joueursPhotoProfil2018_03_20_12_34_20.jpg'),
(2, 38, 1.6, 'droite', 80, 'GB2', 'gardien', 17, 'joueursPhotoProfil2018_03_20_12_37_41.jpg'),
(3, 39, 1.89, 'droite', 79, 'SENE1', 'gardien', 42, 'joueursPhotoProfil2018_03_20_12_44_39.png'),
(4, 40, 1.6, 'droite', 80, 'GB3', 'defenseur', 17, 'joueursPhotoProfil2018_03_20_12_45_39.jpg'),
(5, 41, 1.6, 'droite', 80, 'GB4', 'defenseur', 17, 'joueursPhotoProfil2018_03_20_12_48_08.jpg'),
(6, 42, 1.8, 'droite', 80, 'GB5', 'defenseur', 17, 'joueursPhotoProfil2018_03_20_12_51_31.jpg'),
(7, 43, 1.85, 'droite', 78, 'SEN', 'gardien', 42, 'joueursPhotoProfil2018_03_20_12_51_32.jpg'),
(8, 44, 1.7, 'droite', 85, 'GB6', 'defenseur', 17, 'joueursPhotoProfil2018_03_20_12_54_27.png'),
(9, 45, 1.75, 'droite', 70, 'SEN3', 'defenseur', 42, 'joueursPhotoProfil2018_03_20_12_54_52.jpg'),
(10, 46, 1.81, 'droite', 74, 'SEN4', 'defenseur', 42, 'joueursPhotoProfil2018_03_20_12_56_42.jpg'),
(11, 47, 1.7, 'droite', 78, 'GB7', 'defenseur', 17, 'joueursPhotoProfil2018_03_20_12_57_24.png'),
(12, 48, 1.95, 'droite', 89, 'SEN5', 'defenseur', 42, 'joueursPhotoProfil2018_03_20_12_58_56.jpg'),
(13, 49, 1.8, 'droite', 89, 'GB8', 'milieu_de_terrain', 17, 'joueursPhotoProfil2018_03_20_12_59_23.png'),
(14, 50, 1.83, 'droite', 75, 'SEN6', 'defenseur', 42, 'joueursPhotoProfil2018_03_20_13_00_53.JPG'),
(15, 51, 1.68, 'droite', 87, 'GB9', 'milieu_de_terrain', 17, 'joueursPhotoProfil2018_03_20_13_02_21.jpg'),
(16, 52, 1.92, 'droite', 85, 'SEN7', 'defenseur', 42, 'joueursPhotoProfil2018_03_20_13_03_57.jpg'),
(17, 53, 1.8, 'droite', 87, 'GB10', 'milieu_de_terrain', 17, 'joueursPhotoProfil2018_03_20_13_05_46.jpg'),
(18, 54, 1.84, 'droite', 80, 'SEN8', 'milieu_de_terrain', 42, 'joueursPhotoProfil2018_03_20_13_05_53.jpg'),
(19, 55, 1.8, 'droite', 73, 'SEN9', 'milieu_de_terrain', 42, 'joueursPhotoProfil2018_03_20_13_09_39.jpg'),
(20, 56, 1.6, 'droite', 72, 'GB11', 'milieu_de_terrain', 17, 'joueursPhotoProfil2018_03_20_13_09_44.jpg'),
(21, 57, 1.6, 'droite', 80, 'SEN10', 'milieu_de_terrain', 42, 'joueursPhotoProfil2018_03_20_13_12_34.jpeg'),
(22, 58, 1.73, 'droite', 68, 'GB12', 'milieu_de_terrain', 17, 'joueursPhotoProfil2018_03_20_13_15_31.png'),
(23, 59, 1.92, 'droite', 75, 'SEN11', 'milieu_de_terrain', 42, 'joueursPhotoProfil2018_03_20_13_15_36.jpg'),
(24, 60, 1.79, 'droite', 74, 'SEN12', 'milieu_de_terrain', 42, 'joueursPhotoProfil2018_03_20_13_17_23.jpg'),
(25, 61, 1.86, 'gauche', 77, 'GB13', 'attaquant', 17, 'joueursPhotoProfil2018_03_20_13_20_40.jpg'),
(26, 62, 1.85, 'gauche', 79, 'SEN13', 'attaquant', 42, 'joueursPhotoProfil2018_03_20_13_20_55.jpg'),
(27, 63, 1.75, 'droite', 69, 'SEN14', 'attaquant', 42, 'joueursPhotoProfil2018_03_20_13_22_46.jpg'),
(28, 64, 1.87, 'gauche', 80, 'GB14', 'attaquant', 17, 'joueursPhotoProfil2018_03_20_13_24_16.png'),
(29, 65, 1.8, 'gauche', 80, 'GB15', 'attaquant', 17, 'joueursPhotoProfil2018_03_20_13_26_42.png'),
(30, 66, 1.81, 'droite', 80, 'SEN15', 'attaquant', 42, 'joueursPhotoProfil2018_03_20_13_27_10.jpg'),
(31, 67, 1.6, 'droite', 80, 'ALG1', 'gardien', 2, 'joueursPhotoProfil2018_03_20_13_34_59.jpeg'),
(32, 68, 1.91, 'droite', 80, 'ALG2', 'gardien', 2, 'joueursPhotoProfil2018_03_20_13_37_13.jpg'),
(33, 69, 1.9, 'gauche', 68, 'GBS1', 'gardien', 21, 'joueursPhotoProfil2018_03_20_13_38_27.jpeg'),
(34, 70, 1.6, 'droite', 80, 'ALG3', 'defenseur', 2, 'joueursPhotoProfil2018_03_20_13_42_25.png'),
(35, 71, 1.88, 'droite', 85, 'GBS2', 'gardien', 21, 'joueursPhotoProfil2018_03_20_13_43_00.jpeg'),
(36, 72, 1.79, 'droite', 74, 'ALG4', 'defenseur', 2, 'joueursPhotoProfil2018_03_20_13_45_26.jpg'),
(37, 73, 1.75, 'gauche', 87, 'GBS3', 'defenseur', 21, 'joueursPhotoProfil2018_03_20_13_46_05.jpg'),
(38, 74, 1.95, 'droite', 71, 'ALG5', 'defenseur', 2, 'joueursPhotoProfil2018_03_20_13_48_08.jpg'),
(39, 75, 1.82, 'gauche', 68, 'GBS4', 'defenseur', 21, 'joueursPhotoProfil2018_03_20_13_50_33.jpg'),
(40, 76, 1.6, 'droite', 80, 'ALG6', 'defenseur', 2, 'joueursPhotoProfil2018_03_20_13_50_34.jpg'),
(41, 77, 1.86, 'gauche', 75, 'ALG7', 'defenseur', 2, 'joueursPhotoProfil2018_03_20_13_52_21.jpg'),
(42, 78, 1.7, 'gauche', 85, 'GBS5', 'defenseur', 21, 'joueursPhotoProfil2018_03_20_13_53_00.jpeg'),
(43, 79, 1.8, 'gauche', 84, 'ALG8', 'milieu_de_terrain', 2, 'joueursPhotoProfil2018_03_20_13_56_23.jpg'),
(44, 80, 1.8, 'droite', 88, 'GBS6', 'defenseur', 21, 'joueursPhotoProfil2018_03_20_13_57_48.png'),
(45, 81, 1.83, 'droite', 80, 'GBS7', 'defenseur', 21, 'joueursPhotoProfil2018_03_20_14_00_15.jpeg'),
(46, 82, 1.6, 'droite', 80, 'ALG10', 'milieu_de_terrain', 2, 'joueursPhotoProfil2018_03_20_14_03_22.jpg'),
(47, 83, 1.78, 'droite', 85, 'GBS8', 'milieu_de_terrain', 21, 'joueursPhotoProfil2018_03_20_14_04_59.jpeg'),
(48, 84, 1.6, 'gauche', 80, 'ALG11', 'milieu_de_terrain', 2, 'joueursPhotoProfil2018_03_20_14_08_06.jpg'),
(49, 85, 1.6, 'droite', 80, 'GBS9', 'milieu_de_terrain', 21, 'joueursPhotoProfil2018_03_20_14_11_45.jpg'),
(50, 86, 1.9, 'gauche', 88, 'GBS10', 'milieu_de_terrain', 21, 'joueursPhotoProfil2018_03_20_14_18_04.jpg'),
(51, 87, 1.8, 'gauche', 87, 'GBS11', 'milieu_de_terrain', 21, 'joueursPhotoProfil2018_03_20_14_20_47.jpg'),
(52, 88, 1.6, 'droite', 80, 'GBS12', 'milieu_de_terrain', 21, 'joueursPhotoProfil2018_03_20_14_23_09.jpg'),
(53, 89, 1.82, 'droite', 65, 'ALG13', 'milieu_de_terrain', 2, 'joueursPhotoProfil2018_03_20_14_27_52.jpg'),
(54, 90, 1.8, 'droite', 80, 'GBS13', 'attaquant', 21, 'joueursPhotoProfil2018_03_20_14_32_24.png'),
(55, 91, 1.88, 'droite', 80, 'GBS14', 'attaquant', 21, 'joueursPhotoProfil2018_03_20_14_38_57.jpg'),
(56, 92, 1.67, 'gauche', 80, 'GBS15', 'attaquant', 21, 'joueursPhotoProfil2018_03_20_14_43_41.jpg'),
(57, 93, 1.6, 'droite', 80, 'ALG9', 'milieu_de_terrain', 2, 'joueursPhotoProfil2018_03_20_14_54_16.jpeg'),
(58, 94, 1.6, 'droite', 80, 'ALG12', 'attaquant', 2, 'joueursPhotoProfil2018_03_20_15_02_07.jpg'),
(59, 95, 1.6, 'gauche', 80, 'ALG14', 'attaquant', 2, 'joueursPhotoProfil2018_03_20_15_04_20.jpg'),
(60, 96, 1.6, 'gauche', 80, 'ALG15', 'attaquant', 2, 'joueursPhotoProfil2018_03_20_15_06_38.png'),
(61, 97, 1, 'droite', 81, 'NF65', 'gardien', 6, 'joueursPhotoProfil2018_03_20_20_31_42.jpeg'),
(62, 98, 1.85, 'droite', 80, 'ND65', 'gardien', 6, 'joueursPhotoProfil2018_03_20_20_39_57.jpeg'),
(63, 99, 1.82, 'droite', 80, 'ND13', 'gardien', 6, 'joueursPhotoProfil2018_03_20_20_50_33.png'),
(64, 100, 1.82, 'gauche', 80, 'ND01', 'defenseur', 6, 'joueursPhotoProfil2018_03_20_20_56_54.jpg'),
(65, 101, 1.65, 'droite', 80, 'ND02', 'defenseur', 6, 'joueursPhotoProfil2018_03_20_21_00_39.png'),
(66, 102, 1.87, 'droite', 80, 'ND12', 'defenseur', 6, 'joueursPhotoProfil2018_03_20_21_04_25.jpg'),
(67, 103, 1.88, 'gauche', 80, 'ND74', 'defenseur', 6, 'joueursPhotoProfil2018_03_20_21_08_24.jpg'),
(68, 104, 1.86, 'droite', 82, 'ND54', 'defenseur', 6, 'joueursPhotoProfil2018_03_20_21_13_13.jpg'),
(69, 105, 1.78, 'gauche', 80, 'ND45', 'defenseur', 6, 'joueursPhotoProfil2018_03_20_21_18_21.jpg'),
(70, 106, 1.78, 'gauche', 80, 'ND69', 'defenseur', 6, 'joueursPhotoProfil2018_03_20_21_22_38.png'),
(71, 107, 1.81, 'droite', 79, 'ND07', 'defenseur', 6, 'joueursPhotoProfil2018_03_20_21_25_35.jpg'),
(72, 108, 1.79, 'gauche', 73, 'ND09', 'defenseur', 6, 'joueursPhotoProfil2018_03_20_21_29_35.jpg'),
(73, 109, 1.81, 'gauche', 82, 'ND10', 'milieu_de_terrain', 6, 'joueursPhotoProfil2018_03_20_21_34_50.jpg'),
(74, 110, 1.78, 'droite', 78, 'ND17', 'milieu_de_terrain', 6, 'joueursPhotoProfil2018_03_20_21_38_27.jpg'),
(75, 111, 1.82, 'gauche', 74, 'ND19', 'milieu_de_terrain', 6, 'joueursPhotoProfil2018_03_20_21_47_53.jpg'),
(76, 112, 1.76, 'droite', 72, 'ND23', 'milieu_de_terrain', 6, 'joueursPhotoProfil2018_03_20_21_50_46.jpg'),
(77, 113, 1.85, 'droite', 77, 'ND21', 'milieu_de_terrain', 6, 'joueursPhotoProfil2018_03_20_21_54_34.gif'),
(78, 114, 1.71, 'droite', 79, 'ND29', 'milieu_de_terrain', 6, 'joueursPhotoProfil2018_03_20_21_57_45.jpeg'),
(79, 115, 1.72, 'gauche', 64, 'NF63', 'milieu_de_terrain', 6, 'joueursPhotoProfil2018_03_20_22_02_22.png'),
(80, 116, 1.76, 'gauche', 72, 'ND42', 'milieu_de_terrain', 6, 'joueursPhotoProfil2018_03_20_22_07_36.jpg'),
(81, 117, 1.81, 'droite', 72, 'ND43', 'milieu_de_terrain', 6, 'joueursPhotoProfil2018_03_20_22_12_19.png'),
(82, 118, 1.83, 'droite', 78, 'NF49', 'milieu_de_terrain', 6, 'joueursPhotoProfil2018_03_20_22_17_41.jpg'),
(83, 119, 1.93, 'gauche', 96, 'NF14', 'attaquant', 6, 'joueursPhotoProfil2018_03_20_22_23_44.jpg'),
(84, 120, 1.85, 'droite', 80, 'NF01', 'attaquant', 6, 'joueursPhotoProfil2018_03_20_22_30_58.jpg'),
(85, 121, 1.76, 'droite', 60, 'ND67', 'attaquant', 6, 'joueursPhotoProfil2018_03_20_22_37_07.jpg'),
(86, 122, 1.9, 'droite', 80, 'NF21', 'gardien', 8, 'joueursPhotoProfil2018_03_20_23_10_23.jpg'),
(87, 123, 1.8, 'droite', 80, 'NF97', 'gardien', 8, 'joueursPhotoProfil2018_03_20_23_24_29.png'),
(88, 124, 1.85, 'gauche', 87, 'ND97', 'gardien', 8, 'joueursPhotoProfil2018_03_20_23_36_39.png'),
(89, 125, 1.7, 'droite', 75, 'MR1', 'gardien', 30, 'joueursPhotoProfil2018_03_21_11_53_10.png'),
(90, 126, 1.75, 'gauche', 70, 'MR2', 'gardien', 30, 'joueursPhotoProfil2018_03_21_11_56_00.jpg'),
(91, 127, 1.7, 'droite', 68, 'MR3', 'defenseur', 30, 'joueursPhotoProfil2018_03_21_11_59_32.jpeg'),
(92, 128, 1.69, 'droite', 76, 'MR4', 'defenseur', 30, 'joueursPhotoProfil2018_03_21_12_02_02.jpg'),
(93, 129, 1.9, 'gauche', 82, 'MR5', 'defenseur', 30, 'joueursPhotoProfil2018_03_21_12_05_41.jpg'),
(94, 130, 1.75, 'gauche', 80, 'MR6', 'defenseur', 30, 'joueursPhotoProfil2018_03_21_12_08_38.jpg'),
(95, 131, 1.71, 'gauche', 92, 'MR7', 'defenseur', 30, 'joueursPhotoProfil2018_03_21_12_11_49.jpg'),
(96, 132, 1.8, 'droite', 58, 'MR8', 'milieu_de_terrain', 30, 'joueursPhotoProfil2018_03_21_12_18_27.jpg'),
(97, 133, 1.72, 'gauche', 82, 'MR9', 'milieu_de_terrain', 30, 'joueursPhotoProfil2018_03_21_12_57_39.jpg'),
(98, 134, 1.78, 'gauche', 85, 'MR10', 'milieu_de_terrain', 30, 'joueursPhotoProfil2018_03_21_13_01_55.jpg'),
(99, 135, 1.79, 'gauche', 82, 'MR11', 'milieu_de_terrain', 30, 'joueursPhotoProfil2018_03_21_13_21_20.jpg'),
(100, 136, 1.8, 'droite', 69, 'MR12', 'milieu_de_terrain', 30, 'joueursPhotoProfil2018_03_21_13_26_14.jpg'),
(102, 138, 1.7, 'droite', 80, 'MR13', 'attaquant', 30, 'joueursPhotoProfil2018_03_21_13_46_05.png'),
(103, 139, 1.71, 'droite', 65, 'MR14', 'attaquant', 30, 'joueursPhotoProfil2018_03_21_13_49_11.jpg'),
(104, 140, 1.6, 'droite', 68, 'MR15', 'attaquant', 30, 'joueursPhotoProfil2018_03_21_13_55_21.png'),
(105, 141, 1.7, 'gauche', 85, 'TG1', 'gardien', 51, 'joueursPhotoProfil2018_03_21_14_07_01.jpg'),
(106, 142, 1.73, 'droite', 89, 'TG2', 'gardien', 51, 'joueursPhotoProfil2018_03_21_14_11_06.jpg'),
(107, 143, 1.7, 'gauche', 68, 'TG3', 'defenseur', 51, 'joueursPhotoProfil2018_03_21_14_15_12.jpg'),
(108, 144, 1.7, 'gauche', 80, 'TG4', 'defenseur', 51, 'joueursPhotoProfil2018_03_21_14_19_08.jpg'),
(109, 145, 1.75, 'droite', 80, 'TG5', 'defenseur', 51, 'joueursPhotoProfil2018_03_21_14_22_07.jpg'),
(110, 146, 1.74, 'droite', 75, 'TG6', 'defenseur', 51, 'joueursPhotoProfil2018_03_21_14_25_58.jpg'),
(111, 147, 1.7, 'gauche', 80, 'TG7', 'defenseur', 51, 'joueursPhotoProfil2018_03_21_14_28_56.jpg'),
(112, 148, 1.7, 'gauche', 80, 'TG8', 'milieu_de_terrain', 51, 'joueursPhotoProfil2018_03_21_14_32_57.jpg'),
(113, 149, 1.71, 'gauche', 76, 'TG9', 'milieu_de_terrain', 51, 'joueursPhotoProfil2018_03_21_14_39_29.png'),
(114, 150, 1.7, 'droite', 80, 'TG10', 'milieu_de_terrain', 51, 'joueursPhotoProfil2018_03_21_14_42_26.jpg'),
(115, 151, 1.69, 'gauche', 67, 'TG11', 'milieu_de_terrain', 51, 'joueursPhotoProfil2018_03_21_14_45_50.jpg'),
(116, 152, 1.7, 'gauche', 80, 'TG12', 'milieu_de_terrain', 51, 'joueursPhotoProfil2018_03_21_14_49_02.jpg'),
(117, 153, 1.7, 'droite', 80, 'TG13', 'attaquant', 51, 'joueursPhotoProfil2018_03_21_14_51_32.jpg'),
(118, 154, 1.7, 'gauche', 80, 'TG14', 'attaquant', 51, 'joueursPhotoProfil2018_03_21_15_12_24.jpg'),
(119, 155, 1.7, 'droite', 80, 'TG15', 'attaquant', 51, 'joueursPhotoProfil2018_03_21_15_14_26.jpg'),
(120, 156, 1.7, 'gauche', 80, 'EG1', 'gardien', 14, 'joueursPhotoProfil2018_03_21_15_21_05.jpeg'),
(121, 157, 1.7, 'gauche', 80, 'EG2', 'gardien', 14, 'joueursPhotoProfil2018_03_21_15_25_24.jpg'),
(122, 158, 1.76, 'gauche', 74, 'EG3', 'defenseur', 14, 'joueursPhotoProfil2018_03_21_15_27_46.jpg'),
(123, 159, 1.87, 'droite', 80, 'EG4', 'defenseur', 14, 'joueursPhotoProfil2018_03_21_15_34_03.jpg'),
(124, 160, 1.82, 'droite', 87, 'EG5', 'defenseur', 14, 'joueursPhotoProfil2018_03_21_15_36_55.png'),
(125, 161, 1.7, 'droite', 80, 'EG6', 'defenseur', 14, 'joueursPhotoProfil2018_03_21_15_39_06.jpg'),
(126, 162, 1.7, 'droite', 80, 'EG7', 'defenseur', 14, 'joueursPhotoProfil2018_03_21_15_47_24.jpg'),
(127, 163, 1.74, 'gauche', 87, 'EG8', 'defenseur', 14, 'joueursPhotoProfil2018_03_21_15_49_44.jpg'),
(128, 164, 1.7, 'droite', 80, 'EG9', 'milieu_de_terrain', 14, 'joueursPhotoProfil2018_03_21_15_54_08.jpg'),
(129, 165, 1.78, 'gauche', 84, 'EG10', 'milieu_de_terrain', 14, 'joueursPhotoProfil2018_03_21_15_57_18.jpg'),
(130, 166, 1.73, 'droite', 74, 'EG11', 'milieu_de_terrain', 14, 'joueursPhotoProfil2018_03_21_16_02_06.jpg'),
(131, 167, 1.72, 'droite', 76, 'EG12', 'milieu_de_terrain', 14, 'joueursPhotoProfil2018_03_21_16_06_01.jpg'),
(132, 168, 1.79, 'gauche', 76, 'EG13', 'milieu_de_terrain', 14, 'joueursPhotoProfil2018_03_21_16_09_59.png'),
(133, 169, 1.74, 'gauche', 79, 'EG14', 'attaquant', 14, 'joueursPhotoProfil2018_03_21_16_12_18.JPG'),
(134, 170, 1.77, 'droite', 76, 'EG15', 'attaquant', 14, 'joueursPhotoProfil2018_03_21_16_16_27.png'),
(135, 171, 1.71, 'gauche', 81, 'EG16', 'attaquant', 14, 'joueursPhotoProfil2018_03_21_16_19_14.jpg'),
(136, 172, 1.7, 'gauche', 80, 'ML1', 'gardien', 29, 'joueursPhotoProfil2018_03_21_16_25_42.jpg'),
(137, 173, 1.7, 'gauche', 80, 'ML2', 'gardien', 29, 'joueursPhotoProfil2018_03_21_16_32_44.JPG'),
(138, 174, 1.7, 'droite', 80, 'ML3', 'defenseur', 29, 'joueursPhotoProfil2018_03_21_16_43_16.jpeg'),
(139, 175, 1.72, 'gauche', 64, 'ML4', 'defenseur', 29, 'joueursPhotoProfil2018_03_21_16_49_10.jpg'),
(140, 176, 1.78, 'gauche', 80, 'ML5', 'defenseur', 29, 'joueursPhotoProfil2018_03_21_16_56_45.jpg'),
(141, 177, 1.72, 'gauche', 81, 'ML6', 'defenseur', 29, 'joueursPhotoProfil2018_03_21_16_59_04.jpg'),
(142, 178, 1.71, 'droite', 76, 'ML7', 'defenseur', 29, 'joueursPhotoProfil2018_03_21_17_04_15.jpg'),
(143, 179, 1.7, 'droite', 80, 'ML8', 'milieu_de_terrain', 29, 'joueursPhotoProfil2018_03_21_17_06_39.jpg'),
(144, 180, 1.7, 'droite', 80, 'ML9', 'milieu_de_terrain', 29, 'joueursPhotoProfil2018_03_21_17_11_48.jpg'),
(145, 181, 1.7, 'droite', 80, 'ML10', 'milieu_de_terrain', 29, 'joueursPhotoProfil2018_03_21_17_14_46.jpg'),
(146, 182, 1.72, 'gauche', 76, 'ML11', 'milieu_de_terrain', 29, 'joueursPhotoProfil2018_03_21_17_18_49.jpg'),
(147, 183, 1.7, 'droite', 80, 'ML12', 'milieu_de_terrain', 29, 'joueursPhotoProfil2018_03_21_17_24_43.jpg'),
(148, 184, 1.74, 'gauche', 84, 'ML13', 'attaquant', 29, 'joueursPhotoProfil2018_03_21_17_28_13.jpg'),
(149, 185, 1.71, 'gauche', 89, 'ML14', 'attaquant', 29, 'joueursPhotoProfil2018_03_21_17_31_22.jpg'),
(150, 186, 1.73, 'gauche', 84, 'ML15', 'attaquant', 29, 'joueursPhotoProfil2018_03_21_17_36_54.png'),
(151, 187, 1.67, 'droite', 75, 'ND53', 'defenseur', 8, 'joueursPhotoProfil2018_03_21_20_01_01.png'),
(152, 188, 1.85, 'droite', 75, 'NF31', 'defenseur', 8, 'joueursPhotoProfil2018_03_21_20_04_45.jpg'),
(153, 189, 1.76, 'droite', 67, 'NF40', 'defenseur', 8, 'joueursPhotoProfil2018_03_21_20_07_48.png'),
(154, 190, 1.7, 'droite', 80, 'ND68', 'defenseur', 8, 'joueursPhotoProfil2018_03_21_20_16_03.png'),
(155, 191, 1.7, 'gauche', 68, 'ND32', 'defenseur', 8, 'joueursPhotoProfil2018_03_21_20_20_50.jpg'),
(156, 192, 1.9, 'droite', 80, 'ND56', 'milieu_de_terrain', 8, 'joueursPhotoProfil2018_03_21_20_24_49.jpg'),
(157, 193, 1.83, 'droite', 80, 'NF10', 'milieu_de_terrain', 8, 'joueursPhotoProfil2018_03_21_20_28_14.jpg'),
(158, 194, 1.76, 'droite', 73, 'ND37', 'milieu_de_terrain', 8, 'joueursPhotoProfil2018_03_21_20_30_56.png'),
(159, 195, 1.83, 'droite', 72, 'ND60', 'milieu_de_terrain', 8, 'joueursPhotoProfil2018_03_21_20_34_39.jpg'),
(160, 196, 1.84, 'droite', 70, 'ND47', 'attaquant', 8, 'joueursPhotoProfil2018_03_21_20_37_20.png'),
(161, 197, 1.75, 'droite', 68, 'NH06', 'attaquant', 8, 'joueursPhotoProfil2018_03_21_20_40_39.jpg'),
(162, 198, 1.8, 'droite', 74, 'NH45', 'attaquant', 8, 'joueursPhotoProfil2018_03_21_20_45_13.png'),
(163, 199, 1.88, 'droite', 89, 'NH47', 'gardien', 37, 'joueursPhotoProfil2018_03_21_20_56_56.jpg'),
(164, 200, 1.89, 'droite', 76, 'ND33', 'gardien', 37, 'joueursPhotoProfil2018_03_21_20_59_59.png'),
(165, 201, 1.82, 'droite', 80, 'NF67', 'defenseur', 37, 'joueursPhotoProfil2018_03_21_21_04_23.jpg'),
(166, 202, 1.8, 'gauche', 80, 'NH27', 'defenseur', 37, 'joueursPhotoProfil2018_03_21_21_07_33.jpeg'),
(167, 203, 1.8, 'gauche', 80, 'NF73', 'defenseur', 37, 'joueursPhotoProfil2018_03_21_21_11_17.jpg'),
(168, 204, 1.7, 'droite', 80, 'NF16', 'defenseur', 37, 'joueursPhotoProfil2018_03_21_21_18_57.jpeg'),
(169, 205, 1.7, 'gauche', 80, 'NF44', 'defenseur', 37, 'joueursPhotoProfil2018_03_21_21_21_45.jpg'),
(170, 206, 1.8, 'droite', 73, 'NH04', 'milieu_de_terrain', 37, 'joueursPhotoProfil2018_03_21_21_26_54.jpg'),
(171, 207, 1.8, 'droite', 76, 'ND49', 'milieu_de_terrain', 37, 'joueursPhotoProfil2018_03_21_21_47_58.jpeg'),
(172, 208, 1.7, 'droite', 80, 'NF64', 'milieu_de_terrain', 37, 'joueursPhotoProfil2018_03_21_21_51_39.jpg'),
(173, 209, 1.85, 'droite', 74, 'TUN1', 'gardien', 52, 'joueursPhotoProfil2018_03_21_21_54_26.jpeg'),
(174, 210, 1.84, 'droite', 79, 'TUN2', 'gardien', 52, 'joueursPhotoProfil2018_03_21_21_56_04.jpeg'),
(175, 211, 1.785, 'droite', 75, 'TUN3', 'defenseur', 52, 'joueursPhotoProfil2018_03_21_21_58_10.jpeg'),
(176, 212, 1.93, 'droite', 78, 'TUN4', 'defenseur', 52, 'joueursPhotoProfil2018_03_21_22_00_08.jpeg'),
(177, 213, 1.87, 'droite', 84, 'TUN5', 'defenseur', 52, 'joueursPhotoProfil2018_03_21_22_02_24.jpg'),
(178, 214, 1.7, 'droite', 80, 'TUN6', 'defenseur', 52, 'joueursPhotoProfil2018_03_21_22_04_01.jpeg'),
(179, 215, 1.76, 'gauche', 78, 'NF04', 'milieu_de_terrain', 37, 'joueursPhotoProfil2018_03_21_22_04_57.jpeg'),
(180, 216, 1.75, 'droite', 80, 'TUN7', 'defenseur', 52, 'joueursPhotoProfil2018_03_21_22_06_15.jpeg'),
(181, 217, 1.8, 'droite', 74, 'TUN8', 'milieu_de_terrain', 52, 'joueursPhotoProfil2018_03_21_22_08_19.jpeg'),
(182, 218, 1.78, 'droite', 72, 'NH37', 'milieu_de_terrain', 8, 'joueursPhotoProfil2018_03_21_22_10_06.jpeg'),
(183, 219, 1.7, 'droite', 80, 'TUN9', 'milieu_de_terrain', 52, 'joueursPhotoProfil2018_03_21_22_12_03.jpeg'),
(184, 220, 1.7, 'droite', 80, 'TUN10', 'milieu_de_terrain', 52, 'joueursPhotoProfil2018_03_21_22_16_10.jpeg'),
(185, 221, 1.8, 'droite', 80, 'NH30', 'attaquant', 37, 'joueursPhotoProfil2018_03_21_22_16_15.jpg'),
(186, 222, 1.7, 'droite', 70, 'ND57', 'attaquant', 37, 'joueursPhotoProfil2018_03_21_22_22_30.jpg'),
(187, 223, 1.91, 'droite', 90, 'NG45', 'gardien', 19, 'joueursPhotoProfil2018_03_21_22_30_16.jpg'),
(188, 224, 1.91, 'droite', 80, 'NG40', 'gardien', 19, 'joueursPhotoProfil2018_03_21_22_37_07.jpg'),
(189, 225, 1.7, 'gauche', 61, 'NG01', 'defenseur', 19, 'joueursPhotoProfil2018_03_21_22_40_15.jpg'),
(190, 226, 1.75, 'droite', 65, 'TUN11', 'milieu_de_terrain', 52, 'joueursPhotoProfil2018_03_21_22_43_45.jpg'),
(191, 227, 1.7, 'droite', 75, 'TUN12', 'milieu_de_terrain', 52, 'joueursPhotoProfil2018_03_21_22_46_00.jpg'),
(192, 228, 1.85, 'droite', 80, 'TUN13', 'attaquant', 52, 'joueursPhotoProfil2018_03_21_22_47_54.jpg'),
(193, 229, 1.83, 'gauche', 73, 'TUN14', 'attaquant', 52, 'joueursPhotoProfil2018_03_21_22_50_26.jpg'),
(194, 230, 1.8, 'droite', 75, 'NG56', 'defenseur', 19, 'joueursPhotoProfil2018_03_21_22_51_32.jpeg'),
(195, 231, 1.87, 'droite', 75, 'TUN15', 'attaquant', 52, 'joueursPhotoProfil2018_03_21_22_52_42.jpeg'),
(196, 232, 1.79, 'gauche', 70, 'ND70', 'defenseur', 19, 'joueursPhotoProfil2018_03_21_22_54_27.jpg'),
(197, 233, 1.69, 'droite', 65, 'NG20', 'defenseur', 19, 'joueursPhotoProfil2018_03_21_22_57_59.jpeg'),
(198, 234, 1.7, 'droite', 72, 'ND62', 'defenseur', 19, 'joueursPhotoProfil2018_03_21_23_01_00.jpeg'),
(199, 235, 1.7, 'droite', 80, 'ZIM1', 'gardien', 54, 'joueursPhotoProfil2018_03_21_23_01_24.jpeg'),
(200, 236, 1.7, 'droite', 80, 'ZIM2', 'gardien', 54, 'joueursPhotoProfil2018_03_21_23_03_36.png'),
(201, 237, 1.88, 'gauche', 83, 'NH72', 'defenseur', 19, 'joueursPhotoProfil2018_03_21_23_05_17.jpg'),
(202, 238, 1.7, 'droite', 80, 'ZIM3', 'defenseur', 54, 'joueursPhotoProfil2018_03_21_23_05_45.jpeg'),
(203, 239, 1.7, 'droite', 80, 'ZIM4', 'defenseur', 54, 'joueursPhotoProfil2018_03_21_23_08_04.jpeg'),
(204, 240, 1.73, 'droite', 78, 'ZIM5', 'defenseur', 54, 'joueursPhotoProfil2018_03_21_23_10_09.jpg'),
(205, 241, 1.82, 'gauche', 78, 'NF13', 'milieu_de_terrain', 19, 'joueursPhotoProfil2018_03_21_23_10_24.png'),
(207, 243, 1.7, 'gauche', 80, 'ZIM6', 'defenseur', 54, 'joueursPhotoProfil2018_03_21_23_14_33.jpeg'),
(208, 244, 1.71, 'droite', 72, 'NG52', 'milieu_de_terrain', 19, 'joueursPhotoProfil2018_03_21_23_15_09.jpeg'),
(209, 245, 1.57, 'droite', 78, 'ZIM7', 'defenseur', 54, 'joueursPhotoProfil2018_03_21_23_16_27.jpg'),
(210, 246, 1.7, 'droite', 80, 'ZIM8', 'milieu_de_terrain', 54, 'joueursPhotoProfil2018_03_21_23_18_19.jpg'),
(211, 247, 1.7, 'droite', 80, 'ZIM9', 'milieu_de_terrain', 54, 'joueursPhotoProfil2018_03_21_23_21_37.jpg'),
(212, 248, 1.6, 'droite', 73, 'ZIM10', 'milieu_de_terrain', 54, 'joueursPhotoProfil2018_03_21_23_23_20.jpg'),
(213, 249, 1.8, 'gauche', 68, 'NH24', 'milieu_de_terrain', 19, 'joueursPhotoProfil2018_03_21_23_24_47.jpg'),
(214, 250, 1.7, 'droite', 80, 'ZIM11', 'milieu_de_terrain', 54, 'joueursPhotoProfil2018_03_21_23_25_39.jpg'),
(215, 251, 1.7, 'droite', 80, 'ZIM12', 'milieu_de_terrain', 54, 'joueursPhotoProfil2018_03_21_23_27_37.jpeg'),
(216, 252, 1.7, 'droite', 80, 'ZIM13', 'attaquant', 54, 'joueursPhotoProfil2018_03_21_23_29_07.jpeg'),
(217, 253, 1.72, 'gauche', 70, 'NF27', 'milieu_de_terrain', 19, 'joueursPhotoProfil2018_03_21_23_29_54.jpg'),
(218, 254, 1.7, 'droite', 80, 'ZIM14', 'attaquant', 54, 'joueursPhotoProfil2018_03_21_23_30_52.jpeg'),
(219, 255, 1.7, 'droite', 80, 'ZIM16', 'attaquant', 54, 'joueursPhotoProfil2018_03_21_23_32_23.jpg'),
(220, 256, 1.82, 'droite', 80, 'NF24', 'milieu_de_terrain', 19, 'joueursPhotoProfil2018_03_21_23_35_31.png'),
(221, 257, 1.89, 'droite', 84, 'RDC', 'gardien', 38, 'joueursPhotoProfil2018_03_21_23_37_28.jpg'),
(223, 259, 1.86, 'droite', 80, 'NH43', 'attaquant', 19, 'joueursPhotoProfil2018_03_21_23_39_38.jpg'),
(224, 260, 1.7, 'droite', 80, 'RDC3', 'defenseur', 38, 'joueursPhotoProfil2018_03_21_23_41_50.jpeg'),
(225, 261, 1.7, 'droite', 80, 'RDC4', 'defenseur', 38, 'joueursPhotoProfil2018_03_21_23_43_42.jpg'),
(226, 262, 1.7, 'droite', 80, 'ND14', 'attaquant', 19, 'joueursPhotoProfil2018_03_21_23_45_04.jpg'),
(227, 263, 1.7, 'droite', 80, 'RDC5', 'defenseur', 38, 'joueursPhotoProfil2018_03_21_23_45_20.png'),
(228, 264, 1.7, 'droite', 80, 'RDC6', 'defenseur', 38, 'joueursPhotoProfil2018_03_21_23_46_57.jpg'),
(229, 265, 1.7, 'droite', 80, 'RD7', 'defenseur', 38, 'joueursPhotoProfil2018_03_21_23_49_01.jpg'),
(230, 266, 1.7, 'droite', 80, 'RDC8', 'milieu_de_terrain', 38, 'joueursPhotoProfil2018_03_21_23_50_44.jpeg'),
(231, 267, 1.7, 'droite', 80, 'RDC9', 'milieu_de_terrain', 38, 'joueursPhotoProfil2018_03_21_23_52_48.jpg'),
(232, 268, 1.7, 'droite', 80, 'RDC10', 'milieu_de_terrain', 38, 'joueursPhotoProfil2018_03_21_23_54_56.jpg'),
(233, 269, 1.9, 'droite', 82, 'NC02', 'gardien', 12, 'joueursPhotoProfil2018_03_21_23_56_11.jpg'),
(234, 270, 1.76, 'droite', 74, 'RDC11', 'milieu_de_terrain', 38, 'joueursPhotoProfil2018_03_21_23_56_39.jpeg'),
(235, 271, 1.7, 'droite', 80, 'RDC12', 'milieu_de_terrain', 38, 'joueursPhotoProfil2018_03_21_23_58_03.jpg'),
(236, 272, 1.81, 'droite', 80, 'NC06', 'gardien', 12, 'joueursPhotoProfil2018_03_21_23_59_47.jpg'),
(237, 273, 1.7, 'droite', 80, 'RDC13', 'attaquant', 38, 'joueursPhotoProfil2018_03_22_00_02_09.jpg'),
(238, 274, 1.7, 'droite', 80, 'RDC14', 'attaquant', 38, 'joueursPhotoProfil2018_03_22_00_03_41.jpeg'),
(239, 275, 1.76, 'droite', 76, 'NF43', 'defenseur', 12, 'joueursPhotoProfil2018_03_22_00_03_46.jpeg'),
(240, 276, 1.8, 'droite', 76, 'RDC15', 'attaquant', 38, 'joueursPhotoProfil2018_03_22_00_06_01.jpg'),
(241, 277, 1.9, 'droite', 80, 'NC79', 'defenseur', 12, 'joueursPhotoProfil2018_03_22_00_06_04.jpg'),
(242, 278, 1.87, 'droite', 77, 'NC32', 'defenseur', 12, 'joueursPhotoProfil2018_03_22_00_08_47.jpeg'),
(243, 279, 1.92, 'gauche', 84, 'NC16', 'defenseur', 12, 'joueursPhotoProfil2018_03_22_00_10_58.jpg'),
(244, 280, 1.9, 'droite', 85, 'NC56', 'defenseur', 12, 'joueursPhotoProfil2018_03_22_00_14_34.jpg'),
(245, 281, 1.8, 'droite', 80, 'NC51', 'milieu_de_terrain', 12, 'joueursPhotoProfil2018_03_22_00_17_34.jpg'),
(246, 282, 1.79, 'gauche', 77, 'NC68', 'milieu_de_terrain', 12, 'joueursPhotoProfil2018_03_22_00_20_40.jpg'),
(247, 283, 1.8, 'droite', 82, 'NC77', 'milieu_de_terrain', 12, 'joueursPhotoProfil2018_03_22_00_23_29.jpg'),
(248, 284, 1.83, 'droite', 76, 'ND44', 'milieu_de_terrain', 12, 'joueursPhotoProfil2018_03_22_00_26_14.jpg'),
(249, 285, 1.68, 'gauche', 67, 'NH29', 'milieu_de_terrain', 12, 'joueursPhotoProfil2018_03_22_00_30_26.jpeg'),
(250, 286, 1.86, 'droite', 86, 'ND98', 'attaquant', 12, 'joueursPhotoProfil2018_03_22_00_34_21.jpg'),
(251, 287, 1.77, 'droite', 70, 'NH10', 'milieu_de_terrain', 12, 'joueursPhotoProfil2018_03_22_00_37_34.jpeg'),
(252, 288, 1.84, 'droite', 80, 'NH64', 'milieu_de_terrain', 12, 'joueursPhotoProfil2018_03_22_00_41_44.png'),
(253, 289, 1.7, 'droite', 80, 'NG37', 'milieu_de_terrain', 37, 'joueursPhotoProfil2018_03_22_00_52_17.jpg'),
(254, 290, 1.78, 'gauche', 76, 'NG79', 'attaquant', 37, 'joueursPhotoProfil2018_03_22_00_56_36.jpg');

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
(27, 'Test', 'JHJHJH', 'M', '2018-03-15', 'JJDJFH', 'JJHFDJF'),
(28, 'Daouda', 'Niakh', 'M', '1990-10-15', 'KOTHIARY', 'SENEGALAISE'),
(29, 'Niakh', 'Daouda', 'M', '1990-10-15', 'Loul Sessene', 'SENEGALAISE'),
(30, 'jkjkj', 'Dosdk', 'M', '1990-10-15', 'kjkjk', 'Espagnol'),
(31, 'Ba', 'Daouda', 'M', '1990-10-15', 'KOTHIARY', 'Algérienne'),
(32, 'KJKJ', 'Adiouma', 'M', '1990-10-15', 'JKJJK', 'SENEGALAISE'),
(33, 'NIAKH', 'TEST', 'M', '1990-10-15', 'Loul sessene', 'SENEGALAISE'),
(34, 'Niakh', 'Daoouda', 'M', '1990-10-15', 'Loul sessene', 'SENEGALAISE'),
(35, 'Niakh', 'Daoouda', 'M', '1990-10-15', 'Loul sessene', 'SENEGALAISE'),
(36, 'NIAKH', 'DAOUDA', 'M', '1990-10-15', 'LOUL SESSENE', 'SENEGALAISE'),
(37, 'Mezui', 'Anthony Mfa', 'M', '1990-10-15', 'GABON', 'Gabonaise'),
(38, 'Moto', 'Yves Stéphane Bitseki', 'M', '1990-10-15', 'Gabon', 'Gabonaise'),
(39, 'DIALLO', 'Abdoulaye', 'M', '1992-03-30', 'Reims', 'SENEGALAISE'),
(40, 'Appindangoyé', 'Aaron ', 'M', '1990-10-15', 'Gabon', 'Gabonaise'),
(41, 'Manga', 'Bruno Ecuele', 'M', '1990-10-15', 'Gabon', 'Gabonaise'),
(42, 'Obambou', 'Franck Perrin', 'M', '1990-10-15', 'Gabon', 'Gabonaise'),
(43, 'Ndiaye', 'Khadim', 'M', '1984-10-30', 'Dakar', 'SENEGALAISE'),
(44, 'Obiang', 'Johann Serge ', 'M', '1990-10-15', 'Gabon', 'Gabonaise'),
(45, 'Ciss', 'Saliou', 'M', '1989-09-15', 'Dakar', 'SENEGALAISE'),
(46, 'Gassama', ' Lamine', 'M', '1989-10-15', 'Marseille', 'SENEGALAISE'),
(47, ' Ondo', 'Benjamin Zé', 'M', '1990-10-15', 'Gabon', 'Gabonaise'),
(48, 'Koulibaly', 'Kalidou', 'M', '1990-10-15', 'Saint-Dié-des-Vosges', 'SENEGALAISE'),
(49, 'Kaku', ' Guelor Kanga ', 'M', '1990-10-15', 'Gabon', 'Gabonaise'),
(50, 'Mbengue', 'Cheikh', 'M', '1988-07-23', 'Toulouse', 'SENEGALAISE'),
(51, 'Lemina', 'Mario', 'M', '1990-10-15', 'Gabon', 'Gabonaise'),
(52, 'Mbodj ', 'Kara', 'M', '1992-11-22', 'Mbour', 'SENEGALAISE'),
(53, 'Madinda', 'Levy Clément ', 'M', '1992-10-15', 'Gabon', 'Gabonaise'),
(54, 'Diamé', 'Mohamed', 'M', '1987-06-14', 'Créteil', 'SENEGALAISE'),
(55, 'DIOP', 'Papakouli', 'M', '1986-03-19', 'Kaolack', 'SENEGALAISE'),
(56, 'Ndong', 'Didier ', 'M', '1993-10-15', 'Gabon', 'Gabonaise'),
(57, 'Gueye', ' Idrissa', 'M', '1989-09-26', 'Dakar', 'SENEGALAISE'),
(58, 'Ngouali', 'Junior Serge Mar tinsson ', 'M', '1994-10-15', 'Suede', 'Gabonaise'),
(59, 'Kouyaté', ' Cheikhou', 'M', '1989-09-21', 'Dakar', 'SENEGALAISE'),
(60, 'Ndiaye', ' Papa Alioune', 'M', '1990-10-27', 'Dakar', 'SENEGALAISE'),
(61, 'Angoue', 'Serge Kevyn Aboue', 'M', '1991-10-15', 'Port-Gentil', 'Gabonaise'),
(62, 'Diouf', ' Mame Biram ', 'M', '1987-12-16', 'Dakar', 'SENEGALAISE'),
(63, 'Mané', 'Sadio', 'M', '1992-04-10', 'Sédhiou', 'SENEGALAISE'),
(64, 'Aubameyang', ' Pierre-Emerick ', 'M', '1991-08-15', 'France', 'Gabonaise'),
(65, ' Biyoghe', 'Cedric Ondo', 'M', '1989-07-05', 'Bresil', 'Gabonaise'),
(66, 'Konaté', 'Moussa', 'M', '1993-04-03', 'Mbour', 'SENEGALAISE'),
(67, 'Asselah', 'Malik', 'M', '1986-07-08', 'Alger', 'Algérienne'),
(68, 'Rahmani ', ' Chamseddine', 'M', '1990-09-15', 'Annaba', 'Algérienne'),
(69, ' Mbaye', ' Papa', 'M', '1992-08-02', 'Espagne', 'Bissau-Guineene'),
(70, 'Benyahia', 'Mohamed ', 'M', '1990-10-15', 'Tremblay', 'Algérienne'),
(71, 'Mendes', 'Jonas ', 'M', '1988-02-13', 'Togo', 'Bissau-Guineene '),
(72, 'Meftah', 'Mohamed Rabie', 'M', '1985-05-05', 'Tizi OUzou', 'Algérienne'),
(73, 'Cande', ' Mamadu ', 'M', '1991-10-17', 'France', 'Bissau-Guineene'),
(74, 'Belkaroui', ' Hichem', 'M', '1992-05-24', 'Oran', 'Algérienne'),
(75, 'Mendes', 'Eridson ', 'M', '1990-09-21', 'Japon', 'Bissau-Guineene'),
(76, 'Belkhiter ', ' Mokhtar', 'M', '1992-01-15', 'Oran', 'Algérienne'),
(77, 'Bensebaini', 'Ramy', 'M', '1995-04-16', 'Constantine', 'Algérienne'),
(78, 'Mendy', 'Emmanuel ', 'M', '1988-08-20', 'Gabon', 'Bissau-Guineene'),
(79, 'Abeid', 'Mehdi', 'M', '1992-08-06', 'Montreuil', 'Algérienne'),
(80, 'Silva', 'Rudinilson', 'M', '1988-08-03', 'Guinee Bissau', 'Bissau-Guineene'),
(81, 'Soares', 'Agostinho ', 'M', '1991-09-26', 'Togo', 'Bissau-Guineene'),
(82, 'Bentaleb', 'Nabil ', 'M', '1994-11-24', 'Lille', 'Algérienne'),
(83, 'Soares', 'Nanísio ', 'M', '1992-01-15', 'Guinee Bissau', 'Bissau-Guineene'),
(84, 'Brahimi', 'Yacine  ', 'M', '1990-02-08', 'Paris', 'Algérienne'),
(85, 'Silva', 'Tony ', 'M', '1990-09-17', 'Madagascar', 'Bissau-Guineene'),
(86, 'Santos', 'Aldair', 'M', '1990-10-04', 'Espagne', 'Bissau-Guineene'),
(87, 'Camara', 'Abel ', 'M', '1988-10-06', 'Senegal', 'Bissau-Guineene'),
(88, 'Camara', 'Idrissa ', 'M', '1990-10-03', 'Benin', 'Bissau-Guineene'),
(89, 'Ghezzal', 'Rachid', 'M', '1992-05-09', 'Décines-Charpieu', 'Algérienne'),
(90, 'Mario', ' Joao', 'M', '1987-05-13', 'Gabon', 'Bissau-Guineene'),
(91, 'Preira', 'Bruno ', 'M', '1990-10-15', 'Madagascar', 'Bissau-Guineene'),
(92, 'Mendy', 'Jean-Paul ', 'M', '1990-10-15', 'Gabon', 'Bissau-Guineene'),
(93, 'Guedioura', 'Adlene ', 'M', '1990-10-15', 'Algerie', 'Algérienne'),
(94, 'Bounedjah', 'Baghdad ', 'M', '1988-10-15', 'Benin', 'Algérienne'),
(95, 'Hanni', 'Sofiane ', 'M', '1990-10-03', 'Maroc', 'Algérienne'),
(96, 'Slimani', 'Islam ', 'M', '1990-09-26', 'Maroc', 'Algérienne'),
(97, ' Koffi', 'Hervé Kouakou', 'M', '1996-10-16', 'Burkina Faso', 'Burkinabé'),
(98, 'Sanou', 'Moussa Germain ', 'M', '1992-05-26', 'Burkina Faso', 'Burkinabé'),
(99, 'Sawadogo', 'Aboubacar ', 'M', '1989-08-10', 'Burkina Faso', 'Burkinabé'),
(100, 'Congo', 'Ernest Aboubacar ', 'M', '1992-12-13', 'Burkina Faso', 'Burkinabé'),
(101, 'Coulibaly', 'Yacouba ', 'M', '1994-10-02', 'Burkina Faso', 'Burkinabé'),
(102, 'Day', 'Issoufou ', 'M', '1991-08-06', 'Burkina Faso', 'Burkinabé'),
(103, 'Koné', ' Bakary ', 'M', '1988-04-29', 'Burkina Faso', 'Burkinabé'),
(104, 'Kouanda ', 'Souleymane ', 'M', '1992-10-21', 'Burkina Faso', 'Burkinabé'),
(105, 'Lingane', 'Issoumaila ', 'M', '1991-03-15', 'Côte d\'ivoire', 'Burkinabé'),
(106, 'Malo', ' Patrick ', 'M', '1992-02-18', 'Burkina Faso', 'Burkinabé'),
(107, 'Paro', 'Issouf ', 'M', '1994-10-19', 'Burkina Faso', 'Burkinabé'),
(108, 'Yago ', 'Steeve ', 'M', '1992-12-16', 'Burkina Faso', 'Burkinabé'),
(109, 'Bayala', ' Cyrille ', 'M', '1996-05-26', 'Burkina Faso', 'Burkinabé'),
(110, 'Guira', 'Adama ', 'M', '1988-04-24', 'Burkina Faso', 'Burkinabé'),
(111, 'Kaboré', 'Charles', 'M', '1988-02-09', 'Burkina Faso', 'Burkinabé'),
(112, 'Nakoulma ', 'Préjuce ', 'M', '1987-04-21', 'Burkina Faso', 'Burkinabé'),
(113, 'Sare', 'Bakary', 'M', '1990-04-05', 'Côte d\'ivoire', 'Burkinabé'),
(114, 'Touré', 'Blati ', 'M', '1994-08-04', 'Côte d\'ivoire', 'Burkinabé'),
(115, 'Traoré', 'abdoul razack ', 'M', '1988-12-28', 'Côte d\'ivoire', 'Burkinabé'),
(116, 'Traoré', 'Alain ', 'M', '1988-12-31', 'Burkina Faso', 'Burkinabé'),
(117, 'Traoré', 'Bertrand ', 'M', '1995-11-06', 'Burkina Faso', 'Burkinabé'),
(118, 'Zongo', 'Jonathan ', 'M', '1989-12-02', 'Burkina Faso', 'Burkinabé'),
(119, 'Bancé ', ' Aristide ', 'M', '1984-11-19', 'Burkina Faso', 'Burkinabé'),
(120, 'Diawara', ' Banou ', 'M', '1992-02-13', 'Burkina Faso', 'Burkinabé'),
(121, 'Pitroipa', 'Jonathan ', 'M', '1986-04-16', 'Burkina Faso', 'Burkinabé'),
(122, 'Goda', 'Jules Stéphane', 'M', '1990-10-15', 'Caméroun', 'camérounaise'),
(123, 'Bokwé', 'Georges ', 'M', '1989-10-14', 'Caméroun', 'camérounaise'),
(124, 'Ondoa', 'Fabrice ', 'M', '1995-12-24', 'Caméroun', 'camérounaise'),
(125, 'El Kajoui', 'Mounir ', 'M', '1992-01-08', 'Tunisie', 'Marocaine'),
(126, 'Bounou', 'Yassine ', 'M', '1990-10-17', 'Maroc', 'Marocaine'),
(127, 'Benatia', 'Medhi', 'M', '1991-09-13', 'Espagne', 'Marocaine'),
(128, 'Da Costa', 'Manuel ', 'M', '1991-03-28', 'Bresil', 'Marocaine'),
(129, 'Attouchi', 'Amine ', 'M', '1992-04-11', 'Port-Gentil', 'Marocaine'),
(130, 'Mendyl', ' Hamza ', 'M', '1993-03-18', 'Madagascar', 'Marocaine'),
(131, 'Chafik', 'Fouad', 'M', '1992-04-24', 'Maroc', 'Marocaine'),
(132, 'Saïss', 'Romain ', 'M', '1991-09-12', 'Tunisie', 'Marocaine'),
(133, 'Bennasser', 'Youssef Aït ', 'M', '1991-07-07', 'Maroc', 'Marocaine'),
(134, 'Obbadi', 'Mounir ', 'M', '1991-04-03', 'France', 'Marocaine'),
(135, 'El Ahmadi', 'Karim', 'M', '1991-10-26', 'Maroc', 'Marocaine'),
(136, 'Fajr', ' Fayçal  ', 'M', '1992-03-06', 'Bresil', 'Marocaine'),
(137, 'Alioui', 'Rachid ', 'M', '1992-04-17', 'France', 'Marocaine'),
(138, 'Alioui', 'Rachid ', 'M', '1992-06-06', 'Portugal', 'Marocaine'),
(139, 'Boutaib', 'Khalid ', 'M', '1993-04-23', 'Algerie', 'Marocaine'),
(140, 'Youssef ', 'Ennesyri', 'M', '1992-08-08', 'Maroc', 'Marocaine'),
(141, 'Agassa', 'Kossi ', 'M', '1991-04-27', 'Benin', 'Togolaise'),
(142, 'Mensah', 'Cédric ', 'M', '1991-04-14', 'Togo', 'Togolaise'),
(143, 'Akakpo', 'Serge ', 'M', '1992-06-21', 'Cameroun', 'Togolaise'),
(144, 'Bossou', 'Vincent ', 'M', '1991-11-29', 'Benin', 'Togolaise'),
(145, 'Dakonam', 'Djene ', 'M', '1992-04-18', 'Burkina Faso', 'Togolaise'),
(146, 'Mamah', 'Gafar ', 'M', '1992-04-24', 'Comores', 'Togolaise'),
(147, 'Ouro-Akoriko', 'Sadate ', 'M', '1990-12-10', 'Burkina Faso', 'Togolaise'),
(148, 'Atakora', ' Lalawele ', 'M', '1993-03-12', 'Mali', 'Togolaise'),
(149, 'Atchou', 'Franco ', 'M', '1991-04-13', 'Bresil', 'Togolaise'),
(150, 'Ayite', 'Floyd ', 'M', '1990-11-28', 'Benin', 'Togolaise'),
(151, 'Bebou', 'Ihlas ', 'M', '1994-03-25', 'Togo', 'Togolaise'),
(152, 'Dossevi', 'Matthieu ', 'M', '1992-05-01', 'Togo', 'Togolaise'),
(153, 'Adebayor', 'Emmanuel ', 'M', '1991-04-08', 'Tunisie', 'Togolaise'),
(154, 'Agbeniadan', 'Komlan ', 'M', '1992-03-05', 'Benin', 'Togolaise'),
(155, 'Boukari', 'Razak ', 'M', '1990-10-12', 'Togo', 'Togolaise'),
(156, 'Ekramy', 'Sherif ', 'M', '1992-05-09', 'Maroc', 'Egyptienne'),
(157, ' El Hadary', 'Essam', 'M', '1989-07-07', 'Tunisie', 'Egyptienne'),
(158, 'Fathy', 'Ahmed ', 'M', '1991-09-12', 'Maroc', 'Egyptienne'),
(159, 'Hegazy', 'Ahmed', 'M', '1991-04-08', 'Egypte', 'Egyptienne'),
(160, 'Samir', 'Saad  ', 'M', '1992-04-17', 'Egypte', 'Egyptienne'),
(161, 'Dwidar', ' Ahmed ', 'M', '1992-03-05', 'Espagne', 'Egyptienne'),
(162, 'Elmohamady', 'Ahmed ', 'M', '1991-04-08', 'Egypte', 'Egyptienne'),
(163, 'Gaber', 'Omar ', 'M', '1991-05-25', 'Egypte', 'Egyptienne'),
(164, 'Hamed', 'Tarek ', 'M', '1992-04-25', 'Egypte', 'Egyptienne'),
(165, 'Salah', 'Ibrahim ', 'M', '1992-05-15', 'Espagne', 'Egyptienne'),
(166, 'El Said', 'Abdallah ', 'M', '1991-04-17', 'Espagne', 'Egyptienne'),
(167, 'Hassan', 'Mahmoud ', 'M', '1992-01-18', 'Espagne', 'Egyptienne'),
(168, 'Elneny', 'Mohamed ', 'M', '1991-04-18', 'Algerie', 'Egyptienne'),
(169, 'Hassan', 'Ahmed ', 'M', '1991-04-14', 'Maroc', 'Egyptienne'),
(170, 'Mohsen ', 'Marwan ', 'M', '1991-04-26', 'Egypte', 'Egyptienne'),
(171, 'Abdel-Moneim', ' Mahmoud ', 'M', '1991-04-08', 'Maroc', 'Egyptienne'),
(172, 'Diakité', ' Soumaila ', 'M', '1991-12-10', 'Mali', 'Malienne'),
(173, 'Diarra', 'Djigui ', 'M', '1991-04-08', 'Mali', 'Malienne'),
(174, 'Ndiaye', 'Mahamadou', 'M', '1991-04-27', 'Mali', 'Malienne'),
(175, 'Traoré', 'Charles ', 'M', '1992-05-08', 'Dakar', 'Malienne'),
(176, 'Coulibaly', ' Ousmane', 'M', '1991-04-08', 'Senegal', 'Malienne'),
(177, ' Konaté', 'Mohamed', 'M', '1992-03-04', 'Benin', 'Malienne'),
(178, 'Koné', 'Youssouf ', 'M', '1993-04-08', 'Mali', 'Malienne'),
(179, 'Traoré', 'Hamari ', 'M', '1993-02-08', 'Mali', 'Malienne'),
(180, ' Bissouma', 'Yves', 'M', '1992-06-06', 'Mali', 'Malienne'),
(181, 'Coulibaly', 'Lassana ', 'M', '1994-06-08', 'Senegal', 'Mali'),
(182, 'Doumbia', 'Moussa', 'M', '1992-03-06', 'Mali', 'Malienne'),
(183, 'Ndiaye', 'Mamoutou ', 'M', '1992-06-05', 'Mali', 'Malienne'),
(184, 'Coulibaly', 'Kalifa', 'M', '1991-04-08', 'Mali', 'Malienne'),
(185, 'Marega', ' Moussa ', 'M', '1995-06-08', 'Mali', 'Malienne'),
(186, 'Sako', 'Bakary', 'M', '1991-04-08', 'Mali', 'Malienne'),
(187, 'Collins', 'Fai ', 'M', '1992-08-13', 'Caméroun', 'camérounaise'),
(188, 'Djeite', 'Mohamed ', 'M', '1994-08-18', 'Caméroun', 'camérounaise'),
(189, 'Mabouka', 'Ernest ', 'M', '1988-06-16', 'Caméroun', 'camérounaise'),
(190, 'Ngwem', ' Jonathan ', 'M', '1991-07-20', 'Caméroun', 'camérounaise'),
(191, 'Oyongo ', ' Ambroise ', 'M', '1991-06-22', 'Caméroun', 'camérounaise'),
(192, 'Boya', 'Frank ', 'M', '1996-07-10', 'Caméroun', 'camérounaise'),
(193, 'Djoum', 'Arnaud Sutchuin ', 'M', '1989-05-02', 'Caméroun', 'camérounaise'),
(194, ' Siani', 'Sébastien', 'M', '1986-12-21', 'Caméroun', 'camérounaise'),
(195, 'Mandjeck', 'Georges ', 'M', '1988-12-09', 'Caméroun', 'camérounaise'),
(196, 'Aboubakar', 'Vincent ', 'M', '1992-01-22', 'Caméroun', 'camérounaise'),
(197, 'Njie', 'Clinton ', 'M', '1993-08-15', 'Caméroun', 'camérounaise'),
(198, 'Moukandjo', 'Benjamin ', 'M', '1988-11-12', 'Caméroun', 'camérounaise'),
(199, 'Onyango', 'Denis ', 'M', '1985-05-15', 'Ouganda', 'Ougandais'),
(200, 'Jamal', 'Salim ', 'M', '1995-05-27', 'Ouganda', 'Ougandais'),
(201, 'Ochaya', 'Joseph ', 'M', '1994-05-02', 'Ouganda', 'Ougandais'),
(202, 'Iguma', 'Dennis ', 'M', '1992-11-10', 'Ouganda', 'Ougandais'),
(203, 'Isinde', 'Isaac ', 'M', '1991-04-16', 'Ouganda', 'Ougandais'),
(204, 'Juuko', 'Murushid ', 'M', '1994-04-14', 'Ouganda', 'Ougandais'),
(205, 'Wadada', 'Nicholas ', 'M', '1994-07-27', 'Ouganda', 'Ougandais'),
(206, 'Mawejje', 'Tony ', 'M', '1990-12-15', 'Ouganda', 'Ougandais'),
(207, 'Aucho', 'Khalid ', 'M', '1993-08-08', 'Ouganda', 'Ougandais'),
(208, 'Oloya', 'Moses ', 'M', '1992-10-22', 'Ouganda', 'Ougandais'),
(209, 'Cherifia', ' Moez Ben', 'M', '1991-06-24', 'Tunis', 'Tunisien'),
(210, 'Jeridi', 'Rami', 'M', '1985-05-25', 'Tunis', 'Tunisien'),
(211, 'Nagguez', 'Hamdi', 'M', '1992-10-26', 'Menzel Kamel', 'Tunisien'),
(212, ' Chamseddine Dhaouadi', ' Chamseddine ', 'M', '1987-01-16', 'Tunis', 'Tunisien'),
(213, 'Abdennour', ' Aymen', 'M', '1989-08-06', 'Sousse', 'Tunisien'),
(214, 'Kchok', 'Slimen', 'M', '1984-05-07', 'Bizerte', 'Tunisien'),
(215, 'Kizito', 'Geoffrey ', 'M', '1993-02-02', 'Ouganda', 'Ougandais'),
(216, 'Maaloul', 'Ali', 'M', '1990-01-01', 'Sfax', 'Tunisien'),
(217, 'Amor', 'Mohamed Amine Ben', 'M', '1992-05-03', 'Sousse', 'Tunisien'),
(218, 'Azira', 'Micheal ', 'M', '1987-08-22', 'Ouganda', 'Ougandais'),
(219, 'Lahmar', 'Hamza', 'M', '1990-05-28', 'Sousse', 'Tunisien'),
(220, 'Sassi', ' Ferjani', 'M', '1992-05-18', 'Ariana', 'Tunisien'),
(221, 'Massa', 'Geofrey ', 'M', '1986-02-19', 'Ouganda', 'Ougandais'),
(222, 'Shaban', 'Muhammad ', 'M', '1998-01-10', 'Ouganda', 'Ougandais'),
(223, 'Braimah ', 'Razak ', 'M', '1987-06-22', 'Ghana', 'ghanéenne'),
(224, 'Ofori', 'Richard ', 'M', '1993-11-01', 'Ghana', 'ghanéenne'),
(225, 'Afful', 'Harrison ', 'M', '1986-07-24', 'Ghana', 'ghanéenne'),
(226, 'Azouni', 'Larry', 'M', '1994-03-23', 'Marseile', 'Tunisien'),
(227, 'Khazri', 'Wahbi', 'M', '1991-02-08', 'Ajacio', 'Tunisien'),
(228, 'Akaichi ', 'Ahmed ', 'M', '1991-02-23', 'Bizerte', 'Tunisien'),
(229, 'Khalifa', 'Saber ', 'M', '1986-10-14', 'Gabbé', 'Tunisien'),
(230, 'Yiadom', 'Andy ', 'M', '1991-12-02', 'Ghana', 'ghanéenne'),
(231, 'Khalil', ' Ahmed', 'M', '1994-12-21', 'Kairouan', 'Tunisien'),
(232, 'Rahman', 'Baba ', 'M', '1994-07-02', 'Ghana', 'ghanéenne'),
(233, 'Acheampong', 'Frank ', 'M', '1993-10-16', 'Ghana', 'ghanéenne'),
(234, 'Boye', 'John ', 'M', '1987-04-23', 'Ghana', 'ghanéenne'),
(235, 'Bernard', 'Donovan ', 'M', '1995-07-12', 'Harare', 'Zimbabwéen'),
(236, ' Takabva Mawaya', ' TakabvaX', 'M', '1991-04-08', 'Harare', 'Zimbabwéen'),
(237, 'Mensah', ' Jonathan ', 'M', '1990-07-13', 'Ghana', 'ghanéenne'),
(238, 'Hadebe', 'Teenage ', 'M', '1995-09-17', 'Bulawayo', 'Zimbabwéen'),
(239, 'Mhlanga', 'Lawrence', 'M', '0000-00-00', 'Zimbabwé', 'Zimbabwéen'),
(240, 'Bhasera', ' Onismor ', 'M', '1986-01-07', 'Mutar', 'Zimbabwéen'),
(241, 'Partey', ' Thomas ', 'M', '1993-06-13', 'Ghana', 'ghanéenne'),
(242, 'Kangwa', 'Bruce', 'M', '1988-07-24', 'Zimbabwé', 'Zimbabwéen'),
(243, ' Kangwa', 'Bruce', 'M', '1986-07-27', 'Zimbabwé', 'Zimbabwéen'),
(244, 'Wakaso', 'Mubarak ', 'M', '1990-02-25', 'Ghana', 'ghanéenne'),
(245, 'Machapa', 'Oscar ', 'M', '1987-06-01', 'Zimbabwé', 'Zimbabwéen'),
(246, 'Mahachi', ' Kudakwashe ', 'M', '1991-04-08', 'Zimbabwé', 'Zimbabwéen'),
(247, 'Phiri ', ' Danny ', 'M', '1989-04-22', 'Zimbabwé', 'Zimbabwéen'),
(248, 'Billiat', ' Khama ', 'M', '1990-08-19', 'Harare', 'Zimbabwéen'),
(249, 'Tetteh', 'Samuel ', 'M', '1996-07-28', 'Ghana', 'ghanéenne'),
(250, 'Chawapiwa', ' Talent ', 'M', '1992-06-03', 'Zimbabwé', 'Zimbabwéen'),
(251, 'Chitiyo', 'Ronald ', 'M', '1992-06-10', 'Harare', 'Zimbabwéen'),
(252, 'Kadewere', ' Tinotenda ', 'M', '1996-01-05', 'Harare', 'Zimbabwéen'),
(253, 'Ofori', 'Ebenezer ', 'M', '1995-07-01', 'Ghana', 'ghanéenne'),
(254, 'Malajila', ' Cuthbert ', 'M', '1985-10-03', 'Eilfel Flats', 'Zimbabwéen'),
(255, 'Mushekwi', 'Nyasha ', 'M', '1987-08-21', 'Harare', 'Zimbabwéen'),
(256, 'Ayew', 'Jordan ', 'M', '1991-11-11', 'France', 'ghanéenne'),
(257, 'Kiassumbua', 'Joël ', 'M', '1992-04-06', 'Lucerne', 'RD Congo'),
(258, 'Kudimbana', ' Nicaise ', 'M', '1987-01-21', 'Bruxelle', 'RD Congo'),
(259, 'Gyan', 'Asamoah ', 'M', '1985-11-22', 'Ghana', 'ghanéenne'),
(260, 'Bope', 'Merveille ', 'M', '1992-03-21', 'Kinshasa', 'RD Congo'),
(261, ' Christian Luyindama', ' Christian', 'M', '1994-01-08', 'Kinshasa', 'RD Congo'),
(262, 'Ayew', ' André ', 'M', '1991-04-08', 'Ghana', 'ghanéenne'),
(263, 'Mpeko ', ' Issama ', 'M', '1989-04-30', 'Kinshasa', 'RD Congo'),
(264, ' Ikoko', ' Jordan', 'M', '1994-02-03', ' Montereau-Fault-Yonne', 'RD Congo'),
(265, 'Lomalisa', 'Joyce ', 'M', '1993-06-18', 'Redpuplique Democratique Congo', 'RD Congo'),
(266, 'Kage', 'Herve ', 'M', '1989-04-10', 'Kinshasa', 'RD Congo'),
(267, 'Kamavuaka', ' Wilson ', 'M', '1990-03-29', 'Duren', 'RD Congo'),
(268, 'Kebano', 'Neeskens ', 'M', '1991-04-08', 'Montereau-Fault-Yonne', 'RD Congo'),
(269, 'Gbohouo', ' Sylvain ', 'M', '1988-10-29', 'Côte d\'ivoire', 'Ivoirienne'),
(270, 'Maghoma', 'Jacques ', 'M', '1987-10-23', 'Lubumbashi', 'RD Congo'),
(271, 'Mpoku', ' Paul-José ', 'M', '1992-04-19', 'Kinshasa', 'RD Congo'),
(272, 'Sangaré', 'Badra Ali Sangaré', 'M', '1986-05-30', 'Côte d\'ivoire', 'Ivoirienne'),
(273, 'Bolingi ', 'Jonathan ', 'M', '1994-06-30', 'Kinshasa', 'RD Congo'),
(274, ' Elia', 'Meschack', 'M', '1996-08-06', 'Kinshasa', 'RD Congo'),
(275, 'Aurie', ' Serge ', 'M', '1992-12-24', 'Côte d\'ivoire', 'Ivoirienne'),
(276, ' Bakambu', ' Cédric', 'M', '1991-04-14', 'Vitry-sur-Seine', 'RD Congo'),
(277, 'Bagayoko', 'Mamadou ', 'M', '1979-05-21', 'Côte d\'ivoire', 'Ivoirienne'),
(278, 'Bailly', 'Eric Bertrand ', 'M', '1994-04-12', 'Côte d\'ivoire', 'Ivoirienne'),
(279, 'Deli', 'Simon ', 'M', '1991-10-27', 'Côte d\'ivoire', 'Ivoirienne'),
(280, 'Kanon', 'Wilfried ', 'M', '1993-07-06', 'Côte d\'ivoire', 'Ivoirienne'),
(281, 'Angban', 'Victorien ', 'M', '1996-11-29', 'Côte d\'ivoire', 'Ivoirienne'),
(282, 'Die', 'Serey ', 'M', '1984-11-07', 'Côte d\'ivoire', 'Ivoirienne'),
(283, 'Doukouré', 'Cheick ', 'M', '1992-11-11', 'Côte d\'ivoire', 'Ivoirienne'),
(284, 'Kessié ', 'Franck ', 'M', '1996-12-19', 'Côte d\'ivoire', 'Ivoirienne'),
(285, 'Seri', 'Jean Michaël ', 'M', '1991-07-19', 'Côte d\'ivoire', 'Ivoirienne'),
(286, 'Bony', 'Wilfried ', 'M', '1988-12-10', 'Côte d\'ivoire', 'Ivoirienne'),
(287, 'Gradel', 'Max-Alain ', 'M', '1987-11-30', 'Côte d\'ivoire', 'Ivoirienne'),
(288, 'Kalo', 'Salomon ', 'M', '1985-08-05', 'Côte d\'ivoire', 'Ivoirienne'),
(289, 'Miya', 'Farouk ', 'M', '1997-11-26', 'Ouganda', 'Ougandais'),
(290, 'Sentamu', 'Yunus ', 'M', '1994-08-13', 'Ouganda', 'Ougandais'),
(291, 'Ndoye', 'Adiouma', 'M', '1987-10-05', NULL, NULL),
(292, 'Lo', 'Samba', 'M', '1987-10-05', NULL, NULL),
(293, 'Cissé', 'Aliou', 'M', '1976-03-24', 'Ziguinchor', 'SENEGALAISE'),
(294, 'Giresse', 'Alain', 'M', '1952-08-02', 'Langoiran', 'Gironde'),
(295, 'Renard', 'Hervé', 'M', '1968-09-30', 'Aix-Les-bains', ''),
(296, 'Sredojevic', 'Milutin', 'M', '1987-10-05', NULL, NULL),
(297, 'Roy', 'Claude Le', 'M', '1987-10-05', NULL, NULL),
(298, 'Ibenge', 'Florent', 'M', '1987-10-05', NULL, NULL);

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
(14, 9, 'Phase finale'),
(15, 11, 'Phase de groupes'),
(16, 11, 'Phase finale'),
(17, 12, 'Phase de groupes'),
(18, 12, 'Phase finale');

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
(28, 13, 'Poule D'),
(29, 15, 'Poule A'),
(30, 15, 'Poule B'),
(31, 15, 'Poule C'),
(32, 15, 'Poule D'),
(33, 17, 'Poule A'),
(34, 17, 'Poule B'),
(35, 17, 'Poule C'),
(36, 17, 'Poule D');

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
(1, 1, 2, 1, 1, '2018-03-13 00:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
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
(194, 7, 2, 3, 13, '2018-03-18 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
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
(224, NULL, NULL, 1, 14, '2018-04-22 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(225, 42, 29, 1, 15, '2018-03-15 00:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(226, 42, 14, 1, 15, '2018-04-01 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(227, 42, 30, 1, 15, '2018-04-02 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(228, 29, 14, 1, 15, '2018-04-03 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(229, 29, 30, 1, 15, '2018-04-04 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(230, 14, 30, 1, 15, '2018-04-05 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(231, 37, 12, 1, 15, '2018-04-06 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(232, 37, 8, 1, 15, '2018-04-07 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(233, 37, 51, 1, 15, '2018-04-08 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(234, 12, 8, 1, 15, '2018-04-09 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(235, 12, 51, 1, 15, '2018-04-10 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(236, 8, 51, 1, 15, '2018-04-11 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
INSERT INTO `rencontres` (`idrencontres`, `rencontresIdEquipe1`, `rencontresIdEquipe2`, `stades_idstades`, `phases_idphases`, `rencontresDate`, `rencontresArbitre`, `rencontresEtat`, `lienYoutube`) VALUES
(237, 38, 21, 1, 15, '2018-04-12 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(238, 38, 17, 1, 15, '2018-04-13 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(239, 38, 19, 1, 15, '2018-04-14 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(240, 21, 17, 1, 15, '2018-04-15 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(241, 21, 19, 1, 15, '2018-04-16 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(242, 17, 19, 1, 15, '2018-04-17 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(243, 6, 52, 1, 15, '2018-04-18 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(244, 6, 11, 1, 15, '2018-04-19 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(245, 6, 54, 1, 15, '2018-04-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(246, 52, 11, 1, 15, '2018-04-21 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(247, 52, 54, 1, 15, '2018-04-22 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(248, 11, 54, 1, 15, '2018-04-23 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(249, NULL, NULL, 1, 16, '2018-04-24 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(250, NULL, NULL, 1, 16, '2018-04-25 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(251, NULL, NULL, 1, 16, '2018-04-26 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(252, NULL, NULL, 1, 16, '2018-04-27 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(253, NULL, NULL, 1, 16, '2018-05-01 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(254, NULL, NULL, 1, 16, '2018-05-02 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(255, NULL, NULL, 1, 16, '2018-05-03 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(256, NULL, NULL, 1, 16, '2018-05-04 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(257, 6, 12, 1, 17, '2018-03-28 03:50:00', 1, 1, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(258, 6, 38, 1, 17, '2018-04-01 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(259, 6, 8, 1, 17, '2018-04-02 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(260, 12, 38, 1, 17, '2018-04-03 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(261, 12, 8, 1, 17, '2018-04-04 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(262, 38, 8, 1, 17, '2018-04-05 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(263, 21, 17, 1, 17, '2018-04-06 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(264, 21, 37, 1, 17, '2018-04-07 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(265, 21, 51, 1, 17, '2018-04-08 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(266, 17, 37, 1, 17, '2018-04-09 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(267, 17, 51, 1, 17, '2018-04-10 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(268, 37, 51, 1, 17, '2018-04-11 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(269, 54, 19, 1, 17, '2018-04-12 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(270, 54, 42, 1, 17, '2018-04-13 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(271, 54, 30, 1, 17, '2018-04-14 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(272, 19, 42, 1, 17, '2018-04-15 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(273, 19, 30, 1, 17, '2018-04-16 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(274, 42, 30, 1, 17, '2018-04-17 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(275, 52, 29, 1, 17, '2018-04-18 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(276, 52, 14, 1, 17, '2018-04-19 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(277, 52, 20, 1, 17, '2018-04-20 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(278, 29, 14, 1, 17, '2018-04-21 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(279, 29, 20, 1, 17, '2018-04-22 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(280, 14, 20, 1, 17, '2018-04-23 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(281, NULL, NULL, 1, 18, '2018-04-24 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(282, NULL, NULL, 1, 18, '2018-04-25 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(283, NULL, NULL, 1, 18, '2018-04-26 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(284, NULL, NULL, 1, 18, '2018-04-27 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(285, NULL, NULL, 1, 18, '2018-05-01 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(286, NULL, NULL, 1, 18, '2018-05-02 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(287, NULL, NULL, 1, 18, '2018-05-03 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(288, NULL, NULL, 1, 18, '2018-05-04 12:00:00', 1, 0, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6FrPxOJ346M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');

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
  `stadesNbrPlaces` int(11) NOT NULL DEFAULT '15000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `stades`
--

INSERT INTO `stades` (`idstades`, `stadesName`, `stadesImgIlust`, `stadesAdresse`, `stadesDimensions`, `stadesNbrPlaces`) VALUES
(1, 'Le Grand Stade Agadir', 'stade-agadir-football.jpg', 'Agadir,Maroc', '1300x1500', 45480),
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
(1, 'CAN 2015', 'slide-22.jpg', '2018-03-09', '2018-04-22', 'La coupe d\'Afrique des nations de football 2015 est la 30e edition de la coupe d\'Afrique des nations de football. Elle se deroule du 17 janvier au 8 fevrier 2015, en Guinee equatoriale, apres le desistement du Maroc. L\'equipe du Nigeria de football, tenante du titre, n\'etant pas qualifiee, de nombreuses equipes pretendent a la victoire finale.', 4, NULL),
(2, 'CAN 2017', 'tournoisImgPub2018_03_14_01_00_44.jpg\r\n', '2019-03-13', NULL, 'La coupe d\'Afrique des nations de football 2017 est la 30e edition de la coupe d\'Afrique des nations de football. Elle se deroule du 17 janvier au 8 fevrier 2017, en Guinee equatoriale, apres le desistement du Maroc. L\'equipe du Nigeria de football, tenante du titre, n\'etant pas qualifiee, de nombreuses equipes pretendent a la victoire finale.', 1, NULL),
(9, 'CAN 2019', 'tournoisImgPub2018_03_13_23_50_46.jpg', '2018-03-18', '2018-04-22', 'La coupe d\'Afrique des nations de football 2019 est la 30e edition de la coupe d\'Afrique des nations de football. Elle se deroule du 17 janvier au 8 fevrier 2019, en Guinee equatoriale, apres le desistement du Maroc. L\'equipe du Nigeria de football, tenante du titre, n\'etant pas qualifiee, de nombreuses equipes pretendent a la victoire finale.', 4, 7),
(10, 'Test', 'tournoisImgPub2018_03_28_01_52_40.jpg', '2018-03-28', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, NULL),
(11, 'jjhfdfh', 'tournoisImgPub2018_03_28_02_00_59.jpg', '2018-03-15', '2018-05-04', 'Pub', 4, 42),
(12, 'Testt', 'tournoisImgPub2018_03_28_03_54_28.jpg', '2018-03-28', '2018-05-04', 'Un tournoi', 4, 6);

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
(11, 17, 3),
(12, 17, 3),
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
(11, 6, 6),
(12, 6, 6),
(8, 46, 7),
(11, 19, 7),
(12, 19, 7),
(8, 47, 8),
(12, 20, 8),
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
(11, 21, 12),
(12, 21, 12),
(1, 7, 13),
(3, 7, 13),
(4, 7, 13),
(6, 7, 13),
(7, 7, 13),
(9, 7, 13),
(8, 54, 14),
(9, 54, 14),
(11, 54, 14),
(12, 54, 14),
(1, 8, 15),
(3, 8, 15),
(4, 8, 15),
(6, 8, 15),
(7, 8, 15),
(9, 8, 15),
(11, 8, 15),
(12, 8, 15),
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
(11, 11, 17),
(1, 12, 18),
(3, 12, 18),
(4, 12, 18),
(6, 12, 18),
(7, 12, 18),
(9, 12, 18),
(11, 12, 18),
(12, 12, 18),
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
(11, 14, 20),
(12, 14, 20),
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
(8, 52, 25),
(11, 52, 25),
(12, 52, 25),
(11, 42, 26),
(12, 42, 26),
(11, 29, 28),
(12, 29, 28),
(11, 30, 30),
(12, 30, 30),
(11, 37, 31),
(12, 37, 31),
(11, 51, 33),
(12, 51, 33),
(11, 38, 35),
(12, 38, 35);

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
(27, NULL, 'arbitre1', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'reportairesEvenementsArbitre', 1, 291, '2018-03-18 16:51:10', NULL),
(28, NULL, 'arbitre2', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'reportairesEvenementsArbitre', 1, 292, '2018-03-18 16:51:10', NULL),
(29, NULL, 'senegal', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', 1, 293, '2018-03-28 02:20:57', NULL),
(30, NULL, 'mali', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', 1, 294, '2018-03-28 02:20:57', NULL),
(31, NULL, 'maroc', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', 1, 295, '2018-03-28 02:32:02', NULL),
(32, NULL, 'ouganda', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', 1, 296, '2018-03-28 02:32:02', NULL),
(33, NULL, 'togo', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', 1, 297, '2018-03-28 02:41:20', NULL),
(34, NULL, 'rd_congo', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'entraineurs', 1, 298, '2018-03-28 02:44:14', NULL);

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
  MODIFY `identraineurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
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
  MODIFY `idjoueurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;
--
-- AUTO_INCREMENT pour la table `personnes`
--
ALTER TABLE `personnes`
  MODIFY `idpersonnes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;
--
-- AUTO_INCREMENT pour la table `phases`
--
ALTER TABLE `phases`
  MODIFY `idphases` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `poules`
--
ALTER TABLE `poules`
  MODIFY `idpoules` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `rencontres`
--
ALTER TABLE `rencontres`
  MODIFY `idrencontres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;
--
-- AUTO_INCREMENT pour la table `stades`
--
ALTER TABLE `stades`
  MODIFY `idstades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `tournois`
--
ALTER TABLE `tournois`
  MODIFY `idtournois` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `idutilisateurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
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
