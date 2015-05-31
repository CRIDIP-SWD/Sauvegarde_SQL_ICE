-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 31 Mai 2015 à 18:05
-- Version du serveur :  5.5.41-0ubuntu0.14.04.1
-- Version de PHP :  5.5.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ceultimate`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=214 ;

--
-- Contenu de la table `ayant_droit`
--

INSERT INTO `ayant_droit` (`idayantdroit`, `idsalarie`, `nom_ayant_droit`, `prenom_ayant_droit`, `date_naissance_ayant_droit`, `solde_ayant_droit`) VALUES
(56, 58, 'ADENIS', 'JUDICAELLE', '13/03/2011', '132.5'),
(57, 58, 'ADENIS', 'ANAE', '14/09/2006', '320'),
(58, 64, 'ALLAMAN', 'ANDERSON', '09/01/2002', '320'),
(59, 64, 'ALLAMAN', 'IZELIA', '05/09/2011', '320'),
(60, 66, 'AMIS', 'THOMAS', '06/08/2008', '213.5'),
(61, 68, 'ARRICAU', 'ANGELE', '25/06/2001', '288.3125'),
(62, 68, 'ARRICAU', 'JULIE', '09/06/1997', '58.9625'),
(63, 69, 'BALLESTEROS', 'CELIA', '11/12/2001', '214.25'),
(64, 69, 'BALLESTEROS', 'THOMAS', '09/10/1997', '149.75'),
(65, 70, 'BAR', 'SACHA', '15/02/2013', '320'),
(66, 70, 'BAR', 'NATHAN', '21/01/2010', '320'),
(67, 71, 'BATBEDAT', 'TEO', '01/10/2010', '320'),
(68, 71, 'BATBEDAT', 'SOLENN', '28/12/2001', '49.25'),
(69, 72, 'BAYONA', 'ANDREA', '23/09/1999', '320'),
(70, 72, 'BAYONA', 'CYRIL', '13/09/2001', '320'),
(71, 75, 'BENZIN', 'CARLA-MARIE', '04/11/2001', '230'),
(72, 75, 'BENZIN', 'DYLAN', '11/10/1997', '305'),
(73, 77, 'BERGEZ', 'MANON', '14/09/2009', '320'),
(74, 81, 'BIDART', 'DYLAN', '15/12/2001', '320'),
(75, 84, 'BLOEMZAAD', 'NATHALIE', '08/05/2014', '320'),
(76, 85, 'BONNINGUE', 'CALI', '30/12/2010', '320'),
(77, 85, 'BONNINGUE', 'HUGO', '01/08/2013', '0'),
(78, 86, 'BORDATTO', 'CHLOE', '15/04/2000', '320'),
(79, 93, 'BRACH', 'KALI ', '05/10/2012', '0'),
(80, 97, 'BRUNE', 'ERIC', '02/08/1998', '320'),
(81, 98, 'CABANE-CHRESTIA', 'LUDOVIC', '18/08/2002', '305'),
(82, 98, 'CABANE-CHRESTIA', 'MAEVA', '06/09/1998', '320'),
(83, 100, 'CALVO', 'YANIS', '12/03/2003', '0'),
(84, 101, 'CAMBOT', 'BASTIEN', '05/04/2003', '320'),
(85, 102, 'CAMPAGNE', 'MARION', '09/03/2002', '17'),
(86, 106, 'CASAIL', 'CHARLOTTE', '09/11/1999', '313.25'),
(87, 107, 'CASAMAJOU', 'IKER', '10/09/2007', '320'),
(88, 107, 'CASAMAJOU', 'LEIRE', '01/05/2002', '320'),
(89, 107, 'CASAMAJOU', 'INTZA', '07/06/2005', '320'),
(90, 108, 'CASANOVA', 'ANGEL ', '26/04/2012', '320'),
(91, 110, 'CAZALERE', 'RAPHAEL', '01/11/2014', '320'),
(92, 114, 'CIOSSE', 'DORIAN', '02/01/2002', '320'),
(93, 114, 'CIOSSE', 'REMI', '09/05/2005', '267.5'),
(94, 116, 'CLAVERIE', 'QUENTIN', '29/01/2003', '281'),
(95, 118, 'CORREIA', 'THEO', '16/01/2009', '320'),
(96, 118, 'CORREIA', 'MARIE CHRISTINE', '12/09/2012', '320'),
(97, 119, 'CUISINIER', 'SOEN', '17/07/2003', '302.375'),
(98, 119, 'CUISINIER', 'CLARA', '01/10/2001', '304.4'),
(99, 120, 'DA FONSECA', 'MARION', '07/07/2007', '50'),
(100, 120, 'DA FONSECA', 'THEO', '03/12/2013', '320'),
(101, 121, 'DA SILVA', 'RACHEL', '07/03/2002', '162.5'),
(102, 121, 'DA SILVA', 'ROMAIN', '26/04/2007', '320'),
(103, 122, 'DANTEIN', 'TOM', '26/04/2013', '313.3775'),
(104, 122, 'DANTEIN', 'ANA', '18/11/2011', '320'),
(105, 124, 'DARRACQ', 'ADRIEN', '18/08/1997', '320'),
(106, 125, 'DARRACQ', 'TIMEO', '01/07/2009', '274.25'),
(107, 125, 'DARRACQ', 'CHLOE', '20/07/2012', '320'),
(108, 127, 'DATHY', 'MAXIME', '25/12/2007', '320'),
(109, 127, 'DATHY', 'JUSTINE', '31/08/2010', '320'),
(110, 129, 'DAUBAS', 'GAUTIER', '15/07/2005', '320'),
(111, 129, 'DAUBAS', 'LAURIE', '11/10/2001', '320'),
(112, 132, 'DECROUE', 'LOU-ANNE', '03/02/2004', '320'),
(113, 136, 'DOLLE', 'ANGELINE', '07/10/2001', '42.5'),
(114, 136, 'DOLLE', 'BASTIEN', '22/06/2006', '320'),
(115, 137, 'DRIVON', 'EMILY', '12/06/2006', '243.05'),
(116, 137, 'DRIVON', 'ELISE', '09/11/2004', '266.3'),
(117, 137, 'DRIVON', 'JULES', '25/06/2002', '234.875'),
(118, 138, 'DULAU', 'AMIC', '18/01/2008', '320'),
(119, 138, 'DULAU', 'LEA', '09/05/1997', '320'),
(120, 135, 'DUPLAA', 'EMELINE', '14/09/2000', '320'),
(121, 135, 'DUPLAA', 'PIERRE', '11/03/1997', '320'),
(122, 139, 'DUROU', 'GABRIEL', '26/01/2010', '136.5875'),
(123, 139, 'DUROU', 'SIMON', '09/01/2006', '0'),
(124, 140, 'DUTILH', 'LUCAS', '03/03/1998', '320'),
(125, 141, 'DUVIGNAU', 'MATHIS', '10/08/2008', '320'),
(126, 141, 'DUVIGNAU', 'HUGO', '05/11/2006', '320'),
(127, 142, 'EL-KANDOUSSI', 'ADAM', '19/11/1998', '320'),
(128, 145, 'EUSEBIO', 'EVA', '08/05/2000', '320'),
(129, 145, 'EUSEBIO', 'LOELIA', '27/01/2003', '320'),
(130, 145, 'EUSEBIO', 'MATHIS', '22/08/2008', '320'),
(131, 146, 'FERTOUTI', 'MARWA', '18/11/2009', '320'),
(132, 146, 'FERTOUTI', 'NISRINE', '22/11/2005', '320'),
(133, 146, 'FERTOUTI', 'ELIES', '19/09/2003', '320'),
(134, 148, 'FONSECA', 'ALYCIA', '13/02/2010', '320'),
(135, 149, 'FOURNIER', 'EMILE', '12/12/1997', '320'),
(136, 150, 'FOURQUET', 'GUILLAUME', '09/05/1997', '177.5'),
(137, 151, 'GALLARDO', 'ANAE', '16/01/2012', '320'),
(138, 152, 'GIACOMIN', 'LUCILE', '28/02/2002', '320'),
(139, 153, 'GONCALVES NEIVA ', 'ILONA', '20/07/2005', '320'),
(140, 153, 'GONCALVES NEIVA', 'MAEVA', '25/03/2002', '320'),
(141, 155, 'GUION', 'HUGO', '24/08/2001', '293'),
(142, 155, 'GUION', 'EMMA', '26/10/2004', '293'),
(143, 157, 'HOSTENDIE', 'CLARISSE', '27/02/1997', '320'),
(144, 157, 'HOSTENDIE', 'INES', '11/02/2000', '320'),
(145, 158, 'HOUIS', 'LEO', '04/05/2004', '320'),
(146, 159, 'HOURDILLE', 'JUSTINE', '15/05/2003', '320'),
(147, 159, 'HOURDILLE', 'LUCAS', '27/05/1997', '320'),
(148, 161, 'JACKOWSKI', 'LISA', '14/03/2005', '320'),
(149, 162, 'JAUREGUIBERRY', 'IBAN', '13/02/2009', '320'),
(150, 162, 'JAUREGUIBERRY', 'ELAIA', '24/11/2013', '320'),
(151, 163, 'JIMENEZ', 'HUGO', '15/02/2000', '282.5'),
(152, 165, 'JUNGAS', 'JADE', '15/07/2011', '320'),
(153, 165, 'JUNGAS', 'LOU', '28/05/2014', '320'),
(154, 169, 'LACABARATS', 'LUCIE', '03/12/2012', '320'),
(155, 171, 'LACARRIEU-HAURAT', 'MORGANE', '05/10/1999', '244.25'),
(156, 177, 'LAMOURE-LABADIE', 'DAMIEN', '22/10/1998', '320'),
(157, 178, 'LAMOURET', 'THEO', '15/03/2000', '248.75'),
(158, 179, 'LANOUE', 'AXELLE', '18/02/1998', '320'),
(159, 179, 'LANOUE', 'ROXANE', '09/04/2007', '320'),
(160, 180, 'LASSOURREILLE', 'CHARLOTTE', '17/07/2011', '320'),
(161, 187, 'LUPIAC', 'JUSTINE', '07/11/2000', '320'),
(162, 189, 'MAIRAL', 'LENA', '30/11/2012', '320'),
(163, 191, 'MARATRAT', 'CASSIDY', '12/01/2010', '0'),
(164, 192, 'MARLADOT', 'BAPTISTE', '21/03/2002', '320'),
(165, 194, 'MARTINEZ', 'MAREVA', '01/05/2001', '217.625'),
(166, 197, 'MASSE', 'ALEXINE', '22/09/2012', '320'),
(167, 198, 'MASSEY', 'JOAN', '13/05/2006', '320'),
(168, 198, 'MASSEY', 'MAELY', '31/03/2011', '320'),
(169, 198, 'MASSEY', 'MARGAUX', '14/11/2002', '320'),
(170, 200, 'MAZURIER', 'GUILLAUME', '17/02/1997', '320'),
(171, 200, 'MAZURIER', 'MARIE', '31/10/1999', '42.6875'),
(172, 204, 'MOLENAT', 'JOHAN', '24/02/2012', '320'),
(173, 205, 'MORAL', 'LOLA', '20/12/2005', '51.5'),
(174, 205, 'MORAL', 'JEAN ', '18/07/2008', '320'),
(175, 206, 'MOURCEL', 'MAXIME', '13/02/2002', '1.25'),
(176, 208, 'MOUSQUES DIT CABANOT', 'VALENTINE', '10/04/2007', '320'),
(177, 208, 'MOUSQUES DIT CABANOT', 'JEAN ', '30/01/2004', '320'),
(178, 211, 'NARDOZZI', 'LEIA', '09/07/2009', '320'),
(179, 211, 'NARDOZZI', 'JOAN', '12/10/2013', '17.06'),
(180, 213, 'NICOLAS', 'JUSTINE', '01/10/2006', '320'),
(181, 214, 'NIMHAOULIN', 'SARAH', '11/02/2008', '320'),
(182, 214, 'NIMHAOULIN', 'ANISS', '18/10/2000', '320'),
(183, 215, 'NIMHAOULIN', 'INES', '06/01/2012', '320'),
(184, 215, 'NIMHAOULIN', 'SOPHIA', '27/05/2010', '320'),
(185, 216, 'NOUSTY', 'EMMA', '24/10/2009', '320'),
(186, 220, 'PASTOUREU', 'FANNY', '12/03/1997', '320'),
(187, 220, 'PASTOUREU', 'MATHILDE', '27/02/2003', '284.75'),
(188, 220, 'PASTOUREU', 'REMI', '31/01/2000', '284.75'),
(189, 223, 'PERALTA', 'ANTONIN', '17/03/2005', '320'),
(190, 230, 'REMY', 'GUILLAUME', '21/02/1999', '61.16'),
(191, 235, 'ROSE', 'ROMAIN', '12/08/1997', '320'),
(192, 238, 'RUFFAT', 'BAPTISTE', '03/01/2008', '292.625'),
(193, 239, 'SAINT-MARTIN', 'FLORIAN', '21/11/1997', '320'),
(194, 239, 'SAINT-MARTIN', 'MELISSA', '30/03/2003', '320'),
(195, 240, 'SALIOU', 'MAYDELIE', '08/09/2003', '320'),
(196, 242, 'SARRIEU', 'SHANON', '17/03/2003', '320'),
(197, 244, 'SEGRODNICK', 'LOUANE', '19/06/2005', '320'),
(198, 244, 'SEGRODNICK', 'LUCAS', '23/12/2001', '320'),
(199, 246, 'TALL EL HADJI', 'DOUNA', '23/12/2001', '320'),
(200, 247, 'THIBAUT', 'AXEL', '11/10/1999', '320'),
(201, 249, 'TLICH', 'ISLEYM', '19/02/2013', '320'),
(202, 249, 'TLICH', 'CHEYMA', '23/09/2005', '320'),
(203, 249, 'TLICH', 'ABDELAZIZ', '14/08/2003', '320'),
(204, 249, 'TLICH', 'MARWANE', '15/11/2008', '320'),
(206, 251, 'TREYTURE-HAYET', 'ROBIN', '27/04/2005', '314'),
(207, 252, 'TRIPICCHIO', 'FIORENZO', '29/03/1998', '196.25'),
(208, 259, 'WHALES', 'CELESTE', '28/04/2008', '320'),
(209, 251, 'BOY', 'Aldwin', '07-02-1999', '313.25'),
(211, 56, 'ABADO', 'MickaÃ«l', '04-01-2015', '320'),
(212, 129, 'DA SILVA ', 'ChloÃ©', '26-10-2004', '320'),
(213, 82, 'BIDART', 'Inaya Alicia', '25-02-2015', '320.00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=422 ;

--
-- Contenu de la table `bilan`
--

INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(178, 1, 'Remboursement de la prestation: Abonnement annuel Basic-Fit pour MICHE GAELLE', '185.4', '', ''),
(179, 1, 'Remboursement de la prestation: Minots de l''Om + Kempo pour DUROU SIMON', '93.75', '', ''),
(180, 1, 'Remboursement de la prestation: Les Minots de l''Om pour DUROU GABRIEL', '22.5', '', ''),
(181, 1, 'Remboursement de la prestation: Championnat du Monde Xtrial pour AMIS THOMAS', '15', '', ''),
(182, 1, 'Remboursement de la prestation: Championnat Mondial Xtrial pour AMIS  CHRISTIAN', '38', '', ''),
(184, 1, 'Remboursement de la prestation: spectacle pour MUNOZ ANTONIO', '150', '', ''),
(185, 1, 'Remboursement de la prestation: leÃ§ons de natation pour DARRACQ TIMEO', '45.75', '', ''),
(186, 1, 'Remboursement de la prestation: SKI pour DAUBA  BAPTISTE', '53', '', ''),
(187, 1, 'Remboursement de la prestation: cyclotourisme pour ETCHEVERRY JACQUES', '26', '', ''),
(188, 1, 'Remboursement de la prestation: spectacle zenith pour CLAVERIE THIERRY', '24', '', ''),
(190, 1, 'Remboursement de la prestation: abonnement piscine pour HYGEN DOMINIQUE', '117.5', '', ''),
(191, 1, 'Remboursement de la prestation: centre equestre pour DOLLE ANGELINE', '126', '', ''),
(192, 1, 'Remboursement de la prestation: spectacle zenith pour CLAVERIE QUENTIN', '39', '', ''),
(193, 1, 'Remboursement de la prestation: forfait danse classique pour DA FONSECA MARION', '270', '', ''),
(194, 1, 'Remboursement de la prestation: spectacle pour BALLESTEROS  DIDIER', '22', '', ''),
(195, 1, 'Remboursement de la prestation: forfait ski pour RUFFAT  JONATHAN', '18.25', '', ''),
(196, 1, 'Remboursement de la prestation: forfait ski pour RUFFAT BAPTISTE', '27.375', '', ''),
(197, 1, 'Remboursement de la prestation: EntrÃ©e parc pour DUROU SIMON', '85.05', '', ''),
(198, 1, 'Remboursement de la prestation: DANSE HIP HOP pour LACARRIEU-HAURAT MORGANE', '75.75', '', ''),
(199, 1, 'Remboursement de la prestation: spectacle pour PERALTA   GAETAN', '68', '', ''),
(200, 1, 'Remboursement de la prestation: METAMORPHOSE pour BERTELOOT KEVIN', '166.25', '', ''),
(201, 1, 'Remboursement de la prestation: BOWLING pour LACARRIEU-HAURAT  JEAN PIERRE', '17.5', '', ''),
(202, 1, 'Remboursement de la prestation: voyage scolaire pour CALVO YANIS', '133.875', '', ''),
(204, 1, 'Remboursement de la prestation: entrÃ©es parc pour DUROU GABRIEL', '90.3', '', ''),
(205, 1, 'Remboursement de la prestation: voyage scolaire pour DUROU SIMON', '82.5', '', ''),
(206, 1, 'Remboursement de la prestation: sortie ski pour BALLESTEROS THOMAS', '32.25', '', ''),
(207, 1, 'Remboursement de la prestation: match de hand pour LAMOURET THEO', '18.75', '', ''),
(209, 1, 'Remboursement de la prestation: CinÃ© (Invisible) pour CASAIL CHRISTOPHE', '4.5', '', ''),
(210, 1, 'Remboursement de la prestation: CinÃ©ma (Invisible) pour CASAIL CHARLOTTE', '6.75', '', ''),
(211, 1, 'Remboursement de la prestation: license cyclo pour BRUN GILLES', '51.1', '', ''),
(212, 1, 'Remboursement de la prestation: carte de peche + cinema pour CUISINIER BORIS', '46.15', '', ''),
(213, 1, 'Remboursement de la prestation: cinema pour CUISINIER SOEN', '4.125', '', ''),
(214, 1, 'Remboursement de la prestation: cinema pour CUISINIER CLARA', '4.125', '', ''),
(215, 1, 'Remboursement de la prestation: fitness pour DA SILVA RACHEL', '157.5', '', ''),
(216, 1, 'Remboursement de la prestation: BOWLING pour LACARRIEU-HAURAT  JEAN PIERRE', '42', '', ''),
(217, 1, 'Remboursement de la prestation: carte de peche pour MILAGE   CHRISTIAN', '72.5', '', ''),
(218, 1, 'Remboursement de la prestation: FORFAIT SKI pour CASSOUS OLIVIER', '150.6', '', ''),
(219, 1, 'Remboursement de la prestation: Thermes de SALIES pour DULAU  EMMANUEL', '11', '', ''),
(220, 1, 'Remboursement de la prestation: metamorphose pour TRIPICCHIO FIORENZO', '52.5', '', ''),
(244, 1, 'Remboursement de la prestation: fitness pour RUFFAT  JONATHAN', '105', '', ''),
(245, 1, 'Remboursement de la prestation: CinÃ©ma + Bowling pour TREYTURE-HAYET  THIERRY', '4.75', '', ''),
(246, 1, 'Remboursement de la prestation: musÃ©e + marinland pour LAGRAULA-DUROU SOPHIE', '43.9', '', ''),
(247, 1, 'Remboursement de la prestation: license plongÃ©e pour FOURQUET GILLES', '146.5', '', ''),
(248, 1, 'Remboursement de la prestation: fitness pour BAR  GAETAN', '100.5', '', ''),
(249, 1, 'Remboursement de la prestation: spectacle pour MARTINEZ ALAIN', '36', '', ''),
(250, 1, 'Remboursement de la prestation: Forfait Ski pour CALVO  MICHEL', '27.9', '', ''),
(251, 1, 'Remboursement de la prestation: CinÃ©ma + Bowling pour TREYTURE-HAYET ROBIN', '6', '', ''),
(252, 1, 'Remboursement de la prestation: CinÃ©ma + Bowling pour BOY Aldwin', '6.75', '', ''),
(253, 1, 'Remboursement de la prestation: forfait ski pour CALVO YANIS', '265.725', '', ''),
(254, 1, 'Remboursement de la prestation: stage hand pour MOURCEL MAXIME', '318.75', '', ''),
(255, 1, 'Remboursement de la prestation: musÃ©e + marinland + petit train pour DUROU SIMON', '32.25', '', ''),
(256, 1, 'Remboursement de la prestation: spectacles + cinÃ© pour MARTINEZ MAREVA', '75.75', '', ''),
(257, 1, 'Remboursement de la prestation: MusÃ©e + Marinland + Petit Train pour DUROU GABRIEL', '29.25', '', ''),
(258, 1, 'Remboursement de la prestation: forfait ski pour LACARRIEU-HAURAT  JEAN PIERRE', '51.9', '', ''),
(265, 1, 'Remboursement de la prestation: centre equestre pour CAMPAGNE MARION', '147', '', ''),
(267, 1, 'Remboursement de la prestation: match de foot pour LAMOURET THEO', '52.5', '', ''),
(268, 1, 'Remboursement de la prestation: match de foot pour LAMOURET JOEL', '70', '', ''),
(272, 1, 'Remboursement de la prestation: EQUITATION pour BATBEDAT SOLENN', '270.75', '', ''),
(273, 1, 'Remboursement de la prestation: PISCINE pour LACARRIEU-HAURAT  JEAN PIERRE', '17.05', '', ''),
(274, 1, 'Remboursement de la prestation: voyage scolaire + forfait ski pour ARRICAU JULIE', '116.25', '', ''),
(275, 1, 'Remboursement de la prestation: assistante maternelle pour MARATRAT CASSIDY', '527.31', '', ''),
(276, 1, 'Remboursement de la prestation: spectacle pour CAZANAVE-HOURQUET FERNAND', '38', '', ''),
(279, 1, 'Remboursement de la prestation: permis de peche pour BORDENAVE MAX', '36.5', '', ''),
(280, 1, 'Remboursement de la prestation: foot pour BALLESTEROS  DIDIER', '67', '', ''),
(281, 1, 'Remboursement de la prestation: foot pour BALLESTEROS THOMAS', '50.25', '', ''),
(282, 1, 'Remboursement de la prestation: foot pour BALLESTEROS CELIA', '50.25', '', ''),
(283, 1, 'Remboursement de la prestation: foot pour LOPEZ   OLIVIER', '40.75', '', ''),
(285, 1, 'Remboursement de la prestation: licence tennis pour CIOSSE REMI', '52.5', '', ''),
(286, 1, 'Remboursement de la prestation: foot pour LOPEZ   ISMAEL', '40.75', '', ''),
(287, 1, 'Remboursement de la prestation: ski pour DEL PIANTA  ALEXANDRE', '41', '', ''),
(288, 1, 'Remboursement de la prestation: permis de peche pour CABANE-CHRESTIA CHRISTOPHE', '36.5', '', ''),
(289, 1, 'Remboursement de la prestation: permis de peche pour CABANE-CHRESTIA LUDOVIC', '15', '', ''),
(290, 1, 'Remboursement de la prestation: cinema pour CUISINIER SOEN', '13.5', '', ''),
(291, 1, 'Remboursement de la prestation: cinema pour CUISINIER CLARA', '11.475', '', ''),
(292, 1, 'Remboursement de la prestation: thermes de SALIES pour DULAU  EMMANUEL', '7.125', '', ''),
(293, 1, 'Remboursement de la prestation: STAGE DE SKI pour MORAL LOLA', '112.5', '', ''),
(294, 1, 'Remboursement de la prestation: permis de peche pour BONNINGUE  VINCENT', '47.5', '', ''),
(295, 1, 'Remboursement de la prestation: stage de foot pour JIMENEZ HUGO', '37.5', '', ''),
(296, 1, 'Remboursement de la prestation: ski + thalasso pour REMY  JEAN MARC', '86.5', '', ''),
(297, 1, 'Remboursement de la prestation: forfait ski pour REMY GUILLAUME', '53.625', '', ''),
(298, 1, 'Remboursement de la prestation: cinÃ©ma cgr pour TISNES MARION', '33.95', '', ''),
(299, 1, 'Remboursement de la prestation: foot pour DUROU GABRIEL', '18.75', '', ''),
(300, 1, 'Remboursement de la prestation: foot pour DUROU SIMON', '18.75', '', ''),
(301, 1, 'Remboursement de la prestation: forfait ski + cinema + aquarium pour DRIVON  HAROLD', '96.4', '', ''),
(302, 1, 'Remboursement de la prestation: cinema + forfait ski pour DRIVON EMILY', '76.95', '', ''),
(303, 1, 'Remboursement de la prestation: cinema + forfait ski pour DRIVON ELISE', '53.7', '', ''),
(304, 1, 'Remboursement de la prestation: forfait ski + cinema pour DRIVON JULES', '85.125', '', ''),
(305, 1, 'Remboursement de la prestation: forfait ski pour REMY  JEAN MARC', '16.25', '', ''),
(306, 1, 'Remboursement de la prestation: forfait ski pour REMY GUILLAUME', '39', '', ''),
(307, 1, 'Remboursement de la prestation: ecole de tennis pour HOURDILLE THERESE', '95', '', ''),
(308, 1, 'Remboursement de la prestation: permis de peche pour BENZIN DYLAN', '15', '', ''),
(310, 1, 'Remboursement de la prestation: metamorphose pour EUSEBIO MANUEL', '199.5', '', ''),
(311, 1, 'Remboursement de la prestation: licence  plongÃ©e pour SARRIEU DAVID', '100', '', ''),
(315, 1, 'Remboursement de la prestation: royal kids pour DANTEIN TOM', '6.6225', '', ''),
(316, 1, 'Remboursement de la prestation: musÃ©e de la mer pour ABADO NICOLAS', '14.5', '', ''),
(317, 1, 'Remboursement de la prestation: cinÃ©ma pour DAUBAS MICHEL', '13.7', '', ''),
(318, 1, 'Remboursement de la prestation: spectacle pour BALLESTEROS  DIDIER', '37', '', ''),
(319, 1, 'Remboursement de la prestation: spectacle pour BALLESTEROS CELIA', '55.5', '', ''),
(320, 1, 'Remboursement de la prestation: spectacle pour BALLESTEROS THOMAS', '55.5', '', ''),
(321, 1, 'Remboursement de la prestation: spectacle pour MUNOZ ANTONIO', '47', '', ''),
(323, 1, 'Remboursement de la prestation: spectacle pour REMY  JEAN MARC', '45', '', ''),
(324, 1, 'Remboursement de la prestation: TOP 14 pour HOURCADETTE Nicolas', '40', '', ''),
(325, 1, 'Remboursement de la prestation: CENTRE EQUESTRE pour DOLLE ANGELINE', '151.5', '', ''),
(326, 1, 'Remboursement de la prestation: SKI pour BALLESTEROS THOMAS', '32.25', '', ''),
(327, 1, 'Remboursement de la prestation: SPECTACLE pour GUION  JEAN MARC', '18', '', ''),
(328, 1, 'Remboursement de la prestation: SPECTACLE pour GUION HUGO', '27', '', ''),
(329, 1, 'Remboursement de la prestation: SPECTACLE pour GUION EMMA', '27', '', ''),
(330, 1, 'Remboursement de la prestation: FITNESS pour BAR  GAETAN', '99.5', '', ''),
(331, 1, 'Remboursement de la prestation: CRECHE pour BRACH KALI ', '517.65', '', ''),
(333, 1, 'Remboursement de la prestation: CRECHE pour NARDOZZI JOAN', '302.94', '', ''),
(334, 1, 'Remboursement de la prestation: DISNEYLAND pour NAVAILLES ARGENTA FLORIAN', '163.49', '', ''),
(335, 1, 'Remboursement de la prestation: PAJEMPLOI pour BONNINGUE HUGO', '469.665', '', ''),
(336, 1, 'Remboursement de la prestation: CORRIDAS pour LAGRAULA-DUROU SOPHIE', '156.1', '', ''),
(337, 1, 'Remboursement de la prestation: forfait ski pour ARRICAU JULIE', '60.6', '', ''),
(338, 1, 'Remboursement de la prestation: licence moto pour CASSOU OLIVIER', '49.4', '', ''),
(339, 1, 'Remboursement de la prestation: voyage scolaire pour REMY GUILLAUME', '166.215', '', ''),
(340, 1, 'Remboursement de la prestation: FORFAIT SKI pour CHAUSSADAS  JEAN YVES', '118', '', ''),
(341, 1, 'Remboursement de la prestation: ECOLE DE DANSE pour LUBEREILH ROGER', '48', '', ''),
(342, 1, 'Remboursement de la prestation: LASER LESCAR pour TRIPICCHIO FIORENZO', '22.5', '', ''),
(343, 1, 'Remboursement de la prestation: CENTRE EQUESTRE pour MORAL LOLA', '156', '', ''),
(344, 1, 'Remboursement de la prestation: fitness pour CARDON SEBASTIEN', '200', '', ''),
(345, 1, 'Remboursement de la prestation: permis de peche pour MILAGE   ANDRE', '61.5', '', ''),
(346, 1, 'Remboursement de la prestation: voyage scolaire pour ADENIS JUDICAELLE', '187.5', '', ''),
(347, 1, 'Remboursement de la prestation: rugby pour BRUN GILLES', '12', '', ''),
(348, 1, 'Remboursement de la prestation: zumba pour ARRICAU JULIE', '52.5', '', ''),
(349, 1, 'Remboursement de la prestation: abonnement cinema pour MARTINEZ MAREVA', '26.625', '', ''),
(350, 1, 'Remboursement de la prestation: licence + musÃ©e pour PASTOUREU GILLES', '72.25', '', ''),
(351, 1, 'Remboursement de la prestation: musÃ©e + calicÃ©o pour PASTOUREU MATHILDE', '35.25', '', ''),
(352, 1, 'Remboursement de la prestation: musÃ©e + caliceo pour PASTOUREU REMI', '35.25', '', ''),
(353, 1, 'Remboursement de la prestation: centre social pour AMIS THOMAS', '91.5', '', ''),
(354, 1, 'Remboursement de la prestation: SPECTACLE + METAMORPHOSE pour TRIPICCHIO   JEAN PIERRE', '72.5', '', ''),
(356, 1, 'Remboursement de la prestation: SPECTACLE pour TRIPICCHIO FIORENZO', '48.75', '', ''),
(357, 1, 'Remboursement de la prestation: ski pour ARRICAU ANGELE', '31.6875', '', ''),
(358, 1, 'Remboursement de la prestation: ski pour ARRICAU JULIE', '31.6875', '', ''),
(359, 1, 'Remboursement de la prestation: cabane robinson pour LAMOURE-LABADIE  MICHEL', '125', '', ''),
(360, 1, 'Remboursement de la prestation: cinema pour BERGEZ JEAN', '4.5', '', ''),
(365, 1, 'Remboursement de la prestation: royal kids pour DANTEIN YANNICK', '8.83', '', ''),
(366, 1, 'Remboursement de la prestation: permis de peche pour BENZIN REGIS', '36.5', '', ''),
(369, 1, 'Remboursement de la prestation: SPECTACLE pour DARRACQ CHRISTOPHE', '25', '', ''),
(370, 1, 'Remboursement de la prestation: SPECTACLE pour BOUDERLIQUE DIDIER', '150', '', ''),
(371, 1, 'Remboursement de la prestation: licence pour HOSTENDIE PATRICK', '40', '', ''),
(372, 1, 'Remboursement de la prestation: BAINS DE SECOURS pour HOUIS  JEAN FRANCOIS', '35', '', ''),
(373, 1, 'Remboursement de la prestation: CENTRE DE LOISIRS  pour DUROU GABRIEL', '22.6125', '', ''),
(374, 1, 'Remboursement de la prestation: CENTRE DE LOISIRS pour DUROU SIMON', '22.6125', '', ''),
(375, 1, 'Remboursement de la prestation: METAMORPHOSE pour LEHMANN  GERARD', '199.5', '', ''),
(376, 1, 'Remboursement de la prestation: BASIC FIT pour MAZURIER MARIE', '277.3125', '', ''),
(377, 1, 'Remboursement de la prestation: GRAND PRIX MOTO pour ALBANEL HERVE', '81', '', ''),
(378, 1, 'Remboursement de la prestation: CENTRE Ã‰QUESTRE ABIDOS pour DOLLE  LAURENT', '50', '', ''),
(381, 1, 'Remboursement de la prestation: GOLF pour FOURQUET GILLES', '53.5', '', ''),
(382, 1, 'Remboursement de la prestation: GOLF pour FOURQUET GUILLAUME', '142.5', '', ''),
(383, 1, 'Remboursement de la prestation: centre equestre pour CAMPAGNE MARION', '156', '', ''),
(385, 1, 'Remboursement de la prestation: RUGBY pour BRUN GILLES', '12', '', ''),
(393, 2, 'Ajout du produit fixe: Subvention Janvier', '', '13544', ''),
(394, 2, 'Ajout du produit fixe: Subvention F&eacute;vrier', '', '13544', ''),
(395, 2, 'Ajout du produit fixe: Subvention Mars', '', '13544', ''),
(396, 2, 'Ajout du produit fixe: Subvention Avril', '', '13544', ''),
(397, 2, 'Ajout du produit fixe: Subvention Mai', '', '13544', ''),
(400, 2, 'Vente de la prestation: Puy du Fou Adulte pour MOUSQUES DIT CABANOT STEPHANE.', '', '100', '0000001'),
(401, 2, 'Vente de la prestation: Puy du Fou Adulte pour GUYON MATTHIEU.', '', '100', '0000002'),
(402, 2, 'Vente de la prestation: Puy du Fou Adulte pour BIDART MICKAEL.', '', '50', ''),
(403, 2, 'Vente de la prestation: Puy du Fou Adulte pour BIDART MICKAEL.', '', '50', ''),
(404, 2, 'Vente de la prestation: Puy du Fou Adulte pour CLAVERIE THIERRY.', '', '100', ''),
(405, 2, 'Vente de la prestation: Puy du Fou Adulte pour ALLAMAN NICOLAS.', '', '100', ''),
(406, 2, 'Vente de la prestation: Puy du Fou Adulte pour URRUTY MICHEL.', '', '100', ''),
(407, 2, 'Vente de la prestation: Puy du Fou Adulte pour DE MIGUEL FELIX.', '', '100', ''),
(408, 2, 'Vente de la prestation: Puy du Fou Adulte pour ARRICAU ANDRE.', '', '100', ''),
(409, 2, 'Vente de la prestation: Puy du Fou Adulte pour BIDART MARCEL.', '', '100', ''),
(410, 2, 'Vente de la prestation: Puy du Fou Adulte pour DA FONSECA JOSE.', '', '50', ''),
(411, 2, 'Vente de la prestation: Puy du Fou Adulte pour DA FONSECA JOSE.', '', '50', ''),
(412, 2, 'Vente de la prestation: Puy du Fou Adulte pour DECROUE DIDIER.', '', '100', ''),
(413, 2, 'Vente de la prestation: Puy du Fou Adulte pour JAUREGUIBERRY BRUNO.', '', '100', ''),
(414, 2, 'Vente de la prestation: Puy du Fou Adulte pour GONCALVES NEIVA FREDERIC.', '', '100', ''),
(415, 2, 'Vente de la prestation: Puy du Fou Adulte pour BORDENEUVE PATRICK.', '', '100', ''),
(416, 2, 'Vente de la prestation: Puy du Fou Adulte pour BORDATTO SERGE.', '', '100', ''),
(417, 2, 'Vente de la prestation: Puy du Fou Adulte pour BERGEZ ANDRE.', '', '100', ''),
(418, 2, 'Vente de la prestation: Puy du Fou Adulte pour MAZURIER SYLVIE.', '', '100', ''),
(419, 2, 'Vente de la prestation: Puy du Fou Adulte pour GRACIET PATRICK.', '', '100', ''),
(420, 2, 'Vente de la prestation: Puy du Fou Adulte pour LANOUE LAURENT.', '', '100', ''),
(421, 2, 'Vente de la prestation: Puy du Fou 1 Adulte pour PUYOO GILLES.', '', '100', '');

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
  `etat_billet_salarie` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`) VALUES
