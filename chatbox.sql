/*
Navicat MySQL Data Transfer

Source Server         : database
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : chatbox

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-03-31 20:54:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chats
-- ----------------------------
DROP TABLE IF EXISTS `chats`;
CREATE TABLE `chats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of chats
-- ----------------------------
INSERT INTO `chats` VALUES ('16', '2', 'ancbc', '1', '2017-03-27 15:14:29', '2017-03-27 15:14:29');
INSERT INTO `chats` VALUES ('17', '1', 'kajskdjaksjk', '1', '2017-03-27 15:35:33', '2017-03-27 15:35:34');
INSERT INTO `chats` VALUES ('18', '1', 'akjshdjka', '1', '2017-03-27 15:35:35', '2017-03-27 15:35:35');
INSERT INTO `chats` VALUES ('19', '1', 'kajshjdkahs', '1', '2017-03-27 15:35:37', '2017-03-27 15:35:37');
INSERT INTO `chats` VALUES ('20', '1', 'ákjdhakjs', '1', '2017-03-27 15:35:38', '2017-03-27 15:35:38');
INSERT INTO `chats` VALUES ('21', '1', 'ádjshd', '1', '2017-03-27 15:35:40', '2017-03-27 15:35:40');
INSERT INTO `chats` VALUES ('22', '1', 'ádajhjksdh', '1', '2017-03-27 16:08:09', '2017-03-27 16:08:09');
INSERT INTO `chats` VALUES ('23', '1', 'hello e', '1', '2017-03-27 16:43:30', '2017-03-27 16:43:30');
INSERT INTO `chats` VALUES ('24', '2', 'chào e', '1', '2017-03-27 16:47:18', '2017-03-27 16:47:18');
INSERT INTO `chats` VALUES ('25', '2', 's', '1', '2017-03-27 16:47:25', '2017-03-27 16:47:25');
INSERT INTO `chats` VALUES ('26', '2', 'e đang là gì đó :)', '1', '2017-03-27 16:47:33', '2017-03-27 16:47:33');
INSERT INTO `chats` VALUES ('27', '1', 'e đang chơi', '1', '2017-03-27 16:47:46', '2017-03-27 16:47:46');
INSERT INTO `chats` VALUES ('28', '1', 'sidhakjshdkajs', '1', '2017-03-29 16:40:14', '2017-03-29 16:40:15');
INSERT INTO `chats` VALUES ('29', '2', 'ádasds', '1', '2017-03-29 16:40:56', '2017-03-29 16:40:56');
INSERT INTO `chats` VALUES ('30', '1', 'ádas', '1', '2017-03-29 16:41:06', '2017-03-29 16:41:06');
INSERT INTO `chats` VALUES ('31', '2', 'ádasda', '1', '2017-03-29 16:41:14', '2017-03-29 16:41:14');
INSERT INTO `chats` VALUES ('32', '1', 'bảo vệ đồ án', '1', '2017-03-31 00:56:20', '2017-03-31 00:56:20');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('7', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('8', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('9', '2017_03_14_153016_create_chats_table', '1');
INSERT INTO `migrations` VALUES ('10', '2017_03_27_141939_add_column_to_chats_table', '2');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Super Admin', 'admin@gmail.com', '$2y$10$2kk/LHc1oZtAabUfi0rsMOsku1gybSqtFJcRfwNUWMEkyu2CTK8fa', null, '2017-03-27 14:53:44', '2017-03-27 14:53:44');
INSERT INTO `users` VALUES ('2', 'HieuDZ', 'admin2@gmail.com', '$2y$10$5jRy7382qdnJPDnhlGef3.4CbS4wBLyhjt8PpXc9nXC6yKh13GcOq', null, '2017-03-27 15:03:57', '2017-03-27 15:03:57');
