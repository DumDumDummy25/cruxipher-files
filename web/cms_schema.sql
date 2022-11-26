-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: ams
-- ------------------------------------------------------
-- Server version	8.0.27

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
  `username` varchar(30) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','admin','admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` varchar(50) NOT NULL,
  `ic` varchar(30) DEFAULT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `ic` (`ic`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`ic`) REFERENCES `professor` (`professor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('CS F111','Lov_Kumar','Computer Programming'),('CS F211','C_Hota','Data Structures And Algorithms'),('CS F212','Lov_Kumar','Database Management System'),('CS F213','DVN_Siva_Kumar','Object Oriented Programming'),('CS F214','V_Ramaswamy','Logic In Computer Science'),('CS F222','Raghunath_Reddy','Discr Struc For Comp Sci'),('CS F320','NL_Bhanu_Murthy','Foundations Of Data Science'),('CS F372','Nikumani_C','Operating Systems'),('CS F407','C_Hota','Artificial Intelligence'),('CS F415','Apurba_Das','Data Mining');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `topic_id` int NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `file_link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`item_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`topic_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (2,2,'https://imgur.com/a/GL5xIs6','https://imgur.com/a/a4Sdcey'),(3,3,'https://i.imgur.com/f7xboOyb.jpg','shorturl.at/wyHY3'),(92,4,'https://i.imgur.com/dqopYB9b.jpg','https://rroll.to/iHgSMg'),(93,5,'https://imgur.com/a/kIIuJyJ','https://www.youtube.com/watch?v=6-HUgzYPm9g'),(94,6,'https://i.imgur.com/f7xboOyb.jpg','https://imgur.com/a/a4Sdcey'),(95,7,'https://i.imgur.com/dqopYB9b.jpg','https://rroll.to/iHgSMg'),(96,8,'https://imgur.com/a/kIIuJyJ','shorturl.at/wyHY3'),(97,9,'https://imgur.com/gallery/pmSuXlo','shorturl.at/wyHY3'),(98,10,'https://i.imgur.com/f7xboOyb.jpg','https://imgur.com/a/a4Sdcey'),(99,11,'https://i.imgur.com/dqopYB9b.jpg','shorturl.at/wyHY3'),(100,12,'https://imgur.com/gallery/pmSuXlo','https://rroll.to/iHgSMg'),(101,13,'https://imgur.com/a/GL5xIs6','shorturl.at/wyHY3'),(102,14,'https://i.imgur.com/f7xboOyb.jpg','https://rroll.to/iHgSMg'),(103,15,'https://imgur.com/gallery/pmSuXlo','shorturl.at/wyHY3'),(104,16,'https://imgur.com/a/kIIuJyJ','shorturl.at/wyHY3'),(105,17,'https://imgur.com/a/GL5xIs6','shorturl.at/wyHY3'),(106,18,'https://imgur.com/a/kIIuJyJ','https://imgur.com/a/kGiBKZT'),(107,19,'https://imgur.com/gallery/pmSuXlo','shorturl.at/wyHY3'),(108,20,'https://imgur.com/a/GL5xIs6','https://rroll.to/iHgSMg'),(109,21,'https://i.imgur.com/oeYzasc.jpg','https://imgur.com/a/a4Sdcey'),(110,22,'https://imgur.com/gallery/pmSuXlo','https://www.youtube.com/watch?v=dQw4w9WgXcQ'),(111,23,'https://i.imgur.com/f7xboOyb.jpg','https://www.youtube.com/watch?v=dQw4w9WgXcQ'),(112,24,'https://imgur.com/gallery/pmSuXlo','shorturl.at/wyHY3'),(113,25,'https://imgur.com/a/GL5xIs6','https://www.youtube.com/watch?v=dQw4w9WgXcQ'),(114,26,'https://i.imgur.com/dqopYB9b.jpg','https://www.youtube.com/watch?v=dQw4w9WgXcQ'),(115,27,'https://imgur.com/a/GL5xIs6','shorturl.at/wyHY3'),(116,28,'https://imgur.com/gallery/pmSuXlo','https://www.youtube.com/watch?v=dQw4w9WgXcQ'),(117,29,'https://i.imgur.com/f7xboOyb.jpg','shorturl.at/wyHY3'),(118,30,'https://i.imgur.com/oeYzasc.jpg','https://imgur.com/a/a4Sdcey'),(119,31,'https://imgur.com/gallery/pmSuXlo','shorturl.at/wyHY3'),(120,32,'https://i.imgur.com/oeYzasc.jpg','https://rroll.to/iHgSMg'),(121,33,'https://imgur.com/a/GL5xIs6','shorturl.at/wyHY3'),(122,34,'https://i.imgur.com/f7xboOyb.jpg','shorturl.at/wyHY3'),(123,35,'https://imgur.com/gallery/pmSuXlo','https://www.youtube.com/watch?v=6-HUgzYPm9g'),(124,36,'https://imgur.com/a/kIIuJyJ','https://imgur.com/a/GL5xIs6'),(125,37,'https://i.imgur.com/oeYzasc.jpg','shorturl.at/wyHY3'),(126,38,'https://imgur.com/a/kGiBKZT','https://rroll.to/iHgSMg'),(127,39,'https://imgur.com/a/GL5xIs6','https://imgur.com/a/kGiBKZT'),(128,40,'https://i.imgur.com/f7xboOyb.jpg','shorturl.at/wyHY3'),(129,41,'https://i.imgur.com/dqopYB9b.jpg','https://rroll.to/iHgSMg'),(130,42,'https://imgur.com/a/kGiBKZT','https://imgur.com/a/GL5xIs6'),(131,43,'https://imgur.com/a/kIIuJyJ','https://imgur.com/a/a4Sdcey'),(132,44,'https://imgur.com/gallery/pmSuXlo','https://imgur.com/a/GL5xIs6'),(133,45,'https://i.imgur.com/f7xboOyb.jpg','https://www.youtube.com/watch?v=6-HUgzYPm9g'),(134,46,'https://i.imgur.com/oeYzasc.jpg','https://imgur.com/a/GL5xIs6'),(135,47,'https://imgur.com/a/GL5xIs6','https://rroll.to/iHgSMg'),(136,48,'https://i.imgur.com/oeYzasc.jpg','shorturl.at/wyHY3'),(137,49,'https://imgur.com/a/a4Sdcey','https://imgur.com/a/GL5xIs6'),(138,50,'https://imgur.com/a/GL5xIs6','shorturl.at/wyHY3'),(139,51,'https://i.imgur.com/oeYzasc.jpg','https://rroll.to/iHgSMg'),(140,52,'https://i.imgur.com/dqopYB9b.jpg','https://www.youtube.com/watch?v=dQw4w9WgXcQ'),(141,53,'https://imgur.com/a/kIIuJyJ','shorturl.at/wyHY3'),(142,54,'https://i.imgur.com/oeYzasc.jpg','https://imgur.com/a/kGiBKZT'),(143,55,'https://imgur.com/gallery/pmSuXlo','shorturl.at/wyHY3'),(144,56,'https://imgur.com/a/GL5xIs6','https://www.youtube.com/watch?v=6-HUgzYPm9g'),(145,57,'https://imgur.com/gallery/pmSuXlo','shorturl.at/wyHY3'),(146,58,'https://i.imgur.com/oeYzasc.jpg','https://www.youtube.com/watch?v=6-HUgzYPm9g'),(147,59,'https://imgur.com/a/kIIuJyJ','https://imgur.com/a/GL5xIs6'),(148,60,'https://imgur.com/gallery/pmSuXlo','https://www.youtube.com/watch?v=6-HUgzYPm9g'),(149,61,'https://i.imgur.com/oeYzasc.jpg','https://imgur.com/a/GL5xIs6'),(150,62,'https://imgur.com/a/GL5xIs6','https://imgur.com/a/kGiBKZT'),(151,63,'https://i.imgur.com/oeYzasc.jpg','shorturl.at/wyHY3'),(152,64,'https://imgur.com/a/kIIuJyJ','shorturl.at/wyHY3'),(153,65,'https://imgur.com/a/GL5xIs6','https://imgur.com/a/kGiBKZT'),(154,66,'https://i.imgur.com/dqopYB9b.jpg','https://imgur.com/a/GL5xIs6'),(155,67,'https://imgur.com/gallery/pmSuXlo','https://imgur.com/a/kGiBKZT'),(156,68,'https://imgur.com/a/adcU1AN','shorturl.at/wyHY3'),(157,69,'https://i.imgur.com/dqopYB9b.jpg','https://rroll.to/iHgSMg'),(158,70,'https://i.imgur.com/f7xboOyb.jpg','https://www.youtube.com/watch?v=dQw4w9WgXcQ'),(159,71,'https://imgur.com/a/GL5xIs6','shorturl.at/wyHY3'),(160,72,'https://imgur.com/a/GL5xIs6','https://imgur.com/a/kGiBKZT'),(161,73,'https://imgur.com/a/kGiBKZT','https://www.youtube.com/watch?v=dQw4w9WgXcQ'),(162,74,'https://i.imgur.com/dqopYB9b.jpg','shorturl.at/wyHY3'),(163,75,'https://imgur.com/a/kIIuJyJ','https://imgur.com/a/kGiBKZT'),(164,76,'https://i.imgur.com/oeYzasc.jpg','https://imgur.com/a/GL5xIs6'),(165,77,'https://imgur.com/a/GL5xIs6','https://rroll.to/iHgSMg'),(166,78,'https://imgur.com/gallery/pmSuXlo','https://imgur.com/a/kGiBKZT'),(167,79,'https://i.imgur.com/oeYzasc.jpg','https://imgur.com/a/kGiBKZT'),(168,80,'https://imgur.com/gallery/pmSuXlo','https://imgur.com/a/kGiBKZT'),(169,81,'https://i.imgur.com/oeYzasc.jpg','shorturl.at/wyHY3'),(170,82,'https://imgur.com/a/kGiBKZT','https://imgur.com/a/kGiBKZT'),(171,83,'https://i.imgur.com/oeYzasc.jpg','https://rroll.to/iHgSMg'),(172,84,'https://i.imgur.com/f7xboOyb.jpg','https://imgur.com/a/kGiBKZT'),(173,85,'https://i.imgur.com/dqopYB9b.jpg','https://www.youtube.com/watch?v=dQw4w9WgXcQ'),(174,86,'https://imgur.com/gallery/pmSuXlo','https://rroll.to/iHgSMg'),(175,87,'https://imgur.com/a/GL5xIs6','shorturl.at/wyHY3'),(176,88,'https://i.imgur.com/oeYzasc.jpg','https://imgur.com/a/kGiBKZT'),(177,89,'https://imgur.com/a/kGiBKZT','https://imgur.com/a/kGiBKZT'),(178,90,'https://i.imgur.com/f7xboOyb.jpg','https://imgur.com/a/kGiBKZT'),(179,91,'https://i.imgur.com/dqopYB9b.jpg','https://imgur.com/a/kGiBKZT');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof_mobno`
