-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: phonix
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminid` int NOT NULL AUTO_INCREMENT,
  `adminname` varchar(45) DEFAULT NULL,
  `adminpass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `flightid` int NOT NULL AUTO_INCREMENT,
  `from` varchar(45) DEFAULT NULL,
  `destination` varchar(45) DEFAULT NULL,
  `planetype` varchar(45) DEFAULT NULL,
  `availableseats` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`flightid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade1`
--

DROP TABLE IF EXISTS `grade1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade1` (
  `grade1id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `confirmpass` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`grade1id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade1`
--

LOCK TABLES `grade1` WRITE;
/*!40000 ALTER TABLE `grade1` DISABLE KEYS */;
INSERT INTO `grade1` VALUES (2,'zfdhdzh','zdfhdfh','sghsfghst','zdfhzdfh','tjtsyjs','null','sthast5y',NULL),(77,'aa','aa','aa','aa','aa','Grade 1','aa','on'),(78,'aa','aa','aa','aa','aa','Grade 1','aa','on'),(79,'hh','hh','hh','hh','hh','Grade 1','hh','on'),(80,'hh','hh','hh','hh','hh','Grade 1','hh','on'),(81,'oo','oo','oo','oo','oo','Grade 1','oo','on'),(82,'ss','ss','ss','ss','ss','Grade 1','ss','on'),(83,'ppp','ppp','ppp','ppp','ppp','Grade 1','ppp','on'),(84,'hhh','hhh','hhh','hhh','hhh','Grade 2','hhh','on'),(85,'gg','gg','gg','gg','gg','Grade 2','gg','on'),(86,'bb','bb','bb','bb','bb','Grade 1','bb','on'),(87,'ff','ff','ff','ff','ff','Grade 1','ff','on'),(88,'x','x','x','x','x','Grade 2','x','on'),(89,'t','t','t','t','t','Grade 1','t','on'),(90,'mmm','mmm','mmm','mmm','mmm','Grade 1','mmm','on'),(91,'nn','nn','nn','nn','nn','Grade 1','nn','on'),(92,'vv','vv','vv','vv','vv','Grade 1','vv','on'),(93,'dd','dd','dd','dd','dd','Grade 1','dd','on'),(94,'qq','qq','qq','qq','qq','Grade 1','qq','on'),(95,'o','o','o','o','o','Grade 1','o','on'),(96,'ttt','ttt','ttt','ttt','tt','Grade 1','ttt','on');
/*!40000 ALTER TABLE `grade1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade2`
--

DROP TABLE IF EXISTS `grade2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade2` (
  `staffid2` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`staffid2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade2`
--

LOCK TABLES `grade2` WRITE;
/*!40000 ALTER TABLE `grade2` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `ccode` varchar(45) DEFAULT NULL,
  `confirmpassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (11,'Madhushan','Deshappriya','rmmdeshapriya','mdmadhushan250@gmail.com','123456','0765798829','980442128v','1998-02-13','Sri Lanka','94','null'),(12,'akshitha','sriyanjith','akshi','akshithasriyanjith@gmail.com','12345678','078599325','8897521','1995-02-04','Sri Lanka','Sri Lanka','null'),(13,'Madhushan','Deshappriya','','mdmadhushan250@gmail.com','55555555555','0123456789','a','1995-02-04','Sri Lanka','Sri Lanka','null'),(14,'kaveesha','Deshappriya','kkkk','mdmadhushan250@gmail.com','1111','0123456789','a','1995-02-04','Sri Lanka','Sri Lanka','null'),(15,'Madhushan','Deshappriya','rm','mdmadhushan250@gmail.com','11','0123456789','a','1995-02-04','Sri Lanka','Sri Lanka','null'),(16,'Madhushan','Deshappriya','mmm','mdmadhushan250@gmail.com','111','0123456789','a','1995-02-04','Sri Lanka','Sri Lanka','null'),(17,'Madhushan','Deshappriya','aa','mdmadhushan250@gmail.com','aa','333','a','1995-02-04','Sri Lanka','Sri Lanka','null'),(18,'Madhushan','Deshappriya','a','mdmadhushan250@gmail.com','a','a','a','1995-02-04','Sri Lanka','Sri Lanka','null'),(19,'Madhushan','Deshappriya','lll','mdmadhushan250@gmail.com','111','0123456789','a','1995-02-04','Sri Lanka','Sri Lanka','null'),(20,'Madhushan','Deshappriya','rrr','mdmadhushan250@gmail.com','111','0123456789','a','1995-02-04','Sri Lanka','Sri Lanka','null'),(21,'Madhushan','Deshappriya','mmm','mdmadhushan250@gmail.com','111','0123456789','a','1995-02-04','Sri Lanka','Sri Lanka','null'),(22,'d','d','d','d','d','d','d','1995-02-04','d','d','null'),(23,'q','q','q','q','q','q','q','1995-02-04','q','q','null'),(24,'a','a','a','a','a','a','a','1995-02-04','a','a','null'),(25,'q','q','q','q','q','q','q','1995-02-04','q','q','null'),(26,'tt','tt','tt','tt','tt','tt','tt','1995-02-04','tt','tt','null'),(27,'gg','gg','gg','gg','gg','gg','gg','1995-02-04','gg','gg','null'),(28,'aa','aa','aa','aaa','aaaa','aa','aa','1995-02-04','aaa','aa','null'),(29,'xxx','xxx','xxx','xxx','xxx','xxx','xxx','1998-02-13','xxx','xxx','null'),(30,'f','f','f','f','f','f','f','1995-02-05','f','f','null');
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

-- Dump completed on 2022-10-03  1:21:49
