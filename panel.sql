-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Lun 02 Mars 2015 à 11:27
-- Version du serveur :  5.5.41-0ubuntu0.14.04.1
-- Version de PHP :  5.5.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `panel`
--

-- --------------------------------------------------------

--
-- Structure de la table `base_connaissance`
--

CREATE TABLE IF NOT EXISTS `base_connaissance` (
`idbaseconnaissance` int(13) NOT NULL,
  `categorie_connaissance` int(2) NOT NULL,
  `type_connaissance` int(1) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `keyword1` varchar(255) NOT NULL,
  `keyword2` varchar(255) NOT NULL,
  `keyword3` varchar(255) NOT NULL,
  `keyword4` varchar(255) NOT NULL,
  `date_connaissance` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `base_connaissance`
--

INSERT INTO `base_connaissance` (`idbaseconnaissance`, `categorie_connaissance`, `type_connaissance`, `titre`, `keyword1`, `keyword2`, `keyword3`, `keyword4`, `date_connaissance`) VALUES
(1, 1, 1, 'Comment rentrer un nouveau Salari&eacute; ?', 'salarie', 'i', '', '', '16-01-2014');

-- --------------------------------------------------------

--
-- Structure de la table `billet_support`
--

CREATE TABLE IF NOT EXISTS `billet_support` (
`idbilletsupport` int(13) NOT NULL,
  `num_billet` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `date_billet` varchar(255) NOT NULL,
  `idcomite` int(13) NOT NULL,
  `severite` int(1) NOT NULL,
  `categorie` int(2) NOT NULL,
  `desc_billet` longtext NOT NULL,
  `assignation` int(13) NOT NULL,
  `solution` longtext NOT NULL,
  `etat_billet` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `billet_support`
--

INSERT INTO `billet_support` (`idbilletsupport`, `num_billet`, `titre`, `date_billet`, `idcomite`, `severite`, `categorie`, `desc_billet`, `assignation`, `solution`, `etat_billet`) VALUES
(17, 'EU15-800FR622781', 'Autre probl&egrave;me de gestion', '20-01-2015', 15, 1, 1, 'Impossible de me connecter &agrave; mon espace Comit&eacute; ', 1, 'Bonjour,&lt;br&gt;&lt;br&gt;Nous sommes actuellement sur une maintenance des syst&egrave;mes ICEGEST-CLASSIC.&lt;br&gt;Nous nous excusons de la g&egrave;ne occasionn&eacute;e.&lt;br&gt;&lt;br&gt;Cordialement,&lt;br&gt;&lt;br&gt;&lt;img src=&quot;http://panel.icegest.com/assets/images/logo@2x.png&quot; alt=&quot;&quot; height=&quot;31&quot; width=&quot;130&quot;&gt;&lt;br&gt;&lt;b&gt;Mockelyn Maxime&lt;/b&gt;&lt;br&gt;&lt;i&gt;Superviseur Technique du Logiciel ICEGEST&lt;/i&gt;&lt;br&gt;', 4),
(18, 'EU17-616FR277989', 'J''ai un Probl&egrave;me avec la gestion des salari&eacute;s et les ayants Droits', '20-01-2015', 17, 1, 2, 'Je n''arrive pas &agrave; cr&eacute;er un salari&eacute;e.', 1, 'Bonjour,&lt;br&gt;&lt;br&gt;Avant toutes choses veuillez vous renseigner avec notre base de connaissance disponible &agrave; l''adresse:&lt;br&gt;&lt;a rel=&quot;&quot; target=&quot;_self&quot; href=&quot;http://dealcare.icegest.com/module/support/base/icegest-classic/view.php?idbaseconnaissance=1&quot;&gt;http://dealcare.icegest.com/module/support/base/icegest-classic/view.php?idbaseconnaissance=1&lt;/a&gt; &lt;br&gt;&lt;br&gt;Si votre probl&egrave;me n''est toujours pas r&eacute;gl&eacute;e veuillez nous indiquer avec pr&eacute;cision vos difficult&eacute;s.&lt;br&gt;&lt;br&gt;Cordialement,&lt;br&gt;&lt;br&gt;&lt;img src=&quot;http://panel.icegest.com/assets/images/logo@2x.png&quot; alt=&quot;&quot; height=&quot;27&quot; width=&quot;113&quot;&gt;&lt;br&gt;&lt;b&gt;MOCKELYN Maxime&lt;/b&gt;&lt;br&gt;&lt;i&gt;Superviseur technique du logiciel ICEGEST&lt;/i&gt;&lt;br&gt;', 3),
(19, 'EU19-489FR564337', 'J''ai un probl&egrave;me avec les bilans', '23-01-2015', 19, 1, 2, 'hgghghghghgghghgghhghghghghghghghghghg', 1, 'Bonjour,&lt;br&gt;&lt;br&gt;bla bla bla&lt;br&gt;&lt;br&gt;Cordialement,&lt;br&gt;MM&lt;br&gt;', 3),
(20, 'EU20-460FR535693', 'J''ai un Probl&egrave;me avec la gestion des salari&eacute;s et les ayants Droits', '05-02-2015', 20, 1, 1, 'vvvvvvv', 1, 'Bonjour,&lt;br&gt;&lt;br&gt;fhsdjkhfkjdshfkj&lt;br&gt;&lt;br&gt;Cordialement,&lt;br&gt;&lt;br&gt;Le Support technique d''ICEGEST&lt;br&gt;', 3),
(21, 'EU21-221FR439014', 'J''ai un Probl&egrave;me avec la gestion des salari&eacute;s et les ayants Droits', '06-02-2015', 21, 1, 2, 'ZONE LIBRE DE COMMENTAIRE SUR LE PROBLEME RENCONTRE ', 1, 'Bonjour,&lt;br&gt;&lt;br&gt;VOICI UNE REPONSE DE LA PART DU SUPPORT TECHNIQUE.&lt;br&gt;&lt;br&gt;Cordialement,&lt;br&gt;&lt;br&gt;Support Technique ICEGEST&lt;br&gt;', 3);

-- --------------------------------------------------------

--
-- Structure de la table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
`idblog` int(13) NOT NULL,
  `cat_blog` int(2) NOT NULL,
  `titre_blog` varchar(255) NOT NULL,
  `desc_short_blog` varchar(255) NOT NULL,
  `desc_blog` longtext NOT NULL,
  `iduser` int(13) NOT NULL,
  `date_blog` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `blog`
--

INSERT INTO `blog` (`idblog`, `cat_blog`, `titre_blog`, `desc_short_blog`, `desc_blog`, `iduser`, `date_blog`) VALUES
(1, 1, 'ICEGEST PREMIUM 1.4.4', '&lt;p&gt;Le syst&amp;egrave;me &amp;agrave; &amp;eacute;t&amp;eacute; mis &amp;agrave; jour.&lt;/p&gt;\r\n', '&lt;p&gt;&lt;strong&gt;NOTE DE MISE A JOUR DE LA PLATEFORME PREMIUM&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Version: 1.4.4&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Application de la fonction de Hors quota dans les ventes&lt;/li&gt;\r\n	&lt;li&gt;METRONIC CORE V4.6.8&lt;/li&gt;\r\n	&lt;li&gt;Ajout du solde sur les fiches de ventes&lt;/li&gt;\r\n	&lt;li&gt;Vente Billetterie\r\n	&lt;ul&gt;\r\n		&lt;li&gt;Ajout de la fonction de suppression d&amp;#39;une prestation&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;Correction de bug mineur&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 1, '10-02-2015'),
(2, 1, 'MISE A JOUR ICEGEST', '&lt;p&gt;NOTE DE MISE A JOUR ICEGEST&lt;/p&gt;\r\n\r\n&lt;p&gt;LE 20/02/2015 &amp;agrave; 19:30 une mise &amp;agrave; jour des cat&amp;eacute;gories CLASSIC et PREMIUM va avoir lieu, voici la note de mise &amp;agrave; jour.&lt;/p&gt;\r\n', '&lt;h1&gt;&lt;strong&gt;NOTE DE MISE A JOUR ICEGEST&lt;/strong&gt;&lt;/h1&gt;\r\n\r\n&lt;h3 style=&quot;color:#aaa;font-style:italic;&quot;&gt;&lt;strong&gt;Cette mise &amp;agrave; jour aura lieu Vendredi 20 F&amp;eacute;vrier &amp;agrave; 19:30.&lt;/strong&gt;&lt;/h3&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;&lt;strong&gt;LOGICIEL:&lt;/strong&gt; &lt;cite&gt;ICEGEST-CLASSIC&lt;/cite&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;VERSION:&lt;/strong&gt; &lt;cite&gt;1.1.2:20215&lt;/cite&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;em&gt;&lt;strong&gt;GESTION&lt;/strong&gt;â€‹&lt;/em&gt;\r\n\r\n	&lt;ul&gt;\r\n		&lt;li&gt;&lt;em&gt;â€‹REMISE EN BANQUE&lt;/em&gt;\r\n\r\n		&lt;ul&gt;\r\n			&lt;li&gt;&lt;em&gt;â€‹â€‹&lt;/em&gt;Correction libell&amp;eacute; du bouton &amp;quot;Ajout un r&amp;egrave;glement&amp;quot; --&amp;gt; &amp;quot;Ajouter des Esp&amp;egrave;ces&amp;quot;&lt;/li&gt;\r\n			&lt;li&gt;Il est d&amp;eacute;sormais possible d&amp;#39;imprimer les remises en banque&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n		&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;em&gt;&lt;strong&gt;COMPTABILIT&amp;Eacute;&lt;/strong&gt;&lt;/em&gt;\r\n\r\n	&lt;ul&gt;\r\n		&lt;li&gt;â€‹â€‹Correction de l&amp;#39;ordre d&amp;#39;affichage dans les journaux&lt;/li&gt;\r\n		&lt;li&gt;Correction de la suppression de mouvement&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;&lt;strong&gt;LOGICIEL&lt;/strong&gt;: &lt;cite&gt;ICEGEST-PREMIUM&lt;/cite&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;â€‹VERSION&lt;/strong&gt;: &lt;cite&gt;1.4.5:20215&lt;/cite&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;em&gt;&lt;strong&gt;GESTION&lt;/strong&gt;â€‹&lt;/em&gt;\r\n\r\n	&lt;ul&gt;\r\n		&lt;li&gt;&lt;em&gt;â€‹REMISE EN BANQUE&lt;/em&gt;\r\n\r\n		&lt;ul&gt;\r\n			&lt;li&gt;&lt;em&gt;â€‹â€‹&lt;/em&gt;Correction libell&amp;eacute; du bouton &amp;quot;Ajout un r&amp;egrave;glement&amp;quot; --&amp;gt; &amp;quot;Ajouter des Esp&amp;egrave;ces&amp;quot;&lt;/li&gt;\r\n			&lt;li&gt;Il est d&amp;eacute;sormais possible d&amp;#39;imprim&amp;eacute; les remises en banque&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n		&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;em&gt;&lt;strong&gt;COMPTABILITE&lt;/strong&gt;&lt;/em&gt;\r\n\r\n	&lt;ul&gt;\r\n		&lt;li&gt;â€‹â€‹Correction de l&amp;#39;ordre d&amp;#39;affichage dans les journaux&lt;/li&gt;\r\n		&lt;li&gt;Correction de la suppression de mouvement&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;&lt;strong&gt;LOGICIEL&lt;/strong&gt;: &lt;cite&gt;ICEGEST-ULTIMATE&lt;/cite&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;â€‹VERSION&lt;/strong&gt;: &lt;cite&gt;1.0.0&lt;/cite&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;AJOUT DE LA CATEGORIE &lt;strong&gt;ULTIMATE&lt;/strong&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 1, '20-02-2015');

-- --------------------------------------------------------

--
-- Structure de la table `comite`
--

CREATE TABLE IF NOT EXISTS `comite` (
`idcomite` int(13) NOT NULL,
  `nom_comite` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `cp` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `comite`
--

INSERT INTO `comite` (`idcomite`, `nom_comite`, `adresse`, `cp`, `ville`, `telephone`, `fax`, `email`) VALUES
(22, 'SLTS', '', '', 'SAINT LAMBERT LA POTERIE', '0241775860', '', 'e.fresneau@slts-sa.com');

-- --------------------------------------------------------

--
-- Structure de la table `contact_comite`
--

CREATE TABLE IF NOT EXISTS `contact_comite` (
`idcontactcomite` int(13) NOT NULL,
  `idcomite` int(13) NOT NULL,
  `nom_contact` varchar(255) NOT NULL,
  `prenom_contact` varchar(255) NOT NULL,
  `tel_contact` varchar(255) NOT NULL,
  `port_contact` varchar(255) NOT NULL,
  `email_contact` varchar(255) NOT NULL,
  `skype_contact` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `contact_comite`
--

INSERT INTO `contact_comite` (`idcontactcomite`, `idcomite`, `nom_contact`, `prenom_contact`, `tel_contact`, `port_contact`, `email_contact`, `skype_contact`) VALUES
(1, 22, 'FRESNEAU', 'eric', '0241775860', '', 'e.fresneau@slts-sa.com', '');

-- --------------------------------------------------------

--
-- Structure de la table `desc_base_connaissance`
--

CREATE TABLE IF NOT EXISTS `desc_base_connaissance` (
`iddescbase` int(13) NOT NULL,
  `idbaseconnaissance` int(13) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `desc_base_connaissance`
--

INSERT INTO `desc_base_connaissance` (`iddescbase`, `idbaseconnaissance`, `description`) VALUES
(1, 1, 'Ceci est un test de deploiement.');

-- --------------------------------------------------------

--
-- Structure de la table `info_logiciel`
--

CREATE TABLE IF NOT EXISTS `info_logiciel` (
`idinfologiciel` int(13) NOT NULL,
  `idcomite` int(13) NOT NULL,
  `type_logiciel` int(1) NOT NULL,
  `pack_assistance` int(1) NOT NULL,
  `sous_domaine` varchar(255) NOT NULL,
  `date_fin_assistance` varchar(255) NOT NULL,
  `maintenance` int(1) NOT NULL,
  `base_serveur` varchar(255) NOT NULL,
  `base_user` varchar(255) NOT NULL,
  `base_pass` varchar(255) NOT NULL,
  `base_bdd` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `info_logiciel`
--

INSERT INTO `info_logiciel` (`idinfologiciel`, `idcomite`, `type_logiciel`, `pack_assistance`, `sous_domaine`, `date_fin_assistance`, `maintenance`, `base_serveur`, `base_user`, `base_pass`, `base_bdd`) VALUES
(17, 22, 2, 0, 'ce-slts49', '', 0, 'localhost', 'ceslts49', 'azerty1', 'ceslts49');

-- --------------------------------------------------------

--
-- Structure de la table `login_comite`
--

CREATE TABLE IF NOT EXISTS `login_comite` (
`idlogincomite` int(13) NOT NULL,
  `idcomite` int(13) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `date_update_login` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `login_comite`
--

INSERT INTO `login_comite` (`idlogincomite`, `idcomite`, `login`, `pass`, `date_update_login`) VALUES
(21, 22, 'efresneau', 'a888b0dac52b85df65310f64e80e2864', '10-02-2015');

-- --------------------------------------------------------

--
-- Structure de la table `log_systeme`
--

CREATE TABLE IF NOT EXISTS `log_systeme` (
`idlogsysteme` int(13) NOT NULL,
  `idcomite` int(13) NOT NULL,
  `desc_log` longtext NOT NULL,
  `date_log` varchar(255) NOT NULL,
  `heure_log` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Contenu de la table `log_systeme`
--

INSERT INTO `log_systeme` (`idlogsysteme`, `idcomite`, `desc_log`, `date_log`, `heure_log`) VALUES
(2, 0, 'Modification de vos informations', '', ''),
(3, 8, 'Modification de vos informations', '', ''),
(4, 8, 'Modification de vos informations', '', ''),
(5, 16, 'Modification de vos informations', '13-01-2015', '08:0'),
(6, 16, 'Modification de vos informations', '13-01-2015', '08:0'),
(7, 15, 'Modification de vos informations', '13-01-2015', '20:39'),
(8, 16, 'CrÃ©ation du billet de support EU16-236FR100000', '15-01-2015', '14:42'),
(9, 0, 'Cloture du billet de support EU16-236FR100000', '15-01-2015', '17:39'),
(10, 16, 'CrÃ©ation du billet de support EU16-238FR841197', '15-01-2015', '19:32'),
(11, 16, 'CrÃ©ation du billet de support EU16-747FR204949', '16-01-2015', '12:58'),
(12, 16, 'CrÃ©ation du billet de support EU16-402FR909619', '16-01-2015', '13:00'),
(13, 16, 'CrÃ©ation du billet de support EU16-706FR631488', '16-01-2015', '13:00'),
(14, 16, 'CrÃ©ation du billet de support EU16-881FR248584', '16-01-2015', '13:01'),
(15, 15, 'CrÃ©ation du billet de support EU15-589FR371906', '20-01-2015', '13:50'),
(16, 15, 'CrÃ©ation du billet de support EU15-800FR622781', '20-01-2015', '17:42'),
(17, 16, 'Suppression du comitÃ© <strong>ComitÃ© de Test</strong>.', '20-01-2015', '19:42'),
(18, 15, 'Suppression du comitÃ© <strong>Clinique Saint LÃ©onard</strong>.', '20-01-2015', '19:42'),
(19, 17, 'CrÃ©ation des identifiants de connexion pour le comitÃ© <strong></strong>.', '20-01-2015', '19:44'),
(20, 17, 'Demande de paramÃ©trage logiciel pour le comitÃ© <strong>ComitÃ© de Test</strong>.', '20-01-2015', '19:44'),
(21, 17, 'Ajout du contact <strong>MOCKELYN Maxime</strong> pour le comitÃ© <strong>ComitÃ© de Test</strong>.', '20-01-2015', '19:44'),
(22, 17, 'CrÃ©ation du billet de support EU17-616FR277989', '20-01-2015', '20:01'),
(23, 17, 'Suppression du comitÃ© <strong>ComitÃ© de Test</strong>.', '22-01-2015', '12:34'),
(24, 18, 'CrÃ©ation des identifiants de connexion pour le comitÃ© <strong></strong>.', '22-01-2015', '12:36'),
(25, 18, 'Demande de paramÃ©trage logiciel pour le comitÃ© <strong>ComitÃ© de Test</strong>.', '22-01-2015', '12:37'),
(26, 18, 'Suppression du comitÃ© <strong>ComitÃ© de Test</strong>.', '23-01-2015', '15:50'),
(27, 19, 'Demande de paramÃ©trage logiciel pour le comitÃ© <strong>CE-CDTGESTION</strong>.', '23-01-2015', '15:54'),
(28, 19, 'CrÃ©ation des identifiants de connexion pour le comitÃ© <strong></strong>.', '23-01-2015', '16:13'),
(29, 19, 'CrÃ©ation du billet de support EU19-489FR564337', '23-01-2015', '16:20'),
(30, 19, 'Suppression du comitÃ© <strong>CE-CDTGESTION</strong>.', '05-02-2015', '18:35'),
(31, 20, 'Demande de paramÃ©trage logiciel pour le comitÃ© <strong>ce-cdtgestion</strong>.', '05-02-2015', '18:58'),
(32, 20, 'CrÃ©ation des identifiants de connexion pour le comitÃ© <strong></strong>.', '05-02-2015', '19:11'),
(33, 20, 'CrÃ©ation du billet de support EU20-460FR535693', '05-02-2015', '19:27'),
(34, 20, 'Suppression du comitÃ© <strong>ce-cdtgestion</strong>.', '05-02-2015', '19:39'),
(35, 21, 'Demande de paramÃ©trage logiciel pour le comitÃ© <strong>CE-PORTABILITECDT</strong>.', '06-02-2015', '10:16'),
(36, 21, 'CrÃ©ation des identifiants de connexion pour le comitÃ© <strong></strong>.', '06-02-2015', '10:18'),
(37, 21, 'CrÃ©ation des identifiants de connexion pour le comitÃ© <strong></strong>.', '06-02-2015', '10:21'),
(38, 21, 'CrÃ©ation du billet de support EU21-221FR439014', '06-02-2015', '10:33'),
(39, 22, 'Demande de paramÃ©trage logiciel pour le comitÃ© <strong>SLTS</strong>.', '10-02-2015', '09:59'),
(40, 22, 'Ajout du contact <strong>FRESNEAU eric</strong> pour le comitÃ© <strong>SLTS</strong>.', '10-02-2015', '10:00'),
(41, 22, 'CrÃ©ation des identifiants de connexion pour le comitÃ© <strong></strong>.', '10-02-2015', '10:01'),
(42, 21, 'Suppression du comitÃ© <strong>CE-PORTABILITECDT</strong>.', '10-02-2015', '10:03');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
`iduser` int(13) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass_md5` varchar(255) NOT NULL,
  `nom_user` varchar(255) NOT NULL,
  `prenom_user` varchar(255) NOT NULL,
  `groupe` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`iduser`, `login`, `pass_md5`, `nom_user`, `prenom_user`, `groupe`) VALUES
(1, 'mmockelyn', '25f9e794323b453885f5181f1b624d0b', 'Mockelyn', 'Maxime', 1),
(2, 'dthomas', '25f9e794323b453885f5181f1b624d0b', 'Thomas', 'Dominique', 2);

-- --------------------------------------------------------

--
-- Structure de la table `messagerie`
--

CREATE TABLE IF NOT EXISTS `messagerie` (
`idmessage` int(13) NOT NULL,
  `expediteur` int(13) NOT NULL,
  `destinataire` int(13) NOT NULL,
  `objet` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `etat_message` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `messagerie`
--

INSERT INTO `messagerie` (`idmessage`, `expediteur`, `destinataire`, `objet`, `message`, `etat_message`) VALUES
(5, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>Easytech</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0),
(6, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>Easytech</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0),
(7, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>Easytech</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0),
(8, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>Easytech</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0),
(9, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>Easytech</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0),
(10, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>Easytech</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0),
(11, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>Easytech</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0),
(12, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>Clinique Saint Laurent</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0),
(13, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>Easytech Center</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0),
(14, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>rexam</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0),
(15, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>csl</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0),
(16, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>rexam</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0),
(17, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>Clinique Saint LÃ©onard</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0),
(18, 0, 0, 'CrÃ©ation de comitÃ©', '\r\n	Le comitÃ© <strong>ComitÃ© de Test</strong> Ã  Ã©tÃ© crÃ©er par <strong>Mockelyn Maxime</strong>.\r\n	', 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `base_connaissance`
--
ALTER TABLE `base_connaissance`
 ADD PRIMARY KEY (`idbaseconnaissance`);

--
-- Index pour la table `billet_support`
--
ALTER TABLE `billet_support`
 ADD PRIMARY KEY (`idbilletsupport`);

--
-- Index pour la table `blog`
--
ALTER TABLE `blog`
 ADD PRIMARY KEY (`idblog`);

--
-- Index pour la table `comite`
--
ALTER TABLE `comite`
 ADD PRIMARY KEY (`idcomite`);

--
-- Index pour la table `contact_comite`
--
ALTER TABLE `contact_comite`
 ADD PRIMARY KEY (`idcontactcomite`);

--
-- Index pour la table `desc_base_connaissance`
--
ALTER TABLE `desc_base_connaissance`
 ADD PRIMARY KEY (`iddescbase`);

--
-- Index pour la table `info_logiciel`
--
ALTER TABLE `info_logiciel`
 ADD PRIMARY KEY (`idinfologiciel`);

--
-- Index pour la table `login_comite`
--
ALTER TABLE `login_comite`
 ADD PRIMARY KEY (`idlogincomite`);

--
-- Index pour la table `log_systeme`
--
ALTER TABLE `log_systeme`
 ADD PRIMARY KEY (`idlogsysteme`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
 ADD PRIMARY KEY (`iduser`);

--
-- Index pour la table `messagerie`
--
ALTER TABLE `messagerie`
 ADD PRIMARY KEY (`idmessage`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `base_connaissance`
--
ALTER TABLE `base_connaissance`
MODIFY `idbaseconnaissance` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `billet_support`
--
ALTER TABLE `billet_support`
MODIFY `idbilletsupport` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `blog`
--
ALTER TABLE `blog`
MODIFY `idblog` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `comite`
--
ALTER TABLE `comite`
MODIFY `idcomite` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `contact_comite`
--
ALTER TABLE `contact_comite`
MODIFY `idcontactcomite` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `desc_base_connaissance`
--
ALTER TABLE `desc_base_connaissance`
MODIFY `iddescbase` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `info_logiciel`
--
ALTER TABLE `info_logiciel`
MODIFY `idinfologiciel` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `login_comite`
--
ALTER TABLE `login_comite`
MODIFY `idlogincomite` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `log_systeme`
--
ALTER TABLE `log_systeme`
MODIFY `idlogsysteme` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `messagerie`
--
ALTER TABLE `messagerie`
MODIFY `idmessage` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
