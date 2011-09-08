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
-- Table structure for table `sns_party_lists_tmp`
--

DROP TABLE IF EXISTS `sns_party_lists_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sns_party_lists_tmp` (
  `id` int(11) NOT NULL DEFAULT '0',
  `sns_name` varchar(20) DEFAULT 'NULL',
  `site` varchar(50) DEFAULT 'NULL',
  `api_site` varchar(50) DEFAULT 'NULL',
  `request_token_path` varchar(50) DEFAULT 'NULL',
  `access_token_path` varchar(50) DEFAULT 'NULL',
  `authorize_path` varchar(50) DEFAULT 'NULL',
  `text_type` int(11) DEFAULT NULL COMMENT '开心网-所申请系列的编号',
  `api_key` varchar(50) DEFAULT 'NULL' COMMENT '申请应用产生的api_key,开心网的site id，-唯一标识你的网站',
  `api_key_secret` varchar(50) DEFAULT 'NULL' COMMENT '申请应用产生的api_key_secret，开心网的feed key，-用于生成数字签名',
  `oauth_validate` int(11) DEFAULT NULL COMMENT '是否oauth验证,1:需要',
  `logo_url` varchar(100) DEFAULT 'NULL',
  `syn_ok_url` varchar(100) DEFAULT 'NULL' COMMENT '同步后图像',
  `post_site` varchar(50) DEFAULT 'NULL',
  `flg` int(11) DEFAULT NULL COMMENT '0 失效  1 正常',
  `platform_show` varchar(100) DEFAULT 'NULL' COMMENT '终端SNS列表显示',
  `syn_down_url` varchar(100) DEFAULT 'NULL' COMMENT '未设置同步图片'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sns_party_lists_tmp`
--

LOCK TABLES `sns_party_lists_tmp` WRITE;
/*!40000 ALTER TABLE `sns_party_lists_tmp` DISABLE KEYS */;
INSERT INTO `sns_party_lists_tmp` VALUES (1,'douban','http://www.douban.com','http://api.douban.com','/service/auth/request_token','/service/auth/access_token','/service/auth/authorize',NULL,'0d7d9ac0777003d62878d04166500b82','10e3a12d471711dd',1,'/images/sns_logo/douban.1275274036.gif','/images/sns_logo/douban_on.png','/miniblog/saying',1,'同步到豆瓣网','/images/sns_logo/douban_down.png'),(2,'sina','http://api.t.sina.com.cn','http://api.t.sina.com.cn','/oauth/request_token','/oauth/access_token','/oauth/authorize',NULL,'1459478053','21edc1ef6034f4e3888cbefce299b5f8',1,'/images/sns_logo/sina.1275274036.gif','/images/sns_logo/sina_on.png','/statuses/update.xml',1,'同步到新浪网','/images/sns_logo/sina_down.png'),(3,'kaixin','http://wap.kaixin001.com/',NULL,NULL,NULL,NULL,366,'100001732','d469eed38a84db438f97f4f5b8bfaeb8',0,'/images/sns_logo/kaixin001.1275274036.gif','/images/sns_logo/kaixin_on.png',NULL,1,'同步到开心网','/images/sns_logo/kaixin_down.png'),(4,'renren','http://3g.renren.com/',NULL,NULL,NULL,NULL,113288,'46316648de194cfd811511793cf973bf','8ddd27b854384af48f904b6e9afbc32f',0,'/images/sns_logo/renren.1275274036.gif','/images/sns_logo/renren_on.png',NULL,1,'同步到人人网','/images/sns_logo/renren_down.png'),(5,'qq','https://open.t.qq.com','https://open.t.qq.com','/cgi-bin/request_token','/cgi-bin/access_token','/cgi-bin/authorize',NULL,'360b3af533e544e180b0c8501e4edba0','2a957ff0ee674642d7c5cb2dd2daf51d',1,'/images/sns_logo/qq.png','/images/sns_logo/weiboicon32.png','/statuses/update.xml',0,'同步到腾讯网',NULL);
/*!40000 ALTER TABLE `sns_party_lists_tmp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:26:28
