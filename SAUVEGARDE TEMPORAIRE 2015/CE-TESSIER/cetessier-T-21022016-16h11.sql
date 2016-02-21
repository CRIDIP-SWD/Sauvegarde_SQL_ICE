-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2016 à 16:11
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cetessier`
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
(80, 72, 'ALLARD', 'MAELLE', '26/10/2011', '161'),
(81, 72, 'ALLARD', 'NATHAN', '15/12/2008', '161'),
(82, 72, 'ALLARD', 'RANDY', '10/09/2013', '161'),
(83, 72, 'POURTAUD', 'MANON', '25/04/1998', '161'),
(84, 72, 'POURTAUD', 'PAULINE', '13/07/2002', '161'),
(85, 74, 'AMZIL', 'MATHYS', '27/03/2008', '161'),
(86, 75, 'BRISSET', 'ADRIEN', '27/05/1995', '161'),
(87, 75, 'BRISSET', 'BAPTISTE', '22/12/2000', '161'),
(88, 75, 'BRISSET', 'CAMILLE', '26/01/1998', '161'),
(89, 76, 'ANGELO', 'ALAN', '10/10/2000', '161'),
(90, 76, 'ANGELO', 'COLLEEN', '04/11/2003', '161'),
(91, 76, 'THEBERT', 'DAMIEN', '09/10/1991', '161'),
(92, 77, 'GUIET', 'GEOFFRAY', '12/01/1996', '161'),
(93, 77, 'GUIET', 'THOMAS', '15/12/1999', '161'),
(94, 80, 'AUBRY', 'MAYLIS', '04/12/2005', '161'),
(95, 81, 'AUDOUARD', 'ELINA', '06/10/2014', '161'),
(96, 81, 'AUDOUARD', 'MAXENCE', '16/08/2011', '161'),
(97, 82, 'HAMELIN', 'LALIANNA', '02/05/2013', '161'),
(98, 84, 'BARBALONE', 'PAULINE', '07/01/2000', '161'),
(99, 84, 'BARBALONE', 'VINCENT', '11/07/1997', '161'),
(100, 85, 'BABIN', 'ANTHONIN', '19/01/2010', '161'),
(101, 85, 'BABIN', 'ELIAN', '19/12/2013', '161'),
(102, 85, 'BABIN', 'MAXENCE', '14/12/2011', '161'),
(103, 87, 'BANGOURA', 'FATIMATA', '01/10/2004', '161'),
(104, 89, 'BARELLI', 'JULIETTE', '03/08/2014', '161'),
(105, 90, 'BARRE', 'DAVID', '05/11/1980', '161'),
(106, 90, 'BARRE', 'JESSICA', '24/03/1979', '161'),
(107, 90, 'BARRE', 'THOMAS', '13/11/1986', '161'),
(108, 93, 'BEAUBIGNY', 'FRANCOIS', '25/03/1991', '161'),
(109, 93, 'BEAUBIGNY', 'JULIEN', '10/11/1989', '161'),
(110, 93, 'BEAUBIGNY', 'MARION', '25/03/1991', '161'),
(111, 99, 'BENOIST', 'FLORIANE', '08/07/2004', '161'),
(112, 99, 'BENOIST', 'MARION', '01/05/2002', '161'),
(113, 99, 'BENOIST', 'OCEANE', '23/03/2001', '161'),
(114, 99, 'BENOSIT', 'CLOE', '15/02/2007', '161'),
(115, 99, 'RUIZ-RUIZ BENOIST', 'MYLANA', '22/01/2012', '161'),
(116, 99, 'RUIZ-RUIZ BENOIST', 'TIAGO', '14/10/2014', '161'),
(117, 100, 'BERNARD', 'MILANE', '24/11/2009', '161'),
(118, 101, 'BERTHO', 'LAURE', '19/11/1998', '161'),
(119, 101, 'BERTHO', 'MARIE', '15/08/2002', '161'),
(120, 102, 'BERTHONNEAU', 'ANTOINE', '01/08/1995', '161'),
(121, 102, 'BERTHONNEAU', 'CLEMENCE', '18/07/1998', '161'),
(122, 105, 'BESNARD', 'LORIS', '08/08/2012', '161'),
(123, 105, 'BESNARD', 'NOLAN', '09/11/2009', '161'),
(124, 105, 'BESNARD', 'TIMEO', '03/05/2008', '161'),
(125, 104, 'BESNARD', 'CHARLOTTE', '14/11/1997', '161'),
(126, 104, 'BESNARD', 'JONATHAN', '06/01/2003', '161'),
(127, 104, 'BESNARD', 'MELISSA', '17/12/1999', '161'),
(128, 106, 'BIDET', 'LISON', '26/10/2007', '161'),
(129, 106, 'BIDET', 'MARCEAU', '31/03/2010', '161'),
(130, 108, 'BIDON', 'MARC', '19/08/1985', '161'),
(131, 109, 'BIGOT', 'ESTHER', '06/10/2003', '161'),
(132, 109, 'BIGOT', 'MARIN', '28/02/2006', '161'),
(133, 109, 'BIGOT', 'ROSE', '19/10/2007', '161'),
(134, 110, 'BLOT', 'KELYA', '27/09/2007', '161'),
(135, 110, 'HAUTREUX', 'ERWAN', '12/07/2003', '161'),
(136, 113, 'BODIER', 'SAMUEL', '10/01/2005', '161'),
(137, 113, 'BODIER', 'THEO', '18/09/2009', '161'),
(138, 115, 'BODIN', 'GUILLAUME', '28/06/1986', '161'),
(139, 116, 'BODIN', 'GUILLAUME', '28/06/1986', '161'),
(140, 114, 'BODIN', 'LOUANE', '02/11/2007', '161'),
(141, 114, 'BODIN', 'MAEL', '17/08/2011', '161'),
(142, 117, 'BONNIN', 'JULIE', '16/10/1984', '161'),
(143, 118, 'BOUCARD', 'BERANGERE', '11/09/2000', '161'),
(144, 118, 'BOUCARD', 'EMELINE', '03/09/1992', '161'),
(145, 118, 'BOUCARD', 'MELANIE', '28/09/1996', '161'),
(146, 119, 'BOUGET', 'GABY', '02/10/2002', '161'),
(147, 119, 'BOUGET', 'PRISCILLA', '23/11/1993', '161'),
(148, 124, 'BOURDIN', 'AMELINE', '10/11/2001', '161'),
(149, 124, 'BOURDIN', 'COLINE', '25/08/1999', '161'),
(150, 124, 'BOURDIN', 'MARINE', '08/09/2005', '161'),
(151, 125, 'BOUREL', 'JORDAN', '05/05/2014', '161'),
(152, 126, 'BOURGERIE', 'VICTOR', '24/02/2015', '161'),
(153, 127, 'BERNARD', 'CELIA', '11/02/2011', '161'),
(154, 131, 'BRAZILLE', 'LOUANE', '05/10/2012', '161'),
(155, 131, 'BRAZILLE', 'MATHYS', '17/09/2010', '161'),
(156, 135, 'BRU', 'AGATHE', '29/03/2012', '161'),
(157, 136, 'BRUERE', 'CAMILLE', '15/01/1996', '161'),
(158, 136, 'BRUERE', 'JUSTINE', '27/01/1994', '161'),
(159, 136, 'BRUERE', 'WILLIAM', '31/07/2004', '161'),
(160, 137, 'BRUGIERE LEGENDRE', 'MAYANNE', '28/08/2012', '161'),
(161, 138, 'ROCHE', 'LUDIVINE', '20/11/1997', '161'),
(162, 139, 'FOKAM KAMGUEM', 'ENZO', '15/11/1999', '161'),
(163, 139, 'FOKAM KAMGUEM', 'ZOE', '29/04/2003', '161'),
(164, 141, 'CALCO', 'LEA', '24/10/2001', '161'),
(165, 141, 'CALCO', 'ROMAIN', '24/10/2001', '161'),
(166, 142, 'CAMUS', 'EMIE', '05/03/2010', '161'),
(167, 142, 'CAMUS', 'MAHE', '18/12/2014', '161'),
(168, 142, 'LE CLAINCHE', 'LISA', '03/08/2006', '161'),
(169, 143, 'CARO', 'LISEA', '08/06/2005', '161'),
(170, 143, 'CARO', 'MIGUEL', '19/02/2003', '161'),
(171, 143, 'CARO', 'NAOMIE', '04/07/2007', '161'),
(172, 143, 'CARO', 'OC?ANE', '08/08/2000', '161'),
(173, 145, 'CAUCHARD', 'MAELLE', '10/01/2006', '161'),
(174, 146, 'CAYON', 'DAMIEN', '12/01/1987', '161'),
(175, 147, 'CHANTEUX', 'ETHAN', '23/01/2009', '161'),
(176, 148, 'CHARDON', 'LAURENE', '05/07/1996', '161'),
(177, 149, 'CHARLEUX', 'DAVID', '10/10/1993', '161'),
(178, 149, 'CHARLEUX', 'EMELINE', '18/02/1997', '161'),
(179, 152, 'CHAUSSEPIED', 'LAETITIA', '15/04/1995', '161'),
(180, 152, 'CHAUSSEPIED', 'THOMAS', '30/04/1997', '161'),
(181, 154, 'CHEVALEYRE', 'TIM', '26/02/2011', '161'),
(182, 156, 'CHOQUET', 'EDEN', '01/08/2014', '161'),
(183, 157, 'CLEC''H', 'MORGANN', '11/10/2006', '161'),
(184, 158, 'COIGNARD', 'MANOLA', '15/12/2009', '161'),
(185, 158, 'COIGNARD', 'MATHIEU', '16/01/2001', '161'),
(186, 158, 'COIGNARD', 'MICKAEL', '24/06/1995', '161'),
(187, 159, 'COLOMBEAU', 'CAMILLE', '29/05/1996', '161'),
(188, 159, 'COLOMBEAU', 'CHLO+', '15/05/1991', '161'),
(189, 159, 'COLOMBEAU', 'FLAVIE', '05/07/1999', '161'),
(190, 159, 'COLOMBEAU', 'TIMEO', '18/10/2007', '161'),
(191, 160, 'COLOMBEAU', 'CAMILLE', '29/05/1996', '161'),
(192, 160, 'COLOMBEAU', 'CHLOE', '15/05/1991', '161'),
(193, 160, 'COLOMBEAU', 'FLAVIE', '05/07/1999', '161'),
(194, 160, 'COLOMBEAU', 'TIMEO', '18/10/2007', '161'),
(195, 161, ' PFAD', 'CLEMENT', '09/07/2007', '161'),
(196, 161, 'CORNUT PFAD', 'THIBAUT', '24/04/2011', '161'),
(197, 164, 'COUTARD', 'ALEXIS', '03/10/1991', '161'),
(198, 164, 'COUTARD', 'SOPHIE', '28/08/1988', '161'),
(199, 165, 'COZMA', 'STEFAN', '20/11/2012', '161'),
(200, 166, 'CROS', 'ROMAIN', '24/02/2013', '161'),
(201, 166, 'CROS', 'VINCENT', '27/11/2009', '161'),
(202, 169, 'DAILLIERE', 'F+LICIE', '12/11/1997', '161'),
(203, 169, 'DAILLIERE', 'FLAVIS', '28/11/2001', '161'),
(204, 169, 'DAILLIERE', 'VALENTIN', '20/10/1999', '161'),
(205, 170, 'DAL MOLIN', 'MAGALI', '22/01/1991', '161'),
(206, 170, 'DAL MOLIN', 'RUDY', '02/09/1993', '161'),
(207, 172, 'DAVIS', 'FABIEN', '16/01/1999', '161'),
(208, 172, 'DAVIS', 'LAURA', '10/12/2002', '161'),
(209, 172, 'DAVIS', 'YLHAN', '16/11/2011', '161'),
(210, 175, 'DECLE', 'MATHIEU', '09/10/1989', '161'),
(211, 181, 'DEZECOT', 'NOLAN', '21/03/2008', '161'),
(212, 181, 'DEZECOT', 'SOLENNE', '19/10/1998', '161'),
(213, 182, 'DITACROUTE', 'ALYSEE', '01/05/2010', '161'),
(214, 187, 'DOINEAU', 'MAETHIS', '24/09/2013', '161'),
(215, 187, 'DOINEAU', 'NO?LINE', '30/11/2011', '161'),
(216, 188, 'DUBLE', 'FRANCOIS', '02/11/1998', '161'),
(217, 188, 'DUBLE', 'PIERRE', '05/06/2001', '161'),
(218, 189, 'DUBOIS', 'SOPHIE', '26/06/2001', '161'),
(219, 189, 'DUBOIS', 'THOMAS', '03/10/2003', '161'),
(220, 190, 'DUPERRAY', 'CHLO?', '18/08/2010', '161'),
(221, 190, 'DUPERRAY', 'LOISE', '17/11/2006', '161'),
(222, 191, 'DURIEZ', 'JAN', '12/10/1984', '161'),
(223, 192, 'DUVEAU', 'CLELIA', '25/01/2006', '161'),
(224, 192, 'DUVEAU', 'KYLLIAN', '15/11/2008', '161'),
(225, 194, 'ECOMARD', 'LILIAN', '30/07/2010', '161'),
(226, 194, 'ECOMARD', 'NOE', '03/07/2012', '161'),
(227, 195, 'ESNAU', 'RYANA', '16/04/2006', '161'),
(228, 195, 'LEGRAS', 'MARION', '01/06/2010', '161'),
(229, 195, 'LEGRAS', 'YASMINE', '15/04/2008', '161'),
(230, 195, 'TROUILLAUD', 'NEO', '02/06/2009', '161'),
(231, 199, 'FERRIERE', 'JORDAN', '14/06/2014', '161'),
(232, 199, 'FERRIERE', 'LYLIAN', '05/02/2010', '161'),
(233, 199, 'FERRIERE', 'OCEANE', '05/12/2007', '161'),
(234, 200, 'FEVRIER', 'AUDREY', '25/07/2002', '161'),
(235, 200, 'FEVRIER', 'CHLOE', '11/02/2004', '161'),
(236, 201, 'FLAO', 'MARINE', '25/03/2001', '161'),
(237, 201, 'ROUMY', 'FLORIAN', '12/12/1992', '161'),
(238, 202, 'FLORINEDA', 'ALICE', '13/04/1989', '161'),
(239, 202, 'FLORINEDA', 'ANNE', '29/07/1992', '161'),
(240, 202, 'FLORINEDA', 'CECILE', '22/07/1997', '161'),
(241, 204, 'FONTAINE MOINET', 'REMI', '15/09/1996', '161'),
(242, 206, 'FOSSE', 'ADELAIDE', '11/07/2003', '161'),
(243, 206, 'FOSSE', 'CONSTANCE', '11/12/2007', '161'),
(244, 206, 'FOSSE', 'FIRMIN', '10/11/2004', '161'),
(245, 209, 'FRAQUET', 'ALEXIS', '29/01/1999', '161'),
(246, 209, 'FRAQUET', 'CORALIE', '04/08/2000', '161'),
(247, 209, 'FRAQUET', 'REMI', '28/02/2004', '161'),
(248, 212, 'GARNIER', 'MA?L ANTHONY MICHEL', '14/03/2012', '161'),
(249, 215, 'GILBERT', 'LUDOVIC', '15/03/1983', '161'),
(250, 215, 'GILBERT', 'ROZENN', '28/09/1984', '161'),
(251, 216, 'GIRARDEAU', 'ANAIS', '22/05/2000', '161'),
(252, 216, 'GIRARDEAU', 'FABIEN', '07/05/1997', '161'),
(253, 216, 'GIRARDEAU', 'TOM', '18/02/2012', '161'),
(254, 216, 'GIRARDEAU', 'ZOE', '03/02/2011', '161'),
(255, 218, 'CHARTIER', 'MATHILDA', '02/08/2002', '161'),
(256, 218, 'EON', 'ALEXANDRE', '25/06/2000', '161'),
(257, 218, 'GODARD', 'LIZEA', '24/02/2006', '161'),
(258, 219, 'GODARD', 'EVAN', '10/02/2011', '161'),
(259, 219, 'GODARD', 'LENA', '12/12/2007', '161'),
(260, 220, 'GODARD', 'EVAN', '10/02/2011', '161'),
(261, 220, 'GODARD', 'LENA', '12/12/2007', '161'),
(262, 222, 'GOIZET', 'LEA', '19/03/1997', '161'),
(263, 222, 'GOIZET', 'MARIE', '26/09/1998', '161'),
(264, 222, 'LATOUR', 'ELISE', '14/03/2004', '161'),
(265, 226, 'GRONFOT', 'MA?L', '27/02/2013', '161'),
(266, 226, 'GRONFOT', 'TOM', '17/12/2010', '161'),
(267, 227, 'GROSBOIS', 'ROMAIN', '23/07/1989', '161'),
(268, 229, 'GUERROUDJ', 'DOUNIA', '18/08/2009', '161'),
(269, 230, 'GUICHARD', 'SONIA', '23/05/2005', '161'),
(270, 231, 'GUIET', 'GEOFFRAY', '12/01/1996', '161'),
(271, 231, 'GUIET', 'THOMAS', '15/12/1999', '161'),
(272, 234, 'HAMARD', 'ELOISE', '31/05/1993', '161'),
(273, 235, 'HAMELIN', 'LALIANNA', '02/05/2013', '161'),
(274, 236, 'HAMONIER', 'VALENTIN', '18/02/1999', '161'),
(275, 241, 'HY', 'TYLIAN', '27/02/2011', '161'),
(276, 242, 'JARRY', 'LUCIE', '03/02/1992', '161'),
(277, 242, 'JARRY', 'YOHAN', '14/06/1995', '161'),
(278, 244, 'JEFFRARD', 'KYLIAN', '06/01/1992', '161'),
(279, 246, 'JOLY', 'ALEXANDRE', '17/06/1992', '161'),
(280, 246, 'JOLY', 'MELISSA', '30/07/1996', '161'),
(281, 247, 'JOSSELIN', 'LOUNA', '19/03/2009', '161'),
(282, 247, 'JOSSELIN', 'NOLANN', '27/10/2013', '161'),
(283, 249, 'JOUIN', 'AURELIEN', '06/09/1999', '161'),
(284, 249, 'JOUIN', 'MAXIME', '25/09/2001', '161'),
(285, 252, 'LAMBERT JUBAULT', 'MANON', '21/11/2013', '161'),
(286, 252, 'LAMBERT JUBAULT', 'QUENTIN', '16/09/2011', '161'),
(287, 254, 'HIREL', 'CASSANDRA', '07/08/1992', '161'),
(288, 254, 'KEBANGA', 'CLERY', '03/04/2007', '161'),
(289, 255, 'KHOUMSI', 'ILIAS', '02/09/2004', '161'),
(290, 255, 'KHOUMSI', 'SOUFIAN', '11/10/2000', '161'),
(291, 256, 'LAIGLE', 'ZOE', '29/12/2007', '161'),
(292, 257, 'LAMBERT JUBAULT', 'MANON', '21/11/2013', '161'),
(293, 257, 'LAMBERT JUBAULT', 'QUENTIN', '16/09/2011', '161'),
(294, 258, 'LANGINIER', 'CHARLOTTE', '07/05/1984', '161'),
(295, 258, 'LANGINIER', 'CORINNE', '05/09/1988', '161'),
(296, 258, 'LANGINIER', 'STEPHANE', '09/11/1985', '161'),
(297, 263, 'LE PETITCORPS', 'LALY', '23/11/2010', '161'),
(298, 263, 'LE PETITCORPS', 'LENORA', '16/10/2013', '161'),
(299, 263, 'LE PETITCORPS', 'LOUNA', '26/12/2008', '161'),
(300, 263, 'LE PETITCORPS', 'LUCILE', '25/09/2006', '161'),
(301, 265, 'BODAN', 'MICKAELLA', '29/11/1996', '161'),
(302, 265, 'ROBERT', 'CALLIE', '27/04/2004', '161'),
(303, 266, 'LEBOUCHER', 'CHRISTOPHER', '19/04/2011', '161'),
(304, 266, 'LEBOUCHER', 'MAEL', '28/02/2005', '161'),
(305, 266, 'LEBOUCHER', 'OCEANE', '04/01/2002', '161'),
(306, 266, 'LEBOUCHER', 'SORENZA', '26/12/2008', '161'),
(307, 267, 'LECONTE', 'JULIE', '12/10/1999', '161'),
(308, 267, 'LECONTE', 'LUCAS', '01/01/2005', '161'),
(309, 272, 'BRUGIERE', 'CHLOE', '26/07/2003', '161'),
(310, 272, 'BRUGIERE', 'MAXIME', '02/07/2006', '161'),
(311, 272, 'LEGENDRE BRUGIERE', 'MAYANNE', '28/08/2012', '161'),
(312, 269, 'LEGENDRE', 'LEO', '22/05/2009', '161'),
(313, 269, 'LEGENDRE', 'MA+LYS', '06/12/2004', '161'),
(314, 274, 'LEMOINE', 'LUCAS', '03/11/2014', '161'),
(315, 278, 'LEROUX', 'JESSY', '28/11/1992', '161'),
(316, 278, 'LEROUX', 'SANDRA', '18/09/1997', '161'),
(317, 280, 'LESSIAU', 'CORALIE', '11/06/1998', '161'),
(318, 280, 'LESSIAU', 'CORENTIN', '08/02/1994', '161'),
(319, 281, 'LHOPITEAU', 'COLINE', '02/11/2005', '161'),
(320, 281, 'LHOPITEAU', 'NOE', '20/07/2009', '161'),
(321, 283, 'LICOIS', 'CHARLYNE', '14/04/2008', '161'),
(322, 283, 'LICOIS', 'FLORENT', '27/10/2005', '161'),
(323, 283, 'LICOIS', 'JEROME', '11/06/1986', '161'),
(324, 284, 'DERRIEN', 'ANAIS', '05/10/2001', '161'),
(325, 284, 'DERRIEN', 'GWENDAL', '04/01/2004', '161'),
(326, 284, 'LICOIS', 'GABRIEL', '13/11/2012', '161'),
(327, 284, 'LICOIS', 'SOLENE', '08/05/2014', '161'),
(328, 285, 'LICOIS', 'GABRIEL', '13/11/2012', '161'),
(329, 285, 'LICOIS', 'SOLENE', '08/05/2014', '161'),
(330, 286, 'LOPEZ', 'MAELYS', '16/03/2012', '161'),
(331, 288, 'LORET', 'CHRISTAL', '26/04/2007', '161'),
(332, 288, 'LORET', 'HAYDEN', '06/09/2011', '161'),
(333, 288, 'LORET', 'KURT', '19/01/2009', '161'),
(334, 288, 'LORET', 'OCEAN', '25/08/2004', '161'),
(335, 289, 'LORET', 'CRISTAL', '26/04/2007', '161'),
(336, 289, 'LORET', 'HAYDEN', '06/09/2011', '161'),
(337, 289, 'LORET', 'KURT', '19/01/2009', '161'),
(338, 289, 'LORET', 'OCEAN', '25/08/2004', '161'),
(339, 290, 'MAHOT', 'CLEMENTINE', '31/03/1992', '161'),
(340, 290, 'MAHOT', 'TRISTAN', '26/02/1995', '161'),
(341, 292, 'MAINGOT', 'JULIA', '12/06/1996', '161'),
(342, 293, 'MARAIS', 'THOMAS', '11/01/1990', '161'),
(343, 294, 'MARCHAND', 'ARTHUR', '02/04/2014', '161'),
(344, 295, 'MARCHAND', 'SARAH', '13/05/2007', '161'),
(345, 295, 'MARCHAND', 'THOMAS', '25/08/2004', '161'),
(346, 296, 'MARTIN', 'LUCAS', '18/07/2001', '161'),
(347, 296, 'MARTIN', 'ROMANE', '09/10/2006', '161'),
(348, 297, 'MASSE', 'ALICIA', '14/11/1994', '161'),
(349, 297, 'MASSE', 'DORAIN', '15/02/2005', '161'),
(350, 297, 'MASSE', 'KEVIN', '09/07/1993', '161'),
(351, 297, 'MASSE', 'MATHEO', '28/04/2007', '161'),
(352, 297, 'MASSE', 'WENDY', '19/10/1996', '161'),
(353, 298, 'MASSE', 'DORIAN', '15/02/2005', '161'),
(354, 298, 'MASSE', 'MATHEO', '28/04/2007', '161'),
(355, 300, 'BIGOT', 'ROMAIN', '09/08/1991', '161'),
(356, 300, 'MAUXION', 'LILOU', '12/11/2003', '161'),
(357, 300, 'MAUXION', 'ROZENN', '07/09/1996', '161'),
(358, 301, 'MEFFRAY', 'ALEXIS', '29/10/2006', '161'),
(359, 301, 'MEFFRAY', 'LAURA', '14/05/2008', '161'),
(360, 302, 'MENARD', 'ANTOINE', '03/06/2006', '161'),
(361, 303, 'MERCIER', 'ANTOINE', '20/12/1981', '161'),
(362, 303, 'MERCIER', 'BENJAMIN', '29/06/1988', '161'),
(363, 303, 'MERCIER', 'FRANCOIS', '24/08/1984', '161'),
(364, 304, 'MILCENT', 'LUCAS', '22/09/2006', '161'),
(365, 304, 'MILCENT', 'MATHIS', '22/09/2006', '161'),
(366, 304, 'MILCENT', 'SOLENE', '22/09/2006', '161'),
(367, 305, 'MEZIERES', 'OCEANE', '29/07/1994', '161'),
(368, 305, 'MILOCHE', 'ENOLA', '05/10/2010', '161'),
(369, 305, 'MILOCHE', 'SASHA', '03/10/2002', '161'),
(370, 305, 'MILOCHE', 'SHANNA', '19/04/2007', '161'),
(371, 307, 'MOREAU', 'ALEXIS', '22/05/1997', '161'),
(372, 307, 'MOREAU', 'JESSY', '18/04/1992', '161'),
(373, 307, 'MOREAU', 'KIMBERLY', '13/10/2004', '161'),
(374, 307, 'MOREAU', 'NOAMY', '14/12/2007', '161'),
(375, 307, 'TRANCHANT', 'AMELIE', '11/01/1993', '161'),
(376, 307, 'TRANCHANT', 'CORALIE', '21/07/1990', '161'),
(377, 308, 'MORIN', 'JULIEN', '24/09/1985', '161'),
(378, 309, 'MORTIER', 'MARION', '11/01/1989', '161'),
(379, 309, 'MORTIER', 'THOMAS', '25/11/1992', '161'),
(380, 310, 'MOUNIER', 'CLOTILDE', '10/07/2003', '161'),
(381, 310, 'MOUNIER', 'GREGOIRE', '18/04/2005', '161'),
(382, 310, 'MOUNIER', 'MAYLIS', '05/01/2002', '161'),
(383, 310, 'MOUNIER', 'SOLENE', '13/09/2007', '161'),
(384, 311, 'DELESTRE', 'JONATHAN', '06/04/1996', '161'),
(385, 311, 'DELESTRE', 'KEVIN', '28/02/1993', '161'),
(386, 312, 'MORICE ONILLON', 'DORIANE', '05/10/2008', '161'),
(387, 313, 'OTMANE CHERIF', 'ILYASS', '18/01/2013', '161'),
(388, 313, 'OTMANE CHERIF', 'ZOUHEIR', '02/11/2008', '161'),
(389, 314, 'PALLIER', 'ETHAN', '08/11/2014', '161'),
(390, 315, 'REMARS', 'ANTONIN', '14/04/2014', '161'),
(391, 318, 'PASTEUR', 'ANNABEL', '08/09/1995', '161'),
(392, 318, 'PASTEUR', 'CHARLY', '10/05/1999', '161'),
(393, 318, 'PASTEUR', 'LOU', '02/09/2000', '161'),
(394, 322, 'PAVIOT', 'ILHAN', '22/10/2007', '161'),
(395, 322, 'PAVIOT', 'MATHYS', '07/08/2011', '161'),
(396, 320, 'PAVIOT', 'ILHAN', '22/10/2007', '161'),
(397, 320, 'PAVIOT', 'MATHYS', '07/08/2011', '161'),
(398, 323, 'BOUGET', 'GABY', '02/10/2002', '161'),
(399, 323, 'BOUGET', 'PRISCILLA', '23/11/1993', '161'),
(400, 323, 'PAYMAL', 'TEDDY', '28/07/1989', '161'),
(401, 324, 'PERDRIAU', 'JESSY', '21/10/1999', '161'),
(402, 324, 'PERDRIAU', 'SORAYA', '26/04/2005', '161'),
(403, 325, 'PERDRIX', 'ROMAIN', '23/07/2001', '161'),
(404, 325, 'PERDRIX', 'THOMAS', '11/07/2003', '161'),
(405, 326, 'PERPOIL', 'ANTOINE', '14/05/1993', '161'),
(406, 328, 'PINSON', 'AMANDINE', '28/03/2009', '161'),
(407, 328, 'PINSON', 'KILLIAN', '13/12/2000', '161'),
(408, 328, 'PINSON', 'MORGANE', '24/10/2005', '161'),
(409, 329, 'PIOTET', 'SOLENE', '16/11/2002', '161'),
(410, 331, 'PIVERT', 'JULIEN', '25/01/1987', '161'),
(411, 332, 'PLACAIS', 'NATHAN', '29/10/2011', '161'),
(412, 334, 'POCHARD', 'ANGELINA', '18/02/1997', '161'),
(413, 334, 'POCHARD', 'HELENA', '09/04/2003', '161'),
(414, 334, 'POCHARD', 'SABRINA', '08/05/1992', '161'),
(415, 335, 'POIRIER', 'BERTILLE', '03/01/2000', '161'),
(416, 335, 'POIRIER', 'BRIEUX', '06/09/2003', '161'),
(417, 335, 'POIRIER', 'LILY', '21/09/2006', '161'),
(418, 335, 'POIRIER', 'MAIXAN', '11/06/2002', '161'),
(419, 336, 'POMMIER', 'NOAH', '24/03/2013', '161'),
(420, 339, 'POUPIN', 'JULIEN', '02/07/1986', '161'),
(421, 339, 'POUPIN', 'MORGANE', '07/11/1995', '161'),
(422, 340, 'PROTIN', 'R?MI', '11/10/2013', '161'),
(423, 342, 'RABEL', 'JAMES', '14/01/1983', '161'),
(424, 343, 'RABOUIN', 'BENOIT', '18/05/1999', '161'),
(425, 343, 'RABOUIN', 'CORALIE', '01/10/1995', '161'),
(426, 344, 'RAIMBAULT', 'ALEXIS', '22/05/2006', '161'),
(427, 344, 'RAIMBAULT', 'KEVIN', '14/07/2000', '161'),
(428, 344, 'RAIMBAULT', 'LOLITA', '19/03/2003', '161'),
(429, 345, 'RAOUI', 'ABOUBAKAR', '12/04/2013', '161'),
(430, 348, 'RATEAU', 'JULIE', '27/07/1990', '161'),
(431, 349, 'REDCENT', 'ABBIE', '30/01/2011', '161'),
(432, 349, 'REDCENT', 'TOMMY', '23/09/2007', '161'),
(433, 351, 'COURANT', 'ELODIE', '11/11/1997', '161'),
(434, 352, 'REPUSSARD', 'BENOIST', '24/02/2000', '161'),
(435, 352, 'REPUSSARD', 'KEVIN', '13/12/1997', '161'),
(436, 358, 'RODRIGUES', 'DOMINIQUE', '26/11/2006', '161'),
(437, 358, 'RODRIGUES', 'ESTHER', '08/08/2014', '161'),
(438, 358, 'RODRIGUES', 'GABRIEL', '08/04/2005', '161'),
(439, 358, 'RODRIGUES', 'ROSETH', '31/03/2002', '161'),
(440, 359, 'RONCIER', 'ANGELINA', '29/05/1998', '161'),
(441, 360, 'BARANGER', 'DYLAN', '01/01/2001', '161'),
(442, 362, 'MIGNOT', 'MIGUEL', '18/11/2009', '161'),
(443, 363, 'ROUSSEL', 'BAPTISTE', '04/04/2002', '161'),
(444, 363, 'ROUSSEL', 'MATHIAS', '26/09/2004', '161'),
(445, 364, 'ROZAT', 'ELODIE', '21/07/1988', '161'),
(446, 365, 'SALMON', 'MARIE', '09/08/1996', '161'),
(447, 365, 'SALMON', 'MAXIME', '10/08/2002', '161'),
(448, 365, 'SALMON', 'THOMAS', '11/06/1998', '161'),
(449, 368, 'SENO', 'PIERRE', '29/01/2003', '161'),
(450, 369, 'SOURDEAU', 'LAETITIA', '07/11/1991', '161'),
(451, 369, 'SOURDEAU', 'LAURA', '27/03/1995', '161'),
(452, 371, 'THEVENET', 'MATHILDE', '01/10/1997', '161'),
(453, 374, 'CHAMAILLE', 'GAYLORD', '02/09/1982', '161'),
(454, 374, 'THIBERGE', 'MORGAN', '06/01/1992', '161'),
(455, 374, 'THIBERGE', 'ST+PHANIE', '22/07/1987', '161'),
(456, 376, 'THOMAS', 'HUGO', '25/06/2002', '161'),
(457, 376, 'THOMAS', 'QUENTIN', '21/02/1999', '161'),
(458, 375, 'THOMAS', 'HUGO', '25/06/2002', '161'),
(459, 375, 'THOMAS', 'QUENTIN', '21/02/1999', '161'),
(460, 377, 'THOMPSON', 'EDOUARD', '24/03/2012', '161'),
(461, 377, 'THOMPSON', 'ELO?SE', '10/02/2014', '161'),
(462, 377, 'THOMPSON', 'JULIANA', '06/07/2010', '161'),
(463, 379, 'TIRLET', 'MATHEO', '23/10/2010', '161'),
(464, 380, 'TRANCHANT', 'KEVIN', '22/11/1991', '161'),
(465, 380, 'TRANCHANT', 'MARJORIE', '16/08/1994', '161'),
(466, 384, 'TROST', 'LENA', '30/05/2003', '161'),
(467, 384, 'TROST', 'MAELY', '01/02/2006', '161'),
(468, 384, 'TROST', 'SHANICE', '21/08/2011', '161'),
(469, 382, 'TROST', 'LAENA', '15/09/2010', '161'),
(470, 383, 'TROST', 'WESLEY', '13/02/2013', '161'),
(471, 385, 'TURPIN', 'NICOLAS', '30/09/1991', '161'),
(472, 385, 'TURPIN', 'PAULINE', '07/10/1997', '161'),
(473, 386, 'VATTAT', 'TOM', '10/08/1993', '161'),
(474, 387, 'VENERIA', 'LORINE', '19/06/2008', '161'),
(475, 387, 'VENERIA', 'ROMAIN', '01/11/2003', '161'),
(476, 388, 'VERBELEN', 'LEA', '20/08/2003', '161'),
(477, 388, 'VERBELEN', 'MARION', '02/05/2006', '161'),
(478, 388, 'VERBELEN', 'MORGANE', '03/10/2010', '161'),
(479, 389, 'VERGER', 'COLINE', '17/06/1999', '161'),
(480, 389, 'VERGER', 'JORDAN', '20/08/1995', '161'),
(481, 390, 'VERGNAUD', 'ENZO', '22/03/2005', '161'),
(482, 390, 'VERGNAUD', 'PRESCILLIA', '25/08/2001', '161'),
(483, 391, 'VINCENT', 'AMANDINE', '08/08/1996', '161'),
(484, 391, 'VINCENT', 'DJOVANNIE', '18/02/1993', '161'),
(485, 391, 'VINCENT', 'KEVIN', '10/11/1989', '161'),
(486, 391, 'VINCENT', 'MA+VA', '10/01/2001', '161'),
(487, 392, 'VINCENT', 'ENZO', '27/01/2011', '161'),
(488, 392, 'VINCENT', 'MAXIME', '24/06/1994', '161'),
(489, 392, 'VINCENT', 'WILLIAM', '27/08/1998', '161'),
(490, 393, 'VINEAU', 'CL+O ZO+', '12/07/2003', '161'),
(491, 393, 'VINEAU', 'NOA', '13/01/2008', '161'),
(492, 394, 'VOLUETTE', 'MARION', '10/01/2003', '161'),
(493, 394, 'VOLUETTE', 'PRUDENCE', '06/02/2005', '161'),
(494, 394, 'VOLUETTE', 'QUENTIN', '22/05/1998', '161'),
(495, 395, 'VOLUETTE', 'ELODIE', '20/07/2004', '161'),
(496, 395, 'VOLUETTE', 'FABIEN', '16/06/1997', '161'),
(497, 395, 'VOLUETTE', 'JEROME', '12/05/1991', '161'),
(498, 395, 'VOLUETTE', 'JULIEN', '09/12/1993', '161');

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
(1, 2, 'Vente de Billetterie: LHOPITEAU RAPHAEL pour la prestation Concert', '', '120', '74680369'),
(2, 2, 'Vente de Billetterie: ROCHER YANNICK pour la prestation Concert', '', '142.5', '56488206'),
(4, 2, 'Vente de Billetterie: DUBLE AGATHE pour la prestation Sorties scolaires - nÂ°7735762', '', '0', '10148338'),
(5, 2, 'Vente de Billetterie: THOMAS EMMANUEL pour la prestation Sorties scolaires - chÃ¨que 7735761', '', '0', '27506710'),
(6, 2, 'Vente de Billetterie: RABOUIN CECILE pour la prestation Gaumont', '', '15', '41154965'),
(7, 2, 'Vente de Billetterie: HAMELIN JASON pour la prestation Gaumont', '', '25', '67756238'),
(8, 2, 'Vente de Billetterie: BOCHER CHRISTELE pour la prestation Gaumont', '', '20', '29223909'),
(9, 2, 'Vente de Billetterie: HAMONIER OLIVIER pour la prestation carte cezam', '', '30', '87818843'),
(10, 2, 'Vente de Billetterie: BRUNEAU JACQUELINE pour la prestation Gaumont', '', '20', '28755162'),
(11, 2, 'Vente de Billetterie: SENO JEAN PIERRE pour la prestation Gaumont', '', '20', '66189764'),
(12, 2, 'Vente de Billetterie: TURPIN CHRISTINE pour la prestation Gaumont', '', '20', '91537547'),
(13, 2, 'Vente de Billetterie: THIBAULT GREGORY pour la prestation Gaumont', '', '20', '87712676'),
(14, 2, 'Vente de Billetterie: BERNARD VUKELIC CAROLE pour la prestation Gaumont', '', '10', '71300925'),
(15, 2, 'Vente de Billetterie: BARDONNEAU PASCAL pour la prestation Gaumont', '', '20', '62862640'),
(16, 2, 'Vente de Billetterie: BENOIST MICKAEL pour la prestation Gaumont', '', '10', '44678015'),
(17, 2, 'Vente de Billetterie: ANGELO ERIC pour la prestation Gaumont', '', '30', '22934135'),
(18, 2, 'Vente de Billetterie: ANGEARD MARYSE pour la prestation Gaumont', '', '30', '4133609'),
(19, 2, 'Vente de Billetterie: CHEVALEYRE JULIE pour la prestation Gaumont', '', '10', '86612684'),
(20, 2, 'Vente de Billetterie: JOSSELIN ANTHONY pour la prestation Gaumont', '', '20', '71489585'),
(21, 2, 'Vente de Billetterie: HAMONIER OLIVIER pour la prestation Gaumont', '', '20', '70613934'),
(22, 2, 'Vente de Billetterie: CHEVALEYRE JULIE pour la prestation Cin&eacute;ma Saumur', '', '10', '45583192'),
(23, 2, 'Vente de Billetterie: LHOPITEAU RAPHAEL pour la prestation Cin&eacute;ma Saumur', '', '10', '22766771'),
(24, 2, 'Vente de Billetterie: CHAUSSEPIED CATHERINE pour la prestation Cin&eacute;ville', '', '30', '2612054'),
(25, 2, 'Vente de Billetterie: AVRIL FLORIAN pour la prestation Cin&eacute;ville', '', '25', '85882009'),
(26, 2, 'Vente de Billetterie: BESNARD SEBASTIEN pour la prestation Cin&eacute;ville', '', '25', '50697074'),
(27, 2, 'Vente de Billetterie: REZARD AMELIE pour la prestation Cin&eacute;ville', '', '20', '68600574'),
(28, 2, 'Vente de Billetterie: SENO JEAN PIERRE pour la prestation Cin&eacute;ville', '', '25', '44562117'),
(29, 2, 'Vente de Billetterie: TURPIN CHRISTINE pour la prestation Cin&eacute;ville', '', '20', '55206057'),
(30, 2, 'Vente de Billetterie: PAPIN BENJAMIN pour la prestation Cin&eacute;ville', '', '20', '9882453'),
(31, 2, 'Vente de Billetterie: MAUXION ANITA pour la prestation Cin&eacute;ville', '', '20', '68456149'),
(32, 2, 'Vente de Billetterie: LEGENDRE NATHALIE pour la prestation Cin&eacute;ville', '', '25', '57955083'),
(33, 2, 'Vente de Billetterie: DELAUNAY PHILIPPE pour la prestation Cin&eacute;ville', '', '10', '86080231'),
(34, 2, 'Vente de Billetterie: VINCENT THIERRY pour la prestation Cin&eacute;ville', '', '10', '94285793'),
(35, 2, 'Vente de Billetterie: VINCENT LAURENT pour la prestation Cin&eacute;ville', '', '20', '93966250'),
(36, 2, 'Vente de Billetterie: ARNOULD CHRISTOPHE pour la prestation Cin&eacute;ville', '', '20', '35542544'),
(37, 2, 'Vente de Billetterie: BOUCARD PASCAL pour la prestation Cin&eacute;ville', '', '15', '97116465'),
(38, 2, 'Vente de Billetterie: HERMITEAU SIMON pour la prestation Cin&eacute;ville', '', '15', '89138763'),
(39, 2, 'Vente de Billetterie: BIDON ERIC pour la prestation Cin&eacute;ville', '', '20', '81333535'),
(40, 2, 'Vente de Billetterie: TROST STEVEN pour la prestation Cin&eacute;ville', '', '20', '94258974'),
(41, 2, 'Vente de Billetterie: RABOUIN CECILE pour la prestation Cin&eacute;ville', '', '20', '53366201');

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
(1, 281, '1452553200', 3, '120', 1, '74680369', 0),
(2, 357, '1454367600', 3, '142.5', 0, '56488206', 0),
(3, 376, '1454194800', 3, '0', 0, '27506710', 0),
(4, 188, '1454194800', 3, '0', 0, '10148338', 0),
(5, 88, '1453417200', 3, '20', 1, '62862640', 0),
(6, 100, '1453417200', 3, '10', 1, '71300925', 0),
(7, 399, '1453417200', 3, '20', 1, '87712676', 0),
(8, 99, '1453417200', 3, '10', 0, '44678015', 0),
(9, 385, '1453676400', 3, '20', 1, '91537547', 0),
(10, 138, '1453935600', 3, '20', 0, '28755162', 0),
(11, 236, '1453935600', 3, '30', 1, '87818843', 0),
(12, 112, '1454194800', 3, '20', 1, '29223909', 0),
(13, 235, '1454194800', 3, '25', 0, '67756238', 0),
(14, 343, '1454194800', 3, '15', 1, '41154965', 0),
(15, 368, '1454194800', 3, '20', 1, '66189764', 0),
(16, 76, '1453676400', 3, '30', 0, '22934135', 0),
(17, 75, '1453676400', 3, '30', 1, '4133609', 0),
(18, 154, '1453676400', 3, '10', 1, '86612684', 0),
(19, 247, '1453676400', 3, '20', 1, '71489585', 0),
(20, 236, '1453935600', 3, '20', 0, '70613934', 0),
(21, 281, '1453417200', 3, '10', 1, '22766771', 0),
(22, 154, '1453417200', 3, '10', 1, '45583192', 0),
(23, 281, '1454194800', 3, '0', 0, '', 0),
(24, 83, '1451862000', 3, '25', 1, '85882009', 0),
(25, 103, '1451862000', 3, '25', 1, '50697074', 0),
(26, 353, '1452553200', 3, '20', 1, '68600574', 0),
(27, 152, '1452639600', 3, '30', 0, '2612054', 0),
(28, 368, '1452812400', 3, '25', 1, '44562117', 0),
(29, 385, '1452639600', 3, '20', 0, '55206057', 0),
(30, 316, '1452639600', 3, '20', 0, '9882453', 0),
(31, 300, '1452639600', 3, '20', 1, '68456149', 0),
(32, 272, '1452639600', 3, '25', 1, '57955083', 0),
(33, 391, '1452726000', 3, '20', 1, '93966250', 0),
(34, 392, '1452812400', 3, '10', 1, '94285793', 0),
(35, 178, '1453244400', 3, '10', 1, '86080231', 0),
(36, 402, '1452726000', 3, '20', 0, '35542544', 0),
(37, 118, '1452726000', 3, '15', 1, '97116465', 0),
(38, 384, '1453676400', 3, '0', 0, '', 0),
(39, 107, '1453676400', 3, '20', 1, '81333535', 0),
(40, 237, '1454281200', 3, '15', 1, '89138763', 0),
(41, 383, '1454454000', 3, '20', 0, '94258974', 0),
(42, 343, '1454194800', 3, '20', 1, '53366201', 0);

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
(1, 'COMITE D''ENTREPRISE TESSIER', '', '', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '', '');

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
(1, '74680369', '1452553200', 'Vente de Billetterie: LHOPITEAU RAPHAEL pour la prestation Concert', '', '120'),
(2, '56488206', '1454367600', 'Vente de Billetterie: ROCHER YANNICK pour la prestation Concert', '', '142.5'),
(4, '10148338', '1454194800', 'Vente de Billetterie: DUBLE AGATHE pour la prestation Sorties scolaires - nÂ°7735762', '', '0'),
(5, '27506710', '1454194800', 'Vente de Billetterie: THOMAS EMMANUEL pour la prestation Sorties scolaires - chÃ¨que 7735761', '', '0'),
(6, '41154965', '1454194800', 'Vente de Billetterie: RABOUIN CECILE pour la prestation Gaumont', '', '15'),
(7, '67756238', '1454194800', 'Vente de Billetterie: HAMELIN JASON pour la prestation Gaumont', '', '25'),
(8, '29223909', '1454194800', 'Vente de Billetterie: BOCHER CHRISTELE pour la prestation Gaumont', '', '20'),
(9, '87818843', '1453935600', 'Vente de Billetterie: HAMONIER OLIVIER pour la prestation carte cezam', '', '30'),
(10, '28755162', '1453935600', 'Vente de Billetterie: BRUNEAU JACQUELINE pour la prestation Gaumont', '', '20'),
(11, '66189764', '1454194800', 'Vente de Billetterie: SENO JEAN PIERRE pour la prestation Gaumont', '', '20'),
(12, '91537547', '1453676400', 'Vente de Billetterie: TURPIN CHRISTINE pour la prestation Gaumont', '', '20'),
(13, '87712676', '1453417200', 'Vente de Billetterie: THIBAULT GREGORY pour la prestation Gaumont', '', '20'),
(14, '71300925', '1453417200', 'Vente de Billetterie: BERNARD VUKELIC CAROLE pour la prestation Gaumont', '', '10'),
(15, '62862640', '1453417200', 'Vente de Billetterie: BARDONNEAU PASCAL pour la prestation Gaumont', '', '20'),
(16, '44678015', '1453417200', 'Vente de Billetterie: BENOIST MICKAEL pour la prestation Gaumont', '', '10'),
(17, '22934135', '1453676400', 'Vente de Billetterie: ANGELO ERIC pour la prestation Gaumont', '', '30'),
(18, '4133609', '1453676400', 'Vente de Billetterie: ANGEARD MARYSE pour la prestation Gaumont', '', '30'),
(19, '86612684', '1453676400', 'Vente de Billetterie: CHEVALEYRE JULIE pour la prestation Gaumont', '', '10'),
(20, '71489585', '1453676400', 'Vente de Billetterie: JOSSELIN ANTHONY pour la prestation Gaumont', '', '20'),
(21, '70613934', '1453935600', 'Vente de Billetterie: HAMONIER OLIVIER pour la prestation Gaumont', '', '20'),
(22, '45583192', '1453417200', 'Vente de Billetterie: CHEVALEYRE JULIE pour la prestation Cin&eacute;ma Saumur', '', '10'),
(23, '22766771', '1453417200', 'Vente de Billetterie: LHOPITEAU RAPHAEL pour la prestation Cin&eacute;ma Saumur', '', '10'),
(24, '2612054', '1452639600', 'Vente de Billetterie: CHAUSSEPIED CATHERINE pour la prestation Cin&eacute;ville', '', '30'),
(25, '85882009', '1451862000', 'Vente de Billetterie: AVRIL FLORIAN pour la prestation Cin&eacute;ville', '', '25'),
(26, '50697074', '1451862000', 'Vente de Billetterie: BESNARD SEBASTIEN pour la prestation Cin&eacute;ville', '', '25'),
(27, '68600574', '1452553200', 'Vente de Billetterie: REZARD AMELIE pour la prestation Cin&eacute;ville', '', '20'),
(28, '44562117', '1452812400', 'Vente de Billetterie: SENO JEAN PIERRE pour la prestation Cin&eacute;ville', '', '25'),
(29, '55206057', '1452639600', 'Vente de Billetterie: TURPIN CHRISTINE pour la prestation Cin&eacute;ville', '', '20'),
(30, '9882453', '1452639600', 'Vente de Billetterie: PAPIN BENJAMIN pour la prestation Cin&eacute;ville', '', '20'),
(31, '68456149', '1452639600', 'Vente de Billetterie: MAUXION ANITA pour la prestation Cin&eacute;ville', '', '20'),
(32, '57955083', '1452639600', 'Vente de Billetterie: LEGENDRE NATHALIE pour la prestation Cin&eacute;ville', '', '25'),
(33, '86080231', '1453244400', 'Vente de Billetterie: DELAUNAY PHILIPPE pour la prestation Cin&eacute;ville', '', '10'),
(34, '94285793', '1452812400', 'Vente de Billetterie: VINCENT THIERRY pour la prestation Cin&eacute;ville', '', '10'),
(35, '93966250', '1452726000', 'Vente de Billetterie: VINCENT LAURENT pour la prestation Cin&eacute;ville', '', '20'),
(36, '35542544', '1452726000', 'Vente de Billetterie: ARNOULD CHRISTOPHE pour la prestation Cin&eacute;ville', '', '20'),
(37, '97116465', '1452726000', 'Vente de Billetterie: BOUCARD PASCAL pour la prestation Cin&eacute;ville', '', '15'),
(38, '89138763', '1454281200', 'Vente de Billetterie: HERMITEAU SIMON pour la prestation Cin&eacute;ville', '', '15'),
(39, '81333535', '1453676400', 'Vente de Billetterie: BIDON ERIC pour la prestation Cin&eacute;ville', '', '20'),
(40, '94258974', '1454454000', 'Vente de Billetterie: TROST STEVEN pour la prestation Cin&eacute;ville', '', '20'),
(41, '53366201', '1454194800', 'Vente de Billetterie: RABOUIN CECILE pour la prestation Cin&eacute;ville', '', '20');

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
(51, 'Cin&eacute;ma'),
(52, 'compte d&eacute;p&ocirc;t cezam'),
(53, 'zoo'),
(54, 'Sorties organis&eacute;es par le Comit&eacute; d''entreprise'),
(55, 'Prestation Enfants'),
(56, 'Prestations diverses'),
(57, 'Prestation salari&eacute;s');

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
(1, 1, 81, '12', '120', '0', 0, ''),
(2, 2, 81, '14.25', '142.5', '0', 0, ''),
(4, 4, 83, '1', '0', '45', 0, 'nÂ°7735762'),
(5, 3, 83, '1', '0', '45', 0, 'chÃ¨que 7735761'),
(6, 14, 71, '3', '15', '7.8', 0, ''),
(7, 13, 71, '5', '25', '13', 0, ''),
(8, 12, 71, '4', '20', '10.4', 0, ''),
(9, 11, 87, '6', '30', '0', 0, ''),
(10, 10, 71, '4', '20', '10.4', 0, ''),
(11, 15, 71, '4', '20', '10.4', 0, ''),
(12, 9, 71, '4', '20', '10.4', 0, ''),
(13, 7, 71, '4', '20', '10.4', 0, ''),
(14, 6, 71, '2', '10', '5.2', 0, ''),
(15, 5, 71, '4', '20', '10.4', 0, ''),
(16, 8, 71, '2', '10', '5.2', 0, ''),
(17, 16, 71, '6', '30', '15.6', 0, ''),
(18, 17, 71, '6', '30', '15.6', 0, ''),
(19, 18, 71, '2', '10', '5.2', 0, ''),
(20, 19, 71, '4', '20', '10.4', 0, ''),
(21, 20, 71, '4', '20', '10.4', 0, ''),
(22, 22, 72, '2', '10', '3.6', 0, ''),
(23, 21, 72, '2', '10', '3.6', 0, ''),
(24, 27, 92, '6', '30', '10.8', 0, ''),
(25, 24, 92, '5', '25', '9', 0, ''),
(26, 25, 92, '5', '25', '9', 0, ''),
(27, 26, 92, '4', '20', '7.2', 0, ''),
(28, 28, 92, '5', '25', '9', 0, ''),
(29, 29, 92, '4', '20', '7.2', 0, ''),
(30, 30, 92, '4', '20', '7.2', 0, ''),
(31, 31, 92, '4', '20', '7.2', 0, ''),
(32, 32, 92, '5', '25', '9', 0, ''),
(33, 35, 92, '2', '10', '3.6', 0, ''),
(34, 34, 92, '2', '10', '3.6', 0, ''),
(35, 33, 92, '4', '20', '7.2', 0, ''),
(36, 36, 92, '4', '20', '7.2', 0, ''),
(37, 37, 92, '3', '15', '5.4', 0, ''),
(38, 40, 92, '3', '15', '5.4', 0, ''),
(39, 39, 92, '4', '20', '7.2', 0, ''),
(40, 41, 92, '4', '20', '7.2', 0, ''),
(41, 42, 92, '4', '20', '7.2', 0, '');

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
(8, 'pflao', '8336bd93fd11451846e74d94fb610521', 1),
(9, 'P Delaunay', 'b1da10d127b7a470f3cc7515d09a98a4', 1),
(10, 'CETESSIER', '77f9b9f9145102e108c1e788796cbbd0', 2);

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
(70, 51, 'Cin&eacute;ma Stella', '18-03-2015', '', '3', '2', '5', '20', '11', 0),
(71, 51, 'Gaumont', '01-01-2016', '', '5', '2.6', '7.6', '20', '1229', 0),
(72, 51, 'Cin&eacute;ma Saumur', '01-01-2016', '', '5', '1.8', '6.8', '20', '126', 0),
(73, 51, 'Cin&eacute;ma Beaufort', '01-01-2015', '', '3', '2', '5', '20', '15', 0),
(74, 51, 'Cin&eacute;ma 400 coups', '01-01-2015', '', '3', '2', '5', '20', '', 0),
(79, 52, 'Sport', '01-01-2015', '', '1', '0', '1', '10000', '10000', 0),
(80, 52, 'parc animalier', '01-01-15', '', '1', '0', '1', '10000', '10000', 0),
(81, 52, 'Concert', '28-04-2015', '', '1', '0', '1', '10000', '10000', 0),
(82, 52, 'Parc d''attraction', '28-04-2015', '', '1', '0', '1', '10000', '10000', 0),
(83, 55, 'Sorties scolaires', '01-01-15', '31-01-2015', '0', '45', '45', '10', '979', 0),
(84, 55, 'Sorties extra-scolaires', '01-01-15', '31-01-2015', '0', '15', '15', '30', '966', 0),
(85, 56, 'Valrhona', '01-01-2015', '', '1', '0', '1', '10000', '10000', 0),
(86, 54, 'Ast&eacute;rix 2016', '01-01-2016', '', '1', '0', '1', '10000', '10000', 0),
(87, 52, 'carte cezam', '01-01-2016', '31-12-2016', '5', '0', '5', '100', '92', 0),
(89, 56, 'ventes non cat&eacute;goris&eacute;es', '01-01-2016', '31-12-2016', '1', '0', '1', '1000', '10000', 0),
(90, 57, 'carte cadeau', '01-01-2015', '15-09-2015', '0', '100', '100', '10', '1', 0),
(92, 51, 'Cin&eacute;ville', '01-11-2015', '31-12-2015', '5', '1.8', '6.8', '100', '794', 0);

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

--
-- Contenu de la table `reg_billet_salarie`
--

INSERT INTO `reg_billet_salarie` (`idregbilletsalarie`, `idbilletsalarie`, `type_reglement`, `montant_reglement`, `banque_chq`, `porteur_chq`, `num_chq`, `pointe`, `num_mouvement`) VALUES
(1, 1, 1, '60', 'CM', 'LHOPITEAU RAPHAEL', '5755695', 0, '74680369'),
(2, 1, 1, '60', 'CM', 'LHOPITEAU RAPHAEL', '5755696', 0, '74680369'),
(3, 14, 1, '15', 'CE', 'RABOUIN CECILE', '5399355', 1, '41154965'),
(4, 12, 1, '20', 'CA', 'BOCHER CHRISTELE', '3797335', 1, '29223909'),
(5, 11, 1, '30', 'CM', 'HAMONIER OLIVIER', '63311343', 1, '87818843'),
(7, 15, 1, '20', 'bpa', 'SENO JEAN PIERRE', '0000390', 1, '66189764'),
(8, 9, 1, '20', 'CA', 'TURPIN CHRISTINE', '1243654', 1, '91537547'),
(9, 7, 1, '20', 'CM', 'THIBAULT GREGORY', '4967607', 1, '87712676'),
(10, 6, 1, '10', 'CM', 'BERNARD VUKELIC CAROLE', '7807738', 1, '71300925'),
(11, 5, 1, '20', 'CE', 'BARDONNEAU PASCAL', '0000151', 1, '62862640'),
(12, 17, 1, '30', 'CA', 'ANGEARD MARYSE', '1077597', 1, '4133609'),
(13, 18, 1, '10', 'CE', 'CHEVALEYRE JULIE', '0001951', 1, '86612684'),
(14, 19, 1, '20', 'CA', 'JOSSELIN ANTHONY', '5682376', 1, '71489585'),
(15, 22, 1, '10', 'CE', 'CHEVALEYRE JULIE', '0001951', 1, '45583192'),
(16, 21, 1, '10', 'CM', 'LHOPITEAU RAPHAEL', '5755694', 1, '22766771'),
(17, 24, 1, '25', 'CA', 'AVRIL FLORIAN', '0000162', 1, '85882009'),
(18, 25, 1, '25', 'CA', 'BESNARD SEBASTIEN', '7944988', 1, '50697074'),
(19, 26, 1, '20', 'BP', 'REZARD AMELIE', '5590020', 1, '68600574'),
(20, 28, 1, '25', 'bpa', 'SENO JEAN PIERRE', '0000399', 1, '44562117'),
(21, 31, 1, '20', 'CA', 'MAUXION ANITA', '5248371', 1, '68456149'),
(22, 32, 1, '25', 'cic', 'LEGENDRE NATHALIE', '4301531', 1, '57955083'),
(23, 35, 1, '10', 'CE', 'DELAUNAY PHILIPPE', '9339208', 1, '86080231'),
(24, 34, 1, '10', 'CE', 'Delaunay P', '9339208', 1, '94285793'),
(25, 33, 1, '20', 'CE', 'VINCENT LAURENT', '4436899', 1, '93966250'),
(26, 37, 1, '15', 'CA', 'BOUCARD PASCAL', '9605134', 1, '97116465'),
(27, 40, 1, '15', 'CE', 'HERMITEAU SIMON', '0000167', 1, '89138763'),
(28, 39, 1, '20', 'CM', 'BIDON ERIC', '6058759', 1, '81333535'),
(29, 42, 1, '20', 'CE', 'RABOUIN CECILE', '5399355', 1, '53366201');

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
(2, '04-02-2016', 1, '3525636', '485', 1);

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
(1, 2, '81333535'),
(2, 2, '89138763'),
(3, 2, '97116465'),
(4, 2, '93966250'),
(5, 2, '94285793'),
(6, 2, '86080231'),
(7, 2, '57955083'),
(8, 2, '68456149'),
(9, 2, '68600574'),
(10, 2, '50697074'),
(11, 2, '85882009'),
(12, 2, '22766771'),
(13, 2, '71489585'),
(14, 2, '86612684'),
(15, 2, '45583192'),
(16, 2, '4133609'),
(17, 2, '62862640'),
(18, 2, '71300925'),
(19, 2, '87712676'),
(20, 2, '91537547'),
(21, 2, '66189764'),
(22, 2, '44562117'),
(23, 2, '87818843'),
(24, 2, '29223909'),
(25, 2, '41154965'),
(26, 2, '53366201');

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
(71, '', 1, 'ABBASSI', 'NAJEM EDDINE', '1', 'RUE ANDRE MAUROIS', '49000', 'ANGERS', '', '', '', '12/03/1978', '01/06/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(72, '', 1, 'ALLARD', 'ERIC', '12', 'RUE DE LA VALLEE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '04/01/1967', '05/01/2009', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(73, '', 1, 'ALLARD', 'THIERRY', '1', 'RUE DE VERDUN', '49630', 'MAZE', '', '', '', '31/05/1987', '05/01/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(74, '', 1, 'AMZIL', 'ABDELHAMID', '8', 'RUE DES DEPORTES', '49430', 'DURTAL', '', '', '', '23/08/1975', '01/06/2011', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '161'),
(75, '', 2, 'ANGEARD', 'MARYSE', '31', 'RUE ST JEAN', '49800', 'SARRIGNE', '', '', '', '20/05/1968', '01/01/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(76, '', 1, 'ANGELO', 'ERIC', '5', 'IMP DE LA PETITE NOUE', '49150', 'BAUGE', '', '', '', '26/04/1970', '18/09/2006', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(77, '', 2, 'ANGOT', 'CECILE', '27', 'RUE DES MOULINS', '49390', 'MOULIHERNE', '', '', '', '28/07/1958', '01/01/2006', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(78, '', 1, 'ANGOT', 'PATRICK', '27', 'RUE DES MOULINS', '49390', 'MOULIHERNE', '', '', '', '29/12/1970', '05/01/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(79, '', 1, 'ASSELAIN', 'SEBASTIEN', '2', 'RUE DU CLOS', '49150', 'BAUGE', '', '', '', '27/07/1988', '01/05/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(80, '', 2, 'AUBRY DAVY', 'BLANDINE', '7', 'RUE DES MEGALITHES', '49150', 'PONTIGNE', '', '', '', '02/05/1973', '01/01/2009', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(81, '', 1, 'AUDOUARD', 'LUDOVIC', '', 'LA MAISON NEUVE', '49150', 'CHARTRENE', '', '', '', '13/11/1981', '05/11/2012', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(82, '', 2, 'AUVINET', 'JUDITH', '', 'LIEU DIT L HUMAUCHAIS', '49140', 'CORZE', '', '', '', '18/08/1992', '09/01/2012', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(83, '', 1, 'AVRIL', 'FLORIAN', '50', 'AVENUE PASTEUR', '49100', 'ANGERS', '', '', '', '10/09/1990', '03/11/2011', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(84, '', 1, 'BABALONE', 'OLIVIER', '30', 'RTE DE LA GRANDE MAISON', '49630', 'CORNE', '', '', '', '25/07/1969', '02/05/1994', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(85, '', 1, 'BABIN', 'ALEXANDRE', '7', 'RUE PIERRE CHANTELOUP', '49140', 'BAUNE', '', '', '', '05/01/1982', '01/01/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(86, '', 1, 'BALLOT', 'MATTHIEU', '4', 'RUE DES MIMOSAS', '49140', 'BAUNE', '', '', '', '13/09/1994', '01/09/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.D. (Formation)', 1, '161'),
(87, '', 1, 'BANGOURA', 'ABDOULAYE', '30', 'RUE DE LA CHAPELLE', '49150', 'ECHEMIRE', '', '', '', '22/07/1973', '01/01/2014', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(88, '', 1, 'BARDONNEAU', 'PASCAL', '5', 'CHEM DE LA PETITE ROTE', '49140', 'VILLEVEQUE', '', '', '', '29/09/1974', '01/07/2009', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(89, '', 1, 'BARELLI', 'MATHIEU', '49', 'BD DU VAUGAREAU', '49100', 'ANGERS', '', '', '', '22/08/1982', '24/07/2006', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(90, '', 1, 'BARRE', 'ROBERT', '30', 'CHEMIN LA CHARRAUD BASSE', '85160', 'SAINT JEAN DE MONTS', '', '', '', '11/07/1957', '21/09/1981', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(91, '', 2, 'BAUNE', 'SYLVIE', '19', 'RUE DES AREDILLES', '49630', 'CORNE', '', '', '', '02/10/1963', '21/10/1980', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(92, '', 1, 'BEASSE', 'FRANCK', '', 'GRESIGNE', '49250', 'BRION', '', '', '', '14/04/1969', '12/04/1994', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(93, '', 1, 'BEAUBIGNY', 'DOMINIQUE', '24', 'RUE DE GROLLAY', '49630', 'MAZE', '', '', '', '30/07/1957', '01/10/2001', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(94, '', 1, 'BEAUDET', 'JEAN DAMIEN', '11', 'SQUARE DU GD CORNILLE', '49100', 'ANGERS', '', '', '', '09/09/1978', '01/11/2003', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(95, '', 1, 'BEAUSSIER', 'CHRISTIAN', '1', 'RUE PRINCIPALE', '49250', 'GEE', '', '', '', '04/05/1958', '22/02/1977', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(96, '', 1, 'BEAUSSIER', 'JEAN JACQUES', '8', 'RTE DES GRANDS CHAMPS', '49140', 'CORNILLE LES CAVES', '', '', '', '19/06/1960', '04/04/1978', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(97, '', 1, 'BELLAMY', 'MATHIAS', '24', 'RUE DES GLACIS', '54000', 'NANCY', '', '', '', '29/02/1992', '01/01/2015', '', '1', 'MARKETING', '', '', 'Stagiaire Etude', 1, '161'),
(98, '', 1, 'BENION', 'FRANCK', '15', 'RUE DE LA MAIRIE', '49140', 'SERMAISE', '', '', '', '04/02/1971', '01/04/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(99, '', 1, 'BENOIST', 'MICKAEL', '10', 'RUE DES SAINTS MARTINS', '49380', 'THOUARCE', '', '', '', '01/10/1980', '12/11/2001', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(100, '', 2, 'BERNARD VUKELIC', 'CAROLE', '1', 'RUE DES EPINETTES', '49140', 'SERMAISE', '', '', '', '07/11/1972', '01/11/2000', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(101, '', 1, 'BERTHO', 'CYRIL', '17', 'RUE FERDINAND VEST', '49800', 'TRELAZE', '', '', '', '08/02/1972', '02/05/1994', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.I.', 1, '161'),
(102, '', 2, 'BERTHONNEAU', 'CELINE', '93', 'RTE DE FAYET', '49630', 'MAZE', '', '', '', '12/03/1970', '11/04/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(103, '', 1, 'BESNARD', 'SEBASTIEN', '', 'LA CROIX', '49140', 'CHAUMONT D ANJOU', '', '', '', '08/08/1983', '13/01/2003', '', '1', '1ER ENCADR. AFFINAGE', '', '', 'C.D.I.', 1, '161'),
(104, '', 1, 'BESNARD', 'STEPHANE', '2', 'ALLEE DES TOURTERELLES', '49250', 'BEAUFORT EN VALLEE', '', '', '', '01/03/1980', '24/03/2003', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(105, '', 1, 'BESNARD', 'GUILLAUME', '', 'RUE DE LA FONTAINE', '49140', 'FONTAINE MILON', '', '', '', '28/07/1972', '24/03/2003', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(106, '', 1, 'BIDET', 'JULIEN', '8', 'IMP LOUIS MARTIN', '49000', 'ANGERS', '', '', '', '20/01/1980', '05/11/2001', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(107, '', 1, 'BIDON', 'ERIC', '20', 'PLACE DE L EGLISE', '49250', 'ST MATHURIN SUR LOIRE', '', '', '', '11/11/1962', '14/10/1980', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '161'),
(108, '', 1, 'BIDON', 'GILDAS', '107', 'RTE DU CLOS GASNIER', '49630', 'CORNE', '', '', '', '05/03/1957', '25/01/1975', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '161'),
(109, '', 1, 'BIGOT', 'PHILIPPE', '1', 'RUE L AURORE', '49140', 'CORZE', '', '', '', '17/07/1969', '01/10/1999', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(110, '', 2, 'BLOT', 'LAETITIA', '', 'LES GLEFIERES', '49250', 'FONTAINE GUERIN', '', '', '', '29/02/1980', '25/05/2000', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(111, '', 1, 'BLUM', 'DAMIEN', '', 'FERME LA FONTAINE', '49140', 'BAUNE', '', '', '', '19/09/1992', '01/03/2014', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(112, '', 2, 'BOCHER', 'CHRISTELE', '1', 'IMPASSE DE LA PELOUSE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '23/09/1974', '09/01/2012', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(113, '', 1, 'BODIER', 'JEAN MARC', '24', 'RUE DE LA TONNELLERIE', '49150', 'BAUGE', '', '', '', '15/06/1971', '02/06/1997', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(114, '', 1, 'BODIN', 'EMMANUEL', '29', 'RUE DU CABLE', '49330', 'CHATEAUNEUF SUR SARTHE', '', '', '', '15/06/1958', '28/02/1977', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(115, '', 2, 'BODIN', 'BRIGITTE', '130', 'RTE DE BAUNE', '49630', 'CORNE', '', '', '', '23/09/1960', '01/08/1978', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '161'),
(116, '', 1, 'BODIN', 'DOMINIQUE', '130', 'RTE DE BAUNE', '49630', 'CORNE', '', '', '', '13/07/1980', '01/10/2001', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '161'),
(117, '', 1, 'BONNIN', 'BERNARD', '', 'LES GAGNERIES', '49630', 'MAZE', '', '', '', '03/01/1957', '16/10/1978', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(118, '', 1, 'BOUCARD', 'PASCAL', '1', 'CHEMIN DE LA RIVIERE', '49140', 'CORZE', '', '', '', '01/05/1968', '25/04/1994', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(119, '', 1, 'BOUGET', 'FRANCK', '', 'LE PRE', '49140', 'LUE EN BAUGEOIS', '', '', '', '18/12/1969', '13/06/1994', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '161'),
(120, '', 1, 'BOUGREAU', 'DOMINIQUE', '19', 'RUE DES LANGOTTIERES', '49150', 'CHEVIRE LE ROUGE', '', '', '', '07/09/1966', '11/06/1990', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(121, '', 1, 'BOUGREAU', 'HUGUES', '7', 'RUE CAMILLE V GIRARDEAU', '49140', 'CORZE', '', '', '', '22/08/1967', '02/05/1996', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(122, '', 1, 'BOUGREAU', 'XAVIER', '5', 'RUE DES BRETIGNOLLES', '49140', 'JARZE', '', '', '', '03/04/1973', '02/05/1994', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(123, '', 1, 'BOULISSIERE', 'GUILAIN', '', 'LES CLAIES', '49150', 'LE VIEIL BAUGE', '', '', '', '11/06/1957', '21/09/1981', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(124, '', 1, 'BOURDIN', 'SEBASTIEN', '15', 'CHEMIN DU SALVERT', '49140', 'FONTAINE MILON', '', '', '', '29/11/1973', '01/04/1996', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(125, '', 1, 'BOUREL', 'GREGORY', '22', 'RUE FAUTRAS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '24/02/1985', '01/06/2008', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '161'),
(126, '', 1, 'BOURGERIE', 'DIMITRI', '12', 'RUE DE LA CROIX BLANCHE', '49630', 'CORNE', '', '', '', '22/07/1987', '03/09/2008', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(127, '', 2, 'BOURRIGAULT', 'LAETITIA', '4', 'BIS CHEMIN DU SALVERT', '49140', 'FONTAINE MILON', '', '', '', '20/11/1984', '05/01/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(128, '', 1, 'BOUSSEAU', 'DAVID', '2', 'RUE DU 14 JUILLET', '49320', 'BRISSAC QUINCE', '', '', '', '04/05/1968', '12/11/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(129, '', 2, 'BOZEC', 'MARIE', '17', 'RUE DES MIMOSAS', '49100', 'ANGERS', '', '', '', '03/11/1989', '11/08/2014', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.D.', 1, '161'),
(130, '', 1, 'BRAHIMI', 'OMAR', '5', 'PLACE DE L''EUROPE', '49100', 'ANGERS', '', '', '', '10/12/1981', '01/04/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(131, '', 1, 'BRAZILLE', 'MICKAEL', '', 'LA FILERIE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '03/07/1981', '13/03/2000', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(132, '', 1, 'BRETON', 'ANTHONY', '3', 'SQUARE FRANCOISE DOLTO', '49000', 'ANGERS', '', '', '', '11/02/1988', '05/01/2009', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '161'),
(133, '', 2, 'BRICHET PERPOIL', 'MARIE CLAIRE', '3', 'IMPASSE DES BAS DE SOI', '49630', 'MAZE', '', '', '', '07/09/1957', '01/03/1983', '', '1', 'ADM USINE', '', '', 'C.D.I.', 1, '161'),
(134, '', 2, 'BROWAEYS', 'DELPHINE', '37', 'RUE DELAAGE', '49100', 'ANGERS', '', '', '', '28/11/1986', '01/08/2010', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.I.', 1, '161'),
(135, '', 1, 'BRU', 'ALEXIS', '99', 'RUE FRANCOIS MAURIAC', '49800', 'TRELAZE', '', '', '', '26/02/1987', '10/08/2009', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '161'),
(136, '', 2, 'BRUERE', 'LAURE', '96', 'RUE DU GROLLAY', '49630', 'MAZE', '', '', '', '25/01/1974', '19/11/2000', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(137, '', 1, 'BRUGIERE', 'ROMAIN', '4', 'ALLEE DES COUDRIERS', '49630', 'MAZE', '', '', '', '26/10/1985', '15/03/2010', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(138, '', 2, 'BRUNEAU', 'JACQUELINE', '14', 'RUE DES CHAMPS DE LA VILLE', '49630', 'CORNE', '', '', '', '23/02/1967', '03/09/1990', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(139, '', 2, 'BURILLON', 'STEPHANIE', '38', 'RUE ALBERT SCHWEITZER', '49460', 'MONTREUIL JUIGNE', '', '', '', '22/05/1976', '01/12/2014', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(140, '', 1, 'CADAS', 'KARIM', '2', 'RUE DE LA FRUITIERE', '49140', 'CORZE', '', '', '', '18/05/1985', '09/08/2010', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(141, '', 1, 'CALCO', 'MICHEL', '12', 'AVENUE ERATO', '44470', 'CARQUEFOU', '', '', '', '28/06/1967', '18/03/1996', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(142, '', 2, 'CAMUS', 'CHARLENE', '20', 'RUE GUERIN DES FONTAINES', '49250', 'FONTAINE GUERIN', '', '', '', '24/10/1981', '25/11/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(143, '', 2, 'CARO', 'LAETITIA', '6', 'IMPASSE DES PUISATIERS', '49630', 'MAZE', '', '', '', '03/03/1980', '15/07/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(144, '', 1, 'CATILLON', 'THIERRY', '10', 'RUE DES TILLEULS', '49140', 'SERMAISE', '', '', '', '30/08/1978', '08/05/2000', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(145, '', 2, 'CAUCHARD', 'FLORENCE', '52', 'RUE VICTOR HUGO', '49100', 'ANGERS', '', '', '', '15/07/1977', '02/09/2013', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '161'),
(146, '', 1, 'CAYON', 'JACKY', '28', 'RTE DE LA PREVOTE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '05/06/1957', '19/06/1973', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(147, '', 1, 'CHANTEUX', 'FREDY', '9', 'SQUARE COLETTE BESSON', '49000', 'ANGERS', '', '', '', '27/05/1985', '03/12/2007', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(148, '', 2, 'CHARDON', 'CHRISTINE', '', 'LE PETIT PERRICHET', '49140', 'JARZE', '', '', '', '05/11/1968', '20/06/1994', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(149, '', 2, 'CHARLEUX', 'EVA', '22', 'RUE DU CLOS DE LA MOTTE', '49630', 'CORNE', '', '', '', '05/12/1973', '01/11/2000', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(150, '', 2, 'CHARRIER', 'CHRISTIANE', '4', 'HAMEAU DU PRESSOIR', '49112', 'PELLOUAILLES LES VIGNES', '', '', '', '28/02/1961', '11/06/1990', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(151, '', 1, 'CHATARD', 'PATRICK', '4', 'RUE DES GLYCINES', '49800', 'SARRIGNE', '', '', '', '10/02/1966', '12/01/2004', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(152, '', 2, 'CHAUSSEPIED', 'CATHERINE', '', 'LA GOUPILLERIE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '27/07/1970', '10/12/1990', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(153, '', 1, 'CHESNEAU', 'CHRISTOPHE', '', 'LA FURGEONNIERE', '49250', 'LA MENITRE', '', '', '', '24/09/1963', '09/12/2013', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '161'),
(154, '', 2, 'CHEVALEYRE', 'JULIE', '', 'RUE DE CHARTRENE', '49150', 'CUON', '', '', '', '28/02/1982', '15/03/2004', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(155, '', 1, 'CHEVET', 'DOMINIQUE', '1', 'RUE DE BEL AIR', '49430', 'LES RAIRIES', '', '', '', '12/04/1957', '01/12/2011', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(156, '', 1, 'CHOQUET', 'JULIEN', '10', 'AVENUE PIERRE POIVRE', '49240', 'AVRILLE', '', '', '', '22/06/1986', '01/05/2009', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(157, '', 1, 'CLEC H', 'BENOIT', '59', 'RUE RAPHAEL LECUIT', '49320', 'BRISSAC QUINCE', '', '', '', '27/07/1972', '01/12/2014', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(158, '', 1, 'COIGNARD', 'DOMINIQUE', '10', 'CITE GUERIN DES FONTAINES', '49150', 'BAUGE', '', '', '', '23/07/1969', '22/02/1990', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(159, '', 1, 'COLOMBEAU', 'CHRISTOPHE', '', 'AU P TIT BONHEUR', '49140', 'SERMAISE', '', '', '', '09/09/1970', '05/08/1991', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(160, '', 2, 'COLOMBEAU', 'VIRGINIE', '', 'AU P TIT BONHEUR', '49140', 'SERMAISE', '', '', '', '30/10/1971', '13/06/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(161, '', 2, 'CORNUT PFAD', 'STEPHANIE', '4', 'RUE JEAN EMILE MOLLAND', '49000', 'ANGERS', '', '', '', '08/05/1977', '01/01/2010', '', '1', 'DRH', '', '', 'C.D.I.', 1, '161'),
(162, '', 1, 'CORRE', 'REGIS', '10', 'RUE JOSEPH LANDELLE', '49140', 'SERMAISE', '', '', '', '29/04/1957', '14/08/1974', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(163, '', 2, 'COURSEAU', 'ANNE LAURE', '', 'LE GRAND MAGNOLET', '36330', 'ARTHON', '', '', '', '30/12/1993', '26/01/2015', '', '1', 'ASSURANCE QUALITE', '', '', 'Stagiaire Etude', 1, '161'),
(164, '', 1, 'COUTARD', 'MICHEL', '11', 'CHEM DE LA BIENVENUE', '49630', 'MAZE', '', '', '', '13/01/1959', '21/09/1981', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(165, '', 2, 'COZMA', 'RAMONA', '1', 'CHEMIN DU PRE DES PLANCHES', '49630', 'MAZE', '', '', '', '30/07/1988', '01/04/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(166, '', 1, 'CROS', 'FABIEN', '13', 'AVENUE DES PLANTAGENETS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '09/07/1981', '01/06/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(167, '', 1, 'CROS', 'MAXIME', '1', 'SQUARE EUGENE GILLOT', '49250', 'BEAUFORT EN VALLEE', '', '', '', '27/07/1990', '01/10/2002', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '161'),
(168, '', 1, 'DA SILVA', 'CHARLES', '', 'LA NAVETTE', '49140', 'BAUNE', '', '', '', '21/06/1994', '01/08/2014', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(169, '', 1, 'DAILLIERE', 'FRANCK', '', 'LA PERRAUDIERE', '49140', 'BAUNE', '', '', '', '09/06/1972', '03/06/1991', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '161'),
(170, '', 1, 'DAL MOLIN', 'REMY', '95', 'RUE PRINCIPALE', '49630', 'MAZE', '', '', '', '09/11/1962', '16/12/2009', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '161'),
(171, '', 2, 'DAVID', 'MONIQUE', '32', 'RUE DE TOULGOET', '49140', 'LUE EN BAUGEOIS', '', '', '', '28/06/1956', '26/12/1974', '', '1', 'STANDARD', '', '', 'C.D.I.', 1, '161'),
(172, '', 1, 'DAVIS', 'GILLES', '16', 'RTE DE GARDAMONT', '49630', 'MAZE', '', '', '', '28/09/1974', '02/05/1996', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(173, '', 1, 'DE LA CELLE', 'JEAN', '1190', 'LA BASSE BEUNAUDIERE', '49770', 'LA MEIGNANNE', '', '', '', '03/03/1990', '01/02/2015', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(174, '', 2, 'DEBELLY', 'JEANNE', '3', 'RUE DE L''ARSENAL', '49400', 'SAUMUR', '', '', '', '23/02/1954', '01/11/2000', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(175, '', 2, 'DECLE', 'CHRISTINE', '', 'LA ROUSSINIERE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '26/06/1965', '17/12/2001', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(176, '', 2, 'DELAIRE', 'SHIRLEY', '', 'LE PATIS', '49250', 'FONTAINE GUERIN', '', '', '', '26/04/1986', '01/06/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(177, '', 2, 'DELAROQUE', 'FANNY', '1', 'RUE LAFAYETTE', '54000', 'NANCY', '', '', '', '19/04/1989', '03/12/2014', '', '1', 'MARKETING', '', '', 'Stagiaire Etude', 1, '161'),
(178, '', 1, 'DELAUNAY', 'PHILIPPE', '19', 'RUE DU PRIEURE', '49140', 'BEAUVAU', '', '', '', '06/10/1973', '11/07/1997', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '161'),
(179, '', 1, 'DENIS', 'SERGE', '', 'LA BLINIERE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '13/08/1958', '21/09/1981', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(180, '', 1, 'DESVIGNES', 'GREGORY', '16', 'ROUTE DE MONTGEOFFROY', '49140', 'CORNILLE LES CAVES', '', '', '', '22/07/1991', '01/10/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(181, '', 1, 'DEZECOT', 'THIERRY', '4', 'RUE DES ACACIAS', '72800', 'COULONGE', '', '', '', '24/03/1972', '01/10/2013', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(182, '', 1, 'DITACROUTE', 'SYLVAIN', '5', 'SQUARE DE BELLEVUE', '49140', 'JARZE', '', '', '', '07/04/1960', '04/02/1997', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(183, '', 1, 'DITACROUTE', 'BERNARD', '', 'CHEMIN DES VIEUX PONTS', '49630', 'CORNE', '', '', '', '19/06/1984', '07/03/2005', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '161'),
(184, '', 1, 'DOBARD', 'YANNICK', '4', 'RUE DU MOULIN', '49250', 'BEAUFORT EN VALLEE', '', '', '', '20/06/1965', '27/10/1997', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(185, '', 1, 'DODIN', 'FRANCOIS', '7', 'RUE DU DR ALEXIS CARREL', '49150', 'CHEVIRE LE ROUGE', '', '', '', '26/05/1986', '01/04/2014', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(186, '', 1, 'DOHIN', 'THIERRY', '22', 'CHEMIN DE L''ORTIER', '49140', 'SOUCELLES', '', '', '', '14/03/1960', '01/11/2012', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(187, '', 1, 'DOINEAU', 'MICHEL', '2', 'RUE DES OISEAUX', '72200', 'BAZOUGE SUR LE LOIR', '', '', '', '29/01/1964', '19/01/2001', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(188, '', 2, 'DUBLE', 'AGATHE', '28', 'RUE DE LA GRAND MAISON', '49800', 'BRAIN SUR L AUTHION', '', '', '', '14/01/1966', '24/06/1991', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '161'),
(189, '', 1, 'DUBOIS', 'FABIEN', '6', 'RUE BOUCHETIERE', '49140', 'FONTAINE MILON', '', '', '', '17/04/1974', '22/05/1995', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(190, '', 1, 'DUPERRAY', 'VINCENT', '', 'LE BOULEROT', '43250', 'BEAUFORT EN VALLEE', '', '', '', '07/06/1985', '01/10/2004', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(191, '', 2, 'DURIEZ', 'LAURENCE', '47', 'RUE DES NOYERS', '49000', 'ANGERS', '', '', '', '08/03/1957', '20/10/2003', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(192, '', 1, 'DUVEAU', 'STEPHANE', '10', 'RUE DE LA PAIX', '49140', 'SERMAISE', '', '', '', '25/12/1978', '06/12/1999', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(193, '', 1, 'DUVEAU', 'MICKAEL', '16', 'RUE DE LA DOUVE AUX CHEVAU', '49250', 'BEAUFORT EN VALLEE', '', '', '', '24/07/1981', '20/01/2003', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(194, '', 1, 'ECOMARD', 'DOMINIQUE', '0', 'LA FAUVELLIERE', '49160', 'SAINT PHILBERT DU PEUPLE', '', '', '', '20/09/1980', '17/05/2004', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(195, '', 1, 'ESNAU', 'DAMIEN', '82', 'RUE DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '10/10/1983', '01/10/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(196, '', 1, 'FARINEAU', 'MICHEL', '16', 'RUE DU STADE', '49250', 'BRION', '', '', '', '06/09/1956', '10/06/2001', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '161'),
(197, '', 2, 'FATIA', 'JEREMY', '47', 'RUE COTE DE BELLEVUE', '49000', 'ANGERS', '', '', '', '02/06/1993', '01/12/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(198, '', 1, 'FAVREAU', 'GERARD', '14', 'SQUARE DES CALEIDES', '49000', 'ANGERS', '', '', '', '17/10/1953', '06/09/1995', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(199, '', 1, 'FERRIERE', 'YOHANN', '6', 'RUE PIERRE ET MARIE CURIE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '18/10/1988', '01/05/2009', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '161'),
(200, '', 1, 'FEVRIER', 'DAVID', '', 'CHEMIN DU PONT A L''OIE', '49150', 'ST MARTIN D ARCE', '', '', '', '24/10/1973', '13/06/1994', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(201, '', 1, 'FLAO', 'PATRICK', '1', 'CHEM DU CHATAIGNIER', '49150', 'ST MARTIN D ARCE', '', '', '', '08/03/1962', '02/05/2001', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(202, '', 2, 'FLORINEDA', 'PASCAL', '36', 'RUE DES POETES', '49630', 'CORNE', '', '', '', '27/05/1962', '09/01/2012', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(203, '', 1, 'FOIN', 'PHILIPPE', '', 'LES PETITES PRIMETIERE', '49140', 'JARZE', '', '', '', '08/12/1957', '15/08/1978', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(204, '', 2, 'FONTAINE', 'JUDITH', '', 'LA ROBINIERE', '49140', 'FONTAINE MILON', '', '', '', '11/07/1966', '30/05/1994', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.I.', 1, '161'),
(205, '', 1, 'FORTIER', 'THOMAS', '123', 'RUE EBLE', '49000', 'ANGERS', '', '', '', '17/06/1986', '23/06/2014', '', '1', 'CONTR?LE DE GESTION', '', '', 'C.D.D.', 1, '161'),
(206, '', 1, 'FOSSE', 'WILLY', '4', 'LES HAUTES BROSSES LOTIS LES CRINIERES II LOT 2', '49150', 'ECHEMIRE', '', '', '', '06/12/1973', '01/11/2000', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(207, '', 2, 'FOURMI', 'ANNA', '62', 'ROUTE DE PARIGNE L''EVEQUE', '72560', 'CHANGE', '', '', '', '09/05/1989', '16/09/2013', '', '1', 'ENTRETIEN', '', '', 'C.D.D.', 1, '161'),
(208, '', 1, 'FOURNIER', 'JOHNNY', '72', 'RUE NATIONALE', '49140', 'SEICHES SUR LE LOIR', '', '', '', '07/09/1990', '12/10/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(209, '', 2, 'FRAQUET', 'NATHALIE', '', 'LA RONCERIE', '49640', 'DAUMERAY', '', '', '', '15/01/1973', '09/04/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(210, '', 2, 'GAIGNARD', 'MARINA', '90', 'RUE SAUMUROISE RESIDENCE LA MADELEINE BAT B1', '49000', 'ANGERS', '', '', '', '13/04/1977', '01/07/2002', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '161'),
(211, '', 1, 'GANDILHON', 'DAMIEN', '14', 'CHEMIN DE LA JEANSELLERIE', '49140', 'VILLEVEQUE', '', '', '', '22/09/1990', '01/06/2011', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '161'),
(212, '', 2, 'GARNIER', 'AURELIE', '4', 'RUE D''ALSACE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '23/10/1983', '03/09/2007', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '161'),
(213, '', 1, 'GASTINEAU', 'ALEXIS', '12', 'LOTISSEMENT BEL AIR', '49150', 'CUON', '', '', '', '11/06/1989', '10/08/2009', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(214, '', 1, 'GHEZALI', 'LAMINE', '209', 'RUE SAINT LEONARD RES SAINT LAURENT C5 4 ETG 538', '49000', 'ANGERS', '', '', '', '28/11/1978', '01/10/2005', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(215, '', 1, 'GILBERT', 'DOMINIQUE', '179', 'RUE PRINCIPALE LES ALLEES RES SAINT LAURENT C5 4 ETG 538', '49630', 'MAZE', '', '', '', '02/01/1957', '04/07/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(216, '', 1, 'GIRARDEAU', 'VINCENT', '', 'TARTIFUME', '49250', 'BEAUFORT EN VALLEE', '', '', '', '16/06/1976', '02/06/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(217, '', 1, 'GIRAUD', 'ANTONY', '18', 'RUE DES MALPIQUES LE CLOS BAUJON', '49350', 'GENNES', '', '', '', '19/09/1988', '01/04/2012', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(218, '', 1, 'GODARD', 'FRANCK', '10', 'IMPASSE LOUIS CAMUS', '49140', 'FONTAINE MILON', '', '', '', '23/12/1984', '14/10/2003', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(219, '', 1, 'GODARD', 'GREGORY', '7', 'IMP DES PUISATIERS', '49630', 'MAZE', '', '', '', '10/02/1981', '30/05/1994', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(220, '', 2, 'GODARD', 'SANDRA', '7', 'IMPASSE DES PUISATIERS', '49630', 'MAZE', '', '', '', '14/02/1974', '20/06/2005', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(221, '', 1, 'GODET', 'VALENTIN', '1', 'RUE SAINT ETIENNE', '49100', 'ANGERS', '', '', '', '28/11/1989', '02/11/2012', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '161'),
(222, '', 2, 'GOIZET', 'NADEGE', '8', 'AV DES CHAMPS DE LA VILLE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '23/03/1976', '01/08/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(223, '', 1, 'GOUBARD', 'PATRICK', '685', 'ROUTE DE NOYAU LES CAVES', '49140', 'BAUNE', '', '', '', '28/11/1958', '06/06/1990', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(224, '', 2, 'GOUBARD', 'ANDREE', '685', 'ROUTE DE NOYAU LES CAVES', '49140', 'BAUNE', '', '', '', '27/11/1955', '08/04/1991', '', '1', 'MAGASIN', '', '', 'C.D.I.', 1, '161'),
(225, '', 2, 'GOUJON', 'CHRISTINE', '16', 'RUE PROUST', '49100', 'ANGERS', '', '', '', '21/02/1962', '01/09/2009', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(226, '', 2, 'GRONFOT', 'VIRGINIE', '8', 'RUE DE LA CADORIERE', '49150', 'CHEVIRE LE ROUGE', '', '', '', '09/12/1983', '01/11/2009', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '161'),
(227, '', 1, 'GROSBOIS', 'MAXIME', '11', 'RUE PRINCIPALE', '49250', 'GEE', '', '', '', '20/06/1958', '01/03/1977', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(228, '', 1, 'GUEROUX', 'LAURENT', '4', 'CHEMIN DU PASSEUR', '49130', 'SAINTE GEMMES SUR LOIRE', '', '', '', '08/01/1980', '05/01/2015', '', '1', 'ENTRETIEN', '', '', 'C.D.D.', 1, '161'),
(229, '', 1, 'GUERROUDJ', 'MERZAK', '117', 'RUE FRICOTELLE', '49400', 'SAUMUR', '', '', '', '30/03/1977', '05/01/2015', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(230, '', 1, 'GUICHARD', 'ALAIN', '61', 'RTE DE FAYET', '49630', 'MAZE', '', '', '', '29/12/1958', '03/03/1980', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(231, '', 1, 'GUIET', 'FREDERIC', '3', 'RUE BARBARA STERLING', '49124', 'SAINT BARTHELEMY D ANJOU', '', '', '', '04/02/1971', '13/02/1996', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '161'),
(232, '', 2, 'GUIHO', 'MELODY', '10', 'SQUARE MAURICE ASSELIN', '49480', 'SAINT SYLVAIN D ANJOU', '', '', '', '31/12/1989', '14/03/2013', '', '1', 'DRH', '', '', 'C.D.I.', 1, '161'),
(233, '', 1, 'GUILLET', 'THIBAULT', '121', 'TER AV DU GENERAL PATTON', '49000', 'ANGERS', '', '', '', '22/04/1984', '04/12/2006', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(234, '', 2, 'HAMARD', 'JOSETTE', '', 'LE MONTIL', '49250', 'LA MENITRE', '', '', '', '21/12/1958', '29/04/1991', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(235, '', 1, 'HAMELIN', 'JASON', '', 'LIEU DIT L HUMAUCHAIS', '49140', 'CORZE', '', '', '', '07/01/1992', '01/10/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(236, '', 1, 'HAMONIER', 'OLIVIER', '3', 'RUE DES ROULIERES', '49140', 'LA CHAPELLE ST LAUD', '', '', '', '26/03/1971', '05/04/1991', '', '1', 'ULTRA-FILTRATION', '', '', 'C.D.I.', 1, '161'),
(237, '', 1, 'HERMITEAU', 'SIMON', '9', 'PLACE DE L AN 2000', '49140', 'BAUNE', '', '', '', '21/11/1992', '01/01/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(238, '', 2, 'HOFFMAN', 'ALIX', '7', 'RUE DE LA LIBERTE', '91600', 'SAVIGNY SUR ORGE', '', '', '', '13/12/1993', '02/02/2015', '', '1', 'DIRECTION USINE', '', '', 'Stagiaire Etude', 1, '161'),
(239, '', 1, 'HONORE', 'EMILE', '6', 'IMPASSE DE LA PICOTERIE', '49070', 'BEAUCOUZE', '', '', '', '12/09/1956', '01/09/1984', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(240, '', 2, 'HURSON BANGOURA', 'NICOLE', '30', 'RUE DE LA CHAPELLE', '49150', 'ECHEMIRE', '', '', '', '26/04/1959', '19/02/2001', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(241, '', 1, 'HY', 'DIMITRI', '28', 'RUE DES HIRONDELLES', '49250', 'BEAUFORT EN VALLEE', '', '', '', '09/03/1985', '07/03/2005', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(242, '', 1, 'JARRY', 'JEAN MARC', '112', 'RUE ROYALE', '49630', 'CORNE', '', '', '', '07/07/1964', '03/01/2005', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '161'),
(243, '', 1, 'JAZIRI', ' MAHDI', '26', 'RUE DU MARECHAL LECLERC', '49240', 'AVRILLE', '', '', '', '04/01/1973', '07/02/2011', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(244, '', 1, 'JEFFRARD', 'ROBERT', '19', 'RUE DE LA CROIX DE BOIS', '49800', 'BRAIN SUR L AUTHION', '', '', '', '12/03/1964', '01/07/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(245, '', 1, 'JOBIN', 'OLIVIER', '27', 'RUE PRINCIPALE', '49490', 'AUVERSE', '', '', '', '01/09/1973', '01/01/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(246, '', 2, 'JOLY', 'NADIA', '', 'LA CHARTRIE', '49160', 'ST PHILBERT DU PEUPLE', '', '', '', '28/06/1963', '01/05/2003', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(247, '', 1, 'JOSSELIN', 'ANTHONY', '38', 'RUE LEON BLUM', '49800', 'TRELAZE', '', '', '', '30/10/1987', '02/04/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(248, '', 1, 'JOUIN', 'JEAN PHILIPPE', '20', 'RUE GUERIN DES FONTAINES', '49150', 'BAUGE', '', '', '', '29/11/1971', '06/11/2000', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(249, '', 1, 'JOUIN', 'BRUNO', '88', 'RTE DE FAYET', '49630', 'MAZE', '', '', '', '17/07/1968', '08/04/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(250, '', 1, 'JOUSSET', 'JACQUES', '16', 'CHEMIN DE LA PICAUDIERE', '49630', 'MAZE', '', '', '', '18/01/1963', '17/10/1980', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(251, '', 1, 'JOUSSET', 'SEBASTIEN', '', 'LIEU DIT CESNE', '49140', 'BAUNE', '', '', '', '17/02/1989', '03/08/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(252, '', 1, 'JUBAULT', 'DAMIEN', '13', 'RUE DU TERTRE', '49250', 'BRION', '', '', '', '16/11/1979', '02/06/2003', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '161'),
(253, '', 2, 'JURET', 'LAURENCE', '4', 'RUE RACINE', '49500', 'SEGRE', '', '', '', '04/07/1970', '03/05/2004', '', '1', 'DIRECTION USINE', '', '', 'C.D.I.', 1, '161'),
(254, '', 1, 'KEBANGA', 'OUMAR IBRAHIM', '99', 'AVENUE DU GENERAL PATTON', '49000', 'ANGERS', '', '', '', '08/08/1976', '23/10/2006', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(255, '', 1, 'KHOUMSI', 'MUSTAPHA', '6', 'RUE EDGAR DEGAS, LES VILLAS DU PARC', '49800', 'BRAIN SUR L AUTHION', '', '', '', '12/11/1974', '12/01/2004', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(256, '', 1, 'LAIGLE', 'DAMIEN', '', 'LA BELLANGERIE', '49430', 'DURTAL', '', '', '', '05/07/1977', '01/10/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(257, '', 2, 'LAMBERT', 'NATHALIE', '13', 'RUE DU TERTRE', '49250', 'BRION', '', '', '', '07/04/1981', '04/10/2004', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '161'),
(258, '', 1, 'LANGINIER', 'BRUNO', '10', 'RUE DE LA PISTOLE', '49150', 'LE VIEIL BAUGE', '', '', '', '08/07/1962', '01/03/1986', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '161'),
(259, '', 1, 'LASSAY', 'ANTHONY', '3', 'RUE PIERRE CHANTELOUP', '49140', 'BAUNE', '', '', '', '23/03/1988', '05/01/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(260, '', 2, 'LE CALVEZ', 'AMBRE', '30', 'RUE DE LA VIEILLE LEVEE', '49800', 'LA DAGUENIERE', '', '', '', '20/02/1984', '01/09/2011', '', '1', 'DRH', '', '', 'C.D.I.', 1, '161'),
(261, '', 1, 'LE CARDIEC', 'OLIVIER', '6', 'IMPASSE DU CLOITRE', '49630', 'MAZE', '', '', '', '27/12/1961', '25/06/1990', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(262, '', 2, 'LE MENN', 'MARINE', '4', 'RUE GUSTAVE MAREAU', '49000', 'ANGERS', '', '', '', '15/10/1988', '05/12/2012', '', '1', 'TECHNIQUE', '', '', 'C.D.I.', 1, '161'),
(263, '', 1, 'LE PETITCORPS', 'LAURENT', '5', 'RUE DES ERABLES', '49490', 'AUVERSE', '', '', '', '03/10/1969', '01/11/1991', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(264, '', 2, 'LEBLOIS', 'MAGALI', '79', 'ROUTE DE TOURS', '49490', 'NOYANT', '', '', '', '24/01/1976', '27/11/1997', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(265, '', 2, 'LEBOUC', 'CHRISTELLE', '12', 'ALLEE DES BLEUETS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '23/01/1971', '01/02/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(266, '', 1, 'LEBOUCHER', 'JOHN', '1', 'RUE D''ANJOU', '49250', 'SAINT MATHURIN', '', '', '', '16/06/1982', '14/06/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(267, '', 1, 'LECONTE', 'JEAN LUC', '14', 'RUE NATIONALE', '49140', 'SEICHES SUR LE LOIR', '', '', '', '18/08/1967', '01/07/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(268, '', 1, 'LECROISEY', 'LIONEL', '0', 'LA LANDE PLATE', '49160', 'JUMELLES', '', '', '', '13/11/1959', '01/01/1987', '', '1', 'TECHNIQUE', '', '', 'C.D.I.', 1, '161'),
(269, '', 1, 'LEGENDRE', 'XAVIER', '47', 'RUE JULIEN DAILLERE', '49140', 'BAUNE', '', '', '', '14/12/1958', '16/05/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(270, '', 2, 'LEGENDRE', 'ANITA', '10', 'RUE DES NOISETIERS', '49140', 'BAUNE', '', '', '', '26/01/1971', '07/04/1975', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(271, '', 2, 'LEGENDRE', 'PATRICIA', '', 'LA CROIX VERTE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '18/12/1974', '06/11/2000', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.I.', 1, '161'),
(272, '', 2, 'LEGENDRE', 'NATHALIE', '4', 'ALLEE DES COUDRIERS', '49630', 'MAZE', '', '', '', '03/06/1962', '25/04/1994', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(273, '', 2, 'LELIEVRE', 'BENJAMIN', '69', 'RUE DU PRE PIGEON', '49100', 'ANGERS', '', '', '', '11/09/1991', '01/11/2013', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(274, '', 1, 'LEMOINE', 'GREGORY', '11', 'IMPASSE DES FILETOUPIERS', '49630', 'MAZE', '', '', '', '05/12/1984', '05/01/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(275, '', 1, 'LENOIR', 'PATRICE', '14', 'RUE DES MOULINS', '49800', 'SARRIGNE', '', '', '', '22/02/1957', '23/10/2006', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(276, '', 2, 'LENON', 'EMILIE', '46', 'RUE J.B FOURCAULT', '49800', 'TRELAZE', '', '', '', '29/10/1987', '26/05/2014', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.D.', 1, '161'),
(277, '', 1, 'LEPAGE', 'REMI', '4', 'RTE DES MARZELLES, LA ROCHE FOULQUES', '49140', 'SOUCELLES', '', '', '', '20/01/1961', '01/04/1982', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '161'),
(278, '', 1, 'LEROUX', 'MICHEL', '11', 'ROUTE DES ROSIERS', '49250', 'ST GEORGES DU BOIS', '', '', '', '13/06/1968', '31/05/1991', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(279, '', 2, 'LESELLIER', 'JULIE', '4', 'RUE SAINT JACQUES', '49250', 'BEAUFORT EN VALLEE', '', '', '', '17/07/1994', '08/09/2014', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.D. (Formation)', 1, '161'),
(280, '', 1, 'LESSIAU', 'JEAN MARC', '7', 'RUE DES ACACIAS', '49140', 'BAUNE', '', '', '', '07/01/1969', '05/06/2000', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '161'),
(281, '', 1, 'LHOPITEAU', 'RAPHAEL', '12', 'RUE DES CHATAIGNIERS', '49160', 'BLOU', '', '', '', '12/04/1979', '10/08/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(282, '', 1, 'LICOIS', 'JEAN LOUIS', '0', 'LES TROIS ORMEAUX', '49250', 'BRION', '', '', '', '23/05/1987', '05/10/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(283, '', 2, 'LICOIS', 'CELINE', '17', 'PLACE JEANNE DE LAVAL', '49250', 'BEAUFORT EN VALLEE', '', '', '', '17/09/1981', '01/06/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(284, '', 2, 'LICOIS', 'DELPHINE', '', 'ROUTE DE GEE', '49250', 'FONTAINE GUERIN', '', '', '', '17/08/1961', '05/10/2009', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(285, '', 1, 'LICOIS', 'FREDERIC', '', 'ROUTE DE GEE', '49250', 'FONTAINE GUERIN', '', '', '', '29/08/1984', '01/10/2011', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(286, '', 1, 'LOPEZ', 'RENAUD', '16', 'RUE DE LA REUX', '49124', 'SAINT BARTHELEMY D ANJOU', '', '', '', '27/06/1989', '07/02/2011', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(287, '', 1, 'LORET', 'JIMMY', '3', 'ROUTE DES PEUPLIERS', '49490', 'LASSE', '', '', '', '18/10/1980', '01/10/2011', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(288, '', 2, 'LORET', 'BRIGITTE', '40', 'RUE DE LA PETITE PORTE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '24/08/1980', '19/02/2001', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(289, '', 1, 'LORET', 'TEDDY', '40', 'RUE DE LA PETITE PORTE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '05/09/1989', '01/10/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(290, '', 1, 'MAHOT', 'PATRICK', '9', 'RUE DES ACCACIAS', '49140', 'BAUNE', '', '', '', '27/05/1960', '15/05/1979', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(291, '', 1, 'MAILLET', 'DANIEL', '', 'LE PIGEON BLANC', '72800', 'LE LUDE', '', '', '', '21/01/1966', '06/03/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(292, '', 1, 'MAINGOT', 'ARSENE', '7', 'RUE DES DEUX DOUVES', '49370', 'BECON LES GRANITS', '', '', '', '02/03/1957', '07/02/2011', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '161'),
(293, '', 2, 'MARAIS', 'MARIE LUCE', '17', 'RUE DES ACACIAS', '49140', 'BAUNE', '', '', '', '30/01/1963', '04/07/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(294, '', 1, 'MARCHAND', 'JEAN-CHRISTOPHE', '22', 'RUE ROUGET DE L''ISLE', '49130', 'PONT DE CE', '', '', '', '17/08/1975', '04/01/2005', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(295, '', 1, 'MARCHAND', 'SEBASTIEN', '11', 'RUE DU PILIER CARRE', '49800', 'ANDARD', '', '', '', '02/05/1986', '05/07/2010', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(296, '', 1, 'MARTIN', 'LAURENT', '20', 'CHE DE SALVERT', '49140', 'FONTAINE MILON', '', '', '', '09/12/1971', '13/10/1997', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(297, '', 1, 'MASSE', 'OLIVIER', '3', 'IMP DES PETUNIAS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '10/01/1981', '01/10/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(298, '', 2, 'MASSE', 'SYLVIE', '3', 'IMP DES PETUNIAS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '10/06/1973', '07/10/1996', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(299, '', 2, 'MASSIP', 'AUDREY', '8', 'IMPASSE SAINT CHARLES', '49100', 'ANGERS', '', '', '', '05/08/1984', '01/12/2008', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.I.', 1, '161'),
(300, '', 2, 'MAUXION', 'ANITA', '', 'RUE DE LA PERRAUDIERE', '49140', 'LUE EN BAUGEOIS', '', '', '', '24/07/1968', '15/01/2001', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(301, '', 1, 'MEFFRAY', 'FRANCK', '9', 'RUE DE LA FOSSE AU CURE', '49140', 'MARCE', '', '', '', '01/08/1973', '26/04/2011', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '161'),
(302, '', 1, 'MENARD', 'CLAUDE', '11', 'IMPASSE LOUIS CAMUS', '49140', 'FONTAINE MILON', '', '', '', '12/04/1959', '16/06/1997', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(303, '', 1, 'MERCIER', 'JACKY', '2', 'PLACE DES ACACIAS', '49150', 'LE VIEIL BAUGE', '', '', '', '29/10/1958', '01/03/1986', '', '1', 'EMBAL 1ER ENCADREMENT', '', '', 'C.D.I.', 1, '161'),
(304, '', 1, 'MILCENT', 'FREDERIC', '', 'LES NAVRANS', '72200', 'LA FLECHE', '', '', '', '20/11/1969', '01/11/2012', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(305, '', 1, 'MILOCHE', 'SYLVAIN', '3', 'RUE DE LA CLE DES CHAMPS', '49390', 'MOULIHERNE', '', '', '', '27/06/1973', '05/01/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(306, '', 1, 'MILOUDI', 'SAMIR', '8', 'RUE MENELICK', '49000', 'ANGERS', '', '', '', '25/10/1982', '12/10/2010', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(307, '', 1, 'MOREAU', 'PHILIPPE', '20', 'CITE DES OEILLETS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '18/06/1966', '17/02/1997', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(308, '', 1, 'MORIN', 'ALAIN', '56', 'CHEMIN DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '05/07/1959', '01/08/1977', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(309, '', 1, 'MORTIER', 'JEAN YVES', '', 'PARC RTE DE LA FLECHE', '49150', 'ST MARTIN D ARCE', '', '', '', '09/12/1959', '26/04/1976', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(310, '', 1, 'MOUNIER', 'MATTHIEU', '2', 'RUE DE BEAUVAL', '49000', 'ANGERS', '', '', '', '04/07/1977', '01/08/2007', '', '1', 'CONTR?LE DE GESTION', '', '', 'C.D.I.', 1, '161'),
(311, '', 2, 'NEVOUX', 'ISABELLE', '', 'LE BOIS JARRY', '49800', 'SARRIGNE', '', '', '', '28/01/1967', '14/06/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(312, '', 2, 'ONILLON', 'VANESSA', '7', 'RUE PIERRE ROISSE', '49250', 'GEE', '', '', '', '15/06/1984', '01/07/2013', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(313, '', 1, 'OTMANE CHERIF', 'MOHAMED LAMINE', '1', 'BOULEVARD SCHUMAN', '49100', 'ANGERS', '', '', '', '02/03/1977', '01/03/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(314, '', 1, 'PALLIER', 'YANN', '', 'LE FOURNEAU', '49140', 'LA CHAPELLE SAINT LAUD', '', '', '', '21/08/1984', '01/04/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(315, '', 2, 'PAPILLON', 'AUDREY', '', 'LA BRISE', '49250', 'BRION', '', '', '', '17/03/1986', '01/12/2008', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '161'),
(316, '', 1, 'PAPIN', 'BENJAMIN', '', 'LA RUE CREUSE', '49250', 'FONTAINE GUERIN', '', '', '', '13/04/1990', '14/06/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(317, '', 1, 'PASSEBON', 'AURELIEN', '19', 'CHEMIN DES HUAUX', '49350', 'ST GEORGES DES SEPT VOIES', '', '', '', '11/07/1984', '09/01/2012', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(318, '', 2, 'PASTEUR', 'MURIEL', '', 'LA HAUTE FOLIE', '49150', 'PONTIGNE', '', '', '', '29/11/1971', '08/10/1990', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(319, '', 1, 'PAUMIER', 'PASCAL', '206', 'RUE PRINCIPALE', '49250', 'MAZE', '', '', '', '02/09/1961', '02/04/1994', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(320, '', 1, 'PAVIOT', 'WILLY', '15', 'RUE TRAVERSIERE', '49160', 'LONGUE JUMELLES', '', '', '', '12/12/1981', '17/08/2009', '', '1', 'MAGASIN', '', '', 'C.D.I.', 1, '161'),
(321, '', 1, 'PAVIOT', 'MICKAEL', '', 'LES TROIS ORMEAUX', '49250', 'BRION', '', '', '', '24/12/1986', '04/09/2006', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(322, '', 2, 'PAVIOT', 'AURELIE', '15', 'RUE TRAVERSIERE', '49160', 'LONGUE JUMELLES', '', '', '', '18/01/1985', '01/10/2011', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(323, '', 2, 'PAYMAL', 'SOPHIE', '', 'CHEMIN DE VAUX, LE PRE', '49140', 'LUE EN BAUGEOIS', '', '', '', '14/02/1970', '01/11/2000', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(324, '', 2, 'PERDRIAU', 'VALERIE', '11', 'RUE DES PETITES BEAUSSES', '49630', 'MAZE', '', '', '', '10/07/1971', '05/06/1990', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(325, '', 1, 'PERDRIX', 'LAWRENCE', '1', 'SQUARE DU BREUIL', '49150', 'ECHEMIRE', '', '', '', '26/02/1966', '18/09/2006', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(326, '', 1, 'PERPOIL', 'JEAN MARIE', '8', 'RUE DES ROSES', '49140', 'BAUNE', '', '', '', '14/09/1956', '01/07/1974', '', '1', 'MAGASIN', '', '', 'C.D.I.', 1, '161'),
(327, '', 1, 'PICOULEAU', 'STEPHANE', '63', 'NOTRE DAME DU LAC', '49000', 'ANGERS', '', '', '', '08/11/1971', '01/04/2003', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(328, '', 1, 'PINSON', 'PHILIPPE', '', 'LA FOURCELLE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '13/12/1963', '01/11/2011', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(329, '', 1, 'PIOTET', 'GERALD', '', 'RUE DE LA FONTAINE', '49140', 'FONTAINE MILON', '', '', '', '09/09/1969', '01/11/2000', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(330, '', 1, 'PITON', 'BRUNO', '', 'RUE DAVID D ANGERS', '49140', 'FONTAINE MILON', '', '', '', '13/12/1974', '02/05/1996', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(331, '', 2, 'PIVERT', 'MARTINE', '35', 'CHEMIN DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '29/04/1959', '01/08/1978', '', '1', 'ASSURANCE QUALITE', '', '', 'C.D.I.', 1, '161'),
(332, '', 1, 'PLACAIS', 'ARNAUD', '98', 'RUE DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '17/11/1981', '28/06/2010', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(333, '', 1, 'PLECIS', 'JOEL', '54', 'RUE DU MARECH. LECLERC', '49250', 'BEAUFORT EN VALLEE', '', '', '', '04/05/1954', '03/02/1978', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(334, '', 1, 'POCHARD', 'STEPHANE', '16', 'RUE GRAND MAISON', '49800', 'BRAIN SUR L AUTHION', '', '', '', '24/09/1961', '01/08/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(335, '', 1, 'POIRIER', 'STEPHANE', '29', 'ROUTE DU CH?TEAU, LE CLOS', '49630', 'MAZE', '', '', '', '20/12/1971', '11/12/2000', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(336, '', 1, 'POMMIER', 'XAVIER', '10', 'RUE DE L EGLISE', '49150', 'LE VIEIL BAUGE', '', '', '', '27/01/1980', '01/07/2011', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(337, '', 1, 'PONS', 'FABIEN', '8', 'RUE EDOUARD BRANLY', '49800', 'TRELAZE', '', '', '', '01/08/1982', '01/10/2013', '', '1', 'TECHNIQUE', '', '', 'C.D.I.', 1, '161'),
(338, '', 2, 'POULALION', 'MARIE ODILE', '44', 'RTE DE BAUNE', '49630', 'CORNE', '', '', '', '03/10/1961', '16/05/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(339, '', 1, 'POUPIN', 'MICHEL', '5', 'RUE DES RICHAUDETS', '49150', 'CHEVIRE LE ROUGE', '', '', '', '01/07/1960', '28/06/1976', '', '1', '1ER ENCADR. AFFINAGE', '', '', 'C.D.I.', 1, '161'),
(340, '', 2, 'PROTIN', 'HELENE', '256', 'RUE LOUIS BLANC', '49100', 'ANGERS', '', '', '', '13/07/1979', '21/10/2002', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(341, '', 1, 'QUETTIER', 'NATHANAEL', '3', 'BOULEVARD YVONNE POIREL', '49000', 'ANGERS', '', '', '', '20/10/1988', '27/08/2011', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '161'),
(342, '', 1, 'RABEL', 'ALAIN', '1', 'CLOS DE L EPINE L OREE DU BOIS', '49140', 'CORNILLE LES CAVES', '', '', '', '26/02/1956', '05/12/1999', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '161'),
(343, '', 2, 'RABOUIN', 'CECILE', '10', 'CHEM DE LA BATAILLE', '49150', 'LE VIEIL BAUGE', '', '', '', '05/02/1972', '14/04/2003', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '161'),
(344, '', 1, 'RAIMBAULT', 'YVES', '1', 'PL POL LE TELLIER', '49250', 'BEAUFORT EN VALLEE', '', '', '', '28/10/1969', '12/06/2000', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(345, '', 2, 'RAOUI', 'BOUCHRA', '76', 'RUE DES ARTILLEURS', '49100', 'ANGERS', '', '', '', '01/06/1979', '01/09/2012', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(346, '', 2, 'RAPICAULT', 'JOCELYNE', '54', 'RTE DE BAUNE', '49630', 'CORNE', '', '', '', '07/09/1962', '04/07/1994', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(347, '', 2, 'RATEAU', 'MATHILDE', '12', 'RUE GASTON JOGUET', '49150', 'CHEVIRE LE ROUGE', '', '', '', '08/03/1988', '14/06/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(348, '', 1, 'RATEAU', 'DOMINIQUE', '8', 'RUE DES VENDELLIERES', '49250', 'LA MENITRE', '', '', '', '15/07/1957', '01/10/1978', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '161'),
(349, '', 2, 'REDCENT', 'WENDY', '', 'L HERMENOTIERE', '49250', 'BEAUFORT EN VALLEE', '', '', '', '09/07/1981', '01/10/2001', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161');
INSERT INTO `salarie` (`idsalarie`, `matricule`, `civilite_salarie`, `nom_salarie`, `prenom_salarie`, `adresse1_salarie`, `adresse2_salarie`, `cp_salarie`, `ville_salarie`, `tel_salarie`, `port_salarie`, `mail_salarie`, `date_naissance`, `entre_salarie`, `sortie_salarie`, `status`, `poste_salarie`, `indice_salarie`, `commentaire`, `contrat`, `etat_salarie`, `solde_salarie`) VALUES
(350, '', 1, 'REINE', 'JEAN PIERRE', '55', 'ROUTE DE SEICHES', '49630', 'MAZE', '', '', '', '21/07/1960', '01/06/2013', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(351, '', 2, 'RENAULT', 'ISABELLE', '14', 'RUE RENE GAUDICHEAU', '49700', 'DOUE LA FONTAINE', '', '', '', '03/10/1972', '02/10/2006', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(352, '', 1, 'REPUSSARD', 'ALAIN', '64', 'RUE GEORGES CLEMENCEAU', '49150', 'BAUGE', '', '', '', '02/04/1955', '21/06/2004', '', '1', 'FAB D2', '', '', 'C.D.I.', 1, '161'),
(353, '', 2, 'REZARD', 'AMELIE', '75', 'RUE DE PRE PIGEON', '49000', 'ANGERS', '', '', '', '24/11/1981', '03/07/2006', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(354, '', 1, 'RICHARD', 'JULIEN', '1', 'ROUTE DU MILIEU', '49630', 'MAZE', '', '', '', '15/01/1989', '06/09/2010', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(355, '', 1, 'RIVIERE', 'STEPHANIE', '', 'CHEMIN DU RANCAN', '49150', 'BAUGE', '', '', '', '13/12/1987', '01/03/2011', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(356, '', 1, 'ROCHE', 'CHRISTOPHE', '8', 'RUE DES NOISETIERS', '49140', 'BAUNE', '', '', '', '06/07/1968', '26/06/1989', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(357, '', 1, 'ROCHER', 'YANNICK', '56', 'RUE DE MILNGAVIE', '49150', 'BAUGE', '', '', '', '04/01/1959', '01/02/2005', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(358, '', 2, 'RODRIGUES', 'FERNANDO', '3', 'RUE GUSTAVE FLAUBERT', '49100', 'ANGERS', '', '', '', '06/07/1972', '05/01/2009', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(359, '', 1, 'RONCIER', 'PATRICE', '1', 'LOTISSEMENT DU ROCHER', '49140', 'CHAUMONT D ANJOU', '', '', '', '29/05/1968', '02/10/2000', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(360, '', 2, 'ROUE', 'SOPHIE', '', 'LES BARBELLIERES', '49140', 'JARZE', '', '', '', '05/11/1989', '08/11/2010', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(361, '', 1, 'ROUILLARD', 'THIERRY', '4', 'RTE DEPARTEMENTALE 347', '49630', 'CORNE', '', '', '', '01/05/1961', '05/10/1981', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '161'),
(362, '', 2, 'ROUSSEAU', 'EMILIE', '7', 'CHEMIN DE MONTEURAULT', '49630', 'MAZE', '', '', '', '19/02/1982', '01/03/2008', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(363, '', 1, 'ROUSSEL', 'REGIS', '6', 'RUE DE BRETIGNE, LOT DES HAUTS DE BRETIGNE', '49140', 'VILLEVEQUE', '', '', '', '20/12/1973', '01/10/2013', '', '1', 'TECHNIQUE', '', '', 'C.D.I.', 1, '161'),
(364, '', 1, 'ROZAT', 'ERIC', '13', 'RUE DU PETIT PARIS', '49630', 'MAZE', '', '', '', '09/10/1961', '13/01/2003', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(365, '', 1, 'SALMON', 'CHRISTOPHE', '180', 'BIS RUE PRINCIPALE', '49630', 'MAZE', '', '', '', '16/06/1970', '05/08/1991', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(366, '', 1, 'SCHILLINGER', 'FREDERIC', '1', 'RUE DES MARRONNIERS', '49290', 'CHAUDEFONDS SUR LAYON', '', '', '', '04/04/1967', '03/06/2013', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(367, '', 1, 'SEBILLE', 'GAETAN', '4', 'RUE DE CHANDELAIS', '49150', 'BOCE', '', '', '', '07/10/1970', '16/06/1994', '', '1', 'LOGISTIQUE TRANSPORT', '', '', 'C.D.I.', 1, '161'),
(368, '', 1, 'SENO', 'JEAN PIERRE', '', 'LA HOUSSIERE', '49390', 'MOULIHERNE', '', '', '', '28/05/1960', '01/11/2000', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(369, '', 1, 'SOURDEAU', 'GILLES', '', 'L OUCHE AU BLE', '49150', 'ST MARTIN D ARCE', '', '', '', '04/06/1964', '02/05/1996', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(370, '', 1, 'TALASZKA', 'ANTOINE', '7', 'RUE DES VOLONTAIRES', '49130', 'LES PONTS DE CE', '', '', '', '29/11/1995', '22/09/2014', '', '1', 'ENTRETIEN', '', '', 'C.D.D. (Formation)', 1, '161'),
(371, '', 1, 'THEVENET', 'CHRISTOPHE', '33', 'RUE DES CHARMES', '49800', 'BRAIN SUR L AUTHION', '', '', '', '28/07/1966', '02/10/1989', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(372, '', 2, 'THIBAULT', 'RACHEL', '10', 'RUE PIERRE BROSSOLETTE', '49000', 'ANGERS', '', '', '', '19/02/1991', '01/08/2014', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.D.', 1, '161'),
(373, '', 1, 'THIBAULT', 'DIDIER', '2', 'RUE DES LOGES', '49310', 'TANCOIGNE', '', '', '', '05/12/1971', '07/02/2011', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(374, '', 2, 'THIBERGE', 'MARIE CLAUDE', '16', 'RUE DES HAUTS CHAMPS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '28/08/1964', '01/10/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(375, '', 2, 'THOMAS', 'NELLY', '40', 'RUE DE LA CROIX BOIS', '49800', 'BRAIN SUR L AUTHION', '', '', '', '14/06/1967', '08/03/1994', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(376, '', 1, 'THOMAS', 'EMMANUEL', '40', 'RUE DE LA CROIX DE BOIS', '49800', 'BRAIN SUR L AUTHION', '', '', '', '25/02/1971', '10/12/1990', '', '1', 'LABORATOIRE', '', '', 'C.D.I.', 1, '161'),
(377, '', 1, 'THOMPSON', 'OTHON', '87', 'BAT E RUE DE BANCHAIS', '49100', 'ANGERS', '', '', '', '10/11/1973', '01/10/2005', '', '1', 'RAMASSAGE', '', '', 'C.D.I.', 1, '161'),
(378, '', 2, 'THUAL', 'LUCIE', '46', 'RUE JEAN BAPTISTE FOURCAUL', '49800', 'TRELAZE', '', '', '', '20/05/1989', '21/01/2014', '', '1', '1ER ENCADR. FABRICATION', '', '', 'C.D.I.', 1, '161'),
(379, '', 1, 'TIRLET', 'CHRISTOPHER', '', 'LE VERDELET', '49390', 'MOULIHERNE', '', '', '', '21/07/1987', '01/04/2009', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(380, '', 1, 'TRANCHANT', 'DOMINIQUE', '', 'CHEMIN DES AIRAULTS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '03/11/1963', '17/09/1981', '', '1', 'RECHERCHE ET DEVELOPPEMENT', '', '', 'C.D.I.', 1, '161'),
(381, '', 1, 'TRANCHANT', 'ERIC', '5', 'SQUARE HENRI BECQUEREL', '49800', 'TRELAZE', '', '', '', '19/05/1967', '01/06/1990', '', '1', 'FAB D2', '', '', 'C.D.I.', 1, '161'),
(382, '', 2, 'TROST', 'NADIA', '11', 'ROUTE D''ANGERS', '49250', 'BEAUFORT EN VALLEE', '', '', '', '25/12/1983', '01/10/2002', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(383, '', 1, 'TROST', 'STEVEN', '191', 'RUE ELISEE RECLUS', '49800', 'TRELAZE', '', '', '', '28/10/1987', '16/08/2010', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(384, '', 1, 'TROST', 'ANTHONY', '191', 'RUE ELISEE RECLUS', '49800', 'TRELAZE', '', '', '', '16/01/1968', '01/06/2014', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(385, '', 2, 'TURPIN', 'CHRISTINE', '21', 'ROUTE DE LA ROCHE', '49630', 'MAZE', '', '', '', '01/08/1960', '02/03/1977', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(386, '', 1, 'VATTAT', 'CHRISTOPHE', '6', 'RUE SAINT PIERRE', '49140', 'VILLEVEQUE', '', '', '', '27/04/1967', '22/04/1991', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(387, '', 1, 'VENERIA', 'JEAN MICHEL', '36', 'RTE DE LA ROCHE', '49630', 'MAZE', '', '', '', '22/01/1972', '01/01/1998', '', '1', 'ENTRETIEN', '', '', 'C.D.I.', 1, '161'),
(388, '', 2, 'VERBELEN', 'NATHALIE', '', 'POUILLE', '49630', 'MAZE', '', '', '', '26/08/1972', '04/11/1996', '', '1', 'EMBALLAGE MOD', '', '', 'C.D.I.', 1, '161'),
(389, '', 1, 'VERGER', 'BRUNO', '22', 'ALLEE JACQUES BREL', '72800', 'LE LUDE', '', '', '', '14/01/1969', '01/12/2013', '', '1', 'MAGASIN', '', '', 'C.D.I.', 1, '161'),
(390, '', 1, 'VERGNAUD', 'PHILIPPE', '12', 'SQUARE DE PROVENCE', '49140', 'SEICHES SUR LE LOIR', '', '', '', '16/10/1972', '01/02/2011', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(391, '', 1, 'VINCENT', 'LAURENT', '9', 'ROUTE DE LA COUTURE', '49630', 'MAZE', '', '', '', '04/04/1968', '18/08/2003', '', '1', 'ATELIER SUD', '', '', 'C.D.I.', 1, '161'),
(392, '', 1, 'VINCENT', 'THIERRY', '1', 'CLOS DE LA PERCHARDIERE', '49320', 'BLAISON GOHIER', '', '', '', '29/03/1961', '21/05/2001', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(393, '', 1, 'VINEAU', 'OLIVIER', '17', 'RUE HECTOR BERLIOZ', '49124', 'LE PLESSIS GRAMMOIRE', '', '', '', '28/10/1973', '02/05/1996', '', '1', 'AFFINAGE MOD', '', '', 'C.D.I.', 1, '161'),
(394, '', 1, 'VOLUETTE', 'GILLES', '', 'LES BROSSAIS', '49150', 'ECHEMIRE', '', '', '', '13/06/1974', '04/02/1997', '', '1', 'TRAITEMENT', '', '', 'C.D.I.', 1, '161'),
(395, '', 1, 'VOLUETTE', 'JOEL', '11', 'RUE DES LANGOTTIERES', '49150', 'CHEVIRE LE ROUGE', '', '', '', '25/02/1965', '16/07/1981', '', '1', 'FAB CB', '', '', 'C.D.I.', 1, '161'),
(396, '', 1, 'Komara', 'Abdoulay', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '161'),
(397, '', 1, 'Dansoko', 'Mohamed', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '161'),
(398, '', 1, 'Bibi Saher', 'Sabrina', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '161'),
(399, '', 1, 'THIBAULT', 'GREGORY', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '161'),
(400, '', 1, 'Brigand', 'Jean Luc', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '161'),
(401, '', 1, 'REVEILLON', 'JEROME', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '161'),
(402, '', 1, 'ARNOULD', 'CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', 'CDI', 1, '161'),
(403, '', 1, 'LAMOTTE', 'Mathieu', '', '', '', '', '', '', '', '', '16-11-2015', '', '1', '', '', '', '', 1, '161');

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
(1, '1452553200', '5755695', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LHOPITEAU RAPHAEL.', '', '60', 0),
(2, '1452553200', '5755696', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LHOPITEAU RAPHAEL.', '', '60', 0),
(3, '1454194800', '5399355', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RABOUIN CECILE.', '', '15', 0),
(4, '1454194800', '3797335', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOCHER CHRISTELE.', '', '20', 0),
(5, '1453935600', '63311343', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de HAMONIER OLIVIER.', '', '30', 0),
(7, '1454194800', '0000390', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SENO JEAN PIERRE.', '', '20', 0),
(8, '1453676400', '1243654', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de TURPIN CHRISTINE.', '', '20', 0),
(9, '1453417200', '4967607', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de THIBAULT GREGORY.', '', '20', 0),
(10, '1453417200', '7807738', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BERNARD VUKELIC CAROLE.', '', '10', 0),
(11, '1453417200', '0000151', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BARDONNEAU PASCAL.', '', '20', 0),
(12, '1453676400', '1077597', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de ANGEARD MARYSE.', '', '30', 0),
(13, '1453676400', '0001951', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHEVALEYRE JULIE.', '', '10', 0),
(14, '1453676400', '5682376', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de JOSSELIN ANTHONY.', '', '20', 0),
(15, '1453417200', '0001951', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de CHEVALEYRE JULIE.', '', '10', 0),
(16, '1453417200', '5755694', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LHOPITEAU RAPHAEL.', '', '10', 0),
(17, '1451862000', '0000162', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de AVRIL FLORIAN.', '', '25', 0),
(18, '1451862000', '7944988', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BESNARD SEBASTIEN.', '', '25', 0),
(19, '1452553200', '5590020', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de REZARD AMELIE.', '', '20', 0),
(20, '1452812400', '0000399', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de SENO JEAN PIERRE.', '', '25', 0),
(21, '1452639600', '5248371', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MAUXION ANITA.', '', '20', 0),
(22, '1452639600', '4301531', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de LEGENDRE NATHALIE.', '', '25', 0),
(23, '1453244400', '9339208', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de DELAUNAY PHILIPPE.', '', '10', 0),
(24, '1452812400', '9339208', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de Delaunay P.', '', '10', 0),
(25, '1452726000', '4436899', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de VINCENT LAURENT.', '', '20', 0),
(26, '1452726000', '9605134', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BOUCARD PASCAL.', '', '15', 0),
(27, '1454281200', '0000167', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de HERMITEAU SIMON.', '', '15', 0),
(28, '1453676400', '6058759', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de BIDON ERIC.', '', '20', 0),
(29, '1454194800', '5399355', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de RABOUIN CECILE.', '', '20', 0),
(30, '1454540400', '3525636', 'Remise Bancaire', 'Remise de ChÃ¨que', 'Remise en banque NÂ° 3525636 en date du 04-02-2016.', '485', '', 1);

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
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
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
  MODIFY `idbilletnsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `billet_salarie`
--
ALTER TABLE `billet_salarie`
  MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
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
-- AUTO_INCREMENT pour la table `compta_pret`
--
ALTER TABLE `compta_pret`
  MODIFY `idcomptapret` int(13) NOT NULL AUTO_INCREMENT;
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
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
  MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
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
  MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
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
  MODIFY `iduser` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `idmodule` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
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
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
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
  MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
  MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
