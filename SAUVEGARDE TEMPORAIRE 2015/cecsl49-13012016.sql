-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Mer 13 Janvier 2016 à 17:59
-- Version du serveur :  5.5.46-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cecsl49`
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
(80, 3, 'AMARA', 'Nadia', '', '0'),
(81, 3, 'AMARA', 'Meline', '', '0'),
(82, 15, 'BINOT', 'Jules', '', '0'),
(83, 16, 'BIZMAOUI PAPIN', 'Lony', '', '0'),
(84, 16, 'BIZMAOUI PAPIN', 'Levy', '', '0'),
(85, 21, 'BONARDE', 'Flora', '', '0'),
(86, 21, 'BONARDE', 'Marie', '', '0'),
(87, 26, 'BOURGAUD', 'Killian', '', '0'),
(88, 26, 'BOURGAUD', 'Emma', '', '0'),
(89, 26, 'BOURGAUD', 'Alix', '', '0'),
(90, 31, 'BRISSY', 'Margot', '', '0'),
(91, 37, 'CHAILLAND', 'Adele', '', '0'),
(92, 37, 'CHAILLAND', 'Solene', '', '0'),
(93, 37, 'CHAILLAND', 'Nais', '', '0'),
(94, 38, 'CHAILLOUX', 'Maruis', '', '0'),
(95, 38, 'CHAILLOUX', 'Capucine', '', '0'),
(96, 41, 'CHARRIER', 'Ilona', '', '0'),
(97, 41, 'CHARRIER', 'Emma', '', '0'),
(98, 44, 'CH?TEAU', 'Leo', '', '0'),
(99, 44, 'CH?TEAU', 'Kelia', '', '0'),
(100, 50, 'COCHIN', 'Vincent', '', '0'),
(101, 50, 'COCHIN', 'Benoit', '', '0'),
(102, 52, 'COLAISSEAU', 'Alice', '', '0'),
(103, 52, 'COLAISSEAU', 'Paul', '', '0'),
(104, 58, 'DAVY', 'Baptiste', '', '0'),
(105, 61, 'DELEMME', 'Noah', '', '0'),
(106, 61, 'DELEMME', 'Hugo', '', '0'),
(107, 63, 'DENECHERE', 'Thomas', '', '0'),
(108, 63, 'DENECHERE', 'Rose', '', '0'),
(109, 66, 'DEVAUD', 'Heloise', '', '0'),
(110, 67, 'DIJOLS', 'Eden', '', '0'),
(111, 68, 'DOISNEAU', 'Enzo', '', '0'),
(112, 70, 'DOUET', 'Noah', '', '0'),
(113, 71, 'DUPAS', 'Louise', '', '0'),
(114, 72, 'DURAND CHATTON', 'Morgan', '', '0'),
(115, 73, 'ELOBO', 'Simane', '', '0'),
(116, 82, 'GASTINEAU', 'Jordan', '', '0'),
(117, 82, 'GASTINEAU', 'Charline', '', '0'),
(118, 82, 'GASTINEAU', 'Marie', '', '0'),
(119, 85, 'GERARD', 'Lorinne', '', '0'),
(120, 85, 'GERARD', 'Maxence', '', '0'),
(121, 86, 'GESLIN', 'Melanie', '', '0'),
(122, 86, 'GESLIN', 'Pauline', '', '0'),
(123, 90, 'GAUDIN', 'Flavian', '', '0'),
(124, 92, 'GOURMAUD', 'Clarence', '', '0'),
(125, 95, 'GUEGAN', 'Matteo', '', '0'),
(126, 95, 'GUEGAN', 'Lizea', '', '0'),
(127, 101, 'GAUZI', 'Mahe', '', '0'),
(128, 101, 'GAUZI', 'Liam', '', '0'),
(129, 105, 'HUAU', 'Raphael', '', '0'),
(130, 108, 'JAMOTEAU', 'Eliott', '', '0'),
(131, 109, 'JARRY-FAURANT', 'Maxime', '', '0'),
(132, 109, 'JARRY-FAURANT', 'Pauline', '', '0'),
(133, 113, 'RINGUET', 'Ophelie', '', '0'),
(134, 114, 'JOURNIAC', 'Angelique', '', '0'),
(135, 114, 'JOURNIAC', 'Leandre', '', '0'),
(136, 114, 'JOURNIAC', 'Rose', '', '0'),
(137, 116, 'JURET', 'Lili-Rose', '', '0'),
(138, 116, 'JURET', 'Angele', '', '0'),
(139, 118, 'LAMY', 'Anthonin', '', '0'),
(140, 118, 'LAMY', 'Albin', '', '0'),
(141, 119, 'LANNIER', 'Enzo', '', '0'),
(142, 119, 'LANNIER', 'Zoe', '', '0'),
(143, 119, 'LANNIER', 'Erwan', '', '0'),
(144, 121, 'LASNE', 'Aurelien', '', '0'),
(145, 121, 'LASNE', 'Titouan', '', '0'),
(146, 122, 'LATONNELLE', 'Thomas', '', '0'),
(147, 122, 'LATONNELLE', 'Lea', '', '0'),
(148, 123, 'LE BORGNE', 'Basile', '', '0'),
(149, 127, 'LE JEAN', 'Florian', '', '0'),
(150, 127, 'LE JEAN', 'Gabriel', '', '0'),
(151, 128, 'LEBAILLY', 'Louise', '', '0'),
(152, 129, 'LEBLANC', 'Louis', '', '0'),
(153, 129, 'LEBLANC', 'Jean', '', '0'),
(154, 129, 'LEBLANC', 'Jules', '', '0'),
(155, 131, 'LECOMTE', 'Ninon', '', '0'),
(156, 131, 'LECOMTE', 'Elian', '', '0'),
(157, 133, 'LELIEVRE', 'Romain', '', '0'),
(158, 133, 'LELIEVRE', 'Mathis', '', '0'),
(159, 134, 'LENOGUE', 'Hugot', '', '0'),
(160, 135, 'LESAGE', 'Stella', '', '0'),
(161, 136, 'LOISEL', 'Noeline', '', '0'),
(162, 139, 'LORINQUER', 'Lilou', '', '0'),
(163, 139, 'LORINQUER', 'Nathael', '', '0'),
(164, 139, 'LORINQUER', 'Lorys', '', '0'),
(165, 144, 'MAUDET', 'Louis', '', '0'),
(166, 147, 'MEIGNAN', 'Yaelle', '', '0'),
(167, 150, 'MENDONCA', 'Aurelie', '', '0'),
(168, 150, 'MENDONCA', 'Caroline', '', '0'),
(169, 151, 'MERCEREAU', 'Romain', '', '0'),
(170, 151, 'MERCEREAU', 'Jeanne', '', '0'),
(171, 151, 'MERCEREAU', 'Claire', '', '0'),
(172, 152, 'MERIAN', 'Martin', '', '0'),
(173, 152, 'MERIAN', 'Louisa', '', '0'),
(174, 159, 'OLIVEIRA', 'Mathis', '', '0'),
(175, 159, 'OLIVEIRA', 'Timeo', '', '0'),
(176, 161, 'PATAO', 'Neo', '', '0'),
(177, 161, 'PATAO', 'Nina', '', '0'),
(178, 161, 'PATAO', 'Laly', '', '0'),
(179, 163, 'PERDIAU', 'Nicolas', '', '0'),
(180, 166, 'PICHERIE', 'Arthur', '', '0'),
(181, 166, 'PICHERIE', 'Nathan', '', '0'),
(182, 166, 'PICHERIE', 'Oriane', '', '0'),
(183, 173, 'PRIOU', 'Maxime', '', '0'),
(184, 173, 'PRIOU', 'Enzo', '', '0'),
(185, 179, 'REVERAULT', 'Antoine', '', '0'),
(186, 179, 'REVERAULT', 'Lucas', '', '0'),
(187, 182, 'RIPOCHE', 'Corentin', '', '0'),
(188, 182, 'RIPOCHE', 'Noah', '', '0'),
(189, 187, 'ROYER', 'Julien', '', '0'),
(190, 195, 'SOULET', 'Mahe', '', '0'),
(191, 195, 'SOULET', 'Nino', '', '0'),
(192, 196, 'SOURISSEAU', 'Maela', '', '0'),
(193, 196, 'SOURISSEAU', 'Gabriel', '', '0'),
(194, 202, 'TESSIER', 'Alice', '', '0'),
(195, 202, 'TESSIER', 'Clement', '', '0'),
(196, 202, 'TESSIER', 'Mathieu', '', '0'),
(197, 204, 'TIERCELIN', 'Enya', '', '0'),
(198, 204, 'TIERCELIN', 'Terry', '', '0'),
(199, 204, 'TIERCELIN', 'Rose', '', '0'),
(200, 205, 'TORREGROSSA', 'Chloe', '', '0'),
(201, 210, 'VIGAN', 'Corentin', '', '0'),
(202, 210, 'VIGAN', 'Florian', '', '0'),
(203, 210, 'VIGAN', 'Bastien', '', '0'),
(204, 210, 'VIGAN', 'Zoe', '', '0'),
(205, 212, 'VIVION', 'Eloise', '', '0'),
(206, 213, 'YEKULI', 'Leo', '', '0'),
(208, 185, 'ROUSSE (MARYVONNE)', '', '', '0'),
(209, 25, 'BOULAY ( JENNIFER)', '', '', '0'),
(210, 22, 'BORE ( M.PIERRE)', '', '', '0'),
(211, 48, 'CIBRON', 'SOPHIE', '', '0'),
(212, 198, 'TAUDON (CHRISTINE)', '', '', '0'),
(213, 42, 'CHARRIER (ELENA)', '', '', '0'),
(214, 24, 'BOUET (ANNETTE)', '', '', '0'),
(215, 127, 'LE JEAN ', 'CELINE', '', '0'),
(218, 6, 'BAILLY', 'SONIA', '', '0'),
(219, 6, 'BAILLY', 'CHRISTIAN', '', '0'),
(220, 158, 'LASALLE ', 'TANGUY', '', '0'),
(221, 207, 'TREMBLAIS', '(CATHERINE)', '', '0'),
(222, 7, 'BEAUMONT', 'SEBASTIEN', '20-04-1978', '0'),
(223, 33, 'CADELE', 'ELODIE', '', '0'),
(224, 22, 'BORE', 'MARINE', '', '0'),
(225, 164, 'PERDRIAU', '', '', '0'),
(226, 7, 'BEAUMONT', 'NATHALIE', '24-09-1979', '0'),
(227, 7, 'BEAUMONT', 'GREGORY', '20-02-1983', '0'),
(228, 9, 'BELLOIS', '', '', '0'),
(229, 124, 'LE CALVEZ', 'Pauline', '11-06-1990', ''),
(230, 124, 'LE CALVEZ', 'Justine', '09-12-1988', '');

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
(1, 2, 'Vente de Billetterie: BOUET Annette pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5', '665581703'),
(2, 2, 'Vente de Billetterie: SOULET Elodie pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5', '227697751'),
(3, 2, 'Vente de Billetterie: TELLANGER Axelle pour la prestation CINEMA GAUMONT 7.40', '', '24', '711392438'),
(4, 2, 'Vente de Billetterie: LASNE Allison pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '429580409'),
(6, 2, 'Vente de Billetterie: SOULET Elodie pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '586170540'),
(7, 2, 'Vente de Billetterie: TELLANGER Axelle pour la prestation CAFE TARIF 2014', '', '8.2', '521098166'),
(8, 2, 'Vente de Billetterie: LECLERC Caroline pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '634012417'),
(9, 2, 'Vente de Billetterie: INCONNU INCONNU pour la prestation CAFE  DOSETTES 2014', '', '7.1', '78970061'),
(10, 2, 'Vente de Billetterie: DELAUNAY Dominique pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '36814564'),
(11, 2, 'Vente de Billetterie: DELAREUX Isabelle pour la prestation CINEMAS GAUMONT (7.60)', '', '30', '732820235'),
(12, 2, 'Vente de Billetterie: MALINGE Anicette pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '262182743'),
(13, 2, 'Vente de Billetterie: TAUNAY M Laure pour la prestation CINEMA GAUMONT 7.40', '', '12', '90598307'),
(14, 2, 'Vente de Billetterie: HUIN Sylvie pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '764739341'),
(16, 2, 'Vente de Billetterie: BONFILS Cecile pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '89741929'),
(17, 2, 'Vente de Billetterie: TELLANGER Axelle pour la prestation CINEMA GAUMONT 7.40', '', '24', '304431378'),
(18, 2, 'Vente de Billetterie: BOUET Annette pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '177373128'),
(19, 2, 'Vente de Billetterie: LEBAILLY Emilie pour la prestation CINEMA GAUMONT 7.40', '', '12', '814240224'),
(20, 2, 'Vente de Billetterie: TAUDON Christine pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '133909062'),
(21, 2, 'Vente de Billetterie: SEHAQUI M Therese pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '21258560'),
(22, 2, 'Vente de Billetterie: BOUET Annette pour la prestation CINEMA GAUMONT 7.40', '', '36', '920469252'),
(23, 2, 'Vente de Billetterie: CIBRON Christophe pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '98835520'),
(24, 2, 'Vente de Billetterie: TAUDON Christine pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5', '567859797'),
(25, 2, 'Vente de Billetterie: CIBRON Christophe pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5', '984019512'),
(26, 2, 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation CINEMAS GAUMONT (7.60)', '', '18', '310338266'),
(28, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMAS GAUMONT (7.60)', '', '18', '680446872'),
(29, 2, 'Vente de Billetterie: BOUET Annette pour la prestation PARC FUTUROSCOPE ADULTE', '', '199.8', '536725861'),
(30, 2, 'Vente de Billetterie: SOURISSEAU Aurore pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '263969768'),
(31, 2, 'Vente de Billetterie: MAUSSION Christine pour la prestation CINEMA GAUMONT 7.40', '', '24', '914158940'),
(32, 2, 'Vente de Billetterie: BERTEAU Patricia pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '396775758'),
(33, 2, 'Vente de Billetterie: VIVIEN HervÃ© pour la prestation AUSTRALIAN PINK FLOYD SHOW', '', '203.4', '782556897'),
(34, 2, 'Vente de Billetterie: BERTEAU Patricia pour la prestation CINEMA GAUMONT 7.40', '', '24', '320828574'),
(35, 2, 'Vente de Billetterie: BONFILS Cecile pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '379710471'),
(36, 2, 'Vente de Billetterie: LATONNELLE Anne pour la prestation CINEMAS GAUMONT (7.60)', '', '42', '622473885'),
(37, 2, 'Vente de Billetterie: GERARD Alexandra pour la prestation CINEMAS GAUMONT (7.60)', '', '54', '897005826'),
(38, 2, 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMA GAUMONT 7.40', '', '24', '586871020'),
(39, 2, 'Vente de Billetterie: GUIHO Odette pour la prestation CINEMAS GAUMONT (7.60)', '', '6', '314709070'),
(40, 2, 'Vente de Billetterie: PERDRIAU Carine pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '772324341'),
(41, 2, 'Vente de Billetterie: DUPAS FranÃ§oise pour la prestation CAFE TARIF 2014', '', '2.05', '132015902'),
(42, 2, 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '23572125'),
(43, 2, 'Vente de Billetterie: LE GAL Barbara pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '426176813'),
(44, 2, 'Vente de Billetterie: PETITEAU Sarah pour la prestation CINEMA GAUMONT 7.40', '', '6', '82061111'),
(45, 2, 'Vente de Billetterie: LEGER Sonia pour la prestation CINEMAS GAUMONT (7.60)', '', '30', '980274162'),
(46, 2, 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CINEMA GAUMONT 7.40', '', '6', '986236337'),
(47, 2, 'Vente de Billetterie: TESSIER Florence pour la prestation CINEMA GAUMONT 7.40', '', '6', '520745033'),
(48, 2, 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation PLANETE SAUVAGE ENFANTS', '', '15.75', '711028987'),
(49, 2, 'Vente de Billetterie: LE BORGNE Celine pour la prestation CINEMA GAUMONT 7.40', '', '18', '468611381'),
(50, 2, 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CINEMA GAUMONT 7.40', '', '6', '525398385'),
(52, 2, 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '24.98', '59247466'),
(53, 2, 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation PLANETE SAUVAGE ADULTES', '', '42.3', '87822146'),
(54, 2, 'Vente de Billetterie: CHARREAU Helene pour la prestation CINEMA GAUMONT 7.40', '', '12', '842180750'),
(55, 2, 'Vente de Billetterie: ROYER Catherine pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '57.38', '28111314'),
(56, 2, 'Vente de Billetterie: RIVEREAU Anne Sophie pour la prestation CINEMA GAUMONT 7.40', '', '12', '774849541'),
(57, 2, 'Vente de Billetterie: SEHAQUI M Therese pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PRADEL', '', '97.8', '2278650'),
(58, 2, 'Vente de Billetterie: PITHON Adeline pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '16.65', '80523815'),
(59, 2, 'Vente de Billetterie: INCONNU INCONNU pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PRADEL', '', '35.9', '69765207'),
(60, 2, 'Vente de Billetterie: CHARREAU Helene pour la prestation CAFE 2015', '', '2.15', '64968425'),
(61, 2, 'Vente de Billetterie: LECOMTE Ludivine pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '9.99', '95092922'),
(62, 2, 'Vente de Billetterie: INCONNU INCONNU pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PRADEL', '', '30.95', '49736530'),
(63, 2, 'Vente de Billetterie: MAQUIN CATHERINE pour la prestation CINEMA GAUMONT 7.40', '', '12', '520907284'),
(64, 2, 'Vente de Billetterie: MOREAU Pascale pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '40.64', '59797663'),
(65, 2, 'Vente de Billetterie: GUIHO Odette pour la prestation CINEMAS GAUMONT (7.60)', '', '6', '660000300'),
(66, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '7.13', '67271536'),
(67, 2, 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMAS GAUMONT (7.60)', '', '18', '934538361'),
(68, 2, 'Vente de Billetterie: PRUDHOMME Celine pour la prestation CINEMAS GAUMONT (7.60)', '', '36', '919248339'),
(71, 2, 'Vente de Billetterie: SEGARRA Agnes pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '16.15', '45094668'),
(72, 2, 'Vente de Billetterie: DUPAS FranÃ§oise pour la prestation CAFE 2015', '', '8.6', '187909065'),
(73, 2, 'Vente de Billetterie: BRARD Marie Pierre pour la prestation CINEMAS GAUMONT (7.60)', '', '36', '846137310'),
(74, 2, 'Vente de Billetterie: PRUDHOMME Celine pour la prestation CINEMAS GAUMONT (7.60)', '', '36', '736635752'),
(76, 2, 'Vente de Billetterie: CHATEAU Sandrine pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '592864555'),
(77, 2, 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PRADEL', '', '30.95', '97513134'),
(78, 2, 'Vente de Billetterie: GAZE CHRISTELLE pour la prestation CINEMAS GAUMONT (7.60)', '', '30', '858763655'),
(79, 2, 'Vente de Billetterie: PETITEAU Sarah pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '456758080'),
(80, 2, 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '918208710'),
(81, 2, 'Vente de Billetterie: FRANCFORT Catherine pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '193899006'),
(82, 2, 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '36.82', '3225073'),
(83, 2, 'Vente de Billetterie: LE GAL Barbara pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '106783119'),
(84, 2, 'Vente de Billetterie: LEGER Sonia pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '328530866'),
(85, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '794954315'),
(86, 2, 'Vente de Billetterie: COTTENCEAU Monique pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '756736842'),
(87, 2, 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMAS GAUMONT (7.60)', '', '30', '974299773'),
(88, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '728697198'),
(89, 2, 'Vente de Billetterie: LEBAILLY Emilie pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '10.72', '52964047'),
(90, 2, 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CINEMAS GAUMONT (7.60)', '', '60', '166948714'),
(91, 2, 'Vente de Billetterie: CHEIGNON Aurore pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '670624422'),
(92, 2, 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '412765581'),
(93, 2, 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CARTE CEZAM AYANT DROIT', '', '5', '45094198'),
(94, 2, 'Vente de Billetterie: LE CALVEZ Jocelyne pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUMS', '', '60', '10338143'),
(95, 2, 'Vente de Billetterie: ROUSSE Maryvonne pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '234456713'),
(96, 2, 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUMS', '', '49.75', '21042257'),
(97, 2, 'Vente de Billetterie: ROYER Catherine pour la prestation AQUARUIM OCEANOPOLIS ENFANT', '', '31.05', '952750137'),
(98, 2, 'Vente de Billetterie: ROYER Catherine pour la prestation AQUARUIM OCEANOPOLIS ADULTES', '', '48.06', '441031498'),
(100, 2, 'Vente de Billetterie: ROYER Catherine pour la prestation AQUARUIM OCEANOPOLIS ADULTES', '', '48.06', '840107266'),
(102, 2, 'Vente de Billetterie: ROUSSE Maryvonne pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5', '245189370'),
(104, 2, 'Vente de Billetterie: MAQUIN CATHERINE pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '896270708'),
(105, 2, 'Vente de Billetterie: BINOT Lucie pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '805925611'),
(106, 2, 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '332607015'),
(107, 2, 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5', '901511124'),
(109, 2, 'Vente de Billetterie: COCHIN Yvon pour la prestation ALAIN SOUCHON', '', '124.2', '100778571'),
(110, 2, 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CINEMAS GAUMONT (7.60)', '', '6', '929177950'),
(111, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CAFE DOSETTE 2015', '', '3.65', '9092121'),
(112, 2, 'Vente de Billetterie: BOULAY Jennifer pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '397315106'),
(113, 2, 'Vente de Billetterie: CIBRON Christophe pour la prestation CHEQUE DOMICILE (12.20)', '', '244', '13943187'),
(115, 2, 'Vente de Billetterie: BOUET Annette pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '657218478'),
(116, 2, 'Vente de Billetterie: BOULAY Jennifer pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5', '256554503'),
(117, 2, 'Vente de Billetterie: VIVION Beatrice pour la prestation CINEMAS GAUMONT (7.60)', '', '6', '461684695'),
(118, 2, 'Vente de Billetterie: PRUNAUX-CAZER  pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '790005487'),
(119, 2, 'Vente de Billetterie: POUTREL Sylvie pour la prestation CINEMAS GAUMONT (7.60)', '', '60', '741503920'),
(120, 2, 'Vente de Billetterie: BAILLY Michelle pour la prestation CINEMAS GAUMONT (7.60)', '', '36', '455494885'),
(121, 2, 'Vente de Billetterie: GUILLOT Claire pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '49653084'),
(122, 2, 'Vente de Billetterie: MOREAU Sandra pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '411822920'),
(123, 2, 'Vente de Billetterie: POUTREL Sylvie pour la prestation PARC ASTERIX', '', '162', '760320671'),
(124, 2, 'Vente de Billetterie: BORE Marie Pierre pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '409700113'),
(125, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES', '', '60.69', '59270059'),
(126, 2, 'Vente de Billetterie: PIEL Guylaine pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '348245995'),
(127, 2, 'Vente de Billetterie: BAILLY Michelle pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '36150232'),
(128, 2, 'Vente de Billetterie: BORE Marie Pierre pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5', '581244348'),
(129, 2, 'Vente de Billetterie: COLAISSEAU Christine pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES', '', '50', '91200716'),
(130, 2, 'Vente de Billetterie: ABID/PLANCHENAULT Sylvie pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '458198768'),
(131, 2, 'Vente de Billetterie: NASRI Marion pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '786991590'),
(132, 2, 'Vente de Billetterie: MAUSSION Christine pour la prestation CAFE TARIF 2014', '', '2.05', '211762438'),
(133, 2, 'Vente de Billetterie: TAUDON Christine pour la prestation CINEMAS GAUMONT (7.60)', '', '18', '725162714'),
(134, 2, 'Vente de Billetterie: MAUSSION Christine pour la prestation CAFE 2015', '', '4.3', '686541289'),
(136, 2, 'Vente de Billetterie: TAUDON Christine pour la prestation CARTE ATOUT', '', '21.6', '446575505'),
(137, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CAFE  DOSETTES 2014', '', '7.1', '599233336'),
(138, 2, 'Vente de Billetterie: LE CALVEZ Jocelyne pour la prestation CARTE ATOUT', '', '21.6', '735129293'),
(139, 2, 'Vente de Billetterie: BAILLY Michelle pour la prestation CARTE CEZAM AYANT DROIT', '', '5', '947224441'),
(140, 2, 'Vente de Billetterie: RUBIO G.MICHEL pour la prestation CINEMAS GAUMONT (7.60)', '', '36', '23679327'),
(141, 2, 'Vente de Billetterie: COCHIN Yvon pour la prestation Concert Francis Cabrel 56.00 (dacc49) categorie 1', '', '50.4', '574583050'),
(142, 2, 'Vente de Billetterie: COCHIN Yvon pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '249461763'),
(143, 2, 'Vente de Billetterie: RUBIO G.MICHEL pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE  (9.91)', '', '198.2', '89850899'),
(144, 2, 'Vente de Billetterie: CHARRIER Elena pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5', '491320884'),
(146, 2, 'Vente de Billetterie: CHAILLOU Sandra pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE  (9.91)', '', '198.2', '165891631'),
(147, 2, 'Vente de Billetterie: CHARRIER Elena pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '252875044'),
(148, 2, 'Vente de Billetterie: LATONNELLE Anne pour la prestation CINEMAS GAUMONT (7.60)', '', '18', '794703286'),
(149, 2, 'Vente de Billetterie: TESSIER Florence pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '169752312'),
(150, 2, 'Vente de Billetterie: YVON ANAELLE pour la prestation CINEMAS GAUMONT (7.60)', '', '30', '733424058'),
(151, 2, 'Vente de Billetterie: LEBAILLY Emilie pour la prestation CINEMAS GAUMONT (7.60)', '', '36', '39549093'),
(152, 2, 'Vente de Billetterie: TELLANGER Axelle pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '661249428'),
(153, 2, 'Vente de Billetterie: GAUDELET Maryline pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '53576951'),
(154, 2, 'Vente de Billetterie: GUIHO Odette pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5', '790880482'),
(155, 2, 'Vente de Billetterie: TELLANGER Axelle pour la prestation CAFE 2015', '', '12.9', '610005995'),
(156, 2, 'Vente de Billetterie: ROUSSE Maryvonne pour la prestation CINEMAS GAUMONT (7.60)', '', '6', '890451606'),
(157, 2, 'Vente de Billetterie: DENECHERE Pascale pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '683524388'),
(158, 2, 'Vente de Billetterie: DENECHERE Pascale pour la prestation CINEMAS GAUMONT (7.60)', '', '6', '898158255'),
(159, 2, 'Vente de Billetterie: LE CALVEZ Jocelyne pour la prestation CINEMAS GAUMONT (7.60)', '', '30', '600441429'),
(160, 2, 'Vente de Billetterie: COCHIN Yvon pour la prestation Cin&eacute;ma Gaumont', '', '12', '183363103'),
(161, 2, 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUMS', '', '49.75', '45953082'),
(162, 2, 'Vente de Billetterie: CHEIGNON Aurore pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '626332227'),
(163, 2, 'Vente de Billetterie: DENECHERE Pascale pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - CHOCOLAT', '', '22.8', '91261461'),
(164, 2, 'Vente de Billetterie: GAZE CHRISTELLE pour la prestation CINEMAS GAUMONT (7.60)', '', '30', '32831752'),
(165, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMAS GAUMONT (7.60)', '', '66', '11674217'),
(166, 2, 'Vente de Billetterie: CHEIGNON Aurore pour la prestation PARC FUTUROSCOPE ADULTE', '', '33.3', '145331429'),
(167, 2, 'Vente de Billetterie: PERDRIAU Carine pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '451874119'),
(168, 2, 'Vente de Billetterie: TESSIE Francoise pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '168612447'),
(169, 2, 'Vente de Billetterie: DIJOLS Christine pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '802973924'),
(170, 2, 'Vente de Billetterie: SEHAQUI M Therese pour la prestation CINEMAS GAUMONT (7.60)', '', '84', '952834606'),
(172, 2, 'Vente de Billetterie: Personnel rattach&eacute;  pour la prestation CAFE 2015 - CAFE', '', '2.15', '2235347'),
(173, 2, 'Vente de Billetterie: BOUTREUX Anne Sophie pour la prestation CINEMAS GAUMONT (7.60)', '', '18', '942918206'),
(174, 2, 'Vente de Billetterie: HENNE Teresa pour la prestation ALAIN SOUCHON', '', '124.2', '475939052'),
(175, 2, 'Vente de Billetterie: BOUTREUX Anne Sophie pour la prestation CINEMA 400 COUPS', '', '35.12', '331137110'),
(176, 2, 'Vente de Billetterie: SOULET Elodie pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '519262560'),
(177, 2, 'Vente de Billetterie: BONFILS Cecile pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '97794352'),
(178, 2, 'Vente de Billetterie: GERARD Alexandra pour la prestation CINEMAS GAUMONT (7.60)', '', '42', '396062823'),
(179, 2, 'Vente de Billetterie: SOULET Elodie pour la prestation PARC BADABOUM CIRCUS ENFANTS PLUS DE 2 ANS', '', '10.8', '471144472'),
(181, 2, 'Vente de Billetterie: BOULAY Jennifer pour la prestation DISNEY RESORT PARIS  1 JOUR 2 PARCS ADULTES', '', '120.6', '470797546'),
(182, 2, 'Vente de Billetterie: COLAISSEAU Christine pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '30.5', '91924048'),
(183, 2, 'Vente de Billetterie: CIBRON Christophe pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE  (9.91)', '', '198.2', '639583575'),
(184, 2, 'Vente de Billetterie: THEULIER Laure pour la prestation FRANCIS CABREL (39.00)', '', '70.2', '73632731'),
(185, 2, 'Vente de Billetterie: COLAISSEAU Christine pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUMS', '', '56', '29694521'),
(186, 2, 'Vente de Billetterie: SEGARRA Agnes pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '924948412'),
(188, 2, 'Vente de Billetterie: MOREAU Pascale pour la prestation CINEMAS GAUMONT (7.60)', '', '30', '606358174'),
(190, 2, 'Vente de Billetterie: PICHERIT Valerie pour la prestation CINEMAS GAUMONT (7.60)', '', '36', '30061780'),
(191, 2, 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMAS GAUMONT (7.60)', '', '30', '443161432'),
(194, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CINEMAS GAUMONT (7.60)', '', '18', '642240506'),
(195, 2, 'Vente de Billetterie: ABID/PLANCHENAULT Sylvie pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '244455020'),
(196, 2, 'Vente de Billetterie: COLAISSEAU Christine pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '43770008'),
(197, 2, 'Vente de Billetterie: BERTEAU Patricia pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '671865601'),
(198, 2, 'Vente de Billetterie: PASCUITO Isabelle pour la prestation CINEMAS GAUMONT (7.60)', '', '60', '243503539'),
(199, 2, 'Vente de Billetterie: CHARRIER Elena pour la prestation CINEMAS GAUMONT (7.60)', '', '12', '320531802'),
(202, 2, 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation CAFE TARIF 2014', '', '4.1', '724084581'),
(203, 2, 'Vente de Billetterie: TAUNAY M Laure pour la prestation CINEMAS GAUMONT (7.60)', '', '30', '374596806'),
(204, 2, 'Vente de Billetterie: DENECHERE Pascale pour la prestation CINEMAS GAUMONT (7.60)', '', '18', '768180482'),
(205, 2, 'Vente de Billetterie: CHEVREUX Melanie pour la prestation CINEMAS GAUMONT (7.60)', '', '36', '435688722'),
(206, 2, 'Vente de Billetterie: GERARD Alexandra pour la prestation RECETTE ANNEES PRECEDENTES - DU ANNEE 2014 CE 0008342', '', '4', '88791843'),
(207, 2, 'Vente de Billetterie: HENNE Teresa pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - Parfum', '', '86.85', '39043086'),
(208, 2, 'Vente de Billetterie: CARRE Audrey pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUM', '', '92', '50345990'),
(209, 2, 'Vente de Billetterie: RIVEREAU Anne Sophie pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUM', '', '65', '35562441'),
(210, 2, 'Vente de Billetterie: MONNIER Sarah pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUM', '', '65', '91277023'),
(211, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUM', '', '16.24', '63336173'),
(213, 2, 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CINEMAS GAUMONT (7.60)', '', '24', '400218481'),
(214, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT 7.40', '', '18', '812514773'),
(215, 2, 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CINEMA GAUMONT 7.40', '', '36', '27931207'),
(216, 2, 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT 7.40', '', '18', '666825132'),
(217, 2, 'Vente de Billetterie: GILBERT Lucie pour la prestation CINEMAS GAUMONT (7.60)', '', '36', '161061755'),
(219, 2, 'Vente de Billetterie: SEGARRA Agnes pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '16.15', '10954941');

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
(2, 24, '1422918000', 3, '2.5', 1, '665581703', 1),
(5, 195, '1422918000', 3, '2.5', 1, '227697751', 1),
(8, 121, '1425337200', 3, '24', 1, '429580409', 1),
(9, 200, '1420153200', 3, '8.2', 1, '521098166', 1),
(13, 195, '1422918000', 3, '5', 1, '586170540', 1),
(14, 130, '1425337200', 3, '12', 1, '634012417', 1),
(16, 220, '1422918000', 3, '7.1', 1, '78970061', 0),
(19, 60, '1422918000', 3, '5', 1, '36814564', 1),
(20, 59, '1425340800', 3, '30', 1, '732820235', 1),
(21, 141, '1422918000', 3, '5', 1, '262182743', 1),
(22, 199, '1420239600', 3, '12', 1, '90598307', 1),
(23, 107, '1422918000', 3, '5', 1, '764739341', 1),
(25, 20, '1425510000', 3, '12', 1, '89741929', 1),
(26, 200, '1420153200', 3, '24', 1, '304431378', 1),
(27, 24, '1422918000', 3, '5', 1, '177373128', 1),
(28, 128, '1420498800', 3, '12', 1, '814240224', 1),
(29, 198, '1425510000', 3, '5', 1, '133909062', 1),
(30, 191, '1422918000', 3, '5', 1, '21258560', 1),
(31, 24, '1420498800', 3, '36', 1, '920469252', 1),
(32, 48, '1423090800', 3, '5', 1, '98835520', 1),
(33, 198, '1425513600', 3, '2.5', 1, '567859797', 1),
(34, 48, '1423090800', 3, '2.5', 1, '984019512', 1),
(35, 24, '1420498800', 3, '199.8', 1, '536725861', 1),
(36, 150, '1423090800', 3, '18', 1, '310338266', 1),
(38, 82, '1423090800', 3, '18', 1, '680446872', 1),
(39, 196, '1423090800', 3, '24', 1, '263969768', 1),
(41, 145, '1420498800', 3, '24', 1, '914158940', 1),
(42, 11, '1425337200', 3, '24', 1, '396775758', 1),
(43, 211, '1420498800', 3, '203.4', 1, '782556897', 1),
(44, 11, '1420498800', 3, '24', 1, '320828574', 1),
(45, 20, '1423090800', 3, '24', 1, '379710471', 1),
(46, 122, '1423522800', 3, '42', 1, '622473885', 1),
(47, 85, '1425337200', 3, '54', 1, '897005826', 1),
(49, 203, '1420498800', 3, '24', 1, '586871020', 1),
(50, 96, '1423522800', 3, '6', 1, '314709070', 1),
(51, 163, '1425510000', 3, '12', 1, '772324341', 1),
(52, 71, '1420498800', 3, '2.05', 1, '132015902', 1),
(53, 207, '1423522800', 3, '24', 1, '23572125', 1),
(54, 126, '1425510000', 3, '12', 1, '426176813', 1),
(55, 165, '1420498800', 3, '6', 1, '82061111', 1),
(56, 132, '1425682800', 3, '30', 1, '980274162', 1),
(57, 158, '1420585200', 3, '6', 1, '986236337', 1),
(58, 207, '1423522800', 3, '15.75', 1, '711028987', 1),
(59, 202, '1420585200', 3, '6', 1, '520745033', 1),
(61, 123, '1420585200', 3, '18', 1, '468611381', 1),
(62, 158, '1420585200', 3, '6', 1, '525398385', 1),
(64, 158, '1425682800', 3, '24.98', 1, '59247466', 0),
(65, 207, '1423522800', 3, '42.3', 1, '87822146', 1),
(66, 41, '1420585200', 3, '12', 1, '842180750', 1),
(67, 187, '1425682800', 3, '57.38', 1, '28111314', 0),
(68, 191, '1423522800', 3, '97.8', 1, '2278650', 0),
(69, 183, '1420585200', 3, '12', 1, '774849541', 1),
(70, 168, '1425682800', 3, '16.65', 1, '80523815', 0),
(71, 220, '1423522800', 3, '35.9', 1, '69765207', 0),
(72, 41, '1420585200', 3, '2.15', 1, '64968425', 0),
(73, 131, '1425682800', 3, '9.99', 1, '95092922', 0),
(74, 220, '1423522800', 3, '30.95', 1, '49736530', 0),
(76, 214, '1421103600', 3, '12', 1, '520907284', 1),
(77, 156, '1425682800', 3, '40.64', 1, '59797663', 0),
(78, 96, '1421103600', 3, '6', 1, '660000300', 1),
(79, 7, '1425682800', 3, '7.13', 1, '67271536', 0),
(80, 203, '1426114800', 3, '18', 1, '934538361', 1),
(81, 175, '1426114800', 3, '36', 1, '736635752', 1),
(82, 190, '1425682800', 3, '16.15', 1, '45094668', 0),
(83, 30, '1421103600', 3, '36', 1, '846137310', 1),
(84, 71, '1426114800', 3, '8.6', 1, '187909065', 1),
(86, 44, '1426114800', 3, '5', 1, '592864555', 1),
(87, 159, '1423522800', 3, '30.95', 1, '97513134', 0),
(88, 218, '1421103600', 3, '30', 1, '858763655', 1),
(89, 159, '1425682800', 3, '36.82', 1, '3225073', 0),
(90, 165, '1426546800', 3, '24', 1, '456758080', 1),
(91, 81, '1423522800', 3, '24', 1, '193899006', 1),
(92, 150, '1426719600', 3, '12', 1, '918208710', 1),
(93, 132, '1421103600', 3, '24', 1, '328530866', 1),
(94, 126, '1426719600', 3, '12', 1, '106783119', 1),
(95, 7, '1423522800', 3, '12', 1, '794954315', 1),
(96, 54, '1426719600', 3, '24', 1, '756736842', 1),
(98, 203, '1423522800', 3, '30', 1, '974299773', 1),
(99, 128, '1425682800', 3, '10.72', 1, '52964047', 0),
(100, 82, '1421103600', 3, '12', 1, '728697198', 1),
(101, 127, '1426719600', 3, '60', 1, '166948714', 1),
(102, 45, '1421103600', 3, '12', 1, '670624422', 1),
(105, 127, '1426719600', 3, '5', 1, '412765581', 1),
(107, 185, '1421708400', 3, '5', 1, '234456713', 1),
(108, 127, '1426719600', 3, '5', 1, '45094198', 0),
(109, 124, '1423609200', 3, '60', 1, '10338143', 0),
(110, 159, '1425682800', 3, '49.75', 1, '21042257', 0),
(111, 187, '1426719600', 3, '31.05', 1, '952750137', 1),
(113, 187, '1426719600', 3, '48.06', 1, '840107266', 1),
(114, 185, '1421708400', 3, '2.5', 1, '245189370', 1),
(115, 214, '1427151600', 3, '12', 1, '896270708', 1),
(116, 15, '1421708400', 3, '12', 1, '805925611', 1),
(117, 158, '1427151600', 3, '5', 1, '332607015', 1),
(119, 158, '1427151600', 3, '2.5', 1, '901511124', 1),
(120, 50, '1421708400', 3, '124.2', 1, '100778571', 1),
(121, 158, '1427151600', 3, '6', 1, '929177950', 1),
(122, 7, '1427151600', 3, '3.65', 1, '9092121', 1),
(123, 25, '1421708400', 3, '5', 1, '397315106', 1),
(124, 48, '1423609200', 3, '244', 1, '13943187', 0),
(126, 24, '1427324400', 3, '12', 1, '657218478', 1),
(127, 25, '1421708400', 3, '2.5', 1, '256554503', 1),
(128, 212, '1427324400', 3, '6', 1, '461684695', 1),
(129, 216, '1423695600', 3, '24', 1, '790005487', 1),
(130, 172, '1427324400', 3, '60', 1, '741503920', 1),
(131, 6, '1425942000', 3, '36', 1, '455494885', 1),
(132, 97, '1421708400', 3, '12', 1, '49653084', 1),
(133, 155, '1423695600', 3, '24', 1, '411822920', 1),
(134, 172, '1427324400', 3, '162', 1, '760320671', 1),
(135, 22, '1422313200', 3, '5', 1, '409700113', 1),
(136, 167, '1423695600', 3, '24', 1, '348245995', 1),
(137, 7, '1427324400', 3, '60.69', 1, '59270059', 0),
(138, 6, '1425942000', 3, '5', 1, '36150232', 1),
(139, 22, '1422313200', 3, '2.5', 1, '581244348', 1),
(140, 52, '1427324400', 3, '50', 1, '91200716', 0),
(141, 170, '1423695600', 3, '24', 1, '458198768', 1),
(142, 157, '1427752800', 3, '12', 1, '786991590', 1),
(143, 145, '1423695600', 3, '2.05', 1, '211762438', 1),
(144, 42, '1422313200', 3, '2.5', 1, '491320884', 1),
(145, 198, '1427752800', 3, '18', 1, '725162714', 1),
(146, 145, '1423695600', 3, '4.3', 1, '686541289', 1),
(147, 198, '1427752800', 3, '21.6', 1, '446575505', 1),
(148, 7, '1423695600', 3, '7.1', 1, '599233336', 1),
(149, 124, '1427752800', 3, '21.6', 1, '735129293', 1),
(150, 219, '1424127600', 3, '36', 1, '23679327', 0),
(151, 6, '1425942000', 3, '5', 1, '947224441', 1),
(152, 50, '1427752800', 3, '50.4', 1, '574583050', 1),
(153, 219, '1424127600', 3, '198.2', 1, '89850899', 0),
(155, 50, '1427752800', 3, '12', 1, '249461763', 1),
(156, 38, '1424127600', 3, '198.2', 1, '165891631', 1),
(157, 42, '1422313200', 3, '5', 1, '252875044', 1),
(158, 202, '1425942000', 3, '24', 1, '169752312', 1),
(159, 122, '1422486000', 3, '18', 1, '794703286', 1),
(160, 217, '1424127600', 3, '30', 1, '733424058', 1),
(161, 128, '1424127600', 3, '36', 1, '39549093', 1),
(162, 200, '1426114800', 3, '12', 1, '661249428', 1),
(163, 83, '1424127600', 3, '12', 1, '53576951', 1),
(164, 96, '1424127600', 3, '5', 1, '790880482', 1),
(165, 200, '1426114800', 3, '12.9', 1, '610005995', 1),
(166, 185, '1424127600', 3, '6', 1, '890451606', 1),
(167, 63, '1424127600', 3, '12', 1, '683524388', 1),
(168, 63, '1422486000', 3, '6', 1, '898158255', 1),
(169, 50, '1426114800', 3, '12', 1, '183363103', 1),
(170, 124, '1424127600', 3, '30', 1, '600441429', 1),
(171, 159, '1422313200', 3, '49.75', 1, '45953082', 0),
(172, 45, '1422486000', 3, '12', 1, '626332227', 1),
(173, 63, '1426114800', 3, '22.8', 1, '91261461', 0),
(174, 218, '1424300400', 3, '30', 1, '32831752', 1),
(175, 82, '1424300400', 3, '66', 1, '11674217', 1),
(176, 45, '1422486000', 3, '33.3', 1, '145331429', 1),
(177, 163, '1422486000', 3, '12', 1, '451874119', 1),
(178, 201, '1422486000', 3, '12', 1, '168612447', 1),
(179, 67, '1424300400', 3, '12', 1, '802973924', 1),
(180, 191, '1422486000', 3, '84', 1, '952834606', 1),
(182, 232, '1424905200', 3, '2.15', 1, '2235347', 1),
(183, 29, '1422486000', 3, '18', 1, '942918206', 1),
(184, 101, '1424300400', 3, '124.2', 1, '475939052', 1),
(185, 29, '1422486000', 3, '35.12', 1, '331137110', 1),
(186, 195, '1424732400', 3, '12', 1, '519262560', 1),
(187, 20, '1422486000', 3, '24', 1, '97794352', 1),
(188, 195, '1424732400', 3, '10.8', 1, '471144472', 1),
(189, 85, '1422486000', 3, '42', 1, '396062823', 1),
(190, 7, '1422486000', 3, '18', 1, '642240506', 1),
(191, 25, '1424732400', 3, '120.6', 1, '470797546', 1),
(192, 52, '1425682800', 3, '30.5', 1, '91924048', 0),
(193, 48, '1422054000', 3, '198.2', 1, '639583575', 1),
(194, 203, '1424732400', 3, '70.2', 1, '73632731', 1),
(195, 52, '1425682800', 3, '56', 1, '29694521', 0),
(196, 190, '1424905200', 3, '24', 1, '924948412', 1),
(197, 156, '1424905200', 3, '30', 1, '606358174', 1),
(198, 166, '1424905200', 3, '36', 1, '30061780', 1),
(199, 203, '1425942000', 3, '30', 1, '443161432', 1),
(201, 170, '1424905200', 3, '24', 1, '244455020', 1),
(202, 52, '1424905200', 3, '24', 1, '43770008', 1),
(203, 11, '1422486000', 3, '24', 1, '671865601', 1),
(204, 160, '1422486000', 3, '60', 1, '243503539', 1),
(205, 42, '1422486000', 3, '12', 1, '320531802', 1),
(206, 207, '1422486000', 3, '4.1', 1, '724084581', 1),
(207, 199, '1422486000', 3, '30', 1, '374596806', 1),
(208, 63, '1424300400', 3, '18', 1, '768180482', 1),
(209, 85, '1422486000', 3, '4', 1, '88791843', 0),
(210, 46, '1424300400', 3, '36', 1, '435688722', 1),
(211, 101, '1422313200', 3, '86.85', 1, '39043086', 0),
(212, 34, '1422486000', 3, '92', 1, '50345990', 0),
(213, 183, '1422313200', 3, '65', 1, '35562441', 0),
(214, 154, '1422313200', 3, '65', 1, '91277023', 0),
(215, 7, '1422313200', 3, '16.24', 1, '63336173', 0),
(216, 7, '1422313200', 3, '24', 1, '400218481', 1),
(217, 82, '1420585200', 3, '18', 1, '812514773', 1),
(218, 127, '1420585200', 3, '36', 1, '27931207', 1),
(219, 82, '1423090800', 3, '18', 1, '666825132', 1),
(220, 87, '1423695600', 3, '36', 1, '161061755', 1),
(221, 190, '1425682800', 3, '16.15', 1, '10954941', 0);

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
(1, 'COMITE DEMO PREMIUM', '0', '0', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
(1, '665581703', '1422918000', 'Vente de Billetterie: BOUET Annette pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5'),
(2, '227697751', '1422918000', 'Vente de Billetterie: SOULET Elodie pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5'),
(3, '711392438', '1425337200', 'Vente de Billetterie: TELLANGER Axelle pour la prestation CINEMA GAUMONT 7.40', '', '24'),
(4, '429580409', '1425337200', 'Vente de Billetterie: LASNE Allison pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(6, '586170540', '1422918000', 'Vente de Billetterie: SOULET Elodie pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(7, '521098166', '1420153200', 'Vente de Billetterie: TELLANGER Axelle pour la prestation CAFE TARIF 2014', '', '8.2'),
(8, '634012417', '1425337200', 'Vente de Billetterie: LECLERC Caroline pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(9, '78970061', '1422918000', 'Vente de Billetterie: INCONNU INCONNU pour la prestation CAFE  DOSETTES 2014', '', '7.1'),
(10, '36814564', '1422918000', 'Vente de Billetterie: DELAUNAY Dominique pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(11, '732820235', '1425340800', 'Vente de Billetterie: DELAREUX Isabelle pour la prestation CINEMAS GAUMONT (7.60)', '', '30'),
(12, '262182743', '1422918000', 'Vente de Billetterie: MALINGE Anicette pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(13, '90598307', '1420239600', 'Vente de Billetterie: TAUNAY M Laure pour la prestation CINEMA GAUMONT 7.40', '', '12'),
(14, '764739341', '1422918000', 'Vente de Billetterie: HUIN Sylvie pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(16, '89741929', '1425510000', 'Vente de Billetterie: BONFILS Cecile pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(17, '304431378', '1420153200', 'Vente de Billetterie: TELLANGER Axelle pour la prestation CINEMA GAUMONT 7.40', '', '24'),
(18, '177373128', '1422918000', 'Vente de Billetterie: BOUET Annette pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(19, '814240224', '1420498800', 'Vente de Billetterie: LEBAILLY Emilie pour la prestation CINEMA GAUMONT 7.40', '', '12'),
(20, '133909062', '1425510000', 'Vente de Billetterie: TAUDON Christine pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(21, '21258560', '1422918000', 'Vente de Billetterie: SEHAQUI M Therese pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(22, '920469252', '1420498800', 'Vente de Billetterie: BOUET Annette pour la prestation CINEMA GAUMONT 7.40', '', '36'),
(23, '98835520', '1423090800', 'Vente de Billetterie: CIBRON Christophe pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(24, '567859797', '1425513600', 'Vente de Billetterie: TAUDON Christine pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5'),
(25, '984019512', '1423090800', 'Vente de Billetterie: CIBRON Christophe pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5'),
(26, '310338266', '1423090800', 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation CINEMAS GAUMONT (7.60)', '', '18'),
(28, '680446872', '1423090800', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMAS GAUMONT (7.60)', '', '18'),
(29, '536725861', '1420498800', 'Vente de Billetterie: BOUET Annette pour la prestation PARC FUTUROSCOPE ADULTE', '', '199.8'),
(30, '263969768', '1423090800', 'Vente de Billetterie: SOURISSEAU Aurore pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(31, '914158940', '1420498800', 'Vente de Billetterie: MAUSSION Christine pour la prestation CINEMA GAUMONT 7.40', '', '24'),
(32, '396775758', '1425337200', 'Vente de Billetterie: BERTEAU Patricia pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(33, '782556897', '1420498800', 'Vente de Billetterie: VIVIEN HervÃ© pour la prestation AUSTRALIAN PINK FLOYD SHOW', '', '203.4'),
(34, '320828574', '1420498800', 'Vente de Billetterie: BERTEAU Patricia pour la prestation CINEMA GAUMONT 7.40', '', '24'),
(35, '379710471', '1423090800', 'Vente de Billetterie: BONFILS Cecile pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(36, '622473885', '1423522800', 'Vente de Billetterie: LATONNELLE Anne pour la prestation CINEMAS GAUMONT (7.60)', '', '42'),
(37, '897005826', '1425337200', 'Vente de Billetterie: GERARD Alexandra pour la prestation CINEMAS GAUMONT (7.60)', '', '54'),
(38, '586871020', '1420498800', 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMA GAUMONT 7.40', '', '24'),
(39, '314709070', '1423522800', 'Vente de Billetterie: GUIHO Odette pour la prestation CINEMAS GAUMONT (7.60)', '', '6'),
(40, '772324341', '1425510000', 'Vente de Billetterie: PERDRIAU Carine pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(41, '132015902', '1420498800', 'Vente de Billetterie: DUPAS FranÃ§oise pour la prestation CAFE TARIF 2014', '', '2.05'),
(42, '23572125', '1423522800', 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(43, '426176813', '1425510000', 'Vente de Billetterie: LE GAL Barbara pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(44, '82061111', '1420498800', 'Vente de Billetterie: PETITEAU Sarah pour la prestation CINEMA GAUMONT 7.40', '', '6'),
(45, '980274162', '1425682800', 'Vente de Billetterie: LEGER Sonia pour la prestation CINEMAS GAUMONT (7.60)', '', '30'),
(46, '986236337', '1420585200', 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CINEMA GAUMONT 7.40', '', '6'),
(47, '520745033', '1420585200', 'Vente de Billetterie: TESSIER Florence pour la prestation CINEMA GAUMONT 7.40', '', '6'),
(48, '711028987', '1423522800', 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation PLANETE SAUVAGE ENFANTS', '', '15.75'),
(49, '468611381', '1420585200', 'Vente de Billetterie: LE BORGNE Celine pour la prestation CINEMA GAUMONT 7.40', '', '18'),
(50, '525398385', '1420585200', 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CINEMA GAUMONT 7.40', '', '6'),
(52, '59247466', '1425682800', 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '24.98'),
(53, '87822146', '1423522800', 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation PLANETE SAUVAGE ADULTES', '', '42.3'),
(54, '842180750', '1420585200', 'Vente de Billetterie: CHARREAU Helene pour la prestation CINEMA GAUMONT 7.40', '', '12'),
(55, '28111314', '1425682800', 'Vente de Billetterie: ROYER Catherine pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '57.38'),
(56, '774849541', '1420585200', 'Vente de Billetterie: RIVEREAU Anne Sophie pour la prestation CINEMA GAUMONT 7.40', '', '12'),
(57, '2278650', '1423522800', 'Vente de Billetterie: SEHAQUI M Therese pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PRADEL', '', '97.8'),
(58, '80523815', '1425682800', 'Vente de Billetterie: PITHON Adeline pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '16.65'),
(59, '69765207', '1423522800', 'Vente de Billetterie: INCONNU INCONNU pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PRADEL', '', '35.9'),
(60, '64968425', '1420585200', 'Vente de Billetterie: CHARREAU Helene pour la prestation CAFE 2015', '', '2.15'),
(61, '95092922', '1425682800', 'Vente de Billetterie: LECOMTE Ludivine pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '9.99'),
(62, '49736530', '1423522800', 'Vente de Billetterie: INCONNU INCONNU pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PRADEL', '', '30.95'),
(63, '520907284', '1421103600', 'Vente de Billetterie: MAQUIN CATHERINE pour la prestation CINEMA GAUMONT 7.40', '', '12'),
(64, '59797663', '1425682800', 'Vente de Billetterie: MOREAU Pascale pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '40.64'),
(65, '660000300', '1421103600', 'Vente de Billetterie: GUIHO Odette pour la prestation CINEMAS GAUMONT (7.60)', '', '6'),
(66, '67271536', '1425682800', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '7.13'),
(67, '934538361', '1426114800', 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMAS GAUMONT (7.60)', '', '18'),
(68, '919248339', '1426114800', 'Vente de Billetterie: PRUDHOMME Celine pour la prestation CINEMAS GAUMONT (7.60)', '', '36'),
(71, '45094668', '1425682800', 'Vente de Billetterie: SEGARRA Agnes pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '16.15'),
(72, '187909065', '1426114800', 'Vente de Billetterie: DUPAS FranÃ§oise pour la prestation CAFE 2015', '', '8.6'),
(73, '846137310', '1421103600', 'Vente de Billetterie: BRARD Marie Pierre pour la prestation CINEMAS GAUMONT (7.60)', '', '36'),
(74, '736635752', '1426114800', 'Vente de Billetterie: PRUDHOMME Celine pour la prestation CINEMAS GAUMONT (7.60)', '', '36'),
(76, '592864555', '1426114800', 'Vente de Billetterie: CHATEAU Sandrine pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(77, '97513134', '1423522800', 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PRADEL', '', '30.95'),
(78, '858763655', '1421103600', 'Vente de Billetterie: GAZE CHRISTELLE pour la prestation CINEMAS GAUMONT (7.60)', '', '30'),
(79, '456758080', '1426546800', 'Vente de Billetterie: PETITEAU Sarah pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(80, '918208710', '1426719600', 'Vente de Billetterie: MENDONCA Maria Fernanda pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(81, '193899006', '1423522800', 'Vente de Billetterie: FRANCFORT Catherine pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(82, '3225073', '1425682800', 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '36.82'),
(83, '106783119', '1426719600', 'Vente de Billetterie: LE GAL Barbara pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(84, '328530866', '1421103600', 'Vente de Billetterie: LEGER Sonia pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(85, '794954315', '1423522800', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(86, '756736842', '1426719600', 'Vente de Billetterie: COTTENCEAU Monique pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(87, '974299773', '1423522800', 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMAS GAUMONT (7.60)', '', '30'),
(88, '728697198', '1421103600', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(89, '52964047', '1425682800', 'Vente de Billetterie: LEBAILLY Emilie pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '10.72'),
(90, '166948714', '1426719600', 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CINEMAS GAUMONT (7.60)', '', '60'),
(91, '670624422', '1421103600', 'Vente de Billetterie: CHEIGNON Aurore pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(92, '412765581', '1426719600', 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(93, '45094198', '1426719600', 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CARTE CEZAM AYANT DROIT', '', '5'),
(94, '10338143', '1423609200', 'Vente de Billetterie: LE CALVEZ Jocelyne pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUMS', '', '60'),
(95, '234456713', '1421708400', 'Vente de Billetterie: ROUSSE Maryvonne pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(96, '21042257', '1425682800', 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUMS', '', '49.75'),
(97, '952750137', '1426719600', 'Vente de Billetterie: ROYER Catherine pour la prestation AQUARUIM OCEANOPOLIS ENFANT', '', '31.05'),
(98, '441031498', '1426719600', 'Vente de Billetterie: ROYER Catherine pour la prestation AQUARUIM OCEANOPOLIS ADULTES', '', '48.06'),
(100, '840107266', '1426719600', 'Vente de Billetterie: ROYER Catherine pour la prestation AQUARUIM OCEANOPOLIS ADULTES', '', '48.06'),
(102, '245189370', '1421708400', 'Vente de Billetterie: ROUSSE Maryvonne pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5'),
(104, '896270708', '1427151600', 'Vente de Billetterie: MAQUIN CATHERINE pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(105, '805925611', '1421708400', 'Vente de Billetterie: BINOT Lucie pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(106, '332607015', '1427151600', 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(107, '901511124', '1427151600', 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5'),
(109, '100778571', '1421708400', 'Vente de Billetterie: COCHIN Yvon pour la prestation ALAIN SOUCHON', '', '124.2'),
(110, '929177950', '1427151600', 'Vente de Billetterie: OLIVEAU Jean Rene pour la prestation CINEMAS GAUMONT (7.60)', '', '6'),
(111, '9092121', '1427151600', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CAFE DOSETTE 2015', '', '3.65'),
(112, '397315106', '1421708400', 'Vente de Billetterie: BOULAY Jennifer pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(113, '13943187', '1423609200', 'Vente de Billetterie: CIBRON Christophe pour la prestation CHEQUE DOMICILE (12.20)', '', '244'),
(115, '657218478', '1427324400', 'Vente de Billetterie: BOUET Annette pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(116, '256554503', '1421708400', 'Vente de Billetterie: BOULAY Jennifer pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5'),
(117, '461684695', '1427324400', 'Vente de Billetterie: VIVION Beatrice pour la prestation CINEMAS GAUMONT (7.60)', '', '6'),
(118, '790005487', '1423695600', 'Vente de Billetterie: PRUNAUX-CAZER  pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(119, '741503920', '1427324400', 'Vente de Billetterie: POUTREL Sylvie pour la prestation CINEMAS GAUMONT (7.60)', '', '60'),
(120, '455494885', '1425942000', 'Vente de Billetterie: BAILLY Michelle pour la prestation CINEMAS GAUMONT (7.60)', '', '36'),
(121, '49653084', '1421708400', 'Vente de Billetterie: GUILLOT Claire pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(122, '411822920', '1423695600', 'Vente de Billetterie: MOREAU Sandra pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(123, '760320671', '1427324400', 'Vente de Billetterie: POUTREL Sylvie pour la prestation PARC ASTERIX', '', '162'),
(124, '409700113', '1422313200', 'Vente de Billetterie: BORE Marie Pierre pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(125, '59270059', '1427324400', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES', '', '60.69'),
(126, '348245995', '1423695600', 'Vente de Billetterie: PIEL Guylaine pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(127, '36150232', '1425942000', 'Vente de Billetterie: BAILLY Michelle pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(128, '581244348', '1422313200', 'Vente de Billetterie: BORE Marie Pierre pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5'),
(129, '91200716', '1427324400', 'Vente de Billetterie: COLAISSEAU Christine pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES', '', '50'),
(130, '458198768', '1423695600', 'Vente de Billetterie: ABID/PLANCHENAULT Sylvie pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(131, '786991590', '1427752800', 'Vente de Billetterie: NASRI Marion pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(132, '211762438', '1423695600', 'Vente de Billetterie: MAUSSION Christine pour la prestation CAFE TARIF 2014', '', '2.05'),
(133, '725162714', '1427752800', 'Vente de Billetterie: TAUDON Christine pour la prestation CINEMAS GAUMONT (7.60)', '', '18'),
(134, '686541289', '1423695600', 'Vente de Billetterie: MAUSSION Christine pour la prestation CAFE 2015', '', '4.3'),
(136, '446575505', '1427752800', 'Vente de Billetterie: TAUDON Christine pour la prestation CARTE ATOUT', '', '21.6'),
(137, '599233336', '1423695600', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CAFE  DOSETTES 2014', '', '7.1'),
(138, '735129293', '1427752800', 'Vente de Billetterie: LE CALVEZ Jocelyne pour la prestation CARTE ATOUT', '', '21.6'),
(139, '947224441', '1425942000', 'Vente de Billetterie: BAILLY Michelle pour la prestation CARTE CEZAM AYANT DROIT', '', '5'),
(140, '23679327', '1424127600', 'Vente de Billetterie: RUBIO G.MICHEL pour la prestation CINEMAS GAUMONT (7.60)', '', '36'),
(141, '574583050', '1427752800', 'Vente de Billetterie: COCHIN Yvon pour la prestation Concert Francis Cabrel 56.00 (dacc49) categorie 1', '', '50.4'),
(142, '249461763', '1427752800', 'Vente de Billetterie: COCHIN Yvon pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(143, '89850899', '1424127600', 'Vente de Billetterie: RUBIO G.MICHEL pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE  (9.91)', '', '198.2'),
(144, '491320884', '1422313200', 'Vente de Billetterie: CHARRIER Elena pour la prestation CARTE CEZAM AYANT DROIT', '', '2.5'),
(146, '165891631', '1424127600', 'Vente de Billetterie: CHAILLOU Sandra pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE  (9.91)', '', '198.2'),
(147, '252875044', '1422313200', 'Vente de Billetterie: CHARRIER Elena pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(148, '794703286', '1422486000', 'Vente de Billetterie: LATONNELLE Anne pour la prestation CINEMAS GAUMONT (7.60)', '', '18'),
(149, '169752312', '1425942000', 'Vente de Billetterie: TESSIER Florence pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(150, '733424058', '1424127600', 'Vente de Billetterie: YVON ANAELLE pour la prestation CINEMAS GAUMONT (7.60)', '', '30'),
(151, '39549093', '1424127600', 'Vente de Billetterie: LEBAILLY Emilie pour la prestation CINEMAS GAUMONT (7.60)', '', '36'),
(152, '661249428', '1426114800', 'Vente de Billetterie: TELLANGER Axelle pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(153, '53576951', '1424127600', 'Vente de Billetterie: GAUDELET Maryline pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(154, '790880482', '1424127600', 'Vente de Billetterie: GUIHO Odette pour la prestation CARTE CEZAM OUVRANT DROIT', '', '5'),
(155, '610005995', '1426114800', 'Vente de Billetterie: TELLANGER Axelle pour la prestation CAFE 2015', '', '12.9'),
(156, '890451606', '1424127600', 'Vente de Billetterie: ROUSSE Maryvonne pour la prestation CINEMAS GAUMONT (7.60)', '', '6'),
(157, '683524388', '1424127600', 'Vente de Billetterie: DENECHERE Pascale pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(158, '898158255', '1422486000', 'Vente de Billetterie: DENECHERE Pascale pour la prestation CINEMAS GAUMONT (7.60)', '', '6'),
(159, '600441429', '1424127600', 'Vente de Billetterie: LE CALVEZ Jocelyne pour la prestation CINEMAS GAUMONT (7.60)', '', '30'),
(160, '183363103', '1426114800', 'Vente de Billetterie: COCHIN Yvon pour la prestation Cin&eacute;ma Gaumont', '', '12'),
(161, '45953082', '1422313200', 'Vente de Billetterie: OLIVEIRA Cecile pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUMS', '', '49.75'),
(162, '626332227', '1422486000', 'Vente de Billetterie: CHEIGNON Aurore pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(163, '91261461', '1426114800', 'Vente de Billetterie: DENECHERE Pascale pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - CHOCOLAT', '', '22.8'),
(164, '32831752', '1424300400', 'Vente de Billetterie: GAZE CHRISTELLE pour la prestation CINEMAS GAUMONT (7.60)', '', '30'),
(165, '11674217', '1424300400', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMAS GAUMONT (7.60)', '', '66'),
(166, '145331429', '1422486000', 'Vente de Billetterie: CHEIGNON Aurore pour la prestation PARC FUTUROSCOPE ADULTE', '', '33.3'),
(167, '451874119', '1422486000', 'Vente de Billetterie: PERDRIAU Carine pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(168, '168612447', '1422486000', 'Vente de Billetterie: TESSIE Francoise pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(169, '802973924', '1424300400', 'Vente de Billetterie: DIJOLS Christine pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(170, '952834606', '1422486000', 'Vente de Billetterie: SEHAQUI M Therese pour la prestation CINEMAS GAUMONT (7.60)', '', '84'),
(172, '2235347', '1424905200', 'Vente de Billetterie: Personnel rattach&eacute;  pour la prestation CAFE 2015 - CAFE', '', '2.15'),
(173, '942918206', '1422486000', 'Vente de Billetterie: BOUTREUX Anne Sophie pour la prestation CINEMAS GAUMONT (7.60)', '', '18'),
(174, '475939052', '1424300400', 'Vente de Billetterie: HENNE Teresa pour la prestation ALAIN SOUCHON', '', '124.2'),
(175, '331137110', '1422486000', 'Vente de Billetterie: BOUTREUX Anne Sophie pour la prestation CINEMA 400 COUPS', '', '35.12'),
(176, '519262560', '1424732400', 'Vente de Billetterie: SOULET Elodie pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(177, '97794352', '1422486000', 'Vente de Billetterie: BONFILS Cecile pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(178, '396062823', '1422486000', 'Vente de Billetterie: GERARD Alexandra pour la prestation CINEMAS GAUMONT (7.60)', '', '42'),
(179, '471144472', '1424732400', 'Vente de Billetterie: SOULET Elodie pour la prestation PARC BADABOUM CIRCUS ENFANTS PLUS DE 2 ANS', '', '10.8'),
(181, '470797546', '1424732400', 'Vente de Billetterie: BOULAY Jennifer pour la prestation DISNEY RESORT PARIS  1 JOUR 2 PARCS ADULTES', '', '120.6'),
(182, '91924048', '1425682800', 'Vente de Billetterie: COLAISSEAU Christine pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '30.5'),
(183, '639583575', '1422054000', 'Vente de Billetterie: CIBRON Christophe pour la prestation CHEQUE DOMICILE FAMILLE IMPOSABLE  (9.91)', '', '198.2'),
(184, '73632731', '1424732400', 'Vente de Billetterie: THEULIER Laure pour la prestation FRANCIS CABREL (39.00)', '', '70.2'),
(185, '29694521', '1425682800', 'Vente de Billetterie: COLAISSEAU Christine pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUMS', '', '56'),
(186, '924948412', '1424905200', 'Vente de Billetterie: SEGARRA Agnes pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(188, '606358174', '1424905200', 'Vente de Billetterie: MOREAU Pascale pour la prestation CINEMAS GAUMONT (7.60)', '', '30'),
(190, '30061780', '1424905200', 'Vente de Billetterie: PICHERIT Valerie pour la prestation CINEMAS GAUMONT (7.60)', '', '36'),
(191, '443161432', '1425942000', 'Vente de Billetterie: THEULIER Laure pour la prestation CINEMAS GAUMONT (7.60)', '', '30'),
(194, '642240506', '1422486000', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CINEMAS GAUMONT (7.60)', '', '18'),
(195, '244455020', '1424905200', 'Vente de Billetterie: ABID/PLANCHENAULT Sylvie pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(196, '43770008', '1424905200', 'Vente de Billetterie: COLAISSEAU Christine pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(197, '671865601', '1422486000', 'Vente de Billetterie: BERTEAU Patricia pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(198, '243503539', '1422486000', 'Vente de Billetterie: PASCUITO Isabelle pour la prestation CINEMAS GAUMONT (7.60)', '', '60'),
(199, '320531802', '1422486000', 'Vente de Billetterie: CHARRIER Elena pour la prestation CINEMAS GAUMONT (7.60)', '', '12'),
(202, '724084581', '1422486000', 'Vente de Billetterie: TREMBLAIS Catherine pour la prestation CAFE TARIF 2014', '', '4.1'),
(203, '374596806', '1422486000', 'Vente de Billetterie: TAUNAY M Laure pour la prestation CINEMAS GAUMONT (7.60)', '', '30'),
(204, '768180482', '1424300400', 'Vente de Billetterie: DENECHERE Pascale pour la prestation CINEMAS GAUMONT (7.60)', '', '18'),
(205, '435688722', '1424300400', 'Vente de Billetterie: CHEVREUX Melanie pour la prestation CINEMAS GAUMONT (7.60)', '', '36'),
(206, '88791843', '1422486000', 'Vente de Billetterie: GERARD Alexandra pour la prestation RECETTE ANNEES PRECEDENTES - DU ANNEE 2014 CE 0008342', '', '4'),
(207, '39043086', '1422313200', 'Vente de Billetterie: HENNE Teresa pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - Parfum', '', '86.85'),
(208, '50345990', '1422486000', 'Vente de Billetterie: CARRE Audrey pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUM', '', '92'),
(209, '35562441', '1422313200', 'Vente de Billetterie: RIVEREAU Anne Sophie pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUM', '', '65'),
(210, '91277023', '1422313200', 'Vente de Billetterie: MONNIER Sarah pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUM', '', '65'),
(211, '63336173', '1422313200', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - PARFUM', '', '16.24'),
(213, '400218481', '1422313200', 'Vente de Billetterie: BEAUMONT Bernadette pour la prestation CINEMAS GAUMONT (7.60)', '', '24'),
(214, '812514773', '1420585200', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT 7.40', '', '18'),
(215, '27931207', '1420585200', 'Vente de Billetterie: LE JEAN GaÃ«l pour la prestation CINEMA GAUMONT 7.40', '', '36'),
(216, '666825132', '1423090800', 'Vente de Billetterie: GASTINEAU Isabelle pour la prestation CINEMA GAUMONT 7.40', '', '18'),
(217, '161061755', '1423695600', 'Vente de Billetterie: GILBERT Lucie pour la prestation CINEMAS GAUMONT (7.60)', '', '36'),
(219, '10954941', '1425682800', 'Vente de Billetterie: SEGARRA Agnes pour la prestation COMMANDE DE PRODUITS PAR LES SALARIES - RIVADIS', '', '16.15');

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
(69, 'CINEMA'),
(70, 'CONSOMMABLES'),
(71, 'BILLETTERIE'),
(72, 'AIDE'),
(73, 'FAMILLE'),
(74, 'ACHATS POUR REVENTE'),
(75, 'FOURNISSEURS EXTERIEURS AU COMITE'),
(76, 'SOLDES DUS ANNEES PRECEDENTES'),
(77, 'EVENEMENTS FAMILIAUX');

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
(1, 2, 113, '1', '2.5', '3.5', 0, ''),
(2, 5, 113, '1', '2.5', '3.5', 0, ''),
(4, 8, 117, '4', '24', '6.4', 0, ''),
(6, 13, 111, '1', '5', '7', 0, ''),
(7, 9, 94, '4', '8.2', '0', 0, ''),
(8, 14, 117, '2', '12', '3.2', 0, ''),
(9, 16, 95, '2', '7.1', '0', 0, ''),
(10, 19, 111, '1', '5', '7', 0, ''),
(11, 20, 117, '5', '30', '8', 0, ''),
(12, 21, 111, '1', '5', '7', 0, ''),
(13, 22, 93, '2', '12', '2.8', 0, ''),
(14, 23, 111, '1', '5', '7', 0, ''),
(16, 25, 117, '2', '12', '3.2', 0, ''),
(17, 26, 93, '4', '24', '5.6', 0, ''),
(18, 27, 111, '1', '5', '7', 0, ''),
(19, 28, 93, '2', '12', '2.8', 0, ''),
(20, 29, 111, '1', '5', '7', 0, ''),
(21, 30, 111, '1', '5', '7', 0, ''),
(22, 31, 93, '6', '36', '8.4', 0, ''),
(23, 32, 111, '1', '5', '7', 0, ''),
(24, 33, 113, '1', '2.5', '3.5', 0, ''),
(25, 34, 113, '1', '2.5', '3.5', 0, ''),
(26, 36, 117, '3', '18', '4.8', 0, ''),
(28, 38, 117, '3', '18', '4.8', 0, ''),
(29, 35, 142, '6', '199.8', '22.2', 0, ''),
(30, 39, 117, '4', '24', '6.4', 0, ''),
(31, 41, 93, '4', '24', '5.6', 0, ''),
(32, 42, 117, '4', '24', '6.4', 0, ''),
(33, 43, 99, '4', '203.4', '22.6', 0, ''),
(34, 44, 93, '4', '24', '5.6', 0, ''),
(35, 45, 117, '4', '24', '6.4', 0, ''),
(36, 46, 117, '7', '42', '11.2', 0, ''),
(37, 47, 117, '9', '54', '14.4', 0, ''),
(38, 49, 93, '4', '24', '5.6', 0, ''),
(39, 50, 117, '1', '6', '1.6', 0, ''),
(40, 51, 117, '2', '12', '3.2', 0, ''),
(41, 52, 94, '1', '2.05', '0', 0, ''),
(42, 53, 117, '4', '24', '6.4', 0, ''),
(43, 54, 117, '2', '12', '3.2', 0, ''),
(44, 55, 93, '1', '6', '1.4', 0, ''),
(45, 56, 117, '5', '30', '8', 0, ''),
(46, 57, 93, '1', '6', '1.4', 0, ''),
(47, 59, 93, '1', '6', '1.4', 0, ''),
(48, 58, 106, '1', '15.75', '1.75', 0, ''),
(49, 61, 93, '3', '18', '4.2', 0, ''),
(50, 62, 93, '1', '6', '1.4', 0, ''),
(52, 64, 190, '24.98', '24.98', '0', 0, 'RIVADIS'),
(53, 65, 105, '2', '42.3', '4.7', 0, ''),
(54, 66, 93, '2', '12', '2.8', 0, ''),
(55, 67, 190, '57.38', '57.38', '0', 0, 'RIVADIS'),
(56, 69, 93, '2', '12', '2.8', 0, ''),
(57, 68, 190, '97.80', '97.8', '0', 0, 'PRADEL'),
(58, 70, 190, '16.65', '16.65', '0', 0, 'RIVADIS'),
(59, 71, 190, '35.90', '35.9', '0', 0, 'PRADEL'),
(60, 72, 103, '1', '2.15', '0', 0, ''),
(61, 73, 190, '9.99', '9.99', '0', 0, 'RIVADIS'),
(62, 74, 190, '30.95', '30.95', '0', 0, 'PRADEL'),
(63, 76, 93, '2', '12', '2.8', 0, ''),
(64, 77, 190, '40.64', '40.64', '0', 0, 'RIVADIS'),
(65, 78, 117, '1', '6', '1.6', 0, ''),
(66, 79, 190, '7.13', '7.13', '0', 0, 'RIVADIS'),
(67, 80, 117, '3', '18', '4.8', 0, ''),
(71, 82, 190, '16.15', '16.15', '0', 0, 'RIVADIS'),
(72, 84, 103, '4', '8.6', '0', 0, ''),
(73, 83, 117, '6', '36', '9.6', 0, ''),
(74, 81, 117, '6', '36', '9.6', 0, ''),
(76, 86, 111, '1', '5', '7', 0, ''),
(77, 87, 190, '30.95', '30.95', '0', 0, 'PRADEL'),
(78, 88, 117, '5', '30', '8', 0, ''),
(79, 90, 117, '4', '24', '6.4', 0, ''),
(80, 92, 117, '2', '12', '3.2', 0, ''),
(81, 91, 117, '4', '24', '6.4', 0, ''),
(82, 89, 190, '36.82', '36.82', '0', 0, 'RIVADIS'),
(83, 94, 117, '2', '12', '3.2', 0, ''),
(84, 93, 117, '4', '24', '6.4', 0, ''),
(85, 95, 117, '2', '12', '3.2', 0, ''),
(86, 96, 117, '4', '24', '6.4', 0, ''),
(87, 98, 117, '5', '30', '8', 0, ''),
(88, 100, 117, '2', '12', '3.2', 0, ''),
(89, 99, 190, '10.72', '10.72', '0', 0, 'RIVADIS'),
(90, 101, 117, '10', '60', '16', 0, ''),
(91, 102, 117, '2', '12', '3.2', 0, ''),
(92, 105, 111, '1', '5', '7', 0, ''),
(93, 108, 113, '2', '5', '7', 0, ''),
(94, 109, 190, '60.00', '60', '0', 0, 'PARFUMS'),
(95, 107, 111, '1', '5', '7', 0, ''),
(96, 110, 190, '49.75', '49.75', '0', 0, 'PARFUMS'),
(97, 111, 119, '3', '31.05', '3.45', 0, ''),
(100, 113, 120, '3', '48.06', '5.34', 0, ''),
(102, 114, 113, '1', '2.5', '3.5', 0, ''),
(104, 115, 117, '2', '12', '3.2', 0, ''),
(105, 116, 117, '2', '12', '3.2', 0, ''),
(106, 117, 111, '1', '5', '7', 0, ''),
(107, 119, 113, '1', '2.5', '3.5', 0, ''),
(109, 120, 100, '2', '124.2', '13.8', 0, ''),
(110, 121, 117, '1', '6', '1.6', 0, ''),
(111, 122, 118, '1', '3.65', '0', 0, ''),
(112, 123, 111, '1', '5', '7', 0, ''),
(113, 124, 156, '20', '244', '0', 0, ''),
(115, 126, 117, '2', '12', '3.2', 0, ''),
(116, 127, 113, '1', '2.5', '3.5', 0, ''),
(117, 128, 117, '1', '6', '1.6', 0, ''),
(118, 129, 117, '4', '24', '6.4', 0, ''),
(119, 130, 117, '10', '60', '16', 0, ''),
(120, 131, 117, '6', '36', '9.6', 0, ''),
(121, 132, 117, '2', '12', '3.2', 0, ''),
(122, 133, 117, '4', '24', '6.4', 0, ''),
(123, 134, 116, '5', '162', '18', 0, ''),
(124, 135, 111, '1', '5', '7', 0, ''),
(125, 137, 190, '60.69', '60.69', '0', 0, ''),
(126, 136, 117, '4', '24', '6.4', 0, ''),
(127, 138, 111, '1', '5', '7', 0, ''),
(128, 139, 113, '1', '2.5', '3.5', 0, ''),
(129, 140, 190, '50', '50', '0', 0, ''),
(130, 141, 117, '4', '24', '6.4', 0, ''),
(131, 142, 117, '2', '12', '3.2', 0, ''),
(132, 143, 94, '1', '2.05', '0', 0, ''),
(133, 145, 117, '3', '18', '4.8', 0, ''),
(134, 146, 103, '2', '4.3', '0', 0, ''),
(135, 147, 96, '1', '21.6', '2.8', 0, ''),
(136, 148, 95, '2', '7.1', '0', 0, ''),
(137, 149, 96, '1', '21.6', '2.8', 0, ''),
(138, 151, 113, '2', '5', '7', 0, ''),
(139, 150, 117, '6', '36', '9.6', 0, ''),
(140, 152, 182, '1', '50.4', '5.6', 0, ''),
(141, 155, 117, '2', '12', '3.2', 0, ''),
(142, 153, 109, '20', '198.2', '45.8', 0, ''),
(143, 144, 113, '1', '2.5', '3.5', 0, ''),
(145, 156, 109, '20', '198.2', '45.8', 0, ''),
(146, 157, 111, '1', '5', '7', 0, ''),
(147, 159, 117, '3', '18', '4.8', 0, ''),
(148, 158, 117, '4', '24', '6.4', 0, ''),
(149, 160, 117, '5', '30', '8', 0, ''),
(150, 161, 117, '6', '36', '9.6', 0, ''),
(151, 162, 117, '2', '12', '3.2', 0, ''),
(152, 163, 117, '2', '12', '3.2', 0, ''),
(153, 164, 111, '1', '5', '7', 0, ''),
(154, 165, 103, '6', '12.9', '0', 0, ''),
(155, 166, 117, '1', '6', '1.6', 0, ''),
(156, 167, 117, '2', '12', '3.2', 0, ''),
(157, 168, 117, '1', '6', '1.6', 0, ''),
(158, 170, 117, '5', '30', '8', 0, ''),
(159, 169, 189, '2', '12', '3.2', 0, ''),
(160, 171, 190, '49.75', '49.75', '0', 0, 'PARFUMS'),
(161, 172, 117, '2', '12', '3.2', 0, ''),
(162, 173, 190, '22.80', '22.8', '0', 0, 'CHOCOLAT'),
(163, 174, 117, '5', '30', '8', 0, ''),
(164, 175, 117, '11', '66', '17.6', 0, ''),
(165, 176, 142, '1', '33.3', '3.7', 0, ''),
(166, 177, 117, '2', '12', '3.2', 0, ''),
(167, 178, 117, '2', '12', '3.2', 0, ''),
(168, 179, 117, '2', '12', '3.2', 0, ''),
(169, 180, 117, '14', '84', '22.4', 0, ''),
(171, 182, 103, '1', '2.15', '', 0, 'CAFE'),
(172, 183, 117, '3', '18', '4.8', 0, ''),
(173, 184, 100, '2', '124.2', '13.8', 0, ''),
(174, 185, 102, '8', '35.12', '4.48', 0, ''),
(175, 186, 117, '2', '12', '3.2', 0, ''),
(176, 187, 117, '4', '24', '6.4', 0, ''),
(177, 189, 117, '7', '42', '11.2', 0, ''),
(178, 188, 107, '2', '10.8', '1.2', 0, ''),
(180, 191, 108, '2', '120.6', '13.4', 0, ''),
(181, 192, 190, '30.50', '30.5', '0', 0, 'RIVADIS'),
(182, 193, 109, '20', '198.2', '45.8', 0, ''),
(183, 194, 131, '2', '70.2', '7.8', 0, ''),
(184, 195, 190, '56.00', '56', '0', 0, 'PARFUMS'),
(185, 196, 117, '4', '24', '6.4', 0, ''),
(186, 197, 117, '5', '30', '8', 0, ''),
(188, 198, 117, '6', '36', '9.6', 0, ''),
(189, 199, 117, '5', '30', '8', 0, ''),
(192, 190, 117, '3', '18', '4.8', 0, ''),
(193, 201, 117, '4', '24', '6.4', 0, ''),
(194, 202, 117, '4', '24', '6.4', 0, ''),
(195, 203, 117, '4', '24', '6.4', 0, ''),
(196, 204, 117, '10', '60', '16', 0, ''),
(197, 205, 117, '2', '12', '3.2', 0, ''),
(200, 206, 94, '2', '4.1', '0', 0, ''),
(201, 207, 117, '5', '30', '8', 0, ''),
(202, 208, 117, '3', '18', '4.8', 0, ''),
(203, 210, 117, '6', '36', '9.6', 0, ''),
(204, 209, 191, '4', '4', '0', 0, 'DU ANNEE 2014 CE 0008342'),
(205, 211, 190, '86.85', '86.85', '0', 0, 'Parfum'),
(206, 212, 190, '92.00', '92', '0', 0, 'PARFUM'),
(207, 213, 190, '65.00', '65', '0', 0, 'PARFUM'),
(208, 214, 190, '65.00', '65', '0', 0, 'PARFUM'),
(209, 215, 190, '16.24', '16.24', '0', 0, 'PARFUM'),
(211, 216, 117, '4', '24', '6.4', 0, ''),
(212, 217, 93, '3', '18', '4.2', 0, ''),
(213, 218, 93, '6', '36', '8.4', 0, ''),
(214, 219, 93, '3', '18', '4.2', 0, ''),
(215, 220, 117, '6', '36', '9.6', 0, ''),
(217, 221, 190, '16.15', '16.15', '0', 0, 'RIVADIS');

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
(5, '1.9.0', '191015-EVO');

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
(2, 'rosette', '7f1a65908b05238c21c134c764c89e28', 1),
(3, 'coco', '6c97cd07663b099253bc569fe8d342bb', 1),
(4, 'c.cibron', 'd934bfbb36d2db1f1c2dc6653108a069', 1),
(5, 'E.doneau', 'e994128b9609135e3fc9c884440e54d2', 1),
(6, 'jocal', 'fc528592c3858f90196fbfacc814f235', 1),
(7, 'florence', '787cd66982225fdf25bed759f7a6ec51', 1);

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
  `hors_quota` int(1) NOT NULL,
  `commentaire` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`, `commentaire`) VALUES
