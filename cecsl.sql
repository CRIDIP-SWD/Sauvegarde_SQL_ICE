-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Lun 02 Mars 2015 à 11:25
-- Version du serveur :  5.5.41-0ubuntu0.14.04.1
-- Version de PHP :  5.5.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `cecsl`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat_presta`
--

CREATE TABLE IF NOT EXISTS `achat_presta` (
`idachatpresta` int(13) NOT NULL,
  `date_achat` varchar(255) NOT NULL,
  `idprestation` int(13) NOT NULL,
  `qte` varchar(255) NOT NULL,
  `total_achat` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `ayant_droit`
--

CREATE TABLE IF NOT EXISTS `ayant_droit` (
`idayantdroit` int(13) NOT NULL,
  `idsalarie` int(13) NOT NULL,
  `nom_ayant_droit` varchar(255) NOT NULL,
  `prenom_ayant_droit` varchar(255) NOT NULL,
  `date_naissance_ayant_droit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=207 ;

--
-- Contenu de la table `ayant_droit`
--

INSERT INTO `ayant_droit` (`idayantdroit`, `idsalarie`, `nom_ayant_droit`, `prenom_ayant_droit`, `date_naissance_ayant_droit`) VALUES
(80, 3, 'AMARA', 'Nadia', ''),
(81, 3, 'AMARA', 'Meline', ''),
(82, 15, 'BINOT', 'Jules', ''),
(83, 16, 'BIZMAOUI PAPIN', 'Lony', ''),
(84, 16, 'BIZMAOUI PAPIN', 'Levy', ''),
(85, 21, 'BONARDE', 'Flora', ''),
(86, 21, 'BONARDE', 'Marie', ''),
(87, 26, 'BOURGAUD', 'Killian', ''),
(88, 26, 'BOURGAUD', 'Emma', ''),
(89, 26, 'BOURGAUD', 'Alix', ''),
(90, 31, 'BRISSY', 'Margot', ''),
(91, 37, 'CHAILLAND', 'Adele', ''),
(92, 37, 'CHAILLAND', 'Solene', ''),
(93, 37, 'CHAILLAND', 'Nais', ''),
(94, 38, 'CHAILLOUX', 'Maruis', ''),
(95, 38, 'CHAILLOUX', 'Capucine', ''),
(96, 41, 'CHARRIER', 'Ilona', ''),
(97, 41, 'CHARRIER', 'Emma', ''),
(98, 44, 'CH?TEAU', 'Leo', ''),
(99, 44, 'CH?TEAU', 'Kelia', ''),
(100, 50, 'COCHIN', 'Vincent', ''),
(101, 50, 'COCHIN', 'Benoit', ''),
(102, 52, 'COLAISSEAU', 'Alice', ''),
(103, 52, 'COLAISSEAU', 'Paul', ''),
(104, 58, 'DAVY', 'Baptiste', ''),
(105, 61, 'DELEMME', 'Noah', ''),
(106, 61, 'DELEMME', 'Hugo', ''),
(107, 63, 'DENECHERE', 'Thomas', ''),
(108, 63, 'DENECHERE', 'Rose', ''),
(109, 66, 'DEVAUD', 'Heloise', ''),
(110, 67, 'DIJOLS', 'Eden', ''),
(111, 68, 'DOISNEAU', 'Enzo', ''),
(112, 70, 'DOUET', 'Noah', ''),
(113, 71, 'DUPAS', 'Louise', ''),
(114, 72, 'DURAND CHATTON', 'Morgan', ''),
(115, 73, 'ELOBO', 'Simane', ''),
(116, 82, 'GASTINEAU', 'Jordan', ''),
(117, 82, 'GASTINEAU', 'Charline', ''),
(118, 82, 'GASTINEAU', 'Marie', ''),
(119, 85, 'GERARD', 'Lorinne', ''),
(120, 85, 'GERARD', 'Maxence', ''),
(121, 86, 'GESLIN', 'Melanie', ''),
(122, 86, 'GESLIN', 'Pauline', ''),
(123, 90, 'GAUDIN', 'Flavian', ''),
(124, 92, 'GOURMAUD', 'Clarence', ''),
(125, 95, 'GUEGAN', 'Matteo', ''),
(126, 95, 'GUEGAN', 'Lizea', ''),
(127, 101, 'GAUZI', 'Mahe', ''),
(128, 101, 'GAUZI', 'Liam', ''),
(129, 105, 'HUAU', 'Raphael', ''),
(130, 108, 'JAMOTEAU', 'Eliott', ''),
(131, 109, 'JARRY-FAURANT', 'Maxime', ''),
(132, 109, 'JARRY-FAURANT', 'Pauline', ''),
(133, 113, 'RINGUET', 'Ophelie', ''),
(134, 114, 'JOURNIAC', 'Angelique', ''),
(135, 114, 'JOURNIAC', 'Leandre', ''),
(136, 114, 'JOURNIAC', 'Rose', ''),
(137, 116, 'JURET', 'Lili-Rose', ''),
(138, 116, 'JURET', 'Angele', ''),
(139, 118, 'LAMY', 'Anthonin', ''),
(140, 118, 'LAMY', 'Albin', ''),
(141, 119, 'LANNIER', 'Enzo', ''),
(142, 119, 'LANNIER', 'Zoe', ''),
(143, 119, 'LANNIER', 'Erwan', ''),
(144, 121, 'LASNE', 'Aurelien', ''),
(145, 121, 'LASNE', 'Titouan', ''),
(146, 122, 'LATONNELLE', 'Thomas', ''),
(147, 122, 'LATONNELLE', 'Lea', ''),
(148, 123, 'LE BORGNE', 'Basile', ''),
(149, 127, 'LE JEAN', 'Florian', ''),
(150, 127, 'LE JEAN', 'Gabriel', ''),
(151, 128, 'LEBAILLY', 'Louise', ''),
(152, 129, 'LEBLANC', 'Louis', ''),
(153, 129, 'LEBLANC', 'Jean', ''),
(154, 129, 'LEBLANC', 'Jules', ''),
(155, 131, 'LECOMTE', 'Ninon', ''),
(156, 131, 'LECOMTE', 'Elian', ''),
(157, 133, 'LELIEVRE', 'Romain', ''),
(158, 133, 'LELIEVRE', 'Mathis', ''),
(159, 134, 'LENOGUE', 'Hugot', ''),
(160, 135, 'LESAGE', 'Stella', ''),
(161, 136, 'LOISEL', 'Noeline', ''),
(162, 139, 'LORINQUER', 'Lilou', ''),
(163, 139, 'LORINQUER', 'Nathael', ''),
(164, 139, 'LORINQUER', 'Lorys', ''),
(165, 144, 'MAUDET', 'Louis', ''),
(166, 147, 'MEIGNAN', 'Yaelle', ''),
(167, 150, 'MENDONCA', 'Aurelie', ''),
(168, 150, 'MENDONCA', 'Caroline', ''),
(169, 151, 'MERCEREAU', 'Romain', ''),
(170, 151, 'MERCEREAU', 'Jeanne', ''),
(171, 151, 'MERCEREAU', 'Claire', ''),
(172, 152, 'MERIAN', 'Martin', ''),
(173, 152, 'MERIAN', 'Louisa', ''),
(174, 159, 'OLIVEIRA', 'Mathis', ''),
(175, 159, 'OLIVEIRA', 'Timeo', ''),
(176, 161, 'PATAO', 'Neo', ''),
(177, 161, 'PATAO', 'Nina', ''),
(178, 161, 'PATAO', 'Laly', ''),
(179, 163, 'PERDIAU', 'Nicolas', ''),
(180, 166, 'PICHERIE', 'Arthur', ''),
(181, 166, 'PICHERIE', 'Nathan', ''),
(182, 166, 'PICHERIE', 'Oriane', ''),
(183, 173, 'PRIOU', 'Maxime', ''),
(184, 173, 'PRIOU', 'Enzo', ''),
(185, 179, 'REVERAULT', 'Antoine', ''),
(186, 179, 'REVERAULT', 'Lucas', ''),
(187, 182, 'RIPOCHE', 'Corentin', ''),
(188, 182, 'RIPOCHE', 'Noah', ''),
(189, 187, 'ROYER', 'Julien', ''),
(190, 195, 'SOULET', 'Mahe', ''),
(191, 195, 'SOULET', 'Nino', ''),
(192, 196, 'SOURISSEAU', 'Maela', ''),
(193, 196, 'SOURISSEAU', 'Gabriel', ''),
(194, 202, 'TESSIER', 'Alice', ''),
(195, 202, 'TESSIER', 'Clement', ''),
(196, 202, 'TESSIER', 'Mathieu', ''),
(197, 204, 'TIERCELIN', 'Enya', ''),
(198, 204, 'TIERCELIN', 'Terry', ''),
(199, 204, 'TIERCELIN', 'Rose', ''),
(200, 205, 'TORREGROSSA', 'Chloe', ''),
(201, 210, 'VIGAN', 'Corentin', ''),
(202, 210, 'VIGAN', 'Florian', ''),
(203, 210, 'VIGAN', 'Bastien', ''),
(204, 210, 'VIGAN', 'Zoe', ''),
(205, 212, 'VIVION', 'Eloise', ''),
(206, 213, 'YEKULI', 'Leo', '');

