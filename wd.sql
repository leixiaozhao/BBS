-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018-01-14 14:21:22
-- 服务器版本： 5.5.57-log
-- PHP Version: 7.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wd`
--

-- --------------------------------------------------------

--
-- 表的结构 `zl_hd`
--

CREATE TABLE IF NOT EXISTS `zl_hd` (
  `id` int(11) NOT NULL,
  `wid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `create_time` int(11) NOT NULL,
  `static` int(11) NOT NULL,
  `caina` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zl_hd`
--

INSERT INTO `zl_hd` (`id`, `wid`, `user_id`, `content`, `create_time`, `static`, `caina`) VALUES
(37, 19, 5, '这么快就完事了？face[good] ', 1515145819, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `zl_list`
--

CREATE TABLE IF NOT EXISTS `zl_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `paixu` int(11) NOT NULL,
  `static` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zl_list`
--

INSERT INTO `zl_list` (`id`, `name`, `create_time`, `paixu`, `static`) VALUES
(6, '代码', 1514880887, 9, 1),
(5, '分享', 1514880838, 10, 1),
(7, '数据库', 1514880892, 7, 1),
(8, 'TP5', 1515139346, 8, 1),
(9, '前端', 1515767664, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `zl_news`
--

CREATE TABLE IF NOT EXISTS `zl_news` (
  `id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `static` int(11) NOT NULL,
  `top` int(11) NOT NULL,
  `jing` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `host` int(11) DEFAULT NULL,
  `zt` int(11) NOT NULL,
  `jifen` int(10) unsigned zerofill NOT NULL,
  `user_id` int(11) NOT NULL,
  `paixu` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zl_news`
--

INSERT INTO `zl_news` (`id`, `list_id`, `title`, `content`, `static`, `top`, `jing`, `end`, `create_time`, `host`, `zt`, `jifen`, `user_id`, `paixu`) VALUES
(18, 8, 'TP5路由的使用', '配置文件开启路由\n[pre]\n// 是否开启路由\n''url_route_on''           =&gt; true,\n// 路由使用完整匹配\n''route_complete_match''   =&gt; true,\n\n// 是否强制使用路由\n''url_route_must''         =&gt; true,\n[/pre]\n路由文件位置\napplication/route.php\nimg[\\uploads/20180105/0bb75961be3c9018b0c94509976e9b3d.png] \n当我访问 localhost/logout  此时就会访问  localhost/index/user/logout\n绑定参数img[\\uploads/20180105/ec4f6fec353a527e29795beba1897ede.png] \n注意这样绑定的参数 用input(''get.'')是获取不到的，\n但是我们可以这样 public function($list_id) 这样就可以获取了 但是如果一个路由有多个参数怎么办？\n在控制器加载img[\\uploads/20180105/6036a0f19fe86ded06391ba0be5811cb.png] \n然后这么获取多参数\n[pre]\n        $end = Request::instance() -&gt; route(&quot;end&quot;);\n        $list_id = Request::instance() -&gt; route(&quot;list_id&quot;);\n        $roder = Request::instance() -&gt; route(&quot;desc&quot;);\n        $jing = Request::instance() -&gt; route(&quot;jing&quot;);\n[/pre]\n但是这种只能获取 / 后面的参数，\n那么？后面的参数怎么获取呢？\n[pre]\nrequest()-&gt;get()\n[/pre]这样就可以获取？后面的参数了', 1, 0, 0, 0, 1515140056, 68, 0, 0000000050, 1, 0),
(19, 5, '用了三天时间用最新的TP5写的一个小论坛', '不知道现在有没有BUG谁来测试一下啊？有没有互加友联的？', 1, 1, 0, 0, 1515141323, 92, 0, 0000000020, 1, 0),
(20, 8, 'TP5分页保留条件', '[pre]\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$get&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;input(''get.'');\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$phone&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;input(''get.phone'');\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$email&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;input(''get.email'');\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$pageParam&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;[''query''&nbsp;=&gt;[]];\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;($phone)&nbsp;{\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$userModel-&gt;where(''phone'',&nbsp;''like'',&nbsp;&quot;%{$phone}%&quot;);\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;assign(''phone'',&nbsp;$phone);\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$pageParam[''query''][''phone'']&nbsp;=&nbsp;$phone;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;($email)&nbsp;{\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$userModel-&gt;where(''email'',&nbsp;''like'',&nbsp;&quot;%{$email}%&quot;);\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;assign(''email'',&nbsp;$email);\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$pageParam[''query''][''email'']&nbsp;=&nbsp;$email;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$list&nbsp;=&nbsp;$userModel-&gt;paginate(3,&nbsp;false,&nbsp;$pageParam);\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;assign(''list'',&nbsp;$list);\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;assign(''title'',&nbsp;''会员列表'');\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;assign(''breadcrumb'',&nbsp;[''后台首页'',&nbsp;''用户管理'',&nbsp;''会员列表'']);\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$this-&gt;fetch();\n\n[/pre]', 1, 0, 0, 0, 1515144173, 29, 0, 0000000020, 1, 0),
(21, 8, 'TP5,验证码不显示，乱码，黑色底', '今天在调用验证码的时候，在线下已经测试OK了没有问题，但是项目放到线上就是怎么也显示不出来。\n开始以为是验证码路径问题。\n后来在网上找了N多种解决办法也都没生效。\n最后在CSDN 上面看到一篇文章说\nob_clean &mdash; 清空（擦掉）输出缓冲区的，图片输出前不可有其他输出的。\n抱着试试看的态度 居然解决了我的问题。\n\n废话不多说 解决办法：\n打开vendor/topthink/think-captcha/src/目录下Captcha.php\n搜索 \nob_start();\n然后在该语句上方（或该语句前面）添加\nob_clean();\n\n最后保存刷新浏览器 问题解决！', 1, 0, 0, 0, 1515909296, 2, 0, 0000000000, 1, 0),
(22, 9, 'DIV盒模型理解', '以前一直认为创建一个DIV 然后设置个宽度，高度就是这个盒模型的大小，\n然后在这个盒模型里面添加东西就可以了。\n最近在学习前端原来才理解 并不是这样。\n一个盒模型 在定义了宽度盒高度的同事还要加上其他元素。\n[pre]\ndiv {\n    width: 220px;\n    padding: 10px;\n    border: 5px solid gray;\n    margin: 0; \n}\n[/pre]\nDIV 设置宽度是220px ，\npadding 内边距 左右10PX(盒子增加20PX)\nborder 宽度左右5PX（盒子增加10px）\n所以最后盒子模型总宽度是 250PX  ', 1, 0, 0, 0, 1515910106, 2, 0, 0000000000, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `zl_user`
--

CREATE TABLE IF NOT EXISTS `zl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `tx` varchar(255) NOT NULL,
  `qid` varchar(255) NOT NULL,
  `jifen` int(11) NOT NULL,
  `static` int(11) NOT NULL,
  `up_time` int(11) NOT NULL,
  `content` text,
  `qiandao` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zl_user`
--

INSERT INTO `zl_user` (`id`, `name`, `username`, `pass`, `create_time`, `tx`, `qid`, `jifen`, `static`, `up_time`, `content`, `qiandao`) VALUES
(1, '1', 'admin', '13', 1514856804, 'uploads/20180105/0bc0e8e1fb0bb49c910dfd47acf573ab.jpg', '1514856804', 137, 2, 1514856804, '是吗', 14),
(4, '123456', '少侠', '123456', 1515144771, 'image/8.jpg', '1515144771', 0, 1, 1515144771, NULL, NULL),
(5, '12', '冷风', '12', 1515145449, 'image/2.jpg', '1515145449', 2, 1, 1515145449, NULL, NULL),
(8, '123456789', '海浪', '123789', 1515148415, 'uploads/20180105/6464346e18ae31bc9555e777ef02b653.jpg', '1515148415', 10, 1, 1515148415, '生活就是活着', 1),
(9, 'lisongxue', 'EMMET', 'lisongxue', 1515161704, 'image/6.jpg', '1515161704', 0, 1, 1515161704, NULL, NULL),
(10, '111', '111', '123', 1515325601, 'image/7.jpg', '1515325601', 0, 1, 1515325601, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `zl_zan`
--

CREATE TABLE IF NOT EXISTS `zl_zan` (
  `id` int(11) NOT NULL,
  `hd_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zl_zan`
--

INSERT INTO `zl_zan` (`id`, `hd_id`, `user_id`, `s_id`) VALUES
(19, 34, 1, 1),
(20, 35, 1, 1),
(21, 35, 1, 0),
(22, 37, 5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zl_hd`
--
ALTER TABLE `zl_hd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zl_list`
--
ALTER TABLE `zl_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zl_news`
--
ALTER TABLE `zl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zl_user`
--
ALTER TABLE `zl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zl_zan`
--
ALTER TABLE `zl_zan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `zl_hd`
--
ALTER TABLE `zl_hd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `zl_list`
--
ALTER TABLE `zl_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `zl_news`
--
ALTER TABLE `zl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `zl_user`
--
ALTER TABLE `zl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `zl_zan`
--
ALTER TABLE `zl_zan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
