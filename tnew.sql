/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : tnew

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-11-29 23:19:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `ANo` int(11) NOT NULL,
  `Aname` varchar(30) DEFAULT NULL,
  `Apassword` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ANo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('1', '苏苏', '0');
INSERT INTO `administrator` VALUES ('2', '都都', '123');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `CNo` int(11) NOT NULL AUTO_INCREMENT,
  `MNo` int(11) NOT NULL,
  `Cname` varchar(30) NOT NULL,
  `Ccredit` float(5,1) DEFAULT '0.0',
  `Csemester` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CNo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '101', '石家庄铁道大学团委', '100.0', '1年');
INSERT INTO `course` VALUES ('2', '105', '石家庄铁道大学学生会', '500.0', '1年');
INSERT INTO `course` VALUES ('3', '111', '石家庄铁道大学青年志愿者学会', '400.0', '1年');
INSERT INTO `course` VALUES ('4', '101', '石家庄铁道大学校艺术团', '500.0', '1年');
INSERT INTO `course` VALUES ('5', '101', '石家庄铁道大学联合委员会', '400.0', '1年');
INSERT INTO `course` VALUES ('6', '101', '石家庄铁道大学国旗护卫队', '100.0', '1年');
INSERT INTO `course` VALUES ('7', '112', '石家庄铁道大学礼仪队', '80.0', '1年');
INSERT INTO `course` VALUES ('8', '104', '石家庄铁道大学自强社', '50.0', '1年');
INSERT INTO `course` VALUES ('9', '103', '石家庄铁道大学校史馆1', '60.0', '1年');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `SNo` int(11) NOT NULL,
  `CNo` int(11) NOT NULL,
  `classroom` varchar(11) DEFAULT '0.0',
  `grade` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`SNo`,`CNo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('1', '1', '2', '95');
INSERT INTO `sc` VALUES ('1', '2', '0.0', null);
INSERT INTO `sc` VALUES ('1', '5', '0', '90');
INSERT INTO `sc` VALUES ('1', '18', '0', '85');
INSERT INTO `sc` VALUES ('20183756', '5', '0', '100');
INSERT INTO `sc` VALUES ('20183756', '14', '0', '99');
INSERT INTO `sc` VALUES ('20183756', '15', '0', '0');
INSERT INTO `sc` VALUES ('20183756', '16', '0', '0');
INSERT INTO `sc` VALUES ('20183756', '29', '0', '0');
INSERT INTO `sc` VALUES ('1514010918', '1', '0.0', null);
INSERT INTO `sc` VALUES ('1514010918', '7', '0.0', null);
INSERT INTO `sc` VALUES ('1514010919', '6', '11505H', null);
INSERT INTO `sc` VALUES ('1514010924', '1', '0.0', null);
INSERT INTO `sc` VALUES ('1514010924', '6', '0.0', null);
INSERT INTO `sc` VALUES ('1514010924', '7', '0.0', null);
INSERT INTO `sc` VALUES ('1514010924', '11', '0.0', null);
INSERT INTO `sc` VALUES ('1514010942', '1', '0', '0.0');
INSERT INTO `sc` VALUES ('1514010943', '5', 'A102', '100');
INSERT INTO `sc` VALUES ('1514010943', '14', '0', '99');
INSERT INTO `sc` VALUES ('1514010943', '15', '0', '0');
INSERT INTO `sc` VALUES ('1514010943', '29', '0', '0');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `SNo` int(11) NOT NULL AUTO_INCREMENT,
  `MNo` int(11) NOT NULL,
  `Sname` varchar(30) NOT NULL,
  `Spassword` varchar(30) NOT NULL,
  `Sclass` varchar(30) DEFAULT '',
  `Ssex` varchar(2) DEFAULT '',
  PRIMARY KEY (`SNo`,`MNo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1514010943 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1514010942', '101', '小李', '111111', '信1805-1', '男');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `TNo` int(11) NOT NULL AUTO_INCREMENT,
  `Tname` varchar(30) NOT NULL,
  `Tpassword` varchar(30) NOT NULL,
  `Tsex` varchar(2) DEFAULT NULL,
  `Tdept` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TNo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('8', '小白', '123456', '女', '软件工程');
INSERT INTO `teacher` VALUES ('10', '666888', '123', '男', '软件工程');
