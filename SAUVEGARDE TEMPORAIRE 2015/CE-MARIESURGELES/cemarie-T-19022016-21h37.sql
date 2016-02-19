-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Ven 19 Février 2016 à 21:37
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cemarie`
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
(1, '20-04-2015', 9, '3', '126', '5124958213'),
(2, '20-04-2015', 10, '4', '168', '297961575'),
(3, '02-06-2015', 12, '649', '649', '1468989635'),
(6, '03-06-2015', 14, '1', '60', '7580304490'),
(7, '05-06-2015', 15, '30.95', '30.95', '5469853515'),
(8, '30-06-2015', 15, '337.45', '337.45', '7585362722'),
(9, '01-07-2015', 17, '312', '312', '295267627');

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
(2, 37, 'CORNILLEAU', 'JULES JOSEPH MICHEL', '15/04/2009', '99999999'),
(3, 37, 'CORNILLEAU', 'MALO', '04/09/2013', '99999999'),
(4, 11, 'BARZIC', 'CAMILLE MARC MAXIME', '23/10/2014', '99999999'),
(5, 11, 'BARZIC', 'GABRIEL BARNABE DAVI', '02/10/2010', '99999999'),
(6, 24, 'BOURREAU', 'ALEXIA', '24/06/1996', '99999999'),
(7, 24, 'BOURREAU', 'CYRIL', '18/06/1999', '99999999'),
(8, 58, 'FOURNIER', 'CYRIL', '17/08/1976', '99999999'),
(9, 58, 'FOURNIER', 'SINDY', '15/06/1981', '99999999'),
(10, 85, 'LETETREL', 'LOUIS', '31/12/2011', '99999999'),
(11, 22, 'BOUQUET', 'ANAIS KARINE RACHEL CHARLIE', '08/01/2015', '99999999'),
(12, 22, 'BOUQUET', 'LENA PATRICIA MICHELE', '15/03/2013', '99999999'),
(13, 51, 'DUBIER', 'ANTONIN', '16/06/2006', '99999999'),
(14, 51, 'DUBIER', 'LEO', '06/04/1994', '99999999'),
(15, 98, 'MENARD', 'EVA CASSANDRA', '02/06/2012', '99999999'),
(16, 98, 'MENARD', 'MELISSA CLARA', '18/04/2014', '99999999'),
(17, 139, 'VIOU', 'ALEXENDRA', '08/09/1978', '99999999'),
(18, 139, 'VIOU', 'JOCELYN', '31/08/1992', '99999999'),
(19, 139, 'VIOU', 'MANON', '30/11/1993', '99999999'),
(20, 139, 'VIOU', 'TEDDY', '08/02/1980', '99999999'),
(21, 139, 'VIOU', 'YORICK', '19/08/1989', '99999999'),
(22, 66, 'JACQUET', 'BENJAMIN', '23/11/2005', '99999999'),
(23, 40, 'COURLIVANT', 'MELVIN', '19/07/1997', '99999999'),
(24, 100, 'AGUILLON', 'MICKAEL', '21/07/1979', '99999999'),
(25, 41, 'COURLIVANT', 'ADELAIDE', '28/01/1990', '99999999'),
(26, 41, 'COURLIVANT', 'ANGELINA', '26/07/1993', '99999999'),
(27, 42, 'COURLIVANT', 'ADELAIDE', '28/01/1990', '99999999'),
(28, 42, 'COURLIVANT', 'ANGELINA', '26/07/1993', '99999999'),
(29, 70, 'JOURDAINE', 'ALEXANDRE', '02/11/1994', '99999999'),
(30, 70, 'JOURDAINE', 'AUDREY', '07/11/1991', '99999999'),
(31, 70, 'JOURDAINE', 'MANON', '03/03/2002', '99999999'),
(32, 70, 'JOURDAINE', 'ROMAIN', '01/03/1988', '99999999'),
(33, 17, 'BIGOT', 'JONATHAN', '19/07/1993', '99999999'),
(34, 17, 'BIGOT-GACHET', 'LUCAS FERNAND JULIEN', '16/07/2013', '99999999'),
(35, 17, 'BIGOT-GACHET', 'NOAH LAURENT GILLES', '30/07/2011', '99999999'),
(36, 17, 'BIGOT-GACHET', 'TH?O LOUIS GILLES', '20/07/2006', '99999999'),
(37, 105, 'FOURRIER', 'JESSIE MYRIAM MAGALIE', '07/05/2012', '99999999'),
(38, 105, 'FOURRIER', 'TITO BRUNO PATRICE', '12/09/2008', '99999999'),
(39, 67, 'JARSON', 'BORIS', '12/12/2012', '99999999'),
(40, 67, 'JARSON', 'CHRISTEL', '24/05/2007', '99999999'),
(41, 4, 'ANDOUARD', 'AURELIEN', '20/03/1993', '99999999'),
(42, 4, 'ANDOUARD', 'CORALIE', '25/03/1991', '99999999'),
(43, 4, 'ANDOUARD', 'FLAVIE', '10/02/1989', '99999999'),
(44, 5, 'ANDOUARD', 'JULIEN', '14/01/1986', '99999999'),
(45, 5, 'ANDOUARD', 'SEVERINE', '16/05/1990', '99999999'),
(46, 7, 'AUBOURG', 'LUCIE', '11/08/1979', '99999999'),
(47, 34, 'CHAUVEAU', 'JEREMY', '19/02/1989', '99999999'),
(48, 34, 'CHAUVEAU', 'TONY', '23/02/1985', '99999999'),
(49, 8, 'BARDET', 'JONATHAN', '28/05/1991', '99999999'),
(50, 8, 'BARDET', 'MAXIME', '25/12/1995', '99999999'),
(51, 8, 'BARDET', 'PRISCILLA', '19/08/1998', '99999999'),
(52, 10, 'BARRET', 'ADELE CLOTILDE MARIE', '24/12/2006', '99999999'),
(53, 10, 'BARRET', 'AMBRE GEORGINA CELINE', '09/09/2011', '99999999'),
(54, 10, 'BARRET', 'ARTHUR MALO LEON', '13/05/2005', '99999999'),
(55, 9, 'BARETEAU', 'MARIE', '21/01/1986', '99999999'),
(56, 9, 'BARETEAU', 'THOMAS', '09/12/1982', '99999999'),
(57, 12, 'BATTAIS', 'ANAIS', '13/04/1988', '99999999'),
(58, 12, 'BATTAIS', 'ANTHONY', '08/09/1985', '99999999'),
(59, 12, 'BATTAIS', 'LAURA LISA MANON', '25/11/2003', '99999999'),
(60, 93, 'MARIET', 'ALEXENDRA JULIE AURE', '06/11/2000', '99999999'),
(61, 93, 'MARIET', 'NICOLAS', '21/11/1996', '99999999'),
(62, 93, 'MARIET', 'SEBASTIEN', '26/11/1993', '99999999'),
(63, 14, 'DUGUEE', 'LISE', '30/04/1991', '99999999'),
(64, 13, 'BAZANTE', 'JUSTINE', '21/10/1995', '99999999'),
(65, 13, 'RENAULT', 'EDWIGE', '27/06/1985', '99999999'),
(66, 13, 'RENAULT', 'MATHIEU', '28/12/1987', '99999999'),
(67, 15, 'BENOIT', 'OCEANE', '03/03/1994', '99999999'),
(68, 16, 'BERTHELOT', 'KATIA', '19/04/1980', '99999999'),
(69, 16, 'BERTHELOT', 'SONIA', '25/11/1982', '99999999'),
(70, 19, 'BOISSEAU', 'ANGELINA', '29/07/1983', '99999999'),
(71, 19, 'BOISSEAU', 'MICKAEL', '12/02/1990', '99999999'),
(72, 21, 'BOUFFET', 'ANAIS', '24/12/1989', '99999999'),
(73, 21, 'BOUFFET', 'BORIS', '16/04/1987', '99999999'),
(74, 21, 'BOUFFET', 'LUDOVIC', '24/03/1983', '99999999'),
(75, 23, 'BOURLIERE', 'ALEXIS', '04/07/1988', '99999999'),
(76, 23, 'BOURLIERE', 'ANTHONY', '06/05/1986', '99999999'),
(77, 23, 'BOURLIERE', 'CINDY', '06/05/1980', '99999999'),
(78, 23, 'BOURLIERE', 'MALLORIE', '11/10/1982', '99999999'),
(79, 26, 'BRUNEAU', 'JONATHAN', '28/05/1985', '99999999'),
(80, 26, 'BRUNEAU', 'STEPHANIE', '02/09/1980', '99999999'),
(81, 26, 'BRUNEAU', 'TONY', '19/06/1982', '99999999'),
(82, 25, 'BRONDEAU', 'CHRISTOPHER', '04/04/1995', '99999999'),
(83, 25, 'LEONARDI', 'CEDRIC', '15/04/1986', '99999999'),
(84, 28, 'CAILLEAUD', 'LUCIE LEA', '22/03/2000', '99999999'),
(85, 28, 'CAILLEAUD', 'MALORIE', '08/09/1985', '99999999'),
(86, 28, 'CAILLEAUD', 'MAUD', '13/10/1991', '99999999'),
(87, 29, 'GAMELAS', 'CINDY', '07/08/1986', '99999999'),
(88, 29, 'GAMELAS', 'JULIEN', '19/09/1991', '99999999'),
(89, 30, 'CALMET', 'ALICE', '30/10/1985', '99999999'),
(90, 30, 'CALMET', 'ALLAN', '28/09/1989', '99999999'),
(91, 30, 'CALMET', 'CATHY', '24/05/1981', '99999999'),
(92, 112, 'PASQUIER', 'BENJAMIN', '27/10/1990', '99999999'),
(93, 112, 'PASQUIER', 'BRUNO', '19/03/1977', '99999999'),
(94, 112, 'PASQUIER', 'STEPHANE', '19/10/1982', '99999999'),
(95, 83, 'LELIEVRE', 'LAURA', '06/05/1988', '99999999'),
(96, 83, 'LELIEVRE', 'NICOLAS', '11/08/1984', '99999999'),
(97, 83, 'LELIEVRE', 'STEPHANIE', '30/08/1981', '99999999'),
(98, 32, 'CHAIGNEAU', 'HONORINE MARIE LUCIE', '08/03/2001', '99999999'),
(99, 32, 'CHAIGNEAU', 'LAURA MARIE NICOLE', '10/04/1993', '99999999'),
(100, 32, 'CHAIGNEAU', 'MARINE MARIE LAURA', '21/05/1997', '99999999'),
(101, 32, 'CHAIGNEAU', 'YOHANN YANNICK GUY', '04/01/1995', '99999999'),
(102, 33, 'CHASSEPORT', 'CHARLOTTE', '13/11/1987', '99999999'),
(103, 33, 'CHASSEPORT', 'MAXIME', '02/04/1995', '99999999'),
(104, 33, 'CHASSEPORT', 'VINCENT HUGO ARTHUR', '10/06/2002', '99999999'),
(105, 36, 'CHICOISNE', 'GUILLAUME', '05/08/1991', '99999999'),
(106, 36, 'CHICOISNE', 'GWENDOLINE', '17/04/1988', '99999999'),
(107, 36, 'CHICOISNE', 'TIPHANY', '25/06/1994', '99999999'),
(108, 39, 'VEGER', 'ALISSON', '05/02/1983', '99999999'),
(109, 39, 'VEGER', 'EMILIE', '25/08/1986', '99999999'),
(110, 39, 'VEGER', 'YANNIS', '03/05/1988', '99999999'),
(111, 44, 'DA COSTA', 'BENJAMIN', '07/06/1992', '99999999'),
(112, 44, 'DA COSTA', 'LORY LUNA', '11/10/2001', '99999999'),
(113, 44, 'DA COSTA', 'STACY', '31/01/1995', '99999999'),
(114, 46, 'DELIGNE', 'CLEMENCE', '10/09/1995', '99999999'),
(115, 46, 'DELIGNE', 'JULIEN', '23/07/1992', '99999999'),
(116, 47, 'DERBANNE', 'ESTELLE', '23/09/1990', '99999999'),
(117, 47, 'DERBANNE', 'NICOLAS', '22/07/1998', '99999999'),
(118, 47, 'MEUNIER', 'AURELIEN', '03/11/1988', '99999999'),
(119, 47, 'MEUNIER', 'MARINA', '13/07/1986', '99999999'),
(120, 46, 'DAVID', 'JOHANNA', '12/03/1996', '99999999'),
(121, 46, 'DAVID', 'LAURA', '28/09/1991', '99999999'),
(122, 49, 'DEZE', 'AMANDINE', '25/06/1991', '99999999'),
(123, 49, 'DEZE', 'BAPTISTE HENRI ERIC', '08/07/2002', '99999999'),
(124, 49, 'DEZE', 'J.FRANCOIS', '28/06/1988', '99999999'),
(125, 49, 'DEZE', 'THEO', '15/01/1996', '99999999'),
(126, 48, 'DEVEAUX', 'FLORIAN', '22/11/1996', '99999999'),
(127, 53, 'FUMOLEAU', 'MELANIE LAURENCE JUS', '08/03/1998', '99999999'),
(128, 54, 'LACOSTE', 'EMMA', '25/12/2003', '99999999'),
(129, 54, 'LACOSTE', 'THIBAUT', '18/04/2000', '99999999'),
(130, 55, 'ETAVARD', 'LYDIE', '02/06/1979', '99999999'),
(131, 55, 'ETAVARD', 'TEDDY', '03/10/1985', '99999999'),
(132, 56, 'FERRAULT', 'ANTOINE', '25/04/1994', '99999999'),
(133, 56, 'FERRAULT', 'JULIE', '27/05/1987', '99999999'),
(134, 57, 'FORGET', 'ALEXANDRE', '03/03/1993', '99999999'),
(135, 57, 'FORGET', 'ANGELIQUE', '12/01/1985', '99999999'),
(136, 57, 'FORGET', 'JEROME', '11/12/1982', '99999999'),
(137, 60, 'FOURRIER', 'JESSIE MYRIAM MAGALIE', '07/05/2012', '99999999'),
(138, 60, 'FOURRIER', 'TITO BRUNO PATRICE', '12/09/2008', '99999999'),
(139, 61, 'DERBANNE', 'ESTELLE', '23/09/1990', '99999999'),
(140, 61, 'GIRARD', 'AURELIEN', '29/06/1990', '99999999'),
(141, 62, 'HUPONT', 'EMILIE', '20/01/1987', '99999999'),
(142, 62, 'HUPONT', 'JUSTINE', '06/07/1988', '99999999'),
(143, 62, 'HUPONT', 'MATHIEU', '07/07/1992', '99999999'),
(144, 62, 'HUPONT', 'YOHAN', '10/06/1983', '99999999'),
(145, 63, 'GRABKO', 'AURELIE', '19/11/1984', '99999999'),
(146, 63, 'GRABKO', 'VIRGINIE', '17/05/1981', '99999999'),
(147, 127, 'GROISET', 'ROMAIN', '23/01/1986', '99999999'),
(148, 71, 'JOUSSE', 'DAMIEN FREDERIC', '25/09/2003', '99999999'),
(149, 71, 'JOUSSE', 'DORIAN', '11/12/1996', '99999999'),
(150, 64, 'HAMELIN', 'AXEL FRANCOIS MICHEL', '27/03/1997', '99999999'),
(151, 64, 'HAMELIN', 'EMMA ANNIE CHRISTINE', '26/10/2000', '99999999'),
(152, 64, 'HAMELIN', 'ETHAN AXEL CYRILLE', '19/04/2004', '99999999'),
(153, 65, 'DELAVEAU', 'MATHEO YANNICK', '17/12/2004', '99999999'),
(154, 65, 'DELAVEAU', 'PRESCILLIA', '23/11/1994', '99999999'),
(155, 65, 'HERSARD', 'KEVIN', '14/08/1990', '99999999'),
(156, 65, 'HERSARD', 'YONNI', '14/08/1990', '99999999'),
(157, 68, 'JAULON', 'ANDY PHILIPPE MAURIC', '14/03/1999', '99999999'),
(158, 68, 'JAULON', 'ETHAN PHILIPPE NICOL', '22/09/2004', '99999999'),
(159, 68, 'JAULON', 'QUENTIN', '21/11/1991', '99999999'),
(160, 69, 'JAUNEAU', 'CELINE', '16/11/1992', '99999999'),
(161, 69, 'JAUNEAU', 'VIRGINIE', '31/03/1990', '99999999'),
(162, 103, 'MIGNOT', 'DEBORAH', '09/03/1985', '99999999'),
(163, 103, 'MIGNOT', 'DOROTHEE', '07/04/1987', '99999999'),
(164, 103, 'MIGNOT', 'ROMAIN', '13/07/1989', '99999999'),
(165, 72, 'JOUSSE', 'ANTHONY', '30/07/1996', '99999999'),
(166, 72, 'JOUSSE', 'EMERICK', '13/12/2001', '99999999'),
(167, 73, 'JUBERT', 'JEREMY', '25/06/1994', '99999999'),
(168, 73, 'JUBERT', 'JULIE', '12/10/1989', '99999999'),
(169, 73, 'JUBERT', 'LUCILE', '12/04/1993', '99999999'),
(170, 75, 'LACHAT', 'CLAIRE ODILE MARCELL', '26/02/1998', '99999999'),
(171, 75, 'LACHAT', 'VALENTIN', '06/03/1993', '99999999'),
(172, 76, 'LACQUEMENT', 'CEDRIC', '15/01/1980', '99999999'),
(173, 76, 'LACQUEMENT', 'JULIEN', '13/11/1987', '99999999'),
(174, 76, 'LACQUEMENT', 'MIGUEL', '09/12/1976', '99999999'),
(175, 77, 'BLANDIN', 'JULIEN', '20/03/1989', '99999999'),
(176, 77, 'LAFRANCE', 'CINDY', '03/06/1983', '99999999'),
(177, 78, 'LAFRANCE', 'JENNIFER', '05/05/1987', '99999999'),
(178, 80, 'LEBLED', 'CHARLES', '06/06/1981', '99999999'),
(179, 50, 'DROUINEAU', 'LAETITIA', '11/09/1989', '99999999'),
(180, 50, 'DROUINEAU', 'MARINE', '28/06/1995', '99999999'),
(181, 81, 'FOVET', 'AMELIE CORALIE FIONA', '05/09/1998', '99999999'),
(182, 81, 'FOVET', 'DORINE', '24/09/1990', '99999999'),
(183, 86, 'LETROUX', 'CEDRIC', '05/07/1979', '99999999'),
(184, 86, 'LETROUX', 'DAMIEN', '01/04/1983', '99999999'),
(185, 87, 'LIHOREAU', 'EDWIGE', '25/07/1984', '99999999'),
(186, 87, 'LIHOREAU', 'REMI', '31/01/1989', '99999999'),
(187, 88, 'LIPHARDT', 'GAETAN', '05/05/1986', '99999999'),
(188, 88, 'LIPHARDT', 'LUCIE', '02/02/1983', '99999999'),
(189, 84, 'LEROUX', 'AMANDINE', '23/05/1985', '99999999'),
(190, 84, 'LEROUX', 'FABIEN', '01/04/1982', '99999999'),
(191, 84, 'LEROUX', 'LAURENCE', '03/06/1977', '99999999'),
(192, 84, 'LEROUX', 'NATHALIE', '16/04/1979', '99999999'),
(193, 89, 'LORMIER', 'DAVID', '26/07/1982', '99999999'),
(194, 89, 'LORMIER', 'LUCIE', '15/06/1986', '99999999'),
(195, 89, 'LORMIER', 'NICOLAS', '10/11/1980', '99999999'),
(196, 89, 'LORMIER', 'XAVIER', '29/08/1989', '99999999'),
(197, 90, 'LORMIER', 'LUCAS MAURICE', '21/04/2007', '99999999'),
(198, 142, 'WANGON', 'DORIAN FRANCOIS', '18/09/2003', '99999999'),
(199, 142, 'WANGON', 'THOMAS DIDIER PATRIC', '23/03/1999', '99999999'),
(200, 141, 'MARMIN', 'NATACHA', '15/03/1980', '99999999'),
(201, 94, 'MARMIN', 'JEROME JACQUES RAYMO', '11/01/2001', '99999999'),
(202, 94, 'MARMIN', 'THEOPHILE JEAN-CLAUD', '17/11/2005', '99999999'),
(203, 95, 'MARTIN', 'ALICE ALBANE', '24/05/2006', '99999999'),
(204, 95, 'MARTIN', 'MAXENCE SIMON', '15/12/2003', '99999999'),
(205, 96, 'MASSON', 'BRICE LOUIS MATTIEU', '25/06/1997', '99999999'),
(206, 97, 'MASSON', 'ALEXANDRE', '12/07/1997', '99999999'),
(207, 97, 'MASSON', 'AURELIE', '15/01/1992', '99999999'),
(208, 97, 'MASSON', 'ROMAIN HENRI', '12/11/2003', '99999999'),
(209, 138, 'DERBANNE', 'NICOLAS', '22/07/1998', '99999999'),
(210, 138, 'MEUNIER', 'AURELIEN', '03/11/1988', '99999999'),
(211, 138, 'MEUNIER', 'MARINA', '13/07/1986', '99999999'),
(212, 52, 'DUMESNIL', 'JULIE', '15/06/1985', '99999999'),
(213, 104, 'MONJAL', 'JULIE', '16/02/1988', '99999999'),
(214, 104, 'MONJAL', 'MAXIME', '09/06/1990', '99999999'),
(215, 106, 'MOREAU', 'DAMYEN RAPHAEL AUREL', '08/12/1998', '99999999'),
(216, 106, 'MOREAU', 'JULYEN', '26/01/1996', '99999999'),
(217, 106, 'MOREAU', 'LYSA MANON JUSTYNE', '11/10/2001', '99999999'),
(218, 43, 'CREPEAU', 'EMILIE', '13/01/1986', '99999999'),
(219, 43, 'CREPEAU', 'JENNY', '13/01/1983', '99999999'),
(220, 108, 'NAUDIN', 'EMELINE', '08/02/1994', '99999999'),
(221, 108, 'NAUDIN', 'LUCIE EMELINE LEA', '28/04/1999', '99999999'),
(222, 111, 'DUVEAU', 'CHRISTOPHER', '28/01/1985', '99999999'),
(223, 111, 'DUVEAU', 'JONATHAN', '08/09/1982', '99999999'),
(224, 111, 'DUVEAU', 'MARION', '09/11/1990', '99999999'),
(225, 111, 'DUVEAU', 'PRISCILLA', '29/03/1988', '99999999'),
(226, 111, 'OLIVIER', 'DAVID', '01/01/1982', '99999999'),
(227, 111, 'OLIVIER', 'KAREN MELODY', '04/11/1999', '99999999'),
(228, 111, 'OLIVIER', 'MATHIEU', '29/11/1989', '99999999'),
(229, 111, 'OLIVIER', 'THOMAS', '17/11/1987', '99999999'),
(230, 113, 'PELTIER', 'DAVID', '22/09/1982', '99999999'),
(231, 113, 'PELTIER', 'NICOLAS', '19/03/1989', '99999999'),
(232, 113, 'PELTIER', 'PAULINE', '25/01/1994', '99999999'),
(233, 20, 'BORBEAU', 'NICOLAS', '11/09/1981', '99999999'),
(234, 20, 'BORBEAU', 'THOMAS', '12/11/1985', '99999999'),
(235, 110, 'PHELIPOT', 'AUDREY', '22/01/1986', '99999999'),
(236, 114, 'PHELIPOT', 'AUDREY', '22/01/1986', '99999999'),
(237, 115, 'PIEDOIS', 'LILOU AURELIE JULIE', '18/06/2008', '99999999'),
(238, 115, 'PIEDOIS', 'TOM NICOLAS', '12/02/2003', '99999999'),
(239, 117, 'POUPARD', 'BERENGERE', '02/10/1988', '99999999'),
(240, 117, 'POUPARD', 'FLORENT', '27/09/1983', '99999999'),
(241, 118, 'PRUNIER', 'ADRIEN', '26/11/1990', '99999999'),
(242, 118, 'PRUNIER', 'ANTOINE', '31/01/1987', '99999999'),
(243, 119, 'REDUREAU', 'ADELINE', '15/02/1988', '99999999'),
(244, 119, 'REDUREAU', 'CINDY', '16/07/1980', '99999999'),
(245, 123, 'RICHARD', 'AUDREY MAEVA', '03/02/1997', '99999999'),
(246, 123, 'RICHARD', 'FABRICE ERIC SERGE', '19/06/1979', '99999999'),
(247, 123, 'RICHARD', 'SABRINA CHANTAL FRAN', '08/07/1981', '99999999'),
(248, 123, 'RICHARD', 'VANESSA DEBORAH STEP', '27/02/1987', '99999999'),
(249, 120, 'REDUREAU', 'ADELINE', '15/02/1988', '99999999'),
(250, 120, 'REDUREAU', 'CINDY', '16/07/1980', '99999999'),
(251, 121, 'REMY', 'EMILIE CECILE DESIRE', '20/02/1997', '99999999'),
(252, 31, 'CESBRON', 'AURELIE', '02/11/1980', '99999999'),
(253, 31, 'CESBRON', 'LUDIVINE', '18/12/1990', '99999999'),
(254, 31, 'CESBRON', 'SABRINA', '07/01/1983', '99999999'),
(255, 124, 'FRADIN', 'SAMUEL', '16/05/1976', '99999999'),
(256, 124, 'FRADIN', 'SEBASTIEN', '06/12/1973', '99999999'),
(257, 124, 'RICHARD', 'CHARLENE', '22/04/1982', '99999999'),
(258, 124, 'RICHARD', 'JONATHAN', '22/02/1981', '99999999'),
(259, 125, 'RICHARD', 'HELO?SE', '15/05/2013', '99999999'),
(260, 125, 'RICHARD', 'LILIA MARIE CHRISTIA', '30/03/2006', '99999999'),
(261, 125, 'RICHARD', 'NATHAN MICHEL MARC', '24/05/2010', '99999999'),
(262, 126, 'RICHER', 'ANTHONY', '03/11/1989', '99999999'),
(263, 126, 'RICHER', 'BETTY', '19/07/1986', '99999999'),
(264, 126, 'RICHER', 'EMILIE', '14/06/1983', '99999999'),
(265, 128, 'ROBINEAU', 'CHRISTOPHER', '26/01/1983', '99999999'),
(266, 128, 'ROBINEAU', 'JULIEN', '23/07/1985', '99999999'),
(267, 128, 'ROBINEAU', 'YANN', '27/02/1990', '99999999'),
(268, 129, 'ROCHE', 'CEDRIC', '23/06/1993', '99999999'),
(269, 129, 'ROCHE', 'JULIEN', '12/12/1990', '99999999'),
(270, 129, 'ROCHE', 'SANDY', '13/10/1995', '99999999'),
(271, 130, 'ROCHE', 'ANAIS NICOLE MARIE', '18/05/2000', '99999999'),
(272, 130, 'ROCHE', 'EVANN JACQUES GERARD', '27/09/2005', '99999999'),
(273, 130, 'ROCHE', 'VINCENT CHARLES LEON', '02/09/2002', '99999999'),
(274, 132, 'RUEL', 'JEREMY', '18/12/1989', '99999999'),
(275, 132, 'RUEL', 'NICOLAS', '30/01/1987', '99999999'),
(276, 133, 'TESSIER', 'VANESSA', '07/04/1982', '99999999'),
(277, 134, 'THIERRY', 'LAETITIA', '16/03/1985', '99999999'),
(278, 134, 'THIERRY', 'YOANN', '22/07/1987', '99999999'),
(279, 136, 'TRAVERS', 'ALEXANDRE ERIC FLORI', '16/12/2001', '99999999'),
(280, 136, 'TRAVERS', 'ESTELLE', '06/02/1997', '99999999'),
(281, 137, 'VERGER', 'ALEXIS PIERRE LEONAR', '28/10/1999', '99999999'),
(282, 137, 'VERGER', 'LUCIE MARIE', '23/02/2003', '99999999'),
(283, 140, 'ROCHARD', 'MAEVA', '21/07/1990', '99999999'),
(284, 143, 'WANGON', 'DORIAN FRANCOIS MARC', '18/09/2003', '99999999'),
(285, 143, 'WANGON', 'MARINE', '11/03/1988', '99999999'),
(286, 143, 'WANGON', 'THOMAS DIDIER PATRIC', '23/03/1999', '99999999'),
(287, 143, 'WANGON', 'VIOLAINE', '04/01/1991', '99999999'),
(288, 144, 'WENZLER', 'XAVIER', '11/12/1984', '99999999'),
(289, 145, 'XIONG', 'ALAIN', '28/02/1986', '99999999'),
(290, 145, 'XIONG', 'BOUNMY', '21/04/1987', '99999999'),
(291, 145, 'XIONG', 'BY', '25/08/1978', '99999999'),
(292, 145, 'XIONG', 'KARINE', '12/07/1981', '99999999'),
(293, 145, 'XIONG', 'KAU SU', '21/08/1993', '99999999'),
(294, 145, 'XIONG', 'MAY DOUA', '03/02/1977', '99999999'),
(295, 145, 'XIONG', 'MAY TONG', '25/08/1979', '99999999'),
(296, 145, 'XIONG', 'TIFFANIE', '07/07/1995', '99999999'),
(297, 146, 'YVON', 'AURELIE', '03/03/1979', '99999999'),
(298, 146, 'YVON', 'YOHAN', '28/08/1982', '99999999'),
(299, 116, 'PORTIER', 'GAETAN', '15/09/1989', '99999999'),
(300, 116, 'PORTIER', 'JUSTINE', '03/10/1992', '99999999'),
(301, 122, 'RENARD', 'DYLAN', '15/10/2002', '99999999'),
(302, 122, 'RENARD', 'FLORIANE', '23/10/1997', '99999999');

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
(13, 2, 'Ajout du produit fixe: VIR MARIESURGELES ASSURANCE CIVIC', '', '101.7', '2741955430'),
(14, 2, 'Vente de Billetterie: FERRAULT CHRISTOPHE pour la prestation cin&eacute;ma', '', '17.4', '94847558'),
(15, 2, 'Vente de Billetterie: JOURDAINE FREDERIC pour la prestation cin&eacute;ma', '', '23.2', '20887783'),
(16, 2, 'Vente de Billetterie: BARZIC AURELIEN pour la prestation cin&eacute;ma', '', '23.2', '44465138'),
(17, 2, 'Vente de Billetterie: VIOU ERIC pour la prestation cin&eacute;ma', '', '23.2', '79468733'),
(18, 2, 'Vente de Billetterie: NAUDIN PHILIPPE pour la prestation cin&eacute;ma', '', '23.2', '52528470'),
(19, 2, 'Vente de Billetterie: CALMET FABIENNE pour la prestation cin&eacute;ma', '', '23.2', '4366088'),
(20, 2, 'Vente de Billetterie: HAMELIN CYRILLE pour la prestation cin&eacute;ma', '', '17.4', '54326099'),
(21, 2, 'Vente de Billetterie: MONJAL DANIEL pour la prestation cin&eacute;ma', '', '23.2', '66821791'),
(22, 2, 'Vente de Billetterie: YVON MARIE LINE pour la prestation cin&eacute;ma', '', '23.2', '37200966'),
(23, 2, 'Vente de Billetterie: TIJOU E1ILIE pour la prestation cin&eacute;ma', '', '23.2', '57257205'),
(24, 2, 'Vente de Billetterie: LIPHARDT BRIGITTE pour la prestation cin&eacute;ma', '', '23.2', '46150312'),
(25, 2, 'Vente de Billetterie: ROBERT BRIGITTE pour la prestation cin&eacute;ma', '', '11.6', '16637023'),
(27, 2, 'Vente de Billetterie: 1ETAIS RAPHAEL pour la prestation cin&eacute;ma', '', '11.6', '86238121'),
(28, 2, 'Vente de Billetterie: HERSARD VERONIQUE pour la prestation cin&eacute;ma', '', '23.2', '20758269'),
(29, 2, 'Vente de Billetterie: CESBRON BEATRICE pour la prestation cin&eacute;ma', '', '11.6', '94857957'),
(30, 2, 'Vente de Billetterie: 1ETAIS RAPHAEL pour la prestation cin&eacute;ma', '', '5.8', '2463938'),
(32, 2, 'Vente de Billetterie: NUTTA YOAN pour la prestation cin&eacute;ma', '', '11.6', '8136161'),
(33, 2, 'Vente de Billetterie: ALIX PATRICIA pour la prestation cin&eacute;ma', '', '17.4', '70169403'),
(34, 2, 'Vente de Billetterie: ALIX PATRICIA pour la prestation cin&eacute;ma', '', '11.6', '84551883'),
(35, 2, 'Vente de Billetterie: TESSIER LEOCADIE pour la prestation cin&eacute;ma', '', '11.6', '52298982'),
(36, 2, 'Vente de Billetterie: DAVID JEREMIE pour la prestation piscine', '', '44', '15192580'),
(37, 2, 'Vente de Billetterie: ETAVARD ANITA pour la prestation Zoo dou&eacute; adulte', '', '33', '69650215'),
(38, 2, 'Vente de Billetterie: DA COSTA E SILVA FRANCOIS pour la prestation Zoo dou&eacute; adulte', '', '49.5', '7520023'),
(39, 1, 'Achat: ibardin salarie', '126', '', '5124958213'),
(40, 1, 'Achat: ibardin exterieur', '168', '', '297961575'),
(41, 2, 'Ajout du produit fixe: solde banque ASC', '', '14462.72', '9605718567'),
(42, 2, 'Ajout du produit fixe: PARTICIPATION SALARIAL DA DIFFUSION ', '', '191', '5487971296'),
(43, 2, 'Vente de Billetterie: CALMET FABIENNE pour la prestation ibardin salarie', '', '32', '94341055'),
(44, 2, 'Vente de Billetterie: FERRAULT CHRISTOPHE pour la prestation ibardin salarie', '', '32', '88486229'),
(45, 2, 'Vente de Billetterie: ROBERT BRIGITTE pour la prestation ibardin salarie', '', '32', '42184710'),
(46, 2, 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation ibardin exterieur - Madame BECHELOT', '', '42', '28477568'),
(47, 2, 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation ibardin exterieur - D PITOIS', '', '42', '5605021'),
(48, 2, 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation ibardin exterieur - L   ESNAULT', '', '42', '77887839'),
(50, 2, 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation ibardin exterieur - VERGER', '', '42', '49219151'),
(53, 2, 'Vente de Billetterie: TIJOU E1ILIE pour la prestation nuit&eacute;es oc&eacute;ane', '', '62', '15404577'),
(54, 2, 'Vente de Billetterie: FERRAULT CHRISTOPHE pour la prestation nuit&eacute;es oc&eacute;ane', '', '124', '71605876'),
(55, 2, 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation nuit&eacute;es oc&eacute;ane', '', '62', '32388072'),
(56, 1, 'Ajout de la charge Fixe: animation no&euml;l chq 7365082', '225', '', '834851307'),
(57, 2, 'Vente de Billetterie: LETROUX MARC pour la prestation PARFUM JPC - PARFUM JPC', '', '56', '40026291'),
(59, 1, 'Achat: PARFUM JPC', '649', '', '1468989635'),
(62, 1, 'Achat: D&eacute;c&egrave;s', '60', '', '7580304490'),
(63, 1, 'Achat: PRADEL', '30.95', '', '5469853515'),
(64, 2, 'Vente de Billetterie: REDUREAU MARYSE pour la prestation PARFUM JPC', '', '72', '5344950'),
(65, 2, 'Vente de Billetterie: JACQUET FREDERIC pour la prestation PARFUM JPC', '', '53', '84395322'),
(66, 2, 'Vente de Billetterie: MONORY MYRIAM pour la prestation PARFUM JPC', '', '86', '8824395'),
(70, 2, 'Vente de Billetterie: FOURNIER FRANCOISE pour la prestation PARFUM JPC', '', '83', '23293529'),
(71, 2, 'Vente de Billetterie: DUMESNIL MARIE LAURE pour la prestation PARFUM JPC', '', '74', '76579007'),
(72, 2, 'Vente de Billetterie: WANGON CHRISTELLE pour la prestation PARFUM JPC', '', '66', '50883954'),
(73, 2, 'Vente de Billetterie: LORMIER JEROME pour la prestation PARFUM JPC', '', '89', '52709368'),
(74, 2, 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation PARFUM JPC', '', '70', '47573051'),
(75, 2, 'Vente de Billetterie: TESSIER LEOCADIE pour la prestation PRADEL', '', '93.85', '32735689'),
(76, 2, 'Vente de Billetterie: LECOMTE MONIQUE pour la prestation PRADEL', '', '19.95', '47966985'),
(77, 2, 'Vente de Billetterie: PASQUIER BRIGITTE pour la prestation PRADEL', '', '47.9', '52876770'),
(78, 2, 'Vente de Billetterie: CALMET GINETTE pour la prestation PRADEL', '', '66.9', '79642942'),
(79, 2, 'Vente de Billetterie: LANGER 1ARYLENE pour la prestation PRADEL', '', '30.95', '33761242'),
(80, 2, 'Vente de Billetterie: DAVID JEREMIE pour la prestation nuit&eacute;es oc&eacute;ane', '', '62', '39728443'),
(82, 2, 'Vente de Billetterie: FERRAULT CHRISTOPHE pour la prestation nuit&eacute;es oc&eacute;ane', '', '155', '26715933'),
(83, 2, 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation SAUCISSON', '', '23.1', '39548788'),
(84, 2, 'Vente de Billetterie: NAUDIN PHILIPPE pour la prestation SAUCISSON', '', '18.3', '63344766'),
(85, 2, 'Vente de Billetterie: LORMIER JEROME pour la prestation SAUCISSON', '', '14.2', '73873831'),
(86, 2, 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation SAUCISSON', '', '25', '62984598'),
(87, 2, 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation PRADEL', '', '109.9', '57621944'),
(88, 1, 'Achat: PRADEL', '337.45', '', '7585362722'),
(89, 1, 'Achat: kARTING', '312', '', '295267627');

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
(6, 56, '28-04-2015', 3, '17.4', 1, '94847558'),
(7, 70, '28-04-2015', 3, '23.2', 1, '20887783'),
(8, 11, '28-04-2015', 3, '23.2', 1, '44465138'),
(9, 139, '28-04-2015', 3, '23.2', 1, '79468733'),
(10, 108, '28-04-2015', 3, '23.2', 1, '52528470'),
(11, 30, '28-04-2015', 3, '23.2', 1, '4366088'),
(12, 64, '28-04-2015', 3, '17.4', 1, '54326099'),
(13, 104, '28-04-2015', 3, '23.2', 1, '66821791'),
(14, 146, '28-04-2015', 3, '23.2', 1, '37200966'),
(15, 135, '28-04-2015', 3, '23.2', 1, '57257205'),
(16, 88, '28-04-2015', 3, '23.2', 1, '46150312'),
(17, 101, '28-04-2015', 3, '11.6', 1, '86238121'),
(18, 127, '28-04-2015', 3, '11.6', 1, '16637023'),
(19, 65, '28-04-2015', 3, '23.2', 1, '20758269'),
(20, 31, '28-04-2015', 3, '11.6', 1, '94857957'),
(21, 101, '28-04-2015', 3, '5.8', 1, '2463938'),
(22, 3, '28-04-2015', 3, '17.4', 1, '70169403'),
(23, 109, '28-04-2015', 3, '11.6', 1, '8136161'),
(24, 3, '28-04-2015', 3, '11.6', 1, '84551883'),
(25, 133, '28-04-2015', 3, '11.6', 1, '52298982'),
(26, 45, '28-04-2015', 3, '44', 1, '15192580'),
(27, 55, '28-04-2015', 3, '33', 1, '69650215'),
(28, 44, '28-04-2015', 3, '49.5', 1, '7520023'),
(29, 30, '15-05-2015', 3, '32', 1, '94341055'),
(30, 56, '15-05-2015', 3, '32', 1, '88486229'),
(31, 127, '15-05-2015', 3, '32', 1, '42184710'),
(32, 147, '15-05-2015', 3, '42', 1, '28477568'),
(33, 147, '15-05-2015', 3, '42', 1, '5605021'),
(34, 147, '15-05-2015', 3, '42', 1, '77887839'),
(35, 147, '15-05-2015', 3, '42', 1, '49219151'),
(36, 135, '18-05-2015', 3, '62', 1, '15404577'),
(37, 56, '19-05-2015', 3, '124', 1, '71605876'),
(38, 147, '19-05-2015', 3, '62', 1, '32388072'),
(39, 86, '09-06-2015', 3, '56', 1, '40026291'),
(41, 120, '05-06-2015', 3, '72', 1, '5344950'),
(42, 66, '05-06-2015', 3, '53', 1, '84395322'),
(43, 105, '05-06-2015', 3, '86', 1, '8824395'),
(44, 58, '05-06-2015', 3, '83', 1, '23293529'),
(45, 52, '05-06-2015', 3, '74', 1, '76579007'),
(46, 142, '05-06-2015', 3, '66', 1, '50883954'),
(47, 90, '05-06-2015', 3, '89', 1, '52709368'),
(48, 147, '09-06-2015', 3, '70', 1, '47573051'),
(49, 133, '19-06-2015', 3, '93.85', 1, '32735689'),
(50, 81, '19-06-2015', 3, '19.95', 1, '47966985'),
(51, 112, '19-06-2015', 3, '47.9', 1, '52876770'),
(52, 29, '19-06-2015', 3, '66.9', 1, '79642942'),
(53, 79, '19-06-2015', 3, '30.95', 1, '33761242'),
(54, 45, '19-06-2015', 3, '62', 1, '39728443'),
(55, 56, '19-06-2015', 3, '155', 1, '26715933'),
(56, 147, '19-06-2015', 3, '23.1', 1, '39548788'),
(57, 108, '19-06-2015', 3, '18.3', 1, '63344766'),
(58, 90, '19-06-2015', 3, '14.2', 1, '73873831'),
(59, 147, '23-06-2015', 3, '25', 1, '62984598'),
(60, 147, '23-06-2015', 3, '109.9', 1, '57621944');

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
(2, 'animation no&euml;l chq 7365082', '18-05-2015', '225', '834851307');

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
(82, 3, '27704.73', '8528.93'),
(83, 4, '', ''),
(84, 5, '', ''),
(85, 6, '', ''),
(86, 7, '23299.2', '20661.32'),
(87, 8, '42113.22', '20620'),
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
(107, 28, '55545.25', '101713.4'),
(108, 29, '', ''),
(109, 30, '', ''),
(110, 31, '', ''),
(111, 32, '', ''),
(112, 33, '', '2867.84'),
(113, 34, '', ''),
(114, 35, '', '1819'),
(115, 36, '', '167'),
(116, 37, '', ''),
(117, 38, '', ''),
(118, 39, '0', '129.36'),
(119, 40, '79.02', '0'),
(120, 41, '', ''),
(121, 42, '', ''),
(122, 43, '', ''),
(123, 44, '', ''),
(124, 45, '', ''),
(125, 46, '', ''),
(126, 47, '', ''),
(127, 48, '2890', ''),
(128, 49, '', ''),
(129, 50, '', ''),
(130, 51, '1563.61', '0'),
(131, 52, '', ''),
(132, 53, '818.1', ''),
(133, 54, '687.48', ''),
(134, 55, '', ''),
(135, 56, '710.53', ''),
(136, 57, '536.34', '0'),
(137, 58, '19.62', ''),
(138, 59, '142.43', '0'),
(139, 60, '', ''),
(140, 61, '1122.92', '26'),
(141, 62, '', ''),
(142, 63, '', ''),
(143, 64, '', ''),
(144, 65, '', ''),
(145, 66, '0', '540'),
(146, 67, '', ''),
(147, 68, '', ''),
(148, 69, '', ''),
(149, 70, '', ''),
(150, 71, '', ''),
(151, 72, '', '212'),
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
(130, '2113324', '1427839200', 'CARBURANT INTERMARCHE CB', 3, '', '33.26'),
(131, '2698254', '1427925600', 'REMBOURSEMENT M METAIS CHQ 7036394', 3, '', '74.52'),
(132, '3119528', '1427925600', 'ASF CESSION CFDT CB', 3, '', '9.20'),
(133, '7582424', '1427925600', 'COFIROUTE CB', 3, '', '9.20'),
(134, '1497979', '1427925600', 'SGT FRAIS BANCAIRES PRLV', 3, '', '2.50'),
(135, '1052690', '1428357600', 'MACIF ASSR PRLV', 3, '', '687.48'),
(136, '5227552', '1428357600', 'EUROPCAT CHQ 7036404', 3, '', '99.42'),
(137, '1414526', '1428357600', 'EUROPCAR CHQ 7036405', 3, '', '129.42'),
(138, '2656573', '1428616800', 'VIR ENTREPRISE MARIE', 3, '16.50', ''),
(139, '5704817', '1428962400', 'SFR PREL FIXE', 3, '', '28.91'),
(140, '4995751', '1429480800', 'CESSION CFDT CHQ 7036406', 3, '', '650'),
(141, '9511801', '1429567200', 'VI FEDER', 3, '166.84', ''),
(142, '7376864', '1429826400', 'EUROPCAR LOCATION CHQ 7036409', 3, '', '48.84'),
(143, '5522003', '1430085600', 'RESTAU CAFE DU CENTRE CHQ 7036408', 3, '', '83.20'),
(144, '4327657', '1430258400', 'RESTAURANT CAFE DU CENTRE CB', 3, '', '85.20'),
(145, '1309480', '1430690400', 'SFR PRLV', 3, '', '29.98'),
(146, '1795781', '1430690400', 'ASF CB', 3, '', '3.90'),
(147, '2275863', '1430690400', 'INTERMARCHE CARBURANT CB', 3, '', '17.55'),
(148, '3746141', '1430690400', 'ST FULGENT LE RELAI CB', 3, '', '27.70'),
(149, '2228045', '1430776800', 'SGT FRAIS BANCAIRES PRLV', 3, '', '3.27'),
(150, '9086282', '1431468000', 'CAFE DU CENTRE CB', 3, '', '97.80'),
(151, '1589879', '1431900000', 'CDTGESTION', 3, '', '390'),
(152, '9499225', '1431640800', 'SFR PRL', 3, '', '31.27'),
(153, '1085156', '1431640800', 'FRAIS ROUTE CHQ 7683081', 3, '', '18'),
(154, '8159175', '1431640800', 'VIREMENT LIVRET VERS BANQUE', 3, '20620', ''),
(155, '8320137', '1432245600', 'COFIROUTE CB', 3, '', '4.70'),
(156, '9295086', '1432245600', 'ASF CB', 3, '', '6.20'),
(157, '9564876', '1432245600', 'INTERMARCHE CARBURANT CB', 3, '', '9.91'),
(158, '5360431', '1432504800', 'COFIROUTE CB', 3, '', '17.30'),
(159, '4922723', '1432504800', 'EUROPCAR LOCATION CB', 3, '', '206.52'),
(160, '6675365', '1432764000', 'CAFE DU CENTRE CB', 3, '', '36'),
(161, '1982876', '1433196000', 'SFR MOBILE', 3, '', '29.98'),
(162, '7589574', '1433196000', 'SGT PRELV', 3, '', '2.50'),
(163, '8284902', '1433455200', 'FRAIS DE ROUTE CHQ 7036407', 3, '', '137.34'),
(164, '1492821', '1433887200', 'RESTAU CB', 3, '', '24'),
(165, '3578867', '1433887200', 'CONFORAMA MALETTE PC PORTABLE', 3, '', '354'),
(166, '8552221', '1434060000', 'COFIROUTE CB', 3, '', '6.20'),
(167, '8284835', '1434060000', 'RESTAU CB', 3, '', '21.30'),
(168, '1377592', '1434060000', 'AUTOROUTE CB', 3, '', '6.20'),
(169, '9285863', '1434319200', 'INTERMARCHE CARBURANT CB', 3, '', '32.60'),
(170, '1324933', '1434319200', 'SFR FIXE PRLV', 3, '', '29.75'),
(171, '3183115', '1434405600', 'CARBURANT CB', 3, '', '12'),
(172, '9953268', '1434924000', 'RESTAU CB', 3, '', '65'),
(173, '9836105', '1435269600', 'DISTRE NETO CB', 3, '', '13.70'),
(174, '4472250', '1435269600', 'RESTAU CB', 3, '', '27.72'),
(175, '7318403', '1435269600', 'FOURNITURES CB', 3, '', '150.12'),
(176, '9747648', '1435701600', 'SFR PRLV', 3, '', '31.49'),
(177, '6762269', '1435788000', 'SGT', 3, '', '28.90'),
(178, '3435929', '1436220000', 'FOURNITURES ACHATS DE MATERIEL CB', 3, '', '70.98'),
(179, '4484028', '1436392800', 'LOCATION VOITURE', 3, '', '45.25'),
(180, '9854669', '1436479200', 'REMBOURSEMENT MARIE CARBURANT', 3, '45', ''),
(181, '8714809', '1439330400', 'SUBVENTION FCT', 3, '1819', ''),
(182, '6744072', '1436911200', 'SFR FIXE', 3, '', '29.92'),
(183, '3376928', '1436911200', 'CDTGESTION', 3, '', '1900'),
(184, '3388002', '1436911200', 'LOGICIEL ICEGEST', 3, '', '600'),
(185, '4218137', '1436911200', 'FRAIS BQUE', 3, '', '24'),
(186, '7313259', '1437084000', 'RESTAU CB', 3, '', '87'),
(187, '8007126', '1437084000', 'FRAIS BQUE', 3, '', '8'),
(188, '1950519', '1437688800', 'LETTRE CPTE DEBIT', 3, '', '13.50'),
(189, '8998804', '1437948000', 'RESTAU CB', 3, '', '44.50'),
(190, '3794188', '1437948000', 'FRAIS BANCAIRES PRLV', 3, '', '8'),
(191, '9719759', '1438293600', 'SFR MOBILE PRLV', 3, '', '29.98'),
(192, '9535767', '1438293600', 'FRAIS BANCAIRES', 3, '', '8'),
(193, '1152286', '1438639200', 'SGT PRLV', 3, '', '2.50'),
(194, '6760742', '1439503200', 'SFR FIXE', 3, '', '29.02'),
(195, '9632962', '1441058400', 'SFR PRLV', 3, '', '30.48'),
(196, '6062112', '1441144800', 'FRAIS BANCAIRES SGT', 3, '', '2.50'),
(197, '8191831', '1441576800', 'FOURNITURES CB', 3, '', '10.86'),
(198, '1943596', '1441922400', 'COFIROUTE CB', 3, '', '1.50'),
(199, '1576081', '1441922400', 'INTERMARCHE CB', 3, '', '38.25'),
(200, '6573893', '1441922400', 'COFIROUTE CB', 3, '', '20.90'),
(201, '2610070', '1441922400', 'ASF CB', 3, '', '4.20'),
(202, '6937896', '1442181600', 'SFR PRLV', 3, '', '28.91'),
(203, '4601266', '1442181600', 'COFIROUTE CB', 3, '', '4.90'),
(204, '6712195', '1442440800', 'INTERMARCHE CB', 3, '', '7'),
(205, '4866046', '1442527200', 'EUROPCAR LOCATION CB', 3, '', '138.24'),
(206, '4612324', '1442786400', 'INTERMARCHE CB', 3, '', '7'),
(207, '6469200', '1443650400', 'CAFE DU CENTRE ', 3, '', '70.40'),
(209, '8440103', '1440712800', 'RESTAU CB', 3, '', '87'),
(210, '2842534', '1443650400', 'frais bancaire', 3, '', '2.5'),
(211, '3922133', '1443650400', 'PRLV SFR ', 3, '', '29.98'),
(212, '1127547', '1443736800', 'INT/FRAIS BANCAIRE', 3, '', '9.76'),
(213, '4633245', '1443996000', 'cafe du centre cb', 3, '', '36'),
(214, '4052071', '1444341600', 'AUTROUTE DU SUD CB', 3, '', '6.2'),
(215, '6613838', '1444341600', 'CARBURANT CB', 3, '', '18.05'),
(216, '5457392', '1444341600', 'AUTROUTE COFOROUTE CB', 3, '', '6.2'),
(217, '6766698', '1444600800', 'REMB CARBURANT DIRECTION', 3, '14', ''),
(218, '5843075', '1444860000', 'PRLV SFR ', 3, '', '28.91'),
(219, '3075265', '1445551200', 'CARBURANT CB', 3, '', '18.12'),
(220, '3423216', '1445551200', 'AUTROUTE DU SUD CB', 3, '', '6.2'),
(221, '7944691', '1445551200', 'AUTROUTE COFOROUTE CB', 3, '', '6.2'),
(222, '1798985', '1446073200', 'cafe du centre cb', 3, '', '48'),
(225, '5837808', '1446332400', 'FACTURE SGT', 3, '', '2.5'),
(226, '1837916', '1446591600', 'RESTAURATION CB', 3, '', '26'),
(227, '9780927', '1446418800', 'PRLV SFR MOBILE', 3, '', '29.98'),
(228, '9991359', '1446764400', 'AUTROUTE COFIROUTE CB', 3, '', '6.2'),
(229, '7087918', '1446764400', 'AUTROUTE COFIROUTE CB', 3, '', '6.2'),
(232, '6600550', '1447110000', 'REMB CARBURANT DIRECTION', 3, '30.45', ''),
(233, '8357697', '1447369200', 'AUTROUTE COFIROUTE CB', 3, '', '23.7'),
(234, '9991604', '1447628400', 'PRLV SFR FIXE', 3, '', '28.91'),
(235, '8907228', '1447628400', 'AUTROUTE DU SUD CB', 3, '', '23.7'),
(236, '1589431', '1447801200', 'SESSION LDC ', 3, '', '300'),
(237, '9371127', '1447974000', 'CARBURANT CB', 3, '', '11.01'),
(238, '8657658', '1448406000', 'LOCATION VOITURE', 3, '', '42.84'),
(239, '5419927', '1448492400', 'FOURNITURE BUREAU', 3, '', '32.41'),
(240, '4731085', '1448492400', 'LE FIEF ', 3, '', '79.8'),
(241, '6720682', '1448924400', 'PRLV SFR MOBILE', 3, '', '29.98'),
(244, '7124914', '1448924400', 'FACTURE SGT', 3, '', '2.5'),
(245, '3353161', '1449097200', 'CASA CB 50547962', 3, '', '9.98'),
(246, '9198591', '1449529200', 'LOCATION SALLE IF', 3, '212', ''),
(247, '1173640', '1449529200', 'SAPIN DE NOEL ', 3, '', '24.5'),
(248, '1075469', '1449529200', 'FOURNITURE ARBRE DE NOEL', 3, '', '24'),
(249, '9739708', '1449529200', 'CETRAKOR CB 50547962', 3, '', '20.85'),
(250, '1970271', '1449702000', 'VIR MARIE', 3, '23.41', ''),
(251, '2435021', '1450047600', 'FOURNITURE ARBRE DE NOEL', 3, '', '105'),
(252, '2488887', '1450220400', 'PRLV SFR FIXE', 3, '', '28.91'),
(253, '5789956', '1450306800', 'RESTAURATION CB', 3, '', '34.7'),
(254, '8885508', '1450825200', 'RESTAURATION CB', 3, '', '23.7'),
(255, '3215283', '1451516400', 'PRLV SFR MOBILE', 3, '', '29.98'),
(256, '4343305', '1449010800', 'ERREUR SAPIN DE NOEL', 3, '', '27.26'),
(257, '9913905', '1449010800', 'FOURNITURE BUREAU', 3, '', '39.90'),
(258, '8302792', '1449010800', 'FOURNITURE ARBRE DE NOEL', 3, '', '27.26'),
(259, '7404736', '1449010800', 'RESTAURATION CB', 3, '', '57.2'),
(260, '4051398', '1449529200', 'LECLERC REPAS CB', 3, '', '47');

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
(29, '9544859', 3, '4757.53'),
(30, '3111541', 7, '2209.20'),
(31, '6934252', 8, '39175.22');

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
(16, '9936216', 28, '46141.95');

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
(350, '9544859', 3, '4757.53', ''),
(351, '3111541', 7, '2209.20', ''),
(352, '6934252', 8, '39175.22', ''),
(353, '9936216', 28, '', '46141.95'),
(354, '9956468', 51, '33.26', ''),
(355, '1211472', 51, '74.52', ''),
(356, '3702238', 51, '9.20', ''),
(357, '3010473', 51, '9.20', ''),
(358, '1989466', 59, '2.50', ''),
(359, '9256867', 54, '687.48', ''),
(360, '7266872', 56, '99.42', ''),
(361, '8277924', 56, '129.42', ''),
(362, '2113324', 3, '', '33.26'),
(363, '2698254', 3, '', '74.52'),
(364, '3119528', 3, '', '9.20'),
(365, '7582424', 3, '', '9.20'),
(366, '1497979', 3, '', '2.50'),
(367, '1052690', 3, '', '687.48'),
(368, '5227552', 3, '', '99.42'),
(369, '1414526', 3, '', '129.42'),
(370, '1048793', 66, '', '100'),
(371, '9658414', 7, '100', ''),
(372, '6246207', 39, '', '16.50'),
(373, '2656573', 3, '16.50', ''),
(374, '9062952', 57, '28.91', ''),
(375, '6640121', 51, '650', ''),
(376, '5704817', 3, '', '28.91'),
(377, '4995751', 3, '', '650'),
(378, '1825411', 33, '', '166.84'),
(379, '9511801', 3, '166.84', ''),
(380, '3026873', 56, '48.84', ''),
(381, '1333640', 61, '83.20', ''),
(382, '6347268', 61, '85.20', ''),
(383, '1171681', 57, '29.98', ''),
(384, '6892411', 51, '3.90', ''),
(385, '3958321', 51, '17.55', ''),
(386, '1782221', 61, '27.70', ''),
(387, '5131891', 59, '3.27', ''),
(388, '2517330', 61, '97.80', ''),
(389, '7376864', 3, '', '48.84'),
(390, '5522003', 3, '', '83.20'),
(391, '4327657', 3, '', '85.20'),
(392, '1309480', 3, '', '29.98'),
(393, '1795781', 3, '', '3.90'),
(394, '2275863', 3, '', '17.55'),
(395, '3746141', 3, '', '27.70'),
(396, '2228045', 3, '', '3.27'),
(397, '9086282', 3, '', '97.80'),
(398, '4871323', 66, '', '100'),
(399, '8545758', 7, '100', ''),
(400, '2124296', 57, '31.27', ''),
(401, '2595289', 51, '18', ''),
(402, '2519924', 48, '390', ''),
(403, '1589879', 3, '', '390'),
(406, '9499225', 3, '', '31.27'),
(407, '1085156', 3, '', '18'),
(408, '4316435', 66, '', '70'),
(409, '6776404', 8, '70', ''),
(410, '2327391', 8, '104', ''),
(411, '2928571', 8, '1641', ''),
(412, '9978336', 8, '956', ''),
(413, '3309916', 33, '', '104'),
(414, '2532392', 33, '', '1641'),
(415, '7711225', 33, '', '956'),
(416, '4298688', 8, '', '20620'),
(417, '8159175', 3, '20620', ''),
(418, '9580573', 59, '13.50', ''),
(419, '7353747', 59, '8', ''),
(420, '9793441', 7, '', '13.50'),
(421, '8683200', 7, '', '8'),
(422, '8231552', 51, '4.70', ''),
(423, '3425025', 51, '6.20', ''),
(424, '8862960', 51, '17.30', ''),
(425, '8908834', 51, '9.91', ''),
(426, '1649305', 56, '206.52', ''),
(427, '7845815', 61, '36', ''),
(428, '4433688', 57, '29.98', ''),
(429, '7699748', 59, '2.50', ''),
(430, '4973773', 51, '137.34', ''),
(431, '9436229', 61, '24', ''),
(432, '4232512', 53, '354', ''),
(433, '7119216', 51, '6.20', ''),
(434, '1125176', 61, '21.30', ''),
(435, '1024985', 51, '6.20', ''),
(436, '6248334', 51, '32.60', ''),
(437, '1477751', 57, '29.75', ''),
(438, '1044427', 51, '12', ''),
(439, '2611676', 61, '65', ''),
(440, '3836823', 61, '13.70', ''),
(441, '1564782', 61, '27.72', ''),
(442, '3194563', 53, '150.12', ''),
(443, '7076769', 57, '31.49', ''),
(444, '3423236', 59, '28.90', ''),
(445, '2194789', 53, '70.98', ''),
(446, '8514897', 56, '45.25', ''),
(447, '8320137', 3, '', '4.70'),
(448, '9295086', 3, '', '6.20'),
(449, '9564876', 3, '', '9.91'),
(450, '5360431', 3, '', '17.30'),
(451, '4922723', 3, '', '206.52'),
(452, '6675365', 3, '', '36'),
(453, '1982876', 3, '', '29.98'),
(454, '7589574', 3, '', '2.50'),
(455, '8284902', 3, '', '137.34'),
(456, '1492821', 3, '', '24'),
(457, '3578867', 3, '', '354'),
(458, '8552221', 3, '', '6.20'),
(459, '8284835', 3, '', '21.30'),
(460, '1377592', 3, '', '6.20'),
(461, '9285863', 3, '', '32.60'),
(462, '1324933', 3, '', '29.75'),
(463, '3183115', 3, '', '12'),
(464, '9953268', 3, '', '65'),
(465, '9836105', 3, '', '13.70'),
(466, '4472250', 3, '', '27.72'),
(467, '7318403', 3, '', '150.12'),
(468, '9747648', 3, '', '31.49'),
(469, '6762269', 3, '', '28.90'),
(470, '3435929', 3, '', '70.98'),
(471, '4484028', 3, '', '45.25'),
(472, '8846113', 39, '', '45'),
(473, '7447415', 35, '', '1819'),
(474, '9854669', 3, '45', ''),
(475, '8714809', 3, '1819', ''),
(476, '4459335', 57, '29.92', ''),
(477, '1035912', 48, '1900', ''),
(478, '8163948', 48, '600', ''),
(479, '1638458', 59, '24', ''),
(480, '8188351', 61, '87', ''),
(481, '3413613', 59, '8', ''),
(482, '2284758', 59, '13.50', ''),
(483, '2057082', 61, '44.50', ''),
(484, '6626192', 59, '8', ''),
(485, '8429192', 57, '29.98', ''),
(486, '9865498', 59, '8', ''),
(487, '4022421', 59, '2.50', ''),
(488, '6305577', 57, '29.02', ''),
(490, '3952714', 57, '30.48', ''),
(491, '5212171', 59, '2.50', ''),
(492, '3473025', 53, '10.86', ''),
(493, '3180213', 51, '1.50', ''),
(494, '4484241', 51, '38.25', ''),
(495, '5249249', 51, '20.90', ''),
(496, '2507285', 51, '4.20', ''),
(497, '7873918', 57, '28.91', ''),
(498, '5137808', 51, '4.90', ''),
(499, '7843673', 51, '7', ''),
(500, '9583997', 56, '138.24', ''),
(501, '6604704', 51, '7', ''),
(503, '3458558', 61, '70.40', ''),
(504, '6744072', 3, '', '29.92'),
(505, '3376928', 3, '', '1900'),
(506, '3388002', 3, '', '600'),
(507, '4218137', 3, '', '24'),
(508, '7313259', 3, '', '87'),
(509, '8007126', 3, '', '8'),
(510, '1950519', 3, '', '13.50'),
(511, '8998804', 3, '', '44.50'),
(512, '3794188', 3, '', '8'),
(513, '9719759', 3, '', '29.98'),
(514, '9535767', 3, '', '8'),
(515, '1152286', 3, '', '2.50'),
(516, '6760742', 3, '', '29.02'),
(517, '9632962', 3, '', '30.48'),
(518, '6062112', 3, '', '2.50'),
(519, '8191831', 3, '', '10.86'),
(520, '1943596', 3, '', '1.50'),
(521, '1576081', 3, '', '38.25'),
(522, '6573893', 3, '', '20.90'),
(523, '2610070', 3, '', '4.20'),
(524, '6937896', 3, '', '28.91'),
(525, '4601266', 3, '', '4.90'),
(526, '6712195', 3, '', '7'),
(527, '4866046', 3, '', '138.24'),
(528, '4612324', 3, '', '7'),
(529, '6469200', 3, '', '70.40'),
(531, '8440103', 3, '', '87'),
(532, '8443840', 61, '87', ''),
(533, '4641572', 57, '29.98', ''),
(539, '4606571', 7, '', '20620.20'),
(540, '1590086', 7, '20620', ''),
(541, '2295071', 7, '', '19.62'),
(542, '9841543', 7, '100', ''),
(543, '2350087', 7, '70', ''),
(544, '9034471', 7, '100', ''),
(545, '5580033', 8, '136', ''),
(546, '5597386', 8, '31', ''),
(547, '3284266', 59, '2.5', ''),
(548, '1258998', 59, '9.76', ''),
(551, '8389109', 51, '18.05', ''),
(552, '6634114', 51, '6.2', ''),
(554, '8176107', 61, '36', ''),
(555, '2050615', 51, '6.2', ''),
(556, '5360838', 39, '', '14'),
(557, '1111979', 57, '28.91', ''),
(558, '2055251', 51, '18.12', ''),
(559, '5241223', 51, '6.2', ''),
(560, '6415193', 51, '6.2', ''),
(561, '6494959', 61, '48', ''),
(562, '2842534', 3, '', '2.5'),
(563, '3922133', 3, '', '29.98'),
(564, '1127547', 3, '', '9.76'),
(565, '4633245', 3, '', '36'),
(566, '4052071', 3, '', '6.2'),
(567, '6613838', 3, '', '18.05'),
(568, '5457392', 3, '', '6.2'),
(569, '6766698', 3, '14', ''),
(570, '5843075', 3, '', '28.91'),
(571, '3075265', 3, '', '18.12'),
(572, '3423216', 3, '', '6.2'),
(573, '7944691', 3, '', '6.2'),
(574, '1798985', 3, '', '48'),
(580, '5440059', 57, '29.98', ''),
(581, '5298526', 59, '2.5', ''),
(582, '7965859', 61, '26', ''),
(583, '9252752', 51, '6.2', ''),
(584, '5955680', 51, '6.2', ''),
(585, '7862735', 39, '', '30.45'),
(586, '4201244', 51, '23.70', ''),
(587, '5390511', 57, '28.91', ''),
(588, '4411091', 0, '', ''),
(589, '6024349', 51, '23.70', ''),
(590, '6215538', 51, '300', ''),
(591, '6875120', 51, '11.01', ''),
(592, '2797007', 56, '42.84', ''),
(593, '8582465', 53, '32.41', ''),
(594, '6689701', 61, '79.8', ''),
(596, '7575628', 57, '29.98', ''),
(599, '5837808', 3, '', '2.5'),
(600, '1837916', 3, '', '26'),
(601, '9780927', 3, '', '29.98'),
(602, '9991359', 3, '', '6.2'),
(603, '7087918', 3, '', '6.2'),
(606, '6600550', 3, '30.45', ''),
(607, '8357697', 3, '', '23.7'),
(608, '9991604', 3, '', '28.91'),
(609, '8907228', 3, '', '23.7'),
(610, '1589431', 3, '', '300'),
(611, '9371127', 3, '', '11.01'),
(612, '8657658', 3, '', '42.84'),
(613, '5419927', 3, '', '32.41'),
(614, '4731085', 3, '', '79.8'),
(615, '6720682', 3, '', '29.98'),
(617, '4090676', 0, '', ''),
(618, '2618774', 40, '27.26', ''),
(619, '4225887', 53, '39.90', ''),
(620, '6886160', 40, '27.26', ''),
(621, '2638763', 61, '57.2', ''),
(622, '6566390', 59, '2.5', ''),
(623, '2614007', 53, '9.98', ''),
(624, '9906603', 72, '', '212'),
(625, '2862077', 40, '24.50', ''),
(626, '5824913', 53, '24', ''),
(627, '1405105', 61, '47', ''),
(628, '1523056', 53, '20.85', ''),
(629, '7443732', 39, '', '23.41'),
(630, '2428518', 53, '105', ''),
(631, '3073816', 57, '28.91', ''),
(632, '3927008', 61, '34.7', ''),
(633, '6724842', 61, '23.7', ''),
(634, '1890094', 57, '29.98', ''),
(637, '7124914', 3, '', '2.5'),
(638, '3353161', 3, '', '9.98'),
(639, '9198591', 3, '212', ''),
(640, '1173640', 3, '', '24.5'),
(641, '1075469', 3, '', '24'),
(642, '9739708', 3, '', '20.85'),
(643, '1970271', 3, '23.41', ''),
(644, '2435021', 3, '', '105'),
(645, '2488887', 3, '', '28.91'),
(646, '5789956', 3, '', '34.7'),
(647, '8885508', 3, '', '23.7'),
(648, '3215283', 3, '', '29.98'),
(649, '4343305', 3, '', '27.26'),
(650, '9913905', 3, '', '39.90'),
(651, '8302792', 3, '', '27.26'),
(652, '7404736', 3, '', '57.2'),
(653, '4051398', 3, '', '47'),
(654, '2723734', 36, '', '136'),
(655, '2742407', 36, '', '31'),
(656, '8763028', 66, '', '100'),
(657, '7437516', 66, '', '70'),
(658, '6423598', 66, '', '100'),
(659, '2431421', 58, '19.62', '');

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
(14, '6776404', '1430431200', 'M BIGOT', 8, '70', ''),
(15, '2327391', '1430431200', 'ANCV', 8, '104', ''),
(16, '2928571', '1430431200', 'ANCV', 8, '1641', ''),
(17, '9978336', '1430431200', 'ANCV', 8, '956', ''),
(18, '4298688', '1431640800', 'VIREMENT LIVRET VERS BANQ', 8, '', '20620'),
(19, '5580033', '1445900400', 'ANCV', 8, '136', ''),
(20, '5597386', '1445900400', 'ANCV', 8, '31', '');

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
(155, '9956468', '1427839200', 'CARBURANT INTERMARCHE CB', 51, '33.26', ''),
(156, '1211472', '1427925600', 'REMBOURSEMENT FRAIS DE ROUTE M METAIS CHQ 7036394', 51, '74.52', ''),
(157, '3702238', '1427925600', 'ASF CESSION CFDT CB', 51, '9.20', ''),
(158, '3010473', '1427925600', 'COFIROUTE CB', 51, '9.20', ''),
(159, '1989466', '1427925600', 'SGT FRAIS PRLV', 59, '2.50', ''),
(160, '9256867', '1428357600', 'MACIF ASSURANCES PRLV', 54, '687.48', ''),
(161, '7266872', '1428357600', 'EUROPCAR CHQ 7036404', 56, '99.42', ''),
(162, '8277924', '1428357600', 'EUROPCAR CHQ 7036405', 56, '129.42', ''),
(163, '1048793', '1428357600', 'REMBT PRET WANDERSTEIN', 66, '', '100'),
(164, '6246207', '1428616800', 'VIR ENTREPRISE MARIE', 39, '', '16.50'),
(165, '9062952', '1428962400', 'SFR PREL FIXE', 57, '28.91', ''),
(166, '6640121', '1429480800', 'CESSION CFDT CHQ 7036408', 51, '650', ''),
(167, '1825411', '1429567200', 'VI FEDER', 33, '', '166.84'),
(168, '3026873', '1429826400', 'EUROPCAR LOCATION CHQ 7036409', 56, '48.84', ''),
(169, '1333640', '1430085600', 'RESTAU CAFE DU CENTRE CHQ 7036408', 61, '83.20', ''),
(170, '6347268', '1430258400', 'RESTAURANT CAFE DU CENTRE CB', 61, '85.20', ''),
(171, '1171681', '1430690400', 'SFR PRLV ', 57, '29.98', ''),
(172, '6892411', '1430690400', 'ASF CB', 51, '3.90', ''),
(173, '3958321', '1430690400', 'INTERMARCHE CARBURANT CB', 51, '17.55', ''),
(174, '1782221', '1430690400', 'ST FULGENT LE RELAI CB', 61, '27.70', ''),
(175, '5131891', '1430776800', 'SGT FRAIS BANCAIRES PRLV', 59, '3.27', ''),
(176, '2517330', '1431468000', 'CAFE DU CENTRE CB', 61, '97.80', ''),
(177, '4871323', '1431640800', 'REMBOURSEMENT WANDERSTEIN', 66, '', '100'),
(178, '2124296', '1431640800', 'SFR PRL', 57, '31.27', ''),
(179, '2595289', '1431640800', 'FRAIS ROUTE CHQ 7683081', 51, '18', ''),
(180, '2519924', '1431900000', 'CDTGESTION ', 48, '390', ''),
(182, '4316435', '1430431200', 'M BIGOT', 66, '', '70'),
(183, '3309916', '1430431200', 'ANCV', 33, '', '104'),
(184, '2532392', '1430431200', 'ANCV', 33, '', '1641'),
(185, '7711225', '1430431200', 'ANCV', 33, '', '956'),
(186, '9580573', '1431986400', 'FRAIS LETTRE INFO', 59, '13.50', ''),
(187, '7353747', '1431986400', 'FRAIS COMMISSION INTERVENTION', 59, '8', ''),
(188, '8231552', '1432245600', 'COFIROUTE CB', 51, '4.70', ''),
(189, '3425025', '1432245600', 'ASF CB', 51, '6.20', ''),
(190, '8862960', '1432504800', 'COFIROUTE CB', 51, '17.30', ''),
(191, '8908834', '1432245600', 'INTERMARCHE CARBURANT CB', 51, '9.91', ''),
(192, '1649305', '1432504800', 'EUROPCAR LOCATION CB', 56, '206.52', ''),
(193, '7845815', '1432764000', 'CAFE DU CENTRE CB', 61, '36', ''),
(194, '4433688', '1433196000', 'SFR MOBILE', 57, '29.98', ''),
(195, '7699748', '1433196000', 'SGT PRELV', 59, '2.50', ''),
(196, '4973773', '1433455200', 'FRAIS DE ROUTE CHQ 7036407', 51, '137.34', ''),
(197, '9436229', '1433887200', 'RESTAU CB', 61, '24', ''),
(198, '4232512', '1433887200', 'CONFORAMA MALETTE PC PORTABLE', 53, '354', ''),
(199, '7119216', '1434060000', 'COFIROUTE CB', 51, '6.20', ''),
(200, '1125176', '1434060000', 'RESTAU CB', 61, '21.30', ''),
(201, '1024985', '1434060000', 'AUTOROUTE  CB', 51, '6.20', ''),
(202, '6248334', '1434319200', 'INTERMARCHE CARBURANT CB', 51, '32.60', ''),
(203, '1477751', '1434319200', 'SFR FIXE PRLV', 57, '29.75', ''),
(204, '1044427', '1434405600', 'CARBURANT CB ', 51, '12', ''),
(205, '2611676', '1434924000', 'RESTAU CB', 61, '65', ''),
(206, '3836823', '1435269600', 'DISTRE NETO CB', 61, '13.70', ''),
(207, '1564782', '1435269600', 'RESTAU CB', 61, '27.72', ''),
(208, '3194563', '1435269600', 'FOURNITURES CB', 53, '150.12', ''),
(209, '7076769', '1435701600', 'SFR PRLV', 57, '31.49', ''),
(210, '3423236', '1435788000', 'SGT ', 59, '28.90', ''),
(211, '2194789', '1436220000', 'FOURNITURES ACHATS DE MATERIEL CB', 53, '70.98', ''),
(212, '8514897', '1436392800', 'LOCATION VOITURE', 56, '45.25', ''),
(213, '8846113', '1436479200', 'REMBOURSEMENT MARIE CARBURANT', 39, '', '45'),
(214, '7447415', '1439330400', 'SUBVENTION FCT', 35, '', '1819'),
(215, '4459335', '1436911200', 'SFR FIXE', 57, '29.92', ''),
(216, '1035912', '1436911200', 'CDTGESTION', 48, '1900', ''),
(217, '8163948', '1436911200', 'LOGICIEL ICEGEST', 48, '600', ''),
(218, '1638458', '1436911200', 'FRAIS BQUE', 59, '24', ''),
(219, '8188351', '1437084000', 'RESTAU CB', 61, '87', ''),
(220, '3413613', '1437084000', 'FRAIS BQUE', 59, '8', ''),
(221, '2284758', '1437688800', 'LETTRE CPTE DEBIT', 59, '13.50', ''),
(222, '2057082', '1437948000', 'RESTAU CB', 61, '44.50', ''),
(223, '6626192', '1437948000', 'FRAIS BANCAIRES PRLV', 59, '8', ''),
(224, '8429192', '1438293600', 'SFR MOBILE PRLV', 57, '29.98', ''),
(225, '9865498', '1438293600', 'FRAIS BANCAIRES', 59, '8', ''),
(226, '4022421', '1438639200', 'SGT PRLV', 59, '2.50', ''),
(227, '6305577', '1439503200', 'SFR FIXE', 57, '29.02', ''),
(229, '3952714', '1441058400', 'SFR PRLV', 57, '30.48', ''),
(230, '5212171', '1441144800', 'FRAIS BANCAIRES', 59, '2.50', ''),
(231, '3473025', '1441576800', 'FOURNITURES CB', 53, '10.86', ''),
(232, '3180213', '1441922400', 'COFIROUTE CB', 51, '1.50', ''),
(233, '4484241', '1441922400', 'INTERMARCHE CB', 51, '38.25', ''),
(234, '5249249', '1441922400', 'COFIROUTE CB', 51, '20.90', ''),
(235, '2507285', '1441922400', 'ASF CB', 51, '4.20', ''),
(236, '7873918', '1442181600', 'SFR PRLV', 57, '28.91', ''),
(237, '5137808', '1442181600', 'COFIROUTE CB', 51, '4.90', ''),
(238, '7843673', '1442440800', 'INTERMARCHE CB', 51, '7', ''),
(239, '9583997', '1442527200', 'EUROPCAR LOCATION CB', 56, '138.24', ''),
(240, '6604704', '1442786400', 'INTERMARCHE CB', 51, '7', ''),
(242, '3458558', '1443650400', 'CAFE DU CENTRE CB', 61, '70.40', ''),
(243, '8443840', '1440712800', 'RESTAU CB', 61, '87', ''),
(244, '4641572', '1443650400', 'prlv sfr mobile', 57, '29.98', ''),
(245, '3284266', '1443650400', 'SGT frais PRLV', 59, '2.5', ''),
(246, '1258998', '1443650400', 'int/frais', 59, '9.76', ''),
(249, '8389109', '1444341600', 'carburant CB', 51, '18.05', ''),
(250, '6634114', '1444341600', 'autoroute cofiroute CB', 51, '6.2', ''),
(252, '8176107', '1444341600', 'cafe du centre CB', 61, '36', ''),
(253, '2050615', '1444341600', 'autoroute cofiroute CB', 51, '6.2', ''),
(254, '5360838', '1444600800', 'carburant', 39, '', '14'),
(255, '1111979', '1444860000', 'PRLV SFR FIXE', 57, '28.91', ''),
(256, '2055251', '1445551200', 'carburant intermarche CB', 51, '18.12', ''),
(257, '5241223', '1445551200', 'autoroute du sud CB', 51, '6.2', ''),
(258, '6415193', '1445551200', 'autoroute du sud CB', 51, '6.2', ''),
(259, '6494959', '1446073200', 'cafe du centre CB', 61, '48', ''),
(265, '5440059', '1446418800', 'PRLV SFR MOBILE', 57, '29.98', ''),
(266, '5298526', '1446332400', 'FACTURE SGT', 59, '2.5', ''),
(267, '7965859', '1446591600', 'LE PTIT FAIT TOUT', 61, '26', ''),
(268, '9252752', '1446764400', 'autoroute du sud CB', 51, '6.2', ''),
(269, '5955680', '1446764400', 'autoroute du sud CB', 51, '6.2', ''),
(270, '7862735', '1447110000', 'REMB REST DIRECTION', 39, '', '30.45'),
(271, '4201244', '1447369200', 'autoroute du sud CB', 51, '23.70', ''),
(272, '5390511', '1447628400', 'PRLV SFR FIXE', 57, '28.91', ''),
(273, '4411091', '1447628400', 'AUT', 0, '', ''),
(274, '6024349', '1447628400', 'autoroute du sud CB', 51, '23.70', ''),
(275, '6215538', '1447801200', 'SESSION LDC', 51, '300', ''),
(276, '6875120', '1447974000', 'carburant intermarche CB', 51, '11.01', ''),
(277, '2797007', '1448406000', 'LOCATION VOITURE', 56, '42.84', ''),
(278, '8582465', '1448492400', 'BUREAU VALLEE', 53, '32.41', ''),
(279, '6689701', '1448492400', 'LE FIEF CB', 61, '79.8', ''),
(281, '7575628', '1448924400', 'PRLV SFR MOBILE', 57, '29.98', ''),
(283, '4090676', '1449010800', '', 0, '', ''),
(284, '2618774', '1449010800', 'ARBRE DE NOEL', 40, '27.26', ''),
(285, '4225887', '1449010800', 'LECLERC CB ', 53, '39.90', ''),
(286, '6886160', '1449010800', 'ARBRE DE NOEL ', 40, '27.26', ''),
(287, '2638763', '1449010800', 'CHEZ PAUL CB', 61, '57.2', ''),
(288, '6566390', '1448924400', 'FACTURE SGT', 59, '2.5', ''),
(289, '2614007', '1449097200', 'CASA CB', 53, '9.98', ''),
(290, '9906603', '1449529200', 'ERREUR LOCATION SALLE IFS', 72, '', '212'),
(291, '2862077', '1449529200', 'SAPIN DE NOEL', 40, '24.50', ''),
(292, '5824913', '1449529200', 'GIFI CB', 53, '24', ''),
(293, '1405105', '1449529200', 'LECLERC REPAS CB', 61, '47', ''),
(294, '1523056', '1449529200', 'CENTRAKOR CB', 53, '20.85', ''),
(295, '7443732', '1449702000', 'REMB DIRECT', 39, '', '23.41'),
(296, '2428518', '1450047600', 'DECO CENTRE DE TABLE', 53, '105', ''),
(297, '3073816', '1450220400', 'PRLV SFR FIXE', 57, '28.91', ''),
(298, '3927008', '1450306800', 'LECLERC RESTO', 61, '34.7', ''),
(299, '6724842', '1450825200', 'BOULANGERIE CB', 61, '23.7', ''),
(300, '1890094', '1451516400', 'PRLV SFR MOBILE', 57, '29.98', ''),
(301, '2723734', '1445900400', 'ANCV', 36, '', '136'),
(302, '2742407', '1445900400', 'ANCV BOURLIERE', 36, '', '31'),
(303, '8763028', '1437084000', 'REMBOURSEMENT WANDERSTEIN', 66, '', '100'),
(304, '7437516', '1441749600', 'REMBOURSEMENT BIGOT', 66, '', '70'),
(305, '6423598', '1441749600', 'WANDERSTEIN REMBOURSEMENT', 66, '', '100'),
(306, '2431421', '1435788000', 'Interets sur frais', 58, '19.62', '');

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
(7, 1, 'Autre actif circulant 1', 'Compte de pret'),
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
(33, 3, 'D&eacute;ductions Obtenues', 'Gains divers et ANCV'),
(34, 3, 'Commission (&agrave; des tiers)', 'Remboursement Entreprise RESTAURATION'),
(35, 3, 'Honoraires', 'Subvention de Fonctionnement'),
(36, 3, 'Prestations &agrave; soi-m&ecirc;me', 'Participation des salariÃ©s'),
(37, 3, 'Int&eacute;r&ecirc;t - Produits', 'Virement Cpte de pret vets Banque ASC'),
(38, 3, 'Autre CA 1', 'Participation Entreprise'),
(39, 3, 'Autre CA 2', 'Remboursement Entreprise CARBURANT'),
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
(56, 6, 'Frais d''administration', 'Location vÃ©hicules automobile et matÃ©riel'),
(57, 6, 'T&eacute;l&eacute;phone, fax, internet', 'TÃ©lÃ©phone, fax, internet'),
(58, 6, 'Publicit&eacute;', 'Agios'),
(59, 6, 'Interet-charges, Frais Bancaires', 'Frais bancaires'),
(60, 6, 'Amortissements', 'Achat de matÃ©riel '),
(61, 6, 'Autre Charge d''exploitation 1', 'Restauration'),
(62, 6, 'Autre Charge d''exploitation 2', 'Hotellerie'),
(63, 6, 'Autre Charge d''exploitation 3', 'Frais bancaires'),
(64, 6, 'Autre Charge d''exploitation 4', ''),
(65, 7, 'Produits des titres', 'Produits Financiers'),
(66, 7, 'Produits d''immeubles', 'Remboursement Pret Par Salari&eacute;'),
(67, 7, 'Autre r&eacute;sultat Annexe 1', ''),
(68, 7, 'Autre r&eacute;sultat Annexe 2', ''),
(69, 7, 'Charges d''immeubles', ''),
(70, 7, 'Autre Charge annexe 1', ''),
(71, 7, 'Autre Charge annexe 2', ''),
(72, 8, 'Produits Exeptionnels', 'Produits Exeptionnelles'),
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

--
-- Contenu de la table `compta_pret`
--

INSERT INTO `compta_pret` (`idcomptapret`, `num_mouvement`, `date_pret`, `desc_pret`, `idcomptaplan`, `debit`, `credit`) VALUES
(9, '9658414', '1428357600', 'REMBT PRET WANDERSTEIN', 7, '100', ''),
(10, '8545758', '1431640800', 'REMBOURSEMENT WANDERSTEIN', 7, '100', ''),
(11, '9793441', '1431986400', 'FRAIS LETTRE INFO', 7, '', '13.50'),
(12, '8683200', '1431986400', 'FRAIS INTERVENTION', 7, '', '8'),
(18, '4606571', '1431986400', 'ancv', 7, '', '20620.20'),
(19, '1590086', '1432245600', 'vir livret pour ancv', 7, '20620', ''),
(20, '2295071', '1435788000', 'intÃ©rÃªt frais', 7, '', '19.62'),
(21, '9841543', '1437084000', 'REMB WANDERSTEIN', 7, '100', ''),
(22, '2350087', '1441749600', 'REMB BIGOT', 7, '70', ''),
(23, '9034471', '1441749600', 'REMB WANDERSTEIN', 7, '100', '');

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
(154, '9956468', 51, '33.26', ''),
(155, '1211472', 51, '74.52', ''),
(156, '3702238', 51, '9.20', ''),
(157, '3010473', 51, '9.20', ''),
(158, '1989466', 59, '2.50', ''),
(159, '9256867', 54, '687.48', ''),
(160, '7266872', 56, '99.42', ''),
(161, '8277924', 56, '129.42', ''),
(162, '1048793', 66, '', '100'),
(163, '6246207', 39, '', '16.50'),
(164, '9062952', 57, '28.91', ''),
(165, '6640121', 51, '650', ''),
(166, '1825411', 33, '', '166.84'),
(167, '3026873', 56, '48.84', ''),
(168, '1333640', 61, '83.20', ''),
(169, '6347268', 61, '85.20', ''),
(170, '1171681', 57, '29.98', ''),
(171, '6892411', 51, '3.90', ''),
(172, '3958321', 51, '17.55', ''),
(173, '1782221', 61, '27.70', ''),
(174, '5131891', 59, '3.27', ''),
(175, '2517330', 61, '97.80', ''),
(176, '4871323', 66, '', '100'),
(177, '2124296', 57, '31.27', ''),
(178, '2595289', 51, '18', ''),
(179, '2519924', 48, '390', ''),
(181, '4316435', 66, '', '70'),
(182, '3309916', 33, '', '104'),
(183, '2532392', 33, '', '1641'),
(184, '7711225', 33, '', '956'),
(185, '9580573', 59, '13.50', ''),
(186, '7353747', 59, '8', ''),
(187, '8231552', 51, '4.70', ''),
(188, '3425025', 51, '6.20', ''),
(189, '8862960', 51, '17.30', ''),
(190, '8908834', 51, '9.91', ''),
(191, '1649305', 56, '206.52', ''),
(192, '7845815', 61, '36', ''),
(193, '4433688', 57, '29.98', ''),
(194, '7699748', 59, '2.50', ''),
(195, '4973773', 51, '137.34', ''),
(196, '9436229', 61, '24', ''),
(197, '4232512', 53, '354', ''),
(198, '7119216', 51, '6.20', ''),
(199, '1125176', 61, '21.30', ''),
(200, '1024985', 51, '6.20', ''),
(201, '6248334', 51, '32.60', ''),
(202, '1477751', 57, '29.75', ''),
(203, '1044427', 51, '12', ''),
(204, '2611676', 61, '65', ''),
(205, '3836823', 61, '13.70', ''),
(206, '1564782', 61, '27.72', ''),
(207, '3194563', 53, '150.12', ''),
(208, '7076769', 57, '31.49', ''),
(209, '3423236', 59, '28.90', ''),
(210, '2194789', 53, '70.98', ''),
(211, '8514897', 56, '45.25', ''),
(212, '8846113', 39, '', '45'),
(213, '7447415', 35, '', '1819'),
(214, '4459335', 57, '29.92', ''),
(215, '1035912', 48, '1900', ''),
(216, '8163948', 48, '600', ''),
(217, '1638458', 59, '24', ''),
(218, '8188351', 61, '87', ''),
(219, '3413613', 59, '8', ''),
(220, '2284758', 59, '13.50', ''),
(221, '2057082', 61, '44.50', ''),
(222, '6626192', 59, '8', ''),
(223, '8429192', 57, '29.98', ''),
(224, '9865498', 59, '8', ''),
(225, '4022421', 59, '2.50', ''),
(226, '6305577', 57, '29.02', ''),
(228, '3952714', 57, '30.48', ''),
(229, '5212171', 59, '2.50', ''),
(230, '3473025', 53, '10.86', ''),
(231, '3180213', 51, '1.50', ''),
(232, '4484241', 51, '38.25', ''),
(233, '5249249', 51, '20.90', ''),
(234, '2507285', 51, '4.20', ''),
(235, '7873918', 57, '28.91', ''),
(236, '5137808', 51, '4.90', ''),
(237, '7843673', 51, '7', ''),
(238, '9583997', 56, '138.24', ''),
(239, '6604704', 51, '7', ''),
(241, '3458558', 61, '70.40', ''),
(242, '8443840', 61, '87', ''),
(243, '4641572', 57, '29.98', ''),
(244, '3284266', 59, '2.5', ''),
(245, '1258998', 59, '9.76', ''),
(248, '8389109', 51, '18.05', ''),
(249, '6634114', 51, '6.2', ''),
(251, '8176107', 61, '36', ''),
(252, '2050615', 51, '6.2', ''),
(253, '5360838', 39, '', '14'),
(254, '1111979', 57, '28.91', ''),
(255, '2055251', 51, '18.12', ''),
(256, '5241223', 51, '6.2', ''),
(257, '6415193', 51, '6.2', ''),
(258, '6494959', 61, '48', ''),
(261, '1884953', 61, '', '26'),
(265, '5440059', 57, '29.98', ''),
(266, '5298526', 59, '2.5', ''),
(267, '7965859', 61, '26', ''),
(268, '9252752', 51, '6.2', ''),
(269, '5955680', 51, '6.2', ''),
(270, '7862735', 39, '', '30.45'),
(271, '4201244', 51, '23.70', ''),
(272, '5390511', 57, '28.91', ''),
(273, '4411091', 0, '', ''),
(274, '6024349', 51, '23.70', ''),
(275, '6215538', 51, '300', ''),
(276, '6875120', 51, '11.01', ''),
(277, '2797007', 56, '42.84', ''),
(278, '8582465', 53, '32.41', ''),
(279, '6689701', 61, '79.8', ''),
(281, '7575628', 57, '29.98', ''),
(283, '4090676', 0, '', ''),
(284, '2618774', 40, '27.26', ''),
(285, '4225887', 53, '39.90', ''),
(286, '6886160', 40, '27.26', ''),
(287, '2638763', 61, '57.2', ''),
(288, '6566390', 59, '2.5', ''),
(289, '2614007', 53, '9.98', ''),
(290, '9906603', 72, '', '212'),
(291, '2862077', 40, '24.50', ''),
(292, '5824913', 53, '24', ''),
(293, '1405105', 61, '47', ''),
(294, '1523056', 53, '20.85', ''),
(295, '7443732', 39, '', '23.41'),
(296, '2428518', 53, '105', ''),
(297, '3073816', 57, '28.91', ''),
(298, '3927008', 61, '34.7', ''),
(299, '6724842', 61, '23.7', ''),
(300, '1890094', 57, '29.98', ''),
(301, '2723734', 36, '', '136'),
(302, '2742407', 36, '', '31'),
(303, '8763028', 66, '', '100'),
(304, '7437516', 66, '', '70'),
(305, '6423598', 66, '', '100'),
(306, '2431421', 58, '19.62', '');

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
(1, 'COMITE D''ENTREPRISE MARIE SURGELES', '', '', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
(13, '2741955430', '1429221600', 'VIR MARIESURGELES ASSURANCE CIVIC', '', '101.7'),
(14, '94847558', '1430172000', 'Vente de Billetterie: FERRAULT CHRISTOPHE pour la prestation cin&eacute;ma', '', '17.4'),
(15, '20887783', '1430172000', 'Vente de Billetterie: JOURDAINE FREDERIC pour la prestation cin&eacute;ma', '', '23.2'),
(16, '44465138', '1430172000', 'Vente de Billetterie: BARZIC AURELIEN pour la prestation cin&eacute;ma', '', '23.2'),
(17, '79468733', '1430172000', 'Vente de Billetterie: VIOU ERIC pour la prestation cin&eacute;ma', '', '23.2'),
(18, '52528470', '1430172000', 'Vente de Billetterie: NAUDIN PHILIPPE pour la prestation cin&eacute;ma', '', '23.2'),
(19, '4366088', '1430172000', 'Vente de Billetterie: CALMET FABIENNE pour la prestation cin&eacute;ma', '', '23.2'),
(20, '54326099', '1430172000', 'Vente de Billetterie: HAMELIN CYRILLE pour la prestation cin&eacute;ma', '', '17.4'),
(21, '66821791', '1430172000', 'Vente de Billetterie: MONJAL DANIEL pour la prestation cin&eacute;ma', '', '23.2'),
(22, '37200966', '1430172000', 'Vente de Billetterie: YVON MARIE LINE pour la prestation cin&eacute;ma', '', '23.2'),
(23, '57257205', '1430172000', 'Vente de Billetterie: TIJOU E1ILIE pour la prestation cin&eacute;ma', '', '23.2'),
(24, '46150312', '1430172000', 'Vente de Billetterie: LIPHARDT BRIGITTE pour la prestation cin&eacute;ma', '', '23.2'),
(25, '16637023', '1430172000', 'Vente de Billetterie: ROBERT BRIGITTE pour la prestation cin&eacute;ma', '', '11.6'),
(27, '86238121', '1430172000', 'Vente de Billetterie: 1ETAIS RAPHAEL pour la prestation cin&eacute;ma', '', '11.6'),
(28, '20758269', '1430172000', 'Vente de Billetterie: HERSARD VERONIQUE pour la prestation cin&eacute;ma', '', '23.2'),
(29, '94857957', '1430172000', 'Vente de Billetterie: CESBRON BEATRICE pour la prestation cin&eacute;ma', '', '11.6'),
(30, '2463938', '1430172000', 'Vente de Billetterie: 1ETAIS RAPHAEL pour la prestation cin&eacute;ma', '', '5.8'),
(32, '8136161', '1430172000', 'Vente de Billetterie: NUTTA YOAN pour la prestation cin&eacute;ma', '', '11.6'),
(33, '70169403', '1430172000', 'Vente de Billetterie: ALIX PATRICIA pour la prestation cin&eacute;ma', '', '17.4'),
(34, '84551883', '1430172000', 'Vente de Billetterie: ALIX PATRICIA pour la prestation cin&eacute;ma', '', '11.6'),
(35, '52298982', '1430172000', 'Vente de Billetterie: TESSIER LEOCADIE pour la prestation cin&eacute;ma', '', '11.6'),
(36, '15192580', '1430172000', 'Vente de Billetterie: DAVID JEREMIE pour la prestation piscine', '', '44'),
(37, '69650215', '1430172000', 'Vente de Billetterie: ETAVARD ANITA pour la prestation Zoo dou&eacute; adulte', '', '33'),
(38, '7520023', '1430172000', 'Vente de Billetterie: DA COSTA E SILVA FRANCOIS pour la prestation Zoo dou&eacute; adulte', '', '49.5'),
(39, '5124958213', '1429480800', 'Achat - ibardin salarie', '126', ''),
(40, '297961575', '1429480800', 'Achat - ibardin exterieur', '168', ''),
(41, '9605718567', '1420326000', 'solde banque ASC', '', '14462.72'),
(42, '5487971296', '1431468000', 'PARTICIPATION SALARIAL DA DIFFUSION ', '', '191'),
(43, '94341055', '1431640800', 'Vente de Billetterie: CALMET FABIENNE pour la prestation ibardin salarie', '', '32'),
(44, '88486229', '1431640800', 'Vente de Billetterie: FERRAULT CHRISTOPHE pour la prestation ibardin salarie', '', '32'),
(45, '42184710', '1431640800', 'Vente de Billetterie: ROBERT BRIGITTE pour la prestation ibardin salarie', '', '32'),
(46, '28477568', '1431640800', 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation ibardin exterieur - Madame BECHELOT', '', '42'),
(47, '5605021', '1431640800', 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation ibardin exterieur - D PITOIS', '', '42'),
(48, '77887839', '1431640800', 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation ibardin exterieur - L   ESNAULT', '', '42'),
(50, '49219151', '1431640800', 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation ibardin exterieur - VERGER', '', '42'),
(53, '15404577', '1431900000', 'Vente de Billetterie: TIJOU E1ILIE pour la prestation nuit&eacute;es oc&eacute;ane', '', '62'),
(54, '71605876', '1431986400', 'Vente de Billetterie: FERRAULT CHRISTOPHE pour la prestation nuit&eacute;es oc&eacute;ane', '', '124'),
(55, '32388072', '1431986400', 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation nuit&eacute;es oc&eacute;ane', '', '62'),
(56, '834851307', '1431900000', 'animation no&euml;l chq 7365082', '225', ''),
(57, '40026291', '1433800800', 'Vente de Billetterie: LETROUX MARC pour la prestation PARFUM JPC - PARFUM JPC', '', '56'),
(59, '1468989635', '1433196000', 'Achat - PARFUM JPC', '649', ''),
(62, '7580304490', '1433282400', 'Achat - D&eacute;c&egrave;s', '60', ''),
(63, '5469853515', '1433455200', 'Achat - PRADEL', '30.95', ''),
(64, '5344950', '1433455200', 'Vente de Billetterie: REDUREAU MARYSE pour la prestation PARFUM JPC', '', '72'),
(65, '84395322', '1433455200', 'Vente de Billetterie: JACQUET FREDERIC pour la prestation PARFUM JPC', '', '53'),
(66, '8824395', '1433455200', 'Vente de Billetterie: MONORY MYRIAM pour la prestation PARFUM JPC', '', '86'),
(70, '23293529', '1433455200', 'Vente de Billetterie: FOURNIER FRANCOISE pour la prestation PARFUM JPC', '', '83'),
(71, '76579007', '1433455200', 'Vente de Billetterie: DUMESNIL MARIE LAURE pour la prestation PARFUM JPC', '', '74'),
(72, '50883954', '1433455200', 'Vente de Billetterie: WANGON CHRISTELLE pour la prestation PARFUM JPC', '', '66'),
(73, '52709368', '1433455200', 'Vente de Billetterie: LORMIER JEROME pour la prestation PARFUM JPC', '', '89'),
(74, '47573051', '1433800800', 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation PARFUM JPC', '', '70'),
(75, '32735689', '1434664800', 'Vente de Billetterie: TESSIER LEOCADIE pour la prestation PRADEL', '', '93.85'),
(76, '47966985', '1434664800', 'Vente de Billetterie: LECOMTE MONIQUE pour la prestation PRADEL', '', '19.95'),
(77, '52876770', '1434664800', 'Vente de Billetterie: PASQUIER BRIGITTE pour la prestation PRADEL', '', '47.9'),
(78, '79642942', '1434664800', 'Vente de Billetterie: CALMET GINETTE pour la prestation PRADEL', '', '66.9'),
(79, '33761242', '1434664800', 'Vente de Billetterie: LANGER 1ARYLENE pour la prestation PRADEL', '', '30.95'),
(80, '39728443', '1434664800', 'Vente de Billetterie: DAVID JEREMIE pour la prestation nuit&eacute;es oc&eacute;ane', '', '62'),
(82, '26715933', '1434664800', 'Vente de Billetterie: FERRAULT CHRISTOPHE pour la prestation nuit&eacute;es oc&eacute;ane', '', '155'),
(83, '39548788', '1434664800', 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation SAUCISSON', '', '23.1'),
(84, '63344766', '1434664800', 'Vente de Billetterie: NAUDIN PHILIPPE pour la prestation SAUCISSON', '', '18.3'),
(85, '73873831', '1434664800', 'Vente de Billetterie: LORMIER JEROME pour la prestation SAUCISSON', '', '14.2'),
(86, '62984598', '1435010400', 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation SAUCISSON', '', '25'),
(87, '57621944', '1435010400', 'Vente de Billetterie: PERSONNEL EXTERIEUR pour la prestation PRADEL', '', '109.9'),
(88, '7585362722', '1435615200', 'Achat - PRADEL', '337.45', ''),
(89, '295267627', '1435701600', 'Achat - kARTING', '312', '');

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
(1, 'LOISIRS ET SORTIES'),
(3, 'VOYAGES'),
(4, 'BILLETTERIE'),
(5, 'FOURNISSEURS DIVERS'),
(6, 'social');

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
(7, 6, 2, '3', '17.4', '3.9', 0, ''),
(8, 7, 2, '4', '23.2', '5.2', 0, ''),
(9, 8, 2, '4', '23.2', '5.2', 0, ''),
(10, 9, 2, '4', '23.2', '5.2', 0, ''),
(11, 10, 2, '4', '23.2', '5.2', 0, ''),
(12, 11, 2, '4', '23.2', '5.2', 0, ''),
(13, 12, 2, '3', '17.4', '3.9', 0, ''),
(14, 13, 2, '4', '23.2', '5.2', 0, ''),
(15, 14, 2, '4', '23.2', '5.2', 0, ''),
(16, 15, 2, '4', '23.2', '5.2', 0, ''),
(17, 16, 2, '4', '23.2', '5.2', 0, ''),
(18, 18, 2, '2', '11.6', '2.6', 0, ''),
(20, 17, 2, '2', '11.6', '2.6', 0, ''),
(21, 19, 2, '4', '23.2', '5.2', 0, ''),
(22, 20, 2, '2', '11.6', '2.6', 0, ''),
(23, 21, 2, '1', '5.8', '1.3', 0, ''),
(25, 23, 2, '2', '11.6', '2.6', 0, ''),
(26, 22, 2, '3', '17.4', '3.9', 0, ''),
(27, 24, 2, '2', '11.6', '2.6', 0, ''),
(28, 25, 2, '2', '11.6', '2.6', 0, ''),
(29, 26, 1, '2', '44', '0', 0, ''),
(30, 27, 6, '2', '33', '0', 0, ''),
(31, 28, 6, '3', '49.5', '0', 0, ''),
(32, 29, 9, '1', '32', '10', 0, ''),
(33, 30, 9, '1', '32', '10', 0, ''),
(34, 31, 9, '1', '32', '10', 0, ''),
(35, 32, 10, '1', '42', '0', 0, 'Madame BECHELOT'),
(36, 33, 10, '1', '42', '0', 0, 'D PITOIS'),
(37, 34, 10, '1', '42', '0', 0, 'L   ESNAULT'),
(39, 35, 10, '1', '42', '0', 0, 'VERGER'),
(40, 36, 11, '2', '62', '0', 0, ''),
(41, 37, 11, '4', '124', '0', 0, ''),
(42, 38, 11, '2', '62', '0', 0, ''),
(43, 39, 12, '56.00', '56', '0', 0, 'PARFUM JPC'),
(45, 41, 12, '72', '72', '0', 0, ''),
(46, 42, 12, '53', '53', '0', 0, ''),
(47, 43, 12, '86', '86', '0', 0, ''),
(51, 44, 12, '83', '83', '0', 0, ''),
(52, 45, 12, '74', '74', '0', 0, ''),
(53, 46, 12, '66', '66', '0', 0, ''),
(54, 47, 12, '89', '89', '0', 0, ''),
(55, 48, 12, '70', '70', '0', 0, ''),
(56, 49, 15, '93.85', '93.85', '0', 0, ''),
(57, 50, 15, '19.95', '19.95', '0', 0, ''),
(58, 51, 15, '47.9', '47.9', '0', 0, ''),
(59, 52, 15, '66.9', '66.9', '0', 0, ''),
(60, 53, 15, '30.95', '30.95', '0', 0, ''),
(61, 54, 11, '2', '62', '0', 0, ''),
(63, 55, 11, '5', '155', '0', 0, ''),
(64, 56, 16, '23.1', '23.1', '0', 0, ''),
(65, 57, 16, '18.3', '18.3', '0', 0, ''),
(66, 58, 16, '14.20', '14.2', '0', 0, ''),
(67, 59, 16, '25', '25', '0', 0, ''),
(68, 60, 15, '109.9', '109.9', '0', 0, '');

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
(5, 'CEMARIE', 'b55cbb9b2915c8d8df38ea62ee320ab5', 1),
(6, 'raphael', 'aa622d1829f3f68127c00e2df48320b5', 2),
(7, 'fredo', '7aec5e35a56630ecc364ad842ffad9de', 2),
(8, 'jerome', '2bb010060d682fee5ad19d973a9a4d2a', 2);

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
(1, 1, 'piscine', '01-01-2015', '01-04-2016', '22', '0', '22', '100', '14', 0),
(2, 1, 'cin&eacute;ma', '01-01-2015', '29-02-2016', '5.8', '1.30', '7.1', '4', '138', 0),
(4, 4, 'AQUARIUM MINI CHATEAU', '01-05-2015', '09-04-2016', '15', '0', '15', '100', '10', 0),
(5, 4, 'La mine bleu adulte', '01-01-2015', '01-04-2016', '8.5', '0', '8.5', '100', '14', 0),
(6, 4, 'Zoo dou&eacute; adulte', '01-01-2015', '01-04-2016', '16.5', '0', '16.5', '100', '9', 0),
(7, 4, 'La mine bleu enfant', '01-01-2015', '01-04-2016', '5.31', '0', '5.31', '100', '5', 0),
(8, 4, 'Zoo dou&eacute; enfant', '01-01-2015', '01-04-2016', '12', '0', '12', '100', '17', 0),
(9, 1, 'ibardin salarie', '20-04-2015', '31-12-2016', '32', '10', '42', '10', '10000', 0),
(10, 1, 'ibardin exterieur', '20-04-2015', '31-12-2016', '42', '0', '42', '5', '1000', 0),
(11, 1, 'nuit&eacute;es oc&eacute;ane', '01-04-2015', '01-04-2016', '31', '0', '31', '100', '16', 0),
(12, 5, 'PARFUM JPC', '01-01-2015', '29-02-2016', '1', '0', '1', '1000', '10000', 0),
(14, 6, 'D&eacute;c&egrave;s', '03-06-2015', '31-12-2015', '0', '60', '60', '1000', '10001', 0),
(15, 5, 'PRADEL', '05-06-2015', '30-04-2016', '1', '0', '1', '1000', '9998.95', 0),
(16, 5, 'SAUCISSON', '19-06-2015', '30-04-2016', '1', '0', '1', '1000', '9919.4', 0),
(17, 1, 'kARTING', '18-06-2015', '30-04-2016', '1', '0', '1', '1000', '10312', 0);

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
(3, 'VIR MARIESURGELES ASSURANCE CIVIC', '17-04-2015', '101.7', '2741955430'),
(4, 'solde banque ASC', '04-01-2015', '14462.72', '9605718567'),
(5, 'PARTICIPATION SALARIAL DA DIFFUSION ', '13-05-2015', '191', '5487971296');

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
(5, 17, 3, '11.6', '', '', '121876337', 0),
(6, 6, 1, '17.4', 'LA POSTE', 'FERRAULT', '0001', 0),
(7, 7, 1, '23.2', 'CE', 'JOURDAINE', '002', 0),
(8, 8, 1, '23.2', 'BP', 'BARZIC', '003', 0),
(9, 9, 1, '23.2', 'LA POSTE', 'VIOU', '004', 0),
(10, 10, 1, '23.2', 'CE', 'NAUDIN', '005', 0),
(11, 11, 1, '23.2', 'CE', 'CALMET', '006', 0),
(12, 12, 1, '17.4', 'CE', 'HAMELIN', '007', 0),
(13, 13, 1, '23.2', 'BNP', 'MONJAL', '001', 0),
(14, 14, 1, '23.2', 'LCL', 'YVON', '002', 0),
(15, 15, 1, '23.2', 'CA', 'TIJOU', '003', 0),
(16, 16, 1, '23.2', 'SG', 'LIPHART', '004', 0),
(17, 19, 3, '23.2', '', 'HERSARD', '604948060', 0),
(19, 21, 3, '5.8', '', 'METAIS', '283752599', 0),
(20, 22, 3, '17.4', '', 'ALIX', '168468722', 0),
(21, 23, 3, '11.6', '', 'NUTTA', '616667463', 0),
(22, 24, 3, '11.6', '', 'ALIX', '729356196', 0),
(23, 25, 3, '11.6', '', 'TESSIER', '464513148', 0),
(24, 26, 1, '44', 'cic', 'audouin', '001', 0),
(25, 27, 1, '33', 'ca', 'etavard', '001', 0),
(26, 28, 1, '49.5', 'CA', 'DACOSTA', '002', 0),
(27, 29, 1, '32', 'CE', 'CALMET', '', 0),
(28, 30, 1, '32', 'Banque Postale', 'FERRAULT', '', 0),
(29, 31, 1, '32', 'CM', 'ROBERT', '', 0),
(30, 32, 1, '42', 'CE', 'BECHELOT', '', 0),
(31, 33, 1, '42', 'CE', 'PITOIS', '', 0),
(32, 34, 1, '42', 'CE', 'ESNAULT', '', 0),
(33, 35, 1, '42', 'Banque Postale', 'J VERGER', '', 0),
(34, 38, 1, '62', 'ca', 'juano', '', 0),
(35, 37, 1, '124', 'lbp', 'ferrault', '', 0),
(36, 36, 1, '62', 'ca', 'guerin', '', 0),
(37, 20, 3, '11.6', '', 'CESBRON', '340246996', 0),
(39, 18, 3, '11.6', '', 'robert b', '771568757', 0),
(40, 39, 1, '56', 'CM', 'LETROUX MARC', '00000', 0),
(41, 41, 1, '72', 'CM', '', '', 0),
(42, 42, 1, '53', 'BPA', '', '', 0),
(43, 43, 1, '86', 'CA', '', '', 0),
(44, 44, 1, '83', 'CA', 'FOURNIER FRANCOISE', '', 0),
(46, 45, 1, '74', 'CE', '', '', 0),
(47, 46, 1, '66', 'CE', '', '', 0),
(48, 47, 1, '89', 'CA', '', '', 0),
(49, 48, 3, '70', '', 'personnel ext', '278139878', 0),
(50, 49, 1, '93.85', 'sg', 'tessier', '', 0),
(51, 50, 1, '19.95', 'CA', 'leconte m', '', 0),
(52, 51, 1, '47.9', 'sg', 'pasquier b', '', 0),
(53, 52, 1, '66.9', 'CE', 'calmet a', '', 0),
(54, 53, 1, '30.95', 'CE', 'langer m', '', 0),
(55, 54, 1, '62', 'CE', 'david j', '', 1),
(56, 55, 1, '155', 'CM', 'ferrault d', '', 1),
(57, 56, 1, '23.1', 'BP', 'CHEREAU', '', 1),
(58, 57, 1, '18.3', 'CE', 'NAUDIN P', '', 1),
(59, 58, 1, '14.2', 'CA', 'LORMIER J', '', 1),
(60, 59, 3, '25', '', 'personnel ext', '796365200', 1),
(61, 60, 3, '109.9', '', 'personnel ext', '690291253', 1);

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
(3, '28-04-2015', 1, '5010908', '150.8', 1),
(4, '28-04-2015', 1, '5010910', '92.8', 1),
(8, '28-04-2015', 1, '5010904', '44', 1),
(9, '28-04-2015', 1, '5010905', '82.5', 1),
(11, '18-05-2015', 1, '5556262', '62', 1),
(12, '19-05-2015', 1, '5556263', '186', 1),
(14, '29-04-2015', 2, '', '116', 1),
(15, '11/06/2015', 1, '5556293', '523', 1),
(16, '20/06/2015', 1, '5556291', '56', 1),
(17, '09/06/2015', 2, '', '70', 1),
(18, '19/06/2015', 1, '5556266', '228.6', 1),
(19, '19/06/2015', 1, '5556265', '30.95', 1),
(21, '19/06/2015', 1, '5556292', '217', 1),
(22, '19/06/2015', 1, '5556242', '55.6', 1),
(23, '23/06/2015', 2, '', '25', 1),
(24, '23/06/2015', 2, '', '109.9', 1);

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
(3, 3, 6),
(4, 3, 7),
(5, 3, 8),
(6, 3, 9),
(7, 3, 10),
(8, 3, 11),
(9, 3, 12),
(10, 4, 13),
(11, 4, 14),
(12, 4, 15),
(13, 4, 16),
(14, 8, 24),
(15, 9, 25),
(16, 9, 26),
(17, 11, 36),
(18, 12, 35),
(19, 12, 34),
(20, 15, 41),
(21, 15, 42),
(22, 15, 43),
(23, 15, 44),
(24, 15, 46),
(25, 15, 47),
(26, 15, 48),
(27, 16, 40),
(28, 18, 50),
(29, 18, 51),
(30, 18, 52),
(31, 18, 53),
(32, 19, 54),
(34, 21, 55),
(35, 21, 56),
(36, 22, 57),
(37, 22, 58),
(38, 22, 59);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE `remise_banque_esp` (
  `idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `remise_banque_esp`
