-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artista` (
  `idartista` int(11) NOT NULL AUTO_INCREMENT,
  `papel` varchar(45) DEFAULT NULL,
  `idpersona` int(11) DEFAULT NULL,
  `idgrupo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idartista`),
  UNIQUE KEY `idpersona_UNIQUE` (`idpersona`),
  KEY `artista_grupo_idx` (`idgrupo`),
  CONSTRAINT `artista_grupo` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `artista_persona` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (5,'Voz',1,NULL),(6,'Voz',2,1),(7,'Bajo, voz, programaciones',3,1),(8,'Guitarras, voz',4,1),(9,'Voz',19,NULL),(10,'Horns',73,4),(11,'Horns',74,4),(12,'Voz',79,5),(13,'Dj',80,5);
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion`
--

DROP TABLE IF EXISTS `cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancion` (
  `idcancion` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `iddisco` int(11) NOT NULL,
  `letra` longtext,
  PRIMARY KEY (`idcancion`),
  KEY `cancion_disco_idx` (`iddisco`),
  CONSTRAINT `cancion_disco` FOREIGN KEY (`iddisco`) REFERENCES `disco` (`iddisco`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion`
--

LOCK TABLES `cancion` WRITE;
/*!40000 ALTER TABLE `cancion` DISABLE KEYS */;
INSERT INTO `cancion` VALUES (1,1,'Tentación',1,NULL),(2,2,'Fueron los celos',1,NULL),(3,3,'Ella es un volcán',1,NULL),(4,4,'Si tú quisieras',1,NULL),(5,5,'Dámelo ya',1,NULL),(6,6,'Llámame',1,NULL),(7,7,'Revolución',1,NULL),(8,8,'Más dura será la caída',1,NULL),(9,9,'Nana',1,NULL),(10,10,'Santa María',1,NULL),(11,11,'Berlín',1,NULL),(12,1,'Moving on',2,NULL),(13,2,'Oh pretty woman',2,NULL),(14,3,'Walking by myself',2,'You know I love you. You know it\'s true. Give you all my love, babe. What more can I do? Walking by myself, I hope you\'ll understand. I just want to be your lovin\' man. I love ya, yes I love you with my heart and soul. I wouldn\'t mistreat you for my weight in gold. You know I love you. You know it\'s true. Give you all my love, babe. What more can I do? Walking by myself, I hope you\'ll understand. I just want to be your lovin\' man. Here we go! Keep on walkin\'! You know I love you. You know it\'s true. Give you all my love, babe. What more can I do? I\'m walking by myself, I hope you\'ll understand. I just want to be your lovin\' man. I said I\'m walking by myself, I hope you\'ll understand. I just want to be your lovin\', I just want to be your lovin\', I just want to be your lovin\' man. That\'s right.'),(15,4,'Still got the blues',2,NULL),(16,5,'Texas strut',2,NULL),(17,6,'Too tired',2,NULL),(18,7,'King of the blues',2,NULL),(19,8,'As the years go passing by',2,NULL),(20,9,'Midnight blues',2,NULL),(21,10,'That kind of woman',2,NULL),(22,11,'All your love',2,NULL),(23,12,'Stop messin\' around',2,NULL),(25,1,'Cold Day in Hell',3,NULL),(26,2,'Don\'t You Lie to Me (I Get Evil)',3,NULL),(27,3,'Story of the Blues',3,NULL),(28,4,'Since I Met You Baby',3,NULL),(29,5,'Separate Ways',3,NULL),(30,6,'Only Fool in Town',3,NULL),(31,7,'Key to Love',3,NULL),(32,8,'Jumpin\' at Shadows',3,NULL),(33,9,'The Blues Is Alright',3,NULL),(34,10,'The Hurt Inside',3,NULL),(35,11,'Nothing\'s the Same',3,NULL),(36,1,'Personal trainer',4,NULL),(37,2,'Sin miedo a vivir',4,NULL),(38,3,'Lo intenté',4,NULL),(39,4,'Bajo el mismo sol',4,NULL),(40,5,'Cantando bajo la vida',4,NULL),(41,6,'Manos en el aire',4,NULL),(42,7,'Despacito pero voy',4,NULL),(43,8,'Todo lo que importa',4,NULL),(44,9,'Latidos',4,NULL),(45,10,'Si el rap fuera un juego',4,NULL),(46,11,'Niños especiales',4,NULL),(47,12,'Apología del llanto',4,NULL),(48,13,'Ella',4,NULL),(49,14,'La puñalá',4,NULL),(50,15,'Agradecimiento',4,NULL),(51,16,'Bonustrack - El viaje',4,NULL),(52,17,'Bonustrack - Orgullo banderillero',4,NULL);
/*!40000 ALTER TABLE `cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion_compositor`
--

DROP TABLE IF EXISTS `cancion_compositor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancion_compositor` (
  `idcancion_compositor` int(11) NOT NULL AUTO_INCREMENT,
  `idcancion` int(11) DEFAULT NULL,
  `idcompositor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcancion_compositor`),
  KEY `cancion_compositor_cancion_idx` (`idcancion`),
  KEY `cancion_compositor_compositor_idx` (`idcompositor`),
  CONSTRAINT `cancion_compositor_cancion` FOREIGN KEY (`idcancion`) REFERENCES `cancion` (`idcancion`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `cancion_compositor_compositor` FOREIGN KEY (`idcompositor`) REFERENCES `compositor` (`idcompositor`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion_compositor`
--

LOCK TABLES `cancion_compositor` WRITE;
/*!40000 ALTER TABLE `cancion_compositor` DISABLE KEYS */;
INSERT INTO `cancion_compositor` VALUES (67,1,1),(68,1,2),(69,1,3),(70,2,1),(71,2,2),(72,2,3),(73,3,1),(74,3,2),(75,3,3),(76,4,1),(77,4,2),(78,4,3),(79,5,1),(80,5,2),(81,5,3),(82,6,1),(83,6,2),(84,6,3),(85,7,1),(86,7,2),(87,7,3),(88,8,1),(89,8,2),(90,8,3),(91,9,1),(92,9,2),(93,9,3),(94,10,1),(95,10,2),(96,10,3),(97,11,1),(98,11,2),(99,11,3),(100,36,4),(101,37,4),(102,38,4),(103,39,4),(104,40,4),(105,41,4),(106,42,4),(107,43,4),(108,44,4),(109,45,4),(110,46,4),(111,47,4),(112,48,4),(113,49,4),(114,50,4),(115,51,4),(116,52,4);
/*!40000 ALTER TABLE `cancion_compositor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion_letrista`
--

DROP TABLE IF EXISTS `cancion_letrista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancion_letrista` (
  `idcancion_letrista` int(11) NOT NULL AUTO_INCREMENT,
  `idcancion` int(11) DEFAULT NULL,
  `idletrista` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcancion_letrista`),
  KEY `cancion_letrista_cancion_idx` (`idcancion`),
  KEY `cancion_letrista_letrista_idx` (`idletrista`),
  CONSTRAINT `cancion_letrista_cancion` FOREIGN KEY (`idcancion`) REFERENCES `cancion` (`idcancion`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `cancion_letrista_letrista` FOREIGN KEY (`idletrista`) REFERENCES `letrista` (`idletrista`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion_letrista`
--

LOCK TABLES `cancion_letrista` WRITE;
/*!40000 ALTER TABLE `cancion_letrista` DISABLE KEYS */;
INSERT INTO `cancion_letrista` VALUES (1,12,1),(2,13,2),(3,14,3),(4,15,1),(5,16,1),(6,17,4),(7,17,5),(8,17,6),(9,18,1),(10,19,7),(11,20,1),(12,21,8),(13,22,9),(14,23,10),(16,25,1),(17,26,11),(18,27,1),(19,28,1),(20,29,1),(21,30,1),(22,31,12),(23,32,13),(24,33,14),(25,34,1),(26,35,1),(27,36,15),(28,37,15),(29,38,15),(30,39,15),(31,40,15),(32,41,15),(33,42,15),(34,43,15),(35,44,15),(36,45,15),(37,46,15),(38,47,15),(39,48,15),(40,49,15),(41,50,15),(42,51,15),(43,52,15);
/*!40000 ALTER TABLE `cancion_letrista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion_musico_instrumento`
--

DROP TABLE IF EXISTS `cancion_musico_instrumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancion_musico_instrumento` (
  `idcancion_musico_instrumento` int(11) NOT NULL AUTO_INCREMENT,
  `idcancion` int(11) DEFAULT NULL,
  `idmusico` int(11) DEFAULT NULL,
  `idinstrumento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcancion_musico_instrumento`),
  KEY `cancion_musico_cancion_idx` (`idcancion`),
  KEY `cancion_musico_musico_idx` (`idmusico`),
  KEY `cancion_musico_instrumento_instrumento_idx` (`idinstrumento`),
  CONSTRAINT `cancion_musico_instrumento_cancion` FOREIGN KEY (`idcancion`) REFERENCES `cancion` (`idcancion`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `cancion_musico_instrumento_instrumento` FOREIGN KEY (`idinstrumento`) REFERENCES `instrumento` (`idinstrumento`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `cancion_musico_instrumento_musico` FOREIGN KEY (`idmusico`) REFERENCES `musico` (`idmusico`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=487 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion_musico_instrumento`
--

LOCK TABLES `cancion_musico_instrumento` WRITE;
/*!40000 ALTER TABLE `cancion_musico_instrumento` DISABLE KEYS */;
INSERT INTO `cancion_musico_instrumento` VALUES (1,1,1,1),(2,1,2,3),(3,1,40,NULL),(4,1,3,4),(5,1,4,4),(6,1,5,5),(7,1,6,6),(8,1,41,NULL),(9,1,7,8),(10,1,8,9),(11,1,9,10),(12,2,1,1),(13,2,2,3),(14,2,40,NULL),(15,2,3,4),(16,2,4,4),(17,2,5,5),(18,2,6,6),(19,2,41,NULL),(20,2,7,8),(21,2,8,9),(22,2,9,10),(23,3,1,1),(24,3,2,3),(25,3,40,NULL),(26,3,3,4),(27,3,4,4),(28,3,5,5),(29,3,6,6),(30,3,41,NULL),(31,3,7,8),(32,3,8,9),(33,3,9,10),(34,4,1,1),(35,4,2,3),(36,4,40,NULL),(37,4,3,4),(38,4,4,4),(39,4,5,5),(40,4,6,6),(41,4,41,NULL),(42,4,7,8),(43,4,8,9),(44,4,9,10),(45,5,1,1),(46,5,2,3),(47,5,40,NULL),(48,5,3,4),(49,5,4,4),(50,5,5,5),(51,5,6,6),(52,5,41,NULL),(53,5,7,8),(54,5,8,9),(55,5,9,10),(56,6,1,1),(57,6,2,3),(58,6,40,NULL),(59,6,3,4),(60,6,4,4),(61,6,5,5),(62,6,6,6),(63,6,41,NULL),(64,6,7,8),(65,6,8,9),(66,6,9,10),(67,7,1,1),(68,7,2,3),(69,7,40,NULL),(70,7,3,4),(71,7,4,4),(72,7,5,5),(73,7,6,6),(74,7,41,NULL),(75,7,7,8),(76,7,8,9),(77,7,9,10),(78,8,1,1),(79,8,2,3),(80,8,40,NULL),(81,8,3,4),(82,8,4,4),(83,8,5,5),(84,8,6,6),(85,8,41,NULL),(86,8,7,8),(87,8,8,9),(88,8,9,10),(89,9,1,1),(90,9,2,3),(91,9,40,NULL),(92,9,3,4),(93,9,4,4),(94,9,5,5),(95,9,6,6),(96,9,41,NULL),(97,9,7,8),(98,9,8,9),(99,9,9,10),(100,10,1,1),(101,10,2,3),(102,10,40,NULL),(103,10,3,4),(104,10,4,4),(105,10,5,5),(106,10,6,6),(107,10,41,NULL),(108,10,7,8),(109,10,8,9),(110,10,9,10),(111,11,1,1),(112,11,2,3),(113,11,40,NULL),(114,11,3,4),(115,11,4,4),(116,11,5,5),(117,11,6,6),(118,11,41,NULL),(119,11,7,8),(120,11,8,9),(121,11,9,10),(127,1,1,2),(128,12,10,12),(129,12,12,1),(130,12,13,13),(131,12,14,14),(132,13,10,12),(133,13,15,26),(134,13,11,15),(135,13,13,13),(136,13,14,14),(137,13,16,8),(138,13,17,16),(139,13,18,17),(140,13,19,18),(141,14,10,12),(142,14,12,1),(143,14,13,13),(144,14,14,14),(145,14,17,19),(146,15,10,12),(147,15,11,2),(148,15,20,1),(149,15,13,13),(150,15,14,14),(151,15,21,3),(152,16,10,12),(153,16,11,2),(154,16,22,13),(155,16,23,14),(156,17,10,12),(157,17,31,26),(158,17,11,1),(159,17,13,13),(160,17,14,14),(161,17,25,8),(162,17,17,16),(163,17,26,17),(164,17,19,18),(165,18,10,12),(166,18,11,15),(167,18,13,13),(168,18,23,14),(169,18,16,8),(170,18,17,16),(171,18,18,17),(172,18,19,18),(173,19,10,12),(174,19,11,15),(175,19,20,1),(176,19,22,13),(177,19,23,14),(178,19,17,16),(179,19,19,18),(180,20,10,12),(181,20,12,21),(182,20,13,13),(183,20,14,14),(184,20,21,3),(185,21,10,12),(186,21,42,22),(187,21,42,24),(188,21,20,1),(189,21,22,13),(190,21,14,14),(191,21,28,8),(192,21,17,16),(193,21,18,17),(194,21,19,18),(195,22,10,12),(196,22,12,15),(197,22,13,13),(198,22,14,14),(199,23,10,12),(200,23,12,1),(201,23,13,13),(202,23,14,14),(203,23,17,23),(207,13,17,17),(208,18,17,17),(209,25,29,2),(210,25,32,13),(211,25,22,13),(212,25,33,13),(213,25,14,14),(214,25,34,14),(215,25,28,11),(216,25,17,11),(217,25,18,11),(218,25,19,11),(219,25,43,11),(220,25,37,24),(221,25,38,24),(222,25,39,25),(223,26,29,2),(224,26,32,13),(225,26,22,13),(226,26,33,13),(227,26,14,14),(228,26,34,14),(229,26,28,11),(230,26,17,11),(231,26,18,11),(232,26,19,11),(233,26,43,11),(234,26,37,24),(235,26,38,24),(236,26,39,25),(237,27,29,2),(238,27,32,13),(239,27,22,13),(240,27,33,13),(241,27,14,14),(242,27,34,14),(243,27,28,11),(244,27,17,11),(245,27,18,11),(246,27,19,11),(247,27,43,11),(248,27,37,24),(249,27,38,24),(250,27,39,25),(251,28,29,2),(252,28,32,13),(253,28,22,13),(254,28,33,13),(255,28,14,14),(256,28,34,14),(257,28,28,11),(258,28,17,11),(259,28,18,11),(260,28,19,11),(261,28,43,11),(262,28,37,24),(263,28,38,24),(264,28,39,25),(265,29,29,2),(266,29,32,13),(267,29,22,13),(268,29,33,13),(269,29,14,14),(270,29,34,14),(271,29,28,11),(272,29,17,11),(273,29,18,11),(274,29,19,11),(275,29,43,11),(276,29,37,24),(277,29,38,24),(278,29,39,25),(279,30,29,2),(280,30,32,13),(281,30,22,13),(282,30,33,13),(283,30,14,14),(284,30,34,14),(285,30,28,11),(286,30,17,11),(287,30,18,11),(288,30,19,11),(289,30,43,11),(290,30,37,24),(291,30,38,24),(292,30,39,25),(293,31,29,2),(294,31,32,13),(295,31,22,13),(296,31,33,13),(297,31,14,14),(298,31,34,14),(299,31,28,11),(300,31,17,11),(301,31,18,11),(302,31,19,11),(303,31,43,11),(304,31,37,24),(305,31,38,24),(306,31,39,25),(307,32,29,2),(308,32,32,13),(309,32,22,13),(310,32,33,13),(311,32,14,14),(312,32,34,14),(313,32,28,11),(314,32,17,11),(315,32,18,11),(316,32,19,11),(317,32,43,11),(318,32,37,24),(319,32,38,24),(320,32,39,25),(321,33,29,2),(322,33,32,13),(323,33,22,13),(324,33,33,13),(325,33,14,14),(326,33,34,14),(327,33,28,11),(328,33,17,11),(329,33,18,11),(330,33,19,11),(331,33,43,11),(332,33,37,24),(333,33,38,24),(334,33,39,25),(335,34,29,2),(336,34,32,13),(337,34,22,13),(338,34,33,13),(339,34,14,14),(340,34,34,14),(341,34,28,11),(342,34,17,11),(343,34,18,11),(344,34,19,11),(345,34,43,11),(346,34,37,24),(347,34,38,24),(348,34,39,25),(349,35,29,2),(350,35,32,13),(351,35,22,13),(352,35,33,13),(353,35,14,14),(354,35,34,14),(355,35,28,11),(356,35,17,11),(357,35,18,11),(358,35,19,11),(359,35,43,11),(360,35,37,24),(361,35,38,24),(362,35,39,25),(363,15,10,3),(364,15,11,3),(365,20,10,3),(366,20,11,3),(367,12,10,11),(368,12,11,11),(369,13,10,11),(370,13,11,11),(371,14,10,11),(372,14,11,11),(373,15,10,11),(374,15,11,11),(375,16,10,11),(376,16,11,11),(377,17,10,11),(378,17,11,11),(379,18,10,11),(380,18,11,11),(381,19,10,11),(382,19,11,11),(383,20,10,11),(384,20,11,11),(385,21,10,11),(386,21,11,11),(387,22,10,11),(388,22,11,11),(389,23,10,11),(390,23,11,11),(437,25,10,27),(438,25,10,3),(439,25,29,27),(440,25,29,3),(441,26,10,27),(442,26,10,3),(443,26,29,27),(444,26,29,3),(445,27,10,27),(446,27,10,3),(447,27,29,27),(448,27,29,3),(449,28,10,27),(450,28,10,3),(451,28,29,27),(452,28,29,3),(453,29,10,27),(454,29,10,3),(455,29,29,27),(456,29,29,3),(457,30,10,27),(458,30,10,3),(459,30,29,27),(460,30,29,3),(461,31,10,27),(462,31,10,3),(463,31,29,27),(464,31,29,3),(465,32,10,27),(466,32,10,3),(467,32,29,27),(468,32,29,3),(469,33,10,27),(470,33,10,3),(471,33,29,27),(472,33,29,3),(473,34,10,27),(474,34,10,3),(475,34,29,27),(476,34,29,3),(477,35,10,27),(478,35,10,3),(479,35,29,27),(480,35,29,3),(485,28,30,NULL),(486,33,31,NULL);
/*!40000 ALTER TABLE `cancion_musico_instrumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion_otro`
--

DROP TABLE IF EXISTS `cancion_otro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancion_otro` (
  `idcancion_otro` int(11) NOT NULL AUTO_INCREMENT,
  `idcancion` int(11) DEFAULT NULL,
  `idotro` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcancion_otro`),
  KEY `cancion_otro_cancion_idx` (`idcancion`),
  KEY `cancion_otro_otro_idx` (`idotro`),
  CONSTRAINT `cancion_otro_cancion` FOREIGN KEY (`idcancion`) REFERENCES `cancion` (`idcancion`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `cancion_otro_otro` FOREIGN KEY (`idotro`) REFERENCES `otro` (`idotro`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion_otro`
--

LOCK TABLES `cancion_otro` WRITE;
/*!40000 ALTER TABLE `cancion_otro` DISABLE KEYS */;
INSERT INTO `cancion_otro` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,2,2),(9,2,3),(10,2,4),(11,2,5),(12,2,6),(13,3,1),(14,3,2),(15,3,3),(16,3,4),(17,3,5),(18,3,6),(19,4,1),(20,4,2),(21,4,3),(22,4,4),(23,4,5),(24,4,6),(25,5,1),(26,5,2),(27,5,3),(28,5,4),(29,5,5),(30,5,6),(31,6,1),(32,6,2),(33,6,3),(34,6,4),(35,6,5),(36,6,6),(37,7,1),(38,7,2),(39,7,3),(40,7,4),(41,7,5),(42,7,6),(43,8,1),(44,8,2),(45,8,3),(46,8,4),(47,8,5),(48,8,6),(49,9,1),(50,9,2),(51,9,3),(52,9,4),(53,9,5),(54,9,6),(55,10,1),(56,10,2),(57,10,3),(58,10,4),(59,10,5),(60,10,6),(61,11,1),(62,11,2),(63,11,3),(64,11,4),(65,11,5),(66,11,6),(67,12,15),(68,12,16),(69,12,17),(70,12,18),(71,12,19),(72,12,7),(73,13,15),(74,13,16),(75,13,17),(76,13,18),(77,13,19),(78,13,7),(79,14,15),(80,14,16),(81,14,17),(82,14,18),(83,14,19),(84,14,7),(85,15,15),(86,15,16),(87,15,17),(88,15,18),(89,15,19),(90,15,7),(91,16,15),(92,16,16),(93,16,17),(94,16,18),(95,16,19),(96,16,7),(97,17,15),(98,17,16),(99,17,17),(100,17,18),(101,17,19),(102,17,7),(103,18,15),(104,18,16),(105,18,17),(106,18,18),(107,18,19),(108,18,7),(109,19,15),(110,19,16),(111,19,17),(112,19,18),(113,19,19),(114,19,7),(115,20,15),(116,20,16),(117,20,17),(118,20,18),(119,20,19),(120,20,7),(121,21,15),(122,21,16),(123,21,17),(124,21,18),(125,21,19),(126,21,7),(127,22,15),(128,22,16),(129,22,17),(130,22,18),(131,22,19),(132,22,7),(133,23,15),(134,23,16),(135,23,17),(136,23,18),(137,23,19),(138,23,7),(145,25,20),(146,25,8),(147,25,7),(148,26,20),(149,26,8),(150,26,7),(151,27,20),(152,27,8),(153,27,7),(154,28,20),(155,28,8),(156,28,7),(157,29,20),(158,29,8),(159,29,7),(160,30,20),(161,30,8),(162,30,7),(163,31,20),(164,31,8),(165,31,7),(166,32,20),(167,32,8),(168,32,7),(169,33,20),(170,33,8),(171,33,7),(172,34,20),(173,34,8),(174,34,7),(175,35,20),(176,35,8),(177,35,7),(178,25,9),(179,25,10),(180,25,11),(181,25,12),(182,25,13),(183,25,14),(184,25,15),(185,26,9),(186,26,10),(187,26,11),(188,26,12),(189,26,13),(190,26,14),(191,26,15),(192,27,9),(193,27,10),(194,27,11),(195,27,12),(196,27,13),(197,27,14),(198,27,15),(199,28,9),(200,28,10),(201,28,11),(202,28,12),(203,28,13),(204,28,14),(205,28,15),(206,29,9),(207,29,10),(208,29,11),(209,29,12),(210,29,13),(211,29,14),(212,29,15),(213,30,9),(214,30,10),(215,30,11),(216,30,12),(217,30,13),(218,30,14),(219,30,15),(220,31,9),(221,31,10),(222,31,11),(223,31,12),(224,31,13),(225,31,14),(226,31,15),(227,32,9),(228,32,10),(229,32,11),(230,32,12),(231,32,13),(232,32,14),(233,32,15),(234,33,9),(235,33,10),(236,33,11),(237,33,12),(238,33,13),(239,33,14),(240,33,15),(241,34,9),(242,34,10),(243,34,11),(244,34,12),(245,34,13),(246,34,14),(247,34,15),(248,35,9),(249,35,10),(250,35,11),(251,35,12),(252,35,13),(253,35,14),(254,35,15),(255,12,21),(256,13,21),(257,14,21),(258,15,21),(259,16,21),(260,17,21),(261,18,21),(262,19,21),(263,20,21),(264,21,21),(265,22,21),(266,23,21),(268,25,22),(269,26,22),(270,27,22),(271,28,22),(272,29,22),(273,30,22),(274,31,22),(275,32,22),(276,33,22),(277,34,22),(278,35,22),(279,39,23),(280,40,24),(281,41,25),(282,41,26),(283,43,27),(284,47,28),(285,48,29),(286,51,30);
/*!40000 ALTER TABLE `cancion_otro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion_productor`
--

DROP TABLE IF EXISTS `cancion_productor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancion_productor` (
  `idcancion__productor` int(11) NOT NULL AUTO_INCREMENT,
  `idcancion` int(11) DEFAULT NULL,
  `idproductor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcancion__productor`),
  KEY `cancion_productor_cancion_idx` (`idcancion`),
  KEY `cancion_productor_productor_idx` (`idproductor`),
  CONSTRAINT `cancion_productor_cancion` FOREIGN KEY (`idcancion`) REFERENCES `cancion` (`idcancion`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `cancion_productor_productor` FOREIGN KEY (`idproductor`) REFERENCES `productor` (`idproductor`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion_productor`
--

LOCK TABLES `cancion_productor` WRITE;
/*!40000 ALTER TABLE `cancion_productor` DISABLE KEYS */;
INSERT INTO `cancion_productor` VALUES (1,1,2),(2,1,3),(3,1,4),(4,2,2),(5,2,3),(6,2,4),(7,3,2),(8,3,3),(9,3,4),(10,4,2),(11,4,3),(12,4,4),(13,5,2),(14,5,3),(15,5,4),(16,6,2),(17,6,3),(18,6,4),(19,7,2),(20,7,3),(21,7,4),(22,8,2),(23,8,3),(24,8,4),(25,9,1),(28,10,2),(29,10,3),(30,10,4),(31,11,2),(32,11,3),(33,11,4),(34,2,1),(35,4,1),(36,11,1),(37,12,5),(38,13,5),(39,14,5),(40,15,5),(41,16,5),(42,17,5),(43,18,5),(44,19,5),(45,20,5),(46,21,5),(47,22,5),(48,23,5),(50,25,5),(51,26,5),(52,27,13),(53,28,5),(54,29,5),(55,30,5),(56,31,5),(57,32,5),(58,33,5),(59,34,5),(60,35,5),(78,36,24),(79,37,24),(80,38,24),(81,39,24),(82,40,24),(83,41,24),(84,42,24),(85,43,24),(86,44,24),(87,45,24),(88,46,24),(89,47,24),(90,48,24),(91,49,24),(92,50,24),(93,51,24),(94,52,24);
/*!40000 ALTER TABLE `cancion_productor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compositor`
--

DROP TABLE IF EXISTS `compositor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compositor` (
  `idcompositor` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcompositor`),
  UNIQUE KEY `idpersona_UNIQUE` (`idpersona`),
  CONSTRAINT `idpersona` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compositor`
--

LOCK TABLES `compositor` WRITE;
/*!40000 ALTER TABLE `compositor` DISABLE KEYS */;
INSERT INTO `compositor` VALUES (1,2),(2,3),(3,4),(4,79);
/*!40000 ALTER TABLE `compositor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disco`
--

DROP TABLE IF EXISTS `disco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disco` (
  `iddisco` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `anio` int(11) DEFAULT NULL,
  `idartista` int(11) DEFAULT NULL,
  `idgrupo` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddisco`),
  KEY `artista_disco_idx` (`idartista`),
  KEY `grupo_disco_idx` (`idgrupo`),
  CONSTRAINT `artista_disco` FOREIGN KEY (`idartista`) REFERENCES `artista` (`idartista`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `grupo_disco` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disco`
--

LOCK TABLES `disco` WRITE;
/*!40000 ALTER TABLE `disco` DISABLE KEYS */;
INSERT INTO `disco` VALUES (1,'Tentación',1990,NULL,1),(2,'Still got the blues',1990,9,NULL),(3,'After hours',1992,9,NULL),(4,'Sin miedo a vivir',2014,NULL,5);
/*!40000 ALTER TABLE `disco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disco_productor`
--

DROP TABLE IF EXISTS `disco_productor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disco_productor` (
  `iddisco_productor` int(11) NOT NULL AUTO_INCREMENT,
  `iddisco` int(11) DEFAULT NULL,
  `idproductor` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddisco_productor`),
  KEY `disco_productor_disco_idx` (`iddisco`),
  KEY `disco_productor_productor_idx` (`idproductor`),
  CONSTRAINT `disco_productor_disco` FOREIGN KEY (`iddisco`) REFERENCES `disco` (`iddisco`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `disco_productor_productor` FOREIGN KEY (`idproductor`) REFERENCES `productor` (`idproductor`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disco_productor`
--

LOCK TABLES `disco_productor` WRITE;
/*!40000 ALTER TABLE `disco_productor` DISABLE KEYS */;
INSERT INTO `disco_productor` VALUES (1,1,22),(2,2,4),(3,2,5),(4,3,4),(5,3,5),(6,4,24);
/*!40000 ALTER TABLE `disco_productor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `idgrupo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idgrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'La Unión'),(2,'Spencer Quartet of London'),(3,'Alive and Kickin\' Horns'),(4,'The Memphis Horns'),(5,'SFDK');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrumento`
--

DROP TABLE IF EXISTS `instrumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrumento` (
  `idinstrumento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idinstrumento`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrumento`
--

LOCK TABLES `instrumento` WRITE;
/*!40000 ALTER TABLE `instrumento` DISABLE KEYS */;
INSERT INTO `instrumento` VALUES (1,'Piano'),(2,'Teclado'),(3,'Cuerda'),(4,'Violín'),(5,'Viola'),(6,'Violonchelo'),(7,'Metal'),(8,'Trompeta'),(9,'Trombón'),(10,'Saxo tenor'),(11,'Horns'),(12,'Guitarra/Vocal'),(13,'Bajo'),(14,'Tambor'),(15,'Hammond Organ'),(16,'Alto  Sax'),(17,'Tenor Sax'),(18,'Baritone Sax'),(19,'Harmónica'),(20,'Alto Sax'),(21,'Piano Eléctrico'),(22,'Slide and Rhythm Guitar'),(23,'Saxes'),(24,'Backing Vocals'),(25,'Oboe'),(26,'Guitarra'),(27,'Brass');
/*!40000 ALTER TABLE `instrumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `letrista`
--

DROP TABLE IF EXISTS `letrista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `letrista` (
  `idletrista` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) DEFAULT NULL,
  PRIMARY KEY (`idletrista`),
  UNIQUE KEY `idpersona_UNIQUE` (`idpersona`),
  CONSTRAINT `letrista_persona` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `letrista`
--

LOCK TABLES `letrista` WRITE;
/*!40000 ALTER TABLE `letrista` DISABLE KEYS */;
INSERT INTO `letrista` VALUES (1,19),(2,28),(3,29),(4,30),(5,31),(6,32),(7,33),(8,34),(9,35),(10,36),(11,65),(12,66),(13,67),(14,68),(15,79);
/*!40000 ALTER TABLE `letrista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musico`
--

DROP TABLE IF EXISTS `musico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musico` (
  `idmusico` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) DEFAULT NULL,
  `idgrupo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmusico`),
  UNIQUE KEY `idpersona_UNIQUE` (`idpersona`),
  UNIQUE KEY `idgrupo_UNIQUE` (`idgrupo`),
  KEY `musico_grupo_idx` (`idgrupo`),
  CONSTRAINT `musico_grupo` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `musico_persona` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musico`
--

LOCK TABLES `musico` WRITE;
/*!40000 ALTER TABLE `musico` DISABLE KEYS */;
INSERT INTO `musico` VALUES (1,1,NULL),(2,5,NULL),(3,6,NULL),(4,7,NULL),(5,8,NULL),(6,9,NULL),(7,10,NULL),(8,11,NULL),(9,12,NULL),(10,19,NULL),(11,27,NULL),(12,37,NULL),(13,38,NULL),(14,39,NULL),(15,40,NULL),(16,41,NULL),(17,42,NULL),(18,43,NULL),(19,44,NULL),(20,45,NULL),(21,46,NULL),(22,47,NULL),(23,48,NULL),(25,50,NULL),(26,51,NULL),(28,53,NULL),(29,62,NULL),(30,63,NULL),(31,64,NULL),(32,70,NULL),(33,71,NULL),(34,72,NULL),(35,73,NULL),(36,74,NULL),(37,75,NULL),(38,76,NULL),(39,77,NULL),(40,NULL,2),(41,NULL,3),(42,34,NULL),(43,NULL,4);
/*!40000 ALTER TABLE `musico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otro`
--

DROP TABLE IF EXISTS `otro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otro` (
  `idotro` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) DEFAULT NULL,
  `papel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idotro`),
  UNIQUE KEY `idpersona_UNIQUE` (`idpersona`),
  CONSTRAINT `otro_persona` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otro`
--

LOCK TABLES `otro` WRITE;
/*!40000 ALTER TABLE `otro` DISABLE KEYS */;
INSERT INTO `otro` VALUES (1,13,'Coros'),(2,14,'Coros'),(3,15,'Batería'),(4,16,'Ingeniero sonido y mezclas'),(5,17,'Ingeniero sonido'),(6,18,'Asistente ingeniero'),(7,26,'Ingeniero'),(8,55,'Ingeniero'),(9,56,'Asistente'),(10,57,'Asistente'),(11,58,'Asistente'),(12,59,'Asistente'),(13,60,'Asistente'),(14,61,'Asistente'),(15,21,'Asistente'),(16,22,'Asistente'),(17,23,'Asistente'),(18,24,'Asistente'),(19,25,'Asistente'),(20,20,'Ingeniero'),(21,27,'Director de cuerda'),(22,46,'Director de cuerda'),(23,81,'Colaborador'),(24,82,'Colaborador'),(25,83,'Colaborador'),(26,84,'Colaborador'),(27,85,'Colaborador'),(28,86,'Colaborador'),(29,87,'Colaborador'),(30,88,'Colaborador');
/*!40000 ALTER TABLE `otro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Antonio Cortés'),(2,'Rafael Sánchez'),(3,'Luis Bolín'),(4,'Mario Martínez'),(5,'Ben Hoffnung'),(6,'Robert Atchison'),(7,'Roland Roberts'),(8,'Ian Rowbotham'),(9,'Erica Simpson'),(10,'Noel Langley'),(11,'Dennis Rollins'),(12,'Scott Garland'),(13,'Mario Ricci'),(14,'Ingrid Schroeder'),(15,'Geoff Dunn'),(16,'Geoff Hunt'),(17,'John Palmer'),(18,'Yan Memnis'),(19,'Gary Moore'),(20,'Ian Taylor'),(21,'Steve Fitzmaurice'),(22,'Noel Harris'),(23,'Stuart Day'),(24,'Marcus Draws'),(25,'Greg Muden'),(26,'Hayden Bendall'),(27,'Don Airey'),(28,'Williams'),(29,'Jimmy Rodgers'),(30,'Johnny \"Guitar\" Watson'),(31,'Maxwell Davies'),(32,'Saul Bihari'),(33,'Dan Malone'),(34,'George Harrison'),(35,'Rush'),(36,'Peter Green'),(37,'Mick Weaver'),(38,'Andy Pyle'),(39,'Graham Walker'),(40,'Albert King'),(41,'Raoul D\'Olivera'),(42,'Frank Mead'),(43,'Nick Pentelow'),(44,'Nick Payn'),(45,'Nicky Hopkins'),(46,'Gavin Wright'),(47,'Bob Daisley'),(48,'Brian Downey'),(50,'Stuart Brooks'),(51,'Andrew Hamilton'),(53,'Martin Drover'),(54,'Gregg Jackman'),(55,'Peter Hodgson'),(56,'Robin Barclay'),(57,'Matt Lane'),(58,'Ed Goldberg'),(59,'Ellen Fitton'),(60,'Alec Firla'),(61,'Andy Baker'),(62,'Tommy Eyre'),(63,'B. B. King'),(64,'Albert Collins'),(65,'Hudson Whittaker'),(66,'John Mayall'),(67,'D. Bennett'),(68,'Milton Campbell'),(69,'Tommy Eyre'),(70,'Will Lee'),(71,'Jonnhy B. Gaydon'),(72,'Anton Fig'),(73,'Andrew Love'),(74,'Wayne Jackson'),(75,'Carol Kenyon'),(76,'Linda Taylor'),(77,'Richard Morgan'),(78,'Mike Howlett'),(79,'Zatu'),(80,'Acción Sánchez'),(81,'Little Pepe'),(82,'Green Valley'),(83,'Shabu'),(84,'Mala Juntera'),(85,'Fyahboy'),(86,'Juaninacka'),(87,'Alberto Gambino'),(88,'Kriss');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productor`
--

DROP TABLE IF EXISTS `productor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productor` (
  `idproductor` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) DEFAULT NULL,
  PRIMARY KEY (`idproductor`),
  UNIQUE KEY `idpersona_UNIQUE` (`idpersona`),
  CONSTRAINT `productor_persona` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productor`
--

LOCK TABLES `productor` WRITE;
/*!40000 ALTER TABLE `productor` DISABLE KEYS */;
INSERT INTO `productor` VALUES (23,1),(1,2),(2,3),(3,4),(4,19),(5,20),(12,27),(13,54),(21,69),(22,78),(24,80);
/*!40000 ALTER TABLE `productor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-14  9:11:25
