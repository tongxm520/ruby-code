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
-- Table structure for table `menu_lists`
--

DROP TABLE IF EXISTS `menu_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_no` varchar(50) DEFAULT NULL COMMENT 'id编号',
  `href` varchar(50) DEFAULT NULL COMMENT 'href',
  `target` varchar(50) DEFAULT NULL COMMENT 'target',
  `menu_name` varchar(50) DEFAULT NULL COMMENT '菜单名字',
  `parent_id_no` varchar(11) DEFAULT NULL COMMENT '父菜单',
  `has_child` int(11) DEFAULT NULL COMMENT '是否有子菜单0：有，1：没有',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_lists`
--

LOCK TABLES `menu_lists` WRITE;
/*!40000 ALTER TABLE `menu_lists` DISABLE KEYS */;
INSERT INTO `menu_lists` VALUES (3,'NO02','/coupon_infos/','content','优惠券管理',NULL,1),(4,'NO03','/promotions/','content','优惠信息管理',NULL,1),(6,'NO04',NULL,NULL,'分类管理',NULL,0),(7,NULL,'/categories_produ/','content','产品分类管理','NO04',NULL),(9,NULL,'/solo_categories/','content','solo分类管理','NO04',NULL),(11,NULL,'/hk_categories/','content','香港分类管理','NO04',NULL),(12,'NO05','/cities/','content','城市、商区管理',NULL,1),(15,'NO07','/system_infos/','content','系统消息管理',NULL,1),(16,'NO08','/users/','content','产品属性管理',NULL,1),(17,'NO09','','content','点评管理',NULL,0),(23,'NO15','/cate_properties/','content','动态标签',NULL,1),(24,'NO16',NULL,'content','宝宝转相关管理',NULL,0),(25,NULL,'/tiger_machine_settings/','content','宝宝转设置','NO16',NULL),(26,NULL,'/tiger_syn_times_sets/','content','宝宝转相关时间设置','NO16',NULL),(27,NULL,'/tiger_weight_rates/','content','宝宝转权重和赔率管理','NO16',NULL),(28,NULL,'/tiger_img_group_names/','content','宝宝转图片管理','NO16',NULL),(29,NULL,'/tiger_shouts/','content','宝宝转吼一声管理','NO16',NULL),(30,NULL,'/tiger_images/','content','宝宝转图片批量管理','NO16',NULL),(31,'NO17','/examine_verifies/','content','审核机制',NULL,1),(32,'NO18','/china_infos/','content','china_infos',NULL,1),(34,'NO20',NULL,'content','撒币相关管理',NULL,0),(35,NULL,'/throw_gold_modes/','content','撒币方式管理','NO20',NULL),(36,NULL,'/gold_weights/','content','撒币权重管理','NO20',NULL),(37,NULL,'/gold_fastigium_configs/','content','撒币规则高峰期配置管理','NO20',NULL),(38,NULL,'/gold_available_time_configs/','content','终端币有效期配置管理','NO20',NULL),(39,NULL,'/throw_gold_view_mode_configs/','content','撒币前台显示模式管理','NO20',NULL),(40,'NO21','/code_configs/','content','错误代码管理',NULL,1),(42,'NO23',NULL,'content','手机相关管理',NULL,0),(43,NULL,'/sys_phone_infos/','content','可下载手机型号管理','NO23',NULL),(44,NULL,'/sys_app_update_infos/','content','手机应用软件版本更新管理','NO23',NULL),(45,NULL,'/sys_app_descs/','content','应用软件关闭提示信息管理','NO23',NULL),(50,'NO26','/config_vars/','content','参数配置管理',NULL,1),(56,'NO28',NULL,'content','订阅管理',NULL,0),(57,NULL,'/tiger_results/','content','宝宝转结果显示','NO16',NULL),(63,NULL,'/sys_app_lists/','content','手机应用软件管理','NO23',NULL),(64,NULL,'/sys_phone_brands/','content','可下载的手机品牌管理','NO23',NULL),(65,'NO29','/score_operate_types/','content','积分获取类型管理',NULL,1),(66,NULL,'/tiger_results/new','content','增加宝宝转','NO16',NULL),(82,'NO31','','content','api相关管理',NULL,0),(83,NULL,'/api_configs/','content','api接口的系统管理','NO31',NULL),(84,NULL,'/api_keys/','content','api_keys管理','NO31',NULL),(85,'NO32','','content','用户相关管理',NULL,0),(86,NULL,'/users/','content','用户管理','NO32',NULL),(87,NULL,'/replies/','content','点评内容管理','NO32',NULL),(88,NULL,'/user_stores/','content','用户的收藏管理','NO32',NULL),(89,NULL,'/share_responses/','content','用户的共享管理','NO32',NULL),(90,NULL,'/user_messages/','content','用户的消息管理','NO32',NULL),(92,NULL,'/more_curd/','content','多用户管理','NO32',NULL),(93,NULL,'/ranks/','content','用户头衔管理','NO32',NULL),(94,NULL,'/user_grades/','content','用户级别管理','NO32',NULL),(95,NULL,'/xingzuos/','content','星座管理','NO32',NULL),(96,'NO33','','content','礼品相关管理',NULL,0),(97,NULL,'/trophies/','content','礼品管理','NO33',NULL),(99,NULL,'/user_message_black_lists/','content','白名单、黑名单管理','NO32',NULL),(100,'NO34','','content','系统管理',NULL,0),(101,NULL,'/menu_lists/','content','菜单管理','NO34',NULL),(102,NULL,'/employees/','content','员工管理','NO34',NULL),(103,NULL,'/departments/','content','部门管理','NO34',NULL),(104,'NO35','','content','商家相关管理',NULL,0),(105,NULL,'/biz_infos/','content','商户管理','NO35',NULL),(107,'NO37','/system_infos/','content','系统公告管理',NULL,1),(108,'NO38','/advertisements/','content','广告表管理',NULL,1),(109,NULL,'/biz_left_lists/','content','商家左边列表管理','NO35',NULL),(110,NULL,'/biz_subscribes/','content','用户对商家的订阅管理','NO28',NULL),(111,NULL,'/biz_property_values/','content','商家的属性管理','NO35',NULL),(112,NULL,'/cate_properties/','content','分类商家的公共属性管理','NO04',NULL),(113,NULL,'/cate_subscribes/','content','用户对分类的订阅管理','NO28',NULL),(114,'NO39','/filter_keywords/','content','敏感字过滤管理',NULL,1),(115,NULL,'/gold_operate_types/','content','宝币操作管理','NO20',NULL),(116,'NO40','/medias/','content','支持的邮件列表管理',NULL,1),(117,NULL,'/trophy_categories/','content','礼品分类管理','NO33',NULL),(118,NULL,'/user_detail_informations/','content','用户详细信息管理','NO32',NULL),(119,NULL,'/tiger_jackpots/','content','jackpot设置','NO16',NULL),(121,'NO41','','content','点卡',NULL,0),(122,NULL,'/dianka/piliangtianjia','content','批量添加','NO41',0),(123,NULL,'/dianka/piliangsale','content','批量分销','NO41',NULL),(124,NULL,'/dianka/piliangtuihuo','content','批量退回','NO41',NULL),(125,NULL,'/dianka/piliangzuofei','content','批量作废','NO41',NULL),(126,NULL,'/dianka/selectone','content','查询','NO41',NULL),(127,NULL,'/tiger_user_logs/','content','币池统计','NO16',NULL),(129,'NO42','','content','统计报表',NULL,0),(131,NULL,'/sys_chart/user_reg','content','注册用户统计表','NO42',NULL),(133,NULL,'/sys_chart/tiger_win_gold_count','content','宝宝转系统赢取金币总数统计表','NO42',NULL),(135,NULL,'/brands/','content','商家品牌管理','NO35',NULL),(137,NULL,'/sys_chart/user_count','content','使用用户总数统计','NO42',NULL),(139,NULL,'/sys_chart/throw_gold_stat','content','当前系统撒币情况统计','NO42',NULL),(141,'NO43','/trophies_exchange_processes/','content','兑换礼品详情管理',NULL,1),(143,'NO44','/tiger_user_logs/win_list','content','宝宝转排行',NULL,1),(145,NULL,'/sys_chart/user_gold_order','content','用户金币排行榜','NO42',NULL),(147,NULL,'/sys_chart/throw_get_gold_stat','content','用户挖币统计','NO42',NULL),(149,NULL,'/sys_chart/user_reg_use_stat','content','用户活跃度统计','NO42',NULL),(151,NULL,'/sys_chart/user_reg_source_stat','content','注册用户来源统计','NO42',NULL),(153,'NO45','','content','系统维护管理',NULL,0),(155,NULL,'/sys_operate/buy_biz','content','收购店铺','NO45',NULL),(157,NULL,'/sys_operate/add_user_gold','content','赠送或扣取用户金币','NO45',NULL),(159,'NO46','/user_feed_back_messages/','content','用户的反馈管理',NULL,1),(161,NULL,'/sys_chart/user_platform_use_stat','content','系统活跃度统计','NO42',NULL),(163,NULL,'/tiger_prize_limits/','content','高倍区低倍区中奖调整','NO16',NULL),(165,NULL,'/marketchannels/','content','渠道管理','NO31',NULL),(167,'NO47','/friendship_links/','content','友情链接管理',NULL,1),(169,'NO48','/sys_chart/user_gold_order','content','用户帐户查询审核',NULL,1),(171,NULL,'/sys_chart/user_channel_stat','content','推广渠道用户数统计','NO42',NULL),(173,'NO49','/task_lists/','content','新手任务管理',NULL,1),(175,NULL,'/throw_gold_rules','content','撒币主规则管理','NO20',NULL),(177,'NO50','/question_answers','content','问答题管理',NULL,1),(179,'NO51','/users/new_user_list','content','向用户批量发送短信',NULL,1),(181,'NO52','/activity_images/','content','首页活动BANNER管理',NULL,1),(185,NULL,'/replies/','content','点评内容管理','NO09',NULL),(187,NULL,'/replies/audit','content','点评内容审核','NO09',NULL),(189,'NO53','/activities/','content','活动管理',NULL,1),(191,'NO54','/user_sns_logs/','content','用户同步设置日志',NULL,1),(193,'NO55','/users/user_and_brand','content','给用户添加品牌',NULL,1),(195,'NO56','/users/user_and_shop','content','给用户添加店铺',NULL,1),(197,'NO57','/users/user_add_shop','content','添加店铺管理员',NULL,1),(199,'NO58','/sns_lists/','content','同步社区Key管理',NULL,1),(201,'NO59','/add/add_biz_infos','content','维护商户信息',NULL,1),(203,'NO60','/robot_users/','content','新鲜事',NULL,1),(205,'NO61','/add/audit','content','修改/新增店铺审核',NULL,1),(207,NULL,'/sys_chart/user_platform_count','content','各平台用户数统计','NO42',NULL);
/*!40000 ALTER TABLE `menu_lists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:20
