-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Mer 06 Janvier 2016 à 10:43
-- Version du serveur :  5.5.46-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cerexam`
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
(56, 58, 'ADENIS', 'JUDICAELLE', '13/03/2011', '23'),
(57, 58, 'ADENIS', 'ANAE', '14/09/2006', '51.8'),
(58, 64, 'ALLAMAN', 'ANDERSON', '09/01/2002', '249.04'),
(59, 64, 'ALLAMAN', 'IZELIA', '05/09/2011', '295'),
(60, 66, 'AMIS', 'THOMAS', '06/08/2008', '89.75'),
(61, 68, 'ARRICAU', 'ANGELE', '25/06/2001', '199.3375'),
(62, 68, 'ARRICAU', 'JULIE', '09/06/1997', '58.9625'),
(63, 69, 'BALLESTEROS', 'CELIA', '11/12/2001', '128'),
(64, 69, 'BALLESTEROS', 'THOMAS', '09/10/1997', '11'),
(65, 70, 'BAR', 'SACHA', '15/02/2013', '320'),
(66, 70, 'BAR', 'NATHAN', '21/01/2010', '320'),
(67, 71, 'BATBEDAT', 'TEO', '01/10/2010', '33.875'),
(68, 71, 'BATBEDAT', 'SOLENN', '28/12/2001', '0'),
(69, 72, 'BAYONA', 'ANDREA', '23/09/1999', '320'),
(70, 72, 'BAYONA', 'CYRIL', '13/09/2001', '320'),
(71, 75, 'BENZIN', 'CARLA-MARIE', '04/11/2001', '0'),
(72, 75, 'BENZIN', 'DYLAN', '11/10/1997', '158'),
(73, 77, 'BERGEZ', 'MANON', '14/09/2009', '128.825'),
(74, 81, 'BIDART', 'DYLAN', '15/12/2001', '295'),
(75, 84, 'BLOEMZAAD', 'NATHALIE', '08/05/2014', '320'),
(76, 85, 'BONNINGUE', 'CALI', '30/12/2010', '0'),
(77, 85, 'BONNINGUE', 'HUGO', '01/08/2013', '0'),
(78, 86, 'BORDATTO', 'CHLOE', '15/04/2000', '295'),
(79, 93, 'BRACH', 'KALI ', '05/10/2012', '0'),
(80, 97, 'BRUNE', 'ERIC', '02/08/1998', '278.75'),
(81, 98, 'CABANE-CHRESTIA', 'LUDOVIC', '18/08/2002', '156.5'),
(82, 98, 'CABANE-CHRESTIA', 'MAEVA', '06/09/1998', '192.5'),
(83, 100, 'CALVO', 'YANIS', '12/03/2003', '0'),
(85, 102, 'CAMPAGNE', 'MARION', '09/03/2002', '0'),
(86, 106, 'CASAIL', 'CHARLOTTE', '09/11/1999', '4.4'),
(87, 107, 'CASAMAJOU', 'IKER', '10/09/2007', '175.25'),
(88, 107, 'CASAMAJOU', 'LEIRE', '01/05/2002', '185'),
(89, 107, 'CASAMAJOU', 'INTZA', '07/06/2005', '213.2'),
(90, 108, 'CASANOVA', 'Angel', '26/04/2012', '320'),
(91, 110, 'CAZALERE', 'RAPHAEL', '01/11/2014', '320'),
(92, 114, 'CIOSSE', 'DORIAN', '02/01/2002', '95.1875'),
(93, 114, 'CIOSSE', 'REMI', '09/05/2005', '43.4375'),
(94, 116, 'CLAVERIE', 'QUENTIN', '29/01/2003', '162.5'),
(95, 118, 'CORREIA', 'THEO', '16/01/2009', '320'),
(96, 118, 'CORREIA', 'MARIE CHRISTINE', '12/09/2012', '320'),
(97, 119, 'CUISINIER', 'SOEN', '17/07/2003', '125.6975'),
(98, 119, 'CUISINIER', 'CLARA', '01/10/2001', '126.0725'),
(99, 120, 'DA FONSECA', 'MARION', '07/07/2007', '0'),
(100, 120, 'DA FONSECA', 'TEO', '03/12/2013', '44.6'),
(101, 121, 'DA SILVA', 'RACHEL', '07/03/2002', '57.5'),
(102, 121, 'DA SILVA', 'ROMAIN', '26/04/2007', '286.25'),
(103, 122, 'DANTEIN', 'TOM', '26/04/2013', '143.8775'),
(104, 122, 'DANTEIN', 'ANA', '18/11/2011', '0'),
(106, 125, 'DARRACQ', 'TIMEO', '01/07/2009', '248'),
(107, 125, 'DARRACQ', 'CHLOE', '20/07/2012', '320'),
(108, 127, 'DATHY', 'MAXIME', '25/12/2007', '0'),
(109, 127, 'DATHY', 'JUSTINE', '31/08/2010', '0'),
(110, 129, 'DAUBAS', 'GAUTIER', '15/07/2005', '309.5'),
(111, 129, 'DAUBAS', 'LAURIE', '11/10/2001', '314.75'),
(112, 132, 'DECROUE', 'LOU-ANNE', '03/02/2004', '305'),
(113, 136, 'DOLLE', 'ANGELINE', '07/10/2001', '0'),
(114, 136, 'DOLLE', 'BASTIEN', '22/06/2006', '290'),
(115, 137, 'DRIVON', 'EMILY', '12/06/2006', '0'),
(116, 137, 'DRIVON', 'ELISE', '09/11/2004', '0'),
(117, 137, 'DRIVON', 'JULES', '25/06/2002', '0'),
(118, 138, 'DULAU', 'AMIC', '18/01/2008', '132.5'),
(119, 138, 'DULAU', 'LEA', '09/05/1997', '320'),
(122, 139, 'DUROU', 'GABRIEL', '26/01/2010', '0'),
(123, 139, 'DUROU', 'SIMON', '09/01/2006', '0'),
(124, 140, 'DUTILH', 'LUCAS', '03/03/1998', '320'),
(125, 141, 'DUVIGNAU', 'MATHIS', '10/08/2008', '320'),
(126, 141, 'DUVIGNAU', 'HUGO', '05/11/2006', '320'),
(127, 142, 'EL-KANDOUSSI', 'ADAM', '19/11/1998', '320'),
(128, 145, 'EUSEBIO', 'EVA', '08/05/2000', '305'),
(129, 145, 'EUSEBIO', 'LOELIA', '27/01/2003', '305'),
(130, 145, 'EUSEBIO', 'MATHIS', '22/08/2008', '305'),
(131, 146, 'FERTOUTI', 'MARWA', '18/11/2009', '320'),
(132, 146, 'FERTOUTI', 'NISRINE', '22/11/2005', '320'),
(133, 146, 'FERTOUTI', 'ELIES', '19/09/2003', '320'),
(134, 148, 'FONSECA', 'ALYCIA', '13/02/2010', '320'),
(135, 149, 'FOURNIER', 'EMILE', '12/12/1997', '320'),
(136, 150, 'FOURQUET', 'GUILLAUME', '09/05/1997', '177.5'),
(137, 151, 'GALLARDO', 'ANAE', '16/01/2012', '320'),
(138, 152, 'GIACOMIN', 'LUCILE', '28/02/2002', '0.5'),
(139, 153, 'GONCALVES NEIVA ', 'ILONA', '20/07/2005', '35.525'),
(140, 153, 'GONCALVES NEIVA', 'MAEVA', '25/03/2002', '93.25'),
(141, 155, 'GUION', 'HUGO', '24/08/2001', '259.25'),
(142, 155, 'GUION', 'EMMA', '26/10/2004', '293'),
(143, 157, 'HOSTENDIE', 'CLARISSE', '27/02/1997', '206.75'),
(144, 157, 'HOSTENDIE', 'INES', '11/02/2000', '192.5'),
(145, 158, 'HOUIS', 'LEO', '04/05/2004', '125.225'),
(146, 159, 'HOURDILLE', 'JUSTINE', '15/05/2003', '0'),
(147, 159, 'HOURDILLE', 'LUCAS', '27/05/1997', '0'),
(148, 161, 'JACKOWSKI', 'LISA', '14/03/2005', '0'),
(149, 162, 'JAUREGUIBERRY', 'IBAN', '13/02/2009', '257.495'),
(150, 162, 'JAUREGUIBERRY', 'ELAIA', '24/11/2013', '320'),
(151, 163, 'JIMENEZ', 'HUGO', '15/02/2000', '147.5'),
(152, 165, 'JUNGAS', 'JADE', '15/07/2011', '248.7875'),
(153, 165, 'JUNGAS', 'LOU', '28/05/2014', '0'),
(154, 169, 'LACABARATS', 'LUCIE', '03/12/2012', '320'),
(155, 171, 'LACARRIEU-HAURAT', 'MORGANE', '05/10/1999', '0.71'),
(156, 177, 'LAMOURE-LABADIE', 'DAMIEN', '22/10/1998', '248.75'),
(157, 178, 'LAMOURET', 'THEO', '15/03/2000', '184.25'),
(158, 179, 'LANOUE', 'AXELLE', '18/02/1998', '10'),
(159, 179, 'LANOUE', 'ROXANE', '09/04/2007', '0'),
(160, 180, 'LASSOURREILLE', 'CHARLOTTE', '17/07/2011', '278'),
(161, 187, 'LUPIAC', 'JUSTINE', '07/11/2000', '218.75'),
(162, 189, 'MAIRAL', 'LENA', '30/11/2012', '320'),
(163, 191, 'MARATRAT', 'CASSIDY', '12/01/2010', '0'),
(164, 192, 'MARLADOT', 'BAPTISTE', '21/03/2002', '320'),
(165, 194, 'MARTINEZ', 'MAREVA', '01/05/2001', '0'),
(166, 197, 'MASSE', 'ALEXINE', '22/09/2012', '320'),
(167, 198, 'MASSEY', 'JOAN', '13/05/2006', '96.275'),
(168, 198, 'MASSEY', 'MAELY', '31/03/2011', '206.525'),
(169, 198, 'MASSEY', 'MARGAUX', '14/11/2002', '206.525'),
(170, 200, 'MAZURIER', 'GUILLAUME', '17/02/1997', '320'),
(171, 200, 'MAZURIER', 'MARIE', '31/10/1999', '17.6875'),
(172, 204, 'MOLENAT', 'JOHAN', '24/02/2012', '0'),
(173, 205, 'MORRAL', 'LOLA', '20/12/2005', '0'),
(174, 205, 'MORRAL', 'MAEL', '01-08-2010', '275'),
(175, 206, 'MOURCEL', 'MAXIME', '13/02/2002', '1.25'),
(176, 208, 'MOUSQUES DIT CABANOT', 'VALENTINE', '10/04/2007', '0'),
(177, 208, 'MOUSQUES DIT CABANOT', 'JEAN ', '30/01/2004', '0'),
(178, 211, 'NARDOZZI', 'LEIA', '09/07/2009', '143.75'),
(179, 211, 'NARDOZZI', 'JOAN', '12/10/2013', '17.06'),
(180, 213, 'NICOLAS', 'Justine', '01/10/2006', '320'),
(181, 214, 'NIMHAOULIN', 'SARAH', '11/02/2008', '38.45'),
(182, 214, 'NIMHAOULIN', 'ANISS', '18/10/2000', '95'),
(183, 215, 'NIMHAOULIN', 'INES', '06/01/2012', '320'),
(184, 215, 'NIMHAOULIN', 'SOPHIA', '27/05/2010', '320'),
(185, 216, 'NOUSTY', 'EMMA', '24/10/2009', '248.225'),
(186, 220, 'PASTOUREU', 'FANNY', '12/03/1997', '305'),
(187, 220, 'PASTOUREU', 'MATHILDE', '27/02/2003', '217.25'),
(188, 220, 'PASTOUREU', 'REMI', '31/01/2000', '0'),
(189, 223, 'PERALTA', 'ANTONIN', '17/03/2005', '235.55'),
(190, 230, 'REMY', 'GUILLAUME', '21/02/1999', '4.91'),
(191, 235, 'ROSE', 'ROMAIN', '12/08/1997', '50'),
(192, 238, 'RUFFAT', 'BAPTISTE', '03/01/2008', '183.5'),
(193, 239, 'SAINT-MARTIN', 'FLORIAN', '21/11/1997', '164.75'),
(194, 239, 'SAINT-MARTIN', 'MELISSA', '30/03/2003', '196.25'),
(195, 240, 'SALIOU', 'MAYDELIE', '08/09/2003', '320'),
(196, 242, 'SARRIEU', 'SHANON', '17/03/2003', '0'),
(197, 244, 'SEGRODNICK', 'LOUANE', '19/06/2005', '320'),
(198, 244, 'SEGRODNICK', 'LUCAS', '23/12/2001', '320'),
(199, 246, 'TALL EL HADJI', 'DOUNA', '23/12/2001', '320'),
(200, 247, 'THIBAUT', 'AXEL', '11/10/1999', '0'),
(201, 249, 'TLICH', 'ISLEYM', '19/02/2013', '320'),
(202, 249, 'TLICH', 'CHEYMA', '23/09/2005', '179.75'),
(203, 249, 'TLICH', 'ABDELAZIZ', '14/08/2003', '200'),
(204, 249, 'TLICH', 'MARWANE', '15/11/2008', '196.25'),
(206, 251, 'TREYTURE-HAYET', 'ROBIN', '27/04/2005', '94.25'),
(207, 252, 'TRIPICCHIO', 'FIORENZO', '29/03/1998', '0'),
(208, 259, 'WHALES', 'CELESTE', '28/04/2008', '0'),
(209, 251, 'BOY', 'Aldwin', '07-02-1999', '137.75'),
(211, 56, 'ABADO', 'Micka&euml;l', '04-01-2015', '0'),
(212, 129, 'DAUBAS DA SILVA ', 'Chlo&eacute;', '26-10-2004', '294.5'),
(213, 82, 'BIDART', 'Inaya Alicia', '25-02-2015', '320.00'),
(214, 156, 'GUYON', 'CLEMENT', '22-03-2014', '0'),
(215, 86, 'BERSANS ', 'Laura', '30-06-1999', '295'),
(216, 148, 'FONSECA', 'ANAIS', '24-08-2015', '320.00'),
(217, 213, 'NICOLAS', 'Mali', '01-10-2015', '320'),
(218, 108, 'CASNOVA', 'Jules', '03-10-2015', '320'),
(219, 108, 'CASANOVA ', 'Eva', '03-10-2015', '320'),
(220, 268, 'GUITARD COUSTET', 'ENZO', '19-09-2010', '320.00');

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
(275, 1, 'Remboursement de la prestation: assistante maternelle pour MARATRAT CASSIDY', '320', '', ''),
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
(315, 1, 'Remboursement de la prestation: royal kids pour DANTEIN TOM', '6.6225', '', ''),
(316, 1, 'Remboursement de la prestation: musÃ©e de la mer pour ABADO NICOLAS', '14.5', '', ''),
(317, 1, 'Remboursement de la prestation: cinÃ©ma pour DAUBAS MICHEL', '13.7', '', ''),
(318, 1, 'Remboursement de la prestation: spectacle pour BALLESTEROS  DIDIER', '37', '', ''),
(319, 1, 'Remboursement de la prestation: spectacle pour BALLESTEROS CELIA', '55.5', '', ''),
(320, 1, 'Remboursement de la prestation: spectacle pour BALLESTEROS THOMAS', '55.5', '', ''),
(321, 1, 'Remboursement de la prestation: spectacle pour MUNOZ ANTONIO', '47', '', ''),
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
(335, 1, 'Remboursement de la prestation: PAJEMPLOI pour BONNINGUE HUGO', '320', '', ''),
(336, 1, 'Remboursement de la prestation: CORRIDAS pour LAGRAULA-DUROU SOPHIE', '156.1', '', ''),
(337, 1, 'Remboursement de la prestation: forfait ski pour ARRICAU JULIE', '60.6', '', ''),
(338, 1, 'Remboursement de la prestation: licence moto pour CASSOU OLIVIER', '49.4', '', ''),
(339, 1, 'Remboursement de la prestation: voyage scolaire pour REMY GUILLAUME', '166.215', '', ''),
(340, 1, 'Remboursement de la prestation: FORFAIT SKI pour CHAUSSADAS  JEAN YVES', '118', '', ''),
(341, 1, 'Remboursement de la prestation: ECOLE DE DANSE pour LUBEREILH ROGER', '48', '', ''),
(342, 1, 'Remboursement de la prestation: LASER LESCAR pour TRIPICCHIO FIORENZO', '22.5', '', ''),
(343, 1, 'Remboursement de la prestation: CENTRE EQUESTRE pour MORAL LOLA', '156', '', ''),
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
(422, 1, 'Remboursement de la prestation: ecole musicale pour HOUIS LEO', '194.775', '', ''),
(423, 1, 'Remboursement de la prestation: carte cinema pour NOUSTY EMMA', '49.125', '', ''),
(428, 1, 'Remboursement de la prestation: voyage scolaire pour LACARRIEU-HAURAT MORGANE', '166.215', '', ''),
(429, 1, 'Remboursement de la prestation: puy du fou pour DARRACQ TIMEO', '26.25', '', ''),
(430, 1, 'Remboursement de la prestation: puy du fou pour DARRACQ FREDERIC', '49', '', ''),
(433, 1, 'Remboursement de la prestation: centre aere + paje emploi pour DATHY MAXIME', '320', '', ''),
(434, 1, 'Remboursement de la prestation: centre aere + paje emploi pour DATHY JUSTINE', '320', '', ''),
(435, 1, 'Remboursement de la prestation: voyage scolaire pour GONCALVES NEIVA MAEVA', '188.25', '', ''),
(436, 1, 'Remboursement de la prestation: SPECTACLE pour BALLESTEROS  DIDIER', '29.5', '', ''),
(437, 1, 'Remboursement de la prestation: grand prix moto pour ALBANEL HERVE', '59.5', '', ''),
(438, 1, 'Remboursement de la prestation: cinÃ©ma + chlorofil + piscine pour MOUSQUES DIT CABANOT VALENTINE', '57.45', '', ''),
(439, 1, 'Remboursement de la prestation: cinÃ©ma + chlorofil + piscine pour MOUSQUES DIT CABANOT JEAN ', '49.95', '', ''),
(440, 1, 'Remboursement de la prestation: gardereie pour ALLAMAN ANDERSON', '23.46', '', ''),
(441, 1, 'Remboursement de la prestation: permis de peche pour CAMPAGNE FRANCK', '36.5', '', ''),
(442, 1, 'Remboursement de la prestation: carte cinema pour PERALTA ANTONIN', '48.75', '', ''),
(443, 1, 'Remboursement de la prestation: spectacle pour LACARRIEU-HAURAT MORGANE', '37.5', '', ''),
(444, 1, 'Remboursement de la prestation: spectacle pour LACARRIEU-HAURAT  JEAN PIERRE', '50', '', ''),
(445, 1, 'Remboursement de la prestation: foot pour LOPEZ   OLIVIER', '71.75', '', ''),
(446, 1, 'Remboursement de la prestation: foot pour LOPEZ   ISMAEL', '71.75', '', ''),
(447, 1, 'Remboursement de la prestation: caliceo pour ALVES  PAUL', '15', '', ''),
(449, 1, 'Remboursement de la prestation: THERMES DE SALIES pour DULAU  EMMANUEL', '9.5', '', ''),
(450, 1, 'Remboursement de la prestation: corrida pour ETCHEVERRY JACQUES', '48', '', ''),
(455, 1, 'Remboursement de la prestation: zoo pour DAUBAS GAUTIER', '10.5', '', ''),
(456, 1, 'Remboursement de la prestation: permis de peche pour BRACH JULIEN', '36.5', '', ''),
(458, 1, 'Remboursement de la prestation: FOOT pour CASAMAJOU JEAN BERNARD', '42.5', '', ''),
(459, 1, 'Remboursement de la prestation: FOOT pour CASAMAJOU IKER', '63.75', '', ''),
(460, 1, 'Remboursement de la prestation: ferme equestre pour GIACOMIN LUCILE', '319.5', '', ''),
(461, 1, 'Remboursement de la prestation: ski + zoo pour WHALES  STEPHEN', '115.975', '', ''),
(462, 1, 'Remboursement de la prestation: ski + zoo pour WHALES CELESTE', '191.4375', '', ''),
(464, 1, 'Remboursement de la prestation: surf pour SARRIEU SHANON', '320', '', ''),
(465, 1, 'Remboursement de la prestation: SPECTACLE pour BENITO KEVIN', '148.45', '', ''),
(466, 1, 'Remboursement de la prestation: PAJE EMPLOI pour GUYON CLEMENT', '320', '', ''),
(471, 1, 'Remboursement de la prestation: piscine + cinÃ©ma + leÃ§ons de natation pour BERGEZ MANON', '157.875', '', ''),
(472, 1, 'Remboursement de la prestation: equitation pour BATBEDAT SOLENN', '320', '', ''),
(474, 1, 'Remboursement de la prestation: centre equestre pour CAMPAGNE MARION', '186.75', '', ''),
(475, 1, 'Remboursement de la prestation: abonnement section paloise pour BRUN GILLES', '124.9', '', ''),
(476, 1, 'Remboursement de la prestation: Gym pour LASSOURREILLE CHARLOTTE', '42', '', ''),
(477, 1, 'Remboursement de la prestation: NPY pour FONSECA PHILIPPE', '50.5', '', ''),
(480, 1, 'Remboursement de la prestation: permis de peche pour LAVALLARD  CHRISTOPHE', '47.5', '', ''),
(481, 1, 'Remboursement de la prestation: piscine pour LACARRIEU-HAURAT MORGANE', '25.575', '', ''),
(482, 1, 'Remboursement de la prestation: centre equestre pour BENZIN CARLA-MARIE', '66', '', ''),
(484, 1, 'Remboursement de la prestation: sortie scolaire pour CASAMAJOU INTZA', '56.25', '', ''),
(485, 1, 'Remboursement de la prestation: sortie scolaire pour CASAMAJOU IKER', '56.25', '', ''),
(486, 1, 'Remboursement de la prestation: CinÃ©ma  pour CASAIL CHRISTOPHE', '13.5', '', ''),
(487, 1, 'Remboursement de la prestation: CinÃ©ma  pour CASAIL CHARLOTTE', '20.25', '', ''),
(488, 1, 'Remboursement de la prestation: cinema pour VEDRENNE JOELLE', '19.7', '', ''),
(489, 1, 'Remboursement de la prestation: SPECTACLES pour BALLESTEROS  DIDIER', '44.5', '', ''),
(490, 1, 'Remboursement de la prestation: SPECTACLES pour BALLESTEROS THOMAS', '86.25', '', ''),
(491, 1, 'Remboursement de la prestation: SPECTACLES pour BALLESTEROS CELIA', '86.25', '', ''),
(495, 1, 'Remboursement de la prestation: PISCINE + VISITES SITES pour DRIVON  HAROLD', '103.6', '', ''),
(496, 1, 'Remboursement de la prestation: CINEMA pour DRIVON EMILY', '3.375', '', ''),
(497, 1, 'Remboursement de la prestation: VOYAGE SCOLAIRE pour DRIVON JULES', '292.5', '', ''),
(498, 1, 'Remboursement de la prestation: CINEMA pour DRIVON ELISE', '3.375', '', ''),
(499, 1, 'Remboursement de la prestation: PROMENADES BATEAU  pour LAHORE-LAHITTE  MARC', '22.5', '', ''),
(500, 1, 'Remboursement de la prestation: VOYAGE SCOLAIRE pour CIOSSE DORIAN', '188.25', '', ''),
(501, 1, 'Remboursement de la prestation: PAJE EMPLOI pour DANTEIN ANA', '320', '', ''),
(506, 1, 'Remboursement de la prestation: cinÃ©ma + spectacle pour POUBLAN   ERIC', '52.3', '', ''),
(509, 1, 'Remboursement de la prestation: METAMORPHOSE pour ABAJI MOHAMMED', '199.5', '', ''),
(510, 1, 'Remboursement de la prestation: SPECTACLE pour RAJA DANIEL', '47', '', ''),
(511, 1, 'Remboursement de la prestation: futuroscpe pour ADENIS BERTRAND', '32', '', ''),
(512, 1, 'Remboursement de la prestation: futuroscope pour ADENIS JUDICAELLE', '24', '', ''),
(513, 1, 'Remboursement de la prestation: futuroscope pour ADENIS ANAE', '24', '', ''),
(514, 1, 'Remboursement de la prestation: Concert ACDC pour CASAIL CHRISTOPHE', '39.25', '', ''),
(523, 1, 'Remboursement de la prestation: MÃ‰TAMORPHOSE + FREE BOWL pour TRIPICCHIO   JEAN PIERRE', '50.5', '', ''),
(524, 1, 'Remboursement de la prestation: MÃ‰TAMORPHOSE + CINEMA pour TRIPICCHIO FIORENZO', '77.025', '', ''),
(525, 1, 'Remboursement de la prestation: VOYAGE SCOLAIRE pour PASTOUREU REMI', '187.5', '', ''),
(531, 1, 'Remboursement de la prestation: spectacle + cinema pour DAUBA  BAPTISTE', '51', '', ''),
(532, 1, 'Remboursement de la prestation: lâ€™Ã®le aux enfants pour NIMHAOULIN SARAH', '233.5125', '', ''),
(533, 1, 'Remboursement de la prestation:  ecole ski nautique pour RUFFAT BAPTISTE', '30', '', ''),
(538, 1, 'Remboursement de la prestation: visites musÃ©es + thÃ©atre pour DEPUYT  BENOIT', '51.75', '', ''),
(539, 1, 'Remboursement de la prestation: SPECTACLE pour CASAMAJOU JEAN BERNARD', '42.425', '', ''),
(540, 1, 'Remboursement de la prestation: colonies de vacances pour CASAMAJOU LEIRE', '135', '', ''),
(541, 1, 'Remboursement de la prestation: licence pour CABANE-CHRESTIA MAEVA', '127.5', '', ''),
(542, 1, 'Remboursement de la prestation: tennis pour SAINT-MARTIN ERIC', '13', '', ''),
(543, 1, 'Remboursement de la prestation: tennis pour SAINT-MARTIN FLORIAN', '12', '', ''),
(595, 1, 'Remboursement de la prestation: SPECTACLE pour TISNES MARION', '39', '', ''),
(598, 1, 'Remboursement de la prestation: visites musÃ©es pour BERGEZ JEAN', '17', '', ''),
(599, 1, 'Remboursement de la prestation: licence foot pour JIMENEZ HUGO', '135', '', ''),
(600, 1, 'Remboursement de la prestation: Aquarium / Zoo / Loc VÃ©lo pour TREYTURE-HAYET  THIERRY', '78', '', ''),
(601, 1, 'Remboursement de la prestation: Aquarium / Zoo / Loc VÃ©lo / Acrobranches pour TREYTURE-HAYET ROBIN', '68.25', '', ''),
(602, 1, 'Remboursement de la prestation: carte cinÃ©ma + cinema pour CUISINIER SOEN', '30.8625', '', ''),
(603, 1, 'Remboursement de la prestation: CINÃ‰MA + caliceo pour CUISINIER CLARA', '30.8625', '', ''),
(604, 1, 'Remboursement de la prestation: visites touristiques pour CALVO  MICHEL', '33', '', ''),
(605, 1, 'Remboursement de la prestation: CENTRE DE LOISIRS pour DUROU GABRIEL', '39.75', '', ''),
(607, 1, 'Remboursement de la prestation: concert + course landaise pour BAZIARD DIDIER', '32', '', ''),
(611, 1, 'Remboursement de la prestation: centre aÃ©rÃ© pour DANTEIN TOM', '54.75', '', ''),
(613, 1, 'Remboursement de la prestation: visites touristiques pour ALVES  PAUL', '19', '', ''),
(614, 1, 'Remboursement de la prestation: centre aÃ©rÃ© pour DUROU GABRIEL', '68.7375', '', ''),
(616, 1, 'Remboursement de la prestation: courses landaises + cinÃ©ma + zoo pour DAUBAS MICHEL', '29', '', ''),
(646, 1, 'Remboursement de la prestation: licence plongée pour SARRIEU DAVID', '100', '', ''),
(647, 1, 'Remboursement de la prestation: cinéma pour DULAU EMMANUEL', '7', '', ''),
(649, 1, 'Remboursement de la prestation: royal kids pour DANTEIN YANNICK', '8.83', '', ''),
(651, 1, 'Remboursement de la prestation: zoo pour DAUBAS LAURIE', '5.25', '', ''),
(662, 1, 'Remboursement de la prestation: CALICEO pour ALLAMAN ANDERSON', '22.5', '', ''),
(663, 1, 'Remboursement de la prestation: VISITES pour TRIPICCHIO   JEAN PIERRE', '9.5', '', ''),
(664, 1, 'Remboursement de la prestation: CINÃ‰MA + VISITE pour TRIPICCHIO FIORENZO', '13.35', '', ''),
(665, 1, 'Remboursement de la prestation: PISCINE + BAINS DU ROCHER pour HOURDILLE LUCAS', '30.75', '', ''),
(666, 1, 'Remboursement de la prestation: PISCINE pour LACARRIEU-HAURAT  JEAN PIERRE', '17.05', '', ''),
(667, 1, 'Remboursement de la prestation: SPECTACLE + CINEMA pour GIACOMINI BASILE', '63', '', ''),
(668, 1, 'Remboursement de la prestation: GOUFFRE DE PADIRAC + CANOES pour CIOSSE  BRUNO', '33.9', '', ''),
(669, 1, 'Remboursement de la prestation: CANOÃ‹ + VISITES pour CIOSSE DORIAN', '36.5625', '', ''),
(670, 1, 'Remboursement de la prestation: CANOÃ‹ + VISITE pour CIOSSE REMI', '36.5625', '', ''),
(671, 1, 'Remboursement de la prestation: COURSE LANDAISE + ZOO + CINEMA pour DAUBAS MICHEL', '29', '', ''),
(672, 1, 'Remboursement de la prestation: CINÃ‰MA+ ZOO + COURSE LANDAISE pour DAUBAS DA SILVA  Chlo&eacute;', '25.5', '', ''),
(673, 1, 'Remboursement de la prestation: LASER pour CUISINIER SOEN', '16.875', '', ''),
(674, 1, 'Remboursement de la prestation: LASER pour CUISINIER CLARA', '16.875', '', ''),
(675, 1, 'Remboursement de la prestation: LICENCE FOOT + CINEMA pour FONSECA PHILIPPE', '60.75', '', ''),
(676, 1, 'Remboursement de la prestation: centre de vacances pour BERGEZ MANON', '33.3', '', ''),
(677, 1, 'Remboursement de la prestation: licence pour LAMOURET JOEL', '30', '', ''),
(678, 1, 'Remboursement de la prestation: LICENCE FOOT + CINEMA pour LAMOURET THEO', '64.5', '', ''),
(679, 1, 'Remboursement de la prestation: camp d''Ã©tÃ© basket pour CIOSSE REMI', '187.5', '', ''),
(680, 1, 'Remboursement de la prestation: zoo pour HOURDILLE JUSTINE', '9', '', ''),
(681, 1, 'Remboursement de la prestation: zoo pour HOURDILLE LUCAS', '9', '', ''),
(682, 1, 'Remboursement de la prestation: SPECTACLE pour REMY  JEAN MARC', '34.5', '', ''),
(683, 1, 'Remboursement de la prestation: licence pour BALLESTEROS THOMAS', '52.5', '', ''),
(684, 1, 'Remboursement de la prestation: licence pour CLAVERIE QUENTIN', '60', '', ''),
(685, 1, 'Remboursement de la prestation: cours de natation pour DUROU GABRIEL', '105', '', ''),
(686, 1, 'Remboursement de la prestation: visites touristiques pour BOUDERLIQUE DIDIER', '50', '', ''),
(688, 1, 'Remboursement de la prestation: visites touristiques pour ARRICAU ANGELE', '63.975', '', ''),
(689, 1, 'Remboursement de la prestation: visites + canoÃ© pour POUBLAN   ANDRE', '91.75', '', ''),
(690, 1, 'Remboursement de la prestation: ecole de musique pour DULAU AMIC', '187.5', '', ''),
(691, 1, 'Remboursement de la prestation: CENTRE EQUESTRE pour LUPIAC JUSTINE', '101.25', '', ''),
(692, 1, 'Remboursement de la prestation: visites + cinema pour SIFREU FLORIAN', '12', '', ''),
(693, 1, 'Remboursement de la prestation: puy du fou pour AIMAR REMY', '66', '', ''),
(694, 1, 'Remboursement de la prestation: walibi pour AMIS  CHRISTIAN', '26', '', ''),
(695, 1, 'Remboursement de la prestation: licence karatÃ© pour AMIS THOMAS', '123.75', '', ''),
(696, 1, 'Remboursement de la prestation: jet sensation glisse pour RIAHI ABDEL - HAKIM', '62.5', '', ''),
(697, 1, 'Remboursement de la prestation: port aventura + cinema pour MOUSQUES DIT CABANOT VALENTINE', '104.475', '', ''),
(698, 1, 'Remboursement de la prestation: port aventura + cinema pour MOUSQUES DIT CABANOT JEAN ', '104.475', '', ''),
(699, 1, 'Remboursement de la prestation: fitness club pour RUFFAT  JONATHAN', '67.5', '', ''),
(700, 1, 'Remboursement de la prestation: cinema pour RUFFAT BAPTISTE', '7.875', '', ''),
(701, 1, 'Remboursement de la prestation: foyer des jeunes pour MARTINEZ MAREVA', '84.75', '', ''),
(702, 1, 'Remboursement de la prestation: centre aere pour DANTEIN TOM', '54.75', '', ''),
(703, 1, 'Remboursement de la prestation: permis chasse + cartes pour MILAGE   CHRISTIAN', '89.43', '', ''),
(704, 1, 'Remboursement de la prestation: licence basket pour REMY GUILLAUME', '56.25', '', ''),
(706, 1, 'Remboursement de la prestation: permis de chasse + carte pour LAHORE-LAHITTE    JEAN .MARC', '92.48', '', ''),
(707, 1, 'Remboursement de la prestation: cine + visite pour BIDART CHARLOTTE', '23.3', '', ''),
(709, 1, 'Remboursement de la prestation: karting pour VIATEAU REMI', '20', '', ''),
(711, 1, 'Remboursement de la prestation: visite + cesta punta pour MOUSQUES DIT CABANOT  FREDERIC', '54', '', ''),
(712, 1, 'Remboursement de la prestation: abonnement section pour ETCHEVERRY JACQUES', '119', '', ''),
(714, 1, 'Remboursement de la prestation: Cotisation ThaÃ¯ Boxing club pour CASAIL CHRISTOPHE', '142.75', '', ''),
(716, 1, 'Remboursement de la prestation: vita liberte pour RUFFAT  JONATHAN', '9.25', '', ''),
(718, 1, 'Remboursement de la prestation: accueil de loisirs pour BONNINGUE CALI', '77.7975', '', ''),
(719, 1, 'Remboursement de la prestation: aquabike pour HYGEN DOMINIQUE', '62.35', '', ''),
(720, 1, 'Remboursement de la prestation: Ã©cole de cirque pour NARDOZZI LEIA', '176.25', '', ''),
(721, 1, 'Remboursement de la prestation: licence foot pour TLICH SLIM', '12.5', '', ''),
(722, 1, 'Remboursement de la prestation: licence foot + tennis pour TLICH MARWANE', '123.75', '', ''),
(723, 1, 'Remboursement de la prestation: gym pour TRIPICCHIO   JEAN PIERRE', '57.5', '', ''),
(724, 1, 'Remboursement de la prestation: VISITES + CINÃ‰MA + SPECTACLES pour RAJA DANIEL', '41', '', ''),
(725, 1, 'Remboursement de la prestation: COURSE SUR PRAIRIE pour VIATEAU REMI', '56.5', '', ''),
(726, 1, 'Remboursement de la prestation: TENNIS pour SAINT-MARTIN FLORIAN', '131.25', '', ''),
(727, 1, 'Remboursement de la prestation: TENNIS pour SAINT-MARTIN ERIC', '43.5', '', ''),
(728, 1, 'Remboursement de la prestation: mÃ©tamorphose pour MOURCEL THIERRY', '199.5', '', ''),
(730, 1, 'Remboursement de la prestation: Aqua BÃ©arn + Vasconiales  pour TREYTURE-HAYET  THIERRY', '9', '', ''),
(731, 1, 'Remboursement de la prestation: Licence Arts Martiaux + Aqua BÃ©arn pour BOY Aldwin', '126.75', '', ''),
(732, 1, 'Remboursement de la prestation: Vasconiales + Aqua BÃ©arn + Centre de Loisirs pour TREYTURE-HAYET ROBIN', '99', '', ''),
(733, 1, 'Remboursement de la prestation: Abonnement Etudiant MÃ©tamorphose pour ROSE ROMAIN', '270', '', ''),
(734, 1, 'Remboursement de la prestation: piscine pour CIOSSE  BRUNO', '156', '', ''),
(735, 1, 'Remboursement de la prestation: equitation pour BATBEDAT TEO', '286.125', '', ''),
(736, 1, 'Remboursement de la prestation: equitation pour GIACOMIN JEAN-LOUIS', '200', '', ''),
(737, 1, 'Remboursement de la prestation: BEER LOVERS MARATHON pour CASAIL CHARLOTTE', '48.75', '', ''),
(740, 1, 'Remboursement de la prestation: ILE AUX OISEAUX pour BIDART CHARLOTTE', '16', '', ''),
(741, 1, 'Remboursement de la prestation: PERMIS CHASSE pour ROUSSEFF PATRICK', '73.58', '', ''),
(742, 1, 'Remboursement de la prestation: ZUMBA pour GONCALVES NEIVA  ILONA', '148.5', '', ''),
(743, 1, 'Remboursement de la prestation: ENTREES PARCS pour GONCALVES NEIVA MAEVA', '13.5', '', ''),
(744, 1, 'Remboursement de la prestation: PLACES DIRTY DANCING pour TRIPICCHIO   JEAN PIERRE', '10', '', ''),
(745, 1, 'Remboursement de la prestation: PLACES DIRTY DANCING pour TRIPICCHIO FIORENZO', '41.25', '', ''),
(746, 1, 'Remboursement de la prestation: PLACE FOOTBALL pour LOPEZ   OLIVIER', '35.75', '', ''),
(747, 1, 'Remboursement de la prestation: PISCINE pour DA FONSECA TEO', '81', '', ''),
(748, 1, 'Remboursement de la prestation: PACAP pour DANTEIN YANNICK', '65', '', ''),
(749, 1, 'Remboursement de la prestation: LICENCE FOOTBALL pour LAMOURE-LABADIE  MICHEL', '47.5', '', ''),
(751, 1, 'Remboursement de la prestation: LICENCE FOOTBALL pour LAMOURE-LABADIE DAMIEN', '71.25', '', ''),
(752, 1, 'Remboursement de la prestation: DANSE pour BERTELOOT KEVIN', '33.75', '', ''),
(753, 1, 'Remboursement de la prestation: DANSE pour DA SILVA RACHEL', '105', '', ''),
(754, 1, 'Remboursement de la prestation: LICENCE FOOTBALL pour DA SILVA ROMAIN', '33.75', '', ''),
(755, 1, 'Remboursement de la prestation: NATATION pour TLICH ABDELAZIZ', '120', '', ''),
(756, 1, 'Remboursement de la prestation: KARATE pour TLICH CHEYMA', '140.25', '', ''),
(758, 1, 'Remboursement de la prestation: COURS ZUMBA pour MORAL LOLA', '135', '', ''),
(759, 1, 'Remboursement de la prestation: DANSE pour BONNINGUE CALI', '225', '', ''),
(760, 1, 'Remboursement de la prestation: TENNIS pour PASTOUREU GILLES', '51', '', ''),
(761, 1, 'Remboursement de la prestation: BALADE EN MER pour PASTOUREU MATHILDE', '15', '', ''),
(762, 1, 'Remboursement de la prestation: LICENCE BASKET pour PASTOUREU REMI', '71.25', '', ''),
(763, 1, 'Remboursement de la prestation: LICENCE BASKET pour EUSEBIO EVA', '15', '', ''),
(764, 1, 'Remboursement de la prestation: LICENCE BASKET pour EUSEBIO LOELIA', '15', '', ''),
(765, 1, 'Remboursement de la prestation: LICENCE FOOTBALL pour EUSEBIO MATHIS', '15', '', ''),
(766, 1, 'Remboursement de la prestation: CENTRE VACANCES pour DRIVON ELISE', '307.5', '', ''),
(767, 1, 'Remboursement de la prestation: CENTRE LOISIRS pour DRIVON ELISE', '307.5', '', ''),
(770, 1, 'Remboursement de la prestation: EQUITATION pour BENZIN CARLA-MARIE', '56.25', '', ''),
(771, 1, 'Remboursement de la prestation: COURS PIIANO pour LANOUE AXELLE', '285', '', ''),
(772, 1, 'Remboursement de la prestation: COURS PIANO pour LANOUE ROXANE', '261', '', ''),
(773, 1, 'Remboursement de la prestation: COURS DANSE pour DA FONSECA MARION', '202.5', '', ''),
(774, 1, 'Remboursement de la prestation: PERMIS CHASSE pour MILAGE   ANDRE', '83.93', '', ''),
(778, 1, 'Remboursement de la prestation: LICENCE BASKET pour MORRAL JEAN ', '45', '', ''),
(780, 1, 'Remboursement de la prestation: TENNIS + PISCINE pour MOUSQUES DIT CABANOT VALENTINE', '99.75', '', ''),
(781, 1, 'Remboursement de la prestation: LICENCE NATATION pour MOUSQUES DIT CABANOT JEAN ', '120', '', ''),
(782, 1, 'Remboursement de la prestation: CRECHE pour NIMHAOULIN SARAH', '48.0375', '', ''),
(783, 1, 'Remboursement de la prestation: LICENCE BASKET pour CABANE-CHRESTIA LUDOVIC', '95.25', '', ''),
(784, 1, 'Remboursement de la prestation: LICENCE RUGBY pour DARRACQ ADRIEN', '45', '', ''),
(785, 1, 'Remboursement de la prestation: GYM pour HOURDILLE JUSTINE', '67.5', '', ''),
(786, 1, 'Remboursement de la prestation: Stage de judo pour BOY Aldwin', '48.75', '', ''),
(787, 1, 'Remboursement de la prestation: Centre aÃ©rÃ© AoÃ»t pour TREYTURE-HAYET ROBIN', '52.5', '', ''),
(788, 1, 'Remboursement de la prestation: LICENCE pour ADENIS JUDICAELLE', '75', '', ''),
(789, 1, 'Remboursement de la prestation: Parc loisir  pour DANTEIN TOM', '48.75', '', ''),
(790, 1, 'Remboursement de la prestation: GYM + COURS PIANO pour JACKOWSKI LISA', '320', '', ''),
(791, 1, 'Remboursement de la prestation: COURS EQUITATION pour DOLLE  LAURENT', '30', '', ''),
(792, 1, 'Remboursement de la prestation: COURS EQUITATION pour DOLLE ANGELINE', '167.25', '', ''),
(793, 1, 'Remboursement de la prestation: GOLF + KARATE pour THIBAUT MICHEL', '200', '', ''),
(794, 1, 'Remboursement de la prestation: SOUTIEN SCOLAIRE pour THIBAUT AXEL', '320', '', ''),
(795, 1, 'Remboursement de la prestation: licence foot + cinÃ©ma pour GUERIN JEREMY', '74.7', '', ''),
(796, 1, 'Remboursement de la prestation: laser quest pour ADENIS ANAE', '60.75', '', ''),
(798, 1, 'Remboursement de la prestation: CINEMA pour VERON DIDIER', '66', '', ''),
(799, 1, 'Remboursement de la prestation: CINEMA pour HOURDILLE JUSTINE', '24.075', '', ''),
(800, 1, 'Remboursement de la prestation: CINEMA pour CUISINIER SOEN', '36', '', ''),
(801, 1, 'Remboursement de la prestation: CINEMA pour CUISINIER CLARA', '36', '', ''),
(802, 1, 'Remboursement de la prestation: LICENCE BASKET pour MOUSQUES DIT CABANOT VALENTINE', '45', '', ''),
(803, 1, 'Remboursement de la prestation: piscine pour MOUSQUES DIT CABANOT JEAN ', '41.1', '', ''),
(804, 1, 'Remboursement de la prestation: TENNIS pour SAINT-MARTIN ERIC', '8', '', ''),
(805, 1, 'Remboursement de la prestation: TENNIS pour SAINT-MARTIN FLORIAN', '12', '', ''),
(806, 2, 'Ajout du produit fixe: SUBVENTION 2%', '', '13544', ''),
(807, 2, 'Vente de Billetterie: REBOUCO JOSE pour la prestation Karting Lescar adulte ', '', '50', '1'),
(808, 2, 'Vente de Billetterie: EUSEBIO MANUEL pour la prestation Karting Lescar adulte ', '', '49.50', '2'),
(809, 2, 'Vente de Billetterie: JAUREGUIBERRY BRUNO pour la prestation Karting Lescar adulte ', '', '50', '3'),
(810, 2, 'Vente de Billetterie: WHALES STEPHEN pour la prestation Karting Lescar adulte ', '', '25', '4'),
(811, 2, 'Vente de Billetterie: REBOUCO JOSE pour la prestation Karting Lescar adulte ', '', '50', '5'),
(812, 2, 'Vente de Billetterie: GRACIET PATRICK pour la prestation Karting Lescar adulte ', '', '50', '6'),
(813, 2, 'Vente de Billetterie: BERGEZ CEDRIC pour la prestation Karting Lescar adulte ', '', '25', '7'),
(814, 2, 'Vente de Billetterie: VIATEAU REMI pour la prestation Karting Lescar adulte ', '', '25', '8'),
(815, 2, 'Vente de Billetterie: VILLAYES FLORIAN pour la prestation Karting Lescar adulte ', '', '25', '9'),
(816, 2, 'Vente de Billetterie: BIDART MICKAEL pour la prestation Puy du Fou Adulte  ', '', '100', '10'),
(817, 2, 'Vente de Billetterie: MARTINS DE LIMA PAUL pour la prestation Puy du Fou Adulte  ', '', '100', '11'),
(818, 2, 'Vente de Billetterie: BENZIN REGIS pour la prestation Puy du Fou Adulte  ', '', '100', '12'),
(819, 2, 'Vente de Billetterie: REBOUCO JOSE pour la prestation Puy du Fou Adulte  ', '', '100', '13'),
(820, 2, 'Vente de Billetterie: MASSEY YAN pour la prestation Puy du Fou Adulte  ', '', '100', '14'),
(821, 2, 'Vente de Billetterie: CLAVERIE THIERRY pour la prestation Puy du Fou Adulte  ', '', '100', '15'),
(822, 2, 'Vente de Billetterie: BIDART MARCEL pour la prestation Puy du Fou Adulte  ', '', '100', '16'),
(823, 2, 'Vente de Billetterie: GUYON MATTHIEU pour la prestation Puy du Fou Adulte  ', '', '100', '17'),
(824, 2, 'Vente de Billetterie: URRUTY MICHEL pour la prestation Puy du Fou Adulte  ', '', '100', '18'),
(825, 2, 'Vente de Billetterie: BORDATTO MICHEL pour la prestation Puy du Fou Adulte  ', '', '100', '19'),
(826, 2, 'Vente de Billetterie: BENZIN REGIS pour la prestation Puy du Fou Adulte  ', '', '100', '20'),
(827, 2, 'Vente de Billetterie: MARTINS DE LIMA PAUL pour la prestation Puy du Fou Adulte  ', '', '100', '21'),
(828, 2, 'Vente de Billetterie: GONCALVES NEIVA FREDERIC pour la prestation Puy du Fou Adulte  ', '', '100', '22'),
(829, 2, 'Vente de Billetterie: DECROUE DIDIER pour la prestation Puy du Fou Adulte  ', '', '100', '23'),
(830, 2, 'Vente de Billetterie: LANOUE LAURENT pour la prestation Puy du Fou Adulte  ', '', '100', '24'),
(831, 2, 'Vente de Billetterie: REBOUCO JOSE pour la prestation Puy du Fou Adulte  ', '', '100', '25'),
(832, 2, 'Vente de Billetterie: DE MIGUEL FELIX pour la prestation Puy du Fou Adulte  ', '', '100', '26'),
(833, 2, 'Vente de Billetterie: JAUREGUIBERRY BRUNO pour la prestation Puy du Fou Adulte  ', '', '100', '27'),
(834, 2, 'Vente de Billetterie: MASSEY YAN pour la prestation Puy du Fou Adulte  ', '', '100', '28'),
(835, 2, 'Vente de Billetterie: ARRICAU ANDRE pour la prestation Puy du Fou Adulte  ', '', '100', '29'),
(836, 2, 'Vente de Billetterie: DA FONSECA JOSE pour la prestation Puy du Fou Adulte  ', '', '100', '30'),
(837, 2, 'Vente de Billetterie: GRACIET PATRICK pour la prestation Puy du Fou Adulte  ', '', '100', '31'),
(838, 2, 'Vente de Billetterie: BORDENEUVE PATRICK pour la prestation Puy du Fou Adulte  ', '', '100', '32'),
(839, 2, 'Vente de Billetterie: ALLAMAN NICOLAS pour la prestation Puy du Fou Adulte  ', '', '100', '33'),
(840, 2, 'Vente de Billetterie: MOUSQUES DIT CABANOT STEPHANE pour la prestation Puy du Fou Adulte  ', '', '100', '34'),
(841, 2, 'Vente de Billetterie: BERGEZ ANDRE pour la prestation Puy du Fou Adulte  ', '', '100', '35'),
(842, 2, 'Vente de Billetterie: PUYOO GILLES pour la prestation Puy du Fou Adulte  ', '', '100', '36'),
(843, 2, 'Vente de Billetterie: LANOUE LAURENT pour la prestation Puy du Fou Adulte  ', '', '100', '37'),
(844, 2, 'Vente de Billetterie: GRACIET PATRICK pour la prestation Puy du Fou Adulte  ', '', '100', '38'),
(845, 2, 'Vente de Billetterie: MAZURIER SYLVIE pour la prestation Puy du Fou Adulte  ', '', '100', '39'),
(846, 2, 'Vente de Billetterie: BERGEZ ANDRE pour la prestation Puy du Fou Adulte  ', '', '100', '40'),
(847, 2, 'Vente de Billetterie: BORDATTO SERGE pour la prestation Puy du Fou Adulte  ', '', '100', '41'),
(848, 2, 'Vente de Billetterie: BORDENEUVE PATRICK pour la prestation Puy du Fou Adulte  ', '', '100', '42'),
(849, 2, 'Vente de Billetterie: GONCALVES NEIVA FREDERICK pour la prestation Puy du Fou Adulte  ', '', '100', '43'),
(850, 2, 'Vente de Billetterie: JAUREGUIBERRY BRUNO pour la prestation Puy du Fou Adulte  ', '', '100', '44'),
(851, 2, 'Vente de Billetterie: DECROUE DIDIER pour la prestation Puy du Fou Adulte  ', '', '100', '45'),
(852, 2, 'Vente de Billetterie: DA FONSECA JOSE pour la prestation Puy du Fou Adulte  ', '', '50', '46'),
(853, 2, 'Vente de Billetterie: DA FONSECA JOSE pour la prestation Puy du Fou Adulte  ', '', '50', '47'),
(854, 2, 'Vente de Billetterie: BIDART MARCEL pour la prestation Puy du Fou Adulte  ', '', '100', '48'),
(855, 2, 'Vente de Billetterie: ARRICAU ANDRE pour la prestation Puy du Fou Adulte  ', '', '100', '49'),
(856, 2, 'Vente de Billetterie: DE MIGUEL FELIX pour la prestation Puy du Fou Adulte  ', '', '100', '50'),
(857, 2, 'Vente de Billetterie: URRUTY MICHEL pour la prestation Puy du Fou Adulte  ', '', '100', '51'),
(858, 2, 'Vente de Billetterie: ALLAMAN NICOLAS pour la prestation Puy du Fou Adulte  ', '', '100', '52'),
(859, 2, 'Vente de Billetterie: CLAVERIE THIERRY pour la prestation Puy du Fou Adulte  ', '', '100', '53'),
(860, 2, 'Vente de Billetterie: BIDART MICKAEL pour la prestation Puy du Fou Adulte  ', '', '50', '54'),
(861, 2, 'Vente de Billetterie: BIDART MICKAEL pour la prestation Puy du Fou Adulte  ', '', '50', '55'),
(862, 2, 'Vente de Billetterie: GUYON MATTHIEU pour la prestation Puy du Fou Adulte  ', '', '100', '56'),
(863, 2, 'Vente de Billetterie: MOUSQUES DIT CABANOT STEPHANE pour la prestation Puy du Fou Adulte  ', '', '100', '57'),
(864, 2, 'Vente de Billetterie: BIDART DYLAN pour la prestation Puy du Fou Ado  ', '', '25', '58'),
(865, 2, 'Vente de Billetterie: BERSANS LAURA pour la prestation Puy du Fou Ado  ', '', '25', '59'),
(866, 2, 'Vente de Billetterie: BORDATTO CHLOE pour la prestation Puy du Fou Ado  ', '', '25', '60'),
(867, 2, 'Vente de Billetterie: BENZIN-CARLA-MARIE pour la prestation Puy du Fou Ado  ', '', '25', '61'),
(868, 2, 'Vente de Billetterie: MAZURIER MARIE pour la prestation Puy du Fou Ado  ', '', '25', '62'),
(869, 2, 'Vente de Billetterie: GONCALVES NEIVA ILONA pour la prestation Puy du Fou Enfant  ', '', '15', '63'),
(870, 2, 'Vente de Billetterie: GONCALVES NEIVA MAEVA pour la prestation Puy du Fou Ado  ', '', '25', '64'),
(871, 2, 'Vente de Billetterie: LANOUE ROXANE pour la prestation Puy du Fou Enfant', '', '15', '65'),
(872, 2, 'Vente de Billetterie: LANOUE AXELLE pour la prestation Puy du Fou Ado  ', '', '25', '66'),
(873, 2, 'Vente de Billetterie: JAUREGUIBERRY IBAN pour la prestation Puy du Fou Enfant  ', '', '15', '67'),
(874, 2, 'Vente de Billetterie: MASSEY MARGAUX pour la prestation Puy du Fou Enfant  ', '', '15', '68'),
(875, 2, 'Vente de Billetterie: MASSEY MAELY pour la prestation Puy du Fou Enfant ', '', '15', '69'),
(876, 2, 'Vente de Billetterie: MASSEY JOAN pour la prestation Puy du Fou Enfant  ', '', '15', '70'),
(877, 2, 'Vente de Billetterie: ARRICAU ANGELE pour la prestation Puy du Fou Ado  ', '', '25', '71'),
(878, 2, 'Vente de Billetterie: DA FONSECA MARION pour la prestation Puy du Fou Enfant  ', '', '15', '72'),
(879, 2, 'Vente de Billetterie: MOUSQUES DIT CABANOT JEAN pour la prestation Puy du Fou Enfant  ', '', '15', '73'),
(880, 2, 'Vente de Billetterie: MOUSQUES DIT CABANOT VALENTINE pour la prestation Puy du Fou Enfant  ', '', '15', '74'),
(881, 2, 'Vente de Billetterie: ALLAMAN AZELIA pour la prestation Puy du Fou Ado  ', '', '25', '75'),
(882, 2, 'Vente de Billetterie: ALLAMAN ANDERSON pour la prestation Puy du Fou Ado  ', '', '25', '76'),
(883, 2, 'Vente de Billetterie: DECROUE LOU-ANNE pour la prestation Puy du Fou Enfant  ', '', '15', '77'),
(884, 2, 'Vente de Billetterie: CLAVERIE QUENTIN pour la prestation Puy du Fou Enfant  ', '', '15', '78'),
(885, 2, 'Ajout du produit fixe: SUBVENTION ASC ', '', '13544', '19600114'),
(886, 2, 'Ajout du produit fixe: SUBVENTION ASC ', '', '13544', '81881563'),
(887, 2, 'Ajout du produit fixe: SUBVENTION ASC ', '', '13544', '50033072'),
(888, 2, 'Ajout du produit fixe: SUBVENTION ASC ', '', '13544', '49947348'),
(889, 2, 'Ajout du produit fixe: SUBVENTION ASC ', '', '13544', '58528991'),
(890, 2, 'Ajout du produit fixe: SUBVENTION ASC ', '', '13544', '66932531'),
(891, 2, 'Ajout du produit fixe: SUBVENTION ASC ', '', '13544', '87890584'),
(892, 2, 'Ajout du produit fixe: SUBVENTION ASC ', '', '13544', '30733172'),
(893, 2, 'Ajout du produit fixe: SUBVENTION ASC ', '', '13544', '36370844'),
(894, 2, 'Ajout du produit fixe: SUBVENTION ASC ', '', '13544', '85530088'),
(899, 1, 'Remboursement de la prestation: Licence FOOT pour GUION HUGO', '33.75', '', ''),
(902, 1, 'Ajout de la charge Fixe: Achat Ch&egrave;que vacances ANCV N&deg; 0000484', '57424.60', '', '96224012'),
(903, 1, 'Ajout de la charge Fixe: CIRQUE DE NOEL n: 2308', '1260.00', '', '36601279'),
(904, 1, 'Ajout de la charge Fixe: ABONNEMENT SECTION PALOISE n:2293', '870', '', '95301532'),
(905, 1, 'Ajout de la charge Fixe: VOYAGE PUY DU FOU n&deg; 2327', '12600', '', '84868116'),
(906, 1, 'Ajout de la charge Fixe: AIDE A LA LOCATION MOUSQUES DIT CABANOT  STEPHANE n&deg; 2336', '600', '', '89089708'),
(907, 1, 'Ajout de la charge Fixe: KARTING LESCAR n&deg; 2341', '587.50', '', '87612022'),
(908, 1, 'Ajout de la charge Fixe: cheques vacances Aimar n&deg; 0485', '319.20', '', '62717697'),
(909, 1, 'Ajout de la charge Fixe: ABONNEMENT ELAN BEARNAIS n 2353', '1260', '', '51470509'),
(910, 1, 'Ajout de la charge Fixe: AIDE AUX VOYAGES NIMAHOULIN OMAR n&deg;2262', '930', '', '86026465'),
(911, 1, 'Ajout de la charge Fixe: AIDE A LA LOCATION DANTEIN Yannick n&deg; 2368', '640', '', '19607671'),
(912, 1, 'Remboursement de la prestation: ENTREES PARC pour CASAMAJOU INTZA', '19.5', '', ''),
(913, 1, 'Remboursement de la prestation: ENTREES PARC pour CASAMAJOU JEAN BERNARD', '17', '', ''),
(915, 1, 'Remboursement de la prestation: Ã©cole de voile pour DRIVON EMILY', '202.5', '', ''),
(916, 1, 'Remboursement de la prestation: Ã©cole de musique pour DRIVON EMILY', '168.075', '', ''),
(917, 1, 'Remboursement de la prestation: licence rugby pour TOMASSI FABIEN', '70', '', ''),
(919, 1, 'Remboursement de la prestation: ACCUEIL DE LOISIRS pour CASAMAJOU INTZA', '31.05', '', ''),
(920, 1, 'Remboursement de la prestation: ACCUEIL DE LOISIRS pour CASAMAJOU IKER', '24.75', '', ''),
(922, 1, 'Remboursement de la prestation: PARC ASTERIX pour NAVAILLES ARGENTA FLORIAN', '36.51', '', ''),
(923, 1, 'Remboursement de la prestation: Abonnement Platinium pour MOUZAT MORGANE', '130.5', '', ''),
(924, 1, 'Remboursement de la prestation: Spectacles, entrÃ©es parcs, ... pour HOSTENDIE INES', '127.5', '', ''),
(925, 1, 'Remboursement de la prestation: Spectacles, entrÃ©es parcs, ... pour HOSTENDIE CLARISSE', '113.25', '', ''),
(926, 1, 'Remboursement de la prestation: yoga pour CAZANAVE-HOURQUET FERNAND', '62.5', '', ''),
(927, 1, 'Remboursement de la prestation: cinÃ©ma + aquarium pour FONSECA PHILIPPE', '23.05', '', ''),
(928, 1, 'Remboursement de la prestation: piscine pour GONCALVES NEIVA  ILONA', '120.975', '', ''),
(929, 1, 'Remboursement de la prestation: centre de loisirs pour BONNINGUE CALI', '20.085', '', ''),
(930, 1, 'Remboursement de la prestation: cinÃ©ma+canoÃ« + mÃ©tamorphose pour CORNOUILLER JULIEN', '131.05', '', ''),
(931, 1, 'Remboursement de la prestation: centre equestre pour DOLLE BASTIEN', '30', '', ''),
(933, 1, 'Remboursement de la prestation: cinÃ©ma + piscine pour LACARRIEU-HAURAT MORGANE', '14.25', '', ''),
(934, 1, 'Remboursement de la prestation: paje empoi pour ABADO MickaÃ«l', '217.8', '', ''),
(937, 1, 'Remboursement de la prestation: centre social pour JUNGAS JADE', '71.2125', '', ''),
(938, 1, 'Remboursement de la prestation: spectacle + abonnement pour DAUBA  BAPTISTE', '59', '', ''),
(939, 1, 'Remboursement de la prestation: parc ours pour BORDENAVE MAX', '4.95', '', ''),
(940, 1, 'Remboursement de la prestation: natation + inscriptions pour BREGNIAS MARC', '148.35', '', ''),
(941, 1, 'Remboursement de la prestation: ecole de natation + game show pour ADENIS ANAE', '131.475', '', ''),
(942, 1, 'Remboursement de la prestation: game show pour ADENIS JUDICAELLE', '10.5', '', ''),
(943, 1, 'Remboursement de la prestation: game show pour ADENIS BERTRAND', '7', '', ''),
(944, 1, 'Remboursement de la prestation: mÃ©tamorphose pour BIDART CHARLOTTE', '150', '', ''),
(945, 1, 'Remboursement de la prestation: MusÃ©e, Squash, cinÃ©, zoo, ... pour WHALES  STEPHEN', '42.5', '', ''),
(946, 1, 'Remboursement de la prestation: Centre de Loisirs pour WHALES CELESTE', '132', '', ''),
(947, 1, 'Remboursement de la prestation: Licence USL Natation pour CASAIL CHARLOTTE', '52.5', '', ''),
(948, 1, 'Remboursement de la prestation: METAMORPHOSE pour NARDOZZI JEREMY', '124.5', '', ''),
(949, 1, 'Remboursement de la prestation: free bowl pour TRIPICCHIO FIORENZO', '13.65', '', ''),
(951, 1, 'Remboursement de la prestation: licence danse + zoo pour MASSEY MARGAUX', '98.475', '', ''),
(952, 1, 'Remboursement de la prestation: licence danse + zoo pour MASSEY MAELY', '98.475', '', ''),
(953, 1, 'Remboursement de la prestation: licence judo + royals  Kids + zoo pour MASSEY JOAN', '208.725', '', ''),
(954, 1, 'Remboursement de la prestation: magic forme pour FONSECA PHILIPPE', '65.7', '', ''),
(955, 1, 'Remboursement de la prestation: licence hand pour LANOUE ROXANE', '46.5', '', ''),
(956, 1, 'Remboursement de la prestation: SPECTACLE pour CLAVERIE QUENTIN', '43.5', '', ''),
(957, 1, 'Remboursement de la prestation: PARC ANIMALIER pour JAUREGUIBERRY IBAN', '8.25', '', ''),
(958, 1, 'Remboursement de la prestation: GARDERIE pour JAUREGUIBERRY IBAN', '39.255', '', ''),
(959, 1, 'Remboursement de la prestation: pajeemploi pour MOLENAT JOHAN', '320', '', ''),
(960, 1, 'Remboursement de la prestation: basket + aquabearn pour PASTOUREU MATHILDE', '37.5', '', ''),
(961, 1, 'Remboursement de la prestation: basket + aquabearn pour PASTOUREU REMI', '37.5', '', ''),
(962, 1, 'Remboursement de la prestation: METAMORPHOSE pour MORRAL JEREMIE', '200', '', ''),
(963, 1, 'Remboursement de la prestation: squash+ cinÃ© +golf +,,,,, pour DATHY FRANCK', '116.985', '', ''),
(964, 1, 'Remboursement de la prestation: abonnement sport lescar pour TOMASSI FABIEN', '130', '', ''),
(966, 1, 'Ajout de la charge Fixe: PLACE AU CIRQUE n&deg; 2499', '679.00', '', '8813737'),
(967, 1, 'Remboursement de la prestation: Ecole de tennis + Pic du Midi pour HOURDILLE JUSTINE', '246.75', '', ''),
(968, 1, 'Remboursement de la prestation: Pic du Midi pour HOURDILLE LUCAS', '25.5', '', ''),
(969, 1, 'Remboursement de la prestation: Abonnement annuel Basic Fit II pour ROSSI EDWIGE', '169', '', ''),
(970, 1, 'Remboursement de la prestation: Ã©cole de tennis pour HOURDILLE LUCAS', '221.25', '', '');
INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(971, 1, 'Remboursement de la prestation: tennis de table pour HOURDILLE THERESE', '105', '', ''),
(972, 1, 'Remboursement de la prestation: tennis de table pour HOURDILLE LUCAS', '147.75', '', ''),
(973, 1, 'Remboursement de la prestation: Karting pour GUERIN JEREMY', '51', '', ''),
(974, 1, 'Remboursement de la prestation: Foyer rural pour MARTINEZ MAREVA', '98.25', '', ''),
(975, 1, 'Remboursement de la prestation: foyer rural + spectacle pour MARTINEZ MAREVA', '121.5', '', ''),
(976, 1, 'Remboursement de la prestation: spectacle pour MARTINEZ ALAIN', '36', '', ''),
(977, 1, 'Remboursement de la prestation: spectacle pour CASAIL CHARLOTTE', '74.85', '', ''),
(978, 1, 'Remboursement de la prestation: caliceo pour ALVES  PAUL', '15', '', ''),
(979, 1, 'Remboursement de la prestation: Ariegeoise + pÃªcherie + ferme aux bisons pour DEL PIANTA  ALEXANDRE', '48.5', '', ''),
(980, 1, 'Remboursement de la prestation: spectacle pour ADENIS BERTRAND', '33', '', ''),
(982, 1, 'Remboursement de la prestation: spectacle pour ADENIS ANAE', '51.975', '', ''),
(983, 1, 'Remboursement de la prestation: thermes pour DULAU  EMMANUEL', '11', '', ''),
(984, 1, 'Remboursement de la prestation: Pajeemploi pour ABADO Micka&euml;l', '102.20', '', ''),
(985, 1, 'Remboursement de la prestation: Cotisation Boxe + abonnement cinÃ©ma pour BATBEDAT  LAURENT', '82.5', '', ''),
(986, 1, 'Remboursement de la prestation: Caliceo pour LAHORE-LAHITTE    JEAN .MARC', '37.5', '', ''),
(987, 1, 'Remboursement de la prestation: Corail hÃ©licoptÃ¨re pour AIMAR REMY', '134', '', ''),
(988, 1, 'Remboursement de la prestation: licence + cinÃ©ma pour DAUBA  BAPTISTE', '37', '', ''),
(990, 1, 'Remboursement de la prestation: opÃ©ra pour CASAMAJOU JEAN BERNARD', '49', '', ''),
(991, 1, 'Remboursement de la prestation: karting pour BENZIN DYLAN', '147', '', ''),
(993, 1, 'Remboursement de la prestation: concert pour PERALTA   JORDI', '47', '', ''),
(994, 1, 'Remboursement de la prestation: tennis + surf pour SALVA YOHAN', '200', '', ''),
(995, 1, 'Remboursement de la prestation: CINEMA pour BRUNE ERIC', '41.25', '', ''),
(996, 1, 'Remboursement de la prestation: concert pour ROSSI EDWIGE', '31', '', ''),
(997, 1, 'Remboursement de la prestation: piscine pour DA FONSECA TEO', '194.4', '', ''),
(998, 1, 'Remboursement de la prestation: Permis +ski pour FOURNIER DOMINIQUE', '85', '', ''),
(999, 1, 'Remboursement de la prestation: gym pour SIFREU FLORIAN', '23.5', '', ''),
(1000, 1, 'Remboursement de la prestation: Rhianna + cinÃ© pour CUISINIER SOEN', '92.94', '', ''),
(1001, 1, 'Remboursement de la prestation: rhianna + cinÃ©ma pour CUISINIER CLARA', '94.59', '', ''),
(1002, 2, 'Ajout du produit fixe: SUBVENTION ASC', '', '11544.00', '46601262'),
(1003, 1, 'Remboursement de la prestation: basket + licence pour CABANE-CHRESTIA LUDOVIC', '53.25', '', ''),
(1004, 1, 'Remboursement de la prestation: basket pour CABANE-CHRESTIA CHRISTOPHE', '12.5', '', ''),
(1005, 1, 'Remboursement de la prestation: PISCINE pour MAIRAL JULIEN', '97.85', '', ''),
(1006, 1, 'Remboursement de la prestation: rugby pour DARRACQ CHRISTOPHE', '9', '', ''),
(1007, 1, 'Remboursement de la prestation: cinema pour LAHORE-LAHITTE    JEAN .MARC', '10.6', '', ''),
(1008, 1, 'Remboursement de la prestation: KARTING pour DARRACQ ADRIEN', '26', '', ''),
(1009, 1, 'Remboursement de la prestation: CALICEO + FOOT pour PASTOUREU GILLES', '37.5', '', ''),
(1010, 1, 'Remboursement de la prestation: CALICEO + FOOT pour PASTOUREU MATHILDE', '15', '', ''),
(1011, 1, 'Remboursement de la prestation: CALICEO + FOOT pour PASTOUREU FANNY', '15', '', ''),
(1012, 1, 'Remboursement de la prestation: VOYAGE SCOLAIRE pour NIMHAOULIN ANISS', '225', '', ''),
(1013, 1, 'Remboursement de la prestation: VOYAGE SCOLAIRE pour SAINT-MARTIN MELISSA', '123.75', '', ''),
(1014, 1, 'Remboursement de la prestation: HAMMAM + CALICEO pour ALCANTARA BEATRICE', '160', '', ''),
(1015, 1, 'Remboursement de la prestation: CINÃ‰MA + MUSCULATION pour TRIPICCHIO FIORENZO', '60.75', '', ''),
(1016, 1, 'Remboursement de la prestation: BAINS DU ROCHER pour TISNES MARION', '17', '', ''),
(1017, 1, 'Remboursement de la prestation: CINÃ‰MA +SPECTACLES pour ALVES  PAUL', '82.3', '', ''),
(1018, 1, 'Remboursement de la prestation: SQUASH pour WHALES  STEPHEN', '16.525', '', ''),
(1019, 1, 'Ajout de la charge Fixe: CHEQUE CADEAU DE NOEL n&deg;2540 (PUERTAS)', '80.00', '', '18228568'),
(1020, 1, 'Ajout de la charge Fixe: ANNIVERSAIRE 25 ANS REXAM (sacs &agrave; dos) n&deg;0139087  ch&egrave;que de banque', '5191.80', '', '5231468'),
(1021, 1, 'Ajout de la charge Fixe: ANNIVERSAIRE 25 ANS REXAM (chocolats) n&deg;0139088 ch&egrave;que de banque', '2408.32', '', '18345861'),
(1022, 1, 'Ajout de la charge Fixe: LA PETIAN n&deg; 0496', '1000.00', '', '43274731'),
(1023, 1, 'Ajout de la charge Fixe: CH&Egrave;QUES CADHOC n&deg; 0494', '25641.40', '', '51865354'),
(1024, 1, 'Ajout de la charge Fixe: CH&Egrave;QUES CADHOC  virement bancaire', '1600.10', '', '68139168'),
(1025, 1, 'Ajout de la charge Fixe: ANNIVERSAIRE 25 ANS REXAM (sacs &agrave; dos) n&deg;2541', '127.25', '', '58185731'),
(1026, 1, 'Remboursement de la prestation: SPECTACLES pour PERALTA   GAETAN', '47.3', '', ''),
(1027, 1, 'Remboursement de la prestation: SPECTACLE pour PERALTA ANTONIN', '35.7', '', ''),
(1029, 1, 'Remboursement de la prestation: espace vital pour SIFREU FLORIAN', '34', '', ''),
(1030, 1, 'Remboursement de la prestation: cirque de noel pour NOUSTY EMMA', '22.65', '', ''),
(1031, 1, 'Remboursement de la prestation: cirque de noel pour NOUSTY GILLES', '30.2', '', ''),
(1032, 1, 'Remboursement de la prestation: royal kids pour DANTEIN TOM', '11.25', '', ''),
(1033, 1, 'Remboursement de la prestation: Pajemploi assitante maternelle pour JUNGAS LOU', '320', '', '');

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
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `billet_ayant_droit`
--

INSERT INTO `billet_ayant_droit` (`idbilletayantdroit`, `idayantdroit`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_facture`, `num_mouvement`) VALUES
(2, 94, '26-07-2015', 3, '15', 1, ''),
(3, 112, '26-07-2015', 3, '15', 1, ''),
(5, 58, '26-07-2015', 3, '25', 1, ''),
(6, 59, '26-07-2015', 3, '25', 1, ''),
(7, 176, '26-07-2015', 3, '15', 1, ''),
(8, 177, '26-07-2015', 3, '15', 1, ''),
(10, 99, '26-07-2015', 3, '15', 1, ''),
(11, 61, '26-07-2015', 3, '25', 1, ''),
(12, 167, '26-07-2015', 3, '15', 1, ''),
(13, 168, '26-07-2015', 3, '15', 1, ''),
(14, 169, '26-07-2015', 3, '15', 1, ''),
(15, 149, '26-07-2015', 3, '15', 1, ''),
(16, 158, '26-07-2015', 3, '25', 1, ''),
(17, 159, '26-07-2015', 3, '15', 1, ''),
(18, 140, '26-07-2015', 3, '25', 1, ''),
(19, 139, '26-07-2015', 3, '15', 1, ''),
(20, 171, '26-07-2015', 3, '25', 1, ''),
(21, 71, '26-07-2015', 3, '25', 1, ''),
(22, 78, '26-07-2015', 3, '25', 1, ''),
(23, 215, '26-07-2015', 3, '25', 1, ''),
(24, 74, '26-07-2015', 3, '25', 1, '');

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
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`, `num_mouvement`) VALUES
(49, 208, '21-02-2015', 3, '100', 1, ''),
(50, 156, '21-02-2015', 3, '100', 1, ''),
(51, 82, '21-02-2015', 3, '50', 1, ''),
(52, 82, '21-02-2015', 3, '50', 1, ''),
(53, 116, '21-02-2015', 3, '100', 1, ''),
(54, 64, '21-02-2015', 3, '100', 1, ''),
(55, 253, '21-02-2015', 3, '100', 1, ''),
(56, 130, '21-02-2015', 3, '100', 1, ''),
(57, 68, '21-02-2015', 3, '100', 1, ''),
(58, 81, '21-02-2015', 3, '100', 1, ''),
(59, 120, '21-02-2015', 3, '50', 1, ''),
(60, 120, '21-02-2015', 3, '50', 1, ''),
(61, 132, '21-02-2015', 3, '100', 1, ''),
(62, 162, '21-02-2015', 3, '100', 1, ''),
(63, 153, '21-02-2015', 3, '100', 1, ''),
(64, 88, '21-02-2015', 3, '100', 1, ''),
(65, 86, '21-02-2015', 3, '100', 1, ''),
(66, 76, '21-02-2015', 3, '100', 1, ''),
(67, 200, '21-02-2015', 3, '100', 1, ''),
(68, 154, '21-02-2015', 3, '100', 1, ''),
(69, 179, '21-02-2015', 3, '100', 1, ''),
(70, 226, '24-02-2015', 3, '100', 1, ''),
(73, 76, '26-07-2015', 3, '100', 1, ''),
(74, 208, '26-07-2015', 3, '100', 1, ''),
(75, 64, '26-07-2015', 3, '100', 1, ''),
(76, 88, '26-07-2015', 3, '100', 1, ''),
(77, 154, '26-07-2015', 3, '100', 1, ''),
(78, 120, '26-07-2015', 3, '100', 1, ''),
(79, 68, '26-07-2015', 3, '100', 1, ''),
(80, 198, '26-07-2015', 3, '100', 1, ''),
(81, 162, '26-07-2015', 3, '100', 1, ''),
(82, 130, '26-07-2015', 3, '100', 1, ''),
(83, 228, '26-07-2015', 3, '100', 1, ''),
(85, 179, '26-07-2015', 3, '100', 1, ''),
(86, 132, '26-07-2015', 3, '100', 1, ''),
(87, 153, '26-07-2015', 3, '100', 1, ''),
(88, 195, '26-07-2015', 3, '100', 1, ''),
(89, 75, '26-07-2015', 3, '100', 1, ''),
(90, 86, '26-07-2015', 3, '100', 1, ''),
(91, 253, '26-07-2015', 3, '100', 1, ''),
(92, 156, '26-07-2015', 3, '100', 1, ''),
(93, 81, '26-07-2015', 3, '100', 1, ''),
(94, 116, '26-07-2015', 3, '100', 1, ''),
(95, 198, '21-02-2015', 3, '100', 1, ''),
(96, 228, '21-02-2015', 3, '100', 1, ''),
(98, 75, '21-02-2015', 3, '100', 1, ''),
(99, 195, '21-02-2015', 3, '100', 1, ''),
(100, 82, '26-07-2015', 3, '100', 1, ''),
(102, 258, '20-08-2015', 3, '25', 1, ''),
(103, 256, '20-08-2015', 3, '25', 1, ''),
(104, 77, '20-08-2015', 3, '25', 1, ''),
(105, 154, '20-08-2015', 3, '50', 1, ''),
(106, 228, '20-08-2015', 3, '50', 1, ''),
(107, 259, '20-08-2015', 3, '25', 1, ''),
(108, 162, '20-08-2015', 3, '50', 1, ''),
(110, 145, '20-08-2015', 3, '49.5', 1, '2'),
(111, 228, '20-08-2015', 3, '50', 1, '1');

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

--
-- Contenu de la table `charge_fixe`
--

INSERT INTO `charge_fixe` (`idchargefixe`, `designation`, `date_charge_fixe`, `montant_charge`, `num_mouvement`) VALUES
(3, 'Achat Ch&egrave;que vacances ANCV N&deg; 0000484', '12-05-2015', '57424.60', '96224012'),
(4, 'CIRQUE DE NOEL n: 2308', '30-05-2015', '1260.00', '36601279'),
(5, 'ABONNEMENT SECTION PALOISE n:2293', '30-05-2015', '870', '95301532'),
(6, 'VOYAGE PUY DU FOU n&deg; 2327', '16-06-2015', '12600', '84868116'),
(7, 'AIDE A LA LOCATION MOUSQUES DIT CABANOT  STEPHANE n&deg; 2336', '25-06-2015', '600', '89089708'),
(8, 'KARTING LESCAR n&deg; 2341', '02-07-2015', '587.50', '87612022'),
(9, 'cheques vacances Aimar n&deg; 0485', '01-07-2015', '319.20', '62717697'),
(10, 'ABONNEMENT ELAN BEARNAIS n 2353', '30-07-2015', '1260', '51470509'),
(11, 'AIDE AUX VOYAGES NIMAHOULIN OMAR n&deg;2262', '10-07-2015', '930', '86026465'),
(12, 'AIDE A LA LOCATION DANTEIN Yannick n&deg; 2368', '31-07-2015', '640', '19607671'),
(14, 'PLACE AU CIRQUE n&deg; 2499', '25-11-2015', '679.00', '8813737'),
(15, 'CHEQUE CADEAU DE NOEL n&deg;2540 (PUERTAS)', '23-12-2015', '80.00', '18228568'),
(16, 'ANNIVERSAIRE 25 ANS REXAM (sacs &agrave; dos) n&deg;0139087  ch&egrave;que de banque', '04-12-2015', '5191.80', '5231468'),
(17, 'ANNIVERSAIRE 25 ANS REXAM (chocolats) n&deg;0139088 ch&egrave;que de banque', '05-12-2015', '2408.32', '18345861'),
(18, 'LA PETIAN n&deg; 0496', '08-12-2015', '1000.00', '43274731'),
(19, 'CH&Egrave;QUES CADHOC n&deg; 0494', '20-11-2015', '25641.40', '51865354'),
(20, 'CH&Egrave;QUES CADHOC  virement bancaire', '25-11-2015', '1600.10', '68139168'),
(21, 'ANNIVERSAIRE 25 ANS REXAM (sacs &agrave; dos) n&deg;2541', '31-12-2015', '127.25', '58185731');

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
(82, 3, '17156.79', '14417.06'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '1461.83', '0'),
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
(107, 28, '30363.06', '48676.71'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', ''),
(113, 34, '', ''),
(114, 35, '', '15946'),
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
(129, 50, '204.3', ''),
(130, 51, '661.16', '0'),
(131, 52, '', ''),
(132, 53, '408.01', ''),
(133, 54, '', ''),
(134, 55, '1449.66', ''),
(135, 56, '3624', ''),
(136, 57, '1544.1', ''),
(137, 58, '', ''),
(138, 59, '', ''),
(139, 60, '1164', ''),
(140, 61, '3900', ''),
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

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `num_mouvement`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(139, '3497525', '1420066800', 'Subvention Janvier', 3, '1354', ''),
(140, '4259750', '1420412400', 'Frais DÃ©placement VÃ©ronique NÂ° 239', 3, '', '44.80'),
(141, '1490462', '1421276400', 'Frais SecrÃ©taire CE Janvier', 3, '', '302'),
(142, '7262242', '1421622000', 'SFR 2', 3, '', '42.98'),
(143, '7640662', '1421622000', 'SFR 1', 3, '', '42.98'),
(145, '3618729', '1422745200', 'Subvention FÃ©vrier', 3, '1354', ''),
(146, '1162396', '1423436400', 'Frais DÃ©placement VÃ©ronique NÂ° 240', 3, '', '44.80'),
(148, '2132727', '1423954800', 'Frais SecrÃ©taire CE FÃ©vrier', 3, '', '302'),
(149, '1254050', '1424214000', 'SFR 1', 3, '', '42.98'),
(150, '5114434', '1424214000', 'SFR 2', 3, '', '42.98'),
(151, '9508639', '1424732400', 'MÃ©dia CE NÂ°242', 3, '', '120'),
(152, '3324744', '1425164400', 'Subvention Mars', 3, '1354', ''),
(153, '7608920', '1425855600', 'Frais DÃ©placement VÃ©ronique NÂ° 243', 3, '', '44.80'),
(154, '1772275', '1426028400', 'Achat Timbre NÂ°244', 3, '', '91.95'),
(155, '5764909', '1426374000', 'Frais SecrÃ©taire CE Mars', 3, '', '302'),
(156, '6580366', '1426374000', 'Micro Plus NÂ°247', 3, '', '32'),
(157, '2511053', '1426460400', 'SFR 1', 3, '', '42.98'),
(158, '4942877', '1426460400', 'SFR 2', 3, '', '42.98'),
(159, '1882736', '1427324400', 'Gerbe Ladaurade', 3, '', '100'),
(160, '2815175', '1427324400', 'Frais DÃ©placement VÃ©ronique NÂ° 0246', 3, '', '44.80'),
(161, '8739530', '1427839200', 'Subvention Avril', 3, '1354', ''),
(162, '8137777', '1428357600', 'Renouvellement annuel office 365 NÂ°179', 3, '', '99'),
(163, '7186600', '1428616800', 'Frais DÃ©placement VÃ©ronique NÂ° 0248', 3, '', '44.80'),
(164, '2786905', '1428616800', 'Frais SecrÃ©taire CE Avril', 3, '', '302'),
(165, '3141418', '1429135200', 'SFR 2', 3, '', '42.98'),
(166, '9707568', '1429135200', 'SFR 1', 3, '', '42.98'),
(167, '5104250', '1430431200', 'Subvention Mai', 3, '1354', ''),
(168, '1538943', '1430949600', 'Frais DÃ©placement VÃ©ronique NÂ° 0249', 3, '', '44.80'),
(169, '1117927', '1430949600', 'Frais SecrÃ©taire CE Mai', 3, '', '302'),
(170, '3844630', '1431640800', 'SFR 1', 3, '', '42.98'),
(171, '8716367', '1431640800', 'SFR 2', 3, '', '42.98'),
(172, '3093653', '1433109600', 'Subvention Juin', 3, '1354', ''),
(173, '7876782', '1433714400', 'Frais SecrÃ©taire CE Juin', 3, '', '302'),
(174, '4151854', '1433714400', 'Frais DÃ©placement VÃ©ronique NÂ° 250', 3, '', '44.80'),
(175, '8955797', '1434319200', 'SFR 1', 3, '', '42.98'),
(176, '9925371', '1434319200', 'SFR 2', 3, '', '42.98'),
(177, '2473670', '1434492000', 'RecommandÃ©s envoie chÃ¨ques vacance NÂ°0251', 3, '', '73.50'),
(178, '1923444', '1435701600', 'Subvention Juillet', 3, '1354', ''),
(179, '2815601', '1435701600', 'Frais SecrÃ©taire CE Juillet', 3, '', '302'),
(180, '3721667', '1436133600', 'Frais DÃ©placement VÃ©ronique NÂ° 0252', 3, '', '44.80'),
(181, '8240165', '1436911200', 'SFR 1', 3, '', '53.99'),
(182, '2745396', '1436911200', 'SFR 2', 3, '', '53.99'),
(183, '4935885', '1436997600', 'Gerbe Lacabarats', 3, '', '150'),
(184, '5219250', '1438380000', 'Achat Portables', 3, '', '386'),
(186, '2446039', '1438380000', 'Subvention Aout', 3, '1354', ''),
(187, '7455409', '1438380000', 'Frais SecrÃ©taire CE Aout', 3, '', '302'),
(188, '9158039', '1439589600', 'SFR 1', 3, '', '53.99'),
(189, '3855494', '1439589600', 'SFR 2', 3, '', '53.99'),
(190, '7105366', '1440712800', 'Achat Dictaphone', 3, '', '99'),
(191, '3777428', '1441058400', 'Subvention Septembre', 3, '1354', ''),
(192, '8595206', '1441058400', 'Frais SecrÃ©taire CE Septembre', 3, '', '302'),
(193, '2214823', '1441058400', 'SFR 1', 3, '', '53.99'),
(194, '8515874', '1441058400', 'SFR 2', 3, '', '53.99'),
(195, '3612040', '1442700000', 'Formation CHSCT', 3, '', '3000'),
(196, '8582333', '1443045600', 'Abonnement TISSOT', 3, '', '274.31'),
(197, '3328229', '1443650400', 'Subvention Octobre', 3, '1354', ''),
(198, '8457871', '1443650400', 'Frais SecrÃ©taire CE Octobre', 3, '', '302'),
(199, '4213030', '1444341600', 'Frais DÃ©placement SecrÃ©taire CE 09 et 10 NÂ°0257', 3, '', '27.38'),
(200, '9100686', '1444860000', 'SFR 1', 3, '', '53.99'),
(201, '8207350', '1444860000', 'SFR 2', 3, '', '53.99'),
(202, '3686578', '1445464800', 'Plein Ciel ChÃ¨que NÂ°258', 3, '', '71.73'),
(203, '2485801', '1448233200', 'Frais dÃ©placement Formation Agir en CE ChÃ¨que nÂ° 181', 3, '', '112,86'),
(204, '7020071', '1448233200', 'Frais dÃ©placement ChÃ¨que nÂ° 182', 3, '', '96'),
(205, '1143798', '1447110000', 'Frais dÃ©placement InfoDirect ChÃ¨que nÂ° 183', 3, '', '40,32'),
(207, '7419578', '1446332400', 'SUBVENTION NOVEMBRE', 3, '1354.00', ''),
(208, '8934859', '1448319600', 'EXPERTISE SYNDEX', 3, '', '288.05'),
(209, '9961263', '1446764400', 'FRAIS DE DEPLACEMENT CE NOVEMBRE', 3, '', '13.69'),
(210, '4022811', '1446764400', 'FRAIS DE SECRÃ‰TARIAT NOVEMBRE', 3, '', '302.00'),
(211, '3328366', '1447542000', 'SFR 1', 3, '', '53.99'),
(212, '1490697', '1447542000', 'SFR 2', 3, '', '53.99'),
(213, '2040622', '1448924400', 'Mutual Formation ChÃ¨que NÂ° 184', 3, '', '900'),
(214, '9255750', '1446678000', 'ordinateurs + logiciel FO   CB', 3, '', '1164.00'),
(215, '6518788', '1448060400', 'FOURNITURES DE BUREAUX PLEIN CIEL   CB', 3, '', '205.28'),
(216, '5611520', '1450220400', 'Renouvellement contrat logiciel gestion CE', 3, '', '828'),
(217, '3835444', '1448924400', 'frais de secrÃ©tariat dÃ©cembre', 3, '', '302.00'),
(218, '7360724', '1448924400', 'subvention dÃ©cembre', 3, '1052.00', ''),
(219, '3490698', '1450134000', 'SFR 1', 3, '', '51.32'),
(220, '3945917', '1450134000', 'SFR 2', 3, '', '51.12'),
(221, '7100641', '1449442800', 'FRAIS DE DÃ‰PLACEMENT SECRÃ‰TAIRE CE', 3, '', '13.69'),
(222, '3929099', '1450652400', 'RECOMMANDES CADEAUX NOEL nÂ°0261', 3, '', '38.85'),
(223, '9282324', '1451257200', 'Guides Juridiques 2016 (rÃ©glÃ© par virement bancaire)', 3, '', '128.35'),
(224, '2309856', '1451430000', 'FO FOURNITURES ET DOCUMENTATION SYNDICALE nÂ° 0262', 3, '', '923.78');

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

--
-- Contenu de la table `compta_bilan_actif`
--

INSERT INTO `compta_bilan_actif` (`idcptbilanactif`, `num_mouvement`, `idcomptaplan`, `montant`) VALUES
(16, '6503234', 3, '1210.79'),
(17, '8070705', 8, '17102.86');

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

--
-- Contenu de la table `compta_bilan_passif`
--

INSERT INTO `compta_bilan_passif` (`idcptbilanpassif`, `num_mouvement`, `idcomptaplan`, `montant`) VALUES
(8, '2876294', 28, '18313.65');

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

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `num_mouvement`, `idcomptaplan`, `debit`, `credit`) VALUES
(289, '6503234', 3, '1210.79', ''),
(290, '8070705', 8, '17102.86', ''),
(291, '2876294', 28, '', '18313.65'),
(292, '7522965', 35, '', '1354'),
(293, '2225292', 51, '44.80', ''),
(294, '2319890', 56, '302', ''),
(295, '3112581', 57, '42.98', ''),
(296, '6601990', 57, '42.98', ''),
(297, '7956044', 35, '', '1354'),
(299, '1546062', 51, '44.80', ''),
(300, '4821021', 56, '302', ''),
(301, '8170925', 57, '42.98', ''),
(302, '7950899', 57, '42.98', ''),
(303, '5368250', 55, '120', ''),
(304, '2714615', 35, '', '1354'),
(305, '9357425', 51, '44.80', ''),
(306, '7781353', 50, '91.95', ''),
(307, '3856566', 56, '302', ''),
(308, '2497230', 53, '32', ''),
(309, '5422545', 57, '42.98', ''),
(310, '5015357', 57, '42.98', ''),
(311, '8390627', 7, '100', ''),
(312, '9354045', 51, '44.80', ''),
(313, '7581954', 35, '', '1354'),
(314, '9933691', 55, '99', ''),
(315, '8462788', 51, '44.80', ''),
(316, '5248970', 56, '302', ''),
(317, '3168216', 57, '42.98', ''),
(318, '9916566', 57, '42.98', ''),
(319, '5828343', 35, '', '1354'),
(320, '7812625', 51, '44.80', ''),
(321, '8437899', 56, '302', ''),
(322, '6606392', 57, '42.98', ''),
(323, '5616889', 57, '42.98', ''),
(324, '6635208', 35, '', '1354'),
(325, '8933638', 56, '302', ''),
(326, '7579682', 51, '44.80', ''),
(327, '7962095', 57, '42.98', ''),
(328, '7856729', 57, '42.98', ''),
(329, '2828078', 50, '73.50', ''),
(330, '7269673', 35, '', '1354'),
(331, '1241854', 56, '302', ''),
(332, '3230025', 51, '44.80', ''),
(333, '4121623', 57, '53.99', ''),
(334, '1644215', 57, '53.99', ''),
(335, '9153166', 7, '150', ''),
(336, '6087458', 57, '386', ''),
(337, '7927176', 35, '', '1354'),
(338, '7787301', 56, '302', ''),
(339, '4156084', 57, '53.99', ''),
(340, '3992500', 57, '53.99', ''),
(341, '8127967', 53, '99', ''),
(342, '1630275', 35, '', '1354'),
(343, '9758449', 56, '302', ''),
(344, '8846035', 57, '53.99', ''),
(345, '3506070', 57, '53.99', ''),
(346, '4946310', 61, '3000', ''),
(347, '4430024', 55, '274.31', ''),
(348, '4954694', 35, '', '1354'),
(349, '2472088', 56, '302', ''),
(350, '5287444', 51, '27.38', ''),
(351, '1375238', 57, '53.99', ''),
(352, '3314146', 57, '53.99', ''),
(353, '4204254', 53, '71.73', ''),
(354, '3497525', 3, '1354', ''),
(355, '4259750', 3, '', '44.80'),
(356, '1490462', 3, '', '302'),
(357, '7262242', 3, '', '42.98'),
(358, '7640662', 3, '', '42.98'),
(360, '3618729', 3, '1354', ''),
(361, '1162396', 3, '', '44.80'),
(363, '2132727', 3, '', '302'),
(364, '1254050', 3, '', '42.98'),
(365, '5114434', 3, '', '42.98'),
(366, '9508639', 3, '', '120'),
(367, '3324744', 3, '1354', ''),
(368, '7608920', 3, '', '44.80'),
(369, '1772275', 3, '', '91.95'),
(370, '5764909', 3, '', '302'),
(371, '6580366', 3, '', '32'),
(372, '2511053', 3, '', '42.98'),
(373, '4942877', 3, '', '42.98'),
(374, '1882736', 3, '', '100'),
(375, '2815175', 3, '', '44.80'),
(376, '8739530', 3, '1354', ''),
(377, '8137777', 3, '', '99'),
(378, '7186600', 3, '', '44.80'),
(379, '2786905', 3, '', '302'),
(380, '3141418', 3, '', '42.98'),
(381, '9707568', 3, '', '42.98'),
(382, '5104250', 3, '1354', ''),
(383, '1538943', 3, '', '44.80'),
(384, '1117927', 3, '', '302'),
(385, '3844630', 3, '', '42.98'),
(386, '8716367', 3, '', '42.98'),
(387, '3093653', 3, '1354', ''),
(388, '7876782', 3, '', '302'),
(389, '4151854', 3, '', '44.80'),
(390, '8955797', 3, '', '42.98'),
(391, '9925371', 3, '', '42.98'),
(392, '2473670', 3, '', '73.50'),
(393, '1923444', 3, '1354', ''),
(394, '2815601', 3, '', '302'),
(395, '3721667', 3, '', '44.80'),
(396, '8240165', 3, '', '53.99'),
(397, '2745396', 3, '', '53.99'),
(398, '4935885', 3, '', '150'),
(399, '5219250', 3, '', '386'),
(401, '2446039', 3, '1354', ''),
(402, '7455409', 3, '', '302'),
(403, '9158039', 3, '', '53.99'),
(404, '3855494', 3, '', '53.99'),
(405, '7105366', 3, '', '99'),
(406, '3777428', 3, '1354', ''),
(407, '8595206', 3, '', '302'),
(408, '2214823', 3, '', '53.99'),
(409, '8515874', 3, '', '53.99'),
(410, '3612040', 3, '', '3000'),
(411, '8582333', 3, '', '274.31'),
(412, '3328229', 3, '1354', ''),
(413, '8457871', 3, '', '302'),
(414, '4213030', 3, '', '27.38'),
(415, '9100686', 3, '', '53.99'),
(416, '8207350', 3, '', '53.99'),
(417, '3686578', 3, '', '71.73'),
(418, '1646237', 51, '112,86', ''),
(419, '2485801', 3, '', '112,86'),
(420, '4941416', 51, '96', ''),
(421, '7020071', 3, '', '96'),
(422, '5265444', 51, '40,32', ''),
(423, '1143798', 3, '', '40,32'),
(424, '6935810', 35, '', '1354.00'),
(428, '7419578', 3, '1354.00', ''),
(429, '1769774', 7, '288.05', ''),
(430, '8934859', 3, '', '288.05'),
(431, '9961263', 3, '', '13.69'),
(432, '4055332', 51, '13.69', ''),
(433, '7317517', 56, '302.00', ''),
(434, '4022811', 3, '', '302.00'),
(435, '7919418', 57, '53.99', ''),
(436, '6856945', 57, '53.99', ''),
(437, '3328366', 3, '', '53.99'),
(438, '1490697', 3, '', '53.99'),
(439, '3492190', 61, '900', ''),
(440, '2040622', 3, '', '900'),
(441, '4733207', 60, '1164.00', ''),
(442, '9255750', 3, '', '1164.00'),
(443, '5441987', 53, '205.28', ''),
(444, '6518788', 3, '', '205.28'),
(445, '4144809', 55, '828', ''),
(446, '5611520', 3, '', '828'),
(447, '3055010', 56, '302.00', ''),
(448, '3835444', 3, '', '302.00'),
(449, '7360724', 3, '1052.00', ''),
(450, '5769240', 35, '', '1052.00'),
(451, '7849885', 57, '51.32', ''),
(452, '8027788', 57, '51.12', ''),
(453, '3490698', 3, '', '51.32'),
(454, '3945917', 3, '', '51.12'),
(455, '7100641', 3, '', '13.69'),
(456, '3338620', 51, '13.69', ''),
(457, '7915225', 50, '38.85', ''),
(458, '3929099', 3, '', '38.85'),
(459, '5257706', 55, '128.35', ''),
(460, '9282324', 3, '', '128.35'),
(462, '5779681', 7, '923.78', ''),
(463, '2309856', 3, '', '923.78');

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

--
-- Contenu de la table `compta_mvm`
--

INSERT INTO `compta_mvm` (`idcomptamvm`, `num_mouvement`, `date_mvm`, `desc_mvm`, `idcomptaplan`, `debit`, `credit`) VALUES
(120, '7522965', '1420066800', 'Subvention Janvier', 35, '', '1354'),
(121, '2225292', '1420412400', 'Frais dÃ©placement VÃ©ronique NÂ° 239', 51, '44.80', ''),
(122, '2319890', '1421276400', 'Frais de SecrÃ©tariat CE Janvier', 56, '302', ''),
(123, '3112581', '1421622000', 'SFR 2', 57, '42.98', ''),
(124, '6601990', '1421622000', 'SFR 1', 57, '42.98', ''),
(125, '7956044', '1422745200', 'Subvention FÃ©vrier', 35, '', '1354'),
(127, '1546062', '1423436400', 'Frais dÃ©placement VÃ©ronique NÂ° 240', 51, '44.80', ''),
(128, '4821021', '1423954800', 'Frais de SecrÃ©tariat CE FÃ©vrier', 56, '302', ''),
(129, '8170925', '1424214000', 'SFR 1', 57, '42.98', ''),
(130, '7950899', '1424214000', 'SFR 2', 57, '42.98', ''),
(131, '5368250', '1424732400', 'MÃ©dia CE NÂ° 242', 55, '120', ''),
(132, '2714615', '1425164400', 'Subvention Mars', 35, '', '1354'),
(133, '9357425', '1425855600', 'Frais dÃ©placement VÃ©ronique NÂ° 243', 51, '44.80', ''),
(134, '7781353', '1426028400', 'Achat Timbre NÂ° 244', 50, '91.95', ''),
(135, '3856566', '1426374000', 'Frais de SecrÃ©tariat CE Mars', 56, '302', ''),
(136, '2497230', '1426374000', 'Micro Plus NÂ° 247', 53, '32', ''),
(137, '5422545', '1426460400', 'SFR 1', 57, '42.98', ''),
(138, '5015357', '1426460400', 'SFR 2', 57, '42.98', ''),
(139, '8390627', '1427324400', 'Gerbe Ladaurade', 7, '100', ''),
(140, '9354045', '1427324400', 'Frais dÃ©placement VÃ©ronique NÂ° 0246', 51, '44.80', ''),
(141, '7581954', '1427839200', 'Subvention Avril', 35, '', '1354'),
(142, '9933691', '1428357600', 'Renouvellement annuel office 365 NÂ° 179', 55, '99', ''),
(143, '8462788', '1428616800', 'Frais dÃ©placement VÃ©ronique NÂ° 0248', 51, '44.80', ''),
(144, '5248970', '1428616800', 'Frais de SecrÃ©tariat CE Avril', 56, '302', ''),
(145, '3168216', '1429135200', 'SFR 2', 57, '42.98', ''),
(146, '9916566', '1429135200', 'SFR 1', 57, '42.98', ''),
(147, '5828343', '1430431200', 'Subvention Mai', 35, '', '1354'),
(148, '7812625', '1430949600', 'Frais dÃ©placement VÃ©ronique NÂ° 0249', 51, '44.80', ''),
(149, '8437899', '1430949600', 'Frais de SecrÃ©tariat CE Mai', 56, '302', ''),
(150, '6606392', '1431640800', 'SFR 1', 57, '42.98', ''),
(151, '5616889', '1431640800', 'SFR 2', 57, '42.98', ''),
(152, '6635208', '1433109600', 'Subvention Juin', 35, '', '1354'),
(153, '8933638', '1433714400', 'Frais de SecrÃ©tariat CE Juin', 56, '302', ''),
(154, '7579682', '1433714400', 'Frais dÃ©placement VÃ©ronique NÂ° 250', 51, '44.80', ''),
(155, '7962095', '1434319200', 'SFR 1', 57, '42.98', ''),
(156, '7856729', '1434319200', 'SFR 2', 57, '42.98', ''),
(157, '2828078', '1434492000', 'RecommandÃ©s envois chÃ¨ques vacances NÂ°0251', 50, '73.50', ''),
(158, '7269673', '1435701600', 'Subvention Juillet', 35, '', '1354'),
(159, '1241854', '1435701600', 'Frais de SecrÃ©tariat CE Juillet', 56, '302', ''),
(160, '3230025', '1436133600', 'Frais dÃ©placement VÃ©ronique NÂ° 0252', 51, '44.80', ''),
(161, '4121623', '1436911200', 'SFR 1', 57, '53.99', ''),
(162, '1644215', '1436911200', 'SFR 2', 57, '53.99', ''),
(163, '9153166', '1436997600', 'Gerbe Lacabarats', 7, '150', ''),
(164, '6087458', '1438380000', 'Achat Portables', 57, '386', ''),
(165, '7927176', '1438380000', 'Subvention Aout', 35, '', '1354'),
(166, '7787301', '1438380000', 'Frais de SecrÃ©tariat CE Aout', 56, '302', ''),
(167, '4156084', '1439589600', 'SFR 1', 57, '53.99', ''),
(168, '3992500', '1439589600', 'SFR 2', 57, '53.99', ''),
(169, '8127967', '1440712800', 'Achat Dictaphone', 53, '99', ''),
(170, '1630275', '1441058400', 'Subvention Septembre', 35, '', '1354'),
(171, '9758449', '1441058400', 'Frais de SecrÃ©tariat CE Septembre', 56, '302', ''),
(172, '8846035', '1441058400', 'SFR 1', 57, '53.99', ''),
(173, '3506070', '1441058400', 'SFR 2', 57, '53.99', ''),
(174, '4946310', '1442700000', 'Formation CHSCT', 61, '3000', ''),
(175, '4430024', '1443045600', 'Abonnement TISSOT', 55, '274.31', ''),
(176, '4954694', '1443650400', 'Subvention Octobre', 35, '', '1354'),
(177, '2472088', '1443650400', 'Frais de SecrÃ©tariat CE Octobre', 56, '302', ''),
(178, '5287444', '1444341600', 'Frais dÃ©placement SecrÃ©taire CE 09 et 10 NÂ° 0257', 51, '27.38', ''),
(179, '1375238', '1444860000', 'SFR 1', 57, '53.99', ''),
(180, '3314146', '1444860000', 'SFR 2', 57, '53.99', ''),
(181, '4204254', '1445464800', 'Plein Ciel ChÃ¨que nÂ°258', 53, '71.73', ''),
(182, '1646237', '1448233200', 'Frais dÃ©placement Formation Agir en CE ChÃ¨que nÂ° 0181', 51, '112,86', ''),
(183, '4941416', '1448233200', 'Frais dÃ©placement  ChÃ¨que  nÂ° 182', 51, '96', ''),
(184, '5265444', '1447110000', 'Frais dÃ©placement InfoDirect ChÃ¨que nÂ° 183', 51, '40,32', ''),
(185, '6935810', '1446332400', 'subvention novembre', 35, '', '1354.00'),
(188, '1769774', '1448319600', 'EXPERTISE SYNDEX', 7, '288.05', ''),
(189, '4055332', '1446764400', 'frais de dÃ©placements SECRETAIRE  CE NOVEMBRE', 51, '13.69', ''),
(190, '7317517', '1446764400', 'FRAIS DE SECRETARIAT NOVEMBRE', 56, '302.00', ''),
(191, '7919418', '1447542000', 'SFR 1', 57, '53.99', ''),
(192, '6856945', '1447542000', 'SFR 2', 57, '53.99', ''),
(193, '3492190', '1448924400', 'Mutual Formation ChÃ¨que nÂ° 184', 61, '900', ''),
(194, '4733207', '1446678000', 'ordinateurs + logiciel FO', 60, '1164.00', ''),
(195, '5441987', '1448060400', 'FOURNITURES DE BUREAUX PLEIN CIEL', 53, '205.28', ''),
(196, '4144809', '1450220400', 'Renouvellement contrat logiciel gestion CE', 55, '828', ''),
(197, '3055010', '1448924400', 'frais de secretariat', 56, '302.00', ''),
(198, '5769240', '1448924400', 'subvention dÃ©cembre', 35, '', '1052.00'),
(199, '7849885', '1450134000', 'SFR 1', 57, '51.32', ''),
(200, '8027788', '1450134000', 'SFR 2', 57, '51.12', ''),
(201, '3338620', '1449442800', 'FRAIS DE DEPLACEMENT SECRÃ‰TAIRE CE', 51, '13.69', ''),
(202, '7915225', '1450652400', 'RECOMMANDES CADEAUX NOEL', 50, '38.85', ''),
(203, '5257706', '1451257200', 'Guides Juridiques 2016 (RÃ©glÃ© par virement bancaire)', 55, '128.35', ''),
(205, '5779681', '1451430000', 'FO FOURNITURES ET DOCUMENTATION SYNDICALE nÂ°0262', 7, '923.78', '');

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
(4, 1, 'Cr&eacute;ances Clients', 'CrÃ©ances Client'),
(5, 1, 'Impots Pr&eacute;alable', ''),
(6, 1, 'Stock de Marchandises', ''),
(7, 1, 'Autre actif circulant 1', 'Frais Divers'),
(8, 1, 'Autre actif circulant 2', 'Compte sur Livret'),
(9, 1, 'Autre actif circulant 3', 'Compte de Pret'),
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
-- Structure de la table `compta_pret`
--

CREATE TABLE `compta_pret` (
  `idcomptapret` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL,
  `date_pret` varchar(255) NOT NULL,
  `desc_pret` varchar(255) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
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

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `num_mouvement`, `idcomptaplan`, `debit`, `credit`) VALUES
(176, '7522965', 35, '', '1354'),
(177, '2225292', 51, '44.80', ''),
(178, '2319890', 56, '302', ''),
(179, '3112581', 57, '42.98', ''),
(180, '6601990', 57, '42.98', ''),
(181, '7956044', 35, '', '1354'),
(183, '1546062', 51, '44.80', ''),
(184, '4821021', 56, '302', ''),
(185, '8170925', 57, '42.98', ''),
(186, '7950899', 57, '42.98', ''),
(187, '5368250', 55, '120', ''),
(188, '2714615', 35, '', '1354'),
(189, '9357425', 51, '44.80', ''),
(190, '7781353', 50, '91.95', ''),
(191, '3856566', 56, '302', ''),
(192, '2497230', 53, '32', ''),
(193, '5422545', 57, '42.98', ''),
(194, '5015357', 57, '42.98', ''),
(195, '8390627', 7, '100', ''),
(196, '9354045', 51, '44.80', ''),
(197, '7581954', 35, '', '1354'),
(198, '9933691', 55, '99', ''),
(199, '8462788', 51, '44.80', ''),
(200, '5248970', 56, '302', ''),
(201, '3168216', 57, '42.98', ''),
(202, '9916566', 57, '42.98', ''),
(203, '5828343', 35, '', '1354'),
(204, '7812625', 51, '44.80', ''),
(205, '8437899', 56, '302', ''),
(206, '6606392', 57, '42.98', ''),
(207, '5616889', 57, '42.98', ''),
(208, '6635208', 35, '', '1354'),
(209, '8933638', 56, '302', ''),
(210, '7579682', 51, '44.80', ''),
(211, '7962095', 57, '42.98', ''),
(212, '7856729', 57, '42.98', ''),
(213, '2828078', 50, '73.50', ''),
(214, '7269673', 35, '', '1354'),
(215, '1241854', 56, '302', ''),
(216, '3230025', 51, '44.80', ''),
(217, '4121623', 57, '53.99', ''),
(218, '1644215', 57, '53.99', ''),
(219, '9153166', 7, '150', ''),
(220, '6087458', 57, '386', ''),
(221, '7927176', 35, '', '1354'),
(222, '7787301', 56, '302', ''),
(223, '4156084', 57, '53.99', ''),
(224, '3992500', 57, '53.99', ''),
(225, '8127967', 53, '99', ''),
(226, '1630275', 35, '', '1354'),
(227, '9758449', 56, '302', ''),
(228, '8846035', 57, '53.99', ''),
(229, '3506070', 57, '53.99', ''),
(230, '4946310', 61, '3000', ''),
(231, '4430024', 55, '274.31', ''),
(232, '4954694', 35, '', '1354'),
(233, '2472088', 56, '302', ''),
(234, '5287444', 51, '27.38', ''),
(235, '1375238', 57, '53.99', ''),
(236, '3314146', 57, '53.99', ''),
(237, '4204254', 53, '71.73', ''),
(238, '1646237', 51, '112,86', ''),
(239, '4941416', 51, '96', ''),
(240, '5265444', 51, '40,32', ''),
(241, '6935810', 35, '', '1354.00'),
(244, '1769774', 7, '288.05', ''),
(245, '4055332', 51, '13.69', ''),
(246, '7317517', 56, '302.00', ''),
(247, '7919418', 57, '53.99', ''),
(248, '6856945', 57, '53.99', ''),
(249, '3492190', 61, '900', ''),
(250, '4733207', 60, '1164.00', ''),
(251, '5441987', 53, '205.28', ''),
(252, '4144809', 55, '828', ''),
(253, '3055010', 56, '302.00', ''),
(254, '5769240', 35, '', '1052.00'),
(255, '7849885', 57, '51.32', ''),
(256, '8027788', 57, '51.12', ''),
(257, '3338620', 51, '13.69', ''),
(258, '7915225', 50, '38.85', ''),
(259, '5257706', 55, '128.35', ''),
(261, '5779681', 7, '923.78', '');

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
(1, 'COMITE D''ETABLISSEMENT REXAM', '0.50', '0.75', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '31-12-2014', '31-12-2015');

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
(275, '', '1426633200', 'Remboursement de la Prestation pour MARATRAT CASSIDY - assistante maternelle', '320', ''),
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
(315, '', '1427497200', 'Remboursement de la Prestation pour DANTEIN TOM - royal kids', '6.6225', ''),
(316, '', '1427497200', 'Remboursement de la Prestation pour ABADO NICOLAS - musÃ©e de la mer', '14.5', ''),
(317, '', '1427497200', 'Remboursement de la Prestation pour DAUBAS MICHEL - cinÃ©ma', '13.7', ''),
(318, '', '1427497200', 'Remboursement de la Prestation pour BALLESTEROS  DIDIER - spectacle', '37', ''),
(319, '', '1427497200', 'Remboursement de la Prestation pour BALLESTEROS CELIA - spectacle', '55.5', ''),
(320, '', '1427497200', 'Remboursement de la Prestation pour BALLESTEROS THOMAS - spectacle', '55.5', ''),
(321, '', '1427497200', 'Remboursement de la Prestation pour MUNOZ ANTONIO - spectacle', '47', ''),
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
(335, '', '1428444000', 'Remboursement de la Prestation pour BONNINGUE HUGO - PAJEMPLOI', '320', ''),
(336, '', '1428444000', 'Remboursement de la Prestation pour LAGRAULA-DUROU SOPHIE - CORRIDAS', '156.1', ''),
(337, '', '1429048800', 'Remboursement de la Prestation pour ARRICAU JULIE - forfait ski', '60.6', ''),
(338, '', '1429048800', 'Remboursement de la Prestation pour CASSOU OLIVIER - licence moto', '49.4', ''),
(339, '', '1429048800', 'Remboursement de la Prestation pour REMY GUILLAUME - voyage scolaire', '166.215', ''),
(340, '', '1429048800', 'Remboursement de la Prestation pour CHAUSSADAS  JEAN YVES - FORFAIT SKI', '118', ''),
(341, '', '1429048800', 'Remboursement de la Prestation pour LUBEREILH ROGER - ECOLE DE DANSE', '48', ''),
(342, '', '1429048800', 'Remboursement de la Prestation pour TRIPICCHIO FIORENZO - LASER LESCAR', '22.5', ''),
(343, '', '1429048800', 'Remboursement de la Prestation pour MORAL LOLA - CENTRE EQUESTRE', '156', ''),
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
(422, '', '1431468000', 'Remboursement de la Prestation pour HOUIS LEO - ecole musicale', '194.775', ''),
(423, '', '1431468000', 'Remboursement de la Prestation pour NOUSTY EMMA - carte cinema', '49.125', ''),
(428, '', '1431640800', 'Remboursement de la Prestation pour LACARRIEU-HAURAT MORGANE - voyage scolaire', '166.215', ''),
(429, '', '1431640800', 'Remboursement de la Prestation pour DARRACQ TIMEO - puy du fou', '26.25', ''),
(430, '', '1431640800', 'Remboursement de la Prestation pour DARRACQ FREDERIC - puy du fou', '49', ''),
(433, '', '1432159200', 'Remboursement de la Prestation pour DATHY MAXIME - centre aere + paje emploi', '320', ''),
(434, '', '1432159200', 'Remboursement de la Prestation pour DATHY JUSTINE - centre aere + paje emploi', '320', ''),
(435, '', '1432159200', 'Remboursement de la Prestation pour GONCALVES NEIVA MAEVA - voyage scolaire', '188.25', ''),
(436, '', '1432159200', 'Remboursement de la Prestation pour BALLESTEROS  DIDIER - SPECTACLE', '29.5', ''),
(437, '', '1432159200', 'Remboursement de la Prestation pour ALBANEL HERVE - grand prix moto', '59.5', ''),
(438, '', '1432591200', 'Remboursement de la Prestation pour MOUSQUES DIT CABANOT VALENTINE - cinÃ©ma + chlorofil + piscine', '57.45', ''),
(439, '', '1432591200', 'Remboursement de la Prestation pour MOUSQUES DIT CABANOT JEAN  - cinÃ©ma + chlorofil + piscine', '49.95', ''),
(440, '', '1432591200', 'Remboursement de la Prestation pour ALLAMAN ANDERSON - gardereie', '23.46', ''),
(441, '', '1432591200', 'Remboursement de la Prestation pour CAMPAGNE FRANCK - permis de peche', '36.5', ''),
(442, '', '1432591200', 'Remboursement de la Prestation pour PERALTA ANTONIN - carte cinema', '48.75', ''),
(443, '', '1432591200', 'Remboursement de la Prestation pour LACARRIEU-HAURAT MORGANE - spectacle', '37.5', ''),
(444, '', '1432591200', 'Remboursement de la Prestation pour LACARRIEU-HAURAT  JEAN PIERRE - spectacle', '50', ''),
(445, '', '1432677600', 'Remboursement de la Prestation pour LOPEZ   OLIVIER - foot', '71.75', ''),
(446, '', '1432677600', 'Remboursement de la Prestation pour LOPEZ   ISMAEL - foot', '71.75', ''),
(447, '', '1432677600', 'Remboursement de la Prestation pour ALVES  PAUL - caliceo', '15', ''),
(449, '', '1432677600', 'Remboursement de la Prestation pour DULAU  EMMANUEL - THERMES DE SALIES', '9.5', ''),
(450, '', '1432850400', 'Remboursement de la Prestation pour ETCHEVERRY JACQUES - corrida', '48', ''),
(455, '', '1433282400', 'Remboursement de la Prestation pour DAUBAS GAUTIER - zoo', '10.5', ''),
(456, '', '1433368800', 'Remboursement de la Prestation pour BRACH JULIEN - permis de peche', '36.5', ''),
(458, '', '1433368800', 'Remboursement de la Prestation pour CASAMAJOU JEAN BERNARD - FOOT', '42.5', ''),
(459, '', '1433368800', 'Remboursement de la Prestation pour CASAMAJOU IKER - FOOT', '63.75', ''),
(460, '', '1433455200', 'Remboursement de la Prestation pour GIACOMIN LUCILE - ferme equestre', '319.5', ''),
(461, '', '1433455200', 'Remboursement de la Prestation pour WHALES  STEPHEN - ski + zoo', '115.975', ''),
(462, '', '1433455200', 'Remboursement de la Prestation pour WHALES CELESTE - ski + zoo', '191.4375', ''),
(464, '', '1433455200', 'Remboursement de la Prestation pour SARRIEU SHANON - surf', '320', ''),
(465, '', '1433455200', 'Remboursement de la Prestation pour BENITO KEVIN - SPECTACLE', '148.45', ''),
(466, '', '1433455200', 'Remboursement de la Prestation pour GUYON CLEMENT - PAJE EMPLOI', '320', ''),
(471, '', '1433455200', 'Remboursement de la Prestation pour BERGEZ MANON - piscine + cinÃ©ma + leÃ§ons de natation', '157.875', ''),
(472, '', '1433887200', 'Remboursement de la Prestation pour BATBEDAT SOLENN - equitation', '320', ''),
(474, '', '1433887200', 'Remboursement de la Prestation pour CAMPAGNE MARION - centre equestre', '186.75', ''),
(475, '', '1433887200', 'Remboursement de la Prestation pour BRUN GILLES - abonnement section paloise', '124.9', ''),
(476, '', '1434146400', 'Remboursement de la Prestation pour LASSOURREILLE CHARLOTTE - Gym', '42', ''),
(477, '', '1434319200', 'Remboursement de la Prestation pour FONSECA PHILIPPE - NPY', '50.5', ''),
(480, '', '1434578400', 'Remboursement de la Prestation pour LAVALLARD  CHRISTOPHE - permis de peche', '47.5', ''),
(481, '', '1434578400', 'Remboursement de la Prestation pour LACARRIEU-HAURAT MORGANE - piscine', '25.575', ''),
(482, '', '1434664800', 'Remboursement de la Prestation pour BENZIN CARLA-MARIE - centre equestre', '66', ''),
(484, '', '1434924000', 'Remboursement de la Prestation pour CASAMAJOU INTZA - sortie scolaire', '56.25', ''),
(485, '', '1434924000', 'Remboursement de la Prestation pour CASAMAJOU IKER - sortie scolaire', '56.25', ''),
(486, '', '1434924000', 'Remboursement de la Prestation pour CASAIL CHRISTOPHE - CinÃ©ma ', '13.5', ''),
(487, '', '1434924000', 'Remboursement de la Prestation pour CASAIL CHARLOTTE - CinÃ©ma ', '20.25', ''),
(488, '', '1435183200', 'Remboursement de la Prestation pour VEDRENNE JOELLE - cinema', '19.7', ''),
(489, '', '1435183200', 'Remboursement de la Prestation pour BALLESTEROS  DIDIER - SPECTACLES', '44.5', ''),
(490, '', '1435183200', 'Remboursement de la Prestation pour BALLESTEROS THOMAS - SPECTACLES', '86.25', ''),
(491, '', '1435183200', 'Remboursement de la Prestation pour BALLESTEROS CELIA - SPECTACLES', '86.25', ''),
(495, '', '1435183200', 'Remboursement de la Prestation pour DRIVON  HAROLD - PISCINE + VISITES SITES', '103.6', ''),
(496, '', '1435183200', 'Remboursement de la Prestation pour DRIVON EMILY - CINEMA', '3.375', ''),
(497, '', '1435183200', 'Remboursement de la Prestation pour DRIVON JULES - VOYAGE SCOLAIRE', '292.5', ''),
(498, '', '1435183200', 'Remboursement de la Prestation pour DRIVON ELISE - CINEMA', '3.375', ''),
(499, '', '1435701600', 'Remboursement de la Prestation pour LAHORE-LAHITTE  MARC - PROMENADES BATEAU ', '22.5', ''),
(500, '', '1435788000', 'Remboursement de la Prestation pour CIOSSE DORIAN - VOYAGE SCOLAIRE', '188.25', ''),
(501, '', '1435788000', 'Remboursement de la Prestation pour DANTEIN ANA - PAJE EMPLOI', '320', ''),
(506, '', '1435788000', 'Remboursement de la Prestation pour POUBLAN   ERIC - cinÃ©ma + spectacle', '52.3', ''),
(509, '', '1435960800', 'Remboursement de la Prestation pour ABAJI MOHAMMED - METAMORPHOSE', '199.5', ''),
(510, '', '1435874400', 'Remboursement de la Prestation pour RAJA DANIEL - SPECTACLE', '47', ''),
(511, '', '1436047200', 'Remboursement de la Prestation pour ADENIS BERTRAND - futuroscpe', '32', ''),
(512, '', '1436047200', 'Remboursement de la Prestation pour ADENIS JUDICAELLE - futuroscope', '24', ''),
(513, '', '1436047200', 'Remboursement de la Prestation pour ADENIS ANAE - futuroscope', '24', ''),
(514, '', '1436392800', 'Remboursement de la Prestation pour CASAIL CHRISTOPHE - Concert ACDC', '39.25', ''),
(523, '', '1436479200', 'Remboursement de la Prestation pour TRIPICCHIO   JEAN PIERRE - MÃ‰TAMORPHOSE + FREE BOWL', '50.5', ''),
(524, '', '1436479200', 'Remboursement de la Prestation pour TRIPICCHIO FIORENZO - MÃ‰TAMORPHOSE + CINEMA', '77.025', ''),
(525, '', '1436479200', 'Remboursement de la Prestation pour PASTOUREU REMI - VOYAGE SCOLAIRE', '187.5', ''),
(531, '', '1436824800', 'Remboursement de la Prestation pour DAUBA  BAPTISTE - spectacle + cinema', '51', ''),
(532, '', '1436824800', 'Remboursement de la Prestation pour NIMHAOULIN SARAH - lâ€™Ã®le aux enfants', '233.5125', ''),
(533, '', '1436824800', 'Remboursement de la Prestation pour RUFFAT BAPTISTE -  ecole ski nautique', '30', ''),
(538, '', '1436911200', 'Remboursement de la Prestation pour DEPUYT  BENOIT - visites musÃ©es + thÃ©atre', '51.75', ''),
(539, '', '1436911200', 'Remboursement de la Prestation pour CASAMAJOU JEAN BERNARD - SPECTACLE', '42.425', ''),
(540, '', '1436911200', 'Remboursement de la Prestation pour CASAMAJOU LEIRE - colonies de vacances', '135', ''),
(541, '', '1436997600', 'Remboursement de la Prestation pour CABANE-CHRESTIA MAEVA - licence', '127.5', ''),
(542, '', '1436997600', 'Remboursement de la Prestation pour SAINT-MARTIN ERIC - tennis', '13', ''),
(543, '', '1436997600', 'Remboursement de la Prestation pour SAINT-MARTIN FLORIAN - tennis', '12', ''),
(595, '', '1437602400', 'Remboursement de la Prestation pour TISNES MARION - SPECTACLE', '39', ''),
(598, '', '1437688800', 'Remboursement de la Prestation pour BERGEZ JEAN - visites musÃ©es', '17', ''),
(599, '', '1437775200', 'Remboursement de la Prestation pour JIMENEZ HUGO - licence foot', '135', ''),
(600, '', '1437861600', 'Remboursement de la Prestation pour TREYTURE-HAYET  THIERRY - Aquarium / Zoo / Loc VÃ©lo', '78', ''),
(601, '', '1437861600', 'Remboursement de la Prestation pour TREYTURE-HAYET ROBIN - Aquarium / Zoo / Loc VÃ©lo / Acrobranches', '68.25', ''),
(602, '', '1437861600', 'Remboursement de la Prestation pour CUISINIER SOEN - carte cinÃ©ma + cinema', '30.8625', ''),
(603, '', '1437861600', 'Remboursement de la Prestation pour CUISINIER CLARA - CINÃ‰MA + caliceo', '30.8625', ''),
(604, '', '1437948000', 'Remboursement de la Prestation pour CALVO  MICHEL - visites touristiques', '33', ''),
(605, '', '1437948000', 'Remboursement de la Prestation pour DUROU GABRIEL - CENTRE DE LOISIRS', '39.75', ''),
(607, '', '1438034400', 'Remboursement de la Prestation pour BAZIARD DIDIER - concert + course landaise', '32', ''),
(611, '', '1438293600', 'Remboursement de la Prestation pour DANTEIN TOM - centre aÃ©rÃ©', '54.75', ''),
(613, '', '1438552800', 'Remboursement de la Prestation pour ALVES  PAUL - visites touristiques', '19', ''),
(614, '', '1438639200', 'Remboursement de la Prestation pour DUROU GABRIEL - centre aÃ©rÃ©', '68.7375', ''),
(616, '', '1438898400', 'Remboursement de la Prestation pour DAUBAS MICHEL - courses landaises + cinÃ©ma + zoo', '29', ''),
(641, '', '1427526000', 'Remboursement de la prestation: licence plongée pour SARRIEU DAVID', '100', ''),
(642, '', '1427526000', 'Remboursement de la prestation: cinéma pour DULAU EMMANUEL', '7', ''),
(644, '', '1427526000', 'Remboursement de la prestation: Royal Kids pour DANTEIN YANNICK', '8.83', ''),
(646, '', '1433314800', 'Remboursement de la prestation: zoo pour DAUBAS LAURIE', '5.25', ''),
(657, '', '1440194400', 'Remboursement de la Prestation pour ALLAMAN ANDERSON - CALICEO', '22.5', ''),
(658, '', '1440194400', 'Remboursement de la Prestation pour TRIPICCHIO   JEAN PIERRE - VISITES', '9.5', ''),
(659, '', '1440194400', 'Remboursement de la Prestation pour TRIPICCHIO FIORENZO - CINÃ‰MA + VISITE', '13.35', ''),
(660, '', '1440194400', 'Remboursement de la Prestation pour HOURDILLE LUCAS - PISCINE + BAINS DU ROCHER', '30.75', ''),
(661, '', '1440194400', 'Remboursement de la Prestation pour LACARRIEU-HAURAT  JEAN PIERRE - PISCINE', '17.05', ''),
(662, '', '1439503200', 'Remboursement de la Prestation pour GIACOMINI BASILE - SPECTACLE + CINEMA', '63', ''),
(663, '', '1440194400', 'Remboursement de la Prestation pour CIOSSE  BRUNO - GOUFFRE DE PADIRAC + CANOES', '33.9', ''),
(664, '', '1440194400', 'Remboursement de la Prestation pour CIOSSE DORIAN - CANOÃ‹ + VISITES', '36.5625', ''),
(665, '', '1440194400', 'Remboursement de la Prestation pour CIOSSE REMI - CANOÃ‹ + VISITE', '36.5625', ''),
(666, '', '1440194400', 'Remboursement de la Prestation pour DAUBAS MICHEL - COURSE LANDAISE + ZOO + CINEMA', '29', ''),
(667, '', '1440194400', 'Remboursement de la Prestation pour DAUBAS DA SILVA  Chlo&eacute; - CINÃ‰MA+ ZOO + COURSE LANDAISE', '25.5', ''),
(668, '', '1440194400', 'Remboursement de la Prestation pour CUISINIER SOEN - LASER', '16.875', ''),
(669, '', '1440194400', 'Remboursement de la Prestation pour CUISINIER CLARA - LASER', '16.875', ''),
(670, '', '1440194400', 'Remboursement de la Prestation pour FONSECA PHILIPPE - LICENCE FOOT + CINEMA', '60.75', ''),
(671, '', '1440712800', 'Remboursement de la Prestation pour BERGEZ MANON - centre de vacances', '33.3', ''),
(672, '', '1441058400', 'Remboursement de la Prestation pour LAMOURET JOEL - licence', '30', ''),
(673, '', '1441058400', 'Remboursement de la Prestation pour LAMOURET THEO - LICENCE FOOT + CINEMA', '64.5', ''),
(674, '', '1441058400', 'Remboursement de la Prestation pour CIOSSE REMI - camp d''Ã©tÃ© basket', '187.5', ''),
(675, '', '1441058400', 'Remboursement de la Prestation pour HOURDILLE JUSTINE - zoo', '9', ''),
(676, '', '1441058400', 'Remboursement de la Prestation pour HOURDILLE LUCAS - zoo', '9', ''),
(677, '', '1441058400', 'Remboursement de la Prestation pour REMY  JEAN MARC - SPECTACLE', '34.5', ''),
(678, '', '1441058400', 'Remboursement de la Prestation pour BALLESTEROS THOMAS - licence', '52.5', ''),
(679, '', '1441058400', 'Remboursement de la Prestation pour CLAVERIE QUENTIN - licence', '60', ''),
(680, '', '1441058400', 'Remboursement de la Prestation pour DUROU GABRIEL - cours de natation', '105', ''),
(681, '', '1441144800', 'Remboursement de la Prestation pour BOUDERLIQUE DIDIER - visites touristiques', '50', ''),
(683, '', '1441144800', 'Remboursement de la Prestation pour ARRICAU ANGELE - visites touristiques', '63.975', ''),
(684, '', '1441317600', 'Remboursement de la Prestation pour POUBLAN   ANDRE - visites + canoÃ©', '91.75', ''),
(685, '', '1441317600', 'Remboursement de la Prestation pour DULAU AMIC - ecole de musique', '187.5', ''),
(686, '', '1442008800', 'Remboursement de la Prestation pour LUPIAC JUSTINE - CENTRE EQUESTRE', '101.25', ''),
(687, '', '1442008800', 'Remboursement de la Prestation pour SIFREU FLORIAN - visites + cinema', '12', ''),
(688, '', '1442008800', 'Remboursement de la Prestation pour AIMAR REMY - puy du fou', '66', ''),
(689, '', '1442008800', 'Remboursement de la Prestation pour AMIS  CHRISTIAN - walibi', '26', ''),
(690, '', '1442008800', 'Remboursement de la Prestation pour AMIS THOMAS - licence karatÃ©', '123.75', ''),
(691, '', '1442008800', 'Remboursement de la Prestation pour RIAHI ABDEL - HAKIM - jet sensation glisse', '62.5', ''),
(692, '', '1442008800', 'Remboursement de la Prestation pour MOUSQUES DIT CABANOT VALENTINE - port aventura + cinema', '104.475', ''),
(693, '', '1442008800', 'Remboursement de la Prestation pour MOUSQUES DIT CABANOT JEAN  - port aventura + cinema', '104.475', ''),
(694, '', '1442008800', 'Remboursement de la Prestation pour RUFFAT  JONATHAN - fitness club', '67.5', ''),
(695, '', '1442008800', 'Remboursement de la Prestation pour RUFFAT BAPTISTE - cinema', '7.875', ''),
(696, '', '1442008800', 'Remboursement de la Prestation pour MARTINEZ MAREVA - foyer des jeunes', '84.75', ''),
(697, '', '1442008800', 'Remboursement de la Prestation pour DANTEIN TOM - centre aere', '54.75', ''),
(698, '', '1442008800', 'Remboursement de la Prestation pour MILAGE   CHRISTIAN - permis chasse + cartes', '89.43', ''),
(699, '', '1442008800', 'Remboursement de la Prestation pour REMY GUILLAUME - licence basket', '56.25', ''),
(701, '', '1442095200', 'Remboursement de la Prestation pour LAHORE-LAHITTE    JEAN .MARC - permis de chasse + carte', '92.48', ''),
(702, '', '1442181600', 'Remboursement de la Prestation pour BIDART CHARLOTTE - cine + visite', '23.3', ''),
(704, '', '1442181600', 'Remboursement de la Prestation pour VIATEAU REMI - karting', '20', ''),
(706, '', '1442181600', 'Remboursement de la Prestation pour MOUSQUES DIT CABANOT  FREDERIC - visite + cesta punta', '54', ''),
(707, '', '1442354400', 'Remboursement de la Prestation pour ETCHEVERRY JACQUES - abonnement section', '119', ''),
(709, '', '1442700000', 'Remboursement de la Prestation pour CASAIL CHRISTOPHE - Cotisation ThaÃ¯ Boxing club', '142.75', ''),
(711, '', '1442959200', 'Remboursement de la Prestation pour RUFFAT  JONATHAN - vita liberte', '9.25', ''),
(713, '', '1442959200', 'Remboursement de la Prestation pour BONNINGUE CALI - accueil de loisirs', '77.7975', ''),
(714, '', '1442959200', 'Remboursement de la Prestation pour HYGEN DOMINIQUE - aquabike', '62.35', ''),
(715, '', '1442959200', 'Remboursement de la Prestation pour NARDOZZI LEIA - Ã©cole de cirque', '176.25', ''),
(716, '', '1442959200', 'Remboursement de la Prestation pour TLICH SLIM - licence foot', '12.5', ''),
(717, '', '1442959200', 'Remboursement de la Prestation pour TLICH MARWANE - licence foot + tennis', '123.75', ''),
(718, '', '1442959200', 'Remboursement de la Prestation pour TRIPICCHIO   JEAN PIERRE - gym', '57.5', ''),
(719, '', '1442959200', 'Remboursement de la Prestation pour RAJA DANIEL - VISITES + CINÃ‰MA + SPECTACLES', '41', ''),
(720, '', '1442959200', 'Remboursement de la Prestation pour VIATEAU REMI - COURSE SUR PRAIRIE', '56.5', ''),
(721, '', '1442959200', 'Remboursement de la Prestation pour SAINT-MARTIN FLORIAN - TENNIS', '131.25', ''),
(722, '', '1442959200', 'Remboursement de la Prestation pour SAINT-MARTIN ERIC - TENNIS', '43.5', ''),
(723, '', '1442959200', 'Remboursement de la Prestation pour MOURCEL THIERRY - mÃ©tamorphose', '199.5', ''),
(725, '', '1443132000', 'Remboursement de la Prestation pour TREYTURE-HAYET  THIERRY - Aqua BÃ©arn + Vasconiales ', '9', ''),
(726, '', '1443132000', 'Remboursement de la Prestation pour BOY Aldwin - Licence Arts Martiaux + Aqua BÃ©arn', '126.75', ''),
(727, '', '1443132000', 'Remboursement de la Prestation pour TREYTURE-HAYET ROBIN - Vasconiales + Aqua BÃ©arn + Centre de Loisirs', '99', ''),
(728, '', '1443477600', 'Remboursement de la Prestation pour ROSE ROMAIN - Abonnement Etudiant MÃ©tamorphose', '270', ''),
(729, '', '1443650400', 'Remboursement de la Prestation pour CIOSSE  BRUNO - piscine', '156', ''),
(730, '', '1443650400', 'Remboursement de la Prestation pour BATBEDAT TEO - equitation', '286.125', ''),
(731, '', '1443650400', 'Remboursement de la Prestation pour GIACOMIN JEAN-LOUIS - equitation', '200', ''),
(732, '', '1443823200', 'Remboursement de la Prestation pour CASAIL CHARLOTTE - BEER LOVERS MARATHON', '48.75', ''),
(735, '', '1443996000', 'Remboursement de la Prestation pour BIDART CHARLOTTE - ILE AUX OISEAUX', '16', ''),
(736, '', '1443996000', 'Remboursement de la Prestation pour ROUSSEFF PATRICK - PERMIS CHASSE', '73.58', ''),
(737, '', '1443996000', 'Remboursement de la Prestation pour GONCALVES NEIVA  ILONA - ZUMBA', '148.5', ''),
(738, '', '1443996000', 'Remboursement de la Prestation pour GONCALVES NEIVA MAEVA - ENTREES PARCS', '13.5', ''),
(739, '', '1443996000', 'Remboursement de la Prestation pour TRIPICCHIO   JEAN PIERRE - PLACES DIRTY DANCING', '10', ''),
(740, '', '1443996000', 'Remboursement de la Prestation pour TRIPICCHIO FIORENZO - PLACES DIRTY DANCING', '41.25', ''),
(741, '', '1443996000', 'Remboursement de la Prestation pour LOPEZ   OLIVIER - PLACE FOOTBALL', '35.75', ''),
(742, '', '1443996000', 'Remboursement de la Prestation pour DA FONSECA TEO - PISCINE', '81', ''),
(743, '', '1443996000', 'Remboursement de la Prestation pour DANTEIN YANNICK - PACAP', '65', ''),
(744, '', '1443996000', 'Remboursement de la Prestation pour LAMOURE-LABADIE  MICHEL - LICENCE FOOTBALL', '47.5', ''),
(746, '', '1443996000', 'Remboursement de la Prestation pour LAMOURE-LABADIE DAMIEN - LICENCE FOOTBALL', '71.25', ''),
(747, '', '1443996000', 'Remboursement de la Prestation pour BERTELOOT KEVIN - DANSE', '33.75', ''),
(748, '', '1443996000', 'Remboursement de la Prestation pour DA SILVA RACHEL - DANSE', '105', ''),
(749, '', '1443996000', 'Remboursement de la Prestation pour DA SILVA ROMAIN - LICENCE FOOTBALL', '33.75', ''),
(750, '', '1443996000', 'Remboursement de la Prestation pour TLICH ABDELAZIZ - NATATION', '120', ''),
(751, '', '1443996000', 'Remboursement de la Prestation pour TLICH CHEYMA - KARATE', '140.25', ''),
(753, '', '1443996000', 'Remboursement de la Prestation pour MORAL LOLA - COURS ZUMBA', '135', ''),
(754, '', '1443996000', 'Remboursement de la Prestation pour BONNINGUE CALI - DANSE', '225', ''),
(755, '', '1443996000', 'Remboursement de la Prestation pour PASTOUREU GILLES - TENNIS', '51', ''),
(756, '', '1443996000', 'Remboursement de la Prestation pour PASTOUREU MATHILDE - BALADE EN MER', '15', ''),
(757, '', '1443996000', 'Remboursement de la Prestation pour PASTOUREU REMI - LICENCE BASKET', '71.25', ''),
(758, '', '1443996000', 'Remboursement de la Prestation pour EUSEBIO EVA - LICENCE BASKET', '15', ''),
(759, '', '1443996000', 'Remboursement de la Prestation pour EUSEBIO LOELIA - LICENCE BASKET', '15', ''),
(760, '', '1443996000', 'Remboursement de la Prestation pour EUSEBIO MATHIS - LICENCE FOOTBALL', '15', ''),
(761, '', '1443996000', 'Remboursement de la Prestation pour DRIVON ELISE - CENTRE VACANCES', '307.5', ''),
(762, '', '1443996000', 'Remboursement de la Prestation pour DRIVON ELISE - CENTRE LOISIRS', '307.5', ''),
(765, '', '1444082400', 'Remboursement de la Prestation pour BENZIN CARLA-MARIE - EQUITATION', '56.25', ''),
(766, '', '1444082400', 'Remboursement de la Prestation pour LANOUE AXELLE - COURS PIIANO', '285', ''),
(767, '', '1444082400', 'Remboursement de la Prestation pour LANOUE ROXANE - COURS PIANO', '261', ''),
(768, '', '1444082400', 'Remboursement de la Prestation pour DA FONSECA MARION - COURS DANSE', '202.5', ''),
(769, '', '1444082400', 'Remboursement de la Prestation pour MILAGE   ANDRE - PERMIS CHASSE', '83.93', ''),
(773, '', '1444082400', 'Remboursement de la Prestation pour MORRAL JEAN  - LICENCE BASKET', '45', ''),
(775, '', '1444860000', 'Remboursement de la Prestation pour MOUSQUES DIT CABANOT VALENTINE - TENNIS + PISCINE', '99.75', ''),
(776, '', '1444860000', 'Remboursement de la Prestation pour MOUSQUES DIT CABANOT JEAN  - LICENCE NATATION', '120', ''),
(777, '', '1444860000', 'Remboursement de la Prestation pour NIMHAOULIN SARAH - CRECHE', '48.0375', ''),
(778, '', '1444860000', 'Remboursement de la Prestation pour CABANE-CHRESTIA LUDOVIC - LICENCE BASKET', '95.25', ''),
(779, '', '1444860000', 'Remboursement de la Prestation pour DARRACQ ADRIEN - LICENCE RUGBY', '45', ''),
(780, '', '1444860000', 'Remboursement de la Prestation pour HOURDILLE JUSTINE - GYM', '67.5', ''),
(781, '', '1445378400', 'Remboursement de la Prestation pour BOY Aldwin - Stage de judo', '48.75', ''),
(782, '', '1445378400', 'Remboursement de la Prestation pour TREYTURE-HAYET ROBIN - Centre aÃ©rÃ© AoÃ»t', '52.5', ''),
(783, '', '1445637600', 'Remboursement de la Prestation pour ADENIS JUDICAELLE - LICENCE', '75', ''),
(784, '', '1445637600', 'Remboursement de la Prestation pour DANTEIN TOM - Parc loisir ', '48.75', ''),
(785, '', '1445637600', 'Remboursement de la Prestation pour JACKOWSKI LISA - GYM + COURS PIANO', '320', ''),
(786, '', '1445637600', 'Remboursement de la Prestation pour DOLLE  LAURENT - COURS EQUITATION', '30', ''),
(787, '', '1445637600', 'Remboursement de la Prestation pour DOLLE ANGELINE - COURS EQUITATION', '167.25', ''),
(788, '', '1445637600', 'Remboursement de la Prestation pour THIBAUT MICHEL - GOLF + KARATE', '200', ''),
(789, '', '1445637600', 'Remboursement de la Prestation pour THIBAUT AXEL - SOUTIEN SCOLAIRE', '320', ''),
(790, '', '1445637600', 'Remboursement de la Prestation pour GUERIN JEREMY - licence foot + cinÃ©ma', '74.7', ''),
(791, '', '1445637600', 'Remboursement de la Prestation pour ADENIS ANAE - laser quest', '60.75', ''),
(793, '', '1445900400', 'Remboursement de la Prestation pour VERON DIDIER - CINEMA', '66', ''),
(794, '', '1445900400', 'Remboursement de la Prestation pour HOURDILLE JUSTINE - CINEMA', '24.075', ''),
(795, '', '1445900400', 'Remboursement de la Prestation pour CUISINIER SOEN - CINEMA', '36', ''),
(796, '', '1445900400', 'Remboursement de la Prestation pour CUISINIER CLARA - CINEMA', '36', ''),
(797, '', '1445900400', 'Remboursement de la Prestation pour MOUSQUES DIT CABANOT VALENTINE - LICENCE BASKET', '45', ''),
(798, '', '1445900400', 'Remboursement de la Prestation pour MOUSQUES DIT CABANOT JEAN  - piscine', '41.1', ''),
(799, '', '1445900400', 'Remboursement de la Prestation pour SAINT-MARTIN ERIC - TENNIS', '8', ''),
(800, '', '1445900400', 'Remboursement de la Prestation pour SAINT-MARTIN FLORIAN - TENNIS', '12', ''),
(801, '', '1420066800', 'SUBVENTION 2%', '', '13544'),
(802, '1', '1440028800', 'Vente de Billetterie: REBOUCO JOSE pour la prestation Karting Lescar adulte   ', '', '50'),
(803, '2', '1440028800', 'Vente de Billetterie: EUSEBIO MANUEL pour la prestation Karting Lescar adulte   ', '', '49.50'),
(804, '3', '1440028800', 'Vente de Billetterie: JAUREGUIBERRY BRUNO pour la prestation Karting Lescar adulte  ', '', '50'),
(805, '4', '1440028800', 'Vente de Billetterie: WHALES STEPHEN pour la prestation Karting Lescar adulte   ', '', '25'),
(806, '5', '1440028800', 'Vente de Billetterie: REBOUCO JOSE pour la prestation Karting Lescar adulte   ', '', '50'),
(807, '6', '1440028800', 'Vente de Billetterie: GRACIET PATRICK pour la prestation Karting Lescar adulte   ', '', '50'),
(808, '7', '1440028800', 'Vente de Billetterie: BERGEZ CEDRIC pour la prestation Karting Lescar adulte   ', '', '25'),
(809, '8', '1440028800', 'Vente de Billetterie: VIATEAU REMI pour la prestation Karting Lescar adulte   ', '', '25'),
(810, '9', '1440028800', 'Vente de Billetterie: VILLAYES FLORIAN pour la prestation Karting Lescar adulte   ', '', '25'),
(811, '10', '1437868800', 'Vente de Billetterie: BIDART MICKAEL pour la prestation Puy du Fou Adulte  ', '', '100'),
(812, '11', '1424476800', 'Vente de Billetterie: MARTINS DE LIMA PAUL pour la prestation Puy du Fou Adulte  ', '', '100'),
(813, '12', '1424476800', 'Vente de Billetterie: BENZIN REGIS pour la prestation Puy du Fou Adulte  ', '', '100'),
(814, '13', '1424476800  ', 'Vente de Billetterie: REBOUCO JOSE pour la prestation Puy du Fou Adulte  ', '', '100'),
(815, '14', '1424476800', 'Vente de Billetterie: MASSEY YAN pour la prestation Puy du Fou Adulte  ', '', '100'),
(816, '15', '1437868800', 'Vente de Billetterie: CLAVERIE THIERRY pour la prestation Puy du Fou Adulte  ', '', '100'),
(817, '16', '1437868800', 'Vente de Billetterie: BIDART MARCEL pour la prestation Puy du Fou Adulte  ', '', '100'),
(818, '17', '1437868800', 'Vente de Billetterie: GUYON MATTHIEU pour la prestation Puy du Fou Adulte  ', '', '100'),
(819, '18', '1437868800', 'Vente de Billetterie: URRUTY MICHEL pour la prestation Puy du Fou Adulte  ', '', '100'),
(820, '19', '1437868800', 'Vente de Billetterie: BORDATTO SERGE pour la prestation Puy du Fou Adulte  ', '', '100'),
(821, '20', '1437868800', 'Vente de Billetterie: BENZIN REGIS pour la prestation Puy du Fou Adulte  ', '', '100'),
(822, '21', '1437868800', 'Vente de Billetterie: MARTINS DE LIMA PAUL pour la prestation Puy du Fou Adulte  ', '', '100'),
(823, '22', '1437868800', 'Vente de Billetterie: GONCALVES NEIVA FREDERIC pour la prestation Puy du Fou Adulte  ', '', '100'),
(824, '23', '1437868800', 'Vente de Billetterie: DECROUE DIDIER pour la prestation Puy du Fou Adulte  ', '', '100'),
(825, '24', '1437868800', 'Vente de Billetterie: LANOUE LAURENT pour la prestation Puy du Fou Adulte  ', '', '100'),
(826, '25', '1437868800', 'Vente de Billetterie: REBOUCO JOSE pour la prestation Puy du Fou Adulte  ', '', '100'),
(827, '26', '1437868800', 'Vente de Billetterie: DE MIGUEL FELIX pour la prestation Puy du Fou Adulte  ', '', '100'),
(828, '27', '1437868800', 'Vente de Billetterie: JAUREGUIBERRY BRUNO pour la prestation Puy du Fou Adulte  ', '', '100'),
(829, '28', '1437868800', 'Vente de Billetterie: MASSEY YAN pour la prestation Puy du Fou Adulte  ', '', '100'),
(830, '29', '1437868800', 'Vente de Billetterie: ARRICAU ANDRE pour la prestation Puy du Fou Adulte  ', '', '100'),
(831, '30', '1437868800', 'Vente de Billetterie: DA FONSECA JOSE pour la prestation Puy du Fou Adulte  ', '', '100'),
(832, '31', '1437868800', 'Vente de Billetterie: GRACIET PATRICK pour la prestation Puy du Fou Adulte  ', '', '100'),
(833, '32', '1437868800', 'Vente de Billetterie: BORDENEUVE PATRICK pour la prestation Puy du Fou Adulte  ', '', '100'),
(834, '33', '1437868800', 'Vente de Billetterie: ALLAMAN NICOLAS pour la prestation Puy du Fou Adulte  ', '', '100'),
(835, '34', '1437868800', 'Vente de Billetterie: MOUSQUES DIT CABANOT STEPHANE pour la prestation Puy du Fou Adulte  ', '', '100'),
(836, '35', '1437868800', 'Vente de Billetterie: BERGEZ ANDRE pour la prestation Puy du Fou Adulte  ', '', '100'),
(837, '36', '1424736000', 'Vente de Billetterie: PUYOO GILLES pour la prestation Puy du Fou Adulte  ', '', '100'),
(838, '37', '1424476800', 'Vente de Billetterie: LANOUE LAURENT pour la prestation Puy du Fou Adulte  ', '', '100'),
(839, '38', '1424476800', 'Vente de Billetterie: GRACIET PATRICK pour la prestation Puy du Fou Adulte  ', '', '100'),
(840, '39', '1424476800', 'Vente de Billetterie: MAZURIER SYLVIE pour la prestation Puy du Fou Adulte  ', '', '100'),
(841, '40', '1424476800 ', 'Vente de Billetterie: BERGEZ ANDRE pour la prestation Puy du Fou Adulte  ', '', '100'),
(842, '41', '1424476800', 'Vente de Billetterie: BORDATTO SERGE pour la prestation Puy du Fou Adulte', '', '100'),
(843, '42', '1424476800', 'Vente de Billetterie: BORDENEUVE PATRICK pour la prestation Puy du Fou Adulte', '', '100'),
(844, '43', '1424476800', 'Vente de Billetterie: GONCALVES NEIVA FREDERIC pour la prestation Puy du Fou Adulte', '', '100'),
(845, '44', '1424476800', 'Vente de Billetterie: JAUREGUIBERRY BRUNO pour la prestation Puy du Fou Adulte', '', '100'),
(846, '45', '1424476800', 'Vente de Billetterie: DECROUE DIDIER pour la prestation Puy du Fou Adulte', '', '100'),
(847, '46', '1424476800', 'Vente de Billetterie: DA FONSECA JOSE pour la prestation Puy du Fou Adulte', '', '50'),
(848, '47', '1424476800', 'Vente de Billetterie: DA FONSECA JOSE pour la prestation Puy du Fou Adulte', '', '50'),
(849, '48', '1424476800', 'Vente de Billetterie: BIDART MARCEL pour la prestation Puy du Fou Adulte', '', '100'),
(850, '49', '1424476800', 'Vente de Billetterie: ARRICAU ANDRE pour la prestation Puy du Fou Adulte', '', '100'),
(851, '50', '1424476800', 'Vente de Billetterie: DE MIGUEL FELIX pour la prestation Puy du Fou Adulte', '', '100'),
(852, '51', '1424476800', 'Vente de Billetterie: URRUTY MICHEL pour la prestation Puy du Fou Adulte', '', '100'),
(853, '52', '1424476800', 'Vente de Billetterie: ALLAMAN NICOLAS pour la prestation Puy du Fou Adulte', '', '100'),
(854, '53', '1424476800', 'Vente de Billetterie: CLAVERIE THIERRY pour la prestation Puy du Fou Adulte', '', '100'),
(855, '54', '1424476800', 'Vente de Billetterie: BIDART MICKAEL pour la prestation Puy du Fou Adulte', '', '50'),
(856, '55', '1424476800', 'Vente de Billetterie: BIDART MICKAEL pour la prestation Puy du Fou Adulte', '', '50'),
(857, '56', '1424476800', 'Vente de Billetterie: GUYON MATTHIEU pour la prestation Puy du Fou Adulte', '', '100'),
(858, '57', '1424476800', 'Vente de Billetterie: MOUSQUES DIT CABANOT STEPHANE pour la prestation Puy du Fou Adulte', '', '100'),
(859, '58', '1437868800', 'Vente de Billetterie: BIDART DYLAN pour la prestation Puy du Fou Ado', '', '25'),
(860, '59', '1437868800', 'Vente de Billetterie: BERSANS LAURA pour la prestation Puy du Fou Ado', '', '25'),
(861, '60', '1437868800', 'Vente de Billetterie: BORDATTO CHLOE pour la prestation Puy du Fou Ado', '', '25'),
(862, '61', '1437868800', 'Vente de Billetterie: BENZIN CARLA-MARIE pour la prestation Puy du Fou Ado', '', '25'),
(863, '62', '1437868800', 'Vente de Billetterie: MAZURIER MARIE pour la prestation Puy du Fou Ado', '', '25'),
(864, '63', '1437868800', 'Vente de Billetterie: GONCALVES NEIVA ILONA pour la prestation Puy du Fou Enfant', '', '15'),
(865, '64', '1437868800', 'Vente de Billetterie: GONCALVES NEIVA MAEVA pour la prestation Puy du Fou Ado', '', '25'),
(866, '65', '1437868800', 'Vente de Billetterie: LANOUE ROXANE pour la prestation Puy du Fou Enfant', '', '15'),
(867, '66', '1437868800', 'Vente de Billetterie: LANOUE AXELLE pour la prestation Puy du Fou Ado', '', '25'),
(868, '67', '1437868800', 'Vente de Billetterie: JAUREGUIBERRY IBAN pour la prestation Puy du Fou Enfant', '', '15'),
(869, '68', '1437868800', 'Vente de Billetterie: MASSEY MARGAUX pour la prestation Puy du Fou Enfant', '', '15'),
(870, '69', '1437868800', 'Vente de Billetterie: MASSEY MAELY pour la prestation Puy du Fou Enfant', '', '15'),
(871, '70', '1437868800', 'Vente de Billetterie: MASSEY JOAN pour la prestation Puy du Fou Enfant', '', '15'),
(872, '71', '1437868800', 'Vente de Billetterie: ARRICAU ANGELE pour la prestation Puy du Fou Ado', '', '25'),
(873, '72', '1437868800', 'Vente de Billetterie: DA FONSECA MARION pour la prestation Puy du Fou Enfant', '', '15'),
(874, '73', '1437868800', 'Vente de Billetterie: MOUSQUES DIT CABANOT JEAN pour la prestation Puy du Fou Enfant', '', '15'),
(875, '74', '1437868800', 'Vente de Billetterie: MOUSQUES DIT CABANOT VALENTINE pour la prestation Puy du Fou Enfant', '', '15'),
(876, '75', '1437868800', 'Vente de Billetterie: ALLAMAN IZELIA pour la prestation Puy du Fou Ado', '', '25'),
(877, '76', '1437868800', 'Vente de Billetterie: ALLAMAN ANDERSON pour la prestation Puy du Fou Ado', '', '25'),
(878, '77', '1437868800', 'Vente de Billetterie: DECROUE LOU-ANNE pour la prestation Puy du Fou Enfant', '', '15'),
(879, '78', '1437868800', 'Vente de Billetterie: CLAVERIE QUENTIN pour la prestation Puy du Fou Enfant', '', '15'),
(880, '19600114', '1422745200', 'SUBVENTION ASC ', '', '13544'),
(881, '81881563', '1425164400', 'SUBVENTION ASC ', '', '13544'),
(882, '50033072', '1427839200', 'SUBVENTION ASC ', '', '13544'),
(883, '49947348', '1430431200', 'SUBVENTION ASC ', '', '13544'),
(884, '58528991', '1433109600', 'SUBVENTION ASC ', '', '13544'),
(885, '66932531', '1435701600', 'SUBVENTION ASC ', '', '13544'),
(886, '87890584', '1438380000', 'SUBVENTION ASC ', '', '13544'),
(887, '30733172', '1441058400', 'SUBVENTION ASC ', '', '13544'),
(888, '36370844', '1443650400', 'SUBVENTION ASC ', '', '13544'),
(889, '85530088', '1446332400', 'SUBVENTION ASC ', '', '13544'),
(890, '', '1446246000', 'Remboursement de la Prestation pour GUION HUGO - Licence FOOT', '33.75', ''),
(893, '96224012', '1431381600', 'Achat Ch&egrave;que vacances ANCV N&deg; 0000484', '57424.60', ''),
(894, '36601279', '1432936800', 'CIRQUE DE NOEL n: 2308', '1260.00', ''),
(895, '95301532', '1432936800', 'ABONNEMENT SECTION PALOISE n:2293', '870', ''),
(896, '84868116', '1434405600', 'VOYAGE PUY DU FOU n&deg; 2327', '12600', ''),
(897, '89089708', '1435183200', 'AIDE A LA LOCATION MOUSQUES DIT CABANOT  STEPHANE n&deg; 2336', '600', ''),
(898, '87612022', '1435788000', 'KARTING LESCAR n&deg; 2341', '587.50', ''),
(899, '62717697', '1435701600', 'cheques vacances Aimar n&deg; 0485', '319.20', ''),
(900, '51470509', '1438207200', 'ABONNEMENT ELAN BEARNAIS n 2353', '1260', ''),
(901, '86026465', '1436479200', 'AIDE AUX VOYAGES NIMAHOULIN OMAR n&deg;2262', '930', ''),
(902, '19607671', '1438293600', 'AIDE A LA LOCATION DANTEIN Yannick n&deg; 2368', '640', ''),
(903, '', '1447110000', 'Remboursement de la Prestation pour CASAMAJOU INTZA - ENTREES PARC', '19.5', '');
INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(904, '', '1447110000', 'Remboursement de la Prestation pour CASAMAJOU JEAN BERNARD - ENTREES PARC', '17', ''),
(906, '', '1447628400', 'Remboursement de la Prestation pour DRIVON EMILY - Ã©cole de voile', '202.5', ''),
(907, '', '1447628400', 'Remboursement de la Prestation pour DRIVON EMILY - Ã©cole de musique', '168.075', ''),
(908, '', '1447628400', 'Remboursement de la Prestation pour TOMASSI FABIEN - licence rugby', '70', ''),
(910, '', '1447628400', 'Remboursement de la Prestation pour CASAMAJOU INTZA - ACCUEIL DE LOISIRS', '31.05', ''),
(911, '', '1447628400', 'Remboursement de la Prestation pour CASAMAJOU IKER - ACCUEIL DE LOISIRS', '24.75', ''),
(913, '', '1447628400', 'Remboursement de la Prestation pour NAVAILLES ARGENTA FLORIAN - PARC ASTERIX', '36.51', ''),
(914, '', '1447887600', 'Remboursement de la Prestation pour MOUZAT MORGANE - Abonnement Platinium', '130.5', ''),
(915, '', '1447887600', 'Remboursement de la Prestation pour HOSTENDIE INES - Spectacles, entrÃ©es parcs, ...', '127.5', ''),
(916, '', '1447887600', 'Remboursement de la Prestation pour HOSTENDIE CLARISSE - Spectacles, entrÃ©es parcs, ...', '113.25', ''),
(917, '', '1448060400', 'Remboursement de la Prestation pour CAZANAVE-HOURQUET FERNAND - yoga', '62.5', ''),
(918, '', '1448060400', 'Remboursement de la Prestation pour FONSECA PHILIPPE - cinÃ©ma + aquarium', '23.05', ''),
(919, '', '1448060400', 'Remboursement de la Prestation pour GONCALVES NEIVA  ILONA - piscine', '120.975', ''),
(920, '', '1448060400', 'Remboursement de la Prestation pour BONNINGUE CALI - centre de loisirs', '20.085', ''),
(921, '', '1448060400', 'Remboursement de la Prestation pour CORNOUILLER JULIEN - cinÃ©ma+canoÃ« + mÃ©tamorphose', '131.05', ''),
(922, '', '1448060400', 'Remboursement de la Prestation pour DOLLE BASTIEN - centre equestre', '30', ''),
(924, '', '1448060400', 'Remboursement de la Prestation pour LACARRIEU-HAURAT MORGANE - cinÃ©ma + piscine', '14.25', ''),
(925, '', '1448060400', 'Remboursement de la Prestation pour ABADO MickaÃ«l - paje empoi', '217.8', ''),
(928, '', '1448060400', 'Remboursement de la Prestation pour JUNGAS JADE - centre social', '71.2125', ''),
(929, '', '1448060400', 'Remboursement de la Prestation pour DAUBA  BAPTISTE - spectacle + abonnement', '59', ''),
(930, '', '1448060400', 'Remboursement de la Prestation pour BORDENAVE MAX - parc ours', '4.95', ''),
(931, '', '1448146800', 'Remboursement de la Prestation pour BREGNIAS MARC - natation + inscriptions', '148.35', ''),
(932, '', '1448233200', 'Remboursement de la Prestation pour ADENIS ANAE - ecole de natation + game show', '131.475', ''),
(933, '', '1448233200', 'Remboursement de la Prestation pour ADENIS JUDICAELLE - game show', '10.5', ''),
(934, '', '1448233200', 'Remboursement de la Prestation pour ADENIS BERTRAND - game show', '7', ''),
(935, '', '1448233200', 'Remboursement de la Prestation pour BIDART CHARLOTTE - mÃ©tamorphose', '150', ''),
(936, '', '1448406000', 'Remboursement de la Prestation pour WHALES  STEPHEN - MusÃ©e, Squash, cinÃ©, zoo, ...', '42.5', ''),
(937, '', '1448406000', 'Remboursement de la Prestation pour WHALES CELESTE - Centre de Loisirs', '132', ''),
(938, '', '1448924400', 'Remboursement de la Prestation pour CASAIL CHARLOTTE - Licence USL Natation', '52.5', ''),
(939, '', '1449183600', 'Remboursement de la Prestation pour NARDOZZI JEREMY - METAMORPHOSE', '124.5', ''),
(940, '', '1449183600', 'Remboursement de la Prestation pour TRIPICCHIO FIORENZO - free bowl', '13.65', ''),
(942, '', '1449183600', 'Remboursement de la Prestation pour MASSEY MARGAUX - licence danse + zoo', '98.475', ''),
(943, '', '1449183600', 'Remboursement de la Prestation pour MASSEY MAELY - licence danse + zoo', '98.475', ''),
(944, '', '1449183600', 'Remboursement de la Prestation pour MASSEY JOAN - licence judo + royals  Kids + zoo', '208.725', ''),
(945, '', '1449183600', 'Remboursement de la Prestation pour FONSECA PHILIPPE - magic forme', '65.7', ''),
(946, '', '1449183600', 'Remboursement de la Prestation pour LANOUE ROXANE - licence hand', '46.5', ''),
(947, '', '1449183600', 'Remboursement de la Prestation pour CLAVERIE QUENTIN - SPECTACLE', '43.5', ''),
(948, '', '1449183600', 'Remboursement de la Prestation pour JAUREGUIBERRY IBAN - PARC ANIMALIER', '8.25', ''),
(949, '', '1449183600', 'Remboursement de la Prestation pour JAUREGUIBERRY IBAN - GARDERIE', '39.255', ''),
(950, '', '1449183600', 'Remboursement de la Prestation pour MOLENAT JOHAN - pajeemploi', '320', ''),
(951, '', '1449183600', 'Remboursement de la Prestation pour PASTOUREU MATHILDE - basket + aquabearn', '37.5', ''),
(952, '', '1449183600', 'Remboursement de la Prestation pour PASTOUREU REMI - basket + aquabearn', '37.5', ''),
(953, '', '1449183600', 'Remboursement de la Prestation pour MORRAL JEREMIE - METAMORPHOSE', '200', ''),
(954, '', '1449183600', 'Remboursement de la Prestation pour DATHY FRANCK - squash+ cinÃ© +golf +,,,,,', '116.985', ''),
(955, '', '1449183600', 'Remboursement de la Prestation pour TOMASSI FABIEN - abonnement sport lescar', '130', ''),
(957, '8813737', '1448406000', 'PLACE AU CIRQUE n&deg; 2499', '679.00', ''),
(958, '', '1449529200', 'Remboursement de la Prestation pour HOURDILLE JUSTINE - Ecole de tennis + Pic du Midi', '246.75', ''),
(959, '', '1449529200', 'Remboursement de la Prestation pour HOURDILLE LUCAS - Pic du Midi', '25.5', ''),
(960, '', '1449788400', 'Remboursement de la Prestation pour ROSSI EDWIGE - Abonnement annuel Basic Fit II', '169', ''),
(961, '', '1449788400', 'Remboursement de la Prestation pour HOURDILLE LUCAS - Ã©cole de tennis', '221.25', ''),
(962, '', '1449788400', 'Remboursement de la Prestation pour HOURDILLE THERESE - tennis de table', '105', ''),
(963, '', '1449788400', 'Remboursement de la Prestation pour HOURDILLE LUCAS - tennis de table', '147.75', ''),
(964, '', '1450047600', 'Remboursement de la Prestation pour GUERIN JEREMY - Karting', '51', ''),
(965, '', '1450047600', 'Remboursement de la Prestation pour MARTINEZ MAREVA - Foyer rural', '98.25', ''),
(966, '', '1450047600', 'Remboursement de la Prestation pour MARTINEZ MAREVA - foyer rural + spectacle', '121.5', ''),
(967, '', '1450047600', 'Remboursement de la Prestation pour MARTINEZ ALAIN - spectacle', '36', ''),
(968, '', '1450047600', 'Remboursement de la Prestation pour CASAIL CHARLOTTE - spectacle', '74.85', ''),
(969, '', '1450047600', 'Remboursement de la Prestation pour ALVES  PAUL - caliceo', '15', ''),
(970, '', '1450047600', 'Remboursement de la Prestation pour DEL PIANTA  ALEXANDRE - Ariegeoise + pÃªcherie + ferme aux bisons', '48.5', ''),
(971, '', '1450047600', 'Remboursement de la Prestation pour ADENIS BERTRAND - spectacle', '33', ''),
(973, '', '1450047600', 'Remboursement de la Prestation pour ADENIS ANAE - spectacle', '51.975', ''),
(974, '', '1450047600', 'Remboursement de la Prestation pour DULAU  EMMANUEL - thermes', '11', ''),
(975, '', '1450047600', 'Remboursement de la Prestation pour ABADO Micka&euml;l - Pajeemploi', '102.20', ''),
(976, '', '1450047600', 'Remboursement de la Prestation pour BATBEDAT  LAURENT - Cotisation Boxe + abonnement cinÃ©ma', '82.5', ''),
(977, '', '1450047600', 'Remboursement de la Prestation pour LAHORE-LAHITTE    JEAN .MARC - Caliceo', '37.5', ''),
(978, '', '1450047600', 'Remboursement de la Prestation pour AIMAR REMY - Corail hÃ©licoptÃ¨re', '134', ''),
(979, '', '1450047600', 'Remboursement de la Prestation pour DAUBA  BAPTISTE - licence + cinÃ©ma', '37', ''),
(981, '', '1450047600', 'Remboursement de la Prestation pour CASAMAJOU JEAN BERNARD - opÃ©ra', '49', ''),
(982, '', '1450047600', 'Remboursement de la Prestation pour BENZIN DYLAN - karting', '147', ''),
(984, '', '1450220400', 'Remboursement de la Prestation pour PERALTA   JORDI - concert', '47', ''),
(985, '', '1450220400', 'Remboursement de la Prestation pour SALVA YOHAN - tennis + surf', '200', ''),
(986, '', '1450220400', 'Remboursement de la Prestation pour BRUNE ERIC - CINEMA', '41.25', ''),
(987, '', '1450220400', 'Remboursement de la Prestation pour ROSSI EDWIGE - concert', '31', ''),
(988, '', '1450220400', 'Remboursement de la Prestation pour DA FONSECA TEO - piscine', '194.4', ''),
(989, '', '1450220400', 'Remboursement de la Prestation pour FOURNIER DOMINIQUE - Permis +ski', '85', ''),
(990, '', '1450220400', 'Remboursement de la Prestation pour SIFREU FLORIAN - gym', '23.5', ''),
(991, '', '1450220400', 'Remboursement de la Prestation pour CUISINIER SOEN - Rhianna + cinÃ©', '92.94', ''),
(992, '', '1450220400', 'Remboursement de la Prestation pour CUISINIER CLARA - rhianna + cinÃ©ma', '94.59', ''),
(993, '46601262', '1448924400', 'SUBVENTION ASC', '', '11544.00'),
(994, '', '1451430000', 'Remboursement de la Prestation pour CABANE-CHRESTIA LUDOVIC - basket + licence', '53.25', ''),
(995, '', '1451430000', 'Remboursement de la Prestation pour CABANE-CHRESTIA CHRISTOPHE - basket', '12.5', ''),
(996, '', '1451430000', 'Remboursement de la Prestation pour MAIRAL JULIEN - PISCINE', '97.85', ''),
(997, '', '1451430000', 'Remboursement de la Prestation pour DARRACQ CHRISTOPHE - rugby', '9', ''),
(998, '', '1451430000', 'Remboursement de la Prestation pour LAHORE-LAHITTE    JEAN .MARC - cinema', '10.6', ''),
(999, '', '1451430000', 'Remboursement de la Prestation pour DARRACQ ADRIEN - KARTING', '26', ''),
(1000, '', '1451430000', 'Remboursement de la Prestation pour PASTOUREU GILLES - CALICEO + FOOT', '37.5', ''),
(1001, '', '1451430000', 'Remboursement de la Prestation pour PASTOUREU MATHILDE - CALICEO + FOOT', '15', ''),
(1002, '', '1451430000', 'Remboursement de la Prestation pour PASTOUREU FANNY - CALICEO + FOOT', '15', ''),
(1003, '', '1451430000', 'Remboursement de la Prestation pour NIMHAOULIN ANISS - VOYAGE SCOLAIRE', '225', ''),
(1004, '', '1451430000', 'Remboursement de la Prestation pour SAINT-MARTIN MELISSA - VOYAGE SCOLAIRE', '123.75', ''),
(1005, '', '1451430000', 'Remboursement de la Prestation pour ALCANTARA BEATRICE - HAMMAM + CALICEO', '160', ''),
(1006, '', '1451430000', 'Remboursement de la Prestation pour TRIPICCHIO FIORENZO - CINÃ‰MA + MUSCULATION', '60.75', ''),
(1007, '', '1451430000', 'Remboursement de la Prestation pour TISNES MARION - BAINS DU ROCHER', '17', ''),
(1008, '', '1451430000', 'Remboursement de la Prestation pour ALVES  PAUL - CINÃ‰MA +SPECTACLES', '82.3', ''),
(1009, '', '1451430000', 'Remboursement de la Prestation pour WHALES  STEPHEN - SQUASH', '16.525', ''),
(1010, '18228568', '1450825200', 'CHEQUE CADEAU DE NOEL n&deg;2540 (PUERTAS)', '80.00', ''),
(1011, '5231468', '1449183600', 'ANNIVERSAIRE 25 ANS REXAM (sacs &agrave; dos) n&deg;0139087  ch&egrave;que de banque', '5191.80', ''),
(1012, '18345861', '1449270000', 'ANNIVERSAIRE 25 ANS REXAM (chocolats) n&deg;0139088 ch&egrave;que de banque', '2408.32', ''),
(1013, '43274731', '1449529200', 'LA PETIAN n&deg; 0496', '1000.00', ''),
(1014, '51865354', '1447974000', 'CH&Egrave;QUES CADHOC n&deg; 0494', '25641.40', ''),
(1015, '68139168', '1448406000', 'CH&Egrave;QUES CADHOC  virement bancaire', '1600.10', ''),
(1016, '58185731', '1451516400', 'ANNIVERSAIRE 25 ANS REXAM (sacs &agrave; dos) n&deg;2541', '127.25', ''),
(1017, '', '1451516400', 'Remboursement de la Prestation pour PERALTA   GAETAN - SPECTACLES', '47.3', ''),
(1018, '', '1451516400', 'Remboursement de la Prestation pour PERALTA ANTONIN - SPECTACLE', '35.7', ''),
(1020, '', '1451516400', 'Remboursement de la Prestation pour SIFREU FLORIAN - espace vital', '34', ''),
(1021, '', '1451516400', 'Remboursement de la Prestation pour NOUSTY EMMA - cirque de noel', '22.65', ''),
(1022, '', '1451516400', 'Remboursement de la Prestation pour NOUSTY GILLES - cirque de noel', '30.2', ''),
(1023, '', '1451516400', 'Remboursement de la Prestation pour DANTEIN TOM - royal kids', '11.25', ''),
(1024, '', '1448233200', 'Remboursement de la Prestation pour JUNGAS LOU - Pajemploi assitante maternelle', '320', '');

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
(43, 'cine'),
(44, 'Puy du Fou'),
(45, 'VOYAGE'),
(46, 'Puy du Fou Ado'),
(47, 'Puy du Fou Enfant'),
(48, 'Puy du Fou 1 Adulte'),
(49, 'Cirque de NoÃ«l'),
(50, 'Karting Lescar');

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

--
-- Contenu de la table `ligne_billet_ayant_droit`
--

INSERT INTO `ligne_billet_ayant_droit` (`idlignebilletayantdroit`, `idbilletayantdroit`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`, `commentaire`) VALUES
(2, 2, 4, '1', '15', '45', 0, ''),
(3, 3, 4, '1', '15', '45', 0, ''),
(5, 5, 3, '1', '25', '75', 0, ''),
(6, 6, 3, '1', '25', '75', 0, ''),
(7, 7, 4, '1', '15', '45', 0, ''),
(8, 8, 4, '1', '15', '45', 0, ''),
(10, 10, 4, '1', '15', '45', 0, ''),
(11, 11, 3, '1', '25', '75', 0, ''),
(12, 12, 4, '1', '15', '45', 0, ''),
(13, 13, 4, '1', '15', '45', 0, ''),
(14, 14, 4, '1', '15', '45', 0, ''),
(15, 15, 4, '1', '15', '45', 0, ''),
(16, 16, 3, '1', '25', '75', 0, ''),
(17, 17, 4, '1', '15', '45', 0, ''),
(18, 18, 3, '1', '25', '75', 0, ''),
(19, 19, 4, '1', '15', '45', 0, ''),
(20, 20, 3, '1', '25', '75', 0, ''),
(21, 21, 3, '1', '25', '75', 0, ''),
(22, 22, 3, '1', '25', '75', 0, ''),
(23, 23, 3, '1', '25', '75', 0, ''),
(24, 24, 3, '1', '25', '75', 0, '');

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

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`, `commentaire`) VALUES
(45, 49, 2, '2', '100', '100', 0, ''),
(46, 50, 2, '2', '100', '100', 0, ''),
(47, 51, 2, '1', '50', '50', 0, ''),
(48, 52, 2, '1', '50', '50', 0, ''),
(49, 53, 2, '2', '100', '100', 0, ''),
(50, 54, 2, '2', '100', '100', 0, ''),
(51, 55, 2, '2', '100', '100', 0, ''),
(52, 56, 2, '2', '100', '100', 0, ''),
(53, 57, 2, '2', '100', '100', 0, ''),
(54, 58, 2, '2', '100', '100', 0, ''),
(55, 59, 2, '1', '50', '50', 0, ''),
(56, 60, 2, '1', '50', '50', 0, ''),
(57, 61, 2, '2', '100', '100', 0, ''),
(58, 62, 2, '2', '100', '100', 0, ''),
(59, 63, 2, '2', '100', '100', 0, ''),
(60, 64, 2, '2', '100', '100', 0, ''),
(61, 65, 2, '2', '100', '100', 0, ''),
(62, 66, 2, '2', '100', '100', 0, ''),
(63, 67, 2, '2', '100', '100', 0, ''),
(64, 68, 2, '2', '100', '100', 0, ''),
(65, 69, 2, '2', '100', '100', 0, ''),
(66, 70, 5, '1', '100', '100', 0, ''),
(68, 73, 2, '2', '100', '100', 0, ''),
(69, 74, 2, '2', '100', '100', 0, ''),
(70, 75, 2, '2', '100', '100', 0, ''),
(71, 76, 2, '2', '100', '100', 0, ''),
(72, 77, 2, '2', '100', '100', 0, ''),
(73, 78, 2, '2', '100', '100', 0, ''),
(74, 79, 2, '2', '100', '100', 0, ''),
(75, 80, 2, '2', '100', '100', 0, ''),
(76, 81, 2, '2', '100', '100', 0, ''),
(77, 82, 2, '2', '100', '100', 0, ''),
(78, 83, 2, '2', '100', '100', 0, ''),
(80, 85, 2, '2', '100', '100', 0, ''),
(81, 86, 2, '2', '100', '100', 0, ''),
(82, 87, 2, '2', '100', '100', 0, ''),
(83, 88, 2, '2', '100', '100', 0, ''),
(84, 89, 2, '2', '100', '100', 0, ''),
(85, 90, 2, '2', '100', '100', 0, ''),
(86, 91, 2, '2', '100', '100', 0, ''),
(87, 92, 2, '2', '100', '100', 0, ''),
(88, 93, 2, '2', '100', '100', 0, ''),
(89, 94, 2, '2', '100', '100', 0, ''),
(90, 95, 2, '2', '100', '100', 0, ''),
(91, 96, 2, '2', '100', '100', 0, ''),
(93, 98, 2, '2', '100', '100', 0, ''),
(94, 99, 2, '2', '100', '100', 0, ''),
(95, 100, 2, '2', '100', '100', 0, ''),
(96, 102, 6, '1', '25', '25', 0, ''),
(97, 103, 6, '1', '25', '25', 0, ''),
(98, 104, 6, '1', '25', '25', 0, ''),
(99, 105, 6, '1', '50', '0', 1, ''),
(100, 106, 6, '1', '50', '0', 1, ''),
(101, 107, 6, '1', '25', '25', 0, ''),
(102, 108, 6, '1', '50', '0', 1, ''),
(104, 110, 6, '1', '49.5', '0.5', 0, ''),
(105, 111, 6, '1', '50', '0', 1, '');

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
(5, '1.2.5', '29315-ULTI');

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
(6, 'Thierry', 'c5394b4f3df6d0a42d0a99cf8524b464', 1),
(9, 'Jean-Paul', 'b53759f3ce692de7aff1b5779d3964da', 1),
(10, 'Gilles', '618bcbf7fcba943d8f3899c33ab81b9c', 1);

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
(3, 'vente_direct', '1');

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
(2, 45, 'Puy du Fou Adulte', '01-02-2015', '31-12-2015', '50', '50', '100', '6', '12', 0),
(3, 46, 'Puy du Fou Ado', '01-02-2015', '31-12-2015', '25', '75', '100', '5', '60', 0),
(4, 47, 'Puy du Fou Enfant', '01-02-2015', '31-12-2015', '15', '45', '60', '5', '39', 0),
(5, 48, 'Puy du Fou 1 Adulte', '15-02-2015', '31-12-2015', '100', '100', '200', '2', '59', 0),
(6, 50, 'Karting Lescar adulte', '01-06-2015', '31-12-2015', '25', '25', '50', '10', '91', 0);

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

--
-- Contenu de la table `produit_fixe`
--

INSERT INTO `produit_fixe` (`idproduitfixe`, `designation`, `date_produit_fixe`, `montant_produit`, `num_mouvement`) VALUES
(49, 'SUBVENTION 2%', '01-01-2015', '13544', ''),
(50, 'SUBVENTION ASC ', '01-02-2015', '13544', '19600114'),
(51, 'SUBVENTION ASC ', '01-03-2015', '13544', '81881563'),
(52, 'SUBVENTION ASC ', '01-04-2015', '13544', '50033072'),
(53, 'SUBVENTION ASC ', '01-05-2015', '13544', '49947348'),
(54, 'SUBVENTION ASC ', '01-06-2015', '13544', '58528991'),
(55, 'SUBVENTION ASC ', '01-07-2015', '13544', '66932531'),
(56, 'SUBVENTION ASC ', '01-08-2015', '13544', '87890584'),
(57, 'SUBVENTION ASC ', '01-09-2015', '13544', '30733172'),
(58, 'SUBVENTION ASC ', '01-10-2015', '13544', '36370844'),
(59, 'SUBVENTION ASC ', '01-11-2015', '13544', '85530088'),
(60, 'SUBVENTION ASC', '01-12-2015', '11544.00', '46601262');

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
  `pointe` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reg_billet_ayant_droit`
