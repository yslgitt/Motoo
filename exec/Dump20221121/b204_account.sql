-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: k7b204.p.ssafy.io    Database: b204
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seed` int NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `name` varchar(24) NOT NULL,
  `user_id` int NOT NULL COMMENT '계좌 생성 유저',
  `school` tinyint(1) NOT NULL DEFAULT '0',
  `is_main` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK7m8ru44m93ukyb61dfxw0apf6` (`user_id`),
  CONSTRAINT `FK7m8ru44m93ukyb61dfxw0apf6` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_account_user_9940bd8a` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (31,843500,'2022-11-10 12:50:43.149000','농협',14,0,1),(58,2196220,'2022-11-11 11:23:33.791000','학교대항전',14,1,0),(71,19993730,'2022-11-13 22:13:32.346000','닉네임1님의 계좌',20,0,1),(72,20000000,'2022-11-13 22:14:07.711000','닉네임2님의 계좌',21,0,1),(73,20000000,'2022-11-13 22:14:25.729000','닉네임3님의 계좌',22,0,1),(74,20000000,'2022-11-13 22:14:48.506000','닉네임4님의 계좌',23,0,1),(75,20000000,'2022-11-13 22:15:04.595000','닉네임5님의 계좌',24,0,1),(76,15703100,'2022-11-13 22:22:34.241000','학교대항전',20,1,0),(77,13276000,'2022-11-13 22:23:13.304000','학교대항전',21,1,0),(78,14221000,'2022-11-13 22:23:26.329000','학교대항전',22,1,0),(79,17061020,'2022-11-13 22:23:38.405000','학교대항전',23,1,0),(80,17673800,'2022-11-13 22:23:51.422000','학교대항전',24,1,0),(81,20000000,'2022-11-14 00:36:15.053000','닉네임6님의 계좌',25,0,1),(82,20000000,'2022-11-14 00:36:29.400000','닉네임7님의 계좌',26,0,1),(83,20000000,'2022-11-14 00:36:43.126000','닉네임8님의 계좌',27,0,1),(84,20000000,'2022-11-14 00:36:56.593000','닉네임9님의 계좌',28,0,1),(85,20000000,'2022-11-14 00:37:09.230000','닉네임10님의 계좌',29,0,1),(86,18566000,'2022-11-14 00:38:16.690000','학교대항전',25,1,0),(87,18756950,'2022-11-14 00:38:44.380000','학교대항전',26,1,0),(88,17548300,'2022-11-14 00:39:00.818000','학교대항전',27,1,0),(89,19024350,'2022-11-14 00:39:16.984000','학교대항전',28,1,0),(90,19112850,'2022-11-14 00:39:33.363000','학교대항전',29,1,0),(107,20000000,'2022-11-14 16:28:53.611000','곽현준님의 계좌',32,0,1),(110,22000000,'2022-11-14 17:10:06.831000','김유진님의 계좌',33,0,1),(111,20000000,'2022-11-14 17:10:36.740000','유현수님의 계좌',34,0,1),(112,20000000,'2022-11-14 17:11:42.637000','학교대항전',33,1,0),(120,19976950,'2022-11-14 21:30:33.949000','조항주님의 계좌',35,0,1),(121,22000000,'2022-11-14 22:10:46.452000','김민정님의 계좌',36,0,1),(122,20000000,'2022-11-14 22:12:41.445000','학교대항전',36,1,0),(129,20095340,'2022-11-16 09:57:36.193000','박수근님의 계좌',38,0,1),(131,20000000,'2022-11-16 11:23:47.426000','학교대항전',38,1,0),(138,20000000,'2022-11-17 17:03:46.821000','테스트유저님의 계좌',42,0,1),(139,20000000,'2022-11-17 17:08:11.370000','학교대항전',42,1,0),(184,20200000,'2022-11-18 22:36:07.164000','김지수님의 계좌',70,0,1),(193,20000000,'2022-11-20 10:30:22.486000','권예슬님의 계좌',75,0,1),(194,20200000,'2022-11-20 16:01:54.433000','정용기님의 계좌',76,0,1),(197,15560000,'2022-11-20 16:25:21.033000','이진행님의 계좌',78,0,1),(198,20000000,'2022-11-20 16:25:34.023000','학교대항전',78,1,0),(206,20000000,'2022-11-20 18:20:48.331000','최대규님의 계좌',84,0,1),(212,20000000,'2022-11-20 20:46:02.347000','김갑경님의 계좌',87,0,1),(213,16724600,'2022-11-20 20:52:42.389000','전지수님의 계좌',88,0,1),(214,20000000,'2022-11-20 20:53:03.439000','학교대항전',88,1,0),(220,20000000,'2022-11-20 23:05:58.809000','이수랑님의 계좌',92,0,1),(221,20000000,'2022-11-20 23:53:05.101000','성유지님의 계좌',93,0,1),(222,20000000,'2022-11-20 23:53:55.344000','학교대항전',93,1,0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-21  0:25:08
