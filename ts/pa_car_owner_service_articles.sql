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
-- Table structure for table `pa_car_owner_service_articles`
--

DROP TABLE IF EXISTS `pa_car_owner_service_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pa_car_owner_service_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `isvalid` int(6) DEFAULT '0' COMMENT '0 有效  1 无效',
  `summary` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='车主服务消息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pa_car_owner_service_articles`
--

LOCK TABLES `pa_car_owner_service_articles` WRITE;
/*!40000 ALTER TABLE `pa_car_owner_service_articles` DISABLE KEYS */;
INSERT INTO `pa_car_owner_service_articles` VALUES (1,'免费道路救援服务111','<p>平安车险V<span style=\"color: rgb(255, 0, 0);\">IP客户和通过电话、网络购买平安车险客户，在保单有效期内，可免费销售道</span>路救援服务，不限次数</p>','2011-03-24 07:55:37','2011-04-26 16:39:42',1,NULL),(3,'313123','3233','2011-04-11 08:34:09','2011-04-11 08:34:18',1,NULL),(5,'111222','222','2011-04-11 08:34:15','2011-04-11 08:34:19',1,NULL),(7,'aaa','<p>d<span style=\"color: rgb(241, 194, 50);\">d</span>d</p>','2011-04-23 07:07:53','2011-04-24 02:59:15',1,NULL),(9,'免费道路救援服务','<p>平安车险VIP客户和通过电话、网络购买平安商业车险客户，在保单有效期内，可免费享受道路救援服务，不限次数。</p>','2011-04-26 16:43:33','2011-04-26 16:43:33',0,'平安车险VIP客户和通过电话、网络购买平安商业车险客户，在保单有效期内，可免费享受道路救援服务，不限次数。'),(11,'万元之内一天赔付','<p>平安车险提供7*24小时理赔电话服务，承诺1万元以内的车险责任事故，只要资料齐全，一个工作日内即可完成赔付。</p>','2011-04-26 16:44:49','2011-04-26 16:44:49',0,'平安车险提供7*24小时理赔电话服务，承诺1万元以内的车险责任事故，只要资料齐全，一个工作日内即可完成赔付。');
/*!40000 ALTER TABLE `pa_car_owner_service_articles` ENABLE KEYS */;
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
