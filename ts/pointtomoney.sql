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
-- Table structure for table `pointtomoney`
--

DROP TABLE IF EXISTS `pointtomoney`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pointtomoney` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 自增',
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `source` varchar(20) DEFAULT NULL COMMENT '信息来源,手机号或Ip',
  `pointusered` int(11) DEFAULT NULL COMMENT '消耗积分',
  `amountget` int(11) DEFAULT '0' COMMENT '换取金额',
  `jdflg` varchar(1) DEFAULT NULL COMMENT '借贷标志  0,积分收入   1,积分消费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='用户积分兑换明细表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pointtomoney`
--

LOCK TABLES `pointtomoney` WRITE;
/*!40000 ALTER TABLE `pointtomoney` DISABLE KEYS */;
INSERT INTO `pointtomoney` VALUES (79,79,'61.152.108.140',500,0,'0'),(81,79,'61.152.108.140',500,0,'0'),(83,79,'211.160.163.38',500,0,'0'),(85,1129,'211.160.163.38',50000,0,'0');
/*!40000 ALTER TABLE `pointtomoney` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:58