(93, 69, 'CINEMA GAUMONT 7.40', '01-01-2015', '31-05-2015', '6.00', '1.40', '7.4', '100', '949', 0, ''),
(94, 70, 'CAFE TARIF 2014', '01-01-2015', '31-12-2015', '2.05', '0.00', '2.05', '100', '988', 0, ''),
(95, 70, 'CAFE  DOSETTES 2014', '01-01-2015', '31-12-2015', '3.55', '0.00', '3.55', '100', '996', 0, ''),
(96, 71, 'CARTE ATOUT', '01-01-2015', '31-12-2015', '21.60', '2.80', '24.4', '100', '998', 0, ''),
(97, 71, 'BIOPARC ENFANT', '01-01-2015', '31-12-2015', '10', '4.5', '14.5', '100', '1000', 0, ''),
(98, 71, 'CELTIC LEGENDS', '01-01-2015', '07-03-2015', '33.30', '3.70', '37', '100', '1000', 0, ''),
(99, 71, 'AUSTRALIAN PINK FLOYD SHOW', '01-01-2015', '30-06-2015', '50.85', '5.65', '56.5', '100', '996', 0, ''),
(100, 71, 'ALAIN SOUCHON', '01-01-2015', '31-12-2015', '62.10', '6.90', '69', '100', '996', 0, ''),
(101, 71, 'SHYM', '01-01-2015', '31-12-2015', '33.30', '3.70', '37', '100', '1000', 0, ''),
(102, 69, 'CINEMA 400 COUPS', '01-01-2015', '31-05-2015', '4.39', '0.56', '4.95', '100', '992', 0, ''),
(103, 70, 'CAFE 2015', '01-01-2015', '31-12-2015', '2.15', '0.00', '2.15', '100', '986', 0, ''),
(104, 71, 'BLACK M', '01-01-2015', '31-12-2015', '35.10', '3.90', '39', '100', '1000', 0, ''),
(105, 71, 'PLANETE SAUVAGE ADULTES', '01-01-2015', '31-12-2015', '21.15', '2.35', '23.5', '100', '998', 0, ''),
(106, 71, 'PLANETE SAUVAGE ENFANTS', '01-01-2015', '31-12-2015', '15.75', '1.75', '17.5', '100', '999', 0, ''),
(107, 71, 'PARC BADABOUM CIRCUS ENFANTS PLUS DE 2 ANS', '01-01-2015', '31-12-2015', '5.40', '0.60', '6', '100', '998', 0, ''),
(108, 71, 'DISNEY RESORT PARIS  1 JOUR 2 PARCS ADULTES', '01-01-2015', '31-12-2015', '60.30', '6.70', '67', '100', '998', 0, ''),
(109, 72, 'CHEQUE DOMICILE FAMILLE IMPOSABLE  (9.91)', '01-01-2015', '31-12-2015', '9.91', '2.29', '12.2', '20', '940', 0, ''),
(111, 71, 'CARTE CEZAM OUVRANT DROIT', '01-01-2015', '31-12-2015', '5.00', '7.00', '12', '100', '983', 0, ''),
(113, 73, 'CARTE CEZAM AYANT DROIT', '01-01-2015', '31-12-2015', '2.50', '3.50', '6', '100', '987', 0, ''),
(114, 74, 'PRADEL', '01-01-2015', '31-12-2015', '10', '0', '10', '10000', '1000', 0, ''),
(115, 74, 'RIVADIS', '01-01-2015', '31-12-2015', '10', '0', '10', '100000', '1000', 0, ''),
(116, 71, 'PARC ASTERIX', '01-01-2015', '31-12-2015', '32.40', '3.60', '36', '5', '995', 0, ''),
(117, 69, 'CINEMAS GAUMONT (7.60)', '31-01-2015', '31-05-2015', '6â‚¬', '1.60', '7.6', '25', '660', 0, ''),
(118, 70, 'CAFE DOSETTE 2015', '10-03-2015', '', '3.65', '0', '3.65', '100', '999', 0, ''),
(119, 71, 'AQUARUIM OCEANOPOLIS ENFANT', '01-01-2015', '01-12-2015', '10.35', '1.15', '11.5', '100', '997', 0, ''),
(120, 71, 'AQUARUIM OCEANOPOLIS ADULTES', '01-01-2015', '01-12-2015', '16.02', '1.78', '17.8', '100', '994', 0, ''),
(121, 70, 'CHOCOLAT ORDISCOM', '01-01-2015', '01-12-2015', '2.280', '0', '2.28', '100', '1000', 0, ''),
(122, 71, 'FRANCIS CABREL (56.00)', '01-01-2015', '01-12-2015', '50.40', '5.60', '56', '100', '1000', 0, ''),
(123, 71, 'ZOO DE BEAUVAL ADULTE', '01-01-2015', '01-12-2015', '20.70', '2.30', '23', '100', '1000', 0, ''),
(124, 71, 'ALAIN SOUCHON ET LAURENT VOULZY', '01-01-2015', '01-12-2015', '45', '5', '50', '100', '1000', 0, ''),
(125, 71, 'BIOPARC ADULTE', '03-04-2015', '01-12-2015', '14.67', '1.63', '16.3', '100', '1000', 0, ''),
(126, 71, 'BOWLING SILVER BOWL', '01-01-2015', '01-12-2015', '8.01', '0.89', '8.9', '100', '1000', 0, ''),
(127, 71, 'BOWLING LE COLISEE', '01-01-2015', '31-12-2015', '7.65', '0.85', '8.5', '100', '1000', 0, ''),
(128, 71, 'TERRA BOTANICA ADULTE', '01-04-2015', '31-12-2015', '12.69', '1.41', '14.1', '100', '1000', 0, ''),
(129, 71, 'TERRA BOTANICA ENFANT', '01-04-2015', '31-12-2015', '9.18', '1.02', '10.2', '100', '1000', 0, ''),
(130, 71, '400 COUPS 5&euro;  (04-2015)', '01-04-2015', '31-12-2015', '4.50', '0.50', '5', '100', '1000', 0, ''),
(131, 71, 'FRANCIS CABREL (39.00)', '01-04-2015', '31-12-2015', '35.10', '3.90', '39', '100', '998', 0, ''),
(132, 71, 'BODIN''S CATEGORIE 1 ADULTE (27-11-2015)', '01-04-2015', '31-12-2015', '35.10', '3.90', '39', '100', '1000', 0, ''),
(133, 71, 'BODIN''S CATEGORIE 1 ENFANT -12 ANS (27-11-2015)', '16-04-2015', '30-12-2015', '27', '3.00', '30', '100', '1000', 0, ''),
(134, 71, 'ZOO DE LA FLECHE ADULTE', '01-04-2015', '31-12-2015', '16.20', '1.80', '18', '100', '1000', 0, ''),
(135, 71, 'ZOO DE LA FLECHE ENFANT', '01-04-2015', '31-12-2015', '13.05', '1.45', '14.5', '100', '1000', 0, ''),
(136, 71, '24 HEURES DU MANS AUTOS (SEMAINE DU 7 AU 14--2015 + JOURNEE TEST 31-05-2015', '01-04-2015', '31-12-2015', '54.00', '6.00', '60', '100', '1000', 0, ''),
(137, 71, 'BIOPARC ENFANT  2014', '01-07-2014', '30-12-2015', '10', '1', '11', '1', '1000', 0, ''),
(138, 71, 'BIOPARC PROMO', '01-03-2015', '31-05-2015', '14.40', '1.90', '16.3', '2', '1000', 0, ''),
(139, 71, 'PARC DISNEYLAND ADULTE 1 JOUR 1 PARC', '01-03-2015', '31-12-2015', '48.60', '5.40', '54', '100', '1000', 0, ''),
(140, 71, ' GRAND PARC PUY DU FOU ENFANT', '01-02-2015', '31-12-2015', '16.56', '1.84', '18.4', '100', '1000', 0, ''),
(141, 71, 'GRAND PARC PUY DU FOU ADULTE', '01-03-2015', '31-12-2015', '24.84', '2.76', '27.6', '100', '1000', 0, ''),
(142, 71, 'PARC FUTUROSCOPE ADULTE', '01-03-2015', '31-12-2015', '33.30', '3.70', '37', '100', '993', 0, ''),
(143, 71, 'PARC FUTUROSCOPE ENFANTS (5-16 ANS)', '01-03-2015', '31-12-2015', '27.90', '3.10', '31', '100', '1000', 0, ''),
(144, 71, 'MESSMER', '01-02-2015', '04-04-2016', '52.20', '5.80', '58', '100', '1000', 0, ''),
(145, 71, 'CIRQUE', '30-04-2015', '30-05-2015', '12', '0', '12', '10', '1000', 0, ''),
(146, 71, 'BODIN''S CATEGORIE 1 TARIF NORMAL', '01-04-2015', '31-12-2015', '38.7', '4.30', '43', '100', '1000', 0, ''),
(147, 71, 'BODIN''S CATEGORIE 2 ', '20-05-2015', '31-12-2015', '31.50', '3.50', '35', '100', '1000', 0, ''),
(148, 70, 'MADELEINE BIJOU', '01-06-2015', '31-12-2015', '10', '0', '10', '100', '1000', 0, ''),
(149, 71, 'PARC PAPEA', '01-04-2015', '31-12-2015', '9.90', '1.10', '11', '100', '1000', 0, ''),
(150, 71, 'MARY POPPINS', '01-04-2015', '31-12-2015', '28.80', '3.20', '32', '100', '1000', 0, ''),
(151, 71, 'BIOPARC ADULTE HORS SALARIE', '01-01-2015', '30-01-2016', '16.30', '0', '16.3', '100', '1000', 0, ''),
(152, 71, 'PUY DU OU CINESCENIE ADULTE', '01-06-2015', '30-12-2015', '22.23', '2.47', '24.7', '100', '1000', 0, ''),
(153, 71, 'PARC DU DOMAINE DE L''ETANG', '01-06-2015', '31-12-2015', '6.255', '0.695', '6.95', '100', '1000', 0, ''),
(154, 71, 'PARC DISNEYLAND ENFANT (3-11) 1 JOUR 1 PARC (SANS PARTICIPATION)', '01-06-2015', '31-01-2016', '48.00', '0', '48', '100', '1000', 0, ''),
(155, 71, 'PARC DISNEYLAND ADULTE 1 JOUR 1 PARC (SANS PARTICIPATION)', '01-06-2015', '31-01-2016', '55.00', '0', '55', '100', '1000', 0, ''),
(156, 72, 'CHEQUE DOMICILE (12.20)', '01-06-2015', '31-12-2015', '12.20', '0', '12.2', '100', '980', 0, ''),
(157, 74, 'PARFUM', '01-01-2015', '31-07-2015', '10', '0', '10', '100', '1000', 0, ''),
(158, 70, 'CONFISERIE', '01-01-2015', '31-12-2015', '10', '0', '10', '100', '1000', 0, ''),
(159, 71, 'KARTING INWALL KART', '16-12-2014', '31-01-2016', '12.15', '1.35', '13.5', '100', '1000', 0, ''),
(160, 71, 'HOLIDAY ON ICE 2015', '01-12-2014', '31-12-2015', '45.00', '5.00', '50', '100', '1000', 0, ''),
(161, 74, 'BIJOUX SRD', '01-12-2014', '31-12-2015', '10', '0', '10', '100', '1000', 0, ''),
(162, 71, 'OCEARUIM DU CROISIC ADULTE', '01-06-2015', '31-01-2016', '9.45', '1.05', '10.5', '100', '1000', 0, ''),
(163, 71, 'AMAURY VASSILI', '01-07-2015', '14-11-2015', '35.10', '3.90', '39', '100', '1000', 0, ''),
(164, 71, 'GALA DE LA GARDE REPUBLICAINE', '02-07-2015', '14-10-2015', '44.10', '4.90', '49', '100', '1000', 0, ''),
(165, 71, 'PARC MAULEVRIER JOUR', '01-07-2015', '01-06-2016', '5.40', '0.60', '6', '100', '1000', 0, ''),
(166, 71, 'LOUANE', '01-07-2015', '08-04-2016', '40.50', '4.50', '45', '100', '1000', 0, ''),
(167, 71, 'FAMILY PARK ENTRE 1 JOUR', '01-07-2015', '01-01-2016', '8.91', '0.99', '9.9', '100', '1000', 0, ''),
(168, 71, 'BIOPARC ENFANT 2015', '01-07-2015', '31-01-2016', '10.80', '1.20', '12', '100', '1000', 0, ''),
(169, 71, 'STADE DE FRANCE (FRANCE/PAYS DE GALLES)', '01-12-2014', '01-07-2015', '36.00', '4.00', '40', '10', '1000', 0, ''),
(170, 71, 'BHARATI CONCERT', '01-12-2014', '01-07-2015', '44.10', '', '44.1', '2', '1000', 0, ''),
(171, 71, 'Carte a''tout pluriel 20 unit&eacute;s 21.96', '01-08-2015', '01-08-2016', '21.96', '2.44', '24.4', '10', '1000', 0, ''),
(172, 71, 'Parc Vulcania adulte', '01-08-2015', '01-03-2016', '20.25', '2.25', '22.5', '100', '1000', 0, ''),
(173, 71, 'ANGERS SCO/FC NANTES', '01-08-2015', '', '15.03', '1.67', '16.7', '10', '1000', 0, ''),
(174, 71, 'CINESCENIE PREFERENTIEL( achat puy du fou)', '05-08-2015', '01-12-2015', '27.63', '3.07', '30.7', '100', '1000', 0, ''),
(175, 71, 'BODIN''S CATEGORIE 2 TARIF 38.00', '01-08-2015', '01-12-2015', '34.20', '3.80', '38', '100', '1000', 0, ''),
(176, 71, 'laser game evolution 10.00', '01-08-2015', '30-05-2016', '5.40', '0.60', '6', '100', '1000', 0, ''),
(177, 71, 'TERRA BOTANICA ADULTE - OFFRE -', '01-08-2015', '31-08-2015', '11.70', '1.30', '13', '100', '1000', 0, ''),
(178, 71, 'disneyland adulte 1 parc 1 jour', '01-09-2015', '14-01-2017', '49.50', '5.50', '55', '100', '1000', 0, ''),
(179, 71, 'disneyland enfant 1 parc 1 jour', '01-09-2015', '09-12-2016', '44.10', '4.90', '49', '100', '1000', 0, ''),
(180, 71, 'Carte A''Tout sport 25.40', '01-09-2015', '01-05-2017', '22.86', '2.54', '25.4', '100', '1000', 0, ''),
(181, 71, 'Ti groupe 4 personnes 1 jour 2 parcs  Disneyland (dacc49)', '01-09-2015', '17-03-2016', '183.60', '20.40', '204', '10', '1000', 0, ''),
(182, 71, 'Concert Francis Cabrel 56.00 (dacc49) categorie 1', '13-02-2015', '13-02-2016', '50.40', '5.60', '56', '10', '999', 0, ''),
(183, 71, 'parc disneyland adulte 1 jour 1 parc 55.00 (dacc 49)', '01-09-2015', '14-01-2017', '49.50', '5.50', '55', '10', '1000', 0, ''),
(184, 71, 'concert Forever Gentlemen categorie or 66.00   (cezam 49)', '01-10-2015', '30-07-2016', '59.40', '6.60', '66', '10', '1000', 0, ''),
(185, 71, 'bowling red bowl 9.00 (cezam 49)', '01-10-2015', '31-01-201', '8.10', '0.90', '9', '20', '1000', 0, ''),
(186, 71, 'CONCERT LOUANE /DEBOUT EARLY 39.00', '27-09-2015', '30-04-2016', '35.10', '3.90', '39', '100', '1000', 0, ''),
(187, 71, 'PARC VALLEE DES SINGES', '31-03-2015', '03-10-2015', '13.05', '1.45', '14.5', '100', '1000', 0, ''),
(188, 71, 'ZOO DE LA BOISSIERE ADULTE', '01-01-2015', '01-11-2015', '13.95', '1.55', '15.5', '10', '1000', 0, ''),
(189, 69, 'Cin&eacute;ma Gaumont', '29-10-2015', '29-02-2016', '6', '1.6', '7.6', '30', '998', 0, ''),
(190, 75, 'COMMANDE DE PRODUITS PAR LES SALARIES', '01-01-2015', '31-12-2015', '1', '0', '1', '1000', '998863.21', 0, ''),
(191, 76, 'RECETTE ANNEES PRECEDENTES', '01-01-2015', '31-12-2015', '1', '0', '1', '100', '146', 0, ''),
(192, 77, 'NAISSANCE', '01-01-2015', '31-12-2015', '0', '1', '1', '100', '100000', 0, '');

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
(1, 2, 3, '2.5', '', 'BOUET', '479644603', 0),
(2, 5, 1, '2.5', 'CA', 'SOULET ELODIE', '6615541', 0),
(4, 8, 1, '24', 'CE', 'Lasne Allison', '0000395', 0),
(5, 13, 1, '5', 'CA', 'SOULET ELODIE', '6615541', 0),
(6, 14, 1, '12', 'BPAV', 'LECLERC CAROLINE', '0000149', 0),
(7, 9, 1, '8.2', 'CE', 'TELLANGER AXELLE', '9823959', 0),
(8, 16, 1, '7.1', 'CE', 'JULIENNE THEO', '0000261', 0),
(9, 19, 3, '5', '', 'DELAUNAY DOMINIQUE', '225050008', 0),
(10, 21, 3, '5', '', 'MALINGE ANICETTE', '314518431', 0),
(11, 20, 1, '30', 'BPAV', 'DELAREUX ISABELLE', '0000271', 0),
(12, 22, 3, '12', '', '', '470301956', 0),
(13, 23, 3, '5', '', 'HUIN SYLVIE', '603405749', 0),
(14, 25, 1, '12', 'CE', 'Bonfils Cecile', '7588063', 0),
(15, 26, 1, '24', 'CE', 'TELLANGER AXELLE', '9823959', 0),
(16, 27, 3, '5', '', 'BOUET', '192932266', 0),
(17, 28, 1, '12', 'ce', 'Lebailly Emilie', '0000027', 0),
(18, 30, 3, '5', '', 'SEHAQUI M.THERESE', '391558950', 0),
(19, 29, 1, '5', 'CA', 'TAUDON C', '7583568', 0),
(20, 32, 1, '5', 'CM', 'CIBRON C', '6265074', 0),
(21, 31, 1, '36', 'CM', 'BOUET A', '6571572', 0),
(23, 34, 1, '2.5', 'CM', 'CIBRON CHRISTOPHE', '6265074', 0),
(24, 33, 1, '2.5', 'CA', 'TAUDON C', '7583568', 0),
(25, 36, 1, '18', 'BPAV', 'MENDONCA  MARIA FERNANDA', '0590234', 0),
(27, 38, 1, '18', 'BPAV', 'GASTINEAU ISABELLE', '0003122', 0),
(28, 35, 1, '199.8', 'CM', 'BOUET A', '6571572', 0),
(29, 39, 1, '24', 'BPAV', 'SOURISSEAU AURORE', '00001698', 0),
(30, 41, 1, '24', 'BP', 'MAUSSION C', '0000097', 0),
(31, 43, 1, '203.4', 'BP', 'VIVIEN H', '0347105', 0),
(32, 42, 1, '24', 'CM', 'BERTEAU P', '5240698', 0),
(33, 44, 1, '24', 'CM', 'BERTEAU P', '5240694', 0),
(34, 45, 1, '24', 'CE', 'BONFILS CECILE', '7588057', 0),
(35, 46, 1, '42', 'CA', 'LATONNELLE ANNE', '4262949', 0),
(36, 47, 1, '54', 'CE', 'GERARD A', '0008347', 0),
(37, 49, 3, '24', '', '', '743942498', 0),
(38, 50, 1, '6', 'BP', 'GUIHO ODETTE', '4674058', 0),
(39, 51, 1, '12', 'CE', 'PERDRIAU C', '0000033', 0),
(40, 52, 3, '2.05', '', '', '561390959', 0),
(41, 55, 3, '6', '', '', '707122272', 0),
(42, 54, 1, '12', 'BP', 'LE GAL B', '4597016', 0),
(44, 53, 1, '24', 'SG', 'TREMBLAIS YVAN (CATHERINE)', '0002401', 0),
(45, 57, 3, '6', '', '', '253828168', 0),
(46, 56, 1, '30', 'CM', 'LEGER S', '7015558', 0),
(47, 59, 3, '6', '', '', '417326152', 0),
(48, 58, 1, '15.75', 'SG', 'TREMBLAIS YVAN (CATHERINE)', '0002401', 0),
(49, 61, 1, '18', 'CIC', 'LE BORGNE C', '5210906', 0),
(50, 62, 3, '6', '', '', '212139648', 0),
(52, 64, 1, '24.98', 'CM', 'OLIVEAU Jean Rene', '1318623', 0),
(53, 65, 1, '42.3', 'SG', 'TREMBLAIS Catherine', '0002401', 0),
(54, 66, 1, '12', 'CE', 'CHARREAU Helene', '9362062', 0),
(55, 67, 1, '57.38', 'CA', 'ROYER Catherine', '53096378', 0),
(56, 68, 1, '97.8', 'CA', 'SEHAQUI M Therese', '9407351', 0),
(57, 69, 1, '12', 'CE', 'RIVEREAU Anne Sophie', '3995487', 0),
(58, 70, 1, '16.65', 'CA', 'PITHON Adeline', '0797822', 0),
(59, 71, 1, '35.9', 'CA', 'INCONNU INCONNU', '7003264', 1),
(60, 72, 1, '2.15', 'CE', 'CHARREAU Helene', '9362062', 0),
(61, 73, 1, '9.99', 'BPAV', 'LECOMTE Ludivine', '0000343', 0),
(62, 74, 1, '30.95', 'CE', 'INCONNU INCONNU', '1546378', 0),
(63, 76, 1, '12', 'CA', 'MAQUIN CATHERINE', '2236539', 0),
(64, 77, 1, '40.64', 'BP', 'MOREAU Pascale', '4583032', 0),
(65, 78, 1, '6', 'BP', 'GUIHO Odette', '4674053', 0),
(66, 79, 3, '7.13', '', 'BEAUMONT Bernadette', '839578166', 0),
(67, 80, 3, '18', '', 'THEULIER Laure', '228323190', 0),
(69, 82, 2, '16.15', 'SG', 'SEGARRA Agnes', '0000738', 0),
(70, 84, 3, '8.6', '', 'DUPAS FranÃ§oise', '759723996', 0),
(71, 81, 3, '36', '', 'PRUDHOMME Celine', '412420802', 0),
(72, 83, 1, '36', 'CE', 'BRARD Marie Pierre', '5103889', 0),
(74, 86, 3, '5', '', 'CHATEAU Sandrine', '437281022', 0),
(75, 86, 3, '5', '', 'CHATEAU Sandrine', '368942107', 0),
(76, 87, 1, '30.95', 'CE', 'OLIVEIRA Cecile', '8369238', 1),
(77, 90, 3, '24', '', 'PETITEAU Sarah', '824439202', 0),
(78, 88, 1, '30', 'LCL', 'GAZE CHRISTELLE', '9524903', 1),
(79, 92, 3, '12', '', 'MENDONCA Maria Fernanda', '912167719', 0),
(80, 91, 3, '24', '', 'FRANCFORT Catherine', '134302987', 0),
(81, 89, 1, '36.82', 'CE', 'OLIVEIRA Cecile', '8369238', 1),
(82, 94, 1, '12', 'bp', 'LE GAL Barbara', '4597017', 0),
(83, 93, 1, '24', 'CM', 'LEGER Sonia', '6905150', 0),
(84, 95, 3, '12', '', 'BEAUMONT Bernadette', '254437654', 0),
(85, 96, 1, '24', 'cm', 'COTTENCEAU Monique', '5655484', 0),
(86, 98, 1, '30', 'CA', 'THEULIER Laure', '5225914', 0),
(87, 100, 3, '12', '', 'GASTINEAU Isabelle', '887288609', 0),
(88, 101, 1, '60', 'CE', 'LE JEAN GaÃ«l', '0004741', 0),
(89, 102, 3, '12', '', 'CHEIGNON Aurore', '687577112', 0),
(90, 105, 1, '5', 'CE', 'LE JEAN GaÃ«l', '0004741', 0),
(91, 99, 1, '10.72', 'CE', 'LEBAILLY Emilie', '0000086', 1),
(92, 108, 1, '5', 'CE', 'LE JEAN GaÃ«l', '0004741', 0),
(93, 109, 1, '60', 'LCL', 'LE CALVEZ Jocelyne', '4489165', 0),
(94, 107, 1, '5', 'CA', 'ROUSSE Maryvonne', '6828220', 0),
(95, 110, 1, '49.75', 'CE', 'OLIVEIRA Cecile', '8369224', 0),
(96, 111, 1, '31.05', 'CA', 'ROYER Catherine', '3096382', 0),
(97, 113, 1, '48.06', 'CA', 'ROYER Catherine', '3096382', 0),
(98, 114, 1, '2.5', 'CA', 'ROUSSE Maryvonne', '6828220', 0),
(99, 115, 1, '12', 'CA', 'MAQUIN CATHERINE', '2236545', 0),
(100, 116, 1, '12', 'CM', 'BINOT Lucie', '5271912', 0),
(101, 117, 3, '5', '', 'OLIVEAU Jean Rene', '639687655', 0),
(102, 119, 3, '2.5', '', 'OLIVEAU Jean Rene', '273131513', 0),
(103, 120, 1, '124.2', 'CA', 'COCHIN Yvon', '5140080', 0),
(105, 121, 3, '6', '', 'OLIVEAU Jean Rene', '824253962', 0),
(106, 122, 3, '3.65', '', 'BEAUMONT Bernadette', '651212030', 0),
(107, 123, 1, '5', 'CM', 'BOULAY Jennifer', '7384659', 0),
(108, 126, 3, '12', '', 'BOUET Annette', '343218042', 0),
(109, 124, 1, '244', 'CM', 'CIBRON Christophe', '6265076', 0),
(111, 128, 3, '6', '', 'VIVION Beatrice', '538075528', 0),
(112, 127, 1, '2.5', 'CM', 'BOULAY Jennifer', '7384659', 0),
(113, 129, 1, '24', 'BP', 'PRUNAUX-CAZER ', '0000410', 0),
(114, 130, 1, '60', 'CM', 'POUTREL Sylvie', '7223246', 0),
(115, 132, 3, '12', '', 'GUILLOT Claire', '300583738', 0),
(116, 131, 1, '36', 'BPAV', 'BAILLY Michelle', '0799363', 0),
(117, 133, 1, '24', 'CA', 'MOREAU Sandra', '0318270', 0),
(118, 134, 1, '162', 'CM', 'POUTREL Sylvie', '7223247', 0),
(119, 135, 1, '5', 'CA', 'BORE Marie Pierre', '05354927001', 0),
(120, 137, 1, '60.69', 'CA', 'BEAUMONT Bernadette', '8024019', 1),
(121, 136, 1, '24', 'CM', 'PIEL Guylaine', '5308838', 0),
(122, 138, 1, '5', 'BPAV', 'BAILLY Michelle', '0799363', 0),
(123, 139, 1, '2.5', 'CA', 'BORE Marie Pierre', '05354927001', 0),
(124, 140, 1, '50', 'CA', 'COLAISSEAU Christine', '7395347', 0),
(125, 141, 3, '24', '', 'ABID/PLANCHENAULT Sylvie', '980506549', 0),
(126, 142, 1, '12', 'CE', 'NASRI Marion', '0001764', 0),
(127, 143, 3, '2.05', '', 'MAUSSION Christine', '473911196', 0),
(128, 145, 1, '18', 'CA', 'TAUDON Christine', '7583571', 0),
(129, 146, 3, '4.3', '', 'MAUSSION Christine', '851488411', 0),
(130, 147, 1, '21.6', 'CA', 'TAUDON Christine', '7583571', 0),
(131, 148, 3, '7.1', '', 'BEAUMONT Bernadette', '569986884', 0),
(132, 149, 1, '21.6', 'LCL', 'LE CALVEZ Jocelyne', '0267679', 0),
(133, 151, 1, '5', 'BPAV', 'BAILLY Michelle', '0799363', 0),
(134, 150, 1, '36', 'CE', 'RUBIO G.MICHEL', '6718971', 0),
(135, 152, 1, '50.4', 'CA', 'COCHIN Yvon', '0130361', 0),
(136, 155, 1, '12', 'CA', 'COCHIN Yvon', '0130359', 0),
(137, 153, 1, '198.2', 'CE', 'RUBIO G.MICHEL', '6718971', 0),
(138, 144, 3, '2.5', '', 'CHARRIER Elena', '681948962', 0),
(140, 156, 1, '198.2', 'CE', 'CHAILLOU Sandra', '0002412', 0),
(141, 157, 3, '5', '', 'CHARRIER Elena', '472891849', 0),
(142, 160, 1, '30', 'BNP', 'YVON ANAELLE', '4888598', 1),
(143, 158, 1, '24', 'CE', 'TESSIER Florence', '000298', 0),
(144, 161, 1, '36', 'CE', 'LEBAILLY Emilie', '0000039', 1),
(145, 159, 1, '18', 'CA', 'LATONNELLE Anne', '4267947', 0),
(146, 162, 1, '12', 'CE', 'TELLANGER Axelle', '9823976', 0),
(147, 163, 1, '12', 'CM', 'GAUDELET Maryline', '5439121', 1),
(148, 164, 1, '5', 'BP', 'GUIHO Odette', '4674060', 1),
(149, 165, 1, '12.9', 'CE', 'TELLANGER Axelle', '9823976', 0),
(150, 166, 1, '6', 'CA', 'ROUSSE Maryvonne', '0127334', 1),
(151, 167, 1, '12', 'BP', 'DENECHERE Pascale', '0141780', 1),
(152, 170, 1, '30', 'LCL', 'LE CALVEZ Jocelyne', '0267678', 1),
(153, 168, 1, '6', 'BP', 'DENECHERE Pascale', '0141773', 0),
(154, 169, 1, '12', 'SG', 'COCHIN Yvon', '0000307', 0),
(155, 171, 1, '49.75', 'CE', 'OLIVEIRA Cecile', '8369223', 0),
(156, 172, 1, '12', 'Boursorama', 'CHEIGNON Aurore', '8310544', 0),
(157, 173, 1, '22.8', 'BPAV', 'DENECHERE Pascale', '0141735', 1),
(158, 174, 1, '30', 'LCL', 'GAZE CHRISTELLE', '9524908', 0),
(159, 175, 1, '66', 'BPAV', 'GASTINEAU Isabelle', '0003990', 1),
(160, 176, 1, '33.3', 'Boursorama', 'CHEIGNON Aurore', '8310545', 0),
(161, 177, 1, '12', 'CE', 'PERDRIAU Carine', '0000030', 0),
(162, 179, 1, '12', 'BNP', 'DIJOLS Christine', '7414678', 1),
(163, 178, 1, '12', 'BP', 'TESSIE Francoise', '4653012', 0),
(164, 180, 1, '84', 'CA', 'SEHAQUI M Therese', '9407352', 0),
(166, 182, 3, '2.15', '', 'Personnel rattachÃ© ', '391466818', 0),
(167, 183, 1, '18', 'BP', 'BOUTREUX Anne Sophie', '4644063', 0),
(168, 184, 1, '124.2', 'CM', 'HENNE Teresa', '3289224', 0),
(169, 185, 1, '35.12', 'BP', 'BOUTREUX Anne Sophie', '4644063', 0),
(170, 186, 1, '12', 'CA', 'SOULET Elodie', '9959250', 1),
(171, 187, 1, '24', 'CE', 'BONFILS Cecile', '7588051', 0),
(173, 188, 1, '10.8', 'CA', 'SOULET Elodie', '9959250', 1),
(174, 191, 1, '120.6', 'CM', 'BOULAY Jennifer', '7384660', 0),
(175, 192, 1, '30.5', 'CA', 'COLAISSEAU Christine', '8891585', 0),
(176, 193, 1, '198.2', 'CM', 'CIBRON Christophe', '6265085', 0),
(178, 194, 3, '70.2', '', 'THEULIER Laure', '429967416', 0),
(179, 189, 1, '42', 'CE', 'GERARD Alexandra', '008342', 0),
(180, 195, 1, '56', 'CA', 'COLAISSEAU Christine', '7395348', 0),
(181, 196, 1, '24', 'SG', 'SEGARRA Agnes', '0000737', 0),
(182, 197, 1, '30', 'BP', 'MOREAU Pascale', '4583031', 0),
(183, 198, 1, '36', 'BNP', 'PICHERIT Valerie', '5749877', 0),
(184, 199, 1, '30', 'CA', 'THEULIER Laure', '0064765', 0),
(185, 190, 1, '18', 'CA', 'BEAUMONT Bernadette', '0681524', 0),
(186, 201, 3, '24', '', 'ABID/PLANCHENAULT Sylvie', '989966826', 0),
(187, 202, 3, '24', '', 'COLAISSEAU Christine', '990517833', 0),
(188, 203, 1, '24', 'CM', 'BERTEAU Patricia', '5240695', 0),
(189, 204, 1, '60', 'CA', 'PASCUITO Isabelle', '5668279', 0),
(190, 205, 3, '12', '', 'CHARRIER Elena', '390658657', 0),
(193, 206, 3, '4.1', '', 'TREMBLAIS Catherine', '657617424', 0),
(194, 207, 3, '30', '', 'TAUNAY M Laure', '732857815', 0),
(195, 208, 1, '18', 'BPAV', 'DENECHERE Pascale', '0141781', 1),
(196, 210, 1, '36', 'CA', 'CHEVREUX Melanie', '4517940', 1),
(197, 209, 1, '4', 'CE', 'GERARD Alexandra', '0008342', 0),
(198, 211, 1, '86.85', 'CM', 'HENNE Teresa', '73289218', 0),
(199, 212, 1, '92', 'CE', 'CARRE Audrey', '0000123', 0),
(200, 213, 1, '65', 'CE', 'RIVEREAU Anne Sophie', '3995479', 0),
(201, 214, 1, '65', 'BP', 'MONNIER Sarah', '3740036', 0),
(202, 215, 1, '16.24', 'CA', 'BEAUMONT Bernadette', '0681500', 0),
(203, 216, 1, '24', 'CA', 'BEAUMONT Bernadette', '0681500', 0),
(204, 217, 1, '18', 'BPAV', 'GASTINEAU Isabelle', '0003066', 0),
(205, 218, 1, '36', 'CE', 'LE JEAN GaÃ«l', '0004554', 0),
(206, 219, 1, '18', 'BPAV', 'GASTINEAU Isabelle', '0003084', 0),
(207, 220, 1, '36', '', 'GILBERT Lucie', '5411145', 0),
(208, 221, 1, '16.15', 'SG', 'SEGARRA Agnes', '0000738', 0);

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

