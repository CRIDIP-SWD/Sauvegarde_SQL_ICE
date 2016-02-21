-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2016 à 11:03
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cealtho`
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
(10, '11-01-2016', 1, '50', '310', '1522441190'),
(11, '12-02-2016', 1, '100', '620', '9586714804'),
(12, '02-02-2016', 1, '50', '310', '3899937165'),
(13, '03-02-2016', 12, '30', '237', '6298604514');

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
(46, 2, 'Vente de Billetterie: LE DAMANY JULIEN pour la prestation CINEMA LE REX', '', '24', '857344214'),
(47, 1, 'Ajout de la charge Fixe: Fleurs (d&eacute;c&egrave;s de la maman de Mme Le Tadic)', '50', '', '4637148702'),
(49, 1, 'Ajout de la charge Fixe: T&eacute;l&eacute;gramme', '18.98', '', '2944841027'),
(50, 2, 'Ajout du produit fixe: solde du compte n&deg;53166608510', '', '56187.81', '1107068416'),
(51, 2, 'Vente de Billetterie: NICOLAS VINCENT pour la prestation CINEMA LE REX', '', '24', '264493447'),
(52, 1, 'Achat: CINEMA LE REX', '310', '', '1522441190'),
(54, 1, 'Ajout de la charge Fixe: Frais bancaires', '7.75', '', '8893213304'),
(55, 1, 'Ajout de la charge Fixe: Carte CE', '275.88', '', '8302040784'),
(56, 2, 'Ajout du produit fixe: cotisation ALTHO', '', '8309.97', '5256059086'),
(57, 1, 'Ajout de la charge Fixe: OUEST FRANCE journal', '25.30', '', '7645986774'),
(58, 2, 'Vente de Billetterie: RELO YANN pour la prestation CINEMA LE REX', '', '8', '22867920'),
(59, 2, 'Vente de Billetterie: DENIS CAROLE pour la prestation SPADIUM', '', '30', '382854884'),
(60, 2, 'Vente de Billetterie: LE TADIC SYLVIE pour la prestation CINEMA LE REX', '', '12', '53354565'),
(61, 2, 'Vente de Billetterie: ROSSIGNOL SONIA pour la prestation CINEMA LE REX', '', '40', '538969478'),
(62, 2, 'Vente de Billetterie: KOUROU MICHELLE pour la prestation HAPPY PARK', '', '60', '521556713'),
(63, 2, 'Vente de Billetterie: GUILLEMOT VINCENT pour la prestation CINEMA LE REX', '', '8', '255327354'),
(64, 2, 'Vente de Billetterie: LE DENMAT FRANCOIS pour la prestation BOWLING', '', '24', '474334037'),
(65, 2, 'Vente de Billetterie: DELAUNEY MELINDA pour la prestation CINEMA LE REX', '', '8', '83324079'),
(66, 2, 'Vente de Billetterie: JULE BENOIT pour la prestation CINEMA LE REX', '', '4', '812365170'),
(68, 1, 'Ajout de la charge Fixe: emap (tshirt)', '144', '', '5585740162'),
(69, 1, 'Ajout de la charge Fixe: repas Gueltas', '6818.01', '', '7629237808'),
(70, 1, 'Ajout de la charge Fixe: tombola (repas Guelta)', '1098.89', '', '7476335754'),
(73, 1, 'Ajout de la charge Fixe: frais bancaires', '7.75', '', '1175317145'),
(74, 1, 'Ajout de la charge Fixe: location de salle', '445', '', '47353963'),
(75, 1, 'Ajout de la charge Fixe: graph impress', '8.64', '', '3189410251'),
(76, 2, 'Vente de Billetterie: ROLLET OLIVIER pour la prestation CINEMA LE REX', '', '20', '41863923'),
(77, 2, 'Vente de Billetterie: LE BELLER DAVID pour la prestation CINEMA LE REX', '', '24', '774464968'),
(79, 2, 'Vente de Billetterie: ORINEL TRISHA pour la prestation SPADIUM', '', '30', '137974852'),
(80, 2, 'Vente de Billetterie: DONVAL AMANDINE pour la prestation SPADIUM', '', '60', '188979949'),
(81, 2, 'Vente de Billetterie: NAPOLEONI NICOLAS pour la prestation CINEMA LE REX', '', '8', '55655296'),
(82, 2, 'Vente de Billetterie: LE JOSSEC SOLENE pour la prestation CINEMA LE REX', '', '16', '97972125'),
(84, 2, 'Vente de Billetterie: LE BAIL NOLWENN pour la prestation CINEMA LE REX', '', '16', '860947528'),
(86, 2, 'Vente de Billetterie: ELLIAS MARTINE pour la prestation KARTING ADULTE', '', '20', '291580659'),
(88, 2, 'Vente de Billetterie: JACQUES BERTRAND pour la prestation CINEMA LE REX', '', '4', '840449340'),
(89, 2, 'Vente de Billetterie: DENIS CAROLE pour la prestation HAPPY PARK', '', '18', '124297596'),
(91, 2, 'Vente de Billetterie: JACQUES BERTRAND pour la prestation CINEMA LE REX', '', '40', '58228041'),
(92, 2, 'Vente de Billetterie: JANVIER Helene pour la prestation CINEMA LE REX', '', '8', '70197584'),
(93, 2, 'Vente de Billetterie: LEROY GREGORY pour la prestation CINEMA LE REX', '', '20', '507655685'),
(94, 2, 'Vente de Billetterie: DENIS CAROLE pour la prestation CINEMA LE REX', '', '38', '122775566'),
(95, 2, 'Vente de Billetterie: DENIS CAROLE pour la prestation SPADIUM', '', '68', '674188669'),
(98, 2, 'Vente de Billetterie: COPPENS FREDERIC pour la prestation CINEMA LE REX', '', '16', '689177670'),
(100, 2, 'Vente de Billetterie: LE JOSSEC SOLENE pour la prestation CINEMA LE REX', '', '40', '569914367'),
(102, 1, 'Ajout de la charge Fixe: CAFE MENEZ', '126.09', '', '1795909610'),
(103, 2, 'Vente de Billetterie: CARREE STEPHANIE pour la prestation CAFE ARMOR', '', '42', '92595969'),
(104, 2, 'Vente de Billetterie: LE BRAZIDEC MICHELLE pour la prestation CAFE ARMOR', '', '42', '54634938'),
(105, 2, 'Vente de Billetterie: MONNERAYE CHRISTOPHE pour la prestation CINEMA LE REX', '', '16', '13203518'),
(106, 2, 'Vente de Billetterie: LE DAMANY JULIEN pour la prestation BOWLING', '', '48', '43556109'),
(107, 2, 'Vente de Billetterie: LE GOFF SYLVAIN pour la prestation BOWLING', '', '20', '63318820'),
(108, 2, 'Vente de Billetterie: LE MEUDEC ANTHONY pour la prestation CINEMA LE REX', '', '20', '724608986'),
(109, 2, 'Vente de Billetterie: LE MEUDEC ANTHONY pour la prestation HAPPY PARK', '', '38', '168644925'),
(110, 2, 'Vente de Billetterie: LIGER MALIKA pour la prestation CINEMA LE REX', '', '16', '12697610'),
(111, 2, 'Vente de Billetterie: ROBINO STEPHANIE pour la prestation CINEMA LE REX', '', '16', '521537019'),
(112, 2, 'Vente de Billetterie: ROBINO STEPHANIE pour la prestation BOWLING', '', '32', '877758626'),
(113, 2, 'Vente de Billetterie: LE BRAZIDEC MICHELLE pour la prestation CINEMA LE REX', '', '40', '332556857'),
(114, 1, 'Achat: CINEMA LE REX', '620', '', '9586714804'),
(115, 1, 'Achat: CINEMA LE REX', '310', '', '3899937165'),
(116, 1, 'Achat: HAPPY PARK', '237', '', '6298604514'),
(117, 2, 'Vente de Billetterie: BELANDRES DIONISIA pour la prestation HAPPY PARK', '', '30', '221485491'),
(118, 2, 'Vente de Billetterie: BELANDRES DIONISIA pour la prestation SPADIUM', '', '60', '737199125'),
(119, 2, 'Vente de Billetterie: LE BELLER DAVID pour la prestation CINEMA LE REX', '', '20', '575764955'),
(120, 2, 'Vente de Billetterie: MONNERAYE CHRISTOPHE pour la prestation CINEMA LE REX', '', '16', '88939120'),
(121, 2, 'Vente de Billetterie: BELANDRES DIONISIA pour la prestation CINEMA LE REX', '', '16', '188806674'),
(122, 2, 'Vente de Billetterie: DELACOURT LYDIE pour la prestation SPADIUM', '', '30', '949822404'),
(125, 2, 'Vente de Billetterie: JANNEE Marine pour la prestation CINEMA LE REX', '', '16', '299907954'),
(126, 2, 'Vente de Billetterie: LE CORRONC LAURENCE pour la prestation CINEMA LE REX', '', '40', '924303114'),
(127, 2, 'Vente de Billetterie: DUMAINE CHRISTELLE pour la prestation CINEMA LE REX', '', '20', '841144880'),
(128, 2, 'Vente de Billetterie: AUDRAIN ERWAN pour la prestation CINEMA LE REX', '', '16', '17171646'),
(129, 2, 'Vente de Billetterie: LOSTANLEN MATHIEU pour la prestation CINEMA LE REX', '', '16', '160845835'),
(132, 2, 'Vente de Billetterie: NICOLAS SEBASTIEN pour la prestation BOWLING', '', '56', '954743622'),
(133, 2, 'Vente de Billetterie: LE DUC CLAUDE pour la prestation CINEMA LE REX', '', '20', '811173882'),
(134, 2, 'Vente de Billetterie: JANNEE Marine pour la prestation CINEMA LE REX', '', '28', '181949756'),
(135, 2, 'Vente de Billetterie: GAUTHIER ANGELIQUE pour la prestation BOWLING', '', '12', '32082757');

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
(29, 103, '1452124800', 3, '24', 1, '857344214', 1),
(30, 173, '1452124800', 3, '24', 1, '264493447', 1),
(32, 192, '1453244400', 3, '8', 1, '22867920', 0),
(33, 38, '1453417200', 3, '30', 1, '382854884', 1),
(34, 145, '1453417200', 3, '12', 1, '53354565', 1),
(35, 197, '1452553200', 3, '40', 1, '538969478', 1),
(36, 85, '1453244400', 3, '60', 1, '521556713', 1),
(37, 63, '1453417200', 3, '8', 1, '255327354', 1),
(39, 104, '1453417200', 3, '24', 1, '474334037', 1),
(40, 37, '1453071600', 3, '8', 1, '83324079', 1),
(41, 80, '1452812400', 3, '4', 1, '812365170', 1),
(42, 196, '1453676400', 3, '20', 1, '41863923', 0),
(43, 90, '1453762800', 3, '24', 1, '774464968', 1),
(44, 176, '1453676400', 3, '30', 1, '137974852', 1),
(45, 41, '1453762800', 3, '60', 1, '188979949', 1),
(46, 167, '1454022000', 3, '8', 1, '55655296', 0),
(47, 126, '1454022000', 3, '16', 1, '97972125', 0),
(48, 87, '1454367600', 3, '16', 1, '860947528', 1),
(50, 46, '1454367600', 3, '20', 1, '291580659', 1),
(51, 38, '1454540400', 3, '68', 1, '674188669', 1),
(54, 70, '1453762800', 3, '40', 1, '58228041', 0),
(55, 216, '1454022000', 3, '8', 1, '70197584', 0),
(56, 150, '1454626800', 3, '20', 1, '507655685', 1),
(58, 29, '1454626800', 3, '16', 1, '689177670', 1),
(60, 126, '1454626800', 3, '40', 1, '569914367', 1),
(62, 21, '1454454000', 3, '42', 1, '92595969', 0),
(63, 94, '1454626800', 3, '42', 1, '54634938', 0),
(64, 161, '1455231600', 3, '16', 1, '13203518', 0),
(65, 103, '1455231600', 3, '48', 1, '43556109', 1),
(66, 116, '1455231600', 3, '20', 1, '63318820', 1),
(67, 131, '1454972400', 3, '38', 1, '168644925', 1),
(68, 152, '1455145200', 3, '16', 1, '12697610', 1),
(69, 195, '1455145200', 3, '32', 1, '877758626', 1),
(70, 94, '1455145200', 3, '40', 1, '332556857', 1),
(71, 8, '1455490800', 3, '60', 1, '737199125', 1),
(72, 90, '1455490800', 3, '20', 1, '575764955', 1),
(73, 161, '1455663600', 3, '16', 1, '88939120', 0),
(74, 8, '1455663600', 3, '16', 1, '188806674', 1),
(75, 36, '1455663600', 3, '30', 1, '949822404', 1),
(79, 102, '1455750000', 3, '40', 1, '924303114', 1),
(80, 44, '1455750000', 3, '20', 1, '841144880', 1),
(81, 3, '1452380400', 3, '16', 1, '17171646', 1),
(82, 155, '1455750000', 3, '16', 1, '160845835', 1),
(83, 172, '1455750000', 3, '56', 1, '954743622', 1),
(84, 106, '1455750000', 3, '20', 1, '811173882', 1),
(85, 217, '1455663600', 3, '28', 1, '181949756', 1),
(86, 51, '1455836400', 3, '12', 1, '32082757', 1);

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
(8, 'Fleurs (d&eacute;c&egrave;s de la maman de Mme Le Tadic)', '05/01/2016', '50', '4637148702'),
(10, 'T&eacute;l&eacute;gramme', '06/01/2016', '18.98', '2944841027'),
(11, 'Frais bancaires', '08/01/2016', '7.75', '8893213304'),
(12, 'Carte CE', '12/01/2016', '275.88', '8302040784'),
(13, 'OUEST FRANCE journal', '08/01/2016', '25.30', '7645986774'),
(15, 'emap (tshirt)', '15/01/2016', '144', '5585740162'),
(16, 'repas Gueltas', '15/01/2016', '6818.01', '7629237808'),
(17, 'tombola (repas Guelta)', '15/01/2016', '1098.89', '7476335754'),
(20, 'frais bancaires', '02/01/2016', '7.75', '1175317145'),
(21, 'location de salle', '15/01/2016', '445', '47353963'),
(22, 'graph impress', '22/01/2016', '8.64', '3189410251'),
(23, 'CAFE MENEZ', '05/02/2016', '126.09', '1795909610');

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
(80, 1, '132.5', ''),
(81, 2, '', ''),
(82, 3, '40500.52', '63.22'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '700', '100'),
(87, 8, '10000', ''),
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
(107, 28, '39399.06', '51496.24'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', '400'),
(113, 34, '', ''),
(114, 35, '', '38000.52'),
(115, 36, '', ''),
(116, 37, '', ''),
(117, 38, '', ''),
(118, 39, '', ''),
(119, 40, '', ''),
(120, 41, '', ''),
(121, 42, '', ''),
(122, 43, '', ''),
(123, 44, '100', ''),
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
(134, 55, '835.32', ''),
(135, 56, '', ''),
(136, 57, '63.22', '0'),
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

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `num_mouvement`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(36, '9319239', '1420066800', 'SUBVENTION ANNUEL', 3, '38000.52', ''),
(37, '8599421', '1421622000', 'SFR Facture 1', 3, '', '63.22');

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
(17, '5699458', 1, '132.50'),
(18, '6375530', 3, '2500'),
(19, '1777720', 7, '300'),
(20, '8605503', 8, '10000');

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
(8, '6037205', 28, '12932.50');

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
(96, '5699458', 1, '132.50', ''),
(97, '6375530', 3, '2500', ''),
(98, '1777720', 7, '300', ''),
(99, '8605503', 8, '10000', ''),
(100, '6037205', 28, '', '12932.50'),
(101, '7476901', 35, '', '38000.52'),
(102, '8607451', 57, '63.22', ''),
(103, '3582399', 55, '835.32', ''),
(104, '6198610', 33, '', '400'),
(105, '7797494', 44, '100', ''),
(107, '9319239', 3, '38000.52', ''),
(108, '8599421', 3, '', '63.22'),
(111, '1132375', 7, '400', ''),
(112, '9313238', 7, '', '100');

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
(33, '7476901', '1420066800', 'SUBVENTION ANNUEL', 35, '', '38000.52'),
(34, '8607451', '1421622000', 'SFR Facture 1', 57, '63.22', ''),
(35, '3582399', '1422745200', 'Abonnement CE INFO.net', 55, '835.32', ''),
(36, '6198610', '1425250800', 'Remboursement Pret 1', 33, '', '400'),
(37, '7797494', '1425337200', 'Emprunt Pret 1', 44, '100', '');

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

--
-- Contenu de la table `compta_pret`
--

INSERT INTO `compta_pret` (`idcomptapret`, `num_mouvement`, `date_pret`, `desc_pret`, `idcomptaplan`, `debit`, `credit`) VALUES
(1, '1132375', '1425250800', 'Remboursement pret 1', 7, '400', ''),
(2, '9313238', '1425337200', 'Emprunt pret 1', 7, '', '100');

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
(34, '7476901', 35, '', '38000.52'),
(35, '8607451', 57, '63.22', ''),
(36, '3582399', 55, '835.32', ''),
(37, '6198610', 33, '', '400'),
(38, '7797494', 44, '100', '');

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
(1, 'C.E ALTHO', '0', '0', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '31-12-2015', '31-12-2016');

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
(46, '857344214', '1452121200', 'Vente de Billetterie: LE DAMANY JULIEN pour la prestation CINEMA LE REX', '', '24'),
(47, '4637148702', '1462053600', 'Fleurs (d&eacute;c&egrave;s de la maman de Mme Le Tadic)', '50', ''),
(49, '2944841027', '1464732000', 'T&eacute;l&eacute;gramme', '18.98', ''),
(50, '1107068416', '1451602800', 'solde du compte n&deg;53166608510', '', '56187.81'),
(51, '264493447', '1452121200', 'Vente de Billetterie: NICOLAS VINCENT pour la prestation CINEMA LE REX', '', '24'),
(52, '1522441190', '1452466800', 'Achat - CINEMA LE REX', '310', ''),
(54, '8893213304', '1470002400', 'Frais bancaires', '7.75', ''),
(55, '8302040784', '1480546800', 'Carte CE', '275.88', ''),
(56, '5256059086', '1451602800', 'cotisation ALTHO', '', '8309.97'),
(57, '7645986774', '1470002400', 'OUEST FRANCE journal', '25.30', ''),
(58, '22867920', '1453244400', 'Vente de Billetterie: RELO YANN pour la prestation CINEMA LE REX', '', '8'),
(59, '382854884', '1453417200', 'Vente de Billetterie: DENIS CAROLE pour la prestation SPADIUM', '', '30'),
(60, '53354565', '1453417200', 'Vente de Billetterie: LE TADIC SYLVIE pour la prestation CINEMA LE REX', '', '12'),
(61, '538969478', '1452553200', 'Vente de Billetterie: ROSSIGNOL SONIA pour la prestation CINEMA LE REX', '', '40'),
(62, '521556713', '1453244400', 'Vente de Billetterie: KOUROU MICHELLE pour la prestation HAPPY PARK', '', '60'),
(63, '255327354', '1453417200', 'Vente de Billetterie: GUILLEMOT VINCENT pour la prestation CINEMA LE REX', '', '8'),
(64, '474334037', '1453417200', 'Vente de Billetterie: LE DENMAT FRANCOIS pour la prestation BOWLING', '', '24'),
(65, '83324079', '1453071600', 'Vente de Billetterie: DELAUNEY MELINDA pour la prestation CINEMA LE REX', '', '8'),
(66, '812365170', '1452812400', 'Vente de Billetterie: JULE BENOIT pour la prestation CINEMA LE REX', '', '4'),
(68, '5585740162', '1452816000', 'emap (tshirt)', '144', ''),
(69, '7629237808', '1452816000', 'repas Gueltas', '6818.01', ''),
(70, '7476335754', '1452816000', 'tombola (repas Guelta)', '1098.89', ''),
(73, '1175317145', '1454281200', 'frais bancaires', '7.75', ''),
(74, '47353963', '1452816000', 'location de salle', '445', ''),
(75, '3189410251', '1453420800', 'graph impress', '8.64', ''),
(76, '41863923', '1453676400', 'Vente de Billetterie: ROLLET OLIVIER pour la prestation CINEMA LE REX', '', '20'),
(77, '774464968', '1453762800', 'Vente de Billetterie: LE BELLER DAVID pour la prestation CINEMA LE REX', '', '24'),
(79, '137974852', '1453676400', 'Vente de Billetterie: ORINEL TRISHA pour la prestation SPADIUM', '', '30'),
(80, '188979949', '1453762800', 'Vente de Billetterie: DONVAL AMANDINE pour la prestation SPADIUM', '', '60'),
(81, '55655296', '1454022000', 'Vente de Billetterie: NAPOLEONI NICOLAS pour la prestation CINEMA LE REX', '', '8'),
(82, '97972125', '1454022000', 'Vente de Billetterie: LE JOSSEC SOLENE pour la prestation CINEMA LE REX', '', '16'),
(84, '860947528', '1454367600', 'Vente de Billetterie: LE BAIL NOLWENN pour la prestation CINEMA LE REX', '', '16'),
(86, '291580659', '1454367600', 'Vente de Billetterie: ELLIAS MARTINE pour la prestation KARTING ADULTE', '', '20'),
(88, '840449340', '1454367600', 'Vente de Billetterie: JACQUES BERTRAND pour la prestation CINEMA LE REX', '', '4'),
(89, '124297596', '1454540400', 'Vente de Billetterie: DENIS CAROLE pour la prestation HAPPY PARK', '', '18'),
(91, '58228041', '1453762800', 'Vente de Billetterie: JACQUES BERTRAND pour la prestation CINEMA LE REX', '', '40'),
(92, '70197584', '1454022000', 'Vente de Billetterie: JANVIER Helene pour la prestation CINEMA LE REX', '', '8'),
(93, '507655685', '1454626800', 'Vente de Billetterie: LEROY GREGORY pour la prestation CINEMA LE REX', '', '20'),
(94, '122775566', '1454540400', 'Vente de Billetterie: DENIS CAROLE pour la prestation CINEMA LE REX', '', '38'),
(95, '674188669', '1454540400', 'Vente de Billetterie: DENIS CAROLE pour la prestation SPADIUM', '', '68'),
(98, '689177670', '1454626800', 'Vente de Billetterie: COPPENS FREDERIC pour la prestation CINEMA LE REX', '', '16'),
(100, '569914367', '1454626800', 'Vente de Billetterie: LE JOSSEC SOLENE pour la prestation CINEMA LE REX', '', '40'),
(102, '1795909610', '1462140000', 'CAFE MENEZ', '126.09', ''),
(103, '92595969', '1454454000', 'Vente de Billetterie: CARREE STEPHANIE pour la prestation CAFE ARMOR', '', '42'),
(104, '54634938', '1454626800', 'Vente de Billetterie: LE BRAZIDEC MICHELLE pour la prestation CAFE ARMOR', '', '42'),
(105, '13203518', '1455231600', 'Vente de Billetterie: MONNERAYE CHRISTOPHE pour la prestation CINEMA LE REX', '', '16'),
(106, '43556109', '1455231600', 'Vente de Billetterie: LE DAMANY JULIEN pour la prestation BOWLING', '', '48'),
(107, '63318820', '1455231600', 'Vente de Billetterie: LE GOFF SYLVAIN pour la prestation BOWLING', '', '20'),
(108, '724608986', '1454972400', 'Vente de Billetterie: LE MEUDEC ANTHONY pour la prestation CINEMA LE REX', '', '20'),
(109, '168644925', '1454972400', 'Vente de Billetterie: LE MEUDEC ANTHONY pour la prestation HAPPY PARK', '', '38'),
(110, '12697610', '1455145200', 'Vente de Billetterie: LIGER MALIKA pour la prestation CINEMA LE REX', '', '16'),
(111, '521537019', '1455145200', 'Vente de Billetterie: ROBINO STEPHANIE pour la prestation CINEMA LE REX', '', '16'),
(112, '877758626', '1455145200', 'Vente de Billetterie: ROBINO STEPHANIE pour la prestation BOWLING', '', '32'),
(113, '332556857', '1455145200', 'Vente de Billetterie: LE BRAZIDEC MICHELLE pour la prestation CINEMA LE REX', '', '40'),
(114, '9586714804', '1455231600', 'Achat - CINEMA LE REX', '620', ''),
(115, '3899937165', '1454367600', 'Achat - CINEMA LE REX', '310', ''),
(116, '6298604514', '1454454000', 'Achat - HAPPY PARK', '237', ''),
(117, '221485491', '1455490800', 'Vente de Billetterie: BELANDRES DIONISIA pour la prestation HAPPY PARK', '', '30'),
(118, '737199125', '1455490800', 'Vente de Billetterie: BELANDRES DIONISIA pour la prestation SPADIUM', '', '60'),
(119, '575764955', '1455490800', 'Vente de Billetterie: LE BELLER DAVID pour la prestation CINEMA LE REX', '', '20'),
(120, '88939120', '1455663600', 'Vente de Billetterie: MONNERAYE CHRISTOPHE pour la prestation CINEMA LE REX', '', '16'),
(121, '188806674', '1455663600', 'Vente de Billetterie: BELANDRES DIONISIA pour la prestation CINEMA LE REX', '', '16'),
(122, '949822404', '1455663600', 'Vente de Billetterie: DELACOURT LYDIE pour la prestation SPADIUM', '', '30'),
(125, '299907954', '1455750000', 'Vente de Billetterie: JANNEE Marine pour la prestation CINEMA LE REX', '', '16'),
(126, '924303114', '1455750000', 'Vente de Billetterie: LE CORRONC LAURENCE pour la prestation CINEMA LE REX', '', '40'),
(127, '841144880', '1455750000', 'Vente de Billetterie: DUMAINE CHRISTELLE pour la prestation CINEMA LE REX', '', '20'),
(128, '17171646', '1452380400', 'Vente de Billetterie: AUDRAIN ERWAN pour la prestation CINEMA LE REX', '', '16'),
(129, '160845835', '1455750000', 'Vente de Billetterie: LOSTANLEN MATHIEU pour la prestation CINEMA LE REX', '', '16'),
(132, '954743622', '1455750000', 'Vente de Billetterie: NICOLAS SEBASTIEN pour la prestation BOWLING', '', '56'),
(133, '811173882', '1455750000', 'Vente de Billetterie: LE DUC CLAUDE pour la prestation CINEMA LE REX', '', '20'),
(134, '181949756', '1455663600', 'Vente de Billetterie: JANNEE Marine pour la prestation CINEMA LE REX', '', '28'),
(135, '32082757', '1455836400', 'Vente de Billetterie: GAUTHIER ANGELIQUE pour la prestation BOWLING', '', '12');

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
(1, 'BILLETTERIE INTERNE DU C.E'),
(2, 'FOURNISSEURS EXTERIEURS AU C.E'),
(3, 'ACTIONS SOCIALES');

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
(26, 29, 1, '6', '24', '13.2', 0, ''),
(27, 30, 1, '6', '24', '13.2', 0, ''),
(28, 32, 1, '2', '8', '4.4', 0, ''),
(29, 33, 13, '1', '30', '8', 0, ''),
(30, 34, 1, '3', '12', '6.6', 0, ''),
(31, 35, 1, '10', '40', '22', 0, ''),
(32, 36, 12, '10', '60', '19', 0, ''),
(33, 37, 1, '2', '8', '4.4', 0, ''),
(34, 39, 14, '6', '24', '10.8', 0, ''),
(35, 40, 1, '2', '8', '4.4', 0, ''),
(36, 41, 1, '1', '4', '2.2', 0, ''),
(37, 42, 1, '5', '20', '11', 0, ''),
(38, 43, 1, '6', '24', '13.2', 0, ''),
(40, 44, 13, '1', '30', '8', 0, ''),
(41, 45, 13, '2', '60', '16', 0, ''),
(42, 46, 1, '2', '8', '4.4', 0, ''),
(43, 47, 1, '4', '16', '8.8', 0, ''),
(44, 48, 1, '4', '16', '8.8', 0, ''),
(46, 50, 2, '2', '20', '4', 0, ''),
(47, 51, 12, '3', '18', '5.7', 0, ''),
(49, 54, 1, '10', '40', '22', 0, ''),
(50, 55, 1, '2', '8', '4.4', 0, ''),
(51, 56, 1, '5', '20', '11', 0, ''),
(52, 51, 1, '5', '20', '11', 0, ''),
(53, 51, 13, '1', '30', '8', 0, ''),
(56, 58, 1, '4', '16', '8.8', 0, ''),
(58, 60, 1, '10', '40', '22', 0, ''),
(60, 62, 18, '24', '42', '0', 0, ''),
(61, 63, 18, '24', '42', '0', 0, ''),
(62, 64, 1, '4', '16', '8.8', 0, ''),
(63, 65, 14, '12', '48', '21.6', 0, ''),
(64, 66, 14, '5', '20', '9', 0, ''),
(65, 67, 1, '5', '20', '11', 0, ''),
(66, 67, 12, '3', '18', '5.7', 0, ''),
(67, 68, 1, '4', '16', '8.8', 0, ''),
(68, 69, 1, '4', '16', '8.8', 0, ''),
(69, 69, 14, '4', '16', '7.2', 0, ''),
(70, 70, 1, '10', '40', '22', 0, ''),
(71, 71, 12, '5', '30', '9.5', 0, ''),
(72, 71, 13, '1', '30', '8', 0, ''),
(73, 72, 1, '5', '20', '11', 0, ''),
(74, 73, 1, '4', '16', '8.8', 0, ''),
(75, 74, 1, '4', '16', '8.8', 0, ''),
(76, 75, 13, '1', '30', '8', 0, ''),
(80, 79, 1, '10', '40', '22', 0, ''),
(81, 80, 1, '5', '20', '11', 0, ''),
(82, 81, 1, '4', '16', '8.8', 0, ''),
(83, 82, 1, '4', '16', '8.8', 0, ''),
(86, 83, 14, '14', '56', '25.2', 0, ''),
(87, 84, 1, '5', '20', '11', 0, ''),
(88, 85, 1, '7', '28', '15.4', 0, ''),
(89, 86, 14, '3', '12', '5.4', 0, '');

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
(5, '1.9.0', '191015-EVO');

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
(3, 'CEALTHO', '4e36609fabca9e6aaafbbb742f31d05f', 1);

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
(1, 1, 'CINEMA LE REX', '', '30-06-2016', '4', '2.2', '6.2', '200', '52', 0),
(2, 1, 'KARTING ADULTE', '', '31-01-2017', '10', '2', '12', '100', '86', 0),
(3, 1, 'KARTING ENFANT', '', '30-04-2017', '7', '3', '10', '100', '25', 0),
(4, 2, 'PRADEL', '', '26-03-2019', '1', '0', '1', '1000', '9839.28', 0),
(5, 2, 'BIJOU', '', '21-02-2016', '1', '0', '1', '1000', '9764.36', 0),
(6, 3, 'NAISSANCE', '', '31-12-2016', '0', '100', '100', '1', '5', 0),
(7, 3, 'CHEQUES CADEAUX NOEL ADULTES', '', '31-03-2016', '0', '80', '80', '1', '99', 0),
(8, 3, 'CHEQUE CADEAUX NOEL ENFANTS', '', '31-03-2016', '0', '40', '40', '8', '197', 0),
(9, 2, 'LE STER (g&acirc;teau)', '02-01-2016', '30-04-2019', '1', '0', '1', '1000', '1000', 0),
(10, 2, 'GAILLARD (g&acirc;teau)', '02-01-2016', '31-07-2019', '1', '0', '1', '1000', '575', 0),
(11, 2, 'chocolats ORDISCOM', '01-12-2015', '28-04-2018', '1', '0', '1', '10000', '500', 0),
(12, 1, 'HAPPY PARK', '01-01-2016', '09-03-2019', '6', '1.9', '7.9', '100', '26', 0),
(13, 1, 'SPADIUM', '01-01-2016', '02-03-2019', '30', '8', '38', '100', '4', 0),
(14, 1, 'BOWLING', '01-01-2016', '06-07-2019', '4', '1.8', '5.8', '100', '149', 0),
(15, 1, 'ZOO ENFANT', '01-01-2016', '06-07-2019', '7', '3', '10', '', '', 0),
(16, 1, 'ZOO ADULTE', '01-01-2016', '06-04-2019', '12', '2.5', '14.5', '', '', 0),
(17, 1, 'KINGOLAND', '01-01-2016', '05-04-2019', '10', '3.5', '13.5', '', '', 0),
(18, 1, 'CAFE ARMOR', '02-02-2016', '30-01-2017', '1.75', '0', '1.75', '100', '24', 0);

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
(5, 'solde du compte n&deg;53166608510', '01/01/2016', '56187.81', '1107068416'),
(7, 'cotisation ALTHO', '01/01/2016', '8309.97', '5256059086');

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
(26, 29, 1, '24', 'caisse epargne', 'LE DAMANY Julien', '0106', 1),
(27, 30, 1, '24', 'CAISSE EPARGNE', 'NICOLAS VINCENT', '0000133', 1),
(28, 33, 1, '30', 'CAISSE D EPARGNE', 'DENIS CAROLE', '0564', 1),
(29, 34, 1, '12', 'CMB', 'LE TADIC ', '1462', 1),
(30, 35, 1, '40', 'CAISSE D EPARGNE', 'ROSSIGNOL ', '9203', 1),
(31, 36, 1, '60', 'CMB', 'KOUROU MICHELLE', '0875', 1),
(32, 37, 1, '8', 'CREDIT AGRICOLE', 'GUILLEMOT VINCENT', '0669', 1),
(33, 39, 1, '24', 'CMB', 'LE DENMAT FRANCOIS', '8162', 1),
(34, 40, 1, '8', 'CREDIT AGRICOLE', 'DELAUNEY MELINDA', '5457', 1),
(35, 41, 3, '4', '', 'JULE BENOIT', '671534477', 1),
(36, 32, 3, '8', '', 'RELO YANN', '574202055', 1),
(37, 42, 3, '20', '', 'ROLLET OLIVIER', '877121735', 1),
(38, 43, 1, '24', 'credit agricole', 'LE BELLER DAVID', '8788', 1),
(39, 44, 1, '30', 'caisse d epergne', 'ORINEL ', '9341', 1),
(40, 45, 1, '60', 'CAISSE D EPARGNE', 'DONVAL AMANDINE', '0000218', 1),
(41, 46, 3, '8', '', 'NAPOLEONI NICOLAS', '192179697', 1),
(42, 47, 1, '16', 'cmb', 'LE JOSSEC SOLENE', '8221629', 1),
(43, 48, 1, '16', 'CREDIT AGRICOLE', 'LE BAIL ', '1356', 1),
(44, 50, 1, '20', 'CREDIT AGRICOLE', 'ELLIAS MARTINE', '1396', 1),
(45, 55, 3, '8', '', 'JANVIER Helene', '892107311', 0),
(47, 54, 1, '40', 'credit agricole', 'JACQUES BERTRAND', '0484395', 1),
(48, 56, 3, '20', '', 'LEROY GREGORY', '680674428', 0),
(49, 51, 1, '68', '', 'DENIS CAROLE', '', 1),
(51, 58, 1, '16', 'BNP', 'COPPENS FREDERIC', '9867480', 1),
(53, 60, 1, '40', 'CMB', 'LE JOSSEC SOLENE', '8221634', 1),
(54, 62, 1, '42', 'cmb', 'CARREE STEPHANIE', '8146925', 1),
(55, 63, 1, '42', 'cmb', 'LE BRAZIDEC MICHELLE', '9665708', 1),
(56, 65, 1, '48', 'CAISSE D EPARGNE', 'LE DAMANY JULIEN', '0101', 1),
(57, 66, 3, '20', '', 'LE GOFF SYLVAIN', '605377804', 0),
(58, 67, 1, '38', 'CMB', 'LE MEUDEC ANTHONY', '6991311', 1),
(59, 68, 1, '16', 'CMB', 'LIGER MALIKA', '4431823', 1),
(60, 69, 1, '32', 'CMB', 'ROBINO ', '4676269', 1),
(61, 70, 1, '40', 'CMB', 'LE BRAZIDEC MICHELLE', '5709', 1),
(62, 71, 1, '60', 'caisse epargne', 'BELANDRES DIONISIA', '1300', 0),
(63, 72, 1, '20', 'credit agricole', 'LE BELLER DAVID', '7608789', 0),
(64, 73, 2, '16', 'ca', 'MONNERAYE CHRISTOPHE', '6843040', 0),
(65, 74, 1, '16', 'caisse d epargne', 'BELANDRES DIONISIA', '4603371', 0),
(66, 64, 1, '16', 'credit agricole', 'MONNERAYE CHRISTOPHE', '6843040', 0),
(67, 75, 3, '30', '', 'DELACOURT LYDIE', '347703086', 0),
(68, 79, 1, '40', 'credit agricole', 'LE CORRONC LAURENCE', '5207621', 0),
(69, 80, 1, '20', 'caisse epargne', 'DUMAINE CHRISTELLE', '3687507', 0),
(71, 81, 3, '16', '', 'AUDRAIN ERWAN', '773476659', 0),
(72, 82, 1, '16', 'cmb', 'LOSTANLEN MATHIEU', '2240477', 0),
(73, 83, 1, '56', 'credit agricole', 'NICOLAS SEBASTIEN', '4374759', 0),
(74, 84, 3, '20', '', 'LE DUC CLAUDE', '507697653', 0),
(75, 85, 1, '28', 'CAISSE D EPARGNE', 'JANNEE Marine', '99765', 0),
(76, 86, 1, '12', 'cmb', 'GAUTHIER ANGELIQUE', '4454031', 0);

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
(2, '02/02/2016', 1, '8108671', '360', 1),
(3, '02/02/2016', 2, '4604563', '40', 1),
(4, '12/02/2016', 1, '8108672', '458', 1);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE `remise_banque_chq` (
  `idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `remise_banque_chq`
