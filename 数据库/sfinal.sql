# Host: 127.0.0.1  (Version: 5.5.20)
# Date: 2017-03-22 22:18:04
# Generator: MySQL-Front 5.3  (Build 4.89)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin"
#

CREATE TABLE `admin` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '管理员密码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "admin"
#

REPLACE INTO `admin` VALUES (1,'刘德华','111'),(2,'张学友','222');

#
# Structure for table "certificate"
#

CREATE TABLE `certificate` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '证书编号',
  `cname` varchar(255) NOT NULL DEFAULT '' COMMENT '证书名称',
  `cpic` varchar(255) NOT NULL DEFAULT '' COMMENT '证书图片',
  `tid` int(4) DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "certificate"
#

REPLACE INTO `certificate` VALUES (1,'CET4','',1),(2,'CET6','',NULL);

#
# Structure for table "forder"
#

CREATE TABLE `forder` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `date` date NOT NULL DEFAULT '0000-00-00' COMMENT '工作时间',
  `work` varchar(50) NOT NULL DEFAULT '' COMMENT '工作内容',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '工作具体描述',
  `request` varchar(255) NOT NULL DEFAULT 'proficiency' COMMENT '需求译员水平',
  `language` varchar(20) NOT NULL DEFAULT 'English' COMMENT '语言种类',
  `salary` varchar(10) NOT NULL DEFAULT '0' COMMENT '酬劳',
  `dealing` varchar(50) NOT NULL DEFAULT '未接单' COMMENT '订单状态',
  `fid` int(4) NOT NULL DEFAULT '1',
  `trid` int(4) DEFAULT NULL,
  `completed` varchar(30) DEFAULT '未完成' COMMENT '订单完成度',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data for table "forder"
#

REPLACE INTO `forder` VALUES (1,'2017-04-22','Furniture Fair Interpreter','Accompanied by daily communication, assist the order generation','proficiency','English','150/天','picked up',1,1,'unfinished'),(2,'2017-05-01','Escort Interpretation','Product translation,Assist to complete the contract','proficiency','Japanese','160/天','waiting',2,NULL,'unfinished'),(8,'2017-04-01','interpret','for business company','proficiency','English','200/d','picked up',1,1,'unfinished'),(10,'2017-03-29','1','1','proficiency','English','150/d','waiting',1,NULL,'unfinished'),(11,'2017-05-01','2','2','proficiency','English','244','waiting',1,NULL,'unfinished');

#
# Structure for table "foreigner"
#

CREATE TABLE `foreigner` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '外商编号',
  `fname` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `fpassportid` varchar(50) NOT NULL DEFAULT '' COMMENT '护照ID',
  `fsex` varchar(10) NOT NULL DEFAULT 'male' COMMENT '性别',
  `fage` int(3) NOT NULL DEFAULT '0' COMMENT '年龄',
  `fcountry` varchar(50) NOT NULL DEFAULT '' COMMENT '国籍',
  `ftel` varchar(11) NOT NULL DEFAULT '' COMMENT '联系方式',
  `femail` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `fpwd` varchar(20) NOT NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "foreigner"
#

REPLACE INTO `foreigner` VALUES (1,'Mike','123456','male',23,'America','123456345','123@qq.com','222'),(2,'Alice','234567','female',35,'British','234567','456@qq.com','222'),(10,'Jack','3436542235','male',45,'British','234556','334657@163.com','111'),(13,'Tom','111','male',32,'Germany','111','111@122.com','111'),(14,'1','1','1',1,'1','1','1','1');

#
# Structure for table "fvoucher"
#

CREATE TABLE `fvoucher` (
  `fvid` int(4) NOT NULL DEFAULT '1',
  `fvname` varchar(30) NOT NULL DEFAULT 'Voucher ￥5' COMMENT '代金券名称',
  `fvyuan` varchar(30) DEFAULT '￥5.00' COMMENT '代金券面值',
  `fvtime` varchar(50) NOT NULL DEFAULT 'permanent' COMMENT '代金券有效期',
  `fvstatus` varchar(20) DEFAULT 'free' COMMENT '代金券状态',
  `forid` int(4) NOT NULL DEFAULT '1' COMMENT '对应外商的Id',
  PRIMARY KEY (`fvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "fvoucher"
#

REPLACE INTO `fvoucher` VALUES (1,'Voucher ￥5','￥5.00','permanent','free',1),(2,'Voucher ￥5','￥5.00','permanent','free',2),(3,'Voucher ￥5','￥5.00','permanent','free',10);

#
# Structure for table "translator"
#

CREATE TABLE `translator` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '译员编号',
  `tname` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `tidno` varchar(18) NOT NULL DEFAULT '' COMMENT '身份证号',
  `tsex` varchar(10) NOT NULL DEFAULT 'male' COMMENT '性别',
  `tage` int(3) NOT NULL DEFAULT '0' COMMENT '年龄',
  `tel` varchar(20) NOT NULL DEFAULT '0' COMMENT '联系方式',
  `temail` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `tlanguage` varchar(20) NOT NULL DEFAULT '英语' COMMENT '语种',
  `tpwd` varchar(20) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "translator"
#

REPLACE INTO `translator` VALUES (1,'王小明','12345678900','male',33,'13800138000','235@163.com','English','222'),(2,'刘小红','23456789000','female',21,'12394879387','324@163.com','Russian','222'),(3,'王小刚','443433199103070823','male',26,'10086','wxg@163.com','English','123456'),(4,'大师傅','333','male',23,'1008622','dsf@163.com','English','333'),(8,'刘芳','3567894532','female',26,'234231334','111@163.com','English','1111'),(9,'王刚刚','111','male',34,'111','wgg@163.com','English','111'),(10,'发福','111','male',34,'111','dsf@163.com','English','111'),(11,'张一','11111','male',23,'3245534343','3235@163.com','English','111'),(12,'张二','356768987434','male',34,'57797423','111@163.com','English','111'),(13,'张三','345678954','male',23,'3245534343','dsf@163.com','English','1'),(15,'章冠','111','male',34,'212323','324223@163.com','English','111');

#
# Structure for table "tvoucher"
#

CREATE TABLE `tvoucher` (
  `tvid` int(4) NOT NULL AUTO_INCREMENT,
  `tvname` varchar(30) NOT NULL DEFAULT '5元代金券' COMMENT '代金券名称',
  `tvyuan` varchar(30) NOT NULL DEFAULT '￥5.00' COMMENT '代金券面值',
  `tvtime` varchar(50) NOT NULL DEFAULT '永久有效' COMMENT '代金券有效期',
  `tvstatus` varchar(20) NOT NULL DEFAULT '可用' COMMENT '代金券状态',
  `traid` int(4) DEFAULT '1',
  PRIMARY KEY (`tvid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "tvoucher"
#

REPLACE INTO `tvoucher` VALUES (1,'5元代金券','￥5.00','永久有效','可用',1),(2,'5元代金券','￥5.00','永久有效','可用',2),(3,'5元代金券','￥5.00','永久有效','可用',3),(4,'5元代金券','￥5.00','永久有效','可用',1);
