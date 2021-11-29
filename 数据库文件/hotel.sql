/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:3306
 Source Schema         : hotel

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 28/11/2021 22:58:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for employ
-- ----------------------------
DROP TABLE IF EXISTS `employ`;
CREATE TABLE `employ`  (
  `employno` int(11) NOT NULL,
  `employname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `employsex` int(11) NULL DEFAULT NULL,
  `employage` int(11) NULL DEFAULT NULL,
  `employposition` int(11) NULL DEFAULT NULL,
  `employauthority` int(11) NULL DEFAULT NULL,
  `employpaymentpermonth` int(11) NULL DEFAULT NULL,
  `employworktime` int(10) UNSIGNED ZEROFILL NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `loginname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`employno`, `employworktime`) USING BTREE,
  INDEX `employno`(`employno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employ
-- ----------------------------
INSERT INTO `employ` VALUES (1, 'nanzhuli', 1, 22, 0, 0, 10, 0000000000, 'admin', '$2a$10$UwdGCkrY6Bmdvz6fEk8kIOZls5y4PEkNq.mmQFwVp/H8b0qVuqwXm', NULL);
INSERT INTO `employ` VALUES (2, 'zianwang', 1, 21, 1, 1, 1000, 0000000001, 'worker1', '$2a$10$UwdGCkrY6Bmdvz6fEk8kIOZls5y4PEkNq.mmQFwVp/H8b0qVuqwXm', NULL);
INSERT INTO `employ` VALUES (3, 'gaunqiuwu', 1, 21, 1, 1, 1000, 0000000002, 'worker2', '$2a$10$kx9kzufXMjf9D6jVVdJL7.OdlJb2V5.6xPPOeQRQ7SMek7zJJz1Ba', NULL);
INSERT INTO `employ` VALUES (4, 'ziyanggao', 1, 21, 2, 1, 1000, 0000000001, 'worker3', '$2a$10$l/PZ6PmqS/55UedwRGwKj.ZtkbRRjXi5U8nvljyNh60l6LjU0CK7y', NULL);
INSERT INTO `employ` VALUES (5, 'wanniqiao', 1, 22, 2, 1, 1000, 0000000002, 'worker4', 'worker4', NULL);
INSERT INTO `employ` VALUES (6, 'zianwang\'s bro', 1, 20, 3, 1, 1000, 0000000001, 'worker5', 'worker5', NULL);
INSERT INTO `employ` VALUES (7, 'guanqiuwu\'s sis', 0, 20, 3, 1, 1000, 0000000002, 'worker6', 'worker6', NULL);
INSERT INTO `employ` VALUES (8, 'yibinzheng', 1, 21, 0, 2, 2000, 0000000000, 'server1', '$2a$10$UwdGCkrY6Bmdvz6fEk8kIOZls5y4PEkNq.mmQFwVp/H8b0qVuqwXm', NULL);
INSERT INTO `employ` VALUES (9, 'ziyanggao\'s sis', 0, 22, 0, 2, 2000, 0000000000, 'server2', '$2a$10$g28diD9VkFQDzITu0cIPH./cnCVu1BOYdCzBzazkeBXz1h5pqV48O', NULL);
INSERT INTO `employ` VALUES (11, 'ceshi ', 1, 11, 1, 2, 2222, 0000000001, 'ceshi', '$2a$10$kvD11/qAwdxhGcbimrwGNOAnSx8GQ.ciifz5V4cRfordR3b6DTu0W', NULL);
INSERT INTO `employ` VALUES (12, '前台用户', 0, 23, 1, 2, 2112, 0000000000, 'maker', '$2a$10$Sl4D.mYreOnRQwwktzHUn.cwDgVtfY2sFpk7/r8RPvbuimh9ylRCm', NULL);

-- ----------------------------
-- Records of sysrole
-- ----------------------------
INSERT INTO `sysrole` VALUES (1, 'ROLE_ADMIN');
INSERT INTO `sysrole` VALUES (2, 'ROLE_WORKER');
INSERT INTO `sysrole` VALUES (3, 'ROLE_SERVER');

SET FOREIGN_KEY_CHECKS = 1;
