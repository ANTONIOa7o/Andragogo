-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: libreria
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(45) DEFAULT NULL,
  `Autor` varchar(45) DEFAULT NULL,
  `Editorial` varchar(45) DEFAULT NULL,
  `ISBN` varchar(45) DEFAULT NULL,
  `Publicacion` int(11) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`

USE libreria.libros
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (0,'En nombre de la rosa','Umberto EcO','sm','12311ABC',1980,20,'sfhgera'),(1,'El maestro del prado','Javier Sierra','Anaya','1231ABC',2010,19.95,'Novela de ficcion arte y religion'),(2,'La interpretacion de los Sueños','Sigmund Freud','Akal','1232ABC',2013,18.05,'Ensayo cientifico que sustenta las bases del Psicoanalisis'),(3,'La Tabla de Flandes','Arturo Pérez-Reverte','Debolsillo','1233ABC',2015,9.45,'Novela que entre mezcla la historia,el ajedrez,el arte como ingredientes para desvelar un crrimen'),(4,'La Metamorfosis','Frank Kafka','Alianza','1234ABC',2011,9.78,'Novela Subrrealista, adentra en los miedos sociales y el poder'),(5,'1984','George Orwell','Debolsillo','1235ABC',2021,8.5,'Novela Ficción, siendo con el tiempo un manifiesto ironico de la realidad'),(6,'El Ocho','Katherin Neville','Planeta','1236ABC',2008,10.4,'Novela Histórico Fantanstica, lineas de historia que se unen en el presente'),(7,'La Rebelión de Lucifer','J.J Benitez','Anfora','1237ABC',2005,12.4,'Novela de Ciencia Ficción generando una distopia en la tradición judeo-cristiana.'),(8,'Utopía','Tomas Moro','Ariel','1238ABC',2016,15.1,'Novela Critica Social, estructura de clases S. XVI'),(9,'La Reina Roja','Victoria Aveyard','Océano','1239ABC',2016,18.47,'Novela Fantasia, en un reino imaginario, sociedad divida por el color de su sangre'),(10,'Mitos y leyendas','VV.AA','dk','1210ABC',2020,26.9,'Narrativa de los mitos y leyendas de nuestra cultura antigüa'),(12,'En nombre de la rosa','Umberto EcO','sm','12312ABC',1980,55,'jkdfsaljiejeiji');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-24 12:30:47
