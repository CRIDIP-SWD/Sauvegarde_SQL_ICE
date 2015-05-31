-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 31 Mai 2015 à 18:04
-- Version du serveur :  5.5.41-0ubuntu0.14.04.1
-- Version de PHP :  5.5.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `cemlp`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `achat_presta`
--

INSERT INTO `achat_presta` (`idachatpresta`, `date_achat`, `idprestation`, `qte`, `total_achat`) VALUES
(7, '24-03-2015', 84, '2863', '28630'),
(9, '10-03-2015', 85, '176', '528'),
(12, '2015', 0, '', '0'),
(13, '04-01-2015', 87, '1', '120'),
(15, '04-01-2015', 86, '50', '7000');

-- --------------------------------------------------------

--
-- Structure de la table `ayant_droit`
--

CREATE TABLE IF NOT EXISTS `ayant_droit` (
`idayantdroit` int(13) NOT NULL,
  `idsalarie` int(13) NOT NULL,
  `nom_ayant_droit` varchar(255) NOT NULL,
  `prenom_ayant_droit` varchar(255) NOT NULL,
  `date_naissance_ayant_droit` varchar(255) NOT NULL,
  `solde_ayant_droit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=254 ;

--
-- Contenu de la table `ayant_droit`
--

INSERT INTO `ayant_droit` (`idayantdroit`, `idsalarie`, `nom_ayant_droit`, `prenom_ayant_droit`, `date_naissance_ayant_droit`, `solde_ayant_droit`) VALUES
(82, 109, 'ADAM', 'LILIAN', '29/11/1999', '0'),
(83, 116, 'BACHELOT', 'ANTOINE', '12/07/2006', '0'),
(84, 116, 'BACHELOT', 'FABIEN', '12/06/2004', '0'),
(85, 83, 'BADOUR', 'ALYMA', '29/03/2005', '0'),
(86, 126, 'BOUDAUD', 'AXEL', '28/04/2012', '0'),
(87, 126, 'BOUDAUD', 'ELISA', '23/09/2007', '0'),
(88, 126, 'BOUDAUD', 'TYPHAINE', '05/09/2003', '0'),
(89, 128, 'BOUFAQOUS', 'ADAM', '17/04/2002', '0'),
(90, 128, 'BOUFAQOUS', 'MARIA', '27/12/2004', '0'),
(91, 123, 'BOUVIER', 'CLEMENCE', '06/05/2002', '0'),
(92, 123, 'BOUVIER', 'MANON', '30/09/1999', '0'),
(93, 77, 'BRUNET  (AUDIC)', 'CORENTIN', '10/09/2001', '0'),
(94, 72, 'CARTRON', 'JULIETTE', '24/06/2004', '0'),
(95, 72, 'CARTRON', 'THEOPHILE', '12/09/2000', '0'),
(96, 159, 'CERIBAS', 'JREM', '15/02/2005', '0'),
(97, 159, 'CERIBAS', 'NEBI', '06/02/2002', '0'),
(98, 159, 'CERIBAS', 'YELIZ', '18/05/1999', '0'),
(99, 154, 'CHAPLAIN THOMAS', 'ANTHONYN', '18/06/2014', '0'),
(100, 92, 'CHOLLET', 'LOUNA CHLOE', '30/06/1999', '0'),
(101, 92, 'CHOLLET', 'TOM BASILE', '16/01/2008', '0'),
(102, 130, 'CLEMENT', 'ELEA', '17/05/2010', '0'),
(103, 130, 'CLEMENT', 'NOLAN', '13/07/2008', '0'),
(104, 130, 'CLOUET', 'NATHAN', '12/11/2013', '0'),
(105, 106, 'COSNIER', 'JADE MARILYNE', '23/12/2008', '0'),
(106, 106, 'COSNIER', 'LORENE', '09/07/2003', '0'),
(107, 111, 'COUINET', 'ANNA', '17/09/2013', '0'),
(108, 111, 'COUINET', 'LALIE', '25/07/2006', '0'),
(109, 111, 'COUINET', 'MANON', '27/02/2010', '0'),
(110, 90, 'CROS MIGOT', 'FLORENT VALENTIN', '18/06/2001', '0'),
(111, 90, 'CROS MIGOT', 'LAURINE OCEANE', '15/10/2004', '0'),
(112, 90, 'CROS MIGOT', 'VALENTINE ', '02/06/2011', '0'),
(113, 145, 'DAUCHY', 'ANTHONY', '01/07/2000', '0'),
(114, 100, 'DELPHIN', 'AXELLE', '06/03/2002', '0'),
(115, 100, 'DELPHIN', 'LILI', '16/12/2004', '0'),
(116, 100, 'DELPHIN', 'NYLA', '25/08/2007', '0'),
(117, 145, 'DINGREVILLE RICHOMME', 'LEONIE', '16/06/2005', '0'),
(118, 113, 'DOUILLY', 'CLEMENT', '13/04/2001', '0'),
(119, 117, 'FAUCHEUX', 'OPHELIE', '15/04/2000', '0'),
(120, 120, 'FOURNIER', 'LAURA', '16/03/2001', '0'),
(121, 120, 'FOURNIER', 'LILY ROSE', '08/01/2001', '0'),
(122, 120, 'FOURNIER', 'OCEANE', '03/09/2005', '0'),
(123, 120, 'FOURNIER ', 'SAMUEL', '21/01/2006', '0'),
(124, 139, 'GALLET', 'ETHAN', '05/12/2003', '0'),
(125, 131, 'GARNIER', 'MATHIS', '02/01/2004', '0'),
(126, 131, 'GARNIER', 'NATHALENA', '03/06/2001', '0'),
(127, 131, 'GARNIER', 'NOA', '04/02/2008', '0'),
(128, 114, 'GAULTIER', 'MAEVA', '22/01/2002', '0'),
(129, 76, 'GUERIN', 'DANNY', '04/12/2006', '0'),
(130, 76, 'GUERIN', 'KENNY', '17/09/2002', '0'),
(131, 101, 'GUERTIN', 'LEON', '07/03/2004', '0'),
(132, 102, 'HANQUART', 'Alice', '30/12/2009', '0'),
(133, 102, 'HANQUART', 'Sacha', '08/03/2007', '0'),
(134, 97, 'HAULBERT', 'AMANDINE', '23/05/2000', '0'),
(135, 97, 'HAULBERT', 'MATEO', '30/09/2002', '0'),
(136, 142, 'IDDER', 'Ilyes', '27/12/2008', '0'),
(137, 142, 'IDDER', 'LINA', '31/08/2011', '0'),
(138, 86, 'JANIN', 'ANNA', '25/03/2009', '0'),
(139, 86, 'JANIN', 'LILOU', '10/02/2006', '0'),
(140, 86, 'JANIN', 'NOA', '25/03/2009', '0'),
(141, 86, 'JANIN', 'TOM', '19/02/2004', '0'),
(142, 146, 'KERBOURCH', 'ERWANN', '11/05/2001', '0'),
(143, 146, 'KERBOURCH', 'NOLWENN', '17/05/2003', '0'),
(144, 133, 'KHALIL  (LEHOREAU)', 'KAHINA', '15/02/2006', '0'),
(145, 75, 'LAURIOU', 'CAMILLE', '17/12/2000', '0'),
(146, 133, 'LEHOREAU', 'LINDSAY', '22/07/1999', '0'),
(147, 140, 'LUBIN', 'CYNTHIA', '09/03/1999', '0'),
(148, 140, 'LUBIN', 'ELLIOT TAO', '19/06/2014', '0'),
(149, 140, 'LUBIN', 'NAYA', '16/03/2011', '0'),
(150, 103, 'MESLET', 'LISA', '21/06/1999', '0'),
(151, 150, 'MILON', 'LEANE', '27/11/2007', '0'),
(152, 151, 'NIANGORAN', 'AIME AMANI', '27/11/2009', '0'),
(153, 151, 'NIANGORAN', 'ANGELINE', '13/08/2014', '0'),
(154, 151, 'NIANGORAN', 'ELIE', '04/11/2011', '0'),
(155, 151, 'NIANGORAN', 'ISMAEL PIERRE ANIS', '22/07/2002', '0'),
(156, 151, 'NIANGORAN', 'NATHAN LUC ANGE', '25/11/2012', '0'),
(157, 153, 'PASCAL', 'Malya', '10/06/2004', '0'),
(158, 153, 'PASCAL', 'Melissa', '06/08/2001', '0'),
(159, 124, 'PECOT', 'Juliette', '31/08/2006', '0'),
(160, 124, 'PECOT', 'Lilou', '31/08/2006', '0'),
(161, 115, 'RICHOMME', 'Leonie', '16/06/2005', '0'),
(162, 143, 'ROUAULT', 'CLEA', '29/04/2009', '0'),
(163, 143, 'ROUAULT', 'EMY', '30/06/2012', '0'),
(164, 104, 'VALLEE', 'LIAM', '31/12/2010', '0'),
(165, 104, 'VALLEE', 'MARIE', '01/08/2005', '0'),
(166, 105, 'VERITE GUERRIAU', 'MATTEO', '29/05/2002', '0'),
(167, 109, 'ADAM STEPHANE ', 'ALLOCATION LOISIR', '', '50'),
(168, 99, 'ARMOURDOM LAURENT', 'ALLOCATION LOISIR', '', '50'),
(169, 106, 'COSNIER CHRISTOPHE ', 'ALLOCATION LOISIRS', '', '0'),
(170, 107, 'FOUGERI ANNE', 'ALLOCATION LOISIRS', '', '50'),
(171, 108, 'MARTIN PATRICIA', 'ALLOCATION LOISIRS', '', '50'),
(172, 110, 'BRANCHEREAU HERVE', 'ALLOCATION LOISIRS', '', '50'),
(173, 111, 'COUINET SOLEN', 'ALLOCATION LOISIRS', '', '50'),
(174, 112, 'DAVID ARMEL', 'ALLOCATION LOISIRS', '', '50'),
(175, 113, 'DOUILLY OLIVIER', 'ALLOCATION LOISIRS', '', '50'),
(176, 114, 'GAULTIER SEBASTIEN', 'ALLOCATION LOISIRS', '', '50'),
(177, 115, 'RICHOMME HERVE', 'ALLOCATION LOISIRS', '', '50'),
(178, 116, 'BACHELOT CHRISTELLE', 'ALLOCATION LOISIRS', '', ''),
(179, 117, 'FAUCHEUX FREDDY', 'ALLOCATION LOISIRS', '', '50'),
(180, 118, 'FRESNEAU VERONIQUE', 'ALLOCATION LOISIRS', '', '50'),
(181, 119, 'GUERIN HUGUETTE', 'ALLOCATION LOISIRS', '', '0'),
(182, 120, 'FOUNIER MARIO', 'ALLOCATION LOISIRS', '', '50'),
(183, 121, 'AUDIC GAELLE', 'ALLOCATION LOISIRS', '', '50'),
(184, 122, 'GREFFIER ARNAUD', 'ALLOCATION LOISIRS', '', '50'),
(185, 123, 'BOUVIER FREDERIC', 'ALLOCATION LOISIRS', '', '50'),
(186, 124, 'PECOT THIERRY', 'ALLOCATION LOISIRS', '', '50'),
(187, 125, 'CARUSO SYLVANA', 'ALLOCATION LOISIRS', '', '50'),
(188, 126, 'BOUDEAU VIRGINIE', 'ALLOCATION LOISIRS', '', '50'),
(189, 127, 'DASYLVA JEAN PIERRE', 'ALLOCATION LOISIRS', '', '50'),
(190, 128, 'BOUFAQOUS ABDELJALIL', 'ALLOCATION LOISIRS', '', '50'),
(191, 129, 'CLEMENT CHRISTOPHE', 'ALLOCATION LOISIRS', '', '50'),
(192, 130, 'CLEMENT OLIVIER', 'ALLOCATION LOISIRS', '', '0'),
(193, 131, 'GARNIER DAVID', 'ALLOCATION LOISIRS', '', '50'),
(194, 132, 'ONILLON PATRICIA', 'ALLOCATION LOISIRS', '', '16.5'),
(195, 133, 'LEHOREAU WADA VIRGINIE', 'ALLOCATION LOISIRS', '', '50'),
(196, 134, 'BLEJAN CHRISTIAN', 'ALLOCATION LOISIRS', '', '50'),
(197, 135, 'RAGOT VIRGINIE', 'ALLOCATION LOISIRS', '', '50'),
(198, 136, 'BERGERET STEPHANE', 'ALLOCATION LOISIRS', '', '50'),
(199, 137, 'POUPAULT ISABELLE', 'ALLOCATION LOISIRS', '', '0'),
(200, 138, 'CHAPEAU OLIVIER', 'ALLOCATION LOISIRS', '', '50'),
(201, 139, 'GALLET STEPHANE', 'ALLOCATION LOISIRS', '', '50'),
(202, 140, 'LUBIN MICHEL', 'ALLOCATION LOISIRS', '', '50'),
(203, 141, 'GUYADER YOHANN', 'ALLOCATION LOISIRS', '', '50'),
(204, 142, 'IDDER MEHDI', 'ALLOCATION LOISIRS', '', '50'),
(205, 143, 'ROUAULT ANTHONY', 'ALLOCATION LOISIRS', '', '50'),
(206, 88, 'PILLARD ISABELLE', 'ALLOCATION LOISIRS', '', '50'),
(207, 89, 'KOCH NATHALIE', 'ALLOCATION LOISIRS', '', '50'),
(208, 90, 'CROS SEVERINE', 'ALLOCATION LOISIRS', '', '50'),
(209, 91, 'ROUFFIAC CHRISTOPHE', 'ALLOCATION LOISIRS', '', '50'),
(210, 92, 'SUREAU LYDIE', 'ALLOCATION LOISIRS', '', '50'),
(211, 93, 'PIOU BENOIT', 'ALLOCATION LOISIRS', '', '50'),
(212, 94, 'JOUBERT KARINE', 'ALLOCATION LOISIRS', '', '50'),
(213, 95, 'DESMARS VERONIQUE', 'ALLOCATION LOISIRS', '', '0'),
(214, 96, 'DAVY ANTOINE', 'ALLOCATION LOISIRS', '', '50'),
(215, 97, 'HAULBERT VINCENT', 'ALLOCATION LOISIRS', '', '50'),
(216, 98, 'BOIVIN VERONIQUE', 'ALLOCATION LOISIRS', '', '50'),
(217, 100, 'DELPHIN SEBASTIEN', 'ALLOCATION LOISIRS', '', '50'),
(218, 101, 'GUERTIN NOEL ', 'ALLOCATION LOISIRS', '', '50'),
(219, 102, 'HANQUART SANDRA', 'ALLOCATION LOISIRS', '', '50'),
(220, 103, 'MESLET THIERRY', 'ALLOCATION LOISIRS', '', '50'),
(221, 104, 'VALLEE KARINE', 'ALLOCATION LOISIRS', '', '50'),
(222, 105, 'GUERRIAU MALIKA ', 'ALLOCATION LOISIRS', '', '50'),
(223, 72, 'CARTRON OLIVIER', 'ALLOCATION LOISIRS', '', '50'),
(224, 73, 'DROUIN DIDIER', 'ALLOCATION LOISIRS', '', '50'),
(225, 74, 'MARCHAIS LAURENT', 'ALLOCATION LOISIRS', '', '50'),
(226, 75, 'LAURIOU MICKAEL', 'ALLOCATION LOISIRS', '', '50'),
(227, 76, 'GUERIN JOHNNY', 'ALLOCATION LOISIRS', '', '0'),
(228, 77, 'BRUNET DOMINIQUE', 'ALLOCATION LOISIRS', '', '50'),
(229, 78, 'POIRRIER THIERRY', 'ALLOCATION LOISIRS', '', '0'),
(230, 79, 'NEGRI', 'BRIGITTE', '', '50'),
(231, 80, 'BAULU CATHERINE', 'ALLOCATION LOISIRS', '', '0'),
(232, 81, 'MORTIER FREDERIC', 'ALLOCATION LOISIRS', '', '50'),
(233, 82, 'ROUSSEL PASCAL', 'ALLOCATION LOISIRS', '', '0'),
(234, 83, 'BADOUR STEPHANE', 'ALLOCATION LOISIRS', '', '0'),
(235, 84, 'DAGUENE FRANCOISE', 'ALLOCATION LOISIRS', '', '50'),
(236, 85, 'MACKOWSKI CORINE ', 'ALLOCATION LOISIRS', '', '50'),
(237, 86, 'JANIN SEBASTIEN', 'ALLOCATION LOISIRS', '', '50'),
(238, 87, 'CHALOPIN BERNADETTE', 'ALLOCATION LOISIRS', '', '50'),
(239, 144, 'MARSAULT FRANCOISE', 'ALLOCATION LOISIRS', '', '0'),
(240, 145, 'DINGREVILLE ALINE', 'ALLOCATION LOISIRS', '', '50'),
(241, 147, 'MOTTEAU THIERRY ', 'ALLOCATION LOISIRS', '', '50'),
(242, 148, 'CHAFFIN MIREILLE', 'ALLOCATION LOISIRS', '', '50'),
(243, 149, 'CHESNEL BRIGITTE ', 'ALLOCATION LOISIRS', '', '50'),
(244, 150, 'CLOUET EMILIE', 'ALLOCATION LOISIRS', '', '50'),
(245, 151, 'NIANGORAN OURA SEVERIN', 'ALLOCATION LOISIRS', '', '50'),
(246, 152, 'DAGUER STEPHANE', 'ALLOCATION LOISIRS', '', '50'),
(247, 153, 'PASCAL LIONEL', 'ALLOCATION LOISIRS', '', '50'),
(248, 154, 'CHAPLAIN ANGELINA', 'ALLOCATION LOISIRS', '', '50'),
(249, 155, 'CRIBIER EMILIE', 'ALLOCATION LOISIRS', '', '50'),
(250, 156, 'SALAUN ANDRE', 'ALLOCATION LOISIRS', '', '50'),
(251, 157, 'BARRIERES AMANDINE', 'ALLOCATION LOISIRS', '', '50'),
(252, 158, 'PERGER ASTRID ', 'ALLOCATION LOISIRS', '', '50'),
(253, 159, 'CERIBAS FILIZ', 'ALLOCATION LOISIRS', '', '0');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=328 ;

--
-- Contenu de la table `bilan`
--

INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(127, 1, 'Achat: ANCV', '28630', '', ''),
(129, 2, 'Ajout du produit fixe: ANCV REVERSEMENT ENTREPRISE', '', '21510.00', ''),
(131, 1, 'Ajout de la charge Fixe: FRAIS ENVOI ANCV', '302.50', '', ''),
(134, 1, 'Achat: CHARLIE HEBDO', '528', '', ''),
(138, 2, 'Vente de Billetterie: BRANCHEREAU HERVE pour la prestation CHARLIE HEBDO', '', '36', '77888520'),
(140, 2, 'Vente de Billetterie: SALAUN ANDRE pour la prestation CHARLIE HEBDO', '', '3', '35203667'),
(143, 2, 'Vente de Billetterie: CLEMENT OLIVIER pour la prestation CHARLIE HEBDO', '', '3', '34093613'),
(146, 2, 'Vente de Billetterie: LEHOREAU WADA VIRGINIE pour la prestation CHARLIE HEBDO', '', '3', '90007063'),
(148, 2, 'Vente de Billetterie: DOUILLY OLIVIER pour la prestation CHARLIE HEBDO', '', '15', '94566683'),
(150, 2, 'Vente de Billetterie: LAURIOU MICKAEL pour la prestation CHARLIE HEBDO', '', '3', '7070390'),
(151, 2, 'Vente de Billetterie: ARMOURDOM LAURENT pour la prestation CHARLIE HEBDO', '', '12', '20918838'),
(154, 2, 'Vente de Billetterie: GUERIN JOHNNY pour la prestation CHARLIE HEBDO', '', '15', '57787493'),
(155, 2, 'Vente de Billetterie: HAULBERT VINCENT pour la prestation CHARLIE HEBDO', '', '3', '43396733'),
(159, 2, 'Vente de Billetterie: FOURNIER MARIO pour la prestation CHARLIE HEBDO', '', '6', '64231022'),
(160, 2, 'Vente de Billetterie: BOUFAQOUS ABDELJALIL pour la prestation CHARLIE HEBDO', '', '3', '58433076'),
(161, 2, 'Vente de Billetterie: GAULTIER SEBASTIEN pour la prestation CHARLIE HEBDO', '', '15', '38867830'),
(162, 2, 'Vente de Billetterie: COSNIER CHRISTOPHE pour la prestation CHARLIE HEBDO', '', '3', '93588287'),
(163, 2, 'Vente de Billetterie: ONILLON PATRICIA pour la prestation CHARLIE HEBDO', '', '6', '5716332'),
(164, 2, 'Vente de Billetterie: DAVY ANTOINE pour la prestation CHARLIE HEBDO', '', '3', '40247192'),
(165, 2, 'Vente de Billetterie: ROUSSEL PASCALE pour la prestation CHARLIE HEBDO', '', '6', '78190047'),
(166, 2, 'Vente de Billetterie: SUREAU LYDIE pour la prestation CHARLIE HEBDO', '', '6', '22957854'),
(167, 2, 'Vente de Billetterie: PECOT THIERRY pour la prestation CHARLIE HEBDO', '', '6', '6950154'),
(168, 2, 'Vente de Billetterie: DAGUER St?phane pour la prestation CHARLIE HEBDO', '', '6', '99680257'),
(169, 2, 'Vente de Billetterie: CHALOPIN BERNADETTE pour la prestation CHARLIE HEBDO', '', '6', '22796043'),
(170, 2, 'Vente de Billetterie: ROUAULT ANTHONY pour la prestation CHARLIE HEBDO', '', '6', '92148009'),
(171, 2, 'Vente de Billetterie: BOIVIN VERONIQUE pour la prestation CHARLIE HEBDO', '', '3', '1403553'),
(172, 2, 'Vente de Billetterie: DASYLVA JEAN-PIERRE pour la prestation CHARLIE HEBDO', '', '6', '97490311'),
(173, 2, 'Vente de Billetterie: GUERIN HUGUETTE pour la prestation CHARLIE HEBDO', '', '6', '3641379'),
(174, 2, 'Vente de Billetterie: LUBIN MICHEL pour la prestation CHARLIE HEBDO', '', '3', '54188181'),
(175, 2, 'Vente de Billetterie: LAURIOU MICKAEL pour la prestation CHARLIE HEBDO', '', '6', '35864404'),
(176, 2, 'Vente de Billetterie: MORTIER FREDERIC pour la prestation CHARLIE HEBDO', '', '6', '59615731'),
(177, 2, 'Vente de Billetterie: DAGUENE FRANCOISE pour la prestation CHARLIE HEBDO', '', '6', '53405864'),
(178, 2, 'Vente de Billetterie: POIRRIER THIERRY pour la prestation CHARLIE HEBDO', '', '3', '67706393'),
(179, 2, 'Vente de Billetterie: MARTIN PATRICIA pour la prestation CHARLIE HEBDO', '', '3', '14437311'),
(180, 2, 'Vente de Billetterie: BOUVIER FREDERIC pour la prestation CHARLIE HEBDO', '', '6', '35284155'),
(181, 2, 'Vente de Billetterie: COUINET SOLEN pour la prestation CHARLIE HEBDO', '', '6', '29814792'),
(182, 2, 'Vente de Billetterie: GALLET STEPHANE pour la prestation CHARLIE HEBDO', '', '6', '49456544'),
(183, 2, 'Vente de Billetterie: ROUFFIAC CHRISTOPHE pour la prestation CHARLIE HEBDO', '', '6', '73238056'),
(184, 2, 'Vente de Billetterie: BRUNET DOMINIQUE pour la prestation CHARLIE HEBDO', '', '6', '75019028'),
(185, 2, 'Vente de Billetterie: FRESNEAU VERONIQUE pour la prestation CHARLIE HEBDO', '', '6', '24745278'),
(186, 2, 'Vente de Billetterie: PILLARD ISABELLE pour la prestation CHARLIE HEBDO', '', '6', '64707700'),
(187, 2, 'Vente de Billetterie: FOUGERI ANNIE pour la prestation CHARLIE HEBDO', '', '6', '75633744'),
(188, 2, 'Vente de Billetterie: GUERRIAU MALIKA pour la prestation CHARLIE HEBDO', '', '6', '16124366'),
(189, 2, 'Vente de Billetterie: BAULU CATHERINE pour la prestation CHARLIE HEBDO', '', '6', '51215389'),
(190, 2, 'Vente de Billetterie: DINGREVILLE ALINE pour la prestation CHARLIE HEBDO', '', '6', '91945333'),
(191, 2, 'Vente de Billetterie: HANQUART SANDRA pour la prestation CHARLIE HEBDO', '', '3', '85210311'),
(192, 2, 'Vente de Billetterie: MARCHAIS LAURENT pour la prestation CHARLIE HEBDO', '', '3', '48633428'),
(193, 2, 'Vente de Billetterie: AUDIC GAELLE pour la prestation CHARLIE HEBDO', '', '6', '63016188'),
(194, 2, 'Vente de Billetterie: NEGRI BRIGITTE pour la prestation CHARLIE HEBDO', '', '6', '31132058'),
(195, 2, 'Vente de Billetterie: JOUBERT KARINE pour la prestation CHARLIE HEBDO', '', '6', '6777589'),
(196, 2, 'Vente de Billetterie: RAGOT VIRGINIE pour la prestation CHARLIE HEBDO', '', '6', '13090392'),
(197, 2, 'Vente de Billetterie: CROS SEVERINE pour la prestation CHARLIE HEBDO', '', '3', '61360544'),
(198, 2, 'Vente de Billetterie: CHAPLAIN ANGELINA pour la prestation CHARLIE HEBDO', '', '3', '70083078'),
(199, 2, 'Vente de Billetterie: BOUDAUD VIRGINIE pour la prestation CHARLIE HEBDO', '', '6', '32806862'),
(200, 2, 'Vente de Billetterie: FAUCHEUX FREDDY pour la prestation CHARLIE HEBDO', '', '6', '49065071'),
(201, 2, 'Vente de Billetterie: MOTTEAU Thierry pour la prestation CHARLIE HEBDO', '', '6', '75220921'),
(202, 2, 'Vente de Billetterie: CARTRON OLIVIER pour la prestation CHARLIE HEBDO', '', '6', '55183117'),
(203, 2, 'Vente de Billetterie: KERBOURCH FLORENT pour la prestation CHARLIE HEBDO', '', '6', '40627513'),
(204, 2, 'Vente de Billetterie: VALLEE KARINE pour la prestation CHARLIE HEBDO', '', '3', '83343185'),
(205, 2, 'Vente de Billetterie: ADAM STEPHANE pour la prestation CHARLIE HEBDO', '', '6', '97735416'),
(206, 2, 'Vente de Billetterie: POUPAULT ISABELLE pour la prestation CHARLIE HEBDO', '', '114', '94135703'),
(208, 2, 'Vente de Billetterie: ARMOURDOM LAURENT pour la prestation ANCV', '', '0', '8479379'),
(209, 2, 'Vente de Billetterie: AUDIC GAELLE pour la prestation ANCV', '', '0', '49882624'),
(210, 2, 'Vente de Billetterie: BACHELOT CHRISTELLE pour la prestation ANCV', '', '0', '93697071'),
(211, 2, 'Vente de Billetterie: BADOUR STEPHANE pour la prestation ANCV', '', '0', '97247732'),
(212, 2, 'Vente de Billetterie: BAULU CATHERINE pour la prestation ANCV', '', '0', '30993821'),
(213, 2, 'Vente de Billetterie: BARRIERES AMANDINE pour la prestation ANCV', '', '0', '24977592'),
(214, 2, 'Vente de Billetterie: BERGERET STEPHANE pour la prestation ANCV', '', '0', '20189309'),
(215, 2, 'Vente de Billetterie: BLEJAN CHRISTIAN pour la prestation ANCV', '', '0', '59163041'),
(216, 2, 'Vente de Billetterie: BOIVIN VERONIQUE pour la prestation ANCV', '', '0', '75688351'),
(217, 2, 'Vente de Billetterie: BOUDAUD VIRGINIE pour la prestation ANCV', '', '0', '3338363'),
(218, 2, 'Vente de Billetterie: BOUFAQOUS ABDELJALIL pour la prestation ANCV', '', '0', '53448053'),
(219, 2, 'Vente de Billetterie: BOUVIER FREDERIC pour la prestation ANCV', '', '0', '43027788'),
(220, 2, 'Vente de Billetterie: BRANCHEREAU HERVE pour la prestation ANCV', '', '0', '79192664'),
(221, 2, 'Vente de Billetterie: BRUNET DOMINIQUE pour la prestation ANCV', '', '0', '159702'),
(222, 2, 'Vente de Billetterie: CERIBAS FILIZ pour la prestation ANCV', '', '0', '57819881'),
(223, 2, 'Vente de Billetterie: CARTRON OLIVIER pour la prestation ANCV', '', '0', '91009880'),
(224, 2, 'Vente de Billetterie: CARUSO SYLVANA pour la prestation ANCV', '', '0', '62011560'),
(225, 2, 'Vente de Billetterie: CHAPLAIN ANGELINA pour la prestation ANCV', '', '0', '79127592'),
(226, 2, 'Vente de Billetterie: CHALOPIN BERNADETTE pour la prestation ANCV', '', '0', '5003578'),
(227, 2, 'Vente de Billetterie: CHAPEAU OLIVIER pour la prestation ANCV', '', '0', '80616188'),
(228, 2, 'Vente de Billetterie: CLEMENT CHRISTOPHE pour la prestation ANCV', '', '0', '14778122'),
(229, 2, 'Vente de Billetterie: CHAFFIN Mireille pour la prestation ANCV', '', '0', '81034255'),
(230, 2, 'Vente de Billetterie: CHESNEL Brigitte pour la prestation ANCV', '', '0', '24663597'),
(231, 2, 'Vente de Billetterie: CLEMENT OLIVIER pour la prestation ANCV', '', '0', '42823596'),
(232, 2, 'Vente de Billetterie: COSNIER CHRISTOPHE pour la prestation ANCV', '', '0', '11305967'),
(233, 2, 'Vente de Billetterie: COUINET SOLEN pour la prestation ANCV', '', '0', '19334189'),
(234, 2, 'Vente de Billetterie: CRIBIER EMILIE pour la prestation ANCV', '', '0', '17076540'),
(235, 2, 'Vente de Billetterie: CROS SEVERINE pour la prestation ANCV', '', '0', '45701470'),
(236, 2, 'Vente de Billetterie: DASYLVA JEAN-PIERRE pour la prestation ANCV', '', '0', '51048573'),
(237, 2, 'Vente de Billetterie: DAGUENE FRANCOISE pour la prestation ANCV', '', '0', '66264316'),
(238, 2, 'Vente de Billetterie: DAVID ARMEL pour la prestation ANCV', '', '0', '91888070'),
(239, 2, 'Vente de Billetterie: DAVY ANTOINE pour la prestation ANCV', '', '0', '87350808'),
(240, 2, 'Vente de Billetterie: DAGUER St?phane pour la prestation ANCV', '', '0', '57507241'),
(241, 2, 'Vente de Billetterie: DELPHIN SEBASTIEN pour la prestation ANCV', '', '0', '78800495'),
(242, 2, 'Vente de Billetterie: DESMARS VERONIQUE pour la prestation ANCV', '', '0', '68038015'),
(243, 2, 'Vente de Billetterie: DINGREVILLE ALINE pour la prestation ANCV', '', '0', '94066706'),
(244, 2, 'Vente de Billetterie: DOUILLY OLIVIER pour la prestation ANCV', '', '0', '32904556'),
(245, 2, 'Vente de Billetterie: DROUIN DIDIER pour la prestation ANCV', '', '0', '27537106'),
(246, 2, 'Vente de Billetterie: FAUCHEUX FREDDY pour la prestation ANCV', '', '0', '42322294'),
(247, 2, 'Vente de Billetterie: FOUGERI ANNIE pour la prestation ANCV', '', '0', '46932091'),
(248, 2, 'Vente de Billetterie: FOURNIER MARIO pour la prestation ANCV', '', '0', '19654332'),
(249, 2, 'Vente de Billetterie: FRESNEAU VERONIQUE pour la prestation ANCV', '', '0', '69719070'),
(250, 2, 'Vente de Billetterie: GALLET STEPHANE pour la prestation ANCV', '', '0', '45453025'),
(251, 2, 'Vente de Billetterie: GARNIER DAVID pour la prestation ANCV', '', '0', '36445874'),
(252, 2, 'Vente de Billetterie: GAULTIER SEBASTIEN pour la prestation ANCV', '', '0', '10841302'),
(253, 2, 'Vente de Billetterie: GREFFIER ARNAUD pour la prestation ANCV', '', '0', '13993517'),
(254, 2, 'Vente de Billetterie: GUERIN HUGUETTE pour la prestation ANCV', '', '0', '2138763'),
(255, 2, 'Vente de Billetterie: GUERIN JOHNNY pour la prestation ANCV', '', '0', '87282689'),
(256, 2, 'Vente de Billetterie: GUERRIAU MALIKA pour la prestation ANCV', '', '0', '58203426'),
(257, 2, 'Vente de Billetterie: GUERTIN NOEL pour la prestation ANCV', '', '0', '76864041'),
(258, 2, 'Vente de Billetterie: GUYADER YOHANN pour la prestation ANCV', '', '0', '36439926'),
(259, 2, 'Vente de Billetterie: HANQUART SANDRA pour la prestation ANCV', '', '0', '34538179'),
(260, 2, 'Vente de Billetterie: HAULBERT VINCENT pour la prestation ANCV', '', '0', '35962979'),
(261, 2, 'Vente de Billetterie: KOCH NATHALIE pour la prestation ANCV', '', '0', '8927745'),
(262, 2, 'Vente de Billetterie: IDDER MEHDI pour la prestation ANCV', '', '0', '76885985'),
(263, 2, 'Vente de Billetterie: JANIN SEBASTIEN pour la prestation ANCV', '', '0', '18280906'),
(264, 2, 'Vente de Billetterie: KERBOURCH FLORENT pour la prestation ANCV', '', '0', '3562170'),
(265, 2, 'Vente de Billetterie: JOUBERT KARINE pour la prestation ANCV', '', '0', '39033078'),
(266, 2, 'Vente de Billetterie: LAURIOU MICKAEL pour la prestation ANCV', '', '0', '3622185'),
(267, 2, 'Vente de Billetterie: LEHOREAU WADA VIRGINIE pour la prestation ANCV', '', '0', '33020021'),
(268, 2, 'Vente de Billetterie: LUBIN MICHEL pour la prestation ANCV', '', '0', '51689716'),
(269, 2, 'Vente de Billetterie: MARCHAIS LAURENT pour la prestation ANCV', '', '0', '47254636'),
(270, 2, 'Vente de Billetterie: MACKOWSKI CORINE pour la prestation ANCV', '', '0', '56687340'),
(271, 2, 'Vente de Billetterie: MARTIN PATRICIA pour la prestation ANCV', '', '0', '43863993'),
(272, 2, 'Vente de Billetterie: MARSAULT FRANCOISE pour la prestation ANCV', '', '0', '39135385'),
(273, 2, 'Vente de Billetterie: MOTTEAU Thierry pour la prestation ANCV', '', '0', '73992271'),
(274, 2, 'Vente de Billetterie: MESLET THIERRY pour la prestation ANCV', '', '0', '10736636'),
(275, 2, 'Vente de Billetterie: MORTIER FREDERIC pour la prestation ANCV', '', '0', '14983785'),
(276, 2, 'Vente de Billetterie: NIANGORAN Oura Severin pour la prestation ANCV', '', '0', '55596080'),
(277, 2, 'Vente de Billetterie: NEGRI BRIGITTE pour la prestation ANCV', '', '0', '10163521'),
(278, 2, 'Vente de Billetterie: ONILLON PATRICIA pour la prestation ANCV', '', '0', '80797451'),
(279, 2, 'Vente de Billetterie: PASCAL LIONEL pour la prestation ANCV', '', '0', '75840471'),
(280, 2, 'Vente de Billetterie: PECOT THIERRY pour la prestation ANCV', '', '0', '26519796'),
(281, 2, 'Vente de Billetterie: PERGER ASTRID pour la prestation ANCV', '', '0', '57742559'),
(282, 2, 'Vente de Billetterie: PILLARD ISABELLE pour la prestation ANCV', '', '0', '84260926'),
(283, 2, 'Vente de Billetterie: POIRRIER THIERRY pour la prestation ANCV', '', '0', '60444437'),
(284, 2, 'Vente de Billetterie: POUPAULT ISABELLE pour la prestation ANCV', '', '0', '36379633'),
(285, 2, 'Vente de Billetterie: RAGOT VIRGINIE pour la prestation ANCV', '', '0', '20690905'),
(286, 2, 'Vente de Billetterie: RICHOMME HERVE pour la prestation ANCV', '', '0', '86013461'),
(287, 2, 'Vente de Billetterie: ROUAULT ANTHONY pour la prestation ANCV', '', '0', '23654142'),
(288, 2, 'Vente de Billetterie: ROUFFIAC CHRISTOPHE pour la prestation ANCV', '', '0', '15607057'),
(289, 2, 'Vente de Billetterie: ROUSSEL PASCALE pour la prestation ANCV', '', '0', '36813535'),
(290, 2, 'Vente de Billetterie: VALLEE KARINE pour la prestation ANCV', '', '0', '7378713'),
(291, 2, 'Vente de Billetterie: SALAUN ANDRE pour la prestation ANCV', '', '0', '8641962'),
(292, 2, 'Vente de Billetterie: SUREAU LYDIE pour la prestation ANCV', '', '0', '46964535'),
(301, 1, 'Remboursement de la prestation: PARTICIPATION DU C.E AUX LOISIRS pour ONILLON PATRICIA ALLOCATION LOISIRS', '33.50', '', ''),
(306, 1, 'Remboursement de la prestation: PARTICIPATION DU C.E AUX LOISIRS pour COSNIER CHRISTOPHE  ALLOCATION LOISIRS', '50', '', ''),
(307, 1, 'Remboursement de la prestation: PARTICIPATION DU C.E AUX LOISIRS pour BADOUR STEPHANE ALLOCATION LOISIRS', '50', '', ''),
(308, 1, 'Remboursement de la prestation: PARTICIPATION DU C.E AUX LOISIRS pour BAULU CATHERINE ALLOCATION LOISIRS', '50', '', ''),
(309, 1, 'Remboursement de la prestation: PARTICIPATION DU C.E AUX LOISIRS pour CERIBAS FILIZ ALLOCATION LOISIRS', '50', '', ''),
(310, 1, 'Remboursement de la prestation: PARTICIPATION DU C.E AUX LOISIRS pour GUERIN HUGUETTE ALLOCATION LOISIRS', '50', '', ''),
(311, 1, 'Remboursement de la prestation: PARTICIPATION DU C.E AUX LOISIRS pour \r\nGUERIN JOHNNY ALLOCATION LOISIRS', '50', '', ''),
(312, 1, 'Remboursement de la prestation: PARTICIPATION DU C.E AUX LOISIRS pour \r\nMARSAULT FRANCOISE ALLOCATION LOISIRS', '50', '', ''),
(313, 1, 'Remboursement de la prestation: PARTICIPATION DU C.E AUX LOISIRS pour \r\nPOIRRIER THIERRY ALLOCATION LOISIRS', '50', '', ''),
(314, 1, 'Remboursement de la prestation: PARTICIPATION DU C.E AUX LOISIRS pour \r\nPOUPAULT ISABELLE ALLOCATION LOISIRS', '50', '', ''),
(315, 1, 'Remboursement de la prestation: PARTICIPATION DU C.E AUX LOISIRS pour \r\nROUSSEL PASCAL ALLOCATION LOISIRS', '50', '', ''),
(316, 1, 'Remboursement de la prestation: PARTICIPATION DU C.E AUX LOISIRS pour \r\nCLEMENT OLIVIER ALLOCATION LOISIRS', '50', '', ''),
(317, 2, 'Vente de Billetterie: ADAM STEPHANE pour la prestation ANCV', '', '0', ''),
(318, 2, 'Ajout du produit fixe: SUBVENTION ASC 2015', '', '39400', ''),
(319, 1, 'Remboursement de la prestation: ALLOCATION LOISIRS pour DESMARS VERONIQUE ALLOCATION LOISIRS', '50', '', '1442206046'),
(323, 1, 'Achat: ', '0', '', ''),
(324, 1, 'Achat: Mobil home 120', '120', '', ''),
(326, 2, 'Vente de Billetterie: ONILLON PATRICIA pour la prestation Mobil home 120', '', '120', '10082378'),
(327, 1, 'Achat: Mobil Home 140', '7000', '', '');

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
  `etat_facture` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `etat_billet_salarie` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=261 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`, `num_mouvement`) VALUES
