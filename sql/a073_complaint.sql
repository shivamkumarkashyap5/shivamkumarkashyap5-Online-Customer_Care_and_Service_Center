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
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint` (
  `complaint_id` int NOT NULL AUTO_INCREMENT,
  `complaint_user_id` int NOT NULL DEFAULT '1000',
  `assigned_analyst_id` int NOT NULL DEFAULT '1000',
  `category` varchar(45) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `status` varchar(45) NOT NULL,
  `date_of_complaint` datetime NOT NULL,
  `description` varchar(1024) NOT NULL,
  `suggestions` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`),
  KEY `fk_complaint_user_idx` (`complaint_user_id`),
  KEY `fk_complaint_analyst1_idx` (`assigned_analyst_id`),
  CONSTRAINT `fk_complaint_analyst1` FOREIGN KEY (`assigned_analyst_id`) REFERENCES `analyst` (`analyst_id`),
  CONSTRAINT `fk_complaint_user` FOREIGN KEY (`complaint_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4016 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
INSERT INTO `complaint` VALUES (4001,3001,2003,'Software','1212121212','reopen','2016-04-12 11:12:16','Put description Here','Provide any Suggestions'),(4004,3003,2001,'Software','0','closed','2021-04-17 12:17:33','Please Fill The Description','please Fill Suggestios'),(4005,3001,2001,'Software','0','Active','2021-04-17 14:22:42','Please Fill The Description','please Fill Suggestios'),(4010,3001,2001,'Software','0','Active','2021-04-20 10:55:05','Please Fill The Description','please Fill Suggestios'),(4011,3001,2001,'Software','0','Active','2021-04-20 10:55:23','Please Fill The Description','please Fill Suggestios'),(4012,3001,2001,'Software','9876543210','Active','2021-04-20 11:06:44','hgh hghd hgh kjsu hgyh lksj hhyd hdn jjd hdkm jhjd','please Fill Suggestios'),(4013,3004,2001,'Software','0','Active','2021-04-23 14:57:46','Please Fill The Description','please Fill Suggestios'),(4014,3004,2001,'Software','0','Active','2021-04-27 11:11:42','Please Fill The Description','please Fill Suggestios'),(4015,3004,2001,'Hardware','9675382205','Active','2021-04-27 11:17:45','I have Hardware issue in Desktop, Mouse, Keyboard, Speaker, Light pen and so on.','please Fill Suggestios');
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
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
