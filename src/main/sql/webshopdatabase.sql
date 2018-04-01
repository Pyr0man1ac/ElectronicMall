/*
Navicat MySQL Data Transfer

Source Server         : WebShopDataBase
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : webshopdatabase

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-04-01 12:15:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for buyer
-- ----------------------------
DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `u_nikename` varchar(255) DEFAULT NULL,
  `u_address` varchar(255) DEFAULT NULL,
  `u_phone` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `unique` (`u_nikename`,`userName`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buyer
-- ----------------------------
INSERT INTO `buyer` VALUES ('1', '123', '骄傲的洋白菜', null, '17664090000');

-- ----------------------------
-- Table structure for commend
-- ----------------------------
DROP TABLE IF EXISTS `commend`;
CREATE TABLE `commend` (
  `id` int(11) NOT NULL,
  `p_id` varchar(255) NOT NULL,
  `p_info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commend
-- ----------------------------

-- ----------------------------
-- Table structure for saler
-- ----------------------------
DROP TABLE IF EXISTS `saler`;
CREATE TABLE `saler` (
  `shop_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '店铺号，唯一',
  `userName` varchar(255) NOT NULL COMMENT '店铺拥有者账号名',
  `shop_name` varchar(255) NOT NULL COMMENT '店铺名，唯一',
  `shop_info` varchar(255) DEFAULT NULL COMMENT '店铺描述',
  PRIMARY KEY (`shop_id`),
  UNIQUE KEY `unique` (`userName`,`shop_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of saler
-- ----------------------------
INSERT INTO `saler` VALUES ('00001', 'Benefactor', '贝菲特', 'Benz');
INSERT INTO `saler` VALUES ('00002', 'Bravado', '冒险家', 'Dodge');
INSERT INTO `saler` VALUES ('00003', 'Dewbauchee', '浪子', 'Aston Martin');
INSERT INTO `saler` VALUES ('00004', 'Karin', '卡林', 'Toyota');
INSERT INTO `saler` VALUES ('00005', 'Albany', '亚班尼', 'Cadillac');
INSERT INTO `saler` VALUES ('00006', 'Dundreary', '敦追里', 'Mercury');
INSERT INTO `saler` VALUES ('00007', 'Vapid', '威皮', 'Ford');
INSERT INTO `saler` VALUES ('00008', 'Lampadati', '兰帕达提', 'Maserati');
INSERT INTO `saler` VALUES ('00009', 'Declasse', '绝致', 'Chevolet');
INSERT INTO `saler` VALUES ('00010', 'xuefo', '雪佛', 'Chevolet');
INSERT INTO `saler` VALUES ('00011', 'Vulcar', '福狮', 'Volkswagen');
INSERT INTO `saler` VALUES ('00012', 'Obey', '奥北', 'Audi');
INSERT INTO `saler` VALUES ('00013', 'Zirconium', '塞科尼安', null);
INSERT INTO `saler` VALUES ('00014', 'Enus', '埃努斯', 'Maybach');
INSERT INTO `saler` VALUES ('00015', 'Ocelot', '奥斯洛', 'Jaguar');
INSERT INTO `saler` VALUES ('00016', 'Ubermacht', '绝品', 'BMW');
INSERT INTO `saler` VALUES ('00017', 'baoluokan', '包洛坎', 'Hyundai');
INSERT INTO `saler` VALUES ('00018', 'Annis', '爱尼仕', 'Nissan');
INSERT INTO `saler` VALUES ('00019', 'Schyster', '塞勒斯特', 'Chrysler');
INSERT INTO `saler` VALUES ('00020', 'Maibatsu', '麦霸子', 'Japan');
INSERT INTO `saler` VALUES ('00021', 'Feister', '菲斯特', 'Porsche');
INSERT INTO `saler` VALUES ('00022', 'Dinka', '丁卡', 'Honda');
INSERT INTO `saler` VALUES ('00023', 'Grotti', '古罗帝', 'Ferrari');
INSERT INTO `saler` VALUES ('00024', 'Imponte', '英奔堤', 'Pontiac');
INSERT INTO `saler` VALUES ('00025', 'Pegassi', '佩嘉西', 'Lamborchini');

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `p_id` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_count` int(5) NOT NULL,
  `p_price` float(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p_name` (`p_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcart
-- ----------------------------
INSERT INTO `shopcart` VALUES ('1', '', 'ubi_359550', 'RainBow6:Siege', '1', '248.00');
INSERT INTO `shopcart` VALUES ('3', '', 'ubi_552520', 'FarCry5', '1', '248.00');

-- ----------------------------
-- Table structure for s_ubi
-- ----------------------------
DROP TABLE IF EXISTS `s_ubi`;
CREATE TABLE `s_ubi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) unsigned zerofill NOT NULL COMMENT '商品编号',
  `p_name` varchar(255) NOT NULL COMMENT '商品名称',
  `p_quantity` int(5) NOT NULL COMMENT '商品数量',
  `p_info` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `p_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`p_id`,`p_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_ubi
-- ----------------------------
INSERT INTO `s_ubi` VALUES ('1', '00000552520', 'FarCry5', '1000', '孤岛惊魂5 CDKey', '248.00');
INSERT INTO `s_ubi` VALUES ('2', '00000359550', 'RainBow6:Siege', '999', '彩虹六号：围攻 CDKey', '168.00');
INSERT INTO `s_ubi` VALUES ('3', '00000582160', 'Assassin\'s Creed Origins', '1200', '刺客信条：起源 CDKey', '248.00');

-- ----------------------------
-- Table structure for s_uniqlo
-- ----------------------------
DROP TABLE IF EXISTS `s_uniqlo`;
CREATE TABLE `s_uniqlo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(5) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_quantity` int(5) NOT NULL,
  `p_info` varchar(255) DEFAULT NULL,
  `p_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`p_id`,`p_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_uniqlo
-- ----------------------------
INSERT INTO `s_uniqlo` VALUES ('1', '405198', '男式牛仔夹克 405198', '1000', '春季新款 男式牛仔夹克', '299.00');
INSERT INTO `s_uniqlo` VALUES ('2', '404124', '女式牛仔夹克 404124', '999', '春季新款 女式牛仔夹克', '199.00');

-- ----------------------------
-- Table structure for s_xxx
-- ----------------------------
DROP TABLE IF EXISTS `s_xxx`;
CREATE TABLE `s_xxx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_quantity` int(11) NOT NULL,
  `p_info` varchar(255) DEFAULT NULL,
  `p_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p_id` (`p_id`),
  UNIQUE KEY `p_name` (`p_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_xxx
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `userName` varchar(255) NOT NULL COMMENT '用户名（登录凭证）',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  `role` varchar(255) NOT NULL COMMENT '用户角色',
  `nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userName`,`nickname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', 'admin', '');
INSERT INTO `user` VALUES ('2', 'ubi', 'ubi', 'saler', '');
INSERT INTO `user` VALUES ('3', 'friversh', '123', 'buyer', '');
INSERT INTO `user` VALUES ('5', 'uniqlo', 'uniqlo', 'saler', '');
INSERT INTO `user` VALUES ('7', 'xxx', 'xxx', 'saler', null);
INSERT INTO `user` VALUES ('8', 'xxx', 'xxx', 'saler', null);
