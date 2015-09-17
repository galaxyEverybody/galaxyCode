/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : fmalldb

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-17 09:29:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_borrow_house`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_borrow_house`;
CREATE TABLE `ecs_borrow_house` (
  `house_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `house_add` varchar(256) NOT NULL COMMENT '房产所在地',
  `house_loan` varchar(256) NOT NULL COMMENT '是否有房贷',
  `house_type` varchar(256) NOT NULL COMMENT '产权类型',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY  (`house_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_borrow_house
-- ----------------------------
