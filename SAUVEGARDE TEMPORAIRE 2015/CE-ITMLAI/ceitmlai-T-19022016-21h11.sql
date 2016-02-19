-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Ven 19 Février 2016 à 21:11
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ceitmlai`
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
(2, '18-01-2016', 1, '100', '570', '6994194514'),
(3, '01-01-2016', 3, '10', '67', '3033713824'),
(4, '01-01-2016', 4, '15', '58.5', '8545865118'),
(5, '01-01-2016', 6, '10', '67', '3063105447'),
(10, '22-01-2016', 11, '15', '54', '4171844474'),
(13, '01-01-2016', 15, '30', '540', '4693390839'),
(14, '01-01-2016', 16, '34', '918', '2800879148'),
(15, '04-02-2016', 17, '5', '32', '658036364'),
(17, '05-02-2016', 17, '18', '115.2', '7566031944'),
(18, '29-01-2016', 2, '168.00', '168', '4573483467'),
(19, '31-01-2016', 2, '139.66', '139.66', '6247450113');

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
(3, 2, 'Vente de Billetterie: CAZADIEU NADINE pour la prestation LE CLUB', '', '9', '61853064'),
(5, 2, 'Vente de Billetterie: DOUSSY MATHIEU pour la prestation LE CLUB', '', '27', '41995939'),
(6, 2, 'Vente de Billetterie: VOGELGESANG ANDRE pour la prestation LE CLUB', '', '13.5', '65538118'),
(8, 2, 'Vente de Billetterie: VELLARD JONATHAN pour la prestation LE CLUB', '', '27', '28342983'),
(9, 2, 'Vente de Billetterie: VOGELGESANG ANDRE pour la prestation LE CLUB', '', '4.5', '11954203'),
(10, 2, 'Vente de Billetterie: BUCETA NICOLAS pour la prestation LE CLUB', '', '18', '48543747'),
(11, 2, 'Vente de Billetterie: LABOUYRIE NATHALIE pour la prestation LE CLUB', '', '9', '77356315'),
(12, 2, 'Vente de Billetterie: DUFOURCQ FREDERIC pour la prestation LE CLUB', '', '9', '76052563'),
(14, 2, 'Vente de Billetterie: MORNET RICHARD pour la prestation LE CLUB', '', '27', '98250283'),
(15, 2, 'Vente de Billetterie: JAY PASCAL pour la prestation LE CLUB', '', '27', '81122071'),
(16, 2, 'Vente de Billetterie: DE SA DAVID pour la prestation LE CLUB', '', '27', '38738648'),
(17, 2, 'Vente de Billetterie: TARDITS ALAIN pour la prestation LE CLUB', '', '22.5', '84833259'),
(18, 1, 'Achat: LE CLUB', '570', '', '6994194514'),
(20, 2, 'Vente de Billetterie: THEYS THIERRY pour la prestation LE CLUB', '', '27', '49100647'),
(21, 2, 'Vente de Billetterie: REIJASSE SEBASTIEN pour la prestation LE CLUB', '', '18', '4680026'),
(22, 2, 'Vente de Billetterie: COURCIER PHILIPPE pour la prestation LE CLUB', '', '9', '7818935'),
(23, 2, 'Vente de Billetterie: ROUX SEBASTIEN pour la prestation LE CLUB', '', '27', '46637345'),
(24, 2, 'Vente de Billetterie: PRAT VINCENT pour la prestation LE CLUB', '', '18', '10482241'),
(27, 2, 'Vente de Billetterie: PEREZ FRANCISCO pour la prestation TOUT FOURNISSEUR EXTERIEUR - ETS DESTRIBATS', '', '139.66', '18473981'),
(28, 2, 'Vente de Billetterie: TOURNIER STEPHANE pour la prestation LE CLUB', '', '27', '57414991'),
(29, 2, 'Vente de Billetterie: SELMES LAURENT pour la prestation AYGUE BLUE ADULTE', '', '18', '16674774'),
(30, 1, 'Achat: AYGUEBLUE BE', '67', '', '3033713824'),
(31, 1, 'Achat: AYGUE BLUE ADULTE', '58.5', '', '8545865118'),
(32, 2, 'Vente de Billetterie: DEZELU JULIEN pour la prestation LE CLUB', '', '22.5', '61714444'),
(34, 1, 'Remboursement de la prestation: PARTICIPATION LICENCE FOOTBALL pour MIRAMBEAU DAVID', '30', '', '37685182412'),
(35, 2, 'Vente de Billetterie: DE SA DAVID pour la prestation PART SALARIALE ANCV - 1 ER VERSEMENT', '', '120', '8066763'),
(36, 2, 'Vente de Billetterie: LECHAUDEE-CORBAY STEPHANE pour la prestation PART SALARIALE ANCV', '', '180', '61293628'),
(37, 2, 'Vente de Billetterie: LECHAUDEE-CORBAY STEPHANE pour la prestation CHARGE CE ANCV ', '', '0', '40522797'),
(38, 2, 'Vente de Billetterie: DE SA DAVID pour la prestation CHARGE CE ANCV ', '', '0', '61981184'),
(39, 2, 'Vente de Billetterie: LABORDE THIERRY pour la prestation PART SALARIALE ANCV', '', '280', '74739459'),
(40, 2, 'Vente de Billetterie: LABORDE THIERRY pour la prestation CHARGE CE ANCV ', '', '0', '69854968'),
(41, 2, 'Ajout du produit fixe: SOLDE BANQUE ', '', '7195.15', '6825878257'),
(42, 2, 'Ajout du produit fixe: SUBVENTION 01', '', '3490.79', '7568727648'),
(43, 1, 'Remboursement de la prestation: LICENCE FFPJP pour LAPENU CLAUDE', '30', '', '111830858514'),
(44, 1, 'Remboursement de la prestation: FFPJP pour TOULET ALINE', '30', '', '131403522566'),
(45, 1, 'Remboursement de la prestation: PLACE RUGBY FRANCE IRLANDE pour DELAS VALERIE', '30', '', '975000706966'),
(46, 1, 'Remboursement de la prestation: KARATE CLUB  pour FOMBELLIDA JEAN MICHEL', '30', '', '600432470906'),
(47, 1, 'Remboursement de la prestation: FFPJP LICENCE pour FERNANDES FRANCIS', '30', '', '44327147771'),
(48, 1, 'Remboursement de la prestation: SEJOUR PEDAGOGIQUE POUR LORIS pour DUFILLON NICOLAS', '30', '', '469961204100'),
(49, 1, 'Remboursement de la prestation: CD MUSIQUE pour THOORIS DIDIER', '30', '', '286478976254'),
(50, 2, 'Vente de Billetterie: LAUSSU DENIS pour la prestation SOURCEO', '', '40', '29232436'),
(56, 1, 'Achat: AYGUEBLUE ADULTE TARIF 2016', '54', '', '4171844474'),
(58, 1, 'Ajout de la charge Fixe: FRAIS UPCM LE CLUB', '30.00', '', '23736549'),
(61, 1, 'Achat: JOUE CLUB 20&euro;', '540', '', '4693390839'),
(62, 1, 'Achat: JOUE CLUB 30&euro;', '918', '', '2800879148'),
(63, 1, 'Remboursement de la prestation: LICENCE FFPJP pour CARRASCO FREDERIC', '30', '', '184944440611'),
(64, 2, 'Vente de Billetterie: LE NAOUR PHILIPPE pour la prestation SOURCEO', '', '20', '35324162'),
(65, 1, 'Ajout de la charge Fixe: ASSEMBLEE GENERALE ANIMATION', '500', '', '3150172103'),
(66, 1, 'Ajout de la charge Fixe: ASSEMBLEE GENERALE REPAS CONJOINTS SALARIES', '1300.79', '', '1422406203'),
(67, 1, 'Ajout de la charge Fixe: ASSEMBLEE GENERALE REPAS CONJOINTS SALARIES', '78.21', '', '9338337378'),
(69, 2, 'Vente de Billetterie: MEDINA STEPHANE pour la prestation LE CLUB', '', '18', '90908468'),
(73, 2, 'Vente de Billetterie: GUYONNAUD BERNARD pour la prestation LE CLUB', '', '9', '54651310'),
(74, 1, 'Achat: CGR TARNOS BAYONNE', '32', '', '658036364'),
(76, 2, 'Vente de Billetterie: BELIN DAMIEN pour la prestation TOUT FOURNISSEUR EXTERIEUR - SAVILEM', '', '32', '18174526'),
(77, 2, 'Vente de Billetterie: LALANDE JEAN PHILIPPE pour la prestation LE CLUB', '', '18', '94468188'),
(78, 2, 'Vente de Billetterie: LABORDE THIERRY pour la prestation LE CLUB', '', '27', '38359917'),
(79, 2, 'Vente de Billetterie: LUCIDO JEAN LUC pour la prestation TOUT FOURNISSEUR EXTERIEUR - SAVILEM', '', '40', '34384544'),
(80, 2, 'Vente de Billetterie: GRENTE-LENGAGNE CATHERINE pour la prestation LE KURSAAL', '', '10.5', '26505023'),
(81, 2, 'Vente de Billetterie: THOMAS LAURENT pour la prestation CGR TARNOS BAYONNE', '', '22.5', '8817892'),
(82, 2, 'Vente de Billetterie: THEYS THIERRY pour la prestation LE CLUB', '', '27', '14515265'),
(83, 2, 'Vente de Billetterie: LAUDIERES PHILIPPE pour la prestation TOUT FOURNISSEUR EXTERIEUR - SAVILEM', '', '16', '4824050'),
(87, 2, 'Vente de Billetterie: BAREYT PASCALE pour la prestation CGR TARNOS BAYONNE', '', '18', '89296163'),
(89, 2, 'Vente de Billetterie: DARJO SEBASTIEN pour la prestation AYGUEBLUE ADULTE TARIF 2016', '', '6', '22797709'),
(90, 2, 'Vente de Billetterie: ALBERTINI DIDIER pour la prestation TOUT FOURNISSEUR EXTERIEUR - SAVILEM', '', '16', '47913130'),
(93, 2, 'Vente de Billetterie: FABRE STEPHANE pour la prestation LE CLUB', '', '18', '17688719'),
(100, 2, 'Vente de Billetterie: DEZELU JULIEN pour la prestation LE CLUB', '', '22.5', '35028038'),
(101, 2, 'Vente de Billetterie: DEZELU JULIEN pour la prestation LE CLUB', '', '22.5', '76274355'),
(102, 2, 'Vente de Billetterie: BAUVY BRUNO pour la prestation TOUT FOURNISSEUR EXTERIEUR - savilem', '', '24', '6913362'),
(106, 2, 'Vente de Billetterie: CAETANO MARTINS JOSE VANTUIR pour la prestation LE CLUB', '', '18', '22101302'),
(108, 2, 'Vente de Billetterie: LUCIDO SEBASTIEN pour la prestation LE CLUB', '', '27', '97379482'),
(109, 2, 'Vente de Billetterie: CHARRIEAU MATHIEU pour la prestation LE CLUB', '', '18', '71962377'),
(111, 2, 'Vente de Billetterie: CUZACQ GREGORY pour la prestation AYGUEBLUE ADULTE TARIF 2016', '', '6', '66375425'),
(112, 2, 'Vente de Billetterie: CUZACQ GREGORY pour la prestation AYGUEBLUE ENFANT TARIF 2016', '', '2', '44596714'),
(114, 2, 'Vente de Billetterie: DESSARPS THIBAULT pour la prestation CGR TARNOS BAYONNE', '', '13.5', '13048485'),
(115, 2, 'Vente de Billetterie: CUZACQ GREGORY pour la prestation LE CLUB', '', '9', '31820483'),
(116, 2, 'Vente de Billetterie: CUZACQ GREGORY pour la prestation AYGUEBLUE ADULTE TARIF 2016', '', '6', '10316417'),
(120, 2, 'Vente de Billetterie: CUZACQ GREGORY pour la prestation LE CLUB', '', '9', '7061523'),
(121, 2, 'Vente de Billetterie: CUZACQ GREGORY pour la prestation AYGUEBLUE ADULTE TARIF 2016', '', '6', '94926641'),
(127, 2, 'Vente de Billetterie: TOULET ALINE pour la prestation LE CLUB', '', '27', '725406764'),
(128, 2, 'Vente de Billetterie: DEZELU JULIEN pour la prestation LE CLUB', '', '4.5', '91190683'),
(129, 2, 'Vente de Billetterie: DUFILLON NICOLAS pour la prestation LE CLUB', '', '22.5', '726325179'),
(130, 1, 'Achat: CGR TARNOS BAYONNE', '115.2', '', '7566031944'),
(131, 1, 'Achat: TOUT FOURNISSEUR EXTERIEUR', '168', '', '4573483467'),
(132, 2, 'Ajout du produit fixe: SUBVENTION 02', '', '3636.19', '6702226521'),
(133, 2, 'Vente de Billetterie: CUZACQ GREGORY pour la prestation LE CLUB', '', '9', '11955599'),
(134, 2, 'Vente de Billetterie: CUZACQ GREGORY pour la prestation AYGUEBLUE ADULTE TARIF 2016', '', '6', '25040158'),
(135, 2, 'Vente de Billetterie: CUZACQ GREGORY pour la prestation AYGUEBLUE ENFANT TARIF 2016', '', '2', '93823525'),
(136, 2, 'VENTE NON RESIDENTE pour LAPENU CLAUDE pour la prestation VOYAGE PUY DU FOU', '', '200', '646509517408'),
(137, 2, 'VENTE NON RESIDENTE pour DEZELU JULIEN pour la prestation VOYAGE PDF', '', '50', '933639994007'),
(138, 2, 'VENTE NON RESIDENTE pour BERNARD ROMAIN pour la prestation VOYAGE PDF', '', '75', '335840307002'),
(139, 2, 'VENTE NON RESIDENTE pour LE NAOUR PHILIPPE pour la prestation VOYAGE PDF', '', '40', '340144385911'),
(140, 2, 'VENTE NON RESIDENTE pour DE SA DAVID pour la prestation V', '', '100', '488775564257'),
(141, 2, 'VENTE NON RESIDENTE pour DEJEAN CYRIL pour la prestation VOYAGE PDF', '', '200', '5599407733'),
(142, 2, 'VENTE NON RESIDENTE pour DEJEAN CYRIL pour la prestation VOYAGE PDF', '', '50', '921320964999'),
(143, 2, 'VENTE NON RESIDENTE pour LAFITTE JEAN JOSEPH pour la prestation VOYAGE PDF', '', '150', '899782959614'),
(144, 2, 'VENTE NON RESIDENTE pour DOUET ANDRE pour la prestation VOYAGE PDF', '', '200', '192469391699'),
(145, 2, 'VENTE NON RESIDENTE pour TOURNIER STEPHANE pour la prestation VOYAGE PDF', '', '50', '560532324656'),
(147, 2, 'VENTE NON RESIDENTE pour REIJASSE SEBASTIEN pour la prestation VOYAGE PDF', '', '60', '788244172220'),
(148, 2, 'VENTE NON RESIDENTE pour REIMMEL RAOUL pour la prestation VOYAGE PDF', '', '300', '915407266545'),
(149, 2, 'VENTE NON RESIDENTE pour MIRAMBEAU DAVID pour la prestation VOYAGE PDF', '', '100', '979667559902'),
(150, 2, 'VENTE NON RESIDENTE pour DELAS VALERIE pour la prestation VOYAGE PDF', '', '200', '757822666320'),
(151, 1, 'Achat: TOUT FOURNISSEUR EXTERIEUR', '139.66', '', '6247450113'),
(152, 2, 'Vente de Billetterie: DARJO SEBASTIEN pour la prestation LE CLUB', '', '18', '24205935'),
(153, 2, 'Ajout du produit fixe: VIREMENT DU FONCTIONNEMENT SODAC MAL VERSE', '', '830.43', '753485347'),
(154, 2, 'Ajout du produit fixe: REMISE SAVILEM AVNT LOGICIEL', '', '96', '2673346848'),
(155, 2, 'Ajout du produit fixe: REMISE CHEQUE AVANT LOGICIEL', '', '389.50', '7601808873'),
(156, 2, 'Ajout du produit fixe: REMISE PIERRE ET VACANCES AVANT LOGICIEL', '', '200', '9971869704'),
(157, 2, 'Ajout du produit fixe: REMISE MATHON AVANT LOGICIEL', '', '4.79', '7450728942'),
(158, 2, 'Ajout du produit fixe: REMISE ESPECES AVANT LOGICIEL', '', '160', '6506518717'),
(159, 1, 'Ajout de la charge Fixe: COTISATION CARTE BANQUAIRE', '108.00', '', '470148284'),
(160, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 1793696', '3.8', '', '8891378473'),
(161, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 1793698', '30', '', '6159140500'),
(162, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 1793710', '30', '', '5812280495'),
(163, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 1793712', '123.49', '', '5025677197'),
(164, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 1793715', '225', '', '9614983103'),
(165, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 3821127', '30', '', '737919882'),
(166, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 3821128', '30', '', '3554144986'),
(167, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 3821131', '2500', '', '4104964221'),
(168, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 3821132', '30', '', '7648325003'),
(169, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 3821133', '30', '', '6048570610'),
(170, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 3821136', '197.07', '', '7020754134'),
(171, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 3821137', '10.40', '', '8844571001'),
(172, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 3821138', '450', '', '9603909296'),
(173, 1, 'Ajout de la charge Fixe: CHEQUE DE 2015 3821139', '30', '', '4399223514'),
(174, 2, 'Vente de Billetterie: LASSERRE YVES pour la prestation TOUT FOURNISSEUR EXTERIEUR - REGLEMENT BILLETTERIE 2015', '', '18', '35287084'),
(176, 2, 'Vente de Billetterie: FEZANCIEUX ERIC pour la prestation PART SALARIALE ANCV', '', '144', '52122256'),
(177, 2, 'Vente de Billetterie: LE NAOUR PHILIPPE pour la prestation LE CLUB', '', '13.5', '57786909'),
(178, 2, 'Vente de Billetterie: CHINESTRA MICHEL pour la prestation TOUT FOURNISSEUR EXTERIEUR - MADELEINE BIJOU', '', '27.8', '10056357'),
(179, 2, 'Vente de Billetterie: PICHENET JEAN-FRANCOIS pour la prestation LE CLUB', '', '4.5', '29705911'),
(180, 2, 'Vente de Billetterie: DEYRES JOEL pour la prestation LE CLUB', '', '27', '26837958');

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

--
-- Contenu de la table `billet_n_salarie`
--

INSERT INTO `billet_n_salarie` (`idbilletnsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`, `num_mouvement`) VALUES
(18, 136, '1455750000', 3, '200', 1, '646509517408'),
(19, 65, '1455750000', 3, '200', 1, '757822666320'),
(20, 167, '1455750000', 3, '100', 1, '979667559902'),
(21, 187, '1455750000', 3, '300', 1, '915407266545'),
(22, 186, '1455750000', 3, '60', 1, '788244172220'),
(23, 214, '1455750000', 3, '50', 1, '560532324656'),
(24, 77, '1455750000', 3, '200', 1, '192469391699'),
(25, 127, '1455750000', 3, '150', 1, '899782959614'),
(26, 64, '1455750000', 3, '50', 1, '921320964999'),
(27, 64, '1455750000', 3, '200', 1, '5599407733'),
(28, 61, '1455750000', 3, '100', 1, '488775564257'),
(29, 147, '1455750000', 3, '40', 1, '340144385911'),
(30, 16, '1455750000', 3, '75', 1, '335840307002'),
(31, 73, '1455750000', 3, '50', 1, '933639994007');

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
(1, 39, '1451948400', 3, '9', 1, '61853064', 0),
(3, 78, '1451948400', 3, '27', 1, '41995939', 0),
(4, 218, '1452207600', 3, '13.5', 1, '65538118', 0),
(6, 215, '1452553200', 3, '27', 1, '28342983', 0),
(7, 218, '1452553200', 3, '4.5', 1, '11954203', 0),
(8, 26, '1452553200', 3, '18', 1, '48543747', 0),
(9, 126, '1452553200', 3, '9', 1, '77356315', 0),
(10, 82, '1452812400', 3, '9', 1, '76052563', 0),
(12, 172, '1452812400', 3, '27', 1, '98250283', 0),
(13, 119, '1452812400', 3, '27', 1, '81122071', 0),
(14, 61, '1452812400', 3, '27', 1, '38738648', 0),
(15, 206, '1453158000', 3, '22.5', 1, '84833259', 0),
(16, 207, '1453417200', 3, '27', 1, '49100647', 0),
(17, 186, '1452812400', 3, '18', 0, '4680026', 0),
(18, 47, '1453158000', 3, '9', 1, '7818935', 0),
(19, 195, '1453330800', 3, '27', 1, '46637345', 0),
(20, 184, '1453417200', 3, '18', 1, '10482241', 0),
(22, 176, '1453417200', 3, '139.66', 1, '18473981', 0),
(23, 214, '1453417200', 3, '27', 1, '57414991', 0),
(24, 202, '1453417200', 3, '18', 1, '16674774', 0),
(25, 73, '1453417200', 3, '22.5', 1, '35028038', 0),
(26, 61, '1452812400', 3, '120', 1, '8066763', 0),
(27, 149, '1452726000', 3, '180', 1, '61293628', 0),
(28, 149, '1452726000', 3, '0', 0, '40522797', 0),
(29, 61, '1452726000', 3, '0', 0, '61981184', 0),
(30, 124, '1452812400', 3, '280', 1, '74739459', 0),
(31, 124, '1452812400', 3, '0', 0, '69854968', 0),
(33, 145, '1453676400', 3, '40', 0, '29232436', 0),
(35, 147, '1453762800', 3, '20', 1, '35324162', 0),
(36, 163, '1454022000', 3, '18', 1, '90908468', 0),
(38, 111, '1454367600', 3, '9', 1, '54651310', 0),
(39, 12, '1454540400', 3, '32', 1, '18174526', 0),
(40, 130, '1454626800', 3, '18', 1, '94468188', 0),
(41, 124, '1454626800', 3, '27', 1, '38359917', 0),
(42, 155, '1454626800', 3, '40', 1, '34384544', 0),
(43, 106, '1454626800', 3, '10.5', 1, '26505023', 0),
(44, 209, '1454626800', 3, '22.5', 1, '8817892', 0),
(45, 207, '1454972400', 3, '27', 1, '14515265', 0),
(46, 143, '1454972400', 3, '16', 1, '4824050', 0),
(47, 9, '1454972400', 3, '18', 1, '89296163', 0),
(48, 4, '1454972400', 3, '16', 1, '47913130', 0),
(49, 55, '1454972400', 3, '6', 1, '22797709', 0),
(51, 88, '1455231600', 3, '18', 1, '17688719', 0),
(57, 73, '1455231600', 3, '22.5', 1, '76274355', 0),
(58, 11, '1455231600', 3, '24', 1, '6913362', 0),
(62, 28, '1455577200', 3, '18', 0, '22101302', 0),
(64, 156, '1455577200', 3, '27', 1, '97379482', 0),
(65, 43, '1455577200', 3, '18', 1, '71962377', 0),
(68, 70, '1455577200', 3, '13.5', 1, '13048485', 0),
(77, 212, '1455577200', 3, '27', 1, '725406764', 0),
(78, 73, '1455663600', 3, '4.5', 0, '91190683', 0),
(79, 81, '1455663600', 3, '22.5', 1, '726325179', 0),
(81, 51, '1455577200', 3, '9', 1, '11955599', 0),
(82, 51, '1455577200', 3, '6', 1, '25040158', 0),
(83, 51, '1455577200', 3, '2', 1, '93823525', 0),
(84, 55, '1455750000', 3, '18', 1, '24205935', 0),
(85, 142, '1455750000', 3, '18', 1, '35287084', 0),
(86, 93, '1455750000', 3, '144', 1, '52122256', 0),
(87, 147, '1455836400', 3, '13.5', 1, '57786909', 0),
(88, 46, '1455836400', 3, '27.8', 1, '10056357', 0),
(89, 178, '1455836400', 3, '4.5', 1, '29705911', 0),
(90, 72, '1455836400', 3, '27', 1, '26837958', 0);

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
(5, 'FRAIS UPCM LE CLUB', '01-01-2016', '30.00', '23736549'),
(6, 'ASSEMBLEE GENERALE ANIMATION', '16-01-2016', '500', '3150172103'),
(7, 'ASSEMBLEE GENERALE REPAS CONJOINTS SALARIES', '16-01-2016', '1300.79', '1422406203'),
(8, 'ASSEMBLEE GENERALE REPAS CONJOINTS SALARIES', '16-01-2016', '78.21', '9338337378'),
(9, 'COTISATION CARTE BANQUAIRE', '26-01-2016', '108.00', '470148284'),
(10, 'CHEQUE DE 2015 1793696', '05-01-2016', '3.8', '8891378473'),
(11, 'CHEQUE DE 2015 1793698', '15-01-2016', '30', '6159140500'),
(12, 'CHEQUE DE 2015 1793710', '18-01-2016', '30', '5812280495'),
(13, 'CHEQUE DE 2015 1793712', '28-01-2016', '123.49', '5025677197'),
(14, 'CHEQUE DE 2015 1793715', '08-01-2016', '225', '9614983103'),
(15, 'CHEQUE DE 2015 3821127', '04-01-2016', '30', '737919882'),
(16, 'CHEQUE DE 2015 3821128', '13-01-2016', '30', '3554144986'),
(17, 'CHEQUE DE 2015 3821131', '18-01-2016', '2500', '4104964221'),
(18, 'CHEQUE DE 2015 3821132', '13-01-2016', '30', '7648325003'),
(19, 'CHEQUE DE 2015 3821133', '07-01-2016', '30', '6048570610'),
(20, 'CHEQUE DE 2015 3821136', '08-01-2016', '197.07', '7020754134'),
(21, 'CHEQUE DE 2015 3821137', '05-01-2016', '10.40', '8844571001'),
(22, 'CHEQUE DE 2015 3821138', '19-01-2016', '450', '9603909296'),
(23, 'CHEQUE DE 2015 3821139', '26-01-2016', '30', '4399223514');

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
(82, 3, '10528.58', '6094.18'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '16223.76', ''),
(87, 8, '9586.38', '3000'),
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
(107, 28, '9094.18', '38428.2'),
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
(135, 56, '301.05', ''),
(136, 57, '', ''),
(137, 58, '', ''),
(138, 59, '', ''),
(139, 60, '', ''),
(140, 61, '', ''),
(141, 62, '', ''),
(142, 63, '', ''),
(143, 64, '958', ''),
(144, 65, '', ''),
(145, 66, '', ''),
(146, 67, '', ''),
(147, 68, '', ''),
(148, 69, '', ''),
(149, 70, '830.43', ''),
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
(60, '8589575', '1451602800', 'SODAC', 3, '', '245.65'),
(61, '5806123', '1451602800', 'MADELEINE BIJOUX', 3, '', '55.40'),
(62, '5937989', '1451602800', 'VERSEMENT CCE', 3, '', '958'),
(63, '5562818', '1452553200', 'REGUL SODAC', 3, '', '830.43'),
(64, '2935649', '1453417200', 'VIREMENT LIVRET VERS BANQUE', 3, '3000', ''),
(65, '4681913', '1452898800', 'ASSEMBLEE GENERALE', 3, '', '176.93'),
(66, '6761963', '1452898800', 'ASSEMBLEE GENERALE', 3, '', '484.08'),
(67, '9009884', '1452898800', 'ASSEMBLEE GENERALE REPAS SALARIES', 3, '', '1426.00'),
(68, '1942219', '1453417200', 'CDT GESTION', 3, '', '1500.00'),
(69, '5628222', '1452553200', 'BRUNEAU FOURNITURS', 3, '', '206.12'),
(70, '6641971', '1452553200', 'BRUNEAU FOURNITURES', 3, '', '125.76'),
(71, '4633360', '1453762800', 'MAINTIEN SALAIRE FORMATION PASCALE ICEGEST', 3, '', '51.16'),
(72, '9224060', '1453417200', 'RESTAURATION FORMATION ICEGEST', 3, '', '34.65');

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
(34, '2100757', 3, '3523.88'),
(35, '2310518', 8, '9586.38'),
(36, '9762764', 7, '16223.76');

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
(13, '6628778', 28, '29334.02');

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
(171, '2100757', 3, '3523.88', ''),
(172, '2310518', 8, '9586.38', ''),
(173, '9762764', 7, '16223.76', ''),
(174, '6628778', 28, '', '29334.02'),
(175, '1524638', 56, '245.65', ''),
(176, '5018332', 56, '55.40', ''),
(177, '3273104', 64, '958', ''),
(178, '5254025', 70, '830.43', ''),
(179, '8589575', 3, '', '245.65'),
(180, '5806123', 3, '', '55.40'),
(181, '5937989', 3, '', '958'),
(182, '5562818', 3, '', '830.43'),
(183, '2935649', 3, '3000', ''),
(184, '6758634', 8, '', '3000'),
(185, '4301485', 3, '176.93', ''),
(186, '5430327', 3, '484.08', ''),
(187, '3122217', 3, '1426.00', ''),
(188, '4718550', 3, '1500.00', ''),
(189, '4681913', 3, '', '176.93'),
(190, '6761963', 3, '', '484.08'),
(191, '9009884', 3, '', '1426.00'),
(192, '1942219', 3, '', '1500.00'),
(193, '2159145', 3, '51.16', ''),
(194, '6230825', 3, '125.76', ''),
(195, '2286376', 3, '206.12', ''),
(196, '5628222', 3, '', '206.12'),
(197, '6641971', 3, '', '125.76'),
(198, '4633360', 3, '', '51.16'),
(199, '9224060', 3, '', '34.65'),
(200, '4367021', 3, '34.65', '');

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
(6, '6758634', '1453417200', 'VIREMENT LIVRET VERS BANQ', 8, '', '3000');

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
(53, '1524638', '1451602800', 'SODAC', 56, '245.65', ''),
(54, '5018332', '1451602800', 'MADELEINE BIJOUX', 56, '55.40', ''),
(55, '3273104', '1451602800', 'VERSEMENT CCE', 64, '958', ''),
(56, '5254025', '1452553200', 'REGUL SODAC', 70, '830.43', ''),
(57, '4301485', '1452898800', 'ASSEMBLEE GENERALE', 3, '176.93', ''),
(58, '5430327', '1452898800', 'ASSEMBLEE GENERALE', 3, '484.08', ''),
(59, '3122217', '1452898800', 'ASSEMBLEE GENERALE REPAS SALARIES', 3, '1426.00', ''),
(60, '4718550', '1453417200', 'CDT GESTION', 3, '1500.00', ''),
(61, '2159145', '1453762800', 'MAINTIEN SALAIRE FORMATION PASCALE ICEGEST', 3, '51.16', ''),
(62, '6230825', '1452553200', 'BRUNEAU FOURNITURES', 3, '125.76', ''),
(63, '2286376', '1452553200', 'BRUNEAU FOURNITURES', 3, '206.12', ''),
(64, '4367021', '1453417200', 'RESTAURATION FORMATION ICEGEST', 3, '34.65', '');

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
(56, 6, 'Frais d''administration', 'ACHAT RESTAURATION A EMPORTER'),
(57, 6, 'T&eacute;l&eacute;phone, fax, internet', 'TÃ©lÃ©phone, fax, internet'),
(58, 6, 'Publicit&eacute;', 'Agios'),
(59, 6, 'Interet-charges, Frais Bancaires', 'Frais bancaires'),
(60, 6, 'Amortissements', 'Achats de matÃ©riel et logiciels informatiques'),
(61, 6, 'Autre Charge d''exploitation 1', 'Divers'),
(62, 6, 'Autre Charge d''exploitation 2', 'FRAIS HOTELIERS'),
(63, 6, 'Autre Charge d''exploitation 3', 'FRAIS RESTAURATION'),
(64, 6, 'Autre Charge d''exploitation 4', 'VERSEMENT CCE'),
(65, 7, 'Produits des titres', 'Produits Financiers'),
(66, 7, 'Produits d''immeubles', ''),
(67, 7, 'Autre r&eacute;sultat Annexe 1', ''),
(68, 7, 'Autre r&eacute;sultat Annexe 2', ''),
(69, 7, 'Charges d''immeubles', ''),
(70, 7, 'Autre Charge annexe 1', 'VIREMENT VERS ASC'),
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
(55, '1524638', 56, '245.65', ''),
(56, '5018332', 56, '55.40', ''),
(57, '3273104', 64, '958', ''),
(58, '5254025', 70, '830.43', ''),
(59, '4301485', 3, '176.93', ''),
(60, '5430327', 3, '484.08', ''),
(61, '3122217', 3, '1426.00', ''),
(62, '4718550', 3, '1500.00', ''),
(63, '2159145', 3, '51.16', ''),
(64, '6230825', 3, '125.76', ''),
(65, '2286376', 3, '206.12', ''),
(66, '4367021', 3, '34.65', '');

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
(1, 'C.E  ITMLAI CASTETS', '0', '0', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '01-01-2016', '31-12-2016');

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
(3, '61853064', '1451948400', 'Vente de Billetterie: CAZADIEU NADINE pour la prestation LE CLUB', '', '9'),
(5, '41995939', '1451948400', 'Vente de Billetterie: DOUSSY MATHIEU pour la prestation LE CLUB', '', '27'),
(6, '65538118', '1452207600', 'Vente de Billetterie: VOGELGESANG ANDRE pour la prestation LE CLUB', '', '13.5'),
(8, '28342983', '1452553200', 'Vente de Billetterie: VELLARD JONATHAN pour la prestation LE CLUB', '', '27'),
(9, '11954203', '1452553200', 'Vente de Billetterie: VOGELGESANG ANDRE pour la prestation LE CLUB', '', '4.5'),
(10, '48543747', '1452553200', 'Vente de Billetterie: BUCETA NICOLAS pour la prestation LE CLUB', '', '18'),
(11, '77356315', '1452553200', 'Vente de Billetterie: LABOUYRIE NATHALIE pour la prestation LE CLUB', '', '9'),
(12, '76052563', '1452812400', 'Vente de Billetterie: DUFOURCQ FREDERIC pour la prestation LE CLUB', '', '9'),
(14, '98250283', '1452812400', 'Vente de Billetterie: MORNET RICHARD pour la prestation LE CLUB', '', '27'),
(15, '81122071', '1452812400', 'Vente de Billetterie: JAY PASCAL pour la prestation LE CLUB', '', '27'),
(16, '38738648', '1452812400', 'Vente de Billetterie: DE SA DAVID pour la prestation LE CLUB', '', '27'),
(17, '84833259', '1453158000', 'Vente de Billetterie: TARDITS ALAIN pour la prestation LE CLUB', '', '22.5'),
(18, '6994194514', '1453071600', 'Achat - LE CLUB', '570', ''),
(20, '49100647', '1453417200', 'Vente de Billetterie: THEYS THIERRY pour la prestation LE CLUB', '', '27'),
(21, '4680026', '1452812400', 'Vente de Billetterie: REIJASSE SEBASTIEN pour la prestation LE CLUB', '', '18'),
(22, '7818935', '1453158000', 'Vente de Billetterie: COURCIER PHILIPPE pour la prestation LE CLUB', '', '9'),
(23, '46637345', '1453330800', 'Vente de Billetterie: ROUX SEBASTIEN pour la prestation LE CLUB', '', '27'),
(24, '10482241', '1453417200', 'Vente de Billetterie: PRAT VINCENT pour la prestation LE CLUB', '', '18'),
(27, '18473981', '1453417200', 'Vente de Billetterie: PEREZ FRANCISCO pour la prestation TOUT FOURNISSEUR EXTERIEUR - ETS DESTRIBATS', '', '139.66'),
(28, '57414991', '1453417200', 'Vente de Billetterie: TOURNIER STEPHANE pour la prestation LE CLUB', '', '27'),
(29, '16674774', '1453417200', 'Vente de Billetterie: SELMES LAURENT pour la prestation AYGUE BLUE ADULTE', '', '18'),
(30, '3033713824', '1451602800', 'Achat - AYGUEBLUE BE', '67', ''),
(31, '8545865118', '1451602800', 'Achat - AYGUE BLUE ADULTE', '58.5', ''),
(32, '61714444', '1453417200', 'Vente de Billetterie: DEZELU JULIEN pour la prestation LE CLUB', '', '22.5'),
(34, '37685182412', '1451602800', 'Remboursement de la Prestation pour MIRAMBEAU DAVID - PARTICIPATION LICENCE FOOTBALL', '30', ''),
(35, '8066763', '1452812400', 'Vente de Billetterie: DE SA DAVID pour la prestation PART SALARIALE ANCV - 1 ER VERSEMENT', '', '120'),
(36, '61293628', '1452726000', 'Vente de Billetterie: LECHAUDEE-CORBAY STEPHANE pour la prestation PART SALARIALE ANCV', '', '180'),
(37, '40522797', '1452726000', 'Vente de Billetterie: LECHAUDEE-CORBAY STEPHANE pour la prestation CHARGE CE ANCV ', '', '0'),
(38, '61981184', '1452726000', 'Vente de Billetterie: DE SA DAVID pour la prestation CHARGE CE ANCV ', '', '0'),
(39, '74739459', '1452812400', 'Vente de Billetterie: LABORDE THIERRY pour la prestation PART SALARIALE ANCV', '', '280'),
(40, '69854968', '1452812400', 'Vente de Billetterie: LABORDE THIERRY pour la prestation CHARGE CE ANCV ', '', '0'),
(41, '6825878257', '1451516400', 'SOLDE BANQUE ', '', '7195.15'),
(42, '7568727648', '1452121200', 'SUBVENTION 01', '', '3490.79'),
(43, '111830858514', '1453676400', 'Remboursement de la Prestation pour LAPENU CLAUDE - LICENCE FFPJP', '30', ''),
(44, '131403522566', '1453676400', 'Remboursement de la Prestation pour TOULET ALINE - FFPJP', '30', ''),
(45, '975000706966', '1453676400', 'Remboursement de la Prestation pour DELAS VALERIE - PLACE RUGBY FRANCE IRLANDE', '30', ''),
(46, '600432470906', '1453676400', 'Remboursement de la Prestation pour FOMBELLIDA JEAN MICHEL - KARATE CLUB ', '30', ''),
(47, '44327147771', '1453676400', 'Remboursement de la Prestation pour FERNANDES FRANCIS - FFPJP LICENCE', '30', ''),
(48, '469961204100', '1453676400', 'Remboursement de la Prestation pour DUFILLON NICOLAS - SEJOUR PEDAGOGIQUE POUR LORIS', '30', ''),
(49, '286478976254', '1453676400', 'Remboursement de la Prestation pour THOORIS DIDIER - CD MUSIQUE', '30', ''),
(50, '29232436', '1453676400', 'Vente de Billetterie: LAUSSU DENIS pour la prestation SOURCEO', '', '40'),
(56, '4171844474', '1453417200', 'Achat - AYGUEBLUE ADULTE TARIF 2016', '54', ''),
(58, '23736549', '1451602800', 'FRAIS UPCM LE CLUB', '30.00', ''),
(61, '4693390839', '1451602800', 'Achat - JOUE CLUB 20&euro;', '540', ''),
(62, '2800879148', '1451602800', 'Achat - JOUE CLUB 30&euro;', '918', ''),
(63, '184944440611', '1453762800', 'Remboursement de la Prestation pour CARRASCO FREDERIC - LICENCE FFPJP', '30', ''),
(64, '35324162', '1453762800', 'Vente de Billetterie: LE NAOUR PHILIPPE pour la prestation SOURCEO', '', '20'),
(65, '3150172103', '1452898800', 'ASSEMBLEE GENERALE ANIMATION', '500', ''),
(66, '1422406203', '1452898800', 'ASSEMBLEE GENERALE REPAS CONJOINTS SALARIES', '1300.79', ''),
(67, '9338337378', '1452898800', 'ASSEMBLEE GENERALE REPAS CONJOINTS SALARIES', '78.21', ''),
(69, '90908468', '1454022000', 'Vente de Billetterie: MEDINA STEPHANE pour la prestation LE CLUB', '', '18'),
(73, '54651310', '1454367600', 'Vente de Billetterie: GUYONNAUD BERNARD pour la prestation LE CLUB', '', '9'),
(74, '658036364', '1454540400', 'Achat - CGR TARNOS BAYONNE', '32', ''),
(76, '18174526', '1454540400', 'Vente de Billetterie: BELIN DAMIEN pour la prestation TOUT FOURNISSEUR EXTERIEUR - SAVILEM', '', '32'),
(77, '94468188', '1454626800', 'Vente de Billetterie: LALANDE JEAN PHILIPPE pour la prestation LE CLUB', '', '18'),
(78, '38359917', '1454626800', 'Vente de Billetterie: LABORDE THIERRY pour la prestation LE CLUB', '', '27'),
(79, '34384544', '1454626800', 'Vente de Billetterie: LUCIDO JEAN LUC pour la prestation TOUT FOURNISSEUR EXTERIEUR - SAVILEM', '', '40'),
(80, '26505023', '1454626800', 'Vente de Billetterie: GRENTE-LENGAGNE CATHERINE pour la prestation LE KURSAAL', '', '10.5'),
(81, '8817892', '1454626800', 'Vente de Billetterie: THOMAS LAURENT pour la prestation CGR TARNOS BAYONNE', '', '22.5'),
(82, '14515265', '1454972400', 'Vente de Billetterie: THEYS THIERRY pour la prestation LE CLUB', '', '27'),
(83, '4824050', '1454972400', 'Vente de Billetterie: LAUDIERES PHILIPPE pour la prestation TOUT FOURNISSEUR EXTERIEUR - SAVILEM', '', '16'),
(87, '89296163', '1454972400', 'Vente de Billetterie: BAREYT PASCALE pour la prestation CGR TARNOS BAYONNE', '', '18'),
(89, '22797709', '1454972400', 'Vente de Billetterie: DARJO SEBASTIEN pour la prestation AYGUEBLUE ADULTE TARIF 2016', '', '6'),
(90, '47913130', '1454972400', 'Vente de Billetterie: ALBERTINI DIDIER pour la prestation TOUT FOURNISSEUR EXTERIEUR - SAVILEM', '', '16'),
(93, '17688719', '1455231600', 'Vente de Billetterie: FABRE STEPHANE pour la prestation LE CLUB', '', '18'),
(100, '35028038', '1453417200', 'Vente de Billetterie: DEZELU JULIEN pour la prestation LE CLUB', '', '22.5'),
(101, '76274355', '1455231600', 'Vente de Billetterie: DEZELU JULIEN pour la prestation LE CLUB', '', '22.5'),
(102, '6913362', '1455231600', 'Vente de Billetterie: BAUVY BRUNO pour la prestation TOUT FOURNISSEUR EXTERIEUR - savilem', '', '24'),
(106, '22101302', '1455577200', 'Vente de Billetterie: CAETANO MARTINS JOSE VANTUIR pour la prestation LE CLUB', '', '18'),
(108, '97379482', '1455577200', 'Vente de Billetterie: LUCIDO SEBASTIEN pour la prestation LE CLUB', '', '27'),
(109, '71962377', '1455577200', 'Vente de Billetterie: CHARRIEAU MATHIEU pour la prestation LE CLUB', '', '18'),
(111, '66375425', '1455577200', 'Vente de Billetterie: CUZACQ GREGORY pour la prestation AYGUEBLUE ADULTE TARIF 2016', '', '6'),
(112, '44596714', '1455577200', 'Vente de Billetterie: CUZACQ GREGORY pour la prestation AYGUEBLUE ENFANT TARIF 2016', '', '2'),
(114, '13048485', '1455577200', 'Vente de Billetterie: DESSARPS THIBAULT pour la prestation CGR TARNOS BAYONNE', '', '13.5'),
(115, '31820483', '1455577200', 'Vente de Billetterie: CUZACQ GREGORY pour la prestation LE CLUB', '', '9'),
(116, '10316417', '1455577200', 'Vente de Billetterie: CUZACQ GREGORY pour la prestation AYGUEBLUE ADULTE TARIF 2016', '', '6'),
(120, '7061523', '1455577200', 'Vente de Billetterie: CUZACQ GREGORY pour la prestation LE CLUB', '', '9'),
(121, '94926641', '1455577200', 'Vente de Billetterie: CUZACQ GREGORY pour la prestation AYGUEBLUE ADULTE TARIF 2016', '', '6'),
(127, '725406764', '1455577200', 'Vente de Billetterie: TOULET ALINE pour la prestation LE CLUB', '', '27'),
(128, '91190683', '1455663600', 'Vente de Billetterie: DEZELU JULIEN pour la prestation LE CLUB', '', '4.5'),
(129, '726325179', '1455663600', 'Vente de Billetterie: DUFILLON NICOLAS pour la prestation LE CLUB', '', '22.5'),
(130, '7566031944', '1454626800', 'Achat - CGR TARNOS BAYONNE', '115.2', ''),
(131, '4573483467', '1454022000', 'Achat - TOUT FOURNISSEUR EXTERIEUR', '168', ''),
(132, '6702226521', '1454626800', 'SUBVENTION 02', '', '3636.19'),
(133, '11955599', '1455577200', 'Vente de Billetterie: CUZACQ GREGORY pour la prestation LE CLUB', '', '9'),
(134, '25040158', '1455577200', 'Vente de Billetterie: CUZACQ GREGORY pour la prestation AYGUEBLUE ADULTE TARIF 2016', '', '6'),
(135, '93823525', '1455577200', 'Vente de Billetterie: CUZACQ GREGORY pour la prestation AYGUEBLUE ENFANT TARIF 2016', '', '2'),
(136, '646509517408', '1455750000', 'VENTE NON RESIDENTE pour LAPENU CLAUDE pour la prestation VOYAGE PUY DU FOU', '', '200'),
(137, '933639994007', '1455750000', 'VENTE NON RESIDENTE pour DEZELU JULIEN pour la prestation VOYAGE PDF', '', '50'),
(138, '335840307002', '1455750000', 'VENTE NON RESIDENTE pour BERNARD ROMAIN pour la prestation VOYAGE PDF', '', '75'),
(139, '340144385911', '1455750000', 'VENTE NON RESIDENTE pour LE NAOUR PHILIPPE pour la prestation VOYAGE PDF', '', '40'),
(140, '488775564257', '1455750000', 'VENTE NON RESIDENTE pour DE SA DAVID pour la prestation V', '', '100'),
(141, '5599407733', '1455750000', 'VENTE NON RESIDENTE pour DEJEAN CYRIL pour la prestation VOYAGE PDF', '', '200'),
(142, '921320964999', '1455750000', 'VENTE NON RESIDENTE pour DEJEAN CYRIL pour la prestation VOYAGE PDF', '', '50'),
(143, '899782959614', '1455750000', 'VENTE NON RESIDENTE pour LAFITTE JEAN JOSEPH pour la prestation VOYAGE PDF', '', '150'),
(144, '192469391699', '1455750000', 'VENTE NON RESIDENTE pour DOUET ANDRE pour la prestation VOYAGE PDF', '', '200'),
(145, '560532324656', '1455750000', 'VENTE NON RESIDENTE pour TOURNIER STEPHANE pour la prestation VOYAGE PDF', '', '50'),
(147, '788244172220', '1455750000', 'VENTE NON RESIDENTE pour REIJASSE SEBASTIEN pour la prestation VOYAGE PDF', '', '60'),
(148, '915407266545', '1455750000', 'VENTE NON RESIDENTE pour REIMMEL RAOUL pour la prestation VOYAGE PDF', '', '300'),
(149, '979667559902', '1455750000', 'VENTE NON RESIDENTE pour MIRAMBEAU DAVID pour la prestation VOYAGE PDF', '', '100'),
(150, '757822666320', '1455750000', 'VENTE NON RESIDENTE pour DELAS VALERIE pour la prestation VOYAGE PDF', '', '200'),
(151, '6247450113', '1454194800', 'Achat - TOUT FOURNISSEUR EXTERIEUR', '139.66', ''),
(152, '24205935', '1455750000', 'Vente de Billetterie: DARJO SEBASTIEN pour la prestation LE CLUB', '', '18'),
(153, '753485347', '1452553200', 'VIREMENT DU FONCTIONNEMENT SODAC MAL VERSE', '', '830.43'),
(154, '2673346848', '1453244400', 'REMISE SAVILEM AVNT LOGICIEL', '', '96'),
(155, '7601808873', '1453244400', 'REMISE CHEQUE AVANT LOGICIEL', '', '389.50'),
(156, '9971869704', '1453244400', 'REMISE PIERRE ET VACANCES AVANT LOGICIEL', '', '200'),
(157, '7450728942', '1453244400', 'REMISE MATHON AVANT LOGICIEL', '', '4.79'),
(158, '6506518717', '1453244400', 'REMISE ESPECES AVANT LOGICIEL', '', '160'),
(159, '470148284', '1453762800', 'COTISATION CARTE BANQUAIRE', '108.00', ''),
(160, '8891378473', '1451948400', 'CHEQUE DE 2015 1793696', '3.8', ''),
(161, '6159140500', '1452812400', 'CHEQUE DE 2015 1793698', '30', ''),
(162, '5812280495', '1453071600', 'CHEQUE DE 2015 1793710', '30', ''),
(163, '5025677197', '1453935600', 'CHEQUE DE 2015 1793712', '123.49', ''),
(164, '9614983103', '1452207600', 'CHEQUE DE 2015 1793715', '225', ''),
(165, '737919882', '1451862000', 'CHEQUE DE 2015 3821127', '30', ''),
(166, '3554144986', '1452639600', 'CHEQUE DE 2015 3821128', '30', ''),
(167, '4104964221', '1453071600', 'CHEQUE DE 2015 3821131', '2500', ''),
(168, '7648325003', '1452639600', 'CHEQUE DE 2015 3821132', '30', ''),
(169, '6048570610', '1452121200', 'CHEQUE DE 2015 3821133', '30', ''),
(170, '7020754134', '1452207600', 'CHEQUE DE 2015 3821136', '197.07', ''),
(171, '8844571001', '1451948400', 'CHEQUE DE 2015 3821137', '10.40', ''),
(172, '9603909296', '1453158000', 'CHEQUE DE 2015 3821138', '450', ''),
(173, '4399223514', '1453762800', 'CHEQUE DE 2015 3821139', '30', ''),
(174, '35287084', '1455750000', 'Vente de Billetterie: LASSERRE YVES pour la prestation TOUT FOURNISSEUR EXTERIEUR - REGLEMENT BILLETTERIE 2015', '', '18'),
(176, '52122256', '1455750000', 'Vente de Billetterie: FEZANCIEUX ERIC pour la prestation PART SALARIALE ANCV', '', '144'),
(177, '57786909', '1455836400', 'Vente de Billetterie: LE NAOUR PHILIPPE pour la prestation LE CLUB', '', '13.5'),
(178, '10056357', '1455836400', 'Vente de Billetterie: CHINESTRA MICHEL pour la prestation TOUT FOURNISSEUR EXTERIEUR - MADELEINE BIJOU', '', '27.8'),
(179, '29705911', '1455836400', 'Vente de Billetterie: PICHENET JEAN-FRANCOIS pour la prestation LE CLUB', '', '4.5'),
(180, '26837958', '1455836400', 'Vente de Billetterie: DEYRES JOEL pour la prestation LE CLUB', '', '27');

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
(3, 'FOURNISSEURS EXTERIEURS'),
(4, 'UCPM'),
(5, 'ANCV'),
(8, 'CHEQUE CADEAU');

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

--
-- Contenu de la table `ligne_billet_n_salarie`
--

INSERT INTO `ligne_billet_n_salarie` (`idlignebilletnsalarie`, `idbilletnsalarie`, `nom_prestation`, `part_salarie`, `part_ce`) VALUES
(22, 18, 'VOYAGE PUY DU FOU', '200', '0'),
(23, 31, 'VOYAGE PDF', '50', '0'),
(24, 30, 'VOYAGE PDF', '75', '0'),
(25, 29, 'VOYAGE PDF', '40', '0'),
(26, 28, 'V', '100', '0'),
(27, 27, 'VOYAGE PDF', '200', '0'),
(28, 26, 'VOYAGE PDF', '50', '0'),
(29, 25, 'VOYAGE PDF', '150', '0'),
(30, 24, 'VOYAGE PDF', '200', '0'),
(31, 23, 'VOYAGE PDF', '50', '0'),
(33, 22, 'VOYAGE PDF', '60', '0'),
(34, 21, 'VOYAGE PDF', '300', '0'),
(35, 20, 'VOYAGE PDF', '100', '0'),
(36, 19, 'VOYAGE PDF', '200', '0');

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
(1, 1, 1, '2', '9', '2.4', 0, ''),
(3, 3, 1, '6', '27', '7.2', 0, ''),
(4, 4, 1, '3', '13.5', '3.6', 0, ''),
(6, 6, 1, '6', '27', '7.2', 0, ''),
(7, 7, 1, '1', '4.5', '1.2', 0, ''),
(8, 8, 1, '4', '18', '4.8', 0, ''),
(9, 9, 1, '2', '9', '2.4', 0, ''),
(10, 10, 1, '2', '9', '2.4', 0, ''),
(12, 12, 1, '6', '27', '7.2', 0, ''),
(13, 13, 1, '6', '27', '7.2', 0, ''),
(14, 14, 1, '6', '27', '7.2', 0, ''),
(15, 15, 1, '5', '22.5', '6', 0, ''),
(16, 16, 1, '6', '27', '7.2', 0, ''),
(17, 17, 1, '4', '18', '4.8', 0, ''),
(18, 18, 1, '2', '9', '2.4', 0, ''),
(19, 19, 1, '6', '27', '7.2', 0, ''),
(20, 20, 1, '4', '18', '4.8', 0, ''),
(23, 22, 2, '139.66', '139.66', '0', 0, 'ETS DESTRIBATS'),
(24, 23, 1, '6', '27', '7.2', 0, ''),
(25, 24, 4, '6', '18', '5.4', 0, ''),
(27, 26, 7, '120', '120', '0', 0, '1 ER VERSEMENT'),
(28, 27, 7, '180', '180', '0', 0, ''),
(29, 28, 8, '120', '0', '120', 0, ''),
(30, 29, 8, '80', '0', '80', 0, ''),
(31, 30, 7, '280', '280', '0', 0, ''),
(32, 31, 8, '120', '0', '120', 0, ''),
(33, 33, 10, '4', '40', '7.6', 0, ''),
(34, 35, 10, '2', '20', '3.8', 0, ''),
(36, 36, 1, '4', '18', '4.8', 0, ''),
(40, 38, 1, '2', '9', '2.4', 0, ''),
(42, 39, 2, '32', '32', '0', 0, 'SAVILEM'),
(43, 40, 1, '4', '18', '4.8', 0, ''),
(44, 41, 1, '6', '27', '7.2', 0, ''),
(45, 42, 2, '40', '40', '0', 0, 'SAVILEM'),
(46, 43, 9, '3', '10.5', '3', 0, ''),
(47, 44, 17, '5', '22.5', '9.5', 0, ''),
(48, 45, 1, '6', '27', '7.2', 0, ''),
(49, 46, 2, '16', '16', '0', 0, 'SAVILEM'),
(52, 47, 17, '4', '18', '7.6', 0, ''),
(54, 49, 11, '2', '6', '1.2', 0, ''),
(55, 48, 2, '16', '16', '0', 0, 'SAVILEM'),
(58, 51, 1, '4', '18', '4.8', 0, ''),
(65, 25, 1, '5', '22.5', '6', 0, ''),
(66, 57, 1, '5', '22.5', '6', 0, ''),
(67, 58, 2, '24', '24', '0', 0, 'savilem'),
(71, 62, 1, '4', '18', '4.8', 0, ''),
(73, 64, 1, '6', '27', '7.2', 0, ''),
(74, 65, 1, '4', '18', '4.8', 0, ''),
(79, 68, 17, '3', '13.5', '5.7', 0, ''),
(92, 77, 1, '6', '27', '7.2', 0, ''),
(93, 78, 1, '1', '4.5', '1.2', 0, ''),
(94, 79, 1, '5', '22.5', '6', 0, ''),
(95, 81, 1, '2', '9', '2.4', 0, ''),
(96, 82, 11, '2', '6', '1.2', 0, ''),
(97, 83, 13, '1', '2', '0.45', 0, ''),
(98, 84, 1, '4', '18', '4.8', 0, ''),
(99, 85, 2, '18', '18', '0', 0, 'REGLEMENT BILLETTERIE 2015'),
(100, 86, 7, '144', '144', '0', 0, ''),
(101, 87, 1, '3', '13.5', '3.6', 0, ''),
(102, 88, 2, '27.80', '27.8', '0', 0, 'MADELEINE BIJOU'),
(103, 89, 1, '1', '4.5', '1.2', 0, ''),
(104, 90, 1, '6', '27', '7.2', 0, '');

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
(2, 'pascalebareyt', '532373ca2406c71bdc89e6e734ff6c2b', 1),
(3, 'Jean Louis', '2c1010a215bd9e8f3c6f33f58a03402a', 1),
(4, 'bruno', '2ed7faa84750ce856ca75a2b60b8a712', 1),
(5, 'SÃ©bastien', '7edeafe34b5b605589cdbb494218a998', 1);

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
(1, 1, 'LE CLUB', '01-01-2016', '15-07-2016', '4.5', '1.2', '5.7', '6', '3', 0),
(2, 3, 'TOUT FOURNISSEUR EXTERIEUR', '01-01-2016', '31-12-2016', '1', '0', '1', '10000', '999994.2', 0),
(7, 5, 'PART SALARIALE ANCV', '01-01-2016', '31-12-2016', '1', '0', '1', '1000', '999276', 0),
(8, 5, 'CHARGE CE ANCV ', '01-01-2016', '31-12-2016', '0', '1', '1', '1000', '99680', 0),
(9, 1, 'LE KURSAAL', '01-01-2016', '31-12-2016', '3.50', '1.00', '4.5', '6', '36', 0),
(10, 4, 'SOURCEO', '01-01-2016', '31-12-2016', '10', '1.90', '11.9', '6', '6', 0),
(11, 4, 'AYGUEBLUE ADULTE TARIF 2016', '25-01-2016', '31-12-2016', '3', '0.60', '3.6', '6', '10', 0),
(12, 4, 'AYGUEBLUE BE TARIF 2016', '25-01-2016', '31-12-2016', '6', '0.30', '6.3', '6', '10', 0),
(13, 4, 'AYGUEBLUE ENFANT TARIF 2016', '25-01-2016', '31-12-2016', '2', '0.45', '2.45', '6', '13', 0),
(15, 8, 'JOUE CLUB 20&euro;', '01-01-2016', '25-01-2016', '0', '18', '18', '10', '30', 0),
(16, 8, 'JOUE CLUB 30&euro;', '01-01-2016', '31-12-2016', '0', '27', '27', '10', '34', 0),
(17, 1, 'CGR TARNOS BAYONNE', '04-02-2016', '02-08-2016', '4.50', '1.90', '6.4', '6', '11', 0);

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
(1, 'SOLDE BANQUE ', '31-12-2015', '7195.15', '6825878257'),
(2, 'SUBVENTION 01', '07-01-2016', '3490.79', '7568727648'),
(3, 'SUBVENTION 02', '05-02-2016', '3636.19', '6702226521'),
(4, 'VIREMENT DU FONCTIONNEMENT SODAC MAL VERSE', '12-01-2016', '830.43', '753485347'),
(5, 'REMISE SAVILEM AVNT LOGICIEL', '20-01-2016', '96', '2673346848'),
(6, 'REMISE CHEQUE AVANT LOGICIEL', '20-01-2016', '389.50', '7601808873'),
(7, 'REMISE PIERRE ET VACANCES AVANT LOGICIEL', '20-01-2016', '200', '9971869704'),
(8, 'REMISE MATHON AVANT LOGICIEL', '20-01-2016', '4.79', '7450728942'),
(9, 'REMISE ESPECES AVANT LOGICIEL', '20-01-2016', '160', '6506518717');

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

--
-- Contenu de la table `reg_billet_n_salarie`
--

INSERT INTO `reg_billet_n_salarie` (`idregbilletnsalarie`, `idbilletnsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`, `num_mouvement`) VALUES
(13, 18, 1, '200', 'LA POSTE', 'LAPENU CLAUDE', '155448019', 0, '646509517408'),
(14, 31, 3, '50', '', 'DEZELU JULIEN', '592858217', 0, '933639994007'),
(16, 30, 1, '75', 'CREDIT AGRICOLE', 'BERNARD ROMAIN', '3460650', 0, '335840307002'),
(17, 29, 1, '40', 'CREDIT MUTUEL', 'LE NAOUR PHILIPPE', '5631048', 0, '340144385911'),
(18, 28, 1, '100', 'SOCIETE GENERALE', 'DE SA DAVID', '351', 0, '488775564257'),
(19, 27, 1, '200', 'BNP', 'DEJEAN CYRIL', '8952203', 0, '5599407733'),
(20, 26, 1, '50', 'BNP', 'DEJEAN CYRIL', '8952205', 0, '921320964999'),
(21, 25, 1, '150', 'CAISSE EPARGNE', 'LAFITTE JEAN JOSEPH', '1936253', 0, '899782959614'),
(22, 24, 2, '200', 'LA POSTE', 'DOUET ANDRE', '155679016', 0, '192469391699'),
(23, 23, 1, '50', 'BANQUE POPULAIRE', 'TOURNIER STEPHANE', '0273723', 0, '560532324656'),
(24, 22, 1, '60', 'BNP', 'REIJASSE SEBASTIEN', '1100158', 0, '788244172220'),
(25, 21, 1, '300', 'CAISSE EPARGNE', 'REIMMEL RAOUL', '5490554', 0, '915407266545'),
(26, 20, 1, '100', 'LA POSTE', 'MIRAMBEAU DAVID', '5692021', 0, '979667559902'),
(27, 19, 1, '200', 'CAISSE EPARGNE', 'DELAS VALERIE', '4923073', 0, '757822666320');

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

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`, `num_mouvement`) VALUES
(1, 1, 3, '9', '', 'CAZADIEU NADINE', '756662418', 1, '61853064'),
(2, 3, 1, '27', 'NON RELEVE', 'DOUSSY MATHIEU', 'NON RELEVE', 0, '41995939'),
(4, 4, 3, '13.5', '', 'VOGELGESANG ANDRE', '698747102', 1, '65538118'),
(6, 7, 3, '4.5', '', 'VOGELGESANG ANDRE', '182475906', 1, '11954203'),
(7, 6, 1, '27', 'LA POSTE', 'VELLARD JONATHAN', '133467029 G', 1, '28342983'),
(8, 9, 3, '9', '', 'LABOUYRIE NATHALIE', '478844383', 1, '77356315'),
(10, 8, 1, '18', 'LA BANQUE POSTALE', 'BUCETA NICOLAS', '14 4442037 F', 1, '48543747'),
(11, 10, 3, '9', '', 'DUFOURCQ FREDERIC', '370226029', 1, '76052563'),
(14, 12, 3, '27', '', 'MORNET RICHARD', '987523941', 1, '98250283'),
(15, 13, 1, '27', 'ING DIRECT', 'JAY PASCAL', '2795760', 1, '81122071'),
(16, 14, 1, '27', 'SOCIETE GENERALE', 'DE SA DAVID', '0000353', 1, '49100647'),
(17, 16, 3, '27', '', 'THEYS THIERRY', '920272880', 1, '4680026'),
(18, 18, 3, '9', '', 'COURCIER PHILIPPE', '327561334', 1, '7818935'),
(20, 19, 1, '27', 'SOCIETE GENERALE', 'ROUX SEBASTIEN', '0001182', 1, '46637345'),
(21, 20, 1, '18', 'CREDIT AGRICOLE', 'PRAT VINCENT', '0000683', 1, '10482241'),
(22, 15, 3, '22.5', '', 'TARDITS ALAIN', '564477314', 1, '84833259'),
(24, 22, 1, '139.66', 'CREDIT AGRICOLE', 'PEREZ FRANCISCO', '3194759', 1, '18473981'),
(25, 23, 1, '27', 'BANQUE POPULAIRE', 'TOURNIER STEPHANE', '0273727', 1, '57414991'),
(26, 24, 3, '18', '', 'SELMES LAURENT', '435543705', 1, '16674774'),
(27, 26, 1, '120', 'SG', 'DE SA DAVID', '0000352', 0, '8066763'),
(28, 27, 1, '180', 'BANQUE POPULAIRE', 'LECHAUDEE-CORBAY STEPHANE', '000259', 0, '61293628'),
(29, 30, 1, '280', 'SOCIETE GENERALE', 'LABORDE THIERRY', '0003614', 0, '74739459'),
(30, 35, 1, '20', 'credit mutuel', 'LE NAOUR PHILIPPE', '5631044', 1, '35324162'),
(32, 38, 3, '9', '', 'GUYONNAUD BERNARD', '217486724', 1, '54651310'),
(33, 36, 1, '18', 'CAISSE D''EPARGNE', 'MEDINA STEPHANE', '2255821', 1, '90908468'),
(34, 39, 3, '32', '', 'BELIN DAMIEN', '671664249', 1, '18174526'),
(35, 43, 1, '10.5', 'CREDIT AGRICOLE', 'GRENTE-LENGAGNE CATHERINE', '4109720', 1, '26505023'),
(36, 44, 1, '22.5', 'LCL', 'THOMAS LAURENT', '742262', 1, '8817892'),
(37, 45, 3, '27', '', 'THEYS THIERRY', '928628488', 1, '14515265'),
(38, 47, 3, '18', '', 'BAREYT PASCALE', '457477663', 1, '89296163'),
(39, 49, 3, '6', '', 'DARJO SEBASTIEN', '115573673', 1, '22797709'),
(40, 48, 1, '16', 'CREDIT AGRICOLE', 'ALBERTINI DIDIER', '8570439', 1, '47913130'),
(41, 46, 3, '16', '', 'LAUDIERES PHILIPPE', '868939830', 1, '4824050'),
(42, 51, 3, '18', '', 'FABRE STEPHANE', '909382093', 1, '17688719'),
(43, 25, 3, '22.5', '', 'DEZELU JULIEN', '466964920', 1, '35028038'),
(44, 57, 3, '22.5', '', 'DEZELU JULIEN', '776766605', 1, '76274355'),
(45, 58, 3, '24', '', 'BAUVY BRUNO', '568066676', 1, '6913362'),
(46, 40, 1, '18', 'CREDIT AGRICOLE', 'LALANDE JEAN PHILIPPE', '7763859', 1, '94468188'),
(47, 41, 1, '27', 'SOCIETE GENERALE', 'LABORDE THIERRY', '0003615', 1, '38359917'),
(48, 64, 1, '27', 'CREDIT AGRICOLE', 'LUCIDO SEBASTIEN', '2457254', 1, '97379482'),
(49, 65, 3, '18', '', 'CHARRIEAU MATHIEU', '595591643', 0, '71962377'),
(50, 68, 3, '13.5', '', 'DESSARPS THIBAULT', '143862334', 1, '13048485'),
(51, 77, 1, '27', 'CIC', 'TOULET ALINE', '3733266', 1, '725406764'),
(52, 79, 3, '22.5', '', 'DUFILLON NICOLAS', '525850875', 0, '726325179'),
(53, 42, 1, '40', 'CREDIT AGRICOLE', 'LUCIDO JEAN LUC', '2331892', 1, '34384544'),
(54, 81, 1, '9', 'LA BANQUE POSTALE', 'CUZACQ GREGORY', '5475029', 1, '11955599'),
(55, 82, 1, '6', 'LA BANQUE POSTALE', 'CUZACQ GREGORY', '5475029', 1, '25040158'),
(56, 83, 1, '2', 'LA BANQUE POSTALE', 'CUZACQ GREGORY', '5475029', 1, '93823525'),
(57, 85, 1, '18', 'BANQUE POPULAIRE', 'LASSERRE YVES', '544', 0, '35287084'),
(58, 86, 1, '144', 'LA BANQUE POSTALE', 'FEZANCIEUX ERIC', '5611044 1045 1046', 1, '52122256'),
(59, 84, 1, '18', 'CREDIT AGRICOLE', 'DARJO SEBASTIEN', '6072654', 0, '24205935'),
(60, 87, 1, '13.5', 'credit mutuel', 'LE NAOUR PHILIPPE', '5631053', 0, '57786909'),
(61, 88, 1, '27.8', 'LA BANQUE POSTALE', 'CHINESTRA MICHEL', '5615080', 0, '10056357'),
(62, 89, 3, '4.5', '', 'PICHENET JEAN-FRANCOIS', '392539071', 0, '29705911'),
(63, 90, 1, '27', 'CREDIT AGRICOLE', 'DEYRES JOEL', '6768095', 0, '26837958');

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
(1, 1, '30,00', '1793688'),
(2, 2, '30,00', '08655174'),
(3, 3, '30,00', '0865175'),
(4, 4, '30,00', '0865176'),
(5, 5, '30,00', '0865177'),
(6, 6, '30,00', '0865178'),
(7, 7, '30,00', '0865179'),
(8, 8, '30,00', '0865180'),
(9, 9, '30,00', '0865181');

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

