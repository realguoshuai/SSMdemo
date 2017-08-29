/*
Navicat MySQL Data Transfer

Source Server         : hehe
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : video

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-08-24 11:42:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for speaker
-- ----------------------------
DROP TABLE IF EXISTS `speaker`;
CREATE TABLE `speaker` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '主讲人姓名',
  `speaker_desc` text COMMENT '主讲人简介',
  `speaker_job` varchar(30) DEFAULT NULL COMMENT '职位',
  `head_img_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of speaker
-- ----------------------------
INSERT INTO `speaker` VALUES ('7', '赵桂丹', 'H5第1期学员，毕业后留校任助教职务。精通H5课程内容，先后参与过智游教育网站、移动网站、微网站、课时管理系统等多个项目的开发工作。', '高级讲师', 'http://vod.zhiyou100.com/gkk/teacher/zgd.jpg\r\n');
INSERT INTO `speaker` VALUES ('8', '张强', '高级工程师，曾供职于多家公司，参与过多个企业级项目研发。对H5、iOS客户端开发及混合开发有深入的研究，熟悉PHP等服务端技术，有着多年的开发经验和教学经验。', '高级讲师', 'http://vod.zhiyou100.com/gkk/teacher/zq.jpg');
INSERT INTO `speaker` VALUES ('9', '田原惠子', 'Aotodesk国际认证动画师，精通架构设计、效果图表达、APP特效等。多年产品经理经验。  代表作品：《手机博物馆》，《诺客商城》、《途铂旅行》。', '高级讲师', 'http://vod.zhiyou100.com/gkk/teacher/tyhz.jpg\r\n');
INSERT INTO `speaker` VALUES ('10', '邢志勇', '5年应用及平台开发经验，主导并参与多款商业、非商业性质软件的研发工作，精通Web前端、Python服务端、iOS手机App研发、VR开发、Unity3D开发等技术。', '高级讲师', 'http://vod.zhiyou100.com/gkk/teacher/xzy.jpg\r\n');
INSERT INTO `speaker` VALUES ('11', '宋玮', '多年PHP开发经验，参与过多个WEB项目开发，带领团队开发过CRM系统、OA系统、项目管理系统、SEM平台。精通PHP及多款开发框架、MySQL集群、Linux服务器运维、H5前端开发。', '高级讲师', 'http://vod.zhiyou100.com/gkk/teacher/sw.jpg\r\n');
