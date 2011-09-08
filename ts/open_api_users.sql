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
-- Table structure for table `open_api_users`
--

DROP TABLE IF EXISTS `open_api_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_api_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open_api_user_type_id` int(11) NOT NULL,
  `open_api_user_info_id` int(11) NOT NULL,
  `open_at` datetime NOT NULL DEFAULT '2011-05-23 09:39:36' COMMENT '何时开通',
  `expire_at` datetime NOT NULL COMMENT '何时过期',
  `isvalid` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `client_id` int(11) NOT NULL COMMENT '认证用户id',
  `encrypt_private_key` varchar(255) NOT NULL COMMENT '加密私钥',
  PRIMARY KEY (`id`),
  KEY `index_open_api_users_on_open_api_user_type_id` (`open_api_user_type_id`),
  KEY `index_open_api_users_on_open_api_user_info_id` (`open_api_user_info_id`),
  KEY `index_open_api_users_on_open_at` (`open_at`),
  KEY `index_open_api_users_on_expire_at` (`expire_at`),
  KEY `index_open_api_users_on_isvalid` (`isvalid`),
  KEY `index_open_api_users_on_client_id` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='认证用户列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_api_users`
--

LOCK TABLES `open_api_users` WRITE;
/*!40000 ALTER TABLE `open_api_users` DISABLE KEYS */;
INSERT INTO `open_api_users` VALUES (2,1,4,'2011-05-26 12:49:29','2011-06-09 12:49:30',1,NULL,'2011-05-26 12:49:30','2011-05-26 12:49:30',10000,'75NtatyWtEJkXGSe24fzVKRdQkk6+G0k2Urir7F6q5U1AVMXh7MVoQ==\n'),(4,3,6,'2011-05-27 04:23:54','2011-06-10 04:23:54',1,NULL,'2011-05-27 04:23:54','2011-05-27 04:59:34',10001,'sFFrUZiwQ/0CZxN+wEZdvr5RHtgmGcn6va83446/DLHL/nEPyfGdQw==\n'),(5,3,7,'2011-08-05 08:56:10','2011-08-19 08:56:10',1,NULL,'2011-08-05 08:56:10','2011-08-05 08:56:10',10002,'VoTorkO0V1KlkBzK9hdP676Tgno9gx1pH2SjjaxftcsJjKaPaDSJIw==\n');
/*!40000 ALTER TABLE `open_api_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:37
