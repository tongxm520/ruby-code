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
-- Table structure for table `friendship_links`
--

DROP TABLE IF EXISTS `friendship_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendship_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT 'å‹æƒ…ç«™ç‚¹åç§°',
  `description` varchar(100) DEFAULT NULL COMMENT 'å‹æƒ…ç«™ç‚¹ç®€ä»‹',
  `link_url` varchar(100) DEFAULT NULL COMMENT 'å‹æƒ…ç«™ç‚¹é“¾æŽ¥',
  `img` varchar(100) DEFAULT NULL COMMENT 'å‹æƒ…ç«™ç‚¹å›¾ç‰‡é“¾æŽ¥',
  `seq` int(11) DEFAULT NULL COMMENT 'é¡µé¢æ˜¾ç¤ºæŽ’åºå€¼',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='å‹æƒ…é“¾æŽ¥è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship_links`
--

LOCK TABLES `friendship_links` WRITE;
/*!40000 ALTER TABLE `friendship_links` DISABLE KEYS */;
INSERT INTO `friendship_links` VALUES (1,'手机之家','','http://soft.imobile.com.cn/index-a-detail-id-1993.html','/images/friendship/201008041033497e584a2dc8e13f8cb9187c46b494584c.gif',7,'2010-08-04 02:33:49','2010-08-07 07:03:50'),(3,'泡泡网','','http://download.pcpop.com/Soft/323120.html','/images/friendship/201008041034453fff0fa0993583e963194d424957658c.gif',6,'2010-08-04 02:34:45','2010-08-07 07:03:09'),(5,'eNet下载','','http://download.enet.com.cn/html/968352010071301.html','/images/friendship/20100804103522871634be0f4f3b8ddf151169b1702abe.gif',5,'2010-08-04 02:35:23','2010-08-07 07:03:02'),(7,'IT168下载','','http://download.it168.com/298/308/125261/index.shtml','/images/friendship/20100804103556cbffde7d637eea8c84bf0a4492fdf161.gif',4,'2010-08-04 02:35:57','2010-08-07 07:02:55'),(9,'TOMPDA下载','','http://soft.tompda.com/software/28239/','/images/friendship/20100804103719932f73356b6bc5b44f8370d4dd62b5cb.gif',3,'2010-08-04 02:37:19','2010-08-07 07:02:46'),(11,'非凡软件站','','http://www.crsky.com/soft/22052.html','/images/friendship/20100804103750f6b8ce70d14080caacf1b8eb8daefe1e.gif',2,'2010-08-04 02:37:50','2010-08-07 07:02:38'),(13,'天网手机软件','','http://www.waptw.com/','/images/friendship/20100810160348b355f0c82edb2eb9e86b0f7a3bc45ff9.gif',1,'2010-08-07 07:00:40','2010-08-10 08:03:48');
/*!40000 ALTER TABLE `friendship_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:05
