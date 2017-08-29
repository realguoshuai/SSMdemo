/*
Navicat MySQL Data Transfer

Source Server         : hehe
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : video

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-08-24 11:42:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `course_desc` text,
  `subject_id` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_course_subject` (`subject_id`),
  CONSTRAINT `FK_course_subject` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('6', 'Web前端入门小项目', '适合无编程基础但想学H5前端开发的同学入门学习，也适合UI、Java、PHP等其他学科学员预习或练习。本课程通过新闻页面、个人主页、个人简历、场景秀等多个项目案例由浅入深以项目实战的方式让同学们体验到前端开发乐趣。本课程突出实战，如果希望深入学习课程中涉及到的知识可报名学习智游前端开发课程。', '1');
INSERT INTO `course` VALUES ('7', '前端开发与Git入门', 'Git是一款免费、开源的分布式版本控制系统，用于敏捷高效地处理任何或小或大的项目。经过本章课程学习你将轻松入门，学会使用Git管理自己的源代码，让自己的开发之路井井有条，想进一步学习Git进阶部分的同学可报名智游前端开发课程。', '1');
INSERT INTO `course` VALUES ('8', '每天20分钟轻松入门React', '适合有一定HTML+JS基础、想学习React的同学。本课程循序渐进、浅显易懂，非常适合React入门学习。想进一步学习和使用React进行开发的同学可以报名智游前端开发课程。', '1');
INSERT INTO `course` VALUES ('9', 'UI基础入门', '适合无设计基础但想学UI设计的同学学习。本课程零基础入门，扎实的软件基础、高端的图形创意、资深产品经理的面对面授课尽在智游UI设计课程，希望成为全能设计师的你可报名智游UI设计课程。', '6');
INSERT INTO `course` VALUES ('11', 'Python编程零基础入门', '适合无编程基础但想学Python的同学学习。本课程完全零基础入门，如果希望深入学习Python开发可报名学习智游Python企业开发课程。', '10');
INSERT INTO `course` VALUES ('13', '轻松进击PHP基础', '适合无编程基础但想学PHP开发的同学学习。本课程零基础入门，学习完本节课程相信同学们都轻松入门PHP开发，如果希望深入学习PHP开发可报名学习智游PHP课程，资深”老司机”带你完成PHP大牛的进阶之路！', '11');
