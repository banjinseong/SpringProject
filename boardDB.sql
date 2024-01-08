-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: board
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bno` bigint NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `writer` varchar(30) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bno` (`bno`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`bno`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,767,'gd','gd','gdd'),(2,767,'gd','gd','gdd'),(3,767,'gd','gd','gdd'),(4,767,'gd','gd','gdd'),(5,767,'gd','gd','gdd'),(6,767,'gd','gd','gdd'),(7,768,'gdgd','봔진성','2023-05-18'),(8,768,'gadagadg','봔진성','2023-05-18'),(12,768,'gd','봔진성','23-05-18 19:48'),(13,768,'gd','봔진성','23-05-18 19:48'),(14,768,'gd','봔진성','23-05-18 19:48'),(15,768,'gd','봔진성','23-05-18 19:48'),(16,768,'gd','봔진성','23-05-18 19:48'),(17,768,'gd','봔진성','23-05-18 19:48'),(18,768,'gd','봔진성','23-05-18 19:48'),(19,768,'gd','봔진성','23-05-18 19:48'),(20,768,'gd','봔진성','23-05-18 19:48'),(21,767,'gd','봔진성','23-05-18 20:41'),(22,761,'1','봔진성','23-05-18 20:41'),(23,761,'2','봔진성','23-05-18 20:41'),(24,761,'3','봔진성','23-05-18 20:41'),(25,761,'4','봔진성','23-05-18 20:41'),(26,761,'5','봔진성','23-05-18 20:41'),(27,761,'6','봔진성','23-05-18 20:41'),(30,766,'2','봔진성','23-06-28 19:53');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `writer` varchar(30) NOT NULL,
  `view` bigint NOT NULL,
  `created_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=771 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(2,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(3,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(4,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(6,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(7,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(8,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(9,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(13,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(14,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(15,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(16,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(17,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(18,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(19,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(20,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(28,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(29,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(30,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(31,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(32,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(33,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(34,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(35,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(36,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(37,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(38,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(39,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(40,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(41,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(42,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(43,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(59,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(60,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(61,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(62,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(63,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(64,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(65,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(66,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(67,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(68,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(69,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(70,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(71,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(72,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(73,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(74,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(75,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(76,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(77,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(78,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(79,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(80,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(81,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(82,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(83,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(84,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(85,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(86,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(87,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(88,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(89,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(90,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(122,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(123,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(124,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(125,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(126,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(127,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(128,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(129,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(130,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(131,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(132,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(133,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(134,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(135,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(136,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(137,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(138,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(139,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(140,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(141,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(142,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(143,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(144,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(145,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(146,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(147,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(148,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(149,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(150,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(151,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(152,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(153,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(154,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(155,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(156,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(157,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(158,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(159,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(160,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(161,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(162,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(163,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(164,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(165,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(166,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(167,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(168,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(169,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(170,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(171,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(172,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(173,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(174,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(175,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(176,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(177,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(178,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(179,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(180,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(181,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(182,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(183,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(184,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(185,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(249,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(250,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(251,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(252,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(253,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(254,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(255,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(256,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(257,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(258,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(259,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(260,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(261,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(262,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(263,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(264,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(265,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(266,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(267,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(268,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(269,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(270,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(271,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(272,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(273,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(274,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(275,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(276,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(277,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(278,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(279,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(280,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(281,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(282,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(283,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(284,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(285,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(286,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(287,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(288,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(289,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(290,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(291,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(292,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(293,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(294,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(295,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(296,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(297,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(298,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(299,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(300,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(301,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(302,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(303,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(304,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(305,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(306,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(307,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(308,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(309,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(310,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(311,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(312,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(313,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(314,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(315,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(316,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(317,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(318,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(319,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(320,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(321,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(322,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(323,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(324,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(325,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(326,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(327,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(328,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(329,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(330,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(331,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(332,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(333,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(334,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(335,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(336,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(337,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(338,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(339,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(340,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(341,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(342,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(343,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(344,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(345,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(346,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(347,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(348,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(349,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(350,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(351,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(352,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(353,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(354,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(355,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(356,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(357,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(358,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(359,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(360,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(361,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(362,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(363,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(364,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(365,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(366,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(367,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(368,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(369,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(370,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(371,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(372,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(373,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(374,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(375,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(376,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(504,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(505,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(506,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(507,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(508,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(509,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(510,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(511,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(512,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(513,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(514,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(515,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(516,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(517,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(518,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(519,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(520,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(521,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(522,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(523,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(524,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(525,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(526,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(527,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(528,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(529,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(530,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(531,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(532,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(533,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(534,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(535,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(536,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(537,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(538,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(539,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(540,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(541,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(542,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(543,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(544,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(545,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(546,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(547,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(548,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(549,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(550,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(551,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(552,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(553,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(554,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(555,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(556,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(557,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(558,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(559,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(560,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(561,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(562,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(563,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(564,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(565,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(566,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(567,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(568,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(569,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(570,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(571,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(572,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(573,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(574,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(575,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(576,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(577,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(578,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(579,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(580,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(581,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(582,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(583,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(584,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(585,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(586,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(587,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(588,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(589,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(590,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(591,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(592,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(593,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(594,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(595,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(596,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(597,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(598,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(599,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(600,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(601,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(602,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(603,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(604,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(605,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(606,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(607,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(608,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(609,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(610,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(611,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(612,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(613,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(614,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(615,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(616,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(617,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(618,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(619,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(620,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(621,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(622,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(623,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(624,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(625,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(626,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(627,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(628,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(629,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(630,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(631,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(632,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(633,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(634,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(635,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(636,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(637,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(638,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(639,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(640,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(641,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(642,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(643,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(644,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(645,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(646,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(647,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(648,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(649,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(650,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(651,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(652,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(653,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(654,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(655,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(656,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(657,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(658,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(659,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(660,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(661,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(662,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(663,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(664,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(665,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(666,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(667,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(668,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(669,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(670,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(671,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(672,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(673,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(674,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(675,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(676,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(677,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(678,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(679,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(680,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(681,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(682,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(683,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(684,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(685,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(686,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(687,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(688,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(689,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(690,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(691,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(692,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(693,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(694,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(695,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(696,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(697,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(698,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(699,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(700,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(701,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(702,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(703,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(704,'제목~~','내용!~~','작성자~!!',4,'생성일','수정일',5),(705,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(706,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(707,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(708,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(709,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(710,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(711,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(712,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(713,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(714,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(715,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(716,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(717,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(718,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(719,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(720,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(721,'제목~~','내용!~~','작성자~!!',2,'생성일','수정일',5),(722,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(723,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(724,'제목~~','내용!~~','작성자~!!',2,'생성일','수정일',5),(725,'제목~~','내용!~~','작성자~!!',3,'생성일','수정일',5),(726,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(727,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(728,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(729,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(730,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(731,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(732,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(733,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(734,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(735,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(736,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(737,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(738,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(739,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(740,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(741,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(742,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(743,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(744,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(745,'제목~~','내용!~~','작성자~!!',2,'생성일','수정일',5),(746,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(747,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(748,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(749,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(750,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(751,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(752,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(753,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(754,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(755,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(756,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(757,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(758,'제목~~','내용!~~','작성자~!!',1,'생성일','수정일',5),(759,'제목~~','내용!~~','작성자~!!',10,'생성일','수정일',5),(760,'gd','ggd','임시1',3,'2023-05-15','2023-05-15',5),(761,'ad','adda','임시1',15,'2023-05-15','2023-05-15',5),(766,'gadg','geagegeq','봔진성',10,'2023-05-16','2023-05-16',13),(767,'vdvxd','vdavda','봔진성',51,'2023-05-17(수정)','2023-05-17',13),(768,'dsgsgg','ㅎㅇ','봔진성',95,'2023-05-18(수정)','2023-06-28',13),(769,'vdf','fd','봔진성',0,'2023-09-07','2023-09-07',13),(770,'jggg','gjggj','봔진성',2,'2023-09-07','2023-09-07',13);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8_bin NOT NULL,
  `price` int NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `writer` varchar(30) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(50) COLLATE utf8_bin NOT NULL,
  `modified_date` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_id` bigint NOT NULL,
  `img` blob,
  `view` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'제목',100,'내용','작성자','작성일','수정일',4,NULL,NULL),(2,'제목',100,'내용','작성자','작성일','수정일',4,NULL,NULL);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `unique_name` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'아이디1','비번','이메일','닉네임'),(4,'아이디2','비번','이메일','닉네임2'),(5,'아이디3','비번','이메일','닉네임3'),(6,'아이디4','비번','이메일','닉네임4'),(7,'아이디5','비번','이메일','닉네임5'),(8,'ㄴㅇ','','',''),(10,'아이디12','csfsfsa','safsf@asf','반진'),(11,'gasgsa','gsags','asagsag@fasf','gsag'),(12,'whynot','비번','이메일','gdgd'),(13,'idchk1','1123jinjin!','d@sdf','봔진성'),(15,'sa','fsaf','ps123123ps@naver.com','fas'),(16,'vzdx','fsa','fsa@saf','ffsa'),(17,'s','fsa','fasf@Fsa','fsa'),(18,'chkid2','1123jinjin!','ps123123ps@naver.com','쁸진성');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-28 17:19:09
