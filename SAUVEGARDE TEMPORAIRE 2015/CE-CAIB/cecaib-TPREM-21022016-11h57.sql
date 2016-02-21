-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2016 à 11:57
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cecaib`
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
(3, '30-06-2015', 2, '16', '315.2', ''),
(4, '30-06-2015', 1, '40', '272', ''),
(5, '29-09-2015', 1, '4', '27.2', '1747645052');

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
(12, 1, 'Achat: PISCINE PASS 5 ENTREES', '315.2', '', ''),
(13, 1, 'Achat: CINEMA CINEMOVIDA', '272', '', ''),
(14, 2, 'Vente de Billetterie: BRIATTE Paola pour la prestation PISCINE PASS 5 ENTREES', '', '15', '30535137'),
(15, 2, 'Vente de Billetterie: GERMAIN Jacques pour la prestation PISCINE PASS 5 ENTREES', '', '15', '44742020'),
(16, 2, 'Vente de Billetterie: RIMBAULT Céline pour la prestation PISCINE PASS 5 ENTREES', '', '15', '35943502'),
(17, 2, 'Vente de Billetterie: BERSON Meddy pour la prestation PATINOIRE PASS 5 ENTREES SANS PATINS', '', '24', '14597509'),
(18, 2, 'Vente de Billetterie: GODINEAU Pierre pour la prestation CINEMA CINEMOVIDA', '', '20', '36704772'),
(19, 2, 'Vente de Billetterie: PIOU Stéphanie pour la prestation CINEMA CINEMOVIDA', '', '20', '92761460'),
(20, 2, 'Vente de Billetterie: GERMAIN Jacques pour la prestation CINEMA CINEMOVIDA', '', '20', '40148648'),
(21, 2, 'Vente de Billetterie: RODOLPHE Angélique pour la prestation CINEMA CINEMOVIDA', '', '20', '54316775'),
(22, 2, 'Vente de Billetterie: DEFOIS Christian pour la prestation CINEMA CINEMOVIDA', '', '20', '76330150'),
(24, 2, 'Vente de Billetterie: BROSSET Bertrand pour la prestation grand parc du puy du fou  tarif adulte', '', '153.6', '69619821'),
(26, 2, 'Vente de Billetterie: BROSSET Bertrand pour la prestation grand parc du puy du fou  tarif adulte', '', '153.6', '29965660'),
(28, 2, 'Vente de Billetterie: RETAILLEAU Tania pour la prestation CINEMA CINEMOVIDA', '', '20', '34201582'),
(41, 1, 'Achat: CINEMA CINEMOVIDA', '27.2', '', '1747645052'),
(43, 2, 'Vente de Billetterie: AUBINEAU Daniel pour la prestation PISCINE PASS 5 ENTREES', '', '15', '3449623'),
(45, 2, 'Vente de Billetterie: ALLARD Marie-France pour la prestation CINEMA CINEMOVIDA', '', '20', '97351152'),
(47, 2, 'Vente de Billetterie: BARANGER Franck pour la prestation ', '', '0', '92739971'),
(48, 2, 'Vente de Billetterie: BARANGER Franck pour la prestation festival de poupet ', '', '54', '11190408');

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

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`, `num_mouvement`) VALUES
(7, 67, '30-06-2015', 3, '15', 1, '30535137'),
(8, 183, '30-06-2015', 3, '15', 1, '44742020'),
(9, 360, '30-06-2015', 3, '15', 1, '35943502'),
(10, 33, '30-06-2015', 3, '24', 0, '14597509'),
(11, 191, '23-06-2015', 3, '20', 0, '36704772'),
(12, 332, '30-06-2015', 3, '20', 1, '92761460'),
(13, 183, '23-06-2015', 3, '20', 1, '40148648'),
(14, 364, '30-06-2015', 3, '20', 1, '54316775'),
(15, 126, '30-06-2015', 3, '20', 1, '76330150'),
(16, 74, '30-06-2015', 3, '0', 1, '78712781'),
(17, 74, '30-06-2015', 3, '0', 1, '122838'),
(18, 347, '15-07-2015', 3, '0', 0, '63967735'),
(32, 5, '29-09-2015', 3, '0', 0, '53129871'),
(33, 19, '26-01-2016', 3, '54', 1, '11190408');

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
(2, 1, 'Poste', 'DOCUMENTATION'),
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
(1, 'COMITE D''ENTREPRISE CAIB', '0', '0', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
(12, '', '1435615200', 'Achat - PISCINE PASS 5 ENTREES', '315.2', ''),
(13, '', '1435615200', 'Achat - CINEMA CINEMOVIDA', '272', ''),
(14, '30535137', '1435615200', 'Vente de Billetterie: BRIATTE Paola pour la prestation PISCINE PASS 5 ENTREES', '', '15'),
(15, '44742020', '1435615200', 'Vente de Billetterie: GERMAIN Jacques pour la prestation PISCINE PASS 5 ENTREES', '', '15'),
(16, '35943502', '1435615200', 'Vente de Billetterie: RIMBAULT Céline pour la prestation PISCINE PASS 5 ENTREES', '', '15'),
(17, '14597509', '1435615200', 'Vente de Billetterie: BERSON Meddy pour la prestation PATINOIRE PASS 5 ENTREES SANS PATINS', '', '24'),
(18, '36704772', '1435010400', 'Vente de Billetterie: GODINEAU Pierre pour la prestation CINEMA CINEMOVIDA', '', '20'),
(19, '92761460', '1435615200', 'Vente de Billetterie: PIOU Stéphanie pour la prestation CINEMA CINEMOVIDA', '', '20'),
(20, '40148648', '1435010400', 'Vente de Billetterie: GERMAIN Jacques pour la prestation CINEMA CINEMOVIDA', '', '20'),
(21, '54316775', '1435615200', 'Vente de Billetterie: RODOLPHE Angélique pour la prestation CINEMA CINEMOVIDA', '', '20'),
(22, '76330150', '1435615200', 'Vente de Billetterie: DEFOIS Christian pour la prestation CINEMA CINEMOVIDA', '', '20'),
(24, '69619821', '1435615200', 'Vente de Billetterie: BROSSET Bertrand pour la prestation grand parc du puy du fou  tarif adulte', '', '153.6'),
(26, '29965660', '1435615200', 'Vente de Billetterie: BROSSET Bertrand pour la prestation grand parc du puy du fou  tarif adulte', '', '153.6'),
(28, '34201582', '1436911200', 'Vente de Billetterie: RETAILLEAU Tania pour la prestation CINEMA CINEMOVIDA', '', '20'),
(41, '1747645052', '1443477600', 'Achat - CINEMA CINEMOVIDA', '27.2', ''),
(43, '3449623', '1443477600', 'Vente de Billetterie: AUBINEAU Daniel pour la prestation PISCINE PASS 5 ENTREES', '', '15'),
(45, '97351152', '1443477600', 'Vente de Billetterie: ALLARD Marie-France pour la prestation CINEMA CINEMOVIDA', '', '20'),
(47, '92739971', '1453762800', 'Vente de Billetterie: BARANGER Franck pour la prestation ', '', '0'),
(48, '11190408', '1453762800', 'Vente de Billetterie: BARANGER Franck pour la prestation festival de poupet ', '', '54');

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
(1, 'ACTIVITES FAMILIALES'),
(2, 'LOCATIONS MOBILHOME'),
(3, 'CADEAUX ET BONS D''ACHATS'),
(4, 'CONCERTS ET SPECTACLES'),
(6, 'Festival de Poupet ');

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
(6, 7, 2, '1', '15', '4.7', 0, ''),
(7, 8, 2, '1', '15', '4.7', 0, ''),
(8, 9, 2, '1', '15', '4.7', 0, ''),
(9, 10, 3, '2', '24', '9.4', 0, ''),
(10, 11, 1, '4', '20', '7.2', 0, ''),
(11, 12, 1, '4', '20', '7.2', 0, ''),
(12, 13, 1, '4', '20', '7.2', 0, ''),
(13, 14, 1, '4', '20', '7.2', 0, ''),
(14, 15, 1, '4', '20', '7.2', 0, ''),
(38, 33, 0, '', '0', '0', 0, ''),
(39, 33, 19, '2', '54', '20', 0, '');

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
(5, '1.6.1', '15315-PREM');

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
(6, 'CAIB49', 'b750f74544cb00c138079607276995e9', 1);

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

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`) VALUES
(1, 1, 'CINEMA CINEMOVIDA', '01-01-2015', '31-12-2015', '5', '1.80', '6.8', '4', '36', 0),
(2, 1, 'PISCINE PASS 5 ENTREES', '01-06-2015', '31-12-2015', '15', '4.70', '19.7', '100', '12', 0),
(3, 1, 'PATINOIRE PASS 5 ENTREES SANS PATINS', '01-06-2015', '31-12-2015', '12', '4.70', '16.7', '100', '1', 0),
(4, 1, 'PATINOIRE PASS 5 ENTREES AVEC PATINS', '03-06-2015', '31-12-2015', '25', '5.5', '30.5', '100', '4', 0),
(5, 3, 'COLIS DE NOEL', '01-01-2015', '31-12-2015', '0', '28', '28', '1', '450', 0),
(10, 1, 'KIDI MUNDI enfants de 1 &agrave; 3 ans ', '30-06-2015', '30-06-2015', '5.50', '1â‚¬', '6.5', '100', '1', 0),
(11, 1, 'KIDI MUNDI enfants de 4 &agrave; 12ans ', '30-06-2015', '30-06-2015', '6.50', '2â‚¬', '8.5', '100', '10', 0),
(13, 4, 'grand parc du puy du fou  tarif adulte', '11-06-2015', '27-09-2015', '25.60', '2â‚¬', '27.6', '100', '100', 0),
(14, 4, 'grand parc du puy du fou  tarif enfant', '11-04-2015', '27-09-2015', '16.40', '2â‚¬', '18.4', '100', '98', 0),
(15, 4, 'cinesc&eacute;nie du puy du fou tarif adulte ', '03-07-2015', '12-09-2015', '22.70', '2â‚¬', '24.7', '100', '100', 0),
(16, 4, 'cinesc&eacute;nie du puy du fou tarif enfant', '03-07-2015', '12-09-2015', '15.10', '2â‚¬', '17.1', '100', '100', 0),
(17, 4, 'int&eacute;grale cinesc&eacute;nie du puy du fou tarif adulte  + Grand parc  tarif adulte ', '03-07-2015', '12-09-2015', '42.65', '2â‚¬', '44.65', '100', '100', 0),
(18, 4, 'int&eacute;grale cinesc&eacute;nie du puy du fou tarif adulte  + Grand parc  tarif enfant', '03-07-2015', '12-09-2015', '25.55', '2â‚¬', '27.55', '100', '100', 0),
(19, 4, 'festival de poupet ', '22-01-2016', '', '27â‚¬', '10â‚¬', '37', '2 ', '98', 0);

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
(5, 7, 1, '15', 'credit mutuel', 'briatte paola ', '8917946', 0),
(7, 8, 1, '15', 'credit agricole', 'germain jacques', '0625463', 0),
(8, 9, 1, '15', 'banque populaire atlantique ', 'rimbault david', '0000130', 0),
(9, 12, 1, '20', 'credit agricole', 'piou stephane ', '6252535', 0),
(10, 13, 1, '20', 'credit agricole', 'germain jacques', '0625465', 0),
(11, 14, 1, '20', 'credit agricole', 'rodolphe angelique', '7131748', 0),
(12, 15, 1, '20', 'credit agricole', 'defois christian', '4000159', 0),
(15, 18, 1, '35', 'credit agricole', 'retailleau tania', '00055261320', 0),
(16, 33, 3, '54', '', '', '696850727', 0);

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
(2, '', 0, 'ABBA', 'Sohaib', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(3, '', 0, 'ADAM', 'Florian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(4, '', 0, 'AHMED OSMAN', 'Abderraouf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(5, '', 2, 'ALLARD', 'Marie-France', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(6, '', 0, 'ANDRE', 'Marie-Rose', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(7, '', 0, 'ANGEVIN', 'Pascal', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(8, '', 0, 'AUBINEAU', 'Daniel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(9, '', 1, 'AUDIGANE', 'Fr&eacute;d&eacute;ric', '1B Rue De La Guimellerie', '', '49600', 'Beaupreau', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(10, '', 1, 'AUGEREAU', 'Christophe', '1 Chemin des 3 Ch&ecirc;nes', '', '49120', 'Chemille Melay', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(11, '', 0, 'AUGEREAU', 'Rachel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(12, '', 0, 'AUNAI', 'Christian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(13, '', 1, 'AUVINET', 'Antoine', '1 Rue de Cou&eacute;tard', '', '44320', 'St Viaud', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(14, '', 0, 'BABONNEAU', 'Jean-François', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(15, '', 0, 'BABY', 'Patrick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(16, '', 1, 'BACONNAIS', 'Tanguy', '34 Rue De St Andr&eacute;', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(17, '', 1, 'BAFFET', 'Nicolas', '44 Rue Du Ch&egrave;ne ', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(18, '', 0, 'BALUTAUD', 'Romain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(19, '', 1, 'BARANGER', 'Franck', '06 rue jacques cartier', '', '49300', 'cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(20, '', 1, 'BARBOT', 'Joseph', '26 Rue Du Ch&ecirc;ne', '', '53410', 'ST Pierre La Cour', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(21, '', 2, 'BARBOT', 'Magali', '6 Rue Du Bordage Lamy', '', '49360', 'Toutmonde', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(22, '', 0, 'BARON', 'Jacques', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(23, '', 0, 'BARREAU', 'Julien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(24, '', 0, 'BAUDON', 'Franck', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(25, '', 1, 'BAUDOUIN', 'Michel', '35 Rue Du Docteur Perrotin', '', '85120', 'Breuil Barret', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(26, '', 0, 'BAZIN', 'Thomas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(27, '', 2, 'BECHU', 'Nadine', '12 T Rue Du Vigneau', '', '49450', 'Roussay', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(28, '', 0, 'BECOT', 'Emmanuel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(29, '', 0, 'BELIARD', 'Jean-Marie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(30, '', 0, 'BELLANGER', 'Sophie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(31, '', 0, 'BERNARD', 'Luc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(32, '', 1, 'BERNIER', 'Alain', '19 Rue De La Boulaie', '', '49340', 'NuallÃ©', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(33, '', 0, 'BERSON', 'Meddy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(34, '', 0, 'BIBOLLET', 'Aurélie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(35, '', 2, 'BICHON', 'Nathalie', '9 Impasse Du Neflier', '', '85290', 'St Laurent Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(36, '', 0, 'BIDET', 'Godefroy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(37, '', 0, 'BIGOT', 'Stéphane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(38, '', 0, 'BILBOT', 'Laurent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(39, '', 2, 'BIRAUD', 'H&eacute;l&egrave;ne', 'Lieu Dit Le Buron Les Aubiers', '', '79250', 'Nueil Les Aubiers', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(40, '', 1, 'BITEAU', 'Yannick', '10 Rue Bayard', '', '49280', 'St Christophe Du bois', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(41, '', 0, 'BIZON', 'Jérémy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(42, '', 0, 'BIZON', 'Loïc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(43, '', 0, 'BLANCHARD', 'François', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(44, '', 1, 'BLOUIN', 'Jean-Michel', '22 Rue Du Bocage', '', '49122', 'BÃ©grolles En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(45, '', 0, 'BLOUIN', 'Jean-Paul', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(46, '', 0, 'BLOUIN', 'Régis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(47, '', 2, 'BODY', 'Patricia', 'LD La Coquerie De Cl&eacute;nay', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(48, '', 0, 'BOISSEAU', 'Romain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(49, '', 1, 'BOLTEAU CHEVET', 'Catherine', '5 rue du Commandant De Beaufort', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(50, '', 0, 'BONDU', 'Jean-Claude', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(51, '', 0, 'BONDY', 'Patrice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(52, '', 0, 'BORDET', 'Sébastien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(53, '', 1, 'BORGMANN', 'C&eacute;dric', '20 Bd De La rochejaquelin', '', '85290', 'St Laurent Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(54, '', 2, 'BOSSARD', 'Claudie', '5 All&eacute;e des M&eacute;sanges', '', '49660', 'Tourfou', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(55, '', 0, 'BOSSARD', 'Jean-Louis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(56, '', 0, 'BOSSEAU', 'Christel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(57, '', 0, 'BOUCHET', 'Lucie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(58, '', 1, 'BOUDEAU', 'Thierry', 'APPT 27 ETAGE 3 34 Rue De La Holland', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(59, '', 0, 'BOULAY', 'Vincent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(60, '', 0, 'BOURCIER', 'Jacquelin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(61, '', 2, 'BOURCIER', 'Nelly', '1 Square des bois', '', '49360', 'MaulÃ©vrier', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(62, '', 0, 'BOUTET', 'Christelle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(63, '', 0, 'BOUTET', 'Philippe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(64, '', 0, 'BRAM DIT SAINT AMAND', 'Pierre Olivier', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(65, '', 0, 'BRANGEON', 'Bastien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(66, '', 0, 'BRETON', 'Karine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(67, '', 2, 'BRIATTE', 'Paola', '17 Rue de la Morini&egrave;re ', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(68, '', 1, 'BRIAUD', 'Olivier', '9 Rue Des Ferronniers', '', '49280', 'St Christophe Du Bois', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(69, '', 0, 'BRIERE', 'Matthieu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(70, '', 1, 'BROCHARD', 'Anthony', '7 rue Andr&eacute; Le Notre', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(71, '', 0, 'BROCHARD', 'Stéphane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(72, '', 1, 'BRONDY', 'Romain', '15 Rue Alphonse Daudet', '', '79140', 'Cerizay', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(73, '', 0, 'BROSSARD', 'Nathalie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(74, '', 1, 'BROSSET', 'Bertrand', '7 Place Du Docteur Fruchaud', '', '49340', 'TrÃ©mentines', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(75, '', 0, 'BROSSET', 'Claudine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(76, '', 1, 'BROUSSEAU', 'Christophe', 'Lot Clos Du Patis 14 rue De La Quintaine', '', '49122', 'BÃ©grolles En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(77, '', 0, 'BUFFARD', 'Laurent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(78, '', 0, 'BURON', 'Mickaël', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(79, '', 1, 'CABALLERO', 'WILLIAM', '8 rue du G&eacute;n&eacute;ral Leclerc', '', '49340', 'NuallÃ©', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(80, '', 2, 'CAILLEAU', 'Ingrid', '12 rue Du Grain D'' Orge', '', '49340', 'NuallÃ©', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(81, '', 2, 'CAILLET', 'Caroline', '6 Rue du Sacr&eacute; Coeur', '', '85290', 'St Laurent Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(82, '', 0, 'CALATAYUD', 'Audrey', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(83, '', 0, 'CANTEAU', 'Yann', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(84, '', 0, 'CAOUREN', 'Sébastien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(85, '', 0, 'CASSIN', 'Catherine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(86, '', 0, 'CASTELLA', 'Manuel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(87, '', 0, 'CESBRON', 'Corinne', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(88, '', 0, 'CHALAYE', 'Eric', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(89, '', 0, 'CHALON', 'Julien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(90, '', 0, 'CHAMPAIN', 'Anabelle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(91, '', 0, 'CHARPENTIER', 'Thierry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(92, '', 0, 'CHARRIAT', 'Antoine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(93, '', 0, 'CHARUAUD', 'Catherine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(94, '', 0, 'CHASSELOUP', 'Marie-Renée', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(95, '', 0, 'CHASSERIAU', 'Stessy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(96, '', 1, 'CHAUVEAUX', 'Tony', '28 Rue Du Pr&eacute; Archer', '', '49600', 'Beaupreau', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(97, '', 0, 'CHAUVIN', 'Jean-Christophe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(98, '', 0, 'CHERBONNIER', 'Samuel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(99, '', 1, 'CHEVALIER', 'Fran&ccedil;ois', '18 B Avenue Du 11 novembre', '', '85130', 'La Verrie', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(100, '', 0, 'CHIKHOUNE', 'Jean-Pierre', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(101, '', 0, 'CHIRON', 'Christine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(102, '', 2, 'CHOISNET', 'Edith', '9 Rue Des Malembardi&egrave;res', '', '49800', 'TrÃ©lazÃ©', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(103, '', 0, 'CHOMEZ', 'Jean-Pierre', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(104, '', 0, 'CHOUPIN', 'Antoine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(105, '', 0, 'CHUPIN', 'Alain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(106, '', 2, 'CHUPIN', 'S&eacute;verine', '5 Impasse de la Lozi&egrave;re', '', '85130', 'ST Aubin Des Ormeaux', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(107, '', 2, 'CHUPIN', 'Sophie', '14 All&eacute;e Des Ecuries', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(108, '', 2, 'CLAIR', 'Marie Christine', '8 Rue De Rome', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(109, '', 0, 'CLAVIER', 'Pascal', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(110, '', 0, 'COINDET', 'Kristell', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(111, '', 0, 'COUFLEAU', 'Thomas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(112, '', 2, 'COURANT', 'Dolor&egrave;s', '39 rue Du stade', '', '79140', 'Combrand', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(113, '', 0, 'COUSIN', 'Valérie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(114, '', 0, 'COUTANT', 'Rémi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(115, '', 0, 'COUTAUD', 'Isabelle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(116, '', 0, 'COYAC', 'Alain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(117, '', 0, 'CRIBIER', 'Stéphane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(118, '', 0, 'DABIN', 'Luc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(119, '', 0, 'Daniel', 'Véronique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(120, '', 1, 'DAVIET', 'Yohan', '15 rue Du Mar&eacute;chal Juin', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(121, '', 0, 'DE FREITAS NUNES', 'Bruno', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(122, '', 0, 'DE HARO', 'Frank', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(123, '', 3, 'DE OLIVEIRA', 'Monica', '22 rue Louis Richard', '', '79140', 'Cerizay', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(124, '', 0, 'DEBIEN', 'Mickaël', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(125, '', 0, 'DEBORDE', 'Benoît', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(126, '', 1, 'DEFOIS', 'Christian', '1, passage de l''union ', '', '49340', 'trementines', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(127, '', 1, 'DEFONTAINE', 'Alain', '3 All&eacute;e De La Taponnerie', '', '49450', 'St AndrÃ© De La Marche', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(128, '', 0, 'DELACOUR', 'Stéphane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(129, '', 0, 'DELAUNAY', 'Laurent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(130, '', 0, 'DELFORGE', 'Gérald', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(131, '', 0, 'DENAT', 'Isabelle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(132, '', 0, 'DESCHAMPS', 'Christophe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(133, '', 1, 'DESCHAMPS', 'Yoann', '9 rue de la Hugrenais', '', '35350', 'La GouesniÃ¨re', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(134, '', 0, 'DESHAIES', 'Nathalie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(135, '', 1, 'DIAS', 'Yohann', '1 Square Moli&egrave;re', '', '49122', 'Le May Sur Evre', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(136, '', 0, 'DIOUBATE', 'Amadou', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(137, '', 0, 'DJAMA', 'Thomas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(138, '', 0, 'DOKTAS', 'Camledi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(139, '', 1, 'DOKTAS', 'Halil', '5 Rue De Belle Vue', '', '49280', 'MaziÃ¨re En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(140, '', 1, 'DOUANGPANGNA', 'Alexis', '18 Rue des mauges', '', '49600', 'Beaupreau', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(141, '', 0, 'DOUCET', 'Daniel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(142, '', 0, 'DROUET', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(143, '', 0, 'DROUET', 'Laurent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(144, '', 2, 'DROUET', 'Sylvie', 'App 12 33 Place De Saumur', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(145, '', 0, 'DUBILLOT', 'Estelle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(146, '', 0, 'DUHAMEL', 'François', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(147, '', 2, 'DUPE', 'Sophie', '3 Sqare De L''Epinette', '', '49122', 'BÃ©grolles En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(148, '', 0, 'DURAND', 'Julien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(149, '', 0, 'DURAND', 'Marjorie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(150, '', 0, 'EL HOUTI', 'Ahmed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(151, '', 0, 'EN NOUJOUMI', 'Omar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(152, '', 0, 'ENFREIN', 'Thierry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(153, '', 3, 'ERCEAU', 'Pauline', '15 Rue Des Acacias', '', '85590', 'St Malo Du Bois', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(154, '', 2, 'FAUCHET', 'Monique', '8 Cit&eacute; Du Rabaly', '', '79700', 'MaulÃ©on', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(155, '', 0, 'FER', 'Philippe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(156, '', 1, 'FERRERE', 'Vincent', '67 Rue De L''Industrie', '', '85290', 'Motagne Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(157, '', 0, 'FIEVET', 'Antoine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(158, '', 0, 'FIEVRE', 'Myriam', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(159, '', 1, 'FIEVRE', 'Yannick', '5 Rue De La Cascade', '', '49450', 'Roussay', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(160, '', 0, 'FILLAUDEAU', 'Joël', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(161, '', 2, 'FONTENEAU', 'Catherine', 'Lieu Dit L''Ecluseau', '', '49450', 'La RenaudiÃ¨re', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(162, '', 0, 'FONTENEAU', 'Fabrice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(163, '', 0, 'FONTENEAU', 'Hélène', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(164, '', 0, 'FONTENEAU', 'Sylvain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(165, '', 0, 'FOUCAUD', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(166, '', 0, 'FOURRIER', 'Jean-Paul', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(167, '', 0, 'FROUIN', 'Amélie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(168, '', 0, 'FUSEAU', 'Sarah', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(169, '', 0, 'GABORIAU', 'Corentin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(170, '', 0, 'GABORIAU', 'Jean-Louis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(171, '', 1, 'GABORIT', 'Sï¿½bastien', '16 Rue Saint Louis', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(172, '', 1, 'GALLARD', 'Jean-Louis', '7 Rue Elie Pouplard', '', '49110', 'Chaudron En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(173, '', 0, 'GALLOT', 'Pascal', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(174, '', 0, 'GASCOIN', 'Séverine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(175, '', 0, 'GAUDU', 'Nicolas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(176, '', 1, 'GAUTHIER', 'Nadine', '13 rue Des Jonquilles', '', '49122', 'BÃ©grolles En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(177, '', 1, 'GAUTIER', 'Anthony', '28 La Palaire', '', '44190', 'St Hilaire De Clisson', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(178, '', 0, 'GAUTIER', 'Benoît', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(179, '', 1, 'GAUTIER', 'Elisabeth', 'La Vratti&egrave;re', '', '85130', 'La Verrie', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(180, '', 0, 'GAUTIER', 'Gabriel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(181, '', 0, 'GAUTIER', 'Pauline', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(182, '', 0, 'GAY', 'Vincent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(183, '', 1, 'GERMAIN', 'Jacques', '45 rue de lorraine', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(184, '', 1, 'GIRARD', 'St&eacute;phane', 'Rue De La Chaillou', '', '49120', 'Chemille', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(185, '', 0, 'GIRARDEAU', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(186, '', 0, 'GIRARDEAU', 'Paula', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(187, '', 1, 'GIRAUD', 'Marcel', '13 Rue Des Jardiniers', '', '49360', 'MaulÃ©vrier', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(188, '', 0, 'GODET', 'Sébastien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(189, '', 0, 'GODEY', 'Pascal', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(190, '', 1, 'GODINEAU', 'Alexandre', '16 Rue des Chemin Crueux', '', '49280', 'MaziÃ¨re En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(191, '', 0, 'GODINEAU', 'Pierre', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(192, '', 0, 'GODINEAU', 'Stéphane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(193, '', 0, 'GOICHON', 'Thierry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(194, '', 2, 'GOMBERT', 'Emeline', '2 Chemin De Bel Air', '', '85590', 'St Malo Du bois', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(195, '', 0, 'GORGET', 'Christophe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(196, '', 0, 'GOURDON', 'Cyndie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(197, '', 0, 'GOURMAUD', 'Françoise', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(198, '', 0, 'GOUSSEAU', 'David', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(199, '', 2, 'GRAVELEAU', 'Armelle', '3 Square Des Landes Sureau', '', '49280', 'St LÃ©ger sous Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(200, '', 0, 'GRELET', 'Arnaud', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(201, '', 2, 'GRETEAU', 'Manuella', '18 Rue Des Combrailles', '', '49230', 'St Crespin Sur Moine', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(202, '', 0, 'GRIFFON', 'Jonathan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(203, '', 1, 'GRIVES', 'Florian', '23 Rue de La R&eacute;publique', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(204, '', 0, 'GROLLEAU', 'Benoist', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(205, '', 0, 'GROLLEAU', 'Yannick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(206, '', 0, 'GUEDON', 'Hélène', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(207, '', 0, 'GUERIN', 'Alain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(208, '', 0, 'GUERIN', 'Jérome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(209, '', 2, 'GUICHETEAU', 'Marie-Christine', '3 All&eacute;e De Bellevue montign&eacute; Sur Moine', '', '49230', 'Montfaucon MontignÃ©', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(210, '', 0, 'GUIET', 'Jean-Pierre', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(211, '', 0, 'GUILLARD', 'Marina', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(212, '', 1, 'GUILLEMAIN', 'Frï¿½dï¿½ric', '20 Rue De Marsala', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(213, '', 0, 'GUILLET', 'Didier', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(214, '', 1, 'GUILLOT', 'Olivier', '2 rue de bourr&eacute;', '', '41400', 'Pontlevoy', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(215, '', 1, 'GUIMBRETIERE', 'Herv&eacute;', '87 Rue Bargeot', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(216, '', 0, 'GUINE', 'Sullivan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(217, '', 1, 'GUYOT', 'Steve', 'Appt 20202eme Etage 149 Rue Nationale', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(218, '', 2, 'HAVAS', 'Sandy', '9 Rue Simone Signoret', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(219, '', 0, 'HERVOCHON', 'Franck', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(220, '', 1, 'HOEPPE', 'Fran&ccedil;ois', 'La Clairi&egrave;re', '', '85700', 'Les Chatelliers Chateaumur', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(221, '', 0, 'HOGDAY', 'Jannick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(222, '', 0, 'HORTALA', 'Nathalie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(223, '', 0, 'HOUEIX', 'Philippe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(224, '', 0, 'HOUMADI', 'Houtoibou', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(225, '', 1, 'HUET', 'S&eacute;bastien', '51 rue De tr&eacute;mentine', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(226, '', 0, 'HULLIN', 'Benoît', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(227, '', 0, 'HUMEAU', 'Philippe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(228, '', 0, 'HURTAUD', 'Claude', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(229, '', 0, 'HUVELIN', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(230, '', 0, 'IBRAHIM', 'Ayouba', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(231, '', 0, 'ISSHAK OUSSMAN', 'Ahmed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(232, '', 1, 'JACQUET', 'Yannick', '60 rue Du commerce', '', '49360', 'La Plaine', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(233, '', 0, 'JAME', 'Emily', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(234, '', 0, 'JAMONNEAU', 'Martine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(235, '', 0, 'JAOUEN', 'Christian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(236, '', 1, 'JARDIN', 'Didier', '4 Sqare De Bourgueil', '', '4930', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(237, '', 0, 'JAUNASSE', 'David', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(238, '', 0, 'JEANNEAU', 'Sabrina', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(239, '', 1, 'JEANNIERE', 'Alain', '36 Rue Du Docteur Bousseau', '', '49300', 'cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(240, '', 0, 'JEZEGOU', 'GAUTIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(241, '', 1, 'JOBARD', 'Gilles', '1 Rue Des Eglantines ', '', '49280', 'St Christophe Du Bois', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(242, '', 0, 'JOBARD', 'Jean-Luc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(243, '', 0, 'JOLY', 'Damien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(244, '', 0, 'JOREL', 'Benjamin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(245, '', 0, 'JOTTREAU', 'Damien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(246, '', 1, 'JOUTEAU', 'Philippe', '33 Rue Moli&egrave;re', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(247, '', 0, 'JUBIN', 'Nicolas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(248, '', 1, 'JUTON', 'Eric', '28 Rue Du Moulinier', '', '44690', 'Chateau Thebaud', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(249, '', 0, 'KENSI', 'Jean Baptiste', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(250, '', 0, 'KHAMMANY', 'Cathy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(251, '', 0, 'KHONGTHONG', 'Lay', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(252, '', 0, 'KHUN', 'Chanpisith', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(253, '', 0, 'KONDOMBO', 'Malik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(254, '', 0, 'KUPPEROTH', 'Mickaël', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(255, '', 0, 'LACAZE', 'Benjamin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(256, '', 0, 'LANDAIS', 'Frédérick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(257, '', 1, 'LANDREAU', 'Fr&eacute;d&eacute;ric', '15 Rue Du Gen&eacute;ral D''Elb&eacute;e', '', '85290', 'St Laurent Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(258, '', 0, 'LANDREAU', 'Jérôme', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(259, '', 0, 'LATERZA', 'Willy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(260, '', 2, 'LE CREFF', 'Nathalie', '2 Rue Sapinaud', '', '85600', 'La GuyonnÃ¨re', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(261, '', 2, 'LE ROCH', 'Marie-H&eacute;l&egrave;ne', '13 Impasse Du Vignaud', '', '85130', 'La Verrie', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(262, '', 1, 'LEBLOND', 'Micka&euml;l', '18 Rue Des Couteliers', '', '49280', 'St Christophe Du Bois', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(263, '', 1, 'LECOMTE', 'Fr&eacute;d&eacute;ric', '28 Rue du Commerce', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(264, '', 0, 'LEDROIT', 'André', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(265, '', 2, 'LEFORT', 'Sophie', 'Lieu Dit La Joini&egrave;re Neuve', '', '49360', 'MaulÃ©vrier', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(266, '', 0, 'LEFRICHE', 'Nadège', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(267, '', 0, 'LELAURE', 'Béatrice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(268, '', 0, 'LEMAIRE', 'Marc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(269, '', 0, 'LEMOINE', 'Nicolas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(270, '', 0, 'LETERTRE', 'Julien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(271, '', 2, 'LEVRON', 'Cathy', '7B All&eacute;e Des Bois', '', '85130', 'Tiffauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(272, '', 0, 'LISKA', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(273, '', 0, 'LIZICSKA', 'Jérémie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(274, '', 0, 'LOIZEAU', 'Annie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(275, '', 0, 'LOUISSAINT', 'Réginald', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(276, '', 0, 'MAFOULOU', 'ARMAND MESMIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(277, '', 0, 'MALEINGE', 'Ludovic', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(278, '', 0, 'MALEINGE', 'Mathias', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(279, '', 0, 'MALY', 'Vieng Say', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(280, '', 0, 'MANCEAU', 'Jonathan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(281, '', 0, 'MANCEAU', 'Nathalie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(282, '', 2, 'MARCHAND', 'Isabelle', '8 Rue Des Genets', '', '19280', 'La SÃ©guiniÃ¨re', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(283, '', 2, 'MARTIN', 'Blandine', '7 All&eacute;e Des Marchetons', '', '49450', 'St AndrÃ© De La Marche', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(284, '', 0, 'MARTINS', 'Maria', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(285, '', 0, 'MATHE', 'Charlène', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(286, '', 1, 'MATIGNON', 'Cl&eacute;ment', '14 Square Gustave Courbet', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(287, '', 0, 'MATRINGHEN', 'CAROLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(288, '', 1, 'MAURILLE', 'Laurent', '17 Rue Pierre Murzeau', '', '85290', 'Motagne Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(289, '', 0, 'MELEUC', 'Françoise', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(290, '', 0, 'MELLIET', 'Eric', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(291, '', 1, 'MENARD', 'Didier', '13 rue Des Genets', '', '49660', 'Tourfou', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(292, '', 0, 'MENGUY', 'Ronan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(293, '', 0, 'MENOIR', 'Omar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(294, '', 1, 'MESSE', 'J&eacute;r&ocirc;me', 'Lieu Dit La Freni&egrave;re', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(295, '', 1, 'MEUNIER', 'St&eacute;phane', '14 Rue Perceval', '', '49280', 'St Christophe Du bois', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(296, '', 0, 'MEUNIER', 'Caroline', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(297, '', 0, 'MEVEL', 'Yann', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(298, '', 0, 'MICHAUD', 'Françoise', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(299, '', 1, 'MONJEAUD', 'Dylan', '10 Rue Du Calvaire', '', '8513', 'St Martin Des Tilleul', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(300, '', 1, 'MORANDEAU', 'St&eacute;phane', '16 Rue Bel Air', '', '49450', 'Roussay', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(301, '', 0, 'MOREAU', 'Julien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(302, '', 2, 'MOREAU', 'Murielle', '4  All&eacute;e Des Roitelets', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(303, '', 1, 'MOREAU', 'Patrick', '4  All&eacute;e Des Roitelets', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(304, '', 1, 'MORILLE', 'Thierry', '16 Rue Des Puisatiers', '', '49280', 'St Christophe Du bois', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(305, '', 1, 'MORISSET', 'Stevie', '10 La Palarderie Neuve', '', '85500', 'Les Herbiers', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(306, '', 0, 'MOUA', 'Seng', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(307, '', 0, 'MOUHCENE', 'Abdelfattah', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(308, '', 0, 'MOUILLE', 'Jacques', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(309, '', 0, 'MOUMINE', 'Yacine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(310, '', 0, 'MOUNSAVENG', 'Virada', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(311, '', 1, 'MUSSET', 'Micka&euml;l', '8 Rue Alphose Daudet', '', '49360', 'MaulÃ©vrier', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(312, '', 0, 'NAUD', 'Catherine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(313, '', 0, 'NAUDOT', 'Romuald', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(314, '', 0, 'NGUYEN', 'Van Hoa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(315, '', 0, 'OGER', 'Adélia', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(316, '', 1, 'ONILLON', 'Richard', '25 Rue Reine Des Pr&egrave;s', '', '49120', 'Chemille Melay', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(317, '', 2, 'ORCONNEAU', 'Catherine', '8 Rue De Bretagne', '', '49450', 'St AndrÃ© De La Marche', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(318, '', 0, 'OUVRARD', 'Ghislain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(319, '', 2, 'PALLARD', 'Alice', '4 Rue de la Bachelette', '', '79700', 'MaulÃ©on', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(320, '', 0, 'PAPAPI', 'MARTIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(321, '', 0, 'PAPIN', 'Albert', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(322, '', 0, 'PAUCHET', 'Victorien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(323, '', 0, 'PELASCINI', 'Maxime', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(324, '', 0, 'PELLETIER', 'Nicolas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(325, '', 0, 'PERPINA', 'Thomas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(326, '', 0, 'PERROCHON', 'Marylène', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(327, '', 0, 'PICHON', 'Emmanuel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(328, '', 0, 'PIGEARD', 'Florian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(329, '', 0, 'PINEAU', 'Christophe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(330, '', 0, 'PINEAU', 'Eric', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(331, '', 1, 'PINEAU', 'Luc', '12 Rue De L''Arzille', '', '49120', 'Chemille', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(332, '', 0, 'PIOU', 'Stéphanie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(333, '', 1, 'PIVETEAU', 'Daniel', '1 rue Des Charmes', '', '49450', 'St AndrÃ© De La Marche', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(334, '', 1, 'PIVETEAU', 'R&eacute;gis', ' All&eacute;e Beau Rivage', '', '44200', 'Nantes', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(335, '', 0, 'POINTU', 'Cédric', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(336, '', 1, 'POIRIER', 'Micka&euml;l', '1 Rue Des Iris', '', '49450', 'Ville dieu La BlouÃ¨re', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(337, '', 0, 'POITIERS', 'Arnauld', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(338, '', 0, 'POTIER', 'Franck', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(339, '', 0, 'POTIER', 'Frédéric', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(340, '', 0, 'POUPLIN', 'Tony', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(341, '', 0, 'POUREAU', 'Alain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(342, '', 0, 'PRIOULT', 'David', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(343, '', 0, 'PUISSET', 'Arnaud', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(344, '', 0, 'RAGUENEAU', 'Cyril', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(345, '', 0, 'RAMPILLON', 'Stéphanie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(346, '', 0, 'RAVELEAU', 'Lucie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(347, '', 2, 'RETAILLEAU', 'Tania', '18 Rue des Hortensias', '', '49280', 'La Tessoualle', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(348, '', 2, 'RETHORE', 'Bernadette', '6 Square Des Merisiers', '', '49600', 'Beaupreau', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(349, '', 0, 'RETHORE', 'Grégory', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(350, '', 0, 'RETIERE', 'Alexis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(351, '', 0, 'REVERT', 'Sandra', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(352, '', 0, 'REYNET', 'Ronald', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(353, '', 1, 'RIAULT', 'G&eacute;rald', '27 rue Des Ajoncs', '', '49300', 'Le Puy St Bonnet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(354, '', 0, 'Richard', 'Josselin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(355, '', 1, 'Richard', 'Nicolas', '5 rue Simone Signoret', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(356, '', 1, 'RICHAUDEAU', 'Guylain', '13 Rue Des Chadonnerets', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(357, '', 0, 'RICHOU', 'Isabelle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(358, '', 0, 'RIETHMULLER', 'Franck', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(359, '', 0, 'RIMAN', 'Stéphane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(360, '', 2, 'RIMBAULT', 'C&eacute;line', '17 Rue De La Chevalerie', '', '49300', 'Le Puy St Bonnet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(361, '', 0, 'RISKOFF', 'Patrick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(362, '', 0, 'RIVAL', 'Line', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(363, '', 0, 'ROBINEAU', 'Yohann', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(364, '', 0, 'RODOLPHE', 'Angélique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(365, '', 0, 'RONDE', 'Anouchka', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(366, '', 0, 'ROULET', 'Maryvonne', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(367, '', 0, 'ROUXEL', 'Pierrick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(368, '', 0, 'RUIZ', 'Teddy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(369, '', 1, 'SALOUX', 'Christophe', '16 Rue De la Val&eacute;e', '', '85130', 'ST Aubin Des Ormeaux', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(370, '', 0, 'SECHET', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(371, '', 0, 'SEGUIN', 'Jérôme', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(372, '', 0, 'SESSEGNON', 'Dako Francis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(373, '', 0, 'SILVA', 'Andréa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(374, '', 0, 'SOULARD', 'Anthony', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(375, '', 1, 'SOULARD', 'Damien', '19 Rue Des Pinsons', '', '85290', 'St Laurent Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(376, '', 1, 'SOULARD', 'Jean-Vianney', '4 Lieu Dit La Grande M&eacute;tairie', '', '49360', 'MaulÃ©vrier', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(377, '', 0, 'SOULARD', 'Thierry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(378, '', 0, 'SUN', 'Van', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(379, '', 2, 'SUPIOT', 'Colette', '19 Rue des Jardins', '', '49340', 'TrÃ©mentines', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(380, '', 1, 'SUPIOT', 'Freddy', '7 rue Mozart', '', '49740', 'La Romagne', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(381, '', 0, 'SUPIOT', 'Maxime', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(382, '', 0, 'SUREAU', 'Sylvie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(383, '', 1, 'SUROT', 'Charles-Eric', '38 Rue Pasteur', '', '49280', 'St Christophe Du bois', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(384, '', 0, 'TABUADA', 'Rémy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(385, '', 1, 'TESSIER', 'Denis', 'Lieu Dit la Morli&egrave;re', '', '49230', 'St Crespin Sur Moine', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(386, '', 2, 'TESTARD', 'Nolwenn', '4 Rue De La Croix', '', '49450', 'Roussay', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(387, '', 2, 'THAO', 'Mayla', 'Batiment A 30 R&eacute;sidence Plein Air Avenue Du 11 Novenbre', '', '85130', 'La Verrie', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(388, '', 0, 'Thierry', 'Jean-Pierre', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(389, '', 1, 'Thomas', 'Anthony', '40 Domaine Du Rivage', '', '85600', 'La BoissiÃ¨re De Montaigu', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(390, '', 1, 'Thomas', 'Julien', '19 Rue De la Croix Blanche', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(391, '', 0, 'TIGNON', 'Marine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(392, '', 1, 'TIGNON', 'Pascal', '4 Rue Paul Gauguin', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(393, '', 0, 'TIJOU', 'Lionel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(394, '', 0, 'TISON', 'Leslie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(395, '', 0, 'TOUBRENDE', 'Olivier', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(396, '', 0, 'TOUCHE', 'Antoine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(397, '', 0, 'TOUCHET', 'Claudie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(398, '', 2, 'TRICHET', 'Alexandra', '2 Square Des Tailleurs', '', '49280', 'St Christophe Du Bois', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(399, '', 0, 'TRICOT', 'David', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(400, '', 1, 'TRICOT', 'Fabien', '12 Rue Pasteur', '', '49280', 'St Christophe Du Bois', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(401, '', 3, 'TURMEAU', 'Anne Jo&euml;lle', 'La Chhauveli&egrave;re Vieille', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(402, '', 1, 'UVENARD', 'R&eacute;gis', '16 Rue Des Genets', '', '49710', 'Le Longeron', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(403, '', 0, 'VALLET', 'Fabienne', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(404, '', 0, 'VANDENBROECKE', 'Christophe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(405, '', 0, 'VANG', 'Seng Cha', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(406, '', 0, 'VANMARCKE', 'Nicolas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(407, '', 2, 'VENDE', 'Catherine', '2 Rue De L''Arceau', '', '79700', 'MaulÃ©on', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(408, '', 0, 'VIAUD', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(409, '', 1, 'VILLENEUVE', 'Mathieu', '4 Rue De La Garenne', '', '85700', 'St Michel Mont Mercure', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(410, '', 0, 'Vincent', 'Manuel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(411, '', 0, 'VIOLLEAU', 'Eric', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(412, '', 0, 'WIESNIEWSKA', 'Ghislaine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(413, '', 0, 'YOK', 'Yanirath', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(414, '', 1, 'YOU', 'Benoit', '7 Rue des Charmes', '', '79700', 'St Pierre Des Echaubrognes', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(415, '', 0, 'ZARKI', 'Khalid', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(416, 'MAM05', 1, 'Matignon', 'Maxime', '14 Square Gustave Courbet', '', '49300', 'Cholet', '', '', '', '', '', '', '1', '', '', '', '', 1, '9999999999999999'),
(417, '', 1, 'jury ', 'arnaud', '9 place de l ''eglise ', '', '21160', 'corcelles les monts ', '', '', '', '', '', '', '1', '', '', '', 'commercial', 1, '9999999999999999'),
(418, '', 2, 'DEVEAUX', 'EMMANUELLE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '9999999999999999');

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
(5, '1435615200', '8917946', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de briatte paola .', '', '15', 0),
(7, '1435615200', '0625463', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de germain jacques.', '', '15', 0),
(8, '1435615200', '0000130', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de rimbault david.', '', '15', 0),
(9, '1435615200', '6252535', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de piou stephane .', '', '20', 0),
(10, '1435010400', '0625465', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de germain jacques.', '', '20', 0),
(11, '1435615200', '7131748', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de rodolphe angelique.', '', '20', 0),
(12, '1435615200', '4000159', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de defois christian.', '', '20', 0),
(15, '1436911200', '00055261320', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de retailleau tania.', '', '35', 0),
(16, '1453762800', '696850727', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '54', 0);

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
  MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
  MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
  MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
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
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
  MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
  MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
  MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
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
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
  MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
  MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
