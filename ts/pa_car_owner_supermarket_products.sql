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
-- Table structure for table `pa_car_owner_supermarket_products`
--

DROP TABLE IF EXISTS `pa_car_owner_supermarket_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pa_car_owner_supermarket_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isvalid` int(11) DEFAULT '0' COMMENT '是否生效  0 有效 1 无效',
  `title` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `original_cost` float DEFAULT NULL COMMENT '原价',
  `current_cost` float DEFAULT NULL COMMENT '现价',
  `img` varchar(300) DEFAULT NULL COMMENT '图片',
  `pa_car_owner_supermarket_product_category_id` int(11) DEFAULT NULL COMMENT '分类',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL COMMENT '产品链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='车主商城商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pa_car_owner_supermarket_products`
--

LOCK TABLES `pa_car_owner_supermarket_products` WRITE;
/*!40000 ALTER TABLE `pa_car_owner_supermarket_products` DISABLE KEYS */;
INSERT INTO `pa_car_owner_supermarket_products` VALUES (27,0,'Napolex 米奇前遮阳挡WD-187—E',31,25.9,'/images/pa_ad/201104281421359cae1cdc444310c5904120ba9ec240f2.gif',29,'2011-04-27 11:35:23','2011-04-28 06:21:36','1110187'),(29,0,'TYPER 提花DH-008B 通用型五件套车用脚垫 米色—E',119,109,'/images/pa_ad/20110428142157c5c0838228bed6a73d03ea9ae531cae6.gif',29,'2011-04-27 11:36:19','2011-04-28 06:21:57','1110212'),(31,0,'欧诺思 OUNOUN AIR100 车载家居两用空气净化氧吧 黄色—E',69,55,'/images/pa_ad/201104281422451f7c6f8bb2da1577175cd274844ea91c.gif',29,'2011-04-27 11:37:16','2011-04-28 06:22:46','1110213'),(33,0,'爱车屋 车用骨头枕2个入I-100A—E',49,40.9,'/images/pa_ad/2011042814230408890af18f31b350b9cf1ce9270109a9.gif',29,'2011-04-27 11:37:58','2011-04-28 06:23:04','1110231'),(35,0,'Napolex 米奇组合牌照框WD-130d—E',74,65,'/images/pa_ad/20110428142329e527f7cf0707a1ddaf2e14a9a45020a5.gif',27,'2011-04-27 11:39:47','2011-04-28 06:23:30','1110189'),(37,0,'NAPOLEX 维尼置物袋PH-37 白色、黄色—E',65,49.9,'/images/pa_ad/20110428142347ed973fb0e8bb33fc9b069bf13472bc90.gif',27,'2011-04-27 11:40:23','2011-04-28 06:23:48','1110197'),(39,0,'博世（BOSCH) 神翼无骨雨刷 单支装 通用型号 21寸—E',99,88,'/images/pa_ad/201104281424199c268ae325cc5db30081c7c93b13ff69.gif',27,'2011-04-27 11:42:50','2011-04-28 06:24:19','1110209'),(41,0,'欧诺思 OUNOUN AIR1000 车载家居两用空气净化加湿器 蓝色—E',99,88.8,'/images/pa_ad/2011042814245232cdaf3a061de9b1e54e8b77d7c4d19d.gif',27,'2011-04-27 11:43:31','2011-04-28 06:24:53','1110220'),(43,0,'风王 6075-胎压表—E',39,33.5,'/images/pa_ad/2011042814251476370171c282d55f817711691df8e8c3.gif',25,'2011-04-27 11:44:04','2011-04-28 06:25:15','1110191'),(45,0,'风王 2107-照明+胎压充气泵—E',98,95.9,'/images/pa_ad/20110428142539abd58023e16c747ec7a85c3dbc274420.gif',25,'2011-04-27 11:44:30','2011-04-28 06:25:40','1110192'),(47,0,'奥舒尔 车充 USB+车载手机万能充电器 快速充电 B22—E',31.9,26.8,'/images/pa_ad/2011042814261642b4c7c63e59bca063ea11c9a756864c.gif',25,'2011-04-27 11:45:02','2011-04-28 06:26:16','1110229'),(49,0,'风王 6131-Y干湿两用吸尘器-E',68,56,'/images/pa_ad/20110428142634827a81887271c5abc1fa52b455fac733.gif',25,'2011-04-27 11:46:52','2011-04-28 06:26:34','1110199'),(51,0,'霍尼韦尔（Honeywell）PH4967高效机油滤清器 橙色—E',39,35.9,'/images/pa_ad/201104281427095e728b5f4f56e713fe618782baee4850.gif',23,'2011-04-27 11:49:26','2011-04-28 06:27:10','1110201'),(53,0,'GREAT LIFE GC-020超细纤维伸缩蜡拖 白色—E',35,34,'/images/pa_ad/20110428142732d9adbdc54399e3ef165c781832a49ef5.gif',23,'2011-04-27 11:49:51','2011-04-28 06:27:33','1110205'),(55,0,'龟牌 (Turtle Wax)划痕蜡G-237（500ML）细腻, 均匀, 安全, 瞬间找回新车的感觉—E',34.9,31.9,'/images/pa_ad/20110428142756da975775bd1c23de1b1b893ec568bdaa.gif',23,'2011-04-27 11:50:18','2011-04-28 06:27:57','1110217'),(57,0,'7CF 1+1钻石持久固蜡 包装规格：200G—E',34,26.9,'/images/pa_ad/201104281428076821bcc87a7e59ab8f5ec45e176b26ee.gif',23,'2011-04-27 11:50:46','2011-04-28 06:28:08','1110226');
/*!40000 ALTER TABLE `pa_car_owner_supermarket_products` ENABLE KEYS */;
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
