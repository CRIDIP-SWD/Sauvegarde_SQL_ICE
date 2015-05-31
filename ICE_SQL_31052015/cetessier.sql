-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 31 Mai 2015 à 18:05
-- Version du serveur :  5.5.41-0ubuntu0.14.04.1
-- Version de PHP :  5.5.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `cetessier`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `achat_presta`
--

INSERT INTO `achat_presta` (`idachatpresta`, `date_achat`, `idprestation`, `qte`, `total_achat`) VALUES
(11, '11-03-2015', 70, '10', '50'),
(13, '12-02-2015', 70, '10', '50'),
(16, '03-02-2015', 70, '5', '25'),
(17, '22-04-2015', 73, '10', '50');

-- --------------------------------------------------------

--
-- Structure de la table `ayant_droit`
--

CREATE TABLE IF NOT EXISTS `ayant_droit` (
`idayantdroit` int(13) NOT NULL,
  `idsalarie` int(13) NOT NULL,
  `nom_ayant_droit` varchar(255) NOT NULL,
  `prenom_ayant_droit` varchar(255) NOT NULL,
  `date_naissance_ayant_droit` varchar(255) NOT NULL,
  `solde_ayant_droit` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=499 ;

--
-- Contenu de la table `ayant_droit`
--

INSERT INTO `ayant_droit` (`idayantdroit`, `idsalarie`, `nom_ayant_droit`, `prenom_ayant_droit`, `date_naissance_ayant_droit`, `solde_ayant_droit`) VALUES
(80, 72, 'ALLARD', 'MAELLE', '26/10/2011', ''),
(81, 72, 'ALLARD', 'NATHAN', '15/12/2008', ''),
(82, 72, 'ALLARD', 'RANDY', '10/09/2013', ''),
(83, 72, 'POURTAUD', 'MANON', '25/04/1998', ''),
(84, 72, 'POURTAUD', 'PAULINE', '13/07/2002', ''),
(85, 74, 'AMZIL', 'MATHYS', '27/03/2008', ''),
(86, 75, 'BRISSET', 'ADRIEN', '27/05/1995', ''),
(87, 75, 'BRISSET', 'BAPTISTE', '22/12/2000', ''),
(88, 75, 'BRISSET', 'CAMILLE', '26/01/1998', ''),
(89, 76, 'ANGELO', 'ALAN', '10/10/2000', ''),
(90, 76, 'ANGELO', 'COLLEEN', '04/11/2003', ''),
(91, 76, 'THEBERT', 'DAMIEN', '09/10/1991', ''),
(92, 77, 'GUIET', 'GEOFFRAY', '12/01/1996', ''),
(93, 77, 'GUIET', 'THOMAS', '15/12/1999', ''),
(94, 80, 'AUBRY', 'MAYLIS', '04/12/2005', ''),
(95, 81, 'AUDOUARD', 'ELINA', '06/10/2014', ''),
(96, 81, 'AUDOUARD', 'MAXENCE', '16/08/2011', ''),
(97, 82, 'HAMELIN', 'LALIANNA', '02/05/2013', ''),
(98, 84, 'BARBALONE', 'PAULINE', '07/01/2000', ''),
(99, 84, 'BARBALONE', 'VINCENT', '11/07/1997', ''),
(100, 85, 'BABIN', 'ANTHONIN', '19/01/2010', ''),
(101, 85, 'BABIN', 'ELIAN', '19/12/2013', ''),
(102, 85, 'BABIN', 'MAXENCE', '14/12/2011', ''),
(103, 87, 'BANGOURA', 'FATIMATA', '01/10/2004', ''),
(104, 89, 'BARELLI', 'JULIETTE', '03/08/2014', ''),
(105, 90, 'BARRE', 'DAVID', '05/11/1980', ''),
(106, 90, 'BARRE', 'JESSICA', '24/03/1979', ''),
(107, 90, 'BARRE', 'THOMAS', '13/11/1986', ''),
(108, 93, 'BEAUBIGNY', 'FRANCOIS', '25/03/1991', ''),
(109, 93, 'BEAUBIGNY', 'JULIEN', '10/11/1989', ''),
(110, 93, 'BEAUBIGNY', 'MARION', '25/03/1991', ''),
(111, 99, 'BENOIST', 'FLORIANE', '08/07/2004', ''),
(112, 99, 'BENOIST', 'MARION', '01/05/2002', ''),
(113, 99, 'BENOIST', 'OCEANE', '23/03/2001', ''),
(114, 99, 'BENOSIT', 'CLOE', '15/02/2007', ''),
(115, 99, 'RUIZ-RUIZ BENOIST', 'MYLANA', '22/01/2012', ''),
(116, 99, 'RUIZ-RUIZ BENOIST', 'TIAGO', '14/10/2014', ''),
(117, 100, 'BERNARD', 'MILANE', '24/11/2009', ''),
(118, 101, 'BERTHO', 'LAURE', '19/11/1998', ''),
(119, 101, 'BERTHO', 'MARIE', '15/08/2002', ''),
(120, 102, 'BERTHONNEAU', 'ANTOINE', '01/08/1995', ''),
(121, 102, 'BERTHONNEAU', 'CLEMENCE', '18/07/1998', ''),
(122, 105, 'BESNARD', 'LORIS', '08/08/2012', ''),
(123, 105, 'BESNARD', 'NOLAN', '09/11/2009', ''),
(124, 105, 'BESNARD', 'TIMEO', '03/05/2008', ''),
(125, 104, 'BESNARD', 'CHARLOTTE', '14/11/1997', ''),
(126, 104, 'BESNARD', 'JONATHAN', '06/01/2003', ''),
(127, 104, 'BESNARD', 'MELISSA', '17/12/1999', ''),
(128, 106, 'BIDET', 'LISON', '26/10/2007', ''),
(129, 106, 'BIDET', 'MARCEAU', '31/03/2010', ''),
(130, 108, 'BIDON', 'MARC', '19/08/1985', ''),
(131, 109, 'BIGOT', 'ESTHER', '06/10/2003', ''),
(132, 109, 'BIGOT', 'MARIN', '28/02/2006', ''),
(133, 109, 'BIGOT', 'ROSE', '19/10/2007', ''),
(134, 110, 'BLOT', 'KELYA', '27/09/2007', ''),
(135, 110, 'HAUTREUX', 'ERWAN', '12/07/2003', ''),
(136, 113, 'BODIER', 'SAMUEL', '10/01/2005', ''),
(137, 113, 'BODIER', 'THEO', '18/09/2009', ''),
(138, 115, 'BODIN', 'GUILLAUME', '28/06/1986', ''),
(139, 116, 'BODIN', 'GUILLAUME', '28/06/1986', ''),
(140, 114, 'BODIN', 'LOUANE', '02/11/2007', ''),
(141, 114, 'BODIN', 'MAEL', '17/08/2011', ''),
(142, 117, 'BONNIN', 'JULIE', '16/10/1984', ''),
(143, 118, 'BOUCARD', 'BERANGERE', '11/09/2000', ''),
(144, 118, 'BOUCARD', 'EMELINE', '03/09/1992', ''),
(145, 118, 'BOUCARD', 'MELANIE', '28/09/1996', ''),
(146, 119, 'BOUGET', 'GABY', '02/10/2002', ''),
(147, 119, 'BOUGET', 'PRISCILLA', '23/11/1993', ''),
(148, 124, 'BOURDIN', 'AMELINE', '10/11/2001', ''),
(149, 124, 'BOURDIN', 'COLINE', '25/08/1999', ''),
(150, 124, 'BOURDIN', 'MARINE', '08/09/2005', ''),
(151, 125, 'BOUREL', 'JORDAN', '05/05/2014', ''),
(152, 126, 'BOURGERIE', 'VICTOR', '24/02/2015', ''),
(153, 127, 'BERNARD', 'CELIA', '11/02/2011', ''),
(154, 131, 'BRAZILLE', 'LOUANE', '05/10/2012', ''),
(155, 131, 'BRAZILLE', 'MATHYS', '17/09/2010', ''),
(156, 135, 'BRU', 'AGATHE', '29/03/2012', ''),
(157, 136, 'BRUERE', 'CAMILLE', '15/01/1996', ''),
(158, 136, 'BRUERE', 'JUSTINE', '27/01/1994', ''),
(159, 136, 'BRUERE', 'WILLIAM', '31/07/2004', ''),
(160, 137, 'BRUGIERE LEGENDRE', 'MAYANNE', '28/08/2012', ''),
(161, 138, 'ROCHE', 'LUDIVINE', '20/11/1997', ''),
(162, 139, 'FOKAM KAMGUEM', 'ENZO', '15/11/1999', ''),
(163, 139, 'FOKAM KAMGUEM', 'ZOE', '29/04/2003', ''),
(164, 141, 'CALCO', 'LEA', '24/10/2001', ''),
(165, 141, 'CALCO', 'ROMAIN', '24/10/2001', ''),
(166, 142, 'CAMUS', 'EMIE', '05/03/2010', ''),
(167, 142, 'CAMUS', 'MAHE', '18/12/2014', ''),
(168, 142, 'LE CLAINCHE', 'LISA', '03/08/2006', ''),
(169, 143, 'CARO', 'LISEA', '08/06/2005', ''),
(170, 143, 'CARO', 'MIGUEL', '19/02/2003', ''),
(171, 143, 'CARO', 'NAOMIE', '04/07/2007', ''),
(172, 143, 'CARO', 'OC?ANE', '08/08/2000', ''),
(173, 145, 'CAUCHARD', 'MAELLE', '10/01/2006', ''),
(174, 146, 'CAYON', 'DAMIEN', '12/01/1987', ''),
(175, 147, 'CHANTEUX', 'ETHAN', '23/01/2009', ''),
(176, 148, 'CHARDON', 'LAURENE', '05/07/1996', ''),
(177, 149, 'CHARLEUX', 'DAVID', '10/10/1993', ''),
(178, 149, 'CHARLEUX', 'EMELINE', '18/02/1997', ''),
(179, 152, 'CHAUSSEPIED', 'LAETITIA', '15/04/1995', ''),
(180, 152, 'CHAUSSEPIED', 'THOMAS', '30/04/1997', ''),
(181, 154, 'CHEVALEYRE', 'TIM', '26/02/2011', ''),
(182, 156, 'CHOQUET', 'EDEN', '01/08/2014', ''),
(183, 157, 'CLEC''H', 'MORGANN', '11/10/2006', ''),
(184, 158, 'COIGNARD', 'MANOLA', '15/12/2009', ''),
(185, 158, 'COIGNARD', 'MATHIEU', '16/01/2001', ''),
(186, 158, 'COIGNARD', 'MICKAEL', '24/06/1995', ''),
(187, 159, 'COLOMBEAU', 'CAMILLE', '29/05/1996', ''),
(188, 159, 'COLOMBEAU', 'CHLO+', '15/05/1991', ''),
(189, 159, 'COLOMBEAU', 'FLAVIE', '05/07/1999', ''),
(190, 159, 'COLOMBEAU', 'TIMEO', '18/10/2007', ''),
(191, 160, 'COLOMBEAU', 'CAMILLE', '29/05/1996', ''),
(192, 160, 'COLOMBEAU', 'CHLOE', '15/05/1991', ''),
(193, 160, 'COLOMBEAU', 'FLAVIE', '05/07/1999', ''),
(194, 160, 'COLOMBEAU', 'TIMEO', '18/10/2007', ''),
(195, 161, ' PFAD', 'CLEMENT', '09/07/2007', ''),
(196, 161, 'CORNUT PFAD', 'THIBAUT', '24/04/2011', ''),
(197, 164, 'COUTARD', 'ALEXIS', '03/10/1991', ''),
(198, 164, 'COUTARD', 'SOPHIE', '28/08/1988', ''),
(199, 165, 'COZMA', 'STEFAN', '20/11/2012', ''),
(200, 166, 'CROS', 'ROMAIN', '24/02/2013', ''),
(201, 166, 'CROS', 'VINCENT', '27/11/2009', ''),
(202, 169, 'DAILLIERE', 'F+LICIE', '12/11/1997', ''),
(203, 169, 'DAILLIERE', 'FLAVIS', '28/11/2001', ''),
(204, 169, 'DAILLIERE', 'VALENTIN', '20/10/1999', ''),
(205, 170, 'DAL MOLIN', 'MAGALI', '22/01/1991', ''),
(206, 170, 'DAL MOLIN', 'RUDY', '02/09/1993', ''),
(207, 172, 'DAVIS', 'FABIEN', '16/01/1999', ''),
(208, 172, 'DAVIS', 'LAURA', '10/12/2002', ''),
(209, 172, 'DAVIS', 'YLHAN', '16/11/2011', ''),
(210, 175, 'DECLE', 'MATHIEU', '09/10/1989', ''),
(211, 181, 'DEZECOT', 'NOLAN', '21/03/2008', ''),
(212, 181, 'DEZECOT', 'SOLENNE', '19/10/1998', ''),
(213, 182, 'DITACROUTE', 'ALYSEE', '01/05/2010', ''),
(214, 187, 'DOINEAU', 'MAETHIS', '24/09/2013', ''),
(215, 187, 'DOINEAU', 'NO?LINE', '30/11/2011', ''),
(216, 188, 'DUBLE', 'FRANCOIS', '02/11/1998', ''),
(217, 188, 'DUBLE', 'PIERRE', '05/06/2001', ''),
(218, 189, 'DUBOIS', 'SOPHIE', '26/06/2001', ''),
(219, 189, 'DUBOIS', 'THOMAS', '03/10/2003', ''),
(220, 190, 'DUPERRAY', 'CHLO?', '18/08/2010', ''),
(221, 190, 'DUPERRAY', 'LOISE', '17/11/2006', ''),
(222, 191, 'DURIEZ', 'JAN', '12/10/1984', ''),
(223, 192, 'DUVEAU', 'CLELIA', '25/01/2006', ''),
(224, 192, 'DUVEAU', 'KYLLIAN', '15/11/2008', ''),
(225, 194, 'ECOMARD', 'LILIAN', '30/07/2010', ''),
(226, 194, 'ECOMARD', 'NOE', '03/07/2012', ''),
(227, 195, 'ESNAU', 'RYANA', '16/04/2006', ''),
(228, 195, 'LEGRAS', 'MARION', '01/06/2010', ''),
(229, 195, 'LEGRAS', 'YASMINE', '15/04/2008', ''),
(230, 195, 'TROUILLAUD', 'NEO', '02/06/2009', ''),
(231, 199, 'FERRIERE', 'JORDAN', '14/06/2014', ''),
(232, 199, 'FERRIERE', 'LYLIAN', '05/02/2010', ''),
(233, 199, 'FERRIERE', 'OCEANE', '05/12/2007', ''),
(234, 200, 'FEVRIER', 'AUDREY', '25/07/2002', ''),
(235, 200, 'FEVRIER', 'CHLOE', '11/02/2004', ''),
(236, 201, 'FLAO', 'MARINE', '25/03/2001', ''),
(237, 201, 'ROUMY', 'FLORIAN', '12/12/1992', ''),
(238, 202, 'FLORINEDA', 'ALICE', '13/04/1989', ''),
(239, 202, 'FLORINEDA', 'ANNE', '29/07/1992', ''),
(240, 202, 'FLORINEDA', 'CECILE', '22/07/1997', ''),
(241, 204, 'FONTAINE MOINET', 'REMI', '15/09/1996', ''),
(242, 206, 'FOSSE', 'ADELAIDE', '11/07/2003', ''),
(243, 206, 'FOSSE', 'CONSTANCE', '11/12/2007', ''),
(244, 206, 'FOSSE', 'FIRMIN', '10/11/2004', ''),
(245, 209, 'FRAQUET', 'ALEXIS', '29/01/1999', ''),
(246, 209, 'FRAQUET', 'CORALIE', '04/08/2000', ''),
(247, 209, 'FRAQUET', 'REMI', '28/02/2004', ''),
(248, 212, 'GARNIER', 'MA?L ANTHONY MICHEL', '14/03/2012', ''),
(249, 215, 'GILBERT', 'LUDOVIC', '15/03/1983', ''),
(250, 215, 'GILBERT', 'ROZENN', '28/09/1984', ''),
(251, 216, 'GIRARDEAU', 'ANAIS', '22/05/2000', ''),
(252, 216, 'GIRARDEAU', 'FABIEN', '07/05/1997', ''),
(253, 216, 'GIRARDEAU', 'TOM', '18/02/2012', ''),
(254, 216, 'GIRARDEAU', 'ZOE', '03/02/2011', ''),
(255, 218, 'CHARTIER', 'MATHILDA', '02/08/2002', ''),
(256, 218, 'EON', 'ALEXANDRE', '25/06/2000', ''),
(257, 218, 'GODARD', 'LIZEA', '24/02/2006', ''),
(258, 219, 'GODARD', 'EVAN', '10/02/2011', ''),
(259, 219, 'GODARD', 'LENA', '12/12/2007', ''),
(260, 220, 'GODARD', 'EVAN', '10/02/2011', ''),
(261, 220, 'GODARD', 'LENA', '12/12/2007', ''),
(262, 222, 'GOIZET', 'LEA', '19/03/1997', ''),
(263, 222, 'GOIZET', 'MARIE', '26/09/1998', ''),
(264, 222, 'LATOUR', 'ELISE', '14/03/2004', ''),
(265, 226, 'GRONFOT', 'MA?L', '27/02/2013', ''),
(266, 226, 'GRONFOT', 'TOM', '17/12/2010', ''),
(267, 227, 'GROSBOIS', 'ROMAIN', '23/07/1989', ''),
(268, 229, 'GUERROUDJ', 'DOUNIA', '18/08/2009', ''),
(269, 230, 'GUICHARD', 'SONIA', '23/05/2005', ''),
(270, 231, 'GUIET', 'GEOFFRAY', '12/01/1996', ''),
(271, 231, 'GUIET', 'THOMAS', '15/12/1999', ''),
(272, 234, 'HAMARD', 'ELOISE', '31/05/1993', ''),
(273, 235, 'HAMELIN', 'LALIANNA', '02/05/2013', ''),
(274, 236, 'HAMONIER', 'VALENTIN', '18/02/1999', ''),
(275, 241, 'HY', 'TYLIAN', '27/02/2011', ''),
(276, 242, 'JARRY', 'LUCIE', '03/02/1992', ''),
(277, 242, 'JARRY', 'YOHAN', '14/06/1995', ''),
(278, 244, 'JEFFRARD', 'KYLIAN', '06/01/1992', ''),
(279, 246, 'JOLY', 'ALEXANDRE', '17/06/1992', ''),
(280, 246, 'JOLY', 'MELISSA', '30/07/1996', ''),
(281, 247, 'JOSSELIN', 'LOUNA', '19/03/2009', ''),
(282, 247, 'JOSSELIN', 'NOLANN', '27/10/2013', ''),
(283, 249, 'JOUIN', 'AURELIEN', '06/09/1999', ''),
(284, 249, 'JOUIN', 'MAXIME', '25/09/2001', ''),
(285, 252, 'LAMBERT JUBAULT', 'MANON', '21/11/2013', ''),
(286, 252, 'LAMBERT JUBAULT', 'QUENTIN', '16/09/2011', ''),
(287, 254, 'HIREL', 'CASSANDRA', '07/08/1992', ''),
(288, 254, 'KEBANGA', 'CLERY', '03/04/2007', ''),
(289, 255, 'KHOUMSI', 'ILIAS', '02/09/2004', ''),
(290, 255, 'KHOUMSI', 'SOUFIAN', '11/10/2000', ''),
(291, 256, 'LAIGLE', 'ZOE', '29/12/2007', ''),
(292, 257, 'LAMBERT JUBAULT', 'MANON', '21/11/2013', ''),
(293, 257, 'LAMBERT JUBAULT', 'QUENTIN', '16/09/2011', ''),
(294, 258, 'LANGINIER', 'CHARLOTTE', '07/05/1984', ''),
(295, 258, 'LANGINIER', 'CORINNE', '05/09/1988', ''),
(296, 258, 'LANGINIER', 'STEPHANE', '09/11/1985', ''),
(297, 263, 'LE PETITCORPS', 'LALY', '23/11/2010', ''),
(298, 263, 'LE PETITCORPS', 'LENORA', '16/10/2013', ''),
(299, 263, 'LE PETITCORPS', 'LOUNA', '26/12/2008', ''),
(300, 263, 'LE PETITCORPS', 'LUCILE', '25/09/2006', ''),
(301, 265, 'BODAN', 'MICKAELLA', '29/11/1996', ''),
(302, 265, 'ROBERT', 'CALLIE', '27/04/2004', ''),
(303, 266, 'LEBOUCHER', 'CHRISTOPHER', '19/04/2011', ''),
(304, 266, 'LEBOUCHER', 'MAEL', '28/02/2005', ''),
(305, 266, 'LEBOUCHER', 'OCEANE', '04/01/2002', ''),
(306, 266, 'LEBOUCHER', 'SORENZA', '26/12/2008', ''),
(307, 267, 'LECONTE', 'JULIE', '12/10/1999', ''),
(308, 267, 'LECONTE', 'LUCAS', '01/01/2005', ''),
(309, 272, 'BRUGIERE', 'CHLOE', '26/07/2003', ''),
(310, 272, 'BRUGIERE', 'MAXIME', '02/07/2006', ''),
(311, 272, 'LEGENDRE BRUGIERE', 'MAYANNE', '28/08/2012', ''),
(312, 269, 'LEGENDRE', 'LEO', '22/05/2009', ''),
(313, 269, 'LEGENDRE', 'MA+LYS', '06/12/2004', ''),
(314, 274, 'LEMOINE', 'LUCAS', '03/11/2014', ''),
(315, 278, 'LEROUX', 'JESSY', '28/11/1992', ''),
(316, 278, 'LEROUX', 'SANDRA', '18/09/1997', ''),
(317, 280, 'LESSIAU', 'CORALIE', '11/06/1998', ''),
(318, 280, 'LESSIAU', 'CORENTIN', '08/02/1994', ''),
(319, 281, 'LHOPITEAU', 'COLINE', '02/11/2005', ''),
(320, 281, 'LHOPITEAU', 'NOE', '20/07/2009', ''),
(321, 283, 'LICOIS', 'CHARLYNE', '14/04/2008', ''),
(322, 283, 'LICOIS', 'FLORENT', '27/10/2005', ''),
(323, 283, 'LICOIS', 'JEROME', '11/06/1986', ''),
(324, 284, 'DERRIEN', 'ANAIS', '05/10/2001', ''),
(325, 284, 'DERRIEN', 'GWENDAL', '04/01/2004', ''),
(326, 284, 'LICOIS', 'GABRIEL', '13/11/2012', ''),
(327, 284, 'LICOIS', 'SOLENE', '08/05/2014', ''),
(328, 285, 'LICOIS', 'GABRIEL', '13/11/2012', ''),
(329, 285, 'LICOIS', 'SOLENE', '08/05/2014', ''),
(330, 286, 'LOPEZ', 'MAELYS', '16/03/2012', ''),
(331, 288, 'LORET', 'CHRISTAL', '26/04/2007', ''),
(332, 288, 'LORET', 'HAYDEN', '06/09/2011', ''),
(333, 288, 'LORET', 'KURT', '19/01/2009', ''),
(334, 288, 'LORET', 'OCEAN', '25/08/2004', ''),
(335, 289, 'LORET', 'CRISTAL', '26/04/2007', ''),
(336, 289, 'LORET', 'HAYDEN', '06/09/2011', ''),
(337, 289, 'LORET', 'KURT', '19/01/2009', ''),
(338, 289, 'LORET', 'OCEAN', '25/08/2004', ''),
(339, 290, 'MAHOT', 'CLEMENTINE', '31/03/1992', ''),
(340, 290, 'MAHOT', 'TRISTAN', '26/02/1995', ''),
(341, 292, 'MAINGOT', 'JULIA', '12/06/1996', ''),
(342, 293, 'MARAIS', 'THOMAS', '11/01/1990', ''),
(343, 294, 'MARCHAND', 'ARTHUR', '02/04/2014', ''),
(344, 295, 'MARCHAND', 'SARAH', '13/05/2007', ''),
(345, 295, 'MARCHAND', 'THOMAS', '25/08/2004', ''),
(346, 296, 'MARTIN', 'LUCAS', '18/07/2001', ''),
(347, 296, 'MARTIN', 'ROMANE', '09/10/2006', ''),
(348, 297, 'MASSE', 'ALICIA', '14/11/1994', ''),
(349, 297, 'MASSE', 'DORAIN', '15/02/2005', ''),
(350, 297, 'MASSE', 'KEVIN', '09/07/1993', ''),
(351, 297, 'MASSE', 'MATHEO', '28/04/2007', ''),
(352, 297, 'MASSE', 'WENDY', '19/10/1996', ''),
(353, 298, 'MASSE', 'DORIAN', '15/02/2005', ''),
(354, 298, 'MASSE', 'MATHEO', '28/04/2007', ''),
(355, 300, 'BIGOT', 'ROMAIN', '09/08/1991', ''),
(356, 300, 'MAUXION', 'LILOU', '12/11/2003', ''),
(357, 300, 'MAUXION', 'ROZENN', '07/09/1996', ''),
(358, 301, 'MEFFRAY', 'ALEXIS', '29/10/2006', ''),
(359, 301, 'MEFFRAY', 'LAURA', '14/05/2008', ''),
(360, 302, 'MENARD', 'ANTOINE', '03/06/2006', ''),
(361, 303, 'MERCIER', 'ANTOINE', '20/12/1981', ''),
(362, 303, 'MERCIER', 'BENJAMIN', '29/06/1988', ''),
(363, 303, 'MERCIER', 'FRANCOIS', '24/08/1984', ''),
(364, 304, 'MILCENT', 'LUCAS', '22/09/2006', ''),
(365, 304, 'MILCENT', 'MATHIS', '22/09/2006', ''),
(366, 304, 'MILCENT', 'SOLENE', '22/09/2006', ''),
(367, 305, 'MEZIERES', 'OCEANE', '29/07/1994', ''),
(368, 305, 'MILOCHE', 'ENOLA', '05/10/2010', ''),
(369, 305, 'MILOCHE', 'SASHA', '03/10/2002', ''),
(370, 305, 'MILOCHE', 'SHANNA', '19/04/2007', ''),
(371, 307, 'MOREAU', 'ALEXIS', '22/05/1997', ''),
(372, 307, 'MOREAU', 'JESSY', '18/04/1992', ''),
(373, 307, 'MOREAU', 'KIMBERLY', '13/10/2004', ''),
(374, 307, 'MOREAU', 'NOAMY', '14/12/2007', ''),
(375, 307, 'TRANCHANT', 'AMELIE', '11/01/1993', ''),
(376, 307, 'TRANCHANT', 'CORALIE', '21/07/1990', ''),
(377, 308, 'MORIN', 'JULIEN', '24/09/1985', ''),
(378, 309, 'MORTIER', 'MARION', '11/01/1989', ''),
(379, 309, 'MORTIER', 'THOMAS', '25/11/1992', ''),
(380, 310, 'MOUNIER', 'CLOTILDE', '10/07/2003', ''),
(381, 310, 'MOUNIER', 'GREGOIRE', '18/04/2005', ''),
(382, 310, 'MOUNIER', 'MAYLIS', '05/01/2002', ''),
(383, 310, 'MOUNIER', 'SOLENE', '13/09/2007', ''),
(384, 311, 'DELESTRE', 'JONATHAN', '06/04/1996', ''),
(385, 311, 'DELESTRE', 'KEVIN', '28/02/1993', ''),
(386, 312, 'MORICE ONILLON', 'DORIANE', '05/10/2008', ''),
(387, 313, 'OTMANE CHERIF', 'ILYASS', '18/01/2013', ''),
(388, 313, 'OTMANE CHERIF', 'ZOUHEIR', '02/11/2008', ''),
(389, 314, 'PALLIER', 'ETHAN', '08/11/2014', ''),
(390, 315, 'REMARS', 'ANTONIN', '14/04/2014', ''),
(391, 318, 'PASTEUR', 'ANNABEL', '08/09/1995', ''),
(392, 318, 'PASTEUR', 'CHARLY', '10/05/1999', ''),
(393, 318, 'PASTEUR', 'LOU', '02/09/2000', ''),
(394, 322, 'PAVIOT', 'ILHAN', '22/10/2007', ''),
(395, 322, 'PAVIOT', 'MATHYS', '07/08/2011', ''),
(396, 320, 'PAVIOT', 'ILHAN', '22/10/2007', ''),
(397, 320, 'PAVIOT', 'MATHYS', '07/08/2011', ''),
(398, 323, 'BOUGET', 'GABY', '02/10/2002', ''),
(399, 323, 'BOUGET', 'PRISCILLA', '23/11/1993', ''),
(400, 323, 'PAYMAL', 'TEDDY', '28/07/1989', ''),
(401, 324, 'PERDRIAU', 'JESSY', '21/10/1999', ''),
(402, 324, 'PERDRIAU', 'SORAYA', '26/04/2005', ''),
(403, 325, 'PERDRIX', 'ROMAIN', '23/07/2001', ''),
(404, 325, 'PERDRIX', 'THOMAS', '11/07/2003', ''),
(405, 326, 'PERPOIL', 'ANTOINE', '14/05/1993', ''),
(406, 328, 'PINSON', 'AMANDINE', '28/03/2009', ''),
(407, 328, 'PINSON', 'KILLIAN', '13/12/2000', ''),
(408, 328, 'PINSON', 'MORGANE', '24/10/2005', ''),
(409, 329, 'PIOTET', 'SOLENE', '16/11/2002', ''),
(410, 331, 'PIVERT', 'JULIEN', '25/01/1987', ''),
(411, 332, 'PLACAIS', 'NATHAN', '29/10/2011', ''),
(412, 334, 'POCHARD', 'ANGELINA', '18/02/1997', ''),
(413, 334, 'POCHARD', 'HELENA', '09/04/2003', ''),
(414, 334, 'POCHARD', 'SABRINA', '08/05/1992', ''),
(415, 335, 'POIRIER', 'BERTILLE', '03/01/2000', ''),
(416, 335, 'POIRIER', 'BRIEUX', '06/09/2003', ''),
(417, 335, 'POIRIER', 'LILY', '21/09/2006', ''),
(418, 335, 'POIRIER', 'MAIXAN', '11/06/2002', ''),
(419, 336, 'POMMIER', 'NOAH', '24/03/2013', ''),
(420, 339, 'POUPIN', 'JULIEN', '02/07/1986', ''),
(421, 339, 'POUPIN', 'MORGANE', '07/11/1995', ''),
(422, 340, 'PROTIN', 'R?MI', '11/10/2013', ''),
(423, 342, 'RABEL', 'JAMES', '14/01/1983', ''),
(424, 343, 'RABOUIN', 'BENOIT', '18/05/1999', ''),
(425, 343, 'RABOUIN', 'CORALIE', '01/10/1995', ''),
(426, 344, 'RAIMBAULT', 'ALEXIS', '22/05/2006', ''),
(427, 344, 'RAIMBAULT', 'KEVIN', '14/07/2000', ''),
(428, 344, 'RAIMBAULT', 'LOLITA', '19/03/2003', ''),
(429, 345, 'RAOUI', 'ABOUBAKAR', '12/04/2013', ''),
(430, 348, 'RATEAU', 'JULIE', '27/07/1990', ''),
(431, 349, 'REDCENT', 'ABBIE', '30/01/2011', ''),
(432, 349, 'REDCENT', 'TOMMY', '23/09/2007', ''),
(433, 351, 'COURANT', 'ELODIE', '11/11/1997', ''),
(434, 352, 'REPUSSARD', 'BENOIST', '24/02/2000', ''),
(435, 352, 'REPUSSARD', 'KEVIN', '13/12/1997', ''),
(436, 358, 'RODRIGUES', 'DOMINIQUE', '26/11/2006', ''),
(437, 358, 'RODRIGUES', 'ESTHER', '08/08/2014', ''),
(438, 358, 'RODRIGUES', 'GABRIEL', '08/04/2005', ''),
(439, 358, 'RODRIGUES', 'ROSETH', '31/03/2002', ''),
(440, 359, 'RONCIER', 'ANGELINA', '29/05/1998', ''),
(441, 360, 'BARANGER', 'DYLAN', '01/01/2001', ''),
(442, 362, 'MIGNOT', 'MIGUEL', '18/11/2009', ''),
(443, 363, 'ROUSSEL', 'BAPTISTE', '04/04/2002', ''),
(444, 363, 'ROUSSEL', 'MATHIAS', '26/09/2004', ''),
(445, 364, 'ROZAT', 'ELODIE', '21/07/1988', ''),
(446, 365, 'SALMON', 'MARIE', '09/08/1996', ''),
(447, 365, 'SALMON', 'MAXIME', '10/08/2002', ''),
(448, 365, 'SALMON', 'THOMAS', '11/06/1998', ''),
(449, 368, 'SENO', 'PIERRE', '29/01/2003', ''),
(450, 369, 'SOURDEAU', 'LAETITIA', '07/11/1991', ''),
(451, 369, 'SOURDEAU', 'LAURA', '27/03/1995', ''),
(452, 371, 'THEVENET', 'MATHILDE', '01/10/1997', ''),
(453, 374, 'CHAMAILLE', 'GAYLORD', '02/09/1982', ''),
(454, 374, 'THIBERGE', 'MORGAN', '06/01/1992', ''),
(455, 374, 'THIBERGE', 'ST+PHANIE', '22/07/1987', ''),
(456, 376, 'THOMAS', 'HUGO', '25/06/2002', ''),
(457, 376, 'THOMAS', 'QUENTIN', '21/02/1999', ''),
(458, 375, 'THOMAS', 'HUGO', '25/06/2002', ''),
(459, 375, 'THOMAS', 'QUENTIN', '21/02/1999', ''),
(460, 377, 'THOMPSON', 'EDOUARD', '24/03/2012', ''),
(461, 377, 'THOMPSON', 'ELO?SE', '10/02/2014', ''),
(462, 377, 'THOMPSON', 'JULIANA', '06/07/2010', ''),
(463, 379, 'TIRLET', 'MATHEO', '23/10/2010', ''),
(464, 380, 'TRANCHANT', 'KEVIN', '22/11/1991', ''),
(465, 380, 'TRANCHANT', 'MARJORIE', '16/08/1994', ''),
(466, 384, 'TROST', 'LENA', '30/05/2003', ''),
(467, 384, 'TROST', 'MAELY', '01/02/2006', ''),
(468, 384, 'TROST', 'SHANICE', '21/08/2011', ''),
(469, 382, 'TROST', 'LAENA', '15/09/2010', ''),
(470, 383, 'TROST', 'WESLEY', '13/02/2013', ''),
(471, 385, 'TURPIN', 'NICOLAS', '30/09/1991', ''),
(472, 385, 'TURPIN', 'PAULINE', '07/10/1997', ''),
(473, 386, 'VATTAT', 'TOM', '10/08/1993', ''),
(474, 387, 'VENERIA', 'LORINE', '19/06/2008', ''),
(475, 387, 'VENERIA', 'ROMAIN', '01/11/2003', ''),
(476, 388, 'VERBELEN', 'LEA', '20/08/2003', ''),
(477, 388, 'VERBELEN', 'MARION', '02/05/2006', ''),
(478, 388, 'VERBELEN', 'MORGANE', '03/10/2010', ''),
(479, 389, 'VERGER', 'COLINE', '17/06/1999', ''),
(480, 389, 'VERGER', 'JORDAN', '20/08/1995', ''),
(481, 390, 'VERGNAUD', 'ENZO', '22/03/2005', ''),
(482, 390, 'VERGNAUD', 'PRESCILLIA', '25/08/2001', ''),
(483, 391, 'VINCENT', 'AMANDINE', '08/08/1996', ''),
(484, 391, 'VINCENT', 'DJOVANNIE', '18/02/1993', ''),
(485, 391, 'VINCENT', 'KEVIN', '10/11/1989', ''),
(486, 391, 'VINCENT', 'MA+VA', '10/01/2001', ''),
(487, 392, 'VINCENT', 'ENZO', '27/01/2011', ''),
(488, 392, 'VINCENT', 'MAXIME', '24/06/1994', ''),
(489, 392, 'VINCENT', 'WILLIAM', '27/08/1998', ''),
(490, 393, 'VINEAU', 'CL+O ZO+', '12/07/2003', ''),
(491, 393, 'VINEAU', 'NOA', '13/01/2008', ''),
(492, 394, 'VOLUETTE', 'MARION', '10/01/2003', ''),
(493, 394, 'VOLUETTE', 'PRUDENCE', '06/02/2005', ''),
(494, 394, 'VOLUETTE', 'QUENTIN', '22/05/1998', ''),
(495, 395, 'VOLUETTE', 'ELODIE', '20/07/2004', ''),
(496, 395, 'VOLUETTE', 'FABIEN', '16/06/1997', ''),
(497, 395, 'VOLUETTE', 'JEROME', '12/05/1991', ''),
(498, 395, 'VOLUETTE', 'JULIEN', '09/12/1993', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=411 ;

--
-- Contenu de la table `bilan`
--

INSERT INTO `bilan` (`idcasebilan`, `type_bilan`, `libelle_mouvement`, `debit`, `credit`, `num_mouvement`) VALUES
(68, 2, 'Vente de Billetterie: MAHOT PATRICK pour la prestation Gaumont', '', '30', '52785046'),
(70, 2, 'Vente de Billetterie: BERTHONNEAU CELINE pour la prestation Gaumont', '', '30', '3005747'),
(78, 2, 'Vente de Billetterie: NEVOUX ISABELLE pour la prestation Gaumont', '', '30', '53198101'),
(83, 2, 'Vente de Billetterie: POUPIN MICHEL pour la prestation Gaumont', '', '30', '28339243'),
(91, 2, 'Vente de Billetterie: DITACROUTE SYLVAIN pour la prestation Gaumont', '', '15', '70336237'),
(92, 2, 'Vente de Billetterie: POIRIER STEPHANE pour la prestation Gaumont', '', '30', '65739136'),
(100, 2, 'Vente de Billetterie: RABOUIN CECILE pour la prestation Cin&eacute;ma Stella', '', '30', '63449367'),
(105, 2, 'Vente de Billetterie: BOUCARD PASCAL pour la prestation Gaumont', '', '5', '26294204'),
(107, 2, 'Vente de Billetterie: PICOULEAU STEPHANE pour la prestation Gaumont', '', '15', '25201069'),
(110, 2, 'Vente de Billetterie: DUBLE AGATHE pour la prestation Gaumont', '', '15', '1590345'),
(122, 2, 'Vente de Billetterie: MASSE SYLVIE pour la prestation Gaumont', '', '15', '55527679'),
(135, 2, 'Vente de Billetterie: MASSE SYLVIE pour la prestation Gaumont', '', '40', '61617106'),
(138, 2, 'Vente de Billetterie: GOUJON CHRISTINE pour la prestation Gaumont', '', '15', '56460345'),
(139, 2, 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '5', '94080048'),
(142, 2, 'Vente de Billetterie: RODRIGUES FERNANDO pour la prestation Gaumont', '', '15', '47159085'),
(143, 2, 'Vente de Billetterie: MOREAU PHILIPPE pour la prestation Gaumont', '', '30', '36713277'),
(145, 2, 'Vente de Billetterie: BRUNEAU JACQUELINE pour la prestation Gaumont', '', '5', '95012443'),
(149, 2, 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '5', '38777535'),
(150, 2, 'Vente de Billetterie: MARCHAND SEBASTIEN pour la prestation Gaumont', '', '15', '17515041'),
(152, 2, 'Vente de Billetterie: BEAUDET JEAN DAMIEN pour la prestation Gaumont', '', '30', '92033985'),
(155, 2, 'Vente de Billetterie: DELAUNAY PHILIPPE pour la prestation Gaumont', '', '30', '44216247'),
(156, 2, 'Vente de Billetterie: BURILLON STEPHANIE pour la prestation Gaumont', '', '50', '8907149'),
(157, 2, 'Vente de Billetterie: BERTHO CYRIL pour la prestation Gaumont', '', '15', '36494924'),
(162, 2, 'Vente de Billetterie: BERTHO CYRIL pour la prestation Gaumont', '', '5', '63414335'),
(164, 2, 'Vente de Billetterie: BERTHONNEAU CELINE pour la prestation Gaumont', '', '30', '94754136'),
(167, 2, 'Vente de Billetterie: DUVEAU STEPHANE pour la prestation Gaumont', '', '15', '43437573'),
(168, 2, 'Vente de Billetterie: JAZIRI  MAHDI pour la prestation Gaumont', '', '35', '46387556'),
(172, 2, 'Vente de Billetterie: HAMONIER OLIVIER pour la prestation Gaumont', '', '30', '82857424'),
(185, 2, 'Vente de Billetterie: GILBERT DOMINIQUE pour la prestation Gaumont', '', '30', '33343919'),
(187, 2, 'Vente de Billetterie: THIBERGE MARIE CLAUDE pour la prestation Gaumont', '', '5', '39476281'),
(192, 2, 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '5', '42884813'),
(197, 2, 'Vente de Billetterie: DOINEAU MICHEL pour la prestation Gaumont', '', '30', '58694919'),
(203, 2, 'Vente de Billetterie: JOBIN OLIVIER pour la prestation Gaumont', '', '15', '91121691'),
(207, 2, 'Vente de Billetterie: MASSE SYLVIE pour la prestation Gaumont', '', '15', '12067273'),
(210, 2, 'Vente de Billetterie: THIBERGE MARIE CLAUDE pour la prestation Gaumont', '', '30', '72406326'),
(211, 2, 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '15', '92991337'),
(219, 2, 'Vente de Billetterie: PIOTET GERALD pour la prestation Gaumont', '', '15', '9241845'),
(220, 2, 'Vente de Billetterie: VINCENT LAURENT pour la prestation Gaumont', '', '45', '54705031'),
(222, 2, 'Vente de Billetterie: LASSAY ANTHONY pour la prestation Gaumont', '', '30', '35883528'),
(224, 2, 'Vente de Billetterie: JAZIRI  MAHDI pour la prestation Gaumont', '', '40', '96754999'),
(228, 2, 'Vente de Billetterie: NEVOUX ISABELLE pour la prestation Gaumont', '', '30', '83750742'),
(229, 2, 'Vente de Billetterie: ANGELO ERIC pour la prestation Gaumont', '', '20', '58977284'),
(232, 2, 'Vente de Billetterie: RABOUIN CECILE pour la prestation Cin&eacute;ma Stella', '', '30', '93526169'),
(236, 2, 'Vente de Billetterie: MASSE SYLVIE pour la prestation Cin&eacute;ma Saumur', '', '15', '27696166'),
(238, 2, 'Vente de Billetterie: FOIN PHILIPPE pour la prestation Cin&eacute;ma Saumur', '', '20', '79214235'),
(242, 2, 'Vente de Billetterie: DEBELLY JEANNE pour la prestation Cin&eacute;ma Saumur', '', '20', '74759945'),
(245, 2, 'Vente de Billetterie: SENO JEAN PIERRE pour la prestation Cin&eacute;ma Saumur', '', '15', '63083424'),
(248, 2, 'Vente de Billetterie: MERCIER JACKY pour la prestation Cin&eacute;ma Stella', '', '30', '77386723'),
(250, 2, 'Vente de Billetterie: MASSE SYLVIE pour la prestation Cin&eacute;ma Beaufort', '', '6', '23523761'),
(264, 2, 'Vente de Billetterie: ROZAT ERIC pour la prestation Gaumont', '', '20', '77622960'),
(269, 2, 'Vente de Billetterie: BLOT LAETITIA pour la prestation Gaumont', '', '15', '2115781'),
(270, 2, 'Vente de Billetterie: DUBLE AGATHE pour la prestation Gaumont', '', '15', '48194237'),
(274, 2, 'Vente de Billetterie: MORIN ALAIN pour la prestation parc animalier', '', '92', '88572192'),
(278, 2, 'Vente de Billetterie: FOSSE WILLY pour la prestation parc animalier', '', '64.5', '30662853'),
(280, 2, 'Vente de Billetterie: DOINEAU MICHEL pour la prestation Sport', '', '67', '48422430'),
(282, 2, 'Vente de Billetterie: DAVIS GILLES pour la prestation Concert', '', '160', '27225908'),
(285, 2, 'Vente de Billetterie: BRAZILLE MICKAEL pour la prestation Sport', '', '104', '68592717'),
(287, 2, 'Vente de Billetterie: BODIN EMMANUEL pour la prestation Concert', '', '150', '12222095'),
(288, 2, 'Vente de Billetterie: CROS FABIEN pour la prestation parc animalier', '', '73', '64902692'),
(289, 2, 'Vente de Billetterie: CHEVALEYRE JULIE pour la prestation parc animalier', '', '50.5', '54345552'),
(300, 2, 'Vente de Billetterie: BOURDIN SEBASTIEN pour la prestation Sorties scolaires', '', '0', '89496339'),
(326, 2, 'Vente de Billetterie: DUBOIS FABIEN pour la prestation Gaumont', '', '20', '47435540'),
(327, 2, 'Vente de Billetterie: DAL MOLIN REMY pour la prestation Gaumont', '', '20', '76847145'),
(328, 2, 'Vente de Billetterie: BESNARD SEBASTIEN pour la prestation Gaumont', '', '20', '70848806'),
(329, 2, 'Vente de Billetterie: JOSSELIN ANTHONY pour la prestation Gaumont', '', '15', '3683553'),
(330, 2, 'Vente de Billetterie: ABBASSI NAJEM EDDINE pour la prestation Gaumont', '', '20', '93127441'),
(331, 2, 'Vente de Billetterie: THIBAULT RACHEL pour la prestation Gaumont', '', '20', '72953803'),
(332, 2, 'Vente de Billetterie: TURPIN CHRISTINE pour la prestation Gaumont', '', '30', '84126801'),
(351, 2, 'Vente de Billetterie: HONORE EMILE pour la prestation Valrhona', '', '88.62', '11989730'),
(352, 2, 'Vente de Billetterie: JURET LAURENCE pour la prestation Valrhona', '', '37.47', '57809595'),
(353, 2, 'Vente de Billetterie: BRICHET PERPOIL MARIE CLAIRE pour la prestation Valrhona', '', '105.9', '24612589'),
(354, 2, 'Vente de Billetterie: FLAO PATRICK pour la prestation Valrhona', '', '49.72', '49448681'),
(355, 2, 'Vente de Billetterie: DOHIN THIERRY pour la prestation disney 2015', '', '40', '62414006'),
(358, 2, 'Vente de Billetterie: DAILLIERE FRANCK pour la prestation Parc d''attraction', '', '84', '20221851'),
(361, 2, 'Vente de Billetterie: LESSIAU JEAN MARC pour la prestation Gaumont', '', '30', '82596495'),
(362, 2, 'Vente de Billetterie: HOFFMAN ALIX pour la prestation Gaumont', '', '15', '32046393'),
(363, 2, 'Vente de Billetterie: FORTIER THOMAS pour la prestation Gaumont', '', '20', '12605768'),
(365, 2, 'Vente de Billetterie: BEAUDET JEAN DAMIEN pour la prestation Gaumont', '', '30', '92293234'),
(366, 2, 'Vente de Billetterie: VINCENT THIERRY pour la prestation Gaumont', '', '30', '77585131'),
(367, 2, 'Vente de Billetterie: JOBIN OLIVIER pour la prestation Gaumont', '', '5', '62917652'),
(370, 2, 'Vente de Billetterie: MEFFRAY FRANCK pour la prestation Gaumont', '', '20', '14359922'),
(372, 2, 'Vente de Billetterie: BENION FRANCK pour la prestation Gaumont', '', '20', '29769901'),
(375, 2, 'Vente de Billetterie: ROUSSEAU EMILIE pour la prestation Gaumont', '', '20', '42713937'),
(376, 2, 'Vente de Billetterie: PAYMAL SOPHIE pour la prestation Gaumont', '', '20', '28395708'),
(378, 1, 'Ajout de la charge Fixe: Sorties scolaires', '45', '', '5464646460'),
(379, 1, 'Ajout de la charge Fixe: Sorties scolaires', '45', '', '879721320'),
(380, 2, 'Vente de Billetterie: ROZAT ERIC pour la prestation Gaumont', '', '10', '58455682'),
(381, 2, 'Vente de Billetterie: CADAS KARIM pour la prestation Gaumont', '', '30', '59376957'),
(382, 2, 'Vente de Billetterie: DUVEAU MICKAEL pour la prestation Gaumont', '', '5', '77481712'),
(383, 2, 'Vente de Billetterie: BEAUBIGNY DOMINIQUE pour la prestation Gaumont', '', '25', '19549346'),
(384, 2, 'Vente de Billetterie: ROZAT ERIC pour la prestation Concert', '', '120', '456446887330'),
(387, 2, 'Vente de Billetterie: FLAO PATRICK pour la prestation disney 2015', '', '60', '789874646465'),
(388, 2, 'Vente de Billetterie: ROZAT ERIC pour la prestation Gaumont', '', '10', '48859925'),
(391, 2, 'Vente de Billetterie: GASTINEAU ALEXIS pour la prestation Gaumont', '', '10', '27349960'),
(392, 2, 'Vente de Billetterie: JURET LAURENCE pour la prestation Gaumont', '', '15', '59804020'),
(393, 2, 'Vente de Billetterie: JOLY NADIA pour la prestation Cin&eacute;ma Saumur', '', '10', '97524261'),
(394, 2, 'Ajout du produit fixe: dette David (pr&eacute;alablement mis sur le livret bleu)', '', '27420', '5113021266'),
(395, 2, 'Ajout du produit fixe: solde au 31/12/14', '', '15856.39', '2669771891'),
(396, 1, 'Ajout de la charge Fixe: virement 0.7 vers livret bleu', '3000', '', '3998060487'),
(397, 2, 'Vente de Billetterie: BOUGET FRANCK pour la prestation Sport', '', '134', '36317083'),
(398, 2, 'Vente de Billetterie: BESNARD STEPHANE pour la prestation carte cezam', '', '5', '61647599'),
(399, 1, 'Ajout de la charge Fixe: compte de d&eacute;p&ocirc;t cezam', '1500', '', '9783475222'),
(401, 1, 'Ajout de la charge Fixe: voisin', '12332.6', '', '4234201000'),
(402, 1, 'Ajout de la charge Fixe: voisin', '8715', '', '1109917043'),
(403, 1, 'Ajout de la charge Fixe: Piscine', '50', '', '1005750583'),
(404, 1, 'Ajout de la charge Fixe: Piscine', '292.22', '', '7710354328'),
(405, 1, 'Ajout de la charge Fixe: carte cado', '700', '', '4413595912'),
(406, 1, 'Ajout de la charge Fixe: compte de d&eacute;p&ocirc;t cezam', '3000', '', '8988096187'),
(407, 2, 'Vente de Billetterie: HAMONIER OLIVIER pour la prestation Sorties scolaires', '', '0', '95941703'),
(408, 2, 'Vente de Billetterie: VINEAU OLIVIER pour la prestation Sorties scolaires', '', '0', '37773355'),
(409, 2, 'Vente de Billetterie: FRAQUET NATHALIE pour la prestation Sorties scolaires', '', '0', '25665268'),
(410, 2, 'Vente de Billetterie: DAVIS GILLES pour la prestation Concert', '', '234', '80253977');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=290 ;

--
-- Contenu de la table `billet_salarie`
--

INSERT INTO `billet_salarie` (`idbilletsalarie`, `idsalarie`, `date_vente`, `idtypetraitement`, `total_vente`, `etat_billet_salarie`, `num_mouvement`) VALUES
(32, 109, '07-01-2015', 3, '10', 1, ''),
(33, 290, '07-01-2015', 3, '30', 1, ''),
(34, 250, '08-01-2015', 3, '25', 1, ''),
(35, 102, '08-01-2015', 3, '30', 1, ''),
(37, 249, '08-01-2015', 3, '20', 1, ''),
(40, 300, '08-01-2015', 3, '20', 1, ''),
(41, 75, '08-01-2015', 3, '20', 1, ''),
(42, 311, '08-01-2015', 3, '30', 1, ''),
(43, 385, '08-01-2015', 3, '20', 1, ''),
(44, 89, '09-01-2015', 3, '20', 1, ''),
(45, 88, '09-01-2015', 3, '10', 1, ''),
(46, 84, '09-01-2015', 3, '20', 1, ''),
(47, 339, '09-01-2015', 3, '30', 1, ''),
(48, 199, '12-01-2015', 3, '20', 0, ''),
(49, 308, '12-01-2015', 3, '10', 1, ''),
(50, 286, '14-01-2015', 3, '10', 1, ''),
(51, 169, '14-01-2015', 3, '10', 1, ''),
(52, 306, '16-01-2015', 3, '20', 1, ''),
(53, 83, '17-01-2015', 3, '25', 1, ''),
(54, 182, '19-01-2015', 3, '15', 1, ''),
(55, 335, '19-01-2015', 3, '30', 1, ''),
(56, 111, '21-01-2015', 3, '20', 1, ''),
(57, 169, '21-01-2015', 3, '20', 1, ''),
(58, 280, '02-02-2015', 3, '20', 1, ''),
(59, 115, '02-02-2015', 3, '20', 1, ''),
(60, 343, '03-02-2015', 3, '10', 1, ''),
(61, 343, '03-02-2015', 3, '30', 1, ''),
(62, 133, '03-02-2015', 3, '20', 1, ''),
(63, 114, '02-02-2015', 3, '20', 1, ''),
(64, 170, '02-02-2015', 3, '20', 1, ''),
(65, 182, '02-02-2015', 3, '20', 1, ''),
(66, 166, '02-02-2015', 3, '10', 1, ''),
(67, 118, '03-02-2015', 3, '5', 1, ''),
(68, 118, '21-01-2015', 3, '20', 1, ''),
(69, 327, '04-02-2015', 3, '15', 1, ''),
(70, 383, '04-02-2015', 3, '20', 1, ''),
(71, 192, '04-02-2015', 3, '20', 1, ''),
(72, 188, '05-02-2015', 3, '15', 1, ''),
(73, 316, '05-02-2015', 3, '10', 1, ''),
(74, 234, '05-02-2015', 3, '20', 1, ''),
(75, 136, '05-02-2015', 3, '25', 1, ''),
(76, 296, '05-02-2015', 0, '20', 1, ''),
(77, 316, '05-02-2015', 3, '10', 1, ''),
(78, 346, '05-02-2015', 3, '10', 1, ''),
(79, 152, '05-02-2015', 3, '20', 1, ''),
(80, 241, '05-02-2015', 3, '20', 1, ''),
(81, 189, '05-02-2015', 3, '10', 1, ''),
(82, 353, '05-02-2015', 3, '20', 1, ''),
(83, 250, '05-02-2015', 3, '10', 1, ''),
(84, 298, '05-02-2015', 3, '15', 1, ''),
(85, 75, '05-02-2015', 3, '20', 1, ''),
(86, 259, '05-02-2015', 3, '20', 1, ''),
(87, 346, '05-02-2015', 3, '10', 1, ''),
(88, 323, '05-02-2015', 3, '20', 1, ''),
(89, 169, '11-02-2015', 3, '20', 1, ''),
(90, 161, '12-02-2015', 3, '20', 1, ''),
(91, 256, '12-02-2015', 3, '20', 1, ''),
(92, 98, '12-02-2015', 3, '20', 1, ''),
(93, 190, '12-02-2015', 3, '20', 1, ''),
(94, 271, '12-02-2015', 3, '10', 1, ''),
(95, 298, '12-02-2015', 3, '40', 1, ''),
(96, 145, '13-02-2015', 3, '20', 1, ''),
(97, 391, '13-02-2015', 3, '10', 1, ''),
(98, 225, '13-02-2015', 3, '15', 1, ''),
(99, 135, '13-02-2015', 3, '5', 1, ''),
(100, 110, '13-02-2015', 3, '20', 1, ''),
(101, 358, '16-02-2015', 3, '15', 1, ''),
(102, 307, '17-02-2015', 3, '30', 0, ''),
(103, 379, '18-02-2015', 3, '10', 1, ''),
(104, 138, '17-02-2015', 3, '5', 1, ''),
(105, 242, '18-02-2015', 3, '10', 1, ''),
(106, 306, '18-02-2015', 3, '20', 1, ''),
(107, 135, '18-02-2015', 3, '5', 1, ''),
(108, 295, '18-02-2015', 3, '15', 1, ''),
(109, 133, '19-02-2015', 3, '20', 1, ''),
(110, 94, '19-02-2015', 3, '30', 1, ''),
(111, 232, '20-02-2015', 3, '10', 1, ''),
(112, 396, '20-02-2015', 3, '10', 1, ''),
(113, 178, '20-02-2015', 3, '30', 1, ''),
(114, 139, '23-02-2015', 3, '50', 1, ''),
(115, 101, '23-02-2015', 3, '15', 1, ''),
(116, 355, '23-02-2015', 3, '20', 1, ''),
(117, 300, '23-02-2015', 3, '20', 1, ''),
(118, 220, '23-02-2015', 3, '10', 1, ''),
(119, 245, '23-02-2015', 3, '20', 1, ''),
(120, 101, '24-02-2015', 3, '5', 1, ''),
(121, 374, '24-02-2015', 3, '20', 1, ''),
(122, 102, '24-02-2015', 3, '30', 1, ''),
(123, 175, '24-02-2015', 3, '20', 1, ''),
(124, 241, '24-02-2015', 3, '10', 1, ''),
(125, 192, '24-02-2015', 3, '15', 1, ''),
(126, 243, '24-02-2015', 3, '35', 1, ''),
(127, 87, '24-02-2015', 3, '10', 1, ''),
(128, 321, '25-02-2015', 3, '25', 1, ''),
(129, 105, '25-02-2015', 3, '25', 1, ''),
(130, 236, '25-02-2015', 3, '30', 1, ''),
(131, 210, '25-02-2015', 3, '20', 1, ''),
(132, 237, '26-02-2015', 3, '20', 1, ''),
(133, 308, '12-02-2015', 3, '20', 1, ''),
(134, 390, '13-02-2015', 3, '10', 1, ''),
(135, 140, '14-02-2015', 3, '20', 1, ''),
(136, 247, '14-02-2015', 3, '25', 1, ''),
(137, 114, '25-02-2015', 3, '25', 1, ''),
(138, 193, '27-03-2015', 3, '10', 1, ''),
(139, 159, '28-02-2015', 3, '10', 1, ''),
(140, 186, '02-03-2015', 3, '20', 1, ''),
(141, 255, '03-03-2015', 3, '20', 1, ''),
(142, 215, '05-03-2015', 3, '30', 1, ''),
(143, 348, '05-03-2015', 3, '20', 1, ''),
(144, 374, '05-03-2015', 3, '5', 1, ''),
(146, 375, '07-03-2015', 3, '20', 1, ''),
(147, 151, '09-03-2015', 3, '20', 1, ''),
(148, 88, '09-03-2015', 3, '10', 1, ''),
(149, 135, '10-03-2015', 3, '5', 1, ''),
(150, 263, '11-03-2015', 3, '10', 1, ''),
(151, 353, '13-03-2015', 3, '20', 1, ''),
(152, 150, '17-03-2015', 3, '10', 1, ''),
(153, 106, '18-03-2015', 3, '10', 1, ''),
(154, 267, '18-03-2015', 3, '10', 1, ''),
(155, 187, '18-03-2015', 3, '30', 1, ''),
(156, 109, '18-03-2015', 3, '10', 1, ''),
(157, 377, '18-03-2015', 3, '10', 1, ''),
(158, 182, '19-03-2015', 3, '10', 1, ''),
(159, 225, '19-03-2015', 3, '20', 1, ''),
(160, 394, '19-03-2015', 3, '25', 1, ''),
(161, 245, '19-03-2015', 3, '15', 1, ''),
(162, 76, '19-03-2015', 3, '10', 1, ''),
(163, 169, '24-03-2015', 3, '20', 1, ''),
(164, 356, '18-03-2015', 3, '25', 1, ''),
(165, 298, '26-03-2015', 3, '15', 1, ''),
(166, 245, '28-03-2015', 3, '10', 1, ''),
(167, 250, '31-03-2015', 3, '10', 1, ''),
(168, 374, '31-03-2015', 3, '30', 1, ''),
(169, 135, '01-04-2015', 3, '15', 1, ''),
(170, 132, '01-04-2015', 3, '25', 1, ''),
(171, 154, '02-04-2015', 3, '10', 1, ''),
(172, 174, '02-04-2015', 3, '10', 1, ''),
(173, 357, '03-04-2015', 3, '25', 1, ''),
(174, 337, '03-04-2015', 3, '10', 1, ''),
(175, 329, '03-04-2015', 3, '15', 1, ''),
(176, 391, '03-04-2015', 3, '45', 1, ''),
(177, 206, '06-04-2015', 3, '20', 1, ''),
(178, 259, '08-04-2015', 3, '30', 1, ''),
(179, 134, '09-04-2015', 3, '10', 1, ''),
(180, 243, '09-04-2015', 3, '40', 1, ''),
(181, 214, '09-04-2015', 3, '10', 1, ''),
(182, 260, '09-04-2015', 3, '20', 1, ''),
(183, 127, '09-04-2015', 3, '10', 1, ''),
(184, 311, '09-04-2015', 3, '30', 1, ''),
(185, 76, '05-03-2015', 3, '20', 1, ''),
(186, 246, '28-01-2015', 3, '10', 1, ''),
(187, 343, '02-02-2015', 3, '30', 1, ''),
(188, 174, '05-02-2015', 3, '10', 1, ''),
(189, 194, '11-02-2015', 3, '10', 1, ''),
(190, 298, '12-02-2015', 3, '15', 1, ''),
(191, 368, '18-02-2015', 3, '10', 1, ''),
(192, 203, '24-02-2015', 3, '20', 1, ''),
(194, 174, '17-03-2015', 3, '20', 1, ''),
(196, 368, '04-04-2015', 3, '15', 1, ''),
(197, 256, '12-02-2015', 3, '12', 1, ''),
(198, 303, '09-03-2015', 3, '30', 1, ''),
(199, 298, '24-02-2015', 3, '6', 1, ''),
(206, 364, '11-04-2015', 3, '20', 1, ''),
(207, 286, '11-04-2015', 3, '10', 1, ''),
(208, 191, '14-04-2015', 3, '10', 1, ''),
(209, 250, '11-04-2015', 3, '10', 1, ''),
(210, 110, '14-04-2015', 3, '15', 1, ''),
(211, 188, '14-04-2015', 3, '15', 1, ''),
(214, 219, '19-03-2015', 3, '104', 1, ''),
(216, 308, '19-03-2015', 3, '92', 1, ''),
(220, 206, '14-04-2015', 3, '64.5', 1, ''),
(221, 200, '14-04-2015', 3, '50.5', 1, ''),
(222, 187, '18-04-2015', 3, '67', 1, ''),
(224, 172, '21-01-2015', 3, '160', 1, ''),
(227, 364, '27-01-2015', 3, '88', 1, ''),
(228, 131, '19-03-2015', 3, '104', 1, ''),
(229, 364, '27-01-2015', 3, '120', 1, ''),
(230, 114, '26-03-2015', 3, '150', 1, ''),
(231, 166, '31-03-2015', 3, '73', 1, ''),
(232, 154, '19-04-2015', 3, '50.5', 1, ''),
(234, 160, '26-03-2015', 3, '0', 1, ''),
(235, 249, '26-03-2015', 3, '0', 1, ''),
(236, 318, '26-03-2015', 3, '0', 1, ''),
(237, 124, '06-04-2015', 3, '0', 1, ''),
(238, 189, '15-04-2015', 3, '20', 1, ''),
(239, 170, '15-04-2015', 3, '20', 1, ''),
(240, 103, '15-04-2015', 3, '20', 1, ''),
(241, 247, '15-04-2015', 3, '15', 1, ''),
(242, 71, '15-04-2015', 3, '20', 1, ''),
(243, 372, '15-04-2015', 3, '20', 1, ''),
(244, 385, '22-04-2015', 3, '30', 1, ''),
(245, 245, '22-04-2015', 3, '10', 1, ''),
(246, 236, '23-04-2015', 3, '25', 0, ''),
(248, 239, '31-03-2015', 3, '88.62', 1, ''),
(249, 253, '31-03-2015', 3, '37.47', 1, ''),
(250, 133, '31-03-2015', 3, '105.9', 1, ''),
(251, 201, '31-03-2015', 3, '49.72', 1, ''),
(252, 186, '27-04-2015', 3, '40', 1, ''),
(253, 201, '28-04-2015', 3, '60', 1, ''),
(254, 169, '26-04-2015', 3, '84', 1, ''),
(255, 213, '07-05-2015', 3, '10', 1, ''),
(256, 280, '28-04-2015', 3, '30', 1, ''),
(257, 238, '28-04-2015', 3, '15', 1, ''),
(258, 205, '28-04-2015', 3, '20', 1, ''),
(259, 189, '28-04-2015', 3, '10', 1, ''),
(260, 94, '28-04-2015', 3, '30', 1, ''),
(261, 392, '28-04-2015', 3, '30', 1, ''),
(262, 245, '28-04-2015', 3, '5', 1, ''),
(263, 109, '28-04-2015', 3, '10', 1, ''),
(264, 397, '01-05-2015', 3, '10', 1, ''),
(265, 301, '01-05-2015', 3, '20', 1, ''),
(266, 287, '04-05-2015', 3, '10', 0, ''),
(267, 98, '04-05-2015', 3, '20', 1, ''),
(268, 329, '05-05-2015', 3, '10', 1, ''),
(270, 362, '07-05-2015', 3, '20', 0, ''),
(271, 323, '07-05-2015', 3, '20', 1, ''),
(272, 383, '06-05-2015', 3, '10', 1, ''),
(273, 364, '07-05-2015', 3, '10', 1, ''),
(274, 140, '12-05-2015', 3, '30', 1, ''),
(275, 193, '12-05-2015', 3, '5', 1, ''),
(276, 93, '12-05-2015', 3, '25', 1, ''),
(277, 364, '05-05-2015', 3, '10', 1, ''),
(280, 237, '21-05-2015', 3, '0', 0, ''),
(281, 213, '20-05-2015', 3, '10', 1, '27349960'),
(282, 253, '18-05-2015', 3, '15', 1, '59804020'),
(283, 246, '21-05-2015', 3, '10', 1, '97524261'),
(284, 119, '12-05-2015', 3, '134', 1, '36317083'),
(285, 104, '12-05-2015', 3, '5', 1, '61647599'),
(286, 236, '22-05-2015', 3, '0', 1, '95941703'),
(287, 393, '12-05-2015', 3, '0', 1, '37773355'),
(288, 209, '14-04-2015', 3, '0', 1, '25665268'),
(289, 172, '26-05-2015', 3, '234', 1, '80253977');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Contenu de la table `charge_fixe`
--

INSERT INTO `charge_fixe` (`idchargefixe`, `designation`, `date_charge_fixe`, `montant_charge`, `num_mouvement`) VALUES
(10, 'Sorties scolaires', '26-03-2015', '45', ''),
(11, 'Sorties scolaires', '26-03-2015', '45', ''),
(12, 'Sorties scolaires', '26-03-2015', '45', ''),
(13, 'Sorties scolaires', '06-04-2015', '45', ''),
(14, 'Sorties scolaires', '06-04-2015', '45', ''),
(15, 'Sorties scolaires', '14-04-2015', '45', ''),
(18, 'concert', '21-01-2015', '160', ''),
(19, 'Cin&eacute;ma Stella', '05-02-2015', '25', ''),
(20, 'Cin&eacute;ma Stella', '12-02-2015', '50', ''),
(21, 'Piscine', '12-01-2015', '47', ''),
(22, 'concert', '21-01-2015', '120', ''),
(23, 'restoria', '12-01-2015', '4937.94', ''),
(24, 'Self jouet', '12-01-2015', '96.82', ''),
(25, 'voisin', '05-02-2015', '5285.4', ''),
(26, 'voisin', '05-02-2015', '3736', ''),
(27, 'Valrhona', '11-02-2015', '819.17', ''),
(28, 'Cin&eacute;ma Stella', '12-03-2015', '50', ''),
(29, 'virement 0.7 vers livret bleu', '06-01-2015', '3000', '3998060487'),
(30, 'compte de d&eacute;p&ocirc;t cezam', '12-05-2015', '1500', '9783475222'),
(32, 'voisin', '06-05-2015', '12332.6', '4234201000'),
(33, 'voisin', '28-04-2015', '8715', '1109917043'),
(34, 'Piscine', '14-04-2015', '50', '1005750583'),
(35, 'Piscine', '12-05-2015', '292.22', '7710354328'),
(36, 'carte cado', '19-03-2015', '700', '4413595912'),
(37, 'compte de d&eacute;p&ocirc;t cezam', '12-03-2015', '3000', '8988096187');

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
(24, 2, 'Autre dette 1', ''),
(25, 2, 'Autre dette 2', ''),
(26, 2, 'Autre dette 3', ''),
(27, 2, 'Autre dette 4', ''),
(28, 2, 'Capital', 'Capital'),
(29, 2, 'Priv&eacute;', ''),
(30, 2, 'Autre Capital 1', ''),
(31, 2, 'Autre Capital 2', ''),
(32, 3, 'Ventes de marchandises', ''),
(33, 3, 'D&eacute;ductions Obtenues', 'Gains divers'),
(34, 3, 'Commission (&agrave; des tiers)', ''),
(35, 3, 'Honoraires', 'Subvention de Fonctionnement'),
(36, 3, 'Prestations &agrave; soi-m&ecirc;me', ''),
(37, 3, 'Int&eacute;r&ecirc;t - Produits', 'IntÃ©rÃªts'),
(38, 3, 'Autre CA 1', ''),
(39, 3, 'Autre CA 2', ''),
(40, 4, 'Achats de Marchandises', ''),
(41, 4, 'Frais d''Achats', ''),
(42, 4, 'Variations de Stocks', ''),
(43, 4, 'D&eacute;ductions Accord&eacute;es', ''),
(44, 4, 'Autre Charge 1', ''),
(45, 4, 'Autre Charge 2', ''),
(46, 5, 'Salaires', ''),
(47, 5, 'Charges Sociales', ''),
(48, 5, 'Autre charge de personnel 1', 'Honoraires'),
(49, 5, 'Autre charge de personnel 2', ''),
(50, 6, 'Loyer', 'Frais Postaux'),
(51, 6, 'Frais de V&eacute;hicules', 'Frais de dÃ©placements'),
(52, 6, 'Entretien et r&eacute;parations', 'Entretien et rÃ©parations'),
(53, 6, 'Frais d''exp&eacute;dition', 'Fournitures de bureaux'),
(54, 6, 'Assurances', 'Assurances'),
(55, 6, 'Electricit&eacute;, Gaz, etc...', 'Abonnements'),
(56, 6, 'Frais d''administration', ''),
(57, 6, 'T&eacute;l&eacute;phone, fax, internet', 'TÃ©lÃ©phone, fax, internet'),
(58, 6, 'Publicit&eacute;', 'Agios'),
(59, 6, 'Interet-charges, Frais Bancaires', 'Frais bancaires'),
(60, 6, 'Amortissements', 'Achat de matÃ©riel et petit outillage'),
(61, 6, 'Autre Charge d''exploitation 1', 'Transfert Livret vers ASC'),
(62, 6, 'Autre Charge d''exploitation 2', 'Divers'),
(63, 6, 'Autre Charge d''exploitation 3', ''),
(64, 6, 'Autre Charge d''exploitation 4', ''),
(65, 7, 'Produits des titres', ''),
(66, 7, 'Produits d''immeubles', ''),
(67, 7, 'Autre r&eacute;sultat Annexe 1', ''),
(68, 7, 'Autre r&eacute;sultat Annexe 2', ''),
(69, 7, 'Charges d''immeubles', ''),
(70, 7, 'Autre Charge annexe 1', ''),
(71, 7, 'Autre Charge annexe 2', ''),
(72, 8, 'Produits Exeptionnels', ''),
(73, 8, 'Autre r&eacute;sultat exeptionnel 1', ''),
(74, 8, 'Autre r&eacute;sultat exeptionnel 2', ''),
(75, 8, 'Charges Exeptionnelles', ''),
(76, 8, 'Impot sur le B&eacute;n&eacute;fice', ''),
(77, 8, 'Impots sur le Capital', ''),
(78, 8, 'Autre charge exeptionnelle 1', ''),
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
(1, 'COMITE D''ENTREPRISE TESSIER', '', '', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=406 ;

--
-- Contenu de la table `cpt_resultat`
--

INSERT INTO `cpt_resultat` (`idcptresultat`, `num_mouvement`, `date_mouvement`, `designation`, `debit`, `credit`) VALUES
(68, '52785046', '1420585200', 'Vente de Billetterie: MAHOT PATRICK pour la prestation Gaumont', '', '30'),
(70, '3005747', '1420671600', 'Vente de Billetterie: BERTHONNEAU CELINE pour la prestation Gaumont', '', '30'),
(78, '53198101', '1420671600', 'Vente de Billetterie: NEVOUX ISABELLE pour la prestation Gaumont', '', '30'),
(83, '28339243', '1420758000', 'Vente de Billetterie: POUPIN MICHEL pour la prestation Gaumont', '', '30'),
(91, '70336237', '1421622000', 'Vente de Billetterie: DITACROUTE SYLVAIN pour la prestation Gaumont', '', '15'),
(92, '65739136', '1421622000', 'Vente de Billetterie: POIRIER STEPHANE pour la prestation Gaumont', '', '30'),
(100, '63449367', '1422918000', 'Vente de Billetterie: RABOUIN CECILE pour la prestation Cin&eacute;ma Stella', '', '30'),
(105, '26294204', '1422918000', 'Vente de Billetterie: BOUCARD PASCAL pour la prestation Gaumont', '', '5'),
(107, '25201069', '1423004400', 'Vente de Billetterie: PICOULEAU STEPHANE pour la prestation Gaumont', '', '15'),
(110, '1590345', '1423090800', 'Vente de Billetterie: DUBLE AGATHE pour la prestation Gaumont', '', '15'),
(122, '55527679', '1423090800', 'Vente de Billetterie: MASSE SYLVIE pour la prestation Gaumont', '', '15'),
(135, '61617106', '1423695600', 'Vente de Billetterie: MASSE SYLVIE pour la prestation Gaumont', '', '40'),
(138, '56460345', '1423782000', 'Vente de Billetterie: GOUJON CHRISTINE pour la prestation Gaumont', '', '15'),
(139, '94080048', '1423782000', 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '5'),
(142, '47159085', '1424041200', 'Vente de Billetterie: RODRIGUES FERNANDO pour la prestation Gaumont', '', '15'),
(143, '36713277', '1424127600', 'Vente de Billetterie: MOREAU PHILIPPE pour la prestation Gaumont', '', '30'),
(145, '95012443', '1424127600', 'Vente de Billetterie: BRUNEAU JACQUELINE pour la prestation Gaumont', '', '5'),
(149, '38777535', '1424214000', 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '5'),
(150, '17515041', '1424214000', 'Vente de Billetterie: MARCHAND SEBASTIEN pour la prestation Gaumont', '', '15'),
(152, '92033985', '1424300400', 'Vente de Billetterie: BEAUDET JEAN DAMIEN pour la prestation Gaumont', '', '30'),
(155, '44216247', '1424386800', 'Vente de Billetterie: DELAUNAY PHILIPPE pour la prestation Gaumont', '', '30'),
(156, '8907149', '1424646000', 'Vente de Billetterie: BURILLON STEPHANIE pour la prestation Gaumont', '', '50'),
(157, '36494924', '1424646000', 'Vente de Billetterie: BERTHO CYRIL pour la prestation Gaumont', '', '15'),
(162, '63414335', '1424732400', 'Vente de Billetterie: BERTHO CYRIL pour la prestation Gaumont', '', '5'),
(164, '94754136', '1424732400', 'Vente de Billetterie: BERTHONNEAU CELINE pour la prestation Gaumont', '', '30'),
(167, '43437573', '1424732400', 'Vente de Billetterie: DUVEAU STEPHANE pour la prestation Gaumont', '', '15'),
(168, '46387556', '1424732400', 'Vente de Billetterie: JAZIRI  MAHDI pour la prestation Gaumont', '', '35'),
(172, '82857424', '1424818800', 'Vente de Billetterie: HAMONIER OLIVIER pour la prestation Gaumont', '', '30'),
(185, '33343919', '1425510000', 'Vente de Billetterie: GILBERT DOMINIQUE pour la prestation Gaumont', '', '30'),
(187, '39476281', '1425510000', 'Vente de Billetterie: THIBERGE MARIE CLAUDE pour la prestation Gaumont', '', '5'),
(192, '42884813', '1425942000', 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '5'),
(197, '58694919', '1426633200', 'Vente de Billetterie: DOINEAU MICHEL pour la prestation Gaumont', '', '30'),
(203, '91121691', '1426719600', 'Vente de Billetterie: JOBIN OLIVIER pour la prestation Gaumont', '', '15'),
(207, '12067273', '1427324400', 'Vente de Billetterie: MASSE SYLVIE pour la prestation Gaumont', '', '15'),
(210, '72406326', '1427752800', 'Vente de Billetterie: THIBERGE MARIE CLAUDE pour la prestation Gaumont', '', '30'),
(211, '92991337', '1427839200', 'Vente de Billetterie: BRU ALEXIS pour la prestation Gaumont', '', '15'),
(219, '9241845', '1428012000', 'Vente de Billetterie: PIOTET GERALD pour la prestation Gaumont', '', '15'),
(220, '54705031', '1428012000', 'Vente de Billetterie: VINCENT LAURENT pour la prestation Gaumont', '', '45'),
(222, '35883528', '1428444000', 'Vente de Billetterie: LASSAY ANTHONY pour la prestation Gaumont', '', '30'),
(224, '96754999', '1428530400', 'Vente de Billetterie: JAZIRI  MAHDI pour la prestation Gaumont', '', '40'),
(228, '83750742', '1428530400', 'Vente de Billetterie: NEVOUX ISABELLE pour la prestation Gaumont', '', '30'),
(229, '58977284', '1425510000', 'Vente de Billetterie: ANGELO ERIC pour la prestation Gaumont', '', '20'),
(232, '93526169', '1422831600', 'Vente de Billetterie: RABOUIN CECILE pour la prestation Cin&eacute;ma Stella', '', '30'),
(236, '27696166', '1423695600', 'Vente de Billetterie: MASSE SYLVIE pour la prestation Cin&eacute;ma Saumur', '', '15'),
(238, '79214235', '1424732400', 'Vente de Billetterie: FOIN PHILIPPE pour la prestation Cin&eacute;ma Saumur', '', '20'),
(242, '74759945', '1426546800', 'Vente de Billetterie: DEBELLY JEANNE pour la prestation Cin&eacute;ma Saumur', '', '20'),
(245, '63083424', '1428098400', 'Vente de Billetterie: SENO JEAN PIERRE pour la prestation Cin&eacute;ma Saumur', '', '15'),
(248, '77386723', '1425855600', 'Vente de Billetterie: MERCIER JACKY pour la prestation Cin&eacute;ma Stella', '', '30'),
(250, '23523761', '1424732400', 'Vente de Billetterie: MASSE SYLVIE pour la prestation Cin&eacute;ma Beaufort', '', '6'),
(264, '77622960', '1428703200', 'Vente de Billetterie: ROZAT ERIC pour la prestation Gaumont', '', '20'),
(269, '2115781', '1428962400', 'Vente de Billetterie: BLOT LAETITIA pour la prestation Gaumont', '', '15'),
(270, '48194237', '1428962400', 'Vente de Billetterie: DUBLE AGATHE pour la prestation Gaumont', '', '15'),
(274, '88572192', '1426719600', 'Vente de Billetterie: MORIN ALAIN pour la prestation parc animalier', '', '92'),
(278, '30662853', '1428962400', 'Vente de Billetterie: FOSSE WILLY pour la prestation parc animalier', '', '64.5'),
(280, '48422430', '1429308000', 'Vente de Billetterie: DOINEAU MICHEL pour la prestation Sport', '', '67'),
(282, '27225908', '1421794800', 'Vente de Billetterie: DAVIS GILLES pour la prestation Concert', '', '160'),
(285, '68592717', '1426719600', 'Vente de Billetterie: BRAZILLE MICKAEL pour la prestation Sport', '', '104'),
(286, '3218691', '1422313200', 'Vente de Billetterie: ROZAT ERIC pour la prestation Concert', '', '120'),
(287, '12222095', '1427324400', 'Vente de Billetterie: BODIN EMMANUEL pour la prestation Concert', '', '150'),
(288, '64902692', '1427752800', 'Vente de Billetterie: CROS FABIEN pour la prestation parc animalier', '', '73'),
(289, '54345552', '1429394400', 'Vente de Billetterie: CHEVALEYRE JULIE pour la prestation parc animalier', '', '50.5'),
(300, '89496339', '1428271200', 'Vente de Billetterie: BOURDIN SEBASTIEN pour la prestation Sorties scolaires', '', '0'),
(326, '47435540', '1429048800', 'Vente de Billetterie: DUBOIS FABIEN pour la prestation Gaumont', '', '20'),
(327, '76847145', '1429048800', 'Vente de Billetterie: DAL MOLIN REMY pour la prestation Gaumont', '', '20'),
(328, '70848806', '1429048800', 'Vente de Billetterie: BESNARD SEBASTIEN pour la prestation Gaumont', '', '20'),
(329, '3683553', '1429048800', 'Vente de Billetterie: JOSSELIN ANTHONY pour la prestation Gaumont', '', '15'),
(330, '93127441', '1429048800', 'Vente de Billetterie: ABBASSI NAJEM EDDINE pour la prestation Gaumont', '', '20'),
(331, '72953803', '1429048800', 'Vente de Billetterie: THIBAULT RACHEL pour la prestation Gaumont', '', '20'),
(332, '84126801', '1429653600', 'Vente de Billetterie: TURPIN CHRISTINE pour la prestation Gaumont', '', '30'),
(351, '11989730', '1427752800', 'Vente de Billetterie: HONORE EMILE pour la prestation Valrhona', '', '88.62'),
(352, '57809595', '1427752800', 'Vente de Billetterie: JURET LAURENCE pour la prestation Valrhona', '', '37.47'),
(353, '24612589', '1427752800', 'Vente de Billetterie: BRICHET PERPOIL MARIE CLAIRE pour la prestation Valrhona', '', '105.9'),
(354, '49448681', '1427752800', 'Vente de Billetterie: FLAO PATRICK pour la prestation Valrhona', '', '49.72'),
(355, '62414006', '1430085600', 'Vente de Billetterie: DOHIN THIERRY pour la prestation disney 2015', '', '40'),
(356, '14590119', '1430172000', 'Vente de Billetterie: FLAO PATRICK pour la prestation disney 2015', '', '60'),
(358, '20221851', '1429999200', 'Vente de Billetterie: DAILLIERE FRANCK pour la prestation Parc d''attraction', '', '84'),
(361, '82596495', '1430172000', 'Vente de Billetterie: LESSIAU JEAN MARC pour la prestation Gaumont', '', '30'),
(362, '32046393', '1430172000', 'Vente de Billetterie: HOFFMAN ALIX pour la prestation Gaumont', '', '15'),
(363, '12605768', '1430172000', 'Vente de Billetterie: FORTIER THOMAS pour la prestation Gaumont', '', '20'),
(365, '92293234', '1430172000', 'Vente de Billetterie: BEAUDET JEAN DAMIEN pour la prestation Gaumont', '', '30'),
(366, '77585131', '1430172000', 'Vente de Billetterie: VINCENT THIERRY pour la prestation Gaumont', '', '30'),
(367, '62917652', '1430172000', 'Vente de Billetterie: JOBIN OLIVIER pour la prestation Gaumont', '', '5'),
(370, '14359922', '1430431200', 'Vente de Billetterie: MEFFRAY FRANCK pour la prestation Gaumont', '', '20'),
(372, '29769901', '1430690400', 'Vente de Billetterie: BENION FRANCK pour la prestation Gaumont', '', '20'),
(375, '42713937', '1430949600', 'Vente de Billetterie: ROUSSEAU EMILIE pour la prestation Gaumont', '', '20'),
(376, '28395708', '1430949600', 'Vente de Billetterie: PAYMAL SOPHIE pour la prestation Gaumont', '', '20'),
(378, '987987564654', '1421794800', 'concert', '160', ''),
(379, '58455682', '1430949600', 'Vente de Billetterie: ROZAT ERIC pour la prestation Gaumont', '', '10'),
(380, '59376957', '1431381600', 'Vente de Billetterie: CADAS KARIM pour la prestation Gaumont', '', '30'),
(381, '77481712', '1431381600', 'Vente de Billetterie: DUVEAU MICKAEL pour la prestation Gaumont', '', '5'),
(382, '19549346', '1431381600', 'Vente de Billetterie: BEAUBIGNY DOMINIQUE pour la prestation Gaumont', '', '25'),
(383, '48859925', '1430776800', 'Vente de Billetterie: ROZAT ERIC pour la prestation Gaumont', '', '10'),
(386, '27349960', '1432072800', 'Vente de Billetterie: GASTINEAU ALEXIS pour la prestation Gaumont', '', '10'),
(387, '59804020', '1431900000', 'Vente de Billetterie: JURET LAURENCE pour la prestation Gaumont', '', '15'),
(388, '97524261', '1432159200', 'Vente de Billetterie: JOLY NADIA pour la prestation Cin&eacute;ma Saumur', '', '10'),
(389, '5113021266', '1432245600', 'dette David (pr&eacute;alablement mis sur le livret bleu)', '', '27420'),
(390, '2669771891', '1420066800', 'solde au 31/12/14', '', '15856.39'),
(391, '3998060487', '1420498800', 'virement 0.7 vers livret bleu', '3000', ''),
(392, '36317083', '1431381600', 'Vente de Billetterie: BOUGET FRANCK pour la prestation Sport', '', '134'),
(393, '61647599', '1431381600', 'Vente de Billetterie: BESNARD STEPHANE pour la prestation carte cezam', '', '5'),
(394, '9783475222', '1431381600', 'compte de d&eacute;p&ocirc;t cezam', '1500', ''),
(396, '4234201000', '1430863200', 'voisin', '12332.6', ''),
(397, '1109917043', '1430172000', 'voisin', '8715', ''),
(398, '1005750583', '1428962400', 'Piscine', '50', ''),
(399, '7710354328', '1431381600', 'Piscine', '292.22', ''),
(400, '4413595912', '1426719600', 'carte cado', '700', ''),
(401, '8988096187', '1426114800', 'compte de d&eacute;p&ocirc;t cezam', '3000', ''),
(402, '95941703', '1432245600', 'Vente de Billetterie: HAMONIER OLIVIER pour la prestation Sorties scolaires', '', '0'),
(403, '37773355', '1431381600', 'Vente de Billetterie: VINEAU OLIVIER pour la prestation Sorties scolaires', '', '0'),
(404, '25665268', '1428962400', 'Vente de Billetterie: FRAQUET NATHALIE pour la prestation Sorties scolaires', '', '0'),
(405, '80253977', '1432591200', 'Vente de Billetterie: DAVIS GILLES pour la prestation Concert', '', '234');

-- --------------------------------------------------------

--
-- Structure de la table `famille_prestation`
--

CREATE TABLE IF NOT EXISTS `famille_prestation` (
`idfamilleprestation` int(13) NOT NULL,
  `designation_famille` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Contenu de la table `famille_prestation`
--

INSERT INTO `famille_prestation` (`idfamilleprestation`, `designation_famille`) VALUES
(51, 'Cin&eacute;ma'),
(52, 'compte d&eacute;p&ocirc;t cezam'),
(53, 'zoo'),
(54, 'Sorties organis&eacute;es par le Comit&eacute; d''entreprise'),
(55, 'Prestation Enfants'),
(56, 'Prestations diverses');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=304 ;

--
-- Contenu de la table `ligne_billet_salarie`
--

INSERT INTO `ligne_billet_salarie` (`idlignebilletsalarie`, `idbilletsalarie`, `idprestation`, `qte`, `part_salarie`, `part_ce`, `hors_quota`) VALUES
(36, 32, 71, '2', '10', '5.2', 0),
(37, 33, 71, '6', '30', '15.6', 0),
(38, 34, 71, '5', '25', '13', 0),
(39, 35, 71, '6', '30', '15.6', 0),
(44, 37, 71, '4', '20', '10.4', 0),
(45, 40, 71, '4', '20', '10.4', 0),
(46, 41, 71, '4', '20', '10.4', 0),
(47, 42, 71, '6', '30', '15.6', 0),
(48, 43, 71, '4', '20', '10.4', 0),
(49, 44, 71, '4', '20', '10.4', 0),
(50, 45, 71, '2', '10', '5.2', 0),
(51, 46, 71, '2', '10', '5.2', 0),
(52, 47, 71, '6', '30', '15.6', 0),
(53, 46, 71, '4', '20', '10.4', 0),
(54, 48, 71, '4', '20', '10.4', 0),
(55, 49, 71, '2', '10', '5.2', 0),
(56, 50, 71, '2', '10', '5.2', 0),
(57, 51, 71, '2', '10', '5.2', 0),
(58, 52, 71, '4', '20', '10.4', 0),
(59, 53, 71, '5', '25', '13', 0),
(60, 54, 71, '3', '15', '7.8', 0),
(61, 55, 71, '6', '30', '15.6', 0),
(62, 56, 71, '4', '20', '10.4', 0),
(63, 57, 71, '4', '20', '10.4', 0),
(64, 58, 71, '4', '20', '10.4', 0),
(65, 59, 71, '4', '20', '10.4', 0),
(66, 60, 71, '2', '10', '5.2', 0),
(67, 61, 70, '10', '30', '20', 0),
(68, 62, 71, '4', '20', '10.4', 0),
(69, 63, 71, '4', '20', '10.4', 0),
(70, 64, 71, '4', '20', '10.4', 0),
(71, 65, 71, '4', '20', '10.4', 0),
(72, 67, 71, '1', '5', '2.6', 0),
(73, 68, 71, '4', '20', '10.4', 0),
(74, 69, 71, '3', '15', '7.8', 0),
(75, 70, 71, '4', '20', '10.4', 0),
(76, 71, 71, '4', '20', '10.4', 0),
(77, 72, 71, '3', '15', '7.8', 0),
(78, 73, 71, '2', '10', '5.2', 0),
(79, 74, 71, '4', '20', '10.4', 0),
(80, 75, 71, '5', '25', '13', 0),
(81, 76, 71, '4', '20', '10.4', 0),
(82, 77, 71, '2', '10', '5.2', 0),
(83, 78, 71, '2', '10', '5.2', 0),
(84, 79, 71, '4', '20', '10.4', 0),
(85, 80, 71, '4', '20', '10.4', 0),
(86, 81, 71, '2', '10', '5.2', 0),
(87, 82, 71, '4', '20', '10.4', 0),
(88, 83, 71, '2', '10', '5.2', 0),
(89, 84, 71, '3', '15', '7.8', 0),
(91, 85, 71, '4', '20', '10.4', 0),
(92, 86, 71, '4', '20', '10.4', 0),
(93, 87, 71, '2', '10', '5.2', 0),
(94, 88, 71, '4', '20', '10.4', 0),
(95, 89, 71, '4', '20', '10.4', 0),
(96, 90, 71, '4', '20', '10.4', 0),
(97, 91, 71, '4', '20', '10.4', 0),
(98, 92, 71, '4', '20', '10.4', 0),
(99, 93, 71, '4', '20', '10.4', 0),
(100, 94, 71, '2', '10', '5.2', 0),
(101, 95, 71, '8', '40', '20.8', 0),
(102, 96, 71, '4', '20', '10.4', 0),
(103, 97, 71, '2', '10', '5.2', 0),
(104, 98, 71, '3', '15', '7.8', 0),
(105, 99, 71, '1', '5', '2.6', 0),
(106, 100, 71, '4', '20', '10.4', 0),
(107, 66, 71, '2', '10', '5.2', 0),
(108, 101, 71, '3', '15', '7.8', 0),
(109, 102, 71, '6', '30', '15.6', 0),
(110, 103, 71, '2', '10', '5.2', 0),
(111, 104, 71, '1', '5', '2.6', 0),
(112, 105, 71, '2', '10', '5.2', 0),
(113, 106, 71, '4', '20', '10.4', 0),
(114, 107, 71, '1', '5', '2.6', 0),
(115, 108, 71, '3', '15', '7.8', 0),
(116, 109, 71, '4', '20', '10.4', 0),
(117, 110, 71, '6', '30', '15.6', 0),
(118, 111, 71, '2', '10', '5.2', 0),
(119, 112, 71, '2', '10', '5.2', 0),
(120, 113, 71, '6', '30', '15.6', 0),
(121, 114, 71, '10', '50', '26', 0),
(122, 115, 71, '3', '15', '7.8', 0),
(123, 116, 71, '4', '20', '10.4', 0),
(124, 117, 71, '4', '20', '10.4', 0),
(125, 118, 71, '2', '10', '5.2', 0),
(126, 119, 71, '4', '20', '10.4', 0),
(127, 120, 71, '1', '5', '2.6', 0),
(128, 121, 71, '4', '20', '10.4', 0),
(129, 122, 71, '6', '30', '15.6', 0),
(130, 123, 71, '4', '20', '10.4', 0),
(131, 124, 71, '2', '10', '5.2', 0),
(132, 125, 71, '3', '15', '7.8', 0),
(133, 126, 71, '7', '35', '18.2', 0),
(134, 127, 71, '2', '10', '5.2', 0),
(135, 128, 71, '5', '25', '13', 0),
(136, 129, 71, '5', '25', '13', 0),
(137, 130, 71, '6', '30', '15.6', 0),
(138, 131, 71, '4', '20', '10.4', 0),
(139, 132, 71, '4', '20', '10.4', 0),
(140, 133, 71, '4', '20', '10.4', 0),
(141, 134, 71, '2', '10', '5.2', 0),
(142, 135, 71, '4', '20', '10.4', 0),
(143, 136, 71, '5', '25', '13', 0),
(144, 137, 71, '5', '25', '13', 0),
(145, 138, 71, '2', '10', '5.2', 0),
(146, 139, 71, '2', '10', '5.2', 0),
(147, 140, 71, '4', '20', '10.4', 0),
(148, 141, 71, '4', '20', '10.4', 0),
(149, 142, 71, '6', '30', '15.6', 0),
(150, 143, 71, '4', '20', '10.4', 0),
(151, 144, 71, '1', '5', '2.6', 0),
(153, 146, 71, '4', '20', '10.4', 0),
(154, 147, 71, '4', '20', '10.4', 0),
(155, 148, 71, '2', '10', '5.2', 0),
(156, 149, 71, '1', '5', '2.6', 0),
(157, 151, 71, '4', '20', '10.4', 0),
(158, 152, 71, '2', '10', '5.2', 0),
(159, 153, 71, '2', '10', '5.2', 0),
(160, 154, 71, '2', '10', '5.2', 0),
(161, 155, 71, '6', '30', '15.6', 0),
(162, 156, 71, '2', '10', '5.2', 0),
(163, 157, 71, '2', '10', '5.2', 0),
(164, 158, 71, '2', '10', '5.2', 0),
(165, 159, 71, '4', '20', '10.4', 0),
(166, 160, 71, '5', '25', '13', 0),
(167, 161, 71, '3', '15', '7.8', 0),
(168, 162, 71, '2', '10', '5.2', 0),
(169, 163, 71, '4', '20', '10.4', 0),
(170, 164, 71, '5', '25', '13', 0),
(171, 165, 71, '3', '15', '7.8', 0),
(172, 166, 71, '2', '10', '5.2', 0),
(173, 167, 71, '2', '10', '5.2', 0),
(174, 168, 71, '6', '30', '15.6', 0),
(175, 169, 71, '3', '15', '7.8', 0),
(176, 170, 71, '5', '25', '13', 0),
(177, 150, 71, '2', '10', '5.2', 0),
(178, 171, 71, '2', '10', '5.2', 0),
(179, 172, 71, '2', '10', '5.2', 0),
(180, 173, 71, '5', '25', '13', 0),
(181, 174, 71, '2', '10', '5.2', 0),
(182, 175, 71, '3', '15', '7.8', 0),
(183, 176, 71, '9', '45', '23.4', 0),
(184, 177, 71, '4', '20', '10.4', 0),
(185, 178, 71, '6', '30', '15.6', 0),
(186, 179, 71, '2', '10', '5.2', 0),
(187, 180, 71, '8', '40', '20.8', 0),
(188, 181, 71, '2', '10', '5.2', 0),
(189, 182, 71, '4', '20', '10.4', 0),
(190, 183, 71, '2', '10', '5.2', 0),
(191, 184, 71, '6', '30', '15.6', 0),
(192, 185, 71, '4', '20', '10.4', 0),
(193, 187, 70, '10', '30', '20', 0),
(194, 186, 72, '2', '10', '3.6', 0),
(195, 188, 72, '2', '10', '3.6', 0),
(196, 189, 72, '2', '10', '3.6', 0),
(197, 190, 72, '3', '15', '5.4', 0),
(198, 191, 72, '2', '10', '3.6', 0),
(199, 192, 72, '4', '20', '7.2', 0),
(202, 194, 72, '4', '20', '7.2', 0),
(205, 196, 72, '3', '15', '5.4', 0),
(206, 197, 70, '4', '12', '8', 0),
(207, 198, 70, '10', '30', '20', 0),
(208, 199, 73, '2', '6', '4', 0),
(221, 206, 71, '4', '20', '10.4', 0),
(222, 207, 71, '2', '10', '5.2', 0),
(223, 208, 71, '2', '10', '5.2', 0),
(224, 209, 71, '2', '10', '5.2', 0),
(226, 210, 71, '3', '15', '7.8', 0),
(227, 211, 71, '3', '15', '7.8', 0),
(230, 214, 79, '10.4', '104', '0', 0),
(231, 216, 80, '9.2', '92', '0', 0),
(235, 220, 80, '6.45', '64.5', '0', 0),
(236, 221, 80, '5.05', '50.5', '0', 0),
(237, 222, 79, '6.7', '67', '0', 0),
(239, 224, 81, '16', '160', '0', 0),
(241, 227, 82, '8.8', '88', '0', 0),
(242, 228, 79, '10.4', '104', '0', 0),
(243, 229, 81, '12', '120', '0', 0),
(244, 230, 81, '15', '150', '0', 0),
(245, 231, 80, '7.3', '73', '0', 0),
(246, 232, 80, '5.05', '50.5', '0', 0),
(248, 234, 83, '1', '0', '45', 0),
(249, 235, 83, '1', '0', '45', 0),
(250, 236, 83, '1', '0', '45', 0),
(253, 237, 83, '2', '0', '90', 0),
(254, 238, 71, '4', '20', '10.4', 0),
(255, 239, 71, '4', '20', '10.4', 0),
(256, 240, 71, '4', '20', '10.4', 0),
(257, 241, 71, '3', '15', '7.8', 0),
(258, 242, 71, '4', '20', '10.4', 0),
(259, 243, 71, '4', '20', '10.4', 0),
(260, 244, 71, '6', '30', '15.6', 0),
(261, 245, 71, '2', '10', '5.2', 0),
(262, 246, 71, '5', '25', '13', 0),
(263, 248, 85, '8.862', '88.62', '0', 0),
(264, 249, 85, '3.747', '37.47', '0', 0),
(265, 250, 85, '10.59', '105.9', '0', 0),
(266, 251, 85, '4.972', '49.72', '0', 0),
(267, 252, 86, '4', '40', '0', 0),
(268, 253, 86, '6', '60', '0', 0),
(269, 254, 82, '8.4', '84', '0', 0),
(270, 255, 71, '2', '10', '5.2', 0),
(271, 256, 71, '6', '30', '15.6', 0),
(272, 257, 71, '3', '15', '7.8', 0),
(273, 258, 71, '4', '20', '10.4', 0),
(274, 259, 71, '2', '10', '5.2', 0),
(275, 260, 71, '6', '30', '15.6', 0),
(276, 261, 71, '6', '30', '15.6', 0),
(277, 262, 71, '1', '5', '2.6', 0),
(278, 263, 71, '2', '10', '5.2', 0),
(279, 264, 71, '2', '10', '5.2', 0),
(280, 265, 71, '4', '20', '10.4', 0),
(281, 266, 71, '2', '10', '5.2', 0),
(282, 267, 71, '4', '20', '10.4', 0),
(283, 268, 71, '2', '10', '5.2', 0),
(285, 270, 71, '4', '20', '10.4', 0),
(286, 271, 71, '4', '20', '10.4', 0),
(287, 272, 71, '2', '10', '5.2', 0),
(288, 273, 71, '2', '10', '5.2', 0),
(289, 274, 71, '6', '30', '15.6', 0),
(290, 275, 71, '1', '5', '2.6', 0),
(291, 276, 71, '5', '25', '13', 0),
(292, 277, 71, '2', '10', '5.2', 0),
(295, 281, 71, '2', '10', '5.2', 0),
(296, 282, 71, '3', '15', '7.8', 0),
(297, 283, 72, '2', '10', '3.6', 0),
(298, 284, 79, '13.4', '134', '0', 0),
(299, 285, 87, '1', '5', '0', 0),
(300, 286, 83, '1', '0', '45', 0),
(301, 287, 83, '1', '0', '45', 0),
(302, 288, 83, '1', '0', '45', 0),
(303, 289, 81, '23.4', '234', '0', 0);

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
(5, '1.6.3', '29315-prem');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
`iduser` int(13) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass_md5` varchar(255) NOT NULL,
  `groupe` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`iduser`, `login`, `pass_md5`, `groupe`) VALUES
(1, 'Administrateur', '25f9e794323b453885f5181f1b624d0b', 1),
(6, 'CETESSIER', 'c603b2bf319e78ae2821bba599072e8f', 1),
(8, 'pflao', '8336bd93fd11451846e74d94fb610521', 1),
(9, 'P Delaunay', 'b1da10d127b7a470f3cc7515d09a98a4', 1);

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
  `hors_quota` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`) VALUES
(70, 51, 'Cin&eacute;ma Stella', '18-03-2015', '', '3', '2', '5', '20', '11', 0),
(71, 51, 'Gaumont', '18-03-2015', '', '5', '2.6', '7.6', '20', '1995', 0),
(72, 51, 'Cin&eacute;ma Saumur', '01-01-2015', '', '5', '1.8', '6.8', '20', '148', 0),
(73, 51, 'Cin&eacute;ma Beaufort', '01-01-2015', '', '3', '2', '5', '20', '15', 0),
(74, 51, 'Cin&eacute;ma 400 coups', '01-01-2015', '', '3', '2', '5', '20', '', 0),
(79, 52, 'Sport', '01-01-2015', '', '10', '0', '10', '1000', '959.1', 0),
(80, 52, 'parc animalier', '01-01-15', '', '10', '0', '10', '1000', '966.95', 0),
(81, 52, 'Concert', '28-04-2015', '', '10', '0', '10', '1000', '933.6', 0),
(82, 52, 'Parc d''attraction', '28-04-2015', '', '10', '0', '10', '1000', '982.8', 0),
(83, 55, 'Sorties scolaires', '01-01-15', '31-01-2015', '0', '45', '45', '10', '990', 0),
(84, 55, 'Sorties extra-scolaires', '01-01-15', '31-01-2015', '0', '15', '15', '30', '1000', 0),
(85, 56, 'Valrhona', '01-01-2015', '', '10', '0', '10', '1000', '971.829', 0),
(86, 54, 'disney 2015', '29-03-2015', '', '10', '0', '10', '1000', '990', 0),
(87, 52, 'carte cezam', '01-05-2015', '31-12-2015', '5', '0', '5', '100', '99', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `produit_fixe`
--

INSERT INTO `produit_fixe` (`idproduitfixe`, `designation`, `date_produit_fixe`, `montant_produit`, `num_mouvement`) VALUES
(9, 'objet rama', '12-01-2015', '492.34', ''),
(10, 'nuances et terroirs', '21-01-2015', '255', ''),
(12, 'dotation  ASC', '19-01-2015', '17079.61', ''),
(13, 'virement david', '03-04-2015', '1500', ''),
(14, 'dotation  ASC', '17-04-2015', '15269,66', ''),
(15, 'dette David (pr&eacute;alablement mis sur le livret bleu)', '22-05-2015', '27420', '5113021266'),
(16, 'solde au 31/12/14', '01-01-2015', '15856.39', '2669771891');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=274 ;

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`) VALUES
(29, 32, 1, '10', 'CM', 'Bigot P', '5918847', 0),
(30, 33, 1, '30', 'CA', 'Mahot', '7278163', 0),
(31, 34, 1, '25', 'CM', 'Jousset J', '6752344', 0),
(32, 35, 1, '30', 'CM', 'berthonnneau', '6740144', 0),
(34, 37, 1, '20', 'CE', 'Jouin B', '5405595', 0),
(35, 40, 1, '20', 'CA', 'Mauxion A', '5957233', 0),
(36, 41, 1, '20', 'CA', 'Angeard M', '2903246', 0),
(37, 42, 1, '30', '', '', '0830849', 0),
(38, 43, 1, '20', 'CA', 'Turpin', '6605119', 0),
(39, 44, 1, '20', 'BP', 'Barelli m', '4458026', 0),
(40, 45, 1, '10', 'CE', 'Bardonneau', '0000134', 0),
(41, 46, 1, '10', 'BP', 'babalonne', '4518040', 0),
(42, 47, 1, '30', 'CA', 'Poupin', '9818450', 0),
(43, 46, 1, '20', 'BP', 'babalonne', '4518040', 0),
(44, 49, 1, '10', 'CA', 'Morin', '1124001', 0),
(45, 50, 1, '10', '', '', '2657322', 0),
(46, 51, 1, '10', 'CM', 'DailliÃ¨re', '5511207', 0),
(47, 52, 1, '20', 'CA', 'Miloudi', '75829074', 0),
(48, 53, 1, '25', 'CA', 'Avril', '50918071', 0),
(49, 54, 1, '15', 'CE', 'Ditacroute S', '0003037', 0),
(50, 55, 1, '30', 'CE', 'Poirier', '0000581', 0),
(51, 56, 1, '20', 'CA', 'Blum', '7550082', 0),
(52, 57, 1, '20', 'CM', 'DailliÃ¨re', '5511209', 0),
(53, 58, 1, '20', 'CM', 'Lessiau', '5621769', 0),
(54, 59, 1, '20', 'CA', 'Bodin D', '9383513', 0),
(55, 60, 1, '10', 'CE', 'Rabouin', '5399212', 0),
(56, 61, 1, '30', 'CE', 'Rabouin', '5399212', 0),
(57, 62, 1, '20', 'CE', 'Brichet', '5004909', 0),
(58, 63, 1, '20', 'CA', 'Bodin E', '4483076', 0),
(59, 64, 1, '20', 'BP', 'Dalmolhin', '4645022', 0),
(60, 65, 1, '20', 'CE', 'Ditacroute S', '0003021', 0),
(61, 67, 1, '5', 'CA', 'Boucard', '9619573', 0),
(62, 68, 1, '20', 'CA', 'Boucard', '9619573', 0),
(63, 69, 1, '15', 'CE', 'Picouleau', '0000183', 0),
(64, 70, 1, '20', 'CE', 'trost', '0000386', 0),
(65, 72, 1, '15', 'CA', 'DublÃ©', '4948107', 0),
(66, 73, 1, '10', 'CA', 'Papin', '', 0),
(67, 74, 1, '20', '', '', '7213033', 0),
(68, 75, 1, '25', 'CA', 'BruÃ¨re', '3163473', 0),
(69, 76, 1, '20', 'CM', 'Martin', '6991054', 0),
(70, 78, 1, '10', 'CA', 'Rapicault J', '4358267', 0),
(71, 79, 1, '20', 'CA', 'Chaussepied', '0000163', 0),
(72, 80, 1, '20', 'CA', 'Hy', '5455523', 0),
(73, 81, 1, '10', 'CA', 'Dubois F', '6473278', 1),
(74, 82, 1, '20', 'BP', 'Rezard', '4561019', 0),
(75, 83, 1, '10', 'CM', 'Jousset', '6958332', 0),
(76, 84, 1, '15', 'CA', 'Leboucher S', '6683003', 0),
(77, 85, 1, '20', '', 'Angerad M', '2903250', 0),
(78, 86, 1, '20', 'CA', 'Lassay', '3807544', 0),
(79, 87, 1, '10', '', 'Rapicault J', '4358267', 0),
(80, 88, 1, '20', 'CM', 'Paymal', '6440452', 0),
(81, 89, 1, '20', 'CM', 'DaillÃ¨re', '5511212', 0),
(82, 90, 1, '20', '', 'Cornut', '0000212', 0),
(83, 91, 1, '20', 'CM', 'Laigle', '6026433', 0),
(84, 92, 1, '20', '', '', '7109836', 0),
(85, 93, 1, '20', 'CA', 'Duperray V', '8681549', 0),
(86, 94, 1, '10', '', '', '01211515', 0),
(87, 95, 1, '40', 'CE', 'Leboucher S', '6682997', 0),
(88, 96, 1, '20', 'CE', 'Cauchard', '2667204', 0),
(89, 97, 1, '10', 'CE', 'Vincent L', '4436905', 0),
(90, 98, 1, '15', 'BNP', 'Goujon C', '8982503', 0),
(91, 99, 1, '5', 'CE', 'Bru', '0000183', 0),
(92, 100, 1, '20', 'CA', 'Blot', '7596308', 0),
(93, 71, 1, '20', 'CM', 'duveau St', '6623013', 0),
(94, 66, 1, '10', '', 'cros f', '0001091', 0),
(95, 101, 1, '15', '', 'Rodriguez', '1896041', 0),
(96, 103, 1, '10', '', 'tirlet', '1667414', 0),
(97, 104, 1, '5', '', 'Bruneau', '9660042', 0),
(98, 105, 1, '10', '', 'Jarry', '6807071', 0),
(99, 106, 1, '20', '', 'Miloudi', '1727727', 0),
(100, 107, 1, '5', '', 'Bru A', '0000183', 0),
(101, 108, 1, '15', '', 'Marchand s', '0000277', 0),
(102, 109, 1, '20', '', 'Brichet', '5004919', 0),
(103, 110, 1, '30', '', 'Beaudet', '8883393', 0),
(104, 111, 1, '10', '', 'Guiho', '6814811', 0),
(105, 112, 1, '10', '', 'Komara', '4198322', 0),
(106, 113, 1, '30', '', 'Delaunay P', '9339202', 0),
(107, 114, 1, '50', '', 'Burillon', '7345659', 0),
(108, 115, 1, '15', '', 'bertho C', '9947757', 0),
(109, 116, 1, '20', '', 'RiviÃ¨re', '0899310', 0),
(110, 117, 1, '20', '', 'Mauxion A', '9957001', 0),
(111, 118, 1, '10', '', 'Godard G', '7036344', 0),
(112, 119, 1, '20', '', 'jobin o', '2541685', 0),
(113, 120, 1, '5', '', 'bertho C', '9947758', 0),
(114, 121, 1, '20', '', 'thiberge', '4666019', 0),
(115, 122, 1, '30', '', 'Berthonneau', '6740147', 0),
(116, 123, 1, '20', '', 'declÃ©', '1913423', 0),
(117, 124, 1, '10', '', 'hy', '5455525', 0),
(118, 125, 1, '15', '', 'duveau St', '6623013', 0),
(119, 126, 1, '35', '', 'jaziri', '6267268', 0),
(120, 127, 1, '10', '', 'bangouri', '4198322', 0),
(121, 128, 1, '25', '', 'paviot m', '6821241', 0),
(122, 129, 1, '25', '', 'besnard g', '0000549', 0),
(124, 131, 1, '20', '', 'gaignard m', '5162242', 0),
(125, 132, 1, '20', '', 'hermiteau s', '0000153', 0),
(126, 133, 1, '20', 'CA', 'Morin', '1124002', 0),
(127, 134, 1, '10', 'CE', 'vergnaud', '1365866', 0),
(128, 135, 1, '20', 'CA', 'cadas', '0000235', 1),
(129, 136, 1, '25', 'CA', 'josselin', '5465945', 0),
(130, 137, 1, '25', 'CA', 'Bodin E', '4483088', 0),
(131, 138, 1, '10', '', 'duveau m', '3400334', 0),
(132, 139, 1, '10', '', 'colombeau', '0203896', 0),
(133, 140, 1, '20', '', 'dohin', '9203076', 0),
(134, 141, 1, '20', '', 'khoumsi', '4791110', 0),
(135, 142, 1, '30', '', 'gilbert', '4173986', 0),
(136, 144, 1, '5', '', 'thiberge', '4666020', 0),
(137, 146, 1, '20', '', 'thomas', '0388529', 0),
(138, 147, 1, '20', '', 'chatard', '7505063', 0),
(139, 148, 1, '10', '', 'Bardonneau', '0000187', 0),
(140, 149, 1, '5', '', 'Bru A', '0000187', 0),
(141, 151, 1, '20', '', 'rezard', '4561023', 0),
(142, 153, 1, '10', '', 'bidet', '86477', 0),
(143, 154, 1, '10', '', 'leconte jl', '0000530', 0),
(144, 155, 1, '30', '', 'doineau', '4593720', 0),
(145, 157, 1, '10', '', 'thompson', '00064288065', 0),
(146, 158, 1, '10', '', 'Ditacroute S', '00003052', 0),
(147, 159, 1, '20', '', 'goujon c', '8982508', 0),
(149, 160, 1, '25', '', 'voluette g', '6007940', 0),
(150, 161, 1, '15', '', 'jobin o', '2541690', 0),
(151, 162, 1, '10', '', 'angelo e', '1699272', 0),
(152, 163, 1, '20', '', 'DailliÃ¨re', '5511211', 0),
(153, 164, 1, '25', '', 'roche', '5636372', 0),
(154, 165, 1, '15', '', 'leboucher s', '668311', 0),
(155, 166, 1, '10', '', 'jobin o', '2541691', 0),
(156, 167, 1, '10', '', 'Jousset J', '6958359', 0),
(157, 169, 1, '15', '', 'Bru A', '0000189', 1),
(158, 171, 1, '10', '', 'Chevaleyre', '6683012', 0),
(159, 172, 1, '10', '', 'Debelly', '0001085', 0),
(160, 173, 1, '25', '', 'Rocher Y', '6758194', 1),
(161, 174, 1, '10', '', 'Pons', '7305101', 1),
(162, 175, 1, '15', '', 'piotet', '484376', 1),
(163, 177, 1, '20', '', 'Fosse', '0342849', 0),
(164, 178, 1, '30', '', 'lassay', '3807545', 0),
(165, 179, 1, '10', '', 'browaeys', '0000099', 1),
(166, 180, 1, '40', '', 'jaziri', '6267278', 1),
(167, 181, 1, '10', '', 'jaziri', '6267278', 1),
(168, 152, 1, '10', '', 'charrier', '4983839', 0),
(169, 150, 1, '10', '', 'lepetitcorps', '0001034', 0),
(170, 185, 1, '20', '', 'angelo', '1699266', 0),
(171, 143, 1, '20', '', 'rateau', '0102504', 0),
(172, 77, 1, '10', '', 'papin', '5189083', 0),
(173, 187, 1, '30', '', 'rabouin', '5399212', 0),
(174, 186, 1, '10', '', 'joly', '6063663', 0),
(175, 188, 1, '10', '', 'Debelly', '0001075', 0),
(176, 189, 1, '10', '', 'ecomard', '3247982', 0),
(177, 190, 1, '15', '', 'masse', '6682995', 0),
(178, 191, 1, '10', '', 'seno', '000016', 0),
(179, 192, 1, '20', '', 'foin', '7109836', 0),
(180, 194, 1, '20', '', 'debelly', '0001081', 0),
(181, 196, 1, '15', '', 'seno', '0000033', 1),
(182, 197, 1, '12', '', 'laigle', '6026433', 0),
(183, 198, 1, '30', '', 'mercier', '9847086', 0),
(184, 199, 1, '6', '', 'masse s', '6683004', 0),
(187, 206, 1, '20', '', 'Rozat E', '6796548', 1),
(188, 207, 1, '10', '', 'Lopez r', '9181144', 0),
(189, 208, 1, '10', '', 'Duriez', '5497922', 1),
(190, 210, 1, '15', '', 'Blot', '7596325', 0),
(191, 211, 1, '15', '', 'DublÃ©', '4948121', 0),
(194, 214, 1, '104', '', 'Godard G', '7036355', 0),
(195, 216, 1, '92', '', 'Morin', '1124003', 0),
(199, 220, 1, '64.5', '', 'Fosse W', '4600295', 0),
(200, 221, 1, '50.5', '', 'FÃ©vrier D', '555944', 0),
(202, 224, 1, '160', '', 'davis', '', 0),
(203, 227, 1, '88', '', 'Rozat E', '6888357', 0),
(204, 228, 1, '104', '', 'Brazille M', '68477943', 0),
(205, 229, 1, '120', '', 'Rozat E', '', 0),
(206, 230, 1, '150', '', 'Bodin E', '2676700', 0),
(207, 232, 1, '50.5', '', 'chevaleyre', '000001900', 1),
(208, 231, 1, '73', '', 'cros f', '0001091', 1),
(210, 234, 1, '0', '', '', '', 0),
(211, 235, 1, '0', '', '', '', 0),
(212, 236, 1, '0', '', '', '', 0),
(213, 237, 1, '0', '', '', '', 0),
(214, 130, 1, '30', '', 'hamonnier', '5883049', 1),
(215, 170, 1, '25', '', 'Breton ', '0000037', 1),
(216, 238, 1, '20', '', 'Dubois', '6473299', 0),
(217, 239, 1, '20', '', 'Dalmolhin', '4645024', 0),
(219, 240, 1, '20', '', 'besnard s', '7944980', 0),
(220, 241, 1, '15', '', 'Josselin', '8421719', 0),
(221, 242, 1, '20', '', 'josselin', '8421719', 0),
(222, 243, 1, '20', '', 'Thibault R', '2551891', 0),
(223, 182, 1, '20', '', 'lecalvez', '5967631', 1),
(224, 248, 1, '88.62', '', 'honorÃ©', '3048928', 0),
(225, 249, 1, '37.47', '', 'juret', '0001280', 0),
(226, 250, 1, '105.9', '', 'Brichet', '5004903', 0),
(227, 251, 1, '49.72', '', 'petiteau', '6175893', 0),
(228, 252, 1, '40', '', 'dohin', '9203068', 0),
(229, 253, 1, '60', '', 'Flao', '5483485', 0),
(230, 254, 1, '84', '', 'DailliÃ¨re', '5673697', 1),
(231, 255, 1, '10', 'bp', 'Gastineau ', '0000639', 1),
(232, 256, 1, '30', 'CM', 'Lessiau', '5621782', 1),
(234, 258, 1, '20', 'ca', 'fortier t', '2649203', 1),
(235, 259, 1, '10', 'ca', 'dubois', '6473304', 0),
(237, 260, 1, '30', 'ce', 'Beaudet', '8883394', 1),
(238, 261, 1, '30', 'ce', 'Beaudet', '8883394', 1),
(239, 262, 1, '5', 'CA', 'jobin o', '2541695', 1),
(240, 245, 1, '10', 'CA', 'jobin o', '8662713', 1),
(241, 263, 1, '10', 'cm', 'Bigot P', '60259948', 1),
(242, 156, 1, '10', 'cm', 'Bigot P', '60259948', 1),
(243, 264, 1, '10', 'bp', 'dansoko', '4479029', 1),
(244, 265, 1, '20', 'cic', 'meffray', '3649255', 1),
(245, 268, 1, '10', 'lcl', 'piotet', '3292958', 1),
(247, 168, 1, '30', 'BP', 'thiberge', '4666029', 1),
(248, 184, 1, '30', 'bp', 'nevoux', '0830862', 1),
(249, 183, 1, '10', 'BP', 'nevoux', '0830862', 1),
(250, 244, 1, '30', 'CA', 'Turpin', '1791106', 1),
(251, 176, 1, '45', 'CE', 'Vincent l', '4436838', 0),
(252, 273, 1, '10', '', 'Raimbault', '2615026', 1),
(253, 274, 1, '30', 'CA', 'cadas', '8069275', 0),
(254, 275, 1, '5', 'CA', 'duveau m', '0322019', 0),
(255, 276, 1, '25', 'BNP', 'BEAUBIGNY D', '5205804', 0),
(256, 277, 1, '10', '', 'RAMBAULT', '2615026', 0),
(257, 271, 1, '20', '', 'paymal', '6440458', 1),
(258, 272, 1, '10', '', 'trost s', '0000392', 0),
(259, 209, 1, '10', '', 'Jousset J', '7172550', 0),
(262, 281, 1, '10', 'BP', 'Gastineau ', '0000692', 0),
(263, 282, 1, '15', 'BP', 'juret', '0001291', 0),
(264, 284, 1, '134', '', 'bouget', '6379863', 1),
(265, 257, 1, '15', 'BP', 'hoffman', '2725014', 1),
(266, 285, 1, '5', 'CA', 'besnard s', '2634693', 1),
(267, 267, 1, '20', '', 'vukelic', '72464366', 0),
(268, 286, 1, '0', '', '', '', 0),
(269, 287, 1, '0', '', '', '', 0),
(270, 288, 1, '0', '', '', '', 0),
(271, 289, 1, '234', 'CM', 'davis', '7287344', 0),
(272, 222, 1, '67', '', 'doineau', '4763822', 0),
(273, 283, 1, '10', '', 'joly', '6063673', 0);

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `reg_remb_ayant_droit` (
`idregrembayantdroit` int(13) NOT NULL,
  `idrembayantdroit` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `reg_remb_salarie`
--

CREATE TABLE IF NOT EXISTS `reg_remb_salarie` (
`idregrembsalarie` int(13) NOT NULL,
  `idrembsalarie` int(13) NOT NULL,
  `montant_reglement` varchar(255) NOT NULL,
  `num_chq` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `remb_ayant_droit`
--

CREATE TABLE IF NOT EXISTS `remb_ayant_droit` (
`idrembayantdroit` int(13) NOT NULL,
  `idayantdroit` int(13) NOT NULL,
  `prestation` varchar(255) NOT NULL,
  `date_vente` varchar(255) NOT NULL,
  `montant_prestation` varchar(255) NOT NULL,
  `part_ce` varchar(255) NOT NULL,
  `etat_facture` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `remb_salarie`
--

CREATE TABLE IF NOT EXISTS `remb_salarie` (
`idrembsalarie` int(13) NOT NULL,
  `idsalarie` int(13) NOT NULL,
  `prestation` varchar(255) NOT NULL,
  `date_vente` varchar(255) NOT NULL,
  `montant_prestation` varchar(255) NOT NULL,
  `part_ce` varchar(255) NOT NULL,
  `etat_facture` int(1) NOT NULL,
  `num_mouvement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `remise_banque`
--

INSERT INTO `remise_banque` (`idremisebanque`, `date_remise`, `type_remise`, `num_remise`, `montant_remise`, `valid`) VALUES
(9, '11-02-2015', 1, '3123829', '135', 1),
(10, '11-02-2015', 1, '3123830', '115', 1),
(11, '28-02-2015', 1, '3123831', '140', 1),
(17, '31-03-2015', 1, '3123841', '206.09', 1),
(18, '31-03-2015', 1, '3123842', '325.9', 1),
(19, '31-03-2015', 1, '3123843', '273.72', 1),
(20, '31-03-2015', 1, '3128844', '212', 1),
(23, '31-03-2015', 1, '3123846', '129', 1),
(24, '28-04-2015', 1, '31238347', '175.5', 1),
(25, '28-04-2015', 1, '31238348', '164.5', 1),
(27, '28-04-2015', 1, '31238349', '203.5', 1),
(28, '28-04-2015', 1, '3123850', '229', 1),
(29, '12-05-2015', 1, '3306359', '150', 1),
(30, '12-05-2015', 1, '3306360', '254', 1),
(31, '12-05-2015', 1, '3306361', '125', 1);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_chq`
--

CREATE TABLE IF NOT EXISTS `remise_banque_chq` (
`idremisebanquechq` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

--
-- Contenu de la table `remise_banque_chq`
--

INSERT INTO `remise_banque_chq` (`idremisebanquechq`, `idremisebanque`, `idreglementventepresta`) VALUES
(14, 9, 74),
(15, 9, 53),
(16, 9, 60),
(17, 9, 64),
(18, 9, 63),
(19, 9, 57),
(20, 9, 58),
(21, 10, 65),
(22, 10, 75),
(23, 10, 73),
(24, 10, 72),
(25, 10, 172),
(26, 10, 51),
(27, 10, 42),
(28, 11, 32),
(29, 11, 114),
(30, 11, 109),
(31, 11, 116),
(32, 11, 113),
(33, 11, 119),
(34, 11, 117),
(48, 17, 138),
(49, 17, 180),
(50, 17, 143),
(51, 17, 147),
(52, 17, 224),
(53, 17, 225),
(54, 17, 178),
(55, 18, 171),
(56, 18, 146),
(57, 18, 140),
(58, 18, 142),
(59, 18, 153),
(60, 18, 206),
(61, 18, 226),
(62, 19, 118),
(63, 19, 93),
(64, 19, 204),
(65, 19, 149),
(66, 19, 168),
(67, 19, 81),
(68, 19, 144),
(69, 19, 227),
(70, 20, 183),
(71, 20, 195),
(72, 20, 137),
(73, 20, 96),
(74, 20, 134),
(75, 20, 172),
(76, 20, 170),
(77, 20, 66),
(78, 23, 194),
(79, 23, 141),
(80, 23, 136),
(81, 24, 200),
(82, 24, 191),
(83, 24, 190),
(84, 24, 220),
(85, 24, 221),
(86, 24, 163),
(87, 24, 164),
(88, 24, 158),
(89, 25, 216),
(90, 25, 222),
(91, 25, 188),
(92, 25, 199),
(93, 25, 219),
(94, 25, 159),
(95, 25, 217),
(103, 27, 165),
(104, 27, 215),
(105, 27, 0),
(106, 27, 157),
(107, 27, 208),
(108, 27, 207),
(109, 27, 162),
(110, 27, 181),
(111, 28, 160),
(112, 28, 161),
(113, 28, 166),
(114, 28, 167),
(115, 28, 214),
(116, 28, 187),
(117, 28, 189),
(118, 28, 230),
(119, 29, 237),
(120, 29, 238),
(121, 29, 234),
(122, 29, 250),
(123, 29, 240),
(124, 29, 239),
(125, 30, 73),
(126, 30, 223),
(127, 30, 232),
(128, 30, 257),
(129, 30, 241),
(130, 30, 242),
(131, 30, 244),
(132, 30, 264),
(133, 31, 245),
(134, 31, 231),
(135, 31, 248),
(136, 31, 249),
(137, 31, 243),
(138, 31, 252),
(139, 31, 247),
(140, 31, 265),
(141, 29, 266),
(142, 29, 128);

-- --------------------------------------------------------

--
-- Structure de la table `remise_banque_esp`
--

CREATE TABLE IF NOT EXISTS `remise_banque_esp` (
`idremisebanqueesp` int(13) NOT NULL,
  `idremisebanque` int(13) NOT NULL,
  `idreglementventepresta` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `etat_salarie` int(1) NOT NULL,
  `solde_salarie` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=398 ;

--
-- Contenu de la table `salarie`
--

INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`, `solde_salarie`) VALUES
(71, '', 1, 'ABBASSI', 'NAJEM EDDINE', '1', 'RUE ANDRE MAUROIS', '49000', 'ANGERS', '', '', '', '12/03/1978', '01/06/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(72, '', 1, 'ALLARD', 'ERIC', '12', 'RUE DE LA VALLEE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '04/01/1967', '05/01/2009', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(73, '', 1, 'ALLARD', 'THIERRY', '1', 'RUE DE VERDUN', '49630', 'MAZE', '', '', '', '31/05/1987', '05/01/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(74, '', 1, 'AMZIL', 'ABDELHAMID', '8', 'RUE DES DEPORTES', '49430', 'DURTAL', '', '', '', '23/08/1975', '01/06/2011', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '999999999999'),
(75, '', 2, 'ANGEARD', 'MARYSE', '31', 'RUE ST JEAN', '49800', 'SARRIGNE', '', '', '', '20/05/1968', '01/01/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(76, '', 1, 'ANGELO', 'ERIC', '5', 'IMP DE LA PETITE NOUE', '49150', 'BAUGE', '', '', '', '26/04/1970', '18/09/2006', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(77, '', 2, 'ANGOT', 'CECILE', '27', 'RUE DES MOULINS', '49390', 'MOULIHERNE', '', '', '', '28/07/1958', '01/01/2006', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(78, '', 1, 'ANGOT', 'PATRICK', '27', 'RUE DES MOULINS', '49390', 'MOULIHERNE', '', '', '', '29/12/1970', '05/01/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(79, '', 1, 'ASSELAIN', 'SEBASTIEN', '2', 'RUE DU CLOS', '49150', 'BAUGE', '', '', '', '27/07/1988', '01/05/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(80, '', 2, 'AUBRY DAVY', 'BLANDINE', '7', 'RUE DES MEGALITHES', '49150', 'PONTIGNE', '', '', '', '02/05/1973', '01/01/2009', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(81, '', 1, 'AUDOUARD', 'LUDOVIC', '', 'LA MAISON NEUVE', '49150', 'CHARTRENE', '', '', '', '13/11/1981', '05/11/2012', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(82, '', 2, 'AUVINET', 'JUDITH', '', 'LIEU DIT L HUMAUCHAIS', '49140', 'CORZE', '', '', '', '18/08/1992', '09/01/2012', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(83, '', 1, 'AVRIL', 'FLORIAN', '50', 'AVENUE PASTEUR', '49100', 'ANGERS', '', '', '', '10/09/1990', '03/11/2011', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(84, '', 1, 'BABALONE', 'OLIVIER', '30', 'RTE DE LA GRANDE MAISON', '49630', 'CORNE', '', '', '', '25/07/1969', '02/05/1994', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(85, '', 1, 'BABIN', 'ALEXANDRE', '7', 'RUE PIERRE CHANTELOUP', '49140', 'BAUNE', '', '', '', '05/01/1982', '01/01/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(86, '', 1, 'BALLOT', 'MATTHIEU', '4', 'RUE DES MIMOSAS', '49140', 'BAUNE', '', '', '', '13/09/1994', '01/09/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.D. (Formation)', 1, '999999999999'),
(87, '', 1, 'BANGOURA', 'ABDOULAYE', '30', 'RUE DE LA CHAPELLE', '49150', 'ECHEMIRE', '', '', '', '22/07/1973', '01/01/2014', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(88, '', 1, 'BARDONNEAU', 'PASCAL', '5', 'CHEM DE LA PETITE ROTE', '49140', 'VILLEVEQUE', '', '', '', '29/09/1974', '01/07/2009', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(89, '', 1, 'BARELLI', 'MATHIEU', '49', 'BD DU VAUGAREAU', '49100', 'ANGERS', '', '', '', '22/08/1982', '24/07/2006', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(90, '', 1, 'BARRE', 'ROBERT', '30', 'CHEMIN LA CHARRAUD BASSE', '85160', 'SAINT JEAN DE MONTS', '', '', '', '11/07/1957', '21/09/1981', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(91, '', 2, 'BAUNE', 'SYLVIE', '19', 'RUE DES AREDILLES', '49630', 'CORNE', '', '', '', '02/10/1963', '21/10/1980', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(92, '', 1, 'BEASSE', 'FRANCK', '', 'GRESIGNE', '49250', 'BRION', '', '', '', '14/04/1969', '12/04/1994', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(93, '', 1, 'BEAUBIGNY', 'DOMINIQUE', '24', 'RUE DE GROLLAY', '49630', 'MAZE', '', '', '', '30/07/1957', '01/10/2001', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(94, '', 1, 'BEAUDET', 'JEAN DAMIEN', '11', 'SQUARE DU GD CORNILLE', '49100', 'ANGERS', '', '', '', '09/09/1978', '01/11/2003', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(95, '', 1, 'BEAUSSIER', 'CHRISTIAN', '1', 'RUE PRINCIPALE', '49250', 'GEE', '', '', '', '04/05/1958', '22/02/1977', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(96, '', 1, 'BEAUSSIER', 'JEAN JACQUES', '8', 'RTE DES GRANDS CHAMPS', '49140', 'CORNILLE LES CAVES', '', '', '', '19/06/1960', '04/04/1978', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(97, '', 1, 'BELLAMY', 'MATHIAS', '24', 'RUE DES GLACIS', '54000', 'NANCY', '', '', '', '29/02/1992', '01/01/2015', '', '1', 'MARKETING', '', '', 'Stagiaire Etude', 1, '999999999999'),
(98, '', 1, 'BENION', 'FRANCK', '15', 'RUE DE LA MAIRIE', '49140', 'SERMAISE', '', '', '', '04/02/1971', '01/04/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(99, '', 1, 'BENOIST', 'MICKAEL', '10', 'RUE DES SAINTS MARTINS', '49380', 'THOUARCE', '', '', '', '01/10/1980', '12/11/2001', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(100, '', 2, 'BERNARD VUKELIC', 'CAROLE', '1', 'RUE DES EPINETTES', '49140', 'SERMAISE', '', '', '', '07/11/1972', '01/11/2000', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(101, '', 1, 'BERTHO', 'CYRIL', '17', 'RUE FERDINAND VEST', '49800', 'TRELAZE', '', '', '', '08/02/1972', '02/05/1994', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.I.', 1, '999999999999'),
(102, '', 2, 'BERTHONNEAU', 'CELINE', '93', 'RTE DE FAYET', '49630', 'MAZE', '', '', '', '12/03/1970', '11/04/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(103, '', 1, 'BESNARD', 'SEBASTIEN', '', 'LA CROIX', '49140', 'CHAUMONT D ANJOU', '', '', '', '08/08/1983', '13/01/2003', '', '1', '1ER ENCADR. AFFINAGE', '', '', 'C.D.I.', 1, '999999999999'),
(104, '', 1, 'BESNARD', 'STEPHANE', '2', 'ALLEE DES TOURTERELLES', '49250', 'BEAUFORT EN VALLEE', '', '', '', '01/03/1980', '24/03/2003', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(105, '', 1, 'BESNARD', 'GUILLAUME', '', 'RUE DE LA FONTAINE', '49140', 'FONTAINE MILON', '', '', '', '28/07/1972', '24/03/2003', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(106, '', 1, 'BIDET', 'JULIEN', '8', 'IMP LOUIS MARTIN', '49000', 'ANGERS', '', '', '', '20/01/1980', '05/11/2001', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(107, '', 1, 'BIDON', 'ERIC', '20', 'PLACE DE L EGLISE', '49250', 'ST MATHURIN SUR LOIRE', '', '', '', '11/11/1962', '14/10/1980', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(108, '', 1, 'BIDON', 'GILDAS', '107', 'RTE DU CLOS GASNIER', '49630', 'CORNE', '', '', '', '05/03/1957', '25/01/1975', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '999999999999'),
(109, '', 1, 'BIGOT', 'PHILIPPE', '1', 'RUE L AURORE', '49140', 'CORZE', '', '', '', '17/07/1969', '01/10/1999', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(110, '', 2, 'BLOT', 'LAETITIA', '', 'LES GLEFIERES', '49250', 'FONTAINE GUERIN', '', '', '', '29/02/1980', '25/05/2000', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(111, '', 1, 'BLUM', 'DAMIEN', '', 'FERME LA FONTAINE', '49140', 'BAUNE', '', '', '', '19/09/1992', '01/03/2014', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(112, '', 2, 'BOCHER', 'CHRISTELE', '1', 'IMPASSE DE LA PELOUSE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '23/09/1974', '09/01/2012', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(113, '', 1, 'BODIER', 'JEAN MARC', '24', 'RUE DE LA TONNELLERIE', '49150', 'BAUGE', '', '', '', '15/06/1971', '02/06/1997', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(114, '', 1, 'BODIN', 'EMMANUEL', '29', 'RUE DU CABLE', '49330', 'CHATEAUNEUF SUR SARTHE', '', '', '', '15/06/1958', '28/02/1977', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(115, '', 2, 'BODIN', 'BRIGITTE', '130', 'RTE DE BAUNE', '49630', 'CORNE', '', '', '', '23/09/1960', '01/08/1978', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(116, '', 1, 'BODIN', 'DOMINIQUE', '130', 'RTE DE BAUNE', '49630', 'CORNE', '', '', '', '13/07/1980', '01/10/2001', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(117, '', 1, 'BONNIN', 'BERNARD', '', 'LES GAGNERIES', '49630', 'MAZE', '', '', '', '03/01/1957', '16/10/1978', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(118, '', 1, 'BOUCARD', 'PASCAL', '1', 'CHEMIN DE LA RIVIERE', '49140', 'CORZE', '', '', '', '01/05/1968', '25/04/1994', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(119, '', 1, 'BOUGET', 'FRANCK', '', 'LE PRE', '49140', 'LUE EN BAUGEOIS', '', '', '', '18/12/1969', '13/06/1994', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '999999999999'),
(120, '', 1, 'BOUGREAU', 'DOMINIQUE', '19', 'RUE DES LANGOTTIERES', '49150', 'CHEVIRE LE ROUGE', '', '', '', '07/09/1966', '11/06/1990', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(121, '', 1, 'BOUGREAU', 'HUGUES', '7', 'RUE CAMILLE V GIRARDEAU', '49140', 'CORZE', '', '', '', '22/08/1967', '02/05/1996', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(122, '', 1, 'BOUGREAU', 'XAVIER', '5', 'RUE DES BRETIGNOLLES', '49140', 'JARZE', '', '', '', '03/04/1973', '02/05/1994', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(123, '', 1, 'BOULISSIERE', 'GUILAIN', '', 'LES CLAIES', '49150', 'LE VIEIL BAUGE', '', '', '', '11/06/1957', '21/09/1981', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(124, '', 1, 'BOURDIN', 'SEBASTIEN', '15', 'CHEMIN DU SALVERT', '49140', 'FONTAINE MILON', '', '', '', '29/11/1973', '01/04/1996', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(125, '', 1, 'BOUREL', 'GREGORY', '22', 'RUE FAUTRAS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '24/02/1985', '01/06/2008', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(126, '', 1, 'BOURGERIE', 'DIMITRI', '12', 'RUE DE LA CROIX BLANCHE', '49630', 'CORNE', '', '', '', '22/07/1987', '03/09/2008', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(127, '', 2, 'BOURRIGAULT', 'LAETITIA', '4', 'BIS CHEMIN DU SALVERT', '49140', 'FONTAINE MILON', '', '', '', '20/11/1984', '05/01/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(128, '', 1, 'BOUSSEAU', 'DAVID', '2', 'RUE DU 14 JUILLET', '49320', 'BRISSAC QUINCE', '', '', '', '04/05/1968', '12/11/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(129, '', 2, 'BOZEC', 'MARIE', '17', 'RUE DES MIMOSAS', '49100', 'ANGERS', '', '', '', '03/11/1989', '11/08/2014', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.D.', 1, '999999999999'),
(130, '', 1, 'BRAHIMI', 'OMAR', '5', 'PLACE DE L''EUROPE', '49100', 'ANGERS', '', '', '', '10/12/1981', '01/04/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(131, '', 1, 'BRAZILLE', 'MICKAEL', '', 'LA FILERIE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '03/07/1981', '13/03/2000', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(132, '', 1, 'BRETON', 'ANTHONY', '3', 'SQUARE FRANCOISE DOLTO', '49000', 'ANGERS', '', '', '', '11/02/1988', '05/01/2009', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(133, '', 2, 'BRICHET PERPOIL', 'MARIE CLAIRE', '3', 'IMPASSE DES BAS DE SOI', '49630', 'MAZE', '', '', '', '07/09/1957', '01/03/1983', '', '1', 'ADM USINE', '', '', 'C.D.I.', 1, '999999999999'),
(134, '', 2, 'BROWAEYS', 'DELPHINE', '37', 'RUE DELAAGE', '49100', 'ANGERS', '', '', '', '28/11/1986', '01/08/2010', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.I.', 1, '999999999999'),
(135, '', 1, 'BRU', 'ALEXIS', '99', 'RUE FRANCOIS MAURIAC', '49800', 'TRELAZE', '', '', '', '26/02/1987', '10/08/2009', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(136, '', 2, 'BRUERE', 'LAURE', '96', 'RUE DU GROLLAY', '49630', 'MAZE', '', '', '', '25/01/1974', '19/11/2000', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(137, '', 1, 'BRUGIERE', 'ROMAIN', '4', 'ALLEE DES COUDRIERS', '49630', 'MAZE', '', '', '', '26/10/1985', '15/03/2010', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(138, '', 2, 'BRUNEAU', 'JACQUELINE', '14', 'RUE DES CHAMPS DE LA VILLE', '49630', 'CORNE', '', '', '', '23/02/1967', '03/09/1990', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(139, '', 2, 'BURILLON', 'STEPHANIE', '38', 'RUE ALBERT SCHWEITZER', '49460', 'MONTREUIL JUIGNE', '', '', '', '22/05/1976', '01/12/2014', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(140, '', 1, 'CADAS', 'KARIM', '2', 'RUE DE LA FRUITIERE', '49140', 'CORZE', '', '', '', '18/05/1985', '09/08/2010', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(141, '', 1, 'CALCO', 'MICHEL', '12', 'AVENUE ERATO', '44470', 'CARQUEFOU', '', '', '', '28/06/1967', '18/03/1996', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(142, '', 2, 'CAMUS', 'CHARLENE', '20', 'RUE GUERIN DES FONTAINES', '49250', 'FONTAINE GUERIN', '', '', '', '24/10/1981', '25/11/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(143, '', 2, 'CARO', 'LAETITIA', '6', 'IMPASSE DES PUISATIERS', '49630', 'MAZE', '', '', '', '03/03/1980', '15/07/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(144, '', 1, 'CATILLON', 'THIERRY', '10', 'RUE DES TILLEULS', '49140', 'SERMAISE', '', '', '', '30/08/1978', '08/05/2000', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(145, '', 2, 'CAUCHARD', 'FLORENCE', '52', 'RUE VICTOR HUGO', '49100', 'ANGERS', '', '', '', '15/07/1977', '02/09/2013', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(146, '', 1, 'CAYON', 'JACKY', '28', 'RTE DE LA PREVOTE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '05/06/1957', '19/06/1973', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(147, '', 1, 'CHANTEUX', 'FREDY', '9', 'SQUARE COLETTE BESSON', '49000', 'ANGERS', '', '', '', '27/05/1985', '03/12/2007', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(148, '', 2, 'CHARDON', 'CHRISTINE', '', 'LE PETIT PERRICHET', '49140', 'JARZE', '', '', '', '05/11/1968', '20/06/1994', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(149, '', 2, 'CHARLEUX', 'EVA', '22', 'RUE DU CLOS DE LA MOTTE', '49630', 'CORNE', '', '', '', '05/12/1973', '01/11/2000', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(150, '', 2, 'CHARRIER', 'CHRISTIANE', '4', 'HAMEAU DU PRESSOIR', '49112', 'PELLOUAILLES LES VIGNES', '', '', '', '28/02/1961', '11/06/1990', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(151, '', 1, 'CHATARD', 'PATRICK', '4', 'RUE DES GLYCINES', '49800', 'SARRIGNE', '', '', '', '10/02/1966', '12/01/2004', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(152, '', 2, 'CHAUSSEPIED', 'CATHERINE', '', 'LA GOUPILLERIE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '27/07/1970', '10/12/1990', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(153, '', 1, 'CHESNEAU', 'CHRISTOPHE', '', 'LA FURGEONNIERE', '49250', 'LA MENITRE', '', '', '', '24/09/1963', '09/12/2013', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(154, '', 2, 'CHEVALEYRE', 'JULIE', '', 'RUE DE CHARTRENE', '49150', 'CUON', '', '', '', '28/02/1982', '15/03/2004', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(155, '', 1, 'CHEVET', 'DOMINIQUE', '1', 'RUE DE BEL AIR', '49430', 'LES RAIRIES', '', '', '', '12/04/1957', '01/12/2011', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(156, '', 1, 'CHOQUET', 'JULIEN', '10', 'AVENUE PIERRE POIVRE', '49240', 'AVRILLE', '', '', '', '22/06/1986', '01/05/2009', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(157, '', 1, 'CLEC H', 'BENOIT', '59', 'RUE RAPHAEL LECUIT', '49320', 'BRISSAC QUINCE', '', '', '', '27/07/1972', '01/12/2014', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(158, '', 1, 'COIGNARD', 'DOMINIQUE', '10', 'CITE GUERIN DES FONTAINES', '49150', 'BAUGE', '', '', '', '23/07/1969', '22/02/1990', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(159, '', 1, 'COLOMBEAU', 'CHRISTOPHE', '', 'AU P TIT BONHEUR', '49140', 'SERMAISE', '', '', '', '09/09/1970', '05/08/1991', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(160, '', 2, 'COLOMBEAU', 'VIRGINIE', '', 'AU P TIT BONHEUR', '49140', 'SERMAISE', '', '', '', '30/10/1971', '13/06/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(161, '', 2, 'CORNUT PFAD', 'STEPHANIE', '4', 'RUE JEAN EMILE MOLLAND', '49000', 'ANGERS', '', '', '', '08/05/1977', '01/01/2010', '', '1', 'DRH', '', '', 'C.D.I.', 1, '999999999999'),
(162, '', 1, 'CORRE', 'REGIS', '10', 'RUE JOSEPH LANDELLE', '49140', 'SERMAISE', '', '', '', '29/04/1957', '14/08/1974', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(163, '', 2, 'COURSEAU', 'ANNE LAURE', '', 'LE GRAND MAGNOLET', '36330', 'ARTHON', '', '', '', '30/12/1993', '26/01/2015', '', '1', 'ASSURANCE QUALITE', '', '', 'Stagiaire Etude', 1, '999999999999'),
(164, '', 1, 'COUTARD', 'MICHEL', '11', 'CHEM DE LA BIENVENUE', '49630', 'MAZE', '', '', '', '13/01/1959', '21/09/1981', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(165, '', 2, 'COZMA', 'RAMONA', '1', 'CHEMIN DU PRE DES PLANCHES', '49630', 'MAZE', '', '', '', '30/07/1988', '01/04/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(166, '', 1, 'CROS', 'FABIEN', '13', 'AVENUE DES PLANTAGENETS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '09/07/1981', '01/06/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(167, '', 1, 'CROS', 'MAXIME', '1', 'SQUARE EUGENE GILLOT', '49250', 'BEAUFORT EN VALLEE', '', '', '', '27/07/1990', '01/10/2002', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(168, '', 1, 'DA SILVA', 'CHARLES', '', 'LA NAVETTE', '49140', 'BAUNE', '', '', '', '21/06/1994', '01/08/2014', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(169, '', 1, 'DAILLIERE', 'FRANCK', '', 'LA PERRAUDIERE', '49140', 'BAUNE', '', '', '', '09/06/1972', '03/06/1991', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(170, '', 1, 'DAL MOLIN', 'REMY', '95', 'RUE PRINCIPALE', '49630', 'MAZE', '', '', '', '09/11/1962', '16/12/2009', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(171, '', 2, 'DAVID', 'MONIQUE', '32', 'RUE DE TOULGOET', '49140', 'LUE EN BAUGEOIS', '', '', '', '28/06/1956', '26/12/1974', '', '1', 'STANDARD', '', '', 'C.D.I.', 1, '999999999999'),
(172, '', 1, 'DAVIS', 'GILLES', '16', 'RTE DE GARDAMONT', '49630', 'MAZE', '', '', '', '28/09/1974', '02/05/1996', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(173, '', 1, 'DE LA CELLE', 'JEAN', '1190', 'LA BASSE BEUNAUDIERE', '49770', 'LA MEIGNANNE', '', '', '', '03/03/1990', '01/02/2015', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(174, '', 2, 'DEBELLY', 'JEANNE', '3', 'RUE DE L''ARSENAL', '49400', 'SAUMUR', '', '', '', '23/02/1954', '01/11/2000', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(175, '', 2, 'DECLE', 'CHRISTINE', '', 'LA ROUSSINIERE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '26/06/1965', '17/12/2001', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(176, '', 2, 'DELAIRE', 'SHIRLEY', '', 'LE PATIS', '49250', 'FONTAINE GUERIN', '', '', '', '26/04/1986', '01/06/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(177, '', 2, 'DELAROQUE', 'FANNY', '1', 'RUE LAFAYETTE', '54000', 'NANCY', '', '', '', '19/04/1989', '03/12/2014', '', '1', 'MARKETING', '', '', 'Stagiaire Etude', 1, '999999999999'),
(178, '', 1, 'DELAUNAY', 'PHILIPPE', '19', 'RUE DU PRIEURE', '49140', 'BEAUVAU', '', '', '', '06/10/1973', '11/07/1997', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(179, '', 1, 'DENIS', 'SERGE', '', 'LA BLINIERE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '13/08/1958', '21/09/1981', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(180, '', 1, 'DESVIGNES', 'GREGORY', '16', 'ROUTE DE MONTGEOFFROY', '49140', 'CORNILLE LES CAVES', '', '', '', '22/07/1991', '01/10/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(181, '', 1, 'DEZECOT', 'THIERRY', '4', 'RUE DES ACACIAS', '72800', 'COULONGE', '', '', '', '24/03/1972', '01/10/2013', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(182, '', 1, 'DITACROUTE', 'SYLVAIN', '5', 'SQUARE DE BELLEVUE', '49140', 'JARZE', '', '', '', '07/04/1960', '04/02/1997', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(183, '', 1, 'DITACROUTE', 'BERNARD', '', 'CHEMIN DES VIEUX PONTS', '49630', 'CORNE', '', '', '', '19/06/1984', '07/03/2005', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(184, '', 1, 'DOBARD', 'YANNICK', '4', 'RUE DU MOULIN', '49250', 'BEAUFORT EN VALLEE', '', '', '', '20/06/1965', '27/10/1997', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(185, '', 1, 'DODIN', 'FRANCOIS', '7', 'RUE DU DR ALEXIS CARREL', '49150', 'CHEVIRE LE ROUGE', '', '', '', '26/05/1986', '01/04/2014', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(186, '', 1, 'DOHIN', 'THIERRY', '22', 'CHEMIN DE L''ORTIER', '49140', 'SOUCELLES', '', '', '', '14/03/1960', '01/11/2012', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(187, '', 1, 'DOINEAU', 'MICHEL', '2', 'RUE DES OISEAUX', '72200', 'BAZOUGE SUR LE LOIR', '', '', '', '29/01/1964', '19/01/2001', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(188, '', 2, 'DUBLE', 'AGATHE', '28', 'RUE DE LA GRAND MAISON', '49800', 'BRAIN SUR L AUTHION', '', '', '', '14/01/1966', '24/06/1991', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(189, '', 1, 'DUBOIS', 'FABIEN', '6', 'RUE BOUCHETIERE', '49140', 'FONTAINE MILON', '', '', '', '17/04/1974', '22/05/1995', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(190, '', 1, 'DUPERRAY', 'VINCENT', '', 'LE BOULEROT', '43250', 'BEAUFORT EN VALLEE', '', '', '', '07/06/1985', '01/10/2004', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(191, '', 2, 'DURIEZ', 'LAURENCE', '47', 'RUE DES NOYERS', '49000', 'ANGERS', '', '', '', '08/03/1957', '20/10/2003', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(192, '', 1, 'DUVEAU', 'STEPHANE', '10', 'RUE DE LA PAIX', '49140', 'SERMAISE', '', '', '', '25/12/1978', '06/12/1999', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(193, '', 1, 'DUVEAU', 'MICKAEL', '16', 'RUE DE LA DOUVE AUX CHEVAU', '49250', 'BEAUFORT EN VALLEE', '', '', '', '24/07/1981', '20/01/2003', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(194, '', 1, 'ECOMARD', 'DOMINIQUE', '0', 'LA FAUVELLIERE', '49160', 'SAINT PHILBERT DU PEUPLE', '', '', '', '20/09/1980', '17/05/2004', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(195, '', 1, 'ESNAU', 'DAMIEN', '82', 'RUE DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '10/10/1983', '01/10/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(196, '', 1, 'FARINEAU', 'MICHEL', '16', 'RUE DU STADE', '49250', 'BRION', '', '', '', '06/09/1956', '10/06/2001', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(197, '', 2, 'FATIA', 'JEREMY', '47', 'RUE COTE DE BELLEVUE', '49000', 'ANGERS', '', '', '', '02/06/1993', '01/12/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(198, '', 1, 'FAVREAU', 'GERARD', '14', 'SQUARE DES CALEIDES', '49000', 'ANGERS', '', '', '', '17/10/1953', '06/09/1995', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(199, '', 1, 'FERRIERE', 'YOHANN', '6', 'RUE PIERRE ET MARIE CURIE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '18/10/1988', '01/05/2009', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '999999999999'),
(200, '', 1, 'FEVRIER', 'DAVID', '', 'CHEMIN DU PONT A L''OIE', '49150', 'ST MARTIN D ARCE', '', '', '', '24/10/1973', '13/06/1994', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(201, '', 1, 'FLAO', 'PATRICK', '1', 'CHEM DU CHATAIGNIER', '49150', 'ST MARTIN D ARCE', '', '', '', '08/03/1962', '02/05/2001', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(202, '', 2, 'FLORINEDA', 'PASCAL', '36', 'RUE DES POETES', '49630', 'CORNE', '', '', '', '27/05/1962', '09/01/2012', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(203, '', 1, 'FOIN', 'PHILIPPE', '', 'LES PETITES PRIMETIERE', '49140', 'JARZE', '', '', '', '08/12/1957', '15/08/1978', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(204, '', 2, 'FONTAINE', 'JUDITH', '', 'LA ROBINIERE', '49140', 'FONTAINE MILON', '', '', '', '11/07/1966', '30/05/1994', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.I.', 1, '999999999999'),
(205, '', 1, 'FORTIER', 'THOMAS', '123', 'RUE EBLE', '49000', 'ANGERS', '', '', '', '17/06/1986', '23/06/2014', '', '1', 'CONTR?LE DE GESTION', '', '', 'C.D.D.', 1, '999999999999'),
(206, '', 1, 'FOSSE', 'WILLY', '4', 'LES HAUTES BROSSES LOTIS LES CRINIERES II LOT 2', '49150', 'ECHEMIRE', '', '', '', '06/12/1973', '01/11/2000', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(207, '', 2, 'FOURMI', 'ANNA', '62', 'ROUTE DE PARIGNE L''EVEQUE', '72560', 'CHANGE', '', '', '', '09/05/1989', '16/09/2013', '', '1', 'ENTRETIEN', '', '', 'C.D.D.', 1, '999999999999'),
(208, '', 1, 'FOURNIER', 'JOHNNY', '72', 'RUE NATIONALE', '49140', 'SEICHES SUR LE LOIR', '', '', '', '07/09/1990', '12/10/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(209, '', 2, 'FRAQUET', 'NATHALIE', '', 'LA RONCERIE', '49640', 'DAUMERAY', '', '', '', '15/01/1973', '09/04/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(210, '', 2, 'GAIGNARD', 'MARINA', '90', 'RUE SAUMUROISE RESIDENCE LA MADELEINE BAT B1', '49000', 'ANGERS', '', '', '', '13/04/1977', '01/07/2002', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(211, '', 1, 'GANDILHON', 'DAMIEN', '14', 'CHEMIN DE LA JEANSELLERIE', '49140', 'VILLEVEQUE', '', '', '', '22/09/1990', '01/06/2011', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(212, '', 2, 'GARNIER', 'AURELIE', '4', 'RUE D''ALSACE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '23/10/1983', '03/09/2007', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(213, '', 1, 'GASTINEAU', 'ALEXIS', '12', 'LOTISSEMENT BEL AIR', '49150', 'CUON', '', '', '', '11/06/1989', '10/08/2009', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(214, '', 1, 'GHEZALI', 'LAMINE', '209', 'RUE SAINT LEONARD RES SAINT LAURENT C5 4 ETG 538', '49000', 'ANGERS', '', '', '', '28/11/1978', '01/10/2005', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(215, '', 1, 'GILBERT', 'DOMINIQUE', '179', 'RUE PRINCIPALE LES ALLEES RES SAINT LAURENT C5 4 ETG 538', '49630', 'MAZE', '', '', '', '02/01/1957', '04/07/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(216, '', 1, 'GIRARDEAU', 'VINCENT', '', 'TARTIFUME', '49250', 'BEAUFORT EN VALLEE', '', '', '', '16/06/1976', '02/06/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(217, '', 1, 'GIRAUD', 'ANTONY', '18', 'RUE DES MALPIQUES LE CLOS BAUJON', '49350', 'GENNES', '', '', '', '19/09/1988', '01/04/2012', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(218, '', 1, 'GODARD', 'FRANCK', '10', 'IMPASSE LOUIS CAMUS', '49140', 'FONTAINE MILON', '', '', '', '23/12/1984', '14/10/2003', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(219, '', 1, 'GODARD', 'GREGORY', '7', 'IMP DES PUISATIERS', '49630', 'MAZE', '', '', '', '10/02/1981', '30/05/1994', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(220, '', 2, 'GODARD', 'SANDRA', '7', 'IMPASSE DES PUISATIERS', '49630', 'MAZE', '', '', '', '14/02/1974', '20/06/2005', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(221, '', 1, 'GODET', 'VALENTIN', '1', 'RUE SAINT ETIENNE', '49100', 'ANGERS', '', '', '', '28/11/1989', '02/11/2012', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(222, '', 2, 'GOIZET', 'NADEGE', '8', 'AV DES CHAMPS DE LA VILLE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '23/03/1976', '01/08/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(223, '', 1, 'GOUBARD', 'PATRICK', '685', 'ROUTE DE NOYAU LES CAVES', '49140', 'BAUNE', '', '', '', '28/11/1958', '06/06/1990', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(224, '', 2, 'GOUBARD', 'ANDREE', '685', 'ROUTE DE NOYAU LES CAVES', '49140', 'BAUNE', '', '', '', '27/11/1955', '08/04/1991', '', '1', 'MAGASIN', '', '', 'C.D.I.', 1, '999999999999'),
(225, '', 2, 'GOUJON', 'CHRISTINE', '16', 'RUE PROUST', '49100', 'ANGERS', '', '', '', '21/02/1962', '01/09/2009', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(226, '', 2, 'GRONFOT', 'VIRGINIE', '8', 'RUE DE LA CADORIERE', '49150', 'CHEVIRE LE ROUGE', '', '', '', '09/12/1983', '01/11/2009', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(227, '', 1, 'GROSBOIS', 'MAXIME', '11', 'RUE PRINCIPALE', '49250', 'GEE', '', '', '', '20/06/1958', '01/03/1977', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(228, '', 1, 'GUEROUX', 'LAURENT', '4', 'CHEMIN DU PASSEUR', '49130', 'SAINTE GEMMES SUR LOIRE', '', '', '', '08/01/1980', '05/01/2015', '', '1', 'ENTRETIEN', '', '', 'C.D.D.', 1, '999999999999'),
(229, '', 1, 'GUERROUDJ', 'MERZAK', '117', 'RUE FRICOTELLE', '49400', 'SAUMUR', '', '', '', '30/03/1977', '05/01/2015', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(230, '', 1, 'GUICHARD', 'ALAIN', '61', 'RTE DE FAYET', '49630', 'MAZE', '', '', '', '29/12/1958', '03/03/1980', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(231, '', 1, 'GUIET', 'FREDERIC', '3', 'RUE BARBARA STERLING', '49124', 'SAINT BARTHELEMY D ANJOU', '', '', '', '04/02/1971', '13/02/1996', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(232, '', 2, 'GUIHO', 'MELODY', '10', 'SQUARE MAURICE ASSELIN', '49480', 'SAINT SYLVAIN D ANJOU', '', '', '', '31/12/1989', '14/03/2013', '', '1', 'DRH', '', '', 'C.D.I.', 1, '999999999999'),
(233, '', 1, 'GUILLET', 'THIBAULT', '121', 'TER AV DU GENERAL PATTON', '49000', 'ANGERS', '', '', '', '22/04/1984', '04/12/2006', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(234, '', 2, 'HAMARD', 'JOSETTE', '', 'LE MONTIL', '49250', 'LA MENITRE', '', '', '', '21/12/1958', '29/04/1991', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(235, '', 1, 'HAMELIN', 'JASON', '', 'LIEU DIT L HUMAUCHAIS', '49140', 'CORZE', '', '', '', '07/01/1992', '01/10/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(236, '', 1, 'HAMONIER', 'OLIVIER', '3', 'RUE DES ROULIERES', '49140', 'LA CHAPELLE ST LAUD', '', '', '', '26/03/1971', '05/04/1991', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '999999999999'),
(237, '', 1, 'HERMITEAU', 'SIMON', '9', 'PLACE DE L AN 2000', '49140', 'BAUNE', '', '', '', '21/11/1992', '01/01/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(238, '', 2, 'HOFFMAN', 'ALIX', '7', 'RUE DE LA LIBERTE', '91600', 'SAVIGNY SUR ORGE', '', '', '', '13/12/1993', '02/02/2015', '', '1', 'DIRECTION USINE', '', '', 'Stagiaire Etude', 1, '999999999999'),
(239, '', 1, 'HONORE', 'EMILE', '6', 'IMPASSE DE LA PICOTERIE', '49070', 'BEAUCOUZE', '', '', '', '12/09/1956', '01/09/1984', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(240, '', 2, 'HURSON BANGOURA', 'NICOLE', '30', 'RUE DE LA CHAPELLE', '49150', 'ECHEMIRE', '', '', '', '26/04/1959', '19/02/2001', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(241, '', 1, 'HY', 'DIMITRI', '28', 'RUE DES HIRONDELLES', '49250', 'BEAUFORT EN VALLEE', '', '', '', '09/03/1985', '07/03/2005', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(242, '', 1, 'JARRY', 'JEAN MARC', '112', 'RUE ROYALE', '49630', 'CORNE', '', '', '', '07/07/1964', '03/01/2005', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(243, '', 1, 'JAZIRI', ' MAHDI', '26', 'RUE DU MARECHAL LECLERC', '49240', 'AVRILLE', '', '', '', '04/01/1973', '07/02/2011', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(244, '', 1, 'JEFFRARD', 'ROBERT', '19', 'RUE DE LA CROIX DE BOIS', '49800', 'BRAIN SUR L AUTHION', '', '', '', '12/03/1964', '01/07/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(245, '', 1, 'JOBIN', 'OLIVIER', '27', 'RUE PRINCIPALE', '49490', 'AUVERSE', '', '', '', '01/09/1973', '01/01/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(246, '', 2, 'JOLY', 'NADIA', '', 'LA CHARTRIE', '49160', 'ST PHILBERT DU PEUPLE', '', '', '', '28/06/1963', '01/05/2003', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(247, '', 1, 'JOSSELIN', 'ANTHONY', '38', 'RUE LEON BLUM', '49800', 'TRELAZE', '', '', '', '30/10/1987', '02/04/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(248, '', 1, 'JOUIN', 'JEAN PHILIPPE', '20', 'RUE GUERIN DES FONTAINES', '49150', 'BAUGE', '', '', '', '29/11/1971', '06/11/2000', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(249, '', 1, 'JOUIN', 'BRUNO', '88', 'RTE DE FAYET', '49630', 'MAZE', '', '', '', '17/07/1968', '08/04/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(250, '', 1, 'JOUSSET', 'JACQUES', '16', 'CHEMIN DE LA PICAUDIERE', '49630', 'MAZE', '', '', '', '18/01/1963', '17/10/1980', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(251, '', 1, 'JOUSSET', 'SEBASTIEN', '', 'LIEU DIT CESNE', '49140', 'BAUNE', '', '', '', '17/02/1989', '03/08/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(252, '', 1, 'JUBAULT', 'DAMIEN', '13', 'RUE DU TERTRE', '49250', 'BRION', '', '', '', '16/11/1979', '02/06/2003', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(253, '', 2, 'JURET', 'LAURENCE', '4', 'RUE RACINE', '49500', 'SEGRE', '', '', '', '04/07/1970', '03/05/2004', '', '1', 'DIRECTION USINE', '', '', 'C.D.I.', 1, '999999999999'),
(254, '', 1, 'KEBANGA', 'OUMAR IBRAHIM', '99', 'AVENUE DU GENERAL PATTON', '49000', 'ANGERS', '', '', '', '08/08/1976', '23/10/2006', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(255, '', 1, 'KHOUMSI', 'MUSTAPHA', '6', 'RUE EDGAR DEGAS, LES VILLAS DU PARC', '49800', 'BRAIN SUR L AUTHION', '', '', '', '12/11/1974', '12/01/2004', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(256, '', 1, 'LAIGLE', 'DAMIEN', '', 'LA BELLANGERIE', '49430', 'DURTAL', '', '', '', '05/07/1977', '01/10/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(257, '', 2, 'LAMBERT', 'NATHALIE', '13', 'RUE DU TERTRE', '49250', 'BRION', '', '', '', '07/04/1981', '04/10/2004', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(258, '', 1, 'LANGINIER', 'BRUNO', '10', 'RUE DE LA PISTOLE', '49150', 'LE VIEIL BAUGE', '', '', '', '08/07/1962', '01/03/1986', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(259, '', 1, 'LASSAY', 'ANTHONY', '3', 'RUE PIERRE CHANTELOUP', '49140', 'BAUNE', '', '', '', '23/03/1988', '05/01/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(260, '', 2, 'LE CALVEZ', 'AMBRE', '30', 'RUE DE LA VIEILLE LEVEE', '49800', 'LA DAGUENIERE', '', '', '', '20/02/1984', '01/09/2011', '', '1', 'DRH', '', '', 'C.D.I.', 1, '999999999999'),
(261, '', 1, 'LE CARDIEC', 'OLIVIER', '6', 'IMPASSE DU CLOITRE', '49630', 'MAZE', '', '', '', '27/12/1961', '25/06/1990', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(262, '', 2, 'LE MENN', 'MARINE', '4', 'RUE GUSTAVE MAREAU', '49000', 'ANGERS', '', '', '', '15/10/1988', '05/12/2012', '', '1', 'TECHNIQUE', '', '', 'C.D.I.', 1, '999999999999'),
(263, '', 1, 'LE PETITCORPS', 'LAURENT', '5', 'RUE DES ERABLES', '49490', 'AUVERSE', '', '', '', '03/10/1969', '01/11/1991', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(264, '', 2, 'LEBLOIS', 'MAGALI', '79', 'ROUTE DE TOURS', '49490', 'NOYANT', '', '', '', '24/01/1976', '27/11/1997', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(265, '', 2, 'LEBOUC', 'CHRISTELLE', '12', 'ALLEE DES BLEUETS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '23/01/1971', '01/02/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(266, '', 1, 'LEBOUCHER', 'JOHN', '1', 'RUE D''ANJOU', '49250', 'SAINT MATHURIN', '', '', '', '16/06/1982', '14/06/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(267, '', 1, 'LECONTE', 'JEAN LUC', '14', 'RUE NATIONALE', '49140', 'SEICHES SUR LE LOIR', '', '', '', '18/08/1967', '01/07/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(268, '', 1, 'LECROISEY', 'LIONEL', '0', 'LA LANDE PLATE', '49160', 'JUMELLES', '', '', '', '13/11/1959', '01/01/1987', '', '1', 'TECHNIQUE', '', '', 'C.D.I.', 1, '999999999999'),
(269, '', 1, 'LEGENDRE', 'XAVIER', '47', 'RUE JULIEN DAILLERE', '49140', 'BAUNE', '', '', '', '14/12/1958', '16/05/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(270, '', 2, 'LEGENDRE', 'ANITA', '10', 'RUE DES NOISETIERS', '49140', 'BAUNE', '', '', '', '26/01/1971', '07/04/1975', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(271, '', 2, 'LEGENDRE', 'PATRICIA', '', 'LA CROIX VERTE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '18/12/1974', '06/11/2000', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.I.', 1, '999999999999'),
(272, '', 2, 'LEGENDRE', 'NATHALIE', '4', 'ALLEE DES COUDRIERS', '49630', 'MAZE', '', '', '', '03/06/1962', '25/04/1994', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(273, '', 2, 'LELIEVRE', 'BENJAMIN', '69', 'RUE DU PRE PIGEON', '49100', 'ANGERS', '', '', '', '11/09/1991', '01/11/2013', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(274, '', 1, 'LEMOINE', 'GREGORY', '11', 'IMPASSE DES FILETOUPIERS', '49630', 'MAZE', '', '', '', '05/12/1984', '05/01/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(275, '', 1, 'LENOIR', 'PATRICE', '14', 'RUE DES MOULINS', '49800', 'SARRIGNE', '', '', '', '22/02/1957', '23/10/2006', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(276, '', 2, 'LENON', 'EMILIE', '46', 'RUE J.B FOURCAULT', '49800', 'TRELAZE', '', '', '', '29/10/1987', '26/05/2014', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.D.', 1, '999999999999'),
(277, '', 1, 'LEPAGE', 'REMI', '4', 'RTE DES MARZELLES, LA ROCHE FOULQUES', '49140', 'SOUCELLES', '', '', '', '20/01/1961', '01/04/1982', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(278, '', 1, 'LEROUX', 'MICHEL', '11', 'ROUTE DES ROSIERS', '49250', 'ST GEORGES DU BOIS', '', '', '', '13/06/1968', '31/05/1991', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(279, '', 2, 'LESELLIER', 'JULIE', '4', 'RUE SAINT JACQUES', '49250', 'BEAUFORT EN VALLEE', '', '', '', '17/07/1994', '08/09/2014', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.D. (Formation)', 1, '999999999999'),
(280, '', 1, 'LESSIAU', 'JEAN MARC', '7', 'RUE DES ACACIAS', '49140', 'BAUNE', '', '', '', '07/01/1969', '05/06/2000', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(281, '', 1, 'LHOPITEAU', 'RAPHAEL', '12', 'RUE DES CHATAIGNIERS', '49160', 'BLOU', '', '', '', '12/04/1979', '10/08/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(282, '', 1, 'LICOIS', 'JEAN LOUIS', '0', 'LES TROIS ORMEAUX', '49250', 'BRION', '', '', '', '23/05/1987', '05/10/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(283, '', 2, 'LICOIS', 'CELINE', '17', 'PLACE JEANNE DE LAVAL', '49250', 'BEAUFORT EN VALLEE', '', '', '', '17/09/1981', '01/06/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(284, '', 2, 'LICOIS', 'DELPHINE', '', 'ROUTE DE GEE', '49250', 'FONTAINE GUERIN', '', '', '', '17/08/1961', '05/10/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(285, '', 1, 'LICOIS', 'FREDERIC', '', 'ROUTE DE GEE', '49250', 'FONTAINE GUERIN', '', '', '', '29/08/1984', '01/10/2011', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(286, '', 1, 'LOPEZ', 'RENAUD', '16', 'RUE DE LA REUX', '49124', 'SAINT BARTHELEMY D ANJOU', '', '', '', '27/06/1989', '07/02/2011', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(287, '', 1, 'LORET', 'JIMMY', '3', 'ROUTE DES PEUPLIERS', '49490', 'LASSE', '', '', '', '18/10/1980', '01/10/2011', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(288, '', 2, 'LORET', 'BRIGITTE', '40', 'RUE DE LA PETITE PORTE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '24/08/1980', '19/02/2001', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(289, '', 1, 'LORET', 'TEDDY', '40', 'RUE DE LA PETITE PORTE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '05/09/1989', '01/10/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(290, '', 1, 'MAHOT', 'PATRICK', '9', 'RUE DES ACCACIAS', '49140', 'BAUNE', '', '', '', '27/05/1960', '15/05/1979', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(291, '', 1, 'MAILLET', 'DANIEL', '', 'LE PIGEON BLANC', '72800', 'LE LUDE', '', '', '', '21/01/1966', '06/03/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(292, '', 1, 'MAINGOT', 'ARSENE', '7', 'RUE DES DEUX DOUVES', '49370', 'BECON LES GRANITS', '', '', '', '02/03/1957', '07/02/2011', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(293, '', 2, 'MARAIS', 'MARIE LUCE', '17', 'RUE DES ACACIAS', '49140', 'BAUNE', '', '', '', '30/01/1963', '04/07/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(294, '', 1, 'MARCHAND', 'JEAN-CHRISTOPHE', '22', 'RUE ROUGET DE L''ISLE', '49130', 'PONT DE CE', '', '', '', '17/08/1975', '04/01/2005', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(295, '', 1, 'MARCHAND', 'SEBASTIEN', '11', 'RUE DU PILIER CARRE', '49800', 'ANDARD', '', '', '', '02/05/1986', '05/07/2010', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(296, '', 1, 'MARTIN', 'LAURENT', '20', 'CHE DE SALVERT', '49140', 'FONTAINE MILON', '', '', '', '09/12/1971', '13/10/1997', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(297, '', 1, 'MASSE', 'OLIVIER', '3', 'IMP DES PETUNIAS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '10/01/1981', '01/10/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(298, '', 2, 'MASSE', 'SYLVIE', '3', 'IMP DES PETUNIAS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '10/06/1973', '07/10/1996', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(299, '', 2, 'MASSIP', 'AUDREY', '8', 'IMPASSE SAINT CHARLES', '49100', 'ANGERS', '', '', '', '05/08/1984', '01/12/2008', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.I.', 1, '999999999999'),
(300, '', 2, 'MAUXION', 'ANITA', '', 'RUE DE LA PERRAUDIERE', '49140', 'LUE EN BAUGEOIS', '', '', '', '24/07/1968', '15/01/2001', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(301, '', 1, 'MEFFRAY', 'FRANCK', '9', 'RUE DE LA FOSSE AU CURE', '49140', 'MARCE', '', '', '', '01/08/1973', '26/04/2011', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(302, '', 1, 'MENARD', 'CLAUDE', '11', 'IMPASSE LOUIS CAMUS', '49140', 'FONTAINE MILON', '', '', '', '12/04/1959', '16/06/1997', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(303, '', 1, 'MERCIER', 'JACKY', '2', 'PLACE DES ACACIAS', '49150', 'LE VIEIL BAUGE', '', '', '', '29/10/1958', '01/03/1986', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.I.', 1, '999999999999'),
(304, '', 1, 'MILCENT', 'FREDERIC', '', 'LES NAVRANS', '72200', 'LA FLECHE', '', '', '', '20/11/1969', '01/11/2012', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(305, '', 1, 'MILOCHE', 'SYLVAIN', '3', 'RUE DE LA CLE DES CHAMPS', '49390', 'MOULIHERNE', '', '', '', '27/06/1973', '05/01/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(306, '', 1, 'MILOUDI', 'SAMIR', '8', 'RUE MENELICK', '49000', 'ANGERS', '', '', '', '25/10/1982', '12/10/2010', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(307, '', 1, 'MOREAU', 'PHILIPPE', '20', 'CITE DES OEILLETS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '18/06/1966', '17/02/1997', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(308, '', 1, 'MORIN', 'ALAIN', '56', 'CHEMIN DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '05/07/1959', '01/08/1977', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(309, '', 1, 'MORTIER', 'JEAN YVES', '', 'PARC RTE DE LA FLECHE', '49150', 'ST MARTIN D ARCE', '', '', '', '09/12/1959', '26/04/1976', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(310, '', 1, 'MOUNIER', 'MATTHIEU', '2', 'RUE DE BEAUVAL', '49000', 'ANGERS', '', '', '', '04/07/1977', '01/08/2007', '', '1', 'CONTR?LE DE GESTION', '', '', 'C.D.I.', 1, '999999999999'),
(311, '', 2, 'NEVOUX', 'ISABELLE', '', 'LE BOIS JARRY', '49800', 'SARRIGNE', '', '', '', '28/01/1967', '14/06/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(312, '', 2, 'ONILLON', 'VANESSA', '7', 'RUE PIERRE ROISSE', '49250', 'GEE', '', '', '', '15/06/1984', '01/07/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(313, '', 1, 'OTMANE CHERIF', 'MOHAMED LAMINE', '1', 'BOULEVARD SCHUMAN', '49100', 'ANGERS', '', '', '', '02/03/1977', '01/03/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(314, '', 1, 'PALLIER', 'YANN', '', 'LE FOURNEAU', '49140', 'LA CHAPELLE SAINT LAUD', '', '', '', '21/08/1984', '01/04/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(315, '', 2, 'PAPILLON', 'AUDREY', '', 'LA BRISE', '49250', 'BRION', '', '', '', '17/03/1986', '01/12/2008', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(316, '', 1, 'PAPIN', 'BENJAMIN', '', 'LA RUE CREUSE', '49250', 'FONTAINE GUERIN', '', '', '', '13/04/1990', '14/06/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(317, '', 1, 'PASSEBON', 'AURELIEN', '19', 'CHEMIN DES HUAUX', '49350', 'ST GEORGES DES SEPT VOIES', '', '', '', '11/07/1984', '09/01/2012', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(318, '', 2, 'PASTEUR', 'MURIEL', '', 'LA HAUTE FOLIE', '49150', 'PONTIGNE', '', '', '', '29/11/1971', '08/10/1990', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(319, '', 1, 'PAUMIER', 'PASCAL', '206', 'RUE PRINCIPALE', '49250', 'MAZE', '', '', '', '02/09/1961', '02/04/1994', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(320, '', 1, 'PAVIOT', 'WILLY', '15', 'RUE TRAVERSIERE', '49160', 'LONGUE JUMELLES', '', '', '', '12/12/1981', '17/08/2009', '', '1', 'MAGASIN', '', '', 'C.D.I.', 1, '999999999999'),
(321, '', 1, 'PAVIOT', 'MICKAEL', '', 'LES TROIS ORMEAUX', '49250', 'BRION', '', '', '', '24/12/1986', '04/09/2006', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(322, '', 2, 'PAVIOT', 'AURELIE', '15', 'RUE TRAVERSIERE', '49160', 'LONGUE JUMELLES', '', '', '', '18/01/1985', '01/10/2011', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(323, '', 2, 'PAYMAL', 'SOPHIE', '', 'CHEMIN DE VAUX, LE PRE', '49140', 'LUE EN BAUGEOIS', '', '', '', '14/02/1970', '01/11/2000', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(324, '', 2, 'PERDRIAU', 'VALERIE', '11', 'RUE DES PETITES BEAUSSES', '49630', 'MAZE', '', '', '', '10/07/1971', '05/06/1990', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(325, '', 1, 'PERDRIX', 'LAWRENCE', '1', 'SQUARE DU BREUIL', '49150', 'ECHEMIRE', '', '', '', '26/02/1966', '18/09/2006', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(326, '', 1, 'PERPOIL', 'JEAN MARIE', '8', 'RUE DES ROSES', '49140', 'BAUNE', '', '', '', '14/09/1956', '01/07/1974', '', '1', 'MAGASIN', '', '', 'C.D.I.', 1, '999999999999'),
(327, '', 1, 'PICOULEAU', 'STEPHANE', '63', 'NOTRE DAME DU LAC', '49000', 'ANGERS', '', '', '', '08/11/1971', '01/04/2003', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(328, '', 1, 'PINSON', 'PHILIPPE', '', 'LA FOURCELLE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '13/12/1963', '01/11/2011', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(329, '', 1, 'PIOTET', 'GERALD', '', 'RUE DE LA FONTAINE', '49140', 'FONTAINE MILON', '', '', '', '09/09/1969', '01/11/2000', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(330, '', 1, 'PITON', 'BRUNO', '', 'RUE DAVID D ANGERS', '49140', 'FONTAINE MILON', '', '', '', '13/12/1974', '02/05/1996', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(331, '', 2, 'PIVERT', 'MARTINE', '35', 'CHEMIN DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '29/04/1959', '01/08/1978', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.I.', 1, '999999999999'),
(332, '', 1, 'PLACAIS', 'ARNAUD', '98', 'RUE DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '17/11/1981', '28/06/2010', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(333, '', 1, 'PLECIS', 'JOEL', '54', 'RUE DU MARECH. LECLERC', '49250', 'BEAUFORT EN VALLEE', '', '', '', '04/05/1954', '03/02/1978', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(334, '', 1, 'POCHARD', 'STEPHANE', '16', 'RUE GRAND MAISON', '49800', 'BRAIN SUR L AUTHION', '', '', '', '24/09/1961', '01/08/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(335, '', 1, 'POIRIER', 'STEPHANE', '29', 'ROUTE DU CH?TEAU, LE CLOS', '49630', 'MAZE', '', '', '', '20/12/1971', '11/12/2000', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(336, '', 1, 'POMMIER', 'XAVIER', '10', 'RUE DE L EGLISE', '49150', 'LE VIEIL BAUGE', '', '', '', '27/01/1980', '01/07/2011', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999');
INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`, `solde_salarie`) VALUES
(337, '', 1, 'PONS', 'FABIEN', '8', 'RUE EDOUARD BRANLY', '49800', 'TRELAZE', '', '', '', '01/08/1982', '01/10/2013', '', '1', 'TECHNIQUE', '', '', 'C.D.I.', 1, '999999999999'),
(338, '', 2, 'POULALION', 'MARIE ODILE', '44', 'RTE DE BAUNE', '49630', 'CORNE', '', '', '', '03/10/1961', '16/05/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(339, '', 1, 'POUPIN', 'MICHEL', '5', 'RUE DES RICHAUDETS', '49150', 'CHEVIRE LE ROUGE', '', '', '', '01/07/1960', '28/06/1976', '', '1', '1ER ENCADR. AFFINAGE', '', '', 'C.D.I.', 1, '999999999999'),
(340, '', 2, 'PROTIN', 'HELENE', '256', 'RUE LOUIS BLANC', '49100', 'ANGERS', '', '', '', '13/07/1979', '21/10/2002', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(341, '', 1, 'QUETTIER', 'NATHANAEL', '3', 'BOULEVARD YVONNE POIREL', '49000', 'ANGERS', '', '', '', '20/10/1988', '27/08/2011', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(342, '', 1, 'RABEL', 'ALAIN', '1', 'CLOS DE L EPINE L OREE DU BOIS', '49140', 'CORNILLE LES CAVES', '', '', '', '26/02/1956', '05/12/1999', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(343, '', 2, 'RABOUIN', 'CECILE', '10', 'CHEM DE LA BATAILLE', '49150', 'LE VIEIL BAUGE', '', '', '', '05/02/1972', '14/04/2003', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(344, '', 1, 'RAIMBAULT', 'YVES', '1', 'PL POL LE TELLIER', '49250', 'BEAUFORT EN VALLEE', '', '', '', '28/10/1969', '12/06/2000', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(345, '', 2, 'RAOUI', 'BOUCHRA', '76', 'RUE DES ARTILLEURS', '49100', 'ANGERS', '', '', '', '01/06/1979', '01/09/2012', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(346, '', 2, 'RAPICAULT', 'JOCELYNE', '54', 'RTE DE BAUNE', '49630', 'CORNE', '', '', '', '07/09/1962', '04/07/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(347, '', 2, 'RATEAU', 'MATHILDE', '12', 'RUE GASTON JOGUET', '49150', 'CHEVIRE LE ROUGE', '', '', '', '08/03/1988', '14/06/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(348, '', 1, 'RATEAU', 'DOMINIQUE', '8', 'RUE DES VENDELLIERES', '49250', 'LA MENITRE', '', '', '', '15/07/1957', '01/10/1978', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '999999999999'),
(349, '', 2, 'REDCENT', 'WENDY', '', 'L HERMENOTIERE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '09/07/1981', '01/10/2001', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(350, '', 1, 'REINE', 'JEAN PIERRE', '55', 'ROUTE DE SEICHES', '49630', 'MAZE', '', '', '', '21/07/1960', '01/06/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(351, '', 2, 'RENAULT', 'ISABELLE', '14', 'RUE RENE GAUDICHEAU', '49700', 'DOUE LA FONTAINE', '', '', '', '03/10/1972', '02/10/2006', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(352, '', 1, 'REPUSSARD', 'ALAIN', '64', 'RUE GEORGES CLEMENCEAU', '49150', 'BAUGE', '', '', '', '02/04/1955', '21/06/2004', '', '1', 'FAB D2', '', '', 'C.D.I.', 1, '999999999999'),
(353, '', 2, 'REZARD', 'AMELIE', '75', 'RUE DE PRE PIGEON', '49000', 'ANGERS', '', '', '', '24/11/1981', '03/07/2006', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(354, '', 1, 'RICHARD', 'JULIEN', '1', 'ROUTE DU MILIEU', '49630', 'MAZE', '', '', '', '15/01/1989', '06/09/2010', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(355, '', 1, 'RIVIERE', 'STEPHANIE', '', 'CHEMIN DU RANCAN', '49150', 'BAUGE', '', '', '', '13/12/1987', '01/03/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(356, '', 1, 'ROCHE', 'CHRISTOPHE', '8', 'RUE DES NOISETIERS', '49140', 'BAUNE', '', '', '', '06/07/1968', '26/06/1989', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(357, '', 1, 'ROCHER', 'YANNICK', '56', 'RUE DE MILNGAVIE', '49150', 'BAUGE', '', '', '', '04/01/1959', '01/02/2005', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(358, '', 2, 'RODRIGUES', 'FERNANDO', '3', 'RUE GUSTAVE FLAUBERT', '49100', 'ANGERS', '', '', '', '06/07/1972', '05/01/2009', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(359, '', 1, 'RONCIER', 'PATRICE', '1', 'LOTISSEMENT DU ROCHER', '49140', 'CHAUMONT D ANJOU', '', '', '', '29/05/1968', '02/10/2000', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(360, '', 2, 'ROUE', 'SOPHIE', '', 'LES BARBELLIERES', '49140', 'JARZE', '', '', '', '05/11/1989', '08/11/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(361, '', 1, 'ROUILLARD', 'THIERRY', '4', 'RTE DEPARTEMENTALE 347', '49630', 'CORNE', '', '', '', '01/05/1961', '05/10/1981', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(362, '', 2, 'ROUSSEAU', 'EMILIE', '7', 'CHEMIN DE MONTEURAULT', '49630', 'MAZE', '', '', '', '19/02/1982', '01/03/2008', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(363, '', 1, 'ROUSSEL', 'REGIS', '6', 'RUE DE BRETIGNE, LOT DES HAUTS DE BRETIGNE', '49140', 'VILLEVEQUE', '', '', '', '20/12/1973', '01/10/2013', '', '1', 'TECHNIQUE', '', '', 'C.D.I.', 1, '999999999999'),
(364, '', 1, 'ROZAT', 'ERIC', '13', 'RUE DU PETIT PARIS', '49630', 'MAZE', '', '', '', '09/10/1961', '13/01/2003', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(365, '', 1, 'SALMON', 'CHRISTOPHE', '180', 'BIS RUE PRINCIPALE', '49630', 'MAZE', '', '', '', '16/06/1970', '05/08/1991', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(366, '', 1, 'SCHILLINGER', 'FREDERIC', '1', 'RUE DES MARRONNIERS', '49290', 'CHAUDEFONDS SUR LAYON', '', '', '', '04/04/1967', '03/06/2013', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(367, '', 1, 'SEBILLE', 'GAETAN', '4', 'RUE DE CHANDELAIS', '49150', 'BOCE', '', '', '', '07/10/1970', '16/06/1994', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '999999999999'),
(368, '', 1, 'SENO', 'JEAN PIERRE', '', 'LA HOUSSIERE', '49390', 'MOULIHERNE', '', '', '', '28/05/1960', '01/11/2000', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(369, '', 1, 'SOURDEAU', 'GILLES', '', 'L OUCHE AU BLE', '49150', 'ST MARTIN D ARCE', '', '', '', '04/06/1964', '02/05/1996', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(370, '', 1, 'TALASZKA', 'ANTOINE', '7', 'RUE DES VOLONTAIRES', '49130', 'LES PONTS DE CE', '', '', '', '29/11/1995', '22/09/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.D. (Formation)', 1, '999999999999'),
(371, '', 1, 'THEVENET', 'CHRISTOPHE', '33', 'RUE DES CHARMES', '49800', 'BRAIN SUR L AUTHION', '', '', '', '28/07/1966', '02/10/1989', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(372, '', 2, 'THIBAULT', 'RACHEL', '10', 'RUE PIERRE BROSSOLETTE', '49000', 'ANGERS', '', '', '', '19/02/1991', '01/08/2014', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.D.', 1, '999999999999'),
(373, '', 1, 'THIBAULT', 'DIDIER', '2', 'RUE DES LOGES', '49310', 'TANCOIGNE', '', '', '', '05/12/1971', '07/02/2011', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(374, '', 2, 'THIBERGE', 'MARIE CLAUDE', '16', 'RUE DES HAUTS CHAMPS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '28/08/1964', '01/10/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(375, '', 2, 'THOMAS', 'NELLY', '40', 'RUE DE LA CROIX BOIS', '49800', 'BRAIN SUR L AUTHION', '', '', '', '14/06/1967', '08/03/1994', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(376, '', 1, 'THOMAS', 'EMMANUEL', '40', 'RUE DE LA CROIX DE BOIS', '49800', 'BRAIN SUR L AUTHION', '', '', '', '25/02/1971', '10/12/1990', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '999999999999'),
(377, '', 1, 'THOMPSON', 'OTHON', '87', 'BAT E RUE DE BANCHAIS', '49100', 'ANGERS', '', '', '', '10/11/1973', '01/10/2005', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '999999999999'),
(378, '', 2, 'THUAL', 'LUCIE', '46', 'RUE JEAN BAPTISTE FOURCAUL', '49800', 'TRELAZE', '', '', '', '20/05/1989', '21/01/2014', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '999999999999'),
(379, '', 1, 'TIRLET', 'CHRISTOPHER', '', 'LE VERDELET', '49390', 'MOULIHERNE', '', '', '', '21/07/1987', '01/04/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(380, '', 1, 'TRANCHANT', 'DOMINIQUE', '', 'CHEMIN DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '03/11/1963', '17/09/1981', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(381, '', 1, 'TRANCHANT', 'ERIC', '5', 'SQUARE HENRI BECQUEREL', '49800', 'TRELAZE', '', '', '', '19/05/1967', '01/06/1990', '', '1', 'FAB D2', '', '', 'C.D.I.', 1, '999999999999'),
(382, '', 2, 'TROST', 'NADIA', '11', 'ROUTE D''ANGERS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '25/12/1983', '01/10/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(383, '', 1, 'TROST', 'STEVEN', '191', 'RUE ELISEE RECLUS', '49800', 'TRELAZE', '', '', '', '28/10/1987', '16/08/2010', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(384, '', 1, 'TROST', 'ANTHONY', '191', 'RUE ELISEE RECLUS', '49800', 'TRELAZE', '', '', '', '16/01/1968', '01/06/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(385, '', 2, 'TURPIN', 'CHRISTINE', '21', 'ROUTE DE LA ROCHE', '49630', 'MAZE', '', '', '', '01/08/1960', '02/03/1977', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(386, '', 1, 'VATTAT', 'CHRISTOPHE', '6', 'RUE SAINT PIERRE', '49140', 'VILLEVEQUE', '', '', '', '27/04/1967', '22/04/1991', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(387, '', 1, 'VENERIA', 'JEAN MICHEL', '36', 'RTE DE LA ROCHE', '49630', 'MAZE', '', '', '', '22/01/1972', '01/01/1998', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '999999999999'),
(388, '', 2, 'VERBELEN', 'NATHALIE', '', 'POUILLE', '49630', 'MAZE', '', '', '', '26/08/1972', '04/11/1996', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(389, '', 1, 'VERGER', 'BRUNO', '22', 'ALLEE JACQUES BREL', '72800', 'LE LUDE', '', '', '', '14/01/1969', '01/12/2013', '', '1', 'MAGASIN', '', '', 'C.D.I.', 1, '999999999999'),
(390, '', 1, 'VERGNAUD', 'PHILIPPE', '12', 'SQUARE DE PROVENCE', '49140', 'SEICHES SUR LE LOIR', '', '', '', '16/10/1972', '01/02/2011', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(391, '', 1, 'VINCENT', 'LAURENT', '9', 'ROUTE DE LA COUTURE', '49630', 'MAZE', '', '', '', '04/04/1968', '18/08/2003', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '999999999999'),
(392, '', 1, 'VINCENT', 'THIERRY', '1', 'CLOS DE LA PERCHARDIERE', '49320', 'BLAISON GOHIER', '', '', '', '29/03/1961', '21/05/2001', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(393, '', 1, 'VINEAU', 'OLIVIER', '17', 'RUE HECTOR BERLIOZ', '49124', 'LE PLESSIS GRAMMOIRE', '', '', '', '28/10/1973', '02/05/1996', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '999999999999'),
(394, '', 1, 'VOLUETTE', 'GILLES', '', 'LES BROSSAIS', '49150', 'ECHEMIRE', '', '', '', '13/06/1974', '04/02/1997', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '999999999999'),
(395, '', 1, 'VOLUETTE', 'JOEL', '11', 'RUE DES LANGOTTIERES', '49150', 'CHEVIRE LE ROUGE', '', '', '', '25/02/1965', '16/07/1981', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '999999999999'),
(396, '', 1, 'Komara', 'Abdoulay', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '9999999999999999'),
(397, '', 1, 'Dansoko', 'Mohamed', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '9999999999999999');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=292 ;

--
-- Contenu de la table `solde_caisse`
--

INSERT INTO `solde_caisse` (`idsoldecaisse`, `date_mouvement`, `num_mouvement`, `type_mouvement`, `type_solde`, `libelle_mouvement`, `debit`, `credit`, `point_caisse`) VALUES
(33, '20-03-2015', '5918847', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bigot P.', '', '10', 0),
(34, '20-03-2015', '7278163', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Mahot.', '', '30', 0),
(35, '20-03-2015', '6752344', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Jousset J.', '', '25', 0),
(36, '20-03-2015', '6740144', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de berthonnneau.', '', '30', 0),
(38, '20-03-2015', '5405595', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Jouin B.', '', '20', 0),
(39, '20-03-2015', '5957233', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Mauxion A.', '', '20', 0),
(40, '20-03-2015', '2903246', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Angeard M.', '', '20', 0),
(41, '20-03-2015', '0830849', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '30', 0),
(42, '20-03-2015', '6605119', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Turpin.', '', '20', 0),
(43, '20-03-2015', '4458026', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Barelli m.', '', '20', 0),
(44, '20-03-2015', '0000134', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bardonneau.', '', '10', 0),
(45, '20-03-2015', '4518040', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de babalonne.', '', '10', 0),
(46, '20-03-2015', '9818450', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Poupin.', '', '30', 0),
(47, '20-03-2015', '4518040', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de babalonne.', '', '20', 0),
(48, '20-03-2015', '1124001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Morin.', '', '10', 0),
(49, '20-03-2015', '2657322', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '10', 0),
(50, '20-03-2015', '5511207', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DailliÃ¨re.', '', '10', 0),
(51, '20-03-2015', '75829074', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Miloudi.', '', '20', 0),
(52, '20-03-2015', '50918071', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Avril.', '', '25', 0),
(53, '20-03-2015', '0003037', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Ditacroute S.', '', '15', 0),
(54, '20-03-2015', '0000581', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Poirier.', '', '30', 0),
(55, '20-03-2015', '7550082', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Blum.', '', '20', 0),
(56, '20-03-2015', '5511209', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DailliÃ¨re.', '', '20', 0),
(57, '20-03-2015', '5621769', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Lessiau.', '', '20', 0),
(58, '20-03-2015', '9383513', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bodin D.', '', '20', 0),
(59, '20-03-2015', '5399212', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rabouin.', '', '10', 0),
(60, '20-03-2015', '5399212', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rabouin.', '', '30', 0),
(61, '20-03-2015', '5004909', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Brichet.', '', '20', 0),
(62, '20-03-2015', '4483076', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bodin E.', '', '20', 0),
(63, '20-03-2015', '4645022', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Dalmolhin.', '', '20', 0),
(64, '20-03-2015', '0003021', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Ditacroute S.', '', '20', 0),
(65, '20-03-2015', '9619573', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Boucard.', '', '5', 0),
(66, '20-03-2015', '9619573', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Boucard.', '', '20', 0),
(67, '20-03-2015', '0000183', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Picouleau.', '', '15', 0),
(68, '20-03-2015', '0000386', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de trost.', '', '20', 0),
(69, '20-03-2015', '4948107', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DublÃ©.', '', '15', 0),
(70, '20-03-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Papin.', '', '10', 0),
(71, '20-03-2015', '7213033', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '20', 0),
(72, '20-03-2015', '3163473', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BruÃ¨re.', '', '25', 0),
(73, '20-03-2015', '6991054', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Martin.', '', '20', 0),
(74, '28-03-2015', '4358267', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rapicault J.', '', '10', 0),
(75, '28-03-2015', '0000163', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Chaussepied.', '', '20', 0),
(76, '28-03-2015', '5455523', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Hy.', '', '20', 0),
(77, '28-03-2015', '6473278', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Dubois F.', '', '10', 0),
(78, '28-03-2015', '4561019', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rezard.', '', '20', 0),
(79, '28-03-2015', '6958332', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Jousset.', '', '10', 0),
(80, '28-03-2015', '6683003', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Leboucher S.', '', '15', 0),
(81, '28-03-2015', '2903250', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Angerad M.', '', '20', 0),
(82, '28-03-2015', '3807544', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Lassay.', '', '20', 0),
(83, '28-03-2015', '4358267', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rapicault J.', '', '10', 0),
(84, '28-03-2015', '6440452', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Paymal.', '', '20', 0),
(85, '28-03-2015', '5511212', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DaillÃ¨re.', '', '20', 0),
(86, '28-03-2015', '0000212', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Cornut.', '', '20', 0),
(87, '28-03-2015', '6026433', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Laigle.', '', '20', 0),
(88, '28-03-2015', '7109836', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '20', 0),
(89, '28-03-2015', '8681549', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Duperray V.', '', '20', 0),
(90, '28-03-2015', '01211515', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '10', 0),
(91, '28-03-2015', '6682997', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Leboucher S.', '', '40', 0),
(92, '28-03-2015', '2667204', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Cauchard.', '', '20', 0),
(93, '28-03-2015', '4436905', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Vincent L.', '', '10', 0),
(94, '28-03-2015', '8982503', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Goujon C.', '', '15', 0),
(95, '28-03-2015', '0000183', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bru.', '', '5', 0),
(96, '28-03-2015', '7596308', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Blot.', '', '20', 0),
(97, '02-04-2015', '6623013', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de duveau St.', '', '20', 0),
(98, '02-04-2015', '0001091', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de cros f.', '', '10', 0),
(99, '02-04-2015', '1896041', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rodriguez.', '', '15', 0),
(100, '02-04-2015', '1667414', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de tirlet.', '', '10', 0),
(101, '02-04-2015', '9660042', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bruneau.', '', '5', 0),
(102, '02-04-2015', '6807071', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Jarry.', '', '10', 0),
(103, '02-04-2015', '1727727', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Miloudi.', '', '20', 0),
(104, '02-04-2015', '0000183', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bru A.', '', '5', 0),
(105, '02-04-2015', '0000277', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Marchand s.', '', '15', 0),
(106, '02-04-2015', '5004919', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Brichet.', '', '20', 0),
(107, '02-04-2015', '8883393', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Beaudet.', '', '30', 0),
(108, '02-04-2015', '6814811', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Guiho.', '', '10', 0),
(109, '02-04-2015', '4198322', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Komara.', '', '10', 0),
(110, '02-04-2015', '9339202', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Delaunay P.', '', '30', 0),
(111, '02-04-2015', '7345659', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Burillon.', '', '50', 0),
(112, '02-04-2015', '9947757', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de bertho C.', '', '15', 0),
(113, '02-04-2015', '0899310', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RiviÃ¨re.', '', '20', 0),
(114, '02-04-2015', '9957001', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Mauxion A.', '', '20', 0),
(115, '02-04-2015', '7036344', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Godard G.', '', '10', 0),
(116, '02-04-2015', '2541685', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jobin o.', '', '20', 0),
(117, '02-04-2015', '9947758', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de bertho C.', '', '5', 0),
(118, '02-04-2015', '4666019', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de thiberge.', '', '20', 0),
(119, '02-04-2015', '6740147', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Berthonneau.', '', '30', 0),
(120, '02-04-2015', '1913423', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de declÃ©.', '', '20', 0),
(121, '02-04-2015', '5455525', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de hy.', '', '10', 0),
(122, '02-04-2015', '6623013', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de duveau St.', '', '15', 0),
(123, '02-04-2015', '6267268', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jaziri.', '', '35', 0),
(124, '02-04-2015', '4198322', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de bangouri.', '', '10', 0),
(125, '02-04-2015', '6821241', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de paviot m.', '', '25', 0),
(126, '02-04-2015', '0000549', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de besnard g.', '', '25', 0),
(128, '02-04-2015', '5162242', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de gaignard m.', '', '20', 0),
(129, '02-04-2015', '0000153', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de hermiteau s.', '', '20', 0),
(130, '02-04-2015', '1124002', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Morin.', '', '20', 0),
(131, '02-04-2015', '1365866', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de vergnaud.', '', '10', 0),
(132, '02-04-2015', '0000235', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de cadas.', '', '20', 0),
(133, '02-04-2015', '5465945', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de josselin.', '', '25', 0),
(134, '02-04-2015', '4483088', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bodin E.', '', '25', 0),
(135, '02-04-2015', '3400334', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de duveau m.', '', '10', 0),
(136, '02-04-2015', '0203896', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de colombeau.', '', '10', 0),
(137, '02-04-2015', '9203076', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de dohin.', '', '20', 0),
(138, '02-04-2015', '4791110', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de khoumsi.', '', '20', 0),
(139, '02-04-2015', '4173986', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de gilbert.', '', '30', 0),
(140, '02-04-2015', '4666020', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de thiberge.', '', '5', 0),
(141, '02-04-2015', '0388529', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de thomas.', '', '20', 0),
(142, '02-04-2015', '7505063', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de chatard.', '', '20', 0),
(143, '02-04-2015', '0000187', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bardonneau.', '', '10', 0),
(144, '02-04-2015', '0000187', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bru A.', '', '5', 0),
(145, '02-04-2015', '4561023', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de rezard.', '', '20', 0),
(146, '02-04-2015', '86477', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de bidet.', '', '10', 0),
(147, '02-04-2015', '0000530', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de leconte jl.', '', '10', 0),
(148, '02-04-2015', '4593720', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de doineau.', '', '30', 0),
(149, '02-04-2015', '00064288065', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de thompson.', '', '10', 0),
(150, '02-04-2015', '00003052', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Ditacroute S.', '', '10', 0),
(151, '02-04-2015', '8982508', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de goujon c.', '', '20', 0),
(153, '02-04-2015', '6007940', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de voluette g.', '', '25', 0),
(154, '02-04-2015', '2541690', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jobin o.', '', '15', 0),
(155, '02-04-2015', '1699272', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de angelo e.', '', '10', 0),
(156, '02-04-2015', '5511211', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DailliÃ¨re.', '', '20', 0),
(157, '02-04-2015', '5636372', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de roche.', '', '25', 0),
(158, '02-04-2015', '668311', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de leboucher s.', '', '15', 0),
(159, '02-04-2015', '2541691', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jobin o.', '', '10', 0),
(160, '02-04-2015', '6958359', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Jousset J.', '', '10', 0),
(161, '02-04-2015', '0000189', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bru A.', '', '15', 0),
(162, '10-04-2015', '6683012', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Chevaleyre.', '', '10', 0),
(163, '10-04-2015', '0001085', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Debelly.', '', '10', 0),
(164, '10-04-2015', '6758194', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rocher Y.', '', '25', 0),
(165, '10-04-2015', '7305101', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Pons.', '', '10', 0),
(166, '10-04-2015', '484376', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de piotet.', '', '15', 0),
(167, '10-04-2015', '0342849', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Fosse.', '', '20', 0),
(168, '10-04-2015', '3807545', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de lassay.', '', '30', 0),
(169, '10-04-2015', '0000099', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de browaeys.', '', '10', 0),
(170, '10-04-2015', '6267278', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jaziri.', '', '40', 0),
(171, '10-04-2015', '6267278', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jaziri.', '', '10', 0),
(172, '10-04-2015', '4983839', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de charrier.', '', '10', 0),
(173, '10-04-2015', '0001034', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de lepetitcorps.', '', '10', 0),
(174, '10-04-2015', '1699266', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de angelo.', '', '20', 0),
(175, '10-04-2015', '0102504', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de rateau.', '', '20', 0),
(176, '10-04-2015', '5189083', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de papin.', '', '10', 0),
(177, '10-04-2015', '5399212', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de rabouin.', '', '30', 0),
(178, '10-04-2015', '6063663', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de joly.', '', '10', 0),
(179, '10-04-2015', '0001075', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Debelly.', '', '10', 0),
(180, '10-04-2015', '3247982', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ecomard.', '', '10', 0),
(181, '10-04-2015', '6682995', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de masse.', '', '15', 0),
(182, '10-04-2015', '000016', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de seno.', '', '10', 0),
(183, '10-04-2015', '7109836', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de foin.', '', '20', 0),
(184, '10-04-2015', '0001081', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de debelly.', '', '20', 0),
(185, '10-04-2015', '0000033', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de seno.', '', '15', 0),
(186, '10-04-2015', '6026433', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de laigle.', '', '12', 0),
(187, '10-04-2015', '9847086', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de mercier.', '', '30', 0),
(188, '10-04-2015', '6683004', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de masse s.', '', '6', 0),
(191, '28-04-2015', '6796548', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rozat E.', '', '20', 0),
(192, '28-04-2015', '9181144', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Lopez r.', '', '10', 0),
(193, '28-04-2015', '5497922', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Duriez.', '', '10', 0),
(194, '28-04-2015', '7596325', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Blot.', '', '15', 0),
(195, '28-04-2015', '4948121', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DublÃ©.', '', '15', 0),
(198, '28-04-2015', '7036355', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Godard G.', '', '104', 0),
(199, '28-04-2015', '1124003', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Morin.', '', '92', 0),
(203, '28-04-2015', '4600295', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Fosse W.', '', '64.5', 0),
(204, '28-04-2015', '555944', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de FÃ©vrier D.', '', '50.5', 0),
(206, '28-04-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de davis.', '', '160', 0),
(207, '28-04-2015', '6888357', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rozat E.', '', '88', 0),
(208, '28-04-2015', '68477943', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Brazille M.', '', '104', 0),
(209, '28-04-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Rozat E.', '', '120', 0),
(210, '28-04-2015', '2676700', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bodin E.', '', '150', 0),
(211, '28-04-2015', '000001900', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de chevaleyre.', '', '50.5', 0),
(212, '28-04-2015', '0001091', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de cros f.', '', '73', 0),
(214, '28-04-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '0', 0),
(215, '28-04-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '0', 0),
(216, '28-04-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '0', 0),
(217, '28-04-2015', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '0', 0),
(218, '28-04-2015', '5883049', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de hamonnier.', '', '30', 0),
(219, '28-04-2015', '0000037', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Breton .', '', '25', 0),
(220, '28-04-2015', '6473299', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Dubois.', '', '20', 0),
(221, '28-04-2015', '4645024', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Dalmolhin.', '', '20', 0),
(223, '28-04-2015', '7944980', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de besnard s.', '', '20', 0),
(224, '28-04-2015', '8421719', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Josselin.', '', '15', 0),
(225, '28-04-2015', '8421719', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de josselin.', '', '20', 0),
(226, '28-04-2015', '2551891', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Thibault R.', '', '20', 0),
(227, '28-04-2015', '5967631', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de lecalvez.', '', '20', 0),
(228, '11-02-2015', '3123829', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123829 en date du 11-02-2015.', '135', '', 1),
(229, '11-02-2015', '3123830', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123830 en date du 11-02-2015.', '115', '', 1),
(230, '28-02-2015', '3123831', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123831 en date du 28-02-2015.', '140', '', 1),
(231, '28-04-2015', '3048928', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de honorÃ©.', '', '88.62', 0),
(232, '28-04-2015', '0001280', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de juret.', '', '37.47', 0),
(233, '31-03-2015', '3123841', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123841 en date du 31-03-2015.', '206.09', '', 1),
(234, '28-04-2015', '5004903', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Brichet.', '', '105.9', 0),
(235, '31-03-2015', '3123842', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123842 en date du 31-03-2015.', '325.9', '', 1),
(236, '28-04-2015', '6175893', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de petiteau.', '', '49.72', 0),
(237, '31-03-2015', '3123843', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123843 en date du 31-03-2015.', '273.72', '', 1),
(238, '28-04-2015', '9203068', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de dohin.', '', '40', 0),
(239, '28-04-2015', '5483485', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Flao.', '', '60', 0),
(240, '31-03-2015', '3128844', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3128844 en date du 31-03-2015.', '212', '', 1),
(241, '31-03-2015', '3123846', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123846 en date du 31-03-2015.', '129', '', 1),
(242, '28-04-2015', '31238347', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 31238347 en date du 28-04-2015.', '175.5', '', 1),
(243, '28-04-2015', '31238348', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 31238348 en date du 28-04-2015.', '164.5', '', 1),
(244, '28-04-2015', '31238349', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 31238349 en date du 28-04-2015.', '203.5', '', 1),
(245, '28-04-2015', '5673697', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DailliÃ¨re.', '', '84', 0),
(246, '28-04-2015', '3123850', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3123850 en date du 28-04-2015.', '229', '', 1),
(247, '07-05-2015', '0000639', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Gastineau .', '', '10', 0),
(248, '07-05-2015', '5621782', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Lessiau.', '', '30', 0),
(250, '07-05-2015', '2649203', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de fortier t.', '', '20', 0),
(251, '07-05-2015', '6473304', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de dubois.', '', '10', 0),
(253, '07-05-2015', '8883394', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Beaudet.', '', '30', 0),
(254, '07-05-2015', '8883394', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Beaudet.', '', '30', 0),
(255, '07-05-2015', '2541695', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jobin o.', '', '5', 0),
(256, '07-05-2015', '8662713', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de jobin o.', '', '10', 0),
(257, '07-05-2015', '60259948', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bigot P.', '', '10', 0),
(258, '07-05-2015', '60259948', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Bigot P.', '', '10', 0),
(259, '07-05-2015', '4479029', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de dansoko.', '', '10', 0),
(260, '07-05-2015', '3649255', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de meffray.', '', '20', 0),
(261, '07-05-2015', '3292958', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de piotet.', '', '10', 0),
(263, '07-05-2015', '4666029', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de thiberge.', '', '30', 0),
(264, '07-05-2015', '0830862', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de nevoux.', '', '30', 0),
(265, '07-05-2015', '0830862', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de nevoux.', '', '10', 0),
(266, '07-05-2015', '1791106', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Turpin.', '', '30', 0),
(267, '12-05-2015', '4436838', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Vincent l.', '', '45', 0),
(268, '12-05-2015', '2615026', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Raimbault.', '', '10', 0),
(269, '12-05-2015', '8069275', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de cadas.', '', '30', 0),
(270, '12-05-2015', '0322019', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de duveau m.', '', '5', 0),
(271, '12-05-2015', '5205804', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BEAUBIGNY D.', '', '25', 0),
(272, '12-05-2015', '2615026', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RAMBAULT.', '', '10', 0),
(273, '1430949600', '6440458', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de paymal.', '', '20', 0),
(274, '1430863200', '0000392', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de trost s.', '', '10', 0),
(275, '1428703200', '7172550', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Jousset J.', '', '10', 0),
(278, '1432072800', '0000692', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Gastineau .', '', '10', 0),
(279, '1431900000', '0001291', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de juret.', '', '15', 0),
(280, '1431381600', '6379863', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de bouget.', '', '134', 0),
(281, '1431381600', '3306360', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3306360 en date du 12-05-2015.', '254', '', 1),
(282, '1430172000', '2725014', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de hoffman.', '', '15', 0),
(283, '1431381600', '3306361', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3306361 en date du 12-05-2015.', '125', '', 1),
(284, '1431381600', '2634693', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de besnard s.', '', '5', 0),
(285, '1430690400', '72464366', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de vukelic.', '', '20', 0),
(286, '1432245600', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '0', 0),
(287, '1431381600', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '0', 0),
(288, '1428962400', '', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de .', '', '0', 0),
(289, '1432591200', '7287344', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de davis.', '', '234', 0),
(290, '1429308000', '4763822', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de doineau.', '', '67', 0),
(291, '1432159200', '6063673', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de joly.', '', '10', 0);

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
 ADD PRIMARY KEY (`idcomptamvm`), ADD KEY `date_mvm` (`date_mvm`);

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
MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=499;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=411;
--
-- AUTO_INCREMENT pour la table `billet_ayant_droit`
--
ALTER TABLE `billet_ayant_droit`
MODIFY `idbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=290;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
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
MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=406;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT pour la table `ligne_billet_ayant_droit`
--
ALTER TABLE `ligne_billet_ayant_droit`
MODIFY `idlignebilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ligne_billet_salarie`
--
ALTER TABLE `ligne_billet_salarie`
MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=304;
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
MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT pour la table `produit_fixe`
--
ALTER TABLE `produit_fixe`
MODIFY `idproduitfixe` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `reg_billet_ayant_droit`
--
ALTER TABLE `reg_billet_ayant_droit`
MODIFY `idregbilletayantdroit` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_billet_salarie`
--
ALTER TABLE `reg_billet_salarie`
MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=274;
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
MODIFY `idremisebanque` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `remise_banque_chq`
--
ALTER TABLE `remise_banque_chq`
MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=398;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=292;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
