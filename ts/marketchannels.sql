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
-- Table structure for table `marketchannels`
--

DROP TABLE IF EXISTS `marketchannels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketchannels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT 'æ¸ é“åç§°',
  `description` varchar(100) DEFAULT NULL COMMENT 'æ¸ é“æè¿°',
  `img` varchar(100) DEFAULT NULL COMMENT 'æ¸ é“å›¾ç‰‡',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COMMENT='æ¸ é“è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketchannels`
--

LOCK TABLES `marketchannels` WRITE;
/*!40000 ALTER TABLE `marketchannels` DISABLE KEYS */;
INSERT INTO `marketchannels` VALUES (1,'一键通信内部开发测试','一键通信内部开发测试',NULL,'2010-08-09 02:26:40','2010-08-09 02:26:40'),(73,'tompda','tompda 推广合作',NULL,'2010-09-02 10:27:45','2010-09-02 10:27:45'),(75,'AppStore','苹果的应用商城',NULL,'2010-09-14 03:15:16','2010-09-14 08:58:37'),(77,'周边宝典官网','周边宝典网站下载',NULL,'2010-09-14 03:16:30','2010-09-14 03:16:30'),(79,'parttime','袁师推广站',NULL,'2010-09-14 03:18:41','2010-09-14 03:18:41'),(81,'Company','袁师合作推广',NULL,'2010-09-14 03:19:20','2010-09-14 03:19:20'),(83,'SoftSite','袁师软件站推广',NULL,'2010-09-14 03:20:10','2010-09-14 03:20:10'),(85,'网龙(91)','网龙(91)下载',NULL,'2010-09-14 03:21:08','2010-09-14 03:21:08'),(87,'天网','天网下载',NULL,'2010-09-14 03:21:29','2010-09-14 03:21:29'),(89,'移动商城','移动商城下载',NULL,'2010-09-14 03:21:51','2010-09-14 03:21:51'),(91,'创新工厂','创新工厂下载',NULL,'2010-09-14 03:22:20','2010-09-14 03:22:20'),(93,'手机游戏站','袁师手机游戏网站的推广',NULL,'2010-09-28 06:03:14','2010-09-28 06:03:46'),(95,'江西天翼版周边宝典','江西天翼版周边宝典',NULL,'2010-10-27 03:50:10','2010-10-27 03:50:10'),(97,'天翼空间','中国电信集团天翼空间应用商城',NULL,'2010-12-14 10:21:33','2010-12-14 10:21:33'),(99,'华为软件商城','华为软件商城',NULL,'2010-12-15 09:22:08','2010-12-15 09:22:08'),(101,'平安推广','平安推广',NULL,'2011-02-23 08:44:47','2011-02-23 08:44:47'),(103,'Android爱米市场','Android爱米市场',NULL,'2011-03-05 09:40:24','2011-03-05 09:40:24'),(105,'Android N多市场','Android N多市场',NULL,'2011-03-05 09:40:49','2011-03-05 09:40:49'),(107,'Android 安卓网市场','Android 安卓网市场',NULL,'2011-03-05 09:41:19','2011-03-05 09:41:19'),(109,'Android 安智网市场','Android 安智网市场',NULL,'2011-03-05 09:41:53','2011-03-05 09:41:53'),(111,'沃商店','沃商店',NULL,'2011-03-05 09:42:31','2011-03-05 09:42:31'),(113,'Android 机锋网','Android 机锋网下载',NULL,'2011-03-05 10:37:40','2011-03-05 10:37:40');
/*!40000 ALTER TABLE `marketchannels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:20
