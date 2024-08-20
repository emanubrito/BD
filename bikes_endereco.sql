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
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `idEndereco` int NOT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `referencia` varchar(45) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `CidadeIdCidade` int NOT NULL,
  `Estado_siglaEstado` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`idEndereco`),
  KEY `fk_Endereco_Cidade1_idx` (`CidadeIdCidade`),
  KEY `fk_Endereco_Estado1_idx` (`Estado_siglaEstado`),
  CONSTRAINT `fk_Endereco_Cidade1` FOREIGN KEY (`CidadeIdCidade`) REFERENCES `cidade` (`idCidade`),
  CONSTRAINT `fk_Endereco_Estado1` FOREIGN KEY (`Estado_siglaEstado`) REFERENCES `estado` (`siglaEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Rua das Flores','123','Próximo ao Parque','01234-567',12,'SP'),(2,'Avenida Paulista','4567','Em frente ao MASP','01311-000',12,'SP'),(3,'Rua do Comércio','89','Próximo ao Mercado Municipal','22070-000',18,'RJ'),(4,'Avenida Atlântica','2500','De frente para a Praia de Copacabana','20010-000',18,'RJ'),(5,'Rua Ametista','42','Perto da Praça das Pedras','30512-300',15,'MG'),(6,'Alameda dos Anjos','765','Ao lado do Hospital Central','70200-123',19,'DF'),(7,'Rua das Palmeiras','31','Próximo ao Parque Farroupilha','90123-456',10,'RS'),(8,'Avenida Sete de Setembro','1200','Próximo à Praça Tiradentes','80060-000',8,'PR'),(9,'Rua do Sol','555','Perto do Shopping Boa Vista','50050-020',14,'AL'),(10,'Avenida Brasil','1010','Próximo ao Pelourinho','40060-000',20,'BA'),(11,'Antônio Chiminácio','2211','Próximo ao CTG','87340-000',1,'PR');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-19  7:04:50
