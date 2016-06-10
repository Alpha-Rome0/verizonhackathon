-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` text,
  `cat` text,
  `name_txt` text,
  `price` double DEFAULT NULL,
  `inStock` text,
  `author_txt` text,
  `series_txt` text,
  `sequence_i` int(11) DEFAULT NULL,
  `genre_s` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('0553573403','book','A Game of Thrones',7.99,'true','George R.R. Martin','A Song of Ice and Fire',1,'fantasy'),('0553579908','book','A Clash of Kings',7.99,'true','George R.R. Martin','A Song of Ice and Fire',2,'fantasy'),('055357342X','book','A Storm of Swords',7.99,'true','George R.R. Martin','A Song of Ice and Fire',3,'fantasy'),('0553293354','book','Foundation',7.99,'true','Isaac Asimov','Foundation Novels',1,'scifi'),('0812521390','book','The Black Company',6.99,'false','Glen Cook','The Chronicles of The Black Company',1,'fantasy'),('0812550706','book','Ender\'s Game',6.99,'true','Orson Scott Card','Ender',1,'scifi'),('0441385532','book','Jhereg',7.95,'false','Steven Brust','Vlad Taltos',1,'fantasy'),('0380014300','book','Nine Princes In Amber',6.99,'true','Roger Zelazny','the Chronicles of Amber',1,'fantasy'),('0805080481','book','The Book of Three',5.99,'true','Lloyd Alexander','The Chronicles of Prydain',1,'fantasy'),('080508049X','book','The Black Cauldron',5.99,'true','Lloyd Alexander','The Chronicles of Prydain',2,'fantasy'),('0805080482','book','Harry Potter Stone',10,'true','JK Rowling','Harry Potter',1,'fantasy');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-09 20:40:54
