-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-08-04 02:12:43
-- 服务器版本： 5.6.13-log
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jnyo`
--

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_ad`
--

CREATE TABLE IF NOT EXISTS `jnyo_ad` (
  `aid` int(10) unsigned NOT NULL COMMENT '广告id',
  `bid` int(10) unsigned NOT NULL COMMENT '商家id',
  `adname` varchar(256) DEFAULT NULL COMMENT '广告名称',
  `pid` int(10) unsigned DEFAULT NULL COMMENT '商品id',
  `category` tinyint(4) NOT NULL COMMENT '类型',
  `url` varchar(256) NOT NULL COMMENT '广告链接',
  `image` varchar(256) NOT NULL COMMENT '广告图片',
  `settlemode` varchar(256) NOT NULL COMMENT '结算方式',
  `status` tinyint(4) NOT NULL COMMENT '广告状态',
  `timestamp` int(10) unsigned NOT NULL COMMENT '发布时间戳'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='推广广告';

--
-- 转存表中的数据 `jnyo_ad`
--

INSERT INTO `jnyo_ad` (`aid`, `bid`, `adname`, `pid`, `category`, `url`, `image`, `settlemode`, `status`, `timestamp`) VALUES
(9, 1231, '123123', 132, 1, '123123', '', 'F123123', 2, 1438415424),
(8, 123, '123', 123, 1, '123', '', 'P123', 0, 1438414691);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_admin`
--

CREATE TABLE IF NOT EXISTS `jnyo_admin` (
  `jid` int(10) unsigned NOT NULL COMMENT '管理员账户id',
  `nickname` varchar(32) NOT NULL COMMENT '账户昵称',
  `password` varchar(32) NOT NULL COMMENT '账户密码',
  `status` tinyint(4) NOT NULL COMMENT '账户状态',
  `timestamp` int(10) unsigned NOT NULL COMMENT '注册时间'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='今药CPS管理员账户';

--
-- 转存表中的数据 `jnyo_admin`
--

INSERT INTO `jnyo_admin` (`jid`, `nickname`, `password`, `status`, `timestamp`) VALUES
(1, 'admin', 'admin', 1, 1234);

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
  `status` tinyint(4) NOT NULL COMMENT '信息状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='今药CPS广告主(企业)';

--
-- 转存表中的数据 `jnyo_advertiser_enterprise`
--

INSERT INTO `jnyo_advertiser_enterprise` (`jid`, `name`, `license`, `licenseimg`, `realname`, `idnum`, `idimg`, `bankname`, `accountname`, `bankaccount`, `tradepwd`, `status`) VALUES
(5, '22', '22', 'License/2015-08-03/55beffb8d5664.png', '22', '222222222222222222', 'ID/2015-08-03/55beffc68e64c.png', '22', '22', '2222222222222222222', 'e10adc3949ba59abbe56e057f20f883e', 0);

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
  `status` tinyint(4) NOT NULL COMMENT '信息状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='今药CPS广告主(个人)';

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_click_statistics`
--

CREATE TABLE IF NOT EXISTS `jnyo_click_statistics` (
  `cid` int(10) unsigned NOT NULL COMMENT '统计id',
  `sid` int(10) unsigned NOT NULL COMMENT '分享id',
  `aid` int(10) unsigned NOT NULL COMMENT '广告id',
  `zid` int(10) unsigned NOT NULL COMMENT '站长id',
  `bid` int(10) unsigned NOT NULL COMMENT '商家id',
  `ip` char(15) NOT NULL COMMENT 'IP地址',
  `date` int(10) unsigned NOT NULL COMMENT '统计日期',
  `timestamp` int(10) unsigned NOT NULL COMMENT '发布时间戳'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='点击统计';

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_deposit_record`
--

CREATE TABLE IF NOT EXISTS `jnyo_deposit_record` (
  `did` int(10) unsigned NOT NULL COMMENT '记录id',
  `jid` int(10) unsigned NOT NULL COMMENT '提现账户id',
  `deposit` double(12,2) NOT NULL COMMENT '提现金额',
  `to` varchar(64) NOT NULL COMMENT '提现账户',
  `balance` double(12,2) NOT NULL COMMENT '账户余额',
  `timestamp` int(10) unsigned NOT NULL COMMENT '提现时间戳'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='提现记录';

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_income_trend`
--

CREATE TABLE IF NOT EXISTS `jnyo_income_trend` (
  `tid` int(10) unsigned NOT NULL COMMENT '走势id',
  `sid` int(10) unsigned NOT NULL COMMENT '分享id',
  `zid` int(10) unsigned NOT NULL COMMENT '站长id',
  `bid` int(10) unsigned NOT NULL COMMENT '商家id',
  `aid` int(10) unsigned NOT NULL COMMENT '广告id',
  `adname` varchar(128) NOT NULL COMMENT '广告名称',
  `income` double(12,2) NOT NULL COMMENT '收益',
  `timestamp` int(10) unsigned NOT NULL COMMENT '收益时间戳'
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='收益走势';

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_product`
--

CREATE TABLE IF NOT EXISTS `jnyo_product` (
  `pid` int(10) unsigned NOT NULL COMMENT '商品id',
  `jid` int(10) unsigned NOT NULL COMMENT '商家id',
  `name` varchar(128) NOT NULL COMMENT '商品名称',
  `price` double(12,2) NOT NULL COMMENT '商品价格',
  `sellpoin` text NOT NULL COMMENT '卖点',
  `introduce` text NOT NULL COMMENT '介绍',
  `remark` text COMMENT '备注',
  `url` varchar(256) NOT NULL COMMENT '产品链接',
  `timestamp` int(10) unsigned NOT NULL COMMENT '发布时间戳'
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='商品';

--
-- 转存表中的数据 `jnyo_product`
--

INSERT INTO `jnyo_product` (`pid`, `jid`, `name`, `price`, `sellpoin`, `introduce`, `remark`, `url`, `timestamp`) VALUES
(18, 123123, '1', 0.00, '1', '1', '1', '2', 1438416794);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_product_image`
--

CREATE TABLE IF NOT EXISTS `jnyo_product_image` (
  `iid` int(10) unsigned NOT NULL COMMENT '图片id',
  `pid` int(10) unsigned NOT NULL COMMENT '商品id',
  `url` varchar(256) NOT NULL COMMENT '图片链接',
  `size` int(10) unsigned NOT NULL COMMENT '图片大小',
  `width` mediumint(8) unsigned NOT NULL COMMENT '图片长度',
  `height` mediumint(8) unsigned NOT NULL COMMENT '图片高度'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品图片';

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_purchase_record`
--

CREATE TABLE IF NOT EXISTS `jnyo_purchase_record` (
  `pid` int(10) unsigned NOT NULL COMMENT '记录id',
  `sid` int(10) unsigned NOT NULL COMMENT '分享id',
  `zid` int(10) unsigned NOT NULL COMMENT '站长id',
  `aid` int(10) unsigned NOT NULL COMMENT '广告id',
  `bid` int(10) unsigned NOT NULL COMMENT '商家id',
  `adname` varchar(128) NOT NULL COMMENT '广告名称',
  `ip` char(15) NOT NULL COMMENT 'IP地址',
  `orderid` varchar(64) NOT NULL COMMENT '订单号',
  `amount` double(12,2) NOT NULL COMMENT '订单金额',
  `settlemode` varchar(256) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `date` int(10) unsigned NOT NULL COMMENT '统计日期',
  `timestamp` int(10) unsigned NOT NULL COMMENT '购买时间戳'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='jnyo_purchase_record';

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_recharge_record`
--

CREATE TABLE IF NOT EXISTS `jnyo_recharge_record` (
  `rid` int(10) unsigned NOT NULL COMMENT '记录id',
  `jid` int(10) unsigned NOT NULL COMMENT '广告商id',
  `amount` double(12,2) NOT NULL COMMENT '充值金额',
  `from` varchar(64) NOT NULL COMMENT '充值账户',
  `balance` double(12,2) NOT NULL COMMENT '账户余额',
  `timestamp` int(10) unsigned NOT NULL COMMENT '充值时间戳'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='充值记录';

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_share_ad`
--

CREATE TABLE IF NOT EXISTS `jnyo_share_ad` (
  `sid` int(10) unsigned NOT NULL COMMENT '分享id',
  `zid` int(10) unsigned NOT NULL COMMENT '站长id',
  `bid` int(10) unsigned NOT NULL COMMENT '商家id',
  `aid` int(10) unsigned NOT NULL COMMENT '广告id',
  `views` int(10) unsigned NOT NULL COMMENT '查看次数',
  `clicks` int(10) unsigned NOT NULL COMMENT '点击次数',
  `purchases` int(10) unsigned NOT NULL COMMENT '购买次数',
  `status` int(11) NOT NULL COMMENT '状态',
  `timestamp` int(10) unsigned NOT NULL COMMENT '发布时间戳'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='分享列表分享列表';

--
-- 转存表中的数据 `jnyo_share_ad`
--

INSERT INTO `jnyo_share_ad` (`sid`, `zid`, `bid`, `aid`, `views`, `clicks`, `purchases`, `status`, `timestamp`) VALUES
(15, 7, 1231, 9, 0, 0, 0, 0, 1438568060);

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
  `website` varchar(256) NOT NULL COMMENT '网站'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='站长';

--
-- 转存表中的数据 `jnyo_station`
--

INSERT INTO `jnyo_station` (`jid`, `realname`, `idnum`, `email`, `alipay`, `website`) VALUES
(8, '333', '122222222222222222', '308912742@qq.com', '1', 'http://www.baidu9.com'),
(4, '', '', '', '', 'http://www.tmall.com'),
(7, '123', '111111111111111111', '308912741@qq.com', '', 'http://www.baidu.com');

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_user`
--

CREATE TABLE IF NOT EXISTS `jnyo_user` (
  `jid` int(10) unsigned NOT NULL COMMENT '账户id',
  `name` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '账户密码',
  `balance` double(12,2) NOT NULL COMMENT '账户余额',
  `mobile` char(11) NOT NULL COMMENT '手机号',
  `type` tinyint(3) unsigned NOT NULL COMMENT '账户类型',
  `status` tinyint(4) NOT NULL COMMENT '账户状态',
  `timestamp` int(10) unsigned NOT NULL COMMENT '时间戳'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='今药CPS账户';

--
-- 转存表中的数据 `jnyo_user`
--

INSERT INTO `jnyo_user` (`jid`, `name`, `password`, `balance`, `mobile`, `type`, `status`, `timestamp`) VALUES
(2, 'Linzer2', 'e10adc3949ba59abbe56e057f20f883e', 0.00, '15617712350', 1, 1, 1438423390),
(1, 'liu', 'e10adc3949ba59abbe56e057f20f883e', 1.00, '13783684005', 3, 1, 1111111111),
(5, 'Linzer3', 'e10adc3949ba59abbe56e057f20f883e', 0.00, '15617712350', 2, 2, 1438423650),
(6, 'Linzer', 'e10adc3949ba59abbe56e057f20f883e', 0.00, '15617712350', 0, 0, 1438425378),
(7, 'liu1', 'e10adc3949ba59abbe56e057f20f883e', 0.00, '13783684005', 3, 0, 1438567737),
(8, '444', 'e10adc3949ba59abbe56e057f20f883e', 0.00, '13783684005', 3, 0, 1438569977);

-- --------------------------------------------------------

--
-- 表的结构 `jnyo_view_statistics`
--

CREATE TABLE IF NOT EXISTS `jnyo_view_statistics` (
  `vid` int(10) unsigned NOT NULL COMMENT '统计id',
  `sid` int(10) unsigned NOT NULL COMMENT '分享id',
  `aid` int(10) unsigned NOT NULL COMMENT '广告id',
  `zid` int(10) unsigned NOT NULL COMMENT '站长id',
  `bid` int(10) unsigned NOT NULL COMMENT '商家id',
  `ip` char(15) NOT NULL COMMENT 'IP地址',
  `date` int(10) unsigned NOT NULL COMMENT '统计日期',
  `timestamp` int(10) unsigned NOT NULL COMMENT '查看时间戳'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='查看统计';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jnyo_ad`
--
ALTER TABLE `jnyo_ad`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `jnyo_admin`
--
ALTER TABLE `jnyo_admin`
  ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `jnyo_advertiser_enterprise`
--
ALTER TABLE `jnyo_advertiser_enterprise`
  ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `jnyo_advertiser_individual`
--
ALTER TABLE `jnyo_advertiser_individual`
  ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `jnyo_click_statistics`
--
ALTER TABLE `jnyo_click_statistics`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `jnyo_deposit_record`
--
ALTER TABLE `jnyo_deposit_record`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `jnyo_income_trend`
--
ALTER TABLE `jnyo_income_trend`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `jnyo_product`
--
ALTER TABLE `jnyo_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `jnyo_product_image`
--
ALTER TABLE `jnyo_product_image`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `jnyo_purchase_record`
--
ALTER TABLE `jnyo_purchase_record`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `jnyo_recharge_record`
--
ALTER TABLE `jnyo_recharge_record`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `jnyo_share_ad`
--
ALTER TABLE `jnyo_share_ad`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `jnyo_station`
--
ALTER TABLE `jnyo_station`
  ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `jnyo_user`
--
ALTER TABLE `jnyo_user`
  ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `jnyo_view_statistics`
--
ALTER TABLE `jnyo_view_statistics`
  ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jnyo_ad`
--
ALTER TABLE `jnyo_ad`
  MODIFY `aid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告id',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jnyo_admin`
--
ALTER TABLE `jnyo_admin`
  MODIFY `jid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员账户id',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jnyo_click_statistics`
--
ALTER TABLE `jnyo_click_statistics`
  MODIFY `cid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '统计id',AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `jnyo_deposit_record`
--
ALTER TABLE `jnyo_deposit_record`
  MODIFY `did` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录id',AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `jnyo_income_trend`
--
ALTER TABLE `jnyo_income_trend`
  MODIFY `tid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '走势id',AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `jnyo_product`
--
ALTER TABLE `jnyo_product`
  MODIFY `pid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `jnyo_product_image`
--
ALTER TABLE `jnyo_product_image`
  MODIFY `iid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片id',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `jnyo_purchase_record`
--
ALTER TABLE `jnyo_purchase_record`
  MODIFY `pid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录id',AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `jnyo_recharge_record`
--
ALTER TABLE `jnyo_recharge_record`
  MODIFY `rid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录id',AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `jnyo_share_ad`
--
ALTER TABLE `jnyo_share_ad`
  MODIFY `sid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分享id',AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `jnyo_user`
--
ALTER TABLE `jnyo_user`
  MODIFY `jid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '账户id',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jnyo_view_statistics`
--
ALTER TABLE `jnyo_view_statistics`
  MODIFY `vid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '统计id',AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