-- --------------------------------------------------------

--
-- Structure de la table `bilan`
--

CREATE TABLE IF NOT EXISTS `bilan` (
`idcasebilan` int(13) NOT NULL,
  `type_bilan` int(1) NOT NULL,
  `libelle_mouvement` varchar(255) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=288 ;

-- --------------------------------------------------------

--
-- Structure de la table `billet_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `billet_ayant_droit` (
`idbilletayantdroit` int(13) NOT NULL,
  `idayantdroit` int(13) NOT NULL,
  `date_vente` varchar(255) NOT NULL,
  `idtypetraitement` int(13) NOT NULL,
  `total_vente` varchar(255) NOT NULL,
  `etat_facture` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `billet_salarie`
--

CREATE TABLE IF NOT EXISTS `billet_salarie` (
`idbilletsalarie` int(13) NOT NULL,
  `idsalarie` int(13) NOT NULL,
  `date_vente` varchar(255) NOT NULL,
  `idtypetraitement` int(13) NOT NULL,
  `total_vente` varchar(255) NOT NULL,
  `etat_billet_salarie` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`) VALUES
(8, 3, '04-02-2015', 3, '0', 0);

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_balance`
--

CREATE TABLE IF NOT EXISTS `compta_balance` (
`idcomptabalance` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=159 ;

--
-- Contenu de la table `compta_balance`
--

INSERT INTO `compta_balance` (`idcomptabalance`, `idcomptaplan`, `debit`, `credit`) VALUES
(80, 1, '', ''),
(81, 2, '', ''),
(82, 3, '', ''),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '', ''),
(87, 8, '', ''),
(88, 9, '', ''),
(89, 10, '', ''),
(90, 11, '', ''),
(91, 12, '', ''),
(92, 13, '', ''),
(93, 14, '', ''),
(94, 15, '', ''),
(95, 16, '', ''),
(96, 17, '', ''),
(97, 18, '', ''),
(98, 19, '', ''),
(99, 20, '', ''),
(100, 21, '', ''),
(101, 22, '', ''),
(102, 23, '', ''),
(103, 24, '', ''),
(104, 25, '', ''),
(105, 26, '', ''),
(106, 27, '', ''),
(107, 28, '', ''),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', ''),
(113, 34, '', ''),
(114, 35, '', ''),
(115, 36, '', ''),
(116, 37, '', ''),
(117, 38, '', ''),
(118, 39, '', ''),
(119, 40, '', ''),
(120, 41, '', ''),
(121, 42, '', ''),
(122, 43, '', ''),
(123, 44, '', ''),
(124, 45, '', ''),
(125, 46, '', ''),
(126, 47, '', ''),
(127, 48, '', ''),
(128, 49, '', ''),
(129, 50, '', ''),
(130, 51, '', ''),
(131, 52, '', ''),
(132, 53, '', ''),
(133, 54, '', ''),
(134, 55, '', ''),
(135, 56, '', ''),
(136, 57, '', ''),
(137, 58, '', ''),
(138, 59, '', ''),
(139, 60, '', ''),
(140, 61, '', ''),
(141, 62, '', ''),
(142, 63, '', ''),
(143, 64, '', ''),
(144, 65, '', ''),
(145, 66, '', ''),
(146, 67, '', ''),
(147, 68, '', ''),
(148, 69, '', ''),
(149, 70, '', ''),
(150, 71, '', ''),
(151, 72, '', ''),
(152, 73, '', ''),
(153, 74, '', ''),
(154, 75, '', ''),
(155, 76, '', ''),
(156, 77, '', ''),
(157, 78, '', ''),
(158, 79, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_banque`
--

