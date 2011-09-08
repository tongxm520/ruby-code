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
-- Table structure for table `filter_keylocations`
--

DROP TABLE IF EXISTS `filter_keylocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter_keylocations` (
  `id` int(11) DEFAULT NULL,
  `location_name` varchar(80) DEFAULT NULL,
  `comp_type` tinyint(4) DEFAULT NULL COMMENT '0 模糊匹配 1准确匹配',
  KEY `name_key` (`location_name`),
  KEY `type_key` (`comp_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对这个表中的地方不能进行操作';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_keylocations`
--

LOCK TABLES `filter_keylocations` WRITE;
/*!40000 ALTER TABLE `filter_keylocations` DISABLE KEYS */;
INSERT INTO `filter_keylocations` VALUES (1,'中共',0),(2,'党校',0),(3,'天安门',1),(4,'太庙',1),(5,'人民大会堂金色大厅',1),(6,'人民英雄纪念碑',1),(7,'人民广场',1),(8,'端门',1),(9,'社稷坛',1),(10,'天坛公园',1),(11,'上海市人民政府第十办公室',1),(12,'北京市人民政府稽察特派员公署办公室',1),(13,'派出所',0),(14,'天坛公园',1),(15,'上海市人民政府第十办公室',1),(16,'北京市人民政府稽察特派员公署办公室',1),(17,'北京市宣武区人民政府外事办公室',1),(18,'中央国家机关党校',1),(19,'中国致公党中央委员会',1),(20,'中央电视台',1),(21,'中央社会主义学院',1),(22,'中央北京市委党校',1),(23,'中共中央对外联络部',1),(24,'中央国家机关会计人员继续教育定点培训单位龙河路',1),(25,'中共中央党校函授学院中央国家机关分园丰台学区',1),(26,'民进中央大厦',1),(27,'中华人民共和国农业部',1),(28,'中华人民共和国司法部',1),(29,'中华人民共和国商务部',1),(30,'中华人民共和国外交部',1),(31,'中华人民共和国文化部',1),(32,'中华人民共和国民政部',1),(33,'中华人民共和国监察部',1),(34,'中华人民共和国财政部',1),(35,'中华人民共和国公安部办公厅',1),(36,'中华人民共和国人力资源和社会保障部',1),(37,'中华人民共和国科学技术部',1),(38,'中华人民共和国交通运输部',1);
/*!40000 ALTER TABLE `filter_keylocations` ENABLE KEYS */;
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
