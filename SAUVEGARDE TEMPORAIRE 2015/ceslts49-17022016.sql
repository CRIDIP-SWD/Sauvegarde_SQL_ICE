-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Mer 17 Février 2016 à 09:38
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ceslts49`
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
(14, 2, 'Ajout du produit fixe: SOLDE BUDGET SOCIAL', '', '30863.17', '1294513564'),
(15, 2, 'Ajout du produit fixe: REMBOURSEMENT PLACES CIN&Eacute;MA DU PERSONNEL ', '', '140', '5830721497'),
(16, 2, 'Ajout du produit fixe: REMBOURSEMENT PLACES KARTING  DU PERSONNEL ', '', '120', '4978088238'),
(17, 2, 'Ajout du produit fixe: REMBOURSEMENT PLACES CIN&Eacute;MA DU PERSONNEL ', '', '291.50', '6227572062'),
(18, 2, 'Ajout du produit fixe: REMBOURSEMENT PLACES KARTING  DU PERSONNEL ', '', '100', '8925039139'),
(19, 2, 'Ajout du produit fixe: REMBOURSEMENT PARFUM DU PERSONNEL', '', '1248', '5985726076'),
(20, 2, 'Ajout du produit fixe: REMISE LIQUIDE CANTINE DU PERSONNEL', '', '80', '3948117416'),
(21, 2, 'Ajout du produit fixe: REMISE CHEQUE  CANTINE DU PERSONNEL', '', '1212.92', '6926579103'),
(22, 1, 'Ajout de la charge Fixe: FACTURE PERSONNEL RESTORIA ', '1245.26', '', '5906835706'),
(24, 1, 'Ajout de la charge Fixe: COPIES COULEUR  WELCOME ', '39', '', '7189633054'),
(26, 2, 'Ajout du produit fixe: REMISE CHEQUE  PARFUM PERSONNEL', '', '651', '2600438288'),
(27, 2, 'Ajout du produit fixe: BUDGET SOCIAL 2015', '', '8600', '2368587749'),
(28, 1, 'Ajout de la charge Fixe: PAIEMENT FOIRE SAINT MARTIN 32X13', '416', '', '7933610873'),
(30, 1, 'Ajout de la charge Fixe: PAIEMENT FOIRE SAINT MARTIN 11X13', '143', '', '4073122703'),
(31, 1, 'Ajout de la charge Fixe: PAIEMENT FOIRE SAINT MARTIN 10X13', '130', '', '6659747520'),
(32, 1, 'Ajout de la charge Fixe: FACTURE PARFUM', '651', '', '9871681784'),
(33, 2, 'Ajout du produit fixe: REMISE PERSONNEL CINEMA EN  CHEQUES', '', '233.40', '5885806261'),
(34, 2, 'Ajout du produit fixe: REMISE PERSONNEL PARFUM', '', '132', '4812028962'),
(35, 2, 'Ajout du produit fixe: REMISE PERSONNEL CIN&Eacute;MA LIQUIDES', '', '95', '338057084'),
(36, 2, 'Ajout du produit fixe: REMBOURSEMENT SAUCISSONS', '', '392.40', '6635191315'),
(37, 1, 'Ajout de la charge Fixe: FACTURE RESTORIA', '1181.27', '', '9573785248'),
(38, 1, 'Ajout de la charge Fixe: FACTURE RESTORIA', '1185.88', '', '5570768514'),
(39, 1, 'Ajout de la charge Fixe: FACTURE PARFUM', '387', '', '1732248208'),
(40, 2, 'Ajout du produit fixe: REMBOURSEMENT PARFUM', '', '387', '9418438673'),
(41, 2, 'Ajout du produit fixe: REMISE CANTINE PERSONNEL LIQUIDE', '', '60', '5117866588'),
(42, 2, 'Ajout du produit fixe: REMISE CANTINE PERSONNEL CH&Egrave;QUE ', '', '1041.01', '2436781400'),
(43, 2, 'Ajout du produit fixe: REMBOURSEMENT  CANTINE PERSONNEL', '', '1028.33', '7047925615'),
(44, 2, 'Ajout du produit fixe: REMISE CANTINE PERSONNEL LIQUIDE', '', '60', '3502054415'),
(45, 2, 'Ajout du produit fixe: FOIRE SAINT MARTIN  CHEQUE', '', '648', '5614061030'),
(46, 2, 'Ajout du produit fixe: FOIRE SAINT MARTIN  LIQUIDE', '', '800', '1537959157');

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
(1, 'FACTURE PERSONNEL RESTORIA ', '15-10-2015', '1245.26', '5906835706'),
(2, 'COPIES COULEUR  WELCOME ', '25-11-2015', '39', '7189633054'),
(4, 'PAIEMENT FOIRE SAINT MARTIN 32X13', '30-10-2015', '416', '7933610873'),
(6, 'PAIEMENT FOIRE SAINT MARTIN 11X13', '13-11-2015', '143', '4073122703'),
(7, 'PAIEMENT FOIRE SAINT MARTIN 10X13', '02-11-2015', '130', '6659747520'),
(8, 'FACTURE PARFUM', '30-11-2015', '651', '9871681784'),
(9, 'FACTURE RESTORIA', '16-11-20015', '1181.27', '9573785248'),
(10, 'FACTURE RESTORIA', '15-12-2015', '1185.88', '5570768514'),
(11, 'FACTURE PARFUM', '23-12-2015', '387', '1732248208');

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
(82, 3, '20343.65', '8600'),
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
(107, 28, '17177.6', '11766.05'),
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
(2, '1444168800', 'PRÃ‰LÃˆVEMENT SFR', 3, '24.99', ''),
(5, '1444082400', 'FORMATION DACC DU 31-08-2015', 3, '990', ''),
(6, '1444082400', 'AUCHAN CAFE TASSIMO', 3, '23.68', ''),
(7, '1444600800', 'PRÃ‰LÃˆVEMENT MACIF', 3, '8', ''),
(8, '1443650400', 'FACTURE CIO SGT15005270586227', 3, '1', ''),
(9, '1444341600', 'FRAIS DE ROUTE JOHANN BRIE CHEQUE N 4232167', 3, '21', ''),
(10, '1444600800', 'ACHAT CHOCOLAT + CAFÃ‰ ', 3, '13.35', ''),
(11, '1444860000', 'CHÃˆQUE CADOC', 3, '6616', ''),
(12, '1445814000', 'PRÃ‰SENTOIR CE', 3, '255', ''),
(13, '1445900400', 'FORMATION CDT GESTION SAS', 3, '1020', ''),
(14, '1445986800', 'RESTAURANT ATOLL FORMATION  ERIC FRESNEAU', 3, '87.60', ''),
(15, '1446073200', 'FRAIS DE ROUTE RICHARD AULER', 3, '59.90', ''),
(16, '1446159600', 'FRAIS DE ROUTE CHRISTOPHE BENAMOUCHE', 3, '39.20', ''),
(17, '1446418800', 'FRAIS CGT ', 3, '180', ''),
(18, '1443650400', 'INTÃ‰RÃŠTS FRAIS BANCAIRE', 3, '28', ''),
(20, '1449529200', 'BUDGET DE FONCTIONNEMENT 2015', 3, '', '8600'),
(22, '1444860000', 'FRAIS DE ROUTE OLIVIER MERLE', 3, '60.80', ''),
(26, '1444860000', 'PRESTATION BANCAIRE DU 01-07-2015 AU 30-09-2015', 3, '28', ''),
(27, '1447196400', 'CDT SITE INTERNET DYNAMIQUE', 3, '700', ''),
(28, '1446505200', 'ADHÃ‰SION TOURISME ET LOISIR', 3, '224.83', ''),
(29, '1447110000', 'CDT GESTION 49', 3, '780', ''),
(31, '1448319600', 'FRAIS DE ROUTE RICHARD AULER', 3, '19', ''),
(32, '1448319600', 'WELCOME PHOTOCOPIE COULEUR', 3, '39', ''),
(33, '1448838000', 'CDT GESTION 49', 3, '700', ''),
(34, '1448838000', 'CDT LIVRE DE COMPTE INTERNET ', 3, '500', ''),
(35, '1449529200', 'ABONNEMENT PASSE TIME ', 3, '344', ''),
(36, '1449529200', 'PACK DE COMMUNICATION ', 3, '3825', ''),
(37, '1446764400', 'PRÃ‰LÃˆVEMENT  SFR', 3, '24.99', ''),
(38, '1447110000', 'PRÃ‰LÃˆVEMENT MACIF', 3, '8', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_actif`
--

