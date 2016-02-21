-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2016 à 15:39
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cesansic22`
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
(10, '18-07-2015', 5, '15.50', '15.5', '5012380183'),
(11, '07-03-2015', 5, '25', '25', '3864789335'),
(13, '23-09-2015', 8, '76.99', '76.99', '3605644852'),
(15, '23-09-2015', 7, '1', '50', '7408021176');

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
(19, 2, 'Vente de Billetterie: MARTIN JOCELYNE pour la prestation REVENTE AUX SALARIES - ARMOR DELICES', '', '50.31', '95583272'),
(20, 2, 'Ajout du produit fixe: trop per&ccedil;u sur vente MARTIN Jocelyne', '', '0.64', '1134867818'),
(21, 2, 'Vente de Billetterie: MARTIN JOCELYNE pour la prestation REVENTE AUX SALARIES - ARMOR DELICES', '', '137.43', '64709507'),
(22, 2, 'Vente de Billetterie: RAULT NADINE pour la prestation REVENTE AUX SALARIES - ARMOR DELICES', '', '237.11', '32317592'),
(23, 2, 'Vente de Billetterie: RAULT NADINE pour la prestation REVENTE AUX SALARIES - ARMOR DELICES', '', '192.56', '94296711'),
(25, 2, 'Vente de Billetterie: RAULT NADINE pour la prestation REVENTE AUX SALARIES - ARMOR DELICES', '', '286.29', '90774154'),
(29, 2, 'Ajout du produit fixe: versement SAMSIC', '', '2937.14', '7063476960'),
(30, 2, 'Ajout du produit fixe: versement SAMSIC', '', '3041.86', '4340846944'),
(33, 2, 'Vente de Billetterie: LEBORGNE MARYVONNE pour la prestation DECES - DECES pour ME LBORGNE', '', '0', '715142884'),
(34, 2, 'Vente de Billetterie: LE CALVEZ CHRISTINE pour la prestation DECES - DECES pour MME LE CALVEZ', '', '0', '24077128'),
(35, 1, 'Achat: DECES', '15.5', '', '5012380183'),
(36, 1, 'Achat: DECES', '25', '', '3864789335'),
(38, 1, 'Achat: RETRAITE', '76.99', '', '3605644852'),
(40, 1, 'Achat: NAISSANCE', '50', '', '7408021176'),
(41, 2, 'Vente de Billetterie: POULARD CYRIL pour la prestation NAISSANCE - NAISSANCE', '', '0', '639280602'),
(42, 2, 'Ajout du produit fixe: SOLDE ANTERIEUR', '', '5161.20', '5208917814'),
(49, 2, 'Vente de Billetterie: CASTEIX LE GUEN CATHERINE pour la prestation REVENTE AUX SALARIES - ARMOR DELICES', '', '192.56', '41637508');

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
(6, 250, '1438128000', 3, '50.31', 1, '95583272', 0),
(7, 250, '1429574400', 3, '137.43', 1, '64709507', 0),
(8, 311, '1433462400', 3, '192.56', 1, '94296711', 0),
(11, 311, '1437004800', 3, '286.29', 1, '90774154', 0),
(12, 227, '1425686400', 3, '0', 0, '715142884', 1),
(13, 178, '1437177600', 3, '0', 0, '24077128', 1),
(14, 301, '1442966400', 3, '0', 0, '639280602', 1),
(15, 373, '1442966400', 3, '0', 0, '', 0),
(21, 50, '1435708800', 3, '192.56', 1, '41637508', 0);

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
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compta_bilan_passif`
--