--

INSERT INTO `reg_billet_ayant_droit` (`idregbilletayantdroit`, `idbilletayantdroit`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(1, 2, 1, '15', 'CE', 'CLAVERIE Thierry', '5344631', 0),
(2, 3, 1, '15', 'CE', 'DECROUE Didier', '6972047', 0),
(3, 5, 1, '25', 'CE', 'ALLAMAN Nicolas', '174', 0),
(4, 6, 1, '25', 'CE', 'ALLAMAN Nicolas', '174', 0),
(5, 7, 1, '15', 'BPACA', 'MOUSQUES DIT CABANOT StÃ©phane', '479495', 0),
(6, 8, 1, '15', 'BPACA', 'MOUSQUES DIT CABANOT StÃ©phane', '479495', 0),
(7, 10, 1, '15', 'LA POSTE', 'DA FONSECA JosÃ©', '5477077', 0),
(8, 11, 1, '25', 'CA', 'ARRICAU AndrÃ©', '9892954', 0),
(9, 12, 1, '15', 'LA POSTE', 'MASSEY Yan', '5503064', 0),
(10, 13, 1, '15', 'LA POSTE', 'MASSEY Yan', '5503064', 0),
(11, 14, 1, '15', 'LA POSTE', 'MASSEY Yan', '5503064', 0),
(12, 15, 1, '15', 'CE', 'JAUREGUYBERRY Bruno', '5243600', 0),
(13, 16, 1, '25', 'CA', 'LANOUE Laurent', '6363973', 0),
(14, 17, 1, '15', 'CA', 'LANOUE Laurent', '6363973', 0),
(15, 18, 1, '25', 'CA', 'GONCALVES NEIVA FrÃ©dÃ©ric', '4533749', 0),
(16, 19, 1, '15', 'CA', 'GONCALVES NEIVA FrÃ©dÃ©ric', '4533749', 0),
(17, 20, 1, '25', 'LCL', 'MAZURIER Amina', '1427350', 0),
(18, 21, 1, '25', 'CA', 'BENZIN RÃ©gis', '3142484', 0),
(19, 22, 1, '25', 'CE', 'BORDATTO Serge', '5892591', 0),
(20, 23, 1, '25', 'CE', 'BORDATTO Serge', '5892591', 0),
(21, 24, 1, '25', 'CA', 'CLAVE Jean-Paul', '2811730', 0);

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
  `pointe` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(66, 70, 1, '100', 'CE', 'PUYOO Gilles', '3171507', 0),
(68, 73, 1, '100', 'CA', 'BERGEZ AndrÃ©', '5314245', 0),
(69, 74, 1, '100', 'BPACA', 'MOUSQUES DIT CABANOT SthÃ©phane', '0479495', 0),
(70, 75, 1, '100', 'SG', 'ALLAMAN Nicolas', '174', 0),
(71, 76, 1, '100', 'SG', 'BORDENEUVE Patrick', '3786', 0),
(72, 77, 1, '100', 'SG', 'GRACIET Patrick', '2954', 0),
(73, 78, 1, '100', 'LA POSTE', 'DA FONSECA JosÃ©', '5477077', 0),
(74, 79, 1, '100', 'CA', 'ARRICAU AndrÃ©', '9892954', 0),
(75, 80, 1, '100', 'LA POSTE', 'MASSEY Yan', '5503064', 0),
(76, 81, 1, '100', 'CE', 'JAUREGUYBERRY Bruno', '5243600', 0),
(77, 82, 1, '100', 'CE', 'DE MIGUEL FÃ©lix', '1494', 0),
(78, 83, 1, '100', 'CA', 'REBOUCO JosÃ©', '5135608', 0),
(80, 85, 1, '100', 'CA', 'LANOUE Laurent', '6363973', 0),
(81, 86, 1, '100', 'CE', 'DECROUE Didier', '6972047', 0),
(82, 87, 1, '100', 'CA', 'GONCALVES NEIVA FrÃ©dÃ©ric', '4533749', 0),
(83, 88, 1, '100', 'CA', 'MARTINS DE LIMA Paul', '3341964', 0),
(84, 89, 1, '100', 'CA', 'BENZIN RÃ©gis', '3142484', 0),
(85, 90, 1, '100', 'CE', 'BORDATTO Serge', '5892591', 0),
(86, 91, 1, '100', 'CA', 'URRUTY Michel', '5922742', 0),
(87, 92, 1, '100', 'CE', 'GUYON Matthieu', '6482472', 0),
(88, 93, 1, '100', 'CA', 'CLAVE Jean-Paul', '2811730', 0),
(89, 94, 1, '100', 'CE', 'CLAVERIE Thierry', '5344631', 0),
(90, 95, 1, '100', 'LA POSTE', 'MASSEY Yan', '4592074', 0),
(91, 96, 1, '100', 'CE', 'REBOUCO JosÃ©', '5135568', 0),
(92, 98, 1, '100', 'CA', 'BENZIN RÃ©gis', '5618104', 0),
(93, 99, 1, '100', 'CA', 'MARTINS DE LIMA Paul', '0', 0),
(94, 100, 1, '100', 'CA', 'CLAVE Jean Paul', '2811731', 0),
(95, 102, 1, '25', 'CrÃ©dit Mutuel', 'VILLAYES Florian', '7606768', 0),
(96, 103, 1, '25', 'BPACA', 'VIATEAU RÃ©mi', '00000013', 0),
(97, 104, 1, '25', 'CIC', 'BERGEZ CÃ©dric', '5501321', 0),
(98, 105, 1, '50', 'SociÃ©tÃ© GÃ©nÃ©rale', 'GRACIET Patrick', '0002964', 0),
(99, 106, 1, '50', 'CE', 'REBOUCO JosÃ©', '', 0),
(100, 107, 1, '25', 'LA POSTE', 'WHALES Stephen', '3613023', 0),
(101, 108, 1, '50', 'CA', 'JAUREGUYBERRY Bruno', '3857179', 0),
(103, 110, 1, '49.5', 'CA', 'EUSEBIO Manuel', '5440858', 0),
(105, 111, 1, '50', 'CE', 'REBOUCO JosÃ©', '5135618', 0);

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
(118, 123, '156,00', '2286'),
(119, 124, '194,78', '2288'),
(120, 125, '49,13', '2289'),
(121, 126, '166,22', '2290'),
(122, 127, '26,25', '2291'),
(123, 128, '320,00', '2294'),
(124, 129, '320,00', '2294'),
(125, 130, '188,25', '2295'),
(126, 131, '57,45', '2298'),
(127, 132, '49,95', '2298'),
(128, 133, '23,46', '2299'),
(129, 134, '48,75', '2301'),
(130, 135, '37,50', '2302'),
(131, 136, '5,25', '2309'),
(132, 138, '10,50', '2309'),
(133, 139, '63,75', '2312'),
(134, 140, '319,50', '2313'),
(135, 141, '191,44', '2314'),
(136, 142, '45,00', '2315'),
(137, 143, '320,00', '2316'),
(138, 144, '320,00', '2318'),
(139, 145, '157,88', '2319'),
(140, 146, '49,25', '2321'),
(141, 147, '75,00', '2322'),
(142, 148, '17,00', '2323'),
(143, 149, '42,00', '2325'),
(144, 150, '25,58', '2329'),
(145, 151, '66,00', '2330'),
(146, 152, '56,25', '2332'),
(147, 153, '56,25', '2332'),
(148, 154, '20,25', '2333'),
(149, 155, '86,25', '2355'),
(150, 156, '86,25', '2335'),
(151, 157, '3,38', '2337'),
(152, 158, '234,88', '2337'),
(153, 159, '3,38', '2337'),
(154, 160, '188,25', '2339'),
(155, 161, '320,00', '2340'),
(156, 162, '24,00', '2346'),
(157, 163, '24,00', '2346'),
(158, 164, '77,03', '2347'),
(159, 165, '187,50', '2348'),
(160, 166, '233,51', '2351'),
(161, 167, '30,00', '2352'),
(162, 168, '135,00', '2356'),
(163, 169, '127,50', '2356'),
(164, 170, '12,00', '2357'),
(165, 171, '135,00', '2361'),
(166, 172, '68,25', '487'),
(167, 173, '30,86', '2362'),
(168, 174, '30,86', '2362'),
(169, 175, '39,75', '2367'),
(170, 176, '54,75', '23.68'),
(171, 177, '68,74', '2370'),
(172, 178, '22,50', '2373'),
(173, 179, '13,35', '2374'),
(174, 180, '30,75', '25.75'),
(175, 181, '36,56', '2377'),
(176, 182, '36,56', '2377'),
(177, 183, '25,50', '2378'),
(178, 184, '16,88', '2379'),
(179, 185, '16,88', '2279'),
(180, 186, '33,30', '2381'),
(181, 187, '64,50', '2383'),
(182, 188, '187,50', '2384'),
(183, 189, '9,00', '2385'),
(184, 190, '9,00', '2385'),
(185, 191, '52,50', '2387'),
(186, 192, '60,00', '2388'),
(187, 193, '28,10', '2389'),
(188, 195, '63,98', '2391'),
(189, 196, '187,50', '2393'),
(190, 197, '101,25', '2394'),
(191, 198, '123,75', '2397'),
(192, 199, '104,48', '2399'),
(193, 200, '104,48', '2399'),
(194, 201, '7,88', '2400'),
(195, 202, '84,75', '2401'),
(196, 203, '54,75', '2402'),
(197, 204, '56,25', '2404'),
(198, 205, '112,50', '488'),
(199, 206, '71,25', '2412'),
(200, 207, '77,80', '2413'),
(201, 208, '176,25', '2415'),
(202, 209, '123,75', '2416'),
(203, 210, '131,25', '2420'),
(204, 212, '126,75', '489'),
(205, 213, '99,00', '489'),
(206, 214, '270,00', '490'),
(207, 215, '286,13', '2423'),
(208, 216, '48,75', '491'),
(209, 217, '148,50', '2427'),
(210, 218, '13,50', '2427'),
(211, 219, '41,25', '2428'),
(212, 220, '81,00', '2430'),
(213, 221, '71,25', ''),
(214, 221, '71,25', '2432'),
(215, 222, '71,25', '2432'),
(216, 223, '105,00', '2434'),
(217, 224, '33,75', '2435'),
(218, 225, '120,00', '2436'),
(219, 226, '140,25', '2436'),
(220, 227, '45,00', '2437'),
(221, 228, '51,50', '2438'),
(222, 229, '225,00', '2439'),
(223, 230, '15,00', '2440'),
(224, 231, '71,25', '2440'),
(225, 232, '15,00', '2441'),
(226, 233, '15,00', '2441'),
(227, 234, '15,00', '2441'),
(228, 235, '262,93', ''),
(229, 235, '262,93', '2442'),
(230, 236, '262,93', '2442'),
(231, 238, '49,00', '2443'),
(232, 239, '285,00', '2444'),
(233, 240, '261,00', '2444'),
(234, 241, '35,00', '2445'),
(235, 242, '112,50', '2447'),
(236, 243, '45,00', '2448'),
(237, 244, '99,75', '2449'),
(238, 245, '120,00', '2449'),
(239, 246, '48,04', '2450'),
(240, 247, '95,25', '2451'),
(241, 248, '67,50', '2453'),
(242, 249, '48,75', '492'),
(243, 250, '52,50', '492'),
(244, 251, '75,00', '2454'),
(245, 252, '48,75', '2455'),
(246, 253, '320,00', '2456'),
(247, 254, '42,50', '2457'),
(248, 255, '320,00', '2458'),
(249, 256, '60,75', '2460'),
(250, 257, '24,08', '2462'),
(251, 258, '36,00', '2463'),
(252, 259, '36,00', '2463'),
(253, 260, '43,33', '2484'),
(254, 261, '30,58', '2484'),
(255, 262, '12,00', '2465'),
(256, 263, '33,75', '493'),
(257, 264, '19,50', '2480'),
(258, 265, '203,25', '2481'),
(259, 266, '202,50', '2481'),
(260, 267, '37,18', '2481'),
(261, 268, '31,05', '2483'),
(262, 269, '24,75', '2483'),
(263, 270, '127,50', '498'),
(264, 271, '113,25', '498'),
(265, 272, '120,98', '2487'),
(266, 273, '17,20', '2488'),
(267, 274, '30,00', '2490'),
(268, 275, '14,25', '2491'),
(269, 276, '14,25', '2491'),
(270, 277, '217,80', '2492'),
(271, 278, '320,00', '2493'),
(272, 279, '320,00', '2493'),
(273, 280, '71,21', '2493'),
(274, 281, '131,48', '2497'),
(275, 282, '10,50', '2497'),
(276, 283, '128,56', '499'),
(277, 284, '52,50', '500'),
(278, 285, '13,65', '2502'),
(279, 286, '98,48', '2504'),
(280, 287, '98,48', '2504'),
(281, 288, '208,73', '2504'),
(282, 289, '44,00', '2506'),
(283, 290, '43,50', '2507'),
(284, 291, '8,25', '2508'),
(285, 292, '39,26', '2408'),
(286, 293, '320,00', '2509'),
(287, 294, '37,50', '2510'),
(288, 295, '26,00', '2510'),
(289, 296, '219,43', '2515'),
(290, 297, '25,50', '2515'),
(291, 298, '221,25', '2516'),
(292, 299, '33,50', '2516'),
(293, 300, '57,88', '2518'),
(294, 301, '57,88', '2518'),
(295, 302, '74,85', '2519'),
(296, 304, '51,98', '2522'),
(297, 305, '102,20', '2524'),
(298, 306, '147,00', '2530'),
(299, 307, '41,25', '2534'),
(300, 308, '194,40', '2536'),
(301, 309, '92,94', '2539'),
(302, 310, '94,59', '2539'),
(303, 311, '53,25', '2542'),
(304, 312, '15,00', '2547'),
(305, 313, '15,00', '2547'),
(306, 314, '225,00', '2548'),
(307, 315, '123,75', '2549'),
(308, 316, '50,98', '2551'),
(309, 317, '35,70', '2556'),
(310, 318, '320,00', '2493'),
(311, 319, '22,65', '2558'),
(312, 320, '11,25', '2559'),
(313, 321, '320,00', '2493');

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
(126, 133, '12,00', '2287'),
(127, 134, '49,00', '2291'),
(128, 135, '29,50', '2296'),
(129, 136, '59,50', '2297'),
(130, 137, '36,50', '2300'),
(131, 138, '50,00', '2302'),
(132, 139, '71,75', '2303'),
(133, 140, '71,75', '2304'),
(134, 141, '15,00', '2305'),
(135, 143, '9,50', '2306'),
(136, 144, '48,00', '2307'),
(137, 146, '36,50', '2310'),
(138, 147, '85,00', '2311'),
(139, 148, '42,50', '2312'),
(140, 149, '115,98', '2314'),
(141, 150, '148,45', '2317'),
(142, 151, '124,90', '2324'),
(143, 152, '50,50', '2326'),
(144, 153, '47,50', '2328'),
(145, 154, '25,00', '2331'),
(146, 155, '13,50', '2333'),
(147, 156, '19,70', '2334'),
(148, 157, '44,50', '2335'),
(149, 158, '103,60', '2337'),
(150, 159, '22,50', '2338'),
(151, 160, '52,30', '2342'),
(152, 161, '73,58', '2343'),
(153, 163, '199,50', '2345'),
(154, 164, '47,00', '2344'),
(155, 165, '32,00', '2346'),
(156, 166, '39,25', '486'),
(157, 166, '39,25', '486'),
(158, 167, '50,50', '2347'),
(159, 168, '73,58', '2349'),
(160, 169, '51,00', '2350'),
(161, 174, '51,75', '2354'),
(162, 175, '42,43', '2355'),
(163, 176, '13,00', '2357'),
(164, 177, '39,00', '2358'),
(165, 178, '200,00', '2359'),
(166, 179, '17,00', '2360'),
(167, 180, '78,00', '487'),
(168, 181, '33,00', '2364'),
(169, 182, '75,00', '2366'),
(170, 183, '32,00', '2367'),
(171, 184, '19,00', '2369'),
(172, 185, '73,58', '2371'),
(173, 186, '29,00', '2372'),
(174, 187, '9,50', '2374'),
(175, 188, '17,05', '2376'),
(176, 189, '63,00', '2372'),
(177, 190, '33,90', '2377'),
(178, 191, '29,00', '2378'),
(179, 192, '60,75', '2380'),
(180, 193, '30,00', '2383'),
(181, 194, '34,50', '2386'),
(182, 195, '50,00', '2390'),
(183, 196, '91,75', '2392'),
(184, 197, '12,00', '2395'),
(185, 198, '66,00', '2396'),
(186, 199, '26,00', '2397'),
(187, 200, '62,50', '2398'),
(188, 201, '67,50', '2400'),
(189, 202, '89,43', '2403'),
(190, 203, '92,48', '2405'),
(191, 204, '23,30', '2406'),
(192, 205, '200,00', '2407'),
(193, 206, '20,00', '2408'),
(194, 208, '54,00', '2409'),
(195, 209, '119,00', '2410'),
(196, 209, '119,00', '2410'),
(197, 211, '142,75', '488'),
(198, 212, '9,25', '2412'),
(199, 213, '62,35', '2414'),
(200, 214, '12,50', '2416'),
(201, 215, '57,50', '2417'),
(202, 216, '41,00', '2418'),
(203, 217, '56,50', '2419'),
(204, 218, '43,50', '2420'),
(205, 219, '199,50', '2421'),
(206, 220, '9,00', '489'),
(207, 221, '156,00', '2422'),
(208, 222, '200,00', '2424'),
(209, 223, '16,00', '2425'),
(210, 224, '73,58', '2426'),
(211, 225, '16,00', '2425'),
(212, 225, '16,00', '2425'),
(213, 226, '73,58', '2426'),
(214, 227, '10,00', '2428'),
(215, 228, '35,75', '2429'),
(216, 229, '65,00', '2431'),
(217, 230, '47,50', '2432'),
(218, 231, '33,75', '2433'),
(219, 232, '51,00', '2440'),
(220, 233, '83,93', '2446'),
(221, 234, '45,00', '2445'),
(222, 235, '45,00', '2447'),
(223, 237, '45,00', '2452'),
(224, 238, '30,00', '2457'),
(225, 239, '200,00', '2458'),
(226, 240, '74,70', '2459'),
(227, 241, '61,00', '2461'),
(228, 242, '66,00', '2461'),
(229, 243, '8,00', '2465'),
(230, 244, '17,00', '2480'),
(231, 245, '70,00', '2482'),
(232, 248, '36,51', '2384'),
(233, 249, '130,50', '497'),
(234, 250, '62,50', '2485'),
(235, 251, '23,05', '2386'),
(236, 252, '131,05', '2489'),
(237, 253, '59,00', '2494'),
(238, 254, '4,95', '2495'),
(239, 255, '148,35', '2496'),
(240, 256, '7,00', '2497'),
(241, 257, '150,00', '2498'),
(242, 258, '42,50', '499'),
(243, 259, '124,50', '2501'),
(244, 260, '23,50', '2503'),
(245, 261, '65,70', '2505'),
(246, 262, '200,00', '2511'),
(247, 263, '116,99', '2512'),
(248, 264, '130,00', '2513'),
(249, 265, '169,00', '501'),
(250, 266, '105,00', '2516'),
(251, 267, '51,00', '2517'),
(252, 268, '36,00', '2518'),
(253, 269, '15,00', '2520'),
(254, 270, '48,50', '2521'),
(255, 271, '33,00', '2522'),
(256, 272, '11,00', '2523'),
(257, 273, '82,50', '2525'),
(258, 274, '37,50', '2526'),
(259, 275, '134,00', '2527'),
(260, 276, '37,00', '2528'),
(261, 278, '49,00', '2529'),
(262, 279, '51,50', '2531'),
(263, 280, '47,00', '2532'),
(264, 281, '200,00', '2533'),
(265, 282, '31,00', '2535'),
(266, 283, '85,00', '2537'),
(267, 284, '23,50', '2538'),
(268, 285, '12,50', '2542'),
(269, 286, '97,85', '2543'),
(270, 287, '9,00', '2544'),
(271, 288, '10,60', '2545'),
(272, 289, '26,00', '2546'),
(273, 290, '37,50', '2547'),
(274, 291, '160,00', '2550'),
(275, 292, '17,00', '2552'),
(276, 293, '82,30', '2553'),
(277, 294, '16,53', '2554'),
(278, 295, '47,30', '2555'),
(279, 296, '34,00', '2557'),
(280, 297, '30,20', '2558');

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

--
-- Contenu de la table `remb_ayant_droit`
--

INSERT INTO `remb_ayant_droit` (`idrembayantdroit`, `idayantdroit`, `prestation`, `date_vente`, `montant_prestation`, `part_ce`, `etat_facture`, `num_mouvement`) VALUES
(40, 123, 'Minots de l''Om + Kempo', '08-01-2015', '125', '93.75', 1, ''),
(41, 122, 'Les Minots de l''Om', '08-01-2015', '30', '22.5', 1, ''),
(42, 60, 'Championnat du Monde Xtrial', '09-01-2015', '20', '15', 1, ''),
(43, 106, 'leÃ§ons de natation', '14-01-2015', '61', '45.75', 1, ''),
(44, 113, 'centre equestre', '19-01-2015', '168', '126', 1, ''),
(45, 94, 'spectacle zenith', '19-01-2015', '52', '39', 1, ''),
(46, 99, 'forfait danse classique', '19-01-2015', '360', '270', 1, ''),
(47, 192, 'forfait ski', '21-01-2015', '36.50', '27.375', 1, ''),
(48, 123, 'EntrÃ©e parc', '23-01-2015', '113.40', '85.05', 1, ''),
(49, 155, 'DANSE HIP HOP', '25-01-2015', '101', '75.75', 1, ''),
(50, 83, 'voyage scolaire', '26-01-2015', '178.50', '133.875', 1, ''),
(51, 122, 'entrÃ©es parc', '09-02-2015', '120.40', '90.3', 1, ''),
(52, 123, 'voyage scolaire', '09-02-2015', '110', '82.5', 1, ''),
(53, 64, 'sortie ski', '11-02-2015', '43', '32.25', 1, ''),
(54, 157, 'match de hand', '11-02-2015', '25', '18.75', 1, ''),
(55, 86, 'CinÃ©ma (Invisible)', '12-02-2015', '9', '6.75', 1, ''),
(56, 97, 'cinema', '15-02-2015', '5.50', '4.125', 1, ''),
(57, 98, 'cinema', '15-02-2015', '5.50', '4.125', 1, ''),
(58, 101, 'fitness', '16-02-2015', '210', '157.5', 1, ''),
(59, 207, 'metamorphose', '18-02-2015', '70', '52.5', 1, ''),
(60, 71, 'CENTRE EQUESTRE', '18-02-2015', '60', '45', 1, ''),
(61, 206, 'CinÃ©ma + Bowling', '26-02-2015', '8', '6', 1, ''),
(62, 209, 'CinÃ©ma + Bowling', '26-02-2015', '9', '6.75', 1, ''),
(63, 83, 'forfait ski', '26-02-2015', '354.30', '186.125', 1, ''),
(64, 175, 'stage hand', '26-02-2015', '425', '318.75', 1, ''),
(65, 123, 'musÃ©e + marinland + petit train', '26-02-2015', '43', '32.25', 1, ''),
(66, 165, 'spectacles + cinÃ©', '26-02-2015', '101', '75.75', 1, ''),
(67, 122, 'MusÃ©e + Marinland + Petit Train', '26-02-2015', '39', '29.25', 1, ''),
(69, 85, 'centre equestre', '09-03-2015', '196.00', '147', 1, ''),
(70, 157, 'match de foot', '09-03-2015', '70.00', '52.5', 1, ''),
(74, 68, 'EQUITATION', '11-03-2015', '361', '270.75', 1, ''),
(75, 62, 'voyage scolaire + forfait ski', '15-03-2015', '155.00', '116.25', 1, ''),
(76, 163, 'assistante maternelle', '18-03-2015', '703.08', '320', 1, ''),
(77, 64, 'foot', '18-03-2015', '67.00', '50.25', 1, ''),
(78, 63, 'foot', '18-03-2015', '67.00', '50.25', 1, ''),
(79, 93, 'licence tennis', '18-03-2015', '70.00', '52.5', 1, ''),
(80, 81, 'permis de peche', '19-03-2015', '20.00', '15', 1, ''),
(81, 97, 'cinema', '19-03-2015', '18.00', '13.5', 1, ''),
(82, 98, 'cinema', '19-03-2015', '15.30', '11.475', 1, ''),
(83, 173, 'STAGE DE SKI', '19-03-2015', '150.00', '112.5', 1, ''),
(84, 151, 'stage de foot', '19-03-2015', '50.00', '37.5', 1, ''),
(85, 190, 'forfait ski', '19-03-2015', '71.50', '53.625', 1, ''),
(86, 122, 'foot', '19-03-2015', '25.00', '18.75', 1, ''),
(87, 123, 'foot', '19-03-2015', '25.00', '18.75', 1, ''),
(88, 115, 'cinema + forfait ski', '19-03-2015', '102.60', '76.95', 1, ''),
(89, 116, 'cinema + forfait ski', '19-03-2015', '71.60', '53.7', 1, ''),
(90, 117, 'forfait ski + cinema', '19-03-2015', '113.50', '85.125', 1, ''),
(91, 190, 'forfait ski', '19-03-2015', '52.00', '39', 1, ''),
(92, 72, 'permis de peche', '28-03-2015', '20.00', '15', 1, ''),
(93, 71, 'centre equestre', '28-03-2015', '60.00', '45', 1, ''),
(94, 103, 'royal kids', '28-03-2015', '8.83', '6.6225', 1, ''),
(95, 63, 'spectacle', '28-03-2015', '74.00', '55.5', 1, ''),
(96, 64, 'spectacle', '28-03-2015', '74.00', '55.5', 1, ''),
(97, 113, 'CENTRE EQUESTRE', '08-04-2015', '202.00', '151.5', 1, ''),
(98, 64, 'SKI', '08-04-2015', '43.00', '32.25', 1, ''),
(99, 141, 'SPECTACLE', '08-04-2015', '36.00', '27', 1, ''),
(100, 142, 'SPECTACLE', '08-04-2015', '36.00', '27', 1, ''),
(101, 79, 'CRECHE', '08-04-2015', '690.20', '320', 1, ''),
(103, 179, 'CRECHE', '08-04-2015', '403.92', '302.94', 1, ''),
(104, 77, 'PAJEMPLOI', '08-04-2015', '626.22', '320', 1, ''),
(105, 62, 'forfait ski', '15-04-2015', '80.80', '60.6', 1, ''),
(106, 190, 'voyage scolaire', '15-04-2015', '221.62', '166.215', 1, ''),
(107, 207, 'LASER LESCAR', '15-04-2015', '30.00', '22.5', 1, ''),
(108, 173, 'CENTRE EQUESTRE', '15-04-2015', '208.00', '156', 1, ''),
(109, 56, 'voyage scolaire', '22-04-2015', '250.00', '187.5', 1, ''),
(110, 62, 'zumba', '22-04-2015', '70.00', '52.5', 1, ''),
(111, 165, 'abonnement cinema', '24-04-2015', '35.50', '26.625', 1, ''),
(112, 187, 'musÃ©e + calicÃ©o', '27-04-2015', '47.00', '35.25', 1, ''),
(113, 188, 'musÃ©e + caliceo', '27-04-2015', '47.00', '35.25', 1, ''),
(114, 60, 'centre social', '27-04-2015', '122.00', '91.5', 1, ''),
(116, 207, 'SPECTACLE', '27-04-2015', '65.00', '48.75', 1, ''),
(117, 61, 'ski', '27-04-2015', '42.25', '31.6875', 1, ''),
(118, 62, 'ski', '27-04-2015', '42.25', '31.6875', 1, ''),
(119, 122, 'CENTRE DE LOISIRS ', '05-05-2015', '30.15', '22.6125', 1, ''),
(120, 123, 'CENTRE DE LOISIRS', '05-05-2015', '30.15', '7.7', 1, ''),
(121, 171, 'BASIC FIT', '05-05-2015', '369.75', '277.3125', 1, ''),
(122, 136, 'GOLF', '06-05-2015', '190.00', '142.5', 1, ''),
(123, 85, 'centre equestre', '07-05-2015', '208.00', '156', 1, ''),
(124, 145, 'ecole musicale', '13-05-2015', '259.70', '194.775', 1, ''),
(125, 185, 'carte cinema', '13-05-2015', '65.50', '49.125', 1, ''),
(126, 155, 'voyage scolaire', '15-05-2015', '221.62', '166.215', 1, ''),
(127, 106, 'puy du fou', '15-05-2015', '35.00', '26.25', 1, ''),
(128, 108, 'centre aere + paje emploi', '21-05-2015', '558.25', '320', 1, ''),
(129, 109, 'centre aere + paje emploi', '21-05-2015', '565.64', '320', 1, ''),
(130, 140, 'voyage scolaire', '21-05-2015', '251.00', '188.25', 1, ''),
(131, 176, 'cinÃ©ma + chlorofil + piscine', '26-05-2015', '76.60', '57.45', 1, ''),
(132, 177, 'cinÃ©ma + chlorofil + piscine', '26-05-2015', '66.6', '49.95', 1, ''),
(133, 58, 'gardereie', '26-05-2015', '31.28', '23.46', 1, ''),
(134, 189, 'carte cinema', '26-05-2015', '65.00', '48.75', 1, ''),
(135, 155, 'spectacle', '26-05-2015', '50.00', '37.5', 1, ''),
(136, 111, 'zoo', '03-06-2015', '7.00', '5.25', 1, ''),
(138, 110, 'zoo', '03-06-2015', '14.00', '10.5', 1, ''),
(139, 87, 'FOOT', '04-06-2015', '85.00', '63.75', 1, ''),
(140, 138, 'ferme equestre', '05-06-2015', '426.00', '319.5', 1, ''),
(141, 208, 'ski + zoo', '05-06-2015', '255.25', '191.4375', 1, ''),
(142, 71, 'centre equestre', '05-06-2015', '60.00', '45', 1, ''),
(143, 196, 'surf', '05-06-2015', '610.00', '320', 1, ''),
(144, 214, 'PAJE EMPLOI', '05-06-2015', '1936.28', '320.00', 1, ''),
(145, 73, 'piscine + cinÃ©ma + leÃ§ons de natation', '05-06-2015', '210.50', '157.875', 1, ''),
(146, 68, 'equitation', '10-06-2015', '480.00', '49.25', 1, ''),
(147, 165, 'voyage scolaire', '10-06-2015', '100.00', '75', 1, ''),
(148, 85, 'centre equestre', '10-06-2015', '249.00', '17', 1, ''),
(149, 160, 'Gym', '13-06-2015', '56', '42', 1, ''),
(150, 155, 'piscine', '18-06-2015', '34.10', '25.575', 1, ''),
(151, 71, 'centre equestre', '19-06-2015', '88.00', '66', 1, ''),
(152, 89, 'sortie scolaire', '22-06-2015', '75.00', '56.25', 1, ''),
(153, 87, 'sortie scolaire', '22-06-2015', '75.00', '56.25', 1, ''),
(154, 86, 'CinÃ©ma ', '22-06-2015', '27', '20.25', 1, ''),
(155, 64, 'SPECTACLES', '25-06-2015', '115.00', '86.25', 1, ''),
(156, 63, 'SPECTACLES', '25-06-2015', '115.00', '86.25', 1, ''),
(157, 115, 'CINEMA', '25-06-2015', '4.50', '3.375', 1, ''),
(158, 117, 'VOYAGE SCOLAIRE', '25-06-2015', '390.00', '234.875', 1, ''),
(159, 116, 'CINEMA', '25-06-2015', '4.50', '3.375', 1, ''),
(160, 92, 'VOYAGE SCOLAIRE', '02-07-2015', '251.00', '188.25', 1, ''),
(161, 104, 'PAJE EMPLOI', '02-07-2015', '3216.55', '320', 1, ''),
(162, 56, 'futuroscope', '05-07-2015', '32.00', '24', 1, ''),
(163, 57, 'futuroscope', '05-07-2015', '32.00', '24', 1, ''),
(164, 207, 'MÃ‰TAMORPHOSE + CINEMA', '10-07-2015', '102.70', '77.025', 1, ''),
(165, 188, 'VOYAGE SCOLAIRE', '10-07-2015', '250.00', '187.5', 1, ''),
(166, 181, 'lâ€™Ã®le aux enfants', '14-07-2015', '311.35', '233.5125', 1, ''),
(167, 192, ' ecole ski nautique', '14-07-2015', '40.00', '30', 1, ''),
(168, 88, 'colonies de vacances', '15-07-2015', '180.00', '135', 1, ''),
(169, 82, 'licence', '16-07-2015', '170.00', '127.5', 1, ''),
(170, 193, 'tennis', '16-07-2015', '16.00', '12', 1, ''),
(171, 151, 'licence foot', '25-07-2015', '180.00', '135', 1, ''),
(172, 206, 'Aquarium / Zoo / Loc VÃ©lo / Acrobranches', '26-07-2015', '91', '68.25', 1, ''),
(173, 97, 'carte cinÃ©ma + cinema', '26-07-2015', '41.15', '30.8625', 1, ''),
(174, 98, 'CINÃ‰MA + caliceo', '26-07-2015', '41.15', '30.8625', 1, ''),
(175, 122, 'CENTRE DE LOISIRS', '27-07-2015', '53.00', '39.75', 1, ''),
(176, 103, 'centre aÃ©rÃ©', '31-07-2015', '73.00', '54.75', 1, ''),
(177, 122, 'centre aÃ©rÃ©', '04-08-2015', '91.65', '68.7375', 1, ''),
(178, 58, 'CALICEO', '22-08-2015', '30.00', '22.5', 1, ''),
(179, 207, 'CINÃ‰MA + VISITE', '22-08-2015', '17.80', '13.35', 1, ''),
(180, 147, 'PISCINE + BAINS DU ROCHER', '22-08-2015', '41.00', '30.75', 1, ''),
(181, 92, 'CANOÃ‹ + VISITES', '22-08-2015', '48.75', '36.5625', 1, ''),
(182, 93, 'CANOÃ‹ + VISITE', '22-08-2015', '48.75', '36.5625', 1, ''),
(183, 212, 'CINÃ‰MA+ ZOO + COURSE LANDAISE', '22-08-2015', '34.00', '25.5', 1, ''),
(184, 97, 'LASER', '22-08-2015', '22.50', '16.875', 1, ''),
(185, 98, 'LASER', '22-08-2015', '22.50', '16.875', 1, ''),
(186, 73, 'centre de vacances', '28-08-2015', '44.40', '33.3', 1, ''),
(187, 157, 'LICENCE FOOT + CINEMA', '01-09-2015', '86.00', '64.5', 1, ''),
(188, 93, 'camp d''Ã©tÃ© basket', '01-09-2015', '250.00', '187.5', 1, ''),
(189, 146, 'zoo', '01-09-2015', '12', '9', 1, ''),
(190, 147, 'zoo', '01-09-2015', '12', '9', 1, ''),
(191, 64, 'licence', '01-09-2015', '70.00', '52.5', 1, ''),
(192, 94, 'licence', '01-09-2015', '80.00', '60', 1, ''),
(193, 122, 'cours de natation', '01-09-2015', '140.00', '28.1', 1, ''),
(195, 61, 'visites touristiques', '02-09-2015', '85.30', '63.975', 1, ''),
(196, 118, 'ecole de musique', '04-09-2015', '250.00', '187.5', 1, ''),
(197, 161, 'CENTRE EQUESTRE', '12-09-2015', '135.00', '101.25', 1, ''),
(198, 60, 'licence karatÃ©', '12-09-2015', '165.00', '123.75', 1, ''),
(199, 176, 'port aventura + cinema', '12-09-2015', '139.30', '104.475', 1, ''),
(200, 177, 'port aventura + cinema', '12-09-2015', '139.30', '104.475', 1, ''),
(201, 192, 'cinema', '12-09-2015', '10.50', '7.875', 1, ''),
(202, 165, 'foyer des jeunes', '12-09-2015', '113.00', '84.75', 1, ''),
(203, 103, 'centre aere', '12-09-2015', '73.00', '54.75', 1, ''),
(204, 190, 'licence basket', '12-09-2015', '75.00', '56.25', 1, ''),
(205, 86, 'Cotisation ThaÃ¯ Boxing club', '20-09-2015', '150', '112.5', 1, ''),
(206, 192, 'licencetennis', '23-09-2015', '95.00', '71.25', 1, ''),
(207, 76, 'accueil de loisirs', '23-09-2015', '103.73', '77.7975', 1, ''),
(208, 178, 'Ã©cole de cirque', '23-09-2015', '235.00', '176.25', 1, ''),
(209, 204, 'licence foot + tennis', '23-09-2015', '165.00', '123.75', 1, ''),
(210, 193, 'TENNIS', '23-09-2015', '175.00', '131.25', 1, ''),
(212, 209, 'Licence Arts Martiaux + Aqua BÃ©arn', '25-09-2015', '169', '126.75', 1, ''),
(213, 206, 'Vasconiales + Aqua BÃ©arn + Centre de Loisirs', '25-09-2015', '132,95', '99', 1, ''),
(214, 191, 'Abonnement Etudiant MÃ©tamorphose', '29-09-2015', '360', '270', 1, ''),
(215, 67, 'equitation', '01-10-2015', '381.50', '286.125', 1, ''),
(216, 86, 'BEER LOVERS MARATHON', '03-10-2015', '65', '48.75', 1, ''),
(217, 139, 'ZUMBA', '05-10-2015', '198', '148.5', 1, ''),
(218, 140, 'ENTREES PARCS', '05-10-2015', '18', '13.5', 1, ''),
(219, 207, 'PLACES DIRTY DANCING', '05-10-2015', '55', '41.25', 1, ''),
(220, 100, 'PISCINE', '05-10-2015', '108', '81', 1, ''),
(222, 156, 'LICENCE FOOTBALL', '05-10-2015', '95', '71.25', 1, ''),
(223, 101, 'DANSE', '05-10-2015', '140', '105', 1, ''),
(224, 102, 'LICENCE FOOTBALL', '05-10-2015', '45', '33.75', 1, ''),
(225, 203, 'NATATION', '05-10-2015', '160', '120', 1, ''),
(226, 202, 'KARATE', '05-10-2015', '187', '140.25', 1, ''),
(227, 71, 'EQUITATION', '05-10-2015', '60', '45', 1, ''),
(228, 173, 'COURS ZUMBA', '05-10-2015', '180', '51.5', 1, ''),
(229, 76, 'DANSE', '05-10-2015', '300', '225', 1, ''),
(230, 187, 'BALADE EN MER', '05-10-2015', '20', '15', 1, ''),
(231, 188, 'LICENCE BASKET', '05-10-2015', '95', '71.25', 1, ''),
(232, 128, 'LICENCE BASKET', '05-10-2015', '20', '15', 1, ''),
(233, 129, 'LICENCE BASKET', '05-10-2015', '20', '15', 1, ''),
(234, 130, 'LICENCE FOOTBALL', '05-10-2015', '20', '15', 1, ''),
(236, 116, 'CENTRE LOISIRS', '05-10-2015', '410', '262.925', 1, ''),
(238, 71, 'EQUITATION', '06-10-2015', '75', '49', 1, ''),
(239, 158, 'COURS PIIANO', '06-10-2015', '380', '285', 1, ''),
(240, 159, 'COURS PIANO', '06-10-2015', '348', '261', 1, ''),
(241, 99, 'COURS DANSE', '06-10-2015', '270', '35', 1, ''),
(243, 174, 'LICENCE BASKET', '06-10-2015', '60', '45', 1, ''),
(244, 176, 'TENNIS + PISCINE', '15-10-2015', '133', '99.75', 1, ''),
(245, 177, 'LICENCE NATATION', '15-10-2015', '160', '120', 1, ''),
(246, 181, 'CRECHE', '15-10-2015', '64.05', '48.0375', 1, ''),
(247, 81, 'LICENCE BASKET', '15-10-2015', '127', '95.25', 1, ''),
(248, 146, 'GYM', '15-10-2015', '90', '67.5', 1, ''),
(249, 209, 'Stage de judo', '21-10-2015', '65', '48.75', 1, ''),
(250, 206, 'Centre aÃ©rÃ© AoÃ»t', '21-10-2015', '70,95', '52.5', 1, ''),
(251, 56, 'LICENCE', '24-10-2015', '100', '75', 1, ''),
(252, 103, 'Parc loisir ', '24-10-2015', '65', '48.75', 1, ''),
(253, 148, 'GYM + COURS PIANO', '24-10-2015', '449', '320', 1, ''),
(254, 113, 'COURS EQUITATION', '24-10-2015', '223', '42.5', 1, ''),
(255, 200, 'SOUTIEN SCOLAIRE', '24-10-2015', '780', '320', 1, ''),
(256, 57, 'laser quest', '24-10-2015', '81', '60.75', 1, ''),
(257, 146, 'CINEMA', '27-10-2015', '32.1', '24.075', 1, ''),
(258, 97, 'CINEMA', '27-10-2015', '48', '36', 1, ''),
(259, 98, 'CINEMA', '27-10-2015', '48', '36', 1, ''),
(260, 176, 'LICENCE BASKET', '27-10-2015', '60', '43.325', 1, ''),
(261, 177, 'piscine', '27-10-2015', '54.8', '30.575', 1, ''),
(262, 193, 'TENNIS', '27-10-2015', '16', '12', 1, ''),
(263, 141, 'Licence FOOT', '31-10-2015', '45', '33.75', 1, ''),
(264, 89, 'ENTREES PARC', '10-11-2015', '26', '19.5', 1, ''),
(266, 115, 'Ã©cole de voile', '16-11-2015', '270.00', '202.5', 1, ''),
(267, 115, 'Ã©cole de musique', '16-11-2015', '224.10', '37.175', 1, ''),
(268, 89, 'ACCUEIL DE LOISIRS', '16-11-2015', '41.40', '31.05', 1, ''),
(269, 87, 'ACCUEIL DE LOISIRS', '16-11-2015', '33.00', '24.75', 1, ''),
(270, 144, 'Spectacles, entrÃ©es parcs, ...', '19-11-2015', '170,70', '127.5', 1, ''),
(271, 143, 'Spectacles, entrÃ©es parcs, ...', '19-11-2015', '151,70', '113.25', 1, ''),
(272, 139, 'piscine', '21-11-2015', '161.30', '120.975', 1, ''),
(273, 76, 'centre de loisirs', '21-11-2015', '26.78', '17.2025', 1, ''),
(274, 114, 'centre equestre', '21-11-2015', '40.00', '30', 1, ''),
(276, 155, 'cinÃ©ma + piscine', '21-11-2015', '19.00', '14.25', 1, ''),
(277, 211, 'paje empoi', '21-11-2015', '290.40', '217.8', 1, ''),
(280, 152, 'centre social', '21-11-2015', '94.95', '71.2125', 1, ''),
(281, 57, 'ecole de natation + game show', '23-11-2015', '175.30', '131.475', 1, ''),
(282, 56, 'game show', '23-11-2015', '14', '10.5', 1, ''),
(283, 208, 'Centre de Loisirs', '25-11-2015', '176,15', '128.5625', 1, ''),
(284, 86, 'Licence USL Natation', '01-12-2015', '70', '52.5', 1, ''),
(285, 207, 'free bowl', '04-12-2015', '18.20', '13.65', 1, ''),
(286, 169, 'licence danse + zoo', '04-12-2015', '131.30', '98.475', 1, ''),
(287, 168, 'licence danse + zoo', '04-12-2015', '131.30', '98.475', 1, ''),
(288, 167, 'licence judo + royals  Kids + zoo', '04-12-2015', '278.30', '208.725', 1, ''),
(289, 159, 'licence hand', '04-12-2015', '62.00', '44', 1, ''),
(290, 94, 'SPECTACLE', '04-12-2015', '58.00', '43.5', 1, ''),
(291, 149, 'PARC ANIMALIER', '04-12-2015', '11.00', '8.25', 1, ''),
(292, 149, 'GARDERIE', '04-12-2015', '52.34', '39.255', 1, ''),
(293, 172, 'pajeemploi', '04-12-2015', '1238.92', '320', 1, ''),
(294, 187, 'basket + aquabearn', '04-12-2015', '50.00', '37.5', 1, ''),
(295, 188, 'basket + aquabearn', '04-12-2015', '50.00', '26', 1, ''),
(296, 146, 'Ecole de tennis + Pic du Midi', '08-12-2015', '329', '219.425', 1, ''),
(297, 147, 'Pic du Midi', '08-12-2015', '34.00', '25.5', 1, ''),
(298, 147, 'Ã©cole de tennis', '11-12-2015', '295.00', '221.25', 1, ''),
(299, 147, 'tennis de table', '11-12-2015', '197.00', '33.5', 1, ''),
(301, 165, 'foyer rural + spectacle', '14-12-2015', '162', '57.875', 1, ''),
(302, 86, 'spectacle', '14-12-2015', '99.80', '74.85', 1, ''),
(304, 57, 'spectacle', '14-12-2015', '69.30', '51.975', 1, ''),
(305, 211, 'Pajeemploi', '14-12-2015', '219', '102.2', 1, ''),
(306, 72, 'karting', '14-12-2015', '196', '147', 1, ''),
(307, 80, 'CINEMA', '16-12-2015', '55', '41.25', 1, ''),
(308, 100, 'piscine', '16-12-2015', '259.20', '194.4', 1, ''),
(309, 97, 'Rhianna + cinÃ©', '16-12-2015', '123.92', '92.94', 1, ''),
(310, 98, 'rhianna + cinÃ©ma', '16-12-2015', '126.12', '94.59', 1, ''),
(311, 81, 'basket + licence', '30-12-2015', '71.00', '53.25', 1, ''),
(312, 187, 'CALICEO + FOOT', '30-12-2015', '20.00', '15', 1, ''),
(313, 186, 'CALICEO + FOOT', '30-12-2015', '20.00', '15', 1, ''),
(314, 182, 'VOYAGE SCOLAIRE', '30-12-2015', '300.00', '225', 1, ''),
(315, 194, 'VOYAGE SCOLAIRE', '30-12-2015', '165.00', '123.75', 1, ''),
(316, 207, 'CINÃ‰MA + MUSCULATION', '30-12-2015', '81.00', '50.975', 1, ''),
(317, 189, 'SPECTACLE', '31-12-2015', '47.60', '35.7', 1, ''),
(319, 185, 'cirque de noel', '31-12-2015', '30.20', '22.65', 1, ''),
(320, 103, 'royal kids', '31-12-2015', '15.00', '11.25', 1, ''),
(321, 153, 'Pajemploi assitante maternelle', '23-11-2015', '2106,79', '320', 1, '');

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

--
-- Contenu de la table `remb_salarie`
--

INSERT INTO `remb_salarie` (`idrembsalarie`, `idsalarie`, `prestation`, `date_vente`, `montant_prestation`, `part_ce`, `etat_facture`, `num_mouvement`) VALUES
(48, 201, 'Abonnement annuel Basic-Fit', '07-01-2015', '370.80', '185.4', 1, ''),
(49, 66, 'Championnat Mondial Xtrial', '09-01-2015', '76', '38', 1, ''),
(50, 210, 'spectacle', '14-01-2015', '300', '150', 1, ''),
(51, 128, 'SKI', '17-01-2015', '106', '53', 1, ''),
(52, 144, 'cyclotourisme', '19-01-2015', '52', '26', 1, ''),
(53, 116, 'spectacle zenith', '19-01-2015', '48', '24', 1, ''),
(54, 173, 'platinium', '19-01-2015', '448', '200', 1, ''),
(55, 160, 'abonnement piscine', '19-01-2015', '235', '117.5', 1, ''),
(56, 69, 'spectacle', '21-01-2015', '44', '22', 1, ''),
(57, 238, 'forfait ski', '21-01-2015', '36.50', '18.25', 1, ''),
(58, 222, 'spectacle', '25-01-2015', '136', '68', 1, ''),
(59, 79, 'METAMORPHOSE', '25-01-2015', '332.50', '166.25', 1, ''),
(60, 171, 'BOWLING', '25-01-2015', '35', '17.5', 1, ''),
(61, 178, 'match de hand', '11-02-2015', '50', '25', 1, ''),
(62, 106, 'CinÃ© (Invisible)', '12-02-2015', '9', '4.5', 1, ''),
(63, 95, 'license cyclo', '13-02-2015', '102.20', '51.1', 1, ''),
(64, 119, 'carte de peche + cinema', '15-02-2015', '92.30', '46.15', 1, ''),
(65, 171, 'BOWLING', '17-02-2015', '84', '42', 1, ''),
(66, 203, 'carte de peche', '18-02-2015', '145', '72.5', 1, ''),
(67, 109, 'FORFAIT SKI', '18-02-2015', '301.20', '150.6', 1, ''),
(68, 138, 'Thermes de SALIES', '18-02-2015', '22', '11', 1, ''),
(69, 238, 'fitness', '25-02-2015', '210', '105', 1, ''),
(70, 251, 'CinÃ©ma + Bowling', '26-02-2015', '9.50', '4.75', 1, ''),
(71, 139, 'musÃ©e + marinland', '26-02-2015', '87.80', '43.9', 1, ''),
(72, 150, 'license plongÃ©e', '26-02-2015', '293', '146.5', 1, ''),
(73, 70, 'fitness', '26-02-2015', '201', '100.5', 1, ''),
(74, 194, 'spectacle', '26-02-2015', '72', '36', 1, ''),
(75, 100, 'Forfait Ski', '26-02-2015', '55.80', '27.9', 1, ''),
(76, 171, 'forfait ski', '27-02-2015', '103.80', '51.9', 1, ''),
(78, 178, 'match de foot', '09-03-2015', '140.00', '70', 1, ''),
(79, 171, 'PISCINE', '11-03-2015', '34.1', '17.05', 1, ''),
(80, 111, 'spectacle', '18-03-2015', '76.00', '38', 1, ''),
(81, 87, 'permis de peche', '18-03-2015', '73.00', '36.5', 1, ''),
(82, 69, 'foot', '18-03-2015', '134.00', '67', 1, ''),
(83, 184, 'foot', '18-03-2015', '81.50', '40.75', 1, ''),
(85, 183, 'foot', '18-03-2015', '81.50', '40.75', 1, ''),
(86, 133, 'ski', '18-03-2015', '82.00', '41', 1, ''),
(87, 98, 'permis de peche', '19-03-2015', '73', '36.5', 1, ''),
(88, 138, 'thermes de SALIES', '19-03-2015', '14.25', '7.125', 1, ''),
(89, 85, 'permis de peche', '19-03-2015', '95.00', '47.5', 1, ''),
(90, 230, 'ski + thalasso', '19-03-2015', '173.00', '86.5', 1, ''),
(91, 248, 'cinÃ©ma cgr', '19-03-2015', '67.90', '33.95', 1, ''),
(92, 137, 'forfait ski + cinema + aquarium', '19-03-2015', '192.80', '96.4', 1, ''),
(93, 230, 'forfait ski', '19-03-2015', '32.50', '16.25', 1, ''),
(94, 159, 'ecole de tennis', '19-03-2015', '190.00', '95', 1, ''),
(95, 145, 'metamorphose', '28-03-2015', '399.00', '199.5', 1, ''),
(96, 242, 'licence  plongÃ©e', '28-03-2015', '200.00', '100', 1, ''),
(98, 138, 'cinÃ©ma', '28-03-2015', '14.00', '7', 1, ''),
(100, 56, 'musÃ©e de la mer', '28-03-2015', '29.00', '14.5', 1, ''),
(101, 129, 'cinÃ©ma', '28-03-2015', '27.40', '13.7', 1, ''),
(102, 69, 'spectacle', '28-03-2015', '74', '37', 1, ''),
(103, 210, 'spectacle', '28-03-2015', '94.00', '47', 1, ''),
(105, 230, 'spectacle', '28-03-2015', '90.00', '45', 1, ''),
(106, 261, 'TOP 14', '08-04-2015', '80.00', '40', 1, ''),
(107, 155, 'SPECTACLE', '08-04-2015', '36.00', '18', 1, ''),
(108, 70, 'FITNESS', '08-04-2015', '210.00', '99.5', 1, ''),
(109, 212, 'DISNEYLAND', '08-04-2015', '326.98', '163.49', 1, ''),
(110, 139, 'CORRIDAS', '08-04-2015', '2604.00', '156.1', 1, ''),
(111, 109, 'licence moto', '15-04-2015', '190.00', '49.4', 1, ''),
(112, 113, 'FORFAIT SKI', '15-04-2015', '236.00', '118', 1, ''),
(113, 186, 'ECOLE DE DANSE', '15-04-2015', '96.00', '48', 1, ''),
(114, 103, 'fitness', '16-04-2015', '480.00', '200', 1, ''),
(115, 202, 'permis de peche', '16-04-2015', '123.00', '61.5', 1, ''),
(116, 95, 'rugby', '22-04-2015', '24.00', '12', 1, ''),
(117, 220, 'licence + musÃ©e', '27-04-2015', '144.50', '72.25', 1, ''),
(118, 252, 'SPECTACLE + METAMORPHOSE', '27-04-2015', '145.00', '72.5', 1, ''),
(119, 177, 'cabane robinson', '29-04-2015', '250.00', '125', 1, ''),
(120, 78, 'cinema', '29-04-2015', '9.00', '4.5', 1, ''),
(121, 122, 'royal kids', '28-03-2015', '17.66', '8.83', 1, ''),
(122, 75, 'permis de peche', '30-04-2015', '73.00', '36.5', 1, ''),
(123, 123, 'SPECTACLE', '30-04-2015', '50.00', '25', 1, ''),
(125, 124, 'SPECTACLE', '30-04-2015', '50.00', '25', 1, ''),
(126, 90, 'SPECTACLE', '05-05-2015', '300.00', '150', 1, ''),
(127, 157, 'licence', '05-05-2015', '80.00', '40', 1, ''),
(128, 158, 'BAINS DE SECOURS', '05-05-2015', '70.00', '35', 1, ''),
(129, 182, 'METAMORPHOSE', '05-05-2015', '399.00', '199.5', 1, ''),
(130, 61, 'GRAND PRIX MOTO', '05-05-2015', '162.00', '81', 1, ''),
(131, 136, 'CENTRE Ã‰QUESTRE ABIDOS', '05-05-2015', '100.00', '50', 1, ''),
(132, 150, 'GOLF', '06-05-2015', '1190.00', '53.5', 1, ''),
(133, 95, 'RUGBY', '11-05-2015', '24.00', '12', 1, ''),
(134, 125, 'puy du fou', '15-05-2015', '98.00', '49', 1, ''),
(135, 69, 'SPECTACLE', '21-05-2015', '59.00', '29.5', 1, ''),
(136, 61, 'grand prix moto', '21-05-2015', '119.00', '59.5', 1, ''),
(137, 102, 'permis de peche', '26-05-2015', '73.00', '36.5', 1, ''),
(138, 171, 'spectacle', '26-05-2015', '100.00', '50', 1, ''),
(139, 184, 'foot', '27-05-2015', '143.50', '71.75', 1, ''),
(140, 183, 'foot', '27-05-2015', '143.50', '71.75', 1, ''),
(141, 65, 'caliceo', '27-05-2015', '30.00', '15', 1, ''),
(143, 138, 'THERMES DE SALIES', '27-05-2015', '19.00', '9.5', 1, ''),
(144, 144, 'corrida', '29-05-2015', '96', '48', 1, ''),
(146, 93, 'permis de peche', '04-06-2015', '73.00', '36.5', 1, ''),
(148, 107, 'FOOT', '04-06-2015', '85.00', '42.5', 1, ''),
(149, 259, 'ski + zoo', '05-06-2015', '231.95', '115.975', 1, ''),
(150, 74, 'SPECTACLE', '05-06-2015', '296.90', '148.45', 1, ''),
(151, 95, 'abonnement section paloise', '10-06-2015', '259.00', '124.9', 1, ''),
(152, 148, 'NPY', '15-06-2015', '101.00', '50.5', 1, ''),
(153, 181, 'permis de peche', '18-06-2015', '95.00', '47.5', 1, ''),
(154, 178, 'SPECTACLE', '22-06-2015', '50.00', '25', 1, ''),
(155, 106, 'CinÃ©ma ', '22-06-2015', '27', '13.5', 1, ''),
(156, 254, 'cinema', '25-06-2015', '39.40', '19.7', 1, ''),
(157, 69, 'SPECTACLES', '25-06-2015', '115.00', '44.5', 1, ''),
(158, 137, 'PISCINE + VISITES SITES', '25-06-2015', '226.50', '103.6', 1, ''),
(159, 175, 'PROMENADES BATEAU ', '01-07-2015', '45.00', '22.5', 1, ''),
(160, 225, 'cinÃ©ma + spectacle', '02-07-2015', '104.60', '52.3', 1, ''),
(161, 116, 'permis de chasse', '03-07-2015', '147.16', '73.58', 1, ''),
(163, 57, 'METAMORPHOSE', '04-07-2015', '399.00', '199.5', 1, ''),
(164, 227, 'SPECTACLE', '03-07-2015', '94.00', '47', 1, ''),
(165, 58, 'futuroscpe', '05-07-2015', '64.00', '32', 1, ''),
(166, 106, 'Concert ACDC', '09-07-2015', '78.50', '39.25', 1, ''),
(167, 252, 'MÃ‰TAMORPHOSE + FREE BOWL', '10-07-2015', '101.00', '50.5', 1, ''),
(168, 115, 'permis de chasse', '14-07-2015', '147.16', '73.58', 1, ''),
(169, 128, 'spectacle + cinema', '14-07-2015', '102.00', '51', 1, ''),
(174, 134, 'visites musÃ©es + thÃ©atre', '15-07-2015', '103.50', '51.75', 1, ''),
(175, 107, 'SPECTACLE', '15-07-2015', '84.85', '42.425', 1, ''),
(176, 239, 'tennis', '16-07-2015', '26.00', '13', 1, ''),
(177, 248, 'SPECTACLE', '23-07-2015', '78.00', '39', 1, ''),
(178, 260, 'visites', '23-07-2015', '404.00', '200', 1, ''),
(179, 78, 'visites musÃ©es', '24-07-2015', '34.00', '17', 1, ''),
(180, 251, 'Aquarium / Zoo / Loc VÃ©lo', '26-07-2015', '156,00', '78', 1, ''),
(181, 100, 'visites touristiques', '27-07-2015', '66.00', '33', 1, ''),
(182, 111, 'PROMENADES BATEAU ', '27-07-2015', '150.00', '75', 1, ''),
(183, 73, 'concert + course landaise', '28-07-2015', '64.00', '32', 1, ''),
(184, 65, 'visites touristiques', '03-08-2015', '38.00', '19', 1, ''),
(185, 105, 'permis de chasse', '04-08-2015', '147.16', '73.58', 1, ''),
(186, 129, 'courses landaises + cinÃ©ma + zoo', '07-08-2015', '58.00', '29', 1, ''),
(187, 252, 'VISITES', '22-08-2015', '19.00', '9.5', 1, ''),
(188, 171, 'PISCINE', '22-08-2015', '34.10', '17.05', 1, ''),
(189, 265, 'SPECTACLE + CINEMA', '14-08-2015', '126.00', '63', 1, ''),
(190, 114, 'GOUFFRE DE PADIRAC + CANOES', '22-08-2015', '67.80', '33.9', 1, ''),
(191, 129, 'COURSE LANDAISE + ZOO + CINEMA', '22-08-2015', '58.00', '29', 1, ''),
(192, 148, 'LICENCE FOOT + CINEMA', '22-08-2015', '121.50', '60.75', 1, ''),
(193, 178, 'licence', '01-09-2015', '60.00', '30', 1, ''),
(194, 230, 'SPECTACLE', '01-09-2015', '69.00', '34.5', 1, ''),
(195, 90, 'visites touristiques', '02-09-2015', '133.00', '50', 1, ''),
(196, 224, 'visites + canoÃ©', '04-09-2015', '183.50', '91.75', 1, ''),
(197, 245, 'visites + cinema', '12-09-2015', '24.00', '12', 1, ''),
(198, 59, 'puy du fou', '12-09-2015', '132.00', '66', 1, ''),
(199, 66, 'walibi', '12-09-2015', '52.00', '26', 1, ''),
(200, 232, 'jet sensation glisse', '12-09-2015', '125.00', '62.5', 1, ''),
(201, 238, 'fitness club', '12-09-2015', '135.00', '67.5', 1, ''),
(202, 203, 'permis chasse + cartes', '12-09-2015', '178.86', '89.43', 1, ''),
(203, 175, 'permis de chasse + carte', '13-09-2015', '184.96', '92.48', 1, ''),
(204, 80, 'cine + visite', '14-09-2015', '46.60', '23.3', 1, ''),
(205, 246, 'golf', '14-09-2015', '956.60', '200', 1, ''),
(206, 256, 'karting', '14-09-2015', '40.00', '20', 1, ''),
(208, 207, 'visite + cesta punta', '14-09-2015', '108.00', '54', 1, ''),
(209, 144, 'abonnement section', '16-09-2015', '238.00', '119', 1, ''),
(211, 106, 'Cotisation ThaÃ¯ Boxing club', '20-09-2015', '300', '142.75', 1, ''),
(212, 238, 'vita liberte', '23-09-2015', '300.00', '9.25', 1, ''),
(213, 160, 'aquabike', '23-09-2015', '124.70', '62.35', 1, ''),
(214, 249, 'licence foot', '23-09-2015', '25.00', '12.5', 1, ''),
(215, 252, 'gym', '23-09-2015', '115.00', '57.5', 1, ''),
(216, 227, 'VISITES + CINÃ‰MA + SPECTACLES', '23-09-2015', '82.00', '41', 1, ''),
(217, 256, 'COURSE SUR PRAIRIE', '23-09-2015', '113.00', '56.5', 1, ''),
(218, 239, 'TENNIS', '23-09-2015', '87.00', '43.5', 1, ''),
(219, 206, 'mÃ©tamorphose', '23-09-2015', '399.00', '199.5', 1, ''),
(220, 251, 'Aqua BÃ©arn + Vasconiales ', '25-09-2015', '18', '9', 1, ''),
(221, 114, 'piscine', '01-10-2015', '312.00', '156', 1, ''),
(222, 152, 'equitation', '01-10-2015', '455.00', '200', 1, ''),
(225, 80, 'ILE AUX OISEAUX', '05-10-2015', '32', '16', 1, ''),
(226, 237, 'PERMIS CHASSE', '05-10-2015', '147.16', '73.58', 1, ''),
(227, 252, 'PLACES DIRTY DANCING', '05-10-2015', '110', '10', 1, ''),
(228, 184, 'PLACE FOOTBALL', '05-10-2015', '71.5', '35.75', 1, ''),
(229, 122, 'PACAP', '05-10-2015', '130', '65', 1, ''),
(230, 177, 'LICENCE FOOTBALL', '05-10-2015', '95', '47.5', 1, ''),
(231, 79, 'DANSE', '05-10-2015', '195', '33.75', 1, ''),
(232, 220, 'TENNIS', '05-10-2015', '102', '51', 1, ''),
(233, 202, 'PERMIS CHASSE', '06-10-2015', '167.86', '83.93', 1, ''),
(237, 123, 'LICENCE RUGBY', '15-10-2015', '90', '45', 1, ''),
(238, 136, 'COURS EQUITATION', '24-10-2015', '60', '30', 1, ''),
(239, 247, 'GOLF + KARATE', '24-10-2015', '405.8', '200', 1, ''),
(240, 262, 'licence foot + cinÃ©ma', '24-10-2015', '149.4', '74.7', 1, ''),
(242, 255, 'CINEMA', '27-10-2015', '132', '66', 1, ''),
(243, 239, 'TENNIS', '27-10-2015', '16', '8', 1, ''),
(244, 107, 'ENTREES PARC', '10-11-2015', '34', '17', 1, ''),
(245, 267, 'licence rugby', '16-11-2015', '140.00', '70', 1, ''),
(248, 212, 'PARC ASTERIX', '16-11-2015', '318', '36.51', 1, ''),
(249, 209, 'Abonnement Platinium', '19-11-2015', '261', '130.5', 1, ''),
(250, 111, 'yoga', '21-11-2015', '125.00', '62.5', 1, ''),
(251, 148, 'cinÃ©ma + aquarium', '21-11-2015', '46.10', '23.05', 1, ''),
(252, 117, 'cinÃ©ma+canoÃ« + mÃ©tamorphose', '21-11-2015', '262.10', '131.05', 1, ''),
(253, 128, 'spectacle + abonnement', '21-11-2015', '118,40', '59', 1, ''),
(254, 87, 'parc ours', '21-11-2015', '9.90', '4.95', 1, ''),
(255, 94, 'natation + inscriptions', '22-11-2015', '296.70', '148.35', 1, ''),
(256, 58, 'game show', '23-11-2015', '14.00', '7', 1, ''),
(257, 80, 'mÃ©tamorphose', '23-11-2015', '300.00', '150', 1, ''),
(258, 259, 'MusÃ©e, Squash, cinÃ©, zoo, ...', '25-11-2015', '85,45', '42.5', 1, ''),
(259, 211, 'METAMORPHOSE', '04-12-2015', '249.00', '124.5', 1, ''),
(261, 148, 'magic forme', '04-12-2015', '170.00', '65.7', 1, ''),
(262, 205, 'METAMORPHOSE', '04-12-2015', '665.00', '200', 1, ''),
(263, 127, 'squash+ cinÃ© +golf +,,,,,', '04-12-2015', '233.97', '116.985', 1, ''),
(264, 267, 'abonnement sport lescar', '04-12-2015', '260.00', '130', 1, ''),
(265, 236, 'Abonnement annuel Basic Fit II', '11-12-2015', '338,07', '169', 1, ''),
(266, 159, 'tennis de table', '11-12-2015', '297.00', '105', 1, ''),
(267, 262, 'Karting', '14-12-2015', '102', '51', 1, ''),
(268, 194, 'spectacle', '14-12-2015', '72', '36', 1, ''),
(269, 65, 'caliceo', '14-12-2015', '30', '15', 1, ''),
(270, 133, 'Ariegeoise + pÃªcherie + ferme aux bisons', '14-12-2015', '97', '48.5', 1, ''),
(271, 58, 'spectacle', '14-12-2015', '66', '33', 1, ''),
(272, 138, 'thermes', '14-12-2015', '22', '11', 1, ''),
(273, 71, 'Cotisation Boxe + abonnement cinÃ©ma', '14-12-2015', '165', '82.5', 1, ''),
(274, 175, 'Caliceo', '14-12-2015', '75', '37.5', 1, ''),
(275, 59, 'Corail hÃ©licoptÃ¨re', '14-12-2015', '520', '134', 1, ''),
(276, 128, 'licence + cinÃ©ma', '14-12-2015', '93.20', '37', 1, ''),
(278, 107, 'opÃ©ra', '14-12-2015', '98', '49', 1, ''),
(280, 223, 'concert', '16-12-2015', '94', '47', 1, ''),
(281, 241, 'tennis + surf', '16-12-2015', '498', '200', 1, ''),
(282, 236, 'concert', '16-12-2015', '112', '31', 1, ''),
(283, 149, 'Permis +ski', '16-12-2015', '170', '85', 1, ''),
(284, 245, 'gym', '16-12-2015', '47', '23.5', 1, ''),
(285, 98, 'basket', '30-12-2015', '25.00', '12.5', 1, ''),
(286, 189, 'PISCINE', '30-12-2015', '195.70', '97.85', 1, ''),
(287, 124, 'rugby', '30-12-2015', '18.00', '9', 1, ''),
(288, 175, 'cinema', '30-12-2015', '21.20', '10.6', 1, ''),
(289, 123, 'KARTING', '30-12-2015', '52.00', '26', 1, ''),
(290, 220, 'CALICEO + FOOT', '30-12-2015', '75.00', '37.5', 1, ''),
(291, 62, 'HAMMAM + CALICEO', '30-12-2015', '320.00', '160', 1, ''),
(292, 248, 'BAINS DU ROCHER', '30-12-2015', '34.00', '17', 1, ''),
(293, 65, 'CINÃ‰MA +SPECTACLES', '30-12-2015', '164.60', '82.3', 1, ''),
(294, 259, 'SQUASH', '30-12-2015', '36.00', '16.525', 1, ''),
(295, 222, 'SPECTACLES', '31-12-2015', '94.60', '47.3', 1, ''),
(296, 245, 'espace vital', '31-12-2015', '68.00', '34', 1, ''),
(297, 216, 'cirque de noel', '31-12-2015', '60.40', '30.2', 1, '');

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
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE `remise_banque_esp` (
  `idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
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
(56, '00010000', 1, 'ABADO', 'NICOLAS', '2, Route de Lacq', '', '64370', 'ARTHEZ DE BEARN', '05 59 38 47 75', '', '', '05/05/1985', '', '', '', 'Automaticien', '255 A', 'Mari&eacute;', 'CDI', 1, '185.5'),
(57, '00010002', 1, 'ABAJI', 'MOHAMMED', '7, All&eacute;e Van  Dyck', '', '64150', 'MOURENX', '', '06 44 27 33 69', 'mohammed.abaji@rexam.com', '25/03/1981', '', '', '', 'Planning', '270 A', '', 'CDI', 1, '0.5'),
(58, '00010224', 1, 'ADENIS', 'BERTRAND', '4, rue du Mar&eacute;chal Leclerc', '', '64150', 'MOURENX', '', '06 70 15 61 00', '', '17/11/1983', '', '', '', 'Automaticien', '240 B', '', 'CDI', 1, '128'),
(59, '00010003', 1, 'AIMAR', 'REMY', '9, rue Frida', '', '64150', 'MOURENX', '', '06 86 90 09 87', '', '02/01/1987', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '0'),
(60, '00010004', 1, 'AKHSASSI', 'FATIMA', '4, rue Voltaire', '', '64230', 'LESCAR', '05 59 81 26 34', '', 'fatima.akhassi@rexam.com', '27/01/1965', '', '', '', 'ComptabilitÃ©', 'Cadre', '', 'CDI', 1, '200'),
(61, '00010005', 1, 'ALBANEL', 'HERVE', '', '7 Chemin de Pipaoutou\r\n', '64230', 'MOMAS', '05 59 33 87 48', '', '', '27/01/1969', '', '', '', 'Conducteur rÃ©gleur', '215  E', '', 'CDI', 1, '59.5'),
(62, '00010200', 2, 'ALCANTARA', 'BEATRICE', '2, Lot Communal', 'Lannem?nia', '64190', ' CASTETBON', '', '06 77 08 06 14', 'beatrice.alcantara@rexam.com', '30/10/1964', '', '', '', 'Personnel', '255 C', '', 'CDI', 1, '40'),
(63, '00010006', 1, 'ALCETEGARAY ', 'DANIEL', 'Bourg', '', '64190', 'ANGOUS', '05 59 66 03 91', '', '', '21/02/1966', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(64, '00010007', 1, 'ALLAMAN ', 'NICOLAS', '43, rue des PyrÃ©nÃ©es', '', '64190', 'GURS', '', '06 30 08 55 58', '', '06/04/1984', '', '', '', 'MÃ©canicien', '240 A', '', 'CDI', 1, '0'),
(65, '00010008', 1, 'ALVES ', 'PAUL', '158 Route du Bourg', '', '40700', 'MOMUY', '', '06 88 64 25 63', '', '05/08/1966', '', '', '', 'controleur', '215 A', '', 'CDI', 1, '68.7'),
(66, '00010009', 1, 'AMIS ', 'CHRISTIAN', '7 place du Gabizos', '', '64150', 'MOURENX', '', '06 74 55 60 76', '', '10/04/1974', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '136'),
(68, '00010011', 1, 'ARRICAU', 'ANDRE', 'quartier Augas', '', '64190', 'PRECHACQ-JOSBAIG', '05 59 88 03 68', '', 'pierette.arricau@orange.fr', '06/04/1967', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '0'),
(69, '00010013', 1, 'BALLESTEROS ', 'DIDIER', 'chemin de Bouhaben', 'Quartier Loupien', '64360', 'MONEIN', '05 59 21 43 88', '', '', '26/02/1964', '', '', '', 'Controleur', '190 F', '', 'CDI', 1, '0'),
(70, '00010014', 1, 'BAR ', 'GAETAN', '', '', '64300', 'SAULT DE NAVAILLES', '', '06 75 68 96 05', '', '29/01/1983', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '0'),
(71, '00010015', 1, 'BATBEDAT ', 'LAURENT', 'Chemin de LARTE', 'Quartier Castetarbe', '64300', 'ORTHEZ', '05 59 61 74 09', '', '', '24/08/1973', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '117.5'),
(72, '00010016', 1, 'BAYONA', 'GILLES', 'Avenue BRIAND', '', '64260', 'LOUVIE-JUZON', '05 59 05 85 82', '', '', '20/05/1962', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '200'),
(73, '00010017', 1, 'BAZIARD', 'DIDIER', '963 Chemin Matachot', '', '64300', 'ORTHEZ', '05 59 69 28 13', '', '', '10/02/1958', '', '', '', 'Controleur', '215 D', '', 'CDI', 1, '168'),
(74, '00010231', 1, 'BENITO', 'KEVIN', '3, rue du Pic du Midi d''Ossau', '', '64150', 'MOURENX', '', '06 52 68 91 23', '', '03/11/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '51.55'),
(75, '00010018', 1, 'BENZIN', 'REGIS', '5, Route d''Hagetaubin', 'Quartier N''Haux', '64370', 'ARTHEZ DE BEARN', '05 59 67 49 65', '', '', '01/12/1968', '', '', '', 'Outilleur', '215 G', '', 'CDI', 1, '0'),
(76, '00010019', 1, 'BERGEZ', 'ANDRE', '860, route de Sauveterre', '', '64300', 'LANNEPLAA', '05 59 67 03 51', '', '', '07/02/1956', '', '', '', 'Outilleur', '240 D', '', 'CDI', 1, '0'),
(77, '00010021', 1, 'BERGEZ', 'CEDRIC', '850, route de Sauveterre', '', '64300', 'LANNEPLAA', '', '06 78 67 34 30', '', '06/03/1982', '', '', '', 'opÃ©rateur', '215 A', '', 'CDI', 1, '175'),
(78, '00010020', 1, 'BERGEZ', 'JEAN', 'Quartier COOS', '', '64360', 'MONEIN', '', '06 82 53 67 95', '', '20/02/1953', '', '', '', 'HSE', '305 F', '', 'CDI', 1, '178.5'),
(79, '00010215', 1, 'BERTELOOT', 'KEVIN', '174, all?es des c?dres', 'Appt 4 B?t. A', '64150', 'MOURENX', '05 59 04 06 51', '', '', '10/09/1991', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '0'),
(80, '00010022', 3, 'BIDART', 'CHARLOTTE', '802, CHEMIN DE DUCLOS', '', '64370', 'POMPS', '', '06 29 02 26 64', '', '24/06/1988', '15-09-2014', '', '', 'controleur', '190 B', '', 'CDI', 1, '10.7'),
(81, '00010217', 1, 'BIDART', 'MARCEL', 'Quartier Camou', '', '64190', 'PRECHACQ-JOSBAIG', '', '06 30 81 43 46', 'marcel.bidart@neuf.fr', '25/01/1969', '', '', '', 'MÃ©canicien', '215 B', '', 'CDI', 1, '0'),
(82, '00010238', 1, 'BIDART', 'MICKAEL', '7 RUE DE L ESCOU', '', '64400', 'GOES', '', '06 09-36-17-61', 'mickael.bidart@live.fr', '27/09/1991', '', '', '', 'OpÃ©rateur', '190 c', '', 'CDI', 1, '0'),
(83, '00010023', 1, 'BLEIN', 'VINCENT', '304, Route de PAU', 'Quartier Soarns', '64300', 'ORTHEZ', '05 59 69 44 41', '', '', '22/03/1974', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(84, '00010024', 1, 'BLOEMZAAD ', 'DANIEL', '16, rue des Edelweiss', '', '64360', 'MONEIN', '', '06 86 38 27 65', '', '20/05/1960', '', '', '', 'OpÃ©rateur', '215 F', '', 'CDI', 1, '200'),
(85, '00010233', 1, 'BONNINGUE ', 'VINCENT', '15, Route du Foirail', '', '64370', 'ARTHEZ DE BEARN', '', '06 37 87 05 25', '', '27/12/1979', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '152.5'),
(86, '00010025', 1, 'BORDATTO', 'SERGE', 'Quartier Augas et Lanot', '', '64190', 'PRECHACQ-JOSBAIG', '09 67 00 54 05', '', '', '20/09/1968', '', '', '', 'RÃ©gleur', '215 G', '', 'CDI', 1, '0'),
(87, '00010026', 1, 'BORDENAVE', 'MAX', '23, rue du Vieux Mont', '', '64300', 'MONT', '', '06 29 02 93 25', '', '21/02/1977', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '158.55'),
(88, '00010027', 1, 'BORDENEUVE', 'PATRICK', '24, Chemin du bois', '', '64400', 'SAINT-GOIN', '05 59 88 02 18', '', 'patrick.bordeneuve@wanadoo.fr', '21/07/1961', '', '', '', 'OpÃ©rateur', '215 E', '', 'CDI', 1, '0'),
(89, '00010198', 1, 'BOUCHET', 'GERARD', '21 bis, Les Epineraises ', '', '28250', 'LE MESNIL THOMAS', '', '06 79 47 01 85', 'gerard.bouchet@rexam.com', '04/11/1956', '', '', '', 'CTS', 'Cadre', '', 'CDI', 1, '200'),
(90, '00010028', 1, 'BOUDERLIQUE', 'DIDIER', 'Route d''UCHA', '', '64360', 'MONEIN', '05 59 21 44 52', '', '', '17/01/1959', '', '', '', 'Gestionnaire', '225 B', '', 'CDI', 1, '0'),
(91, '00010029', 1, 'BOURG', 'CHRISTOPHE', '13, cap de Lalanne', '', '64170', 'ARTIX', '', '06 66 16 08 52', '', '29/07/1971', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(93, '00010031', 1, 'BRACH', 'JULIEN', '12, chemin Peyrot', '', '64150', 'VIELLESEGURE', '', '06 25 48 08 03', '', '24/03/1984', '', '', '', 'OpÃ©rateur', '190 B', '', 'CDI', 1, '163.5'),
(94, '00010032', 1, 'BREGNIAS', ' JEAN MARC', 'Quartier Augas', '', '64190', 'PRECHACQ-JOSBAIG', '05 59 88 03 87', '', '', '03/06/1961', '', '', '', 'Outilleur', '255 D', '', 'CDI', 1, '51.65'),
(95, '00010036', 1, 'BRUN', 'GILLES', '2, all&eacute;e du Hameau', '', '64320', 'BIZANOS', '05 59 27 51 44', '', '', '21/03/1959', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '0'),
(96, '00010035', 1, 'BRUN', ' JEAN DENIS', 'Domaine du Sarrot - 18, Av Rauski', '', '64110', 'JURANCON', '05 59 27 88 01', '', 'jean-denis.brun@rexam.com', '12-02-2012', '', '', '', 'Directeur', 'Cadre', '', 'CDI', 1, '200'),
(97, '00010037', 1, 'BRUNE', 'MICHEL', '1, rue de la Carr?re', '', '64300', 'MASLACQ', '', '06 51 43 22 70', 'michel.brune@rexam.com', '23/09/1966', '', '', '', 'Chef de Poste', '305  E', '', 'CDI', 1, '200'),
(98, '00010038', 1, 'CABANE-CHRESTIA', 'CHRISTOPHE', 'Rue d''Aspe prolon&eacute;?e', 'Maison Stafania', '64400', 'OLORON SAINTE MARIE', '05 59 39 56 48', '', '', '28/10/1973', '', '', '', 'OpÃ©rateur', '215 C', '', 'CDI', 1, '151'),
(99, '00010239', 1, 'CABANNE ', 'JOSETTE', '324, chemin Pedelahore', '', '64170', 'ARTIX', '', '06 83 74 58 32', '', '14/04/1964', '', '', '', 'Controleur', '190  B', '', 'CDI', 1, '200'),
(100, '00010039', 1, 'CALVO ', 'MICHEL', '5, rue Marc Antoine de No&eacute;', '', '64230', 'LESCAR', '05 59 62 97 26', '', '', '18/02/1961', '', '', '', 'RÃ©gleur', '215 D', '', 'CDI', 1, '139.1'),
(102, '00010041', 1, 'CAMPAGNE', 'FRANCK', '229, chemin de LARROUY', '', '64300', 'LAA-MONDRANS', '', '06 22 10 84 46', '', '02/05/1971', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '163.5'),
(103, '00010221', 1, 'CARDON', 'SEBASTIEN', 'Maison Plaie du Golf - Villa 1', '5, Impasse de la Plaine', '64140', 'BILLERE', '', '06 09 36 17 61', '', '18/11/1991', '', '', '', 'Stagiaire', '170 A', '', 'Stagiaire', 1, '0'),
(104, '00010248', 1, 'CHARDIN', 'SEBASTIEN', '10, rue de l''Embard?re', '', '64300', 'LENDRESSE', '', '06 18 74 51 02', '', '13/09/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(105, '00010039', 1, 'CARRASQUET', 'ANDRE', '29, place de la fontaine', '', '64150', 'VIELLESEGURE', '05 59 60 45 60', '', '', '07/12/1957', '', '', '', 'Outilleur', '255 B', '', 'CDI', 1, '126.42'),
(106, '00010197', 1, 'CASAIL', 'CHRISTOPHE', ' 2, Rue Claude Monet', '', '59229', 'TETEGHEN', '', '06 80 89 16 22', 'christophe.casail@rexam.com', '27/01/1965', '', '', '', 'CTS', 'Cadre', '', 'CDI', 1, '0'),
(107, '00010043', 1, 'CASAMAJOU', 'JEAN BERNARD', '26, rue St-Bart&eacute;l&eacute;my', 'BIXKAIAN                        ', '64130', 'CHERAUTE', '', '06 16 83 27 44', 'jean-bernard.casamajou@rexam.com', '10/09/1973', '', '', '', ' responsable automatisme', '305 F', '', 'CDI', 1, '49.075'),
(108, '00010040', 1, 'CASANOVA', 'FRANCK', '24, chemin des Meuniers', '1 Lotissement Denot', '64360', 'MONEIN', '', '06 80 11 94 60', '', '17/08/1982', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(109, '00010041', 1, 'CASSOU', 'OLIVIER', '573, chemin Lartigau', '', '64170', 'CESCAU', '05 59 53 90 34', '', '', '18/07/1970', '', '', '', 'Outilleur', '255 E', '', 'CDI', 1, '0'),
(110, '00010203', 3, 'CAZALERE', 'CHRISTELLE', '9, rue Bagn?res', '', '64360', 'ABOS', '', '06 70 04 93 28', 'christelle.cazalere@rexam.com', '09/03/1976', '', '', '', 'Personnel', '255 B', '', 'CDI', 1, '200'),
(111, '00010047', 1, 'CAZANAVE-HOURQUET', 'FERNAND', 'Quartier Lamarquette', '', '64360', 'LUCQ DE BEARN', '05 59 71 69 66', '', '', '03/03/1964', '28-07-2015', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '24.5'),
(113, '00010049', 1, 'CHAUSSADAS ', 'JEAN YVES', '1760, Route de Boneh?', '', '64370', 'MESPLEDE', '05 59 67 54 10', '', '', '06/12/1960', '', '', '', 'Contr?leur', '215 D', '', 'CDI', 1, '82'),
(114, '00010050', 1, 'CIOSSE ', 'BRUNO', '9, rue des lannes', '', '64150', 'MOURENX', '', '06 85 91 81 47', 'bruno.ciosse@sfr.fr', '12/12/1970', '', '', '', 'RÃ©gleur', '215 D', '', 'CDI', 1, '10.1'),
(115, '00010052', 1, 'CLAVE ', ' JEAN PAUL', 'ROUTE DU HAUT UCHA', '', '64360', 'MONEIN', '', '06 81 09 65 09', 'jeanpaul.clave@gmail.com', '27/11/1957', '', '', '', 'RÃ©gleur', '215 G', '', 'CDI', 1, '126.42'),
(116, '00010053', 1, 'CLAVERIE', 'THIERRY', '27, Chemin de Bertrand', '', '64150', 'NOGUERES', '05 59 71 71 30', '', '', '11/09/1972', '', '', '', 'OpÃ©rateur', '215 E', '', 'CDI', 1, '0'),
(117, '00010054', 1, 'CORNOUILLER', 'JULIEN', 'LES JARDINS DU LUZOUE  36 RUE DU LUZOUE PORTE 201', '', '64150', 'MOURENX', '', '06 79 62 76 09', '', '12/04/1986', '', '', '', 'MÃ©canicien', '240 B', '', 'CDI', 1, '68.95'),
(118, '00010055', 1, 'CORREIA', 'CHRISTOPHE', '19, rue de l''Ecole', '', '64300', 'MONT', '05 59 69 26 77', '', '', '14/09/1971', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(119, '00010057', 1, 'CUISINIER', 'BORIS', 'Route de LonÃ§on', '', '64450', 'BOURNOS', '05 59 33 82 25', '', '', '27/10/1973', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '153.85'),
(120, '00010058', 1, 'DA FONSECA', 'JOSE', 'Camin de la Crotz de Lopin', '', '64150', 'SAUVELADE', '', '06 15 15 40 71', '', '11/11/1975', '', '', '', 'Automaticien', '215 B', '', 'CDI', 1, '0'),
(121, '00010059', 1, 'DA SILVA', 'JOSE', 'chemin de l''Ecole', '', '64150', 'SAUVELADE', '05 59 67 68 32', '', '', '15/08/1973', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(122, '00010060', 1, 'DANTEIN', 'YANNICK', '4, rue Jean Jaures', '', '64800', 'COARRAZE', '', '06 37 88 95 99', '', '16/10/1981', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '126.17'),
(123, '00010229', 1, 'DARRACQ', 'ADRIEN', '570, chemin d?partemental 31', '', '64300', 'LABEYRIE', '05 59 67 58 96', '', '', '18/08/1997', '', '', '', 'Stagiaire', '170 A', '', 'CDI', 1, '104'),
(124, '00010061', 1, 'DARRACQ', 'CHRISTOPHE', '570, chemin d&eacute;partemental 31', '', '64300', 'LABEYRIE', '05 59 67 58 96', '', 'christophe.darracq@rexam.com', '17/10/1970', '', '', '', 'Resp. Outil', '305 E', '', 'CDI', 1, '166'),
(125, '00010062', 1, 'DARRACQ', 'FREDERIC', '34, chemin de Talabot', '', '40700', 'BEYRIES', '', '06 85 88 15 59', '', '16/08/1972', '', '', '', 'Automaticien', '255 E', '', 'CDI', 1, '151'),
(126, '00010064', 1, 'DARIGUELONGUE', 'CHRISTOPHE', '23, chemin Hia de pere', '', '64300', 'BIRON', '05 59 69 93 77', '', '', '17/05/1979', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(127, '00010206', 1, 'DATHY', 'FRANCK', '8, avenue Marguerite de Navarre', '', '64230', 'LESCAR', '05 59 77 47 20', '', 'franck.dathy@rexam.com', '07/04/1977', '', '', '', 'Resp. Qual', 'Cadre', '', 'CDI', 1, '83.015'),
(128, '00010065', 1, 'DAUBA ', 'BAPTISTE', '35, Chemin du Bosc', '', '64370', 'ARTHEZ DE BEARN', '', '06 77 47 24 00', 'baptiste.dauba@hotmail.fr', '02/02/1986', '11-07-2008', '', '', 'Automaticien', '255 A', '', 'CDI', 1, '0'),
(129, '00010066', 1, 'DAUBAS', 'MICHEL', 'Chemine Hourquebie', '', '64300', 'SARPOURENX', '05 47 06 07 48', '06-82-69-20-72', '', '07/01/1972', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '128.3'),
(130, '00010067', 1, 'DE MIGUEL', 'FELIX', 'Lotissement Latch?re', '', '64130', 'GARENDEIN', '05 59 28 21 94', '', '', '12/12/1955', '', '', '', 'Outilleur', '255 C', '', 'CDI', 1, '0'),
(131, '00010068', 1, 'DE MIJOLLA ', 'HUBERT', '2776, Coteaux de Guindalos', '', '64110', 'JURANCON', '05 59 68 71 86', '', 'hubert.demijolla@rexam.com', '18/08/1956', '', '', '', 'Chef Projet', 'Cadre', '', 'CDI', 1, '200'),
(132, '00010069', 1, 'DECROUE ', 'DIDIER', '2, Cami Bieilh', '', '64170', 'LABASTIDE-CEZERACQ', '05 59 04 15 21', '', 'didier.decroue@rexam.com', '12/11/1968', '', '', '', 'Informaticien', 'Cadre', '', 'CDI', 1, '0'),
(133, '00010070', 1, 'DEL PIANTA ', 'ALEXANDRE', '12, rue du Castera', '', '64150', 'MOURENX', '05 59 71 69 74', '', '', '08/09/1962', '', '', '', 'Outilleur', '255 A', '', 'CDI', 1, '110.5'),
(134, '00010218', 1, 'DEPUYT ', 'BENOIT', '77, chemin de la Lande', '', '40290', 'MISSON', '', '06 43 30 50 51', 'benoit.depuyt@rexam.com', '14/07/1976', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '148.25'),
(136, '00010072', 1, 'DOLLE ', 'LAURENT', '80, Cemin de Treyti', '', '64370', 'HAGETAUBIN', '05 59 67 52 27', '', '', '21/10/1975', '', '', '', 'OpÃ©rateur', '190 E', '', 'CDI', 1, '120'),
(137, '00010073', 1, 'DRIVON ', 'HAROLD', '714, chemin Eslayas', '', '64300', 'CASTETIS', '', '06 03 87 83 72', 'harold.drivon@rexam.com', '01/01/1971', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '0'),
(138, '00010074', 1, 'DULAU ', 'EMMANUEL', '238, chemin d''Arrignan', '', '64300', 'SAINT GIRONS EN BEARN', '05 59 67 94 60', '', '', '12/12/1969', '', '', '', 'OpÃ©rateur', '190 A', '', 'CDI', 1, '154.375'),
(139, '00010077', 2, 'LAGRAULA-DUROU', 'SOPHIE', '50, route de Mimbaste', '', '40180', 'SAUGNACQ ET CAMBRAN', '', '06 86 96 49 60', 'sophie.lagraula@rexam.com', '11/06/1974', '', '', '', 'SecrÃ©taire', '270 A', '', 'CDI', 1, '0'),
(140, '00010078', 1, 'DUTILH', 'LILIAN', '10, rue du Luzoue', 'R&eacute;sidence le Luzoue', '64150', 'MOURENX', '05 59 60 14 11', '', '', '22/11/1968', '', '', '', 'rÃ©gleur', '215 F', '', 'CDI', 1, '200'),
(141, '00010079', 1, 'DUVIGNAU', 'PATRICE', '2, impasse des Marguerites', '', '64230', 'DENGUIN', '05 59 68 82 63', '', '', '15/08/1976', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(142, '00010080', 1, 'EL-KANDOUSSI', 'MOHAMED', '3, place du Gabizos', '', '64150', 'MOURENX', '', '06 50 72 20 80', '', '27/10/1965', '', '', '', 'Conducteur', '240 B', '', 'CDI', 1, '200'),
(144, '00010083', 1, 'ETCHEVERRY', 'JACQUES', '3, rue de l''Aygue-Longue', '', '64121', 'SERRES-CASTET', '05 59 33 11 40', '', '', '21/03/1954', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '7'),
(145, '00010084', 1, 'EUSEBIO', 'MANUEL', '58, Chemin Poublan', '', '64300', 'ARGAGNON', '', '06 22 48 00 60', 'manuel.eusebio@rexam.com', '20/10/1968', '', '', '', 'Resp. MÃ©canique', '305 C', '', 'CDI', 1, '0'),
(146, '00010214', 1, 'FERTOUTI', 'MUSTAPHA', '32, rue du Luzoue', '', '64150', 'MOURENX', '', '06 20 41 91 81', 'mustapha.fertouti@rexam.com', '19/07/1969', '', '', '', 'Exp?ditions', '225 A', '', 'CDI', 1, '200'),
(147, '00010085', 1, 'FOLIN', 'MICKAEL', '4, route de Puyet', '', '64370', 'ARTHEZ DE BEARN', '', '07 86 16 09 90', '', '19/06/1986', '', '', '', 'OpÃ©rateur', '190 E', '', 'CDI', 1, '200'),
(148, '00010087', 1, 'FONSECA', 'PHILIPPE', '39, domaine de la Ch?nerie', '', '64170', 'ARTIX', '', '06 77 88 90 68', '', '03/09/1983', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '0'),
(149, '00010088', 1, 'FOURNIER', 'DOMINIQUE', 'Quartier Pont du Joss', '', '64190', 'PRECHACQ-JOSBAIG', '', '06 83 09 23 30', 'dominique.fournier@rexam.com', '24/07/1963', '', '', '', 'Chef de Poste', '285 C', '', 'CDI', 1, '115'),
(150, '00010089', 1, 'FOURQUET', 'GILLES', 'Quartier des Yolettes', '', '64360', 'MONEIN', '05 59 21 41 26', '', 'gilles.fourquet@rexam.com', '01/05/1966', '', '', '', 'Resp. Prod', 'Cadre', '', 'CDI', 1, '0'),
(151, '00010090', 1, 'GALLARDO', 'FREDERIC', 'Route de Casteide-Candau', '', '64410', 'ARGET', '', '06 42 96 33 41', '', '14/11/1981', '', '', '', 'MÃ©canicien', '255 C', '', 'CDI', 1, '200'),
(152, '00010091', 1, 'GIACOMIN', 'JEAN-LOUIS', '70, Chemin de Lahonce', '', '40360', 'POMAREZ', '05 58 89 88 03', '', '', '15/11/1959', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '0'),
(153, '00010092', 1, 'GONCALVES NEIVA ', 'FREDERIC', 'Chemin des Ecoles', '', '64150', 'SAUVELADE', '05 59 67 30 46', '', '', '13/03/1979', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '0'),
(154, '00010093', 1, 'GRACIET ', 'PATRICK', '298, route de Lucq de B?arn', '', '64150', 'LAHOURCADE', '', '06 72 33 04 54', 'patrick.graciet@rexam.com', '12/06/1958', '', '', '', 'ExpÃ©ditions', '225 G', '', 'CDI', 1, '0'),
(155, '00010094', 1, 'GUION ', 'JEAN MARC', '64, Cami de la Houn', '', '64300', 'SAULT DE NAVAILLES', '', '06 84 65 18 70', 'jeanmarcguion@yahoo.fr', '04/12/1971', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '182'),
(156, '00010247', 1, 'GUYON ', 'MATTHIEU', '12, Rue des Pyr&eacute;n&eacute;es', '', '64230', 'DENGUIN', '', '06 16 99 64 70', '', '17/11/1981', '', '', '', 'OpÃ©rateur', '190 A', '', 'CDI', 1, '0'),
(157, '00010096', 1, 'HOSTENDIE', 'PATRICK', '6, Place du Pic d''Anie', 'R?sidence Les Arres d''Anie', '64150', 'MOURENX', '', '06 14 58 02 36', '', '07/05/1965', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '160'),
(158, '00010097', 1, 'HOUIS', ' JEAN FRANCOIS', '34, Av Mar&eacute;chal Joffre', '', '64150', 'MOURENX', '', '06 72 68 15 88', 'jeff964@hotmail.fr', '13/09/1978', '', '', '', 'Automaticien', '255 A', '', 'CDI', 1, '165'),
(159, '00010098', 1, 'HOURDILLE', 'THERESE', '14, rue de Bitete', '', '64400', 'OLORON SAINTE MARIE', '', '06 74 33 97 62', 'therese.hourdille@rexam.com', '11/12/1966', '', '', '', 'Magasin', '255 B', '', 'CDI', 1, '0'),
(160, '00010100', 1, 'HYGEN', 'DOMINIQUE', 'Quartier Camou', '', '64150', 'MOURENX-BOURG', '', '06 81 72 91 63', '', '22/01/1959', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '20.15'),
(161, '00010101', 1, 'JACKOWSKI', 'LIONEL', '380 Route de SAINT MEDARD', '', '64370', 'HAGETAUBIN', '0559672849', '06 85 46 11 88', 'lionel.jackowski@rexam.com', '27/01/1972', '', '', '', 'Chef de Poste', '285 B', '', 'CDI', 1, '200'),
(162, '00010102', 1, 'JAUREGUIBERRY ', 'BRUNO', '1715, chemin du Cami Sali&eacute;', '', '64710', 'LABASTIDE MONREJEAU', '', '06 87 91 22 78', '', '30/10/1974', '', '', '', 'mÃ©canicien', '240 C', '', 'CDI', 1, '0'),
(163, '00010103', 1, 'JIMENEZ ', 'FREDERIC', '3, rue du vieux lavoir', '', '64150', 'MOURENX', '', '06 98 26 48 41', '', '07/04/1969', '', '', '', 'Gestionnaire', '215 D', '', 'CDI', 1, '200'),
(164, '00010234', 1, 'JOUANNES ', 'MAXIMILIEN', '42, rue Bergou?', '', '64370', 'ARTHEZ DE BEARN', '', '06 72 70 26 61', '', '25/07/1990', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(165, '00010219', 3, 'JUNGAS ', 'CELINE', 'Quartier Ucha, Chemin Tauzy', '', '64300', 'MONEIN', '', '06 24 56 89 99', 'celine.jungas@rexam.com', '07/01/1983', '', '', '', 'Resp. HSE', 'Cadre', '', 'CDI', 1, '200'),
(166, '00010230', 3, 'KOCIS', 'SARAH', '23, rue Bernadotte', '', '64000', 'PAU', '', '06 68 83 42 42', 'sarah.kocis@rexam.com', '30/12/1983', '', '', '', 'RH', 'Cadre', '', 'CDI', 1, '200'),
(167, '00010105', 1, 'LABAT', 'FREDERIC', 'Chemin de la Campagne', '', '64190', 'SUSMIOU', '', '06 73 70 25 25', '', '24/10/1970', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(168, '00010106', 1, 'LABOURDETTE', 'PIERRE', 'Quartier Lafontan', '', '64410', 'ARZACQ', '05 59 04 57 12', '', '', '17/06/1954', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(169, '00010107', 1, 'LACABARATS  ', 'BERTRAND', '5, impasse des Pyr&eacute;n&eacute;es', '', '64300', 'MASLACQ', '', '06 07 51 32 50', '', '02/10/1982', '', '', '', 'OpÃ©rateur', '190 D', 'Salari&eacute; d&eacute;c&eacute;d&eacute;, ne pas supprimer sa fiche car sa fille a droit aux activit&eacute;s du CE jusqu''&agrave; l''&acirc;ge de 18 ans.', 'CDI', 1, '0'),
(170, '00010108', 1, 'LACABARATS  ', 'GILBERT', 'Route de Puyoo', '', '64270', 'SALIES DE BEARN', '', '06 84 96 88 13', '', '01/03/1958', '', '', '', 'Controleur', '215 A', '', 'CDI', 1, '200'),
(171, '00010109', 1, 'LACARRIEU-HAURAT ', 'JEAN PIERRE', '3, rue Lagrange', '', '64150', 'MOURENX', '05 59 60 21 34', '', '', '16/03/1973', '', '', '', 'OpÃ©rateur', '215 C', '', 'CDI', 1, '4.5'),
(172, '00010111', 1, 'LACOSTE', 'REMY', 'Bourg', '', '64870', 'ESCOUT', '', '06 30 88 38 36', '', '27/08/1966', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(173, '00010114', 1, 'LADAURADE ', 'FABIEN', '54, avenue du Tonkin', '', '64140', 'LONS', '', '06 24 67 12 30', '', '04/11/1985', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '0'),
(175, '00010116', 1, 'LAHORE-LAHITTE ', '  JEAN .MARC', 'Quartier Larincq', '', '64360', 'MONEIN', '05 59 04 25 39', '', '', '03/06/1965', '', '', '', 'Outilleur', '255 B', '', 'CDI', 1, '36.92'),
(176, '00010117', 1, 'LAMOTHE ', 'BRUNO', 'Le R&eacute;gent', 'Au Bourg', '40700', 'MANT', '05 58 79 23 53', '', '', '07/01/1967', '', '', '', 'Gestionnaire', '225 C', '', 'CDI', 1, '200'),
(177, '00010118', 1, 'LAMOURE-LABADIE ', 'MICHEL', '99, chemin Poey', '', '64170', 'CESCAU', '', '06 18 92 87 44', '', '12/04/1967', '', '', '', 'Outilleur', '240 B', '', 'CDI', 1, '27.5'),
(178, '00010119', 1, 'LAMOURET', 'JOEL', '819, route d''Arthez de B?arn', '', '64300', 'CASTETIS', '05 59 67 83 67', '', '', '24/06/1966', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '50'),
(179, '00010120', 1, 'LANOUE', 'LAURENT', '16, rue de la Bielle', '', '64190', 'DOGNEN', '', '06 82 67 33 25', 'laurent.lanoue@rexam.com', '23/03/1972', '', '', '', 'Magasin', '215 C', '', 'CDI', 1, '0'),
(180, '00010122', 1, 'LASSOURREILLE', 'ALEXANDRE', '49, rue Lapeyrere', '', '64300', 'ORTHEZ', '', '06 72 92 46 13', '', '30/08/1980', '', '', '', 'Gestionnaire', '215 E', '', 'CDI', 1, '200'),
(181, '00010123', 1, 'LAVALLARD ', 'CHRISTOPHE', '4, rue du vieux lavoir', '', '64150', 'MOURENX', '05 59 71 63 04', '', '', '27/05/1962', '', '', '', 'RÃ©gleur', '215 F', '', 'CDI', 1, '152.5'),
(182, '00010125', 1, 'LEHMANN ', 'GERARD', '28, Cote du Mouscar', '', '64110', 'ST FAUST', '', '06 03 10 08 49', '', '25/05/1962', '', '', '', 'MÃ©canicien', '240 B', '', 'CDI', 1, '0.5'),
(183, '00010126', 1, 'LOPEZ  ', 'ISMAEL', '91, rue Honor&eacute; de Balzac', '', '64170', 'ARTIX', '', '06 18 32 29 10', '', '20/09/1979', '', '', '', 'Gestionnaire', '225 B', '', 'CDI', 1, '87.5'),
(184, '00010127', 1, 'LOPEZ  ', 'OLIVIER', '1, rue de Lannes', '', '64150', 'MOURENX', '', '06 73 03 54 24', '', '06/09/1986', '', '', '', 'Automaticien', '240 C', '', 'CDI', 1, '51.75'),
(185, '00010246', 1, 'LORILLOT', 'MARIO', '5, Avenue Pasteur', '', '64150', 'MOURENX', '', '06 78 28 88 71', '', '16/01/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(186, '00010129', 1, 'LUBEREILH', 'ROGER', '3, impasse des vignes', 'Lotissement le Prince', '64170', 'ARTIX', '05 59 71 54 46', '', '', '19/05/1957', '', '', '', 'Outilleur', '255 C', '', 'CDI', 1, '152'),
(187, '00010130', 1, 'LUPIAC', 'CLAUDE', '3 rue de la Carrere', 'Quartier Os', '64150', 'OS MARSILLON', '05 59 60 29 28', '', 'lupiac.claude@neuf.fr', '24/12/1963', '', '', '', 'OpÃ©rateur', '215 E', '', 'CDI', 1, '200'),
(188, '00010131', 1, 'LUZIER', 'JOFFREY', '15, route de Bayonne', ' Appt. 64 R&eacute;s. Wellington', '64140', 'BILLERE', '', '06 60 77 97 96', '', '23/11/1975', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(189, '00010132', 1, 'MAIRAL', 'JULIEN', 'Chemin Deus Esquiots', '', '64360', 'PARBAYSE', '', '06 17 53 05 31', '', '13/02/1984', '', '', '', 'MÃ©canicien', '240 C', '', 'CDI', 1, '102.15'),
(190, '00010133', 1, 'MALABAT', 'MICHEL', '6, route de PAU', '', '64360', 'ABOS', '05 59 60 03 16', '', '', '04/11/1964', '', '', '', 'Controleur', '190 C', '', 'CDI', 1, '200'),
(191, '00010134', 1, 'MARATRAT', 'AMANDINE', '4, impasse St Pierre', '', '64360', 'MONT', '', '06 40 94 70 87', 'amandu64@live.fr', '22/08/1988', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(192, '00010135', 1, 'MARLADOT', 'OLIVIER', 'Quartier Galoubet', 'Vieille Route de Castetarbe', '64300', 'ORTHEZ', '05 59 67 16 11', '', '', '06/01/1971', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(193, '00010228', 1, 'MARTET', 'BRICE', '7, rue de la cournere', '', '64150', 'os marsillon', '', '06 99 47 68 73', 'brice.40@hotmail', '31/07/1995', '01-09-2015', '', '', 'conducteur', '190A', '', 'cdi', 1, '200'),
(194, '00010137', 1, 'MARTINEZ', 'ALAIN', '15, rue du muguet', '', '64150', 'PARDIES', '', '06 37 52 81 75', '', '02/01/1961', '', '', '', 'ContrÃ´leur', '255 C', '', 'CDI', 1, '128'),
(195, '00010138', 1, 'MARTINS DE LIMA', 'PAUL', 'Rue Ingres', 'Lotissement Lous Mesples n &deg;1', '64170', 'ARTIX', '05 59 83 20 45', '', '', '18/06/1981', '', '', '', 'CONDUCTEUR REGLEUR', '215 B', '', 'CDI', 1, '0'),
(196, '00010232', 1, 'MARTINS DE LIMA', 'CHRISTOPHE', 'Rue Ingres', 'Lotissement Lous Mesples n&deg;1', '64170', 'ARTIX', '', '06 40 22 46 07', '', '15/08/1990', '', '', '', 'OpÃ©rateur', '190 B', '', 'CDI', 1, '200'),
(197, '00010139', 1, 'MASSE ', 'JORIS', 'Place St Pierre', 'Appt. 2', '64300', 'MONT', '', '06 73 64 78 52', '', '22/10/1985', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(198, '00010140', 1, 'MASSEY', 'YAN', '10, chemin Mirassou', '', '64150', 'LAGOR', '', '06 61 29 28 86', 'yanmassey@hotmail.com', '07/10/1980', '', '', '', 'Outilleur', '240 B', '', 'CDI', 1, '0'),
(199, '00010141', 1, 'MAURY', 'PHILIPPE', '67, rue Moncade', '', '64300', 'ORTHEZ', '', '06 10 67 76 17', '', '25/07/1963', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(200, '00010240', 2, 'MAZURIER', 'SYLVIE', '20, avenue de Saragosse', '', '64000', 'PAU', '', '06 18 65 49 49', '', '26/05/1967', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '100'),
(201, '00010243', 3, 'MICHE', 'GAELLE', 'Chemin d''Abos', '', '64360', 'PARBAYSE', '', '06 26 02 30 22', 'gaelle.miche@rexam.com', '22/04/1989', '', '', '', 'Contrat Pro RH', '170 A', '', 'Contrat Pro', 1, '14.6'),
(202, '00010144', 1, 'MILAGE  ', 'ANDRE', '1 LOTISSEMENT LE LUSSET', '', '64190', 'NAVARRENX', '05 59 38 68 46', '07- 81-04-93-58', '', '24/08/1960', '', '', '', 'Cariste', '170 G', '', 'CDI', 1, '54.57'),
(203, '00010143', 1, 'MILAGE  ', 'CHRISTIAN', 'Residence du Parc', 'Batiment B -Porte n?8', '64300', 'ORTHEZ', '05 59 69 14 54', '', '', '21/04/1951', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '38.07'),
(204, '00010143', 1, 'MOLENAT', 'STEPHANE', '7, chemin de Nogu&egrave;res', '', '64150', 'MOURENX BOURG', '', '06 98 28 08 31', 'molenat.stephane@gmail.com', '11/10/1984', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(205, '00010144', 1, 'MORRAL', 'JEREMIE', '142, chemin de Vergez', '', '64150', 'LAHOURCADE', '', '06 27 21 39 47', 'jeremie.morral@hotmail.fr', '26/03/1980', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '0'),
(206, '00010148', 1, 'MOURCEL', 'THIERRY', '7, rue St Vincent de Paul', '', '64150', 'MOURENX', '', '06 70 06 94 99', '', '02/06/1969', '', '', '', 'MÃ©canicien', '240 B', '', 'CDI', 1, '0.5'),
(207, '00010150', 1, 'MOUSQUES DIT CABANOT ', 'FREDERIC', '9, rue Bagn?res', '', '64360', 'ABOS', '', '06 32 36 61 12', '', '21/12/1979', '', '', '', 'Automaticien', '255 B', '', 'CDI', 1, '146'),
(208, '00010149', 1, 'MOUSQUES DIT CABANOT ', 'STEPHANE', '9, rue des Lannes', '', '64150', 'MOURENX', '05 59 60 40 58', '', '', '26/02/1974', '', '', '', 'RÃ©gleur', '215 F', '', 'CDI', 1, '0'),
(209, '00010227', 3, 'MOUZAT', 'MORGANE', '44, rue de Nogaro', '', '64000', 'PAU', '', '06 66 40 27 96', 'morgane.mouzat@rexam.com', '02/09/1987', '', '', '', 'Comptabilit?', '170 A', '', 'Contrat Pro', 1, '69.5'),
(210, '00010151', 1, 'MUNOZ', 'ANTONIO', '17, rue des Mimosas', 'Bat G Appt. G01', '64230', 'LESCAR', '', ' 06 64 91 76 28', '', '18/12/1967', '', '', '', 'Controleur', '190 E', '', 'CDI', 1, '3'),
(211, '00010152', 1, 'NARDOZZI', 'JEREMY', 'Chemin des Cr&egrave;tes', '', '64150', 'VIELLESEGURE', '', '06 32 65 53 41', '', '22/03/1984', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '75.5'),
(212, '00010245', 1, 'NAVAILLES ARGENTA', 'FLORIAN', '14, Chemin Moureu', '', '64150', 'MOURENX', '', '06 83 97 96 10', '', '01/03/1993', '', '', '', 'OpÃ©rateur', '190 A', '', 'CDI', 1, '0'),
(213, '00010212', 3, 'NICOLAS', 'ANNE-CATHERINE', '883, rue de France', '', '64300', 'SAULT DE NAVAILLES', '', '06 70 11 43 62', '', '13/05/1978', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(214, '00010153', 1, 'NIMHAOULIN', 'BRAHIM', '11 Lot. Couleur Arc-en-ciel', '', '64230', 'ARBUS', '', '06 61 39 45 78', '', '15/12/1971', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '200'),
(215, '00010154', 1, 'NIMHAOULIN', 'OMAR', '2800, route d''Hagetaubin', '', '64370', 'ST MEDARD', '', '06 72 87 38 82', '', '15/03/1979', '', '', '', 'Controleur', '215 B', '', 'CDI', 1, '200'),
(216, '00010155', 1, 'NOUSTY', 'GILLES', '1, impasse Daniel Lafore', 'Appt. n&deg; 2', '64300', 'ORTHEZ', '05 59 21 35 51', '', '', '17/05/1986', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '169.8'),
(217, '00010156', 1, 'NOUZILLE', 'ALAIN', 'Les Mimosas Cidex 5', '', '64230', 'ARTIGUELOUVE', '05 59 83 13 53', '', 'alain.nouzille@rexam.com', '24/11/1957', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(218, '00010158', 1, 'PAGES', 'CHRISTIAN', '11, Chemin d''Aman', '', '64370', 'ARTHEZ DE BEARN', '05 59 67 78 52', '', '', '15/10/1959', '', '', '', 'QpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(219, '00010159', 1, 'PALAS', 'JULIEN', '5, Av de la R&eacute;publique', '', '64140', 'BILLERE', '', '06 30 97 35 45', '', '11/01/1984', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(220, '00010160', 1, 'PASTOUREU', 'GILLES', '2, chemin Carere', '', '64150', 'VIELLESEGURE', '', '06 45 40 52 29', '', '04/01/1968', '', '', '', 'Controleur', '215 D', '', 'CDI', 1, '39.25'),
(221, '00010235', 1, 'PEQUIGNET', 'ALEXANDRE', '54, rue Saint-Pierre', '', '64300', 'ORTHEZ', '', '06 03 88 73 06', '', '18/05/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(222, '00010161', 1, 'PERALTA  ', 'GAETAN', '12, rue Charles de Gaulle', '', '64150', 'MOURENX', '05 59 60 40 02', '', '', '17/12/1955', '', '', '', 'Automaticien', '255 C', '', 'CDI', 1, '84.7'),
(223, '00010162', 1, 'PERALTA  ', 'JORDI', '11, rue de Las Bignes', '', '64300', 'MONT', '', '06 27 82 05 85', 'marsbord@hotmail.com', '13/02/1980', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '153'),
(224, '00010165', 1, 'POUBLAN  ', 'ANDRE', '32, rue principale', '', '64360', 'TARSACQ', '05 59 60 06 34', '', '', '04/08/1973', '', '', '', 'Controleur', '215 F', '', 'CDI', 1, '108.25'),
(225, '00010166', 1, 'POUBLAN  ', 'ERIC', '32, rue principale', '', '64360', 'TARSACQ', '05 59 04 85 99', '', '', '08/07/1975', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '147.7'),
(226, '00010167', 1, 'PUYOO', 'GILLES', '12 bis, rue Labarraque', 'RÃ©sidence Bellevue', '64400', 'OLORON SAINTE MARIE', '05 59 34 37 76', '06 45 79 88 02', 'gillespuyoo@orange.fr', '11/05/1971', '03-04-2008', '', '', 'Conducteur', '190 D', '', 'CDI', 1, '100'),
(227, '00010168', 1, 'RAJA', 'DANIEL', '28, rue du Cast?ra', '', '64150', 'MOURENX', '', '06 29 65 00 81', '', '02/09/1955', '', '', '', 'OpÃ©rateur', '215 E', '', 'CDI', 1, '112'),
(228, '00010169', 1, 'REBOUCO  ', 'JOSE', '2, rue du Pic d''Anie', '', '64150', 'MOURENX', '05 59 71 68 20', '', '', '27/04/1969', '', '', '', 'MÃ©canicien', '240 C', '', 'CDI', 1, '0'),
(229, '00010244', 1, 'REBOUCO  ', 'LOIC', '2, rue du Pic d''Anie', '', '64150', 'MOURENX', '', '06 69 91 84 98', '', '22/03/1996', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(230, '00010170', 1, 'REMY', ' JEAN MARC', 'Route de Lucq de B?arn', '', '64150', 'LAHOURCADE', '05 59 60 04 70', '', '', '18/08/1966', '', '', '', 'Gestionnaire', '225 E', '', 'CDI', 1, '17.75'),
(231, '00010171', 1, 'RENAUD', 'ERIC', '59, impasse du Cast?rot', '', '64170', 'ARTIX', '05 59 71 53 30', '', '', '29/03/1967', '', '', '', 'RÃ©gleur', '215 F', '', 'CDI', 1, '200'),
(232, '00010213', 1, 'RIAHI', 'ABDEL - HAKIM', '1 Avenue de Monein', '', '64150', 'MOURENX', '', '06-11-07-51-25', '', '07/09/1987', '', '', '', 'OpÃ©rateur', '190 B', '', 'CDI', 1, '137.5'),
(233, '00010172', 1, 'RIBEIRO LOPES ', 'ALBINO', '3, chemin de la Houn Dou Cagot', '', '64150', 'ARTHEZ DE BEARN', '05 59 71 63 45', '', '', '29/01/1973', '', '', '', 'Controleur', '215 F', '', 'CDI', 1, '200'),
(234, '00010173', 1, 'ROMAIN', 'SERGE', '19, rue Matachot', '', '64300', 'ORTHEZ', '', '06 71 56 39 79', '', '15/03/1957', '', '', '', 'OpÃ©rateur', '190 B', '', 'CDI', 1, '200'),
(235, '00010174', 1, 'ROSE', 'DOMINIQUE', '4, rue Jacques Duclos', '', '64150', 'MOURENX', '05 59 60 10 53', '', '', '15/07/1969', '', '', '', 'RÃ©gleur', '215 F', '', 'CDI', 1, '200'),
(236, '00010175', 1, 'ROSSI', 'EDWIGE', '42, chemin de Puyet', 'Cedex 11 A', '64230', 'DENGUIN', '05 59 68 80 10', '', 'edwige.rossi@rexam.com', '19/05/1947', '', '', '', 'Secretaire', '255 B', '', 'CDI', 1, '0'),
(237, '00010177', 1, 'ROUSSEFF', 'PATRICK', '1570, chemin du Moulin', '', '64370', 'CASTEIDE-CANDAU', '', '06 03 86 03 26', '', '12/12/1963', '', '', '', 'Cariste', '170 F', '', 'CDI', 1, '126.42'),
(238, '00010179', 1, 'RUFFAT ', 'JONATHAN', '617, route du Bourgadot', '', '40330', 'NASSIET', '05 58 89 13 27', '', '', '19/08/1983', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '0'),
(239, '00010180', 1, 'SAINT-MARTIN', 'ERIC', '3, chemin du Nougue', '', '64370', 'ARTHEZ DE BEARN', '', '06 74 38 22 38', '', '12/09/1971', '', '', '', 'Op?rateur', '215 D', '', 'CDI', 1, '135.5'),
(240, '00010182', 1, 'SALIOU', 'REGIS', '10, lotissement des Moulins', '', '64360', 'MONEIN', '', '06 34 10 38 00', 'rege64@hotmail.fr', '24/06/1975', '', '', '', 'R?gleur', '215 F', '', 'CDI', 1, '200'),
(241, '00010183', 1, 'SALVA', 'YOHAN', '1, Chemin Barr?re', '', '64150', 'VIELLESEGURE', '', '06 30 96 45 56', 'yohanrexam@sfr.fr', '26/11/1979', '', '', '', 'Automaticien', '255 B', '', 'CDI', 1, '0'),
(242, '00010216', 1, 'SARRIEU', 'DAVID', '26, avenue des Magnolias', '', '64320', 'LEE', '', '06 37 49 13 39', 'david.sarrieu@rexam.com', '14/09/1972', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '100'),
(244, '00010185', 1, 'SEGRODNICK ', 'LEANDRICK', 'Chemin Mirassou', '', '64150', 'LAGOR', '', '06 25 05 80 21', '', '16/06/1977', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(245, '00010186', 1, 'SIFREU', 'FLORIAN', '6, all?e Gauguin', '', '64150', 'MOURENX', '05 59 67 44 91', '', 'florian.sifreu@rexam.com', '11/11/1958', '', '', '', 'Tech. Qualit?', '255 C', '', 'CDI', 1, '130.5'),
(246, '00010237', 1, 'TALL', 'MOMAR', '20, rue du Marbor?', '', '64000', 'PAU', '', '06 25 85 86 84', 'momar.tall@rexam.com', '28/04/1983', '', '', '', 'Resp. Techniques', 'Cadre', '', 'CDI', 1, '0'),
(247, '00010187', 1, 'THIBAUT', 'MICHEL', '5, rue Gui de Lons', 'Parc le Bilaa', '64230', 'LESCAR', '05 59 32 01 46', '', 'michel.thibaut@rexam.com', '16/05/1951', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '0'),
(248, '00010236', 3, 'TISNES', 'MARION', '7, Chemin de las Probes', '', '64230', 'SIROS', '', '06 61 16 44 34', '', '22/05/1996', '', '', '', 'Automaticien', '170 A', '', 'Stagiaire', 1, '110.05'),
(249, '00010188', 1, 'TLICH', 'SLIM', '6, all?e Fr?d?rico Garcia Lorca', '', '64150', 'MOURENX', '05 59 60 32 78', '', '', '26/08/1974', '', '', '', 'Op?rateur', '190 B', '', 'CDI', 1, '187.5'),
(250, '00010189', 1, 'TOULET', 'PATRICK', 'Route de Lucq de B?arn', '', '64150', 'LAHOURCADE', '05 59 60 09 81', '', '', '11/06/1966', '', '', '', 'Op?rateur', '215 C', '', 'CDI', 1, '200'),
(251, '00010190', 1, 'TREYTURE-HAYET ', 'THIERRY', '90, Chemin de Treyti', '', '64370', 'HAGETAUBIN', '', '06 15 97 02 12', 'thierry.treyture-hayet@rexam.com', '12/01/1960', '', '', '', 'Chef de Poste', '285 B', '', 'CDI', 1, '108.25'),
(252, '00010191', 1, 'TRIPICCHIO ', ' JEAN PIERRE', '1, rue des jonquilles', 'Lotissement du Ch?teau', '64360', 'MONEIN', '05 59 21 27 02', '', '', '12/11/1970', '', '', '', 'Op?rateur', '190 D', '', 'CDI', 1, '0'),
(253, '00010192', 1, 'URRUTY ', 'MICHEL', '11, chemin Las Barthes', '', '64300', 'BIRON', '05 59 67 01 44', '', '', '08/05/1956', '', '', '', 'Automaticien', '255 C', '', 'CDI', 1, '0'),
(254, '00010241', 1, 'VEDRENNE', 'JOELLE', '35, Route de Parbayse', '', '64230', 'ARBUS', '', '06 03 47 38 73', '', '11/01/1978', '', '', '', 'Contr?leur', '190 B', '', 'CDI', 1, '180.3'),
(255, '00010193', 1, 'VERON', 'DIDIER', '4, Chemin Mirassou', 'Quartier Benzy', '64150', 'LAGOR', '05 59 71 57 04', '', 'didier.veron@rexam.com', '21/02/1958', '', '', '', 'Chef de Poste', '285 B', '', 'CDI', 1, '134'),
(256, '00010242', 1, 'VIATEAU', 'REMI', '1, All?e Lamartine', '', '64150', 'MOURENX', '', '06 85 92 93 99', '', '23/10/1995', '', '', '', 'Contr?leur', '190 A', '', 'CDI', 1, '98.5'),
(257, '00010195', 1, 'VIGIER', 'PASCAL', '14, av du Loup', 'R?sidence La Benoue', '64000', 'PAU', '05 59 02 72 75', '', 'pascal.vigier@rexam.com', '21/07/1958', '', '', '', 'Dir. Financier', 'Cadre', '', 'CDI', 1, '200'),
(258, '00010223', 1, 'VILLAYES ', 'FLORIAN', '17, rue des Mimosas', 'R?s. Les Albizzias - Appt. C 101', '64230', 'LESCAR', '', '06 72 66 01 41', 'florian.villayes@rexam.com', '17/10/1987', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '175'),
(259, '00010225', 1, 'WHALES ', 'STEPHEN', '3, rue Gabriel Faur?', '', '64230', 'LESCAR', '', '06 76 78 11 79', 'stephen.whales@rexam.com', '28/07/1980', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '0'),
(260, '00010249', 1, 'ANDRE-GUERN', 'FLORIAN', '', '', '64000', 'PAU', '', '', 'florian.andre-guern@rexam.com', '12/04/1986', '', '', '1', 'ENGINEERING', 'CADRE', '', 'CDI', 1, '0'),
(261, '00010250', 1, 'HOURCADETTE', 'Nicolas', '49, Chemin PÃ©noulie', 'Quartier Lassabaigt', '64150', 'LAHOURCADE', '', '06.77.70.17.61', 'nicolas.hourcadette@gmail.com', '14-06-1991', '01-02-2015', '', '1', 'ContrÃ´leur', '190A', '', 'CDI', 1, '160'),
(262, '00010251', 1, 'GUERIN', 'JEREMY', '10 ROUTE DU CAGNES', '', '64370', 'ARTHEZ DE BEARN', '05.59.67.78.39', '06.69.44.15.30', 'Jeremy.guerin@outlook.fr', '10-09-1995', '01-07-2015', '', '1', 'conducteur', '190 A', '', 'cdi', 1, '74.3'),
(263, '00010255', 1, 'TURPAULT', 'NICOLAS', '38 PLACE DU GENERAL DE GAULLE', '', '64170', 'ARTIX', '', '06.20.63.08.05', 'turpault82@gmail.com', '09-03-1979', '01-07-2015', '', '1', 'conducteur', '190 A', '', 'CDI', 1, '200.00'),
(264, '00010252', 1, 'SOULIER', 'THOMAS', '326 CHEMIN RAPHAEL LONNE', '', '40380', 'MONFORT EN CHALOSSE', '', '06.79.42.84.95', 'soulier.thomas@aol.com', '1991', '01-07-2015', '', '1', 'CONDUCTEUR', '190.A', '', 'CDI', 1, '200.00'),
(265, '00010253', 1, 'GIACOMINI', 'BASILE', '22 ROUTE DU HAMEAU', '', '64230', 'DENGUIN', '05.59.68.62.74', '06.29.37.15.41', 'giacomini@yahoo.fr', '03-01-1987', '01-07-2015', '', '1', 'MECANICIEN', '240-A', '', 'CDI', 1, '137'),
(267, '00010254', 1, 'TOMASSI', 'FABIEN', '19 CHEMIN DE BENZY', '', '64150', 'LAGOR', '', '06 71 84 31 07', 'fab.tomassi@hotmail.fr', '11-10-1985', '15-09-2015', '', '1', 'Automaticien', '215 A', '', 'CDI', 1, '0'),
(268, '00010257', 3, 'GUITARD', 'Aur&eacute;lia', '70 Chemin de Mouret', '', '64370', 'HAGETAUBIN', '', '06.88.90.48. 93', 'aurÃ©lia.guitard@sfr.fr', '17-02-1980', '01-12-2015', '', '1', 'ContrÃ´leur', '190 A', '', 'CDI', 1, '200.00'),
(269, '00010256', 1, 'CASSIAU-HAURIE', 'ARNAUD', '19 RUE DE LA CARRERE', '', '64300', 'BIRON', '', '06-12-39-94-86', 'jerome.cassiauhaurie@sfr.fr', '10-12-1998', '01-09-2015', '', '1', 'mÃ©cano', '', '', 'apprenti', 1, '200.00'),
(270, '00010414', 3, 'LABARERE', 'MARIE', 'CHEMIN D''ANGOUSTURE', '', '64360', 'MONEIN', '', '06-81-37-62-49', 'm.labarere@laposte.net', '29-10-1994', '', '', '1', '', '', '', 'contrat pro', 1, '200.00'),
(271, '10416', 3, 'PUERTAS', 'LUCILE', '1 RUE DES LANNES , VILLA n&deg;13', '', '64150', 'MOURENX', '', '06-78-08-21-41', 'lucile.puertas@gmail.com', '19-01-1989', '', '', '1', 'RH', '', '', 'contrat pro', 1, '200.00');

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
(84, '24-02-2015', '3171507', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PUYOO Gilles.', '', '100', 0),
(86, '26-07-2015', '5314245', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERGEZ AndrÃ©.', '', '100', 0),
(87, '26-07-2015', '0479495', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOUSQUES DIT CABANOT SthÃ©phane.', '', '100', 0),
(88, '26-07-2015', '174', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ALLAMAN Nicolas.', '', '100', 0),
(89, '26-07-2015', '3786', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BORDENEUVE Patrick.', '', '100', 0),
(90, '26-07-2015', '2954', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GRACIET Patrick.', '', '100', 0),
(91, '26-07-2015', '5477077', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DA FONSECA JosÃ©.', '', '100', 0),
(92, '26-07-2015', '9892954', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ARRICAU AndrÃ©.', '', '100', 0),
(93, '26-07-2015', '5503064', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MASSEY Yan.', '', '100', 0),
(94, '26-07-2015', '5243600', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JAUREGUYBERRY Bruno.', '', '100', 0),
(95, '26-07-2015', '1494', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DE MIGUEL FÃ©lix.', '', '100', 0),
(96, '26-07-2015', '5135608', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de REBOUCO JosÃ©.', '', '100', 0),
(98, '26-07-2015', '5344631', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CLAVERIE Thierry.', '', '15', 0),
(99, '26-07-2015', '6363973', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LANOUE Laurent.', '', '100', 0),
(100, '26-07-2015', '6972047', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DECROUE Didier.', '', '100', 0),
(101, '26-07-2015', '6972047', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DECROUE Didier.', '', '15', 0),
(102, '26-07-2015', '4533749', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GONCALVES NEIVA FrÃ©dÃ©ric.', '', '100', 0),
(103, '26-07-2015', '3341964', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MARTINS DE LIMA Paul.', '', '100', 0),
(104, '26-07-2015', '3142484', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BENZIN RÃ©gis.', '', '100', 0),
(105, '26-07-2015', '5892591', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BORDATTO Serge.', '', '100', 0),
(106, '26-07-2015', '5922742', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de URRUTY Michel.', '', '100', 0),
(107, '26-07-2015', '6482472', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUYON Matthieu.', '', '100', 0),
(108, '26-07-2015', '174', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ALLAMAN Nicolas.', '', '25', 0),
(109, '26-07-2015', '174', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ALLAMAN Nicolas.', '', '25', 0),
(110, '26-07-2015', '479495', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOUSQUES DIT CABANOT StÃ©phane.', '', '15', 0),
(111, '26-07-2015', '479495', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOUSQUES DIT CABANOT StÃ©phane.', '', '15', 0),
(112, '26-07-2015', '5477077', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DA FONSECA JosÃ©.', '', '15', 0),
(113, '26-07-2015', '9892954', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ARRICAU AndrÃ©.', '', '25', 0),
(114, '26-07-2015', '5503064', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MASSEY Yan.', '', '15', 0),
(115, '26-07-2015', '5503064', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MASSEY Yan.', '', '15', 0),
(116, '26-07-2015', '5503064', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MASSEY Yan.', '', '15', 0),
(117, '26-07-2015', '5243600', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JAUREGUYBERRY Bruno.', '', '15', 0),
(118, '26-07-2015', '6363973', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LANOUE Laurent.', '', '25', 0),
(119, '26-07-2015', '6363973', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LANOUE Laurent.', '', '15', 0),
(120, '26-07-2015', '4533749', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GONCALVES NEIVA FrÃ©dÃ©ric.', '', '25', 0),
(121, '26-07-2015', '4533749', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GONCALVES NEIVA FrÃ©dÃ©ric.', '', '15', 0),
(122, '26-07-2015', '1427350', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAZURIER Amina.', '', '25', 0),
(123, '26-07-2015', '3142484', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BENZIN RÃ©gis.', '', '25', 0),
(124, '26-07-2015', '5892591', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BORDATTO Serge.', '', '25', 0),
(125, '26-07-2015', '5892591', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BORDATTO Serge.', '', '25', 0),
(126, '26-07-2015', '2811730', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CLAVE Jean-Paul.', '', '100', 0),
(127, '26-07-2015', '2811730', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CLAVE Jean-Paul.', '', '25', 0),
(128, '26-07-2015', '5344631', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CLAVERIE Thierry.', '', '100', 0),
(129, '21-02-2015', '4592074', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MASSEY Yan.', '', '100', 0),
(130, '21-02-2015', '5135568', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de REBOUCO JosÃ©.', '', '100', 0),
(131, '21-02-2015', '5618104', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BENZIN RÃ©gis.', '', '100', 0),
(132, '21-02-2015', '0', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MARTINS DE LIMA Paul.', '', '100', 0),
(133, '26-07-2015', '2811731', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CLAVE Jean Paul.', '', '100', 0),
(134, '20-08-2015', '7606768', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de VILLAYES Florian.', '', '25', 0),
(135, '20-08-2015', '00000013', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de VIATEAU RÃ©mi.', '', '25', 0),
(136, '20-08-2015', '5501321', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERGEZ CÃ©dric.', '', '25', 0),
(137, '20-08-2015', '0002964', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GRACIET Patrick.', '', '50', 0),
(138, '20-08-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de REBOUCO JosÃ©.', '', '50', 0),
(139, '20-08-2015', '3613023', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de WHALES Stephen.', '', '25', 0),
(140, '20-08-2015', '3857179', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JAUREGUYBERRY Bruno.', '', '50', 0),
(142, '20-08-2015', '5440858', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de EUSEBIO Manuel.', '', '49.5', 0),
(144, '20-08-2015', '5135618', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de REBOUCO JosÃ©.', '', '50', 0);

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
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1034;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
  MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
  MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
  MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
  MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
  MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
  MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
  MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
  MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
  MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
  MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
  MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
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
  MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
  MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1025;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
  MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
  MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
  MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
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
  MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
  MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
  MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
  MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
  MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
  MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
  MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;
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
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