CREATE TABLE `compta_bilan_actif` (
  `idcptbilanactif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compta_bilan_actif`
--

INSERT INTO `compta_bilan_actif` (`idcptbilanactif`, `idcomptaplan`, `montant`) VALUES
(14, 3, '3166.05');

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE `compta_bilan_passif` (
  `idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compta_bilan_passif`
--

INSERT INTO `compta_bilan_passif` (`idcptbilanpassif`, `idcomptaplan`, `montant`) VALUES
(13, 28, '3166.05');

-- --------------------------------------------------------

--
-- Structure de la table `compta_caisse`
--

CREATE TABLE `compta_caisse` (
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
(9, '1444082400', 'ABG ACHAT PRODUIT BUREAU', 3, '114.26', ''),
(10, '1441576800', 'PRÃ‰LÃˆVEMENT SFR', 3, '24.99', ''),
(11, '', 'PRELEVEMENT MACIF', 3, '8', ''),
(12, '1441058400', 'PRESTATION BANCAIRE', 3, '1', ''),
(13, '1442268000', 'PRÃ‰LÃˆVEMENT RESTORIA', 3, '71.06', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_compte`
--

CREATE TABLE `compta_compte` (
  `idcomptacompte` int(13) NOT NULL,
  `idcomptaplan` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compta_compte`
--

INSERT INTO `compta_compte` (`idcomptacompte`, `idcomptaplan`, `debit`, `credit`) VALUES
(72, 3, '3166.05', ''),
(73, 28, '', '3166.05'),
(74, 3, '114.26', ''),
(75, 3, '24.99', ''),
(76, 3, '8', ''),
(77, 3, '1', ''),
(78, 3, '71.06', ''),
(80, 3, '24.99', ''),
(83, 3, '990', ''),
(84, 3, '23.68', ''),
(85, 3, '8', ''),
(86, 3, '1', ''),
(87, 3, '21', ''),
(88, 3, '13.35', ''),
(89, 3, '6616', ''),
(90, 3, '255', ''),
(91, 3, '1020', ''),
(92, 3, '87.60', ''),
(93, 3, '59.90', ''),
(94, 3, '39.20', ''),
(95, 3, '180', ''),
(98, 3, '', '8600'),
(100, 3, '60.80', ''),
(104, 3, '28', ''),
(106, 3, '224.83', ''),
(107, 3, '780', ''),
(109, 3, '19', ''),
(110, 3, '39', ''),
(112, 3, '500', ''),
(113, 3, '344', ''),
(114, 3, '3825', ''),
(115, 3, '24.99', ''),
(116, 3, '8', ''),
(117, 3, '58.50', ''),
(118, 3, '57.40', ''),
(119, 3, '60.55', ''),
(120, 3, '81.35', ''),
(121, 3, '50', ''),
(122, 3, '20.99', ''),
(123, 3, '8.16', '');

-- --------------------------------------------------------

--
-- Structure de la table `compta_livret`
--

CREATE TABLE `compta_livret` (
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

CREATE TABLE `compta_mvm` (
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
(1, '1450306800', 'FRAIS DE ROUTE + PARKING CHRISTOPHE B', 3, '58.50', ''),
(2, '1450306800', 'FRAIS DE ROUTE + PARKING OLIVIER M', 3, '57.40', ''),
(3, '', 'FRAIS DE ROUTE + PARKING RICHARD A ', 3, '60.55', ''),
(4, '1450306800', 'RESTAURANT FORMATION CGT RICHARD', 3, '81.35', ''),
(5, '1450306800', 'NAISSANCE  JÃ‰RÃ”ME CANU', 3, '50', ''),
(6, '1450047600', 'LOT DE FOURCHETTE ET COUTEAU POUR CANTINE ', 3, '20.99', ''),
(7, '1450825200', 'TIMBRE POSTE CARNET POUR RICHARD A', 3, '8.16', '');

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

CREATE TABLE `compta_resultat` (
  `idresultat` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `idcomptaplan`, `debit`, `credit`) VALUES
(1, 3, '58.50', ''),
(2, 3, '57.40', ''),
(3, 3, '60.55', ''),
(4, 3, '81.35', ''),
(5, 3, '50', ''),
(6, 3, '20.99', ''),
(7, 3, '8.16', '');

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
(1, 'COMITE D''ENTREPRISE SLTS', '', '', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '31-12-2014', '31-12-2015');

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
(14, '1294513564', '1431208800', 'SOLDE BUDGET SOCIAL', '', '30863.17'),
(15, '5830721497', '1444168800', 'REMBOURSEMENT PLACES CIN&Eacute;MA DU PERSONNEL ', '', '140'),
(16, '4978088238', '1444168800', 'REMBOURSEMENT PLACES KARTING  DU PERSONNEL ', '', '120'),
(17, '6227572062', '1444255200', 'REMBOURSEMENT PLACES CIN&Eacute;MA DU PERSONNEL ', '', '291.50'),
(18, '8925039139', '1444255200', 'REMBOURSEMENT PLACES KARTING  DU PERSONNEL ', '', '100'),
(19, '5985726076', '1444082400', 'REMBOURSEMENT PARFUM DU PERSONNEL', '', '1248'),
(20, '3948117416', '1445464800', 'REMISE LIQUIDE CANTINE DU PERSONNEL', '', '80'),
(21, '6926579103', '1445551200', 'REMISE CHEQUE  CANTINE DU PERSONNEL', '', '1212.92'),
(22, '5906835706', '1444860000', 'FACTURE PERSONNEL RESTORIA ', '1245.26', ''),
(24, '7189633054', '1448406000', 'COPIES COULEUR  WELCOME ', '39', ''),
(26, '2600438288', '1448838000', 'REMISE CHEQUE  PARFUM PERSONNEL', '', '651'),
(27, '2368587749', '1449529200', 'BUDGET SOCIAL 2015', '', '8600'),
(28, '7933610873', '1446159600', 'PAIEMENT FOIRE SAINT MARTIN 32X13', '416', ''),
(30, '4073122703', '1447369200', 'PAIEMENT FOIRE SAINT MARTIN 11X13', '143', ''),
(31, '6659747520', '1446418800', 'PAIEMENT FOIRE SAINT MARTIN 10X13', '130', ''),
(32, '9871681784', '1448838000', 'FACTURE PARFUM', '651', ''),
(33, '5885806261', '1449529200', 'REMISE PERSONNEL CINEMA EN  CHEQUES', '', '233.40'),
(34, '4812028962', '1449529200', 'REMISE PERSONNEL PARFUM', '', '132'),
(35, '338057084', '1449529200', 'REMISE PERSONNEL CIN&Eacute;MA LIQUIDES', '', '95'),
(36, '6635191315', '1449529200', 'REMBOURSEMENT SAUCISSONS', '', '392.40'),
(37, '9573785248', '', 'FACTURE RESTORIA', '1181.27', ''),
(38, '5570768514', '1450134000', 'FACTURE RESTORIA', '1185.88', ''),
(39, '1732248208', '1450825200', 'FACTURE PARFUM', '387', ''),
(40, '9418438673', '1450825200', 'REMBOURSEMENT PARFUM', '', '387'),
(41, '5117866588', '1450825200', 'REMISE CANTINE PERSONNEL LIQUIDE', '', '60'),
(42, '2436781400', '1450825200', 'REMISE CANTINE PERSONNEL CH&Egrave;QUE ', '', '1041.01'),
(43, '7047925615', '1447369200', 'REMBOURSEMENT  CANTINE PERSONNEL', '', '1028.33'),
(44, '3502054415', '1447369200', 'REMISE CANTINE PERSONNEL LIQUIDE', '', '60'),
(45, '5614061030', '1447369200', 'FOIRE SAINT MARTIN  CHEQUE', '', '648'),
(46, '1537959157', '1447369200', 'FOIRE SAINT MARTIN  LIQUIDE', '', '800');

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
(1, 'CINEMA'),
(2, 'ACTION DIVERSES'),
(3, 'JEUX CONCOURS');

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
(5, '1.6.3', '29315-prem');

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
(6, 'CE49', '84764551b32383d8ba93a3bd6e37c950', 1);

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
(2, 'solde_salarie', '0'),
(3, 'vente_direct', '0');

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
(4, 'SOLDE BUDGET SOCIAL', '05/10/2015', '30863.17', '1294513564'),
(5, 'REMBOURSEMENT PLACES CIN&Eacute;MA DU PERSONNEL ', '07-10-2015', '140', '5830721497'),
(6, 'REMBOURSEMENT PLACES KARTING  DU PERSONNEL ', '07-10-2015', '120', '4978088238'),
(7, 'REMBOURSEMENT PLACES CIN&Eacute;MA DU PERSONNEL ', '08-10-2015', '291.50', '6227572062'),
(8, 'REMBOURSEMENT PLACES KARTING  DU PERSONNEL ', '08-10-2015', '100', '8925039139'),
(9, 'REMBOURSEMENT PARFUM DU PERSONNEL', '06-10-2015', '1248', '5985726076'),
(10, 'REMISE LIQUIDE CANTINE DU PERSONNEL', '22-10-2015', '80', '3948117416'),
(11, 'REMISE CHEQUE  CANTINE DU PERSONNEL', '23-10-2015', '1212.92', '6926579103'),
(13, 'REMISE CHEQUE  PARFUM PERSONNEL', '30-11-2015', '651', '2600438288'),
(14, 'BUDGET SOCIAL 2015', '08-12-2015', '8600', '2368587749'),
(15, 'REMISE PERSONNEL CINEMA EN  CHEQUES', '08-12-2015', '233.40', '5885806261'),
(16, 'REMISE PERSONNEL PARFUM', '08-12-2015', '132', '4812028962'),
(17, 'REMISE PERSONNEL CIN&Eacute;MA LIQUIDES', '08-12-2015', '95', '338057084'),
(18, 'REMBOURSEMENT SAUCISSONS', '08-12-2015', '392.40', '6635191315'),
(19, 'REMBOURSEMENT PARFUM', '23-12-2015', '387', '9418438673'),
(20, 'REMISE CANTINE PERSONNEL LIQUIDE', '23-12-2015', '60', '5117866588'),
(21, 'REMISE CANTINE PERSONNEL CH&Egrave;QUE ', '23-12-2015', '1041.01', '2436781400'),
(22, 'REMBOURSEMENT  CANTINE PERSONNEL', '13-11-2015', '1028.33', '7047925615'),
(23, 'REMISE CANTINE PERSONNEL LIQUIDE', '13-11-2015', '60', '3502054415'),
(24, 'FOIRE SAINT MARTIN  CHEQUE', '13-11-2015', '648', '5614061030'),
(25, 'FOIRE SAINT MARTIN  LIQUIDE', '13-11-2015', '800', '1537959157');

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
(2, '00128', 1, 'AILLET LUDOVIC', '', '3 RUE ANDRE LE NOTRE', '           N?19 - 2?me ETAGE', '49460', 'MONTREUIL JUIGNE', '', '', '', '29/08/1979', '03/04/2000', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(3, '00080', 1, 'ALARY CLAUDE', '', '', '  17       AVENUE DU CADRAN', '49370', 'LE LOUROUX BECONNAIS', '', '', '', '16/03/1974', '05/09/2000', '', '', 'PLIEUR CN', '', '', '', 1, ''),
(4, '00642', 1, 'ALBERT YANN', '', '', '  18       Rue des AMARYLIS', '49170', 'ST AUGUSTIN DES BOIS', '', '', '', '27/02/1985', '09/08/2004', '', '', 'TECHNICIEN ETUDES ET INDUS', '', '', '', 1, ''),
(5, 'JEAUB', 1, 'AUBRY FEUFEU JEROME', '', '12. RUE CLAUDIUS PETIT', '', '49123', 'INGRANDES SUR LOIRE', '', '', '', '11/07/1984', '08/09/2014', '', '', 'CONTROLEUR', '', '', '', 1, ''),
(6, '00448', 1, 'AULER Richard', '', '', '   5       ALLEE JULES VERNE', '49240', 'AVRILLE', '', '', '', '23/09/1963', '15/04/2013', '', '', 'PLIEUR SUR CN', '', '', '', 1, ''),
(7, '00111', 1, 'AVRILLON FABRICE', '', '13 LA CROIX DU ROLLAY', '', '49190', 'ROCHEFORT SUR LOIRE', '', '', '', '02/07/1987', '25/08/2014', '', '', 'PLIEUR SUR CN', '', '', '', 1, ''),
(8, '00554', 1, 'BADIR MOHAMED', '', '107 AVENUE PATTON', '', '49000', 'ANGERS', '', '', '', '02/05/1972', '18/08/2014', '', '', 'PLIEUR/REGLEUR CN', '', '', '', 1, ''),
(9, '00408', 1, 'BARAUD FRANCK', '', '', '   8       rue des Violettes', '49170', 'ST MARTIN DU FOUILLOUX', '', '', '', '06/02/1980', '01/08/2000', '', '', 'CHEF DE PROJET', '', '', '', 1, ''),
(10, '00901', 1, 'BARTH BERTRAND', '', '', '   2       RESIDENCE DE LA GARDO', '49480', 'ST SYLVAIN D ANJOU', '', '', '', '04/05/1968', '06/01/1997', '', '', 'PEINTRE LIQUIDE', '', '', '', 1, ''),
(11, '00427', 1, 'BAZIN SEBASTIEN', '', '', '  17   RUE DU COMMERCE', '49380', 'CHAVAGNES', '', '', '', '08/04/1973', '01/10/2013', '', '', 'PEINTRE LIQUIDE', '', '', '', 1, ''),
(12, '00062', 1, 'BEGASSAT THIERRY', '', '', '   5       RUE DES PEUPLIERS', '49330', 'CHAMPIGNE', '', '', '', '07/05/1971', '04/09/2000', '', '', 'MAGASINIER LEADER', '', '', '', 1, ''),
(13, '00782', 1, 'BENHAMOUCHE CHRISTOPHE', '', '', '  25       RUE DU PATIS', '49170', 'ST MARTIN DU FOUILLOUX', '', '', '', '21/09/1960', '03/01/2006', '', '', 'EBAVUREUR', '', '', '', 1, ''),
(14, '00304', 1, 'BENOIT DAVID', '', '', '  17       RUE DU PRESSOIR', '49370', 'ST CLEMENT DE LA PLACE', '', '', '', '20/08/1979', '01/09/1999', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(15, '00464', 1, 'BERGER ALAIN', '', '', '  14       RUE DE L''AUBEPINE', '49370', 'LA POUEZE', '', '', '', '08/01/1974', '13/08/2001', '', '', 'CONTROLEUR', '', '', '', 1, ''),
(16, '00904', 1, 'BERNARD JEAN PIERRE', '', '', '   3       RUE DE L''AUBRIAIE', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '21/04/1966', '10/02/1997', '', '', 'OPERATEUR PEINTURE', '', '', '', 1, ''),
(17, '00918', 1, 'BERNARD MAURICE', '', '', '   3       RUE DE L''AUBRIAIE', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '21/12/1967', '15/02/2000', '', '', 'MANUTENTIONNAIRE', '', '', '', 1, ''),
(18, '00828', 1, 'BERNIER JEAN CLAUDE', '', 'LOTISSEMENT DES GRANDS SABLES', '   8       RUE JOACHIM DU BELLAY', '49220', 'VERN D ANJOU', '', '', '', '03/05/1980', '08/10/2007', '', '', 'MONTEUR', '', '', '', 1, ''),
(19, '00626', 1, 'BESSON FRANCK', '', '', '   1       SQUARE RENE CHATEAUBR', '49070', 'BEAUCOUZE', '', '', '', '20/10/1979', '02/10/2002', '', '', 'CHARGE AFFAIRES', '', '', '', 1, ''),
(20, '00010', 1, 'BILLEROT RICHARD', '', '', '           GAIGNE', '49610', 'MURS ERIGNE', '', '', '', '29/06/1977', '08/10/1997', '', '', 'CHARGE AFFAIRES', '', '', '', 1, ''),
(21, '00905', 1, 'BIRONNEAU BERNARD', '', '', '           LES LOGES', '49190', 'ROCHEFORT SUR LOIRE', '', '', '', '11/07/1966', '01/03/1994', '', '', 'MONTEUR', '', '', '', 1, ''),
(22, '00091', 1, 'BLANCHET ANTHONY', '', '', '  20       RUE DES FONTAINES', '49170', 'ST MARTIN DU FOUILLOUX', '', '', '', '21/07/1975', '03/07/2000', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(23, 'COBLA', 1, 'BLANVILLAIN CONSTANT', '', '19 RUE DES EPERVIERS', '', '49070', 'BEAUCOUZE', '', '', '', '03/08/1999', '01/09/2014', '', '', 'APPRENTI BAC PRO TCI', '', '', 'APP', 1, ''),
(24, '00041', 1, 'BLERIOT Thomas', '', 'BATIMENT A-APPARTEMENT 76', '  41       avenue BESNARDIERE', '49100', 'ANGERS', '', '', '', '07/10/1990', '13/09/2010', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(25, '00004', 1, 'BLIN THIERRY', '', '', '           VILLENEUVE', '49170', 'ST GEORGES SUR LOIRE', '', '', '', '20/05/1958', '28/01/1985', '', '', 'RESPONSABLE D''EQUIPE', '', '', '', 1, ''),
(26, '00792', 1, 'BOUETE LAURENT', '', '', '  17       RUE PASTEUR', '49130', 'LES PONTS DE CE', '', '', '', '28/08/1974', '01/05/2006', '', '', 'OPERATEUR SUR CN', '', '', '', 1, ''),
(27, '00061', 1, 'BOURREAU FABRICE', '', '3 RUE HERVE BAZIN', '', '49070', 'SAINT LAMBERT LA POTHERIE', '', '', '', '09/11/1976', '11/09/2000', '', '', 'operateur cn', '', '', '', 1, ''),
(28, '00189', 1, 'BRANCHEREAU CHRISTOPHE', '', '', '   3       IMPASSE DES NOISETIER', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '10/10/1975', '05/12/1994', '', '', 'CONTROLEUR', '', '', '', 1, ''),
(29, '00005', 1, 'BRIAND BERTRAND', '', '', '   5       ALLEE DES MERISIERS', '49080', 'BOUCHEMAINE', '', '', '', '21/02/1964', '04/11/1986', '', '', 'MANAGER UNITE DE PRODUCTION', '', '', '', 1, ''),
(30, '00310', 1, 'BRIS JOHANN', '', '5 RUE JEAN MONNET', '', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '05/07/1980', '03/04/2000', '', '', 'MONTEUR', '', '', '', 1, ''),
(31, '00908', 1, 'BROSSAS MICHEL', '', '', '  10       RUE DU GUENEAU', '49123', 'CHAMPTOCE SUR LOIRE', '', '', '', '18/11/1967', '01/06/1992', '', '', 'CHEF D''EQUIPE/PEINTURE', '', '', '', 1, ''),
(32, 'ARBRU', 1, 'BRUN ARNAUD', '', '3 RUE LE GOUZ', '', '49100', 'ANGERS', '', '', '', '31/03/1985', '01/09/2014', '', '', 'TECHNICIEN METHODES', '', '', '', 1, ''),
(33, '00703', 2, 'BUTEL ERIKA', '', '', '  31       RUE DU PRESSOIR', '49370', 'SAINT CLEMENT DE LA PLACE', '', '', '', '30/10/1980', '19/09/2005', '', '', 'GESTIONNAIRE', '', '', '', 1, ''),
(34, '00488', 1, 'BUTTLER NICOLAS', '', '', '  34       RUE DES VIGNES', '49080', 'BOUCHEMAINE', '', '', '', '01/03/1978', '01/09/2012', '', '', 'OPERATEUR DE PRODUCTION', '', '', '', 1, ''),
(35, '00718', 1, 'CAILLAUD GAETAN', '', '43  A RUE ABEL BOUTIN DESVIGNES', '', '49130', 'LES PONTS DE CE', '', '', '', '24/01/1989', '01/04/2013', '', '', 'TECHNICIEN MAINTENANCE', '', '', '', 1, ''),
(36, '00424', 1, 'CESBRON DOMINIQUE', '', '', '           la doigt?e', '49070', 'SAINT JEAN DE LINIERES', '', '', '', '13/02/1970', '02/11/2011', '', '', 'DIRECTEUR PRODUCTION', '', '', '', 1, ''),
(37, '00187', 1, 'CHARTIER MICHEL', '', '', '           LES AIREAUX', '49170', 'ST LEGER DES BOIS', '', '', '', '20/05/1968', '01/01/1992', '', '', 'CARISTE', '', '', '', 1, ''),
(38, '00442', 1, 'CHATOKHINE G?rard', '', '', '  13       La GREE de l''ORMEAU', '49770', 'LE PLESSIS MACE', '', '', '', '26/10/1959', '01/06/2011', '', '', 'PEINTRE LIQUIDE', '', '', '', 1, ''),
(39, '00713', 2, 'CHAUSSEE MICKAELLE', '', '', '   8       AVENUE DES PROMENIERS', '49070', 'BEAUCOUZE', '', '', '', '22/04/1970', '07/07/2008', '', '', 'ASSISTANTE COMMERCIALE', '', '', '', 1, ''),
(40, '00087', 1, 'CHAUSSON ARNAUD', '', '55 Avenue de l'' EUROPE', '           BAT A', '49130', 'LES PONTS DE CE', '', '', '', '07/04/1979', '29/08/2011', '', '', 'CONTROLEUR QUALITE PEINTURE', '', '', '', 1, ''),
(41, 'LACHE', 1, 'CHESNEAU LAURENT', '', '25 RUE CHARLES DE GAULLES', '', '49770', 'LA MEMBROLLE SUR LONGUENEE', '', '', '', '13/12/1963', '19/01/2015', '', '', 'DIRECTEUR COMMERCIAL', '', '', '', 1, ''),
(42, '00077', 1, 'CHOLET AURELIEN', '', '', '   8       RUE DE L''HERMITAGE', '49370', 'BECON LES GRANITS', '', '', '', '11/10/1995', '02/09/2013', '', '', 'APPRENTISSAGE BTS MAINTENANCE', '', '', 'APP', 1, ''),
(43, '00257', 2, 'CLAVEREAU GAELLE', '', '', '   6       RESIDENCE MONTESQUIEU', '49000', 'ANGERS', '', '', '', '06/09/1971', '25/09/2006', '', '', 'MANAGER RHF', '', '', '', 1, ''),
(44, '00185', 1, 'CLEMENCEAU RODOLPHE', '', '', '           VILLE CHIEN', '53200', 'ST AIGNAN DE GENNES', '', '', '', '28/04/1971', '13/03/1989', '', '', 'MANAGER EXPLOITATION', '', '', '', 1, ''),
(45, '00007', 1, 'CLEMENT ALAIN', '', '', '   7       CHEMIN DE L''AIGLERIE', '49170', 'SAVENNIERES', '', '', '', '12/11/1964', '01/04/1985', '', '', 'RESPONSABLE D EQUIPE', '', '', '', 1, ''),
(46, '00008', 1, 'CLEMENT BRUNO', '', '', '   7       RUE DU PUIT GAUTHIER', '49170', 'SAVENNIERES', '', '', '', '06/09/1962', '01/07/1983', '', '', 'TECHNICIEN D''ATELIER', '', '', '', 1, ''),
(47, '00009', 1, 'CLEMENT GILLES', '', '', '  22       RUE DU BOIS D''ANGERS', '49170', 'SAVENNIERES', '', '', '', '18/01/1968', '01/09/1985', '', '', 'PILOTE ILOT DE PRODUCTION', '', '', '', 1, ''),
(48, '00772', 1, 'CLOUET JEAN-FRANCOIS', '', '', '  48       AVENUE GUSTAVE CAILLE', '49240', 'AVRILLE', '', '', '', '25/01/1969', '02/11/2005', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(49, '00089', 1, 'COCHELIN YANN', '', '16 AVENUE DE LA GRANDE CHAUSSEE', '', '49370', 'BECON LES GRANITS', '', '', '', '18/01/1971', '16/09/1991', '', '', 'PLIEUR CN', '', '', '', 1, ''),
(50, '00039', 1, 'COHERGNE JEROME', '', '', '  16       RUE DU PRE VALAU', '49220', 'GREZ NEUVILLE', '', '', '', '05/12/1973', '10/01/2000', '', '', 'CHARGE AFFAIRES', '', '', '', 1, ''),
(51, '00050', 1, 'COMMUNAL THIERRY', '', '', '  34       RUE DE ST GERMAIN', '49170', 'ST AUGUSTIN DES BOIS', '', '', '', '13/03/1967', '05/06/1990', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(52, '00006', 1, 'CORDIER BASTIEN', '', '', '  20       RUE CHATEAUGONTIER', '49100', 'ANGERS', '', '', '', '14/05/1989', '29/03/2010', '', '', 'TECHNICIEN METHODES', '', '', '', 1, ''),
(53, '00068', 1, 'CORDIER PASCAL', '', '', '  17       RUE DES ORMEAUX', '49070', 'ST JEAN DE LINIERES', '', '', '', '11/04/1970', '03/12/1990', '', '', 'PLIEUR/LEADER', '', '', '', 1, ''),
(54, '00012', 1, 'CORDIER PHILIPPE', '', '', '   3       CHEMIN DAUVERT', '49170', 'ST LEGER DES BOIS', '', '', '', '29/01/1967', '01/08/1985', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(55, '00437', 1, 'COURBET KEVIN', '', '5 RUE DU HALLAY', '', '49170', 'SAVENNIERES', '', '', '', '21/07/1988', '01/12/2012', '', '', 'OPERATEUR DE PRODUCTION', '', '', '', 1, ''),
(56, '00923', 1, 'CRUAUD PATRICK', '', '', '  36       RUE DE LA POUEZE', '49370', 'ST CLEMENT DE LA PLACE', '', '', '', '24/07/1959', '05/08/2002', '', '', 'EMBALLEUR', '', '', '', 1, ''),
(57, '00925', 1, 'DABE Bernard', '', '', '  34       Bd JACQUES PORTET', '49000', 'ANGERS', '', '', '', '13/06/1977', '07/02/2011', '', '', 'TECHNICIEN METHODES', '', '', '', 1, ''),
(58, '00449', 2, 'DEMESLAY MAGALI', '', '', '  34       RUE DU GRAND PRE', '49070', 'SAINT LAMBERT LA POTHERIE', '', '', '', '30/04/1973', '03/01/2002', '', '', 'GESTIONNAIRE', '', '', '', 1, ''),
(59, '00637', 1, 'DESGRANGES EMMANUEL', '', '', '  36       RUE DES CHARMILLES', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '06/02/1972', '22/04/2003', '', '', 'MONTEUR', '', '', '', 1, ''),
(60, 'MADIA', 1, 'DIATTA MAMADOU', '', '42 Rue SAINT MAURILLE', '', '49290', 'CHALONNES SUR LOIRE', '', '', '', '07/03/1993', '15/09/2014', '', '', 'APPRENTI BTS CRCI', '', '', 'APP', 1, ''),
(61, '00263', 1, 'DOUET PASCAL', '', '', '  20       Rue Walter PYRON', '49170', 'SAINT MARTIN DU FOUILLOUX', '', '', '', '12/09/1976', '15/01/1997', '', '', 'METALLIER', '', '', '', 1, ''),
(62, '00256', 1, 'DROYER DAVID', '', 'LOT LES PETITS BOIS GAS', '   4       RUE DES ORANGERS', '49620', 'LA POMMERAYE', '', '', '', '08/06/1975', '04/10/1999', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(63, '00404', 2, 'DUFAURET SOPHIE', '', '', '  23       RUE DUBOYS D''ANGERS', '49170', 'SAVENNIERES', '', '', '', '20/03/1967', '22/10/2007', '', '', 'ASSISTANTE RH', '', '', '', 1, ''),
(64, '00446', 1, 'DUMANGE JULIEN', '', '', '  12       RUE DE LA BORDERIE', '49770', 'LA MEMBROLLE SUR LONGUENEE', '', '', '', '12/10/1982', '03/01/2012', '', '', 'PILOTE ILOT DE PRODUCTION', '', '', '', 1, ''),
(65, '00413', 1, 'DURAND NICOLAS', '', '', '  13       Rue VOLLANT', '49800', 'TRELAZE', '', '', '', '03/06/1976', '01/12/2000', '', '', 'TECHNICIEN ETUDES ET INDUS', '', '', '', 1, ''),
(66, '00463', 1, 'FRAUX ALEXANDRE', '', '', '   3       Boulevard de l''OCEAN', '44380', 'PORNICHET', '', '', '', '29/04/1992', '01/10/2012', '', '', 'APPRENTI INGENIEUR', '', '', 'APP', 1, ''),
(67, '00221', 1, 'FREMY ADRIEN', '', '', '   7       RUE DU STADE', '49440', 'LA CORNUAILLE', '', '', '', '25/10/1988', '16/07/2007', '', '', 'MONTEUR', '', '', '', 1, ''),
(68, '00044', 1, 'FRESNEAU ERIC', '', '', '  31       RUE DE LA PICOTIERE', '49100', 'ANGERS', '', '', '', '30/07/1969', '12/03/1990', '', '', 'PILOTE ILOT DE PRODUCTION', '', '', '', 1, ''),
(69, '00076', 1, 'GAIGEARD CHRISTOPHE', '', '', '  18       RUE DU CLOS DES VIGNE', '49370', 'SAINT CLEMENT DE LA PLACE', '', '', '', '31/05/1977', '11/09/2006', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(70, '00697', 1, 'GAUTEUL PHILIPPE', '', '', '   4       RUE GODET', '49620', 'LA POMMERAYE', '', '', '', '02/08/1964', '03/01/2006', '', '', 'MAGASINIER', '', '', '', 1, ''),
(71, '00631', 1, 'GEDOUIN ARNAUD', '', '', ' 119       RUE DU COMMERCE', '49220', 'VERN D ANJOU', '', '', '', '30/01/1981', '06/01/2003', '', '', 'PLIEUR CN', '', '', '', 1, ''),
(72, '00610', 2, 'GELINEAU FABIENNE', '', '', '  36       RUE SAVARY', '49100', 'ANGERS', '', '', '', '28/05/1987', '01/04/2013', '', '', 'CHAUFFEUR - LIVREUR', '', '', '', 1, ''),
(73, '00910', 1, 'GEMIN DIDIER', '', '', '   2       CHEMIN PANLALOUP', '49140', 'CORZE', '', '', '', '23/05/1958', '01/03/1994', '', '', 'EBAVUREUR', '', '', '', 1, ''),
(74, '00015', 1, 'GOITTE DIDIER', '', '', ' 131       ROUTE DE SARRIGNE', '49630', 'CORNE', '', '', '', '20/02/1959', '10/01/1985', '', '', 'CHEF D EQUIPE', '', '', '', 1, ''),
(75, '00047', 1, 'GOITTE FREDDY', '', '', '   4       BIS RUE RAVENEL', '49000', 'ANGERS', '', '', '', '11/06/1984', '03/01/2008', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(76, '00121', 1, 'GREFFIER JEROME', '', '', '   9       RUE DU VERGER', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '09/11/1969', '17/08/1992', '', '', 'TECHNICO COMMERCIAL', '', '', '', 1, ''),
(77, '00411', 1, 'GRIMAL SEBASTIEN', '', '', '   5       D Rue de BRETAGNE', '49770', 'LE PLESSIS MACE', '', '', '', '23/03/1980', '04/09/2000', '', '', 'PLIEUR SUR CN', '', '', '', 1, ''),
(78, '00708', 1, 'GUCCIARDO THIERRY', '', '', '  24       rue des FAUVETTES', '49370', 'LA POUEZE', '', '', '', '03/06/1980', '05/09/2005', '', '', 'CONTROLEUR', '', '', '', 1, ''),
(79, '00506', 1, 'GUERIN STEPHANE', '', '', '   6       ALLEE DU FIEF EGARE', '49123', 'INGRANDES SUR LOIRE', '', '', '', '22/04/1975', '05/11/2001', '', '', 'MONTEUR - INTEGRATEUR', '', '', '', 1, ''),
(80, '00096', 2, 'GUIGANOU KATIA', '', '', '  11       RUE DE LA PATERNELLE', '49123', 'CHAMPTOCE SUR LOIRE', '', '', '', '07/04/1969', '01/10/1988', '', '', 'GESTIONNAIRE', '', '', '', 1, ''),
(81, '00461', 1, 'GUIGNARD NICOLAS', '', '', '   3       CHEMIN DES PRES', '49800', 'LA BOHALLE', '', '', '', '15/04/1977', '20/08/2001', '', '', 'PLIEUR/REGLEUR CN', '', '', '', 1, ''),
(82, '00492', 1, 'GUILLET EMMANUEL', '', '1, LOTISSEMENT DU ROQUET', '', '49330', 'QUERRE', '', '', '', '18/03/1982', '25/09/2001', '', '', 'SOUDEUR PAR POINT', '', '', '', 1, ''),
(83, '00926', 1, 'HAVIN VIVIEN', '', '17 place Gr?goire Bordillon', '', '49100', 'ANGERS', '', '', '', '17/04/1987', '18/08/2014', '', '', 'RESPONSABLE QUALITE PRODUIT PROCESS', '', '', '', 1, ''),
(84, '00222', 1, 'HEINRY ANTHONY', '', '3 ROUTE DE BRAIN', '', '49770', 'LA MEMBROLLE SUR LONGUENEE', '', '', '', '31/12/1986', '20/01/2014', '', '', 'OP / REGLEUR SUR CU', '', '', '', 1, ''),
(85, '00465', 1, 'HETAULT BRUNO', '', '', '  57       Rue de JUIGNE', '49460', 'FENEU', '', '', '', '01/04/1966', '18/07/2011', '', '', 'OPERATEUR REGLEUR CU / CP CN', '', '', '', 1, ''),
(86, '00088', 1, 'HUCHET PASCAL', '', '', '   2       RUE DU PALERON', '49170', 'ST MARTIN DU FOUILLOUX', '', '', '', '24/12/1968', '16/09/1991', '', '', 'MANAGER UNITE DE PRODUCTION', '', '', '', 1, ''),
(87, '00253', 1, 'JAUMOTTE MICHAEL', '', '', '  16       RUE DU CLOS DES VIGNE', '49370', 'ST CLEMENT DE LA PLACE', '', '', '', '10/07/1974', '01/10/1996', '', '', 'CONTROLEUR', '', '', '', 1, ''),
(88, '00775', 1, 'JEFFRARD JEAN CLAUDE', '', '5 RUE MICHEL FOURRE CORMERAY', '', '49100', 'ANGERS', '', '', '', '30/09/1961', '08/10/2007', '', '', 'PEINTRE POUDRE', '', '', '', 1, ''),
(89, '00510', 1, 'JELAIEL ABDELLATIF', '', '', '  25       IMPASSE DES FRESNES', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '06/06/1970', '04/03/2002', '', '', 'MAGASINIER', '', '', '', 1, ''),
(90, '00639', 1, 'JONCHERAY TONY', '', '', '  70       A RUE DES ARTILLEURS', '49100', 'ANGERS', '', '', '', '26/12/1974', '14/01/2013', '', '', 'PLIEUR SUR CN', '', '', '', 1, ''),
(91, '00654', 1, 'JUDEAUX ANDY', '', '', '  18       Rue Jean ROSTAND', '49000', 'ANGERS', '', '', '', '10/02/1979', '05/07/2004', '', '', 'CHARGE AFFAIRES', '', '', '', 1, ''),
(92, '00110', 1, 'KABEZA ROGER', '', '', '           Lieu Dit PORT BITOU', '49610', 'MOZE SUR LOUET', '', '', '', '17/01/1959', '05/05/2008', '', '', 'OPERATEUR PEINTURE', '', '', '', 1, ''),
(93, '00791', 1, 'KHOUMSI MOHAMED', '', '', '  29       CHEMIN DU MESNIL', '49370', 'SAINT CLEMENT DE LA PLACE', '', '', '', '26/02/1973', '03/01/2008', '', '', 'OPERATEUR PEINTURE', '', '', '', 1, ''),
(94, '00018', 1, 'LANDEAU DOMINIQUE', '', '', '  11       RUE BONNE FONTAINE', '49570', 'MONTJEAN SUR LOIRE', '', '', '', '16/04/1960', '01/02/1987', '', '', 'MANOEUVRE', '', '', '', 1, ''),
(95, '00020', 1, 'LANDEAU ERIC', '', '', '  39       LOTISSEMENT LA PATERN', '49123', 'CHAMPTOCE SUR LOIRE', '', '', '', '05/11/1961', '30/08/1982', '', '', 'CHEF D''EQUIPE', '', '', '', 1, ''),
(96, '00770', 1, 'LANGLAIS ALAIN', '', '', '  13       RUE NATIONALE', '49140', 'SEICHES SUR LOIR', '', '', '', '05/04/1955', '24/10/2005', '', '', 'TOLIER-SOUDEUR SPP', '', '', '', 1, ''),
(97, '00754', 1, 'LANGLAIS STEPHANE', '', '', '  37       GRANDE RUE', '49440', 'CHALLAIN LA POTHERIE', '', '', '', '03/10/1968', '01/12/2005', '', '', 'EBAVUREUR', '', '', '', 1, ''),
(98, '00912', 1, 'LASTRE MICKAEL', '', '', '   7       ALLEE DU BEAU VALLON', '49370', 'LE LOUROUX BECONNAIS', '', '', '', '17/12/1969', '03/04/1995', '', '', 'EMBALLEUR', '', '', '', 1, ''),
(99, '00100', 1, 'LEBOT FRANCK', '', '', '  27       TER RUE DE LA PATERNE', '49123', 'CHAMPTOCE SUR LOIRE', '', '', '', '14/10/1973', '18/09/2000', '', '', 'SOUDEUR PAR POINT', '', '', '', 1, ''),
(100, '00023', 1, 'LEBREC PHILIPPE', '', 'ZAC DES VIGNES', '  33       CHEMIN DU MESNIL', '49370', 'ST CLEMENT DE LA PLACE', '', '', '', '13/08/1968', '02/03/1988', '', '', 'CHEF D''EQUIPE', '', '', '', 1, ''),
(101, '00500', 1, 'LECLERC KEVIN', '', '', '   3       RUE DE L''ANJOU', '49070', 'SAINT LAMBERT LA POTHERIE', '', '', '', '07/09/1990', '06/06/2011', '', '', 'SOUDEUR PAR POINTS', '', '', '', 1, ''),
(102, '00025', 1, 'LEJOLY DIDIER', '', '', '  27       RUE ALBERT CAMUS', '49460', 'MONTREUIL JUIGNE', '', '', '', '18/09/1963', '23/06/1981', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(103, '00752', 1, 'LEJOLY JULIEN', '', '', '  12       RUE DE LA CURT', '49220', 'BRAIN SUR LONGUENEE', '', '', '', '17/02/1987', '01/09/2005', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(104, '00747', 1, 'LELIEVRE JIMMY', '', '25 AVENUE DU GENERAL DE GAULLE', '', '49240', 'AVRILLE', '', '', '', '06/02/1975', '05/05/2008', '', '', 'PEINTRE POUDRE', '', '', '', 1, ''),
(105, '00670', 1, 'LENOIR JACKY', '', '', ' 100       Rue Picoti?re', '49000', 'ANGERS', '', '', '', '24/11/1961', '25/09/2006', '', '', 'LEADER INTEGRATION', '', '', '', 1, ''),
(106, '00021', 1, 'MADIOT VIANNEY', '', '', '   7       RUE DES OISEAUX', '49240', 'AVRILLE', '', '', '', '26/08/1965', '04/09/2000', '', '', 'EMBALLEUR', '', '', '', 1, ''),
(107, '00081', 1, 'MAINFRAIS BRUNO', '', '48 RUE PIERRE ET MARIE CURIE', '           LE DOMAINE DES AGAINS', '49770', 'VERN D ANJOU', '', '', '', '31/08/1980', '18/09/2000', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(108, '00762', 1, 'MARTIN PIERRE', '', '', '  68       RUE JEANNE QUEMARD', '49000', 'ANGERS', '', '', '', '20/02/1985', '20/09/2005', '', '', 'TECHNICIEN MAINTENANCE', '', '', '', 1, ''),
(109, '00829', 1, 'MASSON Georgio', '', '', '  14       Avenue VEZINS', '49140', 'SEICHES SUR LE LOIR', '', '', '', '02/02/1979', '03/01/2011', '', '', 'OP / REGLEUR SUR CU', '', '', '', 1, ''),
(110, '00691', 1, 'MENARD AMAURY', '', '', '   6       Rue du JOULAI', '49170', 'ST GERMAIN DES PRES', '', '', '', '15/11/1982', '04/04/2005', '', '', 'TECHNICIEN ETUDES ET INDUS', '', '', '', 1, ''),
(111, '00487', 1, 'MENDES CARREIRA HERVE', '', '', '  43       AVENUE PIERRE POIVRE', '49240', 'AVRILLE', '', '', '', '02/12/1975', '01/07/2012', '', '', 'GRENAILLEUR', '', '', '', 1, ''),
(112, '00514', 1, 'MERLE OLIVIER', '', '', '  48       Rue du DOCTEUR Lucile', '49130', 'LES PONTS DE CE', '', '', '', '30/03/1965', '10/10/2011', '', '', 'CONTROLEUR QUALITE PEINTURE LI', '', '', '', 1, ''),
(113, '00504', 1, 'MERRET PIERRICK', '', '', '           CHEMIN DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '30/07/1970', '22/10/2001', '', '', 'RESPONSABLE ACHATS', '', '', '', 1, ''),
(114, '00161', 1, 'METIVIER PASCAL', '', '', '  19       RUE PIERRE HUNAULT', '49000', 'ANGERS', '', '', '', '13/03/1961', '03/04/2000', '', '', 'MONTEUR', '', '', '', 1, ''),
(115, '00474', 1, 'MIQUEL FABIEN', '', '', '  20       ALLEE DES HETRES', '49170', 'SAINT AUGUSTIN DES BOIS', '', '', '', '06/07/1987', '02/04/2012', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(116, '00083', 1, 'MONTEMBAULT DIDIER', '', '17 RUE SIMONE DE BEAUVOIR', '', '49100', 'ANGERS', '', '', '', '04/08/1960', '16/10/2006', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(117, '00456', 1, 'MORON ERWAN', '', '', '   6       RUE JEAN MONNET', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '04/08/1976', '09/07/2001', '', '', 'MONTEUR', '', '', '', 1, ''),
(118, 'EDMOU', 1, 'MOUANDA EDGARD', '', '1 RUE DU MOULIN', '', '49170', 'SAINT LEGER DES BOIS', '', '', '', '08/11/1972', '01/09/2014', '', '', 'PLIEUR CN', '', '', '', 1, ''),
(119, '00455', 1, 'MOULIN JEAN JACQUES', '', '', '  19       RUE VICTOR SIMON', '49130', 'LES PONTS DE CE', '', '', '', '20/02/1957', '01/12/2012', '', '', 'CONTROLEUR LIQUIDE', '', '', '', 1, ''),
(120, '00027', 1, 'OLIVE CHRISTIAN', '', '', '  10       RUE DES VIGNES', '49410', 'ST LAURENT DU MOTTAY', '', '', '', '12/01/1967', '14/04/1988', '', '', 'CHAUDRONNIER FINISSEUR', '', '', '', 1, ''),
(121, '00028', 1, 'ONILLON DIDIER', '', '', '   2       RUE PIERRE AUGUSTE RE', '49170', 'ST LEGER DES BOIS', '', '', '', '01/04/1966', '04/01/1989', '', '', 'SOUDEUR PAR POINT', '', '', '', 1, ''),
(122, '00522', 1, 'OZTURK AYHAN', '', '', '   4       RUE COEFFARD', '49100', 'ANGERS', '', '', '', '20/04/1982', '17/04/2002', '', '', 'PLIEUR CN', '', '', '', 1, ''),
(123, '00104', 1, 'PAPIN Julien', '', '', '  20       RUE JEAN JOUANNEAU', '49250', 'BEAUFORT EN VALLEE', '', '', '', '24/06/1983', '01/10/2006', '', '', 'MONTEUR', '', '', '', 1, ''),
(124, '00058', 1, 'PAPIN THIERRY', '', '', '  22       RUE DE LA CLAYE', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '07/10/1961', '02/02/1998', '', '', 'MONTEUR', '', '', '', 1, ''),
(125, '00245', 1, 'PAYRAUDEAU ARNAUD', '', '', '   9       PLACE DE L''ACADEMIE', '49100', 'ANGERS', '', '', '', '20/05/1977', '01/10/1996', '', '', 'MANAGER LOGISTIQUE', '', '', '', 1, ''),
(126, '00030', 1, 'PAYRAUDEAU BRUNO', '', '', '  14       RUE DES POTIERS', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '16/02/1967', '27/04/1988', '', '', 'MAGASINIER', '', '', '', 1, ''),
(127, '00070', 1, 'PELE PATRICK', '', '', '  27       RUE AUGUSTE RENOIR', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '09/06/1970', '10/12/1990', '', '', 'CHAUDRONNIER FINISSEUR', '', '', '', 1, ''),
(128, '00916', 1, 'PERCHER STEPHANE', '', '', '  23       RUE DE LA CLAYE', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '15/06/1969', '17/07/1995', '', '', 'PEINTRE LIQUIDE', '', '', '', 1, ''),
(129, '00920', 1, 'PERRAULT XAVIER', '', '', '           CHEMIN DES ALLIES', '49330', 'ETRICHE', '', '', '', '22/12/1975', '23/03/1998', '', '', 'CHAUDRONNIER FINISSEUR', '', '', '', 1, ''),
(130, '00045', 1, 'PERRUSSEL FREDERIC', '', '', '   5       VIEILLE RUE', '49330', 'CHAMPIGNE', '', '', '', '12/11/1974', '17/11/1997', '', '', 'OPERATEUR/REGLEUR CN', '', '', '', 1, ''),
(131, '00048', 2, 'PETEUL VERONIQUE', '', '', '   6       RUE DU VERT BOCAGE', '49480', 'ST SYLVAIN D ANJOU', '', '', '', '14/01/1962', '06/03/2000', '', '', 'COMPTABLE', '', '', '', 1, ''),
(132, '00032', 1, 'PIEDNOIR LUDOVIC', '', '', '   7       RUE DES CHARMILLES', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '06/01/1970', '28/06/1988', '', '', 'MANAGER UNITE DE PRODUCTION', '', '', '', 1, ''),
(133, '00033', 1, 'PINEAU GUY', '', '11 RUE DES LANDES', '', '49170', 'ST LEGER DES BOIS', '', '', '', '11/01/1954', '03/11/1988', '', '', 'MANOEUVRE', '', '', '', 1, ''),
(134, '00709', 1, 'POLLET MAXIME', '', '4 IMPASSE DES NOISETIERS', '', '49070', 'SAINT LAMBERT LA POTHERIE', '', '', '', '19/04/1982', '05/09/2005', '', '', 'OPERATEUR SUR CN', '', '', '', 1, ''),
(135, '00103', 1, 'QUINTON DENIS', '', 'LOT. VALLON DU MOULIN', '   2       RUE DES AIGRETTES', '49080', 'BOUCHEMAINE', '', '', '', '21/12/1980', '16/08/2011', '', '', 'ACHETEUR PROJET AQF', '', '', '', 1, ''),
(136, '00520', 2, 'RENOU BRIAND MARIE PASCALE', '', '', '   5       ALLEE DES MERISIERS', '49080', 'BOUCHEMAINE', '', '', '', '26/06/1964', '01/04/2002', '', '', 'MANAGER QSE', '', '', '', 1, ''),
(137, '00695', 2, 'RETIER STEPHANIE', '', '', '           MELINE', '49500', 'MARANS', '', '', '', '26/09/1981', '04/07/2005', '', '', 'GESTIONNAIRE', '', '', '', 1, ''),
(138, '00092', 1, 'REZE MAURICE', '', '', '  15       IMPASSE DES VIGNES', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '10/10/1957', '04/09/2000', '', '', 'CHAUFFEUR', '', '', '', 1, ''),
(139, '00664', 1, 'RIANT DIMITRI', '', '', '  60       RUE DE LA TERNIERE', '49240', 'AVRILLE', '', '', '', '28/07/1984', '06/09/2004', '', '', 'OPERATEUR SUR CN', '', '', '', 1, ''),
(140, '00072', 1, 'RICOUL FREDERIC', '', '', '  22       RUE DES COTEAUX', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '02/08/1969', '04/02/1991', '', '', 'MANAGER UNITE DE PRODUCTION', '', '', '', 1, ''),
(141, '00769', 2, 'RIVERON GESLOT MARIE BEATRICE', '', '', '  10       Rue Jean Cocteau', '49770', 'LA MENBROLLE SUR LONGUENEE', '', '', '', '27/07/1960', '17/10/2005', '', '', 'AGENT DE FABRICATION', '', '', '', 1, ''),
(142, '00680', 1, 'ROBERT NICOLAS', '', '', ' 119       AVENUE MENDES FRANCE', '49240', 'AVRILLE', '', '', '', '11/11/1987', '01/09/2012', '', '', 'PEINTRE LIQUIDE', '', '', '', 1, ''),
(143, 'PAROY', 1, 'ROY PASCAL', '', '4 A Boulevard de l''ERDRE', '', '49440', 'CANDE', '', '', '', '26/11/1968', '02/02/2015', '', '', 'SOUDEUR PAR POINT', '', '', '', 1, ''),
(144, '00416', 1, 'SANTINI NICOLAS', '', '1 L''HERMITAGE', '', '49370', 'BECON LES GRANITS', '', '', '', '17/11/1992', '01/10/2013', '', '', 'OP / REGLEUR SUR CU', '', '', '', 1, ''),
(145, '00746', 1, 'SAVIDAN MICKAEL', '', '', '   9       RUE DES ROSEAUX', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '11/05/1984', '03/01/2006', '', '', 'OPERATEUR SUR CN', '', '', '', 1, ''),
(146, '00049', 1, 'SNGAN YANN', '', '', '           LE GRAND JALMIN', '49370', 'BECON LES GRANITS', '', '', '', '14/03/1960', '05/05/2008', '', '', 'PEINTRE LIQUIDE', '', '', '', 1, ''),
(147, '00608', 1, 'TANCRAY FRANCK', '', '', '  14       SQUARE DE L''EUROPE', '49220', 'VERN D ANJOU', '', '', '', '18/07/1977', '02/09/2002', '', '', 'MONTEUR', '', '', '', 1, ''),
(148, '00699', 1, 'TESSIER IGOR', '', '', '  70       RUE PIERRE SEMARD', '49800', 'TRELAZE', '', '', '', '20/01/1980', '05/09/2005', '', '', 'PEINTRE LIQUIDE', '', '', '', 1, ''),
(149, '00181', 1, 'THIFINE YANN', '', '', '   6       RUE DES GUERANDAIS', '49370', 'ST CLEMENT DE LA PLACE', '', '', '', '26/09/1970', '14/09/1994', '', '', 'OPERATEUR/REGLEUR CN', '', '', '', 1, ''),
(150, '00109', 1, 'TIDAHY JACQUES CORNELIO', '', '', '  33       RUE LOUIS GAIN', '49000', 'ANGERS', '', '', '', '15/03/1988', '03/10/2011', '', '', 'chaudronnier soudeur', '', '', '', 1, ''),
(151, '00191', 1, 'TOURET OLIVIER', '', '', '  15       RUE ST JEAN', '49800', 'SARRIGNE', '', '', '', '13/11/1970', '08/02/1995', '', '', 'TECHNICO COMMERCIAL', '', '', '', 1, ''),
(152, '00712', 1, 'TREDAN YOHANN', '', '', '  30       PLACE SCHWALBACH', '49240', 'AVRILLE', '', '', '', '28/06/1982', '29/08/2011', '', '', 'MICROBILLAGE', '', '', '', 1, ''),
(153, '00066', 1, 'TROUBOUL FLORENT', '', '', '   4       RUE DU BOURG', '49070', 'BEAUCOUZE', '', '', '', '18/04/1979', '13/10/2009', '', '', 'TECHNOLOGUE SOUDURE', '', '', '', 1, ''),
(154, 'XATUD', 1, 'TUDOUX XAVIER', '', '43 rue des Amaryllis', '', '49170', 'SAINT AUGUSTIN DES BOIS', '', '', '', '27/05/1991', '02/02/2015', '', '', 'OPERATEUR SUR CN', '', '', '', 1, ''),
(155, '00152', 1, 'VERDON FREDERIC', '', '', '   2       RUE D''ANJOU', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '16/11/1965', '08/02/1994', '', '', 'TECHNICIEN METHODES', '', '', '', 1, ''),
(156, '00532', 1, 'VERGNE BRUNO', '', '', '  27       RUE PIERRE JOSEPH PRO', '49000', 'ANGERS', '', '', '', '07/08/1979', '18/07/2013', '', '', 'RESPONSABLE INNOVAT ET DEVPT', '', '', '', 1, ''),
(157, '00800', 1, 'VITRY JEAN FRANCOIS', '', '', '   7       RUE DE LA SOURCE', '49070', 'SAINT JEAN DE LINIERES', '', '', '', '21/09/1956', '04/06/2007', '', '', 'AGENT DE PRODUCTION', '', '', '', 1, ''),
(158, '00750', 1, 'VOYE BORIS', '', '', '   7       rue Madame DE SEVIGNE', '49220', 'VERN D ANJOU', '', '', '', '17/07/1982', '01/12/2005', '', '', 'OPERATEUR SUR CN', '', '', '', 1, ''),
(159, '00919', 1, 'YOU EMMANUEL', '', '', '  10       RUE DES LANDES', '49070', 'ST LAMBERT LA POTHERIE', '', '', '', '12/05/1970', '01/06/1992', '', '', 'OPERATEUR PEINTURE', '', '', '', 1, ''),
(160, '00037', 1, 'YOU MICHEL', '', '', '   9       RUE DE LA PREE AU LIN', '49070', 'ST JEAN DE LINIERES', '', '', '', '16/05/1966', '13/11/1986', '', '', 'PILOTE EXPEDITION', '', '', '', 1, '');

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
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
  MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
  MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
  MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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
  MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
  MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
  MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
  MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
  MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
  MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
  MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
  MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
  MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
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
  MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
  MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
  MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT;
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
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