CREATE TABLE `compta_bilan_passif` (
  `idcptbilanpassif` int(13) NOT NULL,
  `idcomptaplan` int(13) NOT NULL,
  `montant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Structure de la table `compta_resultat`
--

CREATE TABLE `compta_resultat` (
  `idresultat` int(13) NOT NULL,
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
(1, ' SAMSIC 22', '0', '0', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
(19, '95583272', '1438120800', 'Vente de Billetterie: MARTIN JOCELYNE pour la prestation REVENTE AUX SALARIES - ARMOR DELICES', '', '50.31'),
(20, '1134867818', '1438120800', 'trop per&ccedil;u sur vente MARTIN Jocelyne', '', '0.64'),
(21, '64709507', '1429567200', 'Vente de Billetterie: MARTIN JOCELYNE pour la prestation REVENTE AUX SALARIES - ARMOR DELICES', '', '137.43'),
(22, '32317592', '1433455200', 'Vente de Billetterie: RAULT NADINE pour la prestation REVENTE AUX SALARIES - ARMOR DELICES', '', '237.11'),
(23, '94296711', '1433455200', 'Vente de Billetterie: RAULT NADINE pour la prestation REVENTE AUX SALARIES - ARMOR DELICES', '', '192.56'),
(25, '90774154', '1436997600', 'Vente de Billetterie: RAULT NADINE pour la prestation REVENTE AUX SALARIES - ARMOR DELICES', '', '286.29'),
(29, '7063476960', '1429048800', 'versement SAMSIC', '', '2937.14'),
(30, '4340846944', '1436911200', 'versement SAMSIC', '', '3041.86'),
(33, '715142884', '1425682800', 'Vente de Billetterie: LEBORGNE MARYVONNE pour la prestation DECES - DECES pour ME LBORGNE', '', '0'),
(34, '24077128', '1437170400', 'Vente de Billetterie: LE CALVEZ CHRISTINE pour la prestation DECES - DECES pour MME LE CALVEZ', '', '0'),
(35, '5012380183', '1437170400', 'Achat - DECES', '15.5', ''),
(36, '3864789335', '1425682800', 'Achat - DECES', '25', ''),
(38, '3605644852', '1442959200', 'Achat - RETRAITE', '76.99', ''),
(40, '7408021176', '1442959200', 'Achat - NAISSANCE', '50', ''),
(41, '639280602', '1442959200', 'Vente de Billetterie: POULARD CYRIL pour la prestation NAISSANCE - NAISSANCE', '', '0'),
(42, '5208917814', '1423263600', 'SOLDE ANTERIEUR', '', '5161.20'),
(49, '41637508', '1435701600', 'Vente de Billetterie: CASTEIX LE GUEN CATHERINE pour la prestation REVENTE AUX SALARIES - ARMOR DELICES', '', '192.56');

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
(1, 'BONS D ACHATS'),
(2, 'ACTIONS FAMILIALES'),
(4, 'FOURNISSEURS EXTERIEURS');

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
(1, 6, 10, '50.31', '50.31', '0', 0, 'ARMOR DELICES'),
(2, 7, 10, '137.43', '137.43', '0', 0, 'ARMOR DELICES'),
(3, 8, 10, '237.11', '237.11', '0', 0, 'ARMOR DELICES'),
(4, 8, 10, '192.56', '192.56', '0', 0, 'ARMOR DELICES'),
(6, 11, 10, '286.29', '286.29', '0', 0, 'ARMOR DELICES'),
(7, 12, 5, '25', '0', '25', 0, 'DECES pour ME LBORGNE'),
(8, 13, 5, '15.50', '0', '15.5', 0, 'DECES pour MME LE CALVEZ'),
(9, 14, 7, '1', '0', '50', 0, 'NAISSANCE'),
(15, 21, 10, '192.56', '192.56', '0', 0, 'ARMOR DELICES');

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
(7, 'CESAMSIC22', 'e8b341306ded9a57e236a87949793cf7', 1);

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
(1, 1, 'NOEL 1ere CATEGORIE', '', '31-12-2015', '0', '20', '20', '1', '104', 0),
(2, 1, 'NOEL 2eme CATEGORIE', '', '31-12-2015', '0', '30', '30', '1', '102', 0),
(3, 1, 'NOEL 3eme CATEGORIE', '', '31-12-2015', '0', '35', '35', '1', '39', 0),
(4, 1, 'NOEL 4eme CATEGORIE', '', '31-12-2015', '0', '50', '50', '1', '81', 0),
(5, 2, 'DECES', '', '31-12-2015', '0', '1', '1', '100', '10000', 0),
(6, 2, 'MARIAGE', '', '31-12-2015', '0', '50', '50', '1', '3', 0),
(7, 2, 'NAISSANCE', '', '31-12-2015', '0', '50', '50', '3', '0', 0),
(8, 2, 'RETRAITE', '', '31-12-2015', '0', '1', '1', '50', '10076.99', 0),
(9, 2, 'MEDAILLE DU TRAVAIL', '', '31-12-2015', '0', '1', '1', '70', '100000', 0),
(10, 4, 'REVENTE AUX SALARIES', '', '31-12-2015', '1', '0', '1', '1000', '98762.86', 0),
(11, 1, 'MARIAGE ET NOEL', '', '31-12-2015', '0', '1', '1', '100', '9965', 0);

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
(8, 'trop per&ccedil;u sur vente MARTIN Jocelyne', '29-07-2015', '0.64', '1134867818'),
(12, 'versement SAMSIC', '15-04-2015', '2937.14', '7063476960'),
(13, 'versement SAMSIC', '15-07-2015', '3041.86', '4340846944'),
(15, 'SOLDE ANTERIEUR', '07-02-2015', '5161.20', '5208917814');

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
  `pointe` int(1) NOT NULL
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
(1, 6, 1, '40.95', 'CMB', 'CANY CHANTAL pour MARTIN', '6601', 0),
(2, 6, 1, '10', 'CA', 'EVEN OLIEVIERA pourMARTIN', '2001', 0),
(3, 7, 1, '35.39', 'CIC', 'MARTIN JOCELYNE', '3601', 0),
(5, 7, 1, '88.09', 'BPO', 'FROU sophie pour MARTIN Jocelyne', '3603', 0),
(6, 7, 1, '13.95', 'CA', 'HERMANT Martine pour MARTIN jocelyne', '1000', 0),
(7, 8, 1, '47.34', 'BNP', 'ANDIAS pour RAULT Nadine', '5759', 0),
(8, 8, 1, '46.35', 'CAISSE D EPARGNE', 'POSSEMEE pour RAULT Nadine', '3146', 0),
(9, 8, 1, '35.24', 'CMB', 'RAULT Nadine', '4900', 0),
(10, 8, 1, '30.60', 'BNP', 'MBARKI Zoheir', '2221', 0),
(11, 8, 1, '27.63', 'CMB', 'BOULAIRE Sonia Pour RAULT Nadine', '1040', 0),
(12, 8, 1, '15.30', 'CA', 'LEMOINE pour RAULT Nadine', '3404', 0),
(13, 8, 1, '15.30', 'CMB', 'MALAPERT Aurelie', '1710', 0),
(14, 8, 1, '13.41', 'CMB', 'CAVE irene', '6610', 0),
(15, 8, 1, '5.94', 'SOCIETE GENERALE', 'LE FORBAN Roselyne', '35.75', 0),
(23, 11, 1, '272.88', 'CMB', 'RAULT Nadine', '6901', 0),
(24, 11, 1, '13.41', 'CA', 'MARTIN Jocelyne', '3036', 0),
(43, 21, 1, '82.85', 'BNP', 'AHNOUN pour CASTEIX Catherine', '0107', 0),
(44, 21, 1, '18.96', 'CMB', 'RAULT Nadine pour CASTEIX Catherine', '4900', 0),
(45, 21, 1, '27.45', 'BPO', 'CASTEIX Catherine', '9240', 0),
(46, 21, 1, '30.82', 'BNP', 'LEROY pour CASTEIX Catherine', '6165', 0),
(47, 21, 1, '5.04', 'CMB', 'LERESTEUX pour CASTEIX Catherine', '3940', 0),
(48, 21, 1, '13.72', 'SG', 'LE FORBAN pour CASTEIX Catherine', '3575', 0),
(52, 21, 1, '13.72', 'CA', 'NEGRE Patricia pour CASTEIX Catherine', '7000', 0);

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
(2, '00063556', 2, 'ABBE', 'RENEE', '', '', '22440', 'PLOUFRAGAN', '-', '', '', '25/09/1956', '07/10/2014', '01/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(3, '00063556', 2, 'ABBE', 'RENEE', '', '', '22440', 'PLOUFRAGAN', '-', '', '', '25/09/1956', '07/04/2015', '18/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(4, '00003140', 1, 'ALI BACO', 'ALI BEN MOUSSA', '', '', '35290', 'SAINT MEEN LE GRAND', '-', '', '', '21/07/1986', '01/02/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(5, '00091748', 2, 'ALOEVI', 'TAMARI', '', '', '22400', 'LAMBALLE', '0753331914', '', '', '31/05/1981', '27/07/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(6, '00015157', 2, 'AMRANI', 'NATHALIE', '', '', '22600', 'SAINT BARNABE', '0685471566', '', '', '28/10/1972', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(7, '00020820', 2, 'ANACLETO', 'CAROLINE', '', '', '22140', 'CAVAN', '0296374819', '', '', '19/06/1961', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(8, '00010671', 2, 'ANDRE', 'MARCELLE', '', '', '22100', 'TRELIVAN', '-', '', '', '08/02/1959', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(9, '00067912', 2, 'ANDRIEUX', 'REGINE', '', '', '22100', 'QUEVERT', '0296397853', '', '', '03/10/1960', '17/07/2014', '07/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(10, '00053669', 1, 'ANNO', 'PIERRE VINCENT', '', '', '56860', 'SENE', '0698908498', '', '', '01/05/1991', '01/09/2014', '31/10/2015', '1', 'Animateur de Secteur Stagiaire', '', '', 'CDD', 1, '159'),
(11, '00023405', 1, 'ARCELIN', 'GERARD', '', '', '22000', 'SAINT BRIEUC', '0624135437', '', '', '23/02/1962', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(12, '00022615', 1, 'ARMENGAUD', 'FRANCK', '', '', '56430', 'MAURON', '-', '', '', '14/07/1975', '01/03/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(13, '00095312', 1, 'ATTOUMANI', 'NABOUHANE', '', '', '22150', 'PLOUGUENAST', '0659652478', '', '', '30/04/1993', '29/09/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(14, '00024000', 1, 'AUBREE', 'MICKAEL', '', '', '35750', 'SAINT MAUGAN', '0623051592', '', '', '28/06/1979', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(15, '00001785', 3, 'AUGEN', 'MARIE CHRISTINE', '', '', '22640', 'TRAMAIN', '0641984918', '', '', '16/09/1963', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(16, '00015843', 2, 'BARBOT', 'SYLVIE', '', '', '22680', 'ETABLES SUR MER', '0296707451', '', '', '25/07/1968', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(17, '00020251', 2, 'BAUDRILLER', 'CATHERINE', '', '', '22300', 'LANNION', '0615647972', '', '', '17/09/1966', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(18, '00002687', 2, 'BEN RHOUMA', 'MARIE NOELLE', '', '', '22000', 'SAINT BRIEUC', '0672753037', '', '', '03/07/1953', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(19, '00012895', 2, 'BERNABLE', 'VIVIANE', '', '', '22730', 'TREGASTEL', '0296238967', '', '', '09/06/1956', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(20, '00016077', 3, 'BERNABLE', 'EMILIE', '', '', '22730', 'TREGASTEL', '0296238967', '', '', '27/08/1986', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(21, '00042289', 3, 'BERTHELEMY', 'NADINE', '', '', '22800', 'SAINT BRANDAN', '-', '', '', '05/09/1960', '01/12/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(22, '00007881', 2, 'BERTIN', 'REGINE', '', '', '35360', 'BOISGERVILLY', '0299063652', '', '', '19/10/1958', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(23, '00024749', 3, 'BETTON', 'BRIGITTE', '', '', '22000', 'SAINT BRIEUC', '0664151480', '', '', '17/10/1961', '01/06/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(24, '00019994', 3, 'BIDAUD', 'LAETITIA', '', '', '22150', 'SAINT CARREUC', '0682838343', '', '', '16/09/1986', '01/06/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(25, '00007577', 3, 'BIGOT', 'CLAUDIA', '', '', '22400', 'LAMBALLE', '0668215361', '', '', '31/03/1967', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(26, '00004363', 1, 'BLAIZE', 'MARTIAL', '', '', '29690', 'LOCMARIA', '0298999887', '', '', '27/05/1963', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(27, '00017983', 3, 'BLANCHET', 'ISABELLE', '', '', '22440', 'PLOUFRAGAN', '0296943551', '', '', '11/09/1971', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(28, '00003993', 2, 'BLEVIN', 'FRANCOISE', '', '', '22400', 'NOYAL', '0296319250', '', '', '08/08/1953', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(29, '00088451', 1, 'BODEUR', 'KEVIN', '', '', '35360', 'MONTAUBAN DE BRETAGNE', '0677569173', '', '', '07/06/1991', '15/06/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(30, '00009753', 2, 'BOIZARD', 'MARIE NICOLE', '', '', '22700', 'PERROS GUIREC', '0296910253', '', '', '13/09/1962', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(31, '00018875', 1, 'BOUAZIZ', 'NADIR', '', '', '22000', 'SAINT BRIEUC', '0658224555', '', '', '03/12/1977', '01/12/2011', '31/12/2999', '1', 'Laveur de Vitre', '', '', 'CDI', 1, '159'),
(32, '00055754', 2, 'BOUCHER', 'ANNE MARIE', '', '', '22110', 'ROSTRENEN', '0635257038', '', '', '03/05/1958', '11/12/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(33, '00001575', 2, 'BOUGAULT', 'FLORENCE', '', '', '22330', 'LE GOURAY', '0296302060', '', '', '30/12/1962', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(34, '00020562', 2, 'BOUGUET', 'CHRISTINE', '', '', '22120', 'HILLION', '0662351950', '', '', '27/02/1959', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(35, '00002285', 2, 'BOULIN', 'JOCELYNE', '', '', '22240', 'FREHEL', '0650448697', '', '', '25/05/1956', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(36, '00082819', 1, 'BOURDON', 'THIERRY', '', '', '22550', 'MATIGNON', '0699672629', '', '', '27/12/1960', '14/03/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(37, '00044682', 2, 'BOURGES', 'CANDY', '', '', '22740', 'PLEUMEUR GAUTHIER', '-', '', '', '28/02/1981', '01/07/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(38, '00087297', 2, 'BOUTHIER', 'KARINE', '', '', '22300', 'LANNION', '0256395933', '', '', '18/03/1971', '21/09/2015', '03/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(39, '00017493', 2, 'BOUVOT', 'SANDRA', '', '', '22290', 'PLEGUIEN', '-', '', '', '04/04/1972', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(40, '00052222', 2, 'BRIAND', 'JOELLE', '', '', '22000', 'SAINT BRIEUC', '0612965884', '', '', '13/02/1959', '01/08/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(41, '00017610', 2, 'BRUM', 'JEANNE', '', '', '22300', 'LANNION', '0296485962', '', '', '28/03/1957', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(42, '00006670', 2, 'BUCKLEY', 'ESME', '', '', '22110', 'ROSTRENEN', '0296242813', '', '', '01/07/1955', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(43, '00018018', 3, 'BUDOR', 'MARINA', '', '', '22000', 'SAINT BRIEUC', '0608360594', '', '', '20/09/1980', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(44, '00006431', 3, 'BUON', 'ROSELYNE', '', '', '22600', 'LOUDEAC', '0683783585', '', '', '25/02/1968', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(45, '00002541', 2, 'BURLOT', 'MARIE ANNICK', '', '', '22600', 'LA MOTTE', '0296254590', '', '', '24/05/1954', '01/02/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(46, '00037348', 3, 'CARINY', 'CAMILLE', '', '', '22480', 'SAINT NICOLAS DU PELEM', '0781417740', '', '', '27/10/1987', '03/12/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(47, '00008561', 2, 'CAROSIN', 'MARIE PAULE', '', '', '22300', 'LANNION', '0652369228', '', '', '07/09/1955', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(48, '00072810', 2, 'CARSEL', 'BRIGITTE', '', '', '22720', 'SAINT FIACRE', '0296131150', '', '', '01/03/1954', '01/10/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(49, '00087332', 0, 'CASIMIR', 'OLIVIER', '', '', '22410', 'SAINT QUAY PORTRIEUX', '0648566190', '', '', '02/05/1961', '15/09/2015', '03/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(50, '00009313', 2, 'CASTEIX LE GUEN', 'CATHERINE', '', '', '22140', 'TONQUEDEC', '0630713404', '', '', '15/03/1965', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(51, '00061413', 0, 'CATREVAUX', 'MICHEL', '', '', '22480', 'ST GILLES PLIGEAUX', '0296249624', '', '', '01/01/1966', '18/11/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(52, '00004150', 2, 'CAVE', 'IRENE', '', '', '22190', 'PLERIN', '-', '', '', '19/03/1963', '01/12/2011', '31/12/2999', '1', 'Assistante d''Etablissement', '', '', 'CDI', 1, '159'),
(53, '00013817', 3, 'CHAMPALAUNE', 'ANNICK', '', '', '22100', 'QUEVERT', '0952161633', '', '', '28/04/1961', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(54, '00018765', 1, 'CHANU', 'LIONEL', '', '', '22190', 'PLERIN', '0652011309', '', '', '19/10/1969', '01/12/2011', '31/12/2999', '1', 'Laveur de Vitre', '', '', 'CDI', 1, '159'),
(55, '00035229', 3, 'CHARLES', 'VALERIE', '', '', '22740', 'LEZARDRIEUX', '0686757185', '', '', '17/03/1968', '03/06/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(56, '00011610', 3, 'CHAVATTE', 'DOMINIQUE', '', '', '22130', 'CREHEN', '0296802822', '', '', '23/06/1965', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(57, '00082809', 3, 'CHENAU', 'MARIE', '', '', '22620', 'PLOUBAZLANEC', '0630816521', '', '', '17/09/1988', '17/04/2015', '01/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(58, '00015321', 2, 'CHEVALIER', 'PASCALE', '', '', '22400', 'LAMBALLE', '-', '', '', '20/01/1967', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(59, '00003894', 2, 'CIOLFI', 'LAURE', '', '', '22410', 'ST QUAY', '0296708691', '', '', '20/07/1969', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(60, '00001933', 2, 'COLLET', 'NELLY', '', '', '22100', 'DINAN', '0622465186', '', '', '15/06/1955', '01/02/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(61, '00003845', 2, 'COLLEU', 'JOELLE', '', '', '22400', 'LAMBALLE', '0296319092', '', '', '11/02/1966', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(62, '00014973', 3, 'COLLIN', 'LOUISIANE', '', '', '22470', 'PLOUEZEC', '0683362838', '', '', '24/01/1974', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(63, '00006937', 2, 'COLNE', 'GWENOLA', '', '', '22190', 'PLERIN', '0618838995', '', '', '26/05/1968', '01/01/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(64, '00002857', 2, 'COMMAULT', 'NATHALIE', '', '', '22000', 'SAINT BRIEUC', '0296613314', '', '', '26/08/1967', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(65, '00024096', 3, 'CONAN', 'AURELIE', '', '', '22600', 'LA MOTTE', '0671029658', '', '', '27/05/1981', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(66, '00057628', 2, 'CONAN', 'MARTINE', '', '', '22300', 'LANNION', '0296465127', '', '', '29/12/1957', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(67, '00061831', 3, 'CONCEICAO FERREIRA', 'JESSICA', '', '', '22000', 'SAINT BRIEUC', '0608477343', '', '', '06/11/1993', '17/03/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(68, '00062991', 3, 'CONCEICAO FERREIRA', 'FLAVIA', '', '', '22000', 'SAINT BRIEUC', '-', '', '', '06/11/1993', '19/03/2015', '24/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(69, '00047966', 2, 'CONGARD', 'VERONIQUE', '', '', '22140', 'BEGARD', '0296453458', '', '', '26/01/1969', '12/08/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(70, '00069274', 3, 'COURTEL', 'ESMERALDA', '', '', '22150', 'PLOUGUENAST', '0679686742', '', '', '15/04/1987', '05/05/2015', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(71, '00085006', 1, 'COVIELLO', 'THIERRY', '', '', '22630', 'LES CHAMPS GERAUX', '-', '', '', '04/06/1980', '01/04/2015', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(72, '00013110', 2, 'CRESSIOT', 'FLORENCE', '', '', '22360', 'LANGUEUX', '0615483433', '', '', '24/09/1969', '01/11/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(73, '00048589', 1, 'CRESSIOT', 'FABIEN', '', '', '22360', 'LANGUEUX', '-', '', '', '24/06/1991', '31/03/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(74, '00095454', 2, 'CUDORGE', 'CHRISTELLE', '', '', '22200', 'GUINGAMP', '0668602505', '', '', '11/01/1982', '28/09/2015', '31/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(75, '00057627', 2, 'DAVRANCHE', 'GISELE', '', '', '22300', 'LANNION', '0296476082', '', '', '02/09/1964', '01/01/2014', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(76, '00014393', 2, 'DE PARIS', 'FLORENCE', '', '', '22440', 'TREMUSON', '0296767156', '', '', '16/10/1966', '01/11/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(77, '00020732', 2, 'DEBEIR', 'FRANCE LISE', '', '', '22450', 'KERMARIA SULARD', '0645339448', '', '', '06/06/1960', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(78, '00004262', 1, 'DECAUDIN', 'EDDY', '', '', '35290', 'SAINT MEEN LE GRAND', '0780063990', '', '', '30/08/1975', '13/08/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(79, '00021163', 1, 'DELOURME', 'JONATHAN', '', '', '35137', 'BEDEE', '0673984563', '', '', '04/11/1992', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(80, '00003029', 1, 'DEMONCHY', 'CHRISTOPHE', '', '', '56470', 'MENEAC', '0789666682', '', '', '04/05/1979', '01/12/2011', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(81, '00023878', 2, 'DENHEZ', 'MARIE LOUISE', '', '', '22300', 'LANNION', '0643058644', '', '', '28/11/1956', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(82, '00022963', 3, 'DERRIEN', 'VIRGINIE', '', '', '22320', 'CORLAY', '-', '', '', '30/08/1974', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(83, '00052228', 3, 'DESSI', 'LOREDANA', '', '', '22190', 'PLERIN', '0668568841', '', '', '27/09/1982', '01/08/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(84, '00043286', 2, 'DIVES', 'MARTINE', '', '', '22970', 'PLOUMAGAOR', '0296218279', '', '', '04/07/1948', '20/03/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(85, '00015722', 3, 'DONNE', 'STEPHANIE', '', '', '22370', 'PLENEUF VAL ANDRE', '0667972551', '', '', '25/12/1975', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(86, '00006319', 2, 'DONNIOU', 'CHRISTIANE', '', '', '22140', 'CAVAN', '0296359874', '', '', '11/06/1972', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(87, '00081909', 3, 'DONVAL', 'CECILE', '', '', '22300', 'PLOULEC H', '0296455698', '', '', '19/05/1966', '01/04/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(88, '00094676', 3, 'DOS REIS', 'SABRINA', '', '', '22440', 'PLOUFRAGAN', '0647756796', '', '', '26/02/1986', '18/09/2015', '09/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(89, '00055063', 2, 'DOUMBIA', 'SOPHIE', '', '', '22000', 'SAINT BRIEUC', '-', '', '', '08/05/1978', '01/10/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(90, '00018803', 1, 'DROGUET', 'JEROME', '', '', '22240', 'FREHEL', '0669018029', '', '', '05/12/1983', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(91, '00012527', 2, 'DRONIOU', 'MARYLENE', '', '', '22420', 'VIEUX MARCHE', '0296388469', '', '', '30/10/1954', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(92, '00007217', 2, 'DUBOIS', 'CATHERINE', '', '', '22440', 'PLOUFRAGAN', '0672767899', '', '', '30/03/1964', '01/12/2011', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(93, '00003974', 1, 'DUGUE', 'LOIC', '', '', '35290', 'ST MEEN LE GRAND', '0299096469', '', '', '12/08/1959', '01/12/2011', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(94, '00090534', 3, 'DULARY', 'AURELIE', '', '', '22250', 'BROONS', '-', '', '', '28/07/1988', '15/07/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(95, '00024463', 1, 'EL KHALFI', 'FOUAD', '', '', '22950', 'TREGUEUX', '0679965856', '', '', '14/06/1976', '01/12/2011', '31/12/2999', '1', 'Animateur de Secteur Principal', '', '', 'CDI', 1, '159'),
(96, '00009662', 2, 'EVEN', 'MARIE', '', '', '22740', 'PLEUMEUR GAUTIER', '0296165459', '', '', '14/11/1969', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(97, '00089845', 2, 'EVEN', 'MICHELLE', '', '', '22000', 'SAINT BRIEUC', '-', '', '', '07/01/1951', '28/09/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(98, '00061932', 2, 'FARIA', 'CARINA', '', '', '22950', 'TREGUEUX', '0673590051', '', '', '14/01/1989', '17/03/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(99, '00016653', 2, 'FAVREL', 'CATHERINE', '', '', '22650', 'PLOUBALAY', '0296272625', '', '', '27/11/1964', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(100, '00084293', 3, 'FETY', 'VALERIE', '', '', '22560', 'TREBEURDEN', '0296914712', '', '', '13/04/1982', '25/03/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(101, '00022386', 2, 'FLAGEUL', 'CLAUDETTE', '', '', '22600', 'LOUDEAC', '0296254591', '', '', '24/10/1958', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(102, '00010586', 1, 'FLORES', 'GAEL', '', '', '22150', 'HENON', '0678708818', '', '', '23/07/1989', '03/09/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(103, '00058578', 3, 'FOLL', 'LYDIA', '', '', '22150', 'SAINT CARREUC', '-', '', '', '14/05/1989', '22/04/2014', '31/12/2999', '1', 'Laveur de Vitre', '', '', 'CDI', 1, '159'),
(104, '00086952', 3, 'FOULON', 'JACQUELINE', '', '', '22320', 'SAINT MAYEUX', '0296247867', '', '', '15/04/1957', '21/09/2015', '03/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(105, '00050363', 2, 'FRANGVILLE', 'CATHERINE', '', '', '22370', 'PLENEUF VAL ANDRE', '0982608955', '', '', '28/12/1968', '01/10/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(106, '00004649', 2, 'GARDED HAHAULT', 'PATRICIA', '', '', '22000', 'SAINT BRIEUC', '0663712248', '', '', '16/08/1960', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(107, '00005938', 2, 'GAUTHIER', 'PASCALE', '', '', '22400', 'LAMBALLE', '0642113087', '', '', '23/06/1967', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(108, '00074867', 2, 'GAUTIER', 'NADINE', '', '', '22430', 'ERQUY', '0641300773', '', '', '24/06/1963', '02/04/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(109, '00089619', 2, 'GEFFROY', 'MURIELLE', '', '', '22300', 'LANNION', '0664467830', '', '', '23/04/1973', '01/07/2015', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(110, '00001891', 3, 'GENDROT', 'MARIE CHRISTINE', '', '', '35290', 'LE CROUAIS', '0299094099', '', '', '05/07/1963', '01/12/2011', '31/12/2999', '1', 'Agent Specialise de Proprete', '', '', 'CDI', 1, '159'),
(111, '00014120', 2, 'GEORGET', 'MARYVONNE', '', '', '22270', 'PLEDELIAC', '0296315679', '', '', '24/08/1956', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(112, '00018248', 3, 'GESNY', 'MARIE CLAIRE', '', '', '22250', 'SEVIGNAC', '0670718367', '', '', '16/02/1971', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(113, '00016703', 2, 'GITTON', 'JOCELYNE', '', '', '22300', 'LANNION', '0296485268', '', '', '17/03/1954', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(114, '00001956', 2, 'GOARIN', 'MARIE CECILE', '', '', '22290', 'TREMEVIN', '0296701294', '', '', '29/03/1953', '01/10/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(115, '00019148', 2, 'GOAS', 'YVETTE', '', '', '22160', 'PLOURACH', '0630711441', '', '', '27/07/1962', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(116, '00023353', 3, 'GOASAMPIS', 'YOLANDE', '', '', '22260', 'SAINT CLET', '0640942363', '', '', '02/10/1960', '02/10/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(117, '00057694', 2, 'GOMES', 'SYLVIE', '', '', '22300', 'PLOUBEZRE', '0617662905', '', '', '09/06/1966', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(118, '00006444', 3, 'GOSSELIN', 'SANDRINE', '', '', '22000', 'SAINT BRIEUC', '-', '', '', '15/04/1976', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(119, '00017143', 3, 'GOUDELIN', 'NOELLA', '', '', '35290', 'SAINT ONEN LA CHAPELLE', '0299096320', '', '', '07/02/1973', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(120, '00012500', 2, 'GOURIOU', 'FABIENNE', '', '', '22300', 'PLOULECH', '0673452393', '', '', '28/05/1972', '02/01/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(121, '00009352', 2, 'GOURIOU LE GUEN', 'VALERIE', '', '', '22560', 'TREBEURDEN', '0296154244', '', '', '01/07/1970', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(122, '00002263', 2, 'GRALL', 'GABRIELLE', '', '', '22310', 'PLESTIN LES GREVES', '0296350159', '', '', '28/09/1949', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(123, '00021645', 2, 'GRALL', 'STEPHANIE', '', '', '29650', 'PLOUEGAT MOYSAN', '0298792513', '', '', '28/03/1974', '15/06/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(124, '00002396', 1, 'GRIGNON', 'FREDERIC', '', '', '22350', 'LA CHAPELLE BLANCHE', '0629776181', '', '', '08/04/1978', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(125, '00020937', 2, 'GROSJEAN', 'MARIE FRANCE', '', '', '22400', 'LAMBALLE', '0296347475', '', '', '14/07/1961', '01/12/2011', '31/12/2999', '1', 'Agent Tres Qualifie de Proprete', '', '', 'CDI', 1, '159'),
(126, '00016959', 2, 'GROT', 'PATRICIA', '', '', '22710', 'PENVENAN', '0668219574', '', '', '01/07/1962', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(127, '00091130', 1, 'GRZONKOWSKI', 'CHRISTOPHE', '', '', '56860', 'SENE', '-', '', '', '11/01/1972', '20/07/2015', '31/12/2999', '1', 'ADS AGRO', '', '', 'CDI', 1, '159'),
(128, '00057690', 3, 'GUDEMARD', 'GUYLENE', '', '', '22300', 'LANNION', '0296480026', '', '', '25/11/1964', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(130, '00094687', 1, 'GUENO', 'AXEL', '', '', '35360', 'MEDREAC', '0630236724', '', '', '03/01/1990', '21/09/2015', '02/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(131, '00090271', 3, 'GUEROUE', 'NATHALIE', '', '', '22200', 'GUINGAMP', '0682378565', '', '', '24/12/1975', '01/07/2015', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(132, '00005055', 3, 'GUILLAUME', 'NADIA', '', '', '22230', 'MERDRIGNAC', '0647478188', '', '', '10/04/1980', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(133, '00021440', 3, 'GUILLERMIN', 'LAETITIA', '', '', '22950', 'TREGUEUX', '0612237369', '', '', '04/12/1976', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(134, '00016251', 3, 'GUIMARD', 'SYLVIE', '', '', '22210', 'LA CHEZE', '0614260011', '', '', '06/04/1970', '01/03/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(135, '00012697', 1, 'GUIZOUARN', 'PASCAL', '', '', '22780', 'LOGUIVY PLOUGRAS', '0296385691', '', '', '26/03/1964', '01/12/2011', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(136, '00094896', 3, 'GUYOMARD', 'SOLLEN', '', '', '22610', 'PLEUBIAN', '-', '', '', '12/02/1976', '15/09/2015', '03/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(137, '00014039', 2, 'GUYOT', 'ISABELLE', '', '', '22150', 'PLOUGUENAST', '0296676901', '', '', '12/12/1961', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(138, '00005702', 2, 'HAMON', 'JACQUELINE', '', '', '22190', 'PLERIN', '0296334250', '', '', '06/07/1953', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(139, '00006186', 2, 'HAMON', 'DANIELLE', '', '', '22160', 'CALLAC', '0673353258', '', '', '09/06/1958', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(140, '00093812', 3, 'HAMON', 'MARIE', '', '', '22170', 'PLOUAGAT', '-', '', '', '28/04/1966', '17/08/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(141, '00012296', 2, 'HELLARD', 'MARIE ANGE', '', '', '22940', 'PLAINTEL', '0623170660', '', '', '25/09/1962', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(142, '00004949', 2, 'HENRY', 'VALERIE', '', '', '22470', 'PLOUEZEC', '0665017646', '', '', '05/10/1968', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(143, '00076595', 3, 'HENRY', 'LAURIANE', '', '', '22190', 'PLERIN', '-', '', '', '02/02/1984', '09/09/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(144, '00076595', 3, 'HENRY', 'LAURIANE', '', '', '22190', 'PLERIN', '-', '', '', '02/02/1984', '29/06/2015', '12/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(145, '00013956', 2, 'HERBAULT', 'MARTINE', '', '', '22440', 'PLOUFRAGAN', '-', '', '', '27/11/1961', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(146, '00057708', 2, 'HERISSON', 'SANDRINE', '', '', '22300', 'LANNION', '0625832765', '', '', '08/05/1974', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(147, '00023968', 1, 'HERMANGE', 'JONATHAN', '', '', '22000', 'SAINT BRIEUC', '0778814918', '', '', '18/07/1989', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(148, '00020086', 3, 'HILLION', 'PATRICIA', '', '', '22190', 'PLERIN', '0699430097', '', '', '25/06/1959', '01/06/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(149, '00064321', 2, 'HILY', 'SYLVIE', '', '', '22960', 'PLEDRAN', '0612132472', '', '', '27/04/1965', '20/06/2015', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(150, '00057624', 1, 'HOUWAER', 'GUILLAUME', '', '', '22300', 'ROSPEZ', '0296372600', '', '', '19/12/1964', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(151, '00085007', 1, 'HUBERT', 'JONATHAN', '', '', '22120', 'QUESSOY', '-', '', '', '13/10/1989', '01/09/2015', '01/12/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(152, '00023952', 2, 'HUE', 'CHRISTINE', '', '', '22330', 'SAINT GOUENO', '0684286038', '', '', '08/01/1961', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(153, '00008825', 2, 'JACOB', 'DANIELA', '', '', '22000', 'SAINT BRIEUC', '0296754487', '', '', '28/01/1980', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(154, '00090245', 3, 'JACOB', 'SANDRINE', '', '', '22290', 'LANVOLLON', '0621435557', '', '', '04/08/1973', '01/07/2015', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(155, '00019356', 2, 'JEGU', 'ELIANE', '', '', '22400', 'SAINT ALBAN', '0296728049', '', '', '01/05/1956', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(156, '00008538', 2, 'JEZEQUEL', 'LYDIE', '', '', '22610', 'PLEUBIAN', '0296165405', '', '', '10/12/1964', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(157, '00016124', 2, 'JOSSE', 'DANIELLE', '', '', '22260', 'PLOEZAL', '0296950599', '', '', '10/11/1954', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(158, '00006217', 2, 'JOUEO', 'JOSIANE', '', '', '22600', 'TREVE', '0612123353', '', '', '07/08/1957', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(159, '00004628', 2, 'JUNTER', 'CORINNE', '', '', '22200', 'GUINGAMP', '0296210342', '', '', '29/10/1955', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(160, '00024506', 2, 'KACIM', 'PATRICIA', '', '', '22950', 'TREGUEUX', '0647754269', '', '', '19/03/1966', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(161, '00066336', 1, 'KANEM', 'KHALED', '', '', '22000', 'SAINT BRIEUC', '-', '', '', '15/07/1984', '14/09/2015', '03/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(162, '00013185', 2, 'KEROMEN', 'ANNE YVONNE', '', '', '22170', 'SAINT JEAN KERDANIEL', '0296797453', '', '', '13/01/1964', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(163, '00022740', 2, 'KERRO', 'DANIELLE', '', '', '22300', 'LANNION', '0296377636', '', '', '11/08/1959', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(164, '00047964', 2, 'KUNZ', 'ANNE MARIE', '', '', '22140', 'BEGARD', '0688912611', '', '', '04/10/1960', '02/06/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(165, '00021757', 1, 'LAGADEC', 'JEAN LUC', '', '', '22780', 'LOGUIVY PLOUGRAS', '0296385829', '', '', '09/07/1966', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(166, '00018516', 3, 'LAVANANT', 'JOELLE', '', '', '22810', 'BELLE ISLE EN TERRE', '0256392439', '', '', '14/01/1972', '29/01/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(167, '00059569', 3, 'LAVERDIN', 'CHRISTINE', '', '', '22000', 'SAINT BRIEUC', '0296751540', '', '', '09/12/1953', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(168, '00095146', 1, 'LE BALLIER', 'ERIC', '', '', '22300', 'TREDREZ LOCQUEMEAU', '0619200104', '', '', '06/03/1963', '21/09/2015', '01/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(169, '00018703', 1, 'LE BARS', 'SERGE', '', '', '29640', 'PLOUGONVEN', '0603339377', '', '', '02/06/1968', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(170, '00015646', 2, 'LE BIHAN', 'FRANCOISE', '', '', '22220', 'PLOUGUIEL', '0296923288', '', '', '13/02/1961', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(171, '00024559', 1, 'LE BONHOMME', 'CHRISTOPHE', '', '', '22160', 'PLOURACH', '0296450324', '', '', '12/08/1978', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(172, '00008667', 2, 'LE BONNIEC JAOUEN', 'YVELINE', '', '', '22540', 'LOUARGAT', '0688778969', '', '', '04/03/1967', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(173, '00024808', 2, 'LE BOZEC', 'MARIANA', '', '', '22000', 'SAINT BRIEUC', '0631325551', '', '', '13/06/1956', '01/06/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(174, '00015991', 2, 'LE BRAS', 'JACQUELINE', '', '', '22120', 'YFFINIAC', '0689945801', '', '', '10/05/1959', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(175, '00035519', 2, 'LE BRIS', 'SEVERINE', '', '', '22300', 'LANNION', '0615174361', '', '', '24/10/1975', '01/10/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(176, '00057623', 2, 'LE BUZULIER', 'MARIE ANNE', '', '', '22300', 'LANNION', '0296052585', '', '', '26/07/1958', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(177, '00015668', 1, 'LE CALVEZ', 'MAXIME', '', '', '22350', 'CAULNES', '0614217764', '', '', '20/08/1986', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(178, '00057716', 2, 'LE CALVEZ', 'CHRISTINE', '', '', '22560', 'PLEUMEUR BODOU', '0296918331', '', '', '22/02/1960', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '143.5'),
(179, '00073968', 3, 'LE CALVEZ', 'CHRISTEL', '', '', '22700', 'LOUANNEC', '0296140717', '', '', '19/01/1972', '22/09/2015', '23/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(180, '00015111', 1, 'LE CAT', 'NICOLAS', '', '', '22250', 'TREDIAS', '-', '', '', '16/01/1985', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(181, '00020429', 2, 'LE CLEC H', 'CLAUDETTE', '', '', '22000', 'ST BRIEUC', '0689672620', '', '', '07/01/1961', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(182, '00042609', 3, 'LE CLEC H', 'NATHALIE', '', '', '22000', 'SAINT BRIEUC', '-', '', '', '08/08/1966', '09/01/2015', '02/11/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(183, '00066785', 1, 'LE CORRE', 'FREDERIC', '', '', '22480', 'SAINT GILLES PLIGEAUX', '0646877876', '', '', '03/03/1974', '03/08/2015', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(184, '00021970', 3, 'LE COZ', 'CATHERINE', '', '', '22580', 'PLOUHA', '0626649785', '', '', '14/02/1963', '01/06/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(185, '00006614', 3, 'LE DENMAT', 'NATHALIE', '', '', '22440', 'PLOUFRAGAN', '0664822679', '', '', '30/09/1969', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(186, '00036525', 3, 'LE DENMAT', 'FLORENCE', '', '', '22000', 'SAINT BRIEUC', '0983809716', '', '', '22/08/1968', '01/02/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(187, '00045827', 3, 'LE DENMAT', 'ANNE', '', '', '22960', 'PLEDRAN', '0787786513', '', '', '09/06/1972', '01/05/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(188, '00010823', 2, 'LE DOLEDEC', 'CHANTAL', '', '', '22150', 'HENON', '0296424823', '', '', '04/08/1954', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(189, '00090142', 3, 'LE FAUCHEUR', 'LAETITIA', '', '', '22360', 'LANGUEUX', '-', '', '', '23/04/1995', '15/09/2015', '12/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(190, '00090142', 3, 'LE FAUCHEUR', 'LAETITIA', '', '', '22360', 'LANGUEUX', '-', '', '', '23/04/1995', '21/09/2015', '02/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(191, '00057626', 2, 'LE FELT', 'BRIGITTE', '', '', '22710', 'PENVENAN', '0296927231', '', '', '24/07/1959', '01/01/2014', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(192, '00004103', 2, 'LE FORBAN', 'ROSELYNE', '', '', '22440', 'TREMUSON', '0296767066', '', '', '15/12/1970', '01/12/2011', '31/12/2999', '1', 'Assistante d''Etablissement', '', '', 'CDI', 1, '159'),
(193, '00020741', 3, 'LE FRANCOIS', 'REGINE', '', '', '22830', 'PLOUASNE', '0658530312', '', '', '14/07/1960', '01/10/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(194, '00001348', 2, 'LE GALL', 'MARIE CLAUDE', '', '', '22140', 'CAVAN', '0296358899', '', '', '26/06/1963', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(195, '00002738', 2, 'LE GALL', 'JOSIANE', '', '', '22570', 'GOUAREC', '0296248608', '', '', '15/07/1957', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(196, '00009411', 2, 'LE GALL', 'CHRISTINE', '', '', '22420', 'PLOUARET', '0296388932', '', '', '25/09/1967', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(197, '00013886', 2, 'LE GALL', 'ISABELLE', '', '', '22100', 'BRUSVILY', '0296845662', '', '', '20/03/1968', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(198, '00014135', 1, 'LE GALL', 'KEVIN', '', '', '29650', 'GUERLESQUIN', '0663679911', '', '', '30/07/1992', '01/08/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(199, '00010955', 3, 'LE GOFF', 'NATHALIE', '', '', '22300', 'LANNION', '0619168481', '', '', '03/07/1973', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(200, '00016314', 2, 'LE GOFF', 'JOSIANE', '', '', '22600', 'LOUDEAC', '0296282201', '', '', '16/05/1959', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(201, '00057717', 1, 'LE GOFF', 'STEPHANE', '', '', '22300', 'LANNION', '0296376873', '', '', '16/09/1970', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(202, '00087395', 3, 'LE GOFF', 'STEPHANIE', '', '', '22000', 'SAINT BRIEUC', '0698891412', '', '', '27/02/1982', '01/05/2015', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(203, '00057720', 3, 'LE GRUIEC', 'VALERIE', '', '', '22140', 'CAVAN', '0296546619', '', '', '08/02/1971', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(204, '00004518', 2, 'LE GUEN', 'NOLWENN', '', '', '22120', 'HILLION', '-', '', '', '01/03/1980', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(205, '00009622', 2, 'LE GUEN', 'LOUISETTE', '', '', '22560', 'TREBEURDEN', '0296235028', '', '', '06/01/1952', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(206, '00021211', 2, 'LE GUEN', 'LYDIA', '', '', '22220', 'TREGUIER', '0296924782', '', '', '04/05/1960', '13/01/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(207, '00016576', 2, 'LE GUIADER', 'SOPHIE', '', '', '22400', 'LAMBALLE', '0296310004', '', '', '04/10/1970', '01/12/2011', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(208, '00057719', 2, 'LE HENAFF', 'VIRGINIE', '', '', '22730', 'TREGASTEL', '0296156452', '', '', '27/05/1975', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(209, '00054793', 3, 'LE JEUNE', 'CATHERINE', '', '', '22500', 'PAIMPOL', '-', '', '', '04/03/1965', '01/10/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(210, '00066683', 3, 'LE MAGUER', 'PRISCILLIA', '', '', '22960', 'PLEDRAN', '0659271942', '', '', '05/08/1987', '31/08/2015', '10/11/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(211, '00016547', 1, 'LE MARREC', 'JEAN MICHEL', '', '', '22780', 'LOGUIVY PLOUGRAS', '0296385427', '', '', '04/04/1966', '01/12/2011', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(212, '00020175', 1, 'LE MAT', 'BENOIT', '', '', '22780', 'PLOUNERIN GARE', '0661151809', '', '', '18/07/1973', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(213, '00023637', 1, 'LE MAT', 'CLAUDE', '', '', '22780', 'PLOUGRAS', '0296385149', '', '', '31/07/1968', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(214, '00036462', 1, 'LE MAT', 'ANTOINE', '', '', '22780', 'PLOUGRAS', '-', '', '', '27/07/1990', '18/04/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(215, '00022698', 3, 'LE MERRER', 'PATRICIA', '', '', '22440', 'PLOUFRAGAN', '0296785461', '', '', '26/07/1960', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(216, '00017036', 2, 'LE MONNIER', 'SANDRINE', '', '', '35190', 'TREVERIEN', '0299456252', '', '', '23/05/1975', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(217, '00035791', 3, 'LE MONTREER', 'JENNIFER', '', '', '22300', 'PLOUMILLIAU', '0661328093', '', '', '28/11/1992', '22/09/2015', '05/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(218, '00083194', 3, 'LE MORVAN', 'VERONIQUE', '', '', '22140', 'BEGARD', '0676716571', '', '', '19/08/1970', '10/09/2015', '10/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(219, '00048487', 2, 'LE NAY', 'GEORGETTE', '', '', '22170', 'CHATELAUDREN', '0686740779', '', '', '01/11/1959', '02/07/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(220, '00001730', 2, 'LE PARC', 'ROSINE', '', '', '22710', 'PENVENAN', '-', '', '', '06/02/1962', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(221, '00057466', 3, 'LE ROUX', 'KARINE', '', '', '22290', 'TRESSIGNAUX', '0296706008', '', '', '06/04/1972', '02/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(222, '00040682', 1, 'LE SAOUT', 'DAVID', '', '', '22970', 'PLOUMAGOAR', '0633347115', '', '', '02/01/1967', '01/02/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(223, '00013280', 2, 'LE SAUNIER', 'MICHELE', '', '', '22300', 'LANNION', '0669064209', '', '', '10/02/1968', '01/06/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(224, '00007546', 3, 'LE TIEC', 'PIERRETTE', '', '', '22300', 'LANNION', '0677636941', '', '', '27/09/1962', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(225, '00019498', 3, 'LE VAILLANT', 'CECILE', '', '', '22200', 'GUINGAMP', '0296210786', '', '', '20/09/1954', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(226, '00007466', 3, 'LEBON', 'MICHELE', '', '', '22300', 'TREDREZ LOCQUEMEAU', '0296352258', '', '', '06/03/1960', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(227, '00018233', 3, 'LEBORGNE', 'MARYVONNE', '', '', '22200', 'GUINGAMP', '0296135291', '', '', '09/06/1963', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '134'),
(228, '00089590', 1, 'LECHANOINE', 'LUDOVIC', '', '', '22000', 'SAINT BRIEUC', '-', '', '', '27/09/1980', '21/09/2015', '02/10/2015', '1', 'Laveur de Vitre', '', '', 'CDD', 1, '159'),
(229, '00022165', 3, 'LEMEE', 'MARTINE', '', '', '22960', 'PLEDRAN', '0296643063', '', '', '21/08/1957', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(230, '00003859', 2, 'LEMERCIER', 'JOSIANE', '', '', '22550', 'MATIGNON', '0296411986', '', '', '01/10/1956', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(231, '00056669', 2, 'LEMFEREJ', 'NADIA', '', '', '22950', 'TREGUEUX', '-', '', '', '09/10/1969', '04/11/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(232, '00003117', 2, 'LENNON', 'ISABELLE', '', '', '22440', 'PLOUFRAGAN', '0983765990', '', '', '19/11/1965', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(233, '00018664', 2, 'LEON', 'CLEMENCE', '', '', '22970', 'PLOUMAGOAR', '0296400767', '', '', '11/06/1963', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(234, '00074515', 3, 'LEPARQ', 'VIRGINIE', '', '', '22000', 'SAINT BRIEUC', '-', '', '', '11/08/1980', '10/11/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(235, '00022253', 2, 'LERESTEUX', 'MARTINE', '', '', '22300', 'LANNION', '0296372304', '', '', '13/10/1968', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(236, '00021538', 2, 'LEROY KERDERRIEN', 'GISELE', '', '', '22100', 'LANVALLAY', '0612441225', '', '', '15/11/1956', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(237, '00003693', 2, 'LEVAVASSEUR', 'KATIE', '', '', '22100', 'QUEVERT', '0688166714', '', '', '05/09/1970', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(238, '00020783', 1, 'LEVEQUE', 'CHRISTOPHE', '', '', '35190', 'SAINT DOMINEUC', '0643831682', '', '', '06/07/1973', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(239, '00056582', 2, 'LEZORAINE', 'MAGALI', '', '', '22200', 'GUINGAMP', '0686920292', '', '', '06/07/1975', '26/11/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(240, '00023785', 3, 'LIVET', 'ISABELLE', '', '', '22340', 'PAULE', '0296298174', '', '', '21/02/1964', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(241, '00014005', 1, 'LORFEUVRE', 'YVON', '', '', '56490', 'MENEAC', '0299933590', '', '', '06/08/1962', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(242, '00080517', 1, 'LUBIN', 'ADRIEN', '', '', '35290', 'GAEL', '0299077115', '', '', '15/02/1993', '10/01/2015', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(243, '00089914', 1, 'MAHALIMBY', 'JEAN FRANCOIS', '', '', '22600', 'LA MOTTE', '0699887280', '', '', '04/02/1965', '01/09/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(244, '00017282', 3, 'MALAPERT', 'AURELIE', '', '', '22000', 'ST BRIEUC', '0614234788', '', '', '17/12/1986', '01/01/2012', '31/12/2999', '1', 'Laveur de Vitre', '', '', 'CDI', 1, '159'),
(245, '00087650', 3, 'MALNOE', 'SABRINA', '', '', '22380', 'SAINT CAST LE GUILDO', '-', '', '', '05/08/1970', '01/09/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(246, '00012612', 2, 'MANIN', 'FRANCOISE', '', '', '22950', 'TREGUEUX', '-', '', '', '23/01/1957', '01/12/2011', '31/12/2999', '1', 'Responsable de Site', '', '', 'CDI', 1, '159'),
(247, '00008229', 2, 'MARAIS', 'FRANCOISE', '', '', '22500', 'PLEBOULLE', '0296278650', '', '', '25/02/1966', '01/09/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(248, '00018428', 2, 'MARIETTE', 'NATHALIE', '', '', '22630', 'SAINT JUDOCE', '0643171370', '', '', '12/09/1976', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(249, '00001800', 2, 'MARSOUIN', 'DENISE', '', '', '22440', 'PLOUFRAGAN', '0296711907', '', '', '08/03/1960', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(250, '00017177', 2, 'MARTIN', 'JOCELYNE', '', '', '22510', 'BREHAND', '0296425741', '', '', '15/06/1962', '01/12/2011', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(251, '00021474', 3, 'MARTIN', 'VIRGINIE', '', '', '22190', 'PLERIN', '0665053700', '', '', '11/11/1987', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(252, '00094643', 3, 'MARTIN', 'ESTELLE', '', '', '35047', 'BRUZ', '-', '', '', '17/03/1993', '07/09/2015', '31/12/2999', '1', 'Animateur de Secteur Stagiaire', '', '', 'CDI', 1, '159'),
(253, '00007790', 2, 'MATUSZEK', 'MARIE ALICE', '', '', '22000', 'SAINT BRIEUC', '0679256896', '', '', '22/04/1957', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(254, '00004111', 2, 'MAURICETTE', 'SARA', '', '', '22360', 'LANGUEUX', '0611221884', '', '', '15/06/1966', '01/01/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(255, '00047189', 1, 'MBARKI', 'ZOHEIR', '', '', '22440', 'PLOUFRAGAN', '0627501593', '', '', '02/03/1974', '07/06/2013', '31/12/2999', '1', 'Laveur de Vitre', '', '', 'CDI', 1, '159'),
(256, '00017991', 1, 'MEAS', 'CHHOUT', '', '', '29600', 'MORLAIX', '0621430754', '', '', '10/12/1955', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(257, '00068987', 2, 'MECHOUK', 'NACIRA', '', '', '22200', 'TREDARZEC', '-', '', '', '08/03/1961', '08/07/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(258, '00009971', 3, 'MERLE', 'AURELIA', '', '', '22120', 'QUESSOY', '0643752160', '', '', '13/05/1980', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(259, '00010766', 2, 'MICHEL', 'YVETTE', '', '', '22100', 'DINAN', '0674928580', '', '', '12/01/1962', '01/06/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(260, '00013966', 3, 'MICHEL', 'MAGALI', '', '', '22290', 'GOUDELIN', '0296449299', '', '', '25/11/1974', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(261, '00011270', 2, 'MICHENAUD', 'VERONIQUE', '', '', '22300', 'LANNION', '0677229686', '', '', '27/03/1966', '01/10/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(262, '00071646', 3, 'MOAL', 'CLAIRE', '', '', '22300', 'PLOUMILLIAU', '0629390862', '', '', '03/06/1971', '30/03/2015', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(263, '00005052', 2, 'MODEZ', 'FRANCOISE', '', '', '22960', 'PLEDRAN', '0630720031', '', '', '31/03/1957', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(264, '00008198', 1, 'MOKHTARI', 'MANADE', '', '', '35290', 'SAINT MEEN LE GRAND', '0614061172', '', '', '05/04/1980', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(265, '00002408', 3, 'MORDELET', 'KAREN', '', '', '22390', 'BOURBRIAC', '0682350056', '', '', '01/06/1983', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(266, '00015381', 1, 'MOREL', 'CHRISTOPHER', '', '', '35190', 'SAINT PERN', '-', '', '', '31/07/1993', '07/03/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(267, '00085555', 1, 'MOREL', 'STEVEN', '', '', '35540', 'MINIAC MORVAN', '-', '', '', '01/09/1989', '04/04/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(268, '00007252', 2, 'MORIN', 'FRANCOISE', '', '', '22120', 'POMMERET', '0296342887', '', '', '22/02/1960', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(269, '00019008', 2, 'MORIN', 'MIREILLE', '', '', '22000', 'SAINT BRIEUC', '0296781972', '', '', '12/06/1958', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159');
INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`, `solde_salarie`) VALUES
(270, '00022621', 2, 'MORVAN', 'MICHELE', '', '', '22140', 'BEGARD', '0646848097', '', '', '19/09/1956', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(271, '00057701', 3, 'MORVAN', 'SYLVIE', '', '', '22450', 'LANGOAT', '0296353447', '', '', '16/10/1966', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(272, '00063432', 3, 'MORVAN', 'CECILE', '', '', '22140', 'BEGARD', '0646848097', '', '', '12/10/1984', '22/04/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(273, '00002452', 2, 'NEGRE', 'PATRICIA', '', '', '22940', 'SAINT JULIEN', '-', '', '', '18/11/1961', '01/12/2011', '31/12/2999', '1', 'Responsable d''Exploitation', '', '', 'CDI', 1, '159'),
(274, '00020080', 2, 'NEVOT', 'ELIANE', '', '', '22120', 'HILLION', '0296726547', '', '', '17/09/1958', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(275, '00040927', 3, 'NICOGOSSIAN', 'CASSANDRA', '', '', '22440', 'PLOUFRAGAN', '0760304878', '', '', '24/02/1993', '11/02/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(276, '00016757', 1, 'NICOLAS', 'MICKAEL', '', '', '22810', 'PLOUNEVEZ MOEDEC', '0631950004', '', '', '01/07/1981', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(277, '00018006', 2, 'NICOLAS', 'LAURENCE', '', '', '22600', 'LA MOTTE', '0296254876', '', '', '28/11/1968', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(278, '00063517', 2, 'NICOLAS', 'VIRGINIE', '', '', '22150', 'PLOEUC SUR LIE', '0607070345', '', '', '28/10/1979', '17/04/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(279, '00007878', 2, 'OLLIVIER', 'LINE', '', '', '22300', 'PLOUMILLIAU', '0296353088', '', '', '14/06/1962', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(280, '00014291', 2, 'OLLIVIER HENRY', 'GISELE', '', '', '22200', 'GUINGAMP', '0676548218', '', '', '25/10/1963', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(281, '00015940', 2, 'OLLO', 'ANNIE', '', '', '22440', 'PLOUFRAGAN', '0296947588', '', '', '17/04/1951', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(282, '00022760', 2, 'ORIAC', 'SYLVIANE', '', '', '22510', 'TREDANIEL', '0296735005', '', '', '01/08/1955', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(283, '00023962', 2, 'PATER', 'ELISABETH', '', '', '22800', 'LANFAINS', '0296324855', '', '', '14/01/1970', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(284, '00051613', 2, 'PELLAN', 'ANNIE', '', '', '22630', 'EVRAN', '0677273434', '', '', '10/03/1960', '01/11/2014', '31/12/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(285, '00091011', 2, 'PELLAN', 'CAROLE', '', '', '35290', 'SAINT MEEN LE GRAND', '0608189260', '', '', '06/08/1973', '20/07/2015', '15/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(286, '00012973', 2, 'PETIOT', 'SONIA', '', '', '22490', 'PLESLIN TRIGAVOU', '0635587117', '', '', '18/09/1955', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(287, '00009144', 1, 'PHILIPPE', 'MICHEL', '', '', '22440', 'PLOUFRAGAN', '0296941679', '', '', '22/10/1954', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(288, '00044770', 2, 'PICOTIN', 'SEVERINE', '', '', '22200', 'GUINGAMP', '0643219797', '', '', '19/11/1975', '26/08/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(289, '00053970', 1, 'PIERRE', 'JESSY', '', '', '22590', 'TREMELOIR', '0661242382', '', '', '31/07/1989', '17/09/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(290, '00006415', 2, 'PILLOT', 'FLORENCE', '', '', '22360', 'LANGUEUX', '0620907758', '', '', '27/11/1960', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(291, '00087931', 1, 'PINCARO', 'PAULO', '', '', '35290', 'SAINT MEEN LE GRAND', '-', '', '', '25/07/1993', '04/05/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(292, '00011239', 2, 'PINTO LIMA', 'MARIA', '', '', '22330', 'COLLINEE', '0669676205', '', '', '10/05/1957', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(293, '00057511', 3, 'PIRE', 'AURELIE', '', '', '22200', 'GUINGAMP', '0781344270', '', '', '30/04/1980', '02/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(294, '00094108', 1, 'PIRET', 'VINCENT', '', '', '22230', 'MERDRIGNAC', '0677409683', '', '', '25/04/1989', '31/08/2015', '07/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(295, '00006329', 1, 'PLAPOUS', 'PATRICK', '', '', '22450', 'CAMLEZ', '0296056768', '', '', '08/12/1961', '01/10/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(296, '00046000', 2, 'POILVET', 'REBECCA', '', '', '22400', 'LAMBALLE', '0760771733', '', '', '01/08/1968', '21/09/2015', '04/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(297, '00007551', 2, 'POREE', 'MARIE FRANCOISE', '', '', '22140', 'BEGARD', '0296453177', '', '', '05/11/1951', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(298, '00042355', 1, 'POUCHIN', 'TANGUY', '', '', '56430', 'MAURON', '-', '', '', '24/10/1976', '05/03/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(299, '00003610', 2, 'POUL', 'CHRISTINE', '', '', '22800', 'QUINTIN', '0296796858', '', '', '17/07/1958', '01/12/2011', '31/12/2999', '1', 'Agent de Proprete', '', '', 'CDI', 1, '159'),
(300, '00050317', 2, 'POULARD', 'NATALIE', '', '', '22230', 'MERDRIGNAC', '-', '', '', '02/04/1988', '15/07/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(301, '00056377', 1, 'POULARD', 'CYRIL', '', '', '22230', 'MERDRIGNAC', '-', '', '', '15/06/1988', '04/11/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '109'),
(302, '00057639', 2, 'POULEN', 'JANINE', '', '', '22710', 'PENVENAN', '0296928925', '', '', '31/10/1953', '01/01/2014', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(303, '00020181', 3, 'POULIZAC', 'CHRISTELLE', '', '', '22400', 'LAMBALLE', '0296313094', '', '', '02/12/1968', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(304, '00082568', 2, 'POULIZAC', 'FRANCOISE', '', '', '22440', 'PLOUFRAGAN', '0296751866', '', '', '02/12/1964', '01/02/2015', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(305, '00045048', 3, 'POWELL', 'ANDREA', '', '', '56120', 'LA GREE SAINT LAURENT', '-', '', '', '04/01/1967', '22/04/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(306, '00005381', 2, 'PRIGENT', 'CATHERINE', '', '', '22400', 'LAMBALLE', '0981923294', '', '', '10/11/1961', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(307, '00015742', 3, 'QUEMENER', 'MARIE CATHERINE', '', '', '22160', 'DUAULT', '0296215146', '', '', '29/04/1955', '01/12/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(308, '00016584', 2, 'QUINQUENEL', 'MONIQUE', '', '', '22980', 'PLELAN LE PETIT', '0296821307', '', '', '13/11/1955', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(309, '00089389', 2, 'RAT', 'JOSIANE', '', '', '22000', 'SAINT BRIEUC', '0630878772', '', '', '20/02/1955', '20/06/2015', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(310, '00001482', 3, 'RAULT', 'BERNADETTE', '', '', '22000', 'SAINT BRIEUC', '0698958514', '', '', '22/07/1965', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(311, '00020211', 2, 'RAULT', 'NADINE', '', '', '22960', 'PLEDRAN', '0296424494', '', '', '12/08/1963', '01/12/2011', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(312, '00064930', 3, 'RAULT', 'EMILIE', '', '', '22440', 'PLOUFRAGAN', '-', '', '', '11/02/1992', '01/07/2015', '31/12/2999', '1', 'Laveur de Vitre', '', '', 'CDI', 1, '159'),
(313, '00057638', 2, 'REMOND', 'VALERIE', '', '', '22300', 'LANNION', '0296140654', '', '', '28/10/1965', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(314, '00006768', 3, 'RENAUD', 'MONIQUE', '', '', '22000', 'SAINT BRIEUC', '-', '', '', '14/09/1963', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(315, '00059587', 2, 'RENAULT', 'LAURENCE', '', '', '22000', 'SAINT BRIEUC', '0616412815', '', '', '03/02/1955', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(316, '00009251', 3, 'REUX', 'JEANNINE', '', '', '22150', 'SAINT CARREUC', '0296424025', '', '', '21/10/1960', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(317, '00022427', 3, 'RICHARD', 'NADINE', '', '', '22000', 'SAINT BRIEUC', '0627874589', '', '', '26/11/1959', '01/06/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(318, '00017742', 2, 'RICHER', 'EVELYNE', '', '', '22300', 'LANNION', '0603012890', '', '', '04/11/1959', '01/01/2015', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(319, '00035211', 1, 'RINQUIN', 'NICOLAS', '', '', '22780', 'LOGUIVY PLOUGRAS', '0636551612', '', '', '25/04/1983', '03/12/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(320, '00004454', 3, 'ROGER', 'CHRISTINE', '', '', '22490', 'PLOUER SUR RANCE', '0671079080', '', '', '25/03/1963', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(321, '00006461', 1, 'ROGER', 'CEDRIC', '', '', '22250', 'TREDIAS', '0613342045', '', '', '04/08/1981', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(322, '00020206', 3, 'ROLLAND', 'SYLVIE', '', '', '22580', 'PLOUHA', '0633020216', '', '', '02/02/1955', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(323, '00021647', 2, 'ROLLAND', 'SYLVIE', '', '', '35750', 'SAINT MALON SUR MEL', '0678246403', '', '', '29/10/1976', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(324, '00040001', 1, 'ROLLAND', 'DYLAN', '', '', '35750', 'ST MALON SUR MEL', '-', '', '', '02/06/1995', '14/09/2015', '04/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(325, '00007709', 3, 'ROPARS', 'PAULETTE', '', '', '22480', 'SAINT NICOLAS DU PELEM', '0296297809', '', '', '23/09/1954', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(326, '00011811', 2, 'ROUMAUD', 'MARIE CLAUDE', '', '', '22230', 'MERDRIGNAC', '0658263352', '', '', '21/06/1967', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(327, '00052776', 2, 'ROUXEL', 'MARIE LOUISE', '', '', '22230', 'MERDRIGNAC', '-', '', '', '25/02/1955', '05/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(328, '00054382', 3, 'ROUZO', 'ALINE', '', '', '22200', 'LE MERZER', '0296447059', '', '', '15/10/1988', '23/06/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(329, '00003670', 2, 'RUELLO', 'PATRICIA', '', '', '22210', 'PLEMET', '0296257185', '', '', '12/06/1959', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(330, '00018254', 2, 'SAGORY', 'VANESSA', '', '', '22000', 'SAINT BRIEUC', '0677515488', '', '', '02/12/1987', '02/11/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(331, '00064332', 3, 'SAINTILLAN', 'CHRISTINE', '', '', '22400', 'LAMBALLE', '0644086252', '', '', '20/08/1964', '01/09/2015', '30/09/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(332, '00003260', 2, 'SALAUN', 'CLAUDINE', '', '', '22000', 'SAINT BRIEUC', '0675923610', '', '', '19/03/1954', '01/12/2011', '31/12/2999', '1', 'Agent de Proprete', '', '', 'CDI', 1, '159'),
(333, '00019479', 3, 'SALIOU', 'AUDREY', '', '', '22120', 'YFFINIAC', '0608099773', '', '', '19/11/1983', '01/03/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(334, '00055011', 1, 'SANTIER', 'NICOLAS', '', '', '35290', 'MUEL', '0660405232', '', '', '26/07/1987', '05/10/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(335, '00059563', 2, 'SCHEIBEL', 'PATRICIA', '', '', '22190', 'PLERIN', '0296730714', '', '', '26/10/1957', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(336, '00010845', 1, 'SEDDIK', 'HICHEM', '', '', '22000', 'SAINT BRIEUC', '0670332384', '', '', '18/11/1988', '15/10/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(337, '00012054', 2, 'SEHAN', 'ISABELLE', '', '', '22300', 'PLOUMILLIAU', '0296353683', '', '', '02/07/1964', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(338, '00019969', 2, 'SERADIN', 'DOMINIQUE', '', '', '22260', 'PLOEUC DU TRIEUX', '0688988415', '', '', '22/12/1957', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(339, '00041286', 3, 'SIMON', 'SOPHIE', '', '', '35360', 'MONTAUBAN DE BRETAGNE', '0685816014', '', '', '27/02/1971', '08/06/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(340, '00059795', 2, 'SIMONIN', 'ARMELLE', '', '', '22000', 'SAINT BRIEUC', '-', '', '', '14/10/1961', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(341, '00042947', 3, 'SIMPSON', 'KAREN', '', '', '22210', 'PLUMIEUX', '-', '', '', '10/01/1960', '01/03/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(342, '00035194', 1, 'SOLENTE', 'FABRICE', '', '', '29610', 'PLOUIGNEAU', '0650531823', '', '', '04/01/1977', '05/08/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(343, '00049977', 3, 'SOURDAINE', 'MICHELLE', '', '', '22940', 'PLAINTEL', '0668103509', '', '', '19/09/1962', '20/07/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(344, '00088385', 1, 'SPANAGEL', 'MAXIME', '', '', '22950', 'TREGUEUX', '0658297966', '', '', '23/12/1996', '01/07/2015', '30/06/2018', '1', 'Laveur de Vitre', '', '', 'CDD', 1, '159'),
(345, '00040154', 2, 'SY', 'KARDIATOU', '', '', '35580', 'LASSY', '-', '', '', '12/02/1985', '21/01/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(346, '00019829', 2, 'TANGUY', 'MURIELLE', '', '', '22000', 'SAINT BRIEUC', '0689974997', '', '', '21/09/1974', '01/06/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(347, '00017461', 2, 'TARDIVEL', 'ISABELLE', '', '', '22400', 'TREGOMAR', '0296311656', '', '', '16/05/1971', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(348, '00009358', 2, 'THOMAS', 'SABRINA', '', '', '22440', 'TREMUSON', '0645213569', '', '', '15/02/1984', '03/09/2012', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(349, '00016909', 1, 'THOMAS', 'ANDRE', '', '', '22120', 'HILLION', '0669390353', '', '', '31/12/1967', '01/12/2011', '31/12/2999', '1', 'Animateur de Secteur', '', '', 'CDI', 1, '159'),
(350, '00019957', 2, 'THOMAS', 'ANNICK', '', '', '35190', 'TREVERIEN', '-', '', '', '21/05/1959', '01/12/2011', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(351, '00007330', 1, 'TONNELET', 'DAMIEN', '', '', '56460', 'SERENT', '0672484529', '', '', '18/05/1983', '01/12/2011', '31/12/2999', '1', 'Animateur de Secteur', '', '', 'CDI', 1, '159'),
(352, '00007950', 1, 'TOUDIC', 'BERNARD', '', '', '22780', 'PLOUGRAS', '0298729510', '', '', '20/08/1968', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(353, '00024907', 2, 'TOUDIC', 'VALERIE', '', '', '22780', 'PLOUGRAS', '0298729510', '', '', '15/02/1970', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(354, '00093818', 1, 'TREBOUTA', 'EMMANUEL', '', '', '22200', 'POMMERIT LE VICOMTE', '0618151468', '', '', '13/05/1981', '24/08/2015', '31/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(355, '00016310', 2, 'TRONET', 'JOSIANE', '', '', '22650', 'PLOUBALAY', '0296273789', '', '', '04/01/1953', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(356, '00042342', 1, 'VALGRESY', 'SEBASTIEN', '', '', '22600', 'LOUDEAC', '-', '', '', '26/11/1980', '13/03/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(357, '00057970', 1, 'VALGRESY', 'JEAN RODOLPHE', '', '', '22230', 'MERDRIGNAC', '0777327881', '', '', '26/08/1982', '07/09/2015', '06/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(358, '00003806', 2, 'VALIN', 'ELISABETH', '', '', '22000', 'ST BRIEUC', '0296010546', '', '', '09/01/1954', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(359, '00022833', 2, 'VALY', 'MARTINE', '', '', '22530', 'MUR DE BRETAGNE', '0296260583', '', '', '17/07/1953', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(360, '00048128', 1, 'VANPOUCK', 'AIME', '', '', '22480', 'SAINT NICOLAS DU PELEM', '0762731852', '', '', '28/09/1960', '25/06/2013', '31/12/2999', '1', 'Adjoint Chef de Site', '', '', 'CDI', 1, '159'),
(361, '00008249', 3, 'VAQUEZ ROLLAND', 'FLORIANE', '', '', '35700', 'RENNES', '0299072877', '', '', '05/05/1994', '03/05/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(362, '00009707', 2, 'VAUCLIN', 'ISABELLE', '', '', '22300', 'LANNION', '0296480883', '', '', '25/09/1964', '01/12/2011', '31/12/2999', '1', 'Chef d''Equipe', '', '', 'CDI', 1, '159'),
(363, '00014648', 2, 'VAUTRELLE', 'EVELYNE', '', '', '22200', 'GUINGAMP', '0643534544', '', '', '22/06/1958', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(364, '00002916', 3, 'VERITE', 'CINDY', '', '', '22600', 'LOUDEAC', '-', '', '', '02/07/1990', '10/09/2012', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(365, '00010716', 2, 'VIGNERON', 'MURIELLE', '', '', '22000', 'PROTECTION DES MAJEURS', '0670269652', '', '', '04/01/1961', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(366, '00003394', 2, 'VILQUIN', 'VERONIQUE', '', '', '22200', 'GUINGAMP', '0669021854', '', '', '11/04/1966', '01/12/2011', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(367, '00051848', 3, 'VILQUIN', 'VIRGINIE', '', '', '22200', 'GUINGAMP', '-', '', '', '25/11/1991', '03/09/2015', '03/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(368, '00051848', 3, 'VILQUIN', 'VIRGINIE', '', '', '22200', 'GUINGAMP', '-', '', '', '25/11/1991', '08/09/2015', '03/10/2015', '1', 'Agent de Service', '', '', 'CDD', 1, '159'),
(369, '00059597', 3, 'YOBE', 'MURIELLE', '', '', '22000', 'SAINT BRIEUC', '0296617733', '', '', '20/10/1969', '01/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(370, '00059467', 1, 'ZICKENHEINER', 'MICKAEL', '', '', '35290', 'SAINT ONEN LA CHAPELLE', '0607887351', '', '', '21/08/1988', '15/01/2014', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(371, '00055062', 2, 'Z''LIGH', 'FATIMA', '', '', '22000', 'SAINT BRIEUC', '-', '', '', '04/06/1963', '01/10/2013', '31/12/2999', '1', 'Agent de Service', '', '', 'CDI', 1, '159'),
(373, '', 1, 'GUEGAN', 'ERIC', '', '', '', 'ANDEL', '', '', '', '', '', '', '1', '', '', '', '', 1, '');

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
(2, '1438120800', '6601', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CANY CHANTAL pour MARTIN.', '', '40.95', 0),
(3, '1438120800', '2001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de EVEN OLIEVIERA pourMARTIN.', '', '10', 0),
(4, '1429567200', '3601', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MARTIN JOCELYNE.', '', '35.39', 0),
(6, '1429567200', '3603', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de FROU sophie pour MARTIN Jocelyne.', '', '88.09', 0),
(7, '1429567200', '1000', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de HERMANT Martine pour MARTIN jocelyne.', '', '13.95', 0),
(8, '1433455200', '5759', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ANDIAS pour RAULT Nadine.', '', '47.34', 0),
(9, '1433455200', '3146', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de POSSEMEE pour RAULT Nadine.', '', '46.35', 0),
(10, '1433455200', '4900', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RAULT Nadine.', '', '35.24', 0),
(11, '1433455200', '2221', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MBARKI Zoheir.', '', '30.60', 0),
(12, '1433455200', '1040', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOULAIRE Sonia Pour RAULT Nadine.', '', '27.63', 0),
(13, '1433455200', '3404', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEMOINE pour RAULT Nadine.', '', '15.30', 0),
(14, '1433455200', '1710', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MALAPERT Aurelie.', '', '15.30', 0),
(15, '1433455200', '6610', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CAVE irene.', '', '13.41', 0),
(16, '1433455200', '35.75', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE FORBAN Roselyne.', '', '5.94', 0),
(24, '1436997600', '6901', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RAULT Nadine.', '', '272.88', 0),
(25, '1436997600', '3036', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MARTIN Jocelyne.', '', '13.41', 0),
(44, '1435701600', '0107', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de AHNOUN pour CASTEIX Catherine.', '', '82.85', 0),
(45, '1435701600', '4900', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RAULT Nadine pour CASTEIX Catherine.', '', '18.96', 0),
(46, '1435701600', '9240', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CASTEIX Catherine.', '', '27.45', 0),
(47, '1435701600', '6165', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEROY pour CASTEIX Catherine.', '', '30.82', 0),
(48, '1435701600', '3940', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LERESTEUX pour CASTEIX Catherine.', '', '5.04', 0),
(49, '1435701600', '3575', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE FORBAN pour CASTEIX Catherine.', '', '13.72', 0),
(53, '1435701600', '7000', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de NEGRE Patricia pour CASTEIX Catherine.', '', '13.72', 0);

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
  MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
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
  MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
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
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
  MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
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
  MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
  MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
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
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
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
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
