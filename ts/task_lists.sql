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
-- Table structure for table `task_lists`
--

DROP TABLE IF EXISTS `task_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_desc` varchar(200) DEFAULT NULL COMMENT '任务简介',
  `task_name` varchar(50) DEFAULT NULL COMMENT '任务名',
  `task_url` varchar(100) DEFAULT NULL COMMENT '任务链接',
  `message` varchar(500) DEFAULT NULL COMMENT '站内信',
  `img_url` varchar(100) DEFAULT NULL COMMENT '任务名字图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_lists`
--

LOCK TABLES `task_lists` WRITE;
/*!40000 ALTER TABLE `task_lists` DISABLE KEYS */;
INSERT INTO `task_lists` VALUES (1,'亲爱的用户，完善你的个人资料，上传真实头像，即可完成“自我介绍”.更能让周边的朋友认识你，结交更多的好友。','自我介绍','/user_info/modify_detail_basic','亲爱的用户，完善你的个人资料，上传真实头像，即可完成“自我介绍”.更能让周边的朋友认识你，结交更多的好友。','/images/task_js.gif'),(2,'去有宝币的宝地浏览一下吧，你会有意想不到的收获哦。再试试报到、点评各一次任务就可完成，宝币来得就是这么容易。','第一桶金','/users/first_gold','去有宝币的宝地浏览一下吧，你会有意想不到的收获哦。再试试报到、点评，宝币就是来的这么容易。','/images/task_dytj.gif'),(3,'是否觉得单纯地报到、评论有点枯燥呢？去宝宝转试试你的手气吧！你可能是下一个5000万宝币的幸运儿呢！','小赌怡情','/sessions/tiger_flash','是否觉得单纯地报到、评论有点枯燥呢？去宝宝转试试你的手气吧！你可能是下一个5000万宝币的幸运儿呢！','/images/task_bbz.gif'),(4,'是时候开始经营属于自己的土地了！购买一块周边宝地并装修即可完成任务。坐收红利,体会当地主的乐趣。','初当地主','/users/nearest_biz','是时候开始经营属于自己的土地了！购买一块周边宝地，装修并发布信息，坐收红利,体会当地主的乐趣。','/images/task_diz.gif'),(5,'快去邀请站外好友加入吧！ 成功邀请1个好友将获得10000宝币的奖励，还可不劳而获得到家族成员的返利，真是一大美事！','建立家族','/invite_friends/show_view','快去邀请站外好友加入吧！ 成功邀请1个好友将获得10000宝币的奖励，还可不劳而获得到家族成员的返利，真是一大美事！','/images/task_yq.gif');
/*!40000 ALTER TABLE `task_lists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:26:38
