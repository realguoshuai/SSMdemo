/*
Navicat MySQL Data Transfer

Source Server         : hehe
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : video

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-08-24 11:42:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `pwd` varchar(60) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL COMMENT '昵称',
  `gender` varchar(6) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `imgUrl` varchar(100) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('17', 'zhouyanchao@foxmail.com', null, '1b3584b63fa548c555f9a863d08793ac', null, 'zhou', 'man', '198801', '河南-郑州', 'http://localhost:8081/img/e014a054-792f-4d2f-8cda-75bc3ea345d6.jpg', '2017-06-28 16:46:34');
INSERT INTO `users` VALUES ('18', 'long@126.com', null, '1b3584b63fa548c555f9a863d08793ac', null, 'long', null, null, null, 'http://localhost:8081/img/8ec666e9-bffd-48cf-bc8e-3b73808f23ac.jpg', '2017-07-11 13:46:31');
INSERT INTO `users` VALUES ('19', 'zhang@126.com', null, '1b3584b63fa548c555f9a863d08793ac', null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('20', 'wang@126.com', null, 'c11086871e4220e8c351341d51e08e75', null, null, null, null, null, 'http://localhost:8081/img/4446e3f1-493d-4db0-8482-9481933e9c5b.jpg', '2017-06-28 19:27:01');
INSERT INTO `users` VALUES ('21', 'long@163.com', null, 'c11086871e4220e8c351341d51e08e75', null, null, null, null, null, null, null);
