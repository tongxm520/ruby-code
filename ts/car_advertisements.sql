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
-- Table structure for table `car_advertisements`
--

DROP TABLE IF EXISTS `car_advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_advertisements` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '广告标题',
  `description` text COMMENT '广告描述',
  `is_valid` tinyint(1) DEFAULT '0' COMMENT '状态：1为正常，0为无效',
  `img` varchar(100) DEFAULT NULL COMMENT '广告图片',
  `url` varchar(100) DEFAULT NULL COMMENT '广告URL',
  `show_type` int(11) DEFAULT NULL COMMENT '点击后展示的方式，1为点进入显示详情，2为终端打开给定的URL',
  `created_at` datetime DEFAULT NULL COMMENT '发布时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `is_valid_key` (`is_valid`),
  KEY `created_at_key` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='车宝典广告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_advertisements`
--

LOCK TABLES `car_advertisements` WRITE;
/*!40000 ALTER TABLE `car_advertisements` DISABLE KEYS */;
INSERT INTO `car_advertisements` VALUES (1,'私家车商业险多省15%','活动时间：现在起至2011年1月31日\r\n活动详情：\r\n    参与方式：\r\n        只要您是私家车主，全程体验网上车险即可参与油卡抽奖：100元油卡 每天抽出50名 ！\r\n        （本活动河南、浙江、上海地区暂不参与，敬请谅解）\r\n\r\n    开奖说明：\r\n        活动时间内，客户提交投保确认信息后，将收到系统自动发出的短信提示，告知是否中奖。\r\n        注：同一客户在同一个月内只能参与一次抽奖。\r\n        中奖名单将同时公布在www.pingan.com网站上，敬请留意。\r\n\r\n    补充说明：\r\n       ·请留下您的真实信息，以便中奖通知、中奖资格确认；\r\n       ·平安将有专人通知获奖者，并核对信息资料，信息虚假、错误，将取消获奖资格；\r\n       ·当期活动结束后，油卡将在一个月内寄送，由此产生的个人所得税，由获奖者承担；\r\n       ·本活动提供的所有油卡均为中石化加油卡，以下地区由于中石化未联网，油卡无法使用，请中奖客户自行处理，敬请谅解：黑龙江、吉林、辽宁、内蒙、西藏、新疆、青海、甘苏、陕西、四川、台湾、香港、澳门；\r\n       ·活动主办方保留“更换等值礼品”的权利。\r\n\r\n    特别说明：国家法定节假日期间，电话咨询服务、奖品配送服务将顺延，但您仍然可以通过网络参与活动，在节假日之后，我们将在最短的时间内继续为您提供服务。不便之处，敬请谅解。',0,'','',1,'2011-01-10 08:00:00','2011-05-26 07:55:18'),(3,'意外险春节特惠大给利','* 无担保 - 无需任何抵押、无需任何担保，您的信用就是最好的贷款通行证\n* 放款快 - 资料齐全，最快1天放款，更有独特的远程审批模式，让您只需上门1次，即可获得贷款\n* 期限长 - 可自由选择12个月、18个月、24个月、36个月还款期限，最长可达3年\n* 用途广 - 买车、装修、旅游、进修等更多贷款用途\n* 轻松还 - 以贷款5万元、贷款期限3年为例，月均贷款利息仅167元！\n（仅供参考，最终以银行审核为准）',0,'','',1,'2011-01-10 08:00:00','2011-04-18 03:14:33'),(5,'平安随行即将推向广大用户','平安保险车主宝典即将推向广大用户\r\n享受平安车主宝典的亲切服务。 ',0,NULL,NULL,1,'2011-02-17 07:37:01','2011-05-26 07:53:50'),(7,'平安随行上线有礼，多重惊喜等你赢','',1,NULL,'http://testwap.atditu.com/pa_activity/index',2,'2011-01-10 08:00:00','2011-04-18 03:14:33'),(9,'test nomarl','very good',1,NULL,'',1,'2011-01-10 08:00:00','2011-04-18 03:14:33'),(11,NULL,NULL,0,NULL,NULL,2,'2011-06-20 08:00:00','2011-06-21 08:45:02'),(13,'平安随行上线有礼，多重惊喜等你赢','',1,NULL,'http://wap.atditu.com/pa_activity/index',2,'2011-06-20 08:00:00','2011-06-21 05:40:48'),(15,'特色','斯蒂芬',0,NULL,'http://looosdf',1,'2011-06-21 05:44:07','2011-06-21 08:39:07'),(17,'eric_test','eric',0,NULL,'',1,'2011-06-21 08:45:38','2011-08-05 02:26:17'),(21,'竞猜8月上海牌照均价，分享万元油卡','车牌贵，油价涨，怎么办？平安随行帮您省钱又省心。\r\n现在参与8月上海车牌均价竞猜，猜中客户即可分享10000元油卡.\r\n实力运气兼备，谁能未卜先知，一锤定音，赶快试试吧！\r\n谁是预测王？谜底8月20日揭晓。\r\n\r\n\r\n活动详情：\r\n活动时间：2011年8月8日至8月19日18:00截止\r\n活动奖项：10000元油卡\r\n活动规则：\r\n一、活动期间，通过平安随行网站、客户端参与2011年8月上海车牌价格（均价）竞猜；\r\n二、每个网站、客户端用户各有一次竞猜价格的机会，多次竞猜则以最后一次价格为准；\r\n三、竞猜价格完全准确的所有客户一起分享10000元油卡；\r\n四、2011年8月上海车牌价格（均价）以8月20日上海国拍网公布结果为准；\r\n五、获奖名单将在活动结束后的10个工作日内在平安随行网站和客户端公布。\r\n六、请务必保证您的手机号码真实有效，以确保中奖后我们能够与您取得联系。\r\n\r\n\r\n本次活动最终解释权归属中国平安保险（集团）股份有限公司所有',1,NULL,'http://testwap.atditu.com/pa_activity/cai_cp_bj_index',2,'2011-08-05 02:06:51','2011-08-05 02:38:30');
/*!40000 ALTER TABLE `car_advertisements` ENABLE KEYS */;
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
