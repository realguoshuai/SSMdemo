/*
Navicat MySQL Data Transfer

Source Server         : hehe
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : video

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-08-24 11:42:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='学科表，存储各个学科的名字';

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', 'WEB前端');
INSERT INTO `subject` VALUES ('2', 'Java');
INSERT INTO `subject` VALUES ('3', 'Android');
INSERT INTO `subject` VALUES ('4', 'IOS');
INSERT INTO `subject` VALUES ('5', '大数据');
INSERT INTO `subject` VALUES ('6', 'UI');
INSERT INTO `subject` VALUES ('7', 'VR');
INSERT INTO `subject` VALUES ('8', 'U3D');
INSERT INTO `subject` VALUES ('9', '人工智能');
INSERT INTO `subject` VALUES ('10', 'Python');
INSERT INTO `subject` VALUES ('11', 'PHP');
