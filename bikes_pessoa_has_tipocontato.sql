CREATE DATABASE  IF NOT EXISTS `bikes` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bikes`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bikes
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pessoa_has_tipocontato`
--

DROP TABLE IF EXISTS `pessoa_has_tipocontato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa_has_tipocontato` (
  `Pessoa_idPessoa` varchar(20) NOT NULL,
  `TipoContato_idTipoContato` int NOT NULL,
  `contato` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Pessoa_idPessoa`,`TipoContato_idTipoContato`),
  KEY `fk_Pessoa_has_TipoContato_TipoContato1_idx` (`TipoContato_idTipoContato`),
  KEY `fk_Pessoa_has_TipoContato_Pessoa1_idx` (`Pessoa_idPessoa`),
  CONSTRAINT `fk_Pessoa_has_TipoContato_Pessoa1` FOREIGN KEY (`Pessoa_idPessoa`) REFERENCES `pessoa` (`idPessoa`),
  CONSTRAINT `fk_Pessoa_has_TipoContato_TipoContato1` FOREIGN KEY (`TipoContato_idTipoContato`) REFERENCES `tipocontato` (`idTipoContato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_has_tipocontato`
--

LOCK TABLES `pessoa_has_tipocontato` WRITE;
/*!40000 ALTER TABLE `pessoa_has_tipocontato` DISABLE KEYS */;
INSERT INTO `pessoa_has_tipocontato` VALUES ('111',4,'(41) 98765-5432'),('2020',3,'cia.das.pecas90@gmail.com'),('2030',3,'xingling.bikes@gmail.com'),('2040',3,'gambiarra.everton@hotmail.com'),('2050',3,'monark.consultoria@gmail.com'),('222',2,'(11) 91234-5678'),('444',4,'(11) 98765-4321'),('555',4,'(21) 91234-5678'),('666',4,'(31) 98765-1234'),('999',2,'(44) 9873-3795');
/*!40000 ALTER TABLE `pessoa_has_tipocontato` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-19  7:04:49
