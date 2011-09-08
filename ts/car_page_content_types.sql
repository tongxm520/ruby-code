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
-- Table structure for table `car_page_content_types`
--

DROP TABLE IF EXISTS `car_page_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_page_content_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `page_content_type_flg` int(11) DEFAULT NULL COMMENT '页面内容标识',
  `arg_name` varchar(100) DEFAULT NULL COMMENT '参数名称',
  `description` varchar(100) DEFAULT NULL COMMENT '页面内容描述',
  PRIMARY KEY (`id`),
  KEY `page_content_type_flg_index` (`page_content_type_flg`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='违章查询页面内容类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_page_content_types`
--

LOCK TABLES `car_page_content_types` WRITE;
/*!40000 ALTER TABLE `car_page_content_types` DISABLE KEYS */;
INSERT INTO `car_page_content_types` VALUES (1,1,'car_type','车辆类型，下拉列表'),(2,2,'car_card_pre','车牌号前缀， 下拉列表'),(3,3,'car_card_num','车牌号，一个文本输入框'),(4,4,'car_engine_num','发动机号,一个文本输入框'),(5,5,'vin','车辆识别代号，一个文本输入框'),(6,6,'file_no','档案编号，一个输入框'),(7,7,'start_time','起始时间，一个时间控件,传入时间字符串：2010-01-02'),(8,8,'end_time','结束时间，一个时间控件,传入时间字符串：2010-01-02'),(9,9,'car_frame_no','车架号，一个输入框'),(10,10,'code','验证码，一个输入框');
/*!40000 ALTER TABLE `car_page_content_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:23:24
