/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : fmalldb

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-17 09:23:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_borrow_basic`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_borrow_basic`;
CREATE TABLE `ecs_borrow_basic` (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `realname` varchar(64) NOT NULL COMMENT '真实姓名',
  `idcard` varchar(32) NOT NULL COMMENT '身份证号',
  `telephone` varchar(32) NOT NULL COMMENT '手机号',
  `sex` tinyint(4) NOT NULL COMMENT '性别1：男2：女',
  `age` tinyint(4) NOT NULL COMMENT '年龄',
  `provinceplace` tinyint(4) NOT NULL COMMENT '所在省份',
  `cityplace` tinyint(4) NOT NULL COMMENT '籍贯城市',
  `countryplace` tinyint(4) NOT NULL COMMENT '籍贯县',
  `address` varchar(256) NOT NULL COMMENT '居住地址',
  `zipcode` int(11) NOT NULL COMMENT '所在地邮编',
  `educational` varchar(64) NOT NULL COMMENT '最高学历',
  `studioyear` smallint(11) NOT NULL COMMENT '入学年份',
  `studiomonth` tinyint(4) NOT NULL COMMENT '入学月份',
  `studioday` tinyint(4) NOT NULL COMMENT '入学日',
  `graduate` varchar(256) NOT NULL COMMENT '毕业院校',
  `finitional` varchar(32) NOT NULL COMMENT '亲属关系的关系',
  `relationname` varchar(64) NOT NULL COMMENT '直系亲属姓名',
  `relationphone` varchar(32) NOT NULL COMMENT '直系亲属电话',
  `friendname` varchar(64) NOT NULL COMMENT '朋友的姓名',
  `friendphone` varchar(32) NOT NULL COMMENT '朋友的电话',
  `otherfinitional` varchar(32) NOT NULL COMMENT '其它关系的关系'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_borrow_basic
-- ----------------------------
