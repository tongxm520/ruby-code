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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `crypted_password` varchar(40) DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL,
  `currentlong` float DEFAULT NULL,
  `currentlat` float DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  `user_img` varchar(100) DEFAULT NULL,
  `active_code` varchar(50) DEFAULT NULL,
  `is_actived` tinyint(1) DEFAULT NULL,
  `is_business` tinyint(1) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `hotcount` int(11) DEFAULT NULL,
  `replycount` int(11) DEFAULT NULL,
  `city_name` varchar(20) DEFAULT NULL,
  `last_login_ip` varchar(45) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `deviceid` varchar(100) DEFAULT NULL,
  `gold_sell` varchar(40) DEFAULT NULL COMMENT '鍟嗗?浣忓嚭鎾掔殑閲戝竵',
  `score` int(20) DEFAULT '0' COMMENT '积分',
  `gender` int(1) DEFAULT '2' COMMENT '0 女  1 男 2 保密',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `parent_id` int(11) DEFAULT '0',
  `from_deviceid` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT '0' COMMENT '0 正常 ， 1 金币帐户冻结  2 帐户冻结',
  `gold_point` int(20) DEFAULT '0' COMMENT '金币级别以下的金币点，每1万个金币点换取1个金币。用于计算下线返上来的金币计算',
  `gold_count` int(20) DEFAULT '0' COMMENT '金币数量',
  `login_time` datetime DEFAULT NULL COMMENT '本次登陆时间',
  `login_ip` varchar(30) DEFAULT NULL COMMENT '本次登陆ip',
  `last_login_time` datetime DEFAULT NULL COMMENT '上次登陆时间',
  `kw_flag` int(11) DEFAULT '0',
  `back_pwd` varchar(50) DEFAULT NULL COMMENT '记录找回密码的次数信息',
  `api_key_id` int(11) DEFAULT '0' COMMENT '记录注册时的来源KeyID,0为网站注册用户',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_email` (`email`),
  KEY `user_name_kw_flag` (`username`,`kw_flag`),
  KEY `currentlat_currentlong` (`currentlat`,`currentlong`),
  KEY `deviceid_key` (`deviceid`),
  KEY `email_key` (`email`),
  KEY `salt_key` (`salt`),
  KEY `score_key` (`score`),
  KEY `gold_count_key` (`gold_count`),
  KEY `city_id_index` (`city_id`),
  KEY `updated_at_index` (`updated_at`),
  KEY `parent_id_key` (`parent_id`),
  KEY `created_at_key` (`created_at`),
  KEY `kw_flag_index` (`kw_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=1286844 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!50003 SET @SAVE_SQL_MODE=@@SQL_MODE*/;

DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`test`@`188.188.1.%` */ /*!50003 TRIGGER `altrer_score_gold_count_for_friends` AFTER UPDATE ON `users` FOR EACH ROW BEGIN
if NEW.SCORE!=OLD.SCORE OR NEW.GOLD_COUNT!=OLD.GOLD_COUNT THEN
 UPDATE my_friends SET friend_score=NEW.score , friend_gold_count=NEW.gold_count where friend_id=NEW.id;
END IF;
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

-- Dump completed on 2011-09-08 15:28:49
