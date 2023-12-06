/*
 Navicat Premium Data Transfer

 Source Server         : localhost-mysql3306
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : seckill

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 06/12/2023 23:09:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order_record
-- ----------------------------
CREATE DATABASE seckill;
USE seckill;
DROP TABLE IF EXISTS `order_record`;
CREATE TABLE `order_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `buy_num` int(11) NULL DEFAULT NULL,
  `order_price` decimal(10, 2) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay_type` int(11) NULL DEFAULT NULL,
  `order_time` datetime NULL DEFAULT NULL,
  `order_status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_record
-- ----------------------------
INSERT INTO `order_record` VALUES (1, '1701863538376-498702880', '1', 'd781397f-14da-494c-8800-8e4df5a5221f', 2, 180.00, 'jskjdkf', 1, '2023-12-06 19:52:18', 1);
INSERT INTO `order_record` VALUES (2, '1701863567360-498702880', '1', '65fc3169-8df3-40cb-a40a-12a519f37455', 2, 180.00, 'jskjdkf', 1, '2023-12-06 19:52:50', 1);
INSERT INTO `order_record` VALUES (3, '1701863683579-498702880', '1', '94f3a3af-63fd-4b70-871c-47a4036d4e25', 2, 180.00, 'jskjdkf', 1, '2023-12-06 19:54:44', 1);
INSERT INTO `order_record` VALUES (4, '1701864659653-498702880', '1', '81e57a64-195a-4e36-bd39-13af12956ce2', 2, 180.00, 'jskjdkf', 1, '2023-12-06 20:11:00', 1);
INSERT INTO `order_record` VALUES (5, '1701864683172-498702880', '1', '71d3a6f5-5a61-4d08-8985-2e33c8a43400', 2, 180.00, 'jskjdkf', 1, '2023-12-06 20:11:26', 1);
INSERT INTO `order_record` VALUES (6, '1701864709859-498702880', '1', '6752ae95-a7bc-46fd-bd90-f59eda44cc48', 2, 180.00, 'jskjdkf', 1, '2023-12-06 20:11:50', 1);
INSERT INTO `order_record` VALUES (7, '1701864802741-498702880', '1', '93463a6c-e5fb-4263-afc8-49307fafff61', 2, 180.00, 'jskjdkf', 1, '2023-12-06 20:13:23', 1);
INSERT INTO `order_record` VALUES (8, '1701865355754-498702880', '1', '7c7da3b6-a085-4803-adb0-30f6b8515c7b', 2, 180.00, 'jskjdkf', 1, '2023-12-06 20:22:40', 1);
INSERT INTO `order_record` VALUES (9, '1701865375693-498702880', '1', '9ea35f94-8d27-4701-8554-1101723448f0', 2, 180.00, 'jskjdkf', 1, '2023-12-06 20:22:56', 1);
INSERT INTO `order_record` VALUES (10, '1701866788509-498702880', '1', 'eb4c30bf-8a58-4919-b5a9-09bcad4896bf', 2, 180.00, 'jskjdkf', 1, '2023-12-06 20:46:30', 1);

-- ----------------------------
-- Table structure for product_info
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `picture_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_price` decimal(10, 2) NULL DEFAULT NULL,
  `tag` int(11) NULL DEFAULT NULL COMMENT ' 1：正常商品，2：秒杀商品 3：预约商品',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_info
-- ----------------------------
INSERT INTO `product_info` VALUES (1, '口罩', '1', '1', 100.00, 1);

-- ----------------------------
-- Table structure for seckill_activity
-- ----------------------------
DROP TABLE IF EXISTS `seckill_activity`;
CREATE TABLE `seckill_activity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `activity_start` datetime NULL DEFAULT NULL,
  `activity_end` datetime NULL DEFAULT NULL,
  `limit_num` int(11) NULL DEFAULT NULL COMMENT '单次限购',
  `stock_num` int(11) NULL DEFAULT NULL COMMENT '真实库存数量',
  `status` int(11) NULL DEFAULT NULL COMMENT '0未开始 1开始 2结束',
  `activity_picture_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动图片',
  `activity_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '活动价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '秒杀活动表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seckill_activity
-- ----------------------------
INSERT INTO `seckill_activity` VALUES (1, '口罩秒杀', 1, '2023-12-06 18:57:24', '2023-12-29 18:57:27', 100, 80, 2, '11', 90.00);

SET FOREIGN_KEY_CHECKS = 1;
