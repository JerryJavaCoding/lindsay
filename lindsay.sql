# Host: 127.0.0.1  (Version: 5.5.20)
# Date: 2017-02-18 17:43:14
# Generator: MySQL-Front 5.3  (Build 4.89)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '管理员密码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "admin"
#


#
# Structure for table "certificate"
#

DROP TABLE IF EXISTS `certificate`;
CREATE TABLE `certificate` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '证书编号',
  `cname` varchar(255) NOT NULL DEFAULT '' COMMENT '证书名称',
  `cpic` varchar(255) NOT NULL DEFAULT '' COMMENT '证书图片',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "certificate"
#


#
# Structure for table "foreigner"
#

DROP TABLE IF EXISTS `foreigner`;
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


#
# Structure for table "order"
#

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `date` date NOT NULL DEFAULT '0000-00-00' COMMENT '工作时间',
  `work` varchar(50) NOT NULL DEFAULT '' COMMENT '工作内容',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '工作具体描述',
  `request` varchar(10) NOT NULL DEFAULT '熟练' COMMENT '需求译员水平',
  `language` varchar(20) NOT NULL DEFAULT 'English' COMMENT '语言种类',
  `salary` int(11) NOT NULL DEFAULT '0' COMMENT '酬劳',
  `status` varchar(20) NOT NULL DEFAULT '' COMMENT '订单状态',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "order"
#


#
# Structure for table "translator"
#

DROP TABLE IF EXISTS `translator`;
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

