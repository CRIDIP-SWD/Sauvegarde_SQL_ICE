-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2016 à 15:50
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cestmartin`
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
(82, 3, '8500', '2250'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '', ''),
(87, 8, '2000', '500'),
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
(107, 28, '5750', '12750'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', ''),
(113, 34, '', ''),
(114, 35, '0', '3000'),
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
(127, 48, '2000', ''),
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
(139, 60, '250', ''),
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
(39, '8504999', '1451602800', 'DARTY RETRO PROJECTEUR', 3, '', '250'),
(40, '7917480', '1451689200', ' SUBVENTION 1 ACOMPTE', 3, '3000', ''),
(41, '8324294', '', 'CDTGESTION', 3, '', '2000'),
(42, '5164537', '1465941600', 'VIREMENT LIVRET', 3, '500', '');

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
(21, '9056988', 3, '5000'),
(22, '6428402', 8, '2000');

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
(9, '7619015', 28, '7000');

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
(113, '9056988', 3, '5000', ''),
(114, '6428402', 8, '2000', ''),
(115, '7619015', 28, '', '7000'),
(116, '2473524', 60, '250', ''),
(117, '8504999', 3, '', '250'),
(119, '8347729', 35, '', '3000'),
(120, '7917480', 3, '3000', ''),
(121, '7740576', 48, '2000', ''),
(122, '8324294', 3, '', '2000'),
(123, '2618179', 8, '', '500'),
(124, '5164537', 3, '500', '');

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

--
-- Contenu de la table `compta_livret`
--

INSERT INTO `compta_livret` (`idcomptalivret`, `num_mouvement`, `date_livret`, `desc_livret`, `idcomptaplan`, `debit`, `credit`) VALUES
(1, '2618179', '1453244400', 'VIREMENT VERS LA BANQUE', 8, '', '500');

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
(38, '2473524', '1451602800', 'DARTY RETROPJECTEUR ACER ', 60, '250', ''),
(40, '8347729', '1451689200', 'SUB 1 ACOMPTE', 35, '', '3000'),
(41, '7740576', '1452812400', 'CDTGESTION LOGICEL ICEGEST', 48, '2000', '');

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

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `num_mouvement`, `idcomptaplan`, `debit`, `credit`) VALUES
(39, '2473524', 60, '250', ''),
(41, '8347729', 35, '', '3000'),
(42, '7740576', 48, '2000', '');

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
(1, 'CE SAINT MARTIN', '0', '0', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
(10, 'FOURNISSEURS EXTERIEURS'),
(11, 'CADEAUX'),
(12, 'CHEQUES'),
(13, 'ANCV');

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
(3, 'cestmartin49', '882baf28143fb700b388a87ef561a6e5', 1);

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
(13, 9, 'CINEMA JEANNE D ARC', '01-01-2016', '31-12-2018', '4.5', '0', '4.5', '100', '695', 0),
(14, 10, 'SIRF PLATS CUISINES SURGELES', '01-01-2016', '31-12-2016', '1', '0', '1', '2000', '999950', 0),
(15, 10, 'PLG PRODUITS ENTRETIEN', '01-01-2016', '31-12-2016', '1', '0', '1', '2000', '998750', 0),
(16, 11, 'COLIS NOEL', '01-01-2016', '31-12-2016', '0', '1', '1', '200', '530.5', 0),
(17, 12, 'CHEQUES CADEAUX', '01-01-2016', '31-12-2016', '0', '1', '1', '200', '60', 0),
(18, 12, 'CULTURE ET SPORT CATEGORIE 1', '01-01-2016', '31-12-2016', '10', '40', '50', '1', '0', 0),
(19, 12, 'CULTURE ET SPORT CATEGORIE  2', '01-01-2016', '31-12-2016', '10', '30', '40', '1', '0', 0),
(20, 12, 'CULTURE ET SPORT CATEGORIE  3', '01-01-2016', '31-12-2016', '10', '20', '30', '1', '0', 0),
(22, 13, 'ANCV', '01-01-2016', '31-12-2016', '0', '10', '10', '15', '0', 0);

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
(1, 1, '120,00', '1221212121');

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
(2, '', 0, 'AGNIES SABRINA', '', 'MARSILLE', '', '', '', '', '', '', '', '10/08/2015', '', '', '', '', '', '', 1, '161'),
(3, '', 0, 'BENAITEAU JULIE', '', '18 RUE DU FROMENTEAU', '', '', '', '', '', '', '', '23/04/2014', '', '', '', '', '', '', 1, '161'),
(4, '', 0, 'BERNARD VIRGINIE', '', '18 RUE DU COMMERCE', '', '', '', '', '', '', '', '22/06/2015', '', '', '', '', '', '', 1, '161'),
(5, '', 0, 'BRIEND SYLVIE', '', '20 RUE DES BLEUETS', '', '', '', '', '', '', '', '17/03/2015', '', '', '', '', '', '', 1, '161'),
(6, '', 0, 'BUREAU NELLY', '', '12 RUE DE LA MARQUETTERIE', '', '', '', '', '', '', '', '16/06/2014', '', '', '', '', '', '', 1, '121'),
(7, '', 0, 'CHANTEREAU GUILLEMETTE', '', '3 RUE SAINT CORENTIN', '', '', '', '', '', '', '', '28/08/2015', '', '', '', '', '', '', 1, '161'),
(8, '', 0, 'DAUDET ISABELLE', '', '7 RUE DES AJONCS', '', '', '', '', '', '', '', '20/08/2015', '', '', '', '', '', '', 1, '161'),
(9, '', 0, 'DESNOYERS CLAIRE', '', '1 ALLEE MAURICE ROCHARD', '', '', '', '', '', '', '', '23/02/2015', '', '', '', '', '', '', 1, '161'),
(10, '', 0, 'FERNANDES ELODIE', '', '19 RUE D''ANJOU', '', '', '', '', '', '', '', '02/07/2013', '', '', '', '', '', '', 1, '161'),
(11, '', 0, 'GASNIER-VAPPEREAU SEVERINE', '', '23 RUE DU MOULIN FOULON', '', '', '', '', '', '', '', '26/06/2014', '', '', '', '', '', '', 1, '161'),
(12, '', 0, 'GUILLEUX LUCIE', '', '1 RUE DE LA BERTAUDIERE', '', '', '', '', '', '', '', '07/02/2014', '', '', '', '', '', '', 1, '161'),
(13, '', 0, 'HUET MARIE-LINE', '', '5 B RUE NATIONALE', '', '', '', '', '', '', '', '21/07/2015', '', '', '', '', '', '', 1, '161'),
(14, '', 0, 'MAHAMOUD DHIKIRATI', '', '15 PLACE LAURENT MENARD', '', '', '', '', '', '', '', '04/11/2013', '', '', '', '', '', '', 1, '161'),
(15, '', 0, 'OUGARZI MEG ANNE', '', '26 AVENUE DE L''EUROPE', '', '', '', '', '', '', '', '02/07/2015', '', '', '', '', '', '', 1, '161'),
(16, '', 0, 'PARENTEAU VERONIQUE', '', '29 RUE SAINT BONAVENTURE', '', '', '', '', '', '', '', '29/04/2013', '', '', '', '', '', '', 1, '161'),
(17, '', 0, 'QUEMPER ALEXANDRA', '', '20 RUE DE LA MAIRIE', '', '', '', '', '', '', '', '01/09/2011', '', '', '', '', '', '', 1, '161'),
(18, '', 0, 'RAFFLEGEAU MELODIE', '', 'LE PETIT BOIS GIRARD', '', '', '', '', '', '', '', '25/09/2015', '', '', '', '', '', '', 1, '161'),
(19, '', 0, 'SANGHOTT AISSATOU', '', '23 RUE DES CEDRES', '', '', '', '', '', '', '', '02/03/2015', '', '', '', '', '', '', 1, '161'),
(20, '', 0, 'TRICOIRE STEPHANIE', '', '6 RUE DU HAMEAU DES GASTINES', '', '', '', '', '', '', '', '01/02/2013', '', '', '', '', '', '', 1, '161'),
(21, '', 0, 'VIEL JULIE', '', '2 LA BROSSE VIEILLE', '', '', '', '', '', '', '', '22/10/2015', '', '', '', '', '', '', 1, '161'),
(22, '', 0, 'WERHEN SARAH', '', '11 RUE DE LA VENDEE', '', '', '', '', '', '', '', '20/01/2014', '', '', '', '', '', '', 1, '161'),
(23, '', 0, 'ABELARD CHANTAL', '', 'LES FRESCHES', '', '', '', '', '', '', '', '24/01/2001', '', '', '', '', '', '', 1, '161'),
(24, '', 0, 'ANTIER LUDOVIC', '', '11 RUE HORTENSE TANVET-BEAR', '', '', '', '', '', '', '', '27/06/2005', '', '', '', '', '', '', 1, '161'),
(25, '', 0, 'BABARIT ISABELLE', '', '37 CITE VIEILLE FONTAINE', '', '', '', '', '', '', '', '02/02/1998', '', '', '', '', '', '', 1, '161'),
(26, '', 0, 'BARREAU NORA', '', '46 B RUE DE CHOLET', '', '', '', '', '', '', '', '13/06/2014', '', '', '', '', '', '', 1, '161'),
(27, '', 0, 'BERNAGOULT CHRISTOPHE', '', '20 ALLEE DES ACACIAS', '', '', '', '', '', '', '', '08/08/2011', '', '', '', '', '', '', 1, '161'),
(28, '', 0, 'COLAS THEOPHILE', '', '34 RUE DES CHENES', '', '', '', '', '', '', '', '02/09/2015', '', '', '', '', '', '', 1, '161'),
(29, '', 0, 'CONAN MELINA', '', '3 RUE DES ROSEAUX', '', '', '', '', '', '', '', '09/11/2010', '', '', '', '', '', '', 1, '161'),
(30, '', 0, 'DALIBERT JOHANN', '', '16 RUE DU CHANOINE MAHOT', '', '', '', '', '', '', '', '01/02/2011', '', '', '', '', '', '', 1, '161'),
(31, '', 0, 'EBBA FREDERIC', '', '25 RUE JEAN MARIN', '', '', '', '', '', '', '', '10/04/2006', '', '', '', '', '', '', 1, '161'),
(32, '', 0, 'FABRE XAVIER', '', '24 CHEMIN DE GRANGEARD', '', '', '', '', '', '', '', '19/03/2012', '', '', '', '', '', '', 1, '161'),
(33, '', 0, 'GRATON SYLVIE', '', '23 RUE ANTONIO VIVALDI', '', '', '', '', '', '', '', '09/07/1999', '', '', '', '', '', '', 1, '161'),
(34, '', 0, 'LALANDE SABRINA', '', '22 RUE GEORGE SAND', '', '', '', '', '', '', '', '12/01/2015', '', '', '', '', '', '', 1, '161'),
(35, '', 0, 'SZATANIK GERARD', '', '8 ROUTE DE BOUGUENAIS', '', '', '', '', '', '', '', '22/05/2013', '', '', '', '', '', '', 1, '161'),
(36, '', 0, 'THIZON BEATRICE', '', 'LE MOULIN DU PONT', '', '', '', '', '', '', '', '03/04/2000', '', '', '', '', '', '', 1, '161'),
(37, '', 0, 'ZAIR YASSINE', '', '6 AVENUE DU DOCTEUR LAENNEC', '', '', '', '', '', '', '', '02/04/2013', '', '', '', '', '', '', 1, '161'),
(38, '', 0, 'ABELARD ISABELLE', '', '15 RUE DES MAUGES', '', '', '', '', '', '', '', '05/02/2001', '', '', '', '', '', '', 1, '161'),
(39, '', 0, 'AIRAULT CATHERINE', '', '4 AVENUE DU PARC', '', '', '', '', '', '', '', '14/11/1994', '', '', '', '', '', '', 1, '161'),
(40, '', 0, 'ANTIER CELINE', '', '7 IMPASSE MAURICE RAVEL', '', '', '', '', '', '', '', '29/09/2000', '', '', '', '', '', '', 1, '161'),
(41, '', 0, 'AUBAULT NATHALIE', '', '28 RUE DE LA GROTTE', '', '', '', '', '', '', '', '15/02/1999', '', '', '', '', '', '', 1, '161'),
(42, '', 0, 'AUDOIN SYLVIA', '', '79 B ALLEE DE L''ECUSSON', '', '', '', '', '', '', '', '25/07/2005', '', '', '', '', '', '', 1, '161'),
(43, '', 0, 'AUDOUIN CECILE', '', '29 RUE DE LA MAROTTE', '', '', '', '', '', '', '', '04/03/1996', '', '', '', '', '', '', 1, '161'),
(44, '', 0, 'AUDOUIN LUCIE', '', '8 L''ECHASSERIE', '', '', '', '', '', '', '', '30/01/2012', '', '', '', '', '', '', 1, '161'),
(45, '', 0, 'AUDUREAU CINDY', '', '58 RUE NATIONALE', '', '', '', '', '', '', '', '28/12/2011', '', '', '', '', '', '', 1, '161'),
(46, '', 0, 'AUDUREAU SANDRINE', '', '17 RUE D''ANJOU', '', '', '', '', '', '', '', '24/03/2014', '', '', '', '', '', '', 1, '161'),
(47, '', 0, 'AUGEREAU MARIE JOSE', '', 'LA MOURIERE', '', '', '', '', '', '', '', '01/09/1997', '', '', '', '', '', '', 1, '161'),
(48, '', 0, 'AVRILLON SOPHIE', '', '8 RUE DES BLEUETS', '', '', '', '', '', '', '', '07/07/1997', '', '', '', '', '', '', 1, '161'),
(49, '', 0, 'BALLARD NATHALIE', '', '6 RUE DU CHAMP DORE', '', '', '', '', '', '', '', '15/02/1999', '', '', '', '', '', '', 1, '161'),
(50, '', 0, 'BARBEY AURORE', '', '3 ALLEE DE BELLEVUE', '', '', '', '', '', '', '', '23/03/2011', '', '', '', '', '', '', 1, '161'),
(51, '', 0, 'BARRAULT LAURENCE', '', '17 ALLEE DE LA CHESNAIE', '', '', '', '', '', '', '', '15/01/2000', '', '', '', '', '', '', 1, '161'),
(52, '', 0, 'BARRILLIE CECILE', '', '6 RUE DU MOULIN A VENT', '', '', '', '', '', '', '', '01/08/2000', '', '', '', '', '', '', 1, '161'),
(53, '', 0, 'BAUMARD NATHALIE', '', '11 CLOS DU GIRON', '', '', '', '', '', '', '', '16/07/1990', '', '', '', '', '', '', 1, '161'),
(54, '', 0, 'BELLIARD EMILIE', '', '17 LA BODINIERE', '', '', '', '', '', '', '', '08/07/2005', '', '', '', '', '', '', 1, '161'),
(55, '', 0, 'BENAITEAU CAROLE', '', '7 RUE MONT DE VIE', '', '', '', '', '', '', '', '10/03/2014', '', '', '', '', '', '', 1, '161'),
(56, '', 0, 'BENARD FABIENNE', '', '2 IMPASSE DE LA FOULONNIERE', '', '', '', '', '', '', '', '07/03/1990', '', '', '', '', '', '', 1, '161'),
(57, '', 0, 'BERNIER FABIENNE', '', '13 RUE SAINT MARTIN', '', '', '', '', '', '', '', '22/01/2001', '', '', '', '', '', '', 1, '161'),
(58, '', 0, 'BEZIE CYRIL', '', 'LE BOIS DU CAILLON', '', '', '', '', '', '', '', '17/03/2003', '', '', '', '', '', '', 1, '161'),
(59, '', 0, 'BIGOT JOSIANE', '', '5 ALLEE DES ACACIAS', '', '', '', '', '', '', '', '03/10/2011', '', '', '', '', '', '', 1, '161'),
(60, '', 0, 'BIOTTEAU CHRISTELLE', '', '29 ALLEE DES MAISONS NEUVES', '', '', '', '', '', '', '', '01/02/1988', '', '', '', '', '', '', 1, '161'),
(61, '', 0, 'BLANCHARD CLAUDINE', '', '7 RUE DES MESANGES', '', '', '', '', '', '', '', '17/12/1982', '', '', '', '', '', '', 1, '161'),
(62, '', 0, 'BLANCHARD HELENE', '', '2 BIS RUE DU MOULIN FOULON', '', '', '', '', '', '', '', '25/09/1978', '', '', '', '', '', '', 1, '161'),
(63, '', 0, 'BLOUIN CELINE', '', '12 RUE DE LA MAROTTE', '', '', '', '', '', '', '', '02/07/2001', '', '', '', '', '', '', 1, '161'),
(64, '', 0, 'BLOUIN CLAUDIE', '', '12 RUE DE LA CITE', '', '', '', '', '', '', '', '01/07/1996', '', '', '', '', '', '', 1, '161'),
(65, '', 0, 'BLOYET GILLES', '', '21 RUE DU MUGUET', '', '', '', '', '', '', '', '18/11/2013', '', '', '', '', '', '', 1, '161'),
(66, '', 0, 'BOCHEREAU MONIQUE', '', '37 RUE JEANNE D''ARC', '', '', '', '', '', '', '', '25/06/1987', '', '', '', '', '', '', 1, '161'),
(67, '', 0, 'BODINEAU BEATRICE', '', '22 RUE DES MESANGES', '', '', '', '', '', '', '', '14/09/1987', '', '', '', '', '', '', 1, '161'),
(68, '', 0, 'BODINEAU JESSICA', '', '47 RUE DES TISSERANDS', '', '', '', '', '', '', '', '13/02/2006', '', '', '', '', '', '', 1, '161'),
(69, '', 0, 'BODY YOLANDE', '', '10 RUE DES BLEUETS', '', '', '', '', '', '', '', '01/01/1986', '', '', '', '', '', '', 1, '161'),
(70, '', 0, 'BOEYKENS LAURENCE', '', '3 RUE DES CHATAIGNIERS', '', '', '', '', '', '', '', '21/06/2013', '', '', '', '', '', '', 1, '161'),
(71, '', 0, 'BOIDRON SANDRINE', '', '5 RUE DES CHARMES', '', '', '', '', '', '', '', '17/01/2005', '', '', '', '', '', '', 1, '161'),
(72, '', 0, 'BOMARD JUSTINE', '', '41 RUE DU PRESSOIR', '', '', '', '', '', '', '', '26/12/2012', '', '', '', '', '', '', 1, '161'),
(73, '', 0, 'BONNAILLIE CHRISTOPHE', '', '28 RUE DE LA GROTTE', '', '', '', '', '', '', '', '05/02/2001', '', '', '', '', '', '', 1, '161'),
(74, '', 0, 'BORET CLAIRE', '', '17 ALLEE DU BOIS', '', '', '', '', '', '', '', '03/03/1988', '', '', '', '', '', '', 1, '161'),
(75, '', 0, 'BOSSE STEPHANE', '', '21 RUE DE LA MAROTERIE', '', '', '', '', '', '', '', '31/08/1995', '', '', '', '', '', '', 1, '161'),
(76, '', 0, 'BOUMARD VERONIQUE', '', '24 RUE DES BLEUETS', '', '', '', '', '', '', '', '14/03/1990', '', '', '', '', '', '', 1, '161'),
(77, '', 0, 'BOURDIN AGNES', '', '5 ALLEE DE L''AVENIR', '', '', '', '', '', '', '', '26/01/2004', '', '', '', '', '', '', 1, '161'),
(78, '', 0, 'BOUVIER BRIGITTE', '', 'BONVIN', '', '', '', '', '', '', '', '01/01/1979', '', '', '', '', '', '', 1, '161'),
(79, '', 0, 'BOUYER VANESSA', '', '2 RUE DE LA RATERIE', '', '', '', '', '', '', '', '19/06/2007', '', '', '', '', '', '', 1, '161'),
(80, '', 0, 'BOZEC FABRICE', '', '2 RUE DE LA BEDOUR', '', '', '', '', '', '', '', '15/02/2010', '', '', '', '', '', '', 1, '161'),
(81, '', 0, 'BRAULT MARTINE', '', '16 RUE DE BRETAGNE', '', '', '', '', '', '', '', '11/10/1979', '', '', '', '', '', '', 1, '161'),
(82, '', 0, 'BRAULT MICHEL', '', '6 BIS RUE DE L''AUMONERIE', '', '', '', '', '', '', '', '04/09/1989', '', '', '', '', '', '', 1, '161'),
(83, '', 0, 'BREBION VIRGINIE', '', '8 RUE AMADEUS MOZART', '', '', '', '', '', '', '', '22/01/2001', '', '', '', '', '', '', 1, '161'),
(84, '', 0, 'BREVET VALERIE', '', 'CHEMIN DE LA RATELIERE', '', '', '', '', '', '', '', '04/07/1994', '', '', '', '', '', '', 1, '161'),
(85, '', 0, 'BREVET-RIPOCHE TIPHAINE', '', '1 DOMAINE DE RIBOTTE', '', '', '', '', '', '', '', '20/03/2013', '', '', '', '', '', '', 1, '161'),
(86, '', 0, 'BRISSET ANNE FRANCOISE', '', '24 LES TERRASSES DE SEVRE', '', '', '', '', '', '', '', '16/07/1990', '', '', '', '', '', '', 1, '161'),
(87, '', 0, 'BROUSSEAU MARIELLE', '', '14 RUE DE LA QUINTAINE', '', '', '', '', '', '', '', '05/07/2002', '', '', '', '', '', '', 1, '161'),
(88, '', 0, 'CAILLEAU JEAN MICHEL', '', '14 RUE DE L''ETANG', '', '', '', '', '', '', '', '01/12/1974', '', '', '', '', '', '', 1, '161'),
(89, '', 0, 'CAILLEAU THERESE', '', '19 RUE DES MORINELLES', '', '', '', '', '', '', '', '02/04/1979', '', '', '', '', '', '', 1, '161'),
(90, '', 0, 'CESBRON DELPHINE', '', 'LE CLAIR LOGIS', '', '', '', '', '', '', '', '10/11/1998', '', '', '', '', '', '', 1, '161'),
(91, '', 0, 'CHARIER BRIGITTE', '', 'LA JAMBUERE', '', '', '', '', '', '', '', '07/12/1992', '', '', '', '', '', '', 1, '161'),
(92, '', 0, 'CHARON NATHALIE', '', '2 IMPASSE DES MORINELLES', '', '', '', '', '', '', '', '06/05/2014', '', '', '', '', '', '', 1, '161'),
(93, '', 0, 'CHASSELOUP MARIE JEANNE', '', 'LES VENTS DE MER', '', '', '', '', '', '', '', '30/06/1975', '', '', '', '', '', '', 1, '161'),
(94, '', 0, 'CHATAIGNER VIRGINIE', '', '4 ALLEE DE LA SOLOGNE', '', '', '', '', '', '', '', '11/09/2000', '', '', '', '', '', '', 1, '161'),
(95, '', 0, 'CHAUVIGNE CELINE', '', 'LE PLESSIS', '', '', '', '', '', '', '', '08/07/2011', '', '', '', '', '', '', 1, '161'),
(96, '', 0, 'CHENE ISABELLE', '', 'LA BOUCHETIERE', '', '', '', '', '', '', '', '09/12/2005', '', '', '', '', '', '', 1, '161'),
(97, '', 0, 'CHENE MURIELLE', '', '17 RUE DU PONTEREAU', '', '', '', '', '', '', '', '17/02/1990', '', '', '', '', '', '', 1, '161'),
(98, '', 0, 'CHERBONNIER STEPHANIE', '', '24 RUE DE LA MAIRIE', '', '', '', '', '', '', '', '03/12/2008', '', '', '', '', '', '', 1, '161'),
(99, '', 0, 'CHEVALLIER LOLITA', '', '85 LA GUITONNERIE', '', '', '', '', '', '', '', '05/06/2013', '', '', '', '', '', '', 1, '161'),
(100, '', 0, 'CHUPIN NICOLE', '', '7 RUE DES JARDINS', '', '', '', '', '', '', '', '02/01/1980', '', '', '', '', '', '', 1, '161'),
(101, '', 0, 'CLEMENCEAU VALERIE', '', '1 IMPASSE DES NOISETIERS', '', '', '', '', '', '', '', '01/10/1988', '', '', '', '', '', '', 1, '161'),
(102, '', 0, 'CLEMOT ANNIE', '', '10 T RUE SAINT MARTIN', '', '', '', '', '', '', '', '19/12/1994', '', '', '', '', '', '', 1, '161'),
(103, '', 0, 'CLEMOT BERNADETTE', '', 'LE PETIT NOMBEAU', '', '', '', '', '', '', '', '27/05/2002', '', '', '', '', '', '', 1, '161'),
(104, '', 0, 'CLEMOT MARIE CHRISTINE', '', 'LA MOCRAISIERE', '', '', '', '', '', '', '', '07/04/2008', '', '', '', '', '', '', 1, '161'),
(105, '', 0, 'CLEMOT MARYVONNE', '', '2 ALLEE DES BOULAIES', '', '', '', '', '', '', '', '16/07/2007', '', '', '', '', '', '', 1, '161'),
(106, '', 0, 'CLICQ BEATRICE', '', '11 RUE DES LAVANDIERES', '', '', '', '', '', '', '', '01/09/1998', '', '', '', '', '', '', 1, '161'),
(107, '', 0, 'COLAS FABIENNE', '', '39 RUE DE LA MAIRIE', '', '', '', '', '', '', '', '01/01/1994', '', '', '', '', '', '', 1, '161'),
(108, '', 0, 'COUET VIRGINIE', '', '18 PLACE DE L''EGLISE', '', '', '', '', '', '', '', '01/10/2012', '', '', '', '', '', '', 1, '161'),
(109, '', 0, 'COURBET EVA', '', 'LE PETIT RUAU', '', '', '', '', '', '', '', '12/07/2011', '', '', '', '', '', '', 1, '161'),
(110, '', 0, 'COURDIER ANNABELLE', '', 'LA JANVRIE', '', '', '', '', '', '', '', '04/01/2011', '', '', '', '', '', '', 1, '161'),
(111, '', 0, 'COUTAULT MARIE ANNICK', '', '2 IMPASSE DU SABLE', '', '', '', '', '', '', '', '01/04/1983', '', '', '', '', '', '', 1, '161'),
(112, '', 0, 'COUTOLLEAU JEANINE', '', '4 ALLEE DU PATIS ROND', '', '', '', '', '', '', '', '04/07/2005', '', '', '', '', '', '', 1, '161'),
(113, '', 0, 'DAVID ADELINE', '', 'LA GRANDE MONCOILLERE', '', '', '', '', '', '', '', '24/09/2007', '', '', '', '', '', '', 1, '161'),
(114, '', 0, 'DAVID CECILE', '', '28 RUE DU FROMENTEAU', '', '', '', '', '', '', '', '11/01/1988', '', '', '', '', '', '', 1, '161'),
(115, '', 0, 'DELAUNAY GAEL', '', 'LA COMBE', '', '', '', '', '', '', '', '01/10/2002', '', '', '', '', '', '', 1, '161'),
(116, '', 0, 'DEVANNE VALERIE', '', '13 B RUE DU MOULIN FOULON', '', '', '', '', '', '', '', '15/07/2008', '', '', '', '', '', '', 1, '161'),
(117, '', 0, 'DEVEZE VERONIQUE', '', '8 RUE PIERRE DE RONSARD', '', '', '', '', '', '', '', '09/04/2001', '', '', '', '', '', '', 1, '161'),
(118, '', 0, 'DEVY MARYLINE', '', '34 AVENUE DE GONTAUT BIRON', '', '', '', '', '', '', '', '17/01/2000', '', '', '', '', '', '', 1, '161'),
(119, '', 0, 'DIET MARTINE', '', '42 RUE SAINT MARTIN', '', '', '', '', '', '', '', '07/07/1997', '', '', '', '', '', '', 1, '161'),
(120, '', 0, 'DOUET CECILE', '', 'LA SEVERIE', '', '', '', '', '', '', '', '16/05/1977', '', '', '', '', '', '', 1, '161'),
(121, '', 0, 'DROUET ISABELLE', '', '19 RUE DE BRETAGNE', '', '', '', '', '', '', '', '28/07/1987', '', '', '', '', '', '', 1, '161'),
(122, '', 0, 'DUBOIS ISABELLE', '', 'LES ROSIERS', '', '', '', '', '', '', '', '26/07/2010', '', '', '', '', '', '', 1, '161'),
(123, '', 0, 'DUFROUX THERESE', '', '4 SQUARE DES FOUGERES', '', '', '', '', '', '', '', '04/01/1993', '', '', '', '', '', '', 1, '161'),
(124, '', 0, 'DURAND MARIE ANDREE', '', 'LA BASSE PREE', '', '', '', '', '', '', '', '15/07/1982', '', '', '', '', '', '', 1, '161'),
(125, '', 0, 'DURAND SOPHIE', '', '27 RUE DES VIGNES', '', '', '', '', '', '', '', '08/07/2013', '', '', '', '', '', '', 1, '161'),
(126, '', 0, 'EMERIAU PATRICIA', '', '54 RUE DE LA FORET', '', '', '', '', '', '', '', '01/07/1996', '', '', '', '', '', '', 1, '161'),
(127, '', 0, 'ESNARD JOCELYNE', '', '23 RUE DU PRE DE LA MARE', '', '', '', '', '', '', '', '09/01/1995', '', '', '', '', '', '', 1, '161'),
(128, '', 0, 'ETOURNEUX MELANIE', '', '16 RUE DES MAUGES', '', '', '', '', '', '', '', '13/07/2007', '', '', '', '', '', '', 1, '161'),
(129, '', 0, 'EVERS BRUNO', '', '21 RUE FOULQUES NERRA', '', '', '', '', '', '', '', '11/04/1990', '', '', '', '', '', '', 1, '161'),
(130, '', 0, 'FAUCHEUX SONIA', '', 'LE MESNIL', '', '', '', '', '', '', '', '01/09/2000', '', '', '', '', '', '', 1, '161'),
(131, '', 0, 'FERCHAUD MARYSE', '', '8 SQUARE BORIS VIAN', '', '', '', '', '', '', '', '30/06/1980', '', '', '', '', '', '', 1, '161'),
(132, '', 0, 'FROGER-ONILLON MARIE ANNICK', '', '19 AVENUE BEL PRATEL', '', '', '', '', '', '', '', '09/08/1977', '', '', '', '', '', '', 1, '161'),
(133, '', 0, 'GABILLARD MARINA', '', 'LA COMBE', '', '', '', '', '', '', '', '06/04/2004', '', '', '', '', '', '', 1, '161'),
(134, '', 0, 'GALLARD MELANIE', '', '26 AVENUE DE LA FRAIRIE', '', '', '', '', '', '', '', '03/07/2012', '', '', '', '', '', '', 1, '161'),
(135, '', 0, 'GALLOT CHRYSTELLE', '', '26 RUE DES CHARDONNERETS', '', '', '', '', '', '', '', '06/07/1989', '', '', '', '', '', '', 1, '161'),
(136, '', 0, 'GANDON LAURENCE', '', '1 LA BOULAYE', '', '', '', '', '', '', '', '01/02/2005', '', '', '', '', '', '', 1, '161'),
(137, '', 0, 'GARCIA MARIE CHRISTINE', '', '10 RUE DES MAUGES', '', '', '', '', '', '', '', '18/02/1991', '', '', '', '', '', '', 1, '161'),
(138, '', 0, 'GARDIN FRANCOISE', '', '4 RUE SAINT GILLES', '', '', '', '', '', '', '', '01/07/1996', '', '', '', '', '', '', 1, '161'),
(139, '', 0, 'GAUTHIER JUSTINE', '', '11 RUE DE LA LECHE', '', '', '', '', '', '', '', '17/09/2015', '', '', '', '', '', '', 1, '161'),
(140, '', 0, 'GAUTIER BRIGITTE', '', 'L''OREE DES BOIS', '', '', '', '', '', '', '', '07/07/1982', '', '', '', '', '', '', 1, '161'),
(141, '', 0, 'GELINEAU CLAUDETTE', '', '4 RUE DES MAUDIERES', '', '', '', '', '', '', '', '23/01/2001', '', '', '', '', '', '', 1, '161'),
(142, '', 0, 'GENDRON ANNE MARIE', '', '2 CHEMIN DE LA PETITE CURE', '', '', '', '', '', '', '', '02/11/1993', '', '', '', '', '', '', 1, '161'),
(143, '', 0, 'GENTILINI CATHERINE', '', '39 CLOS VICTORINE', '', '', '', '', '', '', '', '26/05/2008', '', '', '', '', '', '', 1, '161'),
(144, '', 0, 'GERMON PAULE', '', '1 RUE D''ANJOU', '', '', '', '', '', '', '', '07/03/2011', '', '', '', '', '', '', 1, '161'),
(145, '', 0, 'GIBOUIN ISABELLE', '', '11 RUE DES BARONS', '', '', '', '', '', '', '', '01/12/1994', '', '', '', '', '', '', 1, '161'),
(146, '', 0, 'GIRALDE CARMEN', '', '16 RUE DES VIGNES', '', '', '', '', '', '', '', '27/07/1987', '', '', '', '', '', '', 1, '161'),
(147, '', 0, 'GIRON EMILIE', '', '11 RUE EUGENE BOMPAS', '', '', '', '', '', '', '', '31/05/2010', '', '', '', '', '', '', 1, '161'),
(148, '', 0, 'GODIN MARIE HELENE', '', 'LA ROCHE BARATON', '', '', '', '', '', '', '', '05/11/1990', '', '', '', '', '', '', 1, '161'),
(149, '', 0, 'GODINEAU MARIE ANNICK', '', '1 IMPASSE DES MESANGES', '', '', '', '', '', '', '', '08/06/2000', '', '', '', '', '', '', 1, '161'),
(150, '', 0, 'GODINEAU THIERRY', '', '4 RUE DU PETIT ANJOU', '', '', '', '', '', '', '', '11/12/1989', '', '', '', '', '', '', 1, '161'),
(151, '', 0, 'GOURDON CHRISTELLE', '', '3 RUE DES TOURTERELLES', '', '', '', '', '', '', '', '25/01/2000', '', '', '', '', '', '', 1, '161'),
(152, '', 0, 'GOURDON STEPHANIE', '', 'GROS FOILS', '', '', '', '', '', '', '', '07/12/1994', '', '', '', '', '', '', 1, '161'),
(153, '', 0, 'GRASSET CHRISTELLE', '', '6 RUE SAINT MARTIN', '', '', '', '', '', '', '', '01/02/1995', '', '', '', '', '', '', 1, '161'),
(154, '', 0, 'GUERY SYLVIE', '', 'LA BOLINIERE', '', '', '', '', '', '', '', '06/03/2012', '', '', '', '', '', '', 1, '161'),
(155, '', 0, 'GUIBERT MELINA', '', '49 RUE DE LA RIGAUDIERE', '', '', '', '', '', '', '', '10/10/2007', '', '', '', '', '', '', 1, '161'),
(156, '', 0, 'GUIGNARD CHRISTELLE', '', '6 RUE DES CHARDONNERETS', '', '', '', '', '', '', '', '07/05/1984', '', '', '', '', '', '', 1, '161'),
(157, '', 0, 'GUILBAUD SOPHIE', '', '15 BIS RUE DE VERSAILLES', '', '', '', '', '', '', '', '01/09/1994', '', '', '', '', '', '', 1, '161'),
(158, '', 0, 'GUILLOTEAU MARIE MADELEINE', '', '8 RUE DU FAUBOURG GOURDON', '', '', '', '', '', '', '', '01/08/2000', '', '', '', '', '', '', 1, '161'),
(159, '', 0, 'GUIMARD SYLVIE', '', '2 BIS RUE DES MAUGES', '', '', '', '', '', '', '', '10/08/1992', '', '', '', '', '', '', 1, '161'),
(160, '', 0, 'GUIMBRETIERE MARIE ODILE', '', '15 RUE DE LA PEPINIERE', '', '', '', '', '', '', '', '01/08/1982', '', '', '', '', '', '', 1, '161'),
(161, '', 0, 'GUIOT MARTINE', '', '4 IMPASSE DE L''ETANG', '', '', '', '', '', '', '', '01/04/2015', '', '', '', '', '', '', 1, '161'),
(162, '', 0, 'HALLEREAU MONIQUE', '', '7 RUE DES CHATAIGNIERS', '', '', '', '', '', '', '', '31/10/1994', '', '', '', '', '', '', 1, '161'),
(163, '', 0, 'HARDOU VANESSA', '', '7 RUE MONT DE VIE', '', '', '', '', '', '', '', '17/01/2011', '', '', '', '', '', '', 1, '161'),
(164, '', 0, 'HERVE VIRGINIE', '', 'CHEMIN DE LA RATELIERE', '', '', '', '', '', '', '', '28/12/2010', '', '', '', '', '', '', 1, '161'),
(165, '', 0, 'HOUTIN CORINNE', '', '3 RUE SAINT THOMAS', '', '', '', '', '', '', '', '24/04/1995', '', '', '', '', '', '', 1, '161'),
(166, '', 0, 'HUET MARIE FRANCOISE', '', '15 RUE DES LAVANDIERES', '', '', '', '', '', '', '', '24/01/2000', '', '', '', '', '', '', 1, '161'),
(167, '', 0, 'HUMEAU MARIE JOSEPHE', '', '36 RUE DE VERSAILLES', '', '', '', '', '', '', '', '01/07/1985', '', '', '', '', '', '', 1, '161'),
(168, '', 0, 'JEAN ANGELINA', '', '39 B RUE JOACHIM DU BELLAY', '', '', '', '', '', '', '', '30/11/2009', '', '', '', '', '', '', 1, '161'),
(169, '', 0, 'JEANNEAU LAETITIA', '', '34 RUE SAINT ANDRE', '', '', '', '', '', '', '', '01/03/2005', '', '', '', '', '', '', 1, '161'),
(170, '', 0, 'JOLIVET MAGALI', '', '2 ALLEE DES JARDINIERS', '', '', '', '', '', '', '', '10/08/1987', '', '', '', '', '', '', 1, '161'),
(171, '', 0, 'JOLLIVET NATHALIE', '', '9 RUE JOSEPHINE BAKER', '', '', '', '', '', '', '', '03/03/1988', '', '', '', '', '', '', 1, '161'),
(172, '', 0, 'KOULIKOFF DIMITRI', '', '19 SQUARE DE LA VARENNE', '', '', '', '', '', '', '', '30/06/2014', '', '', '', '', '', '', 1, '161'),
(173, '', 0, 'LANGLOIS NELLY', '', '4 RUE PLANTAGENET', '', '', '', '', '', '', '', '03/10/2000', '', '', '', '', '', '', 1, '161'),
(174, '', 0, 'LAUNAY PASCAL', '', 'SAINT PAUL', '', '', '', '', '', '', '', '01/03/1999', '', '', '', '', '', '', 1, '161'),
(175, '', 0, 'LAURENT SONIA', '', '15 RUE DE LA GUIMELLERIE', '', '', '', '', '', '', '', '01/04/2000', '', '', '', '', '', '', 1, '161'),
(176, '', 0, 'LAURILLEUX MARIE', '', '4 RUE DURFORT CIVRAC', '', '', '', '', '', '', '', '24/01/2014', '', '', '', '', '', '', 1, '161'),
(177, '', 0, 'LAVALARD MARIE ANDREE', '', '11 SQUARE PIERRE LAROUSSE', '', '', '', '', '', '', '', '01/09/1979', '', '', '', '', '', '', 1, '161'),
(178, '', 0, 'LECHAT HELENE', '', '15 IMP. DE LA VIEILLE CHEVRIE', '', '', '', '', '', '', '', '20/03/1976', '', '', '', '', '', '', 1, '161'),
(179, '', 0, 'LECOINDRE MARYLENE', '', '4 RUE MONGAZON', '', '', '', '', '', '', '', '24/10/1977', '', '', '', '', '', '', 1, '161'),
(180, '', 0, 'LEDUC CECILE', '', 'LA PETITE BRUNELIERE', '', '', '', '', '', '', '', '10/10/1979', '', '', '', '', '', '', 1, '161'),
(181, '', 0, 'LEFETZ MARIE ANNICK', '', '1 LA CROIX', '', '', '', '', '', '', '', '28/03/2008', '', '', '', '', '', '', 1, '161'),
(182, '', 0, 'LEFORT AUDREY', '', '6 RUE MARIE FOURNIER', '', '', '', '', '', '', '', '04/07/2005', '', '', '', '', '', '', 1, '161'),
(183, '', 0, 'LEFORT CHRISTINE', '', 'LE CHEMIN DE L''AIRE', '', '', '', '', '', '', '', '02/08/2000', '', '', '', '', '', '', 1, '161'),
(184, '', 0, 'LEGAULT CLAUDE', '', '10 RUE DES CHARMES', '', '', '', '', '', '', '', '26/11/2007', '', '', '', '', '', '', 1, '161'),
(185, '', 0, 'LIAIGRE ANNE', '', '1 RUE EDITH PIAF', '', '', '', '', '', '', '', '07/05/2007', '', '', '', '', '', '', 1, '161'),
(186, '', 0, 'LIAIGRE ANNICK', '', '12 RUE DES BOUTONS D''OR', '', '', '', '', '', '', '', '01/07/1974', '', '', '', '', '', '', 1, '161'),
(187, '', 0, 'LIBEAU JEAN BERNARD', '', '2 LE HAUT PRE', '', '', '', '', '', '', '', '01/01/1989', '', '', '', '', '', '', 1, '161'),
(188, '', 0, 'LOISEAU-TOUBLANC GERALDINE', '', '24 RUE DE VENDEE', '', '', '', '', '', '', '', '09/02/2006', '', '', '', '', '', '', 1, '161'),
(189, '', 0, 'LUMINEAU ANNE MARIE', '', '29 RUE DE LA VILLE EN BOIS', '', '', '', '', '', '', '', '28/02/2000', '', '', '', '', '', '', 1, '161'),
(190, '', 0, 'MACE MARIE ODILE', '', '11 RUE DE LA MAROTERIE', '', '', '', '', '', '', '', '21/08/2007', '', '', '', '', '', '', 1, '161'),
(191, '', 0, 'MALINGE VALERIE', '', '8 ROUTE DE ST FLORENT', '', '', '', '', '', '', '', '29/06/1992', '', '', '', '', '', '', 1, '161'),
(192, '', 0, 'MARTIN MAGALI', '', '7 RUE LE CLOS DU GIRON', '', '', '', '', '', '', '', '09/07/2007', '', '', '', '', '', '', 1, '161'),
(193, '', 0, 'MARTIN VALERIE', '', 'LE PETIT COIN', '', '', '', '', '', '', '', '24/02/1994', '', '', '', '', '', '', 1, '161'),
(194, '', 0, 'MARY LUCIE', '', '6 RUE DE L''ANGELIQUE', '', '', '', '', '', '', '', '15/07/2002', '', '', '', '', '', '', 1, '161'),
(195, '', 0, 'MASLARD CATHERINE', '', '3 RUE DU SILLON', '', '', '', '', '', '', '', '01/10/1985', '', '', '', '', '', '', 1, '161'),
(196, '', 0, 'MENARD CAMILLE', '', '19 RUE DE LA CAYENNE', '', '', '', '', '', '', '', '12/07/2010', '', '', '', '', '', '', 1, '161'),
(197, '', 0, 'MENARD MARIE BERNADETTE', '', '2 RUE DES BLEUETS', '', '', '', '', '', '', '', '04/07/1988', '', '', '', '', '', '', 1, '161'),
(198, '', 0, 'MERLET CATHERINE', '', '5 RUE DU CHANOINE BERTHELOT', '', '', '', '', '', '', '', '24/07/2006', '', '', '', '', '', '', 1, '161'),
(199, '', 0, 'MERLET MARIE', '', '2 RUE NATIONALE', '', '', '', '', '', '', '', '15/11/2010', '', '', '', '', '', '', 1, '161'),
(200, '', 0, 'MILLION AMANDINE', '', '37 RUE DE VERSAILLES', '', '', '', '', '', '', '', '01/02/2010', '', '', '', '', '', '', 1, '161'),
(201, '', 0, 'MINAULT MARIE', '', '22 RUE D''ANJOU', '', '', '', '', '', '', '', '19/06/2003', '', '', '', '', '', '', 1, '161'),
(202, '', 0, 'MONNIER MARIE ANNE', '', '3 RUE BARJOT', '', '', '', '', '', '', '', '29/04/2012', '', '', '', '', '', '', 1, '161'),
(203, '', 0, 'MOREAU NELLY', '', '2 RUE DES JARDINS', '', '', '', '', '', '', '', '12/04/1977', '', '', '', '', '', '', 1, '161'),
(204, '', 0, 'MOREAU VIRGINIE', '', '4 RUE DU COMMERCE', '', '', '', '', '', '', '', '05/03/2007', '', '', '', '', '', '', 1, '161'),
(205, '', 0, 'MORINIERE SARAH', '', '6 RUE PAUL GAUGUIN', '', '', '', '', '', '', '', '04/09/2000', '', '', '', '', '', '', 1, '161'),
(206, '', 0, 'MUSSET BRIGITTE', '', '24 SQUARE DU BRETAULT', '', '', '', '', '', '', '', '01/08/2000', '', '', '', '', '', '', 1, '161'),
(207, '', 0, 'NAUD CHARLINE', '', '10 AVENUE DE LA CARREE', '', '', '', '', '', '', '', '02/08/2010', '', '', '', '', '', '', 1, '161'),
(208, '', 0, 'ONILLON EMMANUELLE', '', '15 RUE DES BOUTONS D''OR', '', '', '', '', '', '', '', '01/11/1999', '', '', '', '', '', '', 1, '161'),
(209, '', 0, 'PALUSSIERE BLANDINE', '', '15 CHEMIN DE LA HEMERIE', '', '', '', '', '', '', '', '13/02/1998', '', '', '', '', '', '', 1, '161'),
(210, '', 0, 'PAPIN MARIE JOSE', '', '7 RUE DES VERGERS', '', '', '', '', '', '', '', '04/10/1977', '', '', '', '', '', '', 1, '161'),
(211, '', 0, 'PASQUIER ANNE MARIE', '', 'LA MENARDIERE', '', '', '', '', '', '', '', '03/03/1995', '', '', '', '', '', '', 1, '161'),
(212, '', 0, 'PASQUIER CINDY', '', '11 RUE DU CHAMP DORE', '', '', '', '', '', '', '', '02/01/2006', '', '', '', '', '', '', 1, '161'),
(213, '', 0, 'PASQUIER MELANIE', '', '10 ALLEE DU BEUVRON', '', '', '', '', '', '', '', '01/10/2012', '', '', '', '', '', '', 1, '161'),
(214, '', 0, 'PASQUIER THERESE', '', '8 RUE DES SORBIERS', '', '', '', '', '', '', '', '01/12/1977', '', '', '', '', '', '', 1, '161'),
(215, '', 0, 'PASQUIER VALERIE', '', '4 RUE DU PONT MARAIS', '', '', '', '', '', '', '', '01/09/1989', '', '', '', '', '', '', 1, '161'),
(216, '', 0, 'PAVIE VANESSA', '', '3 CHEMIN DE LA ROCHE BARATON', '', '', '', '', '', '', '', '20/04/2009', '', '', '', '', '', '', 1, '161'),
(217, '', 0, 'PEAU CHANTAL', '', '8 RUE DE LA PINELLERIE', '', '', '', '', '', '', '', '11/06/2001', '', '', '', '', '', '', 1, '161'),
(218, '', 0, 'PEAUDEAU OLIVIER', '', '19 RUE JEANNE D''ARC', '', '', '', '', '', '', '', '09/02/2009', '', '', '', '', '', '', 1, '161'),
(219, '', 0, 'PERDRIAU GAELLE', '', 'LE CAZEAU', '', '', '', '', '', '', '', '10/06/2013', '', '', '', '', '', '', 1, '161'),
(220, '', 0, 'PETITEAU BRIGITTE', '', '23 RUE DE LA CHOISIERE', '', '', '', '', '', '', '', '29/06/1998', '', '', '', '', '', '', 1, '161'),
(221, '', 0, 'PICHAUD GERALDINE', '', '8 ALLEE DES HETRES', '', '', '', '', '', '', '', '18/02/2000', '', '', '', '', '', '', 1, '161'),
(222, '', 0, 'PINEAU BENOIT', '', '28 RUE DES MORINELLES', '', '', '', '', '', '', '', '16/12/1986', '', '', '', '', '', '', 1, '161'),
(223, '', 0, 'PINEAU CLAUDINE', '', 'LA CLERGERIE', '', '', '', '', '', '', '', '04/09/2000', '', '', '', '', '', '', 1, '161'),
(224, '', 0, 'PINEAU JEANINE', '', 'LES BORRERES', '', '', '', '', '', '', '', '11/08/1997', '', '', '', '', '', '', 1, '161'),
(225, '', 0, 'PINEAU MARIE ODILE', '', '5 RUE DES MESANGES', '', '', '', '', '', '', '', '11/02/1981', '', '', '', '', '', '', 1, '161'),
(226, '', 0, 'PITON CELINE', '', '37 RUE DU DOCTEUR COUBARD', '', '', '', '', '', '', '', '01/02/2010', '', '', '', '', '', '', 1, '161'),
(227, '', 0, 'POILANE LYDIE', '', '3 SQUARE DU GRAND GAZEAU', '', '', '', '', '', '', '', '15/12/1975', '', '', '', '', '', '', 1, '161'),
(228, '', 0, 'POIRIER CHRISTELLE', '', 'L''HERBAUDIERE', '', '', '', '', '', '', '', '06/04/2009', '', '', '', '', '', '', 1, '161'),
(229, '', 0, 'POIROUX FANNY', '', '46 BIS RUE SAINT MARTIN', '', '', '', '', '', '', '', '22/11/2010', '', '', '', '', '', '', 1, '161'),
(230, '', 0, 'POUDRE MARIE BERNADETTE', '', '8 RUE DES PEUPLIERS', '', '', '', '', '', '', '', '20/03/2007', '', '', '', '', '', '', 1, '161'),
(231, '', 0, 'QUIGNON MYRIAM', '', '1 RUE DURFORT CIVRAC', '', '', '', '', '', '', '', '01/04/1996', '', '', '', '', '', '', 1, '161'),
(232, '', 0, 'QUINOIS SOPHIE', '', '75 RUE MONT DE VIE', '', '', '', '', '', '', '', '07/01/1993', '', '', '', '', '', '', 1, '161'),
(233, '', 0, 'RABILLER MARTINE', '', '2 RUE ALEXIS CARREL', '', '', '', '', '', '', '', '27/03/1981', '', '', '', '', '', '', 1, '161'),
(234, '', 0, 'RACINEUX MYRIAM', '', '13 CHEMIN DES LONGEAIS', '', '', '', '', '', '', '', '04/08/1986', '', '', '', '', '', '', 1, '161'),
(235, '', 0, 'RAIMBAULT ANNE', '', '9 RUE CLOS DU GIRON', '', '', '', '', '', '', '', '01/08/1997', '', '', '', '', '', '', 1, '161'),
(236, '', 0, 'RENOU CECILE', '', '17 RUE DU CAMP DE CESAR', '', '', '', '', '', '', '', '13/02/1989', '', '', '', '', '', '', 1, '161'),
(237, '', 0, 'RESNIER FABRICE', '', '21 RUE DES SORBIERS', '', '', '', '', '', '', '', '01/06/1982', '', '', '', '', '', '', 1, '161'),
(238, '', 0, 'RETHORE MARIE PAULE', '', '40 RUE DU QUARTERON', '', '', '', '', '', '', '', '26/08/1997', '', '', '', '', '', '', 1, '161'),
(239, '', 0, 'RIPOCHE SOPHIE', '', '13 BIS RUE DU MOULIN', '', '', '', '', '', '', '', '07/11/1994', '', '', '', '', '', '', 1, '161'),
(240, '', 0, 'ROBET GWENAELLE', '', '30 RUE DES MOULINS', '', '', '', '', '', '', '', '31/01/2012', '', '', '', '', '', '', 1, '161'),
(241, '', 0, 'ROSAENZ DANIELLA', '', '18 ALLEE DE BELLEVUE', '', '', '', '', '', '', '', '15/11/2011', '', '', '', '', '', '', 1, '161'),
(242, '', 0, 'SAMSON CATHERINE', '', '1 AVENUE BEL PRATEL', '', '', '', '', '', '', '', '01/09/1979', '', '', '', '', '', '', 1, '161'),
(243, '', 0, 'SAUTIER VINCENT', '', '1 ALLEE JOACHIM DU BELLAY', '', '', '', '', '', '', '', '13/02/2006', '', '', '', '', '', '', 1, '161'),
(244, '', 0, 'SECHE MARIE FRANCOISE', '', '8 RUE DU MOULIN A VENT', '', '', '', '', '', '', '', '01/05/1996', '', '', '', '', '', '', 1, '161'),
(245, '', 0, 'SECHER AURELIE', '', 'LA MESANGERE', '', '', '', '', '', '', '', '02/06/2003', '', '', '', '', '', '', 1, '161'),
(246, '', 0, 'SOURICE STEPHANE', '', 'LA RAGUELINIERE', '', '', '', '', '', '', '', '01/04/1998', '', '', '', '', '', '', 1, '161'),
(247, '', 0, 'SUBILEAU ANGELIQUE', '', '26 RUE GEORGES CLEMENCEAU', '', '', '', '', '', '', '', '15/05/2000', '', '', '', '', '', '', 1, '161'),
(248, '', 0, 'SUTEAU SANDRINE', '', '9 LA MAISON NEUVE', '', '', '', '', '', '', '', '29/11/1999', '', '', '', '', '', '', 1, '161'),
(249, '', 0, 'TERRIER ELISE', '', '12 RUE DES EGLANTINES', '', '', '', '', '', '', '', '01/08/2005', '', '', '', '', '', '', 1, '161'),
(250, '', 0, 'TRICOIRE MARIE THERESE', '', 'LE GRAND BEAUBUISSON', '', '', '', '', '', '', '', '03/08/1981', '', '', '', '', '', '', 1, '161'),
(251, '', 0, 'TUFFREAU MARYLENE', '', '8 RUE DE LA GUIMELLERIE', '', '', '', '', '', '', '', '12/08/1974', '', '', '', '', '', '', 1, '161'),
(252, '', 0, 'VAN AUDENAERDE GUYLAINE', '', '8 CHEMIN DE LA PINARDERIE', '', '', '', '', '', '', '', '19/03/2001', '', '', '', '', '', '', 1, '161'),
(253, '', 0, 'VENTROUX JULIE', '', '14 ROUTE DE CHOLET', '', '', '', '', '', '', '', '04/09/2002', '', '', '', '', '', '', 1, '161'),
(254, '', 0, 'VERON GEORGETTE', '', '7 BIS RUE DE L''AUNAIE', '', '', '', '', '', '', '', '26/04/1999', '', '', '', '', '', '', 1, '161'),
(255, '', 0, 'VERON HELENE', '', '10 RUE DU PATIS', '', '', '', '', '', '', '', '02/11/2012', '', '', '', '', '', '', 1, '161'),
(256, '', 0, 'VETU ANGELIQUE', '', '5 ALLEE CHARLES GOUNOD', '', '', '', '', '', '', '', '22/12/2008', '', '', '', '', '', '', 1, '161'),
(257, '', 0, 'VINCENT MARIE HELENE', '', '5 RUE DES CHARMES', '', '', '', '', '', '', '', '01/09/1977', '', '', '', '', '', '', 1, '161'),
(258, '', 0, 'VION JESSY', '', '6 RUE PAUL CLAUDEL', '', '', '', '', '', '', '', '06/09/2011', '', '', '', '', '', '', 1, '161');

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
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT;
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
  MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
  MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
  MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
  MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
  MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
  MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
  MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
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
  MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
  MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
  MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
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
  MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
  MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
