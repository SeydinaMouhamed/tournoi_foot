-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 06 Mars 2018 à 22:48
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
  `utilisateurs_idutilisateurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `arbitres_rencontres`
--

CREATE TABLE `arbitres_rencontres` (
  `arbitres_idarbitres` int(11) NOT NULL,
  `rencontres_idrencontres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `entraineurs`
--

CREATE TABLE `entraineurs` (
  `identraineurs` int(11) NOT NULL,
  `utilisateurs_idutilisateurs` int(11) NOT NULL,
  `entraineursLicence` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `idequipes` int(11) NOT NULL,
  `nomEquipe` varchar(45) DEFAULT NULL,
  `entraineurs_identraineurs` int(11) NOT NULL,
  `equipesDrapeau` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evenements`
--

CREATE TABLE `evenements` (
  `idevenementsEnt` int(11) NOT NULL,
  `evenementsType` enum('remplacement','corner','touche','debutPMisTemps','finPMisTemps','debutSMisTemps','finSMisTemps','debutProlP1','finProlP1','debutProlP2','finProlP2','tireaubut','finMatch','cartonR','cartonJ','but','faute','possession','tirecadre','tirepoto','tirebarre','passe','passeDecisif') DEFAULT NULL,
  `evenementsHeur` time DEFAULT NULL,
  `evenementsSource` varchar(45) DEFAULT NULL COMMENT 'nom table utilisateur qui a signale levement',
  `evenementsSourceId` int(11) DEFAULT NULL,
  `rencontres_idrencontres` int(11) NOT NULL,
  `evenementsDestination` varchar(45) DEFAULT NULL COMMENT 'Table du concerne',
  `evenementsDestinationId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `personnesSexe` enum('M','F') DEFAULT NULL,
  `personnesDDN` date DEFAULT NULL,
  `personnesLDN` varchar(125) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personnes`
--

INSERT INTO `personnes` (`idpersonnes`, `personnesNom`, `personnesPrenom`, `personnesSexe`, `personnesDDN`, `personnesLDN`) VALUES
(1, 'Toto', 'Tete', 'M', '2018-03-06', 'Test');

-- --------------------------------------------------------

--
-- Structure de la table `phases`
--

CREATE TABLE `phases` (
  `idphases` int(11) NOT NULL,
  `tournois_idtournois` int(11) NOT NULL,
  `phasesName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `poules`
--

CREATE TABLE `poules` (
  `idpoules` int(11) NOT NULL,
  `phases_idphases` int(11) NOT NULL,
  `poulesName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `stades_idstades` int(11) NOT NULL,
  `phases_idphases` int(11) NOT NULL,
  `rencontresDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reportaires`
--

CREATE TABLE `reportaires` (
  `idreportaires` int(11) NOT NULL,
  `utilisateurs_idutilisateurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stades`
--

CREATE TABLE `stades` (
  `idstades` int(11) NOT NULL,
  `stadesName` varchar(100) DEFAULT NULL,
  `stadesImgIlust` text,
  `stadesAdresse` varchar(255) DEFAULT NULL,
  `stadesDimensions` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tournois`
--

CREATE TABLE `tournois` (
  `idtournois` int(11) NOT NULL,
  `tournoisName` varchar(45) DEFAULT NULL,
  `tournoisImgPub` text,
  `tournoisDebut` date DEFAULT NULL,
  `tournoisDateFin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `idutilisateurs` int(11) NOT NULL,
  `utilisateursPseudo` varchar(255) DEFAULT NULL,
  `utilisateursPassword` text,
  `utilisateursTypeDeCompte` varchar(100) DEFAULT NULL,
  `utilisateursEtat` tinyint(1) DEFAULT NULL,
  `personnes_idpersonnes` int(11) NOT NULL,
  `utilisateursDateEnregistrement` timestamp NULL DEFAULT NULL,
  `utilisateursPhoto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `arbitres`
--
ALTER TABLE `arbitres`
  ADD PRIMARY KEY (`idarbitres`),
  ADD UNIQUE KEY `arbitresLicence_UNIQUE` (`arbitresLicence`),
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
  ADD KEY `fk_entraineurs_utilisateurs1_idx` (`utilisateurs_idutilisateurs`);

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`idequipes`),
  ADD UNIQUE KEY `nomEquipe_UNIQUE` (`nomEquipe`),
  ADD KEY `fk_equipes_entraineurs1_idx` (`entraineurs_identraineurs`);

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
  ADD KEY `fk_phases_tournois1_idx` (`tournois_idtournois`);

--
-- Index pour la table `poules`
--
ALTER TABLE `poules`
  ADD PRIMARY KEY (`idpoules`),
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
  ADD KEY `phases_idphases` (`phases_idphases`);

--
-- Index pour la table `reportaires`
--
ALTER TABLE `reportaires`
  ADD PRIMARY KEY (`idreportaires`),
  ADD KEY `fk_reportaires_utilisateurs1_idx` (`utilisateurs_idutilisateurs`);

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
  ADD PRIMARY KEY (`idtournois`);

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
  MODIFY `idarbitres` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `entraineurs`
--
ALTER TABLE `entraineurs`
  MODIFY `identraineurs` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `idequipes` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `idpersonnes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `phases`
--
ALTER TABLE `phases`
  MODIFY `idphases` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `poules`
--
ALTER TABLE `poules`
  MODIFY `idpoules` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rencontres`
--
ALTER TABLE `rencontres`
  MODIFY `idrencontres` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reportaires`
--
ALTER TABLE `reportaires`
  MODIFY `idreportaires` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `stades`
--
ALTER TABLE `stades`
  MODIFY `idstades` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tournois`
--
ALTER TABLE `tournois`
  MODIFY `idtournois` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `idutilisateurs` int(11) NOT NULL AUTO_INCREMENT;
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
  ADD CONSTRAINT `fk_entraineurs_utilisateurs1` FOREIGN KEY (`utilisateurs_idutilisateurs`) REFERENCES `utilisateurs` (`idutilisateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD CONSTRAINT `fk_equipes_entraineurs1` FOREIGN KEY (`entraineurs_identraineurs`) REFERENCES `entraineurs` (`identraineurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `rencontres_ibfk_4` FOREIGN KEY (`phases_idphases`) REFERENCES `phases` (`idphases`);

--
-- Contraintes pour la table `reportaires`
--
ALTER TABLE `reportaires`
  ADD CONSTRAINT `fk_reportaires_utilisateurs1` FOREIGN KEY (`utilisateurs_idutilisateurs`) REFERENCES `utilisateurs` (`idutilisateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `fk_utilisateurs_personnes1` FOREIGN KEY (`personnes_idpersonnes`) REFERENCES `personnes` (`idpersonnes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
