-- --------------------------
-- Create DataBase
-- -------------------------
CREATE DATABASE nav;
use nav;


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `credit` int(25) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'aaaaa', 'aaaaa', 80);
INSERT INTO `user` VALUES (2, 'bbbbb', 'bbbbb', 96);
INSERT INTO `user` VALUES (3, 'ccccc', 'ccccc', 94);
INSERT INTO `user` VALUES (12, 'ddddd', 'ddddd', 100);
INSERT INTO `user` VALUES (13, 'eeeee', 'eeeee', 100);
INSERT INTO `user` VALUES (14, 'fffff', 'fffff', 100);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(222) NULL DEFAULT NULL,
  `version` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ap` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `csc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fota` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `agree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 1, '1', 'aaaa', 'aaaa', 'aaaa', 'aaaa', 'aaaa', '111111', 'rejected');
INSERT INTO `userinfo` VALUES (2, 2, '2', 'bbbb', 'bbbb', 'bbbb', 'bbbb', 'bbbb', '222222', 'accepted');
INSERT INTO `userinfo` VALUES (3, 3, '3', 'ccc', 'ccc', 'ccc', 'ccc', 'ccc', '333333', 'rejected');
INSERT INTO `userinfo` VALUES (4, 12, '4', 'dddddd', 'dddd', 'ddd', 'dd', 'ddd', '444444', 'accepted');
INSERT INTO `userinfo` VALUES (5, 13, '2', 'a2a2a2', 'a2a2a2', 'a2', 'a2', 'a2', '121212', 'accepted');
INSERT INTO `userinfo` VALUES (11, 2, '2', 'we', 'w', 'qw', 'qw', 'qw', '123444', 'rejected');
INSERT INTO `userinfo` VALUES (12, 2, '2', 'se', 'se', 'se', 'se', 'se', 'se', 'accepted');
INSERT INTO `userinfo` VALUES (13, 2, '345', '345', '3', '4', '2', '4', '453', 'accepted');
INSERT INTO `userinfo` VALUES (14, 2, '345', '345', '3', '4', '2', '4', '453', 'pending');
INSERT INTO `userinfo` VALUES (15, 2, '345', '345', '3', '4', '2', '4', '453', 'pending');
INSERT INTO `userinfo` VALUES (16, 2, '345', '345', '3', '4', '2', '4', '453', 'pending');
INSERT INTO `userinfo` VALUES (17, 2, '12', '3', '3', '3', '3', '3', '123456789', 'pending');
INSERT INTO `userinfo` VALUES (18, 1, '3', 'A013GJXU1ATG9', 'A013GJXU1ATG9', 'A013GXXU1ATG7', 'A013GOJV1ATG9', '1.0', '123456789012345', 'accepted');
INSERT INTO `userinfo` VALUES (19, 1, '2.0', 'A013GJXU1ATG9', 'A013GJXU1ATG9', 'A013GXXU1ATG7', 'A013GOJV1ATG9', '1.0', '123456789012345', 'accepted');
INSERT INTO `userinfo` VALUES (20, 1, '2.0', 'A013GJXU1ATG9', 'A013GJXU1ATG9', 'A013GXXU1ATG7', 'A013GOJV1ATG9', '1.0', '987654321098765', 'pending');
INSERT INTO `userinfo` VALUES (21, 1, '2.0', 'A013GJXU1ATG9', 'A013GJXU1ATG9', 'A013GXXU1ATG7', 'A013GOJV1ATG9', '1.0', '222222222222222', 'pending');

SET FOREIGN_KEY_CHECKS = 1;
