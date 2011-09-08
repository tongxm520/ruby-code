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
-- Table structure for table `check_plans`
--

DROP TABLE IF EXISTS `check_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `need_check_action_id` int(11) DEFAULT NULL,
  `is_passed` int(11) DEFAULT NULL COMMENT '0 å®¡æ ¸ä¸é€šè¿‡  1 å®¡æ ¸é€šè¿‡ null æœªå®¡æ‰¹',
  `description` varchar(1000) DEFAULT NULL COMMENT 'å®¡æ ¸æ‰¹æ³¨',
  `power_id` int(11) DEFAULT NULL COMMENT 'å®¡æ ¸æ“ä½œå¯¹åº”çš„æƒé™',
  PRIMARY KEY (`id`),
  KEY `user_id_key` (`user_id`),
  KEY `need_check_action_id_key` (`need_check_action_id`),
  KEY `is_passed_key` (`is_passed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='å•ä¸ªç”¨æˆ·å®¡æ ¸æ ‡è®°';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_plans`
--

LOCK TABLES `check_plans` WRITE;
/*!40000 ALTER TABLE `check_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `check_plans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:23:39
