/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : fmalldb

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-12-24 15:28:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_verify`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_verify`;
CREATE TABLE `ecs_verify` (
  `verify_id` int(11) NOT NULL auto_increment,
  `phonenum` varchar(11) NOT NULL COMMENT '手机号',
  `verify_flag` varchar(10) NOT NULL COMMENT '验证码类别',
  `verify_code` varchar(32) NOT NULL COMMENT 'md5验证码',
  `is_use` tinyint(4) NOT NULL COMMENT '使用标识0：未使用1：使用',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY  (`verify_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_verify
-- ----------------------------
