-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmylzcg
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmylzcg/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmylzcg/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmylzcg/upload/picture3.jpg'),(6,'homepage','http://localhost:8080/ssmylzcg/upload/1611308552804.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611308804181 DEFAULT CHARSET=utf8 COMMENT='健身论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (121,'2021-01-22 09:15:29','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(122,'2021-01-22 09:15:29','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(123,'2021-01-22 09:15:29','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(124,'2021-01-22 09:15:29','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(125,'2021-01-22 09:15:29','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(126,'2021-01-22 09:15:29','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1611308678375,'2021-01-22 09:44:38','dfdsfsdf','<p>fdsfsdf</p>',0,1611308591355,'125','开放'),(1611308804180,'2021-01-22 09:46:43',NULL,'fsadfsdaf ds ',121,1611308591355,'125',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianshenjiaolian`
--

DROP TABLE IF EXISTS `jianshenjiaolian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianshenjiaolian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhiyelvli` longtext COMMENT '职业履历',
  `gerenjieshao` longtext COMMENT '个人介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611308410522 DEFAULT CHARSET=utf8 COMMENT='健身教练';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianshenjiaolian`
--

LOCK TABLES `jianshenjiaolian` WRITE;
/*!40000 ALTER TABLE `jianshenjiaolian` DISABLE KEYS */;
INSERT INTO `jianshenjiaolian` VALUES (61,'2021-01-22 09:15:29','教练姓名1','男',1,'身高1','体重1','http://localhost:8080/ssmylzcg/upload/jianshenjiaolian_zhaopian1.jpg','职业履历1','个人介绍1'),(62,'2021-01-22 09:15:29','教练姓名2','男',2,'身高2','体重2','http://localhost:8080/ssmylzcg/upload/jianshenjiaolian_zhaopian2.jpg','职业履历2','个人介绍2'),(63,'2021-01-22 09:15:29','教练姓名3','男',3,'身高3','体重3','http://localhost:8080/ssmylzcg/upload/jianshenjiaolian_zhaopian3.jpg','职业履历3','个人介绍3'),(64,'2021-01-22 09:15:29','教练姓名4','男',4,'身高4','体重4','http://localhost:8080/ssmylzcg/upload/jianshenjiaolian_zhaopian4.jpg','职业履历4','个人介绍4'),(65,'2021-01-22 09:15:29','教练姓名5','男',5,'身高5','体重5','http://localhost:8080/ssmylzcg/upload/jianshenjiaolian_zhaopian5.jpg','职业履历5','个人介绍5'),(66,'2021-01-22 09:15:29','教练姓名6','男',6,'身高6','体重6','http://localhost:8080/ssmylzcg/upload/jianshenjiaolian_zhaopian6.jpg','职业履历6','个人介绍6'),(1611308410521,'2021-01-22 09:40:09','123','男',36,'170','120','http://localhost:8080/ssmylzcg/upload/1611308409012.jpg','范德萨范德萨范德萨范德萨f','<p>f的撒啊范德萨范德萨富士达范德萨范德萨范德萨</p>');
/*!40000 ALTER TABLE `jianshenjiaolian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianshenkecheng`
--

DROP TABLE IF EXISTS `jianshenkecheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianshenkecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `jianshenleixing` varchar(200) DEFAULT NULL COMMENT '健身类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangkeshijian` date DEFAULT NULL COMMENT '上课时间',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `kechengjiage` int(11) NOT NULL COMMENT '课程价格',
  `kechengjieshao` longtext COMMENT '课程介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611308464029 DEFAULT CHARSET=utf8 COMMENT='健身课程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianshenkecheng`
--

LOCK TABLES `jianshenkecheng` WRITE;
/*!40000 ALTER TABLE `jianshenkecheng` DISABLE KEYS */;
INSERT INTO `jianshenkecheng` VALUES (71,'2021-01-22 09:15:29','课程编号1','课程名称1','健身类型1','http://localhost:8080/ssmylzcg/upload/jianshenkecheng_tupian1.jpg','2021-01-22','上课地点1',1,'课程介绍1'),(72,'2021-01-22 09:15:29','课程编号2','课程名称2','健身类型2','http://localhost:8080/ssmylzcg/upload/jianshenkecheng_tupian2.jpg','2021-01-22','上课地点2',2,'课程介绍2'),(73,'2021-01-22 09:15:29','课程编号3','课程名称3','健身类型3','http://localhost:8080/ssmylzcg/upload/jianshenkecheng_tupian3.jpg','2021-01-22','上课地点3',3,'课程介绍3'),(74,'2021-01-22 09:15:29','课程编号4','课程名称4','健身类型4','http://localhost:8080/ssmylzcg/upload/jianshenkecheng_tupian4.jpg','2021-01-22','上课地点4',4,'课程介绍4'),(75,'2021-01-22 09:15:29','课程编号5','课程名称5','健身类型5','http://localhost:8080/ssmylzcg/upload/jianshenkecheng_tupian5.jpg','2021-01-22','上课地点5',5,'课程介绍5'),(76,'2021-01-22 09:15:29','课程编号6','课程名称6','健身类型6','http://localhost:8080/ssmylzcg/upload/jianshenkecheng_tupian6.jpg','2021-01-22','上课地点6',6,'课程介绍6'),(1611308464028,'2021-01-22 09:41:03','122525635','瑜伽','有氧运动','http://localhost:8080/ssmylzcg/upload/1611308446068.jpg','2021-01-23','微软楼',2565,'<p>范德萨幅度萨芬的撒<img src=\"http://localhost:8080/ssmylzcg/upload/1611308462753.jpg\"></p>');
/*!40000 ALTER TABLE `jianshenkecheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianshenleixing`
--

DROP TABLE IF EXISTS `jianshenleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianshenleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jianshenleixing` varchar(200) DEFAULT NULL COMMENT '健身类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611308285012 DEFAULT CHARSET=utf8 COMMENT='健身类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianshenleixing`
--

LOCK TABLES `jianshenleixing` WRITE;
/*!40000 ALTER TABLE `jianshenleixing` DISABLE KEYS */;
INSERT INTO `jianshenleixing` VALUES (31,'2021-01-22 09:15:29','健身类型1'),(32,'2021-01-22 09:15:29','健身类型2'),(33,'2021-01-22 09:15:29','健身类型3'),(34,'2021-01-22 09:15:29','健身类型4'),(35,'2021-01-22 09:15:29','健身类型5'),(36,'2021-01-22 09:15:29','健身类型6'),(1611308285011,'2021-01-22 09:38:04','有氧运动');
/*!40000 ALTER TABLE `jianshenleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianshenqicai`
--

DROP TABLE IF EXISTS `jianshenqicai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianshenqicai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaibianhao` varchar(200) DEFAULT NULL COMMENT '器材编号',
  `qicaimingcheng` varchar(200) DEFAULT NULL COMMENT '器材名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `qicaileixing` varchar(200) DEFAULT NULL COMMENT '器材类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shiyongfangfa` longtext COMMENT '使用方法',
  `shoushenxiaoguo` longtext COMMENT '瘦身效果',
  `qicaijieshao` longtext COMMENT '器材介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qicaibianhao` (`qicaibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611308360226 DEFAULT CHARSET=utf8 COMMENT='健身器材';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianshenqicai`
--

LOCK TABLES `jianshenqicai` WRITE;
/*!40000 ALTER TABLE `jianshenqicai` DISABLE KEYS */;
INSERT INTO `jianshenqicai` VALUES (41,'2021-01-22 09:15:29','器材编号1','器材名称1','http://localhost:8080/ssmylzcg/upload/jianshenqicai_tupian1.jpg','器材类型1','品牌1','使用方法1','瘦身效果1','器材介绍1'),(42,'2021-01-22 09:15:29','器材编号2','器材名称2','http://localhost:8080/ssmylzcg/upload/jianshenqicai_tupian2.jpg','器材类型2','品牌2','使用方法2','瘦身效果2','器材介绍2'),(43,'2021-01-22 09:15:29','器材编号3','器材名称3','http://localhost:8080/ssmylzcg/upload/jianshenqicai_tupian3.jpg','器材类型3','品牌3','使用方法3','瘦身效果3','器材介绍3'),(44,'2021-01-22 09:15:29','器材编号4','器材名称4','http://localhost:8080/ssmylzcg/upload/jianshenqicai_tupian4.jpg','器材类型4','品牌4','使用方法4','瘦身效果4','器材介绍4'),(45,'2021-01-22 09:15:29','器材编号5','器材名称5','http://localhost:8080/ssmylzcg/upload/jianshenqicai_tupian5.jpg','器材类型5','品牌5','使用方法5','瘦身效果5','器材介绍5'),(46,'2021-01-22 09:15:29','器材编号6','器材名称6','http://localhost:8080/ssmylzcg/upload/jianshenqicai_tupian6.jpg','器材类型6','品牌6','使用方法6','瘦身效果6','器材介绍6'),(1611308360225,'2021-01-22 09:39:19','1611308690160','跑步机','http://localhost:8080/ssmylzcg/upload/1611308339642.jpg','器材类型1','旺达','积分多少卡就疯狂的撒看范德萨富士达f\'d\'s\'f','fdsf 士大夫但是范德萨范德萨的萨芬手动f','<p>f的撒富士达富士达范德萨<img src=\"http://localhost:8080/ssmylzcg/upload/1611308359306.jpg\"></p>');
/*!40000 ALTER TABLE `jianshenqicai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianshenshangpin`
--

DROP TABLE IF EXISTS `jianshenshangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianshenshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinzhonglei` varchar(200) NOT NULL COMMENT '商品种类',
  `shangpintupian` varchar(200) NOT NULL COMMENT '商品图片',
  `shangpinjiage` int(11) NOT NULL COMMENT '商品价格',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `zuoyong` varchar(200) DEFAULT NULL COMMENT '作用',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611308518465 DEFAULT CHARSET=utf8 COMMENT='健身商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianshenshangpin`
--

LOCK TABLES `jianshenshangpin` WRITE;
/*!40000 ALTER TABLE `jianshenshangpin` DISABLE KEYS */;
INSERT INTO `jianshenshangpin` VALUES (81,'2021-01-22 09:15:29','商品名称1','商品种类1','http://localhost:8080/ssmylzcg/upload/jianshenshangpin_shangpintupian1.jpg',1,'规格1','作用1','保质期1','商品详情1'),(82,'2021-01-22 09:15:29','商品名称2','商品种类2','http://localhost:8080/ssmylzcg/upload/jianshenshangpin_shangpintupian2.jpg',2,'规格2','作用2','保质期2','商品详情2'),(83,'2021-01-22 09:15:29','商品名称3','商品种类3','http://localhost:8080/ssmylzcg/upload/jianshenshangpin_shangpintupian3.jpg',3,'规格3','作用3','保质期3','商品详情3'),(84,'2021-01-22 09:15:29','商品名称4','商品种类4','http://localhost:8080/ssmylzcg/upload/jianshenshangpin_shangpintupian4.jpg',4,'规格4','作用4','保质期4','商品详情4'),(85,'2021-01-22 09:15:29','商品名称5','商品种类5','http://localhost:8080/ssmylzcg/upload/jianshenshangpin_shangpintupian5.jpg',5,'规格5','作用5','保质期5','商品详情5'),(86,'2021-01-22 09:15:29','商品名称6','商品种类6','http://localhost:8080/ssmylzcg/upload/jianshenshangpin_shangpintupian6.jpg',6,'规格6','作用6','保质期6','商品详情6'),(1611308518464,'2021-01-22 09:41:58','跑步机','跑步','http://localhost:8080/ssmylzcg/upload/1611308494507.jpg',25656,'110*12*152','跑步','3年','<p>范德萨范德萨范德萨<img src=\"http://localhost:8080/ssmylzcg/upload/1611308517827.jpg\"></p>');
/*!40000 ALTER TABLE `jianshenshangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianshenzhishi`
--

DROP TABLE IF EXISTS `jianshenzhishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianshenzhishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) DEFAULT NULL COMMENT '文章标题',
  `wenzhangbianhao` varchar(200) DEFAULT NULL COMMENT '文章编号',
  `tupianfengmian` varchar(200) DEFAULT NULL COMMENT '图片封面',
  `jianshenleixing` varchar(200) DEFAULT NULL COMMENT '健身类型',
  `wenzhangneirong` longtext COMMENT '文章内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wenzhangbianhao` (`wenzhangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611308271011 DEFAULT CHARSET=utf8 COMMENT='健身知识';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianshenzhishi`
--

LOCK TABLES `jianshenzhishi` WRITE;
/*!40000 ALTER TABLE `jianshenzhishi` DISABLE KEYS */;
INSERT INTO `jianshenzhishi` VALUES (21,'2021-01-22 09:15:29','文章标题1','文章编号1','http://localhost:8080/ssmylzcg/upload/jianshenzhishi_tupianfengmian1.jpg','健身类型1','文章内容1','2021-01-22'),(22,'2021-01-22 09:15:29','文章标题2','文章编号2','http://localhost:8080/ssmylzcg/upload/jianshenzhishi_tupianfengmian2.jpg','健身类型2','文章内容2','2021-01-22'),(23,'2021-01-22 09:15:29','文章标题3','文章编号3','http://localhost:8080/ssmylzcg/upload/jianshenzhishi_tupianfengmian3.jpg','健身类型3','文章内容3','2021-01-22'),(24,'2021-01-22 09:15:29','文章标题4','文章编号4','http://localhost:8080/ssmylzcg/upload/jianshenzhishi_tupianfengmian4.jpg','健身类型4','文章内容4','2021-01-22'),(25,'2021-01-22 09:15:29','文章标题5','文章编号5','http://localhost:8080/ssmylzcg/upload/jianshenzhishi_tupianfengmian5.jpg','健身类型5','文章内容5','2021-01-22'),(26,'2021-01-22 09:15:29','文章标题6','文章编号6','http://localhost:8080/ssmylzcg/upload/jianshenzhishi_tupianfengmian6.jpg','健身类型6','文章内容6','2021-01-22'),(1611308271010,'2021-01-22 09:37:51','健康资讯','1611308634230','http://localhost:8080/ssmylzcg/upload/1611308260872.jpg','健身类型2','<p>供奉的是供奉的是广泛的给v反对gg<img src=\"http://localhost:8080/ssmylzcg/upload/1611308270251.jpg\"></p>','2021-01-23');
/*!40000 ALTER TABLE `jianshenzhishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaolianyuyue`
--

DROP TABLE IF EXISTS `jiaolianyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaolianyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yuyueshijian` date DEFAULT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611308639563 DEFAULT CHARSET=utf8 COMMENT='教练预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaolianyuyue`
--

LOCK TABLES `jiaolianyuyue` WRITE;
/*!40000 ALTER TABLE `jiaolianyuyue` DISABLE KEYS */;
INSERT INTO `jiaolianyuyue` VALUES (91,'2021-01-22 09:15:29','预约编号1','教练姓名1','http://localhost:8080/ssmylzcg/upload/jiaolianyuyue_zhaopian1.jpg','用户账号1','用户姓名1','2021-01-22','备注1'),(92,'2021-01-22 09:15:29','预约编号2','教练姓名2','http://localhost:8080/ssmylzcg/upload/jiaolianyuyue_zhaopian2.jpg','用户账号2','用户姓名2','2021-01-22','备注2'),(93,'2021-01-22 09:15:29','预约编号3','教练姓名3','http://localhost:8080/ssmylzcg/upload/jiaolianyuyue_zhaopian3.jpg','用户账号3','用户姓名3','2021-01-22','备注3'),(94,'2021-01-22 09:15:29','预约编号4','教练姓名4','http://localhost:8080/ssmylzcg/upload/jiaolianyuyue_zhaopian4.jpg','用户账号4','用户姓名4','2021-01-22','备注4'),(95,'2021-01-22 09:15:29','预约编号5','教练姓名5','http://localhost:8080/ssmylzcg/upload/jiaolianyuyue_zhaopian5.jpg','用户账号5','用户姓名5','2021-01-22','备注5'),(96,'2021-01-22 09:15:29','预约编号6','教练姓名6','http://localhost:8080/ssmylzcg/upload/jiaolianyuyue_zhaopian6.jpg','用户账号6','用户姓名6','2021-01-22','备注6'),(1611308639562,'2021-01-22 09:43:59','202112217503383465119','123','http://localhost:8080/ssmylzcg/upload/1611308409012.jpg','125','胡月','2021-01-22','1111');
/*!40000 ALTER TABLE `jiaolianyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechenggoumai`
--

DROP TABLE IF EXISTS `kechenggoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechenggoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `jianshenleixing` varchar(200) DEFAULT NULL COMMENT '健身类型',
  `kechengjiage` varchar(200) DEFAULT NULL COMMENT '课程价格',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `dingdanbeizhu` varchar(200) DEFAULT NULL COMMENT '订单备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611308652400 DEFAULT CHARSET=utf8 COMMENT='课程购买';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechenggoumai`
--

LOCK TABLES `kechenggoumai` WRITE;
/*!40000 ALTER TABLE `kechenggoumai` DISABLE KEYS */;
INSERT INTO `kechenggoumai` VALUES (101,'2021-01-22 09:15:29','订单编号1','课程编号1','http://localhost:8080/ssmylzcg/upload/kechenggoumai_tupian1.jpg','课程名称1','健身类型1','课程价格1','上课时间1','上课地点1','用户账号1','用户姓名1','订单备注1','未支付'),(102,'2021-01-22 09:15:29','订单编号2','课程编号2','http://localhost:8080/ssmylzcg/upload/kechenggoumai_tupian2.jpg','课程名称2','健身类型2','课程价格2','上课时间2','上课地点2','用户账号2','用户姓名2','订单备注2','未支付'),(103,'2021-01-22 09:15:29','订单编号3','课程编号3','http://localhost:8080/ssmylzcg/upload/kechenggoumai_tupian3.jpg','课程名称3','健身类型3','课程价格3','上课时间3','上课地点3','用户账号3','用户姓名3','订单备注3','未支付'),(104,'2021-01-22 09:15:29','订单编号4','课程编号4','http://localhost:8080/ssmylzcg/upload/kechenggoumai_tupian4.jpg','课程名称4','健身类型4','课程价格4','上课时间4','上课地点4','用户账号4','用户姓名4','订单备注4','未支付'),(105,'2021-01-22 09:15:29','订单编号5','课程编号5','http://localhost:8080/ssmylzcg/upload/kechenggoumai_tupian5.jpg','课程名称5','健身类型5','课程价格5','上课时间5','上课地点5','用户账号5','用户姓名5','订单备注5','未支付'),(106,'2021-01-22 09:15:29','订单编号6','课程编号6','http://localhost:8080/ssmylzcg/upload/kechenggoumai_tupian6.jpg','课程名称6','健身类型6','课程价格6','上课时间6','上课地点6','用户账号6','用户姓名6','订单备注6','未支付'),(1611308652399,'2021-01-22 09:44:11','202112217504775531057','122525635','http://localhost:8080/ssmylzcg/upload/1611308446068.jpg','瑜伽','有氧运动','2565','2021-01-23','微软楼','125','胡月','11','已支付');
/*!40000 ALTER TABLE `kechenggoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicaileixing`
--

DROP TABLE IF EXISTS `qicaileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicaileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaileixing` varchar(200) DEFAULT NULL COMMENT '器材类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611308374571 DEFAULT CHARSET=utf8 COMMENT='器材类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicaileixing`
--

LOCK TABLES `qicaileixing` WRITE;
/*!40000 ALTER TABLE `qicaileixing` DISABLE KEYS */;
INSERT INTO `qicaileixing` VALUES (51,'2021-01-22 09:15:29','器材类型1'),(52,'2021-01-22 09:15:29','器材类型2'),(53,'2021-01-22 09:15:29','器材类型3'),(54,'2021-01-22 09:15:29','器材类型4'),(55,'2021-01-22 09:15:29','器材类型5'),(56,'2021-01-22 09:15:29','器材类型6'),(1611308367931,'2021-01-22 09:39:27','有氧'),(1611308374570,'2021-01-22 09:39:34','无氧');
/*!40000 ALTER TABLE `qicaileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpindingdan`
--

DROP TABLE IF EXISTS `shangpindingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpindingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinzhonglei` varchar(200) DEFAULT NULL COMMENT '商品种类',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpinjiage` varchar(200) DEFAULT NULL COMMENT '商品价格',
  `goumaishuliang` int(11) NOT NULL COMMENT '购买数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `dingdanbeizhu` varchar(200) DEFAULT NULL COMMENT '订单备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611308666036 DEFAULT CHARSET=utf8 COMMENT='商品订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpindingdan`
--

LOCK TABLES `shangpindingdan` WRITE;
/*!40000 ALTER TABLE `shangpindingdan` DISABLE KEYS */;
INSERT INTO `shangpindingdan` VALUES (111,'2021-01-22 09:15:29','订单编号1','商品名称1','商品种类1','http://localhost:8080/ssmylzcg/upload/shangpindingdan_shangpintupian1.jpg','商品价格1',1,'总价格1','用户账号1','用户姓名1','订单备注1','未支付'),(112,'2021-01-22 09:15:29','订单编号2','商品名称2','商品种类2','http://localhost:8080/ssmylzcg/upload/shangpindingdan_shangpintupian2.jpg','商品价格2',2,'总价格2','用户账号2','用户姓名2','订单备注2','未支付'),(113,'2021-01-22 09:15:29','订单编号3','商品名称3','商品种类3','http://localhost:8080/ssmylzcg/upload/shangpindingdan_shangpintupian3.jpg','商品价格3',3,'总价格3','用户账号3','用户姓名3','订单备注3','未支付'),(114,'2021-01-22 09:15:29','订单编号4','商品名称4','商品种类4','http://localhost:8080/ssmylzcg/upload/shangpindingdan_shangpintupian4.jpg','商品价格4',4,'总价格4','用户账号4','用户姓名4','订单备注4','未支付'),(115,'2021-01-22 09:15:29','订单编号5','商品名称5','商品种类5','http://localhost:8080/ssmylzcg/upload/shangpindingdan_shangpintupian5.jpg','商品价格5',5,'总价格5','用户账号5','用户姓名5','订单备注5','未支付'),(116,'2021-01-22 09:15:29','订单编号6','商品名称6','商品种类6','http://localhost:8080/ssmylzcg/upload/shangpindingdan_shangpintupian6.jpg','商品价格6',6,'总价格6','用户账号6','用户姓名6','订单备注6','未支付'),(1611308666035,'2021-01-22 09:44:25','20211221751023212570','跑步机','跑步','http://localhost:8080/ssmylzcg/upload/1611308494507.jpg','25656',5,'128280','125','胡月','aa','已支付');
/*!40000 ALTER TABLE `shangpindingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','28befd8i1l6hz4t1ss5fqscslp2jcrrh','2021-01-22 09:36:42','2021-01-22 10:45:39'),(2,1611308591355,'125','yonghu','用户','x4k14ijyhkciudn10nem4m7na7l0q7hg','2021-01-22 09:43:22','2021-01-22 10:46:32');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-22 09:15:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611308591356 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-01-22 09:15:29','用户1','123456','用户姓名1','http://localhost:8080/ssmylzcg/upload/yonghu_zhaopian1.jpg','男',1,'13823888881','773890001@qq.com'),(12,'2021-01-22 09:15:29','用户2','123456','用户姓名2','http://localhost:8080/ssmylzcg/upload/yonghu_zhaopian2.jpg','男',2,'13823888882','773890002@qq.com'),(13,'2021-01-22 09:15:29','用户3','123456','用户姓名3','http://localhost:8080/ssmylzcg/upload/yonghu_zhaopian3.jpg','男',3,'13823888883','773890003@qq.com'),(14,'2021-01-22 09:15:29','用户4','123456','用户姓名4','http://localhost:8080/ssmylzcg/upload/yonghu_zhaopian4.jpg','男',4,'13823888884','773890004@qq.com'),(15,'2021-01-22 09:15:29','用户5','123456','用户姓名5','http://localhost:8080/ssmylzcg/upload/yonghu_zhaopian5.jpg','男',5,'13823888885','773890005@qq.com'),(16,'2021-01-22 09:15:29','用户6','123456','用户姓名6','http://localhost:8080/ssmylzcg/upload/yonghu_zhaopian6.jpg','男',6,'13823888886','773890006@qq.com'),(1611308591355,'2021-01-22 09:43:11','125','125','胡月','http://localhost:8080/ssmylzcg/upload/1611308698145.jpg','男',36,'13513513522','1454545@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-25 14:44:03
