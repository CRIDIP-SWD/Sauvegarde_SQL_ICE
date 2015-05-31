-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 31 Mai 2015 à 18:01
-- Version du serveur :  5.5.41-0ubuntu0.14.04.1
-- Version de PHP :  5.5.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ascmarie`
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
  `date_naissance_ayant_droit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Contenu de la table `ayant_droit`
--

INSERT INTO `ayant_droit` (`idayantdroit`, `idsalarie`, `nom_ayant_droit`, `prenom_ayant_droit`, `date_naissance_ayant_droit`) VALUES
(82, 70, 'MOCKELYN', 'Pascal', ''),
(83, 70, 'MOCKELYN', 'Lucie', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=318 ;

--
-- Contenu de la table `bilan`
--

INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(311, 2, 'Vente de Billetterie: MOCKELYN Maxime pour la prestation LE PALACE', '', '25', '22790851'),
(312, 2, 'Vente de Billetterie: MOCKELYN Maxime pour la prestation PARC ASTERIX', '', '40', '87989586'),
(313, 2, 'Vente de Billetterie: MOCKELYN Maxime pour la prestation PARC ASTERIX', '', '20', '87986750'),
(314, 2, 'Vente de Billetterie: MOCKELYN Pascal pour la prestation PARC ASTERIX', '', '20', ''),
(315, 2, 'Vente de Billetterie: MOCKELYN Maxime pour la prestation fhsdhfjkdhsjkfhjkdshfkjhdqskjhfkjdshkjfhdskjfjksdhkjfhdskjhfkjsqdhdkjfdhsqkjfkqjsdhfhksqd', '', '25', '90506294'),
(316, 1, 'Ajout de la charge Fixe: ADHESION', '2580', '', ''),
(317, 2, 'Ajout de du produit fixe: SUBVENTION FONCTIONNEMENT', '', '25000', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Contenu de la table `billet_ayant_droit`
--

INSERT INTO `billet_ayant_droit` (`idbilletayantdroit`, `idayantdroit`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_facture`) VALUES
(58, 82, '01-02-2015', 3, '20', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=124 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`) VALUES
(120, 70, '01-03-2015', 3, '25', 0),
(121, 70, '02-03-2015', 3, '40', 0),
(122, 70, '03-03-2015', 3, '20', 0),
(123, 70, '04-03-2015', 3, '25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `charge_fixe`
--

INSERT INTO `charge_fixe` (`idchargefixe`, `designation`, `date_charge_fixe`, `montant_charge`) VALUES
(14, 'ADHESION', '01-03-2015', '2580');

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
(80, 1, '121.5', ''),
(81, 2, '', ''),
(82, 3, '98303.23', '83840.51'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '3579.2', '1370'),
(87, 8, '68665.82', '29490.6'),
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
(107, 28, '190124.16', '255880.26'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', '1771.65'),
(112, 33, '', '6480'),
(113, 34, '', ''),
(114, 35, '', '33240'),
(115, 36, '0', '16346.55'),
(116, 37, '0', '3285.03'),
(117, 38, '12082', '0'),
(118, 39, '', '12989.6'),
(119, 40, '716.95', ''),
(120, 41, '1300', ''),
(121, 42, '', ''),
(122, 43, '', ''),
(123, 44, '', ''),
(124, 45, '', ''),
(125, 46, '', ''),
(126, 47, '', ''),
(127, 48, '', ''),
(128, 49, '', ''),
(129, 50, '5910.87', ''),
(130, 51, '23187.5', ''),
(131, 52, '489.9', ''),
(132, 53, '500', ''),
(133, 54, '1770.1', ''),
(134, 55, '21420', '308'),
(135, 56, '15983.8', ''),
(136, 57, '500', ''),
(137, 58, '908.62', '0'),
(138, 59, '21.92', '0'),
(139, 60, '61', ''),
(140, 61, '183', ''),
(141, 62, '94.9', '0'),
(142, 63, '9.95', ''),
(143, 64, '', ''),
(144, 65, '', '402.22'),
(145, 66, '70', '600'),
(146, 67, '', ''),
(147, 68, '', ''),
(148, 69, '', ''),
(149, 70, '0', '0'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=228 ;

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(58, '1396994400', 'CINEMA CHQ 4165695', 3, '17.40', ''),
(70, '1397599200', 'CARTE PISCINE REMISE CHQ 4257500', 3, '22', ''),
(71, '1397599200', 'APV NUITEE CHQ 4165698', 3, '58.00', ''),
(72, '1397599200', 'VIREMENT MARIE SURGELE SUITE A ERREUR', 3, '', '1959'),
(73, '1397685600', 'CINEMA REMISE ESPECES', 3, '23.20', ''),
(74, '1397685600', 'CINEMA REMISE ESPECES', 3, '5.80', ''),
(75, '1397685600', 'CINEMA REMISE CHEQUES 4165697', 3, '75.40', ''),
(76, '1398117600', 'VIR MARIE SURGELES SUITE A ERREUR', 3, '', '1932'),
(77, '1398204000', 'CROATIE REMISE CHEQUES 4165704', 0, '1169', ''),
(81, '1398204000', 'CROATIE REMISE CHQ 4165704', 3, '1169', ''),
(82, '1398204000', 'CALMET REMBOURSEMENT CHQ 6494161', 3, '', '60'),
(83, '1398636000', 'GROLEAU REMBOURSEMENT CHQ 6494151', 3, '', '30'),
(84, '1399327200', 'CROATIE VIREMENT LIVRET BLEU VERS CPT BANQUE ', 3, '7960', ''),
(85, '1399327200', 'ANCV VIREMENT LIVRET BLEU VERS CPT SOCIAL', 3, '3649.20', ''),
(86, '1399327200', 'CINEMA ESPECES', 3, '17', ''),
(87, '1399327200', 'RECTIFICATIF ECRITURE 86', 3, '0.40', ''),
(88, '1399327200', 'CINEMA CHQ 4165705', 3, '46.40', ''),
(89, '1399327200', 'PISCINE CHQ 4165705', 3, '44', ''),
(90, '1400191200', 'REGLEMENT SOLDE VOYAGE CROATIE CHQ 6494163', 3, '', '19477'),
(91, '1400450400', 'REGLEMENT ANCV CHQ 6494162', 3, '', '21420'),
(92, '1400450400', 'FRAIS COMM BANCAIRE', 3, '', '4.21'),
(93, '1400536800', 'AQUARIUM  MINI CHATEAU CHQ 6494158', 3, '', '300'),
(94, '1400623200', 'FRAIS LETTRE CPT DEB', 3, '', '13.50'),
(95, '1400623200', 'VIREMENT LIVRET BLEU SUR CPT BANQUE', 3, '10000', ''),
(96, '1400623200', 'RBST MR GROLLEAU CHQ 6494159', 3, '', '30'),
(97, '1400623200', 'FRAIS COMM INTERVENTION', 3, '', '4.21'),
(98, '1400796000', 'RBST MR GROLLEAU CHQ 6994159', 3, '', '30'),
(99, '1401141600', 'DA DIFFUSION PARTICIPATION SALARIES ESPECES', 3, '70', ''),
(100, '1401141600', 'CINEMA VERS ESPECES', 3, '11.60', ''),
(101, '1401141600', 'DA DIFFUSION PARTICIPATION SALARIES ESPECES', 3, '98', ''),
(102, '1401141600', 'CINEMA CHQ 4165707', 3, '34.80', ''),
(103, '1401400800', 'BIOPARC CHQ 6494164', 3, '', '450'),
(104, '1401746400', 'LES FLORALIES CHQ 6494166    MR FOURNIER', 3, '', '61'),
(105, '1402351200', 'FLEURS CHQ 6994167 MELISSA MENARD', 3, '', '61'),
(106, '1402437600', 'PARTICIPATION DISNEY CHQ 6494168', 3, '', '10'),
(107, '1403042400', 'FLEURS CHQ 6494142 NAISSANCE BARZIC', 3, '', '61'),
(108, '1403042400', 'DA DIFFUSION CHQ 6494142', 3, '', '168'),
(109, '1403820000', 'KEVIN CLARK DJ ANIMATEUR CHQ 6494170', 3, '', '200'),
(110, '1404770400', 'CINEMA ESPECES', 3, '46.4', ''),
(111, '1404770400', 'APV NUITEES CHQ 8013759', 3, '58', ''),
(112, '1404770400', 'AQUARIUM CHQ 8013763', 3, '120', ''),
(113, '1404770400', 'CARTE PISCINE CHQ 8013760', 3, '22', ''),
(114, '1404770400', 'CINEMA CHQ 8013764', 3, '145.30', ''),
(115, '1404770400', 'ZOO DOUE CHQ 8013686', 3, '56', ''),
(116, '1405288800', 'FLEURS MARIAGE GUERIN CHQ 6994169', 3, '', '61'),
(117, '1405288800', 'PISCINE ET ZOO DOUE CHQ 8013765', 3, '109.5', ''),
(118, '1405375200', 'VIR MARIE SURGELES ACOMPTE OS', 3, '15153', ''),
(119, '1405375200', 'VIREMENT MARIE SURGELES ERREUR ATTRIBUTION CPT FONCT', 3, '4116', ''),
(120, '1405461600', 'CINEMA ESP', 3, '11.6', ''),
(121, '1405461600', 'ZOO DOUE CHQ 8013687', 3, '146.5', ''),
(122, '1406066400', 'PRADEL CHQ 6494171', 3, '', '285.55'),
(124, '1407362400', 'VERS SALARIE POUR PRADEL ESPECES', 3, '123.85', ''),
(125, '1407362400', 'VERS SALARIE POUR PRADEL CHQ 9098907', 3, '161.7', ''),
(126, '1408572000', 'CINEMA ESPECES', 3, '52.2', ''),
(127, '1408572000', 'CINEMA ESPECES', 3, '87', ''),
(128, '1409090400', 'VIR ERREUR DIRECTION ASC VERS FCT', 3, '', '4116'),
(129, '1409090400', 'NOUVELLE LUNE CINE CHQ 6494173', 3, '', '1460'),
(130, '1409263200', 'FLEURS CHQ 6494172 DECES MR RICHARD', 3, '', '60'),
(131, '1409695200', 'ACHAT TIMBRES CHQ 6840181', 3, '', '9.95'),
(132, '1410472800', 'ZOO DOUE CHQ 6840183', 3, '', '450'),
(133, '1411509600', 'PISCINE CHQ 6840182', 3, '', '528'),
(134, '1412200800', 'VOYAGES GRONDIN CHQ 6840184', 3, '', '420'),
(135, '1412287200', 'CINEMA  ESP', 3, '5.8', ''),
(136, '1412287200', 'CINEMA ESP', 3, '46.4', ''),
(137, '1412287200', 'CINEMA CHQ 5556274', 3, '23.2', ''),
(138, '1412287200', 'ZOO DOUE ESP', 3, '33', ''),
(139, '1412805600', 'CINEMA  CHQ 5556270', 3, '52.2', ''),
(140, '1412805600', 'ZOO DOUE CHQ 5556276', 3, '162', ''),
(141, '1412805600', 'PISCINE CHQ 5556271', 3, '44', ''),
(142, '1412805600', 'ZOO DOUE CHQ 5556275', 3, '45', ''),
(143, '1413151200', 'DEPART RETRAITE MR GUEGANT CHQ 6840185', 3, '', '100'),
(145, '1414015200', 'CINEMA VERS ESP', 3, '11.6', ''),
(146, '1414015200', 'CINEMA  VERS ESPECES', 3, '23.2', ''),
(147, '1413756000', 'VIR LIVRET BLEU SUR ASC', 3, '5811.40', ''),
(148, '1414015200', 'RECETTES CINEMA CHQ 5556277', 3, '98.60', ''),
(149, '1414364400', 'KADEOS NOEL CHQ 6840188', 3, '', '15983.80'),
(150, '1414537200', 'PRADEL  CHQ 5556272', 3, '138', ''),
(151, '1415055600', 'LA CHAUMIERE FLEURIE CHQ 6840187', 3, '', '61.00'),
(152, '1415574000', 'PELUAN CHQ 6840191', 3, '', '115.00'),
(153, '1415833200', 'LA BOUTIQUE DE BEA CHQ 6840192', 3, '', '148.40'),
(154, '1415919600', 'CINEMA REMISE CHQ 5556278', 3, '75.40', ''),
(155, '1416351600', 'CHAUMIERE FLEURIE CHQ 6840198', 3, '', '61.00'),
(156, '1416351600', 'E.LECLERC CHQ 6840194', 3, '', '77.00'),
(157, '1416524400', 'TESSIER CHQ 6840197', 3, '', '100'),
(158, '1416524400', 'CARREFOUR CONFISERIES CHQ 6840195', 3, '', '102.22'),
(159, '1417129200', 'CHAUMIERE FLEURIE CHQ 6840193', 3, '', '64.90'),
(160, '1417129200', 'M MAIGNET CHQ 6440196', 3, '', '100.00'),
(161, '1417129200', 'CHAUMIERE FLEURIE CHQ 6840199', 3, '', '61.00'),
(162, '1417388400', 'OGER FLEURS CHQ 6840189', 3, '', '60.00'),
(163, '1417647600', 'CINEMA RECETTE DEPOT ESPECES', 3, '34.80', ''),
(164, '1417647600', 'PISCINE VENTE ESPECES', 3, '22.00', ''),
(165, '1417647600', 'CINEMA VENTE CHQ 5556281', 3, '116.00', ''),
(166, '1417647600', 'PISCINE VENTE CHQ 5556282', 3, '44.00', ''),
(167, '1417734000', 'E.LECLERC VIENNOISERIE CHQ 6840200', 3, '', '43.50'),
(168, '1417993200', 'MAROQUINERIE PELUAU CHQ 6840201', 3, '', '75.00'),
(169, '1418079600', 'LUMINEAU ATTRACTION NOEL CHQ 6840204', 3, '', '224.69'),
(170, '1418684400', 'VIREMENT LIVRET SUR  COMPTE BANQUE', 3, '2000.00', ''),
(171, '1418684400', 'SOIREE NOEL GRAIN CAFE CHQ 6840202', 3, '', '500'),
(172, '1418684400', 'BRISSAC VIN NOEL CHQ 6840206', 3, '', '191.40'),
(173, '1418857200', 'DJ NOEL CHQ 6840203', 3, '', '175.31'),
(174, '1418943600', 'CINEMA VENTES CHQ 5011900', 3, '34.80', ''),
(175, '1419202800', 'CAFE DU CENTRE REPAS NOEL CHQ 6840209', 3, '', '2058'),
(176, '1419202800', 'CAFE DU CENTRE REPAS NOEL CHQ 6840210', 3, '', '490.00'),
(177, '1419289200', 'CHOCOLATIER VERSEMENT ESPECES', 3, '25.35', ''),
(178, '1419289200', 'DEA DIFFUSION  VENTE  ESPECES', 3, '12.00', ''),
(179, '1419289200', 'BOUTIQUE BEA VENTE ESPECES', 3, '23.50', ''),
(180, '1419289200', 'SACS VENTE ESPECES', 3, '105.00', ''),
(181, '1419289200', 'SACS VENTE CHQ 5011906', 3, '85.00', ''),
(182, '1419289200', 'DEA FIFFUSION REMISE NUMERO CHQ  5011898', 3, '358', ''),
(183, '1419289200', 'CHOCOLAT VENTE REMISE DE CHQ 5011901', 3, '252.85', ''),
(184, '1419289200', 'BEA VENTE REMISE CHQ 5011902', 3, '124.90', ''),
(185, '1419548400', 'PRADEL VENTE ESPECES', 3, '88.90', ''),
(186, '1419548400', 'PRADEL VENTE REMISE CHQ 5011907', 3, '336.25', ''),
(187, '1419548400', 'PISCINE VENTE REMISE CHQ 5011911', 3, '22.00', ''),
(188, '1419548400', 'CINEMA VENTE REMISE CHQ 5011910', 3, '87.00', ''),
(189, '1419548400', 'PRADEL VENTE REMISE CHQ 6788617', 3, '53.90', ''),
(190, '1419807600', 'ROBERT ET MARCEL  CHQ 6840207', 3, '', '541.90'),
(191, '1420585200', 'CHAUMIERE FLEURIE CHQ 6840205', 3, '', '61.00'),
(192, '1420585200', 'CHAUMIERE FLEURIE CHQ 6840206', 3, '', '266.50'),
(193, '1421103600', 'PUY DU FOU CHQ 7364983', 3, '', '916'),
(194, '1421190000', 'BRISSAC CHQ 7364982', 3, '', '6.00'),
(198, '1421967600', 'REMBOURSEMENT CESBRON CHQ 6842112', 3, '', '11.40'),
(199, '1421967600', 'CINEMA VENTE CHQ 5011913', 3, '81.20', ''),
(200, '1421967600', 'PUY DU FOU VENTE REMISE CHQ 5011916', 3, '238.76', ''),
(201, '1421967600', 'PUY DU FOU VENTE REMISE CHQ 5011914', 3, '93.16', ''),
(202, '1421967600', 'PUY DU FOU VENTE REMISE ESPECE', 3, '141.58', ''),
(203, '1421967600', 'PUY DU FOU VENTE REMISE ESPECE', 3, '70', ''),
(204, '1421967600', 'CINEMA VENTE REMISE ESPECE', 3, '11.60', ''),
(205, '1421967600', 'PUY DU FOU VENTE REMISE CHQ 6788631', 3, '508.10', ''),
(206, '1421967600', 'PUY DU FOU VENTE REMISE CHQ 5011915', 3, '275.10', ''),
(207, '1422226800', 'BAILLY RETRAITE CHQ 7364981', 3, '', '100'),
(208, '1422313200', 'FLEUR NAISSANCE CHQ 7364985', 3, '', '61'),
(209, '1422831600', 'FRAIS VAISSELLE CASSEE NOEL CHQ 7364986', 3, '', '6.00'),
(210, '1423004400', 'CINEMA VENTE ESPECES', 3, '52.20', ''),
(211, '1423004400', 'PUY DU FOU VENTE CHQ 6788632', 3, '51.58', ''),
(212, '1423177200', 'DEGARDIN rbt Colis HS CHQ 6840213', 3, '', '4.90'),
(213, '1423782000', 'SUBVENTION ASC VIREMENT', 3, '4075', ''),
(214, '1423782000', 'SUBVENTION ASC MARIE', 3, '14012', ''),
(215, '1424127600', 'CINEMA VENTE REMISE CHQ 6788633', 3, '133.40', ''),
(216, '1424300400', 'Mme POIRIER CHQ 7364990', 3, '', '100'),
(217, '1424386800', 'DEGARDIN CHQ 7364988', 3, '', '266.80'),
(218, '1424732400', 'CINESCENIE PUY DU FOU ACPTE CHQ 73644989', 3, '', '326.92'),
(219, '1425942000', 'CINEMA VENTES ESPECES', 3, '132.50', ''),
(220, '1425942000', 'CINEMA VENTES REMISE CHQ 5556284', 3, '140.20', ''),
(221, '1425942000', 'VAGUES OCEANES ACPT CHQ 7364991', 3, '', '742.50'),
(222, '1426114800', 'VIR SUR CPT FCT SUITE ERREUR DIRECTION', 3, '', '4075'),
(223, '1426460400', 'CINEMA NLLE LUNE ACHAT CHQ 7364992', 3, '', '1469.95'),
(224, '1427065200', 'DA DIFFUSION CHQ 7364993', 3, '', '370'),
(225, '1427151600', 'CINEMA VENTE BILLETS REM CHQ 5556285', 3, '30.95', ''),
(226, '1427752800', 'CINEMA VENTE ESPECES', 3, '23.20', ''),
(227, '1427752800', 'CHQ 7364987 AFFECTATION NON DETAILLEE', 3, '', '61');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Contenu de la table `compta_bilan_actif`
--

INSERT INTO `compta_bilan_actif` (`idcptbilanactif`, `idcomptaplan`, `montant`) VALUES
(38, 1, '121.50'),
(39, 3, '24125.40'),
(40, 8, '38470'),
(41, 7, '3039.20');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_passif` (
`idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `compta_bilan_passif`
--

INSERT INTO `compta_bilan_passif` (`idcptbilanpassif`, `idcomptaplan`, `montant`) VALUES
(14, 28, '65756.10');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=612 ;

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `idcomptaplan`, `debit`, `credit`) VALUES
(176, 1, '121.50', ''),
(177, 3, '24125.40', ''),
(178, 8, '38470', ''),
(179, 7, '3099.20', ''),
(181, 28, '', '65756.10'),
(182, 37, '', '17.40'),
(183, 3, '17.40', ''),
(184, 39, '', '42.00'),
(186, 36, '', '3813'),
(188, 36, '', '4303'),
(191, 36, '', '235.00'),
(193, 66, '', '60'),
(195, 39, '', '105'),
(197, 36, '', '1898'),
(199, 39, '', '505.60'),
(201, 39, '', '4816'),
(203, 39, '', '2100'),
(205, 37, '', '22.00'),
(206, 3, '22', ''),
(207, 8, '42', ''),
(208, 8, '3813', ''),
(209, 8, '4303.00', ''),
(210, 8, '235', ''),
(211, 8, '60', ''),
(212, 8, '105', ''),
(213, 8, '1898', ''),
(214, 8, '505.60', ''),
(215, 8, '4816', ''),
(216, 8, '2100', ''),
(217, 36, '', '58.00'),
(218, 3, '58.00', ''),
(220, 3, '', '1959'),
(221, 37, '', '23.20'),
(222, 3, '23.20', ''),
(223, 37, '', '5.80'),
(224, 3, '5.80', ''),
(225, 37, '', '75.40'),
(226, 3, '75.40', ''),
(228, 3, '', '1932'),
(229, 36, '', '219.00'),
(230, 8, '219.00', ''),
(231, 36, '', '388'),
(232, 8, '388', ''),
(233, 36, '', '445.00'),
(234, 8, '445', ''),
(236, 0, '1169', ''),
(242, 36, '', '1169'),
(243, 3, '1169', ''),
(244, 62, '60', ''),
(245, 3, '', '60'),
(246, 62, '30', ''),
(247, 3, '', '30'),
(252, 66, '', '60'),
(253, 7, '60', ''),
(254, 3, '7960', ''),
(255, 8, '', '7960'),
(256, 3, '3649.20', ''),
(257, 8, '', '3649.20'),
(258, 39, '', '21'),
(259, 8, '21', ''),
(260, 37, '', '17.40'),
(261, 3, '17', ''),
(262, 3, '0.40', ''),
(263, 37, '', '46.40'),
(264, 3, '46.40', ''),
(265, 37, '', '44'),
(266, 3, '44', ''),
(267, 51, '19477', ''),
(268, 3, '', '19477'),
(269, 55, '21420', ''),
(270, 3, '', '21420'),
(272, 3, '', '4.21'),
(273, 50, '300', ''),
(274, 3, '', '300'),
(275, 59, '13.50', ''),
(276, 3, '', '13.50'),
(277, 3, '10000', ''),
(278, 8, '', '10000'),
(280, 3, '', '30'),
(282, 3, '', '4.21'),
(285, 3, '', '30'),
(286, 32, '', '70'),
(287, 3, '70', ''),
(288, 59, '4.21', ''),
(289, 37, '', '11.60'),
(290, 3, '11.60', ''),
(291, 32, '', '98'),
(292, 3, '98', ''),
(293, 37, '', '34.80'),
(294, 3, '34.80', ''),
(295, 50, '450', ''),
(296, 3, '', '450'),
(297, 52, '61', ''),
(298, 3, '', '61'),
(299, 61, '61', ''),
(300, 3, '', '61'),
(301, 50, '10', ''),
(302, 3, '', '10'),
(303, 61, '61', ''),
(304, 3, '', '61'),
(305, 40, '168', ''),
(306, 3, '', '168'),
(307, 58, '200', ''),
(308, 3, '', '200'),
(309, 36, '', '46.4'),
(310, 3, '46.4', ''),
(311, 36, '', '58'),
(312, 3, '58', ''),
(313, 36, '', '120'),
(314, 3, '120', ''),
(315, 36, '', '22'),
(316, 3, '22', ''),
(317, 37, '', '145.30'),
(318, 3, '145.30', ''),
(319, 37, '', '56'),
(320, 3, '56', ''),
(321, 60, '61', ''),
(322, 3, '', '61'),
(323, 37, '', '109.50'),
(324, 3, '109.5', ''),
(325, 35, '', '15153'),
(326, 3, '15153', ''),
(327, 33, '', '4116'),
(328, 3, '4116', ''),
(329, 37, '', '11.60'),
(330, 3, '11.6', ''),
(331, 37, '', '146.5'),
(332, 3, '146.5', ''),
(333, 40, '285.55', ''),
(334, 3, '', '285.55'),
(337, 36, '', '123.85'),
(338, 3, '123.85', ''),
(339, 36, '', '161.7'),
(340, 3, '161.7', ''),
(341, 36, '', '52.2'),
(342, 3, '52.2', ''),
(343, 36, '', '87'),
(344, 3, '87', ''),
(345, 38, '1959', ''),
(346, 38, '1932', ''),
(347, 38, '4116', ''),
(348, 3, '', '4116'),
(349, 50, '1460', ''),
(350, 3, '', '1460'),
(351, 52, '60', ''),
(352, 3, '', '60'),
(353, 63, '9.95', ''),
(354, 3, '', '9.95'),
(355, 50, '450', ''),
(356, 3, '', '450'),
(357, 50, '528', ''),
(358, 3, '', '528'),
(359, 51, '420', ''),
(360, 3, '', '420'),
(361, 36, '', '5.80'),
(362, 3, '5.8', ''),
(363, 36, '', '46.4'),
(364, 3, '46.4', ''),
(366, 3, '23.2', ''),
(367, 36, '', '33'),
(368, 3, '33', ''),
(370, 36, '', '52.2'),
(371, 3, '52.2', ''),
(372, 36, '', '162'),
(373, 3, '162', ''),
(374, 36, '', '44'),
(375, 3, '44', ''),
(376, 36, '', '45'),
(377, 3, '45', ''),
(378, 53, '100', ''),
(379, 3, '', '100'),
(381, 8, '', '5811.4'),
(382, 36, '', '11.6'),
(383, 3, '11.6', ''),
(385, 3, '23.2', ''),
(387, 3, '5811.40', ''),
(388, 66, '', '70.00'),
(389, 8, '70.00', ''),
(390, 8, '', '70.00'),
(391, 7, '70.00', ''),
(392, 37, '', '98.60'),
(393, 3, '98.60', ''),
(394, 56, '15983.80', ''),
(395, 3, '', '15983.80'),
(396, 32, '', '138.00'),
(397, 3, '138', ''),
(398, 52, '61.00', ''),
(399, 3, '', '61.00'),
(400, 40, '115.00', ''),
(401, 3, '', '115.00'),
(402, 40, '148.40', ''),
(403, 3, '', '148.40'),
(404, 37, '', '75.40'),
(405, 3, '75.40', ''),
(406, 52, '61.00', ''),
(407, 3, '', '61.00'),
(408, 58, '77.00', ''),
(409, 3, '', '77.00'),
(410, 53, '100', ''),
(411, 3, '', '100'),
(412, 58, '102.22', ''),
(413, 3, '', '102.22'),
(414, 52, '64.90', ''),
(415, 3, '', '64.90'),
(416, 53, '100.00', ''),
(417, 3, '', '100.00'),
(418, 52, '61.00', ''),
(419, 3, '', '61.00'),
(420, 52, '60.00', ''),
(421, 3, '', '60.00'),
(422, 37, '', '34.80'),
(423, 3, '34.80', ''),
(424, 37, '', '22.00'),
(425, 3, '22.00', ''),
(426, 37, '', '116.00'),
(427, 3, '116.00', ''),
(428, 37, '', '44.00'),
(429, 3, '44.00', ''),
(430, 58, '43.50', ''),
(431, 3, '', '43.50'),
(432, 58, '75.00', ''),
(433, 3, '', '75.00'),
(434, 54, '224.69', ''),
(435, 3, '', '224.69'),
(436, 8, '', '2000'),
(437, 3, '2000.00', ''),
(438, 57, '500.00', ''),
(439, 3, '', '500'),
(440, 54, '191.40', ''),
(441, 3, '', '191.40'),
(442, 36, '', '104.00'),
(443, 8, '104.00', ''),
(444, 36, '', '2597.00'),
(445, 8, '2597', ''),
(446, 66, '', '70.00'),
(447, 7, '70.00', ''),
(448, 66, '70.00', ''),
(449, 7, '', '70.00'),
(450, 66, '', '140.00'),
(451, 7, '140.00', ''),
(452, 41, '1300', ''),
(453, 7, '', '1300'),
(454, 54, '175.31', ''),
(455, 3, '', '175.31'),
(456, 37, '', '34.80'),
(457, 3, '34.80', ''),
(458, 51, '2058', ''),
(459, 3, '', '2058'),
(460, 51, '490.00', ''),
(461, 3, '', '490.00'),
(462, 32, '', '25.35'),
(463, 3, '25.35', ''),
(464, 32, '', '12.00'),
(465, 3, '12.00', ''),
(466, 32, '', '23.50'),
(467, 3, '23.50', ''),
(468, 32, '', '105.00'),
(469, 3, '105.00', ''),
(470, 32, '', '85.00'),
(471, 3, '85.00', ''),
(472, 32, '', '358'),
(473, 3, '358', ''),
(474, 32, '', '252.85'),
(475, 3, '252.85', ''),
(476, 32, '', '124.90'),
(477, 3, '124.90', ''),
(478, 32, '', '88.90'),
(479, 3, '88.90', ''),
(480, 32, '', '336.25'),
(481, 3, '336.25', ''),
(482, 37, '', '22.00'),
(483, 3, '22.00', ''),
(484, 37, '', '87.00'),
(485, 3, '87.00', ''),
(486, 32, '', '53.90'),
(487, 3, '53.90', ''),
(488, 54, '541.90', ''),
(489, 3, '', '541.90'),
(490, 65, '', '402.22'),
(491, 8, '402.22', ''),
(492, 52, '61', ''),
(493, 3, '', '61.00'),
(494, 58, '266.50', ''),
(495, 3, '', '266.50'),
(496, 66, '', '100'),
(497, 7, '100', ''),
(498, 39, '', '72.00'),
(499, 8, '72', ''),
(500, 39, '', '104'),
(501, 8, '104', ''),
(502, 50, '916', ''),
(503, 3, '', '916'),
(504, 58, '6.00', ''),
(505, 3, '', '6.00'),
(506, 39, '', '308'),
(507, 8, '308', ''),
(508, 39, '', '1333'),
(509, 8, '1333', ''),
(510, 39, '', '121'),
(511, 8, '121', ''),
(512, 39, '', '651'),
(513, 8, '651', ''),
(514, 39, '', '112'),
(515, 8, '112', ''),
(522, 58, '11.40', ''),
(523, 3, '', '11.40'),
(524, 37, '', '81.20'),
(525, 3, '81.20', ''),
(526, 37, '', '238.76'),
(527, 3, '238.76', ''),
(528, 37, '', '93.16'),
(529, 3, '93.16', ''),
(530, 37, '', '141.58'),
(531, 3, '141.58', ''),
(532, 37, '', '70.00'),
(533, 3, '70', ''),
(534, 37, '', '11.60'),
(535, 3, '11.60', ''),
(536, 37, '', '508.10'),
(537, 3, '508.10', ''),
(538, 37, '', '275.10'),
(539, 3, '275.10', ''),
(540, 53, '100', ''),
(541, 3, '', '100'),
(542, 61, '61', ''),
(543, 3, '', '61'),
(544, 58, '6.00', ''),
(545, 3, '', '6.00'),
(546, 37, '', '52.20'),
(547, 3, '52.20', ''),
(548, 37, '', '51.58'),
(549, 3, '51.58', ''),
(550, 62, '4.90', ''),
(551, 3, '', '4.90'),
(552, 66, '', '100'),
(553, 7, '100', ''),
(554, 35, '', '4075'),
(555, 3, '4075', ''),
(556, 35, '', '14012.00'),
(557, 3, '14012', ''),
(558, 37, '', '133.40'),
(559, 3, '133.40', ''),
(560, 39, '', '1333'),
(561, 8, '1333', ''),
(562, 55, '', '308'),
(563, 8, '308', ''),
(564, 39, '', '104'),
(565, 8, '104', ''),
(566, 39, '', '72'),
(567, 8, '72', ''),
(568, 39, '', '651'),
(569, 8, '651', ''),
(570, 39, '', '112.00'),
(571, 8, '112', ''),
(572, 39, '', '121'),
(573, 8, '121', ''),
(574, 53, '100', ''),
(575, 3, '', '100'),
(576, 54, '266.80', ''),
(577, 3, '', '266.80'),
(578, 50, '326.92', ''),
(579, 3, '', '326.92'),
(580, 37, '', '132.50'),
(581, 3, '132.50', ''),
(582, 37, '', '140.20'),
(583, 3, '140.20', ''),
(584, 51, '742.50', ''),
(585, 3, '', '742.50'),
(586, 38, '4075', ''),
(587, 3, '', '4075'),
(588, 50, '1469.95', ''),
(589, 3, '', '1469.95'),
(590, 54, '370', ''),
(591, 3, '', '370'),
(592, 37, '', '30.95'),
(593, 3, '30.95', ''),
(594, 39, '', '73'),
(595, 8, '73', ''),
(596, 33, '', '651'),
(597, 8, '651', ''),
(598, 39, '', '121'),
(599, 8, '121', ''),
(600, 33, '', '72.00'),
(601, 8, '72.00', ''),
(602, 33, '', '1333'),
(603, 8, '1333', ''),
(604, 39, '', '112'),
(605, 8, '112', ''),
(606, 33, '', '308'),
(607, 8, '308', ''),
(608, 37, '', '23.20'),
(609, 3, '23.20', ''),
(610, 58, '61', ''),
(611, 3, '', '61');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Contenu de la table `compta_livret`
--

INSERT INTO `compta_livret` (`idcomptalivret`, `date_livret`, `desc_livret`, `idcomptaplan`, `debit`, `credit`) VALUES
(12, '1396994400', 'ANCV REGLEMENT ESPECES', 8, '42', ''),
(13, '1396994400', 'CROATIE CHS  REMISE 42574', 8, '3813', ''),
(14, '1396994400', 'CROATIE REMISE CHAQ NUMER', 8, '4303.00', ''),
(15, '1397599200', 'CROATIE VERSEMENT ESPECES', 8, '235', ''),
(16, '1397599200', 'BIGOT REMBOURSEMENT PRET ', 8, '60', ''),
(17, '1397599200', 'ANCV REMISE ESPECES', 8, '105', ''),
(18, '1397599200', 'CROATIE REMISE CHQ N 4165', 8, '1898', ''),
(19, '1397599200', 'ANCV CHQ REMISE 4257497', 8, '505.60', ''),
(20, '1397599200', 'CROATIE REMISE CHQ 425749', 8, '4816', ''),
(21, '1397599200', 'ANCV REMISE CHQ 4165696', 8, '2100', ''),
(22, '1398117600', 'CROATIE REMISE ESPECES ', 8, '219.00', ''),
(23, '1398117600', 'CROATIE REMISE CHEQUES NU', 8, '388', ''),
(24, '1398117600', 'CROATIE REMISE CHEQUE 416', 8, '445', ''),
(25, '1399327200', 'CROATIE VIREMENT LIVRET B', 8, '', '7960'),
(26, '1399327200', 'ANCV VIREMENT LIVRET BLEU', 8, '', '3649.20'),
(27, '1399327200', 'PARTICIPATION SALARIE ANC', 8, '21', ''),
(28, '1400623200', 'VIREMENT LIVRET BLEU SUR ', 8, '', '10000'),
(29, '1413756000', 'VIR LIVRET BLEU SUR ASC', 8, '', '5811.4'),
(30, '1414015200', 'VERSEMENT ESPECE REMBOURS', 8, '70.00', ''),
(31, '1414015200', 'ANNULATION ECRITURE BIGOT', 8, '', '70.00'),
(32, '1418684400', 'VIREMENT VERS COMPTE BANQ', 8, '', '2000'),
(33, '1418770800', 'SALARIES VERSEMENT ANCV E', 8, '104.00', ''),
(34, '1418770800', 'SALARIES VERSEMENT ANCV C', 8, '2597', ''),
(35, '1419980400', 'INTERET LIVRET', 8, '402.22', ''),
(36, '1420844400', 'ANCV PARTICIPATION CHQ RE', 8, '72', ''),
(37, '1421103600', 'ANCV PARTICIPATION ESPECE', 8, '104', ''),
(38, '1421190000', 'ANCV REMISE CHQ 6788625', 8, '308', ''),
(39, '1421190000', 'ANCV REMISE CHQ 5011904', 8, '1333', ''),
(40, '1421190000', 'ANCV REMISE CHQ 6788624', 8, '121', ''),
(41, '1421218800', 'ANCV REMISE CHQ 6788630', 8, '651', ''),
(42, '1421190000', 'ANCV REMISE CHQ 6788626', 8, '112', ''),
(43, '1424127600', 'ANCV CHQ 5011912', 8, '1333', ''),
(44, '1424127600', 'ANCV CHQ 6788634', 8, '308', ''),
(45, '1424127600', 'ANCV REMISE ESPECES', 8, '104', ''),
(46, '1424127600', 'ANCV REMISE CHQ 5556279', 8, '72', ''),
(47, '1424127600', 'ANCV REMISE CHQ 6788635', 8, '651', ''),
(48, '1424127600', 'ANCV REMISE CHQ 5011905', 8, '112', ''),
(49, '1424127600', 'ANCV REMISE CHQ 5556280', 8, '121', ''),
(50, '1427151600', 'ANCV REMISE ESPECES', 8, '73', ''),
(51, '1427151600', ' REMISE 5010903 AFFECTATI', 8, '651', ''),
(52, '1427151600', 'ANCV REMISE CHQ 5010902', 8, '121', ''),
(53, '1427151600', 'REMISE CHQ 5110900 AFFECT', 8, '72.00', ''),
(54, '1427151600', 'REMISE CHQ 510899 AFFECTI', 8, '1333', ''),
(55, '1427151600', 'ANCV REMISE CHQ 5010901', 8, '112', ''),
(56, '1427151600', 'REMISE CHD 5010898 NON AF', 8, '308', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=263 ;

--
-- Contenu de la table `compta_mvm`
--

INSERT INTO `compta_mvm` (`idcomptamvm`, `date_mvm`, `desc_mvm`, `idcomptaplan`, `debit`, `credit`) VALUES
(58, '1396994400', 'CINEMA CHQ 4165695', 37, '', '17.40'),
(59, '1396994400', 'ANCV REGLEMENT ESPECE', 39, '', '42.00'),
(60, '1396994400', 'CROATIE CHQ 4257496', 36, '', '3813'),
(61, '1396994400', 'CROATIE REMISE CHEQUE 4165693', 36, '', '4303'),
(62, '1397599200', 'CROATIE VERSEMENT ESPECES', 36, '', '235.00'),
(63, '1397599200', 'BIGOT ESPECES ', 66, '', '60'),
(64, '1397599200', 'ANCV ESPECES', 39, '', '105'),
(65, '1397599200', 'CROATIE CHQ 4165700', 36, '', '1898'),
(66, '1397599200', 'ANCV CHQ REMISE 4257497', 39, '', '505.60'),
(67, '1397599200', 'CROATIE REMISE CHQ NUMERO 4257499', 39, '', '4816'),
(68, '1397599200', 'ANCV REMISE CHEQUE 4165696', 39, '', '2100'),
(69, '1397599200', 'CARTE PISCINE REMISE CHQ 4257500', 37, '', '22.00'),
(70, '1397599200', 'APV NUITEE CHQ 4165698', 36, '', '58.00'),
(72, '1397685600', 'CINEMA REMISE ESPECES', 37, '', '23.20'),
(73, '1397685600', 'CINEMA REMISE ESPECES', 37, '', '5.80'),
(74, '1397685600', 'CINEMA REMISE CHEQUES 4165697', 37, '', '75.40'),
(76, '1398117600', 'CROATIE REMISE ESPECES ', 36, '', '219.00'),
(77, '1398117600', 'CROATIE REMISE CHEQUES NUMERO 4165702', 36, '', '388'),
(78, '1398117600', 'CROATIE REMISE CHEQUE 4165703', 36, '', '445.00'),
(82, '1398204000', 'CROATIE REMISE CHQ 4165704', 36, '', '1169'),
(83, '1398204000', 'CALMET REMBOURSEMENT CHQ 6494161', 62, '60', ''),
(84, '1398636000', 'GROLEAU REMBOURSEMENT CHQ 6494151', 62, '30', ''),
(87, '1405461600', 'BIGOT REMBOURSEMENT PRET ESPECES', 66, '', '60'),
(88, '1399327200', 'PARTICIPATION SALARIE ANCV', 39, '', '21'),
(89, '1399327200', 'CINEMA ESPECES', 37, '', '17.40'),
(90, '1399327200', 'CINEMA CHQ 4165705', 37, '', '46.40'),
(91, '1399327200', 'PISCINE CHQ 4165705', 37, '', '44'),
(92, '1400191200', 'REGLEMENT SOLDE VOYAGE CROATIE CHQ 6494163', 51, '19477', ''),
(93, '1400450400', 'REGLEMENT ANCV CHQ 6494162', 55, '21420', ''),
(94, '1400450400', 'FRAIS COMM BANCAIRE', 59, '4.21', ''),
(95, '1400536800', 'AQUARIUM  MINI CHATEAU CHQ 6494158', 50, '300', ''),
(96, '1400623200', 'FRAIS LETTRE CPT DEB ', 59, '13.50', ''),
(97, '1400623200', 'RBST MR GROLLEAU CHQ 6994159', 58, '30', ''),
(99, '1400796000', 'RENBS MR GROLLEAU', 58, '30', ''),
(101, '1401141600', 'DA DIFFUSION PARTICIPATION SALARIES ESPECES', 32, '', '70'),
(102, '1400623200', 'FRAIS COMM INTERVENTION', 59, '4.21', ''),
(103, '1401141600', 'CINEMA VERS ESPECES', 37, '', '11.60'),
(104, '1401141600', 'DA DIFFUSION PARTICIPATION SALARIES ESPECES', 32, '', '98'),
(105, '1401141600', 'CINEMA CHQ 4165707', 37, '', '34.80'),
(106, '1401400800', 'BIOPARC CHQ 6494164', 50, '450', ''),
(107, '1401746400', 'LES FLORALIES CHQ 6494166    MR FOURNIER', 52, '61', ''),
(108, '1402351200', 'FLEURS CHQ 6994167 MELISSA MENARD', 61, '61', ''),
(109, '1402437600', 'PARTICIPATION DISNEY CHQ 6994168', 50, '10', ''),
(110, '1403042400', 'FLEURS CHQ 6494142 NAISSANCE BARZIC', 61, '61', ''),
(111, '1403042400', 'DA DIFFUSION CHQ 6494142', 40, '168', ''),
(112, '1403820000', 'KEVIN CLARK ANIMATEUR DJ ACCPT CHQ 6994170', 58, '200', ''),
(113, '1404770400', 'CINEMA ESPECES', 36, '', '46.4'),
(114, '1404770400', 'APV NUITEES CHQ 8013759', 36, '', '58'),
(115, '1404770400', 'AQUARIUM CHQ 8013763', 36, '', '120'),
(116, '1404770400', 'CARTE PISCINE CHQ 8013760', 36, '', '22'),
(117, '1404770400', 'CINEMA CHQ 8013764', 37, '', '145.30'),
(118, '1404770400', 'ZOO DOUE CHQ 8013686', 37, '', '56'),
(119, '1405288800', 'FLEURS MARIAGE GUERIN CHQ 6994169', 60, '61', ''),
(120, '1405288800', 'PISCINE ET ZOO DOUE CHQ 8013765', 37, '', '109.50'),
(121, '1405375200', 'VIR MARIE SURGELES ACOMPTE OS', 35, '', '15153'),
(122, '1405375200', 'VIREMENT MARIE SURGELES ERREUR ATTRIBUTION CPT FONCT', 33, '', '4116'),
(123, '1405461600', 'CINEMA ESP', 37, '', '11.60'),
(124, '1405461600', 'ZOO DOUE CHQ 8013687', 37, '', '146.5'),
(125, '1406066400', 'PRADEL CHQ 6494171', 40, '285.55', ''),
(127, '1407362400', 'VERS SALARIE POUR PRADEL ESPECES', 36, '', '123.85'),
(128, '1407362400', 'VERS SALARIE POUR PRADEL CHQ 9098907', 36, '', '161.7'),
(129, '1408572000', 'CINEMA ESPECES', 36, '', '52.2'),
(130, '1408572000', 'CINEMA CHQ 8374051', 36, '', '87'),
(131, '1397599200', 'VIR ERREUR DIRECTION ASC VERS FCT', 38, '1959', ''),
(132, '1398117600', 'VIR ERREUR DIRECTION ASC VERS FCT', 38, '1932', ''),
(133, '1409090400', 'VIR ERREUR DIRECTION ASC VERS FCT', 38, '4116', ''),
(134, '1409090400', 'NOUVELLE LUNE CINE CHQ 6494173', 50, '1460', ''),
(135, '1409263200', 'FLEURS CHQ 6494172 DECES MR RICHARD', 52, '60', ''),
(136, '1409695200', 'ACHAT TIMBRES CHQ 6840181', 63, '9.95', ''),
(137, '1410472800', 'ZOO DOUE CHQ 6840183', 50, '450', ''),
(138, '1411509600', 'PISCINE CHQ 6840182', 50, '528', ''),
(139, '1412200800', 'VOYAGES GRONDIN CHQ 6840184', 51, '420', ''),
(140, '1412287200', 'CINEMA  ESP', 36, '', '5.80'),
(141, '1412287200', 'CINEMA ESP', 36, '', '46.4'),
(142, '1412287200', 'CINEMA CHQ 5556274', 36, '', '23.2'),
(143, '1412805600', 'ZOO DOUE ESP', 36, '', '33'),
(145, '1412805600', 'CINEMA  CHQ 5556270', 36, '', '52.2'),
(146, '1412805600', 'ZOO DOUE CHQ 5556276', 36, '', '162'),
(147, '1412805600', 'PISCINE CHQ 5556271', 36, '', '44'),
(148, '1412805600', 'ZOO DOUE CHQ 5556275', 36, '', '45'),
(149, '1413151200', 'DEPART RETRAITE MR GUEGANT CHQ 6840185', 53, '100', ''),
(150, '1414015200', 'CINEMA VERS ESP', 36, '', '11.6'),
(151, '1414015200', 'CINEMA  VERS ESPECES', 36, '', '23.2'),
(153, '1414015200', 'VERSEMENT ESPECE REMBOURSEMENT PRET BIGOT', 66, '', '70.00'),
(154, '1414015200', 'RECETTES CINEMA CHQ 5556277', 37, '', '98.60'),
(155, '1414364400', 'KADEOS NOEL CHQ 6840188', 56, '15983.80', ''),
(156, '1414537200', 'PRADEL  CHQ 5556272', 32, '', '138.00'),
(157, '1415055600', 'LA CHAUMIERE FLEURIE CHQ 6840187', 52, '61.00', ''),
(158, '1415574000', 'PELUAN CHQ 6840191', 40, '115.00', ''),
(159, '1415833200', 'LA BOUTIQUE DE BEA CHQ 6840192', 40, '148.40', ''),
(160, '1415919600', 'CINEMA REMISE CHQ 5556278', 37, '', '75.40'),
(161, '1416351600', 'CHAUMIERE FLEURIE CHQ 6840198', 52, '61.00', ''),
(162, '1416351600', 'E.LECLERC CHQ 6840194', 58, '77.00', ''),
(163, '1416524400', 'TESSIER CHQ 6840197', 53, '100', ''),
(164, '1416524400', 'CARREFOUR CONFISERIES CHQ 6840195', 58, '102.22', ''),
(165, '1417129200', 'CHAUMIERE FLEURIE CHQ 6840193', 52, '64.90', ''),
(166, '1417129200', 'M MAIGNET CHQ 6440196', 53, '100.00', ''),
(167, '1417129200', 'CHAUMIERE FLEURIE CHQ 6840199', 52, '61.00', ''),
(168, '1417388400', 'OGER FLEURS CHQ 6840189', 52, '60.00', ''),
(169, '1417647600', 'CINEMA RECETTE ESPECES', 37, '', '34.80'),
(170, '1417647600', 'PISCINE VENTE ESPECES', 37, '', '22.00'),
(171, '1417647600', 'CINEMA VENTE CHQ 5556281', 37, '', '116.00'),
(172, '1417647600', 'PISCINE VENTE CHQ 5556282', 37, '', '44.00'),
(173, '1417734000', 'E.LECLERC VIENNOISERIE CHQ 6840200', 58, '43.50', ''),
(174, '1417993200', 'MAROQUINERIE PELUAU CHQ 6840201', 58, '75.00', ''),
(175, '1418079600', 'LUMINEAU ATTRACTION NOEL CHQ 6840204', 54, '224.69', ''),
(176, '1418684400', 'SOIREE NOEL GRAIN CAFE CHQ 6840202', 57, '500.00', ''),
(177, '1418684400', 'BRISSAC VIN NOEL CHQ 6840206', 54, '191.40', ''),
(178, '1418770800', 'SALARIES VERSEMENT ANCV ESPECES', 36, '', '104.00'),
(179, '1418770800', 'SALARIES VERSEMENT ANCV CHQ 5011899', 36, '', '2597.00'),
(180, '1418770800', 'REMBOURSEMENT PRET ESPECES BIGOT', 66, '', '70.00'),
(181, '1418770800', 'ANNULATION VERSEMENT BIGOT ', 66, '70.00', ''),
(182, '1418770800', 'REMBOURSEMENT PRET ESPECES BIGOT', 66, '', '140.00'),
(183, '1418770800', ' PRET MADAME WANDERSTEIN', 41, '1300', ''),
(184, '1418857200', 'DJ NOEL CHQ 6840203', 54, '175.31', ''),
(185, '1418943600', 'CINEMA VENTES CHQ 5011900', 37, '', '34.80'),
(186, '1419202800', 'CAFE DU CENTRE REPAS NOEL CHQ 6840209', 51, '2058', ''),
(187, '1419202800', 'CAFE DU CENTRE REPAS NOEL CHQ 6840210', 51, '490.00', ''),
(188, '1419289200', 'CHOCOLATIER VERSEMENT ESPECES', 32, '', '25.35'),
(189, '1419289200', 'DEA DIFFUSION  VENTE  ESPECES', 32, '', '12.00'),
(190, '1419289200', 'BOUTIQUE BEA VENTE ESPECES', 32, '', '23.50'),
(191, '1419289200', 'SACS VENTE ESPECES', 32, '', '105.00'),
(192, '1419289200', 'SACS VENTE CHQ 5011906', 32, '', '85.00'),
(193, '1419289200', 'DEA FIFFUSION REMISE NUMERO CHQ  5011898', 32, '', '358'),
(194, '1419289200', 'CHOCOLAT VENTE REMISE DE CHQ 5011901', 32, '', '252.85'),
(195, '1419289200', 'BEA VENTE REMISE CHQ 5011902', 32, '', '124.90'),
(196, '1419548400', 'PRADEL VENTE ESPECES', 32, '', '88.90'),
(197, '1419548400', 'PRADEL VENTE REMISE CHQ 5011907', 32, '', '336.25'),
(198, '1419548400', 'PISCINE VENTE REMISE CHQ 5011911', 37, '', '22.00'),
(199, '1419548400', 'CINEMA VENTE REMISE CHQ 5011910', 37, '', '87.00'),
(200, '1419548400', 'PRADEL VENTE REMISE CHQ 6788617', 32, '', '53.90'),
(201, '1419807600', 'ROBERT ET MARCEL  CHQ 6840207', 54, '541.90', ''),
(202, '1419980400', 'INTERET LIVRET', 65, '', '402.22'),
(203, '1420585200', 'CHAUMIERE FLEURIE CHQ 6840205', 52, '61', ''),
(204, '1420585200', 'CHAUMIERE FLEURIE CHQ 6840206', 58, '266.50', ''),
(205, '1420844400', 'REMBOURSEMENT PRET WANDERTSEIN CHQ 5011903', 66, '', '100'),
(206, '1420844400', 'ANCV PARTICIPATION CHQ REMISE 6788623', 39, '', '72.00'),
(207, '1421103600', 'ANCV PARTICIPATION ESPECES', 39, '', '104'),
(208, '1421103600', 'PUY DU FOU CHQ 7364983', 50, '916', ''),
(209, '1421190000', 'BRISSAC CHQ 7364982', 58, '6.00', ''),
(210, '1421190000', 'ANCV REMISE CHQ 6788625', 39, '', '308'),
(211, '1421190000', 'ANCV REMISE CHQ 5011904', 39, '', '1333'),
(212, '1421190000', 'ANCV REMISE CHQ 6788624', 39, '', '121'),
(213, '1421190000', 'ANCV REMISE CHQ 6788630', 39, '', '651'),
(214, '1421190000', 'ANCV REMISE CHQ 6788626', 39, '', '112'),
(218, '1421967600', 'REMBOURSEMENT CESBRON CHQ 6842112', 58, '11.40', ''),
(219, '1421967600', 'CINEMA VENTE CHQ 5011913', 37, '', '81.20'),
(220, '1421967600', 'PUY DU FOU VENTE REMISE CHQ 5011916', 37, '', '238.76'),
(221, '1421967600', 'PUY DU FOU VENTE REMISE CHQ 5011914', 37, '', '93.16'),
(222, '1421967600', 'PUY DU FOU VENTE REMISE ESPECE', 37, '', '141.58'),
(223, '1421967600', 'PUY DU FOU VENTE REMISE ESPECE', 37, '', '70.00'),
(224, '1421967600', 'CINEMA VENTE REMISE ESPECE', 37, '', '11.60'),
(225, '1421967600', 'PUY DU FOU VENTE REMISE CHQ 6788631', 37, '', '508.10'),
(226, '1421967600', 'PUY DU FOU VENTE REMISE CHQ 5011915', 37, '', '275.10'),
(227, '1422226800', 'BAILLY RETRAITE CHQ 7364981', 53, '100', ''),
(228, '1422313200', 'FLEUR NAISSANCE CHQ 7364985', 61, '61', ''),
(229, '1422831600', 'FRAIS VAISSELLE CASSEE NOEL CHQ 7364986', 58, '6.00', ''),
(230, '1423004400', 'CINEMA VENTE ESPECES', 37, '', '52.20'),
(231, '1423004400', 'PUY DU FOU VENTE CHQ 6788632', 37, '', '51.58'),
(232, '1423177200', 'DEGARDIN rbt Colis HS CHQ 6840213', 62, '4.90', ''),
(233, '1423695600', 'REMBOURSENENT PRET WANDERSTEIN CHQ 5556273', 66, '', '100'),
(234, '1423782000', 'SUBVENTION ASC VIREMENT', 35, '', '4075'),
(235, '1423782000', 'SUBVENTION ASC VIREMENT MARIE', 35, '', '14012.00'),
(236, '1424127600', 'CINEMA VENTE REMISE CHQ 6788633', 37, '', '133.40'),
(237, '1424127600', 'ANCV CHQ 5011912', 39, '', '1333'),
(238, '1424127600', 'ANCV CHQ 6788634', 55, '', '308'),
(239, '1424127600', 'ANCV REMISE ESPECES', 39, '', '104'),
(240, '1424127600', 'ANCV REMISE CHQ 5556279', 39, '', '72'),
(241, '1424127600', 'ANCV REMISE CHQ 6788635', 39, '', '651'),
(242, '1424127600', 'ANCV REMISE CHQ 5011905', 39, '', '112.00'),
(243, '1424127600', 'ANCV REMISE CHQ 5556280', 39, '', '121'),
(244, '1424300400', 'Mme POIRIER CHQ 7364990', 53, '100', ''),
(245, '1424386800', 'DEGARDIN CHQ 7364988', 54, '266.80', ''),
(246, '1424732400', 'CINESCENIE PUY DU FOU ACPTE CHQ 73644989', 50, '326.92', ''),
(247, '1425942000', 'CINEMA VENTES ESPECES', 37, '', '132.50'),
(248, '1425942000', 'CINEMA VENTES REMISE CHQ 5556284', 37, '', '140.20'),
(249, '1425942000', 'VAGUES OCEANES ACPT CHQ 7364991', 51, '742.50', ''),
(250, '1426114800', 'VIR SUR CPT FCT SUITE ERREUR DIRECTION', 38, '4075', ''),
(251, '1426460400', 'CINEMA NLLE LUNE ACHAT CHQ 7364992', 50, '1469.95', ''),
(252, '1427065200', 'DA DIFFUSION CHQ 7364993', 54, '370', ''),
(253, '1427151600', 'CINEMA VENTE BILLETS REM CHQ 5556285', 37, '', '30.95'),
(254, '1427151600', 'ANCV REMISE ESPECES', 39, '', '73'),
(255, '1427151600', ' REMISE 5010903 AFFECTATION NON DETAILLEE', 33, '', '651'),
(256, '1427151600', 'ANCV REMISE CHQ 5010902', 39, '', '121'),
(257, '1427151600', 'REMISE CHQ 5110900 AFFECTION NON DETAILLEE', 33, '', '72.00'),
(258, '1427151600', 'REMISE CHQ 510899 AFFECTION NON DETAILLEE', 33, '', '1333'),
(259, '1427151600', 'ANCV REMISE CHQ 5010901', 39, '', '112'),
(260, '1427151600', 'REMISE CHD 5010898 NON AFFECTEE', 33, '', '308'),
(261, '1427752800', 'CINEMA VENTE ESPECES', 37, '', '23.20'),
(262, '1427752800', 'CHQ 7364987 AFFECTATION NON DETAILLEE', 58, '61', '');

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
(4, 1, 'Cr&eacute;ances Clients', 'CrÃ©ances salariÃ©s'),
(5, 1, 'Impots Pr&eacute;alable', ''),
(6, 1, 'Stock de Marchandises', ''),
(7, 1, 'Autre actif circulant 1', 'Compte de pret'),
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
(20, 2, 'Dettes Fournisseur', ''),
(21, 2, 'TVA due', ''),
(22, 2, 'Dettes Hypoth&eacute;caire', ''),
(23, 2, 'Pr&ecirc;t Obtenue', ''),
(24, 2, 'Autre dette 1', ''),
(25, 2, 'Autre dette 2', ''),
(26, 2, 'Autre dette 3', ''),
(27, 2, 'Autre dette 4', ''),
(28, 2, 'Capital', 'Capital'),
(29, 2, 'Priv&eacute;', ''),
(30, 2, 'Autre Capital 1', ''),
(31, 2, 'Autre Capital 2', ''),
(32, 3, 'Ventes de marchandises', 'Ventes de marchandises'),
(33, 3, 'D&eacute;ductions Obtenues', 'gains divers'),
(34, 3, 'Commission (&agrave; des tiers)', 'Recettes sur Sorties OrganisÃ©es'),
(35, 3, 'Honoraires', 'Subventions des Oeuvres Sociales'),
(36, 3, 'Prestations &agrave; soi-m&ecirc;me', 'Participation des salariÃ©s'),
(37, 3, 'Int&eacute;r&ecirc;t - Produits', 'Recettes Billetterie'),
(38, 3, 'Autre CA 1', 'Virement Compte &agrave; compte du C.E'),
(39, 3, 'Autre CA 2', 'Recettes sur ChÃ¨ques Vacances ANCV'),
(40, 4, 'Achats de Marchandises', 'Achats de Marchandises'),
(41, 4, 'Frais d''Achats', 'Pret salari&eacute;'),
(42, 4, 'Variations de Stocks', ''),
(43, 4, 'D&eacute;ductions Accord&eacute;es', ''),
(44, 4, 'Autre Charge 1', ''),
(45, 4, 'Autre Charge 2', ''),
(46, 5, 'Salaires', ''),
(47, 5, 'Charges Sociales', ''),
(48, 5, 'Autre charge de personnel 1', ''),
(49, 5, 'Autre charge de personnel 2', ''),
(50, 6, 'Loyer', 'Billetterie Fournisseur 6 61 0001'),
(51, 6, 'Frais de V&eacute;hicules', 'Voyages, Sorties, LinÃ©aires 6 64 654'),
(52, 6, 'Entretien et r&eacute;parations', 'Section Famille "DÃ©cÃ¨s"'),
(53, 6, 'Frais d''exp&eacute;dition', 'Section Famille "Retraite"'),
(54, 6, 'Assurances', 'Section Famille "Divers Fournisseurs"'),
(55, 6, 'Electricit&eacute;, Gaz, etc...', 'ANCV ChÃ©ques Vacances'),
(56, 6, 'Frais d''administration', 'Bons Achats 6 67 001'),
(57, 6, 'T&eacute;l&eacute;phone, fax, internet', 'Cadeaux 6 66 002'),
(58, 6, 'Publicit&eacute;', 'Divers 6 66 003'),
(59, 6, 'Interet-charges, Frais Bancaires', 'Frais bancaires'),
(60, 6, 'Amortissements', 'Section "Famille Mariage"'),
(61, 6, 'Autre Charge d''exploitation 1', 'Section Famille "Naissance"'),
(62, 6, 'Autre Charge d''exploitation 2', 'Autres charges'),
(63, 6, 'Autre Charge d''exploitation 3', 'Hors Compte ASC'),
(64, 6, 'Autre Charge d''exploitation 4', ''),
(65, 7, 'Produits des titres', 'Produits Financiers'),
(66, 7, 'Produits d''immeubles', 'Remboursement pret par salariÃ©'),
(67, 7, 'Autre r&eacute;sultat Annexe 1', ''),
(68, 7, 'Autre r&eacute;sultat Annexe 2', ''),
(69, 7, 'Charges d''immeubles', ''),
(70, 7, 'Autre Charge annexe 1', 'Charges FinanciÃ¨res'),
(71, 7, 'Autre Charge annexe 2', ''),
(72, 8, 'Produits Exeptionnels', ''),
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

CREATE TABLE IF NOT EXISTS `compta_pret` (
`idcomptapret` int(13) NOT NULL,
  `date_pret` varchar(255) NOT NULL,
  `desc_pret` varchar(255) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `compta_pret`
--

INSERT INTO `compta_pret` (`idcomptapret`, `date_pret`, `desc_pret`, `idcomptaplan`, `debit`, `credit`) VALUES
(3, '1405461600', 'BIGOT REMBOURSEMENT  PRET ESPECES', 7, '60', ''),
(4, '1414047600', 'BIGOT REMBOURSEMENT  PRET ESPECES', 7, '70.00', ''),
(5, '1418799600', 'BIGOT REMBOURSEMENT  PRET ESPECES', 7, '70.00', ''),
(6, '1418770800', 'ANNULATION REMBOURSEMENT  ESPECES BIGOT', 7, '', '70.00'),
(7, '1418770800', 'REMBOURSEMENT PRET ESPECES BIGOT', 7, '140.00', ''),
(8, '1418770800', 'PRET MADAME WANDERSTEIN', 7, '', '1300'),
(9, '1420844400', 'REMBOURSEMENT PRET WANDERTSEIN CHQ 5011903', 7, '100', ''),
(10, '1423695600', 'REMBOURSENENT PRET WANDERSTEIN CHQ 5556273', 7, '100', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_resultat`
--

CREATE TABLE IF NOT EXISTS `compta_resultat` (
`idresultat` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=270 ;

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `idcomptaplan`, `debit`, `credit`) VALUES
(58, 37, '', '17.40'),
(59, 39, '', '42.00'),
(60, 36, '', '3813'),
(61, 36, '', '4303'),
(62, 36, '', '235.00'),
(63, 66, '', '60'),
(64, 39, '', '105'),
(65, 36, '', '1898'),
(66, 39, '', '505.60'),
(67, 39, '', '4816'),
(68, 39, '', '2100'),
(69, 37, '', '22.00'),
(70, 36, '', '58.00'),
(72, 37, '', '23.20'),
(73, 37, '', '5.80'),
(74, 37, '', '75.40'),
(76, 36, '', '219.00'),
(77, 36, '', '388'),
(78, 36, '', '445.00'),
(82, 36, '', '1169'),
(83, 62, '60', ''),
(84, 62, '30', ''),
(87, 66, '', '60'),
(88, 39, '', '21'),
(89, 37, '', '17.40'),
(90, 37, '', '46.40'),
(91, 37, '', '44'),
(92, 51, '19477', ''),
(93, 55, '21420', ''),
(95, 50, '300', ''),
(96, 59, '13.50', ''),
(101, 32, '', '70'),
(102, 59, '4.21', ''),
(103, 37, '', '11.60'),
(104, 32, '', '98'),
(105, 37, '', '34.80'),
(106, 50, '450', ''),
(107, 52, '61', ''),
(108, 61, '61', ''),
(109, 50, '10', ''),
(110, 61, '61', ''),
(111, 40, '168', ''),
(112, 58, '200', ''),
(113, 36, '', '46.4'),
(114, 36, '', '58'),
(115, 36, '', '120'),
(116, 36, '', '22'),
(117, 37, '', '145.30'),
(118, 37, '', '56'),
(119, 60, '61', ''),
(120, 37, '', '109.50'),
(121, 35, '', '15153'),
(122, 33, '', '4116'),
(123, 37, '', '11.60'),
(124, 37, '', '146.5'),
(125, 40, '285.55', ''),
(128, 59, '4.21', ''),
(129, 58, '30', ''),
(130, 58, '30', ''),
(132, 36, '', '123.85'),
(133, 36, '', '161.7'),
(134, 36, '', '52.2'),
(135, 36, '', '87'),
(136, 38, '1959', ''),
(137, 38, '1932', ''),
(138, 38, '4116', ''),
(139, 50, '1460', ''),
(140, 52, '60', ''),
(141, 63, '9.95', ''),
(142, 50, '450', ''),
(143, 50, '528', ''),
(144, 51, '420', ''),
(145, 36, '', '5.80'),
(146, 36, '', '46.4'),
(148, 36, '', '33'),
(150, 36, '', '52.2'),
(151, 36, '', '162'),
(152, 36, '', '44'),
(153, 36, '', '45'),
(154, 53, '100', ''),
(155, 36, '', '11.6'),
(158, 36, '', '23.20'),
(159, 36, '', '23.20'),
(160, 66, '', '70.00'),
(161, 37, '', '98.60'),
(162, 56, '15983.80', ''),
(163, 32, '', '138.00'),
(164, 52, '61.00', ''),
(165, 40, '115.00', ''),
(166, 40, '148.40', ''),
(167, 37, '', '75.40'),
(168, 52, '61.00', ''),
(169, 58, '77.00', ''),
(170, 53, '100', ''),
(171, 58, '102.22', ''),
(172, 52, '64.90', ''),
(173, 53, '100.00', ''),
(174, 52, '61.00', ''),
(175, 52, '60.00', ''),
(176, 37, '', '34.80'),
(177, 37, '', '22.00'),
(178, 37, '', '116.00'),
(179, 37, '', '44.00'),
(180, 58, '43.50', ''),
(181, 58, '75.00', ''),
(182, 54, '224.69', ''),
(183, 57, '500.00', ''),
(184, 54, '191.40', ''),
(185, 36, '', '104.00'),
(186, 36, '', '2597.00'),
(187, 66, '', '70.00'),
(188, 66, '70.00', ''),
(189, 66, '', '140.00'),
(190, 41, '1300', ''),
(191, 54, '175.31', ''),
(192, 37, '', '34.80'),
(193, 51, '2058', ''),
(194, 51, '490.00', ''),
(195, 32, '', '25.35'),
(196, 32, '', '12.00'),
(197, 32, '', '23.50'),
(198, 32, '', '105.00'),
(199, 32, '', '85.00'),
(200, 32, '', '358'),
(201, 32, '', '252.85'),
(202, 32, '', '124.90'),
(203, 32, '', '88.90'),
(204, 32, '', '336.25'),
(205, 37, '', '22.00'),
(206, 37, '', '87.00'),
(207, 32, '', '53.90'),
(208, 54, '541.90', ''),
(209, 65, '', '402.22'),
(210, 52, '61', ''),
(211, 58, '266.50', ''),
(212, 66, '', '100'),
(213, 39, '', '72.00'),
(214, 39, '', '104'),
(215, 50, '916', ''),
(216, 58, '6.00', ''),
(217, 39, '', '308'),
(218, 39, '', '1333'),
(219, 39, '', '121'),
(220, 39, '', '651'),
(221, 39, '', '112'),
(225, 58, '11.40', ''),
(226, 37, '', '81.20'),
(227, 37, '', '238.76'),
(228, 37, '', '93.16'),
(229, 37, '', '141.58'),
(230, 37, '', '70.00'),
(231, 37, '', '11.60'),
(232, 37, '', '508.10'),
(233, 37, '', '275.10'),
(234, 53, '100', ''),
(235, 61, '61', ''),
(236, 58, '6.00', ''),
(237, 37, '', '52.20'),
(238, 37, '', '51.58'),
(239, 62, '4.90', ''),
(240, 66, '', '100'),
(241, 35, '', '4075'),
(242, 35, '', '14012.00'),
(243, 37, '', '133.40'),
(244, 39, '', '1333'),
(245, 55, '', '308'),
(246, 39, '', '104'),
(247, 39, '', '72'),
(248, 39, '', '651'),
(249, 39, '', '112.00'),
(250, 39, '', '121'),
(251, 53, '100', ''),
(252, 54, '266.80', ''),
(253, 50, '326.92', ''),
(254, 37, '', '132.50'),
(255, 37, '', '140.20'),
(256, 51, '742.50', ''),
(257, 38, '4075', ''),
(258, 50, '1469.95', ''),
(259, 54, '370', ''),
(260, 37, '', '30.95'),
(261, 39, '', '73'),
(262, 33, '', '651'),
(263, 39, '', '121'),
(264, 33, '', '72.00'),
(265, 33, '', '1333'),
(266, 39, '', '112'),
(267, 33, '', '308'),
(268, 37, '', '23.20'),
(269, 58, '61', '');

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
(1, 'COMITE D''ENTREPRISE MARIE SURGELES', '0.30', '0.50', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=318 ;

--
-- Contenu de la table `cpt_resultat`
--

INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(311, '22790851', '1425164400', 'Vente de Billetterie: MOCKELYN Maxime pour la prestation LE PALACE', '', '25'),
(312, '87989586', '1425250800', 'Vente de Billetterie: MOCKELYN Maxime pour la prestation PARC ASTERIX', '', '40'),
(313, '87986750', '1425337200', 'Vente de Billetterie: MOCKELYN Maxime pour la prestation PARC ASTERIX', '', '20'),
(314, '', '1422745200', 'Vente de Billetterie: MOCKELYN Pascal pour la prestation PARC ASTERIX', '', '20'),
(315, '90506294', '1425423600', 'Vente de Billetterie: MOCKELYN Maxime pour la prestation fhsdhfjkdhsjkfhjkdshfkjhdqskjhfkjdshkjfhdskjfjksdhkjfhdskjhfkjsqdhdkjfdhsqkjfkqjsdhfhksqd', '', '25'),
(316, '', '1425164400', 'ADHESION', '2580', ''),
(317, '', '1422745200', 'SUBVENTION FONCTIONNEMENT', '', '25000');

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE IF NOT EXISTS `famille_prestation` (
`idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Contenu de la table `famille_prestation`
--

INSERT INTO `famille_prestation` (`idfamilleprestation`, `designation_famille`) VALUES
(42, 'CINEMA'),
(43, 'PARC');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Contenu de la table `ligne_billet_ayant_droit`
--

INSERT INTO `ligne_billet_ayant_droit` (`idlignebilletayantdroit`, `idbilletayantdroit`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(67, 58, 68, '1', '20', '10', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=136 ;

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(132, 120, 67, '5', '25', '10', 0),
(133, 121, 68, '2', '40', '20', 0),
(134, 122, 68, '1', '20', '10', 0),
(135, 123, 69, '5', '25', '0', 0);

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
(5, '1.0.0', '15315-ASC-CDT');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
`iduser` int(13) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass_md5` varchar(255) NOT NULL,
  `groupe` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`iduser`, `login`, `pass_md5`, `groupe`) VALUES
(1, 'Administrateur', '25f9e794323b453885f5181f1b624d0b', 1);

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
  `hors_quota` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`) VALUES
(67, 42, 'LE PALACE', '01-01-2015', '31-12-2015', '5', '2', '7', '100', '75', 0),
(68, 43, 'PARC ASTERIX', '01-02-2015', '31-12-2015', '20', '10', '30', '2', '44', 0),
(69, 42, 'fhsdhfjkdhsjkfhjkdshfkjhdqskjhfkjdsh kjfhdskjfjksdhkjfhdskjhfkjsqdhdkjfdh sqkjfkqjsdhfhksqd', '01-01-2015', '31-12-2015', '1000', '50000', '51000', '100', '95', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Contenu de la table `produit_fixe`
--

INSERT INTO `produit_fixe` (`idproduitfixe`, `designation`, `date_produit_fixe`, `montant_produit`) VALUES
(24, 'SUBVENTION FONCTIONNEMENT', '01-02-2015', '25000');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Contenu de la table `reg_billet_ayant_droit`
--

INSERT INTO `reg_billet_ayant_droit` (`idregbilletayantdroit`, `idbilletayantdroit`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(49, 58, 3, '20', '', '', '', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(68, 123, 3, '25', '', '', '', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`) VALUES
(70, '', 1, 'MOCKELYN', 'Maxime', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

--
-- Contenu de la table `solde_caisse`
--

INSERT INTO `solde_caisse` (`idsoldecaisse`, `date_mouvement`, `num_mouvement`, `type_mouvement`, `type_solde`, `libelle_mouvement`, `debit`, `credit`, `point_caisse`) VALUES
(148, '03-03-2015', '', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation par EspÃ¨ce.', '', '20', 0),
(149, '03-03-2015', '', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation par EspÃ¨ce.', '', '25', 0);

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
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=318;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=612;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=263;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_pret`
--
ALTER TABLE `compta_pret`
MODIFY `idcomptapret` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=270;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=318;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=136;
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
MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
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
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=150;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
