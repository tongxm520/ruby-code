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
-- Table structure for table `brand_ranks`
--

DROP TABLE IF EXISTS `brand_ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌id',
  `rank_img` varchar(100) DEFAULT NULL COMMENT '李宁头衔图片',
  `score` int(11) DEFAULT NULL COMMENT '最高积分',
  `lowest_score` int(11) DEFAULT NULL COMMENT '最低积分',
  `rankname` varchar(40) DEFAULT NULL COMMENT '头衔名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='用户品牌级别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_ranks`
--

LOCK TABLES `brand_ranks` WRITE;
/*!40000 ALTER TABLE `brand_ranks` DISABLE KEYS */;
INSERT INTO `brand_ranks` VALUES (1,3,'/images/rank/zl.gif',999,0,'主管'),(3,3,'/images/rank/jll.gif',9999,1000,'总经理'),(5,21,'/images/rank/gslz.gif',999,0,'上海区主管'),(7,21,'/images/rank/zxds.gif',9999,1000,'中华区总裁'),(9,5,'/images/rank/gslz.gif',999,0,'上海区主管'),(11,5,'/images/rank/zxds.gif',9999,1000,'中华区总裁'),(13,7,'/images/rank/gslz.gif',999,0,'上海区主管'),(15,7,'/images/rank/zxds.gif',9999,1000,'中华区总裁'),(17,9,'/images/rank/gslz.gif',999,0,'上海区主管'),(19,9,'/images/rank/zxds.gif',9999,1000,'中华区总裁'),(21,11,'/images/rank/gslz.gif',999,0,'上海区主管'),(23,11,'/images/rank/zxds.gif',9999,1000,'中华区总裁'),(25,13,'/images/rank/gslz.gif',999,0,'上海区主管'),(27,13,'/images/rank/zxds.gif',9999,1000,'中华区总裁'),(29,15,'/images/rank/gslz.gif',999,0,'上海区主管'),(31,15,'/images/rank/zxds.gif',9999,1000,'中华区总裁'),(33,17,'/images/rank/gslz.gif',999,0,'上海区主管'),(35,17,'/images/rank/zxds.gif',9999,1000,'中华区总裁'),(37,19,'/images/rank/gslz.gif',999,0,'上海区主管'),(39,19,'/images/rank/zxds.gif',9999,1000,'中华区总裁');
/*!40000 ALTER TABLE `brand_ranks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:23:15
