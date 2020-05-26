-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 26, 2020 at 08:36 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alphabet`
--

-- --------------------------------------------------------

--
-- Table structure for table `couleurs`
--

CREATE TABLE `couleurs` (
  `ID` int(11) NOT NULL,
  `engeo` varchar(255) NOT NULL,
  `enfra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `couleurs`
--

INSERT INTO `couleurs` (`ID`, `engeo`, `enfra`) VALUES
(1, 'წითელი', 'rouge'),
(2, 'ყვითელი', 'jaune'),
(3, 'მწვანე', 'vert'),
(4, 'თეთრი', 'blanc'),
(5, 'სტაფილოსფერი', 'orange'),
(6, 'ვარდისფერი', 'rose'),
(7, 'ყავისფერი', 'marron'),
(8, 'შავი', 'noir'),
(9, 'ლურჯი', 'bleu'),
(10, 'ცისფერი', 'bleuclaire'),
(11, 'იასამნისფერი', 'violet'),
(12, 'ნაცრისფერი', 'gris'),
(13, 'ბეჟი', 'beige'),
(14, 'ლილისფერი', 'lilas'),
(15, 'ოქროსფერი', 'doré'),
(16, 'ბორდოსფერი', 'bordeaux'),
(17, 'კრემისფერი', 'creme'),
(18, 'ვერცხლისფერი', 'argent'),
(19, 'მეტალისფერი', 'metal');

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE `etudiants` (
  `ID` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `generation` varchar(255) NOT NULL,
  `pays` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`ID`, `pseudo`, `nom`, `generation`, `pays`) VALUES
(1, 'Florent', 'Mell', 'enfant', 'France'),
(2, 'Marika', 'Megrelishvili', 'adulte', 'Belgique'),
(3, 'Alexandre', 'Schepens', 'adulte', 'Belgique'),
(4, 'Nathalia', 'Frene', 'adulte', 'France'),
(5, 'Zlata', 'Vander', 'adulte', 'Suisse'),
(6, 'Youri', 'Vander', 'adulte', 'Suisse'),
(7, 'Vincent', 'Hardy', 'adulte', 'France'),
(8, 'Manon', 'Junior', 'enfant', 'France'),
(9, 'Tamar', 'Chiraque', 'enfant', 'Belgique'),
(10, 'Helene', 'Moult', 'enfant', 'France'),
(11, 'Camille', 'Scheriff', 'enfant', 'Suisse'),
(12, 'Thomas', 'Lasko', 'enfant', 'France'),
(13, 'Marie', 'Dupont', 'enfant', 'France'),
(14, 'Helene', 'Mello', 'enfant', 'France'),
(15, 'Shamil', 'Shukri', 'enfant', 'France'),
(16, 'Dmitry', 'Moroz', 'adulte', 'Canada'),
(17, 'Alexandre', 'Monceau', 'enfant', 'Espagne'),
(18, 'Irakli', 'Gogiberidze', 'adulte', 'Italie'),
(19, 'Emma ', 'Watson', 'adulte', 'France'),
(20, 'Maroushka', 'Paroush', 'adulte', 'Espagne'),
(21, 'Pascale', 'Jojoba', 'adulte', 'France'),
(22, 'Tamar', 'Gverdtsiteli', 'adulte', 'France'),
(23, 'Tamila', 'Gobejishvili', 'enfant', 'France'),
(24, 'Ani', 'Bebia', 'adulte', 'France'),
(25, 'Irakli', 'Makatsaria', 'enfant', 'France'),
(26, 'Ella', 'Beraia', 'adulte', 'France'),
(27, 'Salome', 'Gogia', 'enfant', 'France'),
(28, 'Patrique', 'Jardin', 'adulte', 'France'),
(29, 'Valerie', 'Jardin', 'enfant', 'France'),
(30, 'Marine', 'Johan', 'adulte', 'France'),
(31, 'Eleonore', 'Pari', 'enfant', 'France'),
(32, 'Marienoel', 'Straeten', 'adulte', 'France'),
(33, 'Pierre', 'Jora', 'adulte', 'France'),
(34, 'Anna', 'Marie', 'adulte', 'Swiss'),
(35, 'Emma', 'Annou', 'adulte', 'France'),
(36, 'Benjamin', 'Franklin', 'adulte', 'Canada'),
(37, 'Era', 'Monster', 'adulte', 'France'),
(38, 'Chaqto', 'Braqto', 'adulte', 'France'),
(39, 'Elvira', 'Sayan', 'adulte', 'France'),
(40, 'Eva', 'Shari', 'adulte', 'France'),
(41, 'Erma', 'Brari', 'adulte', 'France'),
(42, 'Salome', 'Gorgadze', 'adulte', 'France'),
(43, 'Marika', 'Davitaia', 'enfant', 'France'),
(44, 'Emma', 'Brendon', 'adulte', 'France'),
(45, 'Chava', 'Camille', 'adulte', 'France'),
(46, 'Arnault', 'Limer', 'adulte', 'France'),
(47, 'Arnault', 'Rober', 'adulte', 'France'),
(48, 'Annamarie', 'Doping', 'adulte', 'France'),
(49, 'Bao', 'Changou', 'adulte', 'France'),
(50, 'Omar', 'Moore', 'adulte', 'France'),
(51, 'Sami', 'Xareba', 'adulte', 'France'),
(52, 'Vincent', 'Van', 'adulte', 'France'),
(53, 'Van', 'Gogh', 'adulte', 'France');

