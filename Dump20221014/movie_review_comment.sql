-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: movie_review
-- ------------------------------------------------------
-- Server version	8.0.26

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
  `_id` int NOT NULL AUTO_INCREMENT,
  `movieId` int DEFAULT NULL,
  `movie` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `review` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `rating` int DEFAULT NULL,
  `datePosted` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `FK_movieId` (`movieId`),
  CONSTRAINT `FK_movieId` FOREIGN KEY (`movieId`) REFERENCES `movie` (`_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (2,18,'Chasing The Dragon','Alice88','not nice',2,'Mon Nov 22 2021 17:13:16 GMT+0800 (Singapore Standard Time)'),(3,14,'Always Be With You','Good!','Joe',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(4,14,'Always Be With You','Nice movie!','Tom',2,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(5,11,'The Promise','Ric','Nice movie!',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(8,19,'Happy Death Day','Money money ','8==D',0,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(10,14,'Always Be With You','Same','Same',3,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(11,10,'My Little Pony: The Movie','Cute movie','Harry',4,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(13,17,'Brad`s Status','Brad','SingleFeelsBadMan',0,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(15,33,'Earth: One Amazing Day','Good','test',4,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(17,13,'All I See Is You','David','Not too bad',3,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(19,10,'My Little Pony: The Movie','Ang Yong Boon','HELLO',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(20,10,'My Little Pony: The Movie','john lau','i have a hole in my head',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(21,22,'Victoria And Abdul','john lau','my phone crack on CARPETED FLOOR',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(22,13,'All I See Is You','zakum','lol @vonleon maplestory',1,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(23,13,'All I See Is You','Von Leon','but i don\'t see you',3,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(24,15,'American Assassin','Jane','Tim',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(25,15,'American Assassin','Roy','Tim',1,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(26,14,'Always Be With You','sasa','test',2,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(27,15,'American Assassin','.','.',4,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(28,15,'American Assassin','Lyn',NULL,0,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(30,14,'Always Be With You','Testing','aaaa',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(31,15,'American Assassin','Mike',NULL,0,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(34,9,'Marvel`s Thor: Ragnarok','Kaiser Von Sqs','I wanna watch this!',0,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(35,9,'Marvel`s Thor: Ragnarok','Memoria','I love this movie!',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(36,14,'Always Be With You','Batman','Kinda boring',2,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(37,31,'The Snowman','Tom','Good movie',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(38,31,'The Snowman','Mary','I love it',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(39,14,'Always Be With You','Cass','Nice movie',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(40,10,'My Little Pony: The Movie','Peter','Go watch it',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(41,15,'American Assassin','Tracy','Boring',0,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(42,15,'American Assassin','Jane','qwertyuiop',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(44,29,'Paddington 2','Testing','Testing',4,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(45,15,'American Assassin','Mark','xczc',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(46,9,'Marvel`s Thor: Ragnarok','Jim','THank you come again',3,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(47,10,'My Little Pony: The Movie','Simon','Very interesting',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)'),(55,10,'My Little Pony: The Movie','Simon','Very interesting 3',3,'Tue Nov 24 2020 17:23:12 GMT+0800 (Singapore Standard Time)'),(57,13,'All I See Is You','Alice99','Go watch it',4,'Thu Nov 26 2020 20:24:33 GMT+0800 (Singapore Standard Time)'),(58,13,'All I See Is You','Alice99','Awesome !!!',4,'Tue Dec 01 2020 11:35:32 GMT+0800 (Singapore Standard Time)'),(59,13,'All I See Is You','Alice99','This is new review',4,'Wed Dec 02 2020 12:15:29 GMT+0800 (Singapore Standard Time)'),(62,13,'All I See Is You','Alice99','This is the latest review for testing',4,'Thu Jan 21 2021 20:28:40 GMT+0800 (Singapore Standard Time)'),(63,NULL,'All I See Is You','Alice99','This is the latest review for testing',4,'Thu Jan 21 2021 20:28:50 GMT+0800 (Singapore Standard Time)'),(64,NULL,'All I See Is You',NULL,'This is the latest review for testing',4,'Thu Jan 21 2021 20:29:10 GMT+0800 (Singapore Standard Time)'),(67,13,'All I See Is You','Alice99','This is the latest review for testing',4,'Thu Jan 21 2021 20:32:49 GMT+0800 (Singapore Standard Time)'),(68,13,'All I See Is You','Alice99','This is the latest review for testing',4,'Thu Jan 21 2021 20:36:31 GMT+0800 (Singapore Standard Time)'),(69,NULL,'All I See Is You','Alice99','This is the latest review for testing',4,'Thu Jan 21 2021 20:53:19 GMT+0800 (Singapore Standard Time)'),(70,NULL,'All I See Is You','Alice99','This is the latest review for testing',4,'Thu Jan 21 2021 20:54:06 GMT+0800 (Singapore Standard Time)'),(71,13,'All I See Is You','Alice99','This is the latest review for testing',4,'Thu Jan 21 2021 20:55:11 GMT+0800 (Singapore Standard Time)'),(72,13,'All I See Is You','Alice99','This is the latest review for testing',4,'Thu Jan 21 2021 20:55:50 GMT+0800 (Singapore Standard Time)'),(73,13,'All I See Is You','Alice99','This is the latest review for testing',4,'Thu Jan 21 2021 20:58:47 GMT+0800 (Singapore Standard Time)'),(76,6,'Disney / Pixar`s Coco With Olaf`s Frozen Adventure','aaaaa','aaaaa',1,'Sun Sep 19 2021 21:17:54 GMT+0800 (Singapore Standard Time)');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-14 16:31:41
