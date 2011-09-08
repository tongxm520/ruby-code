-- MySQL dump 10.11
--
-- Host: 188.188.1.82    Database: atditu
-- ------------------------------------------------------
-- Server version	5.1.55-community-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `open_api_limits`
--

DROP TABLE IF EXISTS `open_api_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_api_limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open_api_user_id` int(11) NOT NULL,
  `start_at` datetime DEFAULT NULL COMMENT '何时开始',
  `curr_count` int(11) NOT NULL DEFAULT '0' COMMENT '当前数量',
  `limit_type` varchar(255) NOT NULL COMMENT '限制类型',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_open_api_limits_on_open_api_user_id` (`open_api_user_id`),
  KEY `index_open_api_limits_on_limit_type` (`limit_type`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='访问限制列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_api_limits`
--

LOCK TABLES `open_api_limits` WRITE;
/*!40000 ALTER TABLE `open_api_limits` DISABLE KEYS */;
INSERT INTO `open_api_limits` VALUES (2,2,'2011-08-04 10:05:09',10,'DAY','2011-05-26 12:49:30','2011-08-05 07:37:07'),(4,2,'2011-08-05 08:27:37',1,'MINUTE','2011-05-26 12:49:30','2011-08-05 08:27:37'),(6,4,'2011-09-07 03:33:43',13,'DAY','2011-05-27 04:23:54','2011-09-07 09:32:41'),(8,4,'2011-09-07 09:32:36',3,'MINUTE','2011-05-27 04:23:54','2011-09-07 09:32:41'),(9,5,NULL,0,'DAY','2011-08-05 08:56:10','2011-08-05 08:56:10'),(11,5,NULL,0,'MINUTE','2011-08-05 08:56:10','2011-08-05 08:56:10');
/*!40000 ALTER TABLE `open_api_limits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:36