--

INSERT INTO `remise_banque_esp` (`idremisebanqueesp`, `idremisebanque`, `idreglementventepresta`) VALUES
(4, 14, 5),
(5, 14, 39),
(6, 14, 37),
(7, 14, 21),
(8, 14, 22),
(9, 14, 23),
(10, 14, 17),
(11, 14, 19),
(12, 14, 20),
(13, 17, 49),
(14, 23, 60),
(15, 24, 61);

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
(3, '6371018', 2, 'ALIX', 'PATRICIA', '179 RUE DOCTEUR SCHWEITZER', '', '49400', 'SAU1UR', '', '', '', '29/03/1960', '01/09/1977', '', 'OUV', 'OPERATEUR E1BALLAGE', '', '', 'CDI', 1, '999999999'),
(4, '6371064', 1, 'ANDOUARD', 'ALBERT', '1 RUE DES TULIPES', '', '49160', 'LONGUE', '', '', '', '28/01/1961', '01/10/1979', '', 'OUV', 'PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(5, '6371065', 1, 'ANDOUARD', 'CLAUDE', '4 RUE JEAN DE LA BRETE', '', '49700', 'CIZAY LA 1ADELEINE', '', '', '', '17/02/1960', '01/10/1988', '', 'OUV', 'OPERATEUR NETTOYAGE', '', '', 'CDI', 1, '999999999'),
(6, '6371022', 1, 'AUBIN', 'PHILIPPE', '9 RUE DE LA POSTE', '', '49400', 'CHACE', '', '', '', '24/02/1964', '01/10/1985', '', 'OUV', 'COORDINATEUR DE LIGNE', '', '', 'CDI', 1, '999999999'),
(7, '6371198', 2, 'AUBOURG', 'JEANINE', '1 ALL DES ERABLES', '', '49400', 'CHACE', '', '', '', '24/01/1961', '01/10/1977', '', 'OUV', 'COORDINATEUR DE LIGNE', '', '', 'CDI', 1, '999999999'),
(8, '6371337', 1, 'BARDET', 'OLIVIER', '16 RUE DES BELLES CAVES', '', '49260', 'BREZE', '', '', '', '12/04/1968', '01/04/1989', '', 'OUV', 'PREPARATEUR FABRICATION', '', '', 'CDI', 1, '999999999'),
(9, '6371462', 2, 'BARETEAU', 'JOSIANE', '22 RUE DU CLOS CRISTAL', '', '49400', 'SOUZAY CHA1PIGNY', '', '', '', '01/03/1959', '01/08/1978', '', 'OUV', 'CARISTE CHA1BRE FROIDE NEGATIVE', '', '', 'CDI', 1, '999999999'),
(10, '6371341', 1, 'BARRET', 'PATRICE', '1 RUE DE L ENCLAVE', '', '49160', 'ST 1ARTIN DE LA PLACE', '', '', '', '08/06/1968', '01/01/1993', '', 'OUV', 'COORDINATEUR PREPARATION NUIT', '', '', 'CDI', 1, '999999999'),
(11, '6300413', 1, 'BARZIC', 'AURELIEN', '6 RUE L ARGURAY - CHAVANNES', '', '49260', 'LE PUY NOTRE DA1E', '', '', '', '31/10/1979', '21/11/2005', '', 'A1T', 'CHEF D''EQUIPE', '', '', 'CDI', 1, '999999999'),
(12, '6371485', 1, 'BATTAIS', 'STEPHANE', '2 RTE DU BOIS SAU1OUSSAY', '', '49260', 'BREZE', '', '', '', '19/02/1965', '01/06/1985', '', 'OUV', 'CARISTE', '', '', 'CDI', 1, '999999999'),
(13, '6371672', 1, 'BAZANTE', 'HUBERT', '4 RUE LES PORTES NEUVES', '', '86120', 'ROIFFE', '', '', '', '20/10/1970', '01/05/1991', '', 'OUV', 'PILOTE EQUIPE LOGISTIQUE', '', '', 'CDI', 1, '999999999'),
(14, '6371585', 1, 'BENOIST', 'PATRICK', '37  CLOS DU PAVE1ENT', '', '49400', 'CHACE', '', '', '', '13/01/1965', '01/03/1986', '', 'OUV', 'COORDINATEUR PREPARATION NUIT', '', '', 'CDI', 1, '999999999'),
(15, '6371688', 1, 'BENOIT', 'EMMANUEL', '28 RTE DES VINS', '', '49730', 'PARNAY', '', '', '', '12/01/1969', '01/10/1988', '', 'OUV', 'CARISTE PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(16, '6371745', 2, 'BERTHELOT', 'MARIE BERNARD', '3 RUE DES VARENNES', '', '49260', 'BREZE', '', '', '', '05/07/1957', '01/10/1973', '', 'OUV', 'PETRISSEUR', '', '', 'CDI', 1, '999999999'),
(17, '6302258', 1, 'BIGOT', 'LOUIS', '16 RUE DE LA PIERRE FICHE', '', '49400', 'BAGNEUX', '', '', '', '19/08/1971', '01/05/1992', '', 'OUV', 'CONDUCTEUR DE 1ACHINE', '', '', 'CDI', 1, '999999999'),
(18, '6372055', 2, 'BODIN', 'BRIGITTE', '71 RUE DES VENDANGES', '', '49400', 'SAU1UR', '', '', '', '20/10/1960', '01/02/1989', '', 'OUV', 'OPERATEUR FAB/E1BALL', '', '', 'CDI', 1, '999999999'),
(19, '6372072', 2, 'BOISSEAU', 'CATHERINE', '22 RUE DE L EAU VIVE', '', '49400', 'BAGNEUX', '', '', '', '25/08/1961', '01/05/1978', '', 'OUV', 'CONDUCTEUR DE 1ACHINE', '', '', 'CDI', 1, '999999999'),
(20, '6377922', 2, 'BORBEAU', 'MARIE NOELLE', '430 RUE LAMARTINE', '', '49400', 'SAUMUR', '', '', '', '24/06/1960', '01/06/1978', '', 'OUV', 'PREPARATEUR FABRICATION', '', '', 'CDI', 1, '999999999'),
(21, '6372244', 1, 'BOUFFET', 'PHILIPPE', '79 RUE DE LA PALEINE', '', '49260', 'ST CYR EN BOURG', '', '', '', '02/01/1961', '01/06/1982', '', 'OUV', 'PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(22, '6300657', 1, 'BOUQUET', 'SAMUEL', '63 RUE DU PARC', '', '49400', 'SAU1UR', '', '', '', '19/12/1976', '19/06/2007', '', 'CAD', 'DIRECTEUR USINE', '', '', 'CDI', 1, '999999999'),
(23, '6372379', 1, 'BOURLIERE', 'JOEL', '174 RUE CLAUDE BERNARD', '', '49400', 'SAU1UR', '', '', '', '02/07/1959', '01/08/1978', '', 'OUV', 'OPERATEUR NETTOYAGE', '', '', 'CDI', 1, '999999999'),
(24, '6300566', 2, 'BOURREAU', 'CHANTAL', '2 LD PALLUAU', '', '86200', 'LOUDUN', '', '', '', '11/12/1966', '01/11/1987', '', 'A1T', 'TECHNICIENNE QUALITE CLIENT', '', '', 'CDI', 1, '999999999'),
(25, '6372717', 2, 'BRONDEAU', 'MARTINE', '3 RUE DES NOYERS', '', '49400', 'CHACE', '', '', '', '24/12/1960', '01/07/1977', '', 'OUV', 'OPERATEUR E1BALLAGE', '', '', 'CDI', 1, '999999999'),
(26, '6372666', 1, 'BRUNEAU', 'PAUL', ' LD LA TOURETTE', '', '86120', 'SAIX', '', '', '', '25/05/1955', '01/04/1992', '', 'OUV', 'OPERATEUR NETTOYAGE', '', '', 'CDI', 1, '999999999'),
(27, '6301307', 1, 'CADU', 'MARJORIE', '19  CLOS DES TILLEULS', '', '49700', 'DOUE LA FONTAINE', '', '', '', '08/04/1988', '01/03/2011', '', 'A1T', 'ASSISTANTE RH', '', '', 'CDI', 1, '999999999'),
(28, '6372741', 1, 'CAILLEAUD', 'PHILIPPE', ' LD LES PISSONNIERES', '', '49400', 'ST HILAIRE ST FLORENT', '', '', '', '05/05/1961', '01/05/1980', '', 'OUV', 'APPROVISIONNEUR', '', '', 'CDI', 1, '999999999'),
(29, '6372742', 2, 'CALMET', 'GINETTE', '32 RUE DU PRIEURE', '', '49260', 'ST CYR EN BOURG', '', '', '', '17/03/1963', '01/09/1979', '', 'OUV', 'PREPARATEUR FABRICATION', '', '', 'CDI', 1, '999999999'),
(30, '6372744', 2, 'CALMET', 'FABIENNE', '41 RTE DE SAU1UR', '', '49730', 'PARNAY', '', '', '', '03/04/1960', '01/03/1978', '', 'OUV', 'CONDUCTEUR DE LIGNE AUTO1ATISEE', '', '', 'CDI', 1, '999999999'),
(31, '6378415', 2, 'CESBRON', 'BEATRICE', '2 RUE DU BOIS SAUMOUSSAY', '', '49260', 'BREZE', '', '', '', '25/06/1961', '01/09/1979', '', 'OUV', 'PREPARATEUR FABRICATION', '', '', 'CDI', 1, '999999999'),
(32, '6373040', 1, 'CHAIGNEAU', 'YANNICK', '28 RUE DES CAVES', '', '49400', 'VARRAINS', '', '', '', '08/06/1969', '01/08/1993', '', 'A1T', 'TECHNICIEN TRAVAUX NEUFS', '', '', 'CDI', 1, '999999999'),
(33, '6373068', 1, 'CHASSEPORT', 'DIDIER', '8 RUE ROBERT D ARBRISSEL', '', '49400', 'SAU1UR', '', '', '', '15/07/1966', '01/10/1988', '', 'A1T', 'CHEF D''EQUIPE', '', '', 'CDI', 1, '999999999'),
(34, '6371241', 2, 'CHAUVEAU', 'BERNADETTE', '16 RUE JULES A1IOT', '', '49400', 'ST HILAIRE ST FLORENT', '', '', '', '27/04/1960', '01/08/1981', '', 'A1T', 'RESP. LABO ANALYSES', '', '', 'CDI', 1, '999999999'),
(35, '6373187', 2, 'CHEVAL', 'JOCELYNE', '7 ALL DES 1ARCASSINS', '', '49400', 'DISTRE', '', '', '', '05/06/1960', '01/10/1978', '', 'OUV', 'CONDUCTEUR DE LIGNE AUTO1ATISEE', '', '', 'CDI', 1, '999999999'),
(36, '6373261', 1, 'CHICOISNE', 'PASCAL', '20 RUE DES 1ENHIRS', '', '49400', 'BAGNEUX', '', '', '', '01/05/1967', '01/12/1990', '', 'OUV', 'PETRISSEUR', '', '', 'CDI', 1, '999999999'),
(37, '6300063', 1, 'CORNILLEAU', 'JEREMY', '82 RUE DE ROUEN', '', '49400', 'SAU1UR', '', '', '', '06/09/1981', '02/03/2005', '', 'A1T', 'RESPONSABLE AI ET COORDINATEUR SECURITE', '', '', 'CDI', 1, '999999999'),
(38, '6374706', 2, 'COUANNET', 'DANIELLE', '65 RUE FOUCAULT', '', '49260', 'SAINT CYR EN BOURG', '', '', '', '19/02/1962', '01/09/1979', '', 'E1P', 'LABORANTINE 1ER ECHE', '', '', 'CDI', 1, '999999999'),
(39, '6373587', 2, 'COUET', 'MARIE CLAIRE', ' RUE CHARLES DE GAULLE - LES ALGUES APPT 8', '', '49260', '1ONTREUIL BELLAY', '', '', '', '25/08/1962', '01/09/1979', '', 'OUV', 'CARISTE DE LIGNE', '', '', 'CDI', 1, '999999999'),
(40, '6300940', 1, 'COURLIVANT', 'EMMANUEL', '8 RTE DE LA SEIGNEURIE', '', '86330', 'SAINT JEAN DE SAUVES', '', '', '', '20/10/1971', '01/10/1990', '', 'A1T', 'CUISINIER FOR1ULATEUR', '', '', 'CDI', 1, '999999999'),
(41, '6301256', 1, 'COURLIVANT', 'ALAIN', '3 RTE DE CHA1PIGNY', '', '49730', 'PARNAY', '', '', '', '03/06/1959', '01/03/1987', '', 'OUV', 'PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(42, '6301344', 2, 'COURLIVANT', 'NATHALIE', '3 RTE DE CHA1PIGNY', '', '49730', 'PARNAY', '', '', '', '01/10/1968', '01/02/1988', '', 'OUV', 'OPERATEUR NETTOYAGE', '', '', 'CDI', 1, '999999999'),
(43, '6377630', 2, 'CREPEAU', 'REGINE', '12 RUE DE LA BEDAUDIERE', '', '49730', 'TURQUANT', '', '', '', '04/09/1958', '01/02/1978', '', 'OUV', 'OPERATEUR FAB 1ER EC', '', '', 'CDI', 1, '999999999'),
(44, '6373730', 1, 'DA COSTA E SILVA', 'FRANCOIS', '21 RUE DES VIGNES', '', '49260', 'BREZE', '', '', '', '29/07/1969', '01/01/1992', '', 'OUV', '1AGASINIER 1ATIERES PRE1IERES', '', '', 'CDI', 1, '999999999'),
(45, '6374100', 1, 'DAVID', 'JEREMIE', '20 RUE LUCIEN DO1UREAU', '', '49400', 'SAINT LA1BERT DES LEVEES', '', '', '', '04/10/1963', '01/05/1992', '', 'OUV', 'CARISTE DE NETTOYAGE', '', '', 'CDI', 1, '999999999'),
(46, '6373912', 1, 'DELIGNE', 'RICHARD', '235 RUE D ANJOU', '', '49260', 'ARTANNES SUR THOUET', '', '', '', '23/07/1964', '04/04/1992', '', 'OUV', 'CARISTE-PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(47, '6374031', 1, 'DERBANNE', 'OLIVIER', '19 AVE JEAN 1ER1OZ - LES 1ESANGES', '', '49400', 'ST HILAIRE ST FLORENT', '', '', '', '24/07/1960', '01/05/1980', '', 'OUV', 'CARISTE-PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(48, '6374129', 2, 'DEVEAUX', 'VERONIQUE', '67 RUE DU BELLAY', '', '49260', 'ST JUST SUR DIVE', '', '', '', '07/03/1969', '01/10/1988', '', 'OUV', 'COORDINATEUR DE LIGNE', '', '', 'CDI', 1, '999999999'),
(49, '6374120', 1, 'DEZE', 'ERIC', '11 RUE SOUS L OR1EAU', '', '49260', 'ST CYR EN BOURG', '', '', '', '10/08/1961', '01/04/1992', '', 'OUV', 'PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(50, '6376669', 2, 'DROUINEAU', 'PATRICIA', '46 CHE DES RIVIERES', '', '49400', 'VARRAINS', '', '', '', '18/01/1959', '01/02/1978', '', 'OUV', 'OPERATEUR FAB 1ER EC', '', '', 'CDI', 1, '999999999'),
(51, '6300704', 1, 'DUBIER', 'HERVE', '189 RUE DU PONT FOUCHARD', '', '49400', 'BAGNEUX', '', '', '', '16/03/1966', '10/02/2004', '', 'OUV', 'ELECTRO1ECANICIEN 2E1E NIVEAU', '', '', 'CDI', 1, '999999999'),
(52, '6377510', 2, 'DUMESNIL', 'MARIE LAURE', '29 RUE DES ROGELINS', '', '49400', 'VARRAINS', '', '', '', '16/09/1957', '01/04/1978', '', 'E1P', 'PREPARATRICE EPICES', '', '', 'CDI', 1, '999999999'),
(53, '6374268', 2, 'DUPONT', 'MARIE LAURE', '8 RUE DU CLOS MOREAU', '', '49260', 'EPIEDS', '', '', '', '17/12/1967', '01/02/1989', '', 'OUV', 'CONDUCTEUR DE 1ACHINE', '', '', 'CDI', 1, '999999999'),
(54, '6374270', 2, 'DUPOUTS', 'MONIQUE', '38 RUE DES FAUVETTES', '', '49400', 'ST LA1BERT DES LEVEES', '', '', '', '12/07/1968', '01/02/1993', '', 'CAD', 'RESP. ASSURANCE QUALITE', '', '', 'CDI', 1, '999999999'),
(55, '6374432', 2, 'ETAVARD', 'ANITA', '447 RUE DES FLEURS', '', '49260', 'BALLOIRE', '', '', '', '31/10/1959', '01/11/1977', '', 'OUV', 'OPERATEUR E1BALLAGE', '', '', 'CDI', 1, '999999999'),
(56, '6374472', 1, 'FERRAULT', 'CHRISTOPHE', '39 RUE JULES DUPERRAY', '', '49400', 'BAGNEUX', '', '', '', '04/02/1963', '01/10/1992', '', 'OUV', 'COORDINATEUR PREPARATION NUIT', '', '', 'CDI', 1, '999999999'),
(57, '6374519', 1, 'FORGET', 'JEAN MICHEL', '4 CIT DE L EVEQUE', '', '86120', 'ROIFFE', '', '', '', '18/08/1959', '01/09/1981', '', 'OUV', 'PETRISSEUR', '', '', 'CDI', 1, '999999999'),
(58, '6300580', 2, 'FOURNIER', 'FRANCOISE', ' RTE DE PARCAY LES PINS', '', '49390', 'VERNOIL', '', '', '', '15/06/1959', '26/02/2007', '', 'OUV', 'COORDINATEUR DE LIGNE', '', '', 'CDI', 1, '999999999'),
(59, '6374649', 1, 'FOURREAU', 'MICHEL', ' RUE DE LA PATROCHE', '', '49260', 'BREZE', '', '', '', '15/10/1959', '01/03/1978', '', 'OUV', 'OPERATEUR E1BALLAGE', '', '', 'CDI', 1, '999999999'),
(60, '6374652', 1, 'FOURRIER', 'BRUNO', '31 RUE DU BOURG JOLY', '', '79290', 'SAINT 1ARTIN DE SANZAY', '', '', '', '07/09/1974', '13/05/2004', '', 'OUV', 'COORDINATEUR 1AGASIN', '', '', 'CDI', 1, '999999999'),
(61, '6375055', 1, 'GIRARD', 'ALAIN', '134 RUE DU 08 1AI 1945', '', '49260', '1ONTREUIL BELLAY', '', '', '', '20/01/1963', '01/12/1985', '', 'OUV', 'PREPARATEUR FABRICATION', '', '', 'CDI', 1, '999999999'),
(62, '6375277', 2, 'GODINEAU', 'YOLANDE', '9 RES PLEIN SOLEIL', '', '49400', 'CHACE', '', '', '', '07/12/1961', '01/01/1978', '', 'OUV', 'CONDUCTEUR DE 1ACHINE', '', '', 'CDI', 1, '999999999'),
(63, '6375368', 1, 'GRABKO', 'ALAIN', '30 RUE DES PETITES HAIES', '', '49260', 'LE VAUDELNAY', '', '', '', '19/04/1959', '01/01/1980', '', 'OUV', '1ECANICIEN FLUIDES', '', '', 'CDI', 1, '999999999'),
(64, '6375553', 1, 'HAMELIN', 'CYRILLE', '41 RUE VALBRUN', '', '49730', 'PARNAY', '', '', '', '19/04/1965', '01/07/1984', '', 'OUV', 'PILOTE EQUIPE LOGISTIQUE', '', '', 'CDI', 1, '999999999'),
(65, '6375673', 2, 'HERSARD', 'VERONIQUE', '5 CHE DES CAROSSES', '', '49260', 'EPIEDS', '', '', '', '29/04/1969', '01/02/1989', '', 'E1P', 'Pr?parateur d''analyses et pr?l?ve1ents', '', '', 'CDI', 1, '999999999'),
(66, '6300826', 1, 'JACQUET', 'FREDERIC', '12 RTE DU 1OULIN DE RASLAY', '', '86120', 'RASLAY', '', '', '', '02/02/1973', '28/04/2008', '', 'OUV', 'CONDUCTEUR DE LIGNE AUTO1ATISEE', '', '', 'CDI', 1, '999999999'),
(67, '6304056', 1, 'JARSON', 'MICKAEL', '19 RUE E1ILE LANDAIS', '', '49400', 'CHACE', '', '', '', '28/06/1980', '01/04/2001', '', 'OUV', 'CARISTE APPROVISIONNE1ENT', '', '', 'CDI', 1, '999999999'),
(68, '6375913', 1, 'JAULON', 'PHILIPPE', '7 RUE TRAVERSIERE', '', '49160', 'LONGUE', '', '', '', '25/12/1968', '01/01/1989', '', 'OUV', 'COORDINATEUR PREPARATION NUIT', '', '', 'CDI', 1, '999999999'),
(69, '6375918', 1, 'JAUNEAU', 'PATRICK', ' LD RAVAUX', '', '49160', 'LONGUE JU1ELLES', '', '', '', '03/03/1961', '01/04/1989', '', 'OUV', 'CARISTE', '', '', 'CDI', 1, '999999999'),
(70, '6302250', 1, 'JOURDAINE', 'FREDERIC', '19 RUE DES CHAR1ES', '', '79100', 'LOUZY', '', '', '', '31/10/1963', '01/10/1985', '', 'OUV', 'COORDINATEUR DE LIGNE', '', '', 'CDI', 1, '999999999'),
(71, '6375542', 2, 'JOUSSE', 'KATIE', '6 RUE VERCINGETORIX', '', '49400', 'BAGNEUX', '', '', '', '02/03/1969', '01/09/1988', '', 'OUV', 'PETRISSEUR', '', '', 'CDI', 1, '999999999'),
(72, '6376097', 1, 'JOUSSE', 'SEBASTIEN', '19 RUE JULES DUPERRAY', '', '49400', 'BAGNEUX', '', '', '', '23/08/1971', '01/03/1992', '', 'OUV', 'COORDINATEUR PREPARATION NUIT', '', '', 'CDI', 1, '999999999'),
(73, '6376118', 1, 'JUBERT', 'DOMINIQUE', '572 RTE DE FONTEVRAUD', '', '49400', 'SAU1UR', '', '', '', '06/03/1969', '01/05/1989', '', 'OUV', 'CONDUCTEUR DE LIGNE AUTO1ATISEE', '', '', 'CDI', 1, '999999999'),
(74, '6376201', 1, 'KADI', 'DJAMEL', '15 RUE DU MAL JOFFRE', '', '49400', 'SAU1UR', '', '', '', '24/11/1969', '01/07/1989', '', 'OUV', 'OPERATEUR NETTOYAGE', '', '', 'CDI', 1, '999999999'),
(75, '6376252', 1, 'LACHAT', 'LIONEL', '86 CHE DE 1ANIERES', '', '49400', 'ST HILAIRE ST FLORENT', '', '', '', '21/01/1965', '01/01/1985', '', 'OUV', 'PILOTE EQUIPE LOGISTIQUE', '', '', 'CDI', 1, '999999999'),
(76, '6376277', 2, 'LACQUEMENT', 'MIREILLE', '1 RUE BASSES RUES', '', '49730', 'VARENNES SUR LOIRE', '', '', '', '23/03/1958', '01/10/1974', '', 'E1P', 'CONTROLEUR QUALITE UNITE ET 1CE', '', '', 'CDI', 1, '999999999'),
(77, '6376322', 2, 'LAFRANCE', 'FRANCOISE', '59 RUE DES VIGNES', '', '49400', 'SAU1UR', '', '', '', '30/01/1962', '01/03/1978', '', 'OUV', 'OPERATEUR E1BALLAGE', '', '', 'CDI', 1, '999999999'),
(78, '6376324', 1, 'LAFRANCE', 'JEAN CLAUDE', '35 RUE DES ROCHES NEUVES', '', '49400', 'VARRAINS', '', '', '', '04/07/1959', '01/02/1978', '', 'OUV', 'CARISTE-PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(79, '6376471', 2, 'LANGER', '1ARYLENE', '254 RUE D ANJOU', '', '49260', 'ARTANNES SUR THOUET', '', '', '', '23/06/1956', '01/06/1972', '', 'OUV', 'OPERATEUR FAB 1ER EC', '', '', 'CDI', 1, '999999999'),
(80, '6376639', 2, 'LEBLED', 'GHISLAINE', '2 RTE DE BROSSAY', '', '49700', 'CIZAY LA 1ADELEINE', '', '', '', '16/07/1957', '01/07/1973', '', 'E1P', 'PREPARATEUR DEGUSTATION', '', '', 'CDI', 1, '999999999'),
(81, '6376681', 2, 'LECOMTE', 'MONIQUE', '6 RUE MILLOCHEAU', '', '49400', 'SAUMUR', '', '', '', '03/01/1963', '01/09/1979', '', 'OUV', 'OPERATEUR FAB 1ER EC', '', '', 'CDI', 1, '999999999'),
(82, '6376575', 1, 'LEDEUIL', 'PHILIPPE', '80 RUE GRAND RUE', '', '49400', 'VARRAINS', '', '', '', '07/06/1957', '01/01/1986', '', 'OUV', 'CARISTE DE LIGNE', '', '', 'CDI', 1, '999999999'),
(83, '6372824', 2, 'LELIEVRE', 'MARTINE', '56 RUE DU 1OUTIER', '', '49260', 'ST CYR EN BOURG', '', '', '', '12/07/1958', '01/02/1976', '', 'OUV', 'OPERATEUR E1BALLAGE', '', '', 'CDI', 1, '999999999'),
(84, '6376931', 1, 'LEROUX', 'ANDRE', '3 RUE DES EAUX BUES', '', '49400', 'CHACE', '', '', '', '28/03/1957', '01/03/1991', '', 'A1T', 'CHEF D''EQUIPE', '', '', 'CDI', 1, '999999999'),
(85, '6300597', 1, 'LETETREL', 'CESAR', '27 RUE GRAND RUE', '', '49250', 'BRION', '', '', '', '18/12/1979', '28/03/2007', '', 'CAD', 'RESPONSABLE FLUX', '', '', 'CDI', 1, '999999999'),
(86, '6376871', 1, 'LETROUX', 'MARC', '19 RUE DU LOTISSEMENT', '', '49260', 'EPIEDS', '', '', '', '10/08/1957', '01/05/1979', '', 'OUV', 'CARISTE APPROVISIONNE1ENT', '', '', 'CDI', 1, '999999999'),
(87, '6376909', 2, 'LIHOREAU', 'CHANTAL', '11 ALL DE LA MAILLETERIE', '', '37140', 'BOURGUEIL', '', '', '', '09/04/1960', '01/07/1979', '', 'E1P', 'CONTROLEUR QUALITE/1CE UNITE', '', '', 'CDI', 1, '999999999'),
(88, '6376916', 2, 'LIPHARDT', 'BRIGITTE', '8 RES PLEIN SOLEIL', '', '49400', 'CHACE', '', '', '', '09/04/1960', '01/01/1978', '', 'A1T', 'TECHNICIENNE CONT.GESTION', '', '', 'CDI', 1, '999999999'),
(89, '6376992', 2, 'LORMIER', 'LORETTE', '3 CHE DES CARREAUX', '', '49400', 'DISTRE', '', '', '', '06/07/1961', '01/07/1978', '', 'OUV', 'CARISTE CHA1BRE FROIDE', '', '', 'CDI', 1, '999999999'),
(90, '6376993', 1, 'LORMIER', 'JEROME', '142 RUE DE DOUE', '', '49400', 'BAGNEUX', '', '', '', '31/08/1972', '01/12/1992', '', 'OUV', 'PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(91, '6377012', 1, 'MABILLEAU', 'ROSELYNE', '135 RUE LOUVET', '', '49400', 'SAU1UR', '', '', '', '09/09/1956', '01/01/1978', '', 'OUV', 'CONDUCTEUR PETRIN TARTES', '', '', 'CDI', 1, '999999999'),
(92, '6377013', 1, 'MABILLEAU', 'FRANCINE', '139 RUE LOUVET', '', '49400', 'SAU1UR', '', '', '', '18/05/1958', '01/01/1978', '', 'OUV', 'CONDUCTEUR DE LIGNE AUTO1ATISEE', '', '', 'CDI', 1, '999999999'),
(93, '6371584', 2, 'MARIET', 'SOPHIE', '3 RTE DES ROSIERS', '', '49160', 'LONGUE', '', '', '', '05/05/1969', '01/10/1989', '', 'E1P', 'LABORANTINE 1ER ECHE', '', '', 'CDI', 1, '999999999'),
(94, '6377171', 1, 'MARMIN', 'MICKAEL', '6 RUE DU PRIEURE', '', '49260', 'ST CYR EN BOURG', '', '', '', '22/11/1970', '01/12/1992', '', 'OUV', '1ECANICIEN NIVEAU 2', '', '', 'CDI', 1, '999999999'),
(95, '6377200', 1, 'MARTIN', 'HUGUES', '49 RUE THEOPHILE VAUGOUIN', '', '49400', 'SAINT HILAIRE ST FLORENT', '', '', '', '11/05/1974', '01/07/2000', '', 'A1T', 'TECHNICIEN TRAVAUX NEUFS', '', '', 'CDI', 1, '999999999'),
(96, '6377334', 1, 'MASSON', 'JACQUES', ' RUE D ANJOU', '', '49260', 'ARTANNES SUR THOUET', '', '', '', '06/10/1967', '01/05/1989', '', 'OUV', 'COORDINATEUR DE LIGNE', '', '', 'CDI', 1, '999999999'),
(97, '6377337', 1, 'MASSON', 'STEPHANE', '14 CHE DU PARADIS', '', '49400', 'VILLEBERNIER', '', '', '', '29/11/1968', '01/01/1990', '', 'OUV', 'AIDE PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(98, '6300715', 2, 'MENARD', 'LUCIA', '2 RUE DES PA1PRES', '', '49400', 'CHACE', '', '', '', '25/02/1982', '01/12/2006', '', 'A1T', 'ASSISTANTE SCE TECHNIQUE', '', '', 'CDI', 1, '999999999'),
(100, '6300964', 2, 'MESMIN', 'PATRICIA', '19 RUE ISAAC DE RAZILLY', '', '86120', 'ROIFFE', '', '', '', '03/10/1959', '01/01/1990', '', 'OUV', 'CONDUCTEUR DE 1ACHINE', '', '', 'CDI', 1, '999999999'),
(101, '6304030', 1, 'METAIS', 'RAPHAEL', '8 I1P JEANNE D ARC', '', '49400', 'SAINT HILAIRE ST FLORENT', '', '', '', '05/09/1974', '01/05/2000', '', 'OUV', 'ELECTROMECANICIEN', '', '', 'CDI', 1, '999999999'),
(103, '6376003', 2, 'MIGNOT', 'NADINE', '16 RES PLEIN SOLEIL', '', '49400', 'CHACE', '', '', '', '15/01/1960', '01/05/1980', '', 'OUV', 'OPERATEUR E1BALLAGE', '', '', 'CDI', 1, '999999999'),
(104, '6377526', 1, 'MONJAL', 'DANIEL', '21B RUE DE LA POSTE', '', '49400', 'CHACE', '', '', '', '17/08/1962', '01/06/1983', '', 'A1T', 'ELECTRO1ECANICIEN N2 (RELAIS)', '', '', 'CDI', 1, '999999999'),
(105, '6304021', 2, 'MONORY', 'MYRIAM', '31 RUE DU BOURG JOLY - PASSAY', '', '79290', 'SAINT 1ARTIN DE SANZAY', '', '', '', '25/06/1978', '01/03/2000', '', 'E1P', 'ASSISTANTE  GESTION', '', '', 'CDI', 1, '999999999'),
(106, '6377613', 1, 'MOREAU', 'DAVID', '37 RUE DES VARENNES', '', '49400', 'ROU 1ARSON', '', '', '', '17/05/1969', '01/11/1988', '', 'OUV', 'AIDE PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(107, '6377700', 1, 'MUREAU', 'FRANCOIS', '59 RUE DES VIGNES - APPT 18', '', '49400', 'SAU1UR', '', '', '', '04/12/1965', '01/08/1988', '', 'OUV', 'PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(108, '6377720', 1, 'NAUDIN', 'PHILIPPE', ' LD LES JOUANNEAUX', '', '49680', 'NEUILLE', '', '', '', '02/08/1966', '01/09/1988', '', 'OUV', 'CARISTE DE LIGNE', '', '', 'CDI', 1, '999999999'),
(109, '6300793', 1, 'NUTTA', 'YOAN', '1 RUE DE LA FIDELITE', '', '49400', 'SAU1UR', '', '', '', '26/04/1982', '01/11/2005', '', 'OUV', 'PETRISSEUR', '', '', 'CDI', 1, '999999999'),
(110, '6377930', 2, 'OLIVE', 'SYLVIE', '19 RUE DES VIOLETTES', '', '49260', 'BREZE', '', '', '', '16/01/1962', '01/01/1978', '', 'OUV', 'OPERATEUR E1BALLAGE', '', '', 'CDI', 1, '999999999'),
(111, '6377765', 1, 'OLIVIER', 'PASCAL', '40 RUE DU CLOS POINTU', '', '49400', 'SAU1UR', '', '', '', '20/06/1959', '01/10/1981', '', 'OUV', '1ECANICIEN/REGLEUR 2', '', '', 'CDI', 1, '999999999'),
(112, '6372807', 2, 'PASQUIER', 'BRIGITTE', '19 RUE DE LA POSTE', '', '49400', 'CHACE', '', '', '', '20/07/1956', '01/05/1980', '', 'OUV', 'COORDINATEUR DE LIGNE', '', '', 'CDI', 1, '999999999'),
(113, '6377889', 1, 'PELTIER', 'THIERRY', '30 RES PLEIN SOLEIL', '', '49400', 'CHACE', '', '', '', '14/02/1961', '01/01/1980', '', 'OUV', 'CONDUCTEUR DE CUISEUR', '', '', 'CDI', 1, '999999999'),
(114, '6377931', 1, 'PHELIPOT', 'THIERRY', '11 RUE DE LA CHAPELLE', '', '49700', 'BROSSAY', '', '', '', '26/03/1961', '01/05/1980', '', 'OUV', 'PREPARATEUR FABRICATION', '', '', 'CDI', 1, '999999999'),
(115, '6377933', 1, 'PIEDOIS', 'NICOLAS', '26 RUE DE L EGALITE', '', '86120', '1ORTON', '', '', '', '25/10/1973', '01/07/1993', '', 'OUV', 'COORDINATEUR DE LIGNE', '', '', 'CDI', 1, '999999999'),
(116, '6383838', 1, 'PORTIER', 'ALAIN', '28 RUE POINTEL', '', '35400', 'SAINT 1ALO', '', '', '', '18/03/1959', '01/06/1981', '', 'A1T', 'RESPONSABLE 1AGASIN ET LOGISTIQUE', '', '', 'CDI', 1, '999999999'),
(117, '6378080', 1, 'POUPARD', 'PIERRE', '10 RUE DE LA MEUNERIE', '', '49400', 'BAGNEUX', '', '', '', '23/01/1960', '01/12/1988', '', 'OUV', 'ELECTRO1ECANICIEN N2', '', '', 'CDI', 1, '999999999'),
(118, '6378134', 1, 'PRUNIER', 'ERIC', '4 CHE DE LA SEGUINIERE', '', '49400', 'VILLEBERNIER', '', '', '', '17/02/1963', '01/02/1982', '', 'OUV', 'AGENT STATION EPURATION ET SERVICE GENERAUX', '', '', 'CDI', 1, '999999999'),
(119, '6378393', 1, 'REDUREAU', 'ALAIN', '36 RUE DE LA POTERNE', '', '49400', 'VARRAINS', '', '', '', '26/09/1958', '01/03/1978', '', 'OUV', 'PETRISSEUR', '', '', 'CDI', 1, '999999999'),
(120, '6378399', 2, 'REDUREAU', 'MARYSE', '36 RUE DE LA POTERNE', '', '49400', 'VARRAINS', '', '', '', '19/07/1961', '01/03/1978', '', 'OUV', 'CONDUCTEUR DE 1ACHINE', '', '', 'CDI', 1, '999999999'),
(121, '6378410', 1, 'REMY', 'DIDIER', '4 RUE DE 1ONTAGLAND', '', '49400', 'BAGNEUX', '', '', '', '26/07/1966', '01/06/1988', '', 'OUV', 'PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(122, '6384001', 1, 'RENARD', 'ERIC', '12 RUE LESPAGNEUL DE LA PLANT', '', '49650', 'ALLONNES', '', '', '', '18/01/1966', '01/10/1986', '', 'OUV', 'CONDUCTEUR DE LIGNE AUTO1ATISEE', '', '', 'CDI', 1, '999999999'),
(123, '6378395', 2, 'RICHARD', 'CHANTAL', '9 RUE WALDECK ROUSSEAU', '', '49400', 'SAU1UR', '', '', '', '28/11/1960', '01/04/1978', '', 'OUV', 'OPERATEUR FAB 1ER EC', '', '', 'CDI', 1, '999999999'),
(124, '6378613', 1, 'RICHARD', 'GILLES', '3 RUE DE L ABREUVOIR', '', '49400', 'SOUZAY CHA1PIGNY', '', '', '', '08/01/1961', '01/12/1979', '', 'OUV', 'PILOTE EQUIPE LOGISTIQUE', '', '', 'CDI', 1, '999999999'),
(125, '6378624', 1, 'RICHARD', 'YANN', '3 RUE DU BOURNEAU', '', '49700', 'CIZAY LA 1ADELEINE', '', '', '', '31/05/1972', '01/04/1992', '', 'OUV', 'CARISTE APPROVISIONNE1ENT', '', '', 'CDI', 1, '999999999'),
(126, '6378693', 1, 'RICHER', 'PHILIPPE', '73 RUE DU CHATEAU', '', '49260', '1ONTREUIL BELLAY', '', '', '', '16/04/1962', '01/05/1978', '', 'OUV', 'PETRISSEUR', '', '', 'CDI', 1, '999999999'),
(127, '6375396', 2, 'ROBERT', 'BRIGITTE', '19 BLD JOLY LETER1E', '', '49400', 'SAU1UR', '', '', '', '17/07/1958', '01/08/1976', '', 'OUV', 'OPERATEUR E1BALLAGE', '', '', 'CDI', 1, '999999999'),
(128, '6378773', 2, 'ROBINEAU', 'GHISLAINE', '102 RUE DES VIGNES', '', '49260', 'COURCHA1PS', '', '', '', '01/08/1959', '01/09/1979', '', 'OUV', 'OPERATEUR FAB 1ER EC', '', '', 'CDI', 1, '999999999'),
(129, '6378878', 1, 'ROCHE', 'GILLES', '44 RUE DE L ABREUVOIR', '', '49400', 'BAGNEUX', '', '', '', '05/01/1964', '01/09/1984', '', 'OUV', 'CHARGEUR / PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(130, '6378882', 1, 'ROCHE', 'JEROME', '23 RUE DES SABOTIERS', '', '49400', 'ST LA1BERT DES LEVEES', '', '', '', '01/03/1971', '01/02/1991', '', 'OUV', 'CARISTE DE NETTOYAGE', '', '', 'CDI', 1, '999999999'),
(131, '6300795', 1, 'ROUSSIASSE', 'AURELIEN', ' LD LA BARAUDIERE', '', '49390', 'LA BREILLE LES PINS', '', '', '', '28/05/1987', '01/07/2007', '', 'OUV', 'CONDUCTEUR DE LIGNE AUTO1ATISEE', '', '', 'CDI', 1, '999999999'),
(132, '6379092', 1, 'RUEL', 'ROLAND', '43 RUE DE LA 1ETAIRIE', '', '49400', 'ST LA1BERT DES LEVEES', '', '', '', '30/03/1964', '01/03/1986', '', 'OUV', 'PREPARATEUR FABRICATION', '', '', 'CDI', 1, '999999999'),
(133, '6379471', 2, 'TESSIER', 'LEOCADIE', '31 RUE DES COTEAUX', '', '49400', 'BAGNEUX', '', '', '', '04/07/1960', '01/02/1978', '', 'OUV', 'CONDUCTEUR DE PETRIN TARTES', '', '', 'CDI', 1, '999999999'),
(134, '6379474', 1, 'THIERRY', 'JEAN MARC', '26 RES PLEIN SOLEIL', '', '49400', 'CHACE', '', '', '', '25/05/1962', '01/09/1981', '', 'OUV', 'CONDUCTEUR DE LIGNE AUTO1ATISEE', '', '', 'CDI', 1, '999999999'),
(135, '6360005', 1, 'TIJOU', 'EMILIE', '688 RUE DE LA SALLE', '', '49260', 'MONTREUIL BELLAY', '', '', '', '13/02/1987', '01/08/2012', '', 'A1T', 'RESPONSABLE QUALITE ET AMELIORATION CONTINUE', '', '', 'CDI', 1, '999999999'),
(136, '6379552', 1, 'TRAVERS', 'ERIC', '327 RUE DU CHEMIN VERT', '', '49400', 'SAU1UR', '', '', '', '20/07/1965', '01/04/1990', '', 'OUV', 'PETRISSEUR', '', '', 'CDI', 1, '999999999'),
(137, '6379600', 1, 'VERGER', 'FRANCOIS', '8 RUE LOUIS CHOUTEAU', '', '49400', 'CHACE', '', '', '', '12/10/1974', '01/10/1999', '', 'A1T', 'RESPONSABLE PRODUCTION', '', '', 'CDI', 1, '999999999'),
(138, '6377444', 2, 'VIOLEAU', 'MONIQUE', '12 RUE LOUIS ROBINEAU', '', '49400', 'CHACE', '', '', '', '09/03/1962', '01/02/1989', '', 'OUV', 'CARISTE CHA1BRE FROIDE NEGATIVE', '', '', 'CDI', 1, '999999999'),
(139, '6300716', 1, 'VIOU', 'ERIC', '2 RES PLEIN SOLEIL', '', '49400', 'CHACE', '', '', '', '16/11/1958', '01/11/2001', '', 'OUV', 'ELECTRO1ECANICIEN 2?1E NIVEAU', '', '', 'CDI', 1, '999999999'),
(140, '6379717', 1, 'WAHO', 'TONY', '30B RUE MARCEAU', '', '49400', 'SAU1UR', '', '', '', '31/07/1966', '01/05/1992', '', 'OUV', 'CARISTE NETTOYAGE NUIT', '', '', 'CDI', 1, '999999999'),
(141, '6377170', 2, 'WANDERSTEIN', 'PATRICIA', ' LD LES SABLONS NORD', '', '49400', 'ST LA1BERT DES LEVEES', '', '', '', '27/11/1957', '01/08/1977', '', 'OUV', 'OPERATEUR FAB 1ER EC', '', '', 'CDI', 1, '999999999'),
(142, '6377030', 2, 'WANGON', 'CHRISTELLE', '3 RUE DES VERNES', '', '49400', 'CHACE', '', '', '', '20/08/1967', '01/10/1988', '', 'OUV', 'PREPARATRICE EPICES', '', '', 'CDI', 1, '999999999'),
(143, '6379718', 1, 'WANGON', 'PATRICK', '3 RUE DES VERNES', '', '49400', 'CHACE', '', '', '', '11/05/1964', '01/06/1987', '', 'CAD', 'RESPONSABLE TECHNIQUE USINE', '', '', 'CDI', 1, '999999999'),
(144, '6379724', 2, 'WENZLER', 'MICHELE', '35 RUE ROBERT D ARBRISSEL', '', '49590', 'FONTEVRAUD', '', '', '', '29/06/1961', '01/12/1978', '', 'OUV', 'CONDUCTEUR DE 1ACHINE', '', '', 'CDI', 1, '999999999'),
(145, '6379762', 1, 'XIONG', 'SAO', '36 RUE JULES DUPERRAY', '', '49400', 'BAGNEUX', '', '', '', '21/07/1957', '01/06/1982', '', 'OUV', 'PREPARATEUR', '', '', 'CDI', 1, '999999999'),
(146, '6379788', 2, 'YVON', 'MARIE LINE', '26 RUE LOUIS CHOUTEAU', '', '49400', 'CHACE', '', '', '', '04/03/1961', '01/05/1978', '', 'A1T', 'CHARGEE D''ORDONNANCE1ENT', '', '', 'CDI', 1, '999999999'),
(147, '', 1, 'PERSONNEL', 'EXTERIEUR', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '9999999999999999');

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
(6, '1430172000', '121876337', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par .', '', '11.6', 1),
(7, '1430172000', '0001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de FERRAULT.', '', '17.4', 1),
(8, '1430172000', '002', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JOURDAINE.', '', '23.2', 1),
(9, '1430172000', '003', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BARZIC.', '', '23.2', 1),
(10, '1430172000', '004', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de VIOU.', '', '23.2', 1),
(11, '1430172000', '005', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de NAUDIN.', '', '23.2', 1),
(12, '1430172000', '006', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CALMET.', '', '23.2', 1),
(13, '1430172000', '007', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de HAMELIN.', '', '17.4', 1),
(14, '1430172000', '5010908', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 5010908 en date du 28-04-2015.', '150.8', '', 1),
(15, '1430172000', '001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MONJAL.', '', '23.2', 1),
(16, '1430172000', '002', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de YVON.', '', '23.2', 1),
(17, '1430172000', '003', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TIJOU.', '', '23.2', 1),
(18, '1430172000', '004', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LIPHART.', '', '23.2', 1),
(19, '1430172000', '604948060', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par HERSARD.', '', '23.2', 1),
(21, '1430172000', '283752599', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par METAIS.', '', '5.8', 1),
(22, '1430172000', '168468722', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ALIX.', '', '17.4', 1),
(23, '1430172000', '616667463', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par NUTTA.', '', '11.6', 1),
(24, '1430172000', '729356196', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par ALIX.', '', '11.6', 1),
(25, '1430172000', '464513148', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par TESSIER.', '', '11.6', 1),
(26, '1430172000', '5010910', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 5010910 en date du 28-04-2015.', '92.8', '', 1),
(27, '1430172000', '001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de audouin.', '', '44', 0),
(28, '1430172000', '5010904', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 5010904 en date du 28-04-2015.', '44', '', 1),
(29, '1430172000', '001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de etavard.', '', '33', 0),
(30, '1430172000', '002', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DACOSTA.', '', '49.5', 0),
(31, '1430172000', '5010905', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 5010905 en date du 28-04-2015.', '82.5', '', 1),
(42, '1431900000', '5556262', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 5556262 en date du 18-05-2015.', '62', '', 1),
(43, '1431986400', '5556263', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 5556263 en date du 19-05-2015.', '124', '', 1),
(44, '1430172000', '340246996', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par CESBRON.', '', '11.6', 1),
(46, '1430172000', '771568757', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par robert b.', '', '11.6', 1),
(48, '1431993600', '32388072', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de juano.', '', '62.00', 1),
(49, '1431993600', '71605876', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ferrault.', '', '124.00', 1),
(50, '1433800800', '00000', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LETROUX MARC.', '', '56', 0),
(59, '1446764400', '5556293', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 5556293 en date du 06-11-2015.', '72', '', 1),
(60, '', '5556291', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 5556291 en date du 01-01-1970.', '56', '', 1),
(61, '1433800800', '278139878', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par personnel ext.', '', '70', 1),
(67, '', '5556266', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 5556266 en date du 01-01-1970.', '228.6', '', 1),
(69, '', '5556265', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 5556265 en date du 01-01-1970.', '30.95', '', 1),
(70, '1434664800', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de david j.', '', '62', 0),
(71, '1434664800', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ferrault d.', '', '155', 0),
(72, '', '5556292', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 5556292 en date du 01-01-1970.', '217', '', 1),
(73, '1434664800', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHEREAU.', '', '23.1', 0),
(74, '1434664800', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de NAUDIN P.', '', '18.3', 0),
(75, '1434664800', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LORMIER J.', '', '14.2', 0),
(76, '', '5556242', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 5556242 en date du 01-01-1970.', '55.6', '', 1),
(77, '1435010400', '796365200', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par personnel ext.', '', '25', 1),
(78, '', '', 'Remise Bancaire', 'Remise de EspÃ¨ce', 'Remise en banque NÂ°  en date du 01-01-1970.', '25', '', 1),
(79, '1435010400', '690291253', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par personnel ext.', '', '109.9', 1),
(80, '', '', 'Remise Bancaire', 'Remise de EspÃ¨ce', 'Remise en banque NÂ°  en date du 01-01-1970.', '109.9', '', 1);

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
  MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
  MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
  MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
  MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `compta_balance`
--
ALTER TABLE `compta_balance`
  MODIFY `idcomptabalance` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT pour la table `compta_banque`
--
ALTER TABLE `compta_banque`
  MODIFY `idcomptabanque` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;
--
-- AUTO_INCREMENT pour la table `compta_bilan_actif`
--
ALTER TABLE `compta_bilan_actif`
  MODIFY `idcptbilanactif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `compta_bilan_passif`
--
ALTER TABLE `compta_bilan_passif`
  MODIFY `idcptbilanpassif` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `compta_caisse`
--
ALTER TABLE `compta_caisse`
  MODIFY `idcomptacaisse` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta_compte`
--
ALTER TABLE `compta_compte`
  MODIFY `idcomptacompte` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=660;
--
-- AUTO_INCREMENT pour la table `compta_livret`
--
ALTER TABLE `compta_livret`
  MODIFY `idcomptalivret` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `compta_mvm`
--
ALTER TABLE `compta_mvm`
  MODIFY `idcomptamvm` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;
--
-- AUTO_INCREMENT pour la table `compta_plan`
--
ALTER TABLE `compta_plan`
  MODIFY `idcomptaplan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT pour la table `compta_pret`
--
ALTER TABLE `compta_pret`
  MODIFY `idcomptapret` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `compta_resultat`
--
ALTER TABLE `compta_resultat`
  MODIFY `idresultat` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;
--
-- AUTO_INCREMENT pour la table `config_etablissement`
--
ALTER TABLE `config_etablissement`
  MODIFY `idetablissement` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cpt_resultat`
--
ALTER TABLE `cpt_resultat`
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
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
  MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
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
  MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
  MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
  MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
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
  MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
  MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
  MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
