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
-- Table structure for table `check_in_scenes`
--

DROP TABLE IF EXISTS `check_in_scenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check_in_scenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT 'jibie username 在 biz_name 踩了一脚狗屎，一回头，捡到gold_number个宝币 ,说 content',
  `step` int(11) DEFAULT NULL COMMENT '场景情绪 0 无宝币  1有宝币',
  PRIMARY KEY (`id`),
  KEY `step_key` (`step`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COMMENT='报到场景';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_in_scenes`
--

LOCK TABLES `check_in_scenes` WRITE;
/*!40000 ALTER TABLE `check_in_scenes` DISABLE KEYS */;
INSERT INTO `check_in_scenes` VALUES (1,'jibie username 在 biz_name 看了下天花板，不小心碰到了一个美女，心里一美，意念产生gold_number个宝币 , 说: content',1),(2,'jibie username 在 biz_name 胳膊一抽筋，发现有人往手里塞了gold_number个宝币 ,激动地说: content',1),(3,'jibie username 在 biz_name 见了一个老朋友，老朋友一开心，给了gold_number个宝币,他开心地说: content',1),(4,'jibie username 在 biz_name 听到一声雷响，跑出去一看，地上放着gold_number个宝币,捡起来兴奋地说: content',1),(5,'jibie username 在 biz_name 忽然灵光一闪，手指头一动，手里就多了gold_number个宝币,意外地说: content',1),(6,'jibie username 在 biz_name 一美女朝他走来，给了gold_number个宝币，他奇怪地说: content',1),(7,'jibie username 在 biz_name 喝完水，发现杯子底下有gold_number个宝币，他拿出来塞到口袋里,高兴地说: content',1),(8,'jibie username 在 biz_name 一咬牙，一跺脚，手里就多了gold_number个宝币,神气地说: content',1),(9,'jibie username 在 biz_name 抹了一把鼻涕 , 灰溜溜地说: content',0),(10,'jibie username 在 biz_name 见了一个老朋友，不过那个老朋友不记得他了，郁闷地说: content',0),(11,'jibie username 在 biz_name 拿了个瓜子往嘴里放，咬了一口发现是个小石头，郁闷地说: content',0),(12,'jibie username 在 biz_name 看到一美女，美女却摆了他一眼，悻悻地说: content',0),(13,'jibie username 在 biz_name 看到一丑女，一感慨把舌头咬了，倒霉地说: content',0),(15,'jibie username在 biz_name 听见一声巨响，定睛一看，哇！ gold_number个宝币 说 content',1),(17,'jibie username在 biz_name 感到脚下一热，心中一惊，难道是shit，低头一看 gold_number个宝币 兴奋地大喊 content',1),(19,'jibie username在 biz_name 突然觉得金光一闪，天上落下 gold_number个宝币 淡定的说了声 content',1),(21,'jibie username在 biz_name 被志玲撞了一下腰，刚弯腰忍痛，就一发现了 gold_number个宝币 从牙缝里说出 content',1),(23,'jibie username在 biz_name 看到了一架UFO，撒下了 gold_number个宝币 惊呼 content',1),(25,'jibie username在 biz_name 突然发狂，一把抓住路过的老妇，把她送过马路，幸运的得到了 gold_number个宝币 甩甩了头发说 content',1),(27,'jibie username在 biz_name 大吃了一顿霸王餐，还顺手拿走了 gold_number个宝币 心中窃喜道 content',1),(29,'jibie username在 biz_name 遇到了初恋情人，并得到他赠送的 gold_number个宝币 深情地说 content',1),(31,'jibie username在 biz_name 找到了梦想中的宝藏，里面居然有 gold_number个宝币 心有不甘地说 content',1),(33,'jibie username在 biz_name 发现了失传多年的藏宝图，里面还夹杂了 gold_number个宝币 忘情的说了句 content',1),(35,'jibie username在 biz_name 练成了点石成金术，对着石头一点，变成了 gold_number个宝币 满意地说 content',1),(37,'jibie username在 biz_name 受到了江湖最后一位公公的接见，并获其赠送的传世之宝—— gold_number个宝币 泪流满面地说 content',1),(39,'jibie username在 biz_name 挥了挥衣袖，带来 gold_number个宝币 轻轻念道 content',1),(41,'jibie username在 biz_name 跳起了街舞，赚到了 gold_number个宝币 一边擦汗，一边说 content',1),(43,'jibie username在 biz_name 喝了一杯果汁，没想到中了 gold_number个宝币 激动地说 content',1),(45,'jibie username在 biz_name 搞了个家族聚会，并收到家族成员返点的 gold_number个宝币 弹了弹衣袖，说 content',1),(47,'jibie username在 biz_name 挖到了 gold_number个宝币 不甘地说 content',1),(49,'jibie username在 biz_name 邀请了一个好友，得到他挖币的红利 gold_number个宝币 满足地说 content',1),(51,'jibie username在 biz_name 暴打了系统管理员一顿，抢走了他身上仅有的 gold_number个宝币 狠狠地说 content',1),(53,'jibie username在 biz_name 抓住了在马路中间小便的狗狗，罚款 gold_number个宝币 严肃地说 content',1),(55,'jibie username在 biz_name 推荐自己的宝地，被商家奖励 gold_number个宝币 说 content',1),(57,'jibie username在 biz_name 参加了超级族长大赛，被淘汰，评委见他可怜，送他 gold_number个宝币 他心有不甘地说 content',1),(59,'jibie username在 biz_name 与周边宝典客服进行了亲密交互，获得 gold_number个宝币 美滋滋地说 content',1),(61,'jibie username在 biz_name 与lady gaga比雷，胜出，得到 gold_number个宝币 自豪地说 content',1),(63,'jibie username在 biz_name 深情歌唱，引来系管理员注意，获得了 gold_number个宝币 嗲嗲地说 content',1),(65,'jibie username在 biz_name 练了一套葵花宝典，引起路人围观，城管实在看不下去，给他 gold_number个宝币 他轻蔑地说 content',1),(67,'jibie username在 biz_name 听见了熟悉的声音，那是落下 gold_number个宝币 的声音，她笃定地说 content',1),(69,'jibie username在 biz_name 看见犀利哥正在工作，也坐在了他身边，没想到真赚了 gold_number个宝币 他感慨道 content',1),(71,'jibie username在 biz_name 兜售个人写 真集，赚了 gold_number个宝币 兴奋地说 content',1),(73,'jibie username在 biz_name 为凤姐和芙蓉的PK做裁判，赚了 gold_number个宝币 忍住呕吐说 content',1),(75,'jibie username在 biz_name 用周边宝典定位宝藏成功，获得 gold_number个宝币 狂喊了一声 content',1),(77,'jibie username在 biz_name 找到家族祖先，获得家族遗产 gold_number个宝币 幸福地说 content',1),(79,'jibie username在 biz_name 实现了童年的梦想，那就是赚到 gold_number个宝币 他挥了挥拳头说 content',1),(81,'jibie username在 biz_name 吃多了，一个饱嗝打出了 gold_number个宝币 她惊讶地说 content',1),(83,'jibie username在 biz_name 练成了吸星大法，一下从周边宝吸出 gold_number个宝币 狂妄地说 content',1),(85,'jibie username在 biz_name 把奥特曼打成了 gold_number个宝币 恶狠狠地说 content',1),(87,'jibie username在 biz_name 向如花求婚成功，并得到信物—— gold_number个宝币 他甜蜜地说 content',1),(89,'jibie username在 biz_name 跟红太郎划拳，赢了 gold_number个宝币 说 content',1),(91,'jibie username在 biz_name 帮助别人卖出了一块宝地，获得佣金 gold_number个宝币 不满地说 content',1),(93,'jibie username在 biz_name 找到隐藏在周边名店中的优惠信息，还获得系统赠送的 gold_number个宝币 惊喜道 content',1),(95,'jibie username在 biz_name 散步，被天上掉下的 gold_number个宝币 砸到，柔了揉头说 content',1),(97,'jibie username在 biz_name 接到系统管理员甩出的暗器，定睛一看，原来是 gold_number个宝币 暗道 content',1),(99,'jibie username在 biz_name 被星探看中，付给她签约订金 gold_number个宝币 她憧憬地说 content',1),(101,'jibie username在 biz_name 给地主做长工，得到 gold_number个宝币 说 content',1),(103,'jibie username在 biz_name 卖拐，赚了 gold_number个宝币 拍着胸脯说 content',1),(105,'jibie username在 biz_name 报到成功，系统奖励 gold_number个宝币 说 content',1),(107,'jibie username在 biz_name 搞出了激光武器，被宇宙战士以 gold_number个宝币 买走，他抹了把鼻涕说 content',1),(109,'jibie username在 biz_name 挖煤，赚了 gold_number个宝币 有气无力地说 content',1),(111,'jibie username在 biz_name 给族长洗脚，得到 gold_number个宝币 说 content',1),(113,'jibie username在 biz_name 变身成为蝙蝠侠，获得系统奖励 gold_number个宝币 以宇宙拯救者的身份说 content',1),(115,'jibie username在 biz_name 疯狂的追逐凤姐，边跑边说 content',0),(117,'jibie username在 biz_name 满怀深情地朗诵道 content',0),(119,'jibie username在 biz_name 撩拨了一下自己的发髻，淡淡说 content',0),(121,'jibie username在 biz_name 找到了志同道合的那一半，对她(他)说 content',0),(123,'jibie username在 biz_name 对整个家族大声说 content',0),(125,'jibie username在 biz_name 一不小心摔倒在地，悲痛地说 content',0),(127,'jibie username在 biz_name 遇到小龙女，对她说 content',0),(129,'jibie username在 biz_name 露出了八颗牙齿，说 content',0),(131,'jibie username在 biz_name 对广大喜欢YY的雷友们说 content',0),(133,'jibie username在 biz_name 吃了一个超大汉堡，说 content',0),(135,'jibie username在 biz_name 偷喝了令狐冲的女儿红，说 content',0),(137,'jibie username在 biz_name 把泰森打倒在地，一脸藐视地说 content',0),(139,'jibie username在 biz_name 穿上了新买的比基尼，娇羞地说 content',0),(141,'jibie username在 biz_name 揉了揉惺忪的睡眼，对惊讶的人群说 content',0),(143,'jibie username在 biz_name 公布了邀请朋友加入周边宝典的方法，然后补充道 content',0),(145,'jibie username在 biz_name 擦干嘴角上的鲜血，诡异地说 content',0),(147,'jibie username在 biz_name 看着惊恐的人群，阴森地说 content',0),(149,'jibie username在 biz_name 摆了一个仙人指路的POS，说 content',0),(151,'jibie username在 biz_name 与张悟本探讨如何通过忽悠进行养生，总结说 content',0),(153,'jibie username在 biz_name 脱下外套，露出坚实的臂膀，对走来的MM说 content',0),(155,'jibie username在 biz_name 毫无征兆的大喊一声 content',0),(157,'jibie username在 biz_name 成功逃出了芙蓉的魔爪，松了一口气，说到 content',0),(159,'jibie username在 biz_name 成功的展示了自己的魅力，却谦虚的说 content',0),(161,'jibie username在 biz_name 尝了一口从下水道里流出的污水，满足地说 content',0),(163,'jibie username在 biz_name 拿出手机给小情人发了条短信，上面写着 content',0),(165,'jibie username在 biz_name 偷拍到了本山大叔的倩影，兴奋地说 content',0),(167,'jibie username在 biz_name 尝了一口三鹿牌奶粉，说 content  ',0),(169,'jibie username在 biz_name 左手抱右脚，右手抱左脚，以一个极为舒服的姿势说 content',0),(171,'jibie username在 biz_name 甩出了1个宝币，豪气冲天地说 content  ',0),(173,'jibie username在 biz_name 一把抓住了旁边美女的手说 content  ',0),(175,'jibie username在 biz_name 一个白鹤亮翅将前来挑战的宫本宝藏打倒在地，轻松说到 content',0),(177,'jibie username在 biz_name 将一枚硕大无比的钻戒举过头顶，望着它说 content',0),(179,'jibie username在 biz_name 向世界人民传出了一个伟大信息—— content',0),(181,'jibie username在 biz_name 在一又四分之一柱香的时间里说 content',0),(183,'jibie username在 biz_name 咬了一口沾满农药的苹果，说 content',0),(185,'jibie username在 biz_name 流着口水说 content  ',0),(186,'jibie username在 biz_name 得到了最佳RP奖，赢得了 gold_number个宝币，内牛满面地说 content',1),(187,'jibie username在 biz_name 看五月天演唱会，捡到了gold_number个宝币，兴奋地说 content',1),(188,'jibie username在 biz_name 找到了传说中的七龙珠，神龙奖励他gold_number个宝币，不可思议地说 content',1),(189,'jibie username在 biz_name 玩宝宝转人品爆发，系统额外奖励他gold_number个宝币，激动地说 content',1),(190,'jibie username在 biz_name 买彩票，中了五等奖，得到了gold_number个宝币，得意地说 content',1),(191,'jibie username在 biz_name 买了一瓶敌敌畏自杀，结果开盖有惊喜，得到了gold_number个宝币，眼角闪着泪花说 content',1),(192,'jibie username在 biz_name 在淘宝淘呀淘的，意外淘到了gold_number个宝币，嘿嘿地笑着说 content',1),(193,'jibie username在 biz_name 跟春哥比MAN，输的惨不忍睹，评委看他可怜给了他gold_number个宝币，泪眼婆娑地说 content',1),(194,'jibie username在 biz_name 刮彩票，中了gold_number个宝币，开心地说 content',1),(195,'jibie username在 biz_name 帮小朋友找妈妈，得到酬谢gold_number个宝币，淡定的说 content',1),(196,'jibie username在 biz_name 拾到机器猫的四次元口袋，得到gold_number个宝币，惊喜地说 content',1),(197,'jibie username在 biz_name 被迫领取了芙蓉姐姐演唱会的票，得到补偿gold_number个宝币，悻悻的说 content',1),(198,'jibie username在 biz_name 和春哥、曾哥斗地主，赢了gold_number个宝币，兴奋的说 content',1),(199,'jibie username在 biz_name 被东西绊倒，起来一看竟然是满满一袋钱，竟然有gold_number个宝币，满足的说 content',1),(200,'jibie username在 biz_name 帮凤姐拍写真，赚到了gold_number个宝币，平静的说 content',1);
/*!40000 ALTER TABLE `check_in_scenes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:23:37
