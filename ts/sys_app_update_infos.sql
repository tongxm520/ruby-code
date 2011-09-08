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
-- Table structure for table `sys_app_update_infos`
--

DROP TABLE IF EXISTS `sys_app_update_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_app_update_infos` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime DEFAULT NULL,
  `appname` varchar(64) DEFAULT '',
  `from_version` varchar(64) DEFAULT '',
  `to_version` varchar(64) DEFAULT '',
  `build_id` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `md5` varchar(64) DEFAULT '',
  PRIMARY KEY (`row_id`),
  UNIQUE KEY `key1` (`appname`,`from_version`,`to_version`,`build_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_app_update_infos`
--

LOCK TABLES `sys_app_update_infos` WRITE;
/*!40000 ALTER TABLE `sys_app_update_infos` DISABLE KEYS */;
INSERT INTO `sys_app_update_infos` VALUES (1,'2009-09-29 13:48:47','aroundme','001.000.000','001.000.001',1000000,'update/android/YtAroundMe_1.0.001.apk','562bd10d5cb31efa3dd1865b991c8298'),(2,'2009-09-29 14:50:30','meeting','001.000.000','001.000.001',1000000,'update/android/YtMeeting_1.0.001.apk','d88bf71c4372d7e7da3f94301e39acd4'),(3,'2009-09-30 17:24:18','allapps','','',1000000,'update/yt_android_v2.3.1.apk','44b32ccd466692863665fb24483534ab'),(4,'2009-10-13 18:15:57','main','001.000.000','001.000.001',1000000,'update/android/YtMain_1.0.001.apk','db4210096a0fbe8e637dcc12589b8f4b'),(5,'2009-10-13 18:15:57','allapps','','',5000000,'update/yt_winmobile_v2.3.0.CAB','9075f903a473e58b5e1aee1bfd73b089'),(10,'2009-09-29 13:48:47','aroundme','001.000.000','001.000.001',2000000,'update/oms/YtAroundMe_1.0.001.apk','1eb6dfca1333120789b4653c19817595'),(11,'2009-09-29 14:50:30','meeting','001.000.000','001.000.001',2000000,'update/oms/YtMeeting_1.0.001.apk','cbbf64f0a7108546c9ea3e0ff913c292'),(12,'2009-09-30 17:24:18','allapps','','',2000000,'update/oms/installer_1.0.000.apk','48d51c1e562bbc28c521c910beedb7c2'),(13,'2009-10-13 18:15:57','main','001.000.000','001.000.001',2000000,'update/oms/YtMain_1.0.001.apk','2cf619f3c71adea731f6e364abfdaaa8'),(14,'2009-11-28 17:49:14','aroundme','001.000.001','001.000.002',1000000,'update/android/YtAroundMe_1.0.002.apk','d1cbe2a262e887ad5d22bcb194de81cb'),(15,'2009-11-28 17:49:14','meeting','001.000.001','001.000.002',1000000,'update/android/YtMeeting_1.0.002.apk','774fcb4ab142d89cd5414dc34fc9adbf'),(16,'2009-11-28 17:49:14','kare','001.000.000','001.000.001',1000000,'update/android/YtKare_1.0.001.apk','78ce9df2d3cce1d87b29d0e498a9ac18'),(17,'2009-11-28 17:49:14','discount','001.000.000','001.000.001',1000000,'update/android/Ytdiscount_1.0.001.apk','0081de72b0fa9d419f284d72b44feeba'),(18,'2009-11-28 17:49:14','cinema','001.000.000','001.000.001',1000000,'update/android/YtCinema_1.0.001.apk','1c005588cf119218a13de63c893e2b24'),(19,'2009-11-28 17:49:14','routing','001.000.000','001.000.001',1000000,'update/android/YtRouting_1.0.001.apk','de883ea0c56475309b52143d4e3e7bee'),(20,'2009-11-28 17:49:14','expo','001.000.000','001.000.001',1000000,'update/android/YtExpo2010_1.0.001.apk','a8dbf47e3fa4121de8d94dece56a2ba4'),(21,'2009-11-28 17:49:14','fun8g','001.000.000','001.000.001',1000000,'update/android/YtFun8G_1.0.001.apk','cef9c98b21af054fde5b3da17e2bb608'),(22,'2009-11-28 17:49:14','sameinterest','001.000.000','001.000.001',1000000,'update/android/YtSameInterest_1.0.001.apk','836f8195ac2cde6186a51e33ad9d0e6c'),(23,'2009-11-28 17:49:14','watercloset','001.000.000','001.000.001',1000000,'update/android/YtWatecloset_1.0.001.apk','41f8e4d00d1349556d0aa6de38f62eca'),(24,'2009-11-28 17:49:14','main','001.000.001','001.000.002',1000000,'update/android/YtMain_1.0.002.apk','f07922f7cf760275dcfccf62d6c3329a'),(25,'2009-11-28 18:23:01','aroundme','001.000.000','001.000.002',1000000,'update/android/YtAroundMe_1.0.002.apk','d1cbe2a262e887ad5d22bcb194de81cb'),(26,'2009-11-28 18:23:01','meeting','001.000.000','001.000.002',1000000,'update/android/YtMeeting_1.0.002.apk','774fcb4ab142d89cd5414dc34fc9adbf'),(27,'2009-11-28 18:23:01','main','001.000.000','001.000.002',1000000,'update/android/YtMain_1.0.002.apk','f07922f7cf760275dcfccf62d6c3329a'),(28,'2009-11-28 18:23:01','aroundme','001.000.000','001.000.002',2000000,'update/oms/YtAroundMe_1.0.002.apk','2e5d6789cbe1cb4bb96e6f90954c6c3d'),(29,'2009-11-28 18:23:01','meeting','001.000.000','001.000.002',2000000,'update/oms/YtMeeting_1.0.002.apk','94aafb0da12dbe1091333bcc20b910b7'),(30,'2009-11-28 18:23:01','main','001.000.000','001.000.002',2000000,'update/oms/YtMain_1.0.002.apk','a34851a1fbf83caec6eebc6690a19153'),(31,'2009-11-28 18:23:01','aroundme','001.000.001','001.000.002',2000000,'update/oms/YtAroundMe_1.0.002.apk','2e5d6789cbe1cb4bb96e6f90954c6c3d'),(32,'2009-11-28 18:23:01','meeting','001.000.001','001.000.002',2000000,'update/oms/YtMeeting_1.0.002.apk','94aafb0da12dbe1091333bcc20b910b7'),(33,'2009-11-28 18:23:01','main','001.000.001','001.000.002',2000000,'update/oms/YtMain_1.0.002.apk','a34851a1fbf83caec6eebc6690a19153'),(34,'2009-11-28 18:23:01','kare','001.000.000','001.000.001',2000000,'update/oms/YtKare_1.0.001.apk','1f32166a23eb6f7313097fe2db457150'),(35,'2009-11-28 18:23:01','discount','001.000.000','001.000.001',2000000,'update/oms/Ytdiscount_1.0.001.apk','e813f64e6d0b475365cabf8b5b9f6f50'),(36,'2009-11-28 18:23:01','cinema','001.000.000','001.000.001',2000000,'update/oms/YtCinema_1.0.001.apk','e04409c2881789eb6389bf12f45d39b0'),(37,'2009-11-28 18:23:01','routing','001.000.000','001.000.001',2000000,'update/oms/YtRouting_1.0.001.apk','02294f3f8031f49eb5daa3ad27163ac3'),(38,'2009-11-28 18:23:01','expo','001.000.000','001.000.001',2000000,'update/oms/YtExpo2010_1.0.001.apk','09b0e5656b0d3137700f1ae0f043713d'),(39,'2009-11-28 18:23:01','fun8g','001.000.000','001.000.001',2000000,'update/oms/YtFun8G_1.0.001.apk','62d37ddbe4006461db7889057b65e35a'),(40,'2009-11-28 18:23:01','sameinterest','001.000.000','001.000.001',2000000,'update/oms/YtSameInterest_1.0.001.apk','8da84de560df4ee3aead199dfcebc3d0'),(41,'2009-11-28 18:23:01','watercloset','001.000.000','001.000.001',2000000,'update/oms/YtWatecloset_1.0.001.apk','959c6922ee218248274cfdcb15ef0e6c'),(42,'2009-11-28 18:23:01','main','001.000.000','001.000.001',5000000,'update/mobile/yeetouch_1.0.001.cab','47d4ab80197a5364f0a7d616fca8bb65'),(43,'2009-12-30 16:23:01','allapps','','',8000000,'update/yt_symbian_v2.1.0.SIS','f34d7e8466ae35678331052c867d91f9'),(44,'2010-03-26 11:45:01','lephone','001.000.000','001.000.001',3000000,'update/j2me/installer_1.0.001.jar','64774197ac1fd4979c0f3c6a068d8ac9'),(45,'2010-06-14 00:15:01','allapps','','',9000000,'update/yeetouch_v2.0.pxl','d6e0452fa79a69832463e1e7c9377316'),(47,'2011-01-05 15:15:01','allapps','','',6100000,'update/yt_symbian_v2.1.0.SIS','f34d7e8466ae35678331052c867d91f9'),(49,'2011-01-05 15:15:01','allapps','','',6200000,'update/yt_symbian_V5_v2.3.0.SIS','0583dded0bd5ae9c71703253955555dd');
/*!40000 ALTER TABLE `sys_app_update_infos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:26:33
