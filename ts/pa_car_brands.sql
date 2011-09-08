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
-- Table structure for table `pa_car_brands`
--

DROP TABLE IF EXISTS `pa_car_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pa_car_brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '平安车品牌名称',
  `xcar_value` varchar(200) DEFAULT NULL COMMENT 'xcar网站的value 抓数据用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COMMENT='平安车品牌';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pa_car_brands`
--

LOCK TABLES `pa_car_brands` WRITE;
/*!40000 ALTER TABLE `pa_car_brands` DISABLE KEYS */;
INSERT INTO `pa_car_brands` VALUES (1,'A 阿尔法·罗米欧','78'),(3,'A 阿斯顿马丁','56'),(5,'A 奥迪','1'),(7,'B 保时捷','52'),(9,'B 宝骏','109'),(11,'B 宝马','2'),(13,'B 北汽','88'),(15,'B 奔驰','3'),(17,'B 奔腾','105'),(19,'B 本田','17'),(21,'B 比亚迪','27'),(23,'B 标致','5'),(25,'B 别克','13'),(27,'B 宾利','57'),(29,'B 布加迪','58'),(31,'C 昌河','28'),(33,'C 长安','29'),(35,'C 长城','30'),(37,'D 大发','32'),(39,'D 大众','4'),(41,'D 道奇','11'),(43,'D 帝豪','95'),(45,'D 东风','33'),(47,'D 东风风神','90'),(49,'D 东南','34'),(51,'F 法拉利','59'),(53,'F 菲亚特','6'),(55,'F 丰田','18'),(57,'F 福特','10'),(59,'F 福田','76'),(61,'G GMC','104'),(63,'G 光冈','111'),(65,'G 广汽','103'),(67,'G 广汽长丰','31'),(69,'H 哈飞','37'),(71,'H 海马','38'),(73,'H 悍马','68'),(75,'H 红旗','106'),(77,'H 华普','42'),(79,'H 华泰','80'),(81,'H 黄海','91'),(83,'J JEEP吉普','77'),(85,'J 吉奥','92'),(87,'J 吉利','26'),(89,'J 江淮','44'),(91,'J 江铃','79'),(93,'J 捷豹','60'),(95,'J 金杯','39'),(97,'K 开瑞','99'),(99,'K 凯迪拉克','69'),(101,'K 克莱斯勒','12'),(103,'L 兰博基尼','61'),(105,'L 劳斯莱斯','62'),(107,'L 雷克萨斯','71'),(109,'L 雷诺','63'),(111,'L 力帆','40'),(113,'L 莲花','24'),(115,'L 莲花汽车','108'),(117,'L 林肯','70'),(119,'L 铃木','19'),(121,'L 路虎','65'),(123,'L 陆风','45'),(125,'M MINI','54'),(127,'M 玛莎拉蒂','66'),(129,'M 马自达','14'),(131,'M 迈巴赫','53'),(133,'M MG','15'),(135,'O 欧宝','55'),(137,'O 讴歌','72'),(139,'P 帕加尼','84'),(141,'Q 奇瑞','25'),(143,'Q 起亚','22'),(145,'Q 全球鹰','96'),(147,'R 日产','20'),(149,'R 荣威','46'),(151,'R 瑞麒','97'),(153,'S Smart','83'),(155,'S 萨博','67'),(157,'S SPIRRA','110'),(159,'S 三菱','21'),(161,'S 世爵','87'),(163,'S 双环','47'),(165,'S 双龙','75'),(167,'S 斯巴鲁','73'),(169,'S 斯柯达','7'),(171,'W 威麟','98'),(173,'W 沃尔沃','9'),(175,'W 五菱','82'),(177,'X 西亚特','86'),(179,'X 夏利','107'),(181,'X 现代','23'),(183,'X 雪佛兰','16'),(185,'X 雪铁龙','8'),(187,'Y 一汽','50'),(189,'Y 依维柯','81'),(191,'Y 英菲尼迪','74'),(193,'Y 英伦汽车','94'),(195,'Y 永源','35'),(197,'Z 中华','41'),(199,'Z 中兴汽车','93'),(201,'Z 众泰','51');
/*!40000 ALTER TABLE `pa_car_brands` ENABLE KEYS */;
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