--
-- Contenu de la table `remb_salarie`
--

INSERT INTO `remb_salarie` (`idrembsalarie`, `idsalarie`, `prestation`, `date_vente`, `montant_prestation`, `part_ce`, `etat_facture`, `num_mouvement`) VALUES
(1, 167, 'PARTICIPATION LICENCE FOOTBALL', '01-01-2016', '50', '30', 1, '37685182412'),
(2, 136, 'LICENCE FFPJP', '25-01-2016', '50', '30', 1, '111830858514'),
(3, 212, 'FFPJP', '25-01-2016', '50', '30', 1, '131403522566'),
(4, 65, 'PLACE RUGBY FRANCE IRLANDE', '25-01-2016', '80', '30', 1, '975000706966'),
(5, 94, 'KARATE CLUB ', '25-01-2016', '245', '30', 1, '600432470906'),
(6, 92, 'FFPJP LICENCE', '25-01-2016', '50', '30', 1, '44327147771'),
(7, 81, 'SEJOUR PEDAGOGIQUE POUR LORIS', '25-01-2016', '156', '30', 1, '469961204100'),
(8, 210, 'CD MUSIQUE', '25-01-2016', '33.98', '30', 1, '286478976254'),
(9, 31, 'LICENCE FFPJP', '26-01-2016', '50', '30', 1, '184944440611');

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

