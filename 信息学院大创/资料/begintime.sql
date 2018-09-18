/*
Navicat MySQL Data Transfer

Source Server         : login
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : login

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2018-09-07 11:58:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for begintime
-- ----------------------------
DROP TABLE IF EXISTS `begintime`;
CREATE TABLE `begintime` (
  `Tea_begintime` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of begintime
-- ----------------------------
INSERT INTO `begintime` VALUES ('2018/09/05 15:00');
