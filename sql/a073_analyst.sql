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
-- Table structure for table `analyst`
--

DROP TABLE IF EXISTS `analyst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analyst` (
  `analyst_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email_id` varchar(45) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` varchar(45) NOT NULL,
  `support_level` varchar(2) NOT NULL,
  `password` varchar(256) NOT NULL,
  `temp_password` varchar(256) NOT NULL,
  PRIMARY KEY (`analyst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2004 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analyst`
--

LOCK TABLES `analyst` WRITE;
/*!40000 ALTER TABLE `analyst` DISABLE KEYS */;
INSERT INTO `analyst` VALUES (2001,'Rahul','Unasigned','1212121212','analyst@customercare.com','1999-05-05 00:00:00','Unassigned','L0','226392211f45668cc073ec9e8bd037ed40ca1a10589d5ec08721900e1670f329','Aa1@qwerty'),(2002,'Tharun','Reddy','7842704740','tharunreddy0423@gmail.com','1945-09-12 00:00:00','Male','L1','2bb17716c563afdfb97752ef8f8bf59b5d5a6fcb38245d841a53a8b16a218dec','Tharun@123'),(2003,'Divyam','Kashyap','9758276084','dk@gmail.com','0012-05-21 00:00:00','Male','L1','e7052d80ce0b864b9cf54dd4df3f845f67cf28e3f0d39af3b437c027e1910305','Divyam@12');
/*!40000 ALTER TABLE `analyst` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-27 16:53:16
