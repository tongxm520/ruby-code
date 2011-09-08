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
-- Table structure for table `code_configs`
--

DROP TABLE IF EXISTS `code_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `code_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL COMMENT '状态代码',
  `value` varchar(400) DEFAULT NULL COMMENT '错误提示语言',
  `description` text COMMENT '代码位置描述信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`),
  KEY `number_index` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8 COMMENT='错误代码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code_configs`
--

LOCK TABLES `code_configs` WRITE;
/*!40000 ALTER TABLE `code_configs` DISABLE KEYS */;
INSERT INTO `code_configs` VALUES (1,0,'ok','程序内部状态提示，部分需要成功返回提示的接口则不会显示OK，但状态也为0'),(2,9999,'未知错误','接口统一处理：无法预料的错误，这个一般为程序BUG引起'),(3,10001,'未遵守接口协议，未通过授权，请详细阅读ETouch接口文档','程序内部提示，终端调用没有按接口规范调用，属于未授权的调用'),(4,10002,'参数解析错误:$1','程序内部提示，终端调用没有按接口规范的参数调用'),(5,404,'抱歉，您查询的内容不存在','查询不到数据提示'),(6,50000,'宝宝转已经分配完毕,请稍候再试','宝宝转都在工作,过一会再来试试吧'),(9,50003,'此账户已在另一台手机上使用宝宝转，强制对方下线，数据将会丢失。','启动宝宝转传送上次未传数据提示'),(10,50004,'此账户已在网站上使用宝宝转，强制对方下线，数据将会丢失。','网页已经使用，是否复位'),(11,50005,'此机器已经失效，请更换新宝宝转！',''),(12,50006,'宝宝转机器已经用完，请稍后再试！',''),(13,50007,'数据已经提交过',NULL),(17,10003,'您本次操作获得积分:$1','用户操作获取积分提示'),(18,10004,'您的宝币不够支付此地，快去挖币吧','宝币数不够支付店铺提示'),(19,10005,'您可能被对方拉入黑名单，交易失败！','买卖店铺时，拉入黑名单提示'),(28,10006,'您的宝币数不够支付此地！','**此提示已经不用**宝币数不够支付店铺提示'),(29,10007,'您头衔太低，宝币太少无法拥有此地，快去挖币吧','无资格购买地提示'),(30,10008,'未知错误，购买不成功！','由于数据原因或者BUG问题导致，属于买地铺保底提示'),(31,10009,'当前地点关闭提示发出，等待系统审核','店铺关门后的提示'),(32,10010,'恭喜，您买地成功','购买有地主宝地成功提示'),(33,10011,'未知错误，卖地操作不成功','由于数据原因或者BUG问题导致，属于卖店保底提示'),(34,10012,'购买请求已发送，等待地主确认','**已经不使用**购买时发送等待对方确认提示'),(35,10013,'出售成功','卖家出售完成提示'),(36,10014,'交易已经完成','交易已经完成提示'),(37,10015,'拒绝出售消息发送成功','拒绝出售操作后提示'),(38,10016,'统一拒绝出售消息发送成功','统一拒绝出售操作后提示'),(39,10017,'拒绝出售消息发送失败','拒绝出售操作，如果发送消息失败的提示'),(40,10018,'添加好友信息已发送，等待对方确认!','加好友提示'),(41,10019,'加好友消息发送失败!','加好友发送信息失败提示'),(42,10020,'站内信发送成功!','发站内信成功提示'),(43,10021,'站内信发送失败!','发站内信失败提示'),(44,10022,'添加好友成功!','添加好友成功提示'),(45,10023,'接受好友未成功','确认加好友操作失败提示'),(46,10024,'拒绝加好友信息发送成功','拒绝加好友操作后成功提示'),(47,10025,'拒绝加好友信息发送失败','拒绝加好友操作失败后提示'),(48,10026,'用户名/密码错误，登陆失败！','登陆失败提示'),(49,10027,'登陆成功','登陆成功提示'),(50,10028,'登陆失败','未知原因登陆失败提示'),(51,10029,'此用户或邮箱已经被注册！','用户注册时用户名邮箱被占用提示'),(52,10030,'恭喜您，注册成功，宝宝转赠送$1宝币！','用户注册成功提示'),(53,10031,'注册失败！','用户注册失败提示，属于保底提示'),(54,10032,'订阅分类失败！','订阅分类失败提示'),(55,10033,'这张优惠券已经过期,编号 : $1','优惠券过期提示'),(56,10034,'这优惠券已经被下载完了,编号 : $1','优惠券下载完提示'),(57,10035,'该优惠券您已经下载超限,请明天再试!','优惠券下载超限提示'),(58,10036,'您要下载的优惠券编号:$1, 其中编号为:$2的优惠券下载失败。其它优惠券下载成功！','下载优惠券部分成功，部分失败的提示'),(59,10037,'未绑定手机号码','未绑定手机提示'),(60,10038,'无效的用户','获取用户失败，属于程序内部提示，一般为程序BUG'),(61,10039,'本次操作得积分:$1','某项操作成功后获得积分提示'),(62,10040,'可以购买此地, 需花$1宝币','可以购买地页面提示'),(63,10041,'购买消息发送成功，等待对方确认，您本次的交易宝币将被暂时冻结至交易结束。','购买操作成功提示'),(64,10042,'出售成功','**已经不使用**出售完成提示'),(65,10043,'统一拒绝出售请求处理失败！','批量不卖请求操作成功提示'),(66,10044,'您已经买过此地，正在等待卖家确认','用户多次买地的提示'),(67,10045,'您已请求加对方为好友，正等待对方确认!','已经加对方为好友，结果仍继续加的提示'),(68,10046,'对方已经是您的好友!','加好友时对方已经是好友提示'),(69,10047,'需要输入账号与密码','邀请好友没有账号、密码提示'),(70,10048,'邀请好友成功！','邀请好友成功提示'),(71,10049,'提交个人信息成功！','完善个人信息成功提示'),(72,10050,'电话号码:$1, 已经被使用!','注册时电话已经被使用提示'),(73,10051,'装修宝地完成,后台审核中...','装修店铺完成提示'),(74,10052,'上传图片完成','终端上传图片成功提示'),(75,10053,'用户名、邮箱、密码不能为空','注册时没有用户名，邮箱，密码提示'),(76,10054,'身份转换中','获取用户头衔出现后台数据错误的提示'),(77,10055,'买家$1花$2宝币买你的宝地','获取店的买家列表的描述'),(78,10056,'匿名用户','获取不到用户的姓名提示'),(79,10057,'当前宝币：$1','用户的当前宝币数显示'),(80,10058,'目前可兑换的最贵的奖品是: $1','目前可兑换的最贵的奖品提示'),(81,10059,'再赚$1个宝币就能领取一个$2','用户还需要多少币能领取下一奖品'),(82,10060,'操作未知','获取不到用户的操作类型时的提示'),(83,10061,'$1获得$2宝币','已不使用，描述宝币是如何获得的'),(84,10062,'$1支出$2宝币','描述宝币是如何支出的'),(85,10063,'兑换奖品$1使用$2宝币','兑换奖品列表描述'),(86,10064,'升级还需$1积分','用户资料头衔中显示'),(87,10065,'$1：$2 - $3积分','用户资料头衔列表显示'),(88,10066,'当前可以免费占地$1块','用户资料积分处显示'),(89,10067,'$1 - $2积分 $3','用户资料积分列表显示'),(90,10068,'下级级数：$1级','用户资料下级级数显示'),(91,10069,'当前家族人数：$1','用户资料当前家族人数显示'),(92,10070,'未知类型','消息类型不明确提示'),(93,10071,'未知时间','显示多少时间前的地方如果没有时间的提示'),(94,10072,'暂无商家名称','获取商家名称失败提示'),(96,10073,'订阅商铺信息失败！','订阅商铺信息失败提示'),(97,10074,'收藏优惠失败！','收藏优惠失败提示'),(98,10075,'由于您的级别够高，购买此地没有支付宝币，系统赠与！','购买无主宝地提示'),(99,10076,'买家$1想买你的$2,是否同意','买地站内信提示内容'),(100,100000,'用户名不能为空，且长度在2到40个字符之间！','注册页面：当光标离开用户名文本框的时候做的提示'),(101,100001,'很遗憾，此用户名已被占用','注册页面:当光标离开用户名文本框时做的提示'),(102,100002,'恭喜你，此用户名可用','注册页面:当光标离开用户名文本框时给的提示'),(103,100003,'email格式不正确','注册页面:当光标离开email文本框时给的提示'),(104,100004,'很遗憾，email已被注册过','注册页面:当光标离开email文本框时给的提示'),(105,100005,'恭喜你，$1可以使用','注册页面:当光标离开email文本框时给的提示'),(106,100006,'感谢您对我们的支持，谢谢','用户反馈页面:用户反馈成功'),(107,100007,'对不起，提交失败，可能是服务器太忙....','用户反馈页面：当数据库崩溃时的提示'),(108,100008,'用户$1向你推荐店铺$2','系统站内信:推荐店铺时给的站内信息标题'),(109,100009,'推荐给用户$1成功。','推荐店铺页面：推荐成功时提示。$1处填写如: zhangsan,lisi'),(110,100010,'推荐给用户xx失败,可能对方将您列入黑名单','推荐店铺页面，推荐失败时提示 xx处填写如: zhangsan,lisi 注意：xx之前一定要有汉字'),(111,100011,'发生未知错误，请联系客服','有东家店铺同意卖店提示：当数据库发生故障时提示'),(112,100012,'交易成功','有东家店铺同意卖店提示：交易成功提示'),(113,100013,'发送消息失败，可能是由于对方将您列入黑名单','有东家店铺同意卖店提示：由于发送消息失败而导致的交易失败'),(114,100014,'宝地已经交易完成','有地主宝地同意卖店提示：由于用户作弊导致在页面上可以点击卖出不在出售列表中的店铺'),(115,100015,'此地不是你的，您不能出售','有宝地同意卖地提示：由于用户作弊导致在页面上可以点击卖出别人的店铺'),(116,100016,'发生未知错误，请联系客服','有东家店铺不同意卖店提示:发生数据库故障的情况下的提示'),(117,100017,'拒绝成功','有东家店铺不同意卖店提示：不同意卖店的提示'),(118,100018,'发送消息失败，可能是由于对方将您列入黑名单','有东家店铺不同意卖店提示：由于发送消息失败而导致的交易失败'),(119,100019,'此地已经交易完成','有地主宝地不同意卖地提示：由于用户作弊导致在页面上可以点击卖出不在出售列表中的店铺'),(120,100020,'这些地不是你的，您不能操作','有地主宝地不同意卖地提示：由于用户作弊导致在页面上可以点击卖出别人的店铺'),(121,100021,'数据输入错误','购买有地主的店铺发起请求页面：当等待天数为0 或 出的钱为 0'),(122,100022,'本店铺暂时没有地主，请到$1进行交易','购买有东家店铺页面：由于其它原因导致本来无东家店铺的购买流程进入有东家购买流程   $1处替换字符为 有超链接的 这里'),(123,100023,'已将交易信息发送给卖家，请耐心等待','购买有东家店铺页面：发送请求成功'),(124,100024,'宝币余额小于填写金额，请重新填写','购买有东家店铺页面：支持议价时，当自己的宝币小于填写金额时提示'),(125,100025,'消息发送失败，可能由于你被对方拉入了黑名单','购买有东家店铺页面：购买时由于发送消息失败而导致请求发送失败'),(126,100026,'未知错误，请联系本网站客服','购买有东家店铺页面：数据库发生崩溃时的提示'),(127,100027,'您的宝币不足,购买失败','购买无东家页面:宝币不足时的提示'),(128,100028,'交易失败，请联系客服或重试','购买无东家页面:数据库崩溃时提示'),(129,100029,'你已成功盘此店','购买无东家页面:成功盘店时提示'),(130,100030,'这块地经是你的啦，快回去经营吧','购买无地主页面:重复占地时提示'),(131,100031,'此地已被用户$1盘走','购买无主宝地页面:多个人同时占一块地时，地被人盘走时提示'),(132,100032,'消息发送成功，请耐心等待对方的回复','添加好友页面:添加好友成功时提示，目前加为好友不需要对方确认'),(133,100033,'消息发送失败，可能是由于对方屏蔽了您的消息','添加好友页面:添加好友成功时提示，目前加为好友不需要对方确认'),(134,100034,'消息发送成功','介绍好友页面：介绍好友成功'),(135,100035,'介绍请求发送失败，可能是由于对方其中一个人屏蔽了您的消息','介绍好友页面：介绍好友失败'),(136,100036,'消息发送失败，可能是由于对输入的用户名不存在','发送消息页面,对方用户名是可输入的，如果用户名输入错误的提示信息'),(137,100037,'消息发送成功','发送消息页面：发送消息成功'),(138,100038,'消息发送失败，可能是由于对方屏蔽了您的消息','发送消息页面：发送消息失败，有可能是对方把发消息者拉入黑名单'),(139,100039,'赠朋友宝币不能小于1','赠宝币页面：赠送宝币数目小于1时提示'),(140,100040,'朋友电话不存在或与提交的不符，对方完善个人信息后，方可赠给对方宝币','赠宝币页面：对方电话不正确时提示'),(141,100041,'你的电话不存在或与提交的不符，完善个人信息后，方可赠给对方宝币','赠宝币页面：自己电话不正确时提示'),(142,100042,'赠宝币成功','赠宝币页面：赠送宝币成功'),(143,100043,'赠宝币失败','赠宝币页面：由于数据库崩溃等原因造成失败'),(144,100044,'赠宝币失败','赠宝币页面：由于以上条件不符，而造成的失败，和上面几条错误信息一起显示'),(145,100045,'用户名不能为空，且长度在2到40个字符之间！','注册提交以后错误提示:用户名相关的提示'),(146,100046,'email格式不正确','注册提交以后错误提示: email 相关提示'),(147,100047,'出错了！密码不能为空，且长度必须大于4个字符,小于20个字符!','注册提交以后错误提示:密码相关'),(148,100048,'出错了！两次输入密码不匹配','注册提交以后错误提示:密码相关'),(149,100049,'出错了！用户名已经存在，请尝试其他名字！','注册提交以后错误提示:用户名相关'),(150,100050,'出错了！该邮箱已经被其他用户注册使用了，请使用其他邮箱！','注册提交以后错误提示:email 相关提示'),(151,100051,'资料修改失败！请检查输入信息是否正确！','修改个人信息页面: 由于数据库崩溃等造成的错误'),(152,100052,'资料修改成功！','修改个人页面:成功'),(153,100053,'密码修改成功!','修改密码页面'),(154,100054,'密码修改失败，请检查输入密码是否合法！','修改密码页面'),(155,100055,'您两次输入的密码不一致，请检查并确认！','修改密码页面'),(156,100056,'您输入的旧密码不正确，无法完成密码修改！','修改密码页面'),(157,100057,'验证码验证失败，请重新输入','注册页面验证码错误'),(158,100058,'登陆错误','登陆页面提示语：用户名或密码错误时提示'),(159,100059,'您还未登陆,请先登陆!','商铺方面用到的：未登陆时的提示'),(160,100060,'出错了！评论内容不能为空！请输入评论内容！','发表评论时提示'),(161,100061,'出错了！请输入评论内容！','发表评论页面：数据库崩溃时提示'),(162,100062,'网络错误，导入失败','通过邮箱导入好友页面:由于数据库崩溃引起的错误'),(163,100063,'导入成功','通过邮箱导入好友页面:导入成功'),(164,100064,'导入错误','通过邮箱导入好友页面：由于密码错误等原因不能正确获取好友列表的提示'),(165,100065,'请输入身份证号','领取奖品页面，填身份证的输入框中显示'),(166,100066,'请输入qq号','领取奖品页面，填qq号的输入框中显示'),(167,100067,'请输入真实姓名','领取奖品页面，填真实姓名的输入框中显示'),(168,100068,'您申领的奖品正在审核中，请耐心等待...','领取奖品页面，提交数据成功'),(169,100069,'发生未知错误，请联系客服人员....','领取奖品页面，发生未知错误，如数据库崩溃等'),(170,100070,'宝币不够','领取奖品页面，当前宝币数小于奖品对应的宝币数'),(171,100071,'出错了！请先选择您要发布优惠卷的商铺！','发布优惠券： 发布优惠券时需先选择商铺'),(172,100072,'出错了！优惠卷标题不能为空,且长度不能大于50个字符！','发布优惠券： 优惠券标题相关错误'),(173,100073,'出错了！优惠卷详细描述信息不能为空！','发布优惠券 描述信息相关'),(174,100074,'出错了！必须上传优惠卷图片！','发布优惠券 上传图片相关'),(175,100075,'撒宝币规则设置成功','商户撒币设置成功'),(176,100076,'撒宝币规则设置失败','商户撒币设置失败'),(177,100077,'修改成功，您修改的内容正在审核中','装修店铺成功'),(178,100078,'修改成功,您修改的内容正在审核中,恭喜你获得$1个宝币','装修成功并获得宝币'),(179,100079,'修改失败','装修保存数据失败，由于数据库崩溃等原因造成的错误 '),(180,100080,'无权修改此店铺','用户通过别的手段来装修别人的店铺'),(181,100081,'签到内容不能为空','签到时内容为空'),(182,100082,'签到成功，恭喜你获得$1个宝币','签到并获取宝币'),(183,100083,'签到失败','由于系统原因，导致的签到失败'),(184,100084,'发表评论成功','店铺页面:针对商铺发表的评论'),(185,100085,'发表评论成功,恭喜你这次评论获得$1个宝币','店铺页面:发表评论成功并获得宝币'),(186,100086,'发表评论失败','店铺页面：由于系统原因，发表评论失败'),(187,100087,'对人家说点什么，表示下诚意嘛！','加好友时必须留言'),(188,10077,'您本次绑定手机号码的验证码为:$1','绑定手机号码的验证码提示'),(189,10078,'发送验证码次数过多，明天再试！','发送验证码次数过多提示,目前限制为3次'),(190,100088,'对方已经是你的好友了','不能重复加好友'),(191,10079,'可以盘地$1块','用户资料积分列表后边显示'),(192,10080,'$1 - $2积分 $3','用户资料积分列表前边显示'),(193,100089,'未搜索到匹配的商铺','搜索商铺为空时提示'),(194,100090,'未搜索到匹配的用户','搜索用户为空时提示'),(195,10081,'可以购买此地，花0宝币，属系统赠与','购买商家信息页面，如果是系统赠与的提示'),(196,10082,'购买无地主宝地成功，花$1宝币','购买无业主地，花宝币的提示'),(197,10083,'您已经是此宝地的地主，不能自己购买自己的宝地','不能自己购买自己的店提示'),(198,100091,'你没有选择好友','无好友的情况下，介绍好友'),(199,10084,'您的好友：$1邀请您加入周边宝典，请点击：http://wap.atditu.com?presenter=$2','短信邀请好友发送内容'),(200,100092,'未搜索到匹配的用户','在搜索用户时搜索不到时提示'),(201,100093,'加油，最近几天还没有人查看过你的信息。可以通过给宝地留言等方式来提高您在该网站的影响力。','用户的最近来访为空时提示'),(202,100094,'不能加自己为好友','自己加自己为好友时的提示：不能加自己为好友'),(203,100095,'你还没有宝地，看看周边有什么好地吧','宝地动态为空时给的提示.   无宝地时提示  一人称'),(204,100096,'你的宝地很冷清，快请朋友来转转吧','宝地动态为空时给的提示.  有宝地时提示 一人称'),(205,100097,'您还没好友，快去请身边的人加入您的网络吧','好友动态为空  无好友'),(206,100098,'您的朋友似乎都很忙哦，做点什么让他看看吧','宝地动态为空时给的提示.  有宝地时提示  非一人称'),(207,100099,'你怎么能什么都没做呢?快去周边宝地报到评论吧，运气好的话，会有意外的惊喜噢...','我的动态为空'),(208,100100,'您的周边还不活跃，请更多周边好友来热闹一下吧',NULL),(209,100101,'您的积分和宝币太少，还不能获得地，快去干点什么早日成为地主','没有宝地，也没钱购买'),(210,100102,'您已经有足够的积分和宝币，可以拥有宝地了，看看周围有哪些宝地吧','没有店铺，但有钱'),(211,100103,'您还没买过宝地，看看周边有哪些宝地吧','没买宝地提示'),(212,100104,'您目前还没有宝地，还不能推荐噢。看哪里有宝地去占一块吧。','推荐时没有宝地提示'),(213,10085,'$1支出$2宝币','已不使用，描述宝币是如何支出的'),(214,10086,'您输入的用户，邮箱或者手机不对，请重新输入！','手机找回密码时输入信息出错'),(215,10087,'找回密码次数过多，请明天再试！','手机找回密码时当天找回次数过多提示'),(216,10088,'点击链接$1激活您在周边宝典的新密码：$2','手机找回密码时手机接收提示'),(217,10089,'系统已将您的新密码发到邮箱与手机，注意查收','手机找回密码时成功提示'),(218,10090,'打卡给币','报到成功提示页'),(219,10091,'宝币能换礼','报到成功提示页'),(220,10092,'话真不白说，还给宝币','报到成功提示页'),(221,10093,'宝币不少，报到就给','报到成功提示页'),(222,10094,'好同志，继续努力','报到成功提示页'),(223,10095,'给按时报到的同志以宝币的奖励','报到成功提示页'),(224,10096,'感谢评论，赠币奖励','评论成功页'),(225,10097,'您的评论很重要，我的宝币能换礼','评论成功页'),(226,10098,'仅以此币表彰你的言论','评论成功页'),(227,10099,'得宝币:$1','操作成功后获得宝币提示'),(228,100105,'无效的密码激活','找回密码 key 错误时提示'),(229,100106,'找回密码成功，请使用邮箱中的密码进行登陆','找回密码成功'),(230,100107,'用户不存在，取回密码失败','找回密码时，检测不到用户信息.取密码失败'),(231,100108,'取回密码链接已失效，请重新取回','找回密码时，邮箱中的链接失效'),(232,10100,'登陆周边宝典新密码','找回密码邮件主题'),(233,10101,'好友定位，关注你的好友','邀请好友邮件主题'),(234,10102,'周边宝典','邀请好友邮件主题'),(235,10103,'玩宝宝转赚宝币，兑换礼品','邀请好友邮件主题'),(236,100109,'此地不允许发表评论','此地不允许发表评论'),(237,100110,'此地不允许报到','此地不允许报道'),(238,100111,'此地不出售','此地不出售'),(239,10104,'此地不允许评论!','此地不允许评论!'),(240,10105,'此地不允许交易!','买不允许的地提示!'),(241,10106,'此地不允许装修!','装修不允许的地提示!'),(242,10107,'此地不允许check_in','不允许check_in提示'),(243,10108,'绑定手机号码失败，须输入正确的手机号码与验证码，请重新验证','绑定手机号码失败提示'),(244,10109,'$1加你为好友，是否确认?','手机端加好友站内信提示'),(245,10110,'$1确认加你为好友','手机端确认加好友站内信提示'),(246,10111,'$1拒绝加你为好友','手机端拒绝加好友站内信提示'),(247,10112,'确认加好友','手机端确认加好友站内信提示标题'),(248,10113,'拒绝加好友','手机端拒绝加好友站内信提示标题'),(299,100112,'加你为好友，你是否立即加他为好友','加好友时，系统留言内容'),(300,10114,'当前地点关门','当前地点关门提示标题'),(301,10115,'当前地点已经关门','当前地点关门提示内容'),(302,10116,'卖家$1不同意把$2卖给你','拒绝卖店站内信提示内容'),(303,10117,'购买$1失败','拒绝卖店站内信提示标题'),(304,10118,'购买$1失败,在约定时间内卖家没做处理,宝币已退回','约定时间内卖家没做处理'),(305,10119,'同意卖宝地','同意卖店站内信标题'),(306,10120,'购买$1的$2花费$3个宝币','同意卖店站内信内容'),(307,10121,'$1想买你的$2宝地','买店请求站内信标题'),(308,10122,'发消息出错','有关发消息出错的统一提示'),(309,10123,'您已经确认过此信息，不能重复确认','重复确认加好友信息提示'),(310,10124,'您已经拒绝加对方为好友，不能重复拒绝','重复拒绝加好友信息提示'),(311,10125,'交易已经结束，不能重复操作','重复操作不卖店提示'),(312,100113,'暂时还没有任何消息噢!','无消息时提示'),(313,10127,'用户名不能少于2个字并且不能大于40个字','用户输入的用户名长度验证提示'),(314,10128,'无效的邮箱格式，请正确输入您的邮箱','注册时邮件格式不正确的提示'),(315,10126,'手机号码：$1, 已经被绑定，不能重复绑定','对已经绑定的手机号码不能重复绑定'),(316,100114,'你这个月还没有赚到宝币，快去土地含金量排行榜看看吧。这些都是藏宝币比较多的地方。运气好的话，就能得到不少宝币，另外，推荐朋友也可以得到不少宝币噢。','当月没赚到宝币'),(317,10129,'密码不能少于6个字且不能大于40个字','用户输入的密码长度验证提示'),(319,10130,'再挖$1宝币就可以购买此店','再挖$1宝币就可以购买此店'),(321,10131,'您指定的推荐人$1不存在！','终端注册时指定的推荐人不存在提示'),(323,100200,'宝币可以用来兑换你喜欢的奖品噢！经常光顾及报到含金量排行榜的宝地，会有机会得到宝币！','鼠标移到金币上时候，提示'),(325,100201,'您的等级是一种荣誉，同时也可以换取更多的宝地。','放在积分上时，进行提示'),(327,100202,'完善宝地信息，提高宝地人气同时，还能得到惊喜噢','装修时提示'),(329,100203,'这是块有价值的土地，赶快下手吧','占有含金量土地时提示'),(331,100204,'这块宝地不能给您带来收益，想好了再买啊。有价值宝地可以到含金量排行榜中看看','无含金量土地时提示'),(333,100205,'报到不仅可以提升你的人气，而且运气好的话，还可以获取到宝币','为什么要报到?'),(335,100206,'占领有含金量高的宝地，可以坐享其成地收取红利，不知不觉增加宝币',NULL),(337,10132,'须输入用户名称!','终端在登陆时的提示'),(339,10133,'须输入要找回密码的用户名或者邮箱或者手机号码!','终端在找回密码时的提示'),(341,100207,'请您认真说点什么吧',NULL),(347,10136,'手机号码：$1已经被发送过多次，请一段时间后再试.','邀请好友发送次数过多提示'),(349,10137,'手机号码：$1不存在,请输入正确的手机号码！','邀请好友发送的手机号码有问题提示'),(351,10138,'邮件：$1格式不正确，确认输入正确的邮件.','邀请好友发送邮件，邮件格式不正确提示'),(353,10139,'邮件：$1发送失败，服务器超时！','邀请好友发送的邮件失败提示'),(357,10134,'您撒的宝宝币数目数量太少，允许最低撒的宝宝币数目为:$1','商户撒宝币数目少的提示'),(359,10135,'您的宝宝币帐户不足以撒此数目的宝宝币，请重设宝宝币数目或者联系一键通辅助您撒宝币','商户帐户不足以撒宝币的提示'),(361,100208,'当前用户有直接领导$1,不能将其设置为你的成员',NULL),(363,100209,'校验$1没有找到匹配项','设置中间表与原始表不正确'),(365,100210,'$1值不能为空','校验值不能为空'),(367,100211,'$1值必须是数字','校验值不必须为数字'),(369,100212,'店铺名称与地址已经存在','校验值不必须为数字'),(371,100213,'$1长度不能超过$2','校验值不必须为数字'),(373,100214,'此用户不是商户用户','非营业员操作'),(375,100215,'权限与审核标记没匹配上','页面在重新赋权限时，未匹配上'),(379,100115,'目前赠朋友宝币不能超过$1宝币，并且每天不能超过两次','赠宝币超限提示'),(381,100216,'恭喜您！完成了新手任务,领取20000宝币。','恭喜您！完成了新手任务,领取20000宝币。'),(389,50008,'操作频繁，请稍后再试！','操作频繁，请稍后再试！'),(391,10141,'您答题正确，获得$1宝币','答题成功后送币提示'),(393,10142,'由于您长时间未提交答题结果，对应宝币已经过期，获得失败！','长时间未答题提示'),(399,100218,'你已经是大地主啦，先把地经营好，以后再买吧','你已经是大地主啦，先把地经营好，以后再买吧'),(401,100217,'你已经领取新手任务20000宝币的奖励。','你已经领取新手任务20000宝币的奖励。'),(403,10143,'谢谢您参加问卷调查，送你$1宝币','针对问卷调查的获币提示'),(405,10145,'同步设置成功！','手机端同步设置成功提示'),(407,10146,'同步设置失败：用户名或密码有误，请重试！','手机端同步设置密码，用户名错误提示'),(409,10147,'由于网络原因，同步设置失败，请重新设置。','手机端同步设置未知失败原因提示'),(411,10148,'取消同步设置成功！','取消同步设置成功提示'),(415,100219,'出错了！密码长度必须大于4个字符,小于20个字符!','出错了！密码长度必须大于4个字符,小于20个字符!'),(417,10144,'新鲜事记录成功，获得积分:$1','发表新鲜事得分提示'),(419,10149,'加入车友会成功！','加入车友会成功提示信息'),(421,10150,'用户名或密码不能为空','天翼注册时用户名，密码为空提示'),(423,10151,'此用户已经被注册','天翼注册时用户名已经被注册提示'),(425,10152,'恭喜您，注册成功，赠送$1宝币！','周边宝典注册成功提示'),(427,10153,'恭喜您，注册成功','天翼注册成功提示'),(431,10154,'您离此店铺的距离太远，无法报到。','如果用户离用户的距离太远，则提示此信息'),(433,10156,'下载中国平安车主宝典可兑好礼，千元油卡等您拿，贴心关怀，服务车主','下载中国平安车主宝典可兑好礼，千元油卡等您拿，贴心关怀，服务车主');
/*!40000 ALTER TABLE `code_configs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 14:23:48
