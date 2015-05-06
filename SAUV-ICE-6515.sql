-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Mer 06 Mai 2015 à 11:37
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=308 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE IF NOT EXISTS `remise_banque_esp` (
`idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
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
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=308;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=135;
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
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=150;--
-- Base de données :  `cebarilla`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_passif` (
`idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE IF NOT EXISTS `compta_compte` (
`idcomptacompte` int(13) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

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
(1, 'COMITE D''ENTREPRISE BARILLA MALTERIE', '', '', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE IF NOT EXISTS `famille_prestation` (
`idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_remb_ayant_droit` (
`idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
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
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;--
-- Base de données :  `cecaib`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
(80, 1, '546.77', ''),
(81, 2, '', ''),
(82, 3, '5864.83', '2947.01'),
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
(107, 28, '6827.01', '9208.61'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', ''),
(113, 34, '', ''),
(114, 35, '0', '3880'),
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
(127, 48, '2200', ''),
(128, 49, '', ''),
(129, 50, '', ''),
(130, 51, '171', ''),
(131, 52, '', ''),
(132, 53, '95.98', ''),
(133, 54, '273.04', '0'),
(134, 55, '', ''),
(135, 56, '', ''),
(136, 57, '56.99', '0'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(18, '1389571200', 'PRELV SFR', 3, '', '18.99'),
(19, '1389571200', 'ASSURANCE SFR', 3, '', '3.00'),
(20, '1392249600', 'U TECHNOLOGIE', 3, '', '95.98'),
(21, '1392249600', 'PRELV SFR', 3, '', '19.00'),
(22, '1392249600', 'ASSURANCE SFR', 3, '', '3.00'),
(23, '1394409600', 'ASSURANCE SFR', 3, '', '3.00'),
(24, '1395014400', 'PRELV SFR', 3, '', '19.00'),
(25, '1395273600', 'HOTEL IBIS CE BORDEAUX', 3, '', '171.00'),
(26, '1395792000', 'ASSURANCE MaciF CE +VEHUCULE', 3, '', '261.04'),
(27, '1396310400', 'VIREMENT BANQUE CAISSE', 3, '', '150.00'),
(28, '1396915200', 'HONORAIRES GESTION', 3, '', '2200.00'),
(29, '1397001600', 'ASSURANCE SFR', 3, '', '3.00'),
(30, '1393542000', 'Subvention Fonctionnement', 3, '3880', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `compta_bilan_actif`
--

INSERT INTO `compta_bilan_actif` (`idcptbilanactif`, `idcomptaplan`, `montant`) VALUES
(16, 1, '396.77'),
(17, 3, '1984.83');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_passif` (
`idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `compta_bilan_passif`
--

INSERT INTO `compta_bilan_passif` (`idcptbilanpassif`, `idcomptaplan`, `montant`) VALUES
(6, 28, '2381.60');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `compta_caisse`
--

INSERT INTO `compta_caisse` (`idcomptacaisse`, `date_caisse`, `desc_caisse`, `idcomptaplan`, `debit`, `credit`) VALUES
(1, '1396310400', 'VIREMENT BANQUE CAISSE', 1, '150.00', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE IF NOT EXISTS `compta_compte` (
`idcomptacompte` int(13) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `idcomptaplan`, `debit`, `credit`) VALUES
(56, 1, '396.77', ''),
(57, 3, '1984.83', ''),
(58, 28, '', '2381.60'),
(59, 57, '18.99', ''),
(60, 3, '', '18.99'),
(62, 54, '3.00', ''),
(63, 3, '', '3.00'),
(64, 53, '95.98', ''),
(65, 3, '', '95.98'),
(67, 3, '', '19.00'),
(68, 54, '3.00', ''),
(69, 3, '', '3.00'),
(70, 54, '3.00', ''),
(71, 3, '', '3.00'),
(76, 57, '19.00', ''),
(77, 3, '', '19.00'),
(78, 51, '171.00', ''),
(79, 3, '', '171.00'),
(80, 54, '261.04', ''),
(81, 3, '', '261.04'),
(82, 3, '', '150.00'),
(83, 1, '150.00', ''),
(84, 48, '2200.00', ''),
(85, 3, '', '2200.00'),
(86, 54, '3.00', ''),
(87, 3, '', '3.00'),
(90, 35, '', '3880'),
(91, 3, '3880', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Contenu de la table `compta_mvm`
--

INSERT INTO `compta_mvm` (`idcomptamvm`, `date_mvm`, `desc_mvm`, `idcomptaplan`, `debit`, `credit`) VALUES
(18, '1389571200', 'PREL SFR', 57, '18.99', ''),
(20, '1389571200', 'ASSURANCE SFR', 54, '3.00', ''),
(21, '1392249600', 'U TECHNOLOGIE Chq 0879895', 53, '95.98', ''),
(22, '1392249600', 'PRELV SFR', 57, '19.00', ''),
(23, '1392249600', 'ASSURANCE SFR', 54, '3.00', ''),
(24, '1394409600', 'ASSURANCE SFR', 54, '3.00', ''),
(29, '1395014400', 'PRELV sFR ', 57, '19.00', ''),
(30, '1395273600', 'HOTEL IBIS CE BORDEAUX chq 0879896', 51, '171.00', ''),
(31, '1395964800', 'ASSURANCE MACIF CE et VEHICULE', 54, '261.04', ''),
(32, '1396915200', 'HONORAIRES GESTION Chq 0879897', 48, '2200.00', ''),
(33, '1397001600', 'ASSURANCE SFR', 54, '3.00', ''),
(37, '1393542000', 'Subvention Fonctionnement', 35, '', '3880');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `idcomptaplan`, `debit`, `credit`) VALUES
(18, 57, '18.99', ''),
(20, 54, '3.00', ''),
(21, 53, '95.98', ''),
(23, 54, '3.00', ''),
(24, 54, '3.00', ''),
(29, 57, '19.00', ''),
(30, 51, '171.00', ''),
(31, 54, '261.04', ''),
(32, 48, '2200.00', ''),
(33, 54, '3.00', ''),
(36, 35, '', '3880');

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
(1, 'COMITE D''ENTREPRISE CAIB', '', '', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE IF NOT EXISTS `famille_prestation` (
`idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_remb_ayant_droit` (
`idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
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
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;--
-- Base de données :  `ceclassic`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

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
(82, 70, 'MOCKELYN', 'Pascal', '30-06-2010'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=356 ;

--
-- Contenu de la table `bilan`
--

INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(353, 2, 'Vente de Billetterie: MOCKELYN Maxime pour la prestation LE PALACE', '', '5', '80399973'),
(354, 2, 'Vente de Billetterie: MOCKELYN Lucie pour la prestation PARC ASTERIX', '', '20', ''),
(355, 2, 'Vente de Billetterie: DURAND Patrick pour la prestation PARC ASTERIX', '', '20', '80013316');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Contenu de la table `billet_ayant_droit`
--

INSERT INTO `billet_ayant_droit` (`idbilletayantdroit`, `idayantdroit`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_facture`) VALUES
(67, 83, '04-03-2015', 3, '20', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=146 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`) VALUES
(144, 70, '01-03-2015', 3, '5', 1),
(145, 71, '01-05-2015', 3, '20', 1);

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

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
(82, 3, '36505.18', '33815.7'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '', ''),
(87, 8, '14106.01', '8000'),
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
(107, 28, '68281.84', '84426.89'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', ''),
(113, 34, '', ''),
(114, 35, '0', '19402'),
(115, 36, '', '6936.79'),
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
(129, 50, '3165.6', ''),
(130, 51, '', ''),
(131, 52, '166.5', ''),
(132, 53, '', ''),
(133, 54, '', ''),
(134, 55, '16680', ''),
(135, 56, '5095', ''),
(136, 57, '8380', ''),
(137, 58, '312.25', '0'),
(138, 59, '16.35', '16.35'),
(139, 60, '', ''),
(140, 61, '', ''),
(141, 62, '', ''),
(142, 63, '', ''),
(143, 64, '', ''),
(144, 65, '', '111'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(12, '1391554800', 'HYPER U CHALLANS  BONS D ACHATS ENFANTS CHQ 0917043', 3, '', '820'),
(13, '1393282800', 'HYPER U CHALLANS BONS D ACHATS ADULTES CHQ NÂ°0917045', 3, '', '4275'),
(15, '1393542000', 'SUBVENTION ASC', 3, '19402', ''),
(17, '1394492400', 'FOURNISSEUR PRADEL CHQ 0917046', 3, '', '22.95'),
(18, '1396908000', 'SOMMELLIERS DE FRANCE 0917047', 3, '', '1700'),
(19, '1396908000', 'MURMURE DE FLEURS 0917048', 3, '', '60'),
(20, '1398117600', 'ACC CINEMARINE', 3, '', '280'),
(21, '1398117600', 'ACC CINEMARINE 0917051', 3, '', '280'),
(22, '1398204000', 'CINEMA LE CLUB', 3, '', '145'),
(23, '1398376800', 'PARTICIPATION SALARIES ref 39049R08', 3, '167.20', ''),
(24, '1398808800', 'FOURNISSEUR PRADEL 0917052', 3, '', '54.85'),
(25, '1400536800', 'PARTICIPATION Ref 39049R08', 3, '130.20', ''),
(26, '1400623200', 'ACC MARINE 0917053', 3, '', '280'),
(27, '1401228000', 'KOMITE  PLUS 1123981', 3, '', '765'),
(28, '1402005600', 'PARTICIPATION SALARIES ref 39049R08', 3, '93', ''),
(29, '1402005600', 'PARTICIPATION SALARIES ref 39049R08', 3, '91.40', ''),
(30, '1402956000', 'CINEMA LE CLUB', 3, '', '145'),
(31, '1403128800', 'ACC CINEMARINE 1123982', 3, '', '280'),
(32, '1403215200', 'PARTICIPATION SALARIES  N661699', 3, '93', ''),
(33, '1404943200', 'MURMURE DE FLEURS', 3, '', '50'),
(34, '1407362400', 'ACC CINEMARINE 1123985', 3, '', '285.60'),
(36, '1407448800', 'PARTICIPATION SALARIES N6631701', 3, '91', ''),
(37, '1407448800', 'PARTICIPATION SALARIES N6631700', 3, '93', ''),
(38, '1409176800', 'ACC CINEMARINE 1123986', 3, '', '280'),
(39, '1409695200', 'MURMURE DE FLEURS 1123987', 3, '', '56.50'),
(41, '1410300000', 'PARTICIPATION SALARIES N 6631702', 3, '91', ''),
(42, '1411596000', 'ACC CINEMARINE 1123989', 3, '', '280'),
(43, '1412287200', 'PRADEL FOURNISSEUR 1123988', 3, '', '234.45'),
(44, '1412892000', 'CINEMA LE CLUB 1123990', 3, '', '145'),
(47, '1415142000', 'CHEQUES CADEAUX LA POSTE  1123991', 3, '', '2539'),
(48, '1415660400', 'ANCV CHEQUES VACANCES 1123992', 3, '', '16680'),
(49, '1415660400', 'FRAIS COMMISSION D intervention', 3, '', '16.35'),
(50, '1416265200', 'VIREMENT LIVRET BANQUE', 3, '2000', ''),
(51, '1416265200', 'RETRO FRAIS COMMISSION D INTERVENTION', 3, '16.35', ''),
(52, '1416524400', 'PARTICIPATION SALARIES N2083487', 3, '94', ''),
(53, '1416524400', 'PARTICIPATION SALARIES  N2083485', 3, '90.20', ''),
(54, '1416524400', 'PARTICIPATION SALARIES N2083486', 3, '86.40', ''),
(56, '1419030000', 'VIREMENT LIVRET BANQUE', 3, '6000', ''),
(57, '1419894000', 'CONFRERIE DES GOURMETS 1123993', 3, '', '4141');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `compta_bilan_actif`
--

INSERT INTO `compta_bilan_actif` (`idcptbilanactif`, `idcomptaplan`, `montant`) VALUES
(16, 3, '7966.43'),
(17, 8, '8178.62');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_passif` (
`idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `compta_bilan_passif`
--

INSERT INTO `compta_bilan_passif` (`idcptbilanpassif`, `idcomptaplan`, `montant`) VALUES
(8, 28, '16145.05');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE IF NOT EXISTS `compta_compte` (
`idcomptacompte` int(13) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=151 ;

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `idcomptaplan`, `debit`, `credit`) VALUES
(47, 3, '7966.43', ''),
(48, 8, '8178.62', ''),
(49, 28, '', '16145.05'),
(50, 56, '820', ''),
(51, 3, '', '820'),
(52, 56, '4275', ''),
(53, 3, '', '4275'),
(56, 35, '', '19402'),
(57, 3, '19402', ''),
(60, 3, '', '22.95'),
(61, 58, '22.95', ''),
(62, 57, '1700', ''),
(63, 3, '', '1700'),
(64, 52, '60', ''),
(65, 3, '', '60'),
(66, 50, '280', ''),
(67, 3, '', '280'),
(68, 50, '280', ''),
(69, 3, '', '280'),
(70, 50, '145', ''),
(71, 3, '', '145'),
(72, 36, '', '167.20'),
(73, 3, '167.20', ''),
(74, 58, '54.85', ''),
(75, 3, '', '54.85'),
(76, 36, '', '130.20'),
(77, 3, '130.20', ''),
(78, 50, '280', ''),
(79, 3, '', '280'),
(80, 50, '765', ''),
(81, 3, '', '765'),
(82, 36, '', '1106'),
(84, 36, '', '93'),
(85, 3, '93', ''),
(86, 36, '', '91.40'),
(87, 3, '91.40', ''),
(88, 50, '145', ''),
(89, 3, '', '145'),
(90, 50, '280', ''),
(91, 3, '', '280'),
(92, 36, '', '93'),
(93, 3, '93', ''),
(94, 36, '', '1106'),
(96, 52, '50', ''),
(97, 3, '', '50'),
(98, 50, '285.60', ''),
(99, 3, '', '285.60'),
(100, 36, '', '91'),
(102, 3, '91', ''),
(103, 36, '', '93'),
(104, 3, '93', ''),
(105, 50, '280', ''),
(106, 3, '', '280'),
(107, 36, '', '1106'),
(109, 52, '56.50', ''),
(110, 3, '', '56.50'),
(111, 36, '', '91'),
(113, 3, '91', ''),
(114, 50, '280', ''),
(115, 3, '', '280'),
(116, 36, '', '1106'),
(118, 58, '234.45', ''),
(119, 3, '', '234.45'),
(120, 50, '145', ''),
(121, 3, '', '145'),
(122, 36, '', '1106'),
(125, 57, '2539', ''),
(126, 3, '', '2539'),
(127, 55, '16680', ''),
(128, 3, '', '16680'),
(129, 59, '16.35', ''),
(130, 3, '', '16.35'),
(131, 8, '', '2000'),
(132, 3, '2000', ''),
(133, 59, '', '16.35'),
(134, 3, '16.35', ''),
(135, 36, '', '94'),
(136, 3, '94', ''),
(137, 36, '', '90.20'),
(138, 3, '90.20', ''),
(139, 36, '', '86.40'),
(140, 3, '86.40', ''),
(142, 3, '6000', ''),
(143, 8, '', '6000'),
(144, 57, '4141', ''),
(145, 3, '', '4141'),
(146, 36, '', '286.39'),
(147, 8, '286.39', ''),
(148, 65, '', '111'),
(149, 8, '111', ''),
(150, 8, '1106', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `compta_livret`
--

INSERT INTO `compta_livret` (`idcomptalivret`, `date_livret`, `desc_livret`, `idcomptaplan`, `debit`, `credit`) VALUES
(3, '1400536800', 'PARTICIPATION SALARIES re', 8, '1106', ''),
(4, '1403215200', 'PARTICIPATION SALARIES  N', 8, '1106', ''),
(5, '1407448800', 'PARTICIPATION SALARIES N0', 8, '1106', ''),
(6, '1410300000', 'PARTICIPATION SALARIES  N', 8, '1106', ''),
(7, '1416265200', 'VIREMENT LIVRET BANQUE', 8, '', '2000'),
(8, '1419030000', 'VIREMENT LIVRET BANQUE', 8, '', '6000'),
(9, '1419030000', 'PARTICIPATION SALARIES N0', 8, '286.39', ''),
(10, '1419980400', 'INTERETS 2014', 8, '111', ''),
(11, '1412287200', 'PARTICIPATION SALARIE N 0', 8, '1106', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Contenu de la table `compta_mvm`
--

INSERT INTO `compta_mvm` (`idcomptamvm`, `date_mvm`, `desc_mvm`, `idcomptaplan`, `debit`, `credit`) VALUES
(11, '1391554800', 'HYPER U CHALLANS BONS D ACHATS ENFANTS CHQ NÂ°0917043', 56, '820', ''),
(12, '1393282800', 'HYPER U CHALLANS BONS D ACHATS ADULTES CHQ NÂ° 0917045', 56, '4275', ''),
(14, '1393542000', 'SUBVENTION ASC', 35, '', '19402'),
(16, '1394492400', 'FOURNISSEUR PRADEL 0917046', 58, '22.95', ''),
(17, '1396908000', 'SOMMELLERIE DE FRANCE 0917047', 57, '1700', ''),
(18, '1396908000', 'MURMURE DE FLEURS 0917048', 52, '60', ''),
(19, '1398117600', 'ACC CINEMARINE 0917049', 50, '280', ''),
(20, '1398117600', 'ACC CINEMARINE 0917051', 50, '280', ''),
(21, '1398376800', 'CINEMA LE CLUB 0917050', 50, '145', ''),
(22, '1398376800', 'PARTICIPATION SALARIES  ref 39049R08', 36, '', '167.20'),
(23, '1398808800', 'FOURNISSEUR PRADEL 0917052', 58, '54.85', ''),
(24, '1400536800', 'PARTICIPATION DES SALARIES ref390449R08', 36, '', '130.20'),
(25, '1400623200', 'ACC CINEMARINE 0917053', 50, '280', ''),
(26, '1401228000', 'KOMITE PLUS 1123981', 50, '765', ''),
(27, '1400536800', 'PARTICIPATION SALARIES ref39049R08', 36, '', '1106'),
(28, '1402005600', 'PARTICIPATION SALARIES ref39049R08', 36, '', '93'),
(29, '1402005600', 'PARTICIPATION SALARIES ref 39049R08', 36, '', '91.40'),
(30, '1402956000', 'CINEMA LE CLUB 1123983', 50, '145', ''),
(31, '1403128800', 'ACC MARINE 1123982', 50, '280', ''),
(32, '1403215200', 'PARTICIPATION SALARIES  N6631699', 36, '', '93'),
(33, '1403215200', 'PARTICIPATION SALARIES', 36, '', '1106'),
(34, '1404943200', 'MURMURE DE FLEURS chq 1123984', 52, '50', ''),
(35, '1407362400', 'ACC CINEMARINE 1123985', 50, '285.60', ''),
(36, '1407448800', 'PARTICIPATION SALARIES  N6631701', 36, '', '91'),
(37, '1407448800', 'PARTICIPATION DES SALARIES N66311700', 36, '', '93'),
(38, '1409176800', 'ACC CINEMARINE 1123986', 50, '280', ''),
(39, '1407448800', 'PARTICIPATION SALARIES  N0588001', 36, '', '1106'),
(40, '1409695200', 'MURMURE DE FLEURS 1123987', 52, '56.50', ''),
(41, '1410300000', 'PARTICIPATION SALARIES N6631702', 36, '', '91'),
(42, '1411596000', 'ACC CINEMARINE', 50, '280', ''),
(43, '1410300000', 'PARTICIPATION SALARIES  N 0588003', 36, '', '1106'),
(44, '1412287200', 'PRADEL FOURNISSEUR 1123988', 58, '234.45', ''),
(45, '1412892000', 'CINEMA LE CLUB 1123990', 50, '145', ''),
(46, '1412287200', 'PARTICIPATION SALARIES N0588002', 36, '', '1106'),
(47, '1415142000', 'LA POSTE CHQ CADEAUX 1123991', 57, '2539', ''),
(48, '1415660400', 'ANCV Cheques Vacances 1123992', 55, '16680', ''),
(49, '1415660400', 'frais commission intervention', 59, '16.35', ''),
(50, '1416265200', 'RETRO COMMISSION D intervention', 59, '', '16.35'),
(51, '1416524400', 'PARTICIPATION SALARIES N2083387', 36, '', '94'),
(52, '1416524400', 'PARTICIPATION SALARIES N2083485', 36, '', '90.20'),
(53, '1416524400', 'PARTICIPATION SALARIES N2083486', 36, '', '86.40'),
(54, '1419894000', 'CONFRERIE DES GOURMETS 1123993', 57, '4141', ''),
(55, '1419030000', 'PARTICIPATION SALARIES n0588004', 36, '', '286.39'),
(56, '1419980400', 'INTERETS 2014', 65, '', '111');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `idcomptaplan`, `debit`, `credit`) VALUES
(11, 56, '820', ''),
(12, 56, '4275', ''),
(14, 35, '', '19402'),
(16, 58, '22.95', ''),
(17, 57, '1700', ''),
(18, 52, '60', ''),
(19, 50, '280', ''),
(20, 50, '280', ''),
(21, 50, '145', ''),
(22, 36, '', '167.20'),
(23, 58, '54.85', ''),
(24, 36, '', '130.20'),
(25, 50, '280', ''),
(26, 50, '765', ''),
(27, 36, '', '1106'),
(28, 36, '', '93'),
(29, 36, '', '91.40'),
(30, 50, '145', ''),
(31, 50, '280', ''),
(32, 36, '', '93'),
(33, 36, '', '1106'),
(34, 52, '50', ''),
(35, 50, '285.60', ''),
(36, 36, '', '91'),
(37, 36, '', '93'),
(38, 50, '280', ''),
(39, 36, '', '1106'),
(40, 52, '56.50', ''),
(41, 36, '', '91'),
(42, 50, '280', ''),
(43, 36, '', '1106'),
(44, 58, '234.45', ''),
(45, 50, '145', ''),
(46, 36, '', '1106'),
(47, 57, '2539', ''),
(48, 55, '16680', ''),
(49, 59, '16.35', ''),
(50, 59, '', '16.35'),
(51, 36, '', '94'),
(52, 36, '', '90.20'),
(53, 36, '', '86.40'),
(54, 57, '4141', ''),
(55, 36, '', '286.39'),
(56, 65, '', '111');

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
(1, 'COMITE ENTREPRISE COUTHOUIS', '0.30', '0.50', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '31-12-2013', '31-12-2014');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=356 ;

--
-- Contenu de la table `cpt_resultat`
--

INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(353, '80399973', '1425164400', 'Vente de Billetterie: MOCKELYN Maxime pour la prestation LE PALACE', '', '5'),
(354, '2955946', '1425423600', 'Vente de Billetterie: MOCKELYN Lucie pour la prestation PARC ASTERIX', '', '20'),
(355, '80013316', '1430431200', 'Vente de Billetterie: DURAND Patrick pour la prestation PARC ASTERIX', '', '20');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Contenu de la table `ligne_billet_ayant_droit`
--

INSERT INTO `ligne_billet_ayant_droit` (`idlignebilletayantdroit`, `idbilletayantdroit`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(77, 67, 68, '1', '20', '10', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=162 ;

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(160, 144, 67, '1', '5', '2', 0),
(161, 145, 68, '1', '20', '10', 0);

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
(5, '1.3.0', '15315-classic');

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
(67, 42, 'LE PALACE', '01-01-2015', '31-12-2015', '5', '2', '7', '100', '93', 0),
(68, 43, 'PARC ASTERIX', '01-02-2015', '31-12-2015', '20', '10', '30', '2', '97', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Contenu de la table `reg_billet_ayant_droit`
--

INSERT INTO `reg_billet_ayant_droit` (`idregbilletayantdroit`, `idbilletayantdroit`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(70, 67, 3, '20', '', 'MOCKELYN', '794401353', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=112 ;

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(110, 144, 3, '5', '', 'MOCKELYN', '487903751', 0),
(111, 145, 1, '20', 'BANQUE POSTAL', 'MOCKELYN', '24584', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE IF NOT EXISTS `remise_banque_esp` (
`idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`) VALUES
(70, '', 1, 'MOCKELYN', 'Maxime', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1),
(71, '00521545', 1, 'DURAND', 'Patrick', '10 rue de la nouvelle ville', '', '85100', 'Les Sables d''Olonne', '02.51.23.24.24', '06.33.13.43.30', 'd.patrick@domain.ltd', '26-11-1970', '16-03-2011', '', '1', 'Comptabilite', '125', 'No comment', 'CDI', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=220 ;

--
-- Contenu de la table `solde_caisse`
--

INSERT INTO `solde_caisse` (`idsoldecaisse`, `date_mouvement`, `num_mouvement`, `type_mouvement`, `type_solde`, `libelle_mouvement`, `debit`, `credit`, `point_caisse`) VALUES
(216, '20-03-2015', '487903751', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MOCKELYN.', '', '5', 0),
(218, '20-03-2015', '794401353', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MOCKELYN.', '', '20', 0),
(219, '06-05-2015', '24584', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOCKELYN.', '', '20', 0);

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=356;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=356;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=162;
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
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=220;--
-- Base de données :  `cecouthouis`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `bilan`
--

INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(30, 2, 'Vente de Billetterie: THOMAS D pour la prestation PARTICIPATION SALARIE SUR DACC49', '', '25', '90213134'),
(31, 1, 'Ajout de la charge Fixe: cezam', '3000', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`) VALUES
(15, 68, '15-04-2015', 3, '25', 0);

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `charge_fixe`
--

INSERT INTO `charge_fixe` (`idchargefixe`, `designation`, `date_charge_fixe`, `montant_charge`) VALUES
(2, 'cezam', '', '3000');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_passif` (
`idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE IF NOT EXISTS `compta_compte` (
`idcomptacompte` int(13) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

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
(1, 'COMITE D''ENTREPRISE COUTHOUIS', '', '', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `cpt_resultat`
--

INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(30, '90213134', '1429048800', 'Vente de Billetterie: THOMAS D pour la prestation PARTICIPATION SALARIE SUR DACC49', '', '25'),
(31, '', '', 'cezam', '3000', '');

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
(44, 'CEZAM');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(14, 15, 62, '2.5', '25', '0', 0);

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
(5, '1.6.4', '29315-PREM');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`) VALUES
(62, 44, 'PARTICIPATION SALARIE SUR DACC49', '01-01-2015', '30-04-2015', '10', '0', '10', '1000', '997.5', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_remb_ayant_droit` (
`idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`, `solde_salarie`) VALUES
(68, '', 1, 'THOMAS', 'D', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
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
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;--
-- Base de données :  `cecsl`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Contenu de la table `achat_presta`
--

INSERT INTO `achat_presta` (`idachatpresta`, `date_achat`, `idprestation`, `qte`, `total_achat`) VALUES
(8, '28-01-2015', 71, '100', '760'),
(9, '28-01-2015', 80, '2', '78'),
(10, '30-01-2015', 81, '1', '37'),
(11, '30-01-2015', 82, '8', '39.6'),
(13, '30-01-2015', 71, '75', '570'),
(14, '07-01-2015', 78, '24', '51.6'),
(16, '08-01-2015', 71, '25', '185'),
(17, '08-03-2015', 73, '6', '222'),
(18, '14-01-2015', 75, '2', '138'),
(22, '11-02-2015', 84, '1', '17.5'),
(23, '11-02-2015', 85, '2', '47'),
(24, '17-02-2015', 71, '50', '380'),
(25, '13-02-2015', 71, '50', '380'),
(29, '13-02-2015', 90, '20', '244'),
(30, '19-02-2015', 90, '20', '244'),
(31, '26-02-2015', 0, '20', '0'),
(32, '26-02-2015', 90, '20', '244'),
(33, '10-03-2015', 71, '75', '570'),
(34, '23-02-2015', 75, '2', '138'),
(35, '24-02-2015', 88, '2', '12'),
(36, '24-02-2015', 89, '2', '134'),
(37, '10-03-2015', 71, '75', '570'),
(38, '10-03-2015', 79, '14', '51.1'),
(39, '10-03-2015', 78, '24', '51.6'),
(41, '19-03-2015', 92, '3', '53.4'),
(43, '19-03-2015', 91, '3', '34.5'),
(44, '08-01-2015', 93, '25', '185'),
(45, '08-01-2015', 98, '6', '222'),
(46, '14-01-2015', 100, '2', '138'),
(47, '30-01-2015', 101, '1', '37'),
(48, '30-01-2015', 102, '8', '39.6'),
(49, '30-01-2015', 93, '75', '555'),
(50, '06-01-2015', 103, '24', '51.6'),
(51, '28-01-2015', 93, '100', '740'),
(52, '28-01-2015', 104, '2', '78'),
(53, '11-02-2015', 105, '2', '47'),
(54, '11-02-2015', 106, '1', '17.5'),
(55, '17-02-2015', 93, '50', '370'),
(56, '13-02-2015', 93, '50', '370'),
(57, '23-02-2015', 100, '2', '138'),
(58, '24-02-2015', 107, '2', '12'),
(59, '24-02-2015', 108, '2', '134'),
(60, '13-02-2015', 109, '20', '244'),
(61, '26-02-2015', 109, '20', '244'),
(62, '19-02-2015', 109, '20', '244'),
(63, '09-02-2015', 110, '1', '130'),
(64, '19-01-2015', 111, '30', '360'),
(66, '19-01-2015', 113, '15', '90');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=222 ;

--
-- Contenu de la table `ayant_droit`
--

INSERT INTO `ayant_droit` (`idayantdroit`, `idsalarie`, `nom_ayant_droit`, `prenom_ayant_droit`, `date_naissance_ayant_droit`) VALUES
(80, 3, 'AMARA', 'Nadia', ''),
(81, 3, 'AMARA', 'Meline', ''),
(82, 15, 'BINOT', 'Jules', ''),
(83, 16, 'BIZMAOUI PAPIN', 'Lony', ''),
(84, 16, 'BIZMAOUI PAPIN', 'Levy', ''),
(85, 21, 'BONARDE', 'Flora', ''),
(86, 21, 'BONARDE', 'Marie', ''),
(87, 26, 'BOURGAUD', 'Killian', ''),
(88, 26, 'BOURGAUD', 'Emma', ''),
(89, 26, 'BOURGAUD', 'Alix', ''),
(90, 31, 'BRISSY', 'Margot', ''),
(91, 37, 'CHAILLAND', 'Adele', ''),
(92, 37, 'CHAILLAND', 'Solene', ''),
(93, 37, 'CHAILLAND', 'Nais', ''),
(94, 38, 'CHAILLOUX', 'Maruis', ''),
(95, 38, 'CHAILLOUX', 'Capucine', ''),
(96, 41, 'CHARRIER', 'Ilona', ''),
(97, 41, 'CHARRIER', 'Emma', ''),
(98, 44, 'CH?TEAU', 'Leo', ''),
(99, 44, 'CH?TEAU', 'Kelia', ''),
(100, 50, 'COCHIN', 'Vincent', ''),
(101, 50, 'COCHIN', 'Benoit', ''),
(102, 52, 'COLAISSEAU', 'Alice', ''),
(103, 52, 'COLAISSEAU', 'Paul', ''),
(104, 58, 'DAVY', 'Baptiste', ''),
(105, 61, 'DELEMME', 'Noah', ''),
(106, 61, 'DELEMME', 'Hugo', ''),
(107, 63, 'DENECHERE', 'Thomas', ''),
(108, 63, 'DENECHERE', 'Rose', ''),
(109, 66, 'DEVAUD', 'Heloise', ''),
(110, 67, 'DIJOLS', 'Eden', ''),
(111, 68, 'DOISNEAU', 'Enzo', ''),
(112, 70, 'DOUET', 'Noah', ''),
(113, 71, 'DUPAS', 'Louise', ''),
(114, 72, 'DURAND CHATTON', 'Morgan', ''),
(115, 73, 'ELOBO', 'Simane', ''),
(116, 82, 'GASTINEAU', 'Jordan', ''),
(117, 82, 'GASTINEAU', 'Charline', ''),
(118, 82, 'GASTINEAU', 'Marie', ''),
(119, 85, 'GERARD', 'Lorinne', ''),
(120, 85, 'GERARD', 'Maxence', ''),
(121, 86, 'GESLIN', 'Melanie', ''),
(122, 86, 'GESLIN', 'Pauline', ''),
(123, 90, 'GAUDIN', 'Flavian', ''),
(124, 92, 'GOURMAUD', 'Clarence', ''),
(125, 95, 'GUEGAN', 'Matteo', ''),
(126, 95, 'GUEGAN', 'Lizea', ''),
(127, 101, 'GAUZI', 'Mahe', ''),
(128, 101, 'GAUZI', 'Liam', ''),
(129, 105, 'HUAU', 'Raphael', ''),
(130, 108, 'JAMOTEAU', 'Eliott', ''),
(131, 109, 'JARRY-FAURANT', 'Maxime', ''),
(132, 109, 'JARRY-FAURANT', 'Pauline', ''),
(133, 113, 'RINGUET', 'Ophelie', ''),
(134, 114, 'JOURNIAC', 'Angelique', ''),
(135, 114, 'JOURNIAC', 'Leandre', ''),
(136, 114, 'JOURNIAC', 'Rose', ''),
(137, 116, 'JURET', 'Lili-Rose', ''),
(138, 116, 'JURET', 'Angele', ''),
(139, 118, 'LAMY', 'Anthonin', ''),
(140, 118, 'LAMY', 'Albin', ''),
(141, 119, 'LANNIER', 'Enzo', ''),
(142, 119, 'LANNIER', 'Zoe', ''),
(143, 119, 'LANNIER', 'Erwan', ''),
(144, 121, 'LASNE', 'Aurelien', ''),
(145, 121, 'LASNE', 'Titouan', ''),
(146, 122, 'LATONNELLE', 'Thomas', ''),
(147, 122, 'LATONNELLE', 'Lea', ''),
(148, 123, 'LE BORGNE', 'Basile', ''),
(149, 127, 'LE JEAN', 'Florian', ''),
(150, 127, 'LE JEAN', 'Gabriel', ''),
(151, 128, 'LEBAILLY', 'Louise', ''),
(152, 129, 'LEBLANC', 'Louis', ''),
(153, 129, 'LEBLANC', 'Jean', ''),
(154, 129, 'LEBLANC', 'Jules', ''),
(155, 131, 'LECOMTE', 'Ninon', ''),
(156, 131, 'LECOMTE', 'Elian', ''),
(157, 133, 'LELIEVRE', 'Romain', ''),
(158, 133, 'LELIEVRE', 'Mathis', ''),
(159, 134, 'LENOGUE', 'Hugot', ''),
(160, 135, 'LESAGE', 'Stella', ''),
(161, 136, 'LOISEL', 'Noeline', ''),
(162, 139, 'LORINQUER', 'Lilou', ''),
(163, 139, 'LORINQUER', 'Nathael', ''),
(164, 139, 'LORINQUER', 'Lorys', ''),
(165, 144, 'MAUDET', 'Louis', ''),
(166, 147, 'MEIGNAN', 'Yaelle', ''),
(167, 150, 'MENDONCA', 'Aurelie', ''),
(168, 150, 'MENDONCA', 'Caroline', ''),
(169, 151, 'MERCEREAU', 'Romain', ''),
(170, 151, 'MERCEREAU', 'Jeanne', ''),
(171, 151, 'MERCEREAU', 'Claire', ''),
(172, 152, 'MERIAN', 'Martin', ''),
(173, 152, 'MERIAN', 'Louisa', ''),
(174, 159, 'OLIVEIRA', 'Mathis', ''),
(175, 159, 'OLIVEIRA', 'Timeo', ''),
(176, 161, 'PATAO', 'Neo', ''),
(177, 161, 'PATAO', 'Nina', ''),
(178, 161, 'PATAO', 'Laly', ''),
(179, 163, 'PERDIAU', 'Nicolas', ''),
(180, 166, 'PICHERIE', 'Arthur', ''),
(181, 166, 'PICHERIE', 'Nathan', ''),
(182, 166, 'PICHERIE', 'Oriane', ''),
(183, 173, 'PRIOU', 'Maxime', ''),
(184, 173, 'PRIOU', 'Enzo', ''),
(185, 179, 'REVERAULT', 'Antoine', ''),
(186, 179, 'REVERAULT', 'Lucas', ''),
(187, 182, 'RIPOCHE', 'Corentin', ''),
(188, 182, 'RIPOCHE', 'Noah', ''),
(189, 187, 'ROYER', 'Julien', ''),
(190, 195, 'SOULET', 'Mahe', ''),
(191, 195, 'SOULET', 'Nino', ''),
(192, 196, 'SOURISSEAU', 'Maela', ''),
(193, 196, 'SOURISSEAU', 'Gabriel', ''),
(194, 202, 'TESSIER', 'Alice', ''),
(195, 202, 'TESSIER', 'Clement', ''),
(196, 202, 'TESSIER', 'Mathieu', ''),
(197, 204, 'TIERCELIN', 'Enya', ''),
(198, 204, 'TIERCELIN', 'Terry', ''),
(199, 204, 'TIERCELIN', 'Rose', ''),
(200, 205, 'TORREGROSSA', 'Chloe', ''),
(201, 210, 'VIGAN', 'Corentin', ''),
(202, 210, 'VIGAN', 'Florian', ''),
(203, 210, 'VIGAN', 'Bastien', ''),
(204, 210, 'VIGAN', 'Zoe', ''),
(205, 212, 'VIVION', 'Eloise', ''),
(206, 213, 'YEKULI', 'Leo', ''),
(208, 185, 'ROUSSE (MARYVONNE)', '', ''),
(209, 25, 'BOULAY ( JENNIFER)', '', ''),
(210, 22, 'BORE ( M.PIERRE)', '', ''),
(211, 48, 'CIBRON', 'SOPHIE', ''),
(212, 198, 'TAUDON (CHRISTINE)', '', ''),
(213, 42, 'CHARRIER (ELENA)', '', ''),
(214, 24, 'BOUET (ANNETTE)', '', ''),
(215, 127, 'LE JEAN ', 'CELINE', ''),
(218, 6, 'BAILLY', 'SONIA', ''),
(219, 6, 'BAILLY', 'CHRISTIAN', ''),
(220, 158, 'LASALLE ', 'TANGUY', ''),
(221, 207, 'TREMBLAIS', '(CATHERINE)', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=461 ;

--
-- Contenu de la table `bilan`
--

INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(286, 1, 'Achat: CINEMA GAUMONT', '185', '', ''),
(288, 1, 'Achat: CELTIC LEGENDS', '222', '', ''),
(289, 1, 'Achat: ALAIN SOUCHON', '138', '', ''),
(290, 1, 'Achat: SHYM', '37', '', ''),
(291, 1, 'Achat: CINEMA 400 COUPS', '39.6', '', ''),
(292, 1, 'Achat: CINEMA GAUMONT', '555', '', ''),
(293, 1, 'Achat: CAFE 2015', '51.6', '', ''),
(294, 1, 'Achat: CINEMA GAUMONT', '740', '', ''),
(295, 1, 'Achat: BLACK M', '78', '', ''),
(296, 1, 'Achat: PLANETE SAUVAGE ADULTES', '47', '', ''),
(297, 1, 'Achat: PLANETE SAUVAGE ENFANTS', '17.5', '', ''),
(298, 1, 'Achat: CINEMA GAUMONT', '370', '', ''),
(299, 1, 'Achat: CINEMA GAUMONT', '370', '', ''),
(300, 1, 'Achat: ALAIN SOUCHON', '138', '', ''),
(301, 1, 'Achat: PARC BADABOUM CIRCUS ENFANTS PLUS DE 2 ANS', '12', '', ''),
(302, 1, 'Achat: DISNEY RESORT PARIS  1 JOUR 2 PARCS ADULTES', '134', '', ''),
(303, 1, 'Achat: CHEQUE DOMICILE FAMILLE IMPOSABLE ', '244', '', ''),
(304, 1, 'Achat: CHEQUE DOMICILE FAMILLE IMPOSABLE ', '244', '', ''),
(305, 1, 'Achat: CHEQUE DOMICILE FAMILLE IMPOSABLE ', '244', '', ''),
(306, 2, 'Ajout du produit fixe: SUBVENTION ASC JANVIER 2015', '', '1616.06', ''),
(308, 2, 'Ajout du produit fixe: SOLDE COMPTE ASC AU 31 12 2014', '', '6992.09', ''),
(310, 1, 'Achat: CARTE CEZAM OUVRANT DROIT', '360', '', ''),
(312, 1, 'Ajout de la charge Fixe: DECES FAMILLE ESNAULT ET  GODIN', '130', '', ''),
(313, 1, 'Achat: CARTE CEZAM AYANT DROIT', '90', '', ''),
(314, 1, 'Ajout de la charge Fixe: COTISATION ANNUELLE CEZAM 2015', '1016.55', '', ''),
(315, 1, 'Ajout de la charge Fixe: PRODUITS FOURNISSEUR RIVADIS', '250.45', '', ''),
(316, 2, 'Vente de Billetterie: TELLANGER Axelle pour la prestation CINEMA GAUMONT', '', '24', '17059400'),
(317, 2, 'Vente de Billetterie: TELLANGER Axelle pour la prestation CAFE TARIF 2014', '', '8.2', '23217677'),
(320, 2, 'Vente de Billetterie: BOUET Annette pour la prestation CINEMA GAUMONT', '', '36', '21839043'),
(321, 2, 'Vente de Billetterie: BOUET Annette pour la prestation CELTIC LEGENDS', '', '199.8', '94276183'),
(322, 2, 'Vente de Billetterie: MAUSSION Christine pour la prestation CINEMA GAUMONT', '', '24', '83732121'),
(323, 2, 'Vente de Billetterie: VIVIEN HervÃ© pour la prestation AUSTRALIAN PINK FLOYD SHOW', '', '203.4', '68958089'),
(324, 2, 'Vente de Billetterie: BERTEAU Patricia pour la prestation CINEMA GAUMONT', '', '24', '46398693'),
(325, 2, 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMA GAUMONT', '', '24', '63326178'),
(326, 2, 'Vente de Billetterie: DUPAS FranÃ§oise pour la prestation CAFE TARIF 2014', '', '4.1', '40949264'),
(327, 2, 'Vente de Billetterie: PETITEAU Sarah pour la prestation CINEMA GAUMONT', '', '6', '90996479'),
(328, 2, 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CINEMA GAUMONT', '', '6', '15818231'),
(329, 2, 'Vente de Billetterie: TESSIER Florence pour la prestation CINEMA GAUMONT', '', '6', '47157308'),
(330, 2, 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CINEMA GAUMONT', '', '36', '57974455'),
(331, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT', '', '18', '10915575'),
(332, 2, 'Vente de Billetterie: LE BORGNE Celine pour la prestation CINEMA GAUMONT', '', '18', '37951513'),
(335, 2, 'Vente de Billetterie: CHARREAU Helene pour la prestation CAFE 2015', '', '2.15', '4160178'),
(337, 2, 'Vente de Billetterie: GUIHO Odette pour la prestation CINEMA GAUMONT', '', '6', '90590837'),
(338, 2, 'Vente de Billetterie: BRARD Marie Pierre pour la prestation CINEMA GAUMONT', '', '36', '1629515'),
(339, 2, 'Vente de Billetterie: GAZE CHRISTELLE pour la prestation CINEMA GAUMONT', '', '30', '76406049'),
(340, 2, 'Vente de Billetterie: LEGER Sonia pour la prestation CINEMA GAUMONT', '', '24', '69947004'),
(347, 2, 'Vente de Billetterie: COCHIN Yvon pour la prestation ALAIN SOUCHON', '', '124.2', '50015969'),
(355, 2, 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation CAFE TARIF 2014', '', '4.1', '5162891'),
(356, 2, 'Vente de Billetterie: TAUNAY M Laure pour la prestation CINEMA GAUMONT', '', '30', '22505087'),
(357, 2, 'Vente de Billetterie: LATONNELLE Anne pour la prestation CINEMA GAUMONT', '', '18', '13938121'),
(358, 2, 'Vente de Billetterie: DENECHERE Pascale pour la prestation CINEMA GAUMONT', '', '6', '69527480'),
(360, 2, 'Vente de Billetterie: CHEIGNON Aurore pour la prestation SHYM', '', '33.3', '49233028'),
(363, 2, 'Vente de Billetterie: SEHAQUI M Therese pour la prestation CINEMA GAUMONT', '', '84', '67249470'),
(364, 2, 'Vente de Billetterie: BOUTREUX Anne Sophie pour la prestation CINEMA GAUMONT', '', '18', '21923397'),
(365, 2, 'Vente de Billetterie: BOUTREUX Anne Sophie pour la prestation CINEMA 400 COUPS', '', '35.12', '73365620'),
(366, 2, 'Vente de Billetterie: BONFILS Cecile pour la prestation CINEMA GAUMONT', '', '24', '70295911'),
(367, 2, 'Vente de Billetterie: GERARD Alexandra pour la prestation CINEMA GAUMONT', '', '42', '34813337'),
(368, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CINEMA GAUMONT', '', '18', '53273273'),
(370, 2, 'Vente de Billetterie: BERTEAU Patricia pour la prestation CINEMA GAUMONT', '', '24', '38567953'),
(371, 2, 'Vente de Billetterie: PASCUITO Isabelle pour la prestation CINEMA GAUMONT', '', '60', '9925973'),
(379, 2, 'Vente de Billetterie: JULIENNE THEO pour la prestation CAFE  DOSETTES 2014', '', '7.1', '42914685'),
(382, 2, 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation CINEMA GAUMONT', '', '18', '39691243'),
(383, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT', '', '18', '5708293'),
(384, 2, 'Vente de Billetterie: SOURISSEAU Aurore pour la prestation CINEMA GAUMONT', '', '24', '17306108'),
(385, 2, 'Vente de Billetterie: BONFILS Cecile pour la prestation CINEMA GAUMONT', '', '24', '16707142'),
(386, 2, 'Vente de Billetterie: FRANCFORT Catherine pour la prestation CINEMA GAUMONT', '', '24', '80623024'),
(388, 2, 'Vente de Billetterie: LATONNELLE Anne pour la prestation CINEMA GAUMONT', '', '42', '8710123'),
(389, 2, 'Vente de Billetterie: GUIHO Odette pour la prestation CINEMA GAUMONT', '', '6', '14494135'),
(390, 2, 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation CINEMA GAUMONT', '', '24', '19885393'),
(391, 2, 'Vente de Billetterie: TREMBLAIS (CATHERINE) pour la prestation PLANETE SAUVAGE ENFANTS', '', '15.75', ''),
(392, 2, 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation PLANETE SAUVAGE ADULTES', '', '42.3', '25238549'),
(393, 2, 'Vente de Billetterie: SEHAQUI M Therese pour la prestation PRADEL', '', '97.8', '60667519'),
(395, 2, 'Vente de Billetterie: VENTE HORS PERSONNEL  pour la prestation PRADEL', '', '30.95', '76556076'),
(396, 2, 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMA GAUMONT', '', '30', '60927822'),
(397, 2, 'Vente de Billetterie: PRUNAUX-CAZER  pour la prestation CINEMA GAUMONT', '', '24', '63998339'),
(398, 2, 'Vente de Billetterie: MOREAU Sandra pour la prestation CINEMA GAUMONT', '', '24', '7245277'),
(399, 2, 'Vente de Billetterie: PIEL Guylaine pour la prestation CINEMA GAUMONT', '', '24', '11881670'),
(400, 2, 'Vente de Billetterie: GILBERT Lucie pour la prestation CINEMA GAUMONT', '', '36', '11450486'),
(401, 2, 'Vente de Billetterie: ABID/PLANCHENAULT Sylvie pour la prestation CINEMA GAUMONT', '', '24', '960692'),
(402, 2, 'Vente de Billetterie: MAUSSION Christine pour la prestation CAFE TARIF 2014', '', '2.05', '32295393'),
(403, 2, 'Vente de Billetterie: MAUSSION Christine pour la prestation CAFE 2015', '', '4.3', '30969281'),
(404, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CAFE  DOSETTES 2014', '', '7.1', '41458352'),
(405, 2, 'Vente de Billetterie: RUBIO G.MICHEL pour la prestation CINEMA GAUMONT', '', '36', '23910583'),
(406, 2, 'Vente de Billetterie: RUBIO G.MICHEL pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE ', '', '198.2', '33293487'),
(407, 2, 'Vente de Billetterie: CHAILLOU Sandra pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE ', '', '198.2', '86952641'),
(408, 2, 'Vente de Billetterie: YVON ANAELLE pour la prestation CINEMA GAUMONT', '', '30', '83858684'),
(409, 2, 'Vente de Billetterie: LEBAILLY Emilie pour la prestation CINEMA GAUMONT', '', '36', '35018532'),
(412, 2, 'Vente de Billetterie: ROUSSE Maryvonne pour la prestation CINEMA GAUMONT', '', '6', '65300300'),
(414, 2, 'Vente de Billetterie: LE CALVEZ Jocelyne pour la prestation CINEMA GAUMONT', '', '30', '75685828'),
(415, 2, 'Vente de Billetterie: THEULIER Laure pour la prestation BLACK M', '', '70.2', '99846044'),
(416, 2, 'Vente de Billetterie: CIBRON Christophe pour la prestation CINEMA GAUMONT', '', '30', '34645414'),
(417, 2, 'Vente de Billetterie: INCONNU INCONNU pour la prestation CAFE 2015', '', '2.15', '13676616'),
(418, 2, 'Vente de Billetterie: TESSIER Florence pour la prestation CINEMA GAUMONT', '', '24', '17148795'),
(419, 2, 'Vente de Billetterie: ABID/PLANCHENAULT Sylvie pour la prestation CINEMA GAUMONT', '', '24', '733599'),
(420, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation RIVADIS', '', '7.13', '3114440'),
(421, 2, 'Vente de Billetterie: GAZE CHRISTELLE pour la prestation CINEMA GAUMONT', '', '30', '35744467'),
(422, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT', '', '66', '97269595'),
(424, 2, 'Vente de Billetterie: CHEVREUX Melanie pour la prestation CINEMA GAUMONT', '', '36', '83621653'),
(425, 2, 'Vente de Billetterie: DENECHERE Pascale pour la prestation CINEMA GAUMONT', '', '18', '42482972'),
(428, 2, 'Vente de Billetterie: BOULAY Jennifer pour la prestation DISNEY RESORT PARIS  1 JOUR 2 PARCS ADULTES', '', '120.6', '34389023'),
(429, 2, 'Vente de Billetterie: HENNE Teresa pour la prestation ALAIN SOUCHON', '', '124.2', '69467874'),
(430, 2, 'Vente de Billetterie: SEGARRA Agnes pour la prestation CINEMA GAUMONT', '', '24', '54498199'),
(431, 2, 'Vente de Billetterie: MOREAU Pascale pour la prestation CINEMA GAUMONT', '', '30', '38403975'),
(432, 2, 'Vente de Billetterie: PICHERIT Valerie pour la prestation CINEMA GAUMONT', '', '36', '68097961'),
(433, 2, 'Vente de Billetterie: LASNE Allison pour la prestation CINEMA GAUMONT', '', '24', '28080599'),
(435, 2, 'Vente de Billetterie: DELAREUX Isabelle pour la prestation CINEMA GAUMONT', '', '30', '16891865'),
(439, 2, 'Vente de Billetterie: BERTEAU Patricia pour la prestation CINEMA GAUMONT', '', '24', '17583628'),
(440, 2, 'Vente de Billetterie: GERARD Alexandra pour la prestation GAUMONT', '', '54', '74098978'),
(443, 2, 'Vente de Billetterie: LEGER Sonia pour la prestation GAUMONT', '', '30', '88816579'),
(444, 2, 'Vente de Billetterie: TAUDON (CHRISTINE)  pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5', ''),
(445, 2, 'Vente de Billetterie: TAUDON Christine pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '91591104'),
(446, 2, 'Vente de Billetterie: PERDRIAU Carine pour la prestation CINEMA GAUMONT', '', '12', '89121874'),
(447, 2, 'Vente de Billetterie: SOULET Mahe pour la prestation PARC BADABOUM CIRCUS ENFANTS PLUS DE 2 ANS', '', '10.8', ''),
(448, 2, 'Vente de Billetterie: ROYER Catherine pour la prestation RIVADIS', '', '57.38', '10934381'),
(449, 2, 'Vente de Billetterie: PITHON Adeline pour la prestation RIVADIS', '', '16.65', '66157407'),
(451, 2, 'Vente de Billetterie: LECOMTE Ludivine pour la prestation RIVADIS', '', '9.99', '96387961'),
(452, 2, 'Vente de Billetterie: MOREAU Pascale pour la prestation RIVADIS', '', '40.64', '86583189'),
(453, 2, 'Vente de Billetterie: SEGARRA Agnes pour la prestation RIVADIS', '', '16.15', '29420105'),
(454, 2, 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation RIVADIS', '', '36.82', '75161522'),
(455, 2, 'Vente de Billetterie: LEBAILLY Emilie pour la prestation RIVADIS', '', '10.72', '30959469'),
(456, 2, 'Vente de Billetterie: VENTE HORS PERSONNEL  pour la prestation PRADEL', '', '35.9', '58077283'),
(457, 2, 'Vente de Billetterie: VENTE HORS PERSONNEL  pour la prestation RIVADIS', '', '30.95', '98476938'),
(458, 2, 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation RIVADIS', '', '30.95', '94014226'),
(459, 2, 'Vente de Billetterie: DIJOLS Christine pour la prestation GAUMONT', '', '36', '92026038'),
(460, 2, 'Vente de Billetterie: MALINGE Anicette pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '81562866');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Contenu de la table `billet_ayant_droit`
--

INSERT INTO `billet_ayant_droit` (`idbilletayantdroit`, `idayantdroit`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_facture`) VALUES
(28, 214, '03-02-2015', 3, '2.5', 1),
(29, 190, '03-02-2015', 3, '2.5', 1),
(30, 211, '05-02-2015', 3, '2.5', 1),
(31, 221, '10-02-2015', 3, '15.75', 1),
(32, 212, '05-03-2015', 3, '2.5', 1),
(33, 190, '24-02-2015', 3, '10.8', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=309 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`) VALUES
(170, 200, '02-01-2015', 3, '24', 1),
(171, 200, '02-01-2015', 3, '8.2', 1),
(172, 199, '03-01-2015', 3, '12', 1),
(173, 128, '06-01-2015', 3, '12', 1),
(174, 24, '06-01-2015', 3, '36', 1),
(175, 24, '06-01-2015', 3, '199.8', 1),
(176, 145, '06-01-2015', 3, '24', 1),
(177, 211, '06-01-2015', 3, '203.4', 1),
(178, 11, '06-01-2015', 3, '24', 1),
(179, 203, '06-01-2015', 3, '24', 1),
(180, 71, '06-01-2015', 3, '4.1', 1),
(181, 165, '06-01-2015', 3, '6', 1),
(182, 158, '07-01-2015', 3, '6', 1),
(183, 202, '07-01-2015', 3, '6', 1),
(184, 127, '07-01-2015', 3, '36', 1),
(185, 82, '07-01-2015', 3, '18', 1),
(186, 123, '07-01-2015', 3, '18', 1),
(187, 183, '07-01-2015', 3, '12', 1),
(188, 41, '07-01-2015', 3, '12', 1),
(189, 41, '07-01-2015', 3, '2.15', 1),
(190, 214, '13-01-2015', 3, '12', 1),
(191, 96, '13-01-2015', 3, '6', 1),
(192, 30, '13-01-2015', 3, '36', 1),
(193, 218, '13-01-2015', 3, '30', 1),
(194, 132, '13-01-2015', 3, '24', 1),
(195, 82, '13-01-2015', 3, '12', 1),
(196, 45, '13-01-2015', 3, '12', 1),
(197, 97, '20-01-2015', 3, '12', 1),
(198, 185, '20-01-2015', 3, '5', 1),
(199, 185, '20-01-2015', 3, '2.5', 1),
(200, 15, '20-01-2015', 3, '12', 1),
(201, 50, '20-01-2015', 3, '124.2', 1),
(202, 25, '20-01-2015', 3, '5', 1),
(203, 25, '20-01-2015', 3, '2.5', 1),
(204, 42, '27-01-2015', 3, '5', 1),
(205, 42, '27-01-2015', 3, '5', 1),
(206, 22, '27-01-2015', 3, '5', 1),
(207, 22, '27-01-2015', 3, '2.5', 1),
(208, 42, '29-01-2015', 3, '12', 1),
(209, 207, '29-01-2015', 3, '4.1', 1),
(210, 199, '29-01-2015', 3, '30', 1),
(211, 122, '29-01-2015', 3, '18', 1),
(212, 63, '29-01-2015', 3, '6', 1),
(213, 45, '29-01-2015', 3, '12', 1),
(214, 45, '29-01-2015', 3, '33.3', 1),
(215, 163, '29-01-2015', 3, '12', 1),
(216, 201, '29-01-2015', 3, '12', 1),
(217, 191, '29-01-2015', 3, '84', 1),
(218, 29, '29-01-2015', 3, '18', 1),
(219, 29, '29-01-2015', 3, '35.12', 1),
(220, 20, '29-01-2015', 3, '24', 1),
(221, 85, '29-01-2015', 3, '42', 1),
(222, 7, '29-01-2015', 3, '18', 1),
(224, 11, '29-01-2015', 3, '24', 1),
(225, 160, '29-01-2015', 3, '60', 1),
(226, 60, '03-02-2015', 3, '5', 1),
(227, 107, '03-02-2015', 3, '5', 1),
(228, 24, '03-02-2015', 3, '5', 1),
(229, 191, '03-02-2015', 3, '5', 1),
(230, 195, '03-02-2015', 3, '5', 1),
(231, 215, '03-02-2015', 3, '7.1', 1),
(232, 48, '05-02-2015', 3, '5', 1),
(233, 150, '05-02-2015', 3, '18', 1),
(234, 82, '05-02-2015', 3, '18', 1),
(235, 196, '05-02-2015', 3, '24', 1),
(236, 20, '05-02-2015', 3, '24', 1),
(237, 81, '10-02-2015', 3, '24', 1),
(238, 7, '10-02-2015', 3, '12', 1),
(239, 122, '10-02-2015', 3, '42', 1),
(240, 96, '10-02-2015', 3, '6', 1),
(241, 207, '10-02-2015', 3, '24', 1),
(242, 207, '10-02-2015', 3, '42.3', 1),
(243, 191, '10-02-2015', 3, '97.8', 1),
(245, 221, '10-02-2015', 3, '30.95', 1),
(246, 203, '12-02-2015', 3, '30', 1),
(247, 216, '12-02-2015', 3, '24', 1),
(248, 155, '12-02-2015', 3, '24', 1),
(249, 167, '12-02-2015', 3, '24', 1),
(250, 87, '12-02-2015', 3, '36', 1),
(251, 170, '12-02-2015', 3, '24', 1),
(252, 145, '12-02-2015', 3, '2.05', 1),
(253, 145, '12-02-2015', 3, '4.3', 1),
(254, 7, '12-02-2015', 3, '7.1', 1),
(255, 219, '17-02-2015', 3, '36', 1),
(256, 219, '17-02-2015', 3, '198.2', 1),
(257, 38, '17-02-2015', 3, '198.2', 1),
(258, 217, '17-02-2015', 3, '30', 1),
(259, 128, '17-02-2015', 3, '36', 1),
(260, 83, '17-02-2015', 3, '12', 1),
(261, 96, '17-02-2015', 3, '5', 1),
(262, 185, '17-02-2015', 3, '6', 1),
(263, 63, '17-02-2015', 3, '12', 1),
(264, 124, '17-02-2015', 3, '30', 1),
(265, 203, '24-02-2015', 3, '70.2', 1),
(266, 48, '03-03-2015', 3, '30', 1),
(267, 220, '03-03-2015', 3, '2.15', 1),
(269, 202, '03-03-2015', 3, '24', 1),
(270, 170, '26-02-2015', 3, '24', 1),
(271, 7, '07-03-2015', 3, '7.13', 1),
(272, 218, '19-03-2015', 3, '30', 1),
(273, 82, '19-02-2015', 3, '66', 1),
(274, 67, '19-03-2015', 3, '12', 1),
(275, 46, '19-02-2015', 3, '36', 1),
(276, 63, '19-02-2015', 3, '18', 1),
(277, 195, '24-02-2015', 3, '12', 1),
(279, 25, '24-03-2015', 3, '120.6', 1),
(280, 101, '19-02-2015', 3, '124.2', 1),
(281, 190, '26-04-2015', 3, '24', 1),
(282, 156, '26-02-2015', 3, '30', 1),
(283, 166, '26-02-2015', 3, '36', 1),
(284, 121, '03-03-2015', 3, '24', 1),
(285, 130, '03-03-2015', 3, '12', 1),
(286, 59, '03-03-2015', 3, '30', 1),
(287, 20, '03-03-2015', 3, '12', 1),
(290, 11, '03-03-2015', 3, '24', 1),
(291, 85, '25-03-2015', 3, '54', 1),
(293, 126, '05-03-2015', 3, '12', 1),
(294, 132, '07-03-2015', 3, '30', 1),
(295, 198, '05-03-2015', 3, '5', 1),
(296, 163, '05-03-2015', 3, '12', 1),
(297, 187, '07-03-2015', 3, '57.38', 1),
(299, 131, '07-03-2015', 3, '9.99', 1),
(300, 156, '07-03-2015', 3, '40.64', 1),
(301, 190, '07-03-2015', 3, '16.15', 1),
(302, 159, '07-03-2015', 3, '36.82', 1),
(303, 128, '07-03-2015', 3, '10.72', 1),
(304, 221, '10-02-2015', 3, '35.9', 1),
(305, 221, '10-02-2015', 3, '30.95', 1),
(306, 159, '10-02-2015', 3, '30.95', 1),
(307, 67, '19-02-2015', 3, '36', 1),
(308, 141, '03-02-2015', 3, '5', 1);

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `charge_fixe`
--

INSERT INTO `charge_fixe` (`idchargefixe`, `designation`, `date_charge_fixe`, `montant_charge`) VALUES
(30, 'DECES FAMILLE ESNAULT ET  GODIN', '09-02-2015', '130'),
(31, 'COTISATION ANNUELLE CEZAM 2015', '14-01-2015', '1016.55'),
(32, 'PRODUITS FOURNISSEUR RIVADIS', '07-03-2015', '250.45');

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
(82, 3, '0', '0'),
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
(107, 28, '0', '0'),
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
(140, 61, '0', '0'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE IF NOT EXISTS `compta_compte` (
`idcomptacompte` int(13) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

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
(14, 1, 'V&eacute;hicules', 'terrain'),
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
(28, 2, 'Capital', 'Capitaux'),
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
(61, 6, 'Autre Charge d''exploitation 1', 'Repas elus'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

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
(1, 'CE Clinique Saint LÃ©onard', '0.20', '0.10', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=461 ;

--
-- Contenu de la table `cpt_resultat`
--

INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(286, '', '1420671600', 'Achat - CINEMA GAUMONT', '185', ''),
(288, '', '1420671600', 'Achat - CELTIC LEGENDS', '222', ''),
(289, '', '1421190000', 'Achat - ALAIN SOUCHON', '138', ''),
(290, '', '1422572400', 'Achat - SHYM', '37', ''),
(291, '', '1422572400', 'Achat - CINEMA 400 COUPS', '39.6', ''),
(292, '', '1422572400', 'Achat - CINEMA GAUMONT', '555', ''),
(293, '', '1420498800', 'Achat - CAFE 2015', '51.6', ''),
(294, '', '1422399600', 'Achat - CINEMA GAUMONT', '740', ''),
(295, '', '1422399600', 'Achat - BLACK M', '78', ''),
(296, '', '1423609200', 'Achat - PLANETE SAUVAGE ADULTES', '47', ''),
(297, '', '1423609200', 'Achat - PLANETE SAUVAGE ENFANTS', '17.5', ''),
(298, '', '1424127600', 'Achat - CINEMA GAUMONT', '370', ''),
(299, '', '1423782000', 'Achat - CINEMA GAUMONT', '370', ''),
(300, '', '1424646000', 'Achat - ALAIN SOUCHON', '138', ''),
(301, '', '1424732400', 'Achat - PARC BADABOUM CIRCUS ENFANTS PLUS DE 2 ANS', '12', ''),
(302, '', '1424732400', 'Achat - DISNEY RESORT PARIS  1 JOUR 2 PARCS ADULTES', '134', ''),
(303, '', '1423782000', 'Achat - CHEQUE DOMICILE FAMILLE IMPOSABLE ', '244', ''),
(304, '', '1424905200', 'Achat - CHEQUE DOMICILE FAMILLE IMPOSABLE ', '244', ''),
(305, '', '1424300400', 'Achat - CHEQUE DOMICILE FAMILLE IMPOSABLE ', '244', ''),
(306, '', '1421103600', 'SUBVENTION ASC JANVIER 2015', '', '1616.06'),
(308, '', '1420066800', 'SOLDE COMPTE ASC AU 31 12 2014', '', '6992.09'),
(310, '', '1421622000', 'Achat - CARTE CEZAM OUVRANT DROIT', '360', ''),
(312, '', '1423436400', 'DECES FAMILLE ESNAULT ET  GODIN', '130', ''),
(313, '', '1421622000', 'Achat - CARTE CEZAM AYANT DROIT', '90', ''),
(314, '', '1421190000', 'COTISATION ANNUELLE CEZAM 2015', '1016.55', ''),
(315, '', '1425682800', 'PRODUITS FOURNISSEUR RIVADIS', '250.45', ''),
(316, '17059400', '1420153200', 'Vente de Billetterie: TELLANGER Axelle pour la prestation CINEMA GAUMONT', '', '24'),
(317, '23217677', '1420153200', 'Vente de Billetterie: TELLANGER Axelle pour la prestation CAFE TARIF 2014', '', '8.2'),
(320, '21839043', '1420498800', 'Vente de Billetterie: BOUET Annette pour la prestation CINEMA GAUMONT', '', '36'),
(321, '94276183', '1420498800', 'Vente de Billetterie: BOUET Annette pour la prestation CELTIC LEGENDS', '', '199.8'),
(322, '83732121', '1420498800', 'Vente de Billetterie: MAUSSION Christine pour la prestation CINEMA GAUMONT', '', '24'),
(323, '68958089', '1420498800', 'Vente de Billetterie: VIVIEN HervÃ© pour la prestation AUSTRALIAN PINK FLOYD SHOW', '', '203.4'),
(324, '46398693', '1420498800', 'Vente de Billetterie: BERTEAU Patricia pour la prestation CINEMA GAUMONT', '', '24'),
(325, '63326178', '1420498800', 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMA GAUMONT', '', '24'),
(326, '40949264', '1420498800', 'Vente de Billetterie: DUPAS FranÃ§oise pour la prestation CAFE TARIF 2014', '', '4.1'),
(327, '90996479', '1420498800', 'Vente de Billetterie: PETITEAU Sarah pour la prestation CINEMA GAUMONT', '', '6'),
(328, '15818231', '1420585200', 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CINEMA GAUMONT', '', '6'),
(329, '47157308', '1420585200', 'Vente de Billetterie: TESSIER Florence pour la prestation CINEMA GAUMONT', '', '6'),
(330, '57974455', '1420585200', 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CINEMA GAUMONT', '', '36'),
(331, '10915575', '1420585200', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT', '', '18'),
(332, '37951513', '1420585200', 'Vente de Billetterie: LE BORGNE Celine pour la prestation CINEMA GAUMONT', '', '18'),
(335, '4160178', '1420585200', 'Vente de Billetterie: CHARREAU Helene pour la prestation CAFE 2015', '', '2.15'),
(337, '90590837', '1421103600', 'Vente de Billetterie: GUIHO Odette pour la prestation CINEMA GAUMONT', '', '6'),
(338, '1629515', '1421103600', 'Vente de Billetterie: BRARD Marie Pierre pour la prestation CINEMA GAUMONT', '', '36'),
(339, '76406049', '1421103600', 'Vente de Billetterie: GAZE CHRISTELLE pour la prestation CINEMA GAUMONT', '', '30'),
(340, '69947004', '1421103600', 'Vente de Billetterie: LEGER Sonia pour la prestation CINEMA GAUMONT', '', '24'),
(347, '50015969', '1421708400', 'Vente de Billetterie: COCHIN Yvon pour la prestation ALAIN SOUCHON', '', '124.2'),
(355, '5162891', '1422486000', 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation CAFE TARIF 2014', '', '4.1'),
(356, '22505087', '1422486000', 'Vente de Billetterie: TAUNAY M Laure pour la prestation CINEMA GAUMONT', '', '30'),
(357, '13938121', '1422486000', 'Vente de Billetterie: LATONNELLE Anne pour la prestation CINEMA GAUMONT', '', '18'),
(358, '69527480', '1422486000', 'Vente de Billetterie: DENECHERE Pascale pour la prestation CINEMA GAUMONT', '', '6'),
(360, '49233028', '1422486000', 'Vente de Billetterie: CHEIGNON Aurore pour la prestation SHYM', '', '33.3'),
(363, '67249470', '1422486000', 'Vente de Billetterie: SEHAQUI M Therese pour la prestation CINEMA GAUMONT', '', '84'),
(364, '21923397', '1422486000', 'Vente de Billetterie: BOUTREUX Anne Sophie pour la prestation CINEMA GAUMONT', '', '18'),
(365, '73365620', '1422486000', 'Vente de Billetterie: BOUTREUX Anne Sophie pour la prestation CINEMA 400 COUPS', '', '35.12'),
(366, '70295911', '1422486000', 'Vente de Billetterie: BONFILS Cecile pour la prestation CINEMA GAUMONT', '', '24'),
(367, '34813337', '1422486000', 'Vente de Billetterie: GERARD Alexandra pour la prestation CINEMA GAUMONT', '', '42'),
(368, '53273273', '1422486000', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CINEMA GAUMONT', '', '18'),
(370, '38567953', '1422486000', 'Vente de Billetterie: BERTEAU Patricia pour la prestation CINEMA GAUMONT', '', '24'),
(371, '9925973', '1422486000', 'Vente de Billetterie: PASCUITO Isabelle pour la prestation CINEMA GAUMONT', '', '60'),
(379, '42914685', '1422918000', 'Vente de Billetterie: JULIENNE THEO pour la prestation CAFE  DOSETTES 2014', '', '7.1'),
(382, '39691243', '1423090800', 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation CINEMA GAUMONT', '', '18'),
(383, '5708293', '1423090800', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT', '', '18'),
(384, '17306108', '1423090800', 'Vente de Billetterie: SOURISSEAU Aurore pour la prestation CINEMA GAUMONT', '', '24'),
(385, '16707142', '1423090800', 'Vente de Billetterie: BONFILS Cecile pour la prestation CINEMA GAUMONT', '', '24'),
(386, '80623024', '1423522800', 'Vente de Billetterie: FRANCFORT Catherine pour la prestation CINEMA GAUMONT', '', '24'),
(388, '8710123', '1423522800', 'Vente de Billetterie: LATONNELLE Anne pour la prestation CINEMA GAUMONT', '', '42'),
(389, '14494135', '1423522800', 'Vente de Billetterie: GUIHO Odette pour la prestation CINEMA GAUMONT', '', '6'),
(390, '19885393', '1423522800', 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation CINEMA GAUMONT', '', '24'),
(391, '87198247', '1423522800', 'Vente de Billetterie: TREMBLAIS (CATHERINE) pour la prestation PLANETE SAUVAGE ENFANTS', '', '15.75'),
(392, '25238549', '1423522800', 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation PLANETE SAUVAGE ADULTES', '', '42.3'),
(393, '60667519', '1423522800', 'Vente de Billetterie: SEHAQUI M Therese pour la prestation PRADEL', '', '97.8'),
(395, '76556076', '1423522800', 'Vente de Billetterie: VENTE HORS PERSONNEL  pour la prestation PRADEL', '', '30.95'),
(396, '60927822', '1423695600', 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMA GAUMONT', '', '30'),
(397, '63998339', '1423695600', 'Vente de Billetterie: PRUNAUX-CAZER  pour la prestation CINEMA GAUMONT', '', '24'),
(398, '7245277', '1423695600', 'Vente de Billetterie: MOREAU Sandra pour la prestation CINEMA GAUMONT', '', '24'),
(399, '11881670', '1423695600', 'Vente de Billetterie: PIEL Guylaine pour la prestation CINEMA GAUMONT', '', '24'),
(400, '11450486', '1423695600', 'Vente de Billetterie: GILBERT Lucie pour la prestation CINEMA GAUMONT', '', '36'),
(401, '960692', '1423695600', 'Vente de Billetterie: ABID/PLANCHENAULT Sylvie pour la prestation CINEMA GAUMONT', '', '24'),
(402, '32295393', '1423695600', 'Vente de Billetterie: MAUSSION Christine pour la prestation CAFE TARIF 2014', '', '2.05'),
(403, '30969281', '1423695600', 'Vente de Billetterie: MAUSSION Christine pour la prestation CAFE 2015', '', '4.3'),
(404, '41458352', '1423695600', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CAFE  DOSETTES 2014', '', '7.1'),
(405, '23910583', '1424127600', 'Vente de Billetterie: RUBIO G.MICHEL pour la prestation CINEMA GAUMONT', '', '36'),
(406, '33293487', '1424127600', 'Vente de Billetterie: RUBIO G.MICHEL pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE ', '', '198.2'),
(407, '86952641', '1424127600', 'Vente de Billetterie: CHAILLOU Sandra pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE ', '', '198.2'),
(408, '83858684', '1424127600', 'Vente de Billetterie: YVON ANAELLE pour la prestation CINEMA GAUMONT', '', '30'),
(409, '35018532', '1424127600', 'Vente de Billetterie: LEBAILLY Emilie pour la prestation CINEMA GAUMONT', '', '36'),
(412, '65300300', '1424127600', 'Vente de Billetterie: ROUSSE Maryvonne pour la prestation CINEMA GAUMONT', '', '6'),
(414, '75685828', '1424127600', 'Vente de Billetterie: LE CALVEZ Jocelyne pour la prestation CINEMA GAUMONT', '', '30'),
(415, '99846044', '1424732400', 'Vente de Billetterie: THEULIER Laure pour la prestation BLACK M', '', '70.2'),
(416, '34645414', '1425337200', 'Vente de Billetterie: CIBRON Christophe pour la prestation CINEMA GAUMONT', '', '30'),
(417, '13676616', '1425337200', 'Vente de Billetterie: INCONNU INCONNU pour la prestation CAFE 2015', '', '2.15'),
(418, '17148795', '1425337200', 'Vente de Billetterie: TESSIER Florence pour la prestation CINEMA GAUMONT', '', '24'),
(419, '733599', '1424905200', 'Vente de Billetterie: ABID/PLANCHENAULT Sylvie pour la prestation CINEMA GAUMONT', '', '24'),
(420, '3114440', '1425682800', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation RIVADIS', '', '7.13'),
(421, '35744467', '1426719600', 'Vente de Billetterie: GAZE CHRISTELLE pour la prestation CINEMA GAUMONT', '', '30'),
(422, '97269595', '1424300400', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT', '', '66'),
(424, '83621653', '1424300400', 'Vente de Billetterie: CHEVREUX Melanie pour la prestation CINEMA GAUMONT', '', '36'),
(425, '42482972', '1424300400', 'Vente de Billetterie: DENECHERE Pascale pour la prestation CINEMA GAUMONT', '', '18'),
(428, '34389023', '1427151600', 'Vente de Billetterie: BOULAY Jennifer pour la prestation DISNEY RESORT PARIS  1 JOUR 2 PARCS ADULTES', '', '120.6'),
(429, '69467874', '1424300400', 'Vente de Billetterie: HENNE Teresa pour la prestation ALAIN SOUCHON', '', '124.2'),
(430, '54498199', '1429999200', 'Vente de Billetterie: SEGARRA Agnes pour la prestation CINEMA GAUMONT', '', '24'),
(431, '38403975', '1424905200', 'Vente de Billetterie: MOREAU Pascale pour la prestation CINEMA GAUMONT', '', '30'),
(432, '68097961', '1424905200', 'Vente de Billetterie: PICHERIT Valerie pour la prestation CINEMA GAUMONT', '', '36'),
(433, '28080599', '1425337200', 'Vente de Billetterie: LASNE Allison pour la prestation CINEMA GAUMONT', '', '24'),
(435, '16891865', '1425337200', 'Vente de Billetterie: DELAREUX Isabelle pour la prestation CINEMA GAUMONT', '', '30'),
(439, '17583628', '1425337200', 'Vente de Billetterie: BERTEAU Patricia pour la prestation CINEMA GAUMONT', '', '24'),
(440, '74098978', '1427238000', 'Vente de Billetterie: GERARD Alexandra pour la prestation GAUMONT', '', '54'),
(443, '88816579', '1425682800', 'Vente de Billetterie: LEGER Sonia pour la prestation GAUMONT', '', '30'),
(444, '31389422', '1425510000', 'Vente de Billetterie: TAUDON (CHRISTINE)  pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5'),
(445, '91591104', '1425510000', 'Vente de Billetterie: TAUDON Christine pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(446, '89121874', '1425510000', 'Vente de Billetterie: PERDRIAU Carine pour la prestation CINEMA GAUMONT', '', '12'),
(447, '9501533', '1424732400', 'Vente de Billetterie: SOULET Mahe pour la prestation PARC BADABOUM CIRCUS ENFANTS PLUS DE 2 ANS', '', '10.8'),
(448, '10934381', '1425682800', 'Vente de Billetterie: ROYER Catherine pour la prestation RIVADIS', '', '57.38'),
(449, '66157407', '1425682800', 'Vente de Billetterie: PITHON Adeline pour la prestation RIVADIS', '', '16.65'),
(451, '96387961', '1425682800', 'Vente de Billetterie: LECOMTE Ludivine pour la prestation RIVADIS', '', '9.99'),
(452, '86583189', '1425682800', 'Vente de Billetterie: MOREAU Pascale pour la prestation RIVADIS', '', '40.64'),
(453, '29420105', '1425682800', 'Vente de Billetterie: SEGARRA Agnes pour la prestation RIVADIS', '', '16.15'),
(454, '75161522', '1425682800', 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation RIVADIS', '', '36.82'),
(455, '30959469', '1425682800', 'Vente de Billetterie: LEBAILLY Emilie pour la prestation RIVADIS', '', '10.72'),
(456, '58077283', '1423522800', 'Vente de Billetterie: VENTE HORS PERSONNEL  pour la prestation PRADEL', '', '35.9'),
(457, '98476938', '1423522800', 'Vente de Billetterie: VENTE HORS PERSONNEL  pour la prestation RIVADIS', '', '30.95'),
(458, '94014226', '1423522800', 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation RIVADIS', '', '30.95'),
(459, '92026038', '1424300400', 'Vente de Billetterie: DIJOLS Christine pour la prestation GAUMONT', '', '36'),
(460, '81562866', '1422918000', 'Vente de Billetterie: MALINGE Anicette pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5');

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE IF NOT EXISTS `famille_prestation` (
`idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Contenu de la table `famille_prestation`
--

INSERT INTO `famille_prestation` (`idfamilleprestation`, `designation_famille`) VALUES
(69, 'CINEMA'),
(70, 'CONSOMMABLES'),
(71, 'BILLETTERIE'),
(72, 'AIDE'),
(73, 'FAMILLE'),
(74, 'ACHATS POUR REVENTE');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `ligne_billet_ayant_droit`
--

INSERT INTO `ligne_billet_ayant_droit` (`idlignebilletayantdroit`, `idbilletayantdroit`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(27, 28, 113, '1', '2.5', '3.5', 0),
(28, 29, 113, '1', '2.5', '3.5', 0),
(29, 30, 113, '1', '2.5', '3.5', 0),
(30, 31, 106, '1', '15.75', '1.75', 0),
(31, 32, 113, '1', '2.5', '3.5', 0),
(32, 33, 107, '2', '10.8', '1.2', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=301 ;

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(162, 170, 93, '4', '24', '5.6', 0),
(163, 171, 94, '4', '8.2', '0', 0),
(164, 172, 93, '2', '12', '2.8', 0),
(165, 173, 93, '2', '12', '2.8', 0),
(166, 174, 93, '6', '36', '8.4', 0),
(167, 175, 98, '6', '199.8', '22.2', 0),
(168, 176, 93, '4', '24', '5.6', 0),
(169, 177, 99, '4', '203.4', '22.6', 0),
(170, 178, 93, '4', '24', '5.6', 0),
(171, 179, 93, '4', '24', '5.6', 0),
(172, 180, 94, '2', '4.1', '0', 0),
(173, 181, 93, '1', '6', '1.4', 0),
(174, 182, 93, '1', '6', '1.4', 0),
(175, 183, 93, '1', '6', '1.4', 0),
(176, 184, 93, '6', '36', '8.4', 0),
(177, 185, 93, '3', '18', '4.2', 0),
(178, 186, 93, '3', '18', '4.2', 0),
(179, 187, 93, '2', '12', '2.8', 0),
(180, 188, 93, '2', '12', '2.8', 0),
(181, 189, 103, '1', '2.15', '0', 0),
(182, 190, 93, '2', '12', '2.8', 0),
(183, 191, 93, '1', '6', '1.4', 0),
(184, 192, 93, '6', '36', '8.4', 0),
(185, 193, 93, '5', '30', '7', 0),
(186, 194, 93, '4', '24', '5.6', 0),
(187, 195, 93, '2', '12', '2.8', 0),
(188, 196, 93, '2', '12', '2.8', 0),
(189, 197, 93, '2', '12', '2.8', 0),
(190, 198, 111, '1', '5', '7', 0),
(191, 199, 113, '1', '2.5', '3.5', 0),
(192, 200, 93, '2', '12', '2.8', 0),
(193, 201, 100, '2', '124.2', '13.8', 0),
(194, 202, 111, '1', '5', '7', 0),
(195, 203, 113, '1', '2.5', '3.5', 0),
(196, 204, 111, '1', '5', '7', 0),
(197, 205, 113, '2', '5', '7', 0),
(198, 206, 111, '1', '5', '7', 0),
(199, 207, 113, '1', '2.5', '3.5', 0),
(200, 208, 93, '2', '12', '2.8', 0),
(201, 209, 94, '2', '4.1', '0', 0),
(202, 210, 93, '5', '30', '7', 0),
(203, 211, 93, '3', '18', '4.2', 0),
(204, 212, 93, '1', '6', '1.4', 0),
(205, 213, 93, '2', '12', '2.8', 0),
(206, 214, 101, '1', '33.3', '3.7', 0),
(207, 215, 93, '2', '12', '2.8', 0),
(208, 216, 93, '2', '12', '2.8', 0),
(209, 217, 93, '14', '84', '19.6', 0),
(210, 218, 93, '3', '18', '4.2', 0),
(211, 219, 102, '8', '35.12', '4.48', 0),
(212, 220, 93, '4', '24', '5.6', 0),
(213, 221, 93, '7', '42', '9.8', 0),
(214, 222, 93, '3', '18', '4.2', 0),
(216, 224, 93, '4', '24', '5.6', 0),
(217, 225, 93, '10', '60', '14', 0),
(218, 226, 111, '1', '5', '7', 0),
(219, 227, 111, '1', '5', '7', 0),
(220, 228, 111, '1', '5', '7', 0),
(221, 229, 111, '1', '5', '7', 0),
(222, 230, 111, '1', '5', '7', 0),
(223, 231, 95, '2', '7.1', '0', 0),
(224, 232, 111, '1', '5', '7', 0),
(225, 233, 93, '3', '18', '4.2', 0),
(226, 234, 93, '3', '18', '4.2', 0),
(227, 235, 93, '4', '24', '5.6', 0),
(228, 236, 93, '4', '24', '5.6', 0),
(229, 237, 93, '4', '24', '5.6', 0),
(230, 238, 93, '2', '12', '2.8', 0),
(231, 239, 93, '7', '42', '9.8', 0),
(232, 240, 93, '1', '6', '1.4', 0),
(233, 241, 93, '4', '24', '5.6', 0),
(234, 242, 105, '2', '42.3', '4.7', 0),
(235, 243, 114, '9.78', '97.8', '0', 0),
(237, 245, 114, '3.095', '30.95', '0', 0),
(238, 246, 93, '5', '30', '7', 0),
(239, 247, 93, '4', '24', '5.6', 0),
(240, 248, 93, '4', '24', '5.6', 0),
(241, 249, 93, '4', '24', '5.6', 0),
(242, 250, 93, '6', '36', '8.4', 0),
(243, 251, 93, '4', '24', '5.6', 0),
(244, 252, 94, '1', '2.05', '0', 0),
(245, 253, 103, '2', '4.3', '0', 0),
(246, 254, 95, '2', '7.1', '0', 0),
(247, 255, 93, '6', '36', '8.4', 0),
(248, 256, 109, '20', '198.2', '45.8', 0),
(249, 257, 109, '20', '198.2', '45.8', 0),
(250, 258, 93, '5', '30', '7', 0),
(251, 259, 93, '6', '36', '8.4', 0),
(252, 260, 93, '2', '12', '2.8', 0),
(253, 261, 111, '1', '5', '7', 0),
(254, 262, 93, '1', '6', '1.4', 0),
(255, 263, 93, '2', '12', '2.8', 0),
(256, 264, 93, '5', '30', '7', 0),
(257, 265, 104, '2', '70.2', '7.8', 0),
(258, 266, 93, '5', '30', '7', 0),
(259, 267, 103, '1', '2.15', '0', 0),
(260, 269, 93, '4', '24', '5.6', 0),
(261, 270, 93, '4', '24', '5.6', 0),
(262, 271, 115, '0.713', '7.13', '0', 0),
(263, 272, 93, '5', '30', '7', 0),
(264, 273, 93, '11', '66', '15.4', 0),
(265, 274, 93, '2', '12', '2.8', 0),
(266, 275, 93, '6', '36', '8.4', 0),
(267, 276, 93, '3', '18', '4.2', 0),
(268, 277, 93, '2', '12', '2.8', 0),
(270, 279, 108, '2', '120.6', '13.4', 0),
(271, 280, 100, '2', '124.2', '13.8', 0),
(272, 281, 93, '4', '24', '5.6', 0),
(273, 282, 93, '5', '30', '7', 0),
(274, 283, 93, '6', '36', '8.4', 0),
(275, 284, 93, '4', '24', '5.6', 0),
(276, 285, 93, '2', '12', '2.8', 0),
(277, 286, 93, '5', '30', '7', 0),
(278, 287, 93, '2', '12', '2.8', 0),
(281, 290, 93, '4', '24', '5.6', 0),
(282, 291, 117, '9', '54', '14.4', 0),
(284, 293, 93, '2', '12', '2.8', 0),
(285, 294, 117, '5', '30', '8', 0),
(286, 295, 111, '1', '5', '7', 0),
(287, 296, 93, '2', '12', '2.8', 0),
(288, 297, 115, '5.738', '57.38', '0', 0),
(291, 299, 115, '0.999', '9.99', '0', 0),
(292, 300, 115, '4.064', '40.64', '0', 0),
(293, 301, 115, '1.615', '16.15', '0', 0),
(294, 302, 115, '3.682', '36.82', '0', 0),
(295, 303, 115, '1.072', '10.72', '0', 0),
(296, 304, 114, '3.590', '35.9', '0', 0),
(297, 305, 115, '3.095', '30.95', '0', 0),
(298, 306, 115, '3.095', '30.95', '0', 0),
(299, 307, 117, '6', '36', '9.6', 0),
(300, 308, 111, '1', '5', '7', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`iduser`, `login`, `pass_md5`, `groupe`) VALUES
(1, 'Administrateur', '25f9e794323b453885f5181f1b624d0b', 1),
(4, 'cecliniquesaintleonard', 'b4ea23a368b20bc1623e058f392f1fe4', 1),
(6, 'cecsl', '7f56ea08293af7c4e97501812b4b6f92', 1);

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
  `hors_quota` int(1) NOT NULL,
  `commentaire` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`, `commentaire`) VALUES
(93, 69, 'CINEMA GAUMONT', '01-01-2015', '31-05-2015', '6.00', '1.40', '7.4', '100', '3', 0, ''),
(94, 70, 'CAFE TARIF 2014', '01-01-2015', '31-12-2015', '2.05', '0.00', '2.05', '100', '4', 0, ''),
(95, 70, 'CAFE  DOSETTES 2014', '01-01-2015', '31-12-2015', '3.55', '0.00', '3.55', '100', '10', 0, ''),
(96, 71, 'CARTE ATOUT', '01-01-2015', '31-12-2015', '21.60', '2.80', '24.4', '100', '7', 0, ''),
(97, 71, 'BIOPARC ENFANT', '01-01-2015', '31-12-2015', '10', '4.5', '14.5', '100', '1', 0, ''),
(98, 71, 'CELTIC LEGENDS', '01-01-2015', '07-03-2015', '33.30', '3.70', '37', '100', '0', 0, ''),
(99, 71, 'AUSTRALIAN PINK FLOYD SHOW', '01-01-2015', '30-06-2015', '50.85', '5.65', '56.5', '100', '0', 0, ''),
(100, 71, 'ALAIN SOUCHON', '01-01-2015', '31-12-2015', '62.10', '6.90', '69', '100', '0', 0, ''),
(101, 71, 'SHYM', '01-01-2015', '31-12-2015', '33.30', '3.70', '37', '100', '0', 0, ''),
(102, 69, 'CINEMA 400 COUPS', '01-01-2015', '31-05-2015', '4.39', '0.56', '4.95', '100', '0', 0, ''),
(103, 70, 'CAFE 2015', '01-01-2015', '31-12-2015', '2.15', '0.00', '2.15', '100', '20', 0, ''),
(104, 71, 'BLACK M', '01-01-2015', '31-12-2015', '35.10', '3.90', '39', '100', '0', 0, ''),
(105, 71, 'PLANETE SAUVAGE ADULTES', '01-01-2015', '31-12-2015', '21.15', '2.35', '23.5', '100', '0', 0, ''),
(106, 71, 'PLANETE SAUVAGE ENFANTS', '01-01-2015', '31-12-2015', '15.75', '1.75', '17.5', '100', '0', 0, ''),
(107, 71, 'PARC BADABOUM CIRCUS ENFANTS PLUS DE 2 ANS', '01-01-2015', '31-12-2015', '5.40', '0.60', '6', '100', '0', 0, ''),
(108, 71, 'DISNEY RESORT PARIS  1 JOUR 2 PARCS ADULTES', '01-01-2015', '31-12-2015', '60.30', '6.70', '67', '100', '0', 0, ''),
(109, 72, 'CHEQUE DOMICILE FAMILLE IMPOSABLE ', '01-01-2015', '31-12-2015', '9.91', '2.29', '12.2', '20', '20', 0, ''),
(111, 71, 'CARTE CEZAM OUVRANT DROIT', '01-01-2015', '31-12-2015', '5.00', '7.00', '12', '100', '17', 0, ''),
(113, 73, 'CARTE CEZAM AYANT DROIT', '01-01-2015', '31-12-2015', '2.50', '3.50', '6', '100', '6', 0, ''),
(114, 74, 'PRADEL', '01-01-2015', '31-12-2015', '10', '0', '10', '10000', '9983.535', 0, ''),
(115, 74, 'RIVADIS', '01-01-2015', '31-12-2015', '10', '0', '10', '100000', '999974.928', 0, ''),
(116, 71, 'PARC ASTERIX', '01-01-2015', '31-12-2015', '32.40', '3.60', '36', '5', '5', 0, ''),
(117, 69, 'GAUMONT', '31-01-2015', '31-05-2015', '6â‚¬', '1.60', '7.6', '25', '5', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `produit_fixe`
--

INSERT INTO `produit_fixe` (`idproduitfixe`, `designation`, `date_produit_fixe`, `montant_produit`) VALUES
(28, 'SUBVENTION ASC JANVIER 2015', '13-01-2015', '1616.06'),
(30, 'SOLDE COMPTE ASC AU 31 12 2014', '01-01-2015', '6992.09');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `reg_billet_ayant_droit`
--

INSERT INTO `reg_billet_ayant_droit` (`idregbilletayantdroit`, `idbilletayantdroit`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(26, 28, 3, '2.5', '', 'BOUET (ANNETTE)', '623268163', 0),
(27, 29, 1, '2.5', 'CA', 'SOULET ELODIE', '6615541', 1),
(28, 30, 1, '2.5', 'CM', 'CIBRON CHRISTOPHE', '6265074', 1),
(29, 31, 1, '15.75', 'SG', 'TREMBLAIS CATHERINE', '0002401', 1),
(30, 32, 1, '2.5', 'CA', 'TAUDON CHRISTINE', '7583568', 1),
(31, 33, 1, '10.8', 'CM', 'SOULET ELODIE', '9959250', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=283 ;

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(146, 170, 1, '24', 'CE', 'TELLANGER', '9823959', 0),
(147, 171, 1, '8.2', 'CE', 'TELLANGER', '9823959', 0),
(148, 172, 3, '12', '', 'TAUNAY M LAURE', '272477115', 0),
(149, 173, 1, '12', 'CE', 'LEBAILLYE', '0000027', 0),
(150, 174, 1, '36', 'CM', 'BOUET ANNETTE', '6571572', 0),
(151, 175, 1, '199.8', 'CM', 'BOUET', '6571572', 0),
(152, 176, 1, '24', 'BP', 'MAUSSION', '0000097', 0),
(153, 177, 1, '203.4', 'BP', 'VIVIEN HERVE', '0347105', 0),
(154, 178, 1, '24', 'CM', 'BERTEAU PATRICIA', '5240694', 0),
(155, 179, 3, '24', '', 'THEULIER LAURE', '725000166', 0),
(156, 180, 3, '4.1', '', 'DUPAS FRANCOISE', '913313320', 0),
(157, 181, 3, '6', '', 'PETITEAU SARAH', '982656111', 0),
(158, 182, 3, '6', '', 'OLIVEAU JEAN RENE', '351056703', 0),
(159, 183, 3, '6', '', 'TESSIER FLORENCE', '407549300', 0),
(160, 184, 1, '36', 'CE', 'LE JEAN', '0004554', 0),
(161, 185, 1, '18', 'BP', 'GASTINEAU ISABELLE', '0003066', 0),
(162, 186, 1, '18', 'CIC', 'LE BORGNE CELINE', '5210906', 0),
(163, 187, 1, '12', 'CE', 'RIVEREAU ANNE SOPHIE', '3995487', 0),
(164, 188, 1, '12', 'CE', 'CHARREAU HELENE', '9362062', 0),
(165, 189, 1, '2.15', 'CE', 'CHARREAU HELENE', '9362062', 0),
(166, 190, 1, '12', 'CA', 'MAQUIN CATHERINE ', '3326539', 0),
(167, 191, 1, '6', 'LA POSTE', 'GUIHO ODETTE', '4674053', 0),
(168, 192, 1, '36', 'CE', 'BRARD M PIERRE', '5103889', 0),
(169, 193, 1, '30', 'LCL', 'GAZE CHRISTELLE', '9524903', 1),
(170, 194, 1, '24', 'CM', 'LEGER SONIA', '6905150', 0),
(171, 195, 3, '12', '', 'GASTINEAU ISABELLE', '713187521', 0),
(172, 196, 3, '12', '', 'CHEIGNON AURORE', '487870845', 0),
(173, 197, 3, '12', '', 'GUILLOT Claire', '643854976', 0),
(174, 198, 1, '5', 'CA', 'ROUSSE MARYVONNE', '6828220', 0),
(175, 199, 1, '2.5', 'CA', 'ROUSSE Maryvonne', '6828220', 0),
(176, 200, 1, '12', 'CM', 'BINOT LUCIE', '5271912', 0),
(177, 201, 1, '124.2', 'CA', 'COCHIN YVON', '5140080', 0),
(178, 202, 1, '5', 'CM', 'BOULAY Jennifer', '7384659', 0),
(179, 203, 1, '2.5', 'CM', 'BOULAY Jennifer', '7384659', 0),
(180, 204, 3, '5', '', 'CHARRIER Elena', '793616323', 0),
(181, 205, 3, '5', '', 'CHARRIER Elena', '273327424', 0),
(182, 206, 1, '5', 'CA', 'BORE Marie Pierre', '05354927001', 0),
(183, 207, 1, '2.5', 'CA', 'BORE Marie Pierre', '05354927001', 0),
(184, 208, 3, '12', '', 'CHARRIER Elena', '687282856', 0),
(185, 209, 3, '4.1', '', 'TREMBLAIS', '277348119', 0),
(186, 210, 3, '30', '', 'TAUNAY M Laure', '568464359', 0),
(187, 211, 1, '18', 'CA', 'LATONELLE Anne', '4267947', 0),
(188, 212, 1, '6', 'BP', 'DENECHERE Pascale', '0141773', 0),
(189, 213, 1, '12', 'BOURSORAMA', 'CHEIGNON Aurore', '8310544', 0),
(190, 214, 1, '33.3', 'BOURSORAMA', 'CHEIGNON Aurore', '8310545', 0),
(191, 215, 1, '12', 'CE', 'PERDRIAU Carine', '0000030', 0),
(192, 216, 1, '12', 'LA POSTE', 'TESSIE Francoise', '4653012', 0),
(193, 217, 1, '84', 'CA', 'SEHAQUI M Therese', '9407352', 0),
(194, 218, 1, '18', 'LA POSTE', 'BOUTREUX Anne Sophie', '4644063', 0),
(195, 219, 1, '35.12', 'LA POSTE', 'BOUTREUX Anne sophie', '4644063', 0),
(196, 220, 1, '24', 'CE', 'BONFILS Cecile', '7588051', 0),
(197, 221, 1, '42', 'CE', 'GERARD Alexandra', '0008342', 0),
(198, 222, 1, '18', 'CA', 'BEAUMONT Bernadette', '0681524', 0),
(199, 224, 1, '24', 'CM', 'BERTEAU Patricia', '5240695', 0),
(200, 225, 1, '60', 'CA', 'PASCUITO Isabelle', '5668279', 0),
(201, 226, 3, '5', '', 'DELAUNAY Dominique', '560063069', 0),
(202, 227, 3, '5', '', 'HUIN Sylvie', '690930783', 0),
(203, 228, 3, '5', '', 'BOUET annette', '658183630', 0),
(204, 229, 3, '5', '', 'SEHAQUI M.THERESE', '503509468', 0),
(205, 230, 1, '5', 'CA', 'SOULET ELODIE', '6615541', 0),
(206, 231, 1, '7.1', 'CE', 'JULIENNE THEO', '0000261', 0),
(207, 232, 1, '5', 'CM', 'CIBRON CHRISTOPHE', '6265074', 0),
(208, 233, 1, '18', 'BPA', 'MENDONCA', '0590234', 0),
(209, 234, 1, '18', 'BPA', 'GASTINEAU', '0003084', 0),
(210, 235, 1, '24', 'BPA', 'SOURISSEAU', '00001698', 0),
(211, 236, 1, '24', 'CE', 'BONFILS', '7588057', 0),
(212, 237, 3, '24', '', 'FRANCFORT CATHERINE', '975740865', 0),
(213, 238, 3, '12', '', 'BEAUMONT BERNADETTE', '508619523', 0),
(214, 239, 1, '42', 'CA', 'LATONNELLE ANNE', '4267949', 0),
(215, 240, 1, '6', 'LA POSTE', 'GUIHO ODETTE', '4674058', 0),
(216, 241, 1, '24', 'SG', 'TREMBLAIS CATHERINE', '0002401', 1),
(217, 242, 1, '42.3', 'SG', 'TREMBLAIS CATHERINE', '0002401', 1),
(218, 243, 1, '97.8', 'CA', 'SEHAQUI', '9407351', 1),
(219, 245, 1, '30.95', 'CE', 'LEMASSON', '1546378', 1),
(220, 246, 1, '30', 'CA', 'THEULIER LAURE', '5225914', 0),
(221, 247, 1, '24', 'BP', 'PRUNEAU-CAZER CAROLINE', '0000410', 0),
(222, 248, 1, '24', 'CA', 'MOREAU', '318270', 0),
(223, 249, 1, '24', 'CM', 'PIEL GUYLAINE', '5308838', 0),
(224, 250, 1, '36', 'CA', 'GILBERT LUCIE', '5411145', 0),
(225, 251, 3, '24', '', 'ABID', '431665164', 0),
(226, 252, 3, '2.05', '', 'MAUSSION CHRISTINE', '651070353', 0),
(227, 253, 3, '4.3', '', 'MAUSSION CHRISTINE', '484030961', 0),
(228, 254, 3, '7.1', '', 'BEAUMONT BERNADETTE', '979124822', 0),
(229, 255, 1, '36', 'CE', 'RUBIO G.MICHEL', '6718971', 1),
(230, 256, 1, '198.2', 'CE', 'RUBIO G.MICHEL', '6718971', 1),
(231, 257, 1, '198.2', 'CE', 'CHAILLOU SANDRA', '0002412', 1),
(232, 258, 1, '30', 'BNP', 'YVON ANAELLE', '5888598', 0),
(233, 259, 1, '36', 'CE', 'LEBAILLY EMILIE', '0000039', 0),
(234, 260, 1, '12', 'CM', 'GAUDELET MARYLINE', '5439121', 0),
(235, 261, 1, '5', 'LA POSTE', 'GUIHO ODETTE', '4674060', 0),
(236, 262, 1, '6', 'CA', 'ROUSSE MARYVONNE', '0127334', 0),
(237, 263, 1, '12', 'BP', 'DENECHERE PASCALE', '0141780', 0),
(238, 264, 1, '30', 'LCL', 'LE CALVEZ JOCELINE', '0267678', 0),
(239, 265, 3, '70.2', '', 'THEULIER LAURE', '122323174', 0),
(240, 266, 3, '30', '', 'CIBRON', '404323852', 0),
(241, 267, 3, '2.15', '', 'INCONNU', '952567975', 0),
(242, 269, 3, '24', '', 'TESSIER FLORENCE', '845889920', 0),
(243, 270, 3, '24', '', 'ABID/PLANCHENEAU SYLVIE', '887579092', 0),
(244, 271, 3, '7.13', '', 'BEAUMONT BERNADETTE', '422866622', 0),
(245, 272, 1, '30', 'LCL', 'GAZE CHRISTELLE', '9524908', 0),
(246, 273, 1, '66', 'BPA', 'GASTINEAU ISABELLE', '0003090', 1),
(247, 274, 1, '12', 'BNP', 'DIJOLS CHRISTINE', '7414678', 1),
(248, 275, 1, '36', 'CA', 'CHEVREUX MELANIE', '4517940', 1),
(249, 276, 1, '18', 'BPA', 'DENECHERE PASCALE', '0141781', 1),
(251, 277, 1, '12', 'CA', 'SOULET ELODIE', '9959250', 1),
(252, 278, 1, '10.8', 'CA', 'SOULET ELODIE', '9959250', 0),
(253, 279, 1, '120.6', 'CM', 'BOULAY JENNYFER', '7384660', 1),
(254, 280, 1, '124.2', 'CM', 'HENNE TERESA', '3289224', 1),
(255, 281, 1, '24', 'SG', 'SEGARRA AGNES', '0000737', 1),
(256, 282, 1, '30', 'LA POSTE', 'MOREAU PASCALE', '4583031', 1),
(257, 283, 1, '36', 'BNP', 'PICVALERIEHERIT ', '5749877', 0),
(258, 284, 1, '24', 'CE', 'LASNE ALLISON', '0000395', 1),
(259, 285, 1, '12', 'BPA', 'LECLERC CAROLINE', '0000149', 1),
(260, 286, 1, '30', 'BPA', 'DELAREUX ISABELLE', '0000271', 1),
(261, 287, 1, '12', 'CE', 'BONFILS CECILE', '7588063', 1),
(262, 288, 1, '5', 'CA', 'TAUDON CHRISTINE', '7583568', 1),
(263, 289, 1, '2.5', 'CA', 'TAUDON CHRISTINE', '7583568', 1),
(264, 290, 1, '24', 'CM', 'BERTEAU PATRICIA', '5240698', 1),
(265, 291, 1, '54', 'CE', 'GERARD ALEXANDRA', '0008347', 1),
(266, 292, 1, '12', 'CE', 'PERDRIAU CARINE', '0000033', 1),
(267, 293, 1, '12', 'LA POSTE', 'LE GAL BARBARA', '4597016', 1),
(268, 294, 1, '30', 'CM', 'LEGER SONIA', '7015558', 1),
(269, 295, 1, '5', 'CA', 'TAUDON CHRISTINE', '7583568', 0),
(270, 296, 1, '12', 'CE', 'PERDRIAU CARINE', '0000033', 0),
(271, 297, 1, '57.38', 'CA', 'ROYER CATHERINE', '53096378', 0),
(272, 298, 1, '16.65', 'CA', 'PITHON ADELINE', '0797822', 1),
(273, 299, 1, '9.99', 'BPA', 'LECOMTE LUDIVINE', '0000343', 0),
(274, 300, 1, '40.64', 'LA POSTE', 'MOREAU PASCALE', '4583032', 0),
(275, 301, 1, '16.15', 'SG', 'SEGARRA AGNES', '0000738', 1),
(276, 302, 1, '36.82', 'CE', 'OLIVEIRA CECILE', '8369238', 0),
(277, 303, 1, '10.72', 'CE', 'LEBAILLY EMILIE', '0000086', 0),
(278, 304, 1, '35.9', 'CA', 'RABOUAN MICHEL', '7003264', 0),
(279, 305, 1, '30.95', 'CE', 'LEMASSON', '1546378', 0),
(280, 306, 1, '30.95', 'CE', 'OLIVEIRA CECILE', '8369238', 0),
(281, 307, 1, '36', 'BNP', 'DIJOLS CHRISTINE', '7414678', 1),
(282, 308, 3, '5', '', 'MALINGE ANICETTE', '382197941', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Contenu de la table `remise_banque`
--

INSERT INTO `remise_banque` (`idremisebanque`, `date_remise`, `type_remise`, `num_remise`, `montant_remise`, `valid`) VALUES
(43, '07-01-2015', 1, '6165238', '295.6', 1),
(44, '13-01-2015', 1, '6165240', '182.15', 1),
(46, '30-01-2015', 1, '6165243', '312.3', 1),
(47, '30-01-2015', 1, '6165244', '327.32', 1),
(48, '11-02-2015', 1, '6165245', '166.1', 1),
(49, '11-2-2015', 1, '6165246', '165.3', 1),
(50, '17-02-2015', 1, '6859737', '131', 1),
(51, '12-02-2015', 1, '6165248', '138', 1),
(56, '07-03-2015', 1, '6859740', '184.8', 1),
(57, '07-03-2015', 1, '6859742', '154.3', 1),
(58, '07-03-2015', 1, '6859739', '683.8', 1),
(59, '07-03-2015', 1, '6859741', '390.2', 1);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=332 ;

--
-- Contenu de la table `remise_banque_chq`
--

INSERT INTO `remise_banque_chq` (`idremisebanquechq`, `idremisebanque`, `idreglementventepresta`) VALUES
(209, 43, 153),
(210, 43, 152),
(211, 43, 154),
(212, 43, 149),
(213, 43, 146),
(214, 43, 147),
(215, 44, 169),
(216, 44, 166),
(217, 44, 167),
(218, 44, 168),
(219, 44, 161),
(220, 44, 164),
(221, 44, 165),
(222, 44, 160),
(223, 44, 163),
(224, 44, 162),
(225, 46, 174),
(226, 46, 170),
(227, 46, 176),
(228, 46, 178),
(229, 46, 182),
(230, 46, 187),
(231, 46, 151),
(232, 46, 150),
(233, 46, 175),
(234, 46, 179),
(235, 46, 183),
(236, 47, 188),
(237, 47, 189),
(238, 47, 191),
(239, 47, 192),
(240, 47, 193),
(241, 47, 194),
(242, 47, 195),
(243, 47, 196),
(244, 47, 177),
(245, 48, 206),
(246, 48, 200),
(247, 48, 154),
(248, 48, 198),
(249, 48, 197),
(250, 48, 207),
(251, 48, 205),
(252, 48, 28),
(253, 48, 27),
(254, 49, 190),
(255, 49, 214),
(256, 49, 215),
(257, 49, 210),
(258, 49, 209),
(259, 49, 211),
(260, 49, 208),
(261, 50, 238),
(262, 50, 237),
(263, 50, 232),
(264, 50, 233),
(265, 50, 234),
(266, 50, 235),
(267, 50, 236),
(268, 51, 223),
(269, 51, 224),
(270, 51, 222),
(271, 51, 221),
(272, 51, 220),
(299, 56, 169),
(300, 56, 246),
(301, 56, 249),
(302, 56, 247),
(303, 56, 248),
(304, 56, 251),
(305, 56, 31),
(306, 57, 267),
(307, 57, 266),
(308, 57, 265),
(309, 57, 264),
(310, 57, 262),
(311, 57, 263),
(312, 57, 261),
(313, 57, 275),
(314, 57, 272),
(315, 58, 268),
(316, 58, 253),
(317, 58, 219),
(318, 58, 218),
(319, 58, 231),
(320, 58, 217),
(321, 58, 29),
(322, 58, 254),
(323, 58, 216),
(324, 59, 255),
(325, 59, 229),
(326, 59, 230),
(327, 59, 256),
(328, 59, 260),
(329, 59, 259),
(330, 59, 258),
(331, 59, 281);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE IF NOT EXISTS `remise_banque_esp` (
`idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=222 ;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`) VALUES
(1, '', 2, 'ABELLARD', 'Marion', '', '', '', '', '', '', '', '', '19/06/2014', '', '', '', '', '', 'CDD', 1),
(2, '', 2, 'AILLERIE', 'Myriam', '', '', '', '', '', '', '', '', '07/01/2003', '', '', '', '', '', 'CDI', 1),
(3, '', 2, 'AMARA', 'Nadia', '', '', '', '', '', '', '', '', '11/12/2007', '', '', '', '', '', 'CDI', 1),
(4, '', 1, 'ANTIER', 'Sylvie', '', '', '', '', '', '', '', '', '06/05/2013', '', '', '', '', '', 'CDI', 1),
(5, '', 2, 'AUGUET', 'Joelle', '', '', '', '', '', '', '', '', '21/09/2000', '', '', '', '', '', 'CDI', 1),
(6, '', 2, 'BAILLY', 'Michelle', '', '', '', '', '', '', '', '', '26/06/1990', '', '', '', '', '', 'CDI', 1),
(7, '', 2, 'BEAUMONT', 'Bernadette', '', '', '', '', '', '', '', '', '05/04/1988', '', '', '', '', '', 'CDI', 1),
(8, '', 1, 'BEAUVAIS', 'Nicolas', '', '', '', '', '', '', '', '', '02/09/2013', '', '', '', '', '', 'CDD', 1),
(9, '', 2, 'BELLOIS', 'Karine', '', '', '', '', '', '', '', '', '19/02/2014', '', '', '', '', '', 'CDD', 1),
(10, '', 1, 'BENIER', 'Marie Dominique', '', '', '', '', '', '', '', '', '25/01/1973', '31-01-2015', '', '', '', 'RETRAITE', 'CDI', 1),
(11, '', 2, 'BERTEAU', 'Patricia', '', '', '', '', '', '', '', '', '05/12/2011', '', '', '', '', '', 'CDI', 1),
(12, '', 2, 'BERTRAND', 'Erika', '', '', '', '', '', '', '', '', '22/04/2013', '', '', '', '', '', 'CDI', 1),
(13, '', 2, 'BIBARD', 'Audrey', '', '', '', '', '', '', '', '', '22/06/2009', '', '', '', '', '', 'CDI', 1),
(14, '', 2, 'BIGOT', 'Louise', '', '', '', '', '', '', '', '', '13/02/2014', '', '', '', '', '', 'CDD', 1),
(15, '', 2, 'BINOT', 'Lucie', '', '', '', '', '', '', '', '', '26/04/2004', '', '', '', '', '', 'CDI', 1),
(16, '', 2, 'BIZMAOUI PAPIN', 'Myriam', '', '', '', '', '', '', '', '', '02/04/2008', '', '', '', '', '', 'CDI', 1),
(17, '', 2, 'BLAITEAU', 'Dalila', '', '', '', '', '', '', '', '', '07/08/1996', '', '', '', '', '', 'CDI', 1),
(18, '', 2, 'BLEZ', 'Manon', '', '', '', '', '', '', '', '', '05/09/2013', '', '', '', '', '', 'CDI', 1),
(19, '', 2, 'BOIS', 'Marie', '', '', '', '', '', '', '', '', '02/12/2010', '', '', '', '', '', 'CDI', 1),
(20, '', 2, 'BONFILS', 'Cecile', '', '', '', '', '', '', '', '', '17/06/1997', '', '', '', '', '', 'CDI', 1),
(21, '', 2, 'BONNARDE', 'Armelle', '', '', '', '', '', '', '', '', '20/07/2011', '', '', '', '', '', 'CDI', 1),
(22, '', 2, 'BORE', 'Marie Pierre', '', '', '', '', '', '', '', '', '15/01/1997', '', '', '', '', '', 'CDI', 1),
(23, '', 2, 'BOSSU', 'Catherine', '', '', '', '', '', '', '', '', '01/02/2014', '', '', '', '', '', 'CDD', 1),
(24, '', 2, 'BOUET', 'Annette', '', '', '', '', '', '', '', '', '26/05/2005', '', '', '', '', '', 'CDI', 1),
(25, '', 2, 'BOULAY', 'Jennifer', '', '', '', '', '', '', '', '', '28/08/2013', '', '', '', '', '', 'CDD', 1),
(26, '', 1, 'BOURGAUD', 'Mickael', '', '', '', '', '', '', '', '', '03/01/2007', '', '', '', '', '', 'CDI', 1),
(27, '', 1, 'BOURGET', 'Louis', '', '', '', '', '', '', '', '', '20/06/2014', '', '', '', '', '', 'CDD', 1),
(28, '', 1, 'BOUTIN', 'David', '', '', '', '', '', '', '', '', '29/11/2013', '', '', '', '', '', 'CDD', 1),
(29, '', 2, 'BOUTREUX', 'Anne Sophie', '', '', '', '', '', '', '', '', '27/08/2013', '', '', '', '', '', 'CDD', 1),
(30, '', 2, 'BRARD', 'Marie Pierre', '', '', '', '', '', '', '', '', '02/06/2008', '', '', '', '', '', 'CDI', 1),
(31, '', 2, 'BRISSY', 'Helene', '', '', '', '', '', '', '', '', '03/10/2011', '', '', '', '', '', 'CDI', 1),
(32, '', 2, 'BUSH', 'Magali', '', '', '', '', '', '', '', '', '04/09/2013', '', '', '', '', '', 'CDD', 1),
(33, '', 2, 'CADELE', 'Marie Claude', '', '', '', '', '', '', '', '', '28/02/2007', '', '', '', '', '', 'CDI', 1),
(34, '', 2, 'CARRE', 'Audrey', '', '', '', '', '', '', '', '', '03/10/2012', '', '', '', '', '', 'CDI', 1),
(35, '', 2, 'CAYRE', 'St?phanie', '', '', '', '', '', '', '', '', '14/04/2014', '', '', '', '', '', 'CDD', 1),
(36, '', 1, 'CHAILLAND', 'Pierre', '', '', '', '', '', '', '', '', '05/06/2013', '', '', '', '', '', 'CDD', 1),
(37, '', 1, 'CHAILLAND', 'Julien', '', '', '', '', '', '', '', '', '02/01/2006', '', '', '', '', '', 'CDI', 1),
(38, '', 2, 'CHAILLOU', 'Sandra', '', '', '', '', '', '', '', '', '13/09/1999', '', '', '', '', '', 'CDI', 1),
(39, '', 2, 'CHALLIER', 'Jacqueline', '1Rue Rosa Parks', '', '49130', 'Les Ponts de C&eacute;', '', '', '', '', '10/06/2010', '', '', '', '', '', 'CDI', 1),
(40, '', 1, 'CHAMPIGNY', 'Antoine', '', '', '', '', '', '', '', '', '10/01/2011', '', '', '', '', '', 'CDI', 1),
(41, '', 2, 'CHARREAU', 'Helene', '', '', '', '', '', '', '', '', '04/01/1989', '', '', '', '', '', 'CDI', 1),
(42, '', 2, 'CHARRIER', 'Elena', '', '', '', '', '', '', '', '', '24/11/2003', '', '', '', '', '', 'CDI', 1),
(43, '', 2, 'CHARTIER', 'Brigitte', '', '', '', '', '', '', '', '', '24/01/1977', '', '', '', '', '', 'CDI', 1),
(44, '', 2, 'CHATEAU', 'Sandrine', '', '', '', '', '', '', '', '', '09/01/2006', '', '', '', '', '', 'CDI', 1),
(45, '', 2, 'CHEIGNON', 'Aurore', '', '', '', '', '', '', '', '', '23/09/1993', '', '', '', '', '', 'CDI', 1),
(46, '', 2, 'CHEVREUX', 'Melanie', '', '', '', '', '', '', '', '', '30/06/2011', '', '', '', '', '', 'CDI', 1),
(47, '', 2, 'CHEVRIER', 'B?atrice', '', '', '', '', '', '', '', '', '12/09/2011', '', '', '', '', '', 'CDI', 1),
(48, '', 1, 'CIBRON', 'Christophe', '', '', '', '', '', '', '', '', '15/03/1993', '', '', '', '', '', 'CDI', 1),
(49, '', 2, 'CLOUTOT', 'Sophie', '', '', '', '', '', '', '', '', '12/10/1998', '', '', '', '', '', 'CDI', 1),
(50, '', 1, 'COCHIN', 'Yvon', '', '', '', '', '', '', '', '', '30/07/2012', '', '', '', '', '', 'CDI', 1),
(51, '', 1, 'COIGNARD', 'Jeremy', '', '', '', '', '', '', '', '', '20/10/2011', '', '', '', '', '', 'CDD', 1),
(52, '', 2, 'COLAISSEAU', 'Christine', '', '', '', '', '', '', '', '', '12/03/2010', '', '', '', '', '', 'CDI', 1),
(53, '', 2, 'CORVE', 'Gilberte', '', '', '', '', '', '', '', '', '24/03/2001', '', '', '', '', '', 'CDI', 1),
(54, '', 2, 'COTTENCEAU', 'Monique', '', '', '', '', '', '', '', '', '17/09/2004', '', '', '', '', '', 'CDI', 1),
(55, '', 2, 'COURCELLE', 'Pauline', '', '', '', '', '', '', '', '', '10/02/2014', '', '', '', '', '', 'CDD', 1),
(56, '', 2, 'CRANSAC', 'Christel', '', '', '', '', '', '', '', '', '08/04/2011', '', '', '', '', '', 'CDI', 1),
(57, '', 2, 'DABOUDET', 'Valerie', '', '', '', '', '', '', '', '', '09/05/2005', '', '', '', '', '', 'CDI', 1),
(58, '', 2, 'DAVY', 'Katia', '', '', '', '', '', '', '', '', '30/03/1995', '', '', '', '', '', 'CDI', 1),
(59, '', 2, 'DELAREUX', 'Isabelle', '', '', '', '', '', '', '', '', '02/01/1984', '', '', '', '', '', 'CDI', 1),
(60, '', 2, 'DELAUNAY', 'Dominique', '', '', '', '', '', '', '', '', '01/11/2008', '', '', '', '', '', 'CDI', 1),
(61, '', 1, 'DELEMME', 'Anthony', '', '', '', '', '', '', '', '', '01/11/2008', '', '', '', '', '', 'CDI', 1),
(62, '', 2, 'DENANCE', 'Claudia', '', '', '', '', '', '', '', '', '01/08/1973', '', '', '', '', '', 'CDI', 1),
(63, '', 2, 'DENECHERE', 'Pascale', '', '', '', '', '', '', '', '', '28/11/1995', '', '', '', '', '', 'CDI', 1),
(64, '', 1, 'DEROUET', 'Jerome', '', '', '', '', '', '', '', '', '24/02/1995', '', '', '', '', '', 'CDI', 1),
(65, '', 2, 'DESCHRYVER', 'Elisabeth', '', '', '', '', '', '', '', '', '01/06/2007', '', '', '', '', '', 'CDI', 1),
(66, '', 2, 'DEVAUD', 'Sandrine', '', '', '', '', '', '', '', '', '02/10/2000', '', '', '', '', '', 'CDI', 1),
(67, '', 2, 'DIJOLS', 'Christine', '', '', '', '', '', '', '', '', '02/05/2011', '', '', '', '', '', 'CDI', 1),
(68, '', 2, 'DOISNEAU', 'Geraldine', '', '', '', '', '', '', '', '', '03/01/1994', '', '', '', '', '', 'CDI', 1),
(69, '', 2, 'DONEAU', 'Emilie', '', '', '', '', '', '', '', '', '12/12/2011', '', '', '', '', '', 'CDI', 1),
(70, '', 2, 'DOUET', 'Charline', '', '', '', '', '', '', '', '', '10/09/2009', '', '', '', '', '', 'CDI', 1),
(71, '', 2, 'DUPAS', 'FranÃ§oise', '', '', '', '', '', '', '', '', '18/08/1997', '', '', '', '', '', 'CDI', 1),
(72, '', 2, 'DURAND CHATTON', 'Pascale', '', '', '', '', '', '', '', '', '02/12/2004', '', '', '', '', '', 'CDI', 1),
(73, '', 2, 'ELOBO', 'Renee', '', '', '', '', '', '', '', '', '15/02/2012', '', '', '', '', '', 'CDI', 1),
(74, '', 1, 'ESNAULT', 'Claude', '', '', '', '', '', '', '', '', '28/05/1984', '', '', '', '', '', 'CDI', 1),
(75, '', 2, 'FERRAND', 'Mauricette', '', '', '', '', '', '', '', '', '27/11/2008', '', '', '', '', '', 'CDI', 1),
(76, '', 2, 'FLEURY', 'Marylene', '', '', '', '', '', '', '', '', '22/02/2010', '', '', '', '', '', 'CDI', 1),
(77, '', 2, 'FOUBLE', 'Camille', '', '', '', '', '', '', '', '', '23/09/2013', '', '', '', '', '', 'CDI', 1),
(78, '', 2, 'FOUQUERAY', 'Edwige', '', '', '', '', '', '', '', '', '05/12/2011', '', '', '', '', '', 'CDI', 1),
(79, '', 2, 'FOUQUET', 'Chantal', '', '', '', '', '', '', '', '', '01/04/2010', '', '', '', '', '', 'CDI', 1),
(80, '', 1, 'FRABOULET', 'Jean Yves', '', '', '', '', '', '', '', '', '24/04/2012', '', '', '', '', '', 'CDI', 1),
(81, '', 2, 'FRANCFORT', 'Catherine', '', '', '', '', '', '', '', '', '15/10/2008', '', '', '', '', '', 'CDI', 1),
(82, '', 2, 'GASTINEAU', 'Isabelle', '', '', '', '', '', '', '', '', '19/03/2002', '', '', '', '', '', 'CDI', 1),
(83, '', 2, 'GAUDELET', 'Maryline', '', '', '', '', '', '', '', '', '01/12/1981', '', '', '', '', '', 'CDI', 1),
(84, '', 2, 'GAUTHIER', 'Emeline', '', '', '', '', '', '', '', '', '12/03/2014', '', '', '', '', '', 'CDD', 1),
(85, '', 2, 'GERARD', 'Alexandra', '', '', '', '', '', '', '', '', '26/10/1999', '', '', '', '', '', 'CDI', 1),
(86, '', 2, 'GESLIN', 'Sarah', '', '', '', '', '', '', '', '', '20/01/2003', '', '', '', '', '', 'CDI', 1),
(87, '', 2, 'GILBERT', 'Lucie', '', '', '', '', '', '', '', '', '02/07/2013', '', '', '', '', '', 'CDI', 1),
(88, '', 2, 'GILET', 'Brigitte', '', '', '', '', '', '', '', '', '10/03/1983', '', '', '', '', '', 'CDI', 1),
(89, '', 2, 'GISLARD', 'Catherine', '', '', '', '', '', '', '', '', '04/07/2007', '', '', '', '', '', 'CDI', 1),
(90, '', 2, 'GODIN', 'St?phanie', '', '', '', '', '', '', '', '', '06/02/2014', '', '', '', '', '', 'CDD', 1),
(91, '', 1, 'GOHIER', 'Simon', '', '', '', '', '', '', '', '', '29/06/2013', '', '', '', '', '', 'CDD', 1),
(92, '', 2, 'GOURMAUD', 'Delphine', '', '', '', '', '', '', '', '', '03/03/2010', '', '', '', '', '', 'CDI', 1),
(93, '', 1, 'GRAU', 'Cecilio', '', '', '', '', '', '', '', '', '01/12/2010', '', '', '', '', '', 'CDI', 1),
(94, '', 2, 'GRIFFON', 'Carine', '', '', '', '', '', '', '', '', '06/04/2009', '', '', '', '', '', 'CDI', 1),
(95, '', 2, 'GUEGAN', 'Cecilia', '', '', '', '', '', '', '', '', '18/10/2005', '', '', '', '', '', 'CDI', 1),
(96, '', 2, 'GUIHO', 'Odette', '', '', '', '', '', '', '', '', '10/02/1998', '', '', '', '', '', 'CDI', 1),
(97, '', 2, 'GUILLOT', 'Claire', '', '', '', '', '', '', '', '', '11/10/2010', '', '', '', '', '', 'CDI', 1),
(98, '', 1, 'HAISSANT', 'Thibaud', '', '', '', '', '', '', '', '', '05/07/2007', '', '', '', '', '', 'CDI', 1),
(99, '', 1, 'HAMON', 'Olivier', '', '', '', '', '', '', '', '', '23/04/2014', '', '', '', '', '', 'CDD', 1),
(100, '', 2, 'HEBBACHE', 'Michelle', '', '', '', '', '', '', '', '', '19/09/1977', '', '', '', '', '', 'CDI', 1),
(101, '', 2, 'HENNE', 'Teresa', '', '', '', '', '', '', '', '', '07/02/2011', '', '', '', '', '', 'CDI', 1),
(102, '', 2, 'HERANVAL', 'Malvina', '', '', '', '', '', '', '', '', '15/07/2013', '', '', '', '', '', 'CDI', 1),
(103, '', 1, 'HERAUD', 'Pierre', '', '', '', '', '', '', '', '', '20/07/2011', '', '', '', '', '', 'CDI', 1),
(104, '', 2, 'HODET', 'Martine', '', '', '', '', '', '', '', '', '01/02/2014', '', '', '', '', '', 'CDI', 1),
(105, '', 2, 'HUAU', 'Carine', '', '', '', '', '', '', '', '', '03/10/2011', '', '', '', '', '', 'CDI', 1),
(106, '', 1, 'HUGARD', 'Jacques', '', '', '', '', '', '', '', '', '20/08/2009', '', '', '', '', '', 'CDI', 1),
(107, '', 2, 'HUIN', 'Sylvie', '', '', '', '', '', '', '', '', '01/02/2011', '', '', '', '', '', 'CDI', 1),
(108, '', 2, 'JAMOTEAU', 'Adeline', '', '', '', '', '', '', '', '', '18/01/2010', '', '', '', '', '', 'CDI', 1),
(109, '', 2, 'JARRY FAURANT', 'Anne', '', '', '', '', '', '', '', '', '23/06/2003', '', '', '', '', '', 'CDI', 1),
(110, '', 2, 'JEMIN', 'Christine', '', '', '', '', '', '', '', '', '11/08/1975', '', '', '', '', '', 'CDI', 1),
(111, '', 1, 'JEMIN', 'Dany', '', '', '', '', '', '', '', '', '23/01/2014', '', '', '', '', '', 'CDD', 1),
(112, '', 2, 'JOUAN', 'Fanny', '', '', '', '', '', '', '', '', '02/05/2011', '', '', '', '', '', 'CDI', 1),
(113, '', 2, 'JOUANNEAU', 'Carole', '', '', '', '', '', '', '', '', '28/09/2010', '', '', '', '', '', 'CDI', 1),
(114, '', 2, 'JOURNIAC', 'Adeline', '', '', '', '', '', '', '', '', '31/12/2007', '', '', '', '', '', 'CDI', 1),
(115, '', 1, 'JUGUET', 'Philippe', '', '', '', '', '', '', '', '', '19/03/2012', '', '', '', '', '', 'CDI', 1),
(116, '', 2, 'JURET', 'Marlene', '', '', '', '', '', '', '', '', '23/05/2005', '', '', '', '', '', 'CDI', 1),
(117, '', 2, 'KIMBOROWICZ', 'Elodie', '', '', '', '', '', '', '', '', '15/10/2012', '', '', '', '', '', 'CDI', 1),
(118, '', 2, 'LAMY', 'Nathalie', '', '', '', '', '', '', '', '', '01/12/2003', '', '', '', '', '', 'CDI', 1),
(119, '', 1, 'LANNIER', 'Yann', '', '', '', '', '', '', '', '', '13/03/2010', '', '', '', '', '', 'CDI', 1),
(120, '', 2, 'LARCIER', 'Guylaine', '', '', '', '', '', '', '', '', '03/07/1997', '', '', '', '', '', 'CDI', 1),
(121, '', 2, 'LASNE', 'Allison', '', '', '', '', '', '', '', '', '02/07/2007', '', '', '', '', '', 'CDI', 1),
(122, '', 2, 'LATONNELLE', 'Anne', '', '', '', '', '', '', '', '', '11/12/2006', '', '', '', '', '', 'CDI', 1),
(123, '', 2, 'LE BORGNE', 'Celine', '', '', '', '', '', '', '', '', '12/01/2012', '', '', '', '', '', 'CDI', 1),
(124, '', 2, 'LE CALVEZ', 'Jocelyne', '', '', '', '', '', '', '', '', '08/10/2002', '', '', '', '', '', 'CDI', 1),
(125, '', 2, 'LE CALVEZ', 'Marine', '', '', '', '', '', '', '', '', '29/01/2012', '', '', '', '', '', 'CDI', 1),
(126, '', 2, 'LE GAL', 'Barbara', '', '', '', '', '', '', '', '', '27/05/2003', '', '', '', '', '', 'CDI', 1),
(127, '', 1, 'LE JEAN', 'GaÃ«l', '', '', '', '', '', '', '', '', '01/10/2012', '', '', '', '', '', 'CDI', 1),
(128, '', 2, 'LEBAILLY', 'Emilie', '', '', '', '', '', '', '', '', '07/09/2010', '', '', '', '', '', 'CDI', 1),
(129, '', 1, 'LEBLANC', 'Pascal', '', '', '', '', '', '', '', '', '01/07/2004', '', '', '', '', '', 'CDI', 1),
(130, '', 2, 'LECLERC', 'Caroline', '', '', '', '', '', '', '', '', '26/11/2009', '', '', '', '', '', 'CDI', 1),
(131, '', 2, 'LECOMTE', 'Ludivine', '', '', '', '', '', '', '', '', '09/02/2004', '', '', '', '', '', 'CDI', 1),
(132, '', 2, 'LEGER', 'Sonia', '', '', '', '', '', '', '', '', '06/12/1994', '', '', '', '', '', 'CDI', 1),
(133, '', 2, 'LELIEVRE', 'Isabelle', '', '', '', '', '', '', '', '', '10/07/1989', '', '', '', '', '', 'CDI', 1),
(134, '', 2, 'LENOGUE', 'Angelique', '', '', '', '', '', '', '', '', '05/11/2004', '', '', '', '', '', 'CDI', 1),
(135, '', 2, 'LESAGE', 'Catherine', '', '', '', '', '', '', '', '', '18/11/2000', '', '', '', '', '', 'CDI', 1),
(136, '', 1, 'LOISEL', 'Nicolas', '', '', '', '', '', '', '', '', '10/04/2003', '', '', '', '', '', 'CDI', 1),
(137, '', 2, 'LOPEZ DE CARVALHO', 'Nathalie', '', '', '', '', '', '', '', '', '10/06/2014', '', '', '', '', '', 'CDD', 1),
(138, '', 2, 'LORINQUER', 'Pauline', '', '', '', '', '', '', '', '', '07/07/2008', '', '', '', '', '', 'CDD', 1),
(139, '', 2, 'LORINQUER', 'Melanie', '', '', '', '', '', '', '', '', '14/11/2005', '', '', '', '', '', 'CDI', 1),
(140, '', 1, 'LUCAS', 'Jean Michel', '', '', '', '', '', '', '', '', '13/10/2008', '', '', '', '', '', 'CDI', 1),
(141, '', 2, 'MALINGE', 'Anicette', '', '', '', '', '', '', '', '', '27/01/2014', '', '', '', '', '', 'CDD', 1),
(142, '', 1, 'MARAUD', 'Philippe', '', '', '', '', '', '', '', '', '30/08/2010', '', '', '', '', '', 'CDI', 1),
(143, '', 2, 'MARTINEAU', 'Laure Anne', '', '', '', '', '', '', '', '', '04/01/2011', '', '', '', '', '', 'CDI', 1),
(144, '', 2, 'MAUDET', 'Delphine', '', '', '', '', '', '', '', '', '17/08/2009', '', '', '', '', '', 'CDI', 1),
(145, '', 2, 'MAUSSION', 'Christine', '', '', '', '', '', '', '', '', '16/11/1993', '', '', '', '', '', 'CDI', 1),
(146, '', 2, 'MBIDA', 'Martine', '', '', '', '', '', '', '', '', '16/01/1995', '', '', '', '', '', 'CDI', 1),
(147, '', 2, 'MEIGNAN', 'Claudia', '', '', '', '', '', '', '', '', '22/02/1996', '', '', '', '', '', 'CDI', 1),
(148, '', 2, 'MENANT', 'Sylvie', '', '', '', '', '', '', '', '', '04/02/2008', '', '', '', '', '', 'CDI', 1),
(149, '', 2, 'MENARD', 'Chloe', '', '', '', '', '', '', '', '', '23/04/2013', '', '', '', '', '', 'CDI', 1),
(150, '', 2, 'MENDONCA', 'Maria Fernanda', '', '', '', '', '', '', '', '', '01/02/1996', '', '', '', '', '', 'CDI', 1),
(151, '', 2, 'MERCEREAU', 'Aude', '', '', '', '', '', '', '', '', '05/03/2003', '', '', '', '', '', 'CDI', 1),
(152, '', 2, 'MERIAN', 'Gaelle', '', '', '', '', '', '', '', '', '19/09/2005', '', '', '', '', '', 'CDI', 1),
(153, '', 2, 'MEURIC', 'Fran?oise', '', '', '', '', '', '', '', '', '29/08/2013', '', '', '', '', '', 'CDD', 1),
(154, '', 2, 'MONNIER', 'Sarah', '', '', '', '', '', '', '', '', '07/08/2012', '', '', '', '', '', 'CDI', 1),
(155, '', 2, 'MOREAU', 'Sandra', '', '', '', '', '', '', '', '', '24/11/2008', '', '', '', '', '', 'CDI', 1),
(156, '', 2, 'MOREAU', 'Pascale', '', '', '', '', '', '', '', '', '06/06/2011', '', '', '', '', '', 'CDI', 1),
(157, '', 2, 'NASRI', 'Marion', '', '', '', '', '', '', '', '', '13/06/2003', '', '', '', '', '', 'CDI', 1),
(158, '', 1, 'OLIVEAU', 'Jean Rene', '', '', '', '', '', '', '', '', '18/12/1987', '', '', '', '', '', 'CDI', 1),
(159, '', 2, 'OLIVEIRA', 'Cecile', '', '', '', '', '', '', '', '', '12/05/2003', '', '', '', '', '', 'CDI', 1),
(160, '', 2, 'PASCUITO', 'Isabelle', '', '', '', '', '', '', '', '', '12/01/2008', '', '', '', '', '', 'CDD', 1),
(161, '', 1, 'PATAO', 'Armand', '', '', '', '', '', '', '', '', '25/06/2007', '', '', '', '', '', 'CDI', 1),
(162, '', 2, 'PECOT', 'Sandrine', '', '', '', '', '', '', '', '', '01/02/2002', '', '', '', '', '', 'CDI', 1),
(163, '', 2, 'PERDRIAU', 'Carine', '', '', '', '', '', '', '', '', '12/06/1998', '', '', '', '', '', 'CDI', 1),
(164, '', 2, 'PERDRIAU', 'Sophie', '', '', '', '', '', '', '', '', '09/04/1985', '', '', '', '', '', 'CDI', 1),
(165, '', 2, 'PETITEAU', 'Sarah', '', '', '', '', '', '', '', '', '25/03/2011', '', '', '', '', '', 'CDI', 1),
(166, '', 2, 'PICHERIT', 'Valerie', '', '', '', '', '', '', '', '', '22/10/1992', '', '', '', '', '', 'CDI', 1),
(167, '', 2, 'PIEL', 'Guylaine', '', '', '', '', '', '', '', '', '19/04/1991', '', '', '', '', '', 'CDI', 1),
(168, '', 2, 'PITHON', 'Adeline', '', '', '', '', '', '', '', '', '26/10/2005', '', '', '', '', '', 'CDI', 1),
(169, '', 1, 'PITULA', 'R?mi', '', '', '', '', '', '', '', '', '23/12/2013', '', '', '', '', '', 'CDD', 1),
(170, '', 2, 'ABID/PLANCHENAULT', 'Sylvie', '', '', '', '', '', '', '', '', '01/11/2004', '', '', '', '', '', 'CDI', 1),
(171, '', 2, 'POIROUX', 'Marie Helene', '', '', '', '', '', '', '', '', '30/03/1977', '', '', '', '', '', 'CDI', 1),
(172, '', 2, 'POUTREL', 'Sylvie', '', '', '', '', '', '', '', '', '22/11/2010', '', '', '', '', '', 'CDI', 1),
(173, '', 2, 'PRIOU', 'Julie', '', '', '', '', '', '', '', '', '15/03/2002', '', '', '', '', '', 'CDI', 1),
(174, '', 2, 'PRUD HOMME', 'Laurence', '', '', '', '', '', '', '', '', '09/09/2013', '', '', '', '', '', 'CDD', 1),
(175, '', 2, 'PRUDHOMME', 'Celine', '', '', '', '', '', '', '', '', '01/02/2003', '', '', '', '', '', 'CDI', 1),
(176, '', 2, 'RENAUD', 'Sandrine', '', '', '', '', '', '', '', '', '01/02/2013', '', '', '', '', '', 'CDI', 1),
(177, '', 1, 'RENAULT', 'Marc', '', '', '', '', '', '', '', '', '26/04/1976', '', '', '', '', '', 'CDI', 1),
(178, '', 2, 'RENAULT', 'Claire', '', '', '', '', '', '', '', '', '01/09/1975', '', '', '', '', '', 'CDI', 1),
(179, '', 1, 'REVEREAULT', 'John', '', '', '', '', '', '', '', '', '07/05/1997', '', '', '', '', '', 'CDI', 1),
(180, '', 2, 'REVEREAULT', 'Melanie', '', '', '', '', '', '', '', '', '09/02/1995', '', '', '', '', '', 'CDI', 1),
(181, '', 2, 'RICHARD', 'Francoise', '', '', '', '', '', '', '', '', '07/11/1996', '', '', '', '', '', 'CDI', 1),
(182, '', 2, 'RIPOCHE', 'Geraldine', '', '', '', '', '', '', '', '', '27/06/2004', '', '', '', '', '', 'CDI', 1),
(183, '', 2, 'RIVEREAU', 'Anne Sophie', '', '', '', '', '', '', '', '', '27/05/1994', '', '', '', '', '', 'CDI', 1),
(184, '', 2, 'ROBIN', 'Odile', '', '', '', '', '', '', '', '', '01/09/2013', '', '', '', '', '', 'CDD', 1),
(185, '', 2, 'ROUSSE', 'Maryvonne', '', '', '', '', '', '', '', '', '22/06/2005', '', '', '', '', '', 'CDI', 1),
(186, '', 2, 'ROUSSEAU', 'Alexia', '', '', '', '', '', '', '', '', '24/08/2012', '', '', '', '', '', 'CDD', 1),
(187, '', 2, 'ROYER', 'Catherine', '', '', '', '', '', '', '', '', '03/07/2012', '', '', '', '', '', 'CDI', 1),
(188, '', 1, 'SALAUD', 'Vivien', '', '', '', '', '', '', '', '', '03/12/2012', '', '', '', '', '', 'CDI', 1),
(189, '', 1, 'SAULOU', 'Guillaume', '', '', '', '', '', '', '', '', '02/07/2012', '', '', '', '', '', 'CDD', 1),
(190, '', 2, 'SEGARRA', 'Agnes', '', '', '', '', '', '', '', '', '03/07/1997', '', '', '', '', '', 'CDI', 1),
(191, '', 2, 'SEHAQUI', 'M Therese', '', '', '', '', '', '', '', '', '01/01/2004', '', '', '', '', '', 'CDI', 1),
(192, '', 2, 'SEURRE', 'Marie Jose', '', '', '', '', '', '', '', '', '08/08/2011', '', '', '', '', '', 'CDI', 1),
(193, '', 2, 'SOUALAH', 'Bahija', '', '', '', '', '', '', '', '', '01/03/1987', '', '', '', '', '', 'CDI', 1),
(194, '', 2, 'SOUCHARD', 'Marine', '', '', '', '', '', '', '', '', '30/08/2010', '', '', '', '', '', 'CDI', 1),
(195, '', 2, 'SOULET', 'Elodie', '', '', '', '', '', '', '', '', '08/07/2009', '', '', '', '', '', 'CDI', 1),
(196, '', 2, 'SOURISSEAU', 'Aurore', '', '', '', '', '', '', '', '', '14/01/2008', '', '', '', '', '', 'CDI', 1),
(197, '', 2, 'TAUBIN', 'Marine', '', '', '', '', '', '', '', '', '04/01/2012', '', '', '', '', '', 'CDI', 1),
(198, '', 2, 'TAUDON', 'Christine', '', '', '', '', '', '', '', '', '01/06/1985', '', '', '', '', '', 'CDI', 1),
(199, '', 2, 'TAUNAY', 'M Laure', '', '', '', '', '', '', '', '', '09/05/2003', '', '', '', '', '', 'CDI', 1),
(200, '', 2, 'TELLANGER', 'Axelle', '', '', '', '', '', '', '', '', '13/03/1989', '', '', '', '', '', 'CDI', 1),
(201, '', 2, 'TESSIE', 'Francoise', '', '', '', '', '', '', '', '', '25/07/1988', '', '', '', '', '', 'CDI', 1),
(202, '', 2, 'TESSIER', 'Florence', '', '', '', '', '', '', '', '', '14/02/2006', '', '', '', '', '', 'CDI', 1),
(203, '', 2, 'THEULIER', 'Laure', '', '', '', '', '', '', '', '', '03/09/1989', '', '', '', '', '', 'CDI', 1),
(204, '', 2, 'TIERCELIN', 'Charl?ne', '', '', '', '', '', '', '', '', '02/01/2012', '', '', '', '', '', 'CDI', 1),
(205, '', 2, 'TORREGROSSA', 'C?line', '', '', '', '', '', '', '', '', '12/12/2011', '', '', '', '', '', 'CDI', 1),
(206, '', 1, 'TOUDJI', 'Akouete Pierre', '', '', '', '', '', '', '', '', '13/12/2004', '', '', '', '', '', 'CDI', 1),
(207, '', 2, 'TREMBLAIS', 'Catherine', '', '', '', '', '', '', '', '', '13/03/1984', '', '', '', '', '', 'CDI', 1),
(208, '', 2, 'TROISPOILS', 'Anne', '', '', '', '', '', '', '', '', '06/04/1979', '', '', '', '', '', 'CDI', 1),
(209, '', 1, 'VENJEAN', 'Philippe', '', '', '', '', '', '', '', '', '05/01/2004', '', '', '', '', '', 'CDI', 1),
(210, '', 2, 'VIGAN', 'Corinne', '', '', '', '', '', '', '', '', '29/11/1999', '', '', '', '', '', 'CDI', 1),
(211, '', 1, 'VIVIEN', 'HervÃ©', '', '', '', '', '', '', '', '', '02/12/2013', '', '', '', '', '', 'CDI', 1),
(212, '', 2, 'VIVION', 'Beatrice', '', '', '', '', '', '', '', '', '16/11/2009', '', '', '', '', '', 'CDI', 1),
(213, '', 2, 'YEKULI', 'Aurelie', '', '', '', '', '', '', '', '', '17/11/2007', '', '', '', '', '', 'CDI', 1),
(214, '', 2, 'MAQUIN', 'CATHERINE', '', '', '', '', '', '', '', '', '', '05-03-2012', '1', '', '', 'RETRAITE', '', 1),
(215, '', 1, 'JULIENNE', 'THEO', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1),
(216, '', 2, 'PRUNAUX-CAZER', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDD', 1),
(217, '', 2, 'YVON', 'ANAELLE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDD', 1),
(218, '', 2, 'GAZE', 'CHRISTELLE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDD', 1),
(219, '', 1, 'RUBIO', 'G.MICHEL', '', '', '', '', '', '', '', '', '', '01-01-2013', '1', '', '', '', '', 1),
(220, '', 1, 'INCONNU', 'INCONNU', '', '', '', '', '', '', '', '', '', '', '1', '', '', 'SALARIE DONT LE NOM N''A PAS ETE RELEVE LORS D''UN ACHAT AU C.E REGLE EN ESPECES', '', 1),
(221, '', 1, 'VENTE HORS PERSONNEL', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=337 ;

--
-- Contenu de la table `solde_caisse`
--

INSERT INTO `solde_caisse` (`idsoldecaisse`, `date_mouvement`, `num_mouvement`, `type_mouvement`, `type_solde`, `libelle_mouvement`, `debit`, `credit`, `point_caisse`) VALUES
(182, '15-04-2015', '9823959', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TELLANGER.', '', '24', 1),
(183, '15-04-2015', '9823959', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TELLANGER.', '', '8.2', 0),
(184, '15-04-2015', '272477115', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TAUNAY M LAURE.', '', '12', 1),
(185, '15-04-2015', '0000027', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEBAILLYE.', '', '12', 1),
(186, '15-04-2015', '6571572', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOUET ANNETTE.', '', '36', 0),
(187, '15-04-2015', '6571572', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOUET.', '', '199.8', 0),
(188, '15-04-2015', '0000097', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAUSSION.', '', '24', 1),
(189, '15-04-2015', '0347105', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de VIVIEN HERVE.', '', '203.4', 0),
(190, '15-04-2015', '5240694', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERTEAU PATRICIA.', '', '24', 1),
(191, '15-04-2015', '725000166', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par THEULIER LAURE.', '', '24', 1),
(192, '15-04-2015', '913313320', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DUPAS FRANCOISE.', '', '4.1', 1),
(193, '15-04-2015', '982656111', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PETITEAU SARAH.', '', '6', 1),
(194, '15-04-2015', '351056703', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par OLIVEAU JEAN RENE.', '', '6', 1),
(195, '15-04-2015', '407549300', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TESSIER FLORENCE.', '', '6', 1),
(196, '07-01-2015', '6165238', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165238 en date du 07-01-2015.', '295.6', '', 1),
(197, '15-04-2015', '0004554', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE JEAN.', '', '36', 0),
(198, '15-04-2015', '0003066', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GASTINEAU ISABELLE.', '', '18', 0),
(199, '15-04-2015', '5210906', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BORGNE CELINE.', '', '18', 0),
(200, '15-04-2015', '3995487', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RIVEREAU ANNE SOPHIE.', '', '12', 1),
(201, '15-04-2015', '9362062', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHARREAU HELENE.', '', '12', 1),
(202, '15-04-2015', '9362062', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHARREAU HELENE.', '', '2.15', 0),
(203, '15-04-2015', '3326539', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAQUIN CATHERINE .', '', '12', 1),
(204, '15-04-2015', '4674053', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUIHO ODETTE.', '', '6', 1),
(205, '15-04-2015', '5103889', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BRARD M PIERRE.', '', '36', 0),
(206, '15-04-2015', '9524903', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GAZE CHRISTELLE.', '', '30', 0),
(207, '15-04-2015', '6905150', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEGER SONIA.', '', '24', 1),
(208, '15-04-2015', '713187521', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GASTINEAU ISABELLE.', '', '12', 1),
(209, '15-04-2015', '487870845', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHEIGNON AURORE.', '', '12', 1),
(210, '13-01-2015', '6165240', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165240 en date du 13-01-2015.', '182.15', '', 1),
(211, '15-04-2015', '643854976', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUILLOT Claire.', '', '12', 0),
(212, '15-04-2015', '6828220', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROUSSE MARYVONNE.', '', '5', 0),
(213, '15-04-2015', '6828220', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROUSSE Maryvonne.', '', '2.5', 0),
(214, '15-04-2015', '5271912', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BINOT LUCIE.', '', '12', 0),
(215, '15-04-2015', '5140080', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COCHIN YVON.', '', '124.2', 0),
(216, '15-04-2015', '7384659', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOULAY Jennifer.', '', '5', 0),
(217, '15-04-2015', '7384659', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOULAY Jennifer.', '', '2.5', 0),
(218, '15-04-2015', '793616323', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHARRIER Elena.', '', '5', 0),
(219, '15-04-2015', '273327424', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHARRIER Elena.', '', '5', 0),
(220, '15-04-2015', '05354927001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BORE Marie Pierre.', '', '5', 0),
(221, '15-04-2015', '05354927001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BORE Marie Pierre.', '', '2.5', 0),
(222, '15-04-2015', '687282856', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHARRIER Elena.', '', '12', 0),
(223, '15-04-2015', '277348119', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TREMBLAIS.', '', '4.1', 0),
(224, '15-04-2015', '568464359', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TAUNAY M Laure.', '', '30', 0),
(225, '15-04-2015', '4267947', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LATONELLE Anne.', '', '18', 0),
(226, '15-04-2015', '0141773', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE Pascale.', '', '6', 0),
(227, '15-04-2015', '8310544', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHEIGNON Aurore.', '', '12', 0),
(228, '15-04-2015', '8310545', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHEIGNON Aurore.', '', '33.3', 0),
(229, '15-04-2015', '0000030', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PERDRIAU Carine.', '', '12', 0),
(230, '15-04-2015', '4653012', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TESSIE Francoise.', '', '12', 0),
(231, '15-04-2015', '9407352', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SEHAQUI M Therese.', '', '84', 0),
(232, '15-04-2015', '4644063', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOUTREUX Anne Sophie.', '', '18', 0),
(233, '15-04-2015', '4644063', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOUTREUX Anne sophie.', '', '35.12', 0),
(234, '15-04-2015', '7588051', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BONFILS Cecile.', '', '24', 0),
(235, '15-04-2015', '0008342', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GERARD Alexandra.', '', '42', 0),
(236, '15-04-2015', '0681524', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BEAUMONT Bernadette.', '', '18', 0),
(237, '15-04-2015', '5240695', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERTEAU Patricia.', '', '24', 0),
(238, '15-04-2015', '5668279', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PASCUITO Isabelle.', '', '60', 0),
(239, '16-04-2015', '560063069', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DELAUNAY Dominique.', '', '5', 0),
(240, '16-04-2015', '690930783', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par HUIN Sylvie.', '', '5', 0),
(241, '16-04-2015', '658183630', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOUET annette.', '', '5', 0),
(242, '23-04-2015', '623268163', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOUET (ANNETTE).', '', '2.5', 0),
(243, '23-04-2015', '503509468', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par SEHAQUI M.THERESE.', '', '5', 0),
(244, '23-04-2015', '6615541', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '5', 0),
(245, '23-04-2015', '6615541', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '2.5', 0),
(246, '23-04-2015', '0000261', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JULIENNE THEO.', '', '7.1', 0),
(247, '30-01-2015', '6165243', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165243 en date du 30-01-2015.', '312.3', '', 1),
(248, '30-01-2015', '6165244', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165244 en date du 30-01-2015.', '327.32', '', 1),
(249, '23-04-2015', '6265074', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CIBRON CHRISTOPHE.', '', '5', 0),
(250, '23-04-2015', '6265074', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CIBRON CHRISTOPHE.', '', '2.5', 0),
(251, '23-04-2015', '0590234', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MENDONCA.', '', '18', 0),
(252, '23-04-2015', '0003084', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GASTINEAU.', '', '18', 0),
(253, '23-04-2015', '00001698', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOURISSEAU.', '', '24', 0),
(254, '23-04-2015', '7588057', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BONFILS.', '', '24', 0),
(255, '23-04-2015', '975740865', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par FRANCFORT CATHERINE.', '', '24', 0),
(256, '23-04-2015', '508619523', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEAUMONT BERNADETTE.', '', '12', 0),
(257, '23-04-2015', '4267949', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LATONNELLE ANNE.', '', '42', 0),
(258, '23-04-2015', '4674058', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUIHO ODETTE.', '', '6', 0),
(259, '23-04-2015', '0002401', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TREMBLAIS CATHERINE.', '', '24', 0),
(260, '23-04-2015', '0002401', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TREMBLAIS CATHERINE.', '', '15.75', 0),
(261, '23-04-2015', '0002401', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TREMBLAIS CATHERINE.', '', '42.3', 0),
(262, '23-04-2015', '9407351', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SEHAQUI.', '', '97.8', 0),
(263, '11-02-2015', '6165245', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165245 en date du 11-02-2015.', '166.1', '', 1),
(264, '23-04-2015', '1546378', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEMASSON.', '', '30.95', 0),
(265, '11-2-2015', '6165246', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165246 en date du 11-2-2015.', '165.3', '', 1),
(266, '25-04-2015', '5225914', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de THEULIER LAURE.', '', '30', 0),
(267, '25-04-2015', '0000410', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PRUNEAU-CAZER CAROLINE.', '', '24', 0),
(268, '25-04-2015', '318270', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOREAU.', '', '24', 0),
(269, '25-04-2015', '5308838', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PIEL GUYLAINE.', '', '24', 0),
(270, '25-04-2015', '5411145', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GILBERT LUCIE.', '', '36', 0),
(271, '25-04-2015', '431665164', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ABID.', '', '24', 0),
(272, '25-04-2015', '651070353', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MAUSSION CHRISTINE.', '', '2.05', 0),
(273, '25-04-2015', '484030961', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MAUSSION CHRISTINE.', '', '4.3', 0),
(274, '25-04-2015', '979124822', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEAUMONT BERNADETTE.', '', '7.1', 0),
(275, '25-04-2015', '6718971', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RUBIO G.MICHEL.', '', '36', 0),
(276, '25-04-2015', '6718971', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RUBIO G.MICHEL.', '', '198.2', 0),
(277, '25-04-2015', '0002412', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHAILLOU SANDRA.', '', '198.2', 0),
(278, '25-04-2015', '5888598', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de YVON ANAELLE.', '', '30', 0),
(279, '25-04-2015', '0000039', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEBAILLY EMILIE.', '', '36', 0),
(280, '25-04-2015', '5439121', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GAUDELET MARYLINE.', '', '12', 0),
(281, '25-04-2015', '4674060', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUIHO ODETTE.', '', '5', 0),
(282, '25-04-2015', '0127334', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROUSSE MARYVONNE.', '', '6', 0),
(283, '25-04-2015', '0141780', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE PASCALE.', '', '12', 0),
(284, '25-04-2015', '0267678', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE CALVEZ JOCELINE.', '', '30', 0),
(285, '17-02-2015', '6859737', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859737 en date du 17-02-2015.', '131', '', 1),
(286, '12-02-2015', '6165248', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165248 en date du 12-02-2015.', '138', '', 1),
(287, '25-04-2015', '122323174', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par THEULIER LAURE.', '', '70.2', 0),
(288, '25-04-2015', '404323852', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CIBRON.', '', '30', 0),
(289, '25-04-2015', '952567975', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par INCONNU.', '', '2.15', 0),
(290, '25-04-2015', '845889920', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TESSIER FLORENCE.', '', '24', 0),
(291, '25-04-2015', '887579092', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ABID/PLANCHENEAU SYLVIE.', '', '24', 0),
(292, '25-04-2015', '422866622', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEAUMONT BERNADETTE.', '', '7.13', 0),
(293, '25-04-2015', '9524908', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GAZE CHRISTELLE.', '', '30', 0),
(294, '25-04-2015', '0003090', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GASTINEAU ISABELLE.', '', '66', 0),
(295, '25-04-2015', '7414678', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DIJOLS CHRISTINE.', '', '12', 0),
(296, '25-04-2015', '4517940', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHEVREUX MELANIE.', '', '36', 0),
(297, '25-04-2015', '0141781', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE PASCALE.', '', '18', 0),
(299, '25-04-2015', '9959250', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '12', 0),
(300, '25-04-2015', '9959250', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '10.8', 0),
(301, '25-04-2015', '7384660', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOULAY JENNYFER.', '', '120.6', 0),
(302, '25-04-2015', '3289224', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de HENNE TERESA.', '', '124.2', 0),
(303, '25-04-2015', '0000737', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SEGARRA AGNES.', '', '24', 0),
(304, '25-04-2015', '4583031', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOREAU PASCALE.', '', '30', 0),
(305, '25-04-2015', '5749877', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PICVALERIEHERIT .', '', '36', 0),
(306, '25-04-2015', '0000395', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LASNE ALLISON.', '', '24', 0),
(307, '25-04-2015', '0000149', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LECLERC CAROLINE.', '', '12', 0),
(308, '25-04-2015', '0000271', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DELAREUX ISABELLE.', '', '30', 0),
(309, '25-04-2015', '7588063', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BONFILS CECILE.', '', '12', 0),
(310, '25-04-2015', '7583568', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON CHRISTINE.', '', '5', 0),
(311, '25-04-2015', '7583568', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON CHRISTINE.', '', '2.5', 0),
(312, '25-04-2015', '5240698', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERTEAU PATRICIA.', '', '24', 0),
(313, '25-04-2015', '0008347', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GERARD ALEXANDRA.', '', '54', 0),
(314, '25-04-2015', '0000033', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PERDRIAU CARINE.', '', '12', 0),
(315, '25-04-2015', '4597016', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE GAL BARBARA.', '', '12', 0),
(316, '25-04-2015', '7015558', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEGER SONIA.', '', '30', 0),
(317, '25-04-2015', '7583568', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON CHRISTINE.', '', '2.5', 0),
(318, '25-04-2015', '7583568', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON CHRISTINE.', '', '5', 0),
(319, '25-04-2015', '0000033', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PERDRIAU CARINE.', '', '12', 0),
(320, '25-04-2015', '9959250', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '10.8', 0),
(321, '07-03-2015', '6859740', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859740 en date du 07-03-2015.', '184.8', '', 1),
(322, '25-04-2015', '53096378', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROYER CATHERINE.', '', '57.38', 0),
(323, '25-04-2015', '0797822', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PITHON ADELINE.', '', '16.65', 0),
(324, '25-04-2015', '0000343', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LECOMTE LUDIVINE.', '', '9.99', 0),
(325, '25-04-2015', '4583032', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOREAU PASCALE.', '', '40.64', 0),
(326, '25-04-2015', '0000738', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SEGARRA AGNES.', '', '16.15', 0),
(327, '25-04-2015', '8369238', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de OLIVEIRA CECILE.', '', '36.82', 0),
(328, '25-04-2015', '0000086', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEBAILLY EMILIE.', '', '10.72', 0),
(329, '07-03-2015', '6859742', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859742 en date du 07-03-2015.', '154.3', '', 1),
(330, '25-04-2015', '7003264', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RABOUAN MICHEL.', '', '35.9', 0),
(331, '25-04-2015', '1546378', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEMASSON.', '', '30.95', 0),
(332, '25-04-2015', '8369238', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de OLIVEIRA CECILE.', '', '30.95', 0),
(333, '07-03-2015', '6859739', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859739 en date du 07-03-2015.', '683.8', '', 1),
(334, '25-04-2015', '7414678', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DIJOLS CHRISTINE.', '', '36', 0),
(335, '07-03-2015', '6859741', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859741 en date du 07-03-2015.', '390.2', '', 1),
(336, '27-04-2015', '382197941', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MALINGE ANICETTE.', '', '5', 0);

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=461;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=309;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
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
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=461;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=301;
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
MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=283;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=332;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=337;--
-- Base de données :  `cemariesurgeles`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
(80, 1, '546.77', ''),
(81, 2, '', ''),
(82, 3, '5864.83', '2947.01'),
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
(107, 28, '6827.01', '9208.61'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', ''),
(113, 34, '', ''),
(114, 35, '0', '3880'),
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
(127, 48, '2200', ''),
(128, 49, '', ''),
(129, 50, '', ''),
(130, 51, '171', ''),
(131, 52, '', ''),
(132, 53, '95.98', ''),
(133, 54, '273.04', '0'),
(134, 55, '', ''),
(135, 56, '', ''),
(136, 57, '56.99', '0'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(18, '1389571200', 'PRELV SFR', 3, '', '18.99'),
(19, '1389571200', 'ASSURANCE SFR', 3, '', '3.00'),
(20, '1392249600', 'U TECHNOLOGIE', 3, '', '95.98'),
(21, '1392249600', 'PRELV SFR', 3, '', '19.00'),
(22, '1392249600', 'ASSURANCE SFR', 3, '', '3.00'),
(23, '1394409600', 'ASSURANCE SFR', 3, '', '3.00'),
(24, '1395014400', 'PRELV SFR', 3, '', '19.00'),
(25, '1395273600', 'HOTEL IBIS CE BORDEAUX', 3, '', '171.00'),
(26, '1395792000', 'ASSURANCE MaciF CE +VEHUCULE', 3, '', '261.04'),
(27, '1396310400', 'VIREMENT BANQUE CAISSE', 3, '', '150.00'),
(28, '1396915200', 'HONORAIRES GESTION', 3, '', '2200.00'),
(29, '1397001600', 'ASSURANCE SFR', 3, '', '3.00'),
(30, '1393542000', 'Subvention Fonctionnement', 3, '3880', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `compta_bilan_actif`
--

INSERT INTO `compta_bilan_actif` (`idcptbilanactif`, `idcomptaplan`, `montant`) VALUES
(16, 1, '396.77'),
(17, 3, '1984.83');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_passif` (
`idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `compta_bilan_passif`
--

INSERT INTO `compta_bilan_passif` (`idcptbilanpassif`, `idcomptaplan`, `montant`) VALUES
(6, 28, '2381.60');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `compta_caisse`
--

INSERT INTO `compta_caisse` (`idcomptacaisse`, `date_caisse`, `desc_caisse`, `idcomptaplan`, `debit`, `credit`) VALUES
(1, '1396310400', 'VIREMENT BANQUE CAISSE', 1, '150.00', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE IF NOT EXISTS `compta_compte` (
`idcomptacompte` int(13) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `idcomptaplan`, `debit`, `credit`) VALUES
(56, 1, '396.77', ''),
(57, 3, '1984.83', ''),
(58, 28, '', '2381.60'),
(59, 57, '18.99', ''),
(60, 3, '', '18.99'),
(62, 54, '3.00', ''),
(63, 3, '', '3.00'),
(64, 53, '95.98', ''),
(65, 3, '', '95.98'),
(67, 3, '', '19.00'),
(68, 54, '3.00', ''),
(69, 3, '', '3.00'),
(70, 54, '3.00', ''),
(71, 3, '', '3.00'),
(76, 57, '19.00', ''),
(77, 3, '', '19.00'),
(78, 51, '171.00', ''),
(79, 3, '', '171.00'),
(80, 54, '261.04', ''),
(81, 3, '', '261.04'),
(82, 3, '', '150.00'),
(83, 1, '150.00', ''),
(84, 48, '2200.00', ''),
(85, 3, '', '2200.00'),
(86, 54, '3.00', ''),
(87, 3, '', '3.00'),
(90, 35, '', '3880'),
(91, 3, '3880', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Contenu de la table `compta_mvm`
--

INSERT INTO `compta_mvm` (`idcomptamvm`, `date_mvm`, `desc_mvm`, `idcomptaplan`, `debit`, `credit`) VALUES
(18, '1389571200', 'PREL SFR', 57, '18.99', ''),
(20, '1389571200', 'ASSURANCE SFR', 54, '3.00', ''),
(21, '1392249600', 'U TECHNOLOGIE Chq 0879895', 53, '95.98', ''),
(22, '1392249600', 'PRELV SFR', 57, '19.00', ''),
(23, '1392249600', 'ASSURANCE SFR', 54, '3.00', ''),
(24, '1394409600', 'ASSURANCE SFR', 54, '3.00', ''),
(29, '1395014400', 'PRELV sFR ', 57, '19.00', ''),
(30, '1395273600', 'HOTEL IBIS CE BORDEAUX chq 0879896', 51, '171.00', ''),
(31, '1395964800', 'ASSURANCE MACIF CE et VEHICULE', 54, '261.04', ''),
(32, '1396915200', 'HONORAIRES GESTION Chq 0879897', 48, '2200.00', ''),
(33, '1397001600', 'ASSURANCE SFR', 54, '3.00', ''),
(37, '1393542000', 'Subvention Fonctionnement', 35, '', '3880');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `idcomptaplan`, `debit`, `credit`) VALUES
(18, 57, '18.99', ''),
(20, 54, '3.00', ''),
(21, 53, '95.98', ''),
(23, 54, '3.00', ''),
(24, 54, '3.00', ''),
(29, 57, '19.00', ''),
(30, 51, '171.00', ''),
(31, 54, '261.04', ''),
(32, 48, '2200.00', ''),
(33, 54, '3.00', ''),
(36, 35, '', '3880');

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
(1, 'COMITE D''ENTREPRISE MARIE SURGELES', '', '', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE IF NOT EXISTS `famille_prestation` (
`idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_remb_ayant_droit` (
`idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
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
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;--
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=167 ;

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
(166, 105, 'VERITE GUERRIAU', 'MATTEO', '29/05/2002', '0');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_passif` (
`idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE IF NOT EXISTS `compta_compte` (
`idcomptacompte` int(13) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=130 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

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
(1, 'COMITE D''ENTREPRISE MLP', '', '', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE IF NOT EXISTS `famille_prestation` (
`idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_remb_ayant_droit` (
`idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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
(99, '', 1, 'ARMOURDOM', 'LAURENT', '115 Rue Fran?ois Mauriac', '', '49800', 'TRELAZE', '', '', '', '', '24/02/1997', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, '150'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
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
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;--
-- Base de données :  `cepremium`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Contenu de la table `ayant_droit`
--

INSERT INTO `ayant_droit` (`idayantdroit`, `idsalarie`, `nom_ayant_droit`, `prenom_ayant_droit`, `date_naissance_ayant_droit`, `solde_ayant_droit`) VALUES
(82, 69, 'MOCKELYN', 'STEVEN', '', '100'),
(83, 721, 'MOCKELYN', 'Lucie', '', '320'),
(84, 721, 'MOCKELYN', 'Mathieu', '24-07-1991', '100'),
(85, 722, 'ODEON', 'Yuit', '', '250');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Contenu de la table `bilan`
--

INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(48, 2, 'Vente de Billetterie: MOCKELYN Maxime pour la prestation DISNEY PARIS', '', '100', '20196629'),
(49, 2, 'Vente de Billetterie: MOCKELYN Mathieu pour la prestation PUY DU FOU', '', '40', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `billet_ayant_droit`
--

INSERT INTO `billet_ayant_droit` (`idbilletayantdroit`, `idayantdroit`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_facture`) VALUES
(8, 84, '12-03-2015', 3, '40', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`) VALUES
(52, 721, '01-03-2015', 3, '100', 1);

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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
(82, 3, '12650', '2200'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '', ''),
(87, 8, '32000', ''),
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
(107, 28, '2200', '46850'),
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
(127, 48, '2200', ''),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(77, '1420066800', 'CDT GESTION', 3, '', '2200');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `compta_bilan_actif`
--

INSERT INTO `compta_bilan_actif` (`idcptbilanactif`, `idcomptaplan`, `montant`) VALUES
(18, 3, '12650'),
(19, 8, '32000');

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
(7, 28, '44650');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE IF NOT EXISTS `compta_compte` (
`idcomptacompte` int(13) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=196 ;

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `idcomptaplan`, `debit`, `credit`) VALUES
(191, 3, '12650', ''),
(192, 8, '32000', ''),
(193, 28, '', '44650'),
(194, 48, '2200', ''),
(195, 3, '', '2200');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Contenu de la table `compta_mvm`
--

INSERT INTO `compta_mvm` (`idcomptamvm`, `date_mvm`, `desc_mvm`, `idcomptaplan`, `debit`, `credit`) VALUES
(81, '1420066800', 'CDTGESTION', 48, '2200', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `idcomptaplan`, `debit`, `credit`) VALUES
(80, 48, '2200', '');

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
(1, 'COMITE DEMO PREMIUM', '0.50', '0.50', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '31-12-2014', '31-12-2015');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Contenu de la table `cpt_resultat`
--

INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(48, '20196629', '1425164400', 'Vente de Billetterie: MOCKELYN Maxime pour la prestation DISNEY PARIS', '', '100'),
(49, '', '1426114800', 'Vente de Billetterie: MOCKELYN Mathieu pour la prestation PUY DU FOU', '', '40');

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE IF NOT EXISTS `famille_prestation` (
`idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Contenu de la table `famille_prestation`
--

INSERT INTO `famille_prestation` (`idfamilleprestation`, `designation_famille`) VALUES
(44, 'CHARCUTERIE'),
(45, 'Voyages, Sorties'),
(46, 'CINEMA');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `ligne_billet_ayant_droit`
--

INSERT INTO `ligne_billet_ayant_droit` (`idlignebilletayantdroit`, `idbilletayantdroit`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(3, 8, 69, '2', '40', '20', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(18, 52, 66, '1', '100', '50', 0);

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
(5, '1.6.1', '15315-mod');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`) VALUES
(64, 44, 'Saucisson', '01-01-2015', '31-12-2015', '5', '2', '7', '100', '67', 0),
(65, 44, 'Saucisse', '01-01-2015', '31-12-2015', '3', '2', '5', '100', '40', 0),
(66, 45, 'DISNEY PARIS', '01-01-2015', '31-12-2015', '100', '50', '150', '100', '56', 0),
(67, 46, 'GAUMONT PAU', '01-01-2015', '31-12-2015', '7', '3', '10', '20', '97', 0),
(68, 45, 'jsdhkjsqdq dsjkfhydshf fhdshjkhfsdk fjkdsfjhsd lsdfhskdfsfsdklj 111112', '01-01-2015', '31-12-2015', '10', '5', '15', '100', '8', 0),
(69, 45, 'PUY DU FOU', '01-01-2015', '31-12-2015', '20', '10', '30', '100', '14', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `reg_billet_ayant_droit`
--

INSERT INTO `reg_billet_ayant_droit` (`idregbilletayantdroit`, `idbilletayantdroit`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(7, 8, 3, '40', '', 'MOCKELYN', '182030446', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(24, 52, 3, '100', '', 'MOCKELYN', '661899452', 0);

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_remb_ayant_droit` (
`idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE IF NOT EXISTS `remise_banque_esp` (
`idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=724 ;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`, `solde_salarie`) VALUES
(721, '', 1, 'MOCKELYN', 'Maxime', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '0'),
(722, '', 1, 'ODEON', 'MICKAEL', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '200'),
(723, '', 1, 'Dupond', 'Robert', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '0');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Contenu de la table `solde_caisse`
--

INSERT INTO `solde_caisse` (`idsoldecaisse`, `date_mouvement`, `num_mouvement`, `type_mouvement`, `type_solde`, `libelle_mouvement`, `debit`, `credit`, `point_caisse`) VALUES
(35, '20-03-2015', '661899452', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MOCKELYN.', '', '100', 0),
(36, '20-03-2015', '182030446', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MOCKELYN.', '', '40', 0);

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
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
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=724;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;--
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
(85, 102, 'CAMPAGNE', 'MARION', '09/03/2002', '173'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=383 ;

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
(380, 2, 'Ajout du produit fixe: subvention mars', '', '13544.00', ''),
(381, 1, 'Remboursement de la prestation: GOLF pour FOURQUET GILLES', '53.5', '', ''),
(382, 1, 'Remboursement de la prestation: GOLF pour FOURQUET GUILLAUME', '142.5', '', '');

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
(82, 3, '6626.79', '2218.79'),
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
(107, 28, '7634.79', '25948.44'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', ''),
(113, 34, '', ''),
(114, 35, '0', '5416'),
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
(130, 51, '224', '0'),
(131, 52, '', ''),
(132, 53, '32', '0'),
(133, 54, '', ''),
(134, 55, '219', '0'),
(135, 56, '1208', '0'),
(136, 57, '343.84', '0'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

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
(60, '1429135200', 'sfr 2', 3, '', '42.98');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=149 ;

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
(140, 3, '', '44.80'),
(141, 3, '', '42.98'),
(142, 3, '', '42.98'),
(144, 51, '44.80', ''),
(145, 56, '302.00', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

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
(58, '1429135200', 'sfr 1', 57, '42.98', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

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
(55, 56, '302.00', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=383 ;

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
(362, '', '1427839200', 'subvention avril', '', '13544.00'),
(363, '', '1420066800', 'subvention janvier', '', '13544.00'),
(364, '', '1422745200', 'subvention fevrier', '', '13544.00'),
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
(380, '', '1425164400', 'subvention mars', '', '13544.00'),
(381, '', '1430863200', 'Remboursement de la Prestation pour FOURQUET GILLES - GOLF', '53.5', ''),
(382, '', '1430863200', 'Remboursement de la Prestation pour FOURQUET GUILLAUME - GOLF', '142.5', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `produit_fixe`
--

INSERT INTO `produit_fixe` (`idproduitfixe`, `designation`, `date_produit_fixe`, `montant_produit`) VALUES
(18, 'subvention avril', '01-04-2015', '13544.00'),
(19, 'subvention janvier', '01-01-2015', '13544.00'),
(20, 'subvention fevrier', '01-02-2015', '13544.00'),
(22, 'subvention mars', '01-03-2015', '13544.00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

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
(117, 122, '142,50', '2285');

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=126 ;

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
(125, 132, '53,50', '2285');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=123 ;

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
(122, 136, 'GOLF', '06-05-2015', '190.00', '142.5', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

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
(132, 150, 'GOLF', '06-05-2015', '1190.00', '53.5', 1);

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
(95, '00010036', 1, 'BRUN', 'GILLES', '2, all&eacute;e du Hameau', '', '64320', 'BIZANOS', '05 59 27 51 44', '', '', '21/03/1959', '', '', '', 'OpÃ©rateur', '190 C', '', 'CDI', 1, '136.9'),
(96, '00010035', 1, 'BRUN', 'DENIS', 'Domaine du Sarrot - 18, Av Rauski', '', '64110', 'JURANCON', '05 59 27 88 01', '', 'jean-denis.brun@rexam.com', '15/05/1963', '', '', '', 'Directeur', 'Cadre', '', 'CDI', 1, '200'),
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
(117, '00010054', 1, 'CORNOUILLER', 'JULIEN', '14, Avenue de la RÃ©publique', '', '64140', 'BILLERE', '', '06 79 62 76 09', '', '12/04/1986', '', '', '', 'MÃ©canicien', '240 A', '', 'CDI', 1, '200'),
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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=214;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=383;
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
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
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
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=383;
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
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
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
MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=133;
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
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;--
-- Base de données :  `ceslts49`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

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
(80, 1, '0', '8000'),
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
(107, 28, '0', '8000'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(2, '1443909600', 'mise a jour budget de fonctionnement ', 1, '', '4000');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `idcomptaplan`, `debit`, `credit`) VALUES
(2, 1, '', '4000');

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
(1, 'COMITE D''ENTREPRISE SLTS', '', '', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '31-12-2014', '31-12-2015');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

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
(43, 'DACC 49'),
(44, 'Salaison du Val d''allier');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

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
(5, '1.6.3', '29315-prem');

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
(4, 'FRESNEAU', 'e10adc3949ba59abbe56e057f20f883e', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `remise_banque`
--

INSERT INTO `remise_banque` (`idremisebanque`, `date_remise`, `type_remise`, `num_remise`, `montant_remise`, `valid`) VALUES
(12, '10/04/2015', 2, 'solde budget social', '0', 0);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE IF NOT EXISTS `remise_banque_esp` (
`idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `remise_banque_esp`
--

INSERT INTO `remise_banque_esp` (`idremisebanqueesp`, `idremisebanque`, `idreglementventepresta`) VALUES
(3, 12, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`, `solde_salarie`) VALUES
(68, '044', 1, 'fresneau', 'eric', '', '', '49000', 'angers', '', '0686897700', '', '30-07-1969', '03-03-1988', '', '1', '', '', '', '', 1, '9999999999999999');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

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
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
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
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
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
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
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
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
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
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;--
-- Base de données :  `cetessier`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `achat_presta`
--

INSERT INTO `achat_presta` (`idachatpresta`, `date_achat`, `idprestation`, `qte`, `total_achat`) VALUES
(4, '02-02-2015', 71, '100', '760'),
(6, '11-02-2015', 71, '100', '760'),
(7, '18-02-2015', 71, '100', '760'),
(8, '04-03-2015', 71, '100', '760'),
(9, '18-03-2015', 71, '50', '380'),
(11, '11-03-2015', 70, '10', '50'),
(12, '15-03-2015', 72, '20', '136'),
(13, '12-02-2015', 70, '10', '50'),
(14, '10-04-2015', 71, '51', '387.6'),
(16, '03-02-2015', 70, '5', '25'),
(17, '22-04-2015', 73, '10', '50'),
(18, '22-04-2015', 71, '50', '380');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=499 ;

--
-- Contenu de la table `ayant_droit`
--

INSERT INTO `ayant_droit` (`idayantdroit`, `idsalarie`, `nom_ayant_droit`, `prenom_ayant_droit`, `date_naissance_ayant_droit`, `solde_ayant_droit`) VALUES
(80, 72, 'ALLARD', 'MAELLE', '26/10/2011', ''),
(81, 72, 'ALLARD', 'NATHAN', '15/12/2008', ''),
(82, 72, 'ALLARD', 'RANDY', '10/09/2013', ''),
(83, 72, 'POURTAUD', 'MANON', '25/04/1998', ''),
(84, 72, 'POURTAUD', 'PAULINE', '13/07/2002', ''),
(85, 74, 'AMZIL', 'MATHYS', '27/03/2008', ''),
(86, 75, 'BRISSET', 'ADRIEN', '27/05/1995', ''),
(87, 75, 'BRISSET', 'BAPTISTE', '22/12/2000', ''),
(88, 75, 'BRISSET', 'CAMILLE', '26/01/1998', ''),
(89, 76, 'ANGELO', 'ALAN', '10/10/2000', ''),
(90, 76, 'ANGELO', 'COLLEEN', '04/11/2003', ''),
(91, 76, 'THEBERT', 'DAMIEN', '09/10/1991', ''),
(92, 77, 'GUIET', 'GEOFFRAY', '12/01/1996', ''),
(93, 77, 'GUIET', 'THOMAS', '15/12/1999', ''),
(94, 80, 'AUBRY', 'MAYLIS', '04/12/2005', ''),
(95, 81, 'AUDOUARD', 'ELINA', '06/10/2014', ''),
(96, 81, 'AUDOUARD', 'MAXENCE', '16/08/2011', ''),
(97, 82, 'HAMELIN', 'LALIANNA', '02/05/2013', ''),
(98, 84, 'BARBALONE', 'PAULINE', '07/01/2000', ''),
(99, 84, 'BARBALONE', 'VINCENT', '11/07/1997', ''),
(100, 85, 'BABIN', 'ANTHONIN', '19/01/2010', ''),
(101, 85, 'BABIN', 'ELIAN', '19/12/2013', ''),
(102, 85, 'BABIN', 'MAXENCE', '14/12/2011', ''),
(103, 87, 'BANGOURA', 'FATIMATA', '01/10/2004', ''),
(104, 89, 'BARELLI', 'JULIETTE', '03/08/2014', ''),
(105, 90, 'BARRE', 'DAVID', '05/11/1980', ''),
(106, 90, 'BARRE', 'JESSICA', '24/03/1979', ''),
(107, 90, 'BARRE', 'THOMAS', '13/11/1986', ''),
(108, 93, 'BEAUBIGNY', 'FRANCOIS', '25/03/1991', ''),
(109, 93, 'BEAUBIGNY', 'JULIEN', '10/11/1989', ''),
(110, 93, 'BEAUBIGNY', 'MARION', '25/03/1991', ''),
(111, 99, 'BENOIST', 'FLORIANE', '08/07/2004', ''),
(112, 99, 'BENOIST', 'MARION', '01/05/2002', ''),
(113, 99, 'BENOIST', 'OCEANE', '23/03/2001', ''),
(114, 99, 'BENOSIT', 'CLOE', '15/02/2007', ''),
(115, 99, 'RUIZ-RUIZ BENOIST', 'MYLANA', '22/01/2012', ''),
(116, 99, 'RUIZ-RUIZ BENOIST', 'TIAGO', '14/10/2014', ''),
(117, 100, 'BERNARD', 'MILANE', '24/11/2009', ''),
(118, 101, 'BERTHO', 'LAURE', '19/11/1998', ''),
(119, 101, 'BERTHO', 'MARIE', '15/08/2002', ''),
(120, 102, 'BERTHONNEAU', 'ANTOINE', '01/08/1995', ''),
(121, 102, 'BERTHONNEAU', 'CLEMENCE', '18/07/1998', ''),
(122, 105, 'BESNARD', 'LORIS', '08/08/2012', ''),
(123, 105, 'BESNARD', 'NOLAN', '09/11/2009', ''),
(124, 105, 'BESNARD', 'TIMEO', '03/05/2008', ''),
(125, 104, 'BESNARD', 'CHARLOTTE', '14/11/1997', ''),
(126, 104, 'BESNARD', 'JONATHAN', '06/01/2003', ''),
(127, 104, 'BESNARD', 'MELISSA', '17/12/1999', ''),
(128, 106, 'BIDET', 'LISON', '26/10/2007', ''),
(129, 106, 'BIDET', 'MARCEAU', '31/03/2010', ''),
(130, 108, 'BIDON', 'MARC', '19/08/1985', ''),
(131, 109, 'BIGOT', 'ESTHER', '06/10/2003', ''),
(132, 109, 'BIGOT', 'MARIN', '28/02/2006', ''),
(133, 109, 'BIGOT', 'ROSE', '19/10/2007', ''),
(134, 110, 'BLOT', 'KELYA', '27/09/2007', ''),
(135, 110, 'HAUTREUX', 'ERWAN', '12/07/2003', ''),
(136, 113, 'BODIER', 'SAMUEL', '10/01/2005', ''),
(137, 113, 'BODIER', 'THEO', '18/09/2009', ''),
(138, 115, 'BODIN', 'GUILLAUME', '28/06/1986', ''),
(139, 116, 'BODIN', 'GUILLAUME', '28/06/1986', ''),
(140, 114, 'BODIN', 'LOUANE', '02/11/2007', ''),
(141, 114, 'BODIN', 'MAEL', '17/08/2011', ''),
(142, 117, 'BONNIN', 'JULIE', '16/10/1984', ''),
(143, 118, 'BOUCARD', 'BERANGERE', '11/09/2000', ''),
(144, 118, 'BOUCARD', 'EMELINE', '03/09/1992', ''),
(145, 118, 'BOUCARD', 'MELANIE', '28/09/1996', ''),
(146, 119, 'BOUGET', 'GABY', '02/10/2002', ''),
(147, 119, 'BOUGET', 'PRISCILLA', '23/11/1993', ''),
(148, 124, 'BOURDIN', 'AMELINE', '10/11/2001', ''),
(149, 124, 'BOURDIN', 'COLINE', '25/08/1999', ''),
(150, 124, 'BOURDIN', 'MARINE', '08/09/2005', ''),
(151, 125, 'BOUREL', 'JORDAN', '05/05/2014', ''),
(152, 126, 'BOURGERIE', 'VICTOR', '24/02/2015', ''),
(153, 127, 'BERNARD', 'CELIA', '11/02/2011', ''),
(154, 131, 'BRAZILLE', 'LOUANE', '05/10/2012', ''),
(155, 131, 'BRAZILLE', 'MATHYS', '17/09/2010', ''),
(156, 135, 'BRU', 'AGATHE', '29/03/2012', ''),
(157, 136, 'BRUERE', 'CAMILLE', '15/01/1996', ''),
(158, 136, 'BRUERE', 'JUSTINE', '27/01/1994', ''),
(159, 136, 'BRUERE', 'WILLIAM', '31/07/2004', ''),
(160, 137, 'BRUGIERE LEGENDRE', 'MAYANNE', '28/08/2012', ''),
(161, 138, 'ROCHE', 'LUDIVINE', '20/11/1997', ''),
(162, 139, 'FOKAM KAMGUEM', 'ENZO', '15/11/1999', ''),
(163, 139, 'FOKAM KAMGUEM', 'ZOE', '29/04/2003', ''),
(164, 141, 'CALCO', 'LEA', '24/10/2001', ''),
(165, 141, 'CALCO', 'ROMAIN', '24/10/2001', ''),
(166, 142, 'CAMUS', 'EMIE', '05/03/2010', ''),
(167, 142, 'CAMUS', 'MAHE', '18/12/2014', ''),
(168, 142, 'LE CLAINCHE', 'LISA', '03/08/2006', ''),
(169, 143, 'CARO', 'LISEA', '08/06/2005', ''),
(170, 143, 'CARO', 'MIGUEL', '19/02/2003', ''),
(171, 143, 'CARO', 'NAOMIE', '04/07/2007', ''),
(172, 143, 'CARO', 'OC?ANE', '08/08/2000', ''),
(173, 145, 'CAUCHARD', 'MAELLE', '10/01/2006', ''),
(174, 146, 'CAYON', 'DAMIEN', '12/01/1987', ''),
(175, 147, 'CHANTEUX', 'ETHAN', '23/01/2009', ''),
(176, 148, 'CHARDON', 'LAURENE', '05/07/1996', ''),
(177, 149, 'CHARLEUX', 'DAVID', '10/10/1993', ''),
(178, 149, 'CHARLEUX', 'EMELINE', '18/02/1997', ''),
(179, 152, 'CHAUSSEPIED', 'LAETITIA', '15/04/1995', ''),
(180, 152, 'CHAUSSEPIED', 'THOMAS', '30/04/1997', ''),
(181, 154, 'CHEVALEYRE', 'TIM', '26/02/2011', ''),
(182, 156, 'CHOQUET', 'EDEN', '01/08/2014', ''),
(183, 157, 'CLEC''H', 'MORGANN', '11/10/2006', ''),
(184, 158, 'COIGNARD', 'MANOLA', '15/12/2009', ''),
(185, 158, 'COIGNARD', 'MATHIEU', '16/01/2001', ''),
(186, 158, 'COIGNARD', 'MICKAEL', '24/06/1995', ''),
(187, 159, 'COLOMBEAU', 'CAMILLE', '29/05/1996', ''),
(188, 159, 'COLOMBEAU', 'CHLO+', '15/05/1991', ''),
(189, 159, 'COLOMBEAU', 'FLAVIE', '05/07/1999', ''),
(190, 159, 'COLOMBEAU', 'TIMEO', '18/10/2007', ''),
(191, 160, 'COLOMBEAU', 'CAMILLE', '29/05/1996', ''),
(192, 160, 'COLOMBEAU', 'CHLOE', '15/05/1991', ''),
(193, 160, 'COLOMBEAU', 'FLAVIE', '05/07/1999', ''),
(194, 160, 'COLOMBEAU', 'TIMEO', '18/10/2007', ''),
(195, 161, ' PFAD', 'CLEMENT', '09/07/2007', ''),
(196, 161, 'CORNUT PFAD', 'THIBAUT', '24/04/2011', ''),
(197, 164, 'COUTARD', 'ALEXIS', '03/10/1991', ''),
(198, 164, 'COUTARD', 'SOPHIE', '28/08/1988', ''),
(199, 165, 'COZMA', 'STEFAN', '20/11/2012', ''),
(200, 166, 'CROS', 'ROMAIN', '24/02/2013', ''),
(201, 166, 'CROS', 'VINCENT', '27/11/2009', ''),
(202, 169, 'DAILLIERE', 'F+LICIE', '12/11/1997', ''),
(203, 169, 'DAILLIERE', 'FLAVIS', '28/11/2001', ''),
(204, 169, 'DAILLIERE', 'VALENTIN', '20/10/1999', ''),
(205, 170, 'DAL MOLIN', 'MAGALI', '22/01/1991', ''),
(206, 170, 'DAL MOLIN', 'RUDY', '02/09/1993', ''),
(207, 172, 'DAVIS', 'FABIEN', '16/01/1999', ''),
(208, 172, 'DAVIS', 'LAURA', '10/12/2002', ''),
(209, 172, 'DAVIS', 'YLHAN', '16/11/2011', ''),
(210, 175, 'DECLE', 'MATHIEU', '09/10/1989', ''),
(211, 181, 'DEZECOT', 'NOLAN', '21/03/2008', ''),
(212, 181, 'DEZECOT', 'SOLENNE', '19/10/1998', ''),
(213, 182, 'DITACROUTE', 'ALYSEE', '01/05/2010', ''),
(214, 187, 'DOINEAU', 'MAETHIS', '24/09/2013', ''),
(215, 187, 'DOINEAU', 'NO?LINE', '30/11/2011', ''),
(216, 188, 'DUBLE', 'FRANCOIS', '02/11/1998', ''),
(217, 188, 'DUBLE', 'PIERRE', '05/06/2001', ''),
(218, 189, 'DUBOIS', 'SOPHIE', '26/06/2001', ''),
(219, 189, 'DUBOIS', 'THOMAS', '03/10/2003', ''),
(220, 190, 'DUPERRAY', 'CHLO?', '18/08/2010', ''),
(221, 190, 'DUPERRAY', 'LOISE', '17/11/2006', ''),
(222, 191, 'DURIEZ', 'JAN', '12/10/1984', ''),
(223, 192, 'DUVEAU', 'CLELIA', '25/01/2006', ''),
(224, 192, 'DUVEAU', 'KYLLIAN', '15/11/2008', ''),
(225, 194, 'ECOMARD', 'LILIAN', '30/07/2010', ''),
(226, 194, 'ECOMARD', 'NOE', '03/07/2012', ''),
(227, 195, 'ESNAU', 'RYANA', '16/04/2006', ''),
(228, 195, 'LEGRAS', 'MARION', '01/06/2010', ''),
(229, 195, 'LEGRAS', 'YASMINE', '15/04/2008', ''),
(230, 195, 'TROUILLAUD', 'NEO', '02/06/2009', ''),
(231, 199, 'FERRIERE', 'JORDAN', '14/06/2014', ''),
(232, 199, 'FERRIERE', 'LYLIAN', '05/02/2010', ''),
(233, 199, 'FERRIERE', 'OCEANE', '05/12/2007', ''),
(234, 200, 'FEVRIER', 'AUDREY', '25/07/2002', ''),
(235, 200, 'FEVRIER', 'CHLOE', '11/02/2004', ''),
(236, 201, 'FLAO', 'MARINE', '25/03/2001', ''),
(237, 201, 'ROUMY', 'FLORIAN', '12/12/1992', ''),
(238, 202, 'FLORINEDA', 'ALICE', '13/04/1989', ''),
(239, 202, 'FLORINEDA', 'ANNE', '29/07/1992', ''),
(240, 202, 'FLORINEDA', 'CECILE', '22/07/1997', ''),
(241, 204, 'FONTAINE MOINET', 'REMI', '15/09/1996', ''),
(242, 206, 'FOSSE', 'ADELAIDE', '11/07/2003', ''),
(243, 206, 'FOSSE', 'CONSTANCE', '11/12/2007', ''),
(244, 206, 'FOSSE', 'FIRMIN', '10/11/2004', ''),
(245, 209, 'FRAQUET', 'ALEXIS', '29/01/1999', ''),
(246, 209, 'FRAQUET', 'CORALIE', '04/08/2000', ''),
(247, 209, 'FRAQUET', 'REMI', '28/02/2004', ''),
(248, 212, 'GARNIER', 'MA?L ANTHONY MICHEL', '14/03/2012', ''),
(249, 215, 'GILBERT', 'LUDOVIC', '15/03/1983', ''),
(250, 215, 'GILBERT', 'ROZENN', '28/09/1984', ''),
(251, 216, 'GIRARDEAU', 'ANAIS', '22/05/2000', ''),
(252, 216, 'GIRARDEAU', 'FABIEN', '07/05/1997', ''),
(253, 216, 'GIRARDEAU', 'TOM', '18/02/2012', ''),
(254, 216, 'GIRARDEAU', 'ZOE', '03/02/2011', ''),
(255, 218, 'CHARTIER', 'MATHILDA', '02/08/2002', ''),
(256, 218, 'EON', 'ALEXANDRE', '25/06/2000', ''),
(257, 218, 'GODARD', 'LIZEA', '24/02/2006', ''),
(258, 219, 'GODARD', 'EVAN', '10/02/2011', ''),
(259, 219, 'GODARD', 'LENA', '12/12/2007', ''),
(260, 220, 'GODARD', 'EVAN', '10/02/2011', ''),
(261, 220, 'GODARD', 'LENA', '12/12/2007', ''),
(262, 222, 'GOIZET', 'LEA', '19/03/1997', ''),
(263, 222, 'GOIZET', 'MARIE', '26/09/1998', ''),
(264, 222, 'LATOUR', 'ELISE', '14/03/2004', ''),
(265, 226, 'GRONFOT', 'MA?L', '27/02/2013', ''),
(266, 226, 'GRONFOT', 'TOM', '17/12/2010', ''),
(267, 227, 'GROSBOIS', 'ROMAIN', '23/07/1989', ''),
(268, 229, 'GUERROUDJ', 'DOUNIA', '18/08/2009', ''),
(269, 230, 'GUICHARD', 'SONIA', '23/05/2005', ''),
(270, 231, 'GUIET', 'GEOFFRAY', '12/01/1996', ''),
(271, 231, 'GUIET', 'THOMAS', '15/12/1999', ''),
(272, 234, 'HAMARD', 'ELOISE', '31/05/1993', ''),
(273, 235, 'HAMELIN', 'LALIANNA', '02/05/2013', ''),
(274, 236, 'HAMONIER', 'VALENTIN', '18/02/1999', ''),
(275, 241, 'HY', 'TYLIAN', '27/02/2011', ''),
(276, 242, 'JARRY', 'LUCIE', '03/02/1992', ''),
(277, 242, 'JARRY', 'YOHAN', '14/06/1995', ''),
(278, 244, 'JEFFRARD', 'KYLIAN', '06/01/1992', ''),
(279, 246, 'JOLY', 'ALEXANDRE', '17/06/1992', ''),
(280, 246, 'JOLY', 'MELISSA', '30/07/1996', ''),
(281, 247, 'JOSSELIN', 'LOUNA', '19/03/2009', ''),
(282, 247, 'JOSSELIN', 'NOLANN', '27/10/2013', ''),
(283, 249, 'JOUIN', 'AURELIEN', '06/09/1999', ''),
(284, 249, 'JOUIN', 'MAXIME', '25/09/2001', ''),
(285, 252, 'LAMBERT JUBAULT', 'MANON', '21/11/2013', ''),
(286, 252, 'LAMBERT JUBAULT', 'QUENTIN', '16/09/2011', ''),
(287, 254, 'HIREL', 'CASSANDRA', '07/08/1992', ''),
(288, 254, 'KEBANGA', 'CLERY', '03/04/2007', ''),
(289, 255, 'KHOUMSI', 'ILIAS', '02/09/2004', ''),
(290, 255, 'KHOUMSI', 'SOUFIAN', '11/10/2000', ''),
(291, 256, 'LAIGLE', 'ZOE', '29/12/2007', ''),
(292, 257, 'LAMBERT JUBAULT', 'MANON', '21/11/2013', ''),
(293, 257, 'LAMBERT JUBAULT', 'QUENTIN', '16/09/2011', ''),
(294, 258, 'LANGINIER', 'CHARLOTTE', '07/05/1984', ''),
(295, 258, 'LANGINIER', 'CORINNE', '05/09/1988', ''),
(296, 258, 'LANGINIER', 'STEPHANE', '09/11/1985', ''),
(297, 263, 'LE PETITCORPS', 'LALY', '23/11/2010', ''),
(298, 263, 'LE PETITCORPS', 'LENORA', '16/10/2013', ''),
(299, 263, 'LE PETITCORPS', 'LOUNA', '26/12/2008', ''),
(300, 263, 'LE PETITCORPS', 'LUCILE', '25/09/2006', ''),
(301, 265, 'BODAN', 'MICKAELLA', '29/11/1996', ''),
(302, 265, 'ROBERT', 'CALLIE', '27/04/2004', ''),
(303, 266, 'LEBOUCHER', 'CHRISTOPHER', '19/04/2011', ''),
(304, 266, 'LEBOUCHER', 'MAEL', '28/02/2005', ''),
(305, 266, 'LEBOUCHER', 'OCEANE', '04/01/2002', ''),
(306, 266, 'LEBOUCHER', 'SORENZA', '26/12/2008', ''),
(307, 267, 'LECONTE', 'JULIE', '12/10/1999', ''),
(308, 267, 'LECONTE', 'LUCAS', '01/01/2005', ''),
(309, 272, 'BRUGIERE', 'CHLOE', '26/07/2003', ''),
(310, 272, 'BRUGIERE', 'MAXIME', '02/07/2006', ''),
(311, 272, 'LEGENDRE BRUGIERE', 'MAYANNE', '28/08/2012', ''),
(312, 269, 'LEGENDRE', 'LEO', '22/05/2009', ''),
(313, 269, 'LEGENDRE', 'MA+LYS', '06/12/2004', ''),
(314, 274, 'LEMOINE', 'LUCAS', '03/11/2014', ''),
(315, 278, 'LEROUX', 'JESSY', '28/11/1992', ''),
(316, 278, 'LEROUX', 'SANDRA', '18/09/1997', ''),
(317, 280, 'LESSIAU', 'CORALIE', '11/06/1998', ''),
(318, 280, 'LESSIAU', 'CORENTIN', '08/02/1994', ''),
(319, 281, 'LHOPITEAU', 'COLINE', '02/11/2005', ''),
(320, 281, 'LHOPITEAU', 'NOE', '20/07/2009', ''),
(321, 283, 'LICOIS', 'CHARLYNE', '14/04/2008', ''),
(322, 283, 'LICOIS', 'FLORENT', '27/10/2005', ''),
(323, 283, 'LICOIS', 'JEROME', '11/06/1986', ''),
(324, 284, 'DERRIEN', 'ANAIS', '05/10/2001', ''),
(325, 284, 'DERRIEN', 'GWENDAL', '04/01/2004', ''),
(326, 284, 'LICOIS', 'GABRIEL', '13/11/2012', ''),
(327, 284, 'LICOIS', 'SOLENE', '08/05/2014', ''),
(328, 285, 'LICOIS', 'GABRIEL', '13/11/2012', ''),
(329, 285, 'LICOIS', 'SOLENE', '08/05/2014', ''),
(330, 286, 'LOPEZ', 'MAELYS', '16/03/2012', ''),
(331, 288, 'LORET', 'CHRISTAL', '26/04/2007', ''),
(332, 288, 'LORET', 'HAYDEN', '06/09/2011', ''),
(333, 288, 'LORET', 'KURT', '19/01/2009', ''),
(334, 288, 'LORET', 'OCEAN', '25/08/2004', ''),
(335, 289, 'LORET', 'CRISTAL', '26/04/2007', ''),
(336, 289, 'LORET', 'HAYDEN', '06/09/2011', ''),
(337, 289, 'LORET', 'KURT', '19/01/2009', ''),
(338, 289, 'LORET', 'OCEAN', '25/08/2004', ''),
(339, 290, 'MAHOT', 'CLEMENTINE', '31/03/1992', ''),
(340, 290, 'MAHOT', 'TRISTAN', '26/02/1995', ''),
(341, 292, 'MAINGOT', 'JULIA', '12/06/1996', ''),
(342, 293, 'MARAIS', 'THOMAS', '11/01/1990', ''),
(343, 294, 'MARCHAND', 'ARTHUR', '02/04/2014', ''),
(344, 295, 'MARCHAND', 'SARAH', '13/05/2007', ''),
(345, 295, 'MARCHAND', 'THOMAS', '25/08/2004', ''),
(346, 296, 'MARTIN', 'LUCAS', '18/07/2001', ''),
(347, 296, 'MARTIN', 'ROMANE', '09/10/2006', ''),
(348, 297, 'MASSE', 'ALICIA', '14/11/1994', ''),
(349, 297, 'MASSE', 'DORAIN', '15/02/2005', ''),
(350, 297, 'MASSE', 'KEVIN', '09/07/1993', ''),
(351, 297, 'MASSE', 'MATHEO', '28/04/2007', ''),
(352, 297, 'MASSE', 'WENDY', '19/10/1996', ''),
(353, 298, 'MASSE', 'DORIAN', '15/02/2005', ''),
(354, 298, 'MASSE', 'MATHEO', '28/04/2007', ''),
(355, 300, 'BIGOT', 'ROMAIN', '09/08/1991', ''),
(356, 300, 'MAUXION', 'LILOU', '12/11/2003', ''),
(357, 300, 'MAUXION', 'ROZENN', '07/09/1996', ''),
(358, 301, 'MEFFRAY', 'ALEXIS', '29/10/2006', ''),
(359, 301, 'MEFFRAY', 'LAURA', '14/05/2008', ''),
(360, 302, 'MENARD', 'ANTOINE', '03/06/2006', ''),
(361, 303, 'MERCIER', 'ANTOINE', '20/12/1981', ''),
(362, 303, 'MERCIER', 'BENJAMIN', '29/06/1988', ''),
(363, 303, 'MERCIER', 'FRANCOIS', '24/08/1984', ''),
(364, 304, 'MILCENT', 'LUCAS', '22/09/2006', ''),
(365, 304, 'MILCENT', 'MATHIS', '22/09/2006', ''),
(366, 304, 'MILCENT', 'SOLENE', '22/09/2006', ''),
(367, 305, 'MEZIERES', 'OCEANE', '29/07/1994', ''),
(368, 305, 'MILOCHE', 'ENOLA', '05/10/2010', ''),
(369, 305, 'MILOCHE', 'SASHA', '03/10/2002', ''),
(370, 305, 'MILOCHE', 'SHANNA', '19/04/2007', ''),
(371, 307, 'MOREAU', 'ALEXIS', '22/05/1997', ''),
(372, 307, 'MOREAU', 'JESSY', '18/04/1992', ''),
(373, 307, 'MOREAU', 'KIMBERLY', '13/10/2004', ''),
(374, 307, 'MOREAU', 'NOAMY', '14/12/2007', ''),
(375, 307, 'TRANCHANT', 'AMELIE', '11/01/1993', ''),
(376, 307, 'TRANCHANT', 'CORALIE', '21/07/1990', ''),
(377, 308, 'MORIN', 'JULIEN', '24/09/1985', ''),
(378, 309, 'MORTIER', 'MARION', '11/01/1989', ''),
(379, 309, 'MORTIER', 'THOMAS', '25/11/1992', ''),
(380, 310, 'MOUNIER', 'CLOTILDE', '10/07/2003', ''),
(381, 310, 'MOUNIER', 'GREGOIRE', '18/04/2005', ''),
(382, 310, 'MOUNIER', 'MAYLIS', '05/01/2002', ''),
(383, 310, 'MOUNIER', 'SOLENE', '13/09/2007', ''),
(384, 311, 'DELESTRE', 'JONATHAN', '06/04/1996', ''),
(385, 311, 'DELESTRE', 'KEVIN', '28/02/1993', ''),
(386, 312, 'MORICE ONILLON', 'DORIANE', '05/10/2008', ''),
(387, 313, 'OTMANE CHERIF', 'ILYASS', '18/01/2013', ''),
(388, 313, 'OTMANE CHERIF', 'ZOUHEIR', '02/11/2008', ''),
(389, 314, 'PALLIER', 'ETHAN', '08/11/2014', ''),
(390, 315, 'REMARS', 'ANTONIN', '14/04/2014', ''),
(391, 318, 'PASTEUR', 'ANNABEL', '08/09/1995', ''),
(392, 318, 'PASTEUR', 'CHARLY', '10/05/1999', ''),
(393, 318, 'PASTEUR', 'LOU', '02/09/2000', ''),
(394, 322, 'PAVIOT', 'ILHAN', '22/10/2007', ''),
(395, 322, 'PAVIOT', 'MATHYS', '07/08/2011', ''),
(396, 320, 'PAVIOT', 'ILHAN', '22/10/2007', ''),
(397, 320, 'PAVIOT', 'MATHYS', '07/08/2011', ''),
(398, 323, 'BOUGET', 'GABY', '02/10/2002', ''),
(399, 323, 'BOUGET', 'PRISCILLA', '23/11/1993', ''),
(400, 323, 'PAYMAL', 'TEDDY', '28/07/1989', ''),
(401, 324, 'PERDRIAU', 'JESSY', '21/10/1999', ''),
(402, 324, 'PERDRIAU', 'SORAYA', '26/04/2005', ''),
(403, 325, 'PERDRIX', 'ROMAIN', '23/07/2001', ''),
(404, 325, 'PERDRIX', 'THOMAS', '11/07/2003', ''),
(405, 326, 'PERPOIL', 'ANTOINE', '14/05/1993', ''),
(406, 328, 'PINSON', 'AMANDINE', '28/03/2009', ''),
(407, 328, 'PINSON', 'KILLIAN', '13/12/2000', ''),
(408, 328, 'PINSON', 'MORGANE', '24/10/2005', ''),
(409, 329, 'PIOTET', 'SOLENE', '16/11/2002', ''),
(410, 331, 'PIVERT', 'JULIEN', '25/01/1987', ''),
(411, 332, 'PLACAIS', 'NATHAN', '29/10/2011', ''),
(412, 334, 'POCHARD', 'ANGELINA', '18/02/1997', ''),
(413, 334, 'POCHARD', 'HELENA', '09/04/2003', ''),
(414, 334, 'POCHARD', 'SABRINA', '08/05/1992', ''),
(415, 335, 'POIRIER', 'BERTILLE', '03/01/2000', ''),
(416, 335, 'POIRIER', 'BRIEUX', '06/09/2003', ''),
(417, 335, 'POIRIER', 'LILY', '21/09/2006', ''),
(418, 335, 'POIRIER', 'MAIXAN', '11/06/2002', ''),
(419, 336, 'POMMIER', 'NOAH', '24/03/2013', ''),
(420, 339, 'POUPIN', 'JULIEN', '02/07/1986', ''),
(421, 339, 'POUPIN', 'MORGANE', '07/11/1995', ''),
(422, 340, 'PROTIN', 'R?MI', '11/10/2013', ''),
(423, 342, 'RABEL', 'JAMES', '14/01/1983', ''),
(424, 343, 'RABOUIN', 'BENOIT', '18/05/1999', ''),
(425, 343, 'RABOUIN', 'CORALIE', '01/10/1995', ''),
(426, 344, 'RAIMBAULT', 'ALEXIS', '22/05/2006', ''),
(427, 344, 'RAIMBAULT', 'KEVIN', '14/07/2000', ''),
(428, 344, 'RAIMBAULT', 'LOLITA', '19/03/2003', ''),
(429, 345, 'RAOUI', 'ABOUBAKAR', '12/04/2013', ''),
(430, 348, 'RATEAU', 'JULIE', '27/07/1990', ''),
(431, 349, 'REDCENT', 'ABBIE', '30/01/2011', ''),
(432, 349, 'REDCENT', 'TOMMY', '23/09/2007', ''),
(433, 351, 'COURANT', 'ELODIE', '11/11/1997', ''),
(434, 352, 'REPUSSARD', 'BENOIST', '24/02/2000', ''),
(435, 352, 'REPUSSARD', 'KEVIN', '13/12/1997', ''),
(436, 358, 'RODRIGUES', 'DOMINIQUE', '26/11/2006', ''),
(437, 358, 'RODRIGUES', 'ESTHER', '08/08/2014', ''),
(438, 358, 'RODRIGUES', 'GABRIEL', '08/04/2005', ''),
(439, 358, 'RODRIGUES', 'ROSETH', '31/03/2002', ''),
(440, 359, 'RONCIER', 'ANGELINA', '29/05/1998', ''),
(441, 360, 'BARANGER', 'DYLAN', '01/01/2001', ''),
(442, 362, 'MIGNOT', 'MIGUEL', '18/11/2009', ''),
(443, 363, 'ROUSSEL', 'BAPTISTE', '04/04/2002', ''),
(444, 363, 'ROUSSEL', 'MATHIAS', '26/09/2004', ''),
(445, 364, 'ROZAT', 'ELODIE', '21/07/1988', ''),
(446, 365, 'SALMON', 'MARIE', '09/08/1996', ''),
(447, 365, 'SALMON', 'MAXIME', '10/08/2002', ''),
(448, 365, 'SALMON', 'THOMAS', '11/06/1998', ''),
(449, 368, 'SENO', 'PIERRE', '29/01/2003', ''),
(450, 369, 'SOURDEAU', 'LAETITIA', '07/11/1991', ''),
(451, 369, 'SOURDEAU', 'LAURA', '27/03/1995', ''),
(452, 371, 'THEVENET', 'MATHILDE', '01/10/1997', ''),
(453, 374, 'CHAMAILLE', 'GAYLORD', '02/09/1982', ''),
(454, 374, 'THIBERGE', 'MORGAN', '06/01/1992', ''),
(455, 374, 'THIBERGE', 'ST+PHANIE', '22/07/1987', ''),
(456, 376, 'THOMAS', 'HUGO', '25/06/2002', ''),
(457, 376, 'THOMAS', 'QUENTIN', '21/02/1999', ''),
(458, 375, 'THOMAS', 'HUGO', '25/06/2002', ''),
(459, 375, 'THOMAS', 'QUENTIN', '21/02/1999', ''),
(460, 377, 'THOMPSON', 'EDOUARD', '24/03/2012', ''),
(461, 377, 'THOMPSON', 'ELO?SE', '10/02/2014', ''),
(462, 377, 'THOMPSON', 'JULIANA', '06/07/2010', ''),
(463, 379, 'TIRLET', 'MATHEO', '23/10/2010', ''),
(464, 380, 'TRANCHANT', 'KEVIN', '22/11/1991', ''),
(465, 380, 'TRANCHANT', 'MARJORIE', '16/08/1994', ''),
(466, 384, 'TROST', 'LENA', '30/05/2003', ''),
(467, 384, 'TROST', 'MAELY', '01/02/2006', ''),
(468, 384, 'TROST', 'SHANICE', '21/08/2011', ''),
(469, 382, 'TROST', 'LAENA', '15/09/2010', ''),
(470, 383, 'TROST', 'WESLEY', '13/02/2013', ''),
(471, 385, 'TURPIN', 'NICOLAS', '30/09/1991', ''),
(472, 385, 'TURPIN', 'PAULINE', '07/10/1997', ''),
(473, 386, 'VATTAT', 'TOM', '10/08/1993', ''),
(474, 387, 'VENERIA', 'LORINE', '19/06/2008', ''),
(475, 387, 'VENERIA', 'ROMAIN', '01/11/2003', ''),
(476, 388, 'VERBELEN', 'LEA', '20/08/2003', ''),
(477, 388, 'VERBELEN', 'MARION', '02/05/2006', ''),
(478, 388, 'VERBELEN', 'MORGANE', '03/10/2010', ''),
(479, 389, 'VERGER', 'COLINE', '17/06/1999', ''),
(480, 389, 'VERGER', 'JORDAN', '20/08/1995', ''),
(481, 390, 'VERGNAUD', 'ENZO', '22/03/2005', ''),
(482, 390, 'VERGNAUD', 'PRESCILLIA', '25/08/2001', ''),
(483, 391, 'VINCENT', 'AMANDINE', '08/08/1996', ''),
(484, 391, 'VINCENT', 'DJOVANNIE', '18/02/1993', ''),
(485, 391, 'VINCENT', 'KEVIN', '10/11/1989', ''),
(486, 391, 'VINCENT', 'MA+VA', '10/01/2001', ''),
(487, 392, 'VINCENT', 'ENZO', '27/01/2011', ''),
(488, 392, 'VINCENT', 'MAXIME', '24/06/1994', ''),
(489, 392, 'VINCENT', 'WILLIAM', '27/08/1998', ''),
(490, 393, 'VINEAU', 'CL+O ZO+', '12/07/2003', ''),
(491, 393, 'VINEAU', 'NOA', '13/01/2008', ''),
(492, 394, 'VOLUETTE', 'MARION', '10/01/2003', ''),
(493, 394, 'VOLUETTE', 'PRUDENCE', '06/02/2005', ''),
(494, 394, 'VOLUETTE', 'QUENTIN', '22/05/1998', ''),
(495, 395, 'VOLUETTE', 'ELODIE', '20/07/2004', ''),
(496, 395, 'VOLUETTE', 'FABIEN', '16/06/1997', ''),
(497, 395, 'VOLUETTE', 'JEROME', '12/05/1991', ''),
(498, 395, 'VOLUETTE', 'JULIEN', '09/12/1993', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=359 ;

--
-- Contenu de la table `bilan`
--

INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(68, 2, 'Vente de Billetterie: MAHOT PATRICK pour la prestation Gaumont', '', '30', '52785046'),
(70, 2, 'Vente de Billetterie: BERTHONNEAU CELINE pour la prestation Gaumont', '', '30', '3005747'),
(78, 2, 'Vente de Billetterie: NEVOUX ISABELLE pour la prestation Gaumont', '', '30', '53198101'),
(83, 2, 'Vente de Billetterie: POUPIN MICHEL pour la prestation Gaumont', '', '30', '28339243'),
(91, 2, 'Vente de Billetterie: DITACROUTE SYLVAIN pour la prestation Gaumont', '', '15', '70336237'),
(92, 2, 'Vente de Billetterie: POIRIER STEPHANE pour la prestation Gaumont', '', '30', '65739136'),
(95, 1, 'Achat: Gaumont', '760', '', ''),
(100, 2, 'Vente de Billetterie: RABOUIN CECILE pour la prestation Cin&eacute;ma Stella', '', '30', '63449367'),
(105, 2, 'Vente de Billetterie: BOUCARD PASCAL pour la prestation Gaumont', '', '5', '26294204'),
(107, 2, 'Vente de Billetterie: PICOULEAU STEPHANE pour la prestation Gaumont', '', '15', '25201069'),
(110, 2, 'Vente de Billetterie: DUBLE AGATHE pour la prestation Gaumont', '', '15', '1590345'),
(122, 2, 'Vente de Billetterie: MASSE SYLVIE pour la prestation Gaumont', '', '15', '55527679'),
(129, 1, 'Achat: Gaumont', '760', '', ''),
(135, 2, 'Vente de Billetterie: MASSE SYLVIE pour la prestation Gaumont', '', '40', '61617106'),
(138, 2, 'Vente de Billetterie: GOUJON CHRISTINE pour la prestation Gaumont', '', '15', '56460345'),
(139, 2, 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '5', '94080048'),
(142, 2, 'Vente de Billetterie: RODRIGUES FERNANDO pour la prestation Gaumont', '', '15', '47159085'),
(143, 2, 'Vente de Billetterie: MOREAU PHILIPPE pour la prestation Gaumont', '', '30', '36713277'),
(145, 2, 'Vente de Billetterie: BRUNEAU JACQUELINE pour la prestation Gaumont', '', '5', '95012443'),
(146, 1, 'Achat: Gaumont', '760', '', ''),
(149, 2, 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '5', '38777535'),
(150, 2, 'Vente de Billetterie: MARCHAND SEBASTIEN pour la prestation Gaumont', '', '15', '17515041'),
(152, 2, 'Vente de Billetterie: BEAUDET JEAN DAMIEN pour la prestation Gaumont', '', '30', '92033985'),
(155, 2, 'Vente de Billetterie: DELAUNAY PHILIPPE pour la prestation Gaumont', '', '30', '44216247'),
(156, 2, 'Vente de Billetterie: BURILLON STEPHANIE pour la prestation Gaumont', '', '50', '8907149'),
(157, 2, 'Vente de Billetterie: BERTHO CYRIL pour la prestation Gaumont', '', '15', '36494924'),
(162, 2, 'Vente de Billetterie: BERTHO CYRIL pour la prestation Gaumont', '', '5', '63414335'),
(164, 2, 'Vente de Billetterie: BERTHONNEAU CELINE pour la prestation Gaumont', '', '30', '94754136'),
(167, 2, 'Vente de Billetterie: DUVEAU STEPHANE pour la prestation Gaumont', '', '15', '43437573'),
(168, 2, 'Vente de Billetterie: JAZIRI  MAHDI pour la prestation Gaumont', '', '35', '46387556'),
(172, 2, 'Vente de Billetterie: HAMONIER OLIVIER pour la prestation Gaumont', '', '30', '82857424'),
(184, 1, 'Achat: Gaumont', '760', '', ''),
(185, 2, 'Vente de Billetterie: GILBERT DOMINIQUE pour la prestation Gaumont', '', '30', '33343919'),
(187, 2, 'Vente de Billetterie: THIBERGE MARIE CLAUDE pour la prestation Gaumont', '', '5', '39476281'),
(192, 2, 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '5', '42884813'),
(197, 2, 'Vente de Billetterie: DOINEAU MICHEL pour la prestation Gaumont', '', '30', '58694919'),
(203, 2, 'Vente de Billetterie: JOBIN OLIVIER pour la prestation Gaumont', '', '15', '91121691'),
(207, 2, 'Vente de Billetterie: MASSE SYLVIE pour la prestation Gaumont', '', '15', '12067273'),
(210, 2, 'Vente de Billetterie: THIBERGE MARIE CLAUDE pour la prestation Gaumont', '', '30', '72406326'),
(211, 2, 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '15', '92991337'),
(213, 1, 'Achat: Gaumont', '380', '', ''),
(219, 2, 'Vente de Billetterie: PIOTET GERALD pour la prestation Gaumont', '', '15', '9241845'),
(220, 2, 'Vente de Billetterie: VINCENT LAURENT pour la prestation Gaumont', '', '45', '54705031'),
(222, 2, 'Vente de Billetterie: LASSAY ANTHONY pour la prestation Gaumont', '', '30', '35883528'),
(224, 2, 'Vente de Billetterie: JAZIRI  MAHDI pour la prestation Gaumont', '', '40', '96754999'),
(228, 2, 'Vente de Billetterie: NEVOUX ISABELLE pour la prestation Gaumont', '', '30', '83750742'),
(229, 2, 'Vente de Billetterie: ANGELO ERIC pour la prestation Gaumont', '', '20', '58977284'),
(232, 2, 'Vente de Billetterie: RABOUIN CECILE pour la prestation Cin&eacute;ma Stella', '', '30', '93526169'),
(236, 2, 'Vente de Billetterie: MASSE SYLVIE pour la prestation Cin&eacute;ma Saumur', '', '15', '27696166'),
(238, 2, 'Vente de Billetterie: FOIN PHILIPPE pour la prestation Cin&eacute;ma Saumur', '', '20', '79214235'),
(241, 1, 'Achat: Cin&eacute;ma Saumur', '136', '', ''),
(242, 2, 'Vente de Billetterie: DEBELLY JEANNE pour la prestation Cin&eacute;ma Saumur', '', '20', '74759945'),
(244, 2, 'Vente de Billetterie: LHOPITEAU RAPHAEL pour la prestation Cin&eacute;ma Saumur', '', '25', '59673033'),
(245, 2, 'Vente de Billetterie: SENO JEAN PIERRE pour la prestation Cin&eacute;ma Saumur', '', '15', '63083424'),
(248, 2, 'Vente de Billetterie: MERCIER JACKY pour la prestation Cin&eacute;ma Stella', '', '30', '77386723'),
(249, 1, 'Achat: Gaumont', '387.6', '', ''),
(250, 2, 'Vente de Billetterie: MASSE SYLVIE pour la prestation Cin&eacute;ma Beaufort', '', '6', '23523761'),
(251, 2, 'Vente de Billetterie: FLAO PATRICK pour la prestation Gaumont', '', '100', '14721914'),
(255, 2, 'Vente de Billetterie: FLAO PATRICK pour la prestation zoo de la fl&egrave;che adulte', '', '50', '52208082'),
(257, 2, 'Vente de Billetterie: FLAO PATRICK pour la prestation zoo de la fl&egrave;che adulte', '', '50', '45200751'),
(259, 2, 'Vente de Billetterie: FLAO PATRICK pour la prestation zoo de la fl&egrave;che adulte', '', '50', '62343061'),
(261, 2, 'Vente de Billetterie: FLAO PATRICK pour la prestation Cin&eacute;ma Stella', '', '15', '17043390'),
(264, 2, 'Vente de Billetterie: ROZAT ERIC pour la prestation Gaumont', '', '20', '77622960'),
(269, 2, 'Vente de Billetterie: BLOT LAETITIA pour la prestation Gaumont', '', '15', '2115781'),
(270, 2, 'Vente de Billetterie: DUBLE AGATHE pour la prestation Gaumont', '', '15', '48194237'),
(274, 2, 'Vente de Billetterie: MORIN ALAIN pour la prestation parc animalier', '', '92', '88572192'),
(278, 2, 'Vente de Billetterie: FOSSE WILLY pour la prestation parc animalier', '', '64.5', '30662853'),
(280, 2, 'Vente de Billetterie: DOINEAU MICHEL pour la prestation Sport', '', '67', '48422430'),
(282, 2, 'Vente de Billetterie: DAVIS GILLES pour la prestation Concert', '', '160', '27225908'),
(285, 2, 'Vente de Billetterie: BRAZILLE MICKAEL pour la prestation Sport', '', '104', '68592717'),
(286, 2, 'Vente de Billetterie: ROZAT ERIC pour la prestation Concert', '', '120', '3218691'),
(287, 2, 'Vente de Billetterie: BODIN EMMANUEL pour la prestation Concert', '', '150', '12222095'),
(288, 2, 'Vente de Billetterie: CROS FABIEN pour la prestation parc animalier', '', '73', '64902692'),
(289, 2, 'Vente de Billetterie: CHEVALEYRE JULIE pour la prestation parc animalier', '', '50.5', '54345552'),
(296, 1, 'Ajout de la charge Fixe: Sorties scolaires', '45', '', ''),
(300, 2, 'Vente de Billetterie: BOURDIN SEBASTIEN pour la prestation Sorties scolaires', '', '0', '89496339'),
(301, 1, 'Ajout de la charge Fixe: Sorties scolaires', '45', '', ''),
(302, 1, 'Ajout de la charge Fixe: Sorties scolaires', '45', '', ''),
(303, 1, 'Ajout de la charge Fixe: Sorties scolaires', '45', '', ''),
(306, 1, 'Ajout de la charge Fixe: concert', '160', '', ''),
(307, 1, 'Ajout de la charge Fixe: Cin&eacute;ma Stella', '25', '', ''),
(309, 1, 'Ajout de la charge Fixe: Piscine', '47', '', ''),
(310, 1, 'Ajout de la charge Fixe: concert', '120', '', ''),
(311, 1, 'Ajout de la charge Fixe: restoria', '4937.94', '', ''),
(312, 1, 'Ajout de la charge Fixe: Self jouet', '96.82', '', ''),
(313, 2, 'Ajout du produit fixe: objet rama', '', '492.34', ''),
(314, 2, 'Ajout du produit fixe: nuances et terroirs', '', '255', ''),
(315, 2, 'Ajout du produit fixe: virement david', '', '3000', ''),
(316, 2, 'Ajout du produit fixe: dotation  ASC', '', '17079.61', ''),
(317, 2, 'Ajout du produit fixe: virement david', '', '1500', ''),
(318, 2, 'Ajout du produit fixe: dotation  ASC', '', '15269,66', ''),
(319, 1, 'Ajout de la charge Fixe: voisin', '5285.4', '', ''),
(320, 1, 'Ajout de la charge Fixe: voisin', '3736', '', ''),
(321, 1, 'Ajout de la charge Fixe: Valrhona', '819.17', '', ''),
(324, 1, 'Achat: Cin&eacute;ma Stella', '25', '', ''),
(325, 1, 'Achat: Cin&eacute;ma Beaufort', '50', '', ''),
(326, 2, 'Vente de Billetterie: DUBOIS FABIEN pour la prestation Gaumont', '', '20', '47435540'),
(327, 2, 'Vente de Billetterie: DAL MOLIN REMY pour la prestation Gaumont', '', '20', '76847145'),
(328, 2, 'Vente de Billetterie: BESNARD SEBASTIEN pour la prestation Gaumont', '', '20', '70848806'),
(329, 2, 'Vente de Billetterie: JOSSELIN ANTHONY pour la prestation Gaumont', '', '15', '3683553'),
(330, 2, 'Vente de Billetterie: ABBASSI NAJEM EDDINE pour la prestation Gaumont', '', '20', '93127441'),
(331, 2, 'Vente de Billetterie: THIBAULT RACHEL pour la prestation Gaumont', '', '20', '72953803'),
(332, 2, 'Vente de Billetterie: TURPIN CHRISTINE pour la prestation Gaumont', '', '30', '84126801'),
(333, 2, 'Vente de Billetterie: JOBIN OLIVIER pour la prestation Gaumont', '', '10', '92466634'),
(334, 1, 'Achat: Gaumont', '380', '', ''),
(335, 2, 'Vente de Billetterie: HAMONIER OLIVIER pour la prestation Gaumont', '', '25', '23892504'),
(336, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123823', '', '110', ''),
(337, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123824', '', '328', ''),
(338, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123825', '', '300', ''),
(339, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123826', '', '375', ''),
(340, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123827', '', '145', ''),
(341, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123828', '', '60', ''),
(342, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123832', '', '135', ''),
(343, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123833', '', '180', ''),
(344, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123834', '', '200', ''),
(345, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123835', '', '125', ''),
(346, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123836', '', '115', ''),
(347, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123837', '', '165', ''),
(348, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123838', '', '170', ''),
(349, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123839', '', '135', ''),
(350, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123840', '', '120', ''),
(351, 2, 'Vente de Billetterie: HONORE EMILE pour la prestation Valrhona', '', '88.62', '11989730'),
(352, 2, 'Vente de Billetterie: JURET LAURENCE pour la prestation Valrhona', '', '37.47', '57809595'),
(353, 2, 'Vente de Billetterie: BRICHET PERPOIL MARIE CLAIRE pour la prestation Valrhona', '', '105.9', '24612589'),
(354, 2, 'Vente de Billetterie: FLAO PATRICK pour la prestation Valrhona', '', '49.72', '49448681'),
(355, 2, 'Vente de Billetterie: DOHIN THIERRY pour la prestation disney 2015', '', '40', '62414006'),
(356, 2, 'Vente de Billetterie: FLAO PATRICK pour la prestation disney 2015', '', '60', '14590119'),
(357, 2, 'Ajout du produit fixe: remise de ch&egrave;que 3123845', '', '90', ''),
(358, 2, 'Vente de Billetterie: DAILLIERE FRANCK pour la prestation Parc d''attraction', '', '84', '20221851');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=255 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`) VALUES
(32, 109, '07-01-2015', 3, '10', 1),
(33, 290, '07-01-2015', 3, '30', 1),
(34, 250, '08-01-2015', 3, '25', 1),
(35, 102, '08-01-2015', 3, '30', 1),
(37, 249, '08-01-2015', 3, '20', 1),
(40, 300, '08-01-2015', 3, '20', 1),
(41, 75, '08-01-2015', 3, '20', 1),
(42, 311, '08-01-2015', 3, '30', 1),
(43, 385, '08-01-2015', 3, '20', 1),
(44, 89, '09-01-2015', 3, '20', 1),
(45, 88, '09-01-2015', 3, '10', 1),
(46, 84, '09-01-2015', 3, '20', 1),
(47, 339, '09-01-2015', 3, '30', 1),
(48, 199, '12-01-2015', 3, '20', 0),
(49, 308, '12-01-2015', 3, '10', 1),
(50, 286, '14-01-2015', 3, '10', 1),
(51, 169, '14-01-2015', 3, '10', 1),
(52, 306, '16-01-2015', 3, '20', 1),
(53, 83, '17-01-2015', 3, '25', 1),
(54, 182, '19-01-2015', 3, '15', 1),
(55, 335, '19-01-2015', 3, '30', 1),
(56, 111, '21-01-2015', 3, '20', 1),
(57, 169, '21-01-2015', 3, '20', 1),
(58, 280, '02-02-2015', 3, '20', 1),
(59, 115, '02-02-2015', 3, '20', 1),
(60, 343, '03-02-2015', 3, '10', 1),
(61, 343, '03-02-2015', 3, '30', 1),
(62, 133, '03-02-2015', 3, '20', 1),
(63, 114, '02-02-2015', 3, '20', 1),
(64, 170, '02-02-2015', 3, '20', 1),
(65, 182, '02-02-2015', 3, '20', 1),
(66, 166, '02-02-2015', 3, '10', 1),
(67, 118, '03-02-2015', 3, '5', 1),
(68, 118, '21-01-2015', 3, '20', 1),
(69, 327, '04-02-2015', 3, '15', 1),
(70, 383, '04-02-2015', 3, '20', 1),
(71, 192, '04-02-2015', 3, '20', 1),
(72, 188, '05-02-2015', 3, '15', 1),
(73, 316, '05-02-2015', 3, '10', 1),
(74, 234, '05-02-2015', 3, '20', 1),
(75, 136, '05-02-2015', 3, '25', 1),
(76, 296, '05-02-2015', 0, '20', 1),
(77, 316, '05-02-2015', 3, '10', 1),
(78, 346, '05-02-2015', 3, '10', 1),
(79, 152, '05-02-2015', 3, '20', 1),
(80, 241, '05-02-2015', 3, '20', 1),
(81, 189, '05-02-2015', 3, '10', 1),
(82, 353, '05-02-2015', 3, '20', 1),
(83, 250, '05-02-2015', 3, '10', 1),
(84, 298, '05-02-2015', 3, '15', 1),
(85, 75, '05-02-2015', 3, '20', 1),
(86, 259, '05-02-2015', 3, '20', 1),
(87, 346, '05-02-2015', 3, '10', 1),
(88, 323, '05-02-2015', 3, '20', 1),
(89, 169, '11-02-2015', 3, '20', 1),
(90, 161, '12-02-2015', 3, '20', 1),
(91, 256, '12-02-2015', 3, '20', 1),
(92, 98, '12-02-2015', 3, '20', 1),
(93, 190, '12-02-2015', 3, '20', 1),
(94, 271, '12-02-2015', 3, '10', 1),
(95, 298, '12-02-2015', 3, '40', 1),
(96, 145, '13-02-2015', 3, '20', 1),
(97, 391, '13-02-2015', 3, '10', 1),
(98, 225, '13-02-2015', 3, '15', 1),
(99, 135, '13-02-2015', 3, '5', 1),
(100, 110, '13-02-2015', 3, '20', 1),
(101, 358, '16-02-2015', 3, '15', 1),
(102, 307, '17-02-2015', 3, '30', 0),
(103, 379, '18-02-2015', 3, '10', 1),
(104, 138, '17-02-2015', 3, '5', 1),
(105, 242, '18-02-2015', 3, '10', 1),
(106, 306, '18-02-2015', 3, '20', 1),
(107, 135, '18-02-2015', 3, '5', 1),
(108, 295, '18-02-2015', 3, '15', 1),
(109, 133, '19-02-2015', 3, '20', 1),
(110, 94, '19-02-2015', 3, '30', 1),
(111, 232, '20-02-2015', 3, '10', 1),
(112, 396, '20-02-2015', 3, '10', 1),
(113, 178, '20-02-2015', 3, '30', 1),
(114, 139, '23-02-2015', 3, '50', 1),
(115, 101, '23-02-2015', 3, '15', 1),
(116, 355, '23-02-2015', 3, '20', 1),
(117, 300, '23-02-2015', 3, '20', 1),
(118, 220, '23-02-2015', 3, '10', 1),
(119, 245, '23-02-2015', 3, '20', 1),
(120, 101, '24-02-2015', 3, '5', 1),
(121, 374, '24-02-2015', 3, '20', 1),
(122, 102, '24-02-2015', 3, '30', 1),
(123, 175, '24-02-2015', 3, '20', 1),
(124, 241, '24-02-2015', 3, '10', 1),
(125, 192, '24-02-2015', 3, '15', 1),
(126, 243, '24-02-2015', 3, '35', 1),
(127, 87, '24-02-2015', 3, '10', 1),
(128, 321, '25-02-2015', 3, '25', 1),
(129, 105, '25-02-2015', 3, '25', 1),
(130, 236, '25-02-2015', 3, '30', 1),
(131, 210, '25-02-2015', 3, '20', 1),
(132, 237, '26-02-2015', 3, '20', 1),
(133, 308, '12-02-2015', 3, '20', 1),
(134, 390, '13-02-2015', 3, '10', 1),
(135, 140, '14-02-2015', 3, '20', 1),
(136, 247, '14-02-2015', 3, '25', 1),
(137, 114, '25-02-2015', 3, '25', 1),
(138, 193, '27-03-2015', 3, '10', 1),
(139, 159, '28-02-2015', 3, '10', 1),
(140, 186, '02-03-2015', 3, '20', 1),
(141, 255, '03-03-2015', 3, '20', 1),
(142, 215, '05-03-2015', 3, '30', 1),
(143, 348, '05-03-2015', 3, '20', 1),
(144, 374, '05-03-2015', 3, '5', 1),
(146, 375, '07-03-2015', 3, '20', 1),
(147, 151, '09-03-2015', 3, '20', 1),
(148, 88, '09-03-2015', 3, '10', 1),
(149, 135, '10-03-2015', 3, '5', 1),
(150, 263, '11-03-2015', 3, '10', 1),
(151, 353, '13-03-2015', 3, '20', 1),
(152, 150, '17-03-2015', 3, '10', 1),
(153, 106, '18-03-2015', 3, '10', 1),
(154, 267, '18-03-2015', 3, '10', 1),
(155, 187, '18-03-2015', 3, '30', 1),
(156, 109, '18-03-2015', 3, '10', 0),
(157, 377, '18-03-2015', 3, '10', 1),
(158, 182, '19-03-2015', 3, '10', 1),
(159, 225, '19-03-2015', 3, '20', 1),
(160, 394, '19-03-2015', 3, '25', 1),
(161, 245, '19-03-2015', 3, '15', 1),
(162, 76, '19-03-2015', 3, '10', 1),
(163, 169, '24-03-2015', 3, '20', 1),
(164, 356, '18-03-2015', 3, '25', 1),
(165, 298, '26-03-2015', 3, '15', 1),
(166, 245, '28-03-2015', 3, '10', 1),
(167, 250, '31-03-2015', 3, '10', 1),
(168, 374, '31-03-2015', 3, '30', 0),
(169, 135, '01-04-2015', 3, '15', 1),
(170, 132, '01-04-2015', 3, '25', 1),
(171, 154, '02-04-2015', 3, '10', 1),
(172, 174, '02-04-2015', 3, '10', 1),
(173, 357, '03-04-2015', 3, '25', 1),
(174, 337, '03-04-2015', 3, '10', 1),
(175, 329, '03-04-2015', 3, '15', 1),
(176, 391, '03-04-2015', 3, '45', 0),
(177, 206, '06-04-2015', 3, '20', 1),
(178, 259, '08-04-2015', 3, '30', 1),
(179, 134, '09-04-2015', 3, '10', 1),
(180, 243, '09-04-2015', 3, '40', 1),
(181, 214, '09-04-2015', 3, '10', 1),
(182, 260, '09-04-2015', 3, '20', 1),
(183, 127, '09-04-2015', 3, '10', 0),
(184, 311, '09-04-2015', 3, '30', 0),
(185, 76, '05-03-2015', 3, '20', 1),
(186, 246, '28-01-2015', 3, '10', 1),
(187, 343, '02-02-2015', 3, '30', 1),
(188, 174, '05-02-2015', 3, '10', 1),
(189, 194, '11-02-2015', 3, '10', 1),
(190, 298, '12-02-2015', 3, '15', 1),
(191, 368, '18-02-2015', 3, '10', 1),
(192, 203, '24-02-2015', 3, '20', 1),
(193, 281, '04-03-2015', 3, '25', 0),
(194, 174, '17-03-2015', 3, '20', 1),
(195, 281, '20-03-2015', 3, '25', 0),
(196, 368, '04-04-2015', 3, '15', 1),
(197, 256, '12-02-2015', 3, '12', 1),
(198, 303, '09-03-2015', 3, '30', 1),
(199, 298, '24-02-2015', 3, '6', 1),
(206, 364, '11-04-2015', 3, '20', 1),
(207, 286, '11-04-2015', 3, '10', 1),
(208, 191, '14-04-2015', 3, '10', 1),
(209, 250, '11-04-2015', 3, '10', 0),
(210, 110, '14-04-2015', 3, '15', 1),
(211, 188, '14-04-2015', 3, '15', 1),
(214, 219, '19-03-2015', 3, '104', 1),
(216, 308, '19-03-2015', 3, '92', 1),
(220, 206, '14-04-2015', 3, '64.5', 1),
(221, 200, '14-04-2015', 3, '50.5', 1),
(222, 187, '18-04-2015', 3, '67', 0),
(224, 172, '21-01-2015', 3, '160', 1),
(227, 364, '27-01-2015', 3, '88', 1),
(228, 131, '19-03-2015', 3, '104', 1),
(229, 364, '27-01-2015', 3, '120', 1),
(230, 114, '26-03-2015', 3, '150', 1),
(231, 166, '31-03-2015', 3, '73', 1),
(232, 154, '19-04-2015', 3, '50.5', 1),
(234, 160, '26-03-2015', 3, '0', 1),
(235, 249, '26-03-2015', 3, '0', 1),
(236, 318, '26-03-2015', 3, '0', 1),
(237, 124, '06-04-2015', 3, '0', 1),
(238, 189, '15-04-2015', 3, '20', 1),
(239, 170, '15-04-2015', 3, '20', 1),
(240, 103, '15-04-2015', 3, '20', 1),
(241, 247, '15-04-2015', 3, '15', 1),
(242, 71, '15-04-2015', 3, '20', 1),
(243, 372, '15-04-2015', 3, '20', 1),
(244, 385, '22-04-2015', 3, '30', 0),
(245, 245, '22-04-2015', 3, '10', 0),
(246, 236, '23-04-2015', 3, '25', 0),
(248, 239, '31-03-2015', 3, '88.62', 1),
(249, 253, '31-03-2015', 3, '37.47', 1),
(250, 133, '31-03-2015', 3, '105.9', 1),
(251, 201, '31-03-2015', 3, '49.72', 1),
(252, 186, '27-04-2015', 3, '40', 1),
(253, 201, '28-04-2015', 3, '60', 1),
(254, 169, '26-04-2015', 3, '84', 1);

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Contenu de la table `charge_fixe`
--

INSERT INTO `charge_fixe` (`idchargefixe`, `designation`, `date_charge_fixe`, `montant_charge`) VALUES
(10, 'Sorties scolaires', '26-03-2015', '45'),
(11, 'Sorties scolaires', '26-03-2015', '45'),
(12, 'Sorties scolaires', '26-03-2015', '45'),
(13, 'Sorties scolaires', '06-04-2015', '45'),
(14, 'Sorties scolaires', '06-04-2015', '45'),
(15, 'Sorties scolaires', '14-04-2015', '45'),
(18, 'concert', '21-01-2015', '160'),
(19, 'Cin&eacute;ma Stella', '05-02-2015', '25'),
(20, 'Cin&eacute;ma Stella', '12-02-2015', '50'),
(21, 'Piscine', '12-01-2015', '47'),
(22, 'concert', '21-01-2015', '120'),
(23, 'restoria', '12-01-2015', '4937.94'),
(24, 'Self jouet', '12-01-2015', '96.82'),
(25, 'voisin', '05-02-2015', '5285.4'),
(26, 'voisin', '05-02-2015', '3736'),
(27, 'Valrhona', '11-02-2015', '819.17'),
(28, 'Cin&eacute;ma Stella', '12-03-2015', '50');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_passif` (
`idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE IF NOT EXISTS `compta_compte` (
`idcomptacompte` int(13) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

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
(4, 1, 'Cr&eacute;ances Clients', ''),
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
(24, 2, 'Autre dette 1', ''),
(25, 2, 'Autre dette 2', ''),
(26, 2, 'Autre dette 3', ''),
(27, 2, 'Autre dette 4', ''),
(28, 2, 'Capital', 'Capital'),
(29, 2, 'Priv&eacute;', ''),
(30, 2, 'Autre Capital 1', ''),
(31, 2, 'Autre Capital 2', ''),
(32, 3, 'Ventes de marchandises', ''),
(33, 3, 'D&eacute;ductions Obtenues', 'Gains divers'),
(34, 3, 'Commission (&agrave; des tiers)', ''),
(35, 3, 'Honoraires', 'Subvention de Fonctionnement'),
(36, 3, 'Prestations &agrave; soi-m&ecirc;me', ''),
(37, 3, 'Int&eacute;r&ecirc;t - Produits', 'IntÃ©rÃªts'),
(38, 3, 'Autre CA 1', ''),
(39, 3, 'Autre CA 2', ''),
(40, 4, 'Achats de Marchandises', ''),
(41, 4, 'Frais d''Achats', ''),
(42, 4, 'Variations de Stocks', ''),
(43, 4, 'D&eacute;ductions Accord&eacute;es', ''),
(44, 4, 'Autre Charge 1', ''),
(45, 4, 'Autre Charge 2', ''),
(46, 5, 'Salaires', ''),
(47, 5, 'Charges Sociales', ''),
(48, 5, 'Autre charge de personnel 1', 'Honoraires'),
(49, 5, 'Autre charge de personnel 2', ''),
(50, 6, 'Loyer', 'Frais Postaux'),
(51, 6, 'Frais de V&eacute;hicules', 'Frais de dÃ©placements'),
(52, 6, 'Entretien et r&eacute;parations', 'Entretien et rÃ©parations'),
(53, 6, 'Frais d''exp&eacute;dition', 'Fournitures de bureaux'),
(54, 6, 'Assurances', 'Assurances'),
(55, 6, 'Electricit&eacute;, Gaz, etc...', 'Abonnements'),
(56, 6, 'Frais d''administration', ''),
(57, 6, 'T&eacute;l&eacute;phone, fax, internet', 'TÃ©lÃ©phone, fax, internet'),
(58, 6, 'Publicit&eacute;', 'Agios'),
(59, 6, 'Interet-charges, Frais Bancaires', 'Frais bancaires'),
(60, 6, 'Amortissements', 'Achat de matÃ©riel et petit outillage'),
(61, 6, 'Autre Charge d''exploitation 1', 'Transfert Livret vers ASC'),
(62, 6, 'Autre Charge d''exploitation 2', 'Divers'),
(63, 6, 'Autre Charge d''exploitation 3', ''),
(64, 6, 'Autre Charge d''exploitation 4', ''),
(65, 7, 'Produits des titres', ''),
(66, 7, 'Produits d''immeubles', ''),
(67, 7, 'Autre r&eacute;sultat Annexe 1', ''),
(68, 7, 'Autre r&eacute;sultat Annexe 2', ''),
(69, 7, 'Charges d''immeubles', ''),
(70, 7, 'Autre Charge annexe 1', ''),
(71, 7, 'Autre Charge annexe 2', ''),
(72, 8, 'Produits Exeptionnels', ''),
(73, 8, 'Autre r&eacute;sultat exeptionnel 1', ''),
(74, 8, 'Autre r&eacute;sultat exeptionnel 2', ''),
(75, 8, 'Charges Exeptionnelles', ''),
(76, 8, 'Impot sur le B&eacute;n&eacute;fice', ''),
(77, 8, 'Impots sur le Capital', ''),
(78, 8, 'Autre charge exeptionnelle 1', ''),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

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
(1, 'COMITE D''ENTREPRISE TESSIER', '', '', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=359 ;

--
-- Contenu de la table `cpt_resultat`
--

INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(68, '52785046', '1420585200', 'Vente de Billetterie: MAHOT PATRICK pour la prestation Gaumont', '', '30'),
(70, '3005747', '1420671600', 'Vente de Billetterie: BERTHONNEAU CELINE pour la prestation Gaumont', '', '30'),
(78, '53198101', '1420671600', 'Vente de Billetterie: NEVOUX ISABELLE pour la prestation Gaumont', '', '30'),
(83, '28339243', '1420758000', 'Vente de Billetterie: POUPIN MICHEL pour la prestation Gaumont', '', '30'),
(91, '70336237', '1421622000', 'Vente de Billetterie: DITACROUTE SYLVAIN pour la prestation Gaumont', '', '15'),
(92, '65739136', '1421622000', 'Vente de Billetterie: POIRIER STEPHANE pour la prestation Gaumont', '', '30'),
(95, '', '1422831600', 'Achat - Gaumont', '760', ''),
(100, '63449367', '1422918000', 'Vente de Billetterie: RABOUIN CECILE pour la prestation Cin&eacute;ma Stella', '', '30'),
(105, '26294204', '1422918000', 'Vente de Billetterie: BOUCARD PASCAL pour la prestation Gaumont', '', '5'),
(107, '25201069', '1423004400', 'Vente de Billetterie: PICOULEAU STEPHANE pour la prestation Gaumont', '', '15'),
(110, '1590345', '1423090800', 'Vente de Billetterie: DUBLE AGATHE pour la prestation Gaumont', '', '15'),
(122, '55527679', '1423090800', 'Vente de Billetterie: MASSE SYLVIE pour la prestation Gaumont', '', '15'),
(129, '', '1423609200', 'Achat - Gaumont', '760', ''),
(135, '61617106', '1423695600', 'Vente de Billetterie: MASSE SYLVIE pour la prestation Gaumont', '', '40'),
(138, '56460345', '1423782000', 'Vente de Billetterie: GOUJON CHRISTINE pour la prestation Gaumont', '', '15'),
(139, '94080048', '1423782000', 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '5'),
(142, '47159085', '1424041200', 'Vente de Billetterie: RODRIGUES FERNANDO pour la prestation Gaumont', '', '15'),
(143, '36713277', '1424127600', 'Vente de Billetterie: MOREAU PHILIPPE pour la prestation Gaumont', '', '30'),
(145, '95012443', '1424127600', 'Vente de Billetterie: BRUNEAU JACQUELINE pour la prestation Gaumont', '', '5'),
(146, '', '1424214000', 'Achat - Gaumont', '760', ''),
(149, '38777535', '1424214000', 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '5'),
(150, '17515041', '1424214000', 'Vente de Billetterie: MARCHAND SEBASTIEN pour la prestation Gaumont', '', '15'),
(152, '92033985', '1424300400', 'Vente de Billetterie: BEAUDET JEAN DAMIEN pour la prestation Gaumont', '', '30'),
(155, '44216247', '1424386800', 'Vente de Billetterie: DELAUNAY PHILIPPE pour la prestation Gaumont', '', '30'),
(156, '8907149', '1424646000', 'Vente de Billetterie: BURILLON STEPHANIE pour la prestation Gaumont', '', '50'),
(157, '36494924', '1424646000', 'Vente de Billetterie: BERTHO CYRIL pour la prestation Gaumont', '', '15'),
(162, '63414335', '1424732400', 'Vente de Billetterie: BERTHO CYRIL pour la prestation Gaumont', '', '5'),
(164, '94754136', '1424732400', 'Vente de Billetterie: BERTHONNEAU CELINE pour la prestation Gaumont', '', '30'),
(167, '43437573', '1424732400', 'Vente de Billetterie: DUVEAU STEPHANE pour la prestation Gaumont', '', '15'),
(168, '46387556', '1424732400', 'Vente de Billetterie: JAZIRI  MAHDI pour la prestation Gaumont', '', '35'),
(172, '82857424', '1424818800', 'Vente de Billetterie: HAMONIER OLIVIER pour la prestation Gaumont', '', '30'),
(184, '', '1425423600', 'Achat - Gaumont', '760', ''),
(185, '33343919', '1425510000', 'Vente de Billetterie: GILBERT DOMINIQUE pour la prestation Gaumont', '', '30'),
(187, '39476281', '1425510000', 'Vente de Billetterie: THIBERGE MARIE CLAUDE pour la prestation Gaumont', '', '5'),
(192, '42884813', '1425942000', 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '5'),
(197, '58694919', '1426633200', 'Vente de Billetterie: DOINEAU MICHEL pour la prestation Gaumont', '', '30'),
(203, '91121691', '1426719600', 'Vente de Billetterie: JOBIN OLIVIER pour la prestation Gaumont', '', '15'),
(207, '12067273', '1427324400', 'Vente de Billetterie: MASSE SYLVIE pour la prestation Gaumont', '', '15'),
(210, '72406326', '1427752800', 'Vente de Billetterie: THIBERGE MARIE CLAUDE pour la prestation Gaumont', '', '30'),
(211, '92991337', '1427839200', 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '15'),
(213, '', '1426633200', 'Achat - Gaumont', '380', ''),
(219, '9241845', '1428012000', 'Vente de Billetterie: PIOTET GERALD pour la prestation Gaumont', '', '15'),
(220, '54705031', '1428012000', 'Vente de Billetterie: VINCENT LAURENT pour la prestation Gaumont', '', '45'),
(222, '35883528', '1428444000', 'Vente de Billetterie: LASSAY ANTHONY pour la prestation Gaumont', '', '30'),
(224, '96754999', '1428530400', 'Vente de Billetterie: JAZIRI  MAHDI pour la prestation Gaumont', '', '40'),
(228, '83750742', '1428530400', 'Vente de Billetterie: NEVOUX ISABELLE pour la prestation Gaumont', '', '30'),
(229, '58977284', '1425510000', 'Vente de Billetterie: ANGELO ERIC pour la prestation Gaumont', '', '20'),
(232, '93526169', '1422831600', 'Vente de Billetterie: RABOUIN CECILE pour la prestation Cin&eacute;ma Stella', '', '30'),
(236, '27696166', '1423695600', 'Vente de Billetterie: MASSE SYLVIE pour la prestation Cin&eacute;ma Saumur', '', '15'),
(238, '79214235', '1424732400', 'Vente de Billetterie: FOIN PHILIPPE pour la prestation Cin&eacute;ma Saumur', '', '20'),
(241, '', '1426374000', 'Achat - Cin&eacute;ma Saumur', '136', ''),
(242, '74759945', '1426546800', 'Vente de Billetterie: DEBELLY JEANNE pour la prestation Cin&eacute;ma Saumur', '', '20'),
(244, '59673033', '1425423600', 'Vente de Billetterie: LHOPITEAU RAPHAEL pour la prestation Cin&eacute;ma Saumur', '', '25'),
(245, '63083424', '1428098400', 'Vente de Billetterie: SENO JEAN PIERRE pour la prestation Cin&eacute;ma Saumur', '', '15'),
(248, '77386723', '1425855600', 'Vente de Billetterie: MERCIER JACKY pour la prestation Cin&eacute;ma Stella', '', '30'),
(249, '', '1428616800', 'Achat - Gaumont', '387.6', ''),
(250, '23523761', '1424732400', 'Vente de Billetterie: MASSE SYLVIE pour la prestation Cin&eacute;ma Beaufort', '', '6'),
(251, '14721914', '1428530400', 'Vente de Billetterie: FLAO PATRICK pour la prestation Gaumont', '', '100'),
(255, '52208082', '1428876000', 'Vente de Billetterie: FLAO PATRICK pour la prestation zoo de la fl&egrave;che adulte', '', '50'),
(257, '45200751', '1428876000', 'Vente de Billetterie: FLAO PATRICK pour la prestation zoo de la fl&egrave;che adulte', '', '50'),
(259, '62343061', '1428876000', 'Vente de Billetterie: FLAO PATRICK pour la prestation zoo de la fl&egrave;che adulte', '', '50'),
(261, '17043390', '1428962400', 'Vente de Billetterie: FLAO PATRICK pour la prestation Cin&eacute;ma Stella', '', '15'),
(264, '77622960', '1428703200', 'Vente de Billetterie: ROZAT ERIC pour la prestation Gaumont', '', '20'),
(269, '2115781', '1428962400', 'Vente de Billetterie: BLOT LAETITIA pour la prestation Gaumont', '', '15'),
(270, '48194237', '1428962400', 'Vente de Billetterie: DUBLE AGATHE pour la prestation Gaumont', '', '15'),
(274, '88572192', '1426719600', 'Vente de Billetterie: MORIN ALAIN pour la prestation parc animalier', '', '92'),
(278, '30662853', '1428962400', 'Vente de Billetterie: FOSSE WILLY pour la prestation parc animalier', '', '64.5'),
(280, '48422430', '1429308000', 'Vente de Billetterie: DOINEAU MICHEL pour la prestation Sport', '', '67'),
(282, '27225908', '1421794800', 'Vente de Billetterie: DAVIS GILLES pour la prestation Concert', '', '160'),
(285, '68592717', '1426719600', 'Vente de Billetterie: BRAZILLE MICKAEL pour la prestation Sport', '', '104'),
(286, '3218691', '1422313200', 'Vente de Billetterie: ROZAT ERIC pour la prestation Concert', '', '120'),
(287, '12222095', '1427324400', 'Vente de Billetterie: BODIN EMMANUEL pour la prestation Concert', '', '150'),
(288, '64902692', '1427752800', 'Vente de Billetterie: CROS FABIEN pour la prestation parc animalier', '', '73'),
(289, '54345552', '1429394400', 'Vente de Billetterie: CHEVALEYRE JULIE pour la prestation parc animalier', '', '50.5'),
(294, '', '1427324400', 'Sorties scolaires', '45', ''),
(295, '', '1427324400', 'Sorties scolaires', '45', ''),
(296, '', '1427324400', 'Sorties scolaires', '45', ''),
(300, '89496339', '1428271200', 'Vente de Billetterie: BOURDIN SEBASTIEN pour la prestation Sorties scolaires', '', '0'),
(301, '', '1428271200', 'Sorties scolaires', '45', ''),
(302, '', '1428271200', 'Sorties scolaires', '45', ''),
(303, '', '1428962400', 'Sorties scolaires', '45', ''),
(307, '', '1423090800', 'Cin&eacute;ma Stella', '25', ''),
(309, '', '1421017200', 'Piscine', '47', ''),
(310, '', '1421794800', 'concert', '120', ''),
(311, '', '1421017200', 'restoria', '4937.94', ''),
(312, '', '1421017200', 'Self jouet', '96.82', ''),
(313, '', '1421017200', 'objet rama', '', '492.34'),
(314, '', '1421794800', 'nuances et terroirs', '', '255'),
(315, '', '1420758000', 'virement david', '', '3000'),
(316, '', '1421622000', 'dotation  ASC', '', '17079.61'),
(317, '', '1428012000', 'virement david', '', '1500'),
(318, '', '1429221600', 'dotation  ASC', '', '15269,66'),
(319, '', '1423090800', 'voisin', '5285.4', ''),
(320, '', '1423090800', 'voisin', '3736', ''),
(321, '', '1423609200', 'Valrhona', '819.17', ''),
(324, '', '1422918000', 'Achat - Cin&eacute;ma Stella', '25', ''),
(325, '', '1429653600', 'Achat - Cin&eacute;ma Beaufort', '50', ''),
(326, '47435540', '1429048800', 'Vente de Billetterie: DUBOIS FABIEN pour la prestation Gaumont', '', '20'),
(327, '76847145', '1429048800', 'Vente de Billetterie: DAL MOLIN REMY pour la prestation Gaumont', '', '20'),
(328, '70848806', '1429048800', 'Vente de Billetterie: BESNARD SEBASTIEN pour la prestation Gaumont', '', '20'),
(329, '3683553', '1429048800', 'Vente de Billetterie: JOSSELIN ANTHONY pour la prestation Gaumont', '', '15'),
(330, '93127441', '1429048800', 'Vente de Billetterie: ABBASSI NAJEM EDDINE pour la prestation Gaumont', '', '20'),
(331, '72953803', '1429048800', 'Vente de Billetterie: THIBAULT RACHEL pour la prestation Gaumont', '', '20'),
(332, '84126801', '1429653600', 'Vente de Billetterie: TURPIN CHRISTINE pour la prestation Gaumont', '', '30'),
(333, '92466634', '1429653600', 'Vente de Billetterie: JOBIN OLIVIER pour la prestation Gaumont', '', '10'),
(334, '', '1429653600', 'Achat - Gaumont', '380', ''),
(335, '23892504', '1429740000', 'Vente de Billetterie: HAMONIER OLIVIER pour la prestation Gaumont', '', '25'),
(336, '', '1420498800', 'remise de ch&egrave;que 3123823', '', '110'),
(337, '', '1420498800', 'remise de ch&egrave;que 3123824', '', '328'),
(338, '', '1421881200', 'remise de ch&egrave;que 3123825', '', '300'),
(339, '', '1421881200', 'remise de ch&egrave;que 3123826', '', '375'),
(340, '', '1421794800', 'remise de ch&egrave;que 3123827', '', '145'),
(341, '', '1421794800', 'remise de ch&egrave;que 3123828', '', '60'),
(342, '', '1425078000', 'remise de ch&egrave;que 3123832', '', '135'),
(343, '', '1425078000', 'remise de ch&egrave;que 3123833', '', '180'),
(344, '', '1425078000', 'remise de ch&egrave;que 3123834', '', '200'),
(345, '', '1425078000', 'remise de ch&egrave;que 3123835', '', '125'),
(346, '', '1425078000', 'remise de ch&egrave;que 3123836', '', '115'),
(347, '', '1425078000', 'remise de ch&egrave;que 3123837', '', '165'),
(348, '', '1425078000', 'remise de ch&egrave;que 3123838', '', '170'),
(349, '', '1426114800', 'remise de ch&egrave;que 3123839', '', '135'),
(350, '', '1426114800', 'remise de ch&egrave;que 3123840', '', '120'),
(351, '11989730', '1427752800', 'Vente de Billetterie: HONORE EMILE pour la prestation Valrhona', '', '88.62'),
(352, '57809595', '1427752800', 'Vente de Billetterie: JURET LAURENCE pour la prestation Valrhona', '', '37.47'),
(353, '24612589', '1427752800', 'Vente de Billetterie: BRICHET PERPOIL MARIE CLAIRE pour la prestation Valrhona', '', '105.9'),
(354, '49448681', '1427752800', 'Vente de Billetterie: FLAO PATRICK pour la prestation Valrhona', '', '49.72'),
(355, '62414006', '1430085600', 'Vente de Billetterie: DOHIN THIERRY pour la prestation disney 2015', '', '40'),
(356, '14590119', '1430172000', 'Vente de Billetterie: FLAO PATRICK pour la prestation disney 2015', '', '60'),
(357, '', '1427752800', 'remise de ch&egrave;que 3123845', '', '90'),
(358, '20221851', '1429999200', 'Vente de Billetterie: DAILLIERE FRANCK pour la prestation Parc d''attraction', '', '84');

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE IF NOT EXISTS `famille_prestation` (
`idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Contenu de la table `famille_prestation`
--

INSERT INTO `famille_prestation` (`idfamilleprestation`, `designation_famille`) VALUES
(51, 'Cin&eacute;ma'),
(52, 'compte d&eacute;p&ocirc;t cezam'),
(53, 'zoo'),
(54, 'Sorties organis&eacute;es par le Comit&eacute; d''entreprise'),
(55, 'Prestation Enfants'),
(56, 'Prestations diverses');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=270 ;

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(36, 32, 71, '2', '10', '5.2', 0),
(37, 33, 71, '6', '30', '15.6', 0),
(38, 34, 71, '5', '25', '13', 0),
(39, 35, 71, '6', '30', '15.6', 0),
(44, 37, 71, '4', '20', '10.4', 0),
(45, 40, 71, '4', '20', '10.4', 0),
(46, 41, 71, '4', '20', '10.4', 0),
(47, 42, 71, '6', '30', '15.6', 0),
(48, 43, 71, '4', '20', '10.4', 0),
(49, 44, 71, '4', '20', '10.4', 0),
(50, 45, 71, '2', '10', '5.2', 0),
(51, 46, 71, '2', '10', '5.2', 0),
(52, 47, 71, '6', '30', '15.6', 0),
(53, 46, 71, '4', '20', '10.4', 0),
(54, 48, 71, '4', '20', '10.4', 0),
(55, 49, 71, '2', '10', '5.2', 0),
(56, 50, 71, '2', '10', '5.2', 0),
(57, 51, 71, '2', '10', '5.2', 0),
(58, 52, 71, '4', '20', '10.4', 0),
(59, 53, 71, '5', '25', '13', 0),
(60, 54, 71, '3', '15', '7.8', 0),
(61, 55, 71, '6', '30', '15.6', 0),
(62, 56, 71, '4', '20', '10.4', 0),
(63, 57, 71, '4', '20', '10.4', 0),
(64, 58, 71, '4', '20', '10.4', 0),
(65, 59, 71, '4', '20', '10.4', 0),
(66, 60, 71, '2', '10', '5.2', 0),
(67, 61, 70, '10', '30', '20', 0),
(68, 62, 71, '4', '20', '10.4', 0),
(69, 63, 71, '4', '20', '10.4', 0),
(70, 64, 71, '4', '20', '10.4', 0),
(71, 65, 71, '4', '20', '10.4', 0),
(72, 67, 71, '1', '5', '2.6', 0),
(73, 68, 71, '4', '20', '10.4', 0),
(74, 69, 71, '3', '15', '7.8', 0),
(75, 70, 71, '4', '20', '10.4', 0),
(76, 71, 71, '4', '20', '10.4', 0),
(77, 72, 71, '3', '15', '7.8', 0),
(78, 73, 71, '2', '10', '5.2', 0),
(79, 74, 71, '4', '20', '10.4', 0),
(80, 75, 71, '5', '25', '13', 0),
(81, 76, 71, '4', '20', '10.4', 0),
(82, 77, 71, '2', '10', '5.2', 0),
(83, 78, 71, '2', '10', '5.2', 0),
(84, 79, 71, '4', '20', '10.4', 0),
(85, 80, 71, '4', '20', '10.4', 0),
(86, 81, 71, '2', '10', '5.2', 0),
(87, 82, 71, '4', '20', '10.4', 0),
(88, 83, 71, '2', '10', '5.2', 0),
(89, 84, 71, '3', '15', '7.8', 0),
(91, 85, 71, '4', '20', '10.4', 0),
(92, 86, 71, '4', '20', '10.4', 0),
(93, 87, 71, '2', '10', '5.2', 0),
(94, 88, 71, '4', '20', '10.4', 0),
(95, 89, 71, '4', '20', '10.4', 0),
(96, 90, 71, '4', '20', '10.4', 0),
(97, 91, 71, '4', '20', '10.4', 0),
(98, 92, 71, '4', '20', '10.4', 0),
(99, 93, 71, '4', '20', '10.4', 0),
(100, 94, 71, '2', '10', '5.2', 0),
(101, 95, 71, '8', '40', '20.8', 0),
(102, 96, 71, '4', '20', '10.4', 0),
(103, 97, 71, '2', '10', '5.2', 0),
(104, 98, 71, '3', '15', '7.8', 0),
(105, 99, 71, '1', '5', '2.6', 0),
(106, 100, 71, '4', '20', '10.4', 0),
(107, 66, 71, '2', '10', '5.2', 0),
(108, 101, 71, '3', '15', '7.8', 0),
(109, 102, 71, '6', '30', '15.6', 0),
(110, 103, 71, '2', '10', '5.2', 0),
(111, 104, 71, '1', '5', '2.6', 0),
(112, 105, 71, '2', '10', '5.2', 0),
(113, 106, 71, '4', '20', '10.4', 0),
(114, 107, 71, '1', '5', '2.6', 0),
(115, 108, 71, '3', '15', '7.8', 0),
(116, 109, 71, '4', '20', '10.4', 0),
(117, 110, 71, '6', '30', '15.6', 0),
(118, 111, 71, '2', '10', '5.2', 0),
(119, 112, 71, '2', '10', '5.2', 0),
(120, 113, 71, '6', '30', '15.6', 0),
(121, 114, 71, '10', '50', '26', 0),
(122, 115, 71, '3', '15', '7.8', 0),
(123, 116, 71, '4', '20', '10.4', 0),
(124, 117, 71, '4', '20', '10.4', 0),
(125, 118, 71, '2', '10', '5.2', 0),
(126, 119, 71, '4', '20', '10.4', 0),
(127, 120, 71, '1', '5', '2.6', 0),
(128, 121, 71, '4', '20', '10.4', 0),
(129, 122, 71, '6', '30', '15.6', 0),
(130, 123, 71, '4', '20', '10.4', 0),
(131, 124, 71, '2', '10', '5.2', 0),
(132, 125, 71, '3', '15', '7.8', 0),
(133, 126, 71, '7', '35', '18.2', 0),
(134, 127, 71, '2', '10', '5.2', 0),
(135, 128, 71, '5', '25', '13', 0),
(136, 129, 71, '5', '25', '13', 0),
(137, 130, 71, '6', '30', '15.6', 0),
(138, 131, 71, '4', '20', '10.4', 0),
(139, 132, 71, '4', '20', '10.4', 0),
(140, 133, 71, '4', '20', '10.4', 0),
(141, 134, 71, '2', '10', '5.2', 0),
(142, 135, 71, '4', '20', '10.4', 0),
(143, 136, 71, '5', '25', '13', 0),
(144, 137, 71, '5', '25', '13', 0),
(145, 138, 71, '2', '10', '5.2', 0),
(146, 139, 71, '2', '10', '5.2', 0),
(147, 140, 71, '4', '20', '10.4', 0),
(148, 141, 71, '4', '20', '10.4', 0),
(149, 142, 71, '6', '30', '15.6', 0),
(150, 143, 71, '4', '20', '10.4', 0),
(151, 144, 71, '1', '5', '2.6', 0),
(153, 146, 71, '4', '20', '10.4', 0),
(154, 147, 71, '4', '20', '10.4', 0),
(155, 148, 71, '2', '10', '5.2', 0),
(156, 149, 71, '1', '5', '2.6', 0),
(157, 151, 71, '4', '20', '10.4', 0),
(158, 152, 71, '2', '10', '5.2', 0),
(159, 153, 71, '2', '10', '5.2', 0),
(160, 154, 71, '2', '10', '5.2', 0),
(161, 155, 71, '6', '30', '15.6', 0),
(162, 156, 71, '2', '10', '5.2', 0),
(163, 157, 71, '2', '10', '5.2', 0),
(164, 158, 71, '2', '10', '5.2', 0),
(165, 159, 71, '4', '20', '10.4', 0),
(166, 160, 71, '5', '25', '13', 0),
(167, 161, 71, '3', '15', '7.8', 0),
(168, 162, 71, '2', '10', '5.2', 0),
(169, 163, 71, '4', '20', '10.4', 0),
(170, 164, 71, '5', '25', '13', 0),
(171, 165, 71, '3', '15', '7.8', 0),
(172, 166, 71, '2', '10', '5.2', 0),
(173, 167, 71, '2', '10', '5.2', 0),
(174, 168, 71, '6', '30', '15.6', 0),
(175, 169, 71, '3', '15', '7.8', 0),
(176, 170, 71, '5', '25', '13', 0),
(177, 150, 71, '2', '10', '5.2', 0),
(178, 171, 71, '2', '10', '5.2', 0),
(179, 172, 71, '2', '10', '5.2', 0),
(180, 173, 71, '5', '25', '13', 0),
(181, 174, 71, '2', '10', '5.2', 0),
(182, 175, 71, '3', '15', '7.8', 0),
(183, 176, 71, '9', '45', '23.4', 0),
(184, 177, 71, '4', '20', '10.4', 0),
(185, 178, 71, '6', '30', '15.6', 0),
(186, 179, 71, '2', '10', '5.2', 0),
(187, 180, 71, '8', '40', '20.8', 0),
(188, 181, 71, '2', '10', '5.2', 0),
(189, 182, 71, '4', '20', '10.4', 0),
(190, 183, 71, '2', '10', '5.2', 0),
(191, 184, 71, '6', '30', '15.6', 0),
(192, 185, 71, '4', '20', '10.4', 0),
(193, 187, 70, '10', '30', '20', 0),
(194, 186, 72, '2', '10', '3.6', 0),
(195, 188, 72, '2', '10', '3.6', 0),
(196, 189, 72, '2', '10', '3.6', 0),
(197, 190, 72, '3', '15', '5.4', 0),
(198, 191, 72, '2', '10', '3.6', 0),
(199, 192, 72, '4', '20', '7.2', 0),
(202, 194, 72, '4', '20', '7.2', 0),
(203, 195, 72, '5', '25', '9', 0),
(204, 193, 72, '5', '25', '9', 0),
(205, 196, 72, '3', '15', '5.4', 0),
(206, 197, 70, '4', '12', '8', 0),
(207, 198, 70, '10', '30', '20', 0),
(208, 199, 73, '2', '6', '4', 0),
(221, 206, 71, '4', '20', '10.4', 0),
(222, 207, 71, '2', '10', '5.2', 0),
(223, 208, 71, '2', '10', '5.2', 0),
(224, 209, 71, '2', '10', '5.2', 0),
(226, 210, 71, '3', '15', '7.8', 0),
(227, 211, 71, '3', '15', '7.8', 0),
(230, 214, 79, '10.4', '104', '0', 0),
(231, 216, 80, '9.2', '92', '0', 0),
(235, 220, 80, '6.45', '64.5', '0', 0),
(236, 221, 80, '5.05', '50.5', '0', 0),
(237, 222, 79, '6.7', '67', '0', 0),
(239, 224, 81, '16', '160', '0', 0),
(241, 227, 82, '8.8', '88', '0', 0),
(242, 228, 79, '10.4', '104', '0', 0),
(243, 229, 81, '12', '120', '0', 0),
(244, 230, 81, '15', '150', '0', 0),
(245, 231, 80, '7.3', '73', '0', 0),
(246, 232, 80, '5.05', '50.5', '0', 0),
(248, 234, 83, '1', '0', '45', 0),
(249, 235, 83, '1', '0', '45', 0),
(250, 236, 83, '1', '0', '45', 0),
(253, 237, 83, '2', '0', '90', 0),
(254, 238, 71, '4', '20', '10.4', 0),
(255, 239, 71, '4', '20', '10.4', 0),
(256, 240, 71, '4', '20', '10.4', 0),
(257, 241, 71, '3', '15', '7.8', 0),
(258, 242, 71, '4', '20', '10.4', 0),
(259, 243, 71, '4', '20', '10.4', 0),
(260, 244, 71, '6', '30', '15.6', 0),
(261, 245, 71, '2', '10', '5.2', 0),
(262, 246, 71, '5', '25', '13', 0),
(263, 248, 85, '8.862', '88.62', '0', 0),
(264, 249, 85, '3.747', '37.47', '0', 0),
(265, 250, 85, '10.59', '105.9', '0', 0),
(266, 251, 85, '4.972', '49.72', '0', 0),
(267, 252, 86, '4', '40', '0', 0),
(268, 253, 86, '6', '60', '0', 0),
(269, 254, 82, '8.4', '84', '0', 0);

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
(5, '1.6.3', '29315-prem');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
`iduser` int(13) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass_md5` varchar(255) NOT NULL,
  `groupe` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`iduser`, `login`, `pass_md5`, `groupe`) VALUES
(1, 'Administrateur', '25f9e794323b453885f5181f1b624d0b', 1),
(6, 'CETESSIER', 'c603b2bf319e78ae2821bba599072e8f', 1),
(8, 'pflao', '8336bd93fd11451846e74d94fb610521', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`) VALUES
(70, 51, 'Cin&eacute;ma Stella', '18-03-2015', '', '3', '2', '5', '20', '11', 0),
(71, 51, 'Gaumont', '18-03-2015', '', '5', '2.6', '7.6', '20', '50', 0),
(72, 51, 'Cin&eacute;ma Saumur', '01-01-2015', '', '5', '1.8', '6.8', '20', '8', 0),
(73, 51, 'Cin&eacute;ma Beaufort', '01-01-2015', '', '3', '2', '5', '20', '15', 0),
(74, 51, 'Cin&eacute;ma 400 coups', '01-01-2015', '', '3', '2', '5', '20', '', 0),
(79, 52, 'Sport', '01-01-2015', '', '10', '0', '10', '1000', '972.5', 0),
(80, 52, 'parc animalier', '01-01-15', '', '10', '0', '10', '1000', '966.95', 0),
(81, 52, 'Concert', '28-04-2015', '', '10', '0', '10', '1000', '957', 0),
(82, 52, 'Parc d''attraction', '28-04-2015', '', '10', '0', '10', '1000', '982.8', 0),
(83, 55, 'Sorties scolaires', '01-01-15', '', '0', '45', '45', '10', '993', 0),
(84, 55, 'Sorties extra-scolaires', '01-01-15', '', '0', '15', '15', '30', '1000', 0),
(85, 56, 'Valrhona', '01-01-2015', '', '10', '0', '10', '1000', '971.829', 0),
(86, 54, 'disney 2015', '29-03-2015', '', '10', '0', '10', '1000', '990', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `produit_fixe`
--

INSERT INTO `produit_fixe` (`idproduitfixe`, `designation`, `date_produit_fixe`, `montant_produit`) VALUES
(9, 'objet rama', '12-01-2015', '492.34'),
(10, 'nuances et terroirs', '21-01-2015', '255'),
(11, 'virement david', '09-01-2015', '3000'),
(12, 'dotation  ASC', '19-01-2015', '17079.61'),
(13, 'virement david', '03-04-2015', '1500'),
(14, 'dotation  ASC', '17-04-2015', '15269,66'),
(15, 'remise de ch&egrave;que 3123823', '06-01-2015', '110'),
(16, 'remise de ch&egrave;que 3123824', '06-01-2015', '328'),
(17, 'remise de ch&egrave;que 3123825', '22-01-2015', '300'),
(18, 'remise de ch&egrave;que 3123826', '22-01-2015', '375'),
(19, 'remise de ch&egrave;que 3123827', '21-01-2015', '145'),
(20, 'remise de ch&egrave;que 3123828', '21-01-2015', '60'),
(21, 'remise de ch&egrave;que 3123832', '28-02-2015', '135'),
(22, 'remise de ch&egrave;que 3123833', '28-02-2015', '180'),
(23, 'remise de ch&egrave;que 3123834', '28-02-2015', '200'),
(24, 'remise de ch&egrave;que 3123835', '28-02-2015', '125'),
(25, 'remise de ch&egrave;que 3123836', '28-02-2015', '115'),
(26, 'remise de ch&egrave;que 3123837', '28-02-2015', '165'),
(27, 'remise de ch&egrave;que 3123838', '28-02-2015', '170'),
(28, 'remise de ch&egrave;que 3123839', '12-03-2015', '135'),
(29, 'remise de ch&egrave;que 3123840', '12-03-2015', '120'),
(30, 'remise de ch&egrave;que 3123845', '31-03-2015', '90');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=231 ;

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(29, 32, 1, '10', 'CM', 'Bigot P', '5918847', 0),
(30, 33, 1, '30', 'CA', 'Mahot', '7278163', 0),
(31, 34, 1, '25', 'CM', 'Jousset J', '6752344', 0),
(32, 35, 1, '30', 'CM', 'berthonnneau', '6740144', 0),
(34, 37, 1, '20', 'CE', 'Jouin B', '5405595', 0),
(35, 40, 1, '20', 'CA', 'Mauxion A', '5957233', 0),
(36, 41, 1, '20', 'CA', 'Angeard M', '2903246', 0),
(37, 42, 1, '30', '', '', '0830849', 0),
(38, 43, 1, '20', 'CA', 'Turpin', '6605119', 0),
(39, 44, 1, '20', 'BP', 'Barelli m', '4458026', 0),
(40, 45, 1, '10', 'CE', 'Bardonneau', '0000134', 0),
(41, 46, 1, '10', 'BP', 'babalonne', '4518040', 0),
(42, 47, 1, '30', 'CA', 'Poupin', '9818450', 0),
(43, 46, 1, '20', 'BP', 'babalonne', '4518040', 0),
(44, 49, 1, '10', 'CA', 'Morin', '1124001', 0),
(45, 50, 1, '10', '', '', '2657322', 0),
(46, 51, 1, '10', 'CM', 'DailliÃ¨re', '5511207', 0),
(47, 52, 1, '20', 'CA', 'Miloudi', '75829074', 0),
(48, 53, 1, '25', 'CA', 'Avril', '50918071', 0),
(49, 54, 1, '15', 'CE', 'Ditacroute S', '0003037', 0),
(50, 55, 1, '30', 'CE', 'Poirier', '0000581', 0),
(51, 56, 1, '20', 'CA', 'Blum', '7550082', 0),
(52, 57, 1, '20', 'CM', 'DailliÃ¨re', '5511209', 0),
(53, 58, 1, '20', 'CM', 'Lessiau', '5621769', 0),
(54, 59, 1, '20', 'CA', 'Bodin D', '9383513', 0),
(55, 60, 1, '10', 'CE', 'Rabouin', '5399212', 0),
(56, 61, 1, '30', 'CE', 'Rabouin', '5399212', 0),
(57, 62, 1, '20', 'CE', 'Brichet', '5004909', 0),
(58, 63, 1, '20', 'CA', 'Bodin E', '4483076', 0),
(59, 64, 1, '20', 'BP', 'Dalmolhin', '4645022', 0),
(60, 65, 1, '20', 'CE', 'Ditacroute S', '0003021', 0),
(61, 67, 1, '5', 'CA', 'Boucard', '9619573', 0),
(62, 68, 1, '20', 'CA', 'Boucard', '9619573', 0),
(63, 69, 1, '15', 'CE', 'Picouleau', '0000183', 0),
(64, 70, 1, '20', 'CE', 'trost', '0000386', 0),
(65, 72, 1, '15', 'CA', 'DublÃ©', '4948107', 0),
(66, 73, 1, '10', 'CA', 'Papin', '', 0),
(67, 74, 1, '20', '', '', '7213033', 0),
(68, 75, 1, '25', 'CA', 'BruÃ¨re', '3163473', 0),
(69, 76, 1, '20', 'CM', 'Martin', '6991054', 0),
(70, 78, 1, '10', 'CA', 'Rapicault J', '4358267', 0),
(71, 79, 1, '20', 'CA', 'Chaussepied', '0000163', 0),
(72, 80, 1, '20', 'CA', 'Hy', '5455523', 0),
(73, 81, 1, '10', 'CA', 'Dubois F', '6473278', 0),
(74, 82, 1, '20', 'BP', 'Rezard', '4561019', 0),
(75, 83, 1, '10', 'CM', 'Jousset', '6958332', 0),
(76, 84, 1, '15', 'CA', 'Leboucher S', '6683003', 0),
(77, 85, 1, '20', '', 'Angerad M', '2903250', 0),
(78, 86, 1, '20', 'CA', 'Lassay', '3807544', 0),
(79, 87, 1, '10', '', 'Rapicault J', '4358267', 0),
(80, 88, 1, '20', 'CM', 'Paymal', '6440452', 0),
(81, 89, 1, '20', 'CM', 'DaillÃ¨re', '5511212', 0),
(82, 90, 1, '20', '', 'Cornut', '0000212', 0),
(83, 91, 1, '20', 'CM', 'Laigle', '6026433', 0),
(84, 92, 1, '20', '', '', '7109836', 0),
(85, 93, 1, '20', 'CA', 'Duperray V', '8681549', 0),
(86, 94, 1, '10', '', '', '01211515', 0),
(87, 95, 1, '40', 'CE', 'Leboucher S', '6682997', 0),
(88, 96, 1, '20', 'CE', 'Cauchard', '2667204', 0),
(89, 97, 1, '10', 'CE', 'Vincent L', '4436905', 0),
(90, 98, 1, '15', 'BNP', 'Goujon C', '8982503', 0),
(91, 99, 1, '5', 'CE', 'Bru', '0000183', 0),
(92, 100, 1, '20', 'CA', 'Blot', '7596308', 0),
(93, 71, 1, '20', 'CM', 'duveau St', '6623013', 0),
(94, 66, 1, '10', '', 'cros f', '0001091', 0),
(95, 101, 1, '15', '', 'Rodriguez', '1896041', 0),
(96, 103, 1, '10', '', 'tirlet', '1667414', 0),
(97, 104, 1, '5', '', 'Bruneau', '9660042', 0),
(98, 105, 1, '10', '', 'Jarry', '6807071', 0),
(99, 106, 1, '20', '', 'Miloudi', '1727727', 0),
(100, 107, 1, '5', '', 'Bru A', '0000183', 0),
(101, 108, 1, '15', '', 'Marchand s', '0000277', 0),
(102, 109, 1, '20', '', 'Brichet', '5004919', 0),
(103, 110, 1, '30', '', 'Beaudet', '8883393', 0),
(104, 111, 1, '10', '', 'Guiho', '6814811', 0),
(105, 112, 1, '10', '', 'Komara', '4198322', 0),
(106, 113, 1, '30', '', 'Delaunay P', '9339202', 0),
(107, 114, 1, '50', '', 'Burillon', '7345659', 0),
(108, 115, 1, '15', '', 'bertho C', '9947757', 0),
(109, 116, 1, '20', '', 'RiviÃ¨re', '0899310', 0),
(110, 117, 1, '20', '', 'Mauxion A', '9957001', 0),
(111, 118, 1, '10', '', 'Godard G', '7036344', 0),
(112, 119, 1, '20', '', 'jobin o', '2541685', 0),
(113, 120, 1, '5', '', 'bertho C', '9947758', 0),
(114, 121, 1, '20', '', 'thiberge', '4666019', 0),
(115, 122, 1, '30', '', 'Berthonneau', '6740147', 0),
(116, 123, 1, '20', '', 'declÃ©', '1913423', 0),
(117, 124, 1, '10', '', 'hy', '5455525', 0),
(118, 125, 1, '15', '', 'duveau St', '6623013', 0),
(119, 126, 1, '35', '', 'jaziri', '6267268', 0),
(120, 127, 1, '10', '', 'bangouri', '4198322', 0),
(121, 128, 1, '25', '', 'paviot m', '6821241', 0),
(122, 129, 1, '25', '', 'besnard g', '0000549', 0),
(124, 131, 1, '20', '', 'gaignard m', '5162242', 0),
(125, 132, 1, '20', '', 'hermiteau s', '0000153', 0),
(126, 133, 1, '20', 'CA', 'Morin', '1124002', 0),
(127, 134, 1, '10', 'CE', 'vergnaud', '1365866', 0),
(128, 135, 1, '20', 'CA', 'cadas', '0000235', 0),
(129, 136, 1, '25', 'CA', 'josselin', '5465945', 0),
(130, 137, 1, '25', 'CA', 'Bodin E', '4483088', 0),
(131, 138, 1, '10', '', 'duveau m', '3400334', 0),
(132, 139, 1, '10', '', 'colombeau', '0203896', 0),
(133, 140, 1, '20', '', 'dohin', '9203076', 0),
(134, 141, 1, '20', '', 'khoumsi', '4791110', 0),
(135, 142, 1, '30', '', 'gilbert', '4173986', 0),
(136, 144, 1, '5', '', 'thiberge', '4666020', 0),
(137, 146, 1, '20', '', 'thomas', '0388529', 0),
(138, 147, 1, '20', '', 'chatard', '7505063', 0),
(139, 148, 1, '10', '', 'Bardonneau', '0000187', 0),
(140, 149, 1, '5', '', 'Bru A', '0000187', 0),
(141, 151, 1, '20', '', 'rezard', '4561023', 0),
(142, 153, 1, '10', '', 'bidet', '86477', 0),
(143, 154, 1, '10', '', 'leconte jl', '0000530', 0),
(144, 155, 1, '30', '', 'doineau', '4593720', 0),
(145, 157, 1, '10', '', 'thompson', '00064288065', 0),
(146, 158, 1, '10', '', 'Ditacroute S', '00003052', 0),
(147, 159, 1, '20', '', 'goujon c', '8982508', 0),
(149, 160, 1, '25', '', 'voluette g', '6007940', 0),
(150, 161, 1, '15', '', 'jobin o', '2541690', 0),
(151, 162, 1, '10', '', 'angelo e', '1699272', 0),
(152, 163, 1, '20', '', 'DailliÃ¨re', '5511211', 0),
(153, 164, 1, '25', '', 'roche', '5636372', 0),
(154, 165, 1, '15', '', 'leboucher s', '668311', 0),
(155, 166, 1, '10', '', 'jobin o', '2541691', 0),
(156, 167, 1, '10', '', 'Jousset J', '6958359', 0),
(157, 169, 1, '15', '', 'Bru A', '0000189', 1),
(158, 171, 1, '10', '', 'Chevaleyre', '6683012', 0),
(159, 172, 1, '10', '', 'Debelly', '0001085', 0),
(160, 173, 1, '25', '', 'Rocher Y', '6758194', 1),
(161, 174, 1, '10', '', 'Pons', '7305101', 1),
(162, 175, 1, '15', '', 'piotet', '484376', 1),
(163, 177, 1, '20', '', 'Fosse', '0342849', 0),
(164, 178, 1, '30', '', 'lassay', '3807545', 0),
(165, 179, 1, '10', '', 'browaeys', '0000099', 1),
(166, 180, 1, '40', '', 'jaziri', '6267278', 1),
(167, 181, 1, '10', '', 'jaziri', '6267278', 1),
(168, 152, 1, '10', '', 'charrier', '4983839', 0),
(169, 150, 1, '10', '', 'lepetitcorps', '0001034', 0),
(170, 185, 1, '20', '', 'angelo', '1699266', 0),
(171, 143, 1, '20', '', 'rateau', '0102504', 0),
(172, 77, 1, '10', '', 'papin', '5189083', 0),
(173, 187, 1, '30', '', 'rabouin', '5399212', 0),
(174, 186, 1, '10', '', 'joly', '6063663', 0),
(175, 188, 1, '10', '', 'Debelly', '0001075', 0),
(176, 189, 1, '10', '', 'ecomard', '3247982', 0),
(177, 190, 1, '15', '', 'masse', '6682995', 0),
(178, 191, 1, '10', '', 'seno', '000016', 0),
(179, 192, 1, '20', '', 'foin', '7109836', 0),
(180, 194, 1, '20', '', 'debelly', '0001081', 0),
(181, 196, 1, '15', '', 'seno', '0000033', 1),
(182, 197, 1, '12', '', 'laigle', '6026433', 0),
(183, 198, 1, '30', '', 'mercier', '9847086', 0),
(184, 199, 1, '6', '', 'masse s', '6683004', 0),
(187, 206, 1, '20', '', 'Rozat E', '6796548', 1),
(188, 207, 1, '10', '', 'Lopez r', '9181144', 0),
(189, 208, 1, '10', '', 'Duriez', '5497922', 1),
(190, 210, 1, '15', '', 'Blot', '7596325', 0),
(191, 211, 1, '15', '', 'DublÃ©', '4948121', 0),
(194, 214, 1, '104', '', 'Godard G', '7036355', 0),
(195, 216, 1, '92', '', 'Morin', '1124003', 0),
(199, 220, 1, '64.5', '', 'Fosse W', '4600295', 0),
(200, 221, 1, '50.5', '', 'FÃ©vrier D', '555944', 0),
(202, 224, 1, '160', '', 'davis', '', 0),
(203, 227, 1, '88', '', 'Rozat E', '6888357', 0),
(204, 228, 1, '104', '', 'Brazille M', '68477943', 0),
(205, 229, 1, '120', '', 'Rozat E', '', 0),
(206, 230, 1, '150', '', 'Bodin E', '2676700', 0),
(207, 232, 1, '50.5', '', 'chevaleyre', '000001900', 1),
(208, 231, 1, '73', '', 'cros f', '0001091', 1),
(210, 234, 1, '0', '', '', '', 0),
(211, 235, 1, '0', '', '', '', 0),
(212, 236, 1, '0', '', '', '', 0),
(213, 237, 1, '0', '', '', '', 0),
(214, 130, 1, '30', '', 'hamonnier', '5883049', 1),
(215, 170, 1, '25', '', 'Breton ', '0000037', 1),
(216, 238, 1, '20', '', 'Dubois', '6473299', 0),
(217, 239, 1, '20', '', 'Dalmolhin', '4645024', 0),
(219, 240, 1, '20', '', 'besnard s', '7944980', 0),
(220, 241, 1, '15', '', 'Josselin', '8421719', 0),
(221, 242, 1, '20', '', 'josselin', '8421719', 0),
(222, 243, 1, '20', '', 'Thibault R', '2551891', 0),
(223, 182, 1, '20', '', 'lecalvez', '5967631', 0),
(224, 248, 1, '88.62', '', 'honorÃ©', '3048928', 0),
(225, 249, 1, '37.47', '', 'juret', '0001280', 0),
(226, 250, 1, '105.9', '', 'Brichet', '5004903', 0),
(227, 251, 1, '49.72', '', 'petiteau', '6175893', 0),
(228, 252, 1, '40', '', 'dohin', '9203068', 0),
(229, 253, 1, '60', '', 'Flao', '5483485', 0),
(230, 254, 1, '84', '', 'DailliÃ¨re', '5673697', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_remb_ayant_droit` (
`idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Contenu de la table `remise_banque`
--

INSERT INTO `remise_banque` (`idremisebanque`, `date_remise`, `type_remise`, `num_remise`, `montant_remise`, `valid`) VALUES
(9, '11-02-2015', 1, '3123829', '135', 1),
(10, '11-02-2015', 1, '3123830', '115', 1),
(11, '28-02-2015', 1, '3123831', '140', 1),
(17, '31-03-2015', 1, '3123841', '206.09', 1),
(18, '31-03-2015', 1, '3123842', '325.9', 1),
(19, '31-03-2015', 1, '3123843', '273.72', 1),
(20, '31-03-2015', 1, '3128844', '212', 1),
(23, '31-03-2015', 1, '3123846', '129', 1),
(24, '28-04-2015', 1, '31238347', '175.5', 1),
(25, '28-04-2015', 1, '31238348', '164.5', 1),
(27, '28-04-2015', 1, '31238349', '203.5', 1),
(28, '28-04-2015', 1, '3123850', '229', 1);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=119 ;

--
-- Contenu de la table `remise_banque_chq`
--

INSERT INTO `remise_banque_chq` (`idremisebanquechq`, `idremisebanque`, `idreglementventepresta`) VALUES
(14, 9, 74),
(15, 9, 53),
(16, 9, 60),
(17, 9, 64),
(18, 9, 63),
(19, 9, 57),
(20, 9, 58),
(21, 10, 65),
(22, 10, 75),
(23, 10, 73),
(24, 10, 72),
(25, 10, 172),
(26, 10, 51),
(27, 10, 42),
(28, 11, 32),
(29, 11, 114),
(30, 11, 109),
(31, 11, 116),
(32, 11, 113),
(33, 11, 119),
(34, 11, 117),
(48, 17, 138),
(49, 17, 180),
(50, 17, 143),
(51, 17, 147),
(52, 17, 224),
(53, 17, 225),
(54, 17, 178),
(55, 18, 171),
(56, 18, 146),
(57, 18, 140),
(58, 18, 142),
(59, 18, 153),
(60, 18, 206),
(61, 18, 226),
(62, 19, 118),
(63, 19, 93),
(64, 19, 204),
(65, 19, 149),
(66, 19, 168),
(67, 19, 81),
(68, 19, 144),
(69, 19, 227),
(70, 20, 183),
(71, 20, 195),
(72, 20, 137),
(73, 20, 96),
(74, 20, 134),
(75, 20, 172),
(76, 20, 170),
(77, 20, 66),
(78, 23, 194),
(79, 23, 141),
(80, 23, 136),
(81, 24, 200),
(82, 24, 191),
(83, 24, 190),
(84, 24, 220),
(85, 24, 221),
(86, 24, 163),
(87, 24, 164),
(88, 24, 158),
(89, 25, 216),
(90, 25, 222),
(91, 25, 188),
(92, 25, 199),
(93, 25, 219),
(94, 25, 159),
(95, 25, 217),
(103, 27, 165),
(104, 27, 215),
(105, 27, 0),
(106, 27, 157),
(107, 27, 208),
(108, 27, 207),
(109, 27, 162),
(110, 27, 181),
(111, 28, 160),
(112, 28, 161),
(113, 28, 166),
(114, 28, 167),
(115, 28, 214),
(116, 28, 187),
(117, 28, 189),
(118, 28, 230);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE IF NOT EXISTS `remise_banque_esp` (
`idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=397 ;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`, `solde_salarie`) VALUES
(71, '', 1, 'ABBASSI', 'NAJEM EDDINE', '1', 'RUE ANDRE MAUROIS', '49000', 'ANGERS', '', '', '', '12/03/1978', '01/06/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(72, '', 1, 'ALLARD', 'ERIC', '12', 'RUE DE LA VALLEE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '04/01/1967', '05/01/2009', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(73, '', 1, 'ALLARD', 'THIERRY', '1', 'RUE DE VERDUN', '49630', 'MAZE', '', '', '', '31/05/1987', '05/01/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(74, '', 1, 'AMZIL', 'ABDELHAMID', '8', 'RUE DES DEPORTES', '49430', 'DURTAL', '', '', '', '23/08/1975', '01/06/2011', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '999999999999'),
(75, '', 2, 'ANGEARD', 'MARYSE', '31', 'RUE ST JEAN', '49800', 'SARRIGNE', '', '', '', '20/05/1968', '01/01/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(76, '', 1, 'ANGELO', 'ERIC', '5', 'IMP DE LA PETITE NOUE', '49150', 'BAUGE', '', '', '', '26/04/1970', '18/09/2006', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(77, '', 2, 'ANGOT', 'CECILE', '27', 'RUE DES MOULINS', '49390', 'MOULIHERNE', '', '', '', '28/07/1958', '01/01/2006', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(78, '', 1, 'ANGOT', 'PATRICK', '27', 'RUE DES MOULINS', '49390', 'MOULIHERNE', '', '', '', '29/12/1970', '05/01/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(79, '', 1, 'ASSELAIN', 'SEBASTIEN', '2', 'RUE DU CLOS', '49150', 'BAUGE', '', '', '', '27/07/1988', '01/05/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(80, '', 2, 'AUBRY DAVY', 'BLANDINE', '7', 'RUE DES MEGALITHES', '49150', 'PONTIGNE', '', '', '', '02/05/1973', '01/01/2009', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(81, '', 1, 'AUDOUARD', 'LUDOVIC', '', 'LA MAISON NEUVE', '49150', 'CHARTRENE', '', '', '', '13/11/1981', '05/11/2012', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(82, '', 2, 'AUVINET', 'JUDITH', '', 'LIEU DIT L HUMAUCHAIS', '49140', 'CORZE', '', '', '', '18/08/1992', '09/01/2012', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(83, '', 1, 'AVRIL', 'FLORIAN', '50', 'AVENUE PASTEUR', '49100', 'ANGERS', '', '', '', '10/09/1990', '03/11/2011', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(84, '', 1, 'BABALONE', 'OLIVIER', '30', 'RTE DE LA GRANDE MAISON', '49630', 'CORNE', '', '', '', '25/07/1969', '02/05/1994', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(85, '', 1, 'BABIN', 'ALEXANDRE', '7', 'RUE PIERRE CHANTELOUP', '49140', 'BAUNE', '', '', '', '05/01/1982', '01/01/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(86, '', 1, 'BALLOT', 'MATTHIEU', '4', 'RUE DES MIMOSAS', '49140', 'BAUNE', '', '', '', '13/09/1994', '01/09/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.D. (Formation)', 1, '999999999999'),
(87, '', 1, 'BANGOURA', 'ABDOULAYE', '30', 'RUE DE LA CHAPELLE', '49150', 'ECHEMIRE', '', '', '', '22/07/1973', '01/01/2014', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(88, '', 1, 'BARDONNEAU', 'PASCAL', '5', 'CHEM DE LA PETITE ROTE', '49140', 'VILLEVEQUE', '', '', '', '29/09/1974', '01/07/2009', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(89, '', 1, 'BARELLI', 'MATHIEU', '49', 'BD DU VAUGAREAU', '49100', 'ANGERS', '', '', '', '22/08/1982', '24/07/2006', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(90, '', 1, 'BARRE', 'ROBERT', '30', 'CHEMIN LA CHARRAUD BASSE', '85160', 'SAINT JEAN DE MONTS', '', '', '', '11/07/1957', '21/09/1981', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(91, '', 2, 'BAUNE', 'SYLVIE', '19', 'RUE DES AREDILLES', '49630', 'CORNE', '', '', '', '02/10/1963', '21/10/1980', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(92, '', 1, 'BEASSE', 'FRANCK', '', 'GRESIGNE', '49250', 'BRION', '', '', '', '14/04/1969', '12/04/1994', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(93, '', 1, 'BEAUBIGNY', 'DOMINIQUE', '24', 'RUE DE GROLLAY', '49630', 'MAZE', '', '', '', '30/07/1957', '01/10/2001', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(94, '', 1, 'BEAUDET', 'JEAN DAMIEN', '11', 'SQUARE DU GD CORNILLE', '49100', 'ANGERS', '', '', '', '09/09/1978', '01/11/2003', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(95, '', 1, 'BEAUSSIER', 'CHRISTIAN', '1', 'RUE PRINCIPALE', '49250', 'GEE', '', '', '', '04/05/1958', '22/02/1977', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(96, '', 1, 'BEAUSSIER', 'JEAN JACQUES', '8', 'RTE DES GRANDS CHAMPS', '49140', 'CORNILLE LES CAVES', '', '', '', '19/06/1960', '04/04/1978', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(97, '', 1, 'BELLAMY', 'MATHIAS', '24', 'RUE DES GLACIS', '54000', 'NANCY', '', '', '', '29/02/1992', '01/01/2015', '', '1', 'MARKETING', '', '', 'Stagiaire Etude', 1, '999999999999'),
(98, '', 1, 'BENION', 'FRANCK', '15', 'RUE DE LA MAIRIE', '49140', 'SERMAISE', '', '', '', '04/02/1971', '01/04/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(99, '', 1, 'BENOIST', 'MICKAEL', '10', 'RUE DES SAINTS MARTINS', '49380', 'THOUARCE', '', '', '', '01/10/1980', '12/11/2001', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(100, '', 2, 'BERNARD VUKELIC', 'CAROLE', '1', 'RUE DES EPINETTES', '49140', 'SERMAISE', '', '', '', '07/11/1972', '01/11/2000', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(101, '', 1, 'BERTHO', 'CYRIL', '17', 'RUE FERDINAND VEST', '49800', 'TRELAZE', '', '', '', '08/02/1972', '02/05/1994', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.I.', 1, '999999999999'),
(102, '', 2, 'BERTHONNEAU', 'CELINE', '93', 'RTE DE FAYET', '49630', 'MAZE', '', '', '', '12/03/1970', '11/04/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(103, '', 1, 'BESNARD', 'SEBASTIEN', '', 'LA CROIX', '49140', 'CHAUMONT D ANJOU', '', '', '', '08/08/1983', '13/01/2003', '', '1', '1ER ENCADR. AFFINAGE', '', '', 'C.D.I.', 1, '999999999999'),
(104, '', 1, 'BESNARD', 'STEPHANE', '2', 'ALLEE DES TOURTERELLES', '49250', 'BEAUFORT EN VALLEE', '', '', '', '01/03/1980', '24/03/2003', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(105, '', 1, 'BESNARD', 'GUILLAUME', '', 'RUE DE LA FONTAINE', '49140', 'FONTAINE MILON', '', '', '', '28/07/1972', '24/03/2003', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(106, '', 1, 'BIDET', 'JULIEN', '8', 'IMP LOUIS MARTIN', '49000', 'ANGERS', '', '', '', '20/01/1980', '05/11/2001', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(107, '', 1, 'BIDON', 'ERIC', '20', 'PLACE DE L EGLISE', '49250', 'ST MATHURIN SUR LOIRE', '', '', '', '11/11/1962', '14/10/1980', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(108, '', 1, 'BIDON', 'GILDAS', '107', 'RTE DU CLOS GASNIER', '49630', 'CORNE', '', '', '', '05/03/1957', '25/01/1975', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '999999999999'),
(109, '', 1, 'BIGOT', 'PHILIPPE', '1', 'RUE L AURORE', '49140', 'CORZE', '', '', '', '17/07/1969', '01/10/1999', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(110, '', 2, 'BLOT', 'LAETITIA', '', 'LES GLEFIERES', '49250', 'FONTAINE GUERIN', '', '', '', '29/02/1980', '25/05/2000', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(111, '', 1, 'BLUM', 'DAMIEN', '', 'FERME LA FONTAINE', '49140', 'BAUNE', '', '', '', '19/09/1992', '01/03/2014', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(112, '', 2, 'BOCHER', 'CHRISTELE', '1', 'IMPASSE DE LA PELOUSE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '23/09/1974', '09/01/2012', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(113, '', 1, 'BODIER', 'JEAN MARC', '24', 'RUE DE LA TONNELLERIE', '49150', 'BAUGE', '', '', '', '15/06/1971', '02/06/1997', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(114, '', 1, 'BODIN', 'EMMANUEL', '29', 'RUE DU CABLE', '49330', 'CHATEAUNEUF SUR SARTHE', '', '', '', '15/06/1958', '28/02/1977', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(115, '', 2, 'BODIN', 'BRIGITTE', '130', 'RTE DE BAUNE', '49630', 'CORNE', '', '', '', '23/09/1960', '01/08/1978', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(116, '', 1, 'BODIN', 'DOMINIQUE', '130', 'RTE DE BAUNE', '49630', 'CORNE', '', '', '', '13/07/1980', '01/10/2001', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(117, '', 1, 'BONNIN', 'BERNARD', '', 'LES GAGNERIES', '49630', 'MAZE', '', '', '', '03/01/1957', '16/10/1978', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(118, '', 1, 'BOUCARD', 'PASCAL', '1', 'CHEMIN DE LA RIVIERE', '49140', 'CORZE', '', '', '', '01/05/1968', '25/04/1994', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(119, '', 1, 'BOUGET', 'FRANCK', '', 'LE PRE', '49140', 'LUE EN BAUGEOIS', '', '', '', '18/12/1969', '13/06/1994', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '999999999999'),
(120, '', 1, 'BOUGREAU', 'DOMINIQUE', '19', 'RUE DES LANGOTTIERES', '49150', 'CHEVIRE LE ROUGE', '', '', '', '07/09/1966', '11/06/1990', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(121, '', 1, 'BOUGREAU', 'HUGUES', '7', 'RUE CAMILLE V GIRARDEAU', '49140', 'CORZE', '', '', '', '22/08/1967', '02/05/1996', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(122, '', 1, 'BOUGREAU', 'XAVIER', '5', 'RUE DES BRETIGNOLLES', '49140', 'JARZE', '', '', '', '03/04/1973', '02/05/1994', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(123, '', 1, 'BOULISSIERE', 'GUILAIN', '', 'LES CLAIES', '49150', 'LE VIEIL BAUGE', '', '', '', '11/06/1957', '21/09/1981', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(124, '', 1, 'BOURDIN', 'SEBASTIEN', '15', 'CHEMIN DU SALVERT', '49140', 'FONTAINE MILON', '', '', '', '29/11/1973', '01/04/1996', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(125, '', 1, 'BOUREL', 'GREGORY', '22', 'RUE FAUTRAS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '24/02/1985', '01/06/2008', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(126, '', 1, 'BOURGERIE', 'DIMITRI', '12', 'RUE DE LA CROIX BLANCHE', '49630', 'CORNE', '', '', '', '22/07/1987', '03/09/2008', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(127, '', 2, 'BOURRIGAULT', 'LAETITIA', '4', 'BIS CHEMIN DU SALVERT', '49140', 'FONTAINE MILON', '', '', '', '20/11/1984', '05/01/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(128, '', 1, 'BOUSSEAU', 'DAVID', '2', 'RUE DU 14 JUILLET', '49320', 'BRISSAC QUINCE', '', '', '', '04/05/1968', '12/11/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(129, '', 2, 'BOZEC', 'MARIE', '17', 'RUE DES MIMOSAS', '49100', 'ANGERS', '', '', '', '03/11/1989', '11/08/2014', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.D.', 1, '999999999999'),
(130, '', 1, 'BRAHIMI', 'OMAR', '5', 'PLACE DE L''EUROPE', '49100', 'ANGERS', '', '', '', '10/12/1981', '01/04/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(131, '', 1, 'BRAZILLE', 'MICKAEL', '', 'LA FILERIE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '03/07/1981', '13/03/2000', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(132, '', 1, 'BRETON', 'ANTHONY', '3', 'SQUARE FRANCOISE DOLTO', '49000', 'ANGERS', '', '', '', '11/02/1988', '05/01/2009', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(133, '', 2, 'BRICHET PERPOIL', 'MARIE CLAIRE', '3', 'IMPASSE DES BAS DE SOI', '49630', 'MAZE', '', '', '', '07/09/1957', '01/03/1983', '', '1', 'ADM USINE', '', '', 'C.D.I.', 1, '999999999999'),
(134, '', 2, 'BROWAEYS', 'DELPHINE', '37', 'RUE DELAAGE', '49100', 'ANGERS', '', '', '', '28/11/1986', '01/08/2010', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.I.', 1, '999999999999'),
(135, '', 1, 'BRU', 'ALEXIS', '99', 'RUE FRANCOIS MAURIAC', '49800', 'TRELAZE', '', '', '', '26/02/1987', '10/08/2009', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(136, '', 2, 'BRUERE', 'LAURE', '96', 'RUE DU GROLLAY', '49630', 'MAZE', '', '', '', '25/01/1974', '19/11/2000', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(137, '', 1, 'BRUGIERE', 'ROMAIN', '4', 'ALLEE DES COUDRIERS', '49630', 'MAZE', '', '', '', '26/10/1985', '15/03/2010', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(138, '', 2, 'BRUNEAU', 'JACQUELINE', '14', 'RUE DES CHAMPS DE LA VILLE', '49630', 'CORNE', '', '', '', '23/02/1967', '03/09/1990', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(139, '', 2, 'BURILLON', 'STEPHANIE', '38', 'RUE ALBERT SCHWEITZER', '49460', 'MONTREUIL JUIGNE', '', '', '', '22/05/1976', '01/12/2014', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(140, '', 1, 'CADAS', 'KARIM', '2', 'RUE DE LA FRUITIERE', '49140', 'CORZE', '', '', '', '18/05/1985', '09/08/2010', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(141, '', 1, 'CALCO', 'MICHEL', '12', 'AVENUE ERATO', '44470', 'CARQUEFOU', '', '', '', '28/06/1967', '18/03/1996', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(142, '', 2, 'CAMUS', 'CHARLENE', '20', 'RUE GUERIN DES FONTAINES', '49250', 'FONTAINE GUERIN', '', '', '', '24/10/1981', '25/11/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(143, '', 2, 'CARO', 'LAETITIA', '6', 'IMPASSE DES PUISATIERS', '49630', 'MAZE', '', '', '', '03/03/1980', '15/07/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(144, '', 1, 'CATILLON', 'THIERRY', '10', 'RUE DES TILLEULS', '49140', 'SERMAISE', '', '', '', '30/08/1978', '08/05/2000', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(145, '', 2, 'CAUCHARD', 'FLORENCE', '52', 'RUE VICTOR HUGO', '49100', 'ANGERS', '', '', '', '15/07/1977', '02/09/2013', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(146, '', 1, 'CAYON', 'JACKY', '28', 'RTE DE LA PREVOTE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '05/06/1957', '19/06/1973', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(147, '', 1, 'CHANTEUX', 'FREDY', '9', 'SQUARE COLETTE BESSON', '49000', 'ANGERS', '', '', '', '27/05/1985', '03/12/2007', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(148, '', 2, 'CHARDON', 'CHRISTINE', '', 'LE PETIT PERRICHET', '49140', 'JARZE', '', '', '', '05/11/1968', '20/06/1994', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(149, '', 2, 'CHARLEUX', 'EVA', '22', 'RUE DU CLOS DE LA MOTTE', '49630', 'CORNE', '', '', '', '05/12/1973', '01/11/2000', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(150, '', 2, 'CHARRIER', 'CHRISTIANE', '4', 'HAMEAU DU PRESSOIR', '49112', 'PELLOUAILLES LES VIGNES', '', '', '', '28/02/1961', '11/06/1990', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(151, '', 1, 'CHATARD', 'PATRICK', '4', 'RUE DES GLYCINES', '49800', 'SARRIGNE', '', '', '', '10/02/1966', '12/01/2004', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(152, '', 2, 'CHAUSSEPIED', 'CATHERINE', '', 'LA GOUPILLERIE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '27/07/1970', '10/12/1990', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(153, '', 1, 'CHESNEAU', 'CHRISTOPHE', '', 'LA FURGEONNIERE', '49250', 'LA MENITRE', '', '', '', '24/09/1963', '09/12/2013', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(154, '', 2, 'CHEVALEYRE', 'JULIE', '', 'RUE DE CHARTRENE', '49150', 'CUON', '', '', '', '28/02/1982', '15/03/2004', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(155, '', 1, 'CHEVET', 'DOMINIQUE', '1', 'RUE DE BEL AIR', '49430', 'LES RAIRIES', '', '', '', '12/04/1957', '01/12/2011', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(156, '', 1, 'CHOQUET', 'JULIEN', '10', 'AVENUE PIERRE POIVRE', '49240', 'AVRILLE', '', '', '', '22/06/1986', '01/05/2009', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(157, '', 1, 'CLEC H', 'BENOIT', '59', 'RUE RAPHAEL LECUIT', '49320', 'BRISSAC QUINCE', '', '', '', '27/07/1972', '01/12/2014', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(158, '', 1, 'COIGNARD', 'DOMINIQUE', '10', 'CITE GUERIN DES FONTAINES', '49150', 'BAUGE', '', '', '', '23/07/1969', '22/02/1990', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(159, '', 1, 'COLOMBEAU', 'CHRISTOPHE', '', 'AU P TIT BONHEUR', '49140', 'SERMAISE', '', '', '', '09/09/1970', '05/08/1991', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(160, '', 2, 'COLOMBEAU', 'VIRGINIE', '', 'AU P TIT BONHEUR', '49140', 'SERMAISE', '', '', '', '30/10/1971', '13/06/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(161, '', 2, 'CORNUT PFAD', 'STEPHANIE', '4', 'RUE JEAN EMILE MOLLAND', '49000', 'ANGERS', '', '', '', '08/05/1977', '01/01/2010', '', '1', 'DRH', '', '', 'C.D.I.', 1, '999999999999'),
(162, '', 1, 'CORRE', 'REGIS', '10', 'RUE JOSEPH LANDELLE', '49140', 'SERMAISE', '', '', '', '29/04/1957', '14/08/1974', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(163, '', 2, 'COURSEAU', 'ANNE LAURE', '', 'LE GRAND MAGNOLET', '36330', 'ARTHON', '', '', '', '30/12/1993', '26/01/2015', '', '1', 'ASSURANCE QUALITE', '', '', 'Stagiaire Etude', 1, '999999999999'),
(164, '', 1, 'COUTARD', 'MICHEL', '11', 'CHEM DE LA BIENVENUE', '49630', 'MAZE', '', '', '', '13/01/1959', '21/09/1981', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(165, '', 2, 'COZMA', 'RAMONA', '1', 'CHEMIN DU PRE DES PLANCHES', '49630', 'MAZE', '', '', '', '30/07/1988', '01/04/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(166, '', 1, 'CROS', 'FABIEN', '13', 'AVENUE DES PLANTAGENETS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '09/07/1981', '01/06/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(167, '', 1, 'CROS', 'MAXIME', '1', 'SQUARE EUGENE GILLOT', '49250', 'BEAUFORT EN VALLEE', '', '', '', '27/07/1990', '01/10/2002', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(168, '', 1, 'DA SILVA', 'CHARLES', '', 'LA NAVETTE', '49140', 'BAUNE', '', '', '', '21/06/1994', '01/08/2014', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(169, '', 1, 'DAILLIERE', 'FRANCK', '', 'LA PERRAUDIERE', '49140', 'BAUNE', '', '', '', '09/06/1972', '03/06/1991', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(170, '', 1, 'DAL MOLIN', 'REMY', '95', 'RUE PRINCIPALE', '49630', 'MAZE', '', '', '', '09/11/1962', '16/12/2009', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(171, '', 2, 'DAVID', 'MONIQUE', '32', 'RUE DE TOULGOET', '49140', 'LUE EN BAUGEOIS', '', '', '', '28/06/1956', '26/12/1974', '', '1', 'STANDARD', '', '', 'C.D.I.', 1, '999999999999'),
(172, '', 1, 'DAVIS', 'GILLES', '16', 'RTE DE GARDAMONT', '49630', 'MAZE', '', '', '', '28/09/1974', '02/05/1996', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(173, '', 1, 'DE LA CELLE', 'JEAN', '1190', 'LA BASSE BEUNAUDIERE', '49770', 'LA MEIGNANNE', '', '', '', '03/03/1990', '01/02/2015', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(174, '', 2, 'DEBELLY', 'JEANNE', '3', 'RUE DE L''ARSENAL', '49400', 'SAUMUR', '', '', '', '23/02/1954', '01/11/2000', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(175, '', 2, 'DECLE', 'CHRISTINE', '', 'LA ROUSSINIERE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '26/06/1965', '17/12/2001', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(176, '', 2, 'DELAIRE', 'SHIRLEY', '', 'LE PATIS', '49250', 'FONTAINE GUERIN', '', '', '', '26/04/1986', '01/06/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(177, '', 2, 'DELAROQUE', 'FANNY', '1', 'RUE LAFAYETTE', '54000', 'NANCY', '', '', '', '19/04/1989', '03/12/2014', '', '1', 'MARKETING', '', '', 'Stagiaire Etude', 1, '999999999999'),
(178, '', 1, 'DELAUNAY', 'PHILIPPE', '19', 'RUE DU PRIEURE', '49140', 'BEAUVAU', '', '', '', '06/10/1973', '11/07/1997', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(179, '', 1, 'DENIS', 'SERGE', '', 'LA BLINIERE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '13/08/1958', '21/09/1981', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(180, '', 1, 'DESVIGNES', 'GREGORY', '16', 'ROUTE DE MONTGEOFFROY', '49140', 'CORNILLE LES CAVES', '', '', '', '22/07/1991', '01/10/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(181, '', 1, 'DEZECOT', 'THIERRY', '4', 'RUE DES ACACIAS', '72800', 'COULONGE', '', '', '', '24/03/1972', '01/10/2013', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(182, '', 1, 'DITACROUTE', 'SYLVAIN', '5', 'SQUARE DE BELLEVUE', '49140', 'JARZE', '', '', '', '07/04/1960', '04/02/1997', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(183, '', 1, 'DITACROUTE', 'BERNARD', '', 'CHEMIN DES VIEUX PONTS', '49630', 'CORNE', '', '', '', '19/06/1984', '07/03/2005', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(184, '', 1, 'DOBARD', 'YANNICK', '4', 'RUE DU MOULIN', '49250', 'BEAUFORT EN VALLEE', '', '', '', '20/06/1965', '27/10/1997', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(185, '', 1, 'DODIN', 'FRANCOIS', '7', 'RUE DU DR ALEXIS CARREL', '49150', 'CHEVIRE LE ROUGE', '', '', '', '26/05/1986', '01/04/2014', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(186, '', 1, 'DOHIN', 'THIERRY', '22', 'CHEMIN DE L''ORTIER', '49140', 'SOUCELLES', '', '', '', '14/03/1960', '01/11/2012', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(187, '', 1, 'DOINEAU', 'MICHEL', '2', 'RUE DES OISEAUX', '72200', 'BAZOUGE SUR LE LOIR', '', '', '', '29/01/1964', '19/01/2001', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(188, '', 2, 'DUBLE', 'AGATHE', '28', 'RUE DE LA GRAND MAISON', '49800', 'BRAIN SUR L AUTHION', '', '', '', '14/01/1966', '24/06/1991', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(189, '', 1, 'DUBOIS', 'FABIEN', '6', 'RUE BOUCHETIERE', '49140', 'FONTAINE MILON', '', '', '', '17/04/1974', '22/05/1995', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(190, '', 1, 'DUPERRAY', 'VINCENT', '', 'LE BOULEROT', '43250', 'BEAUFORT EN VALLEE', '', '', '', '07/06/1985', '01/10/2004', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(191, '', 2, 'DURIEZ', 'LAURENCE', '47', 'RUE DES NOYERS', '49000', 'ANGERS', '', '', '', '08/03/1957', '20/10/2003', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(192, '', 1, 'DUVEAU', 'STEPHANE', '10', 'RUE DE LA PAIX', '49140', 'SERMAISE', '', '', '', '25/12/1978', '06/12/1999', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(193, '', 1, 'DUVEAU', 'MICKAEL', '16', 'RUE DE LA DOUVE AUX CHEVAU', '49250', 'BEAUFORT EN VALLEE', '', '', '', '24/07/1981', '20/01/2003', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(194, '', 1, 'ECOMARD', 'DOMINIQUE', '0', 'LA FAUVELLIERE', '49160', 'SAINT PHILBERT DU PEUPLE', '', '', '', '20/09/1980', '17/05/2004', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(195, '', 1, 'ESNAU', 'DAMIEN', '82', 'RUE DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '10/10/1983', '01/10/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(196, '', 1, 'FARINEAU', 'MICHEL', '16', 'RUE DU STADE', '49250', 'BRION', '', '', '', '06/09/1956', '10/06/2001', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(197, '', 2, 'FATIA', 'JEREMY', '47', 'RUE COTE DE BELLEVUE', '49000', 'ANGERS', '', '', '', '02/06/1993', '01/12/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(198, '', 1, 'FAVREAU', 'GERARD', '14', 'SQUARE DES CALEIDES', '49000', 'ANGERS', '', '', '', '17/10/1953', '06/09/1995', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(199, '', 1, 'FERRIERE', 'YOHANN', '6', 'RUE PIERRE ET MARIE CURIE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '18/10/1988', '01/05/2009', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '999999999999'),
(200, '', 1, 'FEVRIER', 'DAVID', '', 'CHEMIN DU PONT A L''OIE', '49150', 'ST MARTIN D ARCE', '', '', '', '24/10/1973', '13/06/1994', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(201, '', 1, 'FLAO', 'PATRICK', '1', 'CHEM DU CHATAIGNIER', '49150', 'ST MARTIN D ARCE', '', '', '', '08/03/1962', '02/05/2001', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(202, '', 2, 'FLORINEDA', 'PASCAL', '36', 'RUE DES POETES', '49630', 'CORNE', '', '', '', '27/05/1962', '09/01/2012', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(203, '', 1, 'FOIN', 'PHILIPPE', '', 'LES PETITES PRIMETIERE', '49140', 'JARZE', '', '', '', '08/12/1957', '15/08/1978', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(204, '', 2, 'FONTAINE', 'JUDITH', '', 'LA ROBINIERE', '49140', 'FONTAINE MILON', '', '', '', '11/07/1966', '30/05/1994', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.I.', 1, '999999999999'),
(205, '', 1, 'FORTIER', 'THOMAS', '123', 'RUE EBLE', '49000', 'ANGERS', '', '', '', '17/06/1986', '23/06/2014', '', '1', 'CONTR?LE DE GESTION', '', '', 'C.D.D.', 1, '999999999999'),
(206, '', 1, 'FOSSE', 'WILLY', '4', 'LES HAUTES BROSSES LOTIS LES CRINIERES II LOT 2', '49150', 'ECHEMIRE', '', '', '', '06/12/1973', '01/11/2000', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(207, '', 2, 'FOURMI', 'ANNA', '62', 'ROUTE DE PARIGNE L''EVEQUE', '72560', 'CHANGE', '', '', '', '09/05/1989', '16/09/2013', '', '1', 'ENTRETIEN', '', '', 'C.D.D.', 1, '999999999999'),
(208, '', 1, 'FOURNIER', 'JOHNNY', '72', 'RUE NATIONALE', '49140', 'SEICHES SUR LE LOIR', '', '', '', '07/09/1990', '12/10/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(209, '', 2, 'FRAQUET', 'NATHALIE', '', 'LA RONCERIE', '49640', 'DAUMERAY', '', '', '', '15/01/1973', '09/04/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(210, '', 2, 'GAIGNARD', 'MARINA', '90', 'RUE SAUMUROISE RESIDENCE LA MADELEINE BAT B1', '49000', 'ANGERS', '', '', '', '13/04/1977', '01/07/2002', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(211, '', 1, 'GANDILHON', 'DAMIEN', '14', 'CHEMIN DE LA JEANSELLERIE', '49140', 'VILLEVEQUE', '', '', '', '22/09/1990', '01/06/2011', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(212, '', 2, 'GARNIER', 'AURELIE', '4', 'RUE D''ALSACE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '23/10/1983', '03/09/2007', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(213, '', 1, 'GASTINEAU', 'ALEXIS', '12', 'LOTISSEMENT BEL AIR', '49150', 'CUON', '', '', '', '11/06/1989', '10/08/2009', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(214, '', 1, 'GHEZALI', 'LAMINE', '209', 'RUE SAINT LEONARD RES SAINT LAURENT C5 4 ETG 538', '49000', 'ANGERS', '', '', '', '28/11/1978', '01/10/2005', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(215, '', 1, 'GILBERT', 'DOMINIQUE', '179', 'RUE PRINCIPALE LES ALLEES RES SAINT LAURENT C5 4 ETG 538', '49630', 'MAZE', '', '', '', '02/01/1957', '04/07/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(216, '', 1, 'GIRARDEAU', 'VINCENT', '', 'TARTIFUME', '49250', 'BEAUFORT EN VALLEE', '', '', '', '16/06/1976', '02/06/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(217, '', 1, 'GIRAUD', 'ANTONY', '18', 'RUE DES MALPIQUES LE CLOS BAUJON', '49350', 'GENNES', '', '', '', '19/09/1988', '01/04/2012', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(218, '', 1, 'GODARD', 'FRANCK', '10', 'IMPASSE LOUIS CAMUS', '49140', 'FONTAINE MILON', '', '', '', '23/12/1984', '14/10/2003', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(219, '', 1, 'GODARD', 'GREGORY', '7', 'IMP DES PUISATIERS', '49630', 'MAZE', '', '', '', '10/02/1981', '30/05/1994', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(220, '', 2, 'GODARD', 'SANDRA', '7', 'IMPASSE DES PUISATIERS', '49630', 'MAZE', '', '', '', '14/02/1974', '20/06/2005', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(221, '', 1, 'GODET', 'VALENTIN', '1', 'RUE SAINT ETIENNE', '49100', 'ANGERS', '', '', '', '28/11/1989', '02/11/2012', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(222, '', 2, 'GOIZET', 'NADEGE', '8', 'AV DES CHAMPS DE LA VILLE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '23/03/1976', '01/08/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(223, '', 1, 'GOUBARD', 'PATRICK', '685', 'ROUTE DE NOYAU LES CAVES', '49140', 'BAUNE', '', '', '', '28/11/1958', '06/06/1990', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(224, '', 2, 'GOUBARD', 'ANDREE', '685', 'ROUTE DE NOYAU LES CAVES', '49140', 'BAUNE', '', '', '', '27/11/1955', '08/04/1991', '', '1', 'MAGASIN', '', '', 'C.D.I.', 1, '999999999999'),
(225, '', 2, 'GOUJON', 'CHRISTINE', '16', 'RUE PROUST', '49100', 'ANGERS', '', '', '', '21/02/1962', '01/09/2009', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(226, '', 2, 'GRONFOT', 'VIRGINIE', '8', 'RUE DE LA CADORIERE', '49150', 'CHEVIRE LE ROUGE', '', '', '', '09/12/1983', '01/11/2009', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(227, '', 1, 'GROSBOIS', 'MAXIME', '11', 'RUE PRINCIPALE', '49250', 'GEE', '', '', '', '20/06/1958', '01/03/1977', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(228, '', 1, 'GUEROUX', 'LAURENT', '4', 'CHEMIN DU PASSEUR', '49130', 'SAINTE GEMMES SUR LOIRE', '', '', '', '08/01/1980', '05/01/2015', '', '1', 'ENTRETIEN', '', '', 'C.D.D.', 1, '999999999999'),
(229, '', 1, 'GUERROUDJ', 'MERZAK', '117', 'RUE FRICOTELLE', '49400', 'SAUMUR', '', '', '', '30/03/1977', '05/01/2015', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(230, '', 1, 'GUICHARD', 'ALAIN', '61', 'RTE DE FAYET', '49630', 'MAZE', '', '', '', '29/12/1958', '03/03/1980', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(231, '', 1, 'GUIET', 'FREDERIC', '3', 'RUE BARBARA STERLING', '49124', 'SAINT BARTHELEMY D ANJOU', '', '', '', '04/02/1971', '13/02/1996', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(232, '', 2, 'GUIHO', 'MELODY', '10', 'SQUARE MAURICE ASSELIN', '49480', 'SAINT SYLVAIN D ANJOU', '', '', '', '31/12/1989', '14/03/2013', '', '1', 'DRH', '', '', 'C.D.I.', 1, '999999999999'),
(233, '', 1, 'GUILLET', 'THIBAULT', '121', 'TER AV DU GENERAL PATTON', '49000', 'ANGERS', '', '', '', '22/04/1984', '04/12/2006', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(234, '', 2, 'HAMARD', 'JOSETTE', '', 'LE MONTIL', '49250', 'LA MENITRE', '', '', '', '21/12/1958', '29/04/1991', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(235, '', 1, 'HAMELIN', 'JASON', '', 'LIEU DIT L HUMAUCHAIS', '49140', 'CORZE', '', '', '', '07/01/1992', '01/10/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(236, '', 1, 'HAMONIER', 'OLIVIER', '3', 'RUE DES ROULIERES', '49140', 'LA CHAPELLE ST LAUD', '', '', '', '26/03/1971', '05/04/1991', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(237, '', 1, 'HERMITEAU', 'SIMON', '9', 'PLACE DE L AN 2000', '49140', 'BAUNE', '', '', '', '21/11/1992', '01/01/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(238, '', 2, 'HOFFMAN', 'ALIX', '7', 'RUE DE LA LIBERTE', '91600', 'SAVIGNY SUR ORGE', '', '', '', '13/12/1993', '02/02/2015', '', '1', 'DIRECTION USINE', '', '', 'Stagiaire Etude', 1, '999999999999'),
(239, '', 1, 'HONORE', 'EMILE', '6', 'IMPASSE DE LA PICOTERIE', '49070', 'BEAUCOUZE', '', '', '', '12/09/1956', '01/09/1984', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(240, '', 2, 'HURSON BANGOURA', 'NICOLE', '30', 'RUE DE LA CHAPELLE', '49150', 'ECHEMIRE', '', '', '', '26/04/1959', '19/02/2001', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(241, '', 1, 'HY', 'DIMITRI', '28', 'RUE DES HIRONDELLES', '49250', 'BEAUFORT EN VALLEE', '', '', '', '09/03/1985', '07/03/2005', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(242, '', 1, 'JARRY', 'JEAN MARC', '112', 'RUE ROYALE', '49630', 'CORNE', '', '', '', '07/07/1964', '03/01/2005', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(243, '', 1, 'JAZIRI', ' MAHDI', '26', 'RUE DU MARECHAL LECLERC', '49240', 'AVRILLE', '', '', '', '04/01/1973', '07/02/2011', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(244, '', 1, 'JEFFRARD', 'ROBERT', '19', 'RUE DE LA CROIX DE BOIS', '49800', 'BRAIN SUR L AUTHION', '', '', '', '12/03/1964', '01/07/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(245, '', 1, 'JOBIN', 'OLIVIER', '27', 'RUE PRINCIPALE', '49490', 'AUVERSE', '', '', '', '01/09/1973', '01/01/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(246, '', 2, 'JOLY', 'NADIA', '', 'LA CHARTRIE', '49160', 'ST PHILBERT DU PEUPLE', '', '', '', '28/06/1963', '01/05/2003', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(247, '', 1, 'JOSSELIN', 'ANTHONY', '38', 'RUE LEON BLUM', '49800', 'TRELAZE', '', '', '', '30/10/1987', '02/04/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(248, '', 1, 'JOUIN', 'JEAN PHILIPPE', '20', 'RUE GUERIN DES FONTAINES', '49150', 'BAUGE', '', '', '', '29/11/1971', '06/11/2000', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(249, '', 1, 'JOUIN', 'BRUNO', '88', 'RTE DE FAYET', '49630', 'MAZE', '', '', '', '17/07/1968', '08/04/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(250, '', 1, 'JOUSSET', 'JACQUES', '16', 'CHEMIN DE LA PICAUDIERE', '49630', 'MAZE', '', '', '', '18/01/1963', '17/10/1980', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(251, '', 1, 'JOUSSET', 'SEBASTIEN', '', 'LIEU DIT CESNE', '49140', 'BAUNE', '', '', '', '17/02/1989', '03/08/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(252, '', 1, 'JUBAULT', 'DAMIEN', '13', 'RUE DU TERTRE', '49250', 'BRION', '', '', '', '16/11/1979', '02/06/2003', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(253, '', 2, 'JURET', 'LAURENCE', '4', 'RUE RACINE', '49500', 'SEGRE', '', '', '', '04/07/1970', '03/05/2004', '', '1', 'DIRECTION USINE', '', '', 'C.D.I.', 1, '999999999999'),
(254, '', 1, 'KEBANGA', 'OUMAR IBRAHIM', '99', 'AVENUE DU GENERAL PATTON', '49000', 'ANGERS', '', '', '', '08/08/1976', '23/10/2006', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(255, '', 1, 'KHOUMSI', 'MUSTAPHA', '6', 'RUE EDGAR DEGAS, LES VILLAS DU PARC', '49800', 'BRAIN SUR L AUTHION', '', '', '', '12/11/1974', '12/01/2004', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(256, '', 1, 'LAIGLE', 'DAMIEN', '', 'LA BELLANGERIE', '49430', 'DURTAL', '', '', '', '05/07/1977', '01/10/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(257, '', 2, 'LAMBERT', 'NATHALIE', '13', 'RUE DU TERTRE', '49250', 'BRION', '', '', '', '07/04/1981', '04/10/2004', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(258, '', 1, 'LANGINIER', 'BRUNO', '10', 'RUE DE LA PISTOLE', '49150', 'LE VIEIL BAUGE', '', '', '', '08/07/1962', '01/03/1986', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(259, '', 1, 'LASSAY', 'ANTHONY', '3', 'RUE PIERRE CHANTELOUP', '49140', 'BAUNE', '', '', '', '23/03/1988', '05/01/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(260, '', 2, 'LE CALVEZ', 'AMBRE', '30', 'RUE DE LA VIEILLE LEVEE', '49800', 'LA DAGUENIERE', '', '', '', '20/02/1984', '01/09/2011', '', '1', 'DRH', '', '', 'C.D.I.', 1, '999999999999'),
(261, '', 1, 'LE CARDIEC', 'OLIVIER', '6', 'IMPASSE DU CLOITRE', '49630', 'MAZE', '', '', '', '27/12/1961', '25/06/1990', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(262, '', 2, 'LE MENN', 'MARINE', '4', 'RUE GUSTAVE MAREAU', '49000', 'ANGERS', '', '', '', '15/10/1988', '05/12/2012', '', '1', 'TECHNIQUE', '', '', 'C.D.I.', 1, '999999999999'),
(263, '', 1, 'LE PETITCORPS', 'LAURENT', '5', 'RUE DES ERABLES', '49490', 'AUVERSE', '', '', '', '03/10/1969', '01/11/1991', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(264, '', 2, 'LEBLOIS', 'MAGALI', '79', 'ROUTE DE TOURS', '49490', 'NOYANT', '', '', '', '24/01/1976', '27/11/1997', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(265, '', 2, 'LEBOUC', 'CHRISTELLE', '12', 'ALLEE DES BLEUETS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '23/01/1971', '01/02/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(266, '', 1, 'LEBOUCHER', 'JOHN', '1', 'RUE D''ANJOU', '49250', 'SAINT MATHURIN', '', '', '', '16/06/1982', '14/06/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(267, '', 1, 'LECONTE', 'JEAN LUC', '14', 'RUE NATIONALE', '49140', 'SEICHES SUR LE LOIR', '', '', '', '18/08/1967', '01/07/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(268, '', 1, 'LECROISEY', 'LIONEL', '0', 'LA LANDE PLATE', '49160', 'JUMELLES', '', '', '', '13/11/1959', '01/01/1987', '', '1', 'TECHNIQUE', '', '', 'C.D.I.', 1, '999999999999'),
(269, '', 1, 'LEGENDRE', 'XAVIER', '47', 'RUE JULIEN DAILLERE', '49140', 'BAUNE', '', '', '', '14/12/1958', '16/05/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(270, '', 2, 'LEGENDRE', 'ANITA', '10', 'RUE DES NOISETIERS', '49140', 'BAUNE', '', '', '', '26/01/1971', '07/04/1975', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(271, '', 2, 'LEGENDRE', 'PATRICIA', '', 'LA CROIX VERTE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '18/12/1974', '06/11/2000', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.I.', 1, '999999999999'),
(272, '', 2, 'LEGENDRE', 'NATHALIE', '4', 'ALLEE DES COUDRIERS', '49630', 'MAZE', '', '', '', '03/06/1962', '25/04/1994', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(273, '', 2, 'LELIEVRE', 'BENJAMIN', '69', 'RUE DU PRE PIGEON', '49100', 'ANGERS', '', '', '', '11/09/1991', '01/11/2013', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(274, '', 1, 'LEMOINE', 'GREGORY', '11', 'IMPASSE DES FILETOUPIERS', '49630', 'MAZE', '', '', '', '05/12/1984', '05/01/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(275, '', 1, 'LENOIR', 'PATRICE', '14', 'RUE DES MOULINS', '49800', 'SARRIGNE', '', '', '', '22/02/1957', '23/10/2006', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(276, '', 2, 'LENON', 'EMILIE', '46', 'RUE J.B FOURCAULT', '49800', 'TRELAZE', '', '', '', '29/10/1987', '26/05/2014', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.D.', 1, '999999999999'),
(277, '', 1, 'LEPAGE', 'REMI', '4', 'RTE DES MARZELLES, LA ROCHE FOULQUES', '49140', 'SOUCELLES', '', '', '', '20/01/1961', '01/04/1982', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(278, '', 1, 'LEROUX', 'MICHEL', '11', 'ROUTE DES ROSIERS', '49250', 'ST GEORGES DU BOIS', '', '', '', '13/06/1968', '31/05/1991', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(279, '', 2, 'LESELLIER', 'JULIE', '4', 'RUE SAINT JACQUES', '49250', 'BEAUFORT EN VALLEE', '', '', '', '17/07/1994', '08/09/2014', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.D. (Formation)', 1, '999999999999'),
(280, '', 1, 'LESSIAU', 'JEAN MARC', '7', 'RUE DES ACACIAS', '49140', 'BAUNE', '', '', '', '07/01/1969', '05/06/2000', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(281, '', 1, 'LHOPITEAU', 'RAPHAEL', '12', 'RUE DES CHATAIGNIERS', '49160', 'BLOU', '', '', '', '12/04/1979', '10/08/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(282, '', 1, 'LICOIS', 'JEAN LOUIS', '0', 'LES TROIS ORMEAUX', '49250', 'BRION', '', '', '', '23/05/1987', '05/10/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(283, '', 2, 'LICOIS', 'CELINE', '17', 'PLACE JEANNE DE LAVAL', '49250', 'BEAUFORT EN VALLEE', '', '', '', '17/09/1981', '01/06/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(284, '', 2, 'LICOIS', 'DELPHINE', '', 'ROUTE DE GEE', '49250', 'FONTAINE GUERIN', '', '', '', '17/08/1961', '05/10/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(285, '', 1, 'LICOIS', 'FREDERIC', '', 'ROUTE DE GEE', '49250', 'FONTAINE GUERIN', '', '', '', '29/08/1984', '01/10/2011', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(286, '', 1, 'LOPEZ', 'RENAUD', '16', 'RUE DE LA REUX', '49124', 'SAINT BARTHELEMY D ANJOU', '', '', '', '27/06/1989', '07/02/2011', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(287, '', 1, 'LORET', 'JIMMY', '3', 'ROUTE DES PEUPLIERS', '49490', 'LASSE', '', '', '', '18/10/1980', '01/10/2011', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(288, '', 2, 'LORET', 'BRIGITTE', '40', 'RUE DE LA PETITE PORTE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '24/08/1980', '19/02/2001', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(289, '', 1, 'LORET', 'TEDDY', '40', 'RUE DE LA PETITE PORTE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '05/09/1989', '01/10/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(290, '', 1, 'MAHOT', 'PATRICK', '9', 'RUE DES ACCACIAS', '49140', 'BAUNE', '', '', '', '27/05/1960', '15/05/1979', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(291, '', 1, 'MAILLET', 'DANIEL', '', 'LE PIGEON BLANC', '72800', 'LE LUDE', '', '', '', '21/01/1966', '06/03/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(292, '', 1, 'MAINGOT', 'ARSENE', '7', 'RUE DES DEUX DOUVES', '49370', 'BECON LES GRANITS', '', '', '', '02/03/1957', '07/02/2011', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(293, '', 2, 'MARAIS', 'MARIE LUCE', '17', 'RUE DES ACACIAS', '49140', 'BAUNE', '', '', '', '30/01/1963', '04/07/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(294, '', 1, 'MARCHAND', 'JEAN-CHRISTOPHE', '22', 'RUE ROUGET DE L''ISLE', '49130', 'PONT DE CE', '', '', '', '17/08/1975', '04/01/2005', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(295, '', 1, 'MARCHAND', 'SEBASTIEN', '11', 'RUE DU PILIER CARRE', '49800', 'ANDARD', '', '', '', '02/05/1986', '05/07/2010', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(296, '', 1, 'MARTIN', 'LAURENT', '20', 'CHE DE SALVERT', '49140', 'FONTAINE MILON', '', '', '', '09/12/1971', '13/10/1997', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(297, '', 1, 'MASSE', 'OLIVIER', '3', 'IMP DES PETUNIAS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '10/01/1981', '01/10/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(298, '', 2, 'MASSE', 'SYLVIE', '3', 'IMP DES PETUNIAS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '10/06/1973', '07/10/1996', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(299, '', 2, 'MASSIP', 'AUDREY', '8', 'IMPASSE SAINT CHARLES', '49100', 'ANGERS', '', '', '', '05/08/1984', '01/12/2008', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.I.', 1, '999999999999'),
(300, '', 2, 'MAUXION', 'ANITA', '', 'RUE DE LA PERRAUDIERE', '49140', 'LUE EN BAUGEOIS', '', '', '', '24/07/1968', '15/01/2001', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(301, '', 1, 'MEFFRAY', 'FRANCK', '9', 'RUE DE LA FOSSE AU CURE', '49140', 'MARCE', '', '', '', '01/08/1973', '26/04/2011', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(302, '', 1, 'MENARD', 'CLAUDE', '11', 'IMPASSE LOUIS CAMUS', '49140', 'FONTAINE MILON', '', '', '', '12/04/1959', '16/06/1997', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(303, '', 1, 'MERCIER', 'JACKY', '2', 'PLACE DES ACACIAS', '49150', 'LE VIEIL BAUGE', '', '', '', '29/10/1958', '01/03/1986', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.I.', 1, '999999999999'),
(304, '', 1, 'MILCENT', 'FREDERIC', '', 'LES NAVRANS', '72200', 'LA FLECHE', '', '', '', '20/11/1969', '01/11/2012', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(305, '', 1, 'MILOCHE', 'SYLVAIN', '3', 'RUE DE LA CLE DES CHAMPS', '49390', 'MOULIHERNE', '', '', '', '27/06/1973', '05/01/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(306, '', 1, 'MILOUDI', 'SAMIR', '8', 'RUE MENELICK', '49000', 'ANGERS', '', '', '', '25/10/1982', '12/10/2010', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(307, '', 1, 'MOREAU', 'PHILIPPE', '20', 'CITE DES OEILLETS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '18/06/1966', '17/02/1997', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(308, '', 1, 'MORIN', 'ALAIN', '56', 'CHEMIN DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '05/07/1959', '01/08/1977', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(309, '', 1, 'MORTIER', 'JEAN YVES', '', 'PARC RTE DE LA FLECHE', '49150', 'ST MARTIN D ARCE', '', '', '', '09/12/1959', '26/04/1976', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(310, '', 1, 'MOUNIER', 'MATTHIEU', '2', 'RUE DE BEAUVAL', '49000', 'ANGERS', '', '', '', '04/07/1977', '01/08/2007', '', '1', 'CONTR?LE DE GESTION', '', '', 'C.D.I.', 1, '999999999999'),
(311, '', 2, 'NEVOUX', 'ISABELLE', '', 'LE BOIS JARRY', '49800', 'SARRIGNE', '', '', '', '28/01/1967', '14/06/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(312, '', 2, 'ONILLON', 'VANESSA', '7', 'RUE PIERRE ROISSE', '49250', 'GEE', '', '', '', '15/06/1984', '01/07/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(313, '', 1, 'OTMANE CHERIF', 'MOHAMED LAMINE', '1', 'BOULEVARD SCHUMAN', '49100', 'ANGERS', '', '', '', '02/03/1977', '01/03/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(314, '', 1, 'PALLIER', 'YANN', '', 'LE FOURNEAU', '49140', 'LA CHAPELLE SAINT LAUD', '', '', '', '21/08/1984', '01/04/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(315, '', 2, 'PAPILLON', 'AUDREY', '', 'LA BRISE', '49250', 'BRION', '', '', '', '17/03/1986', '01/12/2008', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(316, '', 1, 'PAPIN', 'BENJAMIN', '', 'LA RUE CREUSE', '49250', 'FONTAINE GUERIN', '', '', '', '13/04/1990', '14/06/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(317, '', 1, 'PASSEBON', 'AURELIEN', '19', 'CHEMIN DES HUAUX', '49350', 'ST GEORGES DES SEPT VOIES', '', '', '', '11/07/1984', '09/01/2012', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(318, '', 2, 'PASTEUR', 'MURIEL', '', 'LA HAUTE FOLIE', '49150', 'PONTIGNE', '', '', '', '29/11/1971', '08/10/1990', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(319, '', 1, 'PAUMIER', 'PASCAL', '206', 'RUE PRINCIPALE', '49250', 'MAZE', '', '', '', '02/09/1961', '02/04/1994', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(320, '', 1, 'PAVIOT', 'WILLY', '15', 'RUE TRAVERSIERE', '49160', 'LONGUE JUMELLES', '', '', '', '12/12/1981', '17/08/2009', '', '1', 'MAGASIN', '', '', 'C.D.I.', 1, '999999999999'),
(321, '', 1, 'PAVIOT', 'MICKAEL', '', 'LES TROIS ORMEAUX', '49250', 'BRION', '', '', '', '24/12/1986', '04/09/2006', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(322, '', 2, 'PAVIOT', 'AURELIE', '15', 'RUE TRAVERSIERE', '49160', 'LONGUE JUMELLES', '', '', '', '18/01/1985', '01/10/2011', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(323, '', 2, 'PAYMAL', 'SOPHIE', '', 'CHEMIN DE VAUX, LE PRE', '49140', 'LUE EN BAUGEOIS', '', '', '', '14/02/1970', '01/11/2000', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(324, '', 2, 'PERDRIAU', 'VALERIE', '11', 'RUE DES PETITES BEAUSSES', '49630', 'MAZE', '', '', '', '10/07/1971', '05/06/1990', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(325, '', 1, 'PERDRIX', 'LAWRENCE', '1', 'SQUARE DU BREUIL', '49150', 'ECHEMIRE', '', '', '', '26/02/1966', '18/09/2006', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(326, '', 1, 'PERPOIL', 'JEAN MARIE', '8', 'RUE DES ROSES', '49140', 'BAUNE', '', '', '', '14/09/1956', '01/07/1974', '', '1', 'MAGASIN', '', '', 'C.D.I.', 1, '999999999999'),
(327, '', 1, 'PICOULEAU', 'STEPHANE', '63', 'NOTRE DAME DU LAC', '49000', 'ANGERS', '', '', '', '08/11/1971', '01/04/2003', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(328, '', 1, 'PINSON', 'PHILIPPE', '', 'LA FOURCELLE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '13/12/1963', '01/11/2011', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(329, '', 1, 'PIOTET', 'GERALD', '', 'RUE DE LA FONTAINE', '49140', 'FONTAINE MILON', '', '', '', '09/09/1969', '01/11/2000', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(330, '', 1, 'PITON', 'BRUNO', '', 'RUE DAVID D ANGERS', '49140', 'FONTAINE MILON', '', '', '', '13/12/1974', '02/05/1996', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(331, '', 2, 'PIVERT', 'MARTINE', '35', 'CHEMIN DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '29/04/1959', '01/08/1978', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.I.', 1, '999999999999'),
(332, '', 1, 'PLACAIS', 'ARNAUD', '98', 'RUE DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '17/11/1981', '28/06/2010', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(333, '', 1, 'PLECIS', 'JOEL', '54', 'RUE DU MARECH. LECLERC', '49250', 'BEAUFORT EN VALLEE', '', '', '', '04/05/1954', '03/02/1978', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(334, '', 1, 'POCHARD', 'STEPHANE', '16', 'RUE GRAND MAISON', '49800', 'BRAIN SUR L AUTHION', '', '', '', '24/09/1961', '01/08/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(335, '', 1, 'POIRIER', 'STEPHANE', '29', 'ROUTE DU CH?TEAU, LE CLOS', '49630', 'MAZE', '', '', '', '20/12/1971', '11/12/2000', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(336, '', 1, 'POMMIER', 'XAVIER', '10', 'RUE DE L EGLISE', '49150', 'LE VIEIL BAUGE', '', '', '', '27/01/1980', '01/07/2011', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999');
INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`, `solde_salarie`) VALUES
(337, '', 1, 'PONS', 'FABIEN', '8', 'RUE EDOUARD BRANLY', '49800', 'TRELAZE', '', '', '', '01/08/1982', '01/10/2013', '', '1', 'TECHNIQUE', '', '', 'C.D.I.', 1, '999999999999'),
(338, '', 2, 'POULALION', 'MARIE ODILE', '44', 'RTE DE BAUNE', '49630', 'CORNE', '', '', '', '03/10/1961', '16/05/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(339, '', 1, 'POUPIN', 'MICHEL', '5', 'RUE DES RICHAUDETS', '49150', 'CHEVIRE LE ROUGE', '', '', '', '01/07/1960', '28/06/1976', '', '1', '1ER ENCADR. AFFINAGE', '', '', 'C.D.I.', 1, '999999999999'),
(340, '', 2, 'PROTIN', 'HELENE', '256', 'RUE LOUIS BLANC', '49100', 'ANGERS', '', '', '', '13/07/1979', '21/10/2002', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(341, '', 1, 'QUETTIER', 'NATHANAEL', '3', 'BOULEVARD YVONNE POIREL', '49000', 'ANGERS', '', '', '', '20/10/1988', '27/08/2011', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(342, '', 1, 'RABEL', 'ALAIN', '1', 'CLOS DE L EPINE L OREE DU BOIS', '49140', 'CORNILLE LES CAVES', '', '', '', '26/02/1956', '05/12/1999', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(343, '', 2, 'RABOUIN', 'CECILE', '10', 'CHEM DE LA BATAILLE', '49150', 'LE VIEIL BAUGE', '', '', '', '05/02/1972', '14/04/2003', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(344, '', 1, 'RAIMBAULT', 'YVES', '1', 'PL POL LE TELLIER', '49250', 'BEAUFORT EN VALLEE', '', '', '', '28/10/1969', '12/06/2000', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(345, '', 2, 'RAOUI', 'BOUCHRA', '76', 'RUE DES ARTILLEURS', '49100', 'ANGERS', '', '', '', '01/06/1979', '01/09/2012', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(346, '', 2, 'RAPICAULT', 'JOCELYNE', '54', 'RTE DE BAUNE', '49630', 'CORNE', '', '', '', '07/09/1962', '04/07/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(347, '', 2, 'RATEAU', 'MATHILDE', '12', 'RUE GASTON JOGUET', '49150', 'CHEVIRE LE ROUGE', '', '', '', '08/03/1988', '14/06/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(348, '', 1, 'RATEAU', 'DOMINIQUE', '8', 'RUE DES VENDELLIERES', '49250', 'LA MENITRE', '', '', '', '15/07/1957', '01/10/1978', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '999999999999'),
(349, '', 2, 'REDCENT', 'WENDY', '', 'L HERMENOTIERE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '09/07/1981', '01/10/2001', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(350, '', 1, 'REINE', 'JEAN PIERRE', '55', 'ROUTE DE SEICHES', '49630', 'MAZE', '', '', '', '21/07/1960', '01/06/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(351, '', 2, 'RENAULT', 'ISABELLE', '14', 'RUE RENE GAUDICHEAU', '49700', 'DOUE LA FONTAINE', '', '', '', '03/10/1972', '02/10/2006', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(352, '', 1, 'REPUSSARD', 'ALAIN', '64', 'RUE GEORGES CLEMENCEAU', '49150', 'BAUGE', '', '', '', '02/04/1955', '21/06/2004', '', '1', 'FAB D2', '', '', 'C.D.I.', 1, '999999999999'),
(353, '', 2, 'REZARD', 'AMELIE', '75', 'RUE DE PRE PIGEON', '49000', 'ANGERS', '', '', '', '24/11/1981', '03/07/2006', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(354, '', 1, 'RICHARD', 'JULIEN', '1', 'ROUTE DU MILIEU', '49630', 'MAZE', '', '', '', '15/01/1989', '06/09/2010', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(355, '', 1, 'RIVIERE', 'STEPHANIE', '', 'CHEMIN DU RANCAN', '49150', 'BAUGE', '', '', '', '13/12/1987', '01/03/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(356, '', 1, 'ROCHE', 'CHRISTOPHE', '8', 'RUE DES NOISETIERS', '49140', 'BAUNE', '', '', '', '06/07/1968', '26/06/1989', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(357, '', 1, 'ROCHER', 'YANNICK', '56', 'RUE DE MILNGAVIE', '49150', 'BAUGE', '', '', '', '04/01/1959', '01/02/2005', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(358, '', 2, 'RODRIGUES', 'FERNANDO', '3', 'RUE GUSTAVE FLAUBERT', '49100', 'ANGERS', '', '', '', '06/07/1972', '05/01/2009', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(359, '', 1, 'RONCIER', 'PATRICE', '1', 'LOTISSEMENT DU ROCHER', '49140', 'CHAUMONT D ANJOU', '', '', '', '29/05/1968', '02/10/2000', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(360, '', 2, 'ROUE', 'SOPHIE', '', 'LES BARBELLIERES', '49140', 'JARZE', '', '', '', '05/11/1989', '08/11/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(361, '', 1, 'ROUILLARD', 'THIERRY', '4', 'RTE DEPARTEMENTALE 347', '49630', 'CORNE', '', '', '', '01/05/1961', '05/10/1981', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(362, '', 2, 'ROUSSEAU', 'EMILIE', '7', 'CHEMIN DE MONTEURAULT', '49630', 'MAZE', '', '', '', '19/02/1982', '01/03/2008', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(363, '', 1, 'ROUSSEL', 'REGIS', '6', 'RUE DE BRETIGNE, LOT DES HAUTS DE BRETIGNE', '49140', 'VILLEVEQUE', '', '', '', '20/12/1973', '01/10/2013', '', '1', 'TECHNIQUE', '', '', 'C.D.I.', 1, '999999999999'),
(364, '', 1, 'ROZAT', 'ERIC', '13', 'RUE DU PETIT PARIS', '49630', 'MAZE', '', '', '', '09/10/1961', '13/01/2003', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(365, '', 1, 'SALMON', 'CHRISTOPHE', '180', 'BIS RUE PRINCIPALE', '49630', 'MAZE', '', '', '', '16/06/1970', '05/08/1991', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(366, '', 1, 'SCHILLINGER', 'FREDERIC', '1', 'RUE DES MARRONNIERS', '49290', 'CHAUDEFONDS SUR LAYON', '', '', '', '04/04/1967', '03/06/2013', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(367, '', 1, 'SEBILLE', 'GAETAN', '4', 'RUE DE CHANDELAIS', '49150', 'BOCE', '', '', '', '07/10/1970', '16/06/1994', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '999999999999'),
(368, '', 1, 'SENO', 'JEAN PIERRE', '', 'LA HOUSSIERE', '49390', 'MOULIHERNE', '', '', '', '28/05/1960', '01/11/2000', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(369, '', 1, 'SOURDEAU', 'GILLES', '', 'L OUCHE AU BLE', '49150', 'ST MARTIN D ARCE', '', '', '', '04/06/1964', '02/05/1996', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(370, '', 1, 'TALASZKA', 'ANTOINE', '7', 'RUE DES VOLONTAIRES', '49130', 'LES PONTS DE CE', '', '', '', '29/11/1995', '22/09/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.D. (Formation)', 1, '999999999999'),
(371, '', 1, 'THEVENET', 'CHRISTOPHE', '33', 'RUE DES CHARMES', '49800', 'BRAIN SUR L AUTHION', '', '', '', '28/07/1966', '02/10/1989', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(372, '', 2, 'THIBAULT', 'RACHEL', '10', 'RUE PIERRE BROSSOLETTE', '49000', 'ANGERS', '', '', '', '19/02/1991', '01/08/2014', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.D.', 1, '999999999999'),
(373, '', 1, 'THIBAULT', 'DIDIER', '2', 'RUE DES LOGES', '49310', 'TANCOIGNE', '', '', '', '05/12/1971', '07/02/2011', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(374, '', 2, 'THIBERGE', 'MARIE CLAUDE', '16', 'RUE DES HAUTS CHAMPS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '28/08/1964', '01/10/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(375, '', 2, 'THOMAS', 'NELLY', '40', 'RUE DE LA CROIX BOIS', '49800', 'BRAIN SUR L AUTHION', '', '', '', '14/06/1967', '08/03/1994', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(376, '', 1, 'THOMAS', 'EMMANUEL', '40', 'RUE DE LA CROIX DE BOIS', '49800', 'BRAIN SUR L AUTHION', '', '', '', '25/02/1971', '10/12/1990', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(377, '', 1, 'THOMPSON', 'OTHON', '87', 'BAT E RUE DE BANCHAIS', '49100', 'ANGERS', '', '', '', '10/11/1973', '01/10/2005', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(378, '', 2, 'THUAL', 'LUCIE', '46', 'RUE JEAN BAPTISTE FOURCAUL', '49800', 'TRELAZE', '', '', '', '20/05/1989', '21/01/2014', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(379, '', 1, 'TIRLET', 'CHRISTOPHER', '', 'LE VERDELET', '49390', 'MOULIHERNE', '', '', '', '21/07/1987', '01/04/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(380, '', 1, 'TRANCHANT', 'DOMINIQUE', '', 'CHEMIN DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '03/11/1963', '17/09/1981', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(381, '', 1, 'TRANCHANT', 'ERIC', '5', 'SQUARE HENRI BECQUEREL', '49800', 'TRELAZE', '', '', '', '19/05/1967', '01/06/1990', '', '1', 'FAB D2', '', '', 'C.D.I.', 1, '999999999999'),
(382, '', 2, 'TROST', 'NADIA', '11', 'ROUTE D''ANGERS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '25/12/1983', '01/10/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(383, '', 1, 'TROST', 'STEVEN', '191', 'RUE ELISEE RECLUS', '49800', 'TRELAZE', '', '', '', '28/10/1987', '16/08/2010', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(384, '', 1, 'TROST', 'ANTHONY', '191', 'RUE ELISEE RECLUS', '49800', 'TRELAZE', '', '', '', '16/01/1968', '01/06/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(385, '', 2, 'TURPIN', 'CHRISTINE', '21', 'ROUTE DE LA ROCHE', '49630', 'MAZE', '', '', '', '01/08/1960', '02/03/1977', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(386, '', 1, 'VATTAT', 'CHRISTOPHE', '6', 'RUE SAINT PIERRE', '49140', 'VILLEVEQUE', '', '', '', '27/04/1967', '22/04/1991', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(387, '', 1, 'VENERIA', 'JEAN MICHEL', '36', 'RTE DE LA ROCHE', '49630', 'MAZE', '', '', '', '22/01/1972', '01/01/1998', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(388, '', 2, 'VERBELEN', 'NATHALIE', '', 'POUILLE', '49630', 'MAZE', '', '', '', '26/08/1972', '04/11/1996', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(389, '', 1, 'VERGER', 'BRUNO', '22', 'ALLEE JACQUES BREL', '72800', 'LE LUDE', '', '', '', '14/01/1969', '01/12/2013', '', '1', 'MAGASIN', '', '', 'C.D.I.', 1, '999999999999'),
(390, '', 1, 'VERGNAUD', 'PHILIPPE', '12', 'SQUARE DE PROVENCE', '49140', 'SEICHES SUR LE LOIR', '', '', '', '16/10/1972', '01/02/2011', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(391, '', 1, 'VINCENT', 'LAURENT', '9', 'ROUTE DE LA COUTURE', '49630', 'MAZE', '', '', '', '04/04/1968', '18/08/2003', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(392, '', 1, 'VINCENT', 'THIERRY', '1', 'CLOS DE LA PERCHARDIERE', '49320', 'BLAISON GOHIER', '', '', '', '29/03/1961', '21/05/2001', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(393, '', 1, 'VINEAU', 'OLIVIER', '17', 'RUE HECTOR BERLIOZ', '49124', 'LE PLESSIS GRAMMOIRE', '', '', '', '28/10/1973', '02/05/1996', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(394, '', 1, 'VOLUETTE', 'GILLES', '', 'LES BROSSAIS', '49150', 'ECHEMIRE', '', '', '', '13/06/1974', '04/02/1997', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(395, '', 1, 'VOLUETTE', 'JOEL', '11', 'RUE DES LANGOTTIERES', '49150', 'CHEVIRE LE ROUGE', '', '', '', '25/02/1965', '16/07/1981', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(396, '', 1, 'Komara', 'Abdoulay', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '9999999999999999');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=247 ;

--
-- Contenu de la table `solde_caisse`
--

INSERT INTO `solde_caisse` (`idsoldecaisse`, `date_mouvement`, `num_mouvement`, `type_mouvement`, `type_solde`, `libelle_mouvement`, `debit`, `credit`, `point_caisse`) VALUES
(33, '20-03-2015', '5918847', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bigot P.', '', '10', 0),
(34, '20-03-2015', '7278163', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Mahot.', '', '30', 0),
(35, '20-03-2015', '6752344', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Jousset J.', '', '25', 0),
(36, '20-03-2015', '6740144', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de berthonnneau.', '', '30', 0),
(38, '20-03-2015', '5405595', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Jouin B.', '', '20', 0),
(39, '20-03-2015', '5957233', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Mauxion A.', '', '20', 0),
(40, '20-03-2015', '2903246', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Angeard M.', '', '20', 0),
(41, '20-03-2015', '0830849', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '30', 0),
(42, '20-03-2015', '6605119', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Turpin.', '', '20', 0),
(43, '20-03-2015', '4458026', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Barelli m.', '', '20', 0),
(44, '20-03-2015', '0000134', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bardonneau.', '', '10', 0),
(45, '20-03-2015', '4518040', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de babalonne.', '', '10', 0),
(46, '20-03-2015', '9818450', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Poupin.', '', '30', 0),
(47, '20-03-2015', '4518040', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de babalonne.', '', '20', 0),
(48, '20-03-2015', '1124001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Morin.', '', '10', 0),
(49, '20-03-2015', '2657322', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '10', 0),
(50, '20-03-2015', '5511207', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DailliÃ¨re.', '', '10', 0),
(51, '20-03-2015', '75829074', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Miloudi.', '', '20', 0),
(52, '20-03-2015', '50918071', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Avril.', '', '25', 0),
(53, '20-03-2015', '0003037', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Ditacroute S.', '', '15', 0),
(54, '20-03-2015', '0000581', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Poirier.', '', '30', 0),
(55, '20-03-2015', '7550082', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Blum.', '', '20', 0),
(56, '20-03-2015', '5511209', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DailliÃ¨re.', '', '20', 0),
(57, '20-03-2015', '5621769', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Lessiau.', '', '20', 0),
(58, '20-03-2015', '9383513', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bodin D.', '', '20', 0),
(59, '20-03-2015', '5399212', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rabouin.', '', '10', 0),
(60, '20-03-2015', '5399212', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rabouin.', '', '30', 0),
(61, '20-03-2015', '5004909', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Brichet.', '', '20', 0),
(62, '20-03-2015', '4483076', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bodin E.', '', '20', 0),
(63, '20-03-2015', '4645022', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Dalmolhin.', '', '20', 0),
(64, '20-03-2015', '0003021', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Ditacroute S.', '', '20', 0),
(65, '20-03-2015', '9619573', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Boucard.', '', '5', 0),
(66, '20-03-2015', '9619573', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Boucard.', '', '20', 0),
(67, '20-03-2015', '0000183', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Picouleau.', '', '15', 0),
(68, '20-03-2015', '0000386', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de trost.', '', '20', 0),
(69, '20-03-2015', '4948107', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DublÃ©.', '', '15', 0),
(70, '20-03-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Papin.', '', '10', 0),
(71, '20-03-2015', '7213033', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '20', 0),
(72, '20-03-2015', '3163473', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BruÃ¨re.', '', '25', 0),
(73, '20-03-2015', '6991054', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Martin.', '', '20', 0),
(74, '28-03-2015', '4358267', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rapicault J.', '', '10', 0),
(75, '28-03-2015', '0000163', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Chaussepied.', '', '20', 0),
(76, '28-03-2015', '5455523', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Hy.', '', '20', 0),
(77, '28-03-2015', '6473278', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Dubois F.', '', '10', 0),
(78, '28-03-2015', '4561019', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rezard.', '', '20', 0),
(79, '28-03-2015', '6958332', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Jousset.', '', '10', 0),
(80, '28-03-2015', '6683003', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Leboucher S.', '', '15', 0),
(81, '28-03-2015', '2903250', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Angerad M.', '', '20', 0),
(82, '28-03-2015', '3807544', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Lassay.', '', '20', 0),
(83, '28-03-2015', '4358267', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rapicault J.', '', '10', 0),
(84, '28-03-2015', '6440452', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Paymal.', '', '20', 0),
(85, '28-03-2015', '5511212', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DaillÃ¨re.', '', '20', 0),
(86, '28-03-2015', '0000212', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Cornut.', '', '20', 0),
(87, '28-03-2015', '6026433', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Laigle.', '', '20', 0),
(88, '28-03-2015', '7109836', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '20', 0),
(89, '28-03-2015', '8681549', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Duperray V.', '', '20', 0),
(90, '28-03-2015', '01211515', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '10', 0),
(91, '28-03-2015', '6682997', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Leboucher S.', '', '40', 0),
(92, '28-03-2015', '2667204', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Cauchard.', '', '20', 0),
(93, '28-03-2015', '4436905', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Vincent L.', '', '10', 0),
(94, '28-03-2015', '8982503', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Goujon C.', '', '15', 0),
(95, '28-03-2015', '0000183', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bru.', '', '5', 0),
(96, '28-03-2015', '7596308', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Blot.', '', '20', 0),
(97, '02-04-2015', '6623013', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de duveau St.', '', '20', 0),
(98, '02-04-2015', '0001091', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de cros f.', '', '10', 0),
(99, '02-04-2015', '1896041', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rodriguez.', '', '15', 0),
(100, '02-04-2015', '1667414', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de tirlet.', '', '10', 0),
(101, '02-04-2015', '9660042', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bruneau.', '', '5', 0),
(102, '02-04-2015', '6807071', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Jarry.', '', '10', 0),
(103, '02-04-2015', '1727727', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Miloudi.', '', '20', 0),
(104, '02-04-2015', '0000183', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bru A.', '', '5', 0),
(105, '02-04-2015', '0000277', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Marchand s.', '', '15', 0),
(106, '02-04-2015', '5004919', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Brichet.', '', '20', 0),
(107, '02-04-2015', '8883393', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Beaudet.', '', '30', 0),
(108, '02-04-2015', '6814811', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Guiho.', '', '10', 0),
(109, '02-04-2015', '4198322', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Komara.', '', '10', 0),
(110, '02-04-2015', '9339202', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Delaunay P.', '', '30', 0),
(111, '02-04-2015', '7345659', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Burillon.', '', '50', 0),
(112, '02-04-2015', '9947757', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de bertho C.', '', '15', 0),
(113, '02-04-2015', '0899310', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RiviÃ¨re.', '', '20', 0),
(114, '02-04-2015', '9957001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Mauxion A.', '', '20', 0),
(115, '02-04-2015', '7036344', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Godard G.', '', '10', 0),
(116, '02-04-2015', '2541685', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jobin o.', '', '20', 0),
(117, '02-04-2015', '9947758', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de bertho C.', '', '5', 0),
(118, '02-04-2015', '4666019', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de thiberge.', '', '20', 0),
(119, '02-04-2015', '6740147', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Berthonneau.', '', '30', 0),
(120, '02-04-2015', '1913423', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de declÃ©.', '', '20', 0),
(121, '02-04-2015', '5455525', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de hy.', '', '10', 0),
(122, '02-04-2015', '6623013', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de duveau St.', '', '15', 0),
(123, '02-04-2015', '6267268', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jaziri.', '', '35', 0),
(124, '02-04-2015', '4198322', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de bangouri.', '', '10', 0),
(125, '02-04-2015', '6821241', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de paviot m.', '', '25', 0),
(126, '02-04-2015', '0000549', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de besnard g.', '', '25', 0),
(128, '02-04-2015', '5162242', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de gaignard m.', '', '20', 0),
(129, '02-04-2015', '0000153', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de hermiteau s.', '', '20', 0),
(130, '02-04-2015', '1124002', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Morin.', '', '20', 0),
(131, '02-04-2015', '1365866', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de vergnaud.', '', '10', 0),
(132, '02-04-2015', '0000235', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de cadas.', '', '20', 0),
(133, '02-04-2015', '5465945', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de josselin.', '', '25', 0),
(134, '02-04-2015', '4483088', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bodin E.', '', '25', 0),
(135, '02-04-2015', '3400334', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de duveau m.', '', '10', 0),
(136, '02-04-2015', '0203896', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de colombeau.', '', '10', 0),
(137, '02-04-2015', '9203076', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de dohin.', '', '20', 0),
(138, '02-04-2015', '4791110', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de khoumsi.', '', '20', 0),
(139, '02-04-2015', '4173986', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de gilbert.', '', '30', 0),
(140, '02-04-2015', '4666020', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de thiberge.', '', '5', 0),
(141, '02-04-2015', '0388529', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de thomas.', '', '20', 0),
(142, '02-04-2015', '7505063', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de chatard.', '', '20', 0),
(143, '02-04-2015', '0000187', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bardonneau.', '', '10', 0),
(144, '02-04-2015', '0000187', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bru A.', '', '5', 0),
(145, '02-04-2015', '4561023', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de rezard.', '', '20', 0),
(146, '02-04-2015', '86477', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de bidet.', '', '10', 0),
(147, '02-04-2015', '0000530', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de leconte jl.', '', '10', 0),
(148, '02-04-2015', '4593720', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de doineau.', '', '30', 0),
(149, '02-04-2015', '00064288065', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de thompson.', '', '10', 0),
(150, '02-04-2015', '00003052', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Ditacroute S.', '', '10', 0),
(151, '02-04-2015', '8982508', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de goujon c.', '', '20', 0),
(153, '02-04-2015', '6007940', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de voluette g.', '', '25', 0),
(154, '02-04-2015', '2541690', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jobin o.', '', '15', 0),
(155, '02-04-2015', '1699272', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de angelo e.', '', '10', 0),
(156, '02-04-2015', '5511211', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DailliÃ¨re.', '', '20', 0),
(157, '02-04-2015', '5636372', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de roche.', '', '25', 0),
(158, '02-04-2015', '668311', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de leboucher s.', '', '15', 0),
(159, '02-04-2015', '2541691', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jobin o.', '', '10', 0),
(160, '02-04-2015', '6958359', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Jousset J.', '', '10', 0),
(161, '02-04-2015', '0000189', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bru A.', '', '15', 0),
(162, '10-04-2015', '6683012', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Chevaleyre.', '', '10', 0),
(163, '10-04-2015', '0001085', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Debelly.', '', '10', 0),
(164, '10-04-2015', '6758194', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rocher Y.', '', '25', 0),
(165, '10-04-2015', '7305101', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Pons.', '', '10', 0),
(166, '10-04-2015', '484376', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de piotet.', '', '15', 0),
(167, '10-04-2015', '0342849', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Fosse.', '', '20', 0),
(168, '10-04-2015', '3807545', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de lassay.', '', '30', 0),
(169, '10-04-2015', '0000099', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de browaeys.', '', '10', 0),
(170, '10-04-2015', '6267278', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jaziri.', '', '40', 0),
(171, '10-04-2015', '6267278', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jaziri.', '', '10', 0),
(172, '10-04-2015', '4983839', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de charrier.', '', '10', 0),
(173, '10-04-2015', '0001034', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de lepetitcorps.', '', '10', 0),
(174, '10-04-2015', '1699266', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de angelo.', '', '20', 0),
(175, '10-04-2015', '0102504', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de rateau.', '', '20', 0),
(176, '10-04-2015', '5189083', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de papin.', '', '10', 0),
(177, '10-04-2015', '5399212', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de rabouin.', '', '30', 0),
(178, '10-04-2015', '6063663', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de joly.', '', '10', 0),
(179, '10-04-2015', '0001075', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Debelly.', '', '10', 0),
(180, '10-04-2015', '3247982', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ecomard.', '', '10', 0),
(181, '10-04-2015', '6682995', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de masse.', '', '15', 0),
(182, '10-04-2015', '000016', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de seno.', '', '10', 0),
(183, '10-04-2015', '7109836', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de foin.', '', '20', 0),
(184, '10-04-2015', '0001081', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de debelly.', '', '20', 0),
(185, '10-04-2015', '0000033', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de seno.', '', '15', 0),
(186, '10-04-2015', '6026433', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de laigle.', '', '12', 0),
(187, '10-04-2015', '9847086', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de mercier.', '', '30', 0),
(188, '10-04-2015', '6683004', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de masse s.', '', '6', 0),
(191, '28-04-2015', '6796548', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rozat E.', '', '20', 0),
(192, '28-04-2015', '9181144', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Lopez r.', '', '10', 0),
(193, '28-04-2015', '5497922', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Duriez.', '', '10', 0),
(194, '28-04-2015', '7596325', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Blot.', '', '15', 0),
(195, '28-04-2015', '4948121', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DublÃ©.', '', '15', 0),
(198, '28-04-2015', '7036355', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Godard G.', '', '104', 0),
(199, '28-04-2015', '1124003', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Morin.', '', '92', 0),
(203, '28-04-2015', '4600295', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Fosse W.', '', '64.5', 0),
(204, '28-04-2015', '555944', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de FÃ©vrier D.', '', '50.5', 0),
(206, '28-04-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de davis.', '', '160', 0),
(207, '28-04-2015', '6888357', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rozat E.', '', '88', 0),
(208, '28-04-2015', '68477943', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Brazille M.', '', '104', 0),
(209, '28-04-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rozat E.', '', '120', 0),
(210, '28-04-2015', '2676700', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bodin E.', '', '150', 0),
(211, '28-04-2015', '000001900', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de chevaleyre.', '', '50.5', 0),
(212, '28-04-2015', '0001091', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de cros f.', '', '73', 0),
(214, '28-04-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '0', 0),
(215, '28-04-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '0', 0),
(216, '28-04-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '0', 0),
(217, '28-04-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '0', 0),
(218, '28-04-2015', '5883049', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de hamonnier.', '', '30', 0),
(219, '28-04-2015', '0000037', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Breton .', '', '25', 0),
(220, '28-04-2015', '6473299', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Dubois.', '', '20', 0),
(221, '28-04-2015', '4645024', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Dalmolhin.', '', '20', 0),
(223, '28-04-2015', '7944980', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de besnard s.', '', '20', 0),
(224, '28-04-2015', '8421719', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Josselin.', '', '15', 0),
(225, '28-04-2015', '8421719', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de josselin.', '', '20', 0),
(226, '28-04-2015', '2551891', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Thibault R.', '', '20', 0),
(227, '28-04-2015', '5967631', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de lecalvez.', '', '20', 0),
(228, '11-02-2015', '3123829', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123829 en date du 11-02-2015.', '135', '', 1),
(229, '11-02-2015', '3123830', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123830 en date du 11-02-2015.', '115', '', 1),
(230, '28-02-2015', '3123831', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123831 en date du 28-02-2015.', '140', '', 1),
(231, '28-04-2015', '3048928', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de honorÃ©.', '', '88.62', 0),
(232, '28-04-2015', '0001280', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de juret.', '', '37.47', 0),
(233, '31-03-2015', '3123841', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123841 en date du 31-03-2015.', '206.09', '', 1),
(234, '28-04-2015', '5004903', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Brichet.', '', '105.9', 0),
(235, '31-03-2015', '3123842', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123842 en date du 31-03-2015.', '325.9', '', 1),
(236, '28-04-2015', '6175893', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de petiteau.', '', '49.72', 0),
(237, '31-03-2015', '3123843', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123843 en date du 31-03-2015.', '273.72', '', 1),
(238, '28-04-2015', '9203068', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de dohin.', '', '40', 0),
(239, '28-04-2015', '5483485', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Flao.', '', '60', 0),
(240, '31-03-2015', '3128844', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3128844 en date du 31-03-2015.', '212', '', 1),
(241, '31-03-2015', '3123846', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123846 en date du 31-03-2015.', '129', '', 1),
(242, '28-04-2015', '31238347', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 31238347 en date du 28-04-2015.', '175.5', '', 1),
(243, '28-04-2015', '31238348', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 31238348 en date du 28-04-2015.', '164.5', '', 1),
(244, '28-04-2015', '31238349', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 31238349 en date du 28-04-2015.', '203.5', '', 1),
(245, '28-04-2015', '5673697', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DailliÃ¨re.', '', '84', 0),
(246, '28-04-2015', '3123850', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123850 en date du 28-04-2015.', '229', '', 1);

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=499;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=359;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=255;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=359;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=270;
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
MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=397;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=247;--
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Contenu de la table `ayant_droit`
--

INSERT INTO `ayant_droit` (`idayantdroit`, `idsalarie`, `nom_ayant_droit`, `prenom_ayant_droit`, `date_naissance_ayant_droit`, `solde_ayant_droit`) VALUES
(80, 69, 'THOMAS', 'JEROME', '01-05-1999', '100');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Contenu de la table `bilan`
--

INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(47, 2, 'Vente de la prestation: LE UN pour THOMAS DOMINIQUE.', '', '15', ''),
(48, 2, 'Vente de la prestation: LE DEUX pour THOMAS JEROME.', '', '5.6', ''),
(49, 2, 'Vente de la prestation: LE DEUX pour PAUL KEVIN.', '', '7', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `billet_ayant_droit`
--

INSERT INTO `billet_ayant_droit` (`idbilletayantdroit`, `idayantdroit`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_facture`) VALUES
(4, 80, '12-03-2015', 3, '5.6', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`) VALUES
(22, 69, '04-03-2015', 3, '15', 1),
(23, 70, '13-05-2015', 3, '7', 1);

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
(80, 1, '', ''),
(81, 2, '', ''),
(82, 3, '12966.43', '1000'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '', ''),
(87, 8, '8178.62', ''),
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
(107, 28, '6000', '22145.05'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', ''),
(113, 34, '', ''),
(114, 35, '', ''),
(115, 36, '', '5000'),
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
(129, 50, '1000', '0'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(4, '1388530800', 'TEST1', 3, '', '1000'),
(5, '1401573600', 'TEST2', 3, '5000', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `compta_bilan_actif`
--

INSERT INTO `compta_bilan_actif` (`idcptbilanactif`, `idcomptaplan`, `montant`) VALUES
(3, 3, '7966.43'),
(4, 8, '8178.62');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_passif` (
`idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `compta_bilan_passif`
--

INSERT INTO `compta_bilan_passif` (`idcptbilanpassif`, `idcomptaplan`, `montant`) VALUES
(2, 28, '16145.05');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `idcomptaplan`, `debit`, `credit`) VALUES
(102, 3, '7966.43', ''),
(103, 8, '8178.62', ''),
(104, 28, '', '16145.05'),
(106, 3, '', '1000'),
(107, 50, '1000', ''),
(108, 36, '', '5000'),
(109, 3, '5000', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `compta_mvm`
--

INSERT INTO `compta_mvm` (`idcomptamvm`, `date_mvm`, `desc_mvm`, `idcomptaplan`, `debit`, `credit`) VALUES
(5, '1388530800', 'TEST1', 50, '1000', ''),
(6, '1398895200', 'TEST2', 36, '', '5000');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `idcomptaplan`, `debit`, `credit`) VALUES
(5, 50, '1000', ''),
(6, 36, '', '5000');

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
(1, 'COMITE DEMO ULTIMATE', '0.50', '0.20', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '01-01-2014', '31-12-2015');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Contenu de la table `cpt_resultat`
--

INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(47, '', '1425423600', 'Vente de la prestation: LE UN pour THOMAS DOMINIQUE.', '', '15'),
(48, '', '1426114800', 'Vente de la prestation: LE DEUX pour THOMAS JEROME.', '', '5.6'),
(49, '', '1431468000', 'Vente de la prestation: LE DEUX pour PAUL KEVIN.', '', '7');

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
(44, 'CINEMA');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `ligne_billet_ayant_droit`
--

INSERT INTO `ligne_billet_ayant_droit` (`idlignebilletayantdroit`, `idbilletayantdroit`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(4, 4, 63, '1', '5.6', '1.4', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(21, 22, 62, '1', '15', '0', 1),
(22, 23, 63, '2', '7', '7', 0);

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
(5, '1.2.3', '15315-ULTI');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`) VALUES
(62, 44, 'LE UN', '01-01-2015', '31-12-2015', '10', '5', '15', '100', '980', 0),
(63, 44, 'LE DEUX', '01-01-2015', '31-12-2015', '5', '2', '7', '100', '997', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `reg_billet_ayant_droit`
--

INSERT INTO `reg_billet_ayant_droit` (`idregbilletayantdroit`, `idbilletayantdroit`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(8, 4, 3, '5.6', '', 'THOMAS', '831539756', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(19, 22, 3, '15', '', 'THOMAS', '277850450', 0),
(20, 23, 3, '7', '', 'PAUL', '192538744', 0);

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_remb_ayant_droit` (
`idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

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

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE IF NOT EXISTS `remise_banque_esp` (
`idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
(69, '001', 1, 'THOMAS', 'DOMINIQUE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '100'),
(70, '', 1, 'PAUL', 'KEVIN', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '243');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Contenu de la table `solde_caisse`
--

INSERT INTO `solde_caisse` (`idsoldecaisse`, `date_mouvement`, `num_mouvement`, `type_mouvement`, `type_solde`, `libelle_mouvement`, `debit`, `credit`, `point_caisse`) VALUES
(34, '04-03-2015', '277850450', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par THOMAS.', '', '15', 0),
(35, '12-03-2015', '831539756', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ces par THOMAS.', '', '5.6', 0),
(36, '13-05-2015', '192538744', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PAUL.', '', '7', 0);

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
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
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
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
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;--
-- Base de données :  `fct`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
(82, 3, '15820.14', '10329.37'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '', ''),
(87, 8, '13135.54', '10000'),
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
(107, 28, '26268.21', '39285.05'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', ''),
(113, 34, '', ''),
(114, 35, '', '4731'),
(115, 36, '', ''),
(116, 37, '', '118.7'),
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
(127, 48, '2690', ''),
(128, 49, '', ''),
(129, 50, '73.32', ''),
(130, 51, '', ''),
(131, 52, '', ''),
(132, 53, '964.64', ''),
(133, 54, '', ''),
(134, 55, '3644.5', '0'),
(135, 56, '', ''),
(136, 57, '164.62', ''),
(137, 58, '', ''),
(138, 59, '8.1', ''),
(139, 60, '961.01', '0'),
(140, 61, '1823.18', '1089.14'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=120 ;

--
-- Contenu de la table `compta_banque`
--

INSERT INTO `compta_banque` (`idcomptabanque`, `date_bq`, `desc_bq`, `idcomptaplan`, `debit`, `credit`) VALUES
(79, '1411077600', 'SUBVENTION HALIEUTIS', 3, '3154', ''),
(80, '1412287200', 'DOMIWEB 3324966', 3, '', '2.70'),
(81, '1412546400', 'BUREAU VALLEE CHQ 1175501', 3, '', '682.04'),
(82, '1412546400', 'MR BRICOLAGE CHQ 1175502', 3, '', '58.50'),
(83, '1412632800', 'OUEST RANCE PRLV', 3, '', '25.50'),
(84, '1412719200', 'ORANGE CHQ 1175503', 3, '', '82.02'),
(85, '1412719200', 'LANGLOIS PRLV', 3, '', '28.35'),
(86, '1412719200', 'LANGLOIS PRLV', 3, '', '28.35'),
(87, '1412892000', 'ARTEIS CHQ 1175504', 3, '', '24.85'),
(88, '1413928800', 'ARTEIS DIVERS CHQ 1175509', 3, '', '23.88'),
(89, '1414623600', 'ORIGINAL COM CHQ 1175507', 3, '', '518.40'),
(90, '1414623600', 'CHQ 1175508', 3, '', '102.00'),
(91, '1415142000', 'MAGAZINE LOCAL ABSENCE FACTURE CHQ 1175510', 3, '', '1470.00'),
(93, '1415228400', 'LANGLOIS ALAIN PRL', 3, '', '30.25'),
(94, '1415228400', 'LANGLOIS ALAIN PRL', 3, '', '30.25'),
(95, '1415228400', 'OUEST FRANCE PRLV', 3, '', '26.65'),
(96, '1415314800', 'LA POSTE CHQ 1175511', 3, '', '55.20'),
(97, '1415574000', 'NOCIBE CHQ 1175512', 3, '', '1608.75'),
(98, '1415574000', 'DOMIWEB PRLV', 3, '', '2.70'),
(99, '1415919600', 'HALIEUTIS CHQ 1911001', 3, '1577.00', ''),
(100, '1416956400', 'VIR DOMI CC OEUVRES SOCIALES', 3, '1089.14', ''),
(101, '1417561200', 'DOMI WEB PRLV', 3, '', '2.70'),
(102, '1417561200', 'CASA CHQ 1175515', 3, '', '74.97'),
(103, '1417647600', 'ORANGE CHQ 1175516', 3, '', '41.09'),
(104, '1417647600', 'OUEST FRANCE PRLV', 3, '', '24.55'),
(105, '1417820400', 'CDTGESTION CHQ 1175505', 3, '', '2690.00'),
(106, '1417734000', 'CDTGESTION CHQ 1175506', 3, '', '250.00'),
(107, '1417734000', 'LANGLOIS PRLV', 3, '', '29.50'),
(109, '1417734000', 'LANGLOIS PRLV', 3, '', '29.50'),
(110, '1417993200', 'CHQ 1175514 FACTURE NON FOURNIE', 3, '', '285.92'),
(111, '1417993200', 'CEZAM CHQ 1175517', 3, '', '1671.60'),
(112, '1418684400', 'ORANGE PRLV', 3, '', '41.51'),
(113, '1418770800', 'LA POSTE CHQ 1175518', 3, '', '14.64'),
(114, '1418943600', 'CHQ 1175519 FCTURE NON FOURNIE', 3, '', '53.09'),
(115, '1419202800', 'CHQ 1175525 FACTURE NON FOURNIE', 3, '', '35.0'),
(116, '1419289200', 'LA POSTE CHQ 1175520', 3, '', '3.48'),
(117, '1419548400', 'CHQ 1175513 FACTURE NON FOURNIE', 3, '', '204'),
(118, '1419548400', 'CHQ 1175521 FACTURE NON FOURNIE ', 3, '', '77.43'),
(119, '1411077600', 'VIREMENT LIVRET VERS BANQUE', 3, '10000', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_actif` (
`idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `compta_bilan_actif`
--

INSERT INTO `compta_bilan_actif` (`idcptbilanactif`, `idcomptaplan`, `montant`) VALUES
(19, 8, '13016.84');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE IF NOT EXISTS `compta_bilan_passif` (
`idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `compta_bilan_passif`
--

INSERT INTO `compta_bilan_passif` (`idcptbilanpassif`, `idcomptaplan`, `montant`) VALUES
(8, 28, '13016.84');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE IF NOT EXISTS `compta_compte` (
`idcomptacompte` int(13) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=283 ;

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `idcomptaplan`, `debit`, `credit`) VALUES
(198, 35, '', '3154'),
(199, 59, '2.70', ''),
(201, 53, '58.50', ''),
(202, 55, '25.50', ''),
(206, 60, '682.04', ''),
(209, 57, '82.02', ''),
(211, 55, '28.35', ''),
(212, 55, '28.35', ''),
(215, 53, '24.85', ''),
(216, 53, '23.88', ''),
(219, 53, '518.40', ''),
(221, 61, '102.00', ''),
(223, 55, '1470.00', ''),
(227, 55, '30.25', ''),
(228, 55, '30.25', ''),
(230, 55, '26.65', ''),
(232, 50, '55.20', ''),
(234, 61, '1608.75', ''),
(236, 59, '2.70', ''),
(238, 35, '', '1577'),
(240, 61, '', '1089.14'),
(242, 59, '2.70', ''),
(244, 60, '74.97', ''),
(246, 57, '41.09', ''),
(248, 55, '24.55', ''),
(250, 48, '2690.00', ''),
(252, 55, '250.00', ''),
(254, 55, '29.50', ''),
(255, 55, '29.50', ''),
(259, 53, '285.92', ''),
(260, 55, '1671.60', ''),
(261, 57, '41.51', ''),
(262, 50, '14.64', ''),
(263, 53, '53.09', ''),
(264, 61, '35.00', ''),
(265, 50, '3.48', ''),
(266, 60, '204', ''),
(267, 61, '77.43', ''),
(277, 8, '13016.84', ''),
(278, 28, '', '13016.84'),
(279, 8, '', '10000'),
(280, 3, '10000', ''),
(281, 37, '', '118.70'),
(282, 8, '118.70', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `compta_livret`
--

INSERT INTO `compta_livret` (`idcomptalivret`, `date_livret`, `desc_livret`, `idcomptaplan`, `debit`, `credit`) VALUES
(3, '1411077600', 'VIREMENT VERS BANQUE', 8, '', '10000'),
(4, '1419980400', 'INTERETS SUR LIVRET BLEU', 8, '118.70', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=122 ;

--
-- Contenu de la table `compta_mvm`
--

INSERT INTO `compta_mvm` (`idcomptamvm`, `date_mvm`, `desc_mvm`, `idcomptaplan`, `debit`, `credit`) VALUES
(82, '1411077600', 'SUBVENTION FONCTIONEMENT HALIEUTIS', 35, '', '3154'),
(83, '1412287200', 'DOMIWEB 324966', 59, '2.70', ''),
(85, '1412546400', 'MR BRICOLAGE CHQ 1175502', 53, '58.50', ''),
(86, '1412632800', 'OUEST FRANCE PRLV ', 55, '25.50', ''),
(87, '1412546400', 'BUREAU VALLEE CHQ 1175501', 60, '682.04', ''),
(88, '1412719200', 'ORANGE CHQ 1175503', 57, '82.02', ''),
(89, '1412719200', 'LANGLOIS PRLV', 55, '28.35', ''),
(90, '1412719200', 'LANGLOIS PRLV', 55, '28.35', ''),
(91, '1412892000', 'ARTEIS CHQ 175504', 53, '24.85', ''),
(92, '1413928800', 'ARTEIS DIVERS CHQ 1175509', 53, '23.88', ''),
(93, '1414623600', 'ORIGINAL COM CHQ 1175507', 53, '518.40', ''),
(94, '1414623600', 'CHQ 1175508 PAS DE FACTURE PRODUITE', 61, '102.00', ''),
(95, '1415142000', 'MAGAZINE LOCAL ABSENCE FACTURE CHQ 1175510', 55, '1470.00', ''),
(96, '1415228400', 'LANGLOIS ALAIN PRL', 55, '30.25', ''),
(97, '1415228400', 'LANGLOIS ALAIN PRL', 55, '30.25', ''),
(98, '1415228400', 'OUEST FRANCE PRLV', 55, '26.65', ''),
(99, '1415314800', 'LA POSTE CHQ 1175511', 50, '55.20', ''),
(100, '1415574000', 'NOCIBE CHQ 1175512', 61, '1608.75', ''),
(101, '1415574000', 'DOMIWEB PRLV', 59, '2.70', ''),
(102, '1415919600', 'REM CHQ HALIEUTIS CHQ 62992731911001', 35, '', '1577'),
(103, '1416956400', 'VIR DOMI CC OS ', 61, '', '1089.14'),
(104, '1417561200', 'DOMIWEB PRLV', 59, '2.70', ''),
(105, '1417561200', 'CASA CHQ 1175515', 60, '74.97', ''),
(106, '1417647600', 'ORANGE CHQ 1175516', 57, '41.09', ''),
(107, '1417647600', 'OUEST FRANCE PRLV', 55, '24.55', ''),
(108, '1417734000', 'CDTGESTION CHQ 1175505', 48, '2690.00', ''),
(109, '1417734000', 'CDTGESTION CHQ 1175506', 55, '250.00', ''),
(110, '1417734000', 'LANGLOIS PRLV', 55, '29.50', ''),
(111, '1417734000', 'LANGLOIS PRLV', 55, '29.50', ''),
(112, '1417993200', 'FOURNITURE CHQ 1175514', 53, '285.92', ''),
(113, '1417993200', 'CEZAM CHQ 1175517', 55, '1671.60', ''),
(114, '1418684400', 'ORANGE PRLV ', 57, '41.51', ''),
(115, '1418770800', 'LA POSTE CHQ 1175518', 50, '14.64', ''),
(116, '1418943600', 'CHQ 1175519', 53, '53.09', ''),
(117, '1419202800', 'CHQ 1175525 SANS FACTURE RESTAURANT SUR RELEVE BANQUE', 61, '35.00', ''),
(118, '1419289200', 'LA POSTE CHQ 1175520', 50, '3.48', ''),
(119, '1419548400', 'CHQ 1175513 SANS FACTURE ANNONCE COMME MATERIEL', 60, '204', ''),
(120, '1419548400', 'CHQ 1175521 SANS FCTURE FOURNIE', 61, '77.43', ''),
(121, '1419980400', 'INTERETS COMPTE SUR LIVRET', 37, '', '118.70');

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
(61, 6, 'Autre Charge d''exploitation 1', 'Divers'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=121 ;

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `idcomptaplan`, `debit`, `credit`) VALUES
(81, 35, '', '3154'),
(82, 59, '2.70', ''),
(84, 53, '58.50', ''),
(85, 55, '25.50', ''),
(86, 60, '682.04', ''),
(87, 57, '82.02', ''),
(88, 55, '28.35', ''),
(89, 55, '28.35', ''),
(90, 53, '24.85', ''),
(91, 53, '23.88', ''),
(92, 53, '518.40', ''),
(93, 61, '102.00', ''),
(94, 55, '1470.00', ''),
(95, 55, '30.25', ''),
(96, 55, '30.25', ''),
(97, 55, '26.65', ''),
(98, 50, '55.20', ''),
(99, 61, '1608.75', ''),
(100, 59, '2.70', ''),
(101, 35, '', '1577'),
(102, 61, '', '1089.14'),
(103, 59, '2.70', ''),
(104, 60, '74.97', ''),
(105, 57, '41.09', ''),
(106, 55, '24.55', ''),
(107, 48, '2690.00', ''),
(108, 55, '250.00', ''),
(109, 55, '29.50', ''),
(110, 55, '29.50', ''),
(111, 53, '285.92', ''),
(112, 55, '1671.60', ''),
(113, 57, '41.51', ''),
(114, 50, '14.64', ''),
(115, 53, '53.09', ''),
(116, 61, '35.00', ''),
(117, 50, '3.48', ''),
(118, 60, '204', ''),
(119, 61, '77.43', ''),
(120, 37, '', '118.70');

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
(1, 'COMITE D''ENTREPRISE HALIEUTIS', '0.50', '0.25', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '01-09-2014', '31-12-2014');

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
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=283;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
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
