-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2016 à 12:42
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
(1, 'administrateur', '882baf28143fb700b388a87ef561a6e5', 1);

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
(1, 1, 'CINEMA CINEMOVIDA', '01-01-2015', '31-12-2015', '5', '1.80', '6.8', '4', '32', 0),
(2, 1, 'PISCINE PASS 5 ENTREES', '01-06-2015', '31-12-2015', '15', '4.70', '19.7', '100', '11', 0),
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
(2, '', 0, 'ABBA', 'Sohaib', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(3, '', 0, 'ADAM', 'Florian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(4, '', 0, 'AHMED OSMAN', 'Abderraouf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(5, '', 2, 'ALLARD', 'Marie-France', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(6, '', 0, 'ANDRE', 'Marie-Rose', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(7, '', 0, 'ANGEVIN', 'Pascal', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(8, '', 0, 'AUBINEAU', 'Daniel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(9, '', 1, 'AUDIGANE', 'Fr&eacute;d&eacute;ric', '1B Rue De La Guimellerie', '', '49600', 'Beaupreau', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(10, '', 1, 'AUGEREAU', 'Christophe', '1 Chemin des 3 Ch&ecirc;nes', '', '49120', 'Chemille Melay', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(11, '', 0, 'AUGEREAU', 'Rachel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(12, '', 0, 'AUNAI', 'Christian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(13, '', 1, 'AUVINET', 'Antoine', '1 Rue de Cou&eacute;tard', '', '44320', 'St Viaud', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(14, '', 0, 'BABONNEAU', 'Jean-François', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(15, '', 0, 'BABY', 'Patrick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(16, '', 1, 'BACONNAIS', 'Tanguy', '34 Rue De St Andr&eacute;', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(17, '', 1, 'BAFFET', 'Nicolas', '44 Rue Du Ch&egrave;ne ', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(18, '', 0, 'BALUTAUD', 'Romain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(19, '', 1, 'BARANGER', 'Franck', '06 rue jacques cartier', '', '49300', 'cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(20, '', 1, 'BARBOT', 'Joseph', '26 Rue Du Ch&ecirc;ne', '', '53410', 'ST Pierre La Cour', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(21, '', 2, 'BARBOT', 'Magali', '6 Rue Du Bordage Lamy', '', '49360', 'Toutmonde', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(22, '', 0, 'BARON', 'Jacques', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(23, '', 0, 'BARREAU', 'Julien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(24, '', 0, 'BAUDON', 'Franck', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(25, '', 1, 'BAUDOUIN', 'Michel', '35 Rue Du Docteur Perrotin', '', '85120', 'Breuil Barret', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(26, '', 0, 'BAZIN', 'Thomas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(27, '', 2, 'BECHU', 'Nadine', '12 T Rue Du Vigneau', '', '49450', 'Roussay', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(28, '', 0, 'BECOT', 'Emmanuel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(29, '', 0, 'BELIARD', 'Jean-Marie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(30, '', 0, 'BELLANGER', 'Sophie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(31, '', 0, 'BERNARD', 'Luc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(32, '', 1, 'BERNIER', 'Alain', '19 Rue De La Boulaie', '', '49340', 'NuallÃ©', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(33, '', 0, 'BERSON', 'Meddy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(34, '', 0, 'BIBOLLET', 'Aurélie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(35, '', 2, 'BICHON', 'Nathalie', '9 Impasse Du Neflier', '', '85290', 'St Laurent Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(36, '', 0, 'BIDET', 'Godefroy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(37, '', 0, 'BIGOT', 'Stéphane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(38, '', 0, 'BILBOT', 'Laurent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(39, '', 2, 'BIRAUD', 'H&eacute;l&egrave;ne', 'Lieu Dit Le Buron Les Aubiers', '', '79250', 'Nueil Les Aubiers', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(40, '', 1, 'BITEAU', 'Yannick', '10 Rue Bayard', '', '49280', 'St Christophe Du bois', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(41, '', 0, 'BIZON', 'Jérémy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(42, '', 0, 'BIZON', 'Loïc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(43, '', 0, 'BLANCHARD', 'François', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(44, '', 1, 'BLOUIN', 'Jean-Michel', '22 Rue Du Bocage', '', '49122', 'BÃ©grolles En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(45, '', 0, 'BLOUIN', 'Jean-Paul', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(46, '', 0, 'BLOUIN', 'Régis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(47, '', 2, 'BODY', 'Patricia', 'LD La Coquerie De Cl&eacute;nay', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(48, '', 0, 'BOISSEAU', 'Romain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(49, '', 1, 'BOLTEAU CHEVET', 'Catherine', '5 rue du Commandant De Beaufort', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(50, '', 0, 'BONDU', 'Jean-Claude', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(51, '', 0, 'BONDY', 'Patrice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(52, '', 0, 'BORDET', 'Sébastien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(53, '', 1, 'BORGMANN', 'C&eacute;dric', '20 Bd De La rochejaquelin', '', '85290', 'St Laurent Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(54, '', 2, 'BOSSARD', 'Claudie', '5 All&eacute;e des M&eacute;sanges', '', '49660', 'Tourfou', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(55, '', 0, 'BOSSARD', 'Jean-Louis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(56, '', 0, 'BOSSEAU', 'Christel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(57, '', 0, 'BOUCHET', 'Lucie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(58, '', 1, 'BOUDEAU', 'Thierry', 'APPT 27 ETAGE 3 34 Rue De La Holland', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(59, '', 0, 'BOULAY', 'Vincent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(60, '', 0, 'BOURCIER', 'Jacquelin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(61, '', 2, 'BOURCIER', 'Nelly', '1 Square des bois', '', '49360', 'MaulÃ©vrier', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(62, '', 0, 'BOUTET', 'Christelle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(63, '', 0, 'BOUTET', 'Philippe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(64, '', 0, 'BRAM DIT SAINT AMAND', 'Pierre Olivier', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(65, '', 0, 'BRANGEON', 'Bastien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(66, '', 0, 'BRETON', 'Karine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(67, '', 2, 'BRIATTE', 'Paola', '17 Rue de la Morini&egrave;re ', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(68, '', 1, 'BRIAUD', 'Olivier', '9 Rue Des Ferronniers', '', '49280', 'St Christophe Du Bois', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(69, '', 0, 'BRIERE', 'Matthieu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(70, '', 1, 'BROCHARD', 'Anthony', '7 rue Andr&eacute; Le Notre', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(71, '', 0, 'BROCHARD', 'Stéphane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(72, '', 1, 'BRONDY', 'Romain', '15 Rue Alphonse Daudet', '', '79140', 'Cerizay', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(73, '', 0, 'BROSSARD', 'Nathalie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(74, '', 1, 'BROSSET', 'Bertrand', '7 Place Du Docteur Fruchaud', '', '49340', 'TrÃ©mentines', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(75, '', 0, 'BROSSET', 'Claudine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(76, '', 1, 'BROUSSEAU', 'Christophe', 'Lot Clos Du Patis 14 rue De La Quintaine', '', '49122', 'BÃ©grolles En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(77, '', 0, 'BUFFARD', 'Laurent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(78, '', 0, 'BURON', 'Mickaël', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(79, '', 1, 'CABALLERO', 'WILLIAM', '8 rue du G&eacute;n&eacute;ral Leclerc', '', '49340', 'NuallÃ©', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(80, '', 2, 'CAILLEAU', 'Ingrid', '12 rue Du Grain D'' Orge', '', '49340', 'NuallÃ©', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(81, '', 2, 'CAILLET', 'Caroline', '6 Rue du Sacr&eacute; Coeur', '', '85290', 'St Laurent Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(82, '', 0, 'CALATAYUD', 'Audrey', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(83, '', 0, 'CANTEAU', 'Yann', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(84, '', 0, 'CAOUREN', 'Sébastien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(85, '', 0, 'CASSIN', 'Catherine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(86, '', 0, 'CASTELLA', 'Manuel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(87, '', 0, 'CESBRON', 'Corinne', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(88, '', 0, 'CHALAYE', 'Eric', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(89, '', 0, 'CHALON', 'Julien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(90, '', 0, 'CHAMPAIN', 'Anabelle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(91, '', 0, 'CHARPENTIER', 'Thierry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(92, '', 0, 'CHARRIAT', 'Antoine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(93, '', 0, 'CHARUAUD', 'Catherine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(94, '', 0, 'CHASSELOUP', 'Marie-Renée', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(95, '', 0, 'CHASSERIAU', 'Stessy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(96, '', 1, 'CHAUVEAUX', 'Tony', '28 Rue Du Pr&eacute; Archer', '', '49600', 'Beaupreau', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(97, '', 0, 'CHAUVIN', 'Jean-Christophe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(98, '', 0, 'CHERBONNIER', 'Samuel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(99, '', 1, 'CHEVALIER', 'Fran&ccedil;ois', '18 B Avenue Du 11 novembre', '', '85130', 'La Verrie', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(100, '', 0, 'CHIKHOUNE', 'Jean-Pierre', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(101, '', 0, 'CHIRON', 'Christine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(102, '', 2, 'CHOISNET', 'Edith', '9 Rue Des Malembardi&egrave;res', '', '49800', 'TrÃ©lazÃ©', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(103, '', 0, 'CHOMEZ', 'Jean-Pierre', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(104, '', 0, 'CHOUPIN', 'Antoine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(105, '', 0, 'CHUPIN', 'Alain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(106, '', 2, 'CHUPIN', 'S&eacute;verine', '5 Impasse de la Lozi&egrave;re', '', '85130', 'ST Aubin Des Ormeaux', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(107, '', 2, 'CHUPIN', 'Sophie', '14 All&eacute;e Des Ecuries', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(108, '', 2, 'CLAIR', 'Marie Christine', '8 Rue De Rome', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(109, '', 0, 'CLAVIER', 'Pascal', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(110, '', 0, 'COINDET', 'Kristell', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(111, '', 0, 'COUFLEAU', 'Thomas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(112, '', 2, 'COURANT', 'Dolor&egrave;s', '39 rue Du stade', '', '79140', 'Combrand', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(113, '', 0, 'COUSIN', 'Valérie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(114, '', 0, 'COUTANT', 'Rémi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(115, '', 0, 'COUTAUD', 'Isabelle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(116, '', 0, 'COYAC', 'Alain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(117, '', 0, 'CRIBIER', 'Stéphane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(118, '', 0, 'DABIN', 'Luc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(119, '', 0, 'Daniel', 'Véronique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(120, '', 1, 'DAVIET', 'Yohan', '15 rue Du Mar&eacute;chal Juin', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(121, '', 0, 'DE FREITAS NUNES', 'Bruno', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(122, '', 0, 'DE HARO', 'Frank', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(123, '', 3, 'DE OLIVEIRA', 'Monica', '22 rue Louis Richard', '', '79140', 'Cerizay', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(124, '', 0, 'DEBIEN', 'Mickaël', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(125, '', 0, 'DEBORDE', 'Benoît', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(126, '', 1, 'DEFOIS', 'Christian', '1, passage de l''union ', '', '49340', 'trementines', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(127, '', 1, 'DEFONTAINE', 'Alain', '3 All&eacute;e De La Taponnerie', '', '49450', 'St AndrÃ© De La Marche', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(128, '', 0, 'DELACOUR', 'Stéphane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(129, '', 0, 'DELAUNAY', 'Laurent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(130, '', 0, 'DELFORGE', 'Gérald', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(131, '', 0, 'DENAT', 'Isabelle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(132, '', 0, 'DESCHAMPS', 'Christophe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(133, '', 1, 'DESCHAMPS', 'Yoann', '9 rue de la Hugrenais', '', '35350', 'La GouesniÃ¨re', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(134, '', 0, 'DESHAIES', 'Nathalie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(135, '', 1, 'DIAS', 'Yohann', '1 Square Moli&egrave;re', '', '49122', 'Le May Sur Evre', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(136, '', 0, 'DIOUBATE', 'Amadou', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(137, '', 0, 'DJAMA', 'Thomas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(138, '', 0, 'DOKTAS', 'Camledi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(139, '', 1, 'DOKTAS', 'Halil', '5 Rue De Belle Vue', '', '49280', 'MaziÃ¨re En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(140, '', 1, 'DOUANGPANGNA', 'Alexis', '18 Rue des mauges', '', '49600', 'Beaupreau', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(141, '', 0, 'DOUCET', 'Daniel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(142, '', 0, 'DROUET', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(143, '', 0, 'DROUET', 'Laurent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(144, '', 2, 'DROUET', 'Sylvie', 'App 12 33 Place De Saumur', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(145, '', 0, 'DUBILLOT', 'Estelle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(146, '', 0, 'DUHAMEL', 'François', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(147, '', 2, 'DUPE', 'Sophie', '3 Sqare De L''Epinette', '', '49122', 'BÃ©grolles En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(148, '', 0, 'DURAND', 'Julien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(149, '', 0, 'DURAND', 'Marjorie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(150, '', 0, 'EL HOUTI', 'Ahmed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(151, '', 0, 'EN NOUJOUMI', 'Omar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(152, '', 0, 'ENFREIN', 'Thierry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(153, '', 3, 'ERCEAU', 'Pauline', '15 Rue Des Acacias', '', '85590', 'St Malo Du Bois', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(154, '', 2, 'FAUCHET', 'Monique', '8 Cit&eacute; Du Rabaly', '', '79700', 'MaulÃ©on', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(155, '', 0, 'FER', 'Philippe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(156, '', 1, 'FERRERE', 'Vincent', '67 Rue De L''Industrie', '', '85290', 'Motagne Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(157, '', 0, 'FIEVET', 'Antoine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(158, '', 0, 'FIEVRE', 'Myriam', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(159, '', 1, 'FIEVRE', 'Yannick', '5 Rue De La Cascade', '', '49450', 'Roussay', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(160, '', 0, 'FILLAUDEAU', 'Joël', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(161, '', 2, 'FONTENEAU', 'Catherine', 'Lieu Dit L''Ecluseau', '', '49450', 'La RenaudiÃ¨re', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(162, '', 0, 'FONTENEAU', 'Fabrice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(163, '', 0, 'FONTENEAU', 'Hélène', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(164, '', 0, 'FONTENEAU', 'Sylvain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(165, '', 0, 'FOUCAUD', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(166, '', 0, 'FOURRIER', 'Jean-Paul', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(167, '', 0, 'FROUIN', 'Amélie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(168, '', 0, 'FUSEAU', 'Sarah', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(169, '', 0, 'GABORIAU', 'Corentin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(170, '', 0, 'GABORIAU', 'Jean-Louis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(171, '', 1, 'GABORIT', 'Sï¿½bastien', '16 Rue Saint Louis', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(172, '', 1, 'GALLARD', 'Jean-Louis', '7 Rue Elie Pouplard', '', '49110', 'Chaudron En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(173, '', 0, 'GALLOT', 'Pascal', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(174, '', 0, 'GASCOIN', 'Séverine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(175, '', 0, 'GAUDU', 'Nicolas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(176, '', 1, 'GAUTHIER', 'Nadine', '13 rue Des Jonquilles', '', '49122', 'BÃ©grolles En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(177, '', 1, 'GAUTIER', 'Anthony', '28 La Palaire', '', '44190', 'St Hilaire De Clisson', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(178, '', 0, 'GAUTIER', 'Benoît', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(179, '', 1, 'GAUTIER', 'Elisabeth', 'La Vratti&egrave;re', '', '85130', 'La Verrie', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(180, '', 0, 'GAUTIER', 'Gabriel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(181, '', 0, 'GAUTIER', 'Pauline', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(182, '', 0, 'GAY', 'Vincent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(183, '', 1, 'GERMAIN', 'Jacques', '45 rue de lorraine', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(184, '', 1, 'GIRARD', 'St&eacute;phane', 'Rue De La Chaillou', '', '49120', 'Chemille', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(185, '', 0, 'GIRARDEAU', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(186, '', 0, 'GIRARDEAU', 'Paula', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(187, '', 1, 'GIRAUD', 'Marcel', '13 Rue Des Jardiniers', '', '49360', 'MaulÃ©vrier', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(188, '', 0, 'GODET', 'Sébastien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(189, '', 0, 'GODEY', 'Pascal', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(190, '', 1, 'GODINEAU', 'Alexandre', '16 Rue des Chemin Crueux', '', '49280', 'MaziÃ¨re En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(191, '', 0, 'GODINEAU', 'Pierre', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(192, '', 0, 'GODINEAU', 'Stéphane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(193, '', 0, 'GOICHON', 'Thierry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(194, '', 2, 'GOMBERT', 'Emeline', '2 Chemin De Bel Air', '', '85590', 'St Malo Du bois', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(195, '', 0, 'GORGET', 'Christophe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(196, '', 0, 'GOURDON', 'Cyndie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(197, '', 0, 'GOURMAUD', 'Françoise', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(198, '', 0, 'GOUSSEAU', 'David', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(199, '', 2, 'GRAVELEAU', 'Armelle', '3 Square Des Landes Sureau', '', '49280', 'St LÃ©ger sous Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(200, '', 0, 'GRELET', 'Arnaud', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(201, '', 2, 'GRETEAU', 'Manuella', '18 Rue Des Combrailles', '', '49230', 'St Crespin Sur Moine', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(202, '', 0, 'GRIFFON', 'Jonathan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(203, '', 1, 'GRIVES', 'Florian', '23 Rue de La R&eacute;publique', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(204, '', 0, 'GROLLEAU', 'Benoist', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(205, '', 0, 'GROLLEAU', 'Yannick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(206, '', 0, 'GUEDON', 'Hélène', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(207, '', 0, 'GUERIN', 'Alain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(208, '', 0, 'GUERIN', 'Jérome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(209, '', 2, 'GUICHETEAU', 'Marie-Christine', '3 All&eacute;e De Bellevue montign&eacute; Sur Moine', '', '49230', 'Montfaucon MontignÃ©', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(210, '', 0, 'GUIET', 'Jean-Pierre', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(211, '', 0, 'GUILLARD', 'Marina', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(212, '', 1, 'GUILLEMAIN', 'Frï¿½dï¿½ric', '20 Rue De Marsala', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(213, '', 0, 'GUILLET', 'Didier', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(214, '', 1, 'GUILLOT', 'Olivier', '2 rue de bourr&eacute;', '', '41400', 'Pontlevoy', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(215, '', 1, 'GUIMBRETIERE', 'Herv&eacute;', '87 Rue Bargeot', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(216, '', 0, 'GUINE', 'Sullivan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(217, '', 1, 'GUYOT', 'Steve', 'Appt 20202eme Etage 149 Rue Nationale', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(218, '', 2, 'HAVAS', 'Sandy', '9 Rue Simone Signoret', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(219, '', 0, 'HERVOCHON', 'Franck', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(220, '', 1, 'HOEPPE', 'Fran&ccedil;ois', 'La Clairi&egrave;re', '', '85700', 'Les Chatelliers Chateaumur', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(221, '', 0, 'HOGDAY', 'Jannick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(222, '', 0, 'HORTALA', 'Nathalie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(223, '', 0, 'HOUEIX', 'Philippe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(224, '', 0, 'HOUMADI', 'Houtoibou', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(225, '', 1, 'HUET', 'S&eacute;bastien', '51 rue De tr&eacute;mentine', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(226, '', 0, 'HULLIN', 'Benoît', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(227, '', 0, 'HUMEAU', 'Philippe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(228, '', 0, 'HURTAUD', 'Claude', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(229, '', 0, 'HUVELIN', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(230, '', 0, 'IBRAHIM', 'Ayouba', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(231, '', 0, 'ISSHAK OUSSMAN', 'Ahmed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(232, '', 1, 'JACQUET', 'Yannick', '60 rue Du commerce', '', '49360', 'La Plaine', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(233, '', 0, 'JAME', 'Emily', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(234, '', 0, 'JAMONNEAU', 'Martine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(235, '', 0, 'JAOUEN', 'Christian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(236, '', 1, 'JARDIN', 'Didier', '4 Sqare De Bourgueil', '', '4930', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(237, '', 0, 'JAUNASSE', 'David', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(238, '', 0, 'JEANNEAU', 'Sabrina', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(239, '', 1, 'JEANNIERE', 'Alain', '36 Rue Du Docteur Bousseau', '', '49300', 'cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(240, '', 0, 'JEZEGOU', 'GAUTIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(241, '', 1, 'JOBARD', 'Gilles', '1 Rue Des Eglantines ', '', '49280', 'St Christophe Du Bois', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(242, '', 0, 'JOBARD', 'Jean-Luc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(243, '', 0, 'JOLY', 'Damien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(244, '', 0, 'JOREL', 'Benjamin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(245, '', 0, 'JOTTREAU', 'Damien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(246, '', 1, 'JOUTEAU', 'Philippe', '33 Rue Moli&egrave;re', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(247, '', 0, 'JUBIN', 'Nicolas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(248, '', 1, 'JUTON', 'Eric', '28 Rue Du Moulinier', '', '44690', 'Chateau Thebaud', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(249, '', 0, 'KENSI', 'Jean Baptiste', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(250, '', 0, 'KHAMMANY', 'Cathy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(251, '', 0, 'KHONGTHONG', 'Lay', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(252, '', 0, 'KHUN', 'Chanpisith', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(253, '', 0, 'KONDOMBO', 'Malik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(254, '', 0, 'KUPPEROTH', 'Mickaël', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(255, '', 0, 'LACAZE', 'Benjamin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(256, '', 0, 'LANDAIS', 'Frédérick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(257, '', 1, 'LANDREAU', 'Fr&eacute;d&eacute;ric', '15 Rue Du Gen&eacute;ral D''Elb&eacute;e', '', '85290', 'St Laurent Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(258, '', 0, 'LANDREAU', 'Jérôme', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(259, '', 0, 'LATERZA', 'Willy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(260, '', 2, 'LE CREFF', 'Nathalie', '2 Rue Sapinaud', '', '85600', 'La GuyonnÃ¨re', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(261, '', 2, 'LE ROCH', 'Marie-H&eacute;l&egrave;ne', '13 Impasse Du Vignaud', '', '85130', 'La Verrie', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(262, '', 1, 'LEBLOND', 'Micka&euml;l', '18 Rue Des Couteliers', '', '49280', 'St Christophe Du Bois', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(263, '', 1, 'LECOMTE', 'Fr&eacute;d&eacute;ric', '28 Rue du Commerce', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(264, '', 0, 'LEDROIT', 'André', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(265, '', 2, 'LEFORT', 'Sophie', 'Lieu Dit La Joini&egrave;re Neuve', '', '49360', 'MaulÃ©vrier', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(266, '', 0, 'LEFRICHE', 'Nadège', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(267, '', 0, 'LELAURE', 'Béatrice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(268, '', 0, 'LEMAIRE', 'Marc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(269, '', 0, 'LEMOINE', 'Nicolas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(270, '', 0, 'LETERTRE', 'Julien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(271, '', 2, 'LEVRON', 'Cathy', '7B All&eacute;e Des Bois', '', '85130', 'Tiffauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(272, '', 0, 'LISKA', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(273, '', 0, 'LIZICSKA', 'Jérémie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(274, '', 0, 'LOIZEAU', 'Annie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(275, '', 0, 'LOUISSAINT', 'Réginald', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(276, '', 0, 'MAFOULOU', 'ARMAND MESMIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(277, '', 0, 'MALEINGE', 'Ludovic', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(278, '', 0, 'MALEINGE', 'Mathias', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(279, '', 0, 'MALY', 'Vieng Say', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(280, '', 0, 'MANCEAU', 'Jonathan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(281, '', 0, 'MANCEAU', 'Nathalie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(282, '', 2, 'MARCHAND', 'Isabelle', '8 Rue Des Genets', '', '19280', 'La SÃ©guiniÃ¨re', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(283, '', 2, 'MARTIN', 'Blandine', '7 All&eacute;e Des Marchetons', '', '49450', 'St AndrÃ© De La Marche', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(284, '', 0, 'MARTINS', 'Maria', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(285, '', 0, 'MATHE', 'Charlène', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(286, '', 1, 'MATIGNON', 'Cl&eacute;ment', '14 Square Gustave Courbet', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(287, '', 0, 'MATRINGHEN', 'CAROLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(288, '', 1, 'MAURILLE', 'Laurent', '17 Rue Pierre Murzeau', '', '85290', 'Motagne Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(289, '', 0, 'MELEUC', 'Françoise', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(290, '', 0, 'MELLIET', 'Eric', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(291, '', 1, 'MENARD', 'Didier', '13 rue Des Genets', '', '49660', 'Tourfou', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(292, '', 0, 'MENGUY', 'Ronan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(293, '', 0, 'MENOIR', 'Omar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(294, '', 1, 'MESSE', 'J&eacute;r&ocirc;me', 'Lieu Dit La Freni&egrave;re', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(295, '', 1, 'MEUNIER', 'St&eacute;phane', '14 Rue Perceval', '', '49280', 'St Christophe Du bois', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(296, '', 0, 'MEUNIER', 'Caroline', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(297, '', 0, 'MEVEL', 'Yann', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(298, '', 0, 'MICHAUD', 'Françoise', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(299, '', 1, 'MONJEAUD', 'Dylan', '10 Rue Du Calvaire', '', '8513', 'St Martin Des Tilleul', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(300, '', 1, 'MORANDEAU', 'St&eacute;phane', '16 Rue Bel Air', '', '49450', 'Roussay', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(301, '', 0, 'MOREAU', 'Julien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(302, '', 2, 'MOREAU', 'Murielle', '4  All&eacute;e Des Roitelets', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(303, '', 1, 'MOREAU', 'Patrick', '4  All&eacute;e Des Roitelets', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(304, '', 1, 'MORILLE', 'Thierry', '16 Rue Des Puisatiers', '', '49280', 'St Christophe Du bois', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(305, '', 1, 'MORISSET', 'Stevie', '10 La Palarderie Neuve', '', '85500', 'Les Herbiers', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(306, '', 0, 'MOUA', 'Seng', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(307, '', 0, 'MOUHCENE', 'Abdelfattah', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(308, '', 0, 'MOUILLE', 'Jacques', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(309, '', 0, 'MOUMINE', 'Yacine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(310, '', 0, 'MOUNSAVENG', 'Virada', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(311, '', 1, 'MUSSET', 'Micka&euml;l', '8 Rue Alphose Daudet', '', '49360', 'MaulÃ©vrier', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(312, '', 0, 'NAUD', 'Catherine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(313, '', 0, 'NAUDOT', 'Romuald', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(314, '', 0, 'NGUYEN', 'Van Hoa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(315, '', 0, 'OGER', 'Adélia', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(316, '', 1, 'ONILLON', 'Richard', '25 Rue Reine Des Pr&egrave;s', '', '49120', 'Chemille Melay', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(317, '', 2, 'ORCONNEAU', 'Catherine', '8 Rue De Bretagne', '', '49450', 'St AndrÃ© De La Marche', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(318, '', 0, 'OUVRARD', 'Ghislain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(319, '', 2, 'PALLARD', 'Alice', '4 Rue de la Bachelette', '', '79700', 'MaulÃ©on', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(320, '', 0, 'PAPAPI', 'MARTIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(321, '', 0, 'PAPIN', 'Albert', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(322, '', 0, 'PAUCHET', 'Victorien', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(323, '', 0, 'PELASCINI', 'Maxime', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(324, '', 0, 'PELLETIER', 'Nicolas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(325, '', 0, 'PERPINA', 'Thomas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(326, '', 0, 'PERROCHON', 'Marylène', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(327, '', 0, 'PICHON', 'Emmanuel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(328, '', 0, 'PIGEARD', 'Florian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(329, '', 0, 'PINEAU', 'Christophe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(330, '', 0, 'PINEAU', 'Eric', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(331, '', 1, 'PINEAU', 'Luc', '12 Rue De L''Arzille', '', '49120', 'Chemille', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(332, '', 0, 'PIOU', 'Stéphanie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(333, '', 1, 'PIVETEAU', 'Daniel', '1 rue Des Charmes', '', '49450', 'St AndrÃ© De La Marche', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(334, '', 1, 'PIVETEAU', 'R&eacute;gis', ' All&eacute;e Beau Rivage', '', '44200', 'Nantes', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(335, '', 0, 'POINTU', 'Cédric', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(336, '', 1, 'POIRIER', 'Micka&euml;l', '1 Rue Des Iris', '', '49450', 'Ville dieu La BlouÃ¨re', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(337, '', 0, 'POITIERS', 'Arnauld', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(338, '', 0, 'POTIER', 'Franck', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(339, '', 0, 'POTIER', 'Frédéric', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(340, '', 0, 'POUPLIN', 'Tony', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(341, '', 0, 'POUREAU', 'Alain', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(342, '', 0, 'PRIOULT', 'David', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(343, '', 0, 'PUISSET', 'Arnaud', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(344, '', 0, 'RAGUENEAU', 'Cyril', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(345, '', 0, 'RAMPILLON', 'Stéphanie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(346, '', 0, 'RAVELEAU', 'Lucie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(347, '', 2, 'RETAILLEAU', 'Tania', '18 Rue des Hortensias', '', '49280', 'La Tessoualle', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(348, '', 2, 'RETHORE', 'Bernadette', '6 Square Des Merisiers', '', '49600', 'Beaupreau', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(349, '', 0, 'RETHORE', 'Grégory', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(350, '', 0, 'RETIERE', 'Alexis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(351, '', 0, 'REVERT', 'Sandra', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(352, '', 0, 'REYNET', 'Ronald', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(353, '', 1, 'RIAULT', 'G&eacute;rald', '27 rue Des Ajoncs', '', '49300', 'Le Puy St Bonnet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(354, '', 0, 'Richard', 'Josselin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(355, '', 1, 'Richard', 'Nicolas', '5 rue Simone Signoret', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(356, '', 1, 'RICHAUDEAU', 'Guylain', '13 Rue Des Chadonnerets', '', '49450', 'St Macaire En Mauges', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(357, '', 0, 'RICHOU', 'Isabelle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(358, '', 0, 'RIETHMULLER', 'Franck', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(359, '', 0, 'RIMAN', 'Stéphane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(360, '', 2, 'RIMBAULT', 'C&eacute;line', '17 Rue De La Chevalerie', '', '49300', 'Le Puy St Bonnet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(361, '', 0, 'RISKOFF', 'Patrick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(362, '', 0, 'RIVAL', 'Line', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(363, '', 0, 'ROBINEAU', 'Yohann', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(364, '', 0, 'RODOLPHE', 'Angélique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(365, '', 0, 'RONDE', 'Anouchka', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(366, '', 0, 'ROULET', 'Maryvonne', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(367, '', 0, 'ROUXEL', 'Pierrick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(368, '', 0, 'RUIZ', 'Teddy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(369, '', 1, 'SALOUX', 'Christophe', '16 Rue De la Val&eacute;e', '', '85130', 'ST Aubin Des Ormeaux', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(370, '', 0, 'SECHET', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(371, '', 0, 'SEGUIN', 'Jérôme', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(372, '', 0, 'SESSEGNON', 'Dako Francis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(373, '', 0, 'SILVA', 'Andréa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(374, '', 0, 'SOULARD', 'Anthony', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(375, '', 1, 'SOULARD', 'Damien', '19 Rue Des Pinsons', '', '85290', 'St Laurent Sur SÃ¨vre', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(376, '', 1, 'SOULARD', 'Jean-Vianney', '4 Lieu Dit La Grande M&eacute;tairie', '', '49360', 'MaulÃ©vrier', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(377, '', 0, 'SOULARD', 'Thierry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(378, '', 0, 'SUN', 'Van', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(379, '', 2, 'SUPIOT', 'Colette', '19 Rue des Jardins', '', '49340', 'TrÃ©mentines', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(380, '', 1, 'SUPIOT', 'Freddy', '7 rue Mozart', '', '49740', 'La Romagne', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(381, '', 0, 'SUPIOT', 'Maxime', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(382, '', 0, 'SUREAU', 'Sylvie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(383, '', 1, 'SUROT', 'Charles-Eric', '38 Rue Pasteur', '', '49280', 'St Christophe Du bois', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(384, '', 0, 'TABUADA', 'Rémy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(385, '', 1, 'TESSIER', 'Denis', 'Lieu Dit la Morli&egrave;re', '', '49230', 'St Crespin Sur Moine', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(386, '', 2, 'TESTARD', 'Nolwenn', '4 Rue De La Croix', '', '49450', 'Roussay', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(387, '', 2, 'THAO', 'Mayla', 'Batiment A 30 R&eacute;sidence Plein Air Avenue Du 11 Novenbre', '', '85130', 'La Verrie', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(388, '', 0, 'Thierry', 'Jean-Pierre', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(389, '', 1, 'Thomas', 'Anthony', '40 Domaine Du Rivage', '', '85600', 'La BoissiÃ¨re De Montaigu', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(390, '', 1, 'Thomas', 'Julien', '19 Rue De la Croix Blanche', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(391, '', 0, 'TIGNON', 'Marine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(392, '', 1, 'TIGNON', 'Pascal', '4 Rue Paul Gauguin', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(393, '', 0, 'TIJOU', 'Lionel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(394, '', 0, 'TISON', 'Leslie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(395, '', 0, 'TOUBRENDE', 'Olivier', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(396, '', 0, 'TOUCHE', 'Antoine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(397, '', 0, 'TOUCHET', 'Claudie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(398, '', 2, 'TRICHET', 'Alexandra', '2 Square Des Tailleurs', '', '49280', 'St Christophe Du Bois', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(399, '', 0, 'TRICOT', 'David', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(400, '', 1, 'TRICOT', 'Fabien', '12 Rue Pasteur', '', '49280', 'St Christophe Du Bois', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(401, '', 3, 'TURMEAU', 'Anne Jo&euml;lle', 'La Chhauveli&egrave;re Vieille', '', '49300', 'Cholet', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(402, '', 1, 'UVENARD', 'R&eacute;gis', '16 Rue Des Genets', '', '49710', 'Le Longeron', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(403, '', 0, 'VALLET', 'Fabienne', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(404, '', 0, 'VANDENBROECKE', 'Christophe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(405, '', 0, 'VANG', 'Seng Cha', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(406, '', 0, 'VANMARCKE', 'Nicolas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(407, '', 2, 'VENDE', 'Catherine', '2 Rue De L''Arceau', '', '79700', 'MaulÃ©on', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(408, '', 0, 'VIAUD', 'Dominique', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(409, '', 1, 'VILLENEUVE', 'Mathieu', '4 Rue De La Garenne', '', '85700', 'St Michel Mont Mercure', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(410, '', 0, 'Vincent', 'Manuel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(411, '', 0, 'VIOLLEAU', 'Eric', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(412, '', 0, 'WIESNIEWSKA', 'Ghislaine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(413, '', 0, 'YOK', 'Yanirath', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(414, '', 1, 'YOU', 'Benoit', '7 Rue des Charmes', '', '79700', 'St Pierre Des Echaubrognes', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(415, '', 0, 'ZARKI', 'Khalid', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(416, 'MAM05', 1, 'Matignon', 'Maxime', '14 Square Gustave Courbet', '', '49300', 'Cholet', '', '', '', '', '', '', '1', '', '', '', '', 1, '161'),
(417, '', 1, 'jury ', 'arnaud', '9 place de l ''eglise ', '', '21160', 'corcelles les monts ', '', '', '', '', '', '', '1', '', '', '', 'commercial', 1, '161'),
(418, '', 2, 'DEVEAUX', 'EMMANUELLE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '161');

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
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
  MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_n_ad`
--
ALTER TABLE `billet_n_ad`
  MODIFY `idbilletnad` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_n_salarie`
--
ALTER TABLE `billet_n_salarie`
  MODIFY `idbilletnsalarie` int(13) NOT NULL AUTO_INCREMENT;
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
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT pour la table `ligne_billet_n_ad`
--
ALTER TABLE `ligne_billet_n_ad`
  MODIFY `idlignebilletnad` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ligne_billet_n_salarie`
--
ALTER TABLE `ligne_billet_n_salarie`
  MODIFY `idlignebilletnsalarie` int(13) NOT NULL AUTO_INCREMENT;
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
  MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
-- AUTO_INCREMENT pour la table `reg_billet_n_ad`
--
ALTER TABLE `reg_billet_n_ad`
  MODIFY `idregbilletnad` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_n_salarie`
--
ALTER TABLE `reg_billet_n_salarie`
  MODIFY `idregbilletnsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
  MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
  MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
