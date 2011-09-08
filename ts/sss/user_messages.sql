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
-- Table structure for table `user_messages`
--

DROP TABLE IF EXISTS `user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `hot_point_id` int(11) DEFAULT NULL,
  `notify_type` tinyint(4) DEFAULT NULL,
  `notify_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL COMMENT '0 未读 1 已读',
  `created_at` datetime DEFAULT NULL,
  `memo` text,
  `is_delete` tinyint(1) DEFAULT NULL,
  `table_name` varchar(50) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notif_user_isread_index` (`notify_id`,`user_id`,`is_read`),
  KEY `created_at_index` (`created_at`),
  KEY `user_id_index` (`user_id`),
  KEY `notify_type` (`notify_type`),
  KEY `table_name_id_index` (`table_name`,`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125262454 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 15:28:48
