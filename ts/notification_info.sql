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
-- Table structure for table `notification_info`
--

DROP TABLE IF EXISTS `notification_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_name` varchar(50) NOT NULL COMMENT '鍏?憡鍚嶇О',
  `description` text NOT NULL COMMENT '鍏?憡鎻忚堪',
  `created_at` datetime NOT NULL COMMENT '鍒涘缓鏃堕棿',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='鍏?憡淇℃伅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_info`
--

LOCK TABLES `notification_info` WRITE;
/*!40000 ALTER TABLE `notification_info` DISABLE KEYS */;
INSERT INTO `notification_info` VALUES (31,'用户订阅商家优惠信息','用户订阅商家优惠信息','0000-00-00 00:00:00'),(32,'用户订阅商家分类信息','用户订阅商家分类信息','0000-00-00 00:00:00'),(33,'系统消息','系统消息','0000-00-00 00:00:00'),(34,'好友共享消息','好友共享消息','0000-00-00 00:00:00'),(35,'吼一声','吼一声','0000-00-00 00:00:00'),(36,'用户消息','用户消息','0000-00-00 00:00:00'),(37,'添加好友消息','添加好友消息','0000-00-00 00:00:00'),(38,'介绍好友消息','介绍好友消息','0000-00-00 00:00:00'),(39,'商铺购买消息','商铺购买消息','0000-00-00 00:00:00'),(40,'商铺购买消息同意','商铺购买消息','0000-00-00 00:00:00'),(41,'商铺购买消息不同意','商铺购买消息','0000-00-00 00:00:00'),(43,'拒绝加好友','拒绝加好友','2010-05-27 12:12:12'),(44,'确认加好友','确认加好友','2010-05-27 12:12:12'),(45,'系统回收信息','系统回收信息','2010-05-27 12:12:12'),(46,'宝地推荐','宝地推荐','2010-05-27 12:12:12');
/*!40000 ALTER TABLE `notification_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:35