--

DROP TABLE IF EXISTS `prof_mobno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prof_mobno` (
  `username` varchar(30) NOT NULL,
  `mob_no` varchar(13) NOT NULL,
  PRIMARY KEY (`username`,`mob_no`),
  CONSTRAINT `prof_mobno_ibfk_1` FOREIGN KEY (`username`) REFERENCES `professor` (`professor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof_mobno`
--

LOCK TABLES `prof_mobno` WRITE;
/*!40000 ALTER TABLE `prof_mobno` DISABLE KEYS */;
INSERT INTO `prof_mobno` VALUES ('Apurba_Das','1234567890'),('Apurba_Das','2345678901'),('Apurba_Das','3456789012'),('Barsha_Mitra','3456789012'),('Barsha_Mitra','4567890123'),('Barsha_Mitra','5678901234'),('C_Hota','2345678901'),('C_Hota','4567890123'),('C_Hota','5678901234'),('DVN_Siva_Kumar','5678901234'),('DVN_Siva_Kumar','6789012345'),('DVN_Siva_Kumar','8901234567'),('Lov_Kumar','0123456789'),('Lov_Kumar','6789012345'),('Lov_Kumar','7890123456'),('Manik_Gupta','3456789012'),('Manik_Gupta','7890123456'),('Manik_Gupta','89012345678'),('Nikumani_C','6789012345'),('Nikumani_C','8901234567'),('Nikumani_C','9012345678'),('NL_Bhanu_Murthy','012345678'),('NL_Bhanu_Murthy','1234567890'),('NL_Bhanu_Murthy','9012345678'),('Raghunath_Reddy','0123456789'),('Raghunath_Reddy','1234567890'),('Raghunath_Reddy','7890123456'),('V_Ramaswamy','1234567890'),('V_Ramaswamy','2345678901'),('V_Ramaswamy','5678901234');
/*!40000 ALTER TABLE `prof_mobno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `professor_id` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`professor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES ('Apurba_Das','passp','apurba@hyderabad.bits-pilani.ac.in','Dr. Apurba','Das'),('Barsha_Mitra','passp','barsha.mitra@hyderabad.bits-pilani.ac.in','Dr. Barsha','Mitra'),('C_Hota','passp','hota@hyderabad.bits-pilani.ac.in','Prof. Chittaranjan','Hota'),('DVN_Siva_Kumar','passp','sivakumar@hyderabad.bits-pilani.ac.in','Dr. D V N Siva','Kumar'),('Lov_Kumar','passp','lovkumar@hyderabad.bits-pilani.ac.in','Dr. Lov','Kumar'),('Manik_Gupta','manik','manik@hyderabad.bits-pilani.ac.in','Prof. Manik','Gupta'),('Nikumani_C','passp','nikumani@hyderabad.bits-pilani.ac.in ','Dr. Nikumani','Choudhury'),('NL_Bhanu_Murthy','passp','bhanu@hyderabad.bits-pilani.ac.in','Prof. N.L.Bhanu','Murthy'),('Raghunath_Reddy','passp','raghunath@hyderabad.bits-pilani.ac.in','Dr. Raghunath','Reddy M'),('V_Ramaswamy','passp','venkat@hyderabad.bits-pilani.ac.in','Dr. Venkatakrishnan','Ramaswamy');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `section_id` varchar(3) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  PRIMARY KEY (`section_id`,`course_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `section_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES ('L','CS F111'),('L1','CS F111'),('P1','CS F111'),('T1','CS F111'),('L','CS F211'),('L1','CS F211'),('P1','CS F211'),('T1','CS F211'),('L','CS F212'),('L1','CS F212'),('P1','CS F212'),('T1','CS F212'),('L','CS F213'),('L1','CS F213'),('P1','CS F213'),('T1','CS F213'),('L','CS F214'),('L1','CS F214'),('P1','CS F214'),('T1','CS F214'),('L','CS F222'),('L1','CS F222'),('P1','CS F222'),('T1','CS F222'),('L','CS F320'),('L1','CS F320'),('P1','CS F320'),('T1','CS F320'),('L','CS F372'),('L1','CS F372'),('P1','CS F372'),('T1','CS F372'),('L','CS F407'),('L1','CS F407'),('P1','CS F407'),('T1','CS F407'),('L','CS F415'),('L1','CS F415'),('P1','CS F415'),('T1','CS F415');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` char(13) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('2023A2PS2000H','Danny','Dragić','****'),('2023A3PS2079H','Yeong-Gi','Siemon','****'),('2023A4PS0619H','Kleopatra','Pop','****'),('2023A7PS0001H','Heraclio','Fabian','****'),('2023A7PS0193H','John','Doe','****'),('2023A7PS1291H','Pearce','Vicente','****'),('2023A7PS1790H','Zorka',' Annema','****'),('2023A8PS2564H','Albína','Sandberg','****'),('2023AAPS0229H','Elda','Pollock','****'),('2023B3PS1300H','Odoacer','Mohammed','****');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studies`
--

DROP TABLE IF EXISTS `studies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studies` (
  `student_id` varchar(13) NOT NULL,
  `section_id` varchar(3) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  PRIMARY KEY (`student_id`,`section_id`,`course_id`),
  KEY `section_id` (`section_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `studies_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE,
  CONSTRAINT `studies_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`) ON DELETE CASCADE,
  CONSTRAINT `studies_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studies`
--

LOCK TABLES `studies` WRITE;
/*!40000 ALTER TABLE `studies` DISABLE KEYS */;
INSERT INTO `studies` VALUES ('2023A2PS2000H','L','CS F111'),('2023A2PS2000H','L','CS F211'),('2023A3PS2079H','L','CS F111'),('2023A3PS2079H','L','CS F211'),('2023A4PS0619H','L','CS F111'),('2023A4PS0619H','L','CS F211'),('2023A7PS0001H','L','CS F111'),('2023A7PS0001H','L','CS F211'),('2023A7PS0193H','L','CS F111'),('2023A7PS0193H','L','CS F211'),('2023A7PS1291H','L','CS F111'),('2023A7PS1291H','L','CS F211'),('2023A7PS1790H','L','CS F111'),('2023A7PS1790H','L','CS F211'),('2023A8PS2564H','L','CS F111'),('2023A8PS2564H','L','CS F211'),('2023AAPS0229H','L','CS F111'),('2023AAPS0229H','L','CS F211'),('2023B3PS1300H','L','CS F111'),('2023B3PS1300H','L','CS F211'),('2023A2PS2000H','L1','CS F111'),('2023A2PS2000H','L1','CS F211'),('2023A2PS2000H','L1','CS F212'),('2023A2PS2000H','L1','CS F213'),('2023A2PS2000H','L1','CS F372'),('2023A3PS2079H','L1','CS F111'),('2023A3PS2079H','L1','CS F211'),('2023A3PS2079H','L1','CS F212'),('2023A3PS2079H','L1','CS F372'),('2023A4PS0619H','L1','CS F111'),('2023A4PS0619H','L1','CS F211'),('2023A4PS0619H','L1','CS F212'),('2023A4PS0619H','L1','CS F372'),('2023A7PS0001H','L1','CS F111'),('2023A7PS0001H','L1','CS F211'),('2023A7PS0001H','L1','CS F212'),('2023A7PS0001H','L1','CS F213'),('2023A7PS0001H','L1','CS F372'),('2023A7PS0193H','L1','CS F111'),('2023A7PS0193H','L1','CS F211'),('2023A7PS0193H','L1','CS F212'),('2023A7PS0193H','L1','CS F372'),('2023A7PS1291H','L1','CS F111'),('2023A7PS1291H','L1','CS F211'),('2023A7PS1291H','L1','CS F212'),('2023A7PS1291H','L1','CS F372'),('2023A7PS1790H','L1','CS F111'),('2023A7PS1790H','L1','CS F211'),('2023A7PS1790H','L1','CS F212'),('2023A7PS1790H','L1','CS F213'),('2023A7PS1790H','L1','CS F372'),('2023A8PS2564H','L1','CS F111'),('2023A8PS2564H','L1','CS F211'),('2023A8PS2564H','L1','CS F212'),('2023A8PS2564H','L1','CS F372'),('2023AAPS0229H','L1','CS F111'),('2023AAPS0229H','L1','CS F211'),('2023AAPS0229H','L1','CS F372'),('2023B3PS1300H','L1','CS F111'),('2023B3PS1300H','L1','CS F211'),('2023B3PS1300H','L1','CS F213'),('2023A2PS2000H','P1','CS F111'),('2023A2PS2000H','P1','CS F211'),('2023A3PS2079H','P1','CS F111'),('2023A3PS2079H','P1','CS F211'),('2023A3PS2079H','P1','CS F213'),('2023A4PS0619H','P1','CS F111'),('2023A4PS0619H','P1','CS F211'),('2023A7PS0001H','P1','CS F111'),('2023A7PS0001H','P1','CS F211'),('2023A7PS0193H','P1','CS F111'),('2023A7PS0193H','P1','CS F211'),('2023A7PS0193H','P1','CS F213'),('2023A7PS1291H','P1','CS F111'),('2023A7PS1291H','P1','CS F211'),('2023A7PS1790H','P1','CS F111'),('2023A7PS1790H','P1','CS F211'),('2023A8PS2564H','P1','CS F111'),('2023A8PS2564H','P1','CS F211'),('2023A8PS2564H','P1','CS F213'),('2023AAPS0229H','P1','CS F111'),('2023AAPS0229H','P1','CS F211'),('2023AAPS0229H','P1','CS F213'),('2023B3PS1300H','P1','CS F111'),('2023B3PS1300H','P1','CS F211'),('2023A2PS2000H','T1','CS F111'),('2023A2PS2000H','T1','CS F372'),('2023A3PS2079H','T1','CS F111'),('2023A3PS2079H','T1','CS F372'),('2023A4PS0619H','T1','CS F111'),('2023A4PS0619H','T1','CS F213'),('2023A4PS0619H','T1','CS F372'),('2023A7PS0001H','T1','CS F111'),('2023A7PS0001H','T1','CS F372'),('2023A7PS0193H','T1','CS F111'),('2023A7PS0193H','T1','CS F213'),('2023A7PS0193H','T1','CS F372'),('2023A7PS1291H','T1','CS F111'),('2023A7PS1291H','T1','CS F213'),('2023A7PS1291H','T1','CS F372'),('2023A7PS1790H','T1','CS F111'),('2023A7PS1790H','T1','CS F372'),('2023A8PS2564H','T1','CS F111'),('2023A8PS2564H','T1','CS F372'),('2023AAPS0229H','T1','CS F111'),('2023AAPS0229H','T1','CS F213'),('2023AAPS0229H','T1','CS F372'),('2023B3PS1300H','T1','CS F111');
/*!40000 ALTER TABLE `studies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teaches`
--

DROP TABLE IF EXISTS `teaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teaches` (
  `professor_id` varchar(30) NOT NULL,
  `section_id` varchar(3) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  PRIMARY KEY (`professor_id`,`section_id`,`course_id`),
  KEY `section_id` (`section_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `teaches_ibfk_1` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`),
  CONSTRAINT `teaches_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`) ON DELETE CASCADE,
  CONSTRAINT `teaches_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaches`
--

LOCK TABLES `teaches` WRITE;
/*!40000 ALTER TABLE `teaches` DISABLE KEYS */;
INSERT INTO `teaches` VALUES ('Apurba_Das','L','CS F415'),('C_Hota','L','CS F211'),('C_Hota','L','CS F407'),('DVN_Siva_Kumar','L','CS F213'),('Lov_Kumar','L','CS F111'),('Lov_Kumar','L','CS F212'),('Nikumani_C','L','CS F372'),('NL_Bhanu_Murthy','L','CS F320'),('Raghunath_Reddy','L','CS F222'),('V_Ramaswamy','L','CS F214'),('Apurba_Das','L1','CS F214'),('Barsha_Mitra','L1','CS F111'),('Barsha_Mitra','L1','CS F211'),('C_Hota','L1','CS F211'),('C_Hota','L1','CS F372'),('C_Hota','L1','CS F407'),('DVN_Siva_Kumar','L1','CS F111'),('DVN_Siva_Kumar','L1','CS F212'),('DVN_Siva_Kumar','L1','CS F213'),('Lov_Kumar','L1','CS F415'),('Manik_Gupta','L1','CS F212'),('Nikumani_C','L1','CS F213'),('Nikumani_C','L1','CS F372'),('NL_Bhanu_Murthy','L1','CS F320'),('Raghunath_Reddy','L1','CS F222'),('V_Ramaswamy','L1','CS F214'),('Apurba_Das','P1','CS F212'),('Apurba_Das','P1','CS F372'),('Barsha_Mitra','P1','CS F211'),('C_Hota','P1','CS F213'),('DVN_Siva_Kumar','P1','CS F111'),('DVN_Siva_Kumar','P1','CS F320'),('Lov_Kumar','P1','CS F407'),('Manik_Gupta','P1','CS F320'),('Manik_Gupta','P1','CS F407'),('Manik_Gupta','P1','CS F415'),('Nikumani_C','P1','CS F222'),('NL_Bhanu_Murthy','P1','CS F214'),('NL_Bhanu_Murthy','P1','CS F222'),('NL_Bhanu_Murthy','P1','CS F372'),('Raghunath_Reddy','P1','CS F214'),('Apurba_Das','T1','CS F211'),('Apurba_Das','T1','CS F214'),('Barsha_Mitra','T1','CS F111'),('Barsha_Mitra','T1','CS F320'),('C_Hota','T1','CS F222'),('DVN_Siva_Kumar','T1','CS F212'),('Lov_Kumar','T1','CS F111'),('Lov_Kumar','T1','CS F212'),('Manik_Gupta','T1','CS F407'),('Nikumani_C','T1','CS F211'),('NL_Bhanu_Murthy','T1','CS F415'),('Raghunath_Reddy','T1','CS F213'),('Raghunath_Reddy','T1','CS F372'),('Raghunath_Reddy','T1','CS F415'),('V_Ramaswamy','T1','CS F213'),('V_Ramaswamy','T1','CS F214'),('V_Ramaswamy','T1','CS F320'),('V_Ramaswamy','T1','CS F407');
/*!40000 ALTER TABLE `teaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `topic_id` int NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `heading` varchar(50) DEFAULT NULL,
  `section_id` varchar(3) DEFAULT NULL,
  `course_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`topic_id`),
  KEY `section_id` (`section_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`) ON DELETE CASCADE,
  CONSTRAINT `topic_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (2,1,'Assigment','L','CS F111'),(3,0,'Midsem','L','CS F111'),(4,0,'Compre','L','CS F111'),(5,1,'Assignment','L1','CS F111'),(6,0,'Midsem','L1','CS F111'),(7,0,'Compre','L1','CS F111'),(8,1,'Assignment','P1','CS F111'),(9,0,'Midsem','P1','CS F111'),(10,0,'Compre','P1','CS F111'),(11,1,'Assignment','L','CS F211'),(12,0,'Midsem','L','CS F211'),(13,0,'Compre','L','CS F211'),(14,1,'Assignment','L1','CS F211'),(15,0,'Midsem','L1','CS F211'),(16,0,'Compre','L1','CS F211'),(17,1,'Assignment','P1','CS F211'),(18,0,'Midsem','P1','CS F211'),(19,0,'Compre','P1','CS F211'),(20,1,'Assignment','L','CS F212'),(21,0,'Midsem','L','CS F212'),(22,0,'Compre','L','CS F212'),(23,1,'Assignment','L1','CS F212'),(24,0,'Midsem','L1','CS F212'),(25,0,'Compre','L1','CS F212'),(26,1,'Assignment','P1','CS F212'),(27,0,'Midsem','P1','CS F212'),(28,0,'Compre','P1','CS F212'),(29,1,'Assignment','L','CS F213'),(30,0,'Midsem','L','CS F213'),(31,0,'Compre','L','CS F213'),(32,1,'Assignment','L1','CS F213'),(33,0,'Midsem','L1','CS F213'),(34,0,'Compre','L1','CS F213'),(35,1,'Assignment','P1','CS F213'),(36,0,'Midsem','P1','CS F213'),(37,0,'Compre','P1','CS F213'),(38,1,'Assignment','L','CS F214'),(39,0,'Midsem','L','CS F214'),(40,0,'Compre','L','CS F214'),(41,1,'Assignment','L1','CS F214'),(42,0,'Midsem','L1','CS F214'),(43,0,'Compre','L1','CS F214'),(44,1,'Assignment','P1','CS F214'),(45,0,'Midsem','P1','CS F214'),(46,0,'Compre','P1','CS F214'),(47,1,'Assignment','L','CS F222'),(48,0,'Midsem','L','CS F222'),(49,0,'Compre','L','CS F222'),(50,1,'Assignment','L1','CS F222'),(51,0,'Midsem','L1','CS F222'),(52,0,'Compre','L1','CS F222'),(53,1,'Assignment','P1','CS F222'),(54,0,'Midsem','P1','CS F222'),(55,0,'Compre','P1','CS F222'),(56,1,'Assignment','L','CS F320'),(57,0,'Midsem','L','CS F320'),(58,0,'Compre','L','CS F320'),(59,1,'Assignment','L1','CS F320'),(60,0,'Midsem','L1','CS F320'),(61,0,'Compre','L1','CS F320'),(62,1,'Assignment','P1','CS F320'),(63,0,'Midsem','P1','CS F320'),(64,0,'Compre','P1','CS F320'),(65,1,'Assignment','L','CS F372'),(66,0,'Midsem','L','CS F372'),(67,0,'Compre','L','CS F372'),(68,1,'Assignment','L1','CS F372'),(69,0,'Midsem','L1','CS F372'),(70,0,'Compre','L1','CS F372'),(71,1,'Assignment','P1','CS F372'),(72,0,'Midsem','P1','CS F372'),(73,0,'Compre','P1','CS F372'),(74,1,'Assignment','L','CS F407'),(75,0,'Midsem','L','CS F407'),(76,0,'Compre','L','CS F407'),(77,1,'Assignment','L1','CS F407'),(78,0,'Midsem','L1','CS F407'),(79,0,'Compre','L1','CS F407'),(80,1,'Assignment','P1','CS F407'),(81,0,'Midsem','P1','CS F407'),(82,0,'Compre','P1','CS F407'),(83,1,'Assignment','L','CS F415'),(84,0,'Midsem','L','CS F415'),(85,0,'Compre','L','CS F415'),(86,1,'Assignment','L1','CS F415'),(87,0,'Midsem','L1','CS F415'),(88,0,'Compre','L1','CS F415'),(89,1,'Assignment','P1','CS F415'),(90,0,'Midsem','P1','CS F415'),(91,0,'Compre','P1','CS F415');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-18  0:51:24
