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
-- Table structure for table `zport`
--

DROP TABLE IF EXISTS `zport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zport` (
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `poi_id` int(11) NOT NULL COMMENT '获取积分的表记录Id',
  `points` decimal(32,0) DEFAULT NULL,
  `available_points` decimal(32,0) DEFAULT NULL,
  `prod_line_name` varchar(10) DEFAULT NULL COMMENT '产品线名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zport`
--

LOCK TABLES `zport` WRITE;
/*!40000 ALTER TABLE `zport` DISABLE KEYS */;
INSERT INTO `zport` VALUES (0,41,'10','10','maapin'),(0,1459,'10','10','maapin'),(0,1595,'10','10','maapin'),(0,20969,'80','80','maapin'),(0,23321,'10','10','maapin'),(0,23807,'10','10','maapin'),(0,23899,'10','10','maapin'),(114,1459,'70','70','maapin'),(1286229,37,'130','130','maapin'),(1286229,41,'70','70','maapin'),(1286229,47,'10','10','maapin'),(1286229,87,'60','60','maapin'),(1286229,1139,'70','70','maapin'),(1286229,1285,'80','80','maapin'),(1286229,1287,'10','10','maapin'),(1286229,1293,'10','10','maapin'),(1286229,1455,'60','60','maapin'),(1286229,1459,'410','410','maapin'),(1286229,1477,'70','70','maapin'),(1286229,1913,'60','60','maapin'),(1286229,13497,'10','10','maapin'),(1286229,20421,'10','10','maapin'),(1286229,20969,'40','40','maapin'),(1286229,22197,'10','10','maapin'),(1286229,23321,'-20','-20','maapin'),(1286229,23821,'10','10','maapin'),(1286229,32837,'10','10','maapin'),(1286229,54599,'10','10','maapin'),(1286229,72177,'10','10','maapin'),(1286229,93099,'10','10','maapin'),(1286307,1595,'30','30','maapin'),(1286307,8845,'20','20','maapin'),(1286307,20969,'70','70','maapin'),(1286307,23169,'10','10','maapin'),(1286307,23321,'20','20','maapin'),(1286307,23799,'10','10','maapin'),(1286307,40641,'20','20','maapin'),(1286307,40745,'10','10','maapin'),(1286435,23799,'20','20','maapin'),(1286435,23907,'10','10','maapin'),(1286435,23915,'30','30','maapin'),(1286435,40641,'20','20','maapin'),(1286435,40745,'10','10','maapin'),(1286435,43897,'20','20','maapin'),(1286435,72177,'80','80','maapin');
/*!40000 ALTER TABLE `zport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:29:05
