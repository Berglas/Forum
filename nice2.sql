/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50546
Source Host           : localhost:3306
Source Database       : nice

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2016-01-11 17:35:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `Type` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Number` int(5) NOT NULL,
  `ArticleTitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `writer` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Type`,`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', '123123', '2016-01-10 23:36:46', '123');

-- ----------------------------
-- Table structure for articlecontents
-- ----------------------------
DROP TABLE IF EXISTS `articlecontents`;
CREATE TABLE `articlecontents` (
  `ArticleType` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ArticleID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Number` int(11) NOT NULL,
  `UserID` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ArticleCount` int(3) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ArticleType`,`ArticleID`,`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articlecontents
-- ----------------------------
INSERT INTO `articlecontents` VALUES ('1', '1', '0', '123', '0', '2016-01-10 23:36:46', '<p>123123</p>\n');

-- ----------------------------
-- Table structure for functionauthority
-- ----------------------------
DROP TABLE IF EXISTS `functionauthority`;
CREATE TABLE `functionauthority` (
  `funcid` smallint(6) DEFAULT NULL,
  `funcName` varchar(20) DEFAULT NULL,
  `funcURL` varchar(32) DEFAULT NULL,
  `funcAuthority` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of functionauthority
-- ----------------------------
INSERT INTO `functionauthority` VALUES ('1', '笑話版', 'nJock.jsp', '1');
INSERT INTO `functionauthority` VALUES ('2', '遊戲版', 'nGame.jsp', '1');
INSERT INTO `functionauthority` VALUES ('3', '時事版', 'nNews.jsp', '1');
INSERT INTO `functionauthority` VALUES ('4', '綜合版', 'nAll.jsp', '1');
INSERT INTO `functionauthority` VALUES ('5', '會員註冊', 'vRegistration.jsp', '1');
INSERT INTO `functionauthority` VALUES ('6', '登出', 'nLogout.jsp', '1');
INSERT INTO `functionauthority` VALUES (null, null, null, null);

-- ----------------------------
-- Table structure for typetbl
-- ----------------------------
DROP TABLE IF EXISTS `typetbl`;
CREATE TABLE `typetbl` (
  `TypeID` tinyint(4) NOT NULL,
  `TypeName` varchar(6) NOT NULL,
  PRIMARY KEY (`TypeID`),
  KEY `TypeID` (`TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of typetbl
-- ----------------------------
INSERT INTO `typetbl` VALUES ('1', '笑話版');
INSERT INTO `typetbl` VALUES ('2', '遊戲版');
INSERT INTO `typetbl` VALUES ('3', '時事版');
INSERT INTO `typetbl` VALUES ('4', '綜合版');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userID` varchar(20) NOT NULL,
  `PassWD` varchar(20) NOT NULL,
  `authority` varchar(1) DEFAULT NULL,
  `Name` varchar(20) NOT NULL,
  `GP` int(10) DEFAULT NULL,
  `Coin` int(10) DEFAULT NULL,
  `Lv` int(3) DEFAULT NULL,
  `Exp` int(3) DEFAULT NULL,
  `Image` varchar(50) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Md5` char(32) DEFAULT NULL,
  `verifiedCode` char(32) DEFAULT NULL,
  `isVerified` tinyint(1) DEFAULT '0',
  `regDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('11', '11', '0', '11', '0', '0', '0', '0', '', 'aa1993821002@yahoo.com.tw', '6512bd43d9caa6e02c990b0a82652dca', 'c9b93fec883bf4577feea88af284f96a', '0', null);
INSERT INTO `users` VALUES ('112', '112', '0', '112', '0', '0', '0', '0', '', 'aa1993821002@yahoo.com.tw', '7f6ffaa6bb0b408017b62254211691b5', 'cca662d9752e8e499a97d97d74295505', '1', '2016-01-11 17:24:43');
INSERT INTO `users` VALUES ('1123', '1123', '0', '??', '0', '0', '0', '0', '', 'aa1993821002@yahoo.com.tw', '2cfd4560539f887a5e420412b370b361', 'd217c4a5232e73c66ddd211b0d1cd350', '0', null);
INSERT INTO `users` VALUES ('123', '123', '0', '123', '0', '0', '0', '0', '', 'msms8949@gmail.com', '202cb962ac59075b964b07152d234b70', '686b248e0e40faa829713b458b363a61', '0', null);
INSERT INTO `users` VALUES ('12333', '12333', '0', '12333', '0', '0', '0', '0', '', 'aa1993821002@yahoo.com.tw', 'a8ae104615cb4e966ddb435f3e575a02', 'c34febf5fc4d9b08b6fe101dd6f0beaa', '0', null);
INSERT INTO `users` VALUES ('Animism', '123', '0', 'Animism', '0', '0', '0', '0', '', 'aa1993821002@yahoo.com.tw', '202cb962ac59075b964b07152d234b70', '2a1da99ce551d1a90c6b1a3976f36ef3', '1', '2016-01-11 17:29:00');
INSERT INTO `users` VALUES ('test', 'test', '1', 'test', '0', '0', '0', '0', '', 'a', null, null, '0', null);
INSERT INTO `users` VALUES ('test01', '123', '1', 'test', '0', '0', '0', '0', '', 'f0106036@mail.dyu.edu.tw', '202cb962ac59075b964b07152d234b70', 'abb27bd3a0e5f7cac0989bff2e793985', '0', null);
