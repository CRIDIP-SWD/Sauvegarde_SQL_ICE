-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2016 à 13:04
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cedsl56`
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
(1, '04-12-2015', 2, '10', '68', '8134445976');

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
(1, 1, 'Achat: ticket cinema cineville', '68', '', '8134445976'),
(3, 2, 'Vente de Billetterie: BARBEAU NICOLAS pour la prestation ticket cinema cineville', '', '16.5', '64458887'),
(4, 2, 'Vente de Billetterie: DALIGAULT STEPHANE pour la prestation ticket cinema cineville', '', '16.5', '14166300'),
(5, 2, 'Vente de Billetterie: LE BADEZET JEAN FRANCOIS pour la prestation ', '', '0', '42932439'),
(6, 2, 'Vente de Billetterie: LE BADEZET JEAN FRANCOIS pour la prestation ticket cinema cineville', '', '11', '28172949'),
(7, 2, 'Vente de Billetterie: PECOUYOUL THIERRY pour la prestation ticket cinema cineville', '', '33', '60201220'),
(8, 2, 'Vente de Billetterie: ISENI EDITA pour la prestation ticket cinema cineville', '', '22', '9186263'),
(9, 2, 'Vente de Billetterie: MOREL FRANCOISE pour la prestation ticket cinema cineville', '', '22', '12127256'),
(10, 2, 'Vente de Billetterie: LEROUZIC FANNY pour la prestation ticket cinema cineville', '', '11', '49331242'),
(11, 2, 'Vente de Billetterie: LE BARRE MYRIAM pour la prestation ticket cinema cineville', '', '22', '19541117'),
(12, 2, 'Vente de Billetterie: PIECOURT GERARD pour la prestation ticket cinema cineville', '', '55', '18295323'),
(13, 2, 'Vente de Billetterie: GUICHON FABIENNE pour la prestation ticket cinema cineville', '', '55', '26907248'),
(14, 2, 'Vente de Billetterie: VICENTE MARIA pour la prestation ticket cinema cineville', '', '33', '6174963'),
(15, 2, 'Vente de Billetterie: ROUILLE SYLVIE pour la prestation ticket cinema cineville', '', '16.5', '14595324'),
(16, 2, 'Vente de Billetterie: MARTIN MARIE-ANDREE pour la prestation ticket cinema cineville', '', '55', '15682063'),
(17, 2, 'Vente de Billetterie: LERANDY GUY pour la prestation Speedpark', '', '66.5', '9525626'),
(18, 2, 'Vente de Billetterie: LAINE CAROLE pour la prestation ticket cinema cineville', '', '16.5', '134689'),
(19, 2, 'Vente de Billetterie: LECADIEU CAROLE pour la prestation ticket cinema cineville', '', '22', '54147865'),
(20, 2, 'Vente de Billetterie: ORJUBIN MURIEL pour la prestation ticket cinema cineville', '', '11', '7887411'),
(23, 2, 'Vente de Billetterie: NAILI MENANA pour la prestation ticket cinema cineville', '', '66', '60729954'),
(25, 2, 'Vente de Billetterie: NAILI MENANA pour la prestation ticket cinema cineville', '', '66', '9834758'),
(27, 2, 'Vente de Billetterie: NAILI MENANA pour la prestation Aquagolfe ticket BALNEO+ACCES BASSIN', '', '18', '32162984'),
(29, 2, 'Vente de Billetterie: NAILI MENANA pour la prestation ticket cinema cineville', '', '66', '2017299'),
(31, 2, 'Vente de Billetterie: NAILI MENANA pour la prestation Aquagolfe ticket BALNEO+ACCES BASSIN', '', '18', '19563064'),
(34, 2, 'Vente de Billetterie: BESSON ANOUK pour la prestation ticket cinema cineville', '', '16.5', '89037996'),
(36, 2, 'Vente de Billetterie: NAILI MENANA pour la prestation ticket cinema cineville', '', '66', '42745462'),
(38, 2, 'Vente de Billetterie: OLIVIER JUDITH pour la prestation ticket cinema cineville', '', '33', '86274152'),
(39, 2, 'Vente de Billetterie: NAILI MENANA pour la prestation Aquagolfe ticket BALNEO+ACCES BASSIN', '', '18', '1399401'),
(40, 2, 'Vente de Billetterie: ROLLAND ANDRE pour la prestation ticket cinema cineville', '', '22', '82878853'),
(41, 2, 'Vente de Billetterie: ORJUBIN MURIEL pour la prestation ticket cinema cineville', '', '11', '98190549'),
(42, 2, 'Vente de Billetterie: ORJUBIN MURIEL pour la prestation Speedpark', '', '19', '50727117'),
(44, 2, 'Vente de Billetterie: BIHOREAU FREDERIQUE pour la prestation Speedpark', '', '80.75', '57703484'),
(45, 2, 'Vente de Billetterie: POSSEME STEPHANIE pour la prestation ticket cinema cineville', '', '11', '22332041'),
(47, 2, 'Vente de Billetterie: DOURDAIN MARIE-LAURE pour la prestation ticket cinema cineville', '', '22', '74652619'),
(48, 2, 'Vente de Billetterie: DOURDAIN MARIE-LAURE pour la prestation Speedpark', '', '19', '65628776'),
(50, 2, 'Vente de Billetterie: FLEUREAU HELENE pour la prestation HUITRES  PANIER 50 CAL3', '', '23', '67056063'),
(52, 2, 'Vente de Billetterie: DOURDAIN MARIE-LAURE pour la prestation ticket cinema cineville', '', '22', '27454068'),
(53, 2, 'Vente de Billetterie: DOURDAIN MARIE-LAURE pour la prestation Speedpark', '', '19', '60211825'),
(54, 2, 'Vente de Billetterie: LE MAUFF ISABELLE pour la prestation HUITRES  PANIER 100 CAL 3', '', '88', '32602362'),
(55, 2, 'Vente de Billetterie: LE MAUFF ISABELLE pour la prestation HUITRES  PANIER 50 CAL3', '', '23', '3185391'),
(56, 2, 'Vente de Billetterie: PICAUT ANNE-FRANCOISE pour la prestation ticket cinema cineville', '', '11', '94430561'),
(57, 2, 'Vente de Billetterie: ROLLAND ANDRE pour la prestation HUITRES  PANIER 50 CAL3', '', '23', '16459287'),
(58, 2, 'Vente de Billetterie: ROLLAND ANDRE pour la prestation ticket cinema cineville', '', '22', '86579464'),
(59, 2, 'Vente de Billetterie: LORIN CARMEN pour la prestation ticket cinema cineville', '', '22', '45967136'),
(60, 2, 'Vente de Billetterie: LE BOHEC MURIELLE pour la prestation ticket cinema cineville', '', '55', '58552047'),
(61, 2, 'Vente de Billetterie: TOTO SYLVIE pour la prestation Aquagolfe ticket ADULTE', '', '14.4', '9560246'),
(62, 2, 'Vente de Billetterie: GUEVEL SONIA pour la prestation ticket cinema cineville', '', '11', '98618520'),
(63, 2, 'Vente de Billetterie: DENAY ISABELLE pour la prestation ticket cinema cineville', '', '11', '48771069'),
(64, 2, 'Vente de Billetterie: LAINE CAROLE pour la prestation ticket cinema cineville', '', '27.5', '19885302'),
(65, 2, 'Vente de Billetterie: PITTELIOEN LAETITIA pour la prestation ticket cinema cineville', '', '16.5', '56184127'),
(67, 2, 'Vente de Billetterie: PITTELIOEN LAETITIA pour la prestation Speedpark', '', '47.5', '48194472'),
(68, 2, 'Vente de Billetterie: PITTELIOEN LAETITIA pour la prestation ticket cinema cineville', '', '16.5', '77523749'),
(69, 2, 'Vente de Billetterie: CADIC FREDERIC pour la prestation ticket cinema cineville', '', '44', '69273608'),
(70, 2, 'Vente de Billetterie: DOURDAIN MARIE-LAURE pour la prestation ticket cinema cineville', '', '22', '9095597'),
(71, 2, 'Vente de Billetterie: LE BLEVEC BEATRICE pour la prestation ticket cinema cineville', '', '27.5', '83884048'),
(73, 2, 'Vente de Billetterie: LE BLEVEC BEATRICE pour la prestation ticket cinema cineville', '', '27.5', '67699909'),
(74, 2, 'Vente de Billetterie: LE BLEVEC BEATRICE pour la prestation Aquagolfe ticket BALNEO+ACCES BASSIN', '', '30', '12220088'),
(76, 2, 'Vente de Billetterie: LE BLEVEC BEATRICE pour la prestation ticket cinema cineville', '', '27.5', '42310751'),
(77, 2, 'Vente de Billetterie: LE BLEVEC BEATRICE pour la prestation Aquagolfe ticket BALNEO+ACCES BASSIN', '', '30', '13731132'),
(78, 2, 'Vente de Billetterie: ARCHAMBAULT DE MONFORT ISABELLE pour la prestation ticket cinema cineville', '', '44', '70004352'),
(79, 2, 'Vente de Billetterie: ORJUBIN MURIEL pour la prestation ticket cinema cineville', '', '44', '52823528'),
(80, 2, 'Vente de Billetterie: BENARD EVELYNE pour la prestation ticket cinema cineville', '', '49.5', '46546205'),
(82, 2, 'Vente de Billetterie: GUICHON FABIENNE pour la prestation ticket cinema cineville', '', '33', '78472388'),
(83, 2, 'Vente de Billetterie: GUICHON FABIENNE pour la prestation Aquagolfe ticket ENFANT', '', '18', '37369276'),
(84, 2, 'Vente de Billetterie: LAINE CAROLE pour la prestation Speedpark', '', '19', '99594709'),
(85, 2, 'Vente de Billetterie: ORJUBIN MURIEL pour la prestation Speedpark', '', '19', '31902822'),
(86, 2, 'Vente de Billetterie: OLIVIER JUDITH pour la prestation Speedpark', '', '28.5', '82285249'),
(87, 2, 'Vente de Billetterie: LE BRUN SYLVIANE pour la prestation ticket cinema cineville', '', '55', '75124889'),
(88, 2, 'Vente de Billetterie: EUCHER CLAUDE pour la prestation ticket cinema cineville', '', '22', '15094419'),
(89, 2, 'Vente de Billetterie: LE PORT VIRGINIE pour la prestation ticket cinema cineville', '', '44', '32335008'),
(90, 2, 'Vente de Billetterie: BONNIN JOEL pour la prestation ticket cinema cineville', '', '27.5', '72063115'),
(91, 2, 'Vente de Billetterie: OLIVIER JUDITH pour la prestation ticket cinema cineville', '', '22', '47578991'),
(92, 2, 'Vente de Billetterie: VICENTE MARIA pour la prestation ticket cinema cineville', '', '22', '99444297'),
(94, 2, 'Vente de Billetterie: LE BLEVEC BEATRICE pour la prestation ticket cinema cineville', '', '22', '27281515'),
(95, 2, 'Vente de Billetterie: LINO ANNIE pour la prestation ticket cinema cineville', '', '22', '26579597'),
(96, 2, 'Vente de Billetterie: LE GRUYERE YVONNICK pour la prestation ticket cinema cineville', '', '16.5', '39924943'),
(97, 2, 'Vente de Billetterie: PORTANGUEN JOEL pour la prestation ticket cinema cineville', '', '33', '50397442'),
(98, 2, 'Vente de Billetterie: PORTANGUEN JOEL pour la prestation Speedpark', '', '14.25', '17329971'),
(99, 2, 'Vente de Billetterie: ROSOLI CINDY pour la prestation ticket cinema cineville', '', '33', '6010267'),
(100, 2, 'Vente de Billetterie: CADORET ARNAUD pour la prestation ticket cinema cineville', '', '16.5', '79203859'),
(101, 2, 'Vente de Billetterie: LE NEVE GUENHAEL pour la prestation ticket cinema cineville', '', '11', '95503857'),
(106, 2, 'Vente de Billetterie: DERRIEN SANDRINE pour la prestation ticket cinema cineville', '', '11', '46261879'),
(107, 2, 'Vente de Billetterie: GUILLEMOT BEATRICE pour la prestation ticket cinema cineville', '', '22', '69073961'),
(108, 2, 'Vente de Billetterie: EUCHER CLAUDE pour la prestation ticket cinema cineville', '', '22', '97248732'),
(109, 2, 'Vente de Billetterie: BEYOU SEVERINE pour la prestation ticket cinema cineville', '', '11', '97473302'),
(110, 2, 'Vente de Billetterie: TOTO SYLVIE pour la prestation ticket cinema cineville', '', '11', '39993111'),
(111, 2, 'Vente de Billetterie: GRECO JULIEN pour la prestation ticket cinema cineville', '', '55', '23161983'),
(112, 2, 'Vente de Billetterie: PORTANGUEN JOEL pour la prestation ticket cinema cineville', '', '82.5', '4423030'),
(113, 2, 'Vente de Billetterie: CADOUX LAURE pour la prestation ticket cinema cineville', '', '11', '85369045'),
(114, 2, 'Vente de Billetterie: COLAS JACKY pour la prestation ticket cinema cineville', '', '27.5', '76916832'),
(115, 2, 'Vente de Billetterie: GUILLAS CHRISTINE pour la prestation ticket cinema cineville', '', '55', '91068376'),
(116, 2, 'Vente de Billetterie: ARTERO EDDY pour la prestation Yakapark', '', '63', '39894575'),
(117, 2, 'Vente de Billetterie: JOSSIC CATHERINE pour la prestation ticket cinema cineville', '', '22', '82165544'),
(118, 2, 'Vente de Billetterie: MERKILED WILLIAM pour la prestation ticket cinema cineville', '', '44', '99751260'),
(120, 2, 'Vente de Billetterie: DUBOIS RUDY pour la prestation Aquagolfe ticket ADULTE', '', '7.2', '77958818'),
(121, 2, 'Vente de Billetterie: DUBOIS RUDY pour la prestation Aquagolfe ticket ENFANT', '', '6', '19566908'),
(122, 2, 'Vente de Billetterie: LE VIAVANT RAISSA pour la prestation ticket cinema cineville', '', '55', '41943200'),
(123, 2, 'Vente de Billetterie: DALIGAULT STEPHANE pour la prestation ticket cinema cineville', '', '16.5', '17504752'),
(124, 2, 'Vente de Billetterie: GAULE MAXIME pour la prestation ticket cinema cineville', '', '22', '30994244'),
(125, 2, 'Vente de Billetterie: DESIRE FABRICE pour la prestation ticket cinema cineville', '', '22', '19478350'),
(126, 2, 'Vente de Billetterie: SHARRE STEPHANE pour la prestation ticket cinema cineville', '', '22', '90258004'),
(127, 2, 'Vente de Billetterie: MARCILLE YVES pour la prestation ticket cinema cineville', '', '0', '80893928'),
(129, 2, 'Vente de Billetterie: MARCILLE YVES pour la prestation ticket cinema cineville', '', '11', '11100247'),
(130, 2, 'Vente de Billetterie: BARBEAU NICOLAS pour la prestation ticket cinema cineville', '', '11', '99004716'),
(131, 2, 'Vente de Billetterie: MOREL FRANCOISE pour la prestation ticket cinema cineville', '', '11', '94020282'),
(132, 2, 'Vente de Billetterie: ISENI EDITA pour la prestation ticket cinema cineville', '', '22', '16386031'),
(133, 2, 'Vente de Billetterie: GUILLEMOT BEATRICE pour la prestation ticket cinema cineville', '', '11', '60110013'),
(134, 2, 'Vente de Billetterie: CHRISTMANN NADIA pour la prestation ticket cinema cineville', '', '11', '19366067'),
(135, 2, 'Vente de Billetterie: PORTANGUEN JOEL pour la prestation ticket cinema cineville', '', '22', '44462155'),
(136, 2, 'Vente de Billetterie: ARTERO DAVID pour la prestation ticket cinema cineville', '', '5.5', '5604900'),
(137, 2, 'Vente de Billetterie: ARTERO DAVID pour la prestation Aquagolfe ticket ENFANT', '', '3', '17939409'),
(138, 2, 'Vente de Billetterie: ARTERO DAVID pour la prestation Aquagolfe ticket ADULTE', '', '7.2', '57750915'),
(139, 2, 'Vente de Billetterie: BEYOU SEVERINE pour la prestation Aquagolfe ticket ENFANT', '', '9', '45209440'),
(140, 2, 'Vente de Billetterie: BEYOU SEVERINE pour la prestation Aquagolfe ticket ADULTE', '', '7.2', '45197206'),
(141, 2, 'Vente de Billetterie: CADORET ARNAUD pour la prestation ticket cinema cineville', '', '27.5', '30902236'),
(142, 2, 'Vente de Billetterie: MARION ERIC pour la prestation ticket cinema cineville', '', '27.5', '50235339'),
(143, 2, 'Vente de Billetterie: LE PAPILLON MICKAEL pour la prestation ticket cinema cineville', '', '22', '74800477'),
(144, 2, 'Vente de Billetterie: BOURDIN JULIEN pour la prestation ticket cinema cineville', '', '22', '3787139'),
(145, 2, 'Vente de Billetterie: GONDET LUISA pour la prestation ticket cinema cineville', '', '22', '31359422'),
(146, 2, 'Vente de Billetterie: DERRIEN SANDRINE pour la prestation ticket cinema cineville', '', '16.5', '9308959'),
(147, 2, 'Vente de Billetterie: OLIVIER JUDITH pour la prestation ticket cinema cineville', '', '11', '56295804'),
(148, 2, 'Vente de Billetterie: ROBERT SANDRINE pour la prestation ticket cinema cineville', '', '11', '24878393'),
(149, 2, 'Vente de Billetterie: ROBERT SANDRINE pour la prestation Speedpark', '', '47.5', '34562215'),
(150, 2, 'Vente de Billetterie: ARTERO DAVID pour la prestation Speedpark', '', '23.75', '48100911'),
(151, 2, 'Vente de Billetterie: ARTERO DAVID pour la prestation Aquagolfe ticket ENFANT', '', '3', '18957316'),
(152, 2, 'Vente de Billetterie: ARTERO DAVID pour la prestation Aquagolfe ticket ADULTE', '', '3.6', '31091345'),
(153, 2, 'Vente de Billetterie: LE VIAVANT CELINE pour la prestation ticket cinema cineville', '', '55', '16614428'),
(154, 2, 'Vente de Billetterie: OLIVIER JUDITH pour la prestation ticket cinema cineville', '', '11', '95377579'),
(155, 2, 'Vente de Billetterie: DERRIEN SANDRINE pour la prestation ticket cinema cineville', '', '16.5', '76245771'),
(156, 2, 'Vente de Billetterie: MAUDET PASCALE pour la prestation ticket cinema cineville', '', '16.5', '22985393'),
(157, 2, 'Vente de Billetterie: MAUDET PASCALE pour la prestation Aquagolfe ticket ENFANT', '', '6', '58213899'),
(158, 2, 'Vente de Billetterie: JAFFRE ISABELLE pour la prestation ticket cinema cineville', '', '33', '23077459'),
(159, 2, 'Vente de Billetterie: PORTANGUEN JOEL pour la prestation Speedpark', '', '19', '88904164'),
(160, 2, 'Vente de Billetterie: MIMOUN LAILA pour la prestation ticket cinema cineville', '', '11', '51429918'),
(161, 2, 'Vente de Billetterie: LE VIAVANT RAISSA pour la prestation ticket cinema cineville', '', '11', '38129305'),
(162, 2, 'Vente de Billetterie: LE GRUYERE YVONNICK pour la prestation ticket cinema cineville', '', '22', '50110932');

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
(3, 18, '1449792000', 3, '16.5', 0, '64458887', 0),
(4, 66, '1449792000', 3, '16.5', 0, '14166300', 0),
(5, 155, '1449792000', 3, '11', 0, '28172949', 0),
(6, 251, '1449792000', 3, '33', 1, '60201220', 0),
(7, 135, '1449792000', 3, '22', 1, '9186263', 0),
(8, 233, '1449792000', 3, '22', 1, '12127256', 0),
(10, 207, '1449792000', 3, '11', 1, '49331242', 0),
(11, 156, '1450224000', 3, '22', 1, '19541117', 0),
(12, 259, '1450396800', 3, '55', 1, '18295323', 0),
(13, 117, '1450396800', 3, '55', 1, '26907248', 0),
(14, 309, '1450396800', 3, '33', 1, '6174963', 0),
(15, 277, '1450396800', 3, '16.5', 1, '14595324', 0),
(16, 221, '1450396800', 3, '55', 1, '15682063', 0),
(17, 206, '1450396800', 3, '66.5', 1, '9525626', 0),
(18, 148, '1450396800', 3, '16.5', 1, '134689', 0),
(19, 202, '1450396800', 3, '22', 1, '54147865', 0),
(20, 249, '1450396800', 3, '11', 1, '98190549', 0),
(23, 239, '1450396800', 3, '66', 1, '42745462', 0),
(25, 34, '1450396800', 3, '16.5', 1, '89037996', 0),
(29, 247, '1450396800', 3, '33', 1, '86274152', 0),
(30, 239, '1450396800', 3, '18', 1, '1399401', 0),
(31, 274, '1450396800', 3, '22', 1, '82878853', 0),
(32, 249, '1450396800', 3, '19', 1, '50727117', 0),
(34, 36, '1450915200', 3, '80.75', 1, '57703484', 0),
(35, 263, '1450915200', 3, '11', 1, '22332041', 0),
(38, 94, '1450915200', 3, '23', 1, '67056063', 0),
(40, 80, '1450915200', 3, '22', 1, '27454068', 0),
(41, 80, '1450915200', 3, '19', 1, '60211825', 0),
(44, 182, '1450915200', 3, '88', 1, '32602362', 0),
(46, 182, '1450915200', 3, '23', 1, '3185391', 0),
(47, 258, '1450915200', 3, '11', 1, '94430561', 0),
(48, 274, '1450915200', 3, '23', 1, '16459287', 0),
(49, 274, '1450915200', 3, '22', 1, '86579464', 0),
(50, 212, '1452211200', 3, '22', 1, '45967136', 0),
(51, 160, '1452211200', 3, '55', 1, '58552047', 0),
(52, 302, '1452211200', 3, '14.4', 1, '9560246', 0),
(53, 115, '1452211200', 3, '11', 1, '98618520', 0),
(57, 74, '1455231600', 3, '11', 1, '48771069', 0),
(58, 148, '1454022000', 3, '27.5', 1, '19885302', 0),
(59, 260, '1454022000', 3, '47.5', 1, '48194472', 0),
(60, 260, '1454022000', 3, '16.5', 1, '77523749', 0),
(61, 51, '1454022000', 3, '44', 1, '69273608', 0),
(62, 80, '1454022000', 3, '22', 1, '9095597', 0),
(63, 159, '1454022000', 3, '27.5', 1, '42310751', 0),
(64, 159, '1454022000', 3, '30', 1, '13731132', 0),
(65, 9, '1454022000', 3, '44', 1, '70004352', 0),
(66, 249, '1454626800', 3, '44', 1, '52823528', 0),
(67, 28, '1454626800', 3, '49.5', 1, '46546205', 0),
(68, 117, '1454626800', 3, '33', 1, '78472388', 0),
(69, 117, '1454626800', 3, '18', 1, '37369276', 0),
(70, 148, '1454626800', 3, '19', 1, '99594709', 0),
(71, 249, '1454626800', 3, '19', 1, '31902822', 0),
(72, 247, '1454022000', 3, '28.5', 1, '82285249', 0),
(73, 163, '1454626800', 3, '55', 1, '75124889', 0),
(74, 87, '1455231600', 3, '22', 1, '15094419', 0),
(75, 192, '1454626800', 3, '44', 1, '32335008', 0),
(76, 38, '1454626800', 3, '27.5', 1, '72063115', 0),
(77, 247, '1454626800', 3, '22', 1, '47578991', 0),
(78, 309, '1454626800', 3, '22', 1, '99444297', 0),
(79, 159, '1455231600', 3, '22', 1, '27281515', 0),
(80, 209, '1455231600', 3, '22', 1, '26579597', 0),
(81, 177, '1455231600', 3, '16.5', 1, '39924943', 0),
(82, 262, '1455231600', 3, '33', 1, '50397442', 0),
(83, 262, '1455231600', 3, '14.25', 1, '17329971', 0),
(84, 275, '1455231600', 3, '33', 1, '6010267', 0),
(85, 53, '1455231600', 3, '16.5', 1, '79203859', 0),
(86, 186, '1455231600', 3, '11', 1, '95503857', 0),
(90, 75, '1455231600', 3, '11', 1, '46261879', 0),
(91, 121, '1455231600', 3, '22', 1, '69073961', 0),
(93, 87, '1455231600', 3, '22', 1, '97248732', 0),
(94, 35, '1454626800', 3, '11', 1, '97473302', 0),
(95, 302, '1454626800', 3, '11', 1, '39993111', 0),
(96, 107, '1455231600', 3, '55', 1, '23161983', 0),
(97, 262, '1455231600', 3, '82.5', 1, '4423030', 0),
(98, 54, '1455231600', 3, '11', 1, '85369045', 0),
(99, 59, '1452812400', 3, '27.5', 1, '76916832', 0),
(100, 120, '1454022000', 3, '55', 1, '91068376', 0),
(101, 12, '1453417200', 3, '63', 1, '39894575', 0),
(102, 227, '1453417200', 3, '44', 1, '99751260', 0),
(103, 140, '1455231600', 3, '22', 1, '82165544', 0),
(104, 82, '1453417200', 3, '6', 1, '19566908', 0),
(105, 82, '1453417200', 3, '7.2', 1, '77958818', 0),
(106, 197, '1452812400', 3, '55', 1, '41943200', 0),
(107, 66, '1452812400', 3, '16.5', 1, '17504752', 0),
(108, 99, '1452812400', 3, '22', 1, '30994244', 0),
(109, 76, '1452812400', 3, '22', 1, '19478350', 0),
(110, 289, '1452812400', 3, '22', 1, '90258004', 0),
(111, 219, '1453417200', 3, '11', 1, '11100247', 0),
(112, 18, '1455231600', 3, '11', 0, '99004716', 0),
(113, 233, '1454022000', 3, '11', 1, '94020282', 0),
(114, 135, '1454022000', 3, '22', 1, '16386031', 0),
(115, 121, '1454022000', 3, '11', 1, '60110013', 0),
(116, 58, '1447974000', 3, '11', 1, '19366067', 0),
(117, 262, '1453417200', 3, '22', 1, '44462155', 0),
(118, 11, '1452812400', 3, '5.5', 1, '5604900', 0),
(119, 11, '1452812400', 3, '3', 1, '17939409', 0),
(120, 11, '1455231600', 3, '7.2', 1, '57750915', 0),
(121, 35, '1452812400', 3, '9', 1, '45209440', 0),
(122, 35, '1452812400', 3, '7.2', 1, '45197206', 0),
(123, 53, '1452812400', 3, '27.5', 1, '30902236', 0),
(124, 220, '1452812400', 3, '27.5', 1, '50235339', 0),
(125, 190, '1452812400', 3, '22', 1, '74800477', 0),
(126, 43, '1452812400', 3, '22', 1, '3787139', 0),
(127, 106, '1455750000', 3, '22', 1, '31359422', 0),
(128, 75, '1455663600', 3, '16.5', 0, '9308959', 0),
(129, 247, '1455663600', 3, '11', 0, '56295804', 0),
(130, 271, '1455836400', 3, '11', 0, '24878393', 0),
(131, 271, '1455836400', 3, '47.5', 0, '34562215', 0),
(132, 11, '1454626800', 3, '23.75', 1, '48100911', 0),
(133, 11, '1454626800', 3, '3', 1, '18957316', 0),
(135, 11, '1454626800', 3, '3.6', 1, '31091345', 0),
(136, 196, '1455836400', 3, '55', 0, '16614428', 0),
(137, 75, '1455663600', 3, '16.5', 0, '76245771', 0),
(138, 247, '1455663600', 3, '11', 1, '95377579', 0),
(139, 224, '1455836400', 3, '16.5', 1, '22985393', 0),
(140, 224, '1455836400', 3, '6', 1, '58213899', 0),
(141, 136, '1455836400', 3, '33', 0, '23077459', 0),
(142, 262, '1455836400', 3, '19', 1, '88904164', 0),
(143, 229, '1455836400', 3, '11', 1, '51429918', 0),
(144, 197, '1455836400', 3, '11', 1, '38129305', 0),
(145, 177, '1455836400', 3, '22', 1, '50110932', 0);

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
(80, 1, '', '20'),
(81, 2, '', ''),
(82, 3, '8500', '1000'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '', ''),
(87, 8, '2020', '500'),
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
(107, 28, '6520', '11520'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', ''),
(113, 34, '', ''),
(114, 35, '', '5000'),
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
(139, 60, '1000', ''),
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
(31, '1444860000', 'sub 1 trim', 3, '5000', ''),
(32, '1444860000', 'micro geant  fact 45', 3, '', '1000'),
(33, '1444860000', 'virement depuis le livret', 3, '500', '');

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
(10, 3, '3000'),
(11, 8, '2000');

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
(5, 28, '5000');

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
(2, '1444860000', 'virement vers livret', 1, '', '20');

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
(74, 3, '3000', ''),
(75, 8, '2000', ''),
(76, 28, '', '5000'),
(77, 35, '', '5000'),
(78, 3, '5000', ''),
(79, 60, '1000', ''),
(80, 3, '', '1000'),
(81, 8, '', '500'),
(82, 3, '500', ''),
(83, 1, '', '20'),
(84, 8, '20', '');

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

--
-- Contenu de la table `compta_livret`
--

INSERT INTO `compta_livret` (`idcomptalivret`, `date_livret`, `desc_livret`, `idcomptaplan`, `debit`, `credit`) VALUES
(2, '1444860000', 'virement interne vers ban', 8, '', '500'),
(3, '1444860000', 'virement depuis la caisse', 8, '20', '');

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
(29, '1444860000', 'sub 1 eme trim', 35, '', '5000'),
(30, '1444860000', 'micro geant  fact 45', 60, '1000', '');

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

--
-- Contenu de la table `compta_resultat`
--

INSERT INTO `compta_resultat` (`idresultat`, `idcomptaplan`, `debit`, `credit`) VALUES
(30, 35, '', '5000'),
(31, 60, '1000', '');

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
(1, 'DSL', '0', '0', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
(1, '8134445976', '1449183600', 'Achat - ticket cinema cineville', '68', ''),
(3, '64458887', '1449788400', 'Vente de Billetterie: BARBEAU NICOLAS pour la prestation ticket cinema cineville', '', '16.5'),
(4, '14166300', '1449788400', 'Vente de Billetterie: DALIGAULT STEPHANE pour la prestation ticket cinema cineville', '', '16.5'),
(5, '42932439', '1449788400', 'Vente de Billetterie: LE BADEZET JEAN FRANCOIS pour la prestation ', '', '0'),
(6, '28172949', '1449788400', 'Vente de Billetterie: LE BADEZET JEAN FRANCOIS pour la prestation ticket cinema cineville', '', '11'),
(7, '60201220', '1449788400', 'Vente de Billetterie: PECOUYOUL THIERRY pour la prestation ticket cinema cineville', '', '33'),
(8, '9186263', '1449788400', 'Vente de Billetterie: ISENI EDITA pour la prestation ticket cinema cineville', '', '22'),
(9, '12127256', '1449788400', 'Vente de Billetterie: MOREL FRANCOISE pour la prestation ticket cinema cineville', '', '22'),
(10, '49331242', '1449788400', 'Vente de Billetterie: LEROUZIC FANNY pour la prestation ticket cinema cineville', '', '11'),
(11, '19541117', '1450220400', 'Vente de Billetterie: LE BARRE MYRIAM pour la prestation ticket cinema cineville', '', '22'),
(12, '18295323', '1450393200', 'Vente de Billetterie: PIECOURT GERARD pour la prestation ticket cinema cineville', '', '55'),
(13, '26907248', '1450393200', 'Vente de Billetterie: GUICHON FABIENNE pour la prestation ticket cinema cineville', '', '55'),
(14, '6174963', '1450393200', 'Vente de Billetterie: VICENTE MARIA pour la prestation ticket cinema cineville', '', '33'),
(15, '14595324', '1450393200', 'Vente de Billetterie: ROUILLE SYLVIE pour la prestation ticket cinema cineville', '', '16.5'),
(16, '15682063', '1450393200', 'Vente de Billetterie: MARTIN MARIE-ANDREE pour la prestation ticket cinema cineville', '', '55'),
(17, '9525626', '1450393200', 'Vente de Billetterie: LERANDY GUY pour la prestation Speedpark', '', '66.5'),
(18, '134689', '1450393200', 'Vente de Billetterie: LAINE CAROLE pour la prestation ticket cinema cineville', '', '16.5'),
(19, '54147865', '1450393200', 'Vente de Billetterie: LECADIEU CAROLE pour la prestation ticket cinema cineville', '', '22'),
(20, '7887411', '1450393200', 'Vente de Billetterie: ORJUBIN MURIEL pour la prestation ticket cinema cineville', '', '11'),
(23, '60729954', '1450393200', 'Vente de Billetterie: NAILI MENANA pour la prestation ticket cinema cineville', '', '66'),
(25, '9834758', '1450393200', 'Vente de Billetterie: NAILI MENANA pour la prestation ticket cinema cineville', '', '66'),
(27, '32162984', '1450393200', 'Vente de Billetterie: NAILI MENANA pour la prestation Aquagolfe ticket BALNEO+ACCES BASSIN', '', '18'),
(29, '2017299', '1450393200', 'Vente de Billetterie: NAILI MENANA pour la prestation ticket cinema cineville', '', '66'),
(31, '19563064', '1450393200', 'Vente de Billetterie: NAILI MENANA pour la prestation Aquagolfe ticket BALNEO+ACCES BASSIN', '', '18'),
(34, '89037996', '1450393200', 'Vente de Billetterie: BESSON ANOUK pour la prestation ticket cinema cineville', '', '16.5'),
(36, '42745462', '1450393200', 'Vente de Billetterie: NAILI MENANA pour la prestation ticket cinema cineville', '', '66'),
(38, '86274152', '1450393200', 'Vente de Billetterie: OLIVIER JUDITH pour la prestation ticket cinema cineville', '', '33'),
(39, '1399401', '1450393200', 'Vente de Billetterie: NAILI MENANA pour la prestation Aquagolfe ticket BALNEO+ACCES BASSIN', '', '18'),
(40, '82878853', '1450393200', 'Vente de Billetterie: ROLLAND ANDRE pour la prestation ticket cinema cineville', '', '22'),
(41, '98190549', '1450393200', 'Vente de Billetterie: ORJUBIN MURIEL pour la prestation ticket cinema cineville', '', '11'),
(42, '50727117', '1450393200', 'Vente de Billetterie: ORJUBIN MURIEL pour la prestation Speedpark', '', '19'),
(44, '57703484', '1450911600', 'Vente de Billetterie: BIHOREAU FREDERIQUE pour la prestation Speedpark', '', '80.75'),
(45, '22332041', '1450911600', 'Vente de Billetterie: POSSEME STEPHANIE pour la prestation ticket cinema cineville', '', '11'),
(47, '74652619', '1450911600', 'Vente de Billetterie: DOURDAIN MARIE-LAURE pour la prestation ticket cinema cineville', '', '22'),
(48, '65628776', '1450911600', 'Vente de Billetterie: DOURDAIN MARIE-LAURE pour la prestation Speedpark', '', '19'),
(50, '67056063', '1450911600', 'Vente de Billetterie: FLEUREAU HELENE pour la prestation HUITRES  PANIER 50 CAL3', '', '23'),
(52, '27454068', '1450911600', 'Vente de Billetterie: DOURDAIN MARIE-LAURE pour la prestation ticket cinema cineville', '', '22'),
(53, '60211825', '1450911600', 'Vente de Billetterie: DOURDAIN MARIE-LAURE pour la prestation Speedpark', '', '19'),
(54, '32602362', '1450911600', 'Vente de Billetterie: LE MAUFF ISABELLE pour la prestation HUITRES  PANIER 100 CAL 3', '', '88'),
(55, '3185391', '1450911600', 'Vente de Billetterie: LE MAUFF ISABELLE pour la prestation HUITRES  PANIER 50 CAL3', '', '23'),
(56, '94430561', '', 'Vente de Billetterie: PICAUT ANNE-FRANCOISE pour la prestation ticket cinema cineville', '', '11'),
(57, '16459287', '1450911600', 'Vente de Billetterie: ROLLAND ANDRE pour la prestation HUITRES  PANIER 50 CAL3', '', '23'),
(58, '86579464', '1450911600', 'Vente de Billetterie: ROLLAND ANDRE pour la prestation ticket cinema cineville', '', '22'),
(59, '45967136', '1452207600', 'Vente de Billetterie: LORIN CARMEN pour la prestation ticket cinema cineville', '', '22'),
(60, '58552047', '1452207600', 'Vente de Billetterie: LE BOHEC MURIELLE pour la prestation ticket cinema cineville', '', '55'),
(61, '9560246', '1452207600', 'Vente de Billetterie: TOTO SYLVIE pour la prestation Aquagolfe ticket ADULTE', '', '14.4'),
(62, '98618520', '1452207600', 'Vente de Billetterie: GUEVEL SONIA pour la prestation ticket cinema cineville', '', '11'),
(63, '48771069', '1455231600', 'Vente de Billetterie: DENAY ISABELLE pour la prestation ticket cinema cineville', '', '11'),
(64, '19885302', '1454022000', 'Vente de Billetterie: LAINE CAROLE pour la prestation ticket cinema cineville', '', '27.5'),
(65, '56184127', '1454022000', 'Vente de Billetterie: PITTELIOEN LAETITIA pour la prestation ticket cinema cineville', '', '16.5'),
(67, '48194472', '1454022000', 'Vente de Billetterie: PITTELIOEN LAETITIA pour la prestation Speedpark', '', '47.5'),
(68, '77523749', '1454022000', 'Vente de Billetterie: PITTELIOEN LAETITIA pour la prestation ticket cinema cineville', '', '16.5'),
(69, '69273608', '1454022000', 'Vente de Billetterie: CADIC FREDERIC pour la prestation ticket cinema cineville', '', '44'),
(70, '9095597', '1454022000', 'Vente de Billetterie: DOURDAIN MARIE-LAURE pour la prestation ticket cinema cineville', '', '22'),
(71, '83884048', '1454022000', 'Vente de Billetterie: LE BLEVEC BEATRICE pour la prestation ticket cinema cineville', '', '27.5'),
(73, '67699909', '1454022000', 'Vente de Billetterie: LE BLEVEC BEATRICE pour la prestation ticket cinema cineville', '', '27.5'),
(74, '12220088', '1454022000', 'Vente de Billetterie: LE BLEVEC BEATRICE pour la prestation Aquagolfe ticket BALNEO+ACCES BASSIN', '', '30'),
(76, '42310751', '1454022000', 'Vente de Billetterie: LE BLEVEC BEATRICE pour la prestation ticket cinema cineville', '', '27.5'),
(77, '13731132', '1454022000', 'Vente de Billetterie: LE BLEVEC BEATRICE pour la prestation Aquagolfe ticket BALNEO+ACCES BASSIN', '', '30'),
(78, '70004352', '1454022000', 'Vente de Billetterie: ARCHAMBAULT DE MONFORT ISABELLE pour la prestation ticket cinema cineville', '', '44'),
(79, '52823528', '1454626800', 'Vente de Billetterie: ORJUBIN MURIEL pour la prestation ticket cinema cineville', '', '44'),
(80, '46546205', '1454626800', 'Vente de Billetterie: BENARD EVELYNE pour la prestation ticket cinema cineville', '', '49.5'),
(82, '78472388', '1454626800', 'Vente de Billetterie: GUICHON FABIENNE pour la prestation ticket cinema cineville', '', '33'),
(83, '37369276', '1454626800', 'Vente de Billetterie: GUICHON FABIENNE pour la prestation Aquagolfe ticket ENFANT', '', '18'),
(84, '99594709', '1454626800', 'Vente de Billetterie: LAINE CAROLE pour la prestation Speedpark', '', '19'),
(85, '31902822', '1454626800', 'Vente de Billetterie: ORJUBIN MURIEL pour la prestation Speedpark', '', '19'),
(86, '82285249', '1454022000', 'Vente de Billetterie: OLIVIER JUDITH pour la prestation Speedpark', '', '28.5'),
(87, '75124889', '1454626800', 'Vente de Billetterie: LE BRUN SYLVIANE pour la prestation ticket cinema cineville', '', '55'),
(88, '15094419', '1455231600', 'Vente de Billetterie: EUCHER CLAUDE pour la prestation ticket cinema cineville', '', '22'),
(89, '32335008', '1454626800', 'Vente de Billetterie: LE PORT VIRGINIE pour la prestation ticket cinema cineville', '', '44'),
(90, '72063115', '1454626800', 'Vente de Billetterie: BONNIN JOEL pour la prestation ticket cinema cineville', '', '27.5'),
(91, '47578991', '1454626800', 'Vente de Billetterie: OLIVIER JUDITH pour la prestation ticket cinema cineville', '', '22'),
(92, '99444297', '1454626800', 'Vente de Billetterie: VICENTE MARIA pour la prestation ticket cinema cineville', '', '22'),
(94, '27281515', '1455231600', 'Vente de Billetterie: LE BLEVEC BEATRICE pour la prestation ticket cinema cineville', '', '22'),
(95, '26579597', '1455231600', 'Vente de Billetterie: LINO ANNIE pour la prestation ticket cinema cineville', '', '22'),
(96, '39924943', '1455231600', 'Vente de Billetterie: LE GRUYERE YVONNICK pour la prestation ticket cinema cineville', '', '16.5'),
(97, '50397442', '1455231600', 'Vente de Billetterie: PORTANGUEN JOEL pour la prestation ticket cinema cineville', '', '33'),
(98, '17329971', '1455231600', 'Vente de Billetterie: PORTANGUEN JOEL pour la prestation Speedpark', '', '14.25'),
(99, '6010267', '1455231600', 'Vente de Billetterie: ROSOLI CINDY pour la prestation ticket cinema cineville', '', '33'),
(100, '79203859', '1455231600', 'Vente de Billetterie: CADORET ARNAUD pour la prestation ticket cinema cineville', '', '16.5'),
(101, '95503857', '1455231600', 'Vente de Billetterie: LE NEVE GUENHAEL pour la prestation ticket cinema cineville', '', '11'),
(106, '46261879', '1455231600', 'Vente de Billetterie: DERRIEN SANDRINE pour la prestation ticket cinema cineville', '', '11'),
(107, '69073961', '1455231600', 'Vente de Billetterie: GUILLEMOT BEATRICE pour la prestation ticket cinema cineville', '', '22'),
(108, '97248732', '1455231600', 'Vente de Billetterie: EUCHER CLAUDE pour la prestation ticket cinema cineville', '', '22'),
(109, '97473302', '1454626800', 'Vente de Billetterie: BEYOU SEVERINE pour la prestation ticket cinema cineville', '', '11'),
(110, '39993111', '1454626800', 'Vente de Billetterie: TOTO SYLVIE pour la prestation ticket cinema cineville', '', '11'),
(111, '23161983', '1455231600', 'Vente de Billetterie: GRECO JULIEN pour la prestation ticket cinema cineville', '', '55'),
(112, '4423030', '1455231600', 'Vente de Billetterie: PORTANGUEN JOEL pour la prestation ticket cinema cineville', '', '82.5'),
(113, '85369045', '1455231600', 'Vente de Billetterie: CADOUX LAURE pour la prestation ticket cinema cineville', '', '11'),
(114, '76916832', '1452812400', 'Vente de Billetterie: COLAS JACKY pour la prestation ticket cinema cineville', '', '27.5'),
(115, '91068376', '1454022000', 'Vente de Billetterie: GUILLAS CHRISTINE pour la prestation ticket cinema cineville', '', '55'),
(116, '39894575', '1453417200', 'Vente de Billetterie: ARTERO EDDY pour la prestation Yakapark', '', '63'),
(117, '82165544', '1455231600', 'Vente de Billetterie: JOSSIC CATHERINE pour la prestation ticket cinema cineville', '', '22'),
(118, '99751260', '1453417200', 'Vente de Billetterie: MERKILED WILLIAM pour la prestation ticket cinema cineville', '', '44'),
(120, '77958818', '1453417200', 'Vente de Billetterie: DUBOIS RUDY pour la prestation Aquagolfe ticket ADULTE', '', '7.2'),
(121, '19566908', '1453417200', 'Vente de Billetterie: DUBOIS RUDY pour la prestation Aquagolfe ticket ENFANT', '', '6'),
(122, '41943200', '1452812400', 'Vente de Billetterie: LE VIAVANT RAISSA pour la prestation ticket cinema cineville', '', '55'),
(123, '17504752', '1452812400', 'Vente de Billetterie: DALIGAULT STEPHANE pour la prestation ticket cinema cineville', '', '16.5'),
(124, '30994244', '1452812400', 'Vente de Billetterie: GAULE MAXIME pour la prestation ticket cinema cineville', '', '22'),
(125, '19478350', '1452812400', 'Vente de Billetterie: DESIRE FABRICE pour la prestation ticket cinema cineville', '', '22'),
(126, '90258004', '1452812400', 'Vente de Billetterie: SHARRE STEPHANE pour la prestation ticket cinema cineville', '', '22'),
(127, '80893928', '1453417200', 'Vente de Billetterie: MARCILLE YVES pour la prestation ticket cinema cineville', '', '0'),
(129, '11100247', '1453417200', 'Vente de Billetterie: MARCILLE YVES pour la prestation ticket cinema cineville', '', '11'),
(130, '99004716', '1455231600', 'Vente de Billetterie: BARBEAU NICOLAS pour la prestation ticket cinema cineville', '', '11'),
(131, '94020282', '1454022000', 'Vente de Billetterie: MOREL FRANCOISE pour la prestation ticket cinema cineville', '', '11'),
(132, '16386031', '1454022000', 'Vente de Billetterie: ISENI EDITA pour la prestation ticket cinema cineville', '', '22'),
(133, '60110013', '1454022000', 'Vente de Billetterie: GUILLEMOT BEATRICE pour la prestation ticket cinema cineville', '', '11'),
(134, '19366067', '1447974000', 'Vente de Billetterie: CHRISTMANN NADIA pour la prestation ticket cinema cineville', '', '11'),
(135, '44462155', '1453417200', 'Vente de Billetterie: PORTANGUEN JOEL pour la prestation ticket cinema cineville', '', '22'),
(136, '5604900', '1452812400', 'Vente de Billetterie: ARTERO DAVID pour la prestation ticket cinema cineville', '', '5.5'),
(137, '17939409', '1452812400', 'Vente de Billetterie: ARTERO DAVID pour la prestation Aquagolfe ticket ENFANT', '', '3'),
(138, '57750915', '1455231600', 'Vente de Billetterie: ARTERO DAVID pour la prestation Aquagolfe ticket ADULTE', '', '7.2'),
(139, '45209440', '1452812400', 'Vente de Billetterie: BEYOU SEVERINE pour la prestation Aquagolfe ticket ENFANT', '', '9'),
(140, '45197206', '1452812400', 'Vente de Billetterie: BEYOU SEVERINE pour la prestation Aquagolfe ticket ADULTE', '', '7.2'),
(141, '30902236', '1452812400', 'Vente de Billetterie: CADORET ARNAUD pour la prestation ticket cinema cineville', '', '27.5'),
(142, '50235339', '1452812400', 'Vente de Billetterie: MARION ERIC pour la prestation ticket cinema cineville', '', '27.5'),
(143, '74800477', '1452812400', 'Vente de Billetterie: LE PAPILLON MICKAEL pour la prestation ticket cinema cineville', '', '22'),
(144, '3787139', '1452812400', 'Vente de Billetterie: BOURDIN JULIEN pour la prestation ticket cinema cineville', '', '22'),
(145, '31359422', '1455750000', 'Vente de Billetterie: GONDET LUISA pour la prestation ticket cinema cineville', '', '22'),
(146, '9308959', '1455663600', 'Vente de Billetterie: DERRIEN SANDRINE pour la prestation ticket cinema cineville', '', '16.5'),
(147, '56295804', '1455663600', 'Vente de Billetterie: OLIVIER JUDITH pour la prestation ticket cinema cineville', '', '11'),
(148, '24878393', '1455836400', 'Vente de Billetterie: ROBERT SANDRINE pour la prestation ticket cinema cineville', '', '11'),
(149, '34562215', '1455836400', 'Vente de Billetterie: ROBERT SANDRINE pour la prestation Speedpark', '', '47.5'),
(150, '48100911', '1454626800', 'Vente de Billetterie: ARTERO DAVID pour la prestation Speedpark', '', '23.75'),
(151, '18957316', '1454626800', 'Vente de Billetterie: ARTERO DAVID pour la prestation Aquagolfe ticket ENFANT', '', '3'),
(152, '31091345', '1454626800', 'Vente de Billetterie: ARTERO DAVID pour la prestation Aquagolfe ticket ADULTE', '', '3.6'),
(153, '16614428', '1455836400', 'Vente de Billetterie: LE VIAVANT CELINE pour la prestation ticket cinema cineville', '', '55'),
(154, '95377579', '1455663600', 'Vente de Billetterie: OLIVIER JUDITH pour la prestation ticket cinema cineville', '', '11'),
(155, '76245771', '1455663600', 'Vente de Billetterie: DERRIEN SANDRINE pour la prestation ticket cinema cineville', '', '16.5'),
(156, '22985393', '1455836400', 'Vente de Billetterie: MAUDET PASCALE pour la prestation ticket cinema cineville', '', '16.5'),
(157, '58213899', '1455836400', 'Vente de Billetterie: MAUDET PASCALE pour la prestation Aquagolfe ticket ENFANT', '', '6'),
(158, '23077459', '1455836400', 'Vente de Billetterie: JAFFRE ISABELLE pour la prestation ticket cinema cineville', '', '33'),
(159, '88904164', '1455836400', 'Vente de Billetterie: PORTANGUEN JOEL pour la prestation Speedpark', '', '19'),
(160, '51429918', '1455836400', 'Vente de Billetterie: MIMOUN LAILA pour la prestation ticket cinema cineville', '', '11'),
(161, '38129305', '1455836400', 'Vente de Billetterie: LE VIAVANT RAISSA pour la prestation ticket cinema cineville', '', '11'),
(162, '50110932', '1455836400', 'Vente de Billetterie: LE GRUYERE YVONNICK pour la prestation ticket cinema cineville', '', '22');

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
(2, 'Billeterie'),
(3, 'OFFRE PONCTUEL');

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
(2, 3, 2, '3', '16.5', '3.9', 0, ''),
(3, 4, 2, '3', '16.5', '3.9', 0, ''),
(4, 5, 0, '', '0', '0', 0, ''),
(5, 5, 2, '2', '11', '2.6', 0, ''),
(6, 6, 2, '6', '33', '7.8', 0, ''),
(7, 7, 2, '4', '22', '5.2', 0, ''),
(8, 8, 2, '4', '22', '5.2', 0, ''),
(9, 10, 2, '2', '11', '2.6', 0, ''),
(10, 11, 2, '4', '22', '5.2', 0, ''),
(11, 12, 2, '10', '55', '13', 0, ''),
(12, 13, 2, '10', '55', '13', 0, ''),
(13, 14, 2, '6', '33', '7.8', 0, ''),
(14, 15, 2, '3', '16.5', '3.9', 0, ''),
(15, 16, 2, '10', '55', '13', 0, ''),
(16, 17, 4, '14', '66.5', '0', 0, ''),
(17, 18, 2, '3', '16.5', '3.9', 0, ''),
(18, 19, 2, '4', '22', '5.2', 0, ''),
(33, 25, 2, '3', '16.5', '3.9', 0, ''),
(35, 23, 2, '12', '66', '15.6', 0, ''),
(37, 29, 2, '6', '33', '7.8', 0, ''),
(38, 30, 13, '3', '18', '7.8', 0, ''),
(39, 31, 2, '4', '22', '5.2', 0, ''),
(40, 20, 2, '2', '11', '2.6', 0, ''),
(41, 32, 4, '4', '19', '0', 0, ''),
(43, 34, 4, '17', '80.75', '0', 0, ''),
(44, 35, 2, '2', '11', '2.6', 0, ''),
(49, 38, 15, '1', '23', '0', 0, ''),
(51, 40, 2, '4', '22', '5.2', 0, ''),
(52, 41, 4, '4', '19', '0', 0, ''),
(53, 44, 16, '2', '88', '0', 0, ''),
(54, 46, 15, '1', '23', '0', 0, ''),
(55, 47, 2, '2', '11', '2.6', 0, ''),
(56, 48, 15, '1', '23', '0', 0, ''),
(57, 49, 2, '4', '22', '5.2', 0, ''),
(58, 50, 2, '4', '22', '5.2', 0, ''),
(59, 51, 2, '10', '55', '13', 0, ''),
(60, 52, 11, '4', '14.4', '6.2', 0, ''),
(61, 53, 2, '2', '11', '2.6', 0, ''),
(62, 57, 2, '2', '11', '2.6', 0, ''),
(63, 58, 2, '5', '27.5', '6.5', 0, ''),
(66, 59, 4, '10', '47.5', '0', 0, ''),
(67, 60, 2, '3', '16.5', '3.9', 0, ''),
(68, 61, 2, '8', '44', '10.4', 0, ''),
(69, 62, 2, '4', '22', '5.2', 0, ''),
(75, 63, 2, '5', '27.5', '6.5', 0, ''),
(76, 64, 13, '5', '30', '13', 0, ''),
(77, 65, 2, '8', '44', '10.4', 0, ''),
(78, 66, 2, '8', '44', '10.4', 0, ''),
(79, 67, 2, '9', '49.5', '11.7', 0, ''),
(81, 68, 2, '6', '33', '7.8', 0, ''),
(82, 69, 12, '6', '18', '8.7', 0, ''),
(83, 70, 4, '4', '19', '0', 0, ''),
(84, 71, 4, '4', '19', '0', 0, ''),
(85, 72, 4, '6', '28.5', '0', 0, ''),
(86, 73, 2, '10', '55', '13', 0, ''),
(87, 74, 2, '4', '22', '5.2', 0, ''),
(88, 75, 2, '8', '44', '10.4', 0, ''),
(89, 76, 2, '5', '27.5', '6.5', 0, ''),
(90, 77, 2, '4', '22', '5.2', 0, ''),
(91, 78, 2, '4', '22', '5.2', 0, ''),
(93, 79, 2, '4', '22', '5.2', 0, ''),
(94, 80, 2, '4', '22', '5.2', 0, ''),
(95, 81, 2, '3', '16.5', '3.9', 0, ''),
(96, 82, 2, '6', '33', '7.8', 0, ''),
(97, 83, 4, '3', '14.25', '0', 0, ''),
(98, 84, 2, '6', '33', '7.8', 0, ''),
(99, 85, 2, '3', '16.5', '3.9', 0, ''),
(100, 86, 2, '2', '11', '2.6', 0, ''),
(105, 90, 2, '2', '11', '2.6', 0, ''),
(106, 91, 2, '4', '22', '5.2', 0, ''),
(107, 93, 2, '4', '22', '5.2', 0, ''),
(108, 94, 2, '2', '11', '2.6', 0, ''),
(109, 95, 2, '2', '11', '2.6', 0, ''),
(110, 96, 2, '10', '55', '13', 0, ''),
(111, 97, 2, '15', '82.5', '19.5', 0, ''),
(112, 98, 2, '2', '11', '2.6', 0, ''),
(113, 99, 2, '5', '27.5', '6.5', 0, ''),
(114, 100, 2, '10', '55', '13', 0, ''),
(115, 101, 3, '9', '63', '23.4', 0, ''),
(116, 103, 2, '4', '22', '5.2', 0, ''),
(117, 102, 2, '8', '44', '10.4', 0, ''),
(119, 105, 11, '2', '7.2', '3.1', 0, ''),
(120, 104, 12, '2', '6', '2.9', 0, ''),
(121, 106, 2, '10', '55', '13', 0, ''),
(122, 107, 2, '3', '16.5', '3.9', 0, ''),
(123, 108, 2, '4', '22', '5.2', 0, ''),
(124, 109, 2, '4', '22', '5.2', 0, ''),
(125, 110, 2, '4', '22', '5.2', 0, ''),
(128, 111, 2, '2', '11', '2.6', 0, ''),
(129, 112, 2, '2', '11', '2.6', 0, ''),
(130, 113, 2, '2', '11', '2.6', 0, ''),
(131, 114, 2, '4', '22', '5.2', 0, ''),
(132, 115, 2, '2', '11', '2.6', 0, ''),
(133, 116, 2, '2', '11', '2.6', 0, ''),
(134, 117, 2, '4', '22', '5.2', 0, ''),
(135, 118, 2, '1', '5.5', '1.3', 0, ''),
(136, 119, 12, '1', '3', '1.45', 0, ''),
(137, 120, 11, '2', '7.2', '3.1', 0, ''),
(138, 121, 12, '3', '9', '4.35', 0, ''),
(139, 122, 11, '2', '7.2', '3.1', 0, ''),
(140, 123, 2, '5', '27.5', '6.5', 0, ''),
(141, 124, 2, '5', '27.5', '6.5', 0, ''),
(142, 125, 2, '4', '22', '5.2', 0, ''),
(143, 126, 2, '4', '22', '5.2', 0, ''),
(144, 127, 2, '4', '22', '5.2', 0, ''),
(145, 128, 2, '3', '16.5', '3.9', 0, ''),
(146, 129, 2, '2', '11', '2.6', 0, ''),
(147, 130, 2, '2', '11', '2.6', 0, ''),
(148, 131, 4, '10', '47.5', '0', 0, ''),
(149, 132, 4, '5', '23.75', '0', 0, ''),
(150, 133, 12, '1', '3', '1.45', 0, ''),
(151, 135, 11, '1', '3.6', '1.55', 0, ''),
(152, 136, 2, '10', '55', '13', 0, ''),
(153, 138, 2, '2', '11', '2.6', 0, ''),
(154, 137, 2, '3', '16.5', '3.9', 0, ''),
(155, 139, 2, '3', '16.5', '3.9', 0, ''),
(156, 140, 12, '2', '6', '2.9', 0, ''),
(157, 141, 2, '6', '33', '7.8', 0, ''),
(158, 142, 4, '4', '19', '0', 0, ''),
(159, 143, 2, '2', '11', '2.6', 0, ''),
(160, 144, 2, '2', '11', '2.6', 0, ''),
(161, 145, 2, '4', '22', '5.2', 0, '');

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
(7, 'cedsl', 'eb93e75460bd5c45b1042b48ed49d97e', 1);

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
(2, 2, 'ticket cinema cineville', '', '20-07-2016', '5.5', '1.3', '6.8', '99', '0', 0),
(3, 2, 'Yakapark', '', '31-12-2017', '7', '2.6', '9.6', '110000', '0', 0),
(4, 2, 'Speedpark', '', '08-08-2016', '4.75', '', '4.75', '1000', '256', 0),
(5, 2, 'pont-scorff ENFANT', '', '31-12-2017', '7', '3', '10', '110000', '28', 0),
(6, 2, 'pont-scorff ADULTE', '', '31-12-2017', '11', '3.5', '14.5', '110000', '26', 0),
(7, 2, 'La recr&eacute; des 3 cur&eacute;s', '', '31-12-2017', '11', '3.5', '14.5', '110000', '30', 0),
(8, 2, 'Kingoland', '', '31-12-2017', '11', '1.27', '12.27', '110000', '11', 0),
(9, 2, 'Branf&eacute;r&eacute; ADULTE', '', '31-12-2017', '11.5', '5.5', '17', '110000', '8', 0),
(10, 2, 'Branf&eacute;r&eacute; ENFANT', '', '31/12/2017', '6', '4.5', '10.5', '110000', '50', 0),
(11, 2, 'Aquagolfe ticket ADULTE', '', '30-10-2016', '3.6', '1.55', '5.15', '99', '0', 0),
(12, 2, 'Aquagolfe ticket ENFANT', '', '16-04-2017', '3', '1.45', '4.45', '110000', '10', 0),
(13, 2, 'Aquagolfe ticket BALNEO+ACCES BASSIN', '', '23-10-2017', '6.00', '2.6', '8.6', '1000', '13', 0),
(14, 2, 'Aquagolfe ticket COURS D AQUAGYM', '', '23-10-2017', '6', '2.75', '8.75', '10000', '50', 0),
(15, 3, 'HUITRES  PANIER 50 CAL3', '', '31-12-2015', '23', '0', '23', '1000', '0', 0),
(16, 3, 'HUITRES  PANIER 100 CAL 3', '', '24-12-2015', '44', '0', '44', '1000', '0', 0);

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
(2, 3, 1, '26.5', 'bnp', 'barbeau', '18359', 0),
(4, 6, 1, '33', 'credit agricole', 'pecouyoul', '61331', 0),
(5, 7, 1, '22', 'banque populaire', 'iseni edita', '00004', 0),
(6, 8, 3, '22', '', 'morel franÃ§oise', '473596764', 0),
(7, 10, 1, '11', 'credit agricole', 'LE ROUZIC', '7080867', 0),
(8, 12, 1, '55', 'CAISSE D EPARGNE', 'PIECOURT', '3502067', 0),
(9, 13, 3, '55', '', '', '463195009', 0),
(10, 15, 1, '16.5', 'credit agricole', 'rouille ', '1406188', 0),
(11, 18, 1, '16.5', 'credit maritime', 'laine', '0761940', 0),
(12, 19, 3, '22', '', '', '542506070', 0),
(15, 16, 1, '55', 'CREDIT MUTUEL', 'MARTIN MARIE ANDREE', '1022658', 0),
(17, 26, 3, '16.5', '', '', '135892439', 0),
(18, 23, 1, '66', 'CREDIT MUTUEL', 'NAILI MENANA', '9474817', 0),
(19, 30, 1, '18', 'CREDIT MUTUEL', 'NAILI MENANA', '9474817', 0),
(20, 31, 3, '22', '', '', '110497423', 0),
(21, 11, 1, '22', 'CMB', 'LE BARRE', '29540', 0),
(22, 20, 3, '11', '', '', '856779889', 0),
(23, 32, 3, '19', '', '', '291023487', 0),
(25, 34, 1, '80.75', 'CREDIT MUTUEL', 'bihoreau', '1302422', 0),
(26, 35, 1, '11', 'banque postale', 'posseme', '155589025B', 0),
(28, 29, 1, '33', 'banque postale', 'OLIVIER', '133603033 A', 0),
(32, 38, 1, '23', 'CREDIT MUTUEL', 'FLEUREAU', '9725757', 0),
(33, 40, 1, '22', 'CREDIT AGRICOLE', 'DOURDAIN', '5955925', 0),
(34, 41, 1, '19', 'CREDIT AGRICOLE', 'DOURDAIN', '5955925', 0),
(35, 44, 1, '88', 'credit maritime', 'LE MAUFF', '0114246', 0),
(36, 46, 1, '23', 'credit maritime', 'LE MAUFF', '0114246', 0),
(37, 47, 3, '11', '', '', '577330551', 0),
(38, 48, 1, '23', 'CREDIT AGRICOLE', 'rolland', '0648971', 0),
(39, 49, 1, '22', 'CREDIT AGRICOLE', 'rolland', '0648972', 0),
(40, 50, 3, '22', '', 'LORIN Carmen', '887346840', 0),
(41, 51, 1, '55', 'CREDIT MUTUEL', 'LE BOHEC MURIELLE', '0893673', 0),
(42, 52, 1, '14.4', 'la banque postale', 'toto petelo', '155510039', 0),
(43, 53, 1, '11', 'CREDIT MUTUEL', 'GUEVEL SONIA', '0872938', 0),
(44, 25, 1, '16.5', 'bnp', 'BESSON ANOUK', '5354257', 0),
(45, 17, 3, '66.5', '', 'LERANDY GUY', '260239071', 0),
(46, 57, 3, '11', '', 'DENAY ISABELLE', '228392735', 0),
(47, 58, 1, '27.5', 'credit maritime', 'LAINE CAROLE', '0761944', 0),
(48, 59, 1, '47.5', 'LCL', 'PITTELIOEN LAETITIA', '8595786', 0),
(49, 60, 1, '16.5', 'LCL', 'PITTELIOEN LAETITIA', '8595786', 0),
(50, 61, 1, '44', 'CAISSE D EPARGNE', 'CADIC FREDERIC', '0000044', 0),
(51, 62, 1, '22', 'CREDIT AGRICOLE', 'DOURDAIN MARIE-LAURE', '5955928', 0),
(52, 63, 1, '27.5', 'CREDIT AGRICOLE', 'LE BLEVEC BEATRICE', '36411088', 0),
(54, 64, 1, '30', 'CREDIT AGRICOLE', 'LE BLEVEC BEATRICE', '3641088', 0),
(55, 65, 1, '44', 'CIC', 'ARCHAMBAULT DE MONFORT ISABELLE', '4143691', 0),
(56, 66, 1, '44', 'CREDIT MUTUEL', 'ORJUBIN MURIEL', '1028923', 0),
(57, 67, 1, '49.5', 'CREDIT MUTUEL', 'BENARD EVELYNE', '2585820', 0),
(58, 68, 1, '33', 'CREDIT AGRICOLE', 'GUICHON FABIENNE', '1840488', 0),
(59, 69, 1, '18', 'CREDIT AGRICOLE', 'GUICHON FABIENNE', '1840488', 0),
(60, 70, 1, '19', 'credit maritime', 'LAINE CAROLE', '0761946', 0),
(61, 71, 1, '19', 'CREDIT MUTUEL', 'ORJUBIN MURIEL', '10289824', 0),
(62, 72, 1, '28.5', 'la banque postale', 'OLIVIER JUDITH', '3603034', 0),
(63, 73, 1, '55', 'credit agricole', 'LE BRUN SYLVIANE', '1995667', 0),
(64, 74, 1, '22', 'la banque postale', 'EUCHER CLAUDE', '5556031', 0),
(65, 75, 1, '44', 'CREDIT AGRICOLE', 'LE PORT VIRGINIE', '3049058', 0),
(66, 76, 1, '27.5', 'CIC', 'BONNIN JOEL', '3864602', 0),
(67, 77, 1, '22', 'la banque postale', 'OLIVIER JUDITH', '5672028', 0),
(68, 14, 1, '33', 'banque populaire', 'VICENTE MARIA', '0751624', 0),
(69, 78, 1, '22', 'banque populaire', 'VICENTE MARIA', '0751624', 0),
(70, 79, 1, '22', 'credit agricole', 'LE BLEVEC BEATRICE', '3641092', 0),
(71, 80, 1, '22', 'credit agricole', 'LINO ANNIE', '5165884', 0),
(73, 81, 1, '16.5', 'CREDIT MUTUEL', 'LE GRUYERE YVONNICK', '01722032', 0),
(74, 82, 1, '33', 'CREDIT MUTUEL', 'PORTANGUEN JOEL', '9467252', 0),
(75, 83, 1, '14.25', 'CREDIT MUTUEL', 'PORTANGUEN JOEL', '9467252', 0),
(76, 84, 1, '33', 'CREDIT AGRICOLE', 'ROSOLI CINDY', '7339756', 0),
(77, 85, 3, '16.5', '', 'CADORET ARNAUD', '560890848', 0),
(78, 86, 3, '11', '', 'LE NEVE GUENHAEL', '665079512', 0),
(82, 90, 3, '11', '', 'DERRIEN SANDRINE', '397758141', 0),
(83, 91, 3, '22', '', 'GUILLEMOT BEATRICE', '170055906', 0),
(84, 93, 3, '22', '', 'EUCHER CLAUDE', '148738212', 0),
(85, 94, 3, '11', '', 'BEYOU SEVERINE', '714559651', 0),
(86, 95, 3, '11', '', 'TOTO SYLVIE', '956644265', 0),
(87, 96, 3, '55', '', 'GRECO JULIEN', '228211241', 0),
(88, 97, 3, '82.5', '', 'PORTANGUEN JOEL', '559000248', 0),
(89, 98, 3, '11', '', 'CADOUX LAURE', '400870245', 0),
(90, 99, 1, '27.5', '', 'COLAS JACKY', '', 0),
(91, 100, 1, '55', '', 'GUILLAS CHRISTINE', '', 0),
(92, 101, 1, '63', '', 'ARTERO EDDY', '', 0),
(93, 103, 1, '22', 'CREDIT AGRICOLE', 'JOSSIC CATHERINE', '3675846', 0),
(94, 102, 1, '44', '', 'MERKILED WILLIAM', '', 0),
(96, 105, 1, '7.2', '', 'DUBOIS RUDY', '', 0),
(97, 104, 1, '6', '', 'DUBOIS RUDY', '', 0),
(98, 106, 1, '55', '', 'LE VIAVANT RAISSA', '', 0),
(99, 107, 1, '16.5', '', 'DALIGAULT STEPHANE', '', 0),
(100, 108, 1, '22', '', 'GAULE MAXIME', '', 0),
(101, 109, 1, '22', '', 'DESIRE FABRICE', '', 0),
(102, 110, 1, '22', '', 'SHARRE STEPHANE', '', 0),
(103, 111, 3, '11', '', 'MARCILLE YVES', '537321913', 0),
(104, 113, 3, '11', '', 'MOREL FRANCOISE', '337599822', 0),
(105, 114, 3, '22', '', 'ISENI EDITA', '458512178', 0),
(106, 115, 1, '11', '', 'GUILLEMOT BEATRICE', '', 0),
(107, 116, 3, '11', '', 'CHRISTMANN NADIA', '932623426', 0),
(108, 117, 3, '22', '', 'PORTANGUEN JOEL', '765156716', 0),
(109, 118, 3, '5.5', '', 'ARTERO DAVID', '616881132', 0),
(110, 119, 3, '3', '', 'ARTERO DAVID', '350202419', 0),
(111, 120, 3, '7.2', '', 'ARTERO DAVID', '418628655', 0),
(112, 121, 3, '9', '', 'BEYOU SEVERINE', '873061002', 0),
(113, 122, 3, '7.2', '', 'BEYOU SEVERINE', '687397481', 0),
(114, 123, 3, '27.5', '', 'CADORET ARNAUD', '569086867', 0),
(115, 124, 3, '27.5', '', 'MARION ERIC', '692399755', 0),
(116, 125, 3, '22', '', 'LE PAPILLON MICKAEL', '985450182', 0),
(117, 126, 3, '22', '', 'BOURDIN JULIEN', '832187964', 0),
(118, 127, 1, '22', 'CREDIT AGRICOLE', 'GONDET LUISA', '6168', 0),
(119, 132, 3, '23.75', '', 'ARTERO DAVID', '130845317', 0),
(120, 133, 3, '3', '', 'ARTERO DAVID', '318456607', 0),
(121, 135, 3, '3.6', '', 'ARTERO DAVID', '128119321', 0),
(122, 139, 1, '16.5', 'caisse d epargne', 'MAUDET PASCALE', '0811240', 0),
(123, 140, 1, '6', 'caisse d epargne', 'MAUDET PASCALE', '0811240', 0),
(124, 142, 1, '19', 'CREDIT MUTUEL ', 'PORTANGUEN JOEL', '9467253', 0),
(125, 138, 3, '11', '', 'OLIVIER JUDITH', '848410978', 0),
(126, 143, 1, '11', 'caisse d epargne', 'MIMOUN LAILA', '0000223', 0),
(127, 144, 1, '11', 'CREDIT MUTUEL ', 'LE VIAVANT RAISSA', '7923031', 0),
(128, 145, 3, '22', '', 'LE GRUYERE YVONNICK', '386355065', 0);

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
(2, '3015366', 0, 'ABDEL-KAMEL', 'AHMED', '', '', '', '', '', '', '', '', '2013-01-21', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(3, '1200312', 0, 'ADOLPHE', 'EDDY', '', '', '', '', '', '', '', '', '2011-09-08', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(4, '3017842', 0, 'AELBRECHT', 'BENJAMIN', '', '', '', '', '', '', '', '', '2013-09-23', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(5, '1200002', 0, 'AHMED MADI', 'ISSA', '', '', '', '', '', '', '', '', '2011-06-06', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(6, '3021492', 0, 'AIME', 'MAGALI', '', '', '', '', '', '', '', '', '2014-11-03', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(7, '1200004', 0, 'ALLAIN', 'ANNIE', '', '', '', '', '', '', '', '', '2004-04-13', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(8, '1200005', 0, 'ANDRIEUX', 'THIERRY', '', '', '', '', '', '', '', '', '2005-02-01', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(9, '1200006', 0, 'ARCHAMBAULT DE MONFORT', 'ISABELLE', '', '', '', '', '', '', '', '', '2001-07-02', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(10, '1200007', 0, 'ARPINO', 'MATHIEU', '', '', '', '', '', '', '', '', '2002-12-19', '', '', 'ADMINISTRATIF', '', 'TECHNICIENS', '', 1, '159'),
(11, '1200009', 0, 'ARTERO', 'DAVID', '', '', '', '', '', '', '', '', '1997-04-01', '', '', 'PROD CONDUC CUISIN', '', 'TECHNICIENS', '', 1, '159'),
(12, '1200010', 0, 'ARTERO', 'EDDY', '', '', '', '', '', '', '', '', '2000-03-06', '', '', 'PROD PERSONNEL LIGNE', '', 'TECHNICIENS', '', 1, '159'),
(13, '1200012', 0, 'ATIA', 'JEAN-FREDDY', '', '', '', '', '', '', '', '', '2000-07-07', '', '', 'PROD CHEF D''EQUIPE', '', 'TECHNICIENS', '', 1, '159'),
(14, '1200013', 0, 'AUTRET', 'LAURENT', '', '', '', '', '', '', '', '', '2006-04-12', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(15, '3019880', 0, 'AYARD', 'DAMIEN', '', '', '', '', '', '', '', '', '2014-06-10', '', '', 'ORDO EXPEDITION', '', 'EMPLOYE', '', 1, '159'),
(16, '1200014', 0, 'BA', 'SANDRA', '', '', '', '', '', '', '', '', '2007-10-22', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(17, '3014868', 0, 'BAILLON', 'YANN', '', '', '', '', '', '', '', '', '2012-10-22', '', '', 'PROD CHEF D''EQUIPE', '', 'OUVRIER', '', 1, '159'),
(18, '3014339', 0, 'BARBEAU', 'NICOLAS', '', '', '', '', '', '', '', '', '2012-09-01', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(19, '1200016', 0, 'BASTIEN', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '2000-10-02', '', '', 'ORDO PLANNIFICATION', '', 'TECHNICIENS', '', 1, '159'),
(20, '4002394', 0, 'BAZILE', 'EMILIE', '', '', '', '', '', '', '', '', '2015-10-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(21, '1200017', 0, 'BAZIN', 'VALERIE', '', '', '', '', '', '', '', '', '1993-06-28', '', '', 'QUALITE LABORATOIRE', '', 'TECHNICIENS', '', 1, '159'),
(22, '1200018', 0, 'BEAUBOIS', 'AURELINE', '', '', '', '', '', '', '', '', '2009-01-05', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(23, '4001481', 0, 'BEDARD', 'CHANTAL', '', '', '', '', '', '', '', '', '2015-07-06', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(24, '4002241', 0, 'BEDARD', 'VALERIE', '', '', '', '', '', '', '', '', '2015-09-14', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(25, '4002239', 0, 'BELLABIOD', 'HAKIM', '', '', '', '', '', '', '', '', '2015-09-14', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(26, '1200021', 0, 'BEN ABOU', 'IKHLAS', '', '', '', '', '', '', '', '', '2011-02-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(27, '3021937', 0, 'BEN HAMOUDA', 'MOHAMED', '', '', '', '', '', '', '', '', '2015-01-19', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(28, '1200022', 0, 'BENARD', 'EVELYNE', '', '', '', '', '', '', '', '', '1999-02-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(29, '1200023', 0, 'BENOIT', 'ANNIE', '', '', '', '', '', '', '', '', '1993-03-08', '', '', 'PROD ENCADREMENT', '', 'AGENT DE MAITRISE', '', 1, '159'),
(30, '4000664', 0, 'BENOIT', 'AURELIA', '', '', '', '', '', '', '', '', '2015-04-20', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(31, '1200025', 0, 'BERTHO', 'VALERIE-ANNE', '', '', '', '', '', '', '', '', '2005-05-16', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(32, '1200026', 0, 'BERTHOLOM', 'PHILIPPE', '', '', '', '', '', '', '', '', '1997-04-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(33, '3022260', 0, 'BESCHE', 'CECILE', '', '', '', '', '', '', '', '', '2015-03-09', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(34, '1200310', 0, 'BESSON', 'ANOUK', '', '', '', '', '', '', '', '', '2011-09-01', '', '', 'DEVPT INDUSTRIE', '', 'AGENT DE MAITRISE', '', 1, '159'),
(35, '4001064', 0, 'BEYOU', 'SEVERINE', '', '', '', '', '', '', '', '', '2015-06-08', '', '', 'ADMINISTRATIF', '', 'TECHNICIENS', '', 1, '159'),
(36, '3021936', 0, 'BIHOREAU', 'FREDERIQUE', '', '', '', '', '', '', '', '', '2015-01-19', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(37, '3014165', 0, 'BIZEC', 'ELYANE', '', '', '', '', '', '', '', '', '2012-08-06', '', '', 'SECURITE ENVIRT', '', 'TECHNICIENS', '', 1, '159'),
(38, '3015703', 0, 'BONNIN', 'JOEL', '', '', '', '', '', '', '', '', '2013-03-11', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(39, '1200033', 0, 'BOUDEAU', 'LAURE', '', '', '', '', '', '', '', '', '2000-03-06', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(40, '3012139', 0, 'BOUILLY', 'FRANCOIS', '', '', '', '', '', '', '', '', '2014-09-01', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(41, '1200037', 0, 'BOUQUET', 'GUENOLE', '', '', '', '', '', '', '', '', '2006-10-02', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(42, '3012922', 0, 'BOURDAUD', 'KAELIG', '', '', '', '', '', '', '', '', '2012-05-09', '', '', 'Commercial', '', 'AGENT DE MAITRISE', '', 1, '159'),
(43, '3022319', 0, 'BOURDIN', 'JULIEN', '', '', '', '', '', '', '', '', '2015-03-16', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(44, '3022263', 0, 'BOURSICOT', 'ANOUCHKA', '', '', '', '', '', '', '', '', '2015-03-09', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(45, '3013489', 0, 'BREGER', 'LAURENT', '', '', '', '', '', '', '', '', '2015-03-02', '', '', 'PROD ENCADREMENT', '', 'AGENT DE MAITRISE', '', 1, '159'),
(46, '4002387', 0, 'BRETON', 'FLORIAN', '', '', '', '', '', '', '', '', '2015-10-01', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(47, '1200042', 0, 'BRICHAUX', 'DANIEL', '', '', '', '', '', '', '', '', '2001-04-17', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(48, '1200043', 0, 'BUAN', 'ARNAUD', '', '', '', '', '', '', '', '', '2008-11-01', '', '', 'SECURITE ENVIRT', '', 'AGENT DE MAITRISE', '', 1, '159'),
(49, '4002397', 0, 'BUONARROTI', 'SEBASTIEN', '', '', '', '', '', '', '', '', '2015-10-01', '', '', 'MAINTENANCE', '', 'EMPLOYE', '', 1, '159'),
(50, '1200044', 0, 'BURBAN', 'GUY', '', '', '', '', '', '', '', '', '2003-01-13', '', '', 'PROD ENCADREMENT', '', 'TECHNICIENS', '', 1, '159'),
(51, '3019928', 0, 'CADIC', 'FREDERIC', '', '', '', '', '', '', '', '', '2014-06-16', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(52, '1200046', 0, 'CADO', 'JEROME', '', '', '', '', '', '', '', '', '1999-07-19', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(53, '1200047', 0, 'CADORET', 'ARNAUD', '', '', '', '', '', '', '', '', '1998-12-01', '', '', 'MAINTENANCE', '', 'CADRE', '', 1, '159'),
(54, '3018957', 0, 'CADOUX', 'LAURE', '', '', '', '', '', '', '', '', '2014-03-03', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(55, '1200048', 0, 'CARRE', 'CHRISTELLE', '', '', '', '', '', '', '', '', '2002-06-03', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(56, '1200051', 0, 'CHARRETTE', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '2010-05-10', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(57, '3020004', 0, 'CHOISY', 'JEAN-BAPTISTE', '', '', '', '', '', '', '', '', '2014-06-23', '', '', 'PROD PERSONNEL LIGNE', '', 'TECHNICIENS', '', 1, '159'),
(58, '1200053', 0, 'CHRISTMANN', 'NADIA', '', '', '', '', '', '', '', '', '1999-06-01', '', '', 'ORDO PLANNIFICATION', '', 'TECHNICIENS', '', 1, '159'),
(59, '1200056', 0, 'COLAS', 'JACKY', '', '', '', '', '', '', '', '', '1993-03-01', '', '', 'ACHAT PACKAGING', '', 'CADRE', '', 1, '159'),
(60, '4002438', 0, 'COQUIN', 'JOHAN', '', '', '', '', '', '', '', '', '2015-10-05', '', '', 'PROD PERSONNEL LIGNE', '', 'EMPLOYE', '', 1, '159'),
(61, '3015435', 0, 'COTENTIN', 'ISABELLE', '', '', '', '', '', '', '', '', '2013-02-04', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(62, '1200057', 0, 'COTO', 'CAMILLE', '', '', '', '', '', '', '', '', '1994-07-04', '', '', 'DEVPT INDUSTRIE', '', 'OUVRIER', '', 1, '159'),
(63, '3011194', 0, 'COULIOU', 'MARTIN', '', '', '', '', '', '', '', '', '2011-10-17', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(64, '1200058', 0, 'COYAC', 'REGINE', '', '', '', '', '', '', '', '', '2000-05-09', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(65, '1200060', 0, 'CROCHET', 'YANNICK', '', '', '', '', '', '', '', '', '2000-01-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(66, '1200065', 0, 'DALIGAULT', 'STEPHANE', '', '', '', '', '', '', '', '', '1999-01-04', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(67, '1200067', 0, 'DANIEL', 'FRANCOISE', '', '', '', '', '', '', '', '', '2006-04-12', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(68, '3010811', 0, 'DANIEL', 'ARNAUD', '', '', '', '', '', '', '', '', '2011-09-12', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(69, '4001320', 0, 'DANIEL', 'ERWAN', '', '', '', '', '', '', '', '', '2015-07-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(70, '1200068', 0, 'DANION', 'NATHALIE', '', '', '', '', '', '', '', '', '2010-08-02', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(71, '1200070', 0, 'DE SOUSA SOARES', 'FILIPA', '', '', '', '', '', '', '', '', '2008-06-02', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(72, '4001322', 0, 'DELATTRE', 'ALEXANDRE', '', '', '', '', '', '', '', '', '2015-07-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(73, '4002431', 0, 'DELVAL', 'TIPHANIE', '', '', '', '', '', '', '', '', '2015-10-05', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(74, '3021932', 0, 'DENAY', 'ISABELLE', '', '', '', '', '', '', '', '', '2015-01-19', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(75, '1200073', 0, 'DERRIEN', 'SANDRINE', '', '', '', '', '', '', '', '', '1996-04-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(76, '1200075', 0, 'DESIRE', 'FABRICE', '', '', '', '', '', '', '', '', '2005-04-04', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(77, '3018959', 0, 'DHAOUI', 'HAZEM', '', '', '', '', '', '', '', '', '2014-03-03', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(78, '3021657', 0, 'DJEDAI', 'PIERRE-YVES', '', '', '', '', '', '', '', '', '2014-12-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(79, '4002103', 0, 'DODARD', 'CLOTILDE', '', '', '', '', '', '', '', '', '2015-09-01', '', '', 'DEVPT INDUSTRIE', '', 'EMPLOYE', '', 1, '159'),
(80, '1200077', 0, 'DOURDAIN', 'MARIE-LAURE', '', '', '', '', '', '', '', '', '2003-11-17', '', '', 'QUALITE LABORATOIRE', '', 'TECHNICIENS', '', 1, '159'),
(81, '1200078', 0, 'DOUSSET', 'NICOLE', '', '', '', '', '', '', '', '', '2001-02-12', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(82, '4000510', 0, 'DUBOIS', 'RUDY', '', '', '', '', '', '', '', '', '2015-04-13', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(83, '3015811', 0, 'DUPONT', 'CLOTILDE', '', '', '', '', '', '', '', '', '2014-04-14', '', '', 'Commercial', '', 'AGENT DE MAITRISE', '', 1, '159'),
(84, '1200080', 0, 'DUTRANNOY', 'EVELYNE', '', '', '', '', '', '', '', '', '2003-04-14', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(85, '3011775', 0, 'EMERAUD', 'SANDRINE', '', '', '', '', '', '', '', '', '2012-01-02', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(86, '4002026', 0, 'ESCOLA', 'MAEVA', '', '', '', '', '', '', '', '', '2015-08-17', '', '', 'QUALITE ASSURANCE', '', 'EMPLOYE', '', 1, '159'),
(87, '1200083', 0, 'EUCHER', 'CLAUDE', '', '', '', '', '', '', '', '', '1993-03-01', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(88, '1200084', 0, 'EVIN', 'CORINNE', '', '', '', '', '', '', '', '', '2006-06-12', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(89, '1200085', 0, 'FABLET', 'CATHERINE', '', '', '', '', '', '', '', '', '2004-04-19', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(90, '4002419', 0, 'FADHUILI', 'ZOUHOURYA', '', '', '', '', '', '', '', '', '2015-10-05', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(91, '1200211', 0, 'FAVEL', 'FRANCINE', '', '', '', '', '', '', '', '', '1993-04-23', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(92, '1200062', 0, 'FERNANDES RODRIGUES DASILVA', 'ALVARO', '', '', '', '', '', '', '', '', '1996-06-03', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(93, '3008805', 0, 'FLAUX', 'GWENN', '', '', '', '', '', '', '', '', '2013-01-01', '', '', 'Commercial', '', 'CADRE', '', 1, '159'),
(94, '1200221', 0, 'FLEUREAU', 'HELENE', '', '', '', '', '', '', '', '', '2008-06-02', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(95, '1200089', 0, 'FOFANA', 'OUSMANE', '', '', '', '', '', '', '', '', '2011-06-06', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(96, '1200091', 0, 'FREOUR', 'MARTINE', '', '', '', '', '', '', '', '', '2004-06-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(97, '1200095', 0, 'GALUDEC', 'JANICK', '', '', '', '', '', '', '', '', '1999-10-04', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(98, '4002651', 0, 'GASNOT', 'SUZIE', '', '', '', '', '', '', '', '', '2015-04-26', '', '', 'Commercial', '', 'EMPLOYE', '', 1, '159'),
(99, '1200096', 0, 'GAULE', 'MAXIME', '', '', '', '', '', '', '', '', '2011-05-01', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(100, '1200045', 0, 'GENTIL', 'NATHALIE', '', '', '', '', '', '', '', '', '2004-02-16', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(101, '3021908', 0, 'GERMAIN', 'JEROME', '', '', '', '', '', '', '', '', '2015-01-12', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(102, '1200101', 0, 'GILBERT', 'JACQUELINE', '', '', '', '', '', '', '', '', '2001-07-02', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(103, '4002521', 0, 'GILLE', 'ROMAIN', '', '', '', '', '', '', '', '', '2015-10-12', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(104, '1200102', 0, 'GIRODET', 'PATRICK', '', '', '', '', '', '', '', '', '2004-06-01', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(105, '3021714', 0, 'GONCALVES', 'ELODIE', '', '', '', '', '', '', '', '', '2014-12-08', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(106, '1200104', 0, 'GONDET', 'LUISA', '', '', '', '', '', '', '', '', '1999-10-04', '', '', 'PROD ENCADREMENT', '', 'OUVRIER', '', 1, '159'),
(107, '4002519', 0, 'GRECO', 'JULIEN', '', '', '', '', '', '', '', '', '2015-10-12', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(108, '4002420', 0, 'GRIE', 'MARTINE', '', '', '', '', '', '', '', '', '2015-10-05', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(109, '3020750', 0, 'GRIESS', 'STANISLAS', '', '', '', '', '', '', '', '', '2014-08-01', '', '', 'Commercial', '', 'AGENT DE MAITRISE', '', 1, '159'),
(110, '1200107', 0, 'GUE', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '2000-07-21', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(111, '1200236', 0, 'GUEGAN', 'FABIENNE', '', '', '', '', '', '', '', '', '2004-05-10', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(112, '1200300', 0, 'GUEGUEN', 'KARINE', '', '', '', '', '', '', '', '', '2004-07-05', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(113, '3016563', 0, 'GUEGUEN', 'SANDRINE', '', '', '', '', '', '', '', '', '2013-06-10', '', '', 'Commercial', '', 'CADRE', '', 1, '159'),
(114, '1200108', 0, 'GUEVEL', 'ANNE', '', '', '', '', '', '', '', '', '2004-08-23', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(115, '1200109', 0, 'GUEVEL', 'SONIA', '', '', '', '', '', '', '', '', '2010-05-17', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(116, '1200110', 0, 'GUICHON', 'ODILE', '', '', '', '', '', '', '', '', '2004-11-22', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(117, '3021275', 0, 'GUICHON', 'FABIENNE', '', '', '', '', '', '', '', '', '2014-10-13', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(118, '1200111', 0, 'GUIGNARD', 'NADINE', '', '', '', '', '', '', '', '', '1999-10-04', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(119, '3012939', 0, 'GUIGNON', 'HELENE', '', '', '', '', '', '', '', '', '2012-05-14', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(120, '1200112', 0, 'GUILLAS', 'CHRISTINE', '', '', '', '', '', '', '', '', '2002-06-03', '', '', 'PROD PERSONNEL LIGNE', '', 'TECHNICIENS', '', 1, '159'),
(121, '1200114', 0, 'GUILLEMOT', 'BEATRICE', '', '', '', '', '', '', '', '', '2000-02-21', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(122, '1200115', 0, 'GUILLERME', 'DOMINIQUE', '', '', '', '', '', '', '', '', '1996-06-03', '', '', 'ORDO EXPEDITION', '', 'TECHNICIENS', '', 1, '159'),
(123, '1200116', 0, 'GUILLERME', 'MARIE-LINE', '', '', '', '', '', '', '', '', '2000-02-21', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(124, '1200117', 0, 'GUILLET', 'THIERRY', '', '', '', '', '', '', '', '', '2001-01-08', '', '', 'ORDO PLANNIFICATION', '', 'TECHNICIENS', '', 1, '159'),
(125, '1200118', 0, 'GUILLOTIN', 'ROLAND', '', '', '', '', '', '', '', '', '1999-07-07', '', '', 'PROD PERSONNEL LIGNE', '', 'TECHNICIENS', '', 1, '159'),
(126, '1200119', 0, 'GUYADER', 'MARIE-PIERRE', '', '', '', '', '', '', '', '', '2006-04-12', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(127, '1200121', 0, 'HAUROGNE', 'SYLVIE', '', '', '', '', '', '', '', '', '2006-06-12', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(128, '3021554', 0, 'HEMERY', 'JOELLE', '', '', '', '', '', '', '', '', '2014-11-13', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(129, '1200122', 0, 'HEMON', 'NOLWENN', '', '', '', '', '', '', '', '', '2008-05-19', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(130, '1200124', 0, 'HERVY', 'CHRISTINE', '', '', '', '', '', '', '', '', '2005-05-16', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(131, '1200125', 0, 'HOMAND', 'LOUIS', '', '', '', '', '', '', '', '', '2000-02-21', '', '', 'PROD CONDUC CUISIN', '', 'TECHNICIENS', '', 1, '159'),
(132, '4002391', 0, 'HOUDART', 'CHARLY', '', '', '', '', '', '', '', '', '2015-10-01', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(133, '3012932', 0, 'HUGONET', 'FABRICE', '', '', '', '', '', '', '', '', '2012-05-14', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(134, '3004410', 0, 'HURON', 'NICOLAS', '', '', '', '', '', '', '', '', '2013-02-01', '', '', 'DIRECTION', '', 'CADRE', '', 1, '159'),
(135, '3022069', 0, 'ISENI', 'EDITA', '', '', '', '', '', '', '', '', '2015-02-09', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(136, '1200127', 0, 'JAFFRE', 'ISABELLE', '', '', '', '', '', '', '', '', '1993-03-08', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(137, '3021716', 0, 'JEAN-BAPTISTE', 'DAMIEN', '', '', '', '', '', '', '', '', '2014-12-08', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(138, '3022004', 0, 'JMEL', 'NOUREDDINE', '', '', '', '', '', '', '', '', '2015-02-02', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(139, '3015433', 0, 'JOANNIC', 'RIWAN', '', '', '', '', '', '', '', '', '2013-02-04', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(140, '1200133', 0, 'JOSSIC', 'CATHERINE', '', '', '', '', '', '', '', '', '1996-06-03', '', '', 'ADMINISTRATIF', '', 'TECHNICIENS', '', 1, '159'),
(141, '1200136', 0, 'JOUNIER', 'VALERIE', '', '', '', '', '', '', '', '', '1993-08-09', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(142, '3017339', 0, 'KAISSANI', 'MOHAMED', '', '', '', '', '', '', '', '', '2013-07-22', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(143, '1200137', 0, 'KERGOZIEN', 'LOIC', '', '', '', '', '', '', '', '', '1993-03-01', '', '', 'ORDO EXPEDITION', '', 'AGENT DE MAITRISE', '', 1, '159'),
(144, '3021613', 0, 'KOCYIGIT', 'RAMAZAN', '', '', '', '', '', '', '', '', '2014-11-24', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(145, '1200138', 0, 'KOVALICECK', 'SHEILA', '', '', '', '', '', '', '', '', '1993-04-23', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(146, '1200139', 0, 'L''AFFEACH', 'SYLVAIN', '', '', '', '', '', '', '', '', '1999-07-07', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(147, '1200024', 0, 'LAIGO', 'CHRISTELLE', '', '', '', '', '', '', '', '', '2008-10-13', '', '', 'PROD PERSONNEL LIGNE', '', 'TECHNICIENS', '', 1, '159'),
(148, '3011774', 0, 'LAINE', 'CAROLE', '', '', '', '', '', '', '', '', '2012-01-02', '', '', 'QUALITE LABORATOIRE', '', 'TECHNICIENS', '', 1, '159'),
(149, '3018418', 0, 'LAMBERT', 'CELINE', '', '', '', '', '', '', '', '', '2013-12-02', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(150, '1200140', 0, 'LAME', 'PASCALE', '', '', '', '', '', '', '', '', '2009-06-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(151, '1200142', 0, 'LANCHEC', 'STEPHANIE', '', '', '', '', '', '', '', '', '1999-10-04', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(152, '1200141', 0, 'LANGLO', 'MELINDA', '', '', '', '', '', '', '', '', '1999-03-01', '', '', 'QUALITE LABORATOIRE', '', 'AGENT DE MAITRISE', '', 1, '159'),
(153, '1200144', 0, 'LASQUELLEC', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '2004-09-06', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(154, '1200145', 0, 'LATINIER', 'NATHALIE', '', '', '', '', '', '', '', '', '2000-06-13', '', '', 'ORDO PLANNIFICATION', '', 'TECHNICIENS', '', 1, '159'),
(155, '2555052', 0, 'LE BADEZET', 'JEAN FRANCOIS', '', '', '', '', '', '', '', '', '2014-03-03', '', '', 'PROD CHEF D''EQUIPE', '', 'TECHNICIENS', '', 1, '159'),
(156, '1200146', 0, 'LE BARRE', 'MYRIAM', '', '', '', '', '', '', '', '', '2000-10-23', '', '', 'ADMINISTRATIF', '', 'TECHNICIENS', '', 1, '159'),
(157, '1200147', 0, 'LE BIHAN', 'ROZANNE', '', '', '', '', '', '', '', '', '2006-04-12', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(158, '3021930', 0, 'LE BIHAN', 'ESTELLE', '', '', '', '', '', '', '', '', '2015-01-19', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(159, '1200148', 0, 'LE BLEVEC', 'BEATRICE', '', '', '', '', '', '', '', '', '1993-10-04', '', '', 'ADMINISTRATIF', '', 'TECHNICIENS', '', 1, '159'),
(160, '1200149', 0, 'LE BOHEC', 'MURIELLE', '', '', '', '', '', '', '', '', '1996-05-28', '', '', 'QUALITE LABORATOIRE', '', 'TECHNICIENS', '', 1, '159'),
(161, '1200153', 0, 'LE BRETON', 'BRIGITTE', '', '', '', '', '', '', '', '', '1999-05-25', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(162, '3012040', 0, 'LE BROCH', 'KARINE', '', '', '', '', '', '', '', '', '2012-02-07', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(163, '1200154', 0, 'LE BRUN', 'SYLVIANE', '', '', '', '', '', '', '', '', '1994-06-27', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(164, '3011191', 0, 'LE BRUN', 'CYRILLE', '', '', '', '', '', '', '', '', '2011-10-17', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(165, '3014658', 0, 'LE BRUN', 'VINCENT', '', '', '', '', '', '', '', '', '2012-10-01', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(166, '1200156', 0, 'LE CLAINCHE', 'JACQUELINE', '', '', '', '', '', '', '', '', '2000-05-09', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(167, '4002242', 0, 'LE COAT', 'MICHEL', '', '', '', '', '', '', '', '', '2015-09-21', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(168, '1200160', 0, 'LE COURTOIS', 'ANA', '', '', '', '', '', '', '', '', '2006-06-12', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(169, '3017889', 0, 'LE COZ', 'LAURA', '', '', '', '', '', '', '', '', '2013-09-30', '', '', 'DEVPT INDUSTRIE', '', 'EMPLOYE', '', 1, '159'),
(170, '1200163', 0, 'LE FLOCH', 'DIDIER', '', '', '', '', '', '', '', '', '2007-03-05', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(171, '3013521', 0, 'LE GAL', 'QUENTIN', '', '', '', '', '', '', '', '', '2014-10-16', '', '', 'ORDO PLANNIFICATION', '', 'EMPLOYE', '', 1, '159'),
(172, '3021744', 0, 'LE GAL', 'JEAN LOUIS', '', '', '', '', '', '', '', '', '2014-12-11', '', '', 'PROD ENCADREMENT', '', 'AGENT DE MAITRISE', '', 1, '159'),
(173, '1200166', 0, 'LE GARNEC', 'ERIC', '', '', '', '', '', '', '', '', '1993-04-22', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(174, '1200168', 0, 'LE GODEC', 'ISABELLE', '', '', '', '', '', '', '', '', '2000-05-09', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(175, '1200169', 0, 'LE GOFF', 'YANN', '', '', '', '', '', '', '', '', '2010-09-01', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(176, '3020042', 0, 'LE GRAND', 'BEATRICE', '', '', '', '', '', '', '', '', '2014-06-23', '', '', 'Commercial', '', 'EMPLOYE', '', 1, '159'),
(177, '1200171', 0, 'LE GRUYERE', 'YVONNICK', '', '', '', '', '', '', '', '', '2001-03-05', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(178, '1200172', 0, 'LE HEC', 'LALAO', '', '', '', '', '', '', '', '', '2011-05-16', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(179, '1200173', 0, 'LE HUR', 'MICHEL', '', '', '', '', '', '', '', '', '2002-03-04', '', '', 'MAINTENANCE', '', 'AGENT DE MAITRISE', '', 1, '159'),
(180, '1200175', 0, 'LE MANCHEC', 'GILDAS', '', '', '', '', '', '', '', '', '2000-12-26', '', '', 'MAINTENANCE', '', 'AGENT DE MAITRISE', '', 1, '159'),
(181, '3011052', 0, 'LE MANOUR', 'MARYLISE', '', '', '', '', '', '', '', '', '2011-10-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(182, '4000506', 0, 'LE MAUFF', 'ISABELLE', '', '', '', '', '', '', '', '', '2015-04-13', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(183, '1200176', 0, 'LE MENACH', 'CLAUDINE', '', '', '', '', '', '', '', '', '2006-09-11', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(184, '1200177', 0, 'LE MEUR', 'HERVE', '', '', '', '', '', '', '', '', '1998-10-12', '', '', 'ADMINISTRATIF', '', 'AGENT DE MAITRISE', '', 1, '159'),
(185, '1200178', 0, 'LE MOLLER', 'MARIE-LAURE', '', '', '', '', '', '', '', '', '2000-05-09', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(186, '1200179', 0, 'LE NEVE', 'GUENHAEL', '', '', '', '', '', '', '', '', '1993-04-26', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(187, '1200180', 0, 'LE NEVEZ', 'LAURENT', '', '', '', '', '', '', '', '', '1998-01-06', '', '', 'PROD ENCADREMENT', '', 'AGENT DE MAITRISE', '', 1, '159'),
(188, '1200181', 0, 'LE NORMAND', 'MARIE-CHRISTINE', '', '', '', '', '', '', '', '', '2000-02-21', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(189, '1200182', 0, 'LE PAJOLEC', 'EVELYNE', '', '', '', '', '', '', '', '', '2011-05-16', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(190, '1200183', 0, 'LE PAPILLON', 'MICKAEL', '', '', '', '', '', '', '', '', '1995-10-09', '', '', 'PROD NETTOYAGE', '', 'TECHNICIENS', '', 1, '159'),
(191, '1200184', 0, 'LE PAVEC', 'VALERIE', '', '', '', '', '', '', '', '', '1998-01-06', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(192, '1200185', 0, 'LE PORT', 'VIRGINIE', '', '', '', '', '', '', '', '', '2000-02-21', '', '', 'PROD CHEF D''EQUIPE', '', 'TECHNICIENS', '', 1, '159'),
(193, '3018683', 0, 'LE ROUX', 'PATRICK', '', '', '', '', '', '', '', '', '2014-01-13', '', '', 'MAINTENANCE', '', 'CADRE', '', 1, '159'),
(194, '1200189', 0, 'LE SAUZE', 'MANUELLA', '', '', '', '', '', '', '', '', '2006-04-12', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(195, '1200275', 0, 'LE TUTOUR', 'VERONIQUE', '', '', '', '', '', '', '', '', '2006-04-12', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(196, '1200190', 0, 'LE VIAVANT', 'CELINE', '', '', '', '', '', '', '', '', '2010-03-08', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(197, '1200191', 0, 'LE VIAVANT', 'RAISSA', '', '', '', '', '', '', '', '', '2000-02-21', '', '', 'PROD ENCADREMENT', '', 'AGENT DE MAITRISE', '', 1, '159'),
(198, '1200192', 0, 'LE VRAUX', 'CECILE', '', '', '', '', '', '', '', '', '2005-09-26', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(199, '4002388', 0, 'LE YONDRE', 'CYRILLE', '', '', '', '', '', '', '', '', '2015-10-01', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(200, '1200193', 0, 'LEBLANC', 'MORWENA', '', '', '', '', '', '', '', '', '2010-05-17', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(201, '1200152', 0, 'LEBRAS-CUISSARD', 'BRUNO', '', '', '', '', '', '', '', '', '2010-05-10', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(202, '4001479', 0, 'LECADIEU', 'CAROLE', '', '', '', '', '', '', '', '', '2015-07-06', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(203, '3012360', 0, 'LECHEVESTRIER', 'LOIC', '', '', '', '', '', '', '', '', '2012-03-12', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(204, '4001941', 0, 'LEMOINE', 'JEANNE', '', '', '', '', '', '', '', '', '2015-09-01', '', '', 'DEVPT INDUSTRIE', '', 'EMPLOYE', '', 1, '159'),
(205, '3021658', 0, 'LEOCADIE', 'PASCAL', '', '', '', '', '', '', '', '', '2014-12-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(206, '1200197', 0, 'LERANDY', 'GUY', '', '', '', '', '', '', '', '', '2010-05-10', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(207, '1200198', 0, 'LEROUZIC', 'FANNY', '', '', '', '', '', '', '', '', '2006-07-03', '', '', 'ORDO PLANNIFICATION', '', 'TECHNICIENS', '', 1, '159'),
(208, '4002406', 0, 'LEROY', 'ALEXANDRE', '', '', '', '', '', '', '', '', '2015-10-01', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(209, '1200201', 0, 'LINO', 'ANNIE', '', '', '', '', '', '', '', '', '1999-06-07', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(210, '1200202', 0, 'LOHEAS', 'ANTHONY', '', '', '', '', '', '', '', '', '1999-06-28', '', '', 'ADMINISTRATIF', '', 'AGENT DE MAITRISE', '', 1, '159'),
(211, '1200203', 0, 'LORET', 'STEPHANE', '', '', '', '', '', '', '', '', '1993-11-02', '', '', 'MAINTENANCE', '', 'CADRE', '', 1, '159'),
(212, '3021009', 0, 'LORIN', 'CARMEN', '', '', '', '', '', '', '', '', '2014-09-15', '', '', 'PROD CHEF D''EQUIPE', '', 'OUVRIER', '', 1, '159'),
(213, '1200205', 0, 'LOUPIAC', 'VALERIE', '', '', '', '', '', '', '', '', '2007-10-22', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(214, '3021667', 0, 'LYVET', 'VIRGINIE', '', '', '', '', '', '', '', '', '2014-12-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(215, '1200208', 0, 'MAHE', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '2000-05-09', '', '', 'PROD CHEF D''EQUIPE', '', 'AGENT DE MAITRISE', '', 1, '159'),
(216, '3020220', 0, 'MAILIER', 'SEBASTIEN', '', '', '', '', '', '', '', '', '2014-06-30', '', '', 'ORDO EXPEDITION', '', 'TECHNICIENS', '', 1, '159'),
(217, '3021934', 0, 'MALEMANCHE', 'KATHY', '', '', '', '', '', '', '', '', '2015-01-19', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(218, '4002523', 0, 'MARCHAL', 'VERONIQUE', '', '', '', '', '', '', '', '', '2015-10-12', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(219, '1200215', 0, 'MARCILLE', 'YVES', '', '', '', '', '', '', '', '', '1993-03-01', '', '', 'DEVPT INDUSTRIE', '', 'AGENT DE MAITRISE', '', 1, '159'),
(220, '1200216', 0, 'MARION', 'ERIC', '', '', '', '', '', '', '', '', '2000-10-02', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(221, '1200167', 0, 'MARTIN', 'MARIE-ANDREE', '', '', '', '', '', '', '', '', '1993-03-08', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(222, '4002418', 0, 'MARTINEZ', 'HOLISOA', '', '', '', '', '', '', '', '', '2015-10-05', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(223, '1200217', 0, 'MASSARD', 'EMMANUEL', '', '', '', '', '', '', '', '', '2011-01-01', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(224, '1200218', 0, 'MAUDET', 'PASCALE', '', '', '', '', '', '', '', '', '1994-06-06', '', '', 'QUALITE ASSURANCE', '', 'CADRE', '', 1, '159'),
(225, '0011280', 0, 'MENGUY', 'ROZENN', '', '', '', '', '', '', '', '', '2014-09-08', '', '', 'Commercial', '', 'EMPLOYE', '', 1, '159'),
(226, '1200223', 0, 'MERIAN', 'DIDIER', '', '', '', '', '', '', '', '', '2009-10-19', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(227, '1200224', 0, 'MERKILED', 'WILLIAM', '', '', '', '', '', '', '', '', '1998-01-06', '', '', 'ORDO EXPEDITION', '', 'TECHNICIENS', '', 1, '159'),
(228, '4001440', 0, 'MICHEL', 'FRANCOIS ERIC', '', '', '', '', '', '', '', '', '2015-07-02', '', '', 'MAINTENANCE', '', 'AGENT DE MAITRISE', '', 1, '159'),
(229, '1200227', 0, 'MIMOUN', 'LAILA', '', '', '', '', '', '', '', '', '2004-02-16', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(230, '3021233', 0, 'MOHAMED', 'RAFIOU', '', '', '', '', '', '', '', '', '2014-10-06', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(231, '1200228', 0, 'MOLINIER', 'ARMELLE', '', '', '', '', '', '', '', '', '2005-07-11', '', '', 'ADMINISTRATIF', '', 'CADRE', '', 1, '159'),
(232, '1200229', 0, 'MONIER', 'CATHERINE', '', '', '', '', '', '', '', '', '1997-04-07', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(233, '1200231', 0, 'MOREL', 'FRANCOISE', '', '', '', '', '', '', '', '', '1996-04-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(234, '1200232', 0, 'MORICE', 'MARIE-MADELEINE', '', '', '', '', '', '', '', '', '2001-10-08', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(235, '1200233', 0, 'MORIN', 'LAURENT', '', '', '', '', '', '', '', '', '1993-03-08', '', '', 'PROD SCE GENERAUX', '', 'OUVRIER', '', 1, '159'),
(236, '1200234', 0, 'MORIO', 'DAVID', '', '', '', '', '', '', '', '', '2005-06-06', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(237, '1200235', 0, 'MUSEUX', 'BRUNO', '', '', '', '', '', '', '', '', '2010-05-17', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(238, '3011587', 0, 'MUSTIERE', 'FABRICE', '', '', '', '', '', '', '', '', '2011-12-01', '', '', 'MAINTENANCE', '', 'TECHNICIENS', '', 1, '159'),
(239, '1200237', 0, 'NAILI', 'MENANA', '', '', '', '', '', '', '', '', '2008-06-23', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(240, '1200238', 0, 'NAPOLITANO', 'MARINA', '', '', '', '', '', '', '', '', '2004-04-05', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(241, '3018958', 0, 'NAVEOS', 'KATIA', '', '', '', '', '', '', '', '', '2014-03-03', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(242, '3014803', 0, 'NDI ESSOMBA', 'BENJAMIN', '', '', '', '', '', '', '', '', '2012-10-15', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(243, '1200240', 0, 'NIO', 'JOSETTE', '', '', '', '', '', '', '', '', '2000-05-09', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(244, '1200241', 0, 'NIOL', 'GUENHAEL', '', '', '', '', '', '', '', '', '2006-09-18', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(245, '1200242', 0, 'NOBLANC', 'CHRISTELLE', '', '', '', '', '', '', '', '', '2008-06-02', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(246, '1200244', 0, 'OILLIC', 'LAURENT', '', '', '', '', '', '', '', '', '2001-06-11', '', '', 'PROD CHEF D''EQUIPE', '', 'OUVRIER', '', 1, '159'),
(247, '1200245', 0, 'OLIVIER', 'JUDITH', '', '', '', '', '', '', '', '', '2009-06-02', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(248, '1200246', 0, 'OLIVIERO', 'PATRICIA', '', '', '', '', '', '', '', '', '2004-04-05', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(249, '1200247', 0, 'ORJUBIN', 'MURIEL', '', '', '', '', '', '', '', '', '1999-01-05', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(250, '4001993', 0, 'PAJOLEC-BOURSIN', 'ANNAIK', '', '', '', '', '', '', '', '', '2015-08-10', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(251, '1200253', 0, 'PECOUYOUL', 'THIERRY', '', '', '', '', '', '', '', '', '1993-03-08', '', '', 'PROD ENCADREMENT', '', 'CADRE', '', 1, '159'),
(252, '3011054', 0, 'PELLOUX', 'HENRY', '', '', '', '', '', '', '', '', '2011-10-04', '', '', 'PROD ENCADREMENT', '', 'CADRE', '', 1, '159'),
(253, '1200254', 0, 'PERIN', 'STEPHANE', '', '', '', '', '', '', '', '', '1993-08-09', '', '', 'PROD CONDUC CUISIN', '', 'TECHNICIENS', '', 1, '159'),
(254, '3019616', 0, 'PERRION', 'EVELYNE', '', '', '', '', '', '', '', '', '2014-05-19', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(255, '1200255', 0, 'PERRODO', 'ROMAIN', '', '', '', '', '', '', '', '', '2003-07-07', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(256, '3021278', 0, 'PERTUISEL', 'MORGANE', '', '', '', '', '', '', '', '', '2014-10-13', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(257, '1200256', 0, 'PETIT', 'ANAELLE', '', '', '', '', '', '', '', '', '2003-04-14', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(258, '1200258', 0, 'PICAUT', 'ANNE-FRANCOISE', '', '', '', '', '', '', '', '', '1993-02-22', '', '', 'ADMINISTRATIF', '', 'AGENT DE MAITRISE', '', 1, '159'),
(259, '1200259', 0, 'PIECOURT', 'GERARD', '', '', '', '', '', '', '', '', '1997-04-10', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(260, '3019617', 0, 'PITTELIOEN', 'LAETITIA', '', '', '', '', '', '', '', '', '2014-05-19', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(261, '3017734', 0, 'POLLET', 'LAETITIA', '', '', '', '', '', '', '', '', '2013-09-16', '', '', 'QUALITE ASSURANCE', '', 'EMPLOYE', '', 1, '159'),
(262, '1200261', 0, 'PORTANGUEN', 'JOEL', '', '', '', '', '', '', '', '', '2003-05-22', '', '', 'ORDO EXPEDITION', '', 'TECHNICIENS', '', 1, '159'),
(263, '1200262', 0, 'POSSEME', 'STEPHANIE', '', '', '', '', '', '', '', '', '1999-10-04', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(264, '3015122', 0, 'PRAUD', 'ALINE', '', '', '', '', '', '', '', '', '2012-12-03', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(265, '3021664', 0, 'PRIEST', 'MATHILDE', '', '', '', '', '', '', '', '', '2014-12-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(266, '1200264', 0, 'QUINIO', 'RAYMOND', '', '', '', '', '', '', '', '', '2011-07-25', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(267, '1200269', 0, 'RENAUD', 'VERONIQUE', '', '', '', '', '', '', '', '', '1999-10-04', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(268, '1200271', 0, 'RICHARD', 'MICHELLE', '', '', '', '', '', '', '', '', '2004-06-21', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(269, '4000752', 0, 'RIGUIDEL', 'SIHAM', '', '', '', '', '', '', '', '', '2015-05-04', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(270, '1200273', 0, 'RIOU', 'ANTHONY', '', '', '', '', '', '', '', '', '2010-11-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(271, '4002517', 0, 'ROBERT', 'SANDRINE', '', '', '', '', '', '', '', '', '2015-10-12', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(272, '3012687', 0, 'ROBIN', 'JEREMY', '', '', '', '', '', '', '', '', '2012-04-16', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(273, '3021663', 0, 'ROCHE', 'OLIVIER', '', '', '', '', '', '', '', '', '2014-12-01', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(274, '1200276', 0, 'ROLLAND', 'ANDRE', '', '', '', '', '', '', '', '', '1993-04-13', '', '', 'PROD CONDUC CUISIN', '', 'TECHNICIENS', '', 1, '159'),
(275, '4000504', 0, 'ROSOLI', 'CINDY', '', '', '', '', '', '', '', '', '2015-04-13', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(276, '1200277', 0, 'ROSSI', 'BRUNO', '', '', '', '', '', '', '', '', '2001-11-05', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(277, '1200278', 0, 'ROUILLE', 'SYLVIE', '', '', '', '', '', '', '', '', '2005-07-25', '', '', 'QUALITE ASSURANCE', '', 'TECHNICIENS', '', 1, '159'),
(278, '1200210', 0, 'ROUSSE', 'SANDRINE', '', '', '', '', '', '', '', '', '2004-04-19', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(279, '1200279', 0, 'ROUSSEL', 'SANDRICK', '', '', '', '', '', '', '', '', '1996-05-20', '', '', 'ORDO PLANNIFICATION', '', 'AGENT DE MAITRISE', '', 1, '159'),
(280, '1200280', 0, 'ROUTIER', 'ISABELLE', '', '', '', '', '', '', '', '', '1999-05-25', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(281, '1200281', 0, 'ROUTIER', 'STEPHANE', '', '', '', '', '', '', '', '', '1999-07-12', '', '', 'MAINTENANCE', '', 'AGENT DE MAITRISE', '', 1, '159'),
(282, '4000969', 0, 'ROUX', 'MATHIEU', '', '', '', '', '', '', '', '', '2015-06-01', '', '', 'ORDO PLANNIFICATION', '', 'OUVRIER', '', 1, '159'),
(283, '4000968', 0, 'ROUZEAU', 'SANDRINE', '', '', '', '', '', '', '', '', '2015-06-01', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(284, '1200283', 0, 'RUELLAN', 'SABRINA', '', '', '', '', '', '', '', '', '2006-07-03', '', '', 'ACHAT PACKAGING', '', 'TECHNICIENS', '', 1, '159'),
(285, '1200284', 0, 'SABROU', 'ARNAUD', '', '', '', '', '', '', '', '', '2008-06-23', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(286, '1200285', 0, 'SAINDOU', 'ALI FAIDINE', '', '', '', '', '', '', '', '', '2011-04-04', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(287, '3021809', 0, 'SERBOURDIN', 'LUC', '', '', '', '', '', '', '', '', '2014-12-22', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(288, '1200289', 0, 'SERGEANT', 'PATRICIA', '', '', '', '', '', '', '', '', '2004-04-05', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(289, '1200290', 0, 'SHARRE', 'STEPHANE', '', '', '', '', '', '', '', '', '2000-05-09', '', '', 'PROD NETTOYAGE', '', 'TECHNICIENS', '', 1, '159'),
(290, '1200293', 0, 'SIMON', 'LAURENCE', '', '', '', '', '', '', '', '', '1993-04-23', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(291, '1200294', 0, 'SIMON', 'TONY', '', '', '', '', '', '', '', '', '2004-03-15', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(292, '3021971', 0, 'SINDALI', 'BARTHELEMY', '', '', '', '', '', '', '', '', '2015-01-19', '', '', 'PROD ENCADREMENT', '', 'CADRE', '', 1, '159'),
(293, '3012038', 0, 'SIRAND', 'ERIC', '', '', '', '', '', '', '', '', '2012-02-06', '', '', 'ORDO PLANNIFICATION', '', 'TECHNICIENS', '', 1, '159'),
(294, '1200295', 0, 'SOUAL', 'SANDRINE', '', '', '', '', '', '', '', '', '2008-11-17', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(295, '3014504', 0, 'STEPHAN', 'YANNICK', '', '', '', '', '', '', '', '', '2015-09-17', '', '', 'PROD CHEF D''EQUIPE', '', 'TECHNICIENS', '', 1, '159'),
(296, '3017840', 0, 'STINEAN', 'OVIDIU', '', '', '', '', '', '', '', '', '2013-09-23', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(297, '3019619', 0, 'TECHER', 'SOPHIE', '', '', '', '', '', '', '', '', '2014-05-19', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(298, '3021715', 0, 'TESTON', 'MELODIE', '', '', '', '', '', '', '', '', '2014-12-08', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(299, '1200296', 0, 'THOMAS', 'CHRISTINE', '', '', '', '', '', '', '', '', '1993-04-23', '', '', 'PROD PERSONNEL LIGNE', '', 'TECHNICIENS', '', 1, '159'),
(300, '3018962', 0, 'THOREL', 'SUZANNE', '', '', '', '', '', '', '', '', '2014-03-03', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(301, '1200298', 0, 'TOQUET', 'BRUNO', '', '', '', '', '', '', '', '', '2009-03-02', '', '', 'PROD NETTOYAGE', '', 'AGENT DE MAITRISE', '', 1, '159'),
(302, '1200299', 0, 'TOTO', 'SYLVIE', '', '', '', '', '', '', '', '', '2009-11-23', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(303, '3011708', 0, 'TOUBLANT', 'NATHALIE', '', '', '', '', '', '', '', '', '2011-12-19', '', '', 'ORDO PLANNIFICATION', '', 'CADRE', '', 1, '159'),
(304, '3021933', 0, 'TOURE', 'AICHA', '', '', '', '', '', '', '', '', '2015-01-19', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(305, '1200301', 0, 'TRINEL', 'PASCAL', '', '', '', '', '', '', '', '', '1999-05-25', '', '', 'PROD PREPARATION', '', 'OUVRIER', '', 1, '159'),
(306, '3021724', 0, 'TUFFIGO', 'CINDY', '', '', '', '', '', '', '', '', '2014-12-08', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(307, '3021279', 0, 'VALITE', 'MELVINA', '', '', '', '', '', '', '', '', '2014-10-13', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(308, '1200306', 0, 'VETIER', 'DIDIER', '', '', '', '', '', '', '', '', '1993-10-04', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(309, '1200307', 0, 'VICENTE', 'MARIA', '', '', '', '', '', '', '', '', '1998-01-06', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(310, '4001318', 0, 'VIEL', 'AURELIE', '', '', '', '', '', '', '', '', '2015-08-17', '', '', 'DEVPT INDUSTRIE', '', 'EMPLOYE', '', 1, '159'),
(311, '3018300', 0, 'VOLANT', 'STEPHANIE', '', '', '', '', '', '', '', '', '2013-11-18', '', '', 'PROD PERSONNEL LIGNE', '', 'OUVRIER', '', 1, '159'),
(312, '1200308', 0, 'VOLINO', 'EVA', '', '', '', '', '', '', '', '', '2002-09-02', '', '', 'QUALITE ASSURANCE', '', 'TECHNICIENS', '', 1, '159'),
(313, '1200309', 0, 'XHAARD', 'MELANIE', '', '', '', '', '', '', '', '', '2005-07-25', '', '', 'DEVPT INDUSTRIE', '', 'CADRE', '', 1, '159'),
(314, '4001016', 0, 'YAVUZ', 'MUSTAFA', '', '', '', '', '', '', '', '', '2015-06-15', '', '', 'PROD NETTOYAGE', '', 'OUVRIER', '', 1, '159'),
(315, '4002919', 0, 'Menard', 'Mickael', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, ''),
(316, '4003191', 0, 'FILY', 'JESSE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, ''),
(317, '4003190', 0, 'WIPF', 'ROMUALD', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, ''),
(318, ' 4003272', 0, ' DUTERTRE', ' Laetitia', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '');

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
(2, '1449788400', '18359', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de barbeau.', '', '26.5', 0),
(4, '1449788400', '61331', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de pecouyoul.', '', '33', 0),
(5, '1449788400', '00004', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de iseni edita.', '', '22', 0),
(6, '1449788400', '473596764', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par morel franÃ§oise.', '', '22', 0),
(7, '1449788400', '7080867', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE ROUZIC.', '', '11', 0),
(8, '1450393200', '3502067', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PIECOURT.', '', '55', 0),
(9, '1450393200', '463195009', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '55', 0),
(10, '1450393200', '1406188', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de rouille .', '', '16.5', 0),
(11, '1450393200', '0761940', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de laine.', '', '16.5', 0),
(12, '1450393200', '542506070', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '22', 0),
(15, '1450393200', '1022658', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MARTIN MARIE ANDREE.', '', '55', 0),
(17, '', '135892439', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '16.5', 0),
(18, '1450393200', '9474817', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de NAILI MENANA.', '', '66', 0),
(19, '1450393200', '9474817', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de NAILI MENANA.', '', '18', 0),
(20, '1450393200', '110497423', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '22', 0),
(21, '1450220400', '29540', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BARRE.', '', '22', 0),
(22, '1450393200', '856779889', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '11', 0),
(23, '1450393200', '291023487', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '19', 0),
(25, '1450911600', '1302422', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de bihoreau.', '', '80.75', 0),
(26, '1450911600', '155589025B', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de posseme.', '', '11', 0),
(28, '1450393200', '133603033 A', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de OLIVIER.', '', '33', 0),
(32, '1450911600', '9725757', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de FLEUREAU.', '', '23', 0),
(33, '1450911600', '5955925', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DOURDAIN.', '', '22', 0),
(34, '1450911600', '5955925', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DOURDAIN.', '', '19', 0),
(35, '1450911600', '0114246', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE MAUFF.', '', '88', 0),
(36, '1450911600', '0114246', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE MAUFF.', '', '23', 0),
(37, '', '577330551', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '11', 0),
(38, '1450911600', '0648971', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de rolland.', '', '23', 0),
(39, '1450911600', '0648972', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de rolland.', '', '22', 0),
(40, '1452207600', '887346840', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LORIN Carmen.', '', '22', 0),
(41, '1452207600', '0893673', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BOHEC MURIELLE.', '', '55', 0),
(42, '1452207600', '155510039', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de toto petelo.', '', '14.4', 0),
(43, '1452207600', '0872938', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUEVEL SONIA.', '', '11', 0),
(44, '1450393200', '5354257', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BESSON ANOUK.', '', '16.5', 0),
(45, '1450393200', '260239071', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LERANDY GUY.', '', '66.5', 0),
(46, '1455231600', '228392735', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DENAY ISABELLE.', '', '11', 0),
(47, '1454022000', '0761944', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LAINE CAROLE.', '', '27.5', 0),
(48, '1454022000', '8595786', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PITTELIOEN LAETITIA.', '', '47.5', 0),
(49, '1454022000', '8595786', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PITTELIOEN LAETITIA.', '', '16.5', 0),
(50, '1454022000', '0000044', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CADIC FREDERIC.', '', '44', 0),
(51, '1454022000', '5955928', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DOURDAIN MARIE-LAURE.', '', '22', 0),
(52, '1454022000', '36411088', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BLEVEC BEATRICE.', '', '27.5', 0),
(54, '1454022000', '3641088', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BLEVEC BEATRICE.', '', '30', 0),
(55, '1454022000', '4143691', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ARCHAMBAULT DE MONFORT ISABELLE.', '', '44', 0),
(56, '1454626800', '1028923', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ORJUBIN MURIEL.', '', '44', 0),
(57, '1454626800', '2585820', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BENARD EVELYNE.', '', '49.5', 0),
(58, '1454626800', '1840488', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUICHON FABIENNE.', '', '33', 0),
(59, '1454626800', '1840488', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUICHON FABIENNE.', '', '18', 0),
(60, '1454626800', '0761946', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LAINE CAROLE.', '', '19', 0),
(61, '1454626800', '10289824', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ORJUBIN MURIEL.', '', '19', 0),
(62, '1454022000', '3603034', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de OLIVIER JUDITH.', '', '28.5', 0),
(63, '1454626800', '1995667', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BRUN SYLVIANE.', '', '55', 0),
(64, '1455231600', '5556031', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de EUCHER CLAUDE.', '', '22', 0),
(65, '1454626800', '3049058', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE PORT VIRGINIE.', '', '44', 0),
(66, '1454626800', '3864602', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BONNIN JOEL.', '', '27.5', 0),
(67, '1454626800', '5672028', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de OLIVIER JUDITH.', '', '22', 0),
(68, '1450396800', '0751624', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de VICENTE MARIA.', '', '33', 0),
(69, '1454626800', '0751624', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de VICENTE MARIA.', '', '22', 0),
(70, '1455231600', '3641092', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BLEVEC BEATRICE.', '', '22', 0),
(71, '1455231600', '5165884', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LINO ANNIE.', '', '22', 0),
(73, '1455231600', '01722032', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE GRUYERE YVONNICK.', '', '16.5', 0),
(74, '1455231600', '9467252', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PORTANGUEN JOEL.', '', '33', 0),
(75, '1455231600', '9467252', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PORTANGUEN JOEL.', '', '14.25', 0),
(76, '1455231600', '7339756', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROSOLI CINDY.', '', '33', 0),
(77, '1455231600', '560890848', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CADORET ARNAUD.', '', '16.5', 0),
(78, '1455231600', '665079512', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LE NEVE GUENHAEL.', '', '11', 0),
(82, '1455231600', '397758141', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DERRIEN SANDRINE.', '', '11', 0),
(83, '1455231600', '170055906', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUILLEMOT BEATRICE.', '', '22', 0),
(84, '1455231600', '148738212', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par EUCHER CLAUDE.', '', '22', 0),
(85, '1454626800', '714559651', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEYOU SEVERINE.', '', '11', 0),
(86, '1454626800', '956644265', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TOTO SYLVIE.', '', '11', 0),
(87, '1455231600', '228211241', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GRECO JULIEN.', '', '55', 0),
(88, '1455231600', '559000248', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PORTANGUEN JOEL.', '', '82.5', 0),
(89, '1455231600', '400870245', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CADOUX LAURE.', '', '11', 0),
(90, '1452812400', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COLAS JACKY.', '', '27.5', 0),
(91, '1454022000', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUILLAS CHRISTINE.', '', '55', 0),
(92, '1453417200', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ARTERO EDDY.', '', '63', 0),
(93, '1455231600', '3675846', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JOSSIC CATHERINE.', '', '22', 0),
(94, '1453417200', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MERKILED WILLIAM.', '', '44', 0),
(96, '1453417200', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DUBOIS RUDY.', '', '7.2', 0),
(97, '1453417200', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DUBOIS RUDY.', '', '6', 0),
(98, '1452812400', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE VIAVANT RAISSA.', '', '55', 0),
(99, '1452812400', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DALIGAULT STEPHANE.', '', '16.5', 0),
(100, '1452812400', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GAULE MAXIME.', '', '22', 0),
(101, '1452812400', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DESIRE FABRICE.', '', '22', 0),
(102, '1452812400', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SHARRE STEPHANE.', '', '22', 0),
(103, '1453417200', '537321913', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MARCILLE YVES.', '', '11', 0),
(104, '1454022000', '337599822', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MOREL FRANCOISE.', '', '11', 0),
(105, '1454022000', '458512178', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ISENI EDITA.', '', '22', 0),
(106, '1454022000', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUILLEMOT BEATRICE.', '', '11', 0),
(107, '1447974000', '932623426', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHRISTMANN NADIA.', '', '11', 0),
(108, '1453417200', '765156716', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PORTANGUEN JOEL.', '', '22', 0),
(109, '1452812400', '616881132', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ARTERO DAVID.', '', '5.5', 0),
(110, '1452812400', '350202419', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ARTERO DAVID.', '', '3', 0),
(111, '1455231600', '418628655', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ARTERO DAVID.', '', '7.2', 0),
(112, '1452812400', '873061002', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEYOU SEVERINE.', '', '9', 0),
(113, '1452812400', '687397481', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEYOU SEVERINE.', '', '7.2', 0),
(114, '1452812400', '569086867', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CADORET ARNAUD.', '', '27.5', 0),
(115, '1452812400', '692399755', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MARION ERIC.', '', '27.5', 0),
(116, '1452812400', '985450182', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LE PAPILLON MICKAEL.', '', '22', 0),
(117, '1452812400', '832187964', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOURDIN JULIEN.', '', '22', 0),
(118, '1455750000', '6168', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GONDET LUISA.', '', '22', 0),
(119, '1454626800', '130845317', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ARTERO DAVID.', '', '23.75', 0),
(120, '1454626800', '318456607', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ARTERO DAVID.', '', '3', 0),
(121, '1454626800', '128119321', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ARTERO DAVID.', '', '3.6', 0),
(122, '1455836400', '0811240', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAUDET PASCALE.', '', '16.5', 0),
(123, '1455836400', '0811240', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAUDET PASCALE.', '', '6', 0),
(124, '1455836400', '9467253', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PORTANGUEN JOEL.', '', '19', 0),
(125, '1455663600', '848410978', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par OLIVIER JUDITH.', '', '11', 0),
(126, '1455836400', '0000223', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MIMOUN LAILA.', '', '11', 0),
(127, '1455836400', '7923031', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE VIAVANT RAISSA.', '', '11', 0),
(128, '1455836400', '386355065', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LE GRUYERE YVONNICK.', '', '22', 0);

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
  MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
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
  MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
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
  MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
  MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
  MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
  MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
  MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
  MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
  MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
  MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
  MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
  MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
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
  MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
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
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
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
  MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
  MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
  MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
