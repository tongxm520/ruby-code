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
-- Table structure for table `pa_menus`
--

DROP TABLE IF EXISTS `pa_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pa_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` int(11) NOT NULL COMMENT '父类功能菜单id',
  `meun_name` varchar(100) DEFAULT NULL COMMENT '功能菜单名称',
  `menu_url` varchar(100) DEFAULT NULL COMMENT '功能URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COMMENT='平安_功能菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pa_menus`
--

LOCK TABLES `pa_menus` WRITE;
/*!40000 ALTER TABLE `pa_menus` DISABLE KEYS */;
INSERT INTO `pa_menus` VALUES (1,-1,'平安管理网站','javascript:void(0)'),(2,1,'手机客户端管理','javascript:void(0)'),(3,1,'平安随行网站相关管理','javascript:void(0)'),(4,2,'首页广告','/ad/index'),(5,2,'保险公告管理','/notice/index'),(6,2,'统计报表','/stat/index'),(7,3,'车主服务及下载','javascript:void(0)'),(8,7,'短信服务管理','/sms/index'),(9,7,'理赔服务指南','/claims/index'),(10,7,'客户端特性管理','/feature/index'),(11,7,'增值服务管理','/vas/index'),(12,7,'问卷调查管理','/questionnaire/index'),(13,7,'车险百科管理','/insurance_article/index'),(14,7,'首页车主服务管理','/ownerservice_article/index'),(15,3,'商城、团购、4S店相关','javascript:void(0)'),(16,15,'车主商城产品分类管理','/supermarketproduct_category/index'),(17,15,'车主商城商品管理','/supermarket_product/index'),(18,15,'网上4S店管理','/s4/index'),(19,7,'理赔网点管理','/service_outlet/index'),(20,15,'广告管理','/web_ad/show_all_ads'),(21,15,'团购管理','/group_pon/show_all_group_pons'),(22,3,'系统参数管理','/sys_config/index'),(23,2,'用户激活','javascript:void(0)'),(24,23,'用户激活报表','/user_activation_detail/index?user_type=0'),(25,23,'激活用户导出','/activation/information_to_excel'),(26,23,'激活用户导入','/activation/excel_to_information'),(27,1,'修改密码','/pa_manager/update_self_password'),(57,1,'权限管理','javascript:void(0)'),(59,57,'后台用户管理','/pa_manager/show'),(61,57,'功能菜单管理','/pa_menu/index'),(63,57,'部门管理','/pa_department/index'),(65,1,'日志报表查看','javascript:void(0)'),(69,65,'网站总访问次数日报表','/r_all_page_per_hour/daily_report_of_website'),(71,1,'日志报表测试2','javascript:void(0)'),(73,65,'网站总访问次数月报表','/r_all_page_per_hour/monthly_report_of_website'),(75,65,'重点页面访次日报表','/r_all_page_per_hour/daily_report_of_important_page'),(79,65,'重点页面访次月报表','/r_all_page_per_hour/monthly_report_of_important_page'),(81,65,'各个页面响应的平均时间','/r_all_page_per_hour/avg_time_all_page_report'),(83,65,'各个页面可用性报表','/r_all_page_status_per_day/usability_report_of_page'),(85,65,'访客来源日报表','/r_popularize_per_page_hour/daily_report_of_access_source'),(87,65,'访客来源月报','/r_popularize_per_page_hour/monthly_report_of_access_source'),(89,65,'重点栏目广告日报表','/r_popularize_per_page_hour/daily_report_of_ad'),(91,65,'重点栏目广告月报表','/r_popularize_per_page_hour/monthly_report_of_ad'),(93,65,'日志页面url列表','/r_page/index'),(95,71,'注销测试2','/pa_menu/index'),(97,3,'用户反馈(pa-web)数据导出','/user_feed_back_message/get_excel_file'),(99,7,'车主提醒(pa-web)数据导出','/chezhutixing/get_excel_file'),(101,2,'手机日志报表','javascript:void(0)'),(103,101,'历史最高在线','/r_api_activity_hour/history_online'),(105,101,'时段分析','/r_api_activity_hour/hour_analysis_index'),(107,101,'来路分析','/r_api_activity_day/marketchannels_deviceids_day'),(109,101,'受访分析','/r_api_page_city_day/visit_page_day'),(111,101,'访客详情','/r_api_page_city_day/vist_city_day'),(113,101,'用户忠诚度分析','/r_api_visit_back_length_day/customer_loyalty_analysis_day'),(115,101,'页面等级url','/r_api_op_glade/index'),(117,7,'车牌价格','/pa_car_plate_price/index'),(119,101,'受访次数分析','/r_api_page_city_day/visit_all_page_day'),(121,101,'受访用户数分析','/r_api_page_city_day/deviceid_all_page_day 	');
/*!40000 ALTER TABLE `pa_menus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:48
