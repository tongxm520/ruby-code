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
-- Table structure for table `biz_infos_question_answers`
--

DROP TABLE IF EXISTS `biz_infos_question_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biz_infos_question_answers` (
  `biz_info_id` int(11) DEFAULT NULL,
  `question_answer_id` int(11) DEFAULT NULL,
  KEY `biz_info_id_key` (`biz_info_id`),
  KEY `question_answer_id_key` (`question_answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商户与问题中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_infos_question_answers`
--

LOCK TABLES `biz_infos_question_answers` WRITE;
/*!40000 ALTER TABLE `biz_infos_question_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `biz_infos_question_answers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:23:06
