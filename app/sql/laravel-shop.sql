/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50728
Source Host           : localhost:3308
Source Database       : laravel-shop

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-11-03 16:18:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', null, null, '2020-07-23 08:52:01');
INSERT INTO `admin_menu` VALUES ('2', '0', '4', '系统管理', 'fa-tasks', null, null, null, '2020-08-22 01:40:12');
INSERT INTO `admin_menu` VALUES ('3', '2', '5', '管理员', 'fa-users', 'auth/users', null, null, '2020-08-22 01:40:12');
INSERT INTO `admin_menu` VALUES ('4', '2', '6', '角色', 'fa-user', 'auth/roles', null, null, '2020-08-22 01:40:12');
INSERT INTO `admin_menu` VALUES ('5', '2', '7', '权限', 'fa-ban', 'auth/permissions', null, null, '2020-08-22 01:40:12');
INSERT INTO `admin_menu` VALUES ('6', '2', '8', '菜单', 'fa-bars', 'auth/menu', null, null, '2020-08-22 01:40:12');
INSERT INTO `admin_menu` VALUES ('7', '2', '9', '操作日志', 'fa-history', 'auth/logs', null, null, '2020-08-22 01:40:12');
INSERT INTO `admin_menu` VALUES ('8', '0', '2', '用户管理', 'fa-users', '/users', null, '2020-07-23 09:17:53', '2020-08-22 01:40:12');
INSERT INTO `admin_menu` VALUES ('9', '0', '3', '商品管理', 'fa-cubes', '/products', null, '2020-07-25 00:43:31', '2020-08-22 01:43:43');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-23 08:48:06', '2020-07-23 08:48:06');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 08:49:32', '2020-07-23 08:49:32');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 08:51:27', '2020-07-23 08:51:27');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 08:51:35', '2020-07-23 08:51:35');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"PSGBJowWZJXE17QcgSOjGswtp0ZfpwxnddlUD1TD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/auth\\/menu\"}', '2020-07-23 08:52:01', '2020-07-23 08:52:01');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-23 08:52:02', '2020-07-23 08:52:02');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 08:52:39', '2020-07-23 08:52:39');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"PSGBJowWZJXE17QcgSOjGswtp0ZfpwxnddlUD1TD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/auth\\/menu\"}', '2020-07-23 08:52:42', '2020-07-23 08:52:42');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-23 08:52:42', '2020-07-23 08:52:42');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 08:52:51', '2020-07-23 08:52:51');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"PSGBJowWZJXE17QcgSOjGswtp0ZfpwxnddlUD1TD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/auth\\/menu\"}', '2020-07-23 08:52:55', '2020-07-23 08:52:55');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-23 08:52:55', '2020-07-23 08:52:55');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 08:53:03', '2020-07-23 08:53:03');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 08:53:05', '2020-07-23 08:53:05');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 08:53:07', '2020-07-23 08:53:07');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"PSGBJowWZJXE17QcgSOjGswtp0ZfpwxnddlUD1TD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/auth\\/menu\"}', '2020-07-23 08:53:10', '2020-07-23 08:53:10');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-23 08:53:10', '2020-07-23 08:53:10');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 08:53:17', '2020-07-23 08:53:17');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"PSGBJowWZJXE17QcgSOjGswtp0ZfpwxnddlUD1TD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/auth\\/menu\"}', '2020-07-23 08:53:20', '2020-07-23 08:53:20');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-23 08:53:20', '2020-07-23 08:53:20');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 08:53:26', '2020-07-23 08:53:26');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"PSGBJowWZJXE17QcgSOjGswtp0ZfpwxnddlUD1TD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/auth\\/menu\"}', '2020-07-23 08:53:29', '2020-07-23 08:53:29');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-23 08:53:29', '2020-07-23 08:53:29');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 08:53:36', '2020-07-23 08:53:36');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"PSGBJowWZJXE17QcgSOjGswtp0ZfpwxnddlUD1TD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/auth\\/menu\"}', '2020-07-23 08:53:39', '2020-07-23 08:53:39');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-23 08:53:39', '2020-07-23 08:53:39');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-23 09:03:23', '2020-07-23 09:03:23');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-23 09:03:26', '2020-07-23 09:03:26');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 09:03:27', '2020-07-23 09:03:27');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 09:03:28', '2020-07-23 09:03:28');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-23 09:09:46', '2020-07-23 09:09:46');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 09:10:16', '2020-07-23 09:10:16');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 09:10:21', '2020-07-23 09:10:21');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 09:16:54', '2020-07-23 09:16:54');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 09:16:58', '2020-07-23 09:16:58');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"ClYXrPZPF5RqMl2lACE1d5J89hVPBzld5xilmUW7\"}', '2020-07-23 09:17:53', '2020-07-23 09:17:53');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-23 09:17:53', '2020-07-23 09:17:53');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-23 09:18:01', '2020-07-23 09:18:01');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-23 09:18:12', '2020-07-23 09:18:12');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 09:18:14', '2020-07-23 09:18:14');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 09:18:17', '2020-07-23 09:18:17');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 09:18:31', '2020-07-23 09:18:31');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2020-07-23 09:31:26', '2020-07-23 09:31:26');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2020-07-24 00:11:26', '2020-07-24 00:11:26');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-24 01:52:06', '2020-07-24 01:52:06');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 01:52:08', '2020-07-24 01:52:08');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 01:55:24', '2020-07-24 01:55:24');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-07-24 01:55:27', '2020-07-24 01:55:27');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2020-07-24 01:55:29', '2020-07-24 01:55:29');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-07-24 01:55:34', '2020-07-24 01:55:34');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2020-07-24 01:55:39', '2020-07-24 01:55:39');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 05:58:21', '2020-07-24 05:58:21');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 05:58:28', '2020-07-24 05:58:28');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 06:00:04', '2020-07-24 06:00:04');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/users*\",\"_token\":\"2F8F9JU5z7mEt2qtas7y8cgPyZcZZmASKRLjCqXJ\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/auth\\/permissions\"}', '2020-07-24 06:01:55', '2020-07-24 06:01:55');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-07-24 06:01:55', '2020-07-24 06:01:55');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 06:02:12', '2020-07-24 06:02:12');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 06:02:13', '2020-07-24 06:02:13');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 06:02:17', '2020-07-24 06:02:17');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",null],\"_token\":\"2F8F9JU5z7mEt2qtas7y8cgPyZcZZmASKRLjCqXJ\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/auth\\/roles\"}', '2020-07-24 06:04:15', '2020-07-24 06:04:15');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-07-24 06:04:15', '2020-07-24 06:04:15');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 06:04:41', '2020-07-24 06:04:41');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 06:04:42', '2020-07-24 06:04:42');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 06:04:43', '2020-07-24 06:04:43');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 06:04:44', '2020-07-24 06:04:44');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 06:04:56', '2020-07-24 06:04:56');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"operator\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"2F8F9JU5z7mEt2qtas7y8cgPyZcZZmASKRLjCqXJ\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/auth\\/users\"}', '2020-07-24 06:20:50', '2020-07-24 06:20:50');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-07-24 06:20:50', '2020-07-24 06:20:50');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 06:21:06', '2020-07-24 06:21:06');
INSERT INTO `admin_operation_log` VALUES ('70', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-24 06:21:10', '2020-07-24 06:21:10');
INSERT INTO `admin_operation_log` VALUES ('71', '2', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 06:21:16', '2020-07-24 06:21:16');
INSERT INTO `admin_operation_log` VALUES ('72', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 06:21:18', '2020-07-24 06:21:18');
INSERT INTO `admin_operation_log` VALUES ('73', '2', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 06:21:19', '2020-07-24 06:21:19');
INSERT INTO `admin_operation_log` VALUES ('74', '2', 'admin/users', 'GET', '127.0.0.1', '[]', '2020-07-24 06:22:16', '2020-07-24 06:22:16');
INSERT INTO `admin_operation_log` VALUES ('75', '2', 'admin/users', 'GET', '127.0.0.1', '[]', '2020-07-24 06:22:18', '2020-07-24 06:22:18');
INSERT INTO `admin_operation_log` VALUES ('76', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-24 08:04:11', '2020-07-24 08:04:11');
INSERT INTO `admin_operation_log` VALUES ('77', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:36:03', '2020-07-25 00:36:03');
INSERT INTO `admin_operation_log` VALUES ('78', '2', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:36:05', '2020-07-25 00:36:05');
INSERT INTO `admin_operation_log` VALUES ('79', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:36:06', '2020-07-25 00:36:06');
INSERT INTO `admin_operation_log` VALUES ('80', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-25 00:37:40', '2020-07-25 00:37:40');
INSERT INTO `admin_operation_log` VALUES ('81', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:37:41', '2020-07-25 00:37:41');
INSERT INTO `admin_operation_log` VALUES ('82', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:37:42', '2020-07-25 00:37:42');
INSERT INTO `admin_operation_log` VALUES ('83', '2', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:37:43', '2020-07-25 00:37:43');
INSERT INTO `admin_operation_log` VALUES ('84', '2', 'admin/users', 'GET', '127.0.0.1', '[]', '2020-07-25 00:38:26', '2020-07-25 00:38:26');
INSERT INTO `admin_operation_log` VALUES ('85', '2', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:41:51', '2020-07-25 00:41:51');
INSERT INTO `admin_operation_log` VALUES ('86', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:41:51', '2020-07-25 00:41:51');
INSERT INTO `admin_operation_log` VALUES ('87', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:41:54', '2020-07-25 00:41:54');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-25 00:42:01', '2020-07-25 00:42:01');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:42:06', '2020-07-25 00:42:06');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:42:09', '2020-07-25 00:42:09');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:42:11', '2020-07-25 00:42:11');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:42:11', '2020-07-25 00:42:11');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:42:12', '2020-07-25 00:42:12');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:42:13', '2020-07-25 00:42:13');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:42:15', '2020-07-25 00:42:15');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:43:05', '2020-07-25 00:43:05');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"yRBY6REzKJxCKqOEeue1AxUAdeVxq6G3UeDO8mKt\"}', '2020-07-25 00:43:31', '2020-07-25 00:43:31');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-25 00:43:31', '2020-07-25 00:43:31');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-25 00:43:43', '2020-07-25 00:43:43');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:43:46', '2020-07-25 00:43:46');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:43:58', '2020-07-25 00:43:58');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:44:03', '2020-07-25 00:44:03');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:44:48', '2020-07-25 00:44:48');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:44:49', '2020-07-25 00:44:49');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:44:56', '2020-07-25 00:44:56');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:44:58', '2020-07-25 00:44:58');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:45:00', '2020-07-25 00:45:00');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:45:08', '2020-07-25 00:45:08');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:45:10', '2020-07-25 00:45:10');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:45:13', '2020-07-25 00:45:13');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"yRBY6REzKJxCKqOEeue1AxUAdeVxq6G3UeDO8mKt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/auth\\/menu\"}', '2020-07-25 00:45:27', '2020-07-25 00:45:27');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-25 00:45:27', '2020-07-25 00:45:27');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-25 00:45:31', '2020-07-25 00:45:31');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:45:36', '2020-07-25 00:45:36');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 00:45:36', '2020-07-25 00:45:36');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 00:45:39', '2020-07-25 00:45:39');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-25 00:46:51', '2020-07-25 00:46:51');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:46:53', '2020-07-25 00:46:53');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-25 00:46:54', '2020-07-25 00:46:54');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:46:57', '2020-07-25 00:46:57');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-25 00:46:58', '2020-07-25 00:46:58');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:47:13', '2020-07-25 00:47:13');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:48:35', '2020-07-25 00:48:35');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2020-07-25 00:48:38', '2020-07-25 00:48:38');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2020-07-25 00:49:18', '2020-07-25 00:49:18');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:49:20', '2020-07-25 00:49:20');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2020-07-25 00:49:23', '2020-07-25 00:49:23');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2020-07-25 00:49:32', '2020-07-25 00:49:32');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:49:34', '2020-07-25 00:49:34');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:49:37', '2020-07-25 00:49:37');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-25 00:49:59', '2020-07-25 00:49:59');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 00:50:02', '2020-07-25 00:50:02');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 00:53:27', '2020-07-25 00:53:27');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 00:56:48', '2020-07-25 00:56:48');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 04:56:27', '2020-07-25 04:56:27');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 04:56:40', '2020-07-25 04:56:40');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:08:02', '2020-07-25 05:08:02');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:08:24', '2020-07-25 05:08:24');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 05:08:25', '2020-07-25 05:08:25');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/products/create', 'GET', '127.0.0.1', '[]', '2020-07-25 05:08:26', '2020-07-25 05:08:26');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/products/create', 'GET', '127.0.0.1', '[]', '2020-07-25 05:20:43', '2020-07-25 05:20:43');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/products/create', 'GET', '127.0.0.1', '[]', '2020-07-25 05:20:45', '2020-07-25 05:20:45');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/products/create', 'GET', '127.0.0.1', '[]', '2020-07-25 05:20:46', '2020-07-25 05:20:46');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/products/create', 'GET', '127.0.0.1', '[]', '2020-07-25 05:26:46', '2020-07-25 05:26:46');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/products', 'POST', '127.0.0.1', '{\"title\":\"iPhone 11 Pro\",\"description\":\"<p>\\u5168\\u7f515g\\u9996\\u53d1\\uff0c\\u4ec5\\u6b64\\u4e00\\u5bb6\\u3002<\\/p>\",\"on_sale\":\"1\",\"_token\":\"Il2AwxUHQGiqKQ82sDOBSx2lofe1lezlMw5lRqe5\"}', '2020-07-25 05:27:42', '2020-07-25 05:27:42');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:27:42', '2020-07-25 05:27:42');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:27:45', '2020-07-25 05:27:45');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 05:28:29', '2020-07-25 05:28:29');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"iPhone 11 Pro\",\"description\":\"<p>\\u5168\\u7f515g\\u9996\\u53d1\\uff0c\\u4ec5\\u6b64\\u4e00\\u5bb6\\u3002<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"new_1\":{\"title\":\"\\u94f6\\u8272 128G\",\"description\":\"iPhone 11 Pro 128G\",\"price\":\"6888\",\"stock\":\"100\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"title\":\"\\u94f6\\u8272 256G\",\"description\":\"iPhone 11 Pro 256G\",\"price\":\"7388\",\"stock\":\"60\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"Il2AwxUHQGiqKQ82sDOBSx2lofe1lezlMw5lRqe5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/products\"}', '2020-07-25 05:30:10', '2020-07-25 05:30:10');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:30:10', '2020-07-25 05:30:10');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 05:30:28', '2020-07-25 05:30:28');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:30:34', '2020-07-25 05:30:34');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 05:30:40', '2020-07-25 05:30:40');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 05:30:43', '2020-07-25 05:30:43');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:31:11', '2020-07-25 05:31:11');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:31:14', '2020-07-25 05:31:14');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:31:15', '2020-07-25 05:31:15');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:37:04', '2020-07-25 05:37:04');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:37:05', '2020-07-25 05:37:05');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"iPhone 11 Pro\",\"description\":\"<p>\\u5168\\u7f515g\\u9996\\u53d1\\uff0c\\u4ec5\\u6b64\\u4e00\\u5bb6\\u3002<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"\\u94f6\\u8272 128G\",\"description\":\"iPhone 11 Pro 128G\",\"price\":\"6888.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u94f6\\u8272 256G\",\"description\":\"iPhone 11 Pro 256G\",\"price\":\"7388.00\",\"stock\":\"60\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"Il2AwxUHQGiqKQ82sDOBSx2lofe1lezlMw5lRqe5\",\"_method\":\"PUT\"}', '2020-07-25 05:37:55', '2020-07-25 05:37:55');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:37:55', '2020-07-25 05:37:55');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:37:57', '2020-07-25 05:37:57');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 05:37:59', '2020-07-25 05:37:59');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"iPhone 11 Pro\",\"description\":\"<p>\\u5168\\u7f515g\\u9996\\u53d1\\uff0c\\u4ec5\\u6b64\\u4e00\\u5bb6\\u3002<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"\\u94f6\\u8272 128G\",\"description\":\"iPhone 11 Pro 128G\",\"price\":\"6888.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u94f6\\u8272 256G\",\"description\":\"iPhone 11 Pro 256G\",\"price\":\"7388.00\",\"stock\":\"60\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"Il2AwxUHQGiqKQ82sDOBSx2lofe1lezlMw5lRqe5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/products\"}', '2020-07-25 05:38:38', '2020-07-25 05:38:38');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:38:38', '2020-07-25 05:38:38');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:38:39', '2020-07-25 05:38:39');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 05:38:47', '2020-07-25 05:38:47');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:41:24', '2020-07-25 05:41:24');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:41:58', '2020-07-25 05:41:58');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"iPhone 11 Pro\",\"description\":\"<p>\\u5168\\u7f515g\\u9996\\u53d1\\uff0c\\u4ec5\\u6b64\\u4e00\\u5bb6\\u3002<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"\\u94f6\\u8272 128G\",\"description\":\"iPhone 11 Pro 128G\",\"price\":\"6888.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u94f6\\u8272 256G\",\"description\":\"iPhone 11 Pro 256G\",\"price\":\"7388.00\",\"stock\":\"60\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"Il2AwxUHQGiqKQ82sDOBSx2lofe1lezlMw5lRqe5\",\"_method\":\"PUT\"}', '2020-07-25 05:43:58', '2020-07-25 05:43:58');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:43:58', '2020-07-25 05:43:58');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:44:00', '2020-07-25 05:44:00');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 05:44:03', '2020-07-25 05:44:03');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:48:34', '2020-07-25 05:48:34');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:48:56', '2020-07-25 05:48:56');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"iPhone 11 Pro\",\"description\":\"<p>\\u5168\\u7f515g\\u9996\\u53d1\\uff0c\\u4ec5\\u6b64\\u4e00\\u5bb6\\u3002<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"\\u94f6\\u8272 128G\",\"description\":\"iPhone 11 Pro 128G\",\"price\":\"6888.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u94f6\\u8272 256G\",\"description\":\"iPhone 11 Pro 256G\",\"price\":\"7388.00\",\"stock\":\"60\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"Il2AwxUHQGiqKQ82sDOBSx2lofe1lezlMw5lRqe5\",\"_method\":\"PUT\"}', '2020-07-25 05:49:52', '2020-07-25 05:49:52');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:49:52', '2020-07-25 05:49:52');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:49:54', '2020-07-25 05:49:54');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:50:03', '2020-07-25 05:50:03');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 05:50:06', '2020-07-25 05:50:06');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 05:50:15', '2020-07-25 05:50:15');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 05:50:17', '2020-07-25 05:50:17');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/products', 'POST', '127.0.0.1', '{\"title\":\"test\",\"description\":\"<p><br><\\/p>\",\"on_sale\":\"1\",\"_token\":\"Il2AwxUHQGiqKQ82sDOBSx2lofe1lezlMw5lRqe5\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/products\"}', '2020-07-25 05:50:49', '2020-07-25 05:50:49');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:50:49', '2020-07-25 05:50:49');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 05:50:51', '2020-07-25 05:50:51');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 05:50:53', '2020-07-25 05:50:53');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:51:08', '2020-07-25 05:51:08');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:51:16', '2020-07-25 05:51:16');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:51:18', '2020-07-25 05:51:18');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:51:19', '2020-07-25 05:51:19');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:51:33', '2020-07-25 05:51:33');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:51:35', '2020-07-25 05:51:35');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:51:35', '2020-07-25 05:51:35');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:51:35', '2020-07-25 05:51:35');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:51:38', '2020-07-25 05:51:38');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:58:04', '2020-07-25 05:58:04');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:59:40', '2020-07-25 05:59:40');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:59:42', '2020-07-25 05:59:42');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:59:57', '2020-07-25 05:59:57');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 05:59:59', '2020-07-25 05:59:59');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:12:19', '2020-07-25 06:12:19');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:17:45', '2020-07-25 06:17:45');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:18:15', '2020-07-25 06:18:15');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:18:17', '2020-07-25 06:18:17');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/products/2', 'PUT', '127.0.0.1', '{\"title\":\"test\",\"description\":\"<p><br><\\/p>\",\"on_sale\":\"1\",\"_token\":\"Il2AwxUHQGiqKQ82sDOBSx2lofe1lezlMw5lRqe5\",\"_method\":\"PUT\"}', '2020-07-25 06:18:48', '2020-07-25 06:18:48');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 06:18:48', '2020-07-25 06:18:48');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-25 06:18:50', '2020-07-25 06:18:50');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 06:18:53', '2020-07-25 06:18:53');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 06:18:55', '2020-07-25 06:18:55');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-25 06:18:59', '2020-07-25 06:18:59');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:25:19', '2020-07-25 06:25:19');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:28:22', '2020-07-25 06:28:22');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:28:30', '2020-07-25 06:28:30');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:28:30', '2020-07-25 06:28:30');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:28:39', '2020-07-25 06:28:39');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:28:51', '2020-07-25 06:28:51');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:29:03', '2020-07-25 06:29:03');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:29:24', '2020-07-25 06:29:24');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:43:56', '2020-07-25 06:43:56');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:45:22', '2020-07-25 06:45:22');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:45:42', '2020-07-25 06:45:42');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:56:26', '2020-07-25 06:56:26');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:57:04', '2020-07-25 06:57:04');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-25 06:59:49', '2020-07-25 06:59:49');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-27 00:02:43', '2020-07-27 00:02:43');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-27 00:02:48', '2020-07-27 00:02:48');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-27 00:44:45', '2020-07-27 00:44:45');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-27 00:45:06', '2020-07-27 00:45:06');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-27 00:45:19', '2020-07-27 00:45:19');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"iPhone 11 Pro\",\"description\":\"<p>\\u5168\\u7f515g\\u9996\\u53d1\\uff0c\\u4ec5\\u6b64\\u4e00\\u5bb6\\u3002<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"\\u94f6\\u8272 128G\",\"description\":\"iPhone 11 Pro 128G\",\"price\":\"6888.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u94f6\\u8272 256G\",\"description\":\"iPhone 11 Pro 256G\",\"price\":\"7388.00\",\"stock\":\"60\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"W9ihKCPyc5jWoDiiOMDwaZk4kash91w5t6LrlrIF\",\"_method\":\"PUT\"}', '2020-07-27 00:46:26', '2020-07-27 00:46:26');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-27 00:46:26', '2020-07-27 00:46:26');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-27 00:46:28', '2020-07-27 00:46:28');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 00:46:30', '2020-07-27 00:46:30');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-27 00:46:36', '2020-07-27 00:46:36');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-27 01:04:43', '2020-07-27 01:04:43');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-27 01:05:00', '2020-07-27 01:05:00');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-27 01:06:00', '2020-07-27 01:06:00');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-27 01:06:26', '2020-07-27 01:06:26');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2020-07-27 01:07:13', '2020-07-27 01:07:13');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-27 01:11:03', '2020-07-27 01:11:03');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-27 01:11:03', '2020-07-27 01:11:03');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 01:11:06', '2020-07-27 01:11:06');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 01:11:08', '2020-07-27 01:11:08');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/products', 'POST', '127.0.0.1', '{\"title\":\"skype\",\"description\":\"<p>\\u4e00\\u6735\\u7ea2\\u82b1<\\/p>\",\"on_sale\":\"1\",\"_token\":\"8dlBKDoh85HbpLmCmeGTmOU4CIX4vOpOpIVpr7sK\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/products\"}', '2020-07-27 01:12:20', '2020-07-27 01:12:20');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-27 01:12:20', '2020-07-27 01:12:20');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 01:13:04', '2020-07-27 01:13:04');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-27 01:13:09', '2020-07-27 01:13:09');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 01:13:12', '2020-07-27 01:13:12');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 01:13:15', '2020-07-27 01:13:15');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 01:13:17', '2020-07-27 01:13:17');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-27 01:58:27', '2020-07-27 01:58:27');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-27 02:06:15', '2020-07-27 02:06:15');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-07-27 02:13:48', '2020-07-27 02:13:48');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-22 01:05:20', '2020-08-22 01:05:20');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:07:37', '2020-08-22 01:07:37');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:07:39', '2020-08-22 01:07:39');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:07:40', '2020-08-22 01:07:40');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:07:42', '2020-08-22 01:07:42');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:07:43', '2020-08-22 01:07:43');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:07:44', '2020-08-22 01:07:44');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:07:46', '2020-08-22 01:07:46');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:07:47', '2020-08-22 01:07:47');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:07:48', '2020-08-22 01:07:48');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:07:49', '2020-08-22 01:07:49');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:07:51', '2020-08-22 01:07:51');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:39:16', '2020-08-22 01:39:16');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:39:26', '2020-08-22 01:39:26');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:39:27', '2020-08-22 01:39:27');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:39:28', '2020-08-22 01:39:28');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:39:36', '2020-08-22 01:39:36');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:39:37', '2020-08-22 01:39:37');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:39:38', '2020-08-22 01:39:38');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:39:38', '2020-08-22 01:39:38');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"GlTZYATYNFOO0BW4ZDUbVOvfvwq4IjuIygJJQQ5U\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-08-22 01:40:12', '2020-08-22 01:40:12');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:40:12', '2020-08-22 01:40:12');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:42:42', '2020-08-22 01:42:42');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:42:43', '2020-08-22 01:42:43');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:42:46', '2020-08-22 01:42:46');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-22 01:42:50', '2020-08-22 01:42:50');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:42:54', '2020-08-22 01:42:54');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:43:07', '2020-08-22 01:43:07');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:43:07', '2020-08-22 01:43:07');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:43:12', '2020-08-22 01:43:12');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-cubes\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"GlTZYATYNFOO0BW4ZDUbVOvfvwq4IjuIygJJQQ5U\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.shop.com\\/admin\\/auth\\/menu\"}', '2020-08-22 01:43:43', '2020-08-22 01:43:43');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-22 01:43:43', '2020-08-22 01:43:43');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"GlTZYATYNFOO0BW4ZDUbVOvfvwq4IjuIygJJQQ5U\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-08-22 01:43:48', '2020-08-22 01:43:48');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:43:48', '2020-08-22 01:43:48');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-22 01:43:49', '2020-08-22 01:43:49');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:44:09', '2020-08-22 01:44:09');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:44:11', '2020-08-22 01:44:11');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:44:12', '2020-08-22 01:44:12');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 01:44:13', '2020-08-22 01:44:13');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 02:12:51', '2020-08-22 02:12:51');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 02:12:55', '2020-08-22 02:12:55');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-08-22 02:16:54', '2020-08-22 02:16:54');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-22 02:16:58', '2020-08-22 02:16:58');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-08-22 05:36:56', '2020-08-22 05:36:56');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-08-24 07:00:59', '2020-08-24 07:00:59');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-08-24 07:30:11', '2020-08-24 07:30:11');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-08-26 00:43:30', '2020-08-26 00:43:30');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/products', 'GET', '127.0.0.1', '[]', '2020-09-08 06:53:36', '2020-09-08 06:53:36');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', '用户管理', 'user', '', '/users*', '2020-07-24 06:01:55', '2020-07-24 06:01:55');

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2020-07-23 08:42:29', '2020-07-23 08:42:29');
INSERT INTO `admin_roles` VALUES ('2', '运营', 'operation', '2020-07-24 06:04:15', '2020-07-24 06:04:15');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '2', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '3', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '4', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '6', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_users` VALUES ('2', '2', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$nupJxGmnvAYK5vbaxh9bmuUXVrhJLhTjfmLqDm0dI.ndtez43CS2K', 'Administrator', null, 'dcffOOTdd5RaPJI1B2qaUPbIFRopRFeLvcFMJFiMA6y9AWslUUJoQYzaAR0g', '2020-07-23 08:42:29', '2020-07-23 08:42:29');
INSERT INTO `admin_users` VALUES ('2', 'operator', '$2y$10$OGNY7oBLQU0GiAMsBVn.ROb28qVFOSpvEFC6LhUs.yRiBlX/yuG9q', '运营', null, 'OOo0XkSJWnZBKGZwfXZvu3JdXF5fJhKNFfGX8S1Fenc2K2TrRMJeJL1IGcpa', '2020-07-24 06:20:50', '2020-07-24 06:20:50');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for cart_items
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_sku_id` bigint(20) unsigned NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_items_user_id_foreign` (`user_id`),
  KEY `cart_items_product_sku_id_foreign` (`product_sku_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cart_items
