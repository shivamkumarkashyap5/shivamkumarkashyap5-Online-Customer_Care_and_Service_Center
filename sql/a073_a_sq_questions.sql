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
-- Table structure for table `a_sq_questions`
--

DROP TABLE IF EXISTS `a_sq_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_sq_questions` (
  `a_sq_id` int NOT NULL AUTO_INCREMENT,
  `analyst_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`a_sq_id`),
  KEY `fk_a_sq_questions_analyst1_idx` (`analyst_id`),
  KEY `fk_a_sq_questions_secret_questions1_idx` (`question_id`),
  CONSTRAINT `fk_a_sq_questions_analyst1` FOREIGN KEY (`analyst_id`) REFERENCES `analyst` (`analyst_id`),
  CONSTRAINT `fk_a_sq_questions_secret_questions1` FOREIGN KEY (`question_id`) REFERENCES `secret_questions` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8006 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_sq_questions`
--

LOCK TABLES `a_sq_questions` WRITE;
/*!40000 ALTER TABLE `a_sq_questions` DISABLE KEYS */;
INSERT INTO `a_sq_questions` VALUES (8000,2002,9000,'Abc'),(8001,2002,9001,'Abc'),(8002,2002,9002,'Proddatur'),(8003,2003,9000,'titu'),(8004,2003,9001,'Rekha'),(8005,2003,9002,'Mainpuri');
/*!40000 ALTER TABLE `a_sq_questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-27 16:53:17