(101, 109, '24-03-2015', 3, '0', 1, '0'),
(103, 110, '10-03-2015', 3, '36', 1, '0'),
(104, 83, '10-03-2015', 3, '6', 1, '0'),
(105, 156, '10-03-2015', 3, '3', 1, '0'),
(106, 150, '10-03-2015', 3, '6', 1, '0'),
(107, 138, '10-03-2015', 3, '6', 1, '0'),
(108, 130, '10-03-2015', 3, '3', 1, '0'),
(109, 131, '10-03-2015', 3, '6', 1, '0'),
(110, 144, '10-03-2015', 3, '6', 1, '0'),
(111, 133, '10-03-2015', 3, '3', 1, '0'),
(112, 103, '10-03-2015', 3, '6', 1, '0'),
(113, 113, '10-03-2015', 3, '15', 1, '0'),
(114, 129, '10-03-2015', 3, '6', 1, '0'),
(115, 75, '10-03-2015', 3, '3', 1, '0'),
(116, 99, '10-03-2015', 3, '12', 1, '0'),
(117, 86, '10-03-2015', 3, '6', 1, '0'),
(118, 125, '10-03-2015', 3, '6', 1, '0'),
(119, 76, '10-03-2015', 3, '15', 1, '0'),
(120, 97, '10-03-2015', 3, '3', 1, '0'),
(121, 158, '10-03-2015', 3, '6', 1, '0'),
(122, 116, '10-03-2015', 3, '6', 1, '0'),
(124, 120, '10-03-2015', 3, '6', 1, '0'),
(125, 128, '10-03-2015', 3, '3', 1, '0'),
(126, 114, '10-03-2015', 3, '15', 1, '0'),
(127, 106, '10-03-2015', 3, '3', 1, '0'),
(128, 132, '10-03-2015', 3, '6', 1, '0'),
(129, 96, '10-03-2015', 3, '3', 1, '0'),
(130, 82, '10-03-2015', 3, '6', 1, '0'),
(131, 92, '10-03-2015', 3, '6', 1, '0'),
(132, 124, '10-03-2015', 3, '6', 1, '0'),
(133, 152, '10-03-2015', 3, '6', 1, '0'),
(134, 87, '10-03-2015', 3, '6', 1, '0'),
(135, 143, '10-03-2015', 3, '6', 1, '0'),
(136, 98, '10-03-2015', 3, '3', 1, '0'),
(137, 127, '10-03-2015', 3, '6', 1, '0'),
(138, 119, '10-03-2015', 3, '6', 1, '0'),
(139, 140, '10-03-2015', 3, '3', 1, '0'),
(140, 75, '10-03-2015', 3, '6', 1, '0'),
(141, 81, '10-03-2015', 3, '6', 1, '0'),
(142, 84, '10-03-2015', 3, '6', 1, '0'),
(143, 78, '10-03-2015', 3, '3', 1, '0'),
(144, 108, '10-03-2015', 3, '3', 1, '0'),
(145, 123, '10-03-2015', 3, '6', 1, '0'),
(146, 111, '10-03-2015', 3, '6', 1, '0'),
(147, 139, '10-03-2015', 3, '6', 1, '0'),
(148, 91, '10-03-2015', 3, '6', 1, '0'),
(149, 77, '10-03-2015', 3, '6', 1, '0'),
(150, 118, '10-03-2015', 3, '6', 1, '0'),
(151, 88, '10-03-2015', 3, '6', 1, '0'),
(152, 107, '10-03-2015', 3, '6', 1, '0'),
(153, 105, '10-03-2015', 3, '6', 1, '0'),
(154, 80, '10-03-2015', 3, '6', 1, '0'),
(155, 145, '10-03-2015', 3, '6', 1, '0'),
(156, 102, '10-03-2015', 3, '3', 1, '0'),
(157, 74, '10-03-2015', 3, '3', 1, '0'),
(158, 121, '10-03-2015', 3, '6', 1, '0'),
(159, 79, '10-03-2015', 3, '6', 1, '0'),
(160, 94, '10-03-2015', 3, '6', 1, '0'),
(161, 135, '10-03-2015', 3, '6', 1, '0'),
(162, 90, '10-03-2015', 3, '3', 1, '0'),
(163, 154, '10-03-2015', 3, '3', 1, '0'),
(164, 126, '10-03-2015', 3, '6', 1, '0'),
(165, 117, '10-03-2015', 3, '6', 1, '0'),
(166, 147, '10-03-2015', 3, '6', 1, '0'),
(167, 72, '10-03-2015', 3, '6', 1, '0'),
(168, 146, '10-03-2015', 3, '6', 1, '0'),
(169, 104, '10-03-2015', 3, '3', 1, '0'),
(170, 109, '10-03-2015', 3, '6', 1, '0'),
(171, 137, '10-03-2015', 3, '114', 1, '0'),
(173, 99, '24-03-2015', 3, '0', 1, '0'),
(174, 121, '24-03-2015', 3, '0', 1, '0'),
(175, 116, '24-03-2015', 3, '0', 1, '0'),
(176, 83, '24-03-2015', 3, '0', 1, '0'),
(177, 80, '24-03-2015', 3, '0', 1, '0'),
(178, 157, '24-03-2015', 3, '0', 1, '0'),
(179, 136, '24-03-2015', 3, '0', 1, '0'),
(180, 134, '24-03-2015', 3, '0', 1, '0'),
(181, 98, '24-03-2015', 3, '0', 1, '0'),
(182, 126, '24-03-2015', 3, '0', 1, '0'),
(183, 128, '24-03-2015', 3, '0', 1, '0'),
(184, 123, '24-03-2015', 3, '0', 1, '0'),
(185, 110, '24-03-2015', 3, '0', 1, '0'),
(186, 77, '24-03-2015', 3, '0', 1, '0'),
(187, 159, '24-03-2015', 3, '0', 1, '0'),
(188, 72, '24-03-2015', 3, '0', 1, '0'),
(189, 125, '24-03-2015', 3, '0', 1, '0'),
(190, 154, '24-03-2015', 3, '0', 1, '0'),
(191, 87, '24-03-2015', 3, '0', 1, '0'),
(192, 138, '24-03-2015', 3, '0', 1, '0'),
(193, 129, '24-03-2015', 3, '0', 1, '0'),
(194, 148, '24-03-2015', 3, '0', 1, '0'),
(195, 149, '24-03-2015', 3, '0', 1, '0'),
(196, 130, '24-03-2015', 3, '0', 1, '0'),
(197, 106, '24-03-2015', 3, '0', 1, '0'),
(198, 111, '24-03-2015', 3, '0', 1, '0'),
(199, 155, '24-03-2015', 3, '0', 1, '0'),
(200, 90, '24-03-2015', 3, '0', 1, '0'),
(201, 127, '24-03-2015', 3, '0', 1, '0'),
(202, 84, '24-03-2015', 3, '0', 1, '0'),
(203, 112, '24-03-2015', 3, '0', 1, '0'),
(204, 96, '24-03-2015', 3, '0', 1, '0'),
(205, 152, '24-03-2015', 3, '0', 1, '0'),
(206, 100, '24-03-2015', 3, '0', 1, '0'),
(207, 95, '24-03-2015', 3, '0', 1, '0'),
(208, 145, '24-03-2015', 3, '0', 1, '0'),
(209, 113, '24-03-2015', 3, '0', 1, '0'),
(210, 73, '24-03-2015', 3, '0', 1, '0'),
(211, 117, '24-03-2015', 3, '0', 1, '0'),
(212, 107, '24-03-2015', 3, '0', 1, '0'),
(213, 120, '24-03-2015', 3, '0', 1, '0'),
(214, 118, '24-03-2015', 3, '0', 1, '0'),
(215, 139, '24-03-2015', 3, '0', 1, '0'),
(216, 131, '24-03-2015', 3, '0', 1, '0'),
(217, 114, '24-03-2015', 3, '0', 1, '0'),
(218, 122, '24-03-2015', 3, '0', 1, '0'),
(219, 119, '24-03-2015', 3, '0', 1, '0'),
(220, 76, '24-03-2015', 3, '0', 1, '0'),
(221, 105, '24-03-2015', 3, '0', 1, '0'),
(223, 101, '24-03-2015', 3, '0', 1, '0'),
(224, 141, '24-03-2015', 3, '0', 1, '0'),
(225, 102, '24-03-2015', 3, '0', 1, '0'),
(226, 97, '24-03-2015', 3, '0', 1, '0'),
(227, 89, '24-03-2015', 3, '0', 1, '0'),
(228, 142, '24-03-2015', 3, '0', 1, '0'),
(229, 86, '24-03-2015', 3, '0', 1, '0'),
(230, 146, '24-03-2015', 3, '0', 1, '0'),
(231, 94, '24-03-2015', 3, '0', 1, '0'),
(232, 75, '24-03-2015', 3, '0', 1, '0'),
(233, 133, '24-03-2015', 3, '0', 1, '0'),
(234, 140, '24-03-2015', 3, '0', 1, '0'),
(235, 74, '24-03-2015', 3, '0', 1, '0'),
(236, 85, '24-03-2015', 3, '0', 1, '0'),
(237, 108, '24-03-2015', 3, '0', 1, '0'),
(238, 144, '24-03-2015', 3, '0', 1, '0'),
(239, 147, '24-03-2015', 3, '0', 1, '0'),
(240, 103, '24-03-2015', 3, '0', 1, '0'),
(241, 81, '24-03-2015', 3, '0', 1, '0'),
(242, 151, '24-03-2015', 3, '0', 1, '0'),
(243, 79, '24-03-2015', 3, '0', 1, '0'),
(244, 132, '24-03-2015', 3, '0', 1, '0'),
(245, 153, '24-03-2015', 3, '0', 1, '0'),
(246, 124, '24-03-2015', 3, '0', 1, '0'),
(247, 158, '24-03-2015', 3, '0', 1, '0'),
(248, 88, '24-03-2015', 3, '0', 1, '0'),
(249, 78, '24-03-2015', 3, '0', 1, '0'),
(250, 137, '24-03-2015', 3, '0', 1, '0'),
(251, 135, '24-03-2015', 3, '0', 1, '0'),
(252, 115, '24-03-2015', 3, '0', 1, '0'),
(253, 143, '24-03-2015', 3, '0', 1, '0'),
(254, 91, '24-03-2015', 3, '0', 1, '0'),
(255, 82, '24-03-2015', 3, '0', 1, '0'),
(256, 104, '24-03-2015', 3, '0', 1, '0'),
(257, 156, '24-03-2015', 3, '0', 1, '0'),
(258, 92, '24-03-2015', 3, '0', 1, '0'),
(260, 132, '05.05.2015', 3, '120', 0, '10082378');

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `charge_fixe`
--

