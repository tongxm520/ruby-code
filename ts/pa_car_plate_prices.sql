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
-- Table structure for table `pa_car_plate_prices`
--

DROP TABLE IF EXISTS `pa_car_plate_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pa_car_plate_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title_1` varchar(200) NOT NULL COMMENT '标题1',
  `title_2` varchar(200) NOT NULL COMMENT '标题2',
  `content` text COMMENT '内容描述',
  `auction_time_month` varchar(20) NOT NULL COMMENT '拍卖时间',
  `car_plate_number` int(11) NOT NULL DEFAULT '0' COMMENT '车牌数量',
  `lowest_prices` int(11) NOT NULL DEFAULT '0' COMMENT '最低成交价格',
  `avg_prices` int(11) NOT NULL DEFAULT '0' COMMENT '平均成交价格',
  `lowest_pritces_time` varchar(100) NOT NULL COMMENT '最低成交价格截至时间',
  `number_of_bidders` int(11) NOT NULL DEFAULT '0' COMMENT '投标人数',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `isvalid` int(1) NOT NULL DEFAULT '0' COMMENT '是否有效:0-有效,1-无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='车牌价格';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pa_car_plate_prices`
--

LOCK TABLES `pa_car_plate_prices` WRITE;
/*!40000 ALTER TABLE `pa_car_plate_prices` DISABLE KEYS */;
INSERT INTO `pa_car_plate_prices` VALUES (1,'上海1月车牌价格','1月私车牌照中标价格接近四万','','2011-01',8000,38300,38771,'11:29:59 第161位',30675,'2011-08-01 07:06:25','2011-08-06 09:13:38',0),(3,'上海2月车牌价格','2月私车牌照中标价格过四万','','2011-02',7500,44200,44627,'11:29:46 第101位',25104,'2011-08-01 07:16:34','2011-08-06 09:13:46',0),(5,'上海3月车牌价格','3月私车牌照中标价格超四万五','    \r\n\r\n','2011-03',8000,46200,46657,'11:29:59 第30位',25014,'2011-08-01 07:38:08','2011-08-04 01:57:38',0),(7,'上海4月车牌价格','4月私车牌照中标价格与三月平','    \r\n\r\n','2011-04',8000,46300,47399,'11:29:59 第210位',22326,'2011-08-01 07:40:03','2011-08-04 01:57:28',0),(9,'上海5月车牌价格','5月私车牌照中标价格升10%','    \r\n\r\n','2011-05',9000,47400,47700,'11:29:59 第120位',25708,'2011-08-01 07:41:57','2011-08-04 01:57:19',0),(11,'上海6月车牌价格','6月私车牌照中标价格接近五万','    \r\n\r\n','2011-06',9000,48500,48855,'11:29:59 第2位',22474,'2011-08-01 07:43:47','2011-08-04 01:45:48',0),(13,'上海7月车牌价格','7月私车牌照中标价重返5万 达到历史第三高位','<p class=\"pop_p\">7月23日中午结束的上海2011年7月份私车额度拍卖结果显示，本月上海私人、私企客车额度投标拍卖价格继续上涨，拍卖均价达到51774元，已经达到历史第三高位。</p><p class=\"pop_p\">本月上海私车牌照投放额度9000辆，与上月持平，实际投标21852人，比上月投标人数略微减少。经过紧张的拍卖过程，7月份上海私车牌照最低中标价最终定格在了50900元，比上月上涨了2400元；本月平均中标价51774元，比上月均价上涨2319元。</p><p class=\"pop_p\">上海私车额度拍卖中标价上一次突破5万元还是在2007年10月，当时平均中标价51000，最低中标价50500元，投标人数10715人。</p>','2011-07',9000,50900,51174,'11:29:59 第123位',21052,'2011-08-01 07:47:22','2011-08-10 02:18:08',0),(15,'上海车牌价格','8月私车牌照价逼近历史高点 近期下跌可能性小','<p class=\"pop_p\">沪上8月份私车额度拍卖结果显示，上海私人、私企客车额度投标拍卖价格继续上涨，牌照拍卖均价超过了5.2万元，创下自2008年以来的44个月新高和历史第三高价。2007年11月份和12月份，上海车牌均价曾分别达到54317元和56042元，为历史上最高的两个月。</p><p class=\"pop_p\">8月上海私车牌照最低中标价为51000元，比上月上涨100元；平均中标价为52228元，比上月上涨了1054元。本月上海私车牌照投放额度9000辆，与上月持平；实际投标者有21544人，比上月略微减少，中标率约为41.8%。</p>','2011-08  ',9000,51000,52228,'11:29:56第64位',21544,'2011-09-01 07:36:47','2011-09-01 07:41:48',0);
/*!40000 ALTER TABLE `pa_car_plate_prices` ENABLE KEYS */;
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
