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
-- Table structure for table `pa_managers`
--

DROP TABLE IF EXISTS `pa_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pa_managers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `pa_department_id` int(11) DEFAULT NULL COMMENT '所属部门id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='平安管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pa_managers`
--

LOCK TABLES `pa_managers` WRITE;
/*!40000 ALTER TABLE `pa_managers` DISABLE KEYS */;
INSERT INTO `pa_managers` VALUES (1,'pa','pa','2011-03-04 16:31:37','13472446647',1),(3,'lingfeng','38633529','2011-03-04 16:31:37','',NULL),(4,'洪广智','HONGGUANGZHI028','2011-05-09 02:40:05','',2),(6,'雷玉勤','leiyuqing','2011-05-09 02:41:20','',NULL),(7,'hanguo','hanguo','2011-05-31 02:16:06','13641957984',1),(9,'tm','tm','2011-06-08 09:19:26','18621909905',7),(11,'xiajinmiao','123456','2011-07-23 19:44:00','13916056694',1),(13,'weihaikuo','123456','2011-07-25 02:56:50','13671707709',1),(15,'chenhui','chenhui','2011-07-25 03:20:38','13818495585',1),(17,'tanguanyu','tanguanyu','2011-07-25 03:21:41','18621590803',1),(19,'tangli','tangli','2011-07-25 03:21:41','13681983119',1);
/*!40000 ALTER TABLE `pa_managers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:46
