-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2016 à 15:13
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cegeantanjou`
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

--
-- Contenu de la table `achat_presta`
--

INSERT INTO `achat_presta` (`idachatpresta`, `date_achat`, `idprestation`, `qte`, `total_achat`, `num_mouvement`) VALUES
(7, '28-01-2016', 14, '50', '340', '6683966662'),
(8, '28-01-2016', 15, '15', '114', '9586267541'),
(9, '', 17, '1', '13.5', '6420729314'),
(14, '18-01-2016', 25, '90', '90', '5000803885'),
(15, '', 17, '6', '87', '2321156427'),
(16, '02-02-2016', 15, '10', '76', '8742266576'),
(17, '09-02-2016', 15, '10', '76', '7261239565');

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
(14, 2, 'Ajout du produit fixe: REPORT SOLDES 2016', '', '10351.00', '7291328902'),
(15, 1, 'Ajout de la charge Fixe: GEANT CASINO COLIS NOEL', '5980', '', '8295690543'),
(16, 2, 'Vente de Billetterie: DECOSSE YANICK pour la prestation CINEMA CINEVILLE', '', '40', '798987461'),
(17, 2, 'Vente de Billetterie: JOLAS LAURENT pour la prestation CINEMA CINEVILLE', '', '15', '780887791'),
(18, 2, 'Vente de Billetterie: SECHER BRUNO pour la prestation CINEMA CINEVILLE', '', '30', '34732327'),
(19, 2, 'Vente de Billetterie: BERTHELOT BENOIT pour la prestation CINEMA CINEVILLE', '', '10', '894743795'),
(20, 2, 'Vente de Billetterie: MONTET JEAN PIERRE pour la prestation CINEMA GAUMONT', '', '18', '513904074'),
(21, 2, 'Vente de Billetterie: JOULAIN RENE pour la prestation CINEMA GAUMONT', '', '36', '116411897'),
(22, 2, 'Vente de Billetterie: FOUCHARD MICHELLE pour la prestation CINEMA GAUMONT', '', '36', '162531952'),
(23, 2, 'Vente de Billetterie: PLANTINET CATHERINE pour la prestation CINEMA GAUMONT', '', '24', '223832492'),
(24, 2, 'Vente de Billetterie: RIPOCHE DIDIER pour la prestation CINEMA GAUMONT', '', '36', '222795939'),
(25, 2, 'Vente de Billetterie: ROGER SANDRA pour la prestation CINEMA CINEVILLE', '', '30', '349343360'),
(26, 2, 'Vente de Billetterie: ZITTE NADEGE pour la prestation CEZAM SALARIE', '', '0', '13633308'),
(28, 2, 'Vente de Billetterie: BIGNON STEPHANIE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '13247825'),
(29, 2, 'Vente de Billetterie: ROUSSEAU MIKAEL pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '10911360'),
(30, 2, 'Vente de Billetterie: ALLAIN KATY pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '80918969'),
(31, 2, 'Vente de Billetterie: VERDIER CHRISTIAN pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '36201820'),
(32, 2, 'Vente de Billetterie: DELAUNAY STELLA pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '31492132'),
(34, 2, 'Vente de Billetterie: BERTHELOT BENOIT pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '32162664'),
(35, 2, 'Vente de Billetterie: SOUVERAIN STEPHANE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '13287833'),
(36, 2, 'Vente de Billetterie: MOYA RACHEL pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '57960091'),
(37, 2, 'Vente de Billetterie: POISSONNEAU LAURENT pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '69440252'),
(38, 2, 'Vente de Billetterie: PHELIPPEAU CYRILLE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '49738615'),
(39, 2, 'Vente de Billetterie: LAFFRAY SYLVIE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '58428411'),
(41, 2, 'Vente de Billetterie: BOURGEAIS HELENE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '10987148'),
(42, 2, 'Vente de Billetterie: SOUALHI MARIE HELENE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '11542717'),
(43, 2, 'Vente de Billetterie: PLANTINET CATHERINE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0', '71487912'),
(44, 1, 'Achat: CINEMA CINEVILLE', '340', '', '6683966662'),
(45, 1, 'Achat: CINEMA GAUMONT', '114', '', '9586267541'),
(46, 2, 'Vente de Billetterie: REULIER NICOLAS pour la prestation CINEMA CINEVILLE', '', '30', '385010736'),
(47, 1, 'Achat: KARTING INWALL KART ADULTES LES PONTS DE CE', '13.5', '', '6420729314'),
(48, 2, 'Vente de Billetterie: BERTHELOT BENOIT pour la prestation CINEMA GAUMONT', '', '36', '51735486'),
(49, 2, 'Vente de Billetterie: HUART DOLORES pour la prestation CINEMA CINEVILLE', '', '30', '534024881'),
(50, 2, 'Vente de Billetterie: PHELIPPEAU CYRILLE pour la prestation CINEMA GAUMONT', '', '18', '968934404'),
(51, 2, 'Vente de Billetterie: BERTHELOT BENOIT pour la prestation CINEMA GAUMONT', '', '12', '336932720'),
(52, 2, 'Vente de Billetterie: VERDIER CHRISTIAN pour la prestation FOOTBALL', '', '22', '39554842'),
(58, 2, 'Vente de Billetterie: AUGER VALERIE pour la prestation FOOTBALL - lyon', '', '22', '72003249'),
(59, 2, 'Vente de Billetterie: PHELIPPEAU CYRILLE pour la prestation TOUS SPECTACLES - JEREMY FERRARI', '', '81', '56797797'),
(60, 2, 'Vente de Billetterie: PHELIPPEAU CYRILLE pour la prestation PARTICIPATION NON PERMANENTE - Participation du CE sur Billetterie ', '', '0', '72002421'),
(62, 1, 'Achat: TOUS SPECTACLES', '90', '', '5000803885'),
(63, 2, 'Vente de Billetterie: BERTHELOT BENOIT pour la prestation TOUS PARCS ET VISITES DIVERSES - 2 ENFANTS A 25â‚¬\r\n2 ADULTES A 32 â‚¬\r\nTOTAL 114 â‚¬\r\nREMISE CE 9.60 â‚¬', '', '104.4', '568878055'),
(64, 2, 'Vente de Billetterie: BERTHELOT BENOIT pour la prestation PARTICIPATION NON PERMANENTE - FUTUROSCOPE \r\n\r\n114 - 9.60 = 104.40', '', '0', '685149601'),
(65, 2, 'Vente de Billetterie: DESERT ALEXANDRA pour la prestation TOUS PARCS ET VISITES DIVERSES - 1 PLACE A 3.50\r\nREMISE CE 0.52 E', '', '2.99', '41671626'),
(66, 2, 'Vente de Billetterie: DESERT ALEXANDRA pour la prestation PARTICIPATION NON PERMANENTE - SKOUBI PARC \r\nPRIX 3.50 â‚¬\r\nPRIX PAYE 2.99 â‚¬', '', '0', '22544347'),
(67, 2, 'Vente de Billetterie: AUGER VALERIE pour la prestation TOUS PARCS ET VISITES DIVERSES - SKOUBI PARC\r\n2 PLACES A 3.50 â‚¬\r\nREMISE CE 1.05 â‚¬\r\n', '', '5.95', '23341627'),
(68, 2, 'Vente de Billetterie: AUGER VALERIE pour la prestation PARTICIPATION NON PERMANENTE - SKOUBI PARC\r\nPRIX REEL 7.00 \r\nPRIX CE 5.95', '', '5.95', '431203145'),
(69, 2, 'Vente de Billetterie: PLANTINET CATHERINE pour la prestation CINEMA GAUMONT', '', '18', '550573010'),
(70, 2, 'Vente de Billetterie: LANGLAIS ALAIN pour la prestation CEZAM SALARIE', '', '0', '73924734'),
(71, 2, 'Vente de Billetterie: LANGLAIS ALAIN pour la prestation CEZAM AYANT DROIT', '', '5', '59099189'),
(72, 1, 'Achat: KARTING INWALL KART ADULTES LES PONTS DE CE', '87', '', '2321156427'),
(73, 1, 'Achat: CINEMA GAUMONT', '76', '', '8742266576'),
(74, 2, 'Vente de Billetterie: PLANTINET CATHERINE pour la prestation CINEMA GAUMONT', '', '18', '443794809'),
(75, 2, 'Vente de Billetterie: LHOMMEAU ROMAIN pour la prestation CINEMA GAUMONT', '', '12', '732900966'),
(76, 2, 'Vente de Billetterie: BREHERET KEVIN pour la prestation CINEMA GAUMONT', '', '12', '320917928'),
(77, 2, 'Vente de Billetterie: POISSONNEAU LAURENT pour la prestation CINEMA CINEVILLE', '', '30', '527288022'),
(78, 2, 'Vente de Billetterie: CASTAGNEDE DIDIER pour la prestation CINEMA CINEVILLE', '', '10', '443922399'),
(79, 1, 'Achat: CINEMA GAUMONT', '76', '', '7261239565'),
(80, 2, 'Vente de Billetterie: RICHARD MAGALI pour la prestation KARTING INWALL KART ENFANT LES PONTS DE CE', '', '10', '848752661'),
(81, 2, 'Vente de Billetterie: RICHARD MAGALI pour la prestation KARTING INWALL KART ADULTES LES PONTS DE CE', '', '11', '409341251'),
(82, 2, 'Vente de Billetterie: RICHOMME SOPHIE pour la prestation KARTING INWALL KART ADULTES LES PONTS DE CE', '', '66', '911596546'),
(83, 2, 'Vente de Billetterie: JOUAN CAROLINE pour la prestation CINEMA GAUMONT', '', '24', '629477255');

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

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`, `num_mouvement`, `decremente`) VALUES
(10, 114, '1452553200', 3, '40', 1, '798987461', 1),
(11, 170, '1452294000', 3, '15', 1, '780887791', 1),
(12, 185, '1452466800', 3, '30', 1, '34732327', 1),
(13, 113, '1452812400', 3, '10', 1, '894743795', 1),
(14, 180, '1452898800', 3, '18', 1, '513904074', 1),
(15, 110, '1452898800', 3, '36', 1, '116411897', 1),
(16, 66, '1453158000', 3, '36', 0, '162531952', 1),
(17, 162, '1453158000', 3, '24', 1, '223832492', 1),
(18, 30, '1453158000', 3, '36', 1, '222795939', 1),
(19, 120, '1453330800', 3, '30', 1, '349343360', 1),
(21, 97, '1453762800', 3, '0', 0, '37263151', 0),
(22, 22, '1453762800', 3, '0', 0, '13247825', 0),
(23, 134, '1453762800', 3, '0', 0, '10911360', 0),
(24, 186, '1453762800', 3, '0', 0, '80918969', 0),
(25, 160, '1453762800', 3, '0', 0, '36201820', 0),
(26, 146, '1453762800', 3, '0', 0, '52561560', 0),
(27, 113, '1453762800', 3, '0', 0, '32162664', 0),
(28, 159, '1453762800', 3, '0', 0, '13287833', 0),
(29, 133, '1453762800', 3, '0', 0, '57960091', 0),
(30, 131, '1453762800', 3, '0', 0, '69440252', 0),
(31, 157, '1453762800', 3, '0', 0, '49738615', 0),
(32, 76, '1453762800', 3, '0', 0, '31985965', 0),
(33, 47, '1453762800', 3, '0', 0, '10987148', 0),
(34, 90, '1453762800', 3, '0', 0, '11542717', 0),
(35, 162, '1453762800', 3, '0', 0, '71487912', 0),
(36, 140, '1453935600', 3, '30', 1, '385010736', 1),
(37, 113, '1454108400', 3, '36', 1, '51735486', 1),
(38, 118, '1454281200', 3, '30', 1, '534024881', 1),
(39, 157, '1454367600', 3, '18', 0, '968934404', 1),
(40, 113, '1454367600', 3, '12', 1, '336932720', 1),
(41, 160, '1453935600', 3, '22', 1, '39554842', 0),
(43, 157, '1453071600', 3, '81', 0, '56797797', 0),
(44, 142, '1454367600', 3, '22', 1, '72003249', 0),
(45, 157, '1453071600', 3, '0', 0, '72002421', 0),
(48, 113, '1454367600', 3, '104.4', 1, '568878055', 1),
(49, 113, '1454367600', 3, '0', 0, '685149601', 1),
(50, 147, '1454367600', 3, '2.99', 0, '41671626', 0),
(51, 147, '1454367600', 3, '0', 0, '22544347', 1),
(52, 142, '1454367600', 3, '5.95', 0, '431203145', 1),
(53, 162, '1454367600', 3, '18', 1, '550573010', 1),
(54, 20, '1454540400', 3, '0', 0, '73924734', 0),
(55, 20, '1454540400', 3, '5', 0, '59099189', 0),
(56, 162, '1454972400', 3, '18', 1, '443794809', 1),
(57, 29, '1454972400', 3, '12', 1, '732900966', 1),
(58, 98, '1454972400', 3, '12', 1, '320917928', 1),
(59, 131, '1454367600', 3, '30', 1, '527288022', 1),
(60, 15, '1454713200', 3, '10', 1, '443922399', 1),
(61, 96, '1454972400', 3, '10', 1, '848752661', 1),
(62, 96, '1454972400', 3, '11', 1, '409341251', 1),
(63, 183, '1454972400', 3, '66', 1, '911596546', 1),
(64, 73, '1454972400', 3, '24', 1, '629477255', 1);

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
(1, 'GEANT CASINO COLIS NOEL', '02-07-2016', '5980', '8295690543');

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
(1, 'COMITE GEANT ESPACE ANJOU', '0', '0', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '01-01-2016', '31-12-2016');

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
(14, '7291328902', '1451602800', 'REPORT SOLDES 2016', '', '10351.00'),
(15, '8295690543', '1467410400', 'GEANT CASINO COLIS NOEL', '5980', ''),
(16, '798987461', '1452553200', 'Vente de Billetterie: DECOSSE YANICK pour la prestation CINEMA CINEVILLE', '', '40'),
(17, '780887791', '1452294000', 'Vente de Billetterie: JOLAS LAURENT pour la prestation CINEMA CINEVILLE', '', '15'),
(18, '34732327', '1452466800', 'Vente de Billetterie: SECHER BRUNO pour la prestation CINEMA CINEVILLE', '', '30'),
(19, '894743795', '1452812400', 'Vente de Billetterie: BERTHELOT BENOIT pour la prestation CINEMA CINEVILLE', '', '10'),
(20, '513904074', '1452898800', 'Vente de Billetterie: MONTET JEAN PIERRE pour la prestation CINEMA GAUMONT', '', '18'),
(21, '116411897', '1452898800', 'Vente de Billetterie: JOULAIN RENE pour la prestation CINEMA GAUMONT', '', '36'),
(22, '162531952', '1453158000', 'Vente de Billetterie: FOUCHARD MICHELLE pour la prestation CINEMA GAUMONT', '', '36'),
(23, '223832492', '1453158000', 'Vente de Billetterie: PLANTINET CATHERINE pour la prestation CINEMA GAUMONT', '', '24'),
(24, '222795939', '1453158000', 'Vente de Billetterie: RIPOCHE DIDIER pour la prestation CINEMA GAUMONT', '', '36'),
(25, '349343360', '1453330800', 'Vente de Billetterie: ROGER SANDRA pour la prestation CINEMA CINEVILLE', '', '30'),
(26, '13633308', '1453762800', 'Vente de Billetterie: ZITTE NADEGE pour la prestation CEZAM SALARIE', '', '0'),
(28, '13247825', '1453762800', 'Vente de Billetterie: BIGNON STEPHANIE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(29, '10911360', '1453762800', 'Vente de Billetterie: ROUSSEAU MIKAEL pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(30, '80918969', '1453762800', 'Vente de Billetterie: ALLAIN KATY pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(31, '36201820', '1453762800', 'Vente de Billetterie: VERDIER CHRISTIAN pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(32, '31492132', '1453762800', 'Vente de Billetterie: DELAUNAY STELLA pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(34, '32162664', '1453762800', 'Vente de Billetterie: BERTHELOT BENOIT pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(35, '13287833', '1453762800', 'Vente de Billetterie: SOUVERAIN STEPHANE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(36, '57960091', '1453762800', 'Vente de Billetterie: MOYA RACHEL pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(37, '69440252', '1453762800', 'Vente de Billetterie: POISSONNEAU LAURENT pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(38, '49738615', '1453762800', 'Vente de Billetterie: PHELIPPEAU CYRILLE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(39, '58428411', '1453762800', 'Vente de Billetterie: LAFFRAY SYLVIE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(41, '10987148', '1453762800', 'Vente de Billetterie: BOURGEAIS HELENE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(42, '11542717', '1453762800', 'Vente de Billetterie: SOUALHI MARIE HELENE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(43, '71487912', '1453762800', 'Vente de Billetterie: PLANTINET CATHERINE pour la prestation CEZAM SALARIE - gratuitÃ©', '', '0'),
(44, '6683966662', '1453935600', 'Achat - CINEMA CINEVILLE', '340', ''),
(45, '9586267541', '1453935600', 'Achat - CINEMA GAUMONT', '114', ''),
(46, '385010736', '1453935600', 'Vente de Billetterie: REULIER NICOLAS pour la prestation CINEMA CINEVILLE', '', '30'),
(47, '6420729314', '', 'Achat - KARTING INWALL KART ADULTES LES PONTS DE CE', '13.5', ''),
(48, '51735486', '1454108400', 'Vente de Billetterie: BERTHELOT BENOIT pour la prestation CINEMA GAUMONT', '', '36'),
(49, '534024881', '1454281200', 'Vente de Billetterie: HUART DOLORES pour la prestation CINEMA CINEVILLE', '', '30'),
(50, '968934404', '1454367600', 'Vente de Billetterie: PHELIPPEAU CYRILLE pour la prestation CINEMA GAUMONT', '', '18'),
(51, '336932720', '1454367600', 'Vente de Billetterie: BERTHELOT BENOIT pour la prestation CINEMA GAUMONT', '', '12'),
(52, '39554842', '1453935600', 'Vente de Billetterie: VERDIER CHRISTIAN pour la prestation FOOTBALL', '', '22'),
(58, '72003249', '1454367600', 'Vente de Billetterie: AUGER VALERIE pour la prestation FOOTBALL - lyon', '', '22'),
(59, '56797797', '1453071600', 'Vente de Billetterie: PHELIPPEAU CYRILLE pour la prestation TOUS SPECTACLES - JEREMY FERRARI', '', '81'),
(60, '72002421', '1453071600', 'Vente de Billetterie: PHELIPPEAU CYRILLE pour la prestation PARTICIPATION NON PERMANENTE - Participation du CE sur Billetterie ', '', '0'),
(62, '5000803885', '1453071600', 'Achat - TOUS SPECTACLES', '90', ''),
(63, '568878055', '1454367600', 'Vente de Billetterie: BERTHELOT BENOIT pour la prestation TOUS PARCS ET VISITES DIVERSES - 2 ENFANTS A 25â‚¬\r\n2 ADULTES A 32 â‚¬\r\nTOTAL 114 â‚¬\r\nREMISE CE 9.60 â‚¬', '', '104.4'),
(64, '685149601', '1454367600', 'Vente de Billetterie: BERTHELOT BENOIT pour la prestation PARTICIPATION NON PERMANENTE - FUTUROSCOPE \r\n\r\n114 - 9.60 = 104.40', '', '0'),
(65, '41671626', '1454367600', 'Vente de Billetterie: DESERT ALEXANDRA pour la prestation TOUS PARCS ET VISITES DIVERSES - 1 PLACE A 3.50\r\nREMISE CE 0.52 E', '', '2.99'),
(66, '22544347', '1454367600', 'Vente de Billetterie: DESERT ALEXANDRA pour la prestation PARTICIPATION NON PERMANENTE - SKOUBI PARC \r\nPRIX 3.50 â‚¬\r\nPRIX PAYE 2.99 â‚¬', '', '0'),
(67, '23341627', '1454367600', 'Vente de Billetterie: AUGER VALERIE pour la prestation TOUS PARCS ET VISITES DIVERSES - SKOUBI PARC\r\n2 PLACES A 3.50 â‚¬\r\nREMISE CE 1.05 â‚¬\r\n', '', '5.95'),
(68, '431203145', '1454367600', 'Vente de Billetterie: AUGER VALERIE pour la prestation PARTICIPATION NON PERMANENTE - SKOUBI PARC\r\nPRIX REEL 7.00 \r\nPRIX CE 5.95', '', '5.95'),
(69, '550573010', '1454367600', 'Vente de Billetterie: PLANTINET CATHERINE pour la prestation CINEMA GAUMONT', '', '18'),
(70, '73924734', '1454540400', 'Vente de Billetterie: LANGLAIS ALAIN pour la prestation CEZAM SALARIE', '', '0'),
(71, '59099189', '1454540400', 'Vente de Billetterie: LANGLAIS ALAIN pour la prestation CEZAM AYANT DROIT', '', '5'),
(72, '2321156427', '', 'Achat - KARTING INWALL KART ADULTES LES PONTS DE CE', '87', ''),
(73, '8742266576', '1454367600', 'Achat - CINEMA GAUMONT', '76', ''),
(74, '443794809', '1454972400', 'Vente de Billetterie: PLANTINET CATHERINE pour la prestation CINEMA GAUMONT', '', '18'),
(75, '732900966', '1454972400', 'Vente de Billetterie: LHOMMEAU ROMAIN pour la prestation CINEMA GAUMONT', '', '12'),
(76, '320917928', '1454972400', 'Vente de Billetterie: BREHERET KEVIN pour la prestation CINEMA GAUMONT', '', '12'),
(77, '527288022', '1454367600', 'Vente de Billetterie: POISSONNEAU LAURENT pour la prestation CINEMA CINEVILLE', '', '30'),
(78, '443922399', '1454713200', 'Vente de Billetterie: CASTAGNEDE DIDIER pour la prestation CINEMA CINEVILLE', '', '10'),
(79, '7261239565', '1454972400', 'Achat - CINEMA GAUMONT', '76', ''),
(80, '848752661', '1454972400', 'Vente de Billetterie: RICHARD MAGALI pour la prestation KARTING INWALL KART ENFANT LES PONTS DE CE', '', '10'),
(81, '409341251', '1454972400', 'Vente de Billetterie: RICHARD MAGALI pour la prestation KARTING INWALL KART ADULTES LES PONTS DE CE', '', '11'),
(82, '911596546', '1454972400', 'Vente de Billetterie: RICHOMME SOPHIE pour la prestation KARTING INWALL KART ADULTES LES PONTS DE CE', '', '66'),
(83, '629477255', '1454972400', 'Vente de Billetterie: JOUAN CAROLINE pour la prestation CINEMA GAUMONT', '', '24');

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
(9, 'BILLETTERIE'),
(10, 'CONCERTS ET SPECTACLES'),
(11, 'CULTURE'),
(12, 'PARCS D ATTRACTIONS'),
(13, 'BON D ACHAT'),
(15, 'CHEQUE VACANCES'),
(16, 'EVENEMENTS FAMILLIAUX'),
(19, 'SORTIE COMITE D ETABLISSEMENT'),
(20, 'ACHAT DE CARTES'),
(21, 'ABONNEMENTS'),
(22, 'PARTICIPATION BILLETTERIE NON PERMANENTE');

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

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`, `commentaire`) VALUES
(7, 10, 14, '8', '40', '14.4', 0, ''),
(8, 11, 14, '3', '15', '5.4', 0, ''),
(9, 12, 14, '6', '30', '10.8', 0, ''),
(10, 13, 14, '2', '10', '3.6', 0, ''),
(11, 14, 15, '3', '18', '4.8', 0, ''),
(12, 15, 15, '6', '36', '9.6', 0, ''),
(13, 16, 15, '6', '36', '9.6', 0, ''),
(14, 17, 15, '4', '24', '6.4', 0, ''),
(15, 18, 15, '6', '36', '9.6', 0, ''),
(16, 19, 14, '6', '30', '10.8', 0, ''),
(19, 22, 35, '1', '0', '0', 0, 'gratuitÃ©'),
(20, 23, 35, '1', '0', '0', 0, 'gratuitÃ©'),
(21, 24, 35, '1', '0', '0', 0, 'gratuitÃ©'),
(22, 25, 35, '1', '0', '0', 0, 'gratuitÃ©'),
(25, 27, 35, '1', '0', '0', 0, 'gratuitÃ©'),
(26, 28, 35, '1', '0', '0', 0, 'gratuitÃ©'),
(27, 29, 35, '1', '0', '0', 0, 'gratuitÃ©'),
(28, 30, 35, '1', '0', '0', 0, 'gratuitÃ©'),
(29, 31, 35, '1', '0', '0', 0, 'gratuitÃ©'),
(32, 33, 35, '1', '0', '0', 0, 'gratuitÃ©'),
(33, 34, 35, '1', '0', '0', 0, 'gratuitÃ©'),
(34, 35, 35, '1', '0', '0', 0, 'gratuitÃ©'),
(35, 36, 14, '6', '30', '10.8', 0, ''),
(36, 37, 15, '6', '36', '9.6', 0, ''),
(37, 38, 14, '6', '30', '10.8', 0, ''),
(38, 39, 15, '3', '18', '4.8', 0, ''),
(39, 40, 15, '2', '12', '3.2', 0, ''),
(40, 41, 36, '2', '22', '0', 0, ''),
(42, 44, 36, '2', '22', '0', 0, 'lyon'),
(43, 43, 25, '81', '81', '0', 0, 'JEREMY FERRARI'),
(44, 45, 37, '9', '0', '9', 0, 'Participation du CE sur Billetterie '),
(45, 48, 28, '104.40', '104.4', '0', 0, '2 ENFANTS A 25â‚¬\r\n2 ADULTES A 32 â‚¬\r\nTOTAL 114 â‚¬\r\nREMISE CE 9.60 â‚¬'),
(46, 49, 37, '9.60', '0', '9.6', 0, 'FUTUROSCOPE \r\n\r\n114 - 9.60 = 104.40'),
(47, 50, 28, '2.99', '2.99', '0', 0, '1 PLACE A 3.50\r\nREMISE CE 0.52 E'),
(48, 51, 37, '0.52', '0', '0.52', 0, 'SKOUBI PARC \r\nPRIX 3.50 â‚¬\r\nPRIX PAYE 2.99 â‚¬'),
(49, 52, 28, '5.95', '5.95', '0', 0, 'SKOUBI PARC\r\n2 PLACES A 3.50 â‚¬\r\nREMISE CE 1.05 â‚¬\r\n'),
(50, 52, 37, '1.05', '0', '1.05', 0, 'SKOUBI PARC\r\nPRIX REEL 7.00 \r\nPRIX CE 5.95'),
(51, 53, 15, '3', '18', '4.8', 0, ''),
(52, 54, 35, '1', '0', '0', 0, ''),
(53, 55, 34, '1', '5', '0', 0, ''),
(54, 56, 15, '3', '18', '4.8', 0, ''),
(55, 57, 15, '2', '12', '3.2', 0, ''),
(56, 58, 15, '2', '12', '3.2', 0, ''),
(57, 59, 14, '6', '30', '10.8', 0, ''),
(58, 60, 14, '2', '10', '3.6', 0, ''),
(59, 61, 16, '2', '10', '6', 0, ''),
(60, 62, 17, '1', '11', '3.5', 0, ''),
(61, 63, 17, '6', '66', '21', 0, ''),
(62, 64, 15, '4', '24', '6.4', 0, '');

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
(5, '1.9.8', '140215-EVO');

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
(2, 'NAD49330', 'a4ac2ceaf45a65ec29eea7b54361e1e4', 1),
(3, 'MIKA4927', 'e2a2176155ee3fc755521e28f229e843', 1),
(4, 'ytak1973', 'c783eed3cfc1c978fe76e15af007e0d0', 1),
(5, 'CHRICHRI', 'fb4ad7d1306455a5741c6caca927c47c', 1);

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
(3, 'vente_direct', '0'),
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
(13, 9, 'CINEMA LES 400 COUPS', '01-01-2016', '31-12-2016', '5', '0', '5', '6', '0', 0),
(14, 9, 'CINEMA CINEVILLE', '01-01-2016', '10-10-2016', '5', '1.80', '6.8', '8', '35', 0),
(15, 9, 'CINEMA GAUMONT', '01-01-2016', '29-02-2016', '6', '1.60', '7.6', '6', '10', 0),
(16, 9, 'KARTING INWALL KART ENFANT LES PONTS DE CE', '01-01-2016', '31-12-2016', '5', '3', '8', '100', '0', 0),
(17, 9, 'KARTING INWALL KART ADULTES LES PONTS DE CE', '01-01-2016', '31-12-2016', '11', '3.50', '14.5', '100000', '0', 0),
(18, 9, 'BOWLING SILVER BOWL BEAUCOUZE JOURNEE SEMAINE', '01-01-2016', '27-02-2017', '5', '1.40', '6.4', '', '3', 0),
(19, 9, 'BOWLING SILVER BOWL BEAUCOUZE SOIREE SEMAINE', '01-01-2016', '31-12-2016', '8', '1.50', '9.5', '', '0', 0),
(20, 9, 'BOWLING SILVER BOWL BEAUCOUZE WEEK END', '01-01-2016', '31-12-2016', '7.50', '1.40', '8.9', '', '0', 0),
(21, 9, 'BOWLING ST GEMMES SUR LOIRE SEMAINE', '01-01-2016', '31-12-2016', '5', '1', '6', '', '0', 0),
(22, 9, 'BOWLING ST GEMMES SUR LOIRE WEEK-END', '01-01-2016', '31-12-2016', '7', '1.50', '8.5', '', '0', 0),
(23, 9, 'PISCINE ANGERS', '01-01-2016', '31-12-2016', '21', '4.40', '25.4', '', '0', 0),
(24, 9, 'PATINOIRE', '01-01-2016', '31-12-2016', '20', '4', '24', '', '0', 0),
(25, 10, 'TOUS SPECTACLES', '01-01-2016', '31-12-2016', '1', '0', '1', '1000', '10009', 0),
(26, 11, 'CHEQUE LIRE', '01-01-2016', '31-12-2017', '7', '3', '10', '', '1', 0),
(27, 11, 'CHEQUE DISQUE', '01-01-2016', '31-12-2017', '7', '3', '10', '', '11', 0),
(28, 12, 'TOUS PARCS ET VISITES DIVERSES', '01-01-2016', '31-12-2016', '1', '0', '1', '1000', '9886.66', 0),
(29, 13, 'RENTREE SCOLAIRE', '01-01-2016', '31-12-2016', '0', '25', '25', '10', '0', 0),
(30, 13, 'BON D ACHAT DE NOEL', '01-01-2016', '15-02-2016', '0', '35', '35', '10', '1', 0),
(31, 15, 'CHEQUE VACANCES', '01-09-2015', '31-12-2017', '0', '1', '1', '2000', '3', 0),
(32, 16, 'TOUS EVENEMENTS FAMILIAUX ET PROFESSIONNELS', '01-01-2016', '31-12-2016', '0', '1', '1', '1000', '10000', 0),
(33, 19, 'TOUTE SORTIE DU CE', '01-01-2016', '31-12-2016', '0', '1', '1', '1000', '10000', 0),
(34, 20, 'CEZAM AYANT DROIT', '01-01-2016', '31-12-2016', '5', '0', '5', '10', '6', 0),
(35, 20, 'CEZAM SALARIE', '01-01-2016', '31-12-2016', '0', '0', '0', '1', '24', 0),
(36, 21, 'FOOTBALL', '01-01-2016', '31-12-2016', '11', '0', '11', '100', '10', 0),
(37, 22, 'PARTICIPATION NON PERMANENTE', '01-01-2016', '31-12-2016', '0', '1', '1', '1000', '9999979.83', 0);

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
(2, 'REPORT SOLDES 2016', '01-01-2016', '10351.00', '7291328902');

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

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`, `num_mouvement`) VALUES
(7, 10, 1, '40', '', 'DECOSSE YANICK', '6488999', 1, '798987461'),
(8, 11, 3, '15', '', 'JOLAS LAURENT', '965324357', 1, '780887791'),
(9, 12, 3, '30', '', 'SECHER BRUNO', '778134817', 1, '34732327'),
(10, 13, 1, '10', 'BNP', 'BERTHELOT BENOIT', '2142594', 1, '894743795'),
(11, 14, 3, '18', '', 'MONTET JEAN PIERRE', '262268451', 0, '513904074'),
(12, 15, 1, '36', 'CM', 'JOULAIN RENE', '6103964', 1, '116411897'),
(13, 17, 1, '24', 'ca', 'PLANTINET CATHERINE', '5664113', 1, '223832492'),
(14, 18, 1, '36', 'CA', 'RIPOCHE DIDIER', '1915345', 1, '222795939'),
(15, 19, 1, '30', 'CE', 'ROGER SANDRA', '0000148', 1, '349343360'),
(16, 37, 1, '36', 'BNP', 'BERTHELOT BENOIT', '2142596', 1, '51735486'),
(17, 40, 1, '12', 'BNP', 'BERTHELOT BENOIT', '2142598', 1, '336932720'),
(18, 41, 1, '22', 'CA', 'VERDIER CHRISTIAN', '2588452', 1, '39554842'),
(19, 44, 1, '22', 'CE', 'AUGER VALERIE', '400', 1, '72003249'),
(20, 48, 1, '104.4', 'BNP', 'BERTHELOT BENOIT', '2142599', 1, '568878055'),
(21, 38, 1, '30', 'BPA', 'HUART DOLORES', '0000476', 1, '534024881'),
(22, 53, 1, '18', 'CREDIT AGRICOLE', 'PLANTINET CATHERINE', '5664115', 1, '550573010'),
(23, 56, 1, '18', 'CA', 'PLANTINET CATHERINE', '5664116', 1, '443794809'),
(24, 57, 3, '12', '', 'LHOMMEAU ROMAIN', '921893332', 0, '732900966'),
(25, 58, 3, '12', '', 'BREHERET KEVIN', '572343208', 0, '320917928'),
(26, 59, 1, '30', 'CA', 'POISSONNEAU LAURENT', '4217315', 0, '527288022'),
(27, 60, 3, '10', '', 'CASTAGNEDE DIDIER', '480665300', 0, '443922399'),
(28, 36, 3, '30', '', 'REULIER NICOLAS', '348271539', 0, '385010736'),
(29, 61, 1, '10', 'BP', 'RICHARD MAGALI', '0002248', 1, '848752661'),
(30, 62, 1, '11', 'BPA', 'RICHARD MAGALI', '0002248', 1, '409341251'),
(31, 63, 1, '66', 'BPA', 'RICHOMME SOPHIE', '0001528', 1, '911596546'),
(32, 64, 1, '24', 'BNP', 'JOUAN CAROLINE', '4516898', 0, '629477255');

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

--
-- Contenu de la table `remise_banque`
--

INSERT INTO `remise_banque` (`idremisebanque`, `date_remise`, `type_remise`, `num_remise`, `montant_remise`, `valid`) VALUES
(4, '09 02 2016', 1, '3067473', '123', 0),
(6, '12 01 2016', 2, '4615335', '45', 1),
(8, '14-01-2016', 1, '000001', '362.4', 1),
(10, '12 01 2016', 1, '3067472', '40', 1);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE `remise_banque_chq` (
  `idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `remise_banque_chq`
--

INSERT INTO `remise_banque_chq` (`idremisebanquechq`, `idremisebanque`, `num_mouvement`) VALUES
(14, 4, '550573010'),
(15, 4, '443794809'),
(16, 4, '848752661'),
(17, 4, '409341251'),
(18, 4, '911596546'),
(22, 8, '349343360'),
(23, 8, '894743795'),
(24, 8, '534024881'),
(25, 8, '39554842'),
(26, 8, '72003249'),
(27, 8, '568878055'),
(28, 8, '336932720'),
(29, 8, '51735486'),
(30, 8, '222795939'),
(31, 8, '116411897'),
(32, 8, '223832492'),
(33, 10, '798987461');

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE `remise_banque_esp` (
  `idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `remise_banque_esp`
--

INSERT INTO `remise_banque_esp` (`idremisebanqueesp`, `idremisebanque`, `num_mouvement`) VALUES
(8, 6, '780887791'),
(9, 6, '34732327');

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
(10, '756565', 0, 'LECRU', 'MARIE THERESE', '', '', '', '', '', '', '', '', '01/09/2015', '', '', 'ADJOINT/E D''AGENCE', '', '', 'CDI', 1, '160.90'),
(11, '756568', 0, 'MAUGEAIS', 'SIHAME', '', '', '', '', '', '', '', '', '01/09/2015', '', '', 'RESPONSABLE DE SECTEUR', '', '', 'CDI', 1, '160.90'),
(12, '756554', 0, 'VILAGINES', 'EUGENIE', '', '', '', '', '', '', '', '', '01/09/2015', '', '', 'CONSEILLER/E FINANCIER/E', '', '', 'CDI', 1, '160.90'),
(13, '151691', 0, 'AUVINET', 'DAVID', '', '', '', '', '', '', '', '', '01/06/2000', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(14, '132376', 0, 'BABONNEAU', 'RAOUL', '', '', '', '', '', '', '', '', '05/01/1998', '', '', 'OUVRIER PROFESSIONNEL 2 BOUCHE', '', '', 'CDI', 1, '160.90'),
(15, '401683', 0, 'CASTAGNEDE', 'DIDIER', '', '', '', '', '', '', '', '', '01/05/1991', '', '', 'MANAGER COMMERCIAL', '', '', 'CDI', 1, '157.3'),
(16, '347817', 0, 'DELAUNAY', 'FREDERIC', '', '', '', '', '', '', '', '', '20/09/1999', '', '', 'OUVRIER PROFESSIONNEL 2 BOUCHE', '', '', 'CDI', 1, '160.90'),
(17, '749826', 0, 'FOUCHARD', 'FLORIAN', '', '', '', '', '', '', '', '', '01/09/2015', '', '', 'APPRENTI', '', '', 'Apprenti', 1, '160.90'),
(18, '191774', 0, 'HACAULT', 'DAVY', '', '', '', '', '', '', '', '', '01/02/2008', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(19, '714408', 0, 'JANVIER', 'THIERRY', '', '', '', '', '', '', '', '', '23/11/2011', '', '', 'OUVRIER PROFESSIONNEL 2 BOUCHE', '', '', 'CDI', 1, '160.90'),
(20, '8324', 0, 'LANGLAIS', 'ALAIN', '', '', '', '', '', '', '', '', '01/02/1998', '', '', 'OUVRIER PROFESSIONNEL 2 BOUCHE', '', '', 'CDI', 1, '160.90'),
(21, '55602', 0, 'BAUDOUIN', 'LAURENT', '', '', '', '', '', '', '', '', '28/11/1994', '', '', 'OUVRIER PROFESSIONNEL QUALIFIE', '', '', 'CDI', 1, '160.90'),
(22, '52345', 0, 'BIGNON', 'STEPHANIE', '', '', '', '', '', '', '', '', '02/06/2008', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(23, '759346', 0, 'BLANC', 'THIERRY', '', '', '', '', '', '', '', '', '19/12/2015', '', '', 'OUVRIER PROFESSIONNEL 1 BOULAN', '', '', 'CDI', 1, '160.90'),
(24, '467467', 0, 'BODIN', 'XAVIER', '', '', '', '', '', '', '', '', '28/07/2008', '', '', 'MANAGER COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(25, '749829', 0, 'COQUEMONT', 'KEVIN', '', '', '', '', '', '', '', '', '25/05/2015', '', '', 'OUVRIER PROFESSIONNEL 1 BOULAN', '', '', 'CDI', 1, '160.90'),
(26, '743729', 0, 'GODARD', 'QUENTIN', '', '', '', '', '', '', '', '', '01/09/2014', '', '', 'APPRENTI', '', '', 'Apprenti', 1, '160.90'),
(27, '725623', 0, 'HOFFERER', 'NICOLAS', '', '', '', '', '', '', '', '', '02/09/2013', '', '', 'APPRENTI', '', '', 'Apprenti', 1, '160.90'),
(28, '498933', 0, 'LE TALLEC', 'LEO', '', '', '', '', '', '', '', '', '01/09/2014', '', '', 'OUVRIER PROFESSIONNEL 1 BOULAN', '', '', 'CDI', 1, '160.90'),
(29, '483019', 0, 'LHOMMEAU', 'ROMAIN', '', '', '', '', '', '', '', '', '13/07/2009', '', '', 'OUVRIER PROFESSIONNEL 1 BOULAN', '', '', 'CDI', 1, '157.7'),
(30, '83681', 0, 'RIPOCHE', 'DIDIER', '', '', '', '', '', '', '', '', '16/10/1995', '', '', 'OUVRIER PROFESSIONNEL 3 BOULAN', '', '', 'CDI', 1, '151.3'),
(31, '756476', 0, 'THIBERVILLE', 'FABIEN', '', '', '', '', '', '', '', '', '21/09/2015', '', '', 'OUVRIER PROFESSIONNEL 1 BOULAN', '', '', 'CDD date ? date', 1, '160.90'),
(32, '133102', 0, 'BARBAULT', 'ISABELLE', '', '', '', '', '', '', '', '', '03/01/2011', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(33, '285130', 0, 'BIGNON', 'SOPHIE', '', '', '', '', '', '', '', '', '01/03/2013', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(34, '220356', 0, 'FOLNY', 'SOPHIE', '', '', '', '', '', '', '', '', '30/07/2001', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(35, '735028', 0, 'ALGOURDIN', 'ELOISE', '', '', '', '', '', '', '', '', '02/09/2013', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(36, '519007', 0, 'BARRE', 'CHRISTINE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'CAISSIERE ELS', '', '', 'CDI', 1, '160.90'),
(37, '737210', 0, 'BAUDU', 'KEVIN', '', '', '', '', '', '', '', '', '31/08/2015', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDD date ? date', 1, '160.90'),
(38, '309399', 0, 'BESNARD', 'ALINE', '', '', '', '', '', '', '', '', '08/09/2010', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(39, '254369', 0, 'BILLON', 'KARINE', '', '', '', '', '', '', '', '', '07/10/2002', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(40, '715223', 0, 'BINEAU', 'AURELIE', '', '', '', '', '', '', '', '', '20/07/2015', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', '', 1, '160.90'),
(41, '730652', 0, 'BLAISONNEAU', 'DIMITRY', '', '', '', '', '', '', '', '', '29/05/2013', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(42, '335526', 0, 'BLOT', 'CYNTHIA', '', '', '', '', '', '', '', '', '09/10/2006', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(43, '746076', 0, 'BODY', 'VALERIE', '', '', '', '', '', '', '', '', '02/11/2015', '', '', 'CONTRAT PROFESSIONNALISATION', '', '', 'Contrat pro', 1, '160.90'),
(44, '317151', 0, 'BOISARD', 'LUCILE', '', '', '', '', '', '', '', '', '24/09/2005', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(45, '519016', 0, 'BOUGREAU', 'JOELLE', '', '', '', '', '', '', '', '', '01/11/1998', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(46, '496248', 0, 'BOUGREAU', 'JULIE', '', '', '', '', '', '', '', '', '06/07/2015', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDD date ? date', 1, '160.90'),
(47, '138698', 0, 'BOURGEAIS', 'HELENE', '', '', '', '', '', '', '', '', '25/05/1998', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(48, '41904', 0, 'BOUVIER', 'CHRISTELLE', '', '', '', '', '', '', '', '', '31/10/1994', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(49, '733163', 0, 'BOUVIER', 'TANYA', '', '', '', '', '', '', '', '', '27/04/2015', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDD date ? date', 1, '160.90'),
(50, '268469', 0, 'BRIN', 'JACQUES', '', '', '', '', '', '', '', '', '10/06/2003', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(51, '170778', 0, 'BRINDEAU', 'CAROLINE', '', '', '', '', '', '', '', '', '01/01/2000', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(52, '748423', 0, 'CARBILLET', 'CARINE', '', '', '', '', '', '', '', '', '02/11/2015', '', '', 'CONTRAT PROFESSIONNALISATION', '', '', 'Contrat pro', 1, '160.90'),
(53, '197937', 0, 'CARTIER', 'MAUD', '', '', '', '', '', '', '', '', '12/10/2000', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(54, '457291', 0, 'CHEVALIER', 'LAETITIA', '', '', '', '', '', '', '', '', '09/07/2008', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(55, '478542', 0, 'CORNEMUSE', 'NATHALIE', '', '', '', '', '', '', '', '', '01/02/2011', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(56, '519024', 0, 'CRETIN', 'MARIE CLAUDE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(57, '224986', 0, 'DELAUNAY', 'MARIE CECILE', '', '', '', '', '', '', '', '', '10/09/2001', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(58, '497628', 0, 'DENTIER', 'JULIEN', '', '', '', '', '', '', '', '', '02/08/2010', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(59, '519029', 0, 'DI RICO', 'ANGELE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'EMPLOYE DE LIBRE SERVICE', '', '', 'CDI', 1, '160.90'),
(60, '255856', 0, 'DIBON', 'MATHILDE', '', '', '', '', '', '', '', '', '10/02/2003', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(61, '479248', 0, 'DONKPEGAN', 'KELOME', '', '', '', '', '', '', '', '', '02/12/2013', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(62, '128857', 0, 'DOS SANTOS', 'DELPHINE', '', '', '', '', '', '', '', '', '17/11/2012', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(63, '60157', 0, 'DROUAULT', 'NADEGE', '', '', '', '', '', '', '', '', '03/08/2007', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(64, '435242', 0, 'DUPUIS', 'DELPHINE', '', '', '', '', '', '', '', '', '02/01/2007', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(65, '293148', 0, 'ENDJIMONGOA', 'JOSEPHINE', '', '', '', '', '', '', '', '', '16/06/2004', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(66, '519041', 0, 'FOUCHARD', 'MICHELLE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'CAISSIERE ELS', '', '', 'CDI', 1, '151.3'),
(67, '54541', 0, 'GAUDIN', 'SANDRINE', '', '', '', '', '', '', '', '', '07/11/1994', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(68, '236128', 0, 'GOURDON', 'STEPHANIE', '', '', '', '', '', '', '', '', '26/02/2002', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(69, '59118', 0, 'GUAIS', 'VALERIE', '', '', '', '', '', '', '', '', '07/11/1994', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(70, '252339', 0, 'HINS', 'SANDRINE', '', '', '', '', '', '', '', '', '31/05/2010', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(71, '435631', 0, 'IBRAHIM', 'MARIE CLAIRE', '', '', '', '', '', '', '', '', '15/03/2010', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(72, '519054', 0, 'JOLIVET', 'GHUILAINE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'EMPLOYE DE LIBRE SERVICE', '', '', 'CDI', 1, '160.90'),
(73, '185117', 0, 'JOUAN', 'CAROLINE', '', '', '', '', '', '', '', '', '13/06/2000', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '154.5'),
(74, '461454', 0, 'KARADIKME', 'SEMIHA', '', '', '', '', '', '', '', '', '14/03/2008', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(75, '487965', 0, 'KELKAL', 'ALICIA', '', '', '', '', '', '', '', '', '18/03/2010', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(76, '231621', 0, 'LAFFRAY', 'SYLVIE', '', '', '', '', '', '', '', '', '07/12/2001', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(77, '455106', 0, 'LEVEQUE', 'JULIETTE', '', '', '', '', '', '', '', '', '02/07/2008', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(78, '162385', 0, 'MABILEAU', 'DELPHINE', '', '', '', '', '', '', '', '', '11/09/2006', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(79, '268471', 0, 'MAIGRET RABEAU', 'CAROLINE', '', '', '', '', '', '', '', '', '05/05/2003', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(80, '103355', 0, 'MONNIER', 'CELINE', '', '', '', '', '', '', '', '', '04/10/1999', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(81, '756867', 0, 'MONNIER', 'JULIE', '', '', '', '', '', '', '', '', '28/09/2015', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDD date ? date', 1, '160.90'),
(82, '738408', 0, 'MONTILUS', 'STEPHANIA', '', '', '', '', '', '', '', '', '01/12/2015', '', '', 'CONTRAT PROFESSIONNALISATION', '', '', 'Contrat pro', 1, '160.90'),
(83, '262203', 0, 'NICOLAS', 'ANNE', '', '', '', '', '', '', '', '', '03/02/2003', '', '', 'MANAGER SECTEUR', '', '', 'CDI', 1, '160.90'),
(84, '435250', 0, 'NIKITA', 'MARIA', '', '', '', '', '', '', '', '', '02/01/2009', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(85, '737205', 0, 'ORAN', 'VIOLAINE', '', '', '', '', '', '', '', '', '27/04/2015', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDD date ? date', 1, '160.90'),
(86, '58018', 0, 'POMMIER', 'CATHERINE', '', '', '', '', '', '', '', '', '31/10/1994', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(87, '499009', 0, 'POUPART', 'FRANCINE', '', '', '', '', '', '', '', '', '31/07/1995', '', '', 'CAISSIERE 2EME DEGRE (+ 10 MOI', '', '', 'CDI', 1, '160.90'),
(88, '749398', 0, 'RAVALLI', 'MELISSA', '', '', '', '', '', '', '', '', '27/04/2015', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDD date ? date', 1, '160.90'),
(89, '463846', 0, 'SAID MADI', 'AMINA', '', '', '', '', '', '', '', '', '01/03/2010', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(90, '286156', 0, 'SOUALHI', 'MARIE HELENE', '', '', '', '', '', '', '', '', '01/09/2015', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(91, '758423', 0, 'TRUDELLE', 'JENNIFER', '', '', '', '', '', '', '', '', '02/11/2015', '', '', 'CONTRAT PROFESSIONNALISATION', '', '', 'Contrat pro', 1, '160.90'),
(92, '436255', 0, 'FLAUD', 'IGOR', '', '', '', '', '', '', '', '', '24/02/2007', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(93, '359529', 0, 'FOUCHER', 'MANUELA', '', '', '', '', '', '', '', '', '09/01/2008', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(94, '759197', 0, 'GACHET', 'BAPTISTE', '', '', '', '', '', '', '', '', '01/12/2015', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(95, '297664', 0, 'GARSON', 'DELPHINE', '', '', '', '', '', '', '', '', '01/10/2010', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(96, '250550', 0, 'RICHARD', 'MAGALI', '', '', '', '', '', '', '', '', '01/01/2016', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '151.4'),
(97, '199533', 0, 'ZITTE', 'NADEGE', '', '', '', '', '', '', '', '', '01/09/2009', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(98, '456908', 0, 'BREHERET', 'KEVIN', '', '', '', '', '', '', '', '', '10/12/2007', '', '', 'OUVRIER PROFESSIONNEL 2 MAINTE', '', '', 'CDI', 1, '157.7'),
(99, '465805', 0, 'BANSIMBA', 'FLORENCE', '', '', '', '', '', '', '', '', '16/06/2008', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(100, '60048', 0, 'BRECHETEAU', 'THERESE', '', '', '', '', '', '', '', '', '14/10/2005', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(101, '189767', 0, 'HOUDIN', 'JEROME', '', '', '', '', '', '', '', '', '02/10/2000', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(102, '301557', 0, 'LECLERC', 'SANDRINE', '', '', '', '', '', '', '', '', '02/04/2012', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(103, '281414', 0, 'LUGEZ', 'ETIENNE', '', '', '', '', '', '', '', '', '13/10/2003', '', '', 'MANAGER COMMERCIAL SENIOR', '', '', 'CDI', 1, '160.90'),
(104, '519060', 0, 'PACCHIANA', 'JACQUELINE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(105, '757187', 0, 'PEDIE', 'KEVIN', '', '', '', '', '', '', '', '', '19/10/2015', '', '', 'CONTRAT PROFESSIONNALISATION', '', '', 'Contrat pro', 1, '160.90'),
(106, '291527', 0, 'REDSAND', 'MONIQUE', '', '', '', '', '', '', '', '', '11/05/2004', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(107, '76643', 0, 'TRIDON', 'LAURENT', '', '', '', '', '', '', '', '', '01/12/1998', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(108, '344941', 0, 'BERNARD', 'MICHAEL', '', '', '', '', '', '', '', '', '11/01/2007', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(109, '178149', 0, 'FORTANNIER', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '18/07/2006', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(110, '60667', 0, 'JOULAIN', 'RENE', '', '', '', '', '', '', '', '', '04/09/1995', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '151.3'),
(111, '260706', 0, 'REULLIER', 'JONATHAN', '', '', '', '', '', '', '', '', '26/12/2002', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(112, '162644', 0, 'VASLIN', 'DELPHINE', '', '', '', '', '', '', '', '', '05/07/1999', '', '', 'MANAGER COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(113, '81965', 0, 'BERTHELOT', 'BENOIT', '', '', '', '', '', '', '', '', '16/10/1995', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '134.9'),
(114, '195136', 0, 'DECOSSE', 'YANICK', '', '', '', '', '', '', '', '', '04/09/2000', '', '', 'DIRECTEUR HYPERMARCHE', '', '', 'CDI', 1, '146.5'),
(115, '519015', 0, 'BOTTEREAU', 'WILLIAM', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(116, '706126', 0, 'CADEAU', 'FRANCOISE', '', '', '', '', '', '', '', '', '06/07/2011', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(117, '519049', 0, 'GRIMAULT', 'BERNADETTE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'EMPLOYE DE LIBRE SERVICE', '', '', 'CDI', 1, '160.90'),
(118, '433825', 0, 'HUART', 'DOLORES', '', '', '', '', '', '', '', '', '01/02/2014', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '150.1'),
(119, '519087', 0, 'RIVAULT', 'SYLVIANNE', '', '', '', '', '', '', '', '', '24/05/2000', '', '', 'EMPLOYE DE LIBRE SERVICE', '', '', 'CDI', 1, '160.90'),
(120, '222530', 0, 'ROGER', 'SANDRA', '', '', '', '', '', '', '', '', '01/11/2011', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '150.1'),
(121, '99647', 0, 'VALERI', 'NATHALIE', '', '', '', '', '', '', '', '', '01/09/2006', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(122, '519005', 0, 'AUDEBERT', 'ISABELLE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'CAISSIERE ELS', '', '', 'CDI', 1, '160.90'),
(123, '519040', 0, 'CANBUDAK', 'VERONIQUE', '', '', '', '', '', '', '', '', '01/07/1999', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(124, '134601', 0, 'DELAROUE', 'PHILIPPE', '', '', '', '', '', '', '', '', '01/03/1998', '', '', 'MANAGER COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(125, '140061', 0, 'PELATAN', 'CATHERINE', '', '', '', '', '', '', '', '', '04/09/2001', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(126, '59798', 0, 'CRETIN', 'JEAN YVES', '', '', '', '', '', '', '', '', '11/10/1994', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(127, '519048', 0, 'GOYER', 'ANNIE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(128, '499007', 0, 'LEQUEUX', 'ANNIE', '', '', '', '', '', '', '', '', '03/08/1994', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(129, '519086', 0, 'MERCIER', 'BRIGITTE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(130, '54874', 0, 'MERCIER', 'CAROLE', '', '', '', '', '', '', '', '', '07/11/1994', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(131, '519082', 0, 'POISSONNEAU', 'LAURENT', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '150.1'),
(132, '277567', 0, 'SIBILEAU', 'BENOIT', '', '', '', '', '', '', '', '', '29/08/2005', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(133, '83354', 0, 'MOYA', 'RACHEL', '', '', '', '', '', '', '', '', '02/01/2008', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(134, '337251', 0, 'ROUSSEAU', 'MIKAEL', '', '', '', '', '', '', '', '', '15/01/2007', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(135, '168228', 0, 'DUBOIS', 'NATHALIE', '', '', '', '', '', '', '', '', '02/09/1999', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(136, '28115', 0, 'HARDY', 'PHILIPPE', '', '', '', '', '', '', '', '', '27/02/1986', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(137, '95440', 0, 'LE COIEC', 'MIREILLE', '', '', '', '', '', '', '', '', '12/04/1996', '', '', 'MANAGER COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(138, '728101', 0, 'LIVACHE', 'CORALIE', '', '', '', '', '', '', '', '', '31/08/2015', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(139, '239743', 0, 'PELLETIER', 'CARL', '', '', '', '', '', '', '', '', '24/01/2003', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(140, '91573', 0, 'REULIER', 'NICOLAS', '', '', '', '', '', '', '', '', '22/07/1996', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '150.1'),
(141, '136119', 0, 'ANDRE', 'OLIVIER', '', '', '', '', '', '', '', '', '16/04/1998', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(142, '149872', 0, 'AUGER', 'VALERIE', '', '', '', '', '', '', '', '', '02/04/2012', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '159.85'),
(143, '519011', 0, 'BLOUIN', 'THIERRY', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'EMPLOYE PRINCIPAL', '', '', 'CDI', 1, '160.90'),
(144, '61018', 0, 'DA COSTA', 'MARIE-ELISABETH', '', '', '', '', '', '', '', '', '22/01/1996', '', '', 'MANAGER SECTEUR', '', '', 'CDI', 1, '160.90'),
(145, '756932', 0, 'DELAUNAY', 'QUENTIN', '', '', '', '', '', '', '', '', '29/09/2015', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDD date ? date', 1, '160.90'),
(146, '190760', 0, 'DELAUNAY', 'STELLA', '', '', '', '', '', '', '', '', '20/02/2007', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(147, '519071', 0, 'DESERT', 'ALEXANDRA', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.38'),
(148, '284075', 0, 'FOUQUERON', 'JEROME', '', '', '', '', '', '', '', '', '26/04/2010', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(149, '94869', 0, 'GOIZET', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '22/07/1996', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(150, '59799', 0, 'GOURRICHON', 'PHILIPPE', '', '', '', '', '', '', '', '', '11/10/1994', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(151, '161463', 0, 'GRESSIER', 'SARAH', '', '', '', '', '', '', '', '', '29/01/2001', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(152, '433044', 0, 'JEANNIN', 'DOMINIQUE', '', '', '', '', '', '', '', '', '01/10/2007', '', '', 'MANAGER COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(153, '519063', 0, 'LEVERT', 'MICHEL', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'EMPLOYE DE LIBRE SERVICE', '', '', 'CDI', 1, '160.90'),
(154, '757189', 0, 'MEIGNAN', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '19/10/2015', '', '', 'CONTRAT PROFESSIONNALISATION', '', '', 'Contrat pro', 1, '160.90'),
(155, '225004', 0, 'MORIN', 'VALERIE', '', '', '', '', '', '', '', '', '30/10/2001', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(156, '59797', 0, 'MOUSSEAU', 'BRUNO', '', '', '', '', '', '', '', '', '11/10/1994', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(157, '60159', 0, 'PHELIPPEAU', 'CYRILLE', '', '', '', '', '', '', '', '', '02/11/1994', '', '', 'MANAGER COMMERCIAL', '', '', 'CDI', 1, '156.1'),
(158, '519080', 0, 'POIROUX', 'STEPHANE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'EMPLOYE DE LIBRE SERVICE', '', '', 'CDI', 1, '160.90'),
(159, '519091', 0, 'SOUVERAIN', 'STEPHANE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(160, '499003', 0, 'VERDIER', 'CHRISTIAN', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(161, '257427', 0, 'BOUVIER', 'SOPHIE', '', '', '', '', '', '', '', '', '12/11/2002', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(162, '734637', 0, 'PLANTINET', 'CATHERINE', '', '', '', '', '', '', '', '', '26/08/2013', '', '', 'MANAGER COMMERCIAL SENIOR', '', '', 'CDI', 1, '144.9'),
(163, '109579', 0, 'BLIN', 'GAEL', '', '', '', '', '', '', '', '', '22/11/1996', '', '', 'OUVRIER PROFESSIONNEL 3 PATISS', '', '', 'CDI', 1, '160.90'),
(164, '519014', 0, 'BONAMY', 'PHILIPPE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'OUVRIER PROFESSIONNEL 2 PATISS', '', '', 'CDI', 1, '160.90'),
(165, '708011', 0, 'BOUIC', 'SYLVAIN', '', '', '', '', '', '', '', '', '08/08/2011', '', '', 'OUVRIER PROFESSIONNEL 1 PATISS', '', '', 'CDI', 1, '160.90'),
(166, '755902', 0, 'DESLANDES', 'KEVIN', '', '', '', '', '', '', '', '', '07/09/2015', '', '', 'APPRENTI', '', '', 'Apprenti', 1, '160.90'),
(167, '258144', 0, 'JALLADEAU', 'FLAVIEN', '', '', '', '', '', '', '', '', '28/11/2002', '', '', 'MANAGER COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(168, '143435', 0, 'LE CORRE', 'THIERRY', '', '', '', '', '', '', '', '', '13/07/1998', '', '', 'OUVRIER PROFESSIONNEL 2 PATISS', '', '', 'CDI', 1, '160.90'),
(169, '759031', 0, 'VAILLANT GISLIN', 'CHARLOTTE', '', '', '', '', '', '', '', '', '01/12/2015', '', '', 'CONTRAT PROFESSIONNALISATION', '', '', 'Contrat pro', 1, '160.90'),
(170, '324405', 0, 'JOLAS', 'LAURENT', '', '', '', '', '', '', '', '', '16/05/2005', '', '', 'MANAGER COMMERCIAL', '', '', 'CDI', 1, '155.5'),
(171, '519068', 0, 'MALINGE', 'BRIGITTE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'CAISSIERE 2EME DEGRE (+ 10 MOI', '', '', 'CDI', 1, '160.90'),
(172, '517359', 0, 'SCHMITT', 'CATHERINE', '', '', '', '', '', '', '', '', '01/12/1993', '', '', 'MANAGER COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(173, '516885', 0, 'PICHON', 'PASCALE', '', '', '', '', '', '', '', '', '01/12/1993', '', '', 'MANAGER COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(174, '129434', 0, 'BARANGER', 'ISABELLE', '', '', '', '', '', '', '', '', '14/04/1998', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(175, '196231', 0, 'BOURGEAIS', 'LAETITIA', '', '', '', '', '', '', '', '', '09/03/2009', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(176, '79213', 0, 'DUCHENE', 'LAURENCE', '', '', '', '', '', '', '', '', '11/08/1995', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '160.90'),
(177, '519045', 0, 'GAUDICHEAU', 'PHILIPPE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(178, '519056', 0, 'JUMEL', 'EVELYNE', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(179, '519070', 0, 'MERCIER', 'LUCIEN', '', '', '', '', '', '', '', '', '26/01/1994', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90'),
(180, '32544', 0, 'MONTET', 'JEAN PIERRE', '', '', '', '', '', '', '', '', '27/11/1993', '', '', 'MANAGER SECTEUR', '', '', 'CDI', 1, '156.1'),
(181, '298185', 0, 'POIRIER', 'MIREILLE', '', '', '', '', '', '', '', '', '07/08/2004', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(182, '207601', 0, 'POUSSET', 'ALICE', '', '', '', '', '', '', '', '', '05/06/2001', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '160.90'),
(183, '60190', 0, 'RICHOMME', 'SOPHIE', '', '', '', '', '', '', '', '', '02/11/2009', '', '', 'RESPONSABLE COMMERCIAL', '', '', 'CDI', 1, '139.9'),
(184, '453079', 0, 'OLLIVAUX', 'FRANCK', '', '', '', '', '', '', '', '', '24/09/2007', '', '', 'MANAGER COMMERCIAL SENIOR', '', '', 'CDI', 1, '160.90'),
(185, '280633', 0, 'SECHER', 'BRUNO', '', '', '', '', '', '', '', '', '07/10/2003', '', '', 'EMPLOYE COMMERCIAL CONFIRME', '', '', 'CDI', 1, '150.1'),
(186, '83368', 0, 'ALLAIN', 'KATY', '', '', '', '', '', '', '', '', '01/01/2007', '', '', 'VEND MULTIMEDIA ET OU MAISON', '', '', 'CDI', 1, '160.90'),
(187, '134355', 0, 'FORGET', 'FREDERIC', '', '', '', '', '', '', '', '', '01/01/2007', '', '', 'VEND MULTIMEDIA ET OU MAISON', '', '', 'CDI', 1, '160.90'),
(188, '134154', 0, 'FOURNIER', 'FREDERIC', '', '', '', '', '', '', '', '', '01/01/2007', '', '', 'VENDEUR BAS TRES QUALIFIE', '', '', 'CDI', 1, '160.90'),
(189, '134366', 0, 'HAREL', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '01/01/2007', '', '', 'VEND MULTIMEDIA ET OU MAISON', '', '', 'CDI', 1, '160.90'),
(190, '295214', 0, 'COURBALAY', 'AMANDINE', '', '', '', '', '', '', '', '', '01/10/2013', '', '', 'VEND MULTIMEDIA ET OU MAISON', '', '', 'CDI', 1, '160.90'),
(191, '348972', 0, 'RIOT', 'SOPHIE', '', '', '', '', '', '', '', '', '01/04/2008', '', '', 'VEND MULTIMEDIA ET OU MAISON', '', '', 'CDI', 1, '160.90'),
(192, '60182', 0, 'AUBRY', 'CLARA', '', '', '', '', '', '', '', '', '28/11/1994', '', '', 'RESPONSABLE COMMERCIAL CONFIRM', '', '', 'CDI', 1, '160.90');

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
(9, '1452553200', '6488999', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DECOSSE YANICK.', '', '40', 0),
(10, '1452294000', '965324357', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par JOLAS LAURENT.', '', '15', 1),
(11, '1452466800', '778134817', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par SECHER BRUNO.', '', '30', 1),
(12, '1452812400', '2142594', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERTHELOT BENOIT.', '', '10', 1),
(13, '1452898800', '262268451', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MONTET JEAN PIERRE.', '', '18', 1),
(14, '1452898800', '6103964', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JOULAIN RENE.', '', '36', 0),
(15, '1453158000', '5664113', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PLANTINET CATHERINE.', '', '24', 0),
(16, '1453158000', '1915345', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RIPOCHE DIDIER.', '', '36', 0),
(17, '1453330800', '0000148', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROGER SANDRA.', '', '30', 1),
(18, '1454108400', '2142596', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERTHELOT BENOIT.', '', '36', 0),
(19, '1454367600', '2142598', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERTHELOT BENOIT.', '', '12', 1),
(20, '1453935600', '2588452', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de VERDIER CHRISTIAN.', '', '22', 0),
(21, '1454367600', '400', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de AUGER VALERIE.', '', '22', 0),
(22, '1454367600', '2142599', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERTHELOT BENOIT.', '', '104.4', 0),
(23, '1454281200', '0000476', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de HUART DOLORES.', '', '30', 1),
(25, '1454367600', '5664115', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PLANTINET CATHERINE.', '', '18', 1),
(26, '1454972400', '5664116', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PLANTINET CATHERINE.', '', '18', 1),
(27, '1454972400', '921893332', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LHOMMEAU ROMAIN.', '', '12', 1),
(28, '1454972400', '572343208', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BREHERET KEVIN.', '', '12', 1),
(29, '1454367600', '4217315', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de POISSONNEAU LAURENT.', '', '30', 1),
(30, '1454713200', '480665300', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CASTAGNEDE DIDIER.', '', '10', 1),
(31, '1453935600', '348271539', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par REULIER NICOLAS.', '', '30', 1),
(32, '1454972400', '0002248', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RICHARD MAGALI.', '', '10', 1),
(33, '1454972400', '0002248', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RICHARD MAGALI.', '', '11', 0),
(34, '1454972400', '0001528', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RICHOMME SOPHIE.', '', '66', 0),
(35, '1454972400', '4516898', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JOUAN CAROLINE.', '', '24', 0),
(36, '', '4615335', 'Remise Bancaire', 'Remise de EspÃ¨ce', 'Remise en banque NÂ° 4615335 en date du 01-01-1970.', '45', '', 1),
(38, '1452726000', '000001', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 000001 en date du 14-01-2016.', '362.4', '', 1),
(39, '', '3067472', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3067472 en date du 01-01-1970.', '40', '', 1);

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
  MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
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
  MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
  MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
  MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
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
  MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
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
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
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
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
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
  MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
  MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
  MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