--
-- Contenu de la table `remise_banque`
--

INSERT INTO `remise_banque` (`idremisebanque`, `date_remise`, `type_remise`, `num_remise`, `montant_remise`, `valid`) VALUES
(1, '07-01-2015', 1, '6165238', '295.6', 1),
(3, '30.01.2015', 1, '6165243', '312.3', 1),
(4, '13-01-2015', 1, '6165240', '182.15', 1),
(7, '11-02-2015', 1, '6165245', '166.1', 1),
(8, '30-01-2015', 1, '6165244', '327.32', 1),
(9, '11-02-2015', 1, '6165246', '165.3', 1),
(10, '12-02-2015', 1, '6165248', '138', 1),
(11, '17-02-2015', 1, '6859737', '131', 1),
(12, '07-03-2015', 1, '6859739', '563.2', 1),
(13, '07-03-2015', 1, '6859742', '100.3', 1),
(14, '30-03-2015', 1, '6859746', '270', 1),
(15, '07-03-2015', 1, '6859741', '342.2', 1),
(16, '17-02-2015', 1, '6859737', '131', 1),
(18, '07-03-2015', 1, '68559740', '172.8', 1),
(19, '30-03-2015', 1, '6859745', '197.88', 1);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE `remise_banque_chq` (
  `idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `remise_banque_chq`
--

INSERT INTO `remise_banque_chq` (`idremisebanquechq`, `idremisebanque`, `idreglementventepresta`) VALUES
(1, 1, 31),
(2, 1, 30),
(3, 1, 33),
(4, 1, 17),
(5, 1, 7),
(6, 1, 15),
(15, 3, 94),
(16, 3, 83),
(17, 3, 100),
(18, 3, 107),
(19, 3, 119),
(20, 3, 145),
(21, 3, 28),
(22, 3, 21),
(23, 3, 98),
(24, 3, 112),
(25, 3, 123),
(26, 4, 205),
(27, 4, 204),
(28, 4, 78),
(29, 4, 63),
(30, 4, 65),
(31, 4, 72),
(32, 4, 54),
(33, 4, 60),
(34, 4, 57),
(35, 4, 49),
(50, 7, 8),
(51, 7, 189),
(52, 7, 32),
(53, 7, 185),
(54, 8, 171),
(55, 7, 179),
(56, 7, 0),
(57, 8, 103),
(58, 7, 20),
(59, 8, 169),
(60, 7, 5),
(61, 8, 167),
(62, 8, 164),
(63, 7, 23),
(64, 8, 163),
(65, 7, 2),
(66, 8, 161),
(67, 8, 156),
(68, 8, 153),
(69, 9, 160),
(70, 9, 35),
(71, 9, 38),
(72, 9, 29),
(73, 10, 121),
(74, 9, 206),
(75, 9, 34),
(76, 9, 25),
(77, 11, 152),
(78, 11, 151),
(79, 11, 142),
(80, 11, 144),
(81, 11, 147),
(82, 12, 46),
(83, 11, 148),
(84, 11, 150),
(85, 12, 62),
(86, 12, 56),
(87, 12, 140),
(88, 12, 53),
(89, 13, 42),
(90, 12, 168),
(91, 13, 39),
(92, 12, 44),
(93, 12, 48),
(94, 13, 188),
(95, 13, 19),
(96, 13, 24),
(97, 13, 14),
(98, 13, 58),
(99, 10, 207),
(100, 10, 117),
(101, 10, 113),
(102, 14, 63),
(103, 10, 184),
(104, 14, 85),
(105, 14, 82),
(106, 14, 118),
(107, 14, 114),
(108, 13, 208),
(109, 15, 134),
(110, 15, 137),
(111, 15, 182),
(112, 15, 11),
(113, 15, 6),
(114, 15, 4),
(115, 15, 162),
(116, 18, 78),
(117, 18, 159),
(118, 18, 195),
(119, 19, 157),
(120, 18, 196),
(121, 19, 120),
(122, 18, 170),
(123, 19, 81),
(124, 18, 173),
(125, 19, 76),
(126, 19, 91),
(127, 19, 59),
(128, 16, 152),
(129, 16, 151),
(130, 16, 142),
(131, 16, 144),
(132, 16, 147),
(133, 16, 148),
(134, 16, 150);

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
(1, '', 2, 'ABELLARD', 'Marion', '', '', '', '', '', '', '', '', '19/06/2014', '', '', '', '', '', 'CDD', 1, '159'),
(2, '', 2, 'AILLERIE', 'Myriam', '', '', '', '', '', '', '', '', '07/01/2003', '', '', '', '', '', 'CDI', 1, '159'),
(3, '', 2, 'AMARA', 'Nadia', '', '', '', '', '', '', '', '', '11/12/2007', '', '', '', '', '', 'CDI', 1, '159'),
(4, '', 1, 'ANTIER', 'Sylvie', '', '', '', '', '', '', '', '', '06/05/2013', '', '', '', '', '', 'CDI', 1, '159'),
(5, '', 2, 'AUGUET', 'Joelle', '', '', '', '', '', '', '', '', '21/09/2000', '', '', '', '', '', 'CDI', 1, '159'),
(6, '', 2, 'BAILLY', 'Michelle', '', '', '', '', '', '', '', '', '26/06/1990', '', '', '', '', '', 'CDI', 1, '135.4'),
(7, '', 2, 'BEAUMONT', 'Bernadette', '', '', '', '', '', '', '', '', '05/04/1988', '', '', '', '', '', 'CDI', 1, '144.6'),
(8, '', 1, 'BEAUVAIS', 'Nicolas', '', '', '', '', '', '', '', '', '02/09/2013', '', '', '', '', '', 'CDD', 1, '159'),
(9, '', 2, 'BELLOIS', 'Karine', '', '', '', '', '', '', '', '', '19/02/2014', '', '', '', '', '', 'CDD', 1, '159'),
(10, '', 1, 'BENIER', 'Marie Dominique', '', '', '', '', '', '', '', '', '25/01/1973', '31-01-2015', '', '', '', 'RETRAITE', 'CDI', 1, '159'),
(11, '', 2, 'BERTEAU', 'Patricia', '', '', '', '', '', '', '', '', '05/12/2011', '', '', '', '', '', 'CDI', 1, '140.6'),
(12, '', 2, 'BERTRAND', 'Erika', '', '', '', '', '', '', '', '', '22/04/2013', '', '', '', '', '', 'CDI', 1, '159'),
(13, '', 2, 'BIBARD', 'Audrey', '', '', '', '', '', '', '', '', '22/06/2009', '', '', '', '', '', 'CDI', 1, '159'),
(14, '', 2, 'BIGOT', 'Louise', '', '', '', '', '', '', '', '', '13/02/2014', '', '', '', '', '', 'CDD', 1, '159'),
(15, '', 2, 'BINOT', 'Lucie', '', '', '', '', '', '', '', '', '26/04/2004', '', '', '', '', '', 'CDI', 1, '155.8'),
(16, '', 2, 'BIZMAOUI PAPIN', 'Myriam', '', '', '', '', '', '', '', '', '02/04/2008', '', '', '', '', '', 'CDI', 1, '159'),
(17, '', 2, 'BLAITEAU', 'Dalila', '', '', '', '', '', '', '', '', '07/08/1996', '', '', '', '', '', 'CDI', 1, '159'),
(18, '', 2, 'BLEZ', 'Manon', '', '', '', '', '', '', '', '', '05/09/2013', '', '', '', '', '', 'CDI', 1, '159'),
(19, '', 2, 'BOIS', 'Marie', '', '', '', '', '', '', '', '', '02/12/2010', '', '', '', '', '', 'CDI', 1, '159'),
(20, '', 2, 'BONFILS', 'Cecile', '', '', '', '', '', '', '', '', '17/06/1997', '', '', '', '', '', 'CDI', 1, '143'),
(21, '', 2, 'BONNARDE', 'Armelle', '', '', '', '', '', '', '', '', '20/07/2011', '', '', '', '', '', 'CDI', 1, '159'),
(22, '', 2, 'BORE', 'Marie Pierre', '', '', '', '', '', '', '', '', '15/01/1997', '', '', '', '', '', 'CDI', 1, '148.5'),
(23, '', 2, 'BOSSU', 'Catherine', '', '', '', '', '', '', '', '', '01/02/2014', '', '', '', '', '', 'CDD', 1, '159'),
(24, '', 2, 'BOUET', 'Annette', '', '', '', '', '', '', '', '', '26/05/2005', '', '', '', '', '', 'CDI', 1, '114.7'),
(25, '', 2, 'BOULAY', 'Jennifer', '', '', '', '', '', '', '', '', '28/08/2013', '', '', '', '', '', 'CDD', 1, '135.1'),
(26, '', 1, 'BOURGAUD', 'Mickael', '', '', '', '', '', '', '', '', '03/01/2007', '', '', '', '', '', 'CDI', 1, '159'),
(27, '', 1, 'BOURGET', 'Louis', '', '', '', '', '', '', '', '', '20/06/2014', '', '', '', '', '', 'CDD', 1, '159'),
(28, '', 1, 'BOUTIN', 'David', '', '', '', '', '', '', '', '', '29/11/2013', '', '', '', '', '', 'CDD', 1, '159'),
(29, '', 2, 'BOUTREUX', 'Anne Sophie', '', '', '', '', '', '', '', '', '27/08/2013', '', '', '', '', '', 'CDD', 1, '149.72'),
(30, '', 2, 'BRARD', 'Marie Pierre', '', '', '', '', '', '', '', '', '02/06/2008', '', '', '', '', '', 'CDI', 1, '149.4'),
(31, '', 2, 'BRISSY', 'Helene', '', '', '', '', '', '', '', '', '03/10/2011', '', '', '', '', '', 'CDI', 1, '159'),
(32, '', 2, 'BUSH', 'Magali', '', '', '', '', '', '', '', '', '04/09/2013', '', '', '', '', '', 'CDD', 1, '159'),
(33, '', 2, 'CADELE', 'Marie Claude', '', '', '', '', '', '', '', '', '28/02/2007', '', '', '', '', '', 'CDI', 1, '159'),
(34, '', 2, 'CARRE', 'Audrey', '', '', '', '', '', '', '', '', '03/10/2012', '', '', '', '', '', 'CDI', 1, '159'),
(35, '', 2, 'CAYRE', 'St?phanie', '', '', '', '', '', '', '', '', '14/04/2014', '', '', '', '', '', 'CDD', 1, '159'),
(36, '', 1, 'CHAILLAND', 'Pierre', '', '', '', '', '', '', '', '', '05/06/2013', '', '', '', '', '', 'CDD', 1, '159'),
(37, '', 1, 'CHAILLAND', 'Julien', '', '', '', '', '', '', '', '', '02/01/2006', '', '', '', '', '', 'CDI', 1, '159'),
(38, '', 2, 'CHAILLOU', 'Sandra', '', '', '', '', '', '', '', '', '13/09/1999', '', '', '', '', '', 'CDI', 1, '113.2'),
(39, '', 2, 'CHALLIER', 'Jacqueline', '1Rue Rosa Parks', '', '49130', 'Les Ponts de C&eacute;', '', '', '', '', '10/06/2010', '', '', '', '', '', 'CDI', 1, '159'),
(40, '', 1, 'CHAMPIGNY', 'Antoine', '', '', '', '', '', '', '', '', '10/01/2011', '', '', '', '', '', 'CDI', 1, '159'),
(41, '', 2, 'CHARREAU', 'Helene', '', '', '', '', '', '', '', '', '04/01/1989', '', '', '', '', '', 'CDI', 1, '156.2'),
(42, '', 2, 'CHARRIER', 'Elena', '', '', '', '', '', '', '', '', '24/11/2003', '', '', '', '', '', 'CDI', 1, '145.3'),
(43, '', 2, 'CHARTIER', 'Brigitte', '', '', '', '', '', '', '', '', '24/01/1977', '', '', '', '', '', 'CDI', 1, '159'),
(44, '', 2, 'CHATEAU', 'Sandrine', '', '', '', '', '', '', '', '', '09/01/2006', '', '', '', '', '', 'CDI', 1, '152'),
(45, '', 2, 'CHEIGNON', 'Aurore', '', '', '', '', '', '', '', '', '23/09/1993', '', '', '', '', '', 'CDI', 1, '148.9'),
(46, '', 2, 'CHEVREUX', 'Melanie', '', '', '', '', '', '', '', '', '30/06/2011', '', '', '', '', '', 'CDI', 1, '149.4'),
(47, '', 2, 'CHEVRIER', 'B?atrice', '', '', '', '', '', '', '', '', '12/09/2011', '', '', '', '', '', 'CDI', 1, '159'),
(48, '', 1, 'CIBRON', 'Christophe', '10 RUE AUGUSTE RODIN', '', '49124', 'SAINT BARTHELEMY D ANJOU', '0241930760', '0645472841', 'C.CIBRON@GMAIL.COM', '', '15/03/1993', '', '', '', '', '', 'CDI', 1, '102.7'),
(50, '', 1, 'COCHIN', 'Yvon', '', '', '', '', '', '', '', '', '30/07/2012', '', '', '', '', '', 'CDI', 1, '133.2'),
(51, '', 1, 'COIGNARD', 'Jeremy', '', '', '', '', '', '', '', '', '20/10/2011', '', '', '', '', '', 'CDD', 1, '159'),
(52, '', 2, 'COLAISSEAU', 'Christine', '57 rue de la tour', '', '49800', 'TRELAZE', '', '0664302987', '', '', '12/03/2010', '', '', '', '', '', 'CDI', 1, '152.6'),
(53, '', 2, 'CORVE', 'Gilberte', '', '', '', '', '', '', '', '', '24/03/2001', '', '', '', '', '', 'CDI', 1, '159'),
(54, '', 2, 'COTTENCEAU', 'Monique', '', '', '', '', '', '', '', '', '17/09/2004', '', '', '', '', '', 'CDI', 1, '152.6'),
(55, '', 2, 'COURCELLE', 'Pauline', '', '', '', '', '', '', '', '', '10/02/2014', '', '', '', '', '', 'CDD', 1, '159'),
(56, '', 2, 'CRANSAC', 'Christel', '', '', '', '', '', '', '', '', '08/04/2011', '', '', '', '', '', 'CDI', 1, '159'),
(57, '', 2, 'DABOUDET', 'Valerie', '', '', '', '', '', '', '', '', '09/05/2005', '', '', '', '', '', 'CDI', 1, '159'),
(58, '', 2, 'DAVY', 'Katia', '', '', '', '', '', '', '', '', '30/03/1995', '', '', '', '', '', 'CDI', 1, '159'),
(59, '', 2, 'DELAREUX', 'Isabelle', '', '', '', '', '', '', '', '', '02/01/1984', '', '', '', '', '', 'CDI', 1, '151'),
(60, '', 2, 'DELAUNAY', 'Dominique', '', '', '', '', '', '', '', '', '01/11/2008', '', '', '', '', '', 'CDI', 1, '152'),
(61, '', 1, 'DELEMME', 'Anthony', '', '', '', '', '', '', '', '', '01/11/2008', '', '', '', '', '', 'CDI', 1, '159'),
(62, '', 2, 'DENANCE', 'Claudia', '', '', '', '', '', '', '', '', '01/08/1973', '', '', '', '', '', 'CDI', 1, '159'),
(63, '', 2, 'DENECHERE', 'Pascale', '', '', '', '', '', '', '', '', '28/11/1995', '', '', '', '', '', 'CDI', 1, '149.4'),
(64, '', 1, 'DEROUET', 'Jerome', '', '', '', '', '', '', '', '', '24/02/1995', '', '', '', '', '', 'CDI', 1, '159'),
(65, '', 2, 'DESCHRYVER', 'Elisabeth', '', '', '', '', '', '', '', '', '01/06/2007', '', '', '', '', '', 'CDI', 1, '159'),
(66, '', 2, 'DEVAUD', 'Sandrine', '', '', '', '', '', '', '', '', '02/10/2000', '', '', '', '', '', 'CDI', 1, '159'),
(67, '', 2, 'DIJOLS', 'Christine', '', '', '', '', '', '', '', '', '02/05/2011', '', '', '', '', '', 'CDI', 1, '155.8'),
(68, '', 2, 'DOISNEAU', 'Geraldine', '', '', '', '', '', '', '', '', '03/01/1994', '', '', '', '', '', 'CDI', 1, '159'),
(69, '', 3, 'DONEAU', 'Emilie', '15 rue du fort de vaux', '', '49100', 'Angers', '', '0615253856', 'emilie.doneau@wanadoo.fr', '', '12/12/2011', '', '', 'Assistante QualitÃ©', '', 'Elle est trop sympa!!!! :)', 'CDI', 1, '159'),
(70, '', 2, 'DOUET', 'Charline', '', '', '', '', '', '', '', '', '10/09/2009', '', '', '', '', '', 'CDI', 1, '159'),
(71, '', 2, 'DUPAS', 'FranÃ§oise', '', '', '', '', '', '', '', '', '18/08/1997', '', '', '', '', '', 'CDI', 1, '159'),
(72, '', 2, 'DURAND CHATTON', 'Pascale', '', '', '', '', '', '', '', '', '02/12/2004', '', '', '', '', '', 'CDI', 1, '159'),
(73, '', 1, 'ELOBO', 'Renee', '', '', '', '', '', '', '', '', '15/02/2012', '30-10-2015', '', '', '', '', 'CDI', 1, '159'),
(74, '', 1, 'ESNAULT', 'Claude', '', '', '', '', '', '', '', '', '28/05/1984', '', '', '', '', '', 'CDI', 1, '159'),
(75, '', 2, 'FERRAND', 'Mauricette', '', '', '', '', '', '', '', '', '27/11/2008', '', '', '', '', '', 'CDI', 1, '159'),
(76, '', 2, 'FLEURY', 'Marylene', '', '', '', '', '', '', '', '', '22/02/2010', '', '', '', '', '', 'CDI', 1, '159'),
(77, '', 2, 'FOUBLE', 'Camille', '', '', '', '', '', '', '', '', '23/09/2013', '', '', '', '', '', 'CDI', 1, '159'),
(78, '', 2, 'FOUQUERAY', 'Edwige', '', '', '', '', '', '', '', '', '05/12/2011', '', '', '', '', '', 'CDI', 1, '159'),
(79, '', 2, 'FOUQUET', 'Chantal', '', '', '', '', '', '', '', '', '01/04/2010', '', '', '', '', '', 'CDI', 1, '159'),
(80, '', 1, 'FRABOULET', 'Jean Yves', '', '', '', '', '', '', '', '', '24/04/2012', '', '', '', '', '', 'CDI', 1, '159'),
(81, '', 2, 'FRANCFORT', 'Catherine', '', '', '', '', '', '', '', '', '15/10/2008', '', '', '', '', '', 'CDI', 1, '152.6'),
(82, '', 2, 'GASTINEAU', 'Isabelle', '', '', '', '', '', '', '', '', '19/03/2002', '', '', '', '', '', 'CDI', 1, '125'),
(83, '', 2, 'GAUDELET', 'Maryline', '', '', '', '', '', '', '', '', '01/12/1981', '', '', '', '', '', 'CDI', 1, '155.8'),
(84, '', 2, 'GAUTHIER', 'Emeline', '', '', '', '', '', '', '', '', '12/03/2014', '', '', '', '', '', 'CDD', 1, '159'),
(85, '', 2, 'GERARD', 'Alexandra', '', '', '', '', '', '', '', '', '26/10/1999', '', '', '', '', '', 'CDI', 1, '133.4'),
(86, '', 2, 'GESLIN', 'Sarah', '', '', '', '', '', '', '', '', '20/01/2003', '', '', '', '', '', 'CDI', 1, '159'),
(87, '', 2, 'GILBERT', 'Lucie', '', '', '', '', '', '', '', '', '02/07/2013', '', '', '', '', '', 'CDI', 1, '149.4'),
(88, '', 2, 'GILET', 'Brigitte', '', '', '', '', '', '', '', '', '10/03/1983', '', '', '', '', '', 'CDI', 1, '159'),
(89, '', 2, 'GISLARD', 'Catherine', '', '', '', '', '', '', '', '', '04/07/2007', '', '', '', '', '', 'CDI', 1, '159'),
(90, '', 2, 'GODIN', 'St?phanie', '', '', '', '', '', '', '', '', '06/02/2014', '', '', '', '', '', 'CDD', 1, '159'),
(91, '', 1, 'GOHIER', 'Simon', '', '', '', '', '', '', '', '', '29/06/2013', '', '', '', '', '', 'CDD', 1, '159'),
(92, '', 2, 'GOURMAUD', 'Delphine', '', '', '', '', '', '', '', '', '03/03/2010', '', '', '', '', '', 'CDI', 1, '159'),
(93, '', 1, 'GRAU', 'Cecilio', '', '', '', '', '', '', '', '', '01/12/2010', '', '', '', '', '', 'CDI', 1, '159'),
(94, '', 2, 'GRIFFON', 'Carine', '', '', '', '', '', '', '', '', '06/04/2009', '', '', '', '', '', 'CDI', 1, '159'),
(95, '', 2, 'GUEGAN', 'Cecilia', '', '', '', '', '', '', '', '', '18/10/2005', '', '', '', '', '', 'CDI', 1, '159'),
(96, '', 2, 'GUIHO', 'Odette', '', '', '', '', '', '', '', '', '10/02/1998', '', '', '', '', '', 'CDI', 1, '148.8'),
(97, '', 2, 'GUILLOT', 'Claire', '', '', '', '', '', '', '', '', '11/10/2010', '', '', '', '', '', 'CDI', 1, '155.8'),
(98, '', 1, 'HAISSANT', 'Thibaud', '', '', '', '', '', '', '', '', '05/07/2007', '', '', '', '', '', 'CDI', 1, '159'),
(99, '', 1, 'HAMON', 'Olivier', '', '', '', '', '', '', '', '', '23/04/2014', '', '', '', '', '', 'CDD', 1, '159'),
(100, '', 2, 'HEBBACHE', 'Michelle', '', '', '', '', '', '', '', '', '19/09/1977', '', '', '', '', '', 'CDI', 1, '159'),
(101, '', 2, 'HENNE', 'Teresa', '', '', '', '', '', '', '', '', '07/02/2011', '', '', '', '', '', 'CDI', 1, '145.2'),
(102, '', 2, 'HERANVAL', 'Malvina', '', '', '', '', '', '', '', '', '15/07/2013', '', '', '', '', '', 'CDI', 1, '159'),
(103, '', 1, 'HERAUD', 'Pierre', '', '', '', '', '', '', '', '', '20/07/2011', '', '', '', '', '', 'CDI', 1, '159'),
(104, '', 2, 'HODET', 'Martine', '', '', '', '', '', '', '', '', '01/02/2014', '', '', '', '', '', 'CDI', 1, '159'),
(105, '', 2, 'HUAU', 'Carine', '', '', '', '', '', '', '', '', '03/10/2011', '', '', '', '', '', 'CDI', 1, '159'),
(106, '', 1, 'HUGARD', 'Jacques', '', '', '', '', '', '', '', '', '20/08/2009', '', '', '', '', '', 'CDI', 1, '159'),
(107, '', 2, 'HUIN', 'Sylvie', '', '', '', '', '', '', '', '', '01/02/2011', '', '', '', '', '', 'CDI', 1, '152'),
(108, '', 2, 'JAMOTEAU', 'Adeline', '', '', '', '', '', '', '', '', '18/01/2010', '', '', '', '', '', 'CDI', 1, '159'),
(109, '', 2, 'JARRY FAURANT', 'Anne', '', '', '', '', '', '', '', '', '23/06/2003', '', '', '', '', '', 'CDI', 1, '159'),
(110, '', 2, 'JEMIN', 'Christine', '', '', '', '', '', '', '', '', '11/08/1975', '', '', '', '', '', 'CDI', 1, '159'),
(111, '', 1, 'JEMIN', 'Dany', '', '', '', '', '', '', '', '', '23/01/2014', '', '', '', '', '', 'CDD', 1, '159'),
(112, '', 2, 'JOUAN', 'Fanny', '', '', '', '', '', '', '', '', '02/05/2011', '', '', '', '', '', 'CDI', 1, '159'),
(113, '', 2, 'JOUANNEAU', 'Carole', '', '', '', '', '', '', '', '', '28/09/2010', '', '', '', '', '', 'CDI', 1, '159'),
(114, '', 2, 'JOURNIAC', 'Adeline', '', '', '', '', '', '', '', '', '31/12/2007', '', '', '', '', '', 'CDI', 1, '159'),
(115, '', 1, 'JUGUET', 'Philippe', '', '', '', '', '', '', '', '', '19/03/2012', '', '', '', '', '', 'CDI', 1, '159'),
(116, '', 2, 'JURET', 'Marlene', '', '', '', '', '', '', '', '', '23/05/2005', '', '', '', '', '', 'CDI', 1, '159'),
(117, '', 2, 'KIMBOROWICZ', 'Elodie', '', '', '', '', '', '', '', '', '15/10/2012', '', '', '', '', '', 'CDI', 1, '159'),
(118, '', 2, 'LAMY', 'Nathalie', '', '', '', '', '', '', '', '', '01/12/2003', '', '', '', '', '', 'CDI', 1, '159'),
(119, '', 1, 'LANNIER', 'Yann', '', '', '', '', '', '', '', '', '13/03/2010', '', '', '', '', '', 'CDI', 1, '159'),
(120, '', 2, 'LARCIER', 'Guylaine', '', '', '', '', '', '', '', '', '03/07/1997', '', '', '', '', '', 'CDI', 1, '159'),
(121, '', 2, 'LASNE', 'Allison', '', '', '', '', '', '', '', '', '02/07/2007', '', '', '', '', '', 'CDI', 1, '152.6'),
(122, '', 2, 'LATONNELLE', 'Anne', '', '', '', '', '', '', '', '', '11/12/2006', '', '', '', '', '', 'CDI', 1, '143'),
(123, '', 2, 'LE BORGNE', 'Celine', '', '', '', '', '', '', '', '', '12/01/2012', '', '', '', '', '', 'CDI', 1, '154.8'),
(124, '', 2, 'LE CALVEZ', 'Jocelyne', '', '', '', '', '', '', '', '', '08/10/2002', '', '', '', '', '', 'CDI', 1, '148.2'),
(125, '', 2, 'LE CALVEZ', 'Marine', '', '', '', '', '', '', '', '', '29/01/2012', '', '', '', '', '', 'CDI', 1, '159'),
(126, '', 2, 'LE GAL', 'Barbara', '', '', '', '', '', '', '', '', '27/05/2003', '', '', '', '', '', 'CDI', 1, '152.6'),
(127, '', 1, 'LE JEAN', 'GaÃ«l', '', '', '', '', '', '', '', '', '01/10/2012', '', '', '', '', '', 'CDI', 1, '127.6'),
(128, '', 2, 'LEBAILLY', 'Emilie', '', '', '', '', '', '', '', '', '07/09/2010', '', '', '', '', '', 'CDI', 1, '146.6'),
(129, '', 1, 'LEBLANC', 'Pascal', '', '', '', '', '', '', '', '', '01/07/2004', '', '', '', '', '', 'CDI', 1, '159'),
(130, '', 2, 'LECLERC', 'Caroline', '', '', '', '', '', '', '', '', '26/11/2009', '', '', '', '', '', 'CDI', 1, '155.8'),
(131, '', 2, 'LECOMTE', 'Ludivine', '', '', '', '', '', '', '', '', '09/02/2004', '', '', '', '', '', 'CDI', 1, '159'),
(132, '', 2, 'LEGER', 'Sonia', '', '', '', '', '', '', '', '', '06/12/1994', '', '', '', '', '', 'CDI', 1, '144.6'),
(133, '', 2, 'LELIEVRE', 'Isabelle', '', '', '', '', '', '', '', '', '10/07/1989', '', '', '', '', '', 'CDI', 1, '159'),
(134, '', 2, 'LENOGUE', 'Angelique', '', '', '', '', '', '', '', '', '05/11/2004', '', '', '', '', '', 'CDI', 1, '159'),
(135, '', 2, 'LESAGE', 'Catherine', '', '', '', '', '', '', '', '', '18/11/2000', '', '', '', '', '', 'CDI', 1, '159'),
(136, '', 1, 'LOISEL', 'Nicolas', '', '', '', '', '', '', '', '', '10/04/2003', '', '', '', '', '', 'CDI', 1, '159'),
(137, '', 2, 'LOPEZ DE CARVALHO', 'Nathalie', '', '', '', '', '', '', '', '', '10/06/2014', '', '', '', '', '', 'CDD', 1, '159'),
(138, '', 2, 'LORINQUER', 'Pauline', '', '', '', '', '', '', '', '', '07/07/2008', '', '', '', '', '', 'CDD', 1, '159'),
(139, '', 2, 'LORINQUER', 'Melanie', '', '', '', '', '', '', '', '', '14/11/2005', '', '', '', '', '', 'CDI', 1, '159'),
(140, '', 1, 'LUCAS', 'Jean Michel', '', '', '', '', '', '', '', '', '13/10/2008', '', '', '', '', '', 'CDI', 1, '159'),
(141, '', 2, 'MALINGE', 'Anicette', '', '', '', '', '', '', '', '', '27/01/2014', '', '', '', '', '', 'CDD', 1, '152'),
(142, '', 1, 'MARAUD', 'Philippe', '', '', '', '', '', '', '', '', '30/08/2010', '', '', '', '', '', 'CDI', 1, '159'),
(143, '', 2, 'MARTINEAU', 'Laure Anne', '', '', '', '', '', '', '', '', '04/01/2011', '', '', '', '', '', 'CDI', 1, '159'),
(144, '', 2, 'MAUDET', 'Delphine', '', '', '', '', '', '', '', '', '17/08/2009', '', '', '', '', '', 'CDI', 1, '159'),
(145, '', 2, 'MAUSSION', 'Christine', '', '', '', '', '', '', '', '', '16/11/1993', '', '', '', '', '', 'CDI', 1, '153.4'),
(146, '', 2, 'MBIDA', 'Martine', '', '', '', '', '', '', '', '', '16/01/1995', '', '', '', '', '', 'CDI', 1, '159'),
(147, '', 2, 'MEIGNAN', 'Claudia', '', '', '', '', '', '', '', '', '22/02/1996', '', '', '', '', '', 'CDI', 1, '159'),
(148, '', 2, 'MENANT', 'Sylvie', '', '', '', '', '', '', '', '', '04/02/2008', '', '', '', '', '', 'CDI', 1, '159'),
(149, '', 2, 'MENARD', 'Chloe', '', '', '', '', '', '', '', '', '23/04/2013', '', '', '', '', '', 'CDI', 1, '159'),
(150, '', 2, 'MENDONCA', 'Maria Fernanda', '', '', '', '', '', '', '', '', '01/02/1996', '', '', '', '', '', 'CDI', 1, '151'),
(151, '', 2, 'MERCEREAU', 'Aude', '', '', '', '', '', '', '', '', '05/03/2003', '', '', '', '', '', 'CDI', 1, '159'),
(152, '', 2, 'MERIAN', 'Gaelle', '', '', '', '', '', '', '', '', '19/09/2005', '', '', '', '', '', 'CDI', 1, '159'),
(153, '', 2, 'MEURIC', 'Fran?oise', '', '', '', '', '', '', '', '', '29/08/2013', '', '', '', '', '', 'CDD', 1, '159'),
(154, '', 2, 'MONNIER', 'Sarah', '', '', '', '', '', '', '', '', '07/08/2012', '', '', '', '', '', 'CDI', 1, '159'),
(155, '', 2, 'MOREAU', 'Sandra', '', '', '', '', '', '', '', '', '24/11/2008', '', '', '', '', '', 'CDI', 1, '152.6'),
(156, '', 2, 'MOREAU', 'Pascale', '', '', '', '', '', '', '', '', '06/06/2011', '', '', '', '', '', 'CDI', 1, '151'),
(157, '', 2, 'NASRI', 'Marion', '', '', '', '', '', '', '', '', '13/06/2003', '', '', '', '', '', 'CDI', 1, '155.8'),
(158, '', 1, 'OLIVEAU', 'Jean Rene', '', '', '', '', '', '', '', '', '18/12/1987', '', '', '', '', '', 'CDI', 1, '144.1'),
(159, '', 2, 'OLIVEIRA', 'Cecile', '', '', '', '', '', '', '', '', '12/05/2003', '', '', '', '', '', 'CDI', 1, '159'),
(160, '', 2, 'PASCUITO', 'Isabelle', '', '', '', '', '', '', '', '', '12/01/2008', '', '', '', '', '', 'CDD', 1, '143'),
(161, '', 1, 'PATAO', 'Armand', '', '', '', '', '', '', '', '', '25/06/2007', '', '', '', '', '', 'CDI', 1, '159'),
(162, '', 2, 'PECOT', 'Sandrine', '', '', '', '', '', '', '', '', '01/02/2002', '', '', '', '', '', 'CDI', 1, '159'),
(163, '', 2, 'PERDRIAU', 'Carine', '', '', '', '', '', '', '', '', '12/06/1998', '', '', '', '', '', 'CDI', 1, '152.6'),
(164, '', 2, 'PERDRIAU', 'Sophie', '', '', '', '', '', '', '', '', '09/04/1985', '', '', '', '', '', 'CDI', 1, '159'),
(165, '', 2, 'PETITEAU', 'Sarah', '', '', '', '', '', '', '', '', '25/03/2011', '', '', '', '', '', 'CDI', 1, '151.2'),
(166, '', 2, 'PICHERIT', 'Valerie', '', '', '', '', '', '', '', '', '22/10/1992', '', '', '', '', '', 'CDI', 1, '149.4'),
(167, '', 2, 'PIEL', 'Guylaine', '', '', '', '', '', '', '', '', '19/04/1991', '', '', '', '', '', 'CDI', 1, '152.6'),
(168, '', 2, 'PITHON', 'Adeline', '', '', '', '', '', '', '', '', '26/10/2005', '', '', '', '', '', 'CDI', 1, '159'),
(169, '', 1, 'PITULA', 'R?mi', '', '', '', '', '', '', '', '', '23/12/2013', '', '', '', '', '', 'CDD', 1, '159'),
(170, '', 2, 'ABID/PLANCHENAULT', 'Sylvie', '', '', '', '', '', '', '', '', '01/11/2004', '', '', '', '', '', 'CDI', 1, '146.2'),
(171, '', 2, 'POIROUX', 'Marie Helene', '', '', '', '', '', '', '', '', '30/03/1977', '', '', '', '', '', 'CDI', 1, '159'),
(172, '', 2, 'POUTREL', 'Sylvie', '', '', '', '', '', '', '', '', '22/11/2010', '', '', '', '', '', 'CDI', 1, '125'),
(173, '', 2, 'PRIOU', 'Julie', '', '', '', '', '', '', '', '', '15/03/2002', '', '', '', '', '', 'CDI', 1, '159'),
(174, '', 2, 'PRUD HOMME', 'Laurence', '', '', '', '', '', '', '', '', '09/09/2013', '', '', '', '', '', 'CDD', 1, '159'),
(175, '', 2, 'PRUDHOMME', 'Celine', '', '', '', '', '', '', '', '', '01/02/2003', '', '', '', '', '', 'CDI', 1, '139.8'),
(176, '', 2, 'RENAUD', 'Sandrine', '', '', '', '', '', '', '', '', '01/02/2013', '', '', '', '', '', 'CDI', 1, '159'),
(177, '', 1, 'RENAULT', 'Marc', '', '', '', '', '', '', '', '', '26/04/1976', '', '', '', '', '', 'CDI', 1, '159'),
(178, '', 2, 'RENAULT', 'Claire', '', '', '', '', '', '', '', '', '01/09/1975', '', '', '', '', '', 'CDI', 1, '159'),
(179, '', 1, 'REVEREAULT', 'John', '', '', '', '', '', '', '', '', '07/05/1997', '', '', '', '', '', 'CDI', 1, '159'),
(180, '', 2, 'REVEREAULT', 'Melanie', '', '', '', '', '', '', '', '', '09/02/1995', '', '', '', '', '', 'CDI', 1, '159'),
(181, '', 2, 'RICHARD', 'Francoise', '', '', '', '', '', '', '', '', '07/11/1996', '', '', '', '', '', 'CDI', 1, '159'),
(182, '', 2, 'RIPOCHE', 'Geraldine', '', '', '', '', '', '', '', '', '27/06/2004', '', '', '', '', '', 'CDI', 1, '159'),
(183, '', 2, 'RIVEREAU', 'Anne Sophie', '', '', '', '', '', '', '', '', '27/05/1994', '', '', '', '', '', 'CDI', 1, '156.2'),
(184, '', 2, 'ROBIN', 'Odile', '', '', '', '', '', '', '', '', '01/09/2013', '', '', '', '', '', 'CDD', 1, '159'),
(185, '', 2, 'ROUSSE', 'Maryvonne', '', '', '', '', '', '', '', '', '22/06/2005', '', '', '', '', '', 'CDI', 1, '146.9'),
(186, '', 2, 'ROUSSEAU', 'Alexia', '', '', '', '', '', '', '', '', '24/08/2012', '', '', '', '', '', 'CDD', 1, '159'),
(187, '', 2, 'ROYER', 'Catherine', '', '', '', '', '', '', '', '', '03/07/2012', '', '', '', '', '', 'CDI', 1, '144.87'),
(188, '', 1, 'SALAUD', 'Vivien', '', '', '', '', '', '', '', '', '03/12/2012', '', '', '', '', '', 'CDI', 1, '159'),
(189, '', 1, 'SAULOU', 'Guillaume', '', '', '', '', '', '', '', '', '02/07/2012', '', '', '', '', '', 'CDD', 1, '159'),
(190, '', 2, 'SEGARRA', 'Agnes', '', '', '', '', '', '', '', '', '03/07/1997', '', '', '', '', '', 'CDI', 1, '152.6'),
(191, '', 2, 'SEHAQUI', 'M Therese', '', '', '', '', '', '', '', '', '01/01/2004', '', '', '', '', '', 'CDI', 1, '129.6'),
(192, '', 2, 'SEURRE', 'Marie Jose', '', '', '', '', '', '', '', '', '08/08/2011', '', '', '', '', '', 'CDI', 1, '159'),
(193, '', 2, 'SOUALAH', 'Bahija', '', '', '', '', '', '', '', '', '01/03/1987', '', '', '', '', '', 'CDI', 1, '159'),
(194, '', 2, 'SOUCHARD', 'Marine', '', '', '', '', '', '', '', '', '30/08/2010', '', '', '', '', '', 'CDI', 1, '159'),
(195, '', 2, 'SOULET', 'Elodie', '', '', '', '', '', '', '', '', '08/07/2009', '', '', '', '', '', 'CDI', 1, '144.1'),
(196, '', 2, 'SOURISSEAU', 'Aurore', '', '', '', '', '', '', '', '', '14/01/2008', '', '', '', '', '', 'CDI', 1, '152.6'),
(197, '', 2, 'TAUBIN', 'Marine', '', '', '', '', '', '', '', '', '04/01/2012', '', '', '', '', '', 'CDI', 1, '159'),
(198, '', 2, 'TAUDON', 'Christine', '', '', '', '', '', '', '', '', '01/06/1985', '', '', '', '', '', 'CDI', 1, '140.9'),
(199, '', 2, 'TAUNAY', 'M Laure', '', '', '', '', '', '', '', '', '09/05/2003', '', '', '', '', '', 'CDI', 1, '148.2'),
(200, '', 2, 'TELLANGER', 'Axelle', '', '', '', '', '', '', '', '', '13/03/1989', '', '', '', '', '', 'CDI', 1, '150.2'),
(201, '', 2, 'TESSIE', 'Francoise', '', '', '', '', '', '', '', '', '25/07/1988', '', '', '', '', '', 'CDI', 1, '155.8'),
(202, '', 2, 'TESSIER', 'Florence', '4 RUE DU CORNET', '', '49100', 'ANGERS', '02 41 34 67 23', '06 87 51 34 90', '', '', '14/02/2006', '', '', '', '', '', 'CDI', 1, '151.2'),
(203, '', 2, 'THEULIER', 'Laure', '', '', '', '', '', '', '', '', '03/09/1989', '', '', '', '', '', 'CDI', 1, '124.8'),
(204, '', 2, 'TIERCELIN', 'Charl?ne', '', '', '', '', '', '', '', '', '02/01/2012', '', '', '', '', '', 'CDI', 1, '159'),
(205, '', 2, 'TORREGROSSA', 'C?line', '', '', '', '', '', '', '', '', '12/12/2011', '', '', '', '', '', 'CDI', 1, '159'),
(206, '', 1, 'TOUDJI', 'Akouete Pierre', '', '', '', '', '', '', '', '', '13/12/2004', '', '', '', '', '', 'CDI', 1, '159'),
(207, '', 2, 'TREMBLAIS', 'Catherine', '', '', '', '', '', '', '', '', '13/03/1984', '', '', '', '', '', 'CDI', 1, '146.15'),
(208, '', 2, 'TROISPOILS', 'Anne', '', '', '', '', '', '', '', '', '06/04/1979', '', '', '', '', '', 'CDI', 1, '159'),
(209, '', 1, 'VENJEAN', 'Philippe', '', '', '', '', '', '', '', '', '05/01/2004', '', '', '', '', '', 'CDI', 1, '159'),
(210, '', 2, 'VIGAN', 'Corinne', '', '', '', '', '', '', '', '', '29/11/1999', '', '', '', '', '', 'CDI', 1, '159'),
(211, '', 1, 'VIVIEN', 'HervÃ©', '', '', '', '', '', '', '', '', '02/12/2013', '', '', '', '', '', 'CDI', 1, '136.4'),
(212, '', 2, 'VIVION', 'Beatrice', '', '', '', '', '', '', '', '', '16/11/2009', '', '', '', '', '', 'CDI', 1, '157.4'),
(213, '', 2, 'YEKULI', 'Aurelie', '', '', '', '', '', '', '', '', '17/11/2007', '', '', '', '', '', 'CDI', 1, '159'),
(214, '', 2, 'MAQUIN', 'CATHERINE', '', '', '', '', '', '', '', '', '', '05-03-2012', '1', '', '', 'RETRAITE', '', 1, '153'),
(215, '', 1, 'JULIENNE', 'THEO', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '159'),
(216, '', 2, 'PRUNAUX-CAZER', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDD', 1, '152.6'),
(217, '', 2, 'YVON', 'ANAELLE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDD', 1, '151'),
(218, '', 2, 'GAZE', 'CHRISTELLE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDD', 1, '143'),
(219, '', 1, 'RUBIO', 'G.MICHEL', '', '', '', '', '', '', '', '', '', '01-01-2013', '1', '', '', '', '', 1, '159'),
(220, '', 1, 'INCONNU', 'INCONNU', '', '', '', '', '', '', '', '', '', '', '1', '', '', 'SALARIE DONT LE NOM N''A PAS ETE RELEVE LORS D''UN ACHAT AU C.E REGLE EN ESPECES', '', 1, '159'),
(222, '', 2, 'VOISINE', 'ANNIE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDD', 1, '159'),
(223, '', 2, 'ROUE', 'VIRGINIE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '???', 1, '159'),
(224, '', 2, 'LANGLOIS', 'VALERIE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '159'),
(225, '', 1, 'GLORIA (SERVICE+)', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDD', 1, '159'),
(226, '', 1, 'CARAYRE', 'STEPHANE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDD', 1, '159'),
(227, '', 2, 'FUSTINONIE', 'CLAIRE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '159'),
(228, '', 2, 'GUILLAUME', 'PASCALE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '159'),
(229, '', 2, 'CHARREAU', 'CELINE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDD MULTIPLES', 1, '159'),
(230, '', 1, 'DAVY', 'ANGELIQUE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDD MULTIPLES', 1, '159'),
(231, '', 2, 'LEDEIST', 'CYNDIE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '159'),
(232, '', 1, 'Personnel rattach&eacute;', '', '', '', '', '', '', '', '', '', '01-01-2015', '', '1', '', '', '', '', 1, '0');

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
(1, '1422918000', '479644603', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOUET.', '', '2.5', 0),
(2, '1422918000', '6615541', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '2.5', 0),
(4, '1425337200', '0000395', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Lasne Allison.', '', '24', 0),
(5, '1422918000', '6615541', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET ELODIE.', '', '5', 0),
(6, '1425337200', '0000149', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LECLERC CAROLINE.', '', '12', 0),
(7, '1420153200', '9823959', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TELLANGER AXELLE.', '', '8.2', 0),
(8, '1422918000', '0000261', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JULIENNE THEO.', '', '7.1', 0),
(9, '1422918000', '225050008', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DELAUNAY DOMINIQUE.', '', '5', 0),
(10, '1422918000', '314518431', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MALINGE ANICETTE.', '', '5', 0),
(11, '1425340800', '0000271', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DELAREUX ISABELLE.', '', '30', 0),
(12, '1420239600', '470301956', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '12', 0),
(13, '1422918000', '603405749', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par HUIN SYLVIE.', '', '5', 0),
(14, '1425510000', '7588063', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bonfils Cecile.', '', '12', 0),
(15, '1420153200', '9823959', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TELLANGER AXELLE.', '', '24', 0),
(16, '1422918000', '192932266', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOUET.', '', '5', 0),
(17, '1420498800', '0000027', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Lebailly Emilie.', '', '12', 0),
(18, '1422918000', '391558950', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par SEHAQUI M.THERESE.', '', '5', 0),
(19, '1425510000', '7583568', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON C.', '', '5', 0),
(20, '1423090800', '6265074', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CIBRON C.', '', '5', 0),
(21, '1420498800', '6571572', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOUET A.', '', '36', 0),
(23, '1423090800', '6265074', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CIBRON CHRISTOPHE.', '', '2.5', 0),
(24, '1425513600', '7583568', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON C.', '', '2.5', 0),
(25, '1423090800', '0590234', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MENDONCA  MARIA FERNANDA.', '', '18', 0),
(27, '1423090800', '0003122', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GASTINEAU ISABELLE.', '', '18', 0),
(28, '1420498800', '6571572', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOUET A.', '', '199.8', 0),
(29, '1423090800', '00001698', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOURISSEAU AURORE.', '', '24', 0),
(30, '1420498800', '0000097', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAUSSION C.', '', '24', 0),
(31, '1420498800', '0347105', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de VIVIEN H.', '', '203.4', 0),
(32, '1425337200', '5240698', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERTEAU P.', '', '24', 0),
(33, '1420498800', '5240694', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERTEAU P.', '', '24', 0),
(34, '1423090800', '7588057', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BONFILS CECILE.', '', '24', 0),
(35, '1423522800', '4262949', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LATONNELLE ANNE.', '', '42', 0),
(36, '1425337200', '0008347', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GERARD A.', '', '54', 0),
(37, '1420498800', '743942498', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '24', 0),
(38, '1423522800', '4674058', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUIHO ODETTE.', '', '6', 0),
(39, '1425510000', '0000033', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PERDRIAU C.', '', '12', 0),
(40, '1420498800', '561390959', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '2.05', 0),
(41, '1420498800', '707122272', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '6', 0),
(42, '1425510000', '4597016', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE GAL B.', '', '12', 0),
(44, '1423522800', '0002401', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TREMBLAIS YVAN (CATHERINE).', '', '24', 0),
(45, '1420585200', '253828168', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '6', 0),
(46, '1425682800', '7015558', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEGER S.', '', '30', 0),
(47, '1420585200', '417326152', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '6', 0),
(48, '1423522800', '0002401', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TREMBLAIS YVAN (CATHERINE).', '', '15.75', 0),
(49, '1420585200', '5210906', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE BORGNE C.', '', '18', 0),
(50, '1420585200', '212139648', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '6', 0),
(52, '1425682800', '1318623', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de OLIVEAU Jean Rene.', '', '24.98', 0),
(53, '1423522800', '0002401', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TREMBLAIS Catherine.', '', '42.3', 0),
(54, '1420585200', '9362062', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHARREAU Helene.', '', '12', 0),
(55, '1425682800', '53096378', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROYER Catherine.', '', '57.38', 0),
(56, '1423522800', '9407351', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SEHAQUI M Therese.', '', '97.8', 0),
(57, '1420585200', '3995487', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RIVEREAU Anne Sophie.', '', '12', 0),
(58, '1425682800', '0797822', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PITHON Adeline.', '', '16.65', 0),
(59, '1423522800', '7003264', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de INCONNU INCONNU.', '', '35.9', 0),
(60, '1420585200', '9362062', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHARREAU Helene.', '', '2.15', 0),
(61, '1425682800', '0000343', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LECOMTE Ludivine.', '', '9.99', 0),
(62, '1423522800', '1546378', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de INCONNU INCONNU.', '', '30.95', 0),
(63, '1421103600', '2236539', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAQUIN CATHERINE.', '', '12', 0),
(64, '1425682800', '4583032', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOREAU Pascale.', '', '40.64', 0),
(65, '1421103600', '4674053', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUIHO Odette.', '', '6', 0),
(66, '1425682800', '839578166', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEAUMONT Bernadette.', '', '7.13', 0),
(67, '1426114800', '228323190', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par THEULIER Laure.', '', '18', 0),
(69, '1426114800', '759723996', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par DUPAS FranÃ§oise.', '', '8.6', 0),
(70, '1426114800', '412420802', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PRUDHOMME Celine.', '', '36', 0),
(71, '1421103600', '5103889', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BRARD Marie Pierre.', '', '36', 0),
(73, '1426114800', '437281022', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHATEAU Sandrine.', '', '5', 0),
(74, '1426114800', '368942107', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHATEAU Sandrine.', '', '5', 0),
(75, '1423522800', '8369238', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de OLIVEIRA Cecile.', '', '30.95', 0),
(76, '1426546800', '824439202', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par PETITEAU Sarah.', '', '24', 0),
(77, '1421103600', '9524903', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GAZE CHRISTELLE.', '', '30', 0),
(78, '1426719600', '912167719', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MENDONCA Maria Fernanda.', '', '12', 0),
(79, '1423522800', '134302987', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par FRANCFORT Catherine.', '', '24', 0),
(80, '1425682800', '8369238', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de OLIVEIRA Cecile.', '', '36.82', 0),
(81, '1426719600', '4597017', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE GAL Barbara.', '', '12', 0),
(82, '1421103600', '6905150', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEGER Sonia.', '', '24', 0),
(83, '1423522800', '254437654', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEAUMONT Bernadette.', '', '12', 0),
(84, '1426719600', '5655484', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COTTENCEAU Monique.', '', '24', 0),
(85, '1423522800', '5225914', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de THEULIER Laure.', '', '30', 0),
(86, '1421103600', '887288609', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GASTINEAU Isabelle.', '', '12', 0),
(87, '1426719600', '0004741', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE JEAN GaÃ«l.', '', '60', 0),
(88, '1421103600', '687577112', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHEIGNON Aurore.', '', '12', 0),
(89, '1426719600', '0004741', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE JEAN GaÃ«l.', '', '5', 0),
(90, '1425682800', '0000086', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEBAILLY Emilie.', '', '10.72', 0),
(91, '1426719600', '0004741', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE JEAN GaÃ«l.', '', '5', 0),
(93, '1421708400', '6828220', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROUSSE Maryvonne.', '', '5', 0),
(94, '1425682800', '8369224', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de OLIVEIRA Cecile.', '', '49.75', 0),
(95, '1426719600', '3096382', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROYER Catherine.', '', '31.05', 0),
(96, '1426719600', '3096382', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROYER Catherine.', '', '48.06', 0),
(97, '1421708400', '6828220', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROUSSE Maryvonne.', '', '2.5', 0),
(98, '1427151600', '2236545', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAQUIN CATHERINE.', '', '12', 0),
(99, '1421708400', '5271912', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BINOT Lucie.', '', '12', 0),
(100, '1427151600', '639687655', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par OLIVEAU Jean Rene.', '', '5', 0),
(101, '1427151600', '273131513', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par OLIVEAU Jean Rene.', '', '2.5', 0),
(102, '1421708400', '5140080', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COCHIN Yvon.', '', '124.2', 0),
(103, '1425682800', '4489165', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE CALVEZ Jocelyne.', '', '60', 0),
(104, '1427151600', '824253962', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par OLIVEAU Jean Rene.', '', '6', 0),
(105, '1427151600', '651212030', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEAUMONT Bernadette.', '', '3.65', 0),
(106, '1421708400', '7384659', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOULAY Jennifer.', '', '5', 0),
(107, '1427324400', '343218042', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BOUET Annette.', '', '12', 0),
(108, '1423609200', '6265076', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CIBRON Christophe.', '', '244', 0),
(110, '1427324400', '538075528', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par VIVION Beatrice.', '', '6', 0),
(111, '1421708400', '7384659', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOULAY Jennifer.', '', '2.5', 0),
(112, '1423695600', '0000410', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PRUNAUX-CAZER .', '', '24', 0),
(113, '1427324400', '7223246', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de POUTREL Sylvie.', '', '60', 0),
(114, '1421708400', '300583738', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par GUILLOT Claire.', '', '12', 0),
(115, '1425942000', '0799363', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BAILLY Michelle.', '', '36', 0),
(116, '1423695600', '0318270', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOREAU Sandra.', '', '24', 0),
(117, '1427324400', '7223247', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de POUTREL Sylvie.', '', '162', 0),
(118, '1422313200', '05354927001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BORE Marie Pierre.', '', '5', 0),
(119, '1427324400', '8024019', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BEAUMONT Bernadette.', '', '60.69', 0),
(120, '1423695600', '5308838', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PIEL Guylaine.', '', '24', 0),
(121, '1425942000', '0799363', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BAILLY Michelle.', '', '5', 0),
(122, '1422313200', '05354927001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BORE Marie Pierre.', '', '2.5', 0),
(123, '1427324400', '7395347', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COLAISSEAU Christine.', '', '50', 0),
(124, '1423695600', '980506549', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ABID/PLANCHENAULT Sylvie.', '', '24', 0),
(125, '1427752800', '0001764', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de NASRI Marion.', '', '12', 0),
(126, '1423695600', '473911196', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MAUSSION Christine.', '', '2.05', 0),
(127, '1427752800', '7583571', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON Christine.', '', '18', 0),
(128, '1423695600', '851488411', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par MAUSSION Christine.', '', '4.3', 0),
(129, '1427752800', '7583571', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TAUDON Christine.', '', '21.6', 0),
(130, '1423695600', '569986884', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par BEAUMONT Bernadette.', '', '7.1', 0),
(131, '1427752800', '0267679', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE CALVEZ Jocelyne.', '', '21.6', 0),
(132, '1425942000', '0799363', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BAILLY Michelle.', '', '5', 0),
(133, '1424127600', '6718971', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RUBIO G.MICHEL.', '', '36', 0),
(134, '1427752800', '0130361', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COCHIN Yvon.', '', '50.4', 0),
(135, '1427752800', '0130359', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COCHIN Yvon.', '', '12', 0),
(136, '1424127600', '6718971', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RUBIO G.MICHEL.', '', '198.2', 0),
(137, '1422313200', '681948962', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHARRIER Elena.', '', '2.5', 0),
(139, '1424127600', '0002412', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHAILLOU Sandra.', '', '198.2', 0),
(140, '1422313200', '472891849', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHARRIER Elena.', '', '5', 0),
(141, '1424127600', '4888598', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de YVON ANAELLE.', '', '30', 0),
(142, '1425942000', '000298', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TESSIER Florence.', '', '24', 0),
(143, '1424127600', '0000039', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEBAILLY Emilie.', '', '36', 0),
(144, '1422486000', '4267947', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LATONNELLE Anne.', '', '18', 0),
(145, '1426114800', '9823976', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TELLANGER Axelle.', '', '12', 0),
(146, '1424127600', '5439121', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GAUDELET Maryline.', '', '12', 0),
(147, '1424127600', '4674060', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUIHO Odette.', '', '5', 0),
(148, '1426114800', '9823976', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TELLANGER Axelle.', '', '12.9', 0),
(149, '1424127600', '0127334', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ROUSSE Maryvonne.', '', '6', 0),
(150, '1424127600', '0141780', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE Pascale.', '', '12', 0),
(152, '1422486000', '0141773', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE Pascale.', '', '6', 0),
(153, '1426114800', '0000307', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COCHIN Yvon.', '', '12', 0),
(154, '1422313200', '8369223', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de OLIVEIRA Cecile.', '', '49.75', 0),
(155, '1422486000', '8310544', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHEIGNON Aurore.', '', '12', 0),
(156, '1426114800', '0141735', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE Pascale.', '', '22.8', 0),
(157, '1424300400', '9524908', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GAZE CHRISTELLE.', '', '30', 0),
(158, '1424300400', '0003990', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GASTINEAU Isabelle.', '', '66', 0),
(159, '1422486000', '8310545', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHEIGNON Aurore.', '', '33.3', 0),
(160, '1422486000', '0000030', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PERDRIAU Carine.', '', '12', 0),
(161, '1424300400', '7414678', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DIJOLS Christine.', '', '12', 0),
(162, '1422486000', '4653012', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TESSIE Francoise.', '', '12', 0),
(163, '1422486000', '9407352', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SEHAQUI M Therese.', '', '84', 0),
(165, '1424905200', '391466818', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par Personnel rattachÃ© .', '', '2.15', 0),
(166, '1422486000', '4644063', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOUTREUX Anne Sophie.', '', '18', 0),
(167, '1424300400', '3289224', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de HENNE Teresa.', '', '124.2', 0),
(168, '1422486000', '4644063', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOUTREUX Anne Sophie.', '', '35.12', 0),
(169, '1424732400', '9959250', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET Elodie.', '', '12', 0),
(170, '1422486000', '7588051', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BONFILS Cecile.', '', '24', 0),
(172, '1424732400', '9959250', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SOULET Elodie.', '', '10.8', 0),
(173, '1424732400', '7384660', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOULAY Jennifer.', '', '120.6', 0),
(174, '1425682800', '8891585', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COLAISSEAU Christine.', '', '30.5', 0),
(175, '1422054000', '6265085', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CIBRON Christophe.', '', '198.2', 0),
(177, '1424732400', '429967416', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par THEULIER Laure.', '', '70.2', 0),
(178, '1422486000', '008342', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GERARD Alexandra.', '', '42', 0),
(179, '1425682800', '7395348', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de COLAISSEAU Christine.', '', '56', 0),
(180, '1424905200', '0000737', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SEGARRA Agnes.', '', '24', 0),
(181, '1424905200', '4583031', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MOREAU Pascale.', '', '30', 0),
(182, '1424905200', '5749877', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PICHERIT Valerie.', '', '36', 0),
(183, '1425942000', '0064765', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de THEULIER Laure.', '', '30', 0),
(184, '1422486000', '0681524', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BEAUMONT Bernadette.', '', '18', 0),
(185, '1424905200', '989966826', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ABID/PLANCHENAULT Sylvie.', '', '24', 0),
(186, '1424905200', '990517833', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par COLAISSEAU Christine.', '', '24', 0),
(187, '1422486000', '5240695', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERTEAU Patricia.', '', '24', 0),
(188, '1422486000', '5668279', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de PASCUITO Isabelle.', '', '60', 0),
(189, '1422486000', '390658657', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CHARRIER Elena.', '', '12', 0),
(192, '1422486000', '657617424', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TREMBLAIS Catherine.', '', '4.1', 0),
(193, '1422486000', '732857815', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TAUNAY M Laure.', '', '30', 0),
(194, '1424300400', '0141781', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DENECHERE Pascale.', '', '18', 0),
(195, '1424300400', '4517940', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHEVREUX Melanie.', '', '36', 0),
(196, '1422486000', '0008342', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GERARD Alexandra.', '', '4', 0),
(197, '1422313200', '73289218', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de HENNE Teresa.', '', '86.85', 0),
(198, '1422486000', '0000123', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CARRE Audrey.', '', '92', 0),
(199, '1422313200', '3995479', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RIVEREAU Anne Sophie.', '', '65', 0),
(200, '1422313200', '3740036', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MONNIER Sarah.', '', '65', 0),
(201, '1422313200', '0681500', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BEAUMONT Bernadette.', '', '16.24', 0),
(202, '1422313200', '0681500', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BEAUMONT Bernadette.', '', '24', 0),
(203, '1420585200', '6165238', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165238 en date du 07-01-2015.', '295.6', '', 1),
(204, '1420585200', '0003066', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GASTINEAU Isabelle.', '', '18', 0),
(205, '1420585200', '0004554', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE JEAN GaÃ«l.', '', '36', 0),
(206, '1422572400', '6165243', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165243 en date du 30-01-2015.', '312.3', '', 1),
(207, '1421103600', '6165240', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165240 en date du 13-01-2015.', '182.15', '', 1),
(208, '1423609200', '6165245', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165245 en date du 11-02-2015.', '166.1', '', 1),
(209, '1423090800', '0003084', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GASTINEAU Isabelle.', '', '18', 0),
(210, '1423609200', '6165246', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165246 en date du 11-02-2015.', '165.3', '', 1),
(211, '1424127600', '6859737', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859737 en date du 17-02-2015.', '131', '', 1),
(212, '1423695600', '5411145', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GILBERT Lucie.', '', '36', 0),
(213, '1425682800', '0000738', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SEGARRA Agnes.', '', '16.15', 0),
(214, '1427666400', '6859746', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859746 en date du 30-03-2015.', '270', '', 1),
(215, '1425682800', '6859741', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859741 en date du 07-03-2015.', '342.2', '', 1),
(216, '1424127600', '0267678', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LE CALVEZ Jocelyne.', '', '30', 0),
(217, '1427666400', '6859745', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859745 en date du 30-03-2015.', '197.88', '', 1),
(218, '1422572400', '6165244', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165244 en date du 30-01-2015.', '327.32', '', 1),
(219, '1423695600', '6165248', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6165248 en date du 12-02-2015.', '138', '', 1),
(220, '1425682800', '6859739', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859739 en date du 07-03-2015.', '563.2', '', 1),
(221, '1425682800', '6859742', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 6859742 en date du 07-03-2015.', '100.3', '', 1),
(222, '1425682800', '68559740', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 68559740 en date du 07-03-2015.', '172.8', '', 1);

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
  MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
  MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
  MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;
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
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
  MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
  MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
  MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
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
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
  MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
  MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
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
  MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
  MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
  MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
