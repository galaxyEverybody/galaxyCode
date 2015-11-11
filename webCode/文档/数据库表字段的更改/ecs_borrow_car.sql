/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : fmalldb

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-11-11 14:26:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_borrow_car`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_borrow_car`;
CREATE TABLE `ecs_borrow_car` (
  `car_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `car_name` varchar(64) NOT NULL COMMENT '姓名',
  `car_phone` varchar(20) NOT NULL COMMENT '电话',
  `car_address` varchar(256) NOT NULL COMMENT '车辆所属地点',
  `car_borrownum` int(11) NOT NULL COMMENT '借款金额',
  `car_borrowtime` int(11) NOT NULL COMMENT '借款期限',
  `car_buytime` varchar(32) NOT NULL COMMENT '购车时间',
  `car_carnum` int(11) NOT NULL COMMENT '车辆购置价格',
  `status` tinyint(4) NOT NULL COMMENT '信息状态',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `is_del` tinyint(4) NOT NULL COMMENT '是否被删除',
  PRIMARY KEY  (`car_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_borrow_car
-- ----------------------------
