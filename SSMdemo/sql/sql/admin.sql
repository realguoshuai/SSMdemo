/*
Navicat MySQL Data Transfer

Source Server         : hehe
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : video

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-08-24 11:42:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `roles` varchar(20) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'administrator');
INSERT INTO `admin` VALUES ('2', '111', '698d51a19d8a121ce581499d7b701668', '111');
INSERT INTO `admin` VALUES ('3', 'admin', '123456', 'administrator');
INSERT INTO `admin` VALUES ('4', null, null, null);
