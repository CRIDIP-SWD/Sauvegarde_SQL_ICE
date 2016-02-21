-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2016 à 15:37
-- Version du serveur :  5.5.47-0+deb7u1
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
(56, 58, 'ADENIS', 'JUDICAELLE', '13/03/2011', '320'),
(57, 58, 'ADENIS', 'ANAE', '14/09/2006', '320'),
(58, 64, 'ALLAMAN', 'ANDERSON', '09/01/2002', '320'),
(59, 64, 'ALLAMAN', 'IZELIA', '05/09/2011', '320'),
(60, 66, 'AMIS', 'THOMAS', '06/08/2008', '320'),
(61, 68, 'ARRICAU', 'ANGELE', '25/06/2001', '320'),
(63, 69, 'BALLESTEROS', 'CELIA', '11/12/2001', '320'),
(65, 70, 'BAR', 'SACHA', '15/02/2013', '320'),
(66, 70, 'BAR', 'NATHAN', '21/01/2010', '320'),
(67, 71, 'BATBEDAT', 'TEO', '01/10/2010', '320'),
(68, 71, 'BATBEDAT', 'SOLENN', '28/12/2001', '320'),
(69, 72, 'BAYONA', 'ANDREA', '23/09/1999', '320'),
(70, 72, 'BAYONA', 'CYRIL', '13/09/2001', '320'),
(71, 75, 'BENZIN', 'CARLA-MARIE', '04/11/2001', '320'),
(73, 77, 'BERGEZ', 'MANON', '14/09/2009', '320'),
(74, 81, 'BIDART', 'DYLAN', '15/12/2001', '320'),
(75, 84, 'BLOEMZAAD', 'NATHALIE', '08/05/2014', '320'),
(76, 85, 'BONNINGUE', 'CALI', '30/12/2010', '320'),
(77, 85, 'BONNINGUE', 'HUGO', '01/08/2013', '320'),
(78, 86, 'BORDATTO', 'CHLOE', '15/04/2000', '320'),
(79, 93, 'BRACH', 'KALI ', '05/10/2012', '320'),
(80, 97, 'BRUNE', 'ERIC', '02/08/1998', '320'),
(81, 98, 'CABANE-CHRESTIA', 'LUDOVIC', '18/08/2002', '132.5'),
(82, 98, 'CABANE-CHRESTIA', 'MAEVA', '06/09/1998', '320'),
(83, 100, 'CALVO', 'YANIS', '12/03/2003', '320'),
(85, 102, 'CAMPAGNE', 'MARION', '09/03/2002', '320'),
(86, 106, 'CASAIL', 'CHARLOTTE', '09/11/1999', '320'),
(87, 107, 'CASAMAJOU', 'IKER', '10/09/2007', '320'),
(88, 107, 'CASAMAJOU', 'LEIRE', '01/05/2002', '320'),
(89, 107, 'CASAMAJOU', 'INTZA', '07/06/2005', '320'),
(90, 108, 'CASANOVA', 'Angel', '26/04/2012', '320'),
(91, 110, 'CAZALERE', 'RAPHAEL', '01/11/2014', '320'),
(92, 114, 'CIOSSE', 'DORIAN', '02/01/2002', '320'),
(93, 114, 'CIOSSE', 'REMI', '09/05/2005', '320'),
(94, 116, 'CLAVERIE', 'QUENTIN', '29/01/2003', '320'),
(95, 118, 'CORREIA', 'THEO', '16/01/2009', '320'),
(96, 118, 'CORREIA', 'MARIE CHRISTINE', '12/09/2012', '320'),
(97, 119, 'CUISINIER', 'SOEN', '17/07/2003', '320'),
(98, 119, 'CUISINIER', 'CLARA', '01/10/2001', '320'),
(99, 120, 'DA FONSECA', 'MARION', '07/07/2007', '0'),
(100, 120, 'DA FONSECA', 'TEO', '03/12/2013', '320'),
(101, 121, 'DA SILVA', 'RACHEL', '07/03/2002', '162.5'),
(102, 121, 'DA SILVA', 'ROMAIN', '26/04/2007', '320'),
(103, 122, 'DANTEIN', 'TOM', '26/04/2013', '288.125'),
(104, 122, 'DANTEIN', 'ANA', '18/11/2011', '320'),
(106, 125, 'DARRACQ', 'TIMEO', '01/07/2009', '320'),
(107, 125, 'DARRACQ', 'CHLOE', '20/07/2012', '320'),
(108, 127, 'DATHY', 'MAXIME', '25/12/2007', '320'),
(109, 127, 'DATHY', 'JUSTINE', '31/08/2010', '320'),
(110, 129, 'DAUBAS', 'GAUTIER', '15/07/2005', '320'),
(111, 129, 'DAUBAS', 'LAURIE', '11/10/2001', '320'),
(112, 132, 'DECROUE', 'LOU-ANNE', '03/02/2004', '266'),
(113, 136, 'DOLLE', 'ANGELINE', '07/10/2001', '320'),
(114, 136, 'DOLLE', 'BASTIEN', '22/06/2006', '320'),
(115, 137, 'DRIVON', 'EMILY', '12/06/2006', '320'),
(116, 137, 'DRIVON', 'ELISE', '09/11/2004', '320'),
(117, 137, 'DRIVON', 'JULES', '25/06/2002', '320'),
(118, 138, 'DULAU', 'AMIC', '18/01/2008', '320'),
(122, 139, 'DUROU', 'GABRIEL', '26/01/2010', '102.1625'),
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
(137, 151, 'GALLARDO', 'ANAE', '16/01/2012', '320'),
(138, 152, 'GIACOMIN', 'LUCILE', '28/02/2002', '320'),
(139, 153, 'GONCALVES NEIVA ', 'ILONA', '20/07/2005', '320'),
(140, 153, 'GONCALVES NEIVA', 'MAEVA', '25/03/2002', '320'),
(141, 155, 'GUION', 'HUGO', '24/08/2001', '207.5'),
(142, 155, 'GUION', 'EMMA', '26/10/2004', '320'),
(144, 157, 'HOSTENDIE', 'INES', '11/02/2000', '320'),
(145, 158, 'HOUIS', 'LEO', '04/05/2004', '320'),
(146, 159, 'HOURDILLE', 'JUSTINE', '15/05/2003', '320'),
(148, 161, 'JACKOWSKI', 'LISA', '14/03/2005', '320'),
(149, 162, 'JAUREGUIBERRY', 'IBAN', '13/02/2009', '320'),
(150, 162, 'JAUREGUIBERRY', 'ELAIA', '24/11/2013', '320'),
(151, 163, 'JIMENEZ', 'HUGO', '15/02/2000', '320'),
(152, 165, 'JUNGAS', 'JADE', '15/07/2011', '320'),
(153, 165, 'JUNGAS', 'LOU', '28/05/2014', '320'),
(154, 169, 'LACABARATS', 'LUCIE', '03/12/2012', '320'),
(155, 171, 'LACARRIEU-HAURAT', 'MORGANE', '05/10/1999', '242'),
(156, 177, 'LAMOURE-LABADIE', 'DAMIEN', '22/10/1998', '320'),
(157, 178, 'LAMOURET', 'THEO', '15/03/2000', '320'),
(158, 179, 'LANOUE', 'AXELLE', '18/02/1998', '320'),
(159, 179, 'LANOUE', 'ROXANE', '09/04/2007', '320'),
(160, 180, 'LASSOURREILLE', 'CHARLOTTE', '17/07/2011', '320'),
(161, 187, 'LUPIAC', 'JUSTINE', '07/11/2000', '320'),
(162, 189, 'MAIRAL', 'LENA', '30/11/2012', '320'),
(163, 191, 'MARATRAT', 'CASSIDY', '12/01/2010', '320'),
(164, 192, 'MARLADOT', 'BAPTISTE', '21/03/2002', '320'),
(165, 194, 'MARTINEZ', 'MAREVA', '01/05/2001', '320'),
(166, 197, 'MASSE', 'ALEXINE', '22/09/2012', '320'),
(167, 198, 'MASSEY', 'JOAN', '13/05/2006', '320'),
(168, 198, 'MASSEY', 'MAELY', '31/03/2011', '320'),
(169, 198, 'MASSEY', 'MARGAUX', '14/11/2002', '320'),
(171, 200, 'MAZURIER', 'MARIE', '31/10/1999', '293.75'),
(172, 204, 'MOLENAT', 'JOHAN', '24/02/2012', '320'),
(173, 205, 'MORRAL', 'LOLA', '20/12/2005', '320'),
(174, 205, 'MORRAL', 'MAEL', '01-08-2010', '320'),
(175, 206, 'MOURCEL', 'MAXIME', '13/02/2002', '320'),
(176, 208, 'MOUSQUES DIT CABANOT', 'VALENTINE', '10/04/2007', '320'),
(177, 208, 'MOUSQUES DIT CABANOT', 'JEAN ', '30/01/2004', '320'),
(178, 211, 'NARDOZZI', 'LEIA', '09/07/2009', '320'),
(179, 211, 'NARDOZZI', 'JOAN', '12/10/2013', '320'),
(180, 213, 'NICOLAS', 'Justine', '01/10/2006', '320'),
(181, 214, 'NIMHAOULIN', 'SARAH', '11/02/2008', '320'),
(182, 214, 'NIMHAOULIN', 'ANISS', '18/10/2000', '320'),
(183, 215, 'NIMHAOULIN', 'INES', '06/01/2012', '320'),
(184, 215, 'NIMHAOULIN', 'SOPHIA', '27/05/2010', '320'),
(185, 216, 'NOUSTY', 'EMMA', '24/10/2009', '320'),
(187, 220, 'PASTOUREU', 'MATHILDE', '27/02/2003', '320'),
(188, 220, 'PASTOUREU', 'REMI', '31/01/2000', '320'),
(189, 223, 'PERALTA', 'ANTONIN', '17/03/2005', '320'),
(190, 230, 'REMY', 'GUILLAUME', '21/02/1999', '320'),
(192, 238, 'RUFFAT', 'BAPTISTE', '03/01/2008', '320'),
(193, 239, 'SAINT-MARTIN', 'FLORIAN', '21/11/1997', '320'),
(194, 239, 'SAINT-MARTIN', 'MELISSA', '30/03/2003', '320'),
(195, 240, 'SALIOU', 'MAYDELIE', '08/09/2003', '320'),
(196, 242, 'SARRIEU', 'SHANON', '17/03/2003', '320'),
(197, 244, 'SEGRODNICK', 'LOUANE', '19/06/2005', '150.6725'),
(198, 244, 'SEGRODNICK', 'LUCAS', '23/12/2001', '111.2825'),
(199, 246, 'TALL EL HADJI', 'DOUNA', '23/12/2001', '320'),
(200, 247, 'THIBAUT', 'AXEL', '11/10/1999', '320'),
(201, 249, 'TLICH', 'ISLEYM', '19/02/2013', '320'),
(202, 249, 'TLICH', 'CHEYMA', '23/09/2005', '320'),
(203, 249, 'TLICH', 'ABDELAZIZ', '14/08/2003', '320'),
(204, 249, 'TLICH', 'MARWANE', '15/11/2008', '282.5'),
(206, 251, 'TREYTURE-HAYET', 'ROBIN', '27/04/2005', '320'),
(207, 252, 'TRIPICCHIO', 'FIORENZO', '29/03/1998', '289.085'),
(208, 259, 'WHALES', 'CELESTE', '28/04/2008', '320'),
(209, 251, 'BOY', 'Aldwin', '07-02-1999', '320'),
(211, 56, 'ABADO', 'Micka&euml;l', '04-01-2015', '180.275'),
(212, 129, 'DAUBAS DA SILVA ', 'Chlo&eacute;', '26-10-2004', '320'),
(213, 82, 'BIDART', 'Inaya Alicia', '25-02-2015', '320'),
(214, 156, 'GUYON', 'CLEMENT', '22-03-2014', '320'),
(215, 86, 'BERSANS ', 'Laura', '30-06-1999', '320'),
(216, 148, 'FONSECA', 'ANAIS', '24-08-2015', '320'),
(217, 213, 'NICOLAS', 'Mali', '01-10-2015', '320'),
(218, 108, 'CASNOVA', 'Jules', '03-10-2015', '320'),
(219, 108, 'CASANOVA ', 'Eva', '03-10-2015', '320'),
(220, 268, 'GUITARD COUSTET', 'ENZO', '19-09-2010', '320'),
(221, 224, 'POUBLAN ', 'JADE', '19-04-2015', '320'),
(222, 224, 'POUBLAN ', 'JADE', '19-04-2015', '320'),
(223, 273, 'ROXO ', 'NOELIA', '13-10-2012', '320.00'),
(224, 273, 'ROXO', 'KAILAN', '27-08-2014', '320.00'),
(225, 129, 'DAUBAS LARTIGUE', 'LUCIE', '17-02-2016', '320.00');

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
(1, 1, 'Remboursement de la prestation: licence + foot + parc pour DUROU SIMON', '320', '', '1747732740'),
(2, 1, 'Remboursement de la prestation: foot + cin&eacute;ma + youpi parc + puy du fou pour DUROU GABRIEL', '217.8375', '', '2859588703'),
(3, 1, 'Remboursement de la prestation: foot + puy du fou pour LAGRAULA-DUROU SOPHIE', '185.05', '', '545870403293'),
(4, 1, 'Remboursement de la prestation: licence basket pour DECROUE LOU-ANNE', '54', '', '4344283324'),
(5, 1, 'Remboursement de la prestation: concert pour PUERTAS LUCILE', '27.425', '', '443184812088'),
(6, 1, 'Remboursement de la prestation: espace vital pour SIFREU FLORIAN', '34', '', '122376509942'),
(7, 1, 'Remboursement de la prestation: KARTING pour DARRACQ ADRIEN', '26', '', '186796261464'),
(8, 1, 'Remboursement de la prestation: PERMIS DE PECHE pour MILAGE   CHRISTIAN', '72.5', '', '369348275010'),
(9, 1, 'Remboursement de la prestation: DANSE ATTITUDE + GUITARE pour DA FONSECA TEO', '320', '', '3312369497'),
(10, 1, 'Remboursement de la prestation: CARTE CINEMA pour MAZURIER MARIE', '26.25', '', '111264694'),
(11, 1, 'Remboursement de la prestation: FORFAIT LUGE + LOCATION pour DANTEIN TOM', '31.875', '', '3377666567'),
(12, 1, 'Remboursement de la prestation: COURS DE DANSE pour BRUN GILLES', '165', '', '117854594719'),
(13, 1, 'Remboursement de la prestation: METAMORPHOSE pour BLOEMZAAD  DANIEL', '199.5', '', '675833677407'),
(14, 1, 'Remboursement de la prestation: SPECTACLE pour TRIPICCHIO   JEAN PIERRE', '20.61', '', '328726762440'),
(15, 1, 'Remboursement de la prestation: SPECTACLE pour TRIPICCHIO FIORENZO', '30.915', '', '620833370'),
(16, 1, 'Remboursement de la prestation: VOYAGE SCOLAIRE pour GUION HUGO', '112.5', '', '9108739504'),
(17, 1, 'Remboursement de la prestation: FOOT pour BERTELOOT KEVIN', '30', '', '829566893167'),
(18, 1, 'Remboursement de la prestation: TENNIS + FOOT pour LOPEZ   ISMAEL', '74.25', '', '857666566968'),
(19, 1, 'Remboursement de la prestation: CINEMA pour ABADO NICOLAS', '46.5', '', '911872844677'),
(20, 1, 'Remboursement de la prestation: PAJE EMPLOI pour ABADO Micka&euml;l', '139.725', '', '1211782494'),
(21, 1, 'Remboursement de la prestation: DANSE JAZZ pour DA SILVA RACHEL', '157.5', '', '2881536521'),
(22, 1, 'Remboursement de la prestation: ECOLE DE TENNIS pour TLICH MARWANE', '37.5', '', '4547404461'),
(23, 1, 'Remboursement de la prestation: HIP HOP pour LACARRIEU-HAURAT MORGANE', '78', '', '2054770855'),
(24, 1, 'Remboursement de la prestation: FORFAIT SKI pour SEGRODNICK  LEANDRICK', '85.725', '', '634540627710'),
(25, 1, 'Remboursement de la prestation: FORFAIT SKI pour SEGRODNICK LUCAS', '208.7175', '', '5703526749'),
(26, 1, 'Remboursement de la prestation: FORFAIT SKI pour SEGRODNICK LOUANE', '169.3275', '', '3748577773'),
(27, 1, 'Remboursement de la prestation: SPECTACLE pour BOUDERLIQUE DIDIER', '75.65', '', '69411474280'),
(28, 1, 'Remboursement de la prestation: VOYAGE SCOLAIRE pour CABANE-CHRESTIA LUDOVIC', '187.5', '', '4348050333'),
(29, 1, 'Remboursement de la prestation: danse attitude + guitare pour DA FONSECA MARION', '320', '', '2835415146'),
(30, 2, 'Ajout du produit fixe: Subvention Janvier', '', '13697', '9063253272'),
(31, 1, 'Remboursement de la prestation: rugby  pour DARRACQ ADRIEN', '15', '', '304813751020'),
(32, 1, 'Remboursement de la prestation: rugby + mus&eacute;e pour DARRACQ CHRISTOPHE', '71.5', '', '597022332717'),
(33, 1, 'Remboursement de la prestation: Caliceo pour HYGEN DOMINIQUE', '22.5', '', '509898743592'),
(34, 1, 'Remboursement de la prestation: platinuim detente pour LADAURADE  FABIEN', '200', '', '801989444066'),
(37, 1, 'Remboursement de la prestation: cinema pour GIACOMINI BASILE', '18', '', '667823737487'),
(38, 2, 'Ajout du produit fixe: Subvention F&eacute;vrier', '', '13697', '5934917792');

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
(82, 3, '567', ''),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '', ''),
(87, 8, '17694', ''),
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
(107, 28, '', '18261'),
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

