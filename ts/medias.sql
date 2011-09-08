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
-- Table structure for table `medias`
--

DROP TABLE IF EXISTS `medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medias` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '列表项标题',
  `typ` int(11) DEFAULT NULL COMMENT '类型',
  `description` text COMMENT '类型描述',
  `sort_id` int(11) DEFAULT NULL COMMENT '排序ID',
  `image` varchar(100) DEFAULT NULL COMMENT 'WEB图片',
  `icon` varchar(100) DEFAULT NULL COMMENT '手机图片',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  `login_display` varchar(100) DEFAULT NULL COMMENT '登陆显示',
  `pwd_display` varchar(100) DEFAULT NULL COMMENT '密码框提示',
  `suffix` varchar(20) DEFAULT NULL COMMENT '邮箱后缀',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='邀请好友列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medias`
--

LOCK TABLES `medias` WRITE;
/*!40000 ALTER TABLE `medias` DISABLE KEYS */;
INSERT INTO `medias` VALUES (1,'MSN',1,'MSN',1,'/test.png','/test.png',NULL,NULL,'MSN账号','MSN密码',NULL),(2,'163',2,'163',NULL,'/test.png','/test.png',NULL,NULL,'163账号','163密码',NULL),(3,'126',3,'126',NULL,'/test.png','/test.png',NULL,NULL,'126账号','126密码',NULL),(4,'yeah',4,'yeah',NULL,'/test.png','/test.png',NULL,NULL,'yeah账号','yeah密码',NULL),(5,'hotmail',5,'hotmail',NULL,'/test.png','/test.png',NULL,NULL,'hotmail账号','hotmail密码',NULL),(6,'live.cn',6,'live.cn',NULL,'/test.png','/test.png',NULL,NULL,'live.cn账号','live.cn密码',NULL),(7,'sina',7,'sina',NULL,'/test.png','/test.png',NULL,NULL,'sina账号','sina密码',NULL),(8,'sohu',8,'sohu',NULL,'/test.png','/test.png',NULL,NULL,'sohu账号','sohu密码',NULL),(9,'tom',9,'tom',NULL,'/test.png','/test.png',NULL,NULL,'tom账号','tom密码',NULL);
/*!40000 ALTER TABLE `medias` ENABLE KEYS */;
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
