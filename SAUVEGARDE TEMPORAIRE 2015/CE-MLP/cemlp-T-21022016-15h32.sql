-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2016 à 15:32
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cemlp`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat_presta`
--

CREATE TABLE `achat_presta` (
  `idachatpresta` int(13) NOT NULL,
  `date_achat` varchar(255) NOT NULL,
  `idprestation` int(13) NOT NULL,
  `qte` varchar(255) NOT NULL,
  `total_achat` varchar(255) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ayant_droit`
--

CREATE TABLE `ayant_droit` (
  `idayantdroit` int(13) NOT NULL,
  `idsalarie` int(13) NOT NULL,
  `nom_ayant_droit` varchar(255) NOT NULL,
  `prenom_ayant_droit` varchar(255) NOT NULL,
  `date_naissance_ayant_droit` varchar(255) NOT NULL,
  `solde_ayant_droit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ayant_droit`
--

INSERT INTO `ayant_droit` (`idayantdroit`, `idsalarie`, `nom_ayant_droit`, `prenom_ayant_droit`, `date_naissance_ayant_droit`, `solde_ayant_droit`) VALUES
(82, 109, 'ADAM', 'LILIAN', '29/11/1999', '161'),
(83, 116, 'BACHELOT', 'ANTOINE', '12/07/2006', '161'),
(84, 116, 'BACHELOT', 'FABIEN', '12/06/2004', '161'),
(85, 83, 'BADOUR', 'ALYMA', '29/03/2005', '161'),
(86, 126, 'BOUDAUD', 'AXEL', '28/04/2012', '161'),
(87, 126, 'BOUDAUD', 'ELISA', '23/09/2007', '161'),
(88, 126, 'BOUDAUD', 'TYPHAINE', '05/09/2003', '161'),
(89, 128, 'BOUFAQOUS', 'ADAM', '17/04/2002', '161'),
(90, 128, 'BOUFAQOUS', 'MARIA', '27/12/2004', '161'),
(91, 123, 'BOUVIER', 'CLEMENCE', '06/05/2002', '161'),
(92, 123, 'BOUVIER', 'MANON', '30/09/1999', '161'),
(93, 77, 'BRUNET  (AUDIC)', 'CORENTIN', '10/09/2001', '161'),
(94, 72, 'CARTRON', 'JULIETTE', '24/06/2004', '161'),
(95, 72, 'CARTRON', 'THEOPHILE', '12/09/2000', '161'),
(96, 159, 'CERIBAS', 'JREM', '15/02/2005', '161'),
(97, 159, 'CERIBAS', 'NEBI', '06/02/2002', '161'),
(98, 159, 'CERIBAS', 'YELIZ', '18/05/1999', '161'),
(99, 154, 'CHAPLAIN THOMAS', 'ANTHONYN', '18/06/2014', '161'),
(100, 92, 'CHOLLET', 'LOUNA CHLOE', '30/06/1999', '161'),
(101, 92, 'CHOLLET', 'TOM BASILE', '16/01/2008', '161'),
(102, 130, 'CLEMENT', 'ELEA', '17/05/2010', '161'),
(103, 130, 'CLEMENT', 'NOLAN', '13/07/2008', '161'),
(104, 130, 'CLOUET', 'NATHAN', '12/11/2013', '161'),
(105, 106, 'COSNIER', 'JADE MARILYNE', '23/12/2008', '161'),
(106, 106, 'COSNIER', 'LORENE', '09/07/2003', '161'),
(107, 111, 'COUINET', 'ANNA', '17/09/2013', '161'),
(108, 111, 'COUINET', 'LALIE', '25/07/2006', '161'),
(109, 111, 'COUINET', 'MANON', '27/02/2010', '161'),
(110, 90, 'CROS MIGOT', 'FLORENT VALENTIN', '18/06/2001', '161'),
(111, 90, 'CROS MIGOT', 'LAURINE OCEANE', '15/10/2004', '161'),
(112, 90, 'CROS MIGOT', 'VALENTINE ', '02/06/2011', '161'),
(113, 145, 'DAUCHY', 'ANTHONY', '01/07/2000', '161'),
(114, 100, 'DELPHIN', 'AXELLE', '06/03/2002', '161'),
(115, 100, 'DELPHIN', 'LILI', '16/12/2004', '161'),
(116, 100, 'DELPHIN', 'NYLA', '25/08/2007', '161'),
(117, 145, 'DINGREVILLE RICHOMME', 'LEONIE', '16/06/2005', '161'),
(118, 113, 'DOUILLY', 'CLEMENT', '13/04/2001', '161'),
(119, 117, 'FAUCHEUX', 'OPHELIE', '15/04/2000', '161'),
(120, 120, 'FOURNIER', 'LAURA', '16/03/2001', '161'),
(121, 120, 'FOURNIER', 'LILY ROSE', '08/01/2001', '161'),
(122, 120, 'FOURNIER', 'OCEANE', '03/09/2005', '161'),
(123, 120, 'FOURNIER ', 'SAMUEL', '21/01/2006', '161'),
(124, 139, 'GALLET', 'ETHAN', '05/12/2003', '161'),
(125, 131, 'GARNIER', 'MATHIS', '02/01/2004', '161'),
(126, 131, 'GARNIER', 'NATHALENA', '03/06/2001', '161'),
(127, 131, 'GARNIER', 'NOA', '04/02/2008', '161'),
(128, 114, 'GAULTIER', 'MAEVA', '22/01/2002', '161'),
(129, 76, 'GUERIN', 'DANNY', '04/12/2006', '161'),
(130, 76, 'GUERIN', 'KENNY', '17/09/2002', '161'),
(131, 101, 'GUERTIN', 'LEON', '07/03/2004', '161'),
(132, 102, 'HANQUART', 'Alice', '30/12/2009', '161'),
(133, 102, 'HANQUART', 'Sacha', '08/03/2007', '161'),
(134, 97, 'HAULBERT', 'AMANDINE', '23/05/2000', '161'),
(135, 97, 'HAULBERT', 'MATEO', '30/09/2002', '161'),
(136, 142, 'IDDER', 'Ilyes', '27/12/2008', '161'),
(137, 142, 'IDDER', 'LINA', '31/08/2011', '161'),
(138, 86, 'JANIN', 'ANNA', '25/03/2009', '161'),
(139, 86, 'JANIN', 'LILOU', '10/02/2006', '161'),
(140, 86, 'JANIN', 'NOA', '25/03/2009', '161'),
(141, 86, 'JANIN', 'TOM', '19/02/2004', '161'),
(142, 146, 'KERBOURCH', 'ERWANN', '11/05/2001', '161'),
(143, 146, 'KERBOURCH', 'NOLWENN', '17/05/2003', '161'),
(144, 133, 'KHALIL  (LEHOREAU)', 'KAHINA', '15/02/2006', '161'),
(145, 75, 'LAURIOU', 'CAMILLE', '17/12/2000', '161'),
(146, 133, 'LEHOREAU', 'LINDSAY', '22/07/1999', '161'),
(147, 140, 'LUBIN', 'CYNTHIA', '09/03/1999', '161'),
(148, 140, 'LUBIN', 'ELLIOT TAO', '19/06/2014', '161'),
(149, 140, 'LUBIN', 'NAYA', '16/03/2011', '161'),
(150, 103, 'MESLET', 'LISA', '21/06/1999', '161'),
(151, 150, 'MILON', 'LEANE', '27/11/2007', '161'),
(152, 151, 'NIANGORAN', 'AIME AMANI', '27/11/2009', '161'),
(153, 151, 'NIANGORAN', 'ANGELINE', '13/08/2014', '161'),
(154, 151, 'NIANGORAN', 'ELIE', '04/11/2011', '161'),
(155, 151, 'NIANGORAN', 'ISMAEL PIERRE ANIS', '22/07/2002', '161'),
(156, 151, 'NIANGORAN', 'NATHAN LUC ANGE', '25/11/2012', '161'),
(157, 153, 'PASCAL', 'Malya', '10/06/2004', '161'),
(158, 153, 'PASCAL', 'Melissa', '06/08/2001', '161'),
(159, 124, 'PECOT', 'Juliette', '31/08/2006', '161'),
(160, 124, 'PECOT', 'Lilou', '31/08/2006', '161'),
(161, 115, 'RICHOMME', 'Leonie', '16/06/2005', '161'),
(162, 143, 'ROUAULT', 'CLEA', '29/04/2009', '161'),
(163, 143, 'ROUAULT', 'EMY', '30/06/2012', '161'),
(164, 104, 'VALLEE', 'LIAM', '31/12/2010', '161'),
(165, 104, 'VALLEE', 'MARIE', '01/08/2005', '161'),
(166, 105, 'VERITE GUERRIAU', 'MATTEO', '29/05/2002', '161'),
(167, 109, 'ADAM STEPHANE ', 'ALLOCATION LOISIR', '', '161'),
(168, 99, 'ARMOURDOM LAURENT', 'ALLOCATION LOISIR', '', '161'),
(169, 106, 'COSNIER CHRISTOPHE ', 'ALLOCATION LOISIRS', '', '161'),
(170, 107, 'FOUGERI ANNE', 'ALLOCATION LOISIRS', '', '161'),
(171, 108, 'MARTIN PATRICIA', 'ALLOCATION LOISIRS', '', '161'),
(172, 110, 'BRANCHEREAU HERVE', 'ALLOCATION LOISIRS', '', '161'),
(173, 111, 'COUINET SOLEN', 'ALLOCATION LOISIRS', '', '161'),
(174, 112, 'DAVID ARMEL', 'ALLOCATION LOISIRS', '', '161'),
(175, 113, 'DOUILLY OLIVIER', 'ALLOCATION LOISIRS', '', '161'),
(176, 114, 'GAULTIER SEBASTIEN', 'ALLOCATION LOISIRS', '', '161'),
(177, 115, 'RICHOMME HERVE', 'ALLOCATION LOISIRS', '', '161'),
(178, 116, 'BACHELOT CHRISTELLE', 'ALLOCATION LOISIRS', '', '161'),
(179, 117, 'FAUCHEUX FREDDY', 'ALLOCATION LOISIRS', '', '161'),
(180, 118, 'FRESNEAU VERONIQUE', 'ALLOCATION LOISIRS', '', '161'),
(181, 119, 'GUERIN HUGUETTE', 'ALLOCATION LOISIRS', '', '161'),
(182, 120, 'FOUNIER MARIO', 'ALLOCATION LOISIRS', '', '161'),
(183, 121, 'AUDIC GAELLE', 'ALLOCATION LOISIRS', '', '161'),
(184, 122, 'GREFFIER ARNAUD', 'ALLOCATION LOISIRS', '', '161'),
(185, 123, 'BOUVIER FREDERIC', 'ALLOCATION LOISIRS', '', '161'),
(186, 124, 'PECOT THIERRY', 'ALLOCATION LOISIRS', '', '161'),
(187, 125, 'CARUSO SYLVANA', 'ALLOCATION LOISIRS', '', '161'),
(188, 126, 'BOUDEAU VIRGINIE', 'ALLOCATION LOISIRS', '', '161'),
(189, 127, 'DASYLVA JEAN PIERRE', 'ALLOCATION LOISIRS', '', '161'),
(190, 128, 'BOUFAQOUS ABDELJALIL', 'ALLOCATION LOISIRS', '', '161'),
(191, 129, 'CLEMENT CHRISTOPHE', 'ALLOCATION LOISIRS', '', '161'),
(192, 130, 'CLEMENT OLIVIER', 'ALLOCATION LOISIRS', '', '161'),
(193, 131, 'GARNIER DAVID', 'ALLOCATION LOISIRS', '', '161'),
(194, 132, 'ONILLON PATRICIA', 'ALLOCATION LOISIRS', '', '161'),
(195, 133, 'LEHOREAU WADA VIRGINIE', 'ALLOCATION LOISIRS', '', '161'),
(196, 134, 'BLEJAN CHRISTIAN', 'ALLOCATION LOISIRS', '', '161'),
(197, 135, 'RAGOT VIRGINIE', 'ALLOCATION LOISIRS', '', '161'),
(198, 136, 'BERGERET STEPHANE', 'ALLOCATION LOISIRS', '', '161'),
(199, 137, 'POUPAULT ISABELLE', 'ALLOCATION LOISIRS', '', '161'),
(200, 138, 'CHAPEAU OLIVIER', 'ALLOCATION LOISIRS', '', '161'),
(201, 139, 'GALLET STEPHANE', 'ALLOCATION LOISIRS', '', '161'),
(202, 140, 'LUBIN MICHEL', 'ALLOCATION LOISIRS', '', '161'),
(203, 141, 'GUYADER YOHANN', 'ALLOCATION LOISIRS', '', '161'),
(204, 142, 'IDDER MEHDI', 'ALLOCATION LOISIRS', '', '161'),
(205, 143, 'ROUAULT ANTHONY', 'ALLOCATION LOISIRS', '', '161'),
(206, 88, 'PILLARD ISABELLE', 'ALLOCATION LOISIRS', '', '161'),
(207, 89, 'KOCH NATHALIE', 'ALLOCATION LOISIRS', '', '161'),
(208, 90, 'CROS SEVERINE', 'ALLOCATION LOISIRS', '', '161'),
(209, 91, 'ROUFFIAC CHRISTOPHE', 'ALLOCATION LOISIRS', '', '161'),
(210, 92, 'SUREAU LYDIE', 'ALLOCATION LOISIRS', '', '161'),
(211, 93, 'PIOU BENOIT', 'ALLOCATION LOISIRS', '', '161'),
(212, 94, 'JOUBERT KARINE', 'ALLOCATION LOISIRS', '', '161'),
(213, 95, 'DESMARS VERONIQUE', 'ALLOCATION LOISIRS', '', '161'),
(214, 96, 'DAVY ANTOINE', 'ALLOCATION LOISIRS', '', '161'),
(215, 97, 'HAULBERT VINCENT', 'ALLOCATION LOISIRS', '', '161'),
(216, 98, 'BOIVIN VERONIQUE', 'ALLOCATION LOISIRS', '', '161'),
(217, 100, 'DELPHIN SEBASTIEN', 'ALLOCATION LOISIRS', '', '161'),
(218, 101, 'GUERTIN NOEL ', 'ALLOCATION LOISIRS', '', '161'),
(219, 102, 'HANQUART SANDRA', 'ALLOCATION LOISIRS', '', '161'),
(220, 103, 'MESLET THIERRY', 'ALLOCATION LOISIRS', '', '161'),
(221, 104, 'VALLEE KARINE', 'ALLOCATION LOISIRS', '', '161'),
(222, 105, 'GUERRIAU MALIKA ', 'ALLOCATION LOISIRS', '', '161'),
(223, 72, 'CARTRON OLIVIER', 'ALLOCATION LOISIRS', '', '161'),
(224, 73, 'DROUIN DIDIER', 'ALLOCATION LOISIRS', '', '161'),
(225, 74, 'MARCHAIS LAURENT', 'ALLOCATION LOISIRS', '', '161'),
(226, 75, 'LAURIOU MICKAEL', 'ALLOCATION LOISIRS', '', '161'),
(227, 76, 'GUERIN JOHNNY', 'ALLOCATION LOISIRS', '', '161'),
(228, 77, 'BRUNET DOMINIQUE', 'ALLOCATION LOISIRS', '', '161'),
(229, 78, 'POIRRIER THIERRY', 'ALLOCATION LOISIRS', '', '161'),
(230, 79, 'NEGRI', 'BRIGITTE', '', '161'),
(231, 80, 'BAULU CATHERINE', 'ALLOCATION LOISIRS', '', '161'),
(232, 81, 'MORTIER FREDERIC', 'ALLOCATION LOISIRS', '', '161'),
(233, 82, 'ROUSSEL PASCAL', 'ALLOCATION LOISIRS', '', '161'),
(234, 83, 'BADOUR STEPHANE', 'ALLOCATION LOISIRS', '', '161'),
(235, 84, 'DAGUENE FRANCOISE', 'ALLOCATION LOISIRS', '', '161'),
(236, 85, 'MACKOWSKI CORINE ', 'ALLOCATION LOISIRS', '', '161'),
(237, 86, 'JANIN SEBASTIEN', 'ALLOCATION LOISIRS', '', '161'),
(238, 87, 'CHALOPIN BERNADETTE', 'ALLOCATION LOISIRS', '', '161'),
(239, 144, 'MARSAULT FRANCOISE', 'ALLOCATION LOISIRS', '', '161'),
(240, 145, 'DINGREVILLE ALINE', 'ALLOCATION LOISIRS', '', '161'),
(241, 147, 'MOTTEAU THIERRY ', 'ALLOCATION LOISIRS', '', '161'),
(242, 148, 'CHAFFIN MIREILLE', 'ALLOCATION LOISIRS', '', '161'),
(243, 149, 'CHESNEL BRIGITTE ', 'ALLOCATION LOISIRS', '', '161'),
(244, 150, 'CLOUET EMILIE', 'ALLOCATION LOISIRS', '', '161'),
(245, 151, 'NIANGORAN OURA SEVERIN', 'ALLOCATION LOISIRS', '', '161'),
(246, 152, 'DAGUER STEPHANE', 'ALLOCATION LOISIRS', '', '161'),
(247, 153, 'PASCAL LIONEL', 'ALLOCATION LOISIRS', '', '161'),
(248, 154, 'CHAPLAIN ANGELINA', 'ALLOCATION LOISIRS', '', '161'),
(249, 155, 'CRIBIER EMILIE', 'ALLOCATION LOISIRS', '', '161'),
(250, 156, 'SALAUN ANDRE', 'ALLOCATION LOISIRS', '', '161'),
(251, 157, 'BARRIERES AMANDINE', 'ALLOCATION LOISIRS', '', '161'),
(252, 158, 'PERGER ASTRID ', 'ALLOCATION LOISIRS', '', '161'),
(253, 159, 'CERIBAS FILIZ', 'ALLOCATION LOISIRS', '', '161'),
(254, 146, 'kerbourch', 'allocation loisirs', '', '161'),
(255, 155, 'cribier', 'leane', '09-11-2015', '161'),
(256, 106, 'COSNIER', 'PAIGE', '14-01-2005', '161'),
(257, 150, 'CLOUET', 'NATHAN', '12-11-2013', '161');

-- --------------------------------------------------------

--
-- Structure de la table `bilan`
--

CREATE TABLE `bilan` (
  `idcasebilan` int(13) NOT NULL,
  `type_bilan` int(1) NOT NULL,
  `libelle_mouvement` varchar(255) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `billet_ayant_droit`
--

CREATE TABLE `billet_ayant_droit` (
  `idbilletayantdroit` int(13) NOT NULL,
  `idayantdroit` int(13) NOT NULL,
  `date_vente` varchar(255) NOT NULL,
  `idtypetraitement` int(13) NOT NULL,
  `total_vente` varchar(255) NOT NULL,
  `etat_facture` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `decremente` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `billet_n_ad`
--

CREATE TABLE `billet_n_ad` (
  `idbilletnad` int(13) NOT NULL,
  `idayantdroit` int(13) NOT NULL,
  `date_vente` varchar(255) NOT NULL,
  `idtypetraitement` int(13) NOT NULL,
  `total_vente` varchar(255) NOT NULL,
  `etat_facture` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `billet_n_salarie`
--

CREATE TABLE `billet_n_salarie` (
  `idbilletnsalarie` int(13) NOT NULL,
  `idsalarie` int(13) NOT NULL,
  `date_vente` varchar(255) NOT NULL,
  `idtypetraitement` int(13) NOT NULL,
  `total_vente` varchar(255) NOT NULL,
  `etat_billet_salarie` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `billet_salarie`
--

CREATE TABLE `billet_salarie` (
  `idbilletsalarie` int(13) NOT NULL,
  `idsalarie` int(13) NOT NULL,
  `date_vente` varchar(255) NOT NULL,
  `idtypetraitement` int(13) NOT NULL,
  `total_vente` varchar(255) NOT NULL,
  `etat_billet_salarie` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `decremente` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE `charge_fixe` (
  `idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compta_balance`
--

CREATE TABLE `compta_balance` (
  `idcomptabalance` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `compta_banque` (
  `idcomptabanque` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `date_bq` varchar(255) NOT NULL,
  `desc_bq` varchar(255) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE `compta_bilan_actif` (
  `idcptbilanactif` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE `compta_bilan_passif` (
  `idcptbilanpassif` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compta_caisse`
--

CREATE TABLE `compta_caisse` (
  `idcomptacaisse` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `date_caisse` varchar(255) NOT NULL,
  `desc_caisse` varchar(255) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE `compta_compte` (
  `idcomptacompte` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compta_livret`
--

CREATE TABLE `compta_livret` (
  `idcomptalivret` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `date_livret` varchar(255) NOT NULL,
  `desc_livret` varchar(25) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compta_mvm`
--

CREATE TABLE `compta_mvm` (
  `idcomptamvm` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `date_mvm` varchar(255) NOT NULL,
  `desc_mvm` varchar(255) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compta_plan`
--

CREATE TABLE `compta_plan` (
  `idcomptaplan` int(13) NOT NULL,
  `type_plan` int(1) NOT NULL,
  `nom_origine` varchar(255) NOT NULL,
  `nom_util` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compta_plan`
--

INSERT INTO `compta_plan` (`idcomptaplan`, `type_plan`, `nom_origine`, `nom_util`) VALUES
(1, 1, 'Caisse', 'Caisse'),
(2, 1, 'Poste', ''),
(3, 1, 'Banque', 'Banque'),
(4, 1, 'Cr&eacute;ances Clients', ''),
(5, 1, 'Impots Pr&eacute;alable', ''),
(6, 1, 'Stock de Marchandises', ''),
(7, 1, 'Autre actif circulant 1', 'Compte de Pret'),
(8, 1, 'Autre actif circulant 2', 'Compte sur Livret'),
(9, 1, 'Autre actif circulant 3', ''),
(10, 1, 'Autre actif circulant  4', ''),
(11, 1, 'Machines et appareils', ''),
(12, 1, 'Mobiliers et installations', ''),
(13, 1, 'Infrastructure informatique', ''),
(14, 1, 'V&eacute;hicules', ''),
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
(28, 2, 'Capital', 'Capital'),
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
(44, 4, 'Autre Charge 1', 'Charges Divers'),
(45, 4, 'Autre Charge 2', ''),
(46, 5, 'Salaires', 'Salaires'),
(47, 5, 'Charges Sociales', 'Charges sociales'),
(48, 5, 'Autre charge de personnel 1', 'Honoraires'),
(49, 5, 'Autre charge de personnel 2', ''),
(50, 6, 'Loyer', 'Frais Taxes'),
(51, 6, 'Frais de V&eacute;hicules', 'Frais de dÃ©placements'),
(52, 6, 'Entretien et r&eacute;parations', 'Entretien et rÃ©parations'),
(53, 6, 'Frais d''exp&eacute;dition', 'Fournitures de bureaux'),
(54, 6, 'Assurances', 'Assurances'),
(55, 6, 'Electricit&eacute;, Gaz, etc...', 'Abonnements'),
(56, 6, 'Frais d''administration', ''),
(57, 6, 'T&eacute;l&eacute;phone, fax, internet', 'TÃ©lÃ©phone, fax, internet'),
(58, 6, 'Publicit&eacute;', 'Agios'),
(59, 6, 'Interet-charges, Frais Bancaires', 'Frais bancaires'),
(60, 6, 'Amortissements', 'Achats de matÃ©riel et logiciels informatiques'),
(61, 6, 'Autre Charge d''exploitation 1', 'Divers'),
(62, 6, 'Autre Charge d''exploitation 2', 'FRAIS HOTELIERS'),
(63, 6, 'Autre Charge d''exploitation 3', 'FRAIS RESTAURATION'),
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
-- Structure de la table `compta_pret`
--

CREATE TABLE `compta_pret` (
  `idcomptapret` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `date_pret` varchar(255) NOT NULL,
  `desc_pret` varchar(255) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compta_resultat`
--

CREATE TABLE `compta_resultat` (
  `idresultat` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `config_etablissement`
--

CREATE TABLE `config_etablissement` (
  `idetablissement` int(13) NOT NULL,
  `nom_etablissement` varchar(255) NOT NULL,
  `remise_salarie` varchar(255) NOT NULL,
  `remise_ayant_droit` varchar(255) NOT NULL,
  `prefix_achat` varchar(255) NOT NULL,
  `prefix_vente` varchar(255) NOT NULL,
  `num_license` varchar(255) NOT NULL,
  `date_derniere_cloture` varchar(255) NOT NULL,
  `date_prochaine_cloture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `config_etablissement`
--

INSERT INTO `config_etablissement` (`idetablissement`, `nom_etablissement`, `remise_salarie`, `remise_ayant_droit`, `prefix_achat`, `prefix_vente`, `num_license`, `date_derniere_cloture`, `date_prochaine_cloture`) VALUES
(1, 'COMITE D''ENTREPRISE MLP', '0', '0', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `cpt_resultat`
--

CREATE TABLE `cpt_resultat` (
  `idcptresultat` int(11) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `date_mouvement` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE `famille_prestation` (
  `idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `famille_prestation`
--

INSERT INTO `famille_prestation` (`idfamilleprestation`, `designation_famille`) VALUES
(48, 'Actions Aides Vacances'),
(49, 'Actions diverses'),
(54, 'Mobil Home'),
(55, 'cin&eacute;ma '),
(56, 'CADEAUX'),
(57, 'cineville'),
(58, 'Bons d''achat No&euml;l');

-- --------------------------------------------------------

--
-- Structure de la table `ligne_billet_ayant_droit`
--

CREATE TABLE `ligne_billet_ayant_droit` (
  `idlignebilletayantdroit` int(13) NOT NULL,
  `idbilletayantdroit` int(13) NOT NULL,
  `idprestation` int(13) NOT NULL,
  `qte` varchar(255) NOT NULL,
  `part_salarie` varchar(255) NOT NULL,
  `part_ce` varchar(255) NOT NULL,
  `hors_quota` int(1) NOT NULL,
  `commentaire` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ligne_billet_n_ad`
--

CREATE TABLE `ligne_billet_n_ad` (
  `idlignebilletnad` int(13) NOT NULL,
  `idbilletnad` int(13) NOT NULL,
  `nom_prestation` varchar(255) NOT NULL,
  `part_salarie` varchar(255) NOT NULL,
  `part_ce` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ligne_billet_n_salarie`
--

CREATE TABLE `ligne_billet_n_salarie` (
  `idlignebilletnsalarie` int(13) NOT NULL,
  `idbilletnsalarie` int(13) NOT NULL,
  `nom_prestation` varchar(255) NOT NULL,
  `part_salarie` varchar(255) NOT NULL,
  `part_ce` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ligne_billet_salarie`
--

CREATE TABLE `ligne_billet_salarie` (
  `idlignebilletsalarie` int(13) NOT NULL,
  `idbilletsalarie` int(13) NOT NULL,
  `idprestation` int(13) NOT NULL,
  `qte` varchar(255) NOT NULL,
  `part_salarie` varchar(255) NOT NULL,
  `part_ce` varchar(255) NOT NULL,
  `hors_quota` int(1) NOT NULL,
  `commentaire` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `log_systeme`
--

CREATE TABLE `log_systeme` (
  `idlog` int(13) NOT NULL,
  `date_log` varchar(255) NOT NULL,
  `heure_log` varchar(255) NOT NULL,
  `libelle_log` varchar(255) NOT NULL,
  `etat_log` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `maj`
--

CREATE TABLE `maj` (
  `idmaj` int(13) NOT NULL,
  `version_latest` varchar(255) NOT NULL,
  `build` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `maj`
--

INSERT INTO `maj` (`idmaj`, `version_latest`, `build`) VALUES
(5, '1.9.9', '210216-EVO');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `iduser` int(13) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass_md5` varchar(255) NOT NULL,
  `groupe` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`iduser`, `login`, `pass_md5`, `groupe`) VALUES
(1, 'administrateur', '882baf28143fb700b388a87ef561a6e5', 1),
(5, 'MLP49', '9a5ce07dc05f6301a793524079a47491', 1);

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `idmodule` int(13) NOT NULL,
  `designation_module` varchar(255) NOT NULL,
  `etat_module` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `module`
--

INSERT INTO `module` (`idmodule`, `designation_module`, `etat_module`) VALUES
(2, 'solde_salarie', '1'),
(3, 'vente_direct', '1'),
(4, 'decrement_solde', '1');

-- --------------------------------------------------------

--
-- Structure de la table `prestation`
--

CREATE TABLE `prestation` (
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
  `hors_quota` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`) VALUES
(84, 48, 'ANCV', '01-01-2015', '31-12-2015', '0', '10', '10', '1000', '0', 0),
(85, 49, 'CHARLIE HEBDO', '01-01-2015', '31-12-2015', '3', '0', '3', '50', '0', 0),
(86, 54, 'Mobil Home 140', '01-01-2015', '01-10-2015', '140', '0', '140', '50', '0', 0),
(87, 54, 'Mobil home 120', '', '', '120', '0', '120', '1', '0', 0),
(88, 49, 'vente parfums', '01-01-2015', '16-12-2015', '0.10', '0', '0.1', '100000', '0', 0),
(89, 49, 'billeterie laser games', '01-01-2015', '31-12-2015', '7', '0', '7', '10', '7', 0),
(90, 49, 'bowling 9,5', '01-01-2015', '31-12-2015', '9.5', '0', '9.5', '3', '3', 0),
(91, 49, 'bowling 6,40', '01-01-2015', '08-06-2015', '6.4', '0', '6.4', '9', '9', 0),
(92, 49, 'bowling 8,90', '01-01-2015', '08-06-2015', '8.90', '0', '8.9', '4', '4', 0),
(93, 55, 'cin&eacute;ma 2015', '01-01-2015', '15-04-2015', '6.00', '1.9', '7.9', '100', '0', 0),
(94, 49, 'PAPEA', '17-07-2015', '25-09-2016', '12', '2', '14', '20', '7', 0),
(95, 56, 'Concours de boules', '01-08-2015', '30-09-2015', '0', '1', '1', '1000', '0', 0),
(96, 55, 'CINEMA 8.10', '29-09-2015', '31-05-2016', '6', '2.10', '8.1', '100', '67', 0),
(97, 57, 'cineville', '10-11-2015', '21-07-2016', '5', '1.80', '6.8', '1000', '26', 0),
(98, 58, 'Noel des Adultes', '', '31-12-2015', '0', '40', '40', '7', '0', 0),
(99, 58, 'Noel des Enfants', '', '31-12-2015', '0', '40', '40', '7', '0', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE `produit_fixe` (
  `idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reg_billet_ayant_droit`
--

CREATE TABLE `reg_billet_ayant_droit` (
  `idregbilletayantdroit` int(13) NOT NULL,
  `idbilletayantdroit` int(13) NOT NULL,
  `type_reglement` int(1) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `banque_chq` varchar(255) NOT NULL,
  `porteur_chq` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL,
  `pointe` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reg_billet_n_ad`
--

CREATE TABLE `reg_billet_n_ad` (
  `idregbilletnad` int(13) NOT NULL,
  `idbilletnad` int(13) NOT NULL,
  `type_reglement` int(1) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `banque_chq` varchar(255) NOT NULL,
  `porteur_chq` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL,
  `pointe` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reg_billet_n_salarie`
--

CREATE TABLE `reg_billet_n_salarie` (
  `idregbilletnsalarie` int(13) NOT NULL,
  `idbilletnsalarie` int(13) NOT NULL,
  `type_reglement` int(1) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `banque_chq` varchar(255) NOT NULL,
  `porteur_chq` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL,
  `pointe` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reg_billet_salarie`
--

CREATE TABLE `reg_billet_salarie` (
  `idregbilletsalarie` int(13) NOT NULL,
  `idbilletsalarie` int(13) NOT NULL,
  `type_reglement` int(1) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `banque_chq` varchar(255) NOT NULL,
  `porteur_chq` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL,
  `pointe` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE `reg_remb_ayant_droit` (
  `idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE `reg_remb_salarie` (
  `idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `remb_ayant_droit`
--

CREATE TABLE `remb_ayant_droit` (
  `idrembayantdroit` int(13) NOT NULL,
  `idayantdroit` int(13) NOT NULL,
  `prestation` varchar(255) NOT NULL,
  `date_vente` varchar(255) NOT NULL,
  `montant_prestation` varchar(255) NOT NULL,
  `part_ce` varchar(255) NOT NULL,
  `etat_facture` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `remb_salarie`
--

CREATE TABLE `remb_salarie` (
  `idrembsalarie` int(13) NOT NULL,
  `idsalarie` int(13) NOT NULL,
  `prestation` varchar(255) NOT NULL,
  `date_vente` varchar(255) NOT NULL,
  `montant_prestation` varchar(255) NOT NULL,
  `part_ce` varchar(255) NOT NULL,
  `etat_facture` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque`
--

CREATE TABLE `remise_banque` (
  `idremisebanque` int(13) NOT NULL,
  `date_remise` varchar(255) NOT NULL,
  `type_remise` int(1) NOT NULL,
  `num_remise` varchar(255) NOT NULL,
  `montant_remise` varchar(255) NOT NULL,
  `valid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE `remise_banque_chq` (
  `idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE `remise_banque_esp` (
  `idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `salarie`
--

CREATE TABLE `salarie` (
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
  `etat_salarie` int(1) NOT NULL,
  `solde_salarie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`, `solde_salarie`) VALUES
(72, '', 0, 'CARTRON', 'OLIVIER', '34 RUE MAIRIE', '', '49570', 'MONTJEAN SUR LOIRE', '', '', '', '', '03/06/1996', '', '', 'CHEF D''EQUIPE SENIOR', '', '', '', 1, '161'),
(73, '', 0, 'DROUIN', 'DIDIER', '13 rue du Plessis', '', '49350', 'ST CLEMENT DES LEVEES', '', '', '', '', '04/09/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(74, '', 0, 'MARCHAIS', 'LAURENT', '76 RUE JEAN JAURES', '', '49000', 'ANGERS', '', '', '', '', '02/09/1996', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(75, '', 0, 'LAURIOU', 'MICKAEL', '1 ALLEE DES CYPRES', '', '49140', 'MARCE', '', '', '', '', '04/09/1996', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(76, '', 0, 'GUERIN', 'JOHNNY', '4 RUE DE L''EGLANTIER', '', '49370', 'LA POUEZE', '', '', '', '', '04/09/1996', '', '', 'CHEF D''EQUIPE SENIOR', '', '', '', 1, '161'),
(77, '', 0, 'BRUNET', 'DOMINIQUE', '41 RUE DE LA VARIE', '', '49770', 'LA MEIGNANNE', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(78, '', 0, 'POIRRIER', 'THIERRY', '7 RUE DU FRAIS FOYER', '', '49000', 'ANGERS', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(79, '', 0, 'NEGRI', 'BRIGITTE', '6 CHEMIN DES HAUTS', '', '49140', 'MONTREUIL SUR LOIR', '', '', '', '', '04/09/1996', '', '', 'ASSISTANT TECHN. EXPL.& LOGISTIQUE', '', '', '', 1, '161'),
(80, '', 0, 'BAULU', 'CATHERINE', '154 RUE DE VILLESICARD', '', '49130', 'LES PONTS DE CE', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(81, '', 0, 'MORTIER', 'FREDERIC', '12, rue Val de Suine', '', '49460', 'FENEU', '', '', '', '', '04/09/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(82, '', 0, 'ROUSSEL', 'PASCALE', '15 RUE DES VIGNES', '', '49610', 'MURS ERIGNE', '', '', '', '', '04/09/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(83, '', 0, 'BADOUR', 'STEPHANE', '55 RUE DE LA REUX', '', '49124', 'ST BARTHELEMY D ANJOU', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(84, '', 0, 'DAGUENE', 'FRANCOISE', '12 rue Val de Suine', '', '49460', 'FENEU', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(85, '', 0, 'MACKOWSKI', 'CORINE', 'RD 116 du Plessis Grammoire', 'La Morellerie', '49124', 'SAINT BARTHELEMY D''ANJOU', '', '', '', '', '09/09/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(86, '', 0, 'JANIN', 'SEBASTIEN', '25 rue Eug?ne Tessier', 'De la motte', '49350', 'LES ROSIERS SUR LOIRE', '', '', '', '', '19/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(87, '', 0, 'CHALOPIN', 'BERNADETTE', '12 RUE DE L''AUBANCE', '', '49320', 'LES ALLEUDS', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(88, '', 0, 'PILLARD', 'ISABELLE', '87 RUE DES BANCHAIS', 'RES. MOULIN DE BEAULIEU', '49100', 'ANGERS', '', '', '', '', '09/09/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(89, '', 0, 'KOCH', 'NATHALIE', 'LA PLAINE DES GRANGES', '', '72200', 'BAZOUGES SUR LE LOIR', '', '', '', '', '30/08/1996', '', '', 'SECRETAIRE DE DEPARTEMENT', '', '', '', 1, '161'),
(90, '', 0, 'CROS', 'SEVERINE', '6 AVENUE MARTIN LUTHER KING', '', '49240', 'AVRILLE', '', '', '', '', '16/09/1996', '', '', 'TECHNICIEN EXPLOITATION/LOGISTIQUE', '', '', '', 1, '161'),
(91, '', 0, 'ROUFFIAC', 'CHRISTOPHE', '131 RUE DE LA BARRE', '', '49100', 'ANGERS', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(92, '', 0, 'SUREAU', 'LYDIE', '18 CHEMIN DES MARINIERS', 'LOTISSEMENT DU BOIS MARIN', '49220', 'MONTREUIL SUR MAINE', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(93, '', 0, 'PIOU', 'BENOIT', '19 RUE DE L''HOTELLERIE', '', '49100', 'ANGERS', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(94, '', 0, 'JOUBERT', 'KARINE', 'LOTISSEMENT LE VIRIER', 'LOT 2', '49330', 'ETRICHE', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(95, '', 0, 'DESMARS', 'VERONIQUE', '67 AV JEAN XXIII', '', '49000', 'ANGERS', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(96, '', 0, 'DAVY', 'ANTOINE', 'LA FAVERIE', '', '49110', 'SAINT QUENTIN EN MAUGES', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(97, '', 0, 'HAULBERT', 'VINCENT', '23 RUE NORBERT CASTERET', '', '49100', 'ANGERS', '', '', '', '', '09/09/1996', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(98, '', 0, 'BOIVIN', 'VERONIQUE', '33 RUE GESSE', '', '49080', 'BOUCHEMAINE', '', '', '', '', '30/09/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(99, '', 0, 'ARMOURDOM', 'LAURENT', '115 Rue Fran&ccedil;ois Mauriac', '', '49800', 'TRELAZE', '0241695397', '0625059215', 'heline01@hotmail.com', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(100, '', 0, 'DELPHIN', 'SEBASTIEN', 'ROUTE DE MARZELLES', 'LA ROCHE FOULQUES', '49140', 'SOUCELLES', '', '', '', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(101, '', 0, 'GUERTIN', 'NOEL', '7 rue du Templa', '', '49124', 'LE PLESSIS GRAMMOIRE', '', '', '', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(102, '', 0, 'HANQUART', 'SANDRA', '5 RUELLE DE LA VALLEE', 'LOTISSEMENT DERRIERE LA VILLE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(103, '', 0, 'MESLET', 'THIERRY', '1 SQUARE DES TREILLES', '', '49480', 'ST SYLVAIN D ANJOU', '', '', '', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(104, '', 0, 'VALLEE', 'KARINE', '13 RUE GILBERT POULIQUEN', '', '49100', 'ANGERS', '', '', '', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(105, '', 0, 'GUERRIAU', 'MALIKA', '5 B RUE DU 8 MAI 1945', '', '49800', 'ANDARD', '', '', '', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(106, '', 0, 'COSNIER', 'CHRISTOPHE', '25 RUE RAOUL PONCHON', '', '49100', 'ANGERS', '', '', '', '', '03/03/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(107, '', 0, 'FOUGERI', 'ANNIE', '45 RUE MAURICE LANGLET', '', '49000', 'ANGERS', '', '', '', '', '03/03/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(108, '', 0, 'MARTIN', 'PATRICIA', '20 RUE ANDRE GIDE', '', '49130', 'LES PONTS DE CE', '', '', '', '', '03/03/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(109, '', 0, 'ADAM', 'STEPHANE', 'RUE DES PETITS VAUX', '', '49150', 'ECHEMIRE', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(110, '', 0, 'BRANCHEREAU', 'HERVE', '30 avenue Montaigne', '', '49100', 'ANGERS', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(111, '', 0, 'COUINET', 'SOLEN', 'Les Grands Bauchais', '', '49320', 'LES ALLEUDS', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(112, '', 0, 'DAVID', 'ARMEL', 'LA MONSELLERIE', '', '49330', 'SOEURDRES', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(113, '', 0, 'DOUILLY', 'OLIVIER', '1 B ROUTE DE BRIOLLAY', '', '49460', 'SOULAIRE LE BOURG', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(114, '', 0, 'GAULTIER', 'SEBASTIEN', '10 SQUARE DES CALEIDES', '', '49000', 'ANGERS', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(115, '', 0, 'RICHOMME', 'HERVE', '6 RUE DES CHARDONNERETS', '', '49250', 'BEAUFORT EN VALLEE', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(116, '', 0, 'BACHELOT', 'CHRISTELLE', '22 RUE ANDRE LE NOTRE', 'LOTIS. CLOS DU PLESSIS N? 87', '49800', 'TRELAZE', '', '', '', '', '12/07/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(117, '', 0, 'FAUCHEUX', 'FREDDY', '3 RUE DES NOISETIERS', '', '49800', 'BRAIN SUR L''AUTHION', '', '', '', '', '12/07/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(118, '', 0, 'FRESNEAU', 'VERONIQUE', '34 RUE TOUSSAINT CHALOU', '', '49130', 'STE GEMMES', '', '', '', '', '12/07/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(119, '', 0, 'GUERIN', 'HUGUETTE', '10 rue des Vignes', '', '49800', 'TRELAZE', '', '', '', '', '12/07/1999', '', '', 'AGENT DE PRODUCTION NIVEAU 2', '', '', '', 1, '161'),
(120, '', 0, 'FOURNIER', 'MARIO', '19 RUE HENRI ENGUEHARD', '', '49000', 'ANGERS', '', '', '', '', '26/07/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(121, '', 0, 'AUDIC', 'GAELLE', '1A RUE DE LIGNERIE', '', '49124', 'ST BARTHELEMY D ANJOU', '', '', '', '', '06/10/1999', '', '', 'ASSISTANT TECHN. EXPL.& LOGISTIQUE', '', '', '', 1, '161'),
(122, '', 0, 'GREFFIER', 'ARNAUD', '1 ALLEE DES SOURCES', 'LE PORAGE', '49640', 'DAUMERAY', '', '', '', '', '25/10/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(123, '', 0, 'BOUVIER', 'FREDERIC', '16 rue des Charmes', '', '49220', 'BRAIN SUR LONGUENEE', '', '', '', '', '18/11/1999', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(124, '', 0, 'PECOT', 'THIERRY', '9 COTES DE BEAULIEU', 'LIEU DIT BEAULIEU', '49140', 'VILLEVEQUE', '', '', '', '', '22/11/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(125, '', 0, 'CARUSO', 'SYLVANA', 'ROUTE DE LOUDUN', 'LA PETITE CHAMPAGNE', '49260', 'MONTREUIL BELLAY', '', '', '', '', '03/04/2000', '', '', 'CHEF DE CENTRE SBA', '', '', '', 1, '161'),
(126, '', 0, 'BOUDAUD', 'VIRGINIE', '21 RUE DES MARONNIERS', '', '49330', 'CHAMPIGNE', '', '', '', '', '20/11/2000', '', '', 'SECRETAIRE DE SERVICE', '', '', '', 1, '161'),
(127, '', 0, 'DASYLVA', 'JEAN-PIERRE', '3 AVENUE MONTAIGNE', '', '49000', 'ANGERS', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(128, '', 0, 'BOUFAQOUS', 'ABDELJALIL', '30 RUE DES TOURNEBELLES', '', '49000', 'ANGERS', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(129, '', 0, 'CLEMENT', 'CHRISTOPHE', '4 B ROUTE DU HUTREAU', '', '49130', 'SAINTE GEMMES SUR LOIRE', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(130, '', 0, 'CLEMENT', 'OLIVIER', '32 B RUE DE LA BRISEPOTIERE', '', '49100', 'ANGERS', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(131, '', 0, 'GARNIER', 'DAVID', 'LOTISSEMENT LE PUITS HERVE', '6 RUE DU RUISSEAU', '49220', 'BRAIN SUR LONGUENEE', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(132, '', 0, 'ONILLON', 'PATRICIA', '87 BOULEVARD BEDIER', 'LES PEUPLIERS', '49000', 'ANGERS', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(133, '', 0, 'LEHOREAU WADA', 'VIRGINIE', '9 RUE MICHEL SEURAT', '', '49000', 'ANGERS', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(134, '', 0, 'BLEJAN', 'CHRISTIAN', '183 RUE SAUMUROISE', '', '49000', 'ANGERS', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(135, '', 0, 'RAGOT', 'VIRGINIE', 'LES DEUX CHENES', '', '49170', 'ST MARTIN DU FOUILLOUX', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION NIVEAU 2', '', '', '', 1, '161'),
(136, '', 0, 'BERGERET', 'STEPHANE', 'LES PERRES', '', '49140', 'SERMAISE', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(137, '', 0, 'POUPAULT', 'ISABELLE', '29 RTE DEPARTEMENTALE 347', '', '49630', 'CORNE', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '161'),
(138, '', 0, 'CHAPEAU', 'OLIVIER', '2A RUE DU TERTRE', '', '49800', 'SARRIGNE', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(139, '', 0, 'GALLET', 'STEPHANE', '21 RUE DU SORBIER', 'LOTISSEMENT LA CROIX BLANCHE', '49290', 'ST LAURENT DE LA PLAINE', '', '', '', '', '03/09/2001', '', '', 'CHEF D''EQUIPE SENIOR', '', '', '', 1, '161'),
(140, '', 0, 'LUBIN', 'MICHEL', '7 rue de l''Or?e du Bois', 'Lot. l''Or?e du Bois', '49140', 'BAUNE', '', '', '', '', '15/10/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(141, '', 0, 'GUYADER', 'YOHANN', 'LES EDELWEISS', 'LE PETIT BOIS', '49800', 'TRELAZE', '', '', '', '', '15/10/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(142, '', 0, 'IDDER', 'MEHDI', '4 RUE DU BEZAIN', '', '49800', 'SARRIGNE', '', '', '', '', '29/07/2002', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(143, '', 0, 'ROUAULT', 'ANTHONY', '9 IMPASSE DES PUISATIERS', '', '49630', 'MAZE', '', '', '', '', '29/07/2002', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(144, '', 0, 'MARSAULT', 'FRANCOISE', '3 IMPASSE DES CERISES', 'LOTISSEMENT LES CERISES', '49170', 'SAINT GEORGES SUR LOIRE', '', '', '', '', '29/07/2002', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(145, '', 0, 'DINGREVILLE', 'ALINE', '38 Route de la Roche', '', '49630', 'MAZE', '', '', '', '', '29/07/2002', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(146, '', 0, 'KERBOURCH', 'FLORENT', '1 RUE GEORGES MELLIES', '', '49140', 'BAUNE', '', '', '', '', '03/01/2005', '', '', 'CHEF D''EQUIPE SENIOR', '', '', '', 1, '161'),
(147, '', 0, 'MOTTEAU', 'Thierry', 'Les Treilles', '', '49190', 'ROCHEFORT SUR LOIRE', '', '', '', '', '01/03/2005', '', '', 'CHEF DE SERVICE TECHNIQUE', '', '', '', 1, '161'),
(148, '', 0, 'CHAFFIN', 'Mireille', '39 ALLEE FRANCOIS LE VAILLANT', '', '49240', 'AVRILLE', '', '', '', '', '07/08/2005', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(149, '', 0, 'CHESNEL', 'Brigitte', '6 square des C?dres', '', '49000', 'ANGERS', '', '', '', '', '18/04/2005', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(150, '', 0, 'CLOUET', 'Emilie', '53 RUE DES RABIERES', '', '49140', 'SEICHES SUR LE LOIR', '', '', '', '', '28/05/2005', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(151, '', 0, 'NIANGORAN', 'Oura Severin', '5 RUE PROSPER BIGEARD', '', '49100', 'ANGERS', '', '', '', '', '09/06/2005', '', '', 'AGENT DE PRODUCTION NIVEAU 2', '', '', '', 1, '161'),
(152, '', 0, 'DAGUER', 'St?phane', '16 SQUARE DU PAVILLON', 'LES IRIS', '49130', 'LES PONTS DE CE', '', '', '', '', '15/05/2005', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(153, '', 0, 'PASCAL', 'LIONEL', 'LE PETIT PRINCE', '', '49330', 'CHAMPIGNE', '', '', '', '', '09/10/2006', '', '', 'CHEF D''EQUIPE', '', '', '', 1, '161'),
(154, '', 0, 'CHAPLAIN', 'ANGELINA', '6 RUE PIERRE RUAIS', '', '49540', 'MARTIGNE BRIAND', '', '', '', '', '05/10/2006', '', '', 'AGENT DE MAINTENANCE', '', '', '', 1, '161'),
(155, '', 0, 'CRIBIER', 'EMILIE', '28 RUE HENRI CORMEAU', '', '49100', 'ANGERS', '', '', '', '', '29/08/2011', '', '', 'AGENT DE PRODUCTION NIVEAU 2', '', '', '', 1, '161'),
(156, '', 0, 'SALAUN', 'ANDRE', '1 AVENUE FRANCOIS MITTERAND', 'RESIDENCE LES FLORINS', '49130', 'LES PONTS DE CE', '', '', '', '', '06/08/2012', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(157, '', 0, 'BARRIERES', 'AMANDINE', '16 AVENUE DE GRESILLE', '', '49000', 'ANGERS', '', '', '', '', '06/08/2012', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(158, '', 0, 'PERGER', 'ASTRID', '71 AVENUE JEAN BUTTON', '', '49130', 'LES PONTS DE CE', '', '', '', '', '03/09/2012', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(159, '', 0, 'CERIBAS', 'FILIZ', '41 BD AUGUSTE ALLONNEAU', '', '49100', 'ANGERS', '', '', '', '', '10/07/2012', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '161'),
(160, '', 0, 'LEVRON', 'Jean Louis', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'RETRAITE MLP', 1, '161'),
(161, '', 0, 'VERMELUN', 'Christian', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'RETRAITE MLP', 1, '161');

-- --------------------------------------------------------

--
-- Structure de la table `solde_caisse`
--

CREATE TABLE `solde_caisse` (
  `idsoldecaisse` int(13) NOT NULL,
  `date_mouvement` varchar(255) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `type_mouvement` varchar(255) NOT NULL,
  `type_solde` varchar(255) NOT NULL,
  `libelle_mouvement` varchar(255) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `point_caisse` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Index pour la table `billet_n_ad`
--
ALTER TABLE `billet_n_ad`
  ADD PRIMARY KEY (`idbilletnad`);

--
-- Index pour la table `billet_n_salarie`
--
ALTER TABLE `billet_n_salarie`
  ADD PRIMARY KEY (`idbilletnsalarie`);

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
  ADD PRIMARY KEY (`idcomptamvm`),
  ADD KEY `date_mvm` (`date_mvm`);

--
-- Index pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
  ADD PRIMARY KEY (`idcomptaplan`);

--
-- Index pour la table `compta_pret`
--
ALTER TABLE `compta_pret`
  ADD PRIMARY KEY (`idcomptapret`);

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
-- Index pour la table `ligne_billet_n_ad`
--
ALTER TABLE `ligne_billet_n_ad`
  ADD PRIMARY KEY (`idlignebilletnad`);

--
-- Index pour la table `ligne_billet_n_salarie`
--
ALTER TABLE `ligne_billet_n_salarie`
  ADD PRIMARY KEY (`idlignebilletnsalarie`);

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
-- Index pour la table `reg_billet_n_ad`
--
ALTER TABLE `reg_billet_n_ad`
  ADD PRIMARY KEY (`idregbilletnad`);

--
-- Index pour la table `reg_billet_n_salarie`
--
ALTER TABLE `reg_billet_n_salarie`
  ADD PRIMARY KEY (`idregbilletnsalarie`);

--
-- Index pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
  ADD PRIMARY KEY (`idregbilletsalarie`);

--
-- Index pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
  ADD PRIMARY KEY (`idregrembayantdroit`);

--
-- Index pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
  ADD PRIMARY KEY (`idregrembsalarie`);

--
-- Index pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
  ADD PRIMARY KEY (`idrembayantdroit`);

--
-- Index pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
  ADD PRIMARY KEY (`idrembsalarie`);

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
  MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
  MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_n_ad`
--
ALTER TABLE `billet_n_ad`
  MODIFY `idbilletnad` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `billet_n_salarie`
--
ALTER TABLE `billet_n_salarie`
  MODIFY `idbilletnsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
  MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
  MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
  MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
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
  MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_pret`
--
ALTER TABLE `compta_pret`
  MODIFY `idcomptapret` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
  MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
  MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
  MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
  MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ligne_billet_n_ad`
--
ALTER TABLE `ligne_billet_n_ad`
  MODIFY `idlignebilletnad` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ligne_billet_n_salarie`
--
ALTER TABLE `ligne_billet_n_salarie`
  MODIFY `idlignebilletnsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
  MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `log_systeme`
--
ALTER TABLE `log_systeme`
  MODIFY `idlog` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `maj`
--
ALTER TABLE `maj`
  MODIFY `idmaj` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
  MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
  MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_n_ad`
--
ALTER TABLE `reg_billet_n_ad`
  MODIFY `idregbilletnad` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `reg_billet_n_salarie`
--
ALTER TABLE `reg_billet_n_salarie`
  MODIFY `idregbilletnsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
  MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
  MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
  MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
  MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT;
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
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
