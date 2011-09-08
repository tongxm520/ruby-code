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
-- Table structure for table `car_add_services`
--

DROP TABLE IF EXISTS `car_add_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_add_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `car_add_service_city_id` int(11) DEFAULT NULL COMMENT '支持城市ID的城市ID',
  `project_name` varchar(200) DEFAULT NULL COMMENT '服务项目名称',
  `user_group_name` varchar(100) DEFAULT NULL COMMENT '用户组名',
  `seq` int(11) DEFAULT NULL COMMENT '排序号',
  `is_valid` tinyint(1) DEFAULT '0' COMMENT '状态：1为正常，0为无效',
  PRIMARY KEY (`id`),
  KEY `seq_index` (`seq`),
  KEY `car_add_service_city_id_index` (`car_add_service_city_id`),
  KEY `is_valid_index` (`is_valid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='增值服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_add_services`
--

LOCK TABLES `car_add_services` WRITE;
/*!40000 ALTER TABLE `car_add_services` DISABLE KEYS */;
INSERT INTO `car_add_services` VALUES (1,2,'免费非事故救援','所有客户',1,1),(3,2,'三代办（代办车辆年审、代收理赔材料、代办缴纳违章罚款）','VIP客户',1,1),(5,2,'客户信息网上收集抽奖项目','所有客户',1,1),(7,2,'理赔跟踪进度反馈项目','所有客户',1,1),(9,2,'代收理赔材料项目','所有客户',1,1),(11,2,'代步车','上年度0出险客户',1,1),(13,2,'酒后代驾','VIP客户',1,1),(15,2,'灾害天气服务','所有客户',1,1),(17,2,'查勘人性化关怀项目','所有客户',1,1),(19,2,'门店免费停车服务','所有客户',1,1),(21,3,'免费非事故救援','所有客户',1,1),(23,3,'代收理赔资料项目','所有客户',1,1),(27,3,'查勘人性化关怀项目送水','所有客户',1,1),(29,3,'代步车项目','试点车行客户',1,1),(31,3,'团体VIP客户赠送保险','团体VIP客户',1,1),(33,3,'重点行业防灾培训或论坛','团体VIP客户',1,1),(35,3,'优质客户酒后代驾','个人VIP客户以及市区新渠道优质客户',1,1),(37,3,'代办违章服务','个人VIP客户以及新渠道优质客户',1,1),(39,3,'交强险客户赠送静电贴','所有客户',1,1);
/*!40000 ALTER TABLE `car_add_services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:23:17
