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
-- Table structure for table `sysAppDesc`
--

DROP TABLE IF EXISTS `sysAppDesc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysAppDesc` (
  `ID` int(11) DEFAULT NULL,
  `description` blob,
  `language` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysAppDesc`
--

LOCK TABLES `sysAppDesc` WRITE;
/*!40000 ALTER TABLE `sysAppDesc` DISABLE KEYS */;
INSERT INTO `sysAppDesc` VALUES (1,'本产品让您在3G移动通讯环境下，随时可通过手机定位，获取自身位置信息，查询自身周边的各类信息点，进而做到该信息点的信息查询、交流、评论、转发、共享等众多交互式操作，让您来点评，享受互动的乐趣！',''),(2,'买东西是一定要有折扣的！所以我们为您推出了能随时搜索自己周边各类商家的折扣信息服务。让您足不出户，便可对周边打折资讯了如指掌，钱不就省下来了吗？！',''),(3,'俗话说人有三急，诺大城市招牌林立，要是真遇上内急，想立刻找到一座公厕还真不是容易的事。本产品专为你随时搜索到周边的公厕而创，不怕一万，就怕万一嘛。',''),(4,'又要有大片上映了，快把您身边的电影院都搜出来吧？哪家影院离我最近？排片表、影片介绍，网友点评等等...这一切最及时有用的信息快到这里来看吧。',''),(5,'本产品可以使您在搜索到中意的聚会地点后，立即方便的转发给自己的好友,好友可以直接打开约会地图查询地址，还可以为您的朋友设定往约会的路线等等，约会后您和朋友们用手机还能发表自己对该地点的评论哦！',''),(6,'知道目的地，却不知道如何去吗？步行、开车还是公交，本产品为您规划最适合的路线！线路精准、导航优化、数据全面，是您外出的必备工具！',''),(7,'您想知道现在位置周边发生的热点事件吗？这里能够满足您对身边不断发生大事小情的好奇心，也许你正站在新闻的中心呢！',''),(8,'本产品为您和您的亲友提供移动位置服务。您可以通过密码验证后，查询自己时刻关心的亲人所在位置。再也不用为老人因为听不见铃声、不接电话和孩子的淘气而担心了，对自己的孩子、自己的长辈、残疾人的细致关爱从此开始！',''),(9,'基于真实位置的交友服务产品。帮助您查询离自己所处位置一定距离内的聊友，迅速找到与自己兴趣相投的聊友交流，将位置与爱好有机结合起来为您服务。单聊、群聊总相宜，与同一爱好的朋友们聊天，大家快快约好去玩吧',''),(10,'特别为2010年上海世博会推出的导航服务。面对占地5.28平方公里的世博会园区，您可以方便的通过自己手机随时查询世博会众多场馆地理位置、展览介绍、路线导航、实时新闻等等，边参观边发表点评感想，轻松玩转世博。',''),(11,'周边宝典--宝宝转游戏已升级到2.1版，请到苹果官方网站的应用商店升级周边宝典，或者在周边宝典官方网站(http://www.atditu.com)下载周边宝典应用升级包！','');
/*!40000 ALTER TABLE `sysAppDesc` ENABLE KEYS */;
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
