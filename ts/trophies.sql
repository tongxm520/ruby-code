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
-- Table structure for table `trophies`
--

DROP TABLE IF EXISTS `trophies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trophies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gold_number` int(11) DEFAULT NULL COMMENT '金币数量',
  `name` varchar(100) DEFAULT NULL COMMENT '奖品名称',
  `img` varchar(200) DEFAULT NULL COMMENT '奖品图片',
  `description` text COMMENT '奖品描述',
  `flg` int(1) DEFAULT '1' COMMENT '奖品状态 0 失效  1 正常',
  `user_get_number` int(11) DEFAULT '0' COMMENT 'å¾—åˆ°æ­¤å•†å“çš„ç”¨æˆ·çš„æ•°é‡',
  `trophy_category_id` int(11) DEFAULT NULL COMMENT '商品对应的类型',
  `t_number` int(11) DEFAULT '999' COMMENT '数量',
  `activate_name` varchar(100) DEFAULT NULL COMMENT '活动名称',
  `order_id` int(11) DEFAULT NULL COMMENT '排序次序',
  PRIMARY KEY (`id`),
  KEY `gold_number_key` (`gold_number`),
  KEY `flg_key` (`flg`),
  KEY `categories_key` (`trophy_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='奖品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trophies`
--

LOCK TABLES `trophies` WRITE;
/*!40000 ALTER TABLE `trophies` DISABLE KEYS */;
INSERT INTO `trophies` VALUES (37,150000,'10Q币','/images/trophy/201006281106469947c2539e2d5979bb07d1107dbc430a.gif','腾讯Q币，欢迎兑换',0,1243,1,999,'opopopop',NULL),(39,700000,'移动/联通50元充值卡','/images/trophy/2010062811072137d77b53dab2c1d0f93c4c6b9656a00f.gif','移动/联通电话充值卡。',0,44,1,0,'',NULL),(40,1000000,'U盘4G','/images/trophy/201006281107385e95e5ef1cb5b90652bc1f469d81b75f.gif','USB 闪存盘4G',0,23,1,999,NULL,NULL),(41,1200000,'喜洋洋玩具','/images/trophy/20100628111959ee317e6eaeb05c9bbba765efa326056e.gif','优质超柔玫瑰绒+优质超柔+A级100%PP棉',0,3,1,999,NULL,NULL),(42,1500000,'九阳料理机','/images/trophy/201006281108081b0ab1ebd854a7a56c6af2f0e1cc737d.gif','1. 多功能：搅拌、豆浆、奶昔、干磨',0,13,1,999,NULL,NULL),(43,3000000,'时尚折叠自行车','/images/trophy/201006281120239d2fc11684a1ede3dab95b67648b7012.gif','14寸/11kg/铝轮盘/桂盟银链条/自行车专用高碳白钢管/龙头:铝合金/车圈:铝合金/前轮V闸/后轮轴闸',0,25,1,999,NULL,NULL),(44,6000000,'录音笔','/images/trophy/20100628110844a2297a6f7a782e38789b4230f9818c5b.gif','小巧的机身便于携带，大容量内置记忆体在LP录音模式下可进行长达约288小时的录音（LP录音模式下），是课堂学习、培训记录的好帮手。',1,0,1,999,NULL,NULL),(45,9000000,'MP5','/images/trophy/201006281120415c99b85be8ffa34789ae4859f910d026.gif','26万色的液晶屏幕，可以播放MPEG-4格式的电影。它还支持MP3、WMA格式的音乐文件，FullSound飞声音效能有效祛除压缩音频格式的“数码味”，提供媲美音乐厅的真实听感。另外该机还支持FM收音、FM内录、语音录制、图片浏览等多种娱乐功能。',1,1,1,999,NULL,NULL),(46,8000000,'移动硬盘500g','/images/trophy/20100628112108f4e85d8b99c9e4a068dfef5678b1a8ae.gif','500G,大容量高速移动硬盘。',1,4,1,999,NULL,NULL),(47,22000000,'诺基亚N78','/images/trophy/201006281109272b3052031ea815c7f36643dc2742d9e7.gif','N78依旧采用了诺基亚最为传统，同时也是大家眼中最为经典的“直板+内置天线”造型。除了在型号上的延续之外，诺基亚N78在造型设计方面也与经典的N73有着几分相似之处，不过用户可以通过高反光材质的前面板轻易地区分这两位同门师兄弟。诺基亚N78的机身三围是113×49×15.1毫米，重量只有101.8克，相比前辈来说轻薄了不少。',0,0,1,999,NULL,NULL),(48,30000000,'上网本','/images/trophy/20100628112132e9bf063eb45b1dbd323d72dd1f0554fe.gif','采用英特尔Atom（凌动）处理器的无线上网设备，具备上网、收发邮件以及即时信息（IM）等功能，并可以实现流畅播放流媒体和音乐功能，是青年一族、时尚一族、喜好旅行的朋友的候选佳品。',1,0,1,999,NULL,NULL),(49,50000000,'iPad','/images/trophy/20100628112149b8d1c28aaa3274df26ae433777778b25.gif','时尚iPad，够炫',1,6,1,999,NULL,NULL),(51,15000000,'诺基亚（Nokia）5233 GSM手机','/images/trophy/20100722175219af9037d859736ed8adde7a826301d090.gif','直板触控设备 尺寸：111 x 51.7 x 14.5/15.5 毫米 重量：- 113 克 (不含触控笔) - 115 克 (含触控笔) 具有触觉反馈的响应触摸屏 加速计，用于自动旋转 距离传感器，用于省电和防止意外碰触 屏幕和 3D 尺寸：3.2 英寸 分辨率：640 x 360 像素 (nHD)，图片比例 16:9 ',0,1,NULL,999,NULL,NULL),(53,100000,'糖果色亮眼漆皮化妆包','/images/trophy/2010090914353197692ee89596010cadd48dc2aef5cf3a.gif','【规格】18.5cm*4.5cm*10cm\r\n【材质】亮漆皮\r\n【结构】拉链封口\r\n【款式】: 手包 化妆包\r\n【质地】: PU皮 \r\n【风格】: 日韩风范 \r\n【箱包图案】: 纯色无图案 \r\n【有无夹层】: 无 \r\n【有无手腕带】: 无 \r\n',0,0,NULL,400,'20100910',21),(55,80000,'10Q币','/images/trophy/2010090914563806ab1e2a08e5f419d065447f80cd3312.gif','腾讯Q币，欢迎兑换',0,38,NULL,500,'20100910',20),(57,200000,'贝贝猪迷你音箱','/images/trophy/20100909145828b04c468c9adb854c1fa70361d3a7811e.gif','想要小猪唱歌给你听吗？\r\n是FM收音机，又是时尚的音箱；插在电脑上无需任何电源，由USB直接供电；外出时只需四接电池即可。只要接上MP3,IPOD或者电脑，摇身一变成了桌上最可爱的喇叭！赶快丢掉桌上一成不变的老旧喇叭！让粉红色小猪陪你度过快乐美好的一天！\r\n',0,1,NULL,300,'20100910',22),(59,300000,'小熊酸奶机','/images/trophy/201009091501139fb85abd4d5c93cede894938db7c5df5.gif','一触倾心的味道，在温和的温度里酝酿一种难以抗拒的美味，将浓郁的口感带入心中。小熊酸奶机，让你体会在家自己创造美味的快乐。\r\n',0,0,NULL,200,'20100910',23),(73,350000,'海豚按摩器','/images/trophy/20100925140112a585d6daa0ff2358e5350c1febdf6c76.gif','本产品利用自动程序，通过高低、快慢的表话来模仿专业按摩师的按摩手法是电动按摩器人性化按摩研究又一重大突破。可方便按摩各个部位。',0,0,NULL,100,'20100910',24),(75,500000,'50元手机充值卡','/images/trophy/20100925140621a135dbc087ea7183e59a88d17c97d2fd.gif','全国通用\r\n移动、联通、电信均可。',0,5,NULL,20,'20100910',25),(77,0,'一号店现金券','/images/trophy/201011121745015e6f2b7c4856efd72b84d4774d9d6ef1.gif','',0,105,NULL,999,'',NULL),(81,60000,'10Q币','/images/trophy/2010101214493278e35dea8913a931a3bd144f1baf8851.gif','',0,127,NULL,999,'',78),(83,150000,'30Q币','/images/trophy/201010121450229d983a91df812bc305372ae6713e98f7.gif','',0,39,NULL,999,'',79),(85,300000,'50元话费充值卡','/images/trophy/201010121451236f67aec17b40d6204f191e45ff2e34e9.gif','',0,7,NULL,999,'',80),(87,10000,'1Q币','/images/trophy/2010110416392733ccc0afadcae1cdcbff7edd71e0277f.gif','',0,1707,NULL,999,'',81),(91,20000000,'李宁啸天林WOODS N90-II羽毛球拍（林丹专用顶级羽拍）','/images/trophy/2010120713313849b0a0426a1e14188f48de92ac569694.gif','成分/鞋底：碳纤维\r\n科技：多种复合科技\r\n标签：多种复合科技，高端，林丹，羽毛球拍\r\n图案种类/型号：WOODS N90-II\r\n颜色：红色\r\n材质：超刚性碳纤维+超导纳米+钛\r\n重量：W3（85-89克）\r\n握把尺寸：S2/S3\r\n弹性：中\r\n平衡点:304\r\n长度:674\r\n握把长度:200\r\n穿线磅数:主线20-28lds ；横线22-30lbs；握把粗细：S2级别 3 2/8英寸（无线）\r\n真正的专业选手之首选',1,0,NULL,4,'',NULL),(93,2000000,'李宁综训系列斜挎包ABDE324-2','/images/trophy/20101207133448804172d500db15fa8ba568a70d5a4765.gif','成分：1. 420D乱紋提花 2. 420D poly w/pu 3. 磨砂 PVC 4. 420D Poly w/ PVC 5. 210D poly　 LI-NING裏布\r\n标签：斜挎包，综训系列产品规格/尺寸/厚度：40*32*12\r\n产品简介：李宁基础运动藏蓝/黑色斜挎包\r\n面料：1. 420D乱紋提花 2. 420D poly w/pu 3. 磨砂 PVC 4. 420D Poly w/ PVC 5. 210D poly　 LI-NING裏布。\r\n尺寸：40*32*12CM。\r\n故事包：基础运动\r\n',1,2,NULL,40,'',NULL),(95,1000000,'李宁中性腰包-ABLE412-3','/images/trophy/201012071336416c59fafe7fe6e6514bd89e505bb2cf53.gif','面料：1-100%锦纶 面料2-100%聚酯纤维 \r\n尺寸：220*55*130mm\r\n时尚小巧，达人首选',1,2,NULL,43,'',NULL),(97,2600000,'李宁综训系列背包ABSE372-3','/images/trophy/20101207133820ad80134d5834e2706a1ec3fa08701f50.gif','成分：面料一420D/PVC.100%锦沦,面料二小棱型格,100%涤沦\r\n标签：背包，综训系列\r\n产品规格/尺寸/厚度：31*14.5*48.5\r\n产品简介：李宁基础运动红色背包，面料：面料一420D/PVC.100%锦沦,面料二小棱型格,100%涤沦\r\n尺寸：31*14.5*48.5CM\r\n炫酷精品，品位之选',1,0,NULL,50,'',NULL);
/*!40000 ALTER TABLE `trophies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:26:46
