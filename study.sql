/*
Navicat MySQL Data Transfer

Source Server         : chen
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : study

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-05-18 17:18:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 用户信息', '6', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 用户信息', '6', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 用户信息', '6', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('24', 'Can add 邮箱验证码', '7', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('25', 'Can change 邮箱验证码', '7', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('26', 'Can delete 邮箱验证码', '7', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('27', 'Can add 轮播图', '8', 'add_banner');
INSERT INTO `auth_permission` VALUES ('28', 'Can change 轮播图', '8', 'change_banner');
INSERT INTO `auth_permission` VALUES ('29', 'Can delete 轮播图', '8', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('30', 'Can view 轮播图', '8', 'view_banner');
INSERT INTO `auth_permission` VALUES ('31', 'Can view 邮箱验证码', '7', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 用户信息', '6', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 课程', '9', 'add_course');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 课程', '9', 'change_course');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 课程', '9', 'delete_course');
INSERT INTO `auth_permission` VALUES ('36', 'Can add 章节', '10', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('37', 'Can change 章节', '10', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('38', 'Can delete 章节', '10', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('39', 'Can add 视频', '11', 'add_video');
INSERT INTO `auth_permission` VALUES ('40', 'Can change 视频', '11', 'change_video');
INSERT INTO `auth_permission` VALUES ('41', 'Can delete 视频', '11', 'delete_video');
INSERT INTO `auth_permission` VALUES ('42', 'Can add 课程资源', '12', 'add_courseresource');
INSERT INTO `auth_permission` VALUES ('43', 'Can change 课程资源', '12', 'change_courseresource');
INSERT INTO `auth_permission` VALUES ('44', 'Can delete 课程资源', '12', 'delete_courseresource');
INSERT INTO `auth_permission` VALUES ('45', 'Can view 课程', '9', 'view_course');
INSERT INTO `auth_permission` VALUES ('46', 'Can view 课程资源', '12', 'view_courseresource');
INSERT INTO `auth_permission` VALUES ('47', 'Can view 章节', '10', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 视频', '11', 'view_video');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 城市', '13', 'add_citydict');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 城市', '13', 'change_citydict');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 城市', '13', 'delete_citydict');
INSERT INTO `auth_permission` VALUES ('52', 'Can add 课程机构', '14', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('53', 'Can change 课程机构', '14', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete 课程机构', '14', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('55', 'Can add 教师', '15', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('56', 'Can change 教师', '15', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete 教师', '15', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('58', 'Can view 城市', '13', 'view_citydict');
INSERT INTO `auth_permission` VALUES ('59', 'Can view 课程机构', '14', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 教师', '15', 'view_teacher');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 用户咨询', '16', 'add_userask');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 用户咨询', '16', 'change_userask');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 用户咨询', '16', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('64', 'Can add 课程评论', '17', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('65', 'Can change 课程评论', '17', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('66', 'Can delete 课程评论', '17', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('67', 'Can add 用户收藏', '18', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('68', 'Can change 用户收藏', '18', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('69', 'Can delete 用户收藏', '18', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('70', 'Can add 用户消息', '19', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('71', 'Can change 用户消息', '19', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('72', 'Can delete 用户消息', '19', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 用户课程', '20', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 用户课程', '20', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 用户课程', '20', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 课程评论', '17', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('77', 'Can view 用户咨询', '16', 'view_userask');
INSERT INTO `auth_permission` VALUES ('78', 'Can view 用户课程', '20', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('79', 'Can view 用户收藏', '18', 'view_userfavorite');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 用户消息', '19', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('81', 'Can add Bookmark', '21', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('82', 'Can change Bookmark', '21', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete Bookmark', '21', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('84', 'Can add User Setting', '22', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('85', 'Can change User Setting', '22', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('86', 'Can delete User Setting', '22', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('87', 'Can add User Widget', '23', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('88', 'Can change User Widget', '23', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('89', 'Can delete User Widget', '23', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('90', 'Can view Bookmark', '21', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('91', 'Can view User Setting', '22', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('92', 'Can view User Widget', '23', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('93', 'Can add captcha store', '24', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('94', 'Can change captcha store', '24', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete captcha store', '24', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('96', 'Can view captcha store', '24', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('97', 'Can add log entry', '25', 'add_log');
INSERT INTO `auth_permission` VALUES ('98', 'Can change log entry', '25', 'change_log');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete log entry', '25', 'delete_log');
INSERT INTO `auth_permission` VALUES ('100', 'Can view log entry', '25', 'view_log');

-- ----------------------------
-- Table structure for `captcha_captchastore`
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('198', 'DXQC', 'dxqc', '253d2cd86d27810e214c3e40e5a147c3e9263f73', '2018-05-14 16:46:56.635000');
INSERT INTO `captcha_captchastore` VALUES ('199', 'WCUW', 'wcuw', 'fbfe4aa4b200ab7e5637067a85015ee29cedaa21', '2018-05-14 16:47:03.167000');
INSERT INTO `captcha_captchastore` VALUES ('200', 'BHEW', 'bhew', '6c7ec844d4f849944d101ebfcb042584914ed82a', '2018-05-14 16:47:04.660000');
INSERT INTO `captcha_captchastore` VALUES ('202', 'YTCJ', 'ytcj', 'f13bc02c439186b7ffea01ac3e179867faac45ac', '2018-05-14 16:50:03.176000');
INSERT INTO `captcha_captchastore` VALUES ('203', 'HKRJ', 'hkrj', '48e21211d189cc7ea273598288397ad1a1e86b57', '2018-05-14 16:50:20.940000');
INSERT INTO `captcha_captchastore` VALUES ('204', 'OYYR', 'oyyr', 'a2eb85e87a59652b227462a0cfdd3820bbbd3396', '2018-05-14 16:50:21.898000');
INSERT INTO `captcha_captchastore` VALUES ('205', 'CMNB', 'cmnb', '046a5c64788db2e3be2345ec2f23c13ebbae2649', '2018-05-15 17:12:47.252000');
INSERT INTO `captcha_captchastore` VALUES ('206', 'YUVM', 'yuvm', 'c8e06bfe17ca56688ef9652c863ebc3790f53968', '2018-05-15 17:14:25.924000');
INSERT INTO `captcha_captchastore` VALUES ('207', 'VCLQ', 'vclq', '1913209a6d92d240ed1482e6392299d69ba17ac4', '2018-05-15 17:14:38.923000');

-- ----------------------------
-- Table structure for `courses_course`
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `category` varchar(20) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_tell` varchar(300) NOT NULL,
  `youneed_know` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_11456c5a` (`course_org_id`),
  KEY `courses_course_d9614d40` (`teacher_id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`),
  CONSTRAINT `courses_cour_course_org_id_4d2c4aab_fk_organization_courseorg_id` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES ('1', 'django', 'django', 'django', 'cj', '0', '60', '0', 'courses/2018/03/f4e1cda88a049d76e5f76fc8b2b068b1.jpg', '134', '2017-11-01 01:34:00.000000', '1', '后端开发', 'python', '1', '关于django', '关于django?', '1');
INSERT INTO `courses_course` VALUES ('2', 'ios', 'ios', 'ios', 'zj', '45', '2', '1', 'courses/2018/03/001f95982f00e89e62944378b28b2f00.png', '60', '2017-11-03 02:38:00.000000', '2', '后端开发', 'ios', '2', '关于ios', '关于ios?', '0');
INSERT INTO `courses_course` VALUES ('3', 'tornado', 'tornado', 'tornado', 'gj', '0', '4', '4', 'courses/2018/03/9a33516bba87e2dce029be1e2626e40c.jpg', '12', '2017-11-03 22:10:00.000000', '4', '后端开发', 'python', '2', '关于tornado', '关于tornado?', '0');
INSERT INTO `courses_course` VALUES ('4', 'mysql', 'mysql', 'mysql', 'gj', '4', '2', '5', 'courses/2018/03/00fc3579da3d6d29c4f37223cbfca391.jpg', '11', '2017-11-03 22:11:00.000000', '4', '后端开发', 'mysql', '2', '关于mysql', '关于mysql?', '0');
INSERT INTO `courses_course` VALUES ('5', 'flask', 'flask', 'flask', 'cj', '3', '2', '1', 'courses/2018/03/3d0a14d4155689a1ca6cd126f17bbfbe.png', '12', '2017-11-03 22:12:00.000000', '2', '后端开发', 'python', '3', '关于flask', '关于flask?', '0');
INSERT INTO `courses_course` VALUES ('6', 'c#', 'c#', 'c#', 'gj', '3', '4', '2', 'courses/2018/03/8897bc79eb7d7a3d999a905f2acd2a7b.png', '8', '2017-11-03 22:12:00.000000', '2', '后端开发', 'c#', '4', '关于c#', '关于c#?', '0');
INSERT INTO `courses_course` VALUES ('7', 'c++', 'c++', 'c++', 'zj', '4', '8', '7', 'courses/2018/03/4bc4f3c1efc0e7ec384353c9e0fdbd40.jpg', '5', '2017-11-03 22:12:00.000000', '3', '后端开发', 'c++', '5', '关于c++', '关于c++?', '0');
INSERT INTO `courses_course` VALUES ('8', 'php', 'php', 'php', 'gj', '7', '10', '5', 'courses/2018/03/39f916b120bf6c1aa65ba66327c8b59f.jpg', '17', '2017-11-03 22:13:00.000000', '3', '后端开发', 'php', '6', '关于php', '关于php?', '1');
INSERT INTO `courses_course` VALUES ('9', 'python', 'python', 'python', 'gj', '3', '10', '1', 'courses/2018/03/71d14ab7aac924f5b163a4ec37b36096.jpg', '19', '2017-11-03 22:13:00.000000', '3', '后端开发', 'python', '5', '关于python', '关于python?', '1');
INSERT INTO `courses_course` VALUES ('10', 'java', 'java', 'java', 'cj', '2', '13', '4', 'courses/2018/03/5e888339cf96a74376fc92034d646b53.jpg', '21', '2017-11-03 22:14:00.000000', '3', '后端开发', 'java', '4', '关于java', '关于java?', '0');
INSERT INTO `courses_course` VALUES ('11', 'perl', 'perl', 'perl', 'zj', '3', '8', '2', 'courses/2018/03/8b4e3fc7824617bd0c1cd940adf5523e.jpg', '15', '2017-11-03 22:14:00.000000', '4', '后端开发', 'perl', '3', '关于perl', '关于perl?', '0');
INSERT INTO `courses_course` VALUES ('12', 'android', 'android', 'android', 'zj', '45', '3', '4', 'courses/2018/03/bbc381b86d6d5799350f00eb9a7ba2af.jpg', '7', '2018-03-03 15:43:00.000000', '2', '后端开发', 'android', '2', '关于android', '关于android?', '0');
INSERT INTO `courses_course` VALUES ('13', 'linux', 'linux', 'linux', 'cj', '34', '6', '4', 'courses/2018/03/f074aa4f065c4b7681498fa60c9c6d44.jpg', '14', '2018-03-03 15:44:00.000000', '3', '后端开发', 'linux', '2', '关于linux', '关于linux?', '1');
INSERT INTO `courses_course` VALUES ('14', 'thinkphp', 'thinkphp', 'thinkphp', 'cj', '43', '6', '2', 'courses/2018/03/934bba807d7300c20919fdc203e61b81.jpg', '15', '2018-03-03 15:45:00.000000', '4', '后端开发', 'thinkphp', '2', '关于thinkphp', '关于thinkphp?', '0');
INSERT INTO `courses_course` VALUES ('15', 'laravel', 'laravel', 'laravel', 'zj', '43', '31', '4', 'courses/2018/03/fcb44c84a5aaada514aa747bfce7375a.jpg', '18', '2018-03-03 15:47:00.000000', '2', '后端开发', 'laravel', '1', '关于laravel', '关于laravel?', '0');
INSERT INTO `courses_course` VALUES ('16', 'AI', 'AI', 'AI', 'cj', '34', '71', '3', 'courses/2018/03/timg.jpg', '104', '2018-03-03 15:48:00.000000', '3', '后端开发', 'AI', '2', '关于AI', '关于AI?', '1');

-- ----------------------------
-- Table structure for `courses_courseresource`
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES ('7', 'django', 'course/resource/18/03/redis-4.0.8.tar.gz', '2018-03-04 11:18:00.000000', '1');
INSERT INTO `courses_courseresource` VALUES ('8', 'redis', 'course/resource/18/03/redis-4.0.8.tar_d9VY1Pa.gz', '2018-03-04 11:18:00.000000', '1');
INSERT INTO `courses_courseresource` VALUES ('9', 'mysql', 'course/resource/18/03/redis-4.0.8.tar_zhRHNL5.gz', '2018-03-04 11:18:00.000000', '1');

-- ----------------------------
-- Table structure for `courses_lesson`
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES ('1', '第一章 环境准备', '2018-03-04 10:46:24.000000', '1');
INSERT INTO `courses_lesson` VALUES ('2', '第二章 基础知识', '2018-03-04 10:46:24.000000', '1');
INSERT INTO `courses_lesson` VALUES ('3', '第三章 环境准备', '2018-03-04 10:46:24.000000', '1');
INSERT INTO `courses_lesson` VALUES ('4', '第四章 功能完善', '2018-03-04 10:46:24.000000', '1');
INSERT INTO `courses_lesson` VALUES ('5', '第五章 线上部署', '2018-03-04 10:46:24.000000', '1');
INSERT INTO `courses_lesson` VALUES ('6', '第一章 环境准备', '2018-03-04 10:46:24.000000', '2');
INSERT INTO `courses_lesson` VALUES ('7', '第二章 基础知识', '2018-03-04 10:46:24.000000', '2');
INSERT INTO `courses_lesson` VALUES ('8', '第三章 环境准备', '2018-03-04 10:46:24.000000', '2');
INSERT INTO `courses_lesson` VALUES ('9', '第四章 功能完善', '2018-03-04 10:46:24.000000', '2');
INSERT INTO `courses_lesson` VALUES ('10', '第五章 线上部署', '2018-03-04 10:46:24.000000', '2');
INSERT INTO `courses_lesson` VALUES ('11', '第一章 环境准备', '2018-03-04 10:46:24.000000', '3');
INSERT INTO `courses_lesson` VALUES ('12', '第二章 基础知识', '2018-03-04 10:46:24.000000', '3');
INSERT INTO `courses_lesson` VALUES ('13', '第三章 环境准备', '2018-03-04 10:46:25.000000', '3');
INSERT INTO `courses_lesson` VALUES ('14', '第四章 功能完善', '2018-03-04 10:46:25.000000', '3');
INSERT INTO `courses_lesson` VALUES ('15', '第五章 线上部署', '2018-03-04 10:46:25.000000', '3');
INSERT INTO `courses_lesson` VALUES ('16', '第一章 环境准备', '2018-03-04 10:46:25.000000', '4');
INSERT INTO `courses_lesson` VALUES ('17', '第二章 基础知识', '2018-03-04 10:46:25.000000', '4');
INSERT INTO `courses_lesson` VALUES ('18', '第三章 环境准备', '2018-03-04 10:46:25.000000', '4');
INSERT INTO `courses_lesson` VALUES ('19', '第四章 功能完善', '2018-03-04 10:46:25.000000', '4');
INSERT INTO `courses_lesson` VALUES ('20', '第五章 线上部署', '2018-03-04 10:46:25.000000', '4');
INSERT INTO `courses_lesson` VALUES ('21', '第一章 环境准备', '2018-03-04 10:46:25.000000', '5');
INSERT INTO `courses_lesson` VALUES ('22', '第二章 基础知识', '2018-03-04 10:46:25.000000', '5');
INSERT INTO `courses_lesson` VALUES ('23', '第三章 环境准备', '2018-03-04 10:46:25.000000', '5');
INSERT INTO `courses_lesson` VALUES ('24', '第四章 功能完善', '2018-03-04 10:46:25.000000', '5');
INSERT INTO `courses_lesson` VALUES ('25', '第五章 线上部署', '2018-03-04 10:46:25.000000', '5');
INSERT INTO `courses_lesson` VALUES ('26', '第一章 环境准备', '2018-03-04 10:46:26.000000', '6');
INSERT INTO `courses_lesson` VALUES ('27', '第二章 基础知识', '2018-03-04 10:46:26.000000', '6');
INSERT INTO `courses_lesson` VALUES ('28', '第三章 环境准备', '2018-03-04 10:46:26.000000', '6');
INSERT INTO `courses_lesson` VALUES ('29', '第四章 功能完善', '2018-03-04 10:46:26.000000', '6');
INSERT INTO `courses_lesson` VALUES ('30', '第五章 线上部署', '2018-03-04 10:46:26.000000', '6');
INSERT INTO `courses_lesson` VALUES ('31', '第一章 环境准备', '2018-03-04 10:46:26.000000', '7');
INSERT INTO `courses_lesson` VALUES ('32', '第二章 基础知识', '2018-03-04 10:46:26.000000', '7');
INSERT INTO `courses_lesson` VALUES ('33', '第三章 环境准备', '2018-03-04 10:46:26.000000', '7');
INSERT INTO `courses_lesson` VALUES ('34', '第四章 功能完善', '2018-03-04 10:46:26.000000', '7');
INSERT INTO `courses_lesson` VALUES ('35', '第五章 线上部署', '2018-03-04 10:46:26.000000', '7');
INSERT INTO `courses_lesson` VALUES ('36', '第一章 环境准备', '2018-03-04 10:46:26.000000', '8');
INSERT INTO `courses_lesson` VALUES ('37', '第二章 基础知识', '2018-03-04 10:46:26.000000', '8');
INSERT INTO `courses_lesson` VALUES ('38', '第三章 环境准备', '2018-03-04 10:46:26.000000', '8');
INSERT INTO `courses_lesson` VALUES ('39', '第四章 功能完善', '2018-03-04 10:46:26.000000', '8');
INSERT INTO `courses_lesson` VALUES ('40', '第五章 线上部署', '2018-03-04 10:46:26.000000', '8');
INSERT INTO `courses_lesson` VALUES ('41', '第一章 环境准备', '2018-03-04 10:46:26.000000', '9');
INSERT INTO `courses_lesson` VALUES ('42', '第二章 基础知识', '2018-03-04 10:46:26.000000', '9');
INSERT INTO `courses_lesson` VALUES ('43', '第三章 环境准备', '2018-03-04 10:46:26.000000', '9');
INSERT INTO `courses_lesson` VALUES ('44', '第四章 功能完善', '2018-03-04 10:46:27.000000', '9');
INSERT INTO `courses_lesson` VALUES ('45', '第五章 线上部署', '2018-03-04 10:46:27.000000', '9');
INSERT INTO `courses_lesson` VALUES ('46', '第一章 环境准备', '2018-03-04 10:46:27.000000', '10');
INSERT INTO `courses_lesson` VALUES ('47', '第二章 基础知识', '2018-03-04 10:46:27.000000', '10');
INSERT INTO `courses_lesson` VALUES ('48', '第三章 环境准备', '2018-03-04 10:46:27.000000', '10');
INSERT INTO `courses_lesson` VALUES ('49', '第四章 功能完善', '2018-03-04 10:46:27.000000', '10');
INSERT INTO `courses_lesson` VALUES ('50', '第五章 线上部署', '2018-03-04 10:46:27.000000', '10');
INSERT INTO `courses_lesson` VALUES ('51', '第一章 环境准备', '2018-03-04 10:46:27.000000', '11');
INSERT INTO `courses_lesson` VALUES ('52', '第二章 基础知识', '2018-03-04 10:46:27.000000', '11');
INSERT INTO `courses_lesson` VALUES ('53', '第三章 环境准备', '2018-03-04 10:46:27.000000', '11');
INSERT INTO `courses_lesson` VALUES ('54', '第四章 功能完善', '2018-03-04 10:46:27.000000', '11');
INSERT INTO `courses_lesson` VALUES ('55', '第五章 线上部署', '2018-03-04 10:46:27.000000', '11');
INSERT INTO `courses_lesson` VALUES ('56', '第一章 环境准备', '2018-03-04 10:46:27.000000', '12');
INSERT INTO `courses_lesson` VALUES ('57', '第二章 基础知识', '2018-03-04 10:46:28.000000', '12');
INSERT INTO `courses_lesson` VALUES ('58', '第三章 环境准备', '2018-03-04 10:46:28.000000', '12');
INSERT INTO `courses_lesson` VALUES ('59', '第四章 功能完善', '2018-03-04 10:46:28.000000', '12');
INSERT INTO `courses_lesson` VALUES ('60', '第五章 线上部署', '2018-03-04 10:46:28.000000', '12');
INSERT INTO `courses_lesson` VALUES ('61', '第一章 环境准备', '2018-03-04 10:46:28.000000', '13');
INSERT INTO `courses_lesson` VALUES ('62', '第二章 基础知识', '2018-03-04 10:46:28.000000', '13');
INSERT INTO `courses_lesson` VALUES ('63', '第三章 环境准备', '2018-03-04 10:46:28.000000', '13');
INSERT INTO `courses_lesson` VALUES ('64', '第四章 功能完善', '2018-03-04 10:46:28.000000', '13');
INSERT INTO `courses_lesson` VALUES ('65', '第五章 线上部署', '2018-03-04 10:46:28.000000', '13');
INSERT INTO `courses_lesson` VALUES ('66', '第一章 环境准备', '2018-03-04 10:46:28.000000', '14');
INSERT INTO `courses_lesson` VALUES ('67', '第二章 基础知识', '2018-03-04 10:46:28.000000', '14');
INSERT INTO `courses_lesson` VALUES ('68', '第三章 环境准备', '2018-03-04 10:46:28.000000', '14');
INSERT INTO `courses_lesson` VALUES ('69', '第四章 功能完善', '2018-03-04 10:46:28.000000', '14');
INSERT INTO `courses_lesson` VALUES ('70', '第五章 线上部署', '2018-03-04 10:46:28.000000', '14');
INSERT INTO `courses_lesson` VALUES ('71', '第一章 环境准备', '2018-03-04 10:46:28.000000', '15');
INSERT INTO `courses_lesson` VALUES ('72', '第二章 基础知识', '2018-03-04 10:46:29.000000', '15');
INSERT INTO `courses_lesson` VALUES ('73', '第三章 环境准备', '2018-03-04 10:46:29.000000', '15');
INSERT INTO `courses_lesson` VALUES ('74', '第四章 功能完善', '2018-03-04 10:46:29.000000', '15');
INSERT INTO `courses_lesson` VALUES ('75', '第五章 线上部署', '2018-03-04 10:46:29.000000', '15');
INSERT INTO `courses_lesson` VALUES ('76', '第一章 环境准备', '2018-03-04 10:46:29.000000', '16');
INSERT INTO `courses_lesson` VALUES ('77', '第二章 基础知识', '2018-03-04 10:46:29.000000', '16');
INSERT INTO `courses_lesson` VALUES ('78', '第三章 环境准备', '2018-03-04 10:46:29.000000', '16');
INSERT INTO `courses_lesson` VALUES ('79', '第四章 功能完善', '2018-03-04 10:46:29.000000', '16');
INSERT INTO `courses_lesson` VALUES ('80', '第五章 线上部署', '2018-03-04 10:46:29.000000', '16');

-- ----------------------------
-- Table structure for `courses_video`
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES ('1', '1.1 安装mysql', '2018-03-04 10:46:29.000000', '1', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('2', '1.2 安装nginx', '2018-03-04 10:46:29.000000', '1', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('3', '1.3 安装python', '2018-03-04 10:46:29.000000', '1', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('4', '2.1 python基础', '2018-03-04 10:46:29.000000', '2', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('5', '2.2 html基础', '2018-03-04 10:46:29.000000', '2', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('6', '2.3 mysql基础', '2018-03-04 10:46:29.000000', '2', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('7', '3.1 model设计', '2018-03-04 10:46:30.000000', '3', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('8', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:30.000000', '3', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('9', '3.3 用户注册登录', '2018-03-04 10:46:30.000000', '3', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('10', '4.1 个人中心', '2018-03-04 10:46:30.000000', '4', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('11', '4.2 网站安全', '2018-03-04 10:46:30.000000', '4', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('12', '4.3 搜索功能', '2018-03-04 10:46:30.000000', '4', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('13', '5.1 域名与服务器', '2018-03-04 10:46:30.000000', '5', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('14', '5.2 nginx配置', '2018-03-04 10:46:30.000000', '5', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('15', '5.3 上传文件', '2018-03-04 10:46:30.000000', '5', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('16', '1.1 安装mysql', '2018-03-04 10:46:30.000000', '6', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('17', '1.2 安装nginx', '2018-03-04 10:46:30.000000', '6', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('18', '1.3 安装python', '2018-03-04 10:46:30.000000', '6', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('19', '2.1 python基础', '2018-03-04 10:46:30.000000', '7', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('20', '2.2 html基础', '2018-03-04 10:46:30.000000', '7', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('21', '2.3 mysql基础', '2018-03-04 10:46:30.000000', '7', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('22', '3.1 model设计', '2018-03-04 10:46:31.000000', '8', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('23', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:31.000000', '8', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('24', '3.3 用户注册登录', '2018-03-04 10:46:31.000000', '8', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('25', '4.1 个人中心', '2018-03-04 10:46:31.000000', '9', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('26', '4.2 网站安全', '2018-03-04 10:46:31.000000', '9', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('27', '4.3 搜索功能', '2018-03-04 10:46:31.000000', '9', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('28', '5.1 域名与服务器', '2018-03-04 10:46:31.000000', '10', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('29', '5.2 nginx配置', '2018-03-04 10:46:31.000000', '10', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('30', '5.3 上传文件', '2018-03-04 10:46:31.000000', '10', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('31', '1.1 安装mysql', '2018-03-04 10:46:31.000000', '11', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('32', '1.2 安装nginx', '2018-03-04 10:46:31.000000', '11', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('33', '1.3 安装python', '2018-03-04 10:46:31.000000', '11', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('34', '2.1 python基础', '2018-03-04 10:46:32.000000', '12', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('35', '2.2 html基础', '2018-03-04 10:46:32.000000', '12', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('36', '2.3 mysql基础', '2018-03-04 10:46:32.000000', '12', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('37', '3.1 model设计', '2018-03-04 10:46:32.000000', '13', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('38', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:32.000000', '13', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('39', '3.3 用户注册登录', '2018-03-04 10:46:32.000000', '13', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('40', '4.1 个人中心', '2018-03-04 10:46:32.000000', '14', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('41', '4.2 网站安全', '2018-03-04 10:46:32.000000', '14', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('42', '4.3 搜索功能', '2018-03-04 10:46:32.000000', '14', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('43', '5.1 域名与服务器', '2018-03-04 10:46:32.000000', '15', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('44', '5.2 nginx配置', '2018-03-04 10:46:32.000000', '15', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('45', '5.3 上传文件', '2018-03-04 10:46:32.000000', '15', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('46', '1.1 安装mysql', '2018-03-04 10:46:32.000000', '16', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('47', '1.2 安装nginx', '2018-03-04 10:46:32.000000', '16', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('48', '1.3 安装python', '2018-03-04 10:46:32.000000', '16', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('49', '2.1 python基础', '2018-03-04 10:46:33.000000', '17', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('50', '2.2 html基础', '2018-03-04 10:46:33.000000', '17', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('51', '2.3 mysql基础', '2018-03-04 10:46:33.000000', '17', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('52', '3.1 model设计', '2018-03-04 10:46:33.000000', '18', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('53', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:33.000000', '18', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('54', '3.3 用户注册登录', '2018-03-04 10:46:33.000000', '18', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('55', '4.1 个人中心', '2018-03-04 10:46:33.000000', '19', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('56', '4.2 网站安全', '2018-03-04 10:46:33.000000', '19', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('57', '4.3 搜索功能', '2018-03-04 10:46:33.000000', '19', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('58', '5.1 域名与服务器', '2018-03-04 10:46:33.000000', '20', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('59', '5.2 nginx配置', '2018-03-04 10:46:33.000000', '20', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('60', '5.3 上传文件', '2018-03-04 10:46:33.000000', '20', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('61', '1.1 安装mysql', '2018-03-04 10:46:33.000000', '21', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('62', '1.2 安装nginx', '2018-03-04 10:46:33.000000', '21', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('63', '1.3 安装python', '2018-03-04 10:46:33.000000', '21', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('64', '2.1 python基础', '2018-03-04 10:46:34.000000', '22', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('65', '2.2 html基础', '2018-03-04 10:46:34.000000', '22', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('66', '2.3 mysql基础', '2018-03-04 10:46:34.000000', '22', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('67', '3.1 model设计', '2018-03-04 10:46:34.000000', '23', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('68', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:34.000000', '23', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('69', '3.3 用户注册登录', '2018-03-04 10:46:34.000000', '23', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('70', '4.1 个人中心', '2018-03-04 10:46:34.000000', '24', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('71', '4.2 网站安全', '2018-03-04 10:46:34.000000', '24', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('72', '4.3 搜索功能', '2018-03-04 10:46:34.000000', '24', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('73', '5.1 域名与服务器', '2018-03-04 10:46:34.000000', '25', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('74', '5.2 nginx配置', '2018-03-04 10:46:34.000000', '25', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('75', '5.3 上传文件', '2018-03-04 10:46:34.000000', '25', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('76', '1.1 安装mysql', '2018-03-04 10:46:34.000000', '26', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('77', '1.2 安装nginx', '2018-03-04 10:46:34.000000', '26', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('78', '1.3 安装python', '2018-03-04 10:46:35.000000', '26', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('79', '2.1 python基础', '2018-03-04 10:46:35.000000', '27', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('80', '2.2 html基础', '2018-03-04 10:46:35.000000', '27', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('81', '2.3 mysql基础', '2018-03-04 10:46:35.000000', '27', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('82', '3.1 model设计', '2018-03-04 10:46:35.000000', '28', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('83', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:35.000000', '28', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('84', '3.3 用户注册登录', '2018-03-04 10:46:35.000000', '28', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('85', '4.1 个人中心', '2018-03-04 10:46:35.000000', '29', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('86', '4.2 网站安全', '2018-03-04 10:46:35.000000', '29', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('87', '4.3 搜索功能', '2018-03-04 10:46:35.000000', '29', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('88', '5.1 域名与服务器', '2018-03-04 10:46:35.000000', '30', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('89', '5.2 nginx配置', '2018-03-04 10:46:35.000000', '30', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('90', '5.3 上传文件', '2018-03-04 10:46:35.000000', '30', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('91', '1.1 安装mysql', '2018-03-04 10:46:35.000000', '31', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('92', '1.2 安装nginx', '2018-03-04 10:46:35.000000', '31', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('93', '1.3 安装python', '2018-03-04 10:46:36.000000', '31', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('94', '2.1 python基础', '2018-03-04 10:46:36.000000', '32', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('95', '2.2 html基础', '2018-03-04 10:46:36.000000', '32', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('96', '2.3 mysql基础', '2018-03-04 10:46:36.000000', '32', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('97', '3.1 model设计', '2018-03-04 10:46:36.000000', '33', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('98', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:36.000000', '33', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('99', '3.3 用户注册登录', '2018-03-04 10:46:36.000000', '33', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('100', '4.1 个人中心', '2018-03-04 10:46:36.000000', '34', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('101', '4.2 网站安全', '2018-03-04 10:46:36.000000', '34', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('102', '4.3 搜索功能', '2018-03-04 10:46:36.000000', '34', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('103', '5.1 域名与服务器', '2018-03-04 10:46:36.000000', '35', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('104', '5.2 nginx配置', '2018-03-04 10:46:36.000000', '35', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('105', '5.3 上传文件', '2018-03-04 10:46:36.000000', '35', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('106', '1.1 安装mysql', '2018-03-04 10:46:36.000000', '36', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('107', '1.2 安装nginx', '2018-03-04 10:46:36.000000', '36', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('108', '1.3 安装python', '2018-03-04 10:46:37.000000', '36', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('109', '2.1 python基础', '2018-03-04 10:46:37.000000', '37', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('110', '2.2 html基础', '2018-03-04 10:46:37.000000', '37', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('111', '2.3 mysql基础', '2018-03-04 10:46:37.000000', '37', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('112', '3.1 model设计', '2018-03-04 10:46:37.000000', '38', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('113', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:37.000000', '38', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('114', '3.3 用户注册登录', '2018-03-04 10:46:37.000000', '38', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('115', '4.1 个人中心', '2018-03-04 10:46:37.000000', '39', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('116', '4.2 网站安全', '2018-03-04 10:46:37.000000', '39', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('117', '4.3 搜索功能', '2018-03-04 10:46:37.000000', '39', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('118', '5.1 域名与服务器', '2018-03-04 10:46:37.000000', '40', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('119', '5.2 nginx配置', '2018-03-04 10:46:37.000000', '40', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('120', '5.3 上传文件', '2018-03-04 10:46:37.000000', '40', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('121', '1.1 安装mysql', '2018-03-04 10:46:38.000000', '41', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('122', '1.2 安装nginx', '2018-03-04 10:46:38.000000', '41', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('123', '1.3 安装python', '2018-03-04 10:46:38.000000', '41', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('124', '2.1 python基础', '2018-03-04 10:46:38.000000', '42', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('125', '2.2 html基础', '2018-03-04 10:46:38.000000', '42', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('126', '2.3 mysql基础', '2018-03-04 10:46:38.000000', '42', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('127', '3.1 model设计', '2018-03-04 10:46:38.000000', '43', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('128', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:38.000000', '43', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('129', '3.3 用户注册登录', '2018-03-04 10:46:38.000000', '43', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('130', '4.1 个人中心', '2018-03-04 10:46:38.000000', '44', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('131', '4.2 网站安全', '2018-03-04 10:46:38.000000', '44', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('132', '4.3 搜索功能', '2018-03-04 10:46:38.000000', '44', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('133', '5.1 域名与服务器', '2018-03-04 10:46:38.000000', '45', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('134', '5.2 nginx配置', '2018-03-04 10:46:38.000000', '45', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('135', '5.3 上传文件', '2018-03-04 10:46:38.000000', '45', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('136', '1.1 安装mysql', '2018-03-04 10:46:39.000000', '46', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('137', '1.2 安装nginx', '2018-03-04 10:46:39.000000', '46', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('138', '1.3 安装python', '2018-03-04 10:46:39.000000', '46', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('139', '2.1 python基础', '2018-03-04 10:46:39.000000', '47', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('140', '2.2 html基础', '2018-03-04 10:46:39.000000', '47', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('141', '2.3 mysql基础', '2018-03-04 10:46:39.000000', '47', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('142', '3.1 model设计', '2018-03-04 10:46:39.000000', '48', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('143', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:39.000000', '48', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('144', '3.3 用户注册登录', '2018-03-04 10:46:39.000000', '48', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('145', '4.1 个人中心', '2018-03-04 10:46:39.000000', '49', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('146', '4.2 网站安全', '2018-03-04 10:46:39.000000', '49', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('147', '4.3 搜索功能', '2018-03-04 10:46:39.000000', '49', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('148', '5.1 域名与服务器', '2018-03-04 10:46:40.000000', '50', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('149', '5.2 nginx配置', '2018-03-04 10:46:40.000000', '50', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('150', '5.3 上传文件', '2018-03-04 10:46:40.000000', '50', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('151', '1.1 安装mysql', '2018-03-04 10:46:40.000000', '51', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('152', '1.2 安装nginx', '2018-03-04 10:46:40.000000', '51', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('153', '1.3 安装python', '2018-03-04 10:46:40.000000', '51', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('154', '2.1 python基础', '2018-03-04 10:46:40.000000', '52', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('155', '2.2 html基础', '2018-03-04 10:46:40.000000', '52', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('156', '2.3 mysql基础', '2018-03-04 10:46:40.000000', '52', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('157', '3.1 model设计', '2018-03-04 10:46:40.000000', '53', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('158', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:40.000000', '53', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('159', '3.3 用户注册登录', '2018-03-04 10:46:40.000000', '53', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('160', '4.1 个人中心', '2018-03-04 10:46:40.000000', '54', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('161', '4.2 网站安全', '2018-03-04 10:46:40.000000', '54', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('162', '4.3 搜索功能', '2018-03-04 10:46:40.000000', '54', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('163', '5.1 域名与服务器', '2018-03-04 10:46:40.000000', '55', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('164', '5.2 nginx配置', '2018-03-04 10:46:41.000000', '55', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('165', '5.3 上传文件', '2018-03-04 10:46:41.000000', '55', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('166', '1.1 安装mysql', '2018-03-04 10:46:41.000000', '56', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('167', '1.2 安装nginx', '2018-03-04 10:46:41.000000', '56', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('168', '1.3 安装python', '2018-03-04 10:46:41.000000', '56', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('169', '2.1 python基础', '2018-03-04 10:46:41.000000', '57', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('170', '2.2 html基础', '2018-03-04 10:46:41.000000', '57', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('171', '2.3 mysql基础', '2018-03-04 10:46:41.000000', '57', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('172', '3.1 model设计', '2018-03-04 10:46:41.000000', '58', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('173', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:41.000000', '58', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('174', '3.3 用户注册登录', '2018-03-04 10:46:41.000000', '58', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('175', '4.1 个人中心', '2018-03-04 10:46:41.000000', '59', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('176', '4.2 网站安全', '2018-03-04 10:46:41.000000', '59', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('177', '4.3 搜索功能', '2018-03-04 10:46:41.000000', '59', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('178', '5.1 域名与服务器', '2018-03-04 10:46:41.000000', '60', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('179', '5.2 nginx配置', '2018-03-04 10:46:41.000000', '60', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('180', '5.3 上传文件', '2018-03-04 10:46:42.000000', '60', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('181', '1.1 安装mysql', '2018-03-04 10:46:42.000000', '61', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('182', '1.2 安装nginx', '2018-03-04 10:46:42.000000', '61', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('183', '1.3 安装python', '2018-03-04 10:46:42.000000', '61', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('184', '2.1 python基础', '2018-03-04 10:46:42.000000', '62', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('185', '2.2 html基础', '2018-03-04 10:46:42.000000', '62', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('186', '2.3 mysql基础', '2018-03-04 10:46:42.000000', '62', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('187', '3.1 model设计', '2018-03-04 10:46:42.000000', '63', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('188', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:42.000000', '63', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('189', '3.3 用户注册登录', '2018-03-04 10:46:42.000000', '63', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('190', '4.1 个人中心', '2018-03-04 10:46:42.000000', '64', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('191', '4.2 网站安全', '2018-03-04 10:46:42.000000', '64', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('192', '4.3 搜索功能', '2018-03-04 10:46:42.000000', '64', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('193', '5.1 域名与服务器', '2018-03-04 10:46:42.000000', '65', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('194', '5.2 nginx配置', '2018-03-04 10:46:42.000000', '65', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('195', '5.3 上传文件', '2018-03-04 10:46:42.000000', '65', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('196', '1.1 安装mysql', '2018-03-04 10:46:43.000000', '66', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('197', '1.2 安装nginx', '2018-03-04 10:46:43.000000', '66', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('198', '1.3 安装python', '2018-03-04 10:46:43.000000', '66', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('199', '2.1 python基础', '2018-03-04 10:46:43.000000', '67', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('200', '2.2 html基础', '2018-03-04 10:46:43.000000', '67', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('201', '2.3 mysql基础', '2018-03-04 10:46:43.000000', '67', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('202', '3.1 model设计', '2018-03-04 10:46:43.000000', '68', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('203', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:43.000000', '68', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('204', '3.3 用户注册登录', '2018-03-04 10:46:43.000000', '68', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('205', '4.1 个人中心', '2018-03-04 10:46:43.000000', '69', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('206', '4.2 网站安全', '2018-03-04 10:46:43.000000', '69', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('207', '4.3 搜索功能', '2018-03-04 10:46:43.000000', '69', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('208', '5.1 域名与服务器', '2018-03-04 10:46:43.000000', '70', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('209', '5.2 nginx配置', '2018-03-04 10:46:43.000000', '70', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('210', '5.3 上传文件', '2018-03-04 10:46:43.000000', '70', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('211', '1.1 安装mysql', '2018-03-04 10:46:44.000000', '71', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('212', '1.2 安装nginx', '2018-03-04 10:46:44.000000', '71', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('213', '1.3 安装python', '2018-03-04 10:46:44.000000', '71', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('214', '2.1 python基础', '2018-03-04 10:46:44.000000', '72', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('215', '2.2 html基础', '2018-03-04 10:46:44.000000', '72', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('216', '2.3 mysql基础', '2018-03-04 10:46:44.000000', '72', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('217', '3.1 model设计', '2018-03-04 10:46:44.000000', '73', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('218', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:44.000000', '73', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('219', '3.3 用户注册登录', '2018-03-04 10:46:44.000000', '73', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('220', '4.1 个人中心', '2018-03-04 10:46:44.000000', '74', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('221', '4.2 网站安全', '2018-03-04 10:46:44.000000', '74', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('222', '4.3 搜索功能', '2018-03-04 10:46:44.000000', '74', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('223', '5.1 域名与服务器', '2018-03-04 10:46:44.000000', '75', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('224', '5.2 nginx配置', '2018-03-04 10:46:44.000000', '75', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('225', '5.3 上传文件', '2018-03-04 10:46:44.000000', '75', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('226', '1.1 安装mysql', '2018-03-04 10:46:45.000000', '76', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('227', '1.2 安装nginx', '2018-03-04 10:46:45.000000', '76', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('228', '1.3 安装python', '2018-03-04 10:46:45.000000', '76', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('229', '2.1 python基础', '2018-03-04 10:46:45.000000', '77', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('230', '2.2 html基础', '2018-03-04 10:46:45.000000', '77', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('231', '2.3 mysql基础', '2018-03-04 10:46:45.000000', '77', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('232', '3.1 model设计', '2018-03-04 10:46:45.000000', '78', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('233', '3.2 搭建xadmin后台管理', '2018-03-04 10:46:45.000000', '78', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('234', '3.3 用户注册登录', '2018-03-04 10:46:45.000000', '78', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('235', '4.1 个人中心', '2018-03-04 10:46:45.000000', '79', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('236', '4.2 网站安全', '2018-03-04 10:46:45.000000', '79', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('237', '4.3 搜索功能', '2018-03-04 10:46:45.000000', '79', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('238', '5.1 域名与服务器', '2018-03-04 10:46:45.000000', '80', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('239', '5.2 nginx配置', '2018-03-04 10:46:45.000000', '80', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');
INSERT INTO `courses_video` VALUES ('240', '5.3 上传文件', '2018-03-04 10:46:47.000000', '80', 'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf', '20');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('24', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('9', 'courses', 'course');
INSERT INTO `django_content_type` VALUES ('12', 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES ('10', 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES ('11', 'courses', 'video');
INSERT INTO `django_content_type` VALUES ('17', 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('16', 'operation', 'userask');
INSERT INTO `django_content_type` VALUES ('20', 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES ('18', 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('19', 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES ('13', 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES ('14', 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES ('15', 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES ('6', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('21', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('25', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('23', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-11-01 00:53:34.496000');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2017-11-01 00:53:36.339000');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2017-11-01 00:53:43.138000');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2017-11-01 00:53:44.170000');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2017-11-01 00:53:44.227000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2017-11-01 00:53:44.292000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2017-11-01 00:53:44.342000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2017-11-01 00:53:44.391000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2017-11-01 00:53:44.442000');
INSERT INTO `django_migrations` VALUES ('10', 'users', '0001_initial', '2017-11-01 00:53:53.840000');
INSERT INTO `django_migrations` VALUES ('11', 'admin', '0001_initial', '2017-11-01 00:53:58.044000');
INSERT INTO `django_migrations` VALUES ('12', 'admin', '0002_logentry_remove_auto_add', '2017-11-01 00:53:58.310000');
INSERT INTO `django_migrations` VALUES ('13', 'courses', '0001_initial', '2017-11-01 00:54:04.900000');
INSERT INTO `django_migrations` VALUES ('14', 'operation', '0001_initial', '2017-11-01 00:54:08.252000');
INSERT INTO `django_migrations` VALUES ('15', 'operation', '0002_auto_20171101_0052', '2017-11-01 00:54:24.881000');
INSERT INTO `django_migrations` VALUES ('16', 'organization', '0001_initial', '2017-11-01 00:54:34.355000');
INSERT INTO `django_migrations` VALUES ('17', 'sessions', '0001_initial', '2017-11-01 00:54:35.718000');
INSERT INTO `django_migrations` VALUES ('18', 'xadmin', '0001_initial', '2017-11-01 00:54:44.378000');
INSERT INTO `django_migrations` VALUES ('19', 'captcha', '0001_initial', '2017-11-02 01:38:54.092000');
INSERT INTO `django_migrations` VALUES ('20', 'organization', '0002_auto_20171102_2041', '2017-11-02 20:42:10.237000');
INSERT INTO `django_migrations` VALUES ('21', 'organization', '0003_auto_20171102_2300', '2017-11-02 23:00:41.041000');
INSERT INTO `django_migrations` VALUES ('22', 'courses', '0002_course_course_org', '2017-11-03 02:37:19.765000');
INSERT INTO `django_migrations` VALUES ('23', 'organization', '0004_teacher_image', '2017-11-03 03:23:23.102000');
INSERT INTO `django_migrations` VALUES ('24', 'courses', '0003_course_category', '2017-11-04 00:17:20.839000');
INSERT INTO `django_migrations` VALUES ('25', 'operation', '0002_auto_20171104_0137', '2017-11-04 01:37:56.467000');
INSERT INTO `django_migrations` VALUES ('26', 'operation', '0003_auto_20171104_0139', '2017-11-04 01:39:55.679000');
INSERT INTO `django_migrations` VALUES ('27', 'courses', '0004_auto_20180211_1745', '2018-02-11 17:46:00.653000');
INSERT INTO `django_migrations` VALUES ('28', 'organization', '0005_auto_20180211_1745', '2018-02-11 17:46:01.263000');
INSERT INTO `django_migrations` VALUES ('29', 'users', '0002_auto_20180211_1745', '2018-02-11 17:46:01.350000');
INSERT INTO `django_migrations` VALUES ('30', 'xadmin', '0002_log', '2018-02-11 17:46:08.284000');
INSERT INTO `django_migrations` VALUES ('31', 'xadmin', '0003_auto_20160715_0100', '2018-02-11 17:46:10.129000');
INSERT INTO `django_migrations` VALUES ('32', 'courses', '0005_course_tag', '2018-02-15 09:16:06.697000');
INSERT INTO `django_migrations` VALUES ('33', 'courses', '0006_video_url', '2018-02-15 10:39:18.205000');
INSERT INTO `django_migrations` VALUES ('34', 'courses', '0007_lesson_learn_times', '2018-02-16 11:15:48.464000');
INSERT INTO `django_migrations` VALUES ('35', 'courses', '0008_auto_20180216_1354', '2018-02-16 13:54:58.068000');
INSERT INTO `django_migrations` VALUES ('36', 'courses', '0009_course_teacher', '2018-02-16 17:01:31.544000');
INSERT INTO `django_migrations` VALUES ('37', 'courses', '0010_auto_20180216_1711', '2018-02-16 17:11:22.759000');
INSERT INTO `django_migrations` VALUES ('38', 'organization', '0006_teacher_age', '2018-02-19 10:33:07.360000');
INSERT INTO `django_migrations` VALUES ('39', 'users', '0003_auto_20180220_1944', '2018-02-20 19:44:29.065000');
INSERT INTO `django_migrations` VALUES ('40', 'courses', '0011_course_is_banner', '2018-02-21 16:22:01.941000');
INSERT INTO `django_migrations` VALUES ('41', 'organization', '0007_courseorg_tag', '2018-02-21 17:03:57.511000');
INSERT INTO `django_migrations` VALUES ('42', 'users', '0004_auto_20180303_1517', '2018-03-03 15:17:27.646000');
INSERT INTO `django_migrations` VALUES ('43', 'users', '0005_auto_20180303_1519', '2018-03-03 15:20:23.642000');
INSERT INTO `django_migrations` VALUES ('44', 'users', '0006_auto_20180303_1520', '2018-03-03 15:20:24.129000');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('bba6arkythtev48cgfqf67q0exgrpzav', 'MjhhMTZiYWU1MTNiODQyNzc4OGRkOGRmNTgzOTQ0M2I5YTY0NzhlZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjliMzFiNDBiY2I5ZjgyNjRiY2YzNTY1YzMyYzYwZWM2MWE2MGVjZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-06-01 17:17:31.536000');

-- ----------------------------
-- Table structure for `operation_coursecomments`
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_ea134da7` (`course_id`),
  KEY `operation_coursecomments_e8701ad4` (`user_id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES ('1', 'qwe ', '2018-02-16 22:35:12.503000', '1', '1');
INSERT INTO `operation_coursecomments` VALUES ('2', '不错', '2018-02-16 22:36:04.502000', '1', '1');
INSERT INTO `operation_coursecomments` VALUES ('3', '很好', '2018-02-16 22:36:13.240000', '1', '1');
INSERT INTO `operation_coursecomments` VALUES ('4', '不错', '2018-03-03 22:12:46.928000', '15', '1');
INSERT INTO `operation_coursecomments` VALUES ('5', '学到很多', '2018-03-04 11:10:23.632000', '1', '1');
INSERT INTO `operation_coursecomments` VALUES ('6', '讲得好', '2018-05-17 07:43:50.221000', '16', '1');

-- ----------------------------
-- Table structure for `operation_userask`
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES ('1', '张三', '12345678912', 'django', '2017-11-03 00:52:27.568000');
INSERT INTO `operation_userask` VALUES ('2', '张飞', '32165498721', 'python', '2017-11-03 00:54:03.329000');
INSERT INTO `operation_userask` VALUES ('3', 'test', '12346578911', 'php', '2017-11-03 00:55:27.253000');
INSERT INTO `operation_userask` VALUES ('4', '小', '13612345678', 'asd', '2017-11-03 01:09:13.776000');
INSERT INTO `operation_userask` VALUES ('5', 'admin', '13647611407', 'zxc', '2017-11-03 16:30:30.898000');
INSERT INTO `operation_userask` VALUES ('6', '小明', '13647511265', '语文', '2018-02-14 10:57:10.573000');
INSERT INTO `operation_userask` VALUES ('7', '小马', '13678976879', 'django', '2018-03-03 22:42:17.477000');
INSERT INTO `operation_userask` VALUES ('8', 'test', '13645612378', 'php', '2018-05-15 10:27:48.211000');

-- ----------------------------
-- Table structure for `operation_usercourse`
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_ea134da7` (`course_id`),
  KEY `operation_usercourse_e8701ad4` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES ('1', '2017-11-04 01:41:23.000000', '1', '1');
INSERT INTO `operation_usercourse` VALUES ('2', '2018-02-16 23:48:02.354000', '8', '1');
INSERT INTO `operation_usercourse` VALUES ('3', '2018-02-16 23:48:58.461000', '11', '1');
INSERT INTO `operation_usercourse` VALUES ('4', '2018-02-16 23:53:41.653000', '10', '1');
INSERT INTO `operation_usercourse` VALUES ('5', '2018-03-03 22:12:37.896000', '15', '1');
INSERT INTO `operation_usercourse` VALUES ('6', '2018-03-04 11:16:57.772000', '14', '1');
INSERT INTO `operation_usercourse` VALUES ('7', '2018-03-04 12:02:52.622000', '12', '1');
INSERT INTO `operation_usercourse` VALUES ('8', '2018-05-14 21:53:58.661000', '16', '1');
INSERT INTO `operation_usercourse` VALUES ('9', '2018-05-15 15:45:55.846000', '3', '1');
INSERT INTO `operation_usercourse` VALUES ('10', '2018-05-15 15:50:05.785000', '9', '1');
INSERT INTO `operation_usercourse` VALUES ('11', '2018-05-15 15:54:17.794000', '13', '1');
INSERT INTO `operation_usercourse` VALUES ('12', '2018-05-15 15:55:44.113000', '2', '1');

-- ----------------------------
-- Table structure for `operation_userfavorite`
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_e8701ad4` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES ('13', '1', '3', '2018-05-15 17:21:31.391000', '1');
INSERT INTO `operation_userfavorite` VALUES ('14', '2', '3', '2018-05-15 17:21:52.665000', '1');
INSERT INTO `operation_userfavorite` VALUES ('15', '2', '2', '2018-05-15 17:21:53.896000', '1');
INSERT INTO `operation_userfavorite` VALUES ('17', '12', '2', '2018-05-15 17:41:22.595000', '1');
INSERT INTO `operation_userfavorite` VALUES ('21', '3', '2', '2018-05-15 17:57:51.377000', '1');
INSERT INTO `operation_userfavorite` VALUES ('22', '1', '2', '2018-05-16 10:55:16.394000', '1');
INSERT INTO `operation_userfavorite` VALUES ('27', '16', '1', '2018-05-18 09:08:58.464000', '1');

-- ----------------------------
-- Table structure for `operation_usermessage`
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
INSERT INTO `operation_usermessage` VALUES ('1', '1', '欢迎注册', '1', '2017-11-04 01:11:27.000000');
INSERT INTO `operation_usermessage` VALUES ('2', '7', '欢迎注册', '0', '2018-03-02 15:29:29.810000');
INSERT INTO `operation_usermessage` VALUES ('3', '8', '欢迎注册', '0', '2018-05-14 16:42:22.404000');

-- ----------------------------
-- Table structure for `organization_citydict`
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES ('1', '北京', '北京', '2017-11-02 20:22:00.000000');
INSERT INTO `organization_citydict` VALUES ('2', '上海', '上海', '2017-11-02 20:22:00.000000');
INSERT INTO `organization_citydict` VALUES ('3', '广州', '广州', '2017-11-02 20:22:00.000000');
INSERT INTO `organization_citydict` VALUES ('4', '深圳', '深圳', '2017-11-02 20:22:00.000000');
INSERT INTO `organization_citydict` VALUES ('5', '重庆', '重庆', '2017-11-02 20:22:00.000000');
INSERT INTO `organization_citydict` VALUES ('6', '成都', '成都', '2017-11-02 20:22:00.000000');
INSERT INTO `organization_citydict` VALUES ('7', '武汉', '武汉', '2018-03-03 16:52:00.000000');
INSERT INTO `organization_citydict` VALUES ('8', '杭州', '杭州', '2018-03-03 16:52:00.000000');

-- ----------------------------
-- Table structure for `organization_courseorg`
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_course_city_id_4a842f85_fk_organization_citydict_id` (`city_id`),
  CONSTRAINT `organization_course_city_id_4a842f85_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES ('1', '华南理工大学', '华南理工大学', '122', '6', 'org/2018/03/c9f7d3853bddda963d54044e62539a12.jpg', '广州市', '2017-11-02 20:25:00.000000', '3', 'gx', '6', '3', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('2', '深圳大学', '深圳大学', '119', '4', 'org/2018/03/39b61d3b356b00bcd4fdc53818a3e3eb.jpg', '深圳市', '2017-11-02 20:30:00.000000', '4', 'gx', '5', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('3', '西南交通大学', '西南交通大学', '38', '1', 'org/2018/03/f4d6e95f182d8136ff7a241f67ee5bc4.png', '成都市', '2017-11-02 20:33:00.000000', '6', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('4', '电子科技大学', '电子科技大学', '3', '0', 'org/2018/03/567b1058399de55a85869f137877ab88.jpg', '成都市', '2017-11-02 20:34:00.000000', '6', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('5', '四川大学', '四川大学', '3', '0', 'org/2018/03/0602ccc7c53df1c85e43bd9da1e61065.jpg', '成都市', '2017-11-02 20:34:00.000000', '6', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('6', '重庆医科大学', '重庆医科大学', '2', '1', 'org/2018/03/eff0677b0a5da477ff7f9af08c3fe54d.jpg', '重庆市', '2017-11-02 20:34:00.000000', '5', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('7', '重庆交通大学', '重庆交通大学', '0', '0', 'org/2018/03/68b8f653c856afb6a18ba874be7a6bac.jpg', '重庆市', '2017-11-02 20:35:00.000000', '5', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('8', '西南大学', '西南大学', '0', '0', 'org/2018/03/13ca5da74422bff0b77e63d4ab8f7321_1.png', '重庆市', '2017-11-02 20:35:00.000000', '5', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('9', '重庆大学', '重庆大学', '0', '0', 'org/2018/03/385172aa75c3856bb170caca36786662.jpg', '重庆市', '2017-11-02 20:35:00.000000', '5', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('10', '复旦大学', '复旦大学', '0', '0', 'org/2018/03/cd9021fdf54990d10ca1a8881b620ff1.jpg', '上海市', '2017-11-02 20:36:00.000000', '2', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('11', '同济大学', '同济大学', '0', '0', 'org/2018/03/42a035a1b57a9cc4e6978551b6bbda6f.jpg', '上海市', '2017-11-02 20:36:00.000000', '2', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('12', '上海交通大学', '上海交通大学', '19', '2', 'org/2018/03/84d5320a896feb60cba0aa061ce272e9.jpg', '上海市', '2017-11-02 20:36:00.000000', '2', 'gx', '0', '8', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('13', '北京大学', '北京大学', '5', '0', 'org/2018/03/f6254e92a1f1d75f91561adb3d0d2070.png', '北京市', '2018-03-03 16:27:00.000000', '1', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('14', '清华大学', '清华大学', '1', '0', 'org/2018/03/fb9debf37a0f6aa1513f1ffcf05f271d.jpg', '北京市', '2018-03-03 16:29:00.000000', '1', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('15', '人民大学', '人民大学', '2', '0', 'org/2018/03/7a873898ae690d74b6cfd06660f92f3d.jpg', '北京市', '2018-03-03 16:29:00.000000', '1', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('16', '武汉大学', '武汉大学', '4', '3', 'org/2018/03/29871748af08e169e36a18ac5828ecf5.jpg', '武汉市', '2018-03-03 16:50:00.000000', '7', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('17', '杭州师范大学', '杭州师范大学', '0', '0', 'org/2018/03/1832abf4e7c010f9d056f20d677771a8.jpg', '杭州市', '2018-03-03 16:53:00.000000', '8', 'gx', '0', '0', '全国知名');

-- ----------------------------
-- Table structure for `organization_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_campany` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(20) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` (`org_id`),
  CONSTRAINT `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES ('1', '马云', '33', '阿里', 'ceo', '创新', '75', '7', '2017-11-03 02:30:00.000000', '12', 'teacher/2018/03/ea93576ec3c9c0ab337870717a758bd3.jpg', '53');
INSERT INTO `organization_teacher` VALUES ('2', '马化腾', '26', '腾讯', 'ceo', '轻松', '128', '3', '2017-11-03 02:32:00.000000', '2', 'teacher/2018/03/e6475229329fefaedb9a0ef44d5b9344.jpg', '46');
INSERT INTO `organization_teacher` VALUES ('3', '李彦宏', '29', '百度', 'ceo', '严厉', '11', '2', '2018-03-03 16:41:00.000000', '13', 'teacher/2018/03/e4b3f905428285793b72d501e4a6a7a8.jpg', '49');
INSERT INTO `organization_teacher` VALUES ('4', '雷军', '28', '小米', 'ceo', '搞笑', '13', '2', '2018-03-03 16:42:00.000000', '14', 'teacher/2018/03/615e84240c875cb843cc5364a0e88c21.jpg', '48');
INSERT INTO `organization_teacher` VALUES ('5', '刘强东', '24', '京东', 'ceo', '轻松', '6', '3', '2018-03-03 16:45:00.000000', '15', 'teacher/2018/03/fb99ad6a65be46ac90edae8be000d2c1.png', '44');
INSERT INTO `organization_teacher` VALUES ('6', '张朝阳', '33', '搜狐', 'ceo', '幽默', '7', '5', '2018-03-03 16:46:00.000000', '14', 'teacher/2018/03/663c974dad90e2d11d1e3d2246055cd4.jpg', '53');

-- ----------------------------
-- Table structure for `users_banner`
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `index` varchar(10) DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES ('1', '图1', 'banner/2018/03/2db08b2075936053341902b4c967ba61.jpg', '', '', '2018-03-03 15:22:00.000000');
INSERT INTO `users_banner` VALUES ('2', '图2', 'banner/2018/03/2581b5e6b68879fb2b700dd0e4f4be62.jpg', '', '', '2018-03-03 15:22:00.000000');
INSERT INTO `users_banner` VALUES ('3', '图3', 'banner/2018/03/b7a17ed1d8324dec82169d3602e2ba5c.gif', '', '', '2018-03-03 15:22:00.000000');
INSERT INTO `users_banner` VALUES ('4', '图4', 'banner/2018/03/ff3950b4d71523fad961d3a49bc1c459.jpg', '', '', '2018-03-03 15:23:00.000000');

-- ----------------------------
-- Table structure for `users_emailverifyrecord`
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(30) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES ('1', '1914', '1691866836@qq.com', 'register', '2017-10-31 01:14:00.000000');
INSERT INTO `users_emailverifyrecord` VALUES ('2', '4037', 'zhang@hotmail.com', 'register', '2017-11-01 01:15:00.000000');
INSERT INTO `users_emailverifyrecord` VALUES ('4', '4xfptONkH7fLYLJ7', 'silence16918@163.com', 'register', '2017-11-02 03:29:04.824000');
INSERT INTO `users_emailverifyrecord` VALUES ('5', 'TJf5NcA1XfxNEy3K', 'silence16918@163.com', 'forget', '2017-11-02 18:04:16.116000');
INSERT INTO `users_emailverifyrecord` VALUES ('7', 'W38y88E7MZf9bGq6', 'silence16918@163.com', 'register', '2018-02-13 00:24:17.079000');
INSERT INTO `users_emailverifyrecord` VALUES ('8', '6PYb4w2sXspr6fAS', 'silence16918@163.com', 'forget', '2018-02-13 01:24:50.814000');
INSERT INTO `users_emailverifyrecord` VALUES ('9', 'ZZtEDPoOo66zijPk', '3054519653@qq.com', 'register', '2018-03-02 15:29:29.845000');
INSERT INTO `users_emailverifyrecord` VALUES ('10', 'by48P2W2bbuB9nSn', '3054519653@qq.com', 'forget', '2018-03-02 16:44:14.071000');
INSERT INTO `users_emailverifyrecord` VALUES ('11', '8rrue4qffILGv1M3', 'silence16918@163.com', 'register', '2018-05-14 16:42:22.437000');
INSERT INTO `users_emailverifyrecord` VALUES ('12', 'iOTyL9u41gX0JdPp', 'silence16918@163.com', 'forget', '2018-05-14 16:45:31.546000');
INSERT INTO `users_emailverifyrecord` VALUES ('13', 'zeWN', '1@2.com', 'update_email', '2018-05-18 10:15:53.954000');
INSERT INTO `users_emailverifyrecord` VALUES ('14', 'H8ta', 'silence16918@163.com', 'update_email', '2018-05-18 10:17:43.181000');

-- ----------------------------
-- Table structure for `users_userprofile`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$24000$qchzP6UZlOad$edEGPaekuyGjbuS4X85OVzLsWbi6uwzIs5UaGdMcFgc=', '2018-05-18 17:17:31.411000', '1', 'chen', '', '', 'silence16918@163.com', '1', '1', '2017-11-01 01:00:00.000000', '小红', '2011-05-12', 'female', '我来自火星', '13647611520', 'image/2018/05/09.png');
INSERT INTO `users_userprofile` VALUES ('8', 'pbkdf2_sha256$24000$3mISR1I2Mv4E$B3q8mw88P1E3J+Otv0EpRHSN9GI01PdXpI9Q3vrL+M0=', '2018-05-18 13:49:27.154000', '0', 'silence16918@163.com', '', '', 'silence169186@163.com', '0', '1', '2018-05-14 16:42:22.295000', '小明', '2018-05-01', 'male', '地球', '12345678912', 'image/2018/05/05.png');

-- ----------------------------
-- Table structure for `users_userprofile_groups`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `users_userprofile_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `xadmin_bookmark`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for `xadmin_log`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `xadmin_usersettings`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'site-theme', '/static/xadmin/css/themes/bootstrap-theme.css', '1');

-- ----------------------------
-- Table structure for `xadmin_userwidget`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
