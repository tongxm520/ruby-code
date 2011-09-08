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
-- Table structure for table `ty_car_return_category_configs`
--

DROP TABLE IF EXISTS `ty_car_return_category_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ty_car_return_category_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ty_car_service_list_id` int(11) DEFAULT NULL COMMENT '服务列表项ID',
  `category_id` int(11) DEFAULT NULL COMMENT '针对天翼汽车服务列表返回的是数据还是分类标识',
  `layer_num` int(11) DEFAULT NULL COMMENT '单个大的分类需要显示几级子分类',
  `table_name` varchar(20) DEFAULT NULL COMMENT '分类表名',
  `seq` int(11) DEFAULT NULL COMMENT 'sort id',
  PRIMARY KEY (`id`),
  KEY `ty_car_service_list_id_key` (`ty_car_service_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='天翼汽车服务列表对应的分类配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ty_car_return_category_configs`
--

LOCK TABLES `ty_car_return_category_configs` WRITE;
/*!40000 ALTER TABLE `ty_car_return_category_configs` DISABLE KEYS */;
INSERT INTO `ty_car_return_category_configs` VALUES (1,0,1,1,NULL,NULL),(3,0,34,1,NULL,NULL),(5,0,47,1,NULL,NULL),(7,0,96,1,NULL,NULL),(9,0,148,1,NULL,NULL),(11,0,182,1,NULL,NULL),(13,0,199,1,NULL,NULL),(15,0,233,1,NULL,NULL),(17,0,241,1,NULL,NULL),(19,0,262,1,NULL,NULL),(21,0,425,1,NULL,NULL);
/*!40000 ALTER TABLE `ty_car_return_category_configs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:26:46