--
-- Contenu de la table `remise_banque`
--

INSERT INTO `remise_banque` (`idremisebanque`, `date_remise`, `type_remise`, `num_remise`, `montant_remise`, `valid`) VALUES
(1, '18-02-2016', 1, '6932830', '0', 0),
(2, '18-02-2016', 1, '6932831', '139.66', 1),
(3, '18-02-2016', 2, '3570139', '0', 0),
(4, '18-02-2016', 2, '3570141', '357', 1),
(5, '18-02-2016', 1, '6932832', '414', 1),
(6, '18-02-2016', 1, '6932833', '144', 1);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE `remise_banque_chq` (
  `idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `remise_banque_chq`
--

INSERT INTO `remise_banque_chq` (`idremisebanquechq`, `idremisebanque`, `num_mouvement`) VALUES
(1, 2, '84833259'),
(2, 5, '29232436'),
(3, 5, '35324162'),
(4, 5, '57414991'),
(5, 5, '10482241'),
(6, 5, '46637345'),
(7, 5, '26505023'),
(8, 5, '49100647'),
(9, 5, '28342983'),
(10, 5, '81122071'),
(11, 5, '48543747'),
(12, 5, '34384544'),
(13, 5, '11955599'),
(14, 5, '25040158'),
(15, 5, '93823525'),
(16, 5, '725406764'),
(17, 5, '97379482'),
(18, 5, '38359917'),
(19, 5, '94468188'),
(20, 5, '47913130'),
(21, 5, '8817892'),
(22, 6, '52122256');

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE `remise_banque_esp` (
  `idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `remise_banque_esp`
--

INSERT INTO `remise_banque_esp` (`idremisebanqueesp`, `idremisebanque`, `num_mouvement`) VALUES
(1, 4, '61853064'),
(2, 4, '65538118'),
(3, 4, '77356315'),
(4, 4, '11954203'),
(5, 4, '76052563'),
(6, 4, '98250283'),
(7, 4, '4680026'),
(8, 4, '7818935'),
(9, 4, '84833259'),
(10, 4, '16674774'),
(11, 4, '54651310'),
(12, 4, '18174526'),
(13, 4, '14515265'),
(14, 4, '89296163'),
(15, 4, '22797709'),
(16, 4, '4824050'),
(17, 4, '17688719'),
(18, 4, '35028038'),
(19, 4, '76274355'),
(20, 4, '13048485'),
(21, 4, '6913362');

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
(2, '', 0, 'ADIEMOFF', 'VAHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(3, '', 0, 'AKNIN', 'THIERRY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(4, '', 0, 'ALBERTINI', 'DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(5, '', 0, 'ANDRE', 'PAUL ALEXANDRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(6, '', 0, 'ARREGUI', 'FRANCOIS-XAVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(7, '', 0, 'AUZEMERY', 'ERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(8, '', 0, 'BAHURLET', 'DANIEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(9, '', 0, 'BAREYT', 'PASCALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(10, '', 0, 'BATS', 'ARNAUD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(11, '', 0, 'BAUVY', 'BRUNO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(12, '', 0, 'BELIN', 'DAMIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(13, '', 0, 'BERBILLE', 'KARINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(14, '', 0, 'BERLON', 'JORDAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(15, '', 0, 'BERNACHOT', 'JACQUES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(16, '', 0, 'BERNARD', 'ROMAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(17, '', 0, 'BIREMONT', 'JEAN PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(18, '', 0, 'BONNEL', 'OLIVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(19, '', 0, 'BORTOLUZZI', 'EMILIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(20, '', 0, 'BOUISSET', 'FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(21, '', 0, 'BOUNAB', 'RACHID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(22, '', 0, 'BRACHET', 'GILLES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(23, '', 0, 'BRAVI', 'ALEXANDRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(24, '', 0, 'BRUNAUD', 'JEAN MARC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(25, '', 0, 'BUCETA', 'JOSE LUIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(26, '', 0, 'BUCETA', 'NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(27, '', 0, 'BUSQUET', 'SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(28, '', 0, 'CAETANO MARTINS', 'JOSE VANTUIR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(29, '', 0, 'CAPES', 'PIERRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(30, '', 0, 'CARIO', 'PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(31, '', 0, 'CARRASCO', 'FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '0'),
(32, '', 0, 'CARRASCO', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(33, '', 0, 'CASSEGRAIN', 'PASCALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(34, '', 0, 'CASTEL', 'ALEXANDRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(35, '', 0, 'CASTERA', 'MICHAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(36, '', 0, 'CATOIRE', 'MARC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(37, '', 0, 'CAULE', 'JEAN PAUL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(38, '', 0, 'CAZADE', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(39, '', 0, 'CAZADIEU', 'NADINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(40, '', 0, 'CAZENAVE', 'JEROME', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(41, '', 0, 'CAZENAVE', 'PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(42, '', 0, 'CHARRIEAU', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(43, '', 0, 'CHARRIEAU', 'MATHIEU', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(44, '', 0, 'CHAUTARD', 'JULIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(45, '', 0, 'CHEVALLEY', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(46, '', 0, 'CHINESTRA', 'MICHEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(47, '', 0, 'COURCIER', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(48, '', 0, 'COUSIN', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(49, '', 0, 'COUSSAU', 'JEAN LOUIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(50, '', 0, 'CRABANAT', 'ALEXANDRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(51, '', 0, 'CUZACQ', 'GREGORY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(52, '', 0, 'DA CONCEICAO', 'PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(53, '', 0, 'DA SILVA', 'JOSE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(54, '', 0, 'DANTHEZ', 'RICHARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(55, '', 0, 'DARJO', 'SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(56, '', 0, 'DARRIAU', 'MAX ALEXANDRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(57, '', 0, 'DARRICAU', 'SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(58, '', 0, 'DAVERAT', 'MARIE-JOSEE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(59, '', 0, 'DE ABREU PEREIRA', 'MANUEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(60, '', 0, 'DE LA HOS', 'GILLES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(61, '', 0, 'DE SA', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(62, '', 0, 'DEGOS', 'THIERRY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(63, '', 0, 'DEHEZ', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(64, '', 0, 'DEJEAN', 'CYRIL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(65, '', 0, 'DELAS', 'VALERIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '0'),
(66, '', 0, 'DELGADO', 'NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(67, '', 0, 'DELPECH', 'NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(68, '', 0, 'DELSOL', 'JEAN-BERNARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(69, '', 0, 'DESCAZAUX', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(70, '', 0, 'DESSARPS', 'THIBAULT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DD', 1, '30'),
(71, '', 0, 'DESTENAVE', 'SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(72, '', 0, 'DEYRES', 'JOEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(73, '', 0, 'DEZELU', 'JULIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(74, '', 0, 'DIDIER', 'THIBAUD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(75, '', 0, 'DINET', 'MICKAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DD', 1, '30'),
(76, '', 0, 'DONTENWILL', 'FABRICE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(77, '', 0, 'DOUET', 'ANDRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(78, '', 0, 'DOUSSY', 'MATHIEU', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(79, '', 0, 'DUCASSE', 'ERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(80, '', 0, 'DUCROS', 'ALAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(81, '', 0, 'DUFILLON', 'NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '0'),
(82, '', 0, 'DUFOURCQ', 'FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(83, '', 0, 'DURU', 'JEAN-PIERRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(84, '', 0, 'DUSSAUBAT', 'LUIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(85, '', 0, 'DUVIGNEAU', 'LAURENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(86, '', 0, 'DUVIGNEAU', 'MARIE HELENE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(87, '', 0, 'ESSIOMLE', 'FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(88, '', 0, 'FABRE', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(89, '', 0, 'FAISANCIEU', 'JEAN MARC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(90, '', 0, 'FAURENS', 'ALAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(91, '', 0, 'FERNANDES', 'JOELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(92, '', 0, 'FERNANDES', 'FRANCIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '0'),
(93, '', 0, 'FEZANCIEUX', 'ERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(94, '', 0, 'FOMBELLIDA', 'JEAN MICHEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '0'),
(95, '', 0, 'FONTAINE', 'GERVAIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(96, '', 0, 'FOUGERAY', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(97, '', 0, 'FRERE', 'PIERRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(98, '', 0, 'GADOU', 'VALERIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(99, '', 0, 'GARAT', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(100, '', 0, 'GAUTHIER', 'OLIVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(101, '', 0, 'GELEZ', 'MICHAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(102, '', 0, 'GERARD', 'PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(103, '', 0, 'GOLVEN', 'SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(104, '', 0, 'GONZALEZ', 'YVES-ALEXANDRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(105, '', 0, 'GRAFFI', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(106, '', 0, 'GRENTE-LENGAGNE', 'CATHERINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(107, '', 0, 'GUICHEMERRE', 'DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(108, '', 0, 'GUICHENEY', 'BRUNO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(109, '', 0, 'GUILHAUME', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(110, '', 0, 'GUINGANT', 'YANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(111, '', 0, 'GUYONNAUD', 'BERNARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(112, '', 0, 'HERNANDEZ', 'NOEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(113, '', 0, 'HERVANT', 'JEAN JACQUES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(114, '', 0, 'HOURDEBAIGT', 'JOEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(115, '', 0, 'HOURQUET', 'JEAN MARC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(116, '', 0, 'ICIAGA', 'GAETAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(117, '', 0, 'ILHARRAGORRY', 'STEPHANIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DD', 1, '30'),
(118, '', 0, 'INACIO', 'VICTOR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(119, '', 0, 'JAY', 'PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(120, '', 0, 'JUNCA', 'PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(121, '', 0, 'KENNEL', 'REMY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(122, '', 0, 'KERVELLEC', 'HERVE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(123, '', 0, 'KLEWAIS', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(124, '', 0, 'LABORDE', 'THIERRY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(125, '', 0, 'LABORDE', 'ALINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(126, '', 0, 'LABOUYRIE', 'NATHALIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(127, '', 0, 'LAFITTE', 'JEAN JOSEPH', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(128, '', 0, 'LAFOURCADE', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(129, '', 0, 'LALAGUE', 'BERTRAND', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(130, '', 0, 'LALANDE', 'JEAN PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(131, '', 0, 'LAMAGNERE', 'VINCENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DD', 1, '30'),
(132, '', 0, 'LAMAGNERE', 'LUCIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(133, '', 0, 'LANUSSE', 'THOMAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(134, '', 0, 'LANUSSE', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(135, '', 0, 'LAPARADE', 'XAVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(136, '', 0, 'LAPENU', 'CLAUDE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '0'),
(137, '', 0, 'LAPEYRE', 'DOMINIQUE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(138, '', 0, 'LARRERE', 'ISABELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(139, '', 0, 'LARRIEU', 'LAURENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(140, '', 0, 'LASSALLE', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(141, '', 0, 'LASSALLE', 'HUGUETTE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(142, '', 0, 'LASSERRE', 'YVES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(143, '', 0, 'LAUDIERES', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(144, '', 0, 'LAUSSU', 'ALAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(145, '', 0, 'LAUSSU', 'DENIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(146, '', 0, 'LAVIELLE', 'BERTRAND', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(147, '', 0, 'LE NAOUR', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(148, '', 0, 'LEBEGUE', 'JEAN CLAUDE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(149, '', 0, 'LECHAUDEE-CORBAY', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(150, '', 0, 'LEFEBVRE', 'JEAN MARC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(151, '', 0, 'LEGROS', 'JOHNNY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(152, '', 0, 'LEROUX', 'SYLVAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(153, '', 0, 'LIETARD', 'GREGORY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(154, '', 0, 'LOUBERE', 'THIERRY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(155, '', 0, 'LUCIDO', 'JEAN LUC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(156, '', 0, 'LUCIDO', 'SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(157, '', 0, 'MACHADO', 'ANTONIO JOSE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(158, '', 0, 'MALET', 'NORMAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(159, '', 0, 'MAOCEC', 'JEAN-LOUIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(160, '', 0, 'MARCHESAN', 'ROMAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(161, '', 0, 'MARTIN', 'ERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(162, '', 0, 'MARTINS ADAO', 'ADRIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(163, '', 0, 'MEDINA', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(164, '', 0, 'MEIRINHO', 'FRANCIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(165, '', 0, 'MILLION', 'PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(166, '', 0, 'MIMEAU', 'ANTOINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(167, '', 0, 'MIRAMBEAU', 'DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '0'),
(168, '', 0, 'MONDI', 'DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(169, '', 0, 'MORA', 'JEAN LUC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(170, '', 0, 'MOREAU', 'JAMES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(171, '', 0, 'MOREIRA', 'ANTERO MANUEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(172, '', 0, 'MORNET', 'RICHARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(173, '', 0, 'NAMBLARD', 'JEAN-PIERRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(174, '', 0, 'NANTES', 'CEDRIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(175, '', 0, 'PEREZ', 'JEAN-JACQUES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(176, '', 0, 'PEREZ', 'FRANCISCO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(177, '', 0, 'PETITPIERRE', 'BRUNO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(178, '', 0, 'PICHENET', 'JEAN-FRANCOIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(179, '', 0, 'POILPRE', 'YANNICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(180, '', 0, 'POIRET', 'FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(181, '', 0, 'POMBIEILH', 'JEROME', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(182, '', 0, 'PONTET', 'ALBIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(183, '', 0, 'PORTELA', 'MANUEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(184, '', 0, 'PRAT', 'VINCENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(185, '', 0, 'PUEYO', 'LAURENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(186, '', 0, 'REIJASSE', 'SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(187, '', 0, 'REIMMEL', 'RAOUL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(188, '', 0, 'REVET', 'ALAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(189, '', 0, 'RIBEIRO', 'RAPHAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(190, '', 0, 'RICAU', 'JEAN-PIERRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(191, '', 0, 'RICHAUD', 'JEAN CLAUDE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(192, '', 0, 'RIEFFEL', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(193, '', 0, 'RODRIGUES', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(194, '', 0, 'ROSEMBLY', 'MICHAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(195, '', 0, 'ROUX', 'SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(196, '', 0, 'SAINT-JEAN', 'JOEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(197, '', 0, 'SANTOS', 'JEAN LOUIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(198, '', 0, 'SANTOS', 'CHRISTIAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(199, '', 0, 'SAVIO', 'BRUNO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DD', 1, '30'),
(200, '', 0, 'SBAA', 'MOULAY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(201, '', 0, 'SEGUIN', 'FABIENNE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(202, '', 0, 'SELMES', 'LAURENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(203, '', 0, 'SEPZ', 'SERGE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(204, '', 0, 'SIMAO DIAS MATEUS', 'DANIEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(205, '', 0, 'SINTRA NEVES', 'PAULO ALEXANDRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(206, '', 0, 'TARDITS', 'ALAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(207, '', 0, 'THEYS', 'THIERRY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(208, '', 0, 'THEYS', 'XAVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(209, '', 0, 'THOMAS', 'LAURENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(210, '', 0, 'THOORIS', 'DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '0'),
(211, '', 0, 'TOUHANE', 'ABDERRAHIM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(212, '', 0, 'TOULET', 'ALINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '0'),
(213, '', 0, 'TOUMI', 'ZOHRA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(214, '', 0, 'TOURNIER', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(215, '', 0, 'VELLARD', 'JONATHAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(216, '', 0, 'VEYRET', 'PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(217, '', 0, 'VIGNAU', 'JULIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30'),
(218, '', 0, 'VOGELGESANG', 'ANDRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'DI', 1, '30');

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
(1, '1451948400', '756662418', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CAZADIEU NADINE.', '', '9', 1),
(2, '1451948400', 'NON RELEVE', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DOUSSY MATHIEU.', '', '27', 1),
(4, '1452207600', '698747102', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par VOGELGESANG ANDRE.', '', '13.5', 1),
(6, '1452553200', '182475906', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par VOGELGESANG ANDRE.', '', '4.5', 1),
(7, '1452553200', '133467029 G', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de VELLARD JONATHAN.', '', '27', 1),
(8, '1452553200', '478844383', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LABOUYRIE NATHALIE.', '', '9', 1),
(10, '1452553200', '14 4442037 F', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BUCETA NICOLAS.', '', '18', 1),
(11, '1452812400', '370226029', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DUFOURCQ FREDERIC.', '', '9', 1),
(14, '1452812400', '987523941', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MORNET RICHARD.', '', '27', 1),
(15, '1452812400', '2795760', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JAY PASCAL.', '', '27', 1),
(16, '1452812400', '0000353', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DE SA DAVID.', '', '27', 1),
(17, '1453417200', '920272880', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par THEYS THIERRY.', '', '27', 1),
(18, '1453158000', '327561334', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par COURCIER PHILIPPE.', '', '9', 1),
(20, '1453330800', '0001182', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROUX SEBASTIEN.', '', '27', 1),
(21, '1453417200', '0000683', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PRAT VINCENT.', '', '18', 1),
(22, '1453158000', '564477314', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TARDITS ALAIN.', '', '22.5', 1),
(24, '1453417200', '3194759', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PEREZ FRANCISCO.', '', '139.66', 0),
(25, '1453417200', '0273727', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TOURNIER STEPHANE.', '', '27', 1),
(26, '1453417200', '435543705', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par SELMES LAURENT.', '', '18', 1),
(27, '1452812400', '0000352', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DE SA DAVID.', '', '120', 0),
(28, '1452726000', '000259', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LECHAUDEE-CORBAY STEPHANE.', '', '180', 0),
(29, '1452812400', '0003614', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LABORDE THIERRY.', '', '280', 0),
(30, '1453762800', '5631044', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE NAOUR PHILIPPE.', '', '20', 0),
(32, '1454367600', '217486724', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUYONNAUD BERNARD.', '', '9', 1),
(33, '1454022000', '2255821', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MEDINA STEPHANE.', '', '18', 1),
(34, '1454540400', '671664249', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BELIN DAMIEN.', '', '32', 1),
(35, '1454626800', '4109720', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GRENTE-LENGAGNE CATHERINE.', '', '10.5', 0),
(36, '1454626800', '742262', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de THOMAS LAURENT.', '', '22.5', 1),
(37, '1454972400', '928628488', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par THEYS THIERRY.', '', '27', 1),
(38, '1454972400', '457477663', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BAREYT PASCALE.', '', '18', 1),
(39, '1454972400', '115573673', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DARJO SEBASTIEN.', '', '6', 1),
(40, '1454972400', '8570439', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ALBERTINI DIDIER.', '', '16', 1),
(41, '1454972400', '868939830', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LAUDIERES PHILIPPE.', '', '16', 1),
(42, '1455231600', '909382093', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par FABRE STEPHANE.', '', '18', 1),
(43, '1453417200', '466964920', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DEZELU JULIEN.', '', '22.5', 1),
(44, '1455231600', '776766605', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DEZELU JULIEN.', '', '22.5', 1),
(45, '1455231600', '568066676', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BAUVY BRUNO.', '', '24', 1),
(46, '1454626800', '7763859', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LALANDE JEAN PHILIPPE.', '', '18', 1),
(47, '1454626800', '0003615', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LABORDE THIERRY.', '', '27', 1),
(48, '1455577200', '2457254', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LUCIDO SEBASTIEN.', '', '27', 1),
(49, '1455577200', '595591643', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHARRIEAU MATHIEU.', '', '18', 1),
(50, '1455577200', '143862334', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DESSARPS THIBAULT.', '', '13.5', 1),
(51, '1455577200', '3733266', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TOULET ALINE.', '', '27', 1),
(52, '1455663600', '525850875', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DUFILLON NICOLAS.', '', '22.5', 1),
(53, '1454626800', '2331892', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LUCIDO JEAN LUC.', '', '40', 0),
(54, '1455577200', '5475029', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CUZACQ GREGORY.', '', '9', 1),
(55, '1455577200', '5475029', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CUZACQ GREGORY.', '', '6', 1),
(56, '1455577200', '5475029', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CUZACQ GREGORY.', '', '2', 0),
(57, '1455750000', '155448019', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LAPENU CLAUDE.', '', '200', 0),
(58, '1455750000', '592858217', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DEZELU JULIEN.', '', '50', 0),
(59, '1455750000', '3460650', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERNARD ROMAIN.', '', '75', 0),
(60, '1455750000', '5631048', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE NAOUR PHILIPPE.', '', '40', 0),
(61, '1455750000', '351', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DE SA DAVID.', '', '100', 0),
(62, '1455750000', '8952203', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DEJEAN CYRIL.', '', '200', 0),
(63, '1455750000', '8952205', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DEJEAN CYRIL.', '', '50', 0),
(64, '1455750000', '1936253', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LAFITTE JEAN JOSEPH.', '', '150', 0),
(65, '1455750000', '0273723', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TOURNIER STEPHANE.', '', '50', 0),
(66, '1455750000', '1100158', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de REIJASSE SEBASTIEN.', '', '60', 0),
(67, '1455750000', '5490554', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de REIMMEL RAOUL.', '', '300', 0),
(68, '1455750000', '5692021', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MIRAMBEAU DAVID.', '', '100', 0),
(69, '1455750000', '4923073', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DELAS VALERIE.', '', '200', 0),
(70, '1455750000', '6932831', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6932831 en date du 18-02-2016.', '139.66', '', 1),
(71, '1455750000', '3570141', 'Remise Bancaire', 'Remise de EspÃ¨ce', 'Remise en banque NÂ° 3570141 en date du 18-02-2016.', '357', '', 1),
(72, '1455750000', '6932832', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6932832 en date du 18-02-2016.', '414', '', 1),
(73, '1455750000', '544', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LASSERRE YVES.', '', '18', 0),
(74, '1455750000', '5611044 1045 1046', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de FEZANCIEUX ERIC.', '', '144', 0),
(75, '1455750000', '6932833', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6932833 en date du 18-02-2016.', '144', '', 1),
(76, '1455750000', '6072654', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DARJO SEBASTIEN.', '', '18', 0),
(77, '1455836400', '5631053', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE NAOUR PHILIPPE.', '', '13.5', 0),
(78, '1455836400', '5615080', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHINESTRA MICHEL.', '', '27.8', 0),
(79, '1455836400', '392539071', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PICHENET JEAN-FRANCOIS.', '', '4.5', 0),
(80, '1455836400', '6768095', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DEYRES JOEL.', '', '27', 0);

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
  MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
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
  MODIFY `idbilletnsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
  MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
  MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
  MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
  MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
  MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
  MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
  MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
  MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
  MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
  MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
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
  MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
  MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
  MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
  MODIFY `idlignebilletnsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
  MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
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
  MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
  MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
  MODIFY `idregbilletnsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT pour la table `reg_remb_ayant_droit`
--
ALTER TABLE `reg_remb_ayant_droit`
  MODIFY `idregrembayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_remb_salarie`
--
ALTER TABLE `reg_remb_salarie`
  MODIFY `idregrembsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `remb_ayant_droit`
--
ALTER TABLE `remb_ayant_droit`
  MODIFY `idrembayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `remb_salarie`
--
ALTER TABLE `remb_salarie`
  MODIFY `idrembsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
  MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
  MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
  MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
