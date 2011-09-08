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
-- Table structure for table `pa_car_owner_supermarket_product_categories`
--

DROP TABLE IF EXISTS `pa_car_owner_supermarket_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pa_car_owner_supermarket_product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `invalid` int(11) DEFAULT '0' COMMENT '是否生效 0 有效 1 无效',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='车主商城产品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pa_car_owner_supermarket_product_categories`
--

LOCK TABLES `pa_car_owner_supermarket_product_categories` WRITE;
/*!40000 ALTER TABLE `pa_car_owner_supermarket_product_categories` DISABLE KEYS */;
INSERT INTO `pa_car_owner_supermarket_product_categories` VALUES (1,'dd23',1,'2011-04-11 08:30:26','2011-04-11 08:31:00'),(3,'123123',1,'2011-04-11 08:31:09','2011-04-11 08:31:13'),(5,'333333344',1,'2011-04-11 08:31:16','2011-04-11 08:32:49'),(7,'122',1,'2011-04-11 08:32:54','2011-04-11 09:31:37'),(9,'文具',1,'2011-04-11 09:31:51','2011-04-18 10:37:07'),(11,'饮料',1,'2011-04-11 09:32:05','2011-04-27 11:30:15'),(13,'请问额',1,'2011-04-11 10:35:16','2011-04-11 10:35:18'),(15,'服装',1,'2011-04-11 11:02:26','2011-04-27 08:32:55'),(17,'新分类',1,'2011-04-17 10:00:06','2011-04-26 13:56:43'),(19,'家装',1,'2011-04-27 08:32:31','2011-04-27 08:32:52'),(21,'服装',1,'2011-04-27 08:33:07','2011-04-27 11:30:14'),(23,'清洁',0,'2011-04-27 11:30:27','2011-04-27 11:30:27'),(25,'工具',0,'2011-04-27 11:30:36','2011-04-27 11:30:36'),(27,'外饰',0,'2011-04-27 11:30:48','2011-04-27 11:30:48'),(29,'内饰',0,'2011-04-27 11:30:57','2011-04-27 11:30:57');
/*!40000 ALTER TABLE `pa_car_owner_supermarket_product_categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:37