INSERT INTO `charge_fixe` (`idchargefixe`, `designation`, `date_charge_fixe`, `montant_charge`, `num_mouvement`) VALUES
(5, 'FRAIS ENVOI ANCV', '24-03-2015', '302.50', '');

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
(41, 4, 'Frais d''Achats', 'Achats Combustible'),
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
(57, 6, 'T&eacute;l&eacute;phone, fax, internet', 'TÃ©lÃ©phonie'),
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
(1, 'COMITE D''ENTREPRISE MLP', '0', '0', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '31-12-2014', '31-12-2015');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=328 ;

--
-- Contenu de la table `cpt_resultat`
--

INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(127, '', '1427151600', 'Achat - ANCV', '28630', ''),
(129, '', '1427151600', 'ANCV REVERSEMENT ENTREPRISE', '', '21510.00'),
(131, '', '1427151600', 'FRAIS ENVOI ANCV', '302.50', ''),
(134, '', '1425942000', 'Achat - CHARLIE HEBDO', '528', ''),
(138, '77888520', '1425942000', 'Vente de Billetterie: BRANCHEREAU HERVE pour la prestation CHARLIE HEBDO', '', '36'),
(140, '35203667', '1425942000', 'Vente de Billetterie: SALAUN ANDRE pour la prestation CHARLIE HEBDO', '', '3'),
(143, '34093613', '1425942000', 'Vente de Billetterie: CLEMENT OLIVIER pour la prestation CHARLIE HEBDO', '', '3'),
(146, '90007063', '1425942000', 'Vente de Billetterie: LEHOREAU WADA VIRGINIE pour la prestation CHARLIE HEBDO', '', '3'),
(148, '94566683', '1425942000', 'Vente de Billetterie: DOUILLY OLIVIER pour la prestation CHARLIE HEBDO', '', '15'),
(150, '7070390', '1425942000', 'Vente de Billetterie: LAURIOU MICKAEL pour la prestation CHARLIE HEBDO', '', '3'),
(151, '20918838', '1425942000', 'Vente de Billetterie: ARMOURDOM LAURENT pour la prestation CHARLIE HEBDO', '', '12'),
(154, '57787493', '1425942000', 'Vente de Billetterie: GUERIN JOHNNY pour la prestation CHARLIE HEBDO', '', '15'),
(155, '43396733', '1425942000', 'Vente de Billetterie: HAULBERT VINCENT pour la prestation CHARLIE HEBDO', '', '3'),
(159, '64231022', '1425942000', 'Vente de Billetterie: FOURNIER MARIO pour la prestation CHARLIE HEBDO', '', '6'),
(160, '58433076', '1425942000', 'Vente de Billetterie: BOUFAQOUS ABDELJALIL pour la prestation CHARLIE HEBDO', '', '3'),
(161, '38867830', '1425942000', 'Vente de Billetterie: GAULTIER SEBASTIEN pour la prestation CHARLIE HEBDO', '', '15'),
(162, '93588287', '1425942000', 'Vente de Billetterie: COSNIER CHRISTOPHE pour la prestation CHARLIE HEBDO', '', '3'),
(163, '5716332', '1425942000', 'Vente de Billetterie: ONILLON PATRICIA pour la prestation CHARLIE HEBDO', '', '6'),
(164, '40247192', '1425942000', 'Vente de Billetterie: DAVY ANTOINE pour la prestation CHARLIE HEBDO', '', '3'),
(165, '78190047', '1425942000', 'Vente de Billetterie: ROUSSEL PASCALE pour la prestation CHARLIE HEBDO', '', '6'),
(166, '22957854', '1425942000', 'Vente de Billetterie: SUREAU LYDIE pour la prestation CHARLIE HEBDO', '', '6'),
(167, '6950154', '1425942000', 'Vente de Billetterie: PECOT THIERRY pour la prestation CHARLIE HEBDO', '', '6'),
(168, '99680257', '1425942000', 'Vente de Billetterie: DAGUER St?phane pour la prestation CHARLIE HEBDO', '', '6'),
(169, '22796043', '1425942000', 'Vente de Billetterie: CHALOPIN BERNADETTE pour la prestation CHARLIE HEBDO', '', '6'),
(170, '92148009', '1425942000', 'Vente de Billetterie: ROUAULT ANTHONY pour la prestation CHARLIE HEBDO', '', '6'),
(171, '1403553', '1425942000', 'Vente de Billetterie: BOIVIN VERONIQUE pour la prestation CHARLIE HEBDO', '', '3'),
(172, '97490311', '1425942000', 'Vente de Billetterie: DASYLVA JEAN-PIERRE pour la prestation CHARLIE HEBDO', '', '6'),
(173, '3641379', '1425942000', 'Vente de Billetterie: GUERIN HUGUETTE pour la prestation CHARLIE HEBDO', '', '6'),
(174, '54188181', '1425942000', 'Vente de Billetterie: LUBIN MICHEL pour la prestation CHARLIE HEBDO', '', '3'),
(175, '35864404', '1425942000', 'Vente de Billetterie: LAURIOU MICKAEL pour la prestation CHARLIE HEBDO', '', '6'),
(176, '59615731', '1425942000', 'Vente de Billetterie: MORTIER FREDERIC pour la prestation CHARLIE HEBDO', '', '6'),
(177, '53405864', '1425942000', 'Vente de Billetterie: DAGUENE FRANCOISE pour la prestation CHARLIE HEBDO', '', '6'),
(178, '67706393', '1425942000', 'Vente de Billetterie: POIRRIER THIERRY pour la prestation CHARLIE HEBDO', '', '3'),
(179, '14437311', '1425942000', 'Vente de Billetterie: MARTIN PATRICIA pour la prestation CHARLIE HEBDO', '', '3'),
(180, '35284155', '1425942000', 'Vente de Billetterie: BOUVIER FREDERIC pour la prestation CHARLIE HEBDO', '', '6'),
(181, '29814792', '1425942000', 'Vente de Billetterie: COUINET SOLEN pour la prestation CHARLIE HEBDO', '', '6'),
(182, '49456544', '1425942000', 'Vente de Billetterie: GALLET STEPHANE pour la prestation CHARLIE HEBDO', '', '6'),
(183, '73238056', '1425942000', 'Vente de Billetterie: ROUFFIAC CHRISTOPHE pour la prestation CHARLIE HEBDO', '', '6'),
(184, '75019028', '1425942000', 'Vente de Billetterie: BRUNET DOMINIQUE pour la prestation CHARLIE HEBDO', '', '6'),
(185, '24745278', '1425942000', 'Vente de Billetterie: FRESNEAU VERONIQUE pour la prestation CHARLIE HEBDO', '', '6'),
(186, '64707700', '1425942000', 'Vente de Billetterie: PILLARD ISABELLE pour la prestation CHARLIE HEBDO', '', '6'),
(187, '75633744', '1425942000', 'Vente de Billetterie: FOUGERI ANNIE pour la prestation CHARLIE HEBDO', '', '6'),
(188, '16124366', '1425942000', 'Vente de Billetterie: GUERRIAU MALIKA pour la prestation CHARLIE HEBDO', '', '6'),
(189, '51215389', '1425942000', 'Vente de Billetterie: BAULU CATHERINE pour la prestation CHARLIE HEBDO', '', '6'),
(190, '91945333', '1425942000', 'Vente de Billetterie: DINGREVILLE ALINE pour la prestation CHARLIE HEBDO', '', '6'),
(191, '85210311', '1425942000', 'Vente de Billetterie: HANQUART SANDRA pour la prestation CHARLIE HEBDO', '', '3'),
(192, '48633428', '1425942000', 'Vente de Billetterie: MARCHAIS LAURENT pour la prestation CHARLIE HEBDO', '', '3'),
(193, '63016188', '1425942000', 'Vente de Billetterie: AUDIC GAELLE pour la prestation CHARLIE HEBDO', '', '6'),
(194, '31132058', '1425942000', 'Vente de Billetterie: NEGRI BRIGITTE pour la prestation CHARLIE HEBDO', '', '6'),
(195, '6777589', '1425942000', 'Vente de Billetterie: JOUBERT KARINE pour la prestation CHARLIE HEBDO', '', '6'),
(196, '13090392', '1425942000', 'Vente de Billetterie: RAGOT VIRGINIE pour la prestation CHARLIE HEBDO', '', '6'),
(197, '61360544', '1425942000', 'Vente de Billetterie: CROS SEVERINE pour la prestation CHARLIE HEBDO', '', '3'),
(198, '70083078', '1425942000', 'Vente de Billetterie: CHAPLAIN ANGELINA pour la prestation CHARLIE HEBDO', '', '3'),
(199, '32806862', '1425942000', 'Vente de Billetterie: BOUDAUD VIRGINIE pour la prestation CHARLIE HEBDO', '', '6'),
(200, '49065071', '1425942000', 'Vente de Billetterie: FAUCHEUX FREDDY pour la prestation CHARLIE HEBDO', '', '6'),
(201, '75220921', '1425942000', 'Vente de Billetterie: MOTTEAU Thierry pour la prestation CHARLIE HEBDO', '', '6'),
(202, '55183117', '1425942000', 'Vente de Billetterie: CARTRON OLIVIER pour la prestation CHARLIE HEBDO', '', '6'),
(203, '40627513', '1425942000', 'Vente de Billetterie: KERBOURCH FLORENT pour la prestation CHARLIE HEBDO', '', '6'),
(204, '83343185', '1425942000', 'Vente de Billetterie: VALLEE KARINE pour la prestation CHARLIE HEBDO', '', '3'),
(205, '97735416', '1425942000', 'Vente de Billetterie: ADAM STEPHANE pour la prestation CHARLIE HEBDO', '', '6'),
(206, '94135703', '1425942000', 'Vente de Billetterie: POUPAULT ISABELLE pour la prestation CHARLIE HEBDO', '', '114'),
(208, '8479379', '1427151600', 'Vente de Billetterie: ARMOURDOM LAURENT pour la prestation ANCV', '', '0'),
(209, '49882624', '1427151600', 'Vente de Billetterie: AUDIC GAELLE pour la prestation ANCV', '', '0'),
(210, '93697071', '1427151600', 'Vente de Billetterie: BACHELOT CHRISTELLE pour la prestation ANCV', '', '0'),
(211, '97247732', '1427151600', 'Vente de Billetterie: BADOUR STEPHANE pour la prestation ANCV', '', '0'),
(212, '30993821', '1427151600', 'Vente de Billetterie: BAULU CATHERINE pour la prestation ANCV', '', '0'),
(213, '24977592', '1427151600', 'Vente de Billetterie: BARRIERES AMANDINE pour la prestation ANCV', '', '0'),
(214, '20189309', '1427151600', 'Vente de Billetterie: BERGERET STEPHANE pour la prestation ANCV', '', '0'),
(215, '59163041', '1427151600', 'Vente de Billetterie: BLEJAN CHRISTIAN pour la prestation ANCV', '', '0'),
(216, '75688351', '1427151600', 'Vente de Billetterie: BOIVIN VERONIQUE pour la prestation ANCV', '', '0'),
(217, '3338363', '1427151600', 'Vente de Billetterie: BOUDAUD VIRGINIE pour la prestation ANCV', '', '0'),
(218, '53448053', '1427151600', 'Vente de Billetterie: BOUFAQOUS ABDELJALIL pour la prestation ANCV', '', '0'),
(219, '43027788', '1427151600', 'Vente de Billetterie: BOUVIER FREDERIC pour la prestation ANCV', '', '0'),
(220, '79192664', '1427151600', 'Vente de Billetterie: BRANCHEREAU HERVE pour la prestation ANCV', '', '0'),
(221, '159702', '1427151600', 'Vente de Billetterie: BRUNET DOMINIQUE pour la prestation ANCV', '', '0'),
(222, '57819881', '1427151600', 'Vente de Billetterie: CERIBAS FILIZ pour la prestation ANCV', '', '0'),
(223, '91009880', '1427151600', 'Vente de Billetterie: CARTRON OLIVIER pour la prestation ANCV', '', '0'),
(224, '62011560', '1427151600', 'Vente de Billetterie: CARUSO SYLVANA pour la prestation ANCV', '', '0'),
(225, '79127592', '1427151600', 'Vente de Billetterie: CHAPLAIN ANGELINA pour la prestation ANCV', '', '0'),
(226, '5003578', '1427151600', 'Vente de Billetterie: CHALOPIN BERNADETTE pour la prestation ANCV', '', '0'),
(227, '80616188', '1427151600', 'Vente de Billetterie: CHAPEAU OLIVIER pour la prestation ANCV', '', '0'),
(228, '14778122', '1427151600', 'Vente de Billetterie: CLEMENT CHRISTOPHE pour la prestation ANCV', '', '0'),
(229, '81034255', '1427151600', 'Vente de Billetterie: CHAFFIN Mireille pour la prestation ANCV', '', '0'),
(230, '24663597', '1427151600', 'Vente de Billetterie: CHESNEL Brigitte pour la prestation ANCV', '', '0'),
(231, '42823596', '1427151600', 'Vente de Billetterie: CLEMENT OLIVIER pour la prestation ANCV', '', '0'),
(232, '11305967', '1427151600', 'Vente de Billetterie: COSNIER CHRISTOPHE pour la prestation ANCV', '', '0'),
(233, '19334189', '1427151600', 'Vente de Billetterie: COUINET SOLEN pour la prestation ANCV', '', '0'),
(234, '17076540', '1427151600', 'Vente de Billetterie: CRIBIER EMILIE pour la prestation ANCV', '', '0'),
(235, '45701470', '1427151600', 'Vente de Billetterie: CROS SEVERINE pour la prestation ANCV', '', '0'),
(236, '51048573', '1427151600', 'Vente de Billetterie: DASYLVA JEAN-PIERRE pour la prestation ANCV', '', '0'),
(237, '66264316', '1427151600', 'Vente de Billetterie: DAGUENE FRANCOISE pour la prestation ANCV', '', '0'),
(238, '91888070', '1427151600', 'Vente de Billetterie: DAVID ARMEL pour la prestation ANCV', '', '0'),
(239, '87350808', '1427151600', 'Vente de Billetterie: DAVY ANTOINE pour la prestation ANCV', '', '0'),
(240, '57507241', '1427151600', 'Vente de Billetterie: DAGUER St?phane pour la prestation ANCV', '', '0'),
(241, '78800495', '1427151600', 'Vente de Billetterie: DELPHIN SEBASTIEN pour la prestation ANCV', '', '0'),
(242, '68038015', '1427151600', 'Vente de Billetterie: DESMARS VERONIQUE pour la prestation ANCV', '', '0'),
(243, '94066706', '1427151600', 'Vente de Billetterie: DINGREVILLE ALINE pour la prestation ANCV', '', '0'),
(244, '32904556', '1427151600', 'Vente de Billetterie: DOUILLY OLIVIER pour la prestation ANCV', '', '0'),
(245, '27537106', '1427151600', 'Vente de Billetterie: DROUIN DIDIER pour la prestation ANCV', '', '0'),
(246, '42322294', '1427151600', 'Vente de Billetterie: FAUCHEUX FREDDY pour la prestation ANCV', '', '0'),
(247, '46932091', '1427151600', 'Vente de Billetterie: FOUGERI ANNIE pour la prestation ANCV', '', '0'),
(248, '19654332', '1427151600', 'Vente de Billetterie: FOURNIER MARIO pour la prestation ANCV', '', '0'),
(249, '69719070', '1427151600', 'Vente de Billetterie: FRESNEAU VERONIQUE pour la prestation ANCV', '', '0'),
(250, '45453025', '1427151600', 'Vente de Billetterie: GALLET STEPHANE pour la prestation ANCV', '', '0'),
(251, '36445874', '1427151600', 'Vente de Billetterie: GARNIER DAVID pour la prestation ANCV', '', '0'),
(252, '10841302', '1427151600', 'Vente de Billetterie: GAULTIER SEBASTIEN pour la prestation ANCV', '', '0'),
(253, '13993517', '1427151600', 'Vente de Billetterie: GREFFIER ARNAUD pour la prestation ANCV', '', '0'),
(254, '2138763', '1427151600', 'Vente de Billetterie: GUERIN HUGUETTE pour la prestation ANCV', '', '0'),
(255, '87282689', '1427151600', 'Vente de Billetterie: GUERIN JOHNNY pour la prestation ANCV', '', '0'),
(256, '58203426', '1427151600', 'Vente de Billetterie: GUERRIAU MALIKA pour la prestation ANCV', '', '0'),
(257, '76864041', '1427151600', 'Vente de Billetterie: GUERTIN NOEL pour la prestation ANCV', '', '0'),
(258, '36439926', '1427151600', 'Vente de Billetterie: GUYADER YOHANN pour la prestation ANCV', '', '0'),
(259, '34538179', '1427151600', 'Vente de Billetterie: HANQUART SANDRA pour la prestation ANCV', '', '0'),
(260, '35962979', '1427151600', 'Vente de Billetterie: HAULBERT VINCENT pour la prestation ANCV', '', '0'),
(261, '8927745', '1427151600', 'Vente de Billetterie: KOCH NATHALIE pour la prestation ANCV', '', '0'),
(262, '76885985', '1427151600', 'Vente de Billetterie: IDDER MEHDI pour la prestation ANCV', '', '0'),
(263, '18280906', '1427151600', 'Vente de Billetterie: JANIN SEBASTIEN pour la prestation ANCV', '', '0'),
(264, '3562170', '1427151600', 'Vente de Billetterie: KERBOURCH FLORENT pour la prestation ANCV', '', '0'),
(265, '39033078', '1427151600', 'Vente de Billetterie: JOUBERT KARINE pour la prestation ANCV', '', '0'),
(266, '3622185', '1427151600', 'Vente de Billetterie: LAURIOU MICKAEL pour la prestation ANCV', '', '0'),
(267, '33020021', '1427151600', 'Vente de Billetterie: LEHOREAU WADA VIRGINIE pour la prestation ANCV', '', '0'),
(268, '51689716', '1427151600', 'Vente de Billetterie: LUBIN MICHEL pour la prestation ANCV', '', '0'),
(269, '47254636', '1427151600', 'Vente de Billetterie: MARCHAIS LAURENT pour la prestation ANCV', '', '0'),
(270, '56687340', '1427151600', 'Vente de Billetterie: MACKOWSKI CORINE pour la prestation ANCV', '', '0'),
(271, '43863993', '1427151600', 'Vente de Billetterie: MARTIN PATRICIA pour la prestation ANCV', '', '0'),
(272, '39135385', '1427151600', 'Vente de Billetterie: MARSAULT FRANCOISE pour la prestation ANCV', '', '0'),
(273, '73992271', '1427151600', 'Vente de Billetterie: MOTTEAU Thierry pour la prestation ANCV', '', '0'),
(274, '10736636', '1427151600', 'Vente de Billetterie: MESLET THIERRY pour la prestation ANCV', '', '0'),
(275, '14983785', '1427151600', 'Vente de Billetterie: MORTIER FREDERIC pour la prestation ANCV', '', '0'),
(276, '55596080', '1427151600', 'Vente de Billetterie: NIANGORAN Oura Severin pour la prestation ANCV', '', '0'),
(277, '10163521', '1427151600', 'Vente de Billetterie: NEGRI BRIGITTE pour la prestation ANCV', '', '0'),
(278, '80797451', '1427151600', 'Vente de Billetterie: ONILLON PATRICIA pour la prestation ANCV', '', '0'),
(279, '75840471', '1427151600', 'Vente de Billetterie: PASCAL LIONEL pour la prestation ANCV', '', '0'),
(280, '26519796', '1427151600', 'Vente de Billetterie: PECOT THIERRY pour la prestation ANCV', '', '0'),
(281, '57742559', '1427151600', 'Vente de Billetterie: PERGER ASTRID pour la prestation ANCV', '', '0'),
(282, '84260926', '1427151600', 'Vente de Billetterie: PILLARD ISABELLE pour la prestation ANCV', '', '0'),
(283, '60444437', '1427151600', 'Vente de Billetterie: POIRRIER THIERRY pour la prestation ANCV', '', '0'),
(284, '36379633', '1427151600', 'Vente de Billetterie: POUPAULT ISABELLE pour la prestation ANCV', '', '0'),
(285, '20690905', '1427151600', 'Vente de Billetterie: RAGOT VIRGINIE pour la prestation ANCV', '', '0'),
(286, '86013461', '1427151600', 'Vente de Billetterie: RICHOMME HERVE pour la prestation ANCV', '', '0'),
(287, '23654142', '1427151600', 'Vente de Billetterie: ROUAULT ANTHONY pour la prestation ANCV', '', '0'),
(288, '15607057', '1427151600', 'Vente de Billetterie: ROUFFIAC CHRISTOPHE pour la prestation ANCV', '', '0'),
(289, '36813535', '1427151600', 'Vente de Billetterie: ROUSSEL PASCALE pour la prestation ANCV', '', '0'),
(290, '7378713', '1427151600', 'Vente de Billetterie: VALLEE KARINE pour la prestation ANCV', '', '0'),
(291, '8641962', '1427151600', 'Vente de Billetterie: SALAUN ANDRE pour la prestation ANCV', '', '0'),
(292, '46964535', '1427151600', 'Vente de Billetterie: SUREAU LYDIE pour la prestation ANCV', '', '0'),
(301, '', '1424127600', 'Remboursement de la Prestation pour ONILLON PATRICIA ALLOCATION LOISIRS - PARTICIPATION DU C.E AUX LOISIRS', '33.50', ''),
(306, '', '1421276400', 'Remboursement de la Prestation pour COSNIER CHRISTOPHE  ALLOCATION LOISIRS - PARTICIPATION DU C.E AUX LOISIRS', '50', ''),
(307, '', '1429513200', 'Remboursement de la Prestation pour BADOUR STEPHANE ALLOCATION LOISIRS - PARTICIPATION DU C.E AUX LOISIRS', '50', ''),
(308, '', '1424156400', 'Remboursement de la Prestation pour BAULU CATHERINE ALLOCATION LOISIRS - PARTICIPATION DU C.E AUX LOISIRS', '50', ''),
(309, '', '1422774000', 'Remboursement de la Prestation pour CERIBAS FILIZ ALLOCATION LOISIRS - PARTICIPATION DU C.E AUX LOISIRS', '50', ''),
(310, '', '1421046000', 'Remboursement de la Prestation pour GUERIN HUGUETTE ALLOCATION LOISIRS - PARTICIPATION DU C.E AUX LOISIRS', '50', ''),
(311, '', '1421132400', 'Remboursement de la Prestation pour GUERIN JOHNNY ALLOCATION LOISIRS - PARTICIPATION DU C.E AUX LOISIRS', '50', ''),
(312, '', '1421305200', 'Remboursement de la Prestation pour MARSAULT FRANCOISE ALLOCATION LOISIRS - PARTICIPATION DU C.E AUX LOISIRS', '50', ''),
(313, '', '1424156400', 'Remboursement de la Prestation pour POIRRIER THIERRY ALLOCATION LOISIRS - PARTICIPATION DU C.E AUX LOISIRS', '50', ''),
(314, '', '1429513200', 'Remboursement de la Prestation pour POUPAULT ISABELLE ALLOCATION LOISIRS - PARTICIPATION DU C.E AUX LOISIRS', '50', ''),
(315, '', '1421132400', 'Remboursement de la Prestation pour ROUSSEL PASCAL ALLOCATION LOISIRS - PARTICIPATION DU C.E AUX LOISIRS', '50', ''),
(316, '', '1424156400', 'Remboursement de la Prestation pour CLEMENT OLIVIER ALLOCATION LOISIRS - PARTICIPATION DU C.E AUX LOISIRS', '50', ''),
(317, '', '1427180400', 'Vente de Billetterie: ADAM STEPHANE pour la prestation ANCV', '', '0'),
(318, '', '1423522800', 'SUBVENTION ASC 2015', '', '39400'),
(319, '1442206046', '1432591200', 'Remboursement de la Prestation pour DESMARS VERONIQUE ALLOCATION LOISIRS - ALLOCATION LOISIRS', '50', ''),
(323, '', '1432664100', 'Achat - ', '0', ''),
(324, '', '1420326000', 'Achat - Mobil home 120', '120', ''),
(326, '10082378', '1430776800', 'Vente de Billetterie: ONILLON PATRICIA pour la prestation Mobil home 120', '', '120'),
(327, '', '1420326000', 'Achat - Mobil Home 140', '7000', '');

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
(48, 'Actions Aides Vacances'),
(49, 'Actions diverses'),
(54, 'Mobil Home');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=257 ;

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(96, 101, 84, '9', '0', '90', 0),
(100, 103, 85, '12', '36', '0', 0),
(101, 104, 85, '2', '6', '0', 0),
(102, 105, 85, '1', '3', '0', 0),
(103, 106, 85, '2', '6', '0', 0),
(104, 107, 85, '2', '6', '0', 0),
(105, 108, 85, '1', '3', '0', 0),
(106, 109, 85, '2', '6', '0', 0),
(107, 110, 85, '2', '6', '0', 0),
(108, 111, 85, '1', '3', '0', 0),
(109, 112, 85, '2', '6', '0', 0),
(110, 113, 85, '5', '15', '0', 0),
(111, 114, 85, '2', '6', '0', 0),
(112, 115, 85, '1', '3', '0', 0),
(113, 116, 85, '4', '12', '0', 0),
(114, 117, 85, '2', '6', '0', 0),
(115, 118, 85, '2', '6', '0', 0),
(116, 119, 85, '5', '15', '0', 0),
(117, 120, 85, '1', '3', '0', 0),
(118, 121, 85, '2', '6', '0', 0),
(119, 122, 85, '2', '6', '0', 0),
(121, 124, 85, '2', '6', '0', 0),
(122, 125, 85, '1', '3', '0', 0),
(123, 126, 85, '5', '15', '0', 0),
(124, 127, 85, '1', '3', '0', 0),
(125, 128, 85, '2', '6', '0', 0),
(126, 129, 85, '1', '3', '0', 0),
(127, 130, 85, '2', '6', '0', 0),
(128, 131, 85, '2', '6', '0', 0),
(129, 132, 85, '2', '6', '0', 0),
(130, 133, 85, '2', '6', '0', 0),
(131, 134, 85, '2', '6', '0', 0),
(132, 135, 85, '2', '6', '0', 0),
(133, 136, 85, '1', '3', '0', 0),
(134, 137, 85, '2', '6', '0', 0),
(135, 138, 85, '2', '6', '0', 0),
(136, 139, 85, '1', '3', '0', 0),
(137, 140, 85, '2', '6', '0', 0),
(138, 141, 85, '2', '6', '0', 0),
(139, 142, 85, '2', '6', '0', 0),
(140, 143, 85, '1', '3', '0', 0),
(141, 144, 85, '1', '3', '0', 0),
(142, 145, 85, '2', '6', '0', 0),
(143, 146, 85, '2', '6', '0', 0),
(144, 147, 85, '2', '6', '0', 0),
(145, 148, 85, '2', '6', '0', 0),
(146, 149, 85, '2', '6', '0', 0),
(147, 150, 85, '2', '6', '0', 0),
(148, 151, 85, '2', '6', '0', 0),
(149, 152, 85, '2', '6', '0', 0),
(150, 153, 85, '2', '6', '0', 0),
(151, 154, 85, '2', '6', '0', 0),
(152, 155, 85, '2', '6', '0', 0),
(153, 156, 85, '1', '3', '0', 0),
(154, 157, 85, '1', '3', '0', 0),
(155, 158, 85, '2', '6', '0', 0),
(156, 159, 85, '2', '6', '0', 0),
(157, 160, 85, '2', '6', '0', 0),
(158, 161, 85, '2', '6', '0', 0),
(159, 162, 85, '1', '3', '0', 0),
(160, 163, 85, '1', '3', '0', 0),
(161, 164, 85, '2', '6', '0', 0),
(162, 165, 85, '2', '6', '0', 0),
(163, 166, 85, '2', '6', '0', 0),
(164, 167, 85, '2', '6', '0', 0),
(165, 168, 85, '2', '6', '0', 0),
(166, 169, 85, '1', '3', '0', 0),
(167, 170, 85, '2', '6', '0', 0),
(168, 171, 85, '38', '114', '0', 0),
(170, 173, 84, '9', '0', '90', 0),
(171, 174, 84, '9', '0', '90', 0),
(172, 175, 84, '9', '0', '90', 0),
(173, 176, 84, '9', '0', '90', 0),
(174, 177, 84, '9', '0', '90', 0),
(175, 178, 84, '9', '0', '90', 0),
(176, 179, 84, '9', '0', '90', 0),
(177, 180, 84, '9', '0', '90', 0),
(178, 181, 84, '9', '0', '90', 0),
(179, 182, 84, '9', '0', '90', 0),
(180, 183, 84, '9', '0', '90', 0),
(181, 184, 84, '9', '0', '90', 0),
(182, 185, 84, '9', '0', '90', 0),
(183, 186, 84, '9', '0', '90', 0),
(184, 187, 84, '9', '0', '90', 0),
(185, 188, 84, '7', '0', '70', 0),
(186, 189, 84, '5', '0', '50', 0),
(187, 190, 84, '9', '0', '90', 0),
(188, 191, 84, '9', '0', '90', 0),
(189, 192, 84, '9', '0', '90', 0),
(190, 193, 84, '9', '0', '90', 0),
(191, 194, 84, '9', '0', '90', 0),
(192, 195, 84, '9', '0', '90', 0),
(193, 196, 84, '9', '0', '90', 0),
(194, 197, 84, '9', '0', '90', 0),
(195, 198, 84, '9', '0', '90', 0),
(196, 199, 84, '9', '0', '90', 0),
(197, 200, 84, '7', '0', '70', 0),
(198, 201, 84, '9', '0', '90', 0),
(199, 202, 84, '9', '0', '90', 0),
(200, 203, 84, '9', '0', '90', 0),
(201, 204, 84, '9', '0', '90', 0),
(202, 205, 84, '9', '0', '90', 0),
(203, 206, 84, '9', '0', '90', 0),
(204, 207, 84, '9', '0', '90', 0),
(205, 208, 84, '9', '0', '90', 0),
(206, 209, 84, '9', '0', '90', 0),
(207, 210, 84, '9', '0', '90', 0),
(208, 211, 84, '9', '0', '90', 0),
(209, 212, 84, '9', '0', '90', 0),
(210, 213, 84, '9', '0', '90', 0),
(211, 214, 84, '9', '0', '90', 0),
(212, 215, 84, '7', '0', '70', 0),
(213, 216, 84, '9', '0', '90', 0),
(214, 217, 84, '9', '0', '90', 0),
(215, 218, 84, '9', '0', '90', 0),
(216, 219, 84, '9', '0', '90', 0),
(217, 220, 84, '7', '0', '70', 0),
(218, 221, 84, '9', '0', '90', 0),
(219, 223, 84, '9', '0', '90', 0),
(220, 224, 84, '9', '0', '90', 0),
(221, 225, 84, '9', '0', '90', 0),
(222, 226, 84, '9', '0', '90', 0),
(223, 227, 84, '7', '0', '70', 0),
(224, 228, 84, '9', '0', '90', 0),
(225, 229, 84, '9', '0', '90', 0),
(226, 230, 84, '5', '0', '50', 0),
(227, 231, 84, '9', '0', '90', 0),
(228, 232, 84, '9', '0', '90', 0),
(229, 233, 84, '9', '0', '90', 0),
(230, 234, 84, '9', '0', '90', 0),
(231, 235, 84, '9', '0', '90', 0),
(232, 236, 84, '9', '0', '90', 0),
(233, 237, 84, '9', '0', '90', 0),
(234, 238, 84, '9', '0', '90', 0),
(235, 239, 84, '5', '0', '50', 0),
(236, 240, 84, '9', '0', '90', 0),
(237, 241, 84, '9', '0', '90', 0),
(238, 242, 84, '9', '0', '90', 0),
(239, 243, 84, '9', '0', '90', 0),
(240, 244, 84, '9', '0', '90', 0),
(241, 245, 84, '5', '0', '50', 0),
(242, 246, 84, '9', '0', '90', 0),
(243, 247, 84, '9', '0', '90', 0),
(244, 248, 84, '9', '0', '90', 0),
(245, 249, 84, '9', '0', '90', 0),
(246, 250, 84, '9', '0', '90', 0),
(247, 251, 84, '9', '0', '90', 0),
(248, 252, 84, '9', '0', '90', 0),
(249, 253, 84, '9', '0', '90', 0),
(250, 254, 84, '9', '0', '90', 0),
(251, 255, 84, '9', '0', '90', 0),
(252, 256, 84, '9', '0', '90', 0),
(253, 257, 84, '9', '0', '90', 0),
(254, 258, 84, '9', '0', '90', 0),
(256, 260, 87, '1', '120', '0', 0);

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
(5, '1.6.1', '15315-PREM');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
`iduser` int(13) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass_md5` varchar(255) NOT NULL,
  `groupe` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`iduser`, `login`, `pass_md5`, `groupe`) VALUES
(1, 'Administrateur', '25f9e794323b453885f5181f1b624d0b', 1),
(5, 'MLP49', '9a5ce07dc05f6301a793524079a47491', 1);

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
(2, 'solde_salarie', '1'),
(3, 'vente_direct', '1');

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
  `hors_quota` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`) VALUES
