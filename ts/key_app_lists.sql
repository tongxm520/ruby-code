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
-- Table structure for table `key_app_lists`
--

DROP TABLE IF EXISTS `key_app_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `key_app_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_key_id` int(11) DEFAULT NULL,
  `sys_app_list_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3730 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `key_app_lists`
--

LOCK TABLES `key_app_lists` WRITE;
/*!40000 ALTER TABLE `key_app_lists` DISABLE KEYS */;
INSERT INTO `key_app_lists` VALUES (31,30,1),(33,30,3),(35,30,4),(37,30,5),(39,30,7),(41,30,8),(43,30,9),(45,30,11),(47,30,114),(49,30,123),(61,34,1),(63,34,3),(65,34,4),(67,34,5),(69,34,7),(71,34,8),(73,34,9),(75,34,11),(77,34,114),(79,34,123),(91,51,1),(93,51,3),(95,51,4),(97,51,5),(99,51,7),(101,51,8),(103,51,9),(105,51,11),(107,51,114),(109,51,123),(121,69,1),(123,69,3),(125,69,4),(127,69,5),(129,69,7),(131,69,8),(133,69,9),(135,69,11),(137,69,114),(139,69,123),(151,81,1),(153,81,3),(155,81,4),(157,81,5),(159,81,7),(161,81,8),(163,81,9),(165,81,11),(167,81,114),(169,81,123),(181,91,1),(183,91,3),(185,91,4),(187,91,5),(189,91,7),(191,91,8),(193,91,9),(195,91,11),(197,91,114),(199,91,123),(211,109,1),(213,109,3),(215,109,4),(217,109,5),(219,109,7),(221,109,8),(223,109,9),(225,109,11),(227,109,114),(229,109,123),(241,111,1),(243,111,3),(245,111,4),(247,111,5),(249,111,7),(251,111,8),(253,111,9),(255,111,11),(257,111,114),(259,111,123),(271,115,1),(273,115,3),(275,115,4),(277,115,5),(279,115,7),(281,115,8),(283,115,9),(285,115,11),(287,115,114),(289,115,123),(301,117,1),(303,117,3),(305,117,4),(307,117,5),(309,117,7),(311,117,8),(313,117,9),(315,117,11),(317,117,114),(319,117,123),(331,119,1),(333,119,3),(335,119,4),(337,119,5),(339,119,7),(341,119,8),(343,119,9),(345,119,11),(347,119,114),(349,119,123),(451,143,1),(453,143,3),(455,143,4),(457,143,5),(459,143,7),(461,143,8),(463,143,9),(465,143,11),(467,143,114),(469,143,123),(471,8,16),(473,8,18),(475,8,19),(477,8,20),(479,8,22),(481,8,23),(483,8,24),(485,8,26),(487,8,111),(489,8,129),(491,8,131),(493,8,133),(495,8,135),(501,79,16),(503,79,18),(505,79,19),(507,79,20),(509,79,22),(511,79,23),(513,79,24),(515,79,26),(517,79,111),(519,79,129),(521,79,131),(523,79,133),(525,79,135),(531,87,16),(533,87,18),(535,87,19),(537,87,20),(539,87,22),(541,87,23),(543,87,24),(545,87,26),(547,87,111),(549,87,129),(551,87,131),(553,87,133),(555,87,135),(561,89,16),(563,89,18),(565,89,19),(567,89,20),(569,89,22),(571,89,23),(573,89,24),(575,89,26),(577,89,111),(579,89,129),(581,89,131),(583,89,133),(585,89,135),(591,93,16),(593,93,18),(595,93,19),(597,93,20),(599,93,22),(601,93,23),(603,93,24),(605,93,26),(607,93,111),(609,93,129),(611,93,131),(613,93,133),(615,93,135),(621,101,16),(623,101,18),(625,101,19),(627,101,20),(629,101,22),(631,101,23),(633,101,24),(635,101,26),(637,101,111),(639,101,129),(641,101,131),(643,101,133),(645,101,135),(651,103,16),(653,103,18),(655,103,19),(657,103,20),(659,103,22),(661,103,23),(663,103,24),(665,103,26),(667,103,111),(669,103,129),(671,103,131),(673,103,133),(675,103,135),(681,105,16),(683,105,18),(685,105,19),(687,105,20),(689,105,22),(691,105,23),(693,105,24),(695,105,26),(697,105,111),(699,105,129),(701,105,131),(703,105,133),(705,105,135),(711,107,16),(713,107,18),(715,107,19),(717,107,20),(719,107,22),(721,107,23),(723,107,24),(725,107,26),(727,107,111),(729,107,129),(731,107,131),(733,107,133),(735,107,135),(741,123,16),(743,123,18),(745,123,19),(747,123,20),(749,123,22),(751,123,23),(753,123,24),(755,123,26),(757,123,111),(759,123,129),(761,123,131),(763,123,133),(765,123,135),(771,133,16),(773,133,18),(775,133,19),(777,133,20),(779,133,22),(781,133,23),(783,133,24),(785,133,26),(787,133,111),(789,133,129),(791,133,131),(793,133,133),(795,133,135),(801,135,16),(803,135,18),(805,135,19),(807,135,20),(809,135,22),(811,135,23),(813,135,24),(815,135,26),(817,135,111),(819,135,129),(821,135,131),(823,135,133),(825,135,135),(831,147,16),(833,147,18),(835,147,19),(837,147,20),(839,147,22),(841,147,23),(843,147,24),(845,147,26),(847,147,111),(849,147,129),(851,147,131),(853,147,133),(855,147,135),(861,151,16),(863,151,18),(865,151,19),(867,151,20),(869,151,22),(871,151,23),(873,151,24),(875,151,26),(877,151,111),(879,151,129),(881,151,131),(883,151,133),(885,151,135),(891,155,16),(893,155,18),(895,155,19),(897,155,20),(899,155,22),(901,155,23),(903,155,24),(905,155,26),(907,155,111),(909,155,129),(911,155,131),(913,155,133),(915,155,135),(921,157,16),(923,157,18),(925,157,19),(927,157,20),(929,157,22),(931,157,23),(933,157,24),(935,157,26),(937,157,111),(939,157,129),(941,157,131),(943,157,133),(945,157,135),(951,159,16),(953,159,18),(955,159,19),(957,159,20),(959,159,22),(961,159,23),(963,159,24),(965,159,26),(967,159,111),(969,159,129),(971,159,131),(973,159,133),(975,159,135),(981,167,16),(983,167,18),(985,167,19),(987,167,20),(989,167,22),(991,167,23),(993,167,24),(995,167,26),(997,167,111),(999,167,129),(1001,167,131),(1003,167,133),(1005,167,135),(1011,169,16),(1013,169,18),(1015,169,19),(1017,169,20),(1019,169,22),(1021,169,23),(1023,169,24),(1025,169,26),(1027,169,111),(1029,169,129),(1031,169,131),(1033,169,133),(1035,169,135),(1041,173,16),(1043,173,18),(1045,173,19),(1047,173,20),(1049,173,22),(1051,173,23),(1053,173,24),(1055,173,26),(1057,173,111),(1059,173,129),(1061,173,131),(1063,173,133),(1065,173,135),(1071,1,1),(1073,85,1),(1075,95,1),(1077,97,1),(1079,99,1),(1081,113,1),(1083,121,1),(1085,127,1),(1087,145,1),(1089,149,1),(1091,1,3),(1093,85,3),(1095,95,3),(1097,97,3),(1099,99,3),(1101,113,3),(1103,121,3),(1105,127,3),(1107,145,3),(1109,149,3),(1111,1,4),(1113,85,4),(1115,95,4),(1117,97,4),(1119,99,4),(1121,113,4),(1123,121,4),(1125,127,4),(1127,145,4),(1129,149,4),(1131,1,5),(1133,85,5),(1135,95,5),(1137,97,5),(1139,99,5),(1141,113,5),(1143,121,5),(1145,127,5),(1147,145,5),(1149,149,5),(1151,1,7),(1153,85,7),(1155,95,7),(1157,97,7),(1159,99,7),(1161,113,7),(1163,121,7),(1165,127,7),(1167,145,7),(1169,149,7),(1171,1,8),(1173,85,8),(1175,95,8),(1177,97,8),(1179,99,8),(1181,113,8),(1183,121,8),(1185,127,8),(1187,145,8),(1189,149,8),(1191,1,9),(1193,85,9),(1195,95,9),(1197,97,9),(1199,99,9),(1201,113,9),(1203,121,9),(1205,127,9),(1207,145,9),(1209,149,9),(1211,1,11),(1213,85,11),(1215,95,11),(1217,97,11),(1219,99,11),(1221,113,11),(1223,121,11),(1225,127,11),(1227,145,11),(1229,149,11),(1231,1,114),(1233,85,114),(1235,95,114),(1237,97,114),(1239,99,114),(1241,113,114),(1243,121,114),(1245,127,114),(1247,145,114),(1249,149,114),(1251,1,123),(1253,85,123),(1255,95,123),(1257,97,123),(1259,99,123),(1261,113,123),(1263,121,123),(1265,127,123),(1267,145,123),(1269,149,123),(1271,1,137),(1273,85,137),(1275,95,137),(1277,97,137),(1279,99,137),(1281,113,137),(1283,121,137),(1285,127,137),(1287,145,137),(1289,149,137),(1325,45,46),(1327,47,46),(1329,49,46),(1331,57,46),(1333,59,46),(1335,63,46),(1337,67,46),(1339,73,46),(1341,139,46),(1343,45,48),(1345,47,48),(1347,49,48),(1349,57,48),(1351,59,48),(1353,63,48),(1355,67,48),(1357,73,48),(1359,139,48),(1361,45,49),(1363,47,49),(1365,49,49),(1367,57,49),(1369,59,49),(1371,63,49),(1373,67,49),(1375,73,49),(1377,139,49),(1379,45,50),(1381,47,50),(1383,49,50),(1385,57,50),(1387,59,50),(1389,63,50),(1391,67,50),(1393,73,50),(1395,139,50),(1397,45,52),(1399,47,52),(1401,49,52),(1403,57,52),(1405,59,52),(1407,63,52),(1409,67,52),(1411,73,52),(1413,139,52),(1415,45,53),(1417,47,53),(1419,49,53),(1421,57,53),(1423,59,53),(1425,63,53),(1427,67,53),(1429,73,53),(1431,139,53),(1433,45,54),(1435,47,54),(1437,49,54),(1439,57,54),(1441,59,54),(1443,63,54),(1445,67,54),(1447,73,54),(1449,139,54),(1451,45,56),(1453,47,56),(1455,49,56),(1457,57,56),(1459,59,56),(1461,63,56),(1463,67,56),(1465,73,56),(1467,139,56),(1469,45,113),(1471,47,113),(1473,49,113),(1475,57,113),(1477,59,113),(1479,63,113),(1481,67,113),(1483,73,113),(1485,139,113),(1487,45,116),(1489,47,116),(1491,49,116),(1493,57,116),(1495,59,116),(1497,63,116),(1499,67,116),(1501,73,116),(1503,139,116),(1505,45,117),(1507,47,117),(1509,49,117),(1511,57,117),(1513,59,117),(1515,63,117),(1517,67,117),(1519,73,117),(1521,139,117),(1523,45,120),(1525,47,120),(1527,49,120),(1529,57,120),(1531,59,120),(1533,63,120),(1535,67,120),(1537,73,120),(1539,139,120),(1541,45,127),(1543,47,127),(1545,49,127),(1547,57,127),(1549,59,127),(1551,63,127),(1553,67,127),(1555,73,127),(1557,139,127),(1579,32,61),(1581,32,63),(1583,32,64),(1585,32,65),(1587,32,67),(1589,32,68),(1591,32,69),(1593,32,71),(1595,32,112),(1597,32,115),(1599,32,118),(1601,32,119),(1603,32,125),(1605,35,61),(1607,35,63),(1609,35,64),(1611,35,65),(1613,35,67),(1615,35,68),(1617,35,69),(1619,35,71),(1621,35,112),(1623,35,115),(1625,35,118),(1627,35,119),(1629,35,125),(1631,37,61),(1633,37,63),(1635,37,64),(1637,37,65),(1639,37,67),(1641,37,68),(1643,37,69),(1645,37,71),(1647,37,112),(1649,37,115),(1651,37,118),(1653,37,119),(1655,37,125),(1657,43,61),(1659,43,63),(1661,43,64),(1663,43,65),(1665,43,67),(1667,43,68),(1669,43,69),(1671,43,71),(1673,43,112),(1675,43,115),(1677,43,118),(1679,43,119),(1681,43,125),(1683,53,61),(1685,53,63),(1687,53,64),(1689,53,65),(1691,53,67),(1693,53,68),(1695,53,69),(1697,53,71),(1699,53,112),(1701,53,115),(1703,53,118),(1705,53,119),(1707,53,125),(1709,55,61),(1711,55,63),(1713,55,64),(1715,55,65),(1717,55,67),(1719,55,68),(1721,55,69),(1723,55,71),(1725,55,112),(1727,55,115),(1729,55,118),(1731,55,119),(1733,55,125),(1735,61,61),(1737,61,63),(1739,61,64),(1741,61,65),(1743,61,67),(1745,61,68),(1747,61,69),(1749,61,71),(1751,61,112),(1753,61,115),(1755,61,118),(1757,61,119),(1759,61,125),(1761,65,61),(1763,65,63),(1765,65,64),(1767,65,65),(1769,65,67),(1771,65,68),(1773,65,69),(1775,65,71),(1777,65,112),(1779,65,115),(1781,65,118),(1783,65,119),(1785,65,125),(1787,71,61),(1789,71,63),(1791,71,64),(1793,71,65),(1795,71,67),(1797,71,68),(1799,71,69),(1801,71,71),(1803,71,112),(1805,71,115),(1807,71,118),(1809,71,119),(1811,71,125),(1813,77,61),(1815,77,63),(1817,77,64),(1819,77,65),(1821,77,67),(1823,77,68),(1825,77,69),(1827,77,71),(1829,77,112),(1831,77,115),(1833,77,118),(1835,77,119),(1837,77,125),(1839,83,61),(1841,83,63),(1843,83,64),(1845,83,65),(1847,83,67),(1849,83,68),(1851,83,69),(1853,83,71),(1855,83,112),(1857,83,115),(1859,83,118),(1861,83,119),(1863,83,125),(1865,125,61),(1867,125,63),(1869,125,64),(1871,125,65),(1873,125,67),(1875,125,68),(1877,125,69),(1879,125,71),(1881,125,112),(1883,125,115),(1885,125,118),(1887,125,119),(1889,125,125),(1891,131,61),(1893,131,63),(1895,131,64),(1897,131,65),(1899,131,67),(1901,131,68),(1903,131,69),(1905,131,71),(1907,131,112),(1909,131,115),(1911,131,118),(1913,131,119),(1915,131,125),(1917,137,61),(1919,137,63),(1921,137,64),(1923,137,65),(1925,137,67),(1927,137,68),(1929,137,69),(1931,137,71),(1933,137,112),(1935,137,115),(1937,137,118),(1939,137,119),(1941,137,125),(1943,141,61),(1945,141,63),(1947,141,64),(1949,141,65),(1951,141,67),(1953,141,68),(1955,141,69),(1957,141,71),(1959,141,112),(1961,141,115),(1963,141,118),(1965,141,119),(1967,141,125),(1969,153,61),(1971,153,63),(1973,153,64),(1975,153,65),(1977,153,67),(1979,153,68),(1981,153,69),(1983,153,71),(1985,153,112),(1987,153,115),(1989,153,118),(1991,153,119),(1993,153,125),(2089,7,80),(2091,7,81),(2093,7,82),(2095,7,88),(2097,7,89),(2099,7,90),(2103,171,16),(2107,171,19),(2113,171,23),(2115,171,24),(2117,171,26),(2129,171,139),(2131,171,141),(2133,171,151),(2135,171,153),(2137,171,155),(2139,171,157),(2141,171,171),(2165,175,46),(2169,175,49),(2175,175,53),(2177,175,54),(2179,175,56),(2191,175,159),(2193,175,161),(2195,175,163),(2197,175,165),(2199,175,167),(2201,175,169),(2203,175,173),(2227,119,137),(2229,143,137),(2231,177,16),(2233,177,19),(2235,177,23),(2237,177,24),(2239,177,26),(2241,177,139),(2243,177,141),(2245,177,151),(2247,177,153),(2249,177,155),(2251,177,157),(2253,177,171),(2261,179,16),(2263,179,19),(2265,179,23),(2267,179,24),(2269,179,26),(2271,179,139),(2273,179,141),(2275,179,151),(2277,179,153),(2279,179,155),(2281,179,157),(2283,179,171),(2291,181,16),(2293,181,19),(2295,181,23),(2297,181,24),(2299,181,26),(2301,181,139),(2303,181,141),(2311,181,157),(2313,181,171),(2321,183,16),(2323,183,19),(2325,183,23),(2327,183,24),(2329,183,26),(2331,183,139),(2333,183,141),(2335,183,157),(2337,183,171),(2351,185,16),(2353,185,19),(2355,185,23),(2357,185,24),(2359,185,26),(2361,185,139),(2363,185,141),(2365,185,157),(2367,185,171),(2411,187,16),(2413,187,19),(2415,187,23),(2417,187,24),(2419,187,26),(2421,187,139),(2423,187,141),(2425,187,157),(2427,187,171),(2441,189,1),(2445,189,4),(2447,189,5),(2449,189,7),(2451,189,8),(2453,189,9),(2471,189,175),(2473,189,179),(2475,189,181),(2479,189,177),(2481,189,114),(2483,191,46),(2485,191,49),(2487,191,53),(2489,191,54),(2491,191,56),(2493,191,159),(2495,191,161),(2497,191,163),(2499,191,165),(2501,191,167),(2503,191,169),(2505,191,173),(2513,193,16),(2515,193,23),(2517,193,22),(2519,193,20),(2521,193,19),(2523,193,24),(2525,193,135),(2529,193,185),(2531,193,187),(2533,193,189),(2535,193,191),(2537,195,201),(2539,195,199),(2541,195,197),(2543,195,195),(2545,195,119),(2547,195,69),(2549,195,68),(2551,195,67),(2553,195,65),(2555,195,64),(2557,195,61),(2559,197,211),(2561,197,209),(2563,197,207),(2565,197,205),(2567,197,120),(2569,197,54),(2571,197,53),(2573,197,52),(2575,197,50),(2577,197,49),(2579,197,46),(2581,193,217),(2583,197,221),(2585,195,219),(2587,189,215),(2589,199,16),(2591,199,23),(2593,199,22),(2595,199,20),(2597,199,19),(2599,199,24),(2601,199,135),(2603,199,185),(2605,199,187),(2607,199,189),(2609,199,191),(2611,199,217),(2619,203,16),(2621,203,23),(2623,203,22),(2625,203,20),(2627,203,19),(2629,203,24),(2631,203,135),(2633,203,185),(2635,203,187),(2637,203,189),(2639,203,191),(2641,203,217),(2649,205,16),(2651,205,23),(2653,205,22),(2655,205,20),(2657,205,19),(2659,205,24),(2661,205,135),(2663,205,185),(2665,205,187),(2667,205,189),(2669,205,191),(2671,205,217),(2679,207,16),(2681,207,23),(2683,207,22),(2685,207,20),(2687,207,19),(2689,207,24),(2691,207,135),(2693,207,185),(2695,207,187),(2697,207,189),(2699,207,191),(2701,207,217),(2709,209,16),(2711,209,23),(2713,209,22),(2715,209,20),(2717,209,19),(2719,209,24),(2721,209,135),(2723,209,185),(2725,209,187),(2727,209,189),(2729,209,191),(2731,209,217),(2739,201,1),(2741,201,4),(2743,201,5),(2745,201,7),(2747,201,8),(2749,201,9),(2751,201,175),(2753,201,179),(2755,201,181),(2757,201,177),(2759,201,114),(2761,201,215),(2769,211,1),(2771,211,4),(2773,211,5),(2775,211,7),(2777,211,8),(2779,211,9),(2781,211,175),(2783,211,179),(2785,211,181),(2787,211,177),(2789,211,114),(2791,211,215),(2799,213,211),(2801,213,209),(2803,213,207),(2805,213,205),(2807,213,120),(2809,213,54),(2811,213,53),(2813,213,52),(2815,213,50),(2817,213,49),(2819,213,46),(2821,213,221),(2829,215,211),(2831,215,209),(2833,215,207),(2835,215,205),(2837,215,120),(2839,215,54),(2841,215,53),(2843,215,52),(2845,215,50),(2847,215,49),(2849,215,46),(2851,215,221),(2859,217,211),(2861,217,209),(2863,217,207),(2865,217,205),(2867,217,120),(2869,217,54),(2871,217,53),(2873,217,52),(2875,217,50),(2877,217,49),(2879,217,46),(2881,217,221),(2889,221,16),(2891,221,23),(2893,221,22),(2895,221,20),(2897,221,19),(2899,221,24),(2901,221,135),(2903,221,185),(2905,221,187),(2907,221,189),(2909,221,191),(2911,221,217),(2919,223,201),(2921,223,199),(2923,223,197),(2925,223,195),(2927,223,119),(2929,223,69),(2931,223,68),(2933,223,67),(2935,223,65),(2937,223,64),(2939,223,61),(2941,223,219),(2949,225,16),(2951,225,23),(2953,225,22),(2955,225,20),(2957,225,19),(2959,225,24),(2961,225,135),(2963,225,185),(2965,225,187),(2967,225,189),(2969,225,191),(2971,225,217),(2979,227,211),(2981,227,209),(2983,227,207),(2985,227,205),(2987,227,120),(2989,227,54),(2991,227,53),(2993,227,52),(2995,227,50),(2997,227,49),(2999,227,46),(3001,227,221),(3009,229,201),(3011,229,199),(3013,229,197),(3015,229,195),(3017,229,119),(3019,229,69),(3021,229,68),(3023,229,67),(3025,229,65),(3027,229,64),(3029,229,61),(3031,229,219),(3039,231,223),(3041,231,225),(3043,231,227),(3045,231,229),(3047,231,231),(3049,231,233),(3051,231,235),(3053,231,237),(3055,231,215),(3057,231,239),(3059,231,175),(3061,231,177),(3063,231,179),(3065,231,241),(3067,219,61),(3069,219,63),(3071,219,64),(3073,219,65),(3075,219,67),(3077,219,68),(3079,219,69),(3081,219,71),(3083,219,112),(3085,219,115),(3087,219,118),(3089,219,119),(3091,219,125),(3093,233,227),(3095,233,229),(3099,233,245),(3101,233,247),(3103,233,249),(3105,233,251),(3107,233,253),(3109,233,255),(3123,237,227),(3125,237,229),(3127,237,245),(3129,237,247),(3131,237,249),(3133,237,251),(3135,237,253),(3137,237,255),(3139,241,227),(3141,241,229),(3143,241,245),(3145,241,247),(3147,241,249),(3149,241,251),(3151,241,253),(3153,241,255),(3169,243,227),(3171,243,229),(3173,243,245),(3175,243,247),(3177,243,249),(3179,243,251),(3181,243,253),(3183,243,255),(3199,245,227),(3201,245,229),(3203,245,245),(3205,245,247),(3207,245,249),(3209,245,251),(3211,245,253),(3213,245,255),(3229,247,227),(3231,247,229),(3233,247,245),(3235,247,247),(3237,247,249),(3239,247,251),(3241,247,253),(3243,247,255),(3259,233,443),(3261,235,445),(3263,235,227),(3265,235,229),(3267,235,245),(3269,235,247),(3271,235,249),(3273,235,251),(3275,235,253),(3277,235,255),(3293,245,443),(3295,247,443),(3297,251,1),(3299,251,4),(3301,251,5),(3303,251,7),(3305,251,8),(3307,251,9),(3309,251,175),(3311,251,179),(3315,251,177),(3317,251,114),(3319,251,215),(3327,253,1),(3329,253,4),(3331,253,5),(3333,253,7),(3335,253,8),(3337,253,9),(3339,253,175),(3341,253,179),(3343,253,181),(3345,253,177),(3347,253,114),(3349,253,215),(3361,255,16),(3363,255,23),(3365,255,22),(3367,255,20),(3369,255,19),(3371,255,24),(3373,255,135),(3375,255,185),(3377,255,187),(3379,255,189),(3381,255,191),(3383,255,217),(3391,249,445),(3393,249,227),(3395,249,229),(3397,249,245),(3399,249,247),(3401,249,249),(3403,249,251),(3405,249,253),(3407,249,255),(3421,263,445),(3423,263,227),(3425,263,229),(3427,263,245),(3429,263,247),(3431,263,249),(3433,263,251),(3435,263,253),(3437,263,255),(3451,265,445),(3453,265,227),(3455,265,229),(3457,265,245),(3459,265,247),(3461,265,249),(3463,265,251),(3465,265,253),(3467,265,255),(3481,267,445),(3483,267,227),(3485,267,229),(3487,267,245),(3489,267,247),(3491,267,249),(3493,267,251),(3495,267,253),(3497,267,255),(3511,269,445),(3513,269,227),(3515,269,229),(3517,269,245),(3519,269,247),(3521,269,249),(3523,269,251),(3525,269,253),(3527,269,255),(3541,271,445),(3543,271,227),(3545,271,229),(3547,271,245),(3549,271,247),(3551,271,249),(3553,271,251),(3555,271,253),(3557,271,255),(3571,273,445),(3573,273,227),(3575,273,229),(3577,273,245),(3579,273,247),(3581,273,249),(3583,273,251),(3585,273,253),(3587,273,255),(3601,275,445),(3603,275,227),(3605,275,229),(3607,275,245),(3609,275,247),(3611,275,249),(3613,275,251),(3615,275,253),(3617,275,255),(3631,277,445),(3633,277,227),(3635,277,229),(3637,277,245),(3639,277,247),(3641,277,249),(3643,277,251),(3645,277,253),(3647,277,255),(3661,279,445),(3663,279,227),(3665,279,229),(3667,279,245),(3669,279,247),(3671,279,249),(3673,279,251),(3675,279,253),(3677,279,255),(3691,281,445),(3693,281,227),(3695,281,229),(3697,281,245),(3699,281,247),(3701,281,249),(3703,281,251),(3705,281,253),(3707,281,255),(3709,295,1),(3711,295,4),(3713,295,5),(3715,295,7),(3717,295,8),(3719,295,9),(3721,295,175),(3723,295,179),(3725,295,177),(3727,295,114),(3729,295,215);
/*!40000 ALTER TABLE `key_app_lists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:24:17
