/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: min_skoldatabas
-- ------------------------------------------------------
-- Server version	10.11.16-MariaDB-ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bilar`
--

DROP TABLE IF EXISTS `bilar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bilar` (
  `reg` varchar(10) NOT NULL,
  `marke` varchar(50) DEFAULT NULL,
  `modell` varchar(50) DEFAULT NULL,
  `arsmodell` int(11) DEFAULT NULL,
  `pris` int(11) DEFAULT NULL,
  `agare` int(11) DEFAULT NULL,
  PRIMARY KEY (`reg`),
  KEY `agare` (`agare`),
  CONSTRAINT `bilar_ibfk_1` FOREIGN KEY (`agare`) REFERENCES `personer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bilar`
--

LOCK TABLES `bilar` WRITE;
/*!40000 ALTER TABLE `bilar` DISABLE KEYS */;
INSERT INTO `bilar` VALUES
('AAA123','Volvo','XC40',2024,430000,NULL),
('ABC123','Saab','9-5',2003,130000,1),
('ABC456','Volkswagen','Polo',2003,75000,1),
('BBB777','Skoda','Enyaq',2025,550000,NULL),
('DEF123','Volvo','S80',2002,140000,2),
('DEF456','Toyota','Carina II',1998,30000,2),
('GHI123','Mazda','626',2001,80000,3),
('HHH888','Honda','Civic',1972,40000,NULL),
('JKL123','Audi','A8',2001,150000,5),
('MNO123','BMW','323',1998,60000,5),
('PQR123','Ford','Mondeo',2001,90000,4),
('STU123','Volvo','740',1987,35000,5),
('VYX123','Volkswagen','Golf',1988,40000,5);
/*!40000 ALTER TABLE `bilar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personer`
--

DROP TABLE IF EXISTS `personer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `personer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fnamn` varchar(40) DEFAULT NULL,
  `enamn` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personer`
--

LOCK TABLES `personer` WRITE;
/*!40000 ALTER TABLE `personer` DISABLE KEYS */;
INSERT INTO `personer` VALUES
(1,'Kalle','Anka'),
(2,'Kajsa','Anka'),
(3,'Knatte','Anka'),
(4,'Tjatte','Anka'),
(5,'Fnatte','Anka'),
(6,'Knase','Anka'),
(7,'Alexander','Lukas');
/*!40000 ALTER TABLE `personer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-31 18:27:06