(84, 48, 'ANCV', '01-01-2015', '31-12-2015', '0', '10', '10', '1000', '2115', 0),
(85, 49, 'CHARLIE HEBDO', '01-01-2015', '31-12-2015', '3', '0', '3', '50', '0', 0),
(86, 54, 'Mobil Home 140', '', '', '140', '0', '140', '50', '50', 0),
(87, 54, 'Mobil home 120', '', '', '120', '0', '120', '1', '0', 0),
(88, 49, 'vente parfums', '', '', '', '0', '0', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `produit_fixe`
--

INSERT INTO `produit_fixe` (`idproduitfixe`, `designation`, `date_produit_fixe`, `montant_produit`, `num_mouvement`) VALUES
(6, 'ANCV REVERSEMENT ENTREPRISE', '24-03-2015', '21510.00', ''),
(7, 'SUBVENTION ASC 2015', '10-02-2015', '39400', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=250 ;

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(92, 101, 3, '0', '', 'ADAM StÃ©phane', '766913721', 1),
(96, 104, 3, '6', '', 'BADOUR', '104897766', 1),
(97, 105, 3, '3', '', 'SALAUN ', '797541324', 1),
(98, 106, 3, '6', '', 'CLOUET', '298064446', 1),
(99, 107, 3, '6', '', 'CHAPEAU', '977030626', 1),
(100, 108, 3, '3', '', 'CLEMENT OLIVIER', '394389083', 1),
(101, 109, 3, '6', '', 'GARNIER', '152476817', 1),
(102, 110, 3, '6', '', 'MARSEAULT', '911071250', 1),
(103, 111, 3, '3', '', 'LEHOREAU', '411485864', 1),
(104, 112, 3, '6', '', 'MESLET', '592027465', 1),
(105, 113, 3, '15', '', 'DOUILLY OLIVIER', '523125745', 1),
(106, 114, 3, '6', '', 'CLEMENT CHRISTOPHE', '543193829', 1),
(107, 115, 3, '3', '', 'LAURIOU', '192632237', 1),
(108, 116, 3, '12', '', 'AMOURDOM', '422362157', 1),
(109, 117, 3, '6', '', 'JANIN', '354694855', 1),
(110, 118, 3, '6', '', 'CARUSO', '622025983', 1),
(111, 119, 3, '15', '', 'GUERIN J', '812637190', 1),
(112, 120, 3, '3', '', 'HAULBERT', '236792301', 1),
(113, 121, 3, '6', '', 'PERGER', '112330733', 1),
(114, 122, 3, '6', '', 'BACHELOT', '281873541', 1),
(115, 124, 3, '6', '', 'FOURNIER', '583329484', 1),
(116, 125, 3, '3', '', 'BOUFAQOUS', '872746796', 1),
(117, 126, 3, '15', '', 'GAULTIER SEBASTIEN ', '145886889', 1),
(118, 127, 3, '3', '', 'COSNIER CHRISTOPHE ', '386873173', 1),
(119, 128, 3, '6', '', 'ONILLON', '223114167', 1),
(120, 129, 3, '3', '', 'DAVY ANTOINE ', '380509489', 1),
(121, 130, 3, '6', '', 'ROUSSEL', '716914646', 1),
(122, 131, 3, '6', '', 'SUREAU', '662180566', 1),
(123, 132, 3, '6', '', 'PECOT', '403411754', 1),
(124, 133, 3, '6', '', 'DAGUER', '902751593', 1),
(125, 134, 3, '6', '', 'CHALOPIN', '885403846', 1),
(126, 135, 3, '6', '', 'ROUAULT', '440083101', 1),
(127, 136, 3, '3', '', 'BOIVIN', '414586393', 1),
(128, 137, 3, '6', '', 'DASYLVA', '521540793', 1),
(129, 138, 3, '6', '', 'GUERIN H', '460706309', 1),
(130, 139, 3, '3', '', 'LUBIN', '890059948', 1),
(131, 140, 3, '6', '', 'POUR VERMEULUN RETRAITE', '995997985', 1),
(132, 141, 3, '6', '', 'MORTIER FRED', '789351199', 1),
(133, 142, 3, '6', '', 'DAGUENET FRANCOISE', '844670349', 1),
(134, 143, 3, '3', '', 'POIRRIER', '350923409', 1),
(135, 144, 3, '3', '', 'MARTIN', '521953889', 1),
(136, 145, 3, '6', '', 'BOUVIER', '392720217', 1),
(137, 146, 3, '6', '', 'COUINET', '308847003', 1),
(138, 147, 3, '6', '', 'GALLET', '410158386', 1),
(139, 148, 3, '6', '', 'ROUFFIAC', '325485797', 1),
(140, 149, 3, '6', '', 'BRUNET', '831103717', 1),
(141, 150, 3, '6', '', 'FRESNEAU', '404232360', 1),
(142, 151, 3, '6', '', 'PILLARD', '759244341', 1),
(143, 152, 3, '6', '', 'FOUGERI', '832273424', 1),
(144, 153, 3, '6', '', 'GUERRIAU', '461467387', 1),
(145, 154, 3, '6', '', 'BEAULU', '617109972', 1),
(146, 155, 3, '6', '', 'DINGREVILLE', '656563256', 1),
(147, 156, 3, '3', '', 'HANQUART', '241293941', 1),
(148, 157, 3, '3', '', 'MARCHAIS ', '149558185', 1),
(149, 158, 3, '6', '', 'AUDIC', '186024369', 1),
(150, 159, 3, '6', '', 'NEGRI', '882957214', 1),
(151, 160, 3, '6', '', 'JOUBERT', '607343854', 1),
(152, 161, 3, '6', '', 'RAGOT', '384051438', 1),
(153, 162, 3, '3', '', 'CROS', '157842225', 1),
(154, 163, 3, '3', '', 'CHAPLAIN', '816292467', 1),
(155, 164, 3, '6', '', 'BOUDAUD', '355304580', 1),
(156, 165, 3, '6', '', 'FAUCHEUX', '173593721', 1),
(157, 166, 3, '6', '', 'MOTTEAU', '131953357', 1),
(158, 167, 3, '6', '', 'CARTRON OLIVIER', '557096876', 1),
(159, 168, 3, '6', '', 'KERBOURCH', '853394655', 1),
(160, 169, 3, '3', '', 'VALLEE KARINE', '994232917', 1),
(161, 170, 3, '6', '', 'ADAM', '378305914', 1),
(162, 171, 3, '64', '', 'POUPAULT', '230280355', 1),
(163, 171, 1, '50', '', 'POUPAULT', '', 0),
(164, 173, 3, '0', '', 'ARMOUDOM', '424131378', 1),
(165, 174, 3, '0', '', 'AUDIC ', '862115431', 1),
(166, 175, 3, '0', '', 'BACHELOT', '395123788', 1),
(167, 176, 3, '0', '', 'BADOUR', '625788347', 1),
(168, 177, 3, '0', '', 'BAULU', '966770825', 1),
(169, 178, 3, '0', '', 'BARRIERES', '255802760', 1),
(170, 179, 3, '0', '', 'BERGERET', '949694798', 1),
(171, 180, 3, '0', '', 'BLEJAN', '538575797', 1),
(172, 181, 3, '0', '', 'BOIVIN', '681704076', 1),
(173, 182, 3, '0', '', 'BOUDAUD', '887661087', 1),
(174, 183, 3, '0', '', 'BOUFAQOUS', '662237876', 1),
(175, 184, 3, '0', '', 'BOUVIER', '431846300', 1),
(176, 185, 3, '0', '', 'BRANCHEREAU', '576939767', 1),
(177, 186, 3, '0', '', 'BRUNET', '957697386', 1),
(178, 187, 3, '0', '', 'CERIBAS', '978733291', 1),
(179, 188, 3, '0', '', 'CARTRON', '574746800', 1),
(180, 189, 3, '0', '', 'CARUSO', '360282895', 1),
(181, 190, 3, '0', '', 'CHAPLAIN', '240423486', 1),
(182, 191, 3, '0', '', 'CHALOPIN', '994259658', 1),
(183, 192, 3, '0', '', 'CHAPEAU', '457396337', 1),
(184, 193, 3, '0', '', 'CLEMENT', '717038642', 1),
(185, 194, 3, '0', '', 'CHAFFIN', '348543307', 1),
(186, 195, 3, '0', '', 'CHESNEL', '556248914', 1),
(187, 196, 3, '0', '', 'CLEMENT OLIVIER', '749898697', 1),
(188, 197, 3, '0', '', 'COSNIER', '916776793', 1),
(189, 198, 3, '0', '', 'COUINET', '234847516', 1),
(190, 199, 3, '0', '', 'CRIBIER', '824315112', 1),
(191, 200, 3, '0', '', 'CROS', '504269207', 1),
(192, 201, 3, '0', '', 'DASYLVA', '761116794', 1),
(193, 202, 3, '0', '', 'DAGUENE', '973423513', 1),
(194, 203, 3, '0', '', 'DAVID', '631992934', 1),
(195, 204, 3, '0', '', 'DAVY', '267353562', 1),
(196, 205, 3, '0', '', 'DAGUER', '444540781', 1),
(197, 206, 3, '0', '', 'DELPHIN', '142774062', 1),
(198, 207, 3, '0', '', 'DESMARS', '448265166', 1),
(199, 208, 3, '0', '', 'DINGREVILLE', '141557884', 1),
(200, 209, 3, '0', '', 'DOUILLY', '456005313', 1),
(201, 210, 3, '0', '', 'DROUIN', '102151907', 1),
(202, 211, 3, '0', '', 'FAUCHEUX', '350224335', 1),
(203, 212, 3, '0', '', 'FOUGERI', '912959411', 1),
(204, 213, 3, '0', '', 'FOURNIER', '387084197', 1),
(205, 214, 3, '0', '', 'FRESNEAU', '663689511', 1),
(206, 215, 3, '0', '', 'GALLET', '583470672', 1),
(207, 216, 3, '0', '', 'GARNIER', '201952384', 1),
(208, 217, 3, '0', '', 'GAULITIER', '374492890', 1),
(209, 218, 3, '0', '', 'GREFFIER', '487519573', 1),
(210, 219, 3, '0', '', 'GUERIN Huguette', '440273151', 1),
(211, 220, 3, '0', '', 'GUERIN Johnny', '162037432', 1),
(212, 221, 3, '0', '', 'GUERRIAU Malika', '194967553', 1),
(213, 223, 3, '0', '', 'GUERTIN', '609944795', 1),
(214, 224, 3, '0', '', 'GUYADER', '828210490', 1),
(215, 225, 3, '0', '', 'HANQUART', '148696587', 1),
(216, 226, 3, '0', '', 'HAULBERT', '452441518', 1),
(217, 227, 3, '0', '', 'KOCH', '181188544', 1),
(218, 228, 3, '0', '', 'IDDER MEHDI', '928024384', 1),
(219, 229, 3, '0', '', 'JANIN', '884446455', 1),
(220, 230, 3, '0', '', 'KERBOURCH', '634814728', 1),
(221, 231, 3, '0', '', 'JOUBERT', '241446207', 1),
(222, 232, 3, '0', '', 'LAURIOU', '518004305', 1),
(223, 233, 3, '0', '', 'LEHOREAU', '139637656', 1),
(224, 234, 3, '0', '', 'LUBIN', '375057776', 1),
(225, 235, 3, '0', '', 'MARCHAIS', '792158708', 1),
(226, 236, 3, '0', '', 'MACKOSKI', '984404511', 1),
(227, 237, 3, '0', '', 'MARTIN', '285943317', 1),
(228, 238, 3, '0', '', 'MARSAULT', '362128824', 1),
(229, 239, 3, '0', '', 'MOTTEAU', '559764482', 1),
(230, 240, 3, '0', '', 'MESLET', '239791752', 1),
(231, 241, 3, '0', '', 'MORTIER', '881597023', 1),
(232, 242, 3, '0', '', 'NIANGORAN', '532970310', 1),
(233, 243, 3, '0', '', 'NEGRI', '388877479', 1),
(234, 244, 3, '0', '', 'ONILLON', '233265766', 1),
(235, 245, 3, '0', '', 'PASCAL LIONEL', '547099650', 1),
(236, 246, 3, '0', '', 'PECOT', '320599329', 1),
(237, 247, 3, '0', '', 'PERGER', '749010268', 1),
(238, 248, 3, '0', '', 'PILLARD', '666146118', 1),
(239, 249, 3, '0', '', 'POIRRIER', '859979942', 1),
(240, 250, 3, '0', '', 'POUPAULT', '373198785', 1),
(241, 251, 3, '0', '', 'RAGOT', '276036180', 1),
(242, 252, 3, '0', '', 'RICHOMME', '799034307', 1),
(243, 253, 3, '0', '', 'ROUAULT', '569295260', 1),
(244, 254, 3, '0', '', 'ROUFFIAC', '464988710', 1),
(245, 255, 3, '0', '', 'ROUSSEL', '658479725', 1),
(246, 256, 3, '0', '', 'ROUSSEL', '545762463', 1),
(247, 257, 3, '0', '', 'SALAUN', '540562995', 1),
(248, 258, 3, '0', '', 'SUREAU', '166237657', 1),
(249, 103, 3, '36', '', 'BRANCHEREAU', '578116979', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_remb_ayant_droit` (
`idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `reg_remb_ayant_droit`
--

INSERT INTO `reg_remb_ayant_droit` (`idregrembayantdroit`, `idrembayantdroit`, `montant_reglement`, `num_chq`) VALUES
(1, 1, '50,00', '938'),
(2, 2, '50,00', '448'),
(3, 3, '50,00', '942'),
(4, 4, '50,00', '941'),
(5, 6, '50,00', '935'),
(6, 7, '50,00', '936'),
(7, 8, '50,00', '937'),
(8, 9, '33,50', '946'),
(9, 10, '50,00', '943'),
(10, 11, '50,00', '449'),
(11, 12, '50,00', '939'),
(12, 13, '50,00', '947'),
(13, 14, '50,00', '50'),
(14, 15, '50,00', '452');

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `remb_ayant_droit` (
`idrembayantdroit` int(13) NOT NULL,
  `idayantdroit` int(13) NOT NULL,
  `prestation` varchar(255) NOT NULL,
  `date_vente` varchar(255) NOT NULL,
  `montant_prestation` varchar(255) NOT NULL,
  `part_ce` varchar(255) NOT NULL,
  `etat_facture` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `remb_ayant_droit`
--

INSERT INTO `remb_ayant_droit` (`idrembayantdroit`, `idayantdroit`, `prestation`, `date_vente`, `montant_prestation`, `part_ce`, `etat_facture`, `num_mouvement`) VALUES
(2, 234, 'PARTICIPATION CE AUX LOISIRS', '20-04-2015', '50', '50', 1, ''),
(3, 231, 'PARTICIPATION DU C.E AUX  LOISIRS', '17-02-2015', '50', '50', 1, ''),
(4, 253, 'PARTICIPATION DU C.E AUX LOISIRS', '01-02-2015', '50', '50', 1, ''),
(6, 181, 'PARTICIPATION DU C.E AUX LOISIRS', '12-01-2015', '50', '50', 1, ''),
(7, 227, 'PARTICIPATION DU C.E AUX LOISIRS', '13-01-2015', '50', '50', 1, ''),
(8, 239, 'PARTICIPATION DU C.E AUX LOISIRS', '15-01-2015', '50', '50', 1, ''),
(9, 194, 'PARTICIPATION DU C.E AUX LOISIRS', '17-02-2015', '33.50', '33.50', 1, ''),
(10, 229, 'PARTICIPATION DU C.E AUX LOISIRS', '17-02-2015', '50', '50', 1, ''),
(11, 199, 'PARTICIPATION DU C.E AUX LOISIRS', '20-04-2015', '50', '50', 1, ''),
(12, 233, 'PARTICIPATION DU C.E AUX LOISIRS', '13-01-2015', '50', '50', 1, ''),
(13, 192, 'PARTICIPATION DU C.E AUX LOISIRS', '17-02-2015', '50', '50', 1, ''),
(14, 169, 'PARTICIPATION DU C.E AUX LOISIRS', '15-01-2015', '50', '50', 1, ''),
(15, 213, 'ALLOCATION LOISIRS', '26-05-2015', '453', '50', 1, '1442206046');

-- --------------------------------------------------------

--
-- Structure de la table `remb_salarie`
--

CREATE TABLE IF NOT EXISTS `remb_salarie` (
`idrembsalarie` int(13) NOT NULL,
  `idsalarie` int(13) NOT NULL,
  `prestation` varchar(255) NOT NULL,
  `date_vente` varchar(255) NOT NULL,
  `montant_prestation` varchar(255) NOT NULL,
  `part_ce` varchar(255) NOT NULL,
  `etat_facture` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `remise_banque`
--

INSERT INTO `remise_banque` (`idremisebanque`, `date_remise`, `type_remise`, `num_remise`, `montant_remise`, `valid`) VALUES
(1, '27-02-2015', 1, '1741327', '50', 1),
(5, '03-03-2015', 2, '06987853', '9', 1),
(6, '03-03-2015', 2, '06988306', '144', 1),
(7, '03-03-2015', 2, '06987864', '325', 1),
(8, '03-03-2015', 2, 'REMISE EPURATRICE', '0', 1);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `remise_banque_chq`
--

INSERT INTO `remise_banque_chq` (`idremisebanquechq`, `idremisebanque`, `idreglementventepresta`) VALUES
(1, 1, 163);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE IF NOT EXISTS `remise_banque_esp` (
`idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=159 ;

--
-- Contenu de la table `remise_banque_esp`
--

INSERT INTO `remise_banque_esp` (`idremisebanqueesp`, `idremisebanque`, `idreglementventepresta`) VALUES
(5, 5, 96),
(6, 5, 97),
(7, 6, 105),
(8, 6, 111),
(9, 6, 249),
(10, 6, 98),
(11, 6, 99),
(12, 6, 100),
(13, 6, 101),
(14, 6, 102),
(15, 6, 103),
(16, 6, 104),
(17, 6, 106),
(18, 6, 107),
(19, 6, 108),
(20, 6, 109),
(21, 6, 112),
(22, 6, 113),
(23, 6, 114),
(24, 7, 110),
(25, 7, 115),
(26, 7, 116),
(27, 7, 117),
(28, 7, 118),
(29, 7, 119),
(30, 7, 120),
(31, 7, 121),
(32, 7, 122),
(33, 7, 123),
(34, 7, 124),
(35, 7, 125),
(36, 7, 126),
(37, 7, 127),
(38, 7, 128),
(39, 7, 129),
(40, 7, 130),
(41, 7, 131),
(42, 7, 132),
(43, 7, 133),
(44, 7, 134),
(45, 7, 135),
(46, 7, 136),
(47, 7, 137),
(48, 7, 138),
(49, 7, 139),
(50, 7, 140),
(51, 7, 141),
(52, 7, 142),
(53, 7, 143),
(54, 7, 144),
(55, 7, 145),
(56, 7, 146),
(57, 7, 147),
(58, 7, 148),
(59, 7, 149),
(60, 7, 150),
(61, 7, 151),
(62, 7, 152),
(63, 7, 153),
(64, 7, 154),
(65, 7, 155),
(66, 7, 156),
(67, 7, 157),
(68, 7, 158),
(69, 7, 159),
(70, 7, 160),
(71, 7, 161),
(72, 7, 162),
(73, 8, 92),
(74, 8, 164),
(75, 8, 165),
(76, 8, 166),
(77, 8, 167),
(78, 8, 168),
(79, 8, 169),
(80, 8, 170),
(81, 8, 171),
(82, 8, 172),
(83, 8, 173),
(84, 8, 174),
(85, 8, 175),
(86, 8, 176),
(87, 8, 177),
(88, 8, 178),
(89, 8, 179),
(90, 8, 180),
(91, 8, 181),
(92, 8, 182),
(93, 8, 183),
(94, 8, 184),
(95, 8, 185),
(96, 8, 186),
(97, 8, 187),
(98, 8, 188),
(99, 8, 189),
(100, 8, 190),
(101, 8, 191),
(102, 8, 192),
(103, 8, 193),
(104, 8, 194),
(105, 8, 195),
(106, 8, 196),
(107, 8, 197),
(108, 8, 198),
(109, 8, 199),
(110, 8, 200),
(111, 8, 201),
(112, 8, 202),
(113, 8, 203),
(114, 8, 204),
(115, 8, 205),
(116, 8, 206),
(117, 8, 207),
(118, 8, 208),
(119, 8, 209),
(120, 8, 210),
(121, 8, 211),
(122, 8, 212),
(123, 8, 213),
(124, 8, 214),
(125, 8, 215),
(126, 8, 216),
(127, 8, 217),
(128, 8, 218),
(129, 8, 219),
(130, 8, 220),
(131, 8, 221),
(132, 8, 222),
(133, 8, 223),
(134, 8, 224),
(135, 8, 225),
(136, 8, 226),
(137, 8, 227),
(138, 8, 228),
(139, 8, 229),
(140, 8, 230),
(141, 8, 231),
(142, 8, 232),
(143, 8, 233),
(144, 8, 234),
(145, 8, 235),
(146, 8, 236),
(147, 8, 237),
(148, 8, 238),
(149, 8, 239),
(150, 8, 240),
(151, 8, 241),
(152, 8, 242),
(153, 8, 243),
(154, 8, 244),
(155, 8, 245),
(156, 8, 246),
(157, 8, 247),
(158, 8, 248);

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
  `etat_salarie` int(1) NOT NULL,
  `solde_salarie` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=160 ;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`, `solde_salarie`) VALUES
(72, '', 1, 'CARTRON', 'OLIVIER', '34 RUE MAIRIE', '', '49570', 'MONTJEAN SUR LOIRE', '', '', '', '', '03/06/1996', '', '', 'CHEF D''EQUIPE SENIOR', '', '', '', 1, '150'),
(73, '', 1, 'DROUIN', 'DIDIER', '13 rue du Plessis', '', '49350', 'ST CLEMENT DES LEVEES', '', '', '', '', '04/09/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(74, '', 1, 'MARCHAIS', 'LAURENT', '76 RUE JEAN JAURES', '', '49000', 'ANGERS', '', '', '', '', '02/09/1996', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(75, '', 1, 'LAURIOU', 'MICKAEL', '1 ALLEE DES CYPRES', '', '49140', 'MARCE', '', '', '', '', '04/09/1996', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(76, '', 1, 'GUERIN', 'JOHNNY', '4 RUE DE L''EGLANTIER', '', '49370', 'LA POUEZE', '', '', '', '', '04/09/1996', '', '', 'CHEF D''EQUIPE SENIOR', '', '', '', 1, '150'),
(77, '', 2, 'BRUNET', 'DOMINIQUE', '41 RUE DE LA VARIE', '', '49770', 'LA MEIGNANNE', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(78, '', 1, 'POIRRIER', 'THIERRY', '7 RUE DU FRAIS FOYER', '', '49000', 'ANGERS', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(79, '', 2, 'NEGRI', 'BRIGITTE', '6 CHEMIN DES HAUTS', '', '49140', 'MONTREUIL SUR LOIR', '', '', '', '', '04/09/1996', '', '', 'ASSISTANT TECHN. EXPL.& LOGISTIQUE', '', '', '', 1, '150'),
(80, '', 2, 'BAULU', 'CATHERINE', '154 RUE DE VILLESICARD', '', '49130', 'LES PONTS DE CE', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(81, '', 1, 'MORTIER', 'FREDERIC', '12, rue Val de Suine', '', '49460', 'FENEU', '', '', '', '', '04/09/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(82, '', 2, 'ROUSSEL', 'PASCALE', '15 RUE DES VIGNES', '', '49610', 'MURS ERIGNE', '', '', '', '', '04/09/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(83, '', 1, 'BADOUR', 'STEPHANE', '55 RUE DE LA REUX', '', '49124', 'ST BARTHELEMY D ANJOU', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(84, '', 2, 'DAGUENE', 'FRANCOISE', '12 rue Val de Suine', '', '49460', 'FENEU', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(85, '', 3, 'MACKOWSKI', 'CORINE', 'RD 116 du Plessis Grammoire', 'La Morellerie', '49124', 'SAINT BARTHELEMY D''ANJOU', '', '', '', '', '09/09/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(86, '', 1, 'JANIN', 'SEBASTIEN', '25 rue Eug?ne Tessier', 'De la motte', '49350', 'LES ROSIERS SUR LOIRE', '', '', '', '', '19/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(87, '', 2, 'CHALOPIN', 'BERNADETTE', '12 RUE DE L''AUBANCE', '', '49320', 'LES ALLEUDS', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(88, '', 2, 'PILLARD', 'ISABELLE', '87 RUE DES BANCHAIS', 'RES. MOULIN DE BEAULIEU', '49100', 'ANGERS', '', '', '', '', '09/09/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(89, '', 2, 'KOCH', 'NATHALIE', 'LA PLAINE DES GRANGES', '', '72200', 'BAZOUGES SUR LE LOIR', '', '', '', '', '30/08/1996', '', '', 'SECRETAIRE DE DEPARTEMENT', '', '', '', 1, '150'),
(90, '', 3, 'CROS', 'SEVERINE', '6 AVENUE MARTIN LUTHER KING', '', '49240', 'AVRILLE', '', '', '', '', '16/09/1996', '', '', 'TECHNICIEN EXPLOITATION/LOGISTIQUE', '', '', '', 1, '150'),
(91, '', 1, 'ROUFFIAC', 'CHRISTOPHE', '131 RUE DE LA BARRE', '', '49100', 'ANGERS', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(92, '', 3, 'SUREAU', 'LYDIE', '18 CHEMIN DES MARINIERS', 'LOTISSEMENT DU BOIS MARIN', '49220', 'MONTREUIL SUR MAINE', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(93, '', 1, 'PIOU', 'BENOIT', '19 RUE DE L''HOTELLERIE', '', '49100', 'ANGERS', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(94, '', 3, 'JOUBERT', 'KARINE', 'LOTISSEMENT LE VIRIER', 'LOT 2', '49330', 'ETRICHE', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(95, '', 2, 'DESMARS', 'VERONIQUE', '67 AV JEAN XXIII', '', '49000', 'ANGERS', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(96, '', 1, 'DAVY', 'ANTOINE', 'LA FAVERIE', '', '49110', 'SAINT QUENTIN EN MAUGES', '', '', '', '', '30/08/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(97, '', 1, 'HAULBERT', 'VINCENT', '23 RUE NORBERT CASTERET', '', '49100', 'ANGERS', '', '', '', '', '09/09/1996', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(98, '', 2, 'BOIVIN', 'VERONIQUE', '33 RUE GESSE', '', '49080', 'BOUCHEMAINE', '', '', '', '', '30/09/1996', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(99, '', 1, 'ARMOURDOM', 'LAURENT', '115 Rue Fran&ccedil;ois Mauriac', '', '49800', 'TRELAZE', '0241695397', '0625059215', 'heline01@hotmail.com', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(100, '', 1, 'DELPHIN', 'SEBASTIEN', 'ROUTE DE MARZELLES', 'LA ROCHE FOULQUES', '49140', 'SOUCELLES', '', '', '', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(101, '', 1, 'GUERTIN', 'NOEL', '7 rue du Templa', '', '49124', 'LE PLESSIS GRAMMOIRE', '', '', '', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(102, '', 2, 'HANQUART', 'SANDRA', '5 RUELLE DE LA VALLEE', 'LOTISSEMENT DERRIERE LA VILLE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(103, '', 1, 'MESLET', 'THIERRY', '1 SQUARE DES TREILLES', '', '49480', 'ST SYLVAIN D ANJOU', '', '', '', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(104, '', 3, 'VALLEE', 'KARINE', '13 RUE GILBERT POULIQUEN', '', '49100', 'ANGERS', '', '', '', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(105, '', 2, 'GUERRIAU', 'MALIKA', '5 B RUE DU 8 MAI 1945', '', '49800', 'ANDARD', '', '', '', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(106, '', 1, 'COSNIER', 'CHRISTOPHE', '25 RUE RAOUL PONCHON', '', '49100', 'ANGERS', '', '', '', '', '03/03/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(107, '', 2, 'FOUGERI', 'ANNIE', '45 RUE MAURICE LANGLET', '', '49000', 'ANGERS', '', '', '', '', '03/03/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(108, '', 2, 'MARTIN', 'PATRICIA', '20 RUE ANDRE GIDE', '', '49130', 'LES PONTS DE CE', '', '', '', '', '03/03/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(109, '', 1, 'ADAM', 'STEPHANE', 'RUE DES PETITS VAUX', '', '49150', 'ECHEMIRE', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(110, '', 1, 'BRANCHEREAU', 'HERVE', '30 avenue Montaigne', '', '49100', 'ANGERS', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(111, '', 3, 'COUINET', 'SOLEN', 'Les Grands Bauchais', '', '49320', 'LES ALLEUDS', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(112, '', 1, 'DAVID', 'ARMEL', 'LA MONSELLERIE', '', '49330', 'SOEURDRES', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(113, '', 1, 'DOUILLY', 'OLIVIER', '1 B ROUTE DE BRIOLLAY', '', '49460', 'SOULAIRE LE BOURG', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(114, '', 1, 'GAULTIER', 'SEBASTIEN', '10 SQUARE DES CALEIDES', '', '49000', 'ANGERS', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(115, '', 1, 'RICHOMME', 'HERVE', '6 RUE DES CHARDONNERETS', '', '49250', 'BEAUFORT EN VALLEE', '', '', '', '', '28/06/1999', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(116, '', 2, 'BACHELOT', 'CHRISTELLE', '22 RUE ANDRE LE NOTRE', 'LOTIS. CLOS DU PLESSIS N? 87', '49800', 'TRELAZE', '', '', '', '', '12/07/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(117, '', 1, 'FAUCHEUX', 'FREDDY', '3 RUE DES NOISETIERS', '', '49800', 'BRAIN SUR L''AUTHION', '', '', '', '', '12/07/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(118, '', 2, 'FRESNEAU', 'VERONIQUE', '34 RUE TOUSSAINT CHALOU', '', '49130', 'STE GEMMES', '', '', '', '', '12/07/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(119, '', 2, 'GUERIN', 'HUGUETTE', '10 rue des Vignes', '', '49800', 'TRELAZE', '', '', '', '', '12/07/1999', '', '', 'AGENT DE PRODUCTION NIVEAU 2', '', '', '', 1, '150'),
(120, '', 1, 'FOURNIER', 'MARIO', '19 RUE HENRI ENGUEHARD', '', '49000', 'ANGERS', '', '', '', '', '26/07/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(121, '', 3, 'AUDIC', 'GAELLE', '1A RUE DE LIGNERIE', '', '49124', 'ST BARTHELEMY D ANJOU', '', '', '', '', '06/10/1999', '', '', 'ASSISTANT TECHN. EXPL.& LOGISTIQUE', '', '', '', 1, '150'),
(122, '', 1, 'GREFFIER', 'ARNAUD', '1 ALLEE DES SOURCES', 'LE PORAGE', '49640', 'DAUMERAY', '', '', '', '', '25/10/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(123, '', 1, 'BOUVIER', 'FREDERIC', '16 rue des Charmes', '', '49220', 'BRAIN SUR LONGUENEE', '', '', '', '', '18/11/1999', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(124, '', 1, 'PECOT', 'THIERRY', '9 COTES DE BEAULIEU', 'LIEU DIT BEAULIEU', '49140', 'VILLEVEQUE', '', '', '', '', '22/11/1999', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(125, '', 3, 'CARUSO', 'SYLVANA', 'ROUTE DE LOUDUN', 'LA PETITE CHAMPAGNE', '49260', 'MONTREUIL BELLAY', '', '', '', '', '03/04/2000', '', '', 'CHEF DE CENTRE SBA', '', '', '', 1, '150'),
(126, '', 2, 'BOUDAUD', 'VIRGINIE', '21 RUE DES MARONNIERS', '', '49330', 'CHAMPIGNE', '', '', '', '', '20/11/2000', '', '', 'SECRETAIRE DE SERVICE', '', '', '', 1, '150'),
(127, '', 1, 'DASYLVA', 'JEAN-PIERRE', '3 AVENUE MONTAIGNE', '', '49000', 'ANGERS', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(128, '', 1, 'BOUFAQOUS', 'ABDELJALIL', '30 RUE DES TOURNEBELLES', '', '49000', 'ANGERS', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(129, '', 1, 'CLEMENT', 'CHRISTOPHE', '4 B ROUTE DU HUTREAU', '', '49130', 'SAINTE GEMMES SUR LOIRE', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(130, '', 1, 'CLEMENT', 'OLIVIER', '32 B RUE DE LA BRISEPOTIERE', '', '49100', 'ANGERS', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(131, '', 1, 'GARNIER', 'DAVID', 'LOTISSEMENT LE PUITS HERVE', '6 RUE DU RUISSEAU', '49220', 'BRAIN SUR LONGUENEE', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(132, '', 3, 'ONILLON', 'PATRICIA', '87 BOULEVARD BEDIER', 'LES PEUPLIERS', '49000', 'ANGERS', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(133, '', 2, 'LEHOREAU WADA', 'VIRGINIE', '9 RUE MICHEL SEURAT', '', '49000', 'ANGERS', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(134, '', 1, 'BLEJAN', 'CHRISTIAN', '183 RUE SAUMUROISE', '', '49000', 'ANGERS', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(135, '', 2, 'RAGOT', 'VIRGINIE', 'LES DEUX CHENES', '', '49170', 'ST MARTIN DU FOUILLOUX', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION NIVEAU 2', '', '', '', 1, '150'),
(136, '', 1, 'BERGERET', 'STEPHANE', 'LES PERRES', '', '49140', 'SERMAISE', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(137, '', 2, 'POUPAULT', 'ISABELLE', '29 RTE DEPARTEMENTALE 347', '', '49630', 'CORNE', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION PRINCIPAL', '', '', '', 1, '150'),
(138, '', 1, 'CHAPEAU', 'OLIVIER', '2A RUE DU TERTRE', '', '49800', 'SARRIGNE', '', '', '', '', '04/06/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(139, '', 1, 'GALLET', 'STEPHANE', '21 RUE DU SORBIER', 'LOTISSEMENT LA CROIX BLANCHE', '49290', 'ST LAURENT DE LA PLAINE', '', '', '', '', '03/09/2001', '', '', 'CHEF D''EQUIPE SENIOR', '', '', '', 1, '150'),
(140, '', 1, 'LUBIN', 'MICHEL', '7 rue de l''Or?e du Bois', 'Lot. l''Or?e du Bois', '49140', 'BAUNE', '', '', '', '', '15/10/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(141, '', 1, 'GUYADER', 'YOHANN', 'LES EDELWEISS', 'LE PETIT BOIS', '49800', 'TRELAZE', '', '', '', '', '15/10/2001', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(142, '', 1, 'IDDER', 'MEHDI', '4 RUE DU BEZAIN', '', '49800', 'SARRIGNE', '', '', '', '', '29/07/2002', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(143, '', 1, 'ROUAULT', 'ANTHONY', '9 IMPASSE DES PUISATIERS', '', '49630', 'MAZE', '', '', '', '', '29/07/2002', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(144, '', 2, 'MARSAULT', 'FRANCOISE', '3 IMPASSE DES CERISES', 'LOTISSEMENT LES CERISES', '49170', 'SAINT GEORGES SUR LOIRE', '', '', '', '', '29/07/2002', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(145, '', 2, 'DINGREVILLE', 'ALINE', '38 Route de la Roche', '', '49630', 'MAZE', '', '', '', '', '29/07/2002', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(146, '', 1, 'KERBOURCH', 'FLORENT', '1 RUE GEORGES MELLIES', '', '49140', 'BAUNE', '', '', '', '', '03/01/2005', '', '', 'CHEF D''EQUIPE SENIOR', '', '', '', 1, '150'),
(147, '', 1, 'MOTTEAU', 'Thierry', 'Les Treilles', '', '49190', 'ROCHEFORT SUR LOIRE', '', '', '', '', '01/03/2005', '', '', 'CHEF DE SERVICE TECHNIQUE', '', '', '', 1, '150'),
(148, '', 2, 'CHAFFIN', 'Mireille', '39 ALLEE FRANCOIS LE VAILLANT', '', '49240', 'AVRILLE', '', '', '', '', '07/08/2005', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(149, '', 2, 'CHESNEL', 'Brigitte', '6 square des C?dres', '', '49000', 'ANGERS', '', '', '', '', '18/04/2005', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(150, '', 2, 'CLOUET', 'Emilie', '53 RUE DES RABIERES', '', '49140', 'SEICHES SUR LE LOIR', '', '', '', '', '28/05/2005', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(151, '', 1, 'NIANGORAN', 'Oura Severin', '5 RUE PROSPER BIGEARD', '', '49100', 'ANGERS', '', '', '', '', '09/06/2005', '', '', 'AGENT DE PRODUCTION NIVEAU 2', '', '', '', 1, '150'),
(152, '', 1, 'DAGUER', 'St?phane', '16 SQUARE DU PAVILLON', 'LES IRIS', '49130', 'LES PONTS DE CE', '', '', '', '', '15/05/2005', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(153, '', 1, 'PASCAL', 'LIONEL', 'LE PETIT PRINCE', '', '49330', 'CHAMPIGNE', '', '', '', '', '09/10/2006', '', '', 'CHEF D''EQUIPE', '', '', '', 1, '150'),
(154, '', 3, 'CHAPLAIN', 'ANGELINA', '6 RUE PIERRE RUAIS', '', '49540', 'MARTIGNE BRIAND', '', '', '', '', '05/10/2006', '', '', 'AGENT DE MAINTENANCE', '', '', '', 1, '150'),
(155, '', 2, 'CRIBIER', 'EMILIE', '28 RUE HENRI CORMEAU', '', '49100', 'ANGERS', '', '', '', '', '29/08/2011', '', '', 'AGENT DE PRODUCTION NIVEAU 2', '', '', '', 1, '150'),
(156, '', 1, 'SALAUN', 'ANDRE', '1 AVENUE FRANCOIS MITTERAND', 'RESIDENCE LES FLORINS', '49130', 'LES PONTS DE CE', '', '', '', '', '06/08/2012', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(157, '', 3, 'BARRIERES', 'AMANDINE', '16 AVENUE DE GRESILLE', '', '49000', 'ANGERS', '', '', '', '', '06/08/2012', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(158, '', 2, 'PERGER', 'ASTRID', '71 AVENUE JEAN BUTTON', '', '49130', 'LES PONTS DE CE', '', '', '', '', '03/09/2012', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
(159, '', 2, 'CERIBAS', 'FILIZ', '41 BD AUGUSTE ALLONNEAU', '', '49100', 'ANGERS', '', '', '', '', '10/07/2012', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=262 ;

--
-- Contenu de la table `solde_caisse`
--

INSERT INTO `solde_caisse` (`idsoldecaisse`, `date_mouvement`, `num_mouvement`, `type_mouvement`, `type_solde`, `libelle_mouvement`, `debit`, `credit`, `point_caisse`) VALUES
(97, '1427151600', '766913721', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ADAM StÃ©phane.', '', '0', 1),
(101, '1425942000', '104897766', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BADOUR.', '', '6', 1),
(102, '1425942000', '797541324', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par SALAUN .', '', '3', 1),
(103, '1425942000', '298064446', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CLOUET.', '', '6', 1),
(104, '1425942000', '977030626', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHAPEAU.', '', '6', 1),
(105, '1425942000', '394389083', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CLEMENT OLIVIER.', '', '3', 1),
(106, '1425942000', '152476817', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GARNIER.', '', '6', 1),
(107, '1425942000', '911071250', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MARSEAULT.', '', '6', 1),
(108, '1425942000', '411485864', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LEHOREAU.', '', '3', 1),
(109, '1425942000', '592027465', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MESLET.', '', '6', 1),
(110, '1425942000', '523125745', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DOUILLY OLIVIER.', '', '15', 1),
(111, '1425942000', '543193829', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CLEMENT CHRISTOPHE.', '', '6', 1),
(112, '1425942000', '192632237', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LAURIOU.', '', '3', 1),
(113, '1425942000', '422362157', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par AMOURDOM.', '', '12', 1),
(114, '1425942000', '354694855', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par JANIN.', '', '6', 1),
(115, '1425942000', '622025983', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CARUSO.', '', '6', 1),
(116, '1425942000', '812637190', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUERIN J.', '', '15', 1),
(117, '1425942000', '236792301', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par HAULBERT.', '', '3', 1),
(118, '1425942000', '112330733', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PERGER.', '', '6', 1),
(119, '1425942000', '281873541', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BACHELOT.', '', '6', 1),
(120, '1425942000', '583329484', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par FOURNIER.', '', '6', 1),
(121, '1425942000', '872746796', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOUFAQOUS.', '', '3', 1),
(122, '1425942000', '145886889', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GAULTIER SEBASTIEN .', '', '15', 1),
(123, '1425942000', '386873173', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par COSNIER CHRISTOPHE .', '', '3', 1),
(124, '1425942000', '223114167', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ONILLON.', '', '6', 1),
(125, '1425942000', '380509489', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DAVY ANTOINE .', '', '3', 1),
(126, '1425942000', '716914646', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ROUSSEL.', '', '6', 1),
(127, '1425942000', '662180566', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par SUREAU.', '', '6', 1),
(128, '1425942000', '403411754', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PECOT.', '', '6', 1),
(129, '1425942000', '902751593', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DAGUER.', '', '6', 1),
(130, '1425942000', '885403846', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHALOPIN.', '', '6', 1),
(131, '1425942000', '440083101', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ROUAULT.', '', '6', 1),
(132, '1425942000', '414586393', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOIVIN.', '', '3', 1),
(133, '1425942000', '521540793', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DASYLVA.', '', '6', 1),
(134, '1425942000', '460706309', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUERIN H.', '', '6', 1),
(135, '1425942000', '890059948', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LUBIN.', '', '3', 1),
(136, '1425942000', '995997985', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par POUR VERMEULUN RETRAITE.', '', '6', 1),
(137, '1425942000', '789351199', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MORTIER FRED.', '', '6', 1),
(138, '1425942000', '844670349', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DAGUENET FRANCOISE.', '', '6', 1),
(139, '1425942000', '350923409', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par POIRRIER.', '', '3', 1),
(140, '1425942000', '521953889', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MARTIN.', '', '3', 1),
(141, '1425942000', '392720217', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOUVIER.', '', '6', 1),
(142, '1425942000', '308847003', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par COUINET.', '', '6', 1),
(143, '1425942000', '410158386', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GALLET.', '', '6', 1),
(144, '1425942000', '325485797', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ROUFFIAC.', '', '6', 1),
(145, '1425942000', '831103717', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BRUNET.', '', '6', 1),
(146, '1425942000', '404232360', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par FRESNEAU.', '', '6', 1),
(147, '1425942000', '759244341', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PILLARD.', '', '6', 1),
(148, '1425942000', '832273424', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par FOUGERI.', '', '6', 1),
(149, '1425942000', '461467387', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUERRIAU.', '', '6', 1),
(150, '1425942000', '617109972', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEAULU.', '', '6', 1),
(151, '1425942000', '656563256', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DINGREVILLE.', '', '6', 1),
(152, '1425942000', '241293941', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par HANQUART.', '', '3', 1),
(153, '1425942000', '149558185', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MARCHAIS .', '', '3', 1),
(154, '1425942000', '186024369', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par AUDIC.', '', '6', 1),
(155, '1425942000', '882957214', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par NEGRI.', '', '6', 1),
(156, '1425942000', '607343854', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par JOUBERT.', '', '6', 1),
(157, '1425942000', '384051438', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par RAGOT.', '', '6', 1),
(158, '1425942000', '157842225', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CROS.', '', '3', 1),
(159, '1425942000', '816292467', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHAPLAIN.', '', '3', 1),
(160, '1425942000', '355304580', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOUDAUD.', '', '6', 1),
(161, '1425942000', '173593721', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par FAUCHEUX.', '', '6', 1),
(162, '1425942000', '131953357', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MOTTEAU.', '', '6', 1),
(163, '1425942000', '557096876', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CARTRON OLIVIER.', '', '6', 1),
(164, '1425942000', '853394655', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par KERBOURCH.', '', '6', 1),
(165, '1425942000', '994232917', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par VALLEE KARINE.', '', '3', 1),
(166, '1425942000', '378305914', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ADAM.', '', '6', 1),
(167, '1425942000', '230280355', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par POUPAULT.', '', '64', 1),
(168, '1425942000', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de POUPAULT.', '', '50', 0),
(169, '1427151600', '424131378', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ARMOUDOM.', '', '0', 1),
(170, '1427151600', '862115431', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par AUDIC .', '', '0', 1),
(171, '1427151600', '395123788', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BACHELOT.', '', '0', 1),
(172, '1427151600', '625788347', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BADOUR.', '', '0', 1),
(173, '1427151600', '966770825', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BAULU.', '', '0', 1),
(174, '1427151600', '255802760', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BARRIERES.', '', '0', 1),
(175, '1427151600', '949694798', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BERGERET.', '', '0', 1),
(176, '1427151600', '538575797', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BLEJAN.', '', '0', 1),
(177, '1427151600', '681704076', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOIVIN.', '', '0', 1),
(178, '1427151600', '887661087', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOUDAUD.', '', '0', 1),
(179, '1427151600', '662237876', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOUFAQOUS.', '', '0', 1),
(180, '1427151600', '431846300', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOUVIER.', '', '0', 1),
(181, '1427151600', '576939767', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BRANCHEREAU.', '', '0', 1),
(182, '1427151600', '957697386', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BRUNET.', '', '0', 1),
(183, '1427151600', '978733291', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CERIBAS.', '', '0', 1),
(184, '1427151600', '574746800', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CARTRON.', '', '0', 1),
(185, '1427151600', '360282895', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CARUSO.', '', '0', 1),
(186, '1427151600', '240423486', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHAPLAIN.', '', '0', 1),
(187, '1427151600', '994259658', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHALOPIN.', '', '0', 1),
(188, '1427151600', '457396337', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHAPEAU.', '', '0', 1),
(189, '1427151600', '717038642', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CLEMENT.', '', '0', 1),
(190, '1427151600', '348543307', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHAFFIN.', '', '0', 1),
(191, '1427151600', '556248914', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHESNEL.', '', '0', 1),
(192, '1427151600', '749898697', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CLEMENT OLIVIER.', '', '0', 1),
(193, '1427151600', '916776793', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par COSNIER.', '', '0', 1),
(194, '1427151600', '234847516', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par COUINET.', '', '0', 1),
(195, '1427151600', '824315112', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CRIBIER.', '', '0', 1),
(196, '1427151600', '504269207', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CROS.', '', '0', 1),
(197, '1427151600', '761116794', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DASYLVA.', '', '0', 1),
(198, '1427151600', '973423513', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DAGUENE.', '', '0', 1),
(199, '1427151600', '631992934', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DAVID.', '', '0', 1),
(200, '1427151600', '267353562', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DAVY.', '', '0', 1),
(201, '1427151600', '444540781', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DAGUER.', '', '0', 1),
(202, '1427151600', '142774062', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DELPHIN.', '', '0', 1),
(203, '1427151600', '448265166', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DESMARS.', '', '0', 1),
(204, '1427151600', '141557884', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DINGREVILLE.', '', '0', 1),
(205, '1427151600', '456005313', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DOUILLY.', '', '0', 1),
(206, '1427151600', '102151907', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DROUIN.', '', '0', 1),
(207, '1427151600', '350224335', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par FAUCHEUX.', '', '0', 1),
(208, '1427151600', '912959411', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par FOUGERI.', '', '0', 1),
(209, '1427151600', '387084197', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par FOURNIER.', '', '0', 1),
(210, '1427151600', '663689511', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par FRESNEAU.', '', '0', 1),
(211, '1427151600', '583470672', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GALLET.', '', '0', 1),
(212, '1427151600', '201952384', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GARNIER.', '', '0', 1),
(213, '1427151600', '374492890', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GAULITIER.', '', '0', 1),
(214, '1427151600', '487519573', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GREFFIER.', '', '0', 1),
(215, '1427151600', '440273151', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUERIN Huguette.', '', '0', 1),
(216, '1427151600', '162037432', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUERIN Johnny.', '', '0', 1),
(217, '1427151600', '194967553', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUERRIAU Malika.', '', '0', 1),
(218, '1427151600', '609944795', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUERTIN.', '', '0', 1),
(219, '1427151600', '828210490', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUYADER.', '', '0', 1),
(220, '1427151600', '148696587', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par HANQUART.', '', '0', 1),
(221, '1427151600', '452441518', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par HAULBERT.', '', '0', 1),
(222, '1427151600', '181188544', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par KOCH.', '', '0', 1),
(223, '1427151600', '928024384', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par IDDER MEHDI.', '', '0', 1),
(224, '1427151600', '884446455', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par JANIN.', '', '0', 1),
(225, '1427151600', '634814728', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par KERBOURCH.', '', '0', 1),
(226, '1427151600', '241446207', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par JOUBERT.', '', '0', 1),
(227, '1427151600', '518004305', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LAURIOU.', '', '0', 1),
(228, '1427151600', '139637656', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LEHOREAU.', '', '0', 1),
(229, '1427151600', '375057776', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LUBIN.', '', '0', 1),
(230, '1427151600', '792158708', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MARCHAIS.', '', '0', 1),
(231, '1427151600', '984404511', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MACKOSKI.', '', '0', 1),
(232, '1427151600', '285943317', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MARTIN.', '', '0', 1),
(233, '1427151600', '362128824', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MARSAULT.', '', '0', 1),
(234, '1427151600', '559764482', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MOTTEAU.', '', '0', 1),
(235, '1427151600', '239791752', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MESLET.', '', '0', 1),
(236, '1427151600', '881597023', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MORTIER.', '', '0', 1),
(237, '1427151600', '532970310', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par NIANGORAN.', '', '0', 1),
(238, '1427151600', '388877479', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par NEGRI.', '', '0', 1),
(239, '1427151600', '233265766', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ONILLON.', '', '0', 1),
(240, '1427151600', '547099650', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PASCAL LIONEL.', '', '0', 1),
(241, '1427151600', '320599329', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PECOT.', '', '0', 1),
(242, '1427151600', '749010268', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PERGER.', '', '0', 1),
(243, '1427151600', '666146118', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PILLARD.', '', '0', 1),
(244, '1427151600', '859979942', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par POIRRIER.', '', '0', 1),
(245, '1427151600', '373198785', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par POUPAULT.', '', '0', 1),
(246, '1427151600', '276036180', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par RAGOT.', '', '0', 1),
(247, '1427151600', '799034307', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par RICHOMME.', '', '0', 1),
(248, '1427151600', '569295260', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ROUAULT.', '', '0', 1),
(249, '1427151600', '464988710', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ROUFFIAC.', '', '0', 1),
(250, '1427151600', '658479725', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ROUSSEL.', '', '0', 1),
(251, '1427151600', '545762463', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ROUSSEL.', '', '0', 1),
(252, '1427151600', '540562995', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par SALAUN.', '', '0', 1),
(253, '1427151600', '166237657', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par SUREAU.', '', '0', 1),
(254, '1425942000', '578116979', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BRANCHEREAU.', '', '36', 1),
(255, '1424991600', '1741327', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 1741327 en date du 27-02-2015.', '50', '', 1),
(258, '1425337200', '06987853', 'Remise Bancaire', 'Remise de EspÃ¨ce', 'Remise en banque NÂ° 06987853 en date du 03-03-2015.', '9', '', 1),
(259, '1425337200', '06988306', 'Remise Bancaire', 'Remise de EspÃ¨ce', 'Remise en banque NÂ° 06988306 en date du 03-03-2015.', '144', '', 1),
(260, '1425337200', '06987864', 'Remise Bancaire', 'Remise de EspÃ¨ce', 'Remise en banque NÂ° 06987864 en date du 03-03-2015.', '325', '', 1),
(261, '1425337200', 'REMISE EPURATRICE', 'Remise Bancaire', 'Remise de EspÃ¨ce', 'Remise en banque NÂ° REMISE EPURATRICE en date du 03-03-2015.', '0', '', 1);

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
 ADD PRIMARY KEY (`idcomptamvm`), ADD KEY `date_mvm` (`date_mvm`);

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=328;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=261;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=328;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=257;
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
MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=262;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
