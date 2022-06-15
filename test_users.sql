-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: test
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `email_3` (`email`),
  UNIQUE KEY `email_4` (`email`),
  UNIQUE KEY `email_5` (`email`),
  UNIQUE KEY `email_6` (`email`),
  UNIQUE KEY `email_7` (`email`),
  UNIQUE KEY `email_8` (`email`),
  UNIQUE KEY `email_9` (`email`),
  UNIQUE KEY `email_10` (`email`),
  UNIQUE KEY `email_11` (`email`),
  UNIQUE KEY `email_12` (`email`),
  UNIQUE KEY `email_13` (`email`),
  UNIQUE KEY `email_14` (`email`),
  UNIQUE KEY `email_15` (`email`),
  UNIQUE KEY `email_16` (`email`),
  UNIQUE KEY `email_17` (`email`),
  UNIQUE KEY `email_18` (`email`),
  UNIQUE KEY `email_19` (`email`),
  UNIQUE KEY `email_20` (`email`),
  UNIQUE KEY `email_21` (`email`),
  UNIQUE KEY `email_22` (`email`),
  UNIQUE KEY `email_23` (`email`),
  UNIQUE KEY `email_24` (`email`),
  UNIQUE KEY `email_25` (`email`),
  UNIQUE KEY `email_26` (`email`),
  UNIQUE KEY `email_27` (`email`),
  UNIQUE KEY `email_28` (`email`),
  UNIQUE KEY `email_29` (`email`),
  UNIQUE KEY `email_30` (`email`),
  UNIQUE KEY `email_31` (`email`),
  UNIQUE KEY `email_32` (`email`),
  UNIQUE KEY `email_33` (`email`),
  UNIQUE KEY `email_34` (`email`),
  UNIQUE KEY `email_35` (`email`),
  UNIQUE KEY `email_36` (`email`),
  UNIQUE KEY `email_37` (`email`),
  UNIQUE KEY `email_38` (`email`),
  UNIQUE KEY `email_39` (`email`),
  UNIQUE KEY `email_40` (`email`),
  UNIQUE KEY `email_41` (`email`),
  UNIQUE KEY `email_42` (`email`),
  UNIQUE KEY `email_43` (`email`),
  UNIQUE KEY `email_44` (`email`),
  UNIQUE KEY `email_45` (`email`),
  UNIQUE KEY `email_46` (`email`),
  UNIQUE KEY `email_47` (`email`),
  UNIQUE KEY `email_48` (`email`),
  UNIQUE KEY `email_49` (`email`),
  UNIQUE KEY `email_50` (`email`),
  UNIQUE KEY `email_51` (`email`),
  UNIQUE KEY `email_52` (`email`),
  UNIQUE KEY `email_53` (`email`),
  UNIQUE KEY `email_54` (`email`),
  UNIQUE KEY `email_55` (`email`),
  UNIQUE KEY `email_56` (`email`),
  UNIQUE KEY `email_57` (`email`),
  UNIQUE KEY `email_58` (`email`),
  UNIQUE KEY `email_59` (`email`),
  UNIQUE KEY `email_60` (`email`),
  UNIQUE KEY `email_61` (`email`),
  UNIQUE KEY `email_62` (`email`),
  UNIQUE KEY `email_63` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test','Job','Man','test101@mail.com','$2b$10$.8mq2ZDmuswjImcmdd5MiOtlmLIt9HyhRK/2wWxKMVSMj5IN34mXi','2022-06-14 12:48:48','2022-06-15 14:27:21','f9905b9a8fa6694f75848cb1ba1124fb.jpg'),(18,'test2','Jade','women','test2@mail.com','$2b$10$cdoI8EQLLrQ0EWwXq.PjMOtDDuYoVrx66IXIXBMJBiRALxpsUhWoe','2022-06-14 16:49:11','2022-06-14 16:49:11',NULL),(20,'test3','Jade','women','test3@mail.com','$2b$10$IhjZMau2EtXjSTgVEllG/eKrsG4.DwvLtEHklEy1JFZveh0SaZDhq','2022-06-14 16:53:12','2022-06-14 16:53:12',NULL),(22,'test4','Jade','women','test4@mail.com','$2b$10$72mc6zrzaDYmpSTVr46T0.0OBn.i1NmaqczOMnrnuo0mS6QxubbX2','2022-06-14 16:53:57','2022-06-14 16:53:57',NULL),(24,'test5','Jade','women','test5@mail.com','$2b$10$LT5ROLpRB2t/3ZZwSAp48OEVg/LpropUysaYqO8T37GZ84j0IZ6ji','2022-06-14 16:55:42','2022-06-14 16:55:42',NULL),(26,'test6','Jade','women','test6@mail.com','$2b$10$CFMw3l5YJMBLSGClefdsze.ou0ki0Jl9xwBpyi8bv8I3RfKod6XvC','2022-06-14 16:56:44','2022-06-14 16:56:44',NULL),(27,'test6','Jade','women','test7@mail.com','$2b$10$zFVJzUacPGp7RQMFdHclSuJH9AukoSI6.Cz6T870ENslKArIMKoke','2022-06-14 16:58:47','2022-06-14 16:58:47',NULL),(29,'test6','Jade','women','test8@mail.com','$2b$10$BfyXsGSMu8X77BI7A3SMw.v6xXCiPfuXPlb0xyPDKI6uYpz2./cOC','2022-06-14 17:03:18','2022-06-14 17:03:18',NULL),(30,'test6','Jade','women','test9@mail.com','$2b$10$jWQ0.hruj6cKYTOrx1Yq8OXnMDSC/7RwZMEfemeSBZX1G329bdoG6','2022-06-14 17:03:51','2022-06-14 17:03:51',NULL),(31,'test6','Jade','women','test10@mail.com','$2b$10$Y.QJT4nre7peqaCgmUpndey5.3sY3x3q4TiINVKMDnwxKFRJNgSPm','2022-06-14 17:05:00','2022-06-14 17:05:00',NULL),(32,'test6','Jade','women','test11@mail.com','$2b$10$EKVzOnLXItHBN/Jk119F0eFqnj.QD9sPumAwb4my4O5Y4hPm9oQge','2022-06-14 17:08:14','2022-06-14 17:08:14',NULL),(33,'test6','Jade','women','test12@mail.com','$2b$10$hgycqE5Sh/GY02m1JsCcmuzMMZJUt.Db1BZszeBk7PT8YR4f.DIn.','2022-06-14 17:09:37','2022-06-14 17:09:37',NULL),(35,'test6','Jade','women','test13@mail.com','$2b$10$jFb2KSZ.197VxGmPCRdn6./eA6iCqNkBiAiQoCTOw9IcYANVit8IC','2022-06-14 17:14:23','2022-06-14 17:14:23',NULL),(36,'test6','Jade','women','test14@mail.com','$2b$10$z6YDwi0aH9WCKkRHT0jvyeNW/U2PxtK9sfHUJ/qCj4IzaNLGVEIC2','2022-06-14 17:21:01','2022-06-14 17:21:01',NULL),(37,'test6','Jade','women','test15@mail.com','$2b$10$BlD0Ty/eG.Ul69P8Atu7gusg2W7c8bdMWlk5pyra7H4O/fM.0X9gK','2022-06-14 17:39:42','2022-06-14 17:39:42',NULL),(38,'test6','Jade','women','test16@mail.com','$2b$10$6/MGLEMDPnPkdDNXNN2s6.IY02zY54DlcNSzRX74oae6YQxl.sVwW','2022-06-14 17:49:57','2022-06-14 17:49:57',NULL),(39,'test6','Jade','women','test17@mail.com','$2b$10$GydP5r.uDeZKc4QVqiG9JOKhx5/u3FxGedWsQAnHyhtX4btBbS8FK','2022-06-14 18:05:26','2022-06-14 18:05:26',NULL),(40,'test100',NULL,NULL,'test100@mail.com','$2b$10$9ISOjWBO2gpDefvaSC2ruu9cnvQN9bBGk3iHW70J3MPsoDeM7caCS','2022-06-14 19:36:24','2022-06-14 19:36:24',NULL),(41,'Ani',NULL,NULL,'Anitest@mail.com','$2b$10$JgyNXuYk8zPx.Vf/53RGveh0EYSYHvJ2IqzyPDQL4PVdbOXdPnHbu','2022-06-15 14:34:26','2022-06-15 14:34:26',NULL),(42,'Alexx',NULL,'women','anitest0@mail.com','$2b$10$1EgCYwmSvvC9Pf6UEcMaNOq9HxCHcmx76NsfTlWt1XPNHrFCnQ/x2','2022-06-15 14:43:12','2022-06-15 14:52:51','c1fb57b8cfa9cec1f765634c924f4fdd.jpg');
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

-- Dump completed on 2022-06-15 21:55:40
