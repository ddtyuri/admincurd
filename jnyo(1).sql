-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 07 月 08 日 03:52
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
  `bname` varchar(256) NOT NULL COMMENT '商家名称',
  `pid` int(10) unsigned DEFAULT NULL COMMENT '商品id',
  `category` tinyint(4) NOT NULL COMMENT '类型',
  `url` varchar(256) NOT NULL COMMENT '广告链接',
  `image` varchar(256) NOT NULL COMMENT '广告图片',
  `settlemode` varchar(256) NOT NULL COMMENT '结算方式',
  `status` tinyint(4) NOT NULL COMMENT '广告状态',
  `timestamp` int(10) unsigned NOT NULL COMMENT '发布时间戳',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='推广广告' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `jnyo_ad`
--

INSERT INTO `jnyo_ad` (`aid`, `bid`, `bname`, `pid`, `category`, `url`, `image`, `settlemode`, `status`, `timestamp`) VALUES
(1, 1, '淘宝', NULL, 2, 'www.taobao.com', 'http://news.0513.org/attachments/2010/03/12/1309_201003121512081m168.jpg', 'D20', 1, 1435052086);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='今药CPS管理员账户' AUTO_INCREMENT=1 ;

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
  PRIMARY KEY (`jid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='今药CPS广告主(企业)';

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
  PRIMARY KEY (`jid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='今药CPS广告主(个人)';

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_click_statistics`
--

CREATE TABLE IF NOT EXISTS `jnyo_click_statistics` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '统计id',
  `sid` int(10) unsigned NOT NULL COMMENT '分享id',
  `aid` int(10) unsigned NOT NULL COMMENT '广告id',
  `ip` char(15) NOT NULL COMMENT 'IP地址',
  `timestamp` int(10) unsigned NOT NULL COMMENT '发布时间戳',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='点击统计' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_deposit_record`
--

CREATE TABLE IF NOT EXISTS `jnyo_deposit_record` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `jid` int(10) unsigned NOT NULL COMMENT '提现账户id',
  `deposit` decimal(12,2) NOT NULL COMMENT '提现金额',
  `to` varchar(64) NOT NULL COMMENT '提现账户',
  `timestamp` int(10) unsigned NOT NULL COMMENT '提现时间戳',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='提现记录' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `jnyo_deposit_record`
--

INSERT INTO `jnyo_deposit_record` (`did`, `jid`, `deposit`, `to`, `timestamp`) VALUES
(1, 2, '3.00', '156****2350', 1435025123),
(2, 2, '7.00', '156****2350', 1435049074);

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
  `income` decimal(12,2) NOT NULL COMMENT '收益',
  `timestamp` int(10) unsigned NOT NULL COMMENT '收益时间戳',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='收益走势' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `jnyo_income_trend`
--

INSERT INTO `jnyo_income_trend` (`tid`, `sid`, `zid`, `bid`, `aid`, `income`, `timestamp`) VALUES
(1, 1, 2, 1, 1, '4.00', 1434988800),
(2, 1, 2, 1, 1, '7.90', 1435075200);

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
  `price` decimal(12,2) NOT NULL COMMENT '商品价格',
  `sellpoin` text NOT NULL COMMENT '卖点',
  `introduce` text NOT NULL COMMENT '介绍',
  `remark` text NOT NULL COMMENT '备注',
  `url` varchar(256) NOT NULL COMMENT '产品链接',
  `timestamp` int(10) unsigned NOT NULL COMMENT '发布时间戳',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_product_image`
--

CREATE TABLE IF NOT EXISTS `jnyo_product_image` (
  `iid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `pid` int(10) unsigned NOT NULL COMMENT '商品id',
  `size` int(10) unsigned NOT NULL COMMENT '图片大小',
  `width` mediumint(8) unsigned NOT NULL COMMENT '图片长度',
  `height` mediumint(8) unsigned NOT NULL COMMENT '图片高度',
  PRIMARY KEY (`iid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品图片' AUTO_INCREMENT=1 ;

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
  `ip` char(15) NOT NULL COMMENT 'IP地址',
  `amount` decimal(12,2) NOT NULL COMMENT '订单金额',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `timestamp` int(10) unsigned NOT NULL COMMENT '购买时间戳',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='jnyo_purchase_record' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_purchase_statistics`
--

CREATE TABLE IF NOT EXISTS `jnyo_purchase_statistics` (
  `pid` int(15) unsigned NOT NULL AUTO_INCREMENT COMMENT '统计id',
  `sid` int(15) unsigned NOT NULL COMMENT '分享id',
  `aid` int(15) unsigned NOT NULL COMMENT '广告id',
  `ip` char(15) NOT NULL COMMENT 'IP地址',
  `timestamp` int(15) unsigned NOT NULL COMMENT '发布时间戳',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买统计' AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分享列表分享列表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `jnyo_share_ad`
--

INSERT INTO `jnyo_share_ad` (`sid`, `zid`, `bid`, `aid`, `views`, `clicks`, `purchases`, `status`, `timestamp`) VALUES
(1, 2, 1, 1, 1, 5, 1, 1, 1434696271);

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
(2, '333', '333333333333333333', '30@qq.com', '3089@qq.com', 'http://localhost:8080/'),
(8, '', '', '', '', '55'),
(9, '', '', '', '', '4111111'),
(10, '', '', '', '', '11'),
(11, '', '', '', '', '111111'),
(12, '', '', '', '', '111111'),
(13, '', '', '', '', '111111'),
(14, '', '', '', '', '6666666'),
(15, '', '', '', '', '111111111'),
(16, '', '', '', '', '111111111'),
(17, '', '', '', '', '111111111'),
(18, '', '', '', '', '112131412'),
(19, '', '', '', '', '1111111'),
(20, '', '', '', '', '111111111'),
(21, '', '', '', '', '111111'),
(22, '', '', '', '', 'www.baidu.com'),
(24, '', '', '', '', 'http://www.baidu.com'),
(25, '', '', '', '', 'http://www.b33aidu.com');

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_user`
--

CREATE TABLE IF NOT EXISTS `jnyo_user` (
  `jid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '账户id',
  `name` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '账户密码',
  `balance` decimal(12,2) NOT NULL COMMENT '账户余额',
  `mobile` char(11) NOT NULL COMMENT '手机号',
  `type` tinyint(3) unsigned NOT NULL COMMENT '账户类型',
  `status` tinyint(4) NOT NULL COMMENT '账户状态',
  `timestamp` int(10) unsigned NOT NULL COMMENT '时间戳',
  PRIMARY KEY (`jid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='今药CPS账户' AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `jnyo_user`
--

INSERT INTO `jnyo_user` (`jid`, `name`, `password`, `balance`, `mobile`, `type`, `status`, `timestamp`) VALUES
(1, 'Linzer', 'e10adc3949ba59abbe56e057f20f883e', '21.75', '', 1, 1, 1434698355),
(2, 'LLZ', 'c4ca4238a0b923820dcc509a6f75849b', '6.75', '', 3, 1, 1434698451),
(3, '1', 'c4ca4238a0b923820dcc509a6f75849b', '0.00', '', 0, 0, 0),
(4, '11', '96e79218965eb72c92a549dd5a330112', '0.00', '111111', 3, 0, 1435894584),
(5, '444', '73882ab1fa529d7273da0db6b49cc4f3', '0.00', '444444', 3, 0, 1435895295),
(6, '333', '074fd28eff0f5adea071694061739e55', '0.00', '3333333', 3, 0, 1435896545),
(7, '112', 'af15d5fdacd5fdfea300e88a8e253e82', '0.00', '1111111', 0, 0, 1435896901),
(8, '155', 'c9d87ef00591631536b48bc9552a97e1', '0.00', '155555', 3, 0, 1435903580),
(9, '1444', '96e79218965eb72c92a549dd5a330112', '0.00', '111111', 3, 0, 1435915231),
(10, '11112', '96e79218965eb72c92a549dd5a330112', '0.00', '111111', 3, 0, 1435973748),
(11, '1121', '7fa8282ad93047a4d6fe6111c93b308a', '0.00', '1111111', 3, 0, 1435976602),
(12, '1124', '96e79218965eb72c92a549dd5a330112', '0.00', '111111', 3, 0, 1435979668),
(13, '1111', '96e79218965eb72c92a549dd5a330112', '0.00', '111111', 3, 0, 1435979697),
(14, '666', 'af15d5fdacd5fdfea300e88a8e253e82', '0.00', 'ssssss', 3, 0, 1435994658),
(15, '211111111', 'e10adc3949ba59abbe56e057f20f883e', '0.00', '123456', 3, 0, 1435996696),
(16, '11111', '7fa8282ad93047a4d6fe6111c93b308a', '0.00', '1111111', 3, 0, 1435998604),
(17, '111111', '96e79218965eb72c92a549dd5a330112', '0.00', '111111', 3, 0, 1435999042),
(18, '12121', '96e79218965eb72c92a549dd5a330112', '0.00', '111111', 3, 0, 1436000428),
(19, '1231234', '96e79218965eb72c92a549dd5a330112', '0.00', '111111', 3, 0, 1436000915),
(20, '呃呃呃', '96e79218965eb72c92a549dd5a330112', '0.00', '111111', 3, 0, 1436005429),
(21, '111', '96e79218965eb72c92a549dd5a330112', '0.00', '111111', 3, 0, 1436174586),
(22, 'ddtyuri', 'a148e858d22e8c8a47ce0ca22311a640', '0.00', 'yurixx', 3, 0, 1436174899),
(23, '111a', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '0.00', '13783684005', 0, 0, 1436177782),
(24, '222', 'e10adc3949ba59abbe56e057f20f883e', '0.00', '123456', 3, 0, 1436251242),
(25, '22244', '96e79218965eb72c92a549dd5a330112', '0.00', '111111', 3, 0, 1436251762),
(26, 'undefined', 'd41d8cd98f00b204e9800998ecf8427e', '0.00', 'undefined', 3, 0, 1436318963);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_view_statistics`
--

CREATE TABLE IF NOT EXISTS `jnyo_view_statistics` (
  `vid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '统计id',
  `sid` int(10) unsigned NOT NULL COMMENT '分享id',
  `aid` int(10) unsigned NOT NULL COMMENT '广告id',
  `ip` char(15) NOT NULL COMMENT 'IP地址',
  `timestamp` int(10) unsigned NOT NULL COMMENT '查看时间戳',
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='查看统计' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `jnyo_view_statistics`
--

INSERT INTO `jnyo_view_statistics` (`vid`, `sid`, `aid`, `ip`, `timestamp`) VALUES
(1, 1, 1, '127.0.0.1', 1434690339);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
