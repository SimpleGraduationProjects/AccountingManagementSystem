/*
Navicat MySQL Data Transfer

Source Server         : 47.107.227.121
Source Server Version : 50562
Source Host           : 47.107.227.121:3306
Source Database       : jizhang

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-07-04 08:33:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for tong
-- ----------------------------
DROP TABLE IF EXISTS `tong`;
CREATE TABLE `tong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `kind` varchar(200) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `year` varchar(200) DEFAULT NULL,
  `month` varchar(200) DEFAULT NULL,
  `shou` int(11) DEFAULT NULL,
  `zhi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tong
-- ----------------------------
INSERT INTO `tong` VALUES ('4', 'zs', '出账', '公费', '2018-05-09', '2018', '05', '0', '6000');
INSERT INTO `tong` VALUES ('5', 'laojiayu', '??', '??', '2020-04-23', '2020', '04', '0', '200');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `tel` varchar(200) DEFAULT NULL,
  `rname` varchar(20) DEFAULT NULL,
  `adddate` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', 'laojiayu', '?', '23', '123', '17377160424', '???', '2020-4-23 13:09:17');
INSERT INTO `user` VALUES ('4', 'wxt', '?', '20', '123', '15678984562', '???', '2020-4-23 13:48:38');
INSERT INTO `user` VALUES ('5', 'laojiayu', '?', '23', '123', '17377160424', '???', '2020-4-23 14:03:59');

-- ----------------------------
-- Table structure for zhang
-- ----------------------------
DROP TABLE IF EXISTS `zhang`;
CREATE TABLE `zhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `rname` varchar(20) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `kind` varchar(50) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `yong` varchar(100) DEFAULT NULL,
  `info` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of zhang
-- ----------------------------
INSERT INTO `zhang` VALUES ('1', '??', 'laojiayu', '???', '??', '??', '2020-04-23', '200', '??', '????');
