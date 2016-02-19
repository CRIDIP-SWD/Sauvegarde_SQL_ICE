-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Ven 19 Février 2016 à 18:59
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

--
-- Index pour les tables exportées
--

--
-- Index pour la table `salarie`
--
ALTER TABLE `salarie`
  ADD PRIMARY KEY (`idsalarie`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `idsalarie` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
