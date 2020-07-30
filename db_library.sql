/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50168
Source Host           : localhost:3306
Source Database       : db_library

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2017-06-16 16:55:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_bookinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_bookinfo`;
CREATE TABLE `tb_bookinfo` (
  `ISBN` varchar(20) DEFAULT NULL,
  `typeid` varchar(20) DEFAULT NULL,
  `writer` varchar(20) DEFAULT NULL,
  `translator` varchar(20) DEFAULT NULL,
  `publisher` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `price` double DEFAULT NULL,
  `bookname` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_bookinfo
-- ----------------------------
INSERT INTO `tb_bookinfo` VALUES ('1111111111111', '2', '毛以锋', '哈哈', '***出版社', '2013-04-24 00:00:00', '20', 'java开发');

-- ----------------------------
-- Table structure for tb_booktype
-- ----------------------------
DROP TABLE IF EXISTS `tb_booktype`;
CREATE TABLE `tb_booktype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) DEFAULT NULL,
  `days` varchar(20) DEFAULT NULL,
  `fk` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_booktype
-- ----------------------------
INSERT INTO `tb_booktype` VALUES ('1', '计算机类', '30', '0.1');
INSERT INTO `tb_booktype` VALUES ('2', '新闻类', '3', '0.1');
INSERT INTO `tb_booktype` VALUES ('3', '123', '3', '0.1');

-- ----------------------------
-- Table structure for tb_borrow
-- ----------------------------
DROP TABLE IF EXISTS `tb_borrow`;
CREATE TABLE `tb_borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookISBN` varchar(20) DEFAULT NULL,
  `readerISBN` varchar(20) DEFAULT NULL,
  `num` varchar(20) DEFAULT NULL,
  `borrowDate` varchar(40) DEFAULT NULL,
  `backDate` varchar(40) DEFAULT NULL,
  `bookName` varchar(20) DEFAULT NULL,
  `operatorId` varchar(20) DEFAULT NULL,
  `isback` varchar(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_borrow
-- ----------------------------
INSERT INTO `tb_borrow` VALUES ('1', '1111111111111', '1111111111111', null, '2013-04-25 02:53:34.0', '2013-04-25 02:53:34.0', null, '1', '0');
INSERT INTO `tb_borrow` VALUES ('2', '1111111111111', '1111111111111', null, '2013-04-25 02:59:10.0', '2013-04-28 02:59:10.0', null, '1', null);
INSERT INTO `tb_borrow` VALUES ('3', '1111111111111', '1111111111111', null, '2013-04-25 03:00:52.0', '2013-04-28 03:00:52.0', null, '1', '0');

-- ----------------------------
-- Table structure for tb_operator
-- ----------------------------
DROP TABLE IF EXISTS `tb_operator`;
CREATE TABLE `tb_operator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `identityCard` varchar(50) DEFAULT NULL,
  `workdate` datetime DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `admin` int(11) DEFAULT '0',
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_operator
-- ----------------------------
INSERT INTO `tb_operator` VALUES ('1', 'redpigedu', null, null, null, null, null, '1', '123456');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `ISBN` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `operator` varchar(20) DEFAULT NULL,
  `checkAndAccept` varchar(20) DEFAULT NULL,
  `zk` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('1111111111111', '2013-04-25 00:00:00', '11', 'java1234', '0', '0.1');

-- ----------------------------
-- Table structure for tb_reader
-- ----------------------------
DROP TABLE IF EXISTS `tb_reader`;
CREATE TABLE `tb_reader` (
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `identityCard` varchar(40) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `maxNum` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `keepMoney` double DEFAULT NULL,
  `zj` int(11) DEFAULT NULL,
  `zy` varchar(20) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `bztime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_reader
-- ----------------------------
INSERT INTO `tb_reader` VALUES ('张三', '1', '11', '1111111111111', '2014-04-24 00:00:00', '11', '11', '10', '3', '学生', '1111111111111', '2013-04-24 00:00:00');
