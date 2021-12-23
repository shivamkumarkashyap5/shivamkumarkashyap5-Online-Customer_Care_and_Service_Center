-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: a073
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `email_analyst`
--

DROP TABLE IF EXISTS `email_analyst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_analyst` (
  `email_id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `analyst_id` int NOT NULL,
  `sent_date` datetime NOT NULL,
  `received` tinyint NOT NULL,
  `description` varchar(1024) NOT NULL,
  PRIMARY KEY (`email_id`),
  KEY `fk_email_analyst_admin1_idx` (`admin_id`),
  KEY `fk_email_analyst_analyst1_idx` (`analyst_id`),
  CONSTRAINT `fk_email_analyst_admin1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  CONSTRAINT `fk_email_analyst_analyst1` FOREIGN KEY (`analyst_id`) REFERENCES `analyst` (`analyst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_analyst`
--

LOCK TABLES `email_analyst` WRITE;
/*!40000 ALTER TABLE `email_analyst` DISABLE KEYS */;
INSERT INTO `email_analyst` VALUES (10000,1001,2002,'2021-04-17 12:13:13',1,'Dear, Tharun\n\nPlease do the needfull to rectify the complaint the user Linjo is facing\nHope this issue is rectified soon,\nRegards,\nadmin'),(10001,1001,2003,'2021-04-23 20:43:42',1,'Dear, Divyam\r\n\r\nPlease do the needfull to rectify the complaint the user shivam is facing\r\nHope this issue is rectified soon,\r\nRegards,\r\nadmin'),(10002,1001,2003,'2021-04-23 20:44:47',0,'Dear, Divyam\n\nPlease do the needfull to rectify the complaint the user shivam is facing\nHope this issue is rectified soon,\nRegards,\nadmin');
/*!40000 ALTER TABLE `email_analyst` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-27 16:53:15