CREATE TABLE IF NOT EXISTS `compta_banque` (
`idcomptabanque` int(13) NOT NULL,
  `date_bq` varchar(255) NOT NULL,
  `desc_bq` varchar(255) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_passif` (
`idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_caisse`
--

CREATE TABLE IF NOT EXISTS `compta_caisse` (
`idcomptacaisse` int(13) NOT NULL,
  `date_caisse` varchar(255) NOT NULL,
  `desc_caisse` varchar(255) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE IF NOT EXISTS `compta_compte` (
`idcomptacompte` int(13) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_livret`
--

CREATE TABLE IF NOT EXISTS `compta_livret` (
`idcomptalivret` int(13) NOT NULL,
  `date_livret` varchar(255) NOT NULL,
  `desc_livret` varchar(25) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_mvm`
--

CREATE TABLE IF NOT EXISTS `compta_mvm` (
`idcomptamvm` int(13) NOT NULL,
  `date_mvm` varchar(255) NOT NULL,
  `desc_mvm` varchar(255) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_plan`
--

CREATE TABLE IF NOT EXISTS `compta_plan` (
`idcomptaplan` int(13) NOT NULL,
  `type_plan` int(1) NOT NULL,
  `nom_origine` varchar(255) NOT NULL,
  `nom_util` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Contenu de la table `compta_plan`
--

INSERT INTO `compta_plan` (`idcomptaplan`, `type_plan`, `nom_origine`, `nom_util`) VALUES
(1, 1, 'Caisse', 'Caisse'),
(2, 1, 'Poste', ''),
(3, 1, 'Banque', 'Banque'),
(4, 1, 'Cr&eacute;ances Clients', 'CrÃ©ances Client'),
(5, 1, 'Impots Pr&eacute;alable', ''),
(6, 1, 'Stock de Marchandises', ''),
(7, 1, 'Autre actif circulant 1', ''),
(8, 1, 'Autre actif circulant 2', 'Compte sur Livret'),
(9, 1, 'Autre actif circulant 3', ''),
(10, 1, 'Autre actif circulant  4', ''),
(11, 1, 'Machines et appareils', ''),
(12, 1, 'Mobiliers et installations', ''),
(13, 1, 'Infrastructure informatique', ''),
(14, 1, 'V&eacute;hicules', 'terrain'),
(15, 1, 'immeubles', ''),
(16, 1, 'Autre actif immobilis&eacute; 1', ''),
(17, 1, 'Autre actif immobilis&eacute; 2', ''),
(18, 1, 'Autre actif immobilis&eacute; 3', ''),
(19, 1, 'Autre actif immobilis&eacute; 4', ''),
(20, 2, 'Dettes Fournisseur', 'Dettes Fournisseur'),
(21, 2, 'TVA due', ''),
(22, 2, 'Dettes Hypoth&eacute;caire', ''),
(23, 2, 'Pr&ecirc;t Obtenue', ''),
(24, 2, 'Autre dette 1', 'Autres dettes'),
(25, 2, 'Autre dette 2', ''),
(26, 2, 'Autre dette 3', ''),
(27, 2, 'Autre dette 4', ''),
(28, 2, 'Capital', 'Capitaux'),
(29, 2, 'Priv&eacute;', ''),
(30, 2, 'Autre Capital 1', ''),
(31, 2, 'Autre Capital 2', ''),
(32, 3, 'Ventes de marchandises', 'Ventes de marchandises'),
(33, 3, 'D&eacute;ductions Obtenues', 'Gains divers'),
(34, 3, 'Commission (&agrave; des tiers)', ''),
(35, 3, 'Honoraires', 'Subvention de Fonctionnement'),
(36, 3, 'Prestations &agrave; soi-m&ecirc;me', 'Participation des salariÃ©s'),
(37, 3, 'Int&eacute;r&ecirc;t - Produits', 'IntÃ©rÃªts'),
(38, 3, 'Autre CA 1', 'Participation Entreprise'),
(39, 3, 'Autre CA 2', ''),
(40, 4, 'Achats de Marchandises', 'Achats de Marchandises'),
(41, 4, 'Frais d''Achats', ''),
(42, 4, 'Variations de Stocks', ''),
(43, 4, 'D&eacute;ductions Accord&eacute;es', ''),
(44, 4, 'Autre Charge 1', ''),
(45, 4, 'Autre Charge 2', ''),
(46, 5, 'Salaires', 'Salaires'),
(47, 5, 'Charges Sociales', 'Charges sociales'),
(48, 5, 'Autre charge de personnel 1', 'Honoraires'),
(49, 5, 'Autre charge de personnel 2', ''),
(50, 6, 'Loyer', 'Frais Postaux'),
(51, 6, 'Frais de V&eacute;hicules', 'Frais de dÃ©placements'),
(52, 6, 'Entretien et r&eacute;parations', 'Entretien et rÃ©parations'),
(53, 6, 'Frais d''exp&eacute;dition', 'Fournitures de bureaux'),
(54, 6, 'Assurances', 'Assurances'),
(55, 6, 'Electricit&eacute;, Gaz, etc...', 'Abonnements'),
(56, 6, 'Frais d''administration', 'Frais d''administration'),
(57, 6, 'T&eacute;l&eacute;phone, fax, internet', 'TÃ©lÃ©phone, fax, internet'),
(58, 6, 'Publicit&eacute;', 'Agios'),
(59, 6, 'Interet-charges, Frais Bancaires', 'Frais bancaires'),
(60, 6, 'Amortissements', 'Achat de matÃ©riel '),
(61, 6, 'Autre Charge d''exploitation 1', ''),
(62, 6, 'Autre Charge d''exploitation 2', ''),
(63, 6, 'Autre Charge d''exploitation 3', ''),
(64, 6, 'Autre Charge d''exploitation 4', ''),
(65, 7, 'Produits des titres', 'Produits Financiers'),
(66, 7, 'Produits d''immeubles', ''),
(67, 7, 'Autre r&eacute;sultat Annexe 1', ''),
(68, 7, 'Autre r&eacute;sultat Annexe 2', ''),
(69, 7, 'Charges d''immeubles', ''),
(70, 7, 'Autre Charge annexe 1', ''),
(71, 7, 'Autre Charge annexe 2', ''),
(72, 8, 'Produits Exeptionnels', 'Produits Exeptionnels'),
(73, 8, 'Autre r&eacute;sultat exeptionnel 1', ''),
(74, 8, 'Autre r&eacute;sultat exeptionnel 2', ''),
(75, 8, 'Charges Exeptionnelles', ''),
(76, 8, 'Impot sur le B&eacute;n&eacute;fice', ''),
(77, 8, 'Impots sur le Capital', ''),
(78, 8, 'Autre charge exeptionnelle 1', 'Charges Exceptionnelles'),
(79, 8, 'Autre charge exeptionnelle 2', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_resultat`
--

CREATE TABLE IF NOT EXISTS `compta_resultat` (
`idresultat` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `config_etablissement`
--

CREATE TABLE IF NOT EXISTS `config_etablissement` (
`idetablissement` int(13) NOT NULL,
  `nom_etablissement` varchar(255) NOT NULL,
  `remise_salarie` varchar(255) NOT NULL,
  `remise_ayant_droit` varchar(255) NOT NULL,
  `prefix_achat` varchar(255) NOT NULL,
  `prefix_vente` varchar(255) NOT NULL,
  `num_license` varchar(255) NOT NULL,
  `date_derniere_cloture` varchar(255) NOT NULL,
  `date_prochaine_cloture` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `config_etablissement`
--

INSERT INTO `config_etablissement` (`idetablissement`, `nom_etablissement`, `remise_salarie`, `remise_ayant_droit`, `prefix_achat`, `prefix_vente`, `num_license`, `date_derniere_cloture`, `date_prochaine_cloture`) VALUES
(1, 'CE Clinique Saint LÃ©onard', '0.20', '0.10', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `cpt_resultat`
--

CREATE TABLE IF NOT EXISTS `cpt_resultat` (
`idcptresultat` int(11) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `date_mouvement` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=288 ;

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE IF NOT EXISTS `famille_prestation` (
`idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Contenu de la table `famille_prestation`
--

INSERT INTO `famille_prestation` (`idfamilleprestation`, `designation_famille`) VALUES
(46, 'CARTE ATOUT'),
(47, 'CAFE'),
(48, 'CINEMA CEZAM'),
(49, 'BILLETERIE CEZAM CELTIC LEGENDS'),
(50, 'billeterie  Alain Souchon'),
(51, 'billeterie Alain Souchon'),
(52, 'carte cezam'),
(53, 'CAFE'),
(54, 'CAFE DOSETTE');

-- --------------------------------------------------------

--
-- Structure de la table `ligne_billet_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `ligne_billet_ayant_droit` (
`idlignebilletayantdroit` int(13) NOT NULL,
  `idbilletayantdroit` int(13) NOT NULL,
  `idprestation` int(13) NOT NULL,
  `qte` varchar(255) NOT NULL,
  `part_salarie` varchar(255) NOT NULL,
  `part_ce` varchar(255) NOT NULL,
  `hors_quota` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `ligne_billet_salarie`
--

CREATE TABLE IF NOT EXISTS `ligne_billet_salarie` (
`idlignebilletsalarie` int(13) NOT NULL,
  `idbilletsalarie` int(13) NOT NULL,
  `idprestation` int(13) NOT NULL,
  `qte` varchar(255) NOT NULL,
  `part_salarie` varchar(255) NOT NULL,
  `part_ce` varchar(255) NOT NULL,
  `hors_quota` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Structure de la table `log_systeme`
--

CREATE TABLE IF NOT EXISTS `log_systeme` (
`idlog` int(13) NOT NULL,
  `date_log` varchar(255) NOT NULL,
  `heure_log` varchar(255) NOT NULL,
  `libelle_log` varchar(255) NOT NULL,
  `etat_log` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `maj`
--

CREATE TABLE IF NOT EXISTS `maj` (
`idmaj` int(13) NOT NULL,
  `version_latest` varchar(255) NOT NULL,
  `build` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `maj`
--

INSERT INTO `maj` (`idmaj`, `version_latest`, `build`) VALUES
(5, '1.1.2', '20215-classic');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
`iduser` int(13) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass_md5` varchar(255) NOT NULL,
  `groupe` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`iduser`, `login`, `pass_md5`, `groupe`) VALUES
(1, 'Administrateur', '25f9e794323b453885f5181f1b624d0b', 1),
(4, 'cecliniquesaintleonard', 'b4ea23a368b20bc1623e058f392f1fe4', 1),
(6, 'cecsl', '7f56ea08293af7c4e97501812b4b6f92', 1);

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
`idmodule` int(13) NOT NULL,
  `designation_module` varchar(255) NOT NULL,
  `etat_module` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `module`
--

INSERT INTO `module` (`idmodule`, `designation_module`, `etat_module`) VALUES
(2, 'solde_salarie', '0'),
(3, 'vente_direct', '0');

-- --------------------------------------------------------

--
-- Structure de la table `prestation`
--

CREATE TABLE IF NOT EXISTS `prestation` (
`idprestation` int(13) NOT NULL,
  `idfamilleprestation` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `debut_validite` varchar(255) NOT NULL,
  `fin_validite` varchar(255) NOT NULL,
  `part_salarie` varchar(255) NOT NULL,
  `part_ce` varchar(255) NOT NULL,
  `cout_presta` varchar(255) NOT NULL,
  `nb_max_salarie` varchar(255) NOT NULL,
  `nb_stock` varchar(25) NOT NULL,
  `hors_quota` int(1) NOT NULL,
  `commentaire` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`, `commentaire`) VALUES
(69, 46, 'CARTE ATOUT', '01-12-2014', '17-09-2015', '17', '4', '21', '100', '100', 0, 'Valable pour piscine, patinoire, salle de sport ou autres partenaires'),
(71, 48, 'cinema', '31-05-2015', '28-02-2015', '6â‚¬', '1.40', '7.4', '50', '120', 0, ''),
(73, 49, 'billeterie celtic legends', '08-01-2015', '07/03/2015', '33.30', '3.70', '37', '100', '0', 0, ''),
(75, 51, 'billeterie Alain Souchon', '14-01-2015', '24-06-2015', '62.10', '6.90', '69', '100', '0', 0, ''),
(76, 52, 'carte cezam salariÃ©s', '01-01-2015', '31-12-2015', '5.00', '7', '12', '100', '30', 0, ''),
(77, 52, 'carte cezam conjoint/enfants', '01-01-2015', '31-12-2015', '2.50', '3.50', '6', '100', '13', 0, ''),
(78, 53, 'CAFE', '01-01-2015', '31-12-2015', '2.15', '0', '2.15', '100', '22', 0, ''),
(79, 54, 'CAFE DOSETTE', '01-01-2015', '01-09-2015', '3.55', '0', '3.55', '20', '10', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_billet_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_billet_ayant_droit` (
`idregbilletayantdroit` int(13) NOT NULL,
  `idbilletayantdroit` int(13) NOT NULL,
  `type_reglement` int(1) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `banque_chq` varchar(255) NOT NULL,
  `porteur_chq` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL,
  `pointe` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_billet_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_billet_salarie` (
`idregbilletsalarie` int(13) NOT NULL,
  `idbilletsalarie` int(13) NOT NULL,
  `type_reglement` int(1) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `banque_chq` varchar(255) NOT NULL,
  `porteur_chq` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL,
  `pointe` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque`
--

CREATE TABLE IF NOT EXISTS `remise_banque` (
`idremisebanque` int(13) NOT NULL,
  `date_remise` varchar(255) NOT NULL,
  `type_remise` int(1) NOT NULL,
  `num_remise` varchar(255) NOT NULL,
  `montant_remise` varchar(255) NOT NULL,
  `valid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE IF NOT EXISTS `remise_banque_esp` (
`idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `salarie`
--

CREATE TABLE IF NOT EXISTS `salarie` (
`idsalarie` int(13) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `civilite_salarie` int(1) NOT NULL,
  `nom_salarie` varchar(255) NOT NULL,
  `prenom_salarie` varchar(255) NOT NULL,
  `adresse1_salarie` varchar(255) NOT NULL,
  `adresse2_salarie` varchar(255) NOT NULL,
  `cp_salarie` varchar(255) NOT NULL,
  `ville_salarie` varchar(255) NOT NULL,
  `tel_salarie` varchar(255) NOT NULL,
  `port_salarie` varchar(255) NOT NULL,
  `mail_salarie` varchar(255) NOT NULL,
  `date_naissance` varchar(255) NOT NULL,
  `entre_salarie` varchar(255) NOT NULL,
  `sortie_salarie` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `poste_salarie` varchar(255) NOT NULL,
  `indice_salarie` varchar(255) NOT NULL,
  `commentaire` longtext NOT NULL,
  `contrat` varchar(255) NOT NULL,
  `etat_salarie` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=214 ;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`) VALUES
(1, '', 2, 'ABELLARD', 'Marion', '', '', '', '', '', '', '', '', '19/06/2014', '', '', '', '', '', 'CDD', 1),
(2, '', 2, 'AILLERIE', 'Myriam', '', '', '', '', '', '', '', '', '07/01/2003', '', '', '', '', '', 'CDI', 1),
(3, '', 2, 'AMARA', 'Nadia', '', '', '', '', '', '', '', '', '11/12/2007', '', '', '', '', '', 'CDI', 1),
(4, '', 1, 'ANTIER', 'Sylvie', '', '', '', '', '', '', '', '', '06/05/2013', '', '', '', '', '', 'CDI', 1),
(5, '', 2, 'AUGUET', 'Joelle', '', '', '', '', '', '', '', '', '21/09/2000', '', '', '', '', '', 'CDI', 1),
(6, '', 2, 'BAILLY', 'Michelle', '', '', '', '', '', '', '', '', '26/06/1990', '', '', '', '', '', 'CDI', 1),
(7, '', 2, 'BEAUMONT', 'Bernadette', '', '', '', '', '', '', '', '', '05/04/1988', '', '', '', '', '', 'CDI', 1),
(8, '', 1, 'BEAUVAIS', 'Nicolas', '', '', '', '', '', '', '', '', '02/09/2013', '', '', '', '', '', 'CDD', 1),
(9, '', 2, 'BELLOIS', 'Karine', '', '', '', '', '', '', '', '', '19/02/2014', '', '', '', '', '', 'CDD', 1),
(10, '', 1, 'BENIER', 'Marie Dominique', '', '', '', '', '', '', '', '', '25/01/1973', '31-01-2015', '', '', '', 'RETRAITE', 'CDI', 1),
(11, '', 2, 'BERTEAU', 'Patricia', '', '', '', '', '', '', '', '', '05/12/2011', '', '', '', '', '', 'CDI', 1),
(12, '', 2, 'BERTRAND', 'Erika', '', '', '', '', '', '', '', '', '22/04/2013', '', '', '', '', '', 'CDI', 1),
(13, '', 2, 'BIBARD', 'Audrey', '', '', '', '', '', '', '', '', '22/06/2009', '', '', '', '', '', 'CDI', 1),
(14, '', 2, 'BIGOT', 'Louise', '', '', '', '', '', '', '', '', '13/02/2014', '', '', '', '', '', 'CDD', 1),
(15, '', 2, 'BINOT', 'Lucie', '', '', '', '', '', '', '', '', '26/04/2004', '', '', '', '', '', 'CDI', 1),
(16, '', 2, 'BIZMAOUI PAPIN', 'Myriam', '', '', '', '', '', '', '', '', '02/04/2008', '', '', '', '', '', 'CDI', 1),
(17, '', 2, 'BLAITEAU', 'Dalila', '', '', '', '', '', '', '', '', '07/08/1996', '', '', '', '', '', 'CDI', 1),
(18, '', 2, 'BLEZ', 'Manon', '', '', '', '', '', '', '', '', '05/09/2013', '', '', '', '', '', 'CDI', 1),
(19, '', 2, 'BOIS', 'Marie', '', '', '', '', '', '', '', '', '02/12/2010', '', '', '', '', '', 'CDI', 1),
(20, '', 2, 'BONFILS', 'Cecile', '', '', '', '', '', '', '', '', '17/06/1997', '', '', '', '', '', 'CDI', 1),
(21, '', 2, 'BONNARDE', 'Armelle', '', '', '', '', '', '', '', '', '20/07/2011', '', '', '', '', '', 'CDI', 1),
(22, '', 2, 'BORE', 'Marie Pierre', '', '', '', '', '', '', '', '', '15/01/1997', '', '', '', '', '', 'CDI', 1),
(23, '', 2, 'BOSSU', 'Catherine', '', '', '', '', '', '', '', '', '01/02/2014', '', '', '', '', '', 'CDD', 1),
(24, '', 2, 'BOUET', 'Annette', '', '', '', '', '', '', '', '', '26/05/2005', '', '', '', '', '', 'CDI', 1),
(25, '', 2, 'BOULAY', 'Jennifer', '', '', '', '', '', '', '', '', '28/08/2013', '', '', '', '', '', 'CDD', 1),
(26, '', 1, 'BOURGAUD', 'Mickael', '', '', '', '', '', '', '', '', '03/01/2007', '', '', '', '', '', 'CDI', 1),
(27, '', 1, 'BOURGET', 'Louis', '', '', '', '', '', '', '', '', '20/06/2014', '', '', '', '', '', 'CDD', 1),
(28, '', 1, 'BOUTIN', 'David', '', '', '', '', '', '', '', '', '29/11/2013', '', '', '', '', '', 'CDD', 1),
(29, '', 2, 'BOUTREUX', 'Anne Sophie', '', '', '', '', '', '', '', '', '27/08/2013', '', '', '', '', '', 'CDD', 1),
(30, '', 2, 'BRARD', 'Marie Pierre', '', '', '', '', '', '', '', '', '02/06/2008', '', '', '', '', '', 'CDI', 1),
(31, '', 2, 'BRISSY', 'Helene', '', '', '', '', '', '', '', '', '03/10/2011', '', '', '', '', '', 'CDI', 1),
(32, '', 2, 'BUSH', 'Magali', '', '', '', '', '', '', '', '', '04/09/2013', '', '', '', '', '', 'CDD', 1),
(33, '', 2, 'CADELE', 'Marie Claude', '', '', '', '', '', '', '', '', '28/02/2007', '', '', '', '', '', 'CDI', 1),
(34, '', 2, 'CARRE', 'Audrey', '', '', '', '', '', '', '', '', '03/10/2012', '', '', '', '', '', 'CDI', 1),
(35, '', 2, 'CAYRE', 'St?phanie', '', '', '', '', '', '', '', '', '14/04/2014', '', '', '', '', '', 'CDD', 1),
(36, '', 1, 'CHAILLAND', 'Pierre', '', '', '', '', '', '', '', '', '05/06/2013', '', '', '', '', '', 'CDD', 1),
(37, '', 1, 'CHAILLAND', 'Julien', '', '', '', '', '', '', '', '', '02/01/2006', '', '', '', '', '', 'CDI', 1),
(38, '', 2, 'CHAILLOU', 'Sandra', '', '', '', '', '', '', '', '', '13/09/1999', '', '', '', '', '', 'CDI', 1),
(39, '', 2, 'CHALLIER', 'Jacqueline', '', '', '', '', '', '', '', '', '10/06/2010', '', '', '', '', '', 'CDI', 1),
(40, '', 1, 'CHAMPIGNY', 'Antoine', '', '', '', '', '', '', '', '', '10/01/2011', '', '', '', '', '', 'CDI', 1),
(41, '', 2, 'CHARREAU', 'Helene', '', '', '', '', '', '', '', '', '04/01/1989', '', '', '', '', '', 'CDI', 1),
(42, '', 2, 'CHARRIER', 'Elena', '', '', '', '', '', '', '', '', '24/11/2003', '', '', '', '', '', 'CDI', 1),
(43, '', 2, 'CHARTIER', 'Brigitte', '', '', '', '', '', '', '', '', '24/01/1977', '', '', '', '', '', 'CDI', 1),
(44, '', 2, 'CHATEAU', 'Sandrine', '', '', '', '', '', '', '', '', '09/01/2006', '', '', '', '', '', 'CDI', 1),
(45, '', 2, 'CHEIGNON', 'Aurore', '', '', '', '', '', '', '', '', '23/09/1993', '', '', '', '', '', 'CDI', 1),
(46, '', 2, 'CHEVREUX', 'Melanie', '', '', '', '', '', '', '', '', '30/06/2011', '', '', '', '', '', 'CDI', 1),
(47, '', 2, 'CHEVRIER', 'B?atrice', '', '', '', '', '', '', '', '', '12/09/2011', '', '', '', '', '', 'CDI', 1),
(48, '', 1, 'CIBRON', 'Christophe', '', '', '', '', '', '', '', '', '15/03/1993', '', '', '', '', '', 'CDI', 1),
(49, '', 2, 'CLOUTOT', 'Sophie', '', '', '', '', '', '', '', '', '12/10/1998', '', '', '', '', '', 'CDI', 1),
(50, '', 1, 'COCHIN', 'Yvon', '', '', '', '', '', '', '', '', '30/07/2012', '', '', '', '', '', 'CDI', 1),
(51, '', 1, 'COIGNARD', 'Jeremy', '', '', '', '', '', '', '', '', '20/10/2011', '', '', '', '', '', 'CDD', 1),
(52, '', 2, 'COLAISSEAU', 'Christine', '', '', '', '', '', '', '', '', '12/03/2010', '', '', '', '', '', 'CDI', 1),
(53, '', 2, 'CORVE', 'Gilberte', '', '', '', '', '', '', '', '', '24/03/2001', '', '', '', '', '', 'CDI', 1),
(54, '', 2, 'COTTENCEAU', 'Monique', '', '', '', '', '', '', '', '', '17/09/2004', '', '', '', '', '', 'CDI', 1),
(55, '', 2, 'COURCELLE', 'Pauline', '', '', '', '', '', '', '', '', '10/02/2014', '', '', '', '', '', 'CDD', 1),
(56, '', 2, 'CRANSAC', 'Christel', '', '', '', '', '', '', '', '', '08/04/2011', '', '', '', '', '', 'CDI', 1),
(57, '', 2, 'DABOUDET', 'Valerie', '', '', '', '', '', '', '', '', '09/05/2005', '', '', '', '', '', 'CDI', 1),
(58, '', 2, 'DAVY', 'Katia', '', '', '', '', '', '', '', '', '30/03/1995', '', '', '', '', '', 'CDI', 1),
(59, '', 2, 'DELAREUX', 'Isabelle', '', '', '', '', '', '', '', '', '02/01/1984', '', '', '', '', '', 'CDI', 1),
(60, '', 2, 'DELAUNAY', 'Dominique', '', '', '', '', '', '', '', '', '01/11/2008', '', '', '', '', '', 'CDI', 1),
(61, '', 1, 'DELEMME', 'Anthony', '', '', '', '', '', '', '', '', '01/11/2008', '', '', '', '', '', 'CDI', 1),
(62, '', 2, 'DENANCE', 'Claudia', '', '', '', '', '', '', '', '', '01/08/1973', '', '', '', '', '', 'CDI', 1),
(63, '', 2, 'DENECHERE', 'Pascale', '', '', '', '', '', '', '', '', '28/11/1995', '', '', '', '', '', 'CDI', 1),
(64, '', 1, 'DEROUET', 'Jerome', '', '', '', '', '', '', '', '', '24/02/1995', '', '', '', '', '', 'CDI', 1),
(65, '', 2, 'DESCHRYVER', 'Elisabeth', '', '', '', '', '', '', '', '', '01/06/2007', '', '', '', '', '', 'CDI', 1),
(66, '', 2, 'DEVAUD', 'Sandrine', '', '', '', '', '', '', '', '', '02/10/2000', '', '', '', '', '', 'CDI', 1),
(67, '', 2, 'DIJOLS', 'Christine', '', '', '', '', '', '', '', '', '02/05/2011', '', '', '', '', '', 'CDI', 1),
(68, '', 2, 'DOISNEAU', 'Geraldine', '', '', '', '', '', '', '', '', '03/01/1994', '', '', '', '', '', 'CDI', 1),
(69, '', 2, 'DONEAU', 'Emilie', '', '', '', '', '', '', '', '', '12/12/2011', '', '', '', '', '', 'CDI', 1),
(70, '', 2, 'DOUET', 'Charline', '', '', '', '', '', '', '', '', '10/09/2009', '', '', '', '', '', 'CDI', 1),
(71, '', 2, 'DUPAS', 'Fran?oise', '', '', '', '', '', '', '', '', '18/08/1997', '', '', '', '', '', 'CDI', 1),
(72, '', 2, 'DURAND CHATTON', 'Pascale', '', '', '', '', '', '', '', '', '02/12/2004', '', '', '', '', '', 'CDI', 1),
(73, '', 2, 'ELOBO', 'Renee', '', '', '', '', '', '', '', '', '15/02/2012', '', '', '', '', '', 'CDI', 1),
(74, '', 1, 'ESNAULT', 'Claude', '', '', '', '', '', '', '', '', '28/05/1984', '', '', '', '', '', 'CDI', 1),
(75, '', 2, 'FERRAND', 'Mauricette', '', '', '', '', '', '', '', '', '27/11/2008', '', '', '', '', '', 'CDI', 1),
(76, '', 2, 'FLEURY', 'Marylene', '', '', '', '', '', '', '', '', '22/02/2010', '', '', '', '', '', 'CDI', 1),
(77, '', 2, 'FOUBLE', 'Camille', '', '', '', '', '', '', '', '', '23/09/2013', '', '', '', '', '', 'CDI', 1),
(78, '', 2, 'FOUQUERAY', 'Edwige', '', '', '', '', '', '', '', '', '05/12/2011', '', '', '', '', '', 'CDI', 1),
(79, '', 2, 'FOUQUET', 'Chantal', '', '', '', '', '', '', '', '', '01/04/2010', '', '', '', '', '', 'CDI', 1),
(80, '', 1, 'FRABOULET', 'Jean Yves', '', '', '', '', '', '', '', '', '24/04/2012', '', '', '', '', '', 'CDI', 1),
(81, '', 2, 'FRANCFORT', 'Catherine', '', '', '', '', '', '', '', '', '15/10/2008', '', '', '', '', '', 'CDI', 1),
(82, '', 2, 'GASTINEAU', 'Isabelle', '', '', '', '', '', '', '', '', '19/03/2002', '', '', '', '', '', 'CDI', 1),
(83, '', 2, 'GAUDELET', 'Maryline', '', '', '', '', '', '', '', '', '01/12/1981', '', '', '', '', '', 'CDI', 1),
(84, '', 2, 'GAUTHIER', 'Emeline', '', '', '', '', '', '', '', '', '12/03/2014', '', '', '', '', '', 'CDD', 1),
(85, '', 2, 'GERARD', 'Alexandra', '', '', '', '', '', '', '', '', '26/10/1999', '', '', '', '', '', 'CDI', 1),
(86, '', 2, 'GESLIN', 'Sarah', '', '', '', '', '', '', '', '', '20/01/2003', '', '', '', '', '', 'CDI', 1),
(87, '', 2, 'GILBERT', 'Lucie', '', '', '', '', '', '', '', '', '02/07/2013', '', '', '', '', '', 'CDI', 1),
(88, '', 2, 'GILET', 'Brigitte', '', '', '', '', '', '', '', '', '10/03/1983', '', '', '', '', '', 'CDI', 1),
(89, '', 2, 'GISLARD', 'Catherine', '', '', '', '', '', '', '', '', '04/07/2007', '', '', '', '', '', 'CDI', 1),
(90, '', 2, 'GODIN', 'St?phanie', '', '', '', '', '', '', '', '', '06/02/2014', '', '', '', '', '', 'CDD', 1),
(91, '', 1, 'GOHIER', 'Simon', '', '', '', '', '', '', '', '', '29/06/2013', '', '', '', '', '', 'CDD', 1),
(92, '', 2, 'GOURMAUD', 'Delphine', '', '', '', '', '', '', '', '', '03/03/2010', '', '', '', '', '', 'CDI', 1),
(93, '', 1, 'GRAU', 'Cecilio', '', '', '', '', '', '', '', '', '01/12/2010', '', '', '', '', '', 'CDI', 1),
(94, '', 2, 'GRIFFON', 'Carine', '', '', '', '', '', '', '', '', '06/04/2009', '', '', '', '', '', 'CDI', 1),
(95, '', 2, 'GUEGAN', 'Cecilia', '', '', '', '', '', '', '', '', '18/10/2005', '', '', '', '', '', 'CDI', 1),
(96, '', 2, 'GUIHO', 'Odette', '', '', '', '', '', '', '', '', '10/02/1998', '', '', '', '', '', 'CDI', 1),
(97, '', 2, 'GUILLOT', 'Claire', '', '', '', '', '', '', '', '', '11/10/2010', '', '', '', '', '', 'CDI', 1),
(98, '', 1, 'HAISSANT', 'Thibaud', '', '', '', '', '', '', '', '', '05/07/2007', '', '', '', '', '', 'CDI', 1),
(99, '', 1, 'HAMON', 'Olivier', '', '', '', '', '', '', '', '', '23/04/2014', '', '', '', '', '', 'CDD', 1),
(100, '', 2, 'HEBBACHE', 'Michelle', '', '', '', '', '', '', '', '', '19/09/1977', '', '', '', '', '', 'CDI', 1),
(101, '', 2, 'HENNE', 'Teresa', '', '', '', '', '', '', '', '', '07/02/2011', '', '', '', '', '', 'CDI', 1),
(102, '', 2, 'HERANVAL', 'Malvina', '', '', '', '', '', '', '', '', '15/07/2013', '', '', '', '', '', 'CDI', 1),
(103, '', 1, 'HERAUD', 'Pierre', '', '', '', '', '', '', '', '', '20/07/2011', '', '', '', '', '', 'CDI', 1),
(104, '', 2, 'HODET', 'Martine', '', '', '', '', '', '', '', '', '01/02/2014', '', '', '', '', '', 'CDI', 1),
(105, '', 2, 'HUAU', 'Carine', '', '', '', '', '', '', '', '', '03/10/2011', '', '', '', '', '', 'CDI', 1),
(106, '', 1, 'HUGARD', 'Jacques', '', '', '', '', '', '', '', '', '20/08/2009', '', '', '', '', '', 'CDI', 1),
(107, '', 2, 'HUIN', 'Sylvie', '', '', '', '', '', '', '', '', '01/02/2011', '', '', '', '', '', 'CDI', 1),
(108, '', 2, 'JAMOTEAU', 'Adeline', '', '', '', '', '', '', '', '', '18/01/2010', '', '', '', '', '', 'CDI', 1),
(109, '', 2, 'JARRY FAURANT', 'Anne', '', '', '', '', '', '', '', '', '23/06/2003', '', '', '', '', '', 'CDI', 1),
(110, '', 2, 'JEMIN', 'Christine', '', '', '', '', '', '', '', '', '11/08/1975', '', '', '', '', '', 'CDI', 1),
(111, '', 1, 'JEMIN', 'Dany', '', '', '', '', '', '', '', '', '23/01/2014', '', '', '', '', '', 'CDD', 1),
(112, '', 2, 'JOUAN', 'Fanny', '', '', '', '', '', '', '', '', '02/05/2011', '', '', '', '', '', 'CDI', 1),
(113, '', 2, 'JOUANNEAU', 'Carole', '', '', '', '', '', '', '', '', '28/09/2010', '', '', '', '', '', 'CDI', 1),
(114, '', 2, 'JOURNIAC', 'Adeline', '', '', '', '', '', '', '', '', '31/12/2007', '', '', '', '', '', 'CDI', 1),
(115, '', 1, 'JUGUET', 'Philippe', '', '', '', '', '', '', '', '', '19/03/2012', '', '', '', '', '', 'CDI', 1),
(116, '', 2, 'JURET', 'Marlene', '', '', '', '', '', '', '', '', '23/05/2005', '', '', '', '', '', 'CDI', 1),
(117, '', 2, 'KIMBOROWICZ', 'Elodie', '', '', '', '', '', '', '', '', '15/10/2012', '', '', '', '', '', 'CDI', 1),
(118, '', 2, 'LAMY', 'Nathalie', '', '', '', '', '', '', '', '', '01/12/2003', '', '', '', '', '', 'CDI', 1),
(119, '', 1, 'LANNIER', 'Yann', '', '', '', '', '', '', '', '', '13/03/2010', '', '', '', '', '', 'CDI', 1),
(120, '', 2, 'LARCIER', 'Guylaine', '', '', '', '', '', '', '', '', '03/07/1997', '', '', '', '', '', 'CDI', 1),
(121, '', 2, 'LASNE', 'Allison', '', '', '', '', '', '', '', '', '02/07/2007', '', '', '', '', '', 'CDI', 1),
(122, '', 2, 'LATONNELLE', 'Anne', '', '', '', '', '', '', '', '', '11/12/2006', '', '', '', '', '', 'CDI', 1),
(123, '', 2, 'LE BORGNE', 'Celine', '', '', '', '', '', '', '', '', '12/01/2012', '', '', '', '', '', 'CDI', 1),
(124, '', 2, 'LE CALVEZ', 'Jocelyne', '', '', '', '', '', '', '', '', '08/10/2002', '', '', '', '', '', 'CDI', 1),
(125, '', 2, 'LE CALVEZ', 'Marine', '', '', '', '', '', '', '', '', '29/01/2012', '', '', '', '', '', 'CDI', 1),
(126, '', 2, 'LE GAL', 'Barbara', '', '', '', '', '', '', '', '', '27/05/2003', '', '', '', '', '', 'CDI', 1),
(127, '', 1, 'LE JEAN', 'Ga?l', '', '', '', '', '', '', '', '', '01/10/2012', '', '', '', '', '', 'CDI', 1),
(128, '', 2, 'LEBAILLY', 'Emilie', '', '', '', '', '', '', '', '', '07/09/2010', '', '', '', '', '', 'CDI', 1),
(129, '', 1, 'LEBLANC', 'Pascal', '', '', '', '', '', '', '', '', '01/07/2004', '', '', '', '', '', 'CDI', 1),
(130, '', 2, 'LECLERC', 'Caroline', '', '', '', '', '', '', '', '', '26/11/2009', '', '', '', '', '', 'CDI', 1),
(131, '', 2, 'LECOMTE', 'Ludivine', '', '', '', '', '', '', '', '', '09/02/2004', '', '', '', '', '', 'CDI', 1),
(132, '', 2, 'LEGER', 'Sonia', '', '', '', '', '', '', '', '', '06/12/1994', '', '', '', '', '', 'CDI', 1),
(133, '', 2, 'LELIEVRE', 'Isabelle', '', '', '', '', '', '', '', '', '10/07/1989', '', '', '', '', '', 'CDI', 1),
(134, '', 2, 'LENOGUE', 'Angelique', '', '', '', '', '', '', '', '', '05/11/2004', '', '', '', '', '', 'CDI', 1),
(135, '', 2, 'LESAGE', 'Catherine', '', '', '', '', '', '', '', '', '18/11/2000', '', '', '', '', '', 'CDI', 1),
(136, '', 1, 'LOISEL', 'Nicolas', '', '', '', '', '', '', '', '', '10/04/2003', '', '', '', '', '', 'CDI', 1),
(137, '', 2, 'LOPEZ DE CARVALHO', 'Nathalie', '', '', '', '', '', '', '', '', '10/06/2014', '', '', '', '', '', 'CDD', 1),
(138, '', 2, 'LORINQUER', 'Pauline', '', '', '', '', '', '', '', '', '07/07/2008', '', '', '', '', '', 'CDD', 1),
(139, '', 2, 'LORINQUER', 'Melanie', '', '', '', '', '', '', '', '', '14/11/2005', '', '', '', '', '', 'CDI', 1),
(140, '', 1, 'LUCAS', 'Jean Michel', '', '', '', '', '', '', '', '', '13/10/2008', '', '', '', '', '', 'CDI', 1),
(141, '', 2, 'MALINGE', 'Anicette', '', '', '', '', '', '', '', '', '27/01/2014', '', '', '', '', '', 'CDD', 1),
(142, '', 1, 'MARAUD', 'Philippe', '', '', '', '', '', '', '', '', '30/08/2010', '', '', '', '', '', 'CDI', 1),
(143, '', 2, 'MARTINEAU', 'Laure Anne', '', '', '', '', '', '', '', '', '04/01/2011', '', '', '', '', '', 'CDI', 1),
(144, '', 2, 'MAUDET', 'Delphine', '', '', '', '', '', '', '', '', '17/08/2009', '', '', '', '', '', 'CDI', 1),
(145, '', 2, 'MAUSSION', 'Christine', '', '', '', '', '', '', '', '', '16/11/1993', '', '', '', '', '', 'CDI', 1),
(146, '', 2, 'MBIDA', 'Martine', '', '', '', '', '', '', '', '', '16/01/1995', '', '', '', '', '', 'CDI', 1),
(147, '', 2, 'MEIGNAN', 'Claudia', '', '', '', '', '', '', '', '', '22/02/1996', '', '', '', '', '', 'CDI', 1),
(148, '', 2, 'MENANT', 'Sylvie', '', '', '', '', '', '', '', '', '04/02/2008', '', '', '', '', '', 'CDI', 1),
(149, '', 2, 'MENARD', 'Chloe', '', '', '', '', '', '', '', '', '23/04/2013', '', '', '', '', '', 'CDI', 1),
(150, '', 2, 'MENDONCA', 'Maria Fernanda', '', '', '', '', '', '', '', '', '01/02/1996', '', '', '', '', '', 'CDI', 1),
(151, '', 2, 'MERCEREAU', 'Aude', '', '', '', '', '', '', '', '', '05/03/2003', '', '', '', '', '', 'CDI', 1),
(152, '', 2, 'MERIAN', 'Gaelle', '', '', '', '', '', '', '', '', '19/09/2005', '', '', '', '', '', 'CDI', 1),
(153, '', 2, 'MEURIC', 'Fran?oise', '', '', '', '', '', '', '', '', '29/08/2013', '', '', '', '', '', 'CDD', 1),
(154, '', 2, 'MONNIER', 'Sarah', '', '', '', '', '', '', '', '', '07/08/2012', '', '', '', '', '', 'CDI', 1),
(155, '', 2, 'MOREAU', 'Sandra', '', '', '', '', '', '', '', '', '24/11/2008', '', '', '', '', '', 'CDI', 1),
(156, '', 2, 'MOREAU', 'Pascale', '', '', '', '', '', '', '', '', '06/06/2011', '', '', '', '', '', 'CDI', 1),
(157, '', 2, 'NASRI', 'Marion', '', '', '', '', '', '', '', '', '13/06/2003', '', '', '', '', '', 'CDI', 1),
(158, '', 1, 'OLIVEAU', 'Jean Rene', '', '', '', '', '', '', '', '', '18/12/1987', '', '', '', '', '', 'CDI', 1),
(159, '', 2, 'OLIVEIRA', 'Cecile', '', '', '', '', '', '', '', '', '12/05/2003', '', '', '', '', '', 'CDI', 1),
(160, '', 2, 'PASCUITO', 'Isabelle', '', '', '', '', '', '', '', '', '12/01/2008', '', '', '', '', '', 'CDD', 1),
(161, '', 1, 'PATAO', 'Armand', '', '', '', '', '', '', '', '', '25/06/2007', '', '', '', '', '', 'CDI', 1),
(162, '', 2, 'PECOT', 'Sandrine', '', '', '', '', '', '', '', '', '01/02/2002', '', '', '', '', '', 'CDI', 1),
(163, '', 2, 'PERDRIAU', 'Carine', '', '', '', '', '', '', '', '', '12/06/1998', '', '', '', '', '', 'CDI', 1),
(164, '', 2, 'PERDRIAU', 'Sophie', '', '', '', '', '', '', '', '', '09/04/1985', '', '', '', '', '', 'CDI', 1),
(165, '', 2, 'PETITEAU', 'Sarah', '', '', '', '', '', '', '', '', '25/03/2011', '', '', '', '', '', 'CDI', 1),
(166, '', 2, 'PICHERIT', 'Valerie', '', '', '', '', '', '', '', '', '22/10/1992', '', '', '', '', '', 'CDI', 1),
(167, '', 2, 'PIEL', 'Guylaine', '', '', '', '', '', '', '', '', '19/04/1991', '', '', '', '', '', 'CDI', 1),
(168, '', 2, 'PITHON', 'Adeline', '', '', '', '', '', '', '', '', '26/10/2005', '', '', '', '', '', 'CDI', 1),
(169, '', 1, 'PITULA', 'R?mi', '', '', '', '', '', '', '', '', '23/12/2013', '', '', '', '', '', 'CDD', 1),
(170, '', 2, 'ABID/PLANCHENAULT', 'Sylvie', '', '', '', '', '', '', '', '', '01/11/2004', '', '', '', '', '', 'CDI', 1),
(171, '', 2, 'POIROUX', 'Marie Helene', '', '', '', '', '', '', '', '', '30/03/1977', '', '', '', '', '', 'CDI', 1),
(172, '', 2, 'POUTREL', 'Sylvie', '', '', '', '', '', '', '', '', '22/11/2010', '', '', '', '', '', 'CDI', 1),
(173, '', 2, 'PRIOU', 'Julie', '', '', '', '', '', '', '', '', '15/03/2002', '', '', '', '', '', 'CDI', 1),
(174, '', 2, 'PRUD HOMME', 'Laurence', '', '', '', '', '', '', '', '', '09/09/2013', '', '', '', '', '', 'CDD', 1),
(175, '', 2, 'PRUDHOMME', 'Celine', '', '', '', '', '', '', '', '', '01/02/2003', '', '', '', '', '', 'CDI', 1),
(176, '', 2, 'RENAUD', 'Sandrine', '', '', '', '', '', '', '', '', '01/02/2013', '', '', '', '', '', 'CDI', 1),
(177, '', 1, 'RENAULT', 'Marc', '', '', '', '', '', '', '', '', '26/04/1976', '', '', '', '', '', 'CDI', 1),
(178, '', 2, 'RENAULT', 'Claire', '', '', '', '', '', '', '', '', '01/09/1975', '', '', '', '', '', 'CDI', 1),
(179, '', 1, 'REVEREAULT', 'John', '', '', '', '', '', '', '', '', '07/05/1997', '', '', '', '', '', 'CDI', 1),
(180, '', 2, 'REVEREAULT', 'Melanie', '', '', '', '', '', '', '', '', '09/02/1995', '', '', '', '', '', 'CDI', 1),
(181, '', 2, 'RICHARD', 'Francoise', '', '', '', '', '', '', '', '', '07/11/1996', '', '', '', '', '', 'CDI', 1),
(182, '', 2, 'RIPOCHE', 'Geraldine', '', '', '', '', '', '', '', '', '27/06/2004', '', '', '', '', '', 'CDI', 1),
(183, '', 2, 'RIVEREAU', 'Anne Sophie', '', '', '', '', '', '', '', '', '27/05/1994', '', '', '', '', '', 'CDI', 1),
(184, '', 2, 'ROBIN', 'Odile', '', '', '', '', '', '', '', '', '01/09/2013', '', '', '', '', '', 'CDD', 1),
(185, '', 2, 'ROUSSE', 'Maryvonne', '', '', '', '', '', '', '', '', '22/06/2005', '', '', '', '', '', 'CDI', 1),
(186, '', 2, 'ROUSSEAU', 'Alexia', '', '', '', '', '', '', '', '', '24/08/2012', '', '', '', '', '', 'CDD', 1),
(187, '', 2, 'ROYER', 'Catherine', '', '', '', '', '', '', '', '', '03/07/2012', '', '', '', '', '', 'CDI', 1),
(188, '', 1, 'SALAUD', 'Vivien', '', '', '', '', '', '', '', '', '03/12/2012', '', '', '', '', '', 'CDI', 1),
(189, '', 1, 'SAULOU', 'Guillaume', '', '', '', '', '', '', '', '', '02/07/2012', '', '', '', '', '', 'CDD', 1),
(190, '', 2, 'SEGARRA', 'Agnes', '', '', '', '', '', '', '', '', '03/07/1997', '', '', '', '', '', 'CDI', 1),
(191, '', 2, 'SEHAQUI', 'M Therese', '', '', '', '', '', '', '', '', '01/01/2004', '', '', '', '', '', 'CDI', 1),
(192, '', 2, 'SEURRE', 'Marie Jose', '', '', '', '', '', '', '', '', '08/08/2011', '', '', '', '', '', 'CDI', 1),
(193, '', 2, 'SOUALAH', 'Bahija', '', '', '', '', '', '', '', '', '01/03/1987', '', '', '', '', '', 'CDI', 1),
(194, '', 2, 'SOUCHARD', 'Marine', '', '', '', '', '', '', '', '', '30/08/2010', '', '', '', '', '', 'CDI', 1),
(195, '', 2, 'SOULET', 'Elodie', '', '', '', '', '', '', '', '', '08/07/2009', '', '', '', '', '', 'CDI', 1),
(196, '', 2, 'SOURISSEAU', 'Aurore', '', '', '', '', '', '', '', '', '14/01/2008', '', '', '', '', '', 'CDI', 1),
(197, '', 2, 'TAUBIN', 'Marine', '', '', '', '', '', '', '', '', '04/01/2012', '', '', '', '', '', 'CDI', 1),
(198, '', 2, 'TAUDON', 'Christine', '', '', '', '', '', '', '', '', '01/06/1985', '', '', '', '', '', 'CDI', 1),
(199, '', 2, 'TAUNAY', 'M Laure', '', '', '', '', '', '', '', '', '09/05/2003', '', '', '', '', '', 'CDI', 1),
(200, '', 2, 'TELLANGER', 'Axelle', '', '', '', '', '', '', '', '', '13/03/1989', '', '', '', '', '', 'CDI', 1),
(201, '', 2, 'TESSIE', 'Francoise', '', '', '', '', '', '', '', '', '25/07/1988', '', '', '', '', '', 'CDI', 1),
(202, '', 2, 'TESSIER', 'Florence', '', '', '', '', '', '', '', '', '14/02/2006', '', '', '', '', '', 'CDI', 1),
(203, '', 2, 'THEULIER', 'Laure', '', '', '', '', '', '', '', '', '03/09/1989', '', '', '', '', '', 'CDI', 1),
(204, '', 2, 'TIERCELIN', 'Charl?ne', '', '', '', '', '', '', '', '', '02/01/2012', '', '', '', '', '', 'CDI', 1),
(205, '', 2, 'TORREGROSSA', 'C?line', '', '', '', '', '', '', '', '', '12/12/2011', '', '', '', '', '', 'CDI', 1),
(206, '', 1, 'TOUDJI', 'Akouete Pierre', '', '', '', '', '', '', '', '', '13/12/2004', '', '', '', '', '', 'CDI', 1),
(207, '', 2, 'TREMBLAIS', 'Catherine', '', '', '', '', '', '', '', '', '13/03/1984', '', '', '', '', '', 'CDI', 1),
(208, '', 2, 'TROISPOILS', 'Anne', '', '', '', '', '', '', '', '', '06/04/1979', '', '', '', '', '', 'CDI', 1),
(209, '', 1, 'VENJEAN', 'Philippe', '', '', '', '', '', '', '', '', '05/01/2004', '', '', '', '', '', 'CDI', 1),
(210, '', 2, 'VIGAN', 'Corinne', '', '', '', '', '', '', '', '', '29/11/1999', '', '', '', '', '', 'CDI', 1),
(211, '', 1, 'VIVIEN', 'Herv?', '', '', '', '', '', '', '', '', '02/12/2013', '', '', '', '', '', 'CDI', 1),
(212, '', 2, 'VIVION', 'Beatrice', '', '', '', '', '', '', '', '', '16/11/2009', '', '', '', '', '', 'CDI', 1),
(213, '', 2, 'YEKULI', 'Aurelie', '', '', '', '', '', '', '', '', '17/11/2007', '', '', '', '', '', 'CDI', 1);

-- --------------------------------------------------------

--
-- Structure de la table `solde_caisse`
--

CREATE TABLE IF NOT EXISTS `solde_caisse` (
`idsoldecaisse` int(13) NOT NULL,
  `date_mouvement` varchar(255) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `type_mouvement` varchar(255) NOT NULL,
  `type_solde` varchar(255) NOT NULL,
  `libelle_mouvement` varchar(255) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `point_caisse` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `achat_presta`
--
ALTER TABLE `achat_presta`
 ADD PRIMARY KEY (`idachatpresta`);

--
-- Index pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
 ADD PRIMARY KEY (`idayantdroit`);

--
-- Index pour la table `bilan`
--
ALTER TABLE `bilan`
 ADD PRIMARY KEY (`idcasebilan`);

--
-- Index pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
 ADD PRIMARY KEY (`idbilletayantdroit`);

--
-- Index pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
 ADD PRIMARY KEY (`idbilletsalarie`);

--
-- Index pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
 ADD PRIMARY KEY (`idchargefixe`);

--
-- Index pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
 ADD PRIMARY KEY (`idcomptabalance`);

--
-- Index pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
 ADD PRIMARY KEY (`idcomptabanque`);

--
-- Index pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
 ADD PRIMARY KEY (`idcptbilanactif`);

--
-- Index pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
 ADD PRIMARY KEY (`idcptbilanpassif`);

--
-- Index pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
 ADD PRIMARY KEY (`idcomptacaisse`);

--
-- Index pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
 ADD PRIMARY KEY (`idcomptacompte`);

--
-- Index pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
 ADD PRIMARY KEY (`idcomptalivret`);

--
-- Index pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
 ADD PRIMARY KEY (`idcomptamvm`);

--
-- Index pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
 ADD PRIMARY KEY (`idcomptaplan`);

--
-- Index pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
 ADD PRIMARY KEY (`idresultat`);

--
-- Index pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
 ADD PRIMARY KEY (`idetablissement`);

--
-- Index pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
 ADD PRIMARY KEY (`idcptresultat`);

--
-- Index pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
 ADD PRIMARY KEY (`idfamilleprestation`);

--
-- Index pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
 ADD PRIMARY KEY (`idlignebilletayantdroit`);

--
-- Index pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
 ADD PRIMARY KEY (`idlignebilletsalarie`);

--
-- Index pour la table `log_systeme`
--
ALTER TABLE `log_systeme`
 ADD PRIMARY KEY (`idlog`);

--
-- Index pour la table `maj`
--
ALTER TABLE `maj`
 ADD PRIMARY KEY (`idmaj`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
 ADD PRIMARY KEY (`iduser`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
 ADD PRIMARY KEY (`idmodule`);

--
-- Index pour la table `prestation`
--
ALTER TABLE `prestation`
 ADD PRIMARY KEY (`idprestation`);

--
-- Index pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
 ADD PRIMARY KEY (`idproduitfixe`);

--
-- Index pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
 ADD PRIMARY KEY (`idregbilletayantdroit`);

--
-- Index pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
 ADD PRIMARY KEY (`idregbilletsalarie`);

--
-- Index pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
 ADD PRIMARY KEY (`idremisebanque`);

--
-- Index pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
 ADD PRIMARY KEY (`idremisebanquechq`);

--
-- Index pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
 ADD PRIMARY KEY (`idremisebanqueesp`);

--
-- Index pour la table `salarie`
--
ALTER TABLE `salarie`
 ADD PRIMARY KEY (`idsalarie`);

--
-- Index pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
 ADD PRIMARY KEY (`idsoldecaisse`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `achat_presta`
--
ALTER TABLE `achat_presta`
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=207;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=288;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=288;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `log_systeme`
--
ALTER TABLE `log_systeme`
MODIFY `idlog` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `maj`
--
ALTER TABLE `maj`
MODIFY `idmaj` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=214;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
