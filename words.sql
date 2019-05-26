/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : words

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 26/05/2019 22:48:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for words
-- ----------------------------
DROP TABLE IF EXISTS `words`;
CREATE TABLE `words` (
  `content` varchar(1000) DEFAULT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of words
-- ----------------------------
BEGIN;
INSERT INTO `words` VALUES ('hello', '2019-05-26 12:59:12', 1);
INSERT INTO `words` VALUES ('world', '2019-05-26 14:24:20', 2);
INSERT INTO `words` VALUES ('12313212312', '2019-05-26 14:29:29', 3);
INSERT INTO `words` VALUES ('12313212312adasdasda', '2019-05-26 14:30:18', 5);
INSERT INTO `words` VALUES ('dasdasdadsad', '2019-05-26 14:46:23', 22);
INSERT INTO `words` VALUES ('asdadsasd', '2019-05-26 14:48:07', 23);
INSERT INTO `words` VALUES ('ddgfdghdfgh', '2019-05-26 14:48:09', 24);
INSERT INTO `words` VALUES ('csdcsdcd', '2019-05-26 14:48:11', 25);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
