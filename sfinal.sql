# Host: 127.0.0.1  (Version: 5.5.20)
# Date: 2017-02-20 11:31:31
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "certificate"
#

REPLACE INTO `certificate` VALUES (1,'CET4',''),(2,'CET6','');

#
# Structure for table "foreigner"
#

CREATE TABLE `foreigner` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '外商编号',
  `fname` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `fpassportid` varchar(50) NOT NULL DEFAULT '' COMMENT '护照ID',
  `fsex` varchar(2) NOT NULL DEFAULT '男' COMMENT '性别',
  `fage` int(3) NOT NULL DEFAULT '0' COMMENT '年龄',
  `fcountry` varchar(50) NOT NULL DEFAULT '' COMMENT '国籍',
  `ftel` varchar(20) NOT NULL DEFAULT '' COMMENT '联系方式',
  `femail` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `fpwd` varchar(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "foreigner"
#

REPLACE INTO `foreigner` VALUES (1,'Mike','123456','男',27,'America','123456','123@qq.com','111'),(2,'Alice','234567','女',35,'British','234567','456@qq.com','222');

#
# Structure for table "order"
#

CREATE TABLE `order` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `date` date NOT NULL DEFAULT '0000-00-00' COMMENT '工作时间',
  `work` varchar(50) NOT NULL DEFAULT '' COMMENT '工作内容',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '工作具体描述',
  `request` varchar(10) NOT NULL DEFAULT '熟练' COMMENT '需求译员水平',
  `language` varchar(20) NOT NULL DEFAULT 'English' COMMENT '语言种类',
  `salary` varchar(10) NOT NULL DEFAULT '0' COMMENT '酬劳',
  `status` varchar(20) NOT NULL DEFAULT '' COMMENT '订单状态',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "order"
#

REPLACE INTO `order` VALUES (1,'2017-04-22','广交会家具展翻译','陪同日常交流，协助订单','熟练','English','150/天','已发布订单'),(2,'2017-05-01','北京路档口产品陪同翻译','产品翻译，协助完成合同','熟练','Japanese','160/天','等待中');

#
# Structure for table "translator"
#

CREATE TABLE `translator` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '译员编号',
  `tname` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `tidno` varchar(50) NOT NULL DEFAULT '' COMMENT '身份证号',
  `tsex` varchar(2) NOT NULL DEFAULT '男' COMMENT '性别',
  `tage` int(3) NOT NULL DEFAULT '0' COMMENT '年龄',
  `tel` varchar(20) NOT NULL DEFAULT '0' COMMENT '联系方式',
  `temail` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `tlanguage` varchar(20) NOT NULL DEFAULT '英语' COMMENT '语种',
  `tpwd` varchar(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "translator"
#

REPLACE INTO `translator` VALUES (1,'王小明','12345678900','男',22,'13800138000','235@163.com','英语','111'),(2,'刘小红','23456789000','男',21,'12394879387','324@163.com','俄语','222');
