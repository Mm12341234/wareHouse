/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : warehouse

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-06-21 12:02:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` int(10) NOT NULL AUTO_INCREMENT,
  `adminUsername` varchar(20) DEFAULT NULL,
  `adminPassword` varchar(20) NOT NULL,
  `adminGender` char(1) DEFAULT NULL,
  `adminPhone` varchar(20) DEFAULT NULL,
  `adminEmail` varchar(20) DEFAULT NULL,
  `adminDeptId` int(10) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2015241313 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('2015241312', '李四', '000000', '男', '17876253398', '1600148840@qq.com', '1');

-- ----------------------------
-- Table structure for admindepartment
-- ----------------------------
DROP TABLE IF EXISTS `admindepartment`;
CREATE TABLE `admindepartment` (
  `deptId` int(10) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`deptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admindepartment
-- ----------------------------

-- ----------------------------
-- Table structure for foods
-- ----------------------------
DROP TABLE IF EXISTS `foods`;
CREATE TABLE `foods` (
  `foodId` int(10) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(20) DEFAULT NULL,
  `foodTypeId` int(10) DEFAULT NULL,
  `foodPrice` double DEFAULT NULL,
  `foodNums` int(10) DEFAULT NULL,
  `foodShelflife` char(1) DEFAULT NULL,
  `foodProducer` varchar(20) DEFAULT NULL,
  `foodShelvesId` int(20) DEFAULT NULL,
  `foodHouseId` int(20) DEFAULT NULL,
  `foodStorageTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`foodId`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foods
-- ----------------------------
INSERT INTO `foods` VALUES ('1', '25', '12', null, null, null, null, null, null, null);
INSERT INTO `foods` VALUES ('2', '苹果', '1', null, '450', null, null, null, '1', '2018-06-12 12:00:07');
INSERT INTO `foods` VALUES ('3', '香蕉', '1', null, '260', null, null, null, '2', '2018-06-12 12:00:07');
INSERT INTO `foods` VALUES ('4', '麻雀', '12', null, null, null, null, null, null, null);
INSERT INTO `foods` VALUES ('5', '苹果梨25', '12', null, '250', null, null, null, '2', null);
INSERT INTO `foods` VALUES ('6', '锋利', '12', null, null, null, null, null, null, null);
INSERT INTO `foods` VALUES ('7', '25', '12', null, null, null, null, null, null, null);
INSERT INTO `foods` VALUES ('8', '', '12', null, null, null, null, null, null, null);
INSERT INTO `foods` VALUES ('9', '54747', '12', null, null, null, null, null, null, null);
INSERT INTO `foods` VALUES ('10', '', '12', null, null, null, null, null, null, null);
INSERT INTO `foods` VALUES ('11', '牛肉', '12', null, null, null, null, null, null, null);
INSERT INTO `foods` VALUES ('12', '牛奶', '12', null, null, null, null, null, null, null);
INSERT INTO `foods` VALUES ('13', '牛肉', '2', null, '500', null, null, null, '1', '2018-06-12 00:00:00');
INSERT INTO `foods` VALUES ('14', '牛肉', '2', null, '210', null, null, null, '1', '2018-06-15 00:10:00');
INSERT INTO `foods` VALUES ('15', '贝壳', '2', null, '23', null, null, null, '2', '2018-06-15 01:20:15');
INSERT INTO `foods` VALUES ('16', '酸奶', '5', null, '25', null, null, null, '1', '2018-06-16 02:45:21');
INSERT INTO `foods` VALUES ('17', '香蕉', '1', null, '2520', '1', '肇庆', '10', '2', '2018-06-16 13:45:00');
INSERT INTO `foods` VALUES ('18', '苹果', '1', null, '25', '1', '肇庆', '10', '2', '2018-06-17 15:25:52');
INSERT INTO `foods` VALUES ('19', '凤梨', '1', null, '300', '1', '肇庆', '10', '2', '2018-06-17 15:30:21');
INSERT INTO `foods` VALUES ('20', '牛肉', '2', null, '150', '1', '肇庆', '10', '2', '2018-06-17 15:45:52');
INSERT INTO `foods` VALUES ('21', '香蕉', '1', null, '2520', '1', '肇庆', '10', '1', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('22', '香蕉', '1', null, '2520', '1', '肇庆', '10', '1', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('23', '香蕉', '1', null, '2520', '1', '肇庆', '10', '2', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('24', '香蕉', '1', null, '2520', '1', '肇庆', '10', '1', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('25', '香蕉', '1', null, '2520', '1', '肇庆', '10', '2', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('26', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('27', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('28', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('29', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('30', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('31', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('32', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('33', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('34', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('35', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('36', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('37', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('38', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('39', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('40', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('41', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('42', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('43', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('44', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('45', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('46', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('47', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('48', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('49', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('50', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('51', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('52', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('53', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('54', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('55', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('56', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('57', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('58', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('59', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('60', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('61', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('62', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('63', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('64', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('65', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('66', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('67', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('68', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('69', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('70', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('71', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('72', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('73', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('74', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('75', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('76', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('77', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('78', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('79', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('80', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('81', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('82', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('83', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('84', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('85', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('86', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('87', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('88', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('89', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('90', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('91', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('92', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('93', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('94', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('95', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('96', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('97', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('98', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('99', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('100', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('101', '香蕉', '1', null, '2520', '1', '肇庆', '10', '5', '2008-06-15 13:00:00');
INSERT INTO `foods` VALUES ('102', '', '1', null, null, null, null, null, null, '2018-06-12 00:00:00');
INSERT INTO `foods` VALUES ('103', '112', '1', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for foodstype
-- ----------------------------
DROP TABLE IF EXISTS `foodstype`;
CREATE TABLE `foodstype` (
  `typeId` int(10) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foodstype
-- ----------------------------
INSERT INTO `foodstype` VALUES ('1', '水果');
INSERT INTO `foodstype` VALUES ('2', '生肉');
INSERT INTO `foodstype` VALUES ('3', '熟肉');
INSERT INTO `foodstype` VALUES ('4', '蔬菜');
INSERT INTO `foodstype` VALUES ('5', '乳制品');

-- ----------------------------
-- Table structure for foodtemperature
-- ----------------------------
DROP TABLE IF EXISTS `foodtemperature`;
CREATE TABLE `foodtemperature` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `foodId` int(10) DEFAULT NULL,
  `foodTemperature` double DEFAULT NULL,
  `temperatureTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=721 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foodtemperature
-- ----------------------------
INSERT INTO `foodtemperature` VALUES ('1', '2', '6', '2018-06-12 00:00:00');
INSERT INTO `foodtemperature` VALUES ('2', '2', '6', '2018-06-13 00:00:10');
INSERT INTO `foodtemperature` VALUES ('3', '2', '6', '2018-06-13 00:00:20');
INSERT INTO `foodtemperature` VALUES ('4', '2', '6', '2018-06-13 00:00:40');
INSERT INTO `foodtemperature` VALUES ('5', '2', '6', '2018-06-13 00:00:50');
INSERT INTO `foodtemperature` VALUES ('6', '2', '6', '2018-06-13 00:01:00');
INSERT INTO `foodtemperature` VALUES ('7', '2', '6', '2018-06-13 00:01:10');
INSERT INTO `foodtemperature` VALUES ('8', '2', '6', '2018-06-13 00:01:20');
INSERT INTO `foodtemperature` VALUES ('9', '2', '5', '2018-06-13 00:01:30');
INSERT INTO `foodtemperature` VALUES ('10', '2', '4', '2018-06-13 00:01:40');
INSERT INTO `foodtemperature` VALUES ('11', '2', '4', '2018-06-13 00:01:50');
INSERT INTO `foodtemperature` VALUES ('12', '2', '4', '2018-06-13 00:02:00');
INSERT INTO `foodtemperature` VALUES ('13', '2', '4', '2018-06-13 00:02:10');
INSERT INTO `foodtemperature` VALUES ('14', '2', '8', '2018-06-13 00:02:20');
INSERT INTO `foodtemperature` VALUES ('15', '2', '10', '2018-06-13 00:02:30');
INSERT INTO `foodtemperature` VALUES ('16', '2', '10', '2018-06-13 00:02:40');
INSERT INTO `foodtemperature` VALUES ('17', '2', '11', '2018-06-13 00:02:50');
INSERT INTO `foodtemperature` VALUES ('18', '2', '8', '2018-06-13 00:03:00');
INSERT INTO `foodtemperature` VALUES ('19', '2', '6', '2018-06-13 00:03:10');
INSERT INTO `foodtemperature` VALUES ('20', '2', '6', '2018-06-13 00:03:20');
INSERT INTO `foodtemperature` VALUES ('21', '2', '6', '2018-06-13 00:03:30');
INSERT INTO `foodtemperature` VALUES ('22', '2', '6', '2018-06-13 00:03:40');
INSERT INTO `foodtemperature` VALUES ('23', '2', '4', '2018-06-13 00:03:50');
INSERT INTO `foodtemperature` VALUES ('24', '2', '4', '2018-06-13 00:04:00');
INSERT INTO `foodtemperature` VALUES ('25', '2', '4', '2018-06-13 00:04:10');
INSERT INTO `foodtemperature` VALUES ('26', '2', '4', '2018-06-13 00:04:20');
INSERT INTO `foodtemperature` VALUES ('27', '2', '5', '2018-06-13 00:04:30');
INSERT INTO `foodtemperature` VALUES ('28', '2', '6', '2018-06-13 00:04:40');
INSERT INTO `foodtemperature` VALUES ('29', '2', '5', '2018-06-13 00:04:50');
INSERT INTO `foodtemperature` VALUES ('30', '2', '6', '2018-06-13 00:05:00');
INSERT INTO `foodtemperature` VALUES ('31', '2', '5', '2018-06-13 00:06:10');
INSERT INTO `foodtemperature` VALUES ('32', '2', '3', '2018-06-13 00:06:20');
INSERT INTO `foodtemperature` VALUES ('33', '2', '2', '2018-06-13 00:06:30');
INSERT INTO `foodtemperature` VALUES ('34', '2', '3', '2018-06-13 00:06:40');
INSERT INTO `foodtemperature` VALUES ('35', '2', '8', '2018-06-13 00:06:50');
INSERT INTO `foodtemperature` VALUES ('36', '2', '6', '2018-06-13 00:07:00');
INSERT INTO `foodtemperature` VALUES ('37', '2', '5', '2018-06-13 00:07:10');
INSERT INTO `foodtemperature` VALUES ('38', '2', '6', '2018-06-13 00:07:20');
INSERT INTO `foodtemperature` VALUES ('39', '2', '7', '2018-06-13 00:07:30');
INSERT INTO `foodtemperature` VALUES ('40', '2', '7', '2018-06-13 00:07:40');
INSERT INTO `foodtemperature` VALUES ('41', '2', '7', '2018-06-13 00:07:50');
INSERT INTO `foodtemperature` VALUES ('42', '2', '6', '2018-06-13 00:08:00');
INSERT INTO `foodtemperature` VALUES ('43', '2', '6', '2018-06-13 00:08:10');
INSERT INTO `foodtemperature` VALUES ('44', '2', '6', '2018-06-13 00:08:20');
INSERT INTO `foodtemperature` VALUES ('45', '2', '6', '2018-06-13 00:08:30');
INSERT INTO `foodtemperature` VALUES ('46', '2', '5', '2018-06-13 00:08:40');
INSERT INTO `foodtemperature` VALUES ('47', '2', '5', '2018-06-13 00:08:50');
INSERT INTO `foodtemperature` VALUES ('48', '2', '5', '2018-06-13 00:09:00');
INSERT INTO `foodtemperature` VALUES ('49', '2', '5', '2018-06-13 00:09:10');
INSERT INTO `foodtemperature` VALUES ('50', '2', '5', '2018-06-13 00:09:20');
INSERT INTO `foodtemperature` VALUES ('51', '2', '5', '2018-06-13 00:09:30');
INSERT INTO `foodtemperature` VALUES ('52', '2', '4', '2018-06-13 00:09:40');
INSERT INTO `foodtemperature` VALUES ('53', '2', '5', '2018-06-13 00:09:50');
INSERT INTO `foodtemperature` VALUES ('54', '2', '6', '2018-06-13 00:10:00');
INSERT INTO `foodtemperature` VALUES ('55', '2', '6', '2018-06-13 00:10:10');
INSERT INTO `foodtemperature` VALUES ('56', '2', '6', '2018-06-13 00:10:20');
INSERT INTO `foodtemperature` VALUES ('57', '2', '6', '2018-06-13 00:10:30');
INSERT INTO `foodtemperature` VALUES ('58', '2', '6', '2018-06-13 00:10:40');
INSERT INTO `foodtemperature` VALUES ('59', '2', '4', '2018-06-13 00:10:50');
INSERT INTO `foodtemperature` VALUES ('60', '2', '6', '2018-06-13 00:11:10');
INSERT INTO `foodtemperature` VALUES ('61', '2', '4', '2018-06-13 00:11:20');
INSERT INTO `foodtemperature` VALUES ('62', '2', '4', '2018-06-13 00:11:30');
INSERT INTO `foodtemperature` VALUES ('63', '2', '4', '2018-06-13 00:11:40');
INSERT INTO `foodtemperature` VALUES ('64', '2', '4', '2018-06-13 00:11:50');
INSERT INTO `foodtemperature` VALUES ('65', '2', '4', '2018-06-13 00:12:00');
INSERT INTO `foodtemperature` VALUES ('66', '2', '6', '2018-06-13 00:12:10');
INSERT INTO `foodtemperature` VALUES ('67', '2', '6', '2018-06-13 00:12:20');
INSERT INTO `foodtemperature` VALUES ('68', '2', '6', '2018-06-13 00:12:30');
INSERT INTO `foodtemperature` VALUES ('69', '2', '6', '2018-06-13 00:12:40');
INSERT INTO `foodtemperature` VALUES ('70', '2', '6', '2018-06-13 00:12:50');
INSERT INTO `foodtemperature` VALUES ('71', '2', '6', '2018-06-13 00:13:00');
INSERT INTO `foodtemperature` VALUES ('72', '2', '2', '2018-06-13 00:13:10');
INSERT INTO `foodtemperature` VALUES ('73', '2', '4', '2018-06-13 00:13:20');
INSERT INTO `foodtemperature` VALUES ('74', '2', '4', '2018-06-13 00:13:30');
INSERT INTO `foodtemperature` VALUES ('75', '2', '7', '2018-06-13 00:13:40');
INSERT INTO `foodtemperature` VALUES ('76', '2', '8', '2018-06-13 00:13:50');
INSERT INTO `foodtemperature` VALUES ('77', '2', '12', '2018-06-13 00:14:00');
INSERT INTO `foodtemperature` VALUES ('78', '2', '5', '2018-06-13 00:14:10');
INSERT INTO `foodtemperature` VALUES ('79', '2', '5', '2018-06-13 00:14:20');
INSERT INTO `foodtemperature` VALUES ('80', '2', '5', '2018-06-13 00:14:30');
INSERT INTO `foodtemperature` VALUES ('81', '2', '5', '2018-06-13 00:14:40');
INSERT INTO `foodtemperature` VALUES ('82', '2', '5', '2018-06-13 00:14:50');
INSERT INTO `foodtemperature` VALUES ('83', '2', '6', '2018-06-13 00:15:00');
INSERT INTO `foodtemperature` VALUES ('84', '2', '6', '2018-06-13 00:15:10');
INSERT INTO `foodtemperature` VALUES ('85', '2', '6', '2018-06-13 00:15:20');
INSERT INTO `foodtemperature` VALUES ('86', '2', '5', '2018-06-13 00:15:30');
INSERT INTO `foodtemperature` VALUES ('87', '2', '6', '2018-06-21 05:06:30');
INSERT INTO `foodtemperature` VALUES ('88', '2', '4', '2018-06-21 05:06:40');
INSERT INTO `foodtemperature` VALUES ('89', '2', '9', '2018-06-21 05:06:50');
INSERT INTO `foodtemperature` VALUES ('90', '2', '6', '2018-06-21 05:07:00');
INSERT INTO `foodtemperature` VALUES ('91', '2', '7', '2018-06-21 05:07:10');
INSERT INTO `foodtemperature` VALUES ('92', '2', '3', '2018-06-21 05:07:20');
INSERT INTO `foodtemperature` VALUES ('93', '2', '7', '2018-06-21 05:07:30');
INSERT INTO `foodtemperature` VALUES ('94', '2', '9', '2018-06-21 05:07:40');
INSERT INTO `foodtemperature` VALUES ('95', '2', '9', '2018-06-21 05:07:50');
INSERT INTO `foodtemperature` VALUES ('96', '2', '3', '2018-06-21 05:08:00');
INSERT INTO `foodtemperature` VALUES ('97', '2', '9', '2018-06-21 05:08:10');
INSERT INTO `foodtemperature` VALUES ('98', '2', '8', '2018-06-21 05:08:20');
INSERT INTO `foodtemperature` VALUES ('99', '2', '3', '2018-06-21 05:08:30');
INSERT INTO `foodtemperature` VALUES ('100', '2', '4', '2018-06-21 05:08:40');
INSERT INTO `foodtemperature` VALUES ('101', '2', '7', '2018-06-21 05:08:50');
INSERT INTO `foodtemperature` VALUES ('102', '2', '8', '2018-06-21 05:09:00');
INSERT INTO `foodtemperature` VALUES ('103', '2', '9', '2018-06-21 05:09:10');
INSERT INTO `foodtemperature` VALUES ('104', '2', '2', '2018-06-21 05:09:20');
INSERT INTO `foodtemperature` VALUES ('105', '2', '4', '2018-06-21 05:09:30');
INSERT INTO `foodtemperature` VALUES ('106', '2', '5', '2018-06-21 05:09:40');
INSERT INTO `foodtemperature` VALUES ('107', '2', '7', '2018-06-21 05:09:50');
INSERT INTO `foodtemperature` VALUES ('108', '2', '9', '2018-06-21 05:10:00');
INSERT INTO `foodtemperature` VALUES ('109', '2', '4', '2018-06-21 05:10:10');
INSERT INTO `foodtemperature` VALUES ('110', '2', '8', '2018-06-21 05:10:20');
INSERT INTO `foodtemperature` VALUES ('111', '2', '9', '2018-06-21 05:10:30');
INSERT INTO `foodtemperature` VALUES ('112', '2', '2', '2018-06-21 05:10:40');
INSERT INTO `foodtemperature` VALUES ('113', '2', '8', '2018-06-21 05:10:50');
INSERT INTO `foodtemperature` VALUES ('114', '2', '2', '2018-06-21 05:11:00');
INSERT INTO `foodtemperature` VALUES ('115', '2', '8', '2018-06-21 05:11:10');
INSERT INTO `foodtemperature` VALUES ('116', '2', '8', '2018-06-21 05:11:20');
INSERT INTO `foodtemperature` VALUES ('117', '2', '3', '2018-06-21 05:11:30');
INSERT INTO `foodtemperature` VALUES ('118', '2', '5', '2018-06-21 05:11:40');
INSERT INTO `foodtemperature` VALUES ('119', '2', '6', '2018-06-21 05:11:50');
INSERT INTO `foodtemperature` VALUES ('120', '2', '9', '2018-06-21 05:12:00');
INSERT INTO `foodtemperature` VALUES ('121', '2', '7', '2018-06-21 05:12:10');
INSERT INTO `foodtemperature` VALUES ('122', '2', '9', '2018-06-21 05:12:20');
INSERT INTO `foodtemperature` VALUES ('123', '2', '7', '2018-06-21 05:12:30');
INSERT INTO `foodtemperature` VALUES ('124', '2', '5', '2018-06-21 05:12:40');
INSERT INTO `foodtemperature` VALUES ('125', '2', '7', '2018-06-21 05:12:50');
INSERT INTO `foodtemperature` VALUES ('126', '2', '2', '2018-06-21 05:13:00');
INSERT INTO `foodtemperature` VALUES ('127', '2', '7', '2018-06-21 05:13:10');
INSERT INTO `foodtemperature` VALUES ('128', '2', '9', '2018-06-21 05:13:20');
INSERT INTO `foodtemperature` VALUES ('129', '2', '2', '2018-06-21 05:13:30');
INSERT INTO `foodtemperature` VALUES ('130', '2', '7', '2018-06-21 05:13:40');
INSERT INTO `foodtemperature` VALUES ('131', '2', '4', '2018-06-21 05:13:50');
INSERT INTO `foodtemperature` VALUES ('132', '2', '5', '2018-06-21 05:14:00');
INSERT INTO `foodtemperature` VALUES ('133', '2', '3', '2018-06-21 05:14:10');
INSERT INTO `foodtemperature` VALUES ('134', '2', '2', '2018-06-21 05:14:20');
INSERT INTO `foodtemperature` VALUES ('135', '2', '2', '2018-06-21 05:14:30');
INSERT INTO `foodtemperature` VALUES ('136', '2', '2', '2018-06-21 05:14:40');
INSERT INTO `foodtemperature` VALUES ('137', '2', '7', '2018-06-21 05:14:50');
INSERT INTO `foodtemperature` VALUES ('138', '2', '2', '2018-06-21 05:15:00');
INSERT INTO `foodtemperature` VALUES ('139', '2', '8', '2018-06-21 05:15:10');
INSERT INTO `foodtemperature` VALUES ('140', '2', '4', '2018-06-21 05:15:20');
INSERT INTO `foodtemperature` VALUES ('141', '2', '7', '2018-06-21 05:15:30');
INSERT INTO `foodtemperature` VALUES ('142', '2', '9', '2018-06-21 05:15:40');
INSERT INTO `foodtemperature` VALUES ('143', '2', '3', '2018-06-21 05:15:50');
INSERT INTO `foodtemperature` VALUES ('144', '2', '5', '2018-06-21 05:16:00');
INSERT INTO `foodtemperature` VALUES ('145', '2', '6', '2018-06-21 05:16:10');
INSERT INTO `foodtemperature` VALUES ('146', '2', '8', '2018-06-21 05:16:20');
INSERT INTO `foodtemperature` VALUES ('147', '2', '2', '2018-06-21 05:16:30');
INSERT INTO `foodtemperature` VALUES ('148', '2', '8', '2018-06-21 05:16:40');
INSERT INTO `foodtemperature` VALUES ('149', '2', '6', '2018-06-21 05:16:50');
INSERT INTO `foodtemperature` VALUES ('150', '2', '3', '2018-06-21 05:17:00');
INSERT INTO `foodtemperature` VALUES ('151', '2', '9', '2018-06-21 05:17:10');
INSERT INTO `foodtemperature` VALUES ('152', '2', '5', '2018-06-21 05:17:30');
INSERT INTO `foodtemperature` VALUES ('153', '2', '8', '2018-06-21 05:17:40');
INSERT INTO `foodtemperature` VALUES ('154', '2', '2', '2018-06-21 05:17:50');
INSERT INTO `foodtemperature` VALUES ('155', '2', '2', '2018-06-21 05:18:00');
INSERT INTO `foodtemperature` VALUES ('156', '2', '2', '2018-06-21 05:18:10');
INSERT INTO `foodtemperature` VALUES ('157', '2', '4', '2018-06-21 05:18:20');
INSERT INTO `foodtemperature` VALUES ('158', '2', '4', '2018-06-21 05:18:30');
INSERT INTO `foodtemperature` VALUES ('159', '2', '5', '2018-06-21 05:18:40');
INSERT INTO `foodtemperature` VALUES ('160', '2', '2', '2018-06-21 05:18:50');
INSERT INTO `foodtemperature` VALUES ('161', '2', '9', '2018-06-21 05:19:00');
INSERT INTO `foodtemperature` VALUES ('162', '2', '4', '2018-06-21 05:19:10');
INSERT INTO `foodtemperature` VALUES ('163', '2', '7', '2018-06-21 05:19:20');
INSERT INTO `foodtemperature` VALUES ('164', '2', '3', '2018-06-21 05:19:30');
INSERT INTO `foodtemperature` VALUES ('165', '2', '5', '2018-06-21 05:19:40');
INSERT INTO `foodtemperature` VALUES ('166', '2', '7', '2018-06-21 05:19:50');
INSERT INTO `foodtemperature` VALUES ('167', '2', '6', '2018-06-21 05:20:00');
INSERT INTO `foodtemperature` VALUES ('168', '2', '3', '2018-06-21 05:20:10');
INSERT INTO `foodtemperature` VALUES ('169', '2', '8', '2018-06-21 05:20:20');
INSERT INTO `foodtemperature` VALUES ('170', '2', '8', '2018-06-21 05:20:30');
INSERT INTO `foodtemperature` VALUES ('171', '2', '5', '2018-06-21 05:20:40');
INSERT INTO `foodtemperature` VALUES ('172', '2', '5', '2018-06-21 05:20:50');
INSERT INTO `foodtemperature` VALUES ('173', '2', '7', '2018-06-21 05:21:00');
INSERT INTO `foodtemperature` VALUES ('174', '2', '3', '2018-06-21 05:21:10');
INSERT INTO `foodtemperature` VALUES ('175', '2', '4', '2018-06-21 05:21:20');
INSERT INTO `foodtemperature` VALUES ('176', '2', '9', '2018-06-21 05:21:30');
INSERT INTO `foodtemperature` VALUES ('177', '2', '9', '2018-06-21 05:21:40');
INSERT INTO `foodtemperature` VALUES ('178', '2', '3', '2018-06-21 05:21:50');
INSERT INTO `foodtemperature` VALUES ('179', '2', '2', '2018-06-21 05:22:00');
INSERT INTO `foodtemperature` VALUES ('180', '2', '7', '2018-06-21 05:22:10');
INSERT INTO `foodtemperature` VALUES ('181', '2', '3', '2018-06-21 05:22:20');
INSERT INTO `foodtemperature` VALUES ('182', '2', '4', '2018-06-21 05:22:30');
INSERT INTO `foodtemperature` VALUES ('183', '2', '9', '2018-06-21 05:22:40');
INSERT INTO `foodtemperature` VALUES ('184', '2', '5', '2018-06-21 05:22:50');
INSERT INTO `foodtemperature` VALUES ('185', '2', '8', '2018-06-21 05:23:00');
INSERT INTO `foodtemperature` VALUES ('186', '2', '7', '2018-06-21 05:23:10');
INSERT INTO `foodtemperature` VALUES ('187', '2', '4', '2018-06-21 05:23:20');
INSERT INTO `foodtemperature` VALUES ('188', '2', '2', '2018-06-21 05:23:30');
INSERT INTO `foodtemperature` VALUES ('189', '2', '6', '2018-06-21 05:23:40');
INSERT INTO `foodtemperature` VALUES ('190', '2', '7', '2018-06-21 05:23:50');
INSERT INTO `foodtemperature` VALUES ('191', '2', '4', '2018-06-21 05:24:00');
INSERT INTO `foodtemperature` VALUES ('192', '2', '3', '2018-06-21 05:24:10');
INSERT INTO `foodtemperature` VALUES ('193', '2', '2', '2018-06-21 05:24:20');
INSERT INTO `foodtemperature` VALUES ('194', '2', '2', '2018-06-21 05:24:30');
INSERT INTO `foodtemperature` VALUES ('195', '2', '6', '2018-06-21 05:24:40');
INSERT INTO `foodtemperature` VALUES ('196', '2', '5', '2018-06-21 05:24:50');
INSERT INTO `foodtemperature` VALUES ('197', '2', '6', '2018-06-21 05:25:00');
INSERT INTO `foodtemperature` VALUES ('198', '2', '4', '2018-06-21 05:25:10');
INSERT INTO `foodtemperature` VALUES ('199', '2', '4', '2018-06-21 05:25:20');
INSERT INTO `foodtemperature` VALUES ('200', '2', '5', '2018-06-21 05:25:30');
INSERT INTO `foodtemperature` VALUES ('201', '2', '8', '2018-06-21 05:25:40');
INSERT INTO `foodtemperature` VALUES ('202', '2', '8', '2018-06-21 05:25:50');
INSERT INTO `foodtemperature` VALUES ('203', '2', '4', '2018-06-21 05:26:00');
INSERT INTO `foodtemperature` VALUES ('204', '2', '8', '2018-06-21 05:26:10');
INSERT INTO `foodtemperature` VALUES ('205', '2', '3', '2018-06-21 05:26:20');
INSERT INTO `foodtemperature` VALUES ('206', '2', '2', '2018-06-21 05:26:30');
INSERT INTO `foodtemperature` VALUES ('207', '2', '3', '2018-06-21 05:26:40');
INSERT INTO `foodtemperature` VALUES ('208', '2', '8', '2018-06-21 05:26:50');
INSERT INTO `foodtemperature` VALUES ('209', '2', '8', '2018-06-21 05:27:00');
INSERT INTO `foodtemperature` VALUES ('210', '2', '2', '2018-06-21 05:27:10');
INSERT INTO `foodtemperature` VALUES ('211', '2', '8', '2018-06-21 05:27:20');
INSERT INTO `foodtemperature` VALUES ('212', '2', '8', '2018-06-21 05:27:30');
INSERT INTO `foodtemperature` VALUES ('213', '2', '9', '2018-06-21 05:27:40');
INSERT INTO `foodtemperature` VALUES ('214', '2', '4', '2018-06-21 05:27:50');
INSERT INTO `foodtemperature` VALUES ('215', '2', '9', '2018-06-21 05:28:00');
INSERT INTO `foodtemperature` VALUES ('216', '2', '2', '2018-06-21 05:28:10');
INSERT INTO `foodtemperature` VALUES ('217', '2', '8', '2018-06-21 05:28:20');
INSERT INTO `foodtemperature` VALUES ('218', '2', '9', '2018-06-21 05:28:30');
INSERT INTO `foodtemperature` VALUES ('219', '2', '7', '2018-06-21 05:28:40');
INSERT INTO `foodtemperature` VALUES ('220', '2', '6', '2018-06-21 05:28:50');
INSERT INTO `foodtemperature` VALUES ('221', '2', '3', '2018-06-21 05:29:00');
INSERT INTO `foodtemperature` VALUES ('222', '2', '9', '2018-06-21 05:29:10');
INSERT INTO `foodtemperature` VALUES ('223', '2', '2', '2018-06-21 05:29:20');
INSERT INTO `foodtemperature` VALUES ('224', '2', '2', '2018-06-21 05:29:30');
INSERT INTO `foodtemperature` VALUES ('225', '2', '8', '2018-06-21 05:29:40');
INSERT INTO `foodtemperature` VALUES ('226', '2', '2', '2018-06-21 05:29:50');
INSERT INTO `foodtemperature` VALUES ('227', '2', '8', '2018-06-21 05:30:00');
INSERT INTO `foodtemperature` VALUES ('228', '2', '9', '2018-06-21 05:30:10');
INSERT INTO `foodtemperature` VALUES ('229', '2', '3', '2018-06-21 05:30:20');
INSERT INTO `foodtemperature` VALUES ('230', '2', '4', '2018-06-21 05:30:30');
INSERT INTO `foodtemperature` VALUES ('231', '2', '9', '2018-06-21 05:30:40');
INSERT INTO `foodtemperature` VALUES ('232', '2', '6', '2018-06-21 05:30:50');
INSERT INTO `foodtemperature` VALUES ('233', '2', '3', '2018-06-21 05:31:00');
INSERT INTO `foodtemperature` VALUES ('234', '2', '8', '2018-06-21 05:31:10');
INSERT INTO `foodtemperature` VALUES ('235', '2', '9', '2018-06-21 05:31:20');
INSERT INTO `foodtemperature` VALUES ('236', '2', '2', '2018-06-21 05:31:30');
INSERT INTO `foodtemperature` VALUES ('237', '2', '9', '2018-06-21 05:31:40');
INSERT INTO `foodtemperature` VALUES ('238', '2', '4', '2018-06-21 05:31:50');
INSERT INTO `foodtemperature` VALUES ('239', '2', '4', '2018-06-21 05:32:00');
INSERT INTO `foodtemperature` VALUES ('240', '2', '9', '2018-06-21 05:32:10');
INSERT INTO `foodtemperature` VALUES ('241', '2', '9', '2018-06-21 05:32:20');
INSERT INTO `foodtemperature` VALUES ('242', '2', '4', '2018-06-21 05:32:30');
INSERT INTO `foodtemperature` VALUES ('243', '2', '7', '2018-06-21 05:32:40');
INSERT INTO `foodtemperature` VALUES ('244', '2', '4', '2018-06-21 05:32:50');
INSERT INTO `foodtemperature` VALUES ('245', '2', '7', '2018-06-21 05:33:00');
INSERT INTO `foodtemperature` VALUES ('246', '2', '2', '2018-06-21 05:33:10');
INSERT INTO `foodtemperature` VALUES ('247', '2', '2', '2018-06-21 05:33:20');
INSERT INTO `foodtemperature` VALUES ('248', '2', '4', '2018-06-21 05:33:30');
INSERT INTO `foodtemperature` VALUES ('249', '2', '9', '2018-06-21 05:33:40');
INSERT INTO `foodtemperature` VALUES ('250', '2', '2', '2018-06-21 05:33:50');
INSERT INTO `foodtemperature` VALUES ('251', '2', '6', '2018-06-21 05:34:00');
INSERT INTO `foodtemperature` VALUES ('252', '2', '8', '2018-06-21 05:34:10');
INSERT INTO `foodtemperature` VALUES ('253', '2', '7', '2018-06-21 05:34:20');
INSERT INTO `foodtemperature` VALUES ('254', '2', '6', '2018-06-21 05:34:30');
INSERT INTO `foodtemperature` VALUES ('255', '2', '5', '2018-06-21 05:34:40');
INSERT INTO `foodtemperature` VALUES ('256', '2', '6', '2018-06-21 05:34:50');
INSERT INTO `foodtemperature` VALUES ('257', '2', '2', '2018-06-21 05:35:00');
INSERT INTO `foodtemperature` VALUES ('258', '2', '5', '2018-06-21 05:35:10');
INSERT INTO `foodtemperature` VALUES ('259', '2', '8', '2018-06-21 05:35:30');
INSERT INTO `foodtemperature` VALUES ('260', '2', '9', '2018-06-21 05:35:40');
INSERT INTO `foodtemperature` VALUES ('261', '2', '7', '2018-06-21 05:35:50');
INSERT INTO `foodtemperature` VALUES ('262', '2', '5', '2018-06-21 05:36:00');
INSERT INTO `foodtemperature` VALUES ('263', '2', '3', '2018-06-21 05:36:10');
INSERT INTO `foodtemperature` VALUES ('264', '2', '2', '2018-06-21 05:36:20');
INSERT INTO `foodtemperature` VALUES ('265', '2', '8', '2018-06-21 05:36:30');
INSERT INTO `foodtemperature` VALUES ('266', '2', '7', '2018-06-21 05:36:40');
INSERT INTO `foodtemperature` VALUES ('267', '2', '8', '2018-06-21 05:36:50');
INSERT INTO `foodtemperature` VALUES ('268', '2', '8', '2018-06-21 05:37:00');
INSERT INTO `foodtemperature` VALUES ('269', '2', '3', '2018-06-21 05:37:10');
INSERT INTO `foodtemperature` VALUES ('270', '2', '2', '2018-06-21 05:37:20');
INSERT INTO `foodtemperature` VALUES ('271', '2', '6', '2018-06-21 05:37:30');
INSERT INTO `foodtemperature` VALUES ('272', '2', '3', '2018-06-21 05:37:40');
INSERT INTO `foodtemperature` VALUES ('273', '2', '6', '2018-06-21 05:37:50');
INSERT INTO `foodtemperature` VALUES ('274', '2', '6', '2018-06-21 05:38:00');
INSERT INTO `foodtemperature` VALUES ('275', '2', '7', '2018-06-21 05:38:10');
INSERT INTO `foodtemperature` VALUES ('276', '2', '4', '2018-06-21 05:38:20');
INSERT INTO `foodtemperature` VALUES ('277', '2', '6', '2018-06-21 05:38:30');
INSERT INTO `foodtemperature` VALUES ('278', '2', '5', '2018-06-21 05:38:50');
INSERT INTO `foodtemperature` VALUES ('279', '2', '6', '2018-06-21 05:39:00');
INSERT INTO `foodtemperature` VALUES ('280', '2', '7', '2018-06-21 05:39:10');
INSERT INTO `foodtemperature` VALUES ('281', '2', '5', '2018-06-21 05:39:20');
INSERT INTO `foodtemperature` VALUES ('282', '2', '9', '2018-06-21 05:39:30');
INSERT INTO `foodtemperature` VALUES ('283', '2', '9', '2018-06-21 05:39:40');
INSERT INTO `foodtemperature` VALUES ('284', '2', '8', '2018-06-21 05:39:50');
INSERT INTO `foodtemperature` VALUES ('285', '2', '3', '2018-06-21 05:40:00');
INSERT INTO `foodtemperature` VALUES ('286', '2', '8', '2018-06-21 05:40:10');
INSERT INTO `foodtemperature` VALUES ('287', '2', '5', '2018-06-21 05:40:20');
INSERT INTO `foodtemperature` VALUES ('288', '2', '7', '2018-06-21 05:40:30');
INSERT INTO `foodtemperature` VALUES ('289', '2', '4', '2018-06-21 05:40:50');
INSERT INTO `foodtemperature` VALUES ('290', '2', '7', '2018-06-21 05:41:00');
INSERT INTO `foodtemperature` VALUES ('291', '2', '6', '2018-06-21 05:41:10');
INSERT INTO `foodtemperature` VALUES ('292', '2', '2', '2018-06-21 05:41:20');
INSERT INTO `foodtemperature` VALUES ('293', '2', '4', '2018-06-21 05:41:30');
INSERT INTO `foodtemperature` VALUES ('294', '2', '6', '2018-06-21 05:41:40');
INSERT INTO `foodtemperature` VALUES ('295', '2', '3', '2018-06-21 05:41:50');
INSERT INTO `foodtemperature` VALUES ('296', '2', '5', '2018-06-21 05:42:00');
INSERT INTO `foodtemperature` VALUES ('297', '2', '2', '2018-06-21 05:42:20');
INSERT INTO `foodtemperature` VALUES ('298', '2', '8', '2018-06-21 05:42:30');
INSERT INTO `foodtemperature` VALUES ('299', '2', '4', '2018-06-21 05:42:40');
INSERT INTO `foodtemperature` VALUES ('300', '2', '6', '2018-06-21 05:42:50');
INSERT INTO `foodtemperature` VALUES ('301', '2', '2', '2018-06-21 05:43:00');
INSERT INTO `foodtemperature` VALUES ('302', '2', '8', '2018-06-21 05:43:10');
INSERT INTO `foodtemperature` VALUES ('303', '2', '3', '2018-06-21 05:43:20');
INSERT INTO `foodtemperature` VALUES ('304', '2', '7', '2018-06-21 05:43:30');
INSERT INTO `foodtemperature` VALUES ('305', '2', '2', '2018-06-21 05:43:40');
INSERT INTO `foodtemperature` VALUES ('306', '2', '8', '2018-06-21 05:43:50');
INSERT INTO `foodtemperature` VALUES ('307', '2', '5', '2018-06-21 05:44:10');
INSERT INTO `foodtemperature` VALUES ('308', '2', '2', '2018-06-21 05:44:20');
INSERT INTO `foodtemperature` VALUES ('309', '2', '4', '2018-06-21 05:44:30');
INSERT INTO `foodtemperature` VALUES ('310', '2', '2', '2018-06-21 05:44:40');
INSERT INTO `foodtemperature` VALUES ('311', '2', '8', '2018-06-21 05:44:50');
INSERT INTO `foodtemperature` VALUES ('312', '2', '8', '2018-06-21 05:45:00');
INSERT INTO `foodtemperature` VALUES ('313', '2', '8', '2018-06-21 05:45:10');
INSERT INTO `foodtemperature` VALUES ('314', '2', '8', '2018-06-21 05:45:20');
INSERT INTO `foodtemperature` VALUES ('315', '2', '4', '2018-06-21 05:45:30');
INSERT INTO `foodtemperature` VALUES ('316', '2', '6', '2018-06-21 05:45:40');
INSERT INTO `foodtemperature` VALUES ('317', '2', '5', '2018-06-21 05:45:50');
INSERT INTO `foodtemperature` VALUES ('318', '2', '4', '2018-06-21 05:46:00');
INSERT INTO `foodtemperature` VALUES ('319', '2', '9', '2018-06-21 05:46:10');
INSERT INTO `foodtemperature` VALUES ('320', '2', '8', '2018-06-21 05:46:20');
INSERT INTO `foodtemperature` VALUES ('321', '2', '9', '2018-06-21 05:46:30');
INSERT INTO `foodtemperature` VALUES ('322', '2', '3', '2018-06-21 05:46:40');
INSERT INTO `foodtemperature` VALUES ('323', '2', '3', '2018-06-21 05:46:50');
INSERT INTO `foodtemperature` VALUES ('324', '2', '8', '2018-06-21 05:47:00');
INSERT INTO `foodtemperature` VALUES ('325', '2', '3', '2018-06-21 05:47:10');
INSERT INTO `foodtemperature` VALUES ('326', '2', '4', '2018-06-21 05:47:20');
INSERT INTO `foodtemperature` VALUES ('327', '2', '3', '2018-06-21 05:47:30');
INSERT INTO `foodtemperature` VALUES ('328', '2', '5', '2018-06-21 05:47:40');
INSERT INTO `foodtemperature` VALUES ('329', '2', '2', '2018-06-21 05:47:50');
INSERT INTO `foodtemperature` VALUES ('330', '2', '5', '2018-06-21 05:48:00');
INSERT INTO `foodtemperature` VALUES ('331', '2', '4', '2018-06-21 05:48:10');
INSERT INTO `foodtemperature` VALUES ('332', '2', '8', '2018-06-21 05:48:20');
INSERT INTO `foodtemperature` VALUES ('333', '2', '9', '2018-06-21 05:48:30');
INSERT INTO `foodtemperature` VALUES ('334', '2', '2', '2018-06-21 05:48:40');
INSERT INTO `foodtemperature` VALUES ('335', '2', '6', '2018-06-21 05:48:50');
INSERT INTO `foodtemperature` VALUES ('336', '2', '9', '2018-06-21 05:49:00');
INSERT INTO `foodtemperature` VALUES ('337', '2', '5', '2018-06-21 05:49:10');
INSERT INTO `foodtemperature` VALUES ('338', '2', '4', '2018-06-21 05:49:20');
INSERT INTO `foodtemperature` VALUES ('339', '2', '2', '2018-06-21 05:49:30');
INSERT INTO `foodtemperature` VALUES ('340', '2', '5', '2018-06-21 05:49:40');
INSERT INTO `foodtemperature` VALUES ('341', '2', '8', '2018-06-21 05:50:00');
INSERT INTO `foodtemperature` VALUES ('342', '2', '9', '2018-06-21 05:50:10');
INSERT INTO `foodtemperature` VALUES ('343', '2', '6', '2018-06-21 05:50:20');
INSERT INTO `foodtemperature` VALUES ('344', '2', '3', '2018-06-21 05:50:30');
INSERT INTO `foodtemperature` VALUES ('345', '2', '2', '2018-06-21 05:50:40');
INSERT INTO `foodtemperature` VALUES ('346', '2', '4', '2018-06-21 05:50:50');
INSERT INTO `foodtemperature` VALUES ('347', '2', '5', '2018-06-21 05:51:00');
INSERT INTO `foodtemperature` VALUES ('348', '2', '7', '2018-06-21 05:51:10');
INSERT INTO `foodtemperature` VALUES ('349', '2', '2', '2018-06-21 05:51:20');
INSERT INTO `foodtemperature` VALUES ('350', '2', '5', '2018-06-21 05:51:30');
INSERT INTO `foodtemperature` VALUES ('351', '2', '8', '2018-06-21 05:51:40');
INSERT INTO `foodtemperature` VALUES ('352', '2', '8', '2018-06-21 05:51:50');
INSERT INTO `foodtemperature` VALUES ('353', '2', '9', '2018-06-21 05:52:00');
INSERT INTO `foodtemperature` VALUES ('354', '2', '6', '2018-06-21 05:52:10');
INSERT INTO `foodtemperature` VALUES ('355', '2', '2', '2018-06-21 05:52:30');
INSERT INTO `foodtemperature` VALUES ('356', '2', '2', '2018-06-21 05:52:40');
INSERT INTO `foodtemperature` VALUES ('357', '2', '7', '2018-06-21 05:52:50');
INSERT INTO `foodtemperature` VALUES ('358', '2', '4', '2018-06-21 05:53:00');
INSERT INTO `foodtemperature` VALUES ('359', '2', '2', '2018-06-21 05:53:10');
INSERT INTO `foodtemperature` VALUES ('360', '2', '4', '2018-06-21 05:53:20');
INSERT INTO `foodtemperature` VALUES ('361', '2', '7', '2018-06-21 05:53:30');
INSERT INTO `foodtemperature` VALUES ('362', '2', '9', '2018-06-21 05:53:40');
INSERT INTO `foodtemperature` VALUES ('363', '2', '7', '2018-06-21 05:54:00');
INSERT INTO `foodtemperature` VALUES ('364', '2', '7', '2018-06-21 05:54:10');
INSERT INTO `foodtemperature` VALUES ('365', '2', '4', '2018-06-21 05:54:20');
INSERT INTO `foodtemperature` VALUES ('366', '2', '4', '2018-06-21 05:54:30');
INSERT INTO `foodtemperature` VALUES ('367', '2', '7', '2018-06-21 05:54:40');
INSERT INTO `foodtemperature` VALUES ('368', '2', '4', '2018-06-21 05:54:50');
INSERT INTO `foodtemperature` VALUES ('369', '2', '3', '2018-06-21 05:55:00');
INSERT INTO `foodtemperature` VALUES ('370', '2', '2', '2018-06-21 05:55:10');
INSERT INTO `foodtemperature` VALUES ('371', '2', '4', '2018-06-21 05:56:10');
INSERT INTO `foodtemperature` VALUES ('372', '2', '4', '2018-06-21 05:56:20');
INSERT INTO `foodtemperature` VALUES ('373', '2', '8', '2018-06-21 05:56:30');
INSERT INTO `foodtemperature` VALUES ('374', '2', '2', '2018-06-21 05:56:40');
INSERT INTO `foodtemperature` VALUES ('375', '2', '3', '2018-06-21 05:56:50');
INSERT INTO `foodtemperature` VALUES ('376', '2', '4', '2018-06-21 05:57:00');
INSERT INTO `foodtemperature` VALUES ('377', '2', '9', '2018-06-21 05:57:10');
INSERT INTO `foodtemperature` VALUES ('378', '2', '2', '2018-06-21 05:57:20');
INSERT INTO `foodtemperature` VALUES ('379', '2', '4', '2018-06-21 05:57:30');
INSERT INTO `foodtemperature` VALUES ('380', '2', '4', '2018-06-21 05:57:40');
INSERT INTO `foodtemperature` VALUES ('381', '2', '6', '2018-06-21 05:57:50');
INSERT INTO `foodtemperature` VALUES ('382', '2', '5', '2018-06-21 05:58:10');
INSERT INTO `foodtemperature` VALUES ('383', '2', '8', '2018-06-21 05:58:20');
INSERT INTO `foodtemperature` VALUES ('384', '2', '9', '2018-06-21 05:58:30');
INSERT INTO `foodtemperature` VALUES ('385', '2', '8', '2018-06-21 05:58:40');
INSERT INTO `foodtemperature` VALUES ('386', '2', '8', '2018-06-21 05:58:50');
INSERT INTO `foodtemperature` VALUES ('387', '2', '7', '2018-06-21 05:59:00');
INSERT INTO `foodtemperature` VALUES ('388', '2', '7', '2018-06-21 05:59:10');
INSERT INTO `foodtemperature` VALUES ('389', '2', '7', '2018-06-21 05:59:20');
INSERT INTO `foodtemperature` VALUES ('390', '2', '5', '2018-06-21 05:59:30');
INSERT INTO `foodtemperature` VALUES ('391', '2', '7', '2018-06-21 05:59:40');
INSERT INTO `foodtemperature` VALUES ('392', '2', '9', '2018-06-21 06:00:00');
INSERT INTO `foodtemperature` VALUES ('393', '2', '5', '2018-06-21 06:00:10');
INSERT INTO `foodtemperature` VALUES ('394', '2', '2', '2018-06-21 06:00:20');
INSERT INTO `foodtemperature` VALUES ('395', '2', '3', '2018-06-21 06:00:30');
INSERT INTO `foodtemperature` VALUES ('396', '2', '8', '2018-06-21 06:00:40');
INSERT INTO `foodtemperature` VALUES ('397', '2', '7', '2018-06-21 06:00:50');
INSERT INTO `foodtemperature` VALUES ('398', '2', '2', '2018-06-21 06:01:00');
INSERT INTO `foodtemperature` VALUES ('399', '2', '2', '2018-06-21 06:01:10');
INSERT INTO `foodtemperature` VALUES ('400', '2', '6', '2018-06-21 06:01:20');
INSERT INTO `foodtemperature` VALUES ('401', '2', '3', '2018-06-21 06:01:30');
INSERT INTO `foodtemperature` VALUES ('402', '2', '7', '2018-06-21 06:01:40');
INSERT INTO `foodtemperature` VALUES ('403', '2', '6', '2018-06-21 06:01:50');
INSERT INTO `foodtemperature` VALUES ('404', '2', '3', '2018-06-21 06:02:00');
INSERT INTO `foodtemperature` VALUES ('405', '2', '7', '2018-06-21 06:02:10');
INSERT INTO `foodtemperature` VALUES ('406', '2', '2', '2018-06-21 06:02:20');
INSERT INTO `foodtemperature` VALUES ('407', '2', '8', '2018-06-21 06:02:30');
INSERT INTO `foodtemperature` VALUES ('408', '2', '8', '2018-06-21 06:02:40');
INSERT INTO `foodtemperature` VALUES ('409', '2', '4', '2018-06-21 06:02:50');
INSERT INTO `foodtemperature` VALUES ('410', '2', '7', '2018-06-21 06:03:00');
INSERT INTO `foodtemperature` VALUES ('411', '2', '3', '2018-06-21 06:03:10');
INSERT INTO `foodtemperature` VALUES ('412', '2', '6', '2018-06-21 06:03:20');
INSERT INTO `foodtemperature` VALUES ('413', '2', '6', '2018-06-21 06:03:30');
INSERT INTO `foodtemperature` VALUES ('414', '2', '2', '2018-06-21 06:03:40');
INSERT INTO `foodtemperature` VALUES ('415', '2', '3', '2018-06-21 06:03:50');
INSERT INTO `foodtemperature` VALUES ('416', '2', '3', '2018-06-21 06:04:00');
INSERT INTO `foodtemperature` VALUES ('417', '2', '8', '2018-06-21 06:04:10');
INSERT INTO `foodtemperature` VALUES ('418', '2', '4', '2018-06-21 06:04:20');
INSERT INTO `foodtemperature` VALUES ('419', '2', '6', '2018-06-21 06:06:10');
INSERT INTO `foodtemperature` VALUES ('420', '2', '7', '2018-06-21 06:06:20');
INSERT INTO `foodtemperature` VALUES ('421', '2', '9', '2018-06-21 06:06:30');
INSERT INTO `foodtemperature` VALUES ('422', '2', '5', '2018-06-21 06:06:40');
INSERT INTO `foodtemperature` VALUES ('423', '2', '7', '2018-06-21 06:06:50');
INSERT INTO `foodtemperature` VALUES ('424', '2', '7', '2018-06-21 06:07:00');
INSERT INTO `foodtemperature` VALUES ('425', '2', '3', '2018-06-21 06:07:10');
INSERT INTO `foodtemperature` VALUES ('426', '2', '8', '2018-06-21 06:07:20');
INSERT INTO `foodtemperature` VALUES ('427', '2', '5', '2018-06-21 06:07:30');
INSERT INTO `foodtemperature` VALUES ('428', '2', '7', '2018-06-21 06:07:40');
INSERT INTO `foodtemperature` VALUES ('429', '2', '8', '2018-06-21 06:07:50');
INSERT INTO `foodtemperature` VALUES ('430', '2', '4', '2018-06-21 06:08:00');
INSERT INTO `foodtemperature` VALUES ('431', '2', '4', '2018-06-21 06:08:10');
INSERT INTO `foodtemperature` VALUES ('432', '2', '9', '2018-06-21 06:08:20');
INSERT INTO `foodtemperature` VALUES ('433', '2', '3', '2018-06-21 06:08:30');
INSERT INTO `foodtemperature` VALUES ('434', '2', '7', '2018-06-21 06:08:40');
INSERT INTO `foodtemperature` VALUES ('435', '2', '6', '2018-06-21 06:08:50');
INSERT INTO `foodtemperature` VALUES ('436', '2', '4', '2018-06-21 06:09:10');
INSERT INTO `foodtemperature` VALUES ('437', '2', '9', '2018-06-21 06:09:20');
INSERT INTO `foodtemperature` VALUES ('438', '2', '3', '2018-06-21 06:09:30');
INSERT INTO `foodtemperature` VALUES ('439', '2', '3', '2018-06-21 06:09:40');
INSERT INTO `foodtemperature` VALUES ('440', '2', '6', '2018-06-21 06:09:50');
INSERT INTO `foodtemperature` VALUES ('441', '2', '7', '2018-06-21 06:10:00');
INSERT INTO `foodtemperature` VALUES ('442', '2', '5', '2018-06-21 06:10:10');
INSERT INTO `foodtemperature` VALUES ('443', '2', '6', '2018-06-21 06:10:20');
INSERT INTO `foodtemperature` VALUES ('444', '2', '5', '2018-06-21 06:10:30');
INSERT INTO `foodtemperature` VALUES ('445', '2', '5', '2018-06-21 06:10:40');
INSERT INTO `foodtemperature` VALUES ('446', '2', '7', '2018-06-21 06:10:50');
INSERT INTO `foodtemperature` VALUES ('447', '2', '5', '2018-06-21 06:11:00');
INSERT INTO `foodtemperature` VALUES ('448', '2', '8', '2018-06-21 06:11:10');
INSERT INTO `foodtemperature` VALUES ('449', '2', '4', '2018-06-21 06:11:20');
INSERT INTO `foodtemperature` VALUES ('450', '2', '4', '2018-06-21 06:11:30');
INSERT INTO `foodtemperature` VALUES ('451', '2', '8', '2018-06-21 06:11:40');
INSERT INTO `foodtemperature` VALUES ('452', '2', '8', '2018-06-21 06:11:50');
INSERT INTO `foodtemperature` VALUES ('453', '2', '4', '2018-06-21 06:12:00');
INSERT INTO `foodtemperature` VALUES ('454', '2', '9', '2018-06-21 06:12:10');
INSERT INTO `foodtemperature` VALUES ('455', '2', '3', '2018-06-21 06:12:20');
INSERT INTO `foodtemperature` VALUES ('456', '2', '8', '2018-06-21 06:12:30');
INSERT INTO `foodtemperature` VALUES ('457', '2', '8', '2018-06-21 06:12:40');
INSERT INTO `foodtemperature` VALUES ('458', '2', '6', '2018-06-21 06:12:50');
INSERT INTO `foodtemperature` VALUES ('459', '2', '2', '2018-06-21 06:13:00');
INSERT INTO `foodtemperature` VALUES ('460', '2', '6', '2018-06-21 06:13:10');
INSERT INTO `foodtemperature` VALUES ('461', '2', '4', '2018-06-21 06:13:20');
INSERT INTO `foodtemperature` VALUES ('462', '2', '2', '2018-06-21 06:13:30');
INSERT INTO `foodtemperature` VALUES ('463', '2', '7', '2018-06-21 06:13:40');
INSERT INTO `foodtemperature` VALUES ('464', '2', '8', '2018-06-21 06:13:50');
INSERT INTO `foodtemperature` VALUES ('465', '2', '4', '2018-06-21 06:14:00');
INSERT INTO `foodtemperature` VALUES ('466', '2', '2', '2018-06-21 06:14:10');
INSERT INTO `foodtemperature` VALUES ('467', '2', '9', '2018-06-21 06:14:20');
INSERT INTO `foodtemperature` VALUES ('468', '2', '3', '2018-06-21 06:14:30');
INSERT INTO `foodtemperature` VALUES ('469', '2', '8', '2018-06-21 06:14:40');
INSERT INTO `foodtemperature` VALUES ('470', '2', '8', '2018-06-21 06:14:50');
INSERT INTO `foodtemperature` VALUES ('471', '2', '5', '2018-06-21 06:15:00');
INSERT INTO `foodtemperature` VALUES ('472', '2', '7', '2018-06-21 06:15:10');
INSERT INTO `foodtemperature` VALUES ('473', '2', '4', '2018-06-21 06:15:20');
INSERT INTO `foodtemperature` VALUES ('474', '2', '3', '2018-06-21 06:15:30');
INSERT INTO `foodtemperature` VALUES ('475', '2', '7', '2018-06-21 06:15:40');
INSERT INTO `foodtemperature` VALUES ('476', '2', '9', '2018-06-21 06:15:50');
INSERT INTO `foodtemperature` VALUES ('477', '2', '9', '2018-06-21 06:16:00');
INSERT INTO `foodtemperature` VALUES ('478', '2', '8', '2018-06-21 06:16:10');
INSERT INTO `foodtemperature` VALUES ('479', '2', '5', '2018-06-21 06:16:20');
INSERT INTO `foodtemperature` VALUES ('480', '2', '6', '2018-06-21 06:16:30');
INSERT INTO `foodtemperature` VALUES ('481', '2', '3', '2018-06-21 06:16:40');
INSERT INTO `foodtemperature` VALUES ('482', '2', '9', '2018-06-21 06:16:50');
INSERT INTO `foodtemperature` VALUES ('483', '2', '4', '2018-06-21 06:17:00');
INSERT INTO `foodtemperature` VALUES ('484', '2', '2', '2018-06-21 06:17:10');
INSERT INTO `foodtemperature` VALUES ('485', '2', '9', '2018-06-21 06:17:20');
INSERT INTO `foodtemperature` VALUES ('486', '2', '3', '2018-06-21 06:17:30');
INSERT INTO `foodtemperature` VALUES ('487', '2', '2', '2018-06-21 06:17:40');
INSERT INTO `foodtemperature` VALUES ('488', '2', '4', '2018-06-21 06:17:50');
INSERT INTO `foodtemperature` VALUES ('489', '2', '7', '2018-06-21 06:18:00');
INSERT INTO `foodtemperature` VALUES ('490', '2', '6', '2018-06-21 06:18:10');
INSERT INTO `foodtemperature` VALUES ('491', '2', '8', '2018-06-21 06:18:20');
INSERT INTO `foodtemperature` VALUES ('492', '2', '6', '2018-06-21 06:18:30');
INSERT INTO `foodtemperature` VALUES ('493', '2', '5', '2018-06-21 06:18:40');
INSERT INTO `foodtemperature` VALUES ('494', '2', '2', '2018-06-21 06:18:50');
INSERT INTO `foodtemperature` VALUES ('495', '2', '4', '2018-06-21 06:19:00');
INSERT INTO `foodtemperature` VALUES ('496', '2', '2', '2018-06-21 06:19:10');
INSERT INTO `foodtemperature` VALUES ('497', '2', '5', '2018-06-21 06:19:20');
INSERT INTO `foodtemperature` VALUES ('498', '2', '5', '2018-06-21 06:19:30');
INSERT INTO `foodtemperature` VALUES ('499', '2', '2', '2018-06-21 06:19:40');
INSERT INTO `foodtemperature` VALUES ('500', '2', '5', '2018-06-21 06:19:50');
INSERT INTO `foodtemperature` VALUES ('501', '2', '3', '2018-06-21 06:20:00');
INSERT INTO `foodtemperature` VALUES ('502', '2', '7', '2018-06-21 06:20:10');
INSERT INTO `foodtemperature` VALUES ('503', '2', '4', '2018-06-21 06:20:20');
INSERT INTO `foodtemperature` VALUES ('504', '2', '6', '2018-06-21 06:20:30');
INSERT INTO `foodtemperature` VALUES ('505', '2', '8', '2018-06-21 06:20:40');
INSERT INTO `foodtemperature` VALUES ('506', '2', '6', '2018-06-21 06:20:50');
INSERT INTO `foodtemperature` VALUES ('507', '2', '3', '2018-06-21 06:21:00');
INSERT INTO `foodtemperature` VALUES ('508', '2', '4', '2018-06-21 06:21:10');
INSERT INTO `foodtemperature` VALUES ('509', '2', '7', '2018-06-21 06:21:20');
INSERT INTO `foodtemperature` VALUES ('510', '2', '7', '2018-06-21 06:21:30');
INSERT INTO `foodtemperature` VALUES ('511', '2', '2', '2018-06-21 06:21:40');
INSERT INTO `foodtemperature` VALUES ('512', '2', '2', '2018-06-21 06:21:50');
INSERT INTO `foodtemperature` VALUES ('513', '2', '6', '2018-06-21 06:22:00');
INSERT INTO `foodtemperature` VALUES ('514', '2', '2', '2018-06-21 06:22:10');
INSERT INTO `foodtemperature` VALUES ('515', '2', '4', '2018-06-21 06:22:20');
INSERT INTO `foodtemperature` VALUES ('516', '2', '9', '2018-06-21 06:22:30');
INSERT INTO `foodtemperature` VALUES ('517', '2', '4', '2018-06-21 06:22:40');
INSERT INTO `foodtemperature` VALUES ('518', '2', '5', '2018-06-21 06:22:50');
INSERT INTO `foodtemperature` VALUES ('519', '2', '6', '2018-06-21 06:23:00');
INSERT INTO `foodtemperature` VALUES ('520', '2', '4', '2018-06-21 06:23:10');
INSERT INTO `foodtemperature` VALUES ('521', '2', '6', '2018-06-21 06:23:20');
INSERT INTO `foodtemperature` VALUES ('522', '2', '3', '2018-06-21 06:23:30');
INSERT INTO `foodtemperature` VALUES ('523', '2', '2', '2018-06-21 06:23:40');
INSERT INTO `foodtemperature` VALUES ('524', '2', '7', '2018-06-21 06:23:50');
INSERT INTO `foodtemperature` VALUES ('525', '2', '4', '2018-06-21 06:24:00');
INSERT INTO `foodtemperature` VALUES ('526', '2', '7', '2018-06-21 06:24:10');
INSERT INTO `foodtemperature` VALUES ('527', '2', '7', '2018-06-21 06:24:20');
INSERT INTO `foodtemperature` VALUES ('528', '2', '3', '2018-06-21 06:24:30');
INSERT INTO `foodtemperature` VALUES ('529', '2', '6', '2018-06-21 06:24:40');
INSERT INTO `foodtemperature` VALUES ('530', '2', '4', '2018-06-21 06:24:50');
INSERT INTO `foodtemperature` VALUES ('531', '2', '3', '2018-06-21 06:25:00');
INSERT INTO `foodtemperature` VALUES ('532', '2', '7', '2018-06-21 06:25:10');
INSERT INTO `foodtemperature` VALUES ('533', '2', '7', '2018-06-21 06:25:20');
INSERT INTO `foodtemperature` VALUES ('534', '2', '4', '2018-06-21 06:25:30');
INSERT INTO `foodtemperature` VALUES ('535', '2', '4', '2018-06-21 06:25:40');
INSERT INTO `foodtemperature` VALUES ('536', '2', '6', '2018-06-21 06:25:50');
INSERT INTO `foodtemperature` VALUES ('537', '2', '3', '2018-06-21 06:26:00');
INSERT INTO `foodtemperature` VALUES ('538', '2', '2', '2018-06-21 06:26:10');
INSERT INTO `foodtemperature` VALUES ('539', '2', '9', '2018-06-21 06:26:20');
INSERT INTO `foodtemperature` VALUES ('540', '2', '7', '2018-06-21 06:26:30');
INSERT INTO `foodtemperature` VALUES ('541', '2', '9', '2018-06-21 06:26:40');
INSERT INTO `foodtemperature` VALUES ('542', '2', '8', '2018-06-21 06:26:50');
INSERT INTO `foodtemperature` VALUES ('543', '2', '7', '2018-06-21 06:27:00');
INSERT INTO `foodtemperature` VALUES ('544', '2', '3', '2018-06-21 06:27:10');
INSERT INTO `foodtemperature` VALUES ('545', '2', '4', '2018-06-21 06:27:20');
INSERT INTO `foodtemperature` VALUES ('546', '2', '8', '2018-06-21 06:27:30');
INSERT INTO `foodtemperature` VALUES ('547', '2', '2', '2018-06-21 06:27:40');
INSERT INTO `foodtemperature` VALUES ('548', '2', '3', '2018-06-21 06:27:50');
INSERT INTO `foodtemperature` VALUES ('549', '2', '5', '2018-06-21 06:28:00');
INSERT INTO `foodtemperature` VALUES ('550', '2', '3', '2018-06-21 06:28:10');
INSERT INTO `foodtemperature` VALUES ('551', '2', '4', '2018-06-21 06:28:20');
INSERT INTO `foodtemperature` VALUES ('552', '2', '9', '2018-06-21 06:28:30');
INSERT INTO `foodtemperature` VALUES ('553', '2', '9', '2018-06-21 06:28:40');
INSERT INTO `foodtemperature` VALUES ('554', '2', '8', '2018-06-21 06:28:50');
INSERT INTO `foodtemperature` VALUES ('555', '2', '3', '2018-06-21 06:29:00');
INSERT INTO `foodtemperature` VALUES ('556', '2', '8', '2018-06-21 06:29:10');
INSERT INTO `foodtemperature` VALUES ('557', '2', '5', '2018-06-21 06:29:20');
INSERT INTO `foodtemperature` VALUES ('558', '2', '6', '2018-06-21 06:29:30');
INSERT INTO `foodtemperature` VALUES ('559', '2', '5', '2018-06-21 06:29:40');
INSERT INTO `foodtemperature` VALUES ('560', '2', '8', '2018-06-21 06:29:50');
INSERT INTO `foodtemperature` VALUES ('561', '2', '4', '2018-06-21 06:30:00');
INSERT INTO `foodtemperature` VALUES ('562', '2', '5', '2018-06-21 06:30:10');
INSERT INTO `foodtemperature` VALUES ('563', '2', '3', '2018-06-21 06:30:20');
INSERT INTO `foodtemperature` VALUES ('564', '2', '3', '2018-06-21 06:30:30');
INSERT INTO `foodtemperature` VALUES ('565', '2', '7', '2018-06-21 06:30:40');
INSERT INTO `foodtemperature` VALUES ('566', '2', '2', '2018-06-21 06:30:50');
INSERT INTO `foodtemperature` VALUES ('567', '2', '2', '2018-06-21 06:31:00');
INSERT INTO `foodtemperature` VALUES ('568', '2', '6', '2018-06-21 06:31:10');
INSERT INTO `foodtemperature` VALUES ('569', '2', '3', '2018-06-21 06:31:20');
INSERT INTO `foodtemperature` VALUES ('570', '2', '8', '2018-06-21 06:31:30');
INSERT INTO `foodtemperature` VALUES ('571', '2', '8', '2018-06-21 06:31:40');
INSERT INTO `foodtemperature` VALUES ('572', '2', '9', '2018-06-21 06:31:50');
INSERT INTO `foodtemperature` VALUES ('573', '2', '7', '2018-06-21 06:32:00');
INSERT INTO `foodtemperature` VALUES ('574', '2', '3', '2018-06-21 06:32:10');
INSERT INTO `foodtemperature` VALUES ('575', '2', '6', '2018-06-21 06:32:20');
INSERT INTO `foodtemperature` VALUES ('576', '2', '7', '2018-06-21 06:32:30');
INSERT INTO `foodtemperature` VALUES ('577', '2', '8', '2018-06-21 06:32:40');
INSERT INTO `foodtemperature` VALUES ('578', '2', '8', '2018-06-21 06:32:50');
INSERT INTO `foodtemperature` VALUES ('579', '2', '7', '2018-06-21 06:33:00');
INSERT INTO `foodtemperature` VALUES ('580', '2', '2', '2018-06-21 06:33:10');
INSERT INTO `foodtemperature` VALUES ('581', '2', '9', '2018-06-21 06:33:20');
INSERT INTO `foodtemperature` VALUES ('582', '2', '9', '2018-06-21 06:33:30');
INSERT INTO `foodtemperature` VALUES ('583', '2', '9', '2018-06-21 06:33:40');
INSERT INTO `foodtemperature` VALUES ('584', '2', '5', '2018-06-21 06:33:50');
INSERT INTO `foodtemperature` VALUES ('585', '2', '3', '2018-06-21 06:34:00');
INSERT INTO `foodtemperature` VALUES ('586', '2', '5', '2018-06-21 06:34:10');
INSERT INTO `foodtemperature` VALUES ('587', '2', '8', '2018-06-21 06:34:20');
INSERT INTO `foodtemperature` VALUES ('588', '2', '5', '2018-06-21 06:34:30');
INSERT INTO `foodtemperature` VALUES ('589', '2', '5', '2018-06-21 06:34:40');
INSERT INTO `foodtemperature` VALUES ('590', '2', '7', '2018-06-21 06:34:50');
INSERT INTO `foodtemperature` VALUES ('591', '2', '6', '2018-06-21 06:35:00');
INSERT INTO `foodtemperature` VALUES ('592', '2', '5', '2018-06-21 06:35:10');
INSERT INTO `foodtemperature` VALUES ('593', '2', '9', '2018-06-21 06:35:20');
INSERT INTO `foodtemperature` VALUES ('594', '2', '4', '2018-06-21 06:35:30');
INSERT INTO `foodtemperature` VALUES ('595', '2', '7', '2018-06-21 06:35:40');
INSERT INTO `foodtemperature` VALUES ('596', '2', '2', '2018-06-21 06:35:50');
INSERT INTO `foodtemperature` VALUES ('597', '2', '7', '2018-06-21 06:36:00');
INSERT INTO `foodtemperature` VALUES ('598', '2', '2', '2018-06-21 06:36:10');
INSERT INTO `foodtemperature` VALUES ('599', '2', '9', '2018-06-21 06:36:20');
INSERT INTO `foodtemperature` VALUES ('600', '2', '6', '2018-06-21 06:36:30');
INSERT INTO `foodtemperature` VALUES ('601', '2', '4', '2018-06-21 06:36:40');
INSERT INTO `foodtemperature` VALUES ('602', '2', '3', '2018-06-21 06:36:50');
INSERT INTO `foodtemperature` VALUES ('603', '2', '3', '2018-06-21 06:37:00');
INSERT INTO `foodtemperature` VALUES ('604', '2', '8', '2018-06-21 06:37:10');
INSERT INTO `foodtemperature` VALUES ('605', '2', '4', '2018-06-21 06:37:20');
INSERT INTO `foodtemperature` VALUES ('606', '2', '2', '2018-06-21 06:37:30');
INSERT INTO `foodtemperature` VALUES ('607', '2', '5', '2018-06-21 06:37:40');
INSERT INTO `foodtemperature` VALUES ('608', '2', '9', '2018-06-21 06:37:50');
INSERT INTO `foodtemperature` VALUES ('609', '2', '9', '2018-06-21 06:38:00');
INSERT INTO `foodtemperature` VALUES ('610', '2', '3', '2018-06-21 06:38:10');
INSERT INTO `foodtemperature` VALUES ('611', '2', '5', '2018-06-21 06:38:20');
INSERT INTO `foodtemperature` VALUES ('612', '2', '4', '2018-06-21 06:38:30');
INSERT INTO `foodtemperature` VALUES ('613', '2', '4', '2018-06-21 06:38:40');
INSERT INTO `foodtemperature` VALUES ('614', '2', '5', '2018-06-21 06:38:50');
INSERT INTO `foodtemperature` VALUES ('615', '2', '6', '2018-06-21 06:39:00');
INSERT INTO `foodtemperature` VALUES ('616', '2', '2', '2018-06-21 06:39:10');
INSERT INTO `foodtemperature` VALUES ('617', '2', '8', '2018-06-21 06:39:20');
INSERT INTO `foodtemperature` VALUES ('618', '2', '4', '2018-06-21 06:39:30');
INSERT INTO `foodtemperature` VALUES ('619', '2', '5', '2018-06-21 06:39:40');
INSERT INTO `foodtemperature` VALUES ('620', '2', '8', '2018-06-21 06:39:50');
INSERT INTO `foodtemperature` VALUES ('621', '2', '9', '2018-06-21 06:40:00');
INSERT INTO `foodtemperature` VALUES ('622', '2', '7', '2018-06-21 06:40:10');
INSERT INTO `foodtemperature` VALUES ('623', '2', '6', '2018-06-21 06:40:20');
INSERT INTO `foodtemperature` VALUES ('624', '2', '3', '2018-06-21 06:40:30');
INSERT INTO `foodtemperature` VALUES ('625', '2', '7', '2018-06-21 06:40:40');
INSERT INTO `foodtemperature` VALUES ('626', '2', '2', '2018-06-21 06:40:50');
INSERT INTO `foodtemperature` VALUES ('627', '2', '9', '2018-06-21 06:41:00');
INSERT INTO `foodtemperature` VALUES ('628', '2', '3', '2018-06-21 06:41:10');
INSERT INTO `foodtemperature` VALUES ('629', '2', '2', '2018-06-21 06:41:20');
INSERT INTO `foodtemperature` VALUES ('630', '2', '3', '2018-06-21 06:41:30');
INSERT INTO `foodtemperature` VALUES ('631', '2', '5', '2018-06-21 06:41:40');
INSERT INTO `foodtemperature` VALUES ('632', '2', '4', '2018-06-21 06:41:50');
INSERT INTO `foodtemperature` VALUES ('633', '2', '5', '2018-06-21 06:42:00');
INSERT INTO `foodtemperature` VALUES ('634', '2', '3', '2018-06-21 06:42:10');
INSERT INTO `foodtemperature` VALUES ('635', '2', '9', '2018-06-21 06:42:20');
INSERT INTO `foodtemperature` VALUES ('636', '2', '5', '2018-06-21 06:42:30');
INSERT INTO `foodtemperature` VALUES ('637', '2', '8', '2018-06-21 06:42:40');
INSERT INTO `foodtemperature` VALUES ('638', '2', '9', '2018-06-21 06:42:50');
INSERT INTO `foodtemperature` VALUES ('639', '2', '2', '2018-06-21 06:43:00');
INSERT INTO `foodtemperature` VALUES ('640', '2', '5', '2018-06-21 06:43:10');
INSERT INTO `foodtemperature` VALUES ('641', '2', '6', '2018-06-21 06:43:20');
INSERT INTO `foodtemperature` VALUES ('642', '2', '8', '2018-06-21 06:43:30');
INSERT INTO `foodtemperature` VALUES ('643', '2', '8', '2018-06-21 06:43:40');
INSERT INTO `foodtemperature` VALUES ('644', '2', '2', '2018-06-21 06:43:50');
INSERT INTO `foodtemperature` VALUES ('645', '2', '3', '2018-06-21 06:44:00');
INSERT INTO `foodtemperature` VALUES ('646', '2', '9', '2018-06-21 06:44:10');
INSERT INTO `foodtemperature` VALUES ('647', '2', '2', '2018-06-21 06:44:20');
INSERT INTO `foodtemperature` VALUES ('648', '2', '5', '2018-06-21 06:44:30');
INSERT INTO `foodtemperature` VALUES ('649', '2', '5', '2018-06-21 06:44:40');
INSERT INTO `foodtemperature` VALUES ('650', '2', '8', '2018-06-21 06:44:50');
INSERT INTO `foodtemperature` VALUES ('651', '2', '9', '2018-06-21 06:45:00');
INSERT INTO `foodtemperature` VALUES ('652', '2', '2', '2018-06-21 06:45:10');
INSERT INTO `foodtemperature` VALUES ('653', '2', '2', '2018-06-21 06:45:50');
INSERT INTO `foodtemperature` VALUES ('654', '2', '8', '2018-06-21 06:46:00');
INSERT INTO `foodtemperature` VALUES ('655', '2', '3', '2018-06-21 06:46:10');
INSERT INTO `foodtemperature` VALUES ('656', '2', '3', '2018-06-21 06:46:20');
INSERT INTO `foodtemperature` VALUES ('657', '2', '9', '2018-06-21 06:46:30');
INSERT INTO `foodtemperature` VALUES ('658', '2', '4', '2018-06-21 06:46:40');
INSERT INTO `foodtemperature` VALUES ('659', '2', '7', '2018-06-21 06:46:50');
INSERT INTO `foodtemperature` VALUES ('660', '2', '6', '2018-06-21 06:47:00');
INSERT INTO `foodtemperature` VALUES ('661', '2', '9', '2018-06-21 06:47:10');
INSERT INTO `foodtemperature` VALUES ('662', '2', '6', '2018-06-21 06:47:20');
INSERT INTO `foodtemperature` VALUES ('663', '2', '9', '2018-06-21 06:47:40');
INSERT INTO `foodtemperature` VALUES ('664', '2', '9', '2018-06-21 06:47:50');
INSERT INTO `foodtemperature` VALUES ('665', '2', '5', '2018-06-21 11:16:50');
INSERT INTO `foodtemperature` VALUES ('666', '2', '7', '2018-06-21 11:17:00');
INSERT INTO `foodtemperature` VALUES ('667', '2', '9', '2018-06-21 11:17:10');
INSERT INTO `foodtemperature` VALUES ('668', '2', '6', '2018-06-21 11:17:20');
INSERT INTO `foodtemperature` VALUES ('669', '2', '8', '2018-06-21 11:17:30');
INSERT INTO `foodtemperature` VALUES ('670', '2', '3', '2018-06-21 11:17:40');
INSERT INTO `foodtemperature` VALUES ('671', '2', '9', '2018-06-21 11:17:50');
INSERT INTO `foodtemperature` VALUES ('672', '2', '2', '2018-06-21 11:18:00');
INSERT INTO `foodtemperature` VALUES ('673', '2', '2', '2018-06-21 11:18:10');
INSERT INTO `foodtemperature` VALUES ('674', '2', '3', '2018-06-21 11:18:20');
INSERT INTO `foodtemperature` VALUES ('675', '2', '5', '2018-06-21 11:18:30');
INSERT INTO `foodtemperature` VALUES ('676', '2', '7', '2018-06-21 11:18:40');
INSERT INTO `foodtemperature` VALUES ('677', '2', '7', '2018-06-21 11:18:50');
INSERT INTO `foodtemperature` VALUES ('678', '2', '8', '2018-06-21 11:19:00');
INSERT INTO `foodtemperature` VALUES ('679', '2', '9', '2018-06-21 11:19:10');
INSERT INTO `foodtemperature` VALUES ('680', '2', '2', '2018-06-21 11:19:30');
INSERT INTO `foodtemperature` VALUES ('681', '2', '7', '2018-06-21 11:19:40');
INSERT INTO `foodtemperature` VALUES ('682', '2', '7', '2018-06-21 11:19:50');
INSERT INTO `foodtemperature` VALUES ('683', '2', '9', '2018-06-21 11:20:00');
INSERT INTO `foodtemperature` VALUES ('684', '2', '5', '2018-06-21 11:20:20');
INSERT INTO `foodtemperature` VALUES ('685', '2', '5', '2018-06-21 11:20:40');
INSERT INTO `foodtemperature` VALUES ('686', '2', '4', '2018-06-21 11:21:00');
INSERT INTO `foodtemperature` VALUES ('687', '2', '6', '2018-06-21 11:21:10');
INSERT INTO `foodtemperature` VALUES ('688', '2', '2', '2018-06-21 11:21:20');
INSERT INTO `foodtemperature` VALUES ('689', '2', '5', '2018-06-21 11:21:30');
INSERT INTO `foodtemperature` VALUES ('690', '2', '3', '2018-06-21 11:21:40');
INSERT INTO `foodtemperature` VALUES ('691', '2', '4', '2018-06-21 11:21:50');
INSERT INTO `foodtemperature` VALUES ('692', '2', '6', '2018-06-21 11:22:00');
INSERT INTO `foodtemperature` VALUES ('693', '2', '9', '2018-06-21 11:22:10');
INSERT INTO `foodtemperature` VALUES ('694', '2', '6', '2018-06-21 11:22:20');
INSERT INTO `foodtemperature` VALUES ('695', '2', '4', '2018-06-21 11:22:30');
INSERT INTO `foodtemperature` VALUES ('696', '2', '2', '2018-06-21 11:22:40');
INSERT INTO `foodtemperature` VALUES ('697', '2', '3', '2018-06-21 11:29:50');
INSERT INTO `foodtemperature` VALUES ('698', '2', '2', '2018-06-21 11:30:00');
INSERT INTO `foodtemperature` VALUES ('699', '2', '9', '2018-06-21 11:30:10');
INSERT INTO `foodtemperature` VALUES ('700', '2', '5', '2018-06-21 11:30:20');
INSERT INTO `foodtemperature` VALUES ('701', '2', '3', '2018-06-21 11:30:30');
INSERT INTO `foodtemperature` VALUES ('702', '2', '5', '2018-06-21 11:30:40');
INSERT INTO `foodtemperature` VALUES ('703', '2', '5', '2018-06-21 11:30:50');
INSERT INTO `foodtemperature` VALUES ('704', '2', '9', '2018-06-21 11:31:00');
INSERT INTO `foodtemperature` VALUES ('705', '2', '8', '2018-06-21 11:31:10');
INSERT INTO `foodtemperature` VALUES ('706', '2', '7', '2018-06-21 11:31:20');
INSERT INTO `foodtemperature` VALUES ('707', '2', '7', '2018-06-21 11:31:30');
INSERT INTO `foodtemperature` VALUES ('708', '2', '8', '2018-06-21 11:31:40');
INSERT INTO `foodtemperature` VALUES ('709', '2', '7', '2018-06-21 11:31:50');
INSERT INTO `foodtemperature` VALUES ('710', '2', '8', '2018-06-21 11:32:00');
INSERT INTO `foodtemperature` VALUES ('711', '2', '7', '2018-06-21 11:32:10');
INSERT INTO `foodtemperature` VALUES ('712', '2', '5', '2018-06-21 11:32:20');
INSERT INTO `foodtemperature` VALUES ('713', '2', '2', '2018-06-21 11:32:30');
INSERT INTO `foodtemperature` VALUES ('714', '2', '8', '2018-06-21 11:32:40');
INSERT INTO `foodtemperature` VALUES ('715', '2', '7', '2018-06-21 11:33:00');
INSERT INTO `foodtemperature` VALUES ('716', '2', '2', '2018-06-21 11:33:10');
INSERT INTO `foodtemperature` VALUES ('717', '2', '2', '2018-06-21 11:33:20');
INSERT INTO `foodtemperature` VALUES ('718', '2', '5', '2018-06-21 11:33:30');
INSERT INTO `foodtemperature` VALUES ('719', '2', '9', '2018-06-21 11:33:40');
INSERT INTO `foodtemperature` VALUES ('720', '2', '7', '2018-06-21 11:33:50');

-- ----------------------------
-- Table structure for getoutstorage
-- ----------------------------
DROP TABLE IF EXISTS `getoutstorage`;
CREATE TABLE `getoutstorage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `getoutstorageFoodId` int(10) DEFAULT NULL,
  `getoutstorageAdminId` int(10) DEFAULT NULL,
  `getoutstorageFoodNums` int(10) DEFAULT NULL,
  `getoutstorageFoodTotalPrice` double DEFAULT NULL,
  `getoutstorageType` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of getoutstorage
-- ----------------------------

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `houseId` int(10) DEFAULT NULL,
  `houseShelvesNums` int(10) DEFAULT NULL,
  `houseWareHouseId` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------

-- ----------------------------
-- Table structure for prefoods
-- ----------------------------
DROP TABLE IF EXISTS `prefoods`;
CREATE TABLE `prefoods` (
  `foodId` int(10) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(20) DEFAULT NULL,
  `foodTypeId` int(10) DEFAULT NULL,
  `foodPrice` double DEFAULT NULL,
  `foodNums` int(10) DEFAULT NULL,
  `foodShelflife` char(1) DEFAULT NULL,
  `foodProducer` varchar(20) DEFAULT NULL,
  `foodShelvesId` int(20) DEFAULT NULL,
  `foodHouseId` int(20) DEFAULT NULL,
  `foodStorageTime` varchar(20) DEFAULT NULL,
  `putinstorageAdminId` int(10) DEFAULT NULL,
  `putinstorageDate` datetime DEFAULT NULL,
  `putInType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`foodId`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prefoods
-- ----------------------------
INSERT INTO `prefoods` VALUES ('2', '牛肉', '2', '50', '150', '5', null, null, '1', null, null, '2018-06-09 00:00:00', '成功');
INSERT INTO `prefoods` VALUES ('3', '苹果', '1', '250', '220', '6', null, null, '2', null, null, '2018-06-10 00:53:35', '成功');
INSERT INTO `prefoods` VALUES ('4', '猪肉', '3', '290', '290', '1', null, null, '1', null, null, '2018-06-10 00:56:09', '失败');
INSERT INTO `prefoods` VALUES ('5', '菠菜', '4', '220', '200', '6', null, null, '2', null, null, '2018-06-10 00:58:35', '成功');
INSERT INTO `prefoods` VALUES ('6', '羊肉', '2', '220', '230', '6', null, null, '2', null, null, '2018-06-10 01:00:04', '成功');
INSERT INTO `prefoods` VALUES ('7', '酸奶', '5', '450', '450', '2', null, null, '2', null, null, '2018-06-10 01:01:00', '失败');
INSERT INTO `prefoods` VALUES ('8', '牛肉', '2', '45', '250', '4', null, null, '1', null, null, '2018-06-10 01:02:02', '成功');
INSERT INTO `prefoods` VALUES ('9', '羊肉', '2', '60', '330', '9', null, null, '2', null, null, '2018-06-10 01:02:50', '成功');
INSERT INTO `prefoods` VALUES ('10', '凤梨', '1', '60', '200', '9', null, null, '2', null, null, '2018-06-10 01:02:52', '成功');
INSERT INTO `prefoods` VALUES ('94', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('95', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('96', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('97', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('98', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('99', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('100', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('101', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('102', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('103', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('104', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('105', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('106', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('107', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('108', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('109', '香蕉', '1', '20', '200', '1', null, null, '1', null, null, '2018-06-20 01:24:40', '成功');
INSERT INTO `prefoods` VALUES ('110', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for putinstorage
-- ----------------------------
DROP TABLE IF EXISTS `putinstorage`;
CREATE TABLE `putinstorage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `putinstorageFoodId` int(10) DEFAULT NULL,
  `putinstorageAdminId` int(10) DEFAULT NULL,
  `putinstorageFoodNums` int(10) DEFAULT NULL,
  `putinstorageDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of putinstorage
-- ----------------------------

-- ----------------------------
-- Table structure for shelves
-- ----------------------------
DROP TABLE IF EXISTS `shelves`;
CREATE TABLE `shelves` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `shelvesId` int(10) DEFAULT NULL,
  `shelvesType` varchar(20) DEFAULT NULL,
  `shelvesSize` int(10) DEFAULT NULL,
  `shelvesHouseId` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shelves
-- ----------------------------

-- ----------------------------
-- Table structure for storagetemperature
-- ----------------------------
DROP TABLE IF EXISTS `storagetemperature`;
CREATE TABLE `storagetemperature` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(20) NOT NULL,
  `foodTypeId` int(10) DEFAULT NULL,
  `temperature` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storagetemperature
-- ----------------------------
INSERT INTO `storagetemperature` VALUES ('1', '香蕉', '1', '13-15');
INSERT INTO `storagetemperature` VALUES ('2', '柠檬', '1', '13-15');
INSERT INTO `storagetemperature` VALUES ('3', '南瓜', '4', '12-16');
INSERT INTO `storagetemperature` VALUES ('4', '牛肉', '2', '-18');
INSERT INTO `storagetemperature` VALUES ('5', '牛奶', '5', '0-6');
INSERT INTO `storagetemperature` VALUES ('6', '酸奶', '5', '2-6');
INSERT INTO `storagetemperature` VALUES ('7', '白菜', '4', '3-6');
INSERT INTO `storagetemperature` VALUES ('8', '葡萄', '4', '3-6');
INSERT INTO `storagetemperature` VALUES ('9', '苹果', '4', '3-6');
INSERT INTO `storagetemperature` VALUES ('10', '西瓜', '4', '3-6');
INSERT INTO `storagetemperature` VALUES ('11', '哈密瓜', '4', '3-6');
INSERT INTO `storagetemperature` VALUES ('12', '贝壳', '2', '-3-0');

-- ----------------------------
-- Table structure for warehouses
-- ----------------------------
DROP TABLE IF EXISTS `warehouses`;
CREATE TABLE `warehouses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `warehouseId` int(10) DEFAULT NULL,
  `warehouseName` varchar(20) DEFAULT NULL,
  `warehouseType` varchar(20) DEFAULT NULL,
  `warehouseAddress` varchar(20) DEFAULT NULL,
  `warehouseStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouses
-- ----------------------------
