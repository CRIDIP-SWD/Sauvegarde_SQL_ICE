-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 31 Mai 2015 à 17:57
-- Version du serveur :  5.5.41-0ubuntu0.14.04.1
-- Version de PHP :  5.5.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `asc`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compta_balance`
--

INSERT INTO `compta_balance` (`idcomptabalance`, `idcomptaplan`, `debit`, `credit`) VALUES
(80, 1, '200', ''),
(81, 2, '', ''),
(82, 3, '26456.81', '17954.87'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '', ''),
(87, 8, '3016.84', ''),
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
(107, 28, '30336.27', '47428.52'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', ''),
(113, 34, '', ''),
(114, 35, '', '8002.34'),
(115, 36, '336.43', '4379.06'),
(116, 37, '0', '0'),
(117, 38, '', ''),
(118, 39, '', ''),
(119, 40, '1733.89', '0'),
(120, 41, '', ''),
(121, 42, '', ''),
(122, 43, '', ''),
(123, 44, '', ''),
(124, 45, '', ''),
(125, 46, '', ''),
(126, 47, '', ''),
(127, 48, '', ''),
(128, 49, '', ''),
(129, 50, '660.73', ''),
(130, 51, '', ''),
(131, 52, '80', ''),
(132, 53, '', ''),
(133, 54, '260.9', ''),
(134, 55, '', ''),
(135, 56, '', ''),
(136, 57, '10475.29', '0'),
(137, 58, '4191.38', '0'),
(138, 59, '16.25', ''),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(58, '1409695200', 'DOMIWEB PRLV 24966', 3, '', '2.70'),
(59, '1409781600', 'PRELV OUEST FRANCE 0565', 3, '', '25.70'),
(60, '1409868000', 'SOUSCRIPTION PARTS SOCIALES', 3, '', '8.00'),
(61, '1409954400', 'PRLV TELEGRAMME 450557', 3, '', '30.45'),
(62, '1409954400', 'PRELV TELEGRAMME 450561', 3, '', '30.45'),
(63, '1410818400', 'PRELV ORANGE 440010', 3, '', '34.76'),
(64, '1411077600', 'REM CHQ  1085086 PARTICIPATION SALARIES', 3, '188.13', ''),
(65, '1411077600', 'SUBVENTION HALIEUTIS 0902001', 3, '4731', ''),
(66, '1411077600', 'PARTICIPATION SALARIES  1085086', 3, '395.21', ''),
(67, '1411423200', 'LA POSTE', 3, '', '14.64'),
(68, '1411423200', 'PRADEL  CHQ 1006604', 3, '', '75.80'),
(69, '1411509600', 'L HERMINE GOURMANDE  CHQ  1006601', 3, '', '420.00'),
(70, '1411682400', 'BISCUITERIE LE STER CHQ 1006602', 3, '', '167.40'),
(71, '1411941600', 'CEZAM  CHQ 1006605', 3, '', '214.42'),
(72, '1411941600', 'CEZAM CHQ 1006606', 3, '', '86'),
(73, '1412719200', 'ROYAL KIDS  CHQ 1006608', 3, '', '200'),
(74, '1413151200', 'CEZAM CHQ 1006609', 3, '', '26.40'),
(75, '1413410400', 'PARTICIPATION SALARIES  0155572843', 3, '199.4', ''),
(76, '1413410400', 'PARTICIPATION SALARIES  c9165741', 3, '138.05', ''),
(77, '1413410400', 'RETRAIT', 3, '', '200'),
(78, '1413410400', 'PRELV ORANGE  900341', 3, '', '35.48'),
(79, '1413496800', 'PARTICIPATION SALARIES VERS ESPECES 2732468', 3, '104.6', ''),
(80, '1413496800', 'PARTICIPATION SALARIES  REMISE ESPECES 1102140', 3, '137.40', ''),
(81, '1413928800', 'PATISSIER GAILLARD CHQ 1006603', 3, '', '111.06'),
(83, '1414101600', 'CEZAM CHQ 1006610', 3, '', '34'),
(84, '1414101600', 'CADOC CHQ CADEAUX  CHQ1006611', 3, '', '7875'),
(85, '1414101600', 'CEZAM COFFRETS CADEAUX  CHQ 1006612', 3, '', '92'),
(86, '1414101600', 'CEZAM CHQ  1006613', 3, '', '74'),
(87, '1415314800', 'VIR MAXI TOYS  088-2014-0021', 3, '', '598.45'),
(88, '1415314800', 'ALAIN GUY FLEURS CHQ 1006614', 3, '', '80'),
(89, '1415401200', 'FRAIS BANC', 3, '', '5.55'),
(90, '1415919600', 'VRST GUICHET E 2732461', 3, '302.30', ''),
(91, '1415919600', 'SUBVENTION HALIEUTIS', 3, '3271.34', ''),
(92, '1415919600', 'PARTICIPATION SALARIES  C9165742', 3, '192.66', ''),
(93, '1416265200', 'PRELV ORANGE 980110', 3, '', '43.63'),
(94, '1416438000', 'PRADEL CHQ 1006617', 3, '', '24.95'),
(97, '1416956400', 'L HERMINE GOURMANDE CHQ 1006618', 3, '', '420'),
(98, '1417042800', 'BISCUITERIE LE STER CHQ 1006615', 3, '', '42.84'),
(99, '1417129200', 'BISCUITERIE LE STER CHQ  1006616', 3, '', '108.19'),
(100, '1417129200', '?????????????????????????CHQ 1006619', 3, '', '134.5'),
(101, '1416956400', 'TRANSFERT VERS CPT DE FONCTIONNEMENT', 3, '', '1089.14'),
(102, '1417561200', 'MAXI TOYS CHQ 1006622', 3, '', '30.96'),
(103, '1417647600', 'PARTICIPATION SALARIALE C 9165740', 3, '701.29', ''),
(104, '1417647600', 'PARTICIPATION SALARIES', 3, '140.50', ''),
(105, '1417647600', 'PARTICIPATION SALARIES  c1085088', 3, '51', ''),
(107, '1417647600', 'PRADEL CHQ 1006623', 3, '', '74.60'),
(108, '1417647600', 'PARTICIPATION SALARIES ', 3, '560.79', ''),
(109, '1417734000', 'PARTICIPATION SALARIES VERS ESP  E2732464 ', 3, '57.06', ''),
(110, '1417647600', 'PARTICIPATION SALARIES VERS ESPECES E2732466', 3, '98.80', ''),
(111, '1417647600', 'ANN REM 2649420010 CHQ', 3, '', '701.29'),
(112, '1417734000', 'PRADEL CHQ 1006623', 3, '', '43.45'),
(113, '1417734000', 'JEFF DE BRUGES CHQ 1006627', 3, '', '183.16'),
(114, '1417993200', 'CEZAME CHQ 1006625', 3, '', '62.91'),
(115, '1417993200', 'CEZAM CHQ 1006626', 3, '', '96'),
(116, '1418252400', 'ROYAL KIDS SOLDE CHQ 1006628', 3, '', '476'),
(117, '1418338800', 'LECLERC chq 1006629', 3, '', '30.52'),
(118, '1418684400', 'LA FOIRFOUILLE CHQ 1006630', 3, '', '27.46'),
(119, '1418770800', 'SMARTBOX CHQ 1006620', 3, '', '1337.88'),
(120, '1418857200', 'AUBERT CHQ 1006621', 3, '', '65'),
(121, '1418857200', 'LE STER BISCUITERIE CQH 1006635', 3, '', '52.11'),
(122, '1419202800', 'PROMOCASH CHQ 1006634', 3, '', '105.11'),
(123, '1419289200', 'CEZAM CHQ 1006636', 3, '', '67'),
(125, '1419289200', 'LEONIDAS CHQ 1006638', 3, '', '1496.90'),
(126, '1419375600', 'PARTICIPATION SALARIES VERS ESP  1102144', 3, '439', ''),
(127, '1419375600', 'PARTICIPATION SALARIES VERS ESP  1102145', 3, '336.43', ''),
(128, '1419375600', 'LECLERC CHQ 1006637', 3, '', '83.20'),
(129, '1419375600', 'BIJOUX S R D CHQ 1006631', 3, '', '344.10'),
(130, '1419548400', 'GAILLARD PATISSIER CHQ1006633', 3, '', '35.28'),
(131, '1419807600', 'PARTICIPATION SALARIES VERS ESP', 3, '336.44', ''),
(132, '1419807600', 'ANNULATION ECRITURE VERSESPECES 1102145', 3, '', '336.43');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
  `idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compta_bilan_actif`
--

INSERT INTO `compta_bilan_actif` (`idcptbilanactif`, `idcomptaplan`, `montant`) VALUES
(18, 3, '14075.41'),
(19, 8, '3016.84');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_passif` (
  `idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compta_bilan_passif`
--

INSERT INTO `compta_bilan_passif` (`idcptbilanpassif`, `idcomptaplan`, `montant`) VALUES
(9, 28, '17092.25');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compta_caisse`
--

INSERT INTO `compta_caisse` (`idcomptacaisse`, `date_caisse`, `desc_caisse`, `idcomptaplan`, `debit`, `credit`) VALUES
(2, '1413410400', 'RETRAIT ESPECES BQ', 1, '200', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE IF NOT EXISTS `compta_compte` (
  `idcomptacompte` int(13) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `idcomptaplan`, `debit`, `credit`) VALUES
(151, 3, '14075.41', ''),
(152, 8, '3016.84', ''),
(153, 28, '', '17092.25'),
(154, 59, '2.70', ''),
(155, 3, '', '2.70'),
(156, 58, '25.70', ''),
(157, 3, '', '25.70'),
(158, 59, '8.00', ''),
(159, 3, '', '8.00'),
(160, 54, '30.45', ''),
(161, 3, '', '30.45'),
(162, 54, '30.45', ''),
(163, 3, '', '30.45'),
(164, 58, '34.76', ''),
(165, 3, '', '34.76'),
(166, 36, '', '188.13'),
(167, 3, '188.13', ''),
(168, 35, '', '4731'),
(169, 3, '4731', ''),
(170, 36, '', '395.21'),
(171, 3, '395.21', ''),
(172, 58, '14.64', ''),
(173, 3, '', '14.64'),
(174, 40, '75.80', ''),
(175, 3, '', '75.80'),
(176, 40, '420.00', ''),
(177, 3, '', '420.00'),
(178, 40, '167.40', ''),
(179, 3, '', '167.40'),
(180, 50, '214.42', ''),
(181, 3, '', '214.42'),
(182, 50, '86', ''),
(183, 3, '', '86'),
(184, 54, '200', ''),
(185, 3, '', '200'),
(186, 50, '26.40', ''),
(187, 3, '', '26.40'),
(188, 36, '', '199.40'),
(189, 3, '199.4', ''),
(190, 36, '', '138.05'),
(191, 3, '138.05', ''),
(192, 3, '', '200'),
(193, 1, '200', ''),
(194, 58, '35.48', ''),
(195, 3, '', '35.48'),
(196, 36, '', '104.60'),
(197, 3, '104.6', ''),
(198, 36, '', '137.40'),
(199, 3, '137.40', ''),
(200, 40, '111.06', ''),
(202, 50, '34', ''),
(204, 3, '', '34'),
(205, 57, '7875', ''),
(206, 3, '', '7875'),
(207, 57, '92', ''),
(208, 3, '', '92'),
(209, 50, '74', ''),
(210, 3, '', '74'),
(211, 57, '598.45', ''),
(212, 3, '', '598.45'),
(213, 52, '80', ''),
(214, 3, '', '80'),
(215, 59, '5.55', ''),
(216, 3, '', '5.55'),
(217, 36, '', '302.3'),
(218, 3, '302.30', ''),
(219, 35, '', '3271.34'),
(220, 3, '3271.34', ''),
(221, 36, '', '192.66'),
(222, 3, '192.66', ''),
(223, 58, '43.63', ''),
(224, 3, '', '43.63'),
(225, 58, '24.95', ''),
(226, 3, '', '24.95'),
(227, 58, '1089.14', ''),
(230, 40, '420', ''),
(231, 3, '', '420'),
(232, 40, '42.84', ''),
(233, 3, '', '42.84'),
(234, 40, '108.19', ''),
(235, 3, '', '108.19'),
(237, 3, '', '134.5'),
(238, 3, '', '1089.14'),
(240, 3, '', '30.96'),
(241, 0, '', ''),
(242, 36, '', '701.29'),
(243, 3, '701.29', ''),
(244, 36, '', '140.50'),
(245, 3, '140.50', ''),
(246, 36, '', '51'),
(247, 3, '51', ''),
(250, 3, '', '74.60'),
(251, 40, '74.60', ''),
(252, 57, '30.96', ''),
(253, 58, '134.50', ''),
(254, 36, '', '560.79'),
(255, 3, '560.79', ''),
(256, 36, '', '57.06'),
(257, 3, '57.06', ''),
(258, 36, '', '98.80'),
(259, 3, '98.80', ''),
(260, 58, '701.29', ''),
(261, 3, '', '701.29'),
(262, 40, '43.45', ''),
(263, 3, '', '43.45'),
(264, 40, '183.16', ''),
(265, 3, '', '183.16'),
(266, 50, '62.91', ''),
(267, 3, '', '62.91'),
(269, 3, '', '96'),
(270, 57, '476', ''),
(271, 3, '', '476'),
(272, 58, '30.52', ''),
(273, 3, '', '30.52'),
(274, 58, '27.46', ''),
(275, 3, '', '27.46'),
(277, 3, '', '1337.88'),
(278, 57, '65', ''),
(279, 3, '', '65'),
(282, 3, '', '52.11'),
(283, 40, '52.11', ''),
(284, 58, '105.11', ''),
(285, 3, '', '105.11'),
(287, 3, '', '67'),
(288, 50, '96.00', ''),
(289, 50, '67', ''),
(290, 58, '1496.90', ''),
(292, 3, '', '1496.90'),
(293, 36, '', '439'),
(294, 3, '439', ''),
(295, 36, '', '336.43'),
(296, 3, '336.43', ''),
(297, 58, '83.20', ''),
(298, 3, '', '83.20'),
(299, 58, '344.10', ''),
(300, 3, '', '344.10'),
(301, 40, '35.28', ''),
(302, 3, '', '35.28'),
(303, 36, '', '336.44'),
(304, 3, '336.44', ''),
(305, 3, '', '336.43'),
(306, 36, '336.43', ''),
(307, 57, '1337.88', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compta_mvm`
--

INSERT INTO `compta_mvm` (`idcomptamvm`, `date_mvm`, `desc_mvm`, `idcomptaplan`, `debit`, `credit`) VALUES
(57, '1409695200', 'DOMIWEB PRLV 24966', 59, '2.70', ''),
(58, '1409781600', 'PRELV OUEST FRANCE 0565', 58, '25.70', ''),
(59, '1409868000', 'SOUSCRIPTION PARTS SOCIALES', 59, '8.00', ''),
(60, '1409954400', 'PRLV TELEGRAMME 450557', 54, '30.45', ''),
(61, '1409954400', 'PRELV TELEGRAMME 450561', 54, '30.45', ''),
(62, '1410818400', 'PRELV ORANGE 440010', 58, '34.76', ''),
(63, '1411077600', 'REM CHQ  1085086 PARTICIPATION SALARIES', 36, '', '188.13'),
(64, '1411077600', 'SUBVENTION HALIEUTIS 0902001', 35, '', '4731'),
(65, '1411077600', 'PARTICIPATION SALARIES  1085086', 36, '', '395.21'),
(66, '1411423200', 'LA POSTE', 58, '14.64', ''),
(67, '1411423200', 'PRADEL  CHQ 1006604', 40, '75.80', ''),
(68, '1411509600', 'L HERMINE GOURMANDE  CHQ  1006601', 40, '420.00', ''),
(69, '1411682400', 'BISCUITERIE LE STER CHQ 1006602', 40, '167.40', ''),
(70, '1411941600', 'CEZAM CQQ 1006605', 50, '214.42', ''),
(71, '1411941600', 'CEZAM CHQ 1006606', 50, '86', ''),
(72, '1412719200', 'ROYAL KIDS  CHQ 1006608', 54, '200', ''),
(73, '1413151200', 'CEZAM CHQ 1006609', 50, '26.40', ''),
(74, '1413410400', 'PARTICIPATION SALARIES  0155572843', 36, '', '199.40'),
(75, '1413410400', 'PARTICIPATION SALARIES  c9165741', 36, '', '138.05'),
(76, '1413410400', 'PRELV ORANGE  900341', 58, '35.48', ''),
(77, '1413496800', 'PARTICIPATION SALARIES VERS ESPECES', 36, '', '104.60'),
(78, '1413496800', 'PARTICIPATION SALARIES  REMISE ESPECES 1102140', 36, '', '137.40'),
(79, '1413928800', 'PATISSIER GAILLARD CHQ 1006603', 40, '111.06', ''),
(80, '1414101600', 'CEZAM CHQ 1006610', 50, '34', ''),
(81, '1414101600', 'CADOC CHQ CADEAUX  CHQ1006611', 57, '7875', ''),
(82, '1414101600', 'CEZAM COFFRETS CADEAUX  CHQ 1006612', 57, '92', ''),
(83, '1414101600', 'CEZAM CHQ  1006613', 50, '74', ''),
(84, '1415314800', 'VIR MAXI TOYS  088-2014-0021', 57, '598.45', ''),
(85, '1415314800', 'ALAIN GUY FLEURS  CHQ 1006614', 52, '80', ''),
(86, '1415401200', 'FRAIS BANC', 59, '5.55', ''),
(87, '1415919600', 'VRST GUICHET E 2732461', 36, '', '302.3'),
(88, '1415919600', 'SUBVENTION HALIEUTIS 1911001', 35, '', '3271.34'),
(89, '1415919600', 'PARTICIPATION SALARIES  C9165742', 36, '', '192.66'),
(90, '1416265200', 'PRELV ORANGE 980110', 58, '43.63', ''),
(91, '1416438000', 'PRADEL CHQ 1006617', 58, '24.95', ''),
(92, '1416956400', 'TRANSFERT VERS CPT FONCTIONNEMENT', 58, '1089.14', ''),
(93, '1416956400', 'L HERMINE GOURMANDE CHQ 1006618', 40, '420', ''),
(94, '1417042800', 'BISCUITERIE LE STER CHQ 1006615', 40, '42.84', ''),
(95, '1417129200', 'BISCUITERIE LE STER CHQ  1006616', 40, '108.19', ''),
(98, '1417647600', '', 0, '', ''),
(99, '1417647600', 'PARTICIPATION SALARIALE C 9165740', 36, '', '701.29'),
(100, '1417647600', 'PARTICIPATION SALARIES ', 36, '', '140.50'),
(101, '1417647600', 'PARTICIPATION SALARIES  c1085088', 36, '', '51'),
(103, '1417647600', 'PRADEL CHQ 1006623', 40, '74.60', ''),
(104, '1417561200', 'MAXI TOYS CHQ 1006622', 57, '30.96', ''),
(105, '1417129200', 'CHQ 1006619', 58, '134.50', ''),
(106, '1417647600', 'PARTICIPATION SALARIES ', 36, '', '560.79'),
(107, '1417734000', 'PARTICIPATION SALARIES VERS ESP  E2732464 ', 36, '', '57.06'),
(108, '1417734000', 'PARTICIPATION SALARIES VERS ESPECES E2732466', 36, '', '98.80'),
(109, '1417647600', 'ANN REM 2649420010 CHQ', 58, '701.29', ''),
(110, '1417734000', 'PRADEL CHQ 1006624', 40, '43.45', ''),
(111, '1417734000', 'JEFF DE BRUGES CHQ 1006627', 40, '183.16', ''),
(112, '1417993200', 'CEZAM CHQ 1006625', 50, '62.91', ''),
(114, '1418252400', 'ROYAL KIDS SOLDE CHQ 1006628', 57, '476', ''),
(115, '1418338800', 'LECLERC CHQ 1006629', 58, '30.52', ''),
(116, '1418684400', 'LA FOIRFOUILLE CHQ 1006630', 58, '27.46', ''),
(118, '1418857200', 'AUBERT CHQ 1006621', 57, '65', ''),
(121, '1418857200', 'BISCUITERIE LE STER  CHQ 1006635', 40, '52.11', ''),
(122, '1419289200', 'PROMOCASH CHQ 1006634', 58, '105.11', ''),
(124, '1417993200', 'CEZAM CHQ 1006626', 50, '96.00', ''),
(125, '1419289200', 'CEZAM CHQ 1006636', 50, '67', ''),
(126, '1419289200', 'LEONIDAS CHQ 1006638', 58, '1496.90', ''),
(127, '1419375600', 'PARTICIPATION SALARIES VERS ESP  1102144', 36, '', '439'),
(128, '1419375600', 'PARTICIPATION SALARIES VERS ESP  1102145', 36, '', '336.43'),
(129, '1419375600', 'LECLERC CHQ 1006637', 58, '83.20', ''),
(130, '1419548400', 'BIJOUX S R D CHQ 1006631', 58, '344.10', ''),
(131, '1419548400', 'GAILLARD PATISSIER CHQ1006633', 40, '35.28', ''),
(132, '1419807600', 'PARTICIPATION SALARIES VERS ESP', 36, '', '336.44'),
(133, '1419807600', 'PARTICIPATION SALARIES VERS ESP', 36, '336.43', ''),
(134, '1418770800', 'SMARTBOX CHQ 16620', 57, '1337.88', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_plan`
--

CREATE TABLE IF NOT EXISTS `compta_plan` (
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
(34, 3, 'Commission (&agrave; des tiers)', 'Recettes sur Sorties OrganisÃ©es'),
(35, 3, 'Honoraires', 'Subventions des Oeuvres Sociales'),
(36, 3, 'Prestations &agrave; soi-m&ecirc;me', 'Participation des salariÃ©s'),
(37, 3, 'Int&eacute;r&ecirc;t - Produits', 'Recettes Billetterie'),
(38, 3, 'Autre CA 1', 'Participation Entreprise'),
(39, 3, 'Autre CA 2', 'Recettes sur ChÃ¨ques Vacances ANCV'),
(40, 4, 'Achats de Marchandises', 'Achats de Marchandises'),
(41, 4, 'Frais d''Achats', ''),
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
(60, 6, 'Amortissements', ''),
(61, 6, 'Autre Charge d''exploitation 1', ''),
(62, 6, 'Autre Charge d''exploitation 2', ''),
(63, 6, 'Autre Charge d''exploitation 3', ''),
(64, 6, 'Autre Charge d''exploitation 4', ''),
(65, 7, 'Produits des titres', 'Produits Financiers'),
(66, 7, 'Produits d''immeubles', ''),
(67, 7, 'Autre r&eacute;sultat Annexe 1', ''),
(68, 7, 'Autre r&eacute;sultat Annexe 2', ''),
(69, 7, 'Charges d''immeubles', ''),
(70, 7, 'Autre Charge annexe 1', 'Charges FinanciÃ¨res'),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `idcomptaplan`, `debit`, `credit`) VALUES
(57, 59, '2.70', ''),
(58, 58, '25.70', ''),
(59, 59, '8.00', ''),
(60, 54, '30.45', ''),
(61, 54, '30.45', ''),
(62, 58, '34.76', ''),
(63, 36, '', '188.13'),
(64, 35, '', '4731'),
(65, 36, '', '395.21'),
(66, 58, '14.64', ''),
(67, 40, '75.80', ''),
(68, 40, '420.00', ''),
(69, 40, '167.40', ''),
(70, 50, '214.42', ''),
(71, 50, '86', ''),
(72, 54, '200', ''),
(73, 50, '26.40', ''),
(74, 36, '', '199.40'),
(75, 36, '', '138.05'),
(76, 58, '35.48', ''),
(77, 36, '', '104.60'),
(78, 36, '', '137.40'),
(79, 40, '111.06', ''),
(80, 50, '34', ''),
(81, 57, '7875', ''),
(82, 57, '92', ''),
(83, 50, '74', ''),
(84, 57, '598.45', ''),
(85, 52, '80', ''),
(86, 59, '5.55', ''),
(87, 36, '', '302.3'),
(88, 35, '', '3271.34'),
(89, 36, '', '192.66'),
(90, 58, '43.63', ''),
(91, 58, '24.95', ''),
(92, 58, '1089.14', ''),
(93, 40, '420', ''),
(94, 40, '42.84', ''),
(95, 40, '108.19', ''),
(98, 0, '', ''),
(99, 36, '', '701.29'),
(100, 36, '', '140.50'),
(101, 36, '', '51'),
(103, 40, '74.60', ''),
(104, 57, '30.96', ''),
(105, 58, '134.50', ''),
(106, 36, '', '560.79'),
(107, 36, '', '57.06'),
(108, 36, '', '98.80'),
(109, 58, '701.29', ''),
(110, 40, '43.45', ''),
(111, 40, '183.16', ''),
(112, 50, '62.91', ''),
(114, 57, '476', ''),
(115, 58, '30.52', ''),
(116, 58, '27.46', ''),
(118, 57, '65', ''),
(121, 40, '52.11', ''),
(122, 58, '105.11', ''),
(124, 50, '96.00', ''),
(125, 50, '67', ''),
(126, 58, '1496.90', ''),
(127, 36, '', '439'),
(128, 36, '', '336.43'),
(129, 58, '83.20', ''),
(130, 58, '344.10', ''),
(131, 40, '35.28', ''),
(132, 36, '', '336.44'),
(133, 36, '336.43', ''),
(134, 57, '1337.88', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `config_etablissement`
--

INSERT INTO `config_etablissement` (`idetablissement`, `nom_etablissement`, `remise_salarie`, `remise_ayant_droit`, `prefix_achat`, `prefix_vente`, `num_license`, `date_derniere_cloture`, `date_prochaine_cloture`) VALUES
(1, 'COMITE ENTREPRISE HALIEUTIS', '0.30', '0.50', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `maj`
--

CREATE TABLE IF NOT EXISTS `maj` (
  `idmaj` int(13) NOT NULL,
  `version_latest` varchar(255) NOT NULL,
  `build` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `maj`
--

INSERT INTO `maj` (`idmaj`, `version_latest`, `build`) VALUES
(5, '1.3.3', '29315-classic');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
  `iduser` int(13) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass_md5` varchar(255) NOT NULL,
  `groupe` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
  `idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE IF NOT EXISTS `remise_banque_esp` (
  `idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `solde_caisse`
--

INSERT INTO `solde_caisse` (`idsoldecaisse`, `date_mouvement`, `num_mouvement`, `type_mouvement`, `type_solde`, `libelle_mouvement`, `debit`, `credit`, `point_caisse`) VALUES
(148, '03-03-2015', '', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation par EspÃ¨ce.', '', '20', 0),
(149, '03-03-2015', '', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation par EspÃ¨ce.', '', '25', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
