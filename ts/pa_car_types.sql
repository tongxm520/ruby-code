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
-- Table structure for table `pa_car_types`
--

DROP TABLE IF EXISTS `pa_car_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pa_car_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xcar_value` varchar(200) DEFAULT NULL COMMENT 'xcar网站的value 抓数据用',
  `pa_car_brand_id` int(11) DEFAULT NULL COMMENT '对应品牌id',
  `name` varchar(100) DEFAULT NULL COMMENT '车系名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1482 DEFAULT CHARSET=utf8 COMMENT='平安车系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pa_car_types`
--

LOCK TABLES `pa_car_types` WRITE;
/*!40000 ALTER TABLE `pa_car_types` DISABLE KEYS */;
INSERT INTO `pa_car_types` VALUES (1,'553',5,'奥迪A4L'),(3,'8',5,'奥迪A6L'),(5,'758',5,'奥迪Q5'),(7,'575',5,'奥迪A1'),(9,'694',5,'奥迪A3'),(11,'673',5,'奥迪A4 Allroad'),(13,'4',5,'奥迪A5'),(15,'827',5,'奥迪A6(进口)'),(17,'957',5,'奥迪A7'),(19,'7',5,'奥迪A8L'),(21,'439',5,'奥迪Q5(进口)'),(23,'1',5,'奥迪Q7'),(25,'691',5,'奥迪R4'),(27,'5',5,'奥迪R8'),(29,'627',5,'奥迪S5'),(31,'6',5,'奥迪S8'),(33,'3',5,'奥迪TT'),(35,'21',11,'宝马3系'),(37,'22',11,'宝马5系'),(39,'17',11,'宝马1系'),(41,'13',11,'宝马3系(进口)'),(43,'11',11,'宝马5系(进口)'),(45,'15',11,'宝马6系'),(47,'14',11,'宝马7系'),(49,'20',11,'宝马M系'),(51,'656',11,'宝马X1'),(53,'16',11,'宝马X3'),(55,'1177',11,'宝马X4'),(57,'10',11,'宝马X5'),(59,'19',11,'宝马X6'),(61,'12',11,'宝马Z4'),(63,'39',15,'奔驰C级'),(65,'40',15,'奔驰E级'),(67,'1182',15,'威霆'),(69,'1180',15,'唯雅诺'),(71,'23',15,'奔驰A级'),(73,'450',15,'奔驰B级'),(75,'522',15,'奔驰CL'),(77,'36',15,'奔驰CLK敞篷'),(79,'29',15,'奔驰CLS'),(81,'24',15,'奔驰C级(进口)'),(83,'35',15,'奔驰E级(进口)'),(85,'26',15,'奔驰GL'),(87,'38',15,'奔驰GLK'),(89,'27',15,'奔驰G级'),(91,'33',15,'奔驰ML级'),(93,'31',15,'奔驰R级'),(95,'25',15,'奔驰SL'),(97,'28',15,'奔驰SLK'),(99,'1120',15,'奔驰SLS'),(101,'37',15,'奔驰S级'),(103,'32',15,'奔驰Viano'),(105,'781',15,'马可波罗'),(107,'1243',15,'斯宾特Sprinter'),(109,'56',39,'POLO'),(111,'606',39,'高尔'),(113,'52',39,'朗逸'),(115,'1275',39,'帕萨特NMS'),(117,'57',39,'帕萨特新领驭'),(119,'54',39,'桑塔纳'),(121,'50',39,'桑塔纳志俊'),(123,'51',39,'途安'),(125,'658',39,'途观'),(127,'58',39,'宝来'),(129,'1154',39,'大众CC'),(131,'1093',39,'高尔夫'),(133,'60',39,'捷达'),(135,'63',39,'迈腾'),(137,'62',39,'速腾'),(139,'721',39,'Bluesport'),(141,'41',39,'Multivan'),(143,'679',39,'POLO(进口)'),(145,'1078',39,'Tiguan'),(147,'1218',39,'Variant'),(149,'586',39,'大众CC(进口)'),(151,'751',39,'大众E-UP'),(153,'49',39,'大众EOS'),(155,'635',39,'大众R36'),(157,'42',39,'辉腾'),(159,'48',39,'甲壳虫'),(161,'44',39,'迈腾(进口)'),(163,'587',39,'尚酷'),(165,'47',39,'途锐'),(167,'521',39,'夏朗'),(169,'549',23,'标致207'),(171,'71',23,'标致307'),(173,'1106',23,'标致408'),(175,'1262',23,'标致508'),(177,'1158',23,'5 by Peugeot'),(179,'685',23,'标致107'),(181,'416',23,'标致207CC'),(183,'567',23,'标致3008'),(185,'659',23,'标致308'),(187,'748',23,'标致4007'),(189,'69',23,'标致407'),(191,'67',23,'标致607'),(193,'1107',23,'标致RCZ'),(195,'1142',23,'标致RD'),(197,'756',53,'菲亚特Sedici'),(199,'732',53,'Fiorino Qubo'),(201,'79',53,'博悦'),(203,'966',53,'多宝'),(205,'568',53,'菲亚特500'),(207,'692',53,'菲亚特熊猫'),(209,'81',53,'领雅'),(211,'418',53,'朋多'),(213,'536',169,'晶锐'),(215,'86',169,'明锐'),(217,'638',169,'昊锐'),(219,'672',169,'YETI '),(221,'88',185,'爱丽舍'),(223,'92',185,'毕加索'),(225,'90',185,'凯旋'),(227,'87',185,'世嘉'),(229,'94',185,'雪铁龙C2'),(231,'937',185,'雪铁龙C5'),(233,'752',185,'C3毕加索'),(235,'562',185,'大C4毕加索'),(237,'581',185,'雪铁龙C3'),(239,'509',185,'雪铁龙C4'),(241,'515',185,'雪铁龙C5(进口)'),(243,'506',185,'雪铁龙C6'),(245,'646',185,'雪铁龙DS3'),(247,'1231',185,'雪铁龙DS4'),(249,'102',173,'沃尔沃S40'),(251,'634',173,'沃尔沃S80L'),(253,'97',173,'沃尔沃C30'),(255,'96',173,'沃尔沃C70'),(257,'520',173,'沃尔沃S60'),(259,'669',173,'沃尔沃V50'),(261,'671',173,'沃尔沃V70'),(263,'98',173,'沃尔沃XC60'),(265,'99',173,'沃尔沃XC90'),(267,'107',57,'S-MAX'),(269,'105',57,'福克斯'),(271,'109',57,'嘉年华'),(273,'104',57,'蒙迪欧致胜'),(275,'714',57,'福特-Fusion '),(277,'1269',57,'福特E'),(279,'1267',57,'福特F'),(281,'650',57,'福特Flex'),(283,'576',57,'福特Ka'),(285,'963',57,'福特Kuga'),(287,'713',57,'福特Taurus'),(289,'687',57,'福特iosis max'),(291,'1159',57,'锐界EDGE'),(293,'731',57,'野马'),(295,'103',57,'翼虎'),(297,'113',41,'凯领'),(299,'1004',41,'Durango '),(301,'913',41,'公羊'),(303,'112',41,'酷搏'),(305,'664',41,'酷威'),(307,'729',41,'挑战者'),(309,'725',41,'蝰蛇'),(311,'118',101,'铂锐'),(313,'119',101,'克莱斯勒300C'),(315,'115',101,'大捷龙'),(317,'114',101,'PT漫步者'),(319,'715',101,'克莱斯勒200C'),(321,'716',101,'克莱斯勒Sebring'),(323,'1230',101,'猎兽PROWLER'),(325,'123',25,'别克GL8'),(327,'121',25,'凯越'),(329,'120',25,'林荫大道'),(331,'122',25,'新君威'),(333,'1089',25,'新君越'),(335,'1110',25,'英朗'),(337,'451',25,'昂科雷'),(339,'136',129,'马自达2'),(341,'131',129,'马自达3'),(343,'132',129,'马自达6'),(345,'1160',129,'马自达8'),(347,'538',129,'睿翼'),(349,'129',129,'马自达3(进口)'),(351,'130',129,'马自达5'),(353,'654',129,'马自达CX-7'),(355,'724',129,'马自达MX-5 '),(357,'128',129,'马自达RX-8'),(359,'1263',133,'MG3'),(361,'137',133,'MG3 SW'),(363,'706',133,'MG5'),(365,'698',133,'MG6'),(367,'138',133,'MG7'),(369,'1272',183,'Sonic'),(371,'142',183,'景程'),(373,'630',183,'科鲁兹'),(375,'146',183,'乐风'),(377,'141',183,'新赛欧'),(379,'143',183,'乐驰'),(381,'445',183,'科帕奇'),(383,'1079',183,'斯帕可'),(385,'1161',183,'雪佛兰AVEO'),(387,'670',183,'雪佛兰Beat'),(389,'730',183,'雪佛兰Camaro '),(391,'717',183,'雪佛兰Malibu '),(393,'734',183,'雪佛兰Orlando'),(395,'662',183,'雪佛兰Traverse'),(397,'710',183,'雪佛兰V0LT'),(399,'151',19,'本田CRV'),(401,'936',19,'思铂睿'),(403,'150',19,'思域'),(405,'148',19,'奥德赛'),(407,'967',19,'本田pilot'),(409,'152',19,'飞度'),(411,'561',19,'锋范'),(413,'1109',19,'歌诗图'),(415,'149',19,'雅阁'),(417,'1174',19,'本田CRZ'),(419,'964',19,'本田Insight'),(421,'582',19,'本田Legend'),(423,'722',19,'本田S2000'),(425,'845',19,'思域 (进口)'),(427,'667',19,'雅阁Type S'),(429,'677',55,'汉兰达'),(431,'166',55,'凯美瑞'),(433,'168',55,'雅力士'),(435,'1261',55,'逸致'),(437,'1183',55,'丰田Auris'),(439,'642',55,'丰田RAV4'),(441,'169',55,'花冠'),(443,'163',55,'皇冠'),(445,'162',55,'卡罗拉'),(447,'165',55,'柯斯达'),(449,'164',55,'兰德酷路泽'),(451,'160',55,'普拉多'),(453,'161',55,'普锐斯'),(455,'159',55,'锐志'),(457,'167',55,'威驰'),(459,'157',55,'FJ酷路泽'),(461,'1236',55,'埃尔法'),(463,'712',55,'丰田Avensis'),(465,'680',55,'丰田Aygo'),(467,'743',55,'丰田FT-HS'),(469,'571',55,'丰田IQ'),(471,'742',55,'丰田MR2'),(473,'737',55,'丰田Venza'),(475,'733',55,'丰田Verso'),(477,'1265',55,'丰田ZELAS'),(479,'552',55,'海狮'),(481,'1126',55,'红杉'),(483,'900',55,'陆地巡洋舰'),(485,'564',55,'普拉多(进口)'),(487,'158',55,'普瑞维亚'),(489,'1125',55,'塞纳'),(491,'1128',55,'坦途'),(493,'572',119,'Splash'),(495,'264',119,'北斗星'),(497,'261',119,'浪迪'),(499,'265',119,'利亚纳'),(501,'172',119,'奥拓'),(503,'444',119,'羚羊'),(505,'174',119,'天语SX4'),(507,'1266',119,'天语·尚悦'),(509,'176',119,'雨燕'),(511,'171',119,'超级维特拉'),(513,'170',119,'吉姆尼'),(515,'1090',119,'凯泽西'),(517,'1179',119,'雨燕(进口)'),(519,'1100',147,'玛驰'),(521,'404',147,'奇骏'),(523,'189',147,'天籁'),(525,'194',147,'轩逸'),(527,'193',147,'阳光'),(529,'188',147,'颐达'),(531,'190',147,'逍客'),(533,'199',147,'骊威'),(535,'186',147,'骐达'),(537,'185',147,'ZN6493多功能车'),(539,'195',147,'帕拉丁'),(541,'595',147,'帕拉骐'),(543,'192',147,'日产D22皮卡'),(545,'1169',147,'日产NV200'),(547,'197',147,'锐骐多功能商用车'),(549,'187',147,'锐骐皮卡'),(551,'1271',147,'帅客 '),(553,'180',147,'Murano'),(555,'872',147,'碧莲'),(557,'178',147,'贵士'),(559,'588',147,'日产370Z'),(561,'700',147,'日产Cube'),(563,'641',147,'日产GT-R'),(565,'1143',147,'日产Juke'),(567,'798',147,'日产NUVU'),(569,'184',147,'途乐'),(571,'1091',147,'聆风'),(573,'205',159,'三菱戈蓝'),(575,'563',159,'三菱君阁'),(577,'1149',159,'三菱蓝瑟'),(579,'209',159,'三菱翼神'),(581,'558',159,'Eclipse'),(583,'415',159,'Lancer'),(585,'204',159,'格蓝迪'),(587,'202',159,'欧蓝德'),(589,'200',159,'帕杰罗(进口)'),(591,'1131',159,'三菱ASX劲炫'),(593,'702',159,'三菱Colt'),(595,'579',159,'三菱I'),(597,'757',143,'福瑞迪'),(599,'216',143,'嘉华'),(601,'1260',143,'起亚K5'),(603,'219',143,'锐欧'),(605,'218',143,'赛拉图'),(607,'217',143,'狮跑'),(609,'577',143,'秀尔'),(611,'221',143,'远舰'),(613,'1225',143,'智跑'),(615,'210',143,'霸锐'),(617,'1116',143,'凯尊'),(619,'805',143,'起亚VG'),(621,'1123',143,'起亚venga'),(623,'1052',143,'狮跑(进口)'),(625,'1085',143,'速迈'),(627,'212',143,'索兰托'),(629,'215',143,'威客'),(631,'211',143,'新佳乐'),(633,'560',181,'领翔'),(635,'235',181,'名驭'),(637,'1164',181,'瑞纳'),(639,'1270',181,'索纳塔'),(641,'233',181,'途胜'),(643,'645',181,'现代i30'),(645,'1094',181,'现代ix35'),(647,'234',181,'雅绅特'),(649,'231',181,'伊兰特'),(651,'232',181,'悦动'),(653,'1202',181,'辉翼'),(655,'413',181,'劳恩斯'),(657,'631',181,'劳恩斯酷派'),(659,'1153',181,'索纳塔YF'),(661,'527',181,'途胜（进口）'),(663,'224',181,'维拉克斯'),(665,'668',181,'现代i20'),(667,'511',181,'新胜达'),(669,'227',181,'雅科仕'),(671,'226',181,'雅尊'),(673,'364',113,'Elise'),(675,'585',113,'Evora'),(677,'950',113,'Exige'),(679,'928',113,'savvy'),(681,'246',141,'东方之子'),(683,'948',141,'风云2'),(685,'244',141,'奇瑞A1'),(687,'239',141,'奇瑞A3'),(689,'726',141,'奇瑞M14'),(691,'245',141,'奇瑞QQ3'),(693,'238',141,'奇瑞QQ6'),(695,'574',141,'奇瑞QQme'),(697,'1185',141,'旗云1'),(699,'1186',141,'旗云2'),(701,'1187',141,'旗云3'),(703,'241',141,'瑞虎'),(705,'1220',87,'金刚'),(707,'1219',87,'金鹰'),(709,'250',87,'美日'),(711,'254',87,'优利欧'),(713,'1222',87,'远景'),(715,'749',87,'中国龙'),(717,'1223',87,'自由舰'),(719,'951',21,'比亚迪E6'),(721,'258',21,'比亚迪F0'),(723,'257',21,'比亚迪F3'),(725,'259',21,'比亚迪F3R'),(727,'695',21,'比亚迪F5'),(729,'260',21,'比亚迪F6'),(731,'794',21,'比亚迪G3'),(733,'1113',21,'比亚迪G6'),(735,'1144',21,'比亚迪L3'),(737,'689',21,'比亚迪M6'),(739,'1087',21,'比亚迪S6'),(741,'256',21,'比亚迪S8'),(743,'263',31,'爱迪尔'),(745,'1253',33,'奔奔LOVE'),(747,'267',33,'奔奔MINI'),(749,'1252',33,'奔奔i'),(751,'1242',33,'长安CX20'),(753,'1184',33,'长安CX30'),(755,'709',33,'长安v802'),(757,'1250',33,'长安金牛星'),(759,'1167',33,'长安小卡'),(761,'910',33,'长安星光'),(763,'1166',33,'长安星卡'),(765,'984',33,'长安之星'),(767,'266',33,'杰勋'),(769,'628',33,'悦翔'),(771,'268',33,'志翔'),(773,'273',35,'风骏'),(775,'275',35,'哈弗H3'),(777,'783',35,'哈弗H5'),(779,'1168',35,'哈弗H6'),(781,'644',35,'哈弗M1'),(783,'803',35,'哈弗M2'),(785,'1178',35,'哈弗M3'),(787,'1175',35,'哈弗SC6'),(789,'524',35,'金迪尔'),(791,'271',35,'精灵'),(793,'593',35,'酷熊'),(795,'569',35,'凌傲'),(797,'570',35,'欧拉'),(799,'449',35,'赛酷'),(801,'534',35,'赛铃'),(803,'272',35,'赛影'),(805,'1172',35,'腾翼C30'),(807,'1171',35,'腾翼C50'),(809,'1176',35,'腾翼C70'),(811,'276',35,'腾翼V80'),(813,'405',35,'炫丽'),(815,'1082',67,'长丰Acumen'),(817,'1099',67,'飞铃皮卡'),(819,'905',67,'飞腾'),(821,'1098',67,'飞扬皮卡'),(823,'1033',67,'黑金刚'),(825,'277',67,'猎豹CS6'),(827,'648',67,'猎豹CS7'),(829,'526',67,'猎豹奇兵'),(831,'207',67,'帕杰罗'),(833,'278',67,'骐菱'),(835,'704',37,'MATERIA'),(837,'191',45,'奥丁'),(839,'1103',45,'帅客'),(841,'196',45,'御轩'),(843,'284',45,'景逸'),(845,'283',45,'菱智'),(847,'633',45,'东风轿跑车'),(849,'280',45,'汗马'),(851,'409',49,'V3菱悦'),(853,'412',49,'得利卡'),(855,'945',49,'东南V4'),(857,'946',49,'东南V5'),(859,'1256',49,'希旺'),(861,'759',195,'UFO-A380'),(863,'282',195,'飞碟UFO'),(865,'286',69,'哈飞路宝'),(867,'782',69,'路尊大霸王'),(869,'1140',69,'路尊小霸王'),(871,'1058',69,'民意'),(873,'287',69,'赛豹'),(875,'285',69,'赛马'),(877,'289',71,'福美来'),(879,'291',71,'海福星'),(881,'292',71,'海马3'),(883,'793',71,'海马Me'),(885,'791',71,'海马骑士'),(887,'557',71,'欢动'),(889,'293',71,'普力马'),(891,'789',71,'丘比特'),(893,'1151',71,'福仕达'),(895,'952',71,'海马王子'),(897,'294',95,'阁瑞斯'),(899,'408',95,'海狮'),(901,'1195',95,'海星'),(903,'629',111,'力帆320'),(905,'295',111,'力帆520'),(907,'417',111,'力帆620'),(909,'296',197,'中华骏捷'),(911,'684',197,'中华骏捷Cross'),(913,'298',197,'中华骏捷FRV'),(915,'1084',197,'中华骏捷FSV'),(917,'428',197,'中华骏捷Wagon'),(919,'297',197,'中华酷宝'),(921,'299',197,'中华尊驰'),(923,'302',77,'海锋'),(925,'300',77,'海尚'),(927,'303',77,'海迅'),(929,'301',77,'海域'),(931,'537',77,'海悦'),(933,'310',89,'宾悦'),(935,'796',89,'和悦'),(937,'795',89,'和悦RS'),(939,'309',89,'瑞风'),(941,'311',89,'瑞鹰'),(943,'548',89,'同悦'),(945,'584',89,'愿景'),(947,'939',89,'悦悦'),(949,'312',123,'风华'),(951,'314',123,'风尚'),(953,'313',123,'陆风X6'),(955,'760',123,'陆风X8'),(957,'475',123,'陆风X9'),(959,'1086',149,'荣威350'),(961,'315',149,'荣威550'),(963,'316',149,'荣威750'),(965,'1080',149,'荣威R95'),(967,'1194',149,'荣威W5'),(969,'933',149,'上海电动汽车'),(971,'318',163,'双环SCEO'),(973,'317',163,'小贵族'),(975,'943',187,'TFC-M1'),(977,'944',187,'TFC-M2'),(979,'320',187,'威乐'),(981,'321',187,'威志'),(983,'1254',187,'威志V2'),(985,'322',187,'威姿'),(987,'941',187,'夏利N5'),(989,'1101',187,'森雅M80'),(991,'1259',187,'森雅S80'),(993,'1276',201,'朗俊'),(995,'594',201,'朗悦'),(997,'328',201,'乐睿'),(999,'327',201,'众泰2008'),(1001,'1199',201,'众泰朗朗'),(1003,'333',7,'保时捷911'),(1005,'331',7,'保时捷Boxster'),(1007,'330',7,'保时捷Cayman'),(1009,'745',7,'保时捷Panamera'),(1011,'332',7,'卡宴'),(1013,'335',131,'迈巴赫'),(1015,'336',125,'MINI '),(1017,'686',125,'MINI CABRIO'),(1019,'337',125,'MINI CLUBMAN'),(1021,'693',125,'MINI COUNTRYMAN'),(1023,'932',125,'MINI E'),(1025,'407',135,'安德拉'),(1027,'707',135,'欧宝AMPERA'),(1029,'708',135,'欧宝CORSA'),(1031,'592',135,'欧宝Insignia'),(1033,'341',135,'赛飞利'),(1035,'339',135,'雅特'),(1037,'343',3,'DB9'),(1039,'342',3,'DBS'),(1041,'720',3,'ONE-77'),(1043,'968',3,'Rapide'),(1045,'938',3,'V12 vantage'),(1047,'517',3,'V8 vantage'),(1049,'929',27,'Continental Supersports'),(1051,'1147',27,'慕尚'),(1053,'345',27,'欧陆'),(1055,'344',27,'雅致'),(1057,'347',29,'布加迪威龙'),(1059,'1088',51,'458 Italia'),(1061,'589',51,'California'),(1063,'351',51,'法拉利599 '),(1065,'349',51,'法拉利612 '),(1067,'348',51,'法拉利F430'),(1069,'1273',51,'法拉利FF'),(1071,'440',93,'捷豹XF'),(1073,'353',93,'捷豹XJ'),(1075,'352',93,'捷豹XK'),(1077,'961',103,'Estoque'),(1079,'356',103,'Gallardo'),(1081,'744',103,'Insecta'),(1083,'357',103,'Murcielago'),(1085,'727',103,'Reventon'),(1087,'1139',105,'古斯特'),(1089,'358',105,'幻影'),(1091,'360',109,'风景'),(1093,'1235',109,'风朗'),(1095,'740',109,'科雷傲'),(1097,'666',109,'克力奥'),(1099,'359',109,'拉古娜'),(1101,'1148',109,'雷诺Wind'),(1103,'362',109,'梅甘娜 '),(1105,'1227',109,'纬度'),(1107,'365',121,'发现'),(1109,'366',121,'揽胜'),(1111,'653',121,'揽胜极光'),(1113,'1163',121,'揽胜运动版'),(1115,'955',121,'神行者'),(1117,'820',121,'卫士'),(1119,'368',127,'玛莎拉蒂Coupe'),(1121,'370',127,'玛莎拉蒂GT'),(1123,'1162',127,'玛莎拉蒂GranCabrio '),(1125,'369',127,'总裁'),(1127,'374',155,'萨博93'),(1129,'372',155,'萨博95 '),(1131,'728',155,'萨博9X'),(1133,'376',73,'悍马H2'),(1135,'375',73,'悍马H3'),(1137,'909',99,'SLS赛威'),(1139,'705',99,'凯迪拉克BLS'),(1141,'381',99,'凯迪拉克CTS'),(1143,'380',99,'凯迪拉克SRX'),(1145,'377',99,'凯迪拉克XLR'),(1147,'1130',99,'凯迪拉克XTS'),(1149,'378',99,'凯雷德'),(1151,'383',117,'城市'),(1153,'1216',117,'林肯MKS'),(1155,'1215',117,'林肯MKT '),(1157,'738',117,'林肯MKX'),(1159,'1214',117,'林肯MKZ '),(1161,'382',117,'领航员'),(1163,'1145',107,'雷克萨斯CT'),(1165,'389',107,'雷克萨斯ES'),(1167,'390',107,'雷克萨斯GS'),(1169,'832',107,'雷克萨斯GX'),(1171,'1122',107,'雷克萨斯HS'),(1173,'387',107,'雷克萨斯IS'),(1175,'723',107,'雷克萨斯LF-A'),(1177,'739',107,'雷克萨斯LF-Xh'),(1179,'391',107,'雷克萨斯LS'),(1181,'385',107,'雷克萨斯LX'),(1183,'384',107,'雷克萨斯RX'),(1185,'386',107,'雷克萨斯SC'),(1187,'991',107,'雷克萨斯混合动力'),(1189,'518',137,'讴歌MDX '),(1191,'519',137,'讴歌RL '),(1193,'392',137,'讴歌TL'),(1195,'718',137,'讴歌TSX'),(1197,'810',137,'讴歌ZDX'),(1199,'395',167,'傲虎'),(1201,'397',167,'驰鹏'),(1203,'396',167,'力狮'),(1205,'394',167,'森林人'),(1207,'930',167,'斯巴鲁G4e'),(1209,'393',167,'翼豹'),(1211,'962',191,'Essence'),(1213,'431',191,'英菲尼迪EX'),(1215,'496',191,'英菲尼迪FX'),(1217,'497',191,'英菲尼迪G'),(1219,'516',191,'英菲尼迪M'),(1221,'655',191,'英菲尼迪QX'),(1223,'400',165,'爱腾'),(1225,'402',165,'雷斯特'),(1227,'399',165,'路帝'),(1229,'401',165,'享御'),(1231,'1075',59,'风景'),(1233,'545',59,'风景快运'),(1235,'533',59,'迷迪'),(1237,'735',83,'爱国者'),(1239,'307',83,'大切诺基'),(1241,'306',83,'牧马人'),(1243,'305',83,'指挥官'),(1245,'308',83,'指南者'),(1247,'959',1,'Alfa 159'),(1249,'719',1,'Alfa 8C'),(1251,'681',1,'Alfa MiTo'),(1253,'541',91,'宝威'),(1255,'540',91,'全顺'),(1257,'1200',91,'驭胜'),(1259,'1155',79,'华泰B11'),(1261,'1156',79,'华泰B35'),(1263,'1207',79,'华泰元田B21'),(1265,'229',79,'圣达菲'),(1267,'236',79,'特拉卡'),(1269,'83',189,'得意'),(1271,'82',189,'都灵V'),(1273,'84',189,'欧霸'),(1275,'699',175,'五菱GP50'),(1277,'1217',175,'五菱宏光'),(1279,'547',175,'五菱荣光'),(1281,'554',175,'五菱之光'),(1283,'556',175,'小旋风'),(1285,'555',175,'兴旺'),(1287,'566',153,'Smart fortwo'),(1289,'632',139,'帕加尼Zonda'),(1291,'995',177,'Alhambra'),(1293,'674',177,'西亚特Altea'),(1295,'711',177,'西亚特Exeo '),(1297,'580',177,'西亚特Ibiza'),(1299,'753',177,'西亚特Leno'),(1301,'1050',161,'世爵C8'),(1303,'663',161,'世爵D12'),(1305,'652',13,'北汽B40'),(1307,'1206',13,'北汽B61'),(1309,'1224',13,'北汽C30'),(1311,'1196',13,'北汽C60'),(1313,'1197',13,'北汽C70'),(1315,'1198',13,'北汽C71'),(1317,'1152',13,'角斗士'),(1319,'1060',13,'陆霸'),(1321,'990',13,'骑士'),(1323,'661',13,'勇士'),(1325,'1165',13,'域胜007'),(1327,'1039',13,'战旗'),(1329,'1132',47,'风神H30'),(1331,'647',47,'风神S30'),(1333,'1135',81,'翱龙'),(1335,'1138',81,'傲骏'),(1337,'1134',81,'大柴神'),(1339,'1201',81,'法萨特NCV'),(1341,'1137',81,'挑战者'),(1343,'1136',81,'小柴神'),(1345,'1133',81,'新旗胜'),(1347,'1247',85,'奥轩'),(1349,'1237',85,'凯睿'),(1351,'1189',85,'帅豹'),(1353,'1190',85,'帅舰'),(1355,'1209',199,'长铃'),(1357,'1208',199,'旗舰A9'),(1359,'1211',199,'威虎'),(1361,'1203',199,'威虎G3'),(1363,'1210',199,'无限V5'),(1365,'1204',199,'无限V7'),(1367,'1141',193,'SC7(海景)'),(1369,'779',193,'TX4'),(1371,'780',193,'吉利GE'),(1373,'1249',193,'英伦SC5-RV'),(1375,'778',193,'英伦SC6'),(1377,'770',43,'帝豪EC7'),(1379,'771',43,'帝豪EC7-RV'),(1381,'772',43,'帝豪EC8'),(1383,'776',43,'帝豪ET9'),(1385,'773',43,'帝豪EV8'),(1387,'1258',43,'帝豪EX7'),(1389,'774',43,'帝豪EX8'),(1391,'775',43,'帝豪EX9'),(1393,'777',43,'帝豪GT'),(1395,'971',145,'全球鹰EK-2'),(1397,'972',145,'全球鹰GC5'),(1399,'974',145,'全球鹰GV5'),(1401,'1257',145,'全球鹰GX2'),(1403,'976',145,'全球鹰GX7'),(1405,'977',145,'全球鹰IG'),(1407,'970',145,'熊猫'),(1409,'978',145,'熊猫Cross'),(1411,'639',151,'奇瑞S18电动轿车'),(1413,'1170',151,'瑞麒G3'),(1415,'953',151,'瑞麒G5'),(1417,'578',151,'瑞麒G6'),(1419,'786',151,'瑞麒M1'),(1421,'1193',151,'瑞麒M2'),(1423,'1192',151,'瑞麒M5'),(1425,'1102',151,'瑞麒X1'),(1427,'1248',171,'威麟H3'),(1429,'1096',171,'威麟H5'),(1431,'1095',171,'威麟V5'),(1433,'986',171,'威麟V8'),(1435,'590',171,'威麟X5'),(1437,'1112',97,'优派'),(1439,'1150',97,'优胜'),(1441,'1114',97,'优雅'),(1443,'242',97,'优翼'),(1445,'1226',97,'优优'),(1447,'1233',65,'传祺'),(1449,'1274',61,'GMC3500'),(1451,'1241',61,'商务之星'),(1453,'969',17,'奔腾B50'),(1455,'323',17,'奔腾B70'),(1457,'643',75,'红旗HQE'),(1459,'947',75,'红旗SUV'),(1461,'507',75,'红旗盛世'),(1463,'319',179,'夏利'),(1465,'237',115,'竞速'),(1467,'550',115,'竞悦'),(1469,'1083',115,'莲花L3'),(1471,'1173',115,'莲花L5'),(1473,'1251',9,'宝骏630'),(1475,'1268',157,'斯派朗'),(1477,'1277',63,'Galue嘉路'),(1479,'1278',63,'Himiko女王'),(1481,'1279',63,'大蛇');
/*!40000 ALTER TABLE `pa_car_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:41
