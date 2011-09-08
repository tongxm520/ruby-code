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
-- Table structure for table `car_page_content_type_mappings`
--

DROP TABLE IF EXISTS `car_page_content_type_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_page_content_type_mappings` (
  `id` int(11) NOT NULL COMMENT '主键',
  `car_wz_city_id` int(11) DEFAULT NULL COMMENT '城市ID',
  `car_page_content_type_id` int(11) DEFAULT NULL COMMENT '页面内容标识ID',
  `op` int(11) DEFAULT '1' COMMENT '标识是否选中',
  `hint` varchar(100) DEFAULT NULL,
  KEY `id_index` (`id`),
  KEY `car_wz_city_id_index` (`car_wz_city_id`),
  KEY `car_page_content_type_id_index` (`car_page_content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='违章查询页面内容与城市对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_page_content_type_mappings`
--

LOCK TABLES `car_page_content_type_mappings` WRITE;
/*!40000 ALTER TABLE `car_page_content_type_mappings` DISABLE KEYS */;
INSERT INTO `car_page_content_type_mappings` VALUES (1,1,2,1,'必填'),(2,1,3,1,'必填'),(3,1,4,1,'必填'),(4,2,1,1,'必填'),(5,2,2,1,'必填'),(6,2,3,1,'必填'),(7,2,4,1,'必填'),(8,2,10,1,'输入验证码'),(9,3,2,1,'必填'),(10,3,3,1,'必填'),(11,3,5,1,'必填'),(12,4,1,1,'必填'),(13,4,2,1,'必填'),(14,4,3,1,'必填'),(15,4,9,1,'必填后4位'),(16,5,1,1,'必填'),(17,5,2,1,'必填'),(18,5,3,1,'必填'),(19,6,2,1,'必填'),(20,6,3,1,'必填'),(21,7,1,1,'必填'),(22,7,2,1,'必填'),(23,7,3,1,'必填'),(24,7,5,1,'必填后6位'),(25,8,1,1,'必填'),(26,8,2,1,'必填'),(27,8,3,1,'必填'),(28,8,5,1,'必填后3位'),(29,9,1,1,'必填'),(30,9,2,1,'必填'),(31,9,3,1,'必填'),(32,9,4,1,'必填后4位'),(33,10,1,1,'必填'),(34,10,2,1,'必填'),(35,10,3,1,'必填'),(36,10,5,1,'必填后6位'),(37,11,1,1,'必填'),(38,11,2,1,'必填'),(39,11,3,1,'必填'),(40,11,9,1,'必填'),(41,12,2,1,'必填'),(42,12,3,1,'必填'),(43,13,1,1,'必填'),(44,13,2,1,'必填'),(45,13,3,1,'必填'),(46,14,1,1,'必填'),(47,14,2,1,'必填'),(48,14,3,1,'必填'),(49,14,5,1,'必填'),(50,15,1,1,'必填'),(51,15,2,1,'必填'),(52,15,3,1,'必填'),(53,15,4,1,'必填后4位'),(54,16,1,1,'必填'),(55,16,2,1,'必填'),(56,16,3,1,'必填'),(57,17,2,1,'必填'),(58,17,3,1,'必填'),(59,18,1,1,'必填'),(60,18,2,1,'必填'),(61,18,3,1,'必填'),(62,18,5,1,'必填后4位'),(63,19,1,1,'必填'),(64,19,2,1,'必填'),(65,19,3,1,'必填'),(66,20,1,1,'必填'),(67,20,2,1,'必填'),(68,20,3,1,'必填'),(69,20,9,1,'必填后6位'),(70,21,1,1,'必填'),(71,21,2,1,'必填'),(72,21,3,1,'必填'),(73,21,4,1,'必填'),(74,21,9,1,'必填'),(75,22,2,1,'必填'),(76,22,3,1,'必填'),(77,23,2,1,'必填'),(78,23,3,1,'必填');
/*!40000 ALTER TABLE `car_page_content_type_mappings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:23:19
