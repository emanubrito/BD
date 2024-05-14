-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: emanuelle_brito_moura_santos_streaming_filmes_series
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
-- Table structure for table `compra_filmes`
--

DROP TABLE IF EXISTS `compra_filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_filmes` (
  `filmes_id` int NOT NULL,
  `cliente_cpf` varchar(20) NOT NULL,
  `id` int NOT NULL,
  `valor` varchar(10) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`filmes_id`,`cliente_cpf`,`id`),
  KEY `fk_filmes_has_cliente_cliente1_idx` (`cliente_cpf`),
  KEY `fk_filmes_has_cliente_filmes1_idx` (`filmes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_filmes`
--

LOCK TABLES `compra_filmes` WRITE;
/*!40000 ALTER TABLE `compra_filmes` DISABLE KEYS */;
INSERT INTO `compra_filmes` VALUES (1,'456',2,'$7,69','2023-12-06'),(2,'123',1,'$10,99','2023-08-22'),(3,'789',3,'$7,69','2024-02-02'),(5,'456',4,'$16,99','2024-04-23'),(5,'987',5,'$15,59','2024-05-03');
/*!40000 ALTER TABLE `compra_filmes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-14  0:46:11
