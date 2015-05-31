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
-- Base de données :  `fctmarie`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Contenu de la table `ayant_droit`
--

INSERT INTO `ayant_droit` (`idayantdroit`, `idsalarie`, `nom_ayant_droit`, `prenom_ayant_droit`, `date_naissance_ayant_droit`, `solde_ayant_droit`) VALUES
(82, 69, 'MOCKELYN', 'STEVEN', '', '100');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `bilan`
--

INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(1, 2, 'Vente de Billetterie: MOCKELYN Maxime pour la prestation Saucisson', '', '50', '50765462'),
(2, 1, 'Remboursement de la prestation: SPORT pour MOCKELYN Maxime', '142.75', '', ''),
(3, 2, 'Vente de Billetterie: MOCKELYN Maxime pour la prestation Saucisse', '', '30', '57648873'),
(4, 1, 'Remboursement de la prestation: GYM pour MOCKELYN Maxime', '57.25', '', ''),
(5, 2, 'Vente de Billetterie: MOCKELYN Maxime pour la prestation Saucisse', '', '21', '5558380'),
(6, 2, 'Ajout de du produit fixe: Subvention', '', '2000', ''),
(7, 2, 'Ajout de du produit fixe: SUBVENTION TEST', '', '10000', ''),
(9, 1, 'Ajout de la charge Fixe: Adhesion', '980', '', ''),
(11, 1, 'Ajout de la charge Fixe: TEST DATE', '50000', '', ''),
(12, 2, 'Ajout de du produit fixe: TEST DATE 2', '', '60000', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`) VALUES
(33, 69, '04-03-2015', 3, '50', 1),
(34, 69, '14-03-2015', 3, '30', 1),
(35, 69, '19-03-2015', 3, '21', 1);

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `charge_fixe`
--

INSERT INTO `charge_fixe` (`idchargefixe`, `designation`, `date_charge_fixe`, `montant_charge`) VALUES
(2, 'Adhesion', '01-02-2015', '980'),
(4, 'TEST DATE', '17-02-2015', '50000');

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
(82, 3, '18438.17', '13680.64'),
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
(107, 28, '26318.08', '32118.81'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', ''),
(113, 34, '', '12082'),
(114, 35, '0', '0'),
(115, 36, '', ''),
(116, 37, '', ''),
(117, 38, '0', '555.44'),
(118, 39, '', ''),
(119, 40, '', ''),
(120, 41, '', ''),
(121, 42, '', ''),
(122, 43, '', ''),
(123, 44, '', ''),
(124, 45, '', ''),
(125, 46, '', ''),
(126, 47, '', ''),
(127, 48, '2100', ''),
(128, 49, '', ''),
(129, 50, '12.92', '0'),
(130, 51, '1724.99', '0'),
(131, 52, '', ''),
(132, 53, '266.85', ''),
(133, 54, '898.65', ''),
(134, 55, '', ''),
(135, 56, '2451.82', ''),
(136, 57, '523.56', ''),
(137, 58, '', ''),
(138, 59, '56.15', ''),
(139, 60, '249', ''),
(140, 61, '3814.53', ''),
(141, 62, '', ''),
(142, 63, '', ''),
(143, 64, '1582.17', ''),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=222 ;

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(77, '1396389600', 'SGT PRELEVEMENT NUMERO 2452', 3, '', '2.50'),
(78, '1396821600', 'MACIF PRELEVEMENT ASSURANCE NUMERO 4313', 3, '', '898.65'),
(79, '1397080800', 'REMBOURSEMENT FRAIS MARIE SURGELES', 3, '16.00', ''),
(80, '1397080800', 'CARREFOUR MARKET CB 0904', 3, '', '24'),
(81, '1397426400', 'SFR PRELEVEMENT NUMERO 0269', 3, '', '36.90'),
(82, '1397512800', 'CARREFOUR MARKET CB 1404', 3, '', '36.00'),
(83, '1397599200', 'VIREMENT COMPTE ASC SUR FCT', 3, '1959', ''),
(84, '1397685600', 'E.LECLERC CB 1604', 3, '', '47.39'),
(85, '1398117600', 'VIREMENT ASC  SUR FCT (ERREUR)', 3, '1932', ''),
(86, '1398290400', 'BOULANGERIE BENETEAU CB 2304', 3, '', '12.40'),
(87, '1398290400', 'LE FIEF AUX MOINES CB 2204', 3, '', '104.80'),
(88, '1398290400', 'LA POSTE CB 1804', 3, '', '7.92'),
(89, '1399240800', 'SGT PRELEVEMENT NUMERO 3052', 3, '', '2.50'),
(90, '1399413600', 'SUPER U STATION CB 0505', 3, '', '5.01'),
(91, '1399500000', 'DECATHLON CB 0705', 3, '', '18.00'),
(92, '1399586400', 'REMBOURSEMENT MARIE SURGELES ', 3, '36', ''),
(94, '1399586400', 'LA POSTE CB 0705', 3, '', '5.00'),
(95, '1400104800', 'SFR PRELVEMENT 4766', 3, '', '36.90'),
(96, '1400450400', 'ANCV CHQ 5848129', 3, '', '229.20'),
(97, '1400709600', 'RESTAURANT FIEF AUX MOINES CHQ 5848130', 3, '', '104.00'),
(98, '1401055200', 'SUPER U CB 2305', 3, '', '42.00'),
(99, '1401314400', 'FIEF AUX MOINES CB 2705', 3, '', '78.60'),
(100, '1401746400', 'SGT PRELEVEMENT NUMERO 3638', 3, '', '2.50'),
(101, '1402351200', 'REMBOURSEMENT MARIE SURGELES 115/27-05', 3, '42.00', ''),
(102, '1402869600', 'SFR PRELEVEMENT ', 3, '', '37.10'),
(103, '1403042400', 'E.LECLERC CB 1706', 3, '', '29.00'),
(104, '1403215200', 'CARREFOUR MARKET GAZOIL CB 1906', 3, '', '8.50'),
(105, '1403820000', 'LE FIEF AUX MOINES CB 2506', 3, '', '91.70'),
(106, '1404252000', 'SGT PRELEVEMENT NUMERO 4359', 3, '', '28.65'),
(107, '1404424800', 'E.LECLERC CB 0307', 3, '', '48.01'),
(108, '1404684000', 'COFIROUTE CB  0307', 3, '', '6.20'),
(109, '1404770400', 'COFIROUTE CB  0307', 3, '', '6.20'),
(110, '1404943200', 'REMBOURSEMENT FRAIS MARIE', 3, '37.50', ''),
(111, '1405375200', 'SFR PRELEVEMENT 4666', 3, '', '36.90'),
(112, '1406152800', 'LE FIEF AUX MOINES CB 2207', 3, '', '108.10'),
(113, '1406498400', 'WOLTERS KLUWER CHQ 5848131', 3, '', '852.53'),
(114, '1407103200', 'SGT PRELEVEMENT NUMERO 4988', 3, '', '2.50'),
(115, '1407794400', 'REMBOURSEMENT FRAIS MARIE', 3, '60.41', ''),
(116, '1407967200', 'SFR PRELEVEMENT 7509', 3, '', '38.70'),
(117, '1408917600', 'RESTAURANT LE FIEF AUX MOINES CB 2108', 3, '', '123.70'),
(118, '1408917600', 'E.LECLERC CHQ 5848132', 3, '', '69.59'),
(119, '1409090400', 'VIREMENT COMPTE ASC / FCT', 3, '4116', ''),
(120, '1409263200', 'RESTAURANT LE FIEF AUX MOINES CB 2708', 3, '', '122.40'),
(121, '1409522400', 'RESTAURANT RELAI ALSACE CB 40037181', 3, '', '66.80'),
(122, '1409522400', 'LECLERC SAUMUR  CB 40037181', 3, '', '249.00'),
(123, '1409608800', 'SGT PRELEVEMENT NUMERO 5582', 3, '', '2.50'),
(124, '1409781600', 'STREGO  CHQ 5848133', 3, '', '2100'),
(125, '1410300000', 'STREGO  CHQ 5848133', 3, '', '15.01'),
(126, '1410386400', 'EUROPCAR CB 0909', 3, '', '48.78'),
(127, '1410732000', 'SFR PRELEVEMENT 4575', 3, '', '36.90'),
(128, '1410818400', 'TARDIVON RESTAURATION CHQ 7036381', 3, '', '75.80'),
(129, '1410904800', 'INTERMARCHE GAZOIL CB 1609', 3, '', '19.01'),
(130, '1410991200', 'EUROPCAR CB 1609', 3, '', '48.78'),
(131, '1411077600', 'SUPER U GAZOIL CB 1709', 3, '', '34.00'),
(132, '1411336800', 'SUPER U GAZOIL CB 1709', 3, '', '123.60'),
(133, '1411509600', 'RESTAURANT LE FIEF AUX MOINES CB 2209', 3, '', '93.60'),
(134, '1412200800', 'INTERMARCHE GAZOIL CB 0110', 3, '', '28.60'),
(135, '1412200800', 'LE PETIT CORONAIS CB 0110', 3, '', '23.00'),
(136, '1412200800', 'SGT PRELEVEMENT NUMERO 6317', 3, '', '2.50'),
(137, '1412287200', 'LIVANDI CHQ 7036382', 3, '', '860.00'),
(138, '1412287200', 'RESTAURANT LE BISTRONOME CB 0110', 3, '', '91'),
(139, '1412546400', 'RESTAURANT LE FIEF AUX MOINES CB 0310', 3, '', '63.90'),
(140, '1412719200', 'EUROPCAR CHQ 7036383', 3, '', '50.64'),
(141, '1412719200', 'REMBOURSEMENT FRAIS REUNION CHQ 7036384', 3, '', '35.64'),
(142, '1412892000', 'VIREMENT MARIE RBT FRAIS', 3, '53.01', ''),
(143, '1413324000', 'SFR PRELEVEMENT 5255', 3, '', '36.90'),
(144, '1413496800', 'AUTOROUTE DU SUD CB 1510', 3, '', '6.20'),
(145, '1413496800', 'LE PETIT FAIT TOUT CB 1510', 3, '', '13.70'),
(146, '1413496800', 'HOTEL ASTER CB 1510', 3, '', '65.22'),
(147, '1413756000', 'COFIROUTE CB 1710', 3, '', '6.20'),
(148, '1413756000', 'RESTAURATION HOTEL ASTER CB 1610', 3, '', '18.00'),
(149, '1413756000', 'INTERMARCHE GAZOIL CB 1710', 3, '', '14.85'),
(150, '1414101600', 'LE RELAIS DU GRAND BOURNAY CB 2210', 3, '', '43.80'),
(151, '1414364400', 'LE FIEF AUX MOINES  CB 2410', 3, '', '78.00'),
(152, '1415055600', 'SGT PRELEVEMENT NUMERO 6952', 3, '', '2.50'),
(153, '1415228400', 'SUPER U STATION CB 0411', 3, '', '7.45'),
(154, '1415574000', 'REMB NOTE DE FRAIS MARIE ', 3, '234.17', ''),
(155, '1415919600', 'SFR PREL NUMERO 4196', 3, '', '42.08'),
(156, '1416438000', 'COFIROUTE CB 1811', 3, '', '13.60'),
(157, '1416783600', 'RESTAURANT LE FIEF AU MOINE CB 2011', 3, '', '116.10'),
(158, '1417129200', 'GIFI DECORATION CB 2711', 3, '', '45.95'),
(159, '1417388400', 'CASA DECORATIONS CB 2711', 3, '', '19.74'),
(160, '1417474800', 'SGT PRELEVEMENT NUMERO 7565', 3, '', '2.50'),
(161, '1417993200', 'GIFI DECORATION CB 0512', 3, '', '31.74'),
(162, '1417993200', 'CARREFOUR MARKET CB 0512', 3, '', '97.89'),
(163, '1417993200', 'RELAI ALSACE CB 0512', 3, '', '134.50'),
(164, '1417993200', 'E.LECLERC SAPIN NOEL CB 0512', 3, '', '31.00'),
(165, '1418166000', 'REMBOURSEMENT FRAIS MARIE', 3, '7.45', ''),
(166, '1418166000', 'PROXY FOURNITURES REPAS CHQ 7036388', 3, '', '43.28'),
(167, '1418338800', 'STATION U GAZOIL CB 1012', 3, '', '19.00'),
(168, '1418598000', 'SFR PRELEVEMENT 4235', 3, '', '36.90'),
(169, '1418598000', 'PUY DU FOU CB1212', 3, '', '52.80'),
(170, '1418684400', 'LOCATION SALLE DES FETES NOEL CHQ 7036386', 3, '', '314'),
(171, '1418857200', 'BUREAU VALLEE CB 1712', 3, '', '69.88'),
(172, '1418943600', 'CAFE DU CENTRE CB 1712', 3, '', '84.00'),
(173, '1419202800', 'COFIROUTE CB 1912', 3, '', '6.20'),
(174, '1419202800', 'COFIROUTE CB 1912', 3, '', '6.20'),
(175, '1419289200', 'LE PETIT FAI TOUT CB 1912', 3, '', '37.50'),
(176, '1419807600', 'CFDT SGA 49 CHQ 7036389', 3, '', '94.50'),
(177, '1420412400', 'SGT PRELEVEMENT NUMERO 0618', 3, '', '2.50'),
(178, '1420585200', 'RELAI DE BRION CB 0601', 3, '', '24.00'),
(179, '1389222000', 'REMBOURSEMENT FRAIS MARIE', 3, '19.00', ''),
(180, '1421017200', 'INTERMARCHE GAZOIL CB 0901', 3, '', '8.50'),
(181, '1421103600', 'EUROPCAR CB 0901', 3, '', '48.84'),
(182, '1421190000', 'SFR PRELEVEMENT NUMERO 2325', 3, '', '37.81'),
(183, '1421362800', 'CAR SUD LOIRE CHQ 7036390', 3, '', '569.00'),
(184, '1421622000', 'STATION U GAZOIL CB 1501', 3, '', '16.51'),
(185, '1421622000', 'PARKING POITIERS CB 1501', 3, '', '11.40'),
(186, '1421622000', 'BRASSERIE DU MARCHE CB 1501', 3, '', '159.50'),
(187, '1421967600', 'REMBOURSEMENT FRAIS M LAUNIER CHQ 7036393', 3, '', '62.64'),
(188, '1421967600', 'RESTAURANT LE FIEF AUX MOINES CB 2101', 3, '', '91.70'),
(189, '1422226800', 'REMBOURSEMENT FRAIS M JACQUET CHQ 7036391', 3, '', '138.24'),
(190, '1422226800', 'E.LECLERC CB 2301', 3, '', '64.89'),
(191, '1422572400', 'E.LECLERC GAZOIL CHQ 7036396', 3, '', '7.52'),
(192, '1422831600', 'TRAJET ANGERS BOURSE DU TRAVAIL  ESENCE CHQ 7036397', 3, '', '21.13'),
(193, '1422918000', 'SGT PRELEVEMENT NUMERO 1255', 3, '', '2.50'),
(194, '1423004400', 'REMBOURSEMENT FRAIS  VIOLLEAU CHQ 7036392', 3, '', '44.28'),
(195, '1423090800', 'SFR PRELVEMENT 8182', 3, '', '29.98'),
(196, '1423436400', 'REMBOURSEMENT FRAIS M LORMIER CHQ 7336399', 3, '', '70.34'),
(197, '1423522800', 'REMBOURSEMENT FRAIS ETB MARIE', 3, '49.90', ''),
(198, '1423522800', 'AVAST NEXT WAY CB 0602', 3, '', '79.99'),
(199, '1424041200', 'SFR PRELEVEMENT NUMERO 6753', 3, '', '29.13'),
(200, '1424127600', 'LES BELLES CAVES RESTAURANT CB 1602', 3, '', '82.00'),
(201, '1424300400', 'STATION U GAZOIL CB 1702', 3, '', '13.31'),
(202, '1424300400', 'RELAIS BOURNAIS RESTAURATION CB 1702', 3, '', '142.70'),
(203, '1424646000', 'LIVARDI AGENDAS CHQ 7036398', 3, '', '2007.50'),
(204, '1424991600', 'SUPER U STATION GAZOIL CB 2502', 3, '', '9.50'),
(205, '1424991600', 'EUROPCAR  CHQ 7036400', 3, '', '48.84'),
(206, '1425337200', 'SFR PRELEVEMENT NUMERO 5510', 3, '', '30.48'),
(207, '1425337200', 'SGT PRELEVEMENT NUMERO 1863', 3, '', '2.50'),
(208, '1426028400', 'REMBOURSEMENT FRAIS MONTJAL CHQ 7036395', 3, '', '222.48'),
(209, '1426114800', 'VERSEMENT ENTREPRISE ', 3, '4075', ''),
(210, '1423782000', 'REMBOURSEMENT M LORMIER CHQ 7036402', 3, '', '120.96'),
(211, '1426633200', 'SFR PRELEVEMENT NUMERO 5483', 3, '', '26.90'),
(212, '1426633200', 'CAFE DU CENTRE CB 1603', 3, '', '83'),
(213, '1426719600', 'LE PETIT CORONAIS CB 1803', 3, '', '12'),
(214, '1426806000', 'HOTEL LA BEAUJOIRE CB 1803', 3, '', '73.70'),
(215, '1426806000', 'SUPER U STATION CB1803', 3, '', '25.03'),
(216, '1427324400', 'EUROPCAR CB 2403', 3, '', '61.19'),
(217, '1427410800', 'CARBURANT CHQ 7036403 ', 3, '', '7'),
(218, '1430344800', 'INTERMARCHE  CB 2703', 3, '', '29.04'),
(219, '1427752800', 'SFR PRELEVEMENT 8287', 3, '', '29.98'),
(221, '1427752800', 'EUROPCAR CB 2703', 3, '', '166.84');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `compta_bilan_actif`
--

INSERT INTO `compta_bilan_actif` (`idcptbilanactif`, `idcomptaplan`, `montant`) VALUES
(18, 3, '5800.73');

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
(7, 28, '5800.73');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=484 ;

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `idcomptaplan`, `debit`, `credit`) VALUES
(191, 3, '5800.73', ''),
(192, 28, '', '5800.73'),
(193, 59, '2.50', ''),
(194, 3, '', '2.50'),
(195, 54, '898.65', ''),
(196, 3, '', '898.65'),
(197, 38, '', '16.00'),
(198, 3, '16.00', ''),
(199, 51, '24.00', ''),
(200, 3, '', '24'),
(201, 57, '36.90', ''),
(202, 3, '', '36.90'),
(203, 51, '36.00', ''),
(204, 3, '', '36.00'),
(205, 34, '', '1959'),
(206, 3, '1959', ''),
(207, 53, '47.39', ''),
(208, 3, '', '47.39'),
(209, 34, '', '1932'),
(210, 3, '1932', ''),
(211, 56, '12.40', ''),
(212, 3, '', '12.40'),
(213, 56, '104.80', ''),
(214, 3, '', '104.80'),
(215, 50, '7.92', ''),
(216, 3, '', '7.92'),
(217, 59, '2.50', ''),
(218, 3, '', '2.50'),
(219, 51, '5.01', ''),
(220, 3, '', '5.01'),
(221, 64, '18.00', ''),
(222, 3, '', '18.00'),
(223, 38, '', '36.00'),
(224, 3, '36', ''),
(226, 3, '', '5.00'),
(227, 50, '5.00', ''),
(228, 57, '36.90', ''),
(229, 3, '', '36.90'),
(230, 64, '229.20', ''),
(231, 3, '', '229.20'),
(232, 56, '104.00', ''),
(233, 3, '', '104.00'),
(234, 51, '42.00', ''),
(235, 3, '', '42.00'),
(236, 56, '78.60', ''),
(237, 3, '', '78.60'),
(238, 59, '2.50', ''),
(239, 3, '', '2.50'),
(240, 38, '', '42.00'),
(241, 3, '42.00', ''),
(242, 57, '37.10', ''),
(243, 3, '', '37.10'),
(244, 51, '29.00', ''),
(245, 3, '', '29.00'),
(246, 51, '8.50', ''),
(247, 3, '', '8.50'),
(248, 56, '91.70', ''),
(249, 3, '', '91.70'),
(250, 59, '28.65', ''),
(251, 3, '', '28.65'),
(252, 51, '48.01', ''),
(253, 3, '', '48.01'),
(254, 51, '6.20', ''),
(255, 51, '6.20', ''),
(256, 3, '', '6.20'),
(257, 3, '', '6.20'),
(258, 38, '', '37.50'),
(259, 3, '37.50', ''),
(260, 57, '36.90', ''),
(261, 3, '', '36.90'),
(262, 56, '108.10', ''),
(263, 3, '', '108.10'),
(264, 61, '852.53', ''),
(265, 3, '', '852.53'),
(266, 59, '2.50', ''),
(267, 3, '', '2.50'),
(268, 38, '', '60.41'),
(269, 3, '60.41', ''),
(270, 57, '38.70', ''),
(271, 3, '', '38.70'),
(272, 56, '123.70', ''),
(273, 3, '', '123.70'),
(274, 53, '69.59', ''),
(275, 3, '', '69.59'),
(276, 34, '', '4116'),
(277, 3, '4116', ''),
(278, 56, '122.40', ''),
(279, 3, '', '122.40'),
(280, 56, '66.80', ''),
(281, 3, '', '66.80'),
(282, 60, '249.00', ''),
(283, 3, '', '249.00'),
(284, 59, '2.50', ''),
(285, 3, '', '2.50'),
(286, 48, '2100', ''),
(287, 3, '', '2100'),
(288, 51, '15.01', ''),
(289, 3, '', '15.01'),
(290, 51, '48.78', ''),
(291, 3, '', '48.78'),
(292, 57, '36.90', ''),
(293, 3, '', '36.90'),
(294, 56, '75.80', ''),
(295, 3, '', '75.80'),
(296, 51, '19.01', ''),
(297, 3, '', '19.01'),
(298, 3, '', '48.78'),
(299, 51, '48.78', ''),
(300, 51, '34.00', ''),
(301, 3, '', '34.00'),
(302, 56, '123.60', ''),
(303, 3, '', '123.60'),
(304, 56, '93.60', ''),
(305, 3, '', '93.60'),
(306, 51, '28.60', ''),
(307, 3, '', '28.60'),
(308, 56, '23.00', ''),
(309, 3, '', '23.00'),
(310, 59, '2.50', ''),
(311, 3, '', '2.50'),
(312, 61, '860.00', ''),
(313, 3, '', '860.00'),
(314, 51, '91.00', ''),
(315, 3, '', '91'),
(316, 56, '63.90', ''),
(317, 3, '', '63.90'),
(318, 51, '50.64', ''),
(319, 3, '', '50.64'),
(320, 64, '35.64', ''),
(321, 3, '', '35.64'),
(322, 38, '', '53.01'),
(323, 3, '53.01', ''),
(324, 57, '36.90', ''),
(325, 3, '', '36.90'),
(326, 51, '6.20', ''),
(327, 3, '', '6.20'),
(328, 56, '13.70', ''),
(329, 3, '', '13.70'),
(330, 56, '65.22', ''),
(331, 3, '', '65.22'),
(332, 51, '6.20', ''),
(333, 3, '', '6.20'),
(334, 56, '18.00', ''),
(335, 3, '', '18.00'),
(336, 51, '14.85', ''),
(337, 3, '', '14.85'),
(338, 56, '43.80', ''),
(339, 3, '', '43.80'),
(340, 56, '78.00', ''),
(341, 3, '', '78.00'),
(342, 59, '2.50', ''),
(343, 3, '', '2.50'),
(344, 51, '7.45', ''),
(345, 3, '', '7.45'),
(346, 38, '', '234.17'),
(347, 3, '234.17', ''),
(348, 57, '42.08', ''),
(349, 3, '', '42.08'),
(350, 51, '13.60', ''),
(351, 3, '', '13.60'),
(352, 56, '116.10', ''),
(353, 3, '', '116.10'),
(354, 64, '45.95', ''),
(355, 3, '', '45.95'),
(356, 64, '19.74', ''),
(357, 3, '', '19.74'),
(358, 59, '2.50', ''),
(359, 3, '', '2.50'),
(360, 64, '31.74', ''),
(361, 3, '', '31.74'),
(362, 64, '97.89', ''),
(363, 3, '', '97.89'),
(364, 56, '134.50', ''),
(365, 3, '', '134.50'),
(366, 64, '31.00', ''),
(367, 3, '', '31.00'),
(368, 38, '', '7.45'),
(369, 3, '7.45', ''),
(370, 64, '43.28', ''),
(371, 3, '', '43.28'),
(372, 51, '19.00', ''),
(373, 3, '', '19.00'),
(374, 57, '36.90', ''),
(375, 3, '', '36.90'),
(376, 64, '52.80', ''),
(377, 3, '', '52.80'),
(378, 64, '314', ''),
(379, 3, '', '314'),
(380, 53, '69.88', ''),
(381, 3, '', '69.88'),
(382, 56, '84.00', ''),
(383, 3, '', '84.00'),
(384, 51, '6.20', ''),
(385, 3, '', '6.20'),
(386, 51, '6.20', ''),
(387, 3, '', '6.20'),
(388, 56, '37.50', ''),
(389, 3, '', '37.50'),
(390, 61, '94.50', ''),
(391, 3, '', '94.50'),
(392, 59, '2.50', ''),
(393, 3, '', '2.50'),
(394, 56, '24.00', ''),
(395, 3, '', '24.00'),
(396, 38, '', '19.00'),
(397, 3, '19.00', ''),
(398, 51, '8.50', ''),
(399, 3, '', '8.50'),
(400, 51, '48.84', ''),
(401, 3, '', '48.84'),
(402, 57, '37.81', ''),
(403, 3, '', '37.81'),
(404, 64, '569', ''),
(405, 3, '', '569.00'),
(406, 51, '16.51', ''),
(407, 3, '', '16.51'),
(408, 51, '11.40', ''),
(409, 3, '', '11.40'),
(410, 56, '159.50', ''),
(411, 3, '', '159.50'),
(412, 51, '62.64', ''),
(413, 3, '', '62.64'),
(414, 56, '91.70', ''),
(415, 3, '', '91.70'),
(416, 51, '138.24', ''),
(417, 3, '', '138.24'),
(418, 64, '64.89', ''),
(419, 3, '', '64.89'),
(420, 51, '7.52', ''),
(421, 3, '', '7.52'),
(422, 51, '21.13', ''),
(423, 3, '', '21.13'),
(424, 59, '2.50', ''),
(425, 3, '', '2.50'),
(426, 51, '44.28', ''),
(427, 3, '', '44.28'),
(428, 57, '29.98', ''),
(429, 3, '', '29.98'),
(430, 51, '70.34', ''),
(431, 3, '', '70.34'),
(433, 38, '', '49.90'),
(434, 3, '49.90', ''),
(435, 53, '79.99', ''),
(436, 3, '', '79.99'),
(437, 57, '29.13', ''),
(438, 3, '', '29.13'),
(439, 56, '82.00', ''),
(440, 3, '', '82.00'),
(441, 51, '13.31', ''),
(442, 3, '', '13.31'),
(443, 56, '142.70', ''),
(444, 3, '', '142.70'),
(445, 61, '2007.50', ''),
(446, 3, '', '2007.50'),
(447, 51, '9.50', ''),
(448, 3, '', '9.50'),
(450, 51, '48.84', ''),
(451, 3, '', '48.84'),
(452, 57, '30.48', ''),
(453, 3, '', '30.48'),
(454, 59, '2.50', ''),
(455, 3, '', '2.50'),
(456, 51, '222.48', ''),
(457, 3, '', '222.48'),
(459, 3, '4075', ''),
(460, 51, '120.96', ''),
(461, 3, '', '120.96'),
(462, 57, '26.90', ''),
(463, 3, '', '26.90'),
(464, 56, '83.00', ''),
(465, 3, '', '83'),
(466, 56, '12.00', ''),
(467, 3, '', '12'),
(468, 56, '73.70', ''),
(469, 3, '', '73.70'),
(470, 51, '25.03', ''),
(471, 3, '', '25.03'),
(472, 51, '61.19', ''),
(473, 3, '', '61.19'),
(474, 51, '7', ''),
(475, 3, '', '7'),
(476, 64, '29.04', ''),
(477, 3, '', '29.04'),
(478, 57, '29.98', ''),
(479, 3, '', '29.98'),
(481, 3, '', '166.84'),
(482, 51, '166.84', ''),
(483, 34, '', '4075');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=227 ;

--
-- Contenu de la table `compta_mvm`
--

INSERT INTO `compta_mvm` (`idcomptamvm`, `date_mvm`, `desc_mvm`, `idcomptaplan`, `debit`, `credit`) VALUES
(81, '1396389600', 'SGT PRELEVEMENT NUMERO 2452', 59, '2.50', ''),
(82, '1396821600', 'MACIF PRELEVEMENT ASSURANCE NUMERO 4313', 54, '898.65', ''),
(83, '1397080800', 'REMBOURSEMENT FRAIS MARIE SURGELES', 38, '', '16.00'),
(84, '1397080800', 'CARREFOUR MARKET CB 0904', 51, '24.00', ''),
(85, '1397426400', 'SFR PRELEVEMENT NUMERO 0269', 57, '36.90', ''),
(86, '1397512800', 'CARREFOUR MARKET CB 1404', 51, '36.00', ''),
(87, '1397599200', 'VIREMENT COMPTE ASC SUR FCT', 34, '', '1959'),
(88, '1397685600', 'E.LECLERC CB 1604', 53, '47.39', ''),
(89, '1398117600', 'VIREMENT ASC  SUR FCT (ERREUR)', 34, '', '1932'),
(90, '1398290400', 'BOULANGERIE BENETEAU CB 2304', 56, '12.40', ''),
(91, '1398290400', 'LE FIEF AUX MOINES CB 2204', 56, '104.80', ''),
(92, '1398290400', 'LA POSTE CB 1804', 50, '7.92', ''),
(93, '1399240800', 'SGT PRELEVEMENT NUMERO 3052', 59, '2.50', ''),
(94, '1399413600', 'SUPER U STATION CB 0505', 51, '5.01', ''),
(95, '1399500000', 'DECATHLON CB 0705', 64, '18.00', ''),
(96, '1399586400', 'REMBOURSEMENT MARIE SURGELES ', 38, '', '36.00'),
(97, '1399586400', 'LA POSTE CB 0705', 50, '5.00', ''),
(98, '1400104800', 'SFR PRELVEMENT 4766', 57, '36.90', ''),
(99, '1400450400', 'ANCV CHQ 5848129', 64, '229.20', ''),
(100, '1400709600', 'RESTAURANT FIEF AUX MOINES CHQ 5848130', 56, '104.00', ''),
(101, '1401055200', 'SUPER U CB 2305', 51, '42.00', ''),
(102, '1401314400', 'FIEF AUX MOINES CB 2705', 56, '78.60', ''),
(103, '1401746400', 'SGT PRELEVEMENT NUMERO 3638', 59, '2.50', ''),
(104, '1402351200', 'REMBOURSEMENT MARIE SURGELES 115/27-05', 38, '', '42.00'),
(105, '1402869600', 'SFR PRELEVEMENT ', 57, '37.10', ''),
(106, '1403042400', 'E.LECLERC CB 1706', 51, '29.00', ''),
(107, '1403215200', 'CARREFOUR MARKET GAZOIL CB 1906', 51, '8.50', ''),
(108, '1403820000', 'LE FIEF AUX MOINES CB 2506', 56, '91.70', ''),
(109, '1404252000', 'SGT PRELEVEMENT NUMERO 4359', 59, '28.65', ''),
(110, '1404424800', 'E.LECLERC CB 0307', 51, '48.01', ''),
(111, '1404684000', 'COFIROUTE CB  0307', 51, '6.20', ''),
(112, '1404770400', 'COFIROUTE CB  0307', 51, '6.20', ''),
(113, '1404943200', 'REMBOURSEMENT FRAIS MARIE', 38, '', '37.50'),
(114, '1405375200', 'SFR PRELEVEMENT 4666', 57, '36.90', ''),
(115, '1406152800', 'LE FIEF AUX MOINES CB 2207', 56, '108.10', ''),
(116, '1406498400', 'WOLTERS KLUWER CHQ 5848131', 61, '852.53', ''),
(117, '1407103200', 'SGT PRELEVEMENT NUMERO 4988', 59, '2.50', ''),
(118, '1407794400', 'REMBOURSEMENT FRAIS MARIE', 38, '', '60.41'),
(119, '1407967200', 'SFR PRELEVEMENT 7509', 57, '38.70', ''),
(120, '1408917600', 'RESTAURANT LE FIEF AUX MOINES CB 2108', 56, '123.70', ''),
(121, '1408917600', 'E.LECLERC  CHQ 5848132', 53, '69.59', ''),
(122, '1409090400', 'VIREMENT COMPTE ASC / FCT', 34, '', '4116'),
(123, '1409263200', 'RESTAURANT LE FIEF AUX MOINES CB 2708', 56, '122.40', ''),
(124, '1409522400', 'RESTAURANT RELAI ALSACE CB 40037181', 56, '66.80', ''),
(125, '1409522400', 'LECLERC SAUMUR  CB 40037181', 60, '249.00', ''),
(126, '1409608800', 'SGT PRELEVEMENT NUMERO 5582', 59, '2.50', ''),
(127, '1409781600', 'STREGO  CHQ 5848133', 48, '2100', ''),
(128, '1410300000', 'INTERMARCHE GAZOIL CB 0909', 51, '15.01', ''),
(129, '1410386400', 'EUROPCAR CB 0909', 51, '48.78', ''),
(130, '1410732000', 'SFR PRELEVEMENT 4575', 57, '36.90', ''),
(131, '1410818400', 'TARDIVON RESTAURATION CHQ 7036381', 56, '75.80', ''),
(132, '1410904800', 'INTERMARCHE GAZOIL CB 1609', 51, '19.01', ''),
(133, '1410991200', 'EUROPCAR CB 1609', 51, '48.78', ''),
(134, '1411077600', 'SUPER U GAZOIL CB 1709', 51, '34.00', ''),
(135, '1411336800', 'RESTAURANT LE FIEF AU MOINE CB 1909', 56, '123.60', ''),
(136, '1411509600', 'RESTAURANT LE FIEF AUX MOINES CB 2209', 56, '93.60', ''),
(137, '1412200800', 'INTERMARCHE GAZOIL CB 0110', 51, '28.60', ''),
(138, '1412200800', 'LE PETIT CORONAIS CB 0110', 56, '23.00', ''),
(139, '1412200800', 'SGT PRELEVEMENT NUMERO 6317', 59, '2.50', ''),
(140, '1412287200', 'LIVANDI CHQ 7036382', 61, '860.00', ''),
(141, '1412287200', 'RESTAURANT LE BISTRONOME CB 0110', 51, '91.00', ''),
(142, '1412546400', 'RESTAURANT LE FIEF AUX MOINES CB 0310', 56, '63.90', ''),
(143, '1412719200', 'EUROPCAR CHQ 7036383', 51, '50.64', ''),
(144, '1412719200', 'REMBOURSEMENT FRAIS REUNION CHQ 7036384', 64, '35.64', ''),
(145, '1412892000', 'VIREMENT MARIE RBT FRAIS', 38, '', '53.01'),
(146, '1413324000', 'SFR PRELEVEMENT 5255', 57, '36.90', ''),
(147, '1413496800', 'AUTOROUTE DU SUD CB 1510', 51, '6.20', ''),
(148, '1413496800', 'LE PETIT FAIT TOUT CB 1510', 56, '13.70', ''),
(149, '1413496800', 'HOTEL ASTER CB 1510', 56, '65.22', ''),
(150, '1413756000', 'COFIROUTE CB 1710', 51, '6.20', ''),
(151, '1413756000', 'RESTAURATION HOTEL ASTER CB 1610', 56, '18.00', ''),
(152, '1413756000', 'INTERMARCHE GAZOIL CB 1710', 51, '14.85', ''),
(153, '1414101600', 'LE RELAIS DU GRAND BOURNAY CB 2210', 56, '43.80', ''),
(154, '1414364400', 'LE FIEF AUX MOINES  CB 2410', 56, '78.00', ''),
(155, '1415055600', 'SGT PRELEVEMENT NUMERO 6952', 59, '2.50', ''),
(156, '1415228400', 'SUPER U STATION CB 0411', 51, '7.45', ''),
(157, '1415574000', 'REMB NOTE DE FRAIS MARIE ', 38, '', '234.17'),
(158, '1415919600', 'SFR PREL NUMERO 4196', 57, '42.08', ''),
(159, '1416438000', 'COFIROUTE CB 1811', 51, '13.60', ''),
(160, '1416783600', 'RESTAURANT LE FIEF AU MOINE CB 2011', 56, '116.10', ''),
(161, '1417129200', 'GIFI DECORATION CB 2711', 64, '45.95', ''),
(162, '1417388400', 'CASA DECORATIONS CB 2711', 64, '19.74', ''),
(163, '1417474800', 'SGT PRELEVEMENT NUMERO 7565', 59, '2.50', ''),
(164, '1417993200', 'GIFI DECORATION CB 0512', 64, '31.74', ''),
(165, '1417993200', 'CARREFOUR MARKET CB 0512', 64, '97.89', ''),
(166, '1417993200', 'RELAI ALSACE CB 0512', 56, '134.50', ''),
(167, '1417993200', 'E.LECLERC SAPIN NOEL CB 0512', 64, '31.00', ''),
(168, '1418166000', 'REMBOURSEMENT FRAIS MARIE', 38, '', '7.45'),
(169, '1418166000', 'PROXY FOUNITURES REPAS CHQ 7036388', 64, '43.28', ''),
(170, '1418338800', 'STATION U GAZOIL CB 1012', 51, '19.00', ''),
(171, '1418598000', 'SFR PRELEVEMENT 4235', 57, '36.90', ''),
(172, '1418598000', 'PUY DU FOU CB1212', 64, '52.80', ''),
(173, '1418684400', 'LOCATION SALLE DES FETES NOEL CHQ 7036386', 64, '314', ''),
(174, '1418857200', 'BUREAU VALLEE CB 1712', 53, '69.88', ''),
(175, '1418943600', 'CAFE DU CENTRE CB 1712', 56, '84.00', ''),
(176, '1419202800', 'COFIROUTE CB 1912', 51, '6.20', ''),
(177, '1419202800', 'AUTOROUTE DU SUD CB 1912', 51, '6.20', ''),
(178, '1419289200', 'LE PETIT FAI TOUT CB 1912', 56, '37.50', ''),
(179, '1419807600', 'CFDT SGA 49 CHQ 7036389', 61, '94.50', ''),
(180, '1420412400', 'SGT PRELEVEMENT NUMERO 0618', 59, '2.50', ''),
(181, '1420585200', 'RELAI DE BRION CB 0601', 56, '24.00', ''),
(182, '1420758000', 'REMBOURSEMENT FRAIS MARIE', 38, '', '19.00'),
(183, '1421017200', 'INTERMARCHE GAZOIL CB 0901', 51, '8.50', ''),
(184, '1421103600', 'EUROPCAR CB 0901', 51, '48.84', ''),
(185, '1421190000', 'SFR PRELEVEMENT NUMERO 2325', 57, '37.81', ''),
(186, '1421362800', 'CAR SUD LOIRE  CHQ 7036390', 64, '569', ''),
(187, '1421622000', 'STATION U GAZOIL CB 1501', 51, '16.51', ''),
(188, '1421622000', 'PARKING POITIERS CB 1501', 51, '11.40', ''),
(189, '1421622000', 'BRASSERIE DU MARCHE CB 1501', 56, '159.50', ''),
(190, '1421967600', 'REMBOURSEMENT FRAIS M LAUNIER CHQ 7036393', 51, '62.64', ''),
(191, '1421967600', 'RESTAURANT LE FIEF AUX MOINES CB 2101', 56, '91.70', ''),
(192, '1422226800', 'REMBOURSEMENT FRAIS M JACQUET CHQ 7036391', 51, '138.24', ''),
(193, '1422226800', 'E.LECLERC CB 2301', 64, '64.89', ''),
(194, '1422572400', 'E.LECLERC GAZOIL CHQ 7036396', 51, '7.52', ''),
(195, '1422831600', 'TRAJET ANGERS BOURSE DU TRAVAIL  ESENCE CHQ 7036397', 51, '21.13', ''),
(196, '1422918000', 'SGT PRELEVEMENT NUMERO 1255', 59, '2.50', ''),
(197, '1423004400', 'REMBOURSEMENT FRAIS  VIOLLEAU CHQ 7036392', 51, '44.28', ''),
(198, '1423090800', 'SFR PRELVEMENT 8182', 57, '29.98', ''),
(199, '1423436400', 'REMBOURSEMENT FRAIS M LORMIER CHQ 7336399', 51, '70.34', ''),
(201, '1423522800', 'REMBOURSEMENT FRAIS ETB MARIE', 38, '', '49.90'),
(202, '1423522800', 'AVAST NEXT WAY CB 0602', 53, '79.99', ''),
(203, '1424041200', 'SFR PRELEVEMENT NUMERO 6753', 57, '29.13', ''),
(204, '1424127600', 'LES BELLES CAVES RESTAURANT CB 1602', 56, '82.00', ''),
(205, '1424300400', 'STATION U GAZOIL CB 1702', 51, '13.31', ''),
(206, '1424300400', 'RELAIS BOURNAIS RESTAURATION CB 1702', 56, '142.70', ''),
(207, '1424646000', 'LIVARDI AGENDAS CHQ 7036398', 61, '2007.50', ''),
(208, '1424991600', 'SUPER U STATION GAZOIL CB 2502', 51, '9.50', ''),
(210, '1424991600', 'EUROPCAR  CHQ 7036400', 51, '48.84', ''),
(211, '1425337200', 'SFR PRELEVEMENT NUMERO 5510', 57, '30.48', ''),
(212, '1425337200', 'SGT PRELEVEMENT NUMERO 1863', 59, '2.50', ''),
(213, '1426028400', 'REMBOURSEMENT FRAIS MONTJAL CHQ 7036395', 51, '222.48', ''),
(215, '1426201200', 'REMBOURSEMENT M LORMIER CHQ 7036402', 51, '120.96', ''),
(216, '1426633200', 'SFR PRELEVEMENT NUMERO 5483', 57, '26.90', ''),
(217, '1426633200', 'CAFE DU CENTRE CB 1603', 56, '83.00', ''),
(218, '1426719600', 'LE PETIT CORONAIS CB 1803', 56, '12.00', ''),
(219, '1426806000', 'HOTEL LA BEAUJOIRE CB 1803', 56, '73.70', ''),
(220, '1426806000', 'SUPER U STATION CB1803', 51, '25.03', ''),
(221, '1427324400', 'EUROPCAR CB 2403', 51, '61.19', ''),
(222, '1427410800', 'CARBURANT CHQ 7036403 ', 51, '7', ''),
(223, '1427666400', 'INTERMARCHE  CB 2703', 64, '29.04', ''),
(224, '1427752800', 'SFR PRELEVEMENT 8287', 57, '29.98', ''),
(225, '1427752800', 'EUROPCAR CB 2703', 51, '166.84', ''),
(226, '1426114800', 'ERREUR BUDGET', 34, '', '4075');

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
(34, 3, 'Commission (&agrave; des tiers)', 'Virement Compte Ã  Compte du C.E'),
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
(56, 6, 'Frais d''administration', 'Frais  Hotellerie et  Restauration'),
(57, 6, 'T&eacute;l&eacute;phone, fax, internet', 'TÃ©lÃ©phone, fax, internet'),
(58, 6, 'Publicit&eacute;', 'Agios'),
(59, 6, 'Interet-charges, Frais Bancaires', 'Frais bancaires'),
(60, 6, 'Amortissements', 'Achat de matÃ©riel '),
(61, 6, 'Autre Charge d''exploitation 1', 'Documentations, journaux, revues'),
(62, 6, 'Autre Charge d''exploitation 2', ''),
(63, 6, 'Autre Charge d''exploitation 3', ''),
(64, 6, 'Autre Charge d''exploitation 4', 'Divers'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=227 ;

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `idcomptaplan`, `debit`, `credit`) VALUES
(80, 59, '2.50', ''),
(81, 54, '898.65', ''),
(82, 38, '', '16.00'),
(83, 51, '24.00', ''),
(84, 57, '36.90', ''),
(85, 51, '36.00', ''),
(86, 34, '', '1959'),
(87, 53, '47.39', ''),
(88, 34, '', '1932'),
(89, 56, '12.40', ''),
(90, 56, '104.80', ''),
(91, 50, '7.92', ''),
(92, 59, '2.50', ''),
(93, 51, '5.01', ''),
(94, 64, '18.00', ''),
(95, 38, '', '36.00'),
(96, 50, '5.00', ''),
(97, 57, '36.90', ''),
(98, 64, '229.20', ''),
(99, 56, '104.00', ''),
(100, 51, '42.00', ''),
(101, 56, '78.60', ''),
(102, 59, '2.50', ''),
(103, 38, '', '42.00'),
(104, 57, '37.10', ''),
(105, 51, '29.00', ''),
(106, 51, '8.50', ''),
(107, 56, '91.70', ''),
(108, 59, '28.65', ''),
(109, 51, '48.01', ''),
(110, 51, '6.20', ''),
(111, 51, '6.20', ''),
(112, 38, '', '37.50'),
(113, 57, '36.90', ''),
(114, 56, '108.10', ''),
(115, 61, '852.53', ''),
(116, 59, '2.50', ''),
(117, 38, '', '60.41'),
(118, 57, '38.70', ''),
(119, 56, '123.70', ''),
(120, 53, '69.59', ''),
(121, 34, '', '4116'),
(122, 56, '122.40', ''),
(124, 56, '66.80', ''),
(125, 60, '249.00', ''),
(126, 59, '2.50', ''),
(127, 48, '2100', ''),
(128, 51, '15.01', ''),
(129, 51, '48.78', ''),
(130, 57, '36.90', ''),
(131, 56, '75.80', ''),
(132, 51, '19.01', ''),
(133, 51, '48.78', ''),
(134, 51, '34.00', ''),
(135, 56, '123.60', ''),
(136, 56, '93.60', ''),
(137, 51, '28.60', ''),
(138, 56, '23.00', ''),
(139, 59, '2.50', ''),
(140, 61, '860.00', ''),
(141, 51, '91.00', ''),
(142, 56, '63.90', ''),
(143, 51, '50.64', ''),
(144, 64, '35.64', ''),
(145, 38, '', '53.01'),
(146, 57, '36.90', ''),
(147, 51, '6.20', ''),
(148, 56, '13.70', ''),
(149, 56, '65.22', ''),
(150, 51, '6.20', ''),
(151, 56, '18.00', ''),
(152, 51, '14.85', ''),
(153, 56, '43.80', ''),
(154, 56, '78.00', ''),
(155, 59, '2.50', ''),
(156, 51, '7.45', ''),
(157, 38, '', '234.17'),
(158, 57, '42.08', ''),
(159, 51, '13.60', ''),
(160, 56, '116.10', ''),
(161, 64, '45.95', ''),
(162, 64, '19.74', ''),
(163, 59, '2.50', ''),
(164, 64, '31.74', ''),
(165, 64, '97.89', ''),
(166, 56, '134.50', ''),
(167, 64, '31.00', ''),
(168, 38, '', '7.45'),
(169, 64, '43.28', ''),
(170, 51, '19.00', ''),
(171, 57, '36.90', ''),
(172, 64, '52.80', ''),
(173, 64, '314', ''),
(174, 53, '69.88', ''),
(175, 56, '84.00', ''),
(176, 51, '6.20', ''),
(177, 51, '6.20', ''),
(178, 56, '37.50', ''),
(179, 61, '94.50', ''),
(180, 59, '2.50', ''),
(181, 56, '24.00', ''),
(182, 38, '', '19.00'),
(183, 51, '8.50', ''),
(184, 51, '48.84', ''),
(185, 57, '37.81', ''),
(186, 64, '569', ''),
(187, 51, '16.51', ''),
(188, 51, '11.40', ''),
(189, 56, '159.50', ''),
(190, 51, '62.64', ''),
(191, 56, '91.70', ''),
(192, 51, '138.24', ''),
(193, 64, '64.89', ''),
(194, 51, '7.52', ''),
(195, 51, '21.13', ''),
(196, 59, '2.50', ''),
(197, 51, '44.28', ''),
(198, 57, '29.98', ''),
(199, 51, '70.34', ''),
(201, 38, '', '49.90'),
(202, 53, '79.99', ''),
(203, 57, '29.13', ''),
(204, 56, '82.00', ''),
(205, 51, '13.31', ''),
(206, 56, '142.70', ''),
(207, 61, '2007.50', ''),
(208, 51, '9.50', ''),
(210, 51, '48.84', ''),
(211, 57, '30.48', ''),
(212, 59, '2.50', ''),
(213, 51, '222.48', ''),
(215, 51, '120.96', ''),
(216, 57, '26.90', ''),
(217, 56, '83.00', ''),
(218, 56, '12.00', ''),
(219, 56, '73.70', ''),
(220, 51, '25.03', ''),
(221, 51, '61.19', ''),
(222, 51, '7', ''),
(223, 64, '29.04', ''),
(224, 57, '29.98', ''),
(225, 51, '166.84', ''),
(226, 34, '', '4075');

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
(1, 'ComitÃ© d''Ã©tablissement  MARIE SURGELES', '0.50', '0.25', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '31-03-2014', '31-03-2015');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `cpt_resultat`
--

INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(1, '50765462', '04-03-2015', 'Vente de Billetterie: MOCKELYN Maxime pour la prestation Saucisson', '', '50'),
(2, '', '06-03-2015', 'Remboursement de la Prestation pour MOCKELYN Maxime - SPORT', '142.75', ''),
(3, '57648873', '14-03-2015', 'Vente de Billetterie: MOCKELYN Maxime pour la prestation Saucisse', '', '30'),
(4, '', '20-03-2015', 'Remboursement de la Prestation pour MOCKELYN Maxime - GYM', '57.25', ''),
(5, '5558380', '19-03-2015', 'Vente de Billetterie: MOCKELYN Maxime pour la prestation Saucisse', '', '21'),
(6, '', '11-03-2015', 'Subvention', '', '2000'),
(7, '', '01-01-2015', 'SUBVENTION TEST', '', '10000'),
(9, '', '01-02-2015', 'Adhesion', '980', ''),
(11, '', '17-02-2015', 'TEST DATE', '50000', ''),
(12, '', '18-02-2015', 'TEST DATE 2', '', '60000');

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE IF NOT EXISTS `famille_prestation` (
`idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Contenu de la table `famille_prestation`
--

INSERT INTO `famille_prestation` (`idfamilleprestation`, `designation_famille`) VALUES
(44, 'CHARCUTERIE');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(1, 33, 64, '10', '50', '20', 0),
(2, 34, 65, '10', '30', '20', 0),
(3, 35, 65, '7', '21', '14', 0);

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
(5, '1.0.0', '15315-FCT-CDT');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
`iduser` int(13) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass_md5` varchar(255) NOT NULL,
  `groupe` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`iduser`, `login`, `pass_md5`, `groupe`) VALUES
(1, 'Administrateur', '25f9e794323b453885f5181f1b624d0b', 1),
(4, 'DIRECCTE', 'fec53977d16cbfc9fa0650bbb7fe1525', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`) VALUES
(64, 44, 'Saucisson', '01-01-2015', '31-12-2015', '5', '2', '7', '100', '48', 0),
(65, 44, 'Saucisse', '01-01-2015', '31-12-2015', '3', '2', '5', '100', '67', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `produit_fixe`
--

INSERT INTO `produit_fixe` (`idproduitfixe`, `designation`, `date_produit_fixe`, `montant_produit`) VALUES
(1, 'Subvention', '11-03-2015', '2000'),
(2, 'SUBVENTION TEST', '01-01-2015', '10000'),
(3, 'TEST DATE 2', '18-02-2015', '60000');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(1, 33, 1, '50', 'BNP', 'MOCKELYN', '00001', 1),
(2, 34, 1, '30', 'SG', 'MOCKELYN', '00002', 1),
(3, 35, 1, '21', 'BNP', 'MOCKELYN', '00003', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_remb_ayant_droit` (
`idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `reg_remb_salarie`
--

INSERT INTO `reg_remb_salarie` (`idregrembsalarie`, `idrembsalarie`, `montant_reglement`, `num_chq`) VALUES
(1, 1, '142,75', '00000000001'),
(2, 2, '57,25', '00000002');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `remb_salarie`
--

INSERT INTO `remb_salarie` (`idrembsalarie`, `idsalarie`, `prestation`, `date_vente`, `montant_prestation`, `part_ce`, `etat_facture`) VALUES
(1, 69, 'SPORT', '06-03-2015', '285.50', '142.75', 1),
(2, 69, 'GYM', '20-03-2015', '200', '57.25', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `remise_banque`
--

INSERT INTO `remise_banque` (`idremisebanque`, `date_remise`, `type_remise`, `num_remise`, `montant_remise`, `valid`) VALUES
(1, '12-02-2015', 1, 'DFGH000001', '101', 1);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `remise_banque_chq`
--

INSERT INTO `remise_banque_chq` (`idremisebanquechq`, `idremisebanque`, `idreglementventepresta`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`, `solde_salarie`) VALUES
(69, '', 1, 'MOCKELYN', 'Maxime', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '0'),
(70, '', 2, 'MARIE', 'LAURE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '0');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `solde_caisse`
--

INSERT INTO `solde_caisse` (`idsoldecaisse`, `date_mouvement`, `num_mouvement`, `type_mouvement`, `type_solde`, `libelle_mouvement`, `debit`, `credit`, `point_caisse`) VALUES
(1, '03-03-2015', '00001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOCKELYN.', '', '50', 0),
(2, '03-03-2015', '00002', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOCKELYN.', '', '30', 0),
(3, '03-03-2015', '00003', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOCKELYN.', '', '21', 0),
(4, '12-02-2015', 'DFGH000001', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° DFGH000001 en date du 12-02-2015.', '101', '', 1);

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
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
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=484;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
