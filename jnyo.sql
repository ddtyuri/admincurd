-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 07 月 24 日 01:56
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `jnyo`
--

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_ad`
--

CREATE TABLE IF NOT EXISTS `jnyo_ad` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `bid` int(10) unsigned NOT NULL COMMENT '商家id',
  `bname` varchar(256) DEFAULT NULL COMMENT '商家名称',
  `pid` int(10) unsigned DEFAULT NULL COMMENT '商品id',
  `category` tinyint(4) NOT NULL COMMENT '类型',
  `url` varchar(256) NOT NULL COMMENT '广告链接',
  `image` varchar(256) NOT NULL COMMENT '广告图片',
  `settlemode` varchar(256) NOT NULL COMMENT '结算方式',
  `status` tinyint(4) NOT NULL COMMENT '广告状态',
  `timestamp` int(10) unsigned NOT NULL COMMENT '发布时间戳',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='推广广告' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `jnyo_ad`
--

INSERT INTO `jnyo_ad` (`aid`, `bid`, `bname`, `pid`, `category`, `url`, `image`, `settlemode`, `status`, `timestamp`) VALUES
(1, 1, 'Taobao', NULL, 2, 'www.taobao.com', 'http://news.0513.org/attachments/2010/03/12/1309_201003121512081m168.jpg', 'P20', 2, 1435052086),
(2, 1, NULL, 1, 1, 'www.baidu.com', '', 'f20', 1, 1435124326),
(3, 1, NULL, 1, 1, 'www.baidu.com', 'AD/20150624/558a59573bef4.png', 'F20', 1, 1435130199),
(4, 1, 'test', 1, 1, 'www.baidu.com', 'AD/20150624/558a5ca93c92e.png', 'P20', 0, 1435131049);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_admin`
--

