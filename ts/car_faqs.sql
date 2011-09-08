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
-- Table structure for table `car_faqs`
--

DROP TABLE IF EXISTS `car_faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `question` varchar(200) DEFAULT NULL COMMENT '问题',
  `answer` text COMMENT '答案',
  `seq` int(11) DEFAULT NULL COMMENT '排序号',
  `is_valid` tinyint(1) DEFAULT '0' COMMENT '状态：1为正常，0为无效',
  PRIMARY KEY (`id`),
  KEY `seq_index` (`seq`),
  KEY `is_valid_index` (`is_valid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='FAQ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_faqs`
--

LOCK TABLES `car_faqs` WRITE;
/*!40000 ALTER TABLE `car_faqs` DISABLE KEYS */;
INSERT INTO `car_faqs` VALUES (1,'我想要进行车牌批改，要怎么办理呢？','为方便客户，我公司现已为被保险人开通电话批改车牌服务（也可选择去柜面办理）。如果您是被保险人本人，只需要拨打  95512，通过身份验证后就可以进行车牌批改。',1,1),(3,'我需要提供哪些资料，才可以通过电话办理车牌批改呢？','您需要提供保单号码, 核对被保险人姓名、车架号、发动机号任意一项。相关信息与系统一致即可办理。',1,1),(5,'如果不进行车牌批改会有什么后果？','根据车险条款中您需履行的如实告知义务，当您新车上牌或者车辆过户车牌变更后，需要及时进行车牌批改；如果不及时进行批改，有可能影响您的保险权益。',1,1),(7,'1.4.除了电话批改车牌，还有哪些方式可以进行车牌批改呢?','您除了可以通过95512电话申请车牌批改，还可以填写批改申请书到我司柜面进行办理。',1,1),(9,'您除了可以通过95512电话申请车牌批改，还可以填写批改申请书到我司柜面进行办理。','电话批改相对比较方便快捷，您可以足不出户，只要拨入电话核对身份信息就可以提出批改申请。而柜面申请除了要求到指定地点外，还需要填写书面批改申请。',1,1),(11,'电话可以进行哪些批改？','目前只能进行车牌批改服务。',1,1),(13,'要办理其他的批改业务如何办理？','您可以带齐资料到我司柜面填写相关批改申请就可以办理。',1,1),(15,'到柜面办理车牌批改需要哪些材料？','如果到柜面需要填写批改申请书、提供行驶证复印件。',1,1),(17,'如果到柜面需要填写批改申请书、提供行驶证复印件。','批改结束后将有一条确认短信到您承保时提供给我司的手机号，请您核对；如果您需要，我们还可以把纸质车牌批单邮寄给您，但是需要您承担相应的邮寄费用。',1,1),(19,'我如何拿到批单呢？','如果您需要批单，您可以到我司柜面领取，您也可以现在告诉我们地址及电话，我们可以帮您邮寄过去，但需要您承担邮寄费用；（邮寄费用根据当地机构合作快递公司收费标准）。',1,1),(21,'领取车牌批单需要支付费用吗？','如果直接到柜面领取车牌批单是不需要收费的，如果您是采取邮寄方式需要支付邮寄费用；（邮寄费用根据当地机构合作快递公司收费标准）。',1,1),(23,'如果发现批改的车牌号码不对怎么办？（如果车牌批改出错了怎么办？）','如果经核对，发现车牌批改错误，您可以致电95512，我们将为您修正系统记录；',1,1),(25,'车牌批改错误是否影响我的理赔呢？','仅车牌批改错误不会影响您的理赔。我公司在理赔中会参考系统中的车架号及发动机号核对车辆身份进行理赔。',1,1),(27,'我可以一次电话批改多张保单车牌吗？','只有被保险人相同您才可以同时批改，其它情况请您到我司柜面办理；',1,1),(29,'我可以委托他人电话办理电话车牌批改业务吗？','我们只接受被保险人直接办理，如果委托他人办理，需要到我司柜面办理，同时代办人员需要提供您的委托书、批改申请书、保单正本及行驶证复印件；',1,1);
/*!40000 ALTER TABLE `car_faqs` ENABLE KEYS */;
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
