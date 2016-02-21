-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2016 à 12:45
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cecdb56`
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
(1, '08-01-2016', 13, '125', '687.5', '5019988897');

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
(1, 0, 'nom', 'prenom', 'date naissance', 'solde'),
(2, 2, 'ABJEAN', 'LUCAS', '11/08/2011', '161'),
(3, 2, 'ABJEAN', 'Kyllian', '23/08/2006', '161'),
(4, 3, 'ALLAIN', 'LILIE', '14/05/2010', '161'),
(5, 3, 'ALLAIN', 'Lou', '08/06/2007', '161'),
(6, 4, 'ALLAIN', 'Elina', '10/12/2002', '161'),
(7, 4, 'ALLAIN', 'Baptiste', '12/10/1999', '161'),
(8, 5, 'ALLANIOUX', 'Jules', '26/04/2007', '161'),
(9, 6, 'ANGOUJARD', 'J&eacute;r&eacute;my', '24/05/2007', '161'),
(10, 6, 'ANGOUJARD', 'Corentin', '13/04/2005', '161'),
(11, 7, 'AUBERT', '', '01/05/2008', '161'),
(12, 7, 'AUBERT', '', '01/02/2010', '161'),
(13, 8, 'BACHELAY', 'BAPTISTE', '20/03/2012', '161'),
(14, 8, 'BACHELAY', 'ARTHUR', '13/03/2005', '161'),
(15, 9, 'BADOUEL', 'Lucile', '04/02/1998', '161'),
(16, 9, 'BADOUEL', 'J&eacute;r&eacute;my', '13/05/1995', '161'),
(17, 9, 'BADOUEL', 'Enora', '15/08/2005', '161'),
(18, 10, 'BADOUEL', 'Alan', '06/01/2000', '161'),
(19, 10, 'BADOUEL', 'Steven', '15/02/1996', '161'),
(20, 11, 'BARON', 'Pauline', '25/01/1999', '161'),
(21, 11, 'BARON', 'Tifenn', '18/02/1992', '161'),
(22, 12, 'BAUCHE', 'K&eacute;vin', '01/02/1989', '161'),
(23, 12, 'BAUCHE', 'Virginie', '02/07/1986', '161'),
(24, 13, 'BAUCHE', 'LISE', '06/11/2009', '161'),
(25, 13, 'BAUCHE', 'LEO', '11/10/2005', '161'),
(26, 15, 'BEGHIN', 'Camille', '10/09/1994', '161'),
(27, 15, 'BEGHIN', 'Pierre', '05/12/1991', '161'),
(28, 16, 'BESNARD', 'Maxence', '16/12/2000', '161'),
(29, 16, 'BESNARD', 'Valentin', '13/12/1995', '161'),
(30, 17, 'ETIENNE', 'Romy', '07/08/2015', '161'),
(31, 18, 'BILY LE NEVEZ', 'NOAN', '19/05/2013', '161'),
(32, 18, 'BILY', 'Mewen', '20/05/2004', '161'),
(33, 18, 'BILY', 'Gurvan', '01/09/2000', '161'),
(34, 19, 'BOISBRAS', 'LOUISE', '12/10/2002', '161'),
(35, 19, 'BOISBRAS', 'LUCAS', '06/12/1999', '161'),
(36, 19, 'BOISBRAS', 'THOMAS', '13/02/1996', '161'),
(37, 23, 'BOURDONNAIS', 'ANNAE', '28/04/2008', '161'),
(38, 23, 'BOURDONNAIS', 'LINAEL', '03/06/2006', '161'),
(39, 23, 'BOURDONNAIS', 'ARTHUR', '07/03/2004', '161'),
(40, 24, 'BOURSE', 'EMILIE', '06/08/2010', '161'),
(41, 24, 'BOURSE', 'Florian', '29/10/2001', '161'),
(42, 24, 'BOURSE', 'Valentin', '05/08/1999', '161'),
(43, 25, 'BOUTIGNY', 'Alexandre', '13/06/2000', '161'),
(44, 26, 'BRIEND', 'ALEXANDRE', '29/03/2011', '161'),
(45, 26, 'BRIEND', 'EMMA', '26/08/2008', '161'),
(46, 26, 'BRIEND', 'C&eacute;lia', '03/09/2007', '161'),
(47, 27, 'BRIEND', 'Candice', '21/01/2003', '161'),
(48, 27, 'BRIEND', 'Mewen', '01/11/1998', '161'),
(49, 27, 'BRINDEL', 'Guillaume', '07/11/1996', '161'),
(50, 27, 'BRINDEL', 'Julie', '06/05/1993', '161'),
(51, 29, 'BROHAN', 'Lauren', '20/08/2002', '161'),
(52, 29, 'BROHAN', 'Shannon', '30/09/1999', '161'),
(53, 30, 'BURBAN', 'Valentin', '21/02/1997', '161'),
(54, 30, 'BURBAN', 'Jean-Marie', '23/02/1994', '161'),
(55, 30, 'BURBAN', 'Aur&eacute;lien', '03/10/1991', '161'),
(56, 30, 'ROUXEL', 'Julie', '05/12/1984', '161'),
(57, 31, 'DUMERVAL', 'Florian', '24/06/1995', '161'),
(58, 31, 'DUMERVAL', 'Ad&eacute;laide', '05/10/1991', '161'),
(59, 33, 'BOCHET', 'Elise', '19/03/1990', '161'),
(60, 34, 'GOUGEON', 'MELINA', '21/01/1992', '161'),
(61, 36, 'CHEFDOR', 'Emma', '16/02/1998', '161'),
(62, 36, 'PIRIOT', 'Elsa', '30/01/1993', '161'),
(63, 37, 'MASSON', 'L&eacute;nnie', '19/09/2007', '161'),
(64, 37, 'CHEREL', 'Vynns', '01/01/2001', '161'),
(65, 37, 'CHEREL', 'Anne-Sophie', '10/05/1993', '161'),
(66, 38, 'CHEVALIER', 'Alexandra', '04/06/1994', '161'),
(67, 38, 'CHEVALIER', 'Gwenael', '05/02/1990', '161'),
(68, 39, 'COGARD', 'Axelle', '25/04/1997', '161'),
(69, 40, 'COLIN', 'Mathilde', '11/08/1990', '161'),
(70, 40, 'COLIN', 'Elodie', '02/07/1982', '161'),
(71, 41, 'COQUILLARD', 'Mathis', '23/09/2005', '161'),
(72, 41, 'COQUILLARD', 'Simon', '22/03/2001', '161'),
(73, 41, 'COQUILLARD', 'Cl&eacute;ment', '01/07/1999', '161'),
(74, 41, 'COQUILLARD', 'KEVIN', '15/03/1990', '161'),
(75, 42, 'COSTARD', 'MATHIAS', '26/08/2008', '161'),
(76, 46, 'DANET', 'Nicolas', '01/07/1988', '161'),
(77, 46, 'DANET', 'Christelle', '26/12/1982', '161'),
(78, 48, 'DAVENET', 'CLOE', '09/09/2012', '161'),
(79, 48, 'DAVENET', 'LENA', '15/08/2008', '161'),
(80, 48, 'DAVENET', 'LISA', '17/06/2005', '161'),
(81, 49, 'DAYON', 'Romain', '17/08/1988', '161'),
(82, 49, 'DAYON', 'Sandra', '31/10/1981', '161'),
(83, 51, 'DESFROMONT', 'Nadia', '10/03/1997', '161'),
(84, 51, 'DESFROMONT', 'Rita', '16/03/1995', '161'),
(85, 52, 'DIGUET', 'Tom', '12/09/2003', '161'),
(86, 52, 'DIGUET', 'L&eacute;hanne', '19/01/2000', '161'),
(87, 52, 'DIGUET', 'Lysa-Marie', '23/02/1996', '161'),
(88, 53, 'DUTAY', 'C&eacute;line', '09/11/1988', '161'),
(89, 53, 'DUTAY', 'Jonathan', '05/06/1985', '161'),
(90, 53, 'DUTAY', 'Guillaume', '29/08/1982', '161'),
(91, 54, 'DUVAL', 'Elise', '20/10/2007', '161'),
(92, 54, 'DUVAL', 'Quentin', '27/07/2005', '161'),
(93, 59, 'GAILLARD', 'DYWANN', '07/06/2013', '161'),
(94, 59, 'GAILLARD', 'ALICIA', '27/08/2009', '161'),
(95, 59, 'DELANNOY', 'CORENTIN', '05/10/2001', '161'),
(96, 62, 'GUEGAN', 'ANAE', '19/01/2014', '161'),
(97, 64, 'GICQUELAY', 'Quentin', '31/08/2000', '161'),
(98, 64, 'GICQUELAY', 'Ang&eacute;lique', '10/12/1997', '161'),
(99, 65, 'GIGUET', 'Aurore', '21/03/1995', '161'),
(100, 65, 'GIGUET', 'Alexandre', '26/02/1991', '161'),
(101, 66, 'GOUGEON', 'Steven', '24/08/2007', '161'),
(102, 66, 'GOUGEON', 'Alyssa', '11/02/2002', '161'),
(103, 66, 'GOUGEON', 'Lauren', '31/10/1998', '161'),
(104, 68, 'GUERRIER', 'Valentin', '25/05/2004', '161'),
(105, 69, 'GUIHO', 'S&eacute;bastien', '19/10/1990', '161'),
(106, 70, 'GUILLAUME', 'MODESTINE', '07/12/2010', '161'),
(107, 70, 'GUILLAUME', 'Jean-R&eacute;my', '01/09/2001', '161'),
(108, 72, 'GUIMARD', 'Anais', '27/11/1993', '161'),
(109, 72, 'GUIMARD', 'Romain', '02/03/1988', '161'),
(110, 73, 'GUIMARD', 'Erwann', '06/03/2002', '161'),
(111, 73, 'GUIMARD', 'Maelle', '20/06/1999', '161'),
(112, 73, 'GUIMARD', 'Morgane', '04/10/1996', '161'),
(113, 75, 'HAROUTEL', 'GABRIEL', '13/06/2008', '161'),
(114, 75, 'HAROUTEL', 'Anais', '19/08/2003', '161'),
(115, 75, 'HAROUTEL', 'Anthony', '21/07/1999', '161'),
(116, 76, 'BEGHIN', 'Camille', '10/09/1994', '161'),
(117, 76, 'BEGHIN', 'Pierre', '05/12/1991', '161'),
(118, 81, 'JARNO', 'Jimmy', '16/05/1997', '161'),
(119, 81, 'JARNO', 'Marie', '26/11/1993', '161'),
(120, 82, 'JEHANNO', 'MIA', '11/11/2011', '161'),
(121, 82, 'JEHANNO', 'MELISSIA', '13/12/2013', '161'),
(122, 83, 'JOSSO', 'MAEL', '08/05/2006', '161'),
(123, 83, 'JOSSO', 'LIZA', '28/10/2007', '161'),
(124, 84, 'JOUBIN', 'Matthieu', '03/04/1987', '161'),
(125, 84, 'JOUBIN', 'S&eacute;bastien', '23/01/1984', '161'),
(126, 86, 'KASPRZYK', 'ROMAN', '09/11/2011', '161'),
(127, 86, 'KASPRZYK', 'LOUKAS', '05/09/2008', '161'),
(128, 89, 'LARIVE', 'Ferdinand', '26/05/1997', '161'),
(129, 89, 'LARIVE', 'Zacharie', '21/11/1993', '161'),
(130, 90, 'LAUZEN', 'Yohan', '27/04/1987', '161'),
(131, 90, 'LAUZEN', 'Renaud', '10/04/1985', '161'),
(132, 91, 'LE BAIL', 'GARANCE', '17/08/2009', '161'),
(133, 91, 'LE BAIL', 'Robin?on', '21/08/2006', '161'),
(134, 91, 'LE BAIL', 'Sasha', '03/10/2002', '161'),
(135, 92, 'LE BORGNE', 'LANA', '05/10/2012', '161'),
(136, 92, 'LE BORGNE', 'MATHIS', '12/10/2010', '161'),
(137, 93, 'SURIOT', 'Kelys', '14/12/2004', '161'),
(138, 93, 'SURIOT', 'Loeva', '31/07/2003', '161'),
(139, 94, 'LE BRETON', 'Alban', '17/07/2006', '161'),
(140, 94, 'LE BRETON', 'L&eacute;anne', '21/11/2003', '161'),
(141, 95, 'LE BUANNIC', 'Coraline', '23/01/1993', '161'),
(142, 95, 'LE BUANNIC', 'Magali', '12/10/1985', '161'),
(143, 96, 'LE CALLONNEC', 'Maeva', '14/01/1996', '161'),
(144, 96, 'LE CALLONNEC', 'Maxime', '09/07/1990', '161'),
(145, 97, 'LE DEVIC', 'MATHILDE', '05/07/2012', '161'),
(146, 97, 'LE DEVIC', 'CORENTIN', '25/01/2009', '161'),
(147, 98, 'LE FUR', 'C&eacute;lia', '28/01/2005', '161'),
(148, 98, 'LE FUR', 'Mathis', '26/10/2000', '161'),
(149, 98, 'LE FUR', 'Arthur', '15/03/1997', '161'),
(150, 100, 'LE MENAHEZE', 'Marie', '07/08/1985', '161'),
(151, 101, 'LE MOING', 'Eloise', '26/10/2009', '161'),
(152, 101, 'LE MOING', 'Margot', '15/04/2006', '161'),
(153, 101, 'LE MOING', 'Gabriel', '15/04/2006', '161'),
(154, 103, 'LE NOAN', 'ANTOINE', '09/04/2013', '161'),
(155, 103, 'LE NOAN', 'Marion', '17/06/2010', '161'),
(156, 104, 'LE PEUC''H', 'MYLA', '27/08/2012', '161'),
(157, 106, 'LE TURNIER', 'G&eacute;raldine', '02/11/1988', '161'),
(158, 106, 'LE TRUNIER', 'Adeline', '14/06/1983', '161'),
(159, 107, 'COROLLER', 'THEO', '16/07/2010', '161'),
(160, 107, 'COROLLER', 'Liam', '17/08/2013', '161'),
(161, 109, 'LEPELLEC', 'ALEXANDRE', '14/01/2008', '161'),
(162, 109, 'LEPELLEC', 'EMMELINE', '23/10/2004', '161'),
(163, 109, 'LEPELLEC', 'QUENTIN', '10/08/2002', '161'),
(164, 109, 'LEPELLEC', 'EMMANUEL', '10/08/2002', '161'),
(165, 109, 'LEPELLEC', 'PAULINE', '24/01/2001', '161'),
(166, 109, 'LEPELLEC', 'JOHANN', '29/03/1999', '161'),
(167, 110, 'LIEGEROT', 'YONAL', '27/05/2012', '161'),
(168, 110, 'LIEGEROT', 'ALEXANA', '12/11/2008', '161'),
(169, 110, 'GUILLOUARD', 'RUDY', '26/06/2001', '161'),
(170, 112, 'MACE', 'Dorian', '11/12/1995', '161'),
(171, 112, 'MACE', 'Kevin', '29/06/1992', '161'),
(172, 113, 'MAILLARD', 'Audrey', '20/02/1998', '161'),
(173, 113, 'MAILLARD', 'Fr&eacute;d&eacute;ric', '29/12/1993', '161'),
(174, 114, 'MAINGUY', 'Alexandra', '08/06/1995', '161'),
(175, 114, 'MAINGUY', 'Aur&eacute;lien', '09/03/1991', '161'),
(176, 117, 'MARTIN', 'Gwendal', '04/06/2001', '161'),
(177, 117, 'MARTIN', 'Maeliss', '07/01/1999', '161'),
(178, 118, 'MARTINEAU', 'AWENA', '18/07/2004', '161'),
(179, 119, 'MENGELLE', 'Virginie', '27/08/1993', '161'),
(180, 119, 'MENGELLE', 'Nad&egrave;ge', '16/04/1990', '161'),
(181, 119, 'MENGELLE', 'Kevin', '16/04/1990', '161'),
(182, 120, 'MICHEL', 'Pierre-Jean', '15/03/1996', '161'),
(183, 122, 'MICHEL', 'Sol&egrave;ne', '10/08/1987', '161'),
(184, 122, 'MICHEL', 'Ronan', '01/05/1985', '161'),
(185, 123, 'MILHEM', 'EMMA', '05/09/2012', '161'),
(186, 123, 'MILHEM', 'Mael', '04/12/2006', '161'),
(187, 123, 'MILHEM', 'Ilan', '22/07/2003', '161'),
(188, 124, 'NICOLAS', 'Fran?ois', '04/07/1990', '161'),
(189, 124, 'NICOLAS', 'Aur&eacute;lie', '28/12/1985', '161'),
(190, 125, 'NOEL', 'KELIA', '08/06/2014', '161'),
(191, 130, 'PELLERIN', 'Mathieu', '11/06/2002', '161'),
(192, 130, 'PELLERIN', 'Yoann', '03/01/1999', '161'),
(193, 130, 'PELLERIN', 'David', '24/07/1994', '161'),
(194, 131, 'PELLERIN', 'MATHIEU', '11/06/2002', '161'),
(195, 131, 'PELLERIN', 'YOANN', '03/01/1999', '161'),
(196, 131, 'PELLERIN', 'DAVID', '24/07/1994', '161'),
(197, 132, 'PELLETIER', 'L&eacute;andre', '20/06/2005', '161'),
(198, 132, 'PELLETIER', 'Romane', '08/06/2002', '161'),
(199, 135, 'PERROTIN', 'Alexandre', '10/03/1997', '161'),
(200, 135, 'PERROTIN', 'Am&eacute;lie', '09/03/1995', '161'),
(201, 136, 'PETIT', 'Clara', '01/03/2000', '161'),
(202, 136, 'PETIT', 'Emmanuel', '02/09/1996', '161'),
(203, 138, 'PICARD', 'Yoann', '22/05/1997', '161'),
(204, 138, 'PICARD', 'Floriana', '09/03/1992', '161'),
(205, 138, 'PICARD', 'Melina', '09/05/1989', '161'),
(206, 139, 'TONNELET', 'Aurore', '13/04/1984', '161'),
(207, 140, 'PIQUET', 'LOANE', '28/01/2011', '161'),
(208, 141, 'PITRE', 'David', '05/08/1983', '161'),
(209, 141, 'PITRE', 'C&eacute;cilia', '04/07/1980', '161'),
(210, 142, 'POSSEME', 'Ang&eacute;lique', '14/09/1992', '161'),
(211, 142, 'POSSEME', 'Fran?ois', '10/05/1988', '161'),
(212, 143, 'RAFFIN', 'LINA', '22/03/2012', '161'),
(213, 146, 'RIO', 'Margot', '27/01/2003', '161'),
(214, 146, 'RIO', 'Mathis', '08/11/2000', '161'),
(215, 147, 'RISSEL', 'Anaelle', '21/07/1998', '161'),
(216, 147, 'RISSEL', 'Marion', '31/10/1993', '161'),
(217, 148, 'RIVIERE', 'Gabin', '26/01/2007', '161'),
(218, 148, 'RIVIERE', 'Axel', '23/07/2004', '161'),
(219, 149, 'ROGER', 'Elodie', '20/03/1987', '161'),
(220, 150, 'RONSIN', 'Matteo', '06/10/2000', '161'),
(221, 151, 'ROPERT', 'THOMAS', '29/05/2010', '161'),
(222, 151, 'ROPERT', 'Anais', '24/08/2006', '161'),
(223, 152, 'ROUILLARD', 'EWEN', '09/09/2012', '161'),
(224, 153, 'ROZE', 'MANON', '03/06/2015', '161'),
(225, 153, 'ROZE', 'KYLIAN', '05/07/2013', '161'),
(226, 155, 'SAJE', 'Justine', '08/02/1994', '161'),
(227, 155, 'SAJE', 'Amandine', '11/04/1991', '161'),
(228, 156, 'SAVIGNE', 'Titouan', '27/11/2002', '161'),
(229, 156, 'SAVIGNE', 'Apolline', '13/11/1993', '161'),
(230, 157, 'SCHNOERRINGER', 'ROSE', '09/06/2012', '161'),
(231, 157, 'SCHNOERRINGER', 'CLELIA', '28/01/2010', '161'),
(232, 157, 'SCHNOERRINGER', 'HUGO', '19/08/2006', '161'),
(233, 158, 'SELIGOUR', 'JEREMY', '07/06/1987', '161'),
(234, 160, 'SENE', 'Adrien', '14/03/2002', '161'),
(235, 160, 'SENE', 'Louise', '10/02/1999', '161'),
(236, 161, 'SERAZIN', 'THEMIS', '10/03/2011', '161'),
(237, 161, 'SERAZIN', 'S?REN', '26/09/2008', '161'),
(238, 164, 'STAELENS', 'NATALYA', '31/10/2012', '161'),
(239, 164, 'STAELENS', 'NATALEENA', '10/02/2010', '161'),
(240, 164, 'STAELENS', 'VALENTYN', '25/02/2009', '161'),
(241, 164, 'STAELENS', 'NATALYS', '16/01/2008', '161'),
(242, 164, 'STAELENS', 'NATASCHA', '18/12/2006', '161'),
(243, 165, 'STASSIN', 'MARGOT', '21/01/2003', '161'),
(244, 165, 'STASSIN', 'CHLOE', '16/11/2000', '161'),
(245, 165, 'STASSIN', 'OCEANE', '06/09/1995', '161'),
(246, 166, 'TABARY TROUVE', 'TYFENN', '10/09/2012', '161'),
(247, 166, 'TABARY', 'C&eacute;lia', '15/06/1998', '161'),
(248, 166, 'TABARY', 'Aurore', '15/06/1993', '161'),
(249, 168, 'THETIOT', 'SUZON', '26/05/2015', '161'),
(250, 169, 'THOMAS', 'NOLWENN', '04/10/1993', '161'),
(251, 170, 'JAN', 'No&eacute;lie', '03/07/2010', '161'),
(252, 170, 'JAN', 'SLOANE', '05/03/2007', '161'),
(253, 172, 'TOULMONDE', 'Amandine', '19/10/2002', '161'),
(254, 172, 'TOULMONDE', 'Pauline', '04/06/2000', '161'),
(255, 174, 'HOUEIX', 'NOAH', '04/10/2003', '161'),
(256, 174, 'HOUEIX', 'JIMMY', '16/10/1998', '161'),
(257, 175, 'TREGARO', 'MAE', '18/02/2014', '161'),
(258, 176, 'TREGARO', 'Carl', '05/09/1988', '161'),
(259, 177, 'TROCHU', 'CHLOE', '19/08/2014', '161'),
(260, 177, 'TROCHU', 'ANTOINE', '21/02/2010', '161'),
(261, 178, 'TROMEUR', 'MANON', '25/04/2012', '161'),
(262, 178, 'TROMEUR', 'MAELYS', '08/09/2007', '161'),
(263, 179, 'VAZEILLE', 'Alexandre', '17/03/2000', '161'),
(264, 179, 'VAZEILLE', 'Quentin', '05/01/1996', '161'),
(265, 180, 'VILMEN', 'Simon', '03/09/1993', '161'),
(266, 180, 'VILMEN', 'Mathilde', '28/09/1989', '161'),
(267, 181, 'VISEUX', 'Damien', '19/09/1997', '161'),
(268, 182, 'ZZZZZ', 'paul', '04-02-2016', '161'),
(269, 182, 'XXXXX', 'jerome', '05-02-2016', '161');

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
(1, 1, 'Achat: CINEMA CINELAC', '687.5', '', '5019988897'),
(2, 1, 'Ajout de la charge Fixe: FRAIS EXPEDITION CINELAC ', '5.70', '', '954237148'),
(3, 2, 'Ajout du produit fixe: SUBVENTION DU 4 EME TRIMESTRE 2015', '', '15262.86', '5587042570'),
(4, 2, 'Vente de Billetterie: GUERRIER, SYLVAIN  pour la prestation CINEMA CINELAC', '', '22', '48504795'),
(5, 2, 'Vente de Billetterie: COGARD, SYLVAIN  pour la prestation CINEMA CINELAC', '', '22', '72150142'),
(6, 2, 'Vente de Billetterie: MARTINEAU, SEBASTIEN  pour la prestation CINEMA CINELAC', '', '22', '88510380');

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
(1, 68, '1452207600', 3, '22', 1, '48504795', 0),
(2, 39, '1452207600', 3, '22', 1, '72150142', 0),
(3, 118, '1452207600', 3, '22', 1, '88510380', 0);

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
(1, 'FRAIS EXPEDITION CINELAC ', '08-01-2016', '5.70', '954237148');

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
(1, 'CE CELLULOSES DE BROCELIANDE', '0', '0', 'FACTA000', 'FACVE000', 'F1A6E-62E69-1D508-10E25-1308B', '31-12-2015', '31-12-2016');

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
(1, '5019988897', '1452207600', 'Achat - CINEMA CINELAC', '687.5', ''),
(2, '954237148', '1452207600', 'FRAIS EXPEDITION CINELAC ', '5.70', ''),
(3, '5587042570', '1453158000', 'SUBVENTION DU 4 EME TRIMESTRE 2015', '', '15262.86'),
(4, '48504795', '1452207600', 'Vente de Billetterie: GUERRIER, SYLVAIN  pour la prestation CINEMA CINELAC', '', '22'),
(5, '72150142', '1452207600', 'Vente de Billetterie: COGARD, SYLVAIN  pour la prestation CINEMA CINELAC', '', '22'),
(6, '88510380', '1452207600', 'Vente de Billetterie: MARTINEAU, SEBASTIEN  pour la prestation CINEMA CINELAC', '', '22');

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
(9, 'LOISIRS'),
(10, 'SORTIES'),
(11, 'VACANCES'),
(13, 'CAFE'),
(14, 'ALIMENTAIRE HORS CAFE');

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
(1, 1, 13, '4', '22', '0', 0, ''),
(2, 2, 13, '4', '22', '0', 0, ''),
(3, 3, 13, '4', '22', '0', 0, '');

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
(2, 'CECDB', '14b5f145ad1ea66cd0d083e48b0a498e', 1);

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
(13, 9, 'CINEMA CINELAC', '08-01-2016', '31-01-2017', '5.5', '0', '5.5', '10000', '173', 0),
(14, 10, 'PARC DE BRANFERE (MOIS D ACHAT)  ADULTE', '01-01-2016', '31-12-2016', '16.50', '0', '16.5', '10000', '0', 0),
(15, 10, 'PARC DE BRANFERE (MOIS D ACHAT) ENFANTS', '01-01-2016', '31-12-2016', '10', '0', '10', '10000', '0', 0),
(16, 10, 'ZOO DE PONT SCORFF ADULTES', '', '31-12-2017', '13.50', '0', '13.5', '10000', '9', 0),
(17, 10, 'ZOO DE PONT SCORFF ENFANTS ', '', '31-12-2017', '9.5', '0', '9.5', '100000', '7', 0),
(18, 11, 'NUITEE VAGUES OCEANES', '', '31-12-2016', '33', '0', '33', '1000', '13', 0),
(19, 13, 'NUMERO 3 ', '', '28-02-2017', '1.65', '0', '1.65', '10000', '', 0),
(21, 13, 'NUMERO 9', '', '28-02-2017', '1.90', '0', '1.9', '1000', '', 0),
(22, 13, 'DOSETTES ETHIOPIE', '', '31-05-2017', '1.80', '0', '1.8', '10000', '', 0),
(23, 13, 'CAPSULES MOKA', '', '16-09-2016', '1.85', '0', '1.85', '1000', '', 0),
(24, 13, 'CAPSULE COLOMBIE', '', '12-11-2016', '1.85', '0', '1.85', '1000', '', 0);

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
(1, 'SUBVENTION DU 4 EME TRIMESTRE 2015', '19-01-2016', '15262.86', '5587042570');

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
(3, 1, 1, '22', 'INCONNUE', 'GUERRIER, SYLVAIN ', 'INCONNU', 0),
(4, 2, 3, '22', '', 'COGARD, SYLVAIN ', '498895578', 0),
(5, 3, 1, '22', 'INCONNUE', 'MARTINEAU, SEBASTIEN ', 'INCONNU', 0);

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
(2, '', 0, 'ABJEAN, SERGE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(3, '', 0, 'ALLAIN, ALEXANDRE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(4, '', 0, 'ALLAIN, JEAN-MARIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(5, '', 0, 'ALLANIOUX, AURELIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(6, '', 0, 'ANGOUJARD, CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(7, '', 0, 'AUBERT, STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(8, '', 0, 'BACHELAY, DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(9, '', 0, 'BADOUEL, DOMINIQUE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(10, '', 0, 'BADOUEL, FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(11, '', 0, 'BARON, CATHERINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(12, '', 0, 'BAUCHE, DANIEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(13, '', 0, 'BAUCHE, FABRICE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(14, '', 0, 'BAUDET BENOIT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(15, '', 0, 'BEGHIN, FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(16, '', 0, 'BESNARD, GUENHAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(17, '', 0, 'BEVAN, JESSICA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(18, '', 0, 'BILY, JEAN BERNARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(19, '', 0, 'BOISBRAS, CECILE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(20, '', 0, 'BONNO CHRISTELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(21, '', 0, 'BONO PIERRE YVES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(22, '', 0, 'BOUDARD EMILIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(23, '', 0, 'BOURDONNAIS, MAGALI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(24, '', 0, 'BOURSE, PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(25, '', 0, 'BOUTIGNY, OLIVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(26, '', 0, 'BRIEND, ANTHONY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(27, '', 0, 'BRIEND, HERVE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(28, '', 0, 'BRINDEL, VERONIQUE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(29, '', 0, 'BROHAN, CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(30, '', 0, 'BURBAN, WILLIAM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(31, '', 0, 'BUREL, NELLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(32, '', 0, 'CAILLOT PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(33, '', 0, 'CERTAIN, MARIE-RENEE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(34, '', 0, 'CHARLOT, FABIENNE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(35, '', 0, 'CHASSELOUP DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(36, '', 0, 'CHEFDOR, JEAN-LOUIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(37, '', 0, 'CHEREL, MURIELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(38, '', 0, 'CHEVALIER, GWENAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(39, '', 0, 'COGARD, SYLVAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(40, '', 0, 'COLIN, PIERRE-YVES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(41, '', 0, 'COQUILLARD, PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(42, '', 0, 'COSTARD, CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(43, '', 0, 'COUDRAY DENIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(44, '', 0, 'CREUSAT BEATRICE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(45, '', 0, 'DAHIREL ALAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(46, '', 0, 'DANET, MARIE ANNICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(47, '', 0, 'DANET NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(48, '', 0, 'DAVENET, LUDOVIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(49, '', 0, 'DAYON, JEAN CLAUDE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(50, '', 0, 'DEMONT BENOIT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(51, '', 0, 'DESFROMONT, JEAN-JACQUES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(52, '', 0, 'DIGUET, LAURENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(53, '', 0, 'DUTAY, MICHEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(54, '', 0, 'DUVAL, GAETAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(55, '', 0, 'DUVAL GUILLAUME', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(56, '', 0, 'EMERAUD JULIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(57, '', 0, 'FLORENTY JOSHUA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(58, '', 0, 'FONTAINE THIERRY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(59, '', 0, 'GAILLARD, SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(60, '', 0, 'GARIN ODETTE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(61, '', 0, 'GENUIT MARIE PAULE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(62, '', 0, 'GERARD, CHRISTELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(63, '', 0, 'GICQUEAU CAROLINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(64, '', 0, 'GICQUELAY, YANNICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(65, '', 0, 'GIGUET, JEAN-JOSEPH', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(66, '', 0, 'GOUGEON, BERTRAND', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(67, '', 0, 'GOZDOWSKI JOSE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(68, '', 0, 'GUERRIER, SYLVAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(69, '', 0, 'GUIHO, HUBERT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(70, '', 0, 'GUILLAUME, JEAN-LUC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(71, '', 0, 'GUILLO NICOLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(72, '', 0, 'GUIMARD, ALAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(73, '', 0, 'GUIMARD, MICHEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(74, '', 0, 'GUITON MATTHIEU', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(75, '', 0, 'HAROUTEL, LAURENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(76, '', 0, 'HENNACHE, BRIGITTE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(77, '', 0, 'HENRY FANNY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(78, '', 0, 'HOUEIX HERVE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(79, '', 0, 'HUGUET ALEXANDRA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(80, '', 0, 'JAMET GAETAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(81, '', 0, 'JARNO, GUENAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(82, '', 0, 'JEHANNO, VALENTIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(83, '', 0, 'JOSSO, STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(84, '', 0, 'JOUBIN, GERARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(85, '', 0, 'KALUZNY ANNE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(86, '', 0, 'KASPRZYK, MICHAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(87, '', 0, 'LAHOULLE OLIVIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(88, '', 0, 'LANOE YANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(89, '', 0, 'LARIVE, FABRICE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(90, '', 0, 'LAUZEN, GERARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(91, '', 0, 'LE BAIL, STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(92, '', 0, 'LE BORGNE, ROMAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(93, '', 0, 'LE BRETON, FABIENNE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(94, '', 0, 'LE BRETON, FABRICE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(95, '', 0, 'LE BUANNIC, JEAN-MARC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(96, '', 0, 'LE CALLONNEC, BERNARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(97, '', 0, 'LE DEVIC, JEROME', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(98, '', 0, 'LE FUR, ARNAUD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(99, '', 0, 'LE LUHERNE, ALAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(100, '', 0, 'LE MENAHEZE, LOIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(101, '', 0, 'LE MOING, CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(102, '', 0, 'LE MOING, SOLENE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(103, '', 0, 'LE NOAN, ANTHONY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(104, '', 0, 'LE PEUC H, FRANCK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(105, '', 0, 'LE TOQUIN FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(106, '', 0, 'LE TURNIER, PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(107, '', 0, 'LE BEL, SARAH', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(108, '', 0, 'LEGIGAN CHRISTOPHER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(109, '', 0, 'LEPELLEC, DOMINIQUE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(110, '', 0, 'LIEGEROT, JOHANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(111, '', 0, 'MACE ISABELLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(112, '', 0, 'MACE, SERGE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(113, '', 0, 'MAILLARD, JEAN-LUC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(114, '', 0, 'MAINGUY, GILLES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(115, '', 0, 'MAROT JORDAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(116, '', 0, 'MAROT LYDIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(117, '', 0, 'MARTIN, BRUNO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(118, '', 0, 'MARTINEAU, SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(119, '', 0, 'MENGELLE, PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(120, '', 0, 'MICHEL, ERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(121, '', 0, 'MICHEL PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(122, '', 0, 'MICHEL, PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(123, '', 0, 'MILHEM, GERARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(124, '', 0, 'NICOLAS, MARCEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(125, '', 0, 'NOEL, JEREMY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(126, '', 0, 'NOGUES PHILIPPE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(127, '', 0, 'OLIVARD ANTOINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(128, '', 0, 'PARIS AURORE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(129, '', 0, 'PELLERIN ELISE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(130, '', 0, 'PELLERIN, MYRIAM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(131, '', 0, 'PELLERIN, YVES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(132, '', 0, 'PELLETIER, DAVID', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(133, '', 0, 'PERRIGUE SEBASTIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(134, '', 0, 'PERRIN STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(135, '', 0, 'PERROTIN, NICOLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(136, '', 0, 'PETIT, PASCAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(137, '', 0, 'PICARD CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(138, '', 0, 'PICARD, DENIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(139, '', 0, 'PICAUD, MARTINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(140, '', 0, 'PIQUET, SYLVAIN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(141, '', 0, 'PITRE, JEAN-LUC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(142, '', 0, 'POSSEME, MANUELLA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(143, '', 0, 'RAFFIN, FABIEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(144, '', 0, 'RENAUD LIONEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(145, '', 0, 'RIFFET YOHANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(146, '', 0, 'RIO, HUBERT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(147, '', 0, 'RISSEL, ERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(148, '', 0, 'RIVIERE, ANNIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(149, '', 0, 'ROGER, CHRISTIANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(150, '', 0, 'RONSIN, BRUNO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(151, '', 0, 'ROPERT, JEAN-MARIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(152, '', 0, 'ROUILLARD, STEPHANE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(153, '', 0, 'ROZE, STEPHEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(154, '', 0, 'RUBAUD CLAUDINE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(155, '', 0, 'SAJE, FREDERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(156, '', 0, 'SAVIGNE, CORINNE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(157, '', 0, 'SCHNOERRINGER, NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(158, '', 0, 'SELIGOUR, JEAN MARC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(159, '', 0, 'SELIGOUR JEREMY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(160, '', 0, 'SENE, DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(161, '', 0, 'SERAZIN, GILDAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(162, '', 0, 'SOUFLET AURELIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(163, '', 0, 'SOURGET MIKAEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(164, '', 0, 'STAELENS, NICOLAS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(165, '', 0, 'STASSIN, CHRISTOPHE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(166, '', 0, 'TABARY, DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(167, '', 0, 'TABARY ERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(168, '', 0, 'THETIOT, YOANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(169, '', 0, 'THOMAS, REMI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(170, '', 0, 'TONNELET, LUCIE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(171, '', 0, 'TONNELET PIERRE LOUIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(172, '', 0, 'TOULMONDE, THIERRY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(173, '', 0, 'TOUZARD FLORENCE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(174, '', 0, 'TREGARO, BEATRICE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(175, '', 0, 'TREGARO, JEROME', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(176, '', 0, 'TREGARO, LOIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(177, '', 0, 'TROCHU, JEAN-FRANCOIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(178, '', 0, 'TROMEUR, YANN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(179, '', 0, 'VAZEILLE, JEAN-CLAUDE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(180, '', 0, 'VILMEN, ERIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(181, '', 0, 'VISEUX, PATRICK', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '161'),
(182, '', 0, 'ZZZZ', 'TTTTTTTTT', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '161'),
(183, '', 0, 'WWWWWW', 'HHHHHHH', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', 1, '161');

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
(3, '1452207600', 'INCONNU', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de GUERRIER, SYLVAIN .', '', '22', 1),
(4, '1452207600', '498895578', 'Reglement Client', 'EspÃ¨ce', 'Reglement de la prestation en espÃ¨ce par COGARD, SYLVAIN .', '', '22', 1),
(5, '1452207600', 'INCONNU', 'Reglement Client', 'ChÃ¨que', 'Reglement de la prestation par chÃ¨que au nom de MARTINEAU, SEBASTIEN .', '', '22', 1);

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
  MODIFY `idachatpresta` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ayant_droit`
--
ALTER TABLE `ayant_droit`
  MODIFY `idayantdroit` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;
--
-- AUTO_INCREMENT pour la table `bilan`
--
ALTER TABLE `bilan`
  MODIFY `idcasebilan` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  MODIFY `idbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `charge_fixe`
--
ALTER TABLE `charge_fixe`
  MODIFY `idchargefixe` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `idcptresultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `famille_prestation`
--
ALTER TABLE `famille_prestation`
  MODIFY `idfamilleprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
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
  MODIFY `idlignebilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `idprestation` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
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
  MODIFY `idregbilletsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `idremisebanquechq` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `remise_banque_esp`
--
ALTER TABLE `remise_banque_esp`
  MODIFY `idremisebanqueesp` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT pour la table `solde_caisse`
--
ALTER TABLE `solde_caisse`
  MODIFY `idsoldecaisse` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
