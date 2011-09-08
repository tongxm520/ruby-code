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
-- Table structure for table `car_locations`
--

DROP TABLE IF EXISTS `car_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `car_location_city_id` int(11) DEFAULT NULL COMMENT '城市ID',
  `name` varchar(100) DEFAULT NULL COMMENT '商店名称',
  `location` varchar(200) DEFAULT NULL COMMENT '地址',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `zip_code` varchar(20) DEFAULT NULL COMMENT '邮编',
  `is_valid` tinyint(1) DEFAULT '0' COMMENT '状态：1为正常，0为无效',
  PRIMARY KEY (`id`),
  KEY `car_location_city_id_index` (`car_location_city_id`),
  KEY `is_valid_index` (`is_valid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='车险服务网点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_locations`
--

LOCK TABLES `car_locations` WRITE;
/*!40000 ALTER TABLE `car_locations` DISABLE KEYS */;
INSERT INTO `car_locations` VALUES (1,1,'上海分公司车险理赔门店','常熟路8号2F门店','62493964','20004',1),(3,1,'金山支公司','金山石化龙胜路58号海鸥大厦4楼','57281712','200540',1),(5,1,'南汇支公司','南汇惠南镇人民东路3388号浦发银行5F','58027777（客户服务室）','201300',1),(7,1,'崇明支公司','崇明新崇南路29号','69693446、69695350','202150',1),(9,1,'嘉定支公司','嘉定博乐南路158号1001室','69524890','201800',1),(11,2,'广东分公司','广州市体育东路160号平安大厦27，28楼','020-4008866338','510620',1),(13,2,'广州市都市华庭理赔门店','广州市天河北路368号都市华庭首层02铺','020-38782255','510620',1),(15,2,'广州市芳村理赔门店','广州市浣花路109号东鹏德宝商务中心一楼（花鸟市场侧对面）','020-81600161、8160016','510375',1),(17,2,'花都支公司','广州市花都区花城路34号首层/二层','020-36835102','518000',1);
/*!40000 ALTER TABLE `car_locations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:23:17
