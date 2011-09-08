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
-- Table structure for table `trip_infos`
--

DROP TABLE IF EXISTS `trip_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT 'chu xing infos name',
  `description` text COMMENT 'chu xing infos description',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at_key` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='chu xing infos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_infos`
--

LOCK TABLES `trip_infos` WRITE;
/*!40000 ALTER TABLE `trip_infos` DISABLE KEYS */;
INSERT INTO `trip_infos` VALUES (1,'G56 杭瑞高速（九景段）','因下雪湖口，单幅双向通行，7座以上的车子和运输危险品车辆不能上高速。','2011-01-19 03:00:00'),(3,'G56 杭瑞高速（澎湖段）','因下雪湖口，单幅双向通行，7座以上的车子和运输危险品车辆不能上高速。\n','2011-01-19 03:00:00'),(5,'G70 福银高速（昌九段）','通远至九江方向因交通事故有堵车现象，通远往南昌方向因下雪有堵车的现象。\n','2011-01-19 03:00:00'),(7,'G60 沪昆高速（梨温段）','全线正常','2011-01-19 03:00:00'),(9,'G60 沪瑞高速（温厚段）','全线正常','2011-01-19 03:00:00'),(11,'G60 沪昆高速（昌樟段）','全线正常','2011-01-19 03:00:00'),(13,'G70 福银高速（温沙段）','全线正常                                                                                                                                                                            ','2011-01-19 03:00:00'),(15,'G70 福银高速（乐温段）','全线正常','2011-01-19 03:00:00'),(17,'G60 沪昆高速（昌金段）','全线正常','2011-01-19 03:00:00'),(19,'S50 泰井高速','全线正常','2011-01-19 03:00:00'),(21,'G72 泉南高速（石吉段）','全线正常','2011-01-19 03:00:00'),(23,'S69 樟吉高速（昌泰）','全线正常','2011-01-19 03:00:00'),(25,'G45 大广高速（泰赣段）','全线正常','2011-01-19 03:00:00'),(27,'G45 大广高速（赣定段）','全线正常','2011-01-19 03:00:00'),(29,'G6011 西外环','有下雪现象。','2011-01-19 03:00:00'),(31,'G35 济广高速（景鹰段）','有下雪现象。','2011-01-19 03:00:00'),(33,'G35 济广高速  （鹰瑞段）','全线正常','2011-01-19 03:00:00'),(35,'G56 景婺黄','景婺黄(常）高速公路德兴收费所进、出路口，从2009年8月22日16时整至2011年6月30日零时整实行封闭施工。','2011-01-19 03:00:00'),(37,'G45 大广高速（武吉段）','修水至铜鼓桥面快车道封闭，不影响通行但有下雪现象。','2011-01-19 03:00:00'),(39,'S66 赣韶高速（康大段）','全线正常','2011-01-19 03:00:00'),(41,'G76厦蓉高速（瑞赣段）','全线正常','2011-01-19 03:00:00'),(43,'S4503 赣州绕城高速（赣康段）','全线正常','2011-01-19 03:00:00'),(45,'G56 九瑞高速','瑞昌、狮子收费站可以上下高速，南阳收费站可以下高速。工程车可以在高速上行驶。有下雪现象。','2011-01-19 03:00:00'),(47,'206国道','206国道鹰潭境内路已经恢复通车，只限2米以下车子通行，新桥正在建设当中，预计年底建成。','2011-01-19 03:00:00'),(49,'320国道','正常','2011-01-19 03:00:00'),(51,'316国道','正常','2011-01-19 03:00:00'),(53,'319国道','从2010年10月9日起，萍乡市上栗县清溪至上栗段K881+100——K897+300封闭维修，时间至2010年11月底结束。','2011-01-19 03:00:00');
/*!40000 ALTER TABLE `trip_infos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:26:44
