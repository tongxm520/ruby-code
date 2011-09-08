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
-- Table structure for table `user_to_user_messages`
--

DROP TABLE IF EXISTS `user_to_user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_to_user_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user` int(11) DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `created_on` datetime DEFAULT NULL,
  `notify_id` int(11) DEFAULT NULL COMMENT '消息类型',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `shop_trade_detail_id` int(11) DEFAULT '0' COMMENT '交易ID',
  `kw_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `from_user_key` (`from_user`),
  KEY `to_user_key` (`to_user`),
  KEY `notify_id_key` (`notify_id`),
  KEY `kw_flag_key` (`kw_flag`),
  KEY `shop_trade_detail_id_key` (`shop_trade_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3474797 DEFAULT CHARSET=utf8 COMMENT='用户给用户发消息';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!50003 SET @SAVE_SQL_MODE=@@SQL_MODE*/;

DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`test`@`188.188.1.%` */ /*!50003 TRIGGER `add_to_user_message` AFTER INSERT ON `user_to_user_messages` FOR EACH ROW BEGIN
insert into user_messages(user_id,from_user_id,notify_id,is_read,created_at,table_name,table_id) values(NEW.TO_USER,NEW.FROM_USER,NEW.NOTIFY_ID,0,NOW(),'user_to_user_messages',NEW.ID);
END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@SAVE_SQL_MODE*/;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 15:28:51