--

INSERT INTO `remise_banque_chq` (`idremisebanquechq`, `idremisebanque`, `idreglementventepresta`) VALUES
(1, 2, 32),
(2, 2, 26),
(3, 2, 27),
(4, 2, 28),
(5, 2, 29),
(6, 2, 30),
(7, 2, 31),
(8, 2, 33),
(9, 2, 34),
(10, 2, 38),
(11, 2, 39),
(12, 2, 40),
(13, 2, 42),
(14, 4, 43),
(15, 4, 44),
(16, 4, 47),
(17, 4, 61),
(18, 4, 58),
(19, 4, 53),
(20, 4, 51),
(21, 4, 60),
(22, 4, 54),
(23, 4, 55),
(24, 4, 59),
(25, 4, 56),
(26, 4, 49);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE `remise_banque_esp` (
  `idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `remise_banque_esp`
--

INSERT INTO `remise_banque_esp` (`idremisebanqueesp`, `idremisebanque`, `idreglementventepresta`) VALUES
(1, 3, 35),
(2, 3, 36),
(3, 3, 37),
(4, 3, 41);

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
(2, '', 2, 'ASSET', 'MARIE JEANNE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '156'),
(3, '', 1, 'AUDRAIN', 'ERWAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '150.2'),
(4, '', 1, 'AUFFRET', 'JEAN LUC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '99'),
(5, '', 1, 'BAUCHER', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(6, '', 3, 'BAUDOIN', 'FABIOLA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '153'),
(7, '', 3, 'BEAUCHENE', 'GERALDINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(8, '', 2, 'BELANDRES', 'DIONISIA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '132.7'),
(9, '', 1, 'BELLEC', 'RONAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '149.4'),
(10, '', 1, 'BERNA', 'YANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(11, '', 2, 'BERNARD', 'NATHALIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(12, '', 2, 'BERNARD', 'VALERIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(13, '', 1, 'BLANCHARD', 'NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(14, '', 1, 'BORROMEE', 'CEDRIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '87'),
(15, '', 1, 'BOSCHER', 'JULIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(16, '', 1, 'BOUCICAUD', 'DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(17, '', 2, 'BOUFFAUT', 'ROZENN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '156.6'),
(18, '', 3, 'BOUFFAUT', 'VALERIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(19, '', 3, 'BOULEAU JAMOIS', 'ANDREA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(20, '', 2, 'BOUYAT', 'BRIGITTE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(21, '', 2, 'CARREE', 'STEPHANIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(22, '', 1, 'CHATELIER', 'SYLVAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(23, '', 1, 'CHEREL', 'GAETAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(24, '', 1, 'CHEREL', 'JEAN NOEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(25, '', 2, 'CHEVILLARD', 'MARIELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(26, '', 1, 'COBIGO', 'XAVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(27, '', 1, 'CONAN', 'MICHEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(28, '', 1, 'CONTINI', 'PAUL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(29, '', 1, 'COPPENS', 'FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '147.8'),
(30, '', 1, 'COQUELIN', 'THOMAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(31, '', 1, 'COUDRIN', 'CHRISTIAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(32, '', 2, 'CREHIM', 'MARIE-LAURE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(33, '', 2, 'CROISIER', 'ANNE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(34, '', 3, 'DARCEL', 'NATACHA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(35, '', 3, 'DAVID', 'ARLETTE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(36, '', 3, 'DELACOURT', 'LYDIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '151'),
(37, '', 3, 'DELAUNEY', 'MELINDA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '154.6'),
(38, '', 2, 'DENIS', 'CAROLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '126.3'),
(39, '', 1, 'DERO', 'CHRISTIAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(40, '', 1, 'DIAZ', 'LUC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(41, '', 3, 'DONVAL', 'AMANDINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '143'),
(42, '', 1, 'DUARTE', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(43, '', 1, 'DUCLOS', 'OLIVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(44, '', 2, 'DUMAINE', 'CHRISTELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '148'),
(45, '', 1, 'DUPUIS', 'FABIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(46, '', 2, 'ELLIAS', 'MARTINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '155'),
(47, '', 3, 'FAURE', 'MATHILDE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(48, '', 1, 'FERON', 'PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(49, '', 3, 'FLORIS', 'STEPHANIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(50, '', 1, 'GAUDICHON', 'OLIVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(51, '', 3, 'GAUTHIER', 'ANGELIQUE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '153.6'),
(52, '', 1, 'GENTILHOMME', 'MICHEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(53, '', 1, 'GIDEL', 'AYMERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(54, '', 1, 'GIQUEL', 'PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(55, '', 1, 'GOIBIER', 'MICKAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(56, '', 1, 'GORAIN', 'NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(57, '', 3, 'GUEGAN', 'BRIGITTE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(58, '', 3, 'GUEGUIN', 'EMMANUELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(59, '', 1, 'GUEHENNEUX', 'NATHANAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(60, '', 1, 'GUENARD', 'NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(61, '', 3, 'GUENO', 'BRIGITTE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(62, '', 1, 'GUILLAUME', 'PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(63, '', 1, 'GUILLEMOT', 'VINCENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '154.6'),
(64, '', 1, 'GUILLOME', 'FABRICE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(65, '', 1, 'HAMONIC', 'BERTRAND', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(66, '', 1, 'HEMONIC', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(67, '', 2, 'HERVIO', 'ROSELINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(68, '', 1, 'HEUZE', 'MICKAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(69, '', 1, 'IKHEDDACHENE', 'RACHID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(70, '', 1, 'JACQUES', 'BERTRAND', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '139.2'),
(71, '', 1, 'JAFFRY', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(72, '', 3, 'JAN', 'SEVERINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(73, '', 3, 'JEGO', 'MARYLINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(74, '', 2, 'JEGOREL', 'CELINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(75, '', 1, 'JEHANNO', 'EMMANUEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(76, '', 1, 'JEHANNO', 'ERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(77, '', 1, 'JEHANNO', 'LIONEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(78, '', 1, 'JOUBIER', 'PIERRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(79, '', 2, 'JOUINI', 'ELODIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(80, '', 1, 'JULE', 'BENOIT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '156.8'),
(81, '', 3, 'KALESINSKA', 'EWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(82, '', 1, 'KERLEAU', 'LUDOVIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(83, '', 3, 'KHAIRANI', 'STEPHANIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(84, '', 3, 'KHAMAR', 'MYRIAM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(85, '', 2, 'KOUROU', 'MICHELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '140'),
(86, '', 1, 'LAMOUR', 'THIERRY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(87, '', 2, 'LE BAIL', 'NOLWENN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '150.2'),
(88, '', 1, 'LE BAS', 'NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(89, '', 3, 'LE BELLER', 'CHANTAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(90, '', 1, 'LE BELLER', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '134.8'),
(91, '', 2, 'LE BIHAN', 'CHANTAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(92, '', 1, 'LE BOLAY', 'CHARLES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(93, '', 1, 'LE BOURHIS', 'FLORIAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(94, '', 2, 'LE BRAZIDEC', 'MICHELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '137'),
(95, '', 1, 'LE BRETON', 'ROMAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(96, '', 1, 'LE CAER', 'YANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(97, '', 1, 'LE COGUIC', 'JACQUES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(98, '', 1, 'LE COQ', 'JEAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(99, '', 1, 'LE CORRE', 'GUENAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(100, '', 3, 'LE CORRE', 'MARIE PIERRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(101, '', 1, 'LE CORRE', 'PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(102, '', 2, 'LE CORRONC', 'LAURENCE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '137'),
(103, '', 1, 'LE DAMANY', 'JULIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '124.2'),
(104, '', 1, 'LE DENMAT', 'FRANCOIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '148.2'),
(105, '', 1, 'LE DOUAIRON', 'YANNICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(106, '', 1, 'LE DUC', 'CLAUDE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '148'),
(107, '', 2, 'LE FEE', 'ISABELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(108, '', 3, 'LE FORESTIER', 'GUENAELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(109, '', 1, 'LE GAL', 'MICKAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(110, '', 2, 'LE GALL', 'CLAUDINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(111, '', 2, 'LE GALLIARD', 'CHRISTELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(112, '', 1, 'LE GENDRE', 'XAVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(113, '', 3, 'LE GENTIL', 'CELINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(114, '', 3, 'LE GOANVIC', 'KARINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(115, '', 3, 'LE GOFF', 'CLAIRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(116, '', 1, 'LE GOFF', 'SYLVAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '150'),
(117, '', 1, 'LE GOVIC', 'JEROME', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(118, '', 3, 'LE GUELLAUT', 'MANUELA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(119, '', 2, 'LE GUELLEC', 'FLORENCE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(120, '', 1, 'LE GUENNEC', 'GAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(121, '', 1, 'LE GUENNEC', 'LAURENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(122, '', 1, 'LE GUERNEVE', 'BRUNO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(123, '', 2, 'LE GUYADEC', 'NICOLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(124, '', 2, 'LE HENANFF', 'LELEBIT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(125, '', 1, 'LE HIR', 'OLIVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(126, '', 2, 'LE JOSSEC', 'SOLENE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '137'),
(127, '', 1, 'LE MAREC', 'CEDRIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(128, '', 1, 'LE MESTRE', 'MIKAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(129, '', 2, 'LE METAYER', 'MARIE PIERRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(130, '', 1, 'LE METAYER', 'NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(131, '', 1, 'LE MEUDEC', 'ANTHONY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '142.3'),
(132, '', 2, 'LE MEUR', 'CATHERINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(133, '', 1, 'LE MOULLEC', 'FERDINAND', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(134, '', 2, 'LE NEAL', 'NELLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(135, '', 2, 'LE NORCY', 'CHRISTINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(136, '', 2, 'LE PABIC', 'PATRICIA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(137, '', 2, 'LE PETITCORPS', 'MARTINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(138, '', 1, 'LE PRE', 'LIONEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(139, '', 2, 'LE RAY', 'NELLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(140, '', 1, 'LE REOUR', 'ARNAUD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(141, '', 1, 'LE REOUR', 'BRUNO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(142, '', 2, 'LE RUYET', 'PATRICIA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(143, '', 1, 'LE SAUCE', 'ERWAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(144, '', 2, 'LE TADIC', 'JULIET', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(145, '', 2, 'LE TADIC', 'SYLVIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '152.4'),
(146, '', 2, 'LE TENAFF', 'PASCALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(147, '', 3, 'LE TONQUEZE', 'VALERIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(148, '', 1, 'LE TREPUEC', 'ARNAUD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(149, '', 1, 'LEGER', 'MATTHIEU', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(150, '', 1, 'LEROY', 'GREGORY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '148'),
(151, '', 2, 'LEVEQUE', 'ANNIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(152, '', 3, 'LIGER', 'MALIKA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '150.2'),
(153, '', 2, 'LORANS', 'MARIE NOELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(154, '', 3, 'LORANS', 'MORGANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(155, '', 1, 'LOSTANLEN', 'MATHIEU', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '150.2'),
(156, '', 1, 'LUCAS', 'ARNAUD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(157, '', 1, 'MADORE', 'FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(158, '', 1, 'MATHE', 'CYRIL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(159, '', 2, 'MOISAN', 'ISABELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(160, '', 1, 'MOLLARD', 'LAURENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(161, '', 1, 'MONNERAYE', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(162, '', 1, 'MOREAU', 'SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(163, '', 1, 'MORVAN', 'ERWANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(164, '', 3, 'MUROS', 'EMMANUELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(165, '', 1, 'N''DION', 'PATRICE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(166, '', 1, 'NAGA', 'ARNAUD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(167, '', 1, 'NAPOLEONI', 'NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(168, '', 1, 'NEVEU', 'PIERRE OLIVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(169, '', 1, 'NEVOT', 'SAMUEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(170, '', 3, 'NICOL', 'VANESSA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(171, '', 1, 'NICOL', 'VINCENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(172, '', 1, 'NICOLAS', 'SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '33.8'),
(173, '', 1, 'NICOLAS', 'VINCENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '145.8'),
(174, '', 2, 'OLLIVIER', 'MARYVONNE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(175, '', 2, 'OLLIVIER', 'VALERIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(176, '', 2, 'ORINEL', 'TRISHA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '151'),
(177, '', 1, 'ORJUBIN', 'RONAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(178, '', 1, 'PATARD', 'NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(179, '', 3, 'PELLETIER', 'KARINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(180, '', 2, 'PENAULT PETRO', 'VALERIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(181, '', 2, 'PERU', 'MICHELE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(182, '', 1, 'PIZON', 'GUILLAUME', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(183, '', 2, 'POQUET', 'VIRGINIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(184, '', 1, 'POULET', 'LUDOVIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(185, '', 1, 'QUENNEMET', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(186, '', 1, 'RAULT', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(187, '', 1, 'RAULT', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(188, '', 1, 'RAULT', 'YOHANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(189, '', 1, 'RAVIART', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(190, '', 2, 'REBELLER', 'MARINA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(191, '', 3, 'REDO', 'ANDREA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(192, '', 1, 'RELO', 'YANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(193, '', 1, 'RITUIT', 'ROMUALD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(194, '', 2, 'RIZIO', 'DORIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(195, '', 2, 'ROBINO', 'STEPHANIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '143'),
(196, '', 1, 'ROLLET', 'OLIVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(197, '', 2, 'ROSSIGNOL', 'SONIA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '137'),
(198, '', 1, 'RUELLO', 'OLIVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(199, '', 1, 'RUNIGO', 'JEROME', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(200, '', 1, 'SALLE DE CHOU', 'OLIVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(201, '', 2, 'SAMSON', 'CAROLINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(202, '', 2, 'SAMSON', 'GENEVIEVE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(203, '', 3, 'SAMYN', 'CELINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(204, '', 1, 'SCHAUSI', 'JEROME', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(205, '', 2, 'STEPHAN', 'NOELLA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(206, '', 2, 'STILLEN', 'GAELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(207, '', 2, 'TANGUY', 'DELPHINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(208, '', 1, 'THOMAS', 'FRANCK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(209, '', 2, 'THOMAS', 'HELENE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(210, '', 2, 'THUILLIER', 'MARIELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(211, '', 1, 'TOURNEMINE', 'GEOFFREY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(212, '', 1, 'TREGOUET', 'JEROME', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(213, '', 1, 'VERNOUX', 'ALEXANDRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(214, '', 3, 'VERTOT', 'SANDRINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(215, '', 3, 'VINCENDEAU', 'JULIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '141'),
(216, '', 0, 'JANVIER', 'Helene', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, ''),
(217, '', 0, 'JANNEE', 'Marine', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '135.8'),
(218, '', 0, 'MOISAN', 'MICKAEL', '', '', '', '', '', '', '', '', '', '', '1', 'ensacheuse', '', '', '', 1, '159'),
(219, '', 0, 'EOCHE', 'AURELIE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '159');

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
(31, '1452121200', '0106', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE DAMANY Julien.', '', '24', 0),
(32, '1452121200', '0000133', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de NICOLAS VINCENT.', '', '24', 0),
(33, '1453417200', '0564', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENIS CAROLE.', '', '30', 0),
(34, '1453417200', '1462', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE TADIC .', '', '12', 0),
(35, '1452553200', '9203', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROSSIGNOL .', '', '40', 0),
(36, '1453244400', '0875', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de KOUROU MICHELLE.', '', '60', 0),
(37, '1453417200', '0669', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUILLEMOT VINCENT.', '', '8', 1),
(38, '1453417200', '8162', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE DENMAT FRANCOIS.', '', '24', 0),
(39, '1453071600', '5457', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DELAUNEY MELINDA.', '', '8', 1),
(40, '1452812400', '671534477', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par JULE BENOIT.', '', '4', 1),
(41, '1453244400', '574202055', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par RELO YANN.', '', '8', 1),
(42, '1453676400', '877121735', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ROLLET OLIVIER.', '', '20', 1),
(43, '1453762800', '8788', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BELLER DAVID.', '', '24', 0),
(44, '1453676400', '9341', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ORINEL .', '', '30', 0),
(45, '1453762800', '0000218', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DONVAL AMANDINE.', '', '60', 0),
(46, '1454022000', '192179697', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par NAPOLEONI NICOLAS.', '', '8', 1),
(47, '1454022000', '8221629', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE JOSSEC SOLENE.', '', '16', 0),
(49, '1454367600', '8108671', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 8108671 en date du 02-02-2016.', '360', '', 1),
(50, '1454367600', '4604563', 'Remise Bancaire', 'Remise de EspÃ¨ce', 'Remise en banque NÂ° 4604563 en date du 02-02-2016.', '40', '', 1),
(51, '1454367600', '1356', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BAIL .', '', '16', 0),
(52, '1454367600', '1396', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ELLIAS MARTINE.', '', '20', 0),
(53, '1454022000', '892107311', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par JANVIER Helene.', '', '8', 0),
(55, '1453762800', '0484395', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JACQUES BERTRAND.', '', '40', 0),
(56, '1454626800', '680674428', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LEROY GREGORY.', '', '20', 0),
(57, '1454540400', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENIS CAROLE.', '', '68', 0),
(60, '1454626800', '9867480', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COPPENS FREDERIC.', '', '16', 0),
(61, '1454626800', '8221634', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE JOSSEC SOLENE.', '', '40', 0),
(62, '1454454000', '8146925', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CARREE STEPHANIE.', '', '42', 0),
(63, '1454626800', '9665708', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BRAZIDEC MICHELLE.', '', '42', 0),
(64, '1455231600', '0101', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE DAMANY JULIEN.', '', '48', 0),
(65, '1455231600', '605377804', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LE GOFF SYLVAIN.', '', '20', 0),
(66, '1454972400', '6991311', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE MEUDEC ANTHONY.', '', '38', 0),
(67, '1455145200', '4431823', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LIGER MALIKA.', '', '16', 0),
(68, '1455145200', '4676269', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROBINO .', '', '32', 0),
(69, '1455145200', '5709', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BRAZIDEC MICHELLE.', '', '40', 0),
(70, '1480633200', '8108672', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 8108672 en date du 02-12-2016.', '458', '', 1),
(71, '1455490800', '1300', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BELANDRES DIONISIA.', '', '60', 0),
(72, '1455490800', '7608789', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BELLER DAVID.', '', '20', 0),
(73, '1455663600', '4603371', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BELANDRES DIONISIA.', '', '16', 0),
(74, '1455231600', '6843040', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MONNERAYE CHRISTOPHE.', '', '16', 0),
(75, '1455663600', '347703086', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DELACOURT LYDIE.', '', '30', 0),
(76, '1455750000', '5207621', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE CORRONC LAURENCE.', '', '40', 0),
(77, '1455750000', '3687507', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DUMAINE CHRISTELLE.', '', '20', 0),
(79, '1452380400', '773476659', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par AUDRAIN ERWAN.', '', '16', 0),
(80, '1455750000', '2240477', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LOSTANLEN MATHIEU.', '', '16', 0),
(81, '1455750000', '4374759', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de NICOLAS SEBASTIEN.', '', '56', 0),
(82, '1455750000', '507697653', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LE DUC CLAUDE.', '', '20', 0),
(83, '1455663600', '99765', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JANNEE Marine.', '', '28', 0),
(84, '1455836400', '4454031', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GAUTHIER ANGELIQUE.', '', '12', 0);

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
  MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
  MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
  MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
  MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
  MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
  MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
  MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
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
  MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
  MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
  MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
  MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_pret`
--
ALTER TABLE `compta_pret`
  MODIFY `idcomptapret` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
  MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
  MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
  MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
  MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
  MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
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
  MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
  MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
  MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
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
  MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
  MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
  MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
