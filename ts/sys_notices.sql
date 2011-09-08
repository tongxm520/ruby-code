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
-- Table structure for table `sys_notices`
--

DROP TABLE IF EXISTS `sys_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '公告标题',
  `description` text COMMENT '公告描述',
  `is_valid` tinyint(1) DEFAULT '0' COMMENT '状态：1为正常，0为无效',
  `img` varchar(100) DEFAULT NULL COMMENT '公告图片',
  `created_at` datetime DEFAULT NULL COMMENT '发布时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `is_valid_key` (`is_valid`),
  KEY `created_at_key` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='手机公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notices`
--

LOCK TABLES `sys_notices` WRITE;
/*!40000 ALTER TABLE `sys_notices` DISABLE KEYS */;
INSERT INTO `sys_notices` VALUES (1,'关于平安','中国平安保险(集团)股份有限公司（以下简称“中国平安”，“公司”，“集团”）于1988年诞生于深圳蛇口，是中国第一家股份制保险企业，至今已发展成为融保险、银行、投资等金融业务为一体的整合、紧密、多元的综合金融服务集团。公司为香港联合交易所主板及上海证券交易所两地上市公司，股票代码分别为2318和601318。\r\n\r\n\r\n中国平安的企业使命是：对股东负责，稳定回报，资产增值；对客户负责，服务至上，诚信保障；对员工负责，生涯规划，安居乐业；对社会负责，回馈社会，建设国家。中国平安倡导以价值最大化为导向，以追求卓越为过程，做品德高尚和有价值的人，形成了“诚实、信任、进取、成就”的个人价值观，和“团结、活力、学习、创新” 的团队价值观。集团贯彻“竞争、激励、淘汰”三大机制，执行“差异、专业、领先、长远”的经营理念。\r\n\r\n\r\n中国平安的愿景是以保险、银行、投资三大业务为支柱，谋求企业的长期、稳定、健康发展，为企业各相关利益主体创造持续增长的价值，成为国际领先的综合金融服务集团和百年老店。\r\n\r\n\r\n中国平安通过旗下各专业子公司及事业部，即保险系列的中国平安人寿保险股份有限公司（平安人寿）、中国平安财产保险股份有限公司（平安产险）、平安养老保险股份有限公司（平安养老险）、平安健康保险股份有限公司（平安健康险），银行系列的平安银行股份有限公司（平安银行）、平安产险信用保证保险事业部（平安小额消费信贷），投资系列的平安信托投资有限责任公司（平安信托）、平安证券有限责任公司（平安证券）及中国平安证券（香港）有限公司（平安证券（香港））、平安资产管理有限责任公司（平安资产管理）及中国平安资产管理（香港）有限公司（平安资产管理（香港））、平安期货有限公司（平安期货）等，通过多渠道分销网络，以统一的品牌向超过5100万名个人客户和200万名公司客户提供保险、银行、投资等全方位、个性化的金融产品和服务。\r\n\r\n\r\n中国平安拥有约41.7万名寿险销售人员及8.3万余名正式雇员，各级各类分支机构及营销服务部门3,800多个。截至2009年12月31日，集团总资产为人民币9357亿元，权益总额为人民币917亿元。2009年，集团实现总收入人民币1528亿元，净利润人民币145亿元。从保险业务收入来衡量，平安人寿为中国第二大寿险公司，平安产险为中国第二大产险公司。\r\n\r\n\r\n2008年，中国平安进入《财富》世界500强，并成为入选该榜单的中国内地非国有企业第一名。2009年6月,在英国《金融时报》公布的2009年度“全球500强”企业榜单中，中国平安列全球寿险公司第二名，中国企业第八名，中国非国有企业第一名。公司还是《福布斯》杂志2009年度“全球上市公司2000强”第141名。\r\n\r\n\r\n中国平安是中国金融保险业中第一家引入外资的企业，拥有完善的治理架构，国际化、专业化的管理团队。中国平安遵循“集团控股、分业经营、分业监管、整体上市”的管理模式，在一致的战略、统一的品牌和文化基础上，确保整体集团朝着共同的目标前进。中国平安拥有中国金融企业中真正整合的综合金融服务平台，位于上海张江的中国平安全国后援管理中心是亚洲领先的金融后台处理中心，公司据此建立起流程化、工厂化的后台作业系统，并借助电话、网络及专业的业务员队伍，为客户提供专业化、标准化、全方位的金融理财服务。通过业界首创的客户服务节及万里通、一账通等创新的服务模式，为客户提供增值服务。在2009年度的权威调查中，集团下属平安寿险、平安产险的客户满意度均居行业首位。\r\n\r\n\r\n作为“中国企业社会责任同盟”的发起人之一，中国平安致力于承担社会责任。在依法经营、纳税的过程中创造企业的阳光利润；在社会中尽到道德责任与慈善责任，将企业的核心价值观贯彻在教育公益、红十字公益、灾难救助等公益事业中。\r\n\r\n\r\n截至2009年底，中国平安已在全国各省市边远地区规划援建100所平安希望小学，其中已经援建完成了84所（包括32所在建）；2009年，中国平安还出资人民币1000万元在全国平安希望小学设立了“中国平安希望奖学金”；连续六年开展中国平安励志计划，已奖励学生2285人，奖金总额达到人民币774 万元，2009年，中国平安启动了励志创业大赛，并向中国青少年发展基金会捐赠人民币500万元设立“中国平安励志基金”；连续六年投入百万，公益协办中国少年儿童平安行动；连续八年组织无偿献血活动，员工无偿献血量近836.3万CC，并向中华骨髓库2003至2010年的所有造血干细胞捐献者赠送一年期重大疾病和意外伤害保险，预计捐赠总保额逾人民币7亿元。中国平安因此获得广泛社会褒奖：公司连续八年获评“中国最受尊敬企业”、连续五年获评“中国最佳企业公民”、连续三年获评“最具责任感企业”。',1,'','2011-01-10 08:00:00','2011-04-18 03:05:05');
/*!40000 ALTER TABLE `sys_notices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:26:35
