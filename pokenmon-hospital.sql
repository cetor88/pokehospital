/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100419
 Source Host           : localhost:3306
 Source Schema         : pokenmon-hospital

 Target Server Type    : MySQL
 Target Server Version : 100419
 File Encoding         : 65001

 Date: 15/09/2021 16:03:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cat_tipo
-- ----------------------------
DROP TABLE IF EXISTS `cat_tipo`;
CREATE TABLE `cat_tipo`  (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cat_tipo
-- ----------------------------
INSERT INTO `cat_tipo` VALUES (1, 'Planta');
INSERT INTO `cat_tipo` VALUES (2, 'Fuego');
INSERT INTO `cat_tipo` VALUES (3, 'Agua');
INSERT INTO `cat_tipo` VALUES (4, 'Bicho');
INSERT INTO `cat_tipo` VALUES (5, 'Normal');

-- ----------------------------
-- Table structure for pokemon
-- ----------------------------
DROP TABLE IF EXISTS `pokemon`;
CREATE TABLE `pokemon`  (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tipo` int(100) NULL DEFAULT NULL,
  `evolucionado` bit(1) NULL DEFAULT NULL,
  `edad` tinyint(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tipo_id`(`tipo`) USING BTREE,
  CONSTRAINT `tipo_id` FOREIGN KEY (`tipo`) REFERENCES `cat_tipo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pokemon
-- ----------------------------
INSERT INTO `pokemon` VALUES (1, 'Bulbasaur', 1, b'0', 10);
INSERT INTO `pokemon` VALUES (2, 'Ivysaur', 1, b'0', 10);
INSERT INTO `pokemon` VALUES (3, 'Venusaur', 1, b'0', 10);
INSERT INTO `pokemon` VALUES (4, 'Charmander', 2, b'0', 10);
INSERT INTO `pokemon` VALUES (5, 'Charmeleon', 2, b'1', 10);
INSERT INTO `pokemon` VALUES (6, 'Charizard', 2, b'0', 10);
INSERT INTO `pokemon` VALUES (7, 'Squirtle', 3, b'0', 10);
INSERT INTO `pokemon` VALUES (8, 'Wartortle', 3, b'0', 10);
INSERT INTO `pokemon` VALUES (9, 'Blastoise', 3, b'0', 10);
INSERT INTO `pokemon` VALUES (10, 'Caterpie', 4, b'1', 10);
INSERT INTO `pokemon` VALUES (11, 'Metapod', 4, b'0', 10);
INSERT INTO `pokemon` VALUES (12, 'Butterfree', 4, b'0', 10);
INSERT INTO `pokemon` VALUES (13, 'Weedle', 4, b'0', 10);
INSERT INTO `pokemon` VALUES (14, 'Kakuna', 4, b'0', 10);
INSERT INTO `pokemon` VALUES (15, 'Beedrill', 4, b'0', 10);
INSERT INTO `pokemon` VALUES (16, 'Pidgey', 5, b'0', 10);
INSERT INTO `pokemon` VALUES (17, 'Pidgeotto', 5, b'0', 10);
INSERT INTO `pokemon` VALUES (18, 'Pidgeot', 5, b'0', 10);
INSERT INTO `pokemon` VALUES (19, 'Rattata', 5, b'0', 10);

SET FOREIGN_KEY_CHECKS = 1;
