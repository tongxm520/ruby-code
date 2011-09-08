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
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_no` varchar(50) DEFAULT NULL COMMENT 'menu id_no',
  `department_id` int(50) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`id`),
  KEY `FK_menus` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (75,'NO32',1),(77,'NO02',1),(78,'NO03',1),(79,'NO04',1),(80,'NO05',1),(82,'NO07',1),(83,'NO08',1),(84,'NO09',1),(90,'NO15',1),(91,'NO16',1),(92,'NO17',1),(93,'NO18',1),(94,'NO20',1),(95,'NO21',1),(97,'NO23',1),(101,'NO26',1),(103,'NO28',1),(104,'NO29',1),(106,'NO31',1),(107,'NO32',1),(108,'NO28',1),(109,'NO33',1),(110,'NO34',1),(111,'NO35',1),(113,'NO37',1),(114,'NO38',1),(115,'NO39',1),(116,'NO40',1),(118,'NO05',8),(120,'NO31',12),(121,'NO16',13),(123,'NO33',15),(125,'NO41',17),(127,'NO38',6),(129,'NO42',1),(131,'NO42',19),(133,'NO20',6),(135,'NO37',6),(137,'NO35',21),(139,'NO43',1),(141,'NO43',15),(143,'NO33',6),(145,'NO43',6),(147,'NO32',6),(157,'NO41',1),(159,'NO44',1),(163,'NO42',6),(167,'NO45',1),(169,'NO45',6),(171,'NO46',1),(173,'NO47',1),(175,'NO48',1),(177,'NO43',25),(179,'NO48',25),(181,'NO46',25),(183,'NO09',25),(185,'NO46',27),(187,'NO43',27),(189,'NO48',27),(191,'NO09',27),(193,'NO35',27),(195,'NO02',27),(197,'NO03',27),(199,'NO23',27),(203,'NO49',1),(207,'NO50',1),(209,'NO50',27),(211,'NO51',1),(213,'NO51',27),(215,'NO52',1),(219,'NO52',29),(221,'NO33',29),(223,'NO42',29),(225,'NO46',31),(227,'NO43',31),(229,'NO48',31),(231,'NO09',31),(233,'NO35',31),(235,'NO02',31),(237,'NO03',31),(239,'NO23',31),(241,'NO50',31),(243,'NO51',31),(245,'NO34',33),(247,'NO42',31),(249,'NO53',1),(253,'NO53',29),(255,'NO54',1),(257,'NO54',27),(259,'NO55',1),(261,'NO56',1),(263,'NO57',1),(265,'NO55',27),(267,'NO56',27),(269,'NO57',27),(271,'NO58',1),(273,'NO59',1),(275,'NO59',27),(277,'NO60',1),(279,'NO60',5),(281,'NO60',6),(283,'NO60',27),(285,'NO60',31),(287,'NO59',35),(289,'NO61',1),(291,'NO61',29),(293,'NO23',37),(295,'NO61',27),(297,'NO37',27);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:20
