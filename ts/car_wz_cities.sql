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
-- Table structure for table `car_wz_cities`
--

DROP TABLE IF EXISTS `car_wz_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_wz_cities` (
  `id` int(11) NOT NULL COMMENT '主键',
  `city_id` int(11) DEFAULT NULL COMMENT '城市ID',
  `seq` int(11) DEFAULT NULL COMMENT '排序号',
  `is_valid` tinyint(1) DEFAULT '0' COMMENT '状态：1为正常，0为无效',
  `api2_flg` int(11) DEFAULT '0' COMMENT '1为api2',
  `api1_flg` int(11) DEFAULT '0' COMMENT '1为api',
  `klass` varchar(100) DEFAULT NULL,
  KEY `id_index` (`id`),
  KEY `seq_index` (`seq`),
  KEY `city_id_index` (`city_id`),
  KEY `api2_flg_index` (`api2_flg`),
  KEY `api1_flg_index` (`api1_flg`),
  KEY `is_valid_index` (`is_valid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆违章查询的城市表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_wz_cities`
--

LOCK TABLES `car_wz_cities` WRITE;
/*!40000 ALTER TABLE `car_wz_cities` DISABLE KEYS */;
INSERT INTO `car_wz_cities` VALUES (1,1,1,1,1,0,'BeijingWz'),(2,2,2,1,1,0,'ShanghaiWz'),(3,4,3,1,1,0,'ChongqingWz'),(4,20,4,1,1,0,'GuangdongWz'),(5,74,5,1,1,0,'DalianWz'),(6,347,6,1,1,0,'BaojiWz'),(7,126,7,1,1,0,'HuzhouWz'),(8,128,8,1,1,0,'JinhuaWz'),(9,109,9,1,1,0,'NanjingWz'),(10,123,10,1,1,0,'NingboWz'),(11,345,11,1,1,0,'XianWz'),(12,191,12,1,1,0,'JiaozuoWz'),(13,75,13,1,1,0,'AnshanWz'),(14,176,14,1,1,0,'YantaiWz'),(15,112,15,1,1,0,'ChangzhouWz'),(16,5,16,1,1,0,'HebeiWz'),(17,84,17,1,1,0,'LiaoyangWz'),(18,114,18,1,1,0,'NantongWz'),(19,225,19,1,1,0,'HengyangWz'),(20,167,20,1,1,0,'YichunWz'),(21,125,21,1,1,0,'JiaxingWz'),(22,195,22,1,1,0,'PuyangWz'),(23,198,23,1,1,0,'SanmenxiaWz');
/*!40000 ALTER TABLE `car_wz_cities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:23:32
