-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2016 à 15:22
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ceguerbet`
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

--
-- Contenu de la table `ayant_droit`
--

INSERT INTO `ayant_droit` (`idayantdroit`, `idsalarie`, `nom_ayant_droit`, `prenom_ayant_droit`, `date_naissance_ayant_droit`, `solde_ayant_droit`) VALUES
(1, 0, 'nom_ayant_droit', 'prenom_ayant_droit', 'date_naissance', 'solde'),
(2, 2, 'ALLAIRE', 'ABYGAEL', '27-07-1998', '159'),
(3, 2, 'ALLAIRE', 'ERWAN', '15-12-1988', '159'),
(4, 2, 'ALLAIRE', 'A?RON', '13-08-2001', '159'),
(5, 2, 'ALLAIRE', 'YOANN', '07-11-1986', '159'),
(6, 3, 'CAHERIC', 'ESTELLE', '25-11-1998', '159'),
(7, 3, 'CAHERIC', 'ALEXANDRE', '10-08-1996', '159'),
(8, 4, 'ALLOT', 'MAELYS', '22-05-2004', '159'),
(9, 4, 'ALLOT', 'QUENTIN', '22-09-2000', '159'),
(10, 5, 'BACHELET', 'Titouan', '10-06-2014', '159'),
(11, 6, 'BACON', 'LENA', '19-11-2003', '159'),
(12, 6, 'BACON', 'CHLOE', '27-03-2001', '159'),
(13, 10, 'BLANCO', 'Roxane', '14-03-2014', '159'),
(14, 10, 'BLANCO', 'Roxane', '14-03-2014', '159'),
(15, 11, 'BLEUZEN', 'MALO JULIEN', '13-02-2006', '159'),
(16, 11, 'BLEUZEN', 'LILOU CHANTREA', '27-10-2001', '159'),
(17, 12, 'BLONDIN', 'Nelly', '06-07-1978', '159'),
(18, 12, 'BLONDIN', 'Am?lie', '12-05-1983', '159'),
(19, 12, 'BLONDIN', 'FANNY', '08-06-1988', '159'),
(20, 15, 'BOUILLET', 'PAUL', '24-07-2003', '159'),
(21, 16, 'BRICET', 'ARTHUR', '22-04-1996', '159'),
(22, 17, 'BRONSARD', 'CHARLOTTE', '15-06-1987', '159'),
(23, 18, 'BROUTIN', 'LINA', '20-06-2011', '159'),
(24, 18, 'BROUTIN', 'LILY', '04-11-2008', '159'),
(25, 19, 'ALLANIC', 'MAXIME', '10-12-2009', '159'),
(26, 19, 'ALLANIC', 'CAMILLE', '19-07-2006', '159'),
(27, 21, 'BUCHET', 'MARCEAU', '05-11-2010', '159'),
(28, 22, 'BUSSON', 'YOANN', '06-10-1995', '159'),
(29, 23, 'CADORET', 'MELANIE', '09-01-1996', '159'),
(30, 23, 'CADORET', 'QUENTIN', '11-03-1994', '159'),
(31, 24, 'CADOU', 'SOPHIE', '21-11-1990', '159'),
(32, 24, 'CADOU', 'MICKAEL', '16-02-1987', '159'),
(33, 25, 'CAHERIC', 'ALEXANDRE', '10-08-1996', '159'),
(34, 25, 'CAHERIC', 'ESTELLE', '25-11-1998', '159'),
(35, 26, 'CARVAL', 'ARTHUR', '23-02-2007', '159'),
(36, 26, 'CARVAL', 'LOUISE', '19-02-2004', '159'),
(37, 28, 'GUYARD-CHANTEAU', 'GABRI?L', '06-02-2011', '159'),
(38, 29, 'CHAULOUX', 'BAPTISTE', '12-01-1992', '159'),
(39, 29, 'CHAULOUX', 'CLEMENT', '24-12-1988', '159'),
(40, 30, 'MARGANA', 'KIM', '24-11-2001', '159'),
(41, 30, 'MARGANA', 'ERWANN', '04-07-1996', '159'),
(42, 31, 'CLERO', 'EMELINE', '10-10-1991', '159'),
(43, 31, 'CLERO', 'LUCIE', '27-03-1989', '159'),
(44, 31, 'CLERO', 'THOMAS', '08-10-1995', '159'),
(45, 33, 'COLLEAUX', 'MAELLE', '12-08-2003', '159'),
(46, 33, 'COLLEAUX', 'AUREGANE', '05-06-2005', '159'),
(47, 33, 'COLLEAUX', 'KILLIAN', '16-06-2000', '159'),
(48, 34, 'COLOMBO', 'ANASTASIA', '22-01-2000', '159'),
(49, 34, 'COLOMBO', 'RICHARD', '29-02-1996', '159'),
(50, 34, 'COLOMBO', 'M?LINA', '21-05-2004', '159'),
(51, 35, 'CONRAD', 'EVA', '12-07-1995', '159'),
(52, 37, 'COUGOULIC', 'MAELLA', '12-04-2009', '159'),
(53, 37, 'COUGOULIC', 'Alan', '26-12-2012', '159'),
(54, 37, 'COUGOULIC', 'LORIK', '12-10-2007', '159'),
(55, 38, 'COURTIN', 'MA?LYS', '15-01-2003', '159'),
(56, 38, 'COURTIN', 'DORIANE', '15-10-1996', '159'),
(57, 38, 'COURTIN', 'ROMANE', '26-09-1998', '159'),
(58, 40, 'DANGUILLAUME', 'RAPHAEL', '11-06-1986', '159'),
(59, 42, 'DEBLEDS', 'JEANNE', '12-06-1991', '159'),
(60, 42, 'DEBLEDS', 'CLAIRE', '27-03-1987', '159'),
(61, 42, 'DEBLEDS', 'LOUISE', '31-05-1989', '159'),
(62, 44, 'DESBOIS', 'ILAN', '30-09-2009', '159'),
(63, 44, 'DESBOIS', 'ALBANE', '18-04-2012', '159'),
(64, 45, 'GORINA', 'ANASTASIA', '20-02-2002', '159'),
(65, 45, 'DESHAYES', 'Martin', '23-08-2011', '159'),
(66, 45, 'GORINA', 'NINA', '29-07-2003', '159'),
(67, 46, 'DETREZ', 'MATHILDE', '23-05-1996', '159'),
(68, 46, 'DETREZ', 'AURELIE', '19-05-1990', '159'),
(69, 47, 'DOUCET', 'MAEL', '13-01-1987', '159'),
(70, 47, 'DOUCET', 'TANGUY', '06-08-1988', '159'),
(71, 47, 'DOUCET', 'AZILIZ', '09-09-1990', '159'),
(72, 48, 'DOUCET', 'TANGUY', '06-08-1988', '159'),
(73, 48, 'DOUCET', 'AZILIZ', '09-09-1990', '159'),
(74, 48, 'DOUCET', 'MAEL', '13-01-1987', '159'),
(75, 49, 'DREANO', 'GWENAELLE', '19-12-1994', '159'),
(76, 49, 'DREANO', 'NOLWENN', '20-02-1997', '159'),
(77, 50, 'DURAND', 'THOMAS', '23-01-1987', '159'),
(78, 52, 'ESVAN', 'MARGAUX', '18-10-1995', '159'),
(79, 55, 'FLEGO', 'ERWAN', '16-03-1990', '159'),
(80, 55, 'FLEGO', 'VINCENT', '26-05-1999', '159'),
(81, 55, 'FLEGO', 'KILLIAN', '17-11-1997', '159'),
(82, 56, 'FLEGO', 'VINCENT', '26-05-1999', '159'),
(83, 56, 'FLEGO', 'KILLIAN', '17-11-1997', '159'),
(84, 56, 'FLEGO', 'ERWAN', '16-03-1990', '159'),
(85, 57, 'FLEURY', 'ENOLA', '24-03-1998', '159'),
(86, 57, 'FLEURY', 'AKHEANE', '11-09-1995', '159'),
(87, 58, 'FLEURY', 'MARIANNA', '22-06-1992', '159'),
(88, 58, 'FLEURY', 'EMMELINE', '30-07-1997', '159'),
(89, 60, 'FOLTON', 'Sacha', '31-10-2012', '159'),
(90, 60, 'FOLTON', 'Paul', '08-09-2015', '159'),
(91, 61, 'GAILLARD', 'ELLEN', '16-08-1995', '159'),
(92, 61, 'GAILLARD', 'LOGAN', '09-10-1998', '159'),
(93, 62, 'GALLAIS', 'MAXIME', '24-11-2003', '159'),
(94, 62, 'GALLAIS', 'CORENTIN', '02-10-2006', '159'),
(95, 62, 'GALLAIS', 'AMANDINE', '21-07-2010', '159'),
(96, 65, 'GEFFROY', 'NO?MIE', '07-03-2012', '159'),
(97, 65, 'GEFFROY', 'ALEXIS', '23-02-2009', '159'),
(98, 66, 'GERMANESE', 'PIERRIG', '05-10-1992', '159'),
(99, 66, 'GERMANESE', 'BLEUENN', '26-11-2001', '159'),
(100, 66, 'GERMANESE', 'L?NA', '19-01-1996', '159'),
(101, 67, 'GERVAUD', 'MANON', '13-10-2010', '159'),
(102, 68, 'GIRARD', 'ALEXIS', '25-09-1995', '159'),
(103, 68, 'GIRARD', 'MARIE', '31-03-1999', '159'),
(104, 68, 'GIRARD', 'CAMILLE', '15-10-2001', '159'),
(105, 70, 'GOASMAT', 'VINCENT', '30-08-2005', '159'),
(106, 73, 'GRANIER', 'Noan', '05-01-2013', '159'),
(107, 74, 'GROLLEAU', 'VINCENT', '09-04-1995', '159'),
(108, 74, 'GROLLEAU', 'FLORENT', '10-09-1997', '159'),
(109, 75, 'GRUBER', 'Louis', '31-07-2015', '159'),
(110, 76, 'GUERRIER', 'TH?O', '06-04-2004', '159'),
(111, 76, 'GUERRIER', 'ELOUAN', '18-01-2010', '159'),
(112, 78, 'MAHE', 'ELISA', '20-10-2011', '159'),
(113, 78, 'MAHE', 'JULIETTE', '09-06-2006', '159'),
(114, 79, 'GUILLEMOT', 'DORIAN', '30-08-1995', '159'),
(115, 79, 'GUILLEMOT', 'JORIS', '19-03-1992', '159'),
(116, 82, 'GUILLOU', 'CECILE', '04-09-1990', '159'),
(117, 84, 'NEVEU', 'CAMILLE', '30-03-2004', '159'),
(118, 85, 'GUYADER', 'LILOU', '27-09-2008', '159'),
(119, 85, 'GUYADER', 'ARTHUR', '17-10-2005', '159');

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
(1, 'COMITE GUERBET', '0.20', '0', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
(1, 'administrateur', '882baf28143fb700b388a87ef561a6e5', 1),
(2, 'CEGUERBET', 'e192aa5c0e3b8dcc7e76eff063b77eb4', 1);

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
(2, '', 0, 'ALLAIRE', 'LOIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(3, '', 0, 'ALLANO-CAHERIC', 'PATRICIA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(4, '', 0, 'ALLOT', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(5, '', 0, 'BACHELET', 'PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(6, '', 0, 'BACON', 'STEPHANIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(7, '', 0, 'BASSOU', 'ADNANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(8, '', 0, 'BIHAN', 'LIONEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(9, '', 0, 'BIORD', 'ERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(10, '', 0, 'BLANCO', 'AURELIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(11, '', 0, 'BLEUZEN', 'YANNICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(12, '', 0, 'BLONDIN', 'MARC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(13, '', 0, 'BOUCHET', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(14, '', 0, 'BOUGEARD', 'JULIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(15, '', 0, 'BOUILLET', 'JEAN MARC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(16, '', 0, 'BRICET', 'BRUNO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(17, '', 0, 'BRONSARD', 'ODILE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(18, '', 0, 'BROUTIN', 'PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(19, '', 0, 'BRUZAC', 'SABRINA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(20, '', 0, 'BUAILLON', 'FLORENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(21, '', 0, 'BUCHET', 'REMI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(22, '', 0, 'BUSSON', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(23, '', 0, 'CADORET', 'ERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(24, '', 0, 'CADOU', 'JACKY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(25, '', 0, 'CAHERIC', 'YANNICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(26, '', 0, 'CARVAL', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(27, '', 0, 'CAVALIN', 'MATHIEU', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(28, '', 0, 'CHANTEAU', 'JONATHAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(29, '', 0, 'CHAULOUX', 'PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(30, '', 0, 'CLAICH', 'SANDRINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(31, '', 0, 'CLERO', 'THIERRY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(32, '', 0, 'COCHER', 'YANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(33, '', 0, 'COLLEAUX', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(34, '', 0, 'COLOMBO', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(35, '', 0, 'CONRAD', 'SERGE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(36, '', 0, 'CORNELY', 'BERNARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(37, '', 0, 'COUGOULIC', 'FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(38, '', 0, 'COURTIN', 'SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(39, '', 0, 'DAHERON', 'ERWAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(40, '', 0, 'DANGUILLAUME', 'RENE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(41, '', 0, 'DAVID', 'MICHEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(42, '', 0, 'DEBLEDS', 'FRANCOIS-LOUIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(43, '', 0, 'DEREMAUX', 'KEVIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(44, '', 0, 'DESBOIS', 'JEREMY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(45, '', 0, 'DESHAYES', 'YOAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(46, '', 0, 'DETREZ', 'LAURE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(47, '', 0, 'DOUCET', 'YANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(48, '', 0, 'DOUCET', 'NATHALIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(49, '', 0, 'DREANO', 'LOIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(50, '', 0, 'DURAND', 'MARTINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(51, '', 0, 'DUTHIL', 'GEOFFREY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(52, '', 0, 'ESVAN', 'SERGE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(53, '', 0, 'FERRARI', 'BAPTISTE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(54, '', 0, 'FICHET', 'SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(55, '', 0, 'FLEGO', 'MIKAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(56, '', 0, 'FLEGO', 'MARIE-HELENE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(57, '', 0, 'FLEURY', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(58, '', 0, 'FLEURY', 'MARTIAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(59, '', 0, 'FOIS', 'MICKAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(60, '', 0, 'FOLTON', 'BORIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(61, '', 0, 'GAILLARD', 'JEAN-MARC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(62, '', 0, 'GALLAIS', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(63, '', 0, 'GARGAM', 'PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(64, '', 0, 'GAUDIN', 'FLORIAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(65, '', 0, 'GEFFROY', 'NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(66, '', 0, 'GERMANESE', 'PASCALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(67, '', 0, 'GERVAUD', 'REGIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(68, '', 0, 'GIRARD', 'GAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(69, '', 0, 'GIRARD', 'TONY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(70, '', 0, 'GOASMAT', 'OLIVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(71, '', 0, 'GOUIN', 'PIERRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(72, '', 0, 'GOURICHON', 'CAROLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(73, '', 0, 'GRANIER', 'KEVIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(74, '', 0, 'GROLLEAU', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(75, '', 0, 'GRUBER', 'GUILLAUME', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(76, '', 0, 'GUERRIER', 'FLORENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(77, '', 0, 'GUIFFANT', 'Thibaut', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Contrat d apprentissage', 1, '159'),
(78, '', 0, 'GUIHENEUF', 'KARINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(79, '', 0, 'GUILLEMOT', 'ISABELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(80, '', 0, 'GUILLEMOT', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(81, '', 0, 'GUILLOCHEAU', 'EMMANUEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(82, '', 0, 'GUILLOU', 'JEAN-FRANCOIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(83, '', 0, 'GUILLOUX', 'YANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(84, '', 0, 'GUIVARCH', 'NOELA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(85, '', 0, 'GUYADER', 'JEROME', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(86, '', 0, 'GUYOMAR', 'SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(87, '', 0, 'GUYOMARD', 'FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(88, '', 0, 'HAMON', 'JOHAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(89, '', 0, 'HAULTECOEUR', 'GEOFFROY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(90, '', 0, 'HEMON', 'PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(91, '', 0, 'HENRY', 'MICHELE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(92, '', 0, 'HERCOUET', 'DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(93, '', 0, 'HERVE', 'YANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(94, '', 0, 'HILLION', 'BENJAMIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(95, '', 0, 'HUMO', 'MICKAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(96, '', 0, 'HUONIC', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(97, '', 0, 'JACOB', 'LIONEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(98, '', 0, 'JACQ', 'GENEVIEVE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(99, '', 0, 'JACQ', 'EMMANUEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(100, '', 0, 'JAGU', 'LAURENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(101, '', 0, 'JAMOTEAU BOUQUET', 'PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(102, '', 0, 'JEHANNIN', 'ROMAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(103, '', 0, 'JOSSO', 'CHARLES ANTOINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(104, '', 0, 'JOUBIN', 'BENOIT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(105, '', 0, 'KERMORVANT', 'MATHIEU', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(106, '', 0, 'KERVADEC', 'MICKAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(107, '', 0, 'LABADIE', 'ERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(108, '', 0, 'LAJARTHE', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(109, '', 0, 'LANQUETIN', 'Lea', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(110, '', 0, 'LASNE', 'DOMINIQUE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(111, '', 0, 'LE BOT', 'MIKAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(112, '', 0, 'LE BOUT', 'ANTHONY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(113, '', 0, 'LE BRETON', 'VINCENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(114, '', 0, 'LE CADRE', 'THIERRY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(115, '', 0, 'LE CALVE', 'LOIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(116, '', 0, 'LE CARNEC', 'YANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(117, '', 0, 'LE CARRER', 'DANIEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(118, '', 0, 'LE CUDENNEC', 'FABIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(119, '', 0, 'LE DANTEC', 'GILLES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(120, '', 0, 'LE DREF', 'PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(121, '', 0, 'LE FORT', 'LOIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(122, '', 0, 'LE FURAUT', 'NATHALIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(123, '', 0, 'LE GARREC', 'YVES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(124, '', 0, 'LE GARREC', 'MIKAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(125, '', 0, 'LE GOARANT', 'Mathieu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(126, '', 0, 'LE GOUIC', 'MATHIEU', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(127, '', 0, 'LE GUYADER', 'SAMUEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(128, '', 0, 'LE LAMER', 'HERVE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(129, '', 0, 'LE LOUER', 'DENIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(130, '', 0, 'LE NOACH', 'CATHERINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(131, '', 0, 'LE NOACH', 'HERVE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(132, '', 0, 'LE PIMPEC', 'JEAN MICHEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(133, '', 0, 'LE ROUX', 'DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(134, '', 0, 'LE ROUX', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(135, '', 0, 'LE RUYET', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(136, '', 0, 'LE STUNFF', 'ANNE CLAIRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(137, '', 0, 'LEBLANC', 'DIMITRI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(138, '', 0, 'LEFEUVRE', 'SEVERINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(139, '', 0, 'LELIEVRE', 'FLORIAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(140, '', 0, 'LEPAGE', 'JOEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(141, '', 0, 'LETULLIER', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(142, '', 0, 'LIRZIN', 'ERWAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(143, '', 0, 'LOISON PENNEC', 'VIRGINIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(144, '', 0, 'LUCAS', 'REGINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(145, '', 0, 'LUCAS', 'REGINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(146, '', 0, 'MABILE', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(147, '', 0, 'MAHE', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(148, '', 0, 'MALEINGE', 'Enzo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Contrat d apprentissage', 1, '159'),
(149, '', 0, 'MARCHAND', 'EMILIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(150, '', 0, 'MATHIEU', 'EMILIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(151, '', 0, 'MATHIEU D''ARC', 'REMI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(152, '', 0, 'MEDINGER', 'LUC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(153, '', 0, 'MEHAT', 'AURELIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(154, '', 0, 'MEHEUST', 'ISABELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(155, '', 0, 'MERRIEN', 'Maxime', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Contrat d apprentissage', 1, '159'),
(156, '', 0, 'MICHAUD', 'RAPHAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(157, '', 0, 'MICHELOT', 'GWENDAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(158, '', 0, 'MIDELET', 'JEAN MARC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(159, '', 0, 'MOEL', 'LAURENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(160, '', 0, 'MOEL', 'LIONEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(161, '', 0, 'MONIER', 'BENJAMIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(162, '', 0, 'MOREAC', 'GUENHAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(163, '', 0, 'MOUTONNET', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(164, '', 0, 'MOYON', 'CYRILLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(165, '', 0, 'MOYSE', 'LUDOVIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(166, '', 0, 'MUSELLEC', 'THIERRY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(167, '', 0, 'NEDELEC', 'CHANTAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(168, '', 0, 'NEILLETTE', 'GLADYS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(169, '', 0, 'NEY', 'CEDRIK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(170, '', 0, 'NOEL', 'FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(171, '', 0, 'ORHANT', 'MANUEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(172, '', 0, 'OZANEAUX', 'RAPHAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(173, '', 0, 'PALLIER', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(174, '', 0, 'PAQUET', 'THIERRY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(175, '', 0, 'PARAGEAULT', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(176, '', 0, 'PARAGEAULT', 'DYLAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(177, '', 0, 'PARAIRE', 'AMELIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(178, '', 0, 'PASQUE', 'DANIEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(179, '', 0, 'PAUCHET', 'LOIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(180, '', 0, 'PEDRONO', 'CHRISTINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(181, '', 0, 'PENSART', 'PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(182, '', 0, 'PICHON', 'YOANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(183, '', 0, 'PICHONNEAU', 'JULIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(184, '', 0, 'PINSON', 'JEAN-CLAUDE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(185, '', 0, 'POINTIN', 'THOMAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(186, '', 0, 'PUREN', 'JACQUELINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(187, '', 0, 'PUREN', 'LYDIA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(188, '', 0, 'QUENNESSON', 'MARIE-PIERRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(189, '', 0, 'QUENTIN', 'FRANCOIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(190, '', 0, 'QUERIC', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(191, '', 0, 'REGNAULT', 'NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(192, '', 0, 'RENAUDINEAU', 'MICKAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(193, '', 0, 'RICHARD', 'FABRICE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(194, '', 0, 'RIOU', 'HERVE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(195, '', 0, 'ROCHER', 'DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(196, '', 0, 'ROUAT', 'ALAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(197, '', 0, 'RUBAN', 'ANNE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(198, '', 0, 'RUYET', 'MATTHIAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(199, '', 0, 'SAINT-JALMES', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(200, '', 0, 'SCOURZIC', 'YANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(201, '', 0, 'SELLEM', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(202, '', 0, 'SIMONNEAU', 'RAPHAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(203, '', 0, 'SORIN', 'EMMANUEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(204, '', 0, 'SOUPLY', 'XAVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(205, '', 0, 'STEPHANT', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(206, '', 0, 'SUPIOT', 'HERVE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(207, '', 0, 'SZYMONIAK', 'RUDI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(208, '', 0, 'TANGUY', 'PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(209, '', 0, 'TANNIOU', 'LAURENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(210, '', 0, 'TESSIER', 'ROMAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(211, '', 0, 'THEODIN', 'JEAN PIERRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(212, '', 0, 'TRIBOUILLARD', 'Flore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(213, '', 0, 'VALLADE', 'Cyril', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(214, '', 0, 'VANBEUGHEN', 'FABIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(215, '', 0, 'VIGOUROUX', 'FABRICE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(216, '', 0, 'VINCENT', 'COLETTE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(217, '', 0, 'YAO', 'CELESTIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(218, '', 0, 'ZAPATA', 'MARIE FRANCE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159'),
(219, '', 0, 'ZITTER', 'Camille', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '159');

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
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
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
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
  MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT;
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
  MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT;
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
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
