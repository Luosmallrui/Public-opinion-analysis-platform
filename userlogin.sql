/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : weibo

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 19/09/2022 14:53:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for userlogin
-- ----------------------------
DROP TABLE IF EXISTS `userlogin`;
CREATE TABLE `userlogin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码（md5加密）',
  `salt` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '加密盐（4位固定，4位随机）',
  `activation_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '激活失效时间',
  `is_valid` tinyint(1) NULL DEFAULT NULL COMMENT '是否可用，0不可用，1可用',
  `confirm_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '确认码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userlogin
-- ----------------------------
INSERT INTO `userlogin` VALUES (49, '2039914814@qq.com', '881be0805c099fb0dceb46dcbee26023', '2uzq7f', '2022-09-13 10:40:07', 0, '1561907765784481792');
INSERT INTO `userlogin` VALUES (74, '2039914614@qq.com', '8048d8a1c31de771527816760e6f292e', '3blm2i', '2022-09-14 10:38:45', 0, '1569515898295947264');

SET FOREIGN_KEY_CHECKS = 1;
