CREATE DATABASE  IF NOT EXISTS `testdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `testdb`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: testdb
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `externals`
--

DROP TABLE IF EXISTS `externals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `externals` (
  `id` int NOT NULL,
  `thetvdb` int DEFAULT NULL,
  `tvrage` int DEFAULT NULL,
  `imdb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externals`
--

LOCK TABLES `externals` WRITE;
/*!40000 ALTER TABLE `externals` DISABLE KEYS */;
INSERT INTO `externals` VALUES (1,72231,4950,'tt0350448'),(2,305582,NULL,'tt4878326'),(3,284596,23355,'tt3052478'),(4,349989,NULL,'tt8650734'),(5,348117,NULL,'tt6487482'),(6,342107,NULL,'tt6510950'),(7,331600,NULL,'tt6548228'),(8,326866,NULL,'tt6048596'),(9,350451,NULL,'tt8543258'),(10,346602,NULL,'tt2649356'),(11,340785,NULL,'tt7804186'),(12,273181,37780,'tt3032476'),(13,325517,NULL,'tt6170874'),(14,268592,34770,'tt2661044'),(15,341164,NULL,'tt4236770'),(16,290853,48384,'tt3743822'),(17,304214,50818,'tt4800878'),(18,310555,NULL,'tt4168956'),(19,281534,38299,'tt3952222'),(20,330134,NULL,'tt5531466'),(21,303904,13055,'tt0310416'),(22,349272,NULL,'tt7817340'),(23,NULL,NULL,'tt3644692'),(24,272644,36903,'tt3148266'),(25,78224,5447,'tt0289830'),(26,295759,44824,'tt4016454'),(27,311876,NULL,'tt5296406'),(28,270633,31369,'tt2356777'),(29,164981,25756,'tt1595859'),(30,328634,NULL,'tt6470478'),(31,328690,NULL,'tt4604612'),(32,349809,NULL,'tt7230898'),(33,296830,49660,'tt4680444'),(34,71663,6190,'tt0096697'),(35,326490,41117,'tt4230076'),(36,332027,NULL,'tt1236246'),(37,292174,47282,'tt4159076'),(38,328708,NULL,'tt5290382'),(39,350950,NULL,'tt6647696'),(40,NULL,NULL,NULL),(41,313999,NULL,'tt4288182'),(42,75978,3506,'tt0182576'),(43,95011,22622,'tt1442437'),(44,261181,32440,'tt2338096'),(45,316345,NULL,'tt4939064'),(46,315178,NULL,'tt4820370'),(47,278868,36973,'tt2645122'),(48,293088,NULL,'tt4508902'),(49,338954,NULL,'tt6998202'),(50,350864,NULL,'tt5580146'),(51,280316,46394,'tt4305162'),(52,270262,35852,'tt3513388'),(53,262754,32713,'tt2498968'),(54,255649,30645,'tt1997999'),(55,341291,NULL,'tt7902072'),(56,259203,31767,'tt2202488'),(57,264739,33100,'tt2782710'),(58,337588,NULL,'tt7487358'),(59,348914,NULL,NULL),(60,322494,NULL,'tt6082618');
/*!40000 ALTER TABLE `externals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `externals_seq`
--

DROP TABLE IF EXISTS `externals_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `externals_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externals_seq`
--

LOCK TABLES `externals_seq` WRITE;
/*!40000 ALTER TABLE `externals_seq` DISABLE KEYS */;
INSERT INTO `externals_seq` VALUES (151);
/*!40000 ALTER TABLE `externals_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medium` varchar(255) DEFAULT NULL,
  `original` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'https://static.tvmaze.com/uploads/images/medium_portrait/442/1106432.jpg','https://static.tvmaze.com/uploads/images/original_untouched/442/1106432.jpg'),(2,'https://static.tvmaze.com/uploads/images/medium_portrait/206/515140.jpg','https://static.tvmaze.com/uploads/images/original_untouched/206/515140.jpg'),(3,'https://static.tvmaze.com/uploads/images/medium_portrait/446/1116086.jpg','https://static.tvmaze.com/uploads/images/original_untouched/446/1116086.jpg'),(4,'https://static.tvmaze.com/uploads/images/medium_portrait/160/401754.jpg','https://static.tvmaze.com/uploads/images/original_untouched/160/401754.jpg'),(5,'https://static.tvmaze.com/uploads/images/medium_portrait/213/533517.jpg','https://static.tvmaze.com/uploads/images/original_untouched/213/533517.jpg'),(6,'https://static.tvmaze.com/uploads/images/medium_portrait/445/1113850.jpg','https://static.tvmaze.com/uploads/images/original_untouched/445/1113850.jpg'),(7,'https://static.tvmaze.com/uploads/images/medium_portrait/214/536992.jpg','https://static.tvmaze.com/uploads/images/original_untouched/214/536992.jpg'),(8,'https://static.tvmaze.com/uploads/images/medium_portrait/365/914978.jpg','https://static.tvmaze.com/uploads/images/original_untouched/365/914978.jpg'),(9,'https://static.tvmaze.com/uploads/images/medium_portrait/376/940622.jpg','https://static.tvmaze.com/uploads/images/original_untouched/376/940622.jpg'),(10,'https://static.tvmaze.com/uploads/images/medium_portrait/156/391025.jpg','https://static.tvmaze.com/uploads/images/original_untouched/156/391025.jpg'),(11,'https://static.tvmaze.com/uploads/images/medium_portrait/164/411069.jpg','https://static.tvmaze.com/uploads/images/original_untouched/164/411069.jpg'),(12,'https://static.tvmaze.com/uploads/images/medium_portrait/399/998743.jpg','https://static.tvmaze.com/uploads/images/original_untouched/399/998743.jpg'),(13,'https://static.tvmaze.com/uploads/images/medium_portrait/119/298881.jpg','https://static.tvmaze.com/uploads/images/original_untouched/119/298881.jpg'),(14,'https://static.tvmaze.com/uploads/images/medium_portrait/272/681441.jpg','https://static.tvmaze.com/uploads/images/original_untouched/272/681441.jpg'),(15,'https://static.tvmaze.com/uploads/images/medium_portrait/429/1074022.jpg','https://static.tvmaze.com/uploads/images/original_untouched/429/1074022.jpg'),(16,'https://static.tvmaze.com/uploads/images/medium_portrait/454/1136939.jpg','https://static.tvmaze.com/uploads/images/original_untouched/454/1136939.jpg'),(17,'https://static.tvmaze.com/uploads/images/medium_portrait/161/404649.jpg','https://static.tvmaze.com/uploads/images/original_untouched/161/404649.jpg'),(18,'https://static.tvmaze.com/uploads/images/medium_portrait/117/293992.jpg','https://static.tvmaze.com/uploads/images/original_untouched/117/293992.jpg'),(19,'https://static.tvmaze.com/uploads/images/medium_portrait/206/515143.jpg','https://static.tvmaze.com/uploads/images/original_untouched/206/515143.jpg'),(20,'https://static.tvmaze.com/uploads/images/medium_portrait/205/514942.jpg','https://static.tvmaze.com/uploads/images/original_untouched/205/514942.jpg'),(21,'https://static.tvmaze.com/uploads/images/medium_portrait/79/199172.jpg','https://static.tvmaze.com/uploads/images/original_untouched/79/199172.jpg'),(22,'https://static.tvmaze.com/uploads/images/medium_portrait/426/1065220.jpg','https://static.tvmaze.com/uploads/images/original_untouched/426/1065220.jpg'),(23,'https://static.tvmaze.com/uploads/images/medium_portrait/33/83620.jpg','https://static.tvmaze.com/uploads/images/original_untouched/33/83620.jpg'),(24,'https://static.tvmaze.com/uploads/images/medium_portrait/155/389213.jpg','https://static.tvmaze.com/uploads/images/original_untouched/155/389213.jpg'),(25,'https://static.tvmaze.com/uploads/images/medium_portrait/11/27603.jpg','https://static.tvmaze.com/uploads/images/original_untouched/11/27603.jpg'),(26,'https://static.tvmaze.com/uploads/images/medium_portrait/300/750718.jpg','https://static.tvmaze.com/uploads/images/original_untouched/300/750718.jpg'),(27,'https://static.tvmaze.com/uploads/images/medium_portrait/194/486246.jpg','https://static.tvmaze.com/uploads/images/original_untouched/194/486246.jpg'),(28,'https://static.tvmaze.com/uploads/images/medium_portrait/445/1114021.jpg','https://static.tvmaze.com/uploads/images/original_untouched/445/1114021.jpg'),(29,'https://static.tvmaze.com/uploads/images/medium_portrait/431/1078586.jpg','https://static.tvmaze.com/uploads/images/original_untouched/431/1078586.jpg'),(30,'https://static.tvmaze.com/uploads/images/medium_portrait/424/1061046.jpg','https://static.tvmaze.com/uploads/images/original_untouched/424/1061046.jpg'),(31,'https://static.tvmaze.com/uploads/images/medium_portrait/265/663270.jpg','https://static.tvmaze.com/uploads/images/original_untouched/265/663270.jpg'),(32,'https://static.tvmaze.com/uploads/images/medium_portrait/174/436538.jpg','https://static.tvmaze.com/uploads/images/original_untouched/174/436538.jpg'),(33,'https://static.tvmaze.com/uploads/images/medium_portrait/433/1082634.jpg','https://static.tvmaze.com/uploads/images/original_untouched/433/1082634.jpg'),(34,'https://static.tvmaze.com/uploads/images/medium_portrait/423/1058261.jpg','https://static.tvmaze.com/uploads/images/original_untouched/423/1058261.jpg'),(35,'https://static.tvmaze.com/uploads/images/medium_portrait/122/307234.jpg','https://static.tvmaze.com/uploads/images/original_untouched/122/307234.jpg'),(36,'https://static.tvmaze.com/uploads/images/medium_portrait/230/577058.jpg','https://static.tvmaze.com/uploads/images/original_untouched/230/577058.jpg'),(37,'https://static.tvmaze.com/uploads/images/medium_portrait/122/305066.jpg','https://static.tvmaze.com/uploads/images/original_untouched/122/305066.jpg'),(38,'https://static.tvmaze.com/uploads/images/medium_portrait/207/518594.jpg','https://static.tvmaze.com/uploads/images/original_untouched/207/518594.jpg'),(39,'https://static.tvmaze.com/uploads/images/medium_portrait/163/409225.jpg','https://static.tvmaze.com/uploads/images/original_untouched/163/409225.jpg'),(40,'https://static.tvmaze.com/uploads/images/medium_portrait/414/1036032.jpg','https://static.tvmaze.com/uploads/images/original_untouched/414/1036032.jpg'),(41,'https://static.tvmaze.com/uploads/images/medium_portrait/437/1093345.jpg','https://static.tvmaze.com/uploads/images/original_untouched/437/1093345.jpg'),(42,'https://static.tvmaze.com/uploads/images/medium_portrait/423/1058269.jpg','https://static.tvmaze.com/uploads/images/original_untouched/423/1058269.jpg'),(43,'https://static.tvmaze.com/uploads/images/medium_portrait/359/898320.jpg','https://static.tvmaze.com/uploads/images/original_untouched/359/898320.jpg'),(44,'https://static.tvmaze.com/uploads/images/medium_portrait/323/807695.jpg','https://static.tvmaze.com/uploads/images/original_untouched/323/807695.jpg'),(45,'https://static.tvmaze.com/uploads/images/medium_portrait/172/431761.jpg','https://static.tvmaze.com/uploads/images/original_untouched/172/431761.jpg'),(46,'https://static.tvmaze.com/uploads/images/medium_portrait/167/419468.jpg','https://static.tvmaze.com/uploads/images/original_untouched/167/419468.jpg'),(47,'https://static.tvmaze.com/uploads/images/medium_portrait/47/119724.jpg','https://static.tvmaze.com/uploads/images/original_untouched/47/119724.jpg'),(48,'https://static.tvmaze.com/uploads/images/medium_portrait/177/444456.jpg','https://static.tvmaze.com/uploads/images/original_untouched/177/444456.jpg'),(49,'https://static.tvmaze.com/uploads/images/medium_portrait/146/366761.jpg','https://static.tvmaze.com/uploads/images/original_untouched/146/366761.jpg'),(50,'https://static.tvmaze.com/uploads/images/medium_portrait/163/409066.jpg','https://static.tvmaze.com/uploads/images/original_untouched/163/409066.jpg'),(51,'https://static.tvmaze.com/uploads/images/medium_portrait/462/1156310.jpg','https://static.tvmaze.com/uploads/images/original_untouched/462/1156310.jpg'),(52,'https://static.tvmaze.com/uploads/images/medium_portrait/376/942489.jpg','https://static.tvmaze.com/uploads/images/original_untouched/376/942489.jpg'),(53,'https://static.tvmaze.com/uploads/images/medium_portrait/449/1123769.jpg','https://static.tvmaze.com/uploads/images/original_untouched/449/1123769.jpg'),(54,'https://static.tvmaze.com/uploads/images/medium_portrait/23/59773.jpg','https://static.tvmaze.com/uploads/images/original_untouched/23/59773.jpg'),(55,'https://static.tvmaze.com/uploads/images/medium_portrait/155/388231.jpg','https://static.tvmaze.com/uploads/images/original_untouched/155/388231.jpg'),(56,'https://static.tvmaze.com/uploads/images/medium_portrait/436/1091862.jpg','https://static.tvmaze.com/uploads/images/original_untouched/436/1091862.jpg'),(57,'https://static.tvmaze.com/uploads/images/medium_portrait/463/1159193.jpg','https://static.tvmaze.com/uploads/images/original_untouched/463/1159193.jpg'),(58,'https://static.tvmaze.com/uploads/images/medium_portrait/138/346902.jpg','https://static.tvmaze.com/uploads/images/original_untouched/138/346902.jpg'),(59,'https://static.tvmaze.com/uploads/images/medium_portrait/375/939739.jpg','https://static.tvmaze.com/uploads/images/original_untouched/375/939739.jpg'),(60,'https://static.tvmaze.com/uploads/images/medium_portrait/133/333764.jpg','https://static.tvmaze.com/uploads/images/original_untouched/133/333764.jpg');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `previousepisode_id` int DEFAULT NULL,
  `self_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_tpu2aalunitmqckjbekkkpin6` (`previousepisode_id`),
  UNIQUE KEY `UK_5f7ih6yxy9kx9crn4oqh23cr8` (`self_id`),
  CONSTRAINT `FK93rxgo88hv3916n35558393xr` FOREIGN KEY (`self_id`) REFERENCES `self` (`id`),
  CONSTRAINT `FKcl920vnqlcrycnfxhvl3ndurc` FOREIGN KEY (`previousepisode_id`) REFERENCES `previousepisode` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,NULL,40),(41,40,41),(42,41,42),(43,42,43),(44,43,44),(45,44,45),(46,45,46),(47,46,47),(48,47,48),(49,48,49),(50,49,50),(51,50,51),(52,51,52),(53,52,53),(54,53,54),(55,54,55),(56,55,56),(57,56,57),(58,57,58),(59,58,59),(60,59,60);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network`
--

DROP TABLE IF EXISTS `network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `network` (
  `country_id` int DEFAULT NULL,
  `id` int DEFAULT NULL,
  `networkId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `officialName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`networkId`),
  UNIQUE KEY `UK_smwc4spfvrin7fv1wlghq74k9` (`country_id`),
  CONSTRAINT `FKcpg7wjnglop0xmxdwg9o85tcu` FOREIGN KEY (`country_id`) REFERENCES `networkcountry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network`
--

LOCK TABLES `network` WRITE;
/*!40000 ALTER TABLE `network` DISABLE KEYS */;
INSERT INTO `network` VALUES (1,8,1,'HBO','https://www.hbo.com/'),(2,16,2,'Syfy',NULL),(3,5,3,'The CW','https://www.cwtv.com/'),(4,2,4,'CBS','https://www.cbs.com/'),(5,30,5,'USA Network','https://www.usanetwork.com'),(6,66,6,'Discovery Channel','https://www.discovery.com/'),(7,8,7,'HBO','https://www.hbo.com/'),(8,120,8,'Nine Network',NULL),(9,20,9,'AMC',NULL),(10,2,10,'CBS','https://www.cbs.com/'),(11,5,11,'The CW','https://www.cwtv.com/'),(12,34,12,'Paramount Network',NULL),(13,63,13,'Sky Showcase',NULL),(14,32,14,'TBS','https://www.tbs.com/'),(15,7,15,'CTV Sci-Fi Channel','https://www.ctv.ca/sci-fi'),(16,25,16,'Disney XD',NULL),(17,149,17,'Network 10','https://10play.com.au/'),(18,1,18,'NBC','https://www.nbc.com/'),(19,16,19,'Syfy',NULL),(20,16,20,'Syfy',NULL),(21,5,21,'The CW','https://www.cwtv.com/'),(22,8,22,'HBO','https://www.hbo.com/'),(23,2,23,'CBS','https://www.cbs.com/'),(24,3,24,'ABC','https://abc.com/'),(25,14,25,'TNT','https://www.tntdrama.com/'),(26,53,26,'History','https://www.history.com/'),(27,4,27,'FOX','https://www.fox.com/'),(28,7,28,'CTV Sci-Fi Channel','https://www.ctv.ca/sci-fi'),(29,8,29,'HBO','https://www.hbo.com/'),(30,13,30,'FX',NULL),(31,4,31,'FOX','https://www.fox.com/'),(32,3,32,'ABC','https://abc.com/'),(33,53,33,'History','https://www.history.com/'),(34,242,34,'National Geographic Channel',NULL),(35,114,35,'ABC','https://www.abc.net.au/'),(36,76,36,'TV Tokyo',NULL),(37,36,37,'CBC','https://www.cbc.ca/'),(38,66,38,'Discovery Channel','https://www.discovery.com/'),(39,1,39,'NBC','https://www.nbc.com/'),(40,22,40,'MTV',NULL),(41,52,41,'Bravo',NULL),(42,53,42,'History','https://www.history.com/'),(43,9,43,'Showtime','https://www.sho.com/'),(44,89,44,'Investigation Discovery',NULL),(45,36,45,'CBC','https://www.cbc.ca/');
/*!40000 ALTER TABLE `network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkcountry`
--

DROP TABLE IF EXISTS `networkcountry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networkcountry` (
  `id` int NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkcountry`
--

LOCK TABLES `networkcountry` WRITE;
/*!40000 ALTER TABLE `networkcountry` DISABLE KEYS */;
INSERT INTO `networkcountry` VALUES (1,'US','United States','America/New_York'),(2,'US','United States','America/New_York'),(3,'US','United States','America/New_York'),(4,'US','United States','America/New_York'),(5,'US','United States','America/New_York'),(6,'US','United States','America/New_York'),(7,'US','United States','America/New_York'),(8,'AU','Australia','Australia/Sydney'),(9,'US','United States','America/New_York'),(10,'US','United States','America/New_York'),(11,'US','United States','America/New_York'),(12,'US','United States','America/New_York'),(13,'GB','United Kingdom','Europe/London'),(14,'US','United States','America/New_York'),(15,'CA','Canada','America/Halifax'),(16,'US','United States','America/New_York'),(17,'AU','Australia','Australia/Sydney'),(18,'US','United States','America/New_York'),(19,'US','United States','America/New_York'),(20,'US','United States','America/New_York'),(21,'US','United States','America/New_York'),(22,'US','United States','America/New_York'),(23,'US','United States','America/New_York'),(24,'US','United States','America/New_York'),(25,'US','United States','America/New_York'),(26,'US','United States','America/New_York'),(27,'US','United States','America/New_York'),(28,'CA','Canada','America/Halifax'),(29,'US','United States','America/New_York'),(30,'US','United States','America/New_York'),(31,'US','United States','America/New_York'),(32,'US','United States','America/New_York'),(33,'US','United States','America/New_York'),(34,'GB','United Kingdom','Europe/London'),(35,'AU','Australia','Australia/Sydney'),(36,'JP','Japan','Asia/Tokyo'),(37,'CA','Canada','America/Halifax'),(38,'US','United States','America/New_York'),(39,'US','United States','America/New_York'),(40,'US','United States','America/New_York'),(41,'US','United States','America/New_York'),(42,'US','United States','America/New_York'),(43,'US','United States','America/New_York'),(44,'US','United States','America/New_York'),(45,'CA','Canada','America/Halifax');
/*!40000 ALTER TABLE `networkcountry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkcountry_seq`
--

DROP TABLE IF EXISTS `networkcountry_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networkcountry_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkcountry_seq`
--

LOCK TABLES `networkcountry_seq` WRITE;
/*!40000 ALTER TABLE `networkcountry_seq` DISABLE KEYS */;
INSERT INTO `networkcountry_seq` VALUES (101);
/*!40000 ALTER TABLE `networkcountry_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `previousepisode`
--

DROP TABLE IF EXISTS `previousepisode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `previousepisode` (
  `id` int NOT NULL AUTO_INCREMENT,
  `href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previousepisode`
--

LOCK TABLES `previousepisode` WRITE;
/*!40000 ALTER TABLE `previousepisode` DISABLE KEYS */;
INSERT INTO `previousepisode` VALUES (1,'https://api.tvmaze.com/episodes/2525914'),(2,'https://api.tvmaze.com/episodes/2024769'),(3,'https://api.tvmaze.com/episodes/2558535'),(4,'https://api.tvmaze.com/episodes/1662950'),(5,'https://api.tvmaze.com/episodes/1727838'),(6,'https://api.tvmaze.com/episodes/1887284'),(7,'https://api.tvmaze.com/episodes/1765655'),(8,'https://api.tvmaze.com/episodes/2166486'),(9,'https://api.tvmaze.com/episodes/1519902'),(10,'https://api.tvmaze.com/episodes/1473585'),(11,'https://api.tvmaze.com/episodes/1514241'),(12,'https://api.tvmaze.com/episodes/2355731'),(13,'https://api.tvmaze.com/episodes/1507508'),(14,'https://api.tvmaze.com/episodes/1913280'),(15,'https://api.tvmaze.com/episodes/2450807'),(16,'https://api.tvmaze.com/episodes/2466481'),(17,'https://api.tvmaze.com/episodes/1508277'),(18,'https://api.tvmaze.com/episodes/1529823'),(19,'https://api.tvmaze.com/episodes/1616014'),(20,'https://api.tvmaze.com/episodes/2032779'),(21,'https://api.tvmaze.com/episodes/2508575'),(22,'https://api.tvmaze.com/episodes/2409557'),(23,'https://api.tvmaze.com/episodes/695242'),(24,'https://api.tvmaze.com/episodes/1464333'),(25,'https://api.tvmaze.com/episodes/157634'),(26,'https://api.tvmaze.com/episodes/2194093'),(27,'https://api.tvmaze.com/episodes/1666026'),(28,'https://api.tvmaze.com/episodes/1590271'),(29,'https://api.tvmaze.com/episodes/2504676'),(30,'https://api.tvmaze.com/episodes/2512347'),(31,'https://api.tvmaze.com/episodes/1903323'),(32,'https://api.tvmaze.com/episodes/1490147'),(33,'https://api.tvmaze.com/episodes/2417113'),(34,'https://api.tvmaze.com/episodes/2521340'),(35,'https://api.tvmaze.com/episodes/1121993'),(36,'https://api.tvmaze.com/episodes/1728065'),(37,'https://api.tvmaze.com/episodes/1170577'),(38,'https://api.tvmaze.com/episodes/1697718'),(39,'https://api.tvmaze.com/episodes/1510311'),(40,'https://api.tvmaze.com/episodes/2369729'),(41,'https://api.tvmaze.com/episodes/2459714'),(42,'https://api.tvmaze.com/episodes/1809502'),(43,'https://api.tvmaze.com/episodes/2219461'),(44,'https://api.tvmaze.com/episodes/1561691'),(45,'https://api.tvmaze.com/episodes/1529521'),(46,'https://api.tvmaze.com/episodes/1170661'),(47,'https://api.tvmaze.com/episodes/1626775'),(48,'https://api.tvmaze.com/episodes/1610176'),(49,'https://api.tvmaze.com/episodes/1506162'),(50,'https://api.tvmaze.com/episodes/2564502'),(51,'https://api.tvmaze.com/episodes/2534891'),(52,'https://api.tvmaze.com/episodes/2531166'),(53,'https://api.tvmaze.com/episodes/2125749'),(54,'https://api.tvmaze.com/episodes/1452188'),(55,'https://api.tvmaze.com/episodes/2433285'),(56,'https://api.tvmaze.com/episodes/2569145'),(57,'https://api.tvmaze.com/episodes/1588270'),(58,'https://api.tvmaze.com/episodes/1511249'),(59,'https://api.tvmaze.com/episodes/1104126');
/*!40000 ALTER TABLE `previousepisode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `average` double DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (5.6,1),(7.5,2),(6.6,3),(6.6,4),(5.8,5),(7.5,6),(7.1,7),(7.4,8),(6.8,9),(7.1,10),(6.7,11),(8.6,12),(7.3,13),(7.7,14),(8.3,15),(7.7,16),(8.1,17),(6.6,18),(8.1,19),(7.4,20),(7.2,21),(7.4,22),(8,23),(7.6,24),(8.2,25),(7,26),(7.4,27),(8.2,28),(8.2,29),(7.6,30),(7.3,31),(5.3,32),(7.4,33),(8.1,34),(7.3,35),(7,36),(8.3,37),(8.4,38),(NULL,39),(NULL,40),(7,41),(7.5,42),(7.7,43),(7.4,44),(7.5,45),(7.2,46),(8.3,47),(8.5,48),(6.4,49),(6.8,50),(7.5,51),(4.3,52),(5.7,53),(7.6,54),(7,55),(7.8,56),(8,57),(8,58),(NULL,59),(6.2,60);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'22:00'),(2,'22:00'),(3,'20:00'),(4,'20:00'),(5,''),(6,''),(7,''),(8,'22:00'),(9,'22:00'),(10,'21:00'),(11,'20:40'),(12,'21:00'),(13,'21:00'),(14,'20:00'),(15,'20:00'),(16,''),(17,'21:00'),(18,'22:00'),(19,'22:00'),(20,'19:00'),(21,'19:30'),(22,'22:00'),(23,''),(24,'20:00'),(25,'20:00'),(26,'21:00'),(27,''),(28,'21:00'),(29,'22:00'),(30,'22:00'),(31,'21:00'),(32,''),(33,'21:00'),(34,'20:00'),(35,''),(36,''),(37,'21:00'),(38,''),(39,''),(40,''),(41,'22:00'),(42,'21:30'),(43,'21:00'),(44,'21:00'),(45,'20:00'),(46,'23:00'),(47,'20:30'),(48,'01:05'),(49,'21:30'),(50,''),(51,'21:00'),(52,'00:35'),(53,'20:00'),(54,'21:00'),(55,''),(56,'20:00'),(57,'20:00'),(58,''),(59,'21:00'),(60,'21:00');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_days`
--

DROP TABLE IF EXISTS `schedule_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_days` (
  `Schedule_id` int NOT NULL,
  `days` varchar(255) DEFAULT NULL,
  KEY `FKggo5v678vj0npc8bh1are9jnf` (`Schedule_id`),
  CONSTRAINT `FKggo5v678vj0npc8bh1are9jnf` FOREIGN KEY (`Schedule_id`) REFERENCES `schedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_days`
--

LOCK TABLES `schedule_days` WRITE;
/*!40000 ALTER TABLE `schedule_days` DISABLE KEYS */;
INSERT INTO `schedule_days` VALUES (1,'Friday'),(2,'Friday'),(3,'Saturday'),(4,'Friday'),(6,'Tuesday'),(8,'Wednesday'),(9,'Tuesday'),(10,'Sunday'),(11,'Wednesday'),(12,'Monday'),(13,'Monday'),(14,'Wednesday'),(15,'Sunday'),(16,'Thursday'),(17,'Friday'),(18,'Tuesday'),(19,'Friday'),(20,'Monday'),(21,'Monday'),(21,'Sunday'),(21,'Tuesday'),(22,'Tuesday'),(24,'Friday'),(25,'Monday'),(26,'Tuesday'),(28,'Sunday'),(29,'Friday'),(30,'Monday'),(31,'Sunday'),(32,'Thursday'),(33,'Wednesday'),(34,'Sunday'),(37,'Friday'),(41,'Thursday'),(42,'Sunday'),(43,'Wednesday'),(44,'Wednesday'),(45,'Sunday'),(47,'Tuesday'),(48,'Tuesday'),(49,'Thursday'),(51,'Wednesday'),(52,'Monday'),(52,'Thursday'),(52,'Friday'),(52,'Wednesday'),(52,'Tuesday'),(53,'Tuesday'),(54,'Sunday'),(56,'Thursday'),(57,'Sunday'),(58,'Thursday'),(59,'Wednesday'),(60,'Monday');
/*!40000 ALTER TABLE `schedule_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `self`
--

DROP TABLE IF EXISTS `self`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `self` (
  `id` int NOT NULL AUTO_INCREMENT,
  `href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `self`
--

LOCK TABLES `self` WRITE;
/*!40000 ALTER TABLE `self` DISABLE KEYS */;
INSERT INTO `self` VALUES (1,'https://api.tvmaze.com/shows/279'),(2,'https://api.tvmaze.com/shows/6767'),(3,'https://api.tvmaze.com/shows/2488'),(4,'https://api.tvmaze.com/shows/32802'),(5,'https://api.tvmaze.com/shows/29120'),(6,'https://api.tvmaze.com/shows/25110'),(7,'https://api.tvmaze.com/shows/25414'),(8,'https://api.tvmaze.com/shows/20895'),(9,'https://api.tvmaze.com/shows/37813'),(10,'https://api.tvmaze.com/shows/15112'),(11,'https://api.tvmaze.com/shows/32779'),(12,'https://api.tvmaze.com/shows/618'),(13,'https://api.tvmaze.com/shows/22188'),(14,'https://api.tvmaze.com/shows/6'),(15,'https://api.tvmaze.com/shows/27848'),(16,'https://api.tvmaze.com/shows/1824'),(17,'https://api.tvmaze.com/shows/6775'),(18,'https://api.tvmaze.com/shows/3590'),(19,'https://api.tvmaze.com/shows/1788'),(20,'https://api.tvmaze.com/shows/19621'),(21,'https://api.tvmaze.com/shows/6796'),(22,'https://api.tvmaze.com/shows/32291'),(23,'https://api.tvmaze.com/shows/9568'),(24,'https://api.tvmaze.com/shows/614'),(25,'https://api.tvmaze.com/shows/1889'),(26,'https://api.tvmaze.com/shows/1850'),(27,'https://api.tvmaze.com/shows/8167'),(28,'https://api.tvmaze.com/shows/5'),(29,'https://api.tvmaze.com/shows/100'),(30,'https://api.tvmaze.com/shows/21845'),(31,'https://api.tvmaze.com/shows/8800'),(32,'https://api.tvmaze.com/shows/30905'),(33,'https://api.tvmaze.com/shows/2225'),(34,'https://api.tvmaze.com/shows/83'),(35,'https://api.tvmaze.com/shows/2176'),(36,'https://api.tvmaze.com/shows/20172'),(37,'https://api.tvmaze.com/shows/1819'),(38,'https://api.tvmaze.com/shows/10822'),(39,'https://api.tvmaze.com/shows/38147'),(40,'https://api.tvmaze.com/shows/62829'),(41,'https://api.tvmaze.com/shows/6508'),(42,'https://api.tvmaze.com/shows/84'),(43,'https://api.tvmaze.com/shows/80'),(44,'https://api.tvmaze.com/shows/1715'),(45,'https://api.tvmaze.com/shows/17803'),(46,'https://api.tvmaze.com/shows/8706'),(47,'https://api.tvmaze.com/shows/4276'),(48,'https://api.tvmaze.com/shows/4201'),(49,'https://api.tvmaze.com/shows/28465'),(50,'https://api.tvmaze.com/shows/14657'),(51,'https://api.tvmaze.com/shows/612'),(52,'https://api.tvmaze.com/shows/363'),(53,'https://api.tvmaze.com/shows/997'),(54,'https://api.tvmaze.com/shows/6183'),(55,'https://api.tvmaze.com/shows/30346'),(56,'https://api.tvmaze.com/shows/3101'),(57,'https://api.tvmaze.com/shows/314'),(58,'https://api.tvmaze.com/shows/26198'),(59,'https://api.tvmaze.com/shows/37138'),(60,'https://api.tvmaze.com/shows/22878');
/*!40000 ALTER TABLE `self` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_genres`
--

DROP TABLE IF EXISTS `show_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show_genres` (
  `Show_id` int NOT NULL,
  `genres` varchar(255) DEFAULT NULL,
  KEY `FKhsd3wymepa32cccawshen43dn` (`Show_id`),
  CONSTRAINT `FKhsd3wymepa32cccawshen43dn` FOREIGN KEY (`Show_id`) REFERENCES `shows` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_genres`
--

LOCK TABLES `show_genres` WRITE;
/*!40000 ALTER TABLE `show_genres` DISABLE KEYS */;
INSERT INTO `show_genres` VALUES (2,'Western'),(2,'Drama'),(2,'Supernatural'),(4,'Crime'),(5,'Drama'),(6,'Action'),(7,'Drama'),(7,'Horror'),(7,'Thriller'),(8,'Drama'),(8,'Thriller'),(8,'Crime'),(9,'Action'),(10,'Drama'),(10,'Mystery'),(11,'Drama'),(11,'Thriller'),(11,'Crime'),(12,'Drama'),(12,'Crime'),(12,'Legal'),(13,'Drama'),(13,'Thriller'),(13,'Science-Fiction'),(6,'Adventure'),(6,'Science-Fiction'),(14,'Western'),(14,'Drama'),(14,'Family'),(15,'Action'),(15,'Drama'),(15,'Horror'),(16,'Drama'),(16,'Crime'),(16,'Fantasy'),(17,'Adventure'),(17,'Comedy'),(18,'Action'),(18,'Adventure'),(18,'Science-Fiction'),(19,'Adventure'),(19,'Comedy'),(19,'Children'),(21,'Drama'),(21,'Medical'),(22,'Drama'),(23,'Adventure'),(23,'Drama'),(23,'Science-Fiction'),(24,'Science-Fiction'),(25,'Action'),(25,'Drama'),(25,'Science-Fiction'),(26,'Drama'),(26,'Thriller'),(5,'Thriller'),(5,'Crime'),(27,'Drama'),(27,'Crime'),(28,'Drama'),(28,'Medical'),(29,'Drama'),(29,'Thriller'),(29,'Crime'),(30,'Drama'),(30,'Thriller'),(30,'Mystery'),(32,'Family'),(32,'Comedy'),(33,'Action'),(33,'Drama'),(33,'Crime'),(34,'Action'),(34,'Drama'),(34,'Science-Fiction'),(35,'Action'),(35,'Adventure'),(35,'Science-Fiction'),(36,'Drama'),(36,'Thriller'),(36,'Crime'),(38,'Drama'),(38,'Mystery'),(39,'Drama'),(39,'Music'),(39,'Comedy'),(40,'Family'),(40,'Comedy'),(41,'Family'),(41,'Comedy'),(43,'Drama'),(43,'Science-Fiction'),(44,'Drama'),(44,'Horror'),(44,'Supernatural'),(45,'Drama'),(45,'Crime'),(45,'Mystery'),(46,'Action'),(46,'Anime'),(46,'Comedy'),(47,'Comedy'),(48,'Drama'),(48,'Comedy'),(48,'Science-Fiction'),(49,'Adventure'),(49,'Mystery'),(50,'Comedy'),(53,'Drama'),(53,'Crime'),(53,'Mystery'),(54,'Western'),(55,'Drama'),(55,'Crime'),(56,'Drama'),(56,'Romance'),(57,'Crime'),(58,'Drama'),(58,'Crime'),(58,'Mystery');
/*!40000 ALTER TABLE `show_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shows` (
  `averageRuntime` int DEFAULT NULL,
  `id` int NOT NULL,
  `image_id` int DEFAULT NULL,
  `links_id` int DEFAULT NULL,
  `network_networkId` int DEFAULT NULL,
  `rating_id` int DEFAULT NULL,
  `runtime` int DEFAULT NULL,
  `schedule_id` int DEFAULT NULL,
  `updated` int DEFAULT NULL,
  `webchannel_id` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `summary` varchar(2000) DEFAULT NULL,
  `dvdCountry` varchar(255) DEFAULT NULL,
  `ended` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `officialSite` varchar(255) DEFAULT NULL,
  `premiered` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rlrknytq5mg7hkuw1gputtnns` (`image_id`),
  UNIQUE KEY `UK_s5xjeygwu6a26mgyecmanbhhh` (`links_id`),
  UNIQUE KEY `UK_emfdnqw5p4n1iddkcg3c5n3og` (`network_networkId`),
  UNIQUE KEY `UK_hoo1ow7a6v6pybut2ig892xpf` (`rating_id`),
  UNIQUE KEY `UK_6o6ueja5ju2u0lfrcj7hf5l4q` (`schedule_id`),
  UNIQUE KEY `UK_dity277vivykcuyjkpb408igp` (`webchannel_id`),
  CONSTRAINT `FK6vmxbv0878q2vhlfkf63d7tyt` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`id`),
  CONSTRAINT `FKbr5v40h2jy8cf5scroguqfe6p` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  CONSTRAINT `FKf8mpaql96xm7k09fsi9q4c7x1` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`),
  CONSTRAINT `FKjgu11lqwpapaom3xmbgf1gkfu` FOREIGN KEY (`network_networkId`) REFERENCES `network` (`networkId`),
  CONSTRAINT `FKqcp2j5ktu40yf6qluwr6l4f5h` FOREIGN KEY (`links_id`) REFERENCES `links` (`id`),
  CONSTRAINT `FKqyb6rhl7hit6j15e3t0smw3hi` FOREIGN KEY (`webchannel_id`) REFERENCES `webchannel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;
/*!40000 ALTER TABLE `shows` DISABLE KEYS */;
INSERT INTO `shows` VALUES (60,1,1,1,1,1,60,1,1683108441,NULL,97,'<p><b>Real Time with Bill Maher</b> includes an opening monologue, roundtable discussions with panelists, and interviews with in-studio and satellite guests. Politico hailed Maher as \"a pugnacious debater and a healthy corrective to the claptrap of cable news\", while Variety noted, \"There may not be a more eclectic guest list on all of television\".</p>',NULL,NULL,'English','Real Time with Bill Maher','http://www.hbo.com/real-time-with-bill-maher.html','2003-02-21','Running','Talk Show','https://www.tvmaze.com/shows/279/real-time-with-bill-maher'),(60,2,2,2,2,2,60,2,1683089537,NULL,94,'<p>Based on the IDW Comic, <b>Wynonna Earp</b> follows Wyatt Earp\'s great granddaughter as she battles demons and other creatures. With her unique abilities, and a posse of dysfunctional allies, she\'s the only thing that can bring the paranormal to justice.</p><p>After years away, Wynonna Earp has traveled back to her home town of Purgatory to reluctantly take on the role destined for Wyatt Earp\'s heir: Demon protector. Her enemy: Revenants, the resurrected (and twisted) souls of the criminals Wyatt Earp once took down. Using only her wits and her wit, Wynonna, along with sister Waverely, associate Agent Dolls and Wyatt\'s cursed-with-immortality-best-friend Doc Holliday, must try to stop the Revenants from taking over the town - and escaping into the world.</p>',NULL,'2021-04-09','English','Wynonna Earp','http://www.syfy.com/wynonnaearp','2016-04-01','Ended','Scripted','https://www.tvmaze.com/shows/6767/wynonna-earp'),(30,3,3,3,3,3,30,3,1687070180,NULL,96,'<p>In <b>Masters of Illusion</b>, the world\'s greatest magicians and illusionists perform magic in front of a live studio audience. There are no camera or computer tricks involved and you\'ll see tricks such as women turning into tigers, birds appearing from nowhere and sleight of hands in the blink of an eye! From one amazing trick to another, the performances are shown to you non-stop in a spectacular show filled with reality-twisting, mind-blowing magic.</p>',NULL,NULL,'English','Masters of Illusion','https://www.cwtv.com/shows/masters-of-illusion/','2014-08-01','Running','Reality','https://www.tvmaze.com/shows/2488/masters-of-illusion'),(60,4,4,4,4,4,60,4,1635524410,NULL,47,'<p><b>Whistleblower</b> takes a thrilling look into the real-life David vs. Goliath stories of heroic people who put everything on the line in order to expose illegal and often dangerous wrongdoing when major corporations rip off U.S. taxpayers. Hosted by attorney Alex Ferrer, a former judge and police officer, each hour introduces cases in which ordinary people step up to do the extraordinary by risking their careers, their families and even their lives to ensure others are not harmed or killed by unchecked, unethical corporate greed.</p>',NULL,'2019-06-28','English','Whistleblower','https://www.cbs.com/shows/whistleblower/','2018-07-13','Ended','Documentary','https://www.tvmaze.com/shows/32802/whistleblower'),(62,5,28,28,22,28,60,28,1681339958,NULL,99,'<p>Touch darkness and darkness touches you back. <b>True Detective</b> centers on troubled cops and the investigations that drive them to the edge. Each season features a new cast and a new case.</p><p><i><b>True Detective</b></i> is an American anthology crime drama television series created and written by Nic Pizzolatto. </p>',NULL,NULL,'English','True Detective','http://www.hbo.com/true-detective','2014-01-12','Running','Scripted','https://www.tvmaze.com/shows/5/true-detective'),(60,6,14,14,11,14,60,14,1679845987,NULL,98,'<p>Ninety-seven years ago, nuclear Armageddon decimated planet Earth, destroying civilization. The only survivors were the 400 inhabitants of 12 international space stations that were in orbit at the time. Three generations have been born in space, the survivors now number 4,000, and resources are running out on their dying \"Ark\" - the 12 stations now linked together and repurposed to keep the survivors alive. Draconian measures including capital punishment and population control are the order of the day, as the leaders of the Ark take ruthless steps to ensure their future, including secretly exiling a group of 100 juvenile prisoners to the Earth\'s surface to test whether it\'s habitable.</p>',NULL,'2020-09-30','English','The 100','http://www.cwtv.com/shows/the-100/','2014-03-19','Ended','Scripted','https://www.tvmaze.com/shows/6/the-100'),(53,7,7,7,NULL,7,NULL,7,1643271948,NULL,95,'<p>A psychological-horror series set in the Stephen King multiverse, <b>Castle Rock</b> combines the mythological scale and intimate character storytelling of King\'s best-loved works, weaving an epic saga of darkness and light, played out on a few square miles of Maine woodland. The fictional Maine town of Castle Rock has figured prominently in King\'s literary career: Cujo, The Dark Half, IT and Needful Things, as well as novella The Body and numerous short stories such as Rita Hayworth and The Shawshank Redemption are either set there or contain references to Castle Rock. Castle Rock is an original suspense/thriller — a first-of-its-kind reimagining that explores the themes and worlds uniting the entire King canon, while brushing up against some of his most iconic and beloved stories.</p>',NULL,'2019-12-11','English','Castle Rock','https://www.hulu.com/castle-rock','2018-07-25','Ended','Scripted','https://www.tvmaze.com/shows/25414/castle-rock'),(60,8,8,8,5,8,60,8,1675480111,NULL,93,'<p>A blend of thrilling murder investigation and raw character drama, anthology series <b>The Sinner</b> follows the investigation of a chilling new homicide each season. Detective Harry Ambrose employs unusual tactics and a deep capacity for empathy to solve his cases … with a boundless dedication driven by his own dark past. Departing from the traditional \"whodunnit,\" the series delves into the \"why\" -- exploring the buried traumas, psychological factors and philosophical reasons that might compel a seemingly \"normal\" person to commit unspeakable acts.</p>',NULL,'2021-12-01','English','The Sinner','https://www.usanetwork.com/the-sinner','2017-08-02','Ended','Scripted','https://www.tvmaze.com/shows/20895/the-sinner'),(60,9,9,9,6,9,60,9,1637252382,NULL,46,'<p>Instead of \"Dirty Jobs\", Discovery now brings you dangerous jobs. Tim Kennedy is one tough guy – an active, Ranger qualified, Green Beret, Special Forces Sniper who has served tours in Iraq, Afghanistan and other locations around the globe. He is also a top 5 professional MMA fighter with grit and dedication to the values of hard work and humility. Now he\'s ready to tackle some of the toughest jobs ever by risking life and limb to highlight the unsung heroes of the American workforce.</p><p>Each day, there are countless people who take on some of the most risky jobs imaginable. Tim Kennedy is ready to put himself in their shoes. Whether triggering avalanches with high explosives or protecting a cowboy from a 2000 pound bull, Tim works with experts to learn what it takes to do some of the most dangerous jobs in the world.</p>',NULL,'2018-09-04','English','Hard to Kill','https://www.discovery.com/tv-shows/hard-to-kill/','2018-07-31','Ended','Documentary','https://www.tvmaze.com/shows/37813/hard-to-kill'),(60,10,10,10,7,10,60,10,1629296090,NULL,92,'<p><b>Sharp Objects</b> centers on reporter Camille Preaker who, fresh from a brief stay at a psychiatric hospital, must return to her tiny hometown to cover the murders of two preteen girls. Trying to put together a psychological puzzle from her past, Camille finds herself identifying with the young victims a bit too closely.</p>',NULL,'2018-08-26','English','Sharp Objects','https://www.hbo.com/sharp-objects','2018-07-08','Ended','Scripted','https://www.tvmaze.com/shows/15112/sharp-objects'),(60,11,11,11,8,11,60,11,1574649447,NULL,70,'<p>Three years after surviving a shark attack, two detectives and former lovers reunite to hunt a serial killer lurking in plain sight.</p>',NULL,'2018-10-03','English','Bite Club',NULL,'2018-08-15','Ended','Scripted','https://www.tvmaze.com/shows/32779/bite-club'),(64,12,12,12,9,12,60,12,1683972289,NULL,99,'<p><b>Better Call Saul</b> is the prequel to the award-winning series Breaking Bad, set six years before Saul Goodman became Walter White\'s lawyer. When we meet him, the man who will become Saul Goodman is known as Jimmy McGill, a small-time lawyer searching for his destiny, and, more immediately, hustling to make ends meet. Working alongside, and often against, Jimmy is \"fixer\" Mike Ehrmantraut, a beloved character introduced in Breaking Bad. The series will track Jimmy\'s transformation into Saul Goodman, the man who puts \"criminal\" in \"criminal lawyer.</p>',NULL,'2022-08-15','English','Better Call Saul','https://www.amc.com/shows/better-call-saul--1002228','2015-02-08','Ended','Scripted','https://www.tvmaze.com/shows/618/better-call-saul'),(60,13,13,13,10,13,60,13,1590589354,NULL,91,'<p><b>Salvation</b> centers on an MIT grad student and a tech superstar who bring a low-level Pentagon official a staggering discovery--that an asteroid is just six months away from colliding with Earth.</p>',NULL,'2018-09-17','English','Salvation','http://www.cbs.com/shows/salvation/','2017-07-12','Ended','Scripted','https://www.tvmaze.com/shows/22188/salvation'),(66,14,15,15,12,15,60,15,1686591105,NULL,100,'<p><b>Yellowstone </b>follows the Dutton family, led by John Dutton, who controls the largest contiguous ranch in the United States, under constant attack by those it borders — land developers, an Indian reservation, and America\'s first National Park. It is an intense study of a violent world far from media scrutiny — where land grabs make developers billions, and politicians are bought and sold by the world\'s largest oil and lumber corporations. Where drinking water poisoned by fracking wells and unsolved murders are not news: they are a consequence of living in the new frontier. It is the best and worst of America seen through the eyes of a family that represents both.</p>',NULL,NULL,'English','Yellowstone','http://www.paramountnetwork.com/shows/yellowstone','2018-06-20','Running','Scripted','https://www.tvmaze.com/shows/27848/yellowstone'),(58,15,16,16,NULL,16,NULL,16,1686931599,NULL,100,'<p>Living in the same universe as <i>The Walking Dead</i>, <b>Fear the Walking Dead </b>is a gritty drama that explores the onset of the undead apocalypse through the lens of a fractured family. Set in a city where people come to escape, shield secrets, and bury their pasts, a mysterious outbreak threatens to disrupt what little stability high school guidance counselor Madison Clark and English teacher Travis Manawa have managed to assemble. The everyday pressure of blending two families while dealing with resentful, escapist, and strung out children takes a back seat when society begins to break down. A forced evolution, a necessary survival of the fittest takes hold, and our dysfunctional family must either reinvent themselves or embrace their darker histories.</p>',NULL,NULL,'English','Fear the Walking Dead','https://www.amc.com/shows/fear-the-walking-dead--1002242','2015-08-23','Running','Scripted','https://www.tvmaze.com/shows/1824/fear-the-walking-dead'),(60,16,17,17,13,17,60,17,1597714708,NULL,93,'<p>James Nesbitt stars as down on his luck cop DI Harry Clayton whose chance encounter with a mysterious woman and an ancient bracelet changes everything. Based on an original idea by Stan Lee.</p>',NULL,'2018-09-07','English','Stan Lee\'s Lucky Man','https://www.sky.com/watch/title/series/89afcdf9-4daf-48c9-8005-64bfee25d8d9/lucky-man','2016-01-22','Ended','Scripted','https://www.tvmaze.com/shows/6775/stan-lees-lucky-man'),(30,17,18,18,14,18,30,18,1657203149,NULL,89,'<p><b>Wrecked</b> is a single-camera comedy. Described as <i>Lost </i>meets <i>It\'s Always Sunny In Philadelphia</i>, <i>Wrecked </i>follows a group of extremely diverse survivors of a plane crash on a remote island who must adjust to life in a dangerous new world that poses unique threats--mostly brought upon themselves. No longer plugged in, the group must navigate this new society and learn to live without the comforts of 2015 like social media, Wi-Fi, indoor plumbing, and Chipotle.</p>',NULL,'2018-10-02','English','Wrecked','http://www.tbs.com/shows/wrecked.html','2016-06-14','Ended','Scripted','https://www.tvmaze.com/shows/3590/wrecked'),(60,18,19,19,15,19,60,19,1587631328,NULL,97,'<p><b>Killjoys</b> follows a fun-loving, hard living trio of interplanetary bounty hunters sworn to remain impartial as they chase deadly warrants throughout the Quad, a distant system on the brink of a bloody, multi-planetary class war.</p>',NULL,'2019-09-20','English','Killjoys','http://www.space.ca/show/killjoys/','2015-06-19','Ended','Scripted','https://www.tvmaze.com/shows/1788/killjoys'),(32,19,20,20,16,20,30,20,1652199071,NULL,74,'<p><b>DuckTales</b> chronicles the high-flying adventures of Duckburg\'s most famous trillionaire Scrooge McDuck, his mischief-making triplet grandnephews - Huey, Dewey and Louie, temperamental nephew Donald Duck and the trusted McDuck Manor team: big-hearted, fearless chauffer/pilot Launchpad McQuack; no-nonsense housekeeper Mrs. Beakley; and Mrs. Beakley\'s granddaughter, Webby Vanderquack, resident adventurer and the triplet\'s newfound fierce friend.</p>',NULL,'2021-03-15','English','DuckTales','https://disneynow.com/shows/ducktales-disney-channel','2017-08-11','Ended','Animation','https://www.tvmaze.com/shows/19621/ducktales'),(78,20,21,21,17,21,90,21,1687126953,NULL,89,'<p><b>Australian Survivor</b> is a television series based on the popular reality show \"Survivor\". Australian Survivor sees 24 tough and tenacious people marooned on a tropical island with little more than the clothes on their backs and the drive to be the sole survivor.</p>',NULL,NULL,'English','Australian Survivor','http://tenplay.com.au/channel-ten/australian-survivor','2002-02-13','Running','Reality','https://www.tvmaze.com/shows/6796/australian-survivor'),(60,21,22,22,18,22,60,22,1674593719,NULL,98,'<p>Inspired by Bellevue, the oldest public hospital in America, <b>New Amsterdam</b> follows the brilliant and charming Dr. Max Goodwin, the institution\'s newest medical director, who sets out to tear up the bureaucracy and provide exceptional care. How can he help? Well, the doctors and staff have heard this before. Not taking \"no\" for an answer, Dr. Goodwin must disrupt the status quo and prove he will stop at nothing to breathe new life into this understaffed, underfunded and underappreciated hospital - the only one in the world capable of treating Ebola patients, prisoners from Rikers and the president of the United States under one roof - and return it to the glory that put it on the map.</p>',NULL,'2023-01-17','English','New Amsterdam','https://www.nbc.com/new-amsterdam','2018-09-25','Ended','Scripted','https://www.tvmaze.com/shows/32291/new-amsterdam'),(3,22,23,23,NULL,23,2,23,1664985103,NULL,93,'<p><b>Banshee: Origins</b> is a series of webisodes based on the American drama television series produced by Cinemax called \"Banshee\". The series offers flashbacks in-between the time where Lucas Hood was arrested and when Sheriff Lucas Hood first arrived in Banshee.</p>',NULL,'2016-04-01','English','Banshee Origins','http://www.welcometobanshee.com/','2013-01-11','Ended','Scripted','https://www.tvmaze.com/shows/9568/banshee-origins'),(59,23,24,24,19,24,60,24,1651110359,NULL,99,'<p>Inspired by the classic blockbuster film, which commemorated its 20th anniversary in 2015, <b>12 Monkeys</b> explores the provocative story of a time traveler from a decimated future in a high-stakes race against the clock. Utilizing a dangerous and untested method of time travel, he journeys from 2043 to the present day on a mission to locate and eradicate the source of a deadly plague that will all but annihilate the human race.</p>',NULL,'2018-07-06','English','12 Monkeys','https://www.syfy.com/12-monkeys','2015-01-16','Ended','Scripted','https://www.tvmaze.com/shows/614/12-monkeys'),(90,24,25,25,20,25,90,25,1536277614,NULL,87,'<p>Covering a period from 1947 to the present, <b>Taken </b>focused on three different families, each of whom was profoundly affected by extraterrestrial visitation. The Keys family was headed by WWII bomber pilot Russell Keys, who spent virtually his entire adult life haunted by his \"close encounter\" with aliens. The Clarkes were originally represented by lonely Texas waitress Sally Clarke, who was impregnated by a charming stranger (John) who turned out to be an alien survivor of the Roswell crash. And the lives of the Crawfords were dictated by ruthless Army officer Owen Crawford, who was determined to prove that the government had covered up the truth about Roswell by dedicating his life to tracking down all space aliens and their half-human descendants. The story was narrated by Allie Keys, a \"hybrid\" child of the present day, whose story determined the outcome of the final episodes.</p>',NULL,'2002-12-13','English','Taken',NULL,'2002-12-02','Ended','Scripted','https://www.tvmaze.com/shows/1889/taken'),(60,25,26,26,21,26,60,26,1670925684,NULL,98,'<p><b>Supergirl</b> is an action-adventure drama based on the DC Comics character Kara Zor-El, Superman\'s (Kal-El) cousin who, after 12 years of keeping her powers a secret on Earth, decides to finally embrace her superhuman abilities and be the hero she was always meant to be.</p>',NULL,'2021-11-09','English','Supergirl','http://www.cwtv.com/shows/supergirl','2015-10-26','Ended','Scripted','https://www.tvmaze.com/shows/1850/supergirl'),(58,26,27,27,NULL,27,NULL,27,1679157839,NULL,94,'<p>Kiefer Sutherland stars as Tom Kirkman, a lower-level cabinet member who is suddenly appointed President of the United States after a catastrophic attack on the US Capitol during the State of the Union, on the highly anticipated series <b>Designated Survivor</b>. In this dramatic thriller, Kirkman will struggle to keep the country and his own family from falling apart, while navigating the highly-volatile political arena and while leading the search to find who is responsible for the attack.</p>',NULL,'2019-06-07','English','Designated Survivor','https://www.netflix.com/title/80113647','2016-09-21','Ended','Scripted','https://www.tvmaze.com/shows/8167/designated-survivor'),(60,27,29,29,23,29,60,29,1686168512,NULL,99,'<p><b>Blue Bloods </b>is a drama about a multi-generational family of cops dedicated to New York City law enforcement. Frank Reagan is the New York Police Commissioner and heads both the police force and the Reagan brood. He runs his department as diplomatically as he runs his family, even when dealing with the politics that plagued his unapologetically bold father, Henry, during his stint as Chief. A source of pride and concern for Frank is his eldest son Danny, a seasoned detective, family man and Iraq War vet who on occasion uses dubious tactics to solve cases with his loyal and tough partner, Detective Jackie Curatola. The Reagan women in the family include Erin, a N.Y. Assistant D.A., who also serves as the legal compass for her siblings and father, and single parent to her teenage daughter Nicky; and Linda, Danny\'s supportive wife. Jamie is the youngest Reagan, a recent grad of Harvard Law and the family\'s \"golden boy.\" Unable to deny the family tradition, Jamie has decided to give up a lucrative future in law and follow in the family footsteps as a cop.</p>',NULL,NULL,'English','Blue Bloods','http://www.cbs.com/shows/blue_bloods/','2010-09-24','Running','Scripted','https://www.tvmaze.com/shows/100/blue-bloods'),(60,28,30,30,24,30,60,30,1683038728,NULL,99,'Shaun Murphy, a young surgeon with autism and savant syndrome, relocates from a quiet country life to join a prestigious hospital\'s surgical unit. Alone in the world and unable to personally connect with those around him, Shaun uses his extraordinary medical gifts to save lives and challenge the skepticism of his colleagues.',NULL,NULL,'English','The Good Doctor','https://abc.com/shows/the-good-doctor','2017-09-25','Running','Scripted','https://www.tvmaze.com/shows/21845/the-good-doctor'),(60,29,31,31,25,31,60,31,1648330077,NULL,95,'<p><b>The Alienist</b>, based on the Anthony Award-winning New York Times bestseller by Caleb Carr, is a fast-paced and atmospheric psychological thriller set in the fascinating and gritty world of Gilded Age New York City. After a series of haunting and gruesome murders, psychiatrist Dr. Laszlo Kreizler, newspaper reporter John Moore and police commissioner Theodore Roosevelt come together employing emerging disciplines of psychology and early crime investigation techniques to track down one of New York City\'s first serial killers.</p>',NULL,'2020-08-09','English','The Alienist','http://www.tntdrama.com/shows/the-alienist','2018-01-22','Ended','Scripted','https://www.tvmaze.com/shows/8800/the-alienist'),(59,30,32,32,NULL,32,60,32,1647123949,NULL,72,'<p><b>One Dollar</b> is a mystery set in a small rust belt town in post-recession America, where a one-dollar bill changing hands connects a group of characters involved in a shocking multiple murder. The path of the dollar bill and point of view in each episode paint a picture of a modern American town with deep class and cultural divides that spill out into the open as the town\'s secrets get revealed.</p>',NULL,'2018-11-01','English','One Dollar','https://www.cbs.com/shows/one-dollar/','2018-08-30','Ended','Scripted','https://www.tvmaze.com/shows/30905/one-dollar'),(63,31,33,33,26,33,60,33,1677646321,NULL,96,'<p><b>Forged in Fire</b> features world-class bladesmiths competing against each other to create some of the most iconic edged weapons from history. In each episode, four of the best bladesmiths in the country will come together to put both their skills and reputations on the line. Whether they are making a Japanese katana, a medieval broadsword, or an ancient throwing blade like the chakram, the weapons they forge will be fully functional and lethal works of art and war. The unique histories contained within each weapon will be creatively told during the forging process and the final weapons themselves will be assessed and ruthlessly tested by our panel of expert judges. These dynamic and explosive tests will be individually designed to push the weapons to their absolute limit. One by one, the bladesmiths will be eliminated until only one remains to be crowned the champion.</p>',NULL,NULL,'English','Forged in Fire','https://www.history.com/shows/forged-in-fire','2015-06-22','To Be Determined','Reality','https://www.tvmaze.com/shows/2225/forged-in-fire'),(30,32,34,34,27,34,30,34,1685347124,NULL,99,'<p><b>The Simpsons</b> is the longest running scripted show in US television history. It captures the adventures of Homer, Marge, Maggie, Bart and Lisa who are living in a fictional town called Springfield.</p>',NULL,NULL,'English','The Simpsons','http://www.fox.com/the-simpsons/full-episodes','1989-12-17','Running','Animation','https://www.tvmaze.com/shows/83/the-simpsons'),(50,33,35,35,NULL,35,NULL,35,1677968242,NULL,93,'<p><b>Marvel\'s The Defenders</b> follows Daredevil, Jessica Jones, Luke Cage and Iron Fist. A quartet of singular heroes with one common goal - to save New York City. This is the story of four solitary figures, burdened with their own personal challenges, who realize they just might be stronger when teamed together.</p>',NULL,'2017-08-18','English','Marvel\'s The Defenders','https://www.netflix.com/title/80002566','2017-08-18','Ended','Scripted','https://www.tvmaze.com/shows/2176/marvels-the-defenders'),(55,34,36,36,NULL,36,NULL,36,1648275651,NULL,97,'<p>Every teenager thinks their parents are evil. What if you found out they actually were? <b>Marvel\'s Runaways</b> is the story of six diverse teenagers who can barely stand each other but who must unite against a common foe – their parents.</p>',NULL,'2019-12-13','English','Marvel\'s Runaways','https://www.hulu.com/marvels-runaways','2017-11-21','Ended','Scripted','https://www.tvmaze.com/shows/20172/marvels-runaways'),(60,35,37,37,28,37,60,37,1645886576,NULL,98,'<p>In <b>Dark Matter</b>, the crew of a derelict spaceship is awakened from stasis with no memories of who they are or how they got on board. Facing threats at every turn, they have to work together to survive a voyage charged with vengeance, betrayal and hidden secrets.</p>',NULL,'2017-08-25','English','Dark Matter','http://www.space.ca/show/dark-matter/','2015-06-12','Ended','Scripted','https://www.tvmaze.com/shows/1819/dark-matter'),(54,36,38,38,NULL,38,NULL,38,1643096917,NULL,96,'<p><b>MINDHUNTER</b> is based on the 1996 book<i> Mind Hunter: Inside the FBI\'s Elite Serial Crime Unit</i>, by former special agent John Douglas and Mark Olshaker. For years, Douglas pursued some of the most notorious serial killers and rapists, developing profiling techniques to catch them. The book goes behind the scenes of some of his highest-profile cases, including the man who hunted prostitutes in Alaska, the Atlanta child murderer, and Seattle\'s Green River killer. To hone in his profiling methods Douglas interviewed and studied a skew of serial killers. Several book and TV characters have been based in part on him, including Jack Crawford in Thomas Harris\' <i>The Silence of the Lambs</i>, Will Graham on <i>Hannibal</i> and Jason Gideon on <i>Criminal Minds</i>.</p>',NULL,'2019-08-16','English','MINDHUNTER','https://www.netflix.com/title/80114855','2017-10-13','Ended','Scripted','https://www.tvmaze.com/shows/10822/mindhunter'),(10,37,39,39,NULL,39,10,39,1641457907,NULL,36,'<p>A top-ranked college marching band\'s members fight to keep their spots, memorize routines, tend to their social lives -- and slay the competition.</p>',NULL,'2018-08-03','English','Marching Orders','https://www.netflix.com/title/80988815','2018-08-03','Ended','Documentary','https://www.tvmaze.com/shows/38147/marching-orders'),(NULL,38,40,40,29,40,NULL,40,1656600971,NULL,90,'<p><b>Trust </b>is about a wealthy financier who is dissatisfied by a novel based on his life and his wife\'s portrayal, so he asks a secretary to ghostwrite his memoir and set the record straight. The secretary, however, grows uncomfortably aware that he is rewriting history—and his wife\'s place in it. Told in four different voices and genres, <i>Trust</i> is a narrative puzzle that subverts the notion of truth and who gets to define it.</p>',NULL,NULL,'English','Trust',NULL,NULL,'In Development','Scripted','https://www.tvmaze.com/shows/62829/trust'),(33,39,41,41,30,41,NULL,41,1672842074,NULL,94,'<p>Two cousins work through the <b>Atlanta</b> music scene in order to better their lives and the lives of their families.</p>',NULL,'2022-11-10','English','Atlanta','https://www.fxnetworks.com/shows/atlanta','2016-09-06','Ended','Scripted','https://www.tvmaze.com/shows/6508/atlanta'),(30,40,42,42,31,42,30,42,1684070668,NULL,99,'<p><b>Family Guy</b> follows Peter Griffin the endearingly ignorant dad, and his hilariously offbeat family of middle-class New Englanders in Quahog, RI. Lois is Peter\'s wife, a stay-at-home mom with no patience for her family\'s antics. Then there are their kids: 18-year-old Meg is an outcast at school and the Griffin family punching bag; 13-year-old Chris is a socially awkward teen who doesn\'t have a clue about the opposite sex; and one-year-old Stewie is a diabolically clever baby whose burgeoning sexuality is very much a work in progress. Rounding out the Griffin household is Brian the family dog and a ladies\' man who is one step away from AA.</p>',NULL,NULL,'English','Family Guy','http://www.fox.com/family-guy','1999-01-31','Running','Animation','https://www.tvmaze.com/shows/84/family-guy'),(30,41,43,43,32,43,30,43,1669170900,NULL,98,'<p><b>Modern Family</b> revolves around three different types of families (nuclear, step- and same-sex) living in the Los Angeles area, who are interrelated through Jay Pritchett and his children, Claire Dunphy (née Pritchett) and Mitchell Pritchett. Patriarch Jay is remarried to a much younger woman, Gloria Delgado Pritchett (née Ramirez), a passionate Colombian with whom he has an infant son, Fulgencio (Joe) Pritchett, and a son from Gloria\'s previous marriage, Manny Delgado.</p><p>Jay\'s daughter Claire was a homemaker, but has returned to the business world. She is now the chief executive of her father\'s previous business, Pritchett\'s Closets and Blinds. She is married to Phil Dunphy, a realtor and self-professed \"cool dad\". They have three children: Haley Dunphy, a stereotypical ditzy teenage girl; Alex Dunphy, a nerdy, smart middle child; and Luke Dunphy, the off-beat only son.</p><p>Jay\'s lawyer son Mitchell and his husband Cameron Tucker have one daughter, Lily Tucker-Pritchett. As the name suggests, this family represents a modern-day family, and episodes are comically based on situations which many families encounter in real life.</p>',NULL,'2020-04-08','English','Modern Family','http://abc.go.com/shows/modern-family','2009-09-23','Ended','Scripted','https://www.tvmaze.com/shows/80/modern-family'),(34,42,44,44,33,44,60,44,1681210389,NULL,89,'<p>Most people in Las Vegas bet with chips, but Danny \"The Count\" Koker bets with cars. Known from his numerous appearances on Pawn Stars, this Sin City legend walks, talks and breathes classic American muscle cars. When he sees a car he wants, he will do whatever it takes to get his hands on it—including making on-the-spot cash offers to unsuspecting owners. On the HISTORY series <b>Counting Cars</b>, Danny and his team restore, customize and sell cars in a hurry, scrambling to keep their Las Vegas shop in the black. From vintage Thunderbirds to classic Corvettes, toy cars to souped-up sidecar motorcycles, Danny and the crew of Count\'s Kustoms will stop at nothing to find and flip the greatest rides of all time.</p>',NULL,NULL,'English','Counting Cars','http://www.history.com/shows/counting-cars','2012-08-13','To Be Determined','Reality','https://www.tvmaze.com/shows/1715/counting-cars'),(60,43,45,45,34,45,60,45,1655227010,NULL,93,'<p>The year is 2033, and humanity\'s first crewed mission to Mars is about to become a reality. As a clock counts down the final 90 seconds to landing, an expert crew of astronauts endures the final harrowing moments before touching down on the red planet. Even with the best training and resources available, the maiden crew of the Daedalus spacecraft must push itself to the brink of human capability in order to successfully establish the first sustainable colony on Mars. Set both in the future and in the present day, the global miniseries event <b>MARS</b> blends feature film-caliber scripted elements set in the future with documentary vérité interviews with today\'s best and brightest minds in modern science and innovation, illuminating how research and development is creating the space technology that will enable our first attempt at a mission to Mars.</p>',NULL,'2018-12-16','English','MARS','http://mars.natgeotv.com/','2016-10-23','Ended','Scripted','https://www.tvmaze.com/shows/17803/mars'),(60,44,46,46,NULL,46,60,46,1576864468,NULL,93,'<p>Get ready for some thrills and chills with <b>Channel Zero</b>, a horror anthology series. Each six hour installment draws inspiration from a different \"creepypasta\" (user-generated horror stories published online).</p>',NULL,'2018-10-26','English','Channel Zero','http://www.syfy.com/channelzero','2016-10-11','Ended','Scripted','https://www.tvmaze.com/shows/8706/channel-zero'),(60,45,47,47,35,47,60,47,1657403621,NULL,86,'<p>Created as a spin-off from the 2011 legal drama Crownies. Janet King follows the story of Senior Crown Prosecutor Janet King, tracing her journey in Series 1 in the Department of Public Prosecutions to a Royal Commission into Serious Firearm Crime in Series 2 to the National Crime Commission in Series 3.</p>',NULL,'2017-07-13','English','Janet King','http://www.abc.net.au/tv/programs/janet-king/','2014-02-27','Ended','Scripted','https://www.tvmaze.com/shows/4276/janet-king'),(25,46,48,48,36,48,25,48,1661869518,NULL,91,'<p><b>One-Punch Man</b> is a super hero who has trained so hard that his hair has fallen out, and who can overcome any enemy with one punch. However, because he is so strong, he has become bored and frustrated with winning all his battles so easily.</p>',NULL,NULL,'Japanese','One-Punch Man','http://onepunchman-anime.net/','2015-10-06','Running','Animation','https://www.tvmaze.com/shows/4201/one-punch-man'),(30,47,49,49,37,49,30,49,1618003925,NULL,66,'<p>Tommy \"Little Dog\" Ross gets the chance to re-enter the boxing ring after walking away from the ring during a championship bout five years ago. Tommy decides to make a comeback, and many of the obstacles that he needs to hurdle are psychological in nature -- including his girlfriend being with his rival. His family members focus on their own issues, which may be in direct competition to everything that Tommy is trying to achieve.</p>',NULL,'2019-03-07','English','Little Dog','http://www.cbc.ca/mediacentre/program/little-dog','2018-03-01','Ended','Scripted','https://www.tvmaze.com/shows/28465/little-dog'),(39,48,50,50,NULL,50,NULL,50,1672074342,NULL,74,'<p>Set in a world somewhat like our world, in a time quite similar to our time, <b>Maniac</b> tells the stories of Annie Landsberg and Owen Milgrim, two strangers drawn to the late stages of a mysterious pharmaceutical trial, each for their own reasons. Annie\'s disaffected and aimless, fixated on broken relationships with her mother and her sister; Owen, the fifth son of wealthy New York industrialists, has struggled his whole life with a disputed diagnosis of schizophrenia. Neither of their lives have turned out quite right, and the promise of a new, radical kind of pharmaceutical treatment—a sequence of pills its inventor, Dr. James K. Mantleray, claims can repair anything about the mind, be it mental illness or heartbreak—draws them and ten other strangers to the facilities of Neberdine Pharmaceutical and Biotech for a three-day drug trial that will, they\'re assured, with no complications or side-effects whatsoever, solve all of their problems, permanently. Things do not go as planned.</p>',NULL,'2018-09-21','English','Maniac','https://www.netflix.com/title/80124522','2018-09-21','Ended','Scripted','https://www.tvmaze.com/shows/14657/maniac'),(62,49,51,51,38,51,60,51,1687007897,NULL,99,'<p>In the hit series <b>Expedition Unknown</b>, Travel Channel\'s witty explorer Josh Gates seeks answers to some of the world\'s most captivating unsolved stories and legends. Gates is on a mission to find the truth behind each iconic legend, digging through years of historical evidence, facts and myths. Leaving no stone unturned, his adventures take him around the globe as he immerses himself in the core locales linked to each tale. From excavating ruins in search of the real Robin Hood to sailing the high seas investigating Christopher Columbus and exploring Nepal\'s \"sky caves\" for Shangri La, Gates\' archaeological background and ubiquitous sense of humor generate a new take on age-old stories.</p>',NULL,NULL,'English','Expedition Unknown','https://www.discovery.com/tv-shows/expedition-unknown/','2015-01-08','Running','Reality','https://www.tvmaze.com/shows/612/expedition-unknown'),(60,50,52,52,39,52,60,52,1685979578,NULL,92,'<p>Seth Meyers, who is Saturday Night Live\'s longest serving anchor on the show\'s wildly popular \"Weekend Update,\" takes over as host of NBC\'s <b>Late Night</b> — home to A-list celebrity guests, memorable comedy and the best in musical talent.</p><p>As the Emmy Award-winning head writer for \"SNL,\" Meyers has established a reputation for sharp wit and perfectly timed comedy, and has gained fame for his spot-on jokes and satire. Meyers takes his departure from \"SNL\" to his new post at \"Late Night,\" as Jimmy Fallon moves to The Tonight Show.</p>',NULL,NULL,'English','Late Night with Seth Meyers','https://www.nbc.com/late-night-with-seth-meyers','2014-02-24','Running','Talk Show','https://www.tvmaze.com/shows/363/late-night-with-seth-meyers'),(60,51,53,53,40,53,60,53,1682751924,NULL,94,'<p><b>Catfish: The TV Show</b> tackles the mystery and complexities of dating in a digital world. The hour-long series follows Nev Schulman, whose own online love drama was the subject of the \"Catfish\" film, and director-filmmaker Max Joseph as they take viewers on a deeply personal journey that goes inside the stories of young people as their online-only romantic relationships collide with first-time, real-life encounters.</p>',NULL,NULL,'English','Catfish: The TV Show','https://www.mtv.com/shows/catfish-the-tv-show','2012-11-12','Running','Reality','https://www.tvmaze.com/shows/997/catfish-the-tv-show'),(60,52,54,54,41,54,60,54,1649443349,NULL,78,'<p><b>Shahs of Sunset</b> follows a group of friends who are trying to juggle their active social lives and up-and-coming careers while balancing the demands of their families and traditions. These passionate socialites are fervent on the dating and party scene, but seeking approval from their families they face pressures to settle down and marry within the community. From outings on Rodeo Drive to traditional Persian feasts at home, this series celebrates the unique lifestyle of a group of friends who have worked hard for what they have and are not afraid to flaunt it.</p>',NULL,'2021-08-29','English','Shahs of Sunset','http://www.bravotv.com/shahs-of-sunset','2012-03-11','Ended','Reality','https://www.tvmaze.com/shows/6183/shahs-of-sunset'),(45,53,55,55,NULL,55,NULL,55,1651433058,NULL,88,'<p>After his teenage daughter goes missing, a widowed surgeon in an affluent neighborhood begins unearthing dark secrets about the people closest to him.</p>',NULL,'2018-05-10','English','Safe','https://www.netflix.com/title/80201500','2018-05-10','Ended','Scripted','https://www.tvmaze.com/shows/30346/safe'),(65,54,56,56,42,56,90,56,1673807844,NULL,93,'<p>Have you ever wondered what it would be like to live your life off the grid? Have you wished you could shed the complications of modern society and live in the wilderness, using only the things nature has provided? Meet Eustace Conway, Tom Oar and Marty Meierotto of the new History series Mountain Men, three men who have devoted their lives to survival in its simplest form. But how simple is it really for the <b>Mountain Men</b>?</p><p>From the rugged Blue Ridge Mountains of North Carolina to the seven-month-long winters on the Yaak River in Montana to the frigid northern range of Alaska, the country is full of some very unforgiving terrain. Watch as these men face off against mudslides, falling trees, ravaging weather and even hungry animals, to make sure they obtain the food and supplies they will need to make it through the brutal winter months ahead.</p>',NULL,NULL,'English','Mountain Men','http://www.history.com/shows/mountain-men','2012-05-31','To Be Determined','Reality','https://www.tvmaze.com/shows/3101/mountain-men'),(30,55,57,57,43,57,30,57,1686665777,NULL,99,'<p><b>VICE</b> explores today\'s most pressing issues, from civil unrest and hotbeds of terrorism, to unchecked government corruption and looming environmental catastrophes.</p>',NULL,NULL,'English','VICE','https://www.sho.com/vice','2013-04-05','Running','News','https://www.tvmaze.com/shows/314/vice'),(12,56,58,58,NULL,58,12,58,1638044718,NULL,45,'<p><b>Zac &amp; Mia</b> is a moving story about two ordinary teenagers who find hope, love and courage in exceptional circumstances. In the real world, these two 17-year-olds would have little to say to each other, but in the hospital where both are undergoing treatment for cancer, the usual rules no longer apply.</p>',NULL,'2018-12-27','English','Zac & Mia','https://www.hulu.com/series/zac-mia-929bb631-9ec7-4751-bbfe-3677327e59bf?d=CBSInteractive&f=cbsi&c=6637&content_id=1411717','2017-11-07','Ended','Scripted','https://www.tvmaze.com/shows/26198/zac-mia'),(60,57,59,59,44,59,60,59,1637091967,NULL,41,'<p>Real-life stories of people who betrays others with deadly consequences; these infiltrators convince their victims to trust them, gaining access to homes, to secrets and to bank accounts.</p>',NULL,'2018-08-22','English','Broken Trust','https://www.investigationdiscovery.com/tv-shows/broken-trust/','2018-06-13','Ended','Documentary','https://www.tvmaze.com/shows/37138/broken-trust'),(60,58,60,60,45,60,60,60,1582428301,NULL,62,'<p><b>Bellevue</b> is a mystery set in a small blue-collar town with a lot of ‘good people\' who ‘live right\' and take it upon themselves to make sure the neighbours do too. Detective Annie Ryder is a cop whose intense and brazen personality has always been at odds with her hometown; so when a transgender teen goes missing, Annie dives in to unravel the disappearance that suggests foul play, despite finding herself in a difficult position as she must cast suspicion on people she has known all her life. As the case pulls her further away from her family, she is also confronted by a mysterious person from her past with disturbing answers and a terrifying need to get inside her head.</p>',NULL,'2017-04-10','English','Bellevue','http://www.cbc.ca/bellevue/','2017-02-20','Ended','Scripted','https://www.tvmaze.com/shows/22878/bellevue');
/*!40000 ALTER TABLE `shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shows_seq`
--

DROP TABLE IF EXISTS `shows_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shows_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shows_seq`
--

LOCK TABLES `shows_seq` WRITE;
/*!40000 ALTER TABLE `shows_seq` DISABLE KEYS */;
INSERT INTO `shows_seq` VALUES (151);
/*!40000 ALTER TABLE `shows_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webchannel`
--

DROP TABLE IF EXISTS `webchannel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webchannel` (
  `country_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `officialSite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1iex8w7q48nhe6qqk6asdln8s` (`country_id`),
  CONSTRAINT `FK7mde8lq0qxmp6lw4jqay4mpyi` FOREIGN KEY (`country_id`) REFERENCES `webchannelcountry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webchannel`
--

LOCK TABLES `webchannel` WRITE;
/*!40000 ALTER TABLE `webchannel` DISABLE KEYS */;
/*!40000 ALTER TABLE `webchannel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webchannelcountry`
--

DROP TABLE IF EXISTS `webchannelcountry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webchannelcountry` (
  `id` int NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webchannelcountry`
--

LOCK TABLES `webchannelcountry` WRITE;
/*!40000 ALTER TABLE `webchannelcountry` DISABLE KEYS */;
/*!40000 ALTER TABLE `webchannelcountry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webchannelcountry_seq`
--

DROP TABLE IF EXISTS `webchannelcountry_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webchannelcountry_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webchannelcountry_seq`
--

LOCK TABLES `webchannelcountry_seq` WRITE;
/*!40000 ALTER TABLE `webchannelcountry_seq` DISABLE KEYS */;
INSERT INTO `webchannelcountry_seq` VALUES (1);
/*!40000 ALTER TABLE `webchannelcountry_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-19  3:22:28
