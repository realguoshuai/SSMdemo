/*
Navicat MySQL Data Transfer

Source Server         : hehe
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : video

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-08-24 11:43:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '标题',
  `detail` text COMMENT '简介',
  `time` int(8) DEFAULT NULL COMMENT '时长',
  `spearker_id` int(5) DEFAULT NULL COMMENT '关联主讲人',
  `course_id` int(5) DEFAULT NULL COMMENT '关联课程表',
  `video_url` varchar(100) DEFAULT NULL COMMENT '视频播放地址',
  `image_url` varchar(100) DEFAULT NULL COMMENT '封面地址',
  `play_num` int(10) unsigned zerofill DEFAULT NULL COMMENT '播放次数',
  PRIMARY KEY (`id`),
  KEY `FK_video_speaker` (`spearker_id`),
  KEY `FK_video_course` (`course_id`),
  CONSTRAINT `FK_video_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FK_video_speaker` FOREIGN KEY (`spearker_id`) REFERENCES `speaker` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('217', '前端开发环境搭建', '前端开发环境的搭建，包括前端常用开发工具介绍、VS Code下载安装，以及前端开发常用运行工具--浏览器的介绍、Firefox下载安装等内容。帮助大家准备好前端开发环境以便深入学习后续小项目', '562', '7', '6', 'http://vod.zhiyou100.com/gkk/h5/c1/01.mp4', 'http://vod.zhiyou100.com/gkk/h5/c1/image/01.jpg', '0000000433');
INSERT INTO `video` VALUES ('218', 'HTML页面基本结构', '前端开发主要技术和在项目中的作用、HTML标签基本结构、HTML文档基本结构、字符编码问题及开发一个简单的页面。', '596', '7', '6', 'http://vod.zhiyou100.com/gkk/h5/c1/01.mp4', 'http://vod.zhiyou100.com/gkk/h5/c1/image/02.jpg', '0000000365');
INSERT INTO `video` VALUES ('219', '认识线性图标', '初识UI，本节课主要讲解UI设计及产品经理课程中的第一小节：线性图标设计，包括：图标的定义、图标的用途分类、线性图标的设计原则，最后老师还给大家布置了一个有趣的作业，聪明机智的你来一起学习吧！', '1421', '9', '9', 'http://vod.zhiyou100.com/gkk/ui/c1/01.mp4', 'http://vod.zhiyou100.com/gkk/ui/c1/image/01.jpg', '0000000378');
INSERT INTO `video` VALUES ('220', '新闻页面开发', ' 新闻页面的开发，包括前端开发中最常用的HTML标签：H1、P、DIV、SPAN、IMG、A等，还包括控制文字、图片、超链接等最常用的CSS样式。', '1374', '7', '6', 'http://vod.zhiyou100.com/gkk/h5/c1/03.mp4', 'http://vod.zhiyou100.com/gkk/h5/c1/image/03.jpg', '0000000332');
INSERT INTO `video` VALUES ('223', '了解PHP', '讲解了PHP的基本概述，帮助大家对PHP语言有一个大体的认知，包括：什么是PHP、PHP的优势、智游教育的PHP课程、Lamp与wamp的介绍、开发环境和开发工具的的配置、PHP基本语法。', '1268', '11', '13', 'http://vod.zhiyou100.com/gkk/php/c1/01.mp4', 'http://vod.zhiyou100.com/gkk/php/c1/image/01.jpg', '0000000342');
INSERT INTO `video` VALUES ('224', 'React快速体验-组件', '介绍了React的前生今世，让同学们了解库文件下载和整体的React项目结构及React库最简单的使用。', '907', '8', '8', 'http://vod.zhiyou100.com/gkk/h5/c3/01.mp4', 'http://vod.zhiyou100.com/gkk/h5/c3/image/01.jpg', '0000000191');
INSERT INTO `video` VALUES ('225', '个人主页项目开发-1', '个人主页项目的演示、页面结构分析、包括网页常见的构成：页头、LOGO、横幅、导航、主体、页脚等。在页头开发过程中使用了固定位置、定宽居中等常见的布局模式。', '1692', '7', '6', 'http://vod.zhiyou100.com/gkk/h5/c1/05-1.mp4', 'http://vod.zhiyou100.com/gkk/h5/c1/image/05-1.jpg', '0000000284');
INSERT INTO `video` VALUES ('226', 'React创建组件的方法', '详细介绍了最简单的React组件的创建、使用及组件之间的简单嵌套使用。', '749', '8', '8', 'http://vod.zhiyou100.com/gkk/h5/c3/02.mp4', 'http://vod.zhiyou100.com/gkk/h5/c3/image/02.jpg', '0000000165');
INSERT INTO `video` VALUES ('227', 'ES6重写组件和生命周期', '使用ES6语法重写React组件，更简洁的语法，更清晰的思路，同时介绍了React组件的生命周期。', '1195', '8', '8', 'http://vod.zhiyou100.com/gkk/h5/c3/03.mp4', 'http://vod.zhiyou100.com/gkk/h5/c3/image/03.jpg', '0000000188');
INSERT INTO `video` VALUES ('228', '个人主页项目开发-2', '个人主页项目页面主体部分的开发，大量使用了定宽居中的技术，在我的同学部分还使用了相对定位、绝对定位等非常重要定位技术，还使用了圆形边框等CSS3新技术。', '1699', '7', '6', 'http://vod.zhiyou100.com/gkk/h5/c1/05-2.mp4', 'http://vod.zhiyou100.com/gkk/h5/c1/image/05-2.jpg', '0000000266');
INSERT INTO `video` VALUES ('229', '使用JSX创建组件', '使用JSX重写React单一组件、组合组件，了解React的组件化思想及JSX的使用。', '1414', '8', '8', 'http://vod.zhiyou100.com/gkk/h5/c3/04.mp4', 'http://vod.zhiyou100.com/gkk/h5/c3/image/04.jpg', '0000000263');
INSERT INTO `video` VALUES ('230', '个人主页项目开发-3', '个人主页的语义化重构。介绍了H5语义化的意义、将非语义化的DIV+CSS改造成语义化标签的具体实践过程。以及VS Code分割视图在开发中的应用。', '409', '7', '6', 'http://vod.zhiyou100.com/gkk/h5/c1/05-3.mp4', 'http://vod.zhiyou100.com/gkk/h5/c1/image/05-3.jpg', '0000000236');
INSERT INTO `video` VALUES ('231', 'React虚拟DOM', 'React的快速响应魅力所在——虚拟DOM，本节课详细比较了普通DOM和虚拟DOM的区别。', '1468', '8', '8', 'http://vod.zhiyou100.com/gkk/h5/c3/05.mp4', 'http://vod.zhiyou100.com/gkk/h5/c3/image/05.jpg', '0000000250');
INSERT INTO `video` VALUES ('238', '个人简历项目开发-1', '个人简历项目的开发。RGB颜色简介，字体简介及安装。本案例重度使用定位技术，使用了CSS3中新增的旋转图形变换技术。以及一些高级CSS选择器。', '2112', '7', '6', 'http://vod.zhiyou100.com/gkk/h5/c1/06-1.mp4', 'http://vod.zhiyou100.com/gkk/h5/c1/image/06-1.jpg', '0000000232');
INSERT INTO `video` VALUES ('240', '个人简历项目开发-2', '个人简历项目开发的第二部分，包括字体的使用（注意：实际开发中会使用更高级的技术来使用字体）、背景图片的控制、内容溢出控制、绝对定位元素的层次控制、半透明的使用等。', '1997', '7', '6', 'http://vod.zhiyou100.com/gkk/h5/c1/06-2.mp4\"', 'http://vod.zhiyou100.com/gkk/h5/c1/image/06-2.jpg', '0000000206');
INSERT INTO `video` VALUES ('242', '场景秀项目开发-1', '场景秀项目是一个手机页面、本部分介绍了响应式开发环境、viewport在响应式开发中的应用、vw/vh等响应式CSS单位的使用、CSS函数calc()在单位混合计算时的使用。', '1569', '7', '6', 'http://vod.zhiyou100.com/gkk/h5/c1/07-1.mp4', 'http://vod.zhiyou100.com/gkk/h5/c1/image/07-1.jpg', '0000000218');
INSERT INTO `video` VALUES ('244', '场景秀项目开发-2', '场景秀动画部分的开发、本部分是场景秀开发的最出彩最重要的部分。包括关键帧动画的定义、平移动画、绽放动画等动画效果的实现方法。H5音频及JS控制音乐播放暂停。', '2179', '7', '6', 'http://vod.zhiyou100.com/gkk/h5/c1/07-2.mp4', 'http://vod.zhiyou100.com/gkk/h5/c1/image/07-2.jpg', '0000000223');
INSERT INTO `video` VALUES ('245', 'Git的安装及配置', '介绍了Git的强大之处：保存开发过程、实验新特性而不破坏现有数据、多人合作开发、分布式思想、没网也可以使用，详细的讲解了Git的下载方法和安装注意事项。', '320', '7', '7', 'http://vod.zhiyou100.com/gkk/h5/c2/01.mp4', 'http://vod.zhiyou100.com/gkk/h5/c2/image/01.jpg', '0000000208');
INSERT INTO `video` VALUES ('246', '使用Git记录开发过程', '详细操作了使用Git管理源代码，包括：初始化、从工作区添加到暂存区、从暂存区添加到持久区等Git命令，同时介绍了Git的文件结构、撤回功能。', '1024', '7', '7', 'http://vod.zhiyou100.com/gkk/h5/c2/02.mp4', 'http://vod.zhiyou100.com/gkk/h5/c2/image/02.jpg', '0000000158');
INSERT INTO `video` VALUES ('247', '响应式登录页面项目开发', '响应式页面开发与移动端适配，重点内容包括vw/vh单位、媒体查询的介绍及在移动端适配中的应用方法。表单及INPUT标签的基本使用和使用CSS控制表单样式的方法等。', '2134', '7', '6', 'http://vod.zhiyou100.com/gkk/h5/c1/08.mp4', 'http://vod.zhiyou100.com/gkk/h5/c1/image/08.jpg', '0000000244');
INSERT INTO `video` VALUES ('248', '使用码云作为远程代码库', '介绍了码云的使用，注册账号并登录，配置SSH公钥。', '385', '7', '7', 'http://vod.zhiyou100.com/gkk/h5/c2/03.mp4', 'http://vod.zhiyou100.com/gkk/h5/c2/image/03.jpg', '0000000171');
INSERT INTO `video` VALUES ('249', '与远程代码库同步', '详细讲解在码云上面创建自己的项目并克隆到本地，使用Git命令将本地代码提交到远程仓库等内容。', '355', '7', '7', 'http://vod.zhiyou100.com/gkk/h5/c2/04.mp4', 'http://vod.zhiyou100.com/gkk/h5/c2/image/04.jpg', '0000000221');
INSERT INTO `video` VALUES ('250', 'Python运行环境下载', 'Python开发环境的搭建，Python的下载及安装，帮助大家准备好Python开发环境。', '350', '10', '11', 'http://vod.zhiyou100.com/gkk/python/c1/01.mp4', 'http://vod.zhiyou100.com/gkk/python/c1/image/01.jpg', '0000000243');
INSERT INTO `video` VALUES ('251', 'Python运行环境安装', 'Windows操作系统下面Python环境的安装及注意事项。', '239', '10', '11', 'http://vod.zhiyou100.com/gkk/python/c1/02.mp4', 'http://vod.zhiyou100.com/gkk/python/c1/image/02.jpg', '0000000178');
INSERT INTO `video` VALUES ('252', 'IDLE的基本使用', 'Python自带编辑器IDLE的使用，初识Python的语法，简单语法的编写和运行。', '1149', '10', '11', 'http://vod.zhiyou100.com/gkk/python/c1/03.mp4', 'http://vod.zhiyou100.com/gkk/python/c1/image/03.jpg', '0000000193');
INSERT INTO `video` VALUES ('253', 'Sublime的基本使用', 'Sublime的安装及基本使用，主要介绍了Sublime的智能提示功能，常用操作，例如新建文件、保存文件、字体设置、窗口背景颜色等。', '565', '10', '11', 'http://vod.zhiyou100.com/gkk/python/c1/04.mp4', 'http://vod.zhiyou100.com/gkk/python/c1/image/04.jpg', '0000000166');
INSERT INTO `video` VALUES ('254', 'Print语句', '讲解Python中的语句概述，主要介绍了常用的Print语句，语法错误的解决，以及注释的写法。', '805', '10', '11', 'http://vod.zhiyou100.com/gkk/python/c1/05.mp4', 'http://vod.zhiyou100.com/gkk/python/c1/image/05.jpg', '0000000192');
INSERT INTO `video` VALUES ('255', '变量', '介绍了Python语法中的变量写法、使用以及变量命名中的注意事项。', '332', '10', '11', 'http://vod.zhiyou100.com/gkk/python/c1/06.mp4', 'http://vod.zhiyou100.com/gkk/python/c1/image/06.jpg', '0000000270');
INSERT INTO `video` VALUES ('256', '运算符', '讲解Python中运算符的基本使用，主要有算数运算符、比较运算符，介绍了三个双引号注释多行代码，', '667', '10', '11', 'http://vod.zhiyou100.com/gkk/python/c1/07.mp4', 'http://vod.zhiyou100.com/gkk/python/c1/image/07.jpg', '0000000209');
INSERT INTO `video` VALUES ('257', 'If条件语句', '讲解Python中的if条件语句，利用if语句进行简单的出租车价格计算。', '1099', '10', '11', 'http://vod.zhiyou100.com/gkk/python/c1/08.mp4', 'http://vod.zhiyou100.com/gkk/python/c1/image/08.jpg', '0000000193');
INSERT INTO `video` VALUES ('258', 'While循环', '介绍Python编程中的while循环语句的基本形式，语句格式等。', '1024', '10', '11', 'http://vod.zhiyou100.com/gkk/python/c1/09.mp4', 'http://vod.zhiyou100.com/gkk/python/c1/image/09.jpg', '0000000185');
INSERT INTO `video` VALUES ('259', 'For循环', '讲解Python中的for循环，简单介绍了for循环的简单使用及语句格式。', '1085', '10', '11', 'http://vod.zhiyou100.com/gkk/python/c1/10.mp4', 'http://vod.zhiyou100.com/gkk/python/c1/image/10.jpg', '0000000168');
