/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : fmalldb

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-17 09:29:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_borrow_car`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_borrow_car`;
CREATE TABLE `ecs_borrow_car` (
  `car_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `carinfo` varchar(64) NOT NULL COMMENT '车辆信息',
  `carstyle` varchar(64) NOT NULL COMMENT '车辆类型',
  `cartransfer` varchar(64) NOT NULL COMMENT '过户时间',
  `carnature` varchar(64) NOT NULL COMMENT '使用性质',
  `carhold` varchar(64) NOT NULL COMMENT '车辆抵押',
  `carhistory` varchar(64) NOT NULL COMMENT '信用历史',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY  (`car_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_borrow_car
-- ----------------------------
