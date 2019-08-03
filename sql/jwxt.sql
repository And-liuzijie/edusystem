/*
Navicat MySQL Data Transfer

Source Server         : lzj
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : jwxt

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-08-03 19:54:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for guanliyuan
-- ----------------------------
DROP TABLE IF EXISTS `guanliyuan`;
CREATE TABLE `guanliyuan` (
  `name` varchar(16) DEFAULT NULL,
  `zghao` varchar(16) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guanliyuan
-- ----------------------------
INSERT INTO `guanliyuan` VALUES ('黄芪', '0001', '852456');
INSERT INTO `guanliyuan` VALUES ('冯士浩', '0002', '123456');

-- ----------------------------
-- Table structure for jiaoshi
-- ----------------------------
DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE `jiaoshi` (
  `name` varchar(16) DEFAULT NULL,
  `zhichen` varchar(10) DEFAULT NULL,
  `ganbu` tinyint(1) DEFAULT NULL,
  `shigu` tinyint(1) DEFAULT NULL,
  `zghao` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `zjmenshu` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiaoshi
-- ----------------------------
INSERT INTO `jiaoshi` VALUES ('牛大', '教授', '1', '0', '00001', '456852', '2');
INSERT INTO `jiaoshi` VALUES ('马三', '讲师', '0', '0', '00002', '456852', '2');
INSERT INTO `jiaoshi` VALUES ('刘武', '助理', '0', '0', '00003', '456852', '0');
INSERT INTO `jiaoshi` VALUES ('王二', '教授', '0', '1', '00004', '456852', '0');
INSERT INTO `jiaoshi` VALUES ('武大', '副教授', '0', '0', '00005', '456852', '2');

-- ----------------------------
-- Table structure for jihua
-- ----------------------------
DROP TABLE IF EXISTS `jihua`;
CREATE TABLE `jihua` (
  `kcname` varchar(25) DEFAULT NULL,
  `kccode` varchar(25) DEFAULT NULL,
  `kchour` varchar(25) DEFAULT NULL,
  `bjlei` varchar(8) DEFAULT NULL,
  `banum` int(5) DEFAULT NULL,
  `major` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jihua
-- ----------------------------
INSERT INTO `jihua` VALUES ('算法设计', '859', '23', '本科', '78', '软件');
INSERT INTO `jihua` VALUES ('音乐', '741', '20', '本科', '28', '软件');
INSERT INTO `jihua` VALUES ('离散数学', '852', '40', '本科', '28', '软件');
INSERT INTO `jihua` VALUES ('算法设计', '135', '40', '本科', '32', '软件');
INSERT INTO `jihua` VALUES ('离散数学2', '789', '40', '本科', '32', '软件');

-- ----------------------------
-- Table structure for kebiao
-- ----------------------------
DROP TABLE IF EXISTS `kebiao`;
CREATE TABLE `kebiao` (
  `kcname` varchar(30) DEFAULT NULL,
  `zghao` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `kchour` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kebiao
-- ----------------------------
INSERT INTO `kebiao` VALUES ('数据库', '0001', '黄芪', '60');
INSERT INTO `kebiao` VALUES ('音乐', '00001', '牛大', '20');
INSERT INTO `kebiao` VALUES ('算法设计', '00005', '武大', '23');
INSERT INTO `kebiao` VALUES ('离散数学', '00005', '武大', '40');

-- ----------------------------
-- Table structure for xuesheng
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng` (
  `xshao` varchar(15) DEFAULT NULL,
  `name` varchar(8) DEFAULT NULL,
  `xuefen` int(4) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `banji` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES ('20165617', '马博楠', '20', '123456', '1-4班');
INSERT INTO `xuesheng` VALUES ('20165604', '冯士浩', '3', '654321', '5-8班');
