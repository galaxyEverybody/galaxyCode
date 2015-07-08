/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : fmalldb

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-07-08 18:32:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_account_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_account_log`;
CREATE TABLE `ecs_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY  (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_account_log
-- ----------------------------
INSERT INTO `ecs_account_log` VALUES ('1', '5', '1100000.00', '0.00', '0', '0', '1242140736', '11', '2');
INSERT INTO `ecs_account_log` VALUES ('2', '3', '400000.00', '0.00', '0', '0', '1242140752', '21312', '2');
INSERT INTO `ecs_account_log` VALUES ('3', '2', '300000.00', '0.00', '0', '0', '1242140775', '300000', '2');
INSERT INTO `ecs_account_log` VALUES ('4', '1', '50000.00', '0.00', '0', '0', '1242140811', '50', '2');
INSERT INTO `ecs_account_log` VALUES ('5', '5', '0.00', '10000.00', '0', '0', '1242140853', '32', '2');
INSERT INTO `ecs_account_log` VALUES ('6', '1', '-400.00', '0.00', '0', '0', '1242142274', '支付订单 2009051298180', '99');
INSERT INTO `ecs_account_log` VALUES ('7', '1', '-975.00', '0.00', '0', '0', '1242142324', '支付订单 2009051255518', '99');
INSERT INTO `ecs_account_log` VALUES ('8', '1', '0.00', '0.00', '960', '960', '1242142390', '订单 2009051255518 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('9', '1', '0.00', '0.00', '385', '385', '1242142432', '订单 2009051298180 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('10', '1', '-2310.00', '0.00', '0', '0', '1242142549', '支付订单 2009051267570', '99');
INSERT INTO `ecs_account_log` VALUES ('11', '1', '0.00', '0.00', '2300', '2300', '1242142589', '订单 2009051267570 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('12', '1', '-5989.00', '0.00', '0', '0', '1242142681', '支付订单 2009051230249', '99');
INSERT INTO `ecs_account_log` VALUES ('13', '1', '-8610.00', '0.00', '0', '0', '1242142808', '支付订单 2009051276258', '99');
INSERT INTO `ecs_account_log` VALUES ('14', '1', '0.00', '0.00', '0', '-1', '1242142910', '参加夺宝奇兵夺宝奇兵之夏新N7 ', '99');
INSERT INTO `ecs_account_log` VALUES ('15', '1', '0.00', '0.00', '0', '-1', '1242142935', '参加夺宝奇兵夺宝奇兵之诺基亚N96 ', '99');
INSERT INTO `ecs_account_log` VALUES ('16', '1', '0.00', '0.00', '0', '100000', '1242143867', '奖励', '2');
INSERT INTO `ecs_account_log` VALUES ('17', '1', '-10.00', '0.00', '0', '0', '1242143920', '支付订单 2009051268194', '99');
INSERT INTO `ecs_account_log` VALUES ('18', '1', '0.00', '0.00', '0', '-17000', '1242143920', '支付订单 2009051268194', '99');
INSERT INTO `ecs_account_log` VALUES ('19', '1', '0.00', '0.00', '-960', '-960', '1242144185', '由于退货或未发货操作，退回订单 2009051255518 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('20', '1', '975.00', '0.00', '0', '0', '1242144185', '由于取消、无效或退货操作，退回支付订单 2009051255518 时使用的预付款', '99');
INSERT INTO `ecs_account_log` VALUES ('21', '1', '0.00', '0.00', '960', '960', '1242576445', '订单 2009051719232 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('22', '3', '-1000.00', '0.00', '0', '0', '1242973612', '追加使用余额支付订单：2009051227085', '99');
INSERT INTO `ecs_account_log` VALUES ('23', '1', '-13806.60', '0.00', '0', '0', '1242976699', '支付订单 2009052224892', '99');
INSERT INTO `ecs_account_log` VALUES ('24', '1', '0.00', '0.00', '14045', '14045', '1242976740', '订单 2009052224892 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('25', '1', '0.00', '0.00', '-2300', '-2300', '1245045334', '由于退货或未发货操作，退回订单 2009051267570 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('26', '1', '2310.00', '0.00', '0', '0', '1245045334', '由于取消、无效或退货操作，退回支付订单 2009051267570 时使用的预付款', '99');
INSERT INTO `ecs_account_log` VALUES ('27', '1', '0.00', '0.00', '17044', '17044', '1245045443', '订单 2009061585887 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('28', '1', '17054.00', '0.00', '0', '0', '1245045515', '1', '99');
INSERT INTO `ecs_account_log` VALUES ('29', '1', '0.00', '0.00', '-17044', '-17044', '1245045515', '由于退货或未发货操作，退回订单 2009061585887 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('30', '1', '-3196.30', '0.00', '0', '0', '1245045672', '支付订单 2009061525429', '99');
INSERT INTO `ecs_account_log` VALUES ('31', '1', '-1910.00', '0.00', '0', '0', '1245047978', '支付订单 2009061503335', '99');
INSERT INTO `ecs_account_log` VALUES ('32', '1', '0.00', '0.00', '1900', '1900', '1245048189', '订单 2009061503335 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('33', '1', '0.00', '0.00', '-1900', '-1900', '1245048212', '由于退货或未发货操作，退回订单 2009061503335 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('34', '1', '1910.00', '0.00', '0', '0', '1245048212', '由于取消、无效或退货操作，退回支付订单 2009061503335 时使用的预付款', '99');
INSERT INTO `ecs_account_log` VALUES ('35', '1', '-500.00', '0.00', '0', '0', '1245048585', '支付订单 2009061510313', '99');
INSERT INTO `ecs_account_log` VALUES ('36', '6', '0.00', '0.00', '0', '8388607', '1402439037', '1', '2');
INSERT INTO `ecs_account_log` VALUES ('37', '6', '0.00', '0.00', '327', '327', '1406141920', '订单 2014070752549 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('38', '6', '0.00', '0.00', '1386', '1386', '1406141936', '订单 2014060932408 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('39', '3', '0.00', '0.00', '2000', '2000', '1406141997', '订单 2009051210718 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('40', '3', '0.00', '0.00', '623', '623', '1406142018', '订单 2009051299732 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('41', '3', '0.00', '0.00', '-623', '-623', '1406142205', '由于退货或未发货操作，退回订单 2009051299732 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('42', '3', '0.00', '0.00', '623', '623', '1406142208', '订单 2009051299732 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('43', '3', '0.00', '0.00', '-2000', '-2000', '1406142212', '由于退货或未发货操作，退回订单 2009051210718 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('44', '3', '0.00', '0.00', '2000', '2000', '1406142216', '订单 2009051210718 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('45', '6', '0.00', '0.00', '-1386', '-1386', '1406142226', '由于退货或未发货操作，退回订单 2014060932408 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('46', '6', '0.00', '0.00', '1386', '1386', '1406142229', '订单 2014060932408 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('47', '6', '0.00', '0.00', '-327', '-327', '1406142238', '由于退货或未发货操作，退回订单 2014070752549 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('48', '6', '0.00', '0.00', '327', '327', '1406142241', '订单 2014070752549 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('49', '6', '0.00', '0.00', '488', '488', '1406763639', '订单 2014073126550 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('50', '6', '0.00', '0.00', '8082', '8082', '1407369195', '订单 2014080751421 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('51', '6', '0.00', '0.00', '26473', '26473', '1408039002', '订单 2014081591904 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('52', '6', '0.00', '0.00', '-26473', '-26473', '1408317454', '由于退货或未发货操作，退回订单 2014081591904 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('53', '6', '0.00', '0.00', '26473', '26473', '1408317460', '订单 2014081591904 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('54', '6', '0.00', '0.00', '-8082', '-8082', '1408390265', '由于退货或未发货操作，退回订单 2014080751421 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('55', '6', '0.00', '0.00', '8082', '8082', '1408390270', '订单 2014080751421 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('56', '6', '0.00', '0.00', '-488', '-488', '1408390308', '由于退货或未发货操作，退回订单 2014073126550 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('57', '6', '0.00', '0.00', '488', '488', '1408390312', '订单 2014073126550 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('58', '12', '9999.00', '9999.00', '9999', '9999', '1429219393', '1', '2');
INSERT INTO `ecs_account_log` VALUES ('59', '12', '-1774.20', '0.00', '0', '0', '1429470414', '支付订单 2015042062748', '99');
INSERT INTO `ecs_account_log` VALUES ('60', '12', '-2014.00', '0.00', '0', '0', '1429650843', '支付订单 2015042234613', '99');
INSERT INTO `ecs_account_log` VALUES ('61', '12', '-1774.20', '0.00', '0', '0', '1429743057', '支付订单 2015042307523', '99');
INSERT INTO `ecs_account_log` VALUES ('62', '12', '0.00', '0.00', '5898', '5898', '1430244106', '订单 2015042925814 赠送的积分', '99');

-- ----------------------------
-- Table structure for `ecs_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad`;
CREATE TABLE `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL auto_increment,
  `position_id` smallint(5) unsigned NOT NULL default '0',
  `media_type` tinyint(3) unsigned NOT NULL default '0',
  `ad_name` varchar(60) NOT NULL default '',
  `ad_link` varchar(255) NOT NULL default '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL default '0',
  `end_time` int(11) NOT NULL default '0',
  `link_man` varchar(60) NOT NULL default '',
  `link_email` varchar(60) NOT NULL default '',
  `link_phone` varchar(60) NOT NULL default '',
  `click_count` mediumint(8) unsigned NOT NULL default '0',
  `enabled` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad
-- ----------------------------
INSERT INTO `ecs_ad` VALUES ('2', '2', '0', '首页幻灯片下方广告1', '', '1427927814438603486.jpg', '1427875200', '1534838400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('3', '2', '0', '首页幻灯片下方广告2', '', '1427927822448629232.jpg', '1406016000', '1566374400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('4', '2', '0', '首页幻灯片下方广告3', '', '1427927835973250095.jpg', '1406016000', '1566374400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('5', '2', '0', '首页幻灯片下方广告4', '', '1427927843229141419.jpg', '1406016000', '1534838400', '', '', '', '2', '1');
INSERT INTO `ecs_ad` VALUES ('6', '2', '0', '首页幻灯片下方广告5', '', '1436313340316532944.jpg', '1406016000', '1534838400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('7', '2', '0', '首页幻灯片下方广告6', '', '1436313360053259392.jpg', '1406016000', '1537516800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('8', '2', '0', '首页幻灯片下方广告7', '', '1436313373793405212.jpg', '1406016000', '1534838400', '', '', '', '2', '1');
INSERT INTO `ecs_ad` VALUES ('9', '2', '0', '首页幻灯片下方广告8', '', '1427995872579315443.jpg', '1406016000', '1534838400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('110', '7', '0', '生活橱窗下方通栏广告位（宽）', '', '1427996706715209626.jpg', '1427961600', '1554192000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('11', '3', '0', '活动广告（宽）', '', '1429816350429918553.jpg', '1406102400', '1534924800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('12', '4', '0', '特色1', '#', '1436313254841086276.jpg', '1406102400', '1534924800', '品牌街', '', '', '6', '1');
INSERT INTO `ecs_ad` VALUES ('13', '4', '0', '特色2', '', '1436313281461141272.jpg', '1406102400', '1566460800', '京东预售', '', '', '3', '1');
INSERT INTO `ecs_ad` VALUES ('14', '4', '0', '特色3', '', '1436313309174852825.jpg', '1406102400', '1534924800', '好东西', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('15', '4', '0', '特色4', '', '1436313329214663886.jpg', '1406102400', '1598083200', '玩逼格', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('16', '4', '0', '特色5', '', '1436313523054896981.jpg', '1406102400', '1566460800', '京东首发', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('17', '4', '0', '特色6', '', '1436313555738037976.jpg', '1406102400', '1534924800', '优惠券', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('18', '4', '0', '特色7', '', '1436313576538545559.jpg', '1406102400', '1534924800', '星剧星品', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('19', '4', '0', '特色8', '', '1436313390209523285.jpg', '1406102400', '1534924800', '定期送', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('20', '6', '0', '活动广告（窄）', '', '1436313700421748040.jpg', '1406102400', '1598083200', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('212', '36', '0', '图书、音像、数字商品左侧导航广告1', '', '1429742448744557498.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('213', '36', '0', '图书、音像、数字商品左侧导航广告2', '', '1429742459707244051.jpg', '1429689600', '1526976000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('214', '36', '0', '家用电器左侧导航广告1', '', '1429742573446791919.jpg', '1429689600', '1526976000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('215', '36', '0', '家用电器左侧导航广告2', '', '1429742582953129916.jpg', '1429689600', '1526976000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('216', '36', '0', '手机、数码、京东通信左侧导航广告1', '', '1429742603118947776.jpg', '1429689600', '1526976000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('217', '36', '0', '手机、数码、京东通信左侧导航广告2', '', '1429742612102765569.jpg', '1429689600', '1526976000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('218', '36', '0', '电脑、办公左侧导航广告1', '', '1429742631210533680.jpg', '1429689600', '1526976000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('219', '36', '0', '电脑、办公左侧导航广告2', '', '1429742640796658243.jpg', '1429689600', '1526976000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('200', '23', '0', '生活电器分类右侧幻灯片广告1', '', '1429739140903047069.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('201', '23', '0', '生活电器分类右侧幻灯片广告2', '', '1429739151968584612.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('202', '23', '0', '生活电器分类右侧幻灯片广告3', '', '1429739161798952615.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('203', '22', '0', '个护健康分类左侧广告', '', '1429739226987449023.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('204', '23', '0', '个护健康分类右侧幻灯片广告1', '', '1429739241267556086.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('205', '23', '0', '个护健康分类右侧幻灯片广告2', '', '1429739250987794846.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('206', '23', '0', '个护健康分类右侧幻灯片广告3', '', '1429739259371045005.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('207', '35', '0', '家用电器顶级分类页幻灯片广告1', '', '1429739604028528637.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('208', '35', '0', '家用电器顶级分类页幻灯片广告2', '', '1429739616242928570.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('209', '35', '0', '家用电器顶级分类页幻灯片广告3', '', '1429739625290830400.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('210', '35', '0', '家用电器顶级分类页幻灯片广告4', '', '1429739635202283219.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('211', '35', '0', '家用电器顶级分类页幻灯片广告5', '', '1429739644874351542.jpg', '1429689600', '1526976000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('151', '15', '0', '电脑、办公分类下商品右侧小广告1', '', '1429728231366514956.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('152', '15', '0', '电脑、办公分类下商品右侧小广告2', '', '1429728254073189104.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('153', '15', '0', '电脑、办公分类下商品右侧小广告3', '', '1429728267306952394.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('154', '15', '0', '电脑、办公分类下商品右侧小广告4', '', '1429728278867576760.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('155', '16', '0', '电脑、办公分类下商品右广告1', '', '1429728328074525964.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('150', '17', '0', '电脑、办公分类下商品右侧幻灯片广告4', '', '1429728157337379273.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('149', '17', '0', '电脑、办公分类下商品右侧幻灯片广告3', '', '1429728145624108767.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('148', '17', '0', '电脑、办公分类下商品右侧幻灯片广告2', '', '1429728133868055568.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('147', '17', '0', '电脑、办公分类下商品右侧幻灯片广告1', '', '1429728123496333874.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('222', '36', '0', '家居、家具、家装、厨具左侧导航广告1', '', '1429742782301954745.jpg', '1429689600', '1526976000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('223', '36', '0', '家居、家具、家装、厨具左侧导航广告2', '', '1429742791496173659.jpg', '1429689600', '1526976000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('224', '36', '0', '服饰内衣、珠宝首饰左侧导航广告1', '', '1429742807292696875.jpg', '1429689600', '1526976000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('225', '36', '0', '服饰内衣、珠宝首饰左侧导航广告2', '', '1429742815088769585.jpg', '1429689600', '1526976000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('196', '23', '0', '厨房电器分类右侧幻灯片广告1', '', '1429737932336221415.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('197', '23', '0', '厨房电器分类右侧幻灯片广告2', '', '1429737944954012099.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('198', '23', '0', '厨房电器分类右侧幻灯片广告3', '', '1429737954351334159.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('199', '22', '0', '生活电器分类左侧广告', '', '1429739126495174062.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('112', '15', '0', '家用电器分类下商品右侧小广告2', '', '1429727725507008511.jpg', '1427961600', '1554192000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('111', '15', '0', '家用电器分类下商品右侧小广告1', '', '1429727715917267087.jpg', '1427961600', '1554192000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('102', '14', '0', '家用电器分类下商品左广告', '', '1429723141004755715.jpg', '1407916800', '1536739200', '', '', '', '4', '1');
INSERT INTO `ecs_ad` VALUES ('103', '14', '0', '电脑、办公分类下商品左广告', '', '1429728014070313378.jpg', '1407916800', '1568275200', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('104', '14', '0', '服饰内衣、珠宝首饰分类下商品左广告', '', '1429729413820554255.jpg', '1407916800', '1536739200', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('105', '14', '0', '个护化妆分类下商品左广告', '', '1407979544685008229.jpg', '1407916800', '1536739200', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('106', '14', '0', '家居、家具、家装、厨具分类下商品左广告', '', '1429730708720322562.jpg', '1407916800', '1536739200', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('107', '14', '0', '母婴、玩具乐器分类下商品左广告', '', '1429734904994078627.jpg', '1407916800', '1536739200', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('108', '14', '0', '营养保健分类下商品左广告', '', '1407979760080639244.jpg', '1407916800', '1536739200', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('109', '14', '0', '图书、音像、数字商品分类下商品左广告', '', '1407979672230626512.jpg', '1407916800', '1539331200', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('113', '15', '0', '家用电器分类下商品右侧小广告3', '', '1429727737905299309.jpg', '1427961600', '1554192000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('114', '15', '0', '家用电器分类下商品右侧小广告4', '', '1429727748131471132.jpg', '1427961600', '1554192000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('115', '16', '0', '家用电器分类下商品右广告1', '', '1429727823264003322.jpg', '1427961600', '1554192000', '', '', '', '2', '1');
INSERT INTO `ecs_ad` VALUES ('116', '16', '0', '家用电器分类下商品右广告2', '', '1429727831212199545.jpg', '1427961600', '1554192000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('117', '16', '0', '家用电器分类下商品右广告3', '', '1429727840718882624.jpg', '1427961600', '1554192000', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('118', '16', '0', '家用电器分类下商品右广告4', '', '1429727851423297224.jpg', '1427961600', '1554192000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('119', '17', '0', '家用电器分类下商品右侧幻灯片广告1', '', '1429723180645215405.jpg', '1427961600', '1554192000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('120', '17', '0', '家用电器分类下商品右侧幻灯片广告2', '', '1429723202481295752.jpg', '1427961600', '1554192000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('121', '17', '0', '家用电器分类下商品右侧幻灯片广告3', '', '1429723211983486728.jpg', '1427961600', '1554192000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('122', '17', '0', '家用电器分类下商品右侧幻灯片广告4', '', '1429723223861644420.jpg', '1427961600', '1554192000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('123', '12', '0', '顶部横幅广告（宽）', '', '1428447485013036623.jpg', '1428393600', '1523088000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('124', '13', '0', '顶部横幅广告（窄）', '', '1428447678703564485.jpg', '1428393600', '1523088000', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('125', '18', '0', '首页疯狂秒杀下广告1', '', '1428626091541192405.jpg', '1428566400', '1523260800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('126', '18', '0', '首页疯狂秒杀下广告2', '', '1428626112173167832.jpg', '1428566400', '1523260800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('127', '18', '0', '首页疯狂秒杀下广告3', '', '1428626124234424499.jpg', '1428566400', '1523260800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('128', '22', '0', '大 家 电分类左侧广告', '', '1428878336401636586.jpg', '1428825600', '1523520000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('129', '23', '0', '大 家 电分类右侧幻灯片广告1', '', '1428884028995814023.jpg', '1428825600', '1523520000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('130', '23', '0', '大 家 电分类右侧幻灯片广告2', '', '1428884039892435324.jpg', '1428825600', '1523520000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('131', '23', '0', '大 家 电分类右侧幻灯片广告3', '', '1428884058784939759.jpg', '1428825600', '1523520000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('195', '22', '0', '厨房电器分类左侧广告', '', '1429737824206735380.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('132', '24', '0', '登录页广告', '', '1429488889525102898.jpg', '1429430400', '1555660800', '', '', '', '2', '1');
INSERT INTO `ecs_ad` VALUES ('133', '25', '0', '团购列表幻灯片广告一', '', '1429637649636950969.jpg', '1429603200', '1524297600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('134', '26', '0', '团购列表幻灯片广告二', '', '1429637663065064701.jpg', '1429603200', '1555833600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('135', '27', '0', '团购列表幻灯片广告三', '', '1429637679312971466.jpg', '1429603200', '1524297600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('136', '28', '0', '团购列表幻灯片广告四', '', '1429637695982614394.jpg', '1429603200', '1524297600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('137', '29', '0', '团购列表幻灯片广告五', '', '1429637712685491764.jpg', '1429603200', '1555833600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('138', '30', '0', '团购列表幻灯片下广告1', '', '1429639725037411592.jpg', '1429603200', '1524297600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('139', '30', '0', '团购列表幻灯片下广告2', '', '1429639737280842178.jpg', '1429603200', '1555833600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('140', '30', '0', '团购列表幻灯片下广告3', '', '1429639749300186342.jpg', '1429603200', '1555833600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('141', '31', '0', '团购列表幻灯片右侧广告1', '', '1429641331860286688.jpg', '1429603200', '1524297600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('142', '31', '0', '团购列表幻灯片右侧广告2', '', '1429641342931244488.jpg', '1429603200', '1524297600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('143', '31', '0', '团购列表幻灯片右侧广告3', '', '1429641352077109808.jpg', '1429603200', '1524297600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('144', '32', '0', '团购列表底部广告', '', '1429645496287687772.jpg', '1429603200', '1555833600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('145', '33', '0', '团购详情右侧广告', '', '1429657568591002170.jpg', '1429603200', '1524297600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('146', '34', '0', '团购详情底部广告', '', '1429657591777668708.png', '1429603200', '1524297600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('156', '16', '0', '电脑、办公分类下商品右广告2', '', '1429728343252494573.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('157', '16', '0', '电脑、办公分类下商品右广告3', '', '1429728361515475882.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('158', '16', '0', '电脑、办公分类下商品右广告4', '', '1429728373763986875.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('159', '17', '0', '服饰内衣、珠宝首饰分类下商品右侧幻灯片广告1', '', '1429729450761511582.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('160', '17', '0', '服饰内衣、珠宝首饰分类下商品右侧幻灯片广告2', '', '1429729463265033064.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('161', '17', '0', '服饰内衣、珠宝首饰分类下商品右侧幻灯片广告3', '', '1429729474250957433.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('162', '17', '0', '服饰内衣、珠宝首饰分类下商品右侧幻灯片广告4', '', '1429729485020245339.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('163', '15', '0', '服饰内衣、珠宝首饰分类下商品右侧小广告1', '', '1429729589524361312.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('164', '15', '0', '服饰内衣、珠宝首饰分类下商品右侧小广告2', '', '1429729599763420980.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('165', '15', '0', '服饰内衣、珠宝首饰分类下商品右侧小广告3', '', '1429729608085926542.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('166', '15', '0', '服饰内衣、珠宝首饰分类下商品右侧小广告4', '', '1429729617212375549.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('167', '16', '0', '服饰内衣、珠宝首饰分类下商品右广告1', '', '1429729647063729606.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('168', '16', '0', '服饰内衣、珠宝首饰分类下商品右广告2', '', '1429729658285258847.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('169', '16', '0', '服饰内衣、珠宝首饰分类下商品右广告3', '', '1429729669866962851.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('170', '16', '0', '服饰内衣、珠宝首饰分类下商品右广告4', '', '1429729680135550018.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('171', '17', '0', '家居、家具、家装、厨具分类下商品右侧幻灯片广告1', '', '1429730723000142836.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('172', '17', '0', '家居、家具、家装、厨具分类下商品右侧幻灯片广告2', '', '1429730732822416242.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('173', '17', '0', '家居、家具、家装、厨具分类下商品右侧幻灯片广告3', '', '1429730746620952569.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('174', '17', '0', '家居、家具、家装、厨具分类下商品右侧幻灯片广告4', '', '1429730758420613334.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('175', '15', '0', '家居、家具、家装、厨具分类下商品右侧小广告1', '', '1429730786050541563.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('176', '15', '0', '家居、家具、家装、厨具分类下商品右侧小广告2', '', '1429730797056732224.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('177', '15', '0', '家居、家具、家装、厨具分类下商品右侧小广告3', '', '1429730813927060201.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('178', '15', '0', '家居、家具、家装、厨具分类下商品右侧小广告4', '', '1429730824922157770.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('179', '16', '0', '家居、家具、家装、厨具分类下商品右广告1', '', '1429730919519116904.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('180', '16', '0', '家居、家具、家装、厨具分类下商品右广告2', '', '1429730936238036660.jpg', '1429689600', '1524384000', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('181', '16', '0', '家居、家具、家装、厨具分类下商品右广告3', '', '1429730947943741771.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('182', '16', '0', '家居、家具、家装、厨具分类下商品右广告4', '', '1429730959168230545.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('183', '17', '0', '母婴、玩具乐器分类下商品右侧幻灯片广告1', '', '1429734957232689128.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('184', '17', '0', '母婴、玩具乐器分类下商品右侧幻灯片广告2', '', '1429734967104551974.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('185', '17', '0', '母婴、玩具乐器分类下商品右侧幻灯片广告3', '', '1429734988062488351.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('186', '17', '0', '母婴、玩具乐器分类下商品右侧幻灯片广告4', '', '1429735000926943937.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('187', '15', '0', '母婴、玩具乐器分类下商品右侧小广告1', '', '1429735019692761183.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('188', '15', '0', '母婴、玩具乐器分类下商品右侧小广告2', '', '1429735029451094238.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('189', '15', '0', '母婴、玩具乐器分类下商品右侧小广告3', '', '1429735042698063024.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('190', '15', '0', '母婴、玩具乐器分类下商品右侧小广告4', '', '1429735053413724993.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('191', '16', '0', '母婴、玩具乐器分类下商品右广告1', '', '1429735083707132583.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('192', '16', '0', '母婴、玩具乐器分类下商品右广告2', '', '1429735093326304393.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('193', '16', '0', '母婴、玩具乐器分类下商品右广告3', '', '1429735105606834421.jpg', '1429689600', '1524384000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('194', '16', '0', '母婴、玩具乐器分类下商品右广告4', '', '1429735117699581578.jpg', '1429689600', '1524384000', '', '', '', '0', '1');

-- ----------------------------
-- Table structure for `ecs_admin_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_action`;
CREATE TABLE `ecs_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL auto_increment,
  `parent_id` tinyint(3) unsigned NOT NULL default '0',
  `action_code` varchar(20) NOT NULL default '',
  `relevance` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_action
-- ----------------------------
INSERT INTO `ecs_admin_action` VALUES ('1', '0', 'goods', '');
INSERT INTO `ecs_admin_action` VALUES ('2', '0', 'cms_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('3', '0', 'users_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('4', '0', 'priv_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('5', '0', 'sys_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('6', '0', 'order_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('7', '0', 'promotion', '');
INSERT INTO `ecs_admin_action` VALUES ('8', '0', 'email', '');
INSERT INTO `ecs_admin_action` VALUES ('9', '0', 'templates_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('10', '0', 'db_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('11', '0', 'sms_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('21', '1', 'goods_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('22', '1', 'remove_back', '');
INSERT INTO `ecs_admin_action` VALUES ('23', '1', 'cat_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('24', '1', 'cat_drop', 'cat_manage');
INSERT INTO `ecs_admin_action` VALUES ('25', '1', 'attr_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('26', '1', 'brand_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('27', '1', 'comment_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('84', '1', 'tag_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('30', '2', 'article_cat', '');
INSERT INTO `ecs_admin_action` VALUES ('31', '2', 'article_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('32', '2', 'shopinfo_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('33', '2', 'shophelp_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('34', '2', 'vote_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('35', '7', 'topic_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('74', '4', 'template_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('73', '3', 'feedback_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('38', '3', 'integrate_users', '');
INSERT INTO `ecs_admin_action` VALUES ('39', '3', 'sync_users', 'integrate_users');
INSERT INTO `ecs_admin_action` VALUES ('40', '3', 'users_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('41', '3', 'users_drop', 'users_manage');
INSERT INTO `ecs_admin_action` VALUES ('42', '3', 'user_rank', '');
INSERT INTO `ecs_admin_action` VALUES ('85', '3', 'surplus_manage', 'account_manage');
INSERT INTO `ecs_admin_action` VALUES ('43', '4', 'admin_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('44', '4', 'admin_drop', 'admin_manage');
INSERT INTO `ecs_admin_action` VALUES ('45', '4', 'allot_priv', 'admin_manage');
INSERT INTO `ecs_admin_action` VALUES ('46', '4', 'logs_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('47', '4', 'logs_drop', 'logs_manage');
INSERT INTO `ecs_admin_action` VALUES ('48', '5', 'shop_config', '');
INSERT INTO `ecs_admin_action` VALUES ('49', '5', 'ship_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('50', '5', 'payment', '');
INSERT INTO `ecs_admin_action` VALUES ('51', '5', 'shiparea_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('52', '5', 'area_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('53', '6', 'order_os_edit', '');
INSERT INTO `ecs_admin_action` VALUES ('54', '6', 'order_ps_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('55', '6', 'order_ss_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('56', '6', 'order_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('57', '6', 'order_view', '');
INSERT INTO `ecs_admin_action` VALUES ('58', '6', 'order_view_finished', '');
INSERT INTO `ecs_admin_action` VALUES ('59', '6', 'repay_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('60', '6', 'booking', '');
INSERT INTO `ecs_admin_action` VALUES ('61', '6', 'sale_order_stats', '');
INSERT INTO `ecs_admin_action` VALUES ('62', '6', 'client_flow_stats', '');
INSERT INTO `ecs_admin_action` VALUES ('78', '7', 'snatch_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('83', '7', 'ad_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('80', '7', 'gift_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('81', '7', 'card_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('70', '1', 'goods_type', '');
INSERT INTO `ecs_admin_action` VALUES ('82', '7', 'pack', '');
INSERT INTO `ecs_admin_action` VALUES ('79', '7', 'bonus_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('75', '5', 'friendlink', '');
INSERT INTO `ecs_admin_action` VALUES ('76', '5', 'db_backup', '');
INSERT INTO `ecs_admin_action` VALUES ('77', '5', 'db_renew', 'db_backup');
INSERT INTO `ecs_admin_action` VALUES ('86', '4', 'agency_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('87', '3', 'account_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('88', '5', 'flash_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('89', '5', 'navigator', '');
INSERT INTO `ecs_admin_action` VALUES ('90', '7', 'auction', '');
INSERT INTO `ecs_admin_action` VALUES ('91', '7', 'group_by', '');
INSERT INTO `ecs_admin_action` VALUES ('92', '7', 'favourable', '');
INSERT INTO `ecs_admin_action` VALUES ('93', '7', 'whole_sale', '');
INSERT INTO `ecs_admin_action` VALUES ('94', '1', 'goods_auto', '');
INSERT INTO `ecs_admin_action` VALUES ('95', '2', 'article_auto', '');
INSERT INTO `ecs_admin_action` VALUES ('96', '5', 'cron', '');
INSERT INTO `ecs_admin_action` VALUES ('97', '5', 'affiliate', '');
INSERT INTO `ecs_admin_action` VALUES ('98', '5', 'affiliate_ck', '');
INSERT INTO `ecs_admin_action` VALUES ('99', '8', 'attention_list', '');
INSERT INTO `ecs_admin_action` VALUES ('100', '8', 'email_list', '');
INSERT INTO `ecs_admin_action` VALUES ('101', '8', 'magazine_list', '');
INSERT INTO `ecs_admin_action` VALUES ('102', '8', 'view_sendlist', '');
INSERT INTO `ecs_admin_action` VALUES ('103', '1', 'virualcard', '');
INSERT INTO `ecs_admin_action` VALUES ('104', '7', 'package_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('105', '1', 'picture_batch', '');
INSERT INTO `ecs_admin_action` VALUES ('106', '1', 'goods_export', '');
INSERT INTO `ecs_admin_action` VALUES ('107', '1', 'goods_batch', '');
INSERT INTO `ecs_admin_action` VALUES ('108', '1', 'gen_goods_script', '');
INSERT INTO `ecs_admin_action` VALUES ('109', '5', 'sitemap', '');
INSERT INTO `ecs_admin_action` VALUES ('110', '5', 'file_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('111', '5', 'file_check', '');
INSERT INTO `ecs_admin_action` VALUES ('112', '9', 'template_select', '');
INSERT INTO `ecs_admin_action` VALUES ('113', '9', 'template_setup', '');
INSERT INTO `ecs_admin_action` VALUES ('114', '9', 'library_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('115', '9', 'lang_edit', '');
INSERT INTO `ecs_admin_action` VALUES ('116', '9', 'backup_setting', '');
INSERT INTO `ecs_admin_action` VALUES ('117', '9', 'mail_template', '');
INSERT INTO `ecs_admin_action` VALUES ('118', '10', 'db_backup', '');
INSERT INTO `ecs_admin_action` VALUES ('119', '10', 'db_renew', '');
INSERT INTO `ecs_admin_action` VALUES ('120', '10', 'db_optimize', '');
INSERT INTO `ecs_admin_action` VALUES ('121', '10', 'sql_query', '');
INSERT INTO `ecs_admin_action` VALUES ('122', '10', 'convert', '');
INSERT INTO `ecs_admin_action` VALUES ('124', '11', 'sms_send', '');
INSERT INTO `ecs_admin_action` VALUES ('128', '7', 'exchange_goods', '');
INSERT INTO `ecs_admin_action` VALUES ('129', '6', 'delivery_view', '');
INSERT INTO `ecs_admin_action` VALUES ('130', '6', 'back_view', '');
INSERT INTO `ecs_admin_action` VALUES ('131', '5', 'reg_fields', '');
INSERT INTO `ecs_admin_action` VALUES ('132', '5', 'shop_authorized', '');
INSERT INTO `ecs_admin_action` VALUES ('133', '5', 'webcollect_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('134', '4', 'suppliers_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('135', '4', 'role_manage', '');

-- ----------------------------
-- Table structure for `ecs_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_log`;
CREATE TABLE `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL auto_increment,
  `log_time` int(10) unsigned NOT NULL default '0',
  `user_id` tinyint(3) unsigned NOT NULL default '0',
  `log_info` varchar(255) NOT NULL default '',
  `ip_address` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3337 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_log
-- ----------------------------
INSERT INTO `ecs_admin_log` VALUES ('1', '1240294375', '1', '添加品牌管理: 诺基亚', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('2', '1240295621', '1', '添加属性: 网络类型', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('3', '1240295930', '1', '添加属性: 扩展卡', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('4', '1240295980', '1', '添加属性: 操作系统', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('5', '1240296082', '1', '添加属性: 通话时间（分）', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('6', '1240296102', '1', '添加属性: 待机时间（小时）', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('7', '1240296379', '1', '添加属性: 上市时间', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('8', '1240296403', '1', '编辑属性: 网络类型', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('9', '1240296415', '1', '编辑属性: 扩展卡', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('10', '1240298784', '1', '添加属性: 手机颜色', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('11', '1240300896', '1', '添加属性: 基本配件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('12', '1240301110', '1', '添加属性: 附加配件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('13', '1240301295', '1', '添加属性: 和铉铃声', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('14', '1240301371', '1', '添加属性: 相机像数', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('15', '1240301487', '1', '添加属性: 感光元件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('16', '1240301508', '1', '编辑属性: 和铉铃声', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('17', '1240301518', '1', '编辑属性: 基本配件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('18', '1240301570', '1', '添加属性: 移动qq', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('19', '1240301611', '1', '添加属性: gps', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('20', '1240301650', '1', '添加属性: FM收音机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('21', '1240301665', '1', '编辑属性: GPS', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('22', '1240301679', '1', '编辑属性: FM收音机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('23', '1240301705', '1', '添加属性: 话机电话薄（条）', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('24', '1240301715', '1', '添加属性: K-JAVA', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('25', '1240301788', '1', '添加属性: 价格档位', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('26', '1240305032', '1', '添加属性: 手机样式', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('27', '1240380338', '1', '添加属性: 图形菜单', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('28', '1240380399', '1', '添加属性: 中文短消息', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('29', '1240380444', '1', '添加属性: 内置游戏', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('30', '1240380507', '1', '添加属性: Wap 上网', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('31', '1240380533', '1', '添加属性: Wap 上网', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('32', '1240380552', '1', '编辑属性: Wap 上网', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('33', '1240380574', '1', '编辑属性: Wap 上网', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('34', '1240380587', '1', '编辑属性: Wap 上网', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('35', '1240380646', '1', '添加属性: 数据功能', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('36', '1240380743', '1', '添加属性: 移动QQ', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('37', '1240380759', '1', '添加属性: 视频格式', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('38', '1240380831', '1', '添加属性: 扩张卡', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('39', '1240380875', '1', '添加属性: 手机颜色', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('40', '1240380920', '1', '添加属性: 来电防火墙', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('41', '1240380945', '1', '添加属性: 英汉词典', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('42', '1240380957', '1', '添加属性: 多语言显示', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('43', '1240381002', '1', '添加属性: 电子书', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('44', '1240381052', '1', '添加属性: 移动 MSN', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('45', '1240381088', '1', '添加属性: 音频格式', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('46', '1240381143', '1', '添加属性: 上市时间', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('47', '1240381206', '1', '添加属性: 语音拨号', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('48', '1240381229', '1', '添加属性: 语音菜单', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('49', '1240381356', '1', '添加属性: 外观样式', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('50', '1240381382', '1', '添加属性: 天线位置', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('51', '1240381425', '1', '编辑属性: K-JAVA', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('52', '1240381430', '1', '添加属性: K-JAVA', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('53', '1240381464', '1', '添加属性: PDA 功能', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('54', '1240381480', '1', '添加属性: 操作系统', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('55', '1240381512', '1', '添加属性: 外壳材质', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('56', '1240381561', '1', '编辑属性: 基本配件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('57', '1240381572', '1', '添加属性: 基本配件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('58', '1240381580', '1', '编辑属性: 附加配件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('59', '1240381602', '1', '添加属性: 附加配件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('60', '1240381627', '1', '编辑属性: 附加配件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('61', '1240381694', '1', '添加属性: 自动开关机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('62', '1240381717', '1', '添加属性: 视频分辨率', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('63', '1240381731', '1', '添加属性: 影音编辑器', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('64', '1240381741', '1', '添加属性: 图像编辑器', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('65', '1240381759', '1', '添加属性: 可用内存', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('66', '1240381775', '1', '添加属性: 主屏幕像素', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('67', '1240381786', '1', '添加属性: 副屏幕像素', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('68', '1240382037', '1', '添加属性: 更换外壳', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('69', '1240382801', '1', '添加属性: 办公功能', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('70', '1240382823', '1', '添加属性: 传感器', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('71', '1240382844', '1', '添加属性: CPU频率', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('72', '1240382866', '1', '添加属性: 理论待机时间', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('73', '1240382875', '1', '添加属性: 理论通话时间', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('74', '1240383267', '1', '编辑商品类型: 3g手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('75', '1240383268', '1', '编辑商品类型: 手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('76', '1240383269', '1', '编辑商品类型: 3g手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('77', '1240383397', '1', '删除商品类型: 图形菜单', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('78', '1240383432', '1', '添加属性: 图形菜单', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('79', '1240383491', '1', '添加属性: EFR 服务', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('80', '1240383509', '1', '添加属性: STK 服务', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('81', '1240383528', '1', '添加属性: 通话录音', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('82', '1240383554', '1', '添加属性: 语音菜单', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('83', '1240383575', '1', '添加属性: 中文输入法', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('84', '1240383594', '1', '编辑属性: 中文输入法', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('85', '1240383613', '1', '编辑属性: 语音菜单', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('86', '1240383635', '1', '添加属性: 和弦铃声', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('87', '1240383651', '1', '添加属性: 主屏幕色彩', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('88', '1240383658', '1', '添加属性: 副屏幕色彩', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('89', '1240383682', '1', '添加属性: 天线位置', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('90', '1240383700', '1', '添加属性: 数据功能', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('91', '1240392733', '1', '安装配送方式: 邮政快递包裹', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('92', '1240392748', '1', '安装配送方式: 圆通速递', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('93', '1240392761', '1', '安装配送方式: 城际快递', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('94', '1240392769', '1', '安装配送方式: 市内快递', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('95', '1240463689', '1', '添加属性: 连拍', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('96', '1240463709', '1', '添加属性: 定时拍摄', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('97', '1240463729', '1', '添加属性: 照片打印', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('98', '1240463748', '1', '添加属性: 照片特效', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('99', '1240463766', '1', '添加属性: 电子书', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('100', '1240463777', '1', '添加属性: 外壳材质', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('101', '1240463793', '1', '添加属性: 名片扫描', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('102', '1240463803', '1', '添加属性: GPU', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('103', '1240463814', '1', '添加属性: CPU频率', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('104', '1240463830', '1', '添加属性: TV-OUT电视输出', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('105', '1240463843', '1', '添加属性: 来电图片识别', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('106', '1240463855', '1', '添加属性: 来电防火墙', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('107', '1240463865', '1', '添加属性: 背光自动调节', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('108', '1240463873', '1', '添加属性: 照片分辨率', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('109', '1240463880', '1', '添加属性: 变焦模式', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('110', '1240463903', '1', '添加属性: 英汉词典', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('111', '1240463925', '1', '添加属性: 多语言显示', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('112', '1240463974', '1', '添加属性: 数据线功能', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('113', '1240463992', '1', '添加属性: 留言应答', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('114', '1240464004', '1', '添加属性: 可用内存(MB)', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('115', '1240464015', '1', '添加属性: GPS', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('116', '1240464022', '1', '添加属性: 相机闪光灯', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('117', '1240464030', '1', '添加属性: 移动 MSN', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('118', '1240464038', '1', '添加属性: 移动QQ', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('119', '1240464050', '1', '添加属性: 内置媒体播放器', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('120', '1240464066', '1', '添加属性: 电子邮件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('121', '1240464220', '1', '编辑属性: 待机时间（小时）', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('122', '1240464272', '1', '编辑属性: 网络类型', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('123', '1240464277', '1', '编辑属性: 网络类型', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('124', '1240464331', '1', '编辑属性: 网络类型', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('125', '1240464631', '1', '编辑属性: 网络类型', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('126', '1240464639', '1', '编辑属性: 扩展卡', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('127', '1240464650', '1', '编辑属性: 操作系统', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('128', '1240464709', '1', '编辑属性: 通话时间（分）', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('129', '1240464720', '1', '编辑属性: 待机时间（小时）', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('130', '1240464737', '1', '编辑属性: 上市时间', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('131', '1240464748', '1', '编辑属性: 手机颜色', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('132', '1240464758', '1', '编辑属性: 基本配件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('133', '1240464770', '1', '编辑属性: 和铉铃声', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('134', '1240464783', '1', '编辑属性: 相机像数', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('135', '1240464794', '1', '编辑属性: 移动qq', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('136', '1240464806', '1', '编辑属性: 感光元件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('137', '1240464816', '1', '编辑属性: GPS', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('138', '1240464827', '1', '编辑属性: FM收音机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('139', '1240464853', '1', '编辑属性: FM收音机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('140', '1240464869', '1', '编辑属性: 话机电话薄（条）', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('141', '1240464880', '1', '编辑属性: 扩展卡', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('142', '1240464896', '1', '编辑属性: 扩展卡', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('143', '1240464917', '1', '编辑属性: K-JAVA', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('144', '1240464931', '1', '编辑属性: 价格档位', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('145', '1240464945', '1', '编辑属性: 手机样式', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('146', '1240464959', '1', '编辑属性: Wap 上网', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('147', '1240800622', '1', '添加商品分类: 手机类型', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('148', '1240800687', '1', '添加商品分类: GSM手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('149', '1240800745', '1', '添加商品分类: GSM手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('150', '1240800791', '1', '添加商品分类: 3G手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('151', '1240800845', '1', '添加商品分类: 双模手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('152', '1240800877', '1', '编辑商品分类: GSM手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('153', '1240802922', '1', '添加品牌管理: 摩托罗拉', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('154', '1240803062', '1', '编辑品牌管理: 诺基亚', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('155', '1240803144', '1', '添加品牌管理: 多普达', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('156', '1240803248', '1', '添加品牌管理: 飞利浦', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('157', '1240803352', '1', '添加品牌管理: 夏新', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('158', '1240803412', '1', '添加品牌管理: 三星', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('159', '1240803482', '1', '添加品牌管理: 索爱', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('160', '1240803526', '1', '添加品牌管理: LG', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('161', '1240803578', '1', '添加品牌管理: 联想', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('162', '1240803689', '1', '添加品牌管理: 金立', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('163', '1240803736', '1', '添加品牌管理: 恒基伟业', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('164', '1240803750', '1', '编辑品牌管理: 恒基伟业', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('165', '1240804593', '1', '编辑商品分类: CDMA手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('166', '1240902890', '1', '添加商品: KD876', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('167', '1240904370', '1', '编辑商品: KD876', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('168', '1240904461', '1', '编辑商品: KD876', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('169', '1240912338', '1', '删除商品类型: 手机配件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('170', '1240912361', '1', '添加商品分类: 手机配件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('171', '1240912385', '1', '添加商品分类: 充电器', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('172', '1240912477', '1', '添加商品分类: 耳机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('173', '1240912489', '1', '添加商品分类: 电池', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('174', '1241420935', '1', '添加商品分类: 111', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('175', '1241420966', '1', '添加商品: 斤', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('176', '1241421093', '1', '回收商品: 斤', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('177', '1241421104', '1', '删除商品: 斤', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('178', '1241421110', '1', '删除商品分类: 111', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('179', '1241421127', '1', '编辑商品分类: GSM手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('180', '1241422082', '1', '添加商品: 诺基亚原装5800耳机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('181', '1241422137', '1', '添加属性: 卡的类型', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('182', '1241422163', '1', '添加属性: 卡的大小', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('183', '1241422236', '1', '添加属性: 颜色', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('184', '1241422272', '1', '编辑属性: 卡的容量', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('185', '1241422289', '1', '添加属性: 电池容量', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('186', '1241422347', '1', '编辑商品: 诺基亚原装5800耳机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('187', '1241422402', '1', '添加商品: 诺基亚N85原装充电器', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('188', '1241422416', '1', '编辑商品: KD876', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('189', '1241422518', '1', '添加商品: 索爱原装M2卡读卡器', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('190', '1241422573', '1', '添加商品: 胜创KINGMAX内存卡', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('191', '1241422615', '1', '编辑商品: 胜创KINGMAX内存卡', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('192', '1241422626', '1', '编辑商品: 诺基亚N85原装充电器', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('193', '1241422785', '1', '添加商品: 诺基亚N85原装立体声耳机HS-82 查看商品相册 诺基亚N85原装立体声耳机HS-82', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('194', '1241425512', '1', '添加商品: 飞利浦9@9v ', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('195', '1241425836', '1', '编辑商品: 飞利浦9@9v ', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('196', '1241425891', '1', '编辑商品: 飞利浦9@9v ', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('197', '1241426819', '1', '添加文章分类: 3G手机资讯', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('198', '1241426864', '1', '添加文章: 三星电子宣布将在中国发布15款3G手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('199', '1241426898', '1', '编辑文章: 三星电子宣布将在中国发布15款3G手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('200', '1241427051', '1', '添加文章: 薄锐极限 电信3G定制摩托罗拉V10发布', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('201', '1241427449', '1', '编辑文章: 薄锐极限 电信3G定制摩托罗拉V10发布', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('202', '1241427779', '1', '编辑文章: 诺基亚牵手移动 5款热门TD手机机型推荐', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('203', '1241427850', '1', '编辑文章: 诺基亚牵手移动 5款热门TD手机机型推荐', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('204', '1241511486', '1', '编辑商品: 飞利浦9@9v', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('205', '1241511514', '1', '编辑属性: FM收音机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('206', '1241511871', '1', '添加商品: 诺基亚E66', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('207', '1241512315', '1', '编辑商品: 诺基亚E66', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('208', '1241512443', '1', '删除商品类型: 手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('209', '1241512563', '1', '添加属性: 手机制式', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('210', '1241512693', '1', '添加属性: 外观样式', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('211', '1241512704', '1', '添加属性: 上市时间', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('212', '1241512712', '1', '添加属性: 屏幕参数', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('213', '1241512720', '1', '添加属性: 摄像功能', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('214', '1241512728', '1', '添加属性: 其它功能', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('215', '1241512737', '1', '添加属性: 产品配置', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('216', '1241512762', '1', '添加属性: 理论通话时间', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('217', '1241512772', '1', '添加属性: 理论待机时间', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('218', '1241512804', '1', '添加属性: 中文短消息', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('219', '1241512813', '1', '添加属性: 存储卡格式', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('220', '1241512842', '1', '添加属性: 外壳材质', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('221', '1241512868', '1', '添加属性: # 情景模式', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('222', '1241512907', '1', '添加属性: 蓝牙接口', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('223', '1241512939', '1', '添加属性: GPS', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('224', '1241512966', '1', '添加属性: MP3播放器', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('225', '1241512977', '1', '添加属性: 视频播放', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('226', '1241513003', '1', '添加属性: 内置游戏', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('227', '1241513036', '1', '编辑属性: 情景模式', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('228', '1241513132', '1', '添加属性: 价位', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('229', '1241513210', '1', '添加属性: 颜色', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('230', '1241513508', '1', '编辑商品: 飞利浦9@9v', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('231', '1241513571', '1', '编辑属性: MP3播放器', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('232', '1241513596', '1', '编辑属性: 外壳材质', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('233', '1241513630', '1', '编辑商品: 飞利浦9@9v', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('234', '1241513750', '1', '编辑属性: MP3播放器', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('235', '1241513771', '1', '添加属性: 附加配件', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('236', '1241513918', '1', '编辑属性: 像数（万）', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('237', '1241513939', '1', '编辑商品: 飞利浦9@9v', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('238', '1241513959', '1', '编辑属性: 像数（万）', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('239', '1241518314', '1', '编辑属性: 外壳材质', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('240', '1241518329', '1', '编辑属性: 价位', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('241', '1241946343', '1', '还原数据库备份: 备份时间2009-05-05 10:36:29', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('242', '1241965622', '1', '添加商品: 索爱C702c', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('243', '1241965816', '1', '添加商品: 索爱C702c', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('244', '1241965859', '1', '编辑品牌管理: 摩托罗拉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('245', '1241965978', '1', '添加商品: 摩托罗拉A810', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('246', '1241966023', '1', '编辑商品: 摩托罗拉A810', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('247', '1241966218', '1', '编辑商品: 摩托罗拉A810', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('248', '1241966408', '1', '编辑商品: 摩托罗拉A810', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('249', '1241966536', '1', '编辑品牌管理: 诺基亚', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('250', '1241966874', '1', '编辑商品: 摩托罗拉A810', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('251', '1241966922', '1', '回收商品: 索爱C702c', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('252', '1241966951', '1', '还原商品: 索爱C702c', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('253', '1241966963', '1', '回收商品: 索爱C702c', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('254', '1241967340', '1', '编辑商品: 诺基亚E66', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('255', '1241967424', '1', '编辑商品: 诺基亚N85原装立体声耳机HS-82', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('256', '1241967465', '1', '编辑商品: 索爱原装M2卡读卡器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('257', '1241967487', '1', '编辑商品: 诺基亚N85原装充电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('258', '1241967556', '1', '编辑商品: KD876', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('259', '1241967667', '1', '编辑商品: 飞利浦9@9v', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('260', '1241967762', '1', '添加商品: 诺基亚5320 XpressMusic', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('261', '1241968002', '1', '编辑商品: 诺基亚5320 XpressMusic', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('262', '1241968058', '1', '编辑商品: 诺基亚5320 XpressMusic', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('263', '1241968492', '1', '添加商品: 诺基亚5800XM', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('264', '1241968703', '1', '添加商品: 摩托罗拉A810', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('265', '1241968949', '1', '添加商品: 恒基伟业G101', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('266', '1241969394', '1', '添加商品: 夏新N7', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('267', '1241969533', '1', '添加商品: 夏新T5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('268', '1241969541', '1', '回收商品: 夏新T5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('269', '1241970139', '1', '添加商品: 三星SGH-F258', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('270', '1241970175', '1', '编辑商品: 三星SGH-F258', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('271', '1241970417', '1', '添加商品: 三星BC01', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('272', '1241970634', '1', '添加商品: 金立 A30', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('273', '1241970743', '1', '编辑商品: 飞利浦9@9v', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('274', '1241971076', '1', '添加商品: 多普达Touch HD', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('275', '1241971488', '1', '添加商品: 诺基亚N96', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('276', '1241971556', '1', '编辑商品: 诺基亚N96', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('277', '1241971981', '1', '添加商品: P806', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('278', '1241972305', '1', '编辑商品: 飞利浦9@9v', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('279', '1241972339', '1', '编辑商品: 恒基伟业G101', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('280', '1241972512', '1', '添加商品分类: 充值卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('281', '1241972554', '1', '添加商品分类: 小灵通/固话充值卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('282', '1241972598', '1', '添加商品分类: 移动手机充值卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('283', '1241972634', '1', '添加商品分类: 联通手机充值卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('284', '1241972709', '1', '添加商品: 小灵通/固话50元充值卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('285', '1241972789', '1', '添加商品: 小灵通/固话20元充值卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('286', '1241972894', '1', '添加商品: 联通100元充值卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('287', '1241972976', '1', '添加商品: 联通50元充值卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('288', '1241973022', '1', '添加商品: 移动100元充值卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('289', '1241973114', '1', '添加商品: 移动20元充值卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('290', '1242105946', '1', '还原数据库备份: 备份时间2009-05-10 16:33:51', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('291', '1242106383', '1', '编辑商品: 三星BC01', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('292', '1242106490', '1', '编辑商品: 三星BC01', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('293', '1242106594', '1', '添加会员账号: ecshop', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('294', '1242106663', '1', '添加会员等级: vip', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('295', '1242106727', '1', '添加会员等级: 钻石用户', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('296', '1242106771', '1', '编辑商品: 诺基亚N96', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('297', '1242106836', '1', '编辑商品: 诺基亚5320 XpressMusic', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('298', '1242106894', '1', '添加会员账号: vip', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('299', '1242106928', '1', '添加会员账号: text', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('300', '1242106997', '1', '添加会员账号: zhuangshi', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('301', '1242107017', '1', '删除会员账号: zhuangshi', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('302', '1242107045', '1', '添加会员账号: zuanshi', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('303', '1242107052', '1', '编辑会员账号: vip', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('304', '1242107224', '1', '编辑操作日志: ', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('305', '1242107360', '1', '添加: 音乐手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('306', '1242107418', '1', '添加: 音乐手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('307', '1242107466', '1', '添加: 音乐手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('308', '1242107517', '1', '添加: 智能手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('309', '1242107557', '1', '添加: 智能手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('310', '1242107611', '1', '添加: 智能手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('311', '1242107825', '1', '添加夺宝奇兵: 夺宝奇兵之诺基亚N96', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('312', '1242107987', '1', '添加夺宝奇兵: 夺宝奇兵之夏新N7', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('313', '1242108026', '1', '添加红包类型: 用户红包', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('314', '1242108084', '1', '添加红包类型: 商品红包', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('315', '1242108124', '1', '添加红包类型: 订单红包', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('316', '1242108159', '1', '添加红包类型: 线下红包', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('317', '1242108754', '1', '添加商品贺卡: 祝福贺卡', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('318', '1242109088', '1', '添加团购商品: P806', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('319', '1242109198', '1', '编辑商品: 金立 A30', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('320', '1242109298', '1', '编辑商品: 金立 A30', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('321', '1242109354', '1', '添加批发活动: 金立 A30', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('322', '1242109644', '1', '编辑会员等级: 钻石用户', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('323', '1242109964', '1', '添加优惠活动: 5.1诺基亚优惠活动', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('324', '1242110117', '1', '添加拍卖活动: 拍卖活动——索爱C702c', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('325', '1242110412', '1', '添加商品: 摩托罗拉E8 ', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('326', '1242110451', '1', '添加: 音乐手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('327', '1242110566', '1', '添加超值礼包: 摩托罗拉E8 大礼包', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('328', '1242110760', '1', '添加商品: 诺基亚N85', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('329', '1242110880', '1', '添加超值礼包: 诺基亚N85大礼包', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('330', '1242140620', '1', '还原数据库备份: 备份时间2009-05-12 06:48:22', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('331', '1242140683', '1', '添加积分可兑换的商品: 24', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('332', '1242141551', '1', '安装支付方式: 余额支付', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('333', '1242141813', '1', '安装配送方式: 申通快递', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('334', '1242141841', '1', '添加配送区域: 申通', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('335', '1242141890', '1', '添加配送区域: 1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('336', '1242141897', '1', '安装配送方式: 邮局平邮', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('337', '1242141914', '1', '添加配送区域: 邮局', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('338', '1242141958', '1', '安装配送方式: 运费到付', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('339', '1242142014', '1', '添加配送区域: 运费到付', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('340', '1242142081', '1', '安装支付方式: 银行汇款/转帐', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('341', '1242142190', '1', '编辑配送区域: 1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('342', '1242142210', '1', '编辑配送区域: 运费到付', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('343', '1242142227', '1', '编辑配送区域: 邮局', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('344', '1242142503', '1', '编辑红包类型: 商品红包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('345', '1242143005', '1', '编辑团购商品: P806[3]', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('346', '1242143557', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('347', '1242144250', '1', '添加订单: 2009051264945', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('348', '1242144268', '1', '编辑订单: 2009051264945,订单总金额由 0.00 变为 3800.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('349', '1242144348', '1', '编辑订单: 2009051264945', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('350', '1242144353', '1', '编辑订单: 2009051264945,订单总金额由 3800.00 变为 3810.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('351', '1242144356', '1', '编辑订单: 2009051264945', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('352', '1242144359', '1', '编辑订单: 2009051264945', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('353', '1242144363', '1', '编辑订单: 2009051264945', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('354', '1242576182', '1', '安装支付方式: 货到付款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('355', '1242576584', '1', '添加文章分类: 新手上路 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('356', '1242576615', '1', '添加文章分类: 手机常识 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('357', '1242576627', '1', '添加文章分类: 配送与支付 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('358', '1242576634', '1', '添加文章分类: 服务保证 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('359', '1242576641', '1', '添加文章分类: 联系我们 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('360', '1242576650', '1', '添加文章分类: 会员 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('361', '1242576700', '1', '添加文章: 售后流程', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('362', '1242576717', '1', '添加文章: 购物流程', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('363', '1242576727', '1', '添加文章: 订购方式', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('364', '1242576826', '1', '添加文章: 如何分辨原装电池', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('365', '1242576911', '1', '添加文章: 如何分辨水货手机 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('366', '1242576927', '1', '添加文章: 如何享受全国联保', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('367', '1242576971', '1', '编辑文章: 如何分辨原装电池', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('368', '1242577023', '1', '添加文章: 货到付款区域', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('369', '1242577032', '1', '添加文章: 配送支付智能查询 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('370', '1242577041', '1', '添加文章: 支付方式说明', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('371', '1242577080', '1', '编辑文章分类: 会员中心', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('372', '1242577127', '1', '添加文章: 资金管理', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('373', '1242577178', '1', '添加文章: 我的收藏', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('374', '1242577199', '1', '添加文章: 我的订单', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('375', '1242577230', '1', '编辑文章: 资金管理', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('376', '1242577293', '1', '添加文章: 退换货原则', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('377', '1242577308', '1', '添加文章: 售后服务保证 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('378', '1242577326', '1', '添加文章: 产品质量保证 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('379', '1242577409', '1', '编辑文章分类: 联系我们 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('380', '1242577432', '1', '添加文章: 网站故障报告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('381', '1242577448', '1', '添加文章: 选机咨询 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('382', '1242577459', '1', '添加文章: 投诉与建议 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('383', '1242577702', '1', '添加文章: 800万像素超强拍照机 LG Viewty Smart再曝光', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('384', '1242577731', '1', '编辑商品: KD876', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('385', '1242577749', '1', '编辑商品: 三星BC01', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('386', '1242577768', '1', '编辑商品: 三星SGH-F258', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('387', '1242577791', '1', '编辑商品: 诺基亚N85', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('388', '1242577813', '1', '编辑商品: 诺基亚N96', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('389', '1242577838', '1', '编辑商品: 诺基亚N96', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('390', '1242577864', '1', '编辑商品: 诺基亚E66', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('391', '1242578018', '1', '添加文章分类: 本站手机促销', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('392', '1242578199', '1', '添加文章: 飞利浦9@9促销', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('393', '1242578365', '1', '编辑文章: 飞利浦9@9促销', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('394', '1242578676', '1', '添加文章: 诺基亚5320 促销', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('395', '1242578826', '1', '添加文章: 促销诺基亚N96', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('396', '1242578885', '1', '添加文章分类: 站内快讯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('397', '1242579069', '1', '添加文章: 诺基亚6681手机广告欣赏', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('398', '1242579189', '1', '添加文章: 手机游戏下载', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('399', '1242579559', '1', '添加文章: 三星SGHU308说明书下载', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('400', '1242579587', '1', '编辑文章: 三星SGHU308说明书下载', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('401', '1242579622', '1', '编辑文章: 手机游戏下载', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('402', '1242580013', '1', '添加文章: 3G知识普及', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('403', '1242973211', '1', '还原数据库备份: 备份时间2009-05-17 17:10:28', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('404', '1242973252', '1', '编辑商品分类: 联通手机充值卡', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('405', '1242973362', '1', '编辑商品: 摩托罗拉A810', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('406', '1242973436', '1', '编辑商品: 索爱C702c', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('407', '1242973501', '1', '编辑文章分类: 3G资讯', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('408', '1242974080', '1', '添加拍卖活动: 拍卖活动——索爱C702c(第2期)', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('409', '1242974159', '1', '编辑拍卖活动: 拍卖活动——索爱C702c(第2期)', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('410', '1242974327', '1', '添加团购商品: P806', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('411', '1242974380', '1', '编辑团购商品: P806[8]', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('412', '1242974613', '1', '添加文章: “沃”的世界我做主', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('413', '1242976639', '1', '添加用户红包: 1000091405', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('414', '1244189181', '1', '编辑商品: 索爱C702c', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('415', '1244189344', '1', '编辑文章分类: 手机促销', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('416', '1244190576', '1', '编辑文章: 三星SGHU308说明书下载', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('417', '1244190791', '1', '编辑文章: 三星SGHU308说明书下载', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('418', '1244190825', '1', '编辑文章: 三星SGHU308说明书下载', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('419', '1244190882', '1', '编辑文章: 三星SGHU308说明书下载', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('420', '1244190952', '1', '编辑文章: 三星SGHU308说明书下载', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('421', '1244191015', '1', '编辑文章: 三星SGHU308说明书下载', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('422', '1244191031', '1', '编辑文章: 三星SGHU308说明书下载', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('423', '1244773301', '1', '添加在线调查: 您从哪里知道我们的网站', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('424', '1244773315', '1', '添加在线调查: 论坛', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('425', '1244773328', '1', '添加在线调查: 朋友', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('426', '1244773345', '1', '添加在线调查: 友情链接', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('427', '1245042408', '1', '还原数据库备份: 备份时间2009-06-12 02:23:14', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('428', '1245042659', '1', '编辑商品分类: 手机类型', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('429', '1245042742', '1', '编辑商品分类: GSM手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('430', '1245042772', '1', '编辑商品分类: 手机类型', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('431', '1245043251', '1', '编辑文章: 三星SGHU308说明书下载', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('432', '1245043292', '1', '编辑文章: 三星SGHU308说明书下载', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('433', '1245044142', '1', '编辑权限管理: bjgonghuo1', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('434', '1245044234', '1', '添加供货商管理: 北京供货商', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('435', '1245044248', '1', '添加供货商管理: 上海供货商', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('436', '1245044469', '1', '编辑红包类型: 订单红包', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('437', '1245044698', '1', '编辑供货商管理: 北京供货商', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('438', '1245044706', '1', '编辑供货商管理: 上海供货商', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('439', '1245136915', '1', '还原数据库备份: 备份时间2009-06-15 06:54:05', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('440', '1245138481', '1', '还原数据库备份: 备份时间2009-06-16 07:47:15', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('441', '1245220014', '1', '编辑商品: 诺基亚N85', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('442', '1245220040', '1', '编辑商品: 诺基亚N85', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('443', '1245220295', '1', '编辑商品: P806', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('444', '1245220617', '1', '编辑商品: 诺基亚N96', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('445', '1245220821', '1', '编辑商品: 多普达Touch HD', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('446', '1245221079', '1', '编辑商品: 金立 A30', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('447', '1245221279', '1', '编辑商品: 三星BC01', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('448', '1245221460', '1', '编辑商品: 三星SGH-F258', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('449', '1245221658', '1', '编辑商品: 夏新N7', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('450', '1245221889', '1', '编辑商品: 摩托罗拉A810', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('451', '1245222018', '1', '编辑商品: 诺基亚5800XM', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('452', '1245222169', '1', '编辑商品: 诺基亚5320 XpressMusic', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('453', '1245222267', '1', '回收商品: 摩托罗拉A810', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('454', '1245222409', '1', '编辑商品: 索爱C702c', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('455', '1245222545', '1', '编辑商品: 诺基亚E66', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('456', '1245222658', '1', '编辑商品: 飞利浦9@9v', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('457', '1245222832', '1', '编辑商品: KD876', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('458', '1245222978', '1', '编辑商店设置: ', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('459', '1245223043', '1', '编辑商品分类: 手机类型', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('460', '1245223128', '1', '编辑商品分类: GSM手机', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('461', '1245223340', '1', '编辑文章: 诺基亚牵手移动 5款热门TD手机机型推荐', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('462', '1245223387', '1', '编辑文章: 诺基亚牵手移动 5款热门TD手机机型推荐', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('463', '1245223611', '1', '还原数据库备份: 备份时间2009-06-17 07:23:51', '0.0.0.0');
INSERT INTO `ecs_admin_log` VALUES ('464', '1398274518', '1', '添加商品分类: 女装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('465', '1398274526', '1', '添加商品分类: 男装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('466', '1398274531', '1', '添加商品分类: 女鞋/男鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('467', '1398274536', '1', '添加商品分类: 运动/户外', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('468', '1398274541', '1', '添加商品分类: 内衣/配饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('469', '1398274547', '1', '添加商品分类: 童装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('470', '1398274552', '1', '添加商品分类: 箱包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('471', '1398274565', '1', '添加商品分类: 家居', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('472', '1398274629', '1', '添加商品分类: 当季热卖', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('473', '1398274637', '1', '添加商品分类: 卫衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('474', '1398274644', '1', '添加商品分类: 针织衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('475', '1398274649', '1', '添加商品分类: 衬衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('476', '1398274669', '1', '编辑商品分类: 衬衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('477', '1398274678', '1', '添加商品分类: 打底衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('478', '1398274684', '1', '添加商品分类: 羽绒服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('479', '1398274690', '1', '添加商品分类: 裤装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('480', '1398274707', '1', '添加商品分类: 裙装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('481', '1398274714', '1', '添加商品分类: 更多款式', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('482', '1398274731', '1', '添加商品分类: T恤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('483', '1398274737', '1', '添加商品分类: 卫衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('484', '1398274746', '1', '添加商品分类: POLO衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('485', '1398274752', '1', '添加商品分类: 时尚款毛衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('486', '1398274761', '1', '添加商品分类: 时尚女装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('487', '1398274766', '1', '添加商品分类: 针织衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('488', '1398274771', '1', '添加商品分类: 牛仔', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('489', '1398274789', '1', '添加商品分类: 摇粒绒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('490', '1398274795', '1', '添加商品分类: 双层绒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('491', '1398274801', '1', '添加商品分类: 连帽款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('492', '1398274808', '1', '添加商品分类: 圆领款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('493', '1398274814', '1', '添加商品分类: 套头', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('494', '1398274821', '1', '添加商品分类: 开衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('495', '1398274839', '1', '添加商品分类: 开衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('496', '1398274844', '1', '添加商品分类: 套衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('497', '1398274849', '1', '添加商品分类: 纯羊毛', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('498', '1398274860', '1', '添加商品分类: 莫代尔', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('499', '1398274865', '1', '添加商品分类: 纯棉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('500', '1398274871', '1', '添加商品分类: 打底裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('501', '1398274877', '1', '添加商品分类: 时尚款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('502', '1398274905', '1', '添加商品分类: 雪纺衬衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('503', '1398274910', '1', '添加商品分类: 休闲衬衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('504', '1398274917', '1', '添加商品分类: 法兰绒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('505', '1398274924', '1', '添加商品分类: 牛津纺', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('506', '1398274929', '1', '添加商品分类: 灯芯绒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('507', '1398275120', '1', '添加商品分类: 素色款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('508', '1398275125', '1', '添加商品分类: 时尚款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('509', '1398275131', '1', '添加商品分类: 印花款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('510', '1398275138', '1', '添加商品分类: V领款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('511', '1398275142', '1', '添加商品分类: 高领款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('512', '1398275147', '1', '添加商品分类: 圆领款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('513', '1398275152', '1', '添加商品分类: 开襟款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('514', '1398275160', '1', '添加商品分类: 短款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('515', '1398275183', '1', '添加商品分类: 中长款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('516', '1398275188', '1', '添加商品分类: 长款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('517', '1398276784', '1', '添加商品分类: 连帽款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('518', '1398276794', '1', '添加商品分类: 立领款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('519', '1398276799', '1', '添加商品分类: 羽绒背心', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('520', '1398276808', '1', '添加商品分类: 条绒裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('521', '1398276816', '1', '添加商品分类: 卡其裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('522', '1398276823', '1', '添加商品分类: 运动裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('523', '1398276832', '1', '添加商品分类: 铅笔裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('524', '1398276840', '1', '添加商品分类: 牛仔裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('525', '1398276848', '1', '添加商品分类: 打底裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('526', '1398276857', '1', '添加商品分类: 哈伦裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('527', '1398276863', '1', '添加商品分类: 通勤裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('528', '1398276872', '1', '添加商品分类: 连衣裙', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('529', '1398276877', '1', '添加商品分类: 半裙', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('530', '1398276882', '1', '添加商品分类: 长裙', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('531', '1398276892', '1', '添加商品分类: 时尚女装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('532', '1398276897', '1', '添加商品分类: 短外套', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('533', '1398276905', '1', '添加商品分类: 大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('534', '1398276910', '1', '添加商品分类: 风衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('535', '1398276916', '1', '添加商品分类: 西服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('536', '1398276924', '1', '添加商品分类: 牛仔上衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('537', '1398276966', '1', '添加商品分类: 当季热卖', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('538', '1398276974', '1', '添加商品分类: 卫衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('539', '1398276994', '1', '添加商品分类: 衬衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('540', '1398277007', '1', '添加商品分类: 针织衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('541', '1398277013', '1', '添加商品分类: 打底衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('542', '1398277021', '1', '添加商品分类: 羽绒服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('543', '1398277028', '1', '添加商品分类: 裤装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('544', '1398277033', '1', '添加商品分类: 更多款式', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('545', '1398277040', '1', '添加商品分类: 卫衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('546', '1398277048', '1', '添加商品分类: T恤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('547', '1398277055', '1', '添加商品分类: POLO衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('548', '1398277061', '1', '添加商品分类: 运动裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('549', '1398277067', '1', '添加商品分类: 牛仔', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('550', '1398277079', '1', '添加商品分类: 素色款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('551', '1398277087', '1', '添加商品分类: 摇粒绒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('552', '1398277100', '1', '添加商品分类: 双层绒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('553', '1398277106', '1', '添加商品分类: 印花款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('554', '1398277115', '1', '添加商品分类: 圆领款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('555', '1398277121', '1', '添加商品分类: 连帽套头', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('556', '1398277128', '1', '添加商品分类: 连帽开衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('557', '1399233155', '1', '添加商品分类: 商务衬衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('558', '1399233172', '1', '添加商品分类: 休闲衬衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('559', '1399233179', '1', '添加商品分类: 法兰绒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('560', '1399233187', '1', '添加商品分类: 牛津纺', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('561', '1399233194', '1', '添加商品分类: 灯芯绒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('562', '1399233202', '1', '添加商品分类: 长绒棉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('563', '1399233209', '1', '添加商品分类: 全棉精纺', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('564', '1399233215', '1', '添加商品分类: 莫代尔', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('565', '1399233222', '1', '添加商品分类: 易打理', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('566', '1399233234', '1', '添加商品分类: 开衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('567', '1399233241', '1', '添加商品分类: 套衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('568', '1399233247', '1', '添加商品分类: 纯羊毛', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('569', '1399233256', '1', '添加商品分类: 莫代尔', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('570', '1399233262', '1', '添加商品分类: 纯棉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('571', '1399233270', '1', '添加商品分类: 背心', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('572', '1399233308', '1', '添加商品分类: 素色款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('573', '1399233314', '1', '添加商品分类: 时尚款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('574', '1399233321', '1', '添加商品分类: 印花款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('575', '1399233326', '1', '添加商品分类: 高领款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('576', '1399233332', '1', '添加商品分类: V领款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('577', '1399233337', '1', '添加商品分类: 圆领款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('578', '1399233342', '1', '添加商品分类: 开襟款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('579', '1399233356', '1', '添加商品分类: 短款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('580', '1399233391', '1', '添加商品分类: 中长款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('581', '1399233400', '1', '添加商品分类: 羽绒背心', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('582', '1399233409', '1', '添加商品分类: 连帽款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('583', '1399233419', '1', '添加商品分类: 立领款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('584', '1399233428', '1', '添加商品分类: 条绒裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('585', '1399233435', '1', '添加商品分类: 抓绒运动裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('586', '1399233443', '1', '添加商品分类: 卡其裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('587', '1399233449', '1', '添加商品分类: 牛仔裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('588', '1399233462', '1', '添加商品分类: 西裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('589', '1399233472', '1', '添加商品分类: 工装裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('590', '1399233481', '1', '添加商品分类: 夹克', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('591', '1399233488', '1', '添加商品分类: 毛呢外套', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('592', '1399233494', '1', '添加商品分类: 风衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('593', '1399233500', '1', '添加商品分类: 牛仔上衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('594', '1399233529', '1', '添加商品分类: 马甲', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('595', '1399233538', '1', '添加商品分类: 西装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('596', '1399233615', '1', '添加商品分类: 帆布', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('597', '1399233622', '1', '添加商品分类: 运动休闲', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('598', '1399233630', '1', '添加商品分类: 单鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('599', '1399233637', '1', '添加商品分类: 女靴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('600', '1399233648', '1', '添加商品分类: 休闲鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('601', '1399233655', '1', '添加商品分类: 运动鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('602', '1399233663', '1', '添加商品分类: 男皮鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('603', '1399233678', '1', '添加商品分类: 高帮', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('604', '1399233684', '1', '添加商品分类: 低帮', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('605', '1399233689', '1', '添加商品分类: 经典款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('606', '1399233695', '1', '添加商品分类: 加厚款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('607', '1399233705', '1', '添加商品分类: 复古跑鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('608', '1399233766', '1', '添加商品分类: 板鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('609', '1399233773', '1', '添加商品分类: 帆船鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('610', '1399233783', '1', '添加商品分类: 帆船鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('611', '1399233864', '1', '添加商品分类: 加厚款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('612', '1399233873', '1', '添加商品分类: 唐卡鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('613', '1399233880', '1', '添加商品分类: 牛津鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('614', '1399233886', '1', '添加商品分类: 船鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('615', '1399233891', '1', '添加商品分类: 松糕鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('616', '1399233900', '1', '添加商品分类: 雪地靴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('617', '1399233906', '1', '添加商品分类: 时尚女靴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('618', '1399233914', '1', '添加商品分类: 马丁靴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('619', '1399233939', '1', '添加商品分类: 休闲板鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('620', '1399233947', '1', '添加商品分类: 帆船鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('621', '1399233959', '1', '添加商品分类: 简约生活鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('622', '1399233969', '1', '添加商品分类: 沙漠靴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('623', '1399233990', '1', '添加商品分类: 正装皮鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('624', '1399233997', '1', '添加商品分类: 休闲皮鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('625', '1399248414', '1', '添加商品分类: 复古篮球鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('626', '1399248428', '1', '添加商品分类: 都市户外鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('627', '1399248480', '1', '添加商品分类: 复古跑鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('628', '1399248510', '1', '添加商品分类: 冬季热卖', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('629', '1399248521', '1', '添加商品分类: 冲锋衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('630', '1399248529', '1', '添加商品分类: 运动上装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('631', '1399248539', '1', '添加商品分类: 运动下装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('632', '1399248612', '1', '添加商品分类: 防风款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('633', '1399248623', '1', '添加商品分类: 防水款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('634', '1399248632', '1', '添加商品分类: 保暖款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('635', '1399248647', '1', '添加商品分类: 双层绒卫衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('636', '1399248665', '1', '添加商品分类: 抓绒运动裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('637', '1399248702', '1', '添加商品分类: 男款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('638', '1399248711', '1', '添加商品分类: 女款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('639', '1399248727', '1', '添加商品分类: 三合一', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('640', '1399248778', '1', '添加商品分类: 运动夹克', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('641', '1399248785', '1', '添加商品分类: 运动卫衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('642', '1399248793', '1', '添加商品分类: 情侣款卫衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('643', '1399248811', '1', '添加商品分类: 连帽卫衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('644', '1399248824', '1', '添加商品分类: 运动T恤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('645', '1399248876', '1', '添加商品分类: 套头运动衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('646', '1399248886', '1', '添加商品分类: 运动开衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('647', '1399248894', '1', '添加商品分类: 双层绒运动衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('648', '1399248900', '1', '添加商品分类: 摇粒绒运动衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('649', '1399248910', '1', '添加商品分类: 运动男裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('650', '1399248920', '1', '添加商品分类: 运动女裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('651', '1399248927', '1', '添加商品分类: 户外裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('652', '1399249034', '1', '添加商品分类: 女士内衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('653', '1399249039', '1', '添加商品分类: 男士内衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('654', '1399249047', '1', '添加商品分类: 服饰配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('655', '1399249054', '1', '添加商品分类: 饰品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('656', '1399249087', '1', '添加商品分类: 袜品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('657', '1399249094', '1', '添加商品分类: 保暖内衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('658', '1399249105', '1', '添加商品分类: 内衣文胸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('659', '1399249111', '1', '添加商品分类: 内裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('660', '1399249116', '1', '添加商品分类: BRA-T', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('661', '1399249121', '1', '添加商品分类: 保暖内衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('662', '1399249127', '1', '添加商品分类: 生理裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('663', '1399249132', '1', '添加商品分类: 安全裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('664', '1399249139', '1', '添加商品分类: 内衣内裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('665', '1399249144', '1', '添加商品分类: 打底T恤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('666', '1399249150', '1', '添加商品分类: 背心', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('667', '1399249155', '1', '添加商品分类: 保暖内衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('668', '1399249174', '1', '添加商品分类: 帽子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('669', '1399249187', '1', '添加商品分类: 围巾', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('670', '1399249248', '1', '添加商品分类: 手套', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('671', '1399249261', '1', '添加商品分类: 腰带', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('672', '1399249279', '1', '添加商品分类: 太阳镜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('673', '1399249289', '1', '添加商品分类: 口罩', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('674', '1399249297', '1', '添加商品分类: 手表', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('675', '1399249302', '1', '添加商品分类: 项链', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('676', '1399249307', '1', '添加商品分类: 戒指', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('677', '1399249312', '1', '添加商品分类: 腕饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('678', '1399310988', '1', '添加商品分类: 男棉袜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('679', '1399310997', '1', '添加商品分类: 女棉袜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('680', '1399311005', '1', '添加商品分类: 纯色棉袜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('681', '1399311014', '1', '添加商品分类: 条纹袜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('682', '1399311024', '1', '添加商品分类: 连裤袜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('683', '1399311445', '1', '添加商品分类: 男款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('684', '1399311454', '1', '添加商品分类: 女款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('685', '1399311462', '1', '添加商品分类: 薄款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('686', '1399311477', '1', '添加商品分类: 厚款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('687', '1399311511', '1', '添加商品分类: 发热款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('688', '1399311531', '1', '添加商品分类: 秋裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('689', '1399311568', '1', '添加商品分类: 上装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('690', '1399311575', '1', '添加商品分类: 下装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('691', '1399311581', '1', '添加商品分类: 内衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('692', '1399311587', '1', '添加商品分类: 母婴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('693', '1399311594', '1', '添加商品分类: 年龄', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('694', '1399311604', '1', '添加商品分类: 卫衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('695', '1399311614', '1', '添加商品分类: 长T', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('696', '1399311620', '1', '添加商品分类: 长袖衬衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('697', '1399311625', '1', '添加商品分类: 短T', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('698', '1399311631', '1', '添加商品分类: 短POLO', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('699', '1399311637', '1', '添加商品分类: 超轻羽绒服148元起', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('700', '1399311643', '1', '添加商品分类: 长裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('701', '1399311648', '1', '添加商品分类: 短裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('702', '1399311657', '1', '添加商品分类: 秋衣裤/家居服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('703', '1399311663', '1', '添加商品分类: 打底衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('704', '1399311668', '1', '添加商品分类: 内裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('705', '1399311674', '1', '添加商品分类: 婴儿装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('706', '1399311681', '1', '添加商品分类: 孕妇装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('707', '1399311689', '1', '添加商品分类: 0-1岁(59-80cm)', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('708', '1399311696', '1', '添加商品分类: 1-6岁(80-120cm)', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('709', '1399311701', '1', '添加商品分类: 7-15岁(130-170cm)', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('710', '1399311773', '1', '添加商品分类: 热销品类', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('711', '1399311785', '1', '添加商品分类: 款式', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('712', '1399311796', '1', '添加商品分类: 拉杆箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('713', '1399311804', '1', '添加商品分类: 材质', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('714', '1399311814', '1', '添加商品分类: 价格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('715', '1399311821', '1', '添加商品分类: 风格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('716', '1399311836', '1', '添加商品分类: 拉杆箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('717', '1399311844', '1', '添加商品分类: 双肩包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('718', '1399311851', '1', '添加商品分类: 单肩包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('719', '1399311859', '1', '添加商品分类: 斜挎包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('720', '1399311872', '1', '添加商品分类: 钱包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('721', '1399311879', '1', '添加商品分类: 邮差包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('722', '1399311905', '1', '添加商品分类: 男包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('723', '1399311914', '1', '添加商品分类: 女包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('724', '1399311930', '1', '添加商品分类: 中性款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('725', '1399311938', '1', '添加商品分类: 软箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('726', '1399311948', '1', '添加商品分类: 硬箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('727', '1399311959', '1', '添加商品分类: 真皮包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('728', '1399311965', '1', '添加商品分类: PU', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('729', '1399311975', '1', '添加商品分类: 帆布包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('730', '1399311983', '1', '添加商品分类: 尼龙/涤纶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('731', '1399311989', '1', '添加商品分类: 其他', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('732', '1399312002', '1', '添加商品分类: 0-49', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('733', '1399312010', '1', '添加商品分类: 50-99', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('734', '1399312017', '1', '添加商品分类: 100-159', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('735', '1399312026', '1', '添加商品分类: 160-199', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('736', '1399312035', '1', '添加商品分类: 200-299', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('737', '1399312053', '1', '添加商品分类: 300以上', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('738', '1399312067', '1', '添加商品分类: 时尚百搭', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('739', '1399312077', '1', '添加商品分类: 潮流复古', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('740', '1399312088', '1', '添加商品分类: 休闲运动', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('741', '1399312097', '1', '添加商品分类: 甜美可爱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('742', '1399312112', '1', '添加商品分类: 经典商务', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('743', '1399312169', '1', '添加商品分类: 冬季热卖', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('744', '1399312182', '1', '添加商品分类: 家纺床品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('745', '1399315370', '1', '添加商品分类: 家居服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('746', '1399315383', '1', '添加商品分类: 家居鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('747', '1399315392', '1', '添加商品分类: 收纳用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('748', '1399315402', '1', '添加商品分类: 卫浴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('749', '1399315412', '1', '添加商品分类: 生活日用', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('750', '1399315430', '1', '添加商品分类: 家居鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('751', '1399315445', '1', '添加商品分类: 热水袋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('752', '1399315457', '1', '添加商品分类: 毯子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('753', '1399315467', '1', '添加商品分类: 浴袍', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('754', '1399315498', '1', '添加商品分类: 床品套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('755', '1399315568', '1', '添加商品分类: 枕套', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('756', '1399315582', '1', '添加商品分类: 床单', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('757', '1399315592', '1', '添加商品分类: 枕芯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('758', '1399315602', '1', '添加商品分类: 家居毯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('759', '1399315615', '1', '添加商品分类: 男款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('760', '1399315628', '1', '添加商品分类: 女款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('761', '1399315658', '1', '添加商品分类: 收纳箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('762', '1399315758', '1', '添加商品分类: 真空收纳', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('763', '1399315769', '1', '添加商品分类: 收纳柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('764', '1399315782', '1', '添加商品分类: 衣架', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('765', '1399315794', '1', '添加商品分类: 毛巾', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('766', '1399315805', '1', '添加商品分类: 浴巾', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('767', '1399315818', '1', '添加商品分类: 手工皂', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('768', '1399315828', '1', '添加商品分类: 浴袍', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('769', '1399315845', '1', '添加商品分类: 热水袋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('770', '1399315888', '1', '添加商品分类: 保温杯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('771', '1399315899', '1', '添加商品分类: 墙贴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('772', '1399315909', '1', '添加商品分类: 十字绣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('773', '1399315918', '1', '添加商品分类: 餐厨用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('774', '1399315926', '1', '添加商品分类: 室内装饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('775', '1399315939', '1', '添加商品分类: 男款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('776', '1399315952', '1', '添加商品分类: 女款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('777', '1399316146', '1', '添加广告位置: 首页幻灯片广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('778', '1399316214', '1', '添加广告: 首页幻灯片1（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('779', '1399316234', '1', '添加广告: 首页幻灯片2（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('780', '1399316251', '1', '添加广告: 首页幻灯片3（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('781', '1399316269', '1', '添加广告: 首页幻灯片4（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('782', '1399316283', '1', '添加广告: 首页幻灯片5（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('783', '1399316463', '1', '编辑广告位置: 首页幻灯片广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('784', '1399316479', '1', '添加广告位置: 首页幻灯片广告位（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('785', '1399316488', '1', '编辑广告: 首页幻灯片5（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('786', '1399316519', '1', '添加广告: 首页幻灯片1（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('787', '1399316540', '1', '添加广告: 首页幻灯片2（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('788', '1399316583', '1', '添加广告: 首页幻灯片3（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('789', '1399316598', '1', '添加广告: 首页幻灯片4（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('790', '1399316611', '1', '添加广告: 首页幻灯片5（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('791', '1399316812', '1', '添加广告位置: 首页幻灯片下广告位1（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('792', '1399316837', '1', '编辑广告位置: 首页幻灯片下广告位1（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('793', '1399316851', '1', '添加广告: 首页幻灯片下广告1（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('794', '1399316857', '1', '编辑广告位置: 首页幻灯片下广告位1（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('795', '1399316989', '1', '添加广告位置: 首页幻灯片下广告位1（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('796', '1399316994', '1', '编辑广告位置: 首页幻灯片下广告位1（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('797', '1399316997', '1', '编辑广告: 首页幻灯片下广告1（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('798', '1399317016', '1', '添加广告: 首页幻灯片下广告1（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('799', '1399317120', '1', '添加广告位置: 首页幻灯片下广告位2、3、4、5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('800', '1399317143', '1', '添加广告: 首页幻灯片下广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('801', '1399317157', '1', '添加广告: 首页幻灯片下广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('802', '1399317174', '1', '添加广告: 首页幻灯片下广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('803', '1399317186', '1', '添加广告: 首页幻灯片下广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('804', '1399317240', '1', '编辑广告位置: 首页幻灯片下广告位2、3、4、5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('805', '1399317361', '1', '编辑广告位置: 首页幻灯片下广告位2、3、4、5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('806', '1399317386', '1', '编辑广告位置: 首页幻灯片下广告位2、3、4、5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('807', '1399317471', '1', '编辑广告位置: 首页幻灯片下广告位2、3、4、5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('808', '1399317480', '1', '编辑广告位置: 首页幻灯片下广告位2、3、4、5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('809', '1399317680', '1', '编辑广告位置: 首页幻灯片下广告位2、3、4、5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('810', '1399317740', '1', '编辑广告位置: 首页幻灯片下广告位2、3、4、5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('811', '1399318242', '1', '添加广告位置: 标题广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('812', '1399318266', '1', '添加广告: 女装标题广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('813', '1399318282', '1', '添加广告: 男装标题广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('814', '1399318316', '1', '添加广告: 女鞋/男鞋标题广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('815', '1399318340', '1', '添加广告: 童装标题广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('816', '1399318363', '1', '添加广告: 运动/户外标题广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('817', '1399318578', '1', '添加广告位置: 首页分类左侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('818', '1399318605', '1', '添加广告: 女装分类左侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('819', '1399318622', '1', '添加广告: 女装分类左侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('820', '1399318638', '1', '编辑广告位置: 首页分类左侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('821', '1399318673', '1', '添加广告位置: 首页分类右侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('822', '1399318684', '1', '编辑广告: 女装分类左侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('823', '1399318702', '1', '添加广告: 女装分类右侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('824', '1399318719', '1', '添加广告: 女装分类右侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('825', '1399318734', '1', '添加广告: 女装分类右侧广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('826', '1399318749', '1', '添加广告: 女装分类右侧广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('827', '1399318761', '1', '添加广告: 女装分类右侧广告7', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('828', '1399318790', '1', '编辑广告: 女装分类右侧广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('829', '1399318810', '1', '编辑广告: 女装分类右侧广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('830', '1399318828', '1', '添加广告: 女装分类右侧广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('831', '1399318902', '1', '添加广告: 男装分类左侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('832', '1399318922', '1', '添加广告: 男装分类左侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('833', '1399318957', '1', '添加广告: 男装分类右侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('834', '1399318971', '1', '添加广告: 男装分类右侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('835', '1399318988', '1', '添加广告: 男装分类右侧广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('836', '1399319000', '1', '添加广告: 男装分类右侧广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('837', '1399319013', '1', '添加广告: 男装分类右侧广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('838', '1399319069', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('839', '1399319134', '1', '添加广告: 童装分类左侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('840', '1399319146', '1', '添加广告: 童装分类左侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('841', '1399319210', '1', '添加广告: 童装分类右侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('842', '1399319223', '1', '添加广告: 童装分类右侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('843', '1399319236', '1', '添加广告: 童装分类右侧广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('844', '1399319251', '1', '添加广告: 童装分类右侧广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('845', '1399319264', '1', '添加广告: 童装分类右侧广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('846', '1399319342', '1', '添加广告: 运动/户外分类左侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('847', '1399319353', '1', '添加广告: 运动/户外分类左侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('848', '1399319373', '1', '添加广告: 运动/户外分类右侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('849', '1399319385', '1', '添加广告: 运动/户外分类右侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('850', '1399319396', '1', '添加广告: 运动/户外分类右侧广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('851', '1399319409', '1', '添加广告: 运动/户外分类右侧广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('852', '1399319419', '1', '添加广告: 运动/户外分类右侧广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('853', '1399319537', '1', '添加广告位置: 抢购活动广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('854', '1399319555', '1', '添加广告: 女装抢购活动广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('855', '1399319568', '1', '添加广告: 男装抢购活动广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('856', '1399319586', '1', '添加广告: 女鞋/男鞋抢购活动广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('857', '1399319604', '1', '添加广告: 运动/户外抢购活动广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('858', '1399319643', '1', '添加广告: 内衣/配饰抢购活动广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('859', '1399319667', '1', '添加广告: 童装抢购活动广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('860', '1399319682', '1', '添加广告: 箱包抢购活动广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('861', '1399319697', '1', '添加广告: 家居抢购活动广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('862', '1399319835', '1', '编辑商品分类: 女装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('863', '1399320043', '1', '添加广告位置: 顶级分类页幻灯片广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('864', '1399320061', '1', '添加广告: 女装顶级分类页幻灯片1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('865', '1399320070', '1', '添加广告: 女装顶级分类页幻灯片2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('866', '1399320079', '1', '添加广告: 女装顶级分类页幻灯片3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('867', '1399320088', '1', '添加广告: 女装顶级分类页幻灯片4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('868', '1399320097', '1', '添加广告: 女装顶级分类页幻灯片5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('869', '1399320121', '1', '编辑广告位置: 顶级分类页幻灯片广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('870', '1399320156', '1', '添加广告位置: 顶级分类页右侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('871', '1399320171', '1', '添加广告: 女装顶级分类页右侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('872', '1399320181', '1', '添加广告: 女装顶级分类页右侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('873', '1399324783', '1', '添加广告位置: 顶级分类页新品推荐右侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('874', '1399324803', '1', '添加广告: 女装顶级分类页新品推荐右侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('875', '1399324935', '1', '添加商品: [VT]印花T恤 SWEET SMILE(女款) 玛瑙红色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('876', '1399324968', '1', '添加商品: [VT]印花T恤 可爱斗牛犬（女款） 白色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('877', '1399324996', '1', '添加商品: [VT]印花T恤 部落纹样（女款） 黑色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('878', '1399325041', '1', '添加商品: 全棉色织格子腰带舒适女式长袖衬衫 绿色小方格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('879', '1399325075', '1', '添加商品: 全棉色织格子花边舒适女式长袖衬衫 蕾丝深灰格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('880', '1399325116', '1', '添加商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('881', '1399325193', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('882', '1399325272', '1', '添加商品: 超轻薄便携式女开衫连帽卫衣 女 浅黄', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('883', '1399325303', '1', '添加商品: 超轻薄便携式女开衫连帽卫衣 女 藏蓝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('884', '1399325332', '1', '添加商品: 超轻薄便携式女开衫连帽卫衣 女 浅粉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('885', '1399325364', '1', '添加商品: 超轻薄便携式女开衫连帽卫衣 女 纯净蓝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('886', '1399325397', '1', '添加商品: 超轻薄便携式女开衫连帽卫衣 女 浅麻灰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('887', '1399325511', '1', '添加商品: 日系提花宽松针织套头衫 卡其色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('888', '1399325538', '1', '添加商品: 韩版细绞花V领套头衫 深蓝色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('889', '1399325574', '1', '添加商品: 韩版细绞花V领套头衫 浅杏色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('890', '1399325604', '1', '添加商品: 女装开叉领基础款 中杏色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('891', '1399325636', '1', '添加商品: 韩版细绞花圆领套头衫 浅杏色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('892', '1399326708', '1', '添加商品: 清新甜美糖果色短袖雪纺衬衫 粉色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('893', '1399326798', '1', '添加商品: 浪漫优雅小立领撞色边短袖雪纺衬衫 裸色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('894', '1399326871', '1', '添加商品: 清新甜美棉质花边短袖雪纺衬衫 浅茶色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('895', '1399326954', '1', '添加商品: 飘带领浪漫优雅雪纺中袖衬衫 胭脂红', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('896', '1399327092', '1', '添加商品: Sweety甜美提花拼接雪纺上衣 裸粉色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('897', '1399327121', '1', '添加商品: 时尚撞色大翻领落肩袖雪纺衬衫 宝蓝色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('898', '1399327272', '1', '添加商品: [VT]时尚黑白系列(3)(女款) 白色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('899', '1399327329', '1', '添加商品: [VT]时尚黑白系列(2)(女款) 白色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('900', '1399327342', '1', '编辑商品: [VT]时尚黑白系列(3)(女款) 白色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('901', '1399327381', '1', '添加商品: [VT]印花T恤 音乐符号(女款) 白色/姜黄色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('902', '1399327421', '1', '添加商品: [VT]甜美蕾丝领长袖T恤(女款) 白色/黑色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('903', '1399327455', '1', '添加商品: [VT]时尚蕾丝领长袖T恤(女款) 米白色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('904', '1399327506', '1', '添加商品: [VT]森女织花裙摆长袖T恤(女款) 米白色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('905', '1399327601', '1', '添加商品: 加厚欧美范连帽中长款羽绒服 藕粉色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('906', '1399327647', '1', '添加商品: 卖萌毛球连帽短款羽绒服 香槟金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('907', '1399327687', '1', '添加商品: 大毛领丝带短款羽绒服 亮黄色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('908', '1399327726', '1', '添加商品: 甜美珍珠领短款羽绒服 水蓝色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('909', '1399327759', '1', '添加商品: 可爱圆点连帽短款羽绒服 黑色/米色波点', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('910', '1399327876', '1', '添加商品: 基础百搭修身窄脚牛仔长裤女款VJ295 中蓝色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('911', '1399327908', '1', '添加商品: 百搭多色修身窄脚牛仔长裤女款VJ1305 怀旧中蓝色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('912', '1399327941', '1', '添加商品: 针织牛仔短裤W028 牛仔蓝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('913', '1399327982', '1', '添加商品: 百搭水洗翻边合体牛仔短裤女款VJ243 中蓝色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('914', '1399328023', '1', '添加商品: 五袋水洗毛边合体牛仔短裤女款VJ247 中蓝色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('915', '1399328097', '1', '添加商品: Sweety甜美系带雪纺连衣裙 浅粉色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('916', '1399328133', '1', '添加商品: JX假两件套蕾丝拼接连衣裙 白色/黑色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('917', '1399328174', '1', '添加商品: Sweety甜美蕾丝花苞裙 橙/白', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('918', '1399328223', '1', '添加商品: skyeisle 天空岛 韩国夏装新款女波西米亚糖果色半身长裙Q2120507壹 支持货到付款 杏色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('919', '1399328269', '1', '添加商品: Street 压褶无袖连衣裙 糖果粉色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('920', '1399328316', '1', '编辑商品分类: 中长款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('921', '1399328343', '1', '编辑商品分类: 套衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('922', '1399328416', '1', '编辑商品分类: 套衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('923', '1399328429', '1', '编辑商品分类: 羽绒服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('924', '1399328440', '1', '编辑商品分类: 针织衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('925', '1399328459', '1', '编辑商品分类: 针织衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('926', '1399399780', '1', '安装支付方式: 网银在线', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('927', '1399399784', '1', '安装支付方式: 快钱人民币网关', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('928', '1399417614', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('929', '1399419796', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('930', '1399420047', '1', '编辑前台语言项: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('931', '1399425263', '1', '编辑商品分类: 更多款式', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('932', '1399584545', '1', '添加属性: 款型', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('933', '1399584552', '1', '添加属性: 样式', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('934', '1399584560', '1', '添加属性: 裙长', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('935', '1399584566', '1', '添加属性: 风格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('936', '1399584572', '1', '添加属性: 价格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('937', '1399584883', '1', '编辑属性: 款型', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('938', '1399584891', '1', '编辑属性: 样式', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('939', '1399584897', '1', '编辑属性: 裙长', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('940', '1399584903', '1', '编辑属性: 风格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('941', '1399584908', '1', '编辑属性: 价格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('942', '1399585011', '1', '编辑商品: Street 压褶无袖连衣裙 糖果粉色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('943', '1399585139', '1', '编辑商品分类: 裙装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('944', '1399843505', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('945', '1399844399', '1', '添加广告位置: 分类页左侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('946', '1399844425', '1', '添加广告: 分类页左侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('947', '1399850952', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('948', '1399851320', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('949', '1399921253', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('950', '1400003356', '1', '添加属性: 颜色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('951', '1400021795', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('952', '1400028110', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('953', '1400029643', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('954', '1400029676', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('955', '1400029707', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('956', '1400029723', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('957', '1400029804', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('958', '1400029818', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('959', '1400030908', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '192.168.1.208');
INSERT INTO `ecs_admin_log` VALUES ('960', '1400093587', '1', '添加属性: 测试复选', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('961', '1400093616', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('962', '1400094577', '1', '编辑属性: 颜色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('963', '1400094842', '1', '编辑属性: 颜色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('964', '1400094851', '1', '编辑属性: 颜色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('965', '1400095036', '1', '添加属性: 尺寸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('966', '1400095062', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('967', '1400095524', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('968', '1400095577', '1', '添加属性: 复选', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('969', '1400095602', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('970', '1400095611', '1', '编辑属性: 复选', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('971', '1400095613', '1', '编辑属性: 尺码', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('972', '1400110206', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('973', '1400112197', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('974', '1400114422', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('975', '1400114454', '1', '编辑属性: 尺码', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('976', '1400114475', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('977', '1400114515', '1', '编辑属性: 尺码', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('978', '1400114538', '1', '编辑属性: 尺码', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('979', '1400115873', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('980', '1400116160', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('981', '1400116172', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('982', '1400116223', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('983', '1400116265', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('984', '1400116325', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('985', '1400116380', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('986', '1400116409', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('987', '1400116434', '1', '编辑属性: 颜色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('988', '1400116452', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('989', '1400116551', '1', '编辑属性: 复选', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('990', '1400116553', '1', '编辑属性: 尺码', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('991', '1400116555', '1', '编辑属性: 复选', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('992', '1400116593', '1', '编辑属性: 复选', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('993', '1400116608', '1', '编辑属性: 尺码', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('994', '1400116616', '1', '编辑属性: 复选', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('995', '1400116618', '1', '编辑属性: 尺码', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('996', '1400116720', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('997', '1400116986', '1', '编辑商品: 全棉色织格子花边舒适女式长袖衬衫 蕾丝深灰格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('998', '1400116996', '1', '编辑商品: 全棉色织格子花边舒适女式长袖衬衫 蕾丝深灰格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('999', '1400117025', '1', '编辑商品: 全棉色织格子花边舒适女式长袖衬衫 蕾丝深灰格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1000', '1400117052', '1', '编辑商品: 全棉色织格子花边舒适女式长袖衬衫 蕾丝深灰格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1001', '1400117076', '1', '编辑商品: 全棉色织格子花边舒适女式长袖衬衫 蕾丝深灰格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1002', '1400174771', '1', '添加优惠活动: 测试优惠活动1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1003', '1400183484', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1004', '1400694520', '1', '编辑属性: 尺码', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1005', '1400697253', '1', '编辑属性: 尺码', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1006', '1401149384', '1', '添加在线调查: 1111', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1007', '1401149393', '1', '编辑在线调查: 1111', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1008', '1401212205', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1009', '1401214577', '1', '添加属性: 人群', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1010', '1401214583', '1', '添加属性: 风格', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1011', '1401214589', '1', '添加属性: 季节', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1012', '1401214593', '1', '添加属性: 厚度', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1013', '1401214599', '1', '添加属性: 口袋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1014', '1401214603', '1', '添加属性: 版型', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1015', '1401214608', '1', '添加属性: 袖长', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1016', '1401214614', '1', '添加属性: 袖型', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1017', '1401214619', '1', '添加属性: 领型', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1018', '1401214628', '1', '添加属性: 衣长', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1019', '1401214635', '1', '添加属性: 花色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1020', '1401214642', '1', '添加属性: 面料', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1021', '1401214650', '1', '编辑商品类型: 衬衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1022', '1401214688', '1', '添加属性: 颜色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1023', '1401214697', '1', '添加属性: 尺码', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1024', '1401214823', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1025', '1401229972', '1', '编辑用户评论: 回复', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1026', '1401229980', '1', '编辑用户评论: 回复', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1027', '1401230024', '1', '编辑用户评论: 回复', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1028', '1401230427', '1', '编辑用户评论: 回复', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1029', '1401237569', '1', '编辑用户评论: 回复', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1030', '1401237763', '1', '编辑用户评论: 回复', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1031', '1402270548', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1032', '1402270562', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1033', '1402335803', '1', '编辑商品: Street 压褶无袖连衣裙 糖果粉色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1034', '1402335819', '1', '编辑商品: skyeisle 天空岛 韩国夏装新款女波西米亚糖果色半身长裙Q2120507壹 支持货到付款 杏色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1035', '1402335826', '1', '编辑商品: Sweety甜美蕾丝花苞裙 橙/白', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1036', '1402335837', '1', '编辑商品: 针织牛仔短裤W028 牛仔蓝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1037', '1402422365', '1', '添加夺宝奇兵: adsadas', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1038', '1402422770', '1', '添加拍卖活动: 222', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1039', '1402438226', '1', '添加积分可兑换的商品: 15', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1040', '1402438235', '1', '添加积分可兑换的商品: 17', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1041', '1402438241', '1', '添加积分可兑换的商品: 16', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1042', '1402438734', '1', '添加积分可兑换的商品: 6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1043', '1402439099', '1', '商品: 6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1044', '1402439099', '1', '商品: 6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1045', '1402439099', '1', '商品: 6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1046', '1402439099', '1', '商品: 6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1047', '1402439099', '1', '商品: 6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1048', '1402439099', '1', '商品: 6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1049', '1403031295', '1', '添加团购商品: [VT]印花T恤 SWEET SMILE(女款) 玛瑙红色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1050', '1403031307', '1', '添加团购商品: [VT]印花T恤 可爱斗牛犬（女款） 白色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1051', '1403031318', '1', '添加团购商品: [VT]印花T恤 部落纹样（女款） 黑色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1052', '1403031334', '1', '添加团购商品: 超轻薄便携式女开衫连帽卫衣 女 浅黄', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1053', '1403031347', '1', '添加团购商品: 超轻薄便携式女开衫连帽卫衣 女 纯净蓝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1054', '1403031355', '1', '编辑团购商品: 超轻薄便携式女开衫连帽卫衣 女 浅黄[6]', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1055', '1403031361', '1', '编辑团购商品: [VT]印花T恤 部落纹样（女款） 黑色[5]', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1056', '1403031367', '1', '编辑团购商品: [VT]印花T恤 可爱斗牛犬（女款） 白色[4]', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1057', '1403031372', '1', '编辑团购商品: [VT]印花T恤 SWEET SMILE(女款) 玛瑙红色[3]', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1058', '1403031396', '1', '添加团购商品: Sweety甜美系带雪纺连衣裙 浅粉色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1059', '1403049731', '1', '编辑商品: Sweety甜美系带雪纺连衣裙 浅粉色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1060', '1403049900', '1', '编辑商品: Sweety甜美系带雪纺连衣裙 浅粉色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1061', '1403052327', '1', '编辑商品: Sweety甜美系带雪纺连衣裙 浅粉色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1062', '1403052366', '1', '编辑商品: Sweety甜美系带雪纺连衣裙 浅粉色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1063', '1403054689', '1', '商品: 39', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1064', '1403054689', '1', '商品: 39', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1065', '1403054689', '1', '商品: 39', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1066', '1403054689', '1', '商品: 39', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1067', '1403054689', '1', '商品: 39', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1068', '1403054689', '1', '商品: 39', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1069', '1403114142', '1', '添加广告位置: 团购左侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1070', '1403114175', '1', '添加广告: 团购列表页左侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1071', '1403114185', '1', '添加广告: 团购列表页左侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1072', '1403114195', '1', '添加广告: 团购列表页左侧广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1073', '1403114223', '1', '编辑广告位置: 团购列表左侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1074', '1403114225', '1', '编辑广告位置: 团购列表左侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1075', '1403114249', '1', '添加广告位置: 团购详情左侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1076', '1403114271', '1', '添加广告: 团购详情左侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1077', '1403114282', '1', '添加广告: 团购详情左侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1078', '1403114295', '1', '添加广告: 团购详情左侧广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1079', '1403114496', '1', '添加广告位置: 团购列表右侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1080', '1403114518', '1', '添加广告位置: 团购详情右侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1081', '1403114546', '1', '添加广告: 团购列表页右侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1082', '1403114563', '1', '添加广告: 团购列表页右侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1083', '1403114575', '1', '添加广告: 团购列表页右侧广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1084', '1403114586', '1', '添加广告: 团购列表页右侧广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1085', '1403114599', '1', '添加广告: 团购列表页右侧广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1086', '1403114622', '1', '添加广告: 团购详情页右侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1087', '1403114632', '1', '添加广告: 团购详情页右侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1088', '1403114643', '1', '添加广告: 团购详情页右侧广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1089', '1403114657', '1', '添加广告: 团购详情页右侧广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1090', '1403114667', '1', '添加广告: 团购详情页右侧广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1091', '1403114921', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1092', '1403114956', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1093', '1403115456', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1094', '1403115489', '1', '编辑属性: 尺码', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1095', '1403116654', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1096', '1403116690', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1097', '1403117592', '1', '编辑商品: 女装开叉领基础款 中杏色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1098', '1403128357', '1', '编辑团购商品: Sweety甜美系带雪纺连衣裙 浅粉色[8]', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1099', '1403128366', '1', '编辑团购商品: Sweety甜美系带雪纺连衣裙 浅粉色[8]', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1100', '1403214036', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1101', '1403216200', '1', '编辑广告: 女装顶级分类页右侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1102', '1403459153', '1', '添加广告位置: 首页弹出层广告（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1103', '1403459196', '1', '添加广告位置: 首页弹出层广告（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1104', '1403459429', '1', '添加广告: 首页弹出层广告（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1105', '1403459446', '1', '添加广告: 首页弹出层广告（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1106', '1403459704', '1', '编辑广告: 运动/户外标题广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1107', '1403459706', '1', '编辑广告: 运动/户外抢购活动广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1108', '1403459706', '1', '编辑广告: 运动/户外抢购活动广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1109', '1403483862', '1', '编辑商品分类: 女装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1110', '1403483899', '1', '编辑商品分类: 女装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1111', '1403484026', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1112', '1403724201', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '192.168.1.140');
INSERT INTO `ecs_admin_log` VALUES ('1113', '1403724242', '1', '编辑属性: 尺码', '192.168.1.140');
INSERT INTO `ecs_admin_log` VALUES ('1114', '1403724263', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '192.168.1.140');
INSERT INTO `ecs_admin_log` VALUES ('1115', '1403724280', '1', '编辑属性: 尺码', '192.168.1.140');
INSERT INTO `ecs_admin_log` VALUES ('1116', '1403724300', '1', '编辑商品: 全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '192.168.1.140');
INSERT INTO `ecs_admin_log` VALUES ('1117', '1406058553', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1118', '1406069374', '1', '添加广告位置: 首页幻灯片右侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1119', '1406069395', '1', '添加广告: 首页幻灯片右侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1120', '1406074024', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1121', '1406074910', '1', '添加文章: 母婴4周年最高200减100', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1122', '1406074918', '1', '添加文章: 充话费抢美菱对开门冰箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1123', '1406074925', '1', '添加文章: 京东大篷车百城行', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1124', '1406074932', '1', '添加文章: 七夕表白珠宝专场', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1125', '1406074938', '1', '添加文章: 出游装备1-5折还满减', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1126', '1406074946', '1', '添加文章: 小家电专场满500减100', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1127', '1406074952', '1', '添加文章: 手机7周年特惠盛典', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1128', '1406074958', '1', '添加文章: 海尔品牌团 特价一天！', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1129', '1406075262', '1', '添加广告位置: 首页幻灯片下方广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1130', '1406075296', '1', '添加广告: 首页幻灯片下方广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1131', '1406075320', '1', '编辑广告: 首页幻灯片下方广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1132', '1406075324', '1', '编辑广告: 首页幻灯片下方广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1133', '1406075333', '1', '添加广告: 首页幻灯片下方广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1134', '1406075478', '1', '编辑广告: 首页幻灯片下方广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1135', '1406075488', '1', '添加广告: 首页幻灯片下方广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1136', '1406075518', '1', '添加广告: 首页幻灯片下方广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1137', '1406075539', '1', '添加广告: 首页幻灯片下方广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1138', '1406075561', '1', '添加广告: 首页幻灯片下方广告6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1139', '1406075576', '1', '添加广告: 首页幻灯片下方广告7', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1140', '1406075586', '1', '添加广告: 首页幻灯片下方广告8', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1141', '1406075607', '1', '添加广告: 首页幻灯片下方广告9', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1142', '1406076695', '1', '编辑广告位置: 首页幻灯片下方广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1143', '1406137147', '1', '添加广告位置: 活动广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1144', '1406137160', '1', '添加广告: 活动广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1145', '1406140880', '1', '删除广告位置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1146', '1406140886', '1', '编辑在线调查: 您从哪里知道我们的网站', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1147', '1406143895', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1148', '1406144161', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1149', '1406150844', '1', '添加广告位置: 生活橱窗广告位1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1150', '1406150873', '1', '添加广告: 生活橱窗广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1151', '1406151481', '1', '编辑广告位置: 生活橱窗广告位1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1152', '1406151489', '1', '编辑广告位置: 生活橱窗广告位1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1153', '1406151693', '1', '编辑广告: 首页幻灯片右侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1154', '1406151695', '1', '编辑广告: 生活橱窗广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1155', '1406151695', '1', '编辑广告: 生活橱窗广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1156', '1406151817', '1', '编辑广告: 生活橱窗广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1157', '1406152012', '1', '编辑广告: 生活橱窗广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1158', '1406152156', '1', '编辑广告: 生活橱窗广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1159', '1406152220', '1', '添加广告位置: 生活橱窗广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1160', '1406152275', '1', '编辑广告位置: 生活橱窗广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1161', '1406152280', '1', '删除广告位置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1162', '1406152314', '1', '添加广告: 生活橱窗广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1163', '1406152342', '1', '编辑广告: 生活橱窗广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1164', '1406152353', '1', '编辑广告: 生活橱窗广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1165', '1406152418', '1', '添加广告: 生活橱窗广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1166', '1406152464', '1', '编辑广告: 生活橱窗广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1167', '1406152481', '1', '编辑广告: 生活橱窗广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1168', '1406152505', '1', '添加广告: 生活橱窗广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1169', '1406152515', '1', '编辑广告: 生活橱窗广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1170', '1406152550', '1', '添加广告: 生活橱窗广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1171', '1406152554', '1', '编辑广告: 生活橱窗广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1172', '1406152580', '1', '添加广告: 生活橱窗广告6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1173', '1406152606', '1', '添加广告: 生活橱窗广告7', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1174', '1406152655', '1', '添加广告: 生活橱窗广告8', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1175', '1406159560', '1', '编辑广告位置: 首页幻灯片下方广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1176', '1406159991', '1', '编辑广告位置: 首页幻灯片下方广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1177', '1406159995', '1', '编辑广告位置: 首页幻灯片下方广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1178', '1406160686', '1', '编辑广告位置: 首页幻灯片下方广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1179', '1406161046', '1', '编辑广告位置: 首页幻灯片下方广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1180', '1406163739', '1', '编辑广告位置: 308', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1181', '1406163920', '1', '编辑广告位置: 活动广告位(宽)', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1182', '1406163925', '1', '编辑广告位置: 活动广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1183', '1406163927', '1', '编辑广告位置: 活动广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1184', '1406163940', '1', '编辑广告位置: 308', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1185', '1406163943', '1', '编辑广告位置: 活动广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1186', '1406163950', '1', '编辑广告位置: 活动广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1187', '1406163956', '1', '编辑广告位置: 活动广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1188', '1406163972', '1', '添加广告位置: 活动广告位（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1189', '1406164198', '1', '添加广告: 活动广告（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1190', '1406164205', '1', '编辑广告: 活动广告（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1191', '1406164212', '1', '编辑广告: 活动广告（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1192', '1406165318', '1', '添加广告位置: 生活橱窗下方通栏广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1193', '1406228485', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1194', '1406228503', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1195', '1406311557', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1196', '1406311574', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1197', '1406311705', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1198', '1406311725', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1199', '1406312046', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1200', '1406312065', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1201', '1406312079', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1202', '1406313036', '1', '编辑商品分类: 图书、音像、数字商品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1203', '1406313051', '1', '编辑商品分类: 家用电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1204', '1406313062', '1', '编辑商品分类: 手机、数码、京东通信', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1205', '1406313071', '1', '编辑商品分类: 电脑、办公', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1206', '1406313080', '1', '编辑商品分类: 家居、家具、家装、厨具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1207', '1406313263', '1', '添加商品分类: 图书、音像、数字商品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1208', '1406313278', '1', '添加商品分类: 家用电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1209', '1406313282', '1', '添加商品分类: 手机、数码、京东通信', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1210', '1406313288', '1', '添加商品分类: 电脑、办公', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1211', '1406313315', '1', '添加商品分类: 家居、家具、家装、厨具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1212', '1406313324', '1', '添加商品分类: 服饰内衣、珠宝首饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1213', '1406313330', '1', '添加商品分类: 个护化妆', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1214', '1406313335', '1', '添加商品分类: 鞋靴、箱包、钟表、奢侈品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1215', '1406313340', '1', '添加商品分类: 运动户外', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1216', '1406313344', '1', '添加商品分类: 汽车用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1217', '1406313349', '1', '添加商品分类: 母婴、玩具乐器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1218', '1406313355', '1', '添加商品分类: 食品饮料、酒类、生鲜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1219', '1406313360', '1', '添加商品分类: 营养保健', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1220', '1406313366', '1', '添加商品分类: 彩票、旅行、充值、票务', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1221', '1406313616', '1', '编辑商品分类: 电子书', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1222', '1406313624', '1', '添加商品分类: 数字音乐', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1223', '1406313655', '1', '添加商品分类: 音像', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1224', '1406313661', '1', '添加商品分类: 文艺', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1225', '1406313667', '1', '添加商品分类: 人文社科', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1226', '1406313671', '1', '添加商品分类: 经管励志', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1227', '1406313676', '1', '添加商品分类: 生活', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1228', '1406313681', '1', '添加商品分类: 科技', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1229', '1406313686', '1', '添加商品分类: 少儿', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1230', '1406313690', '1', '添加商品分类: 教育', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1231', '1406313694', '1', '添加商品分类: 其它', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1232', '1406313726', '1', '添加商品分类: 免费小说', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1233', '1406313740', '1', '编辑商品分类: 免费', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1234', '1406313744', '1', '添加商品分类: 小说', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1235', '1406313815', '1', '添加商品分类: 励志与成功', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1236', '1406313826', '1', '添加商品分类: 婚恋/两性', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1237', '1406313834', '1', '添加商品分类: 文学', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1238', '1406313847', '1', '添加商品分类: 经管', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1239', '1406313853', '1', '添加商品分类: 畅读VIP', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1240', '1406313869', '1', '添加商品分类: 通俗流行', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1241', '1406313876', '1', '添加商品分类: 古典音乐', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1242', '1406313885', '1', '添加商品分类: 摇滚说唱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1243', '1406313892', '1', '添加商品分类: 爵士蓝调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1244', '1406313897', '1', '添加商品分类: 乡村民谣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1245', '1406313901', '1', '添加商品分类: 有声读物', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1246', '1406313919', '1', '添加商品分类: 音乐', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1247', '1406313925', '1', '添加商品分类: 影视教育', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1248', '1406313933', '1', '添加商品分类: 音像', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1249', '1406313939', '1', '添加商品分类: 游戏', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1250', '1406314556', '1', '添加商品分类: 小说', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1251', '1406314566', '1', '添加商品分类: 文学', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1252', '1406314578', '1', '添加商品分类: 青春文学', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1253', '1406314584', '1', '添加商品分类: 传记', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1254', '1406314589', '1', '添加商品分类: 艺术', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1255', '1406314604', '1', '添加商品分类: 历史', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1256', '1406314615', '1', '添加商品分类: 心理学', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1257', '1406314620', '1', '添加商品分类: 政治/军事', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1258', '1406314626', '1', '添加商品分类: 国学/古籍', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1259', '1406314634', '1', '添加商品分类: 哲学/宗教', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1260', '1406314638', '1', '添加商品分类: 社会科学', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1261', '1406314658', '1', '添加商品分类: 经济', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1262', '1406314665', '1', '添加商品分类: 金融与投资', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1263', '1406314678', '1', '添加商品分类: 管理', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1264', '1406314685', '1', '添加商品分类: 励志与成功', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1265', '1406314712', '1', '添加商品分类: 家教与育儿', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1266', '1406314719', '1', '添加商品分类: 旅游/地图', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1267', '1406314725', '1', '添加商品分类: 烹饪/美食', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1268', '1406314735', '1', '添加商品分类: 时尚/美妆', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1269', '1406314755', '1', '添加商品分类: 家居', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1270', '1406314764', '1', '添加商品分类: 婚恋与两性', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1271', '1406314772', '1', '添加商品分类: 娱乐/休闲', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1272', '1406314781', '1', '添加商品分类: 健身与保健', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1273', '1406314794', '1', '添加商品分类: 动漫/幽默', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1274', '1406314833', '1', '添加商品分类: 体育/运动', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1275', '1406315044', '1', '添加商品分类: 科普', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1276', '1406315050', '1', '添加商品分类: IT', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1277', '1406315061', '1', '添加商品分类: 建筑', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1278', '1406315067', '1', '添加商品分类: 医学', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1279', '1406315089', '1', '添加商品分类: 工业技术', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1280', '1406315094', '1', '添加商品分类: 电子/通信', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1281', '1406315103', '1', '添加商品分类: 农林', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1282', '1406315110', '1', '添加商品分类: 科学与自然', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1283', '1406315268', '1', '添加商品分类: 少儿', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1284', '1406315274', '1', '添加商品分类: 0-2岁', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1285', '1406315279', '1', '添加商品分类: 3-6岁', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1286', '1406315285', '1', '添加商品分类: 7-10岁', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1287', '1406315290', '1', '添加商品分类: 11-14岁', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1288', '1406315371', '1', '添加商品分类: 教材', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1289', '1406315379', '1', '添加商品分类: 中小学教辅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1290', '1406315388', '1', '添加商品分类: 考试', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1291', '1406315393', '1', '添加商品分类: 外语学习', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1292', '1406315406', '1', '添加商品分类: 英文原版书', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1293', '1406315419', '1', '添加商品分类: 港台图书', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1294', '1406315425', '1', '添加商品分类: 工具书', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1295', '1406315431', '1', '添加商品分类: 套装书', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1296', '1406315435', '1', '添加商品分类: 杂志/期刊', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1297', '1406315523', '1', '添加商品分类: 大 家 电', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1298', '1406315530', '1', '添加商品分类: 生活电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1299', '1406315537', '1', '添加商品分类: 厨房电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1300', '1406315543', '1', '添加商品分类: 个护健康', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1301', '1406315550', '1', '添加商品分类: 五金家装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1302', '1406315614', '1', '添加商品分类: 平板电视', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1303', '1406315630', '1', '添加商品分类: 空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1304', '1406315638', '1', '添加商品分类: 冰箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1305', '1406315644', '1', '添加商品分类: 洗衣机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1306', '1406315651', '1', '添加商品分类: 家庭影院', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1307', '1406316995', '1', '添加商品分类: DVD', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1308', '1406317006', '1', '添加商品分类: 迷你音响', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1309', '1406317012', '1', '添加商品分类: 烟机/灶具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1310', '1406317021', '1', '添加商品分类: 热水器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1311', '1406317027', '1', '添加商品分类: 消毒柜/洗碗机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1312', '1406317034', '1', '添加商品分类: 酒柜/冷柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1313', '1406317041', '1', '添加商品分类: 家电配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1314', '1406317054', '1', '添加商品分类: 电风扇', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1315', '1406317064', '1', '添加商品分类: 冷风扇', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1316', '1406317072', '1', '添加商品分类: 净化器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1317', '1406317081', '1', '添加商品分类: 饮水机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1318', '1406317089', '1', '添加商品分类: 净水设备', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1319', '1406317098', '1', '添加商品分类: 挂烫机/熨斗', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1320', '1406317104', '1', '添加商品分类: 吸尘器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1321', '1406317115', '1', '添加商品分类: 电话机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1322', '1406317122', '1', '添加商品分类: 插座', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1323', '1406317129', '1', '添加商品分类: 收录/音机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1324', '1406317141', '1', '添加商品分类: 清洁机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1325', '1406317148', '1', '添加商品分类: 加湿器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1326', '1406317158', '1', '添加商品分类: 除湿/干衣机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1327', '1406317165', '1', '添加商品分类: 取暖电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1328', '1406317172', '1', '添加商品分类: 其它生活电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1329', '1406317371', '1', '添加商品分类: 电压力锅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1330', '1406317378', '1', '添加商品分类: 电饭煲', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1331', '1406317387', '1', '添加商品分类: 豆浆机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1332', '1406317394', '1', '添加商品分类: 面包机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1333', '1406317403', '1', '添加商品分类: 咖啡机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1334', '1406317411', '1', '添加商品分类: 微波炉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1335', '1406317420', '1', '添加商品分类: 料理/榨汁机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1336', '1406317477', '1', '添加商品分类: 电烤箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1337', '1406317499', '1', '添加商品分类: 电磁炉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1338', '1406317509', '1', '添加商品分类: 电饼铛/烧烤盘', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1339', '1406317521', '1', '添加商品分类: 煮蛋器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1340', '1406317531', '1', '添加商品分类: 酸奶机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1341', '1406317541', '1', '添加商品分类: 电水壶/热水瓶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1342', '1406317550', '1', '添加商品分类: 电炖锅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1343', '1406317559', '1', '添加商品分类: 多用途锅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1344', '1406317566', '1', '添加商品分类: 果蔬解毒机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1345', '1406317574', '1', '添加商品分类: 其它厨房电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1346', '1406317586', '1', '添加商品分类: 剃须刀剃/脱毛器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1347', '1406317597', '1', '添加商品分类: 口腔护理', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1348', '1406317609', '1', '添加商品分类: 剃/脱毛器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1349', '1406317619', '1', '编辑商品分类: 剃须刀', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1350', '1406317629', '1', '添加商品分类: 电吹风', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1351', '1406317640', '1', '添加商品分类: 美容', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1352', '1406317648', '1', '添加商品分类: 美发', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1353', '1406317655', '1', '添加商品分类: 按摩器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1354', '1406317663', '1', '添加商品分类: 按摩椅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1355', '1406317670', '1', '添加商品分类: 足浴盆', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1356', '1406317678', '1', '添加商品分类: 血压计', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1357', '1406317686', '1', '添加商品分类: 健康秤/厨房秤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1358', '1406317695', '1', '添加商品分类: 血糖仪', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1359', '1406317704', '1', '添加商品分类: 体温计', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1360', '1406317715', '1', '添加商品分类: 计步器/脂肪检测仪', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1361', '1406317723', '1', '添加商品分类: 其它健康电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1362', '1406317734', '1', '添加商品分类: 电动工具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1363', '1406317740', '1', '添加商品分类: 手动工具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1364', '1406317748', '1', '添加商品分类: 仪器仪表', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1365', '1406317755', '1', '添加商品分类: 浴霸/排气扇', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1366', '1406317766', '1', '添加商品分类: 灯具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1367', '1406317778', '1', '添加商品分类: LED灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1368', '1406317789', '1', '添加商品分类: 洁身器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1369', '1406317800', '1', '添加商品分类: 水槽', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1370', '1406317808', '1', '添加商品分类: 龙头', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1371', '1406317816', '1', '添加商品分类: 淋浴花洒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1372', '1406317824', '1', '添加商品分类: 厨卫五金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1373', '1406317834', '1', '添加商品分类: 家具五金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1374', '1406317846', '1', '添加商品分类: 门铃', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1375', '1406317869', '1', '添加商品分类: 电气开关', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1376', '1406317880', '1', '添加商品分类: 插座', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1377', '1406317888', '1', '添加商品分类: 电工电料', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1378', '1406317895', '1', '添加商品分类: 监控安防', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1379', '1406317901', '1', '添加商品分类: 电线/线缆', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1380', '1406323432', '1', '添加商品分类: 手机通讯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1381', '1406323446', '1', '添加商品分类: 京东通信', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1382', '1406323454', '1', '添加商品分类: 运营商', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1383', '1406323462', '1', '添加商品分类: 手机配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1384', '1406323469', '1', '添加商品分类: 摄影摄像', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1385', '1406323476', '1', '添加商品分类: 数码配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1386', '1406323483', '1', '添加商品分类: 时尚影音', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1387', '1406323490', '1', '添加商品分类: 智能设备', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1388', '1406323497', '1', '添加商品分类: 电子教育', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1389', '1406323512', '1', '添加商品分类: 手机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1390', '1406323520', '1', '添加商品分类: 对讲机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1391', '1406323540', '1', '添加商品分类: 选号中心', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1392', '1406323547', '1', '添加商品分类: 自助服务', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1393', '1406323570', '1', '添加商品分类: 购机送费', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1394', '1406323578', '1', '添加商品分类: 0元购机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1395', '1406323586', '1', '添加商品分类: 选号入网', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1396', '1406323605', '1', '添加商品分类: 电池', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1397', '1406323612', '1', '添加商品分类: 蓝牙耳机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1398', '1406323620', '1', '添加商品分类: 充电器/数据线', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1399', '1406323630', '1', '添加商品分类: 手机耳机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1400', '1406323642', '1', '添加商品分类: 贴膜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1401', '1406323651', '1', '添加商品分类: 存储卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1402', '1406323669', '1', '添加商品分类: 保护套', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1403', '1406323677', '1', '添加商品分类: 车载', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1404', '1406323684', '1', '添加商品分类: iPhone配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1405', '1406323692', '1', '添加商品分类: 创意配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1406', '1406323700', '1', '添加商品分类: 便携/无线音箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1407', '1406323708', '1', '添加商品分类: 手机饰品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1408', '1406323723', '1', '添加商品分类: 数码相机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1409', '1406323733', '1', '添加商品分类: 单电/微单相机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1410', '1406323740', '1', '添加商品分类: 单反相机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1411', '1406323750', '1', '添加商品分类: 拍立得', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1412', '1406323758', '1', '添加商品分类: 运动相机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1413', '1406323766', '1', '添加商品分类: 摄像机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1414', '1406323773', '1', '添加商品分类: 镜头', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1415', '1406323781', '1', '添加商品分类: 户外器材', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1416', '1406323788', '1', '添加商品分类: 摄影器材', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1417', '1406323934', '1', '添加商品分类: 存储卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1418', '1406323944', '1', '添加商品分类: 读卡器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1419', '1406323958', '1', '添加商品分类: 滤镜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1420', '1406323967', '1', '添加商品分类: 闪光灯/手柄', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1421', '1406323974', '1', '添加商品分类: 相机包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1422', '1406323983', '1', '添加商品分类: 三脚架/云台', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1423', '1406323994', '1', '添加商品分类: 相机清洁', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1424', '1406324004', '1', '添加商品分类: 相机贴膜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1425', '1406324013', '1', '添加商品分类: 机身附件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1426', '1406324021', '1', '添加商品分类: 镜头附件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1427', '1406324028', '1', '添加商品分类: 电池/充电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1428', '1406324035', '1', '添加商品分类: 移动电源', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1429', '1406324053', '1', '添加商品分类: 耳机/耳麦', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1430', '1406324061', '1', '添加商品分类: 音箱/音响', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1431', '1406324068', '1', '添加商品分类: 麦克风', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1432', '1406324078', '1', '添加商品分类: MP3/MP4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1433', '1406324088', '1', '添加商品分类: 数码相框', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1434', '1406324098', '1', '添加商品分类: 专业音频', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1435', '1406324107', '1', '添加商品分类: 苹果周边', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1436', '1406324122', '1', '添加商品分类: 智能手环', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1437', '1406324129', '1', '添加商品分类: 智能手表', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1438', '1406324136', '1', '添加商品分类: 智能眼镜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1439', '1406324144', '1', '添加商品分类: 运动跟踪器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1440', '1406324154', '1', '添加商品分类: 健康监测', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1441', '1406324162', '1', '添加商品分类: 智能配饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1442', '1406324172', '1', '添加商品分类: 智能家居', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1443', '1406324181', '1', '添加商品分类: 体感车', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1444', '1406324192', '1', '添加商品分类: 其他配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1445', '1406324200', '1', '添加商品分类: 电子词典', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1446', '1406324207', '1', '添加商品分类: 电纸书', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1447', '1406324216', '1', '添加商品分类: 录音笔', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1448', '1406324225', '1', '添加商品分类: 复读机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1449', '1406324234', '1', '添加商品分类: 点读机/笔', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1450', '1406324241', '1', '添加商品分类: 学生平板', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1451', '1406324250', '1', '添加商品分类: 早教机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1452', '1406332606', '1', '添加商品分类: 电脑整机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1453', '1406332620', '1', '添加商品分类: 电脑配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1454', '1406332627', '1', '添加商品分类: 外设产品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1455', '1406332634', '1', '添加商品分类: 网络产品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1456', '1406332639', '1', '添加商品分类: 办公打印', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1457', '1406332645', '1', '添加商品分类: 办公文仪', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1458', '1406332650', '1', '添加商品分类: 服务产品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1459', '1406332668', '1', '添加商品分类: 笔记本', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1460', '1406332674', '1', '添加商品分类: 超极本', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1461', '1406332680', '1', '添加商品分类: 游戏本', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1462', '1406332685', '1', '添加商品分类: 平板电脑', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1463', '1406332694', '1', '添加商品分类: 平板电脑配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1464', '1406332699', '1', '添加商品分类: 台式机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1465', '1406332705', '1', '添加商品分类: 服务器/工作站', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1466', '1406332711', '1', '添加商品分类: 笔记本配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1467', '1406332720', '1', '添加商品分类: CPU', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1468', '1406332727', '1', '添加商品分类: 主板', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1469', '1406332732', '1', '添加商品分类: 显卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1470', '1406332738', '1', '添加商品分类: 硬盘', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1471', '1406332747', '1', '添加商品分类: SSD固态硬盘', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1472', '1406332757', '1', '添加商品分类: 内存', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1473', '1406332762', '1', '添加商品分类: 机箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1474', '1406332768', '1', '添加商品分类: 电源', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1475', '1406332774', '1', '添加商品分类: 显示器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1476', '1406332779', '1', '添加商品分类: 刻录机/光驱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1477', '1406332785', '1', '添加商品分类: 声卡/扩展卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1478', '1406332792', '1', '添加商品分类: 散热器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1479', '1406332799', '1', '添加商品分类: 装机配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1480', '1406332805', '1', '添加商品分类: 组装电脑', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1481', '1406332818', '1', '添加商品分类: 鼠标', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1482', '1406332826', '1', '添加商品分类: 键盘', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1483', '1406332832', '1', '添加商品分类: 游戏设备', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1484', '1406332843', '1', '添加商品分类: U盘', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1485', '1406332850', '1', '添加商品分类: 移动硬盘', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1486', '1406332859', '1', '添加商品分类: 鼠标垫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1487', '1406332866', '1', '添加商品分类: 摄像头', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1488', '1406332873', '1', '添加商品分类: 线缆', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1489', '1406332884', '1', '添加商品分类: 电玩', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1490', '1406332890', '1', '添加商品分类: 手写板', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1491', '1406332896', '1', '添加商品分类: 外置盒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1492', '1406332902', '1', '添加商品分类: 电脑工具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1493', '1406332909', '1', '添加商品分类: 电脑清洁', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1494', '1406332915', '1', '添加商品分类: UPS', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1495', '1406332922', '1', '添加商品分类: 插座', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1496', '1406332954', '1', '添加商品分类: 路由器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1497', '1406332960', '1', '添加商品分类: 网卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1498', '1406332965', '1', '添加商品分类: 交换机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1499', '1406332972', '1', '添加商品分类: 网络存储', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1500', '1406332978', '1', '添加商品分类: 4G/3G', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1501', '1406332994', '1', '编辑商品分类: 4G/3G上网', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1502', '1406333000', '1', '添加商品分类: 网络盒子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1503', '1406333006', '1', '添加商品分类: 网络配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1504', '1406333014', '1', '添加商品分类: 打印机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1505', '1406333025', '1', '添加商品分类: 一体机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1506', '1406333032', '1', '添加商品分类: 投影机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1507', '1406333038', '1', '添加商品分类: 投影配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1508', '1406333044', '1', '添加商品分类: 传真机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1509', '1406333050', '1', '添加商品分类: 复合机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1510', '1406333057', '1', '添加商品分类: 碎纸机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1511', '1406333065', '1', '添加商品分类: 扫描仪', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1512', '1406333072', '1', '添加商品分类: 墨盒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1513', '1406333078', '1', '添加商品分类: 硒鼓', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1514', '1406333084', '1', '添加商品分类: 墨粉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1515', '1406333090', '1', '添加商品分类: 色带', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1516', '1406333102', '1', '添加商品分类: 办公文具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1517', '1406333109', '1', '添加商品分类: 文件管理', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1518', '1406333115', '1', '添加商品分类: 笔类', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1519', '1406333122', '1', '添加商品分类: 纸类', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1520', '1406333129', '1', '添加商品分类: 本册/便签', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1521', '1406333140', '1', '添加商品分类: 学生文具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1522', '1406333148', '1', '添加商品分类: 财务用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1523', '1406333155', '1', '添加商品分类: 计算器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1524', '1406333164', '1', '添加商品分类: 激光笔', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1525', '1406333172', '1', '添加商品分类: 白板/封装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1526', '1406333178', '1', '添加商品分类: 考勤机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1527', '1406333186', '1', '添加商品分类: 刻录碟片/附件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1528', '1406333194', '1', '添加商品分类: 点钞机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1529', '1406333202', '1', '添加商品分类: 支付设备/POS机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1530', '1406333209', '1', '添加商品分类: 安防监控', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1531', '1406333218', '1', '添加商品分类: 呼叫/会议设备', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1532', '1406333226', '1', '添加商品分类: 保险柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1533', '1406333233', '1', '添加商品分类: 办公家具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1534', '1406333242', '1', '添加商品分类: 上门服务', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1535', '1406333248', '1', '添加商品分类: 远程服务', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1536', '1406333254', '1', '添加商品分类: 电脑软件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1537', '1406333322', '1', '添加商品分类: 厨具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1538', '1406333330', '1', '添加商品分类: 家装建材', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1539', '1406333339', '1', '添加商品分类: 家纺', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1540', '1406333349', '1', '添加商品分类: 家具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1541', '1406333358', '1', '添加商品分类: 灯具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1542', '1406333367', '1', '添加商品分类: 生活日用', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1543', '1406333396', '1', '添加商品分类: 家装软饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1544', '1406333412', '1', '添加商品分类: 烹饪锅具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1545', '1406333419', '1', '添加商品分类: 刀剪菜板', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1546', '1406333429', '1', '添加商品分类: 厨房配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1547', '1406333437', '1', '添加商品分类: 水具酒具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1548', '1406333445', '1', '添加商品分类: 餐具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1549', '1406333452', '1', '添加商品分类: 茶具/咖啡具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1550', '1406333470', '1', '添加商品分类: 灯饰照明', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1551', '1406333479', '1', '添加商品分类: 厨房卫浴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1552', '1406333492', '1', '添加商品分类: 五金工具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1553', '1406333506', '1', '添加商品分类: 电工电料', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1554', '1406333530', '1', '添加商品分类: 墙地面材料', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1555', '1406333540', '1', '添加商品分类: 装饰材料', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1556', '1406333547', '1', '添加商品分类: 装修服务', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1557', '1406333595', '1', '添加商品分类: 吸顶灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1558', '1406333603', '1', '添加商品分类: 淋浴花洒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1559', '1406333617', '1', '添加商品分类: 开关插座', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1560', '1406333627', '1', '添加商品分类: 油漆涂料', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1561', '1406333645', '1', '添加商品分类: 龙头', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1562', '1406333667', '1', '添加商品分类: 床品套件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1563', '1406333676', '1', '添加商品分类: 被子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1564', '1406333693', '1', '添加商品分类: 蚊帐', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1565', '1406333702', '1', '添加商品分类: 凉席', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1566', '1406333735', '1', '添加商品分类: 床单被罩', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1567', '1406333744', '1', '添加商品分类: 枕芯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1568', '1406333755', '1', '添加商品分类: 毛巾浴巾', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1569', '1406333765', '1', '添加商品分类: 布艺软饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1570', '1406333777', '1', '添加商品分类: 毯子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1571', '1406333787', '1', '添加商品分类: 抱枕靠垫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1572', '1406333796', '1', '添加商品分类: 床垫/床褥', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1573', '1406333811', '1', '添加商品分类: 窗帘/窗纱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1574', '1406333821', '1', '添加商品分类: 电热毯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1575', '1406333833', '1', '添加商品分类: 卧室家具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1576', '1406333840', '1', '添加商品分类: 客厅家具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1577', '1406333847', '1', '添加商品分类: 餐厅家具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1578', '1406333854', '1', '添加商品分类: 书房家具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1579', '1406333861', '1', '添加商品分类: 储物家具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1580', '1406333875', '1', '添加商品分类: 阳台/户外', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1581', '1406333892', '1', '添加商品分类: 商业办公', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1582', '1406333907', '1', '添加商品分类: 床', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1583', '1406333923', '1', '添加商品分类: 床垫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1584', '1406333940', '1', '添加商品分类: 沙发', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1585', '1406333949', '1', '添加商品分类: 电脑椅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1586', '1406333957', '1', '添加商品分类: 衣柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1587', '1406333970', '1', '添加商品分类: 茶几', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1588', '1406333979', '1', '添加商品分类: 电视柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1589', '1406333988', '1', '添加商品分类: 餐桌', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1590', '1406333998', '1', '添加商品分类: 电脑桌', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1591', '1406334007', '1', '添加商品分类: 鞋架/衣帽架', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1592', '1406334027', '1', '添加商品分类: 台灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1593', '1406334037', '1', '添加商品分类: 吸顶灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1594', '1406334051', '1', '添加商品分类: 筒灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1595', '1406334111', '1', '编辑商品分类: 鞋靴、箱包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1596', '1406334258', '1', '编辑商品分类: 筒灯射灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1597', '1406334306', '1', '添加商品分类: LED灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1598', '1406334318', '1', '添加商品分类: 节能灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1599', '1406334336', '1', '添加商品分类: 落地灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1600', '1406334349', '1', '添加商品分类: 五金电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1601', '1406334386', '1', '添加商品分类: 应急灯/手电', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1602', '1406334406', '1', '添加商品分类: 装饰灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1603', '1406334418', '1', '添加商品分类: 吊灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1604', '1406334436', '1', '添加商品分类: 氛围照明', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1605', '1406334463', '1', '添加商品分类: 收纳用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1606', '1406334474', '1', '添加商品分类: 雨伞雨具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1607', '1406334483', '1', '添加商品分类: 浴室用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1608', '1406334502', '1', '添加商品分类: 缝纫/针织用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1609', '1406334516', '1', '添加商品分类: 洗晒/熨烫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1610', '1406334528', '1', '添加商品分类: 净化除味', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1611', '1406334539', '1', '添加商品分类: 桌布/罩件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1612', '1406334549', '1', '添加商品分类: 地毯地垫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1613', '1406334560', '1', '添加商品分类: 沙发垫套/椅垫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1614', '1406334573', '1', '添加商品分类: 帘艺隔断', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1615', '1406334597', '1', '添加商品分类: 相框/照片墙', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1616', '1406334614', '1', '添加商品分类: 装饰字画', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1617', '1406334624', '1', '添加商品分类: 墙贴/装饰贴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1618', '1406334641', '1', '添加商品分类: 节庆饰品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1619', '1406334650', '1', '添加商品分类: 手工/十字绣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1620', '1406334665', '1', '添加商品分类: 钟饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1621', '1406334682', '1', '添加商品分类: 装饰摆件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1622', '1406334695', '1', '添加商品分类: 花瓶花艺', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1623', '1406334703', '1', '添加商品分类: 创意家居', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1624', '1406334714', '1', '添加商品分类: 保暖防护', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1625', '1406334723', '1', '添加商品分类: 香薰蜡烛', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1626', '1406334784', '1', '编辑商品分类: 鞋靴、箱包、钟表、奢侈品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1627', '1406334806', '1', '添加商品分类: 面部护肤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1628', '1406334812', '1', '添加商品分类: 洗发护发', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1629', '1406334819', '1', '添加商品分类: 身体护肤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1630', '1406334826', '1', '添加商品分类: 口腔护理', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1631', '1406334834', '1', '添加商品分类: 女性护理', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1632', '1406334841', '1', '添加商品分类: 香水彩妆', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1633', '1406334861', '1', '添加商品分类: 清洁', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1634', '1406334875', '1', '添加商品分类: 护肤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1635', '1406334882', '1', '添加商品分类: 面膜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1636', '1406334889', '1', '添加商品分类: 剃须', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1637', '1406334895', '1', '添加商品分类: 套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1638', '1406334915', '1', '添加商品分类: 洗发', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1639', '1406334923', '1', '添加商品分类: 护发', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1640', '1406334929', '1', '添加商品分类: 染发', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1641', '1406334937', '1', '添加商品分类: 造型', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1642', '1406334944', '1', '添加商品分类: 假发', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1643', '1406334954', '1', '添加商品分类: 套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1644', '1406334968', '1', '添加商品分类: 沐浴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1645', '1406334976', '1', '添加商品分类: 润肤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1646', '1406334987', '1', '添加商品分类: 颈部', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1647', '1406335000', '1', '添加商品分类: 手足', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1648', '1406335006', '1', '添加商品分类: 纤体塑形', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1649', '1406335013', '1', '添加商品分类: 美胸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1650', '1406335020', '1', '添加商品分类: 套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1651', '1406335030', '1', '添加商品分类: 牙膏/牙粉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1652', '1406335037', '1', '添加商品分类: 牙刷/牙线', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1653', '1406335045', '1', '添加商品分类: 漱口水', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1654', '1406335053', '1', '添加商品分类: 套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1655', '1406335061', '1', '添加商品分类: 卫生巾', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1656', '1406335068', '1', '添加商品分类: 卫生护垫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1657', '1406335076', '1', '添加商品分类: 私密护理', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1658', '1406335084', '1', '添加商品分类: 脱毛膏', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1659', '1406335093', '1', '添加商品分类: 香水', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1660', '1406335101', '1', '添加商品分类: 底妆', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1661', '1406335115', '1', '添加商品分类: 腮红', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1662', '1406335123', '1', '添加商品分类: 眼部', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1663', '1406335132', '1', '添加商品分类: 唇部', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1664', '1406335139', '1', '添加商品分类: 美甲', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1665', '1406335147', '1', '添加商品分类: 美容工具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1666', '1406335158', '1', '添加商品分类: 套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1667', '1406335243', '1', '添加商品分类: 时尚女鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1668', '1406335261', '1', '添加商品分类: 流行男鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1669', '1406335271', '1', '添加商品分类: 潮流女包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1670', '1406335281', '1', '添加商品分类: 精品男包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1671', '1406335301', '1', '添加商品分类: 功能箱包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1672', '1406335310', '1', '添加商品分类: 奢侈品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1673', '1406335320', '1', '添加商品分类: 钟表', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1674', '1406335329', '1', '添加商品分类: 礼品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1675', '1406335363', '1', '添加商品分类: 凉鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1676', '1406335388', '1', '添加商品分类: 单鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1677', '1406335401', '1', '编辑商品分类: 凉鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1678', '1406335411', '1', '添加商品分类: 高跟鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1679', '1406335420', '1', '添加商品分类: 坡跟鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1680', '1406335430', '1', '添加商品分类: 松糕鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1681', '1406335440', '1', '添加商品分类: 鱼嘴鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1682', '1406335451', '1', '添加商品分类: 休闲鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1683', '1406335460', '1', '添加商品分类: 帆布鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1684', '1406335474', '1', '添加商品分类: 拖鞋/人字拖', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1685', '1406335486', '1', '添加商品分类: 妈妈鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1686', '1406335499', '1', '添加商品分类: 防水台', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1687', '1406335519', '1', '添加商品分类: 雨鞋/雨靴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1688', '1406335531', '1', '添加商品分类: 内增高', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1689', '1406335538', '1', '添加商品分类: 布鞋/绣花', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1690', '1406335554', '1', '编辑商品分类: 布鞋/绣花鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1691', '1406335570', '1', '添加商品分类: 女靴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1692', '1406335578', '1', '添加商品分类: 雪地靴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1693', '1406335586', '1', '添加商品分类: 踝靴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1694', '1406335594', '1', '添加商品分类: 马丁靴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1695', '1406335605', '1', '添加商品分类: 鞋配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1696', '1406335627', '1', '添加商品分类: 休闲鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1697', '1406335637', '1', '添加商品分类: 凉鞋/沙滩鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1698', '1406335653', '1', '添加商品分类: 帆布鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1699', '1406335670', '1', '添加商品分类: 商务休闲鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1700', '1406335680', '1', '添加商品分类: 正装鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1701', '1406335693', '1', '添加商品分类: 增高鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1702', '1406335702', '1', '添加商品分类: 拖鞋/人字拖', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1703', '1406335712', '1', '添加商品分类: 工装鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1704', '1406335728', '1', '添加商品分类: 男靴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1705', '1406335739', '1', '添加商品分类: 传统布鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1706', '1406335748', '1', '添加商品分类: 功能鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1707', '1406335760', '1', '添加商品分类: 鞋配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1708', '1406335773', '1', '添加商品分类: 定制鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1709', '1406335791', '1', '添加商品分类: 单肩包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1710', '1406335803', '1', '添加商品分类: 手提包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1711', '1406335814', '1', '添加商品分类: 斜挎包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1712', '1406335823', '1', '添加商品分类: 双肩包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1713', '1406335835', '1', '添加商品分类: 钱包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1714', '1406335847', '1', '添加商品分类: 手拿包/晚宴包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1715', '1406335859', '1', '添加商品分类: 卡包/零钱包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1716', '1406335868', '1', '添加商品分类: 钥匙包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1717', '1406335895', '1', '添加商品分类: 商务公文包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1718', '1406335910', '1', '添加商品分类: 单肩/斜挎包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1719', '1406335917', '1', '添加商品分类: 男士手包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1720', '1406335926', '1', '添加商品分类: 双肩包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1721', '1406335944', '1', '添加商品分类: 钱包/卡包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1722', '1406335954', '1', '添加商品分类: 钥匙包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1723', '1406335973', '1', '添加商品分类: 拉杆箱/拉杆包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1724', '1406335993', '1', '添加商品分类: 旅行包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1725', '1406336073', '1', '编辑商品分类: 拉杆箱/拉杆包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1726', '1406336089', '1', '编辑商品分类: 旅行包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1727', '1406336104', '1', '添加商品分类: 电脑包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1728', '1406336114', '1', '添加商品分类: 休闲运动包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1729', '1406336127', '1', '添加商品分类: 相机包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1730', '1406336145', '1', '添加商品分类: 腰包/胸包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1731', '1406336157', '1', '添加商品分类: 登山包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1732', '1406336172', '1', '添加商品分类: 旅行配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1733', '1406336183', '1', '添加商品分类: 书包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1734', '1406336194', '1', '添加商品分类: 妈咪包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1735', '1406336231', '1', '添加商品分类: 箱包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1736', '1406336241', '1', '添加商品分类: 钱包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1737', '1406336253', '1', '添加商品分类: 服饰腰带', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1738', '1406336278', '1', '添加商品分类: 鞋靴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1739', '1406336294', '1', '添加商品分类: 太阳镜/眼镜框', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1740', '1406336304', '1', '添加商品分类: 饰品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1741', '1406336314', '1', '添加商品分类: 配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1742', '1406336324', '1', '添加商品分类: 男表', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1743', '1406336339', '1', '添加商品分类: 女表', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1744', '1406336348', '1', '添加商品分类: 儿童表', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1745', '1406336361', '1', '添加商品分类: 座钟挂钟', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1746', '1406336373', '1', '添加商品分类: 火机烟具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1747', '1406336383', '1', '添加商品分类: 军刀军具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1748', '1406336392', '1', '添加商品分类: 美妆礼品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1749', '1406336401', '1', '添加商品分类: 工艺礼品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1750', '1406336410', '1', '添加商品分类: 礼盒礼券', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1751', '1406336420', '1', '添加商品分类: 礼品文具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1752', '1406336431', '1', '添加商品分类: 收藏品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1753', '1406336441', '1', '添加商品分类: 古董把玩', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1754', '1406336452', '1', '添加商品分类: 地方礼品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1755', '1406336467', '1', '添加商品分类: 创意礼品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1756', '1406336476', '1', '添加商品分类: 婚庆用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1757', '1406336491', '1', '添加商品分类: 鲜花绿植', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1758', '1406336611', '1', '添加商品分类: 运动服饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1759', '1406336617', '1', '添加商品分类: 健身训练', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1760', '1406336622', '1', '添加商品分类: 骑行运动', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1761', '1406336628', '1', '添加商品分类: 体育用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1762', '1406336633', '1', '添加商品分类: 户外鞋服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1763', '1406336639', '1', '添加商品分类: 户外装备', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1764', '1406336654', '1', '添加商品分类: 休闲鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1765', '1406336660', '1', '添加商品分类: 跑步鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1766', '1406336666', '1', '添加商品分类: 板鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1767', '1406336672', '1', '添加商品分类: 帆布鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1768', '1406336681', '1', '添加商品分类: 篮球鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1769', '1406336687', '1', '添加商品分类: 足球鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1770', '1406336699', '1', '添加商品分类: 乒羽网鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1771', '1406336707', '1', '添加商品分类: 专项运动鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1772', '1406336712', '1', '添加商品分类: 训练鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1773', '1406336719', '1', '添加商品分类: 拖鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1774', '1406336725', '1', '添加商品分类: 运动包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1775', '1406336746', '1', '添加商品分类: 卫衣/套头衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1776', '1406336751', '1', '添加商品分类: 毛衫/线衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1777', '1406336758', '1', '添加商品分类: 夹克/风衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1778', '1406336772', '1', '添加商品分类: 棉服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1779', '1406336778', '1', '添加商品分类: 羽绒服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1780', '1406336785', '1', '添加商品分类: T恤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1781', '1406336792', '1', '添加商品分类: 乒羽网服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1782', '1406336798', '1', '添加商品分类: 训练服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1783', '1406336805', '1', '添加商品分类: 运动背心', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1784', '1406336812', '1', '添加商品分类: 运动裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1785', '1406336818', '1', '添加商品分类: 运动套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1786', '1406336824', '1', '添加商品分类: 运动配饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1787', '1406336837', '1', '添加商品分类: 跑步机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1788', '1406336843', '1', '添加商品分类: 健身车/动感单车', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1789', '1406336849', '1', '添加商品分类: 综合训练器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1790', '1406336860', '1', '添加商品分类: 其他大型器械', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1791', '1406336867', '1', '添加商品分类: 哑铃', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1792', '1406336873', '1', '添加商品分类: 仰卧板/收腹机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1793', '1406336881', '1', '添加商品分类: 其他中小型器材', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1794', '1406336886', '1', '添加商品分类: 武术搏击', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1795', '1406336892', '1', '添加商品分类: 运动护具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1796', '1406336898', '1', '添加商品分类: 瑜伽舞蹈', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1797', '1406336906', '1', '添加商品分类: 山地车/公路车', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1798', '1406336912', '1', '添加商品分类: 折叠车', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1799', '1406336917', '1', '添加商品分类: 电动车', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1800', '1406336922', '1', '添加商品分类: 其他整车', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1801', '1406336928', '1', '添加商品分类: 骑行装备', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1802', '1406336935', '1', '添加商品分类: 骑行服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1803', '1406336946', '1', '添加商品分类: 乒乓球', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1804', '1406336953', '1', '添加商品分类: 羽毛球', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1805', '1406336960', '1', '添加商品分类: 网球', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1806', '1406336970', '1', '添加商品分类: 篮球', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1807', '1406337046', '1', '编辑商品分类: 运动鞋包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1808', '1406337087', '1', '编辑商品分类: 运动服饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1809', '1406337125', '1', '编辑商品分类: 健身训练', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1810', '1406337144', '1', '编辑商品分类: 骑行运动', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1811', '1406337162', '1', '编辑商品分类: 体育用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1812', '1406337180', '1', '添加商品分类: 户外鞋服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1813', '1406337204', '1', '添加商品分类: 足球', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1814', '1406337213', '1', '添加商品分类: 高尔夫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1815', '1406337219', '1', '添加商品分类: 台球', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1816', '1406337228', '1', '添加商品分类: 轮滑滑板', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1817', '1406337239', '1', '添加商品分类: 排球', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1818', '1406337246', '1', '添加商品分类: 棋牌麻将', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1819', '1406337253', '1', '添加商品分类: 其它', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1820', '1406337263', '1', '添加商品分类: 冲锋衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1821', '1406337282', '1', '编辑商品分类: 冲锋衣裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1822', '1406337293', '1', '添加商品分类: 速干衣裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1823', '1406337302', '1', '添加商品分类: 滑雪服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1824', '1406337309', '1', '添加商品分类: 羽绒服/棉服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1825', '1406337317', '1', '添加商品分类: 休闲衣裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1826', '1406337323', '1', '添加商品分类: 抓绒衣裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1827', '1406337329', '1', '添加商品分类: 软壳衣裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1828', '1406337342', '1', '添加商品分类: T恤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1829', '1406337349', '1', '添加商品分类: 户外风衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1830', '1406337356', '1', '添加商品分类: 功能内衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1831', '1406337364', '1', '添加商品分类: 军迷服饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1832', '1406337372', '1', '添加商品分类: 登山鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1833', '1406337381', '1', '添加商品分类: 徒步鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1834', '1406337389', '1', '添加商品分类: 越野跑鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1835', '1406337396', '1', '添加商品分类: 休闲鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1836', '1406337403', '1', '添加商品分类: 雪地靴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1837', '1406337411', '1', '添加商品分类: 工装鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1838', '1406337419', '1', '添加商品分类: 溯溪鞋', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1839', '1406337428', '1', '添加商品分类: 沙滩/凉拖', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1840', '1406337435', '1', '添加商品分类: 户外袜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1841', '1406337442', '1', '添加商品分类: 背包', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1842', '1406337447', '1', '添加商品分类: 帐篷/垫子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1843', '1406337454', '1', '添加商品分类: 睡袋/吊床', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1844', '1406337461', '1', '添加商品分类: 登山攀岩', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1845', '1406337467', '1', '添加商品分类: 户外照明', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1846', '1406337473', '1', '添加商品分类: 野餐烧烤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1847', '1406337479', '1', '添加商品分类: 便携桌椅床', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1848', '1406337511', '1', '添加商品分类: 户外工具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1849', '1406337517', '1', '添加商品分类: 望远镜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1850', '1406337522', '1', '添加商品分类: 户外仪表', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1851', '1406337528', '1', '添加商品分类: 旅游用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1852', '1406337533', '1', '添加商品分类: 军迷用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1853', '1406337619', '1', '添加商品分类: 维修保养', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1854', '1406337628', '1', '添加商品分类: 车载电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1855', '1406337635', '1', '添加商品分类: 美容清洗', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1856', '1406337644', '1', '添加商品分类: 汽车装饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1857', '1406337651', '1', '添加商品分类: 安全自驾', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1858', '1406337662', '1', '添加商品分类: 润滑油', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1859', '1406337671', '1', '添加商品分类: 添加剂', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1860', '1406337680', '1', '添加商品分类: 防冻液', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1861', '1406337690', '1', '添加商品分类: 滤清器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1862', '1406337698', '1', '添加商品分类: 火花塞', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1863', '1406337705', '1', '添加商品分类: 雨刷', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1864', '1406337714', '1', '添加商品分类: 车灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1865', '1406337721', '1', '添加商品分类: 后视镜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1866', '1406337731', '1', '添加商品分类: 轮胎', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1867', '1406337739', '1', '添加商品分类: 轮毂', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1868', '1406337750', '1', '添加商品分类: 刹车片/盘', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1869', '1406337764', '1', '添加商品分类: 喇叭/皮带', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1870', '1406337772', '1', '添加商品分类: 蓄电池', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1871', '1406337783', '1', '添加商品分类: 底盘装甲/护板', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1872', '1406337792', '1', '添加商品分类: 贴膜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1873', '1406337803', '1', '添加商品分类: 汽修工具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1874', '1406337815', '1', '添加商品分类: 导航仪', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1875', '1406337830', '1', '添加商品分类: 安全预警仪', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1876', '1406337838', '1', '添加商品分类: 行车记录仪', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1877', '1406337849', '1', '添加商品分类: 倒车雷达', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1878', '1406337859', '1', '添加商品分类: 蓝牙设备', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1879', '1406337903', '1', '添加商品分类: 时尚影音', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1880', '1406337911', '1', '添加商品分类: 净化器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1881', '1406337923', '1', '添加商品分类: 电源', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1882', '1406337933', '1', '添加商品分类: 冰箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1883', '1406337942', '1', '添加商品分类: 吸尘器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1884', '1406337961', '1', '添加商品分类: 车蜡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1885', '1406337970', '1', '添加商品分类: 补漆笔', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1886', '1406337979', '1', '添加商品分类: 玻璃水', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1887', '1406337988', '1', '添加商品分类: 清洁剂', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1888', '1406337997', '1', '添加商品分类: 洗车工具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1889', '1406338012', '1', '添加商品分类: 洗车配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1890', '1406338024', '1', '添加商品分类: 脚垫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1891', '1406338032', '1', '添加商品分类: 座垫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1892', '1406338042', '1', '添加商品分类: 座套', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1893', '1406338054', '1', '添加商品分类: 后备箱垫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1894', '1406338066', '1', '添加商品分类: 头枕', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1895', '1406338076', '1', '添加商品分类: 腰靠', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1896', '1406338084', '1', '添加商品分类: 香水', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1897', '1406338094', '1', '添加商品分类: 空气净化', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1898', '1406338103', '1', '添加商品分类: 车内饰品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1899', '1406338114', '1', '添加商品分类: 功能小件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1900', '1406338124', '1', '添加商品分类: 车身装饰件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1901', '1406338132', '1', '添加商品分类: 车衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1902', '1406338144', '1', '添加商品分类: 安全座椅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1903', '1406338157', '1', '添加商品分类: 胎压充气', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1904', '1406338166', '1', '添加商品分类: 防盗设备', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1905', '1406338175', '1', '添加商品分类: 应急救援', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1906', '1406338185', '1', '添加商品分类: 保温箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1907', '1406338195', '1', '添加商品分类: 储物箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1908', '1406338209', '1', '添加商品分类: 自驾野营', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1909', '1406338220', '1', '添加商品分类: 摩托车装备', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1910', '1406338359', '1', '添加商品分类: 奶粉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1911', '1406338393', '1', '添加商品分类: 营养辅食', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1912', '1406338409', '1', '添加商品分类: 尿裤湿巾', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1913', '1406338420', '1', '添加商品分类: 洗护用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1914', '1406338431', '1', '添加商品分类: 喂养用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1915', '1406338442', '1', '添加商品分类: 童车童床', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1916', '1406338453', '1', '添加商品分类: 安全座椅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1917', '1406338464', '1', '添加商品分类: 寝居服饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1918', '1406338499', '1', '添加商品分类: 中外名酒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1919', '1406338508', '1', '添加商品分类: 进口食品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1920', '1406338514', '1', '添加商品分类: 休闲食品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1921', '1406338521', '1', '添加商品分类: 地方特产', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1922', '1406338528', '1', '添加商品分类: 茗茶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1923', '1406338534', '1', '添加商品分类: 饮料冲调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1924', '1406338541', '1', '添加商品分类: 粮油调味', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1925', '1406338547', '1', '添加商品分类: 生鲜食品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1926', '1406338553', '1', '添加商品分类: 食品礼券', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1927', '1406338585', '1', '添加商品分类: 营养健康', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1928', '1406338601', '1', '添加商品分类: 营养成分', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1929', '1406338634', '1', '添加商品分类: 传统滋补', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1930', '1406338642', '1', '添加商品分类: 成人用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1931', '1406338650', '1', '添加商品分类: 保健器械', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1932', '1406338658', '1', '添加商品分类: 急救卫生', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1933', '1406338727', '1', '添加商品分类: 女装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1934', '1406338734', '1', '添加商品分类: 男装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1935', '1406338740', '1', '添加商品分类: 内衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1936', '1406338747', '1', '添加商品分类: 服饰配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1937', '1406338755', '1', '添加商品分类: 珠宝首饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1938', '1406338765', '1', '添加商品分类: 连衣裙', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1939', '1406338773', '1', '添加商品分类: 蕾丝/雪纺衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1940', '1406338781', '1', '添加商品分类: 衬衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1941', '1406338788', '1', '添加商品分类: T恤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1942', '1406338794', '1', '添加商品分类: 半身裙', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1943', '1406338802', '1', '添加商品分类: 休闲裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1944', '1406338808', '1', '添加商品分类: 短裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1945', '1406338814', '1', '添加商品分类: 牛仔裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1946', '1406338821', '1', '添加商品分类: 针织衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1947', '1406338827', '1', '添加商品分类: 吊带/背心', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1948', '1406338834', '1', '添加商品分类: 打底衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1949', '1406338840', '1', '添加商品分类: 打底裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1950', '1406338847', '1', '添加商品分类: 正装裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1951', '1406338855', '1', '添加商品分类: 小西服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1952', '1406338863', '1', '添加商品分类: 马甲', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1953', '1406338869', '1', '添加商品分类: 风衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1954', '1406338876', '1', '添加商品分类: 羊毛衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1955', '1406338883', '1', '添加商品分类: 羊绒衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1956', '1406338889', '1', '添加商品分类: 短外套', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1957', '1406338896', '1', '添加商品分类: 棉服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1958', '1406338905', '1', '添加商品分类: 毛呢大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1959', '1406338912', '1', '添加商品分类: 加绒裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1960', '1406338918', '1', '添加商品分类: 羽绒服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1961', '1406338927', '1', '添加商品分类: 皮草', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1962', '1406338933', '1', '添加商品分类: 真皮皮衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1963', '1406338939', '1', '添加商品分类: 仿皮皮衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1964', '1406338945', '1', '添加商品分类: 旗袍/唐装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1965', '1406338952', '1', '添加商品分类: 礼服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1966', '1406338958', '1', '添加商品分类: 婚纱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1967', '1406338966', '1', '添加商品分类: 中老年女装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1968', '1406338973', '1', '添加商品分类: 大码女装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1969', '1406338982', '1', '添加商品分类: 设计师/潮牌', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1970', '1406338992', '1', '添加商品分类: 卫衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1971', '1406339000', '1', '添加商品分类: 衬衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1972', '1406339008', '1', '添加商品分类: T恤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1973', '1406339015', '1', '添加商品分类: POLO', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1974', '1406339038', '1', '编辑商品分类: POLO衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1975', '1406339048', '1', '添加商品分类: 针织衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1976', '1406339059', '1', '添加商品分类: 夹克', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1977', '1406339067', '1', '添加商品分类: 卫衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1978', '1406339075', '1', '添加商品分类: 风衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1979', '1406339083', '1', '添加商品分类: 马甲/背心', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1980', '1406339091', '1', '添加商品分类: 短裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1981', '1406339099', '1', '添加商品分类: 休闲裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1982', '1406339108', '1', '添加商品分类: 牛仔裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1983', '1406339136', '1', '添加商品分类: 西服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1984', '1406339143', '1', '添加商品分类: 西裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1985', '1406339151', '1', '添加商品分类: 西服套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1986', '1406339160', '1', '添加商品分类: 真皮皮衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1987', '1406339167', '1', '添加商品分类: 仿皮皮衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1988', '1406339175', '1', '添加商品分类: 羽绒服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1989', '1406339183', '1', '添加商品分类: 毛呢大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1990', '1406339192', '1', '添加商品分类: 棉服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1991', '1406339201', '1', '添加商品分类: 羊绒衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1992', '1406339208', '1', '添加商品分类: 羊毛衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1993', '1406339215', '1', '添加商品分类: 卫裤/运动裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1994', '1406339228', '1', '添加商品分类: 加绒裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1995', '1406339236', '1', '添加商品分类: 设计师/潮牌', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1996', '1406339243', '1', '添加商品分类: 唐装/中山装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1997', '1406339253', '1', '添加商品分类: 工装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1998', '1406339260', '1', '添加商品分类: 中老年男装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('1999', '1406339267', '1', '添加商品分类: 大码男装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2000', '1406339281', '1', '添加商品分类: 文胸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2001', '1406339288', '1', '添加商品分类: 睡衣/家居服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2002', '1406339295', '1', '添加商品分类: 情侣睡衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2003', '1406339304', '1', '添加商品分类: 文胸套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2004', '1406339311', '1', '添加商品分类: 少女文胸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2005', '1406339318', '1', '添加商品分类: 女式内裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2006', '1406339324', '1', '添加商品分类: 男式内裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2007', '1406339332', '1', '添加商品分类: 商务男袜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2008', '1406339339', '1', '添加商品分类: 休闲棉袜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2009', '1406339347', '1', '添加商品分类: 吊带/背心', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2010', '1406339356', '1', '添加商品分类: 打底衫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2011', '1406339363', '1', '添加商品分类: 抹胸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2012', '1406339371', '1', '添加商品分类: 连裤袜/丝袜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2013', '1406339377', '1', '添加商品分类: 美腿袜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2014', '1406339390', '1', '添加商品分类: 打底裤袜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2015', '1406339399', '1', '添加商品分类: 塑身美体', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2016', '1406339407', '1', '添加商品分类: 大码内衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2017', '1406339414', '1', '添加商品分类: 内衣配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2018', '1406339422', '1', '添加商品分类: 泳衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2019', '1406339432', '1', '添加商品分类: 秋衣秋裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2020', '1406339438', '1', '添加商品分类: 保暖内衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2021', '1406339456', '1', '添加商品分类: 太阳镜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2022', '1406339464', '1', '添加商品分类: 光学镜架/镜片', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2023', '1406339472', '1', '添加商品分类: 防辐射眼镜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2024', '1406339479', '1', '添加商品分类: 女士丝巾/围巾/披肩', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2025', '1406339487', '1', '添加商品分类: 棒球帽', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2026', '1406339497', '1', '添加商品分类: 遮阳伞/雨伞', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2027', '1406339510', '1', '添加商品分类: 遮阳帽', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2028', '1406339518', '1', '添加商品分类: 领带/领结/领带夹', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2029', '1406339527', '1', '添加商品分类: 男士腰带/礼盒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2030', '1406339535', '1', '添加商品分类: 防晒手套', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2031', '1406339543', '1', '添加商品分类: 老花镜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2032', '1406339550', '1', '添加商品分类: 袖扣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2033', '1406339558', '1', '添加商品分类: 鸭舌帽', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2034', '1406339565', '1', '添加商品分类: 装饰眼镜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2035', '1406339575', '1', '添加商品分类: 时尚饰品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2036', '1406339587', '1', '添加商品分类: 钻石', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2037', '1406339596', '1', '添加商品分类: 翡翠玉石', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2038', '1406339607', '1', '添加商品分类: 纯金K金饰品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2039', '1406339616', '1', '添加商品分类: 金银投资', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2040', '1406339626', '1', '添加商品分类: 银饰', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2041', '1406339636', '1', '添加商品分类: 水晶玛瑙', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2042', '1406339644', '1', '添加商品分类: 彩宝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2043', '1406339655', '1', '添加商品分类: 铂金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2044', '1406339693', '1', '添加商品分类: 婴幼奶粉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2045', '1406339705', '1', '添加商品分类: 成人奶粉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2046', '1406339751', '1', '添加商品分类: 彩票', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2047', '1406339765', '1', '添加商品分类: 通讯充值', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2048', '1406339779', '1', '添加商品分类: 游戏', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2049', '1406339792', '1', '添加商品分类: 便利生活', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2050', '1406339804', '1', '添加商品分类: 演出票务', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2051', '1406339819', '1', '添加商品分类: 保险', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2052', '1406339829', '1', '添加商品分类: 教育培训', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2053', '1406483188', '1', '添加商品分类: DHA', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2054', '1406483203', '1', '添加商品分类: 钙铁锌/维生素', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2055', '1406483230', '1', '添加商品分类: 益生菌/初乳', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2056', '1406483240', '1', '添加商品分类: 清火/开胃', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2057', '1406483248', '1', '添加商品分类: 米粉/菜粉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2058', '1406483258', '1', '添加商品分类: 果泥/果汁', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2059', '1406483269', '1', '添加商品分类: 面条/粥', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2060', '1406483275', '1', '添加商品分类: 宝宝零食', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2061', '1406483288', '1', '添加商品分类: 婴儿尿裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2062', '1406483297', '1', '添加商品分类: 拉拉裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2063', '1406483306', '1', '添加商品分类: 成人尿裤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2064', '1406483314', '1', '添加商品分类: 湿巾', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2065', '1406483325', '1', '添加商品分类: 宝宝护肤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2066', '1406483332', '1', '添加商品分类: 宝宝洗浴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2067', '1406483342', '1', '添加商品分类: 理发器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2068', '1406483351', '1', '添加商品分类: 洗衣液/皂', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2069', '1406483359', '1', '添加商品分类: 奶瓶清洗', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2070', '1406483367', '1', '添加商品分类: 日常护理', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2071', '1406483376', '1', '添加商品分类: 座便器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2072', '1406483384', '1', '添加商品分类: 驱蚊防蚊', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2073', '1406483398', '1', '添加商品分类: 奶瓶奶嘴', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2074', '1406483410', '1', '添加商品分类: 吸奶器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2075', '1406483424', '1', '添加商品分类: 牙胶安抚', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2076', '1406483441', '1', '添加商品分类: 暖奶消毒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2077', '1406483458', '1', '添加商品分类: 辅食料理机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2078', '1406483543', '1', '添加商品分类: 碗盘叉勺', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2079', '1406483551', '1', '添加商品分类: 水壶/水杯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2080', '1406483566', '1', '添加商品分类: 婴儿床', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2081', '1406483573', '1', '添加商品分类: 婴儿推车', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2082', '1406483583', '1', '添加商品分类: 餐椅摇椅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2083', '1406483592', '1', '添加商品分类: 学步车', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2084', '1406483601', '1', '添加商品分类: 三轮车', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2085', '1406483612', '1', '添加商品分类: 自行车', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2086', '1406483621', '1', '添加商品分类: 扭扭车', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2087', '1406483636', '1', '添加商品分类: 滑板车', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2088', '1406483647', '1', '添加商品分类: 电动车', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2089', '1406483659', '1', '添加商品分类: 提篮式', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2090', '1406483669', '1', '添加商品分类: 安全座椅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2091', '1406483678', '1', '添加商品分类: 增高垫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2092', '1406483735', '1', '添加商品分类: 婴儿外出服', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2093', '1406483744', '1', '添加商品分类: 婴儿内衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2094', '1406483751', '1', '添加商品分类: 婴儿礼盒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2095', '1406483759', '1', '添加商品分类: 婴儿鞋帽袜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2096', '1406483767', '1', '添加商品分类: 家居床品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2097', '1406483775', '1', '添加商品分类: 安全防护', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2098', '1406483946', '1', '添加商品分类: 白酒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2099', '1406483988', '1', '添加商品分类: 葡萄酒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2100', '1406484007', '1', '添加商品分类: 洋酒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2101', '1406484024', '1', '添加商品分类: 啤酒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2102', '1406484044', '1', '添加商品分类: 黄酒/养生酒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2103', '1406484071', '1', '添加商品分类: 收藏酒/陈年老酒', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2104', '1406484092', '1', '添加商品分类: 牛奶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2105', '1406484474', '1', '添加商品分类: 饼干蛋糕', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2106', '1406484485', '1', '添加商品分类: 糖果/巧克力', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2107', '1406484507', '1', '添加商品分类: 休闲零食', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2108', '1406484520', '1', '添加商品分类: 冲调饮品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2109', '1406484543', '1', '添加商品分类: 粮油调味', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2110', '1406484570', '1', '添加商品分类: 休闲零食', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2111', '1406484609', '1', '添加商品分类: 坚果炒货', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2112', '1406484619', '1', '添加商品分类: 肉干肉脯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2113', '1406484630', '1', '添加商品分类: 蜜饯果干', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2114', '1406484642', '1', '添加商品分类: 糖果/巧克力', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2115', '1406484655', '1', '添加商品分类: 饼干蛋糕', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2116', '1406484665', '1', '添加商品分类: 无糖食品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2117', '1406484675', '1', '添加商品分类: 新疆', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2118', '1406484687', '1', '添加商品分类: 四川', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2119', '1406484697', '1', '添加商品分类: 云南', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2120', '1406484707', '1', '添加商品分类: 湖南', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2121', '1406484717', '1', '添加商品分类: 内蒙', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2122', '1406484727', '1', '添加商品分类: 北京', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2123', '1406484735', '1', '添加商品分类: 山西', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2124', '1406484746', '1', '添加商品分类: 福建', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2125', '1406484757', '1', '添加商品分类: 东北', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2126', '1406484770', '1', '添加商品分类: 其他', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2127', '1406484782', '1', '添加商品分类: 铁观音', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2128', '1406484928', '1', '添加商品分类: 普洱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2129', '1406484938', '1', '添加商品分类: 龙井', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2130', '1406484948', '1', '添加商品分类: 绿茶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2131', '1406484981', '1', '添加商品分类: 红茶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2132', '1406485013', '1', '添加商品分类: 乌龙茶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2133', '1406485027', '1', '添加商品分类: 花草茶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2134', '1406485049', '1', '添加商品分类: 花果茶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2135', '1406485063', '1', '添加商品分类: 黑茶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2136', '1406485082', '1', '添加商品分类: 白茶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2137', '1406485093', '1', '添加商品分类: 养生茶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2138', '1406485104', '1', '添加商品分类: 其他茶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2139', '1406485131', '1', '添加商品分类: 牛奶乳品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2140', '1406485158', '1', '添加商品分类: 饮料', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2141', '1406485168', '1', '添加商品分类: 饮用水', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2142', '1406485180', '1', '添加商品分类: 咖啡/奶茶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2143', '1406485192', '1', '添加商品分类: 蜂蜜/柚子茶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2144', '1406485209', '1', '添加商品分类: 冲饮谷物', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2145', '1406485222', '1', '添加商品分类: 成人奶粉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2146', '1406485235', '1', '添加商品分类: 米面杂粮', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2147', '1406485246', '1', '添加商品分类: 食用油', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2148', '1406485258', '1', '添加商品分类: 调味品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2149', '1406485267', '1', '添加商品分类: 南北干货', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2150', '1406485277', '1', '添加商品分类: 方便食品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2151', '1406485286', '1', '添加商品分类: 有机食品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2152', '1406485299', '1', '添加商品分类: 水果蔬菜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2153', '1406485310', '1', '添加商品分类: 海鲜水产', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2154', '1406485324', '1', '添加商品分类: 海参', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2155', '1406485334', '1', '添加商品分类: 牛排', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2156', '1406485349', '1', '添加商品分类: 肉禽蛋奶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2157', '1406485361', '1', '添加商品分类: 熟食腊味', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2158', '1406485380', '1', '添加商品分类: 环球美食', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2159', '1406485394', '1', '添加商品分类: 产地直供', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2160', '1406485448', '1', '添加商品分类: 调节免疫', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2161', '1406485478', '1', '添加商品分类: 调节三高', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2162', '1406485526', '1', '添加商品分类: 缓解疲劳', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2163', '1406485537', '1', '添加商品分类: 美体塑身', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2164', '1406485561', '1', '添加商品分类: 美容养颜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2165', '1406487977', '1', '添加商品分类: 肝肾养护', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2166', '1406488012', '1', '添加商品分类: 肠胃养护', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2167', '1406488027', '1', '添加商品分类: 明目益智', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2168', '1406488038', '1', '添加商品分类: 骨骼健康', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2169', '1406488052', '1', '添加商品分类: 改善睡眠', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2170', '1406488068', '1', '添加商品分类: 抗氧化', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2171', '1406488084', '1', '添加商品分类: 耐缺氧', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2172', '1406488193', '1', '添加商品分类: 维生素/矿物质', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2173', '1406488286', '1', '添加商品分类: 蛋白质', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2174', '1406488299', '1', '添加商品分类: 鱼油/磷脂', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2175', '1406488347', '1', '添加商品分类: 螺旋藻', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2176', '1406488401', '1', '添加商品分类: 番茄红素', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2177', '1406488410', '1', '添加商品分类: 叶酸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2178', '1406488419', '1', '添加商品分类: 葡萄籽', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2179', '1406488433', '1', '添加商品分类: 左旋肉碱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2180', '1406488442', '1', '添加商品分类: 辅酶Q10', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2181', '1406488481', '1', '添加商品分类: 益生菌', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2182', '1406488546', '1', '添加商品分类: 玛咖', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2183', '1406488557', '1', '添加商品分类: 膳食纤维', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2184', '1406488572', '1', '添加商品分类: 牛初乳', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2185', '1406488609', '1', '添加商品分类: 胶原蛋白', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2186', '1406488619', '1', '添加商品分类: 大豆异黄酮', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2187', '1406488627', '1', '添加商品分类: 芦荟提取', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2188', '1406488636', '1', '添加商品分类: 酵素', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2189', '1406488654', '1', '添加商品分类: 蜂产品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2190', '1406488670', '1', '添加商品分类: 阿胶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2191', '1406488692', '1', '添加商品分类: 参类', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2192', '1406488710', '1', '添加商品分类: 冬虫夏草', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2193', '1406488721', '1', '添加商品分类: 燕窝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2194', '1406488734', '1', '添加商品分类: 海参', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2195', '1406488745', '1', '添加商品分类: 养生茶饮', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2196', '1406488784', '1', '添加商品分类: 鹿茸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2197', '1406488876', '1', '添加商品分类: 灵芝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2198', '1406488884', '1', '添加商品分类: 药食同源', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2199', '1406488937', '1', '添加商品分类: 安全避孕', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2200', '1406488945', '1', '添加商品分类: 验孕测孕', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2201', '1406488952', '1', '添加商品分类: 人体润滑', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2202', '1406488962', '1', '添加商品分类: 情爱玩具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2203', '1406488981', '1', '添加商品分类: 情趣内衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2204', '1406489002', '1', '添加商品分类: 血压仪器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2205', '1406489013', '1', '添加商品分类: 血糖用品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2206', '1406489021', '1', '添加商品分类: 养生器械', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2207', '1406489030', '1', '添加商品分类: 康复辅助', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2208', '1406489041', '1', '添加商品分类: 中医保健', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2209', '1406489050', '1', '添加商品分类: 家庭护理', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2210', '1406489061', '1', '添加商品分类: 呼吸制氧', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2211', '1406489076', '1', '添加商品分类: 口罩', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2212', '1406489087', '1', '添加商品分类: 跌打损伤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2213', '1406489112', '1', '添加商品分类: 防裂抗冻', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2214', '1406489120', '1', '添加商品分类: 眼部保健', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2215', '1406489130', '1', '添加商品分类: 鼻炎健康', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2216', '1406490380', '1', '添加商品: 创维（Skyworth） 40E5CHR 40英寸 LED液晶电视（银色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2217', '1406490449', '1', '添加商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2218', '1406490512', '1', '添加商品: 科龙（Kelon） KFR-72LW/EFVDN2 3匹 立柜式定速家用冷暖空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2219', '1406490523', '1', '编辑商品: 科龙（Kelon） KFR-72LW/EFVDN2 3匹 立柜式定速家用冷暖空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2220', '1406490572', '1', '添加商品: 志高（chigo）KFR-51LW/N33+N3 大2匹 柜式家用冷暖空调（白色 白5）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2221', '1406490593', '1', '编辑商品: 科龙（Kelon） KFR-72LW/EFVDN2 3匹 立柜式定速家用冷暖空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2222', '1406490603', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2223', '1406490659', '1', '添加商品: 海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2224', '1406490676', '1', '编辑商品: 海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2225', '1406490721', '1', '添加商品: 海信（Hisense） KFR-35GW/10FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2226', '1406490726', '1', '编辑品牌管理: 统帅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2227', '1406490843', '1', '编辑品牌管理: 科龙', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2228', '1406490933', '1', '添加商品: 赛亿（Shinee）BC-50 50升单门冷藏迷你小电冰箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2229', '1406490956', '1', '编辑商品: 赛亿（Shinee）BC-50 50升单门冷藏迷你小电冰箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2230', '1406491010', '1', '添加商品: 海尔（Haier） EC6003-G 60升 分层加热 遥控 电热水器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2231', '1406491053', '1', '添加商品: 海信（Hisense） KFR-35GW/20FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2232', '1406491106', '1', '添加商品: 美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2233', '1406491121', '1', '编辑商品: 美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2234', '1406491128', '1', '编辑商品: 海信（Hisense） KFR-35GW/20FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2235', '1406491292', '1', '添加商品: 飞利浦（PHILIPS） HQ909/15 电动剃须刀', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2236', '1406491310', '1', '编辑商品: 飞利浦（PHILIPS） HQ909/15 电动剃须刀', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2237', '1406496321', '1', '添加商品: GESS 德国GESS682 电动深层防水洁面仪 洗脸美容仪家用毛孔清洁器去黑头仪 清新绿', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2238', '1406496329', '1', '编辑商品: GESS 德国GESS682 电动深层防水洁面仪 洗脸美容仪家用毛孔清洁器去黑头仪 清新绿', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2239', '1406496383', '1', '添加商品: 雷瓦（Riwa）RB-807S 两用陶瓷卷发棒 卷发器/直发器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2240', '1406496440', '1', '添加商品: 松下（Panasonic） EH-SA31QP405 温冷美容护肤套装 深层清洁补水 瞬间紧致肌肤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2241', '1406496491', '1', '添加商品: 松下（Panasonic） EH-SQ10-W405 冷敷美容器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2242', '1406496553', '1', '编辑品牌管理: 力博得', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2243', '1406496556', '1', '添加商品: 力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2244', '1406496601', '1', '添加商品: 雷瓦（RIWA） RC-643A 专业静音1800W大功率恒温负离子电吹风吹风机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2245', '1406496660', '1', '添加商品: 华盛昌（CEM）DT-8806S 红外线人体测温仪 体温计（精致版）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2246', '1406496678', '1', '编辑商品: 华盛昌（CEM）DT-8806S 红外线人体测温仪 体温计（精致版）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2247', '1406496704', '1', '添加商品: 九安/Andon 家用全自动智能 上臂式 电子血压计 血压仪 血压计KD-5910', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2248', '1406496738', '1', '编辑商品: 九安/Andon 家用全自动智能 上臂式 电子血压计 血压仪 血压计KD-5910', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2249', '1406496819', '1', '添加商品: 香山（CAMRY） EB9005L 圆形电子秤 体重秤 透明玻璃', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2250', '1406496923', '1', '添加商品: 韩国惠人（HUROM） HU-400WN-PLUS 原汁机 “小红2014全新升级版”', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2251', '1406496982', '1', '添加商品: 美的（Midea ）17S18K2c+ 电水壶(不锈钢色)', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2252', '1406497003', '1', '编辑商品: 美的（Midea ）17S18K2c+ 电水壶(不锈钢色)', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2253', '1406497060', '1', '添加商品: 美的(midea) W12PCS505E 电压力锅 5L多功能电脑版', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2254', '1406497130', '1', '添加商品: 美的（Midea） FS406C 4L 电脑版电饭煲', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2255', '1406497202', '1', '添加商品: 美的（Midea） EM7KCGW3-NR 微波炉 微电脑 平板 薄膜按键', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2256', '1406497331', '1', '添加商品: 利仁（Liven）LRT-310A 电饼铛 香槟金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2257', '1406497395', '1', '添加商品: 松下（Panasonic） SD-PM105 面包机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2258', '1406497460', '1', '添加商品: 意大利德龙(DeLonghi) ESAM2200 EX:1 全自动咖啡机（银色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2259', '1406498350', '1', '添加商品: 雷士照明（NVC） NLL-S3528 暖白光贴片灯带（一米）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2260', '1406498470', '1', '添加商品: 雷士照明（NVC） NUD1895-3 餐吊吸顶灯(不带光源)', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2261', '1406498476', '1', '编辑商品: 雷士照明（NVC） NLL-S3528 暖白光贴片灯带（一米）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2262', '1406498550', '1', '添加商品: TCL 浴霸NH-21Y4A/01 风暖灯暖照明换气四合一', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2263', '1406498608', '1', '添加商品: 华帝（VATTI） H-CS0003-T3C.W 可升降 豪华 花洒套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2264', '1406498664', '1', '添加商品: 佳德（GORLDE）99173T 304不锈钢拉丝面双槽水槽套餐', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2265', '1406498686', '1', '编辑商品: 华帝（VATTI） H-CS0003-T3C.W 可升降 豪华 花洒套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2266', '1406498733', '1', '添加商品: 贝乐卫浴（ballee) G17-4 毛巾架浴巾架多功能套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2267', '1406499137', '1', '添加商品: 博深（Bosun） 7803 26双功能电锤 800W功率', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2268', '1406499228', '1', '添加商品: 史丹利（Stanley）家用工具箱套装多用组套工具LT-802A-23', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2269', '1406499266', '1', '添加商品: 宝工（Pro\'skit) SS-989H 2合1SMD吹焊台 700W 热风焊接两用', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2270', '1406499322', '1', '删除商品分类: 九阳', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2271', '1406499360', '1', '添加商品: 九阳（Joyoung）JYZS-K423 紫砂电炖锅 4L', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2272', '1406499390', '1', '添加商品: 小熊（Bear) ZDQ-2191 多功能双层煎烙煮蛋器 14个蛋 （橙黄色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2273', '1406499458', '1', '添加商品: Coway AP-1009CH 空气净化器 除甲醛臭氧净化机pm2.5 韩国进口', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2274', '1406499507', '1', '添加商品: 德尔玛（Deerma） DEM-F300 超声波加湿器（深蓝）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2275', '1406499686', '1', '添加商品: 艾美特(Airmate) FSW52R 电风扇/遥控落地扇', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2276', '1406499764', '1', '添加商品: 春花（CHUNHUA ） JC621-160J 旋风锥尘杯 真空吸尘器（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2277', '1406499903', '1', '添加商品: 科沃斯（Ecovacs）WRN60WI 擦窗机器人窗宝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2278', '1406499940', '1', '添加商品: 沁园（QINYUAN） QR-RU-05B(灰) 快接式 双膜纯水机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2279', '1406500062', '1', '添加商品: 美的（midea）单热型饮水机 MYR718S-X', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2280', '1406500119', '1', '添加商品: 海尔（Haier） HGS-2032 蒸汽挂烫机（橙+黑）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2281', '1406500169', '1', '添加商品: 美菱（Meiling）SJ-262E除湿机/抽湿机/除湿器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2282', '1406500221', '1', '添加商品: 飞利浦（PHILIPS） CORD118大屏幕，免电池工作 来电显示电话机 黑色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2283', '1406500264', '1', '添加商品: 飞利浦（PHILIPS）AZ5740/93 DVD 唱机 USB 磁带CD 唱机收录机 银黑色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2284', '1406500301', '1', '添加商品: 公牛（BULL) GN-110 3米 插座', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2285', '1406500347', '1', '编辑商品: 科沃斯（Ecovacs）WRN60WI 擦窗机器人窗宝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2286', '1406500407', '1', '添加商品: 海燕（HAIYAN） ZD-BV4 阻燃 塑铜线100米 双色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2287', '1406501874', '1', '添加商品: 联想（Lenovo） Y400N 14.0英寸笔记本电脑（i5-3230M 4G 1T 2G独显 摄像头 DVD刻 Win8）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2288', '1406501940', '1', '添加商品: 雷神（ThundeRobot）911-E1 15.6英寸游戏本（i7-4710HQ 4G 500G GTX850M 2G DDR5 背光键盘 全高清屏）黑', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2289', '1406502043', '1', '添加商品: 宏碁（acer） V3-572G 15.6英寸超薄本 （i5-4210U 4G 500G GT840M 2G独显 win8.1 料号59TB）银色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2290', '1406502138', '1', '添加商品: 惠普（HP） CQ14-a104TX 14英寸笔记本电脑 （i5-4200M 4G 750GB GT820M 2G独显 DOS）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2291', '1406502251', '1', '添加商品: 华硕（ASUS） N550JV 15.6英寸笔记本(i5-4200H 4G 750G GT750M 2G独显 1920x1080 Win8 黑色)', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2292', '1406502297', '1', '添加商品: 机械革命（MECHREVO） MR X3 升级版 14英寸游戏本(i7-4702MQ 4G 64G SSD+1T机械 GTX850M 游戏键盘)黑色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2293', '1406502346', '1', '添加商品: 微软（Microsoft） Surface2 64G（Tegra 4四核 2G内存 64G硬盘 1080P高清屏 USB3.0）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2294', '1406502361', '1', '编辑商品: 机械革命（MECHREVO） MR X3 升级版 14英寸游戏本(i7-4702MQ 4G 64G SSD+1T机械 GTX850M 游戏键盘)黑色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2295', '1406502369', '1', '编辑商品: 华硕（ASUS） N550JV 15.6英寸笔记本(i5-4200H 4G 750G GT750M 2G独显 1920x1080 Win8 黑色)', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2296', '1406502377', '1', '编辑商品: 惠普（HP） CQ14-a104TX 14英寸笔记本电脑 （i5-4200M 4G 750GB GT820M 2G独显 DOS）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2297', '1406502424', '1', '添加商品: 联想（Lenovo） C245 18.5英寸一体电脑（E1-1200 2G 500G DVD刻录 Dos）白色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2298', '1406502466', '1', '编辑商品: 宏碁（acer） V3-572G 15.6英寸超薄本 （i5-4210U 4G 500G GT840M 2G独显 win8.1 料号59TB）银色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2299', '1406502691', '1', '添加商品: 刊菲(kanfei) 2014夏季新款修身中袖韩国金线蕾丝连衣裙9068 金色 M', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2300', '1406502731', '1', '添加商品: HARMARYCIAGA2014女装夏新款修身气质甜美糖果色假两件无袖连衣裙QZ109 水蓝 M', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2301', '1406502822', '1', '添加商品: 丝露怡语 2014夏雪纺撞色青花瓷修身连衣裙女 661 9919蓝色 M', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2302', '1406502869', '1', '添加商品: 俏妮妃 2014夏装新款时尚韩版女装 雪纺连衣裙圆领气质修身显瘦休闲OL淑女短袖打底连衣裙 白色 M', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2303', '1406502906', '1', '添加商品: 琼瑛女装2014夏季新款 韩版修身圆领雪纺连衣裙短袖纯色提花裙子3368 黄色 M', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2304', '1406502944', '1', '添加商品: 时竟 2014夏季女装新款时尚气质OL显瘦一字领套装两件套套裙 修身连衣裙D8618 白配大红 M', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2305', '1406502995', '1', '添加商品: 誉彩 2014夏季新款无袖碎花长裙 大码女装裙子 韩版修身大摆连衣裙 兰花 M', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2306', '1406503025', '1', '添加商品: 莱雪曼2014夏装上新蕾丝镂空拼接修身连衣裙两件套8272 黑色 M', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2307', '1406503184', '1', '添加商品: 洗颜专科 柔澈泡沫 洁面乳 120g（资生堂授权正品）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2308', '1406503216', '1', '添加商品: 欧莱雅（LOREAL）男士火山岩控油清痘洁面膏 买一赠一装（100ml+50ml）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2309', '1406503239', '1', '添加商品: 妮维雅 男士净油精华亮肤洁面炭泥 150ml+150ml （提亮肤色 控油美白洗面奶 深层洁面 温和去角质）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2310', '1406503279', '1', '添加商品: DHC蝶翠诗橄榄卸妆油200ml', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2311', '1406503302', '1', '添加商品: 欧莱雅（LOREAL）男士 控油炭爽抗黑头洁面膏100ml', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2312', '1406503337', '1', '添加商品: Neutrogena露得清深层净化洗面乳两支套装100g*2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2313', '1406503362', '1', '添加商品: 欧莱雅（LOREAL）男士劲能深层净化洁面膏（100ml+50ml）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2314', '1406503516', '1', '添加商品: 胜伟 高支棉斜纹四件套裸婚时代100%棉1.5/1.8米床', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2315', '1406503551', '1', '添加商品: 富安娜家纺 圣之花床品套件 全棉清新田园 纯棉印花双人四件套 淑姿丰盈 蓝色 1.8m(6英尺)床', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2316', '1406503591', '1', '添加商品: 巧布万棉家纺 床品件套 贡缎提花绣花1.5/1.8米婚庆四件套 舞动时尚-米白 1.8m床四件套', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2317', '1406503627', '1', '添加商品: 九洲鹿 100%全棉斜纹印花套件纯棉四件套 1.5米1.8米床 北京遇上西雅图 1.5米床', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2318', '1406503667', '1', '添加商品: 绿野仙踪床上用品 全棉斜纹印花套件纯棉四件套 1.5/1.8米床 醉花樱-玫红 1.5-1.8米床适用', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2319', '1406503698', '1', '添加商品: 爱斯基摩人 四件套 纯棉床上用品 斜纹家纺 双人 丽人风尚 1.5米/1.8米', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2320', '1406503733', '1', '添加商品: 么小毛家纺 床上用品欧式经典 莫代尔全棉大提花 床单式婚庆四件套 加州记忆 1.8米床', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2321', '1406503766', '1', '添加商品: 九洲鹿全工艺100%全棉超耐磨转移印花四件套 北京遇上西雅图 1.8米床', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2322', '1406503888', '1', '添加商品: 美素力 Frisolac 荷兰原装进口 金装婴儿配方奶粉 1段（0-6个月婴儿适用） 900克', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2323', '1406503933', '1', '添加商品: 雅培 Similac 美国雅培Similac Go&Grow 较大婴儿和幼儿配方奶粉 2段（9-24个月以上婴儿适用）624克', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2324', '1406503951', '1', '编辑商品: 美素力 Frisolac 荷兰原装进口 金装婴儿配方奶粉 1段（0-6个月婴儿适用） 900克', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2325', '1406503960', '1', '删除商品分类: 雅培', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2326', '1406503965', '1', '删除商品分类: 美素力', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2327', '1406504012', '1', '添加商品: 美赞臣 MeadJohnson 进口奶源 安儿宝A+ 幼儿配方奶粉 3段（1-3岁幼儿适用） 1200克', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2328', '1406504046', '1', '添加商品: Nestle 雀巢 能恩 幼儿配方奶粉 3段（1-3岁幼儿适用） 900克（新老包装随机发货）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2329', '1406504077', '1', '添加商品: Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2330', '1406504107', '1', '添加商品: Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克*6罐', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2331', '1406504148', '1', '添加商品: 雅培 Abbott 金装喜康宝 婴儿配方奶粉 1段（0-12个月婴儿适用）900克 购雅培亲体新品，Mini Pad、万元大奖等你赢！点此查看！', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2332', '1406504177', '1', '添加商品: 惠氏 Wyeth 启赋 illuma 亲和人体配方 幼儿配方奶粉 3段(1-3岁幼儿适用) 900克', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2333', '1406506137', '1', '添加商品: 太太静心助眠口服液15ml*60支', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2334', '1406506178', '1', '添加商品: 养生堂天然维生素E.C祛斑焕白套装（维生素C90片+维生素E160粒）（赠养生堂5片面膜）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2335', '1406506263', '1', '添加商品: 养生堂维生素E软胶囊160粒装（送80gVE保湿修护睡眠面膜）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2336', '1406506314', '1', '添加商品: 养生堂 红六月焕白亲情特供装 90粒维生素C+160粒维生素E+60粒维生素C+多种维生素矿物质片25片', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2337', '1406506353', '1', '添加商品: GNC 健安喜 葡萄籽精华胶囊 100粒（美国原装进口）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2338', '1406506387', '1', '添加商品: 京东自营 东阿阿胶 桃花姬阿胶糕60g*4 （东阿阿胶)', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2339', '1406506427', '1', '添加商品: 中华老字号 东阿阿胶桃花姬阿胶糕300g', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2340', '1406506629', '1', '添加商品: C语言入门经典（第5版） ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2341', '1406506666', '1', '添加商品: 算法竞赛入门经典（第2版） ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2342', '1406506724', '1', '添加商品: WebKit技术内幕 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2343', '1406506756', '1', '添加商品: 算法谜题 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2344', '1406506781', '1', '添加商品: 数据化管理：洞悉零售及电子商务运营 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2345', '1406506814', '1', '添加商品: 机器学习系统设计 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2346', '1406506846', '1', '添加商品: JavaScript框架设计 ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2347', '1406506885', '1', '添加商品: Android开发秘籍进阶篇：Android 4编程入门经典+Android 4高级编程（第3版　套装共2册） ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2348', '1406507383', '1', '添加广告位置: 左侧导航广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2349', '1406507487', '1', '添加广告: 图书、音像、数字商品左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2350', '1406507549', '1', '添加广告: 图书、音像、数字商品左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2351', '1406507607', '1', '编辑广告: 图书、音像、数字商品左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2352', '1406507607', '1', '编辑广告: 图书、音像、数字商品左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2353', '1406507798', '1', '添加广告: 家用电器左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2354', '1406507807', '1', '添加广告: 家用电器左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2355', '1406507881', '1', '编辑广告: 图书、音像、数字商品左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2356', '1406507883', '1', '编辑广告: 图书、音像、数字商品左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2357', '1406507911', '1', '添加广告: 手机、数码、京东通信左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2358', '1406507921', '1', '添加广告: 手机、数码、京东通信左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2359', '1406507957', '1', '编辑广告: 手机、数码、京东通信左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2360', '1406507977', '1', '添加广告: 电脑、办公左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2361', '1406507987', '1', '添加广告: 电脑、办公左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2362', '1406508027', '1', '添加广告: 家居、家具、家装、厨具左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2363', '1406508036', '1', '添加广告: 家居、家具、家装、厨具左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2364', '1406508067', '1', '添加广告: 服饰内衣、珠宝首饰左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2365', '1406508077', '1', '添加广告: 服饰内衣、珠宝首饰左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2366', '1406508112', '1', '添加广告: 个护化妆左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2367', '1406508130', '1', '添加广告: 个护化妆左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2368', '1406508162', '1', '添加广告: 鞋靴、箱包、钟表、奢侈品左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2369', '1406508171', '1', '添加广告: 鞋靴、箱包、钟表、奢侈品左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2370', '1406508199', '1', '添加广告: 运动户外左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2371', '1406508207', '1', '添加广告: 运动户外左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2372', '1406508240', '1', '添加广告: 汽车用品左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2373', '1406508248', '1', '添加广告: 汽车用品左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2374', '1406508286', '1', '添加广告: 母婴、玩具乐器左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2375', '1406508301', '1', '添加广告: 母婴、玩具乐器左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2376', '1406508342', '1', '添加广告: 食品饮料、酒类、生鲜左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2377', '1406508351', '1', '添加广告: 食品饮料、酒类、生鲜左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2378', '1406508378', '1', '添加广告: 营养保健左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2379', '1406508387', '1', '添加广告: 营养保健左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2380', '1406508487', '1', '添加广告位置: 分类下商品大广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2381', '1406508508', '1', '添加广告位置: 分类下商品小广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2382', '1406508589', '1', '添加广告: 家用电器分类下商品打广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2383', '1406508603', '1', '添加广告: 家用电器分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2384', '1406508612', '1', '编辑广告: 家用电器分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2385', '1406508614', '1', '编辑广告: 家用电器分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2386', '1406508616', '1', '编辑广告: 家用电器分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2387', '1406508625', '1', '添加广告: 家用电器分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2388', '1406508634', '1', '添加广告: 家用电器分类下商品大广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2389', '1406508663', '1', '编辑广告: 家用电器分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2390', '1406508665', '1', '编辑广告: 家用电器分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2391', '1406508666', '1', '编辑广告: 家用电器分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2392', '1406508800', '1', '编辑广告: 家用电器分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2393', '1406508806', '1', '编辑广告: 家用电器分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2394', '1406508808', '1', '编辑广告: 家用电器分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2395', '1406508810', '1', '编辑广告: 家用电器分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2396', '1406508811', '1', '编辑广告: 家用电器分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2397', '1406508813', '1', '编辑广告: 家用电器分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2398', '1406508814', '1', '编辑广告: 家用电器分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2399', '1406508816', '1', '编辑广告: 家用电器分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2400', '1406508818', '1', '编辑广告: 家用电器分类下商品大广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2401', '1406508837', '1', '编辑广告位置: 分类下商品大广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2402', '1406509505', '1', '编辑广告: 家用电器分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2403', '1406509558', '1', '编辑广告: 家用电器分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2404', '1406509566', '1', '编辑广告: 家用电器分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2405', '1406509668', '1', '添加广告: 家用电器分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2406', '1406509678', '1', '添加广告: 家用电器分类下商品小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2407', '1406509752', '1', '添加广告: 电脑、办公分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2408', '1406509768', '1', '添加广告: 电脑、办公分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2409', '1406509776', '1', '添加广告: 电脑、办公分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2410', '1406509791', '1', '添加广告: 电脑、办公分类下商品大广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2411', '1406509806', '1', '添加广告: 电脑、办公分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2412', '1406509815', '1', '添加广告: 电脑、办公分类下商品小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2413', '1406509932', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2414', '1406509941', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2415', '1406509949', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2416', '1406509957', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品大广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2417', '1406509972', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2418', '1406509982', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2419', '1406510397', '1', '添加广告: 个护化妆分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2420', '1406510406', '1', '添加广告: 个护化妆分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2421', '1406510415', '1', '添加广告: 个护化妆分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2422', '1406510432', '1', '添加广告: 个护化妆分类下商品大广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2423', '1406510447', '1', '添加广告: 个护化妆分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2424', '1406510461', '1', '添加广告: 个护化妆分类下商品小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2425', '1406510492', '1', '编辑广告: 个护化妆分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2426', '1406510504', '1', '编辑广告: 个护化妆分类下商品小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2427', '1406510632', '1', '添加广告: 家居、家具、家装、厨具分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2428', '1406510642', '1', '添加广告: 家居、家具、家装、厨具分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2429', '1406510651', '1', '添加广告: 家居、家具、家装、厨具分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2430', '1406510659', '1', '添加广告: 家居、家具、家装、厨具分类下商品大广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2431', '1406510671', '1', '添加广告: 家居、家具、家装、厨具分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2432', '1406510680', '1', '添加广告: 家居、家具、家装、厨具分类下商品小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2433', '1406510812', '1', '添加广告: 母婴、玩具乐器分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2434', '1406510821', '1', '添加广告: 母婴、玩具乐器分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2435', '1406510829', '1', '添加广告: 母婴、玩具乐器分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2436', '1406510839', '1', '添加广告: 母婴、玩具乐器分类下商品大广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2437', '1406510896', '1', '添加广告: 母婴、玩具乐器分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2438', '1406510906', '1', '添加广告: 母婴、玩具乐器分类下商品小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2439', '1406510985', '1', '添加广告: 营养保健分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2440', '1406510995', '1', '添加广告: 营养保健分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2441', '1406511006', '1', '添加广告: 营养保健分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2442', '1406511017', '1', '添加广告: 营养保健分类下商品大广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2443', '1406511032', '1', '添加广告: 营养保健分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2444', '1406511041', '1', '添加广告: 营养保健分类下商品小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2445', '1406511088', '1', '添加广告: 图书、音像、数字商品分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2446', '1406511098', '1', '添加广告: 图书、音像、数字商品分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2447', '1406511106', '1', '添加广告: 图书、音像、数字商品分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2448', '1406511114', '1', '添加广告: 图书、音像、数字商品分类下商品大广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2449', '1406511125', '1', '添加广告: 图书、音像、数字商品分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2450', '1406511133', '1', '添加广告: 图书、音像、数字商品分类下商品小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2451', '1406584977', '1', '编辑商品分类: 家用电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2452', '1406662270', '1', '编辑文章分类: 公告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2453', '1406662523', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2454', '1406662557', '1', '编辑商品: 志高（chigo）KFR-51LW/N33+N3 大2匹 柜式家用冷暖空调（白色 白5）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2455', '1406663613', '1', '编辑商品: 志高（chigo）KFR-51LW/N33+N3 大2匹 柜式家用冷暖空调（白色 白5）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2456', '1406663622', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2457', '1406663647', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2458', '1406741713', '1', '编辑商品: 志高（chigo）KFR-51LW/N33+N3 大2匹 柜式家用冷暖空调（白色 白5）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2459', '1406741722', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2460', '1406756598', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2461', '1406757521', '1', '编辑文章分类: 促销活动', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2462', '1406757621', '1', '编辑商品分类: 大 家 电', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2463', '1406757635', '1', '编辑商品分类: 个护健康', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2464', '1406757666', '1', '编辑商品分类: 厨房电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2465', '1406757681', '1', '编辑商品分类: 生活电器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2466', '1406757695', '1', '编辑商品分类: 五金家装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2467', '1406763568', '1', '添加商品: 康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2468', '1406763595', '1', '添加订单: 2014073126550', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2469', '1406763607', '1', '编辑订单: 2014073126550,订单总金额由 0.00 变为 488.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2470', '1406763613', '1', '编辑订单: 2014073126550', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2471', '1406763617', '1', '编辑订单: 2014073126550,订单总金额由 488.00 变为 503.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2472', '1406763621', '1', '编辑订单: 2014073126550', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2473', '1406763623', '1', '编辑订单: 2014073126550', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2474', '1406763625', '1', '编辑订单: 2014073126550', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2475', '1406765816', '1', '添加广告位置: 顶级分类页幻灯片广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2476', '1406765822', '1', '编辑广告位置: 顶级分类页幻灯片广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2477', '1406765996', '1', '编辑广告位置: 顶级分类页幻灯片广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2478', '1406766071', '1', '添加广告: 家用电器顶级分类页幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2479', '1406766079', '1', '添加广告: 家用电器顶级分类页幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2480', '1406766088', '1', '添加广告: 家用电器顶级分类页幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2481', '1406766098', '1', '添加广告: 家用电器顶级分类页幻灯片广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2482', '1406766106', '1', '添加广告: 家用电器顶级分类页幻灯片广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2483', '1406766445', '1', '编辑广告: 家用电器顶级分类页幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2484', '1407198363', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2485', '1407198377', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2486', '1407202461', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2487', '1407260242', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2488', '1407261472', '1', '编辑商品分类: 大 家 电', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2489', '1407261511', '1', '编辑商品分类: 大 家 电', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2490', '1407261654', '1', '添加属性: 商品匹数', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2491', '1407261726', '1', '编辑商品: 美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2492', '1407261740', '1', '编辑属性: 商品匹数', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2493', '1407261755', '1', '编辑商品: 美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2494', '1407261775', '1', '编辑商品类型: 空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2495', '1407261784', '1', '编辑属性: 商品匹数', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2496', '1407261784', '1', '编辑属性: 商品匹数', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2497', '1407261794', '1', '编辑商品: 美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2498', '1407261824', '1', '编辑商品: 海信（Hisense） KFR-35GW/20FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2499', '1407261846', '1', '编辑商品: 海信（Hisense） KFR-35GW/10FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2500', '1407261861', '1', '编辑商品: 科龙（Kelon） KFR-72LW/EFVDN2 3匹 立柜式定速家用冷暖空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2501', '1407261885', '1', '编辑商品分类: 大 家 电', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2502', '1407261948', '1', '编辑商品分类: 空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2503', '1407262034', '1', '添加属性: 产品特色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2504', '1407262060', '1', '编辑商品: 海信（Hisense） KFR-35GW/20FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2505', '1407262077', '1', '编辑商品: 海信（Hisense） KFR-35GW/10FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2506', '1407262106', '1', '编辑商品: 海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2507', '1407262133', '1', '编辑商品: 志高（chigo）KFR-51LW/N33+N3 大2匹 柜式家用冷暖空调（白色 白5）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2508', '1407262151', '1', '编辑商品分类: 空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2509', '1407359185', '1', '编辑前台语言项: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2510', '1407359245', '1', '编辑前台语言项: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2511', '1407359309', '1', '编辑前台语言项: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2512', '1407359496', '1', '添加优惠活动: 满1000.0元减免149.0元', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2513', '1407359522', '1', '编辑优惠活动: 满1000.0元减免149.0元', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2514', '1407359594', '1', '添加优惠活动: 满2000.0元送剃须刀', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2515', '1407360115', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2516', '1407360122', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2517', '1407360801', '1', '编辑前台语言项: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2518', '1407360835', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2519', '1407360885', '1', '编辑前台语言项: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2520', '1407361163', '1', '添加属性: 尺寸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2521', '1407361172', '1', '添加属性: 功能', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2522', '1407361502', '1', '编辑属性: 尺寸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2523', '1407361517', '1', '编辑属性: 功能', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2524', '1407361532', '1', '添加属性: 分辨率', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2525', '1407361538', '1', '添加属性: 品类', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2526', '1407361544', '1', '添加属性: 居室场景', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2527', '1407361701', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2528', '1407361977', '1', '编辑属性: 尺寸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2529', '1407361982', '1', '编辑属性: 功能', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2530', '1407361988', '1', '编辑属性: 品类', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2531', '1407361992', '1', '编辑属性: 居室场景', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2532', '1407362003', '1', '编辑属性: 尺寸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2533', '1407362010', '1', '编辑属性: 分辨率', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2534', '1407362075', '1', '编辑属性: 分辨率', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2535', '1407362081', '1', '编辑属性: 居室场景', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2536', '1407362105', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2537', '1407362228', '1', '编辑属性: 居室场景', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2538', '1407362839', '1', '编辑属性: 居室场景', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2539', '1407362853', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2540', '1407366894', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2541', '1407367639', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2542', '1407367652', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2543', '1407369121', '1', '添加订单: 2014080751421', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2544', '1407369130', '1', '编辑订单: 2014080751421,订单总金额由 0.00 变为 2199.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2545', '1407369137', '1', '编辑订单: 2014080751421,订单总金额由 2199.00 变为 3998.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2546', '1407369142', '1', '编辑订单: 2014080751421,订单总金额由 3998.00 变为 4197.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2547', '1407369146', '1', '编辑订单: 2014080751421,订单总金额由 4197.00 变为 4396.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2548', '1407369149', '1', '编辑订单: 2014080751421,订单总金额由 4396.00 变为 4595.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2549', '1407369154', '1', '编辑订单: 2014080751421,订单总金额由 4595.00 变为 7394.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2550', '1407369159', '1', '编辑订单: 2014080751421,订单总金额由 7394.00 变为 7483.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2551', '1407369162', '1', '编辑订单: 2014080751421,订单总金额由 7483.00 变为 8082.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2552', '1407369169', '1', '编辑订单: 2014080751421', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2553', '1407369172', '1', '编辑订单: 2014080751421,订单总金额由 8082.00 变为 8097.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2554', '1407369176', '1', '编辑订单: 2014080751421', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2555', '1407369178', '1', '编辑订单: 2014080751421', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2556', '1407369180', '1', '编辑订单: 2014080751421', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2557', '1407437484', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2558', '1407448080', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2559', '1407449124', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2560', '1407449534', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2561', '1407453659', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2562', '1407455452', '1', '编辑商品: 康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2563', '1407455459', '1', '编辑商品: 康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2564', '1407455487', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2565', '1407455513', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2566', '1407456512', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2567', '1407461131', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2568', '1407520344', '1', '编辑用户评论: 回复', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2569', '1407524193', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2570', '1407532986', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2571', '1407532998', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2572', '1407534996', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2573', '1407705628', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2574', '1407716869', '1', '编辑属性: 功能', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2575', '1407716889', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2576', '1407716901', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2577', '1407777398', '1', '添加团购商品: 科龙（Kelon） KFR-72LW/EFVDN2 3匹 立柜式定速家用冷暖空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2578', '1407777489', '1', '添加团购商品: 美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2579', '1407777768', '1', '添加拍卖活动: 测试拍卖活动1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2580', '1407777882', '1', '添加夺宝奇兵: 测试夺宝奇兵', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2581', '1407878754', '1', '编辑商品: 康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2582', '1407879098', '1', '编辑商品: 康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2583', '1407880641', '1', '添加积分可兑换的商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2584', '1407886943', '1', '编辑用户评论: 回复', '192.168.1.10');
INSERT INTO `ecs_admin_log` VALUES ('2585', '1407887222', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2586', '1407887222', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2587', '1407887222', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2588', '1407887222', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2589', '1407887222', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2590', '1407888297', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2591', '1407888501', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2592', '1407957229', '1', '添加广告位置: 顶部横幅广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2593', '1407957244', '1', '添加广告位置: 顶部横幅广告位（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2594', '1407957331', '1', '添加广告: 顶部横幅广告（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2595', '1407957343', '1', '添加广告: 顶部横幅广告（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2596', '1407965781', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2597', '1407970338', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2598', '1407970380', '1', '编辑商品分类: 大 家 电', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2599', '1407979386', '1', '添加广告位置: 分类下商品左广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2600', '1407979481', '1', '添加广告: 家用电器分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2601', '1407979499', '1', '添加广告: 电脑、办公分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2602', '1407979517', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2603', '1407979544', '1', '添加广告: 个护化妆分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2604', '1407979568', '1', '添加广告: 家居、家具、家装、厨具分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2605', '1407979587', '1', '添加广告: 母婴、玩具乐器分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2606', '1407979610', '1', '添加广告: 营养保健分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2607', '1407979672', '1', '添加广告: 图书、音像、数字商品分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2608', '1407979760', '1', '编辑广告: 营养保健分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2609', '1407979809', '1', '添加订单: 2014081459214', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2610', '1407979814', '1', '编辑订单: 2014081459214,订单总金额由 0.00 变为 1799.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2611', '1407979819', '1', '编辑订单: 2014081459214,订单总金额由 1799.00 变为 4998.00', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2612', '1407980129', '1', '编辑广告: 个护化妆分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2613', '1407980146', '1', '编辑广告: 个护化妆分类下商品小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2614', '1407980206', '1', '编辑广告: 个护化妆分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2615', '1407980222', '1', '编辑广告: 服饰内衣、珠宝首饰分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2616', '1407980241', '1', '编辑广告: 服饰内衣、珠宝首饰分类下商品小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2617', '1407980323', '1', '编辑广告: 电脑、办公分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2618', '1407980341', '1', '编辑广告: 电脑、办公分类下商品小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2619', '1407980393', '1', '编辑广告: 家居、家具、家装、厨具分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2620', '1407980410', '1', '编辑广告: 家居、家具、家装、厨具分类下商品小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2621', '1407980471', '1', '编辑广告: 营养保健分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2622', '1407980496', '1', '编辑广告: 母婴、玩具乐器分类下商品小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2623', '1408035486', '1', '添加商品: 长虹（CHANGHONG） LED42538E 42英寸 超窄边LED液晶电视(黑色)', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2624', '1408035537', '1', '添加商品: 长虹（CHANGHONG）LED42B2080n 42英寸极窄边网络LED液晶电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2625', '1408035560', '1', '编辑商品: 长虹（CHANGHONG）LED42B2080n 42英寸极窄边网络LED液晶电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2626', '1408035732', '1', '编辑商品: 长虹（CHANGHONG）LED42B2080n 42英寸极窄边网络LED液晶电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2627', '1408035782', '1', '添加商品: 康佳（KONKA） LED32E330C 32英寸 窄边高清液晶电视（银色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2628', '1408035901', '1', '添加商品: 维诺卡夫(Vinocave)冰吧冰柜SC-28AJP电子恒温红酒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2629', '1408035931', '1', '添加商品: 维诺卡夫(Vinocave) SC-28AJPM电子恒温红酒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2630', '1408035966', '1', '添加商品: 维诺卡夫(Vinocave) CWC-200A 压缩机恒温红酒柜 配挂杯架+展示层架', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2631', '1408035994', '1', '添加商品: 维诺卡夫(Vinocave) CWC-350AJP 压缩机恒温红酒柜 配挂杯架+展示层架', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2632', '1408036037', '1', '添加商品: 志高(Chigo)JC-270L 压缩机恒温红酒柜 底层自由摆放/8月新款8层100瓶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2633', '1408036091', '1', '添加商品: 康宝(Canbo) ZTP80A-3 立式 消毒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2634', '1408036206', '1', '添加商品: 美的(Midea) MXV-ZLP80K03 立式 消毒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2635', '1408036256', '1', '添加商品: 康宝(Canbo) ZTP108E-11E 嵌入式 消毒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2636', '1408036951', '1', '添加商品: 美的(Midea) MXV-ZLP90Q05 嵌入式 消毒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2637', '1408036989', '1', '添加商品: 华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2638', '1408037492', '1', '添加商品: 艾美特(Airmate) FSW52R 电风扇/遥控落地扇', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2639', '1408037526', '1', '添加商品: 艾美特(Airmate) FSW65R-5 电风扇/遥控落地扇', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2640', '1408037702', '1', '添加商品: 艾美特(Airmate) FT42R 电风扇/遥控塔扇', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2641', '1408037748', '1', '添加商品: 艾美特(Airmate) FSW27T2-5 电风扇/落地扇', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2642', '1408037781', '1', '添加商品: 艾美特(Airmate) FTW36T2-A 电风扇/塔扇', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2643', '1408037827', '1', '添加商品: 美的(midea) W12PCS505E 电压力锅 5L多功能电脑版', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2644', '1408037863', '1', '添加商品: 九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2645', '1408037886', '1', '添加商品: 九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2646', '1408037931', '1', '添加商品: 美的（Midea） W13PCS503E 易拆洗一手开系列 5L电压力锅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2647', '1408038003', '1', '添加商品: 奔腾（POVOS） LN5152 电压力锅 5L', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2648', '1408038199', '1', '添加商品: 飞利浦（Philips）RQ310 锐锋系列电动剃须刀', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2649', '1408038228', '1', '添加商品: 飞利浦（PHILIPS） PQ182/16 电动剃须刀', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2650', '1408038271', '1', '添加商品: 飞利浦(Philips) RQ311 电动剃须刀', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2651', '1408038301', '1', '添加商品: 飞科（FLYCO）FS711充电式双刀头电动剃须刀（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2652', '1408038331', '1', '添加商品: 飞科（FLYCO）FS358全身水洗充电式三刀头电动剃须刀（银色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2653', '1408038460', '1', '添加商品: 博世(Bosch)GSB600RE set 13毫米冲击钻套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2654', '1408038494', '1', '添加商品: 宝工（Pro\'skit） PT-5501I 可调速软轴电磨组', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2655', '1408038526', '1', '添加商品: 老A（LAOA) 电动工具双速12V锂电池充电钻/手电钻/电起子/电动螺丝刀/充电批', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2656', '1408038567', '1', '添加商品: 新款BOSCH博世TSR 1080-2-LI锂电钻充电手电钻多功能家用电动螺丝刀起子 TSR1080-2-Li单电 一电一冲', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2657', '1408038607', '1', '添加商品: 山崎(ASAKI)4.8伏家用充电式电动起子螺丝刀小电钻(带磁性)/充电电池电动工具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2658', '1408039499', '1', '编辑商品: 长虹（CHANGHONG） LED42538E 42英寸 超窄边LED液晶电视(黑色)', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2659', '1408040206', '1', '添加文章: 科龙空调发红包，快抢！', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2660', '1408040214', '1', '添加文章: 秒抢299元双缸洗衣机，8.15钜惠', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2661', '1408040228', '1', '添加文章: 美的首发送豪礼，等您抢！', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2662', '1408040582', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2663', '1408320477', '1', '编辑商品: 山崎(ASAKI)4.8伏家用充电式电动起子螺丝刀小电钻(带磁性)/充电电池电动工具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2664', '1408320494', '1', '编辑商品: 山崎(ASAKI)4.8伏家用充电式电动起子螺丝刀小电钻(带磁性)/充电电池电动工具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2665', '1408388661', '1', '编辑品牌管理: 创维', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2666', '1408388666', '1', '编辑品牌管理: 统帅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2667', '1408388672', '1', '编辑品牌管理: 志高', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2668', '1408388678', '1', '编辑品牌管理: 科龙', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2669', '1408388684', '1', '编辑品牌管理: 科龙', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2670', '1408388690', '1', '编辑品牌管理: 海尔', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2671', '1408388695', '1', '编辑品牌管理: 海信', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2672', '1408388701', '1', '编辑品牌管理: 赛忆', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2673', '1408388707', '1', '编辑品牌管理: 美的', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2674', '1408388712', '1', '编辑品牌管理: 飞利浦', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2675', '1408388718', '1', '编辑品牌管理: GESS', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2676', '1408388724', '1', '编辑品牌管理: 雷瓦', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2677', '1408388731', '1', '编辑品牌管理: 松下', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2678', '1408388737', '1', '编辑品牌管理: 力博得', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2679', '1408388743', '1', '编辑品牌管理: 华盛昌', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2680', '1408388750', '1', '编辑品牌管理: 香山', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2681', '1408388757', '1', '编辑品牌管理: 惠人', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2682', '1408388764', '1', '编辑品牌管理: 利仁', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2683', '1408388769', '1', '编辑品牌管理: 德龙', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2684', '1408388776', '1', '编辑品牌管理: 雷士照明', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2685', '1408388781', '1', '编辑品牌管理: 佳德', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2686', '1408388787', '1', '编辑品牌管理: 华帝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2687', '1408388792', '1', '编辑品牌管理: 博深', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2688', '1408388798', '1', '编辑品牌管理: 史丹利', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2689', '1408388804', '1', '编辑品牌管理: 宝工', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2690', '1408388809', '1', '编辑品牌管理: 九阳', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2691', '1408388816', '1', '编辑品牌管理: Coway', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2692', '1408388822', '1', '编辑品牌管理: 德尔玛', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2693', '1408388827', '1', '编辑品牌管理: 艾美特', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2694', '1408388834', '1', '编辑品牌管理: 春花', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2695', '1408388841', '1', '编辑品牌管理: 科沃斯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2696', '1408388850', '1', '编辑品牌管理: 美菱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2697', '1408388856', '1', '编辑品牌管理: 海燕', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2698', '1408388860', '1', '编辑品牌管理: 联想', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2699', '1408388867', '1', '编辑品牌管理: 雷神', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2700', '1408388873', '1', '编辑品牌管理: 宏碁', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2701', '1408388884', '1', '编辑品牌管理: 微软', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2702', '1408388892', '1', '编辑品牌管理: 机械革命', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2703', '1408388897', '1', '编辑品牌管理: 华硕', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2704', '1408388904', '1', '编辑品牌管理: 惠普', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2705', '1408388912', '1', '编辑品牌管理: 刊菲', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2706', '1408388918', '1', '编辑品牌管理: HARMARYCIAGA', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2707', '1408388927', '1', '编辑品牌管理: 俏妮妃', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2708', '1408388934', '1', '编辑品牌管理: 琼瑛', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2709', '1408388941', '1', '编辑品牌管理: 时竟', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2710', '1408388948', '1', '编辑品牌管理: 誉彩', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2711', '1408388959', '1', '编辑品牌管理: 莱雪曼', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2712', '1408388968', '1', '编辑品牌管理: 洗颜专科', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2713', '1408388977', '1', '编辑品牌管理: 富安娜家纺', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2714', '1408388984', '1', '编辑品牌管理: 巧布万棉家纺', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2715', '1408388992', '1', '编辑品牌管理: 九洲鹿', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2716', '1408389003', '1', '编辑品牌管理: 爱斯基摩人', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2717', '1408389011', '1', '编辑品牌管理: 么小毛家纺', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2718', '1408389020', '1', '编辑品牌管理: 雅培', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2719', '1408389028', '1', '编辑品牌管理: 美素力', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2720', '1408389036', '1', '编辑品牌管理: 美赞臣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2721', '1408389045', '1', '编辑品牌管理: 雀巢', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2722', '1408389052', '1', '编辑品牌管理: 可瑞康', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2723', '1408389066', '1', '编辑品牌管理: 惠氏', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2724', '1408389072', '1', '编辑品牌管理: 纽诺迪克', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2725', '1408389079', '1', '编辑品牌管理: 太太', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2726', '1408389088', '1', '编辑品牌管理: 养生堂', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2727', '1408389094', '1', '编辑品牌管理: 健安喜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2728', '1408389099', '1', '编辑品牌管理: 东阿阿胶', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2729', '1408389116', '1', '编辑品牌管理: 康宝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2730', '1408389123', '1', '编辑品牌管理: 康宝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2731', '1408389129', '1', '编辑品牌管理: 康佳', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2732', '1408389135', '1', '编辑品牌管理: 维诺夫卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2733', '1408389143', '1', '编辑品牌管理: 奔腾', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2734', '1408389150', '1', '编辑品牌管理: 飞科', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2735', '1408389156', '1', '编辑品牌管理: 博世', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2736', '1408389162', '1', '编辑品牌管理: 老A', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2737', '1408389168', '1', '编辑品牌管理: 山崎', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2738', '1408390430', '1', '编辑广告: 家用电器分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2739', '1408390453', '1', '编辑广告: 家用电器分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2740', '1408390512', '1', '编辑广告: 服饰内衣、珠宝首饰分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2741', '1408390525', '1', '编辑广告: 服饰内衣、珠宝首饰分类下商品大广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2742', '1408390539', '1', '编辑广告: 服饰内衣、珠宝首饰分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2743', '1408390552', '1', '编辑广告: 服饰内衣、珠宝首饰分类下商品大广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2744', '1408399854', '1', '编辑商品: 雷神（ThundeRobot）911-E1 15.6英寸游戏本（i7-4710HQ 4G 500G GTX850M 2G DDR5 背光键盘 全高清屏）黑', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2745', '1408399868', '1', '编辑商品: 雷神（ThundeRobot）911-E1 15.6英寸游戏本（i7-4710HQ 4G 500G GTX850M 2G DDR5 背光键盘 全高清屏）黑', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2746', '1408399987', '1', '编辑商品: 联想（Lenovo） C245 18.5英寸一体电脑（E1-1200 2G 500G DVD刻录 Dos）白色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2747', '1408400065', '1', '编辑商品: 丝露怡语 2014夏雪纺撞色青花瓷修身连衣裙女 661 9919蓝色 M', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2748', '1408400101', '1', '编辑商品: Neutrogena露得清深层净化洗面乳两支套装100g*2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2749', '1408400120', '1', '编辑商品: 欧莱雅（LOREAL）男士 控油炭爽抗黑头洁面膏100ml', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2750', '1408400125', '1', '编辑商品: DHC蝶翠诗橄榄卸妆油200ml', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2751', '1408400132', '1', '编辑商品: 妮维雅 男士净油精华亮肤洁面炭泥 150ml+150ml （提亮肤色 控油美白洗面奶 深层洁面 温和去角质）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2752', '1408400139', '1', '编辑商品: 欧莱雅（LOREAL）男士火山岩控油清痘洁面膏 买一赠一装（100ml+50ml）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2753', '1408400148', '1', '编辑商品: 洗颜专科 柔澈泡沫 洁面乳 120g（资生堂授权正品）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2754', '1408400311', '1', '添加商品: 海尔（Haier） S400 14英寸游戏本（i7-4500U 4G 500G HD4400+GT745M 2G独显）黑色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2755', '1408400346', '1', '添加商品: 清华同方（THTF） 锋锐K560 15.6英寸笔记本(i7-4702MQ 8G 1T GT840M 2G独显 25.3mm超薄机身)咖啡金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2756', '1408400371', '1', '编辑品牌管理: 海尔电脑', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2757', '1408400377', '1', '编辑品牌管理: 清华同方', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2758', '1408400527', '1', '添加商品: 美旅箱包（AmericanTourister） 76A*26003 金属质感ABS+PC万向轮拉杆箱 香槟色20寸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2759', '1408400573', '1', '添加商品: ELLE(她）特推系列真皮单肩斜挎女包JD141P29527BU蓝色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2760', '1408400611', '1', '编辑品牌管理: ELLE', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2761', '1408400628', '1', '编辑品牌管理: 美旅', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2762', '1408400821', '1', '编辑商品: 中华老字号 东阿阿胶桃花姬阿胶糕300g', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2763', '1408400829', '1', '编辑商品: 京东自营 东阿阿胶 桃花姬阿胶糕60g*4 （东阿阿胶)', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2764', '1408400846', '1', '编辑商品: 养生堂维生素E软胶囊160粒装（送80gVE保湿修护睡眠面膜）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2765', '1408400853', '1', '编辑商品: 养生堂天然维生素E.C祛斑焕白套装（维生素C90片+维生素E160粒）（赠养生堂5片面膜）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2766', '1408400863', '1', '编辑商品: 太太静心助眠口服液15ml*60支', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2767', '1408402013', '1', '编辑广告: 顶部横幅广告（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2768', '1408402034', '1', '编辑广告: 顶部横幅广告（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2769', '1408402036', '1', '编辑广告: 顶部横幅广告（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2770', '1408402036', '1', '编辑广告: 顶部横幅广告（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2771', '1408486955', '1', '编辑广告: 家用电器分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2772', '1408486955', '1', '编辑广告: 家用电器分类下商品大广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2773', '1408486979', '1', '编辑广告: 家用电器分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2774', '1408486979', '1', '编辑广告: 家用电器分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2775', '1408491595', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2776', '1427750984', '1', '编辑商品分类: 图书、音像、数字商品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2777', '1427751024', '1', '编辑商品分类: 图书、音像、数字商品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2778', '1427835933', '1', '编辑广告: 顶部横幅广告（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2779', '1427835945', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2780', '1427835950', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2781', '1427852427', '1', '编辑广告位置: 194', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2782', '1427852440', '1', '编辑广告位置: 168', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2783', '1427852442', '1', '编辑广告位置: 134', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2784', '1427909688', '1', '添加商品分类: 理财、众筹、白条、保险', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2785', '1427914538', '1', '编辑广告: 首页幻灯片右侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2786', '1427914538', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2787', '1427914543', '1', '删除广告位置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2788', '1427927646', '1', '编辑广告位置: 250', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2789', '1427927650', '1', '编辑广告位置: 164', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2790', '1427927803', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2791', '1427927814', '1', '编辑广告: 首页幻灯片下方广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2792', '1427927822', '1', '编辑广告: 首页幻灯片下方广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2793', '1427927835', '1', '编辑广告: 首页幻灯片下方广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2794', '1427927843', '1', '编辑广告: 首页幻灯片下方广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2795', '1427927855', '1', '编辑广告: 首页幻灯片下方广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2796', '1427927867', '1', '编辑广告: 首页幻灯片下方广告6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2797', '1427927883', '1', '编辑广告: 首页幻灯片下方广告7', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2798', '1427927896', '1', '编辑广告: 首页幻灯片下方广告8', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2799', '1427935201', '1', '编辑广告: 特色1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2800', '1427935203', '1', '编辑广告: 特色2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2801', '1427935206', '1', '编辑广告: 特色3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2802', '1427935209', '1', '编辑广告: 特色4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2803', '1427935211', '1', '编辑广告: 特色5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2804', '1427935212', '1', '编辑广告: 特色6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2805', '1427935214', '1', '编辑广告: 特色7', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2806', '1427935215', '1', '编辑广告: 特色8', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2807', '1427935229', '1', '编辑广告位置: 活动广告位（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2808', '1427935236', '1', '编辑广告位置: 特色广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2809', '1427935304', '1', '编辑广告位置: 生活橱窗广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2810', '1427935308', '1', '编辑广告位置: 生活橱窗广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2811', '1427935527', '1', '编辑广告位置: 生活橱窗广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2812', '1427935911', '1', '编辑广告: 特色1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2813', '1427935937', '1', '编辑广告: 特色2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2814', '1427935955', '1', '编辑广告: 特色3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2815', '1427935974', '1', '编辑广告: 特色4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2816', '1427935995', '1', '编辑广告: 特色5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2817', '1427936018', '1', '编辑广告: 特色6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2818', '1427936035', '1', '编辑广告: 特色7', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2819', '1427936060', '1', '编辑广告: 特色8', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2820', '1427936084', '1', '编辑广告位置: 301', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2821', '1427936086', '1', '编辑广告位置: 170', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2822', '1427995872', '1', '编辑广告: 首页幻灯片下方广告8', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2823', '1427996685', '1', '编辑广告位置: 125', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2824', '1427996689', '1', '编辑广告位置: 生活橱窗下方通栏广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2825', '1427996706', '1', '添加广告: 生活橱窗下方通栏广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2826', '1428000504', '1', '编辑广告位置: 330', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2827', '1428000505', '1', '编辑广告位置: 475', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2828', '1428000543', '1', '编辑广告: 家用电器分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2829', '1428008622', '1', '编辑广告: 电脑、办公分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2830', '1428014614', '1', '添加广告位置: 分类下商品右侧小广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2831', '1428014627', '1', '编辑广告位置: 分类下商品右侧小广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2832', '1428014628', '1', '编辑广告位置: 分类下商品左广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2833', '1428014630', '1', '编辑广告位置: 分类下商品右侧小广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2834', '1428014741', '1', '添加广告: 分类下商品右侧小广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2835', '1428014757', '1', '添加广告: 分类下商品右侧小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2836', '1428014770', '1', '添加广告: 分类下商品右侧小广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2837', '1428014785', '1', '添加广告: 分类下商品右侧小广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2838', '1428014793', '1', '编辑广告: 分类下商品右侧小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2839', '1428014806', '1', '编辑广告: 家用电器分类下商品右侧小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2840', '1428014808', '1', '编辑广告: 家用电器分类下商品右侧小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2841', '1428014810', '1', '编辑广告: 家用电器分类下商品右侧小广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2842', '1428014811', '1', '编辑广告: 家用电器分类下商品右侧小广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2843', '1428014865', '1', '添加广告位置: 分类下商品右广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2844', '1428015267', '1', '添加广告: 分类下商品右广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2845', '1428015278', '1', '添加广告: 分类下商品右广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2846', '1428015289', '1', '添加广告: 分类下商品右广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2847', '1428015300', '1', '添加广告: 分类下商品右广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2848', '1428015314', '1', '编辑广告: 家用电器分类下商品右侧小广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2849', '1428015319', '1', '编辑广告: 家用电器分类下商品右广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2850', '1428015322', '1', '编辑广告: 家用电器分类下商品右广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2851', '1428015323', '1', '编辑广告: 家用电器分类下商品右广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2852', '1428015325', '1', '编辑广告: 家用电器分类下商品右广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2853', '1428015729', '1', '编辑广告位置: 117', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2854', '1428020949', '1', '添加广告位置: 分类下商品右侧幻灯片广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2855', '1428021572', '1', '添加广告: 分类下商品右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2856', '1428021583', '1', '添加广告: 分类下商品右侧幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2857', '1428021595', '1', '添加广告: 分类下商品右侧幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2858', '1428021608', '1', '添加广告: 分类下商品右侧幻灯片广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2859', '1428021616', '1', '编辑广告: 家用电器分类下商品右广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2860', '1428021621', '1', '编辑广告: 家用电器分类下商品右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2861', '1428021623', '1', '编辑广告: 家用电器分类下商品右侧幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2862', '1428021625', '1', '编辑广告: 家用电器分类下商品右侧幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2863', '1428021627', '1', '编辑广告: 家用电器分类下商品右侧幻灯片广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2864', '1428447292', '1', '编辑广告位置: 顶部横幅广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2865', '1428447471', '1', '编辑广告位置: 顶部横幅广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2866', '1428447485', '1', '添加广告: 顶部横幅广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2867', '1428447571', '1', '编辑广告: 顶部横幅广告（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2868', '1428447655', '1', '编辑广告位置: 顶部横幅广告位（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2869', '1428447678', '1', '添加广告: 顶部横幅广告（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2870', '1428447714', '1', '编辑广告: 顶部横幅广告（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2871', '1428538655', '1', '编辑广告位置: 1000', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2872', '1428538657', '1', '编辑广告位置: 370', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2873', '1428622534', '1', '编辑商品: 宝工（Pro\'skit） PT-5501I 可调速软轴电磨组', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2874', '1428626070', '1', '添加广告位置: 首页疯狂秒杀下广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2875', '1428626091', '1', '添加广告: 首页疯狂秒杀下广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2876', '1428626112', '1', '添加广告: 首页疯狂秒杀下广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2877', '1428626124', '1', '添加广告: 首页疯狂秒杀下广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2878', '1428626465', '1', '编辑广告位置: 首页疯狂秒杀下广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2879', '1428627332', '1', '添加广告位置: 首页精品大厅广告位一', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2880', '1428627361', '1', '添加广告位置: 首页精品大厅广告位二', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2881', '1428627378', '1', '添加广告位置: 首页精品大厅广告位三', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2882', '1428878311', '1', '添加广告位置: 顶级分类左侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2883', '1428878336', '1', '添加广告: 大 家 电顶级分类左侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2884', '1428878457', '1', '编辑广告: 大 家 电分类左侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2885', '1428883974', '1', '添加广告位置: 顶级分类楼层右侧幻灯片广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2886', '1428883979', '1', '编辑广告位置: 顶级分类楼层右侧幻灯片广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2887', '1428883979', '1', '编辑广告位置: 顶级分类左侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2888', '1428883982', '1', '编辑广告位置: 顶级分类楼层右侧幻灯片广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2889', '1428883983', '1', '编辑广告位置: 顶级分类楼层左侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2890', '1428884011', '1', '编辑广告: 大 家 电分类左侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2891', '1428884028', '1', '添加广告: 大 家 电分类右侧幻灯片广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2892', '1428884039', '1', '添加广告: 大 家 电分类右侧幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2893', '1428884058', '1', '添加广告: 大 家 电分类右侧幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2894', '1428884075', '1', '编辑广告: 大 家 电分类右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2895', '1428970748', '1', '添加优惠活动: 店铺周年庆活动，全场八折起！', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2896', '1428974004', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2897', '1428974226', '1', '编辑前台语言项: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2898', '1429033358', '1', '编辑优惠活动: 店铺周年庆活动，全场八折起！', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2899', '1429142108', '1', '编辑支付方式: 货到付款', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2900', '1429208277', '1', '编辑配送区域: 1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2901', '1429208382', '1', '卸载配送方式: 城际快递', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2902', '1429208606', '1', '卸载支付方式: cod', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2903', '1429219678', '1', '添加配送区域: 圆通速递', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2904', '1429225554', '1', '删除商品包装: 精装包装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2905', '1429225557', '1', '删除商品包装: 精品包装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2906', '1429225803', '1', '删除商品包装: 精品包装！！', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2907', '1429225816', '1', '删除商品贺卡: 祝福贺卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2908', '1429225855', '1', '添加商品贺卡: 高档贺卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2909', '1429225872', '1', '添加商品贺卡: 精品贺卡', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2910', '1429226337', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2911', '1429226407', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2912', '1429488862', '1', '添加广告位置: 登录页广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2913', '1429488889', '1', '添加广告: 登录页广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2914', '1429637522', '1', '添加广告位置: 团购列表幻灯片广告位一', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2915', '1429637543', '1', '添加广告位置: 团购列表幻灯片广告位二', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2916', '1429637560', '1', '添加广告位置: 团购列表幻灯片广告位三', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2917', '1429637582', '1', '添加广告位置: 团购列表幻灯片广告位四', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2918', '1429637598', '1', '添加广告位置: 团购列表幻灯片广告位五', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2919', '1429637649', '1', '添加广告: 团购列表幻灯片广告一', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2920', '1429637663', '1', '添加广告: 团购列表幻灯片广告二', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2921', '1429637679', '1', '添加广告: 团购列表幻灯片广告三', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2922', '1429637695', '1', '添加广告: 团购列表幻灯片广告四', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2923', '1429637712', '1', '添加广告: 团购列表幻灯片广告五', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2924', '1429638165', '1', '编辑广告位置: 750', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2925', '1429638168', '1', '编辑广告位置: 750', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2926', '1429638169', '1', '编辑广告位置: 750', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2927', '1429638170', '1', '编辑广告位置: 750', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2928', '1429638171', '1', '编辑广告位置: 750', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2929', '1429638172', '1', '编辑广告位置: 750', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2930', '1429639663', '1', '添加广告位置: 团购列表幻灯片下广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2931', '1429639725', '1', '添加广告: 团购列表幻灯片下广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2932', '1429639737', '1', '添加广告: 团购列表幻灯片下广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2933', '1429639749', '1', '添加广告: 团购列表幻灯片下广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2934', '1429640119', '1', '编辑广告位置: 团购列表幻灯片下广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2935', '1429641218', '1', '添加广告位置: 团购列表幻灯片右侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2936', '1429641331', '1', '添加广告: 团购列表幻灯片右侧广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2937', '1429641342', '1', '添加广告: 团购列表幻灯片右侧广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2938', '1429641352', '1', '添加广告: 团购列表幻灯片右侧广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2939', '1429645477', '1', '添加广告位置: 团购列表底部广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2940', '1429645496', '1', '添加广告: 团购列表底部广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2941', '1429645606', '1', '添加团购商品: 海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2942', '1429645633', '1', '添加团购商品: 香山（CAMRY） EB9005L 圆形电子秤 体重秤 透明玻璃', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2943', '1429645653', '1', '编辑团购商品: 香山（CAMRY） EB9005L 圆形电子秤 体重秤 透明玻璃[6]', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2944', '1429645681', '1', '添加团购商品: 力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2945', '1429645692', '1', '编辑团购商品: 力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）[7]', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2946', '1429645727', '1', '添加团购商品: 赛亿（Shinee）BC-50 50升单门冷藏迷你小电冰箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2947', '1429645743', '1', '编辑团购商品: 赛亿（Shinee）BC-50 50升单门冷藏迷你小电冰箱[8]', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2948', '1429645793', '1', '删除团购商品: 赛亿（Shinee）BC-50 50升单门冷藏迷你小电冰箱[8]', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2949', '1429645803', '1', '添加团购商品: 海信（Hisense） KFR-35GW/10FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2950', '1429645824', '1', '编辑团购商品: 海信（Hisense） KFR-35GW/10FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调[9]', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2951', '1429650595', '1', '添加团购商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2952', '1429650632', '1', '添加团购商品: 创维（Skyworth） 40E5CHR 40英寸 LED液晶电视（银色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2953', '1429650660', '1', '添加团购商品: 志高（chigo）KFR-51LW/N33+N3 大2匹 柜式家用冷暖空调（白色 白5）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2954', '1429650765', '1', '编辑团购商品: 创维（Skyworth） 40E5CHR 40英寸 LED液晶电视（银色）[11]', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2955', '1429655306', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2956', '1429657516', '1', '添加广告位置: 团购详情右侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2957', '1429657547', '1', '添加广告位置: 团购详情底部广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2958', '1429657568', '1', '添加广告: 团购详情右侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2959', '1429657591', '1', '添加广告: 团购详情底部广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2960', '1429664590', '1', '添加商品分类: Aaaa', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2961', '1429664624', '1', '删除商品分类: Aaaa', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2962', '1429723125', '1', '编辑广告: 家用电器分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2963', '1429723141', '1', '编辑广告: 家用电器分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2964', '1429723180', '1', '编辑广告: 家用电器分类下商品右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2965', '1429723196', '1', '编辑广告: 家用电器分类下商品右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2966', '1429723202', '1', '编辑广告: 家用电器分类下商品右侧幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2967', '1429723211', '1', '编辑广告: 家用电器分类下商品右侧幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2968', '1429723223', '1', '编辑广告: 家用电器分类下商品右侧幻灯片广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2969', '1429727690', '1', '编辑广告: 家用电器分类下商品右侧小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2970', '1429727715', '1', '编辑广告: 家用电器分类下商品右侧小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2971', '1429727725', '1', '编辑广告: 家用电器分类下商品右侧小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2972', '1429727737', '1', '编辑广告: 家用电器分类下商品右侧小广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2973', '1429727748', '1', '编辑广告: 家用电器分类下商品右侧小广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2974', '1429727780', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2975', '1429727781', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2976', '1429727783', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2977', '1429727784', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2978', '1429727785', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2979', '1429727786', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2980', '1429727817', '1', '编辑广告: 家用电器分类下商品右广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2981', '1429727823', '1', '编辑广告: 家用电器分类下商品右广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2982', '1429727831', '1', '编辑广告: 家用电器分类下商品右广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2983', '1429727840', '1', '编辑广告: 家用电器分类下商品右广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2984', '1429727851', '1', '编辑广告: 家用电器分类下商品右广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2985', '1429727952', '1', '编辑广告: 家用电器分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2986', '1429727959', '1', '编辑广告: 家用电器分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2987', '1429728014', '1', '编辑广告: 电脑、办公分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2988', '1429728047', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2989', '1429728050', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2990', '1429728051', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2991', '1429728060', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2992', '1429728064', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2993', '1429728065', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2994', '1429728082', '1', '编辑广告: 家用电器分类下商品右侧幻灯片广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2995', '1429728087', '1', '编辑广告: 家用电器分类下商品右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2996', '1429728123', '1', '添加广告: 电脑、办公分类下商品右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2997', '1429728133', '1', '添加广告: 电脑、办公分类下商品右侧幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2998', '1429728145', '1', '添加广告: 电脑、办公分类下商品右侧幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2999', '1429728157', '1', '添加广告: 电脑、办公分类下商品右侧幻灯片广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3000', '1429728201', '1', '编辑广告: 家用电器分类下商品右侧小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3001', '1429728231', '1', '添加广告: 电脑、办公分类下商品右侧小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3002', '1429728254', '1', '添加广告: 电脑、办公分类下商品右侧小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3003', '1429728267', '1', '添加广告: 电脑、办公分类下商品右侧小广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3004', '1429728278', '1', '添加广告: 电脑、办公分类下商品右侧小广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3005', '1429728304', '1', '编辑广告: 家用电器分类下商品右广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3006', '1429728328', '1', '添加广告: 电脑、办公分类下商品右广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3007', '1429728343', '1', '添加广告: 电脑、办公分类下商品右广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3008', '1429728361', '1', '添加广告: 电脑、办公分类下商品右广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3009', '1429728373', '1', '添加广告: 电脑、办公分类下商品右广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3010', '1429729254', '1', '编辑广告位置: 分类下商品左广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3011', '1429729280', '1', '编辑广告: 家用电器分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3012', '1429729303', '1', '编辑广告: 家用电器分类下商品右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3013', '1429729315', '1', '编辑广告位置: 分类下商品右侧小广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3014', '1429729325', '1', '编辑广告: 家用电器分类下商品右侧小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3015', '1429729340', '1', '编辑广告: 家用电器分类下商品右广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3016', '1429729413', '1', '编辑广告: 服饰内衣、珠宝首饰分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3017', '1429729450', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3018', '1429729463', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品右侧幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3019', '1429729474', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品右侧幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3020', '1429729485', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品右侧幻灯片广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3021', '1429729589', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品右侧小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3022', '1429729599', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品右侧小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3023', '1429729608', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品右侧小广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3024', '1429729617', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品右侧小广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3025', '1429729647', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品右广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3026', '1429729658', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品右广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3027', '1429729669', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品右广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3028', '1429729680', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品右广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3029', '1429730708', '1', '编辑广告: 家居、家具、家装、厨具分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3030', '1429730723', '1', '添加广告: 家居、家具、家装、厨具分类下商品右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3031', '1429730732', '1', '添加广告: 家居、家具、家装、厨具分类下商品右侧幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3032', '1429730746', '1', '添加广告: 家居、家具、家装、厨具分类下商品右侧幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3033', '1429730758', '1', '添加广告: 家居、家具、家装、厨具分类下商品右侧幻灯片广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3034', '1429730786', '1', '添加广告: 家居、家具、家装、厨具分类下商品右侧小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3035', '1429730797', '1', '添加广告: 家居、家具、家装、厨具分类下商品右侧小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3036', '1429730813', '1', '添加广告: 家居、家具、家装、厨具分类下商品右侧小广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3037', '1429730824', '1', '添加广告: 家居、家具、家装、厨具分类下商品右侧小广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3038', '1429730919', '1', '添加广告: 家居、家具、家装、厨具分类下商品右广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3039', '1429730936', '1', '添加广告: 家居、家具、家装、厨具分类下商品右广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3040', '1429730947', '1', '添加广告: 家居、家具、家装、厨具分类下商品右广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3041', '1429730959', '1', '添加广告: 家居、家具、家装、厨具分类下商品右广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3042', '1429734904', '1', '编辑广告: 母婴、玩具乐器分类下商品左广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3043', '1429734957', '1', '添加广告: 母婴、玩具乐器分类下商品右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3044', '1429734967', '1', '添加广告: 母婴、玩具乐器分类下商品右侧幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3045', '1429734988', '1', '添加广告: 母婴、玩具乐器分类下商品右侧幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3046', '1429735000', '1', '添加广告: 母婴、玩具乐器分类下商品右侧幻灯片广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3047', '1429735019', '1', '添加广告: 母婴、玩具乐器分类下商品右侧小广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3048', '1429735029', '1', '添加广告: 母婴、玩具乐器分类下商品右侧小广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3049', '1429735042', '1', '添加广告: 母婴、玩具乐器分类下商品右侧小广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3050', '1429735053', '1', '添加广告: 母婴、玩具乐器分类下商品右侧小广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3051', '1429735083', '1', '添加广告: 母婴、玩具乐器分类下商品右广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3052', '1429735093', '1', '添加广告: 母婴、玩具乐器分类下商品右广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3053', '1429735105', '1', '添加广告: 母婴、玩具乐器分类下商品右广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3054', '1429735117', '1', '添加广告: 母婴、玩具乐器分类下商品右广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3055', '1429735838', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3056', '1429735850', '1', '编辑广告位置: 分类下商品小广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3057', '1429735853', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3058', '1429735861', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3059', '1429735867', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3060', '1429735873', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3061', '1429735875', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3062', '1429735879', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3063', '1429735880', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3064', '1429735886', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3065', '1429735887', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3066', '1429735891', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3067', '1429735894', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3068', '1429735902', '1', '删除广告位置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3069', '1429735905', '1', '编辑广告位置: 分类下商品大广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3070', '1429735917', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3071', '1429735923', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3072', '1429735924', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3073', '1429735925', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3074', '1429735928', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3075', '1429735929', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3076', '1429735930', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3077', '1429735931', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3078', '1429735936', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3079', '1429735937', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3080', '1429735938', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3081', '1429735939', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3082', '1429735942', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3083', '1429735943', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3084', '1429735944', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3085', '1429735945', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3086', '1429735962', '1', '编辑广告: 个护化妆分类下商品大广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3087', '1429735965', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3088', '1429735966', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3089', '1429735967', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3090', '1429735967', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3091', '1429735973', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3092', '1429735974', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3093', '1429735976', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3094', '1429735977', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3095', '1429735985', '1', '删除广告位置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3096', '1429736021', '1', '编辑广告: 运动户外左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3097', '1429736026', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3098', '1429736033', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3099', '1429736038', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3100', '1429736039', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3101', '1429736040', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3102', '1429736041', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3103', '1429736042', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3104', '1429736043', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3105', '1429736047', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3106', '1429736049', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3107', '1429736052', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3108', '1429736053', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3109', '1429736054', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3110', '1429736055', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3111', '1429736058', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3112', '1429736060', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3113', '1429736064', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3114', '1429736065', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3115', '1429736069', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3116', '1429736071', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3117', '1429736075', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3118', '1429736077', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3119', '1429736080', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3120', '1429736082', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3121', '1429736085', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3122', '1429736087', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3123', '1429736101', '1', '删除广告位置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3124', '1429736765', '1', '编辑广告位置: 顶级分类页幻灯片广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3125', '1429736773', '1', '编辑广告: 家用电器顶级分类页幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3126', '1429736779', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3127', '1429736780', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3128', '1429736781', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3129', '1429736782', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3130', '1429736783', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3131', '1429736797', '1', '删除广告位置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3132', '1429736803', '1', '编辑广告位置: 顶级分类楼层右侧幻灯片广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3133', '1429737799', '1', '编辑广告: 大 家 电分类右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3134', '1429737824', '1', '添加广告: 生活电器分类右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3135', '1429737869', '1', '编辑广告: 生活电器分类楼层左侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3136', '1429737898', '1', '编辑广告: 生活电器分类左侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3137', '1429737932', '1', '添加广告: 生活电器分类右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3138', '1429737944', '1', '添加广告: 生活电器分类右侧幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3139', '1429737954', '1', '添加广告: 生活电器分类右侧幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3140', '1429737991', '1', '编辑广告: 生活电器分类右侧幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3141', '1429738532', '1', '编辑广告: 厨房电器分类左侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3142', '1429738540', '1', '编辑广告: 厨房电器分类右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3143', '1429738542', '1', '编辑广告: 厨房电器分类右侧幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3144', '1429738543', '1', '编辑广告: 厨房电器分类右侧幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3145', '1429739126', '1', '添加广告: 生活电器分类左侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3146', '1429739140', '1', '添加广告: 生活电器分类右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3147', '1429739151', '1', '添加广告: 生活电器分类右侧幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3148', '1429739161', '1', '添加广告: 生活电器分类右侧幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3149', '1429739226', '1', '添加广告: 个护健康分类左侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3150', '1429739241', '1', '添加广告: 个护健康分类右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3151', '1429739250', '1', '添加广告: 个护健康分类右侧幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3152', '1429739259', '1', '添加广告: 个护健康分类右侧幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3153', '1429739567', '1', '添加广告位置: 顶级分类页顶部幻灯片广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3154', '1429739604', '1', '添加广告: 顶级分类页幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3155', '1429739616', '1', '添加广告: 顶级分类页幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3156', '1429739625', '1', '添加广告: 顶级分类页幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3157', '1429739635', '1', '添加广告: 顶级分类页幻灯片广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3158', '1429739644', '1', '添加广告: 顶级分类页幻灯片广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3159', '1429739705', '1', '编辑广告: 手机、数码、京东通信顶级分类页幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3160', '1429739727', '1', '编辑广告: 家用电器顶级分类页幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3161', '1429739757', '1', '编辑广告: 家用电器顶级分类页幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3162', '1429739758', '1', '编辑广告: 家用电器顶级分类页幻灯片广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3163', '1429739760', '1', '编辑广告: 家用电器顶级分类页幻灯片广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3164', '1429739763', '1', '编辑广告: 家用电器顶级分类页幻灯片广告4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3165', '1429739765', '1', '编辑广告: 家用电器顶级分类页幻灯片广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3166', '1429740536', '1', '添加广告位置: 左侧导航广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3167', '1429742448', '1', '添加广告: 图书、音像、数字商品左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3168', '1429742459', '1', '添加广告: 图书、音像、数字商品左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3169', '1429742475', '1', '编辑广告位置: 168', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3170', '1429742477', '1', '编辑广告位置: 134', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3171', '1429742548', '1', '编辑广告位置: 左侧导航广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3172', '1429742553', '1', '编辑广告: 图书、音像、数字商品左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3173', '1429742573', '1', '添加广告: 家用电器商品左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3174', '1429742582', '1', '添加广告: 家用电器商品左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3175', '1429742603', '1', '添加广告: 手机、数码、京东通信商品左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3176', '1429742612', '1', '添加广告: 手机、数码、京东通信商品左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3177', '1429742631', '1', '添加广告: 电脑、办公商品左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3178', '1429742640', '1', '添加广告: 电脑、办公商品左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3179', '1429742659', '1', '添加广告: 家居、家具、家装、厨具商品左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3180', '1429742673', '1', '添加广告: 家居、家具、家装、厨具商品左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3181', '1429742735', '1', '编辑广告: 家用电器左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3182', '1429742737', '1', '编辑广告: 家用电器左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3183', '1429742739', '1', '编辑广告: 手机、数码、京东通信左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3184', '1429742740', '1', '编辑广告: 手机、数码、京东通信左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3185', '1429742743', '1', '编辑广告: 电脑、办公左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3186', '1429742745', '1', '编辑广告: 电脑、办公左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3187', '1429742782', '1', '添加广告: 家居、家具、家装、厨具分类下商品左广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3188', '1429742791', '1', '添加广告: 家居、家具、家装、厨具分类下商品左广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3189', '1429742807', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品左广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3190', '1429742815', '1', '添加广告: 服饰内衣、珠宝首饰分类下商品左广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3191', '1429742840', '1', '编辑广告: 服饰内衣、珠宝首饰分类下商品左广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3192', '1429742844', '1', '编辑广告: 电脑、办公左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3193', '1429742848', '1', '编辑广告: 服饰内衣、珠宝首饰左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3194', '1429742853', '1', '编辑广告: 服饰内衣、珠宝首饰左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3195', '1429742860', '1', '编辑广告: 家居、家具、家装、厨具左侧导航广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3196', '1429742862', '1', '编辑广告: 家居、家具、家装、厨具左侧导航广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3197', '1429742906', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3198', '1429742915', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3199', '1429809504', '1', '编辑商品: 海尔（Haier） S400 14英寸游戏本（i7-4500U 4G 500G HD4400+GT745M 2G独显）黑色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3200', '1429816350', '1', '编辑广告: 活动广告（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3201', '1429817853', '1', '编辑广告位置: 首页幻灯片下方广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3202', '1429817914', '1', '编辑广告位置: 首页幻灯片下方广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3203', '1429817928', '1', '编辑广告位置: 首页幻灯片下方广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3204', '1429817943', '1', '编辑广告: 首页幻灯片下方广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3205', '1429818009', '1', '编辑广告位置: 250', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3206', '1429818193', '1', '编辑广告位置: 生活橱窗广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3207', '1429818215', '1', '编辑广告: 特色1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3208', '1429821938', '1', '编辑广告位置: 生活橱窗下方通栏广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3209', '1429821957', '1', '编辑广告: 生活橱窗下方通栏广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3210', '1429822099', '1', '编辑广告位置: 分类下商品左广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3211', '1429822754', '1', '编辑广告位置: 分类下商品右侧小广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3212', '1429822864', '1', '编辑广告位置: 分类下商品右广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3213', '1429822888', '1', '编辑广告: 电脑、办公分类下商品右广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3214', '1429824884', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3215', '1429827984', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3216', '1429833133', '1', '编辑广告位置: 首页疯狂秒杀下广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3217', '1429833197', '1', '编辑广告: 首页疯狂秒杀下广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3218', '1429834450', '1', '编辑广告位置: 顶级分类楼层左侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3219', '1429834480', '1', '编辑广告: 个护健康分类左侧广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3220', '1429834588', '1', '编辑广告位置: 顶级分类楼层右侧幻灯片广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3221', '1429834611', '1', '编辑广告: 个护健康分类右侧幻灯片广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3222', '1429834715', '1', '编辑广告位置: 顶部横幅广告位（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3223', '1429834764', '1', '编辑广告: 顶部横幅广告（宽）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3224', '1430086310', '1', '添加属性: 可选颜色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3225', '1430086348', '1', '编辑商品: 海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3226', '1430242963', '1', '编辑商品: 华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3227', '1430242986', '1', '编辑商品: 美的(Midea) MXV-ZLP90Q05 嵌入式 消毒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3228', '1430243002', '1', '编辑商品: 康宝(Canbo) ZTP108E-11E 嵌入式 消毒柜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3229', '1430243032', '1', '编辑商品: 康佳（KONKA） LED32E330C 32英寸 窄边高清液晶电视（银色）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3230', '1430243173', '1', '商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3231', '1430243173', '1', '回收: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3232', '1430243174', '1', '商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3233', '1430243174', '1', '回收: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3234', '1430243175', '1', '商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3235', '1430243175', '1', '回收: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3236', '1430243178', '1', '商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3237', '1430243178', '1', '回收: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3238', '1430243178', '1', '商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3239', '1430243178', '1', '回收: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3240', '1430243179', '1', '商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3241', '1430243179', '1', '回收: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3242', '1430243255', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3243', '1430243255', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3244', '1430243255', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3245', '1430243255', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3246', '1430243255', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3247', '1430243255', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3248', '1430243255', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3249', '1430243255', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3250', '1430243255', '1', '商品: 2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3251', '1435087168', '4', '编辑权限管理: zhuce', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3252', '1435099131', '4', '删除商品分类: 车衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3253', '1435099343', '4', '删除商品分类: 套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3254', '1435099355', '4', '删除商品分类: 护肤', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3255', '1435099367', '4', '删除商品分类: 脱毛膏', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3256', '1435099375', '4', '删除商品分类: 卫生巾', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3257', '1435099385', '4', '删除商品分类: 笔记本配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3258', '1435099407', '4', '删除商品分类: 医学', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3259', '1435099444', '4', '删除商品分类: 工业技术', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3260', '1435099463', '4', '删除商品分类: 彩票', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3261', '1435099481', '4', '删除商品分类: 保险', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3262', '1435099524', '4', '删除商品分类: 儿童表', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3263', '1435099545', '4', '删除商品分类: 男表', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3264', '1435099976', '4', '删除商品分类: 保温箱', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3265', '1435100906', '4', '删除商品分类: 抗氧化', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3266', '1435100935', '4', '删除商品分类: 耐缺氧', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3267', '1435101145', '4', '删除商品分类: 明目益智', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3268', '1435101751', '4', '删除商品分类: 骨骼健康', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3269', '1435101829', '4', '删除商品分类: 清洁剂', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3270', '1435102585', '4', '删除商品分类: 洗车工具', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3271', '1435102599', '4', '删除商品分类: 洗车配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3272', '1435102607', '4', '删除商品分类: 平板电脑配件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3273', '1435102620', '4', '删除商品分类: 电子/通信', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3274', '1435102627', '4', '删除商品分类: 成人奶粉', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3275', '1435102647', '4', '删除商品分类: 饰品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3276', '1435102684', '4', '删除商品分类: 智能眼镜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3277', '1435102693', '4', '删除商品分类: 肝肾养护', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3278', '1435102700', '4', '删除商品分类: 车身装饰件', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3279', '1435104009', '4', '删除商品分类: 运动跟踪器', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3280', '1435106149', '4', '删除商品分类: 调节三高', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3281', '1435106165', '4', '删除商品分类: 剃须', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3282', '1435106506', '4', '删除商品分类: 手机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3283', '1435106525', '4', '删除商品分类: 被子', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3284', '1435106540', '4', '删除商品分类: 面膜', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3285', '1435614432', '4', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3286', '1436229320', '4', '安装支付方式: 支付宝', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3287', '1436292973', '4', '编辑商品: ELLE(她）特推系列真皮单肩斜挎女包JD141P29527BU蓝色', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3288', '1436293490', '4', '编辑商品分类: 基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3289', '1436293972', '4', '添加商品分类: 基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3290', '1436294083', '4', '添加商品分类: 股票型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3291', '1436294096', '4', '添加商品分类: 货币型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3292', '1436294116', '4', '添加商品分类: 债券型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3293', '1436294131', '4', '添加商品分类: 混合型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3294', '1436294150', '4', '添加商品分类: 指数型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3295', '1436294164', '4', '添加商品分类: 理财型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3296', '1436294175', '4', '删除商品分类: 债券型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3297', '1436294178', '4', '删除商品分类: 混合型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3298', '1436294181', '4', '删除商品分类: 货币型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3299', '1436294183', '4', '删除商品分类: 指数型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3300', '1436294220', '4', '添加商品分类: 债券型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3301', '1436294233', '4', '添加商品分类: 货币型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3302', '1436294240', '4', '添加商品分类: 混合型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3303', '1436294252', '4', '添加商品分类: 指数型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3304', '1436294383', '4', '添加商品: 富国低碳环保股票型证券投资基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3305', '1436294482', '4', '添加商品: 富国低碳环保股票型证券投资基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3306', '1436294718', '4', '添加商品: 富国低碳环保股票型证券投资基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3307', '1436294782', '4', '添加商品: 易方达新兴成长基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3308', '1436294828', '4', '添加商品: 易方达新兴成长基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3309', '1436294934', '4', '添加商品: 鹏华证券保险分级基金 专注非银行金融板块', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3310', '1436294971', '4', '添加商品: 工银瑞信金融地产行业股票型证券投资基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3311', '1436295000', '4', '添加商品: 嘉实货币基金 月月分红 低风险 零手续费', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3312', '1436295027', '4', '添加商品: 易方达天天理财货币基金A', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3313', '1436295059', '4', '添加商品: 南方现金通货币市场基金A类', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3314', '1436295224', '4', '添加商品: 南方宝元债券型基金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3315', '1436305771', '4', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3316', '1436309458', '4', '编辑文章: 业内人士观点全社会流动性并不缺乏', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3317', '1436309630', '4', '编辑文章: 易方达力争超额收益', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3318', '1436309706', '4', '编辑文章: 市场将逐渐趋于稳定', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3319', '1436309763', '4', '编辑文章: 市场下跌 基金公司坚定信心看好后市', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3320', '1436313094', '4', '编辑广告位置: 顶级分类楼层左侧广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3321', '1436313160', '4', '编辑广告位置: 生活橱窗广告位', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3322', '1436313209', '4', '编辑广告: 特色8', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3323', '1436313254', '4', '编辑广告: 特色1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3324', '1436313281', '4', '编辑广告: 特色2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3325', '1436313309', '4', '编辑广告: 特色3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3326', '1436313329', '4', '编辑广告: 特色4', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3327', '1436313340', '4', '编辑广告: 首页幻灯片下方广告5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3328', '1436313360', '4', '编辑广告: 首页幻灯片下方广告6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3329', '1436313373', '4', '编辑广告: 首页幻灯片下方广告7', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3330', '1436313390', '4', '编辑广告: 特色8', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3331', '1436313523', '4', '编辑广告: 特色5', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3332', '1436313555', '4', '编辑广告: 特色6', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3333', '1436313576', '4', '编辑广告: 特色7', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3334', '1436313655', '4', '编辑广告: 活动广告（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3335', '1436313700', '4', '编辑广告: 活动广告（窄）', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3336', '1436316846', '4', '编辑操作日志: ', '127.0.0.1');

-- ----------------------------
-- Table structure for `ecs_admin_message`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_message`;
CREATE TABLE `ecs_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL auto_increment,
  `sender_id` tinyint(3) unsigned NOT NULL default '0',
  `receiver_id` tinyint(3) unsigned NOT NULL default '0',
  `sent_time` int(11) unsigned NOT NULL default '0',
  `read_time` int(11) unsigned NOT NULL default '0',
  `readed` tinyint(1) unsigned NOT NULL default '0',
  `deleted` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_message
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_user`;
CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL auto_increment,
  `user_name` varchar(60) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `ec_salt` varchar(10) default NULL,
  `add_time` int(11) NOT NULL default '0',
  `last_login` int(11) NOT NULL default '0',
  `last_ip` varchar(15) NOT NULL default '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL default '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned default '0',
  `todolist` longtext,
  `role_id` smallint(5) default NULL,
  PRIMARY KEY  (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_user
-- ----------------------------
INSERT INTO `ecs_admin_user` VALUES ('1', 'admin', '', '21232f297a57a5a743894a0e4a801fc3', '1978', '1398244330', '1430246382', '127.0.0.1', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', null, null);
INSERT INTO `ecs_admin_user` VALUES ('2', 'bjgonghuo1', 'bj@163.com', 'd0c015b6eb9a280f318a4c0510581e7e', null, '1245044099', '0', '', '', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '1', '', null);
INSERT INTO `ecs_admin_user` VALUES ('3', 'shhaigonghuo1', 'shanghai@163.com', '4146fecce77907d264f6bd873f4ea27b', null, '1245044202', '0', '', '', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '2', '', null);
INSERT INTO `ecs_admin_user` VALUES ('4', 'zhuce', '1212212@126.com', '61a048c2e7275059af1cf5fd5d011263', '918', '0', '1436305604', '127.0.0.1', 'all', '', '', '0', '0', null, null);

-- ----------------------------
-- Table structure for `ecs_adsense`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_adsense`;
CREATE TABLE `ecs_adsense` (
  `from_ad` smallint(5) NOT NULL default '0',
  `referer` varchar(255) NOT NULL default '',
  `clicks` int(10) unsigned NOT NULL default '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_adsense
-- ----------------------------
INSERT INTO `ecs_adsense` VALUES ('11', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('41', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('48', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('3', '本站', '3');
INSERT INTO `ecs_adsense` VALUES ('84', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('17', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('24', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('4', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('8', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('100', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('12', '本站', '6');
INSERT INTO `ecs_adsense` VALUES ('102', '本站', '4');
INSERT INTO `ecs_adsense` VALUES ('95', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('132', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('115', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('124', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('13', '本站', '3');
INSERT INTO `ecs_adsense` VALUES ('5', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('117', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('180', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('16', '本站', '1');

-- ----------------------------
-- Table structure for `ecs_ad_custom`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad_custom`;
CREATE TABLE `ecs_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL auto_increment,
  `ad_type` tinyint(1) unsigned NOT NULL default '1',
  `ad_name` varchar(60) default NULL,
  `add_time` int(10) unsigned NOT NULL default '0',
  `content` mediumtext,
  `url` varchar(255) default NULL,
  `ad_status` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad_custom
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_ad_position`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad_position`;
CREATE TABLE `ecs_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL auto_increment,
  `position_name` varchar(60) NOT NULL default '',
  `ad_width` smallint(5) unsigned NOT NULL default '0',
  `ad_height` smallint(5) unsigned NOT NULL default '0',
  `position_desc` varchar(255) NOT NULL default '',
  `position_style` text NOT NULL,
  PRIMARY KEY  (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad_position
-- ----------------------------
INSERT INTO `ecs_ad_position` VALUES ('15', '分类下商品右侧小广告位', '219', '117', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('2', '首页幻灯片下方广告位', '250', '164', '', '{foreach from=$ads item=ad name=foo}\r\n<li class=\"item fore{$smarty.foreach.foo.iteration}\"> \r\n{$ad}\r\n</li>\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('3', '活动广告位（宽）', '308', '139', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('4', '生活橱窗广告位', '301', '170', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('6', '活动广告位（窄）', '208', '139', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('7', '生活橱窗下方通栏广告位（宽）', '1210', '125', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('35', '顶级分类页顶部幻灯片广告位', '1000', '370', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('36', '左侧导航广告位', '168', '134', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('12', '顶部横幅广告位（宽）', '1210', '70', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('13', '顶部横幅广告位（窄）', '990', '70', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('14', '分类下商品左广告位', '330', '475', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('16', '分类下商品右广告位', '219', '236', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('17', '分类下商品右侧幻灯片广告位', '439', '236', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('18', '首页疯狂秒杀下广告位', '390', '100', '', '<ul>\r\n{foreach from=$ads item=ad}\r\n<li>{$ad}</li>\r\n{/foreach}\r\n</ul>');
INSERT INTO `ecs_ad_position` VALUES ('19', '首页精品大厅广告位一', '1210', '398', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('20', '首页精品大厅广告位二', '1210', '398', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n');
INSERT INTO `ecs_ad_position` VALUES ('21', '首页精品大厅广告位三', '1210', '398', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('22', '顶级分类楼层左侧广告位', '210', '540', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('23', '顶级分类楼层右侧幻灯片广告位', '400', '400', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('24', '登录页广告位', '990', '475', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('25', '团购列表幻灯片广告位一', '750', '300', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('26', '团购列表幻灯片广告位二', '750', '300', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('27', '团购列表幻灯片广告位三', '750', '300', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('28', '团购列表幻灯片广告位四', '750', '300', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('29', '团购列表幻灯片广告位五', '750', '300', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('30', '团购列表幻灯片下广告位', '250', '162', '', '{foreach from=$ads item=ad}\r\n<li>{$ad}<i></i></li>\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('31', '团购列表幻灯片右侧广告位', '250', '154', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('32', '团购列表底部广告位', '990', '115', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('33', '团购详情右侧广告位', '280', '115', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('34', '团购详情底部广告位', '990', '115', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');

-- ----------------------------
-- Table structure for `ecs_affiliate_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_affiliate_log`;
CREATE TABLE `ecs_affiliate_log` (
  `log_id` mediumint(8) NOT NULL auto_increment,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) default NULL,
  `money` decimal(10,2) NOT NULL default '0.00',
  `point` int(10) NOT NULL default '0',
  `separate_type` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_affiliate_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_agency`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_agency`;
CREATE TABLE `ecs_agency` (
  `agency_id` smallint(5) unsigned NOT NULL auto_increment,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL,
  PRIMARY KEY  (`agency_id`),
  KEY `agency_name` (`agency_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_agency
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_area_region`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_area_region`;
CREATE TABLE `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL default '0',
  `region_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_area_region
-- ----------------------------
INSERT INTO `ecs_area_region` VALUES ('1', '1');
INSERT INTO `ecs_area_region` VALUES ('3', '1');
INSERT INTO `ecs_area_region` VALUES ('4', '3');
INSERT INTO `ecs_area_region` VALUES ('4', '4');
INSERT INTO `ecs_area_region` VALUES ('4', '6');
INSERT INTO `ecs_area_region` VALUES ('4', '9');
INSERT INTO `ecs_area_region` VALUES ('4', '30');
INSERT INTO `ecs_area_region` VALUES ('4', '32');
INSERT INTO `ecs_area_region` VALUES ('5', '1');

-- ----------------------------
-- Table structure for `ecs_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_article`;
CREATE TABLE `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL auto_increment,
  `cat_id` smallint(5) NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL default '',
  `author_email` varchar(60) NOT NULL default '',
  `keywords` varchar(255) NOT NULL default '',
  `article_type` tinyint(1) unsigned NOT NULL default '2',
  `is_open` tinyint(1) unsigned NOT NULL default '1',
  `add_time` int(10) unsigned NOT NULL default '0',
  `file_url` varchar(255) NOT NULL default '',
  `open_type` tinyint(1) unsigned NOT NULL default '0',
  `link` varchar(255) NOT NULL default '',
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_article
-- ----------------------------
INSERT INTO `ecs_article` VALUES ('1', '2', '免责条款', '', '', '', '', '0', '1', '1398244330', '', '0', '', null);
INSERT INTO `ecs_article` VALUES ('2', '2', '隐私保护', '', '', '', '', '0', '1', '1398244330', '', '0', '', null);
INSERT INTO `ecs_article` VALUES ('3', '2', '咨询热点', '', '', '', '', '0', '1', '1398244330', '', '0', '', null);
INSERT INTO `ecs_article` VALUES ('4', '2', '联系我们', '', '', '', '', '0', '1', '1398244330', '', '0', '', null);
INSERT INTO `ecs_article` VALUES ('5', '2', '公司简介', '', '', '', '', '0', '1', '1398244330', '', '0', '', null);
INSERT INTO `ecs_article` VALUES ('6', '-1', '用户协议', '', '', '', '', '0', '1', '1398244330', '', '0', '', null);
INSERT INTO `ecs_article` VALUES ('7', '4', '三星电子宣布将在中国发布15款3G手机', '<p>全球领先的电子产品及第二大移动通信终端制造商三星电子今天在北京宣布，为全面支持中国开展3G移动通信业务，将在3G服务正式商用之际，向中国市场推出 15款3G手机。这些产品分别支持中国三大无线运营商的各种3G服务，并已经得到运营商的合作认可。凭借在电子和通信领域的整体技术实力和对消费者的准确 把握，三星电子已经开始全面发力中国的3G移动通信市场。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;2009年1月，中国政府宣布正式启动3G移动通信服务。并根据中国的实际情况，决定由三大运营商分别采用全部三种3G网络制式，&nbsp;即以中国自主知识产权为核心的TD-SCDMA，以欧洲为主要市场的WCDMA和源自北美的CDMA2000技术。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;多 年来，三星电子秉承&ldquo;做中国人民喜爱的企业，贡献于中国社会的企业&rdquo;的企业理念，准确地把握了中国社会的发展和市场的需求，推出了一系列深受中国消费者喜 爱的电子产品。为了配合中国推进具有自主知识产权的3G移动通信标准TD-SCDMA，&nbsp;三星电子从2000年开始在中国设立了通信技术研究院，&nbsp;开始进 行TD-SCDMA技术的研究。作为最早承诺支持中国3G标准的手机制造企业，三星电子已经先后投入了上亿元的研究费用，&nbsp;组建了几百人的研发团队。推出 的TD-SCDMA制式的产品，不仅通过了各级权威部门的试验和检测，也经历了2008年北京奥运会的现场考验。此次为中国移动定制的TD-SCDMA手 机，包括了满足高端商务需求的双待产品B7702C，以及数字电视手机、多媒体手机和时尚手机。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;作为世界第二大手机制造企业，三 星电子已经在全球3G市场积累了多年的技术和市场经验。最新的统计表明，在完全采用WCDMA标准的欧洲，三星电子的市场份额已经排名第二。在为中国联通 准备的产品中，不仅包括能够支持HSDPA的高端多媒体手机S7520U，也涵盖了能够支持高速上网、在线电影、在线音乐等适合不同消费需求的各种产品。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;而 在主要采用CDMA2000技术的北美市场，三星电子也取得了市场份额的第一名。即将陆续上市的支持中国电信3G服务的EVDO产品，有高端商务手机 W709。该机能够支持EVDO/GSM的双网双待功能，含800万像素拍摄系统。其他产品还包括音乐手机M609，双模手机W239，以及时尚设计的 F539等。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;作为世界上少数能够提供支持三种3G标准的终端厂商，三星电子正利用其在通信、半导体、显示器以及数字多媒体等方面 的优势，加快产品数字融合的进程。除上述3G手机产品外，三星电子也于近期推出了用于3G网络的上网卡和网络笔记本电脑。三星电子专务、无线事业部大中华 区高级副总裁卢基学先生说，&ldquo;上述15款新品，&nbsp;只是我们二季度新产品的一部分。随着中国3G移动通信市场的不断扩大，三星还将推出更多适合中国市场的终 端产品，以满足消费者对于通信和数字产品的不同需求。三星也将积极配合运营商业务的发展计划，加快技术和应用的研发。中国3G的移动通信市场前景将是非常 明亮的。&rdquo;</p>', '', '', '', '0', '1', '1241426864', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('8', '4', '诺基亚牵手移动 5款热门TD手机机型推荐', '<table width=\"100%\" cellspacing=\"0\" cellpadding=\"4\" align=\"center\" class=\"tableborder\">\r\n<tbody>\r\n<tr>\r\n<td width=\"180\" valign=\"top\" class=\"altbg4\">&nbsp;</td>\r\n<td height=\"100%\" valign=\"top\" class=\"altbg3\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"padding: 5px; table-layout: fixed; width: 973px; height: 2195px;\">\r\n<tbody>\r\n<tr>\r\n<td valign=\"top\">\r\n<div class=\"bbs_content clearfix\">随着5月17日电信日的来临，自从09年初网民对于3G方面关注越来越多，目前国内3G网络主要有中国移动TD-SCDMA，中国联通WCDMA以及 中国电信的CDMA2000这三种制式。到底是哪一种网络制式能让消费者满意，相信好多消费者都难以判断。<br />\r\n<br />\r\n而作为3G网络最主要的组 成部分-手持终端（手机） ，相信也是好多消费者关注的焦点。目前，中国移动TD-SCDMA手机机型频频爆出，其中不乏亮点产品，像联想联想 Ophone、诺基亚、多普达 Magic等，下面就让笔者与大家一起来了解TD-SCDMA网络制式下的几款强势机型吧。<br />\r\n<br />\r\n诺基亚TD-SCDMA手机　型号：待定　参考报价：尚未上市<br />\r\n<br />\r\n随着国内3G网络发展速度加快及众多手机厂商纷纷跟进，诺基亚终于推出TD-SCDMA手机，这款诺基亚的首台TD-SCDMA测试手机型号目前仍无法 得知，但从键盘及菜单设计来看，我们可以是知道其并没有采用S60操作系统，只是配备了S40系统，机身直板造型与早期热卖的6300有几分相像。<br />\r\n<br />\r\n<p><img width=\"450\" alt=\"\" src=\"http://dstatic.esqimg.com/4812278/1.jpg\" style=\"display: block;\" /></p>\r\n<br />\r\n<br />\r\n图为：诺基亚TD-SCDMA手机<br />\r\n<br />\r\n虽然没有更多的参数资料，但是从曝光的图片我们可以知道这款诺基亚TD-SCDMA手机必定配备了QVGA分辨率的屏幕以及320万像素的摄像头，而标准的MP3以及蓝牙等功能自然不会缺少，在功能方面不会比以往的S40手机逊色。<br />\r\n<br />\r\n<p><img width=\"450\" alt=\"\" src=\"http://dstatic.esqimg.com/4812279/2.jpg\" style=\"display: block;\" /></p>\r\n<br />\r\n<br />\r\n图为：诺基亚TD-SCDMA手机<br />\r\n<br />\r\n这款诺基亚的TD手机最大的卖点便是提供了对TD-HSDPA技术的支持，最大的功能特色便是该技术被看为是TD网络下一步的演进技术，能够同时适用于 WCDMA和TD-SCDMA两种不同的网络支持，能够很好的支持非对称的数据业务，也就是说这款诺基亚手机的用户即便在全球漫游都能够使用到3G网络。 而其机身前置的摄像头也更是证实了其3G手机的身份。<br />\r\n<br />\r\n<p><img width=\"450\" alt=\"\" src=\"http://dstatic.esqimg.com/4812280/3.jpg\" style=\"display: block;\" /></p>\r\n<p><br />\r\n<br />\r\n图为：诺基亚TD-SCDMA手机<br />\r\n<br />\r\n从目前曝光的测试情况来看，通过这款诺基亚TD手机连接网络，其下载速度能够稳定在1.3Mbps左右，不过根据国内有些媒体的报道，诺基亚官方已经证实将于今天下半年配合运营商中国移动对出自己的第一款TD-SCDMA制式的S60手机，大家要拭目以待了。</p>\r\n<p>&nbsp;</p>\r\n图为：诺基亚TD-SCDMA手机<br />\r\n<br />\r\n最后较为耐人寻味的便是目前有业内人士指出目前曝光的的诺基亚TD手机其实是去年夏季就出现过的 TD测试手机，但是随着诺基亚拥有部分股份的TD芯片厂商&ldquo;凯明&rdquo;的倒闭，这款机型也就被取消了。尽管对于目前这款诺基亚的TD测试手机的身份尚无官方的 消息，但是诺基亚将推出TD手机遗失毫无悬念的事情了，相信大家也希望在TD制式下能够有更多的手机可以选择。</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', '', '', '', '0', '1', '1241427051', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('9', '5', '注册流程', '', '', '', '', '0', '1', '1242576700', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('10', '5', '申购流程', '', '', '', '', '0', '1', '1242576717', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('11', '5', '赎回注意事项', '', '', '', '', '0', '1', '1242576727', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('12', '6', '基金品类', '<p><font size=\"2\">一般在购买时主要是依靠观察外观特征的方法来鉴别电池，而原装电池一般应具有以下一些特征：&nbsp;<br />\n<br />\n1、 电池外观整齐，外表面有一定的粗糙度且手感舒适，内表面手感光滑，灯光下能看见细密的纵向划痕&nbsp;<br />\n<br />\n2、 生产厂家字样应该轮廓清晰，且防伪标志亮度高，看上去有立体感，电池标贴 字迹清晰，有与电池类型相一致的电池件号<br />\n3、 电池标贴采用二次印刷技术，在一定光线下从斜面看，条形码部分的颜色比其他部分要黑，且用手触摸有凹凸感<br />\n<br />\n4、 原装电池电极与手机电池片宽度相等，电池电极下方标有&ldquo; + &rdquo;、&ldquo; - &rdquo;标志，电池电极片之间的隔离材料与外壳材料一致，但不是一体<br />\n<br />\n5、 原装电池装入手机时手感舒适，安装自如，电池按压部分卡位适当而且牢固<br />\n<br />\n6、 原装电池的金属触点采用优质的铜片，只有在正面看时才会有反光，而从其它角度看的话，都是比较暗淡的</font></p>', '', '', '', '1', '1', '1242576826', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('15', '7', '支付方式', '', '', '', '', '0', '1', '1242577023', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('16', '7', '提现方式', '', '', '', '', '0', '1', '1242577032', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('17', '7', '支付注意事项', '', '', '', '', '0', '1', '1242577041', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('18', '10', '资金管理', '', '', '', '', '0', '1', '1242577127', '', '0', 'user.php?act=account_log', null);
INSERT INTO `ecs_article` VALUES ('19', '10', '我的收藏', '', '', '', '', '0', '1', '1242577178', '', '0', 'user.php?act=collection_list', null);
INSERT INTO `ecs_article` VALUES ('20', '10', '我的信息', '', '', '', '', '0', '1', '1242577199', '', '0', 'user.php?act=order_list', null);
INSERT INTO `ecs_article` VALUES ('21', '8', '资金保证', '', '', '', '服务', '0', '1', '1242577293', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('22', '8', '收益保证', '', '', '', '售后', '0', '1', '1242577308', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('23', '8', '协议保证', '', '', '', '质量', '1', '1', '1242577326', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('24', '9', '网站故障报告', '', '', '', '', '0', '1', '1242577432', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('25', '9', '选机咨询 ', '', '', '', '', '0', '1', '1242577448', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('26', '9', '投诉与建议 ', '', '', '', '', '0', '1', '1242577459', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('27', '4', '800万像素超强拍照机 LG Viewty Smart再曝光', '', '', '', '', '0', '1', '1242577702', '', '0', 'http://news.imobile.com.cn/index-a-view-id-66790.html', null);
INSERT INTO `ecs_article` VALUES ('28', '11', '飞利浦9@9促销', '<p>&nbsp;</p>\r\n<div class=\"boxCenterList RelaArticle\" id=\"com_v\">\r\n<p align=\"left\">作为一款性价比极高的入门级<font size=\"3\" color=\"#ff0000\"><strong>商务手机</strong></font>，飞利浦<a href=\"mailto:9@9v\">Xenium&nbsp; 9@9v</a>三围大小为105&times;44&times;15.8mm，机身重量仅为<strong><font size=\"3\" color=\"#ff0000\">75g</font></strong>，装配了一块低规格1.75英寸128&times;160像素65000色CSTN显示屏。身正面采用月银色功能键区与屏幕数字键区相分隔，键盘设计较为<font size=\"3\"><strong><font color=\"#ff0000\">别</font><font color=\"#ff0000\">致</font></strong></font>，中部导航键区采用钛金色的&ldquo;腰带&rdquo;彰显出浓郁的商务气息。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">此款手机采用<strong><font size=\"3\" color=\"#ff0000\">触摸屏</font></strong>设计，搭配精致的手写笔，可支持手写中文和英文两个版本。增强的内置系统还能识别潦草字迹，确保在移动中和匆忙时输入文字的识别率。手写指令功能还支持特定图案的瞬间调用，独特的手写记事本功能，可以在触摸屏上随意绘制个性化的图案并进行<strong><font size=\"3\" color=\"#ff0000\">记事提醒</font></strong>，让商务应用更加随意。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">&nbsp;作为入门级为数不多支持<strong><font size=\"3\" color=\"#ff0000\">双卡功能</font></strong>的手机，可以同时插入两张SIM卡，通过菜单随意切换，只需开启漫游自动切换模式，<a href=\"mailto:9@9V\">9@9V</a>在该模式下能够判断网络情况，自动切换适合的手机号。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>', '', '', '', '0', '1', '1242578199', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('29', '11', '诺基亚5320 促销', '<p>&nbsp;</p>\r\n<div id=\"com_v\" class=\"boxCenterList RelaArticle\">\r\n<p>诺基亚5320XpressMusic音乐手机采用XpressMusic系列常见的黑红、黑蓝配色方案，而材质方便则选用的是经过<strong><font size=\"3\" color=\"#ff0000\">抛光处理</font></strong>的工程塑料；三围/体重为，为108&times;46&times;15mm/<strong><font size=\"3\" color=\"#ff0000\">90g</font></strong>，手感舒适。</p>\r\n<p>&nbsp;</p>\r\n<p>诺基亚5320采用的是一块可视面积为2.0英寸的<font size=\"3\" color=\"#ff0000\"><strong>1600万色</strong></font>屏幕，分辨率是常见的240&times;320像素（QVGA）。虽然屏幕不是特别大，但效果非常精细，色彩还原不错。</p>\r\n<p>&nbsp;</p>\r\n<p>手机背面，诺基亚为5320XM配备一颗<strong><font size=\"3\" color=\"#ff0000\">200W像素</font></strong>的摄像头，并且带有<strong><font size=\"3\" color=\"#ff0000\">两个LED的补光灯</font></strong>，可以实现拍照、摄像功能，并能通过彩信、邮件方式发送给朋友。</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>', '', '', '', '1', '1', '1242578676', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('30', '11', '促销诺基亚N96', '<p>&nbsp;</p>\r\n<div class=\"boxCenterList RelaArticle\" id=\"com_v\">\r\n<p>诺基亚N96采用了<strong><font size=\"3\" color=\"#ff0000\">双向滑盖</font></strong>设计，机身整体呈灰黑色，沉稳、大气，机身材质采用了高强度的塑料材质，手机背面采用了抛光面板的设计风格。N96三维体积103*55*20mm，重量为125g。屏幕方面，诺基亚N96配备一块<strong><font size=\"3\" color=\"#ff0000\">2.8英寸</font></strong>的屏幕，支持<strong><font size=\"3\" color=\"#ff0000\">1670万色</font></strong>显示，分辨率达到QVGA（320&times;240）水准。</p>\r\n<p>&nbsp;<img src=\"http://img2.zol.com.cn/product/21/896/ceN6LBMCid3X6.jpg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>诺基亚N96设置有专门的<strong><font size=\"3\" color=\"#ff0000\">音乐播放键</font></strong>和标准的3.5毫米音频插口，支持多格式音乐播放。内置了<strong><font size=\"3\" color=\"#ff0000\">多媒体播放器</font></strong>，支持FM调频收音机等娱乐功能。N96手机支持<strong><font size=\"3\" color=\"#ff0000\">N-Gage游戏平台</font></strong>，内置包括<font size=\"3\" color=\"#ff0000\"><strong>《PinBall》完整版</strong></font>在内的四款N-Gage游戏，除了手机本身内置的游戏，还可以从N-Gage的网站下载或者购买最新的游戏，而且可以在论坛里和其他玩家一起讨论。</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;<img src=\"http://img2.zol.com.cn/product/21/898/cekkw57qJjSI.jpg\" alt=\"\" /></p>', '', '', '', '1', '1', '1242578826', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('13', '6', '基金类型 ', '<p>\n<div class=\"artibody\">\n<p><font size=\"2\"><strong>1、&nbsp;什么是水货？</strong><br />\n提及水货手机，按照行业内的说法，可以将水货手机分成三类：A类、B类和C类。 </font></p>\n<p><font size=\"2\">A类水货手机是指由国外、港澳台等地区在没有经过正常海关渠道的情况下进入国内市场的产品，就是我们常说的走私货， 与行货的主要差异是在输入法上，这类手机都是英文输入法或者是港澳台地区的繁体中文输入法。这类手机其最主要的目的是为了逃避国家关税或者因为该种产品曾 经过不正当改装而不能够通过正常渠道入关，质量一般没有大的问题。但由于逃避关税本身就是违法的，所以购买这类手机的用户根本得不到任何售后保障服务； </font></p>\n<p><font size=\"2\">B类水货手机就是走私者将手机的系统软件由英文版升级至中文版后，偷运到内地，然后贴上非法渠道购买的入网标志，作为行货手机充数。 </font></p>\n<p><font size=\"2\">C类水货手机则是那些由其他型号机改装、更换芯片等等方法做假&ldquo;生产&rdquo;出来的，或者就是从各地购买手机的部件，自己组装然后再贴上非法购买的入网标志。 </font></p>\n<p><font size=\"2\">水货手机虽然不排除它是原厂正货的可能，但通过市场调研发现，绝大多数水货手机都是改版的次货，而且产品基本没有受国内厂商的保修许可。</font></p>\n<p><font size=\"2\"><strong>2、水货有哪些？</strong>水货有两种，一种俗称港行，也称作水行，这种产品原本是在香港 及周边地区销售的，但是经过非法途径进入大陆地区销售。另一种是欧版水改机，也称作欧版，水改等，此种产品以英文改版机为主，通过刷改机内软件达到英文改 中文的目的，原来这类产品是销往欧美地区的，由于和大陆地区有相当大的价格差，所以通过走私进入中国市场。</font></p>\n<p><font size=\"2\"><strong>3、水货手机的危害</strong><br />\n1、售后服务无保障 <br />\n手机作为精密类电子产品，软件、硬件方面都有可能产生不同的问题。购买正规渠道的手机，一旦出现问题，只要将问题反映给厂商客户服务中心并静候佳音就 可以了。大多数走私手机的贩卖点规模较小，根本没有资金和技术能力建立起自己的维修网点，因此他们往往制定非常苛刻的保修条件，将国家明令的一年保修期缩 短为三个月，并加入完全对走私手机经销商有利的诸如&ldquo;认为摔打&rdquo;等概念难以界定的排除条件(众所周知，手机很有可能发生摔撞事件)，是确确实实的霸王条 款。规定时间内手机出了故障，走私手机经销商会通过曲解条款尽可能地开脱保修责任。即使他们愿意承担保修服务，也需将手机发往广州、深圳等地，委托他人维 修。一来路途漫长，二来经手人繁多，小问题&ldquo;修&rdquo;成了大问题。最终走私手机经销商会以无法维修为由劝客户自行去当地正规客服维修。至于维修费用，他们自然 也不愿意出了。<br />\n<br />\n2、产品本身质量不过关<br />\n&nbsp;&nbsp;&nbsp; 现在很多奸商为了谋取暴利，经常使用C类的翻修或者组装手机冒充A类水货手机进行销售。作为消费者来说面对和正规行货之间巨大的价格差异，他们无法分辨想要购买的手机是否象销售商说的那样质量过硬，在销售商的巧舌如簧下只能眼看自己的钱包&ldquo;减肥&rdquo;。 </font></p>\n<p><font size=\"2\">但是这类翻修或者组装的水货手机往往为了降低成本，其采用的配件往往也是不合格产品，甚至也是伪劣产品，可以想象由这样产品组装起来的手机的质量究竟可以好到那里去。目前在经常看到手机电池爆炸伤人的事件的报道，究其原因也是消费者购买了这些组装的水货手机。</font></p>\n<p><font size=\"2\">而且不光这类手机硬件存在问题，包括手机使用的软件。由于组装的水货硬件规格根本无法保证和原场产品一致，手机使用的软件也会造成和手机硬件的冲突。频繁死机就是家常便饭，更有甚者会造成经常性的电话本丢失，无法联系到好友。</font></p>\n<p><br />\n<font size=\"2\"><strong>4、如何分辨行、水货手机？</strong><br />\n1、看手机上是否贴有信息产业部&ldquo;进网许可&rdquo;标志。水货与正品的入网标志稍微有一点不同：真的入网标志一般都是针式打印机打印的，数字清晰，颜色较浅，仔细看有针打的凹痕；假的入网标志一般是普通喷墨打印机打印的，数字不很清晰，颜色较深，没有凹痕。 </font></p>\n<p><font size=\"2\">2、检查手机的配置，包括中文说明书、电池、充电器等，如果是厂家原配，一般均贴有厂家的激光防伪标志。原厂配置的 中文说明书通常印刷精美，并与其他语言的说明书及相关产品资料的印刷质量、格式、风格等保持一致。不是原厂家配置的中文说明书通常印刷质量低劣，常出现错 别字，甚至字迹模糊。正品手机的包装盒中均附带有原厂合格证、原厂条码卡、原厂保修卡，而水货则没有。 </font></p>\n<p><font size=\"2\">3、确认经销商的保修条例是否与厂家一致，在购买手机时应索要发票和保修卡。 </font></p>\n<p><font size=\"2\">4、电子串号是否一致也是验证是否水货手机的重要途径。首先在手机上按&ldquo;*#06#&rdquo;，一般会在手机上显示15个数 字，这就是本手机的IMEI码。然后打开手机的电池盖，在手机里有一张贴纸，上面也有一个IMEI码，这个码应该同手机上显示的IMEI码完全一致。然后 再检查手机的外包装盒上的贴纸，上面也应该有一个IMEI码，这个码也应该同手机上显示的IMEI码完全一致。如果此三个码有不一致的地方，这个手机就有 问题。</font></p>\n</div>\n<p>&nbsp;</p>\n</p>', '', '', '', '0', '1', '1242576911', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('14', '6', '基金风险', '', '', '', '', '0', '1', '1242576927', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('31', '12', '诺基亚6681手机广告欣赏', '<object>\n<param value=\"always\" name=\"allowScriptAccess\" />\n<param value=\"transparent\" name=\"wmode\" />\n<param value=\"http://6.cn/player.swf?flag=0&amp;vid=nZNyu3nGNWWYjmtPQDY9nQ\" name=\"movie\" /><embed width=\"480\" height=\"385\" src=\"http://6.cn/player.swf?flag=0&amp;vid=nZNyu3nGNWWYjmtPQDY9nQ\" allowscriptaccess=\"always\" wmode=\"transparent\" type=\"application/x-shockwave-flash\"></embed></object>', '', '', '', '0', '1', '1242579069', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('32', '12', '业内人士观点全社会流动性并不缺乏', '<p>三星SGHU308说明书下载，点击相关链接下载</p>', '', '', '', '1', '1', '1242579189', '', '0', 'http://soft.imobile.com.cn/index-a-list_softs-cid-1.html', '');
INSERT INTO `ecs_article` VALUES ('33', '12', '易方达力争超额收益', '<p>2012年9月28日，张胜记先生开始掌管易方达上证50。基金近1年累计收益87.65%，同期上证指数上涨80.58%，沪深300指数上涨80.14%。</p>\r\n<p>　　<strong>本基金在严格控制与目标指数偏离风险的前提下，力争获得超越指数的投资收益，追求长期资本增值。</strong>本基金的股票投资部分主要投资于标的指数的成分股票，包括上证50指数的成分股和预期将要被选入上证50指数的股票，还可适当投资一级市场申购的股票(包括新股与<span id=\"Info.39\"><a href=\"http://data.eastmoney.com/zrz/dxzf.html\" class=\"infokey \" target=\"_blank\">增发</a></span>)，以在不增加额外风险的前提下提高收益水平。指数增强型投资是追求投资风险、收益和成本最佳匹配的有效途径。将深入的基本面研究与数量化投资技术相结合可以弥补纯指数化投资的缺陷，在控制与目标指数偏离风险的前提下实现超越指数的收益。</p>\r\n<p>　　<strong>基金经理。</strong>张胜记：硕士研究生、硕士。于2005年3月加入<span id=\"Info.3206\"><a href=\"http://fund.eastmoney.com/company/company_50.html\" class=\"infokey \" target=\"_blank\">易方达基金</a></span>管理有限公司，曾任研究员、投资经理助理、基金经理助理。</p>', '', '', '', '1', '1', '1242579559', 'data/article/1245043292228851198.rar', '2', 'http://', '');
INSERT INTO `ecs_article` VALUES ('34', '12', '3G知识普及', '<p>\n<h2>3G知识普及</h2>\n<div class=\"t_msgfont\" id=\"postmessage_8792145\"><font color=\"black\">3G，全称为3rd Generation，中文含义就是指第三代数字通信。<br />\n</font><br />\n<font color=\"black\">　　1995年问世的第一代<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C4%A3%C4%E2\">模拟</span>制式<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CA%D6%BB%FA\">手机</span>（1G）只能进行<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D3%EF%D2%F4\">语音</span>通话；<br />\n</font><br />\n<font color=\"black\">　　1996到1997年出现的第二代GSM、TDMA等数字制式手机（2G）便增加了接收数据的功能，如接收电子邮件或网页；<br />\n</font><br />\n<font color=\"black\">　　3G不是2009年诞生的，它是上个世纪的产物，而早在2007年国外就已经产生4G了，而<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA\">中国</span>也于2008年成功开发出<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA\">中国</span>4G，其网络传输的速度可达到每秒钟2G，也就相当于下一部电影只要一秒钟。在上世纪90年末的日韩电影如《我的野蛮女友》中，女主角使用的可以让对方看见自己的视频<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%B5%E7%BB%B0\">电话</span>，就是属于3G技术的重要运用之一。日韩等国3G的运用是上世纪末期的事。而目前国外有些地区已经试运行3.5G甚至4G网络。<br />\n</font><br />\n<font color=\"black\">　 </font><font color=\"black\">（以下为误导）2009年问世的第三代（3G）与 前两代的主要区别是在传输声音和数据的速度上的提升，它能够在全球范围内更好地实现无缝漫游，并处理图像、音乐、视频流等多种媒体形式，提供包括网页浏 览、电话会议、电子商务等多种信息服务，同时也要考虑与已有第二代系统的良好兼容性。为了提供这种服务，无线网络必须能够支持不同的数据传输速度，也就是 说在室内、室外和行车的环境中能够分别支持至少2Mbps（兆比特／每秒）、384kbps（千比特／每秒）以及144kbps的传输速度。（此数值根据 网络环境会发生变化)。<br />\n</font><br />\n<font color=\"black\">　　3G标准，国际电信联盟(ITU)目前一共确定了全球四大3G标准，它们分别是WCDMA、CDMA2000和TD-SCDMA和WiMAX。</font><br />\n<br />\n<font color=\"black\">3G标准　　国际电信联盟（ITU）在2000年5月确定W-CDMA、CDMA2000、TD-SCDMA以 及WiMAX四大主流无线接口标准，写入3G技术指导性文件《2000年国际移动通讯计划》（简称IMT&mdash;2000）。 CDMA是Code Division Multiple Access (码分多址)的缩写，是第三代移动通信系统的技术基础。第一代移动通信系统采用频分多址(FDMA)的模拟调制方式，这种系统的主要缺点是频谱利用率低， 信令干扰话音业务。第二代移动通信系统主要采用时分多址(TDMA)的数字调制方式，提高了系统容量，并采用独立信道传送信令，使系统性能大大改善，但 TDMA的系统容量仍然有限，越区切换性能仍不完善。CDMA系统以其频率规划简单、系统容量大、频率复用系数高、抗多径能力强、通信质量好、软容量、软 切换等特点显示出巨大的发展潜力。下面分别介绍一下3G的几种标准：<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(1) W-CDMA</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　也称为WCDMA，全称为Wideband CDMA，也称为CDMA Direct Spread，意为宽频分码多重存取，这是基于GSM网发展出来的3G技术规范，是欧洲提出的宽带CDMA技术，它与日本提出的宽带CDMA技术基本相 同，目前正在进一步融合。W-CDMA的支持者主要是以GSM系统为主的欧洲厂商，日本公司也或多或少参与其中，包括欧美的爱立信、阿尔卡特、<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C5%B5%BB%F9%D1%C7\">诺基亚</span>、 朗讯、北电，以及日本的NTT、富士通、夏普等厂商。 该标准提出了GSM(2G)-GPRS-EDGE-WCDMA(3G)的演进策略。这套系统能够架设在现有的GSM网络上，对于系统提供商而言可以较轻易 地过渡，但是GSM系统相当普及的亚洲对这套新技术的接受度预料会相当高。因此W-CDMA具有先天的市场优势。<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(2)CDMA2000</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　CDMA2000是由窄带CDMA(CDMA IS95)技术发展而来的宽带CDMA技术，也称为CDMA Multi-Carrier，它是由美国高通北美公司为主导提出，<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C4%A6%CD%D0%C2%DE%C0%AD\">摩托罗拉</span>、Lucent 和后来加入的韩国三星都有参与，韩国现在成为该标准的主导者。这套系统是从窄频CDMAOne数字标准衍生出来的，可以从原有的CDMAOne结构直接升 级到3G，建设成本低廉。但目前使用CDMA的地区只有日、韩和北美，所以CDMA2000的支持者不如W-CDMA多。不过CDMA2000的研发技术 却是目前各标准中进度最快的，许多3G手机已经率先面世。该标准提出了从CDMA IS95(2G)-CDMA20001x-CDMA20003x(3G)的演进策略。CDMA20001x被称为2.5代移动通信技术。 CDMA20003x与CDMA20001x的主要区别在于应用了多路载波技术，通过采用三载波使带宽提高。目前<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA%B5%E7%D0%C5\">中国电信</span>正在采用这一方案向3G过渡，并已建成了CDMA IS95网络。<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(3)TD-SCDMA</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　全称为Time Division - Synchronous CDMA(时分<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CD%AC%B2%BD\">同步</span>CDMA)，该标准是由中国大陆独自制定的3G标准，1999年6月29日，中国原邮电部电信科学技术研究院（大唐电信）向ITU提出。该标准将智能无线、<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CD%AC%B2%BD\">同步</span>CDMA和<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C8%ED%BC%FE\">软件</span>无 线电等当今国际领先技术融于其中，在频谱利用率、对业务支持具有灵活性、频率灵活性及成本等方面的独特优势。另外，由于中国内的庞大的市场，该标准受到各 大主要电信设备厂商的重视，全球一半以上的设备厂商都宣布可以支持TD&mdash;SCDMA标准。 该标准提出不经过2.5代的中间环节，直接向3G过渡，非常适用于GSM系统向3G升级。<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(4)WiMAX</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　WiMAX 的全名是微波存取全球互通(Worldwide Interoperability for Microwave Access)，又称为802&middot;16无线城域网，是又一种为企业和家庭用户提供&ldquo;最后一英里&rdquo;的宽带无线连接方案。将此技术与需要授权或免授权的微波设备 相结合之后，由于成本较低，将扩大宽带无线市场，改善企业与服务供应商的认知度。2007年10月19日，国际电信联盟在日内瓦举行的无线通信全体会议 上，经过多数国家投票通过，WiMAX正式被批准成为继WCDMA、CDMA2000和TD-SCDMA之后的第四个全球3G标准。</font></div>\n</p>', '', '', '', '0', '1', '1242580013', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('35', '4', '“沃”的世界我做主', '<p><strong>导语：<br />\n<br />\n</strong>&nbsp;&nbsp;&nbsp;&nbsp;今年5月17日，是每年一度的世界电信日。同时，也是值得中国人民高兴的日子。昨天，中国联通企业品牌下的全品牌业务&ldquo;沃&rdquo;开始试商用，这也就意味着继中国移动、中国电信之后，国内第三种3G网络将要走入我们的生活，为我们带来更加快速便捷的通信服务。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;沃，意味着此品牌将为用户提供一个丰盈的平台，为个人客户、家庭客户、集团客户和企业服务提供全面的支撑，它代表着中国联通全新的服务理念和创新的品牌精神，在3G时代，为客户提供精彩的信息化服务。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;下面小编为各位介绍几款各大手机品牌专为&ldquo;沃&rdquo;打造的定制机型，为您迎接&ldquo;沃&rdquo;的到来做好充分准备。</p>\n<p><strong>诺基亚6210si<br />\n<br />\n</strong>&nbsp;&nbsp;&nbsp;&nbsp;诺基亚6210s大家肯定不陌生，经典的滑盖导航手机。其实6210si 与6210s外观、参数、硬件配置几乎完全一样，只不过在6210s的基础上，增加了对WCDMA网络的支持，成为中国联通定制手机。6210si采用诺 基亚经典的滑盖机身设计，机身面板为钢琴烤漆材质，高贵优雅。机身背板则为磨砂外观工程塑料材质，美观的同时增加了手机与手掌间的摩擦系数，防止使用中手 机滑落。</p>\n<p><strong>摩托罗拉A3100<br />\n</strong><br />\n&nbsp;&nbsp;&nbsp;&nbsp;作为摩托罗拉旗下为中国联通定制的A3100，它有着经典的鹅卵石造型， 大气稳重。从最初的U6，到U9再到A3100，鹅卵石的辉煌依旧。A3100有着高贵的血统，钢琴烤漆黑色面板，金属拉丝机身以及 Windows&nbsp;Mobile&nbsp;6.1&nbsp;Professional操作系统，都告诉我们它绝对是一部不可多得的好手机。</p>\n<p><br />\n<strong>三星S7520U<br />\n</strong><br />\n&nbsp;&nbsp;&nbsp;&nbsp;三星S7520U外观造型时尚，镜面设计以及超薄的 98.4&times;55&times;11.6mm金属机身，更适合女性朋友使用。通观机身，最显眼的就要数这3.0英寸的超大触摸屏幕了，400x240的WQGVA级别分 辨率，能够比QVGA级别屏幕显示更为细腻，细节表现力更强。500万像素摄像头说明了该机还是一名拍照能手，捕捉精彩瞬间不在话下。</p>', '', '', '', '0', '0', '1242974613', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('36', '12', '母婴4周年最高200减100', '', '', '', '', '0', '1', '1406074910', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('37', '12', '充话费抢美菱对开门冰箱', '', '', '', '', '0', '1', '1406074918', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('38', '12', '京东大篷车百城行', '', '', '', '', '0', '1', '1406074925', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('39', '12', '七夕表白珠宝专场', '', '', '', '', '0', '1', '1406074932', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('40', '12', '出游装备1-5折还满减', '', '', '', '', '0', '1', '1406074938', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('41', '12', '小家电专场满500减100', '', '', '', '', '0', '1', '1406074946', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('42', '12', '市场下跌 基金公司坚定信心看好后市', '<p>&nbsp;九泰基金总裁王学明向《第一财经日报》记者独家表态，九泰基金坚决拥护央行和证监会关于稳定市场的声明，在维护蓝筹稳定同时，加大对中小市值股票购买力度。</p>\r\n<p>　　&ldquo;今日央行发表声明将多渠道支持证金公司维护市场稳定，并守住不发生系统性、区域性金融风险的底线；同时证监会称证金公司将在维护蓝筹股稳定 的同时，加大对中小市值股票的购买力度。&rdquo;王学明表示，九泰愿全方位配合证监会的救市措施，向市场传递正面、积极信号，努力维持市场良性交易氛围、遏制市 场恐慌波动。</p>\r\n<p>　　&ldquo;在当前市场困难时期，九泰基金全体同仁众志成城，共克时艰，相信政府有能力维护金融市场稳定，保持金融市场健康发展。&rdquo;王学明说。</p>', '', '', '', '0', '1', '1406074952', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('43', '12', '市场将逐渐趋于稳定', '<p>&nbsp;证监会关于证金公司将加大对中小市值股票的购买力度和央行将为证金公司提供充足流动性支持两举措是今日出现的两个关键性动作，真正切中了要害。我们相信， 这些措施通过向证金公司提供充足的流动性保障，抓住影响市场情绪的核心方向，对阻止市场非理性下跌、切断投资者恐慌情绪的进一步蔓延、避免证券市场风险向 金融市场体系甚至实体经济传染有决定性作用。我们同时也相信，近期出台的一系列力度不断增强、方向正确的组合拳将很快使市场逐渐趋于稳定，抚平投资者创 伤、彻底扭转市场预期、增强投资者对中国证券市场的信心，使中国证券市场继续沿着稳健、健康的轨道运行，促进中国经济的健康发展。</p>', '', '', '', '0', '1', '1406074958', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('44', '11', '科龙空调发红包，快抢！', '', '', '', '', '0', '1', '1408040206', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('45', '11', '秒抢299元双缸洗衣机，8.15钜惠', '', '', '', '', '0', '1', '1408040214', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('46', '11', '美的首发送豪礼，等您抢！', '', '', '', '', '0', '1', '1408040228', '', '0', 'http://', '');

-- ----------------------------
-- Table structure for `ecs_article_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_article_cat`;
CREATE TABLE `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL auto_increment,
  `cat_name` varchar(255) NOT NULL default '',
  `cat_type` tinyint(1) unsigned NOT NULL default '1',
  `keywords` varchar(255) NOT NULL default '',
  `cat_desc` varchar(255) NOT NULL default '',
  `sort_order` tinyint(3) unsigned NOT NULL default '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL default '0',
  `parent_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_article_cat
-- ----------------------------
INSERT INTO `ecs_article_cat` VALUES ('1', '系统分类', '2', '', '系统保留分类', '50', '0', '0');
INSERT INTO `ecs_article_cat` VALUES ('2', '网店信息', '3', '', '网店信息分类', '50', '0', '1');
INSERT INTO `ecs_article_cat` VALUES ('3', '网店帮助分类', '4', '', '网店帮助分类', '50', '0', '1');
INSERT INTO `ecs_article_cat` VALUES ('4', '3G资讯', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` VALUES ('5', '新手上路 ', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('6', '基金常识 ', '5', '', '手机常识 ', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('7', '支付功能', '5', '', '配送与支付 ', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('8', '服务保证 ', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('9', '联系我们 ', '5', '', '联系我们 ', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('10', '会员中心', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('11', '促销活动', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` VALUES ('12', '站内快讯', '1', '', '', '50', '0', '0');

-- ----------------------------
-- Table structure for `ecs_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_attribute`;
CREATE TABLE `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL auto_increment,
  `cat_id` smallint(5) unsigned NOT NULL default '0',
  `attr_name` varchar(60) NOT NULL default '',
  `attr_input_type` tinyint(1) unsigned NOT NULL default '1',
  `attr_type` tinyint(1) unsigned NOT NULL default '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL default '0',
  `sort_order` tinyint(3) unsigned NOT NULL default '0',
  `is_linked` tinyint(1) unsigned NOT NULL default '0',
  `attr_group` tinyint(1) unsigned NOT NULL default '0',
  `is_show_img` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_attribute
-- ----------------------------
INSERT INTO `ecs_attribute` VALUES ('1', '1', '商品匹数', '0', '0', '', '0', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('2', '1', '产品特色', '0', '2', '', '0', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('3', '2', '尺寸', '0', '1', '', '0', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('4', '2', '功能', '0', '1', '', '0', '0', '1', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('5', '2', '分辨率', '0', '0', '', '0', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('6', '2', '品类', '0', '0', '', '0', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('7', '2', '居室场景', '0', '0', '', '0', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('8', '2', '可选颜色', '0', '1', '', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for `ecs_auction_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_auction_log`;
CREATE TABLE `ecs_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `act_id` mediumint(8) unsigned NOT NULL,
  `bid_user` mediumint(8) unsigned NOT NULL,
  `bid_price` decimal(10,2) unsigned NOT NULL,
  `bid_time` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`log_id`),
  KEY `act_id` (`act_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_auction_log
-- ----------------------------
INSERT INTO `ecs_auction_log` VALUES ('1', '4', '1', '170.00', '1242144083');

-- ----------------------------
-- Table structure for `ecs_auto_manage`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_auto_manage`;
CREATE TABLE `ecs_auto_manage` (
  `item_id` mediumint(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY  (`item_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_auto_manage
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_back_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_back_goods`;
CREATE TABLE `ecs_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `back_id` mediumint(8) unsigned default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `product_id` mediumint(8) unsigned NOT NULL default '0',
  `product_sn` varchar(60) default NULL,
  `goods_name` varchar(120) default NULL,
  `brand_name` varchar(60) default NULL,
  `goods_sn` varchar(60) default NULL,
  `is_real` tinyint(1) unsigned default '0',
  `send_number` smallint(5) unsigned default '0',
  `goods_attr` text,
  PRIMARY KEY  (`rec_id`),
  KEY `back_id` (`back_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_back_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_back_order`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_back_order`;
CREATE TABLE `ecs_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL auto_increment,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `invoice_no` varchar(50) default NULL,
  `add_time` int(10) unsigned default '0',
  `shipping_id` tinyint(3) unsigned default '0',
  `shipping_name` varchar(120) default NULL,
  `user_id` mediumint(8) unsigned default '0',
  `action_user` varchar(30) default NULL,
  `consignee` varchar(60) default NULL,
  `address` varchar(250) default NULL,
  `country` smallint(5) unsigned default '0',
  `province` smallint(5) unsigned default '0',
  `city` smallint(5) unsigned default '0',
  `district` smallint(5) unsigned default '0',
  `sign_building` varchar(120) default NULL,
  `email` varchar(60) default NULL,
  `zipcode` varchar(60) default NULL,
  `tel` varchar(60) default NULL,
  `mobile` varchar(60) default NULL,
  `best_time` varchar(120) default NULL,
  `postscript` varchar(255) default NULL,
  `how_oos` varchar(120) default NULL,
  `insure_fee` decimal(10,2) unsigned default '0.00',
  `shipping_fee` decimal(10,2) unsigned default '0.00',
  `update_time` int(10) unsigned default '0',
  `suppliers_id` smallint(5) default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `return_time` int(10) unsigned default '0',
  `agency_id` smallint(5) unsigned default '0',
  PRIMARY KEY  (`back_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_back_order
-- ----------------------------
INSERT INTO `ecs_back_order` VALUES ('1', '20090615054961769', '2009061585887', '15', '2009061585884', '1245044533', '3', '', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245044964', '2', '0', '1245045515', '0');
INSERT INTO `ecs_back_order` VALUES ('2', '20090615055104671', '2009061585887', '15', '20090615', '1245044533', '3', '', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245045061', '1', '0', '1245045515', '0');
INSERT INTO `ecs_back_order` VALUES ('3', '20090615055780744', '2009061585887', '15', '123232', '1245044533', '3', '', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245045443', '0', '0', '1245045515', '0');
INSERT INTO `ecs_back_order` VALUES ('4', '20090615064331475', '2009061503335', '17', '00906150333512', '1245047978', '3', '', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245048189', '0', '0', '1245048212', '0');

-- ----------------------------
-- Table structure for `ecs_bonus_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_bonus_type`;
CREATE TABLE `ecs_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL auto_increment,
  `type_name` varchar(60) NOT NULL default '',
  `type_money` decimal(10,2) NOT NULL default '0.00',
  `send_type` tinyint(3) unsigned NOT NULL default '0',
  `min_amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `send_start_date` int(11) NOT NULL default '0',
  `send_end_date` int(11) NOT NULL default '0',
  `use_start_date` int(11) NOT NULL default '0',
  `use_end_date` int(11) NOT NULL default '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY  (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_bonus_type
-- ----------------------------
INSERT INTO `ecs_bonus_type` VALUES ('1', '用户红包', '2.00', '0', '0.00', '0.00', '1242057600', '1244736000', '1242057600', '1250006400', '500.00');
INSERT INTO `ecs_bonus_type` VALUES ('2', '商品红包', '10.00', '1', '0.00', '0.00', '1241971200', '1250352000', '1242057600', '1250006400', '500.00');
INSERT INTO `ecs_bonus_type` VALUES ('3', '订单红包', '20.00', '2', '1500.00', '0.00', '1242057600', '1309363200', '1242057600', '1257955200', '800.00');
INSERT INTO `ecs_bonus_type` VALUES ('4', '线下红包', '5.00', '3', '0.00', '0.00', '1242057600', '1244736000', '1242057600', '1255449600', '360.00');

-- ----------------------------
-- Table structure for `ecs_booking_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_booking_goods`;
CREATE TABLE `ecs_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `email` varchar(60) NOT NULL default '',
  `link_man` varchar(60) NOT NULL default '',
  `tel` varchar(60) NOT NULL default '',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_desc` varchar(255) NOT NULL default '',
  `goods_number` smallint(5) unsigned NOT NULL default '0',
  `booking_time` int(10) unsigned NOT NULL default '0',
  `is_dispose` tinyint(1) unsigned NOT NULL default '0',
  `dispose_user` varchar(30) NOT NULL default '',
  `dispose_time` int(10) unsigned NOT NULL default '0',
  `dispose_note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_booking_goods
-- ----------------------------
INSERT INTO `ecs_booking_goods` VALUES ('1', '1', 'ecshop@ecshop.com', '刘先生', '13986765412', '19', '可以补货吗？\n我想要一个', '1', '1242142762', '0', '', '0', '');
INSERT INTO `ecs_booking_goods` VALUES ('2', '3', 'text@ecshop.com', '叶先生', '13588104710', '17', '什么时候有货', '1', '1242143592', '0', '', '0', '');

-- ----------------------------
-- Table structure for `ecs_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_brand`;
CREATE TABLE `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL auto_increment,
  `brand_name` varchar(60) NOT NULL default '',
  `brand_logo` varchar(80) NOT NULL default '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL default '',
  `sort_order` tinyint(3) unsigned NOT NULL default '50',
  `is_show` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_brand
-- ----------------------------
INSERT INTO `ecs_brand` VALUES ('1', '创维', '1408388661280162950.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('2', '统帅', '1408388666819567839.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('3', '志高', '1408388672554358389.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('4', '科龙', '1408388684265799995.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('5', '海尔', '1408388690499800497.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('6', '海信', '1408388695099889406.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('7', '赛忆', '1408388701900679009.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('8', '美的', '1408388707352962838.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('9', '飞利浦', '1408388712994021778.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('10', 'GESS', '1408388718360024044.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('11', '雷瓦', '1408388724151793747.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('12', '松下', '1408388731946030201.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('13', '力博得', '1408388737190527333.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('14', '华盛昌', '1408388743502127596.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('15', '香山', '1408388750931256592.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('16', '惠人', '1408388757754426015.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('17', '利仁', '1408388764380000521.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('18', '德龙', '1408388769268713985.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('19', '雷士照明', '1408388776466056113.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('20', '佳德', '1408388781280380119.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('21', '华帝', '1408388787219162737.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('22', '博深', '1408388792532331469.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('23', '史丹利', '1408388798539179139.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('24', '宝工', '1408388804300088359.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('25', '九阳', '1408388809703051734.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('26', 'Coway', '1408388816346280508.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('27', '德尔玛', '1408388822765587489.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('28', '艾美特', '1408388827131597608.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('29', '春花', '1408388834144170833.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('30', '科沃斯', '1408388841053871044.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('31', '美菱', '1408388850881493453.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('32', '海燕', '1408388856645179024.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('33', '联想', '1408388860169094248.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('34', '雷神', '1408388867536060524.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('35', '宏碁', '1408388873290611085.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('36', '微软', '1408388884893878072.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('37', '机械革命', '1408388892253249002.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('38', '华硕', '1408388897063788352.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('39', '惠普', '1408388904367521114.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('40', '刊菲', '1408388912842195129.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('41', 'HARMARYCIAGA', '1408388917023098895.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('42', '俏妮妃', '1408388927970168396.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('43', '琼瑛', '1408388934924405061.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('44', '时竟', '1408388941128040572.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('45', '誉彩', '1408388948874779333.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('46', '莱雪曼', '1408388959674000474.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('47', '洗颜专科', '1408388968061368049.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('48', '富安娜家纺', '1408388977236154439.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('49', '巧布万棉家纺', '1408388984062114039.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('50', '九洲鹿', '1408388992835276757.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('51', '爱斯基摩人', '1408389003705467870.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('52', '么小毛家纺', '1408389011381507906.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('53', '雅培', '1408389020467816163.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('54', '美素力', '1408389028549234249.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('55', '美赞臣', '1408389036032699536.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('56', '雀巢', '1408389045513441324.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('57', '可瑞康', '1408389052474444489.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('58', '惠氏', '1408389066427584551.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('59', '纽诺迪克', '1408389072317069867.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('60', '太太', '1408389079817514576.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('61', '养生堂', '1408389088273428177.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('62', '健安喜', '1408389094494256102.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('63', '东阿阿胶', '1408389099241315294.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('64', '康宝', '1408389123539332672.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('65', '康佳', '1408389129807210291.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('66', '维诺夫卡', '1408389135311019767.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('67', '奔腾', '1408389143148210575.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('68', '飞科', '1408389150819938429.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('69', '博世', '1408389156477230125.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('70', '老A', '1408389162960941945.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('71', '山崎', '1408389168988509340.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('72', '索尼', '', '', '', '50', '1');
INSERT INTO `ecs_brand` VALUES ('73', '海尔电脑', '1408400371994766756.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('74', '清华同方', '1408400377137441291.gif', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('75', '美旅', '1408400628618339077.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('76', 'ELLE', '1408400611316891423.jpg', '', 'http://', '50', '1');

-- ----------------------------
-- Table structure for `ecs_card`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_card`;
CREATE TABLE `ecs_card` (
  `card_id` tinyint(3) unsigned NOT NULL auto_increment,
  `card_name` varchar(120) NOT NULL default '',
  `card_img` varchar(255) NOT NULL default '',
  `card_fee` decimal(6,2) unsigned NOT NULL default '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL default '0.00',
  `card_desc` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`card_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_card
-- ----------------------------
INSERT INTO `ecs_card` VALUES ('2', '高档贺卡', '1429225855031307992.jpg', '5.00', '500.00', '');
INSERT INTO `ecs_card` VALUES ('3', '精品贺卡', '1429225872833816981.jpg', '10.00', '600.00', '');

-- ----------------------------
-- Table structure for `ecs_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cart`;
CREATE TABLE `ecs_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `session_id` char(32) character set utf8 collate utf8_bin NOT NULL default '',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_sn` varchar(60) NOT NULL default '',
  `product_id` mediumint(8) unsigned NOT NULL default '0',
  `group_id` varchar(255) NOT NULL,
  `goods_name` varchar(120) NOT NULL default '',
  `market_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `goods_price` decimal(10,2) NOT NULL default '0.00',
  `goods_number` smallint(5) unsigned NOT NULL default '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL default '0',
  `extension_code` varchar(30) NOT NULL default '',
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `rec_type` tinyint(1) unsigned NOT NULL default '0',
  `is_gift` smallint(5) unsigned NOT NULL default '0',
  `is_shipping` tinyint(1) unsigned NOT NULL default '0',
  `can_handsel` tinyint(3) unsigned NOT NULL default '0',
  `goods_attr_id` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=335 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_cart
-- ----------------------------
INSERT INTO `ecs_cart` VALUES ('334', '15', 'd5b06bf866407036bb9908729faff97b', '151', 'ECS000151', '0', '', '工银瑞信金融地产行业股票型证券投资基金', '0.00', '0.00', '1', '', '1', '', '0', '0', '0', '0', '0', '');
INSERT INTO `ecs_cart` VALUES ('333', '15', 'd5b06bf866407036bb9908729faff97b', '141', 'ECS000141', '0', '', '海尔（Haier） S400 14英寸游戏本（i7-4500U 4G 500G HD4400+GT745M 2G独显）黑色', '5398.80', '0.00', '23', '', '1', '', '0', '0', '0', '0', '0', '');

-- ----------------------------
-- Table structure for `ecs_cart_combo`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cart_combo`;
CREATE TABLE `ecs_cart_combo` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `session_id` char(32) character set utf8 collate utf8_bin NOT NULL default '',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_sn` varchar(60) NOT NULL default '',
  `product_id` mediumint(8) unsigned NOT NULL default '0',
  `group_id` varchar(255) NOT NULL,
  `goods_name` varchar(120) NOT NULL default '',
  `market_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `goods_price` decimal(10,2) NOT NULL default '0.00',
  `goods_number` smallint(5) unsigned NOT NULL default '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL default '0',
  `extension_code` varchar(30) NOT NULL default '',
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `rec_type` tinyint(1) unsigned NOT NULL default '0',
  `is_gift` smallint(5) unsigned NOT NULL default '0',
  `is_shipping` tinyint(1) unsigned NOT NULL default '0',
  `can_handsel` tinyint(3) unsigned NOT NULL default '0',
  `goods_attr_id` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_cart_combo
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_category`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_category`;
CREATE TABLE `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL auto_increment,
  `cat_name` varchar(90) NOT NULL default '',
  `keywords` varchar(255) NOT NULL default '',
  `cat_desc` varchar(255) NOT NULL default '',
  `parent_id` smallint(5) unsigned NOT NULL default '0',
  `sort_order` tinyint(1) unsigned NOT NULL default '50',
  `template_file` varchar(50) NOT NULL default '',
  `measure_unit` varchar(15) NOT NULL default '',
  `show_in_nav` tinyint(1) NOT NULL default '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL default '1',
  `grade` tinyint(4) NOT NULL default '0',
  `filter_attr` varchar(255) NOT NULL default '0',
  `is_top_style` tinyint(1) unsigned NOT NULL default '0',
  `is_on_top` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1009 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_category
-- ----------------------------
INSERT INTO `ecs_category` VALUES ('998', '基金', '', '', '0', '50', '', '', '0', '', '1', '0', '', '0', '0');
INSERT INTO `ecs_category` VALUES ('999', '股票型基金', '', '', '998', '50', '', '', '0', '', '1', '0', '', '0', '0');
INSERT INTO `ecs_category` VALUES ('1006', '货币型基金', '', '', '998', '50', '', '', '0', '', '1', '0', '', '0', '0');
INSERT INTO `ecs_category` VALUES ('1007', '混合型基金', '', '', '998', '50', '', '', '0', '', '1', '0', '', '0', '0');
INSERT INTO `ecs_category` VALUES ('1005', '债券型基金', '', '', '998', '50', '', '', '0', '', '1', '0', '', '0', '0');
INSERT INTO `ecs_category` VALUES ('1004', '理财型基金', '', '', '998', '50', '', '', '0', '', '1', '0', '', '0', '0');
INSERT INTO `ecs_category` VALUES ('1008', '指数型基金', '', '', '998', '50', '', '', '0', '', '1', '0', '', '0', '0');

-- ----------------------------
-- Table structure for `ecs_cat_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cat_recommend`;
CREATE TABLE `ecs_cat_recommend` (
  `cat_id` smallint(5) NOT NULL,
  `recommend_type` tinyint(1) NOT NULL,
  PRIMARY KEY  (`cat_id`,`recommend_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_cat_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_collect_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_collect_goods`;
CREATE TABLE `ecs_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `add_time` int(11) unsigned NOT NULL default '0',
  `is_attention` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_collect_goods
-- ----------------------------
INSERT INTO `ecs_collect_goods` VALUES ('1', '6', '6', '1403127360', '0');
INSERT INTO `ecs_collect_goods` VALUES ('2', '12', '2', '1429751920', '0');
INSERT INTO `ecs_collect_goods` VALUES ('3', '12', '7', '1430183943', '0');
INSERT INTO `ecs_collect_goods` VALUES ('4', '14', '106', '1435186473', '0');

-- ----------------------------
-- Table structure for `ecs_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_comment`;
CREATE TABLE `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL auto_increment,
  `comment_type` tinyint(3) unsigned NOT NULL default '0',
  `id_value` mediumint(8) unsigned NOT NULL default '0',
  `email` varchar(60) NOT NULL default '',
  `user_name` varchar(60) NOT NULL default '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL default '0',
  `add_time` int(10) unsigned NOT NULL default '0',
  `ip_address` varchar(15) NOT NULL default '',
  `status` tinyint(3) unsigned NOT NULL default '0',
  `parent_id` int(10) unsigned NOT NULL default '0',
  `user_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_comment
-- ----------------------------
INSERT INTO `ecs_comment` VALUES ('21', '0', '149', '13121524680@163.com', '注册', '这个基金什么的，不错噢', '5', '1436316587', '127.0.0.1', '1', '0', '15');
INSERT INTO `ecs_comment` VALUES ('22', '0', '149', '13121524680@163.com', '注册', '南来的北往的，过来瞧一瞧看一看了啊。', '5', '1436316638', '127.0.0.1', '1', '0', '15');
INSERT INTO `ecs_comment` VALUES ('23', '0', '149', '13121524680@163.com', '注册', '南来的北往的，过来瞧一瞧看一看了啊。', '5', '1436316657', '127.0.0.1', '1', '0', '15');
INSERT INTO `ecs_comment` VALUES ('24', '0', '150', '13121524680@163.com', '注册', '为什么梦见的总是你基金天天红', '5', '1436316748', '127.0.0.1', '1', '0', '15');
INSERT INTO `ecs_comment` VALUES ('25', '0', '150', '13121524680@163.com', '注册', '这就是传说中的神基金吗？狂赚', '5', '1436316789', '127.0.0.1', '1', '0', '15');

-- ----------------------------
-- Table structure for `ecs_crons`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_crons`;
CREATE TABLE `ecs_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL auto_increment,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL default '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL default '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL default '1',
  `run_once` tinyint(1) NOT NULL default '0',
  `allow_ip` varchar(100) NOT NULL default '',
  `alow_files` varchar(255) NOT NULL,
  PRIMARY KEY  (`cron_id`),
  KEY `nextime` (`nextime`),
  KEY `enable` (`enable`),
  KEY `cron_code` (`cron_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_crons
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_delivery_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_delivery_goods`;
CREATE TABLE `ecs_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `delivery_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `product_id` mediumint(8) unsigned default '0',
  `product_sn` varchar(60) default NULL,
  `goods_name` varchar(120) default NULL,
  `brand_name` varchar(60) default NULL,
  `goods_sn` varchar(60) default NULL,
  `is_real` tinyint(1) unsigned default '0',
  `extension_code` varchar(30) default NULL,
  `parent_id` mediumint(8) unsigned default '0',
  `send_number` smallint(5) unsigned default '0',
  `goods_attr` text,
  PRIMARY KEY  (`rec_id`),
  KEY `delivery_id` (`delivery_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_delivery_goods
-- ----------------------------
INSERT INTO `ecs_delivery_goods` VALUES ('1', '1', '13', '0', null, '诺基亚5320 XpressMusic', '诺基亚', 'ECS000013', '1', '', '0', '3', null);
INSERT INTO `ecs_delivery_goods` VALUES ('2', '1', '14', '0', null, '诺基亚5800XM', '诺基亚', 'ECS000014', '1', '', '0', '1', null);
INSERT INTO `ecs_delivery_goods` VALUES ('3', '2', '24', '0', null, 'P806', '联想', 'ECS000024', '1', '', '0', '3', null);
INSERT INTO `ecs_delivery_goods` VALUES ('4', '2', '9', '0', null, '诺基亚E66', '诺基亚', 'ECS000009', '1', '', '0', '1', null);
INSERT INTO `ecs_delivery_goods` VALUES ('5', '3', '24', '0', null, 'P806', '联想', 'ECS000024', '1', '', '0', '1', null);
INSERT INTO `ecs_delivery_goods` VALUES ('6', '3', '8', '0', null, '飞利浦9@9v', '飞利浦', 'ECS000008', '1', '', '0', '3', null);
INSERT INTO `ecs_delivery_goods` VALUES ('7', '4', '12', '0', null, '摩托罗拉A810', '摩托罗拉', 'ECS000012', '1', '', '0', '2', null);
INSERT INTO `ecs_delivery_goods` VALUES ('8', '5', '24', '0', null, 'P806', '联想', 'ECS000024', '1', '', '0', '1', null);
INSERT INTO `ecs_delivery_goods` VALUES ('9', '6', '6', '20', 'ECS000006g_p20', '全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '', 'ECS000006', '1', null, '0', '1', '颜色:红黑格子[10] \n尺码:M \n');
INSERT INTO `ecs_delivery_goods` VALUES ('10', '7', '6', '20', 'ECS000006g_p20', '全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '', 'ECS000006', '1', null, '0', '3', '颜色:红黑格子[10] \n尺码:M \n');
INSERT INTO `ecs_delivery_goods` VALUES ('11', '8', '6', '0', '', '全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '', 'ECS000006', '1', null, '0', '14', '颜色:红黑格子 \n尺码:M \n');
INSERT INTO `ecs_delivery_goods` VALUES ('12', '9', '23', '0', '', '诺基亚N96', '', 'ECS000023', '1', null, '0', '1', '附加配件: 原装电池 [+100]');
INSERT INTO `ecs_delivery_goods` VALUES ('13', '10', '24', '0', '', 'P806', '', 'ECS000024', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('14', '11', '20', '0', '', '三星BC01', '', 'ECS000020', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('15', '11', '8', '0', '', '飞利浦9@9v', '', 'ECS000008', '1', null, '0', '1', '颜色:黑 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('16', '12', '2', '0', '', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '统帅', 'ECS000002', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('17', '13', '107', '0', '', '康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', '康宝', 'ECS000107', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('18', '14', '2', '0', '', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '统帅', 'ECS000002', '1', null, '0', '1', '32英寸智能');
INSERT INTO `ecs_delivery_goods` VALUES ('19', '14', '1', '0', '', '创维（Skyworth） 40E5CHR 40英寸 LED液晶电视（银色）', '创维', 'ECS000000', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('20', '14', '11', '0', '', '飞利浦（PHILIPS） HQ909/15 电动剃须刀', '飞利浦', 'ECS000011', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('21', '14', '26', '0', '', '利仁（Liven）LRT-310A 电饼铛 香槟金', '利仁', 'ECS000026', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('22', '14', '26', '0', '', '利仁（Liven）LRT-310A 电饼铛 香槟金', '利仁', 'ECS000026', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('23', '14', '10', '0', '', '美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', '美的', 'ECS000010', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('24', '14', '17', '0', '', '雷瓦（RIWA） RC-643A 专业静音1800W大功率恒温负离子电吹风吹风机', '雷瓦', 'ECS000017', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('25', '14', '16', '0', '', '力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）', '力博得', 'ECS000016', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('26', '15', '104', '0', '', '机器学习系统设计 ', '惠氏', 'ECS000104', '1', null, '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('27', '15', '103', '0', '', '数据化管理：洞悉零售及电子商务运营 ', '雷瓦', 'ECS000103', '1', null, '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('28', '15', '107', '0', '', '康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', '康宝', 'ECS000107', '1', null, '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('29', '15', '106', '0', '', 'Android开发秘籍进阶篇：Android 4编程入门经典+Android 4高级编程（第3版　套装共2册） ', '德尔玛', 'ECS000106', '1', null, '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('30', '15', '105', '0', '', 'JavaScript框架设计 ', '美的', 'ECS000105', '1', null, '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('31', '15', '25', '0', '', '美的（Midea） EM7KCGW3-NR 微波炉 微电脑 平板 薄膜按键', '美的', 'ECS000025', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('32', '15', '5', '0', '', '海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调', '海尔', 'ECS000005', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('33', '15', '102', '0', '', '算法谜题 ', '惠人', 'ECS000102', '1', null, '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('34', '15', '101', '0', '', 'WebKit技术内幕 ', '德龙', 'ECS000101', '1', null, '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('35', '15', '100', '0', '', '算法竞赛入门经典（第2版） ', '春花', 'ECS000100', '1', null, '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('36', '15', '96', '0', '', 'GNC 健安喜 葡萄籽精华胶囊 100粒（美国原装进口）', '健安喜', 'ECS000096', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('37', '15', '95', '0', '', '养生堂 红六月焕白亲情特供装 90粒维生素C+160粒维生素E+60粒维生素C+多种维生素矿物质片25片', '养生堂', 'ECS000095', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('38', '15', '93', '0', '', '养生堂天然维生素E.C祛斑焕白套装（维生素C90片+维生素E160粒）（赠养生堂5片面膜）', '养生堂', 'ECS000093', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('39', '15', '89', '0', '', 'Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克*6罐', '可瑞康', 'ECS000089', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('40', '15', '90', '0', '', '雅培 Abbott 金装喜康宝 婴儿配方奶粉 1段（0-12个月婴儿适用）900克 购雅培亲体新品，Mini Pad、万元大奖等你赢！点此查看！', '雅培', 'ECS000090', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('41', '15', '91', '0', '', '惠氏 Wyeth 启赋 illuma 亲和人体配方 幼儿配方奶粉 3段(1-3岁幼儿适用) 900克', '惠氏', 'ECS000091', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('42', '15', '92', '0', '', '太太静心助眠口服液15ml*60支', '太太', 'ECS000092', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('43', '15', '88', '0', '', 'Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克', '可瑞康', 'ECS000088', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('44', '15', '86', '0', '', '美赞臣 MeadJohnson 进口奶源 安儿宝A+ 幼儿配方奶粉 3段（1-3岁幼儿适用） 1200克', '美赞臣', 'ECS000086', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('45', '15', '84', '0', '', '美素力 Frisolac 荷兰原装进口 金装婴儿配方奶粉 1段（0-6个月婴儿适用） 900克', '美素力', 'ECS000084', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('46', '15', '83', '0', '', '九洲鹿全工艺100%全棉超耐磨转移印花四件套 北京遇上西雅图 1.8米床', '九洲鹿', 'ECS000083', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('47', '15', '82', '0', '', '么小毛家纺 床上用品欧式经典 莫代尔全棉大提花 床单式婚庆四件套 加州记忆 1.8米床', '么小毛家纺', 'ECS000082', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('48', '15', '81', '0', '', '爱斯基摩人 四件套 纯棉床上用品 斜纹家纺 双人 丽人风尚 1.5米/1.8米', '爱斯基摩人', 'ECS000081', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('49', '15', '80', '0', '', '绿野仙踪床上用品 全棉斜纹印花套件纯棉四件套 1.5/1.8米床 醉花樱-玫红 1.5-1.8米床适用', '九洲鹿', 'ECS000080', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('50', '15', '79', '0', '', '九洲鹿 100%全棉斜纹印花套件纯棉四件套 1.5米1.8米床 北京遇上西雅图 1.5米床', '九洲鹿', 'ECS000079', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('51', '15', '78', '0', '', '巧布万棉家纺 床品件套 贡缎提花绣花1.5/1.8米婚庆四件套 舞动时尚-米白 1.8m床四件套', '巧布万棉家纺', 'ECS000078', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('52', '15', '77', '0', '', '富安娜家纺 圣之花床品套件 全棉清新田园 纯棉印花双人四件套 淑姿丰盈 蓝色 1.8m(6英尺)床', '富安娜家纺', 'ECS000077', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('53', '15', '76', '0', '', '胜伟 高支棉斜纹四件套裸婚时代100%棉1.5/1.8米床', '洗颜专科', 'ECS000076', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('54', '15', '75', '0', '', '欧莱雅（LOREAL）男士劲能深层净化洁面膏（100ml+50ml）', '洗颜专科', 'ECS000075', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('55', '15', '74', '0', '', 'Neutrogena露得清深层净化洗面乳两支套装100g*2', '洗颜专科', 'ECS000074', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('56', '15', '73', '0', '', '欧莱雅（LOREAL）男士 控油炭爽抗黑头洁面膏100ml', '洗颜专科', 'ECS000073', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('57', '15', '71', '0', '', '妮维雅 男士净油精华亮肤洁面炭泥 150ml+150ml （提亮肤色 控油美白洗面奶 深层洁面 温和去角质）', '洗颜专科', 'ECS000071', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('58', '15', '70', '0', '', '欧莱雅（LOREAL）男士火山岩控油清痘洁面膏 买一赠一装（100ml+50ml）', '洗颜专科', 'ECS000070', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('59', '15', '69', '0', '', '洗颜专科 柔澈泡沫 洁面乳 120g（资生堂授权正品）', '洗颜专科', 'ECS000069', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('60', '15', '68', '0', '', '莱雪曼2014夏装上新蕾丝镂空拼接修身连衣裙两件套8272 黑色 M', '莱雪曼', 'ECS000068', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('61', '15', '67', '0', '', '誉彩 2014夏季新款无袖碎花长裙 大码女装裙子 韩版修身大摆连衣裙 兰花 M', '誉彩', 'ECS000067', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('62', '15', '63', '0', '', '丝露怡语 2014夏雪纺撞色青花瓷修身连衣裙女 661 9919蓝色 M', 'HARMARYCIAGA', 'ECS000063', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('63', '15', '64', '0', '', '俏妮妃 2014夏装新款时尚韩版女装 雪纺连衣裙圆领气质修身显瘦休闲OL淑女短袖打底连衣裙 白色 M', '俏妮妃', 'ECS000064', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('64', '15', '65', '0', '', '琼瑛女装2014夏季新款 韩版修身圆领雪纺连衣裙短袖纯色提花裙子3368 黄色 M', '琼瑛', 'ECS000065', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('65', '15', '66', '0', '', '时竟 2014夏季女装新款时尚气质OL显瘦一字领套装两件套套裙 修身连衣裙D8618 白配大红 M', '时竟', 'ECS000066', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('66', '15', '62', '0', '', 'HARMARYCIAGA2014女装夏新款修身气质甜美糖果色假两件无袖连衣裙QZ109 水蓝 M', 'HARMARYCIAGA', 'ECS000062', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('67', '15', '61', '0', '', '刊菲(kanfei) 2014夏季新款修身中袖韩国金线蕾丝连衣裙9068 金色 M', '刊菲', 'ECS000061', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('68', '15', '60', '0', '', '联想（Lenovo） C245 18.5英寸一体电脑（E1-1200 2G 500G DVD刻录 Dos）白色', '惠普', 'ECS000060', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('69', '15', '59', '0', '', '微软（Microsoft） Surface2 64G（Tegra 4四核 2G内存 64G硬盘 1080P高清屏 USB3.0）', '微软', 'ECS000059', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('70', '15', '58', '0', '', '机械革命（MECHREVO） MR X3 升级版 14英寸游戏本(i7-4702MQ 4G 64G SSD+1T机械 GTX850M 游戏键盘)黑色', '机械革命', 'ECS000058', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('71', '15', '57', '0', '', '华硕（ASUS） N550JV 15.6英寸笔记本(i5-4200H 4G 750G GT750M 2G独显 1920x1080 Win8 黑色)', '华硕', 'ECS000057', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('72', '15', '56', '0', '', '惠普（HP） CQ14-a104TX 14英寸笔记本电脑 （i5-4200M 4G 750GB GT820M 2G独显 DOS）', '惠普', 'ECS000056', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('73', '15', '55', '0', '', '宏碁（acer） V3-572G 15.6英寸超薄本 （i5-4210U 4G 500G GT840M 2G独显 win8.1 料号59TB）银色', '宏碁', 'ECS000055', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('74', '15', '54', '0', '', '雷神（ThundeRobot）911-E1 15.6英寸游戏本（i7-4710HQ 4G 500G GTX850M 2G DDR5 背光键盘 全高清屏）黑', '雷神', 'ECS000054', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('75', '15', '53', '0', '', '联想（Lenovo） Y400N 14.0英寸笔记本电脑（i5-3230M 4G 1T 2G独显 摄像头 DVD刻 Win8）', '联想', 'ECS000053', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('76', '15', '52', '0', '', '海燕（HAIYAN） ZD-BV4 阻燃 塑铜线100米 双色', '海燕', 'ECS000052', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('77', '15', '51', '0', '', '公牛（BULL) GN-110 3米 插座', '飞利浦', 'ECS000051', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('78', '15', '41', '0', '', '德尔玛（Deerma） DEM-F300 超声波加湿器（深蓝）', '德尔玛', 'ECS000041', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('79', '15', '43', '0', '', '春花（CHUNHUA ） JC621-160J 旋风锥尘杯 真空吸尘器（黑色）', '春花', 'ECS000043', '1', null, '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('80', '15', '46', '0', '', '美的（midea）单热型饮水机 MYR718S-X', '科沃斯', 'ECS000046', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('81', '15', '49', '0', '', '飞利浦（PHILIPS） CORD118大屏幕，免电池工作 来电显示电话机 黑色', '飞利浦', 'ECS000049', '1', null, '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('82', '15', '40', '0', '', 'Coway AP-1009CH 空气净化器 除甲醛臭氧净化机pm2.5 韩国进口', 'Coway', 'ECS000040', '1', null, '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('83', '15', '39', '0', '', '小熊（Bear) ZDQ-2191 多功能双层煎烙煮蛋器 14个蛋 （橙黄色）', '九阳', 'ECS000039', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('84', '15', '37', '0', '', '宝工（Pro\'skit) SS-989H 2合1SMD吹焊台 700W 热风焊接两用', '宝工', 'ECS000037', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('85', '15', '34', '0', '', '贝乐卫浴（ballee) G17-4 毛巾架浴巾架多功能套装', '华帝', 'ECS000034', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('86', '15', '33', '0', '', '佳德（GORLDE）99173T 304不锈钢拉丝面双槽水槽套餐', '佳德', 'ECS000033', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('87', '15', '31', '0', '', 'TCL 浴霸NH-21Y4A/01 风暖灯暖照明换气四合一', '雷士照明', 'ECS000031', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('88', '15', '30', '0', '', '雷士照明（NVC） NUD1895-3 餐吊吸顶灯(不带光源)', '雷士照明', 'ECS000030', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('89', '15', '28', '0', '', '意大利德龙(DeLonghi) ESAM2200 EX:1 全自动咖啡机（银色）', '德龙', 'ECS000028', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('90', '15', '23', '0', '', '美的(midea) W12PCS505E 电压力锅 5L多功能电脑版', '美的', 'ECS000023', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('91', '15', '26', '0', '', '利仁（Liven）LRT-310A 电饼铛 香槟金', '利仁', 'ECS000026', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('92', '15', '27', '0', '', '松下（Panasonic） SD-PM105 面包机', '松下', 'ECS000027', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('93', '15', '22', '0', '', '美的（Midea ）17S18K2c+ 电水壶(不锈钢色)', '美的', 'ECS000022', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('94', '15', '17', '0', '', '雷瓦（RIWA） RC-643A 专业静音1800W大功率恒温负离子电吹风吹风机', '雷瓦', 'ECS000017', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('95', '15', '18', '0', '', '华盛昌（CEM）DT-8806S 红外线人体测温仪 体温计（精致版）', '华盛昌', 'ECS000018', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('96', '15', '19', '0', '', '九安/Andon 家用全自动智能 上臂式 电子血压计 血压仪 血压计KD-5910', '华盛昌', 'ECS000019', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('97', '15', '21', '0', '', '韩国惠人（HUROM） HU-400WN-PLUS 原汁机 “小红2014全新升级版”', '惠人', 'ECS000021', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('98', '15', '16', '0', '', '力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）', '力博得', 'ECS000016', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('99', '15', '15', '0', '', '松下（Panasonic） EH-SQ10-W405 冷敷美容器', '松下', 'ECS000015', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('100', '15', '14', '0', '', '松下（Panasonic） EH-SA31QP405 温冷美容护肤套装 深层清洁补水 瞬间紧致肌肤', '松下', 'ECS000014', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('101', '15', '13', '0', '', '雷瓦（Riwa）RB-807S 两用陶瓷卷发棒 卷发器/直发器', '雷瓦', 'ECS000013', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('102', '15', '12', '0', '', 'GESS 德国GESS682 电动深层防水洁面仪 洗脸美容仪家用毛孔清洁器去黑头仪 清新绿', 'GESS', 'ECS000012', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('103', '15', '11', '0', '', '飞利浦（PHILIPS） HQ909/15 电动剃须刀', '飞利浦', 'ECS000011', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('104', '15', '10', '0', '', '美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', '美的', 'ECS000010', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('105', '15', '9', '0', '', '海信（Hisense） KFR-35GW/20FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '海信', 'ECS000009', '1', null, '0', '1', '产品特色:超长质保 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('106', '15', '6', '0', '', '海信（Hisense） KFR-35GW/10FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '海信', 'ECS000006', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('107', '15', '6', '0', '', '海信（Hisense） KFR-35GW/10FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '海信', 'ECS000006', '1', null, '0', '1', '产品特色:WIFI操控 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('108', '15', '5', '0', '', '海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调', '海尔', 'ECS000005', '1', null, '0', '1', '产品特色:超静音 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('109', '15', '4', '0', '', '志高（chigo）KFR-51LW/N33+N3 大2匹 柜式家用冷暖空调（白色 白5）', '志高', 'ECS000004', '1', null, '0', '1', '产品特色:祛PM2.5 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('110', '16', '140', '0', '', '山崎(ASAKI)4.8伏家用充电式电动起子螺丝刀小电钻(带磁性)/充电电池电动工具', '山崎', 'ECS000140', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('111', '16', '139', '0', '', '新款BOSCH博世TSR 1080-2-LI锂电钻充电手电钻多功能家用电动螺丝刀起子 TSR1080-2-Li单电 一电一冲', '博世', 'ECS000139', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('112', '16', '138', '0', '', '老A（LAOA) 电动工具双速12V锂电池充电钻/手电钻/电起子/电动螺丝刀/充电批', '老A', 'ECS000138', '1', null, '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('113', '16', '137', '0', '', '宝工（Pro\'skit） PT-5501I 可调速软轴电磨组', '宝工', 'ECS000137', '1', null, '0', '5', '');
INSERT INTO `ecs_delivery_goods` VALUES ('114', '16', '136', '0', '', '博世(Bosch)GSB600RE set 13毫米冲击钻套装', '博世', 'ECS000136', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('115', '16', '135', '0', '', '飞科（FLYCO）FS358全身水洗充电式三刀头电动剃须刀（银色）', '飞科', 'ECS000135', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('116', '16', '134', '0', '', '飞科（FLYCO）FS711充电式双刀头电动剃须刀（黑色）', '飞科', 'ECS000134', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('117', '16', '133', '0', '', '飞利浦(Philips) RQ311 电动剃须刀', '飞利浦', 'ECS000133', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('118', '16', '132', '0', '', '飞利浦（PHILIPS） PQ182/16 电动剃须刀', '奔腾', 'ECS000132', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('119', '16', '131', '0', '', '飞利浦（Philips）RQ310 锐锋系列电动剃须刀', '奔腾', 'ECS000131', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('120', '16', '130', '0', '', '奔腾（POVOS） LN5152 电压力锅 5L', '奔腾', 'ECS000130', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('121', '16', '129', '0', '', '美的（Midea） W13PCS503E 易拆洗一手开系列 5L电压力锅', '美的', 'ECS000129', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('122', '16', '128', '0', '', '九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1', '九阳', 'ECS000128', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('123', '16', '127', '0', '', '九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1', '九阳', 'ECS000127', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('124', '16', '126', '0', '', '美的(midea) W12PCS505E 电压力锅 5L多功能电脑版', '艾美特', 'ECS000126', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('125', '16', '125', '0', '', '艾美特(Airmate) FTW36T2-A 电风扇/塔扇', '艾美特', 'ECS000125', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('126', '16', '124', '0', '', '艾美特(Airmate) FSW27T2-5 电风扇/落地扇', '艾美特', 'ECS000124', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('127', '16', '123', '0', '', '艾美特(Airmate) FT42R 电风扇/遥控塔扇', '艾美特', 'ECS000123', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('128', '16', '122', '0', '', '艾美特(Airmate) FSW65R-5 电风扇/遥控落地扇', '艾美特', 'ECS000122', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('129', '16', '121', '0', '', '艾美特(Airmate) FSW52R 电风扇/遥控落地扇', '艾美特', 'ECS000121', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('130', '16', '120', '0', '', '华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜', '美的', 'ECS000120', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('131', '16', '119', '0', '', '美的(Midea) MXV-ZLP90Q05 嵌入式 消毒柜', '美的', 'ECS000119', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('132', '16', '118', '0', '', '康宝(Canbo) ZTP108E-11E 嵌入式 消毒柜', '康宝', 'ECS000118', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('133', '16', '117', '0', '', '美的(Midea) MXV-ZLP80K03 立式 消毒柜', '美的', 'ECS000117', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('134', '16', '116', '0', '', '康宝(Canbo) ZTP80A-3 立式 消毒柜', '康宝', 'ECS000116', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('135', '16', '115', '0', '', '志高(Chigo)JC-270L 压缩机恒温红酒柜 底层自由摆放/8月新款8层100瓶', '志高', 'ECS000115', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('136', '16', '114', '0', '', '维诺卡夫(Vinocave) CWC-350AJP 压缩机恒温红酒柜 配挂杯架+展示层架', '维诺夫卡', 'ECS000114', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('137', '16', '113', '0', '', '维诺卡夫(Vinocave) CWC-200A 压缩机恒温红酒柜 配挂杯架+展示层架', '维诺夫卡', 'ECS000113', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('138', '16', '112', '0', '', '维诺卡夫(Vinocave) SC-28AJPM电子恒温红酒柜', '维诺夫卡', 'ECS000112', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('139', '16', '111', '0', '', '维诺卡夫(Vinocave)冰吧冰柜SC-28AJP电子恒温红酒柜', '维诺夫卡', 'ECS000111', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('140', '16', '110', '0', '', '康佳（KONKA） LED32E330C 32英寸 窄边高清液晶电视（银色）', '康佳', 'ECS000110', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('141', '16', '109', '0', '', '长虹（CHANGHONG）LED42B2080n 42英寸极窄边网络LED液晶电视（黑色）', '创维', 'ECS000109', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('142', '16', '108', '0', '', '长虹（CHANGHONG） LED42538E 42英寸 超窄边LED液晶电视(黑色)', '', 'ECS000108', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('143', '16', '107', '0', '', '康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', '康宝', 'ECS000107', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('144', '17', '2', '39', 'ECS000002g_p39', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '统帅', 'ECS000002', '1', null, '0', '1', '尺寸:50英寸智能[1500] \n功能:普通电视 \n可选颜色:黑色 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('145', '17', '2', '41', 'ECS000002g_p41', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '统帅', 'ECS000002', '1', null, '0', '1', '尺寸:32英寸智能 \n功能:智能电视 \n可选颜色:黑色 \n');

-- ----------------------------
-- Table structure for `ecs_delivery_order`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_delivery_order`;
CREATE TABLE `ecs_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL auto_increment,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `invoice_no` varchar(50) default NULL,
  `add_time` int(10) unsigned default '0',
  `shipping_id` tinyint(3) unsigned default '0',
  `shipping_name` varchar(120) default NULL,
  `user_id` mediumint(8) unsigned default '0',
  `action_user` varchar(30) default NULL,
  `consignee` varchar(60) default NULL,
  `address` varchar(250) default NULL,
  `country` smallint(5) unsigned default '0',
  `province` smallint(5) unsigned default '0',
  `city` smallint(5) unsigned default '0',
  `district` smallint(5) unsigned default '0',
  `sign_building` varchar(120) default NULL,
  `email` varchar(60) default NULL,
  `zipcode` varchar(60) default NULL,
  `tel` varchar(60) default NULL,
  `mobile` varchar(60) default NULL,
  `best_time` varchar(120) default NULL,
  `postscript` varchar(255) default NULL,
  `how_oos` varchar(120) default NULL,
  `insure_fee` decimal(10,2) unsigned default '0.00',
  `shipping_fee` decimal(10,2) unsigned default '0.00',
  `update_time` int(10) unsigned default '0',
  `suppliers_id` smallint(5) default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `agency_id` smallint(5) unsigned default '0',
  PRIMARY KEY  (`delivery_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_delivery_order
-- ----------------------------
INSERT INTO `ecs_delivery_order` VALUES ('1', '20090615054961769', '2009061585887', '15', '2009061585884', '1245044533', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245044964', '2', '1', '0');
INSERT INTO `ecs_delivery_order` VALUES ('2', '20090615055104671', '2009061585887', '15', '20090615', '1245044533', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245045061', '1', '1', '0');
INSERT INTO `ecs_delivery_order` VALUES ('3', '20090615055780744', '2009061585887', '15', '123232', '1245044533', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245045443', '0', '1', '0');
INSERT INTO `ecs_delivery_order` VALUES ('4', '20090615060281017', '2009061525429', '16', '2009061525121', '1245045672', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245045723', '2', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('5', '20090615064331475', '2009061503335', '17', '00906150333512', '1245047978', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245048189', '0', '1', '0');
INSERT INTO `ecs_delivery_order` VALUES ('6', '20140724105855761', '2014072193304', '22', '0999', '1405891658', '5', '申通快递', '0', 'admin', '22', '233', '1', '6', '81', '754', '', '55@qq.com', '', '444', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1406141894', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('7', '20140724105865105', '2014070752549', '21', '666', '1404680437', '7', '运费到付', '6', 'admin', 'q111', '22', '1', '4', '55', '540', '', 'admin123@qq.com', '', '333', '', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1406141913', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('8', '20140724105820896', '2014060932408', '20', '55', '1402273996', '5', '申通快递', '6', 'admin', 'q111', '22', '1', '4', '55', '540', '', 'admin123@qq.com', '', '333', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1406141930', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('9', '20140724105997657', '2009051264945', '11', '111', '1242144250', '3', '城际快递', '0', 'admin', '林小姐', '中关村海兴大厦', '1', '2', '52', '500', '', 'linzi@116.com', '', '135474510', '', '', '', '', '0.00', '10.00', '1406141975', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('10', '20140724105903154', '2009051210718', '9', '333', '1242143732', '5', '申通快递', '3', 'admin', '叶先生', '通州区旗舰凯旋小区', '1', '2', '52', '510', '', 'text@ecshop.com', '', '13588104710', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1406141992', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('11', '20140724110052048', '2009051299732', '8', '222', '1242143444', '5', '申通快递', '3', 'admin', '叶先生', '通州区旗舰凯旋小区', '1', '2', '52', '510', '', 'text@ecshop.com', '', '13588104710', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1406142013', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('12', '20140731151466480', '2014073113030', '1', '5555', '1406762023', '5', '申通快递', '0', 'admin', '11', '12', '1', '5', '64', '620', '', '444444@qq.com', '', '33333', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1406762040', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('13', '20140731154083813', '2014073126550', '2', '444444', '1406763595', '5', '申通快递', '6', 'admin', 'q111', '22', '1', '4', '55', '540', '', 'admin123@qq.com', '', '333', '', '', '', '', '0.00', '15.00', '1406763634', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('14', '20140807155359214', '2014080751421', '3', '3333', '1407369121', '5', '申通快递', '6', 'admin', 'q111', '22', '1', '4', '55', '540', '', 'admin123@qq.com', '', '333', '', '', '', '', '0.00', '15.00', '1407369190', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('15', '20140814173369846', '2014081499923', '5', '2222', '1407979978', '5', '申通快递', '0', 'admin', '1', '2', '1', '5', '66', '633', '', '44@qq.com', '', '3', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1407980002', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('16', '20140815095683888', '2014081591904', '6', '1111111', '1408038969', '5', '申通快递', '6', 'admin', 'q111', '22', '1', '4', '55', '540', '', 'admin123@qq.com', '', '333', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1408038995', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('17', '20150429100118716', '2015042925814', '18', '', '1430244056', '6', '邮局平邮', '12', 'admin', '小松', '中山北路2911号中关村科技大厦2402室', '1', '25', '321', '2709', '', '123456@qq.com', '', '15221019886', '', '', '', '等待所有商品备齐后再发', '0.00', '3.50', '1430244097', '0', '0', '0');

-- ----------------------------
-- Table structure for `ecs_email_list`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_email_list`;
CREATE TABLE `ecs_email_list` (
  `id` mediumint(8) NOT NULL auto_increment,
  `email` varchar(60) NOT NULL,
  `stat` tinyint(1) NOT NULL default '0',
  `hash` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_email_list
-- ----------------------------
INSERT INTO `ecs_email_list` VALUES ('1', '497110669@qq.com', '0', '40f84b0112');

-- ----------------------------
-- Table structure for `ecs_email_sendlist`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_email_sendlist`;
CREATE TABLE `ecs_email_sendlist` (
  `id` mediumint(8) NOT NULL auto_increment,
  `email` varchar(100) NOT NULL,
  `template_id` mediumint(8) NOT NULL,
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL default '0',
  `pri` tinyint(10) NOT NULL,
  `last_send` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_email_sendlist
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_error_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_error_log`;
CREATE TABLE `ecs_error_log` (
  `id` int(10) NOT NULL auto_increment,
  `info` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_exchange_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_exchange_goods`;
CREATE TABLE `ecs_exchange_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `exchange_integral` int(10) unsigned NOT NULL default '0',
  `is_exchange` tinyint(1) unsigned NOT NULL default '0',
  `is_hot` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_exchange_goods
-- ----------------------------
INSERT INTO `ecs_exchange_goods` VALUES ('24', '17000', '1', '1');
INSERT INTO `ecs_exchange_goods` VALUES ('19', '80000', '1', '1');
INSERT INTO `ecs_exchange_goods` VALUES ('15', '20000', '1', '1');
INSERT INTO `ecs_exchange_goods` VALUES ('17', '16000', '1', '1');
INSERT INTO `ecs_exchange_goods` VALUES ('16', '17000', '1', '1');
INSERT INTO `ecs_exchange_goods` VALUES ('6', '1900', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('2', '10000', '1', '0');

-- ----------------------------
-- Table structure for `ecs_favourable_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_favourable_activity`;
CREATE TABLE `ecs_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL auto_increment,
  `act_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `user_rank` varchar(255) NOT NULL,
  `act_range` tinyint(3) unsigned NOT NULL,
  `act_range_ext` varchar(255) NOT NULL,
  `min_amount` decimal(10,2) unsigned NOT NULL,
  `max_amount` decimal(10,2) unsigned NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `act_type_ext` decimal(10,2) unsigned NOT NULL,
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL default '50',
  PRIMARY KEY  (`act_id`),
  KEY `act_name` (`act_name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_favourable_activity
-- ----------------------------
INSERT INTO `ecs_favourable_activity` VALUES ('1', '5.1诺基亚优惠活动', '1241107200', '1253030400', '1,2', '2', '1', '500.00', '5000.00', '2', '95.00', 'a:0:{}', '50');
INSERT INTO `ecs_favourable_activity` VALUES ('2', '测试优惠活动1', '1400140800', '1432022400', '0,1,2,3', '3', '6', '0.00', '0.00', '0', '0.00', 'a:1:{i:0;a:3:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:47:\"[VT]印花T恤 SWEET SMILE(女款) 玛瑙红色\";s:5:\"price\";s:1:\"0\";}}', '50');
INSERT INTO `ecs_favourable_activity` VALUES ('3', '满1000.0元减免149.0元', '1407312000', '1407657600', '0,1,2,3', '3', '2', '0.00', '0.00', '1', '149.00', 'a:0:{}', '50');
INSERT INTO `ecs_favourable_activity` VALUES ('4', '满2000.0元送剃须刀', '1407312000', '1407657600', '0,1,2,3', '3', '2', '0.00', '0.00', '0', '0.00', 'a:1:{i:0;a:3:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:65:\"雷瓦（Riwa）RB-807S 两用陶瓷卷发棒 卷发器/直发器\";s:5:\"price\";s:1:\"0\";}}', '50');
INSERT INTO `ecs_favourable_activity` VALUES ('5', '店铺周年庆活动，全场八折起！', '1428998400', '1434268800', '1,2,3', '3', '2', '0.00', '0.00', '2', '80.00', 'a:0:{}', '50');

-- ----------------------------
-- Table structure for `ecs_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_feedback`;
CREATE TABLE `ecs_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL auto_increment,
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `user_name` varchar(60) NOT NULL default '',
  `user_email` varchar(60) NOT NULL default '',
  `msg_title` varchar(200) NOT NULL default '',
  `msg_type` tinyint(1) unsigned NOT NULL default '0',
  `msg_status` tinyint(1) unsigned NOT NULL default '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL default '0',
  `message_img` varchar(255) NOT NULL default '0',
  `order_id` int(11) unsigned NOT NULL default '0',
  `msg_area` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_feedback
-- ----------------------------
INSERT INTO `ecs_feedback` VALUES ('1', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '0', '三星SGH-F258什么时候有货', '1242107197', '', '0', '0');

-- ----------------------------
-- Table structure for `ecs_friend_link`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_friend_link`;
CREATE TABLE `ecs_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL auto_increment,
  `link_name` varchar(255) NOT NULL default '',
  `link_url` varchar(255) NOT NULL default '',
  `link_logo` varchar(255) NOT NULL default '',
  `show_order` tinyint(3) unsigned NOT NULL default '50',
  PRIMARY KEY  (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_friend_link
-- ----------------------------
INSERT INTO `ecs_friend_link` VALUES ('1', 'ECSHOP 网上商店管理系统', 'http://www.ecshop.com/', 'http://www.ecshop.com/images/logo/ecshop_logo.gif', '50');
INSERT INTO `ecs_friend_link` VALUES ('2', '买否网', 'http://www.maifou.net/', '', '51');
INSERT INTO `ecs_friend_link` VALUES ('3', '免费开独立网店', 'http://www.wdwd.com/', '', '52');

-- ----------------------------
-- Table structure for `ecs_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods`;
CREATE TABLE `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL auto_increment,
  `cat_id` smallint(5) unsigned NOT NULL default '0',
  `goods_sn` varchar(60) NOT NULL default '',
  `goods_name` varchar(120) NOT NULL default '',
  `goods_name_style` varchar(60) NOT NULL default '+',
  `click_count` int(10) unsigned NOT NULL default '0',
  `brand_id` smallint(5) unsigned NOT NULL default '0',
  `provider_name` varchar(100) NOT NULL default '',
  `goods_number` smallint(5) unsigned NOT NULL default '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL default '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `promote_start_date` int(11) unsigned NOT NULL default '0',
  `promote_end_date` int(11) unsigned NOT NULL default '0',
  `warn_number` tinyint(3) unsigned NOT NULL default '1',
  `keywords` varchar(255) NOT NULL default '',
  `goods_brief` varchar(255) NOT NULL default '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL default '',
  `goods_img` varchar(255) NOT NULL default '',
  `original_img` varchar(255) NOT NULL default '',
  `is_real` tinyint(3) unsigned NOT NULL default '1',
  `extension_code` varchar(30) NOT NULL default '',
  `is_on_sale` tinyint(1) unsigned NOT NULL default '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL default '1',
  `is_shipping` tinyint(1) unsigned NOT NULL default '0',
  `integral` int(10) unsigned NOT NULL default '0',
  `add_time` int(10) unsigned NOT NULL default '0',
  `sort_order` smallint(4) unsigned NOT NULL default '100',
  `is_delete` tinyint(1) unsigned NOT NULL default '0',
  `is_best` tinyint(1) unsigned NOT NULL default '0',
  `is_new` tinyint(1) unsigned NOT NULL default '0',
  `is_hot` tinyint(1) unsigned NOT NULL default '0',
  `is_promote` tinyint(1) unsigned NOT NULL default '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL default '0',
  `last_update` int(10) unsigned NOT NULL default '0',
  `goods_type` smallint(5) unsigned NOT NULL default '0',
  `seller_note` varchar(255) NOT NULL default '',
  `give_integral` int(11) NOT NULL default '-1',
  `rank_integral` int(11) NOT NULL default '-1',
  `suppliers_id` smallint(5) unsigned default NULL,
  `is_check` tinyint(1) unsigned default NULL,
  `sales_volume` int(10) unsigned NOT NULL default '0',
  `comments_number` int(10) unsigned NOT NULL default '0',
  `packing_list` text NOT NULL,
  `customer_service` text NOT NULL,
  PRIMARY KEY  (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`),
  KEY `sales_volume` (`sales_volume`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods
-- ----------------------------
INSERT INTO `ecs_goods` VALUES ('146', '999', 'ECS000000', '富国低碳环保股票型证券投资基金', '+', '2', '76', '', '10000', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/146_thumb_G_1436294482805.jpg', 'images/201507/goods_img/146_G_1436294482554.jpg', 'images/201507/source_img/146_G_1436294482690.jpg', '1', '', '1', '1', '0', '0', '1436294482', '100', '0', '0', '0', '0', '0', '0', '1436294482', '0', '', '-1', '-1', '0', null, '0', '0', '', '');
INSERT INTO `ecs_goods` VALUES ('147', '999', 'ECS000147', '富国低碳环保股票型证券投资基金', '+', '0', '76', '', '10000', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/147_thumb_G_1436294718853.jpg', 'images/201507/goods_img/147_G_1436294718890.jpg', 'images/201507/source_img/147_G_1436294718049.jpg', '1', '', '1', '1', '0', '0', '1436294718', '100', '0', '0', '0', '0', '0', '0', '1436294718', '0', '', '-1', '-1', '0', null, '0', '0', '', '');
INSERT INTO `ecs_goods` VALUES ('148', '1007', 'ECS000148', '易方达新兴成长基金', '+', '0', '76', '', '10000', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/148_thumb_G_1436294782724.jpg', 'images/201507/goods_img/148_G_1436294782316.jpg', 'images/201507/source_img/148_G_1436294782646.jpg', '1', '', '1', '1', '0', '0', '1436294782', '100', '0', '0', '0', '0', '0', '0', '1436315824', '0', '', '-1', '-1', '0', null, '0', '0', '', '');
INSERT INTO `ecs_goods` VALUES ('149', '999', 'ECS000149', '易方达新兴成长基金', '+', '4', '76', '', '10000', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/149_thumb_G_1436294828362.jpg', 'images/201507/goods_img/149_G_1436294828342.jpg', 'images/201507/source_img/149_G_1436294828905.jpg', '1', '', '1', '1', '0', '0', '1436294828', '100', '0', '0', '0', '1', '0', '0', '1436315821', '0', '', '-1', '-1', '0', null, '0', '0', '', '');
INSERT INTO `ecs_goods` VALUES ('150', '1008', 'ECS000150', '鹏华证券保险分级基金 专注非银行金融板块', '+', '1', '76', '', '10000', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/150_thumb_G_1436294934324.jpg', 'images/201507/goods_img/150_G_1436294934016.jpg', 'images/201507/source_img/150_G_1436294934334.jpg', '1', '', '1', '1', '0', '0', '1436294934', '100', '0', '0', '0', '1', '0', '0', '1436315821', '0', '', '-1', '-1', '0', null, '0', '0', '', '');
INSERT INTO `ecs_goods` VALUES ('151', '999', 'ECS000151', '工银瑞信金融地产行业股票型证券投资基金', '+', '1', '76', '', '10000', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/151_thumb_G_1436294971150.jpg', 'images/201507/goods_img/151_G_1436294971220.jpg', 'images/201507/source_img/151_G_1436294971140.jpg', '1', '', '1', '1', '0', '0', '1436294971', '100', '0', '0', '0', '1', '0', '0', '1436315820', '0', '', '-1', '-1', '0', null, '0', '0', '', '');
INSERT INTO `ecs_goods` VALUES ('152', '1006', 'ECS000152', '嘉实货币基金 月月分红 低风险 零手续费', '+', '0', '76', '', '10000', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/152_thumb_G_1436295000275.jpg', 'images/201507/goods_img/152_G_1436295000226.jpg', 'images/201507/source_img/152_G_1436295000013.jpg', '1', '', '1', '1', '0', '0', '1436295000', '100', '0', '0', '0', '1', '0', '0', '1436315820', '0', '', '-1', '-1', '0', null, '0', '0', '', '');
INSERT INTO `ecs_goods` VALUES ('153', '1004', 'ECS000153', '易方达天天理财货币基金A', '+', '0', '76', '', '10000', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/153_thumb_G_1436295027420.jpg', 'images/201507/goods_img/153_G_1436295027034.jpg', 'images/201507/source_img/153_G_1436295027750.jpg', '1', '', '1', '1', '0', '0', '1436295027', '100', '0', '0', '0', '1', '0', '0', '1436315819', '0', '', '-1', '-1', '0', null, '0', '0', '', '');
INSERT INTO `ecs_goods` VALUES ('154', '1006', 'ECS000154', '南方现金通货币市场基金A类', '+', '0', '76', '', '10000', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/154_thumb_G_1436295059995.jpg', 'images/201507/goods_img/154_G_1436295059454.jpg', 'images/201507/source_img/154_G_1436295059977.jpg', '1', '', '1', '1', '0', '0', '1436295059', '100', '0', '0', '0', '1', '0', '0', '1436315818', '0', '', '-1', '-1', '0', null, '0', '0', '', '');
INSERT INTO `ecs_goods` VALUES ('155', '1005', 'ECS000155', '南方宝元债券型基金', '+', '0', '76', '', '10000', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/155_thumb_G_1436295224337.jpg', 'images/201507/goods_img/155_G_1436295224945.jpg', 'images/201507/source_img/155_G_1436295224768.jpg', '1', '', '1', '1', '0', '0', '1436295224', '100', '0', '0', '0', '1', '0', '0', '1436315817', '0', '', '-1', '-1', '0', null, '0', '0', '', '');

-- ----------------------------
-- Table structure for `ecs_goods_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_activity`;
CREATE TABLE `ecs_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL auto_increment,
  `act_name` varchar(255) NOT NULL,
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `is_finished` tinyint(3) unsigned NOT NULL,
  `ext_info` text NOT NULL,
  PRIMARY KEY  (`act_id`),
  KEY `act_name` (`act_name`,`act_type`,`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_activity
-- ----------------------------
INSERT INTO `ecs_goods_activity` VALUES ('1', '科龙（Kelon） KFR-72LW/EFVDN2 3匹 立柜式定速家用冷暖空调', '', '1', '3', '0', '科龙（Kelon） KFR-72LW/EFVDN2 3匹 立柜式定速家用冷暖空调', '1407744000', '1502784000', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:1;s:5:\"price\";d:1500;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('2', '美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', '', '1', '10', '0', '美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', '1407744000', '1502784000', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:2;s:5:\"price\";d:1000;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('3', '测试拍卖活动1', '', '2', '5', '0', '海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调', '1407744000', '1534320000', '0', 'a:5:{s:7:\"deposit\";d:0;s:11:\"start_price\";d:1;s:9:\"end_price\";d:2000;s:9:\"amplitude\";d:0;s:6:\"no_top\";i:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('4', '测试夺宝奇兵', '测试夺宝奇兵测试夺宝奇兵测试夺宝奇兵测试夺宝奇兵', '0', '15', '0', '松下（Panasonic） EH-SQ10-W405 冷敷美容器', '1407777840', '1566177840', '0', 'a:4:{s:11:\"start_price\";s:4:\"1.00\";s:9:\"end_price\";s:6:\"800.00\";s:9:\"max_price\";i:0;s:11:\"cost_points\";s:1:\"1\";}');
INSERT INTO `ecs_goods_activity` VALUES ('5', '海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调', '', '1', '5', '0', '海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调', '1429603200', '1461225600', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:999;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('6', '香山（CAMRY） EB9005L 圆形电子秤 体重秤 透明玻璃', '', '1', '20', '0', '香山（CAMRY） EB9005L 圆形电子秤 体重秤 透明玻璃', '1429603200', '1458547200', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:49;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('7', '力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）', '', '1', '16', '0', '力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）', '1429603200', '1456041600', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:499;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('9', '海信（Hisense） KFR-35GW/10FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '', '1', '6', '0', '海信（Hisense） KFR-35GW/10FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '1429603200', '1461225600', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:399;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('10', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '', '1', '2', '0', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '1429603200', '1461225600', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:1999;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('11', '创维（Skyworth） 40E5CHR 40英寸 LED液晶电视（银色）', '', '1', '1', '0', '创维（Skyworth） 40E5CHR 40英寸 LED液晶电视（银色）', '1429603200', '1461225600', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:1699;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('12', '志高（chigo）KFR-51LW/N33+N3 大2匹 柜式家用冷暖空调（白色 白5）', '', '1', '4', '0', '志高（chigo）KFR-51LW/N33+N3 大2匹 柜式家用冷暖空调（白色 白5）', '1429603200', '1461225600', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:1989;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}');

-- ----------------------------
-- Table structure for `ecs_goods_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_article`;
CREATE TABLE `ecs_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `article_id` mediumint(8) unsigned NOT NULL default '0',
  `admin_id` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`goods_id`,`article_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_article
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_goods_attr`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_attr`;
CREATE TABLE `ecs_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `attr_id` smallint(5) unsigned NOT NULL default '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL default '',
  `img_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_attr
-- ----------------------------
INSERT INTO `ecs_goods_attr` VALUES ('1', '10', '1', '1.5 P（约12-23㎡）', '0', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2', '9', '1', '1P（约8-14㎡）', '0', '0');
INSERT INTO `ecs_goods_attr` VALUES ('3', '6', '1', '2P（约21-34㎡）', '0', '0');
INSERT INTO `ecs_goods_attr` VALUES ('4', '3', '1', '2.5P（约27-42㎡）', '0', '0');
INSERT INTO `ecs_goods_attr` VALUES ('5', '9', '2', '超长质保', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('6', '9', '2', '强力除湿', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('7', '6', '2', 'WIFI操控', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('8', '6', '2', '电辅加热', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('9', '5', '1', '3P（约32-50㎡）', '0', '0');
INSERT INTO `ecs_goods_attr` VALUES ('10', '5', '2', '超静音', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('11', '5', '2', '圆柱型柜机', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('12', '4', '1', '1.5 P（约12-23㎡）', '0', '0');
INSERT INTO `ecs_goods_attr` VALUES ('13', '4', '2', '祛PM2.5', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('14', '4', '2', '除甲醛', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('15', '2', '3', '32英寸智能', '0', '0');
INSERT INTO `ecs_goods_attr` VALUES ('16', '2', '3', '40英寸智能', '800', '0');
INSERT INTO `ecs_goods_attr` VALUES ('17', '2', '3', '50英寸智能', '1500', '0');
INSERT INTO `ecs_goods_attr` VALUES ('18', '2', '4', '智能电视', '0', '0');
INSERT INTO `ecs_goods_attr` VALUES ('19', '2', '5', '全高清（1920.1080）', '0', '0');
INSERT INTO `ecs_goods_attr` VALUES ('20', '2', '6', 'LED电视', '0', '0');
INSERT INTO `ecs_goods_attr` VALUES ('21', '2', '7', '客厅电视', '0', '0');
INSERT INTO `ecs_goods_attr` VALUES ('24', '2', '4', '普通电视', '0', '0');
INSERT INTO `ecs_goods_attr` VALUES ('25', '2', '4', '网络电视', '0', '0');
INSERT INTO `ecs_goods_attr` VALUES ('26', '2', '8', '黑色', '', '107');

-- ----------------------------
-- Table structure for `ecs_goods_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_cat`;
CREATE TABLE `ecs_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `cat_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_cat
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_goods_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_gallery`;
CREATE TABLE `ecs_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `img_url` varchar(255) NOT NULL default '',
  `img_desc` varchar(255) NOT NULL default '',
  `thumb_url` varchar(255) NOT NULL default '',
  `img_original` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_gallery
-- ----------------------------
INSERT INTO `ecs_goods_gallery` VALUES ('1', '1', 'images/201407/goods_img/1_P_1406490380336.jpg', '', 'images/201407/thumb_img/1_thumb_P_1406490380575.jpg', 'images/201407/source_img/1_P_1406490380795.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('2', '2', 'images/201407/goods_img/2_P_1406490449477.jpg', '', 'images/201407/thumb_img/2_thumb_P_1406490449325.jpg', 'images/201407/source_img/2_P_1406490449737.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('3', '3', 'images/201407/goods_img/3_P_1406490512595.jpg', '', 'images/201407/thumb_img/3_thumb_P_1406490512985.jpg', 'images/201407/source_img/3_P_1406490512796.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('4', '4', 'images/201407/goods_img/4_P_1406490572361.jpg', '', 'images/201407/thumb_img/4_thumb_P_1406490572028.jpg', 'images/201407/source_img/4_P_1406490572476.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('5', '5', 'images/201407/goods_img/5_P_1406490659233.jpg', '', 'images/201407/thumb_img/5_thumb_P_1406490659905.jpg', 'images/201407/source_img/5_P_1406490659262.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('6', '6', 'images/201407/goods_img/6_P_1406490721326.jpg', '', 'images/201407/thumb_img/6_thumb_P_1406490721379.jpg', 'images/201407/source_img/6_P_1406490721495.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('7', '7', 'images/201407/goods_img/7_P_1406490933778.jpg', '', 'images/201407/thumb_img/7_thumb_P_1406490933447.jpg', 'images/201407/source_img/7_P_1406490933278.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('8', '8', 'images/201407/goods_img/8_P_1406491010240.jpg', '', 'images/201407/thumb_img/8_thumb_P_1406491010930.jpg', 'images/201407/source_img/8_P_1406491010392.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('9', '9', 'images/201407/goods_img/9_P_1406491053727.jpg', '', 'images/201407/thumb_img/9_thumb_P_1406491053594.jpg', 'images/201407/source_img/9_P_1406491053311.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('10', '10', 'images/201407/goods_img/10_P_1406491106519.jpg', '', 'images/201407/thumb_img/10_thumb_P_1406491106009.jpg', 'images/201407/source_img/10_P_1406491106161.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('11', '11', 'images/201407/goods_img/11_P_1406491292245.jpg', '', 'images/201407/thumb_img/11_thumb_P_1406491292576.jpg', 'images/201407/source_img/11_P_1406491292256.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('12', '12', 'images/201407/goods_img/12_P_1406496321431.jpg', '', 'images/201407/thumb_img/12_thumb_P_1406496321949.jpg', 'images/201407/source_img/12_P_1406496321197.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('13', '13', 'images/201407/goods_img/13_P_1406496383377.jpg', '', 'images/201407/thumb_img/13_thumb_P_1406496383142.jpg', 'images/201407/source_img/13_P_1406496383965.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('14', '14', 'images/201407/goods_img/14_P_1406496440684.jpg', '', 'images/201407/thumb_img/14_thumb_P_1406496440591.jpg', 'images/201407/source_img/14_P_1406496440695.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('15', '15', 'images/201407/goods_img/15_P_1406496491496.jpg', '', 'images/201407/thumb_img/15_thumb_P_1406496491302.jpg', 'images/201407/source_img/15_P_1406496491925.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('16', '16', 'images/201407/goods_img/16_P_1406496556947.jpg', '', 'images/201407/thumb_img/16_thumb_P_1406496556818.jpg', 'images/201407/source_img/16_P_1406496556071.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('17', '17', 'images/201407/goods_img/17_P_1406496601873.jpg', '', 'images/201407/thumb_img/17_thumb_P_1406496601456.jpg', 'images/201407/source_img/17_P_1406496601782.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('18', '18', 'images/201407/goods_img/18_P_1406496660883.jpg', '', 'images/201407/thumb_img/18_thumb_P_1406496660656.jpg', 'images/201407/source_img/18_P_1406496660917.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('19', '19', 'images/201407/goods_img/19_P_1406496704323.jpg', '', 'images/201407/thumb_img/19_thumb_P_1406496704606.jpg', 'images/201407/source_img/19_P_1406496704865.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('20', '20', 'images/201407/goods_img/20_P_1406496819238.jpg', '', 'images/201407/thumb_img/20_thumb_P_1406496819187.jpg', 'images/201407/source_img/20_P_1406496819344.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('21', '21', 'images/201407/goods_img/21_P_1406496923168.jpg', '', 'images/201407/thumb_img/21_thumb_P_1406496923667.jpg', 'images/201407/source_img/21_P_1406496923004.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('22', '22', 'images/201407/goods_img/22_P_1406496982047.jpg', '', 'images/201407/thumb_img/22_thumb_P_1406496982015.jpg', 'images/201407/source_img/22_P_1406496982005.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('23', '23', 'images/201407/goods_img/23_P_1406497060675.jpg', '', 'images/201407/thumb_img/23_thumb_P_1406497060558.jpg', 'images/201407/source_img/23_P_1406497060056.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('24', '24', 'images/201407/goods_img/24_P_1406497130350.jpg', '', 'images/201407/thumb_img/24_thumb_P_1406497130077.jpg', 'images/201407/source_img/24_P_1406497130212.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('25', '25', 'images/201407/goods_img/25_P_1406497202966.jpg', '', 'images/201407/thumb_img/25_thumb_P_1406497202498.jpg', 'images/201407/source_img/25_P_1406497202504.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('26', '26', 'images/201407/goods_img/26_P_1406497331034.jpg', '', 'images/201407/thumb_img/26_thumb_P_1406497331303.jpg', 'images/201407/source_img/26_P_1406497331611.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('27', '27', 'images/201407/goods_img/27_P_1406497395852.jpg', '', 'images/201407/thumb_img/27_thumb_P_1406497395799.jpg', 'images/201407/source_img/27_P_1406497395592.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('28', '28', 'images/201407/goods_img/28_P_1406497460552.jpg', '', 'images/201407/thumb_img/28_thumb_P_1406497460427.jpg', 'images/201407/source_img/28_P_1406497460813.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('29', '29', 'images/201407/goods_img/29_P_1406498350166.jpg', '', 'images/201407/thumb_img/29_thumb_P_1406498350769.jpg', 'images/201407/source_img/29_P_1406498350203.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('30', '30', 'images/201407/goods_img/30_P_1406498470129.jpg', '', 'images/201407/thumb_img/30_thumb_P_1406498470100.jpg', 'images/201407/source_img/30_P_1406498470182.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('31', '31', 'images/201407/goods_img/31_P_1406498550069.jpg', '', 'images/201407/thumb_img/31_thumb_P_1406498550465.jpg', 'images/201407/source_img/31_P_1406498550616.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('32', '32', 'images/201407/goods_img/32_P_1406498608673.jpg', '', 'images/201407/thumb_img/32_thumb_P_1406498608864.jpg', 'images/201407/source_img/32_P_1406498608967.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('33', '33', 'images/201407/goods_img/33_P_1406498664888.jpg', '', 'images/201407/thumb_img/33_thumb_P_1406498664969.jpg', 'images/201407/source_img/33_P_1406498664610.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('34', '34', 'images/201407/goods_img/34_P_1406498733527.jpg', '', 'images/201407/thumb_img/34_thumb_P_1406498733544.jpg', 'images/201407/source_img/34_P_1406498733247.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('35', '35', 'images/201407/goods_img/35_P_1406499137234.jpg', '', 'images/201407/thumb_img/35_thumb_P_1406499137818.jpg', 'images/201407/source_img/35_P_1406499137183.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('36', '36', 'images/201407/goods_img/36_P_1406499228496.jpg', '', 'images/201407/thumb_img/36_thumb_P_1406499228786.jpg', 'images/201407/source_img/36_P_1406499228102.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('37', '37', 'images/201407/goods_img/37_P_1406499266639.jpg', '', 'images/201407/thumb_img/37_thumb_P_1406499266231.jpg', 'images/201407/source_img/37_P_1406499266582.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('38', '38', 'images/201407/goods_img/38_P_1406499360193.jpg', '', 'images/201407/thumb_img/38_thumb_P_1406499360010.jpg', 'images/201407/source_img/38_P_1406499360145.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('39', '39', 'images/201407/goods_img/39_P_1406499391129.jpg', '', 'images/201407/thumb_img/39_thumb_P_1406499391032.jpg', 'images/201407/source_img/39_P_1406499391938.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('40', '40', 'images/201407/goods_img/40_P_1406499458551.jpg', '', 'images/201407/thumb_img/40_thumb_P_1406499458389.jpg', 'images/201407/source_img/40_P_1406499458081.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('41', '41', 'images/201407/goods_img/41_P_1406499507763.jpg', '', 'images/201407/thumb_img/41_thumb_P_1406499507190.jpg', 'images/201407/source_img/41_P_1406499507029.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('42', '42', 'images/201407/goods_img/42_P_1406499686189.jpg', '', 'images/201407/thumb_img/42_thumb_P_1406499686141.jpg', 'images/201407/source_img/42_P_1406499686267.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('43', '43', 'images/201407/goods_img/43_P_1406499764674.jpg', '', 'images/201407/thumb_img/43_thumb_P_1406499764179.jpg', 'images/201407/source_img/43_P_1406499764124.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('44', '45', 'images/201407/goods_img/45_P_1406499940522.jpg', '', 'images/201407/thumb_img/45_thumb_P_1406499940397.jpg', 'images/201407/source_img/45_P_1406499940494.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('45', '46', 'images/201407/goods_img/46_P_1406500062979.jpg', '', 'images/201407/thumb_img/46_thumb_P_1406500062120.jpg', 'images/201407/source_img/46_P_1406500062452.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('46', '47', 'images/201407/goods_img/47_P_1406500120724.jpg', '', 'images/201407/thumb_img/47_thumb_P_1406500120136.jpg', 'images/201407/source_img/47_P_1406500120431.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('47', '48', 'images/201407/goods_img/48_P_1406500169657.jpg', '', 'images/201407/thumb_img/48_thumb_P_1406500169748.jpg', 'images/201407/source_img/48_P_1406500169073.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('48', '49', 'images/201407/goods_img/49_P_1406500221628.jpg', '', 'images/201407/thumb_img/49_thumb_P_1406500221515.jpg', 'images/201407/source_img/49_P_1406500221379.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('49', '50', 'images/201407/goods_img/50_P_1406500264730.jpg', '', 'images/201407/thumb_img/50_thumb_P_1406500264353.jpg', 'images/201407/source_img/50_P_1406500264723.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('50', '51', 'images/201407/goods_img/51_P_1406500301941.jpg', '', 'images/201407/thumb_img/51_thumb_P_1406500301858.jpg', 'images/201407/source_img/51_P_1406500301949.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('51', '44', 'images/201407/goods_img/44_P_1406500347356.jpg', '', 'images/201407/thumb_img/44_thumb_P_1406500347904.jpg', 'images/201407/source_img/44_P_1406500347473.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('52', '52', 'images/201407/goods_img/52_P_1406500407918.jpg', '', 'images/201407/thumb_img/52_thumb_P_1406500408639.jpg', 'images/201407/source_img/52_P_1406500407255.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('53', '53', 'images/201407/goods_img/53_P_1406501874645.jpg', '', 'images/201407/thumb_img/53_thumb_P_1406501874894.jpg', 'images/201407/source_img/53_P_1406501874370.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('54', '54', 'images/201407/goods_img/54_P_1406501940388.jpg', '', 'images/201407/thumb_img/54_thumb_P_1406501940491.jpg', 'images/201407/source_img/54_P_1406501940752.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('55', '56', 'images/201407/goods_img/56_P_1406502138102.jpg', '', 'images/201407/thumb_img/56_thumb_P_1406502138005.jpg', 'images/201407/source_img/56_P_1406502138368.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('56', '57', 'images/201407/goods_img/57_P_1406502251490.jpg', '', 'images/201407/thumb_img/57_thumb_P_1406502251731.jpg', 'images/201407/source_img/57_P_1406502251801.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('57', '58', 'images/201407/goods_img/58_P_1406502297223.jpg', '', 'images/201407/thumb_img/58_thumb_P_1406502297273.jpg', 'images/201407/source_img/58_P_1406502297853.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('58', '59', 'images/201407/goods_img/59_P_1406502346711.jpg', '', 'images/201407/thumb_img/59_thumb_P_1406502346096.jpg', 'images/201407/source_img/59_P_1406502346931.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('59', '60', 'images/201407/goods_img/60_P_1406502424016.jpg', '', 'images/201407/thumb_img/60_thumb_P_1406502424305.jpg', 'images/201407/source_img/60_P_1406502424559.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('60', '55', 'images/201407/goods_img/55_P_1406502466232.jpg', '', 'images/201407/thumb_img/55_thumb_P_1406502466712.jpg', 'images/201407/source_img/55_P_1406502466054.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('61', '61', 'images/201407/goods_img/61_P_1406502691815.jpg', '', 'images/201407/thumb_img/61_thumb_P_1406502691626.jpg', 'images/201407/source_img/61_P_1406502691042.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('62', '62', 'images/201407/goods_img/62_P_1406502731407.jpg', '', 'images/201407/thumb_img/62_thumb_P_1406502731435.jpg', 'images/201407/source_img/62_P_1406502731381.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('63', '63', 'images/201407/goods_img/63_P_1406502822582.jpg', '', 'images/201407/thumb_img/63_thumb_P_1406502822367.jpg', 'images/201407/source_img/63_P_1406502822581.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('64', '64', 'images/201407/goods_img/64_P_1406502869892.jpg', '', 'images/201407/thumb_img/64_thumb_P_1406502869963.jpg', 'images/201407/source_img/64_P_1406502869161.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('65', '65', 'images/201407/goods_img/65_P_1406502906725.jpg', '', 'images/201407/thumb_img/65_thumb_P_1406502906302.jpg', 'images/201407/source_img/65_P_1406502906611.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('66', '66', 'images/201407/goods_img/66_P_1406502944929.jpg', '', 'images/201407/thumb_img/66_thumb_P_1406502944814.jpg', 'images/201407/source_img/66_P_1406502944405.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('67', '67', 'images/201407/goods_img/67_P_1406502995679.jpg', '', 'images/201407/thumb_img/67_thumb_P_1406502995422.jpg', 'images/201407/source_img/67_P_1406502995038.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('68', '68', 'images/201407/goods_img/68_P_1406503025840.jpg', '', 'images/201407/thumb_img/68_thumb_P_1406503025557.jpg', 'images/201407/source_img/68_P_1406503025394.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('69', '69', 'images/201407/goods_img/69_P_1406503184117.jpg', '', 'images/201407/thumb_img/69_thumb_P_1406503184630.jpg', 'images/201407/source_img/69_P_1406503184747.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('70', '70', 'images/201407/goods_img/70_P_1406503216416.jpg', '', 'images/201407/thumb_img/70_thumb_P_1406503216863.jpg', 'images/201407/source_img/70_P_1406503216338.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('71', '71', 'images/201407/goods_img/71_P_1406503239489.jpg', '', 'images/201407/thumb_img/71_thumb_P_1406503239188.jpg', 'images/201407/source_img/71_P_1406503239169.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('72', '72', 'images/201407/goods_img/72_P_1406503279247.jpg', '', 'images/201407/thumb_img/72_thumb_P_1406503279863.jpg', 'images/201407/source_img/72_P_1406503279203.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('73', '73', 'images/201407/goods_img/73_P_1406503302205.jpg', '', 'images/201407/thumb_img/73_thumb_P_1406503302052.jpg', 'images/201407/source_img/73_P_1406503302692.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('74', '74', 'images/201407/goods_img/74_P_1406503337076.jpg', '', 'images/201407/thumb_img/74_thumb_P_1406503337657.jpg', 'images/201407/source_img/74_P_1406503337536.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('75', '75', 'images/201407/goods_img/75_P_1406503362900.jpg', '', 'images/201407/thumb_img/75_thumb_P_1406503362621.jpg', 'images/201407/source_img/75_P_1406503362854.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('76', '76', 'images/201407/goods_img/76_P_1406503516852.jpg', '', 'images/201407/thumb_img/76_thumb_P_1406503516087.jpg', 'images/201407/source_img/76_P_1406503516546.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('77', '77', 'images/201407/goods_img/77_P_1406503551020.jpg', '', 'images/201407/thumb_img/77_thumb_P_1406503551243.jpg', 'images/201407/source_img/77_P_1406503551301.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('78', '78', 'images/201407/goods_img/78_P_1406503592376.jpg', '', 'images/201407/thumb_img/78_thumb_P_1406503592696.jpg', 'images/201407/source_img/78_P_1406503592692.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('79', '79', 'images/201407/goods_img/79_P_1406503627702.jpg', '', 'images/201407/thumb_img/79_thumb_P_1406503627843.jpg', 'images/201407/source_img/79_P_1406503627079.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('80', '80', 'images/201407/goods_img/80_P_1406503667891.jpg', '', 'images/201407/thumb_img/80_thumb_P_1406503667773.jpg', 'images/201407/source_img/80_P_1406503667772.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('81', '81', 'images/201407/goods_img/81_P_1406503698330.jpg', '', 'images/201407/thumb_img/81_thumb_P_1406503698557.jpg', 'images/201407/source_img/81_P_1406503698459.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('82', '82', 'images/201407/goods_img/82_P_1406503733395.jpg', '', 'images/201407/thumb_img/82_thumb_P_1406503733031.jpg', 'images/201407/source_img/82_P_1406503733993.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('83', '83', 'images/201407/goods_img/83_P_1406503766376.jpg', '', 'images/201407/thumb_img/83_thumb_P_1406503766927.jpg', 'images/201407/source_img/83_P_1406503766100.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('84', '85', 'images/201407/goods_img/85_P_1406503933337.jpg', '', 'images/201407/thumb_img/85_thumb_P_1406503933161.jpg', 'images/201407/source_img/85_P_1406503933489.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('85', '86', 'images/201407/goods_img/86_P_1406504012940.jpg', '', 'images/201407/thumb_img/86_thumb_P_1406504012134.jpg', 'images/201407/source_img/86_P_1406504012978.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('86', '87', 'images/201407/goods_img/87_P_1406504046382.jpg', '', 'images/201407/thumb_img/87_thumb_P_1406504046790.jpg', 'images/201407/source_img/87_P_1406504046512.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('87', '88', 'images/201407/goods_img/88_P_1406504077156.jpg', '', 'images/201407/thumb_img/88_thumb_P_1406504077531.jpg', 'images/201407/source_img/88_P_1406504077503.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('88', '89', 'images/201407/goods_img/89_P_1406504107192.jpg', '', 'images/201407/thumb_img/89_thumb_P_1406504107642.jpg', 'images/201407/source_img/89_P_1406504107016.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('89', '90', 'images/201407/goods_img/90_P_1406504148543.jpg', '', 'images/201407/thumb_img/90_thumb_P_1406504148910.jpg', 'images/201407/source_img/90_P_1406504148905.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('90', '91', 'images/201407/goods_img/91_P_1406504177379.jpg', '', 'images/201407/thumb_img/91_thumb_P_1406504177018.jpg', 'images/201407/source_img/91_P_1406504177457.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('91', '92', 'images/201407/goods_img/92_P_1406506137808.jpg', '', 'images/201407/thumb_img/92_thumb_P_1406506137851.jpg', 'images/201407/source_img/92_P_1406506137400.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('92', '93', 'images/201407/goods_img/93_P_1406506178519.jpg', '', 'images/201407/thumb_img/93_thumb_P_1406506178180.jpg', 'images/201407/source_img/93_P_1406506178496.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('93', '94', 'images/201407/goods_img/94_P_1406506263014.jpg', '', 'images/201407/thumb_img/94_thumb_P_1406506263453.jpg', 'images/201407/source_img/94_P_1406506263956.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('94', '95', 'images/201407/goods_img/95_P_1406506314534.jpg', '', 'images/201407/thumb_img/95_thumb_P_1406506314261.jpg', 'images/201407/source_img/95_P_1406506314775.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('95', '96', 'images/201407/goods_img/96_P_1406506353699.jpg', '', 'images/201407/thumb_img/96_thumb_P_1406506353738.jpg', 'images/201407/source_img/96_P_1406506353378.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('96', '97', 'images/201407/goods_img/97_P_1406506387233.jpg', '', 'images/201407/thumb_img/97_thumb_P_1406506387854.jpg', 'images/201407/source_img/97_P_1406506387546.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('97', '98', 'images/201407/goods_img/98_P_1406506427948.jpg', '', 'images/201407/thumb_img/98_thumb_P_1406506427317.jpg', 'images/201407/source_img/98_P_1406506427671.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('98', '99', 'images/201407/goods_img/99_P_1406506629798.jpg', '', 'images/201407/thumb_img/99_thumb_P_1406506629280.jpg', 'images/201407/source_img/99_P_1406506629611.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('99', '100', 'images/201407/goods_img/100_P_1406506666851.jpg', '', 'images/201407/thumb_img/100_thumb_P_1406506666768.jpg', 'images/201407/source_img/100_P_1406506666194.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('100', '101', 'images/201407/goods_img/101_P_1406506724752.jpg', '', 'images/201407/thumb_img/101_thumb_P_1406506724307.jpg', 'images/201407/source_img/101_P_1406506724455.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('101', '102', 'images/201407/goods_img/102_P_1406506756829.jpg', '', 'images/201407/thumb_img/102_thumb_P_1406506756946.jpg', 'images/201407/source_img/102_P_1406506756471.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('102', '103', 'images/201407/goods_img/103_P_1406506781091.jpg', '', 'images/201407/thumb_img/103_thumb_P_1406506781505.jpg', 'images/201407/source_img/103_P_1406506781430.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('103', '104', 'images/201407/goods_img/104_P_1406506814881.jpg', '', 'images/201407/thumb_img/104_thumb_P_1406506814909.jpg', 'images/201407/source_img/104_P_1406506814611.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('104', '105', 'images/201407/goods_img/105_P_1406506846876.jpg', '', 'images/201407/thumb_img/105_thumb_P_1406506846002.jpg', 'images/201407/source_img/105_P_1406506846111.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('105', '106', 'images/201407/goods_img/106_P_1406506885029.jpg', '', 'images/201407/thumb_img/106_thumb_P_1406506885016.jpg', 'images/201407/source_img/106_P_1406506885546.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('106', '107', 'images/201407/goods_img/107_P_1406763568882.jpg', '', 'images/201407/thumb_img/107_thumb_P_1406763568463.jpg', 'images/201407/source_img/107_P_1406763568694.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('107', '2', 'images/201408/goods_img/2_P_1407366894513.jpg', '', 'images/201408/thumb_img/2_thumb_P_1407366894006.jpg', 'images/201408/source_img/2_P_1407366894511.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('108', '2', 'images/201408/goods_img/2_P_1407366894399.jpg', '', 'images/201408/thumb_img/2_thumb_P_1407366894644.jpg', 'images/201408/source_img/2_P_1407366894638.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('109', '2', 'images/201408/goods_img/2_P_1407366894408.jpg', '', 'images/201408/thumb_img/2_thumb_P_1407366894563.jpg', 'images/201408/source_img/2_P_1407366894863.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('110', '2', 'images/201408/goods_img/2_P_1407366894796.jpg', '', 'images/201408/thumb_img/2_thumb_P_1407366894525.jpg', 'images/201408/source_img/2_P_1407366894997.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('111', '2', 'images/201408/goods_img/2_P_1407366894276.jpg', '', 'images/201408/thumb_img/2_thumb_P_1407366894290.jpg', 'images/201408/source_img/2_P_1407366894096.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('112', '109', 'images/201408/goods_img/109_P_1408035560123.jpg', '', 'images/201408/thumb_img/109_thumb_P_1408035560871.jpg', 'images/201408/source_img/109_P_1408035560035.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('113', '109', 'images/201408/goods_img/109_P_1408035732269.jpg', '', 'images/201408/thumb_img/109_thumb_P_1408035732963.jpg', 'images/201408/source_img/109_P_1408035732632.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('114', '110', 'images/201408/goods_img/110_P_1408035782461.jpg', '', 'images/201408/thumb_img/110_thumb_P_1408035782798.jpg', 'images/201408/source_img/110_P_1408035782977.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('115', '111', 'images/201408/goods_img/111_P_1408035901206.jpg', '', 'images/201408/thumb_img/111_thumb_P_1408035901260.jpg', 'images/201408/source_img/111_P_1408035901348.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('116', '112', 'images/201408/goods_img/112_P_1408035931660.jpg', '', 'images/201408/thumb_img/112_thumb_P_1408035931583.jpg', 'images/201408/source_img/112_P_1408035931882.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('117', '113', 'images/201408/goods_img/113_P_1408035966001.jpg', '', 'images/201408/thumb_img/113_thumb_P_1408035966654.jpg', 'images/201408/source_img/113_P_1408035966635.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('118', '114', 'images/201408/goods_img/114_P_1408035994284.jpg', '', 'images/201408/thumb_img/114_thumb_P_1408035994365.jpg', 'images/201408/source_img/114_P_1408035994688.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('119', '115', 'images/201408/goods_img/115_P_1408036037940.jpg', '', 'images/201408/thumb_img/115_thumb_P_1408036037165.jpg', 'images/201408/source_img/115_P_1408036037697.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('120', '116', 'images/201408/goods_img/116_P_1408036091203.jpg', '', 'images/201408/thumb_img/116_thumb_P_1408036091024.jpg', 'images/201408/source_img/116_P_1408036091555.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('121', '117', 'images/201408/goods_img/117_P_1408036206053.jpg', '', 'images/201408/thumb_img/117_thumb_P_1408036206791.jpg', 'images/201408/source_img/117_P_1408036206342.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('122', '118', 'images/201408/goods_img/118_P_1408036256565.jpg', '', 'images/201408/thumb_img/118_thumb_P_1408036256087.jpg', 'images/201408/source_img/118_P_1408036256971.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('123', '119', 'images/201408/goods_img/119_P_1408036951359.jpg', '', 'images/201408/thumb_img/119_thumb_P_1408036951064.jpg', 'images/201408/source_img/119_P_1408036951057.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('124', '120', 'images/201408/goods_img/120_P_1408036989226.jpg', '', 'images/201408/thumb_img/120_thumb_P_1408036989500.jpg', 'images/201408/source_img/120_P_1408036989505.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('125', '121', 'images/201408/goods_img/121_P_1408037492071.jpg', '', 'images/201408/thumb_img/121_thumb_P_1408037492490.jpg', 'images/201408/source_img/121_P_1408037492763.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('126', '122', 'images/201408/goods_img/122_P_1408037526602.jpg', '', 'images/201408/thumb_img/122_thumb_P_1408037526551.jpg', 'images/201408/source_img/122_P_1408037526210.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('127', '123', 'images/201408/goods_img/123_P_1408037702696.jpg', '', 'images/201408/thumb_img/123_thumb_P_1408037702109.jpg', 'images/201408/source_img/123_P_1408037702460.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('128', '124', 'images/201408/goods_img/124_P_1408037748376.jpg', '', 'images/201408/thumb_img/124_thumb_P_1408037748665.jpg', 'images/201408/source_img/124_P_1408037748439.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('129', '125', 'images/201408/goods_img/125_P_1408037781327.jpg', '', 'images/201408/thumb_img/125_thumb_P_1408037781116.jpg', 'images/201408/source_img/125_P_1408037781848.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('130', '126', 'images/201408/goods_img/126_P_1408037827124.jpg', '', 'images/201408/thumb_img/126_thumb_P_1408037827221.jpg', 'images/201408/source_img/126_P_1408037827615.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('131', '127', 'images/201408/goods_img/127_P_1408037863088.jpg', '', 'images/201408/thumb_img/127_thumb_P_1408037863139.jpg', 'images/201408/source_img/127_P_1408037863193.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('132', '128', 'images/201408/goods_img/128_P_1408037886202.jpg', '', 'images/201408/thumb_img/128_thumb_P_1408037886004.jpg', 'images/201408/source_img/128_P_1408037886048.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('133', '129', 'images/201408/goods_img/129_P_1408037931534.jpg', '', 'images/201408/thumb_img/129_thumb_P_1408037931220.jpg', 'images/201408/source_img/129_P_1408037931667.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('134', '130', 'images/201408/goods_img/130_P_1408038003317.jpg', '', 'images/201408/thumb_img/130_thumb_P_1408038003933.jpg', 'images/201408/source_img/130_P_1408038003236.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('135', '131', 'images/201408/goods_img/131_P_1408038199297.jpg', '', 'images/201408/thumb_img/131_thumb_P_1408038199789.jpg', 'images/201408/source_img/131_P_1408038199222.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('136', '132', 'images/201408/goods_img/132_P_1408038228169.jpg', '', 'images/201408/thumb_img/132_thumb_P_1408038228024.jpg', 'images/201408/source_img/132_P_1408038228548.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('137', '133', 'images/201408/goods_img/133_P_1408038271072.jpg', '', 'images/201408/thumb_img/133_thumb_P_1408038271242.jpg', 'images/201408/source_img/133_P_1408038271201.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('138', '134', 'images/201408/goods_img/134_P_1408038301650.jpg', '', 'images/201408/thumb_img/134_thumb_P_1408038301220.jpg', 'images/201408/source_img/134_P_1408038301615.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('139', '135', 'images/201408/goods_img/135_P_1408038332716.jpg', '', 'images/201408/thumb_img/135_thumb_P_1408038332622.jpg', 'images/201408/source_img/135_P_1408038331243.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('140', '136', 'images/201408/goods_img/136_P_1408038460232.jpg', '', 'images/201408/thumb_img/136_thumb_P_1408038460490.jpg', 'images/201408/source_img/136_P_1408038460822.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('141', '137', 'images/201408/goods_img/137_P_1408038494410.jpg', '', 'images/201408/thumb_img/137_thumb_P_1408038494813.jpg', 'images/201408/source_img/137_P_1408038494403.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('142', '138', 'images/201408/goods_img/138_P_1408038526851.jpg', '', 'images/201408/thumb_img/138_thumb_P_1408038526702.jpg', 'images/201408/source_img/138_P_1408038526228.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('143', '139', 'images/201408/goods_img/139_P_1408038567427.jpg', '', 'images/201408/thumb_img/139_thumb_P_1408038567360.jpg', 'images/201408/source_img/139_P_1408038567341.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('144', '140', 'images/201408/goods_img/140_P_1408038607579.jpg', '', 'images/201408/thumb_img/140_thumb_P_1408038607042.jpg', 'images/201408/source_img/140_P_1408038607789.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('145', '108', 'images/201408/goods_img/108_P_1408039499042.jpg', '', 'images/201408/thumb_img/108_thumb_P_1408039499015.jpg', 'images/201408/source_img/108_P_1408039499871.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('146', '141', 'images/201408/goods_img/141_P_1408400311325.jpg', '', 'images/201408/thumb_img/141_thumb_P_1408400311091.jpg', 'images/201408/source_img/141_P_1408400311144.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('147', '142', 'images/201408/goods_img/142_P_1408400346249.jpg', '', 'images/201408/thumb_img/142_thumb_P_1408400346822.jpg', 'images/201408/source_img/142_P_1408400346759.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('148', '143', 'images/201408/goods_img/143_P_1408400527024.jpg', '', 'images/201408/thumb_img/143_thumb_P_1408400527753.jpg', 'images/201408/source_img/143_P_1408400527954.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('149', '144', 'images/201408/goods_img/144_P_1408400573845.jpg', '', 'images/201408/thumb_img/144_thumb_P_1408400573796.jpg', 'images/201408/source_img/144_P_1408400573723.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('150', '144', 'images/201507/goods_img/144_P_1436292973591.jpg', '', 'images/201507/thumb_img/144_thumb_P_1436292973726.jpg', 'images/201507/source_img/144_P_1436292973433.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('151', '145', 'images/201507/goods_img/145_P_1436294383745.jpg', '', 'images/201507/thumb_img/145_thumb_P_1436294383653.jpg', 'images/201507/source_img/145_P_1436294383334.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('152', '146', 'images/201507/goods_img/146_P_1436294482852.jpg', '', 'images/201507/thumb_img/146_thumb_P_1436294482963.jpg', 'images/201507/source_img/146_P_1436294482856.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('153', '147', 'images/201507/goods_img/147_P_1436294718753.jpg', '', 'images/201507/thumb_img/147_thumb_P_1436294718737.jpg', 'images/201507/source_img/147_P_1436294718898.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('154', '148', 'images/201507/goods_img/148_P_1436294782990.jpg', '', 'images/201507/thumb_img/148_thumb_P_1436294782276.jpg', 'images/201507/source_img/148_P_1436294782494.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('155', '149', 'images/201507/goods_img/149_P_1436294828718.jpg', '', 'images/201507/thumb_img/149_thumb_P_1436294828684.jpg', 'images/201507/source_img/149_P_1436294828993.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('156', '150', 'images/201507/goods_img/150_P_1436294934090.jpg', '', 'images/201507/thumb_img/150_thumb_P_1436294934832.jpg', 'images/201507/source_img/150_P_1436294934586.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('157', '151', 'images/201507/goods_img/151_P_1436294971536.jpg', '', 'images/201507/thumb_img/151_thumb_P_1436294971704.jpg', 'images/201507/source_img/151_P_1436294971818.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('158', '152', 'images/201507/goods_img/152_P_1436295000258.jpg', '', 'images/201507/thumb_img/152_thumb_P_1436295000121.jpg', 'images/201507/source_img/152_P_1436295000657.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('159', '153', 'images/201507/goods_img/153_P_1436295027486.jpg', '', 'images/201507/thumb_img/153_thumb_P_1436295027992.jpg', 'images/201507/source_img/153_P_1436295027469.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('160', '154', 'images/201507/goods_img/154_P_1436295059339.jpg', '', 'images/201507/thumb_img/154_thumb_P_1436295059648.jpg', 'images/201507/source_img/154_P_1436295059450.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('161', '155', 'images/201507/goods_img/155_P_1436295224646.jpg', '', 'images/201507/thumb_img/155_thumb_P_1436295224536.jpg', 'images/201507/source_img/155_P_1436295224023.jpg');

-- ----------------------------
-- Table structure for `ecs_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_type`;
CREATE TABLE `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL auto_increment,
  `cat_name` varchar(60) NOT NULL default '',
  `enabled` tinyint(1) unsigned NOT NULL default '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY  (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_type
-- ----------------------------
INSERT INTO `ecs_goods_type` VALUES ('1', '空调', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('2', '电视', '1', '');

-- ----------------------------
-- Table structure for `ecs_group_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_group_goods`;
CREATE TABLE `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL default '0',
  `group_id` tinyint(3) unsigned NOT NULL default '0' COMMENT '配件分组',
  PRIMARY KEY  (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_group_goods
-- ----------------------------
INSERT INTO `ecs_group_goods` VALUES ('107', '40', '2380.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('107', '39', '148.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('107', '42', '179.00', '1', '2');
INSERT INTO `ecs_group_goods` VALUES ('107', '31', '459.00', '1', '3');
INSERT INTO `ecs_group_goods` VALUES ('2', '7', '408.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('2', '110', '1599.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('2', '18', '49.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('2', '23', '249.00', '1', '2');
INSERT INTO `ecs_group_goods` VALUES ('2', '27', '1549.00', '1', '2');
INSERT INTO `ecs_group_goods` VALUES ('2', '109', '1199.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('2', '1', '1299.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('2', '108', '1399.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('2', '13', '29.00', '1', '1');

-- ----------------------------
-- Table structure for `ecs_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_keywords`;
CREATE TABLE `ecs_keywords` (
  `date` date NOT NULL default '0000-00-00',
  `searchengine` varchar(20) NOT NULL default '',
  `keyword` varchar(90) NOT NULL default '',
  `count` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`date`,`searchengine`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_keywords
-- ----------------------------
INSERT INTO `ecs_keywords` VALUES ('2009-04-21', 'ecshop', '诺基亚', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-04-27', 'ecshop', '智能手机', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-04', 'ecshop', '斤', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-10', 'ecshop', '诺基亚', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-11', 'ecshop', '智能手机', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-11', 'ecshop', '诺基亚', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-12', 'ecshop', '三星', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-12', 'ecshop', '智能手机', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-12', 'ecshop', 'p806', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-12', 'ecshop', '诺基亚', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-12', 'ecshop', '夏新', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-18', 'ecshop', '52', '2');
INSERT INTO `ecs_keywords` VALUES ('2009-05-22', 'ecshop', 'p', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-05-15', 'ecshop', '棉色织格子花边舒适女式长袖衬衫', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-06-11', 'ecshop', '衣', '55');
INSERT INTO `ecs_keywords` VALUES ('2014-06-11', 'ecshop', '1', '26');
INSERT INTO `ecs_keywords` VALUES ('2014-06-12', 'ecshop', '1', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-07-23', 'ecshop', '1', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-07-23', 'ecshop', '天空', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-07', 'ecshop', 'D48', '2');
INSERT INTO `ecs_keywords` VALUES ('2014-08-08', 'ecshop', 'D48', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-09', 'ecshop', 'D48', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-11', 'ecshop', '1', '40');
INSERT INTO `ecs_keywords` VALUES ('2014-08-11', 'ecshop', 'D48MF', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', '1', '3');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', '的（Midea）', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', 'FS406C', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', '4L', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', '电脑版电饭煲', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', 'D48MF', '2');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', '防晒隔离', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-14', 'ecshop', '1', '6');
INSERT INTO `ecs_keywords` VALUES ('2014-08-15', 'ecshop', '1', '5');
INSERT INTO `ecs_keywords` VALUES ('2014-08-20', 'ecshop', 'D48MF', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-04-21', 'ecshop', 'dsadsa', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-04-24', 'ecshop', 'dsada', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-04-24', 'ecshop', '1', '2');
INSERT INTO `ecs_keywords` VALUES ('2015-04-24', 'ecshop', '办公文具', '2');
INSERT INTO `ecs_keywords` VALUES ('2015-04-24', 'ecshop', '夏装1折', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-07-08', 'ecshop', '特推系列真皮单肩斜挎女包', '2');
INSERT INTO `ecs_keywords` VALUES ('2015-07-08', 'ecshop', '办公文具', '1');

-- ----------------------------
-- Table structure for `ecs_link_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_link_goods`;
CREATE TABLE `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL default '0',
  `is_double` tinyint(1) unsigned NOT NULL default '0',
  `admin_id` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_link_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_mail_templates`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_mail_templates`;
CREATE TABLE `ecs_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL auto_increment,
  `template_code` varchar(30) NOT NULL default '',
  `is_html` tinyint(1) unsigned NOT NULL default '0',
  `template_subject` varchar(200) NOT NULL default '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL default '0',
  `last_send` int(10) unsigned NOT NULL default '0',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY  (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_mail_templates
-- ----------------------------
INSERT INTO `ecs_mail_templates` VALUES ('1', 'send_password', '1', '密码找回', '{$user_name}您好！<br>\n<br>\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br>\n<br>\n<a href=\"{$reset_email}\" target=\"_blank\">{$reset_email}</a><br>\n<br>\n以确认您的新密码重置操作！<br>\n<br>\n{$shop_name}<br>\n{$send_date}', '1194824789', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('2', 'order_confirm', '0', '订单确认通知', '亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n', '1158226370', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('3', 'deliver_notice', '1', '发货通知', '亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href=\"{$confirm_url}\" target=\"_blank\">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href=\"{$send_msg_url}\" target=\"_blank\">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}', '1194823291', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('4', 'order_cancel', '0', '订单取消', '亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}', '1156491130', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('5', 'order_invalid', '0', '订单无效', '亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}', '1156491164', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('6', 'send_bonus', '0', '发红包', '亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n', '1156491184', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('7', 'group_buy', '1', '团购商品', '亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href=\"{$shop_url}\" target=\"_blank\">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', '1194824668', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('8', 'register_validate', '1', '邮件验证', '{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href=\"{$validate_email}\" target=\"_blank\">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('9', 'virtual_card', '0', '虚拟卡片', '亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('10', 'attention_list', '0', '关注商品', '亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}', '1183851073', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('11', 'remind_of_new_order', '0', '新订单通知', '亲爱的店长，您好：\n   快来看看吧，又有新订单了。\n    订单号:{$order.order_sn} \n 订单金额:{$order.order_amount}，\n 用户购买商品:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(货号:{$goods_data.goods_sn})    {/foreach} \n\n 收货人:{$order.consignee}， \n 收货人地址:{$order.address}，\n 收货人电话:{$order.tel} {$order.mobile}, \n 配送方式:{$order.shipping_name}(费用:{$order.shipping_fee}), \n 付款方式:{$order.pay_name}(费用:{$order.pay_fee})。\n\n               系统提醒\n               {$send_date}', '1196239170', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('12', 'goods_booking', '1', '缺货回复', '亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href=\"{$goods_link}\" target=\"_blank\">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}', '0', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('13', 'user_message', '1', '留言回复', '亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('14', 'recomment', '1', '用户评论回复', '亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');

-- ----------------------------
-- Table structure for `ecs_member_price`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_member_price`;
CREATE TABLE `ecs_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `user_rank` tinyint(3) NOT NULL default '0',
  `user_price` decimal(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_member_price
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_nav`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_nav`;
CREATE TABLE `ecs_nav` (
  `id` mediumint(8) NOT NULL auto_increment,
  `ctype` varchar(10) default NULL,
  `cid` smallint(5) unsigned default NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_nav
-- ----------------------------
INSERT INTO `ecs_nav` VALUES ('2', null, null, '选购中心', '0', '2', '0', 'pick_out.php', 'top');
INSERT INTO `ecs_nav` VALUES ('3', '', '0', '查看购物车', '0', '0', '0', 'flow.php', 'top');
INSERT INTO `ecs_nav` VALUES ('6', null, null, '标签云', '0', '5', '6', 'tag_cloud.php', 'top');
INSERT INTO `ecs_nav` VALUES ('7', null, null, '免责条款', '1', '1', '0', 'article.php?id=1', 'bottom');
INSERT INTO `ecs_nav` VALUES ('8', null, null, '隐私保护', '1', '2', '0', 'article.php?id=2', 'bottom');
INSERT INTO `ecs_nav` VALUES ('9', null, null, '咨询热点', '1', '3', '0', 'article.php?id=3', 'bottom');
INSERT INTO `ecs_nav` VALUES ('10', null, null, '联系我们', '1', '4', '0', 'article.php?id=4', 'bottom');
INSERT INTO `ecs_nav` VALUES ('11', null, null, '公司简介', '1', '5', '0', 'article.php?id=5', 'bottom');
INSERT INTO `ecs_nav` VALUES ('12', null, null, '抵押方案', '1', '6', '0', 'wholesale.php', 'bottom');
INSERT INTO `ecs_nav` VALUES ('14', null, null, '公司门店', '1', '7', '0', 'myship.php', 'bottom');
INSERT INTO `ecs_nav` VALUES ('23', null, null, '报价单', '0', '6', '0', 'quotation.php', 'top');
INSERT INTO `ecs_nav` VALUES ('26', 'c', '1', '基金', '1', '1', '0', 'category.php?id=1', 'middle');
INSERT INTO `ecs_nav` VALUES ('33', null, null, '会员俱乐部', '1', '7', '0', '#', 'top');
INSERT INTO `ecs_nav` VALUES ('34', null, null, '企业频道', '1', '8', '0', '#', 'top');

-- ----------------------------
-- Table structure for `ecs_order_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_action`;
CREATE TABLE `ecs_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL auto_increment,
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `action_user` varchar(30) NOT NULL default '',
  `order_status` tinyint(1) unsigned NOT NULL default '0',
  `shipping_status` tinyint(1) unsigned NOT NULL default '0',
  `pay_status` tinyint(1) unsigned NOT NULL default '0',
  `action_place` tinyint(1) unsigned NOT NULL default '0',
  `action_note` varchar(255) NOT NULL default '',
  `log_time` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_order_action
-- ----------------------------
INSERT INTO `ecs_order_action` VALUES ('1', '1', 'admin', '1', '0', '2', '0', '1', '1406762036');
INSERT INTO `ecs_order_action` VALUES ('2', '1', 'admin', '5', '5', '2', '0', '', '1406762040');
INSERT INTO `ecs_order_action` VALUES ('3', '1', 'admin', '1', '1', '2', '1', '', '1406762046');
INSERT INTO `ecs_order_action` VALUES ('4', '2', 'admin', '1', '0', '2', '0', '1', '1406763629');
INSERT INTO `ecs_order_action` VALUES ('5', '2', 'admin', '5', '5', '2', '0', '', '1406763634');
INSERT INTO `ecs_order_action` VALUES ('6', '2', 'admin', '1', '1', '2', '1', '', '1406763639');
INSERT INTO `ecs_order_action` VALUES ('7', '3', 'admin', '1', '0', '2', '0', '1', '1407369185');
INSERT INTO `ecs_order_action` VALUES ('8', '3', 'admin', '5', '5', '2', '0', '', '1407369190');
INSERT INTO `ecs_order_action` VALUES ('9', '3', 'admin', '1', '1', '2', '1', '', '1407369195');
INSERT INTO `ecs_order_action` VALUES ('10', '5', 'admin', '1', '0', '2', '0', '1', '1407979997');
INSERT INTO `ecs_order_action` VALUES ('11', '5', 'admin', '5', '5', '2', '0', '', '1407980003');
INSERT INTO `ecs_order_action` VALUES ('12', '5', 'admin', '1', '1', '2', '1', '', '1407980010');
INSERT INTO `ecs_order_action` VALUES ('13', '6', 'admin', '1', '0', '2', '0', '1', '1408038990');
INSERT INTO `ecs_order_action` VALUES ('14', '6', 'admin', '5', '5', '2', '0', '', '1408038996');
INSERT INTO `ecs_order_action` VALUES ('15', '6', 'admin', '1', '1', '2', '1', '', '1408039002');
INSERT INTO `ecs_order_action` VALUES ('16', '6', 'admin', '5', '5', '2', '1', '', '1408317454');
INSERT INTO `ecs_order_action` VALUES ('17', '6', 'admin', '1', '1', '2', '1', '', '1408317460');
INSERT INTO `ecs_order_action` VALUES ('18', '5', 'admin', '5', '5', '2', '1', '', '1408317465');
INSERT INTO `ecs_order_action` VALUES ('19', '5', 'admin', '1', '1', '2', '1', '', '1408317469');
INSERT INTO `ecs_order_action` VALUES ('20', '3', 'admin', '5', '5', '2', '1', '', '1408390265');
INSERT INTO `ecs_order_action` VALUES ('21', '3', 'admin', '1', '1', '2', '1', '', '1408390270');
INSERT INTO `ecs_order_action` VALUES ('22', '1', 'admin', '5', '5', '2', '1', '', '1408390275');
INSERT INTO `ecs_order_action` VALUES ('23', '1', 'admin', '1', '1', '2', '1', '', '1408390277');
INSERT INTO `ecs_order_action` VALUES ('24', '2', 'admin', '5', '5', '2', '1', '', '1408390308');
INSERT INTO `ecs_order_action` VALUES ('25', '2', 'admin', '1', '1', '2', '1', '', '1408390312');
INSERT INTO `ecs_order_action` VALUES ('26', '16', 'admin', '1', '3', '2', '0', '', '1429651111');
INSERT INTO `ecs_order_action` VALUES ('27', '18', 'admin', '1', '0', '2', '0', '1', '1430244084');
INSERT INTO `ecs_order_action` VALUES ('28', '18', 'admin', '1', '3', '2', '0', '', '1430244089');
INSERT INTO `ecs_order_action` VALUES ('29', '18', 'admin', '5', '5', '2', '0', '', '1430244098');
INSERT INTO `ecs_order_action` VALUES ('30', '18', 'admin', '1', '1', '2', '1', '', '1430244106');

-- ----------------------------
-- Table structure for `ecs_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_goods`;
CREATE TABLE `ecs_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_name` varchar(120) NOT NULL default '',
  `goods_sn` varchar(60) NOT NULL default '',
  `product_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_number` smallint(5) unsigned NOT NULL default '1',
  `market_price` decimal(10,2) NOT NULL default '0.00',
  `goods_price` decimal(10,2) NOT NULL default '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL default '0',
  `is_real` tinyint(1) unsigned NOT NULL default '0',
  `extension_code` varchar(30) NOT NULL default '',
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `is_gift` smallint(5) unsigned NOT NULL default '0',
  `goods_attr_id` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_order_goods
-- ----------------------------
INSERT INTO `ecs_order_goods` VALUES ('1', '1', '2', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', 'ECS000002', '0', '1', '2878.79', '2199.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('2', '2', '107', '康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', 'ECS000107', '0', '1', '585.60', '488.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('3', '3', '2', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', 'ECS000002', '0', '1', '2878.79', '2199.00', '32英寸智能', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('4', '3', '1', '创维（Skyworth） 40E5CHR 40英寸 LED液晶电视（银色）', 'ECS000000', '0', '1', '2158.79', '1799.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('5', '3', '11', '飞利浦（PHILIPS） HQ909/15 电动剃须刀', 'ECS000011', '0', '1', '238.79', '199.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('6', '3', '26', '利仁（Liven）LRT-310A 电饼铛 香槟金', 'ECS000026', '0', '1', '238.79', '199.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('7', '3', '26', '利仁（Liven）LRT-310A 电饼铛 香槟金', 'ECS000026', '0', '1', '238.79', '199.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('8', '3', '10', '美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', 'ECS000010', '0', '1', '3358.79', '2799.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('9', '3', '17', '雷瓦（RIWA） RC-643A 专业静音1800W大功率恒温负离子电吹风吹风机', 'ECS000017', '0', '1', '106.80', '89.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('10', '3', '16', '力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）', 'ECS000016', '0', '1', '718.80', '599.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('11', '4', '1', '创维（Skyworth） 40E5CHR 40英寸 LED液晶电视（银色）', 'ECS000000', '0', '1', '2158.79', '1799.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('12', '4', '4', '志高（chigo）KFR-51LW/N33+N3 大2匹 柜式家用冷暖空调（白色 白5）', 'ECS000004', '0', '1', '4198.80', '3199.00', '祛PM2.5', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('13', '5', '104', '机器学习系统设计 ', 'ECS000104', '0', '2', '50.40', '42.00', '', '2', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('14', '5', '103', '数据化管理：洞悉零售及电子商务运营 ', 'ECS000103', '0', '3', '55.19', '46.00', '', '3', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('15', '5', '107', '康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', 'ECS000107', '0', '3', '585.60', '400.00', '', '3', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('16', '5', '106', 'Android开发秘籍进阶篇：Android 4编程入门经典+Android 4高级编程（第3版　套装共2册） ', 'ECS000106', '0', '3', '153.60', '128.00', '', '3', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('17', '5', '105', 'JavaScript框架设计 ', 'ECS000105', '0', '3', '87.60', '73.00', '', '3', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('18', '5', '25', '美的（Midea） EM7KCGW3-NR 微波炉 微电脑 平板 薄膜按键', 'ECS000025', '0', '1', '525.60', '438.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('19', '5', '5', '海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调', 'ECS000005', '0', '1', '3298.79', '2749.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('20', '5', '102', '算法谜题 ', 'ECS000102', '0', '2', '50.40', '42.00', '', '2', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('21', '5', '101', 'WebKit技术内幕 ', 'ECS000101', '0', '2', '0.00', '0.00', '', '2', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('22', '5', '100', '算法竞赛入门经典（第2版） ', 'ECS000100', '0', '2', '51.60', '43.00', '', '2', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('23', '5', '96', 'GNC 健安喜 葡萄籽精华胶囊 100粒（美国原装进口）', 'ECS000096', '0', '1', '118.80', '99.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('24', '5', '95', '养生堂 红六月焕白亲情特供装 90粒维生素C+160粒维生素E+60粒维生素C+多种维生素矿物质片25片', 'ECS000095', '0', '1', '183.60', '153.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('25', '5', '93', '养生堂天然维生素E.C祛斑焕白套装（维生素C90片+维生素E160粒）（赠养生堂5片面膜）', 'ECS000093', '0', '1', '183.60', '153.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('26', '5', '89', 'Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克*6罐', 'ECS000089', '0', '1', '1368.00', '1140.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('27', '5', '90', '雅培 Abbott 金装喜康宝 婴儿配方奶粉 1段（0-12个月婴儿适用）900克 购雅培亲体新品，Mini Pad、万元大奖等你赢！点此查看！', 'ECS000090', '0', '1', '237.60', '198.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('28', '5', '91', '惠氏 Wyeth 启赋 illuma 亲和人体配方 幼儿配方奶粉 3段(1-3岁幼儿适用) 900克', 'ECS000091', '0', '1', '441.59', '368.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('29', '5', '92', '太太静心助眠口服液15ml*60支', 'ECS000092', '0', '1', '286.80', '239.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('30', '5', '88', 'Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克', 'ECS000088', '0', '1', '228.00', '190.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('31', '5', '86', '美赞臣 MeadJohnson 进口奶源 安儿宝A+ 幼儿配方奶粉 3段（1-3岁幼儿适用） 1200克', 'ECS000086', '0', '1', '232.79', '194.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('32', '5', '84', '美素力 Frisolac 荷兰原装进口 金装婴儿配方奶粉 1段（0-6个月婴儿适用） 900克', 'ECS000084', '0', '1', '286.80', '239.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('33', '5', '83', '九洲鹿全工艺100%全棉超耐磨转移印花四件套 北京遇上西雅图 1.8米床', 'ECS000083', '0', '1', '190.79', '159.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('34', '5', '82', '么小毛家纺 床上用品欧式经典 莫代尔全棉大提花 床单式婚庆四件套 加州记忆 1.8米床', 'ECS000082', '0', '1', '585.60', '488.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('35', '5', '81', '爱斯基摩人 四件套 纯棉床上用品 斜纹家纺 双人 丽人风尚 1.5米/1.8米', 'ECS000081', '0', '1', '202.79', '169.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('36', '5', '80', '绿野仙踪床上用品 全棉斜纹印花套件纯棉四件套 1.5/1.8米床 醉花樱-玫红 1.5-1.8米床适用', 'ECS000080', '0', '1', '166.79', '139.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('37', '5', '79', '九洲鹿 100%全棉斜纹印花套件纯棉四件套 1.5米1.8米床 北京遇上西雅图 1.5米床', 'ECS000079', '0', '1', '154.79', '129.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('38', '5', '78', '巧布万棉家纺 床品件套 贡缎提花绣花1.5/1.8米婚庆四件套 舞动时尚-米白 1.8m床四件套', 'ECS000078', '0', '1', '298.80', '249.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('39', '5', '77', '富安娜家纺 圣之花床品套件 全棉清新田园 纯棉印花双人四件套 淑姿丰盈 蓝色 1.8m(6英尺)床', 'ECS000077', '0', '1', '477.59', '398.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('40', '5', '76', '胜伟 高支棉斜纹四件套裸婚时代100%棉1.5/1.8米床', 'ECS000076', '0', '1', '178.79', '149.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('41', '5', '75', '欧莱雅（LOREAL）男士劲能深层净化洁面膏（100ml+50ml）', 'ECS000075', '0', '1', '46.80', '39.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('42', '5', '74', 'Neutrogena露得清深层净化洗面乳两支套装100g*2', 'ECS000074', '0', '1', '42.00', '35.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('43', '5', '73', '欧莱雅（LOREAL）男士 控油炭爽抗黑头洁面膏100ml', 'ECS000073', '0', '1', '42.00', '35.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('44', '5', '71', '妮维雅 男士净油精华亮肤洁面炭泥 150ml+150ml （提亮肤色 控油美白洗面奶 深层洁面 温和去角质）', 'ECS000071', '0', '1', '78.00', '65.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('45', '5', '70', '欧莱雅（LOREAL）男士火山岩控油清痘洁面膏 买一赠一装（100ml+50ml）', 'ECS000070', '0', '1', '50.40', '42.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('46', '5', '69', '洗颜专科 柔澈泡沫 洁面乳 120g（资生堂授权正品）', 'ECS000069', '0', '1', '57.59', '48.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('47', '5', '68', '莱雪曼2014夏装上新蕾丝镂空拼接修身连衣裙两件套8272 黑色 M', 'ECS000068', '0', '1', '165.60', '138.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('48', '5', '67', '誉彩 2014夏季新款无袖碎花长裙 大码女装裙子 韩版修身大摆连衣裙 兰花 M', 'ECS000067', '0', '1', '214.79', '179.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('49', '5', '63', '丝露怡语 2014夏雪纺撞色青花瓷修身连衣裙女 661 9919蓝色 M', 'ECS000063', '0', '1', '166.79', '139.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('50', '5', '64', '俏妮妃 2014夏装新款时尚韩版女装 雪纺连衣裙圆领气质修身显瘦休闲OL淑女短袖打底连衣裙 白色 M', 'ECS000064', '0', '1', '174.00', '145.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('51', '5', '65', '琼瑛女装2014夏季新款 韩版修身圆领雪纺连衣裙短袖纯色提花裙子3368 黄色 M', 'ECS000065', '0', '1', '165.60', '138.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('52', '5', '66', '时竟 2014夏季女装新款时尚气质OL显瘦一字领套装两件套套裙 修身连衣裙D8618 白配大红 M', 'ECS000066', '0', '1', '202.79', '169.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('53', '5', '62', 'HARMARYCIAGA2014女装夏新款修身气质甜美糖果色假两件无袖连衣裙QZ109 水蓝 M', 'ECS000062', '0', '1', '153.60', '128.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('54', '5', '61', '刊菲(kanfei) 2014夏季新款修身中袖韩国金线蕾丝连衣裙9068 金色 M', 'ECS000061', '0', '1', '201.60', '168.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('55', '5', '60', '联想（Lenovo） C245 18.5英寸一体电脑（E1-1200 2G 500G DVD刻录 Dos）白色', 'ECS000060', '0', '1', '2398.79', '1999.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('56', '5', '59', '微软（Microsoft） Surface2 64G（Tegra 4四核 2G内存 64G硬盘 1080P高清屏 USB3.0）', 'ECS000059', '0', '1', '4905.59', '4088.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('57', '5', '58', '机械革命（MECHREVO） MR X3 升级版 14英寸游戏本(i7-4702MQ 4G 64G SSD+1T机械 GTX850M 游戏键盘)黑色', 'ECS000058', '0', '1', '5998.80', '4999.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('58', '5', '57', '华硕（ASUS） N550JV 15.6英寸笔记本(i5-4200H 4G 750G GT750M 2G独显 1920x1080 Win8 黑色)', 'ECS000057', '0', '1', '7198.80', '5999.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('59', '5', '56', '惠普（HP） CQ14-a104TX 14英寸笔记本电脑 （i5-4200M 4G 750GB GT820M 2G独显 DOS）', 'ECS000056', '0', '1', '3838.79', '3199.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('60', '5', '55', '宏碁（acer） V3-572G 15.6英寸超薄本 （i5-4210U 4G 500G GT840M 2G独显 win8.1 料号59TB）银色', 'ECS000055', '0', '1', '4318.80', '3599.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('61', '5', '54', '雷神（ThundeRobot）911-E1 15.6英寸游戏本（i7-4710HQ 4G 500G GTX850M 2G DDR5 背光键盘 全高清屏）黑', 'ECS000054', '0', '1', '7798.79', '6499.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('62', '5', '53', '联想（Lenovo） Y400N 14.0英寸笔记本电脑（i5-3230M 4G 1T 2G独显 摄像头 DVD刻 Win8）', 'ECS000053', '0', '1', '5878.80', '4899.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('63', '5', '52', '海燕（HAIYAN） ZD-BV4 阻燃 塑铜线100米 双色', 'ECS000052', '0', '1', '552.00', '460.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('64', '5', '51', '公牛（BULL) GN-110 3米 插座', 'ECS000051', '0', '1', '75.60', '63.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('65', '5', '41', '德尔玛（Deerma） DEM-F300 超声波加湿器（深蓝）', 'ECS000041', '0', '1', '93.60', '78.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('66', '5', '43', '春花（CHUNHUA ） JC621-160J 旋风锥尘杯 真空吸尘器（黑色）', 'ECS000043', '0', '3', '406.80', '339.00', '', '3', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('67', '5', '46', '美的（midea）单热型饮水机 MYR718S-X', 'ECS000046', '0', '1', '238.79', '199.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('68', '5', '49', '飞利浦（PHILIPS） CORD118大屏幕，免电池工作 来电显示电话机 黑色', 'ECS000049', '0', '2', '84.00', '70.00', '', '2', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('69', '5', '40', 'Coway AP-1009CH 空气净化器 除甲醛臭氧净化机pm2.5 韩国进口', 'ECS000040', '0', '3', '2856.00', '2380.00', '', '3', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('70', '5', '39', '小熊（Bear) ZDQ-2191 多功能双层煎烙煮蛋器 14个蛋 （橙黄色）', 'ECS000039', '0', '1', '177.60', '148.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('71', '5', '37', '宝工（Pro\'skit) SS-989H 2合1SMD吹焊台 700W 热风焊接两用', 'ECS000037', '0', '1', '756.00', '630.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('72', '5', '34', '贝乐卫浴（ballee) G17-4 毛巾架浴巾架多功能套装', 'ECS000034', '0', '1', '358.80', '299.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('73', '5', '33', '佳德（GORLDE）99173T 304不锈钢拉丝面双槽水槽套餐', 'ECS000033', '0', '1', '838.80', '699.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('74', '5', '31', 'TCL 浴霸NH-21Y4A/01 风暖灯暖照明换气四合一', 'ECS000031', '0', '1', '550.80', '459.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('75', '5', '30', '雷士照明（NVC） NUD1895-3 餐吊吸顶灯(不带光源)', 'ECS000030', '0', '1', '190.79', '159.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('76', '5', '28', '意大利德龙(DeLonghi) ESAM2200 EX:1 全自动咖啡机（银色）', 'ECS000028', '0', '1', '6718.80', '5599.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('77', '5', '23', '美的(midea) W12PCS505E 电压力锅 5L多功能电脑版', 'ECS000023', '0', '1', '358.80', '299.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('78', '5', '26', '利仁（Liven）LRT-310A 电饼铛 香槟金', 'ECS000026', '0', '1', '238.79', '199.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('79', '5', '27', '松下（Panasonic） SD-PM105 面包机', 'ECS000027', '0', '1', '1918.80', '1599.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('80', '5', '22', '美的（Midea ）17S18K2c+ 电水壶(不锈钢色)', 'ECS000022', '0', '1', '118.80', '99.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('81', '5', '17', '雷瓦（RIWA） RC-643A 专业静音1800W大功率恒温负离子电吹风吹风机', 'ECS000017', '0', '1', '106.80', '89.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('82', '5', '18', '华盛昌（CEM）DT-8806S 红外线人体测温仪 体温计（精致版）', 'ECS000018', '0', '1', '118.80', '99.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('83', '5', '19', '九安/Andon 家用全自动智能 上臂式 电子血压计 血压仪 血压计KD-5910', 'ECS000019', '0', '1', '130.79', '109.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('84', '5', '21', '韩国惠人（HUROM） HU-400WN-PLUS 原汁机 “小红2014全新升级版”', 'ECS000021', '0', '1', '2976.00', '2480.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('85', '5', '16', '力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）', 'ECS000016', '0', '1', '718.80', '599.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('86', '5', '15', '松下（Panasonic） EH-SQ10-W405 冷敷美容器', 'ECS000015', '0', '1', '718.80', '599.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('87', '5', '14', '松下（Panasonic） EH-SA31QP405 温冷美容护肤套装 深层清洁补水 瞬间紧致肌肤', 'ECS000014', '0', '1', '1162.80', '969.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('88', '5', '13', '雷瓦（Riwa）RB-807S 两用陶瓷卷发棒 卷发器/直发器', 'ECS000013', '0', '1', '58.80', '49.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('89', '5', '12', 'GESS 德国GESS682 电动深层防水洁面仪 洗脸美容仪家用毛孔清洁器去黑头仪 清新绿', 'ECS000012', '0', '1', '153.60', '128.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('90', '5', '11', '飞利浦（PHILIPS） HQ909/15 电动剃须刀', 'ECS000011', '0', '1', '238.79', '199.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('91', '5', '10', '美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', 'ECS000010', '0', '1', '3358.79', '2799.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('92', '5', '9', '海信（Hisense） KFR-35GW/20FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', 'ECS000009', '0', '1', '3238.79', '2699.00', '产品特色:超长质保 \n', '1', '1', '', '0', '0', '5');
INSERT INTO `ecs_order_goods` VALUES ('93', '5', '6', '海信（Hisense） KFR-35GW/10FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', 'ECS000006', '0', '1', '3118.79', '2599.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('94', '5', '6', '海信（Hisense） KFR-35GW/10FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', 'ECS000006', '0', '1', '3118.79', '2599.00', '产品特色:WIFI操控 \n', '1', '1', '', '0', '0', '7');
INSERT INTO `ecs_order_goods` VALUES ('95', '5', '5', '海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调', 'ECS000005', '0', '1', '3298.79', '2749.00', '产品特色:超静音 \n', '1', '1', '', '0', '0', '10');
INSERT INTO `ecs_order_goods` VALUES ('96', '5', '4', '志高（chigo）KFR-51LW/N33+N3 大2匹 柜式家用冷暖空调（白色 白5）', 'ECS000004', '0', '1', '4198.80', '3199.00', '产品特色:祛PM2.5 \n', '1', '1', '', '0', '0', '13');
INSERT INTO `ecs_order_goods` VALUES ('97', '6', '140', '山崎(ASAKI)4.8伏家用充电式电动起子螺丝刀小电钻(带磁性)/充电电池电动工具', 'ECS000140', '0', '1', '151.20', '119.70', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('98', '6', '139', '新款BOSCH博世TSR 1080-2-LI锂电钻充电手电钻多功能家用电动螺丝刀起子 TSR1080-2-Li单电 一电一冲', 'ECS000139', '0', '1', '446.40', '353.40', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('99', '6', '138', '老A（LAOA) 电动工具双速12V锂电池充电钻/手电钻/电起子/电动螺丝刀/充电批', 'ECS000138', '0', '2', '262.80', '208.05', '', '2', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('100', '6', '137', '宝工（Pro\'skit） PT-5501I 可调速软轴电磨组', 'ECS000137', '0', '5', '238.79', '189.05', '', '5', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('101', '6', '136', '博世(Bosch)GSB600RE set 13毫米冲击钻套装', 'ECS000136', '0', '1', '478.79', '379.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('102', '6', '135', '飞科（FLYCO）FS358全身水洗充电式三刀头电动剃须刀（银色）', 'ECS000135', '0', '1', '154.79', '122.55', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('103', '6', '134', '飞科（FLYCO）FS711充电式双刀头电动剃须刀（黑色）', 'ECS000134', '0', '1', '46.80', '37.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('104', '6', '133', '飞利浦(Philips) RQ311 电动剃须刀', 'ECS000133', '0', '1', '286.80', '227.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('105', '6', '132', '飞利浦（PHILIPS） PQ182/16 电动剃须刀', 'ECS000132', '0', '1', '118.80', '94.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('106', '6', '131', '飞利浦（Philips）RQ310 锐锋系列电动剃须刀', 'ECS000131', '0', '1', '238.79', '189.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('107', '6', '130', '奔腾（POVOS） LN5152 电压力锅 5L', 'ECS000130', '0', '1', '0.00', '0.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('108', '6', '129', '美的（Midea） W13PCS503E 易拆洗一手开系列 5L电压力锅', 'ECS000129', '0', '1', '346.80', '274.55', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('109', '6', '128', '九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1', 'ECS000128', '0', '1', '249.60', '197.60', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('110', '6', '127', '九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1', 'ECS000127', '0', '1', '238.80', '189.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('111', '6', '126', '美的(midea) W12PCS505E 电压力锅 5L多功能电脑版', 'ECS000126', '0', '1', '358.80', '284.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('112', '6', '125', '艾美特(Airmate) FTW36T2-A 电风扇/塔扇', 'ECS000125', '0', '1', '298.80', '236.55', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('113', '6', '124', '艾美特(Airmate) FSW27T2-5 电风扇/落地扇', 'ECS000124', '0', '1', '214.79', '170.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('114', '6', '123', '艾美特(Airmate) FT42R 电风扇/遥控塔扇', 'ECS000123', '0', '1', '322.80', '255.55', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('115', '6', '122', '艾美特(Airmate) FSW65R-5 电风扇/遥控落地扇', 'ECS000122', '0', '1', '226.79', '179.55', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('116', '6', '121', '艾美特(Airmate) FSW52R 电风扇/遥控落地扇', 'ECS000121', '0', '1', '202.79', '160.55', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('117', '6', '120', '华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜', 'ECS000120', '0', '1', '2158.79', '1709.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('118', '6', '119', '美的(Midea) MXV-ZLP90Q05 嵌入式 消毒柜', 'ECS000119', '0', '1', '1438.80', '1139.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('119', '6', '118', '康宝(Canbo) ZTP108E-11E 嵌入式 消毒柜', 'ECS000118', '0', '1', '1677.60', '1328.10', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('120', '6', '117', '美的(Midea) MXV-ZLP80K03 立式 消毒柜', 'ECS000117', '0', '1', '598.80', '474.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('121', '6', '116', '康宝(Canbo) ZTP80A-3 立式 消毒柜', 'ECS000116', '0', '1', '598.80', '474.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('122', '6', '115', '志高(Chigo)JC-270L 压缩机恒温红酒柜 底层自由摆放/8月新款8层100瓶', 'ECS000115', '0', '1', '2700.00', '2137.50', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('123', '6', '114', '维诺卡夫(Vinocave) CWC-350AJP 压缩机恒温红酒柜 配挂杯架+展示层架', 'ECS000114', '0', '1', '4056.00', '3211.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('124', '6', '113', '维诺卡夫(Vinocave) CWC-200A 压缩机恒温红酒柜 配挂杯架+展示层架', 'ECS000113', '0', '1', '3576.00', '2831.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('125', '6', '112', '维诺卡夫(Vinocave) SC-28AJPM电子恒温红酒柜', 'ECS000112', '0', '1', '1416.00', '1121.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('126', '6', '111', '维诺卡夫(Vinocave)冰吧冰柜SC-28AJP电子恒温红酒柜', 'ECS000111', '0', '1', '1056.00', '836.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('127', '6', '110', '康佳（KONKA） LED32E330C 32英寸 窄边高清液晶电视（银色）', 'ECS000110', '0', '1', '2518.80', '1994.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('128', '6', '109', '长虹（CHANGHONG）LED42B2080n 42英寸极窄边网络LED液晶电视（黑色）', 'ECS000109', '0', '1', '2638.79', '2089.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('129', '6', '108', '长虹（CHANGHONG） LED42538E 42英寸 超窄边LED液晶电视(黑色)', 'ECS000108', '0', '1', '2398.79', '1899.05', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('130', '6', '107', '康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', 'ECS000107', '0', '1', '585.60', '400.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('131', '7', '7', '赛亿（Shinee）BC-50 50升单门冷藏迷你小电冰箱', 'ECS000007', '0', '1', '549.60', '408.00', '', '0', '1', '', '2', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('132', '7', '2', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', 'ECS000002', '28', '1', '2878.79', '2199.00', '尺寸:32英寸智能 \n功能:智能电视 \n', '0', '1', '', '0', '0', '15,18');
INSERT INTO `ecs_order_goods` VALUES ('133', '8', '106', 'Android开发秘籍进阶篇：Android 4编程入门经典+Android 4高级编程（第3版　套装共2册） ', 'ECS000106', '0', '1', '153.60', '128.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('134', '9', '2', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', 'ECS000002', '28', '2', '2878.79', '2199.00', '尺寸:32英寸智能 \n功能:智能电视 \n', '0', '1', '', '0', '0', '15,18');
INSERT INTO `ecs_order_goods` VALUES ('135', '10', '2', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', 'ECS000002', '28', '1', '2878.79', '2199.00', '尺寸:32英寸智能 \n功能:智能电视 \n', '0', '1', '', '0', '0', '15,18');
INSERT INTO `ecs_order_goods` VALUES ('136', '11', '119', '美的(Midea) MXV-ZLP90Q05 嵌入式 消毒柜', 'ECS000119', '0', '1', '1438.80', '1199.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('137', '12', '120', '华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜', 'ECS000120', '0', '1', '2158.79', '1799.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('138', '13', '2', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', 'ECS000002', '28', '1', '2878.79', '2199.00', '尺寸:32英寸智能 \n功能:智能电视 \n', '0', '1', '', '0', '0', '15,18');
INSERT INTO `ecs_order_goods` VALUES ('139', '14', '120', '华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜', 'ECS000120', '0', '1', '2158.79', '1799.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` VALUES ('140', '15', '2', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', 'ECS000002', '28', '1', '2878.79', '2199.00', '尺寸:32英寸智能 \n功能:智能电视 \n', '0', '1', '', '0', '0', '15,18');
INSERT INTO `ecs_order_goods` VALUES ('141', '16', '2', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', 'ECS000002', '28', '1', '2878.79', '1999.00', '尺寸: 32英寸智能\r\n功能: 智能电视', '0', '1', '', '0', '0', '15,18');
INSERT INTO `ecs_order_goods` VALUES ('142', '17', '2', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', 'ECS000002', '28', '1', '2878.79', '2199.00', '尺寸:32英寸智能 \n功能:智能电视 \n', '0', '1', '', '0', '0', '15,18');
INSERT INTO `ecs_order_goods` VALUES ('143', '18', '2', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', 'ECS000002', '39', '1', '4378.79', '3699.00', '尺寸:50英寸智能[1500] \n功能:普通电视 \n可选颜色:黑色 \n', '1', '1', '', '0', '0', '26,17,24');
INSERT INTO `ecs_order_goods` VALUES ('144', '18', '2', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', 'ECS000002', '41', '1', '2878.79', '2199.00', '尺寸:32英寸智能 \n功能:智能电视 \n可选颜色:黑色 \n', '1', '1', '', '0', '0', '26,15,18');
INSERT INTO `ecs_order_goods` VALUES ('145', '19', '57', '华硕（ASUS） N550JV 15.6英寸笔记本(i5-4200H 4G 750G GT750M 2G独显 1920x1080 Win8 黑色)', 'ECS000057', '0', '1', '7198.80', '5999.00', '', '0', '1', '', '0', '0', '');

-- ----------------------------
-- Table structure for `ecs_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_info`;
CREATE TABLE `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL auto_increment,
  `order_sn` varchar(20) NOT NULL default '',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `order_status` tinyint(1) unsigned NOT NULL default '0',
  `shipping_status` tinyint(1) unsigned NOT NULL default '0',
  `pay_status` tinyint(1) unsigned NOT NULL default '0',
  `consignee` varchar(60) NOT NULL default '',
  `country` smallint(5) unsigned NOT NULL default '0',
  `province` smallint(5) unsigned NOT NULL default '0',
  `city` smallint(5) unsigned NOT NULL default '0',
  `district` smallint(5) unsigned NOT NULL default '0',
  `address` varchar(255) NOT NULL default '',
  `zipcode` varchar(60) NOT NULL default '',
  `tel` varchar(60) NOT NULL default '',
  `mobile` varchar(60) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `best_time` varchar(120) NOT NULL default '',
  `sign_building` varchar(120) NOT NULL default '',
  `postscript` varchar(255) NOT NULL default '',
  `shipping_id` tinyint(3) NOT NULL default '0',
  `shipping_name` varchar(120) NOT NULL default '',
  `pay_id` tinyint(3) NOT NULL default '0',
  `pay_name` varchar(120) NOT NULL default '',
  `how_oos` varchar(120) NOT NULL default '',
  `how_surplus` varchar(120) NOT NULL default '',
  `pack_name` varchar(120) NOT NULL default '',
  `card_name` varchar(120) NOT NULL default '',
  `card_message` varchar(255) NOT NULL default '',
  `inv_payee` varchar(120) NOT NULL default '',
  `inv_content` varchar(120) NOT NULL default '',
  `goods_amount` decimal(10,2) NOT NULL default '0.00',
  `shipping_fee` decimal(10,2) NOT NULL default '0.00',
  `insure_fee` decimal(10,2) NOT NULL default '0.00',
  `pay_fee` decimal(10,2) NOT NULL default '0.00',
  `pack_fee` decimal(10,2) NOT NULL default '0.00',
  `card_fee` decimal(10,2) NOT NULL default '0.00',
  `money_paid` decimal(10,2) NOT NULL default '0.00',
  `surplus` decimal(10,2) NOT NULL default '0.00',
  `integral` int(10) unsigned NOT NULL default '0',
  `integral_money` decimal(10,2) NOT NULL default '0.00',
  `bonus` decimal(10,2) NOT NULL default '0.00',
  `order_amount` decimal(10,2) NOT NULL default '0.00',
  `from_ad` smallint(5) NOT NULL default '0',
  `referer` varchar(255) NOT NULL default '',
  `add_time` int(10) unsigned NOT NULL default '0',
  `confirm_time` int(10) unsigned NOT NULL default '0',
  `pay_time` int(10) unsigned NOT NULL default '0',
  `shipping_time` int(10) unsigned NOT NULL default '0',
  `pack_id` tinyint(3) unsigned NOT NULL default '0',
  `card_id` tinyint(3) unsigned NOT NULL default '0',
  `bonus_id` mediumint(8) unsigned NOT NULL default '0',
  `invoice_no` varchar(255) NOT NULL default '',
  `extension_code` varchar(30) NOT NULL default '',
  `extension_id` mediumint(8) unsigned NOT NULL default '0',
  `to_buyer` varchar(255) NOT NULL default '',
  `pay_note` varchar(255) NOT NULL default '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL default '0',
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `discount` decimal(10,2) NOT NULL,
  PRIMARY KEY  (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_order_info
-- ----------------------------
INSERT INTO `ecs_order_info` VALUES ('1', '2014073113030', '0', '5', '1', '2', '11', '1', '5', '64', '620', '12', '', '33333', '', '444444@qq.com', '', '', '', '5', '申通快递', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '2199.00', '15.00', '0.00', '0.00', '0.00', '0.00', '2214.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1406762023', '1406762036', '1406762036', '1408390277', '0', '0', '0', '5555', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` VALUES ('2', '2014073126550', '6', '5', '1', '2', 'q111', '1', '4', '55', '540', '22', '', '333', '', 'admin123@qq.com', '', '', '', '5', '申通快递', '2', '银行汇款/转帐', '', '', '', '', '', '', '', '488.00', '15.00', '0.00', '0.00', '0.00', '0.00', '503.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '管理员添加', '1406763595', '1406763625', '1406763629', '1408390312', '0', '0', '0', '444444', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` VALUES ('3', '2014080751421', '6', '5', '1', '2', 'q111', '1', '4', '55', '540', '22', '', '333', '', 'admin123@qq.com', '', '', '', '5', '申通快递', '2', '银行汇款/转帐', '', '', '', '', '', '', '', '8082.00', '15.00', '0.00', '0.00', '0.00', '0.00', '8097.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '管理员添加', '1407369121', '1407369180', '1407369185', '1408390270', '0', '0', '0', '3333', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` VALUES ('4', '2014081459214', '6', '3', '0', '0', '', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '4998.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '4998.00', '0', '管理员添加', '1407979809', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` VALUES ('5', '2014081499923', '0', '5', '1', '2', '1', '1', '5', '66', '633', '2', '', '3', '', '44@qq.com', '', '', '', '5', '申通快递', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '88234.00', '15.00', '0.00', '0.00', '0.00', '0.00', '88249.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1407979978', '1407979997', '1407979997', '1408317469', '0', '0', '0', '2222', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` VALUES ('6', '2014081591904', '6', '5', '1', '2', 'q111', '1', '4', '55', '540', '22', '', '333', '', 'admin123@qq.com', '', '', '', '5', '申通快递', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '26473.70', '15.00', '0.00', '0.00', '0.00', '0.00', '26488.70', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1408038969', '1408038990', '1408038990', '1408317460', '0', '0', '0', '1111111', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` VALUES ('7', '2015042068991', '14', '0', '0', '0', '小松', '1', '25', '321', '2709', '中山北路2911号中关村科技大厦2402室', '', '15221019886', '', '123456@qq.com', '', '', '', '6', '邮局平邮', '0', '', '等待所有商品备齐后再发', '', '', '', '', '', '', '2607.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '2170.70', '0', '本站', '1429465302', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '439.80');
INSERT INTO `ecs_order_info` VALUES ('8', '2015042045814', '14', '0', '0', '0', '小松', '1', '25', '321', '2709', '中山北路2911号中关村科技大厦2402室', '', '15221019886', '', '123456@qq.com', '', '', '', '6', '邮局平邮', '0', '', '等待所有商品备齐后再发', '', '', '', '', '', '', '128.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '131.50', '0', '本站', '1429467710', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` VALUES ('9', '2015042019304', '14', '0', '0', '0', '小松', '1', '25', '321', '2709', '中山北路2911号中关村科技大厦2402室', '', '15221019886', '', '123456@qq.com', '', '', '', '6', '邮局平邮', '0', '', '等待所有商品备齐后再发', '', '', '', '', '', '', '4398.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '3521.90', '0', '本站', '1429468766', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '879.60');
INSERT INTO `ecs_order_info` VALUES ('10', '2015042061666', '12', '0', '0', '0', '小松', '1', '25', '321', '2709', '中山北路2911号中关村科技大厦2402室', '', '15221019886', '', '123456@qq.com', '', '', '', '6', '邮局平邮', '0', '', '等待所有商品备齐后再发', '', '', '', '', '', '', '2199.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '1762.70', '0', '本站', '1429468807', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '439.80');
INSERT INTO `ecs_order_info` VALUES ('11', '2015042070450', '12', '0', '0', '0', '小松', '1', '25', '321', '2709', '中山北路2911号中关村科技大厦2402室', '', '15221019886', '', '123456@qq.com', '', '', '', '6', '邮局平邮', '0', '', '等待所有商品备齐后再发', '', '', '', '', '', '', '1199.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '1202.50', '0', '本站', '1429469036', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` VALUES ('12', '2015042099480', '0', '0', '0', '0', '11', '1', '5', '64', '620', '222', '', '333', '', '444@qq.com', '', '', '', '5', '申通快递', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '1799.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '1814.00', '0', '本站', '1429469197', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` VALUES ('13', '2015042008079', '12', '0', '0', '0', '小松', '1', '25', '321', '2709', '中山北路2911号中关村科技大厦2402室', '', '15221019886', '', '123456@qq.com', '', '', '', '6', '邮局平邮', '0', '', '等待所有商品备齐后再发', '', '', '', '', '', '', '2199.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '1762.70', '0', '本站', '1429469682', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '439.80');
INSERT INTO `ecs_order_info` VALUES ('14', '2015042093013', '12', '0', '0', '0', '小松', '1', '25', '321', '2709', '中山北路2911号中关村科技大厦2402室', '', '15221019886', '', '123456@qq.com', '', '', '', '5', '申通快递', '5', '快钱人民币网关', '等待所有商品备齐后再发', '', '', '', '', '', '', '1799.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '1814.00', '0', '本站', '1429469736', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` VALUES ('15', '2015042062748', '12', '1', '0', '2', '小松', '1', '25', '321', '2709', '中山北路2911号中关村科技大厦2402室', '', '15221019886', '', '123456@qq.com', '', '', '', '5', '申通快递', '1', '余额支付', '等待所有商品备齐后再发', '', '高档包装', '精品贺卡', '', '', '', '2199.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1774.20', '0', '0.00', '0.00', '0.00', '0', '本站', '1429470414', '1429470414', '1429470414', '0', '4', '3', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '439.80');
INSERT INTO `ecs_order_info` VALUES ('16', '2015042234613', '12', '1', '3', '2', '小松', '1', '25', '321', '2709', '中山北路2911号中关村科技大厦2402室', '', '15221019886', '', '123456@qq.com', '', '', '', '5', '申通快递', '1', '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '1999.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2014.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1429650843', '1429650843', '1429650843', '0', '0', '0', '0', '', 'group_buy', '10', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` VALUES ('17', '2015042307523', '12', '1', '0', '2', '小松', '1', '25', '321', '2709', '中山北路2911号中关村科技大厦2402室', '', '15221019886', '', '123456@qq.com', '', '', '', '5', '申通快递', '1', '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '2199.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1774.20', '0', '0.00', '0.00', '0.00', '0', '本站', '1429743057', '1429743057', '1429743057', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '439.80');
INSERT INTO `ecs_order_info` VALUES ('18', '2015042925814', '12', '5', '1', '2', '小松', '1', '25', '321', '2709', '中山北路2911号中关村科技大厦2402室', '', '15221019886', '', '123456@qq.com', '', '', '', '6', '邮局平邮', '5', '快钱人民币网关', '等待所有商品备齐后再发', '', '', '', '', '', '', '5898.00', '3.50', '0.00', '0.00', '0.00', '0.00', '4721.90', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1430244056', '1430244084', '1430244084', '1430244106', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '1179.60');
INSERT INTO `ecs_order_info` VALUES ('19', '2015063019059', '14', '0', '0', '0', 'q', '1', '2', '52', '500', 'q', '1', '1', '1', '13121524680@163.com', 'q', 'q', '', '6', '邮局平邮', '5', '快钱人民币网关', '等待所有商品备齐后再发', '', '', '', '', '', '', '5999.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '6002.50', '0', '本站', '1435614508', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');

-- ----------------------------
-- Table structure for `ecs_pack`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_pack`;
CREATE TABLE `ecs_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL auto_increment,
  `pack_name` varchar(120) NOT NULL default '',
  `pack_img` varchar(255) NOT NULL default '',
  `pack_fee` decimal(6,2) unsigned NOT NULL default '0.00',
  `free_money` smallint(5) unsigned NOT NULL default '0',
  `pack_desc` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`pack_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_pack
-- ----------------------------
INSERT INTO `ecs_pack` VALUES ('4', '高档包装', '1429225892117089843.jpg', '5.00', '500', '');
INSERT INTO `ecs_pack` VALUES ('5', '精品包装', '1429225910572392518.jpg', '10.00', '800', '');

-- ----------------------------
-- Table structure for `ecs_package_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_package_goods`;
CREATE TABLE `ecs_package_goods` (
  `package_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `product_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_number` smallint(5) unsigned NOT NULL default '1',
  `admin_id` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`package_id`,`goods_id`,`admin_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_package_goods
-- ----------------------------
INSERT INTO `ecs_package_goods` VALUES ('5', '6', '0', '1', '1');
INSERT INTO `ecs_package_goods` VALUES ('5', '5', '0', '1', '1');
INSERT INTO `ecs_package_goods` VALUES ('6', '4', '0', '1', '1');
INSERT INTO `ecs_package_goods` VALUES ('6', '7', '0', '1', '1');
INSERT INTO `ecs_package_goods` VALUES ('6', '32', '0', '1', '1');
INSERT INTO `ecs_package_goods` VALUES ('5', '31', '0', '1', '1');

-- ----------------------------
-- Table structure for `ecs_payment`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_payment`;
CREATE TABLE `ecs_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL auto_increment,
  `pay_code` varchar(20) NOT NULL default '',
  `pay_name` varchar(120) NOT NULL default '',
  `pay_fee` varchar(10) NOT NULL default '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL default '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  `is_cod` tinyint(1) unsigned NOT NULL default '0',
  `is_online` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_payment
-- ----------------------------
INSERT INTO `ecs_payment` VALUES ('1', 'balance', '余额支付', '0', '使用帐户余额支付。只有会员才能使用，通过设置信用额度，可以透支。', '0', 'a:0:{}', '1', '0', '1');
INSERT INTO `ecs_payment` VALUES ('2', 'bank', '银行汇款/转帐', '0', '银行名称\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。', '0', 'a:0:{}', '1', '0', '0');
INSERT INTO `ecs_payment` VALUES ('3', 'cod', '货到付款', '0', '开通城市：×××\r\n货到付款区域：×××', '0', 'a:0:{}', '0', '1', '0');
INSERT INTO `ecs_payment` VALUES ('4', 'chinabank', '网银在线', '1%', '网银在线（www.chinabank.com.cn）与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。<br/><a href=\"http://cloud.ecshop.com/payment_apply.php?mod=chinabank\" target=\"_blank\">立即在线申请</a>', '0', 'a:2:{i:0;a:3:{s:4:\"name\";s:17:\"chinabank_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:3:{s:4:\"name\";s:13:\"chinabank_key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', '1', '0', '1');
INSERT INTO `ecs_payment` VALUES ('5', 'kuaiqian', '快钱人民币网关', '0', '快钱是国内领先的独立第三方支付企业，旨在为各类企业及个人提供安全、便捷和保密的支付清算与账务服务，其推出的支付产品包括但不限于人民币支付，外卡支付，神州行卡支付，联通充值卡支付，VPOS支付等众多支付产品, 支持互联网、手机、电话和POS等多种终端, 以满足各类企业和个人的不同支付需求。截至2009年6月30日，快钱已拥有4100万注册用户和逾31万商业合作伙伴，并荣获中国信息安全产品测评认证中心颁发的“支付清算系统安全技术保障级一级”认证证书和国际PCI安全认证。<br/><a href=\"send.php\" target=\"_blank\"><font color=\"red\">点此链接在线签约快钱</font></a>', '0', 'a:2:{i:0;a:3:{s:4:\"name\";s:10:\"kq_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:3:{s:4:\"name\";s:6:\"kq_key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', '1', '0', '1');
INSERT INTO `ecs_payment` VALUES ('6', 'alipay', '支付宝', '0', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>支付宝收款接口：在线即可开通，<font color=\"red\"><b>零预付，免年费</b></font>，单笔阶梯费率，无流量限制。<br/><a href=\"http://cloud.ecshop.com/payment_apply.php?mod=alipay\" target=\"_blank\"><font color=\"red\">立即在线申请</font></a>', '0', 'a:4:{i:0;a:3:{s:4:\"name\";s:14:\"alipay_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:3:{s:4:\"name\";s:10:\"alipay_key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:3:{s:4:\"name\";s:14:\"alipay_partner\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:3:{s:4:\"name\";s:17:\"alipay_pay_method\";s:4:\"type\";s:6:\"select\";s:5:\"value\";s:1:\"2\";}}', '1', '0', '1');

-- ----------------------------
-- Table structure for `ecs_pay_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_pay_log`;
CREATE TABLE `ecs_pay_log` (
  `log_id` int(10) unsigned NOT NULL auto_increment,
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL default '0',
  `is_paid` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_pay_log
-- ----------------------------
INSERT INTO `ecs_pay_log` VALUES ('1', '1', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('2', '2', '503.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('3', '3', '8097.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('4', '4', '4998.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('5', '5', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('6', '6', '35.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('7', '7', '2198.10', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('8', '8', '638.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('9', '9', '2015.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('10', '10', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('11', '11', '3810.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('12', '12', '253.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('13', '13', '975.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('14', '14', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('15', '15', '17054.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('16', '16', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('17', '17', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('18', '18', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('19', '20', '1401.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('20', '21', '327.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('21', '22', '124.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('22', '1', '2214.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('23', '2', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('24', '3', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('25', '4', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('26', '5', '88249.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('27', '6', '26488.70', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('28', '7', '2170.70', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('29', '8', '131.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('30', '9', '3521.90', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('31', '10', '1762.70', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('32', '11', '1202.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('33', '12', '1814.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('34', '13', '1762.70', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('35', '14', '1814.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('36', '15', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('37', '16', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('38', '17', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('39', '18', '4721.90', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('40', '19', '6002.50', '0', '0');

-- ----------------------------
-- Table structure for `ecs_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_plugins`;
CREATE TABLE `ecs_plugins` (
  `code` varchar(30) NOT NULL default '',
  `version` varchar(10) NOT NULL default '',
  `library` varchar(255) NOT NULL default '',
  `assign` tinyint(1) unsigned NOT NULL default '0',
  `install_date` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_products`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_products`;
CREATE TABLE `ecs_products` (
  `product_id` mediumint(8) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_attr` varchar(50) default NULL,
  `product_sn` varchar(60) default NULL,
  `product_number` smallint(5) unsigned default '0',
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_products
-- ----------------------------
INSERT INTO `ecs_products` VALUES ('1', '32', '163', '', '100');
INSERT INTO `ecs_products` VALUES ('2', '24', '167', '', '100');
INSERT INTO `ecs_products` VALUES ('3', '23', '175', '', '100');
INSERT INTO `ecs_products` VALUES ('4', '21', '188', '', '20');
INSERT INTO `ecs_products` VALUES ('5', '20', '194', '', '13');
INSERT INTO `ecs_products` VALUES ('6', '17', '201', '', '1');
INSERT INTO `ecs_products` VALUES ('7', '14', '213', '', '4');
INSERT INTO `ecs_products` VALUES ('8', '13', '217', '', '8');
INSERT INTO `ecs_products` VALUES ('9', '10', '239', '', '6');
INSERT INTO `ecs_products` VALUES ('10', '10', '240', '', '12');
INSERT INTO `ecs_products` VALUES ('11', '9', '227', '', '12');
INSERT INTO `ecs_products` VALUES ('12', '9', '226', '', '3');
INSERT INTO `ecs_products` VALUES ('13', '8', '231', '', '17');
INSERT INTO `ecs_products` VALUES ('14', '1', '237', '', '1');
INSERT INTO `ecs_products` VALUES ('15', '6', '45|46', 'ECS000006g_p15', '10000');
INSERT INTO `ecs_products` VALUES ('16', '6', '44|47', 'ECS000006g_p16', '10000');
INSERT INTO `ecs_products` VALUES ('17', '6', '44|46', 'ECS000006g_p17', '10000');
INSERT INTO `ecs_products` VALUES ('18', '6', '43|47', 'ECS000006g_p18', '10000');
INSERT INTO `ecs_products` VALUES ('19', '6', '45|47', 'ECS000006g_p19', '10000');
INSERT INTO `ecs_products` VALUES ('20', '6', '43|46', 'ECS000006g_p20', '9996');
INSERT INTO `ecs_products` VALUES ('21', '39', '49|50', 'ECS000039g_p21', '10000');
INSERT INTO `ecs_products` VALUES ('22', '39', '48|51', 'ECS000039g_p22', '10000');
INSERT INTO `ecs_products` VALUES ('23', '39', '48|52', 'ECS000039g_p23', '10000');
INSERT INTO `ecs_products` VALUES ('24', '39', '49|51', 'ECS000039g_p24', '10000');
INSERT INTO `ecs_products` VALUES ('25', '39', '49|52', 'ECS000039g_p25', '10000');
INSERT INTO `ecs_products` VALUES ('26', '39', '48|50', 'ECS000039g_p26', '10000');
INSERT INTO `ecs_products` VALUES ('33', '2', '15|24|26', 'ECS000002g_p33', '10000');
INSERT INTO `ecs_products` VALUES ('34', '2', '15|25|26', 'ECS000002g_p34', '10000');
INSERT INTO `ecs_products` VALUES ('35', '2', '16|18|26', 'ECS000002g_p35', '10000');
INSERT INTO `ecs_products` VALUES ('36', '2', '16|24|26', 'ECS000002g_p36', '10000');
INSERT INTO `ecs_products` VALUES ('37', '2', '16|25|26', 'ECS000002g_p37', '10000');
INSERT INTO `ecs_products` VALUES ('38', '2', '17|18|26', 'ECS000002g_p38', '10000');
INSERT INTO `ecs_products` VALUES ('39', '2', '17|24|26', 'ECS000002g_p39', '9999');
INSERT INTO `ecs_products` VALUES ('40', '2', '17|25|26', 'ECS000002g_p40', '10000');
INSERT INTO `ecs_products` VALUES ('41', '2', '15|18|26', 'ECS000002g_p41', '9999');

-- ----------------------------
-- Table structure for `ecs_region`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_region`;
CREATE TABLE `ecs_region` (
  `region_id` smallint(5) unsigned NOT NULL auto_increment,
  `parent_id` smallint(5) unsigned NOT NULL default '0',
  `region_name` varchar(120) NOT NULL default '',
  `region_type` tinyint(1) NOT NULL default '2',
  `agency_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_region
-- ----------------------------
INSERT INTO `ecs_region` VALUES ('1', '0', '中国', '0', '0');
INSERT INTO `ecs_region` VALUES ('2', '1', '北京', '1', '0');
INSERT INTO `ecs_region` VALUES ('3', '1', '安徽', '1', '0');
INSERT INTO `ecs_region` VALUES ('4', '1', '福建', '1', '0');
INSERT INTO `ecs_region` VALUES ('5', '1', '甘肃', '1', '0');
INSERT INTO `ecs_region` VALUES ('6', '1', '广东', '1', '0');
INSERT INTO `ecs_region` VALUES ('7', '1', '广西', '1', '0');
INSERT INTO `ecs_region` VALUES ('8', '1', '贵州', '1', '0');
INSERT INTO `ecs_region` VALUES ('9', '1', '海南', '1', '0');
INSERT INTO `ecs_region` VALUES ('10', '1', '河北', '1', '0');
INSERT INTO `ecs_region` VALUES ('11', '1', '河南', '1', '0');
INSERT INTO `ecs_region` VALUES ('12', '1', '黑龙江', '1', '0');
INSERT INTO `ecs_region` VALUES ('13', '1', '湖北', '1', '0');
INSERT INTO `ecs_region` VALUES ('14', '1', '湖南', '1', '0');
INSERT INTO `ecs_region` VALUES ('15', '1', '吉林', '1', '0');
INSERT INTO `ecs_region` VALUES ('16', '1', '江苏', '1', '0');
INSERT INTO `ecs_region` VALUES ('17', '1', '江西', '1', '0');
INSERT INTO `ecs_region` VALUES ('18', '1', '辽宁', '1', '0');
INSERT INTO `ecs_region` VALUES ('19', '1', '内蒙古', '1', '0');
INSERT INTO `ecs_region` VALUES ('20', '1', '宁夏', '1', '0');
INSERT INTO `ecs_region` VALUES ('21', '1', '青海', '1', '0');
INSERT INTO `ecs_region` VALUES ('22', '1', '山东', '1', '0');
INSERT INTO `ecs_region` VALUES ('23', '1', '山西', '1', '0');
INSERT INTO `ecs_region` VALUES ('24', '1', '陕西', '1', '0');
INSERT INTO `ecs_region` VALUES ('25', '1', '上海', '1', '0');
INSERT INTO `ecs_region` VALUES ('26', '1', '四川', '1', '0');
INSERT INTO `ecs_region` VALUES ('27', '1', '天津', '1', '0');
INSERT INTO `ecs_region` VALUES ('28', '1', '西藏', '1', '0');
INSERT INTO `ecs_region` VALUES ('29', '1', '新疆', '1', '0');
INSERT INTO `ecs_region` VALUES ('30', '1', '云南', '1', '0');
INSERT INTO `ecs_region` VALUES ('31', '1', '浙江', '1', '0');
INSERT INTO `ecs_region` VALUES ('32', '1', '重庆', '1', '0');
INSERT INTO `ecs_region` VALUES ('33', '1', '香港', '1', '0');
INSERT INTO `ecs_region` VALUES ('34', '1', '澳门', '1', '0');
INSERT INTO `ecs_region` VALUES ('35', '1', '台湾', '1', '0');
INSERT INTO `ecs_region` VALUES ('36', '3', '安庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('37', '3', '蚌埠', '2', '0');
INSERT INTO `ecs_region` VALUES ('38', '3', '巢湖', '2', '0');
INSERT INTO `ecs_region` VALUES ('39', '3', '池州', '2', '0');
INSERT INTO `ecs_region` VALUES ('40', '3', '滁州', '2', '0');
INSERT INTO `ecs_region` VALUES ('41', '3', '阜阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('42', '3', '淮北', '2', '0');
INSERT INTO `ecs_region` VALUES ('43', '3', '淮南', '2', '0');
INSERT INTO `ecs_region` VALUES ('44', '3', '黄山', '2', '0');
INSERT INTO `ecs_region` VALUES ('45', '3', '六安', '2', '0');
INSERT INTO `ecs_region` VALUES ('46', '3', '马鞍山', '2', '0');
INSERT INTO `ecs_region` VALUES ('47', '3', '宿州', '2', '0');
INSERT INTO `ecs_region` VALUES ('48', '3', '铜陵', '2', '0');
INSERT INTO `ecs_region` VALUES ('49', '3', '芜湖', '2', '0');
INSERT INTO `ecs_region` VALUES ('50', '3', '宣城', '2', '0');
INSERT INTO `ecs_region` VALUES ('51', '3', '亳州', '2', '0');
INSERT INTO `ecs_region` VALUES ('52', '2', '北京', '2', '0');
INSERT INTO `ecs_region` VALUES ('53', '4', '福州', '2', '0');
INSERT INTO `ecs_region` VALUES ('54', '4', '龙岩', '2', '0');
INSERT INTO `ecs_region` VALUES ('55', '4', '南平', '2', '0');
INSERT INTO `ecs_region` VALUES ('56', '4', '宁德', '2', '0');
INSERT INTO `ecs_region` VALUES ('57', '4', '莆田', '2', '0');
INSERT INTO `ecs_region` VALUES ('58', '4', '泉州', '2', '0');
INSERT INTO `ecs_region` VALUES ('59', '4', '三明', '2', '0');
INSERT INTO `ecs_region` VALUES ('60', '4', '厦门', '2', '0');
INSERT INTO `ecs_region` VALUES ('61', '4', '漳州', '2', '0');
INSERT INTO `ecs_region` VALUES ('62', '5', '兰州', '2', '0');
INSERT INTO `ecs_region` VALUES ('63', '5', '白银', '2', '0');
INSERT INTO `ecs_region` VALUES ('64', '5', '定西', '2', '0');
INSERT INTO `ecs_region` VALUES ('65', '5', '甘南', '2', '0');
INSERT INTO `ecs_region` VALUES ('66', '5', '嘉峪关', '2', '0');
INSERT INTO `ecs_region` VALUES ('67', '5', '金昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('68', '5', '酒泉', '2', '0');
INSERT INTO `ecs_region` VALUES ('69', '5', '临夏', '2', '0');
INSERT INTO `ecs_region` VALUES ('70', '5', '陇南', '2', '0');
INSERT INTO `ecs_region` VALUES ('71', '5', '平凉', '2', '0');
INSERT INTO `ecs_region` VALUES ('72', '5', '庆阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('73', '5', '天水', '2', '0');
INSERT INTO `ecs_region` VALUES ('74', '5', '武威', '2', '0');
INSERT INTO `ecs_region` VALUES ('75', '5', '张掖', '2', '0');
INSERT INTO `ecs_region` VALUES ('76', '6', '广州', '2', '0');
INSERT INTO `ecs_region` VALUES ('77', '6', '深圳', '2', '0');
INSERT INTO `ecs_region` VALUES ('78', '6', '潮州', '2', '0');
INSERT INTO `ecs_region` VALUES ('79', '6', '东莞', '2', '0');
INSERT INTO `ecs_region` VALUES ('80', '6', '佛山', '2', '0');
INSERT INTO `ecs_region` VALUES ('81', '6', '河源', '2', '0');
INSERT INTO `ecs_region` VALUES ('82', '6', '惠州', '2', '0');
INSERT INTO `ecs_region` VALUES ('83', '6', '江门', '2', '0');
INSERT INTO `ecs_region` VALUES ('84', '6', '揭阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('85', '6', '茂名', '2', '0');
INSERT INTO `ecs_region` VALUES ('86', '6', '梅州', '2', '0');
INSERT INTO `ecs_region` VALUES ('87', '6', '清远', '2', '0');
INSERT INTO `ecs_region` VALUES ('88', '6', '汕头', '2', '0');
INSERT INTO `ecs_region` VALUES ('89', '6', '汕尾', '2', '0');
INSERT INTO `ecs_region` VALUES ('90', '6', '韶关', '2', '0');
INSERT INTO `ecs_region` VALUES ('91', '6', '阳江', '2', '0');
INSERT INTO `ecs_region` VALUES ('92', '6', '云浮', '2', '0');
INSERT INTO `ecs_region` VALUES ('93', '6', '湛江', '2', '0');
INSERT INTO `ecs_region` VALUES ('94', '6', '肇庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('95', '6', '中山', '2', '0');
INSERT INTO `ecs_region` VALUES ('96', '6', '珠海', '2', '0');
INSERT INTO `ecs_region` VALUES ('97', '7', '南宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('98', '7', '桂林', '2', '0');
INSERT INTO `ecs_region` VALUES ('99', '7', '百色', '2', '0');
INSERT INTO `ecs_region` VALUES ('100', '7', '北海', '2', '0');
INSERT INTO `ecs_region` VALUES ('101', '7', '崇左', '2', '0');
INSERT INTO `ecs_region` VALUES ('102', '7', '防城港', '2', '0');
INSERT INTO `ecs_region` VALUES ('103', '7', '贵港', '2', '0');
INSERT INTO `ecs_region` VALUES ('104', '7', '河池', '2', '0');
INSERT INTO `ecs_region` VALUES ('105', '7', '贺州', '2', '0');
INSERT INTO `ecs_region` VALUES ('106', '7', '来宾', '2', '0');
INSERT INTO `ecs_region` VALUES ('107', '7', '柳州', '2', '0');
INSERT INTO `ecs_region` VALUES ('108', '7', '钦州', '2', '0');
INSERT INTO `ecs_region` VALUES ('109', '7', '梧州', '2', '0');
INSERT INTO `ecs_region` VALUES ('110', '7', '玉林', '2', '0');
INSERT INTO `ecs_region` VALUES ('111', '8', '贵阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('112', '8', '安顺', '2', '0');
INSERT INTO `ecs_region` VALUES ('113', '8', '毕节', '2', '0');
INSERT INTO `ecs_region` VALUES ('114', '8', '六盘水', '2', '0');
INSERT INTO `ecs_region` VALUES ('115', '8', '黔东南', '2', '0');
INSERT INTO `ecs_region` VALUES ('116', '8', '黔南', '2', '0');
INSERT INTO `ecs_region` VALUES ('117', '8', '黔西南', '2', '0');
INSERT INTO `ecs_region` VALUES ('118', '8', '铜仁', '2', '0');
INSERT INTO `ecs_region` VALUES ('119', '8', '遵义', '2', '0');
INSERT INTO `ecs_region` VALUES ('120', '9', '海口', '2', '0');
INSERT INTO `ecs_region` VALUES ('121', '9', '三亚', '2', '0');
INSERT INTO `ecs_region` VALUES ('122', '9', '白沙', '2', '0');
INSERT INTO `ecs_region` VALUES ('123', '9', '保亭', '2', '0');
INSERT INTO `ecs_region` VALUES ('124', '9', '昌江', '2', '0');
INSERT INTO `ecs_region` VALUES ('125', '9', '澄迈县', '2', '0');
INSERT INTO `ecs_region` VALUES ('126', '9', '定安县', '2', '0');
INSERT INTO `ecs_region` VALUES ('127', '9', '东方', '2', '0');
INSERT INTO `ecs_region` VALUES ('128', '9', '乐东', '2', '0');
INSERT INTO `ecs_region` VALUES ('129', '9', '临高县', '2', '0');
INSERT INTO `ecs_region` VALUES ('130', '9', '陵水', '2', '0');
INSERT INTO `ecs_region` VALUES ('131', '9', '琼海', '2', '0');
INSERT INTO `ecs_region` VALUES ('132', '9', '琼中', '2', '0');
INSERT INTO `ecs_region` VALUES ('133', '9', '屯昌县', '2', '0');
INSERT INTO `ecs_region` VALUES ('134', '9', '万宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('135', '9', '文昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('136', '9', '五指山', '2', '0');
INSERT INTO `ecs_region` VALUES ('137', '9', '儋州', '2', '0');
INSERT INTO `ecs_region` VALUES ('138', '10', '石家庄', '2', '0');
INSERT INTO `ecs_region` VALUES ('139', '10', '保定', '2', '0');
INSERT INTO `ecs_region` VALUES ('140', '10', '沧州', '2', '0');
INSERT INTO `ecs_region` VALUES ('141', '10', '承德', '2', '0');
INSERT INTO `ecs_region` VALUES ('142', '10', '邯郸', '2', '0');
INSERT INTO `ecs_region` VALUES ('143', '10', '衡水', '2', '0');
INSERT INTO `ecs_region` VALUES ('144', '10', '廊坊', '2', '0');
INSERT INTO `ecs_region` VALUES ('145', '10', '秦皇岛', '2', '0');
INSERT INTO `ecs_region` VALUES ('146', '10', '唐山', '2', '0');
INSERT INTO `ecs_region` VALUES ('147', '10', '邢台', '2', '0');
INSERT INTO `ecs_region` VALUES ('148', '10', '张家口', '2', '0');
INSERT INTO `ecs_region` VALUES ('149', '11', '郑州', '2', '0');
INSERT INTO `ecs_region` VALUES ('150', '11', '洛阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('151', '11', '开封', '2', '0');
INSERT INTO `ecs_region` VALUES ('152', '11', '安阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('153', '11', '鹤壁', '2', '0');
INSERT INTO `ecs_region` VALUES ('154', '11', '济源', '2', '0');
INSERT INTO `ecs_region` VALUES ('155', '11', '焦作', '2', '0');
INSERT INTO `ecs_region` VALUES ('156', '11', '南阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('157', '11', '平顶山', '2', '0');
INSERT INTO `ecs_region` VALUES ('158', '11', '三门峡', '2', '0');
INSERT INTO `ecs_region` VALUES ('159', '11', '商丘', '2', '0');
INSERT INTO `ecs_region` VALUES ('160', '11', '新乡', '2', '0');
INSERT INTO `ecs_region` VALUES ('161', '11', '信阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('162', '11', '许昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('163', '11', '周口', '2', '0');
INSERT INTO `ecs_region` VALUES ('164', '11', '驻马店', '2', '0');
INSERT INTO `ecs_region` VALUES ('165', '11', '漯河', '2', '0');
INSERT INTO `ecs_region` VALUES ('166', '11', '濮阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('167', '12', '哈尔滨', '2', '0');
INSERT INTO `ecs_region` VALUES ('168', '12', '大庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('169', '12', '大兴安岭', '2', '0');
INSERT INTO `ecs_region` VALUES ('170', '12', '鹤岗', '2', '0');
INSERT INTO `ecs_region` VALUES ('171', '12', '黑河', '2', '0');
INSERT INTO `ecs_region` VALUES ('172', '12', '鸡西', '2', '0');
INSERT INTO `ecs_region` VALUES ('173', '12', '佳木斯', '2', '0');
INSERT INTO `ecs_region` VALUES ('174', '12', '牡丹江', '2', '0');
INSERT INTO `ecs_region` VALUES ('175', '12', '七台河', '2', '0');
INSERT INTO `ecs_region` VALUES ('176', '12', '齐齐哈尔', '2', '0');
INSERT INTO `ecs_region` VALUES ('177', '12', '双鸭山', '2', '0');
INSERT INTO `ecs_region` VALUES ('178', '12', '绥化', '2', '0');
INSERT INTO `ecs_region` VALUES ('179', '12', '伊春', '2', '0');
INSERT INTO `ecs_region` VALUES ('180', '13', '武汉', '2', '0');
INSERT INTO `ecs_region` VALUES ('181', '13', '仙桃', '2', '0');
INSERT INTO `ecs_region` VALUES ('182', '13', '鄂州', '2', '0');
INSERT INTO `ecs_region` VALUES ('183', '13', '黄冈', '2', '0');
INSERT INTO `ecs_region` VALUES ('184', '13', '黄石', '2', '0');
INSERT INTO `ecs_region` VALUES ('185', '13', '荆门', '2', '0');
INSERT INTO `ecs_region` VALUES ('186', '13', '荆州', '2', '0');
INSERT INTO `ecs_region` VALUES ('187', '13', '潜江', '2', '0');
INSERT INTO `ecs_region` VALUES ('188', '13', '神农架林区', '2', '0');
INSERT INTO `ecs_region` VALUES ('189', '13', '十堰', '2', '0');
INSERT INTO `ecs_region` VALUES ('190', '13', '随州', '2', '0');
INSERT INTO `ecs_region` VALUES ('191', '13', '天门', '2', '0');
INSERT INTO `ecs_region` VALUES ('192', '13', '咸宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('193', '13', '襄樊', '2', '0');
INSERT INTO `ecs_region` VALUES ('194', '13', '孝感', '2', '0');
INSERT INTO `ecs_region` VALUES ('195', '13', '宜昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('196', '13', '恩施', '2', '0');
INSERT INTO `ecs_region` VALUES ('197', '14', '长沙', '2', '0');
INSERT INTO `ecs_region` VALUES ('198', '14', '张家界', '2', '0');
INSERT INTO `ecs_region` VALUES ('199', '14', '常德', '2', '0');
INSERT INTO `ecs_region` VALUES ('200', '14', '郴州', '2', '0');
INSERT INTO `ecs_region` VALUES ('201', '14', '衡阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('202', '14', '怀化', '2', '0');
INSERT INTO `ecs_region` VALUES ('203', '14', '娄底', '2', '0');
INSERT INTO `ecs_region` VALUES ('204', '14', '邵阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('205', '14', '湘潭', '2', '0');
INSERT INTO `ecs_region` VALUES ('206', '14', '湘西', '2', '0');
INSERT INTO `ecs_region` VALUES ('207', '14', '益阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('208', '14', '永州', '2', '0');
INSERT INTO `ecs_region` VALUES ('209', '14', '岳阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('210', '14', '株洲', '2', '0');
INSERT INTO `ecs_region` VALUES ('211', '15', '长春', '2', '0');
INSERT INTO `ecs_region` VALUES ('212', '15', '吉林', '2', '0');
INSERT INTO `ecs_region` VALUES ('213', '15', '白城', '2', '0');
INSERT INTO `ecs_region` VALUES ('214', '15', '白山', '2', '0');
INSERT INTO `ecs_region` VALUES ('215', '15', '辽源', '2', '0');
INSERT INTO `ecs_region` VALUES ('216', '15', '四平', '2', '0');
INSERT INTO `ecs_region` VALUES ('217', '15', '松原', '2', '0');
INSERT INTO `ecs_region` VALUES ('218', '15', '通化', '2', '0');
INSERT INTO `ecs_region` VALUES ('219', '15', '延边', '2', '0');
INSERT INTO `ecs_region` VALUES ('220', '16', '南京', '2', '0');
INSERT INTO `ecs_region` VALUES ('221', '16', '苏州', '2', '0');
INSERT INTO `ecs_region` VALUES ('222', '16', '无锡', '2', '0');
INSERT INTO `ecs_region` VALUES ('223', '16', '常州', '2', '0');
INSERT INTO `ecs_region` VALUES ('224', '16', '淮安', '2', '0');
INSERT INTO `ecs_region` VALUES ('225', '16', '连云港', '2', '0');
INSERT INTO `ecs_region` VALUES ('226', '16', '南通', '2', '0');
INSERT INTO `ecs_region` VALUES ('227', '16', '宿迁', '2', '0');
INSERT INTO `ecs_region` VALUES ('228', '16', '泰州', '2', '0');
INSERT INTO `ecs_region` VALUES ('229', '16', '徐州', '2', '0');
INSERT INTO `ecs_region` VALUES ('230', '16', '盐城', '2', '0');
INSERT INTO `ecs_region` VALUES ('231', '16', '扬州', '2', '0');
INSERT INTO `ecs_region` VALUES ('232', '16', '镇江', '2', '0');
INSERT INTO `ecs_region` VALUES ('233', '17', '南昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('234', '17', '抚州', '2', '0');
INSERT INTO `ecs_region` VALUES ('235', '17', '赣州', '2', '0');
INSERT INTO `ecs_region` VALUES ('236', '17', '吉安', '2', '0');
INSERT INTO `ecs_region` VALUES ('237', '17', '景德镇', '2', '0');
INSERT INTO `ecs_region` VALUES ('238', '17', '九江', '2', '0');
INSERT INTO `ecs_region` VALUES ('239', '17', '萍乡', '2', '0');
INSERT INTO `ecs_region` VALUES ('240', '17', '上饶', '2', '0');
INSERT INTO `ecs_region` VALUES ('241', '17', '新余', '2', '0');
INSERT INTO `ecs_region` VALUES ('242', '17', '宜春', '2', '0');
INSERT INTO `ecs_region` VALUES ('243', '17', '鹰潭', '2', '0');
INSERT INTO `ecs_region` VALUES ('244', '18', '沈阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('245', '18', '大连', '2', '0');
INSERT INTO `ecs_region` VALUES ('246', '18', '鞍山', '2', '0');
INSERT INTO `ecs_region` VALUES ('247', '18', '本溪', '2', '0');
INSERT INTO `ecs_region` VALUES ('248', '18', '朝阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('249', '18', '丹东', '2', '0');
INSERT INTO `ecs_region` VALUES ('250', '18', '抚顺', '2', '0');
INSERT INTO `ecs_region` VALUES ('251', '18', '阜新', '2', '0');
INSERT INTO `ecs_region` VALUES ('252', '18', '葫芦岛', '2', '0');
INSERT INTO `ecs_region` VALUES ('253', '18', '锦州', '2', '0');
INSERT INTO `ecs_region` VALUES ('254', '18', '辽阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('255', '18', '盘锦', '2', '0');
INSERT INTO `ecs_region` VALUES ('256', '18', '铁岭', '2', '0');
INSERT INTO `ecs_region` VALUES ('257', '18', '营口', '2', '0');
INSERT INTO `ecs_region` VALUES ('258', '19', '呼和浩特', '2', '0');
INSERT INTO `ecs_region` VALUES ('259', '19', '阿拉善盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('260', '19', '巴彦淖尔盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('261', '19', '包头', '2', '0');
INSERT INTO `ecs_region` VALUES ('262', '19', '赤峰', '2', '0');
INSERT INTO `ecs_region` VALUES ('263', '19', '鄂尔多斯', '2', '0');
INSERT INTO `ecs_region` VALUES ('264', '19', '呼伦贝尔', '2', '0');
INSERT INTO `ecs_region` VALUES ('265', '19', '通辽', '2', '0');
INSERT INTO `ecs_region` VALUES ('266', '19', '乌海', '2', '0');
INSERT INTO `ecs_region` VALUES ('267', '19', '乌兰察布市', '2', '0');
INSERT INTO `ecs_region` VALUES ('268', '19', '锡林郭勒盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('269', '19', '兴安盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('270', '20', '银川', '2', '0');
INSERT INTO `ecs_region` VALUES ('271', '20', '固原', '2', '0');
INSERT INTO `ecs_region` VALUES ('272', '20', '石嘴山', '2', '0');
INSERT INTO `ecs_region` VALUES ('273', '20', '吴忠', '2', '0');
INSERT INTO `ecs_region` VALUES ('274', '20', '中卫', '2', '0');
INSERT INTO `ecs_region` VALUES ('275', '21', '西宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('276', '21', '果洛', '2', '0');
INSERT INTO `ecs_region` VALUES ('277', '21', '海北', '2', '0');
INSERT INTO `ecs_region` VALUES ('278', '21', '海东', '2', '0');
INSERT INTO `ecs_region` VALUES ('279', '21', '海南', '2', '0');
INSERT INTO `ecs_region` VALUES ('280', '21', '海西', '2', '0');
INSERT INTO `ecs_region` VALUES ('281', '21', '黄南', '2', '0');
INSERT INTO `ecs_region` VALUES ('282', '21', '玉树', '2', '0');
INSERT INTO `ecs_region` VALUES ('283', '22', '济南', '2', '0');
INSERT INTO `ecs_region` VALUES ('284', '22', '青岛', '2', '0');
INSERT INTO `ecs_region` VALUES ('285', '22', '滨州', '2', '0');
INSERT INTO `ecs_region` VALUES ('286', '22', '德州', '2', '0');
INSERT INTO `ecs_region` VALUES ('287', '22', '东营', '2', '0');
INSERT INTO `ecs_region` VALUES ('288', '22', '菏泽', '2', '0');
INSERT INTO `ecs_region` VALUES ('289', '22', '济宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('290', '22', '莱芜', '2', '0');
INSERT INTO `ecs_region` VALUES ('291', '22', '聊城', '2', '0');
INSERT INTO `ecs_region` VALUES ('292', '22', '临沂', '2', '0');
INSERT INTO `ecs_region` VALUES ('293', '22', '日照', '2', '0');
INSERT INTO `ecs_region` VALUES ('294', '22', '泰安', '2', '0');
INSERT INTO `ecs_region` VALUES ('295', '22', '威海', '2', '0');
INSERT INTO `ecs_region` VALUES ('296', '22', '潍坊', '2', '0');
INSERT INTO `ecs_region` VALUES ('297', '22', '烟台', '2', '0');
INSERT INTO `ecs_region` VALUES ('298', '22', '枣庄', '2', '0');
INSERT INTO `ecs_region` VALUES ('299', '22', '淄博', '2', '0');
INSERT INTO `ecs_region` VALUES ('300', '23', '太原', '2', '0');
INSERT INTO `ecs_region` VALUES ('301', '23', '长治', '2', '0');
INSERT INTO `ecs_region` VALUES ('302', '23', '大同', '2', '0');
INSERT INTO `ecs_region` VALUES ('303', '23', '晋城', '2', '0');
INSERT INTO `ecs_region` VALUES ('304', '23', '晋中', '2', '0');
INSERT INTO `ecs_region` VALUES ('305', '23', '临汾', '2', '0');
INSERT INTO `ecs_region` VALUES ('306', '23', '吕梁', '2', '0');
INSERT INTO `ecs_region` VALUES ('307', '23', '朔州', '2', '0');
INSERT INTO `ecs_region` VALUES ('308', '23', '忻州', '2', '0');
INSERT INTO `ecs_region` VALUES ('309', '23', '阳泉', '2', '0');
INSERT INTO `ecs_region` VALUES ('310', '23', '运城', '2', '0');
INSERT INTO `ecs_region` VALUES ('311', '24', '西安', '2', '0');
INSERT INTO `ecs_region` VALUES ('312', '24', '安康', '2', '0');
INSERT INTO `ecs_region` VALUES ('313', '24', '宝鸡', '2', '0');
INSERT INTO `ecs_region` VALUES ('314', '24', '汉中', '2', '0');
INSERT INTO `ecs_region` VALUES ('315', '24', '商洛', '2', '0');
INSERT INTO `ecs_region` VALUES ('316', '24', '铜川', '2', '0');
INSERT INTO `ecs_region` VALUES ('317', '24', '渭南', '2', '0');
INSERT INTO `ecs_region` VALUES ('318', '24', '咸阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('319', '24', '延安', '2', '0');
INSERT INTO `ecs_region` VALUES ('320', '24', '榆林', '2', '0');
INSERT INTO `ecs_region` VALUES ('321', '25', '上海', '2', '0');
INSERT INTO `ecs_region` VALUES ('322', '26', '成都', '2', '0');
INSERT INTO `ecs_region` VALUES ('323', '26', '绵阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('324', '26', '阿坝', '2', '0');
INSERT INTO `ecs_region` VALUES ('325', '26', '巴中', '2', '0');
INSERT INTO `ecs_region` VALUES ('326', '26', '达州', '2', '0');
INSERT INTO `ecs_region` VALUES ('327', '26', '德阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('328', '26', '甘孜', '2', '0');
INSERT INTO `ecs_region` VALUES ('329', '26', '广安', '2', '0');
INSERT INTO `ecs_region` VALUES ('330', '26', '广元', '2', '0');
INSERT INTO `ecs_region` VALUES ('331', '26', '乐山', '2', '0');
INSERT INTO `ecs_region` VALUES ('332', '26', '凉山', '2', '0');
INSERT INTO `ecs_region` VALUES ('333', '26', '眉山', '2', '0');
INSERT INTO `ecs_region` VALUES ('334', '26', '南充', '2', '0');
INSERT INTO `ecs_region` VALUES ('335', '26', '内江', '2', '0');
INSERT INTO `ecs_region` VALUES ('336', '26', '攀枝花', '2', '0');
INSERT INTO `ecs_region` VALUES ('337', '26', '遂宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('338', '26', '雅安', '2', '0');
INSERT INTO `ecs_region` VALUES ('339', '26', '宜宾', '2', '0');
INSERT INTO `ecs_region` VALUES ('340', '26', '资阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('341', '26', '自贡', '2', '0');
INSERT INTO `ecs_region` VALUES ('342', '26', '泸州', '2', '0');
INSERT INTO `ecs_region` VALUES ('343', '27', '天津', '2', '0');
INSERT INTO `ecs_region` VALUES ('344', '28', '拉萨', '2', '0');
INSERT INTO `ecs_region` VALUES ('345', '28', '阿里', '2', '0');
INSERT INTO `ecs_region` VALUES ('346', '28', '昌都', '2', '0');
INSERT INTO `ecs_region` VALUES ('347', '28', '林芝', '2', '0');
INSERT INTO `ecs_region` VALUES ('348', '28', '那曲', '2', '0');
INSERT INTO `ecs_region` VALUES ('349', '28', '日喀则', '2', '0');
INSERT INTO `ecs_region` VALUES ('350', '28', '山南', '2', '0');
INSERT INTO `ecs_region` VALUES ('351', '29', '乌鲁木齐', '2', '0');
INSERT INTO `ecs_region` VALUES ('352', '29', '阿克苏', '2', '0');
INSERT INTO `ecs_region` VALUES ('353', '29', '阿拉尔', '2', '0');
INSERT INTO `ecs_region` VALUES ('354', '29', '巴音郭楞', '2', '0');
INSERT INTO `ecs_region` VALUES ('355', '29', '博尔塔拉', '2', '0');
INSERT INTO `ecs_region` VALUES ('356', '29', '昌吉', '2', '0');
INSERT INTO `ecs_region` VALUES ('357', '29', '哈密', '2', '0');
INSERT INTO `ecs_region` VALUES ('358', '29', '和田', '2', '0');
INSERT INTO `ecs_region` VALUES ('359', '29', '喀什', '2', '0');
INSERT INTO `ecs_region` VALUES ('360', '29', '克拉玛依', '2', '0');
INSERT INTO `ecs_region` VALUES ('361', '29', '克孜勒苏', '2', '0');
INSERT INTO `ecs_region` VALUES ('362', '29', '石河子', '2', '0');
INSERT INTO `ecs_region` VALUES ('363', '29', '图木舒克', '2', '0');
INSERT INTO `ecs_region` VALUES ('364', '29', '吐鲁番', '2', '0');
INSERT INTO `ecs_region` VALUES ('365', '29', '五家渠', '2', '0');
INSERT INTO `ecs_region` VALUES ('366', '29', '伊犁', '2', '0');
INSERT INTO `ecs_region` VALUES ('367', '30', '昆明', '2', '0');
INSERT INTO `ecs_region` VALUES ('368', '30', '怒江', '2', '0');
INSERT INTO `ecs_region` VALUES ('369', '30', '普洱', '2', '0');
INSERT INTO `ecs_region` VALUES ('370', '30', '丽江', '2', '0');
INSERT INTO `ecs_region` VALUES ('371', '30', '保山', '2', '0');
INSERT INTO `ecs_region` VALUES ('372', '30', '楚雄', '2', '0');
INSERT INTO `ecs_region` VALUES ('373', '30', '大理', '2', '0');
INSERT INTO `ecs_region` VALUES ('374', '30', '德宏', '2', '0');
INSERT INTO `ecs_region` VALUES ('375', '30', '迪庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('376', '30', '红河', '2', '0');
INSERT INTO `ecs_region` VALUES ('377', '30', '临沧', '2', '0');
INSERT INTO `ecs_region` VALUES ('378', '30', '曲靖', '2', '0');
INSERT INTO `ecs_region` VALUES ('379', '30', '文山', '2', '0');
INSERT INTO `ecs_region` VALUES ('380', '30', '西双版纳', '2', '0');
INSERT INTO `ecs_region` VALUES ('381', '30', '玉溪', '2', '0');
INSERT INTO `ecs_region` VALUES ('382', '30', '昭通', '2', '0');
INSERT INTO `ecs_region` VALUES ('383', '31', '杭州', '2', '0');
INSERT INTO `ecs_region` VALUES ('384', '31', '湖州', '2', '0');
INSERT INTO `ecs_region` VALUES ('385', '31', '嘉兴', '2', '0');
INSERT INTO `ecs_region` VALUES ('386', '31', '金华', '2', '0');
INSERT INTO `ecs_region` VALUES ('387', '31', '丽水', '2', '0');
INSERT INTO `ecs_region` VALUES ('388', '31', '宁波', '2', '0');
INSERT INTO `ecs_region` VALUES ('389', '31', '绍兴', '2', '0');
INSERT INTO `ecs_region` VALUES ('390', '31', '台州', '2', '0');
INSERT INTO `ecs_region` VALUES ('391', '31', '温州', '2', '0');
INSERT INTO `ecs_region` VALUES ('392', '31', '舟山', '2', '0');
INSERT INTO `ecs_region` VALUES ('393', '31', '衢州', '2', '0');
INSERT INTO `ecs_region` VALUES ('394', '32', '重庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('395', '33', '香港', '2', '0');
INSERT INTO `ecs_region` VALUES ('396', '34', '澳门', '2', '0');
INSERT INTO `ecs_region` VALUES ('397', '35', '台湾', '2', '0');
INSERT INTO `ecs_region` VALUES ('398', '36', '迎江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('399', '36', '大观区', '3', '0');
INSERT INTO `ecs_region` VALUES ('400', '36', '宜秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('401', '36', '桐城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('402', '36', '怀宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('403', '36', '枞阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('404', '36', '潜山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('405', '36', '太湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('406', '36', '宿松县', '3', '0');
INSERT INTO `ecs_region` VALUES ('407', '36', '望江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('408', '36', '岳西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('409', '37', '中市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('410', '37', '东市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('411', '37', '西市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('412', '37', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('413', '37', '怀远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('414', '37', '五河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('415', '37', '固镇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('416', '38', '居巢区', '3', '0');
INSERT INTO `ecs_region` VALUES ('417', '38', '庐江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('418', '38', '无为县', '3', '0');
INSERT INTO `ecs_region` VALUES ('419', '38', '含山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('420', '38', '和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('421', '39', '贵池区', '3', '0');
INSERT INTO `ecs_region` VALUES ('422', '39', '东至县', '3', '0');
INSERT INTO `ecs_region` VALUES ('423', '39', '石台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('424', '39', '青阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('425', '40', '琅琊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('426', '40', '南谯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('427', '40', '天长市', '3', '0');
INSERT INTO `ecs_region` VALUES ('428', '40', '明光市', '3', '0');
INSERT INTO `ecs_region` VALUES ('429', '40', '来安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('430', '40', '全椒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('431', '40', '定远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('432', '40', '凤阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('433', '41', '蚌山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('434', '41', '龙子湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('435', '41', '禹会区', '3', '0');
INSERT INTO `ecs_region` VALUES ('436', '41', '淮上区', '3', '0');
INSERT INTO `ecs_region` VALUES ('437', '41', '颍州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('438', '41', '颍东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('439', '41', '颍泉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('440', '41', '界首市', '3', '0');
INSERT INTO `ecs_region` VALUES ('441', '41', '临泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('442', '41', '太和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('443', '41', '阜南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('444', '41', '颖上县', '3', '0');
INSERT INTO `ecs_region` VALUES ('445', '42', '相山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('446', '42', '杜集区', '3', '0');
INSERT INTO `ecs_region` VALUES ('447', '42', '烈山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('448', '42', '濉溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('449', '43', '田家庵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('450', '43', '大通区', '3', '0');
INSERT INTO `ecs_region` VALUES ('451', '43', '谢家集区', '3', '0');
INSERT INTO `ecs_region` VALUES ('452', '43', '八公山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('453', '43', '潘集区', '3', '0');
INSERT INTO `ecs_region` VALUES ('454', '43', '凤台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('455', '44', '屯溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('456', '44', '黄山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('457', '44', '徽州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('458', '44', '歙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('459', '44', '休宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('460', '44', '黟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('461', '44', '祁门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('462', '45', '金安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('463', '45', '裕安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('464', '45', '寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('465', '45', '霍邱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('466', '45', '舒城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('467', '45', '金寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('468', '45', '霍山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('469', '46', '雨山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('470', '46', '花山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('471', '46', '金家庄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('472', '46', '当涂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('473', '47', '埇桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('474', '47', '砀山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('475', '47', '萧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('476', '47', '灵璧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('477', '47', '泗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('478', '48', '铜官山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('479', '48', '狮子山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('480', '48', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('481', '48', '铜陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('482', '49', '镜湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('483', '49', '弋江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('484', '49', '鸠江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('485', '49', '三山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('486', '49', '芜湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('487', '49', '繁昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('488', '49', '南陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('489', '50', '宣州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('490', '50', '宁国市', '3', '0');
INSERT INTO `ecs_region` VALUES ('491', '50', '郎溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('492', '50', '广德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('493', '50', '泾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('494', '50', '绩溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('495', '50', '旌德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('496', '51', '涡阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('497', '51', '蒙城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('498', '51', '利辛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('499', '51', '谯城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('500', '52', '东城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('501', '52', '西城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('502', '52', '海淀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('503', '52', '朝阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('504', '52', '崇文区', '3', '0');
INSERT INTO `ecs_region` VALUES ('505', '52', '宣武区', '3', '0');
INSERT INTO `ecs_region` VALUES ('506', '52', '丰台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('507', '52', '石景山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('508', '52', '房山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('509', '52', '门头沟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('510', '52', '通州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('511', '52', '顺义区', '3', '0');
INSERT INTO `ecs_region` VALUES ('512', '52', '昌平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('513', '52', '怀柔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('514', '52', '平谷区', '3', '0');
INSERT INTO `ecs_region` VALUES ('515', '52', '大兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('516', '52', '密云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('517', '52', '延庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('518', '53', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('519', '53', '台江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('520', '53', '仓山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('521', '53', '马尾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('522', '53', '晋安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('523', '53', '福清市', '3', '0');
INSERT INTO `ecs_region` VALUES ('524', '53', '长乐市', '3', '0');
INSERT INTO `ecs_region` VALUES ('525', '53', '闽侯县', '3', '0');
INSERT INTO `ecs_region` VALUES ('526', '53', '连江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('527', '53', '罗源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('528', '53', '闽清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('529', '53', '永泰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('530', '53', '平潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('531', '54', '新罗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('532', '54', '漳平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('533', '54', '长汀县', '3', '0');
INSERT INTO `ecs_region` VALUES ('534', '54', '永定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('535', '54', '上杭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('536', '54', '武平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('537', '54', '连城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('538', '55', '延平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('539', '55', '邵武市', '3', '0');
INSERT INTO `ecs_region` VALUES ('540', '55', '武夷山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('541', '55', '建瓯市', '3', '0');
INSERT INTO `ecs_region` VALUES ('542', '55', '建阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('543', '55', '顺昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('544', '55', '浦城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('545', '55', '光泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('546', '55', '松溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('547', '55', '政和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('548', '56', '蕉城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('549', '56', '福安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('550', '56', '福鼎市', '3', '0');
INSERT INTO `ecs_region` VALUES ('551', '56', '霞浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('552', '56', '古田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('553', '56', '屏南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('554', '56', '寿宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('555', '56', '周宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('556', '56', '柘荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('557', '57', '城厢区', '3', '0');
INSERT INTO `ecs_region` VALUES ('558', '57', '涵江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('559', '57', '荔城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('560', '57', '秀屿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('561', '57', '仙游县', '3', '0');
INSERT INTO `ecs_region` VALUES ('562', '58', '鲤城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('563', '58', '丰泽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('564', '58', '洛江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('565', '58', '清濛开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('566', '58', '泉港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('567', '58', '石狮市', '3', '0');
INSERT INTO `ecs_region` VALUES ('568', '58', '晋江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('569', '58', '南安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('570', '58', '惠安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('571', '58', '安溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('572', '58', '永春县', '3', '0');
INSERT INTO `ecs_region` VALUES ('573', '58', '德化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('574', '58', '金门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('575', '59', '梅列区', '3', '0');
INSERT INTO `ecs_region` VALUES ('576', '59', '三元区', '3', '0');
INSERT INTO `ecs_region` VALUES ('577', '59', '永安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('578', '59', '明溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('579', '59', '清流县', '3', '0');
INSERT INTO `ecs_region` VALUES ('580', '59', '宁化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('581', '59', '大田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('582', '59', '尤溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('583', '59', '沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('584', '59', '将乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('585', '59', '泰宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('586', '59', '建宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('587', '60', '思明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('588', '60', '海沧区', '3', '0');
INSERT INTO `ecs_region` VALUES ('589', '60', '湖里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('590', '60', '集美区', '3', '0');
INSERT INTO `ecs_region` VALUES ('591', '60', '同安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('592', '60', '翔安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('593', '61', '芗城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('594', '61', '龙文区', '3', '0');
INSERT INTO `ecs_region` VALUES ('595', '61', '龙海市', '3', '0');
INSERT INTO `ecs_region` VALUES ('596', '61', '云霄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('597', '61', '漳浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('598', '61', '诏安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('599', '61', '长泰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('600', '61', '东山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('601', '61', '南靖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('602', '61', '平和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('603', '61', '华安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('604', '62', '皋兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('605', '62', '城关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('606', '62', '七里河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('607', '62', '西固区', '3', '0');
INSERT INTO `ecs_region` VALUES ('608', '62', '安宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('609', '62', '红古区', '3', '0');
INSERT INTO `ecs_region` VALUES ('610', '62', '永登县', '3', '0');
INSERT INTO `ecs_region` VALUES ('611', '62', '榆中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('612', '63', '白银区', '3', '0');
INSERT INTO `ecs_region` VALUES ('613', '63', '平川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('614', '63', '会宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('615', '63', '景泰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('616', '63', '靖远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('617', '64', '临洮县', '3', '0');
INSERT INTO `ecs_region` VALUES ('618', '64', '陇西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('619', '64', '通渭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('620', '64', '渭源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('621', '64', '漳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('622', '64', '岷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('623', '64', '安定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('624', '64', '安定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('625', '65', '合作市', '3', '0');
INSERT INTO `ecs_region` VALUES ('626', '65', '临潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('627', '65', '卓尼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('628', '65', '舟曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('629', '65', '迭部县', '3', '0');
INSERT INTO `ecs_region` VALUES ('630', '65', '玛曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('631', '65', '碌曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('632', '65', '夏河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('633', '66', '嘉峪关市', '3', '0');
INSERT INTO `ecs_region` VALUES ('634', '67', '金川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('635', '67', '永昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('636', '68', '肃州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('637', '68', '玉门市', '3', '0');
INSERT INTO `ecs_region` VALUES ('638', '68', '敦煌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('639', '68', '金塔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('640', '68', '瓜州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('641', '68', '肃北', '3', '0');
INSERT INTO `ecs_region` VALUES ('642', '68', '阿克塞', '3', '0');
INSERT INTO `ecs_region` VALUES ('643', '69', '临夏市', '3', '0');
INSERT INTO `ecs_region` VALUES ('644', '69', '临夏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('645', '69', '康乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('646', '69', '永靖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('647', '69', '广河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('648', '69', '和政县', '3', '0');
INSERT INTO `ecs_region` VALUES ('649', '69', '东乡族自治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('650', '69', '积石山', '3', '0');
INSERT INTO `ecs_region` VALUES ('651', '70', '成县', '3', '0');
INSERT INTO `ecs_region` VALUES ('652', '70', '徽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('653', '70', '康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('654', '70', '礼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('655', '70', '两当县', '3', '0');
INSERT INTO `ecs_region` VALUES ('656', '70', '文县', '3', '0');
INSERT INTO `ecs_region` VALUES ('657', '70', '西和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('658', '70', '宕昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('659', '70', '武都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('660', '71', '崇信县', '3', '0');
INSERT INTO `ecs_region` VALUES ('661', '71', '华亭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('662', '71', '静宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('663', '71', '灵台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('664', '71', '崆峒区', '3', '0');
INSERT INTO `ecs_region` VALUES ('665', '71', '庄浪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('666', '71', '泾川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('667', '72', '合水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('668', '72', '华池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('669', '72', '环县', '3', '0');
INSERT INTO `ecs_region` VALUES ('670', '72', '宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('671', '72', '庆城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('672', '72', '西峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('673', '72', '镇原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('674', '72', '正宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('675', '73', '甘谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('676', '73', '秦安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('677', '73', '清水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('678', '73', '秦州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('679', '73', '麦积区', '3', '0');
INSERT INTO `ecs_region` VALUES ('680', '73', '武山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('681', '73', '张家川', '3', '0');
INSERT INTO `ecs_region` VALUES ('682', '74', '古浪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('683', '74', '民勤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('684', '74', '天祝', '3', '0');
INSERT INTO `ecs_region` VALUES ('685', '74', '凉州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('686', '75', '高台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('687', '75', '临泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('688', '75', '民乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('689', '75', '山丹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('690', '75', '肃南', '3', '0');
INSERT INTO `ecs_region` VALUES ('691', '75', '甘州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('692', '76', '从化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('693', '76', '天河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('694', '76', '东山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('695', '76', '白云区', '3', '0');
INSERT INTO `ecs_region` VALUES ('696', '76', '海珠区', '3', '0');
INSERT INTO `ecs_region` VALUES ('697', '76', '荔湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('698', '76', '越秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('699', '76', '黄埔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('700', '76', '番禺区', '3', '0');
INSERT INTO `ecs_region` VALUES ('701', '76', '花都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('702', '76', '增城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('703', '76', '从化区', '3', '0');
INSERT INTO `ecs_region` VALUES ('704', '76', '市郊', '3', '0');
INSERT INTO `ecs_region` VALUES ('705', '77', '福田区', '3', '0');
INSERT INTO `ecs_region` VALUES ('706', '77', '罗湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('707', '77', '南山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('708', '77', '宝安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('709', '77', '龙岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('710', '77', '盐田区', '3', '0');
INSERT INTO `ecs_region` VALUES ('711', '78', '湘桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('712', '78', '潮安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('713', '78', '饶平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('714', '79', '南城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('715', '79', '东城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('716', '79', '万江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('717', '79', '莞城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('718', '79', '石龙镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('719', '79', '虎门镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('720', '79', '麻涌镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('721', '79', '道滘镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('722', '79', '石碣镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('723', '79', '沙田镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('724', '79', '望牛墩镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('725', '79', '洪梅镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('726', '79', '茶山镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('727', '79', '寮步镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('728', '79', '大岭山镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('729', '79', '大朗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('730', '79', '黄江镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('731', '79', '樟木头', '3', '0');
INSERT INTO `ecs_region` VALUES ('732', '79', '凤岗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('733', '79', '塘厦镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('734', '79', '谢岗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('735', '79', '厚街镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('736', '79', '清溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('737', '79', '常平镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('738', '79', '桥头镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('739', '79', '横沥镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('740', '79', '东坑镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('741', '79', '企石镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('742', '79', '石排镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('743', '79', '长安镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('744', '79', '中堂镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('745', '79', '高埗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('746', '80', '禅城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('747', '80', '南海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('748', '80', '顺德区', '3', '0');
INSERT INTO `ecs_region` VALUES ('749', '80', '三水区', '3', '0');
INSERT INTO `ecs_region` VALUES ('750', '80', '高明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('751', '81', '东源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('752', '81', '和平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('753', '81', '源城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('754', '81', '连平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('755', '81', '龙川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('756', '81', '紫金县', '3', '0');
INSERT INTO `ecs_region` VALUES ('757', '82', '惠阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('758', '82', '惠城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('759', '82', '大亚湾', '3', '0');
INSERT INTO `ecs_region` VALUES ('760', '82', '博罗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('761', '82', '惠东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('762', '82', '龙门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('763', '83', '江海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('764', '83', '蓬江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('765', '83', '新会区', '3', '0');
INSERT INTO `ecs_region` VALUES ('766', '83', '台山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('767', '83', '开平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('768', '83', '鹤山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('769', '83', '恩平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('770', '84', '榕城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('771', '84', '普宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('772', '84', '揭东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('773', '84', '揭西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('774', '84', '惠来县', '3', '0');
INSERT INTO `ecs_region` VALUES ('775', '85', '茂南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('776', '85', '茂港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('777', '85', '高州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('778', '85', '化州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('779', '85', '信宜市', '3', '0');
INSERT INTO `ecs_region` VALUES ('780', '85', '电白县', '3', '0');
INSERT INTO `ecs_region` VALUES ('781', '86', '梅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('782', '86', '梅江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('783', '86', '兴宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('784', '86', '大埔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('785', '86', '丰顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('786', '86', '五华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('787', '86', '平远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('788', '86', '蕉岭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('789', '87', '清城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('790', '87', '英德市', '3', '0');
INSERT INTO `ecs_region` VALUES ('791', '87', '连州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('792', '87', '佛冈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('793', '87', '阳山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('794', '87', '清新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('795', '87', '连山', '3', '0');
INSERT INTO `ecs_region` VALUES ('796', '87', '连南', '3', '0');
INSERT INTO `ecs_region` VALUES ('797', '88', '南澳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('798', '88', '潮阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('799', '88', '澄海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('800', '88', '龙湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('801', '88', '金平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('802', '88', '濠江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('803', '88', '潮南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('804', '89', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('805', '89', '陆丰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('806', '89', '海丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('807', '89', '陆河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('808', '90', '曲江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('809', '90', '浈江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('810', '90', '武江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('811', '90', '曲江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('812', '90', '乐昌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('813', '90', '南雄市', '3', '0');
INSERT INTO `ecs_region` VALUES ('814', '90', '始兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('815', '90', '仁化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('816', '90', '翁源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('817', '90', '新丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('818', '90', '乳源', '3', '0');
INSERT INTO `ecs_region` VALUES ('819', '91', '江城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('820', '91', '阳春市', '3', '0');
INSERT INTO `ecs_region` VALUES ('821', '91', '阳西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('822', '91', '阳东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('823', '92', '云城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('824', '92', '罗定市', '3', '0');
INSERT INTO `ecs_region` VALUES ('825', '92', '新兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('826', '92', '郁南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('827', '92', '云安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('828', '93', '赤坎区', '3', '0');
INSERT INTO `ecs_region` VALUES ('829', '93', '霞山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('830', '93', '坡头区', '3', '0');
INSERT INTO `ecs_region` VALUES ('831', '93', '麻章区', '3', '0');
INSERT INTO `ecs_region` VALUES ('832', '93', '廉江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('833', '93', '雷州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('834', '93', '吴川市', '3', '0');
INSERT INTO `ecs_region` VALUES ('835', '93', '遂溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('836', '93', '徐闻县', '3', '0');
INSERT INTO `ecs_region` VALUES ('837', '94', '肇庆市', '3', '0');
INSERT INTO `ecs_region` VALUES ('838', '94', '高要市', '3', '0');
INSERT INTO `ecs_region` VALUES ('839', '94', '四会市', '3', '0');
INSERT INTO `ecs_region` VALUES ('840', '94', '广宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('841', '94', '怀集县', '3', '0');
INSERT INTO `ecs_region` VALUES ('842', '94', '封开县', '3', '0');
INSERT INTO `ecs_region` VALUES ('843', '94', '德庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('844', '95', '石岐街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('845', '95', '东区街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('846', '95', '西区街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('847', '95', '环城街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('848', '95', '中山港街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('849', '95', '五桂山街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('850', '96', '香洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('851', '96', '斗门区', '3', '0');
INSERT INTO `ecs_region` VALUES ('852', '96', '金湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('853', '97', '邕宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('854', '97', '青秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('855', '97', '兴宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('856', '97', '良庆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('857', '97', '西乡塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('858', '97', '江南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('859', '97', '武鸣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('860', '97', '隆安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('861', '97', '马山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('862', '97', '上林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('863', '97', '宾阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('864', '97', '横县', '3', '0');
INSERT INTO `ecs_region` VALUES ('865', '98', '秀峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('866', '98', '叠彩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('867', '98', '象山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('868', '98', '七星区', '3', '0');
INSERT INTO `ecs_region` VALUES ('869', '98', '雁山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('870', '98', '阳朔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('871', '98', '临桂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('872', '98', '灵川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('873', '98', '全州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('874', '98', '平乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('875', '98', '兴安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('876', '98', '灌阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('877', '98', '荔浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('878', '98', '资源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('879', '98', '永福县', '3', '0');
INSERT INTO `ecs_region` VALUES ('880', '98', '龙胜', '3', '0');
INSERT INTO `ecs_region` VALUES ('881', '98', '恭城', '3', '0');
INSERT INTO `ecs_region` VALUES ('882', '99', '右江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('883', '99', '凌云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('884', '99', '平果县', '3', '0');
INSERT INTO `ecs_region` VALUES ('885', '99', '西林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('886', '99', '乐业县', '3', '0');
INSERT INTO `ecs_region` VALUES ('887', '99', '德保县', '3', '0');
INSERT INTO `ecs_region` VALUES ('888', '99', '田林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('889', '99', '田阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('890', '99', '靖西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('891', '99', '田东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('892', '99', '那坡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('893', '99', '隆林', '3', '0');
INSERT INTO `ecs_region` VALUES ('894', '100', '海城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('895', '100', '银海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('896', '100', '铁山港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('897', '100', '合浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('898', '101', '江州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('899', '101', '凭祥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('900', '101', '宁明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('901', '101', '扶绥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('902', '101', '龙州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('903', '101', '大新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('904', '101', '天等县', '3', '0');
INSERT INTO `ecs_region` VALUES ('905', '102', '港口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('906', '102', '防城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('907', '102', '东兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('908', '102', '上思县', '3', '0');
INSERT INTO `ecs_region` VALUES ('909', '103', '港北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('910', '103', '港南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('911', '103', '覃塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('912', '103', '桂平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('913', '103', '平南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('914', '104', '金城江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('915', '104', '宜州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('916', '104', '天峨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('917', '104', '凤山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('918', '104', '南丹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('919', '104', '东兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('920', '104', '都安', '3', '0');
INSERT INTO `ecs_region` VALUES ('921', '104', '罗城', '3', '0');
INSERT INTO `ecs_region` VALUES ('922', '104', '巴马', '3', '0');
INSERT INTO `ecs_region` VALUES ('923', '104', '环江', '3', '0');
INSERT INTO `ecs_region` VALUES ('924', '104', '大化', '3', '0');
INSERT INTO `ecs_region` VALUES ('925', '105', '八步区', '3', '0');
INSERT INTO `ecs_region` VALUES ('926', '105', '钟山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('927', '105', '昭平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('928', '105', '富川', '3', '0');
INSERT INTO `ecs_region` VALUES ('929', '106', '兴宾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('930', '106', '合山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('931', '106', '象州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('932', '106', '武宣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('933', '106', '忻城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('934', '106', '金秀', '3', '0');
INSERT INTO `ecs_region` VALUES ('935', '107', '城中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('936', '107', '鱼峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('937', '107', '柳北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('938', '107', '柳南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('939', '107', '柳江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('940', '107', '柳城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('941', '107', '鹿寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('942', '107', '融安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('943', '107', '融水', '3', '0');
INSERT INTO `ecs_region` VALUES ('944', '107', '三江', '3', '0');
INSERT INTO `ecs_region` VALUES ('945', '108', '钦南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('946', '108', '钦北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('947', '108', '灵山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('948', '108', '浦北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('949', '109', '万秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('950', '109', '蝶山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('951', '109', '长洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('952', '109', '岑溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('953', '109', '苍梧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('954', '109', '藤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('955', '109', '蒙山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('956', '110', '玉州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('957', '110', '北流市', '3', '0');
INSERT INTO `ecs_region` VALUES ('958', '110', '容县', '3', '0');
INSERT INTO `ecs_region` VALUES ('959', '110', '陆川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('960', '110', '博白县', '3', '0');
INSERT INTO `ecs_region` VALUES ('961', '110', '兴业县', '3', '0');
INSERT INTO `ecs_region` VALUES ('962', '111', '南明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('963', '111', '云岩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('964', '111', '花溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('965', '111', '乌当区', '3', '0');
INSERT INTO `ecs_region` VALUES ('966', '111', '白云区', '3', '0');
INSERT INTO `ecs_region` VALUES ('967', '111', '小河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('968', '111', '金阳新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('969', '111', '新天园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('970', '111', '清镇市', '3', '0');
INSERT INTO `ecs_region` VALUES ('971', '111', '开阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('972', '111', '修文县', '3', '0');
INSERT INTO `ecs_region` VALUES ('973', '111', '息烽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('974', '112', '西秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('975', '112', '关岭', '3', '0');
INSERT INTO `ecs_region` VALUES ('976', '112', '镇宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('977', '112', '紫云', '3', '0');
INSERT INTO `ecs_region` VALUES ('978', '112', '平坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('979', '112', '普定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('980', '113', '毕节市', '3', '0');
INSERT INTO `ecs_region` VALUES ('981', '113', '大方县', '3', '0');
INSERT INTO `ecs_region` VALUES ('982', '113', '黔西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('983', '113', '金沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('984', '113', '织金县', '3', '0');
INSERT INTO `ecs_region` VALUES ('985', '113', '纳雍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('986', '113', '赫章县', '3', '0');
INSERT INTO `ecs_region` VALUES ('987', '113', '威宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('988', '114', '钟山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('989', '114', '六枝特区', '3', '0');
INSERT INTO `ecs_region` VALUES ('990', '114', '水城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('991', '114', '盘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('992', '115', '凯里市', '3', '0');
INSERT INTO `ecs_region` VALUES ('993', '115', '黄平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('994', '115', '施秉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('995', '115', '三穗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('996', '115', '镇远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('997', '115', '岑巩县', '3', '0');
INSERT INTO `ecs_region` VALUES ('998', '115', '天柱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('999', '115', '锦屏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1000', '115', '剑河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1001', '115', '台江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1002', '115', '黎平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1003', '115', '榕江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1004', '115', '从江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1005', '115', '雷山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1006', '115', '麻江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1007', '115', '丹寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1008', '116', '都匀市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1009', '116', '福泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1010', '116', '荔波县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1011', '116', '贵定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1012', '116', '瓮安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1013', '116', '独山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1014', '116', '平塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1015', '116', '罗甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1016', '116', '长顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1017', '116', '龙里县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1018', '116', '惠水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1019', '116', '三都', '3', '0');
INSERT INTO `ecs_region` VALUES ('1020', '117', '兴义市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1021', '117', '兴仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1022', '117', '普安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1023', '117', '晴隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1024', '117', '贞丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1025', '117', '望谟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1026', '117', '册亨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1027', '117', '安龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1028', '118', '铜仁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1029', '118', '江口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1030', '118', '石阡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1031', '118', '思南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1032', '118', '德江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1033', '118', '玉屏', '3', '0');
INSERT INTO `ecs_region` VALUES ('1034', '118', '印江', '3', '0');
INSERT INTO `ecs_region` VALUES ('1035', '118', '沿河', '3', '0');
INSERT INTO `ecs_region` VALUES ('1036', '118', '松桃', '3', '0');
INSERT INTO `ecs_region` VALUES ('1037', '118', '万山特区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1038', '119', '红花岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1039', '119', '务川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1040', '119', '道真县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1041', '119', '汇川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1042', '119', '赤水市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1043', '119', '仁怀市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1044', '119', '遵义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1045', '119', '桐梓县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1046', '119', '绥阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1047', '119', '正安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1048', '119', '凤冈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1049', '119', '湄潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1050', '119', '余庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1051', '119', '习水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1052', '119', '道真', '3', '0');
INSERT INTO `ecs_region` VALUES ('1053', '119', '务川', '3', '0');
INSERT INTO `ecs_region` VALUES ('1054', '120', '秀英区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1055', '120', '龙华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1056', '120', '琼山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1057', '120', '美兰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1058', '137', '市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1059', '137', '洋浦开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1060', '137', '那大镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1061', '137', '王五镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1062', '137', '雅星镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1063', '137', '大成镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1064', '137', '中和镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1065', '137', '峨蔓镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1066', '137', '南丰镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1067', '137', '白马井镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1068', '137', '兰洋镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1069', '137', '和庆镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1070', '137', '海头镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1071', '137', '排浦镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1072', '137', '东成镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1073', '137', '光村镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1074', '137', '木棠镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1075', '137', '新州镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1076', '137', '三都镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1077', '137', '其他', '3', '0');
INSERT INTO `ecs_region` VALUES ('1078', '138', '长安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1079', '138', '桥东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1080', '138', '桥西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1081', '138', '新华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1082', '138', '裕华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1083', '138', '井陉矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1084', '138', '高新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1085', '138', '辛集市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1086', '138', '藁城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1087', '138', '晋州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1088', '138', '新乐市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1089', '138', '鹿泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1090', '138', '井陉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1091', '138', '正定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1092', '138', '栾城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1093', '138', '行唐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1094', '138', '灵寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1095', '138', '高邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1096', '138', '深泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1097', '138', '赞皇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1098', '138', '无极县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1099', '138', '平山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1100', '138', '元氏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1101', '138', '赵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1102', '139', '新市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1103', '139', '南市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1104', '139', '北市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1105', '139', '涿州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1106', '139', '定州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1107', '139', '安国市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1108', '139', '高碑店市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1109', '139', '满城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1110', '139', '清苑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1111', '139', '涞水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1112', '139', '阜平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1113', '139', '徐水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1114', '139', '定兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1115', '139', '唐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1116', '139', '高阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1117', '139', '容城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1118', '139', '涞源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1119', '139', '望都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1120', '139', '安新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1121', '139', '易县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1122', '139', '曲阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1123', '139', '蠡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1124', '139', '顺平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1125', '139', '博野县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1126', '139', '雄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1127', '140', '运河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1128', '140', '新华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1129', '140', '泊头市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1130', '140', '任丘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1131', '140', '黄骅市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1132', '140', '河间市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1133', '140', '沧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1134', '140', '青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1135', '140', '东光县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1136', '140', '海兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1137', '140', '盐山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1138', '140', '肃宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1139', '140', '南皮县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1140', '140', '吴桥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1141', '140', '献县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1142', '140', '孟村', '3', '0');
INSERT INTO `ecs_region` VALUES ('1143', '141', '双桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1144', '141', '双滦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1145', '141', '鹰手营子矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1146', '141', '承德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1147', '141', '兴隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1148', '141', '平泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1149', '141', '滦平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1150', '141', '隆化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1151', '141', '丰宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('1152', '141', '宽城', '3', '0');
INSERT INTO `ecs_region` VALUES ('1153', '141', '围场', '3', '0');
INSERT INTO `ecs_region` VALUES ('1154', '142', '从台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1155', '142', '复兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1156', '142', '邯山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1157', '142', '峰峰矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1158', '142', '武安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1159', '142', '邯郸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1160', '142', '临漳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1161', '142', '成安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1162', '142', '大名县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1163', '142', '涉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1164', '142', '磁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1165', '142', '肥乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1166', '142', '永年县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1167', '142', '邱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1168', '142', '鸡泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1169', '142', '广平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1170', '142', '馆陶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1171', '142', '魏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1172', '142', '曲周县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1173', '143', '桃城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1174', '143', '冀州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1175', '143', '深州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1176', '143', '枣强县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1177', '143', '武邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1178', '143', '武强县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1179', '143', '饶阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1180', '143', '安平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1181', '143', '故城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1182', '143', '景县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1183', '143', '阜城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1184', '144', '安次区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1185', '144', '广阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1186', '144', '霸州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1187', '144', '三河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1188', '144', '固安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1189', '144', '永清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1190', '144', '香河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1191', '144', '大城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1192', '144', '文安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1193', '144', '大厂', '3', '0');
INSERT INTO `ecs_region` VALUES ('1194', '145', '海港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1195', '145', '山海关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1196', '145', '北戴河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1197', '145', '昌黎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1198', '145', '抚宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1199', '145', '卢龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1200', '145', '青龙', '3', '0');
INSERT INTO `ecs_region` VALUES ('1201', '146', '路北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1202', '146', '路南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1203', '146', '古冶区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1204', '146', '开平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1205', '146', '丰南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1206', '146', '丰润区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1207', '146', '遵化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1208', '146', '迁安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1209', '146', '滦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1210', '146', '滦南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1211', '146', '乐亭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1212', '146', '迁西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1213', '146', '玉田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1214', '146', '唐海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1215', '147', '桥东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1216', '147', '桥西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1217', '147', '南宫市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1218', '147', '沙河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1219', '147', '邢台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1220', '147', '临城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1221', '147', '内丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1222', '147', '柏乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1223', '147', '隆尧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1224', '147', '任县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1225', '147', '南和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1226', '147', '宁晋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1227', '147', '巨鹿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1228', '147', '新河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1229', '147', '广宗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1230', '147', '平乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1231', '147', '威县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1232', '147', '清河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1233', '147', '临西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1234', '148', '桥西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1235', '148', '桥东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1236', '148', '宣化区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1237', '148', '下花园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1238', '148', '宣化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1239', '148', '张北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1240', '148', '康保县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1241', '148', '沽源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1242', '148', '尚义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1243', '148', '蔚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1244', '148', '阳原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1245', '148', '怀安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1246', '148', '万全县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1247', '148', '怀来县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1248', '148', '涿鹿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1249', '148', '赤城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1250', '148', '崇礼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1251', '149', '金水区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1252', '149', '邙山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1253', '149', '二七区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1254', '149', '管城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1255', '149', '中原区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1256', '149', '上街区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1257', '149', '惠济区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1258', '149', '郑东新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1259', '149', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1260', '149', '高新开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1261', '149', '出口加工区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1262', '149', '巩义市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1263', '149', '荥阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1264', '149', '新密市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1265', '149', '新郑市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1266', '149', '登封市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1267', '149', '中牟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1268', '150', '西工区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1269', '150', '老城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1270', '150', '涧西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1271', '150', '瀍河回族区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1272', '150', '洛龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1273', '150', '吉利区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1274', '150', '偃师市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1275', '150', '孟津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1276', '150', '新安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1277', '150', '栾川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1278', '150', '嵩县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1279', '150', '汝阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1280', '150', '宜阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1281', '150', '洛宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1282', '150', '伊川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1283', '151', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1284', '151', '龙亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1285', '151', '顺河回族区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1286', '151', '金明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1287', '151', '禹王台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1288', '151', '杞县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1289', '151', '通许县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1290', '151', '尉氏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1291', '151', '开封县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1292', '151', '兰考县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1293', '152', '北关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1294', '152', '文峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1295', '152', '殷都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1296', '152', '龙安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1297', '152', '林州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1298', '152', '安阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1299', '152', '汤阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1300', '152', '滑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1301', '152', '内黄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1302', '153', '淇滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1303', '153', '山城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1304', '153', '鹤山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1305', '153', '浚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1306', '153', '淇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1307', '154', '济源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1308', '155', '解放区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1309', '155', '中站区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1310', '155', '马村区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1311', '155', '山阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1312', '155', '沁阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1313', '155', '孟州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1314', '155', '修武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1315', '155', '博爱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1316', '155', '武陟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1317', '155', '温县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1318', '156', '卧龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1319', '156', '宛城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1320', '156', '邓州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1321', '156', '南召县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1322', '156', '方城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1323', '156', '西峡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1324', '156', '镇平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1325', '156', '内乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1326', '156', '淅川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1327', '156', '社旗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1328', '156', '唐河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1329', '156', '新野县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1330', '156', '桐柏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1331', '157', '新华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1332', '157', '卫东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1333', '157', '湛河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1334', '157', '石龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1335', '157', '舞钢市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1336', '157', '汝州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1337', '157', '宝丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1338', '157', '叶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1339', '157', '鲁山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1340', '157', '郏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1341', '158', '湖滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1342', '158', '义马市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1343', '158', '灵宝市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1344', '158', '渑池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1345', '158', '陕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1346', '158', '卢氏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1347', '159', '梁园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1348', '159', '睢阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1349', '159', '永城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1350', '159', '民权县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1351', '159', '睢县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1352', '159', '宁陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1353', '159', '虞城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1354', '159', '柘城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1355', '159', '夏邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1356', '160', '卫滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1357', '160', '红旗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1358', '160', '凤泉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1359', '160', '牧野区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1360', '160', '卫辉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1361', '160', '辉县市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1362', '160', '新乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1363', '160', '获嘉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1364', '160', '原阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1365', '160', '延津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1366', '160', '封丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1367', '160', '长垣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1368', '161', '浉河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1369', '161', '平桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1370', '161', '罗山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1371', '161', '光山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1372', '161', '新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1373', '161', '商城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1374', '161', '固始县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1375', '161', '潢川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1376', '161', '淮滨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1377', '161', '息县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1378', '162', '魏都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1379', '162', '禹州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1380', '162', '长葛市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1381', '162', '许昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1382', '162', '鄢陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1383', '162', '襄城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1384', '163', '川汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1385', '163', '项城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1386', '163', '扶沟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1387', '163', '西华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1388', '163', '商水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1389', '163', '沈丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1390', '163', '郸城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1391', '163', '淮阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1392', '163', '太康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1393', '163', '鹿邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1394', '164', '驿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1395', '164', '西平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1396', '164', '上蔡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1397', '164', '平舆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1398', '164', '正阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1399', '164', '确山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1400', '164', '泌阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1401', '164', '汝南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1402', '164', '遂平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1403', '164', '新蔡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1404', '165', '郾城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1405', '165', '源汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1406', '165', '召陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1407', '165', '舞阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1408', '165', '临颍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1409', '166', '华龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1410', '166', '清丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1411', '166', '南乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1412', '166', '范县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1413', '166', '台前县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1414', '166', '濮阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1415', '167', '道里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1416', '167', '南岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1417', '167', '动力区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1418', '167', '平房区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1419', '167', '香坊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1420', '167', '太平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1421', '167', '道外区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1422', '167', '阿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1423', '167', '呼兰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1424', '167', '松北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1425', '167', '尚志市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1426', '167', '双城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1427', '167', '五常市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1428', '167', '方正县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1429', '167', '宾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1430', '167', '依兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1431', '167', '巴彦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1432', '167', '通河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1433', '167', '木兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1434', '167', '延寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1435', '168', '萨尔图区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1436', '168', '红岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1437', '168', '龙凤区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1438', '168', '让胡路区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1439', '168', '大同区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1440', '168', '肇州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1441', '168', '肇源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1442', '168', '林甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1443', '168', '杜尔伯特', '3', '0');
INSERT INTO `ecs_region` VALUES ('1444', '169', '呼玛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1445', '169', '漠河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1446', '169', '塔河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1447', '170', '兴山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1448', '170', '工农区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1449', '170', '南山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1450', '170', '兴安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1451', '170', '向阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1452', '170', '东山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1453', '170', '萝北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1454', '170', '绥滨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1455', '171', '爱辉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1456', '171', '五大连池市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1457', '171', '北安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1458', '171', '嫩江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1459', '171', '逊克县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1460', '171', '孙吴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1461', '172', '鸡冠区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1462', '172', '恒山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1463', '172', '城子河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1464', '172', '滴道区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1465', '172', '梨树区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1466', '172', '虎林市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1467', '172', '密山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1468', '172', '鸡东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1469', '173', '前进区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1470', '173', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1471', '173', '向阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1472', '173', '东风区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1473', '173', '同江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1474', '173', '富锦市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1475', '173', '桦南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1476', '173', '桦川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1477', '173', '汤原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1478', '173', '抚远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1479', '174', '爱民区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1480', '174', '东安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1481', '174', '阳明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1482', '174', '西安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1483', '174', '绥芬河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1484', '174', '海林市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1485', '174', '宁安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1486', '174', '穆棱市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1487', '174', '东宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1488', '174', '林口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1489', '175', '桃山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1490', '175', '新兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1491', '175', '茄子河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1492', '175', '勃利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1493', '176', '龙沙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1494', '176', '昂昂溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1495', '176', '铁峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1496', '176', '建华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1497', '176', '富拉尔基区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1498', '176', '碾子山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1500', '176', '讷河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1501', '176', '龙江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1502', '176', '依安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1503', '176', '泰来县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1504', '176', '甘南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1505', '176', '富裕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1506', '176', '克山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1507', '176', '克东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1508', '176', '拜泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1509', '177', '尖山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1510', '177', '岭东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1511', '177', '四方台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1512', '177', '宝山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1513', '177', '集贤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1514', '177', '友谊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1515', '177', '宝清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1516', '177', '饶河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1517', '178', '北林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1518', '178', '安达市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1519', '178', '肇东市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1520', '178', '海伦市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1521', '178', '望奎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1522', '178', '兰西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1523', '178', '青冈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1524', '178', '庆安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1525', '178', '明水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1526', '178', '绥棱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1527', '179', '伊春区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1528', '179', '带岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1529', '179', '南岔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1530', '179', '金山屯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1531', '179', '西林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1532', '179', '美溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1533', '179', '乌马河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1534', '179', '翠峦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1535', '179', '友好区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1536', '179', '上甘岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1537', '179', '五营区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1538', '179', '红星区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1539', '179', '新青区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1540', '179', '汤旺河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1541', '179', '乌伊岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1542', '179', '铁力市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1543', '179', '嘉荫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1544', '180', '江岸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1545', '180', '武昌区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1546', '180', '江汉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1547', '180', '硚口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1548', '180', '汉阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1549', '180', '青山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1550', '180', '洪山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1551', '180', '东西湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1552', '180', '汉南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1553', '180', '蔡甸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1554', '180', '江夏区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1555', '180', '黄陂区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1556', '180', '新洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1557', '180', '经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1558', '181', '仙桃市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1559', '182', '鄂城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1560', '182', '华容区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1561', '182', '梁子湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1562', '183', '黄州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1563', '183', '麻城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1564', '183', '武穴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1565', '183', '团风县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1566', '183', '红安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1567', '183', '罗田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1568', '183', '英山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1569', '183', '浠水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1570', '183', '蕲春县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1571', '183', '黄梅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1572', '184', '黄石港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1573', '184', '西塞山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1574', '184', '下陆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1575', '184', '铁山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1576', '184', '大冶市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1577', '184', '阳新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1578', '185', '东宝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1579', '185', '掇刀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1580', '185', '钟祥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1581', '185', '京山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1582', '185', '沙洋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1583', '186', '沙市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1584', '186', '荆州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1585', '186', '石首市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1586', '186', '洪湖市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1587', '186', '松滋市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1588', '186', '公安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1589', '186', '监利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1590', '186', '江陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1591', '187', '潜江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1592', '188', '神农架林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1593', '189', '张湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1594', '189', '茅箭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1595', '189', '丹江口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1596', '189', '郧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1597', '189', '郧西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1598', '189', '竹山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1599', '189', '竹溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1600', '189', '房县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1601', '190', '曾都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1602', '190', '广水市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1603', '191', '天门市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1604', '192', '咸安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1605', '192', '赤壁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1606', '192', '嘉鱼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1607', '192', '通城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1608', '192', '崇阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1609', '192', '通山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1610', '193', '襄城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1611', '193', '樊城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1612', '193', '襄阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1613', '193', '老河口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1614', '193', '枣阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1615', '193', '宜城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1616', '193', '南漳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1617', '193', '谷城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1618', '193', '保康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1619', '194', '孝南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1620', '194', '应城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1621', '194', '安陆市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1622', '194', '汉川市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1623', '194', '孝昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1624', '194', '大悟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1625', '194', '云梦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1626', '195', '长阳', '3', '0');
INSERT INTO `ecs_region` VALUES ('1627', '195', '五峰', '3', '0');
INSERT INTO `ecs_region` VALUES ('1628', '195', '西陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1629', '195', '伍家岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1630', '195', '点军区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1631', '195', '猇亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1632', '195', '夷陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1633', '195', '宜都市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1634', '195', '当阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1635', '195', '枝江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1636', '195', '远安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1637', '195', '兴山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1638', '195', '秭归县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1639', '196', '恩施市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1640', '196', '利川市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1641', '196', '建始县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1642', '196', '巴东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1643', '196', '宣恩县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1644', '196', '咸丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1645', '196', '来凤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1646', '196', '鹤峰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1647', '197', '岳麓区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1648', '197', '芙蓉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1649', '197', '天心区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1650', '197', '开福区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1651', '197', '雨花区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1652', '197', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1653', '197', '浏阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1654', '197', '长沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1655', '197', '望城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1656', '197', '宁乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1657', '198', '永定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1658', '198', '武陵源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1659', '198', '慈利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1660', '198', '桑植县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1661', '199', '武陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1662', '199', '鼎城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1663', '199', '津市市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1664', '199', '安乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1665', '199', '汉寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1666', '199', '澧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1667', '199', '临澧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1668', '199', '桃源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1669', '199', '石门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1670', '200', '北湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1671', '200', '苏仙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1672', '200', '资兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1673', '200', '桂阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1674', '200', '宜章县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1675', '200', '永兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1676', '200', '嘉禾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1677', '200', '临武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1678', '200', '汝城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1679', '200', '桂东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1680', '200', '安仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1681', '201', '雁峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1682', '201', '珠晖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1683', '201', '石鼓区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1684', '201', '蒸湘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1685', '201', '南岳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1686', '201', '耒阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1687', '201', '常宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1688', '201', '衡阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1689', '201', '衡南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1690', '201', '衡山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1691', '201', '衡东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1692', '201', '祁东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1693', '202', '鹤城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1694', '202', '靖州', '3', '0');
INSERT INTO `ecs_region` VALUES ('1695', '202', '麻阳', '3', '0');
INSERT INTO `ecs_region` VALUES ('1696', '202', '通道', '3', '0');
INSERT INTO `ecs_region` VALUES ('1697', '202', '新晃', '3', '0');
INSERT INTO `ecs_region` VALUES ('1698', '202', '芷江', '3', '0');
INSERT INTO `ecs_region` VALUES ('1699', '202', '沅陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1700', '202', '辰溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1701', '202', '溆浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1702', '202', '中方县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1703', '202', '会同县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1704', '202', '洪江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1705', '203', '娄星区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1706', '203', '冷水江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1707', '203', '涟源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1708', '203', '双峰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1709', '203', '新化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1710', '204', '城步', '3', '0');
INSERT INTO `ecs_region` VALUES ('1711', '204', '双清区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1712', '204', '大祥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1713', '204', '北塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1714', '204', '武冈市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1715', '204', '邵东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1716', '204', '新邵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1717', '204', '邵阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1718', '204', '隆回县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1719', '204', '洞口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1720', '204', '绥宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1721', '204', '新宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1722', '205', '岳塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1723', '205', '雨湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1724', '205', '湘乡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1725', '205', '韶山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1726', '205', '湘潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1727', '206', '吉首市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1728', '206', '泸溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1729', '206', '凤凰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1730', '206', '花垣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1731', '206', '保靖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1732', '206', '古丈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1733', '206', '永顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1734', '206', '龙山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1735', '207', '赫山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1736', '207', '资阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1737', '207', '沅江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1738', '207', '南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1739', '207', '桃江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1740', '207', '安化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1741', '208', '江华', '3', '0');
INSERT INTO `ecs_region` VALUES ('1742', '208', '冷水滩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1743', '208', '零陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1744', '208', '祁阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1745', '208', '东安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1746', '208', '双牌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1747', '208', '道县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1748', '208', '江永县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1749', '208', '宁远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1750', '208', '蓝山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1751', '208', '新田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1752', '209', '岳阳楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1753', '209', '君山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1754', '209', '云溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1755', '209', '汨罗市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1756', '209', '临湘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1757', '209', '岳阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1758', '209', '华容县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1759', '209', '湘阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1760', '209', '平江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1761', '210', '天元区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1762', '210', '荷塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1763', '210', '芦淞区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1764', '210', '石峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1765', '210', '醴陵市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1766', '210', '株洲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1767', '210', '攸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1768', '210', '茶陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1769', '210', '炎陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1770', '211', '朝阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1771', '211', '宽城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1772', '211', '二道区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1773', '211', '南关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1774', '211', '绿园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1775', '211', '双阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1776', '211', '净月潭开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1777', '211', '高新技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1778', '211', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1779', '211', '汽车产业开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1780', '211', '德惠市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1781', '211', '九台市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1782', '211', '榆树市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1783', '211', '农安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1784', '212', '船营区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1785', '212', '昌邑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1786', '212', '龙潭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1787', '212', '丰满区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1788', '212', '蛟河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1789', '212', '桦甸市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1790', '212', '舒兰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1791', '212', '磐石市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1792', '212', '永吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1793', '213', '洮北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1794', '213', '洮南市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1795', '213', '大安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1796', '213', '镇赉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1797', '213', '通榆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1798', '214', '江源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1799', '214', '八道江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1800', '214', '长白', '3', '0');
INSERT INTO `ecs_region` VALUES ('1801', '214', '临江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1802', '214', '抚松县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1803', '214', '靖宇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1804', '215', '龙山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1805', '215', '西安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1806', '215', '东丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1807', '215', '东辽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1808', '216', '铁西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1809', '216', '铁东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1810', '216', '伊通', '3', '0');
INSERT INTO `ecs_region` VALUES ('1811', '216', '公主岭市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1812', '216', '双辽市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1813', '216', '梨树县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1814', '217', '前郭尔罗斯', '3', '0');
INSERT INTO `ecs_region` VALUES ('1815', '217', '宁江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1816', '217', '长岭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1817', '217', '乾安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1818', '217', '扶余县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1819', '218', '东昌区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1820', '218', '二道江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1821', '218', '梅河口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1822', '218', '集安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1823', '218', '通化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1824', '218', '辉南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1825', '218', '柳河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1826', '219', '延吉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1827', '219', '图们市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1828', '219', '敦化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1829', '219', '珲春市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1830', '219', '龙井市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1831', '219', '和龙市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1832', '219', '安图县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1833', '219', '汪清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1834', '220', '玄武区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1835', '220', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1836', '220', '白下区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1837', '220', '建邺区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1838', '220', '秦淮区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1839', '220', '雨花台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1840', '220', '下关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1841', '220', '栖霞区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1842', '220', '浦口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1843', '220', '江宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1844', '220', '六合区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1845', '220', '溧水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1846', '220', '高淳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1847', '221', '沧浪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1848', '221', '金阊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1849', '221', '平江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1850', '221', '虎丘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1851', '221', '吴中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1852', '221', '相城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1853', '221', '园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1854', '221', '新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1855', '221', '常熟市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1856', '221', '张家港市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1857', '221', '玉山镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1858', '221', '巴城镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1859', '221', '周市镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1860', '221', '陆家镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1861', '221', '花桥镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1862', '221', '淀山湖镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1863', '221', '张浦镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1864', '221', '周庄镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1865', '221', '千灯镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1866', '221', '锦溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1867', '221', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1868', '221', '吴江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1869', '221', '太仓市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1870', '222', '崇安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1871', '222', '北塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1872', '222', '南长区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1873', '222', '锡山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1874', '222', '惠山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1875', '222', '滨湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1876', '222', '新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1877', '222', '江阴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1878', '222', '宜兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1879', '223', '天宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1880', '223', '钟楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1881', '223', '戚墅堰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1882', '223', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1883', '223', '新北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1884', '223', '武进区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1885', '223', '溧阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1886', '223', '金坛市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1887', '224', '清河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1888', '224', '清浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1889', '224', '楚州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1890', '224', '淮阴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1891', '224', '涟水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1892', '224', '洪泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1893', '224', '盱眙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1894', '224', '金湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1895', '225', '新浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1896', '225', '连云区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1897', '225', '海州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1898', '225', '赣榆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1899', '225', '东海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1900', '225', '灌云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1901', '225', '灌南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1902', '226', '崇川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1903', '226', '港闸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1904', '226', '经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1905', '226', '启东市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1906', '226', '如皋市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1907', '226', '通州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1908', '226', '海门市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1909', '226', '海安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1910', '226', '如东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1911', '227', '宿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1912', '227', '宿豫区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1913', '227', '宿豫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1914', '227', '沭阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1915', '227', '泗阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1916', '227', '泗洪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1917', '228', '海陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1918', '228', '高港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1919', '228', '兴化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1920', '228', '靖江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1921', '228', '泰兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1922', '228', '姜堰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1923', '229', '云龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1924', '229', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1925', '229', '九里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1926', '229', '贾汪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1927', '229', '泉山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1928', '229', '新沂市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1929', '229', '邳州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1930', '229', '丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1931', '229', '沛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1932', '229', '铜山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1933', '229', '睢宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1934', '230', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1935', '230', '亭湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1936', '230', '盐都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1937', '230', '盐都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1938', '230', '东台市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1939', '230', '大丰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1940', '230', '响水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1941', '230', '滨海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1942', '230', '阜宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1943', '230', '射阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1944', '230', '建湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1945', '231', '广陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1946', '231', '维扬区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1947', '231', '邗江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1948', '231', '仪征市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1949', '231', '高邮市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1950', '231', '江都市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1951', '231', '宝应县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1952', '232', '京口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1953', '232', '润州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1954', '232', '丹徒区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1955', '232', '丹阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1956', '232', '扬中市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1957', '232', '句容市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1958', '233', '东湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1959', '233', '西湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1960', '233', '青云谱区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1961', '233', '湾里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1962', '233', '青山湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1963', '233', '红谷滩新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1964', '233', '昌北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1965', '233', '高新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1966', '233', '南昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1967', '233', '新建县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1968', '233', '安义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1969', '233', '进贤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1970', '234', '临川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1971', '234', '南城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1972', '234', '黎川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1973', '234', '南丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1974', '234', '崇仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1975', '234', '乐安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1976', '234', '宜黄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1977', '234', '金溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1978', '234', '资溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1979', '234', '东乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1980', '234', '广昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1981', '235', '章贡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1982', '235', '于都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1983', '235', '瑞金市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1984', '235', '南康市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1985', '235', '赣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1986', '235', '信丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1987', '235', '大余县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1988', '235', '上犹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1989', '235', '崇义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1990', '235', '安远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1991', '235', '龙南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1992', '235', '定南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1993', '235', '全南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1994', '235', '宁都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1995', '235', '兴国县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1996', '235', '会昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1997', '235', '寻乌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1998', '235', '石城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1999', '236', '安福县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2000', '236', '吉州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2001', '236', '青原区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2002', '236', '井冈山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2003', '236', '吉安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2004', '236', '吉水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2005', '236', '峡江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2006', '236', '新干县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2007', '236', '永丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2008', '236', '泰和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2009', '236', '遂川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2010', '236', '万安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2011', '236', '永新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2012', '237', '珠山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2013', '237', '昌江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2014', '237', '乐平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2015', '237', '浮梁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2016', '238', '浔阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2017', '238', '庐山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2018', '238', '瑞昌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2019', '238', '九江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2020', '238', '武宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2021', '238', '修水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2022', '238', '永修县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2023', '238', '德安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2024', '238', '星子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2025', '238', '都昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2026', '238', '湖口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2027', '238', '彭泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2028', '239', '安源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2029', '239', '湘东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2030', '239', '莲花县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2031', '239', '芦溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2032', '239', '上栗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2033', '240', '信州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2034', '240', '德兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2035', '240', '上饶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2036', '240', '广丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2037', '240', '玉山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2038', '240', '铅山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2039', '240', '横峰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2040', '240', '弋阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2041', '240', '余干县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2042', '240', '波阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2043', '240', '万年县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2044', '240', '婺源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2045', '241', '渝水区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2046', '241', '分宜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2047', '242', '袁州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2048', '242', '丰城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2049', '242', '樟树市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2050', '242', '高安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2051', '242', '奉新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2052', '242', '万载县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2053', '242', '上高县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2054', '242', '宜丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2055', '242', '靖安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2056', '242', '铜鼓县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2057', '243', '月湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2058', '243', '贵溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2059', '243', '余江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2060', '244', '沈河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2061', '244', '皇姑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2062', '244', '和平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2063', '244', '大东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2064', '244', '铁西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2065', '244', '苏家屯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2066', '244', '东陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2067', '244', '沈北新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2068', '244', '于洪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2069', '244', '浑南新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2070', '244', '新民市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2071', '244', '辽中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2072', '244', '康平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2073', '244', '法库县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2074', '245', '西岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2075', '245', '中山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2076', '245', '沙河口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2077', '245', '甘井子区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2078', '245', '旅顺口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2079', '245', '金州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2080', '245', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2081', '245', '瓦房店市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2082', '245', '普兰店市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2083', '245', '庄河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2084', '245', '长海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2085', '246', '铁东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2086', '246', '铁西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2087', '246', '立山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2088', '246', '千山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2089', '246', '岫岩', '3', '0');
INSERT INTO `ecs_region` VALUES ('2090', '246', '海城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2091', '246', '台安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2092', '247', '本溪', '3', '0');
INSERT INTO `ecs_region` VALUES ('2093', '247', '平山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2094', '247', '明山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2095', '247', '溪湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2096', '247', '南芬区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2097', '247', '桓仁', '3', '0');
INSERT INTO `ecs_region` VALUES ('2098', '248', '双塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2099', '248', '龙城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2101', '248', '北票市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2102', '248', '凌源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2103', '248', '朝阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2104', '248', '建平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2105', '249', '振兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2106', '249', '元宝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2107', '249', '振安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2108', '249', '宽甸', '3', '0');
INSERT INTO `ecs_region` VALUES ('2109', '249', '东港市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2110', '249', '凤城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2111', '250', '顺城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2112', '250', '新抚区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2113', '250', '东洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2114', '250', '望花区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2115', '250', '清原', '3', '0');
INSERT INTO `ecs_region` VALUES ('2116', '250', '新宾', '3', '0');
INSERT INTO `ecs_region` VALUES ('2117', '250', '抚顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2118', '251', '阜新', '3', '0');
INSERT INTO `ecs_region` VALUES ('2119', '251', '海州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2120', '251', '新邱区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2121', '251', '太平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2122', '251', '清河门区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2123', '251', '细河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2124', '251', '彰武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2125', '252', '龙港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2126', '252', '南票区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2127', '252', '连山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2128', '252', '兴城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2129', '252', '绥中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2130', '252', '建昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2131', '253', '太和区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2132', '253', '古塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2133', '253', '凌河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2134', '253', '凌海市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2135', '253', '北镇市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2136', '253', '黑山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2137', '253', '义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2138', '254', '白塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2139', '254', '文圣区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2140', '254', '宏伟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2141', '254', '太子河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2142', '254', '弓长岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2143', '254', '灯塔市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2144', '254', '辽阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2145', '255', '双台子区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2146', '255', '兴隆台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2147', '255', '大洼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2148', '255', '盘山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2149', '256', '银州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2150', '256', '清河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2151', '256', '调兵山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2152', '256', '开原市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2153', '256', '铁岭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2154', '256', '西丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2155', '256', '昌图县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2156', '257', '站前区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2157', '257', '西市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2158', '257', '鲅鱼圈区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2159', '257', '老边区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2160', '257', '盖州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2161', '257', '大石桥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2162', '258', '回民区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2163', '258', '玉泉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2164', '258', '新城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2165', '258', '赛罕区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2166', '258', '清水河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2167', '258', '土默特左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2168', '258', '托克托县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2169', '258', '和林格尔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2170', '258', '武川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2171', '259', '阿拉善左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2172', '259', '阿拉善右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2173', '259', '额济纳旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2174', '260', '临河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2175', '260', '五原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2176', '260', '磴口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2177', '260', '乌拉特前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2178', '260', '乌拉特中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2179', '260', '乌拉特后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2180', '260', '杭锦后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2181', '261', '昆都仑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2182', '261', '青山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2183', '261', '东河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2184', '261', '九原区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2185', '261', '石拐区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2186', '261', '白云矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2187', '261', '土默特右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2188', '261', '固阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2190', '262', '红山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2191', '262', '元宝山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2192', '262', '松山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2194', '262', '巴林左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2195', '262', '巴林右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2196', '262', '林西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2197', '262', '克什克腾旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2198', '262', '翁牛特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2199', '262', '喀喇沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2200', '262', '宁城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2201', '262', '敖汉旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2202', '263', '东胜区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2203', '263', '达拉特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2204', '263', '准格尔旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2205', '263', '鄂托克前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2206', '263', '鄂托克旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2207', '263', '杭锦旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2208', '263', '乌审旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2209', '263', '伊金霍洛旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2210', '264', '海拉尔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2211', '264', '莫力达瓦', '3', '0');
INSERT INTO `ecs_region` VALUES ('2212', '264', '满洲里市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2213', '264', '牙克石市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2214', '264', '扎兰屯市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2215', '264', '额尔古纳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2216', '264', '根河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2217', '264', '阿荣旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2218', '264', '鄂伦春自治旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2219', '264', '鄂温克族自治旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2220', '264', '陈巴尔虎旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2221', '264', '新巴尔虎左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2222', '264', '新巴尔虎右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2223', '265', '科尔沁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2224', '265', '霍林郭勒市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2227', '265', '开鲁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2228', '265', '库伦旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2229', '265', '奈曼旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2230', '265', '扎鲁特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2231', '266', '海勃湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2232', '266', '乌达区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2233', '266', '海南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2234', '267', '化德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2235', '267', '集宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2236', '267', '丰镇市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2237', '267', '卓资县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2238', '267', '商都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2239', '267', '兴和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2240', '267', '凉城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2244', '267', '四子王旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2245', '268', '二连浩特市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2246', '268', '锡林浩特市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2247', '268', '阿巴嘎旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2248', '268', '苏尼特左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2249', '268', '苏尼特右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2252', '268', '太仆寺旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2253', '268', '镶黄旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2254', '268', '正镶白旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2255', '268', '正蓝旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2256', '268', '多伦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2257', '269', '乌兰浩特市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2258', '269', '阿尔山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2261', '269', '扎赉特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2262', '269', '突泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2263', '270', '西夏区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2264', '270', '金凤区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2265', '270', '兴庆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2266', '270', '灵武市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2267', '270', '永宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2268', '270', '贺兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2269', '271', '原州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2270', '271', '海原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2271', '271', '西吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2272', '271', '隆德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2273', '271', '泾源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2274', '271', '彭阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2275', '272', '惠农县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2276', '272', '大武口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2277', '272', '惠农区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2278', '272', '陶乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2279', '272', '平罗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2280', '273', '利通区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2281', '273', '中卫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2282', '273', '青铜峡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2283', '273', '中宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2284', '273', '盐池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2285', '273', '同心县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2286', '274', '沙坡头区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2287', '274', '海原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2288', '274', '中宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2289', '275', '城中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2290', '275', '城东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2291', '275', '城西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2292', '275', '城北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2293', '275', '湟中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2294', '275', '湟源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2295', '275', '大通', '3', '0');
INSERT INTO `ecs_region` VALUES ('2296', '276', '玛沁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2297', '276', '班玛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2298', '276', '甘德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2299', '276', '达日县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2300', '276', '久治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2301', '276', '玛多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2302', '277', '海晏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2303', '277', '祁连县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2304', '277', '刚察县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2305', '277', '门源', '3', '0');
INSERT INTO `ecs_region` VALUES ('2306', '278', '平安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2307', '278', '乐都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2308', '278', '民和', '3', '0');
INSERT INTO `ecs_region` VALUES ('2309', '278', '互助', '3', '0');
INSERT INTO `ecs_region` VALUES ('2310', '278', '化隆', '3', '0');
INSERT INTO `ecs_region` VALUES ('2311', '278', '循化', '3', '0');
INSERT INTO `ecs_region` VALUES ('2312', '279', '共和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2313', '279', '同德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2314', '279', '贵德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2315', '279', '兴海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2316', '279', '贵南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2317', '280', '德令哈市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2318', '280', '格尔木市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2319', '280', '乌兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2320', '280', '都兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2321', '280', '天峻县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2322', '281', '同仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2323', '281', '尖扎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2324', '281', '泽库县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2325', '281', '河南蒙古族自治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2326', '282', '玉树县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2327', '282', '杂多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2328', '282', '称多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2329', '282', '治多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2330', '282', '囊谦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2331', '282', '曲麻莱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2332', '283', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2333', '283', '历下区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2334', '283', '天桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2335', '283', '槐荫区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2336', '283', '历城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2337', '283', '长清区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2338', '283', '章丘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2339', '283', '平阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2340', '283', '济阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2341', '283', '商河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2342', '284', '市南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2343', '284', '市北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2344', '284', '城阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2345', '284', '四方区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2346', '284', '李沧区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2347', '284', '黄岛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2348', '284', '崂山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2349', '284', '胶州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2350', '284', '即墨市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2351', '284', '平度市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2352', '284', '胶南市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2353', '284', '莱西市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2354', '285', '滨城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2355', '285', '惠民县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2356', '285', '阳信县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2357', '285', '无棣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2358', '285', '沾化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2359', '285', '博兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2360', '285', '邹平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2361', '286', '德城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2362', '286', '陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2363', '286', '乐陵市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2364', '286', '禹城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2365', '286', '宁津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2366', '286', '庆云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2367', '286', '临邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2368', '286', '齐河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2369', '286', '平原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2370', '286', '夏津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2371', '286', '武城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2372', '287', '东营区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2373', '287', '河口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2374', '287', '垦利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2375', '287', '利津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2376', '287', '广饶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2377', '288', '牡丹区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2378', '288', '曹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2379', '288', '单县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2380', '288', '成武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2381', '288', '巨野县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2382', '288', '郓城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2383', '288', '鄄城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2384', '288', '定陶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2385', '288', '东明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2386', '289', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2387', '289', '任城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2388', '289', '曲阜市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2389', '289', '兖州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2390', '289', '邹城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2391', '289', '微山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2392', '289', '鱼台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2393', '289', '金乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2394', '289', '嘉祥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2395', '289', '汶上县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2396', '289', '泗水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2397', '289', '梁山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2398', '290', '莱城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2399', '290', '钢城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2400', '291', '东昌府区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2401', '291', '临清市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2402', '291', '阳谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2403', '291', '莘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2404', '291', '茌平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2405', '291', '东阿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2406', '291', '冠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2407', '291', '高唐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2408', '292', '兰山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2409', '292', '罗庄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2410', '292', '河东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2411', '292', '沂南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2412', '292', '郯城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2413', '292', '沂水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2414', '292', '苍山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2415', '292', '费县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2416', '292', '平邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2417', '292', '莒南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2418', '292', '蒙阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2419', '292', '临沭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2420', '293', '东港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2421', '293', '岚山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2422', '293', '五莲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2423', '293', '莒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2424', '294', '泰山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2425', '294', '岱岳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2426', '294', '新泰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2427', '294', '肥城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2428', '294', '宁阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2429', '294', '东平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2430', '295', '荣成市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2431', '295', '乳山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2432', '295', '环翠区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2433', '295', '文登市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2434', '296', '潍城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2435', '296', '寒亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2436', '296', '坊子区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2437', '296', '奎文区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2438', '296', '青州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2439', '296', '诸城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2440', '296', '寿光市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2441', '296', '安丘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2442', '296', '高密市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2443', '296', '昌邑市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2444', '296', '临朐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2445', '296', '昌乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2446', '297', '芝罘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2447', '297', '福山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2448', '297', '牟平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2449', '297', '莱山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2450', '297', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2451', '297', '龙口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2452', '297', '莱阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2453', '297', '莱州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2454', '297', '蓬莱市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2455', '297', '招远市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2456', '297', '栖霞市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2457', '297', '海阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2458', '297', '长岛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2459', '298', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2460', '298', '山亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2461', '298', '峄城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2462', '298', '台儿庄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2463', '298', '薛城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2464', '298', '滕州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2465', '299', '张店区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2466', '299', '临淄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2467', '299', '淄川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2468', '299', '博山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2469', '299', '周村区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2470', '299', '桓台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2471', '299', '高青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2472', '299', '沂源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2473', '300', '杏花岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2474', '300', '小店区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2475', '300', '迎泽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2476', '300', '尖草坪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2477', '300', '万柏林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2478', '300', '晋源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2479', '300', '高新开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2480', '300', '民营经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2481', '300', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2482', '300', '清徐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2483', '300', '阳曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2484', '300', '娄烦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2485', '300', '古交市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2486', '301', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2487', '301', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2488', '301', '沁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2489', '301', '潞城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2490', '301', '长治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2491', '301', '襄垣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2492', '301', '屯留县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2493', '301', '平顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2494', '301', '黎城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2495', '301', '壶关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2496', '301', '长子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2497', '301', '武乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2498', '301', '沁源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2499', '302', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2500', '302', '矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2501', '302', '南郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2502', '302', '新荣区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2503', '302', '阳高县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2504', '302', '天镇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2505', '302', '广灵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2506', '302', '灵丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2507', '302', '浑源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2508', '302', '左云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2509', '302', '大同县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2510', '303', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2511', '303', '高平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2512', '303', '沁水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2513', '303', '阳城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2514', '303', '陵川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2515', '303', '泽州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2516', '304', '榆次区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2517', '304', '介休市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2518', '304', '榆社县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2519', '304', '左权县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2520', '304', '和顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2521', '304', '昔阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2522', '304', '寿阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2523', '304', '太谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2524', '304', '祁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2525', '304', '平遥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2526', '304', '灵石县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2527', '305', '尧都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2528', '305', '侯马市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2529', '305', '霍州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2530', '305', '曲沃县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2531', '305', '翼城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2532', '305', '襄汾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2533', '305', '洪洞县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2534', '305', '吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2535', '305', '安泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2536', '305', '浮山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2537', '305', '古县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2538', '305', '乡宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2539', '305', '大宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2540', '305', '隰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2541', '305', '永和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2542', '305', '蒲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2543', '305', '汾西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2544', '306', '离石市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2545', '306', '离石区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2546', '306', '孝义市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2547', '306', '汾阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2548', '306', '文水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2549', '306', '交城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2550', '306', '兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2551', '306', '临县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2552', '306', '柳林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2553', '306', '石楼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2554', '306', '岚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2555', '306', '方山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2556', '306', '中阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2557', '306', '交口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2558', '307', '朔城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2559', '307', '平鲁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2560', '307', '山阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2561', '307', '应县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2562', '307', '右玉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2563', '307', '怀仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2564', '308', '忻府区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2565', '308', '原平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2566', '308', '定襄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2567', '308', '五台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2568', '308', '代县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2569', '308', '繁峙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2570', '308', '宁武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2571', '308', '静乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2572', '308', '神池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2573', '308', '五寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2574', '308', '岢岚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2575', '308', '河曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2576', '308', '保德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2577', '308', '偏关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2578', '309', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2579', '309', '矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2580', '309', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2581', '309', '平定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2582', '309', '盂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2583', '310', '盐湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2584', '310', '永济市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2585', '310', '河津市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2586', '310', '临猗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2587', '310', '万荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2588', '310', '闻喜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2589', '310', '稷山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2590', '310', '新绛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2591', '310', '绛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2592', '310', '垣曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2593', '310', '夏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2594', '310', '平陆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2595', '310', '芮城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2596', '311', '莲湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2597', '311', '新城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2598', '311', '碑林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2599', '311', '雁塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2600', '311', '灞桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2601', '311', '未央区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2602', '311', '阎良区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2603', '311', '临潼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2604', '311', '长安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2605', '311', '蓝田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2606', '311', '周至县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2607', '311', '户县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2608', '311', '高陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2609', '312', '汉滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2610', '312', '汉阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2611', '312', '石泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2612', '312', '宁陕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2613', '312', '紫阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2614', '312', '岚皋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2615', '312', '平利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2616', '312', '镇坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2617', '312', '旬阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2618', '312', '白河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2619', '313', '陈仓区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2620', '313', '渭滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2621', '313', '金台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2622', '313', '凤翔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2623', '313', '岐山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2624', '313', '扶风县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2625', '313', '眉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2626', '313', '陇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2627', '313', '千阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2628', '313', '麟游县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2629', '313', '凤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2630', '313', '太白县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2631', '314', '汉台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2632', '314', '南郑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2633', '314', '城固县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2634', '314', '洋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2635', '314', '西乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2636', '314', '勉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2637', '314', '宁强县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2638', '314', '略阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2639', '314', '镇巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2640', '314', '留坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2641', '314', '佛坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2642', '315', '商州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2643', '315', '洛南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2644', '315', '丹凤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2645', '315', '商南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2646', '315', '山阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2647', '315', '镇安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2648', '315', '柞水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2649', '316', '耀州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2650', '316', '王益区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2651', '316', '印台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2652', '316', '宜君县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2653', '317', '临渭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2654', '317', '韩城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2655', '317', '华阴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2656', '317', '华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2657', '317', '潼关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2658', '317', '大荔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2659', '317', '合阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2660', '317', '澄城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2661', '317', '蒲城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2662', '317', '白水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2663', '317', '富平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2664', '318', '秦都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2665', '318', '渭城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2666', '318', '杨陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2667', '318', '兴平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2668', '318', '三原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2669', '318', '泾阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2670', '318', '乾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2671', '318', '礼泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2672', '318', '永寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2673', '318', '彬县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2674', '318', '长武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2675', '318', '旬邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2676', '318', '淳化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2677', '318', '武功县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2678', '319', '吴起县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2679', '319', '宝塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2680', '319', '延长县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2681', '319', '延川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2682', '319', '子长县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2683', '319', '安塞县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2684', '319', '志丹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2685', '319', '甘泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2686', '319', '富县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2687', '319', '洛川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2688', '319', '宜川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2689', '319', '黄龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2690', '319', '黄陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2691', '320', '榆阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2692', '320', '神木县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2693', '320', '府谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2694', '320', '横山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2695', '320', '靖边县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2696', '320', '定边县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2697', '320', '绥德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2698', '320', '米脂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2699', '320', '佳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2700', '320', '吴堡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2701', '320', '清涧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2702', '320', '子洲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2703', '321', '长宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2704', '321', '闸北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2705', '321', '闵行区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2706', '321', '徐汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2707', '321', '浦东新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2708', '321', '杨浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2709', '321', '普陀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2710', '321', '静安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2711', '321', '卢湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2712', '321', '虹口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2713', '321', '黄浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2714', '321', '南汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2715', '321', '松江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2716', '321', '嘉定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2717', '321', '宝山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2718', '321', '青浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2719', '321', '金山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2720', '321', '奉贤区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2721', '321', '崇明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2722', '322', '青羊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2723', '322', '锦江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2724', '322', '金牛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2725', '322', '武侯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2726', '322', '成华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2727', '322', '龙泉驿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2728', '322', '青白江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2729', '322', '新都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2730', '322', '温江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2731', '322', '高新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2732', '322', '高新西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2733', '322', '都江堰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2734', '322', '彭州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2735', '322', '邛崃市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2736', '322', '崇州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2737', '322', '金堂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2738', '322', '双流县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2739', '322', '郫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2740', '322', '大邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2741', '322', '蒲江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2742', '322', '新津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2743', '322', '都江堰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2744', '322', '彭州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2745', '322', '邛崃市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2746', '322', '崇州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2747', '322', '金堂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2748', '322', '双流县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2749', '322', '郫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2750', '322', '大邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2751', '322', '蒲江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2752', '322', '新津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2753', '323', '涪城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2754', '323', '游仙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2755', '323', '江油市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2756', '323', '盐亭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2757', '323', '三台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2758', '323', '平武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2759', '323', '安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2760', '323', '梓潼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2761', '323', '北川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2762', '324', '马尔康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2763', '324', '汶川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2764', '324', '理县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2765', '324', '茂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2766', '324', '松潘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2767', '324', '九寨沟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2768', '324', '金川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2769', '324', '小金县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2770', '324', '黑水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2771', '324', '壤塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2772', '324', '阿坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2773', '324', '若尔盖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2774', '324', '红原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2775', '325', '巴州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2776', '325', '通江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2777', '325', '南江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2778', '325', '平昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2779', '326', '通川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2780', '326', '万源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2781', '326', '达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2782', '326', '宣汉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2783', '326', '开江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2784', '326', '大竹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2785', '326', '渠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2786', '327', '旌阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2787', '327', '广汉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2788', '327', '什邡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2789', '327', '绵竹市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2790', '327', '罗江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2791', '327', '中江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2792', '328', '康定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2793', '328', '丹巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2794', '328', '泸定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2795', '328', '炉霍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2796', '328', '九龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2797', '328', '甘孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2798', '328', '雅江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2799', '328', '新龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2800', '328', '道孚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2801', '328', '白玉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2802', '328', '理塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2803', '328', '德格县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2804', '328', '乡城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2805', '328', '石渠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2806', '328', '稻城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2807', '328', '色达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2808', '328', '巴塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2809', '328', '得荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2810', '329', '广安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2811', '329', '华蓥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2812', '329', '岳池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2813', '329', '武胜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2814', '329', '邻水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2815', '330', '利州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2816', '330', '元坝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2817', '330', '朝天区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2818', '330', '旺苍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2819', '330', '青川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2820', '330', '剑阁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2821', '330', '苍溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2822', '331', '峨眉山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2823', '331', '乐山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2824', '331', '犍为县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2825', '331', '井研县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2826', '331', '夹江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2827', '331', '沐川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2828', '331', '峨边', '3', '0');
INSERT INTO `ecs_region` VALUES ('2829', '331', '马边', '3', '0');
INSERT INTO `ecs_region` VALUES ('2830', '332', '西昌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2831', '332', '盐源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2832', '332', '德昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2833', '332', '会理县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2834', '332', '会东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2835', '332', '宁南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2836', '332', '普格县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2837', '332', '布拖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2838', '332', '金阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2839', '332', '昭觉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2840', '332', '喜德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2841', '332', '冕宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2842', '332', '越西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2843', '332', '甘洛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2844', '332', '美姑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2845', '332', '雷波县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2846', '332', '木里', '3', '0');
INSERT INTO `ecs_region` VALUES ('2847', '333', '东坡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2848', '333', '仁寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2849', '333', '彭山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2850', '333', '洪雅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2851', '333', '丹棱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2852', '333', '青神县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2853', '334', '阆中市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2854', '334', '南部县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2855', '334', '营山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2856', '334', '蓬安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2857', '334', '仪陇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2858', '334', '顺庆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2859', '334', '高坪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2860', '334', '嘉陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2861', '334', '西充县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2862', '335', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2863', '335', '东兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2864', '335', '威远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2865', '335', '资中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2866', '335', '隆昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2867', '336', '东  区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2868', '336', '西  区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2869', '336', '仁和区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2870', '336', '米易县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2871', '336', '盐边县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2872', '337', '船山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2873', '337', '安居区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2874', '337', '蓬溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2875', '337', '射洪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2876', '337', '大英县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2877', '338', '雨城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2878', '338', '名山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2879', '338', '荥经县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2880', '338', '汉源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2881', '338', '石棉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2882', '338', '天全县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2883', '338', '芦山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2884', '338', '宝兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2885', '339', '翠屏区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2886', '339', '宜宾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2887', '339', '南溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2888', '339', '江安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2889', '339', '长宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2890', '339', '高县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2891', '339', '珙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2892', '339', '筠连县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2893', '339', '兴文县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2894', '339', '屏山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2895', '340', '雁江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2896', '340', '简阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2897', '340', '安岳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2898', '340', '乐至县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2899', '341', '大安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2900', '341', '自流井区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2901', '341', '贡井区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2902', '341', '沿滩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2903', '341', '荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2904', '341', '富顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2905', '342', '江阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2906', '342', '纳溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2907', '342', '龙马潭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2908', '342', '泸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2909', '342', '合江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2910', '342', '叙永县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2911', '342', '古蔺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2912', '343', '和平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2913', '343', '河西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2914', '343', '南开区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2915', '343', '河北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2916', '343', '河东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2917', '343', '红桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2918', '343', '东丽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2919', '343', '津南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2920', '343', '西青区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2921', '343', '北辰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2922', '343', '塘沽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2923', '343', '汉沽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2924', '343', '大港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2925', '343', '武清区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2926', '343', '宝坻区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2927', '343', '经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2928', '343', '宁河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2929', '343', '静海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2930', '343', '蓟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2931', '344', '城关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2932', '344', '林周县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2933', '344', '当雄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2934', '344', '尼木县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2935', '344', '曲水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2936', '344', '堆龙德庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2937', '344', '达孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2938', '344', '墨竹工卡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2939', '345', '噶尔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2940', '345', '普兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2941', '345', '札达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2942', '345', '日土县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2943', '345', '革吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2944', '345', '改则县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2945', '345', '措勤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2946', '346', '昌都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2947', '346', '江达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2948', '346', '贡觉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2949', '346', '类乌齐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2950', '346', '丁青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2951', '346', '察雅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2952', '346', '八宿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2953', '346', '左贡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2954', '346', '芒康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2955', '346', '洛隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2956', '346', '边坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2957', '347', '林芝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2958', '347', '工布江达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2959', '347', '米林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2960', '347', '墨脱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2961', '347', '波密县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2962', '347', '察隅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2963', '347', '朗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2964', '348', '那曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2965', '348', '嘉黎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2966', '348', '比如县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2967', '348', '聂荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2968', '348', '安多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2969', '348', '申扎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2970', '348', '索县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2971', '348', '班戈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2972', '348', '巴青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2973', '348', '尼玛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2974', '349', '日喀则市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2975', '349', '南木林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2976', '349', '江孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2977', '349', '定日县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2978', '349', '萨迦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2979', '349', '拉孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2980', '349', '昂仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2981', '349', '谢通门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2982', '349', '白朗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2983', '349', '仁布县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2984', '349', '康马县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2985', '349', '定结县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2986', '349', '仲巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2987', '349', '亚东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2988', '349', '吉隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2989', '349', '聂拉木县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2990', '349', '萨嘎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2991', '349', '岗巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2992', '350', '乃东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2993', '350', '扎囊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2994', '350', '贡嘎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2995', '350', '桑日县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2996', '350', '琼结县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2997', '350', '曲松县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2998', '350', '措美县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2999', '350', '洛扎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3000', '350', '加查县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3001', '350', '隆子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3002', '350', '错那县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3003', '350', '浪卡子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3004', '351', '天山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3005', '351', '沙依巴克区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3006', '351', '新市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3007', '351', '水磨沟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3008', '351', '头屯河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3009', '351', '达坂城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3010', '351', '米东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3011', '351', '乌鲁木齐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3012', '352', '阿克苏市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3013', '352', '温宿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3014', '352', '库车县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3015', '352', '沙雅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3016', '352', '新和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3017', '352', '拜城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3018', '352', '乌什县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3019', '352', '阿瓦提县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3020', '352', '柯坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3021', '353', '阿拉尔市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3022', '354', '库尔勒市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3023', '354', '轮台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3024', '354', '尉犁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3025', '354', '若羌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3026', '354', '且末县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3027', '354', '焉耆', '3', '0');
INSERT INTO `ecs_region` VALUES ('3028', '354', '和静县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3029', '354', '和硕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3030', '354', '博湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3031', '355', '博乐市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3032', '355', '精河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3033', '355', '温泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3034', '356', '呼图壁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3035', '356', '米泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3036', '356', '昌吉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3037', '356', '阜康市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3038', '356', '玛纳斯县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3039', '356', '奇台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3040', '356', '吉木萨尔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3041', '356', '木垒', '3', '0');
INSERT INTO `ecs_region` VALUES ('3042', '357', '哈密市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3043', '357', '伊吾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3044', '357', '巴里坤', '3', '0');
INSERT INTO `ecs_region` VALUES ('3045', '358', '和田市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3046', '358', '和田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3047', '358', '墨玉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3048', '358', '皮山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3049', '358', '洛浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3050', '358', '策勒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3051', '358', '于田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3052', '358', '民丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3053', '359', '喀什市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3054', '359', '疏附县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3055', '359', '疏勒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3056', '359', '英吉沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3057', '359', '泽普县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3058', '359', '莎车县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3059', '359', '叶城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3060', '359', '麦盖提县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3061', '359', '岳普湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3062', '359', '伽师县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3063', '359', '巴楚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3064', '359', '塔什库尔干', '3', '0');
INSERT INTO `ecs_region` VALUES ('3065', '360', '克拉玛依市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3066', '361', '阿图什市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3067', '361', '阿克陶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3068', '361', '阿合奇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3069', '361', '乌恰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3070', '362', '石河子市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3071', '363', '图木舒克市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3072', '364', '吐鲁番市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3073', '364', '鄯善县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3074', '364', '托克逊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3075', '365', '五家渠市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3076', '366', '阿勒泰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3077', '366', '布克赛尔', '3', '0');
INSERT INTO `ecs_region` VALUES ('3078', '366', '伊宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3079', '366', '布尔津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3080', '366', '奎屯市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3081', '366', '乌苏市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3082', '366', '额敏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3083', '366', '富蕴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3084', '366', '伊宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3085', '366', '福海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3086', '366', '霍城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3087', '366', '沙湾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3088', '366', '巩留县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3089', '366', '哈巴河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3090', '366', '托里县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3091', '366', '青河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3092', '366', '新源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3093', '366', '裕民县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3094', '366', '和布克赛尔', '3', '0');
INSERT INTO `ecs_region` VALUES ('3095', '366', '吉木乃县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3096', '366', '昭苏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3097', '366', '特克斯县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3098', '366', '尼勒克县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3099', '366', '察布查尔', '3', '0');
INSERT INTO `ecs_region` VALUES ('3100', '367', '盘龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3101', '367', '五华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3102', '367', '官渡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3103', '367', '西山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3104', '367', '东川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3105', '367', '安宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3106', '367', '呈贡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3107', '367', '晋宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3108', '367', '富民县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3109', '367', '宜良县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3110', '367', '嵩明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3111', '367', '石林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3112', '367', '禄劝', '3', '0');
INSERT INTO `ecs_region` VALUES ('3113', '367', '寻甸', '3', '0');
INSERT INTO `ecs_region` VALUES ('3114', '368', '兰坪', '3', '0');
INSERT INTO `ecs_region` VALUES ('3115', '368', '泸水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3116', '368', '福贡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3117', '368', '贡山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3118', '369', '宁洱', '3', '0');
INSERT INTO `ecs_region` VALUES ('3119', '369', '思茅区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3120', '369', '墨江', '3', '0');
INSERT INTO `ecs_region` VALUES ('3121', '369', '景东', '3', '0');
INSERT INTO `ecs_region` VALUES ('3122', '369', '景谷', '3', '0');
INSERT INTO `ecs_region` VALUES ('3123', '369', '镇沅', '3', '0');
INSERT INTO `ecs_region` VALUES ('3124', '369', '江城', '3', '0');
INSERT INTO `ecs_region` VALUES ('3125', '369', '孟连', '3', '0');
INSERT INTO `ecs_region` VALUES ('3126', '369', '澜沧', '3', '0');
INSERT INTO `ecs_region` VALUES ('3127', '369', '西盟', '3', '0');
INSERT INTO `ecs_region` VALUES ('3128', '370', '古城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3129', '370', '宁蒗', '3', '0');
INSERT INTO `ecs_region` VALUES ('3130', '370', '玉龙', '3', '0');
INSERT INTO `ecs_region` VALUES ('3131', '370', '永胜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3132', '370', '华坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3133', '371', '隆阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3134', '371', '施甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3135', '371', '腾冲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3136', '371', '龙陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3137', '371', '昌宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3138', '372', '楚雄市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3139', '372', '双柏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3140', '372', '牟定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3141', '372', '南华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3142', '372', '姚安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3143', '372', '大姚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3144', '372', '永仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3145', '372', '元谋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3146', '372', '武定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3147', '372', '禄丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3148', '373', '大理市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3149', '373', '祥云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3150', '373', '宾川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3151', '373', '弥渡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3152', '373', '永平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3153', '373', '云龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3154', '373', '洱源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3155', '373', '剑川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3156', '373', '鹤庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3157', '373', '漾濞', '3', '0');
INSERT INTO `ecs_region` VALUES ('3158', '373', '南涧', '3', '0');
INSERT INTO `ecs_region` VALUES ('3159', '373', '巍山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3160', '374', '潞西市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3161', '374', '瑞丽市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3162', '374', '梁河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3163', '374', '盈江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3164', '374', '陇川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3165', '375', '香格里拉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3166', '375', '德钦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3167', '375', '维西', '3', '0');
INSERT INTO `ecs_region` VALUES ('3168', '376', '泸西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3169', '376', '蒙自县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3170', '376', '个旧市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3171', '376', '开远市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3172', '376', '绿春县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3173', '376', '建水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3174', '376', '石屏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3175', '376', '弥勒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3176', '376', '元阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3177', '376', '红河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3178', '376', '金平', '3', '0');
INSERT INTO `ecs_region` VALUES ('3179', '376', '河口', '3', '0');
INSERT INTO `ecs_region` VALUES ('3180', '376', '屏边', '3', '0');
INSERT INTO `ecs_region` VALUES ('3181', '377', '临翔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3182', '377', '凤庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3183', '377', '云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3184', '377', '永德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3185', '377', '镇康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3186', '377', '双江', '3', '0');
INSERT INTO `ecs_region` VALUES ('3187', '377', '耿马', '3', '0');
INSERT INTO `ecs_region` VALUES ('3188', '377', '沧源', '3', '0');
INSERT INTO `ecs_region` VALUES ('3189', '378', '麒麟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3190', '378', '宣威市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3191', '378', '马龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3192', '378', '陆良县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3193', '378', '师宗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3194', '378', '罗平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3195', '378', '富源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3196', '378', '会泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3197', '378', '沾益县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3198', '379', '文山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3199', '379', '砚山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3200', '379', '西畴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3201', '379', '麻栗坡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3202', '379', '马关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3203', '379', '丘北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3204', '379', '广南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3205', '379', '富宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3206', '380', '景洪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3207', '380', '勐海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3208', '380', '勐腊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3209', '381', '红塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3210', '381', '江川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3211', '381', '澄江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3212', '381', '通海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3213', '381', '华宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3214', '381', '易门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3215', '381', '峨山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3216', '381', '新平', '3', '0');
INSERT INTO `ecs_region` VALUES ('3217', '381', '元江', '3', '0');
INSERT INTO `ecs_region` VALUES ('3218', '382', '昭阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3219', '382', '鲁甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3220', '382', '巧家县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3221', '382', '盐津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3222', '382', '大关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3223', '382', '永善县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3224', '382', '绥江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3225', '382', '镇雄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3226', '382', '彝良县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3227', '382', '威信县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3228', '382', '水富县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3229', '383', '西湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3230', '383', '上城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3231', '383', '下城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3232', '383', '拱墅区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3233', '383', '滨江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3234', '383', '江干区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3235', '383', '萧山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3236', '383', '余杭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3237', '383', '市郊', '3', '0');
INSERT INTO `ecs_region` VALUES ('3238', '383', '建德市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3239', '383', '富阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3240', '383', '临安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3241', '383', '桐庐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3242', '383', '淳安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3243', '384', '吴兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3244', '384', '南浔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3245', '384', '德清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3246', '384', '长兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3247', '384', '安吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3248', '385', '南湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3249', '385', '秀洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3250', '385', '海宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3251', '385', '嘉善县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3252', '385', '平湖市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3253', '385', '桐乡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3254', '385', '海盐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3255', '386', '婺城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3256', '386', '金东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3257', '386', '兰溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3258', '386', '市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3259', '386', '佛堂镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3260', '386', '上溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3261', '386', '义亭镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3262', '386', '大陈镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3263', '386', '苏溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3264', '386', '赤岸镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3265', '386', '东阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3266', '386', '永康市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3267', '386', '武义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3268', '386', '浦江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3269', '386', '磐安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3270', '387', '莲都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3271', '387', '龙泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3272', '387', '青田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3273', '387', '缙云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3274', '387', '遂昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3275', '387', '松阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3276', '387', '云和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3277', '387', '庆元县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3278', '387', '景宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('3279', '388', '海曙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3280', '388', '江东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3281', '388', '江北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3282', '388', '镇海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3283', '388', '北仑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3284', '388', '鄞州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3285', '388', '余姚市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3286', '388', '慈溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3287', '388', '奉化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3288', '388', '象山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3289', '388', '宁海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3290', '389', '越城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3291', '389', '上虞市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3292', '389', '嵊州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3293', '389', '绍兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3294', '389', '新昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3295', '389', '诸暨市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3296', '390', '椒江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3297', '390', '黄岩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3298', '390', '路桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3299', '390', '温岭市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3300', '390', '临海市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3301', '390', '玉环县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3302', '390', '三门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3303', '390', '天台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3304', '390', '仙居县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3305', '391', '鹿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3306', '391', '龙湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3307', '391', '瓯海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3308', '391', '瑞安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3309', '391', '乐清市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3310', '391', '洞头县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3311', '391', '永嘉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3312', '391', '平阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3313', '391', '苍南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3314', '391', '文成县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3315', '391', '泰顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3316', '392', '定海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3317', '392', '普陀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3318', '392', '岱山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3319', '392', '嵊泗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3320', '393', '衢州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3321', '393', '江山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3322', '393', '常山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3323', '393', '开化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3324', '393', '龙游县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3325', '394', '合川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3326', '394', '江津区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3327', '394', '南川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3328', '394', '永川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3329', '394', '南岸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3330', '394', '渝北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3331', '394', '万盛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3332', '394', '大渡口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3333', '394', '万州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3334', '394', '北碚区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3335', '394', '沙坪坝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3336', '394', '巴南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3337', '394', '涪陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3338', '394', '江北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3339', '394', '九龙坡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3340', '394', '渝中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3341', '394', '黔江开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3342', '394', '长寿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3343', '394', '双桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3344', '394', '綦江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3345', '394', '潼南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3346', '394', '铜梁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3347', '394', '大足县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3348', '394', '荣昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3349', '394', '璧山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3350', '394', '垫江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3351', '394', '武隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3352', '394', '丰都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3353', '394', '城口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3354', '394', '梁平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3355', '394', '开县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3356', '394', '巫溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3357', '394', '巫山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3358', '394', '奉节县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3359', '394', '云阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3360', '394', '忠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3361', '394', '石柱', '3', '0');
INSERT INTO `ecs_region` VALUES ('3362', '394', '彭水', '3', '0');
INSERT INTO `ecs_region` VALUES ('3363', '394', '酉阳', '3', '0');
INSERT INTO `ecs_region` VALUES ('3364', '394', '秀山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3365', '395', '沙田区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3366', '395', '东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3367', '395', '观塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3368', '395', '黄大仙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3369', '395', '九龙城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3370', '395', '屯门区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3371', '395', '葵青区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3372', '395', '元朗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3373', '395', '深水埗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3374', '395', '西贡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3375', '395', '大埔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3376', '395', '湾仔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3377', '395', '油尖旺区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3378', '395', '北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3379', '395', '南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3380', '395', '荃湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3381', '395', '中西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3382', '395', '离岛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3383', '396', '澳门', '3', '0');
INSERT INTO `ecs_region` VALUES ('3384', '397', '台北', '3', '0');
INSERT INTO `ecs_region` VALUES ('3385', '397', '高雄', '3', '0');
INSERT INTO `ecs_region` VALUES ('3386', '397', '基隆', '3', '0');
INSERT INTO `ecs_region` VALUES ('3387', '397', '台中', '3', '0');
INSERT INTO `ecs_region` VALUES ('3388', '397', '台南', '3', '0');
INSERT INTO `ecs_region` VALUES ('3389', '397', '新竹', '3', '0');
INSERT INTO `ecs_region` VALUES ('3390', '397', '嘉义', '3', '0');
INSERT INTO `ecs_region` VALUES ('3391', '397', '宜兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3392', '397', '桃园县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3393', '397', '苗栗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3394', '397', '彰化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3395', '397', '南投县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3396', '397', '云林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3397', '397', '屏东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3398', '397', '台东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3399', '397', '花莲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3400', '397', '澎湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3401', '3', '合肥', '2', '0');
INSERT INTO `ecs_region` VALUES ('3402', '3401', '庐阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3403', '3401', '瑶海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3404', '3401', '蜀山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3405', '3401', '包河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3406', '3401', '长丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3407', '3401', '肥东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3408', '3401', '肥西县', '3', '0');

-- ----------------------------
-- Table structure for `ecs_reg_extend_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_reg_extend_info`;
CREATE TABLE `ecs_reg_extend_info` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL,
  `reg_field_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_reg_extend_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_reg_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_reg_fields`;
CREATE TABLE `ecs_reg_fields` (
  `id` tinyint(3) unsigned NOT NULL auto_increment,
  `reg_field_name` varchar(60) NOT NULL,
  `dis_order` tinyint(3) unsigned NOT NULL default '100',
  `display` tinyint(1) unsigned NOT NULL default '1',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `is_need` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_reg_fields
-- ----------------------------
INSERT INTO `ecs_reg_fields` VALUES ('1', 'MSN', '0', '1', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('2', 'QQ', '0', '1', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('3', '办公电话', '0', '0', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('4', '家庭电话', '0', '0', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('5', '手机', '0', '0', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('6', '密码找回问题', '0', '0', '1', '1');

-- ----------------------------
-- Table structure for `ecs_role`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_role`;
CREATE TABLE `ecs_role` (
  `role_id` smallint(5) unsigned NOT NULL auto_increment,
  `role_name` varchar(60) NOT NULL default '',
  `action_list` text NOT NULL,
  `role_describe` text,
  PRIMARY KEY  (`role_id`),
  KEY `user_name` (`role_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_role
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_searchengine`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_searchengine`;
CREATE TABLE `ecs_searchengine` (
  `date` date NOT NULL default '0000-00-00',
  `searchengine` varchar(20) NOT NULL default '',
  `count` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`date`,`searchengine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_searchengine
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_sessions`;
CREATE TABLE `ecs_sessions` (
  `sesskey` char(32) character set utf8 collate utf8_bin NOT NULL default '',
  `expiry` int(10) unsigned NOT NULL default '0',
  `userid` mediumint(8) unsigned NOT NULL default '0',
  `adminid` mediumint(8) unsigned NOT NULL default '0',
  `ip` char(15) NOT NULL default '',
  `user_name` varchar(60) NOT NULL,
  `user_rank` tinyint(3) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `email` varchar(60) NOT NULL,
  `data` char(255) NOT NULL default '',
  PRIMARY KEY  (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_sessions
-- ----------------------------
INSERT INTO `ecs_sessions` VALUES ('b50ea62a4b192f9b17963de151f02bf6', '1436351382', '0', '4', '127.0.0.1', '0', '0', '0.00', '0', 'a:4:{s:10:\"admin_name\";s:5:\"zhuce\";s:11:\"action_list\";s:3:\"all\";s:10:\"last_check\";i:1436322582;s:12:\"suppliers_id\";s:1:\"0\";}');
INSERT INTO `ecs_sessions` VALUES ('d5b06bf866407036bb9908729faff97b', '1436351319', '15', '0', '127.0.0.1', '注册', '1', '1.00', '13121524680@163.com', 'a:7:{s:7:\"from_ad\";i:12;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"MjNlNWMwYzA1OA==\";s:13:\"captcha_login\";s:16:\"NDEzMTE3MGFkNg==\";s:9:\"last_time\";s:10:\"1436296712\";s:7:\"last_ip\";s:9:\"127.0.0.1\";}');

-- ----------------------------
-- Table structure for `ecs_sessions_data`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_sessions_data`;
CREATE TABLE `ecs_sessions_data` (
  `sesskey` varchar(32) character set utf8 collate utf8_bin NOT NULL default '',
  `expiry` int(10) unsigned NOT NULL default '0',
  `data` longtext NOT NULL,
  PRIMARY KEY  (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_sessions_data
-- ----------------------------
INSERT INTO `ecs_sessions_data` VALUES ('d848d64ac256e7bbbb0fb0dd4b1f00f1', '4294967295', 'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:12:\"captcha_word\";s:16:\"ODYzMmRiYjcyNg==\";s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"ZjdlNzJiMzJlNQ==\";s:9:\"last_time\";s:10:\"1401816256\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:4:\"q111\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"4\";s:4:\"city\";s:2:\"55\";s:8:\"district\";s:3:\"540\";s:5:\"email\";s:15:\"admin123@qq.com\";s:7:\"address\";s:2:\"22\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:3:\"333\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:1:\"6\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('0bdca77da30e4d96bb2c4f6f46884c80', '2803862114', 'a:7:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"Yzg2ODQzNTBkZA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}s:13:\"captcha_login\";s:16:\"MGI4MzkzZDY3Zg==\";}');
INSERT INTO `ecs_sessions_data` VALUES ('de56248e086cb08a56547aaf9322941f', '4294967295', 'a:7:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"MzdkMjhmYzkyOA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}s:13:\"captcha_login\";s:16:\"ZTUzYzU4NzhjMQ==\";}');
INSERT INTO `ecs_sessions_data` VALUES ('a389f1802cd545ff38beaad046e15075', '4294967295', 'a:7:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"MDZlNjFhNGY1ZQ==\";s:13:\"captcha_login\";s:16:\"MzRmNTgyNjYwOQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('3a1c7f932c9946ab50b5b425fbe15ec3', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NDAxZjE3Mjk1Nw==\";s:13:\"captcha_login\";s:16:\"NzQ1MTRhZWE1NA==\";s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:4:\"1111\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"5\";s:4:\"city\";s:2:\"67\";s:8:\"district\";s:3:\"635\";s:5:\"email\";s:10:\"333@qq.com\";s:7:\"address\";s:4:\"3333\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:3:\"222\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:5;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:9:\"flow_type\";i:0;}');
INSERT INTO `ecs_sessions_data` VALUES ('b061da256007df5a73c0dcb32a870921', '4294967295', 'a:7:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}s:12:\"captcha_word\";s:16:\"ZWQzZjliNDBmMw==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"NTE5MWEwMTYzYg==\";}');
INSERT INTO `ecs_sessions_data` VALUES ('ade8de9e18b890f4058282db305f44cc', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZTlmYTFmNDg0Zg==\";s:13:\"captcha_login\";s:16:\"MTU5YzQxNTI1Yg==\";s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:7:\"2332323\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"district\";s:0:\"\";s:5:\"email\";s:11:\"4444@qq.com\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:3:\"333\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}s:9:\"flow_type\";i:0;}');
INSERT INTO `ecs_sessions_data` VALUES ('1229a71b7fb1732c1ce4c6528f011350', '4294967295', 'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"YjllYzE0ZmRiOA==\";s:13:\"captcha_login\";s:16:\"M2Q0ZWQxZjRiYg==\";s:9:\"last_time\";s:10:\"1401844610\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";s:1:\"5\";s:6:\"pay_id\";s:1:\"2\";s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"3\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:1:\"6\";s:9:\"consignee\";s:4:\"q111\";s:5:\"email\";s:15:\"admin123@qq.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"4\";s:4:\"city\";s:2:\"55\";s:8:\"district\";s:3:\"540\";s:7:\"address\";s:2:\"22\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:3:\"333\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('bb112f66b91a65fae6914031547d42e8', '4207403743', 'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:4;s:13:\"captcha_login\";s:16:\"OGVlMjY0MzRiOA==\";s:9:\"last_time\";s:10:\"1402273586\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:14:\"extension_code\";s:14:\"exchange_goods\";s:12:\"extension_id\";i:6;s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";s:1:\"3\";s:9:\"consignee\";s:4:\"q111\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"4\";s:4:\"city\";s:2:\"55\";s:8:\"district\";s:3:\"540\";s:5:\"email\";s:15:\"admin123@qq.com\";s:7:\"address\";s:2:\"22\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:3:\"333\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:1:\"6\";}s:10:\"flow_order\";a:9:{s:11:\"shipping_id\";s:1:\"5\";s:6:\"pay_id\";s:1:\"2\";s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:14:\"extension_code\";s:14:\"exchange_goods\";s:12:\"extension_id\";i:6;}}');
INSERT INTO `ecs_sessions_data` VALUES ('cca38c3a947c7e28756289c6cf948ea8', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NTU5YThiOWE4ZQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"MGZmMjEzZGZiMw==\";s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:3:\"111\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"7\";s:4:\"city\";s:3:\"103\";s:8:\"district\";s:3:\"912\";s:5:\"email\";s:10:\"444@qq.com\";s:7:\"address\";s:4:\"2223\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:2:\"33\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('5831299b7c1c09db77aab3bdb0e5b568', '4209250503', 'a:12:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"MThhZTE0MjE3OQ==\";s:13:\"captcha_login\";s:16:\"OGY5YmU4OWI3Zg==\";s:9:\"last_time\";s:10:\"1402598502\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:9:\"flow_type\";i:1;s:14:\"extension_code\";s:9:\"group_buy\";s:12:\"extension_id\";i:8;s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";s:1:\"3\";s:9:\"consignee\";s:4:\"q111\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"4\";s:4:\"city\";s:2:\"55\";s:8:\"district\";s:3:\"540\";s:5:\"email\";s:15:\"admin123@qq.com\";s:7:\"address\";s:2:\"22\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:3:\"333\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:1:\"6\";}s:10:\"flow_order\";a:9:{s:11:\"shipping_id\";s:1:\"5\";s:6:\"pay_id\";s:1:\"2\";s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:14:\"extension_code\";s:9:\"group_buy\";s:12:\"extension_id\";i:8;}}');
INSERT INTO `ecs_sessions_data` VALUES ('51345c82ee211118ae30753124c945cd', '4210507885', 'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NDg5YWVjMmMxNA==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"MDQzZmIwNTNkNQ==\";s:9:\"last_time\";s:10:\"1403127354\";s:7:\"last_ip\";s:9:\"127.0.0.1\";}');
INSERT INTO `ecs_sessions_data` VALUES ('a1a4ad5af5f9813d2a05005839a4ad7f', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZDc2OTAxZGVjOQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"NTNhOTE2M2EyZQ==\";s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:3:\"222\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"6\";s:4:\"city\";s:2:\"81\";s:8:\"district\";s:3:\"753\";s:5:\"email\";s:9:\"55@qq.com\";s:7:\"address\";s:2:\"33\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:3:\"444\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('e93f385cf36bcbea35a8880bc958ff11', '4294967295', 'a:7:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NmQ4YjlmZGY5Mw==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}s:13:\"captcha_login\";s:16:\"NTM3ODAxZTNiNA==\";}');
INSERT INTO `ecs_sessions_data` VALUES ('f7ca3be6e245b9210f6997fb043ee499', '4294967295', 'a:8:{s:7:\"from_ad\";i:17;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"M2RkMTQ3NjA5OA==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"ZDRiOGZiNTFlNQ==\";s:9:\"last_time\";s:10:\"1403473765\";s:7:\"last_ip\";s:9:\"127.0.0.1\";}');
INSERT INTO `ecs_sessions_data` VALUES ('27748e80ca3f867a6205f768c11985d0', '4294967295', 'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZjRhMjVkYzM2Yg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}s:13:\"captcha_login\";s:16:\"MzIxNGIyYjlmMw==\";s:15:\"direct_shopping\";i:1;}');
INSERT INTO `ecs_sessions_data` VALUES ('41517028c0937233fe99fa76c4002285', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:5;s:6:\"pay_id\";i:5;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:12:\"captcha_word\";s:16:\"OGU1YTU3YmEwZA==\";s:13:\"captcha_login\";s:16:\"ZGIxOTAwNzczNA==\";s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:2:\"22\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"6\";s:4:\"city\";s:2:\"81\";s:8:\"district\";s:3:\"754\";s:5:\"email\";s:9:\"55@qq.com\";s:7:\"address\";s:3:\"233\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:3:\"444\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('f8c44d5525870c39586b207c3317916e', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"YzEwZjE0ODdmYQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:5;s:6:\"pay_id\";i:2;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"MGIzNGU3Y2YzOA==\";s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:2:\"11\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"5\";s:4:\"city\";s:2:\"64\";s:8:\"district\";s:3:\"620\";s:5:\"email\";s:13:\"444444@qq.com\";s:7:\"address\";s:2:\"12\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:5:\"33333\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('8824c89c5152874f70a93f20aef2efdc', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"Mjg2ZTU2ZjE0OQ==\";s:12:\"captcha_word\";s:16:\"Yzk0ZmRmYzIwZQ==\";s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:3:\"111\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"3\";s:4:\"city\";s:2:\"39\";s:8:\"district\";s:3:\"422\";s:5:\"email\";s:10:\"444@qq.com\";s:7:\"address\";s:2:\"22\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:3:\"333\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('cc5446a24cea8bd5dc1e618505d81fa3', '4294967295', 'a:7:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ODg0MGQ3YmUzNw==\";s:13:\"captcha_login\";s:16:\"NGVlOGVkODQzYQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('64e2223656ae6f12955d7c2a266d4c5f', '4294967295', 'a:12:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZTMxNmQzNGVmZA==\";s:14:\"display_search\";s:4:\"grid\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"N2FmZmVkZWFiZg==\";s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:5:\"11111\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"3\";s:4:\"city\";s:2:\"36\";s:8:\"district\";s:3:\"399\";s:5:\"email\";s:11:\"111@123.com\";s:7:\"address\";s:10:\"1111111111\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"11111111111\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}s:9:\"last_time\";i:1407888447;s:7:\"last_ip\";s:0:\"\";}');
INSERT INTO `ecs_sessions_data` VALUES ('99da33337b23341dd73aa8d687e3b8ba', '4294967295', 'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:13:\"captcha_login\";s:16:\"ZTkyZTZkYTA0NQ==\";s:9:\"last_time\";s:10:\"1407888526\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:12:\"captcha_word\";s:16:\"YmYyZGUxYTIxOQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:3:\"111\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"7\";s:4:\"city\";s:3:\"102\";s:8:\"district\";s:3:\"907\";s:5:\"email\";s:10:\"444@qq.com\";s:7:\"address\";s:2:\"22\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:3:\"333\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:1:\"8\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('76eb8bc92325eede36d0c1786febf774', '4294967295', 'a:7:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZDZkZWNiOGM1Mw==\";s:13:\"captcha_login\";s:16:\"NWJhMGEyZDE4Ng==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('53784344fe703a751148b6859f480c75', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"NjUxYzAxM2ZmNA==\";s:12:\"captcha_word\";s:16:\"OWUzMGM2OGU3Yw==\";s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:3:\"111\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"8\";s:4:\"city\";s:3:\"117\";s:8:\"district\";s:4:\"1023\";s:5:\"email\";s:10:\"444@qq.com\";s:7:\"address\";s:3:\"222\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:3:\"333\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('ef3f1df9f20bb79da3a6a662ca2e770a', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:13:\"captcha_login\";s:16:\"NDI0ZGRjODFhYw==\";s:12:\"captcha_word\";s:16:\"OGM3ZjI2NDc5Ng==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:3:\"111\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"5\";s:4:\"city\";s:2:\"66\";s:8:\"district\";s:3:\"633\";s:5:\"email\";s:9:\"55@qq.com\";s:7:\"address\";s:3:\"222\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:2:\"33\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:2:\"44\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('26f970707b1ab3e82e8c9a0f9b23dc92', '4294967295', 'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:13:\"captcha_login\";s:16:\"OThlN2U2OTBmYg==\";s:12:\"captcha_word\";s:16:\"NWFmNzFiNDRjOQ==\";s:14:\"display_search\";s:4:\"grid\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:5;s:6:\"pay_id\";i:2;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:1:\"1\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"5\";s:4:\"city\";s:2:\"66\";s:8:\"district\";s:3:\"633\";s:5:\"email\";s:9:\"44@qq.com\";s:7:\"address\";s:1:\"2\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:1:\"3\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('cf54a5c9cd582e4884dc0220086d01e4', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"Mjk4MzZkYTBiMQ==\";s:14:\"display_search\";s:4:\"grid\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"ZmY3MzMzYmU2MQ==\";s:9:\"last_time\";s:10:\"1407959678\";s:7:\"last_ip\";s:9:\"127.0.0.1\";}');
INSERT INTO `ecs_sessions_data` VALUES ('d01e1d6dbaad8ea6a02c018b8783696e', '4225256785', 'a:7:{s:7:\"from_ad\";i:100;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NTA2ODA2ZGE4Yw==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}s:13:\"captcha_login\";s:16:\"YjJjN2VlNDA0Nw==\";}');
INSERT INTO `ecs_sessions_data` VALUES ('0553de8d85f51eae9c8d262ba76d81a3', '4294967295', 'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NGMzMGM0OGQ1YQ==\";s:13:\"captcha_login\";s:16:\"NWNlMjk4MDZhYg==\";s:9:\"last_time\";i:1428970985;s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;}');
INSERT INTO `ecs_sessions_data` VALUES ('7bf14c7735a448c86cf8a402d9c90074', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:5;s:6:\"pay_id\";i:5;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:12:\"captcha_word\";s:16:\"NmQ1YjFiZDk2NQ==\";s:13:\"captcha_login\";s:16:\"NTFhZWVjOTE0ZA==\";s:9:\"last_time\";s:10:\"1429133208\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"5\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:2:\"12\";s:9:\"consignee\";s:6:\"小松\";s:5:\"email\";s:13:\"123456@qq.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"25\";s:4:\"city\";s:3:\"321\";s:8:\"district\";s:4:\"2709\";s:7:\"address\";s:47:\"中山北路2911号中关村科技大厦2402室\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15221019886\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('387cad4db69f1e112e0219c1a2ccbd27', '4294967295', 'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:12:\"captcha_word\";s:16:\"OTIyYWNlOTI0NQ==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"NjYzYTRhZjZlYQ==\";s:9:\"last_time\";s:10:\"1429135754\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"5\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:2:\"12\";s:9:\"consignee\";s:6:\"小松\";s:5:\"email\";s:13:\"123456@qq.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"25\";s:4:\"city\";s:3:\"321\";s:8:\"district\";s:4:\"2709\";s:7:\"address\";s:47:\"中山北路2911号中关村科技大厦2402室\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15221019886\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('355dfce5548a68758b31adbcef8fdf42', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:6;s:6:\"pay_id\";i:2;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"NTBhNTE5MDA2Ng==\";s:12:\"captcha_word\";s:16:\"NzM5M2RmZWYwZg==\";s:9:\"last_time\";s:10:\"1429139690\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"5\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:2:\"12\";s:9:\"consignee\";s:6:\"小松\";s:5:\"email\";s:13:\"123456@qq.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"25\";s:4:\"city\";s:3:\"321\";s:8:\"district\";s:4:\"2709\";s:7:\"address\";s:47:\"中山北路2911号中关村科技大厦2402室\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15221019886\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('01fbbf4dd5326dd21793938f766f8b0f', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:10:\"flow_order\";a:13:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:6;s:6:\"pay_id\";i:4;s:7:\"pack_id\";i:5;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";d:4600;s:7:\"surplus\";d:50;s:8:\"need_inv\";i:1;s:8:\"inv_type\";s:12:\"普通发票\";s:9:\"inv_payee\";s:0:\"\";s:11:\"inv_content\";s:6:\"明细\";s:7:\"how_oos\";i:0;}s:12:\"captcha_word\";s:16:\"NTRjZDM3ZGU2OQ==\";s:13:\"captcha_login\";s:16:\"YjIyNTc4M2MxZg==\";s:9:\"last_time\";s:10:\"1429224744\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"5\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:2:\"12\";s:9:\"consignee\";s:6:\"小松\";s:5:\"email\";s:13:\"123456@qq.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"25\";s:4:\"city\";s:3:\"321\";s:8:\"district\";s:4:\"2709\";s:7:\"address\";s:47:\"中山北路2911号中关村科技大厦2402室\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15221019886\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('a6d2ef4f6deb4278f5961e6e59b64294', '4294967295', 'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:37:{s:11:\"shipping_id\";i:6;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:12:\"card_message\";s:0:\"\";s:7:\"surplus\";i:0;s:8:\"integral\";i:0;s:8:\"bonus_id\";i:0;s:8:\"need_inv\";i:0;s:8:\"inv_type\";s:0:\"\";s:9:\"inv_payee\";s:0:\"\";s:11:\"inv_content\";s:0:\"\";s:10:\"postscript\";s:0:\"\";s:7:\"how_oos\";s:33:\"等待所有商品备齐后再发\";s:11:\"need_insure\";i:0;s:7:\"user_id\";s:2:\"12\";s:8:\"add_time\";i:1429469036;s:12:\"order_status\";i:0;s:15:\"shipping_status\";i:0;s:10:\"pay_status\";i:0;s:9:\"agency_id\";i:0;s:14:\"extension_code\";s:0:\"\";s:12:\"extension_id\";i:0;s:10:\"address_id\";s:1:\"5\";s:12:\"address_name\";s:0:\"\";s:9:\"consignee\";s:6:\"小松\";s:5:\"email\";s:13:\"123456@qq.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"25\";s:4:\"city\";s:3:\"321\";s:8:\"district\";s:4:\"2709\";s:7:\"address\";s:47:\"中山北路2911号中关村科技大厦2402室\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15221019886\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}s:13:\"captcha_login\";s:16:\"NGU3NjkzZmU3MQ==\";s:12:\"captcha_word\";s:16:\"YmI2ODE0ODRhNA==\";s:9:\"last_time\";s:10:\"1429465219\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"5\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:2:\"12\";s:9:\"consignee\";s:6:\"小松\";s:5:\"email\";s:13:\"123456@qq.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"25\";s:4:\"city\";s:3:\"321\";s:8:\"district\";s:4:\"2709\";s:7:\"address\";s:47:\"中山北路2911号中关村科技大厦2402室\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15221019886\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('7ef3abee5522c1bbb1d0c5e664870367', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZDQ0ZGNlNDUzMQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:5;s:6:\"pay_id\";i:2;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"ZDY0OTIxNzg5OA==\";s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:2:\"11\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"5\";s:4:\"city\";s:2:\"64\";s:8:\"district\";s:3:\"620\";s:5:\"email\";s:10:\"444@qq.com\";s:7:\"address\";s:3:\"222\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:3:\"333\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('ad70e4e9353c771335d32d675afdfc45', '4294967295', 'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:12:\"captcha_word\";s:16:\"YjI3NWYzZmI1Mw==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"NmQ5ZDQ5NjhkZQ==\";s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:4:\"1111\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"3\";s:4:\"city\";s:2:\"37\";s:8:\"district\";s:3:\"410\";s:5:\"email\";s:13:\"123123@qq.com\";s:7:\"address\";s:5:\"11111\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:4:\"1111\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}s:9:\"last_time\";s:10:\"1429470389\";s:7:\"last_ip\";s:9:\"127.0.0.1\";}');
INSERT INTO `ecs_sessions_data` VALUES ('6ba4cb9d1335541d660e6a9738e4c54c', '4294967295', 'a:12:{s:7:\"from_ad\";i:132;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:14:\"display_search\";s:4:\"grid\";s:13:\"captcha_login\";s:16:\"NWVmZjZkZWZiNg==\";s:12:\"captcha_word\";s:16:\"NjIzNjMxN2JkMQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:6;s:6:\"pay_id\";i:5;s:7:\"pack_id\";i:4;s:7:\"card_id\";i:3;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:15:\"direct_shopping\";i:1;s:9:\"last_time\";s:10:\"1429470810\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"5\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:2:\"12\";s:9:\"consignee\";s:6:\"小松\";s:5:\"email\";s:13:\"123456@qq.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"25\";s:4:\"city\";s:3:\"321\";s:8:\"district\";s:4:\"2709\";s:7:\"address\";s:47:\"中山北路2911号中关村科技大厦2402室\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15221019886\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('4857d428eb022d93de91cd9e8b38b1a8', '4294967295', 'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"YWYwNmI4ZjY1OA==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"ZTZlMzkzYWM3OA==\";s:9:\"last_time\";s:10:\"1429469677\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";s:1:\"5\";s:6:\"pay_id\";s:1:\"1\";s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"5\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:2:\"12\";s:9:\"consignee\";s:6:\"小松\";s:5:\"email\";s:13:\"123456@qq.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"25\";s:4:\"city\";s:3:\"321\";s:8:\"district\";s:4:\"2709\";s:7:\"address\";s:47:\"中山北路2911号中关村科技大厦2402室\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15221019886\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('4022e12866a15483a9dbf8c67fe5ceac', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"M2NlZDJiM2M4Zg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:5;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"MmI0MjAyNmY5MQ==\";s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:4:\"1111\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"501\";s:5:\"email\";s:12:\"11111@qq.com\";s:7:\"address\";s:3:\"111\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:4:\"1111\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('90ec972d8852899f7774c0d23d6f2ae0', '2859218471', 'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:13:\"captcha_login\";s:16:\"NDdhYzg3ZDllOQ==\";s:9:\"last_time\";s:10:\"1429564121\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:14:\"display_search\";s:4:\"grid\";s:9:\"flow_type\";i:0;}');
INSERT INTO `ecs_sessions_data` VALUES ('14c1fa8aeeb606ae29577d02a009fc29', '4294967295', 'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"MDE2NGM5NzBjYQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:2;s:6:\"pay_id\";i:5;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"ZDQ4MGVkMTk4Zg==\";s:9:\"last_time\";s:10:\"1429653856\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";s:1:\"5\";s:9:\"consignee\";s:6:\"小松\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"25\";s:4:\"city\";s:3:\"321\";s:8:\"district\";s:4:\"2709\";s:5:\"email\";s:13:\"123456@qq.com\";s:7:\"address\";s:47:\"中山北路2911号中关村科技大厦2402室\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15221019886\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:2:\"12\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('99939bb5e560494391b6e01bf52cf3e4', '4294967295', 'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZDJiNjUzMjBiMQ==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"Mjk2NmM0NDQ5ZQ==\";s:9:\"last_time\";s:10:\"1429665153\";s:7:\"last_ip\";s:9:\"127.0.0.1\";}');
INSERT INTO `ecs_sessions_data` VALUES ('dd35ad871f7fac7140ab83e06db56dbd', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"MWY2NzMzYTgxYg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}s:13:\"captcha_login\";s:16:\"NDA1YTljOGY4MQ==\";s:9:\"last_time\";s:10:\"1429743047\";s:7:\"last_ip\";s:9:\"127.0.0.1\";}');
INSERT INTO `ecs_sessions_data` VALUES ('f1f1df8dc02ab1e4ca954bb8a7913a76', '2859561469', 'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:13:\"captcha_login\";s:16:\"ZjVkYWIyYTQ0Zg==\";s:9:\"last_time\";s:10:\"1429746067\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:12:\"captcha_word\";s:16:\"MDQ0OGFkYWQ5Ng==\";s:9:\"flow_type\";i:0;}');
INSERT INTO `ecs_sessions_data` VALUES ('acdcf74e218258e4513ba40b76ef3792', '4294967295', 'a:10:{s:7:\"from_ad\";i:115;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:13:\"captcha_login\";s:16:\"MzYxMWZmYWUwNw==\";s:12:\"captcha_word\";s:16:\"YWUyOTA0MDE3Yg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";s:1:\"5\";s:6:\"pay_id\";s:1:\"1\";s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:9:\"last_time\";s:10:\"1429814075\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"5\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:2:\"12\";s:9:\"consignee\";s:6:\"小松\";s:5:\"email\";s:13:\"123456@qq.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"25\";s:4:\"city\";s:3:\"321\";s:8:\"district\";s:4:\"2709\";s:7:\"address\";s:47:\"中山北路2911号中关村科技大厦2402室\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15221019886\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('4499dd9056f875bb3285f543fd0cc99a', '2859739014', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZTJjNzk0NmQxZg==\";s:14:\"display_search\";s:4:\"grid\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"NjU0MTMwNmYzZA==\";s:9:\"last_time\";s:10:\"1429825850\";s:7:\"last_ip\";s:9:\"127.0.0.1\";}');
INSERT INTO `ecs_sessions_data` VALUES ('7f4bb36ada3d6e40348ede260152ed70', '4294967295', 'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"OTUzYWIzM2ExOA==\";s:13:\"captcha_login\";s:16:\"YmNjYzZhZWQzOA==\";s:9:\"last_time\";s:10:\"1430183931\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:9:\"flow_type\";i:0;}');
INSERT INTO `ecs_sessions_data` VALUES ('176fc881c08fdc48f4d83d00c5d9c405', '4294967295', 'a:11:{s:7:\"from_ad\";i:132;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:13:\"captcha_login\";s:16:\"MDdjYWIyYThmMA==\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"ZDU0MmQ5MDc4Mg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:12:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";s:1:\"6\";s:6:\"pay_id\";s:1:\"5\";s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:8:\"need_inv\";i:1;s:8:\"inv_type\";s:12:\"普通发票\";s:9:\"inv_payee\";s:0:\"\";s:11:\"inv_content\";s:6:\"明细\";}s:9:\"last_time\";s:10:\"1430271615\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"5\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:2:\"12\";s:9:\"consignee\";s:6:\"小松\";s:5:\"email\";s:13:\"123456@qq.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"25\";s:4:\"city\";s:3:\"321\";s:8:\"district\";s:4:\"2709\";s:7:\"address\";s:47:\"中山北路2911号中关村科技大厦2402室\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15221019886\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('40dbe931029171835f12e659f89d3917', '4294967295', 'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:13:\"captcha_login\";s:16:\"MmE5ODk0M2E4YQ==\";s:12:\"captcha_word\";s:16:\"OThiMDkzZGE3NA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:12:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";s:1:\"6\";s:6:\"pay_id\";s:1:\"5\";s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:8:\"need_inv\";i:1;s:8:\"inv_type\";s:12:\"电子发票\";s:9:\"inv_payee\";s:0:\"\";s:11:\"inv_content\";s:6:\"明细\";}s:9:\"last_time\";s:10:\"1430243110\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"5\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:2:\"12\";s:9:\"consignee\";s:6:\"小松\";s:5:\"email\";s:13:\"123456@qq.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"25\";s:4:\"city\";s:3:\"321\";s:8:\"district\";s:4:\"2709\";s:7:\"address\";s:47:\"中山北路2911号中关村科技大厦2402室\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15221019886\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('581aaf3a0c11fb39d0a7409d8ff6dc97', '4294967295', 'a:7:{s:7:\"from_ad\";i:5;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:1;s:13:\"captcha_login\";s:16:\"ZjkzZmY4ZDkzNg==\";s:12:\"captcha_word\";s:16:\"NWJkYTgyMDFkOQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('776eb8cb3d15e556d7e3009315b15fcd', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"last_time\";s:10:\"1435615063\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:12:\"captcha_word\";s:16:\"YjdmYmRmMjEzNA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:36:{s:11:\"shipping_id\";i:6;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:12:\"card_message\";s:0:\"\";s:7:\"surplus\";i:0;s:8:\"integral\";i:0;s:8:\"bonus_id\";i:0;s:8:\"need_inv\";i:0;s:8:\"inv_type\";s:0:\"\";s:9:\"inv_payee\";s:0:\"\";s:11:\"inv_content\";s:0:\"\";s:10:\"postscript\";s:0:\"\";s:7:\"how_oos\";s:33:\"等待所有商品备齐后再发\";s:11:\"need_insure\";i:0;s:7:\"user_id\";s:2:\"14\";s:8:\"add_time\";i:1435614508;s:12:\"order_status\";i:0;s:15:\"shipping_status\";i:0;s:10:\"pay_status\";i:0;s:9:\"agency_id\";i:0;s:14:\"extension_code\";s:0:\"\";s:12:\"extension_id\";i:0;s:10:\"address_id\";s:1:\"0\";s:9:\"consignee\";s:1:\"q\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"500\";s:5:\"email\";s:19:\"13121524680@163.com\";s:7:\"address\";s:1:\"q\";s:7:\"zipcode\";s:1:\"1\";s:3:\"tel\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";s:13:\"sign_building\";s:1:\"q\";s:9:\"best_time\";s:1:\"q\";}s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:1:\"q\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"500\";s:5:\"email\";s:19:\"13121524680@163.com\";s:7:\"address\";s:1:\"q\";s:7:\"zipcode\";s:1:\"1\";s:3:\"tel\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";s:13:\"sign_building\";s:1:\"q\";s:9:\"best_time\";s:1:\"q\";s:7:\"user_id\";s:2:\"14\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('7dc96b897744d3a8d717f6833dc88a14', '4294967295', 'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:13:\"captcha_login\";s:16:\"MjIzMGUwMmQyMA==\";s:9:\"last_time\";s:10:\"1435797416\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:12:\"captcha_word\";s:16:\"NDdiMmM3MTA2Nw==\";s:9:\"flow_type\";i:0;}');
INSERT INTO `ecs_sessions_data` VALUES ('cdcf9e964189871d5b98706ffacc87ea', '4294967295', 'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:13:\"captcha_login\";s:16:\"OWU4NDEzYTg0MQ==\";s:9:\"last_time\";s:10:\"1435861430\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:12:\"captcha_word\";s:16:\"Y2FmZmUwNjYyZQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";s:1:\"6\";s:6:\"pay_id\";s:1:\"0\";s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"6\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:2:\"14\";s:9:\"consignee\";s:1:\"q\";s:5:\"email\";s:19:\"13121524680@163.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"500\";s:7:\"address\";s:1:\"q\";s:7:\"zipcode\";s:1:\"1\";s:3:\"tel\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";s:13:\"sign_building\";s:1:\"q\";s:9:\"best_time\";s:1:\"q\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('48a55cae00cae04b9214bb607b504803', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"OTFiMzk5ZmI2ZQ==\";s:6:\"mobile\";s:11:\"13146278834\";s:11:\"mobile_code\";s:4:\"8197\";s:13:\"captcha_login\";s:16:\"NDU1OTI1M2YxNw==\";s:9:\"last_time\";s:10:\"1435968560\";s:7:\"last_ip\";s:9:\"127.0.0.1\";}');
INSERT INTO `ecs_sessions_data` VALUES ('d5b06bf866407036bb9908729faff97b', '4294967295', 'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NTIxOWQzOTRlYg==\";s:14:\"display_search\";s:4:\"grid\";s:13:\"captcha_login\";s:16:\"YjM2OTBjY2IxZg==\";s:9:\"last_time\";s:10:\"1436289545\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}}');

-- ----------------------------
-- Table structure for `ecs_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shipping`;
CREATE TABLE `ecs_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL auto_increment,
  `shipping_code` varchar(20) NOT NULL default '',
  `shipping_name` varchar(120) NOT NULL default '',
  `shipping_desc` varchar(255) NOT NULL default '',
  `insure` varchar(10) NOT NULL default '0',
  `support_cod` tinyint(1) unsigned NOT NULL default '0',
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) default NULL,
  `config_lable` text,
  `print_model` tinyint(1) default '0',
  `shipping_order` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_shipping
-- ----------------------------
INSERT INTO `ecs_shipping` VALUES ('1', 'post_express', '邮政快递包裹', '邮政快递包裹的描述内容。', '1%', '0', '1', '', null, null, '0', '0');
INSERT INTO `ecs_shipping` VALUES ('2', 'yto', '圆通速递', '上海圆通物流（速递）有限公司经过多年的网络快速发展，在中国速递行业中一直处于领先地位。为了能更好的发展国际快件市场，加快与国际市场的接轨，强化圆通的整体实力，圆通已在东南亚、欧美、中东、北美洲、非洲等许多城市运作国际快件业务', '0', '1', '1', '', null, null, '0', '0');
INSERT INTO `ecs_shipping` VALUES ('4', 'flat', '市内快递', '固定运费的配送方式内容', '0', '1', '1', '', null, null, '0', '0');
INSERT INTO `ecs_shipping` VALUES ('5', 'sto_express', '申通快递', '江、浙、沪地区首重为15元/KG，其他地区18元/KG， 续重均为5-6元/KG， 云南地区为8元', '0', '0', '1', '', null, null, '0', '0');
INSERT INTO `ecs_shipping` VALUES ('6', 'post_mail', '邮局平邮', '邮局平邮的描述内容。', '0', '0', '1', '', null, null, '0', '0');
INSERT INTO `ecs_shipping` VALUES ('7', 'fpd', '运费到付', '所购商品到达即付运费', '0', '0', '1', '', null, null, '0', '0');

-- ----------------------------
-- Table structure for `ecs_shipping_area`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shipping_area`;
CREATE TABLE `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL auto_increment,
  `shipping_area_name` varchar(150) NOT NULL default '',
  `shipping_id` tinyint(3) unsigned NOT NULL default '0',
  `configure` text NOT NULL,
  PRIMARY KEY  (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_shipping_area
-- ----------------------------
INSERT INTO `ecs_shipping_area` VALUES ('1', '申通', '5', 'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"15\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"15\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:1:\"0\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');
INSERT INTO `ecs_shipping_area` VALUES ('3', '邮局', '6', 'a:7:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:1:\"4\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:3:\"3.5\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:3:\"2.5\";}i:3;a:2:{s:4:\"name\";s:9:\"step_fee1\";s:5:\"value\";N;}i:4;a:2:{s:4:\"name\";s:8:\"pack_fee\";s:5:\"value\";s:1:\"0\";}i:5;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:5:\"50000\";}i:6;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');
INSERT INTO `ecs_shipping_area` VALUES ('4', '运费到付', '7', 'a:2:{i:0;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:5:\"50000\";}i:1;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";N;}}');
INSERT INTO `ecs_shipping_area` VALUES ('5', '圆通速递', '2', 'a:6:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"10\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:1:\"5\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}i:5;a:2:{s:4:\"name\";s:7:\"pay_fee\";s:5:\"value\";s:0:\"\";}}');

-- ----------------------------
-- Table structure for `ecs_shop_config`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shop_config`;
CREATE TABLE `ecs_shop_config` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `parent_id` smallint(5) unsigned NOT NULL default '0',
  `code` varchar(30) NOT NULL default '',
  `type` varchar(10) NOT NULL default '',
  `store_range` varchar(255) NOT NULL default '',
  `store_dir` varchar(255) NOT NULL default '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=904 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_shop_config
-- ----------------------------
INSERT INTO `ecs_shop_config` VALUES ('1', '0', 'shop_info', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('2', '0', 'basic', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('3', '0', 'display', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('4', '0', 'shopping_flow', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('5', '0', 'smtp', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('6', '0', 'hidden', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('7', '0', 'goods', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('8', '0', 'sms', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('9', '0', 'wap', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('101', '1', 'shop_name', 'text', '', '', '聚能赚', '1');
INSERT INTO `ecs_shop_config` VALUES ('102', '1', 'shop_title', 'text', '', '', '京东网上商城-综合网购首选（JD.COM）-正品低价、品质保障、货到付款、配送及时、放心服务、轻松购物！', '1');
INSERT INTO `ecs_shop_config` VALUES ('103', '1', 'shop_desc', 'text', '', '', '京东JD.COM-专业的综合网上购物商城，在线销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品、在线旅游等数万个品牌千万种优质商品。便捷、诚信的服务，为您提供愉悦的网上商城购物体验!', '1');
INSERT INTO `ecs_shop_config` VALUES ('104', '1', 'shop_keywords', 'text', '', '', '网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,京东商城', '1');
INSERT INTO `ecs_shop_config` VALUES ('105', '1', 'shop_country', 'manual', '', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('106', '1', 'shop_province', 'manual', '', '', '2', '1');
INSERT INTO `ecs_shop_config` VALUES ('107', '1', 'shop_city', 'manual', '', '', '52', '1');
INSERT INTO `ecs_shop_config` VALUES ('108', '1', 'shop_address', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('109', '1', 'qq', 'text', '', '', '729797175,729797175,729797175', '1');
INSERT INTO `ecs_shop_config` VALUES ('110', '1', 'ww', 'text', '', '', '44444444,55555555,6666666', '1');
INSERT INTO `ecs_shop_config` VALUES ('111', '1', 'skype', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('112', '1', 'ym', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('113', '1', 'msn', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('114', '1', 'service_email', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('115', '1', 'service_phone', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('117', '1', 'close_comment', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('119', '1', 'licensed', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('120', '1', 'user_notice', 'textarea', '', '', '用户中心公告！', '1');
INSERT INTO `ecs_shop_config` VALUES ('121', '1', 'shop_notice', 'textarea', '', '', '欢迎光临手机网,我们的宗旨：诚信经营、服务客户！\r\n<MARQUEE onmouseover=this.stop() onmouseout=this.start() \r\nscrollAmount=3><U><FONT color=red>\r\n<P>咨询电话010-10124444  010-21252454 8465544</P></FONT></U></MARQUEE>', '1');
INSERT INTO `ecs_shop_config` VALUES ('122', '1', 'shop_reg_closed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('201', '2', 'lang', 'manual', '', '', 'zh_cn', '1');
INSERT INTO `ecs_shop_config` VALUES ('202', '2', 'icp_number', 'text', '', '', '京ICP证070359号', '1');
INSERT INTO `ecs_shop_config` VALUES ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('204', '2', 'watermark', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1');
INSERT INTO `ecs_shop_config` VALUES ('207', '2', 'use_storage', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1');
INSERT INTO `ecs_shop_config` VALUES ('209', '2', 'rewrite', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('210', '2', 'integral_name', 'text', '', '', '积分', '1');
INSERT INTO `ecs_shop_config` VALUES ('211', '2', 'integral_scale', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('212', '2', 'integral_percent', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('213', '2', 'sn_prefix', 'text', '', '', 'ECS', '1');
INSERT INTO `ecs_shop_config` VALUES ('214', '2', 'comment_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('215', '2', 'no_picture', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('218', '2', 'stats_code', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('219', '2', 'cache_time', 'text', '', '', '3600', '1');
INSERT INTO `ecs_shop_config` VALUES ('220', '2', 'register_points', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `ecs_shop_config` VALUES ('224', '2', 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', '1');
INSERT INTO `ecs_shop_config` VALUES ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('228', '2', 'enable_order_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('229', '2', 'default_storage', 'text', '', '', '10000', '1');
INSERT INTO `ecs_shop_config` VALUES ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1');
INSERT INTO `ecs_shop_config` VALUES ('231', '2', 'visit_stats', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_shop_config` VALUES ('232', '2', 'send_mail_on', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_shop_config` VALUES ('233', '2', 'auto_generate_gallery', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('234', '2', 'retain_original_img', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('235', '2', 'member_email_validate', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('236', '2', 'message_board', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('239', '2', 'certificate_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('240', '2', 'token', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('241', '2', 'certi', 'hidden', '', '', 'http://service.shopex.cn/openapi/api.php', '1');
INSERT INTO `ecs_shop_config` VALUES ('242', '2', 'send_verify_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('243', '2', 'ent_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('244', '2', 'ent_ac', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('245', '2', 'ent_sign', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('246', '2', 'ent_email', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('301', '3', 'date_format', 'hidden', '', '', 'Y-m-d', '1');
INSERT INTO `ecs_shop_config` VALUES ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1');
INSERT INTO `ecs_shop_config` VALUES ('303', '3', 'currency_format', 'text', '', '', '￥%s', '1');
INSERT INTO `ecs_shop_config` VALUES ('304', '3', 'thumb_width', 'text', '', '', '220', '1');
INSERT INTO `ecs_shop_config` VALUES ('305', '3', 'thumb_height', 'text', '', '', '220', '1');
INSERT INTO `ecs_shop_config` VALUES ('306', '3', 'image_width', 'text', '', '', '400', '1');
INSERT INTO `ecs_shop_config` VALUES ('307', '3', 'image_height', 'text', '', '', '400', '1');
INSERT INTO `ecs_shop_config` VALUES ('312', '3', 'top_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('313', '3', 'history_number', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` VALUES ('314', '3', 'comments_number', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` VALUES ('315', '3', 'bought_goods', 'text', '', '', '3', '1');
INSERT INTO `ecs_shop_config` VALUES ('316', '3', 'article_number', 'text', '', '', '4', '1');
INSERT INTO `ecs_shop_config` VALUES ('317', '3', 'goods_name_length', 'text', '', '', '40', '1');
INSERT INTO `ecs_shop_config` VALUES ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('319', '3', 'page_size', 'text', '', '', '20', '1');
INSERT INTO `ecs_shop_config` VALUES ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('322', '3', 'show_order_type', 'select', '0,1,2', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('323', '3', 'attr_related_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('324', '3', 'goods_gallery_number', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` VALUES ('325', '3', 'article_title_length', 'text', '', '', '16', '1');
INSERT INTO `ecs_shop_config` VALUES ('326', '3', 'name_of_region_1', 'text', '', '', '国家', '1');
INSERT INTO `ecs_shop_config` VALUES ('327', '3', 'name_of_region_2', 'text', '', '', '省', '1');
INSERT INTO `ecs_shop_config` VALUES ('328', '3', 'name_of_region_3', 'text', '', '', '市', '1');
INSERT INTO `ecs_shop_config` VALUES ('329', '3', 'name_of_region_4', 'text', '', '', '区', '1');
INSERT INTO `ecs_shop_config` VALUES ('330', '3', 'search_keywords', 'text', '', '', '稳健型,高收益,天天赚,低投入,基金,理财', '0');
INSERT INTO `ecs_shop_config` VALUES ('332', '3', 'related_goods_number', 'text', '', '', '4', '1');
INSERT INTO `ecs_shop_config` VALUES ('333', '3', 'help_open', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('334', '3', 'article_page_size', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` VALUES ('335', '3', 'page_style', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('336', '3', 'recommend_order', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('337', '3', 'index_ad', 'hidden', '', '', 'sys', '1');
INSERT INTO `ecs_shop_config` VALUES ('401', '4', 'can_invoice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('402', '4', 'use_integral', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('403', '4', 'use_bonus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('404', '4', 'use_surplus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('405', '4', 'use_how_oos', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('418', '4', 'invoice_content', 'textarea', '', '', '明细\r\n办公用品\r\n电脑配件\r\n耗材', '1');
INSERT INTO `ecs_shop_config` VALUES ('419', '4', 'anonymous_buy', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:12:\"普通发票\";i:1;s:12:\"电子发票\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', '1');
INSERT INTO `ecs_shop_config` VALUES ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '4', '0');
INSERT INTO `ecs_shop_config` VALUES ('425', '4', 'send_service_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('426', '4', 'show_goods_in_cart', 'select', '1,2,3', '', '3', '1');
INSERT INTO `ecs_shop_config` VALUES ('427', '4', 'show_attr_in_cart', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('501', '5', 'smtp_host', 'text', '', '', 'smtp.163.com', '1');
INSERT INTO `ecs_shop_config` VALUES ('502', '5', 'smtp_port', 'text', '', '', '25', '1');
INSERT INTO `ecs_shop_config` VALUES ('503', '5', 'smtp_user', 'text', '', '', 'ecmoban1@163.com', '1');
INSERT INTO `ecs_shop_config` VALUES ('504', '5', 'smtp_pass', 'password', '', '', 'admin123', '1');
INSERT INTO `ecs_shop_config` VALUES ('505', '5', 'smtp_mail', 'text', '', '', 'ecmoban1@163.com', '1');
INSERT INTO `ecs_shop_config` VALUES ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'GB2312', '1');
INSERT INTO `ecs_shop_config` VALUES ('507', '5', 'mail_service', 'select', '0,1', '', '1', '0');
INSERT INTO `ecs_shop_config` VALUES ('508', '5', 'smtp_ssl', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_shop_config` VALUES ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1');
INSERT INTO `ecs_shop_config` VALUES ('602', '6', 'integrate_config', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('603', '6', 'hash_code', 'hidden', '', '', '499d1f1cbd0e575c3b6f1cfcca61f9c3', '1');
INSERT INTO `ecs_shop_config` VALUES ('604', '6', 'template', 'hidden', '', '', 'jingdong2015', '1');
INSERT INTO `ecs_shop_config` VALUES ('605', '6', 'install_date', 'hidden', '', '', '1398244332', '1');
INSERT INTO `ecs_shop_config` VALUES ('606', '6', 'ecs_version', 'hidden', '', '', 'v2.7.3', '1');
INSERT INTO `ecs_shop_config` VALUES ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('608', '6', 'sms_password', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('610', '6', 'sms_domain', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('611', '6', 'sms_count', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('613', '6', 'sms_balance', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:1;}', '1');
INSERT INTO `ecs_shop_config` VALUES ('617', '6', 'captcha', 'hidden', '', '', '39', '1');
INSERT INTO `ecs_shop_config` VALUES ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1');
INSERT INTO `ecs_shop_config` VALUES ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1');
INSERT INTO `ecs_shop_config` VALUES ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0');
INSERT INTO `ecs_shop_config` VALUES ('621', '6', 'points_rule', 'hidden', '', '', '', '0');
INSERT INTO `ecs_shop_config` VALUES ('622', '6', 'flash_theme', 'hidden', '', '', 'default', '1');
INSERT INTO `ecs_shop_config` VALUES ('623', '6', 'stylename', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('701', '7', 'show_goodssn', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('702', '7', 'show_brand', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('703', '7', 'show_goodsweight', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('705', '7', 'show_addtime', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('801', '8', 'sms_shop_mobile', 'text', '', '', '13146278834', '1');
INSERT INTO `ecs_shop_config` VALUES ('802', '8', 'sms_order_placed', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('803', '8', 'sms_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('804', '8', 'sms_order_shipped', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('901', '9', 'wap_config', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('903', '2', 'message_check', 'select', '1,0', '', '1', '1');

-- ----------------------------
-- Table structure for `ecs_snatch_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_snatch_log`;
CREATE TABLE `ecs_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `snatch_id` tinyint(3) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `bid_price` decimal(10,2) NOT NULL default '0.00',
  `bid_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`log_id`),
  KEY `snatch_id` (`snatch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_snatch_log
-- ----------------------------
INSERT INTO `ecs_snatch_log` VALUES ('1', '2', '1', '17.00', '1242142910');
INSERT INTO `ecs_snatch_log` VALUES ('2', '1', '1', '50.00', '1242142935');

-- ----------------------------
-- Table structure for `ecs_stats`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_stats`;
CREATE TABLE `ecs_stats` (
  `access_time` int(10) unsigned NOT NULL default '0',
  `ip_address` varchar(15) NOT NULL default '',
  `visit_times` smallint(5) unsigned NOT NULL default '1',
  `browser` varchar(60) NOT NULL default '',
  `system` varchar(20) NOT NULL default '',
  `language` varchar(20) NOT NULL default '',
  `area` varchar(30) NOT NULL default '',
  `referer_domain` varchar(100) NOT NULL default '',
  `referer_path` varchar(200) NOT NULL default '',
  `access_url` varchar(255) NOT NULL default '',
  KEY `access_time` (`access_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_stats
-- ----------------------------
INSERT INTO `ecs_stats` VALUES ('1240294063', '0.0.0.0', '196', 'FireFox 3.0.8', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1240298833', '0.0.0.0', '198', 'FireFox 3.0.8', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1240380013', '0.0.0.0', '204', 'FireFox 3.0.8', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1240463462', '0.0.0.0', '208', 'FireFox 3.0.9', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1240800901', '0.0.0.0', '222', 'FireFox 3.0.9', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1240803254', '0.0.0.0', '227', 'FireFox 3.0.9', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1240904381', '0.0.0.0', '237', 'FireFox 3.0.9', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241419322', '0.0.0.0', '250', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/goods.php?act=list', '/shoujitiyan/goods.php');
INSERT INTO `ecs_stats` VALUES ('1241420999', '0.0.0.0', '252', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241424831', '0.0.0.0', '253', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/goods.php?act=list', '/shoujitiyan/goods.php');
INSERT INTO `ecs_stats` VALUES ('1241498580', '0.0.0.0', '257', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241511324', '0.0.0.0', '262', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/goods.php?act=list', '/shoujitiyan/goods.php');
INSERT INTO `ecs_stats` VALUES ('1241514671', '0.0.0.0', '263', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241517726', '0.0.0.0', '265', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', '', '', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241946350', '127.0.0.1', '39', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241965138', '127.0.0.1', '41', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241966751', '127.0.0.1', '43', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241970153', '127.0.0.1', '45', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/goods.php?act=list', '/shoujitiyan/goods.php');
INSERT INTO `ecs_stats` VALUES ('1241970640', '127.0.0.1', '47', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1242105962', '0.0.0.0', '310', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/goods.php?act=list', '/shoujitiyan/goods.php');
INSERT INTO `ecs_stats` VALUES ('1242140915', '127.0.0.1', '52', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1242141002', '127.0.0.1', '54', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/user.php', '/shoujitiyan/user.php');
INSERT INTO `ecs_stats` VALUES ('1242141352', '127.0.0.1', '57', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/user.php?act=address_list', '/shoujitiyan/user.php');
INSERT INTO `ecs_stats` VALUES ('1242141605', '127.0.0.1', '59', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/user.php', '/shoujitiyan/user.php');
INSERT INTO `ecs_stats` VALUES ('1242576210', '127.0.0.1', '72', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1242576982', '127.0.0.1', '74', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/article.php?act=list&uselastfilter=1', '/shoujitiyan/article.php');
INSERT INTO `ecs_stats` VALUES ('1242577205', '127.0.0.1', '76', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/article.php?act=list', '/shoujitiyan/article.php');
INSERT INTO `ecs_stats` VALUES ('1242579230', '127.0.0.1', '78', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1242973907', '0.0.0.0', '375', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1242974337', '0.0.0.0', '377', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/', '/shoujitiyan/search.php');
INSERT INTO `ecs_stats` VALUES ('1242976474', '0.0.0.0', '379', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1244189098', '0.0.0.0', '418', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1244191271', '0.0.0.0', '420', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/index.php', '/shoujitiyan/article.php');
INSERT INTO `ecs_stats` VALUES ('1244191479', '0.0.0.0', '422', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1244193068', '0.0.0.0', '426', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/article.php?id=33', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1244772987', '0.0.0.0', '466', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1245042503', '0.0.0.0', '472', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/privilege.php?act=login', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245042507', '0.0.0.0', '472', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/index.php?act=top', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245046089', '0.0.0.0', '474', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/index.php?act=top', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245047906', '0.0.0.0', '476', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/goods.php?id=24', '/shouji/user.php');
INSERT INTO `ecs_stats` VALUES ('1245047951', '0.0.0.0', '478', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/group_buy.php?act=view&id=8', '/shouji/goods.php');
INSERT INTO `ecs_stats` VALUES ('1245048514', '0.0.0.0', '480', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/flow.php?step=checkout', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245139613', '0.0.0.0', '488', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/index.php?act=top', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245140082', '0.0.0.0', '490', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', '', '', '/shouji/article.php');
INSERT INTO `ecs_stats` VALUES ('1245145064', '0.0.0.0', '493', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/index.php?act=top', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245217308', '0.0.0.0', '498', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245219380', '0.0.0.0', '499', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/index.php?act=top', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245222219', '0.0.0.0', '500', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/goods.php?act=list', '/shouji/goods.php');
INSERT INTO `ecs_stats` VALUES ('1398215605', '127.0.0.1', '4', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/ecshop/admin/index.php?act=top', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1398215734', '127.0.0.1', '5', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1398274231', '127.0.0.1', '6', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1398278802', '127.0.0.1', '7', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1398280936', '127.0.0.1', '8', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399223044', '127.0.0.1', '17', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399233552', '127.0.0.1', '19', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399248305', '127.0.0.1', '22', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399252606', '127.0.0.1', '7', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399310802', '127.0.0.1', '8', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399315955', '127.0.0.1', '9', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399324531', '127.0.0.1', '24', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399324805', '127.0.0.1', '10', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399326359', '127.0.0.1', '26', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399328526', '127.0.0.1', '27', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399399741', '127.0.0.1', '36', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399401750', '127.0.0.1', '13', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399411023', '127.0.0.1', '14', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399421928', '127.0.0.1', '16', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399483057', '127.0.0.1', '39', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399483078', '127.0.0.1', '17', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399485888', '127.0.0.1', '40', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399489863', '127.0.0.1', '41', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399490047', '127.0.0.1', '18', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399495197', '127.0.0.1', '19', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399499654', '127.0.0.1', '21', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399499654', '127.0.0.1', '21', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399503521', '127.0.0.1', '22', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399570118', '127.0.0.1', '46', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399570148', '127.0.0.1', '26', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399571012', '127.0.0.1', '48', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399573273', '127.0.0.1', '27', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399579888', '127.0.0.1', '49', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399583299', '127.0.0.1', '28', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399591040', '127.0.0.1', '30', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=16&brand=12&price_min=0&price_max=0&filter_attr=0.0.0.0', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399595157', '127.0.0.1', '31', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=16&brand=12&price_min=0&price_max=0&filter_attr=0.0.0.0', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399842183', '127.0.0.1', '1', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399842571', '127.0.0.1', '1', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399843986', '127.0.0.1', '2', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399845369', '127.0.0.1', '3', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399845866', '127.0.0.1', '3', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399850885', '127.0.0.1', '5', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?category=9&display=grid&brand=0&price_min=0&price_max=0&filter_attr=0&page=1&sort=shop_price&order=ASC', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399850962', '127.0.0.1', '7', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?category=9&display=grid&brand=0&price_min=0&price_max=0&filter_attr=0&page=1&sort=shop_price&order=DESC', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399915061', '127.0.0.1', '8', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399918860', '127.0.0.1', '9', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399927599', '127.0.0.1', '10', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399930905', '127.0.0.1', '11', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399937991', '127.0.0.1', '7', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399942766', '127.0.0.1', '12', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1400001189', '127.0.0.1', '9', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400014779', '127.0.0.1', '13', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400015854', '127.0.0.1', '13', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400023218', '127.0.0.1', '14', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/admin/goods.php?act=list', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400027447', '127.0.0.1', '15', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400030014', '192.168.1.230', '1', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://192.168.1.208', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400030021', '192.168.1.208', '1', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://192.168.1.208', '/vancl/admin/goods.php?act=list', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400031163', '127.0.0.1', '16', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400090175', '127.0.0.1', '17', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400090179', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400090182', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400090378', '127.0.0.1', '15', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400091793', '127.0.0.1', '19', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400092563', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400092944', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400092985', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400092987', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400093525', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400093731', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400094857', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400094862', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400096419', '127.0.0.1', '16', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400101744', '127.0.0.1', '20', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400101750', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400101753', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400101755', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400101756', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400102542', '127.0.0.1', '22', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400108910', '127.0.0.1', '26', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400109497', '127.0.0.1', '18', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400112986', '127.0.0.1', '28', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400113232', '127.0.0.1', '30', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400113852', '127.0.0.1', '19', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400114519', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400114523', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400116140', '127.0.0.1', '20', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400116743', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400116882', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400116887', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400116898', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/search.php?encode=YTozOntzOjg6ImtleXdvcmRzIjtzOjQ1OiLmo4noibLnu4fmoLzlrZDoirHovrnoiJLpgILlpbPlvI/plb/oopbooazooasiO3M6MTA6ImltYWdlRmllbGQiO3M6MDoiIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTQwMDE', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400174359', '127.0.0.1', '21', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400181380', '127.0.0.1', '22', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400448455', '127.0.0.1', '23', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400448479', '127.0.0.1', '31', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400449021', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400449024', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400457450', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400457451', '127.0.0.1', '32', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400457454', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400462980', '127.0.0.1', '34', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400462981', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400519827', '127.0.0.1', '25', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400527695', '127.0.0.1', '26', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400532047', '127.0.0.1', '27', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/affiche.php');
INSERT INTO `ecs_stats` VALUES ('1400534745', '127.0.0.1', '28', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400537338', '127.0.0.1', '29', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400608991', '127.0.0.1', '36', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400610034', '127.0.0.1', '31', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400610314', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400610317', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400610468', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400610471', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400613077', '127.0.0.1', '37', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400635952', '127.0.0.1', '1', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400692369', '127.0.0.1', '32', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400697210', '127.0.0.1', '34', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400804092', '127.0.0.1', '42', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400804640', '127.0.0.1', '43', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1400807371', '127.0.0.1', '45', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401129192', '127.0.0.1', '48', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401130025', '127.0.0.1', '8', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401130226', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401133053', '127.0.0.1', '9', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401138722', '127.0.0.1', '10', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401147071', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401147072', '127.0.0.1', '11', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401147075', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401147819', '127.0.0.1', '13', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401149438', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401210816', '127.0.0.1', '50', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401214479', '127.0.0.1', '51', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401217421', '127.0.0.1', '14', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401217731', '127.0.0.1', '16', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=register', '/vancl/captcha.php');
INSERT INTO `ecs_stats` VALUES ('1401217811', '127.0.0.1', '18', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401217970', '127.0.0.1', '20', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=register', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401218011', '127.0.0.1', '22', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401218247', '127.0.0.1', '24', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401218852', '127.0.0.1', '52', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=logout', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401218976', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=register', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401219965', '127.0.0.1', '26', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401219967', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401219970', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401224216', '127.0.0.1', '53', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401224511', '127.0.0.1', '28', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401228399', '127.0.0.1', '29', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401229043', '127.0.0.1', '31', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401237554', '127.0.0.1', '34', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401238082', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401238085', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401317064', '127.0.0.1', '5', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401317239', '127.0.0.1', '7', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401317259', '127.0.0.1', '38', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321259', '127.0.0.1', '40', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401321262', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401321291', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401321355', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321574', '127.0.0.1', '42', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401321595', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321634', '127.0.0.1', '44', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321636', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321741', '127.0.0.1', '46', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321743', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321843', '127.0.0.1', '48', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401321847', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321852', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321855', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321858', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321908', '127.0.0.1', '50', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321932', '127.0.0.1', '52', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401322019', '127.0.0.1', '54', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401322023', '127.0.0.1', '56', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401322863', '127.0.0.1', '58', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401324472', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401326424', '127.0.0.1', '59', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401326675', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401326678', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401326701', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/pick_out.php', '/vancl/pick_out.php');
INSERT INTO `ecs_stats` VALUES ('1401326703', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/pick_out.php?cat_id=1&attr[3]=%E4%B8%AD%E9%95%BF%E8%A3%99', '/vancl/pick_out.php');
INSERT INTO `ecs_stats` VALUES ('1401382888', '127.0.0.1', '9', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401383045', '127.0.0.1', '60', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401383049', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401383052', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383055', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401383070', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383091', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383094', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383097', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383188', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383277', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383809', '127.0.0.1', '62', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401384181', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401388810', '127.0.0.1', '63', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401388812', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401388815', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401391998', '127.0.0.1', '64', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/captcha.php');
INSERT INTO `ecs_stats` VALUES ('1401398655', '127.0.0.1', '66', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401398752', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401398821', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401398833', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401398851', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401398863', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401398887', '127.0.0.1', '68', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/captcha.php');
INSERT INTO `ecs_stats` VALUES ('1401402753', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401403142', '127.0.0.1', '69', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401403543', '127.0.0.1', '10', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401406008', '127.0.0.1', '11', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401406529', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401407016', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401407020', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=register', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401407201', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=register', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401408037', '127.0.0.1', '71', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401408139', '127.0.0.1', '12', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401408211', '127.0.0.1', '1', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401409981', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401410007', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401410050', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401410053', '127.0.0.1', '2', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=logout', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401410062', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401410066', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401412215', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401412215', '127.0.0.1', '3', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401412217', '127.0.0.1', '4', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=logout', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401412222', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401412243', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401412877', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=10', '/vancl/article.php');
INSERT INTO `ecs_stats` VALUES ('1401816190', '127.0.0.1', '13', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401816879', '127.0.0.1', '14', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', 'http://localhost', '/vancl/user.php?act=logout', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401824535', '127.0.0.1', '9', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401830979', '127.0.0.1', '17', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1401831763', '127.0.0.1', '18', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401839273', '127.0.0.1', '19', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1401841180', '127.0.0.1', '21', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1401844218', '127.0.0.1', '23', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1401902093', '127.0.0.1', '24', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401988911', '127.0.0.1', '4', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401992676', '127.0.0.1', '5', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402248192', '127.0.0.1', '9', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402249412', '127.0.0.1', '10', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402249416', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402249421', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402249487', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402249547', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402249554', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402249557', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402249565', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php?step=cart', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402252527', '127.0.0.1', '11', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/flow.php?step=login', '/vancl/captcha.php');
INSERT INTO `ecs_stats` VALUES ('1402254965', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402256301', '127.0.0.1', '13', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/flow.php?step=cart', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402257133', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402257136', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402257141', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php?step=cart', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402265231', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402265232', '127.0.0.1', '15', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402265234', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402265240', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php?step=cart', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402265271', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402265293', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php', '/vancl/article.php');
INSERT INTO `ecs_stats` VALUES ('1402265296', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php', '/vancl/article.php');
INSERT INTO `ecs_stats` VALUES ('1402265299', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php', '/vancl/article.php');
INSERT INTO `ecs_stats` VALUES ('1402269736', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402269736', '127.0.0.1', '16', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/flow.php', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402269741', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402269745', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php?step=cart', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402269857', '127.0.0.1', '13', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402270521', '127.0.0.1', '15', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402270765', '127.0.0.1', '18', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402270768', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402270774', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402273545', '127.0.0.1', '16', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/flow.php?step=cart', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402273969', '127.0.0.1', '19', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402276068', '127.0.0.1', '20', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402276735', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=22', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402276788', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=22', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402276798', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402276813', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/article.php');
INSERT INTO `ecs_stats` VALUES ('1402334172', '127.0.0.1', '17', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402334850', '127.0.0.1', '21', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/brand.php');
INSERT INTO `ecs_stats` VALUES ('1402336926', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/brand.php', '/vancl/brand.php');
INSERT INTO `ecs_stats` VALUES ('1402337776', '127.0.0.1', '19', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/activity.php');
INSERT INTO `ecs_stats` VALUES ('1402337816', '127.0.0.1', '21', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/activity.php');
INSERT INTO `ecs_stats` VALUES ('1402337833', '127.0.0.1', '23', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/snatch.php');
INSERT INTO `ecs_stats` VALUES ('1402337864', '127.0.0.1', '25', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/snatch.php');
INSERT INTO `ecs_stats` VALUES ('1402337876', '127.0.0.1', '27', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/auction.php');
INSERT INTO `ecs_stats` VALUES ('1402337945', '127.0.0.1', '29', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/message.php');
INSERT INTO `ecs_stats` VALUES ('1402337993', '127.0.0.1', '31', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402351374', '127.0.0.1', '32', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402421754', '127.0.0.1', '33', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402421892', '127.0.0.1', '35', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/snatch.php');
INSERT INTO `ecs_stats` VALUES ('1402421952', '127.0.0.1', '37', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/activity.php');
INSERT INTO `ecs_stats` VALUES ('1402422273', '127.0.0.1', '39', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/activity.php');
INSERT INTO `ecs_stats` VALUES ('1402422369', '127.0.0.1', '41', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402422389', '127.0.0.1', '43', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/snatch.php');
INSERT INTO `ecs_stats` VALUES ('1402422701', '127.0.0.1', '45', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/snatch.php?id=1', '/vancl/snatch.php');
INSERT INTO `ecs_stats` VALUES ('1402423971', '127.0.0.1', '47', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402433596', '127.0.0.1', '23', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402434205', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402435297', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/search.php?encode=YTozOntzOjg6ImtleXdvcmRzIjtzOjE6IjEiO3M6MTA6ImltYWdlRmllbGQiO3M6MDoiIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTQwMjQ2MzAxODt9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402435604', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/search.php?encode=YTozOntzOjg6ImtleXdvcmRzIjtzOjE6IjEiO3M6MTA6ImltYWdlRmllbGQiO3M6MDoiIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTQwMjQ2MzAxODt9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402435866', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/search.php?encode=YTozOntzOjg6ImtleXdvcmRzIjtzOjE6IjEiO3M6MTA6ImltYWdlRmllbGQiO3M6MDoiIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTQwMjQ2MzAxODt9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402436848', '127.0.0.1', '25', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402436931', '127.0.0.1', '27', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402437215', '127.0.0.1', '29', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402437218', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402438193', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438196', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438201', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438203', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438279', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438607', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402438610', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402438736', '127.0.0.1', '31', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438738', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438819', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439042', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439048', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php?act=buy', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439105', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439123', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439148', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439160', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439172', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439757', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439768', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439993', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402441131', '127.0.0.1', '32', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/exchange.php?id=6&act=view', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402441329', '127.0.0.1', '48', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402443110', '127.0.0.1', '50', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402443616', '127.0.0.1', '51', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402443630', '127.0.0.1', '33', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402444838', '127.0.0.1', '35', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402444885', '127.0.0.1', '37', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402506714', '127.0.0.1', '52', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402507945', '127.0.0.1', '38', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402508439', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402508441', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=collection_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402510990', '127.0.0.1', '39', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511037', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=collection_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511044', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511345', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511346', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=tag_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511347', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=message_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511349', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=affiliate', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511350', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=comment_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511351', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=profile', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511352', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=bonus', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511353', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=track_packages', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511354', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=track_packages', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511356', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=address_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511358', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=collection_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511359', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=profile', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511944', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402512038', '127.0.0.1', '42', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402521830', '127.0.0.1', '53', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402535148', '127.0.0.1', '59', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402591895', '127.0.0.1', '60', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402592963', '127.0.0.1', '62', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402598494', '127.0.0.1', '63', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402598951', '127.0.0.1', '64', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=logout', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402598984', '127.0.0.1', '66', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1402599564', '127.0.0.1', '68', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=logout', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402938374', '127.0.0.1', '43', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402938377', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402938893', '127.0.0.1', '45', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1402940844', '127.0.0.1', '71', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402942981', '127.0.0.1', '46', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1402943584', '127.0.0.1', '73', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402945649', '127.0.0.1', '47', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1402965501', '127.0.0.1', '48', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1402967207', '127.0.0.1', '50', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403029595', '127.0.0.1', '75', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1403030188', '127.0.0.1', '77', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403032118', '127.0.0.1', '79', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403038340', '127.0.0.1', '80', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1403042470', '127.0.0.1', '51', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403046676', '127.0.0.1', '52', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1403046679', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1403046682', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1403046774', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403047785', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403050512', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403052775', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403053746', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403053830', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403054652', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403054710', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403054950', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403054964', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403111695', '127.0.0.1', '82', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1403113936', '127.0.0.1', '83', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1403114050', '127.0.0.1', '1', 'Internet Explorer 9.0', 'Windows NT', '', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403114927', '127.0.0.1', '85', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/index.php');

-- ----------------------------
-- Table structure for `ecs_suppliers`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_suppliers`;
CREATE TABLE `ecs_suppliers` (
  `suppliers_id` smallint(5) unsigned NOT NULL auto_increment,
  `suppliers_name` varchar(255) default NULL,
  `suppliers_desc` mediumtext,
  `is_check` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`suppliers_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_suppliers
-- ----------------------------
INSERT INTO `ecs_suppliers` VALUES ('1', '北京供货商', '北京供货商', '1');
INSERT INTO `ecs_suppliers` VALUES ('2', '上海供货商', '上海供货商', '1');

-- ----------------------------
-- Table structure for `ecs_tag`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_tag`;
CREATE TABLE `ecs_tag` (
  `tag_id` mediumint(8) NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `tag_words` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`tag_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_tag
-- ----------------------------
INSERT INTO `ecs_tag` VALUES ('1', '0', '13', '音乐手机');
INSERT INTO `ecs_tag` VALUES ('2', '0', '14', '音乐手机');
INSERT INTO `ecs_tag` VALUES ('3', '0', '23', '音乐手机');
INSERT INTO `ecs_tag` VALUES ('4', '0', '23', '智能手机');
INSERT INTO `ecs_tag` VALUES ('5', '0', '14', '智能手机');
INSERT INTO `ecs_tag` VALUES ('6', '0', '22', '智能手机');
INSERT INTO `ecs_tag` VALUES ('7', '0', '31', '音乐手机');

-- ----------------------------
-- Table structure for `ecs_template`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_template`;
CREATE TABLE `ecs_template` (
  `filename` varchar(30) NOT NULL default '',
  `region` varchar(40) NOT NULL default '',
  `library` varchar(40) NOT NULL default '',
  `sort_order` tinyint(1) unsigned NOT NULL default '0',
  `id` smallint(5) unsigned NOT NULL default '0',
  `number` tinyint(1) unsigned NOT NULL default '5',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `theme` varchar(60) NOT NULL default '',
  `remarks` varchar(30) NOT NULL default '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_template
-- ----------------------------
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/vote_list.lbi', '8', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/email_list.lbi', '9', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/order_query.lbi', '6', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/cart.lbi', '0', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/promotion_info.lbi', '3', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/auction.lbi', '4', '0', '3', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/group_buy.lbi', '5', '0', '3', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '右边主区域', '/library/recommend_hot.lbi', '2', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '右边主区域', '/library/recommend_new.lbi', '1', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '右边主区域', '/library/recommend_best.lbi', '0', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/invoice_query.lbi', '7', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/top10.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/brands.lbi', '0', '0', '11', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '右边区域', '/library/recommend_best.lbi', '0', '0', '5', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '右边区域', '/library/goods_list.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '右边区域', '/library/pages.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/cart.lbi', '0', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/price_grade.lbi', '3', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/filter_attr.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category_top', '促销商品区域', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('category_top', '', '/library/recommend_hot.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('category_top', '', '/library/recommend_new.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('category_top', '', '/library/recommend_best.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('category', '', '/library/recommend_best.lbi', '0', '0', '5', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('category', '热卖推荐区域', '/library/recommend_hot.lbi', '0', '0', '4', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('category', '', '/library/recommend_promotion.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('category', '', '/library/brands.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '生活橱窗下方通栏广告区域（宽）', '/library/ad_position.lbi', '0', '7', '1', '4', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '首页幻灯片下方广告区域', '/library/ad_position.lbi', '0', '2', '9', '4', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '活动区域（窄）', '/library/ad_position.lbi', '0', '6', '1', '4', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '活动区域（宽）', '/library/ad_position.lbi', '0', '3', '1', '4', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/brands.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '订单查询区域', '/library/order_query.lbi', '0', '0', '0', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '投票区域', '/library/vote_list.lbi', '0', '0', '0', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '分类下商品区域', '/library/cat_goods.lbi', '0', '2', '10', '1', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '分类下商品区域', '/library/cat_goods.lbi', '1', '4', '10', '1', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '分类下商品区域', '/library/cat_goods.lbi', '2', '6', '10', '1', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '分类下商品区域', '/library/cat_goods.lbi', '3', '5', '10', '1', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '分类下商品区域', '/library/cat_goods.lbi', '4', '11', '10', '1', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '新闻快报文章区域', '/library/cat_articles.lbi', '0', '12', '8', '3', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/auction.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/group_buy.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/recommend_hot.lbi', '0', '0', '7', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/recommend_new.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/recommend_best.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('index', '发货单区域', '/library/invoice_query.lbi', '0', '0', '0', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('category_top', '', '/library/group_buy.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('category_top', '', '/library/auction.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('category_top', '', '/library/brands.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('category_top', '首页疯狂秒杀下广告位', '/library/ad_position.lbi', '0', '18', '3', '4', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('group_buy_list', '团购列表底部广告位', '/library/ad_position.lbi', '0', '32', '1', '4', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('group_buy_list', '团购列表幻灯片右侧广告位', '/library/ad_position.lbi', '0', '31', '3', '4', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('group_buy_goods', '', '/library/recommend_hot.lbi', '0', '0', '3', '0', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('group_buy_goods', '团购详细右侧广告位', '/library/ad_position.lbi', '0', '33', '1', '4', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('group_buy_goods', '团购详细底部广告位', '/library/ad_position.lbi', '0', '34', '1', '4', 'jingdong2015', '');
INSERT INTO `ecs_template` VALUES ('category', '促销活动文章区域', '/library/cat_articles.lbi', '0', '11', '5', '3', 'jingdong2015', '');

-- ----------------------------
-- Table structure for `ecs_topic`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_topic`;
CREATE TABLE `ecs_topic` (
  `topic_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL default '0',
  `end_time` int(10) NOT NULL default '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL default '''''',
  `css` text NOT NULL,
  `topic_img` varchar(255) default NULL,
  `title_pic` varchar(255) default NULL,
  `base_style` char(6) default NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_topic
-- ----------------------------
INSERT INTO `ecs_topic` VALUES ('1', '夏新优惠大酬宾', '<p>夏新产品优惠开始了</p>', '1241078400', '1435564800', 'O:8:\"stdClass\":1:{s:13:\"测试分类1\";a:8:{i:0;s:11:\"夏新N7|17\";i:1;s:70:\"洗颜专科 柔澈泡沫 洁面乳 120g（资生堂授权正品）|69\";i:2;s:92:\"欧莱雅（LOREAL）男士火山岩控油清痘洁面膏 买一赠一装（100ml+50ml）|70\";i:3;s:131:\"妮维雅 男士净油精华亮肤洁面炭泥 150ml+150ml （提亮肤色 控油美白洗面奶 深层洁面 温和去角质）|71\";i:4;s:35:\"DHC蝶翠诗橄榄卸妆油200ml|72\";i:5;s:66:\"欧莱雅（LOREAL）男士 控油炭爽抗黑头洁面膏100ml|73\";i:6;s:61:\"Neutrogena露得清深层净化洗面乳两支套装100g*2|74\";i:7;s:73:\"欧莱雅（LOREAL）男士劲能深层净化洁面膏（100ml+50ml）|75\";}}', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `ecs_users`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_users`;
CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL auto_increment,
  `aite_id` text NOT NULL,
  `email` varchar(60) NOT NULL default '',
  `user_name` varchar(60) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `paypassword` varchar(32) NOT NULL,
  `question` varchar(255) NOT NULL default '',
  `answer` varchar(255) NOT NULL default '',
  `sex` tinyint(1) unsigned NOT NULL default '0',
  `birthday` date NOT NULL default '0000-00-00',
  `user_money` decimal(10,2) NOT NULL default '0.00',
  `frozen_money` decimal(10,2) NOT NULL default '0.00',
  `pay_points` int(10) unsigned NOT NULL default '0',
  `rank_points` int(10) unsigned NOT NULL default '0',
  `address_id` mediumint(8) unsigned NOT NULL default '0',
  `reg_time` int(10) unsigned NOT NULL default '0',
  `last_login` int(11) unsigned NOT NULL default '0',
  `last_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL default '',
  `visit_count` smallint(5) unsigned NOT NULL default '0',
  `user_rank` tinyint(3) unsigned NOT NULL default '0',
  `is_special` tinyint(3) unsigned NOT NULL default '0',
  `ec_salt` varchar(10) default NULL,
  `salt` varchar(10) NOT NULL default '0',
  `parent_id` mediumint(9) NOT NULL default '0',
  `flag` tinyint(3) unsigned NOT NULL default '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL default '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) default NULL,
  `passwd_answer` varchar(255) default NULL,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_users
-- ----------------------------
INSERT INTO `ecs_users` VALUES ('1', '', 'ecshop@ecshop.com', 'ecshop', '554fcae493e564ee0dc75bdf2ebf94ca', '', '', '', '0', '1960-03-03', '0.00', '0.00', '98388', '15390', '1', '0', '1245048540', '0000-00-00 00:00:00', '0.0.0.0', '11', '0', '0', null, '0', '0', '0', '', '', '', '', '', '', '0', '0.00', null, null);
INSERT INTO `ecs_users` VALUES ('2', '', 'vip@ecshop.com', 'vip', '232059cb5361a9336ccf1b8c2ba7657a', '', '', '', '0', '1949-01-01', '0.00', '0.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '0', '0', null, '0', '0', '0', '', '', '', '', '', '', '0', '0.00', null, null);
INSERT INTO `ecs_users` VALUES ('3', '', 'text@ecshop.com', 'text', '1cb251ec0d568de6a929b520c4aed8d1', '', '', '', '0', '1949-01-01', '0.00', '0.00', '2623', '2623', '2', '0', '1242973574', '0000-00-00 00:00:00', '0.0.0.0', '2', '0', '0', null, '0', '0', '0', '', '', '', '', '', '', '0', '0.00', null, null);
INSERT INTO `ecs_users` VALUES ('5', '', 'zuanshi@ecshop.com', 'zuanshi', '815a71fb334412e7ba4595741c5a111d', '', '', '', '0', '1949-01-01', '0.00', '10000.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '3', '0', null, '0', '0', '0', '', '', '', '', '', '', '0', '0.00', null, null);
INSERT INTO `ecs_users` VALUES ('6', '', 'admin123@qq.com', 'admin9041', '79e4fb1ec5cb478cf37721d4fbcf4014', '', '', '', '0', '0000-00-00', '0.00', '0.00', '10036756', '36756', '3', '1401218841', '1408038957', '0000-00-00 00:00:00', '127.0.0.1', '29', '0', '0', '2330', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', null, null);
INSERT INTO `ecs_users` VALUES ('7', '', 'zhouhuan@ecmoban.com', 'admin90412', '0192023a7bbd73250516f069df18b500', '', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1403116746', '1403116746', '0000-00-00 00:00:00', '127.0.0.1', '1', '0', '0', null, '0', '0', '0', '', '', '', '', '', '', '0', '0.00', null, null);
INSERT INTO `ecs_users` VALUES ('8', '', '444@qq.com', 'admin123', '03b6f64520b9d63e915b0a489e86532b', '', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '4', '1407698971', '1407889387', '0000-00-00 00:00:00', '127.0.0.1', '25', '0', '0', '6380', '0', '0', '0', '', '111@live.cn', '11', '222', '33', '44', '0', '0.00', 'old_address', '55');
INSERT INTO `ecs_users` VALUES ('9', '', 'admin1234@qq.com', 'admin1234', '0192023a7bbd73250516f069df18b500', '', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1407699009', '1407699009', '0000-00-00 00:00:00', '127.0.0.1', '1', '0', '0', null, '0', '0', '0', '', 'admin123@live.cn', '11111', '22', '23', '34', '0', '0.00', 'old_address', '5555');
INSERT INTO `ecs_users` VALUES ('10', '', '111@123.com', '1234567', 'fcea920f7412b5da7be0cf42b8c93759', '', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1407888445', '1407888445', '0000-00-00 00:00:00', '192.168.1.10', '1', '0', '0', null, '0', '0', '0', '', '', '', '', '', '', '0', '0.00', null, null);
INSERT INTO `ecs_users` VALUES ('11', '', '1111@123.com', '12345678', '25d55ad283aa400af464c76d713c07ad', '', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1408317120', '1408317120', '0000-00-00 00:00:00', '192.168.1.10', '1', '0', '0', null, '0', '0', '0', '', '', '', '', '', '', '0', '0.00', null, null);
INSERT INTO `ecs_users` VALUES ('12', '', '123456@qq.com', 'ecmoban', '63069bf52ae5a4eb4dcfa45cebe3001b', '', '', '', '0', '0000-00-00', '4436.60', '9999.00', '15897', '15897', '5', '1428970981', '1430271687', '0000-00-00 00:00:00', '127.0.0.1', '40', '0', '0', '182', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', null, null);
INSERT INTO `ecs_users` VALUES ('13', '', '123123@qq.com', 'xiaosong', '4297f44b13955235245b2497399d7a93', '', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1430155001', '1430155001', '0000-00-00 00:00:00', '127.0.0.1', '1', '0', '0', null, '0', '0', '0', '', '', '', '', '', '', '0', '0.00', null, null);
INSERT INTO `ecs_users` VALUES ('15', '', '13121524680@163.com', '注册', '8aa39e805f29dd3e724924f4be0c01c8', '', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1436210412', '1436316544', '0000-00-00 00:00:00', '127.0.0.1', '7', '0', '0', '4252', '0', '0', '0', '', '', '', '', '', '13146278834', '0', '0.00', null, null);

-- ----------------------------
-- Table structure for `ecs_user_account`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_account`;
CREATE TABLE `ecs_user_account` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `admin_user` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL default '0',
  `paid_time` int(10) NOT NULL default '0',
  `admin_note` varchar(255) NOT NULL,
  `user_note` varchar(255) NOT NULL,
  `process_type` tinyint(1) NOT NULL default '0',
  `payment` varchar(90) NOT NULL,
  `is_paid` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_account
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_user_address`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_address`;
CREATE TABLE `ecs_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL auto_increment,
  `address_name` varchar(50) NOT NULL default '',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `consignee` varchar(60) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `country` smallint(5) NOT NULL default '0',
  `province` smallint(5) NOT NULL default '0',
  `city` smallint(5) NOT NULL default '0',
  `district` smallint(5) NOT NULL default '0',
  `address` varchar(120) NOT NULL default '',
  `zipcode` varchar(60) NOT NULL default '',
  `tel` varchar(60) NOT NULL default '',
  `mobile` varchar(60) NOT NULL default '',
  `sign_building` varchar(120) NOT NULL default '',
  `best_time` varchar(120) NOT NULL default '',
  PRIMARY KEY  (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_address
-- ----------------------------
INSERT INTO `ecs_user_address` VALUES ('1', '', '1', '刘先生', 'ecshop@ecshop.com', '1', '2', '52', '502', '海兴大厦', '', '010-25851234', '13986765412', '', '');
INSERT INTO `ecs_user_address` VALUES ('2', '', '3', '叶先生', 'text@ecshop.com', '1', '2', '52', '510', '通州区旗舰凯旋小区', '', '13588104710', '', '', '');
INSERT INTO `ecs_user_address` VALUES ('3', '', '6', 'q111', 'admin123@qq.com', '1', '4', '55', '540', '22', '', '333', '', '', '');
INSERT INTO `ecs_user_address` VALUES ('4', '', '8', '111', '444@qq.com', '1', '7', '102', '907', '22', '', '333', '', '', '');
INSERT INTO `ecs_user_address` VALUES ('5', '', '12', '小松', '123456@qq.com', '1', '25', '321', '2709', '中山北路2911号中关村科技大厦2402室', '', '15221019886', '', '', '');
INSERT INTO `ecs_user_address` VALUES ('6', '', '14', 'q', '13121524680@163.com', '1', '2', '52', '500', 'q', '1', '1', '1', 'q', 'q');

-- ----------------------------
-- Table structure for `ecs_user_bonus`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_bonus`;
CREATE TABLE `ecs_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL auto_increment,
  `bonus_type_id` tinyint(3) unsigned NOT NULL default '0',
  `bonus_sn` bigint(20) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `used_time` int(10) unsigned NOT NULL default '0',
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `emailed` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_bonus
-- ----------------------------
INSERT INTO `ecs_user_bonus` VALUES ('1', '3', '0', '1', '1242142681', '4', '0');
INSERT INTO `ecs_user_bonus` VALUES ('2', '4', '1000003379', '1', '1242976699', '14', '0');
INSERT INTO `ecs_user_bonus` VALUES ('3', '4', '1000018450', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('4', '4', '1000023774', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('5', '4', '1000039394', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('6', '4', '1000049305', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('7', '4', '1000052248', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('8', '4', '1000061542', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('9', '4', '1000070278', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('10', '4', '1000080588', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('11', '4', '1000091405', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('24', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('25', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('26', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('27', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('28', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('29', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('30', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('31', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('33', '3', '0', '3', '0', '0', '0');

-- ----------------------------
-- Table structure for `ecs_user_feed`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_feed`;
CREATE TABLE `ecs_user_feed` (
  `feed_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `value_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `feed_type` tinyint(1) unsigned NOT NULL default '0',
  `is_feed` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_feed
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_user_rank`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_rank`;
CREATE TABLE `ecs_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL auto_increment,
  `rank_name` varchar(30) NOT NULL default '',
  `min_points` int(10) unsigned NOT NULL default '0',
  `max_points` int(10) unsigned NOT NULL default '0',
  `discount` tinyint(3) unsigned NOT NULL default '0',
  `show_price` tinyint(1) unsigned NOT NULL default '1',
  `special_rank` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_rank
-- ----------------------------
INSERT INTO `ecs_user_rank` VALUES ('1', '注册用户', '0', '10000', '100', '1', '0');
INSERT INTO `ecs_user_rank` VALUES ('2', 'vip', '10000', '10000000', '95', '1', '0');
INSERT INTO `ecs_user_rank` VALUES ('3', '代销用户', '0', '0', '90', '0', '1');

-- ----------------------------
-- Table structure for `ecs_virtual_card`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_virtual_card`;
CREATE TABLE `ecs_virtual_card` (
  `card_id` mediumint(8) NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `card_sn` varchar(60) NOT NULL default '',
  `card_password` varchar(60) NOT NULL default '',
  `add_date` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  `is_saled` tinyint(1) NOT NULL default '0',
  `order_sn` varchar(20) NOT NULL default '',
  `crc32` varchar(12) NOT NULL default '0',
  PRIMARY KEY  (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_virtual_card
-- ----------------------------
INSERT INTO `ecs_virtual_card` VALUES ('1', '25', 'RVlYQhFY', 'RVlYQhFYQg', '1241972716', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('2', '25', 'RVlYQhFYQhFQEg', 'RVlYQhFYQhFQEg', '1241972726', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('3', '26', 'RVlYQhFYQg', 'RVlYQhFYQg', '1241972801', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('4', '26', 'RVlYQhFYQhFQEVo', 'RVlYQhFYQhFQEVo', '1241972811', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('5', '27', 'RlpbQRI', 'RlpbQRJbQQ', '1241972903', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('6', '27', 'RlpbQRJbQg', 'RVpbQBJaQRE', '1241972911', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('7', '30', 'RVtbQBJYQBJQE1lU', 'R1pYRxJaQhRTEVhXSEdaWA', '1241973121', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('8', '30', 'R1pYRxJYRxNTFV9S', 'TF5cQBVdQA', '1241973127', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('9', '30', 'Q15cSxZeRhhWFg', 'TV9fSxdfSxdXGFxTQUI', '1241973134', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('10', '30', 'QVxaRhRaRhRSF11d', 'TFBeRRheRRhWFlJdSU1Q', '1241973146', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('11', '30', 'R1xaRxNcRw', 'QF1dRRVdRBY', '1241973157', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('12', '30', 'RlpbQRNdQBJU', 'R1xaQRRaQRVSEg', '1241973164', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('13', '30', 'RltdQBRaQQ', 'Rl1dRRheRRhYF10', '1241973170', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('14', '30', 'RltdQBVeRhg', 'RlxaQRZeRhVV', '1241973178', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('15', '30', 'QFtbRhRaQRZVEw', 'Rl1aQRRaQRZUElg', '1241973185', '1273449600', '0', '', '-1958172277');

-- ----------------------------
-- Table structure for `ecs_volume_price`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_volume_price`;
CREATE TABLE `ecs_volume_price` (
  `price_type` tinyint(1) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `volume_number` smallint(5) unsigned NOT NULL default '0',
  `volume_price` decimal(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (`price_type`,`goods_id`,`volume_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_volume_price
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_vote`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote`;
CREATE TABLE `ecs_vote` (
  `vote_id` smallint(5) unsigned NOT NULL auto_increment,
  `vote_name` varchar(250) NOT NULL default '',
  `start_time` int(11) unsigned NOT NULL default '0',
  `end_time` int(11) unsigned NOT NULL default '0',
  `can_multi` tinyint(1) unsigned NOT NULL default '0',
  `vote_count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`vote_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_vote
-- ----------------------------
INSERT INTO `ecs_vote` VALUES ('1', '您从哪里知道我们的网站', '1213171200', '1495699200', '0', '1');

-- ----------------------------
-- Table structure for `ecs_vote_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote_log`;
CREATE TABLE `ecs_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `vote_id` smallint(5) unsigned NOT NULL default '0',
  `ip_address` varchar(15) NOT NULL default '',
  `vote_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`log_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_vote_log
-- ----------------------------
INSERT INTO `ecs_vote_log` VALUES ('1', '1', '127.0.0.1', '1423437360');

-- ----------------------------
-- Table structure for `ecs_vote_option`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote_option`;
CREATE TABLE `ecs_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL auto_increment,
  `vote_id` smallint(5) unsigned NOT NULL default '0',
  `option_name` varchar(250) NOT NULL default '',
  `option_count` int(8) unsigned NOT NULL default '0',
  `option_order` tinyint(3) unsigned NOT NULL default '100',
  PRIMARY KEY  (`option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_vote_option
-- ----------------------------
INSERT INTO `ecs_vote_option` VALUES ('1', '1', '论坛', '1', '100');
INSERT INTO `ecs_vote_option` VALUES ('2', '1', '朋友', '0', '100');
INSERT INTO `ecs_vote_option` VALUES ('3', '1', '友情链接', '0', '100');

-- ----------------------------
-- Table structure for `ecs_wholesale`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wholesale`;
CREATE TABLE `ecs_wholesale` (
  `act_id` mediumint(8) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `rank_ids` varchar(255) NOT NULL,
  `prices` text NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY  (`act_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wholesale
-- ----------------------------
INSERT INTO `ecs_wholesale` VALUES ('1', '21', '金立 A30', '1,2', 'a:1:{i:0;a:2:{s:4:\"attr\";a:1:{i:120;s:1:\"0\";}s:7:\"qp_list\";a:2:{i:0;a:2:{s:8:\"quantity\";i:50;s:5:\"price\";d:1700;}i:1;a:2:{s:8:\"quantity\";i:100;s:5:\"price\";d:1680;}}}}', '1');
