-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: testonline
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `testlibrary`
--

DROP TABLE IF EXISTS `testlibrary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testlibrary` (
  `userid` int(11) DEFAULT NULL,
  `type` char(20) DEFAULT NULL,
  `versions` int(11) DEFAULT NULL,
  `questions` int(11) DEFAULT NULL,
  KEY `userid` (`userid`),
  CONSTRAINT `testlibrary_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `testuser` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testlibrary`
--

LOCK TABLES `testlibrary` WRITE;
/*!40000 ALTER TABLE `testlibrary` DISABLE KEYS */;
INSERT INTO `testlibrary` VALUES (0,NULL,NULL,NULL),(0,'0',NULL,NULL),(0,'intelligence',1,10),(0,'professional',4,10),(0,'professional',5,10),(0,'professional',6,10);
/*!40000 ALTER TABLE `testlibrary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testquestion`
--

DROP TABLE IF EXISTS `testquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testquestion` (
  `userid` int(11) DEFAULT NULL,
  `versions` int(11) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `answera` char(100) DEFAULT NULL,
  `answerb` char(100) DEFAULT NULL,
  `answerc` char(100) DEFAULT NULL,
  `answerd` char(100) DEFAULT NULL,
  `answer` char(10) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testquestion`
--

LOCK TABLES `testquestion` WRITE;
/*!40000 ALTER TABLE `testquestion` DISABLE KEYS */;
INSERT INTO `testquestion` VALUES (0,1,'选出不同类的一项','蛇','大树','老虎','无','B',10),(0,1,'在下列分数中，选出不同类的一项','3/5','3/7','3/9','1/7','C',10),(0,1,'男孩对男子，正如女孩对','青年','孩子','姑娘','妇女','D',10),(0,1,'如果笔相对于写字，那么书相对于','娱乐','阅读','学文化','解除疲劳','B',10),(0,1,'马之于马厩，正如人之于','牛棚','马车','房屋','农场','C',10),(0,1,'动物学家与社会学家相对应，正如动物与（ ）相对','人类','问题','社会','社会学','A',10),(0,1,'如果所有的妇女都有大衣，那么漂亮的妇女会有','更多的大衣','时髦的大衣','大衣','昂贵的大衣','C',10),(0,1,'南之于西北，正如西之于','西北','东北','西南','东南','B',10),(0,1,'找出不同类的一项','铁锅','小勺','米饭','碟子','C',10),(0,1,'找出不同类的一项','写字台','沙发','电视','桌布','D',10),(0,3,'我善于控制自己的面部表情','是的','不一定','不是的','无','D',10),(0,3,'在就寝时，我常常','极易入睡','介于A、C之间','不易入睡','无','D',10),(0,3,'有人侵扰我时，我','不露声色','介于A、C之间','大声抗议','无','D',10),(0,3,'在和人争辨或工作出现失误后，我常常感到震颤，精疲力竭，而不能继承安心工作','不是的','介于A、C之间','是的','无','D',10),(0,3,'我常常被一些无谓的小事困扰','不是的','介于A、C之间','是的','无','D',10),(0,3,'我宁愿住在僻静的郊区，也不愿住在嘈杂的市区','不是的','不太确定','是的','无','D',10),(0,3,'我被朋友、同事起过绰号、讥讽过','从来没有','偶尔有过','这是常用的事','无','D',10),(0,3,'有一种食物使我吃后呕吐','没有','记不清','有','无','D',10),(0,3,'除去看见的世界外，我的心中没有另外的世界','没有','记不清','有','无','D',10),(0,3,'我会想到若干年后有什么使自己极为不安的事','从来没有想过','偶尔想到过','经常想到','无','D',10),(0,4,'在工作中我喜欢独自筹划，不愿受别人干涉','非常同意','同意','不同意','特别不同意','A',10),(0,4,'我喜欢在做事情前，对此事情做出细致的安排。','非常同意','同意','不同意','特别不同意','D',10),(0,4,'我经常不停地思考某一问题，直到想出正确的答案。','非常同意','同意','不同意','特别不同意','D',10),(0,4,'我喜欢抽象思维的工作，不喜欢动手的工作。','非常同意','同意','不同意','特别不同意','D',10),(0,4,'我喜欢做戏剧、音乐、歌舞、新闻采访等方面的工作。','非常同意','同意','不同意','特别不同意','D',10),(0,4,'我喜欢成为人们注意的焦点。','非常同意','同意','不同意','特别不同意','D',10),(0,4,'我很容易结识同性别朋友。','非常同意','同意','不同意','特别不同意','D',10),(0,4,'我乐于解除别人的痛苦。','非常同意','同意','不同意','特别不同意','D',10),(0,4,'我曾经渴望有机会参加探险。','特别同意','同意','不同意','特别不同意','D',10),(0,4,'和不熟悉的人交谈对我来说毫不困难。','非常同意','同意','不同意','特别不同意','D',10),(0,5,'我喜欢亲自动手制作一些东西，从中得到乐趣。','非常同意','同意','不同意','特别不同意','D',10),(0,5,'我喜欢使用榔头一类的工具。','非常同意','同意','不同意','特别不同意','D',10),(0,5,'我喜欢需要运用智力的游戏。','非常同意','同意','不同意','特别不同意','D',10),(0,5,'当我工作时，我喜欢避免干扰。','非常同意','同意','不同意','特别不同意','D',10),(0,5,'我喜欢不时地夸耀一下自己取得的好成就。','非常同意','同意','不同意','特别不同意','D',10),(0,5,'音乐能使我陶醉。','非常同意','同意','不同意','特别不同意','D',10),(0,5,'我喜欢作一名教师','非常同意','同意','不同意','特别不同意','D',10),(0,5,'大家公认我是一名勤劳踏实的、愿为大家服务的人。','非常同意','同意','不同意','特别不同意','D',10),(0,5,'当我开始做一件事情后，即使碰到再多的困难，我也要执著地干下去。','特别同意','同意','不同意','特别不同意','D',10),(0,5,'我总是主动地向别人提出自己的建议。','非常同意','同意','不同意','特别不同意','D',10),(0,7,'cf','fds','dsa','dcs','ds','A',10),(0,7,'sda','cdas','cdv','bgfgfb','bgf','B',10),(0,7,'gfb','gbf','bgf','bgf','gfb','C',10),(0,7,'bgf','vcvx','c','a','cds','B',10),(0,7,'bfdf','vd','fvsv','fd','fv','B',10),(0,7,'fvds','bdf','bdb','fvfa','bf','B',10),(0,7,'fvd','fb','fb','bd','bgf','A',10),(0,7,'gfd','bgf','bgf','bg','bgf','B',10),(0,7,'bgfd','gfn','gfb','bgf','gb','B',10),(0,7,'bgf','bgf','bgf','bgf','gb','C',10);
/*!40000 ALTER TABLE `testquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testrecord`
--

DROP TABLE IF EXISTS `testrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testrecord` (
  `userid` int(11) NOT NULL,
  `type` char(20) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  KEY `userid` (`userid`),
  CONSTRAINT `testrecord_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `testuser` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testrecord`
--

LOCK TABLES `testrecord` WRITE;
/*!40000 ALTER TABLE `testrecord` DISABLE KEYS */;
INSERT INTO `testrecord` VALUES (1,'intelligence',30,'痴鲁智力！',1),(1,'character',25,'Q较低，你常常不能控制自己，你极易被自己的情绪所影响。很多时候，你轻易被击怒、动火、发脾气',2),(1,'professional',0,'现实型  如：技术性职业（计算机硬件人员、摄影师、制图员、机械装配工），技能性职业（木匠、厨师、技工、修理工、农民、一般劳动）',6),(3,'character',22,'EQ较低，你常常不能控制自己，你极易被自己的情绪所影响。很多时候，你轻易被击怒、动火、发脾气',3),(2,'professional',0,'现实型  如：技术性职业（计算机硬件人员、摄影师、制图员、机械装配工），技能性职业（木匠、厨师、技工、修理工、农民、一般劳动）',5),(1,'character',33,'EQ较低，你常常不能控制自己，你极易被自己的情绪所影响。很多时候，你轻易被击怒、动火、发脾气',3);
/*!40000 ALTER TABLE `testrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testuser`
--

DROP TABLE IF EXISTS `testuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testuser` (
  `userid` int(11) NOT NULL,
  `username` char(100) NOT NULL,
  `userpassword` char(20) NOT NULL,
  `usertelephone` char(20) NOT NULL,
  `useremail` char(30) NOT NULL,
  `userrank` char(20) DEFAULT NULL,
  `testtime` int(11) DEFAULT NULL,
  `upload` int(11) DEFAULT NULL,
  `usersex` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testuser`
--

LOCK TABLES `testuser` WRITE;
/*!40000 ALTER TABLE `testuser` DISABLE KEYS */;
INSERT INTO `testuser` VALUES (0,'root','root','110','root@testonline.com','admin',0,8,'m'),(1,'Loke','123456','1234567','djfhfgsl@163.com','platinumUser',5,0,'男'),(2,'hh','123','2133','gdf@qq.com','platinumUser',1,0,'女'),(3,'dsfhh','123','123456','dafds@qq.com','platinumUser',1,0,'女');
/*!40000 ALTER TABLE `testuser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-30 14:31:30
