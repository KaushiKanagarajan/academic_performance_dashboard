-- MySQL dump 10.13  Distrib 9.4.0, for macos15.4 (arm64)
--
-- Host: localhost    Database: academic_performance_dashboard
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `semester_results`
--

DROP TABLE IF EXISTS `semester_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `internal1` int DEFAULT NULL,
  `internal2` int DEFAULT NULL,
  `semester_mark` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `semester_results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester_results`
--

LOCK TABLES `semester_results` WRITE;
/*!40000 ALTER TABLE `semester_results` DISABLE KEYS */;
INSERT INTO `semester_results` VALUES (1,1,'Java',18,20,82),(2,2,'Java',17,19,78),(3,3,'Java',20,22,88),(4,4,'Java',16,18,74),(5,5,'Java',19,21,85),(6,6,'DBMS',18,20,80),(7,7,'DBMS',17,19,76),(8,8,'DBMS',20,22,90),(9,9,'DBMS',19,21,86),(10,10,'DBMS',16,18,72),(11,11,'OS',18,20,79),(12,12,'OS',17,19,75),(13,13,'OS',19,21,84),(14,14,'OS',20,22,89),(15,15,'OS',16,18,73),(16,16,'CN',18,20,81),(17,17,'CN',17,19,77),(18,18,'CN',19,21,85),(19,19,'CN',20,22,90),(20,20,'CN',16,18,74);
/*!40000 ALTER TABLE `semester_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_profile`
--

DROP TABLE IF EXISTS `student_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_profile` (
  `user_id` int NOT NULL,
  `register_no` varchar(20) DEFAULT NULL,
  `sgpa` float DEFAULT NULL,
  `cgpa` float DEFAULT NULL,
  `attendance` int DEFAULT NULL,
  `leave_count` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `student_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_profile`
--

LOCK TABLES `student_profile` WRITE;
/*!40000 ALTER TABLE `student_profile` DISABLE KEYS */;
INSERT INTO `student_profile` VALUES (1,'REG004',8.1,7.9,88,2),(2,'REG005',7.5,7.2,82,3),(3,'REG006',9.2,8.9,96,0),(4,'REG007',6.9,7,75,5),(5,'REG008',8.7,8.4,92,1),(6,'REG009',7.2,7.1,80,4),(7,'REG010',8.9,8.6,94,0),(8,'REG011',6.8,6.9,78,6),(9,'REG012',7.9,7.7,86,2),(10,'REG013',9,8.8,97,0),(11,'REG014',8.3,8,89,1),(12,'REG015',7,7.2,83,3),(13,'REG016',8.6,8.3,91,1),(14,'REG017',6.5,6.8,74,6),(15,'REG018',9.1,8.9,95,0),(16,'REG019',7.6,7.4,84,2),(17,'REG020',8,7.8,87,2),(18,'REG021',8.8,8.5,93,1),(19,'REG022',6.7,6.9,76,5),(20,'REG023',7.4,7.3,81,3);
/*!40000 ALTER TABLE `student_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_test_results`
--

DROP TABLE IF EXISTS `unit_test_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_test_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `unit_no` int DEFAULT NULL,
  `topic` varchar(50) DEFAULT NULL,
  `attempt1` int DEFAULT NULL,
  `attempt2` int DEFAULT NULL,
  `attempt3` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `unit_test_results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_test_results`
--

LOCK TABLES `unit_test_results` WRITE;
/*!40000 ALTER TABLE `unit_test_results` DISABLE KEYS */;
INSERT INTO `unit_test_results` VALUES (1,1,'Java',1,'Basics of Java',12,16,20),(2,2,'Java',1,'OOP Concepts',14,18,22),(3,3,'Java',2,'Inheritance',10,15,19),(4,4,'Java',2,'Polymorphism',11,16,21),(5,5,'Java',3,'Exception Handling',9,14,18),(6,6,'DBMS',1,'ER Model',13,17,21),(7,7,'DBMS',1,'Relational Algebra',12,16,20),(8,8,'DBMS',2,'Normalization',14,19,23),(9,9,'DBMS',2,'SQL Basics',15,20,24),(10,10,'DBMS',3,'Transactions',11,16,20),(11,11,'OS',1,'Process Management',12,17,21),(12,12,'OS',1,'CPU Scheduling',13,18,22),(13,13,'OS',2,'Deadlock',10,15,19),(14,14,'OS',2,'Memory Management',14,19,23),(15,15,'OS',3,'File System',16,21,25),(16,16,'CN',1,'OSI Model',12,16,20),(17,17,'CN',1,'TCP/IP',13,17,21),(18,18,'CN',2,'Routing Algorithms',11,15,19),(19,19,'CN',2,'Congestion Control',12,16,20),(20,20,'CN',3,'Network Security',14,18,22);
/*!40000 ALTER TABLE `unit_test_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'arun.ct23@bitsathy.ac.in','1111','ARUN K'),(2,'priya.cs23@bitsathy.ac.in','2222','PRIYA M'),(3,'sanjay.it23@bitsathy.ac.in','3333','SANJAY R'),(4,'kavya.ec23@bitsathy.ac.in','4444','KAVYA S'),(5,'nithin.me23@bitsathy.ac.in','5555','NITHIN P'),(6,'swetha.ct23@bitsathy.ac.in','6666','SWETHA L'),(7,'vishal.cs23@bitsathy.ac.in','7777','VISHAL T'),(8,'divya.it23@bitsathy.ac.in','8888','DIVYA R'),(9,'karthik.ec23@bitsathy.ac.in','9999','KARTHIK M'),(10,'anjali.me23@bitsathy.ac.in','1212','ANJALI S'),(11,'rohan.ct23@bitsathy.ac.in','1313','ROHAN K'),(12,'meenakshi.cs23@bitsathy.ac.in','1414','MEENAKSHI P'),(13,'sathish.it23@bitsathy.ac.in','1515','SATHISH R'),(14,'pooja.ec23@bitsathy.ac.in','1616','POOJA G'),(15,'bharath.me23@bitsathy.ac.in','1717','BHARATH V'),(16,'sneha.ct23@bitsathy.ac.in','1818','SNEHA N'),(17,'ajay.cs23@bitsathy.ac.in','1919','AJAY K'),(18,'monika.it23@bitsathy.ac.in','2020','MONIKA S'),(19,'ganesh.ec23@bitsathy.ac.in','2121','GANESH R'),(20,'keerthi.me23@bitsathy.ac.in','2323','KEERTHI M');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-12  9:04:51
