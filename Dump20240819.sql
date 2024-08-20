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
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `idCargo` int NOT NULL,
  `nomeCargo` varchar(45) NOT NULL,
  PRIMARY KEY (`idCargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Gerente'),(2,'Vendedor'),(3,'Faxineiro');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `idCidade` int NOT NULL,
  `nomeCidade` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`idCidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Mamborê'),(2,'Campo Mourão'),(3,'Maringá'),(4,'Balneário Cambúriu'),(5,'Florianópolis'),(6,'Engenheiro Beltrão'),(7,'Peabiru'),(8,'Curitiba'),(9,'Londrina'),(10,'Porto Alegre'),(11,'Gramado'),(12,'São Paulo'),(13,'Ribeirão Preto'),(14,'Maceió'),(15,'Belo Horizonte'),(16,'Ouro Preto'),(17,'Poços de Caldas'),(18,'Rio de Janeiro'),(19,'Brasília'),(20,'Salvador');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `rendaCliente` double NOT NULL,
  `dataDeCadastroCliente` date NOT NULL,
  `Pessoa_idPessoa` varchar(20) NOT NULL,
  PRIMARY KEY (`Pessoa_idPessoa`),
  CONSTRAINT `fk_Cliente_Pessoa1` FOREIGN KEY (`Pessoa_idPessoa`) REFERENCES `pessoa` (`idPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (9900,'2024-05-23','222'),(2000,'2022-01-25','555'),(3600,'2024-07-05','666'),(4500,'2023-11-09','999');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `siglaEstado` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `nomeEstado` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`siglaEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES ('AL','Alagoas'),('BA','Bahia'),('DF','Distrito Federal'),('MG','Minas Gerais'),('PR','Paraná'),('RJ','Rio de Janeiro'),('RS','Rio Grande do Sul'),('SC','Santa Catarina'),('SP','São Paulo');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `nomeFornecedor` int DEFAULT NULL,
  `Pessoa_idPessoa` varchar(20) NOT NULL,
  PRIMARY KEY (`Pessoa_idPessoa`),
  CONSTRAINT `fk_Fornecedor_Pessoa1` FOREIGN KEY (`Pessoa_idPessoa`) REFERENCES `pessoa` (`idPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'2020'),(2,'2030'),(3,'2040'),(4,'2050');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor_has_produto`
--

DROP TABLE IF EXISTS `fornecedor_has_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor_has_produto` (
  `Fornecedor_Pessoa_idPessoa` varchar(20) NOT NULL,
  `Produto_idProduto` int NOT NULL,
  PRIMARY KEY (`Fornecedor_Pessoa_idPessoa`,`Produto_idProduto`),
  KEY `fk_Fornecedor_has_Produto_Produto1_idx` (`Produto_idProduto`),
  KEY `fk_Fornecedor_has_Produto_Fornecedor1_idx` (`Fornecedor_Pessoa_idPessoa`),
  CONSTRAINT `fk_Fornecedor_has_Produto_Fornecedor1` FOREIGN KEY (`Fornecedor_Pessoa_idPessoa`) REFERENCES `fornecedor` (`Pessoa_idPessoa`),
  CONSTRAINT `fk_Fornecedor_has_Produto_Produto1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor_has_produto`
--

LOCK TABLES `fornecedor_has_produto` WRITE;
/*!40000 ALTER TABLE `fornecedor_has_produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor_has_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `salario` double DEFAULT NULL,
  `CargosIdCargo` int NOT NULL,
  `Pessoa_idPessoa` varchar(20) NOT NULL,
  PRIMARY KEY (`Pessoa_idPessoa`),
  KEY `fk_Funcionario_Cargos1_idx` (`CargosIdCargo`),
  KEY `fk_Funcionario_Pessoa1_idx` (`Pessoa_idPessoa`),
  CONSTRAINT `fk_Funcionario_Cargos1` FOREIGN KEY (`CargosIdCargo`) REFERENCES `cargo` (`idCargo`),
  CONSTRAINT `fk_Funcionario_Pessoa1` FOREIGN KEY (`Pessoa_idPessoa`) REFERENCES `pessoa` (`idPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (5000,1,'111'),(1200,3,'444'),(2000,2,'555');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `idMarca` int NOT NULL,
  `nomeMarca` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `Pedido_idPedido` int NOT NULL,
  `Cliente_Pessoa_idPessoa` varchar(20) NOT NULL,
  `valor` double DEFAULT NULL,
  `parcelas` int DEFAULT NULL,
  `TipoPagamento_idTipoPagamento` int NOT NULL,
  PRIMARY KEY (`Cliente_Pessoa_idPessoa`,`Pedido_idPedido`),
  KEY `fk_Pagamento_Pedido1_idx` (`Pedido_idPedido`),
  KEY `fk_Pagamento_Cliente1_idx` (`Cliente_Pessoa_idPessoa`),
  KEY `fk_Pagamento_TipoPagamento1_idx` (`TipoPagamento_idTipoPagamento`),
  CONSTRAINT `fk_Pagamento_Cliente1` FOREIGN KEY (`Cliente_Pessoa_idPessoa`) REFERENCES `cliente` (`Pessoa_idPessoa`),
  CONSTRAINT `fk_Pagamento_Pedido1` FOREIGN KEY (`Pedido_idPedido`) REFERENCES `pedido` (`idPedido`),
  CONSTRAINT `fk_Pagamento_TipoPagamento1` FOREIGN KEY (`TipoPagamento_idTipoPagamento`) REFERENCES `tipopagamento` (`idTipoPagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `idPedido` int NOT NULL,
  `dataDoPedido` date NOT NULL,
  `Funcionario_Pessoa_idPessoa` varchar(20) NOT NULL,
  PRIMARY KEY (`idPedido`),
  KEY `fk_Pedido_Funcionario1_idx` (`Funcionario_Pessoa_idPessoa`),
  CONSTRAINT `fk_Pedido_Funcionario1` FOREIGN KEY (`Funcionario_Pessoa_idPessoa`) REFERENCES `funcionario` (`Pessoa_idPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidohasproduto`
--

DROP TABLE IF EXISTS `pedidohasproduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidohasproduto` (
  `quantidade` int NOT NULL,
  `precoUnitarioProduto` double NOT NULL,
  `ProdutoIdProduto` int NOT NULL,
  `PedidoIdPedido` int NOT NULL,
  PRIMARY KEY (`ProdutoIdProduto`,`PedidoIdPedido`),
  KEY `fk_pedido_has_produto_produto1_idx` (`ProdutoIdProduto`),
  KEY `fk_PedidoHasProduto_Pedido1_idx` (`PedidoIdPedido`),
  CONSTRAINT `fk_pedido_has_produto_produto1` FOREIGN KEY (`ProdutoIdProduto`) REFERENCES `produto` (`idProduto`),
  CONSTRAINT `fk_PedidoHasProduto_Pedido1` FOREIGN KEY (`PedidoIdPedido`) REFERENCES `pedido` (`idPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidohasproduto`
--

LOCK TABLES `pedidohasproduto` WRITE;
/*!40000 ALTER TABLE `pedidohasproduto` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidohasproduto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `idPessoa` varchar(20) NOT NULL,
  `nomePessoa` varchar(60) NOT NULL,
  `dataNascimentoPessoa` date NOT NULL,
  `TipoPessoa_idTipoPessoa` int NOT NULL,
  `senhaPessoa` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idPessoa`),
  KEY `fk_Pessoa_TipoPessoa1_idx` (`TipoPessoa_idTipoPessoa`),
  CONSTRAINT `fk_Pessoa_TipoPessoa1` FOREIGN KEY (`TipoPessoa_idTipoPessoa`) REFERENCES `tipopessoa` (`idTipoPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES ('111','Maria Consoladora da Almas','1990-01-24',1,'123456'),('2020','Cia das peças','1990-01-01',2,'123456'),('2030','Fábrica de bicicletas Xing Ling','2000-01-01',2,'123456'),('2040','Gambiarra e Cia','2015-01-01',2,'123456'),('2050','Monark','1990-01-01',2,'123456'),('222','José da Almas','1984-01-13',1,'123456'),('444','Carlos Carlitos','1990-01-24',1,'123456'),('555','Timocréia Triches','1900-05-04',1,'123456'),('666','Adriana Silva','1978-09-14',1,'123456'),('999','Joel Simplório','2000-06-23',1,'123456');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_has_endereco`
--

DROP TABLE IF EXISTS `pessoa_has_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa_has_endereco` (
  `Endereco_idEndereco` int NOT NULL,
  `Pessoa_idPessoa` varchar(20) NOT NULL,
  PRIMARY KEY (`Endereco_idEndereco`,`Pessoa_idPessoa`),
  KEY `fk_Pessoa_has_Endereco_Endereco1_idx` (`Endereco_idEndereco`),
  KEY `fk_Pessoa_has_Endereco_Pessoa1_idx` (`Pessoa_idPessoa`),
  CONSTRAINT `fk_Pessoa_has_Endereco_Endereco1` FOREIGN KEY (`Endereco_idEndereco`) REFERENCES `endereco` (`idEndereco`),
  CONSTRAINT `fk_Pessoa_has_Endereco_Pessoa1` FOREIGN KEY (`Pessoa_idPessoa`) REFERENCES `pessoa` (`idPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_has_endereco`
--

LOCK TABLES `pessoa_has_endereco` WRITE;
/*!40000 ALTER TABLE `pessoa_has_endereco` DISABLE KEYS */;
INSERT INTO `pessoa_has_endereco` VALUES (1,'2040'),(2,'2030'),(3,'555'),(4,'111'),(5,'2050'),(6,'444'),(7,'222'),(8,'999'),(10,'2020'),(11,'666');
/*!40000 ALTER TABLE `pessoa_has_endereco` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `precoproduto`
--

DROP TABLE IF EXISTS `precoproduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precoproduto` (
  `Produto_idProduto` int NOT NULL,
  `dataPrecoProduto` timestamp NOT NULL,
  `precoProduto` double DEFAULT NULL,
  PRIMARY KEY (`Produto_idProduto`,`dataPrecoProduto`),
  KEY `fk_PrecoProduto_Produto1_idx` (`Produto_idProduto`),
  CONSTRAINT `fk_PrecoProduto_Produto1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precoproduto`
--

LOCK TABLES `precoproduto` WRITE;
/*!40000 ALTER TABLE `precoproduto` DISABLE KEYS */;
/*!40000 ALTER TABLE `precoproduto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idProduto` int NOT NULL,
  `nomeProduto` varchar(45) NOT NULL,
  `quantidadeEmEstoque` int NOT NULL,
  `UnidadeDeMedidaSiglaUnidadeDeMedida` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Marca_idMarca` int NOT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `fk_Produto_UnidadeDeMedida1_idx` (`UnidadeDeMedidaSiglaUnidadeDeMedida`),
  KEY `fk_Produto_Marca1_idx` (`Marca_idMarca`),
  CONSTRAINT `fk_Produto_Marca1` FOREIGN KEY (`Marca_idMarca`) REFERENCES `marca` (`idMarca`),
  CONSTRAINT `fk_Produto_UnidadeDeMedida1` FOREIGN KEY (`UnidadeDeMedidaSiglaUnidadeDeMedida`) REFERENCES `unidadedemedida` (`siglaUnidadeDeMedida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocontato`
--

DROP TABLE IF EXISTS `tipocontato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipocontato` (
  `idTipoContato` int NOT NULL,
  `nomeTipoContato` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idTipoContato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocontato`
--

LOCK TABLES `tipocontato` WRITE;
/*!40000 ALTER TABLE `tipocontato` DISABLE KEYS */;
INSERT INTO `tipocontato` VALUES (1,'Telefone Fixo'),(2,'Telefone Celular'),(3,'E-mail'),(4,'WhatsApp'),(5,'Fax');
/*!40000 ALTER TABLE `tipocontato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopagamento`
--

DROP TABLE IF EXISTS `tipopagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipopagamento` (
  `idTipoPagamento` int NOT NULL,
  `nomeTipoPagamento` varchar(45) DEFAULT NULL COMMENT 'Dinheiro, cartão, pix, etc.',
  PRIMARY KEY (`idTipoPagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopagamento`
--

LOCK TABLES `tipopagamento` WRITE;
/*!40000 ALTER TABLE `tipopagamento` DISABLE KEYS */;
INSERT INTO `tipopagamento` VALUES (1,'Cartão de Crédito'),(2,'Dinheiro'),(3,'Pix'),(4,'Transferência Bancária');
/*!40000 ALTER TABLE `tipopagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopessoa`
--

DROP TABLE IF EXISTS `tipopessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipopessoa` (
  `idTipoPessoa` int NOT NULL,
  `nomeTipoPessoa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COMMENT='Considerados os casos de pessoa física ou pessoa jurídica';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopessoa`
--

LOCK TABLES `tipopessoa` WRITE;
/*!40000 ALTER TABLE `tipopessoa` DISABLE KEYS */;
INSERT INTO `tipopessoa` VALUES (1,'Fisica'),(2,'Juridica');
/*!40000 ALTER TABLE `tipopessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidadedemedida`
--

DROP TABLE IF EXISTS `unidadedemedida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidadedemedida` (
  `siglaUnidadeDeMedida` varchar(2) NOT NULL,
  `nomeUnidadeDeMedida` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`siglaUnidadeDeMedida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidadedemedida`
--

LOCK TABLES `unidadedemedida` WRITE;
/*!40000 ALTER TABLE `unidadedemedida` DISABLE KEYS */;
INSERT INTO `unidadedemedida` VALUES ('G','Tamanho das roupas '),('GG','Tamanho das roupas '),('M','Tamanho das roupas '),('MB','Mountain Bike em Polegadas'),('P','Tamanho das roupas '),('SB','Speed Bike emCentímetros'),('XG','Tamanho das roupas ');
/*!40000 ALTER TABLE `unidadedemedida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bikes'
--

--
-- Dumping routines for database 'bikes'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-19  7:19:01
