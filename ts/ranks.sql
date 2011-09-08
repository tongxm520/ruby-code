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
-- Table structure for table `ranks`
--

DROP TABLE IF EXISTS `ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '名称',
  `grade` int(10) NOT NULL COMMENT '等级',
  `lowest_score` int(20) NOT NULL COMMENT '最低积分',
  `hightest_score` int(20) NOT NULL COMMENT '最高积分',
  `description` varchar(100) DEFAULT NULL COMMENT '描述字段',
  `img` varchar(100) DEFAULT NULL COMMENT '头衔图片',
  PRIMARY KEY (`id`),
  KEY `low_hight` (`lowest_score`,`hightest_score`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='头衔';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranks`
--

LOCK TABLES `ranks` WRITE;
/*!40000 ALTER TABLE `ranks` DISABLE KEYS */;
INSERT INTO `ranks` VALUES (1,'无业游民',1,0,199,NULL,'/images/rank/wyym.gif'),(2,'试用期员工',2,200,499,NULL,'/images/rank/syqyg.gif'),(3,'助理',3,500,1499,NULL,'/images/rank/zl.gif'),(4,'专员',4,1500,3499,NULL,'/images/rank/zyy.gif'),(5,'主任',5,3500,6999,NULL,'/images/rank/zrr.gif'),(6,'经理',6,7000,29999,NULL,'/images/rank/jll.gif'),(7,'副总监',7,30000,49999,NULL,'/images/rank/fjz.gif'),(8,'总监',8,50000,149999,NULL,'/images/rank/zj.gif'),(9,'事业部副总',9,150000,399999,NULL,'/images/rank/sybfz.gif'),(10,'事业部老总',10,400000,999999,NULL,'/images/rank/syblz.gif'),(11,'公司副总',11,1000000,2199999,NULL,'/images/rank/gsfz.gif'),(12,'公司老总',12,2200000,2249999,NULL,'/images/rank/gslz.gif'),(13,'执行董事',13,2250000,7999999,NULL,'/images/rank/zxds.gif'),(14,'董事局主席',14,8000000,17999999,NULL,'/images/rank/zx.gif'),(15,'托拉斯主席',15,18000000,49999999,NULL,'/images/rank/tlszx.gif'),(16,'大财阀',16,50000000,100000000,NULL,'/images/rank/dcf.gif');
/*!40000 ALTER TABLE `ranks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:25:16
