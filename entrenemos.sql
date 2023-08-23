-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: entrenemos
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

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
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Activo'),(2,'Inactivo');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planes`
--

DROP TABLE IF EXISTS `planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planes` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planes`
--

LOCK TABLES `planes` WRITE;
/*!40000 ALTER TABLE `planes` DISABLE KEYS */;
INSERT INTO `planes` VALUES (1,'GYM'),(2,'PERSONALIZADO'),(3,'ONLINE');
/*!40000 ALTER TABLE `planes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexos`
--

DROP TABLE IF EXISTS `sexos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexos` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexos`
--

LOCK TABLES `sexos` WRITE;
/*!40000 ALTER TABLE `sexos` DISABLE KEYS */;
INSERT INTO `sexos` VALUES (1,'Masculino'),(2,'Femenino'),(3,'Otro');
/*!40000 ALTER TABLE `sexos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socios`
--

DROP TABLE IF EXISTS `socios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `plan_id` int DEFAULT NULL,
  `contacto` varchar(20) DEFAULT NULL,
  `sexo_id` int DEFAULT NULL,
  `peso_ayuna` float DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `estado_id` int DEFAULT NULL,
  `informacion_adicional` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socios`
--

LOCK TABLES `socios` WRITE;
/*!40000 ALTER TABLE `socios` DISABLE KEYS */;
INSERT INTO `socios` VALUES (20,'Nicolas','Jorge','nicolas.piersanti@gmail.com','37560351',2,'+541122529738',2,11,11,'1993-04-24','2023-01-01','2023-02-01',1,'11');
/*!40000 ALTER TABLE `socios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejercicios`
--

DROP TABLE IF EXISTS `ejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejercicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `url` text NOT NULL,
  `tecnica` text NOT NULL,
  `activado` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejercicios`
--

LOCK TABLES `ejercicios` WRITE;
/*!40000 ALTER TABLE `ejercicios` DISABLE KEYS */;
INSERT INTO `ejercicios` VALUES (22,'Flexiones de Brazos','https://www.youtube.com/embed/DCS8eFTiddM','Coloca tus manos a la altura de los hombros, apoyándote en el suelo.\r\n\r\nMantén el cuerpo recto desde la cabeza hasta los talones. <br>\r\nBaja el cuerpo flexionando los codos y luego extiéndelos para volver a la posición inicial.',1),(23,'Dominadas','https://www.youtube.com/embed/DCS8eFTiddM','Agarra una barra con las palmas hacia ti, las manos separadas a la altura de los hombros. <br>\r\nLevanta tu cuerpo hasta que el mentón pase por encima de la barra y luego baja controladamente.',1),(24,'Press de Hombros con Barra','https://www.youtube.com/embed/DCS8eFTiddM','Sujeta una barra sobre los hombros. <br>\nPresiona la barra hacia arriba hasta que los brazos estén completamente extendidos y luego baja controladamente.',1),(25,'Fondos en Paralelas','https://www.youtube.com/embed/DCS8eFTiddM','Coloca las manos en paralelo en las barras. <br>\nBaja tu cuerpo doblando los codos y luego empuja para volver a la posición inicial.',1),(26,'Remo con Barra','https://www.youtube.com/embed/DCS8eFTiddM','Inclínate hacia adelante con la espalda recta, toma una barra con las manos en pronación y jálala hacia tu cuerpo mientras contraes la espalda.',1),(27,'Curl de Bíceps con Mancuernas','https://www.youtube.com/embed/DCS8eFTiddM','Sujeta una mancuerna en cada mano. <br>\nFlexiona los codos y levanta las mancuernas hacia los hombros, manteniendo los codos estables.',1),(28,'Elevaciones Laterales','https://www.youtube.com/embed/DCS8eFTiddM','Sujeta una mancuerna en cada mano. <br>\nLevanta los brazos hacia los lados, manteniendo una ligera flexión en los codos, hasta que estén paralelos al suelo.',1),(29,'Flexiones Diamante','https://www.youtube.com/embed/DCS8eFTiddM','Coloca las manos en forma de diamante debajo del pecho. <br>\nRealiza flexiones manteniendo los codos cerca del cuerpo para enfocar en los tríceps.',1),(30,'Press de Banca','https://www.youtube.com/embed/DCS8eFTiddM','Acuéstate en un banco plano, baja la barra hasta el pecho y luego empújala hacia arriba extendiendo los brazos.',1),(31,'Plancha','https://www.youtube.com/embed/DCS8eFTiddM','Apóyate en los antebrazos y los dedos de los pies, mantén el cuerpo recto desde la cabeza hasta los talones. <br>\nMantén la posición durante un tiempo determinado.',1);
/*!40000 ALTER TABLE `ejercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Activo'),(2,'Inactivo');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planes`
--

DROP TABLE IF EXISTS `planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planes` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planes`
--

LOCK TABLES `planes` WRITE;
/*!40000 ALTER TABLE `planes` DISABLE KEYS */;
INSERT INTO `planes` VALUES (1,'GYM'),(2,'PERSONALIZADO'),(3,'ONLINE');
/*!40000 ALTER TABLE `planes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutinas`
--

DROP TABLE IF EXISTS `rutinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutinas` (
  `id_rutina` int NOT NULL AUTO_INCREMENT,
  `id_socio` int NOT NULL,
  `id_ejercicio` int NOT NULL,
  `n_repeticion` int NOT NULL,
  `n_peso` int NOT NULL,
  `n_serie` int NOT NULL,
  `n_descanso` int NOT NULL,
  `n_activado` int NOT NULL,
  `n_completado` int NOT NULL,
  PRIMARY KEY (`id_rutina`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutinas`
--

LOCK TABLES `rutinas` WRITE;
/*!40000 ALTER TABLE `rutinas` DISABLE KEYS */;
INSERT INTO `rutinas` VALUES (145,20,23,10,0,3,30,0,1),(146,20,24,5,180,4,60,0,1),(147,20,25,5,180,4,60,0,1),(148,20,30,30,180,1,60,0,0),(149,20,22,1,1,1,1,0,0),(150,20,22,1,1,1,1,0,0),(151,20,22,1,1,1,1,0,0),(152,20,22,1,1,1,1,0,0),(153,20,22,1,1,1,1,0,0),(154,20,22,1,1,1,1,0,0),(155,20,22,1,1,1,1,0,0),(156,20,22,1,1,1,1,0,0),(157,20,22,1,1,1,1,0,0),(158,20,22,1,1,1,1,0,0),(159,20,22,1,1,1,1,0,0),(160,20,22,1,1,1,1,0,0),(161,20,22,1,1,1,1,0,0),(162,20,22,1,1,1,1,0,0),(163,20,22,1,1,1,1,0,0),(164,20,22,1,1,1,1,0,0),(165,20,22,1,1,1,1,0,0),(166,20,22,1,1,1,1,0,0),(167,20,22,1,1,1,1,0,0),(168,20,22,1,1,1,1,0,0),(169,20,22,1,1,1,1,1,0),(170,20,23,1,1,1,11,1,0),(171,20,23,1,1,1,11,1,0),(172,20,23,1,1,1,11,1,0),(173,21,23,10,0,3,30,1,0);
/*!40000 ALTER TABLE `rutinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexos`
--

DROP TABLE IF EXISTS `sexos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexos` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexos`
--

LOCK TABLES `sexos` WRITE;
/*!40000 ALTER TABLE `sexos` DISABLE KEYS */;
INSERT INTO `sexos` VALUES (1,'Masculino'),(2,'Femenino'),(3,'Otro');
/*!40000 ALTER TABLE `sexos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socios`
--

DROP TABLE IF EXISTS `socios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `plan_id` int DEFAULT NULL,
  `contacto` varchar(20) DEFAULT NULL,
  `sexo_id` int DEFAULT NULL,
  `peso_ayuna` float DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `estado_id` int DEFAULT NULL,
  `informacion_adicional` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socios`
--

LOCK TABLES `socios` WRITE;
/*!40000 ALTER TABLE `socios` DISABLE KEYS */;
INSERT INTO `socios` VALUES (20,'Nicolas','Jorge','nicolas.piersanti@gmail.com','37560351',2,'+541122529738',2,11,11,'1993-04-24','2023-01-01','2023-02-01',1,'11'),(21,'Lorena','Gandini','prueba1@hotmail.com','99999',2,'+541122529738',1,90,180,'1969-07-31','2023-08-01','2023-09-01',1,'ALGUNA INFO');
/*!40000 ALTER TABLE `socios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  `baja` tinyint(1) DEFAULT '0',
  `img` text NOT NULL,
  `base` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Jessica','Provenzano','por-run@hotmail.com','miro0041',0,'prorun.png','pro-run'),(2,'LORENA','GANDINI','madrynxxi@hotmail.com','noparesnoteconformes',0,'lole.png','socios');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-18 21:51:31
