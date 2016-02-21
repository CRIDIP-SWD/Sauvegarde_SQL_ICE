-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2016 à 12:13
-- Version du serveur :  5.5.47-0+deb7u1
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cecaib`
--

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`idprestation`, `idfamilleprestation`, `designation`, `debut_validite`, `fin_validite`, `part_salarie`, `part_ce`, `cout_presta`, `nb_max_salarie`, `nb_stock`, `hors_quota`) VALUES
(1, 1, 'CINEMA CINEMOVIDA', '01-01-2015', '31-12-2015', '5', '1.80', '6.8', '4', '36', 0),
(2, 1, 'PISCINE PASS 5 ENTREES', '01-06-2015', '31-12-2015', '15', '4.70', '19.7', '100', '12', 0),
(3, 1, 'PATINOIRE PASS 5 ENTREES SANS PATINS', '01-06-2015', '31-12-2015', '12', '4.70', '16.7', '100', '1', 0),
(4, 1, 'PATINOIRE PASS 5 ENTREES AVEC PATINS', '03-06-2015', '31-12-2015', '25', '5.5', '30.5', '100', '4', 0),
(5, 3, 'COLIS DE NOEL', '01-01-2015', '31-12-2015', '0', '28', '28', '1', '450', 0),
(10, 1, 'KIDI MUNDI enfants de 1 &agrave; 3 ans ', '30-06-2015', '30-06-2015', '5.50', '1â‚¬', '6.5', '100', '1', 0),
(11, 1, 'KIDI MUNDI enfants de 4 &agrave; 12ans ', '30-06-2015', '30-06-2015', '6.50', '2â‚¬', '8.5', '100', '10', 0),
(13, 4, 'grand parc du puy du fou  tarif adulte', '11-06-2015', '27-09-2015', '25.60', '2â‚¬', '27.6', '100', '100', 0),
(14, 4, 'grand parc du puy du fou  tarif enfant', '11-04-2015', '27-09-2015', '16.40', '2â‚¬', '18.4', '100', '98', 0),
(15, 4, 'cinesc&eacute;nie du puy du fou tarif adulte ', '03-07-2015', '12-09-2015', '22.70', '2â‚¬', '24.7', '100', '100', 0),
(16, 4, 'cinesc&eacute;nie du puy du fou tarif enfant', '03-07-2015', '12-09-2015', '15.10', '2â‚¬', '17.1', '100', '100', 0),
(17, 4, 'int&eacute;grale cinesc&eacute;nie du puy du fou tarif adulte  + Grand parc  tarif adulte ', '03-07-2015', '12-09-2015', '42.65', '2â‚¬', '44.65', '100', '100', 0),
(18, 4, 'int&eacute;grale cinesc&eacute;nie du puy du fou tarif adulte  + Grand parc  tarif enfant', '03-07-2015', '12-09-2015', '25.55', '2â‚¬', '27.55', '100', '100', 0),
(19, 4, 'festival de poupet ', '22-01-2016', '', '27â‚¬', '10â‚¬', '37', '2 ', '98', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