(49, 208, '21-02-2015', 3, '100', 1),
(50, 156, '21-02-2015', 3, '100', 1),
(51, 82, '21-02-2015', 3, '50', 1),
(52, 82, '21-02-2015', 3, '50', 1),
(53, 116, '21-02-2015', 3, '100', 1),
(54, 64, '21-02-2015', 3, '100', 1),
(55, 253, '21-02-2015', 3, '100', 1),
(56, 130, '21-02-2015', 3, '100', 1),
(57, 68, '21-02-2015', 3, '100', 1),
(58, 81, '21-02-2015', 3, '100', 1),
(59, 120, '21-02-2015', 3, '50', 1),
(60, 120, '21-02-2015', 3, '50', 1),
(61, 132, '21-02-2015', 3, '100', 1),
(62, 162, '21-02-2015', 3, '100', 1),
(63, 153, '21-02-2015', 3, '100', 1),
(64, 88, '21-02-2015', 3, '100', 1),
(65, 86, '21-02-2015', 3, '100', 1),
(66, 76, '21-02-2015', 3, '100', 1),
(67, 200, '21-02-2015', 3, '100', 1),
(68, 154, '21-02-2015', 3, '100', 1),
(69, 179, '21-02-2015', 3, '100', 1),
(70, 226, '24-02-2015', 3, '100', 1);

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
(80, 1, '0', '0'),
(81, 2, '', ''),
(82, 3, '7980.79', '2651.55'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '100', ''),
(87, 8, '17102.86', '0'),
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
(107, 28, '9421.55', '27735.2'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', ''),
(113, 34, '', ''),
(114, 35, '0', '6770'),
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
(129, 50, '91.95', '0'),
(130, 51, '268.8', '0'),
(131, 52, '', ''),
(132, 53, '32', '0'),
(133, 54, '', ''),
(134, 55, '219', '0'),
(135, 56, '1510', '0'),
(136, 57, '429.8', '0'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(19, '1424732400', 'MÃ©dia CE nÂ°242', 3, '', '120'),
(20, '1420412400', 'Frais dÃ©placement VÃ©ronique NÂ° 239', 3, '', '44.80'),
(21, '1423436400', 'Frais dÃ©placement VÃ©ronique NÂ° 240', 3, '', '44.80'),
(22, '1425855600', 'frais deplacement Veronique NÂ° 243', 3, '', '44.80'),
(23, '1421622000', 'SFR 1', 3, '', '42.98'),
(24, '1420066800', 'Subvention Janvier', 3, '1354', ''),
(25, '1421622000', 'SFR 2', 3, '', '42.98'),
(26, '1426028400', 'Achat timbres', 3, '', '91.95'),
(27, '1424214000', 'SFR 1', 3, '', '42.98'),
(28, '1424214000', 'SFR 2', 3, '', '42.98'),
(29, '1426460400', 'SFR 1', 3, '', '42.98'),
(30, '1426460400', 'SFR 2', 3, '', '42.98'),
(32, '1421276400', 'Frais de SecrÃ©tariat CE Janvier', 3, '', '302'),
(33, '1423954800', 'Frais de SecrÃ©tariat CE FÃ©vrier', 3, '', '302'),
(34, '1426374000', 'Frais de SecrÃ©tariat CE Mars', 3, '', '302'),
(41, '1427324400', 'Frais dÃ©placement VÃ©ronique nÂ°246', 3, '', '44.80'),
(42, '1427324400', 'gerbe Ladaurade nÂ° 245', 3, '', '100'),
(45, '1428357600', 'Renouvellement annuel Office 365 NÂ° 179', 3, '', '99'),
(46, '4266514800', 'Micro Plus nÂ° 247', 3, '', '32,15'),
(51, '1422745200', 'subvention fevrier', 3, '1354', ''),
(52, '1425164400', 'subvention mars', 3, '1354', ''),
(53, '1427839200', 'subvention avril', 3, '1354.00', ''),
(54, '1427839200', 'frais de secretariat avril', 3, '', '302.00'),
(58, '1428616800', 'frais de deplacements veronique n 0248', 3, '', '44.80'),
(59, '1429135200', 'sfr 1', 3, '', '42.98'),
(60, '1429135200', 'sfr 2', 3, '', '42.98'),
(63, '', '', 0, '', ''),
(64, '1430431200', 'FRAIS DE DÃ‰PLACEMENT VÃ‰RONIQUE N 0249 ', 3, '', '44.80'),
(65, '1430431200', 'FRAIS DE SECRETARIAT', 3, '', '302.00'),
(66, '1430431200', 'SUBVENTION MAI', 3, '1354.00', ''),
(67, '1431640800', 'SFR 1', 3, '', '42.98'),
(68, '1431640800', 'SFR 2', 3, '', '42.98');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `compta_bilan_actif`
--

INSERT INTO `compta_bilan_actif` (`idcptbilanactif`, `idcomptaplan`, `montant`) VALUES
(13, 1, '0.00'),
(14, 3, '1210.79'),
(15, 8, '17102.86');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_passif` (
`idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `compta_bilan_passif`
--

INSERT INTO `compta_bilan_passif` (`idcptbilanpassif`, `idcomptaplan`, `montant`) VALUES
(7, 28, '18313.65');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=163 ;

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `idcomptaplan`, `debit`, `credit`) VALUES
(49, 1, '0.00', ''),
(50, 3, '1210.79', ''),
(51, 8, '17102.86', ''),
(52, 28, '', '18313.65'),
(60, 55, '120', ''),
(61, 3, '', '120'),
(69, 3, '', '42.98'),
(72, 3, '1354', ''),
(76, 3, '', '42.98'),
(77, 50, '91.95', ''),
(78, 3, '', '91.95'),
(80, 3, '', '42.98'),
(82, 3, '', '42.98'),
(84, 3, '', '42.98'),
(86, 3, '', '42.98'),
(89, 56, '302', ''),
(90, 3, '', '302'),
(91, 56, '302', ''),
(92, 3, '', '302'),
(93, 56, '302', ''),
(94, 3, '', '302'),
(111, 7, '100', ''),
(112, 3, '', '100'),
(116, 55, '99', ''),
(117, 3, '', '99'),
(118, 53, '32,15', ''),
(119, 3, '', '32,15'),
(127, 35, '', '1354'),
(128, 35, '', '1354'),
(129, 35, '', '1354.00'),
(130, 35, '', '1354'),
(133, 3, '1354', ''),
(134, 3, '1354', ''),
(135, 3, '1354.00', ''),
(136, 3, '', '302.00'),
(141, 3, '', '42.98'),
(142, 3, '', '42.98'),
(144, 51, '44.80', ''),
(145, 56, '302.00', ''),
(149, 35, '', '1354.00'),
(150, 51, '44.80', ''),
(151, 56, '302.00', ''),
(155, 0, '', ''),
(156, 3, '', '44.80'),
(157, 3, '', '302.00'),
(158, 3, '1354.00', ''),
(159, 57, '42.98', ''),
(160, 57, '42.98', ''),
(161, 3, '', '42.98'),
(162, 3, '', '42.98');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Contenu de la table `compta_mvm`
--

INSERT INTO `compta_mvm` (`idcomptamvm`, `date_mvm`, `desc_mvm`, `idcomptaplan`, `debit`, `credit`) VALUES
(18, '1424732400', 'MÃ©dia CE nÂ° 242', 55, '120', ''),
(19, '1420412400', 'Frais dÃ©placement VÃ©ronique NÂ° 239', 51, '44.80', ''),
(23, '1421622000', 'SFR 2', 57, '42.98', ''),
(25, '1421622000', 'SFR 1', 57, '42.98', ''),
(26, '1423436400', 'Frais dÃ©placement VÃ©ronique NÂ° 240', 51, '44.80', ''),
(27, '1425855600', 'Frais dÃ©placement VÃ©ronique NÂ° 243', 51, '44.80', ''),
(28, '1426028400', 'Achat timbres NÂ° 244', 50, '91.95', ''),
(29, '1424214000', 'SFR 1', 57, '42.98', ''),
(30, '1424214000', 'SFR 2', 57, '42.98', ''),
(31, '1426460400', 'SFR 1', 57, '42.98', ''),
(32, '1426460400', 'SFR 2', 57, '42.98', ''),
(34, '1421276400', 'Frais de SecrÃ©tariat CE Janvier', 56, '302', ''),
(35, '1423954800', 'Frais de SecrÃ©tariat CE FÃ©vrier', 56, '302', ''),
(36, '1426374000', 'Frais de SecrÃ©tariat CE Mars', 56, '302', ''),
(40, '1427324400', 'gerbe Ladaurade', 7, '100', ''),
(42, '1428357600', 'Renouvellement annuel Office 365 NÂ° 179', 55, '99', ''),
(43, '1426374000', 'Micro Plus NÂ° 247', 53, '32,15', ''),
(49, '1420066800', 'subvention janvier', 35, '', '1354'),
(50, '1422745200', 'subvention fevrier', 35, '', '1354'),
(51, '1425164400', 'subvention mars', 35, '', '1354.00'),
(52, '1427839200', 'subvention avril', 35, '', '1354'),
(53, '1427324400', 'frais de deplacement veronique n 0246', 51, '44.80', ''),
(54, '1428616800', 'frais de deplacement veronique n 0248', 51, '44.80', ''),
(55, '1428616800', 'frais de secretariat avril', 56, '302.00', ''),
(57, '1429135200', 'sfr 2', 57, '42.98', ''),
(58, '1429135200', 'sfr 1', 57, '42.98', ''),
(59, '1430431200', 'SUBVENTION MAI', 35, '', '1354.00'),
(60, '1430949600', 'Frais de dÃ©placement VÃ©ronique N 0249', 51, '44.80', ''),
(61, '1430949600', 'FRAIS DE SECRETARIAT MAI', 56, '302.00', ''),
(63, '1431640800', 'SFR 1', 57, '42.98', ''),
(64, '1431640800', 'SFR 2', 57, '42.98', '');

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
(7, 1, 'Autre actif circulant 1', 'Frais Divers'),
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
(56, 6, 'Frais d''administration', 'Frais de SecrÃ©tariat CE'),
(57, 6, 'T&eacute;l&eacute;phone, fax, internet', 'TÃ©lÃ©phone, fax, internet'),
(58, 6, 'Publicit&eacute;', 'Agios'),
(59, 6, 'Interet-charges, Frais Bancaires', 'Frais bancaires'),
(60, 6, 'Amortissements', 'Achat de matÃ©riel '),
(61, 6, 'Autre Charge d''exploitation 1', 'Frais de Formation'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `idcomptaplan`, `debit`, `credit`) VALUES
(18, 55, '120', ''),
(28, 50, '91.95', ''),
(34, 56, '302', ''),
(35, 56, '302', ''),
(36, 56, '302', ''),
(40, 7, '100', ''),
(42, 55, '99', ''),
(43, 53, '32,15', ''),
(49, 35, '', '1354'),
(50, 35, '', '1354'),
(51, 35, '', '1354.00'),
(52, 35, '', '1354'),
(54, 51, '44.80', ''),
(55, 56, '302.00', ''),
(59, 35, '', '1354.00'),
(60, 51, '44.80', ''),
(61, 56, '302.00', ''),
(63, 57, '42.98', ''),
(64, 57, '42.98', '');

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
(1, 'COMITE D''ETABLISSEMENT REXAM', '0.50', '0.75', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '31-12-2014', '31-12-2015');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=422 ;

--
-- Contenu de la table `cpt_resultat`
--

INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(178, '', '1420588800', 'Remboursement de la Prestation pour MICHE GAELLE - Abonnement annuel Basic-Fit', '185.4', ''),
(179, '', '1420675200', 'Remboursement de la Prestation pour DUROU SIMON - Minots de l''Om + Kempo', '93.75', ''),
(180, '', '1420675200', 'Remboursement de la Prestation pour DUROU GABRIEL - Les Minots de l''Om', '22.5', ''),
(181, '', '1420761600', 'Remboursement de la Prestation pour AMIS THOMAS - Championnat du Monde Xtrial', '15', ''),
(182, '', '1420761600', 'Remboursement de la Prestation pour AMIS  CHRISTIAN - Championnat Mondial Xtrial', '38', ''),
(184, '', '1421193600', 'Remboursement de la Prestation pour MUNOZ ANTONIO - spectacle', '150', ''),
(185, '', '1421193600', 'Remboursement de la Prestation pour DARRACQ TIMEO - leÃ§ons de natation', '45.75', ''),
(186, '', '1421452800', 'Remboursement de la Prestation pour DAUBA  BAPTISTE - SKI', '53', ''),
(187, '', '1421625600', 'Remboursement de la Prestation pour ETCHEVERRY JACQUES - cyclotourisme', '26', ''),
(188, '', '1421625600', 'Remboursement de la Prestation pour CLAVERIE THIERRY - spectacle zenith', '24', ''),
(190, '', '1421625600', 'Remboursement de la Prestation pour HYGEN DOMINIQUE - abonnement piscine', '117.5', ''),
(191, '', '1421625600', 'Remboursement de la Prestation pour DOLLE ANGELINE - centre equestre', '126', ''),
(192, '', '1421625600', 'Remboursement de la Prestation pour CLAVERIE QUENTIN - spectacle zenith', '39', ''),
(193, '', '1421625600', 'Remboursement de la Prestation pour DA FONSECA MARION - forfait danse classique', '270', ''),
(194, '', '1421798400', 'Remboursement de la Prestation pour BALLESTEROS  DIDIER - spectacle', '22', ''),
(195, '', '1421798400', 'Remboursement de la Prestation pour RUFFAT  JONATHAN - forfait ski', '18.25', ''),
(196, '', '1421798400', 'Remboursement de la Prestation pour RUFFAT BAPTISTE - forfait ski', '27.375', ''),
(197, '', '1421971200', 'Remboursement de la Prestation pour DUROU SIMON - EntrÃ©e parc', '85.05', ''),
(198, '', '1422144000', 'Remboursement de la Prestation pour LACARRIEU-HAURAT MORGANE - DANSE HIP HOP', '75.75', ''),
(199, '', '1422144000', 'Remboursement de la Prestation pour PERALTA   GAETAN - spectacle', '68', ''),
(200, '', '1422144000', 'Remboursement de la Prestation pour BERTELOOT KEVIN - METAMORPHOSE', '166.25', ''),
(201, '', '1422144000', 'Remboursement de la Prestation pour LACARRIEU-HAURAT  JEAN PIERRE - BOWLING', '17.5', ''),
(202, '', '1422230400', 'Remboursement de la Prestation pour CALVO YANIS - voyage scolaire', '133.875', ''),
(204, '', '1423440000', 'Remboursement de la Prestation pour DUROU GABRIEL - entrÃ©es parc', '90.3', ''),
(205, '', '1423440000', 'Remboursement de la Prestation pour DUROU SIMON - voyage scolaire', '82.5', ''),
(206, '', '1423612800', 'Remboursement de la Prestation pour BALLESTEROS THOMAS - sortie ski', '32.25', ''),
(207, '', '1423612800', 'Remboursement de la Prestation pour LAMOURET THEO - match de hand', '18.75', ''),
(209, '', '1423699200', 'Remboursement de la Prestation pour CASAIL CHRISTOPHE - CinÃ© (Invisible)', '4.5', ''),
(210, '', '1423699200', 'Remboursement de la Prestation pour CASAIL CHARLOTTE - CinÃ©ma (Invisible)', '6.75', ''),
(211, '', '1423785600', 'Remboursement de la Prestation pour BRUN GILLES - license cyclo', '51.1', ''),
(212, '', '1423958400', 'Remboursement de la Prestation pour CUISINIER BORIS - carte de peche + cinema', '46.15', ''),
(213, '', '1423958400', 'Remboursement de la Prestation pour CUISINIER SOEN - cinema', '4.125', ''),
(214, '', '1423958400', 'Remboursement de la Prestation pour CUISINIER CLARA - cinema', '4.125', ''),
(215, '', '1424044800', 'Remboursement de la Prestation pour DA SILVA RACHEL - fitness', '157.5', ''),
(216, '', '1424131200', 'Remboursement de la Prestation pour LACARRIEU-HAURAT  JEAN PIERRE - BOWLING', '42', ''),
(217, '', '1424217600', 'Remboursement de la Prestation pour MILAGE   CHRISTIAN - carte de peche', '72.5', ''),
(218, '', '1424217600', 'Remboursement de la Prestation pour CASSOUS OLIVIER - FORFAIT SKI', '150.6', ''),
(219, '', '1424217600', 'Remboursement de la Prestation pour DULAU  EMMANUEL - Thermes de SALIES', '11', ''),
(220, '', '1424217600', 'Remboursement de la Prestation pour TRIPICCHIO FIORENZO - metamorphose', '52.5', ''),
(244, '', '1424822400', 'Remboursement de la Prestation pour RUFFAT  JONATHAN - fitness', '105', ''),
(245, '', '1424908800', 'Remboursement de la Prestation pour TREYTURE-HAYET  THIERRY - CinÃ©ma + Bowling', '4.75', ''),
(246, '', '1424908800', 'Remboursement de la Prestation pour LAGRAULA-DUROU SOPHIE - musÃ©e + marinland', '43.9', ''),
(247, '', '1424908800', 'Remboursement de la Prestation pour FOURQUET GILLES - license plongÃ©e', '146.5', ''),
(248, '', '1424908800', 'Remboursement de la Prestation pour BAR  GAETAN - fitness', '100.5', ''),
(249, '', '1424908800', 'Remboursement de la Prestation pour MARTINEZ ALAIN - spectacle', '36', ''),
(250, '', '1424908800', 'Remboursement de la Prestation pour CALVO  MICHEL - Forfait Ski', '27.9', ''),
(251, '', '1424908800', 'Remboursement de la Prestation pour TREYTURE-HAYET ROBIN - CinÃ©ma + Bowling', '6', ''),
(252, '', '1424908800', 'Remboursement de la Prestation pour BOY Aldwin - CinÃ©ma + Bowling', '6.75', ''),
(253, '', '1424908800', 'Remboursement de la Prestation pour CALVO YANIS - forfait ski', '265.725', ''),
(254, '', '1424908800', 'Remboursement de la Prestation pour MOURCEL MAXIME - stage hand', '318.75', ''),
(255, '', '1424908800', 'Remboursement de la Prestation pour DUROU SIMON - musÃ©e + marinland + petit train', '32.25', ''),
(256, '', '1424908800', 'Remboursement de la Prestation pour MARTINEZ MAREVA - spectacles + cinÃ©', '75.75', ''),
(257, '', '1424908800', 'Remboursement de la Prestation pour DUROU GABRIEL - MusÃ©e + Marinland + Petit Train', '29.25', ''),
(258, '', '1424995200', 'Remboursement de la Prestation pour LACARRIEU-HAURAT  JEAN PIERRE - forfait ski', '51.9', ''),
(265, '', '1425855600', 'Remboursement de la Prestation pour CAMPAGNE MARION - centre equestre', '147', ''),
(267, '', '1425855600', 'Remboursement de la Prestation pour LAMOURET THEO - match de foot', '52.5', ''),
(268, '', '1425855600', 'Remboursement de la Prestation pour LAMOURET JOEL - match de foot', '70', ''),
(272, '', '1426028400', 'Remboursement de la Prestation pour BATBEDAT SOLENN - EQUITATION', '270.75', ''),
(273, '', '1426028400', 'Remboursement de la Prestation pour LACARRIEU-HAURAT  JEAN PIERRE - PISCINE', '17.05', ''),
(274, '', '1426374000', 'Remboursement de la Prestation pour ARRICAU JULIE - voyage scolaire + forfait ski', '116.25', ''),
(275, '', '1426633200', 'Remboursement de la Prestation pour MARATRAT CASSIDY - assistante maternelle', '527.31', ''),
(276, '', '1426633200', 'Remboursement de la Prestation pour CAZANAVE-HOURQUET FERNAND - spectacle', '38', ''),
(279, '', '1426633200', 'Remboursement de la Prestation pour BORDENAVE MAX - permis de peche', '36.5', ''),
(280, '', '1426633200', 'Remboursement de la Prestation pour BALLESTEROS  DIDIER - foot', '67', ''),
(281, '', '1426633200', 'Remboursement de la Prestation pour BALLESTEROS THOMAS - foot', '50.25', ''),
(282, '', '1426633200', 'Remboursement de la Prestation pour BALLESTEROS CELIA - foot', '50.25', ''),
(283, '', '1426633200', 'Remboursement de la Prestation pour LOPEZ   OLIVIER - foot', '40.75', ''),
(285, '', '1426633200', 'Remboursement de la Prestation pour CIOSSE REMI - licence tennis', '52.5', ''),
(286, '', '1426633200', 'Remboursement de la Prestation pour LOPEZ   ISMAEL - foot', '40.75', ''),
(287, '', '1426633200', 'Remboursement de la Prestation pour DEL PIANTA  ALEXANDRE - ski', '41', ''),
(288, '', '1426719600', 'Remboursement de la Prestation pour CABANE-CHRESTIA CHRISTOPHE - permis de peche', '36.5', ''),
(289, '', '1426719600', 'Remboursement de la Prestation pour CABANE-CHRESTIA LUDOVIC - permis de peche', '15', ''),
(290, '', '1426719600', 'Remboursement de la Prestation pour CUISINIER SOEN - cinema', '13.5', ''),
(291, '', '1426719600', 'Remboursement de la Prestation pour CUISINIER CLARA - cinema', '11.475', ''),
(292, '', '1426719600', 'Remboursement de la Prestation pour DULAU  EMMANUEL - thermes de SALIES', '7.125', ''),
(293, '', '1426719600', 'Remboursement de la Prestation pour MORAL LOLA - STAGE DE SKI', '112.5', ''),
(294, '', '1426719600', 'Remboursement de la Prestation pour BONNINGUE  VINCENT - permis de peche', '47.5', ''),
(295, '', '1426719600', 'Remboursement de la Prestation pour JIMENEZ HUGO - stage de foot', '37.5', ''),
(296, '', '1426719600', 'Remboursement de la Prestation pour REMY  JEAN MARC - ski + thalasso', '86.5', ''),
(297, '', '1426719600', 'Remboursement de la Prestation pour REMY GUILLAUME - forfait ski', '53.625', ''),
(298, '', '1426719600', 'Remboursement de la Prestation pour TISNES MARION - cinÃ©ma cgr', '33.95', ''),
(299, '', '1426719600', 'Remboursement de la Prestation pour DUROU GABRIEL - foot', '18.75', ''),
(300, '', '1426719600', 'Remboursement de la Prestation pour DUROU SIMON - foot', '18.75', ''),
(301, '', '1426719600', 'Remboursement de la Prestation pour DRIVON  HAROLD - forfait ski + cinema + aquarium', '96.4', ''),
(302, '', '1426719600', 'Remboursement de la Prestation pour DRIVON EMILY - cinema + forfait ski', '76.95', ''),
(303, '', '1426719600', 'Remboursement de la Prestation pour DRIVON ELISE - cinema + forfait ski', '53.7', ''),
(304, '', '1426719600', 'Remboursement de la Prestation pour DRIVON JULES - forfait ski + cinema', '85.125', ''),
(305, '', '1426719600', 'Remboursement de la Prestation pour REMY  JEAN MARC - forfait ski', '16.25', ''),
(306, '', '1426719600', 'Remboursement de la Prestation pour REMY GUILLAUME - forfait ski', '39', ''),
(307, '', '1426719600', 'Remboursement de la Prestation pour HOURDILLE THERESE - ecole de tennis', '95', ''),
(308, '', '1427497200', 'Remboursement de la Prestation pour BENZIN DYLAN - permis de peche', '15', ''),
(310, '', '1427497200', 'Remboursement de la Prestation pour EUSEBIO MANUEL - metamorphose', '199.5', ''),
(311, '', '1427497200', 'Remboursement de la Prestation pour SARRIEU DAVID - licence  plongÃ©e', '100', ''),
(315, '', '1427497200', 'Remboursement de la Prestation pour DANTEIN TOM - royal kids', '6.6225', ''),
(316, '', '1427497200', 'Remboursement de la Prestation pour ABADO NICOLAS - musÃ©e de la mer', '14.5', ''),
(317, '', '1427497200', 'Remboursement de la Prestation pour DAUBAS MICHEL - cinÃ©ma', '13.7', ''),
(318, '', '1427497200', 'Remboursement de la Prestation pour BALLESTEROS  DIDIER - spectacle', '37', ''),
(319, '', '1427497200', 'Remboursement de la Prestation pour BALLESTEROS CELIA - spectacle', '55.5', ''),
(320, '', '1427497200', 'Remboursement de la Prestation pour BALLESTEROS THOMAS - spectacle', '55.5', ''),
(321, '', '1427497200', 'Remboursement de la Prestation pour MUNOZ ANTONIO - spectacle', '47', ''),
(323, '', '1427497200', 'Remboursement de la Prestation pour REMY  JEAN MARC - spectacle', '45', ''),
(324, '', '1428444000', 'Remboursement de la Prestation pour HOURCADETTE Nicolas - TOP 14', '40', ''),
(325, '', '1428444000', 'Remboursement de la Prestation pour DOLLE ANGELINE - CENTRE EQUESTRE', '151.5', ''),
(326, '', '1428444000', 'Remboursement de la Prestation pour BALLESTEROS THOMAS - SKI', '32.25', ''),
(327, '', '1428444000', 'Remboursement de la Prestation pour GUION  JEAN MARC - SPECTACLE', '18', ''),
(328, '', '1428444000', 'Remboursement de la Prestation pour GUION HUGO - SPECTACLE', '27', ''),
(329, '', '1428444000', 'Remboursement de la Prestation pour GUION EMMA - SPECTACLE', '27', ''),
(330, '', '1428444000', 'Remboursement de la Prestation pour BAR  GAETAN - FITNESS', '99.5', ''),
(331, '', '1428444000', 'Remboursement de la Prestation pour BRACH KALI  - CRECHE', '517.65', ''),
(333, '', '1428444000', 'Remboursement de la Prestation pour NARDOZZI JOAN - CRECHE', '302.94', ''),
(334, '', '1428444000', 'Remboursement de la Prestation pour NAVAILLES ARGENTA FLORIAN - DISNEYLAND', '163.49', ''),
(335, '', '1428444000', 'Remboursement de la Prestation pour BONNINGUE HUGO - PAJEMPLOI', '469.665', ''),
(336, '', '1428444000', 'Remboursement de la Prestation pour LAGRAULA-DUROU SOPHIE - CORRIDAS', '156.1', ''),
(337, '', '1429048800', 'Remboursement de la Prestation pour ARRICAU JULIE - forfait ski', '60.6', ''),
(338, '', '1429048800', 'Remboursement de la Prestation pour CASSOU OLIVIER - licence moto', '49.4', ''),
(339, '', '1429048800', 'Remboursement de la Prestation pour REMY GUILLAUME - voyage scolaire', '166.215', ''),
(340, '', '1429048800', 'Remboursement de la Prestation pour CHAUSSADAS  JEAN YVES - FORFAIT SKI', '118', ''),
(341, '', '1429048800', 'Remboursement de la Prestation pour LUBEREILH ROGER - ECOLE DE DANSE', '48', ''),
(342, '', '1429048800', 'Remboursement de la Prestation pour TRIPICCHIO FIORENZO - LASER LESCAR', '22.5', ''),
(343, '', '1429048800', 'Remboursement de la Prestation pour MORAL LOLA - CENTRE EQUESTRE', '156', ''),
(344, '', '1429135200', 'Remboursement de la Prestation pour CARDON SEBASTIEN - fitness', '200', ''),
(345, '', '1429135200', 'Remboursement de la Prestation pour MILAGE   ANDRE - permis de peche', '61.5', ''),
(346, '', '1429653600', 'Remboursement de la Prestation pour ADENIS JUDICAELLE - voyage scolaire', '187.5', ''),
(347, '', '1429653600', 'Remboursement de la Prestation pour BRUN GILLES - rugby', '12', ''),
(348, '', '1429653600', 'Remboursement de la Prestation pour ARRICAU JULIE - zumba', '52.5', ''),
(349, '', '1429826400', 'Remboursement de la Prestation pour MARTINEZ MAREVA - abonnement cinema', '26.625', ''),
(350, '', '1430085600', 'Remboursement de la Prestation pour PASTOUREU GILLES - licence + musÃ©e', '72.25', ''),
(351, '', '1430085600', 'Remboursement de la Prestation pour PASTOUREU MATHILDE - musÃ©e + calicÃ©o', '35.25', ''),
(352, '', '1430085600', 'Remboursement de la Prestation pour PASTOUREU REMI - musÃ©e + caliceo', '35.25', ''),
(353, '', '1430085600', 'Remboursement de la Prestation pour AMIS THOMAS - centre social', '91.5', ''),
(354, '', '1430085600', 'Remboursement de la Prestation pour TRIPICCHIO   JEAN PIERRE - SPECTACLE + METAMORPHOSE', '72.5', ''),
(356, '', '1430085600', 'Remboursement de la Prestation pour TRIPICCHIO FIORENZO - SPECTACLE', '48.75', ''),
(357, '', '1430085600', 'Remboursement de la Prestation pour ARRICAU ANGELE - ski', '31.6875', ''),
(358, '', '1430085600', 'Remboursement de la Prestation pour ARRICAU JULIE - ski', '31.6875', ''),
(359, '', '1430258400', 'Remboursement de la Prestation pour LAMOURE-LABADIE  MICHEL - cabane robinson', '125', ''),
(360, '', '1430258400', 'Remboursement de la Prestation pour BERGEZ JEAN - cinema', '4.5', ''),
(365, '', '1427497200', 'Remboursement de la Prestation pour DANTEIN YANNICK - royal kids', '8.83', ''),
(366, '', '1430344800', 'Remboursement de la Prestation pour BENZIN REGIS - permis de peche', '36.5', ''),
(369, '', '1430344800', 'Remboursement de la Prestation pour DARRACQ CHRISTOPHE - SPECTACLE', '25', ''),
(370, '', '1430776800', 'Remboursement de la Prestation pour BOUDERLIQUE DIDIER - SPECTACLE', '150', ''),
(371, '', '1430776800', 'Remboursement de la Prestation pour HOSTENDIE PATRICK - licence', '40', ''),
(372, '', '1430776800', 'Remboursement de la Prestation pour HOUIS  JEAN FRANCOIS - BAINS DE SECOURS', '35', ''),
(373, '', '1430776800', 'Remboursement de la Prestation pour DUROU GABRIEL - CENTRE DE LOISIRS ', '22.6125', ''),
(374, '', '1430776800', 'Remboursement de la Prestation pour DUROU SIMON - CENTRE DE LOISIRS', '22.6125', ''),
(375, '', '1430776800', 'Remboursement de la Prestation pour LEHMANN  GERARD - METAMORPHOSE', '199.5', ''),
(376, '', '1430776800', 'Remboursement de la Prestation pour MAZURIER MARIE - BASIC FIT', '277.3125', ''),
(377, '', '1430776800', 'Remboursement de la Prestation pour ALBANEL HERVE - GRAND PRIX MOTO', '81', ''),
(378, '', '1430776800', 'Remboursement de la Prestation pour DOLLE  LAURENT - CENTRE Ã‰QUESTRE ABIDOS', '50', ''),
(381, '', '1430863200', 'Remboursement de la Prestation pour FOURQUET GILLES - GOLF', '53.5', ''),
(382, '', '1430863200', 'Remboursement de la Prestation pour FOURQUET GUILLAUME - GOLF', '142.5', ''),
(383, '', '1430949600', 'Remboursement de la Prestation pour CAMPAGNE MARION - centre equestre', '156', ''),
(385, '', '1431295200', 'Remboursement de la Prestation pour BRUN GILLES - RUGBY', '12', ''),
(393, '', '1420066800', 'Subvention Janvier', '', '13544'),
(394, '', '1422745200', 'Subvention F&eacute;vrier', '', '13544'),
(395, '', '1425164400', 'Subvention Mars', '', '13544'),
(396, '', '1427839200', 'Subvention Avril', '', '13544'),
(397, '', '1430431200', 'Subvention Mai', '', '13544'),
(400, '000001', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour MOUSQUES DIT CABANOT STEPHANE.', '', '100'),
(401, '000002', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour GUYON MATTHIEU.', '', '100'),
(402, '000003', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour BIDART MICKAEL.', '', '50'),
(403, '000004', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour BIDART MICKAEL.', '', '50'),
(404, '000005', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour CLAVERIE THIERRY.', '', '100'),
(405, '000006', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour ALLAMAN NICOLAS.', '', '100'),
(406, '000007', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour URRUTY MICHEL.', '', '100'),
(407, '000008', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour DE MIGUEL FELIX.', '', '100'),
(408, '000009', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour ARRICAU ANDRE.', '', '100'),
(409, '0000010', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour BIDART MARCEL.', '', '100'),
(410, '0000011', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour DA FONSECA JOSE.', '', '50'),
(411, '0000012', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour DA FONSECA JOSE.', '', '50'),
(412, '0000013', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour DECROUE DIDIER.', '', '100'),
(413, '0000014', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour JAUREGUIBERRY BRUNO.', '', '100'),
(414, '0000015', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour GONCALVES NEIVA FREDERIC.', '', '100'),
(415, '0000016', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour BORDENEUVE PATRICK.', '', '100'),
(416, '0000017', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour BORDATTO SERGE.', '', '100'),
(417, '0000018', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour BERGEZ ANDRE.', '', '100'),
(418, '0000019', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour MAZURIER SYLVIE.', '', '100'),
(419, '0000020', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour GRACIET PATRICK.', '', '100'),
(420, '0000021', '1424502000', 'Vente de la prestation: Puy du Fou Adulte pour LANOUE LAURENT.', '', '100'),
(421, '0000022', '1424761200', 'Vente de la prestation: Puy du Fou 1 Adulte pour PUYOO GILLES.', '', '100');

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE IF NOT EXISTS `famille_prestation` (
`idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Contenu de la table `famille_prestation`
--

INSERT INTO `famille_prestation` (`idfamilleprestation`, `designation_famille`) VALUES
(43, 'cine'),
(44, 'Puy du Fou'),
(45, 'VOYAGE'),
(46, 'Puy du Fou Ado'),
(47, 'Puy du Fou Enfant'),
(48, 'Puy du Fou 1 Adulte');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(45, 49, 2, '2', '100', '100', 0),
(46, 50, 2, '2', '100', '100', 0),
(47, 51, 2, '1', '50', '50', 0),
(48, 52, 2, '1', '50', '50', 0),
(49, 53, 2, '2', '100', '100', 0),
(50, 54, 2, '2', '100', '100', 0),
(51, 55, 2, '2', '100', '100', 0),
(52, 56, 2, '2', '100', '100', 0),
(53, 57, 2, '2', '100', '100', 0),
(54, 58, 2, '2', '100', '100', 0),
(55, 59, 2, '1', '50', '50', 0),
(56, 60, 2, '1', '50', '50', 0),
(57, 61, 2, '2', '100', '100', 0),
(58, 62, 2, '2', '100', '100', 0),
(59, 63, 2, '2', '100', '100', 0),
(60, 64, 2, '2', '100', '100', 0),
(61, 65, 2, '2', '100', '100', 0),
(62, 66, 2, '2', '100', '100', 0),
(63, 67, 2, '2', '100', '100', 0),
(64, 68, 2, '2', '100', '100', 0),
(65, 69, 2, '2', '100', '100', 0),
(66, 70, 5, '1', '100', '100', 0);

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
(5, '1.2.5', '29315-ULTI');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
`iduser` int(13) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass_md5` varchar(255) NOT NULL,
  `groupe` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`iduser`, `login`, `pass_md5`, `groupe`) VALUES
(1, 'Administrateur', '25f9e794323b453885f5181f1b624d0b', 1),
(6, 'Thierry', 'c5394b4f3df6d0a42d0a99cf8524b464', 1),
(9, 'Jean-Paul', 'b53759f3ce692de7aff1b5779d3964da', 1),
(10, 'Gilles', '618bcbf7fcba943d8f3899c33ab81b9c', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`) VALUES
(2, 45, 'Puy du Fou Adulte', '01-02-2015', '31-12-2015', '50', '50', '100', '6', '44', 0),
(3, 46, 'Puy du Fou Ado', '01-02-2015', '31-12-2015', '25', '75', '100', '5', '70', 0),
(4, 47, 'Puy du Fou Enfant', '01-02-2015', '31-12-2015', '15', '60', '75', '5', '50', 0),
(5, 48, 'Puy du Fou 1 Adulte', '15-02-2015', '31-12-2015', '100', '100', '200', '2', '59', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Contenu de la table `produit_fixe`
--

INSERT INTO `produit_fixe` (`idproduitfixe`, `designation`, `date_produit_fixe`, `montant_produit`) VALUES
(31, 'Subvention Janvier', '01-01-2015', '13544'),
(32, 'Subvention F&eacute;vrier', '01-02-2015', '13544'),
(33, 'Subvention Mars', '01-03-2015', '13544'),
(34, 'Subvention Avril', '01-04-2015', '13544'),
(35, 'Subvention Mai', '01-05-2015', '13544');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(45, 49, 1, '100', 'BPSO', 'MOUSQUES DIT CABANOT STEPHANE', '0479412', 0),
(46, 50, 1, '100', 'CE', 'GUYON MATTHIEU', '6482454', 0),
(47, 51, 1, '50', 'SG', 'BIDART MICKAEL', '0162', 0),
(48, 52, 1, '50', 'SG', 'BIDART MICKAEL', '0163', 0),
(49, 53, 1, '100', 'CE', 'CLAVERIE THIERRY', '6344552', 0),
(50, 54, 1, '100', 'CE', 'ALLAMAN NICOLAS', '0145', 0),
(51, 55, 1, '100', 'CA', 'URRUTY MICHEL', '4610328', 0),
(52, 56, 1, '100', 'SG', 'DE MIGUEL FELIX', '01458', 0),
(53, 57, 1, '100', 'CA', 'ARRICAU ANDRE', '9892939', 0),
(54, 58, 1, '100', 'SG', 'BIDART MICKAEL', '01726', 0),
(55, 59, 1, '50', 'LA POSTE', 'DA FONSECA JOSE', '144683058', 0),
(56, 60, 1, '50', 'LA POSTE', 'DA FONSECA JOSE', '144683059', 0),
(57, 61, 1, '100', 'CE', 'DECROUE DIDIER', '6972040', 0),
(58, 62, 1, '100', 'CE', 'JAUREGUYBERRY', '5243985', 0),
(59, 63, 1, '100', 'CA', 'GONCALVEZ NEIVA FREDERICQ', '1337841', 0),
(60, 64, 1, '100', 'SG', 'BORDENEUVE PATRICK', '03684', 0),
(61, 65, 1, '100', 'CE', 'BORDATTO SERGE', '5892549', 0),
(62, 66, 1, '100', 'CA', 'BERGEZ ANDRE', '5314236', 0),
(63, 67, 1, '100', 'LCL', 'MAZURIER SYLVIE', '7358715', 0),
(64, 68, 1, '100', 'CE', 'GRACIET PATRICK', '6344273', 0),
(65, 69, 1, '100', 'CA', 'LANOUE LAURENT', '7449598', 0),
(66, 70, 1, '100', 'CE', 'PUYOO Gilles', '3171507', 0);

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_remb_ayant_droit` (
`idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=119 ;

--
-- Contenu de la table `reg_remb_ayant_droit`
--

INSERT INTO `reg_remb_ayant_droit` (`idregrembayantdroit`, `idrembayantdroit`, `montant_reglement`, `num_chq`) VALUES
(36, 40, '93,75', '1862'),
(37, 41, '22,50', 'A COMPLETER'),
(38, 42, '15,00', '2165'),
(39, 43, '45,75', '2168'),
(40, 44, '126,00', '2175'),
(41, 45, '39,00', '2176'),
(42, 46, '270,00', '2178'),
(43, 47, '27,38', '2181'),
(44, 48, '85,05', '2182'),
(45, 49, '75,75', '2185'),
(46, 50, '133,88', '2186'),
(47, 51, '90,30', '2187'),
(48, 52, '82,50', '2187'),
(49, 53, '32,25', '2188'),
(50, 54, '18,75', '2189'),
(51, 55, '6,75', '1863'),
(52, 56, '4,13', '2191'),
(53, 57, '4,13', '2191'),
(54, 58, '157,50', '2193'),
(55, 59, '52,50', '2196'),
(56, 60, '45,00', '2199'),
(57, 61, '6,00', '1865'),
(58, 62, '6,75', '1865'),
(59, 63, '186,13', '2201'),
(60, 64, '318,75', '2202'),
(61, 65, '32,25', '2203'),
(62, 66, '75,75', '2206'),
(63, 67, '29,25', '2203'),
(64, 68, '147,00', '2208'),
(65, 69, '147,00', '2208'),
(66, 70, '52,50', '2209'),
(67, 72, '270,75', '2209'),
(68, 72, '270,75', '2210'),
(69, 73, '270,75', '2210'),
(70, 74, '270,75', '2211'),
(71, 75, '116,25', '2213'),
(72, 76, '320,00', '2214'),
(73, 77, '50,25', '2217'),
(74, 78, '50,25', '2217'),
(75, 79, '52,50', '2220'),
(76, 80, '15,00', '2222'),
(77, 81, '13,50', '2223'),
(78, 82, '11,48', '2223'),
(79, 83, '112,50', '2225'),
(80, 84, '37,50', '2227'),
(81, 85, '53,63', '2228'),
(82, 86, '18,75', '2230'),
(83, 87, '18,75', '2230'),
(84, 88, '76,95', '2231'),
(85, 89, '53,70', '2231'),
(86, 90, '85,13', '2231'),
(87, 91, '39,00', '2232'),
(88, 92, '15,00', '2234'),
(89, 93, '45,00', '2234'),
(90, 94, '6,62', '2238'),
(91, 95, '55,50', '2241'),
(92, 96, '55,50', '2241'),
(93, 97, '151,50', '2246'),
(94, 98, '32,25', '2247'),
(95, 99, '27,00', '2248'),
(96, 100, '27,00', '2248'),
(97, 101, '320,00', '2250'),
(98, 102, '0,00', '2251'),
(99, 103, '302,94', '2251'),
(100, 104, '320,00', '2252'),
(101, 105, '60,60', '2255'),
(102, 106, '166,22', '2257'),
(103, 107, '22,50', '2260'),
(104, 108, '156,00', '2261'),
(105, 109, '187,50', '2265'),
(106, 110, '52,50', '2267'),
(107, 111, '26,63', '2268'),
(108, 112, '35,25', '2269'),
(109, 113, '35,25', '2269'),
(110, 114, '91,50', '2270'),
(111, 116, '48,75', '2271'),
(112, 117, '31,69', '2272'),
(113, 118, '31,69', '2272'),
(114, 119, '22,61', '2280'),
(115, 120, '7,70', '2280'),
(116, 121, '277,31', '2282'),
(117, 122, '142,50', '2285'),
(118, 123, '156,00', '2286');

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=127 ;

--
-- Contenu de la table `reg_remb_salarie`
--

INSERT INTO `reg_remb_salarie` (`idregrembsalarie`, `idrembsalarie`, `montant_reglement`, `num_chq`) VALUES
(41, 48, '185,40', '1861'),
(42, 49, '38,00', '2165'),
(43, 50, '150,00', '2167'),
(44, 51, '53,00', '0002173'),
(45, 52, '26,00', '2174'),
(46, 53, '24,00', '2176'),
(47, 54, '200,00', '2177'),
(48, 55, '117,50', '2179'),
(49, 56, '22,00', '2180'),
(50, 57, '18,25', '2181'),
(51, 58, '68,00', '2183'),
(52, 59, '166,25', '2184'),
(53, 60, '17,50', '2185'),
(54, 61, '25,00', '2189'),
(55, 62, '4,50', '1863'),
(56, 63, '51,10', '2190'),
(57, 64, '46,15', '2191'),
(58, 65, '42,00', '2194'),
(59, 66, '72,50', '2195'),
(60, 67, '150,60', '2197'),
(61, 68, '11,00', '2198'),
(62, 69, '105,00', '2200'),
(63, 70, '4,75', '1865'),
(64, 71, '43,90', '2203'),
(65, 72, '146,50', '2203'),
(66, 73, '100,50', '2205'),
(67, 74, '36,00', '2206'),
(68, 75, '27,90', '2201'),
(69, 76, '51,90', '2207'),
(70, 77, '35,00', '2209'),
(71, 78, '70,00', '2209'),
(72, 79, '17,05', '2212'),
(73, 80, '38,00', '2215'),
(74, 81, '36,50', '2216'),
(75, 82, '67,00', '2217'),
(76, 83, '40,75', '2218'),
(77, 84, '200,00', '2219'),
(78, 85, '40,75', '2219'),
(79, 86, '41,00', '2221'),
(80, 87, '36,50', '2222'),
(81, 88, '7,13', '22224'),
(82, 89, '47,50', '2226'),
(83, 90, '86,50', '2228'),
(84, 91, '33,95', '2229'),
(85, 92, '96,40', '2231'),
(86, 93, '16,25', '2232'),
(87, 94, '95,00', '2233'),
(88, 95, '199,50', '2235'),
(89, 96, '100,00', '2236'),
(90, 98, '7,00', '2237'),
(91, 99, '8,83', '2238'),
(92, 100, '14,50', '2239'),
(93, 101, '13,70', '2240'),
(94, 102, '37,00', '2241'),
(95, 103, '47,00', '2242'),
(96, 104, '45,00', '2243'),
(97, 105, '45,00', '2244'),
(98, 106, '40,00', '2245'),
(99, 107, '18,00', '2248'),
(100, 108, '99,50', '2249'),
(101, 109, '163,49', '2254'),
(102, 110, '156,10', '2253'),
(103, 111, '49,40', '2256'),
(104, 111, '49,40', '2256'),
(105, 112, '118,00', '2258'),
(106, 113, '48,00', '2259'),
(107, 114, '200,00', '2263'),
(108, 115, '61,50', '2264'),
(109, 116, '12,00', '2266'),
(110, 117, '72,25', '2269'),
(111, 118, '72,50', '2271'),
(112, 119, '125,00', '2273'),
(113, 120, '4,50', '2274'),
(114, 121, '8,83', '2238'),
(115, 122, '36,50', '2275'),
(116, 123, '25,00', '2276'),
(117, 124, '25,00', '2276'),
(118, 125, '25,00', '2276'),
(119, 126, '150,00', '2277'),
(120, 127, '40,00', '2278'),
(121, 128, '35,00', '2279'),
(122, 129, '199,50', '2281'),
(123, 130, '81,00', '2283'),
(124, 131, '50,00', '2284'),
(125, 132, '53,50', '2285'),
(126, 133, '12,00', '2287');

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
  `etat_facture` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=124 ;

--
-- Contenu de la table `remb_ayant_droit`
--

INSERT INTO `remb_ayant_droit` (`idrembayantdroit`, `idayantdroit`, `prestation`, `date_vente`, `montant_prestation`, `part_ce`, `etat_facture`) VALUES
(40, 123, 'Minots de l''Om + Kempo', '08-01-2015', '125', '93.75', 1),
(41, 122, 'Les Minots de l''Om', '08-01-2015', '30', '22.5', 1),
(42, 60, 'Championnat du Monde Xtrial', '09-01-2015', '20', '15', 1),
(43, 106, 'leÃ§ons de natation', '14-01-2015', '61', '45.75', 1),
(44, 113, 'centre equestre', '19-01-2015', '168', '126', 1),
(45, 94, 'spectacle zenith', '19-01-2015', '52', '39', 1),
(46, 99, 'forfait danse classique', '19-01-2015', '360', '270', 1),
(47, 192, 'forfait ski', '21-01-2015', '36.50', '27.375', 1),
(48, 123, 'EntrÃ©e parc', '23-01-2015', '113.40', '85.05', 1),
(49, 155, 'DANSE HIP HOP', '25-01-2015', '101', '75.75', 1),
(50, 83, 'voyage scolaire', '26-01-2015', '178.50', '133.875', 1),
(51, 122, 'entrÃ©es parc', '09-02-2015', '120.40', '90.3', 1),
(52, 123, 'voyage scolaire', '09-02-2015', '110', '82.5', 1),
(53, 64, 'sortie ski', '11-02-2015', '43', '32.25', 1),
(54, 157, 'match de hand', '11-02-2015', '25', '18.75', 1),
(55, 86, 'CinÃ©ma (Invisible)', '12-02-2015', '9', '6.75', 1),
(56, 97, 'cinema', '15-02-2015', '5.50', '4.125', 1),
(57, 98, 'cinema', '15-02-2015', '5.50', '4.125', 1),
(58, 101, 'fitness', '16-02-2015', '210', '157.5', 1),
(59, 207, 'metamorphose', '18-02-2015', '70', '52.5', 1),
(60, 71, 'CENTRE EQUESTRE', '18-02-2015', '60', '45', 1),
(61, 206, 'CinÃ©ma + Bowling', '26-02-2015', '8', '6', 1),
(62, 209, 'CinÃ©ma + Bowling', '26-02-2015', '9', '6.75', 1),
(63, 83, 'forfait ski', '26-02-2015', '354.30', '186.125', 1),
(64, 175, 'stage hand', '26-02-2015', '425', '318.75', 1),
(65, 123, 'musÃ©e + marinland + petit train', '26-02-2015', '43', '32.25', 1),
(66, 165, 'spectacles + cinÃ©', '26-02-2015', '101', '75.75', 1),
(67, 122, 'MusÃ©e + Marinland + Petit Train', '26-02-2015', '39', '29.25', 1),
(69, 85, 'centre equestre', '09-03-2015', '196.00', '147', 1),
(70, 157, 'match de foot', '09-03-2015', '70.00', '52.5', 1),
(74, 68, 'EQUITATION', '11-03-2015', '361', '270.75', 1),
(75, 62, 'voyage scolaire + forfait ski', '15-03-2015', '155.00', '116.25', 1),
(76, 163, 'assistante maternelle', '18-03-2015', '703.08', '320', 1),
(77, 64, 'foot', '18-03-2015', '67.00', '50.25', 1),
(78, 63, 'foot', '18-03-2015', '67.00', '50.25', 1),
(79, 93, 'licence tennis', '18-03-2015', '70.00', '52.5', 1),
(80, 81, 'permis de peche', '19-03-2015', '20.00', '15', 1),
(81, 97, 'cinema', '19-03-2015', '18.00', '13.5', 1),
(82, 98, 'cinema', '19-03-2015', '15.30', '11.475', 1),
(83, 173, 'STAGE DE SKI', '19-03-2015', '150.00', '112.5', 1),
(84, 151, 'stage de foot', '19-03-2015', '50.00', '37.5', 1),
(85, 190, 'forfait ski', '19-03-2015', '71.50', '53.625', 1),
(86, 122, 'foot', '19-03-2015', '25.00', '18.75', 1),
(87, 123, 'foot', '19-03-2015', '25.00', '18.75', 1),
(88, 115, 'cinema + forfait ski', '19-03-2015', '102.60', '76.95', 1),
(89, 116, 'cinema + forfait ski', '19-03-2015', '71.60', '53.7', 1),
(90, 117, 'forfait ski + cinema', '19-03-2015', '113.50', '85.125', 1),
(91, 190, 'forfait ski', '19-03-2015', '52.00', '39', 1),
(92, 72, 'permis de peche', '28-03-2015', '20.00', '15', 1),
(93, 71, 'centre equestre', '28-03-2015', '60.00', '45', 1),
(94, 103, 'royal kids', '28-03-2015', '8.83', '6.6225', 1),
(95, 63, 'spectacle', '28-03-2015', '74.00', '55.5', 1),
(96, 64, 'spectacle', '28-03-2015', '74.00', '55.5', 1),
(97, 113, 'CENTRE EQUESTRE', '08-04-2015', '202.00', '151.5', 1),
(98, 64, 'SKI', '08-04-2015', '43.00', '32.25', 1),
(99, 141, 'SPECTACLE', '08-04-2015', '36.00', '27', 1),
(100, 142, 'SPECTACLE', '08-04-2015', '36.00', '27', 1),
(101, 79, 'CRECHE', '08-04-2015', '690.20', '320', 1),
(103, 179, 'CRECHE', '08-04-2015', '403.92', '302.94', 1),
(104, 77, 'PAJEMPLOI', '08-04-2015', '626.22', '320', 1),
(105, 62, 'forfait ski', '15-04-2015', '80.80', '60.6', 1),
(106, 190, 'voyage scolaire', '15-04-2015', '221.62', '166.215', 1),
(107, 207, 'LASER LESCAR', '15-04-2015', '30.00', '22.5', 1),
(108, 173, 'CENTRE EQUESTRE', '15-04-2015', '208.00', '156', 1),
(109, 56, 'voyage scolaire', '22-04-2015', '250.00', '187.5', 1),
(110, 62, 'zumba', '22-04-2015', '70.00', '52.5', 1),
(111, 165, 'abonnement cinema', '24-04-2015', '35.50', '26.625', 1),
(112, 187, 'musÃ©e + calicÃ©o', '27-04-2015', '47.00', '35.25', 1),
(113, 188, 'musÃ©e + caliceo', '27-04-2015', '47.00', '35.25', 1),
(114, 60, 'centre social', '27-04-2015', '122.00', '91.5', 1),
(116, 207, 'SPECTACLE', '27-04-2015', '65.00', '48.75', 1),
(117, 61, 'ski', '27-04-2015', '42.25', '31.6875', 1),
(118, 62, 'ski', '27-04-2015', '42.25', '31.6875', 1),
(119, 122, 'CENTRE DE LOISIRS ', '05-05-2015', '30.15', '22.6125', 1),
(120, 123, 'CENTRE DE LOISIRS', '05-05-2015', '30.15', '7.7', 1),
(121, 171, 'BASIC FIT', '05-05-2015', '369.75', '277.3125', 1),
(122, 136, 'GOLF', '06-05-2015', '190.00', '142.5', 1),
(123, 85, 'centre equestre', '07-05-2015', '208.00', '156', 1);

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
  `etat_facture` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=134 ;

--
-- Contenu de la table `remb_salarie`
--

INSERT INTO `remb_salarie` (`idrembsalarie`, `idsalarie`, `prestation`, `date_vente`, `montant_prestation`, `part_ce`, `etat_facture`) VALUES
(48, 201, 'Abonnement annuel Basic-Fit', '07-01-2015', '370.80', '185.4', 1),
(49, 66, 'Championnat Mondial Xtrial', '09-01-2015', '76', '38', 1),
(50, 210, 'spectacle', '14-01-2015', '300', '150', 1),
(51, 128, 'SKI', '17-01-2015', '106', '53', 1),
(52, 144, 'cyclotourisme', '19-01-2015', '52', '26', 1),
(53, 116, 'spectacle zenith', '19-01-2015', '48', '24', 1),
(54, 173, 'platinium', '19-01-2015', '448', '200', 1),
(55, 160, 'abonnement piscine', '19-01-2015', '235', '117.5', 1),
(56, 69, 'spectacle', '21-01-2015', '44', '22', 1),
(57, 238, 'forfait ski', '21-01-2015', '36.50', '18.25', 1),
(58, 222, 'spectacle', '25-01-2015', '136', '68', 1),
(59, 79, 'METAMORPHOSE', '25-01-2015', '332.50', '166.25', 1),
(60, 171, 'BOWLING', '25-01-2015', '35', '17.5', 1),
(61, 178, 'match de hand', '11-02-2015', '50', '25', 1),
(62, 106, 'CinÃ© (Invisible)', '12-02-2015', '9', '4.5', 1),
(63, 95, 'license cyclo', '13-02-2015', '102.20', '51.1', 1),
(64, 119, 'carte de peche + cinema', '15-02-2015', '92.30', '46.15', 1),
(65, 171, 'BOWLING', '17-02-2015', '84', '42', 1),
(66, 203, 'carte de peche', '18-02-2015', '145', '72.5', 1),
(67, 109, 'FORFAIT SKI', '18-02-2015', '301.20', '150.6', 1),
(68, 138, 'Thermes de SALIES', '18-02-2015', '22', '11', 1),
(69, 238, 'fitness', '25-02-2015', '210', '105', 1),
(70, 251, 'CinÃ©ma + Bowling', '26-02-2015', '9.50', '4.75', 1),
(71, 139, 'musÃ©e + marinland', '26-02-2015', '87.80', '43.9', 1),
(72, 150, 'license plongÃ©e', '26-02-2015', '293', '146.5', 1),
(73, 70, 'fitness', '26-02-2015', '201', '100.5', 1),
(74, 194, 'spectacle', '26-02-2015', '72', '36', 1),
(75, 100, 'Forfait Ski', '26-02-2015', '55.80', '27.9', 1),
(76, 171, 'forfait ski', '27-02-2015', '103.80', '51.9', 1),
(78, 178, 'match de foot', '09-03-2015', '140.00', '70', 1),
(79, 171, 'PISCINE', '11-03-2015', '34.1', '17.05', 1),
(80, 111, 'spectacle', '18-03-2015', '76.00', '38', 1),
(81, 87, 'permis de peche', '18-03-2015', '73.00', '36.5', 1),
(82, 69, 'foot', '18-03-2015', '134.00', '67', 1),
(83, 184, 'foot', '18-03-2015', '81.50', '40.75', 1),
(85, 183, 'foot', '18-03-2015', '81.50', '40.75', 1),
(86, 133, 'ski', '18-03-2015', '82.00', '41', 1),
(87, 98, 'permis de peche', '19-03-2015', '73', '36.5', 1),
(88, 138, 'thermes de SALIES', '19-03-2015', '14.25', '7.125', 1),
(89, 85, 'permis de peche', '19-03-2015', '95.00', '47.5', 1),
(90, 230, 'ski + thalasso', '19-03-2015', '173.00', '86.5', 1),
(91, 248, 'cinÃ©ma cgr', '19-03-2015', '67.90', '33.95', 1),
(92, 137, 'forfait ski + cinema + aquarium', '19-03-2015', '192.80', '96.4', 1),
(93, 230, 'forfait ski', '19-03-2015', '32.50', '16.25', 1),
(94, 159, 'ecole de tennis', '19-03-2015', '190.00', '95', 1),
(95, 145, 'metamorphose', '28-03-2015', '399.00', '199.5', 1),
(96, 242, 'licence  plongÃ©e', '28-03-2015', '200.00', '100', 1),
(98, 138, 'cinÃ©ma', '28-03-2015', '14.00', '7', 1),
(100, 56, 'musÃ©e de la mer', '28-03-2015', '29.00', '14.5', 1),
(101, 129, 'cinÃ©ma', '28-03-2015', '27.40', '13.7', 1),
(102, 69, 'spectacle', '28-03-2015', '74', '37', 1),
(103, 210, 'spectacle', '28-03-2015', '94.00', '47', 1),
(105, 230, 'spectacle', '28-03-2015', '90.00', '45', 1),
(106, 261, 'TOP 14', '08-04-2015', '80.00', '40', 1),
(107, 155, 'SPECTACLE', '08-04-2015', '36.00', '18', 1),
(108, 70, 'FITNESS', '08-04-2015', '210.00', '99.5', 1),
(109, 212, 'DISNEYLAND', '08-04-2015', '326.98', '163.49', 1),
(110, 139, 'CORRIDAS', '08-04-2015', '2604.00', '156.1', 1),
(111, 109, 'licence moto', '15-04-2015', '190.00', '49.4', 1),
(112, 113, 'FORFAIT SKI', '15-04-2015', '236.00', '118', 1),
(113, 186, 'ECOLE DE DANSE', '15-04-2015', '96.00', '48', 1),
(114, 103, 'fitness', '16-04-2015', '480.00', '200', 1),
(115, 202, 'permis de peche', '16-04-2015', '123.00', '61.5', 1),
(116, 95, 'rugby', '22-04-2015', '24.00', '12', 1),
(117, 220, 'licence + musÃ©e', '27-04-2015', '144.50', '72.25', 1),
(118, 252, 'SPECTACLE + METAMORPHOSE', '27-04-2015', '145.00', '72.5', 1),
(119, 177, 'cabane robinson', '29-04-2015', '250.00', '125', 1),
(120, 78, 'cinema', '29-04-2015', '9.00', '4.5', 1),
(121, 122, 'royal kids', '28-03-2015', '17.66', '8.83', 1),
(122, 75, 'permis de peche', '30-04-2015', '73.00', '36.5', 1),
(123, 123, 'SPECTACLE', '30-04-2015', '50.00', '25', 1),
(125, 124, 'SPECTACLE', '30-04-2015', '50.00', '25', 1),
(126, 90, 'SPECTACLE', '05-05-2015', '300.00', '150', 1),
(127, 157, 'licence', '05-05-2015', '80.00', '40', 1),
(128, 158, 'BAINS DE SECOURS', '05-05-2015', '70.00', '35', 1),
(129, 182, 'METAMORPHOSE', '05-05-2015', '399.00', '199.5', 1),
(130, 61, 'GRAND PRIX MOTO', '05-05-2015', '162.00', '81', 1),
(131, 136, 'CENTRE Ã‰QUESTRE ABIDOS', '05-05-2015', '100.00', '50', 1),
(132, 150, 'GOLF', '06-05-2015', '1190.00', '53.5', 1),
(133, 95, 'RUGBY', '11-05-2015', '24.00', '12', 1);

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
  `etat_salarie` int(1) NOT NULL,
  `solde_salarie` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=262 ;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`, `solde_salarie`) VALUES
(56, '00010000', 1, 'ABADO', 'NICOLAS', '2, Route de Lacq', '', '64370', 'ARTHEZ DE BEARN', '05 59 38 47 75', '', '', '05/05/1985', '', '', '', 'Automaticien', '255 A', '', 'CDI', 1, '185.5'),
(57, '00010002', 1, 'ABAJI', 'MOHAMMED', '7, All?e Vau Dyek', '', '64150', 'MOURENX', '', '06 44 27 33 69', 'mohammed.abaji@rexam.com', '25/03/1981', '', '', '', 'Planning', '270 A', '', 'CDI', 1, '200'),
(58, '00010224', 1, 'ADENIS', 'BERTRAND', '4, rue du Mar&eacute;chal Leclerc', '', '64150', 'MOURENX', '', '06 70 15 61 00', '', '17/11/1983', '', '', '', 'Automaticien', '215 B', '', 'CDI', 1, '200'),
(59, '00010003', 1, 'AIMAR', 'REMY', '9, rue Frida', '', '64150', 'MOURENX', '', '06 86 90 09 87', '', '02/01/1987', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(60, '00010004', 3, 'AKHSASSI', 'FATIMA', '4, rue Voltaire', '', '64230', 'LESCAR', '05 59 81 26 34', '', 'fatima.akhassi@rexam.com', '27/01/1965', '', '', '', 'Comptabilit?', 'Cadre', '', 'CDI', 1, '200'),
(61, '00010005', 1, 'ALBANEL', 'HERVE', 'C R n?5', 'Cami de Pipaoutou', '64230', 'MOMAS', '05 59 33 87 48', '', '', '27/01/1969', '', '', '', 'rÃ©gleur', '215  E', '', 'CDI', 1, '119'),
(62, '00010200', 2, 'ALCANTARA', 'BEATRICE', '2, Lot Communal', 'Lannem?nia', '64190', ' CASTETBON', '', '06 77 08 06 14', 'beatrice.alcantara@rexam.com', '30/10/1964', '', '', '', 'Personnel', '255 C', '', 'CDI', 1, '200'),
(63, '00010006', 1, 'ALCETEGARAY ', 'DANIEL', 'Bourg', '', '64190', 'ANGOUS', '05 59 66 03 91', '', '', '21/02/1966', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(64, '00010007', 1, 'ALLAMAN ', 'NICOLAS', '43, rue des PyrÃ©nÃ©es', '', '64190', 'GURS', '', '06 30 08 55 58', '', '06/04/1984', '', '', '', 'MÃ©canicien', '240 A', '', 'CDI', 1, '100'),
(65, '00010008', 1, 'ALVES ', 'PAUL', '158 Route du Bourg', '', '40700', 'MOMUY', '', '06 88 64 25 63', '', '05/08/1966', '', '', '', 'controleur', '215 A', '', 'CDI', 1, '200'),
(66, '00010009', 1, 'AMIS ', 'CHRISTIAN', '7 place du Gabizos', '', '64150', 'MOURENX', '', '06 74 55 60 76', '', '10/04/1974', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '162'),
(67, '00010010', 1, 'ARANGOIS ', 'FRANCOIS', 'chemin de Cartouigt', '', '64270', 'SALIES DE BEARN', '05 59 38 32 07', '', 'francois.arangois@rexam.com', '27/07/1955', '', '', '', 'Automaticien', '305 C', '', 'CDI', 1, '200'),
(68, '00010011', 1, 'ARRICAU', 'ANDRE', 'quartier Augas', '', '64190', 'PRECHACQ-JOSBAIG', '05 59 88 03 68', '', 'pierette.arricau@orange.fr', '06/04/1967', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '100'),
(69, '00010013', 1, 'BALLESTEROS ', 'DIDIER', 'chemin de Bouhaben', 'Quartier Loupien', '64360', 'MONEIN', '05 59 21 43 88', '', '', '26/02/1964', '', '', '', 'Controleur', '190 F', '', 'CDI', 1, '74'),
(70, '00010014', 1, 'BAR ', 'GAETAN', '', '', '64300', 'SAULT DE NAVAILLES', '', '06 75 68 96 05', '', '29/01/1983', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '0'),
(71, '00010015', 1, 'BATBEDAT ', 'LAURENT', 'Chemin de LARTE', 'Quartier Castetarbe', '64300', 'ORTHEZ', '05 59 61 74 09', '', '', '24/08/1973', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(72, '00010016', 1, 'BAYONA', 'GILLES', 'Avenue BRIAND', '', '64260', 'LOUVIE-JUZON', '05 59 05 85 82', '', '', '20/05/1962', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '200'),
(73, '00010017', 1, 'BAZIARD', 'DIDIER', '963 Chemin Matachot', '', '64300', 'ORTHEZ', '05 59 69 28 13', '', '', '10/02/1958', '', '', '', 'Controleur', '215 D', '', 'CDI', 1, '200'),
(74, '00010231', 1, 'BENITO', 'KEVIN', '3, rue du Pic du Midi d''Ossau', '', '64150', 'MOURENX', '', '06 52 68 91 23', '', '03/11/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(75, '00010018', 1, 'BENZIN', 'REGIS', '5, Route d''Hagetaubin', 'Quartier N''Haux', '64370', 'ARTHEZ DE BEARN', '05 59 67 49 65', '', '', '01/12/1968', '', '', '', 'Outilleur', '215 G', '', 'CDI', 1, '163.5'),
(76, '00010019', 1, 'BERGEZ', 'ANDRE', '860, route de Sauveterre', '', '64300', 'LANNEPLAA', '05 59 67 03 51', '', '', '07/02/1956', '', '', '', 'Outilleur', '240 D', '', 'CDI', 1, '100'),
(77, '00010021', 1, 'BERGEZ', 'CEDRIC', '850, route de Sauveterre', '', '64300', 'LANNEPLAA', '', '06 78 67 34 30', '', '06/03/1982', '', '', '', 'opÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(78, '00010020', 1, 'BERGEZ', 'JEAN', 'Quartier COOS', '', '64360', 'MONEIN', '', '06 82 53 67 95', '', '20/02/1953', '', '', '', 'HSE', '305 F', '', 'CDI', 1, '195.5'),
(79, '00010215', 1, 'BERTELOOT', 'KEVIN', '174, all?es des c?dres', 'Appt 4 B?t. A', '64150', 'MOURENX', '05 59 04 06 51', '', '', '10/09/1991', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '33.75'),
(80, '00010022', 1, 'BIDART', 'CHARLOTTE', '5, rue Bernard Coqu?', '', '64150', 'MOURENX', '', '06 29 02 26 64', '', '24/06/1988', '', '', '', 'controleur', '190 A', '', 'CDI', 1, '200'),
(81, '00010217', 1, 'BIDART', 'MARCEL', 'Quartier Camous', '', '64190', 'PRECHACQ-JOSBAIG', '', '06 30 81 43 46', 'marcel.bidart@neuf.fr', '25/01/1969', '', '', '', 'Op?rateur', '215 B', '', 'CDI', 1, '100'),
(82, '00010238', 1, 'BIDART', 'MICKAEL', '7 RUE DE L ESCOU', '', '64400', 'GOES', '', '06 09-36-17-61', 'mickael.bidart@live.fr', '27/09/1991', '', '', '', 'OpÃ©rateur', '190 c', '', 'CDI', 1, '100'),
(83, '00010023', 1, 'BLEIN', 'VINCENT', '304, Route de PAU', 'Quartier Soarns', '64300', 'ORTHEZ', '05 59 69 44 41', '', '', '22/03/1974', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(84, '00010024', 1, 'BLOEMZAAD ', 'DANIEL', '16, rue des Edelweiss', '', '64360', 'MONEIN', '', '06 86 38 27 65', '', '20/05/1960', '', '', '', 'OpÃ©rateur', '215 F', '', 'CDI', 1, '200'),
(85, '00010233', 1, 'BONNINGUE ', 'VINCENT', '15, Route du Foirail', '', '64370', 'ARTHEZ DE BEARN', '', '06 37 87 05 25', '', '27/12/1979', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '152.5'),
(86, '00010025', 1, 'BORDATTO', 'SERGE', 'Quartier Augas et Lanot', '', '64190', 'PRECHACQ-JOSBAIG', '09 67 00 54 05', '', '', '20/09/1968', '', '', '', 'RÃ©gleur', '215 G', '', 'CDI', 1, '100'),
(87, '00010026', 1, 'BORDENAVE', 'MAX', '23, rue du Vieux Mont', '', '64300', 'MONT', '', '06 29 02 93 25', '', '21/02/1977', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '163.5'),
(88, '00010027', 1, 'BORDENEUVE', 'PATRICK', '24, Chemin du bois', '', '64400', 'SAINT-GOIN', '05 59 88 02 18', '', 'patrick.bordeneuve@wanadoo.fr', '21/07/1961', '', '', '', 'OpÃ©rateur', '215 E', '', 'CDI', 1, '100'),
(89, '00010198', 1, 'BOUCHET', 'GERARD', '21 bis, Les Epineraises ', '', '28250', 'LE MESNIL THOMAS', '', '06 79 47 01 85', 'gerard.bouchet@rexam.com', '04/11/1956', '', '', '', 'CTS', 'Cadre', '', 'CDI', 1, '200'),
(90, '00010028', 1, 'BOUDERLIQUE', 'DIDIER', 'Route d''UCHA', '', '64360', 'MONEIN', '05 59 21 44 52', '', '', '17/01/1959', '', '', '', 'Gestionnaire', '225 B', '', 'CDI', 1, '50'),
(91, '00010029', 1, 'BOURG', 'CHRISTOPHE', '13, cap de Lalanne', '', '64170', 'ARTIX', '', '06 66 16 08 52', '', '29/07/1971', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(93, '00010031', 1, 'BRACH', 'JULIEN', '12, chemin Peyrot', '', '64150', 'VIELLESEGURE', '', '06 25 48 08 03', '', '24/03/1984', '', '', '', 'OpÃ©rateur', '190 B', '', 'CDI', 1, '200'),
(94, '00010032', 1, 'BREGNIAS', 'MARC', 'Quartier Augas', '', '64190', 'PRECHACQ-JOSBAIG', '05 59 88 03 87', '', '', '03/06/1961', '', '', '', 'Outilleur', '255 D', '', 'CDI', 1, '200'),
(95, '00010036', 1, 'BRUN', 'GILLES', '2, all&eacute;e du Hameau', '', '64320', 'BIZANOS', '05 59 27 51 44', '', '', '21/03/1959', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '124.9'),
(96, '00010035', 1, 'BRUN', ' JEAN DENIS', 'Domaine du Sarrot - 18, Av Rauski', '', '64110', 'JURANCON', '05 59 27 88 01', '', 'jean-denis.brun@rexam.com', '12-02-2012', '', '', '', 'Directeur', 'Cadre', '', 'CDI', 1, '200'),
(97, '00010037', 1, 'BRUNE', 'MICHEL', '1, rue de la Carr?re', '', '64300', 'MASLACQ', '', '06 51 43 22 70', 'michel.brune@rexam.com', '23/09/1966', '', '', '', 'Chef de Poste', '305  E', '', 'CDI', 1, '200'),
(98, '00010038', 1, 'CABANE-CHRESTIA', 'CHRISTOPHE', 'Rue d''Aspe prolon&eacute;?e', 'Maison Stafania', '64400', 'OLORON SAINTE MARIE', '05 59 39 56 48', '', '', '28/10/1973', '', '', '', 'OpÃ©rateur', '215 C', '', 'CDI', 1, '163.5'),
(99, '00010239', 1, 'CABANNE ', 'JOSETTE', '324, chemin Pedelahore', '', '64170', 'ARTIX', '', '06 83 74 58 32', '', '14/04/1964', '', '', '', 'Controleur', '190  B', '', 'CDI', 1, '200'),
(100, '00010039', 1, 'CALVO ', 'MICHEL', '5, rue Marc Antoine de No&eacute;', '', '64230', 'LESCAR', '05 59 62 97 26', '', '', '18/02/1961', '', '', '', 'RÃ©gleur', '215 D', '', 'CDI', 1, '172.1'),
(101, '00010040', 1, 'CAMBOT', 'FRANCIS', 'Quartier Ucha', '', '64360', 'MONEIN', '05 59 21 34 41', '', '', '10/09/1967', '', '', '', 'rÃ©gleur', '215 E', '', 'CDI', 1, '200'),
(102, '00010041', 1, 'CAMPAGNE', 'FRANCK', '229, chemin de LARROUY', '', '64300', 'LAA-MONDRANS', '', '06 22 10 84 46', '', '02/05/1971', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(103, '00010221', 1, 'CARDON', 'SEBASTIEN', 'Maison Plaie du Golf - Villa 1', '5, Impasse de la Plaine', '64140', 'BILLERE', '', '06 09 36 17 61', '', '18/11/1991', '', '', '', 'Stagiaire', '170 A', '', 'Stagiaire', 1, '0'),
(104, '00010248', 1, 'CHARDIN', 'SEBASTIEN', '10, rue de l''Embard?re', '', '64300', 'LENDRESSE', '', '06 18 74 51 02', '', '13/09/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(105, '00010039', 1, 'CARRASQUET', 'ANDRE', '29, place de la fontaine', '', '64150', 'VIELLESEGURE', '05 59 60 45 60', '', '', '07/12/1957', '', '', '', 'Outilleur', '255 B', '', 'CDI', 1, '200'),
(106, '00010197', 1, 'CASAIL', 'CHRISTOPHE', ' 2, Rue Claude Monet', '', '59229', 'TETEGHEN', '', '06 80 89 16 22', 'christophe.casail@rexam.com', '27/01/1965', '', '', '', 'CTS', 'Cadre', '', 'CDI', 1, '195.5'),
(107, '00010043', 1, 'CASAMAJOU', 'BERNARD', '26, rue St-Bart&eacute;l&eacute;my', 'BIXKAIAN                        ', '64130', 'CHERAUTE', '', '06 16 83 27 44', 'jean-bernard.casamajou@rexam.com', '10/09/1973', '', '', '', ' responsable automatisme', '305 F', '', 'CDI', 1, '200'),
(108, '00010040', 1, 'CASANOVA', 'FRANCK', '24, chemin des Meuniers', '1 Lotissement Denot', '64360', 'MONEIN', '', '06 80 11 94 60', '', '17/08/1982', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(109, '00010041', 1, 'CASSOU', 'OLIVIER', '573, chemin Lartigau', '', '64170', 'CESCAU', '05 59 53 90 34', '', '', '18/07/1970', '', '', '', 'Outilleur', '255 E', '', 'CDI', 1, '0'),
(110, '00010203', 3, 'CAZALERE', 'CHRISTELLE', '9, rue Bagn?res', '', '64360', 'ABOS', '', '06 70 04 93 28', 'christelle.cazalere@rexam.com', '09/03/1976', '', '', '', 'Personnel', '255 B', '', 'CDI', 1, '200'),
(111, '00010047', 1, 'CAZANAVE-HOURQUET', 'FERNAND', 'Quartier Lamarquette', '', '64360', 'LUCQ DE BEARN', '05 59 71 69 66', '', '', '03/03/1964', '', '', '', 'OpÃ©rateur', '190 B', '', 'CDI', 1, '162'),
(112, '00010048', 1, 'CHAUSSADAS ', 'ALAIN', '2334, Route de Noarrieu', '', '64300', 'CASTETIS', '05 59 67 12 84', '', '', '20/06/1963', '', '', '', 'Controleur', '190 E', '', 'CDI', 1, '200'),
(113, '00010049', 1, 'CHAUSSADAS ', 'JEAN YVES', '1760, Route de Boneh?', '', '64370', 'MESPLEDE', '05 59 67 54 10', '', '', '06/12/1960', '', '', '', 'Contr?leur', '215 D', '', 'CDI', 1, '82'),
(114, '00010050', 1, 'CIOSSE ', 'BRUNO', '9, rue des lannes', '', '64150', 'MOURENX', '', '06 85 91 81 47', 'bruno.ciosse@sfr.fr', '12/12/1970', '', '', '', 'RÃ©gleur', '215 D', '', 'CDI', 1, '200'),
(115, '00010052', 1, 'CLAVE ', 'PAUL', 'Quartier Haut Candeloup', '', '64360', 'MONEIN', '', '06 81 09 65 09', 'jeanpaul.clave@gmail.com', '27/11/1957', '', '', '', 'RÃ©gleur', '215 G', '', 'CDI', 1, '200'),
(116, '00010053', 1, 'CLAVERIE', 'THIERRY', '27, Chemin de Bertrand', '', '64150', 'NOGUERES', '05 59 71 71 30', '', '', '11/09/1972', '', '', '', 'OpÃ©rateur', '215 E', '', 'CDI', 1, '76'),
(117, '00010054', 1, 'CORNOUILLER', 'JULIEN', 'LES JARDINS DU LUZOUE  36 RUE DU LUZOUE PORTE 201', '', '64150', 'MOURENX', '', '06 79 62 76 09', '', '12/04/1986', '', '', '', 'MÃ©canicien', '240 B', '', 'CDI', 1, '200'),
(118, '00010055', 1, 'CORREIA', 'CHRISTOPHE', '19, rue de l''Ecole', '', '64300', 'MONT', '05 59 69 26 77', '', '', '14/09/1971', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(119, '00010057', 1, 'CUISINIER', 'BORIS', 'Route de LonÃ§on', '', '64450', 'BOURNOS', '05 59 33 82 25', '', '', '27/10/1973', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '153.85'),
(120, '00010058', 1, 'DA FONSECA', 'JOSE', 'Camin de la Crotz de Lopin', '', '64150', 'SAUVELADE', '', '06 15 15 40 71', '', '11/11/1975', '', '', '', 'Automaticien', '215 B', '', 'CDI', 1, '100'),
(121, '00010059', 1, 'DA SILVA', 'JOSE', 'chemin de l''Ecole', '', '64150', 'SAUVELADE', '05 59 67 68 32', '', '', '15/08/1973', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(122, '00010060', 1, 'DANTEIN', 'YANNICK', '4, rue Jean Jaures', '', '64800', 'COARRAZE', '', '06 37 88 95 99', '', '16/10/1981', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '191.17'),
(123, '00010229', 1, 'DARRACQ', 'ADRIEN', '570, chemin d?partemental 31', '', '64300', 'LABEYRIE', '05 59 67 58 96', '', '', '18/08/1997', '', '', '', 'Stagiaire', '170 A', '', 'CDI', 1, '175'),
(124, '00010061', 1, 'DARRACQ', 'CHRISTOPHE', '570, chemin d&eacute;partemental 31', '', '64300', 'LABEYRIE', '05 59 67 58 96', '', 'christophe.darracq@rexam.com', '17/10/1970', '', '', '', 'Resp. Outil', '305 E', '', 'CDI', 1, '175'),
(125, '00010062', 1, 'DARRACQ', 'FREDERIC', '34, chemin de Talabot', '', '40700', 'BEYRIES', '', '06 85 88 15 59', '', '16/08/1972', '', '', '', 'Automaticien', '255 E', '', 'CDI', 1, '200'),
(126, '00010064', 1, 'DARIGUELONGUE', 'CHRISTOPHE', '23, chemin Hia de pere', '', '64300', 'BIRON', '05 59 69 93 77', '', '', '17/05/1979', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(127, '00010206', 1, 'DATHY', 'FRANCK', '8, avenue Marguerite de Navarre', '', '64230', 'LESCAR', '05 59 77 47 20', '', 'franck.dathy@rexam.com', '07/04/1977', '', '', '', 'Resp. Qual', 'Cadre', '', 'CDI', 1, '200'),
(128, '00010065', 1, 'DAUBA ', 'BAPTISTE', '35, Chemin du Bosc', '', '64370', 'ARTHEZ DE BEARN', '', '06 77 47 24 00', 'baptiste.dauba@hotmail.fr', '02/02/1986', '', '', '', 'Automaticien', '255 A', '', 'CDI', 1, '147'),
(129, '00010066', 1, 'DAUBAS', 'MICHEL', 'Chemine Hourquebie', '', '64300', 'SARPOURENX', '05 47 06 07 48', '', '', '07/01/1972', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '186.3'),
(130, '00010067', 1, 'DE MIGUEL', 'FELIX', 'Lotissement Latch?re', '', '64130', 'GARENDEIN', '05 59 28 21 94', '', '', '12/12/1955', '', '', '', 'Outilleur', '255 C', '', 'CDI', 1, '100'),
(131, '00010068', 1, 'DE MIJOLLA ', 'HUBERT', '2776, Coteaux de Guindalos', '', '64110', 'JURANCON', '05 59 68 71 86', '', 'hubert.demijolla@rexam.com', '18/08/1956', '', '', '', 'Chef Projet', 'Cadre', '', 'CDI', 1, '200'),
(132, '00010069', 1, 'DECROUE ', 'DIDIER', '2, Cami Bieilh', '', '64170', 'LABASTIDE-CEZERACQ', '05 59 04 15 21', '', 'didier.decroue@rexam.com', '12/11/1968', '', '', '', 'Informaticien', 'Cadre', '', 'CDI', 1, '100'),
(133, '00010070', 1, 'DEL PIANTA ', 'ALEXANDRE', '12, rue du Castera', '', '64150', 'MOURENX', '05 59 71 69 74', '', '', '08/09/1962', '', '', '', 'Outilleur', '255 A', '', 'CDI', 1, '159'),
(134, '00010218', 1, 'DEPUYT ', 'BENOIT', '77, chemin de la Lande', '', '40290', 'MISSON', '', '06 43 30 50 51', 'benoit.depuyt@rexam.com', '14/07/1976', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(135, '00010075', 1, 'DUPLAA ', 'PATRICK', 'Maison Labie', '', '64270', 'RAMOUS', '05 59 65 12 09', '', '', '10/08/1957', '', '', '', 'MÃ©canicien', '240 A', '', 'CDI', 1, '200'),
(136, '00010072', 1, 'DOLLE ', 'LAURENT', '80, Cemin de Treyti', '', '64370', 'HAGETAUBIN', '05 59 67 52 27', '', '', '21/10/1975', '', '', '', 'OpÃ©rateur', '190 E', '', 'CDI', 1, '150'),
(137, '00010073', 1, 'DRIVON ', 'HAROLD', '714, chemin Eslayas', '', '64300', 'CASTETIS', '', '06 03 87 83 72', 'harold.drivon@rexam.com', '01/01/1971', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '103.6'),
(138, '00010074', 1, 'DULAU ', 'EMMANUEL', '238, chemin d''Arrignan', '', '64300', 'SAINT GIRONS EN BEARN', '05 59 67 94 60', '', '', '12/12/1969', '', '', '', 'OpÃ©rateur', '190 A', '', 'CDI', 1, '174.875'),
(139, '00010077', 2, 'LAGRAULA-DUROU', 'SOPHIE', '50, route de Mimbaste', '', '40180', 'SAUGNACQ ET CAMBRAN', '', '06 86 96 49 60', 'sophie.lagraula@rexam.com', '11/06/1974', '', '', '', 'SecrÃ©taire', '270 A', '', 'CDI', 1, '0'),
(140, '00010078', 1, 'DUTILH', 'LILIAN', '10, rue du Luzoue', 'R&eacute;sidence le Luzoue', '64150', 'MOURENX', '05 59 60 14 11', '', '', '22/11/1968', '', '', '', 'rÃ©gleur', '215 F', '', 'CDI', 1, '200'),
(141, '00010079', 1, 'DUVIGNAU', 'PATRICE', '2, impasse des Marguerites', '', '64230', 'DENGUIN', '05 59 68 82 63', '', '', '15/08/1976', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(142, '00010080', 1, 'EL-KANDOUSSI', 'MOHAMED', '3, place du Gabizos', '', '64150', 'MOURENX', '', '06 50 72 20 80', '', '27/10/1965', '', '', '', 'MÃ©canicien', '240 B', '', 'CDI', 1, '200'),
(143, '00010082', 1, 'ESTEFFE', 'JEAN', '62, Chemin Poublan', '', '64300', 'ARGAGNON', '05 59 67 42 56', '', 'jean.esteffe@rexam.com', '13/07/1953', '', '', '', 'Achat', '270 D', '', 'CDI', 1, '200'),
(144, '00010083', 1, 'ETCHEVERRY', 'JACQUES', '3, rue de l''Aygue-Longue', '', '64121', 'SERRES-CASTET', '05 59 33 11 40', '', '', '21/03/1954', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '174'),
(145, '00010084', 1, 'EUSEBIO', 'MANUEL', '58, Chemin Poublan', '', '64300', 'ARGAGNON', '', '06 22 48 00 60', 'manuel.eusebio@rexam.com', '20/10/1968', '', '', '', 'Resp. MÃ©canique', '305 C', '', 'CDI', 1, '0.5'),
(146, '00010214', 1, 'FERTOUTI', 'MUSTAPHA', '32, rue du Luzoue', '', '64150', 'MOURENX', '', '06 20 41 91 81', 'mustapha.fertouti@rexam.com', '19/07/1969', '', '', '', 'Exp?ditions', '225 A', '', 'CDI', 1, '200'),
(147, '00010085', 1, 'FOLIN', 'MICKAEL', '4, route de Puyet', '', '64370', 'ARTHEZ DE BEARN', '', '07 86 16 09 90', '', '19/06/1986', '', '', '', 'OpÃ©rateur', '190 E', '', 'CDI', 1, '200'),
(148, '00010087', 1, 'FONSECA', 'PHILIPPE', '39, domaine de la Ch?nerie', '', '64170', 'ARTIX', '', '06 77 88 90 68', '', '03/09/1983', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(149, '00010088', 1, 'FOURNIER', 'DOMINIQUE', 'Quartier Pont du Joss', '', '64190', 'PRECHACQ-JOSBAIG', '', '06 83 09 23 30', 'dominique.fournier@rexam.com', '24/07/1963', '', '', '', 'Chef de Poste', '285 C', '', 'CDI', 1, '200'),
(150, '00010089', 1, 'FOURQUET', 'GILLES', 'Quartier des Yolettes', '', '64360', 'MONEIN', '05 59 21 41 26', '', 'gilles.fourquet@rexam.com', '01/05/1966', '', '', '', 'Resp. Prod', 'Cadre', '', 'CDI', 1, '0'),
(151, '00010090', 1, 'GALLARDO', 'FREDERIC', 'Route de Casteide-Candau', '', '64410', 'ARGET', '', '06 42 96 33 41', '', '14/11/1981', '', '', '', 'MÃ©canicien', '255 C', '', 'CDI', 1, '200'),
(152, '00010091', 1, 'GIACOMIN', 'LOUIS', '70, Chemin de Lahonce', '', '40360', 'POMAREZ', '05 58 89 88 03', '', '', '15/11/1959', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '200'),
(153, '00010092', 1, 'GONCALVES NEIVA ', 'FREDERIC', 'Chemin des Ecoles', '', '64150', 'SAUVELADE', '05 59 67 30 46', '', '', '13/03/1979', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '100'),
(154, '00010093', 1, 'GRACIET ', 'PATRICK', '298, route de Lucq de B?arn', '', '64150', 'LAHOURCADE', '', '06 72 33 04 54', 'patrick.graciet@rexam.com', '12/06/1958', '', '', '', 'ExpÃ©ditions', '225 G', '', 'CDI', 1, '100'),
(155, '00010094', 1, 'GUION ', 'JEAN MARC', '64, Cami de la Houn', '', '64300', 'SAULT DE NAVAILLES', '', '06 84 65 18 70', 'jeanmarcguion@yahoo.fr', '04/12/1971', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '182'),
(156, '00010247', 1, 'GUYON ', 'MATTHIEU', '12, Rue des Pyr&eacute;n&eacute;es', '', '64230', 'DENGUIN', '', '06 16 99 64 70', '', '17/11/1981', '', '', '', 'OpÃ©rateur', '190 A', '', 'CDI', 1, '100'),
(157, '00010096', 1, 'HOSTENDIE', 'PATRICK', '6, Place du Pic d''Anie', 'R?sidence Les Arres d''Anie', '64150', 'MOURENX', '', '06 14 58 02 36', '', '07/05/1965', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '160'),
(158, '00010097', 1, 'HOUIS', ' JEAN FRANCOIS', '34, Av Mar&eacute;chal Joffre', '', '64150', 'MOURENX', '', '06 72 68 15 88', 'jeff964@hotmail.fr', '13/09/1978', '', '', '', 'Automaticien', '255 A', '', 'CDI', 1, '165'),
(159, '00010098', 1, 'HOURDILLE', 'THERESE', '14, rue de Bitete', '', '64400', 'OLORON SAINTE MARIE', '', '06 74 33 97 62', 'therese.hourdille@rexam.com', '11/12/1966', '', '', '', 'Magasin', '255 B', '', 'CDI', 1, '105'),
(160, '00010100', 1, 'HYGEN', 'DOMINIQUE', 'Quartier Camou', '', '64150', 'MOURENX-BOURG', '', '06 81 72 91 63', '', '22/01/1959', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '82.5'),
(161, '00010101', 1, 'JACKOWSKI', 'LIONEL', '734, route d&eacute;partementale 945', '', '64300', 'LACADEE', '', '06 85 46 11 88', 'lionel.jackowski@rexam.com', '27/01/1972', '', '', '', 'Chef de Poste', '285 B', '', 'CDI', 1, '200'),
(162, '00010102', 1, 'JAUREGUIBERRY ', 'BRUNO', '1715, chemin du Cami Sali&eacute;', '', '64710', 'LABASTIDE MONREJEAU', '', '06 87 91 22 78', '', '30/10/1974', '', '', '', 'mÃ©canicien', '240 C', '', 'CDI', 1, '100'),
(163, '00010103', 1, 'JIMENEZ ', 'FREDERIC', '3, rue du vieux lavoir', '', '64150', 'MOURENX', '', '06 98 26 48 41', '', '07/04/1969', '', '', '', 'Gestionnaire', '215 D', '', 'CDI', 1, '200'),
(164, '00010234', 1, 'JOUANNES ', 'MAXIMILIEN', '42, rue Bergou?', '', '64370', 'ARTHEZ DE BEARN', '', '06 72 70 26 61', '', '25/07/1990', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(165, '00010219', 3, 'JUNGAS ', 'CELINE', 'Quartier Ucha, Chemin Tauzy', '', '64300', 'MONEIN', '', '06 24 56 89 99', 'celine.jungas@rexam.com', '07/01/1983', '', '', '', 'Resp. HSE', 'Cadre', '', 'CDI', 1, '200'),
(166, '00010230', 2, 'KOCIS', 'SARAH', '23, rue Bernadotte', '', '64000', 'PAU', '', '06 68 83 42 42', 'sarah.kocis@rexam.com', '30/12/1983', '', '', '', 'RH', 'Cadre', '', 'CDI', 1, '200'),
(167, '00010105', 1, 'LABAT', 'FREDERIC', 'Chemin de la Campagne', '', '64190', 'SUSMIOU', '', '06 73 70 25 25', '', '24/10/1970', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(168, '00010106', 1, 'LABOURDETTE', 'PIERRE', 'Quartier Lafontan', '', '64410', 'ARZACQ', '05 59 04 57 12', '', '', '17/06/1954', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(169, '00010107', 1, 'LACABARATS  ', 'BERTRAND', '5, impasse des Pyr&eacute;n&eacute;es', '', '64300', 'MASLACQ', '', '06 07 51 32 50', '', '02/10/1982', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(170, '00010108', 1, 'LACABARATS  ', 'GILBERT', 'Route de Puyoo', '', '64270', 'SALIES DE BEARN', '', '06 84 96 88 13', '', '01/03/1958', '', '', '', 'Controleur', '215 A', '', 'CDI', 1, '200'),
(171, '00010109', 1, 'LACARRIEU-HAURAT ', 'JEAN PIERRE', '3, rue Lagrange', '', '64150', 'MOURENX', '05 59 60 21 34', '', '', '16/03/1973', '', '', '', 'OpÃ©rateur', '215 C', '', 'CDI', 1, '71.55'),
(172, '00010111', 1, 'LACOSTE', 'REMY', 'Bourg', '', '64870', 'ESCOUT', '', '06 30 88 38 36', '', '27/08/1966', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(173, '00010114', 1, 'LADAURADE ', 'FABIEN', '54, avenue du Tonkin', '', '64140', 'LONS', '', '06 24 67 12 30', '', '04/11/1985', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '0'),
(174, '00010113', 1, 'LADAURADE ', 'THIERRY', '1, avenue des Nives', '', '64150', 'MOURENX', '', '06 06 45 86 39', '', '16/03/1958', '', '', '', 'Contr?leur', '215 E', '', 'CDI', 1, '200'),
(175, '00010116', 1, 'LAHORE-LAHITTE ', 'MARC', 'Quartier Larincq', '', '64360', 'MONEIN', '05 59 04 25 39', '', '', '03/06/1965', '', '', '', 'Outilleur', '255 B', '', 'CDI', 1, '200'),
(176, '00010117', 1, 'LAMOTHE ', 'BRUNO', 'Le R&eacute;gent', 'Au Bourg', '40700', 'MANT', '05 58 79 23 53', '', '', '07/01/1967', '', '', '', 'Gestionnaire', '225 C', '', 'CDI', 1, '200'),
(177, '00010118', 1, 'LAMOURE-LABADIE ', 'MICHEL', '99, chemin Poey', '', '64170', 'CESCAU', '', '06 18 92 87 44', '', '12/04/1967', '', '', '', 'Outilleur', '240 B', '', 'CDI', 1, '75'),
(178, '00010119', 1, 'LAMOURET', 'JOEL', '819, route d''Arthez de B?arn', '', '64300', 'CASTETIS', '05 59 67 83 67', '', '', '24/06/1966', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '105'),
(179, '00010120', 1, 'LANOUE', 'LAURENT', '16, rue de la Bielle', '', '64190', 'DOGNEN', '', '06 82 67 33 25', 'laurent.lanoue@rexam.com', '23/03/1972', '', '', '', 'Magasin', '215 C', '', 'CDI', 1, '100'),
(180, '00010122', 1, 'LASSOURREILLE', 'ALEXANDRE', '49, rue Lapeyrere', '', '64300', 'ORTHEZ', '', '06 72 92 46 13', '', '30/08/1980', '', '', '', 'Gestionnaire', '215 E', '', 'CDI', 1, '200'),
(181, '00010123', 1, 'LAVALLARD ', 'CHRISTOPHE', '4, rue du vieux lavoir', '', '64150', 'MOURENX', '05 59 71 63 04', '', '', '27/05/1962', '', '', '', 'RÃ©gleur', '215 F', '', 'CDI', 1, '200'),
(182, '00010125', 1, 'LEHMANN ', 'GERARD', '28, Cote du Mouscar', '', '64110', 'ST FAUST', '', '06 03 10 08 49', '', '25/05/1962', '', '', '', 'MÃ©canicien', '240 B', '', 'CDI', 1, '0.5'),
(183, '00010126', 1, 'LOPEZ  ', 'ISMAEL', '91, rue Honor&eacute; de Balzac', '', '64170', 'ARTIX', '', '06 18 32 29 10', '', '20/09/1979', '', '', '', 'Gestionnaire', '225 B', '', 'CDI', 1, '159.25'),
(184, '00010127', 1, 'LOPEZ  ', 'OLIVIER', '1, rue de Lannes', '', '64150', 'MOURENX', '', '06 73 03 54 24', '', '06/09/1986', '', '', '', 'Automaticien', '240 C', '', 'CDI', 1, '159.25'),
(185, '00010246', 1, 'LORILLOT', 'MARIO', '5, Avenue Pasteur', '', '64150', 'MOURENX', '', '06 78 28 88 71', '', '16/01/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(186, '00010129', 1, 'LUBEREILH', 'ROGER', '3, impasse des vignes', 'Lotissement le Prince', '64170', 'ARTIX', '05 59 71 54 46', '', '', '19/05/1957', '', '', '', 'Outilleur', '255 C', '', 'CDI', 1, '152'),
(187, '00010130', 1, 'LUPIAC', 'CLAUDE', '3 rue de la Carr?re', 'Quartier Os', '64150', 'OS MARSILLON', '05 59 60 29 28', '', 'lupiac.claude@neuf.fr', '24/12/1963', '', '', '', 'OpÃ©rateur', '215 E', '', 'CDI', 1, '200'),
(188, '00010131', 1, 'LUZIER', 'JOFFREY', '15, route de Bayonne', ' Appt. 64 R&eacute;s. Wellington', '64140', 'BILLERE', '', '06 60 77 97 96', '', '23/11/1975', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(189, '00010132', 1, 'MAIRAL', 'JULIEN', 'Chemin Deus Esquiots', '', '64360', 'PARBAYSE', '', '06 17 53 05 31', '', '13/02/1984', '', '', '', 'MÃ©canicien', '240 C', '', 'CDI', 1, '200'),
(190, '00010133', 1, 'MALABAT', 'MICHEL', '6, route de PAU', '', '64360', 'ABOS', '05 59 60 03 16', '', '', '04/11/1964', '', '', '', 'Controleur', '190 C', '', 'CDI', 1, '200'),
(191, '00010134', 1, 'MARATRAT', 'AMANDINE', '4, impasse St Pierre', '', '64360', 'MONT', '', '06 40 94 70 87', 'amandu64@live.fr', '22/08/1988', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(192, '00010135', 1, 'MARLADOT', 'OLIVIER', 'Quartier Galoubet', 'Vieille Route de Castetarbe', '64300', 'ORTHEZ', '05 59 67 16 11', '', '', '06/01/1971', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(193, '00010228', 1, 'MARTET', 'BRICE', '7, impasse Marc Chagall', '', '40000', 'MONT DE MARSAN', '', '06 99 47 68 73', '', '31/07/1995', '', '', '', 'Stagiaire', '170 A', '', 'Stagiaire', 1, '200'),
(194, '00010137', 1, 'MARTINEZ', 'ALAIN', '15, rue du muguet', '', '64150', 'PARDIES', '', '06 37 52 81 75', '', '02/01/1961', '', '', '', 'Outilleur', '255 C', '', 'CDI', 1, '164'),
(195, '00010138', 1, 'MARTINS DE LIMA', 'PAUL', 'Rue Ingres', 'Lotissement Lous Mesples n &deg;1', '64170', 'ARTIX', '05 59 83 20 45', '', '', '18/06/1981', '', '', '', 'Op2rateur', '215 B', '', 'CDI', 1, '200'),
(196, '00010232', 1, 'MARTINS DE LIMA', 'CHRISTOPHE', 'Rue Ingres', 'Lotissement Lous Mesples n?1', '64170', 'ARTIX', '', '06 40 22 46 07', '', '15/08/1990', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(197, '00010139', 1, 'MASSE ', 'JORIS', 'Place St Pierre', 'Appt. 2', '64300', 'MONT', '', '06 73 64 78 52', '', '22/10/1985', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(198, '00010140', 1, 'MASSEY', 'YAN', '10, chemin Mirassou', '', '64150', 'LAGOR', '', '06 61 29 28 86', 'yanmassey@hotmail.com', '07/10/1980', '', '', '', 'Outilleur', '240 B', '', 'CDI', 1, '200'),
(199, '00010141', 1, 'MAURY', 'PHILIPPE', '67, rue Moncade', '', '64300', 'ORTHEZ', '', '06 10 67 76 17', '', '25/07/1963', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(200, '00010240', 2, 'MAZURIER', 'SYLVIE', '20, avenue de Saragosse', '', '64000', 'PAU', '', '06 18 65 49 49', '', '26/05/1967', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '100'),
(201, '00010243', 3, 'MICHE', 'GAELLE', 'Chemin d''Abos', '', '64360', 'PARBAYSE', '', '06 26 02 30 22', 'gaelle.miche@rexam.com', '22/04/1989', '', '', '', 'Contrat Pro RH', '170 A', '', 'Contrat Pro', 1, '14.6'),
(202, '00010144', 1, 'MILAGE  ', 'ANDRE', '1 LOTISSEMENT LE LUSSET', '', '64190', 'NAVARRENX', '05 59 38 68 46', '07- 81-04-93-58', '', '24/08/1960', '', '', '', 'Cariste', '170 G', '', 'CDI', 1, '138.5'),
(203, '00010143', 1, 'MILAGE  ', 'CHRISTIAN', 'Residence du Parc', 'Batiment B -Porte n?8', '64300', 'ORTHEZ', '05 59 69 14 54', '', '', '21/04/1951', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '127.5'),
(204, '00010143', 1, 'MOLENAT', 'STEPHANE', '7, chemin de Nogu&egrave;res', '', '64150', 'MOURENX BOURG', '', '06 98 28 08 31', 'molenat.stephane@gmail.com', '11/10/1984', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(205, '00010144', 1, 'MORAL', 'JEREMIE', '142, chemin de Vergez', '', '64150', 'LAHOURCADE', '', '06 25 67 43 80', '', '26/03/1980', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(206, '00010148', 1, 'MOURCEL', 'THIERRY', '7, rue St Vincent de Paul', '', '64150', 'MOURENX', '', '06 70 06 94 99', '', '02/06/1969', '', '', '', 'MÃ©canicien', '240 B', '', 'CDI', 1, '200'),
(207, '00010150', 1, 'MOUSQUES DIT CABANOT ', 'FREDERIC', '9, rue Bagn?res', '', '64360', 'ABOS', '', '06 32 36 61 12', '', '21/12/1979', '', '', '', 'Automaticien', '255 B', '', 'CDI', 1, '200'),
(208, '00010149', 1, 'MOUSQUES DIT CABANOT ', 'STEPHANE', '9, rue des Lannes', '', '64150', 'MOURENX', '05 59 60 40 58', '', '', '26/02/1974', '', '', '', 'RÃ©gleur', '215 F', '', 'CDI', 1, '100'),
(209, '00010227', 3, 'MOUZAT', 'MORGANE', '44, rue de Nogaro', '', '64000', 'PAU', '', '06 66 40 27 96', 'morgane.mouzat@rexam.com', '02/09/1987', '', '', '', 'Comptabilit?', '170 A', '', 'Contrat Pro', 1, '200'),
(210, '00010151', 1, 'MUNOZ', 'ANTONIO', '17, rue des Mimosas', 'Bat G Appt. G01', '64230', 'LESCAR', '', ' 06 64 91 76 28', '', '18/12/1967', '', '', '', 'Controleur', '190 E', '', 'CDI', 1, '3'),
(211, '00010152', 1, 'NARDOZZI', 'JEREMY', 'Chemin des Cr&egrave;tes', '', '64150', 'VIELLESEGURE', '', '06 32 65 53 41', '', '22/03/1984', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(212, '00010245', 1, 'NAVAILLES ARGENTA', 'FLORIAN', '14, Chemin Moureu', '', '64150', 'MOURENX', '', '06 83 97 96 10', '', '01/03/1993', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '36.51'),
(213, '00010212', 3, 'NICOLAS', 'ANNE-CATHERINE', '883, rue de France', '', '64300', 'SAULT DE NAVAILLES', '', '06 70 11 43 62', '', '13/05/1978', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(214, '00010153', 1, 'NIMHAOULIN', 'BRAHIM', '11 Lot. Couleur Arc-en-ciel', '', '64230', 'ARBUS', '', '06 61 39 45 78', '', '15/12/1971', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '200'),
(215, '00010154', 1, 'NIMHAOULIN', 'OMAR', '2800, route d''Hagetaubin', '', '64370', 'ST MEDARD', '', '06 72 87 38 82', '', '15/03/1979', '', '', '', 'Controleur', '215 B', '', 'CDI', 1, '200'),
(216, '00010155', 1, 'NOUSTY', 'GILLES', '1, impasse Daniel Lafore', 'Appt. n&deg; 2', '64300', 'ORTHEZ', '05 59 21 35 51', '', '', '17/05/1986', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(217, '00010156', 1, 'NOUZILLE', 'ALAIN', 'Les Mimosas Cidex 5', '', '64230', 'ARTIGUELOUVE', '05 59 83 13 53', '', 'alain.nouzille@rexam.com', '24/11/1957', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(218, '00010158', 1, 'PAGES', 'CHRISTIAN', '11, Chemin d''Aman', '', '64370', 'ARTHEZ DE BEARN', '05 59 67 78 52', '', '', '15/10/1959', '', '', '', 'QpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(219, '00010159', 1, 'PALAS', 'JULIEN', '5, Av de la R&eacute;publique', '', '64140', 'BILLERE', '', '06 30 97 35 45', '', '11/01/1984', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(220, '00010160', 1, 'PASTOUREU', 'GILLES', '2, chemin Carere', '', '64150', 'VIELLESEGURE', '', '06 45 40 52 29', '', '04/01/1968', '', '', '', 'Controleur', '215 D', '', 'CDI', 1, '127.75'),
(221, '00010235', 1, 'PEQUIGNET', 'ALEXANDRE', '54, rue Saint-Pierre', '', '64300', 'ORTHEZ', '', '06 03 88 73 06', '', '18/05/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(222, '00010161', 1, 'PERALTA  ', 'GAETAN', '12, rue Charles de Gaulle', '', '64150', 'MOURENX', '05 59 60 40 02', '', '', '17/12/1955', '', '', '', 'Automaticien', '255 C', '', 'CDI', 1, '132'),
(223, '00010162', 1, 'PERALTA  ', 'JORDI', '11, rue de Las Bignes', '', '64300', 'MONT', '', '06 27 82 05 85', 'marsbord@hotmail.com', '13/02/1980', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(224, '00010165', 1, 'POUBLAN  ', 'ANDRE', '32, rue principale', '', '64360', 'TARSACQ', '05 59 60 06 34', '', '', '04/08/1973', '', '', '', 'Controleur', '215 F', '', 'CDI', 1, '200'),
(225, '00010166', 1, 'POUBLAN  ', 'ERIC', '32, rue principale', '', '64360', 'TARSACQ', '05 59 04 85 99', '', '', '08/07/1975', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(226, '00010167', 1, 'PUYOO', 'GILLES', '12 bis, rue Labarraque', 'RÃ©sidence Bellevue', '64400', 'OLORON SAINTE MARIE', '05 59 34 37 76', '06 45 79 88 02', 'gillespuyoo@orange.fr', '11/05/1971', '03-04-2008', '', '', 'Conducteur', '190 D', '', 'CDI', 1, '100'),
(227, '00010168', 1, 'RAJA', 'DANIEL', '28, rue du Cast?ra', '', '64150', 'MOURENX', '', '06 29 65 00 81', '', '02/09/1955', '', '', '', 'OpÃ©rateur', '215 E', '', 'CDI', 1, '200'),
(228, '00010169', 1, 'REBOUCO  ', 'JOSE', '2, rue du Pic d''Anie', '', '64150', 'MOURENX', '05 59 71 68 20', '', '', '27/04/1969', '', '', '', 'MÃ©canicien', '240 C', '', 'CDI', 1, '200'),
(229, '00010244', 1, 'REBOUCO  ', 'LOIC', '2, rue du Pic d''Anie', '', '64150', 'MOURENX', '', '06 69 91 84 98', '', '22/03/1996', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(230, '00010170', 1, 'REMY', ' JEAN MARC', 'Route de Lucq de B?arn', '', '64150', 'LAHOURCADE', '05 59 60 04 70', '', '', '18/08/1966', '', '', '', 'Gestionnaire', '225 E', '', 'CDI', 1, '52.25'),
(231, '00010171', 1, 'RENAUD', 'ERIC', '59, impasse du Cast?rot', '', '64170', 'ARTIX', '05 59 71 53 30', '', '', '29/03/1967', '', '', '', 'RÃ©gleur', '215 F', '', 'CDI', 1, '200'),
(232, '00010213', 1, 'RIAHI', 'ABDEL - HAKIM', '1 Avenue de Monein', '', '64150', 'MOURENX', '', '06-11-07-51-25', '', '07/09/1987', '', '', '', 'OpÃ©rateur', '190 B', '', 'CDI', 1, '200'),
(233, '00010172', 1, 'RIBEIRO LOPES ', 'ALBINO', '3, chemin de la Houn Dou Cagot', '', '64150', 'ARTHEZ DE BEARN', '05 59 71 63 45', '', '', '29/01/1973', '', '', '', 'Controleur', '215 F', '', 'CDI', 1, '200'),
(234, '00010173', 1, 'ROMAIN', 'SERGE', '19, rue Matachot', '', '64300', 'ORTHEZ', '', '06 71 56 39 79', '', '15/03/1957', '', '', '', 'OpÃ©rateur', '190 B', '', 'CDI', 1, '200'),
(235, '00010174', 1, 'ROSE', 'DOMINIQUE', '4, rue Jacques Duclos', '', '64150', 'MOURENX', '05 59 60 10 53', '', '', '15/07/1969', '', '', '', 'RÃ©gleur', '215 F', '', 'CDI', 1, '200'),
(236, '00010175', 1, 'ROSSI', 'EDWIGE', '42, chemin de Puyet', 'Cedex 11 A', '64230', 'DENGUIN', '05 59 68 80 10', '', 'edwige.rossi@rexam.com', '19/05/1947', '', '', '', 'Secretaire', '255 B', '', 'CDI', 1, '200'),
(237, '00010177', 1, 'ROUSSEFF', 'PATRICK', '1570, chemin du Moulin', '', '64370', 'CASTEIDE-CANDAU', '', '06 03 86 03 26', '', '12/12/1963', '', '', '', 'Cariste', '170 F', '', 'CDI', 1, '200'),
(238, '00010179', 1, 'RUFFAT ', 'JONATHAN', '617, route du Bourgadot', '', '40330', 'NASSIET', '05 58 89 13 27', '', '', '19/08/1983', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '76.75'),
(239, '00010180', 1, 'SAINT-MARTIN', 'ERIC', '3, chemin du Nougue', '', '64370', 'ARTHEZ DE BEARN', '', '06 74 38 22 38', '', '12/09/1971', '', '', '', 'Op?rateur', '215 D', '', 'CDI', 1, '200'),
(240, '00010182', 1, 'SALIOU', 'REGIS', '10, lotissement des Moulins', '', '64360', 'MONEIN', '', '06 34 10 38 00', 'rege64@hotmail.fr', '24/06/1975', '', '', '', 'R?gleur', '215 F', '', 'CDI', 1, '200'),
(241, '00010183', 1, 'SALVA', 'YOHAN', '1, Chemin Barr?re', '', '64150', 'VIELLESEGURE', '', '06 30 96 45 56', 'yohanrexam@sfr.fr', '26/11/1979', '', '', '', 'Automaticien', '255 B', '', 'CDI', 1, '200'),
(242, '00010216', 1, 'SARRIEU', 'DAVID', '26, avenue des Magnolias', '', '64320', 'LEE', '', '06 37 49 13 39', 'david.sarrieu@rexam.com', '14/09/1972', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '100'),
(244, '00010185', 1, 'SEGRODNICK ', 'LEANDRICK', 'Chemin Mirassou', '', '64150', 'LAGOR', '', '06 25 05 80 21', '', '16/06/1977', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(245, '00010186', 1, 'SIFREU', 'FLORIAN', '6, all?e Gauguin', '', '64150', 'MOURENX', '05 59 67 44 91', '', 'florian.sifreu@rexam.com', '11/11/1958', '', '', '', 'Tech. Qualit?', '255 C', '', 'CDI', 1, '200'),
(246, '00010237', 1, 'TALL', 'MOMAR', '20, rue du Marbor?', '', '64000', 'PAU', '', '06 25 85 86 84', 'momar.tall@rexam.com', '28/04/1983', '', '', '', 'Resp. Techniques', 'Cadre', '', 'CDI', 1, '200'),
(247, '00010187', 1, 'THIBAUT', 'MICHEL', '5, rue Gui de Lons', 'Parc le Bilaa', '64230', 'LESCAR', '05 59 32 01 46', '', 'michel.thibaut@rexam.com', '16/05/1951', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(248, '00010236', 3, 'TISNES', 'MARION', '7, Chemin de las Probes', '', '64230', 'SIROS', '', '06 61 16 44 34', '', '22/05/1996', '', '', '', 'Automaticien', '170 A', '', 'Stagiaire', 1, '166.05'),
(249, '00010188', 1, 'TLICH', 'SLIM', '6, all?e Fr?d?rico Garcia Lorca', '', '64150', 'MOURENX', '05 59 60 32 78', '', '', '26/08/1974', '', '', '', 'Op?rateur', '190 B', '', 'CDI', 1, '200'),
(250, '00010189', 1, 'TOULET', 'PATRICK', 'Route de Lucq de B?arn', '', '64150', 'LAHOURCADE', '05 59 60 09 81', '', '', '11/06/1966', '', '', '', 'Op?rateur', '215 C', '', 'CDI', 1, '200'),
(251, '00010190', 1, 'TREYTURE-HAYET ', 'THIERRY', '90, Chemin de Treyti', '', '64370', 'HAGETAUBIN', '', '06 15 97 02 12', 'thierry.treyture-hayet@rexam.com', '12/01/1960', '', '', '', 'Chef de Poste', '285 B', '', 'CDI', 1, '195.25'),
(252, '00010191', 1, 'TRIPICCHIO ', ' JEAN PIERRE', '1, rue des jonquilles', 'Lotissement du Ch?teau', '64360', 'MONEIN', '05 59 21 27 02', '', '', '12/11/1970', '', '', '', 'Op?rateur', '190 D', '', 'CDI', 1, '127.5'),
(253, '00010192', 1, 'URRUTY ', 'MICHEL', '11, chemin Las Barthes', '', '64300', 'BIRON', '05 59 67 01 44', '', '', '08/05/1956', '', '', '', 'Automaticien', '255 C', '', 'CDI', 1, '100'),
(254, '00010241', 1, 'VEDRENNE', 'JOELLE', '35, Route de Parbayse', '', '64230', 'ARBUS', '', '06 03 47 38 73', '', '11/01/1978', '', '', '', 'Contr?leur', '190 B', '', 'CDI', 1, '200'),
(255, '00010193', 1, 'VERON', 'DIDIER', '4, Chemin Mirassou', 'Quartier Benzy', '64150', 'LAGOR', '05 59 71 57 04', '', 'didier.veron@rexam.com', '21/02/1958', '', '', '', 'Chef de Poste', '285 B', '', 'CDI', 1, '200'),
(256, '00010242', 1, 'VIATEAU', 'REMI', '1, All?e Lamartine', '', '64150', 'MOURENX', '', '06 85 92 93 99', '', '23/10/1995', '', '', '', 'Contr?leur', '190 A', '', 'CDI', 1, '200'),
(257, '00010195', 1, 'VIGIER', 'PASCAL', '14, av du Loup', 'R?sidence La Benoue', '64000', 'PAU', '05 59 02 72 75', '', 'pascal.vigier@rexam.com', '21/07/1958', '', '', '', 'Dir. Financier', 'Cadre', '', 'CDI', 1, '200'),
(258, '00010223', 1, 'VILLAYES ', 'FLORIAN', '17, rue des Mimosas', 'R?s. Les Albizzias - Appt. C 101', '64230', 'LESCAR', '', '06 72 66 01 41', 'florian.villayes@rexam.com', '17/10/1987', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(259, '00010225', 1, 'WHALES ', 'STEPHEN', '3, rue Gabriel Faur?', '', '64230', 'LESCAR', '', '06 76 78 11 79', 'stephen.whales@rexam.com', '28/07/1980', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(260, '00010249', 1, 'ANDRE-GUERN', 'FLORIAN', '', '', '64000', 'PAU', '', '', 'florian.andre-guern@rexam.com', '12/04/1986', '', '', '1', 'ENGINEERING', 'CADRE', '', 'CDI', 1, '200'),
(261, '00010250', 1, 'HOURCADETTE', 'Nicolas', '49, Chemin PÃ©noulie', 'Quartier Lassabaigt', '64150', 'LAHOURCADE', '', '06.77.70.17.61', 'nicolas.hourcadette@gmail.com', '14-06-1991', '01-02-2015', '', '1', 'ContrÃ´leur', '190A', '', 'CDI', 1, '160');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Contenu de la table `solde_caisse`
--

INSERT INTO `solde_caisse` (`idsoldecaisse`, `date_mouvement`, `num_mouvement`, `type_mouvement`, `type_solde`, `libelle_mouvement`, `debit`, `credit`, `point_caisse`) VALUES
(63, '21-02-2015', '0479412', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOUSQUES DIT CABANOT STEPHANE.', '', '100', 0),
(64, '21-02-2015', '6482454', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUYON MATTHIEU.', '', '100', 0),
(65, '21-02-2015', '0162', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BIDART MICKAEL.', '', '50', 0),
(66, '21-02-2015', '0163', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BIDART MICKAEL.', '', '50', 0),
(67, '21-02-2015', '6344552', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CLAVERIE THIERRY.', '', '100', 0),
(68, '21-02-2015', '0145', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ALLAMAN NICOLAS.', '', '100', 0),
(69, '21-02-2015', '4610328', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de URRUTY MICHEL.', '', '100', 0),
(70, '21-02-2015', '01458', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DE MIGUEL FELIX.', '', '100', 0),
(71, '21-02-2015', '9892939', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ARRICAU ANDRE.', '', '100', 0),
(72, '21-02-2015', '01726', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BIDART MICKAEL.', '', '100', 0),
(73, '21-02-2015', '144683058', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DA FONSECA JOSE.', '', '50', 0),
(74, '21-02-2015', '144683059', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DA FONSECA JOSE.', '', '50', 0),
(75, '21-02-2015', '6972040', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DECROUE DIDIER.', '', '100', 0),
(76, '21-02-2015', '5243985', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JAUREGUYBERRY.', '', '100', 0),
(77, '21-02-2015', '1337841', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GONCALVEZ NEIVA FREDERICQ.', '', '100', 0),
(78, '21-02-2015', '03684', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BORDENEUVE PATRICK.', '', '100', 0),
(79, '21-02-2015', '5892549', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BORDATTO SERGE.', '', '100', 0),
(80, '21-02-2015', '5314236', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERGEZ ANDRE.', '', '100', 0),
(81, '21-02-2015', '7358715', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAZURIER SYLVIE.', '', '100', 0),
(82, '21-02-2015', '6344273', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GRACIET PATRICK.', '', '100', 0),
(83, '21-02-2015', '7449598', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LANOUE LAURENT.', '', '100', 0),
(84, '24-02-2015', '3171507', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PUYOO Gilles.', '', '100', 0);

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
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=214;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=422;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=422;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
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
MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=134;
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
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=262;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
