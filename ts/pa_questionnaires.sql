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
-- Table structure for table `pa_questionnaires`
--

DROP TABLE IF EXISTS `pa_questionnaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pa_questionnaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `user_type1` int(6) DEFAULT NULL COMMENT '用户类型 未登陆  0不可见  1 可见',
  `user_type2` int(6) DEFAULT NULL COMMENT '用户类型 登陆未验证  0不可见  1 可见',
  `user_type3` int(6) DEFAULT NULL COMMENT '用户类型 验证非车险  0不可见  1 可见',
  `user_type4` int(6) DEFAULT NULL COMMENT '用户类型 车险  0不可见  1 可见',
  `url` varchar(100) DEFAULT NULL COMMENT '问卷链接',
  `start_date` datetime DEFAULT NULL COMMENT '开始日期',
  `end_date` datetime DEFAULT NULL COMMENT '结束日期',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更改时间',
  `isvalid` int(6) DEFAULT '0' COMMENT '0 有效  1 无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='平安网站问卷调查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pa_questionnaires`
--

LOCK TABLES `pa_questionnaires` WRITE;
/*!40000 ALTER TABLE `pa_questionnaires` DISABLE KEYS */;
INSERT INTO `pa_questionnaires` VALUES (1,'3123',0,0,0,0,'123','2011-03-16 08:00:00','2011-05-16 08:00:00','2011-04-12 08:57:48','2011-04-27 07:24:08',1),(3,'问卷问卷问卷2',0,1,1,1,'http://www.baidu.com','2011-03-17 08:00:00','2012-04-17 08:00:00','2011-04-17 03:43:12','2011-05-11 01:33:31',1),(5,'问卷3',0,1,1,1,'http://www.baidu.com','2011-03-17 16:00:00','2011-03-19 16:00:00','2011-04-17 04:15:26','2011-04-17 06:44:49',1),(7,'问卷4',0,1,1,1,'http://www.baidu.com','2011-03-17 16:00:00','2012-04-16 16:00:00','2011-04-17 04:16:02','2011-04-17 06:44:47',1),(9,'问卷5',0,1,1,1,'http://www.baidu.com','2011-03-17 00:00:00','2011-05-16 00:00:00','2011-04-17 04:19:36','2011-04-28 03:43:44',0),(11,'问卷6',0,0,1,1,'http://www.baidu.com','2011-02-17 08:00:00','2011-05-16 08:00:00','2011-04-17 04:20:29','2011-04-28 03:42:48',1),(13,'问卷7',0,1,1,1,'http://www.baidu.com','2011-01-17 16:00:00','2011-04-16 16:00:00','2011-04-17 04:21:02','2011-04-17 06:44:41',1),(15,'问卷8',0,1,1,1,'http://www.baidu.com','2011-03-17 08:00:00','2011-08-16 08:00:00','2011-04-17 04:23:43','2011-04-28 03:45:03',0),(17,'fasdddddddd',NULL,NULL,NULL,NULL,'afds',NULL,NULL,'2011-04-17 06:46:15','2011-04-17 06:47:23',1),(19,'问卷调查1',0,0,0,0,'http://www.baidu.com','2011-04-13 16:00:00','2011-04-29 16:00:00','2011-04-17 06:49:09','2011-04-27 07:25:47',0),(21,'asdfasdf',0,1,1,1,'http://www.sina.com','2011-04-13 16:00:00','2011-05-19 16:00:00','2011-04-17 07:22:39','2011-04-17 07:34:15',0),(23,'3333',5555,6666,7777,8888,'4444','2011-11-10 00:00:00','2011-11-11 00:00:00','2011-04-17 09:14:48','2011-04-17 09:16:16',0),(25,'sdfdfdf',1,1,1,1,'http://testpa.58haohao.com/questionnaire/edit/25','2011-04-15 21:58:50','2011-04-18 21:58:50','2011-04-18 05:58:50','2011-04-18 05:59:38',0),(27,'gggg',1,1,1,1,'http:www.baidu.com','2011-04-11 05:58:50','2011-04-19 05:58:50','2011-04-18 06:04:47','2011-04-18 06:14:08',0),(29,'1沃尔特',NULL,NULL,NULL,NULL,'w',NULL,NULL,'2011-04-27 07:26:54','2011-04-27 07:26:54',0),(31,'威尔二万人',0,0,0,0,'http://veky.org','2011-04-21 16:00:00','2011-04-29 16:00:00','2011-04-27 07:27:46','2011-04-27 07:27:46',0);
/*!40000 ALTER TABLE `pa_questionnaires` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:48