-- --------------------------------------------------------

--
-- Table structure for table `geo`
--

CREATE TABLE `geo` (
  `ID` int(11) NOT NULL,
  `fr_value` varchar(250) NOT NULL,
  `geo_value` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `geo`
--

INSERT INTO `geo` (`ID`, `fr_value`, `geo_value`) VALUES
(1, 'a', 'ა'),
(2, 'b', 'ბ'),
(5, 'c', 'ც'),
(6, 'd', 'დ'),
(7, 'e', 'ე'),
(8, 'f', 'ფ'),
(9, 'g', 'გ'),
(10, 'h', 'ფ'),
(11, 'i', 'ი'),
(12, 'j', 'ჯ'),
(13, 'k', 'კ'),
(14, 'l', 'ლ'),
(15, 'm', 'მ'),
(16, 'n', 'ნ'),
(17, 'o', 'ო'),
(18, 'p', 'პ\r\n'),
(19, 'q', 'ქ'),
(20, 'r', 'რ ან ღ'),
(21, 's', 'ს'),
(22, 't', 'თ'),
(23, 'j', 'ჯ'),
(24, 'v', 'ვ'),
(25, 'w', 'დაბლიუ'),
(26, 'x', 'იქსი'),
(27, 'y', 'იოტა'),
(28, 'z', 'ზ');

-- --------------------------------------------------------

--
-- Table structure for table `reste`
--

CREATE TABLE `reste` (
  `id_reste` int(11) NOT NULL,
  `reste_france` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reste`
--

INSERT INTO `reste` (`id_reste`, `reste_france`) VALUES
(1, 'France');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `couleurs`
--
ALTER TABLE `couleurs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pays` (`pays`);

--
-- Indexes for table `geo`
--
ALTER TABLE `geo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reste`
--
ALTER TABLE `reste`
  ADD PRIMARY KEY (`id_reste`),
  ADD KEY `reste_france` (`reste_france`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `couleurs`
--
ALTER TABLE `couleurs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `geo`
--
ALTER TABLE `geo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `reste`
--
ALTER TABLE `reste`
  MODIFY `id_reste` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reste`
--
ALTER TABLE `reste`
  ADD CONSTRAINT `reste_ibfk_1` FOREIGN KEY (`reste_france`) REFERENCES `etudiants` (`pays`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