-- ----------------------------
INSERT INTO `cart_items` VALUES ('14', '1', '10', '1');
INSERT INTO `cart_items` VALUES ('12', '1', '9', '4');
INSERT INTO `cart_items` VALUES ('13', '1', '11', '3');
INSERT INTO `cart_items` VALUES ('11', '1', '22', '1');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2020_07_23_015853_create_user_addresses_table', '2');
INSERT INTO `migrations` VALUES ('5', '2016_01_04_173148_create_admin_tables', '3');
INSERT INTO `migrations` VALUES ('6', '2020_07_24_082833_create_products_table', '4');
INSERT INTO `migrations` VALUES ('7', '2020_07_24_082912_create_product_skus_table', '4');
INSERT INTO `migrations` VALUES ('8', '2020_08_24_064823_create_user_favorite_products_table', '5');
INSERT INTO `migrations` VALUES ('9', '2020_08_28_011453_create_orders_table', '6');
INSERT INTO `migrations` VALUES ('10', '2020_08_28_011519_create_order_items_table', '6');
INSERT INTO `migrations` VALUES ('11', '2020_08_28_024322_create_cart_items_table', '7');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `paid_at` datetime DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `refund_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `reviewed` tinyint(1) NOT NULL DEFAULT '0',
  `ship_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ship_data` text COLLATE utf8mb4_unicode_ci,
  `extra` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_no_unique` (`no`),
  UNIQUE KEY `orders_refund_no_unique` (`refund_no`),
  KEY `orders_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '20200828071102286224', '1', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u79e6\\u7687\\u5c9b\\u5e02\\u629a\\u5b81\\u533a\\u7b2c1\\u8857\\u9053\\u7b2c31\\u53f7\",\"zip\":500001,\"contact_name\":\"\\u6797\\u5fb7\\u5206\",\"contact_phone\":\"13551165151\"}', '70321.00', null, null, null, null, 'pending', null, '0', '0', 'pending', null, null, '2020-08-28 07:11:02', '2020-08-28 07:11:02');
INSERT INTO `orders` VALUES ('2', '20200908073240934328', '1', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u79e6\\u7687\\u5c9b\\u5e02\\u629a\\u5b81\\u533a\\u7b2c1\\u8857\\u9053\\u7b2c31\\u53f7\",\"zip\":500001,\"contact_name\":\"\\u6797\\u5fb7\\u5206\",\"contact_phone\":\"13551165151\"}', '13950.00', null, null, null, null, 'pending', null, '0', '0', 'pending', null, null, '2020-09-08 07:32:40', '2020-09-08 07:32:40');
INSERT INTO `orders` VALUES ('3', '20200908155955928994', '1', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u79e6\\u7687\\u5c9b\\u5e02\\u629a\\u5b81\\u533a\\u7b2c1\\u8857\\u9053\\u7b2c31\\u53f7\",\"zip\":500001,\"contact_name\":\"\\u6797\\u5fb7\\u5206\",\"contact_phone\":\"13551165151\"}', '2272.00', null, null, null, null, 'pending', null, '0', '0', 'pending', null, null, '2020-09-08 15:59:55', '2020-09-08 15:59:55');
INSERT INTO `orders` VALUES ('4', '20200908160349123949', '1', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u79e6\\u7687\\u5c9b\\u5e02\\u629a\\u5b81\\u533a\\u7b2c1\\u8857\\u9053\\u7b2c31\\u53f7\",\"zip\":500001,\"contact_name\":\"\\u6797\\u5fb7\\u5206\",\"contact_phone\":\"13551165151\"}', '48336.00', null, null, null, null, 'pending', null, '0', '0', 'pending', null, null, '2020-09-08 16:03:49', '2020-09-08 16:03:49');
INSERT INTO `orders` VALUES ('5', '20201103154728552297', '1', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u79e6\\u7687\\u5c9b\\u5e02\\u629a\\u5b81\\u533a\\u7b2c1\\u8857\\u9053\\u7b2c31\\u53f7\",\"zip\":500001,\"contact_name\":\"\\u6797\\u5fb7\\u5206\",\"contact_phone\":\"13551165151\"}', '864.00', null, null, null, null, 'pending', null, '0', '0', 'pending', null, null, '2020-11-03 15:47:28', '2020-11-03 15:47:28');

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `product_sku_id` bigint(20) unsigned NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `rating` int(10) unsigned DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_product_sku_id_foreign` (`product_sku_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES ('1', '1', '13', '31', '1', '2101.00', null, null, null);
INSERT INTO `order_items` VALUES ('2', '1', '16', '41', '10', '6822.00', null, null, null);
INSERT INTO `order_items` VALUES ('3', '2', '7', '13', '3', '4028.00', null, null, null);
INSERT INTO `order_items` VALUES ('4', '2', '7', '14', '1', '1866.00', null, null, null);
INSERT INTO `order_items` VALUES ('5', '3', '5', '8', '1', '2272.00', null, null, null);
INSERT INTO `order_items` VALUES ('6', '4', '7', '13', '12', '4028.00', null, null, null);
INSERT INTO `order_items` VALUES ('7', '5', '4', '4', '1', '864.00', null, null, null);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT '1',
  `rating` double(8,2) NOT NULL DEFAULT '5.00',
  `sold_count` int(10) unsigned NOT NULL DEFAULT '0',
  `review_count` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'iPhone 11 Pro', '<p>全网5g首发，仅此一家。</p>', 'images/test1.jpg', '0', '5.00', '0', '0', '6888.00', '2020-07-25 05:27:42', '2020-07-27 00:46:26');
INSERT INTO `products` VALUES ('2', 'test', '<p><br></p>', 'images/1b433ae58400cbd7b0e3e859f22f97f1.jpg', '0', '5.00', '0', '0', '0.00', '2020-07-25 05:50:49', '2020-07-25 06:18:48');
INSERT INTO `products` VALUES ('3', 'skype', '<p>一朵红花</p>', 'images/test.jpg', '0', '5.00', '0', '0', '0.00', '2020-07-27 01:12:20', '2020-07-27 01:12:20');
INSERT INTO `products` VALUES ('4', 'facilis', 'Consequatur consectetur unde autem expedita iusto ut ullam rerum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', '1', '2.00', '0', '0', '820.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('5', 'saepe', 'Eaque suscipit ipsum vel quo explicabo earum eveniet.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', '1', '2.00', '0', '0', '2272.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('6', 'sequi', 'Ullam assumenda tempora nulla dicta culpa qui nemo est.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '1.00', '0', '0', '4177.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('7', 'aut', 'Facilis sed ut officiis est.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', '1', '1.00', '0', '0', '1866.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('8', 'laudantium', 'Qui in cumque eum quaerat.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', '1', '5.00', '0', '0', '49.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('9', 'harum', 'Tempora itaque earum autem.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', '1', '1.00', '0', '0', '1278.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('10', 'qui', 'In sit ea architecto dolorum quam numquam possimus.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', '1', '3.00', '0', '0', '1178.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('11', 'voluptas', 'Similique voluptate rem tenetur suscipit ut.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', '1', '0.00', '0', '0', '1402.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('12', 'aut', 'Itaque autem autem et quae et.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', '1', '4.00', '0', '0', '775.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('13', 'culpa', 'Debitis cum cupiditate at qui maiores suscipit.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', '1', '1.00', '0', '0', '1173.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('14', 'debitis', 'Est qui tenetur est reiciendis.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', '1', '3.00', '0', '0', '2198.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('15', 'et', 'Consectetur consequuntur sapiente molestias qui voluptatem.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', '1', '2.00', '0', '0', '1587.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('16', 'corrupti', 'Totam corporis ad facilis repellendus velit consequatur.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', '1', '2.00', '0', '0', '6551.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('17', 'excepturi', 'Ullam aut libero possimus porro dolor enim corporis.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', '1', '3.00', '0', '0', '1693.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('18', 'repellat', 'Sunt sapiente consectetur aut esse enim.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '3.00', '0', '0', '1391.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('19', 'corporis', 'Repellat incidunt aut asperiores natus praesentium.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', '1', '2.00', '0', '0', '4025.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('20', 'quis', 'Veritatis id fugit eius velit accusantium ratione.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', '1', '5.00', '0', '0', '3273.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('21', 'autem', 'Rerum magni ut perspiciatis cum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', '1', '2.00', '0', '0', '775.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('22', 'earum', 'Doloribus assumenda hic deleniti molestiae dolorum occaecati.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', '1', '5.00', '0', '0', '3643.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('23', 'fugit', 'Illum qui nihil consequuntur.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', '1', '0.00', '0', '0', '2450.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('24', 'accusamus', 'Ratione ducimus animi dolor corporis nihil et vitae.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '4.00', '0', '0', '1872.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('25', 'nihil', 'Quod quibusdam voluptas et est quidem officia aut.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', '1', '3.00', '0', '0', '377.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('26', 'et', 'Veniam temporibus iure est quis.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', '1', '4.00', '0', '0', '5123.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('27', 'vel', 'Neque sunt nulla quibusdam ea enim.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', '1', '2.00', '0', '0', '4004.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('28', 'atque', 'Est magni quia ex quia ea soluta harum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', '1', '3.00', '0', '0', '1082.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('29', 'sequi', 'Odit vel nesciunt dolor repellendus iusto rem.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', '1', '5.00', '0', '0', '2415.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('30', 'possimus', 'Eaque provident maxime corporis rem.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', '1', '0.00', '0', '0', '2512.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('31', 'nihil', 'Rem enim est consequatur et voluptates sed amet.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', '1', '2.00', '0', '0', '978.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('32', 'consequatur', 'Quibusdam odio id ut.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '3.00', '0', '0', '776.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `products` VALUES ('33', 'excepturi', 'Deserunt asperiores odit dolor voluptate ipsa.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', '1', '3.00', '0', '0', '446.00', '2020-07-27 02:43:14', '2020-07-27 02:43:14');

-- ----------------------------
-- Table structure for product_skus
-- ----------------------------
DROP TABLE IF EXISTS `product_skus`;
CREATE TABLE `product_skus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_skus_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_skus
-- ----------------------------
INSERT INTO `product_skus` VALUES ('1', '银色 128G', 'iPhone 11 Pro 128G', '6888.00', '100', '1', '2020-07-25 05:30:10', '2020-07-25 05:30:10');
INSERT INTO `product_skus` VALUES ('2', '银色 256G', 'iPhone 11 Pro 256G', '7388.00', '60', '1', '2020-07-25 05:30:10', '2020-07-25 05:30:10');
INSERT INTO `product_skus` VALUES ('3', 'minima', 'Aperiam dolor ut voluptatem porro commodi aut cum.', '3850.00', '82448', '4', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('4', 'consequatur', 'Ut aut dolor quia.', '864.00', '29627', '4', '2020-07-27 02:43:14', '2020-11-03 15:47:28');
INSERT INTO `product_skus` VALUES ('5', 'qui', 'Distinctio sed a sed quod.', '820.00', '52696', '4', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('6', 'occaecati', 'Doloribus mollitia architecto occaecati vel ex rerum quo.', '4451.00', '31856', '5', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('7', 'nihil', 'Accusamus voluptas earum rerum fugiat.', '9125.00', '26190', '5', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('8', 'nostrum', 'Sunt at ea maxime atque qui hic qui eligendi.', '2272.00', '33185', '5', '2020-07-27 02:43:14', '2020-09-08 15:59:55');
INSERT INTO `product_skus` VALUES ('9', 'inventore', 'In neque eum fugit odio.', '8139.00', '43116', '6', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('10', 'velit', 'Quis soluta natus corporis hic.', '4177.00', '76789', '6', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('11', 'aut', 'Molestiae aliquam porro ex labore.', '5805.00', '8812', '6', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('12', 'beatae', 'Odio delectus non sit consequatur exercitationem.', '3445.00', '16248', '7', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('13', 'aspernatur', 'Et voluptates iusto voluptatem minima sit voluptas.', '4028.00', '62573', '7', '2020-07-27 02:43:14', '2020-09-08 16:03:49');
INSERT INTO `product_skus` VALUES ('14', 'fugit', 'Delectus neque debitis aliquam velit cupiditate libero.', '1866.00', '19732', '7', '2020-07-27 02:43:14', '2020-09-08 07:32:40');
INSERT INTO `product_skus` VALUES ('15', 'eum', 'Ab animi ipsa vero recusandae voluptatibus quis.', '3890.00', '88311', '8', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('16', 'quis', 'Excepturi aut rem omnis labore.', '1240.00', '52360', '8', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('17', 'incidunt', 'Magni et ut cupiditate possimus in.', '49.00', '69125', '8', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('18', 'nobis', 'Ut consequatur similique illo neque.', '1278.00', '41309', '9', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('19', 'delectus', 'Dolores possimus dolorem eos aperiam eos officiis aspernatur.', '1974.00', '71186', '9', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('20', 'voluptatem', 'Voluptates et totam possimus et deleniti.', '8411.00', '4777', '9', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('21', 'at', 'Veniam placeat id sit amet.', '4820.00', '98576', '10', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('22', 'velit', 'Suscipit vel voluptatem labore praesentium nostrum.', '5346.00', '34821', '10', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('23', 'est', 'Tempora et harum in maxime qui voluptatibus enim.', '1178.00', '83148', '10', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('24', 'est', 'Dolorem et minus sed tempora reiciendis.', '8486.00', '63855', '11', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('25', 'iusto', 'Est quos molestiae dignissimos modi quia.', '1402.00', '23203', '11', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('26', 'autem', 'Et et quisquam sint itaque voluptates asperiores rem.', '6261.00', '12897', '11', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('27', 'sed', 'Voluptates culpa ab ipsum veritatis nulla rerum.', '9740.00', '75256', '12', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('28', 'recusandae', 'Voluptas ut reiciendis hic et velit.', '9658.00', '2791', '12', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('29', 'voluptatem', 'Ut earum necessitatibus aut porro eos asperiores et.', '775.00', '83066', '12', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('30', 'magni', 'Inventore soluta eos ipsam a qui minima.', '1173.00', '31589', '13', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('31', 'sunt', 'In similique rerum quidem ipsa.', '2101.00', '55661', '13', '2020-07-27 02:43:14', '2020-08-28 07:11:02');
INSERT INTO `product_skus` VALUES ('32', 'vitae', 'Non nobis sed rerum id.', '4390.00', '23657', '13', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('33', 'saepe', 'Eaque a et maxime.', '3962.00', '34946', '14', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('34', 'laboriosam', 'Tempora ea ipsum temporibus sunt qui.', '2198.00', '41135', '14', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('35', 'consectetur', 'Voluptas aut doloribus molestias deserunt inventore velit.', '7637.00', '31033', '14', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('36', 'modi', 'Ab qui beatae quia eligendi.', '9209.00', '18818', '15', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('37', 'architecto', 'Enim officia et itaque iusto impedit nemo.', '1587.00', '46268', '15', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('38', 'repudiandae', 'Deleniti velit ducimus sit quibusdam ad temporibus.', '2738.00', '37915', '15', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('39', 'veniam', 'Ratione vitae aut ipsum.', '7497.00', '54996', '16', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('40', 'mollitia', 'Illum eum assumenda corporis reprehenderit alias facere neque.', '6551.00', '88985', '16', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('41', 'consequuntur', 'Quasi quam omnis eos asperiores doloremque.', '6822.00', '86388', '16', '2020-07-27 02:43:14', '2020-08-28 07:11:02');
INSERT INTO `product_skus` VALUES ('42', 'occaecati', 'Placeat minus quasi officiis et.', '8191.00', '93916', '17', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('43', 'accusamus', 'Ut ab ratione architecto at accusantium quos.', '1693.00', '27539', '17', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('44', 'eligendi', 'Ducimus odit tempora et natus maxime.', '6035.00', '78822', '17', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('45', 'vel', 'Aut magnam beatae a laborum dolores optio.', '6392.00', '89221', '18', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('46', 'asperiores', 'Nisi blanditiis tempora laboriosam nostrum.', '1391.00', '2254', '18', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('47', 'qui', 'Reiciendis quidem incidunt recusandae autem.', '4110.00', '22276', '18', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('48', 'facere', 'Ipsum repudiandae nesciunt doloribus nihil et.', '6740.00', '47622', '19', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('49', 'dolor', 'Impedit exercitationem voluptas aperiam eos qui unde commodi quia.', '5442.00', '76014', '19', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('50', 'aliquid', 'Voluptatum dolorem natus corrupti quis.', '4025.00', '54840', '19', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('51', 'laborum', 'Veniam deserunt et molestiae modi.', '3273.00', '66831', '20', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('52', 'nam', 'Aut consequuntur beatae cumque qui molestiae rem laudantium quos.', '8234.00', '87594', '20', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('53', 'quo', 'Ducimus laudantium laborum tempora exercitationem enim molestiae et.', '9736.00', '11392', '20', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('54', 'mollitia', 'Aut quaerat nesciunt quia iusto omnis.', '7071.00', '66346', '21', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('55', 'iure', 'Est deleniti accusantium cupiditate hic occaecati itaque magnam possimus.', '9939.00', '69228', '21', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('56', 'dolores', 'Temporibus placeat ratione similique quos ad eum.', '775.00', '46202', '21', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('57', 'eligendi', 'Eveniet est quidem recusandae ut cumque sit optio.', '3643.00', '14218', '22', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('58', 'laborum', 'Impedit nobis amet earum porro eum.', '8872.00', '94821', '22', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('59', 'quis', 'Numquam officia aut dolore et.', '7817.00', '59010', '22', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('60', 'animi', 'Maxime exercitationem qui nostrum.', '2450.00', '94710', '23', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('61', 'nulla', 'Suscipit debitis velit ratione quia sequi sint aut.', '3756.00', '44183', '23', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('62', 'numquam', 'Eum corporis ut ut laboriosam ipsum vero.', '7420.00', '52124', '23', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('63', 'omnis', 'Quis inventore dolor rerum minus culpa qui aliquam.', '1872.00', '64301', '24', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('64', 'quidem', 'Hic quis ullam repudiandae in dolorum.', '3092.00', '71454', '24', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('65', 'placeat', 'Sequi voluptates autem qui sequi vel amet.', '3969.00', '90856', '24', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('66', 'quos', 'Accusamus repellat ipsum ratione earum omnis.', '6304.00', '24422', '25', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('67', 'aut', 'Nisi iure impedit consequuntur sunt maiores.', '2833.00', '51846', '25', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('68', 'similique', 'Ea non sint sequi.', '377.00', '11859', '25', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('69', 'quod', 'Ad molestiae temporibus consequatur numquam sit impedit.', '5511.00', '48733', '26', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('70', 'veniam', 'Corrupti quo ea a voluptatem consequatur.', '5123.00', '57785', '26', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('71', 'nisi', 'Voluptatem voluptatibus ut dolor earum.', '6684.00', '7974', '26', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('72', 'earum', 'Quidem dolore quia molestiae eum possimus.', '9697.00', '62210', '27', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('73', 'veniam', 'Necessitatibus recusandae dolores nulla.', '4004.00', '52846', '27', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('74', 'cupiditate', 'Molestiae dignissimos voluptatem laboriosam voluptatem aut.', '6611.00', '98189', '27', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('75', 'quae', 'Amet rerum ex autem facere qui qui assumenda et.', '9155.00', '87835', '28', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('76', 'nesciunt', 'Dolorem modi aspernatur qui ut molestias ullam dolore officiis.', '1082.00', '62862', '28', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('77', 'molestias', 'Sunt omnis earum eligendi tenetur tenetur veritatis.', '3234.00', '46476', '28', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('78', 'ab', 'Perferendis enim nobis facilis ratione.', '2415.00', '19941', '29', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('79', 'est', 'Dolor quia ea fugiat nemo nihil.', '5315.00', '5041', '29', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('80', 'voluptatem', 'Laborum modi numquam voluptas repellat corporis.', '8061.00', '55137', '29', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('81', 'veritatis', 'Aliquam id voluptatem inventore qui eum magni.', '2512.00', '35303', '30', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('82', 'quia', 'Mollitia harum quia corrupti perferendis molestiae quis.', '9806.00', '66683', '30', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('83', 'fugiat', 'Praesentium itaque impedit aut nobis inventore temporibus.', '3554.00', '23633', '30', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('84', 'et', 'Consequatur consequatur nemo enim sit pariatur sed qui doloribus.', '5974.00', '89025', '31', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('85', 'maiores', 'Nesciunt voluptatum et quo nostrum nisi velit excepturi.', '2692.00', '91620', '31', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('86', 'sit', 'Voluptatem non voluptates dolorem beatae ut eaque voluptas.', '978.00', '86609', '31', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('87', 'eos', 'Neque vel exercitationem sit corrupti dignissimos.', '1399.00', '61221', '32', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('88', 'expedita', 'Ratione quaerat minus et qui.', '9883.00', '13174', '32', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('89', 'unde', 'Ut optio explicabo sunt excepturi.', '776.00', '34578', '32', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('90', 'eum', 'Qui cupiditate in voluptas hic quis fugit quia.', '446.00', '35481', '33', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('91', 'facere', 'Qui autem quo est molestias omnis reprehenderit id est.', '5073.00', '13084', '33', '2020-07-27 02:43:14', '2020-07-27 02:43:14');
INSERT INTO `product_skus` VALUES ('92', 'numquam', 'Repellendus alias id consequatur et.', '2242.00', '33170', '33', '2020-07-27 02:43:14', '2020-07-27 02:43:14');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_id_unique` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'open', '791541657@qq.com', '2020-07-24 14:22:11', '$2y$10$LNCNmCoLQ4ht4qL7nX7Wb.yvZXkAPiAli8cip0.ItMnUyfIfYvdKm', 'hjlP0tnil0Zg4Uzri6UO0OaFKa6cT0P0TJ70FtDEr9CP91PGvELlPrs80Kd1', '2020-07-22 09:08:05', '2020-07-22 09:08:05');
INSERT INTO `users` VALUES ('2', '哈密瓜', 'tom@sjfood.us', null, '$2y$10$J/2d1sVDmXAUpHAGXlJFueqOJw8q87Oevab9Iv8xluWL9enKnWKri', null, '2020-07-23 09:20:53', '2020-07-23 09:20:53');
INSERT INTO `users` VALUES ('3', '苹果', 'wing@sjfood.us', null, '$2y$10$sMDmXY56pPDI3swRsKFn5ukM27F6/KAximFMlHRnBc09ShcEYYLbq', null, '2020-07-23 09:22:20', '2020-07-23 09:22:20');
INSERT INTO `users` VALUES ('4', '雪梨', 'open@qq.com', null, '$2y$10$5L2A1DOHD2wzCMICvNJxeOfFHrBDFt8PtuAsg49d9TJ.Q09g/0NIq', null, '2020-07-23 09:23:32', '2020-07-23 09:23:32');
INSERT INTO `users` VALUES ('5', '哈灯', 'open1@qq.com', null, '$2y$10$1nIWOMvnGzl/H4as5ZifbOs5SXFTqQZyAexW6d8cjGP1bn7UWohpm', null, '2020-07-23 09:24:51', '2020-07-23 09:24:51');
INSERT INTO `users` VALUES ('6', '哈灯', 'open12@qq.com', null, '$2y$10$prnqKaHl9pbSmb12SJKxI./fzO18yNm2GKOuHnrK7kcQE/4YzSmBC', null, '2020-07-23 09:25:38', '2020-07-23 09:25:38');
INSERT INTO `users` VALUES ('7', '哈灯', 'open123@qq.com', null, '$2y$10$5rGW4LJOB.ZtQnzSQPMMl.YOfBdIu4NXEP5hpS.YZFlhwwUJhVzei', null, '2020-07-23 09:26:47', '2020-07-23 09:26:47');
INSERT INTO `users` VALUES ('8', '哈灯', 'open1232@qq.com', null, '$2y$10$95KPbVa7vfMxYJMwno3yFe1zTDSp37iWP94Bb.vnBw2DZ6dIMokaC', null, '2020-07-23 09:28:05', '2020-07-23 09:28:05');
INSERT INTO `users` VALUES ('9', '哈灯', 'open13222@qq.com', null, '$2y$10$4tipNkIi5jCpji66i.riYOjoueapEmUlUGDoW0BcgxItIXVefFF1S', null, '2020-07-23 09:29:54', '2020-07-23 09:29:54');
INSERT INTO `users` VALUES ('10', 'open', '79411116@qq.com', null, '$2y$10$tKohiWFwvCFYvP0NEP0QAufgXDMCjNF9mDlGoam9b08rgwOJuC.K.', null, '2020-07-23 09:33:54', '2020-07-23 09:33:54');
INSERT INTO `users` VALUES ('11', '哈密瓜1', '7915421657@qq.com', null, '$2y$10$xMxLWlNtlWt7n.MfZO2Qj.d5sebdHH2BrSumP2FW79DA.bb.Vl.0a', null, '2020-07-23 09:36:00', '2020-07-23 09:36:00');
INSERT INTO `users` VALUES ('12', '哈密瓜11', '79154216572@qq.com', null, '$2y$10$d5LNTxHEDTttPLrRi6PFpOHKkGfX37BT4Gw01A8b3yz2gCTb.zNZ.', null, '2020-07-23 09:37:04', '2020-07-23 09:37:04');
INSERT INTO `users` VALUES ('13', '哈密瓜11', '7915422216572@qq.com', null, '$2y$10$lM1EgW3L0Nw4DjcpMNT0T.8poiLk90RjaBvwbcKMmWniV3DUg25Xu', null, '2020-07-23 09:39:26', '2020-07-23 09:39:26');
INSERT INTO `users` VALUES ('14', 'open1', '796572@qq.com', null, '$2y$10$..XiyTGXfL0F8A8ArJ5mCuPPOo/TFgR78UDyRT2A.gz4vgAmaMHGS', null, '2020-07-24 00:22:17', '2020-07-24 00:22:17');
INSERT INTO `users` VALUES ('15', 'open1', '796111572@qq.com', null, '$2y$10$.hxCxw79e6vdpJoSLUkqJ.dZBZtJrDo6BdwBubJQiXyOATjJhyani', null, '2020-07-24 00:24:05', '2020-07-24 00:24:05');
INSERT INTO `users` VALUES ('16', 'open12', '7961115172@qq.com', null, '$2y$10$5lNRYmd0A01yhRCRNrYAFeK7gcrcATVk0veoMsyqhKawd.M0jmB/C', null, '2020-07-24 00:25:20', '2020-07-24 00:25:20');
INSERT INTO `users` VALUES ('17', 'open12', '79611151722@qq.com', null, '$2y$10$HQPhMr/U.RCreQIpMWMbHukzGzvoepUD6mkUAoYEHwpUqkSeaCu9a', null, '2020-07-24 00:28:22', '2020-07-24 00:28:22');
INSERT INTO `users` VALUES ('18', 'open', 'tom11@sjfood.us', null, '$2y$10$tNiiLxjOsYjuKRifI02eiuZWkr.f7gEs4zCD3KHFYVnRL9fSOvOOi', null, '2020-07-24 00:32:44', '2020-07-24 00:32:44');
INSERT INTO `users` VALUES ('19', '111', 'tom22@sjfood.us', null, '$2y$10$FMjcGImFTFjMwKOdPEjNROVygifVwPRixT3GggW05fkeDGivVjLpW', null, '2020-07-24 01:12:36', '2020-07-24 01:12:36');
INSERT INTO `users` VALUES ('20', '111', 'tom222@sjfood.us', null, '$2y$10$uUeFULX489/BsGXZ/KbAte.801qObQJS4mJC8bEklqxvBAvAEKRsy', null, '2020-07-24 01:14:47', '2020-07-24 01:14:47');
INSERT INTO `users` VALUES ('21', 'open1', '79154216257@qq.com', null, '$2y$10$u7kekEWhlD2qxRIluR.LZuvlFgJi2g353OBkn.SX4SxaJ0ru47lq2', null, '2020-07-24 01:15:21', '2020-07-24 01:15:21');
INSERT INTO `users` VALUES ('22', 'open1', '7915421611257@qq.com', null, '$2y$10$cjYXgi0IfTpxgxdDvzCS6OkyiPDoEBG/xY6mqUxAGk/cKSCJDgPKa', null, '2020-07-24 01:17:21', '2020-07-24 01:17:21');
INSERT INTO `users` VALUES ('23', 'open1', '7912257@qq.com', null, '$2y$10$xZEtgyYPLdXiGUZ2BQEaa.YTP3VZs68.7Ir1KHqcOYAl1QhPVq76C', null, '2020-07-24 01:18:48', '2020-07-24 01:18:48');
INSERT INTO `users` VALUES ('24', 'open', '1tom222@sjfood.us', null, '$2y$10$Gd.D2OpQuo3BxgbY5d7/mOAq.oLd.JYDXwwUoHAI4Sjj2kw2BJhNu', null, '2020-07-24 01:21:10', '2020-07-24 01:21:10');
INSERT INTO `users` VALUES ('25', 'open', '1t2om222@sjfood.us', null, '$2y$10$URte278my/zXTN4GJLZ5r.AN3CNs.0l6djV/m9gjtJDGjDuddEyc2', null, '2020-07-24 01:22:48', '2020-07-24 01:22:48');
INSERT INTO `users` VALUES ('26', 'open', '1t22om222@sjfood.us', null, '$2y$10$trqm26Y4E0rteuyQ09nGg.bUx2W0.i4PsHWnppxzOpiaaycPeW7XW', null, '2020-07-24 01:27:09', '2020-07-24 01:27:09');
INSERT INTO `users` VALUES ('27', 'open', '791121541657@qq.com', null, '$2y$10$GXo8zvQSJDzNJRfeXYcbZuXnE3FTv.IMJbF0P.Rsjm4JMq1HJhStC', null, '2020-07-24 01:27:54', '2020-07-24 01:27:54');
INSERT INTO `users` VALUES ('28', 'open', '791657@qq.com', null, '$2y$10$Ji1Wr5MHxbIyOILFXkT45OyPGC8KzGMsOxx7L7n/NoLdw64BYsjdi', null, '2020-07-24 01:29:01', '2020-07-24 01:29:01');
INSERT INTO `users` VALUES ('29', 'open', '1232456@qq.com', null, '$2y$10$eymgl2GsLEwfTRG9vhfJh./oHIXz1EnrW0c6CtT5GxbLdDgQpbySy', null, '2020-07-24 01:35:45', '2020-07-24 01:35:45');
INSERT INTO `users` VALUES ('30', 'open', '112221@qq.com', null, '$2y$10$/0F0zVy0RuiRczNGYYc.HehMusYFUBmAl/QNDDQmfytZRZGkTJlnG', null, '2020-07-24 01:49:29', '2020-07-24 01:49:29');

-- ----------------------------
-- Table structure for user_addresses
-- ----------------------------
DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) unsigned NOT NULL,
  `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_addresses_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------
INSERT INTO `user_addresses` VALUES ('7', '1', '河北省', '秦皇岛市', '抚宁区', '第1街道第31号', '500001', '林德分', '13551165151', '2020-11-03 15:47:28', '2020-08-26 01:26:48', '2020-11-03 15:47:28');
INSERT INTO `user_addresses` VALUES ('2', '1', '江苏省', '苏州市', '相城区', '第84街道第143号', '102800', '文秀珍', '15357423564', null, '2020-07-23 03:04:05', '2020-07-23 03:04:05');
INSERT INTO `user_addresses` VALUES ('6', '30', '北京市', '市辖区', '西城区', '金湾街道101', '513511', '关', '18813208588', null, '2020-07-24 01:50:37', '2020-07-24 01:50:37');
INSERT INTO `user_addresses` VALUES ('4', '1', '内蒙古自治区', '赤峰市', '松山区', '金湾街道101', '513511', '关特', '18813208588', null, '2020-07-23 07:52:50', '2020-07-23 07:52:50');
INSERT INTO `user_addresses` VALUES ('5', '1', '广东省', '深圳市', '福田区', '第21街道第811号', '821500', '褚丹', '17011732887', null, '2020-07-23 08:27:39', '2020-07-23 08:27:39');

-- ----------------------------
-- Table structure for user_favorite_products
-- ----------------------------
DROP TABLE IF EXISTS `user_favorite_products`;
CREATE TABLE `user_favorite_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_favorite_products_user_id_foreign` (`user_id`),
  KEY `user_favorite_products_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_favorite_products
-- ----------------------------
INSERT INTO `user_favorite_products` VALUES ('1', '1', '7', '2020-08-24 07:01:13', '2020-08-24 07:01:13');
INSERT INTO `user_favorite_products` VALUES ('2', '1', '11', '2020-08-24 07:03:11', '2020-08-24 07:03:11');
INSERT INTO `user_favorite_products` VALUES ('11', '1', '1', '2020-08-24 08:01:50', '2020-08-24 08:01:50');
INSERT INTO `user_favorite_products` VALUES ('17', '1', '6', '2020-09-08 07:18:22', '2020-09-08 07:18:22');
