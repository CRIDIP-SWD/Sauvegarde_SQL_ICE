-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 31 Mai 2015 à 18:02
-- Version du serveur :  5.5.41-0ubuntu0.14.04.1
-- Version de PHP :  5.5.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=129 ;

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
(66, '19-01-2015', 113, '15', '90'),
(67, '10-03-2015', 103, '24', '51.6'),
(68, '10-03-2015', 118, '14', '51.1'),
(69, '26-03-2015', 114, '17.365', '173.65'),
(70, '26-03-2015', 114, '2.195', '21.95'),
(71, '19-03-2015', 119, '3', '34.5'),
(72, '19-03-2015', 120, '3', '53.4'),
(73, '26-03-2015', 121, '10', '93.49'),
(74, '10-03-2015', 117, '75', '570'),
(75, '01-04-2015', 122, '1', '56'),
(76, '01-04-2015', 123, '5', '115'),
(77, '01-04-2015', 124, '1', '50'),
(78, '03-04-2015', 125, '2', '32.6'),
(79, '03-04-2015', 126, '5', '44.5'),
(80, '03-04-2015', 127, '4', '34'),
(81, '03-04-2015', 125, '2', '32.6'),
(82, '03-04-2015', 117, '25', '190'),
(83, '04-04-2015', 125, '2', '32.6'),
(84, '13-04-2015', 117, '50', '380'),
(85, '13-04-2015', 128, '2', '28.2'),
(86, '13-04-2015', 129, '1', '10.2'),
(88, '13-04-2015', 128, '3', '42.3'),
(89, '13-04-2015', 129, '3', '30.6'),
(90, '13-04-2015', 130, '4', '20'),
(91, '16-04-2015', 122, '1', '56'),
(92, '16-04-2015', 125, '7', '114.1'),
(93, '16-04-2015', 132, '3', '117'),
(95, '16-04-2015', 133, '2', '60'),
(97, '22-04-2015', 134, '5', '90'),
(98, '22-04-2015', 135, '2', '29'),
(99, '22-04-2015', 117, '25', '190'),
(100, '26-04-2015', 136, '1', '60'),
(101, '26-04-2015', 136, '5', '300'),
(102, '26-04-2015', 134, '3', '54'),
(103, '26-04-2015', 134, '3', '54'),
(104, '22-04-2015', 125, '2', '32.6'),
(106, '28-04-2015', 130, '8', '40'),
(108, '28-04-2015', 141, '4', '110.4'),
(109, '28-04-2015', 140, '2', '36.8'),
(110, '28-04-2015', 139, '2', '108'),
(111, '06-05-2015', 125, '8', '130.4'),
(112, '06-05-2015', 125, '4', '65.2'),
(113, '06-05-2015', 142, '2', '74'),
(114, '06-05-2015', 143, '1', '31'),
(115, '06-05-2015', 143, '1', '31'),
(116, '06-05-2015', 142, '2', '74'),
(117, '06-05-2015', 144, '2', '116'),
(118, '06-05-2015', 117, '100', '760'),
(119, '01-05-2015', 145, '2', '24'),
(120, '14-05-2015', 145, '2', '24'),
(121, '20-05-2015', 146, '6', '258'),
(122, '20-05-2015', 136, '1', '60'),
(123, '20-05-2015', 141, '6', '165.6'),
(124, '20-05-2015', 140, '2', '36.8'),
(125, '20-05-2015', 123, '2', '46'),
(126, '20-05-2015', 146, '2', '86'),
(127, '20-05-2015', 147, '2', '70'),
(128, '26-05-2015', 114, '14.480', '144.8');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=226 ;

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
(221, 207, 'TREMBLAIS', '(CATHERINE)', ''),
(222, 7, 'BEAUMONT', 'SEBASTIEN', '20-04-1978'),
(223, 33, 'CADELE', 'ELODIE', ''),
(224, 22, 'BORE', 'MARINE', ''),
(225, 164, 'PERDRIAU', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=702 ;

--
-- Contenu de la table `bilan`
--

INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(286, 1, 'Achat: CINEMA GAUMONT', '185', '', ''),
(288, 1, 'Achat: CELTIC LEGENDS', '222', '', ''),
(289, 1, 'Achat: ALAIN SOUCHON', '138', '', ''),
(290, 1, 'Achat: SHYM', '37', '', ''),
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
(303, 1, 'Achat: CHEQUE DOMICILE FAMILLE IMPOSABLE ', '244', '', ''),
(304, 1, 'Achat: CHEQUE DOMICILE FAMILLE IMPOSABLE ', '244', '', ''),
(305, 1, 'Achat: CHEQUE DOMICILE FAMILLE IMPOSABLE ', '244', '', ''),
(310, 1, 'Achat: CARTE CEZAM OUVRANT DROIT', '360', '', ''),
(312, 1, 'Ajout de la charge Fixe: DECES FAMILLE ESNAULT ET  GODIN', '130', '', '8966541'),
(313, 1, 'Achat: CARTE CEZAM AYANT DROIT', '90', '', ''),
(314, 1, 'Ajout de la charge Fixe: COTISATION ANNUELLE CEZAM 2015', '1016.55', '', ''),
(315, 1, 'Ajout de la charge Fixe: PRODUITS FOURNISSEUR RIVADIS', '250.45', '', ''),
(317, 2, 'Vente de Billetterie: TELLANGER Axelle pour la prestation CAFE TARIF 2014', '', '8.2', '23217677'),
(320, 2, 'Vente de Billetterie: BOUET Annette pour la prestation CINEMA GAUMONT', '', '36', '21839043'),
(321, 2, 'Vente de Billetterie: BOUET Annette pour la prestation CELTIC LEGENDS', '', '199.8', '94276183'),
(323, 2, 'Vente de Billetterie: VIVIEN HervÃ© pour la prestation AUSTRALIAN PINK FLOYD SHOW', '', '203.4', '68958089'),
(326, 2, 'Vente de Billetterie: DUPAS FranÃ§oise pour la prestation CAFE TARIF 2014', '', '4.1', '40949264'),
(330, 2, 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CINEMA GAUMONT', '', '36', '57974455'),
(331, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT', '', '18', '10915575'),
(332, 2, 'Vente de Billetterie: LE BORGNE Celine pour la prestation CINEMA GAUMONT', '', '18', '37951513'),
(335, 2, 'Vente de Billetterie: CHARREAU Helene pour la prestation CAFE 2015', '', '2.15', '4160178'),
(338, 2, 'Vente de Billetterie: BRARD Marie Pierre pour la prestation CINEMA GAUMONT', '', '36', '1629515'),
(347, 2, 'Vente de Billetterie: COCHIN Yvon pour la prestation ALAIN SOUCHON', '', '124.2', '50015969'),
(355, 2, 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation CAFE TARIF 2014', '', '4.1', '5162891'),
(357, 2, 'Vente de Billetterie: LATONNELLE Anne pour la prestation CINEMA GAUMONT', '', '18', '13938121'),
(360, 2, 'Vente de Billetterie: CHEIGNON Aurore pour la prestation SHYM', '', '33.3', '49233028'),
(363, 2, 'Vente de Billetterie: SEHAQUI M Therese pour la prestation CINEMA GAUMONT', '', '84', '67249470'),
(364, 2, 'Vente de Billetterie: BOUTREUX Anne Sophie pour la prestation CINEMA GAUMONT', '', '18', '21923397'),
(365, 2, 'Vente de Billetterie: BOUTREUX Anne Sophie pour la prestation CINEMA 400 COUPS', '', '35.12', '73365620'),
(367, 2, 'Vente de Billetterie: GERARD Alexandra pour la prestation CINEMA GAUMONT', '', '42', '34813337'),
(368, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CINEMA GAUMONT', '', '18', '53273273'),
(371, 2, 'Vente de Billetterie: PASCUITO Isabelle pour la prestation CINEMA GAUMONT', '', '60', '9925973'),
(379, 2, 'Vente de Billetterie: JULIENNE THEO pour la prestation CAFE  DOSETTES 2014', '', '7.1', '42914685'),
(382, 2, 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation CINEMA GAUMONT', '', '18', '39691243'),
(383, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT', '', '18', '5708293'),
(388, 2, 'Vente de Billetterie: LATONNELLE Anne pour la prestation CINEMA GAUMONT', '', '42', '8710123'),
(391, 2, 'Vente de Billetterie: TREMBLAIS (CATHERINE) pour la prestation PLANETE SAUVAGE ENFANTS', '', '15.75', ''),
(392, 2, 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation PLANETE SAUVAGE ADULTES', '', '42.3', '25238549'),
(393, 2, 'Vente de Billetterie: SEHAQUI M Therese pour la prestation PRADEL', '', '97.8', '60667519'),
(400, 2, 'Vente de Billetterie: GILBERT Lucie pour la prestation CINEMA GAUMONT', '', '36', '11450486'),
(402, 2, 'Vente de Billetterie: MAUSSION Christine pour la prestation CAFE TARIF 2014', '', '2.05', '32295393'),
(403, 2, 'Vente de Billetterie: MAUSSION Christine pour la prestation CAFE 2015', '', '4.3', '30969281'),
(404, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CAFE  DOSETTES 2014', '', '7.1', '41458352'),
(405, 2, 'Vente de Billetterie: RUBIO G.MICHEL pour la prestation CINEMA GAUMONT', '', '36', '23910583'),
(406, 2, 'Vente de Billetterie: RUBIO G.MICHEL pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE ', '', '198.2', '33293487'),
(407, 2, 'Vente de Billetterie: CHAILLOU Sandra pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE ', '', '198.2', '86952641'),
(409, 2, 'Vente de Billetterie: LEBAILLY Emilie pour la prestation CINEMA GAUMONT', '', '36', '35018532'),
(415, 2, 'Vente de Billetterie: THEULIER Laure pour la prestation BLACK M', '', '70.2', '99846044'),
(417, 2, 'Vente de Billetterie: INCONNU INCONNU pour la prestation CAFE 2015', '', '2.15', '13676616'),
(420, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation RIVADIS', '', '7.13', '3114440'),
(422, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT', '', '66', '97269595'),
(424, 2, 'Vente de Billetterie: CHEVREUX Melanie pour la prestation CINEMA GAUMONT', '', '36', '83621653'),
(425, 2, 'Vente de Billetterie: DENECHERE Pascale pour la prestation CINEMA GAUMONT', '', '18', '42482972'),
(429, 2, 'Vente de Billetterie: HENNE Teresa pour la prestation ALAIN SOUCHON', '', '124.2', '69467874'),
(432, 2, 'Vente de Billetterie: PICHERIT Valerie pour la prestation CINEMA GAUMONT', '', '36', '68097961'),
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
(459, 2, 'Vente de Billetterie: DIJOLS Christine pour la prestation GAUMONT', '', '36', '92026038'),
(460, 2, 'Vente de Billetterie: MALINGE Anicette pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '81562866'),
(482, 1, 'Achat: CAFE 2015', '51.6', '', ''),
(483, 1, 'Achat: CAFE DOSETTE 2015', '51.1', '', ''),
(484, 1, 'Achat: PRADEL', '173.65', '', ''),
(485, 1, 'Achat: PRADEL', '21.95', '', ''),
(486, 1, 'Achat: AQUARUIM OCEANOPOLIS ENFANT', '34.5', '', ''),
(487, 1, 'Achat: AQUARUIM OCEANOPOLIS ADULTES', '53.4', '', ''),
(488, 1, 'Achat: CHOCOLAT ORDISCOM', '93.49', '', ''),
(490, 1, 'Achat: GAUMONT', '570', '', ''),
(491, 1, 'Ajout de la charge Fixe: DECES FAMILLE CHALLIER', '70', '', ''),
(492, 1, 'Achat: FRANCIS CABREL', '56', '', ''),
(493, 1, 'Achat: ZOO DE BEAUVAL ADULTE', '115', '', ''),
(494, 1, 'Achat: ALAIN SOUCHON ET LAURENT VOULZY', '50', '', ''),
(496, 1, 'Achat: BOWLING SILVER BOWL', '44.5', '', ''),
(497, 1, 'Achat: BOWLING LE COLISEE', '34', '', ''),
(499, 1, 'Achat: GAUMONT', '190', '', ''),
(501, 1, 'Achat: GAUMONT', '380', '', ''),
(502, 1, 'Achat: TERRA BOTANICA ADULTE', '28.2', '', ''),
(503, 1, 'Achat: TERRA BOTANICA ENFANT', '10.2', '', ''),
(505, 1, 'Achat: TERRA BOTANICA ADULTE', '42.3', '', ''),
(506, 1, 'Achat: TERRA BOTANICA ENFANT', '30.6', '', ''),
(507, 1, 'Achat: 400 COUPS (04-2015)', '20', '', ''),
(508, 1, 'Achat: FRANCIS CABREL', '56', '', ''),
(509, 1, 'Achat: BIOPARC ADULTE', '114.1', '', ''),
(510, 1, 'Achat: BODIN''S CATEGORIE 1 ADULTE (27-11-2015)', '117', '', ''),
(512, 1, 'Achat: BODIN''S CATEGORIE 1 ENFANT -12 ANS (27-11-2015)', '60', '', ''),
(514, 1, 'Achat: ZOO DE LA FLECHE ADULTE', '90', '', ''),
(515, 1, 'Achat: ZOO DE LA FLECHE ENFANT', '29', '', ''),
(516, 1, 'Achat: GAUMONT', '190', '', ''),
(517, 1, 'Achat: 24 HEURES DU MANS AUTOS (SEMAINE DU 7 AU 14--2015 + JOURNEE TEST 31-05-2015', '60', '', ''),
(518, 1, 'Achat: 24 HEURES DU MANS AUTOS (SEMAINE DU 7 AU 14--2015 + JOURNEE TEST 31-05-2015', '300', '', ''),
(519, 1, 'Achat: ZOO DE LA FLECHE ADULTE', '54', '', ''),
(520, 1, 'Achat: ZOO DE LA FLECHE ADULTE', '54', '', ''),
(521, 1, 'Achat: BIOPARC ADULTE', '32.6', '', ''),
(522, 2, 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMA GAUMONT', '', '18', '26764024'),
(523, 2, 'Vente de Billetterie: PRUDHOMME Celine pour la prestation GAUMONT', '', '36', '50231001'),
(524, 2, 'Vente de Billetterie: DUPAS FranÃ§oise pour la prestation CAFE 2015', '', '8.6', '20419076'),
(525, 2, 'Vente de Billetterie: CHATEAU Sandrine pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '17507267'),
(527, 2, 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation GAUMONT', '', '12', '78442589'),
(528, 2, 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation PRADEL', '', '30.95', '90280824'),
(530, 2, 'Vente de Billetterie: BOULAY Jennifer pour la prestation DISNEY RESORT PARIS  1 JOUR 2 PARCS ADULTES', '', '120.6', '64242978'),
(531, 2, 'Vente de Billetterie: GERARD Alexandra pour la prestation GAUMONT', '', '54', '93682433'),
(532, 2, 'Vente de Billetterie: SEGARRA Agnes pour la prestation CINEMA GAUMONT', '', '24', '69233624'),
(533, 2, 'Vente de Billetterie: BAILLY Michelle pour la prestation GAUMONT', '', '36', '79459223'),
(534, 2, 'Vente de Billetterie: BAILLY Michelle pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '12456649'),
(535, 2, 'Vente de Billetterie: BAILLY CHRISTIAN pour la prestation CARTE CEZAM AYANT DROIT', '', '5', ''),
(537, 2, 'Vente de Billetterie: TESSIER Florence pour la prestation GAUMONT', '', '24', '20627811'),
(538, 2, 'Vente de Billetterie: TELLANGER Axelle pour la prestation GAUMONT', '', '12', '83354081'),
(540, 2, 'Vente de Billetterie: TELLANGER Axelle pour la prestation CAFE 2015', '', '12.9', '48720986'),
(541, 2, 'Vente de Billetterie: COCHIN Yvon pour la prestation GAUMONT', '', '12', '54385383'),
(542, 2, 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation RIVADIS', '', '24.98', '54718100'),
(545, 2, 'Vente de Billetterie: LE GAL Barbara pour la prestation GAUMONT', '', '12', '11476822'),
(546, 2, 'Vente de Billetterie: COTTENCEAU Monique pour la prestation GAUMONT', '', '24', '17184056'),
(547, 2, 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation GAUMONT', '', '60', '84103320'),
(548, 2, 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '60420418'),
(549, 2, 'Vente de Billetterie: LE JEAN  CELINE pour la prestation CARTE CEZAM AYANT DROIT', '', '5', ''),
(550, 2, 'Vente de Billetterie: ROYER Catherine pour la prestation AQUARUIM OCEANOPOLIS ADULTES', '', '48.06', '88128087'),
(551, 2, 'Vente de Billetterie: ROYER Julien pour la prestation AQUARUIM OCEANOPOLIS ENFANT', '', '31.05', ''),
(552, 2, 'Vente de Billetterie: MAQUIN CATHERINE pour la prestation GAUMONT', '', '12', '19430651'),
(553, 2, 'Vente de Billetterie: POUTREL Sylvie pour la prestation GAUMONT', '', '60', '28223676'),
(554, 2, 'Vente de Billetterie: POUTREL Sylvie pour la prestation PARC ASTERIX', '', '162', '7691343'),
(556, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CHOCOLAT ORDISCOM', '', '60.69', '72801059'),
(557, 2, 'Vente de Billetterie: DENECHERE Pascale pour la prestation CHOCOLAT ORDISCOM', '', '22.8', '71675588'),
(558, 2, 'Vente de Billetterie: NASRI Marion pour la prestation GAUMONT', '', '12', '7628599'),
(559, 2, 'Vente de Billetterie: TAUDON Christine pour la prestation GAUMONT', '', '18', '5827024'),
(560, 2, 'Vente de Billetterie: TAUDON Christine pour la prestation CARTE ATOUT', '', '21.6', '8435358'),
(561, 2, 'Vente de Billetterie: LE CALVEZ Jocelyne pour la prestation CARTE ATOUT', '', '21.6', '20713185'),
(562, 2, 'Vente de Billetterie: COCHIN Yvon pour la prestation FRANCIS CABREL', '', '50.4', '64141150'),
(563, 2, 'Vente de Billetterie: COCHIN Yvon pour la prestation GAUMONT', '', '12', '63541290'),
(564, 2, 'Vente de Billetterie: VOISINE ANNIE pour la prestation GAUMONT', '', '36', '81833136'),
(566, 2, 'Vente de Billetterie: BOIS Marie pour la prestation GAUMONT', '', '12', '91629197'),
(567, 2, 'Vente de Billetterie: MENANT Sylvie pour la prestation GAUMONT', '', '24', '81295064'),
(568, 2, 'Vente de Billetterie: PICHERIT Valerie pour la prestation GAUMONT', '', '36', '50065739'),
(569, 2, 'Vente de Billetterie: CRANSAC Christel pour la prestation GAUMONT', '', '36', '71354908'),
(570, 2, 'Vente de Billetterie: AUGUET Joelle pour la prestation CARTE ATOUT', '', '21.6', '20265683'),
(573, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation GAUMONT', '', '18', '95403624'),
(574, 2, 'Vente de Billetterie: REVEREAULT John pour la prestation BOWLING LE COLISEE', '', '30.6', '78732909'),
(575, 2, 'Vente de Billetterie: FOUQUERAY Edwige pour la prestation GAUMONT', '', '42', '896481'),
(576, 2, 'Vente de Billetterie: COCHIN Yvon pour la prestation GAUMONT', '', '24', '19470510'),
(578, 2, 'Vente de Billetterie: YEKULI Aurelie pour la prestation GAUMONT', '', '12', '49642823'),
(579, 2, 'Vente de Billetterie: BAILLY Michelle pour la prestation ZOO DE BEAUVAL ADULTE', '', '103.5', '77324882'),
(580, 2, 'Vente de Billetterie: GERARD Alexandra pour la prestation GAUMONT', '', '18', '36410272'),
(581, 2, 'Vente de Billetterie: SOUALAH Bahija pour la prestation GAUMONT', '', '24', '98400415'),
(582, 2, 'Vente de Billetterie: SOULET Elodie pour la prestation TERRA BOTANICA ADULTE', '', '25.38', '71804331'),
(583, 2, 'Vente de Billetterie: SOULET Nino pour la prestation TERRA BOTANICA ENFANT', '', '9.18', ''),
(584, 2, 'Vente de Billetterie: GUIHO Odette pour la prestation 400 COUPS (04-2015)', '', '18', '53972381'),
(586, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation TERRA BOTANICA ADULTE', '', '38.07', '2182566'),
(587, 2, 'Vente de Billetterie: BEAUMONT SEBASTIEN pour la prestation TERRA BOTANICA ENFANT', '', '27.54', ''),
(588, 2, 'Vente de Billetterie: BRARD Marie Pierre pour la prestation GAUMONT', '', '24', '89341393'),
(589, 2, 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation GAUMONT', '', '12', '58876083'),
(590, 2, 'Vente de Billetterie: PERDRIAU Carine pour la prestation GAUMONT', '', '12', '39483148'),
(591, 2, 'Vente de Billetterie: COCHIN Yvon pour la prestation FRANCIS CABREL', '', '50.4', '45450951'),
(592, 2, 'Vente de Billetterie: DOISNEAU Geraldine pour la prestation BIOPARC ADULTE', '', '102.69', '55173683'),
(593, 2, 'Vente de Billetterie: YEKULI Aurelie pour la prestation GAUMONT', '', '12', '64447336'),
(594, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation BODIN''S CATEGORIE 1 ADULTE (27-11-2015)', '', '105.3', '26348433'),
(595, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation BODIN''S CATEGORIE 1 ENFANT -12 ANS (27-11-2015)', '', '54', '87826245'),
(598, 2, 'Vente de Billetterie: AMARA Nadia pour la prestation BIOPARC PROMO', '', '28.8', '7772396'),
(600, 2, 'Vente de Billetterie: FOUBLE Camille pour la prestation GAUMONT', '', '24', '42663149'),
(601, 2, 'Vente de Billetterie: MAUDET Delphine pour la prestation CARTE ATOUT', '', '21.6', '67843125'),
(602, 2, 'Vente de Billetterie: INCONNU INCONNU pour la prestation CAFE  DOSETTES 2014', '', '3.55', '77165844'),
(603, 2, 'Ajout du produit fixe: SUBVENTION 03-2015', '', '1516.48', ''),
(604, 2, 'Ajout du produit fixe: CAISSE ESPECE', '', '311.62', ''),
(605, 1, 'Ajout de la charge Fixe: FRAIS BANCAIRE CIC ( CHEQUE IMPAYE MBIDA SYLVIE)', '22', '', ''),
(607, 1, 'Achat: 400 COUPS (04-2015)', '40', '', ''),
(609, 1, 'Achat: GRAND PARC PUY DU FOU ADULTE', '110.4', '', ''),
(610, 1, 'Achat:  GRAND PARC PUY DU FOU ENFANT', '36.8', '', ''),
(611, 1, 'Achat: PARC DISNEYLAND ADULTE 1 JOUR 1 PARC', '108', '', ''),
(612, 1, 'Achat: BIOPARC ADULTE', '130.4', '', ''),
(613, 1, 'Achat: BIOPARC ADULTE', '65.2', '', ''),
(614, 1, 'Achat: PARC FUTUROSCOPE ADULTE', '74', '', ''),
(615, 1, 'Achat: PARC FUTUROSCOPE ENFANTS (5-16 ANS)', '31', '', ''),
(616, 1, 'Achat: PARC FUTUROSCOPE ENFANTS (5-16 ANS)', '31', '', ''),
(617, 1, 'Achat: PARC FUTUROSCOPE ADULTE', '74', '', ''),
(618, 1, 'Achat: MESSMER', '116', '', ''),
(619, 1, 'Achat: GAUMONT', '760', '', ''),
(620, 2, 'Vente de Billetterie: CIBRON Christophe pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE ', '', '198.2', '92238604'),
(621, 2, 'Vente de Billetterie: DENECHERE Pascale pour la prestation ZOO DE LA FLECHE ADULTE', '', '81', '34809391'),
(623, 2, 'Vente de Billetterie: TELLANGER Axelle pour la prestation CAFE 2015', '', '12.9', '22882855'),
(624, 2, 'Vente de Billetterie: TAUNAY M Laure pour la prestation ZOO DE LA FLECHE ADULTE', '', '48.6', '90470376'),
(625, 2, 'Vente de Billetterie: AILLERIE Myriam pour la prestation ZOO DE LA FLECHE ADULTE', '', '48.6', '89568898'),
(626, 2, 'Vente de Billetterie: NASRI Marion pour la prestation GAUMONT', '', '24', '68909426'),
(628, 2, 'Vente de Billetterie: SEURRE Marie Jose pour la prestation 24 HEURES DU MANS AUTOS (SEMAINE DU 7 AU 14--2015 + JOURNEE TEST 31-05-2015', '', '324', '20679079'),
(629, 2, 'Vente de Billetterie: DENECHERE Thomas pour la prestation ZOO DE LA FLECHE ENFANT', '', '26.1', ''),
(630, 2, 'Vente de Billetterie: AMARA Meline pour la prestation BIOPARC ENFANT  2014', '', '10', ''),
(631, 1, 'Achat: CIRQUE', '24', '', ''),
(632, 2, 'Vente de Billetterie: SOULET Elodie pour la prestation GRAND PARC PUY DU FOU ADULTE', '', '99.36', '44903044'),
(633, 2, 'Vente de Billetterie: SOULET Nino pour la prestation  GRAND PARC PUY DU FOU ENFANT', '', '33.12', ''),
(634, 2, 'Vente de Billetterie: DESCHRYVER Elisabeth pour la prestation PARC DISNEYLAND ADULTE 1 JOUR 1 PARC', '', '97.2', '64157663'),
(635, 2, 'Vente de Billetterie: DABOUDET Valerie pour la prestation 400 COUPS (04-2015)', '', '36', '14809380'),
(636, 2, 'Vente de Billetterie: BINOT Lucie pour la prestation GAUMONT', '', '24', '19139502'),
(638, 2, 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation GAUMONT', '', '24', '16359603'),
(639, 2, 'Vente de Billetterie: HUAU Carine pour la prestation GAUMONT', '', '12', '93984655'),
(640, 2, 'Vente de Billetterie: DURAND CHATTON Pascale pour la prestation GAUMONT', '', '30', '22000765'),
(641, 2, 'Vente de Billetterie: CADELE Marie Claude pour la prestation PARC FUTUROSCOPE ADULTE', '', '66.6', '25533344'),
(642, 2, 'Vente de Billetterie: CADELE ELODIE pour la prestation PARC FUTUROSCOPE ENFANTS (5-16 ANS)', '', '27.9', ''),
(643, 2, 'Vente de Billetterie: GAUDELET Maryline pour la prestation GAUMONT', '', '24', '42135540'),
(644, 2, 'Vente de Billetterie: GERARD Alexandra pour la prestation CIRQUE', '', '12', '95299874'),
(645, 2, 'Vente de Billetterie: GERARD Alexandra pour la prestation CIRQUE', '', '12', '45713596'),
(646, 2, 'Vente de Billetterie: CHARREAU Helene pour la prestation BIOPARC ADULTE', '', '58.68', '54515115'),
(647, 2, 'Vente de Billetterie: CHARREAU Helene pour la prestation CAFE 2015', '', '2.15', '5053115'),
(648, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation GAUMONT', '', '12', '3122601'),
(649, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation PARC FUTUROSCOPE ADULTE', '', '66.6', '16721928'),
(650, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation MESSMER', '', '104.4', '13770404'),
(651, 2, 'Vente de Billetterie: SEGARRA Agnes pour la prestation GAUMONT', '', '18', '73601333'),
(652, 2, 'Vente de Billetterie: MOREAU Sandra pour la prestation GAUMONT', '', '24', '19329256'),
(653, 2, 'Vente de Billetterie: VIVION Beatrice pour la prestation GAUMONT', '', '24', '96302435'),
(654, 2, 'Vente de Billetterie: CHARREAU Helene pour la prestation GAUMONT', '', '24', '11513932'),
(655, 1, 'Ajout de la charge Fixe: FRAIS POSTAUX BORDEREAU CHEQUE', '1.62', '', ''),
(656, 2, 'Vente de Billetterie: BOUET Annette pour la prestation GAUMONT', '', '12', '54796737'),
(659, 2, 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '29830152'),
(660, 2, 'Vente de Billetterie: LASALLE  TANGUY pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5', ''),
(662, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CAFE  DOSETTES 2014', '', '3.55', '67627145'),
(665, 2, 'Vente de Billetterie: DELAUNAY Dominique pour la prestation BOWLING SILVER BOWL', '', '40.05', '3653924'),
(667, 2, 'Vente de Billetterie: FOUBLE Camille pour la prestation GAUMONT', '', '12', '12448843'),
(670, 2, 'Vente de Billetterie: THEULIER Laure pour la prestation GAUMONT', '', '30', '76521020'),
(671, 2, 'Vente de Billetterie: BORE Marie Pierre pour la prestation GAUMONT', '', '12', '19706072'),
(673, 2, 'Vente de Billetterie: LORINQUER Melanie pour la prestation GAUMONT', '', '12', '35782547'),
(676, 2, 'Vente de Billetterie: PECOT Sandrine pour la prestation GAUMONT', '', '6', '91974455'),
(677, 2, 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation GAUMONT', '', '6', '67912826'),
(678, 2, 'Vente de Billetterie: BORE Marie Pierre pour la prestation CAFE  DOSETTES 2014', '', '7.1', '18203769'),
(679, 2, 'Vente de Billetterie: BORE Marie Pierre pour la prestation GAUMONT', '', '30', '92483765'),
(680, 2, 'Vente de Billetterie: BORE MARINE pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5', ''),
(681, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation GAUMONT', '', '12', '6426091'),
(682, 2, 'Vente de Billetterie: LANGLOIS VALERIE pour la prestation GAUMONT', '', '12', '67077497'),
(683, 2, 'Vente de Billetterie: TAUNAY M Laure pour la prestation GAUMONT', '', '12', '99838714'),
(684, 2, 'Vente de Billetterie: PERDRIAU Sophie pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '89457326'),
(685, 2, 'Vente de Billetterie: PERDRIAU  pour la prestation CARTE CEZAM AYANT DROIT', '', '7.5', ''),
(686, 2, 'Vente de Billetterie: GLORIA (SERVICE+)  pour la prestation GAUMONT', '', '12', '98218253'),
(687, 2, 'Vente de Billetterie: GRAU Cecilio pour la prestation GAUMONT', '', '12', '2286676'),
(688, 2, 'Vente de Billetterie: CADELE ELODIE pour la prestation PARC FUTUROSCOPE ENFANTS (5-16 ANS)', '', '27.9', ''),
(689, 2, 'Vente de Billetterie: GUIHO Odette pour la prestation GAUMONT', '', '6', '81237451'),
(690, 2, 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation GAUMONT', '', '12', '59542032'),
(691, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CAFE  DOSETTES 2014', '', '3.55', '73888816'),
(692, 1, 'Achat: CIRQUE', '24', '', ''),
(693, 2, 'Ajout du produit fixe: SUBVENTION ASC AVRIL 2015', '', '1714.11', '2967403429'),
(694, 1, 'Achat: BODIN''S CATEGORIE 1 TARIF NORMAL', '258', '', ''),
(695, 1, 'Achat: 24 HEURES DU MANS AUTOS (SEMAINE DU 7 AU 14--2015 + JOURNEE TEST 31-05-2015', '60', '', ''),
(696, 1, 'Achat: GRAND PARC PUY DU FOU ADULTE', '165.6', '', ''),
(697, 1, 'Achat:  GRAND PARC PUY DU FOU ENFANT', '36.8', '', ''),
(698, 1, 'Achat: ZOO DE BEAUVAL ADULTE', '46', '', ''),
(699, 1, 'Achat: BODIN''S CATEGORIE 1 TARIF NORMAL', '86', '', ''),
(700, 1, 'Achat: BODIN''S CATEGORIE 2 ', '70', '', ''),
(701, 1, 'Achat: PRADEL', '144.8', '', '');

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
  `etat_facture` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Contenu de la table `billet_ayant_droit`
--

INSERT INTO `billet_ayant_droit` (`idbilletayantdroit`, `idayantdroit`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_facture`, `num_mouvement`) VALUES
(28, 214, '03-02-2015', 3, '2.5', 1, ''),
(29, 190, '03-02-2015', 3, '2.5', 1, ''),
(30, 211, '05-02-2015', 3, '2.5', 1, ''),
(31, 221, '10-02-2015', 3, '15.75', 1, ''),
(32, 212, '05-03-2015', 3, '2.5', 1, ''),
(33, 190, '24-02-2015', 3, '10.8', 1, ''),
(34, 219, '10-03-2015', 3, '5', 1, ''),
(35, 215, '19-03-2015', 3, '5', 0, ''),
(36, 189, '19-03-2015', 3, '31.05', 1, ''),
(37, 191, '09-04-2015', 3, '9.18', 1, ''),
(38, 222, '13-04-2015', 3, '27.54', 1, ''),
(40, 107, '23-04-2015', 3, '26.1', 1, ''),
(41, 81, '16-04-2015', 3, '10', 1, ''),
(42, 191, '28-04-2015', 3, '33.12', 1, ''),
(43, 223, '05-05-2015', 3, '27.9', 1, ''),
(44, 220, '24-03-2015', 3, '2.5', 1, ''),
(45, 224, '28-04-2015', 3, '2.5', 1, ''),
(46, 225, '23-04-2015', 3, '7.5', 1, ''),
(47, 223, '11-05-2015', 3, '27.9', 1, '');

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
  `etat_billet_salarie` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=448 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`, `num_mouvement`) VALUES
(170, 200, '02-01-2015', 3, '24', 1, ''),
(171, 200, '02-01-2015', 3, '8.2', 1, ''),
(172, 199, '03-01-2015', 3, '12', 1, ''),
(173, 128, '06-01-2015', 3, '12', 1, ''),
(174, 24, '06-01-2015', 3, '36', 1, ''),
(175, 24, '06-01-2015', 3, '199.8', 1, ''),
(176, 145, '06-01-2015', 3, '24', 1, ''),
(177, 211, '06-01-2015', 3, '203.4', 1, ''),
(178, 11, '06-01-2015', 3, '24', 1, ''),
(179, 203, '06-01-2015', 3, '24', 1, ''),
(180, 71, '06-01-2015', 3, '4.1', 1, ''),
(181, 165, '06-01-2015', 3, '6', 1, ''),
(182, 158, '07-01-2015', 3, '6', 1, ''),
(183, 202, '07-01-2015', 3, '6', 1, ''),
(184, 127, '07-01-2015', 3, '36', 1, ''),
(185, 82, '07-01-2015', 3, '18', 1, ''),
(186, 123, '07-01-2015', 3, '18', 1, ''),
(187, 183, '07-01-2015', 3, '12', 1, ''),
(188, 41, '07-01-2015', 3, '12', 1, ''),
(189, 41, '07-01-2015', 3, '2.15', 1, ''),
(190, 214, '13-01-2015', 3, '12', 1, ''),
(191, 96, '13-01-2015', 3, '6', 1, ''),
(192, 30, '13-01-2015', 3, '36', 1, ''),
(193, 218, '13-01-2015', 3, '30', 1, ''),
(194, 132, '13-01-2015', 3, '24', 1, ''),
(195, 82, '13-01-2015', 3, '12', 1, ''),
(196, 45, '13-01-2015', 3, '12', 1, ''),
(197, 97, '20-01-2015', 3, '12', 1, ''),
(198, 185, '20-01-2015', 3, '5', 1, ''),
(199, 185, '20-01-2015', 3, '2.5', 1, ''),
(200, 15, '20-01-2015', 3, '12', 1, ''),
(201, 50, '20-01-2015', 3, '124.2', 1, ''),
(202, 25, '20-01-2015', 3, '5', 1, ''),
(203, 25, '20-01-2015', 3, '2.5', 1, ''),
(204, 42, '27-01-2015', 3, '5', 1, ''),
(205, 42, '27-01-2015', 3, '5', 1, ''),
(206, 22, '27-01-2015', 3, '5', 1, ''),
(207, 22, '27-01-2015', 3, '2.5', 1, ''),
(208, 42, '29-01-2015', 3, '12', 1, ''),
(209, 207, '29-01-2015', 3, '4.1', 1, ''),
(210, 199, '29-01-2015', 3, '30', 1, ''),
(211, 122, '29-01-2015', 3, '18', 1, ''),
(212, 63, '29-01-2015', 3, '6', 1, ''),
(213, 45, '29-01-2015', 3, '12', 1, ''),
(214, 45, '29-01-2015', 3, '33.3', 1, ''),
(215, 163, '29-01-2015', 3, '12', 1, ''),
(216, 201, '29-01-2015', 3, '12', 1, ''),
(217, 191, '29-01-2015', 3, '84', 1, ''),
(218, 29, '29-01-2015', 3, '18', 1, ''),
(219, 29, '29-01-2015', 3, '35.12', 1, ''),
(220, 20, '29-01-2015', 3, '24', 1, ''),
(221, 85, '29-01-2015', 3, '42', 1, ''),
(222, 7, '29-01-2015', 3, '18', 1, ''),
(224, 11, '29-01-2015', 3, '24', 1, ''),
(225, 160, '29-01-2015', 3, '60', 1, ''),
(226, 60, '03-02-2015', 3, '5', 1, ''),
(227, 107, '03-02-2015', 3, '5', 1, ''),
(228, 24, '03-02-2015', 3, '5', 1, ''),
(229, 191, '03-02-2015', 3, '5', 1, ''),
(230, 195, '03-02-2015', 3, '5', 1, ''),
(231, 215, '03-02-2015', 3, '7.1', 1, ''),
(232, 48, '05-02-2015', 3, '5', 1, ''),
(233, 150, '05-02-2015', 3, '18', 1, ''),
(234, 82, '05-02-2015', 3, '18', 1, ''),
(235, 196, '05-02-2015', 3, '24', 1, ''),
(236, 20, '05-02-2015', 3, '24', 1, ''),
(237, 81, '10-02-2015', 3, '24', 1, ''),
(238, 7, '10-02-2015', 3, '12', 1, ''),
(239, 122, '10-02-2015', 3, '42', 1, ''),
(240, 96, '10-02-2015', 3, '6', 1, ''),
(241, 207, '10-02-2015', 3, '24', 1, ''),
(242, 207, '10-02-2015', 3, '42.3', 1, ''),
(243, 191, '10-02-2015', 3, '97.8', 1, ''),
(245, 221, '10-02-2015', 3, '30.95', 1, ''),
(246, 203, '12-02-2015', 3, '30', 1, ''),
(247, 216, '12-02-2015', 3, '24', 1, ''),
(248, 155, '12-02-2015', 3, '24', 1, ''),
(249, 167, '12-02-2015', 3, '24', 1, ''),
(250, 87, '12-02-2015', 3, '36', 1, ''),
(251, 170, '12-02-2015', 3, '24', 1, ''),
(252, 145, '12-02-2015', 3, '2.05', 1, ''),
(253, 145, '12-02-2015', 3, '4.3', 1, ''),
(254, 7, '12-02-2015', 3, '7.1', 1, ''),
(255, 219, '17-02-2015', 3, '36', 1, ''),
(256, 219, '17-02-2015', 3, '198.2', 1, ''),
(257, 38, '17-02-2015', 3, '198.2', 1, ''),
(258, 217, '17-02-2015', 3, '30', 1, ''),
(259, 128, '17-02-2015', 3, '36', 1, ''),
(260, 83, '17-02-2015', 3, '12', 1, ''),
(261, 96, '17-02-2015', 3, '5', 1, ''),
(262, 185, '17-02-2015', 3, '6', 1, ''),
(263, 63, '17-02-2015', 3, '12', 1, ''),
(264, 124, '17-02-2015', 3, '30', 1, ''),
(265, 203, '24-02-2015', 3, '70.2', 1, ''),
(266, 48, '03-03-2015', 3, '30', 1, ''),
(267, 220, '03-03-2015', 3, '2.15', 1, ''),
(269, 202, '03-03-2015', 3, '24', 1, ''),
(270, 170, '26-02-2015', 3, '24', 1, ''),
(271, 7, '07-03-2015', 3, '7.13', 1, ''),
(273, 82, '19-02-2015', 3, '66', 1, ''),
(274, 67, '19-03-2015', 3, '12', 1, ''),
(275, 46, '19-02-2015', 3, '36', 1, ''),
(276, 63, '19-02-2015', 3, '18', 1, ''),
(277, 195, '24-02-2015', 3, '12', 1, ''),
(280, 101, '19-02-2015', 3, '124.2', 1, ''),
(282, 156, '26-02-2015', 3, '30', 1, ''),
(283, 166, '26-02-2015', 3, '36', 1, ''),
(284, 121, '03-03-2015', 3, '24', 1, ''),
(285, 130, '03-03-2015', 3, '12', 1, ''),
(286, 59, '03-03-2015', 3, '30', 1, ''),
(287, 20, '03-03-2015', 3, '12', 1, ''),
(290, 11, '03-03-2015', 3, '24', 1, ''),
(293, 126, '05-03-2015', 3, '12', 1, ''),
(294, 132, '07-03-2015', 3, '30', 1, ''),
(295, 198, '05-03-2015', 3, '5', 1, ''),
(296, 163, '05-03-2015', 3, '12', 1, ''),
(297, 187, '07-03-2015', 3, '57.38', 1, ''),
(299, 131, '07-03-2015', 3, '9.99', 1, ''),
(300, 156, '07-03-2015', 3, '40.64', 1, ''),
(301, 190, '07-03-2015', 3, '16.15', 1, ''),
(302, 159, '07-03-2015', 3, '36.82', 1, ''),
(303, 128, '07-03-2015', 3, '10.72', 1, ''),
(304, 221, '10-02-2015', 3, '35.9', 1, ''),
(306, 159, '10-02-2015', 3, '30.95', 1, ''),
(307, 67, '19-02-2015', 3, '36', 1, ''),
(308, 141, '03-02-2015', 3, '5', 1, ''),
(309, 203, '12-03-2015', 3, '18', 1, ''),
(310, 175, '12-03-2015', 3, '36', 1, ''),
(311, 71, '12-03-2015', 3, '8.6', 1, ''),
(312, 44, '12-03-2015', 3, '5', 1, ''),
(313, 165, '17-03-2015', 3, '24', 1, ''),
(314, 150, '19-03-2015', 3, '12', 1, ''),
(315, 218, '19-02-2015', 3, '30', 1, ''),
(316, 25, '24-02-2015', 3, '120.6', 1, ''),
(317, 85, '25-02-2015', 3, '54', 1, ''),
(318, 190, '26-02-2015', 3, '24', 1, ''),
(319, 6, '10-03-2015', 3, '36', 1, ''),
(320, 6, '10-03-2015', 3, '5', 1, ''),
(322, 203, '10-03-2015', 3, '30', 1, ''),
(323, 202, '10-03-2015', 3, '24', 1, ''),
(324, 200, '12-03-2015', 3, '12', 1, ''),
(326, 200, '12-03-2015', 3, '12.9', 1, ''),
(327, 50, '12-03-2015', 3, '12', 1, ''),
(328, 158, '07-03-2015', 3, '24.98', 1, ''),
(329, 63, '12-03-2015', 3, '22.8', 1, ''),
(330, 126, '19-03-2015', 3, '12', 1, ''),
(331, 54, '19-03-2015', 3, '24', 1, ''),
(332, 127, '19-03-2015', 3, '60', 0, ''),
(333, 127, '19-03-2015', 3, '5', 0, ''),
(335, 187, '19-03-2015', 3, '48.06', 1, ''),
(336, 214, '24-03-2015', 3, '12', 1, ''),
(337, 172, '26-03-2015', 3, '60', 1, ''),
(338, 172, '26-03-2015', 3, '162', 1, ''),
(339, 7, '26-03-2015', 3, '60.69', 1, ''),
(340, 157, '31-03-2015', 3, '12', 1, ''),
(341, 198, '31-03-2015', 0, '18', 1, ''),
(342, 198, '31-03-2015', 3, '21.6', 1, ''),
(343, 124, '31-03-2015', 3, '21.6', 1, ''),
(344, 50, '31-03-2015', 3, '50.4', 1, ''),
(345, 50, '31-03-2015', 3, '12', 1, ''),
(346, 222, '02-04-2015', 3, '36', 1, ''),
(347, 223, '02-04-2015', 3, '29.34', 1, ''),
(348, 19, '02-04-2015', 3, '12', 1, ''),
(349, 148, '02-04-2015', 3, '24', 1, ''),
(350, 166, '02-04-2015', 3, '36', 1, ''),
(351, 56, '02-04-2015', 3, '36', 1, ''),
(352, 5, '02-04-2015', 3, '21.6', 1, ''),
(353, 5, '02-04-2015', 0, '30', 1, ''),
(354, 68, '02-04-2015', 3, '29.34', 1, ''),
(355, 82, '02-04-2015', 3, '18', 1, ''),
(356, 179, '02-04-2015', 3, '30.6', 0, ''),
(357, 78, '07-04-2015', 3, '42', 1, ''),
(358, 159, '07-04-2015', 3, '0', 0, ''),
(359, 50, '09-04-2015', 3, '24', 1, ''),
(360, 20, '09-04-2015', 3, '30', 1, ''),
(361, 213, '09-04-2015', 3, '12', 1, ''),
(362, 6, '09-04-2015', 3, '103.5', 1, ''),
(363, 85, '09-04-2015', 3, '18', 1, ''),
(364, 193, '09-04-2015', 3, '24', 1, ''),
(365, 195, '09-04-2015', 3, '25.38', 1, ''),
(366, 96, '13-04-2015', 3, '18', 1, ''),
(367, 96, '13-04-2015', 3, '6', 1, ''),
(368, 7, '13-04-2015', 3, '38.07', 1, ''),
(369, 30, '14-04-2015', 3, '24', 1, ''),
(370, 150, '14-04-2015', 3, '12', 1, ''),
(371, 163, '14-04-2015', 3, '12', 1, ''),
(372, 50, '14-04-2015', 3, '50.4', 0, ''),
(373, 68, '14-04-2015', 3, '102.69', 1, ''),
(374, 213, '14-04-2015', 3, '12', 1, ''),
(375, 7, '16-04-2015', 3, '105.3', 1, ''),
(376, 7, '16-04-2015', 3, '54', 1, ''),
(377, 3, '16-04-2015', 3, '28.8', 1, ''),
(378, 203, '16-04-2015', 3, '30', 1, ''),
(379, 77, '21-04-2015', 3, '24', 1, ''),
(380, 144, '21-04-2015', 3, '21.6', 1, ''),
(381, 220, '13-04-2015', 3, '3.55', 1, ''),
(382, 48, '24-01-2015', 3, '198.2', 1, ''),
(383, 63, '23-04-2015', 3, '81', 1, ''),
(385, 200, '23-04-2015', 3, '12.9', 1, ''),
(386, 199, '23-04-2015', 3, '48.6', 0, ''),
(387, 2, '23-04-2015', 3, '48.6', 1, ''),
(388, 157, '28-04-2015', 3, '24', 1, ''),
(389, 160, '28-04-2015', 3, '30', 1, ''),
(390, 192, '28-04-2015', 3, '324', 0, ''),
(391, 195, '28-04-2015', 3, '99.36', 1, ''),
(392, 65, '28-04-2015', 3, '97.2', 1, ''),
(393, 57, '28-04-2015', 3, '36', 1, ''),
(394, 15, '30-04-2015', 3, '24', 1, ''),
(396, 127, '30-04-2015', 0, '24', 1, ''),
(397, 105, '30-04-2015', 3, '12', 1, ''),
(398, 72, '28-04-2015', 3, '30', 1, ''),
(399, 33, '05-05-2015', 3, '66.6', 1, ''),
(400, 83, '30-04-2015', 3, '24', 1, ''),
(401, 85, '30-04-2015', 3, '12', 1, ''),
(402, 85, '30-04-2015', 3, '12', 1, ''),
(403, 41, '05-05-2015', 3, '58.68', 1, ''),
(404, 41, '05-05-2015', 3, '2.15', 1, ''),
(405, 82, '05-05-2015', 3, '12', 1, ''),
(406, 82, '05-05-2015', 3, '66.6', 1, ''),
(407, 7, '06-05-2015', 3, '104.4', 1, ''),
(408, 85, '06-05-2015', 3, '0', 0, ''),
(409, 190, '07-05-2015', 3, '18', 1, ''),
(410, 155, '07-05-2015', 3, '24', 1, ''),
(411, 212, '07-05-2015', 3, '24', 1, ''),
(412, 41, '12-05-2015', 3, '24', 1, ''),
(413, 24, '26-03-2015', 3, '12', 1, ''),
(415, 212, '26-03-2015', 3, '6', 1, ''),
(416, 158, '24-03-2015', 3, '5', 1, ''),
(417, 158, '24-03-2015', 3, '6', 1, ''),
(418, 7, '24-03-2015', 3, '3.55', 1, ''),
(419, 30, '02-04-2015', 3, '6', 1, ''),
(420, 170, '02-04-2015', 3, '6', 1, ''),
(421, 60, '02-04-2015', 3, '40.05', 1, ''),
(422, 190, '02-04-2015', 3, '6', 1, ''),
(423, 77, '07-04-2015', 3, '12', 1, ''),
(424, 84, '07-04-2015', 3, '6', 1, ''),
(425, 207, '07-04-2015', 3, '6', 1, ''),
(426, 203, '09-05-2015', 3, '30', 1, ''),
(427, 22, '09-05-2015', 3, '12', 1, ''),
(428, 7, '13-04-2015', 3, '0', 0, ''),
(429, 200, '14-05-2015', 3, '6', 1, ''),
(430, 139, '16-04-2015', 3, '12', 1, ''),
(432, 162, '16-04-2015', 3, '6', 1, ''),
(434, 158, '21-04-2015', 3, '6', 1, ''),
(435, 22, '21-04-2015', 3, '7.1', 1, ''),
(436, 22, '21-04-2015', 3, '30', 1, ''),
(437, 82, '21-04-2015', 3, '12', 1, ''),
(438, 224, '23-04-2015', 3, '12', 1, ''),
(439, 199, '23-04-2015', 3, '12', 1, ''),
(440, 164, '23-04-2015', 3, '5', 1, ''),
(442, 225, '30-04-2015', 3, '12', 1, ''),
(443, 93, '07-05-2015', 3, '12', 1, ''),
(445, 96, '12-05-2015', 3, '6', 1, ''),
(446, 150, '12-05-2015', 3, '12', 1, ''),
(447, 7, '12-05-2015', 3, '3.55', 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `charge_fixe`
--

CREATE TABLE IF NOT EXISTS `charge_fixe` (
`idchargefixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_charge_fixe` varchar(255) NOT NULL,
  `montant_charge` varchar(255) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Contenu de la table `charge_fixe`
--

INSERT INTO `charge_fixe` (`idchargefixe`, `designation`, `date_charge_fixe`, `montant_charge`, `num_mouvement`) VALUES
(30, 'DECES FAMILLE ESNAULT ET  GODIN', '09-02-2015', '130', '8966541'),
(31, 'COTISATION ANNUELLE CEZAM 2015', '14-01-2015', '1016.55', ''),
(32, 'PRODUITS FOURNISSEUR RIVADIS', '07-03-2015', '250.45', ''),
(33, 'DECES FAMILLE CHALLIER', '16-03-2015', '70', ''),
(34, 'FRAIS BANCAIRE CIC ( CHEQUE IMPAYE MBIDA SYLVIE)', '18-03-2015', '22', ''),
(35, 'FRAIS POSTAUX BORDEREAU CHEQUE', '11-05-2015', '1.62', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=701 ;

--
-- Contenu de la table `cpt_resultat`
--

INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(286, '', '1420671600', 'Achat - CINEMA GAUMONT', '185', ''),
(288, '', '1420671600', 'Achat - CELTIC LEGENDS', '222', ''),
(289, '', '1421190000', 'Achat - ALAIN SOUCHON', '138', ''),
(290, '', '1422572400', 'Achat - SHYM', '37', ''),
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
(303, '', '1423782000', 'Achat - CHEQUE DOMICILE FAMILLE IMPOSABLE ', '244', ''),
(304, '', '1424905200', 'Achat - CHEQUE DOMICILE FAMILLE IMPOSABLE ', '244', ''),
(305, '', '1424300400', 'Achat - CHEQUE DOMICILE FAMILLE IMPOSABLE ', '244', ''),
(310, '', '1421622000', 'Achat - CARTE CEZAM OUVRANT DROIT', '360', ''),
(312, '8966541', '1423436400', 'DECES FAMILLE ESNAULT ET  GODIN', '130', ''),
(313, '', '1421622000', 'Achat - CARTE CEZAM AYANT DROIT', '90', ''),
(314, '', '1421190000', 'COTISATION ANNUELLE CEZAM 2015', '1016.55', ''),
(315, '', '1425682800', 'PRODUITS FOURNISSEUR RIVADIS', '250.45', ''),
(317, '23217677', '1420153200', 'Vente de Billetterie: TELLANGER Axelle pour la prestation CAFE TARIF 2014', '', '8.2'),
(320, '21839043', '1420498800', 'Vente de Billetterie: BOUET Annette pour la prestation CINEMA GAUMONT', '', '36'),
(321, '94276183', '1420498800', 'Vente de Billetterie: BOUET Annette pour la prestation CELTIC LEGENDS', '', '199.8'),
(323, '68958089', '1420498800', 'Vente de Billetterie: VIVIEN HervÃ© pour la prestation AUSTRALIAN PINK FLOYD SHOW', '', '203.4'),
(326, '40949264', '1420498800', 'Vente de Billetterie: DUPAS FranÃ§oise pour la prestation CAFE TARIF 2014', '', '4.1'),
(330, '57974455', '1420585200', 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CINEMA GAUMONT', '', '36'),
(331, '10915575', '1420585200', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT', '', '18'),
(332, '37951513', '1420585200', 'Vente de Billetterie: LE BORGNE Celine pour la prestation CINEMA GAUMONT', '', '18'),
(335, '4160178', '1420585200', 'Vente de Billetterie: CHARREAU Helene pour la prestation CAFE 2015', '', '2.15'),
(338, '1629515', '1421103600', 'Vente de Billetterie: BRARD Marie Pierre pour la prestation CINEMA GAUMONT', '', '36'),
(347, '50015969', '1421708400', 'Vente de Billetterie: COCHIN Yvon pour la prestation ALAIN SOUCHON', '', '124.2'),
(355, '5162891', '1422486000', 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation CAFE TARIF 2014', '', '4.1'),
(357, '13938121', '1422486000', 'Vente de Billetterie: LATONNELLE Anne pour la prestation CINEMA GAUMONT', '', '18'),
(360, '49233028', '1422486000', 'Vente de Billetterie: CHEIGNON Aurore pour la prestation SHYM', '', '33.3'),
(363, '67249470', '1422486000', 'Vente de Billetterie: SEHAQUI M Therese pour la prestation CINEMA GAUMONT', '', '84'),
(364, '21923397', '1422486000', 'Vente de Billetterie: BOUTREUX Anne Sophie pour la prestation CINEMA GAUMONT', '', '18'),
(365, '73365620', '1422486000', 'Vente de Billetterie: BOUTREUX Anne Sophie pour la prestation CINEMA 400 COUPS', '', '35.12'),
(367, '34813337', '1422486000', 'Vente de Billetterie: GERARD Alexandra pour la prestation CINEMA GAUMONT', '', '42'),
(368, '53273273', '1422486000', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CINEMA GAUMONT', '', '18'),
(371, '9925973', '1422486000', 'Vente de Billetterie: PASCUITO Isabelle pour la prestation CINEMA GAUMONT', '', '60'),
(379, '42914685', '1422918000', 'Vente de Billetterie: JULIENNE THEO pour la prestation CAFE  DOSETTES 2014', '', '7.1'),
(382, '39691243', '1423090800', 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation CINEMA GAUMONT', '', '18'),
(383, '5708293', '1423090800', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT', '', '18'),
(388, '8710123', '1423522800', 'Vente de Billetterie: LATONNELLE Anne pour la prestation CINEMA GAUMONT', '', '42'),
(391, '87198247', '1423522800', 'Vente de Billetterie: TREMBLAIS (CATHERINE) pour la prestation PLANETE SAUVAGE ENFANTS', '', '15.75'),
(392, '25238549', '1423522800', 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation PLANETE SAUVAGE ADULTES', '', '42.3'),
(393, '60667519', '1423522800', 'Vente de Billetterie: SEHAQUI M Therese pour la prestation PRADEL', '', '97.8'),
(400, '11450486', '1423695600', 'Vente de Billetterie: GILBERT Lucie pour la prestation CINEMA GAUMONT', '', '36'),
(402, '32295393', '1423695600', 'Vente de Billetterie: MAUSSION Christine pour la prestation CAFE TARIF 2014', '', '2.05'),
(403, '30969281', '1423695600', 'Vente de Billetterie: MAUSSION Christine pour la prestation CAFE 2015', '', '4.3'),
(404, '41458352', '1423695600', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CAFE  DOSETTES 2014', '', '7.1'),
(405, '23910583', '1424127600', 'Vente de Billetterie: RUBIO G.MICHEL pour la prestation CINEMA GAUMONT', '', '36'),
(406, '33293487', '1424127600', 'Vente de Billetterie: RUBIO G.MICHEL pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE ', '', '198.2'),
(407, '86952641', '1424127600', 'Vente de Billetterie: CHAILLOU Sandra pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE ', '', '198.2'),
(409, '35018532', '1424127600', 'Vente de Billetterie: LEBAILLY Emilie pour la prestation CINEMA GAUMONT', '', '36'),
(415, '99846044', '1424732400', 'Vente de Billetterie: THEULIER Laure pour la prestation BLACK M', '', '70.2'),
(417, '13676616', '1425337200', 'Vente de Billetterie: INCONNU INCONNU pour la prestation CAFE 2015', '', '2.15'),
(420, '3114440', '1425682800', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation RIVADIS', '', '7.13'),
(422, '97269595', '1424300400', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT', '', '66'),
(424, '83621653', '1424300400', 'Vente de Billetterie: CHEVREUX Melanie pour la prestation CINEMA GAUMONT', '', '36'),
(425, '42482972', '1424300400', 'Vente de Billetterie: DENECHERE Pascale pour la prestation CINEMA GAUMONT', '', '18'),
(429, '69467874', '1424300400', 'Vente de Billetterie: HENNE Teresa pour la prestation ALAIN SOUCHON', '', '124.2'),
(432, '68097961', '1424905200', 'Vente de Billetterie: PICHERIT Valerie pour la prestation CINEMA GAUMONT', '', '36'),
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
(459, '92026038', '1424300400', 'Vente de Billetterie: DIJOLS Christine pour la prestation GAUMONT', '', '36'),
(460, '81562866', '1422918000', 'Vente de Billetterie: MALINGE Anicette pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(481, '', '1425942000', 'Achat - CAFE 2015', '51.6', ''),
(482, '', '1425942000', 'Achat - CAFE DOSETTE 2015', '51.1', ''),
(483, '', '1427324400', 'Achat - PRADEL', '173.65', ''),
(484, '', '1427324400', 'Achat - PRADEL', '21.95', ''),
(485, '', '1426719600', 'Achat - AQUARUIM OCEANOPOLIS ENFANT', '34.5', ''),
(486, '', '1426719600', 'Achat - AQUARUIM OCEANOPOLIS ADULTES', '53.4', ''),
(487, '', '1427324400', 'Achat - CHOCOLAT ORDISCOM', '93.49', ''),
(489, '', '1425942000', 'Achat - GAUMONT', '570', ''),
(490, '', '1426460400', 'DECES FAMILLE CHALLIER', '70', ''),
(491, '', '1427839200', 'Achat - FRANCIS CABREL', '56', ''),
(492, '', '1427839200', 'Achat - ZOO DE BEAUVAL ADULTE', '115', ''),
(493, '', '1427839200', 'Achat - ALAIN SOUCHON ET LAURENT VOULZY', '50', ''),
(495, '', '1428012000', 'Achat - BOWLING SILVER BOWL', '44.5', ''),
(496, '', '1428012000', 'Achat - BOWLING LE COLISEE', '34', ''),
(498, '', '1428012000', 'Achat - GAUMONT', '190', ''),
(500, '', '1428876000', 'Achat - GAUMONT', '380', ''),
(501, '', '1428876000', 'Achat - TERRA BOTANICA ADULTE', '28.2', ''),
(502, '', '1428876000', 'Achat - TERRA BOTANICA ENFANT', '10.2', ''),
(504, '', '1428876000', 'Achat - TERRA BOTANICA ADULTE', '42.3', ''),
(505, '', '1428876000', 'Achat - TERRA BOTANICA ENFANT', '30.6', ''),
(506, '', '1428876000', 'Achat - 400 COUPS (04-2015)', '20', ''),
(507, '', '1429135200', 'Achat - FRANCIS CABREL', '56', ''),
(508, '', '1429135200', 'Achat - BIOPARC ADULTE', '114.1', ''),
(509, '', '1429135200', 'Achat - BODIN''S CATEGORIE 1 ADULTE (27-11-2015)', '117', ''),
(511, '', '1429135200', 'Achat - BODIN''S CATEGORIE 1 ENFANT -12 ANS (27-11-2015)', '60', ''),
(513, '', '1429653600', 'Achat - ZOO DE LA FLECHE ADULTE', '90', ''),
(514, '', '1429653600', 'Achat - ZOO DE LA FLECHE ENFANT', '29', ''),
(515, '', '1429653600', 'Achat - GAUMONT', '190', ''),
(516, '', '1429999200', 'Achat - 24 HEURES DU MANS AUTOS (SEMAINE DU 7 AU 14--2015 + JOURNEE TEST 31-05-2015', '60', ''),
(517, '', '1429999200', 'Achat - 24 HEURES DU MANS AUTOS (SEMAINE DU 7 AU 14--2015 + JOURNEE TEST 31-05-2015', '300', ''),
(518, '', '1429999200', 'Achat - ZOO DE LA FLECHE ADULTE', '54', ''),
(519, '', '1429999200', 'Achat - ZOO DE LA FLECHE ADULTE', '54', ''),
(520, '', '1429653600', 'Achat - BIOPARC ADULTE', '32.6', ''),
(521, '26764024', '1426114800', 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMA GAUMONT', '', '18'),
(522, '50231001', '1426114800', 'Vente de Billetterie: PRUDHOMME Celine pour la prestation GAUMONT', '', '36'),
(523, '20419076', '1426114800', 'Vente de Billetterie: DUPAS FranÃ§oise pour la prestation CAFE 2015', '', '8.6'),
(524, '17507267', '1426114800', 'Vente de Billetterie: CHATEAU Sandrine pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(526, '78442589', '1426719600', 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation GAUMONT', '', '12'),
(527, '90280824', '1423522800', 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation PRADEL', '', '30.95'),
(529, '64242978', '1424732400', 'Vente de Billetterie: BOULAY Jennifer pour la prestation DISNEY RESORT PARIS  1 JOUR 2 PARCS ADULTES', '', '120.6'),
(530, '93682433', '1424818800', 'Vente de Billetterie: GERARD Alexandra pour la prestation GAUMONT', '', '54'),
(531, '69233624', '1424905200', 'Vente de Billetterie: SEGARRA Agnes pour la prestation CINEMA GAUMONT', '', '24'),
(532, '79459223', '1425942000', 'Vente de Billetterie: BAILLY Michelle pour la prestation GAUMONT', '', '36'),
(533, '12456649', '1425942000', 'Vente de Billetterie: BAILLY Michelle pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(534, '18091719', '1425942000', 'Vente de Billetterie: BAILLY CHRISTIAN pour la prestation CARTE CEZAM AYANT DROIT', '', '5'),
(536, '20627811', '1425942000', 'Vente de Billetterie: TESSIER Florence pour la prestation GAUMONT', '', '24'),
(537, '83354081', '1426114800', 'Vente de Billetterie: TELLANGER Axelle pour la prestation GAUMONT', '', '12'),
(539, '48720986', '1426114800', 'Vente de Billetterie: TELLANGER Axelle pour la prestation CAFE 2015', '', '12.9'),
(540, '54385383', '1426114800', 'Vente de Billetterie: COCHIN Yvon pour la prestation GAUMONT', '', '12'),
(541, '54718100', '1425682800', 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation RIVADIS', '', '24.98'),
(544, '11476822', '1426719600', 'Vente de Billetterie: LE GAL Barbara pour la prestation GAUMONT', '', '12'),
(545, '17184056', '1426719600', 'Vente de Billetterie: COTTENCEAU Monique pour la prestation GAUMONT', '', '24'),
(546, '84103320', '1426719600', 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation GAUMONT', '', '60'),
(547, '60420418', '1426719600', 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(548, '5673869', '1426719600', 'Vente de Billetterie: LE JEAN  CELINE pour la prestation CARTE CEZAM AYANT DROIT', '', '5'),
(549, '88128087', '1426719600', 'Vente de Billetterie: ROYER Catherine pour la prestation AQUARUIM OCEANOPOLIS ADULTES', '', '48.06'),
(550, '95673506', '1426719600', 'Vente de Billetterie: ROYER Julien pour la prestation AQUARUIM OCEANOPOLIS ENFANT', '', '31.05'),
(551, '19430651', '1427151600', 'Vente de Billetterie: MAQUIN CATHERINE pour la prestation GAUMONT', '', '12'),
(552, '28223676', '1427324400', 'Vente de Billetterie: POUTREL Sylvie pour la prestation GAUMONT', '', '60'),
(553, '7691343', '1427324400', 'Vente de Billetterie: POUTREL Sylvie pour la prestation PARC ASTERIX', '', '162'),
(555, '72801059', '1427324400', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CHOCOLAT ORDISCOM', '', '60.69'),
(556, '71675588', '1426114800', 'Vente de Billetterie: DENECHERE Pascale pour la prestation CHOCOLAT ORDISCOM', '', '22.8'),
(557, '7628599', '1427752800', 'Vente de Billetterie: NASRI Marion pour la prestation GAUMONT', '', '12'),
(558, '5827024', '1427752800', 'Vente de Billetterie: TAUDON Christine pour la prestation GAUMONT', '', '18'),
(559, '8435358', '1427752800', 'Vente de Billetterie: TAUDON Christine pour la prestation CARTE ATOUT', '', '21.6'),
(560, '20713185', '1427752800', 'Vente de Billetterie: LE CALVEZ Jocelyne pour la prestation CARTE ATOUT', '', '21.6'),
(561, '64141150', '1427752800', 'Vente de Billetterie: COCHIN Yvon pour la prestation FRANCIS CABREL', '', '50.4'),
(562, '63541290', '1427752800', 'Vente de Billetterie: COCHIN Yvon pour la prestation GAUMONT', '', '12'),
(563, '81833136', '1427925600', 'Vente de Billetterie: VOISINE ANNIE pour la prestation GAUMONT', '', '36'),
(565, '91629197', '1427925600', 'Vente de Billetterie: BOIS Marie pour la prestation GAUMONT', '', '12'),
(566, '81295064', '1427925600', 'Vente de Billetterie: MENANT Sylvie pour la prestation GAUMONT', '', '24'),
(567, '50065739', '1427925600', 'Vente de Billetterie: PICHERIT Valerie pour la prestation GAUMONT', '', '36'),
(568, '71354908', '1427925600', 'Vente de Billetterie: CRANSAC Christel pour la prestation GAUMONT', '', '36'),
(569, '20265683', '1427925600', 'Vente de Billetterie: AUGUET Joelle pour la prestation CARTE ATOUT', '', '21.6'),
(572, '95403624', '1427925600', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation GAUMONT', '', '18'),
(573, '78732909', '1427925600', 'Vente de Billetterie: REVEREAULT John pour la prestation BOWLING LE COLISEE', '', '30.6'),
(574, '896481', '1428357600', 'Vente de Billetterie: FOUQUERAY Edwige pour la prestation GAUMONT', '', '42'),
(575, '19470510', '1428530400', 'Vente de Billetterie: COCHIN Yvon pour la prestation GAUMONT', '', '24'),
(577, '49642823', '1428530400', 'Vente de Billetterie: YEKULI Aurelie pour la prestation GAUMONT', '', '12'),
(578, '77324882', '1428530400', 'Vente de Billetterie: BAILLY Michelle pour la prestation ZOO DE BEAUVAL ADULTE', '', '103.5'),
(579, '36410272', '1428530400', 'Vente de Billetterie: GERARD Alexandra pour la prestation GAUMONT', '', '18'),
(580, '98400415', '1428530400', 'Vente de Billetterie: SOUALAH Bahija pour la prestation GAUMONT', '', '24'),
(581, '71804331', '1428530400', 'Vente de Billetterie: SOULET Elodie pour la prestation TERRA BOTANICA ADULTE', '', '25.38'),
(582, '39016227', '1428530400', 'Vente de Billetterie: SOULET Nino pour la prestation TERRA BOTANICA ENFANT', '', '9.18'),
(583, '53972381', '1428876000', 'Vente de Billetterie: GUIHO Odette pour la prestation 400 COUPS (04-2015)', '', '18'),
(585, '2182566', '1428876000', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation TERRA BOTANICA ADULTE', '', '38.07'),
(586, '6611616', '1428876000', 'Vente de Billetterie: BEAUMONT SEBASTIEN pour la prestation TERRA BOTANICA ENFANT', '', '27.54'),
(587, '89341393', '1428962400', 'Vente de Billetterie: BRARD Marie Pierre pour la prestation GAUMONT', '', '24'),
(588, '58876083', '1428962400', 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation GAUMONT', '', '12'),
(589, '39483148', '1428962400', 'Vente de Billetterie: PERDRIAU Carine pour la prestation GAUMONT', '', '12'),
(590, '45450951', '1428962400', 'Vente de Billetterie: COCHIN Yvon pour la prestation FRANCIS CABREL', '', '50.4'),
(591, '55173683', '1428962400', 'Vente de Billetterie: DOISNEAU Geraldine pour la prestation BIOPARC ADULTE', '', '102.69'),
(592, '64447336', '1428962400', 'Vente de Billetterie: YEKULI Aurelie pour la prestation GAUMONT', '', '12'),
(593, '26348433', '1429135200', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation BODIN''S CATEGORIE 1 ADULTE (27-11-2015)', '', '105.3'),
(594, '87826245', '1429135200', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation BODIN''S CATEGORIE 1 ENFANT -12 ANS (27-11-2015)', '', '54'),
(597, '7772396', '1429135200', 'Vente de Billetterie: AMARA Nadia pour la prestation BIOPARC PROMO', '', '28.8'),
(599, '42663149', '1429567200', 'Vente de Billetterie: FOUBLE Camille pour la prestation GAUMONT', '', '24'),
(600, '67843125', '1429567200', 'Vente de Billetterie: MAUDET Delphine pour la prestation CARTE ATOUT', '', '21.6'),
(601, '77165844', '1428876000', 'Vente de Billetterie: INCONNU INCONNU pour la prestation CAFE  DOSETTES 2014', '', '3.55'),
(602, '', '1429826400', 'SUBVENTION 03-2015', '', '1516.48'),
(603, '', '1420066800', 'CAISSE ESPECE', '', '311.62'),
(604, '', '1426633200', 'FRAIS BANCAIRE CIC ( CHEQUE IMPAYE MBIDA SYLVIE)', '22', ''),
(606, '', '1430172000', 'Achat - 400 COUPS (04-2015)', '40', ''),
(608, '', '1430172000', 'Achat - GRAND PARC PUY DU FOU ADULTE', '110.4', ''),
(609, '', '1430172000', 'Achat -  GRAND PARC PUY DU FOU ENFANT', '36.8', ''),
(610, '', '1430172000', 'Achat - PARC DISNEYLAND ADULTE 1 JOUR 1 PARC', '108', ''),
(611, '', '1430863200', 'Achat - BIOPARC ADULTE', '130.4', ''),
(612, '', '1430863200', 'Achat - BIOPARC ADULTE', '65.2', ''),
(613, '', '1430863200', 'Achat - PARC FUTUROSCOPE ADULTE', '74', ''),
(614, '', '1430863200', 'Achat - PARC FUTUROSCOPE ENFANTS (5-16 ANS)', '31', ''),
(615, '', '1430863200', 'Achat - PARC FUTUROSCOPE ENFANTS (5-16 ANS)', '31', ''),
(616, '', '1430863200', 'Achat - PARC FUTUROSCOPE ADULTE', '74', ''),
(617, '', '1430863200', 'Achat - MESSMER', '116', ''),
(618, '', '1430863200', 'Achat - GAUMONT', '760', ''),
(619, '92238604', '1422054000', 'Vente de Billetterie: CIBRON Christophe pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE ', '', '198.2'),
(620, '34809391', '1429740000', 'Vente de Billetterie: DENECHERE Pascale pour la prestation ZOO DE LA FLECHE ADULTE', '', '81'),
(622, '22882855', '1429740000', 'Vente de Billetterie: TELLANGER Axelle pour la prestation CAFE 2015', '', '12.9'),
(623, '90470376', '1429740000', 'Vente de Billetterie: TAUNAY M Laure pour la prestation ZOO DE LA FLECHE ADULTE', '', '48.6'),
(624, '89568898', '1429740000', 'Vente de Billetterie: AILLERIE Myriam pour la prestation ZOO DE LA FLECHE ADULTE', '', '48.6'),
(625, '68909426', '1430172000', 'Vente de Billetterie: NASRI Marion pour la prestation GAUMONT', '', '24'),
(627, '20679079', '1430172000', 'Vente de Billetterie: SEURRE Marie Jose pour la prestation 24 HEURES DU MANS AUTOS (SEMAINE DU 7 AU 14--2015 + JOURNEE TEST 31-05-2015', '', '324'),
(628, '98519588', '1429740000', 'Vente de Billetterie: DENECHERE Thomas pour la prestation ZOO DE LA FLECHE ENFANT', '', '26.1'),
(629, '7179765', '1429135200', 'Vente de Billetterie: AMARA Meline pour la prestation BIOPARC ENFANT  2014', '', '10'),
(630, '', '1430431200', 'Achat - CIRQUE', '24', ''),
(631, '44903044', '1430172000', 'Vente de Billetterie: SOULET Elodie pour la prestation GRAND PARC PUY DU FOU ADULTE', '', '99.36'),
(632, '39176640', '1430172000', 'Vente de Billetterie: SOULET Nino pour la prestation  GRAND PARC PUY DU FOU ENFANT', '', '33.12'),
(633, '64157663', '1430172000', 'Vente de Billetterie: DESCHRYVER Elisabeth pour la prestation PARC DISNEYLAND ADULTE 1 JOUR 1 PARC', '', '97.2'),
(634, '14809380', '1430172000', 'Vente de Billetterie: DABOUDET Valerie pour la prestation 400 COUPS (04-2015)', '', '36'),
(635, '19139502', '1430344800', 'Vente de Billetterie: BINOT Lucie pour la prestation GAUMONT', '', '24'),
(637, '16359603', '1430344800', 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation GAUMONT', '', '24'),
(638, '93984655', '1430344800', 'Vente de Billetterie: HUAU Carine pour la prestation GAUMONT', '', '12'),
(639, '22000765', '1430172000', 'Vente de Billetterie: DURAND CHATTON Pascale pour la prestation GAUMONT', '', '30'),
(640, '25533344', '1430776800', 'Vente de Billetterie: CADELE Marie Claude pour la prestation PARC FUTUROSCOPE ADULTE', '', '66.6'),
(641, '74617720', '1430776800', 'Vente de Billetterie: CADELE ELODIE pour la prestation PARC FUTUROSCOPE ENFANTS (5-16 ANS)', '', '27.9'),
(642, '42135540', '1430344800', 'Vente de Billetterie: GAUDELET Maryline pour la prestation GAUMONT', '', '24'),
(643, '95299874', '1430344800', 'Vente de Billetterie: GERARD Alexandra pour la prestation CIRQUE', '', '12'),
(644, '45713596', '1430344800', 'Vente de Billetterie: GERARD Alexandra pour la prestation CIRQUE', '', '12'),
(645, '54515115', '1430776800', 'Vente de Billetterie: CHARREAU Helene pour la prestation BIOPARC ADULTE', '', '58.68'),
(646, '5053115', '1430776800', 'Vente de Billetterie: CHARREAU Helene pour la prestation CAFE 2015', '', '2.15'),
(647, '3122601', '1430776800', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation GAUMONT', '', '12'),
(648, '16721928', '1430776800', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation PARC FUTUROSCOPE ADULTE', '', '66.6'),
(649, '13770404', '1430863200', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation MESSMER', '', '104.4'),
(650, '73601333', '1430949600', 'Vente de Billetterie: SEGARRA Agnes pour la prestation GAUMONT', '', '18'),
(651, '19329256', '1430949600', 'Vente de Billetterie: MOREAU Sandra pour la prestation GAUMONT', '', '24'),
(652, '96302435', '1430949600', 'Vente de Billetterie: VIVION Beatrice pour la prestation GAUMONT', '', '24'),
(653, '11513932', '1431381600', 'Vente de Billetterie: CHARREAU Helene pour la prestation GAUMONT', '', '24'),
(654, '', '1431295200', 'FRAIS POSTAUX BORDEREAU CHEQUE', '1.62', ''),
(655, '54796737', '1427324400', 'Vente de Billetterie: BOUET Annette pour la prestation GAUMONT', '', '12'),
(658, '29830152', '1427151600', 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(659, '50605158', '1427151600', 'Vente de Billetterie: LASALLE  TANGUY pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5'),
(661, '67627145', '1427151600', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CAFE  DOSETTES 2014', '', '3.55'),
(664, '3653924', '1427925600', 'Vente de Billetterie: DELAUNAY Dominique pour la prestation BOWLING SILVER BOWL', '', '40.05'),
(666, '12448843', '1428357600', 'Vente de Billetterie: FOUBLE Camille pour la prestation GAUMONT', '', '12'),
(669, '76521020', '1431122400', 'Vente de Billetterie: THEULIER Laure pour la prestation GAUMONT', '', '30'),
(670, '19706072', '1431122400', 'Vente de Billetterie: BORE Marie Pierre pour la prestation GAUMONT', '', '12'),
(672, '35782547', '1429135200', 'Vente de Billetterie: LORINQUER Melanie pour la prestation GAUMONT', '', '12'),
(675, '91974455', '1429135200', 'Vente de Billetterie: PECOT Sandrine pour la prestation GAUMONT', '', '6'),
(676, '67912826', '1429567200', 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation GAUMONT', '', '6'),
(677, '18203769', '1429567200', 'Vente de Billetterie: BORE Marie Pierre pour la prestation CAFE  DOSETTES 2014', '', '7.1'),
(678, '92483765', '1429567200', 'Vente de Billetterie: BORE Marie Pierre pour la prestation GAUMONT', '', '30'),
(679, '47538232', '1430172000', 'Vente de Billetterie: BORE MARINE pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5'),
(680, '6426091', '1429567200', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation GAUMONT', '', '12'),
(681, '67077497', '1429740000', 'Vente de Billetterie: LANGLOIS VALERIE pour la prestation GAUMONT', '', '12'),
(682, '99838714', '1429740000', 'Vente de Billetterie: TAUNAY M Laure pour la prestation GAUMONT', '', '12'),
(683, '89457326', '1429740000', 'Vente de Billetterie: PERDRIAU Sophie pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(684, '50682768', '1429740000', 'Vente de Billetterie: PERDRIAU  pour la prestation CARTE CEZAM AYANT DROIT', '', '7.5'),
(685, '98218253', '1430344800', 'Vente de Billetterie: GLORIA (SERVICE+)  pour la prestation GAUMONT', '', '12'),
(686, '2286676', '1430949600', 'Vente de Billetterie: GRAU Cecilio pour la prestation GAUMONT', '', '12'),
(687, '45028779', '1431295200', 'Vente de Billetterie: CADELE ELODIE pour la prestation PARC FUTUROSCOPE ENFANTS (5-16 ANS)', '', '27.9'),
(688, '81237451', '1431381600', 'Vente de Billetterie: GUIHO Odette pour la prestation GAUMONT', '', '6'),
(689, '59542032', '1431381600', 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation GAUMONT', '', '12'),
(690, '73888816', '1431381600', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CAFE  DOSETTES 2014', '', '3.55'),
(691, '', '1431554400', 'Achat - CIRQUE', '24', ''),
(692, '2967403429', '1432159200', 'SUBVENTION ASC AVRIL 2015', '', '1714.11'),
(693, '', '1432072800', 'Achat - BODIN''S CATEGORIE 1 TARIF NORMAL', '258', ''),
(694, '', '1432072800', 'Achat - 24 HEURES DU MANS AUTOS (SEMAINE DU 7 AU 14--2015 + JOURNEE TEST 31-05-2015', '60', ''),
(695, '', '1432072800', 'Achat - GRAND PARC PUY DU FOU ADULTE', '165.6', ''),
(696, '', '1432072800', 'Achat -  GRAND PARC PUY DU FOU ENFANT', '36.8', ''),
(697, '', '1432072800', 'Achat - ZOO DE BEAUVAL ADULTE', '46', ''),
(698, '', '1432072800', 'Achat - BODIN''S CATEGORIE 1 TARIF NORMAL', '86', ''),
(699, '', '1432072800', 'Achat - BODIN''S CATEGORIE 2 ', '70', ''),
(700, '', '1432591200', 'Achat - PRADEL', '144.8', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Contenu de la table `ligne_billet_ayant_droit`
--

INSERT INTO `ligne_billet_ayant_droit` (`idlignebilletayantdroit`, `idbilletayantdroit`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(27, 28, 113, '1', '2.5', '3.5', 0),
(28, 29, 113, '1', '2.5', '3.5', 0),
(29, 30, 113, '1', '2.5', '3.5', 0),
(30, 31, 106, '1', '15.75', '1.75', 0),
(31, 32, 113, '1', '2.5', '3.5', 0),
(32, 33, 107, '2', '10.8', '1.2', 0),
(33, 34, 113, '2', '5', '7', 0),
(34, 35, 113, '2', '5', '7', 0),
(35, 36, 119, '3', '31.05', '3.45', 0),
(36, 37, 129, '1', '9.18', '1.02', 0),
(37, 38, 129, '3', '27.54', '3.06', 0),
(39, 40, 135, '2', '26.1', '2.9', 0),
(40, 41, 137, '1', '10', '1', 0),
(41, 42, 140, '2', '33.12', '3.68', 0),
(42, 43, 143, '1', '27.9', '3.1', 0),
(43, 44, 113, '1', '2.5', '3.5', 0),
(44, 45, 113, '1', '2.5', '3.5', 0),
(45, 46, 113, '3', '7.5', '10.5', 0),
(46, 47, 143, '1', '27.9', '3.1', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=438 ;

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
(264, 273, 93, '11', '66', '15.4', 0),
(265, 274, 93, '2', '12', '2.8', 0),
(266, 275, 93, '6', '36', '8.4', 0),
(267, 276, 93, '3', '18', '4.2', 0),
(268, 277, 93, '2', '12', '2.8', 0),
(271, 280, 100, '2', '124.2', '13.8', 0),
(273, 282, 93, '5', '30', '7', 0),
(274, 283, 93, '6', '36', '8.4', 0),
(275, 284, 93, '4', '24', '5.6', 0),
(276, 285, 93, '2', '12', '2.8', 0),
(277, 286, 93, '5', '30', '7', 0),
(278, 287, 93, '2', '12', '2.8', 0),
(281, 290, 93, '4', '24', '5.6', 0),
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
(299, 307, 117, '6', '36', '9.6', 0),
(300, 308, 111, '1', '5', '7', 0),
(301, 309, 93, '3', '18', '4.2', 0),
(302, 310, 117, '6', '36', '9.6', 0),
(303, 311, 103, '4', '8.6', '0', 0),
(304, 312, 111, '1', '5', '7', 0),
(305, 313, 117, '4', '24', '6.4', 0),
(306, 314, 117, '2', '12', '3.2', 0),
(307, 306, 114, '3.095', '30.95', '0', 0),
(308, 315, 93, '5', '30', '7', 0),
(309, 316, 108, '2', '120.6', '13.4', 0),
(310, 317, 117, '9', '54', '14.4', 0),
(311, 318, 93, '4', '24', '5.6', 0),
(312, 319, 117, '6', '36', '9.6', 0),
(313, 320, 111, '1', '5', '7', 0),
(314, 322, 117, '5', '30', '8', 0),
(315, 323, 117, '4', '24', '6.4', 0),
(316, 324, 117, '2', '12', '3.2', 0),
(318, 326, 103, '6', '12.9', '0', 0),
(319, 327, 117, '2', '12', '3.2', 0),
(320, 328, 115, '2.498', '24.98', '0', 0),
(323, 330, 117, '2', '12', '3.2', 0),
(324, 331, 117, '4', '24', '6.4', 0),
(325, 332, 117, '10', '60', '16', 0),
(326, 333, 111, '1', '5', '7', 0),
(327, 335, 120, '3', '48.06', '5.34', 0),
(328, 336, 117, '2', '12', '3.2', 0),
(329, 337, 117, '10', '60', '16', 0),
(330, 338, 116, '5', '162', '18', 0),
(332, 339, 121, '10', '60.69', '0', 0),
(333, 329, 121, '10', '22.8', '0', 0),
(334, 340, 117, '2', '12', '3.2', 0),
(335, 341, 117, '3', '18', '4.8', 0),
(336, 342, 96, '1', '21.6', '2.8', 0),
(337, 343, 96, '1', '21.6', '2.8', 0),
(338, 344, 122, '1', '50.4', '5.6', 0),
(339, 345, 117, '2', '12', '3.2', 0),
(340, 346, 117, '6', '36', '9.6', 0),
(341, 347, 125, '2', '29.34', '3.26', 0),
(342, 348, 117, '2', '12', '3.2', 0),
(343, 349, 117, '4', '24', '6.4', 0),
(344, 350, 117, '6', '36', '9.6', 0),
(345, 351, 117, '6', '36', '9.6', 0),
(346, 352, 96, '1', '21.6', '2.8', 0),
(347, 353, 117, '5', '30', '8', 0),
(348, 354, 125, '2', '29.34', '3.26', 0),
(349, 355, 117, '3', '18', '4.8', 0),
(350, 356, 127, '4', '30.6', '3.4', 0),
(351, 357, 117, '7', '42', '11.2', 0),
(352, 359, 117, '4', '24', '6.4', 0),
(353, 360, 117, '5', '30', '8', 0),
(354, 361, 117, '2', '12', '3.2', 0),
(355, 362, 123, '5', '103.5', '11.5', 0),
(356, 363, 117, '3', '18', '4.8', 0),
(357, 364, 117, '4', '24', '6.4', 0),
(358, 365, 128, '2', '25.38', '2.82', 0),
(359, 366, 130, '4', '18', '2', 0),
(360, 367, 117, '1', '6', '1.6', 0),
(361, 368, 128, '3', '38.07', '4.23', 0),
(362, 369, 117, '4', '24', '6.4', 0),
(363, 370, 117, '2', '12', '3.2', 0),
(364, 371, 117, '2', '12', '3.2', 0),
(365, 372, 122, '1', '50.4', '5.6', 0),
(366, 373, 125, '7', '102.69', '11.41', 0),
(367, 374, 117, '2', '12', '3.2', 0),
(368, 375, 132, '3', '105.3', '11.7', 0),
(369, 376, 133, '2', '54', '6', 0),
(371, 377, 138, '2', '28.8', '3.8', 0),
(372, 378, 117, '5', '30', '8', 0),
(373, 379, 117, '4', '24', '6.4', 0),
(374, 380, 96, '1', '21.6', '2.8', 0),
(375, 381, 95, '1', '3.55', '0', 0),
(376, 382, 109, '20', '198.2', '45.8', 0),
(377, 383, 134, '5', '81', '9', 0),
(379, 385, 103, '6', '12.9', '0', 0),
(380, 386, 134, '3', '48.6', '5.4', 0),
(381, 387, 134, '3', '48.6', '5.4', 0),
(382, 388, 117, '4', '24', '6.4', 0),
(383, 389, 117, '5', '30', '8', 0),
(384, 390, 136, '6', '324', '36', 0),
(385, 391, 141, '4', '99.36', '11.04', 0),
(386, 392, 139, '2', '97.2', '10.8', 0),
(387, 393, 130, '8', '36', '4', 0),
(388, 394, 117, '4', '24', '6.4', 0),
(390, 396, 117, '4', '24', '6.4', 0),
(391, 397, 117, '2', '12', '3.2', 0),
(392, 398, 117, '5', '30', '8', 0),
(393, 399, 142, '2', '66.6', '7.4', 0),
(394, 400, 117, '4', '24', '6.4', 0),
(395, 401, 145, '1', '12', '0', 0),
(396, 402, 145, '1', '12', '0', 0),
(397, 403, 125, '4', '58.68', '6.52', 0),
(398, 404, 103, '1', '2.15', '0', 0),
(399, 405, 117, '2', '12', '3.2', 0),
(400, 406, 142, '2', '66.6', '7.4', 0),
(401, 407, 144, '2', '104.4', '11.6', 0),
(402, 409, 117, '3', '18', '4.8', 0),
(403, 410, 117, '4', '24', '6.4', 0),
(404, 411, 117, '4', '24', '6.4', 0),
(405, 412, 117, '4', '24', '6.4', 0),
(406, 413, 117, '2', '12', '3.2', 0),
(408, 415, 117, '1', '6', '1.6', 0),
(409, 416, 111, '1', '5', '7', 0),
(410, 417, 117, '1', '6', '1.6', 0),
(411, 418, 95, '1', '3.55', '0', 0),
(412, 419, 117, '1', '6', '1.6', 0),
(413, 420, 117, '1', '6', '1.6', 0),
(414, 421, 126, '5', '40.05', '4.45', 0),
(415, 422, 117, '1', '6', '1.6', 0),
(416, 423, 117, '2', '12', '3.2', 0),
(417, 424, 117, '1', '6', '1.6', 0),
(418, 425, 117, '1', '6', '1.6', 0),
(419, 426, 117, '5', '30', '8', 0),
(420, 427, 117, '2', '12', '3.2', 0),
(421, 429, 117, '1', '6', '1.6', 0),
(422, 430, 117, '2', '12', '3.2', 0),
(425, 432, 117, '1', '6', '1.6', 0),
(426, 434, 117, '1', '6', '1.6', 0),
(427, 435, 95, '2', '7.1', '0', 0),
(428, 436, 117, '5', '30', '8', 0),
(429, 437, 117, '2', '12', '3.2', 0),
(430, 438, 117, '2', '12', '3.2', 0),
(431, 439, 117, '2', '12', '3.2', 0),
(432, 440, 111, '1', '5', '7', 0),
(433, 442, 117, '2', '12', '3.2', 0),
(434, 443, 117, '2', '12', '3.2', 0),
(435, 445, 117, '1', '6', '1.6', 0),
(436, 446, 117, '2', '12', '3.2', 0),
(437, 447, 95, '1', '3.55', '0', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=148 ;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`, `commentaire`) VALUES
(93, 69, 'CINEMA GAUMONT', '01-01-2015', '31-05-2015', '6.00', '1.40', '7.4', '100', '0', 0, ''),
(94, 70, 'CAFE TARIF 2014', '01-01-2015', '31-12-2015', '2.05', '0.00', '2.05', '100', '4', 0, ''),
(95, 70, 'CAFE  DOSETTES 2014', '01-01-2015', '31-12-2015', '3.55', '0.00', '3.55', '100', '5', 0, ''),
(96, 71, 'CARTE ATOUT', '01-01-2015', '31-12-2015', '21.60', '2.80', '24.4', '100', '3', 0, ''),
(97, 71, 'BIOPARC ENFANT', '01-01-2015', '31-12-2015', '10', '4.5', '14.5', '100', '1', 0, ''),
(98, 71, 'CELTIC LEGENDS', '01-01-2015', '07-03-2015', '33.30', '3.70', '37', '100', '0', 0, ''),
(99, 71, 'AUSTRALIAN PINK FLOYD SHOW', '01-01-2015', '30-06-2015', '50.85', '5.65', '56.5', '100', '0', 0, ''),
(100, 71, 'ALAIN SOUCHON', '01-01-2015', '31-12-2015', '62.10', '6.90', '69', '100', '0', 0, ''),
(101, 71, 'SHYM', '01-01-2015', '31-12-2015', '33.30', '3.70', '37', '100', '0', 0, ''),
(102, 69, 'CINEMA 400 COUPS', '01-01-2015', '31-05-2015', '4.39', '0.56', '4.95', '100', '0', 0, ''),
(103, 70, 'CAFE 2015', '01-01-2015', '31-12-2015', '2.15', '0.00', '2.15', '100', '27', 0, ''),
(104, 71, 'BLACK M', '01-01-2015', '31-12-2015', '35.10', '3.90', '39', '100', '0', 0, ''),
(105, 71, 'PLANETE SAUVAGE ADULTES', '01-01-2015', '31-12-2015', '21.15', '2.35', '23.5', '100', '0', 0, ''),
(106, 71, 'PLANETE SAUVAGE ENFANTS', '01-01-2015', '31-12-2015', '15.75', '1.75', '17.5', '100', '0', 0, ''),
(107, 71, 'PARC BADABOUM CIRCUS ENFANTS PLUS DE 2 ANS', '01-01-2015', '31-12-2015', '5.40', '0.60', '6', '100', '0', 0, ''),
(108, 71, 'DISNEY RESORT PARIS  1 JOUR 2 PARCS ADULTES', '01-01-2015', '31-12-2015', '60.30', '6.70', '67', '100', '0', 0, ''),
(109, 72, 'CHEQUE DOMICILE FAMILLE IMPOSABLE ', '01-01-2015', '31-12-2015', '9.91', '2.29', '12.2', '20', '0', 0, ''),
(111, 71, 'CARTE CEZAM OUVRANT DROIT', '01-01-2015', '31-12-2015', '5.00', '7.00', '12', '100', '12', 0, ''),
(113, 73, 'CARTE CEZAM AYANT DROIT', '01-01-2015', '31-12-2015', '2.50', '3.50', '6', '100', '12', 0, ''),
(114, 74, 'PRADEL', '01-01-2015', '31-12-2015', '10', '0', '10', '10000', '14.48', 0, ''),
(115, 74, 'RIVADIS', '01-01-2015', '31-12-2015', '10', '0', '10', '100000', '999978.62', 0, ''),
(116, 71, 'PARC ASTERIX', '01-01-2015', '31-12-2015', '32.40', '3.60', '36', '5', '0', 0, ''),
(117, 69, 'CINEMAS GAUMONT', '31-01-2015', '31-05-2015', '6â‚¬', '1.60', '7.6', '25', '50', 0, ''),
(118, 70, 'CAFE DOSETTE 2015', '10-03-2015', '', '3.65', '0', '3.65', '100', '14', 0, ''),
(119, 71, 'AQUARUIM OCEANOPOLIS ENFANT', '01-01-2015', '01-12-2015', '10.35', '1.15', '11.5', '100', '0', 0, ''),
(120, 71, 'AQUARUIM OCEANOPOLIS ADULTES', '01-01-2015', '01-12-2015', '16.02', '1.78', '17.8', '100', '0', 0, ''),
(121, 70, 'CHOCOLAT ORDISCOM', '01-01-2015', '01-12-2015', '2.280', '0', '2.28', '100', '0', 0, ''),
(122, 71, 'FRANCIS CABREL', '01-01-2015', '01-12-2015', '50.40', '5.60', '56', '100', '0', 0, ''),
(123, 71, 'ZOO DE BEAUVAL ADULTE', '01-01-2015', '01-12-2015', '20.70', '2.30', '23', '100', '2', 0, ''),
(124, 71, 'ALAIN SOUCHON ET LAURENT VOULZY', '01-01-2015', '01-12-2015', '45', '5', '50', '100', '1', 0, ''),
(125, 71, 'BIOPARC ADULTE', '03-04-2015', '01-12-2015', '14.67', '1.63', '16.3', '100', '12', 0, ''),
(126, 71, 'BOWLING SILVER BOWL', '01-01-2015', '01-12-2015', '8.01', '0.89', '8.9', '100', '0', 0, ''),
(127, 71, 'BOWLING LE COLISEE', '01-01-2015', '31-12-2015', '7.65', '0.85', '8.5', '100', '0', 0, ''),
(128, 71, 'TERRA BOTANICA ADULTE', '01-04-2015', '31-12-2015', '12.69', '1.41', '14.1', '100', '0', 0, ''),
(129, 71, 'TERRA BOTANICA ENFANT', '01-04-2015', '31-12-2015', '9.18', '1.02', '10.2', '100', '0', 0, ''),
(130, 71, '400 COUPS (04-2015)', '01-04-2015', '31-12-2015', '4.50', '0.50', '5', '100', '0', 0, ''),
(131, 71, 'FRANCIS CABREL', '01-04-2015', '31-12-2015', '50.40', '5.60', '56', '100', '0', 0, ''),
(132, 71, 'BODIN''S CATEGORIE 1 ADULTE (27-11-2015)', '01-04-2015', '31-12-2015', '35.10', '3.90', '39', '100', '0', 0, ''),
(133, 71, 'BODIN''S CATEGORIE 1 ENFANT -12 ANS (27-11-2015)', '16-04-2015', '30-12-2015', '27', '3.00', '30', '100', '0', 0, ''),
(134, 71, 'ZOO DE LA FLECHE ADULTE', '01-04-2015', '31-12-2015', '16.20', '1.80', '18', '100', '0', 0, ''),
(135, 71, 'ZOO DE LA FLECHE ENFANT', '01-04-2015', '31-12-2015', '13.05', '1.45', '14.5', '100', '0', 0, ''),
(136, 71, '24 HEURES DU MANS AUTOS (SEMAINE DU 7 AU 14--2015 + JOURNEE TEST 31-05-2015', '01-04-2015', '31-12-2015', '54.00', '6.00', '60', '100', '1', 0, ''),
(137, 71, 'BIOPARC ENFANT  2014', '01-07-2014', '30-12-2015', '10', '1', '11', '1', '0', 0, ''),
(138, 71, 'BIOPARC PROMO', '01-03-2015', '31-05-2015', '14.40', '1.90', '16.3', '2', '0', 0, ''),
(139, 71, 'PARC DISNEYLAND ADULTE 1 JOUR 1 PARC', '01-03-2015', '31-12-2015', '48.60', '5.40', '54', '100', '0', 0, ''),
(140, 71, ' GRAND PARC PUY DU FOU ENFANT', '01-02-2015', '31-12-2015', '16.56', '1.84', '18.4', '100', '2', 0, ''),
(141, 71, 'GRAND PARC PUY DU FOU ADULTE', '01-03-2015', '31-12-2015', '24.84', '2.76', '27.6', '100', '6', 0, ''),
(142, 71, 'PARC FUTUROSCOPE ADULTE', '01-03-2015', '31-12-2015', '33.30', '3.70', '37', '100', '0', 0, ''),
(143, 71, 'PARC FUTUROSCOPE ENFANTS (5-16 ANS)', '01-03-2015', '31-12-2015', '27.90', '3.10', '31', '100', '0', 0, ''),
(144, 71, 'MESSMER', '01-02-2015', '04-04-2016', '52.20', '5.80', '58', '100', '0', 0, ''),
(145, 71, 'CIRQUE', '30-04-2015', '30-05-2015', '12', '0', '12', '10', '0', 0, ''),
(146, 71, 'BODIN''S CATEGORIE 1 TARIF NORMAL', '01-04-2015', '31-12-2015', '38.7', '4.30', '43', '100', '8', 0, ''),
(147, 71, 'BODIN''S CATEGORIE 2 ', '20-05-2015', '31-12-2015', '31.50', '3.50', '35', '100', '2', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `produit_fixe`
--

CREATE TABLE IF NOT EXISTS `produit_fixe` (
`idproduitfixe` int(13) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date_produit_fixe` varchar(255) NOT NULL,
  `montant_produit` varchar(255) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Contenu de la table `produit_fixe`
--

INSERT INTO `produit_fixe` (`idproduitfixe`, `designation`, `date_produit_fixe`, `montant_produit`, `num_mouvement`) VALUES
(28, 'SUBVENTION ASC JANVIER 2015', '13-01-2015', '1616.06', ''),
(30, 'SOLDE COMPTE ASC AU 31 12 2014', '01-01-2015', '6992.09', ''),
(31, 'SUVENTION ASC 02/2015', '24-03-2015', '1545.10', ''),
(32, 'SUBVENTION 03-2015', '24-04-2015', '1516.48', ''),
(33, 'CAISSE ESPECE', '01-01-2015', '311.62', ''),
(34, 'SUBVENTION ASC AVRIL 2015', '21-05-2015', '1714.11', '2967403429');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Contenu de la table `reg_billet_ayant_droit`
--

INSERT INTO `reg_billet_ayant_droit` (`idregbilletayantdroit`, `idbilletayantdroit`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(26, 28, 3, '2.5', '', 'BOUET (ANNETTE)', '623268163', 1),
(27, 29, 1, '2.5', 'CA', 'SOULET ELODIE', '6615541', 1),
(28, 30, 1, '2.5', 'CM', 'CIBRON CHRISTOPHE', '6265074', 1),
(29, 31, 1, '15.75', 'SG', 'TREMBLAIS CATHERINE', '0002401', 1),
(30, 32, 1, '2.5', 'CA', 'TAUDON CHRISTINE', '7583568', 1),
(31, 33, 1, '10.8', 'CM', 'SOULET ELODIE', '9959250', 1),
(32, 34, 1, '5', 'BPAV', 'BAILLY MICHELLE', '0799363', 1),
(33, 36, 1, '31.05', 'CA', 'ROYER CATHERINE', '3096382', 1),
(34, 37, 1, '9.18', 'CA', 'SOULET ELODIE', '3895325', 1),
(35, 38, 1, '27.54', 'CA', 'BEAUMONT BERNADETTE', '8024024', 1),
(37, 40, 1, '26.1', 'BPA', 'DENECHERE PASCALE', '0141798', 1),
(38, 41, 1, '10', 'CM', 'AMARA NADIA', '5938337', 1),
(39, 42, 1, '33.12', 'CA', 'SOULET ELODIE', '3895333', 1),
(40, 43, 1, '27.9', 'CE', 'CADELE ELODIE', '0000745', 1),
(41, 44, 3, '2.5', '', 'OLIVEAU J.RENE', '243945590', 0),
(42, 45, 3, '2.5', '', 'BORE M.PIERRE', '505444032', 0),
(43, 46, 3, '7.5', '', 'PERDRIAU SOPHIE', '850980714', 0),
(44, 47, 3, '27.9', '', 'CADELE ELODIE', '521178095', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=406 ;

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
(169, 193, 1, '30', 'LCL', 'GAZE CHRISTELLE', '9524903', 0),
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
(216, 241, 1, '24', 'SG', 'TREMBLAIS CATHERINE', '0002401', 0),
(217, 242, 1, '42.3', 'SG', 'TREMBLAIS CATHERINE', '0002401', 0),
(218, 243, 1, '97.8', 'CA', 'SEHAQUI', '9407351', 0),
(219, 245, 1, '30.95', 'CE', 'LEMASSON', '1546378', 0),
(220, 246, 1, '30', 'CA', 'THEULIER LAURE', '5225914', 0),
(221, 247, 1, '24', 'BP', 'PRUNEAU-CAZER CAROLINE', '0000410', 0),
(222, 248, 1, '24', 'CA', 'MOREAU', '318270', 0),
(223, 249, 1, '24', 'CM', 'PIEL GUYLAINE', '5308838', 0),
(224, 250, 1, '36', 'CA', 'GILBERT LUCIE', '5411145', 0),
(225, 251, 3, '24', '', 'ABID', '431665164', 0),
(226, 252, 3, '2.05', '', 'MAUSSION CHRISTINE', '651070353', 0),
(227, 253, 3, '4.3', '', 'MAUSSION CHRISTINE', '484030961', 0),
(228, 254, 3, '7.1', '', 'BEAUMONT BERNADETTE', '979124822', 0),
(229, 255, 1, '36', 'CE', 'RUBIO G.MICHEL', '6718971', 0),
(230, 256, 1, '198.2', 'CE', 'RUBIO G.MICHEL', '6718971', 0),
(231, 257, 1, '198.2', 'CE', 'CHAILLOU SANDRA', '0002412', 0),
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
(246, 273, 1, '66', 'BPA', 'GASTINEAU ISABELLE', '0003090', 0),
(247, 274, 1, '12', 'BNP', 'DIJOLS CHRISTINE', '7414678', 0),
(248, 275, 1, '36', 'CA', 'CHEVREUX MELANIE', '4517940', 0),
(249, 276, 1, '18', 'BPA', 'DENECHERE PASCALE', '0141781', 0),
(251, 277, 1, '12', 'CA', 'SOULET ELODIE', '9959250', 0),
(252, 278, 1, '10.8', 'CA', 'SOULET ELODIE', '9959250', 0),
(254, 280, 1, '124.2', 'CM', 'HENNE TERESA', '3289224', 0),
(256, 282, 1, '30', 'LA POSTE', 'MOREAU PASCALE', '4583031', 0),
(257, 283, 1, '36', 'BNP', 'PICVALERIEHERIT ', '5749877', 0),
(258, 284, 1, '24', 'CE', 'LASNE ALLISON', '0000395', 0),
(259, 285, 1, '12', 'BPA', 'LECLERC CAROLINE', '0000149', 0),
(260, 286, 1, '30', 'BPA', 'DELAREUX ISABELLE', '0000271', 0),
(261, 287, 1, '12', 'CE', 'BONFILS CECILE', '7588063', 0),
(262, 288, 1, '5', 'CA', 'TAUDON CHRISTINE', '7583568', 0),
(263, 289, 1, '2.5', 'CA', 'TAUDON CHRISTINE', '7583568', 0),
(264, 290, 1, '24', 'CM', 'BERTEAU PATRICIA', '5240698', 0),
(266, 292, 1, '12', 'CE', 'PERDRIAU CARINE', '0000033', 0),
(267, 293, 1, '12', 'LA POSTE', 'LE GAL BARBARA', '4597016', 0),
(268, 294, 1, '30', 'CM', 'LEGER SONIA', '7015558', 0),
(269, 295, 1, '5', 'CA', 'TAUDON CHRISTINE', '7583568', 0),
(270, 296, 1, '12', 'CE', 'PERDRIAU CARINE', '0000033', 0),
(271, 297, 1, '57.38', 'CA', 'ROYER CATHERINE', '53096378', 1),
(272, 298, 1, '16.65', 'CA', 'PITHON ADELINE', '0797822', 0),
(273, 299, 1, '9.99', 'BPA', 'LECOMTE LUDIVINE', '0000343', 0),
(274, 300, 1, '40.64', 'LA POSTE', 'MOREAU PASCALE', '4583032', 1),
(275, 301, 1, '16.15', 'SG', 'SEGARRA AGNES', '0000738', 0),
(276, 302, 1, '36.82', 'CE', 'OLIVEIRA CECILE', '8369238', 0),
(277, 303, 1, '10.72', 'CE', 'LEBAILLY EMILIE', '0000086', 0),
(278, 304, 1, '35.9', 'CA', 'RABOUAN MICHEL', '7003264', 0),
(280, 306, 1, '30.95', 'CE', 'OLIVEIRA CECILE', '8369238', 0),
(281, 307, 1, '36', 'BNP', 'DIJOLS CHRISTINE', '7414678', 0),
(282, 308, 3, '5', '', 'MALINGE ANICETTE', '382197941', 0),
(283, 309, 3, '18', '', 'THEULIER LAURE', '210393822', 0),
(284, 310, 3, '36', '', 'PRUDHOMME CECILE', '319292988', 0),
(285, 311, 3, '8.6', '', 'DUPAS FRANCOISE', '700296982', 0),
(286, 312, 3, '5', '', 'CHATEAU SANDRINE', '375272261', 0),
(287, 313, 3, '24', '', 'PETITEAU SARAH', '726346819', 0),
(288, 314, 3, '12', '', 'MENDONCA FERNANDA', '638541283', 0),
(289, 315, 1, '30', 'LCL', 'GAZE CHRISTELLE', '9524908', 0),
(290, 316, 1, '120.6', 'CM', 'BOULAY Jennifer', '7384660', 0),
(291, 317, 1, '54', 'CE', 'GERARD Alexandra', '0008347', 0),
(292, 318, 1, '24', 'SG', 'SEGARRA Agnes', '0000737', 0),
(293, 319, 1, '36', 'BPAV', 'BAILLY MICHELLE', '0799363', 1),
(294, 320, 1, '5', 'BPAV', 'BAILLY MICHELLE', '0799363', 1),
(295, 323, 1, '24', 'CE', 'TESSIER FLORENCE', '000298', 0),
(296, 324, 1, '12', 'CE', 'TELLANGER', '9823976', 1),
(297, 326, 1, '12.9', 'CE', 'TELLANGER AXELLE', '9823976', 1),
(298, 327, 1, '12', 'SG', 'COCHIN YVON', '0000307', 1),
(299, 328, 1, '24.98', 'CM', 'OLIVEAU JEAN RENE', '1318623', 1),
(300, 322, 1, '30', 'CA', 'THEULIER', '0064765', 1),
(301, 330, 1, '12', 'LA POSTE', 'LE GALL BARBARA', '4597017', 0),
(302, 331, 1, '24', 'CM', 'COTTENCEAU MONIQUE', '5655484', 0),
(303, 335, 1, '48.06', 'CA', 'ROYER', '3096382', 0),
(304, 336, 1, '12', 'CA', 'MAQUIN CATHERINE', '2236545', 0),
(305, 337, 1, '60', 'CM', 'POUTREL SYLVIE', '7223246', 0),
(306, 338, 1, '162', 'CM', 'POUTREL SYLVIE', '7223247', 0),
(307, 339, 1, '60.69', 'CA', 'BEAUMONT BERNADETTE', '8024019', 0),
(308, 329, 1, '22.8', 'BPA', 'DENECHERE PASCALE', '0141735', 0),
(309, 340, 1, '12', 'ce', 'NASRI MARION', '0001764', 0),
(310, 341, 1, '18', 'CA', 'TAUDON CHRISTINE', '7583571', 0),
(311, 342, 1, '21.6', 'CA', 'TAUDON CHRISTINE', '7583571', 0),
(312, 343, 1, '21.6', 'LCL', 'LE CALVEZ JOCELYNE', '0267679', 0),
(313, 344, 1, '50.4', 'CA', 'COCHIN YVON', '0130361', 0),
(314, 345, 1, '12', 'CA', 'COCHIN YVON', '0130359', 0),
(315, 346, 1, '36', 'CA', 'VOISINE ANNIE', '1973440', 0),
(316, 347, 1, '29.34', 'CM', 'ROUE VIRGINIE', '9107652', 0),
(317, 348, 1, '12', 'CA', 'BOIS MARIE', '6851729', 0),
(318, 349, 1, '24', 'CA', 'MENANT SYLVIE', '2502838', 0),
(319, 350, 1, '36', 'BNP', 'PICHERIE VALERIE', '5749883', 0),
(320, 351, 1, '36', 'LA POSTE', 'CRANSAC CHRISTELLE', '4546029', 0),
(321, 352, 1, '21.6', 'CE', 'AUGUET JOELLE', '7146401', 0),
(322, 353, 1, '30', 'CE', 'AUGUET JOELLE', '7146401', 0),
(323, 354, 1, '29.34', 'CA', 'DOISNEAU GERALDINE', '2479972', 0),
(324, 355, 1, '18', 'BPA', 'GASTINEAU ISABELLE', '0003122', 0),
(325, 357, 1, '42', 'CIC', 'FOUQUERAY EDWIGE', '5051552', 0),
(326, 359, 1, '24', 'CA', 'COCHIN YVON', '0130362', 0),
(327, 360, 1, '30', 'CE', 'BONFILS CECILE', '7588071', 0),
(328, 361, 1, '12', 'CA', 'YEKULI AURELIE', '4861126', 0),
(329, 362, 1, '103.5', 'LA POSTE', 'BAILLY MICHELLE', '9594024', 0),
(330, 363, 1, '18', 'CE', 'GERARD ALEXANDRA', '0008360', 0),
(331, 364, 1, '24', 'SG', 'SOUALAH BAIHJA', '0001258', 0),
(332, 365, 1, '25.38', 'CA', 'SOULET ELODIE', '3895325', 0),
(333, 366, 1, '18', 'LA POSTE', 'GUIHO ODETTE', '4674072', 0),
(334, 367, 1, '6', 'LA POSTE', 'GUIHO ODETTE', '4674072', 0),
(335, 368, 1, '38.07', 'CA', 'BEAUMONT BERNADETTE', '8024024', 0),
(336, 369, 1, '24', 'CE', 'BRARD M.PIERRE', '5103926', 0),
(337, 370, 1, '12', 'CA', 'MENDONCA M.FERNANDA', '3812666', 0),
(338, 371, 1, '12', 'CE', 'PERDRIAU CARINE', '0000041', 0),
(339, 373, 1, '102.69', 'CE', 'ADAM', '0000672', 0),
(340, 374, 1, '12', 'CA', 'YEKULI AURELIE', '4861128', 0),
(341, 375, 1, '105.3', 'CA', 'BEAUMONT BERNADETTE', '8024026', 0),
(342, 376, 1, '54', 'CA', 'BEAUMONT BERNADETTE', '8024026', 0),
(343, 377, 1, '28.8', 'CM', 'AMARA NADIA', '5938337', 0),
(344, 378, 1, '30', 'CA', 'THEULIER LAURE', '4312306', 0),
(345, 379, 1, '24', 'CM', 'FOUBLE CAMILLE', '6017425', 0),
(346, 380, 1, '21.6', 'CM', 'MAUDET DELPHINE', '5393328', 0),
(347, 381, 3, '3.55', '', 'DR. GUILLAUD6ALLEE', '238771385', 0),
(348, 382, 1, '198.2', 'CM', 'CIBRON CHRISTOPHE', '6265085', 0),
(349, 383, 1, '81', 'BPA 0141798 (107.10)', 'DENECHERE PASCALE', '0141798', 0),
(350, 384, 1, '26.1', 'BPA', 'DENECHERE PASCALE', '0141798', 0),
(351, 385, 1, '12.9', 'CE', 'TELLANGER AXELLE', '9823986', 0),
(352, 387, 1, '48.6', 'CE', 'AILLERIE MYRIAM', '9054632', 0),
(353, 388, 1, '24', 'CE', 'NASRI MARION', '0001766', 0),
(354, 389, 1, '30', 'CA', 'PASCUITO ISABELLE', '5668295', 0),
(355, 391, 1, '99.36', 'CA', 'SOULET ELODIE', '3895333', 0),
(356, 392, 1, '97.2', 'CIC', 'DESCHRYVER ELISABETH', '8595831', 0),
(357, 393, 1, '36', 'CM', 'DABOUDET VALERIE', '0940771', 0),
(358, 394, 1, '24', 'CM', 'BINOT LUCIE', '5473099', 0),
(360, 396, 1, '24', 'CCE', 'LE JEAN GAEL', '0004704', 0),
(361, 397, 1, '12', 'CM', 'HUAU CARINE', '5577713', 0),
(362, 398, 1, '30', 'BPA', 'DURAND-CHATTON PASCALE', '0001043', 0),
(363, 399, 1, '66.6', 'CE', 'CADELE ELODIE', '0000745', 0),
(364, 400, 1, '24', 'CM', 'GAUDELET MARYLINE', '5439125', 0),
(365, 401, 1, '12', 'CE', 'GERARD ALEXANDRA', '0008366', 0),
(366, 402, 1, '12', 'CE', 'GERARD ALEXANDRA', '0008365', 0),
(367, 403, 1, '58.68', 'CE', 'CHARREAU HELENE', '9362065', 0),
(368, 404, 1, '2.15', 'CE', 'CHARREAU HELENE', '9362065', 0),
(369, 405, 1, '12', 'BPA', 'GASTINEAU ISABELLE', '0003183', 0),
(370, 406, 1, '66.6', 'BPA', 'GASTINEAU ISABELLE', '0003183', 0),
(371, 407, 1, '104.4', 'CA', 'BEAUMONT BERNADETTE', '8024031', 0),
(372, 409, 1, '18', 'SG', 'SEGARRA AGNES', '0000753', 0),
(373, 410, 1, '24', 'CA', 'MOREAU  SANDRA', '0323555', 0),
(374, 411, 1, '24', 'CM', 'VIVION BEATRICE', '6769783', 0),
(375, 412, 1, '24', 'CE', 'CHARREAU HELENE', '9362066', 0),
(376, 413, 3, '12', '', 'bouet annette', '966815561', 0),
(378, 415, 3, '6', '', 'VIVION BEATRICE', '789936736', 0),
(379, 416, 3, '5', '', 'OLIVEAU J.RENE', '650590696', 0),
(380, 417, 3, '6', '', 'OLIVEAU J.RENE', '278453319', 0),
(381, 418, 3, '3.55', '', 'BEAUMONT BERNADETTE', '410683901', 0),
(382, 419, 3, '6', '', 'BRARD M.PIERRE', '137035427', 0),
(383, 420, 3, '6', '', 'ABBID SYLVIE', '402340040', 0),
(384, 421, 3, '40.05', '', 'DELAUNAY DOMINIQUE', '309791479', 0),
(385, 422, 3, '6', '', 'SEGARRA AGNES', '303287539', 0),
(386, 423, 3, '12', '', 'FOUBLE CAMILLE', '270429592', 0),
(387, 424, 3, '6', '', 'GAUTHIER EMELINE', '136654922', 0),
(388, 425, 3, '6', '', 'TREMBLAIS CATHERINE', '496886336', 0),
(389, 426, 3, '30', '', 'THEULIER LAURE', '497003250', 0),
(390, 427, 3, '12', '', 'BORE M.PIERRE', '843616346', 0),
(391, 429, 3, '6', '', 'TELLANGER', '893648517', 0),
(392, 430, 3, '12', '', 'LORINQUER MELANIE', '867573895', 0),
(393, 432, 3, '6', '', 'PECO SANDRINE', '451642172', 0),
(394, 434, 3, '6', '', 'OLIVEAU J.RENE', '989466228', 0),
(395, 435, 3, '7.1', '', 'BORE M.PIERRE', '253591911', 0),
(396, 436, 3, '30', '', 'BORE M.PIERRE', '857796039', 0),
(397, 437, 3, '12', '', 'GASTINEAU ISABELLE', '323298199', 0),
(398, 438, 3, '12', '', 'LANGLOIS VALERIE', '908067319', 0),
(399, 439, 3, '12', '', 'TAUNAY M.LAURE', '910368250', 0),
(400, 440, 3, '5', '', 'PERDRIAU SOPHIE', '144467225', 0),
(401, 442, 3, '12', '', 'GLORIA', '587538138', 0),
(402, 443, 3, '12', '', 'GRAU CECILIO', '702432284', 0),
(403, 445, 3, '6', '', 'GUIHO ODETTE', '308354634', 0),
(404, 446, 3, '12', '', 'MENDONCA FERNANDA', '337614479', 0),
(405, 447, 3, '3.55', '', 'BEAUMONT BERNADETTE', '430658799', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

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
(59, '07-03-2015', 1, '6859741', '390.2', 1),
(65, '30-03-2015', 1, '6859745', '197.88', 1),
(66, '30-03-3015', 1, '6859746', '270', 1),
(67, '09-04-2015', 1, '6859748', '282.45', 1),
(68, '09-04-2015', 1, '6859749', '167.34', 1),
(69, '09-04-2015', 1, '6859750', '145.2', 1),
(71, '14-04-2015', 1, '6859751', '173.61', 1),
(73, '16-04-2015', 1, '6859752', '493.65', 1),
(75, '16-04-2015', 1, '6859752', '9.99', 1),
(76, '11-02-2015', 2, 'FICHE 21 (DUO614)', '150.2', 1),
(78, '22-04-2015', 2, 'FICHE NÂ°65 (379184)', '106.1', 1),
(80, '12-03-2015', 2, 'FICHE 41 (637246)', '150.2', 1),
(81, '10-04-2015', 2, 'FICHE NÂ°64 (333566)', '193.65', 1),
(84, '19-05-2015', 1, '6369754', '483.6', 1),
(86, '19-05-2015', 1, '6859755', '355.68', 1),
(87, '19-05-2015', 1, '6859756', '386.33', 1),
(88, '19-05-2015', 1, '6859757', '90', 1),
(89, '12-03-2015', 1, '6859743', '230.9', 0);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=489 ;

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
(331, 59, 281),
(348, 65, 308),
(349, 65, 307),
(350, 65, 276),
(351, 65, 280),
(352, 65, 277),
(353, 65, 278),
(354, 66, 166),
(355, 66, 302),
(356, 66, 301),
(357, 66, 306),
(358, 66, 305),
(359, 67, 326),
(360, 67, 325),
(361, 67, 324),
(362, 67, 310),
(363, 67, 311),
(364, 67, 323),
(365, 67, 313),
(366, 67, 303),
(367, 67, 33),
(368, 68, 327),
(369, 68, 316),
(370, 68, 315),
(371, 68, 314),
(372, 68, 317),
(373, 68, 320),
(374, 68, 261),
(375, 69, 312),
(376, 69, 319),
(377, 69, 318),
(378, 69, 321),
(379, 69, 322),
(380, 69, 328),
(381, 71, 336),
(382, 71, 337),
(383, 71, 331),
(384, 71, 338),
(385, 71, 334),
(386, 71, 333),
(387, 71, 335),
(388, 71, 35),
(389, 71, 340),
(399, 73, 342),
(400, 73, 341),
(401, 73, 329),
(402, 73, 344),
(403, 73, 330),
(404, 73, 339),
(405, 73, 345),
(406, 73, 346),
(407, 73, 332),
(408, 73, 34),
(409, 75, 273),
(430, 84, 354),
(431, 84, 353),
(432, 84, 352),
(433, 84, 351),
(434, 84, 295),
(435, 84, 348),
(436, 84, 349),
(437, 84, 37),
(438, 84, 343),
(439, 84, 38),
(458, 86, 355),
(459, 86, 39),
(460, 86, 356),
(461, 86, 357),
(462, 86, 358),
(463, 86, 362),
(464, 86, 360),
(465, 86, 361),
(466, 87, 40),
(467, 87, 363),
(468, 87, 364),
(469, 87, 365),
(470, 87, 366),
(471, 87, 367),
(472, 87, 368),
(473, 87, 370),
(474, 87, 369),
(475, 87, 371),
(476, 88, 372),
(477, 88, 373),
(478, 88, 374),
(479, 88, 375),
(480, 89, 297),
(481, 89, 296),
(482, 89, 298),
(483, 89, 300),
(484, 89, 294),
(485, 89, 293),
(486, 89, 271),
(487, 89, 274),
(488, 89, 299);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE IF NOT EXISTS `remise_banque_esp` (
`idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=168 ;

--
-- Contenu de la table `remise_banque_esp`
--

INSERT INTO `remise_banque_esp` (`idremisebanqueesp`, `idremisebanque`, `idreglementventepresta`) VALUES
(91, 76, 148),
(92, 76, 155),
(93, 76, 156),
(94, 76, 157),
(95, 76, 158),
(96, 76, 159),
(97, 76, 171),
(98, 76, 172),
(99, 76, 173),
(100, 76, 180),
(101, 76, 181),
(102, 76, 184),
(103, 76, 185),
(104, 76, 186),
(117, 78, 148),
(118, 78, 155),
(119, 78, 156),
(120, 78, 157),
(121, 78, 158),
(122, 78, 159),
(123, 78, 171),
(124, 78, 172),
(125, 78, 173),
(126, 78, 184),
(142, 80, 148),
(143, 80, 155),
(144, 80, 156),
(145, 80, 157),
(146, 80, 158),
(147, 80, 159),
(148, 80, 171),
(149, 80, 172),
(150, 80, 173),
(151, 80, 180),
(152, 80, 181),
(153, 80, 184),
(154, 80, 185),
(155, 80, 186),
(156, 81, 201),
(157, 81, 202),
(158, 81, 203),
(159, 81, 204),
(160, 81, 212),
(161, 81, 213),
(162, 81, 225),
(163, 81, 226),
(164, 81, 227),
(165, 81, 228),
(166, 81, 239),
(167, 81, 240);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=226 ;

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
(221, '', 1, 'VENTE HORS PERSONNEL', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1),
(222, '', 2, 'VOISINE', 'ANNIE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDD', 1),
(223, '', 2, 'ROUE', 'VIRGINIE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '???', 1),
(224, '', 2, 'LANGLOIS', 'VALERIE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1),
(225, '', 1, 'GLORIA (SERVICE+)', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDD', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=491 ;

--
-- Contenu de la table `solde_caisse`
--

INSERT INTO `solde_caisse` (`idsoldecaisse`, `date_mouvement`, `num_mouvement`, `type_mouvement`, `type_solde`, `libelle_mouvement`, `debit`, `credit`, `point_caisse`) VALUES
(182, '1420182000', '9823959', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TELLANGER.', '', '24', 1),
(183, '1420182000', '9823959', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TELLANGER.', '', '8.2', 0),
(184, '1420268400', '272477115', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TAUNAY M LAURE.', '', '12', 1),
(185, '1420527600', '0000027', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEBAILLYE.', '', '12', 1),
(186, '1420527600', '6571572', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOUET ANNETTE.', '', '36', 0),
(187, '1420527600', '6571572', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOUET.', '', '199.8', 0),
(188, '1420527600', '0000097', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAUSSION.', '', '24', 1),
(189, '1420527600', '0347105', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de VIVIEN HERVE.', '', '203.4', 0),
(190, '1420527600', '5240694', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERTEAU PATRICIA.', '', '24', 1),
(191, '1420527600', '725000166', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par THEULIER LAURE.', '', '24', 1),
(192, '1420527600', '913313320', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DUPAS FRANCOISE.', '', '4.1', 1),
(193, '1420527600', '982656111', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PETITEAU SARAH.', '', '6', 1),
(194, '1420614000', '351056703', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par OLIVEAU JEAN RENE.', '', '6', 1),
(195, '1420614000', '407549300', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TESSIER FLORENCE.', '', '6', 1),
(196, '1420614000', '6165238', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165238 en date du 07-01-2015.', '295.6', '', 1),
(197, '1420614000', '0004554', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE JEAN.', '', '36', 0),
(198, '1420614000', '0003066', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GASTINEAU ISABELLE.', '', '18', 0),
(199, '1420614000', '5210906', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BORGNE CELINE.', '', '18', 0),
(200, '1420614000', '3995487', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RIVEREAU ANNE SOPHIE.', '', '12', 1),
(201, '1420614000', '9362062', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHARREAU HELENE.', '', '12', 1),
(202, '1420614000', '9362062', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHARREAU HELENE.', '', '2.15', 0),
(203, '1421132400', '3326539', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAQUIN CATHERINE .', '', '12', 1),
(204, '1421132400', '4674053', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUIHO ODETTE.', '', '6', 1),
(205, '1421132400', '5103889', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BRARD M PIERRE.', '', '36', 0),
(206, '1421132400', '9524903', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GAZE CHRISTELLE.', '', '30', 1),
(207, '1421132400', '6905150', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEGER SONIA.', '', '24', 1),
(208, '1421132400', '713187521', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GASTINEAU ISABELLE.', '', '12', 1),
(209, '1421132400', '487870845', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHEIGNON AURORE.', '', '12', 1),
(210, '1421132400', '6165240', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165240 en date du 13-01-2015.', '182.15', '', 1),
(211, '1421737200', '643854976', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUILLOT Claire.', '', '12', 1),
(212, '1421737200', '6828220', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROUSSE MARYVONNE.', '', '5', 1),
(213, '1421737200', '6828220', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROUSSE Maryvonne.', '', '2.5', 0),
(214, '1421737200', '5271912', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BINOT LUCIE.', '', '12', 1),
(215, '1421737200', '5140080', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COCHIN YVON.', '', '124.2', 0),
(216, '1421737200', '7384659', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOULAY Jennifer.', '', '5', 1),
(217, '1421737200', '7384659', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOULAY Jennifer.', '', '2.5', 0),
(218, '1422342000', '793616323', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHARRIER Elena.', '', '5', 1),
(219, '1422342000', '273327424', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHARRIER Elena.', '', '5', 1),
(220, '1422342000', '05354927001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BORE Marie Pierre.', '', '5', 1),
(221, '1422342000', '05354927001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BORE Marie Pierre.', '', '2.5', 0),
(222, '1422514800', '687282856', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHARRIER Elena.', '', '12', 1),
(223, '1422514800', '277348119', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TREMBLAIS.', '', '4.1', 1),
(224, '1422514800', '568464359', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TAUNAY M Laure.', '', '30', 1),
(225, '1422514800', '4267947', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LATONELLE Anne.', '', '18', 0),
(226, '1422514800', '0141773', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE Pascale.', '', '6', 1),
(227, '1422514800', '8310544', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHEIGNON Aurore.', '', '12', 1),
(228, '1422514800', '8310545', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHEIGNON Aurore.', '', '33.3', 0),
(229, '1422514800', '0000030', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PERDRIAU Carine.', '', '12', 1),
(230, '1422514800', '4653012', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TESSIE Francoise.', '', '12', 1),
(231, '1422514800', '9407352', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SEHAQUI M Therese.', '', '84', 0),
(232, '1422514800', '4644063', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOUTREUX Anne Sophie.', '', '18', 0),
(233, '1422514800', '4644063', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOUTREUX Anne sophie.', '', '35.12', 0),
(234, '1422514800', '7588051', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BONFILS Cecile.', '', '24', 1),
(235, '1422514800', '0008342', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GERARD Alexandra.', '', '42', 0),
(236, '1422514800', '0681524', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BEAUMONT Bernadette.', '', '18', 0),
(237, '1422514800', '5240695', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERTEAU Patricia.', '', '24', 1),
(238, '1422514800', '5668279', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PASCUITO Isabelle.', '', '60', 0),
(239, '1422946800', '560063069', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DELAUNAY Dominique.', '', '5', 1),
(240, '1422946800', '690930783', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par HUIN Sylvie.', '', '5', 1),
(241, '1422946800', '658183630', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOUET annette.', '', '5', 1),
(242, '1422946800', '623268163', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOUET (ANNETTE).', '', '2.5', 0),
(243, '1422946800', '503509468', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par SEHAQUI M.THERESE.', '', '5', 1),
(244, '1422946800', '6615541', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '5', 1),
(245, '1422946800', '6615541', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '2.5', 0),
(246, '1422946800', '0000261', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JULIENNE THEO.', '', '7.1', 1),
(247, '1422601200', '6165243', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165243 en date du 30-01-2015.', '312.3', '', 1),
(248, '1422601200', '6165244', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165244 en date du 30-01-2015.', '327.32', '', 1),
(249, '1423119600', '6265074', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CIBRON CHRISTOPHE.', '', '5', 1),
(250, '1423119600', '6265074', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CIBRON CHRISTOPHE.', '', '2.5', 0),
(251, '1423119600', '0590234', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MENDONCA.', '', '18', 0),
(252, '1423119600', '0003084', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GASTINEAU.', '', '18', 0),
(253, '1423119600', '00001698', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOURISSEAU.', '', '24', 1),
(254, '1423119600', '7588057', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BONFILS.', '', '24', 1),
(255, '1423551600', '975740865', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par FRANCFORT CATHERINE.', '', '24', 1),
(256, '1423551600', '508619523', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEAUMONT BERNADETTE.', '', '12', 1),
(257, '1423551600', '4267949', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LATONNELLE ANNE.', '', '42', 0),
(258, '1423551600', '4674058', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUIHO ODETTE.', '', '6', 1),
(259, '1423551600', '0002401', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TREMBLAIS CATHERINE.', '', '24', 1),
(260, '1423551600', '0002401', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TREMBLAIS CATHERINE.', '', '15.75', 0),
(261, '1423551600', '0002401', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TREMBLAIS CATHERINE.', '', '42.3', 0),
(262, '1423551600', '9407351', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SEHAQUI.', '', '97.8', 0),
(263, '1423638000', '6165245', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165245 en date du 11-02-2015.', '166.1', '', 1),
(265, '1423638000', '6165246', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165246 en date du 11-2-2015.', '165.3', '', 1),
(266, '1423724400', '5225914', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de THEULIER LAURE.', '', '30', 1),
(267, '1423724400', '0000410', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PRUNEAU-CAZER CAROLINE.', '', '24', 1),
(268, '1423724400', '318270', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOREAU.', '', '24', 1),
(269, '1423724400', '5308838', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PIEL GUYLAINE.', '', '24', 1),
(270, '1423724400', '5411145', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GILBERT LUCIE.', '', '36', 0),
(271, '1423724400', '431665164', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ABID.', '', '24', 1),
(272, '1423724400', '651070353', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MAUSSION CHRISTINE.', '', '2.05', 1),
(273, '1423724400', '484030961', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MAUSSION CHRISTINE.', '', '4.3', 1),
(274, '1423724400', '979124822', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEAUMONT BERNADETTE.', '', '7.1', 1),
(275, '1424156400', '6718971', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RUBIO G.MICHEL.', '', '36', 0),
(276, '1424156400', '6718971', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RUBIO G.MICHEL.', '', '198.2', 0),
(277, '1424156400', '0002412', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHAILLOU SANDRA.', '', '198.2', 0),
(278, '1424156400', '5888598', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de YVON ANAELLE.', '', '30', 1),
(279, '1424156400', '0000039', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEBAILLY EMILIE.', '', '36', 0),
(280, '1424156400', '5439121', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GAUDELET MARYLINE.', '', '12', 1),
(281, '1424156400', '4674060', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUIHO ODETTE.', '', '5', 1),
(282, '1424156400', '0127334', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROUSSE MARYVONNE.', '', '6', 1),
(283, '1424156400', '0141780', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE PASCALE.', '', '12', 1),
(284, '1424156400', '0267678', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE CALVEZ JOCELINE.', '', '30', 1),
(285, '1424156400', '6859737', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859737 en date du 17-02-2015.', '131', '', 1),
(286, '1423724400', '6165248', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165248 en date du 12-02-2015.', '138', '', 1),
(287, '1424761200', '122323174', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par THEULIER LAURE.', '', '70.2', 1),
(288, '1425366000', '404323852', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CIBRON.', '', '30', 1),
(289, '1425366000', '952567975', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par INCONNU.', '', '2.15', 0),
(290, '1425366000', '845889920', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TESSIER FLORENCE.', '', '24', 1),
(291, '1424934000', '887579092', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ABID/PLANCHENEAU SYLVIE.', '', '24', 1),
(292, '1425711600', '422866622', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEAUMONT BERNADETTE.', '', '7.13', 0),
(294, '1424329200', '0003090', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GASTINEAU ISABELLE.', '', '66', 0),
(295, '1426748400', '7414678', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DIJOLS CHRISTINE.', '', '12', 1),
(296, '1424329200', '4517940', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHEVREUX MELANIE.', '', '36', 0),
(297, '1424329200', '0141781', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE PASCALE.', '', '18', 0),
(299, '1424761200', '9959250', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '12', 1),
(300, '1424761200', '9959250', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '10.8', 0),
(302, '1424329200', '3289224', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de HENNE TERESA.', '', '124.2', 0),
(304, '1424934000', '4583031', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOREAU PASCALE.', '', '30', 1),
(305, '1424934000', '5749877', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PICVALERIEHERIT .', '', '36', 0),
(306, '1425366000', '0000395', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LASNE ALLISON.', '', '24', 1),
(307, '1425366000', '0000149', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LECLERC CAROLINE.', '', '12', 1),
(308, '1425366000', '0000271', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DELAREUX ISABELLE.', '', '30', 1),
(309, '1425366000', '7588063', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BONFILS CECILE.', '', '12', 1),
(310, '1425538800', '7583568', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON CHRISTINE.', '', '5', 1),
(311, '1425538800', '7583568', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON CHRISTINE.', '', '2.5', 0),
(312, '1425366000', '5240698', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERTEAU PATRICIA.', '', '24', 1),
(314, '1425538800', '0000033', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PERDRIAU CARINE.', '', '12', 1),
(315, '1425538800', '4597016', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE GAL BARBARA.', '', '12', 1),
(316, '1425711600', '7015558', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEGER SONIA.', '', '30', 1),
(317, '1425538800', '7583568', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON CHRISTINE.', '', '2.5', 0),
(318, '1425538800', '7583568', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON CHRISTINE.', '', '5', 1),
(319, '1425538800', '0000033', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PERDRIAU CARINE.', '', '12', 1),
(320, '1424761200', '9959250', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '10.8', 0),
(321, '1425711600', '6859740', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859740 en date du 07-03-2015.', '184.8', '', 1),
(322, '1425711600', '53096378', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROYER CATHERINE.', '', '57.38', 0),
(323, '1425711600', '0797822', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PITHON ADELINE.', '', '16.65', 0),
(324, '1425711600', '0000343', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LECOMTE LUDIVINE.', '', '9.99', 0),
(325, '1425711600', '4583032', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOREAU PASCALE.', '', '40.64', 0),
(326, '1425711600', '0000738', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SEGARRA AGNES.', '', '16.15', 0),
(327, '1425711600', '8369238', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de OLIVEIRA CECILE.', '', '36.82', 0),
(328, '1425711600', '0000086', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEBAILLY EMILIE.', '', '10.72', 0),
(329, '1425711600', '6859742', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859742 en date du 07-03-2015.', '154.3', '', 1),
(330, '1423551600', '7003264', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RABOUAN MICHEL.', '', '35.9', 0),
(331, '1423551600', '1546378', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEMASSON.', '', '30.95', 0),
(332, '1423551600', '8369238', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de OLIVEIRA CECILE.', '', '30.95', 0),
(333, '1425711600', '6859739', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859739 en date du 07-03-2015.', '683.8', '', 1),
(334, '1424329200', '7414678', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DIJOLS CHRISTINE.', '', '36', 0),
(335, '1425711600', '6859741', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859741 en date du 07-03-2015.', '390.2', '', 1),
(336, '1422946800', '382197941', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MALINGE ANICETTE.', '', '5', 1),
(337, '1426143600', '210393822', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par THEULIER LAURE.', '', '18', 0),
(338, '1426143600', '319292988', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PRUDHOMME CECILE.', '', '36', 0),
(339, '1426143600', '700296982', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DUPAS FRANCOISE.', '', '8.6', 0),
(340, '1426143600', '375272261', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHATEAU SANDRINE.', '', '5', 1),
(341, '1426575600', '726346819', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PETITEAU SARAH.', '', '24', 1),
(342, '1426748400', '638541283', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MENDONCA FERNANDA.', '', '12', 1),
(343, '1424329200', '9524908', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GAZE CHRISTELLE.', '', '30', 1),
(344, '1424732400', '7384660', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOULAY Jennifer.', '', '120.6', 0),
(345, '1424818800', '0008347', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GERARD Alexandra.', '', '54', 0),
(346, '1424905200', '0000737', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SEGARRA Agnes.', '', '24', 1),
(347, '1425942000', '0799363', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BAILLY MICHELLE.', '', '36', 0),
(348, '1425942000', '0799363', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BAILLY MICHELLE.', '', '5', 1),
(349, '1425942000', '0799363', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BAILLY MICHELLE.', '', '5', 1),
(350, '1425942000', '000298', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TESSIER FLORENCE.', '', '24', 1),
(351, '1426114800', '9823976', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TELLANGER.', '', '12', 1),
(352, '1426114800', '9823976', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TELLANGER AXELLE.', '', '12.9', 0),
(353, '1426114800', '0000307', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COCHIN YVON.', '', '12', 1),
(354, '1425682800', '1318623', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de OLIVEAU JEAN RENE.', '', '24.98', 0),
(355, '1425942000', '0064765', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de THEULIER.', '', '30', 1),
(356, '1426719600', '4597017', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE GALL BARBARA.', '', '12', 1),
(357, '1426719600', '5655484', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COTTENCEAU MONIQUE.', '', '24', 1),
(358, '1426719600', '3096382', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROYER.', '', '48.06', 0),
(359, '1426719600', '3096382', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROYER CATHERINE.', '', '31.05', 0),
(360, '1427151600', '2236545', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAQUIN CATHERINE.', '', '12', 1),
(361, '1427324400', '7223246', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de POUTREL SYLVIE.', '', '60', 0),
(362, '1427324400', '7223247', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de POUTREL SYLVIE.', '', '162', 0),
(363, '1427324400', '8024019', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BEAUMONT BERNADETTE.', '', '60.69', 0),
(364, '1426114800', '0141735', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE PASCALE.', '', '22.8', 0),
(365, '1427666400', '6859745', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859745 en date du 1427666400.', '197.88', '', 1),
(366, '32984578800', '6859746', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859746 en date du 32984578800.', '270', '', 1),
(367, '1427752800', '0001764', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de NASRI MARION.', '', '12', 1),
(368, '1427752800', '7583571', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON CHRISTINE.', '', '18', 0),
(369, '1427752800', '7583571', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON CHRISTINE.', '', '21.6', 0),
(370, '1427752800', '0267679', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE CALVEZ JOCELYNE.', '', '21.6', 0),
(371, '1427752800', '0130361', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COCHIN YVON.', '', '50.4', 0),
(372, '1427752800', '0130359', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COCHIN YVON.', '', '12', 1),
(373, '1427925600', '1973440', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de VOISINE ANNIE.', '', '36', 0),
(374, '1427925600', '9107652', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROUE VIRGINIE.', '', '29.34', 0),
(375, '1427925600', '6851729', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOIS MARIE.', '', '12', 1),
(376, '1427925600', '2502838', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MENANT SYLVIE.', '', '24', 1),
(377, '1427925600', '5749883', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PICHERIE VALERIE.', '', '36', 0),
(378, '1427925600', '4546029', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CRANSAC CHRISTELLE.', '', '36', 0),
(379, '1427925600', '7146401', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de AUGUET JOELLE.', '', '21.6', 0),
(380, '1427925600', '7146401', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de AUGUET JOELLE.', '', '30', 1),
(381, '1427925600', '2479972', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DOISNEAU GERALDINE.', '', '29.34', 0),
(382, '1427925600', '0003122', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GASTINEAU ISABELLE.', '', '18', 0),
(383, '1428357600', '5051552', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de FOUQUERAY EDWIGE.', '', '42', 0),
(384, '1428530400', '0130362', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COCHIN YVON.', '', '24', 1),
(385, '1428530400', '6859748', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859748 en date du 1428530400.', '282.45', '', 1),
(386, '1428530400', '7588071', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BONFILS CECILE.', '', '30', 1),
(387, '1428530400', '6859749', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859749 en date du 1428530400.', '167.34', '', 1),
(388, '1428530400', '4861126', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de YEKULI AURELIE.', '', '12', 1),
(389, '1428530400', '6859750', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859750 en date du 1428530400.', '145.2', '', 1),
(390, '1428530400', '9594024', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BAILLY MICHELLE.', '', '103.5', 0),
(391, '1428530400', '0008360', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GERARD ALEXANDRA.', '', '18', 0),
(392, '1428530400', '0001258', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOUALAH BAIHJA.', '', '24', 1),
(393, '1428530400', '3895325', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '25.38', 0),
(394, '1428530400', '3895325', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '9.18', 0),
(395, '1428876000', '4674072', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUIHO ODETTE.', '', '18', 0),
(396, '1428876000', '4674072', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUIHO ODETTE.', '', '6', 1),
(397, '1428876000', '8024024', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BEAUMONT BERNADETTE.', '', '38.07', 0),
(398, '1428876000', '8024024', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BEAUMONT BERNADETTE.', '', '27.54', 0),
(399, '1428962400', '5103926', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BRARD M.PIERRE.', '', '24', 1),
(400, '1428962400', '3812666', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MENDONCA M.FERNANDA.', '', '12', 1),
(401, '1428962400', '0000041', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PERDRIAU CARINE.', '', '12', 1),
(402, '1428962400', '0000672', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ADAM.', '', '102.69', 0),
(403, '1428962400', '4861128', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de YEKULI AURELIE.', '', '12', 1),
(404, '1429135200', '8024026', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BEAUMONT BERNADETTE.', '', '105.3', 0),
(405, '1429135200', '8024026', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BEAUMONT BERNADETTE.', '', '54', 0),
(407, '1429135200', '5938337', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de AMARA NADIA.', '', '28.8', 0),
(408, '1429135200', '4312306', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de THEULIER LAURE.', '', '30', 1),
(409, '1429567200', '6017425', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de FOUBLE CAMILLE.', '', '24', 1),
(410, '1429567200', '5393328', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAUDET DELPHINE.', '', '21.6', 0),
(413, '1429135200', '6859752', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859752 en date du 1429135200.', '493.65', '', 1),
(414, '1429135200', '6859752', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859752 en date du 1429135200.', '9.99', '', 1),
(415, '1429135200', '6859752', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859752 en date du 1429135200.', '9.99', '', 1),
(416, '1429135200', '6859752', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859752 en date du 1429135200.', '9.99', '', 1),
(417, '1423609200', 'FICHE 21 (DUO614)', 'Remise Bancaire', 'Remise de EspÃ¨ce', 'Remise en banque NÂ° FICHE 21 (DUO614) en date du 1423609200.', '150.2', '', 1),
(418, '1426114800', 'FICHE 41 (637246)', 'Remise Bancaire', 'Remise de EspÃ¨ce', 'Remise en banque NÂ° FICHE 41 (637246) en date du 1426114800.', '150.2', '', 1),
(419, '1428876000', '238771385', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DR. GUILLAUD6ALLEE.', '', '3.55', 0),
(420, '1428616800', 'FICHE NÂ°64 (333566)', 'Remise Bancaire', 'Remise de EspÃ¨ce', 'Remise en banque NÂ° FICHE NÂ°64 (333566) en date du 1428616800.', '193.65', '', 1),
(421, '1422054000', '6265085', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CIBRON CHRISTOPHE.', '', '198.2', 0),
(422, '1429740000', '0141798', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE PASCALE.', '', '81', 0),
(423, '1429740000', '0141798', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE PASCALE.', '', '26.1', 0),
(424, '1429740000', '9823986', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TELLANGER AXELLE.', '', '12.9', 0),
(425, '1429740000', '9054632', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de AILLERIE MYRIAM.', '', '48.6', 0),
(426, '1430172000', '0001766', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de NASRI MARION.', '', '24', 0),
(427, '1430172000', '5668295', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PASCUITO ISABELLE.', '', '30', 0),
(428, '1429740000', '0141798', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE PASCALE.', '', '26.1', 0),
(429, '1429135200', '5938337', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de AMARA NADIA.', '', '10', 0),
(430, '1431986400', '6369754', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6369754 en date du 1431986400.', '483.6', '', 1),
(431, '1430172000', '3895333', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '99.36', 0),
(432, '1430172000', '3895333', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '33.12', 0),
(433, '1430172000', '8595831', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DESCHRYVER ELISABETH.', '', '97.2', 0),
(434, '1430172000', '0940771', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DABOUDET VALERIE.', '', '36', 0),
(435, '1430344800', '5473099', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BINOT LUCIE.', '', '24', 0),
(437, '1430344800', '0004704', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE JEAN GAEL.', '', '24', 0),
(438, '1430344800', '5577713', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de HUAU CARINE.', '', '12', 0),
(439, '1430172000', '0001043', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DURAND-CHATTON PASCALE.', '', '30', 0),
(440, '1431986400', '6859755', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859755 en date du 1431986400.', '355.68', '', 1),
(441, '1430776800', '0000745', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CADELE ELODIE.', '', '66.6', 0),
(442, '1430776800', '0000745', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CADELE ELODIE.', '', '27.9', 0),
(443, '1430344800', '5439125', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GAUDELET MARYLINE.', '', '24', 0),
(444, '1430344800', '0008366', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GERARD ALEXANDRA.', '', '12', 0),
(445, '1430344800', '0008365', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GERARD ALEXANDRA.', '', '12', 0),
(446, '1430776800', '9362065', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHARREAU HELENE.', '', '58.68', 0),
(447, '1430776800', '9362065', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHARREAU HELENE.', '', '2.15', 0),
(448, '1430776800', '0003183', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GASTINEAU ISABELLE.', '', '12', 0),
(449, '1430776800', '0003183', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GASTINEAU ISABELLE.', '', '66.6', 0),
(450, '1430863200', '8024031', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BEAUMONT BERNADETTE.', '', '104.4', 0),
(451, '1431986400', '6859756', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859756 en date du 1431986400.', '386.33', '', 1),
(452, '1430949600', '0000753', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SEGARRA AGNES.', '', '18', 0),
(453, '1430949600', '0323555', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOREAU  SANDRA.', '', '24', 0),
(454, '1430949600', '6769783', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de VIVION BEATRICE.', '', '24', 0),
(455, '1431381600', '9362066', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHARREAU HELENE.', '', '24', 0),
(456, '1431986400', '6859757', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859757 en date du 1431986400.', '90', '', 1),
(457, '1427324400', '966815561', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par bouet annette.', '', '12', 0),
(459, '1427324400', '789936736', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par VIVION BEATRICE.', '', '6', 0),
(460, '1427151600', '650590696', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par OLIVEAU J.RENE.', '', '5', 0),
(461, '1427151600', '243945590', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par OLIVEAU J.RENE.', '', '2.5', 0),
(462, '1427151600', '278453319', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par OLIVEAU J.RENE.', '', '6', 0),
(463, '1427151600', '410683901', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEAUMONT BERNADETTE.', '', '3.55', 0),
(464, '1427925600', '137035427', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BRARD M.PIERRE.', '', '6', 0),
(465, '1427925600', '402340040', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ABBID SYLVIE.', '', '6', 0),
(466, '1427925600', '309791479', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DELAUNAY DOMINIQUE.', '', '40.05', 0),
(467, '1427925600', '303287539', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par SEGARRA AGNES.', '', '6', 0),
(468, '1428357600', '270429592', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par FOUBLE CAMILLE.', '', '12', 0),
(469, '1428357600', '136654922', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GAUTHIER EMELINE.', '', '6', 0),
(470, '1428357600', '496886336', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TREMBLAIS CATHERINE.', '', '6', 0),
(471, '1431122400', '497003250', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par THEULIER LAURE.', '', '30', 0),
(472, '1431122400', '843616346', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BORE M.PIERRE.', '', '12', 0),
(473, '1431554400', '893648517', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TELLANGER.', '', '6', 0),
(474, '1429135200', '867573895', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LORINQUER MELANIE.', '', '12', 0),
(475, '1429135200', '451642172', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PECO SANDRINE.', '', '6', 0),
(476, '1429567200', '989466228', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par OLIVEAU J.RENE.', '', '6', 0),
(477, '1429567200', '253591911', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BORE M.PIERRE.', '', '7.1', 0),
(478, '1429567200', '857796039', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BORE M.PIERRE.', '', '30', 0),
(479, '1430172000', '505444032', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BORE M.PIERRE.', '', '2.5', 0),
(480, '1429567200', '323298199', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GASTINEAU ISABELLE.', '', '12', 0),
(481, '1429740000', '908067319', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par LANGLOIS VALERIE.', '', '12', 0),
(482, '1429740000', '910368250', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TAUNAY M.LAURE.', '', '12', 0),
(483, '1429740000', '144467225', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PERDRIAU SOPHIE.', '', '5', 0),
(484, '1429740000', '850980714', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PERDRIAU SOPHIE.', '', '7.5', 0),
(485, '1430344800', '587538138', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GLORIA.', '', '12', 0),
(486, '1430949600', '702432284', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GRAU CECILIO.', '', '12', 0),
(487, '1431295200', '521178095', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CADELE ELODIE.', '', '27.9', 0),
(488, '1431381600', '308354634', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUIHO ODETTE.', '', '6', 0),
(489, '1431381600', '337614479', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MENDONCA FERNANDA.', '', '12', 0),
(490, '1431381600', '430658799', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEAUMONT BERNADETTE.', '', '3.55', 0);

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=702;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=448;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
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
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=701;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=438;
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
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=406;
--
-- AUTO_INCREMENT pour la table `remise_banque`
--
ALTER TABLE `remise_banque`
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=489;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=491;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
