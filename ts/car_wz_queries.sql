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
-- Table structure for table `car_wz_queries`
--

DROP TABLE IF EXISTS `car_wz_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_wz_queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `car_wz_city_id` int(11) DEFAULT NULL COMMENT '车辆违章查询的城市ID',
  `url` varchar(200) DEFAULT NULL COMMENT '进入到各个站点的URL',
  `form_name` varchar(50) DEFAULT NULL COMMENT 'form的名称',
  `form_seq` int(11) DEFAULT '0' COMMENT 'form在网页上第几个, 0为第一个',
  `args` varchar(255) DEFAULT NULL COMMENT '需要提交的参数集',
  `reg_n` varchar(200) DEFAULT NULL COMMENT '匹配无结果的正则',
  `reg_y` varchar(200) DEFAULT NULL COMMENT '匹配有结果的正则',
  `op_flag` int(11) DEFAULT NULL COMMENT '操作标识，需要特殊处理的用此来分辨，0为正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='违章查询请求表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_wz_queries`
--

LOCK TABLES `car_wz_queries` WRITE;
/*!40000 ALTER TABLE `car_wz_queries` DISABLE KEYS */;
INSERT INTO `car_wz_queries` VALUES (1,2,'http://www.shjtaq.com/zwfg/sgcx.asp','',0,'carnumber,type1,fdjh','','',0),(3,1,'http://www.bjjtgl.gov.cn/portals/0/weifachaxun/wfchaxun.htm','weifa',1,'sf,carno,fdjh','','',0),(5,5,'http://www.gdgajj.com/cx/wzss/wzss.do','wzssForm',1,'jc,hphm,hpzl,lxdh','','',0),(7,3,'http://www.tjits.cn/wfcx/vehiclelist.asp','frm_vehicle',0,'lei,provice,txtVehicleNo','','',0),(9,4,'http://www.cqjg.gov.cn/DriverFind.html','fromtwo',1,'LicenseTxt,VIN','','',0);
/*!40000 ALTER TABLE `car_wz_queries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:23:32
