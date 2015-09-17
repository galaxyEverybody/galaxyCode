/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : fmalldb

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-17 18:02:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_check_idcard`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_check_idcard`;
CREATE TABLE `ecs_check_idcard` (
  `realid` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `userealname` varchar(64) NOT NULL COMMENT '真实姓名',
  `isok` tinyint(4) NOT NULL COMMENT '查询是否成功0：不成功1：成功',
  `code` tinyint(4) NOT NULL COMMENT '是否一致1：一致',
  `err` tinyint(4) NOT NULL COMMENT '是否符合号码格式0：不符合1：符合',
  `address` varchar(256) NOT NULL COMMENT '籍贯',
  `sex` varchar(10) NOT NULL COMMENT '性别',
  `birthday` varchar(32) NOT NULL COMMENT '出生日期',
  `checktimes` tinyint(4) NOT NULL COMMENT '查询次数',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY  (`realid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_check_idcard
-- ----------------------------
INSERT INTO `ecs_check_idcard` VALUES ('16', '23', '王铮', '1', '1', '0', '北京市市辖县延庆县', 'M', '1985-12-06', '1', '1442451242');
INSERT INTO `ecs_check_idcard` VALUES ('17', '23', '崔继延', '1', '3', '-1', '', '', '', '2', '1442451355');
INSERT INTO `ecs_check_idcard` VALUES ('18', '23', '赵捷杰', '1', '1', '0', '北京市市辖县延庆县', 'M', '1983-07-02', '2', '1442451462');
