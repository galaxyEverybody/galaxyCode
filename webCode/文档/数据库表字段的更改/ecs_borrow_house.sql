/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : fmalldb

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-11-20 14:17:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_borrow_house`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_borrow_house`;
CREATE TABLE `ecs_borrow_house` (
  `house_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `housename` varchar(64) NOT NULL COMMENT '房贷借款人姓名',
  `housephone` varchar(32) NOT NULL COMMENT '联系电话',
  `houseborrownum` int(11) NOT NULL COMMENT '借款金额',
  `house_add` varchar(64) NOT NULL COMMENT '房屋住址',
  `house_use` varchar(256) NOT NULL COMMENT '借款用途',
  `status` tinyint(4) NOT NULL COMMENT '信息状态',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `is_del` tinyint(4) NOT NULL COMMENT '是否删除标识1：删除',
  PRIMARY KEY  (`house_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_borrow_house
-- ----------------------------