--
-- Contenu de la table `compta_bilan_actif`
--

INSERT INTO `compta_bilan_actif` (`idcptbilanactif`, `num_mouvement`, `idcomptaplan`, `montant`) VALUES
(3, '8232216', 3, '567,20'),
(4, '7725393', 8, '17694,21');

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
(2, '9011032', 28, '18261,41');

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
(4, '8232216', 3, '567,20', ''),
(5, '7725393', 8, '17694,21', ''),
(6, '9011032', 28, '', '18261,41');

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
(1, '1747732740', '1454540400', 'Remboursement de la Prestation pour DUROU SIMON - licence + foot + parc', '320', ''),
(2, '2859588703', '1454540400', 'Remboursement de la Prestation pour DUROU GABRIEL - foot + cin&eacute;ma + youpi parc + puy du fou', '217.8375', ''),
(3, '545870403293', '1454540400', 'Remboursement de la Prestation pour LAGRAULA-DUROU SOPHIE - foot + puy du fou', '185.05', ''),
(4, '4344283324', '1454540400', 'Remboursement de la Prestation pour DECROUE LOU-ANNE - licence basket', '54', ''),
(5, '443184812088', '1454540400', 'Remboursement de la Prestation pour PUERTAS LUCILE - concert', '27.425', ''),
(6, '122376509942', '1454540400', 'Remboursement de la Prestation pour SIFREU FLORIAN - espace vital', '34', ''),
(7, '186796261464', '1454540400', 'Remboursement de la Prestation pour DARRACQ ADRIEN - KARTING', '26', ''),
(8, '369348275010', '1454540400', 'Remboursement de la Prestation pour MILAGE   CHRISTIAN - PERMIS DE PECHE', '72.5', ''),
(9, '3312369497', '1454540400', 'Remboursement de la Prestation pour DA FONSECA TEO - DANSE ATTITUDE + GUITARE', '320', ''),
(10, '111264694', '1454540400', 'Remboursement de la Prestation pour MAZURIER MARIE - CARTE CINEMA', '26.25', ''),
(11, '3377666567', '1454540400', 'Remboursement de la Prestation pour DANTEIN TOM - FORFAIT LUGE + LOCATION', '31.875', ''),
(12, '117854594719', '1454540400', 'Remboursement de la Prestation pour BRUN GILLES - COURS DE DANSE', '165', ''),
(13, '675833677407', '1454540400', 'Remboursement de la Prestation pour BLOEMZAAD  DANIEL - METAMORPHOSE', '199.5', ''),
(14, '328726762440', '1454540400', 'Remboursement de la Prestation pour TRIPICCHIO   JEAN PIERRE - SPECTACLE', '20.61', ''),
(15, '620833370', '1454540400', 'Remboursement de la Prestation pour TRIPICCHIO FIORENZO - SPECTACLE', '30.915', ''),
(16, '9108739504', '1454540400', 'Remboursement de la Prestation pour GUION HUGO - VOYAGE SCOLAIRE', '112.5', ''),
(17, '829566893167', '1454540400', 'Remboursement de la Prestation pour BERTELOOT KEVIN - FOOT', '30', ''),
(18, '857666566968', '1454540400', 'Remboursement de la Prestation pour LOPEZ   ISMAEL - TENNIS + FOOT', '74.25', ''),
(19, '911872844677', '1454540400', 'Remboursement de la Prestation pour ABADO NICOLAS - CINEMA', '46.5', ''),
(20, '1211782494', '1454540400', 'Remboursement de la Prestation pour ABADO Micka&euml;l - PAJE EMPLOI', '139.725', ''),
(21, '2881536521', '1454540400', 'Remboursement de la Prestation pour DA SILVA RACHEL - DANSE JAZZ', '157.5', ''),
(22, '4547404461', '1454540400', 'Remboursement de la Prestation pour TLICH MARWANE - ECOLE DE TENNIS', '37.5', ''),
(23, '2054770855', '1454540400', 'Remboursement de la Prestation pour LACARRIEU-HAURAT MORGANE - HIP HOP', '78', ''),
(24, '634540627710', '1454540400', 'Remboursement de la Prestation pour SEGRODNICK  LEANDRICK - FORFAIT SKI', '85.725', ''),
(25, '5703526749', '1454540400', 'Remboursement de la Prestation pour SEGRODNICK LUCAS - FORFAIT SKI', '208.7175', ''),
(26, '3748577773', '1454540400', 'Remboursement de la Prestation pour SEGRODNICK LOUANE - FORFAIT SKI', '169.3275', ''),
(27, '69411474280', '1454540400', 'Remboursement de la Prestation pour BOUDERLIQUE DIDIER - SPECTACLE', '75.65', ''),
(28, '4348050333', '1454540400', 'Remboursement de la Prestation pour CABANE-CHRESTIA LUDOVIC - VOYAGE SCOLAIRE', '187.5', ''),
(29, '2835415146', '1454540400', 'Remboursement de la Prestation pour DA FONSECA MARION - danse attitude + guitare', '320', ''),
(30, '9063253272', '1454281200', 'Subvention Janvier', '', '13697'),
(31, '304813751020', '1455663600', 'Remboursement de la Prestation pour DARRACQ ADRIEN - rugby ', '15', ''),
(32, '597022332717', '1455663600', 'Remboursement de la Prestation pour DARRACQ CHRISTOPHE - rugby + mus&eacute;e', '71.5', ''),
(33, '509898743592', '1455750000', 'Remboursement de la Prestation pour HYGEN DOMINIQUE - Caliceo', '22.5', ''),
(34, '801989444066', '1455750000', 'Remboursement de la Prestation pour LADAURADE  FABIEN - platinuim detente', '200', ''),
(37, '667823737487', '1455750000', 'Remboursement de la Prestation pour GIACOMINI BASILE - cinema', '18', ''),
(38, '5934917792', '1454626800', 'Subvention F&eacute;vrier', '', '13697');

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE `famille_prestation` (
  `idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Subvention Janvier', '01-02-2016', '13697', '9063253272'),
(2, 'Subvention F&eacute;vrier', '05-02-2016', '13697', '5934917792');

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

--
-- Contenu de la table `reg_remb_ayant_droit`
--

INSERT INTO `reg_remb_ayant_droit` (`idregrembayantdroit`, `idrembayantdroit`, `montant_reglement`, `num_chq`) VALUES
(1, 1, '320,00', '2576'),
(2, 2, '217,84', '2576'),
(3, 3, '54,00', '2577'),
(4, 4, '320,00', '2582'),
(5, 5, '26,25', '2583'),
(6, 6, '31,88', '2584'),
(7, 7, '30,92', '2587'),
(8, 8, '112,50', '2588'),
(9, 9, '139,73', '2591'),
(10, 10, '157,50', '2592'),
(11, 11, '37,50', '2593'),
(12, 12, '78,00', '2594'),
(13, 13, '208,72', '2595'),
(14, 14, '169,33', '2595'),
(15, 15, '187,50', '2597'),
(16, 16, '320,00', '2582');

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
(1, 1, '185,05', '2576'),
(2, 2, '27,43', '2578'),
(3, 3, '34,00', '2579'),
(4, 4, '26,00', '2580'),
(5, 5, '72,50', '2591'),
(6, 6, '165,00', '2585'),
(7, 7, '199,50', '2586'),
(8, 8, '20,61', '2587'),
(9, 9, '30,00', '2589'),
(10, 10, '74,25', '2590'),
(11, 11, '46,50', '2591'),
(12, 12, '85,73', '2595'),
(13, 13, '75,65', '2596'),
(14, 14, '15,00', '2600'),
(15, 15, '71,50', '2600'),
(16, 16, '22,50', '2602'),
(17, 17, '200,00', '2603'),
(18, 20, '18,00', '2604');

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
(1, 123, 'licence + foot + parc', '04-02-2016', '478.05', '320', 1, '1747732740'),
(2, 122, 'foot + cin&eacute;ma + youpi parc + puy du fou', '04-02-2016', '290.45', '217.8375', 1, '2859588703'),
(3, 112, 'licence basket', '04-02-2016', '72.00', '54', 1, '4344283324'),
(5, 171, 'CARTE CINEMA', '04-02-2016', '35.00', '26.25', 1, '111264694'),
(6, 103, 'FORFAIT LUGE + LOCATION', '04-02-2016', '42.50', '31.875', 1, '3377666567'),
(7, 207, 'SPECTACLE', '04-02-2016', '41.22', '30.915', 1, '620833370'),
(8, 141, 'VOYAGE SCOLAIRE', '04-02-2016', '150.00', '112.5', 1, '9108739504'),
(9, 211, 'PAJE EMPLOI', '04-02-2016', '186.30', '139.725', 1, '1211782494'),
(10, 101, 'DANSE JAZZ', '04-02-2016', '210.00', '157.5', 1, '2881536521'),
(11, 204, 'ECOLE DE TENNIS', '04-02-2016', '50.00', '37.5', 1, '4547404461'),
(12, 155, 'HIP HOP', '04-02-2016', '104.00', '78', 1, '2054770855'),
(13, 198, 'FORFAIT SKI', '04-02-2016', '278.29', '208.7175', 1, '5703526749'),
(14, 197, 'FORFAIT SKI', '04-02-2016', '225.77', '169.3275', 1, '3748577773'),
(15, 81, 'VOYAGE SCOLAIRE', '04-02-2016', '250.00', '187.5', 1, '4348050333'),
(16, 99, 'danse attitude + guitare', '04-02-2016', '504.00', '320', 1, '2835415146');

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
(1, 139, 'foot + puy du fou', '04-02-2016', '370.10', '185.05', 1, '545870403293'),
(2, 271, 'concert', '04-02-2016', '54.85', '27.425', 1, '443184812088'),
(3, 245, 'espace vital', '04-02-2016', '68.00', '34', 1, '122376509942'),
(4, 123, 'KARTING', '04-02-2016', '52.00', '26', 1, '186796261464'),
(5, 203, 'PERMIS DE PECHE', '04-02-2016', '145.00', '72.5', 1, '369348275010'),
(6, 95, 'COURS DE DANSE', '04-02-2016', '330.00', '165', 1, '117854594719'),
(7, 84, 'METAMORPHOSE', '04-02-2016', '399.00', '199.5', 1, '675833677407'),
(8, 252, 'SPECTACLE', '04-02-2016', '41.22', '20.61', 1, '328726762440'),
(9, 79, 'FOOT', '04-02-2016', '60.00', '30', 1, '829566893167'),
(10, 183, 'TENNIS + FOOT', '04-02-2016', '148.50', '74.25', 1, '857666566968'),
(11, 56, 'CINEMA', '04-02-2016', '93.00', '46.5', 1, '911872844677'),
(12, 244, 'FORFAIT SKI', '04-02-2016', '171.45', '85.725', 1, '634540627710'),
(13, 90, 'SPECTACLE', '04-02-2016', '151.30', '75.65', 1, '69411474280'),
(14, 123, 'rugby ', '17-02-2016', '30.00', '15', 1, '304813751020'),
(15, 124, 'rugby + mus&eacute;e', '17-02-2016', '143.00', '71.5', 1, '597022332717'),
(16, 160, 'Caliceo', '18-02-2016', '45', '22.5', 1, '509898743592'),
(17, 173, 'platinuim detente', '18-02-2016', '420', '200', 1, '801989444066'),
(20, 265, 'cinema', '18-02-2016', '36', '18', 1, '667823737487');

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
(56, '00010000', 0, 'ABADO', 'NICOLAS', '2, Route de Lacq', '', '64370', 'ARTHEZ DE BEARN', '05 59 38 47 75', '', '', '05/05/1985', '', '', '', 'Automaticien', '255 A', 'Mari&eacute;', 'CDI', 1, '153.5'),
(57, '00010002', 0, 'ABAJI', 'MOHAMMED', '7, All&eacute;e Van  Dyck', '', '64150', 'MOURENX', '', '06 44 27 33 69', 'mohammed.abaji@rexam.com', '25/03/1981', '', '', '', 'Planning', '270 A', '', 'CDI', 1, '200'),
(58, '00010224', 0, 'ADENIS', 'BERTRAND', '4, rue du Mar&eacute;chal Leclerc', '', '64150', 'MOURENX', '', '06 70 15 61 00', '', '17/11/1983', '', '', '', 'Automaticien', '240 B', '', 'CDI', 1, '200'),
(59, '00010003', 0, 'AIMAR', 'REMY', '9, rue Frida', '', '64150', 'MOURENX', '', '06 86 90 09 87', '', '02/01/1987', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(60, '00010004', 0, 'AKHSASSI', 'FATIMA', '4, rue Voltaire', '', '64230', 'LESCAR', '05 59 81 26 34', '', 'fatima.akhassi@rexam.com', '27/01/1965', '', '', '', 'ComptabilitÃ©', 'Cadre', '', 'CDI', 1, '200'),
(61, '00010005', 0, 'ALBANEL', 'HERVE', '', '7 Chemin de Pipaoutou\r\n', '64230', 'MOMAS', '05 59 33 87 48', '', '', '27/01/1969', '', '', '', 'Conducteur rÃ©gleur', '215  E', '', 'CDI', 1, '200'),
(62, '00010200', 0, 'ALCANTARA', 'BEATRICE', '2, Lot Communal', 'Lannem?nia', '64190', ' CASTETBON', '', '06 77 08 06 14', 'beatrice.alcantara@rexam.com', '30/10/1964', '', '', '', 'Personnel', '255 C', '', 'CDI', 1, '200'),
(63, '00010006', 0, 'ALCETEGARAY ', 'DANIEL', 'Bourg', '', '64190', 'ANGOUS', '05 59 66 03 91', '', '', '21/02/1966', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(64, '00010007', 0, 'ALLAMAN ', 'NICOLAS', '43, rue des PyrÃ©nÃ©es', '', '64190', 'GURS', '', '06 30 08 55 58', '', '06/04/1984', '', '', '', 'MÃ©canicien', '240 A', '', 'CDI', 1, '200'),
(65, '00010008', 0, 'ALVES ', 'PAUL', '158 Route du Bourg', '', '40700', 'MOMUY', '', '06 88 64 25 63', '', '05/08/1966', '', '', '', 'controleur', '215 A', '', 'CDI', 1, '200'),
(66, '00010009', 0, 'AMIS ', 'CHRISTIAN', '7 place du Gabizos', '', '64150', 'MOURENX', '', '06 74 55 60 76', '', '10/04/1974', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(68, '00010011', 0, 'ARRICAU', 'ANDRE', 'quartier Augas', '', '64190', 'PRECHACQ-JOSBAIG', '05 59 88 03 68', '', 'pierette.arricau@orange.fr', '06/04/1967', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(69, '00010013', 0, 'BALLESTEROS ', 'DIDIER', 'chemin de Bouhaben', 'Quartier Loupien', '64360', 'MONEIN', '05 59 21 43 88', '', '', '26/02/1964', '', '', '', 'Controleur', '190 F', '', 'CDI', 1, '200'),
(70, '00010014', 0, 'BAR ', 'GAETAN', '', '', '64300', 'SAULT DE NAVAILLES', '', '06 75 68 96 05', '', '29/01/1983', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(71, '00010015', 0, 'BATBEDAT ', 'LAURENT', 'Chemin de LARTE', 'Quartier Castetarbe', '64300', 'ORTHEZ', '05 59 61 74 09', '', '', '24/08/1973', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(72, '00010016', 0, 'BAYONA', 'GILLES', 'Avenue BRIAND', '', '64260', 'LOUVIE-JUZON', '05 59 05 85 82', '', '', '20/05/1962', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '200'),
(73, '00010017', 0, 'BAZIARD', 'DIDIER', '963 Chemin Matachot', '', '64300', 'ORTHEZ', '05 59 69 28 13', '', '', '10/02/1958', '', '', '', 'Controleur', '215 D', '', 'CDI', 1, '200'),
(74, '00010231', 0, 'BENITO', 'KEVIN', '3, rue du Pic du Midi d''Ossau', '', '64150', 'MOURENX', '', '06 52 68 91 23', '', '03-11-1992', '01-01-2015', '', '', 'OpÃ©rateur', '190 A', '', 'CDI', 1, '200'),
(75, '00010018', 0, 'BENZIN', 'REGIS', '5, Route d''Hagetaubin', 'Quartier N''Haux', '64370', 'ARTHEZ DE BEARN', '05 59 67 49 65', '', '', '01/12/1968', '', '', '', 'Outilleur', '215 G', '', 'CDI', 1, '200'),
(77, '00010021', 0, 'BERGEZ', 'CEDRIC', '850, route de Sauveterre', '', '64300', 'LANNEPLAA', '', '06 78 67 34 30', '', '06/03/1982', '', '', '', 'opÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(78, '00010020', 0, 'BERGEZ', 'JEAN', 'Quartier COOS', '', '64360', 'MONEIN', '', '06 82 53 67 95', '', '20/02/1953', '', '', '', 'HSE', '305 F', '', 'CDI', 1, '200'),
(79, '00010215', 0, 'BERTELOOT', 'KEVIN', '174, all?es des c?dres', 'Appt 4 B?t. A', '64150', 'MOURENX', '05 59 04 06 51', '', '', '10/09/1991', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '170'),
(80, '00010022', 0, 'BIDART', 'CHARLOTTE', '802, CHEMIN DE DUCLOS', '', '64370', 'POMPS', '', '06 29 02 26 64', '', '24/06/1988', '15-09-2014', '', '', 'controleur', '190 B', '', 'CDI', 1, '200'),
(81, '00010217', 0, 'BIDART', 'MARCEL', 'Quartier Camou', '', '64190', 'PRECHACQ-JOSBAIG', '', '06 30 81 43 46', 'marcel.bidart@neuf.fr', '25/01/1969', '', '', '', 'MÃ©canicien', '215 B', '', 'CDI', 1, '200'),
(82, '00010238', 0, 'BIDART', 'MICKAEL', '7 RUE DE L ESCOU', '', '64400', 'GOES', '', '06 09-36-17-61', 'mickael.bidart@live.fr', '27/09/1991', '', '', '', 'OpÃ©rateur', '190 c', '', 'CDI', 1, '200'),
(83, '00010023', 0, 'BLEIN', 'VINCENT', '304, Route de PAU', 'Quartier Soarns', '64300', 'ORTHEZ', '05 59 69 44 41', '', '', '22/03/1974', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(84, '00010024', 0, 'BLOEMZAAD ', 'DANIEL', '16, rue des Edelweiss', '', '64360', 'MONEIN', '', '06 86 38 27 65', '', '20/05/1960', '', '', '', 'OpÃ©rateur', '215 F', '', 'CDI', 1, '0.5'),
(85, '00010233', 0, 'BONNINGUE ', 'VINCENT', '15, Route du Foirail', '', '64370', 'ARTHEZ DE BEARN', '', '06 37 87 05 25', '', '27/12/1979', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(86, '00010025', 0, 'BORDATTO', 'SERGE', 'Quartier Augas et Lanot', '', '64190', 'PRECHACQ-JOSBAIG', '09 67 00 54 05', '', '', '20/09/1968', '', '', '', 'RÃ©gleur', '215 G', '', 'CDI', 1, '200'),
(87, '00010026', 0, 'BORDENAVE', 'MAX', '23, rue du Vieux Mont', '', '64300', 'MONT', '', '06 29 02 93 25', '', '21/02/1977', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(88, '00010027', 0, 'BORDENEUVE', 'PATRICK', '24, Chemin du bois', '', '64400', 'SAINT-GOIN', '05 59 88 02 18', '', 'patrick.bordeneuve@wanadoo.fr', '21/07/1961', '', '', '', 'conducteur qualiticien', '215 E', '', 'CDI', 1, '200'),
(89, '00010198', 0, 'BOUCHET', 'GERARD', '21 bis, Les Epineraises ', '', '28250', 'LE MESNIL THOMAS', '', '06 79 47 01 85', 'gerard.bouchet@rexam.com', '04/11/1956', '', '', '', 'CTS', 'Cadre', '', 'CDI', 1, '200'),
(90, '00010028', 0, 'BOUDERLIQUE', 'DIDIER', 'Route d''UCHA', '', '64360', 'MONEIN', '05 59 21 44 52', '', '', '17/01/1959', '', '', '', 'Gestionnaire', '225 B', '', 'CDI', 1, '124.35'),
(91, '00010029', 0, 'BOURG', 'CHRISTOPHE', '13, cap de Lalanne', '', '64170', 'ARTIX', '', '06 66 16 08 52', '', '29/07/1971', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(93, '00010031', 0, 'BRACH', 'JULIEN', '12, chemin Peyrot', '', '64150', 'VIELLESEGURE', '', '06 25 48 08 03', '', '24/03/1984', '', '', '', 'OpÃ©rateur', '190 B', '', 'CDI', 1, '200'),
(94, '00010032', 0, 'BREGNIAS', ' JEAN MARC', 'Quartier Augas', '', '64190', 'PRECHACQ-JOSBAIG', '05 59 88 03 87', '', '', '03/06/1961', '', '', '', 'Outilleur', '255 D', '', 'CDI', 1, '200'),
(95, '00010036', 0, 'BRUN', 'GILLES', '2, all&eacute;e du Hameau', '', '64320', 'BIZANOS', '05 59 27 51 44', '', '', '21/03/1959', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '35'),
(96, '00010035', 0, 'BRUN', ' JEAN DENIS', 'Domaine du Sarrot - 18, Av Rauski', '', '64110', 'JURANCON', '05 59 27 88 01', '', 'jean-denis.brun@rexam.com', '12-02-2012', '', '', '', 'Directeur', 'Cadre', '', 'CDI', 1, '200'),
(97, '00010037', 0, 'BRUNE', 'MICHEL', '1, rue de la Carr?re', '', '64300', 'MASLACQ', '', '06 51 43 22 70', 'michel.brune@rexam.com', '23/09/1966', '', '', '', 'Chef de Poste', '305  E', '', 'CDI', 1, '200'),
(98, '00010038', 0, 'CABANE-CHRESTIA', 'CHRISTOPHE', 'Rue d''Aspe prolon&eacute;?e', 'Maison Stafania', '64400', 'OLORON SAINTE MARIE', '05 59 39 56 48', '', '', '28/10/1973', '', '', '', 'OpÃ©rateur', '215 C', '', 'CDI', 1, '200'),
(99, '00010239', 0, 'CABANNE ', 'JOSETTE', '324, chemin Pedelahore', '', '64170', 'ARTIX', '', '06 83 74 58 32', '', '14/04/1964', '', '', '', 'Controleur', '190  B', '', 'CDI', 1, '200'),
(100, '00010039', 0, 'CALVO ', 'MICHEL', '5, rue Marc Antoine de No&eacute;', '', '64230', 'LESCAR', '05 59 62 97 26', '', '', '18/02/1961', '', '', '', 'RÃ©gleur', '215 D', '', 'CDI', 1, '200'),
(102, '00010041', 0, 'CAMPAGNE', 'FRANCK', '229, chemin de LARROUY', '', '64300', 'LAA-MONDRANS', '', '06 22 10 84 46', '', '02/05/1971', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(104, '00010248', 0, 'CHARDIN', 'SEBASTIEN', '10, rue de l''Embard?re', '', '64300', 'LENDRESSE', '', '06 18 74 51 02', '', '13/09/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(105, '00010039', 0, 'CARRASQUET', 'ANDRE', '29, place de la fontaine', '', '64150', 'VIELLESEGURE', '05 59 60 45 60', '', '', '07/12/1957', '', '', '', 'Outilleur', '255 B', '', 'CDI', 1, '200'),
(106, '00010197', 0, 'CASAIL', 'CHRISTOPHE', ' 2, Rue Claude Monet', '', '59229', 'TETEGHEN', '', '06 80 89 16 22', 'christophe.casail@rexam.com', '27/01/1965', '', '', '', 'CTS', 'Cadre', '', 'CDI', 1, '200'),
(107, '00010043', 0, 'CASAMAJOU', 'JEAN BERNARD', '26, rue St-Bart&eacute;l&eacute;my', 'BIXKAIAN                        ', '64130', 'CHERAUTE', '', '06 16 83 27 44', 'jean-bernard.casamajou@rexam.com', '10/09/1973', '', '', '', ' responsable automatisme', '305 F', '', 'CDI', 1, '200'),
(108, '00010040', 0, 'CASANOVA', 'FRANCK', '24, chemin des Meuniers', '1 Lotissement Denot', '64360', 'MONEIN', '', '06 80 11 94 60', '', '17/08/1982', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(109, '00010041', 0, 'CASSOU', 'OLIVIER', '573, chemin Lartigau', '', '64170', 'CESCAU', '05 59 53 90 34', '', '', '18/07/1970', '', '', '', 'Outilleur', '255 E', '', 'CDI', 1, '200'),
(110, '00010203', 0, 'CAZALERE', 'CHRISTELLE', '9, rue Bagn?res', '', '64360', 'ABOS', '', '06 70 04 93 28', 'christelle.cazalere@rexam.com', '09/03/1976', '', '', '', 'Personnel', '255 B', '', 'CDI', 1, '200'),
(111, '00010047', 0, 'CAZANAVE-HOURQUET', 'FERNAND', 'Quartier Lamarquette', '', '64360', 'LUCQ DE BEARN', '05 59 71 69 66', '', '', '03/03/1964', '28-07-2015', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(113, '00010049', 0, 'CHAUSSADAS ', 'JEAN YVES', '1760, Route de Boneh?', '', '64370', 'MESPLEDE', '05 59 67 54 10', '', '', '06/12/1960', '', '', '', 'Contr?leur', '215 D', '', 'CDI', 1, '200'),
(114, '00010050', 0, 'CIOSSE ', 'BRUNO', '9, rue des lannes', '', '64150', 'MOURENX', '', '06 85 91 81 47', 'bruno.ciosse@sfr.fr', '12/12/1970', '', '', '', 'RÃ©gleur', '215 D', '', 'CDI', 1, '200'),
(115, '00010052', 0, 'CLAVE ', ' JEAN PAUL', 'ROUTE DU HAUT UCHA', '', '64360', 'MONEIN', '', '06 81 09 65 09', 'jeanpaul.clave@gmail.com', '27/11/1957', '', '', '', 'RÃ©gleur', '215 G', '', 'CDI', 1, '200'),
(116, '00010053', 0, 'CLAVERIE', 'THIERRY', '27, Chemin de Bertrand', '', '64150', 'NOGUERES', '05 59 71 71 30', '', '', '11/09/1972', '', '', '', 'OpÃ©rateur', '215 E', '', 'CDI', 1, '200'),
(117, '00010054', 0, 'CORNOUILLER', 'JULIEN', 'LES JARDINS DU LUZOUE  36 RUE DU LUZOUE PORTE 201', '', '64150', 'MOURENX', '', '06 79 62 76 09', '', '12/04/1986', '', '', '', 'MÃ©canicien', '240 B', '', 'CDI', 1, '200'),
(118, '00010055', 0, 'CORREIA', 'CHRISTOPHE', '19, rue de l''Ecole', '', '64300', 'MONT', '05 59 69 26 77', '', '', '14/09/1971', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(119, '00010057', 0, 'CUISINIER', 'BORIS', 'Route de LonÃ§on', '', '64450', 'BOURNOS', '05 59 33 82 25', '', '', '27/10/1973', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(120, '00010058', 0, 'DA FONSECA', 'JOSE', 'Camin de la Crotz de Lopin', '', '64150', 'SAUVELADE', '', '06 15 15 40 71', '', '11/11/1975', '', '', '', 'Automaticien', '215 B', '', 'CDI', 1, '200'),
(121, '00010059', 0, 'DA SILVA', 'JOSE', 'chemin de l''Ecole', '', '64150', 'SAUVELADE', '05 59 67 68 32', '', '', '15/08/1973', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(122, '00010060', 0, 'DANTEIN', 'YANNICK', '4, rue Jean Jaures', '', '64800', 'COARRAZE', '', '06 37 88 95 99', '', '16/10/1981', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(123, '00010229', 0, 'DARRACQ', 'ADRIEN', '570, chemin d?partemental 31', '', '64300', 'LABEYRIE', '05 59 67 58 96', '', '', '18/08/1997', '', '', '', 'Stagiaire', '170 A', '', 'CDI', 1, '159'),
(124, '00010061', 0, 'DARRACQ', 'CHRISTOPHE', '570, chemin d&eacute;partemental 31', '', '64300', 'LABEYRIE', '05 59 67 58 96', '', 'christophe.darracq@rexam.com', '17/10/1970', '', '', '', 'Resp. Outil', '305 E', '', 'CDI', 1, '128.5'),
(125, '00010062', 0, 'DARRACQ', 'FREDERIC', '34, chemin de Talabot', '', '40700', 'BEYRIES', '', '06 85 88 15 59', '', '16/08/1972', '', '', '', 'Automaticien', '255 E', '', 'CDI', 1, '200'),
(126, '00010064', 0, 'DARIGUELONGUE', 'CHRISTOPHE', '23, chemin Hia de pere', '', '64300', 'BIRON', '05 59 69 93 77', '', '', '17/05/1979', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(127, '00010206', 0, 'DATHY', 'FRANCK', '8, avenue Marguerite de Navarre', '', '64230', 'LESCAR', '05 59 77 47 20', '', 'franck.dathy@rexam.com', '07/04/1977', '', '', '', 'Resp. Qual', 'Cadre', '', 'CDI', 1, '200'),
(128, '00010065', 0, 'DAUBA ', 'BAPTISTE', '35, Chemin du Bosc', '', '64370', 'ARTHEZ DE BEARN', '', '06 77 47 24 00', 'baptiste.dauba@hotmail.fr', '02/02/1986', '11-07-2008', '', '', 'Automaticien', '255 A', '', 'CDI', 1, '200'),
(129, '00010066', 0, 'DAUBAS', 'MICHEL', 'Chemine Hourquebie', '', '64300', 'SARPOURENX', '05 47 06 07 48', '06-82-69-20-72', '', '07/01/1972', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(130, '00010067', 0, 'DE MIGUEL', 'FELIX', 'Lotissement Latch?re', '', '64130', 'GARENDEIN', '05 59 28 21 94', '', '', '12/12/1955', '', '', '', 'Outilleur', '255 C', '', 'CDI', 1, '200'),
(131, '00010068', 0, 'DE MIJOLLA ', 'HUBERT', '2776, Coteaux de Guindalos', '', '64110', 'JURANCON', '05 59 68 71 86', '', 'hubert.demijolla@rexam.com', '18/08/1956', '', '', '', 'Chef Projet', 'Cadre', '', 'CDI', 1, '200'),
(132, '00010069', 0, 'DECROUE ', 'DIDIER', '2, Cami Bieilh', '', '64170', 'LABASTIDE-CEZERACQ', '05 59 04 15 21', '', 'didier.decroue@rexam.com', '12/11/1968', '', '', '', 'Informaticien', 'Cadre', '', 'CDI', 1, '200'),
(133, '00010070', 0, 'DEL PIANTA ', 'ALEXANDRE', '12, rue du Castera', '', '64150', 'MOURENX', '05 59 71 69 74', '', '', '08/09/1962', '', '', '', 'Outilleur', '255 A', '', 'CDI', 1, '200'),
(134, '00010218', 0, 'DEPUYT ', 'BENOIT', '77, chemin de la Lande', '', '40290', 'MISSON', '', '06 43 30 50 51', 'benoit.depuyt@rexam.com', '14/07/1976', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(136, '00010072', 0, 'DOLLE ', 'LAURENT', '80, Cemin de Treyti', '', '64370', 'HAGETAUBIN', '05 59 67 52 27', '', '', '21/10/1975', '', '', '', 'OpÃ©rateur', '190 E', '', 'CDI', 1, '200'),
(137, '00010073', 0, 'DRIVON ', 'HAROLD', '714, chemin Eslayas', '', '64300', 'CASTETIS', '', '06 03 87 83 72', 'harold.drivon@rexam.com', '01/01/1971', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(138, '00010074', 0, 'DULAU ', 'EMMANUEL', '238, chemin d''Arrignan', '', '64300', 'SAINT GIRONS EN BEARN', '05 59 67 94 60', '', '', '12/12/1969', '', '', '', 'OpÃ©rateur', '190 A', '', 'CDI', 1, '200'),
(139, '00010077', 0, 'LAGRAULA-DUROU', 'SOPHIE', '50, route de Mimbaste', '', '40180', 'SAUGNACQ ET CAMBRAN', '', '06 86 96 49 60', 'sophie.lagraula@rexam.com', '11/06/1974', '', '', '', 'SecrÃ©taire', '270 A', '', 'CDI', 1, '14.95'),
(140, '00010078', 0, 'DUTILH', 'LILIAN', '10, rue du Luzoue', 'R&eacute;sidence le Luzoue', '64150', 'MOURENX', '05 59 60 14 11', '', '', '22/11/1968', '', '', '', 'rÃ©gleur', '215 F', '', 'CDI', 1, '200'),
(141, '00010079', 0, 'DUVIGNAU', 'PATRICE', '2, impasse des Marguerites', '', '64230', 'DENGUIN', '05 59 68 82 63', '', '', '15/08/1976', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(142, '00010080', 0, 'EL-KANDOUSSI', 'MOHAMED', '3, place du Gabizos', '', '64150', 'MOURENX', '', '06 50 72 20 80', '', '27/10/1965', '', '', '', 'Conducteur', '240 B', '', 'CDI', 1, '200'),
(145, '00010084', 0, 'EUSEBIO', 'MANUEL', '58, Chemin Poublan', '', '64300', 'ARGAGNON', '', '06 22 48 00 60', 'manuel.eusebio@rexam.com', '20/10/1968', '', '', '', 'Resp. MÃ©canique', '305 C', '', 'CDI', 1, '200'),
(146, '00010214', 0, 'FERTOUTI', 'MUSTAPHA', '32, rue du Luzoue', '', '64150', 'MOURENX', '', '06 20 41 91 81', 'mustapha.fertouti@rexam.com', '19/07/1969', '', '', '', 'Exp?ditions', '225 A', '', 'CDI', 1, '200'),
(147, '00010085', 0, 'FOLIN', 'MICKAEL', '4, route de Puyet', '', '64370', 'ARTHEZ DE BEARN', '', '07 86 16 09 90', '', '19/06/1986', '', '', '', 'OpÃ©rateur', '190 E', '', 'CDI', 1, '200'),
(148, '00010087', 0, 'FONSECA', 'PHILIPPE', '39, domaine de la Ch?nerie', '', '64170', 'ARTIX', '', '06 77 88 90 68', '', '03/09/1983', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(149, '00010088', 0, 'FOURNIER', 'DOMINIQUE', 'Quartier Pont du Joss', '', '64190', 'PRECHACQ-JOSBAIG', '', '06 83 09 23 30', 'dominique.fournier@rexam.com', '24/07/1963', '', '', '', 'Chef de Poste', '285 C', '', 'CDI', 1, '200'),
(150, '00010089', 0, 'FOURQUET', 'GILLES', 'Quartier des Yolettes', '', '64360', 'MONEIN', '05 59 21 41 26', '', 'gilles.fourquet@rexam.com', '01/05/1966', '', '', '', 'Resp. Prod', 'Cadre', '', 'CDI', 1, '200'),
(151, '00010090', 0, 'GALLARDO', 'FREDERIC', 'Route de Casteide-Candau', '', '64410', 'ARGET', '', '06 42 96 33 41', '', '14/11/1981', '', '', '', 'MÃ©canicien', '255 C', '', 'CDI', 1, '200'),
(152, '00010091', 0, 'GIACOMIN', 'JEAN-LOUIS', '70, Chemin de Lahonce', '', '40360', 'POMAREZ', '05 58 89 88 03', '', '', '15/11/1959', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '200'),
(153, '00010092', 0, 'GONCALVES NEIVA ', 'FREDERIC', 'Chemin des Ecoles', '', '64150', 'SAUVELADE', '05 59 67 30 46', '', '', '13/03/1979', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(154, '00010093', 0, 'GRACIET ', 'PATRICK', '298, route de Lucq de B?arn', '', '64150', 'LAHOURCADE', '', '06 72 33 04 54', 'patrick.graciet@rexam.com', '12/06/1958', '', '', '', 'ExpÃ©ditions', '225 G', '', 'CDI', 1, '200'),
(155, '00010094', 0, 'GUION ', 'JEAN MARC', '64, Cami de la Houn', '', '64300', 'SAULT DE NAVAILLES', '', '06 84 65 18 70', 'jeanmarcguion@yahoo.fr', '04/12/1971', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(156, '00010247', 0, 'GUYON ', 'MATTHIEU', '12, Rue des Pyr&eacute;n&eacute;es', '', '64230', 'DENGUIN', '', '06 16 99 64 70', '', '17/11/1981', '', '', '', 'OpÃ©rateur', '190 A', '', 'CDI', 1, '200'),
(157, '00010096', 0, 'HOSTENDIE', 'PATRICK', '6, Place du Pic d''Anie', 'R?sidence Les Arres d''Anie', '64150', 'MOURENX', '', '06 14 58 02 36', '', '07/05/1965', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(158, '00010097', 0, 'HOUIS', ' JEAN FRANCOIS', '34, Av Mar&eacute;chal Joffre', '', '64150', 'MOURENX', '', '06 72 68 15 88', 'jeff964@hotmail.fr', '13/09/1978', '', '', '', 'Automaticien', '255 A', '', 'CDI', 1, '200'),
(159, '00010098', 0, 'HOURDILLE', 'THERESE', '14, rue de Bitete', '', '64400', 'OLORON SAINTE MARIE', '', '06 74 33 97 62', 'therese.hourdille@rexam.com', '11/12/1966', '', '', '', 'Magasin', '255 B', '', 'CDI', 1, '200'),
(160, '00010100', 0, 'HYGEN', 'DOMINIQUE', 'Quartier Camou', '', '64150', 'MOURENX-BOURG', '', '06 81 72 91 63', '', '22/01/1959', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '177.5'),
(161, '00010101', 0, 'JACKOWSKI', 'LIONEL', '380 Route de SAINT MEDARD', '', '64370', 'HAGETAUBIN', '0559672849', '06 85 46 11 88', 'lionel.jackowski@rexam.com', '27/01/1972', '', '', '', 'Chef de Poste', '285 B', '', 'CDI', 1, '200'),
(162, '00010102', 0, 'JAUREGUIBERRY ', 'BRUNO', '1715, chemin du Cami Sali&eacute;', '', '64710', 'LABASTIDE MONREJEAU', '', '06 87 91 22 78', '', '30/10/1974', '', '', '', 'mÃ©canicien', '240 C', '', 'CDI', 1, '200'),
(163, '00010103', 0, 'JIMENEZ ', 'FREDERIC', '3, rue du vieux lavoir', '', '64150', 'MOURENX', '', '06 98 26 48 41', '', '07/04/1969', '', '', '', 'Gestionnaire', '215 D', '', 'CDI', 1, '200'),
(164, '00010234', 0, 'JOUANNES ', 'MAXIMILIEN', '42, rue Bergou?', '', '64370', 'ARTHEZ DE BEARN', '', '06 72 70 26 61', '', '25/07/1990', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(165, '00010219', 0, 'JUNGAS ', 'CELINE', 'Quartier Ucha, Chemin Tauzy', '', '64300', 'MONEIN', '', '06 24 56 89 99', 'celine.jungas@rexam.com', '07/01/1983', '', '', '', 'Resp. HSE', 'Cadre', '', 'CDI', 1, '200'),
(166, '00010230', 0, 'KOCIS', 'SARAH', '23, rue Bernadotte', '', '64000', 'PAU', '', '06 68 83 42 42', 'sarah.kocis@rexam.com', '30/12/1983', '', '', '', 'RH', 'Cadre', '', 'CDI', 1, '200'),
(167, '00010105', 0, 'LABAT', 'FREDERIC', 'Chemin de la Campagne', '', '64190', 'SUSMIOU', '', '06 73 70 25 25', '', '24/10/1970', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(168, '00010106', 0, 'LABOURDETTE', 'PIERRE', 'Quartier Lafontan', '', '64410', 'ARZACQ', '05 59 04 57 12', '', '', '17/06/1954', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(169, '00010107', 0, 'LACABARATS  ', 'BERTRAND', '5, impasse des Pyr&eacute;n&eacute;es', '', '64300', 'MASLACQ', '', '06 07 51 32 50', '', '02/10/1982', '', '', '', 'OpÃ©rateur', '190 D', 'Salari&eacute; d&eacute;c&eacute;d&eacute;, ne pas supprimer sa fiche car sa fille a droit aux activit&eacute;s du CE jusqu''&agrave; l''&acirc;ge de 18 ans.', 'CDI', 1, '200'),
(170, '00010108', 0, 'LACABARATS  ', 'GILBERT', 'Route de Puyoo', '', '64270', 'SALIES DE BEARN', '', '06 84 96 88 13', '', '01/03/1958', '', '', '', 'Controleur', '215 A', '', 'CDI', 1, '200'),
(171, '00010109', 0, 'LACARRIEU-HAURAT ', 'JEAN PIERRE', '3, rue Lagrange', '', '64150', 'MOURENX', '05 59 60 21 34', '', '', '16/03/1973', '', '', '', 'OpÃ©rateur', '215 C', '', 'CDI', 1, '200'),
(172, '00010111', 0, 'LACOSTE', 'REMY', 'Bourg', '', '64870', 'ESCOUT', '', '06 30 88 38 36', '', '27/08/1966', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(173, '00010114', 0, 'LADAURADE ', 'FABIEN', '54, avenue du Tonkin', '', '64140', 'LONS', '', '06 24 67 12 30', '', '04/11/1985', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '0'),
(175, '00010116', 0, 'LAHORE-LAHITTE ', '  JEAN .MARC', 'Quartier Larincq', '', '64360', 'MONEIN', '05 59 04 25 39', '', '', '03/06/1965', '', '', '', 'Outilleur', '255 B', '', 'CDI', 1, '200'),
(176, '00010117', 0, 'LAMOTHE ', 'BRUNO', 'Le R&eacute;gent', 'Au Bourg', '40700', 'MANT', '05 58 79 23 53', '', '', '07/01/1967', '', '', '', 'Gestionnaire', '225 C', '', 'CDI', 1, '200'),
(177, '00010118', 0, 'LAMOURE-LABADIE ', 'MICHEL', '99, chemin Poey', '', '64170', 'CESCAU', '', '06 18 92 87 44', '', '12/04/1967', '', '', '', 'Outilleur', '240 B', '', 'CDI', 1, '200'),
(178, '00010119', 0, 'LAMOURET', 'JOEL', '819, route d''Arthez de B?arn', '', '64300', 'CASTETIS', '05 59 67 83 67', '', '', '24/06/1966', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '200'),
(179, '00010120', 0, 'LANOUE', 'LAURENT', '16, rue de la Bielle', '', '64190', 'DOGNEN', '', '06 82 67 33 25', 'laurent.lanoue@rexam.com', '23/03/1972', '', '', '', 'Magasin', '215 C', '', 'CDI', 1, '200'),
(180, '00010122', 0, 'LASSOURREILLE', 'ALEXANDRE', '49, rue Lapeyrere', '', '64300', 'ORTHEZ', '', '06 72 92 46 13', '', '30/08/1980', '', '', '', 'Gestionnaire', '215 E', '', 'CDI', 1, '200'),
(181, '00010123', 0, 'LAVALLARD ', 'CHRISTOPHE', '4, rue du vieux lavoir', '', '64150', 'MOURENX', '05 59 71 63 04', '', '', '27/05/1962', '', '', '', 'RÃ©gleur', '215 F', '', 'CDI', 1, '200'),
(182, '00010125', 0, 'LEHMANN ', 'GERARD', '28, Cote du Mouscar', '', '64110', 'ST FAUST', '', '06 03 10 08 49', '', '25/05/1962', '', '', '', 'MÃ©canicien', '240 B', '', 'CDI', 1, '200'),
(183, '00010126', 0, 'LOPEZ  ', 'ISMAEL', '91, rue Honor&eacute; de Balzac', '', '64170', 'ARTIX', '', '06 18 32 29 10', '', '20/09/1979', '', '', '', 'Gestionnaire', '225 B', '', 'CDI', 1, '125.75'),
(184, '00010127', 0, 'LOPEZ  ', 'OLIVIER', '1, rue de Lannes', '', '64150', 'MOURENX', '', '06 73 03 54 24', '', '06/09/1986', '', '', '', 'Automaticien', '240 C', '', 'CDI', 1, '200'),
(185, '00010246', 0, 'LORILLOT', 'MARIO', '5, Avenue Pasteur', '', '64150', 'MOURENX', '', '06 78 28 88 71', '', '16/01/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(186, '00010129', 0, 'LUBEREILH', 'ROGER', '3, impasse des vignes', 'Lotissement le Prince', '64170', 'ARTIX', '05 59 71 54 46', '', '', '19/05/1957', '', '', '', 'Outilleur', '255 C', '', 'CDI', 1, '200'),
(187, '00010130', 0, 'LUPIAC', 'CLAUDE', '3 rue de la Carrere', 'Quartier Os', '64150', 'OS MARSILLON', '05 59 60 29 28', '', 'lupiac.claude@neuf.fr', '24/12/1963', '', '', '', 'OpÃ©rateur', '215 E', '', 'CDI', 1, '200'),
(188, '00010131', 0, 'LUZIER', 'JOFFREY', '15, route de Bayonne', ' Appt. 64 R&eacute;s. Wellington', '64140', 'BILLERE', '', '06 60 77 97 96', '', '23/11/1975', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(189, '00010132', 0, 'MAIRAL', 'JULIEN', 'Chemin Deus Esquiots', '', '64360', 'PARBAYSE', '', '06 17 53 05 31', '', '13/02/1984', '', '', '', 'MÃ©canicien', '240 C', '', 'CDI', 1, '200'),
(190, '00010133', 0, 'MALABAT', 'MICHEL', '6, route de PAU', '', '64360', 'ABOS', '05 59 60 03 16', '', '', '04/11/1964', '', '', '', 'Controleur', '190 C', '', 'CDI', 1, '200'),
(191, '00010134', 0, 'MARATRAT', 'AMANDINE', '4, impasse St Pierre', '', '64360', 'MONT', '', '06 40 94 70 87', 'amandu64@live.fr', '22/08/1988', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(192, '00010135', 0, 'MARLADOT', 'OLIVIER', 'Quartier Galoubet', 'Vieille Route de Castetarbe', '64300', 'ORTHEZ', '05 59 67 16 11', '', '', '06/01/1971', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(193, '00010228', 0, 'MARTET', 'BRICE', '7, rue de la cournere', '', '64150', 'os marsillon', '', '06 99 47 68 73', 'brice.40@hotmail', '31/07/1995', '01-09-2015', '', '', 'conducteur', '190A', '', 'cdi', 1, '200'),
(194, '00010137', 0, 'MARTINEZ', 'ALAIN', '15, rue du muguet', '', '64150', 'PARDIES', '', '06 37 52 81 75', '', '02/01/1961', '', '', '', 'ContrÃ´leur', '255 C', '', 'CDI', 1, '200'),
(195, '00010138', 0, 'MARTINS DE LIMA', 'PAUL', 'Rue Ingres', 'Lotissement Lous Mesples n &deg;1', '64170', 'ARTIX', '05 59 83 20 45', '', '', '18/06/1981', '', '', '', 'CONDUCTEUR REGLEUR', '215 B', '', 'CDI', 1, '200'),
(196, '00010232', 0, 'MARTINS DE LIMA', 'CHRISTOPHE', 'Rue Ingres', 'Lotissement Lous Mesples n&deg;1', '64170', 'ARTIX', '', '06 40 22 46 07', '', '15/08/1990', '', '', '', 'OpÃ©rateur', '190 B', '', 'CDI', 1, '200'),
(197, '00010139', 0, 'MASSE ', 'JORIS', 'Place St Pierre', 'Appt. 2', '64300', 'MONT', '', '06 73 64 78 52', '', '22/10/1985', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(198, '00010140', 0, 'MASSEY', 'YAN', '10, chemin Mirassou', '', '64150', 'LAGOR', '', '06 61 29 28 86', 'yanmassey@hotmail.com', '07/10/1980', '', '', '', 'Outilleur', '240 B', '', 'CDI', 1, '200'),
(199, '00010141', 0, 'MAURY', 'PHILIPPE', '67, rue Moncade', '', '64300', 'ORTHEZ', '', '06 10 67 76 17', '', '25/07/1963', '', '', '', 'OpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(200, '00010240', 0, 'MAZURIER', 'SYLVIE', '20, avenue de Saragosse', '', '64000', 'PAU', '', '06 18 65 49 49', '', '26/05/1967', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(202, '00010144', 0, 'MILAGE  ', 'ANDRE', '1 LOTISSEMENT LE LUSSET', '', '64190', 'NAVARRENX', '05 59 38 68 46', '07- 81-04-93-58', '', '24/08/1960', '', '', '', 'Cariste', '170 G', '', 'CDI', 1, '200'),
(203, '00010143', 0, 'MILAGE  ', 'CHRISTIAN', 'Residence du Parc', 'Batiment B -Porte n?8', '64300', 'ORTHEZ', '05 59 69 14 54', '', '', '21/04/1951', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '127.5'),
(204, '00010143', 0, 'MOLENAT', 'STEPHANE', '7, chemin de Nogu&egrave;res', '', '64150', 'MOURENX BOURG', '', '06 98 28 08 31', 'molenat.stephane@gmail.com', '11/10/1984', '', '', '', 'OpÃ©rateur', '215 A', '', 'CDI', 1, '200'),
(205, '00010144', 0, 'MORRAL', 'JEREMIE', '142, chemin de Vergez', '', '64150', 'LAHOURCADE', '', '06 27 21 39 47', 'jeremie.morral@hotmail.fr', '26/03/1980', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(206, '00010148', 0, 'MOURCEL', 'THIERRY', '7, rue St Vincent de Paul', '', '64150', 'MOURENX', '', '06 70 06 94 99', '', '02/06/1969', '', '', '', 'MÃ©canicien', '240 B', '', 'CDI', 1, '200'),
(207, '00010150', 0, 'MOUSQUES DIT CABANOT ', 'FREDERIC', '9, rue Bagn?res', '', '64360', 'ABOS', '', '06 32 36 61 12', '', '21/12/1979', '', '', '', 'Automaticien', '255 B', '', 'CDI', 1, '200'),
(208, '00010149', 0, 'MOUSQUES DIT CABANOT ', 'STEPHANE', '9, rue des Lannes', '', '64150', 'MOURENX', '05 59 60 40 58', '', '', '26/02/1974', '', '', '', 'RÃ©gleur', '215 F', '', 'CDI', 1, '200'),
(209, '00010227', 0, 'MOUZAT', 'MORGANE', '44, rue de Nogaro', '', '64000', 'PAU', '', '06 66 40 27 96', 'morgane.mouzat@rexam.com', '02/09/1987', '', '', '', 'Comptabilit?', '170 A', '', 'Contrat Pro', 1, '200'),
(210, '00010151', 0, 'MUNOZ', 'ANTONIO', '17, rue des Mimosas', 'Bat G Appt. G01', '64230', 'LESCAR', '', ' 06 64 91 76 28', '', '18/12/1967', '', '', '', 'Controleur', '190 E', '', 'CDI', 1, '200'),
(211, '00010152', 0, 'NARDOZZI', 'JEREMY', 'Chemin des Cr&egrave;tes', '', '64150', 'VIELLESEGURE', '', '06 32 65 53 41', '', '22/03/1984', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(212, '00010245', 0, 'NAVAILLES ARGENTA', 'FLORIAN', '14, Chemin Moureu', '', '64150', 'MOURENX', '', '06 83 97 96 10', '', '01/03/1993', '', '', '', 'OpÃ©rateur', '190 A', '', 'CDI', 1, '200'),
(213, '00010212', 0, 'NICOLAS', 'ANNE-CATHERINE', '883, rue de France', '', '64300', 'SAULT DE NAVAILLES', '', '06 70 11 43 62', '', '13/05/1978', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(214, '00010153', 0, 'NIMHAOULIN', 'BRAHIM', '11 Lot. Couleur Arc-en-ciel', '', '64230', 'ARBUS', '', '06 61 39 45 78', '', '15/12/1971', '', '', '', 'RÃ©gleur', '215 E', '', 'CDI', 1, '200'),
(215, '00010154', 0, 'NIMHAOULIN', 'OMAR', '2800, route d''Hagetaubin', '', '64370', 'ST MEDARD', '', '06 72 87 38 82', '', '15/03/1979', '', '', '', 'Controleur', '215 B', '', 'CDI', 1, '200'),
(216, '00010155', 0, 'NOUSTY', 'GILLES', '1, impasse Daniel Lafore', 'Appt. n&deg; 2', '64300', 'ORTHEZ', '05 59 21 35 51', '', '', '17/05/1986', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(217, '00010156', 0, 'NOUZILLE', 'ALAIN', 'Les Mimosas Cidex 5', '', '64230', 'ARTIGUELOUVE', '05 59 83 13 53', '', 'alain.nouzille@rexam.com', '24/11/1957', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(218, '00010158', 0, 'PAGES', 'CHRISTIAN', '11, Chemin d''Aman', '', '64370', 'ARTHEZ DE BEARN', '05 59 67 78 52', '', '', '15/10/1959', '', '', '', 'QpÃ©rateur', '215 D', '', 'CDI', 1, '200'),
(219, '00010159', 0, 'PALAS', 'JULIEN', '5, Av de la R&eacute;publique', '', '64140', 'BILLERE', '', '06 30 97 35 45', '', '11/01/1984', '', '', '', 'OpÃ©rateur', '190 D', '', 'CDI', 1, '200'),
(220, '00010160', 0, 'PASTOUREU', 'GILLES', '2, chemin Carere', '', '64150', 'VIELLESEGURE', '', '06 45 40 52 29', '', '04/01/1968', '', '', '', 'Controleur', '215 D', '', 'CDI', 1, '200'),
(221, '00010235', 0, 'PEQUIGNET', 'ALEXANDRE', '54, rue Saint-Pierre', '', '64300', 'ORTHEZ', '', '06 03 88 73 06', '', '18/05/1992', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(223, '00010162', 0, 'PERALTA  ', 'JORDI', '11, rue de Las Bignes', '', '64300', 'MONT', '', '06 27 82 05 85', 'marsbord@hotmail.com', '13/02/1980', '', '', '', 'OpÃ©rateur', '215 B', '', 'CDI', 1, '200'),
(224, '00010165', 0, 'POUBLAN  ', 'ANDRE', '32, rue principale', '', '64360', 'TARSACQ', '05 59 60 06 34', '', '', '04/08/1973', '', '', '', 'Controleur', '215 F', '', 'CDI', 1, '200'),
(225, '00010166', 0, 'POUBLAN  ', 'ERIC', '32, rue principale', '', '64360', 'TARSACQ', '05 59 04 85 99', '', '', '08/07/1975', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '200'),
(226, '00010167', 0, 'PUYOO', 'GILLES', '12 bis, rue Labarraque', 'RÃ©sidence Bellevue', '64400', 'OLORON SAINTE MARIE', '05 59 34 37 76', '06 45 79 88 02', 'gillespuyoo@orange.fr', '11/05/1971', '03-04-2008', '', '', 'Conducteur', '190 D', '', 'CDI', 1, '200'),
(228, '00010169', 0, 'REBOUCO  ', 'JOSE', '2, rue du Pic d''Anie', '', '64150', 'MOURENX', '05 59 71 68 20', '', '', '27/04/1969', '', '', '', 'MÃ©canicien', '240 C', '', 'CDI', 1, '200'),
(229, '00010244', 0, 'REBOUCO  ', 'LOIC', '2, rue du Pic d''Anie', '', '64150', 'MOURENX', '', '06 69 91 84 98', '', '22/03/1996', '', '', '', 'Op?rateur', '190 A', '', 'CDI', 1, '200'),
(230, '00010170', 0, 'REMY', ' JEAN MARC', 'Route de Lucq de B?arn', '', '64150', 'LAHOURCADE', '05 59 60 04 70', '', '', '18/08/1966', '', '', '', 'Gestionnaire', '225 E', '', 'CDI', 1, '200'),
(231, '00010171', 0, 'RENAUD', 'ERIC', '59, impasse du Cast?rot', '', '64170', 'ARTIX', '05 59 71 53 30', '', '', '29/03/1967', '', '', '', 'RÃ©gleur', '215 F', '', 'CDI', 1, '200'),
(232, '00010213', 0, 'RIAHI', 'ABDEL - HAKIM', '1 Avenue de Monein', '', '64150', 'MOURENX', '', '06-11-07-51-25', '', '07/09/1987', '', '', '', 'OpÃ©rateur', '190 B', '', 'CDI', 1, '200'),
(233, '00010172', 0, 'RIBEIRO LOPES ', 'ALBINO', '3, chemin de la Houn Dou Cagot', '', '64150', 'ARTHEZ DE BEARN', '05 59 71 63 45', '', '', '29/01/1973', '', '', '', 'Controleur', '215 F', '', 'CDI', 1, '200'),
(234, '00010173', 0, 'ROMAIN', 'SERGE', '19, rue Matachot', '', '64300', 'ORTHEZ', '', '06 71 56 39 79', '', '15/03/1957', '', '', '', 'OpÃ©rateur', '190 B', '', 'CDI', 1, '200'),
(235, '00010174', 0, 'ROSE', 'DOMINIQUE', '4, rue Jacques Duclos', '', '64150', 'MOURENX', '05 59 60 10 53', '', '', '15/07/1969', '', '', '', 'RÃ©gleur', '215 F', '', 'CDI', 1, '200'),
(236, '00010175', 0, 'ROSSI', 'EDWIGE', '42, chemin de Puyet', 'Cedex 11 A', '64230', 'DENGUIN', '05 59 68 80 10', '', 'edwige.rossi@rexam.com', '19/05/1947', '', '', '', 'Secretaire', '255 B', '', 'CDI', 1, '200'),
(237, '00010177', 0, 'ROUSSEFF', 'PATRICK', '1570, chemin du Moulin', '', '64370', 'CASTEIDE-CANDAU', '', '06 03 86 03 26', '', '12/12/1963', '', '', '', 'Cariste', '170 F', '', 'CDI', 1, '200'),
(238, '00010179', 0, 'RUFFAT ', 'JONATHAN', '617, route du Bourgadot', '', '40330', 'NASSIET', '05 58 89 13 27', '', '', '19/08/1983', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '200'),
(239, '00010180', 0, 'SAINT-MARTIN', 'ERIC', '3, chemin du Nougue', '', '64370', 'ARTHEZ DE BEARN', '', '06 74 38 22 38', '', '12/09/1971', '', '', '', 'Op?rateur', '215 D', '', 'CDI', 1, '200'),
(240, '00010182', 0, 'SALIOU', 'REGIS', '10, lotissement des Moulins', '', '64360', 'MONEIN', '', '06 34 10 38 00', 'rege64@hotmail.fr', '24/06/1975', '', '', '', 'R?gleur', '215 F', '', 'CDI', 1, '200'),
(241, '00010183', 0, 'SALVA', 'YOHAN', '1, Chemin Barr?re', '', '64150', 'VIELLESEGURE', '', '06 30 96 45 56', 'yohanrexam@sfr.fr', '26/11/1979', '', '', '', 'Automaticien', '255 B', '', 'CDI', 1, '200'),
(242, '00010216', 0, 'SARRIEU', 'DAVID', '26, avenue des Magnolias', '', '64320', 'LEE', '', '06 37 49 13 39', 'david.sarrieu@rexam.com', '14/09/1972', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(244, '00010185', 0, 'SEGRODNICK ', 'LEANDRICK', 'Chemin Mirassou', '', '64150', 'LAGOR', '', '06 25 05 80 21', '', '16/06/1977', '', '', '', 'Op?rateur', '215 A', '', 'CDI', 1, '114.275'),
(245, '00010186', 0, 'SIFREU', 'FLORIAN', '6, all?e Gauguin', '', '64150', 'MOURENX', '05 59 67 44 91', '', 'florian.sifreu@rexam.com', '11/11/1958', '', '', '', 'Tech. Qualit?', '255 C', '', 'CDI', 1, '166'),
(246, '00010237', 0, 'TALL', 'MOMAR', '20, rue du Marbor?', '', '64000', 'PAU', '', '06 25 85 86 84', 'momar.tall@rexam.com', '28/04/1983', '', '', '', 'Resp. Techniques', 'Cadre', '', 'CDI', 1, '200'),
(247, '00010187', 0, 'THIBAUT', 'MICHEL', '5, rue Gui de Lons', 'Parc le Bilaa', '64230', 'LESCAR', '05 59 32 01 46', '', 'michel.thibaut@rexam.com', '16/05/1951', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(248, '00010236', 0, 'TISNES', 'MARION', '7, Chemin de las Probes', '', '64230', 'SIROS', '', '06 61 16 44 34', '', '22/05/1996', '', '', '', 'Automaticien', '170 A', '', 'Stagiaire', 1, '200'),
(249, '00010188', 0, 'TLICH', 'SLIM', '6, all?e Fr?d?rico Garcia Lorca', '', '64150', 'MOURENX', '05 59 60 32 78', '', '', '26/08/1974', '', '', '', 'Op?rateur', '190 B', '', 'CDI', 1, '200'),
(250, '00010189', 0, 'TOULET', 'PATRICK', 'Route de Lucq de B?arn', '', '64150', 'LAHOURCADE', '05 59 60 09 81', '', '', '11/06/1966', '', '', '', 'Op?rateur', '215 C', '', 'CDI', 1, '200'),
(251, '00010190', 0, 'TREYTURE-HAYET ', 'THIERRY', '90, Chemin de Treyti', '', '64370', 'HAGETAUBIN', '', '06 15 97 02 12', 'thierry.treyture-hayet@rexam.com', '12/01/1960', '', '', '', 'Chef de Poste', '285 B', '', 'CDI', 1, '200'),
(252, '00010191', 0, 'TRIPICCHIO ', ' JEAN PIERRE', '1, rue des jonquilles', 'Lotissement du Ch?teau', '64360', 'MONEIN', '05 59 21 27 02', '', '', '12/11/1970', '', '', '', 'Op?rateur', '190 D', '', 'CDI', 1, '179.39'),
(253, '00010192', 0, 'URRUTY ', 'MICHEL', '11, chemin Las Barthes', '', '64300', 'BIRON', '05 59 67 01 44', '', '', '08/05/1956', '', '', '', 'Automaticien', '255 C', '', 'CDI', 1, '200'),
(254, '00010241', 0, 'VEDRENNE', 'JOELLE', '35, Route de Parbayse', '', '64230', 'ARBUS', '', '06 03 47 38 73', '', '11/01/1978', '', '', '', 'Contr?leur', '190 B', '', 'CDI', 1, '200'),
(255, '00010193', 0, 'VERON', 'DIDIER', '4, Chemin Mirassou', 'Quartier Benzy', '64150', 'LAGOR', '05 59 71 57 04', '', 'didier.veron@rexam.com', '21/02/1958', '', '', '', 'Chef de Poste', '285 B', '', 'CDI', 1, '200'),
(256, '00010242', 0, 'VIATEAU', 'REMI', '1, All?e Lamartine', '', '64150', 'MOURENX', '', '06 85 92 93 99', '', '23/10/1995', '', '', '', 'Contr?leur', '190 A', '', 'CDI', 1, '200'),
(257, '00010195', 0, 'VIGIER', 'PASCAL', '14, av du Loup', 'R?sidence La Benoue', '64000', 'PAU', '05 59 02 72 75', '', 'pascal.vigier@rexam.com', '21/07/1958', '', '', '', 'Dir. Financier', 'Cadre', '', 'CDI', 1, '200'),
(258, '00010223', 0, 'VILLAYES ', 'FLORIAN', '17, rue des Mimosas', 'R?s. Les Albizzias - Appt. C 101', '64230', 'LESCAR', '', '06 72 66 01 41', 'florian.villayes@rexam.com', '17/10/1987', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(259, '00010225', 0, 'WHALES ', 'STEPHEN', '3, rue Gabriel Faur?', '', '64230', 'LESCAR', '', '06 76 78 11 79', 'stephen.whales@rexam.com', '28/07/1980', '', '', '', 'Enginneering', 'Cadre', '', 'CDI', 1, '200'),
(260, '00010249', 0, 'ANDRE-GUERN', 'FLORIAN', '', '', '64000', 'PAU', '', '', 'florian.andre-guern@rexam.com', '12/04/1986', '', '', '1', 'ENGINEERING', 'CADRE', '', 'CDI', 1, '200'),
(261, '00010250', 0, 'HOURCADETTE', 'Nicolas', '49, Chemin PÃ©noulie', 'Quartier Lassabaigt', '64150', 'LAHOURCADE', '', '06.77.70.17.61', 'nicolas.hourcadette@gmail.com', '14-06-1991', '01-02-2015', '', '1', 'ContrÃ´leur', '190A', '', 'CDI', 1, '200'),
(262, '00010251', 0, 'GUERIN', 'JEREMY', '10 ROUTE DU CAGNES', '', '64370', 'ARTHEZ DE BEARN', '05.59.67.78.39', '06.69.44.15.30', 'Jeremy.guerin@outlook.fr', '10-09-1995', '01-07-2015', '', '1', 'conducteur', '190 A', '', 'cdi', 1, '200'),
(263, '00010255', 0, 'TURPAULT', 'NICOLAS', '38 PLACE DU GENERAL DE GAULLE', '', '64170', 'ARTIX', '', '06.20.63.08.05', 'turpault82@gmail.com', '09-03-1979', '01-07-2015', '', '1', 'conducteur', '190 A', '', 'CDI', 1, '200'),
(264, '00010252', 0, 'SOULIER', 'THOMAS', '326 CHEMIN RAPHAEL LONNE', '', '40380', 'MONFORT EN CHALOSSE', '', '06.79.42.84.95', 'soulier.thomas@aol.com', '1991', '01-07-2015', '', '1', 'CONDUCTEUR', '190.A', '', 'CDI', 1, '200'),
(265, '00010253', 0, 'GIACOMINI', 'BASILE', '22 ROUTE DU HAMEAU', '', '64230', 'DENGUIN', '05.59.68.62.74', '06.29.37.15.41', 'giacomini@yahoo.fr', '03-01-1987', '01-07-2015', '', '1', 'MECANICIEN', '240-A', '', 'CDI', 1, '182'),
(267, '00010254', 0, 'TOMASSI', 'FABIEN', '19 CHEMIN DE BENZY', '', '64150', 'LAGOR', '', '06 71 84 31 07', 'fab.tomassi@hotmail.fr', '11-10-1985', '15-09-2015', '', '1', 'Automaticien', '215 A', '', 'CDI', 1, '200'),
(268, '00010257', 0, 'GUITARD', 'Aur&eacute;lia', '70 Chemin de Mouret', '', '64370', 'HAGETAUBIN', '', '06.88.90.48. 93', 'aurÃ©lia.guitard@sfr.fr', '17-02-1980', '01-12-2015', '', '1', 'ContrÃ´leur', '190 A', '', 'CDI', 1, '200'),
(269, '00010256', 0, 'CASSIAU-HAURIE', 'ARNAUD', '19 RUE DE LA CARRERE', '', '64300', 'BIRON', '', '06-12-39-94-86', 'jerome.cassiauhaurie@sfr.fr', '10-12-1998', '01-09-2015', '', '1', 'mÃ©cano', '170A', '', 'Apprenti', 1, '200'),
(270, '00010414', 0, 'LABARERE', 'MARIE', 'CHEMIN D''ANGOUSTURE', '', '64360', 'MONEIN', '', '06-81-37-62-49', 'm.labarere@laposte.net', '29-10-1994', '', '', '1', '', '', '', 'contrat pro', 1, '200'),
(271, '00010416', 0, 'PUERTAS', 'LUCILE', '1 RUE DES LANNES , VILLA n&deg;13', '', '64150', 'MOURENX', '', '06-78-08-21-41', 'lucile.puertas@gmail.com', '19-01-1989', '', '', '1', 'RH', '', '', 'contrat pro', 1, '172.575'),
(272, '00010412', 0, 'BENZIN', 'DYLAN', 'Route d''ARTHEZ DE BEARN', '', '64370', 'ARTHEZ DE BEARN', '', '', '', '11-10-1997', '', '', '1', '', '170A', '', 'Contrat pro', 1, '200'),
(273, '00010418', 0, 'ROXO', 'JORIS', '6 ,  RUE DE L''EGLISE', '', '64300', 'MASLACQ', '', '06 72 51 64 06', 'familleroxo@hotmail.com', '24-08-1991', '01-02-2016', '', '1', 'CONDUCTEUR', '190 A', '', 'CDI', 1, '200.00'),
(274, '00010423', 0, 'WOELFFLIN', 'Bastien', '17, Rue des MIMOSAS', 'Appt A 106', '64230', 'LESCAR', '', '0680527940', 'woelfflin.bastien@orange.fr', '17-03-1992', '01-02-2016', '', '1', 'Conducteur', '190A', '', 'CDI', 1, '200'),
(275, '00010422', 0, 'COURREGES', 'William', '28, Avenue d''ASPE', '', '64400', 'BIDOS', '', '0615640976', 'courregesc@neuf.fr', '26-06-1995', '01-02-2016', '', '1', 'Conducteur', '190A', '', 'CDI', 1, '200'),
(276, '00010222', 0, 'BENZIN', 'KEVIN', '5, Route d''Arthez de B&eacute;arn', '', '64370', 'ARTHEZ DE BEARN', '', '0786761313', '', '14-11-1994', '01-01-2016', '', '1', 'Automaticien', '190A', '', 'CDI', 1, '200');

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
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
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
  MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
  MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
  MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
  MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
  MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT;
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
  MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
  MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
  MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
  MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
  MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
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
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