CREATE TABLE IF NOT EXISTS `jnyo_admin` (
  `jid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员账户id',
  `nickname` varchar(32) NOT NULL COMMENT '账户昵称',
  `password` varchar(32) NOT NULL COMMENT '账户密码',
  `status` tinyint(4) NOT NULL COMMENT '账户状态',
  `timestamp` int(10) unsigned NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`jid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='今药CPS管理员账户' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `jnyo_admin`
--

INSERT INTO `jnyo_admin` (`jid`, `nickname`, `password`, `status`, `timestamp`) VALUES
(1, 'admin', 'admin', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_advertiser_enterprise`
--

CREATE TABLE IF NOT EXISTS `jnyo_advertiser_enterprise` (
  `jid` int(10) unsigned NOT NULL COMMENT '商家id',
  `name` varchar(256) NOT NULL COMMENT '企业名称',
  `license` char(15) NOT NULL COMMENT '营业执照号',
  `licenseimg` varchar(256) NOT NULL COMMENT '营业执照',
  `realname` varchar(32) NOT NULL COMMENT '真实姓名',
  `idnum` char(18) NOT NULL COMMENT '身份证号',
  `idimg` varchar(256) NOT NULL COMMENT '身份证照片',
  `bankname` varchar(256) NOT NULL COMMENT '开户行',
  `accountname` varchar(256) NOT NULL COMMENT '开户名',
  `bankaccount` varchar(32) NOT NULL COMMENT '银行账号',
  `tradepwd` varchar(32) NOT NULL COMMENT '交易密码',
  `status` tinyint(4) NOT NULL COMMENT '信息状态',
  PRIMARY KEY (`jid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='今药CPS广告主(企业)';

--
-- 转存表中的数据 `jnyo_advertiser_enterprise`
--

INSERT INTO `jnyo_advertiser_enterprise` (`jid`, `name`, `license`, `licenseimg`, `realname`, `idnum`, `idimg`, `bankname`, `accountname`, `bankaccount`, `tradepwd`, `status`) VALUES
(55, '55', '', '', '', '', '', '', '', '', '', 1),
(66, '66', '', '', '', '', '', '', '', '', '', 1),
(5, 'adfadfadsf', '未设置', '未设置', '未设置', '未设置', '未设置', '未设置', '未设置', '未设置', '未设置', 2),
(4, '4', '', '', '', '', '', '', '', '', '', 2),
(44, '44', '', '', '', '', '', '', '', '', '', 2),
(77, '77', '', '', '', '', '', '', '', '', '', 2),
(88, '88', '', '', '', '', '', '', '', '', '', 1),
(99, '99', '', '', '', '', '', '', '', '', '', 1),
(13, '13', '', '', '', '', '', '', '', '', '', 2),
(18, '18', '', '', '', '', '', '', '', '', '', 1),
(19, '19', '', '', '', '', '', '', '', '', '', 1),
(29, '19', '', '', '', '', '', '', '', '', '', 2),
(28, '28', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_advertiser_individual`
--

CREATE TABLE IF NOT EXISTS `jnyo_advertiser_individual` (
  `jid` int(10) unsigned NOT NULL COMMENT '商家id',
  `realname` varchar(32) NOT NULL COMMENT '真实姓名',
  `idnum` char(18) NOT NULL COMMENT '身份证号',
  `email` varchar(64) NOT NULL COMMENT '邮箱',
  `alipay` varchar(64) NOT NULL COMMENT '支付宝',
  `status` tinyint(4) NOT NULL COMMENT '信息状态',
  PRIMARY KEY (`jid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='今药CPS广告主(个人)';

--
-- 转存表中的数据 `jnyo_advertiser_individual`
--

INSERT INTO `jnyo_advertiser_individual` (`jid`, `realname`, `idnum`, `email`, `alipay`, `status`) VALUES
(0, '123', '123', '123', '123', 2),
(3, '45', '456', '456', '456', 0);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_click_statistics`
--

CREATE TABLE IF NOT EXISTS `jnyo_click_statistics` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '统计id',
  `sid` int(10) unsigned NOT NULL COMMENT '分享id',
  `aid` int(10) unsigned NOT NULL COMMENT '广告id',
  `zid` int(10) unsigned NOT NULL COMMENT '站长id',
  `bid` int(10) unsigned NOT NULL COMMENT '商家id',
  `ip` char(15) NOT NULL COMMENT 'IP地址',
  `timestamp` int(10) unsigned NOT NULL COMMENT '发布时间戳',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='点击统计' AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `jnyo_click_statistics`
--

INSERT INTO `jnyo_click_statistics` (`cid`, `sid`, `aid`, `zid`, `bid`, `ip`, `timestamp`) VALUES
(1, 2, 1, 2, 1, '127.0.0.1', 1435650877),
(2, 1, 1, 0, 0, '127.0.0.1', 1436581747),
(8, 1, 1, 0, 0, '127.0.0.1', 1436866124),
(9, 1, 1, 0, 0, '127.0.0.1', 1437040069),
(7, 2, 1, 0, 0, '127.0.0.1', 1436864715);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_deposit_record`
--

CREATE TABLE IF NOT EXISTS `jnyo_deposit_record` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `jid` int(10) unsigned NOT NULL COMMENT '提现账户id',
  `deposit` double(12,2) NOT NULL COMMENT '提现金额',
  `to` varchar(64) NOT NULL COMMENT '提现账户',
  `balance` double(12,2) NOT NULL COMMENT '账户余额',
  `timestamp` int(10) unsigned NOT NULL COMMENT '提现时间戳',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='提现记录' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `jnyo_deposit_record`
--

INSERT INTO `jnyo_deposit_record` (`did`, `jid`, `deposit`, `to`, `balance`, `timestamp`) VALUES
(1, 2, 3.00, '156****2350', 0.00, 1435025123),
(2, 2, 7.00, '156****2350', 0.00, 1435049074),
(3, 1, 20.55, '789123@qq.com', 0.00, 1437124375),
(4, 1, 20.55, '789123@qq.com', 62.85, 1437124596);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_income_trend`
--

CREATE TABLE IF NOT EXISTS `jnyo_income_trend` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '走势id',
  `sid` int(10) unsigned NOT NULL COMMENT '分享id',
  `zid` int(10) unsigned NOT NULL COMMENT '站长id',
  `bid` int(10) unsigned NOT NULL COMMENT '商家id',
  `aid` int(10) unsigned NOT NULL COMMENT '广告id',
  `name` varchar(128) NOT NULL COMMENT '商品名称',
  `income` double(12,2) NOT NULL COMMENT '收益',
  `timestamp` int(10) unsigned NOT NULL COMMENT '收益时间戳',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='收益走势' AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `jnyo_income_trend`
--

INSERT INTO `jnyo_income_trend` (`tid`, `sid`, `zid`, `bid`, `aid`, `name`, `income`, `timestamp`) VALUES
(1, 1, 2, 1, 1, '', 4.00, 1434988800),
(2, 2, 2, 1, 1, '', 7.90, 1435075200),
(3, 1, 1, 1, 1, '', 4.07, 1436176930),
(4, 1, 1, 1, 1, '', 4.07, 1436177178),
(5, 1, 1, 1, 1, '', 4.07, 1436176930),
(6, 1, 1, 1, 1, '', 4.07, 1436177369),
(7, 1, 1, 1, 1, '', 4.07, 1436177369),
(8, 2, 1, 1, 1, '', 4.07, 1436177369),
(9, 1, 1, 1, 1, '', 4.07, 1436177465),
(10, 1, 1, 1, 1, '', 4.07, 1436177465),
(11, 1, 1, 1, 1, '', 4.07, 1436177465),
(12, 1, 1, 1, 1, '', 4.07, 1436177465),
(13, 1, 1, 1, 1, '', 4.07, 1436177937),
(14, 1, 1, 1, 1, '', 4.07, 1436177937),
(15, 1, 1, 1, 1, '', 4.07, 1436177937),
(16, 1, 1, 1, 1, '', 4.07, 1436177937),
(17, 1, 1, 1, 1, '', 4.07, 1436239186),
(18, 1, 1, 1, 1, '', 4.07, 1436239186),
(19, 1, 1, 1, 1, '', 4.07, 1436239186),
(20, 1, 1, 1, 1, '', 4.07, 1436239186),
(21, 1, 1, 1, 1, '', 4.07, 1436250158),
(22, 1, 1, 1, 1, '', 20.00, 1436250158),
(23, 1, 1, 1, 1, '', 4.07, 1436250158),
(24, 1, 1, 1, 1, '', 4.07, 1436250158);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_industry`
--

CREATE TABLE IF NOT EXISTS `jnyo_industry` (
  `iid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '行业id',
  `name` varchar(32) NOT NULL COMMENT '行业名称',
  `status` tinyint(4) NOT NULL COMMENT '分类状态',
  PRIMARY KEY (`iid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行业分类' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_product`
--

CREATE TABLE IF NOT EXISTS `jnyo_product` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `jid` int(10) unsigned NOT NULL COMMENT '商家id',
  `name` varchar(128) NOT NULL COMMENT '商品名称',
  `price` double(12,2) NOT NULL COMMENT '商品价格',
  `sellpoin` text NOT NULL COMMENT '卖点',
  `introduce` text NOT NULL COMMENT '介绍',
  `remark` text COMMENT '备注',
  `url` varchar(256) NOT NULL COMMENT '产品链接',
  `timestamp` int(10) unsigned NOT NULL COMMENT '发布时间戳',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='商品' AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `jnyo_product`
--

INSERT INTO `jnyo_product` (`pid`, `jid`, `name`, `price`, `sellpoin`, `introduce`, `remark`, `url`, `timestamp`) VALUES
(1, 1, '', 1.50, '', '', '', '', 1435124132),
(2, 0, '', 155.50, '', '', '', '', 0),
(3, 0, '', 155.50, '', '', '', '', 0),
(4, 0, '', 155.50, '', '', '', '', 0),
(5, 0, '', 155.50, '', '', '', '', 0),
(6, 0, '', 155.50, '', '', '', '', 0),
(7, 0, '', 155.50, '', '', '', '', 0),
(8, 0, '', 155.50, '', '', '', '', 0),
(9, 0, '', 155.50, '', '', '', '', 0),
(10, 0, '', 155.50, '', '', '', '', 0),
(11, 0, '', 155.50, '', '', '', '', 0),
(12, 0, '', 155.50, '', '', '', '', 0),
(13, 0, '', 155.50, '', '', '', '', 0),
(14, 0, '', 155.50, '', '', '', '', 0),
(15, 0, '', 155.50, '', '', '', '', 0),
(16, 0, '', 155.50, '', '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_product_image`
--

CREATE TABLE IF NOT EXISTS `jnyo_product_image` (
  `iid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `pid` int(10) unsigned NOT NULL COMMENT '商品id',
  `url` varchar(256) NOT NULL COMMENT '图片链接',
  `size` int(10) unsigned NOT NULL COMMENT '图片大小',
  `width` mediumint(8) unsigned NOT NULL COMMENT '图片长度',
  `height` mediumint(8) unsigned NOT NULL COMMENT '图片高度',
  PRIMARY KEY (`iid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='商品图片' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `jnyo_product_image`
--

INSERT INTO `jnyo_product_image` (`iid`, `pid`, `url`, `size`, `width`, `height`) VALUES
(1, 14, '', 67554, 301, 232),
(2, 14, '', 57259, 308, 208),
(3, 15, 'Product/20150624/558a73241c245.png', 67554, 301, 232),
(4, 15, 'Product/20150624/558a73241c62d.png', 57259, 308, 208),
(5, 16, 'Product/20150624/558a73443b5a3.png', 67554, 301, 232),
(6, 16, 'Product/20150624/558a73443b98b.png', 57259, 308, 208);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_purchase_record`
--

CREATE TABLE IF NOT EXISTS `jnyo_purchase_record` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `sid` int(10) unsigned NOT NULL COMMENT '分享id',
  `zid` int(10) unsigned NOT NULL COMMENT '站长id',
  `aid` int(10) unsigned NOT NULL COMMENT '广告id',
  `bid` int(10) unsigned NOT NULL COMMENT '商家id',
  `name` varchar(128) NOT NULL COMMENT '商品名称',
  `ip` char(15) NOT NULL COMMENT 'IP地址',
  `orderid` varchar(64) NOT NULL COMMENT '订单号',
  `amount` double(12,2) NOT NULL COMMENT '订单金额',
  `settlemode` varchar(256) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `timestamp` int(10) unsigned NOT NULL COMMENT '购买时间戳',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='jnyo_purchase_record' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `jnyo_purchase_record`
--

INSERT INTO `jnyo_purchase_record` (`pid`, `sid`, `zid`, `aid`, `bid`, `name`, `ip`, `orderid`, `amount`, `settlemode`, `status`, `timestamp`) VALUES
(1, 1, 1, 1, 1, '马克杯', '127.0.0.1', '', 20.33, 'P20', 3, 1435052086),
(2, 1, 3, 3, 1, '马克杯', '127.0.0.1', '', 20.33, 'F20', 3, 1435052086),
(3, 1, 1, 1, 1, '马克杯', '127.7.7.1', '', 20.33, 'P20', 3, 1435052086),
(4, 1, 1, 1, 1, '马克杯', '127.7.7.1', '', 20.33, 'F20', 3, 1435052086),
(5, 1, 1, 1, 1, '马克杯', '127.7.7.1', '', 20.33, 'P20', 3, 1435052086),
(6, 1, 1, 1, 1, '马克杯', '127.7.7.1', '', 20.33, 'F20', 1, 1435052086),
(7, 1, 1, 1, 1, '马克杯', '127.7.7.1', '', 20.33, 'P20', 3, 1435052086),
(8, 1, 1, 1, 1, '马克杯', '127.7.7.1', '', 20.33, 'F20', 1, 1435052086),
(9, 1, 1, 1, 1, '马克杯', '127.7.7.1', '', 20.33, 'P20', 1, 1435052086),
(10, 1, 2, 1, 1, 'Taobao', '127.0.0.1', '1000', 10.00, 'P20', 3, 1437126895);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_recharge_record`
--

CREATE TABLE IF NOT EXISTS `jnyo_recharge_record` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `jid` int(10) unsigned NOT NULL COMMENT '广告商id',
  `amount` double(12,2) NOT NULL COMMENT '充值金额',
  `from` varchar(64) NOT NULL COMMENT '充值账户',
  `balance` double(12,2) NOT NULL COMMENT '账户余额',
  `timestamp` int(10) unsigned NOT NULL COMMENT '充值时间戳',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='充值记录' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `jnyo_recharge_record`
--

INSERT INTO `jnyo_recharge_record` (`rid`, `jid`, `amount`, `from`, `balance`, `timestamp`) VALUES
(1, 1, 10.20, '123456@qq.com', 0.00, 1111111111),
(2, 1, 20.55, '123456@qq.com', 42.30, 1437123588),
(3, 1, 20.55, '789123@qq.com', 62.85, 1437123699),
(4, 1, 20.55, '789123@qq.com', 83.40, 1437123961),
(5, 1, 20.55, '789123@qq.com', 103.95, 1437123999);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_share_ad`
--

CREATE TABLE IF NOT EXISTS `jnyo_share_ad` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分享id',
  `zid` int(10) unsigned NOT NULL COMMENT '站长id',
  `bid` int(10) unsigned NOT NULL COMMENT '商家id',
  `aid` int(10) unsigned NOT NULL COMMENT '广告id',
  `views` int(10) unsigned NOT NULL COMMENT '查看次数',
  `clicks` int(10) unsigned NOT NULL COMMENT '点击次数',
  `purchases` int(10) unsigned NOT NULL COMMENT '购买次数',
  `status` int(11) NOT NULL COMMENT '状态',
  `timestamp` int(10) unsigned NOT NULL COMMENT '发布时间戳',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分享列表分享列表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `jnyo_share_ad`
--

INSERT INTO `jnyo_share_ad` (`sid`, `zid`, `bid`, `aid`, `views`, `clicks`, `purchases`, `status`, `timestamp`) VALUES
(1, 2, 1, 1, 4, 14, 1, 2, 1434696271),
(2, 2, 1, 1, 1, 3, 0, 0, 1435311202),
(3, 2, 1, 1, 0, 0, 0, 0, 1436522435),
(4, 2, 1, 1, 0, 0, 0, 0, 1436523342),
(5, 2, 1, 1, 0, 0, 0, 0, 1436579199),
(6, 2, 1, 1, 0, 0, 0, 0, 1436579436),
(7, 2, 1, 1, 0, 0, 0, 0, 1436579481),
(8, 2, 1, 1, 0, 0, 0, 0, 1436580882);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_station`
--

CREATE TABLE IF NOT EXISTS `jnyo_station` (
  `jid` int(10) unsigned NOT NULL COMMENT '站长id',
  `realname` varchar(32) NOT NULL COMMENT '真实姓名',
  `idnum` char(18) NOT NULL COMMENT '身份证号',
  `email` varchar(64) NOT NULL COMMENT '邮箱',
  `alipay` varchar(64) NOT NULL COMMENT '支付宝',
  `website` varchar(256) NOT NULL COMMENT '网站',
  PRIMARY KEY (`jid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='站长';

--
-- 转存表中的数据 `jnyo_station`
--

INSERT INTO `jnyo_station` (`jid`, `realname`, `idnum`, `email`, `alipay`, `website`) VALUES
(2, '李林哲', '123456789123456789', '1402946790@qq.com', '156****2350', 'http://localhost:8080/');

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_user`
--

CREATE TABLE IF NOT EXISTS `jnyo_user` (
  `jid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '账户id',
  `name` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '账户密码',
  `balance` double(12,2) NOT NULL COMMENT '账户余额',
  `mobile` char(11) NOT NULL COMMENT '手机号',
  `type` tinyint(3) unsigned NOT NULL COMMENT '账户类型',
  `status` tinyint(4) NOT NULL COMMENT '账户状态',
  `timestamp` int(10) unsigned NOT NULL COMMENT '时间戳',
  PRIMARY KEY (`jid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='今药CPS账户' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `jnyo_user`
--

INSERT INTO `jnyo_user` (`jid`, `name`, `password`, `balance`, `mobile`, `type`, `status`, `timestamp`) VALUES
(3, 'adf', '4ac174730d4143a119037d9fda81c7a9', 5.00, 'adfa', 2, 1, 1437373877),
(2, 'LLZ', 'e10adc3949ba59abbe56e057f20f883e', 6.75, '15037183167', 3, 0, 1434698451),
(4, 'asfdsf', '10385d57b60baa7a904b3253325c4b7b', 5.00, 'sdafsf', 2, 1, 1437373967),
(5, 'asfdsf1', '10385d57b60baa7a904b3253325c4b7b', 0.00, 'sdafsf', 2, 1, 1437374032);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_view_statistics`
--

CREATE TABLE IF NOT EXISTS `jnyo_view_statistics` (
  `vid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '统计id',
  `sid` int(10) unsigned NOT NULL COMMENT '分享id',
  `aid` int(10) unsigned NOT NULL COMMENT '广告id',
  `zid` int(10) unsigned NOT NULL COMMENT '站长id',
  `bid` int(10) unsigned NOT NULL COMMENT '商家id',
  `ip` char(15) NOT NULL COMMENT 'IP地址',
  `timestamp` int(10) unsigned NOT NULL COMMENT '查看时间戳',
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='查看统计' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `jnyo_view_statistics`
--

INSERT INTO `jnyo_view_statistics` (`vid`, `sid`, `aid`, `zid`, `bid`, `ip`, `timestamp`) VALUES
(2, 1, 1, 2, 1, '127.0.0.1', 1435650684),
(3, 2, 2, 3, 1, '127.0.0.1', 1435650727),
(4, 1, 1, 0, 0, '127.0.0.1', 1436865107);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
