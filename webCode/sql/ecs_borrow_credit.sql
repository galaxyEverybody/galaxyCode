/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : fmalldb

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-17 09:29:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_borrow_credit`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_borrow_credit`;
CREATE TABLE `ecs_borrow_credit` (
  `credit_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `cardright` varchar(64) NOT NULL COMMENT '身份证正面照',
  `cardleft` varchar(64) NOT NULL COMMENT '身份证反面照',
  `cardhead` varchar(64) NOT NULL COMMENT '手持身份证照',
  `contract` varchar(64) NOT NULL COMMENT '劳动合同',
  `certification` varchar(64) NOT NULL COMMENT '在职证明',
  `workcertification` varchar(64) NOT NULL COMMENT '工作证',
  `prove` varchar(64) NOT NULL COMMENT '征信报告',
  `bankprove` varchar(64) NOT NULL COMMENT '银行流水单',
  `comscreen` varchar(64) NOT NULL COMMENT '网银电脑截屏',
  `addtime` int(11) NOT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY  (`credit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_borrow_credit
-- ----------------------------
