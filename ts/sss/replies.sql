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
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text,
  `table_name` varchar(50) NOT NULL,
  `table_id` bigint(20) DEFAULT NULL,
  `owner` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `roar_type` int(2) DEFAULT '0' COMMENT '0点评   1签到',
  `kw_flag` int(11) DEFAULT '0',
  `user_lat` double DEFAULT NULL,
  `user_lon` double DEFAULT NULL,
  `biz_lat` double DEFAULT NULL,
  `biz_lon` double DEFAULT NULL,
  `grade` int(11) DEFAULT '10' COMMENT '点评级别',
  `leve` int(11) DEFAULT '1' COMMENT '置顶级别',
  `check_flg` int(11) DEFAULT '1' COMMENT 'å®¡æ ¸æ ‡è®° 1æœªå®¡æ ¸ 0å®¡æ ¸é€šè¿‡ 2å®¡æ ¸ä¸é€šè¿‡ 3åˆ é™¤ 4ç½®ä¸ºæ— æ•ˆ',
  `img` varchar(100) DEFAULT NULL COMMENT '新鲜事的图片',
  PRIMARY KEY (`id`),
  KEY `table_name_tabid_created_at` (`table_name`,`table_id`,`created_at`,`kw_flag`),
  KEY `table_name_owner_created_at` (`table_name`,`owner`,`created_at`,`kw_flag`),
  KEY `owner_index` (`owner`),
  KEY `created_at_index` (`created_at`),
  KEY `user_lat_lon_index` (`user_lat`,`user_lon`),
  KEY `biz_lat_lon_index` (`biz_lat`,`biz_lon`),
  KEY `table_id_key` (`table_id`),
  KEY `kw_flag_key` (`kw_flag`),
  KEY `updated_at_index` (`updated_at`),
  KEY `leve_key` (`leve`),
  KEY `check_flg` (`check_flg`),
  KEY `level_created_at_index` (`leve`,`created_at`),
  KEY `biz_lat_index` (`biz_lat`),
  KEY `biz_lon_index` (`biz_lon`),
  KEY `user_lat_index` (`user_lat`),
  KEY `table_name_index` (`table_name`),
  KEY `user_lon_index` (`user_lon`)
) ENGINE=InnoDB AUTO_INCREMENT=3441635 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 15:28:48
