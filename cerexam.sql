-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Lun 02 Mars 2015 à 11:26
-- Version du serveur :  5.5.41-0ubuntu0.14.04.1
-- Version de PHP :  5.5.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `cerexam`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `achat_presta`
--

INSERT INTO `achat_presta` (`idachatpresta`, `date_achat`, `idprestation`, `qte`, `total_achat`) VALUES
(1, '12-02-2015', 0, '70', '0');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=213 ;

--
-- Contenu de la table `ayant_droit`
--

INSERT INTO `ayant_droit` (`idayantdroit`, `idsalarie`, `nom_ayant_droit`, `prenom_ayant_droit`, `date_naissance_ayant_droit`, `solde_ayant_droit`) VALUES
(56, 58, 'ADENIS', 'JUDICAELLE', '13/03/2011', '320'),
(57, 58, 'ADENIS', 'ANAE', '14/09/2006', '320'),
(58, 64, 'ALLAMAN', 'ANDERSON', '09/01/2002', '320'),
(59, 64, 'ALLAMAN', 'IZELIA', '05/09/2011', '320'),
(60, 66, 'AMIS', 'THOMAS', '06/08/2008', '305'),
(61, 68, 'ARRICAU', 'ANGELE', '25/06/2001', '320'),
(62, 68, 'ARRICAU', 'JULIE', '09/06/1997', '320'),
(63, 69, 'BALLESTEROS', 'CELIA', '11/12/2001', '320'),
(64, 69, 'BALLESTEROS', 'THOMAS', '09/10/1997', '287.75'),
(65, 70, 'BAR', 'SACHA', '15/02/2013', '320'),
(66, 70, 'BAR', 'NATHAN', '21/01/2010', '320'),
(67, 71, 'BATBEDAT', 'TEO', '01/10/2010', '320'),
(68, 71, 'BATBEDAT', 'SOLENN', '28/12/2001', '320'),
(69, 72, 'BAYONA', 'ANDREA', '23/09/1999', '320'),
(70, 72, 'BAYONA', 'CYRIL', '13/09/2001', '320'),
(71, 75, 'BENZIN', 'CARLA-MARIE', '04/11/2001', '275'),
(72, 75, 'BENZIN', 'DYLAN', '11/10/1997', '320'),
(73, 77, 'BERGEZ', 'MANON', '14/09/2009', '320'),
(74, 81, 'BIDART', 'DYLAN', '15/12/2001', '320'),
(75, 84, 'BLOEMZAAD', 'NATHALIE', '08/05/2014', '320'),
(76, 85, 'BONNINGUE', 'CALI', '30/12/2010', '320'),
(77, 85, 'BONNINGUE', 'HUGO', '01/08/2013', '320'),
(78, 86, 'BORDATTO', 'CHLOE', '15/04/2000', '320'),
(79, 93, 'BRACH', 'JUSTINE', '05/10/2012', '320'),
(80, 97, 'BRUNE', 'ERIC', '02/08/1998', '320'),
(81, 98, 'CABANE-CHRESTIA', 'LUDOVIC', '18/08/2002', '320'),
(82, 98, 'CABANE-CHRESTIA', 'MAEVA', '06/09/1998', '320'),
(83, 100, 'CALVO', 'YANIS', '12/03/2003', '0'),
(84, 101, 'CAMBOT', 'BASTIEN', '05/04/2003', '320'),
(85, 102, 'CAMPAGNE', 'MARION', '09/03/2002', '320'),
(86, 106, 'CASAIL', 'CHARLOTTE', '09/11/1999', '313.25'),
(87, 107, 'CASAMAJOU', 'IKER', '10/09/2007', '320'),
(88, 107, 'CASAMAJOU', 'LEIRE', '01/05/2002', '320'),
(89, 107, 'CASAMAJOU', 'INTZA', '07/06/2005', '320'),
(90, 108, 'CASANOVA', 'ANGEL ', '26/04/2012', '320'),
(91, 110, 'CAZALERE', 'RAPHAEL', '01/11/2014', '320'),
(92, 114, 'CIOSSE', 'DORIAN', '02/01/2002', '320'),
(93, 114, 'CIOSSE', 'REMI', '09/05/2005', '320'),
(94, 116, 'CLAVERIE', 'QUENTIN', '29/01/2003', '281'),
(95, 118, 'CORREIA', 'THEO', '16/01/2009', '320'),
(96, 118, 'CORREIA', 'MARIE CHRISTINE', '12/09/2012', '320'),
(97, 119, 'CUISINIER', 'SOEN', '17/07/2003', '315.875'),
(98, 119, 'CUISINIER', 'CLARA', '01/10/2001', '315.875'),
(99, 120, 'DA FONSECA', 'MARION', '07/07/2007', '50'),
(100, 120, 'DA FONSECA', 'THEO', '03/12/2013', '320'),
(101, 121, 'DA SILVA', 'RACHEL', '07/03/2002', '162.5'),
(102, 121, 'DA SILVA', 'ROMAIN', '26/04/2007', '320'),
(103, 122, 'DANTEIN', 'TOM', '26/04/2013', '320'),
(104, 122, 'DANTEIN', 'ANA', '18/11/2011', '320'),
(105, 124, 'DARRACQ', 'ADRIEN', '18/08/1997', '320'),
(106, 125, 'DARRACQ', 'TIMEO', '01/07/2009', '274.25'),
(107, 125, 'DARRACQ', 'CHLOE', '20/07/2012', '320'),
(108, 127, 'DATHY', 'MAXIME', '25/12/2007', '320'),
(109, 127, 'DATHY', 'JUSTINE', '31/08/2010', '320'),
(110, 129, 'DAUBAS', 'GAUTIER', '15/07/2005', '320'),
(111, 129, 'DAUBAS', 'LAURIE', '11/10/2001', '320'),
(112, 132, 'DECROUE', 'LOU-ANNE', '03/02/2004', '320'),
(113, 136, 'DOLLE', 'ANGELINE', '07/10/2001', '194'),
(114, 136, 'DOLLE', 'BASTIEN', '22/06/2006', '320'),
(115, 137, 'DRIVON', 'EMILY', '12/06/2006', '320'),
(116, 137, 'DRIVON', 'ELISE', '09/11/2004', '320'),
(117, 137, 'DRIVON', 'JULES', '25/06/2002', '320'),
(118, 138, 'DULAU', 'AMIC', '18/01/2008', '320'),
(119, 138, 'DULAU', 'LEA', '09/05/1997', '320'),
(120, 135, 'DUPLAA', 'EMELINE', '14/09/2000', '320'),
(121, 135, 'DUPLAA', 'PIERRE', '11/03/1997', '320'),
(122, 139, 'DUROU', 'GABRIEL', '26/01/2010', '177.95'),
(123, 139, 'DUROU', 'SIMON', '09/01/2006', '26.45'),
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
(136, 150, 'FOURQUET', 'GILLES', '09/05/1997', '320'),
(137, 151, 'GALLARDO', 'ANAE', '16/01/2012', '320'),
(138, 152, 'GIACOMIN', 'LUCILE', '28/02/2002', '320'),
(139, 153, 'GONCALVES NEIVA ', 'ILONA', '20/07/2005', '320'),
(140, 153, 'GONCALVES NEIVA', 'MAEVA', '25/03/2002', '320'),
(141, 155, 'GUION', 'HUGO', '24/08/2001', '320'),
(142, 155, 'GUION', 'EMMA', '26/10/2004', '320'),
(143, 157, 'HOSTENDIE', 'CLARISSE', '27/02/1997', '320'),
(144, 157, 'HOSTENDIE', 'INES', '11/02/2000', '320'),
(145, 158, 'HOUIS', 'LEO', '04/05/2004', '320'),
(146, 159, 'HOURDILLE', 'JUSTINE', '15/05/2003', '320'),
(147, 159, 'HOURDILLE', 'LUCAS', '27/05/1997', '320'),
(148, 161, 'JACKOWSKI', 'LISA', '14/03/2005', '320'),
(149, 162, 'JAUREGUIBERRY', 'IBAN', '13/02/2009', '320'),
(150, 162, 'JAUREGUIBERRY', 'ELAIA', '24/11/2013', '320'),
(151, 163, 'JIMENEZ', 'HUGO', '15/02/2000', '320'),
(152, 165, 'JUNGAS', 'JADE', '15/07/2011', '320'),
(153, 165, 'JUNGAS', 'LOU', '28/05/2014', '320'),
(154, 169, 'LACABARATS', 'LUCIE', '03/12/2012', '320'),
(155, 171, 'LACARRIEU-HAURAT', 'MORGANE', '05/10/1999', '244.25'),
(156, 177, 'LAMOURE-LABADIE', 'DAMIEN', '22/10/1998', '320'),
(157, 178, 'LAMOURET', 'THEO', '15/03/2000', '301.25'),
(158, 179, 'LANOUE', 'AXELLE', '18/02/1998', '320'),
(159, 179, 'LANOUE', 'ROXANE', '09/04/2007', '320'),
(160, 180, 'LASSOURREILLE', 'CHARLOTTE', '17/07/2011', '320'),
(161, 187, 'LUPIAC', 'JUSTINE', '07/11/2000', '320'),
(162, 189, 'MAIRAL', 'LENA', '30/11/2012', '320'),
(163, 191, 'MARATRAT', 'CASSIDY', '12/01/2010', '320'),
(164, 192, 'MARLADOT', 'BAPTISTE', '21/03/2002', '320'),
(165, 194, 'MARTINEZ', 'MAREVA', '01/05/2001', '244.25'),
(166, 197, 'MASSE', 'ALEXINE', '22/09/2012', '320'),
(167, 198, 'MASSEY', 'JOAN', '13/05/2006', '320'),
(168, 198, 'MASSEY', 'MAELY', '31/03/2011', '320'),
(169, 198, 'MASSEY', 'MARGAUX', '14/11/2002', '320'),
(170, 200, 'MAZURIER', 'GUILLAUME', '17/02/1997', '320'),
(171, 200, 'MAZURIER', 'MARIE', '31/10/1999', '320'),
(172, 204, 'MOLENAT', 'JOHAN', '24/02/2012', '320'),
(173, 205, 'MORAL', 'LOLA', '20/12/2005', '320'),
(174, 205, 'MORAL', 'JEAN ', '18/07/2008', '320'),
(175, 206, 'MOURCEL', 'MAXIME', '13/02/2002', '1.25'),
(176, 208, 'MOUSQUES DIT CABANOT', 'VALENTINE', '10/04/2007', '320'),
(177, 208, 'MOUSQUES DIT CABANOT', 'JEAN ', '30/01/2004', '320'),
(178, 211, 'NARDOZZI', 'LEIA', '09/07/2009', '320'),
(179, 211, 'NARDOZZI', 'JOAN', '12/10/2013', '320'),
(180, 213, 'NICOLAS', 'JUSTINE', '01/10/2006', '320'),
(181, 214, 'NIMHAOULIN', 'SARAH', '11/02/2008', '320'),
(182, 214, 'NIMHAOULIN', 'ANISS', '18/10/2000', '320'),
(183, 215, 'NIMHAOULIN', 'INES', '06/01/2012', '320'),
(184, 215, 'NIMHAOULIN', 'SOPHIA', '27/05/2010', '320'),
(185, 216, 'NOUSTY', 'EMMA', '24/10/2009', '320'),
(186, 220, 'PASTOUREU', 'FANNY', '12/03/1997', '320'),
(187, 220, 'PASTOUREU', 'MATHILDE', '27/02/2003', '320'),
(188, 220, 'PASTOUREU', 'REMI', '31/01/2000', '320'),
(189, 223, 'PERALTA', 'ANTONIN', '17/03/2005', '320'),
(190, 230, 'REMY', 'GUILLAUME', '21/02/1999', '320'),
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
(207, 252, 'TRIPICCHIO', 'FIORENZO', '29/03/1998', '267.5'),
(208, 259, 'WHALES', 'CELESTE', '28/04/2008', '320'),
(209, 251, 'BOY', 'Aldwin', '07-02-1999', '313.25'),
(211, 56, 'ABADO', 'MickaÃ«l', '04-01-2015', '320'),
(212, 129, 'DA SILVA ', 'ChloÃ©', '26-10-2004', '320');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=141 ;

--
-- Contenu de la table `bilan`
--

INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(24, 1, 'Remboursement de la prestation: Abonnement annuel Basic-Fit  pour MICHE GAELLE', '185.4', '', ''),
(28, 1, 'Remboursement de la prestation: Minots de l''Om + Kempo pour DUROU SIMON', '93.75', '', ''),
(29, 1, 'Remboursement de la prestation: Championnat Mondial XTrial pour AMIS  CHRISTIAN', '38', '', ''),
(30, 1, 'Remboursement de la prestation: Championnat du Monde Xtrial pour AMIS THOMAS', '15', '', ''),
(32, 1, 'Remboursement de la prestation: Les Minots de l''OM pour DUROU GABRIEL', '22.5', '', ''),
(34, 1, 'Remboursement de la prestation: spectacle pour MUNOZ ANTONIO', '150', '', ''),
(35, 1, 'Remboursement de la prestation: leÃ§ons de natation pour DARRACQ TIMEO', '45.75', '', ''),
(36, 1, 'Remboursement de la prestation: SKI pour DAUBA  BAPTISTE', '53', '', ''),
(37, 1, 'Remboursement de la prestation: cyclotourisme pour ETCHEVERRY JACQUES', '26', '', ''),
(38, 1, 'Remboursement de la prestation: centre equestre pour DOLLE ANGELINE', '126', '', ''),
(39, 1, 'Remboursement de la prestation: spectacle zenith pour CLAVERIE THIERRY', '24', '', ''),
(40, 1, 'Remboursement de la prestation: spectacle zenith pour CLAVERIE QUENTIN', '39', '', ''),
(42, 1, 'Remboursement de la prestation: forfait danse classique pour DA FONSECA MARION', '270', '', ''),
(43, 1, 'Remboursement de la prestation: abonnement piscine pour HYGEN DOMINIQUE', '117.5', '', ''),
(44, 1, 'Remboursement de la prestation: spectacle pour BALLESTEROS  DIDIER', '22', '', ''),
(45, 1, 'Remboursement de la prestation: forfait ski pour RUFFAT  JONATHAN', '18.25', '', ''),
(46, 1, 'Remboursement de la prestation: forfait ski pour RUFFAT BAPTISTE', '27.375', '', ''),
(47, 1, 'Remboursement de la prestation: EntrÃ©e parc pour DUROU SIMON', '85.05', '', ''),
(49, 1, 'Remboursement de la prestation: spectacle pour PERALTA   GAETAN', '68', '', ''),
(50, 1, 'Remboursement de la prestation: METAMORPHOSE pour BERTELOOT KEVIN', '166.25', '', ''),
(51, 1, 'Remboursement de la prestation: BOWLING pour LACARRIEU-HAURAT  PIERRE', '17.5', '', ''),
(52, 1, 'Remboursement de la prestation: DANSE HIP HOP pour LACARRIEU-HAURAT MORGANE', '75.75', '', ''),
(53, 1, 'Remboursement de la prestation: voyage scolaire pour CALVO YANIS', '133.875', '', ''),
(56, 1, 'Remboursement de la prestation: entrÃ©es parc pour DUROU GABRIEL', '90.3', '', ''),
(57, 1, 'Remboursement de la prestation: voyage scolaire pour DUROU SIMON', '82.5', '', ''),
(60, 1, 'Remboursement de la prestation: sortie ski pour BALLESTEROS THOMAS', '32.25', '', ''),
(62, 1, 'Remboursement de la prestation: match de hand pour LAMOURET THEO', '18.75', '', ''),
(63, 1, 'Remboursement de la prestation: match de hand pour LAMOURET JOEL', '25', '', ''),
(66, 1, 'Remboursement de la prestation: CinÃ© (Invinsible) pour CASAIL CHRISTOPHE', '4.5', '', ''),
(68, 1, 'Remboursement de la prestation: licence cyclo pour BRUN GILLES', '51.1', '', ''),
(70, 1, 'Remboursement de la prestation: carte de peche + cinema pour CUISINIER BORIS', '46.15', '', ''),
(72, 1, 'Remboursement de la prestation: cinema pour CUISINIER SOEN', '4.125', '', ''),
(73, 1, 'Remboursement de la prestation: cinema pour CUISINIER CLARA', '4.125', '', ''),
(75, 1, 'Remboursement de la prestation: fitness pour DA SILVA RACHEL', '157.5', '', ''),
(80, 1, 'Remboursement de la prestation: BOWLING pour LACARRIEU-HAURAT  JEAN PIERRE', '42', '', ''),
(81, 1, 'Remboursement de la prestation: carte de peche pour MILAGE   CHRISTIAN', '72.5', '', ''),
(82, 1, 'Remboursement de la prestation: metamorphose pour TRIPICCHIO FIORENZO', '52.5', '', ''),
(83, 1, 'Remboursement de la prestation: FORFAIT SKI pour CASSOUS OLIVIER', '150.6', '', ''),
(84, 1, 'Remboursement de la prestation: Thermes de SALIES pour DULAU  EMMANUEL', '11', '', ''),
(85, 1, 'Remboursement de la prestation: CENTRE EQUESTRE  pour BENZIN CARLA-MARIE', '45', '', ''),
(120, 1, 'Remboursement de la prestation: fitness pour RUFFAT  JONATHAN', '105', '', ''),
(125, 1, 'Remboursement de la prestation: CinÃ©ma + Bowling pour TREYTURE-HAYET  THIERRY', '4.75', '', ''),
(126, 1, 'Remboursement de la prestation: CinÃ©ma + Bowling pour TREYTURE-HAYET ROBIN', '6', '', ''),
(127, 1, 'Remboursement de la prestation: CinÃ©ma + Bowling pour BOY Aldwin', '6.75', '', ''),
(129, 1, 'Remboursement de la prestation: forfait ski pour CALVO YANIS', '265.725', '', ''),
(130, 1, 'Remboursement de la prestation: stage hand pour MOURCEL MAXIME', '318.75', '', ''),
(131, 1, 'Remboursement de la prestation: musÃ©e + marinland pour LAGRAULA-DUROU SOPHIE', '43.9', '', ''),
(133, 1, 'Remboursement de la prestation: musÃ©e + marinland + petit train pour DUROU SIMON', '32.25', '', ''),
(134, 1, 'Remboursement de la prestation: licence plongÃ©e pour FOURQUET GILLES', '146.5', '', ''),
(135, 1, 'Remboursement de la prestation: fitness pour BAR  GAETAN', '100.5', '', ''),
(136, 1, 'Remboursement de la prestation: spectacle pour MARTINEZ ALAIN', '36', '', ''),
(137, 1, 'Remboursement de la prestation: spectacles + cinÃ© pour MARTINEZ MAREVA', '75.75', '', ''),
(138, 1, 'Remboursement de la prestation: forfait ski pour LACARRIEU-HAURAT  JEAN PIERRE', '51.9', '', ''),
(139, 1, 'Remboursement de la prestation: Forfait Ski pour CALVO  MICHEL', '27.9', '', ''),
(140, 1, 'Remboursement de la prestation: MusÃ©e + Marinland + Petit Train pour DUROU GABRIEL', '29.25', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`) VALUES
(15, 208, '21-02-2015', 3, '100', 1),
(16, 156, '21-02-2015', 3, '100', 1),
(17, 82, '21-02-2015', 3, '50', 1),
(18, 82, '21-02-2015', 3, '50', 1),
(19, 116, '21-02-2015', 3, '100', 1),
(20, 64, '21-02-2015', 3, '100', 1),
(21, 253, '21-02-2015', 3, '100', 1),
(22, 130, '21-02-2015', 3, '100', 1),
(23, 68, '21-02-2015', 3, '100', 1),
(24, 81, '21-02-2015', 3, '100', 1),
(25, 120, '21-02-2015', 3, '50', 1),
(26, 120, '21-02-2015', 3, '50', 1),
(27, 132, '21-02-2015', 3, '100', 1),
(28, 162, '21-02-2015', 3, '100', 1),
(29, 153, '21-02-2015', 3, '100', 1),
(30, 88, '21-02-2015', 3, '100', 1),
(31, 86, '21-02-2015', 3, '100', 1),
(32, 76, '21-02-2015', 3, '100', 1),
(33, 200, '21-02-2015', 3, '100', 1),
(34, 154, '21-02-2015', 3, '100', 1),
(35, 179, '21-02-2015', 3, '100', 1),
(38, 226, '24-02-2015', 3, '100', 1);

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
(80, 1, '0', ''),
(81, 2, '', ''),
(82, 3, '1210.79', '178'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '', ''),
(87, 8, '17102.86', ''),
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
(107, 28, '178', '18491.65'),
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
(130, 51, '58', ''),
(131, 52, '', ''),
(132, 53, '', ''),
(133, 54, '', ''),
(134, 55, '120', ''),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(17, '1424732400', 'ABONNEMENT REVUE MEDIA CE', 3, '', '120.00'),
(18, '1424818800', 'SALON CE DE PAU CHQ 123', 3, '', '58');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `idcomptaplan`, `debit`, `credit`) VALUES
(49, 1, '0.00', ''),
(50, 3, '1210.79', ''),
(51, 8, '17102.86', ''),
(52, 28, '', '18313.65'),
(53, 55, '120.00', ''),
(54, 3, '', '120.00'),
(55, 51, '58', ''),
(56, 3, '', '58');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `compta_mvm`
--

INSERT INTO `compta_mvm` (`idcomptamvm`, `date_mvm`, `desc_mvm`, `idcomptaplan`, `debit`, `credit`) VALUES
(13, '1424732400', 'ABONNEMENT REVUE MEDIA CE', 55, '120.00', ''),
(14, '1424818800', 'DEPLACEMENT SALON DES CE DE PAU  CHQ 123', 51, '58', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `idcomptaplan`, `debit`, `credit`) VALUES
(13, 55, '120.00', ''),
(14, 51, '58', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=141 ;

--
-- Contenu de la table `cpt_resultat`
--

INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(24, '', '07-01-2015', 'Remboursement de la Prestation pour MICHE GAELLE - Abonnement annuel Basic-Fit ', '185.4', ''),
(28, '', '08-01-2015', 'Remboursement de la Prestation pour DUROU SIMON - Minots de l''Om + Kempo', '93.75', ''),
(29, '', '09-01-2015', 'Remboursement de la Prestation pour AMIS  CHRISTIAN - Championnat Mondial XTrial', '38', ''),
(30, '', '09-01-2015', 'Remboursement de la Prestation pour AMIS THOMAS - Championnat du Monde Xtrial', '15', ''),
(32, '', '08-01-2015', 'Remboursement de la Prestation pour DUROU GABRIEL - Les Minots de l''OM', '22.5', ''),
(34, '', '14-01-2015', 'Remboursement de la Prestation pour MUNOZ ANTONIO - spectacle', '150', ''),
(35, '', '14-01-2015', 'Remboursement de la Prestation pour DARRACQ TIMEO - leÃ§ons de natation', '45.75', ''),
(36, '', '17-01-2015', 'Remboursement de la Prestation pour DAUBA  BAPTISTE - SKI', '53', ''),
(37, '', '19-01-2015', 'Remboursement de la Prestation pour ETCHEVERRY JACQUES - cyclotourisme', '26', ''),
(38, '', '19-01-2015', 'Remboursement de la Prestation pour DOLLE ANGELINE - centre equestre', '126', ''),
(39, '', '19-01-2015', 'Remboursement de la Prestation pour CLAVERIE THIERRY - spectacle zenith', '24', ''),
(40, '', '19-01-2015', 'Remboursement de la Prestation pour CLAVERIE QUENTIN - spectacle zenith', '39', ''),
(42, '', '19-01-2015', 'Remboursement de la Prestation pour DA FONSECA MARION - forfait danse classique', '270', ''),
(43, '', '19-01-2015', 'Remboursement de la Prestation pour HYGEN DOMINIQUE - abonnement piscine', '117.5', ''),
(44, '', '21-01-2015', 'Remboursement de la Prestation pour BALLESTEROS  DIDIER - spectacle', '22', ''),
(45, '', '21-01-2015', 'Remboursement de la Prestation pour RUFFAT  JONATHAN - forfait ski', '18.25', ''),
(46, '', '21-01-2015', 'Remboursement de la Prestation pour RUFFAT BAPTISTE - forfait ski', '27.375', ''),
(47, '', '23-01-2015', 'Remboursement de la Prestation pour DUROU SIMON - EntrÃ©e parc', '85.05', ''),
(49, '', '25-01-15', 'Remboursement de la Prestation pour PERALTA   GAETAN - spectacle', '68', ''),
(50, '', '25-01-2015', 'Remboursement de la Prestation pour BERTELOOT KEVIN - METAMORPHOSE', '166.25', ''),
(51, '', '25-01-2015', 'Remboursement de la Prestation pour LACARRIEU-HAURAT  PIERRE - BOWLING', '17.5', ''),
(52, '', '25-01-2015', 'Remboursement de la Prestation pour LACARRIEU-HAURAT MORGANE - DANSE HIP HOP', '75.75', ''),
(53, '', '26-01-2015', 'Remboursement de la Prestation pour CALVO YANIS - voyage scolaire', '133.875', ''),
(56, '', '09-02-2015', 'Remboursement de la Prestation pour DUROU GABRIEL - entrÃ©es parc', '90.3', ''),
(57, '', '09-02-2015', 'Remboursement de la Prestation pour DUROU SIMON - voyage scolaire', '82.5', ''),
(60, '', '11-02-2015', 'Remboursement de la Prestation pour BALLESTEROS THOMAS - sortie ski', '32.25', ''),
(62, '', '11-02-2015', 'Remboursement de la Prestation pour LAMOURET THEO - match de hand', '18.75', ''),
(63, '', '11-02-2015', 'Remboursement de la Prestation pour LAMOURET JOEL - match de hand', '25', ''),
(66, '', '12-02-2015', 'Remboursement de la Prestation pour CASAIL CHRISTOPHE - CinÃ© (Invinsible)', '4.5', ''),
(68, '', '13-02-2015', 'Remboursement de la Prestation pour BRUN GILLES - licence cyclo', '51.1', ''),
(70, '', '15-02-2015', 'Remboursement de la Prestation pour CUISINIER BORIS - carte de peche + cinema', '46.15', ''),
(72, '', '15-02-2015', 'Remboursement de la Prestation pour CUISINIER SOEN - cinema', '4.125', ''),
(73, '', '15-02-2015', 'Remboursement de la Prestation pour CUISINIER CLARA - cinema', '4.125', ''),
(75, '', '16-02-2015', 'Remboursement de la Prestation pour DA SILVA RACHEL - fitness', '157.5', ''),
(80, '', '17-02-2015', 'Remboursement de la Prestation pour LACARRIEU-HAURAT  JEAN PIERRE - BOWLING', '42', ''),
(81, '', '18-02-2015', 'Remboursement de la Prestation pour MILAGE   CHRISTIAN - carte de peche', '72.5', ''),
(82, '', '18-02-2015', 'Remboursement de la Prestation pour TRIPICCHIO FIORENZO - metamorphose', '52.5', ''),
(83, '', '18-02-2015', 'Remboursement de la Prestation pour CASSOUS OLIVIER - FORFAIT SKI', '150.6', ''),
(84, '', '18-02-2015', 'Remboursement de la Prestation pour DULAU  EMMANUEL - Thermes de SALIES', '11', ''),
(85, '', '18-02-2015', 'Remboursement de la Prestation pour BENZIN CARLA-MARIE - CENTRE EQUESTRE ', '45', ''),
(120, '', '25-02-2015', 'Remboursement de la Prestation pour RUFFAT  JONATHAN - fitness', '105', ''),
(125, '', '26-02-2015', 'Remboursement de la Prestation pour TREYTURE-HAYET  THIERRY - CinÃ©ma + Bowling', '4.75', ''),
(126, '', '26-02-2015', 'Remboursement de la Prestation pour TREYTURE-HAYET ROBIN - CinÃ©ma + Bowling', '6', ''),
(127, '', '26-02-2015', 'Remboursement de la Prestation pour BOY Aldwin - CinÃ©ma + Bowling', '6.75', ''),
(129, '', '26-02-2015', 'Remboursement de la Prestation pour CALVO YANIS - forfait ski', '265.725', ''),
(130, '', '26-02-2015', 'Remboursement de la Prestation pour MOURCEL MAXIME - stage hand', '318.75', ''),
(131, '', '26-02-2015', 'Remboursement de la Prestation pour LAGRAULA-DUROU SOPHIE - musÃ©e + marinland', '43.9', ''),
(133, '', '26-02-2015', 'Remboursement de la Prestation pour DUROU SIMON - musÃ©e + marinland + petit train', '32.25', ''),
(134, '', '26-02-2015', 'Remboursement de la Prestation pour FOURQUET GILLES - licence plongÃ©e', '146.5', ''),
(135, '', '26-02-2015', 'Remboursement de la Prestation pour BAR  GAETAN - fitness', '100.5', ''),
(136, '', '26-02-2015', 'Remboursement de la Prestation pour MARTINEZ ALAIN - spectacle', '36', ''),
(137, '', '26-02-2015', 'Remboursement de la Prestation pour MARTINEZ MAREVA - spectacles + cinÃ©', '75.75', ''),
(138, '', '27-02-2015', 'Remboursement de la Prestation pour LACARRIEU-HAURAT  JEAN PIERRE - forfait ski', '51.9', ''),
(139, '', '26-02-2015', 'Remboursement de la Prestation pour CALVO  MICHEL - Forfait Ski', '27.9', ''),
(140, '', '26-02-2015', 'Remboursement de la Prestation pour DUROU GABRIEL - MusÃ©e + Marinland + Petit Train', '29.25', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(11, 15, 2, '2', '100', '100', 0),
(12, 16, 2, '2', '100', '100', 0),
(13, 17, 2, '1', '50', '50', 0),
(14, 18, 2, '1', '50', '50', 0),
(15, 19, 2, '2', '100', '100', 0),
(16, 20, 2, '2', '100', '100', 0),
(17, 21, 2, '2', '100', '100', 0),
(18, 22, 2, '2', '100', '100', 0),
(19, 23, 2, '2', '100', '100', 0),
(20, 24, 2, '2', '100', '100', 0),
(21, 25, 2, '1', '50', '50', 0),
(22, 26, 2, '1', '50', '50', 0),
(23, 27, 2, '2', '100', '100', 0),
(24, 28, 2, '2', '100', '100', 0),
(25, 29, 2, '2', '100', '100', 0),
(26, 30, 2, '2', '100', '100', 0),
(27, 31, 2, '2', '100', '100', 0),
(28, 32, 2, '2', '100', '100', 0),
(29, 33, 2, '2', '100', '100', 0),
(30, 34, 2, '2', '100', '100', 0),
(31, 35, 2, '2', '100', '100', 0),
(34, 38, 5, '1', '100', '100', 0);

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
(5, '1.0.0', '20215-ULTI');

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
(2, 45, 'Puy du Fou Adulte', '01-02-2015', '31-12-2015', '50', '50', '100', '6', '62', 0),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `produit_fixe`
--

INSERT INTO `produit_fixe` (`idproduitfixe`, `designation`, `date_produit_fixe`, `montant_produit`) VALUES
(4, 'Subvention 2% Janvier', '10-01-2015', '13500'),
(5, 'Subvention 2% FÃ©vrier', '03-02-2015', '13500');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(12, 15, 1, '100', 'BPSO', 'MOUSQUES DIT CABANOT STEPHANE', '0479412', 0),
(13, 16, 1, '100', 'CE', 'GUYON MATTHIEU', '6482454', 0),
(14, 17, 1, '50', 'SG', 'BIDART MICKAEL', '0162', 0),
(15, 18, 1, '50', 'SG', 'BIDART MICKAEL', '0163', 0),
(16, 19, 1, '100', 'CE', 'CLAVERIE THIERRY', '6344552', 0),
(17, 20, 1, '100', 'CE', 'ALLAMAN NICOLAS', '0145', 0),
(18, 21, 1, '100', 'CA', 'URRUTY MICHEL', '4610328', 0),
(19, 22, 1, '100', 'SG', 'DE MIGUEL FELIX', '01458', 0),
(20, 23, 1, '100', 'CA', 'ARRICAU ANDRE', '9892939', 0),
(21, 24, 1, '100', 'SG', 'BIDART MICKAEL', '01726', 0),
(22, 25, 1, '50', 'LA POSTE', 'DA FONSECA JOSE', '144683058', 0),
(23, 26, 1, '50', 'LA POSTE', 'DA FONSECA JOSE', '144683059', 0),
(24, 27, 1, '100', 'CE', 'DECROUE DIDIER', '6972040', 0),
(25, 28, 1, '100', 'CE', 'JAUREGUYBERRY', '5243985', 0),
(26, 29, 1, '100', 'CA', 'GONCALVEZ NEIVA FREDERICQ', '1337841', 0),
(27, 30, 1, '100', 'SG', 'BORDENEUVE PATRICK', '03684', 0),
(28, 31, 1, '100', 'CE', 'BORDATTO SERGE', '5892549', 0),
(29, 32, 1, '100', 'CA', 'BERGEZ ANDRE', '5314236', 0),
(30, 33, 1, '100', 'LCL', 'MAZURIER SYLVIE', '7358715', 0),
(31, 34, 1, '100', 'CE', 'GRACIET PATRICK', '6344273', 0),
(32, 35, 1, '100', 'CA', 'LANOUE LAURENT', '7449598', 0),
(34, 38, 1, '100', 'CE', 'PUYOO Gilles', '3171507', 0);

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_remb_ayant_droit` (
`idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Contenu de la table `reg_remb_ayant_droit`
--

INSERT INTO `reg_remb_ayant_droit` (`idregrembayantdroit`, `idrembayantdroit`, `montant_reglement`, `num_chq`) VALUES
(2, 4, '22,50', '1862'),
(3, 5, '93,75', '1862'),
(4, 6, '15,00', '2165'),
(5, 7, '22,50', ''),
(6, 8, '22,50', 'A COMLETER'),
(7, 9, '45,75', '2168'),
(8, 10, '126,00', '2175'),
(9, 11, '39,00', '2176'),
(10, 12, '270,00', '2178'),
(11, 13, '27,38', '2181'),
(12, 14, '85,05', '2182'),
(13, 15, '75,75', '2185'),
(14, 16, '133,88', '2186'),
(15, 17, '90,30', '2187'),
(16, 18, '82,50', '2187'),
(17, 19, '32,25', ''),
(18, 21, '32,25', '2188'),
(19, 22, '18,75', '2189'),
(20, 23, '6,75', '18.63'),
(21, 25, '4,13', '2191'),
(22, 26, '4,13', '2191'),
(23, 27, '157,50', '2193'),
(24, 28, '52,50', '2196'),
(25, 29, '45,00', '2199'),
(26, 30, '6,00', '1864'),
(27, 31, '6,75', '1864'),
(28, 32, '6,00', '1865'),
(29, 33, '6,75', '1865'),
(30, 34, '186,13', '2201'),
(31, 35, '318,75', '2202'),
(32, 36, '29,25', '2203'),
(33, 37, '32,25', '2203'),
(34, 38, '75,75', '2206'),
(35, 39, '29,25', '2203');

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Contenu de la table `reg_remb_salarie`
--

INSERT INTO `reg_remb_salarie` (`idregrembsalarie`, `idrembsalarie`, `montant_reglement`, `num_chq`) VALUES
(7, 8, '185,40', '1861'),
(8, 9, '38,00', '2165'),
(9, 10, '150,00', '2167'),
(10, 11, '53,00', '0002173'),
(11, 12, '26,00', '2174'),
(12, 13, '24,00', '2176'),
(13, 14, '200,00', '2177'),
(14, 15, '117,50', '2179'),
(15, 16, '22,00', '2180'),
(16, 17, '18,25', '2181'),
(17, 19, '68,00', '2183'),
(18, 20, '166,25', '2184'),
(19, 21, '17,50', '2185'),
(20, 22, '12,50', '2189'),
(21, 23, '25,00', '2189'),
(22, 25, '4,50', '1863'),
(23, 26, '51,10', '2190'),
(24, 28, '46,15', '2191'),
(25, 29, '105,00', '2192'),
(26, 30, '42,00', '2194'),
(27, 31, '72,50', '2195'),
(28, 32, '150,60', '2197'),
(29, 33, '11,00', '2198'),
(30, 36, '105,00', '2200'),
(31, 38, '4,75', '1864'),
(32, 39, '4,75', '1865'),
(33, 40, '27,90', '2201'),
(34, 41, '43,90', '2203'),
(35, 42, '146,50', '2203'),
(36, 43, '100,50', '2205'),
(37, 44, '36,00', '2206'),
(38, 45, '51,90', '2207'),
(39, 46, '27,90', '2201');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Contenu de la table `remb_ayant_droit`
--

INSERT INTO `remb_ayant_droit` (`idrembayantdroit`, `idayantdroit`, `prestation`, `date_vente`, `montant_prestation`, `part_ce`, `etat_facture`) VALUES
(5, 123, 'Minots de l''Om + Kempo', '08-01-2015', '125.00', '93.75', 1),
(6, 60, 'Championnat du Monde Xtrial', '09-01-2015', '20', '15', 1),
(8, 122, 'Les Minots de l''OM', '08-01-2015', '30', '22.5', 1),
(9, 106, 'leÃ§ons de natation', '14-01-2015', '61.00', '45.75', 1),
(10, 113, 'centre equestre', '19-01-2015', '168.00', '126', 1),
(11, 94, 'spectacle zenith', '19-01-2015', '52.00', '39', 1),
(12, 99, 'forfait danse classique', '19-01-2015', '360.00', '270', 1),
(13, 192, 'forfait ski', '21-01-2015', '36.50', '27.375', 1),
(14, 123, 'EntrÃ©e parc', '23-01-2015', '113.40', '85.05', 1),
(15, 155, 'DANSE HIP HOP', '25-01-2015', '101', '75.75', 1),
(16, 83, 'voyage scolaire', '26-01-2015', '178.50', '133.875', 1),
(17, 122, 'entrÃ©es parc', '09-02-2015', '120.40', '90.3', 1),
(18, 123, 'voyage scolaire', '09-02-2015', '110.00', '82.5', 1),
(21, 64, 'sortie ski', '11-02-2015', '43.00', '32.25', 1),
(22, 157, 'match de hand', '11-02-2015', '25.00', '18.75', 1),
(23, 86, 'CinÃ©ma (Invinsible)', '12-02-2015', '9', '6.75', 1),
(25, 97, 'cinema', '15-02-2015', '5.50', '4.125', 1),
(26, 98, 'cinema', '15-02-2015', '5.50', '4.125', 1),
(27, 101, 'fitness', '16-02-2015', '210.00', '157.5', 1),
(28, 207, 'metamorphose', '18-02-2015', '70.00', '52.5', 1),
(29, 71, 'CENTRE EQUESTRE ', '18-02-2015', '60.00', '45', 1),
(32, 206, 'CinÃ©ma + Bowling', '26-02-2015', '8', '6', 1),
(33, 209, 'CinÃ©ma + Bowling', '26-02-2015', '9.00', '6.75', 1),
(34, 83, 'forfait ski', '26-02-2015', '354.30', '186.125', 1),
(35, 175, 'stage hand', '26-02-2015', '425.00', '318.75', 1),
(37, 123, 'musÃ©e + marinland + petit train', '26-02-2015', '43.00', '32.25', 1),
(38, 165, 'spectacles + cinÃ©', '26-02-2015', '101.00', '75.75', 1),
(39, 122, 'MusÃ©e + Marinland + Petit Train', '26-02-2015', '39', '29.25', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Contenu de la table `remb_salarie`
--

INSERT INTO `remb_salarie` (`idrembsalarie`, `idsalarie`, `prestation`, `date_vente`, `montant_prestation`, `part_ce`, `etat_facture`) VALUES
(8, 201, 'Abonnement annuel Basic-Fit ', '07-01-2015', '370.80', '185.4', 1),
(9, 66, 'Championnat Mondial XTrial', '09-01-2015', '76', '38', 1),
(10, 210, 'spectacle', '14-01-2015', '300.00', '150', 1),
(11, 128, 'SKI', '17-01-2015', '106', '53', 1),
(12, 144, 'cyclotourisme', '19-01-2015', '52.00', '26', 1),
(13, 116, 'spectacle zenith', '19-01-2015', '48.00', '24', 1),
(14, 173, 'platinium', '19-01-2015', '448.00', '200', 1),
(15, 160, 'abonnement piscine', '19-01-2015', '235.00', '117.5', 1),
(16, 69, 'spectacle', '21-01-2015', '44.00', '22', 1),
(17, 238, 'forfait ski', '21-01-2015', '36.50', '18.25', 1),
(19, 222, 'spectacle', '25-01-15', '136', '68', 1),
(20, 79, 'METAMORPHOSE', '25-01-2015', '332.5', '166.25', 1),
(21, 171, 'BOWLING', '25-01-2015', '35', '17.5', 1),
(23, 178, 'match de hand', '11-02-2015', '50.00', '25', 1),
(25, 106, 'CinÃ© (Invinsible)', '12-02-2015', '9', '4.5', 1),
(26, 95, 'licence cyclo', '13-02-2015', '102.20', '51.1', 1),
(28, 119, 'carte de peche + cinema', '15-02-2015', '92.30', '46.15', 1),
(30, 171, 'BOWLING', '17-02-2015', '84.00', '42', 1),
(31, 203, 'carte de peche', '18-02-2015', '145.00', '72.5', 1),
(32, 109, 'FORFAIT SKI', '18-02-2015', '301.20', '150.6', 1),
(33, 138, 'Thermes de SALIES', '18-02-2015', '22.00', '11', 1),
(36, 238, 'fitness', '25-02-2015', '210.00', '105', 1),
(39, 251, 'CinÃ©ma + Bowling', '26-02-2015', '9.50', '4.75', 1),
(41, 139, 'musÃ©e + marinland', '26-02-2015', '87.80', '43.9', 1),
(42, 150, 'licence plongÃ©e', '26-02-2015', '293.00', '146.5', 1),
(43, 70, 'fitness', '26-02-2015', '201.00', '100.5', 1),
(44, 194, 'spectacle', '26-02-2015', '72.00', '36', 1),
(45, 171, 'forfait ski', '27-02-2015', '103.80', '51.9', 1),
(46, 100, 'Forfait Ski', '26-02-2015', '55.80', '27.9', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
(56, '00010000', 1, 'ABADO', 'NICOLAS', '7, Route de Lacq', '', '64370', 'ARTHEZ DE BEARN', '05 59 33 87 48', '', '', '05/05/1985', '', '', '', 'Automaticien', '255 A', '', 'CDI', 1, '200'),
(57, '00010002', 1, 'ABAJI', 'MOHAMMED', '7, All?e Vau Dyek', '', '64150', 'MOURENX', '', '06 44 27 33 69', 'mohammed.abaji@rexam.com', '25/03/1981', '', '', '', 'Planning', '270 A', '', 'CDI', 1, '200'),
(58, '00010224', 1, 'ADENIS', 'BERTRAND', '4, rue du Mar?chal Leclerc', '', '64150', 'MOURENX', '', '06 70 15 61 00', '', '17/11/1983', '', '', '', 'Automaticien', '215 B', '', 'CDI', 1, '200'),
(59, '00010003', 1, 'AIMAR', 'REMY', '9, rue Frida', '', '64150', 'MOURENX', '', '06 86 90 09 87', '', '02/01/1987', '', '', '', 'Op?rateur', '190 C', '', 'CDI', 1, '200'),
(60, '00010004', 3, 'AKHSASSI', 'FATIMA', '4, rue Voltaire', '', '64230', 'LESCAR', '05 59 81 26 34', '', 'fatima.akhassi@rexam.com', '27/01/1965', '', '', '', 'Comptabilit?', 'Cadre', '', 'CDI', 1, '200'),
(61, '00010005', 1, 'ALBANEL', 'HERVE', 'C R n?5', 'Cami de Pipaoutou', '64230', 'MOMAS', '05 59 33 87 48', '', '', '27/01/1969', '', '', '', 'R?gleur', '215  E', '', 'CDI', 1, '200'),
(62, '00010200', 2, 'ALCANTARA', 'BEATRICE', '2, Lot Communal', 'Lannem?nia', '64190', ' CASTETBON', '', '06 77 08 06 14', 'beatrice.alcantara@rexam.com', '30/10/1964', '', '', '', 'Personnel', '255 C', '', 'CDI', 1, '200'),
(63, '00010006', 1, 'ALCETEGARAY ', 'DANIEL', 'Bourg', '', '64190', 'ANGOUS', '05 59 66 03 91', '', '', '21/02/1966', '', '', '', 'Op?rateur', '215 D', '', 'CDI', 1, '200'),
(64, '00010007', 1, 'ALLAMAN ', 'NICOLAS', '43, rue des PyrÃ©nÃ©es', '', '64190', 'GURS', '', '06 30 08 55 58', '', '06/04/1984', '', '', '', 'MÃ©canicien', '240 A', '', 'CDI', 1, '100'),
(65, '00010008', 1, 'ALVES ', 'PAUL', '158 Route du Bourg', '', '40700', 'MOMUY', '', '06 88 64 25 63', '', '05/08/1966', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(66, '00010009', 1, 'AMIS ', 'CHRISTIAN', '7 place du Gabizos', '', '64150', 'MOURENX', '', '06 74 55 60 76', '', '10/04/1974', '', '', '', 'Op?rateur', '190 D', '', 'CDI', 1, '162'),
(67, '00010010', 1, 'ARANGOIS ', 'FRANCOIS', 'chemin de Cartouigt', '', '64270', 'SALIES DE BEARN', '05 59 38 32 07', '', 'francois.arangois@rexam.com', '27/07/1955', '', '', '', 'Automaticien', '305 C', '', 'CDI', 1, '200'),
(68, '00010011', 1, 'ARRICAU', 'ANDRE', 'quartier Augas', '', '64190', 'PRECHACQ-JOSBAIG', '05 59 88 03 68', '', 'pierette.arricau@orange.fr', '06/04/1967', '', '', '', 'Op?rateur', '215 B', '', 'CDI', 1, '100'),
(69, '00010013', 1, 'BALLESTEROS ', 'DIDIER', 'chemin de Bouhaben', 'Quartier Loupien', '64360', 'MONEIN', '05 59 21 43 88', '', '', '26/02/1964', '', '', '', 'Contr?leur', '190 F', '', 'CDI', 1, '178'),
(70, '00010014', 1, 'BAR ', 'GAETAN', '', '', '64300', 'SAULT DE NAVAILLES', '', '06 75 68 96 05', '', '29/01/1983', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '99.5'),
(71, '00010015', 1, 'BATBEDAT ', 'LAURENT', 'Chemin de LARTE', 'Quartier Castetarbe', '64300', 'ORTHEZ', '05 59 61 74 09', '', '', '24/08/1973', '', '', '', 'Op?rateur', '215 D', '', 'CDI', 1, '200'),
(72, '00010016', 1, 'BAYONA', 'GILLES', 'Avenue BRIAND', '', '64260', 'LOUVIE-JUZON', '05 59 05 85 82', '', '', '20/05/1962', '', '', '', 'R?gleur', '215 E', '', 'CDI', 1, '200'),
(73, '00010017', 1, 'BAZIARD', 'DIDIER', '963 Chemin Matachot', '', '64300', 'ORTHEZ', '05 59 69 28 13', '', '', '10/02/1958', '', '', '', 'Contr?leur', '215 D', '', 'CDI', 1, '200'),
(74, '00010231', 1, 'BENITO', 'KEVIN', '3, rue du Pic du Midi d''Ossau', '', '64150', 'MOURENX', '', '06 52 68 91 23', '', '03/11/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(75, '00010018', 1, 'BENZIN', 'REGIS', '5, Route d''Hagetaubin', 'Quartier N''Haux', '64370', 'ARTHEZ DE BEARN', '05 59 67 49 65', '', '', '01/12/1968', '', '', '', 'Outilleur', '215 G', '', 'CDI', 1, '200'),
(76, '00010019', 1, 'BERGEZ', 'ANDRE', '860, route de Sauveterre', '', '64300', 'LANNEPLAA', '05 59 67 03 51', '', '', '07/02/1956', '', '', '', 'Outilleur', '240 D', '', 'CDI', 1, '100'),
(77, '00010021', 1, 'BERGEZ', 'CEDRIC', '850, route de Sauveterre', '', '64300', 'LANNEPLAA', '', '06 78 67 34 30', '', '06/03/1982', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(78, '00010020', 1, 'BERGEZ', 'JEAN', 'Quartier COOS', '', '64360', 'MONEIN', '', '06 82 53 67 95', '', '20/02/1953', '', '', '', 'HSE', '305 F', '', 'CDI', 1, '200'),
(79, '00010215', 1, 'BERTELOOT', 'KEVIN', '174, all?es des c?dres', 'Appt 4 B?t. A', '64150', 'MOURENX', '05 59 04 06 51', '', '', '10/09/1991', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '33.75'),
(80, '00010022', 3, 'BIDART', 'CHARLOTTE', '5, rue Bernard Coqu?', '', '64150', 'MOURENX', '', '06 29 02 26 64', '', '24/06/1988', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(81, '00010217', 1, 'BIDART', 'MARCEL', 'Quartier Camous', '', '64190', 'PRECHACQ-JOSBAIG', '', '06 30 81 43 46', 'marcel.bidart@neuf.fr', '25/01/1969', '', '', '', 'Op?rateur', '215 B', '', 'CDI', 1, '100'),
(82, '00010238', 1, 'BIDART', 'MICKAEL', '4, rue de la Sabli?re', '', '64400', 'LEDEUIX', '', '06 85 45 26 45', '', '27/09/1991', '', '', '', 'Op?rateur', '190 B', '', 'CDI', 1, '100'),
(83, '00010023', 1, 'BLEIN', 'VINCENT', '304, Route de PAU', 'Quartier Soarns', '64300', 'ORTHEZ', '05 59 69 44 41', '', '', '22/03/1974', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(84, '00010024', 1, 'BLOEMZAAD ', 'DANIEL', '16, rue des Edelweiss', '', '64360', 'MONEIN', '', '06 86 38 27 65', '', '20/05/1960', '', '', '', 'Op?rateur', '215 F', '', 'CDI', 1, '200'),
(85, '00010233', 1, 'BONNINGUE ', 'VINCENT', '15, Route du Foirail', '', '64370', 'ARTHEZ DE BEARN', '', '06 37 87 05 25', '', '27/12/1979', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(86, '00010025', 1, 'BORDATTO', 'SERGE', 'Quartier Augas et Lanot', '', '64190', 'PRECHACQ-JOSBAIG', '09 67 00 54 05', '', '', '20/09/1968', '', '', '', 'R?gleur', '215 G', '', 'CDI', 1, '100'),
(87, '00010026', 1, 'BORDENAVE', 'MAX', '23, rue du Vieux Mont', '', '64300', 'MONT', '', '06 29 02 93 25', '', '21/02/1977', '', '', '', 'Op?rateur', '190 C', '', 'CDI', 1, '200'),
(88, '00010027', 1, 'BORDENEUVE', 'PATRICK', '24, Chemin du bois', '', '64400', 'SAINT-GOIN', '05 59 88 02 18', '', 'patrick.bordeneuve@wanadoo.fr', '21/07/1961', '', '', '', 'Op?rateur', '215 E', '', 'CDI', 1, '100'),
(89, '00010198', 1, 'BOUCHET', 'GERARD', '21 bis, Les Epineraises ', '', '28250', 'LE MESNIL THOMAS', '', '06 79 47 01 85', 'gerard.bouchet@rexam.com', '04/11/1956', '', '', '', 'CTS', 'Cadre', '', 'CDI', 1, '200'),
(90, '00010028', 1, 'BOUDERLIQUE', 'DIDIER', 'Route d''UCHA', '', '64360', 'MONEIN', '05 59 21 44 52', '', '', '17/01/1959', '', '', '', 'Gestionnaire', '225 B', '', 'CDI', 1, '200'),
(91, '00010029', 1, 'BOURG', 'CHRISTOPHE', '13, cap de Lalanne', '', '64170', 'ARTIX', '', '06 66 16 08 52', '', '29/07/1971', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(93, '00010031', 1, 'BRACH', 'JULIEN', '12, chemin Peyrot', '', '64150', 'VIELLESEGURE', '', '06 25 48 08 03', '', '24/03/1984', '', '', '', 'Op?rateur', '190 B', '', 'CDI', 1, '200'),
(94, '00010032', 1, 'BREGNIAS', 'MARC', 'Quartier Augas', '', '64190', 'PRECHACQ-JOSBAIG', '05 59 88 03 87', '', '', '03/06/1961', '', '', '', 'Outilleur', '255 D', '', 'CDI', 1, '200'),
(95, '00010036', 1, 'BRUN', 'GILLES', '2, all?e du Hameau', '', '64320', 'BIZANOS', '05 59 27 51 44', '', '', '21/03/1959', '', '', '', 'Op?rateur', '190 C', '', 'CDI', 1, '148.9'),
(96, '00010035', 1, 'BRUN', 'DENIS', 'Domaine du Sarrot - 18, Av Rauski', '', '64110', 'JURANCON', '05 59 27 88 01', '', 'jean-denis.brun@rexam.com', '15/05/1963', '', '', '', 'Directeur', 'Cadre', '', 'CDI', 1, '200'),
(97, '00010037', 1, 'BRUNE', 'MICHEL', '1, rue de la Carr?re', '', '64300', 'MASLACQ', '', '06 51 43 22 70', 'michel.brune@rexam.com', '23/09/1966', '', '', '', 'Chef de Poste', '305  E', '', 'CDI', 1, '200'),
(98, '00010038', 1, 'CABANE-CHRESTIA', 'CHRISTOPHE', 'Rue d''Aspe prolong?e', 'Maison St?fania', '64400', 'OLORON SAINTE MARIE', '05 59 39 56 48', '', '', '28/10/1973', '', '', '', 'Op?rateur', '215 C', '', 'CDI', 1, '200'),
(99, '00010239', 2, 'CABANNE ', 'JOSETTE', '324, chemin P?delahore', '', '64170', 'ARTIX', '', '06 83 74 58 32', '', '14/04/1964', '', '', '', 'Contr?leur', '190 A', '', 'CDI', 1, '200'),
(100, '00010039', 1, 'CALVO ', 'MICHEL', '5, rue Marc Antoine de No?', '', '64230', 'LESCAR', '05 59 62 97 26', '', '', '18/02/1961', '', '', '', 'R?gleur', '215 D', '', 'CDI', 1, '172.1'),
(101, '00010040', 1, 'CAMBOT', 'FRANCIS', 'Quartier Ucha', '', '64360', 'MONEIN', '05 59 21 34 41', '', '', '10/09/1967', '', '', '', 'Op?rateur', '215 E', '', 'CDI', 1, '200'),
(102, '00010041', 1, 'CAMPAGNE', 'FRANCK', '229, chemin de LARROUY', '', '64300', 'LAA-MONDRANS', '', '06 22 10 84 46', '', '02/05/1971', '', '', '', 'Op?rateur', '215 D', '', 'CDI', 1, '200'),
(103, '00010221', 1, 'CARDON', 'SEBASTIEN', 'Maison Plaie du Golf - Villa 1', '5, Impasse de la Plaine', '64140', 'BILLERE', '', '06 09 36 17 61', '', '18/11/1991', '', '', '', 'Stagiaire', '170 A', '', 'Stagiaire', 1, '200'),
(104, '00010248', 1, 'CHARDIN', 'SEBASTIEN', '10, rue de l''Embard?re', '', '64300', 'LENDRESSE', '', '06 18 74 51 02', '', '13/09/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(105, '00010039', 1, 'CARRASQUET', 'ANDRE', '29, place de la fontaine', '', '64150', 'VIELLESEGURE', '05 59 60 45 60', '', '', '07/12/1957', '', '', '', 'Outilleur', '255 B', '', 'CDI', 1, '200'),
(106, '00010197', 1, 'CASAIL', 'CHRISTOPHE', ' 2, Rue Claude Monet', '', '59229', 'TETEGHEN', '', '06 80 89 16 22', 'christophe.casail@rexam.com', '27/01/1965', '', '', '', 'CTS', 'Cadre', '', 'CDI', 1, '195.5'),
(107, '00010043', 1, 'CASAMAJOU', 'BERNARD', '26, rue St-Barth?l?my', 'BIXKAIAN                        ', '64130', 'CHERAUTE', '', '06 16 83 27 44', 'jean-bernard.casamajou@rexam.com', '10/09/1973', '', '', '', 'Projet', '305 F', '', 'CDI', 1, '200'),
(108, '00010040', 1, 'CASANOVA', 'FRANCK', '24, chemin des Meuniers', '1 Lotissement Denot', '64360', 'MONEIN', '', '06 80 11 94 60', '', '17/08/1982', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(109, '00010041', 1, 'CASSOUS', 'OLIVIER', '573, chemin Lartigau', '', '64170', 'CESCAU', '05 59 53 90 34', '', '', '18/07/1970', '', '', '', 'Outilleur', '255 E', '', 'CDI', 1, '49.4'),
(110, '00010203', 3, 'CAZALERE', 'CHRISTELLE', '9, rue Bagn?res', '', '64360', 'ABOS', '', '06 70 04 93 28', 'christelle.cazalere@rexam.com', '09/03/1976', '', '', '', 'Personnel', '255 B', '', 'CDI', 1, '200'),
(111, '00010047', 1, 'CAZANAVE-HOURQUET', 'FERNAND', 'Quartier Lamarquette', '', '64360', 'LUCQ DE BEARN', '05 59 71 69 66', '', '', '03/03/1964', '', '', '', 'Op?rateur', '190 B', '', 'CDI', 1, '200'),
(112, '00010048', 1, 'CHAUSSADAS ', 'ALAIN', '2334, Route de Noarrieu', '', '64300', 'CASTETIS', '05 59 67 12 84', '', '', '20/06/1963', '', '', '', 'Contr?leur', '190 E', '', 'CDI', 1, '200'),
(113, '00010049', 1, 'CHAUSSADAS ', 'YVES', '1760, Route de Boneh?', '', '64370', 'MESPLEDE', '05 59 67 54 10', '', '', '06/12/1960', '', '', '', 'Contr?leur', '215 D', '', 'CDI', 1, '200'),
(114, '00010050', 1, 'CIOSSE ', 'BRUNO', '9, rue des lannes', '', '64150', 'MOURENX', '', '06 85 91 81 47', 'bruno.ciosse@rexam.com', '12/12/1970', '', '', '', 'R?gleur', '215 D', '', 'CDI', 1, '200'),
(115, '00010052', 1, 'CLAVE ', 'PAUL', 'Quartier Haut Candeloup', '', '64360', 'MONEIN', '', '06 81 09 65 09', 'jeanpaul.clave@gmail.com', '27/11/1957', '', '', '', 'R?gleur', '215 G', '', 'CDI', 1, '200'),
(116, '00010053', 1, 'CLAVERIE', 'THIERRY', '27, Chemin de Bertrand', '', '64150', 'NOGUERES', '05 59 71 71 30', '', '', '11/09/1972', '', '', '', 'Op?rateur', '215 E', '', 'CDI', 1, '76'),
(117, '00010054', 1, 'CORNOUILLER', 'JULIEN', '14, Avenue de la RÃ©publique', '', '64140', 'BILLERE', '', '06 79 62 76 09', '', '12/04/1986', '', '', '', 'MÃ©canicien', '240 A', '', 'CDI', 1, '200'),
(118, '00010055', 1, 'CORREIA', 'CHRISTOPHE', '19, rue de l''Ecole', '', '64300', 'MONT', '05 59 69 26 77', '', '', '14/09/1971', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(119, '00010057', 1, 'CUISINIER', 'BORIS', 'Route de LonÃ§on', '', '64450', 'BOURNOS', '05 59 33 82 25', '', '', '27/10/1973', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '153.85'),
(120, '00010058', 1, 'DA FONSECA', 'JOSE', 'Camin de la Crotz de Lopin', '', '64150', 'SAUVELADE', '', '06 15 15 40 71', '', '11/11/1975', '', '', '', 'Automaticien', '215 B', '', 'CDI', 1, '100'),
(121, '00010059', 1, 'DA SILVA', 'JOSE', 'chemin de l''Ecole', '', '64150', 'SAUVELADE', '05 59 67 68 32', '', '', '15/08/1973', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(122, '00010060', 1, 'DANTEIN', 'YANNICK', '4, rue Jean Jaur?s', '', '64800', 'COARRAZE', '', '06 37 88 95 99', '', '16/10/1981', '', '', '', 'Op?rateur', '190 C', '', 'CDI', 1, '200'),
(123, '00010229', 1, 'DARRACQ', 'ADRIEN', '570, chemin d?partemental 31', '', '64300', 'LABEYRIE', '05 59 67 58 96', '', '', '18/08/1997', '', '', '', 'Stagiaire', '170 A', '', 'CDI', 1, '200'),
(124, '00010061', 1, 'DARRACQ', 'CHRISTOPHE', '570, chemin d?partemental 31', '', '64300', 'LABEYRIE', '05 59 67 58 96', '', 'christophe.darracq@rexam.com', '17/10/1970', '', '', '', 'Resp. Outil', '305 E', '', 'CDI', 1, '200'),
(125, '00010062', 1, 'DARRACQ', 'FREDERIC', '34, chemin de Talabot', '', '40700', 'BEYRIES', '', '06 85 88 15 59', '', '16/08/1972', '', '', '', 'Automaticien', '255 E', '', 'CDI', 1, '200'),
(126, '00010064', 1, 'DARIGUELONGUE', 'CHRISTOPHE', '23, chemin Hia de P?re', '', '64300', 'BIRON', '05 59 69 93 77', '', '', '17/05/1979', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(127, '00010206', 1, 'DATHY', 'FRANCK', '8, avenue Marguerite de Navarre', '', '64230', 'LESCAR', '05 59 77 47 20', '', 'franck.dathy@rexam.com', '07/04/1977', '', '', '', 'Resp. Qual', 'Cadre', '', 'CDI', 1, '200'),
(128, '00010065', 1, 'DAUBA ', 'BAPTISTE', '35, Chemin du Bosc', '', '64370', 'ARTHEZ DE BEARN', '', '06 77 47 24 00', 'baptiste.dauba@hotmail.fr', '02/02/1986', '', '', '', 'Automaticien', '255 A', '', 'CDI', 1, '147'),
(129, '00010066', 1, 'DAUBAS', 'MICHEL', 'Chemine Hourquebie', '', '64300', 'SARPOURENX', '05 47 06 07 48', '', '', '07/01/1972', '', '', '', 'Op?rateur', '190 C', '', 'CDI', 1, '200'),
(130, '00010067', 1, 'DE MIGUEL', 'FELIX', 'Lotissement Latch?re', '', '64130', 'GARENDEIN', '05 59 28 21 94', '', '', '12/12/1955', '', '', '', 'Outilleur', '255 C', '', 'CDI', 1, '100'),
(131, '00010068', 1, 'DE MIJOLLA ', 'HUBERT', '2776, Coteaux de Guindalos', '', '64110', 'JURANCON', '05 59 68 71 86', '', 'hubert.demijolla@rexam.com', '18/08/1956', '', '', '', 'Chef Projet', 'Cadre', '', 'CDI', 1, '200'),
(132, '00010069', 1, 'DECROUE ', 'DIDIER', '2, Cami Bieilh', '', '64170', 'LABASTIDE-CEZERACQ', '05 59 04 15 21', '', 'didier.decroue@rexam.com', '12/11/1968', '', '', '', 'Informaticien', 'Cadre', '', 'CDI', 1, '100'),
(133, '00010070', 1, 'DEL PIANTA ', 'ALEXANDRE', '12, rue du Castera', '', '64150', 'MOURENX', '05 59 71 69 74', '', '', '08/09/1962', '', '', '', 'Outilleur', '255 A', '', 'CDI', 1, '200'),
(134, '00010218', 1, 'DEPUYT ', 'BENOIT', '77, chemin de la Lande', '', '40290', 'MISSON', '', '06 43 30 50 51', 'benoit.depuyt@rexam.com', '14/07/1976', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(135, '00010075', 1, 'DUPLAA ', 'PATRICK', 'Maison Labie', '', '64270', 'RAMOUS', '05 59 65 12 09', '', '', '10/08/1957', '', '', '', 'M?canicien', '240 A', '', 'CDI', 1, '200'),
(136, '00010072', 1, 'DOLLE ', 'LAURENT', '80, Cemin de Treyti', '', '64370', 'HAGETAUBIN', '05 59 67 52 27', '', '', '21/10/1975', '', '', '', 'Op?rateur', '190 E', '', 'CDI', 1, '200'),
(137, '00010073', 1, 'DRIVON ', 'HAROLD', '714, chemin Eslayas', '', '64300', 'CASTETIS', '', '06 03 87 83 72', 'harold.drivon@rexam.com', '01/01/1971', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(138, '00010074', 1, 'DULAU ', 'EMMANUEL', '238, chemin d''Arrignan', '', '64300', 'SAINT GIRONS EN BEARN', '05 59 67 94 60', '', '', '12/12/1969', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '189'),
(139, '00010077', 2, 'LAGRAULA-DUROU', 'SOPHIE', '50, route de Mimbaste', '', '40180', 'SAUGNACQ ET CAMBRAN', '', '06 86 96 49 60', 'sophie.lagraula@rexam.com', '11/06/1974', '', '', '', 'SecrÃ©taire', '270 A', '', 'CDI', 1, '156.1'),
(140, '00010078', 1, 'DUTILH', 'LILIAN', '10, rue du Luzoue', 'R?sidence le Luzoue', '64150', 'MOURENX', '05 59 60 14 11', '', '', '22/11/1968', '', '', '', 'Op?rateur', '215 F', '', 'CDI', 1, '200'),
(141, '00010079', 1, 'DUVIGNAU', 'PATRICE', '2, impasse des Marguerites', '', '64230', 'DENGUIN', '05 59 68 82 63', '', '', '15/08/1976', '', '', '', 'Op?rateur', '190 D', '', 'CDI', 1, '200'),
(142, '00010080', 1, 'EL-KANDOUSSI', 'MOHAMED', '3, place du Gabizos', '', '64150', 'MOURENX', '', '06 50 72 20 80', '', '27/10/1965', '', '', '', 'M?canicien', '240 B', '', 'CDI', 1, '200'),
(143, '00010082', 1, 'ESTEFFE', 'JEAN', '62, Chemin Poublan', '', '64300', 'ARGAGNON', '05 59 67 42 56', '', 'jean.esteffe@rexam.com', '13/07/1953', '', '', '', 'Achat', '270 D', '', 'CDI', 1, '200'),
(144, '00010083', 1, 'ETCHEVERRY', 'JACQUES', '3, rue de l''Aygue-Longue', '', '64121', 'SERRES-CASTET', '05 59 33 11 40', '', '', '21/03/1954', '', '', '', 'Op?rateur', '215 D', '', 'CDI', 1, '174'),
(145, '00010084', 1, 'EUSEBIO', 'MANUEL', '58, Chemin Poublan', '', '64300', 'ARGAGNON', '', '06 22 48 00 60', 'manuel.eusebio@rexam.com', '20/10/1968', '', '', '', 'Resp. M?cano', '305 C', '', 'CDI', 1, '200'),
(146, '00010214', 1, 'FERTOUTI', 'MUSTAPHA', '32, rue du Luzoue', '', '64150', 'MOURENX', '', '06 20 41 91 81', 'mustapha.fertouti@rexam.com', '19/07/1969', '', '', '', 'Exp?ditions', '225 A', '', 'CDI', 1, '200'),
(147, '00010085', 1, 'FOLIN', 'MICKAEL', '4, route de Puyet', '', '64370', 'ARTHEZ DE BEARN', '', '07 86 16 09 90', '', '19/06/1986', '', '', '', 'Op?rateur', '190 E', '', 'CDI', 1, '200'),
(148, '00010087', 1, 'FONSECA', 'PHILIPPE', '39, domaine de la Ch?nerie', '', '64170', 'ARTIX', '', '06 77 88 90 68', '', '03/09/1983', '', '', '', 'Op?rateur', '215 B', '', 'CDI', 1, '200'),
(149, '00010088', 1, 'FOURNIER', 'DOMINIQUE', 'Quartier Pont du Joss', '', '64190', 'PRECHACQ-JOSBAIG', '', '06 83 09 23 30', 'dominique.fournier@rexam.com', '24/07/1963', '', '', '', 'Chef de Poste', '285 C', '', 'CDI', 1, '200'),
(150, '00010089', 1, 'FOURQUET', 'GILLES', 'Quartier des Yolettes', '', '64360', 'MONEIN', '05 59 21 41 26', '', 'gilles.fourquet@rexam.com', '01/05/1966', '', '', '', 'Resp. Prod', 'Cadre', '', 'CDI', 1, '53.5'),
(151, '00010090', 1, 'GALLARDO', 'FREDERIC', 'Route de Casteide-Candau', '', '64410', 'ARGET', '', '06 42 96 33 41', '', '14/11/1981', '', '', '', 'M?canicien', '255 C', '', 'CDI', 1, '200'),
(152, '00010091', 1, 'GIACOMIN', 'LOUIS', '70, Chemin de Lahonce', '', '40360', 'POMAREZ', '05 58 89 88 03', '', '', '15/11/1959', '', '', '', 'R?gleur', '215 E', '', 'CDI', 1, '200'),
(153, '00010092', 1, 'GONCALVES NEIVA ', 'FREDERIC', 'Chemin des Ecoles', '', '64150', 'SAUVELADE', '05 59 67 30 46', '', '', '13/03/1979', '', '', '', 'Op?rateur', '215 B', '', 'CDI', 1, '100'),
(154, '00010093', 1, 'GRACIET ', 'PATRICK', '298, route de Lucq de B?arn', '', '64150', 'LAHOURCADE', '', '06 72 33 04 54', 'patrick.graciet@rexam.com', '12/06/1958', '', '', '', 'Exp?ditions', '225 G', '', 'CDI', 1, '100'),
(155, '00010094', 1, 'GUION ', 'MARC', '64, Cami de la Houn', '', '64300', 'SAULT DE NAVAILLES', '', '06 84 65 18 70', 'jeanmarcguion@yahoo.fr', '04/12/1971', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(156, '00010247', 1, 'GUYON ', 'MATTHIEU', '12, Rue des Pyr?n?es', '', '64230', 'DENGUIN', '', '06 16 99 64 70', '', '17/11/1981', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '100'),
(157, '00010096', 1, 'HOSTENDIE', 'PATRICK', '6, Place du Pic d''Anie', 'R?sidence Les Arres d''Anie', '64150', 'MOURENX', '', '06 14 58 02 36', '', '07/05/1965', '', '', '', 'Op?rateur', '215 D', '', 'CDI', 1, '200'),
(158, '00010097', 1, 'HOUIS', 'FRANCOIS', '34, Av Mar?chal Joffre', '', '64150', 'MOURENX', '', '06 72 68 15 88', 'jeff964@hotmail.fr', '13/09/1978', '', '', '', 'Automaticien', '255 A', '', 'CDI', 1, '200'),
(159, '00010098', 3, 'HOURDILLE', 'THERESE', '14, rue de Bit?te', '', '64400', 'OLORON SAINTE MARIE', '', '06 74 33 97 62', 'therese.hourdille@rexam.com', '11/12/1966', '', '', '', 'Magasin', '255 B', '', 'CDI', 1, '200'),
(160, '00010100', 1, 'HYGEN', 'DOMINIQUE', 'Quartier Camou', '', '64150', 'MOURENX-BOURG', '', '06 81 72 91 63', '', '22/01/1959', '', '', '', 'R?gleur', '215 E', '', 'CDI', 1, '82.5'),
(161, '00010101', 1, 'JACKOWSKI', 'LIONEL', '734, route d?partementale 945', '', '64300', 'LACADEE', '', '06 85 46 11 88', 'lionel.jackowski@rexam.com', '27/01/1972', '', '', '', 'Chef de Poste', '285 B', '', 'CDI', 1, '200'),
(162, '00010102', 1, 'JAUREGUIBERRY ', 'BRUNO', '1715, chemin du Cami Sali?', '', '64710', 'LABASTIDE MONREJEAU', '', '06 87 91 22 78', '', '30/10/1974', '', '', '', 'M?canicien', '240 C', '', 'CDI', 1, '100'),
(163, '00010103', 1, 'JIMENEZ ', 'FREDERIC', '3, rue du vieux lavoir', '', '64150', 'MOURENX', '', '06 98 26 48 41', '', '07/04/1969', '', '', '', 'Gestionnaire', '215 D', '', 'CDI', 1, '200'),
(164, '00010234', 1, 'JOUANNES ', 'MAXIMILIEN', '42, rue Bergou?', '', '64370', 'ARTHEZ DE BEARN', '', '06 72 70 26 61', '', '25/07/1990', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(165, '00010219', 3, 'JUNGAS ', 'CELINE', 'Quartier Ucha, Chemin Tauzy', '', '64300', 'MONEIN', '', '06 24 56 89 99', 'celine.jungas@rexam.com', '07/01/1983', '', '', '', 'Resp. HSE', 'Cadre', '', 'CDI', 1, '200'),
(166, '00010230', 2, 'KOCIS', 'SARAH', '23, rue Bernadotte', '', '64000', 'PAU', '', '06 68 83 42 42', 'sarah.kocis@rexam.com', '30/12/1983', '', '', '', 'RH', 'Cadre', '', 'CDI', 1, '200'),
(167, '00010105', 1, 'LABAT', 'FREDERIC', 'Chemin de la Campagne', '', '64190', 'SUSMIOU', '', '06 73 70 25 25', '', '24/10/1970', '', '', '', 'Op?rateur', '190 D', '', 'CDI', 1, '200'),
(168, '00010106', 1, 'LABOURDETTE', 'PIERRE', 'Quartier Lafontan', '', '64410', 'ARZACQ', '05 59 04 57 12', '', '', '17/06/1954', '', '', '', 'Op?rateur', '215 B', '', 'CDI', 1, '200'),
(169, '00010107', 1, 'LACABARATS  ', 'BERTRAND', '5, impasse des Pyr?n?es', '', '64300', 'MASLACQ', '', '06 07 51 32 50', '', '02/10/1982', '', '', '', 'Op?rateur', '190 D', '', 'CDI', 1, '200'),
(170, '00010108', 1, 'LACABARATS  ', 'GILBERT', 'Route de Puyoo', '', '64270', 'SALIES DE BEARN', '', '06 84 96 88 13', '', '01/03/1958', '', '', '', 'Contr?leur', '215 A', '', 'CDI', 1, '200'),
(171, '00010109', 1, 'LACARRIEU-HAURAT ', 'JEAN PIERRE', '3, rue Lagrange', '', '64150', 'MOURENX', '05 59 60 21 34', '', '', '16/03/1973', '', '', '', 'Op?rateur', '215 C', '', 'CDI', 1, '88.6'),
(172, '00010111', 1, 'LACOSTE', 'REMY', 'Bourg', '', '64870', 'ESCOUT', '', '06 30 88 38 36', '', '27/08/1966', '', '', '', 'Op?rateur', '190 D', '', 'CDI', 1, '200'),
(173, '00010114', 1, 'LADAURADE ', 'FABIEN', '54, avenue du Tonkin', '', '64140', 'LONS', '', '06 24 67 12 30', '', '04/11/1985', '', '', '', 'Op?rateur', '190 D', '', 'CDI', 1, '0'),
(174, '00010113', 1, 'LADAURADE ', 'THIERRY', '1, avenue des Nives', '', '64150', 'MOURENX', '', '06 06 45 86 39', '', '16/03/1958', '', '', '', 'Contr?leur', '215 E', '', 'CDI', 1, '200'),
(175, '00010116', 1, 'LAHORE-LAHITTE ', 'MARC', 'Quartier Larincq', '', '64360', 'MONEIN', '05 59 04 25 39', '', '', '03/06/1965', '', '', '', 'Outilleur', '255 B', '', 'CDI', 1, '200'),
(176, '00010117', 1, 'LAMOTHE ', 'BRUNO', 'Le R?gent', 'Au Bourg', '40700', 'MANT', '05 58 79 23 53', '', '', '07/01/1967', '', '', '', 'Gestionnaire', '225 C', '', 'CDI', 1, '200'),
(177, '00010118', 1, 'LAMOURE-LABADIE ', 'MICHEL', '99, chemin Poey', '', '64170', 'CESCAU', '', '06 18 92 87 44', '', '12/04/1967', '', '', '', 'Outilleur', '240 B', '', 'CDI', 1, '200'),
(178, '00010119', 1, 'LAMOURET', 'JOEL', '819, route d''Arthez de B?arn', '', '64300', 'CASTETIS', '05 59 67 83 67', '', '', '24/06/1966', '', '', '', 'R?gleur', '215 E', '', 'CDI', 1, '175'),
(179, '00010120', 1, 'LANOUE', 'LAURENT', '16, rue de la Bielle', '', '64190', 'DOGNEN', '', '06 82 67 33 25', 'laurent.lanoue@rexam.com', '23/03/1972', '', '', '', 'Magasin', '215 C', '', 'CDI', 1, '100'),
(180, '00010122', 1, 'LASSOURREILLE', 'ALEXANDRE', '49, rue Lapeyr?re', '', '64300', 'ORTHEZ', '', '06 72 92 46 13', '', '30/08/1980', '', '', '', 'Contr?leur', '215 E', '', 'CDI', 1, '200'),
(181, '00010123', 1, 'LAVALLARD ', 'CHRISTOPHE', '4, rue du vieux lavoir', '', '64150', 'MOURENX', '05 59 71 63 04', '', '', '27/05/1962', '', '', '', 'R?gleur', '215 F', '', 'CDI', 1, '200'),
(182, '00010125', 1, 'LEHMANN ', 'GERARD', '28, Cote du Mouscar', '', '64110', 'ST FAUST', '', '06 03 10 08 49', '', '25/05/1962', '', '', '', 'M?canicien', '240 B', '', 'CDI', 1, '200'),
(183, '00010126', 1, 'LOPEZ  ', 'ISMAEL', '91, rue Honor? de Balzac', '', '64170', 'ARTIX', '', '06 18 32 29 10', '', '20/09/1979', '', '', '', 'Gestionnaire', '225 B', '', 'CDI', 1, '200'),
(184, '00010127', 1, 'LOPEZ  ', 'OLIVIER', '1, rue de Lannes', '', '64150', 'MOURENX', '', '06 73 03 54 24', '', '06/09/1986', '', '', '', 'Automaticien', '240 C', '', 'CDI', 1, '200'),
(185, '00010246', 1, 'LORILLOT', 'MARIO', '5, Avenue Pasteur', '', '64150', 'MOURENX', '', '06 78 28 88 71', '', '16/01/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(186, '00010129', 1, 'LUBEREILH', 'ROGER', '3, impasse des vignes', 'Lotissement le Prince', '64170', 'ARTIX', '05 59 71 54 46', '', '', '19/05/1957', '', '', '', 'Outilleur', '255 C', '', 'CDI', 1, '200'),
(187, '00010130', 1, 'LUPIAC', 'CLAUDE', '3 rue de la Carr?re', 'Quartier Os', '64150', 'OS MARSILLON', '05 59 60 29 28', '', 'lupiac.claude@neuf.fr', '24/12/1963', '', '', '', 'Op?rateur', '215 E', '', 'CDI', 1, '200'),
(188, '00010131', 1, 'LUZIER', 'JOFFREY', '15, route de Bayonne', ' Appt. 64 R?s. Wellington', '64140', 'BILLERE', '', '06 60 77 97 96', '', '23/11/1975', '', '', '', 'Op?rateur', '190 D', '', 'CDI', 1, '200'),
(189, '00010132', 1, 'MAIRAL', 'JULIEN', 'Chemin Deus Esquiots', '', '64360', 'PARBAYSE', '', '06 17 53 05 31', '', '13/02/1984', '', '', '', 'M?canicien', '240 C', '', 'CDI', 1, '200'),
(190, '00010133', 1, 'MALABAT', 'MICHEL', '6, route de PAU', '', '64360', 'ABOS', '05 59 60 03 16', '', '', '04/11/1964', '', '', '', 'Contr?leur', '190 C', '', 'CDI', 1, '200'),
(191, '00010134', 1, 'MARATRAT', 'AMANDINE', '4, impasse St Pierre', '', '64360', 'MONT', '', '06 40 94 70 87', 'amandu64@live.fr', '22/08/1988', '', '', '', 'Op?rateur', '190 C', '', 'CDI', 1, '200'),
(192, '00010135', 1, 'MARLADOT', 'OLIVIER', 'Quartier Galoubet', 'Vieille Route de Castetarbe', '64300', 'ORTHEZ', '05 59 67 16 11', '', '', '06/01/1971', '', '', '', 'Op?rateur', '215 B', '', 'CDI', 1, '200'),
(193, '00010228', 1, 'MARTET', 'BRICE', '7, impasse Marc Chagall', '', '40000', 'MONT DE MARSAN', '', '06 99 47 68 73', '', '31/07/1995', '', '', '', 'Stagiaire', '170 A', '', 'Stagiaire', 1, '200'),
(194, '00010137', 1, 'MARTINEZ', 'ALAIN', '15, rue du muguet', '', '64150', 'PARDIES', '', '06 37 52 81 75', '', '02/01/1961', '', '', '', 'Outilleur', '255 C', '', 'CDI', 1, '164'),
(195, '00010138', 1, 'MARTINS DE LIMA', 'PAUL', 'Rue Ingres', 'Lotissement Lous Mesples n?1', '64170', 'ARTIX', '05 59 83 20 45', '', '', '18/06/1981', '', '', '', 'Op?rateur', '215 B', '', 'CDI', 1, '200'),
(196, '00010232', 1, 'MARTINS DE LIMA', 'CHRISTOPHE', 'Rue Ingres', 'Lotissement Lous Mesples n?1', '64170', 'ARTIX', '', '06 40 22 46 07', '', '15/08/1990', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(197, '00010139', 1, 'MASSE ', 'JORIS', 'Place St Pierre', 'Appt. 2', '64300', 'MONT', '', '06 73 64 78 52', '', '22/10/1985', '', '', '', 'Op?rateur', '190 C', '', 'CDI', 1, '200'),
(198, '00010140', 1, 'MASSEY', 'YAN', '10, chemin Mirassou', '', '64150', 'LAGOR', '', '06 61 29 28 86', 'yanmassey@hotmail.com', '07/10/1980', '', '', '', 'Outilleur', '240 B', '', 'CDI', 1, '200'),
(199, '00010141', 1, 'MAURY', 'PHILIPPE', '67, rue Moncade', '', '64300', 'ORTHEZ', '', '06 10 67 76 17', '', '25/07/1963', '', '', '', 'Op?rateur', '215 D', '', 'CDI', 1, '200'),
(200, '00010240', 2, 'MAZURIER', 'SYLVIE', '20, avenue de Saragosse', '', '64000', 'PAU', '', '06 18 65 49 49', '', '26/05/1967', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '100'),
(201, '00010243', 3, 'MICHE', 'GAELLE', 'Chemin d''Abos', '', '64360', 'PARBAYSE', '', '06 26 02 30 22', 'gaelle.miche@rexam.com', '22/04/1989', '', '', '', 'Contrat Pro RH', '170 A', '', 'Contrat Pro', 1, '14.6'),
(202, '00010144', 1, 'MILAGE  ', 'ANDRE', 'Bourg', '', '64190', 'RIVEHAUTE', '05 59 38 68 46', '', '', '24/08/1960', '', '', '', 'Cariste', '170 G', '', 'CDI', 1, '200'),
(203, '00010143', 1, 'MILAGE  ', 'CHRISTIAN', 'Residence du Parc', 'Batiment B -Porte n?8', '64300', 'ORTHEZ', '05 59 69 14 54', '', '', '21/04/1951', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '127.5'),
(204, '00010143', 1, 'MOLENAT', 'STEPHANE', '7, chemin de Nogu?res', '', '64150', 'MOURENX BOURG', '', '06 98 28 08 31', 'molenat.stephane@gmail.com', '11/10/1984', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(205, '00010144', 1, 'MORAL', 'JEREMIE', '142, chemin de Vergez', '', '64150', 'LAHOURCADE', '', '06 25 67 43 80', '', '26/03/1980', '', '', '', 'Op?rateur', '215 B', '', 'CDI', 1, '200'),
(206, '00010148', 1, 'MOURCEL', 'THIERRY', '7, rue St Vincent de Paul', '', '64150', 'MOURENX', '', '06 70 06 94 99', '', '02/06/1969', '', '', '', 'M?canicien', '240 B', '', 'CDI', 1, '200'),
(207, '00010150', 1, 'MOUSQUES DIT CABANOT ', 'FREDERIC', '9, rue Bagn?res', '', '64360', 'ABOS', '', '06 32 36 61 12', '', '21/12/1979', '', '', '', 'Automaticien', '255 B', '', 'CDI', 1, '200'),
(208, '00010149', 1, 'MOUSQUES DIT CABANOT ', 'STEPHANE', '9, rue des Lannes', '', '64150', 'MOURENX', '05 59 60 40 58', '', '', '26/02/1974', '', '', '', 'R?gleur', '215 F', '', 'CDI', 1, '100'),
(209, '00010227', 3, 'MOUZAT', 'MORGANE', '44, rue de Nogaro', '', '64000', 'PAU', '', '06 66 40 27 96', 'morgane.mouzat@rexam.com', '02/09/1987', '', '', '', 'Comptabilit?', '170 A', '', 'Contrat Pro', 1, '200'),
(210, '00010151', 1, 'MUNOZ', 'ANTONIO', '17, rue des Mimosas', 'Bat G Appt. G01', '64230', 'LESCAR', '', ' 06 64 91 76 28', '', '18/12/1967', '', '', '', 'Contr?leur', '190 E', '', 'CDI', 1, '50'),
(211, '00010152', 1, 'NARDOZZI', 'JEREMY', 'Chemin des Cr?tes', '', '64150', 'VIELLESEGURE', '', '06 32 65 53 41', '', '22/03/1984', '', '', '', 'Op?rateur', '190 C', '', 'CDI', 1, '200'),
(212, '00010245', 1, 'NAVAILLES ARGENTA', 'FLORIAN', '14, Chemin Moureu', '', '64150', 'MOURENX', '', '06 83 97 96 10', '', '01/03/1993', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(213, '00010212', 3, 'NICOLAS', 'ANNE-CATHERINE', '883, rue de France', '', '64300', 'SAULT DE NAVAILLES', '', '06 70 11 43 62', '', '13/05/1978', '', '', '', 'Op?rateur', '190 C', '', 'CDI', 1, '200'),
(214, '00010153', 1, 'NIMHAOULIN', 'BRAHIM', '11 Lot. Couleur Arc-en-ciel', '', '64230', 'ARBUS', '', '06 61 39 45 78', '', '15/12/1971', '', '', '', 'Op?rateur', '215 E', '', 'CDI', 1, '200'),
(215, '00010154', 1, 'NIMHAOULIN', 'OMAR', '2800, route d''Hagetaubin', '', '64370', 'ST MEDARD', '', '06 72 87 38 82', '', '15/03/1979', '', '', '', 'Contr?leur', '215 B', '', 'CDI', 1, '200'),
(216, '00010155', 1, 'NOUSTY', 'GILLES', '1, impasse Daniel Lafore', 'Appt. n?2', '64300', 'ORTHEZ', '05 59 21 35 51', '', '', '17/05/1986', '', '', '', 'Op?rateur', '215 B', '', 'CDI', 1, '200'),
(217, '00010156', 1, 'NOUZILLE', 'ALAIN', 'Les Mimosas Cidex 5', '', '64230', 'ARTIGUELOUVE', '05 59 83 13 53', '', 'alain.nouzille@rexam.com', '24/11/1957', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(218, '00010158', 1, 'PAGES', 'CHRISTIAN', '11, Chemin d''Aman', '', '64370', 'ARTHEZ DE BEARN', '05 59 67 78 52', '', '', '15/10/1959', '', '', '', 'Op?rateur', '215 D', '', 'CDI', 1, '200'),
(219, '00010159', 1, 'PALAS', 'JULIEN', '5, Av de la R?publique', '', '64140', 'BILLERE', '', '06 30 97 35 45', '', '11/01/1984', '', '', '', 'Op?rateur', '190 D', '', 'CDI', 1, '200'),
(220, '00010160', 1, 'PASTOUREU', 'GILLES', '2, chemin Carr?re', '', '64150', 'VIELLESEGURE', '', '06 45 40 52 29', '', '04/01/1968', '', '', '', 'Contr?leur', '215 D', '', 'CDI', 1, '200'),
(221, '00010235', 1, 'PEQUIGNET', 'ALEXANDRE', '54, rue Saint-Pierre', '', '64300', 'ORTHEZ', '', '06 03 88 73 06', '', '18/05/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(222, '00010161', 1, 'PERALTA  ', 'GAETAN', '12, rue Charles de Gaulle', '', '64150', 'MOURENX', '05 59 60 40 02', '', '', '17/12/1955', '', '', '', 'Automaticien', '255 C', '', 'CDI', 1, '132'),
(223, '00010162', 1, 'PERALTA  ', 'JORDI', '11, rue de Las Bignes', '', '64300', 'MONT', '', '06 27 82 05 85', 'marsbord@hotmail.com', '13/02/1980', '', '', '', 'Op?rateur', '215 B', '', 'CDI', 1, '200'),
(224, '00010165', 1, 'POUBLAN  ', 'ANDRE', '32, rue principale', '', '64360', 'TARSACQ', '05 59 60 06 34', '', '', '04/08/1973', '', '', '', 'Contr?leur', '215 F', '', 'CDI', 1, '200'),
(225, '00010166', 1, 'POUBLAN  ', 'ERIC', '32, rue principale', '', '64360', 'TARSACQ', '05 59 04 85 99', '', '', '08/07/1975', '', '', '', 'Op?rateur', '190 C', '', 'CDI', 1, '200'),
(226, '00010167', 1, 'PUYOO', 'GILLES', '12 bis, rue Labarraque', 'RÃ©sidence Bellevue', '64400', 'OLORON SAINTE MARIE', '05 59 34 37 76', '06 45 79 88 02', 'gillespuyoo@orange.fr', '11/05/1971', '03-04-2008', '', '', 'Conducteur', '190 D', '', 'CDI', 1, '100'),
(227, '00010168', 1, 'RAJA', 'DANIEL', '28, rue du Cast?ra', '', '64150', 'MOURENX', '', '06 29 65 00 81', '', '02/09/1955', '', '', '', 'Op?rateur', '215 E', '', 'CDI', 1, '200'),
(228, '00010169', 1, 'REBOUCO  ', 'JOSE', '2, rue du Pic d''Anie', '', '64150', 'MOURENX', '05 59 71 68 20', '', '', '27/04/1969', '', '', '', 'M?canicien', '240 C', '', 'CDI', 1, '200'),
(229, '00010244', 1, 'REBOUCO  ', 'LOIC', '2, rue du Pic d''Anie', '', '64150', 'MOURENX', '', '06 69 91 84 98', '', '22/03/1996', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(230, '00010170', 1, 'REMY', 'MARC', 'Route de Lucq de B?arn', '', '64150', 'LAHOURCADE', '05 59 60 04 70', '', '', '18/08/1966', '', '', '', 'Gestionnaire', '225 E', '', 'CDI', 1, '200'),
(231, '00010171', 1, 'RENAUD', 'ERIC', '59, impasse du Cast?rot', '', '64170', 'ARTIX', '05 59 71 53 30', '', '', '29/03/1967', '', '', '', 'R?gleur', '215 F', '', 'CDI', 1, '200'),
(232, '00010213', 1, 'RIAHI', 'ABDEL KADER', '5, rue Lavoisier', '', '64150', 'MOURENX', '', '06 20 37 02 76', '', '07/09/1987', '', '', '', 'Op?rateur', '190 B', '', 'CDI', 1, '200'),
(233, '00010172', 1, 'RIBEIRO LOPES ', 'ALBINO', '3, chemin de la Houn Dou Cagot', '', '64150', 'ARTHEZ DE BEARN', '05 59 71 63 45', '', '', '29/01/1973', '', '', '', 'Contr?leur', '215 F', '', 'CDI', 1, '200'),
(234, '00010173', 1, 'ROMAIN', 'SERGE', '19, rue Matachot', '', '64300', 'ORTHEZ', '', '06 71 56 39 79', '', '15/03/1957', '', '', '', 'Op?rateur', '190 B', '', 'CDI', 1, '200'),
(235, '00010174', 1, 'ROSE', 'DOMINIQUE', '4, rue Jacques Duclos', '', '64150', 'MOURENX', '05 59 60 10 53', '', '', '15/07/1969', '', '', '', 'R?gleur', '215 F', '', 'CDI', 1, '200'),
(236, '00010175', 2, 'ROSSI', 'EDWIGE', '42, chemin de Puyet', 'Cedex 11 A', '64230', 'DENGUIN', '05 59 68 80 10', '', 'edwige.rossi@rexam.com', '19/05/1947', '', '', '', 'Secr?taire', '255 B', '', 'CDI', 1, '200'),
(237, '00010177', 1, 'ROUSSEFF', 'PATRICK', '1570, chemin du Moulin', '', '64370', 'CASTEIDE-CANDAU', '', '06 03 86 03 26', '', '12/12/1963', '', '', '', 'Cariste', '170 F', '', 'CDI', 1, '200'),
(238, '00010179', 1, 'RUFFAT ', 'JONATHAN', '617, route du Bourgadot', '', '40330', 'NASSIET', '05 58 89 13 27', '', '', '19/08/1983', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '76.75'),
(239, '00010180', 1, 'SAINT-MARTIN', 'ERIC', '3, chemin du Nougue', '', '64370', 'ARTHEZ DE BEARN', '', '06 74 38 22 38', '', '12/09/1971', '', '', '', 'Op?rateur', '215 D', '', 'CDI', 1, '200'),
(240, '00010182', 1, 'SALIOU', 'REGIS', '10, lotissement des Moulins', '', '64360', 'MONEIN', '', '06 34 10 38 00', 'rege64@hotmail.fr', '24/06/1975', '', '', '', 'R?gleur', '215 F', '', 'CDI', 1, '200'),
(241, '00010183', 1, 'SALVA', 'YOHAN', '1, Chemin Barr?re', '', '64150', 'VIELLESEGURE', '', '06 30 96 45 56', 'yohanrexam@sfr.fr', '26/11/1979', '', '', '', 'Automaticien', '255 B', '', 'CDI', 1, '200'),
(242, '00010216', 1, 'SARRIEU', 'DAVID', '26, avenue des Magnolias', '', '64320', 'LEE', '', '06 37 49 13 39', 'david.sarrieu@rexam.com', '14/09/1972', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(244, '00010185', 1, 'SEGRODNICK ', 'LEANDRICK', 'Chemin Mirassou', '', '64150', 'LAGOR', '', '06 25 05 80 21', '', '16/06/1977', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(245, '00010186', 1, 'SIFREU', 'FLORIAN', '6, all?e Gauguin', '', '64150', 'MOURENX', '05 59 67 44 91', '', 'florian.sifreu@rexam.com', '11/11/1958', '', '', '', 'Tech. Qualit?', '255 C', '', 'CDI', 1, '200'),
(246, '00010237', 1, 'TALL', 'MOMAR', '20, rue du Marbor?', '', '64000', 'PAU', '', '06 25 85 86 84', 'momar.tall@rexam.com', '28/04/1983', '', '', '', 'Resp. Techniques', 'Cadre', '', 'CDI', 1, '200'),
(247, '00010187', 1, 'THIBAUT', 'MICHEL', '5, rue Gui de Lons', 'Parc le Bilaa', '64230', 'LESCAR', '05 59 32 01 46', '', 'michel.thibaut@rexam.com', '16/05/1951', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(248, '00010236', 3, 'TISNES', 'MARION', '7, Chemin de las Probes', '', '64230', 'SIROS', '', '06 61 16 44 34', '', '22/05/1996', '', '', '', 'Automaticien', '170 A', '', 'Stagiaire', 1, '200'),
(249, '00010188', 1, 'TLICH', 'SLIM', '6, all?e Fr?d?rico Garcia Lorca', '', '64150', 'MOURENX', '05 59 60 32 78', '', '', '26/08/1974', '', '', '', 'Op?rateur', '190 B', '', 'CDI', 1, '200'),
(250, '00010189', 1, 'TOULET', 'PATRICK', 'Route de Lucq de B?arn', '', '64150', 'LAHOURCADE', '05 59 60 09 81', '', '', '11/06/1966', '', '', '', 'Op?rateur', '215 C', '', 'CDI', 1, '200'),
(251, '00010190', 1, 'TREYTURE-HAYET ', 'THIERRY', '90, Chemin de Treyti', '', '64370', 'HAGETAUBIN', '', '06 15 97 02 12', 'thierry.treyture-hayet@rexam.com', '12/01/1960', '', '', '', 'Chef de Poste', '285 B', '', 'CDI', 1, '195.25'),
(252, '00010191', 1, 'TRIPICCHIO ', ' JEAN PIERRE', '1, rue des jonquilles', 'Lotissement du Ch?teau', '64360', 'MONEIN', '05 59 21 27 02', '', '', '12/11/1970', '', '', '', 'Op?rateur', '190 D', '', 'CDI', 1, '200'),
(253, '00010192', 1, 'URRUTY ', 'MICHEL', '11, chemin Las Barthes', '', '64300', 'BIRON', '05 59 67 01 44', '', '', '08/05/1956', '', '', '', 'Automaticien', '255 C', '', 'CDI', 1, '100'),
(254, '00010241', 3, 'VEDRENNE', 'JOELLE', '35, Route de Parbayse', '', '64230', 'ARBUS', '', '06 03 47 38 73', '', '11/01/1978', '', '', '', 'Contr?leur', '190 A', '', 'CDI', 1, '200'),
(255, '00010193', 1, 'VERON', 'DIDIER', '4, Chemin Mirassou', 'Quartier Benzy', '64150', 'LAGOR', '05 59 71 57 04', '', 'didier.veron@rexam.com', '21/02/1958', '', '', '', 'Chef de Poste', '285 B', '', 'CDI', 1, '200'),
(256, '00010242', 1, 'VIATEAU', 'REMI', '1, All?e Lamartine', '', '64150', 'MOURENX', '', '06 85 92 93 99', '', '23/10/1995', '', '', '', 'Contr?leur', '190 A', '', 'CDI', 1, '200'),
(257, '00010195', 1, 'VIGIER', 'PASCAL', '14, av du Loup', 'R?sidence La Benoue', '64000', 'PAU', '05 59 02 72 75', '', 'pascal.vigier@rexam.com', '21/07/1958', '', '', '', 'Dir. Financier', 'Cadre', '', 'CDI', 1, '200'),
(258, '00010223', 1, 'VILLAYES ', 'FLORIAN', '17, rue des Mimosas', 'R?s. Les Albizzias - Appt. C 101', '64230', 'LESCAR', '', '06 72 66 01 41', 'florian.villayes@rexam.com', '17/10/1987', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(259, '00010225', 1, 'WHALES ', 'STEPHEN', '3, rue Gabriel Faur?', '', '64230', 'LESCAR', '', '06 76 78 11 79', 'stephen.whales@rexam.com', '28/07/1980', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(260, '00010249', 1, 'ANDRE-GUERN', 'FLORIAN', '', '', '64000', 'PAU', '', '', 'florian.andre-guern@rexam.com', '12/04/1986', '', '', '1', 'ENGINEERING', 'CADRE', '', 'CDI', 1, '200'),
(261, '00010250', 1, 'HOURCADETTE', 'Nicolas', '49, Chemin PÃ©noulie', 'Quartier Lassabaigt', '64150', 'LAHOURCADE', '', '06.77.70.17.61', 'nicolas.hourcadette@gmail.com', '14-06-1991', '01-02-2015', '', '1', 'ContrÃ´leur', '190A', '', 'CDI', 1, '200');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Contenu de la table `solde_caisse`
--

INSERT INTO `solde_caisse` (`idsoldecaisse`, `date_mouvement`, `num_mouvement`, `type_mouvement`, `type_solde`, `libelle_mouvement`, `debit`, `credit`, `point_caisse`) VALUES
(2, '12-02-2015', '123', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERGEZ.', '', '200', 0),
(5, '15-02-2015', '456123', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ABADO.', '', '75', 0),
(15, '21-02-2015', '0162', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BIDART MICKAEL.', '', '50', 0),
(16, '21-02-2015', '0163', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BIDART MICKAEL.', '', '50', 0),
(23, '21-02-2015', '144683058', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DA FONSECA JOSE.', '', '50', 0),
(24, '21-02-2015', '144683059', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DA FONSECA JOSE.', '', '50', 0),
(35, '21-02-2015', '0479412', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de MOUSQUES DIT CABANOT STEPHANE', '', '100', 0),
(36, '21-02-2015', '6482454', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de GUYON MATTHIEU', '', '100', 0),
(37, '21-02-2015', '6344552', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de CLAVERIE THIERRY', '', '100', 0),
(38, '21-02-2015', '0145', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de ALLAMAN NICOLAS', '', '100', 0),
(39, '21-02-2015', '4610328', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de URRUTY MICHEL', '', '100', 0),
(40, '21-02-2015', '01458', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de DE MIGUEL FELIX', '', '100', 0),
(41, '21-02-2015', '9892939', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de ARRICAU', '', '100', 0),
(42, '21-02-2015', '01726', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de BIDART MICKAEL ', '', '100', 0),
(43, '21-02-2015', '6972040', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de DECROUE DIDIER', '', '100', 0),
(44, '21-02-2015', '5243985', 'Reglement Client', 'Ch&egrave;', 'Reglement de la prestation par chÃ¨que au nom de JAUREGUYBERRY', '', '100', 0),
(45, '21-02-2015', '1337841', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de GONCALVEZ NEIVA FREDERICQ', '', '100', 0),
(46, '21-02-2015', '03684', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de BORDENEUVE PATRICK', '', '100', 0),
(47, '21-02-2015', '5892549', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de BORDATTO SERGE', '', '100', 0),
(48, '21-02-2015', '5314236', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de BERGEZ ANDRE', '', '100', 0),
(49, '21-02-2015', '7358715', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de MAZURIER SYLVIE', '', '100', 0),
(50, '21-02-2015', '6344273', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de GRACIET PATRICK', '', '100', 0),
(51, '21-02-2015', '7449598', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de LANOUE LAURENT', '', '100', 0),
(52, '24-02-2015', '3171507', 'Reglement Client', 'Ch&egrave;que', 'Reglement de la prestation par chÃ¨que au nom de PUYOO GILLES', '', '100', 0);

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
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
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
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
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
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
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
