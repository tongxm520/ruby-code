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
-- Table structure for table `sys_phone_brand`
--

DROP TABLE IF EXISTS `sys_phone_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_phone_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `name_cn` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='可下载的手机品牌列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_phone_brand`
--

LOCK TABLES `sys_phone_brand` WRITE;
/*!40000 ALTER TABLE `sys_phone_brand` DISABLE KEYS */;
INSERT INTO `sys_phone_brand` VALUES (1,'IPhone','','IPhone','/images/mobile/brand/iphone.gif',0,'2010-06-13 07:02:10','2010-07-06 10:43:20',1),(2,'Nokia','','Nokia','/images/mobile/brand/nokia.gif',0,'2010-06-04 17:10:26','2010-07-06 10:43:33',2),(3,'BenQ','','BenQ','/images/mobile/brand/benq.gif',0,'2010-06-04 17:10:26','2010-07-06 12:27:52',20),(4,'CECT','','CECT','/images/mobile/brand/cect.gif',0,'2010-06-04 17:10:26','2010-07-06 12:27:05',18),(5,'Dopod','','Dopod','/images/mobile/brand/dopod.gif',0,'2010-06-04 17:10:26','2010-07-06 10:53:36',6),(6,'gloflish','','gloflish','/images/mobile/brand/gloflish.gif',0,'2010-06-04 17:10:26','2010-07-06 12:28:25',23),(7,'Gsmart','','Gsmart','/images/mobile/brand/gsmart.gif',0,'2010-06-04 17:10:26','2010-07-06 12:28:42',24),(8,'HKC','','HKC','/images/mobile/brand/hkc.gif',0,'2010-06-04 17:10:26','2010-07-06 12:28:46',25),(9,'HP','','HP','/images/mobile/brand/hp.gif',0,'2010-06-04 17:10:26','2010-07-06 12:29:03',26),(10,'i-mate','','i-mate','/images/mobile/brand/i-mate.gif',0,'2010-06-04 17:10:26','2010-07-06 12:29:05',27),(11,'IDO','','IDO','/images/mobile/brand/ido.gif',0,'2010-06-04 17:10:26','2010-07-06 12:29:18',28),(12,'lenovo','','lenovo','/images/mobile/brand/lenovo.gif',0,'2010-06-04 17:10:26','2010-07-06 12:22:37',8),(13,'Mio','','Mio','/images/mobile/brand/mio.gif',0,'2010-06-04 17:10:26','2010-07-06 12:29:19',29),(14,'Motorola','','Motorola','/images/mobile/brand/motorola.gif',0,'2010-06-04 17:10:26','2010-07-06 10:53:24',5),(15,'NEC','','NEC','/images/mobile/brand/nec.gif',0,'2010-06-04 17:10:26','2010-07-06 12:26:40',17),(17,'O2','','O2','/images/mobile/brand/o2.gif',0,'2010-06-04 17:10:26','2010-07-06 12:29:39',30),(18,'XDA','','XDA','/images/mobile/brand/xda.gif',0,'2010-06-04 17:10:26','2010-07-06 12:29:46',31),(19,'OKWAP','','OKWAP','/images/mobile/brand/okwap.gif',0,'2010-06-04 17:10:26','2010-07-06 12:27:26',19),(20,'Palm','','Palm','/images/mobile/brand/palm.gif',0,'2010-06-04 17:10:26','2010-07-06 12:29:53',32),(21,'Panasonic','','Panasonic','/images/mobile/brand/panasonic.gif',0,'2010-06-04 17:10:26','2010-07-06 12:26:30',16),(22,'Samsung','','Samsung','/images/mobile/brand/samsung.gif',0,'2010-06-04 17:10:26','2010-07-06 10:52:57',3),(23,'Sony','','Sony','/images/mobile/brand/sony.gif',0,'2010-06-04 17:10:26','2010-07-06 12:24:22',13),(24,'UTSTARCOM','','UTSTARCOM','/images/mobile/brand/utstarcom.gif',0,'2010-06-04 17:10:26','2010-07-06 12:25:51',16),(25,'Philips','','Philips','/images/mobile/brand/philips.gif',0,'2010-06-13 14:10:26','2010-07-06 12:23:46',11),(27,'HTC','','HTC','/images/mobile/brand/htc.gif',0,'2010-06-13 14:10:26','2010-07-06 10:54:21',7),(28,'LG','','LG','/images/mobile/brand/lg.gif',0,'2010-06-13 14:10:26','2010-07-06 10:53:15',4),(29,'HUAWei','','HUAWei','/images/mobile/brand/huawei.gif',0,'2010-06-13 14:10:26','2010-07-06 12:25:22',15),(30,'ZTE','','ZTE','/images/mobile/brand/zte.gif',0,'2010-06-13 14:10:26','2010-07-06 12:25:09',14),(31,'GIGA','','GIGA','/images/mobile/brand/giga.gif',0,'2010-06-13 14:10:26','2010-07-06 12:28:20',22),(32,'Coolpad','','Coolpad','/images/mobile/brand/coolpad.gif',0,'2010-06-13 14:10:26','2010-07-06 12:23:04',9),(33,'Bird','','Bird','/images/mobile/brand/bird.gif',0,'2010-06-13 14:10:26','2010-07-06 12:23:22',10),(35,'Amoi','','Amoi','/images/mobile/brand/amoi.gif',0,'2010-06-04 17:10:26','2010-07-06 12:23:58',12),(36,'ASUS','','ASUS','/images/mobile/brand/asus.gif',0,'2010-06-04 17:10:26','2010-07-06 12:28:11',21);
/*!40000 ALTER TABLE `sys_phone_brand` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:26:35
