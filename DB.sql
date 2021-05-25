-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: DB_mercadocampesino
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(225) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(225) NOT NULL,
  `category` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Queso','libra',5000,'cheese-3463368_1280.jpg','lácteos'),(2,'Cuajada','libra',5500,'tofu-5345869_1280.jpg','lácteos'),(3,'Yogur','2 litros',10000,'raspberries-1925178_1280.jpg','lácteos'),(4,'Avena','2 litros',8000,'oat-1391682_1280.jpg','cereales'),(5,'Harina de Maíz','libra',1700,'harina-de-maíz.jpg','cereales'),(6,'Trigo','libra',1600,'bread-1510298_1280.jpg','cereales'),(7,'Frijol','libra',2000,'221.png','granos'),(8,'Arroz','1 libra',1500,'rice-498688_1280.jpg','granos'),(9,'Quinoa','1 kilo',2000,'quinoa-405538_1280.jpg','granos'),(10,'Miel de abejas','libra',5500,'honey-352205_1280.jpg','otros'),(11,'Tomates','libra',1000,'tomatoes-769999_1280.jpg','verduras y frutas'),(12,'Cebolla larga','libra',1500,'324.png','verduras y frutas'),(13,'Zanahoria','libra',1200,'391.png','verduras y frutas'),(14,'Naranja tangelo','12 naranjas tangelo',6000,'241.png','verduras y frutas'),(15,'Mandarina','12 mandarinas',6000,'235.png','verduras y frutas'),(16,'Papa','libra',700,'388.png','verduras y frutas'),(17,'Alverja','libra',3600,'alverja-cascara.jpg','verduras y frutas'),(18,'Espinaca','libra',2000,'347.png','verduras y frutas'),(19,'Acelga','libra',2000,'307.png','verduras y frutas'),(20,'Plátano','Unidad',1000,'330.png','verduras y frutas'),(21,'Cebolla Cabezona','libra',1600,'203.png','verduras y frutas'),(22,'Papa criolla','libra',3000,'243.png','verduras y frutas'),(23,'Papaya','1 unidad',3000,'247.png','verduras y frutas'),(24,'Limón mandarino','12 limonés mandarinos',2000,'231.png','verduras y frutas'),(25,'Lulo','libra',1500,'fruit-5435352_1280.jpg','verduras y frutas'),(26,'Aguacate','Unidad',2000,'503.png','verduras y frutas'),(27,'Yuca','libra',7000,'291.png','verduras y frutas'),(28,'Guayaba','libra',1000,'propiedades-de-la-guayaba-60127dbf2d012.jpg','verduras y frutas');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-15 16:54:01
